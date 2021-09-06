include("../src/Grossone.jl")
using Grossone

gs_default = GrossScalar(7)         #[0:6] Float64 GrossScalar
gs_bool = GrossScalar(Bool, 5)      #[0,4] Bool GrossScalar
gs1 = GrossScalar(Int64, 7, -3)     #[-3,3] Int64 GrossScalar
gs2 = GrossScalar(Int64, 7, -3)     #[-3,3] Int64 GrossScalar
gs3 = GrossScalar(Int64, 7, 0)      #[0,6] Int64 GrossScalar

init_GS!(gs1, [1,2,3,4,5,6,7])
init_GS!(gs2, [1,1,1,1,1,1,1])
println("gs1:     \t", gs1)
println("gs2:     \t", gs2)
println("gs1+gs2: \t", gs1+gs2)
println("gs1-gs2: \t", gs1-gs2)
println("gs1*gs2: \t", gs1*gs2)
gsr1 = GrossScalar(Float64, 7, -3)
gsr2 = GrossScalar(Float64, 7, -3)
init_GS!(gsr1, [-10.0,0,0,16,0,0,42])
init_GS!(gsr2, [5.0,0,0,7,0,0,0])
println("gsr1:\t\t", gsr1)
println("gsr2:\t\t", gsr2)
println("gsr1/gsr2: \t", gsr1/gsr2)       #division
gsbig1 = GrossScalar(Float64, 10, -6)
gsbig2 = GrossScalar(Float64, 10, -6)
init_GS!(gsbig1, [-10.0,0,0,16,0,0,40,0,0,0])
init_GS!(gsbig2, [5.0,0,0,7,0,0,0,0,0,0])
println("gsbig1:\t\t", gsbig1)
println("gsbig2:\t\t", gsbig2)
println("gsbig1/gsbig2: \t", gsbig1/gsbig2) #more-complex division
gsof1 = GrossScalar(Float64, 7, -3)
gsof2 = GrossScalar(Float64, 7, -3)
init_GS!(gsof1, [8.0,0,0,0,1,0,4])
init_GS!(gsof2, [0.0,0,0,0,1,0,0])
println("gsof1:\t\t", gsof1)
println("gsof2:\t\t", gsof2)
println("gsof1/gsof2: \t", gsof1/gsof2)   #division with overflow
gsuf1 = GrossScalar(Float64, 7, -3)
gsuf2 = GrossScalar(Float64, 7, -3)
init_GS!(gsuf1, [0,0,0,0,1.1,0,4])
init_GS!(gsuf2, [3.0,0,0,0,2,0,0])
println("gsuf1:\t\t", gsuf1)
println("gsuf2:\t\t", gsuf2)
println("gsuf1/gsuf2: \t", gsuf1/gsuf2)   #division with underflow
println("gs1==gs2:  \t", gs1 == gs2)
println("gs1<gs2:   \t", gs1 < gs2)
println("gs1>gs2:   \t", gs1 > gs2)
println("gs1.*gs2:  \t", gs1.*gs2)
println("gs1.+=Int(2): \t", gs1.+=Int(2))
println("gs1.*=gs2  \t", gs1.*=gs2)

gv_default = GrossVector(3,4)       #3-element GrossVector of [0:3] Float64 GrossScalars
gv1 = GrossVector(Int64,4,3,-1)     #4-element GrossVector of [-1:1] Int64 GrossScalars
init_GV!(gv1, [1,2,3],[4,5,6],[7,8,9],[10,11,12])
println("gv1:\n", gv1)
println("gv1[2][-1]:     ", gv1[2][-1])
println("gv1[3][1]=15"); gv1[3][1]=15
println("gv1[3][1]:      ", gv1[3][1])

println("\nsort(gv1):\n", sort(gv1))
println("sort(gv1, rev=true):\n", sort(gv1, rev=true))
println("issorted(gv1):   ",issorted(gv1))
