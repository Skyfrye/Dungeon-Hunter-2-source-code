; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00525080, declared_size=60, range_size=60, mode=arm
; class-group: PFInnerTest_PFObject
; alias: _ZNK20PFInnerTest_PFObject7isValidEPK12PFGInnerEdge
; demangled: PFInnerTest_PFObject::isValid(PFGInnerEdge const*) const
; decoder-mode: arm
00525080  70 40 2d e9                                      push {r4, r5, r6, lr}
00525084  00 50 a0 e1                                      mov r5, r0
00525088  01 40 a0 e1                                      mov r4, r1
0052508c  ea ff ff eb                                      bl #0x52503c
00525090  00 00 50 e3                                      cmp r0, #0
00525094  07 00 00 0a                                      beq #0x5250b8
00525098  04 30 95 e5                                      ldr r3, [r5, #4]
0052509c  14 00 94 e5                                      ldr r0, [r4, #0x14]
005250a0  00 40 a0 e3                                      mov r4, #0
005250a4  08 10 93 e5                                      ldr r1, [r3, #8]
005250a8  01 a5 f7 eb                                      bl #0x30e4b4
005250ac  00 00 50 e3                                      cmp r0, #0
005250b0  01 40 a0 13                                      movne r4, #1
005250b4  74 00 ef e6                                      uxtb r0, r4
005250b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0052510c, declared_size=44, range_size=44, mode=arm
; class-group: PFInnerTest_PFObject
; alias: _ZNK20PFInnerTest_PFObject7isValidEPK12PFGInnerNode
; demangled: PFInnerTest_PFObject::isValid(PFGInnerNode const*) const
; decoder-mode: arm
0052510c  70 40 2d e9                                      push {r4, r5, r6, lr}
00525110  00 50 a0 e1                                      mov r5, r0
00525114  01 40 a0 e1                                      mov r4, r1
00525118  cd ff ff eb                                      bl #0x525054
0052511c  00 00 50 e3                                      cmp r0, #0
00525120  00 00 00 1a                                      bne #0x525128
00525124  70 80 bd e8                                      pop {r4, r5, r6, pc}
00525128  04 00 95 e5                                      ldr r0, [r5, #4]
0052512c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00525130  70 40 bd e8                                      pop {r4, r5, r6, lr}
00525134  3d fc ff ea                                      b #0x524230

; FUNCTION 0x00525138, declared_size=16, range_size=16, mode=arm
; class-group: PFInnerTest_PFObject
; alias: _ZTv0_n20_NK20PFInnerTest_PFObject7isValidEPK12PFGInnerNode
; demangled: virtual thunk to PFInnerTest_PFObject::isValid(PFGInnerNode const*) const
; decoder-mode: arm
00525138  00 30 90 e5                                      ldr r3, [r0]
0052513c  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00525140  03 00 80 e0                                      add r0, r0, r3
00525144  f0 ff ff ea                                      b #0x52510c

; FUNCTION 0x00525148, declared_size=16, range_size=16, mode=arm
; class-group: PFInnerTest_PFObject
; alias: _ZTv0_n16_NK20PFInnerTest_PFObject7isValidEPK12PFGInnerEdge
; demangled: virtual thunk to PFInnerTest_PFObject::isValid(PFGInnerEdge const*) const
; decoder-mode: arm
00525148  00 30 90 e5                                      ldr r3, [r0]
0052514c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00525150  03 00 80 e0                                      add r0, r0, r3
00525154  c9 ff ff ea                                      b #0x525080
