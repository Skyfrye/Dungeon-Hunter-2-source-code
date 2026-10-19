; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038d568, declared_size=8, range_size=8, mode=arm
; class-group: ObjectSearcher::TargetSorter
; alias: _ZN14ObjectSearcher12TargetSorter11_sortNoSortERKNS_10TargetInfoES3_
; demangled: ObjectSearcher::TargetSorter::_sortNoSort(ObjectSearcher::TargetInfo const&, ObjectSearcher::TargetInfo const&)
; decoder-mode: arm
0038d568  00 00 a0 e3                                      mov r0, #0
0038d56c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d570, declared_size=68, range_size=68, mode=arm
; class-group: ObjectSearcher::TargetSorter
; alias: _ZN14ObjectSearcher12TargetSorter12_sortClosestERKNS_10TargetInfoES3_
; demangled: ObjectSearcher::TargetSorter::_sortClosest(ObjectSearcher::TargetInfo const&, ObjectSearcher::TargetInfo const&)
; decoder-mode: arm
0038d570  10 40 2d e9                                      push {r4, lr}
0038d574  00 30 a0 e1                                      mov r3, r0
0038d578  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0038d57c  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0038d580  01 20 02 e2                                      and r2, r2, #1
0038d584  01 00 00 e2                                      and r0, r0, #1
0038d588  00 00 52 e1                                      cmp r2, r0
0038d58c  00 00 00 0a                                      beq #0x38d594
0038d590  10 80 bd e8                                      pop {r4, pc}
0038d594  04 00 93 e5                                      ldr r0, [r3, #4]
0038d598  04 10 91 e5                                      ldr r1, [r1, #4]
0038d59c  55 03 fe eb                                      bl #0x30e2f8
0038d5a0  00 00 50 e3                                      cmp r0, #0
0038d5a4  00 00 a0 e3                                      mov r0, #0
0038d5a8  01 00 a0 13                                      movne r0, #1
0038d5ac  70 00 ef e6                                      uxtb r0, r0
0038d5b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0038d5b4, declared_size=68, range_size=68, mode=arm
; class-group: ObjectSearcher::TargetSorter
; alias: _ZN14ObjectSearcher12TargetSorter12_sortFrontalERKNS_10TargetInfoES3_
; demangled: ObjectSearcher::TargetSorter::_sortFrontal(ObjectSearcher::TargetInfo const&, ObjectSearcher::TargetInfo const&)
; decoder-mode: arm
0038d5b4  10 40 2d e9                                      push {r4, lr}
0038d5b8  00 30 a0 e1                                      mov r3, r0
0038d5bc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0038d5c0  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0038d5c4  01 20 02 e2                                      and r2, r2, #1
0038d5c8  01 00 00 e2                                      and r0, r0, #1
0038d5cc  00 00 52 e1                                      cmp r2, r0
0038d5d0  00 00 00 0a                                      beq #0x38d5d8
0038d5d4  10 80 bd e8                                      pop {r4, pc}
0038d5d8  08 00 93 e5                                      ldr r0, [r3, #8]
0038d5dc  08 10 91 e5                                      ldr r1, [r1, #8]
0038d5e0  44 03 fe eb                                      bl #0x30e2f8
0038d5e4  00 00 50 e3                                      cmp r0, #0
0038d5e8  00 00 a0 e3                                      mov r0, #0
0038d5ec  01 00 a0 13                                      movne r0, #1
0038d5f0  70 00 ef e6                                      uxtb r0, r0
0038d5f4  10 80 bd e8                                      pop {r4, pc}
