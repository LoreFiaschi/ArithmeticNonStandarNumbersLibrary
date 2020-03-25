__precompile__()
module BanLinearAlgebra

import BAN: /, *, ^, +, -, ==
import BAN: Ban

import LinearAlgebra: Symmetric

export

#Functions
    eigvals
    
    
# pick a canonical ordering to avoid returning eigenvalues in "random" order
eigsortby(λ::Ban) = λ
    
"""
    eigvals!(A; permute::Bool=true, scale::Bool=true, sortby) -> values
    
Same as [`eigvals`](@ref), but saves space by overwriting the input `A`, instead of creating a copy.
The `permute`, `scale`, and `sortby` keywords are the same as for [`eigen`](@ref).

!!! note
    The input matrix `A` will not contain its eigenvalues after `eigvals!` is
    called on it - `A` is used as a workspace.
"""

function eigvals!(A::StridedMatrix{<:Ban}; permute::Bool=true, scale::Bool=true, sortby::Union{Function,Nothing}=eigsortby)
    issymmetric(A) && return sorteig!(eigvals!(Symmetric(A)), sortby)
    _, valsre, valsim, _ = LAPACK.geevx!(permute ? (scale ? 'B' : 'P') : (scale ? 'S' : 'N'), 'N', 'N', 'N', A)
    return sorteig!(iszero(valsim) ? valsre : complex.(valsre, valsim), sortby)
end

"""
    eigvals(A; permute::Bool=true, scale::Bool=true, sortby) -> values
    
Return the eigenvalues of `A`.

For general non-symmetric matrices it is possible to specify how the matrix is balanced
before the eigenvalue calculation. The `permute`, `scale`, and `sortby` keywords are
the same as for [`eigen!`](@ref).
"""

eigvals(A::AbstractMatrix{T}; kws...) where T <: Ban =
    eigvals!(copy(A); kws...)

end