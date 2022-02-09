; ModuleID = '/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban_s3/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%class.Ban = type { i32, [3 x float] }
%union.output = type { %class.Ban }

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%class.Ban* readonly, i128* noalias align 512, %class.Ban* readonly, i128* noalias align 512) unnamed_addr #0 {
entry:
  call fastcc void @onebyonecpy_hls.p0class.Ban.116(i128* align 512 %1, %class.Ban* %0)
  call fastcc void @onebyonecpy_hls.p0class.Ban.116(i128* align 512 %3, %class.Ban* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%class.Ban*, i128* noalias readonly align 512, %class.Ban*, i128* noalias readonly align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0class.Ban(%class.Ban* %0, i128* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0class.Ban(%class.Ban* %2, i128* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0class.Ban(%class.Ban* noalias, i128* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq %class.Ban* %0, null
  %3 = icmp eq i128* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01 = getelementptr %class.Ban, %class.Ban* %0, i32 0, i32 0
  %5 = load i128, i128* %1, align 512
  %6 = and i128 %5, 4294967295
  %.partselect1 = trunc i128 %6 to i32
  store i32 %.partselect1, i32* %.01, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx5 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr3 = getelementptr %class.Ban, %class.Ban* %0, i32 0, i32 1, i64 %for.loop.idx5
  %7 = mul nuw nsw i64 32, %for.loop.idx5
  %8 = add nuw nsw i64 32, %7
  %.end = add nuw nsw i64 %7, 63
  %9 = zext i64 %8 to i128
  %10 = zext i64 %.end to i128
  %11 = add nuw nsw i128 %10, 1
  %12 = shl i128 1, %11
  %13 = icmp uge i128 %11, 128
  %14 = select i1 %13, i128 0, i128 %12
  %15 = shl i128 1, %9
  %16 = sub i128 %14, %15
  %17 = and i128 %5, %16
  %18 = lshr i128 %17, %9
  %.partselect = trunc i128 %18 to i32
  %19 = call float @_llvm.fpga.unpack.bits.f32.i32(i32 %.partselect)
  store float %19, float* %dst.addr3, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx5, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal float @_llvm.fpga.unpack.bits.f32.i32(i32 %A) #3 {
  %A.cast = bitcast i32 %A to float
  ret float %A.cast
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0class.Ban.116(i128* noalias align 512, %class.Ban* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i128* %0, null
  %3 = icmp eq %class.Ban* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0 = getelementptr %class.Ban, %class.Ban* %1, i32 0, i32 0
  %5 = load i32, i32* %.0, align 4
  %6 = load i128, i128* %0, align 512
  %7 = zext i32 %5 to i128
  %8 = and i128 %6, -4294967296
  %.partset1 = or i128 %8, %7
  store i128 %.partset1, i128* %0, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %9 = phi i128 [ %.partset1, %copy ], [ %.partset, %for.loop ]
  %for.loop.idx5 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %10 = mul nuw nsw i64 32, %for.loop.idx5
  %11 = add nuw nsw i64 32, %10
  %src.addr4 = getelementptr %class.Ban, %class.Ban* %1, i32 0, i32 1, i64 %for.loop.idx5
  %12 = load float, float* %src.addr4, align 4
  %13 = call i32 @_llvm.fpga.pack.bits.i32.f32(float %12)
  %.end = add nuw nsw i64 %10, 63
  %14 = zext i64 %11 to i128
  %15 = zext i32 %13 to i128
  %16 = shl i128 %15, %14
  %17 = zext i64 %.end to i128
  %18 = add nuw nsw i128 %17, 1
  %19 = shl i128 1, %18
  %20 = icmp uge i128 %18, 128
  %21 = select i1 %20, i128 0, i128 %19
  %22 = shl i128 1, %14
  %23 = sub i128 %21, %22
  %24 = xor i128 %23, -1
  %25 = and i128 %9, %24
  %.partset = or i128 %25, %16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx5, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond, label %for.loop, label %ret.loopexit

ret.loopexit:                                     ; preds = %for.loop
  store i128 %.partset, i128* %0, align 512
  br label %ret

ret:                                              ; preds = %ret.loopexit, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i32 @_llvm.fpga.pack.bits.i32.f32(float %A) #3 {
  %A.cast = bitcast float %A to i32
  ret i32 %A.cast
}

declare void @apatb_ban_interface_hw(%union.output*, i128*, i128*, float, i32)

define void @ban_interface_hw_stub_wrapper(%union.output*, i128*, i128*, float, i32) #4 {
entry:
  %5 = alloca %class.Ban
  %6 = alloca %class.Ban
  call void @copy_out(%class.Ban* %5, i128* %1, %class.Ban* %6, i128* %2)
  call void @ban_interface_hw_stub(%union.output* %0, %class.Ban* %5, %class.Ban* %6, float %3, i32 %4)
  call void @copy_in(%class.Ban* %5, i128* %1, %class.Ban* %6, i128* %2)
  ret void
}

declare void @ban_interface_hw_stub(%union.output*, %class.Ban*, %class.Ban*, float, i32)

; Function Attrs: argmemonly noinline
define void @apatb_ban_interface_ir(i128* %ret, %class.Ban* %b_op1, %class.Ban* %b_op2, float %f_op, i32 %op) #5 {
entry:
  %b_op1_copy = alloca i128, align 512
  %b_op2_copy = alloca i128, align 512
  call fastcc void @copy_in(%class.Ban* %b_op1, i128* nonnull align 512 %b_op1_copy, %class.Ban* %b_op2, i128* nonnull align 512 %b_op2_copy)
  %0 = alloca %union.output
  call void @apatb_ban_interface_hw(%union.output* %0, i128* %b_op1_copy, i128* %b_op2_copy, float %f_op, i32 %op)
  %1 = load volatile %union.output, %union.output* %0
  call fastcc void @copy_out(%class.Ban* %b_op1, i128* nonnull align 512 %b_op1_copy, %class.Ban* %b_op2, i128* nonnull align 512 %b_op2_copy)
  %2 = bitcast %union.output* %0 to i128*
  %3 = load volatile i128, i128* %2
  store i128 %3, i128* %ret
  ret void
}

attributes #0 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { alwaysinline nounwind readnone }
attributes #4 = { "fpga.wrapper.func"="stub" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="wrapper" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
