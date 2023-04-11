; ModuleID = 'src/test.cpoint'
source_filename = "src/test.cpoint"

declare double @printd(double)

declare void @printi(i32)

declare double @putchard(double)

declare void @printstr(ptr)

define double @test_github(double %x) {
entry:
  %x1 = alloca double, align 8
  store double %x, ptr %x1, align 8
  %x2 = load double, ptr %x1, align 8
  %calltmp = call double @printd(double %x2)
  ret double %calltmp
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C, file: !2, producer: "Cpoint Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!2 = !DIFile(filename: "src/test.cpoint", directory: ".")
