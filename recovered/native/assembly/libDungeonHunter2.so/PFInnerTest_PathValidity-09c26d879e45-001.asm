; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052503c, declared_size=24, range_size=24, mode=arm
; class-group: PFInnerTest_PathValidity
; alias: _ZNK24PFInnerTest_PathValidity7isValidEPK12PFGInnerEdge
; demangled: PFInnerTest_PathValidity::isValid(PFGInnerEdge const*) const
; decoder-mode: arm
0052503c  10 40 2d e9                                      push {r4, lr}
00525040  01 00 a0 e1                                      mov r0, r1
00525044  00 30 91 e5                                      ldr r3, [r1]
00525048  0f e0 a0 e1                                      mov lr, pc
0052504c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00525050  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00525054, declared_size=44, range_size=44, mode=arm
; class-group: PFInnerTest_PathValidity
; alias: _ZNK24PFInnerTest_PathValidity7isValidEPK12PFGInnerNode
; demangled: PFInnerTest_PathValidity::isValid(PFGInnerNode const*) const
; decoder-mode: arm
00525054  00 30 91 e5                                      ldr r3, [r1]
00525058  10 40 2d e9                                      push {r4, lr}
0052505c  01 00 a0 e1                                      mov r0, r1
00525060  01 40 a0 e1                                      mov r4, r1
00525064  0f e0 a0 e1                                      mov lr, pc
00525068  04 f0 93 e5                                      ldr pc, [r3, #4]
0052506c  00 00 50 e3                                      cmp r0, #0
00525070  28 30 94 15                                      ldrne r3, [r4, #0x28]
00525074  20 00 93 15                                      ldrne r0, [r3, #0x20]
00525078  01 00 00 12                                      andne r0, r0, #1
0052507c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00525158, declared_size=16, range_size=16, mode=arm
; class-group: PFInnerTest_PathValidity
; alias: _ZTv0_n20_NK24PFInnerTest_PathValidity7isValidEPK12PFGInnerNode
; demangled: virtual thunk to PFInnerTest_PathValidity::isValid(PFGInnerNode const*) const
; decoder-mode: arm
00525158  00 30 90 e5                                      ldr r3, [r0]
0052515c  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00525160  03 00 80 e0                                      add r0, r0, r3
00525164  ba ff ff ea                                      b #0x525054

; FUNCTION 0x00525168, declared_size=16, range_size=16, mode=arm
; class-group: PFInnerTest_PathValidity
; alias: _ZTv0_n16_NK24PFInnerTest_PathValidity7isValidEPK12PFGInnerEdge
; demangled: virtual thunk to PFInnerTest_PathValidity::isValid(PFGInnerEdge const*) const
; decoder-mode: arm
00525168  00 30 90 e5                                      ldr r3, [r0]
0052516c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00525170  03 00 80 e0                                      add r0, r0, r3
00525174  b0 ff ff ea                                      b #0x52503c
