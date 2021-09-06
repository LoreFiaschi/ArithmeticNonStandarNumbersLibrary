include("./src/ArithmeticNonStandarNumbersLibrary/src/BAN.jl")
using .BAN


mutable struct Node
    cargo
    next::Array{Node}
    prev::Array{Node}
    ignore
    area
    volume
    Node() = new()
    Node(c, n, p, i, a, v) = new(c, n, p, i, a, v)
end

Node(numberLists) = Node(nothing, fill(Node(), numberLists), fill(Node(), numberLists), 0, fill(0η, numberLists), fill(0η, numberLists))
Node(numberLists, cargo) = Node(cargo, fill(Node(), numberLists), fill(Node(), numberLists), 0, fill(0η, numberLists), fill(0η, numberLists))

mutable struct MultiList
    numberLists
    sentinel::Node
end

function MultiList(numberLists)
    m = MultiList(numberLists, Node(numberLists))
    m.sentinel.next = fill(m.sentinel, numberLists)
    m.sentinel.prev = fill(m.sentinel, numberLists)
    return m
end

function getLength(m::MultiList, i)
    length = 0
    sentinel = m.sentinel
    node = sentinel.next[i]
    while node != sentinel
        length += 1
        node = node.next[i]
    end
    return length
end

function append!(m::MultiList, node::Node, i)
    lastButOne = m.sentinel.prev[index]
    node.next[index] = m.sentinel
    node.prev[index] = lastButOne
    # set the last element as the new one
    m.sentinel.prev[index] = node
    lastButOne.next[index] = node
end

function extend!(m::MultiList, nodes, index)
    """Extends the list at the given index with the nodes."""
    sentinel = m.sentinel
    for node in nodes
        lastButOne = sentinel.prev[index]
        node.next[index] = sentinel
        node.prev[index] = lastButOne
        # set the last element as the new one
        sentinel.prev[index] = node
        lastButOne.next[index] = node
    end
end

function remove!(m::MultiList, node, index, bounds)
    for i in 1:index - 1
        predecessor = node.prev[i]
        successor = node.next[i]
        predecessor.next[i] = successor
        successor.prev[i] = predecessor
        if bounds[i] > node.cargo[i]
            bounds[i] = node.cargo[i]
        end
    end
    return node
end

function reinsert!(m::MultiList, node, index, bounds)
    for i in 1:index - 1
        node.prev[i].next[i] = node
        node.next[i].prev[i] = node
        if bounds[i] > node.cargo[i]
            bounds[i] = node.cargo[i]
        end
    end
end

# is point dominated by other?
function weaklyDominates(point::AbstractArray, other::AbstractArray)
    for i in 1:length(point)
        if point[i] > other[i]
            return false
        end
    end
    return true
end

mutable struct HyperVolume
    referencePoint
    list
end

HyperVolume(referencePoint) = HyperVolume(referencePoint, [])


function hvRecursive!(hv::HyperVolume, dimIndex, length, bounds)
    hvol = Ban(0)
    sentinel = hv.list.sentinel
    if length == 0
        return hvol
    end
    if dimIndex == 1
        # special case: only one dimension
        # why using hypervolume at all?
        return -sentinel.next[1].cargo[1]
    end
    if dimIndex == 2
        # special case: two dimensions, end recursion
        q = sentinel.next[2]
        h = q.cargo[1]
        p = q.next[2]
        while p !== sentinel
            pCargo = p.cargo
            hvol += h * (q.cargo[2] - pCargo[2])
            if pCargo[1] < h
                h = pCargo[1]
            end
            q = p
            p = q.next[2]
        end
        hvol += h * q.cargo[2]
        return hvol
    end
    
    p = sentinel
    q = p.prev[dimIndex]
    while q.cargo != nothing
        if q.ignore < dimIndex
            q.ignore = 1
        end
        q = q.prev[dimIndex]
    end
    q = p.prev[dimIndex]
    
    while length > 1 && (q.cargo[dimIndex] > bounds[dimIndex] || q.prev[dimIndex].cargo[dimIndex] >= bounds[dimIndex])
        p = q
        remove!(hv.list, p, dimIndex, bounds)
        q = p.prev[dimIndex]
        length -= 1
    end
    qArea = q.area
    qCargo = q.cargo
    qPrevDimIndex = q.prev[dimIndex]
    if length > 1
        hvol = qPrevDimIndex.volume[dimIndex] + qPrevDimIndex.area[dimIndex] * (qCargo[dimIndex] - qPrevDimIndex.cargo[dimIndex])
    else
        qArea[1] = 1
        qArea[2:dimIndex] = [qArea[i] * -qCargo[i] for i in 1:dimIndex -1]
    end
    q.volume[dimIndex] = hvol
    if q.ignore >= dimIndex
        qArea[dimIndex] = qPrevDimIndex.area[dimIndex]
    else
        qArea[dimIndex] = hvRecursive!(hv, dimIndex - 1, length, bounds)
        if qArea[dimIndex] <= qPrevDimIndex.area[dimIndex]
            q.ignore = dimIndex
        end
    end
    while p !== sentinel
        pCargoDimIndex = p.cargo[dimIndex]
        hvol += q.area[dimIndex] * (pCargoDimIndex - q.cargo[dimIndex])
        bounds[dimIndex] = pCargoDimIndex
        reinsert!(hv.list, p, dimIndex, bounds)
        length += 1
        q = p
        p = p.next[dimIndex]
        q.volume[dimIndex] = hvol
        if q.ignore >= dimIndex
            q.area[dimIndex] = q.prev[dimIndex].area[dimIndex]
        else
            q.area[dimIndex] = hvRecursive!(hv, dimIndex - 1, length, bounds)
            if q.area[dimIndex] <= q.prev[dimIndex].area[dimIndex]
                q.ignore = dimIndex
            end
        end
    end
    hvol -= q.area[dimIndex] * q.cargo[dimIndex]
    return hvol
end


function preProcess!(hv, front)
    dimensions = length(hv.referencePoint)
    nodeList = MultiList(dimensions)
    nodes = [Node(dimensions, point) for point in front]
    for i in 1:dimensions
        sortByDimension!(hv, nodes, i)
        extend!(nodeList, nodes, i)
    end
    hv.list = nodeList
end

function sortByDimension!(hv, nodes, i)
    decorated = [(node.cargo[i], node) for node in nodes]
    decorated = sort(decorated, by = x -> x[1])
    for i in 1:length(nodes)
        nodes[i] = decorated[i][2]
    end
end



function compute(hv::HyperVolume, front::AbstractArray) # where T<:BAN
    relevantPoints = []
    dimensions = length(hv.referencePoint)
    for point in front
        # only consider points that dominate the reference point, parecchie librerie danno errore qua
        if weaklyDominates(point, hv.referencePoint)
            Base.append!(relevantPoints, [point])
        end
    end
    if any(a -> a != 0, hv.referencePoint)
        # shift points so that referencePoint == [0, ..., 0]
        # this way the reference point doesn't have to be explicitly used
        # in the HV computation
        for j in 1:length(relevantPoints)
            relevantPoints[j] .= relevantPoints[j] - hv.referencePoint
        end
    end
    preProcess!(hv, relevantPoints)
    bounds = fill(Ban(-Inf), dimensions)
    hyperVolume = hvRecursive!(hv, dimensions, length(relevantPoints), bounds)
    return hyperVolume
end


# α constant
# η constant
# hv = HyperVolume([5, 5, 5])
# res = compute(hv, [[1, 2, 3], [2, 4, 5], [10, 10, 10]])

# hv = HyperVolume([2, 2])
# res = compute(hv, [[0.5η, 0], [0.5η, 0.5η], [0η, 1η], [1.5η, 0.75η]])

# hv = HyperVolume([10, 10])
# res = compute(hv, [[0.5η, 0η], [0.5η + 0.5η, 0.5η], [0η, 1η], [1.5η, 0.75η]])
# res = compute(hv, [[1 - 0.5η, 4 + 0η], [2 - 0.5η - 0.5η, 3 - 0.5η], [3 - 0η, 2 - 1η], [4 - 1.5η, 1 - 0.75η]])
# res = compute(hv, [[5 + 10η, 6 + 9η]])

# println(res)
# res = compute(hv, [[0.5, 0], [0.25, 0.5], [0, 1], [1.5, 0.75]])


# hv = HyperVolume([Ban(2), Ban(2)])
# res = compute(hv, [[0.5η, 0.75η], [1η, 0.5η], [0η, 1η], [1.5η, 0.75η]])
# # hv = HyperVolume([1,1])
# # res = compute(hv, [[1, 0], [0, 1], [0.5 + η, 0.5 + η]])
# println(res)

# hv = HyperVolume([5, 5])
# res = compute(hv, [[1 - 0.5η, 4 + 0η], [2 - 0.5η - 0.5η, 3 - 0.5η], [3 - 0η, 2 - 1η], [4 - 1.5η, 1 - 0.75η]])
# println(res)