; ModuleID = 'C:/HardwareAcceleratedECC-PointMultiplication/DoublePointMultiplication/haidiem/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<166>" = type { %"struct.ap_int_base<166, true>" }
%"struct.ap_int_base<166, true>" = type { %"struct.ssdm_int<166, true>" }
%"struct.ssdm_int<166, true>" = type { i166 }
%struct.Point = type { %"struct.ap_int<166>", %"struct.ap_int<166>" }

; Function Attrs: noinline
define void @apatb_Radix2wDPM_ir(%"struct.ap_int<166>"* %k1, %"struct.ap_int<166>"* %k2, %struct.Point* %R, %struct.Point* %S, %struct.Point* %P) local_unnamed_addr #0 {
entry:
  %k1_copy = alloca i166, align 512
  %k2_copy = alloca i166, align 512
  %R_copy = alloca i332, align 512
  %S_copy = alloca i332, align 512
  %P_copy = alloca i332, align 512
  call fastcc void @copy_in(%"struct.ap_int<166>"* %k1, i166* nonnull align 512 %k1_copy, %"struct.ap_int<166>"* %k2, i166* nonnull align 512 %k2_copy, %struct.Point* %R, i332* nonnull align 512 %R_copy, %struct.Point* %S, i332* nonnull align 512 %S_copy, %struct.Point* %P, i332* nonnull align 512 %P_copy)
  call void @apatb_Radix2wDPM_hw(i166* %k1_copy, i166* %k2_copy, i332* %R_copy, i332* %S_copy, i332* %P_copy)
  call fastcc void @copy_out(%"struct.ap_int<166>"* %k1, i166* nonnull align 512 %k1_copy, %"struct.ap_int<166>"* %k2, i166* nonnull align 512 %k2_copy, %struct.Point* %R, i332* nonnull align 512 %R_copy, %struct.Point* %S, i332* nonnull align 512 %S_copy, %struct.Point* %P, i332* nonnull align 512 %P_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%"struct.ap_int<166>"* readonly, i166* noalias align 512, %"struct.ap_int<166>"* readonly, i166* noalias align 512, %struct.Point* readonly, i332* noalias align 512, %struct.Point* readonly, i332* noalias align 512, %struct.Point* readonly, i332* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<166>"(i166* align 512 %1, %"struct.ap_int<166>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<166>"(i166* align 512 %3, %"struct.ap_int<166>"* %2)
  call fastcc void @onebyonecpy_hls.p0struct.Point(i332* align 512 %5, %struct.Point* %4)
  call fastcc void @onebyonecpy_hls.p0struct.Point(i332* align 512 %7, %struct.Point* %6)
  call fastcc void @onebyonecpy_hls.p0struct.Point(i332* align 512 %9, %struct.Point* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%"struct.ap_int<166>"*, i166* noalias readonly align 512, %"struct.ap_int<166>"*, i166* noalias readonly align 512, %struct.Point*, i332* noalias readonly align 512, %struct.Point*, i332* noalias readonly align 512, %struct.Point*, i332* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<166>.884"(%"struct.ap_int<166>"* %0, i166* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<166>.884"(%"struct.ap_int<166>"* %2, i166* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0struct.Point.804(%struct.Point* %4, i332* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0struct.Point.804(%struct.Point* %6, i332* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0struct.Point.804(%struct.Point* %8, i332* align 512 %9)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.Point.804(%struct.Point* noalias, i332* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.Point* %0, null
  %3 = icmp eq i332* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.0.08 = getelementptr %struct.Point, %struct.Point* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i332* %1 to i336*
  %6 = load i336, i336* %5
  %7 = trunc i336 %6 to i332
  %8 = and i332 %7, 93536104789177786765035829293842113257979682750463
  %.partselect1 = trunc i332 %8 to i166
  store i166 %.partselect1, i166* %.01.0.0.08, align 512
  %.12.0.0.014 = getelementptr %struct.Point, %struct.Point* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %9 = and i332 %7, -93536104789177786765035829293842113257979682750464
  %10 = lshr i332 %9, 166
  %.partselect = trunc i332 %10 to i166
  store i166 %.partselect, i166* %.12.0.0.014, align 32
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.Point(i332* noalias align 512, %struct.Point* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i332* %0, null
  %3 = icmp eq %struct.Point* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.0.07 = getelementptr %struct.Point, %struct.Point* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i166* %.0.0.0.07 to i168*
  %6 = load i168, i168* %5
  %7 = trunc i168 %6 to i166
  %8 = zext i166 %7 to i332
  %.1.0.0.013 = getelementptr %struct.Point, %struct.Point* %1, i32 0, i32 1, i32 0, i32 0, i32 0
  %9 = bitcast i166* %.1.0.0.013 to i168*
  %10 = load i168, i168* %9
  %11 = trunc i168 %10 to i166
  %12 = zext i166 %11 to i332
  %13 = shl i332 %12, 166
  %.partset = or i332 %13, %8
  store i332 %.partset, i332* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<166>"(i166* noalias align 512, %"struct.ap_int<166>"* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i166* %0, null
  %3 = icmp eq %"struct.ap_int<166>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_int<166>", %"struct.ap_int<166>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i166* %.0.0.04 to i168*
  %6 = load i168, i168* %5
  %7 = trunc i168 %6 to i166
  store i166 %7, i166* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<166>.884"(%"struct.ap_int<166>"* noalias, i166* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_int<166>"* %0, null
  %3 = icmp eq i166* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_int<166>", %"struct.ap_int<166>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i166* %1 to i168*
  %6 = load i168, i168* %5
  %7 = trunc i168 %6 to i166
  store i166 %7, i166* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_Radix2wDPM_hw(i166*, i166*, i332*, i332*, i332*)

define void @Radix2wDPM_hw_stub_wrapper(i166*, i166*, i332*, i332*, i332*) #4 {
entry:
  %5 = alloca %"struct.ap_int<166>"
  %6 = alloca %"struct.ap_int<166>"
  %7 = alloca %struct.Point
  %8 = alloca %struct.Point
  %9 = alloca %struct.Point
  call void @copy_out(%"struct.ap_int<166>"* %5, i166* %0, %"struct.ap_int<166>"* %6, i166* %1, %struct.Point* %7, i332* %2, %struct.Point* %8, i332* %3, %struct.Point* %9, i332* %4)
  call void @Radix2wDPM_hw_stub(%"struct.ap_int<166>"* %5, %"struct.ap_int<166>"* %6, %struct.Point* %7, %struct.Point* %8, %struct.Point* %9)
  call void @copy_in(%"struct.ap_int<166>"* %5, i166* %0, %"struct.ap_int<166>"* %6, i166* %1, %struct.Point* %7, i332* %2, %struct.Point* %8, i332* %3, %struct.Point* %9, i332* %4)
  ret void
}

declare void @Radix2wDPM_hw_stub(%"struct.ap_int<166>"*, %"struct.ap_int<166>"*, %struct.Point*, %struct.Point*, %struct.Point*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
