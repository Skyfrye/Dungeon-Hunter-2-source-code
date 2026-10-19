; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051f848, declared_size=540, range_size=540, mode=arm
; class-group: PFGInnerNode*& std::map<CompPos, PFGInnerNode*, std::less<CompPos>, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >
; alias: _ZNSt3mapI7CompPosP12PFGInnerNodeSt4lessIS0_ESaISt4pairIKS0_S2_EEEixIS0_EERS2_RKT_
; demangled: PFGInnerNode*& std::map<CompPos, PFGInnerNode*, std::less<CompPos>, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >::operator[]<CompPos>(CompPos const&)
; decoder-mode: arm
0051f848  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0051f84c  04 40 90 e5                                      ldr r4, [r0, #4]
0051f850  18 d0 4d e2                                      sub sp, sp, #0x18
0051f854  00 80 a0 e1                                      mov r8, r0
0051f858  00 00 54 e3                                      cmp r4, #0
0051f85c  01 a0 a0 e1                                      mov sl, r1
0051f860  7c 00 00 0a                                      beq #0x51fa58
0051f864  00 50 91 e5                                      ldr r5, [r1]
0051f868  00 70 a0 e1                                      mov r7, r0
0051f86c  10 60 94 e5                                      ldr r6, [r4, #0x10]
0051f870  05 10 a0 e1                                      mov r1, r5
0051f874  06 00 a0 e1                                      mov r0, r6
0051f878  cb ba f7 eb                                      bl #0x30e3ac
0051f87c  17 17 0b e3                                      movw r1, #0xb717
0051f880  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f884  d1 18 43 e3                                      movt r1, #0x38d1
0051f888  9f bb f7 eb                                      bl #0x30e70c
0051f88c  00 00 50 e3                                      cmp r0, #0
0051f890  1a 00 00 0a                                      beq #0x51f900
0051f894  14 90 94 e5                                      ldr sb, [r4, #0x14]
0051f898  04 60 9a e5                                      ldr r6, [sl, #4]
0051f89c  09 00 a0 e1                                      mov r0, sb
0051f8a0  06 10 a0 e1                                      mov r1, r6
0051f8a4  c0 ba f7 eb                                      bl #0x30e3ac
0051f8a8  17 17 0b e3                                      movw r1, #0xb717
0051f8ac  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f8b0  d1 18 43 e3                                      movt r1, #0x38d1
0051f8b4  94 bb f7 eb                                      bl #0x30e70c
0051f8b8  00 00 50 e3                                      cmp r0, #0
0051f8bc  4f 00 00 0a                                      beq #0x51fa00
0051f8c0  18 00 94 e5                                      ldr r0, [r4, #0x18]
0051f8c4  08 10 9a e5                                      ldr r1, [sl, #8]
0051f8c8  8f bb f7 eb                                      bl #0x30e70c
0051f8cc  00 00 50 e3                                      cmp r0, #0
0051f8d0  00 30 a0 e3                                      mov r3, #0
0051f8d4  0f 00 00 1a                                      bne #0x51f918
0051f8d8  73 30 ef e6                                      uxtb r3, r3
0051f8dc  00 00 53 e3                                      cmp r3, #0
0051f8e0  0c 30 94 15                                      ldrne r3, [r4, #0xc]
0051f8e4  08 30 94 05                                      ldreq r3, [r4, #8]
0051f8e8  07 40 a0 11                                      movne r4, r7
0051f8ec  00 00 53 e3                                      cmp r3, #0
0051f8f0  10 00 00 0a                                      beq #0x51f938
0051f8f4  04 70 a0 e1                                      mov r7, r4
0051f8f8  03 40 a0 e1                                      mov r4, r3
0051f8fc  da ff ff ea                                      b #0x51f86c
0051f900  06 00 a0 e1                                      mov r0, r6
0051f904  05 10 a0 e1                                      mov r1, r5
0051f908  7f bb f7 eb                                      bl #0x30e70c
0051f90c  00 00 50 e3                                      cmp r0, #0
0051f910  00 30 a0 e3                                      mov r3, #0
0051f914  ef ff ff 0a                                      beq #0x51f8d8
0051f918  01 30 a0 e3                                      mov r3, #1
0051f91c  73 30 ef e6                                      uxtb r3, r3
0051f920  00 00 53 e3                                      cmp r3, #0
0051f924  0c 30 94 15                                      ldrne r3, [r4, #0xc]
0051f928  08 30 94 05                                      ldreq r3, [r4, #8]
0051f92c  07 40 a0 11                                      movne r4, r7
0051f930  00 00 53 e3                                      cmp r3, #0
0051f934  ee ff ff 1a                                      bne #0x51f8f4
0051f938  04 00 58 e1                                      cmp r8, r4
0051f93c  1e 00 00 0a                                      beq #0x51f9bc
0051f940  10 70 94 e5                                      ldr r7, [r4, #0x10]
0051f944  05 00 a0 e1                                      mov r0, r5
0051f948  04 60 a0 e1                                      mov r6, r4
0051f94c  07 10 a0 e1                                      mov r1, r7
0051f950  95 ba f7 eb                                      bl #0x30e3ac
0051f954  17 17 0b e3                                      movw r1, #0xb717
0051f958  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f95c  d1 18 43 e3                                      movt r1, #0x38d1
0051f960  69 bb f7 eb                                      bl #0x30e70c
0051f964  00 00 50 e3                                      cmp r0, #0
0051f968  2c 00 00 0a                                      beq #0x51fa20
0051f96c  04 90 9a e5                                      ldr sb, [sl, #4]
0051f970  14 70 94 e5                                      ldr r7, [r4, #0x14]
0051f974  09 00 a0 e1                                      mov r0, sb
0051f978  07 10 a0 e1                                      mov r1, r7
0051f97c  8a ba f7 eb                                      bl #0x30e3ac
0051f980  17 17 0b e3                                      movw r1, #0xb717
0051f984  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f988  d1 18 43 e3                                      movt r1, #0x38d1
0051f98c  5e bb f7 eb                                      bl #0x30e70c
0051f990  00 00 50 e3                                      cmp r0, #0
0051f994  28 00 00 0a                                      beq #0x51fa3c
0051f998  08 00 9a e5                                      ldr r0, [sl, #8]
0051f99c  18 10 94 e5                                      ldr r1, [r4, #0x18]
0051f9a0  59 bb f7 eb                                      bl #0x30e70c
0051f9a4  00 00 50 e3                                      cmp r0, #0
0051f9a8  00 30 a0 e3                                      mov r3, #0
0051f9ac  01 30 a0 13                                      movne r3, #1
0051f9b0  73 30 ef e6                                      uxtb r3, r3
0051f9b4  00 00 53 e3                                      cmp r3, #0
0051f9b8  0d 00 00 0a                                      beq #0x51f9f4
0051f9bc  08 c0 9a e5                                      ldr ip, [sl, #8]
0051f9c0  04 e0 9a e5                                      ldr lr, [sl, #4]
0051f9c4  08 10 a0 e1                                      mov r1, r8
0051f9c8  08 c0 8d e5                                      str ip, [sp, #8]
0051f9cc  14 00 8d e2                                      add r0, sp, #0x14
0051f9d0  00 c0 a0 e3                                      mov ip, #0
0051f9d4  10 20 8d e2                                      add r2, sp, #0x10
0051f9d8  0d 30 a0 e1                                      mov r3, sp
0051f9dc  00 50 8d e5                                      str r5, [sp]
0051f9e0  04 e0 8d e5                                      str lr, [sp, #4]
0051f9e4  0c c0 8d e5                                      str ip, [sp, #0xc]
0051f9e8  10 40 8d e5                                      str r4, [sp, #0x10]
0051f9ec  71 fd ff eb                                      bl #0x51efb8
0051f9f0  14 60 9d e5                                      ldr r6, [sp, #0x14]
0051f9f4  1c 00 86 e2                                      add r0, r6, #0x1c
0051f9f8  18 d0 8d e2                                      add sp, sp, #0x18
0051f9fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0051fa00  09 00 a0 e1                                      mov r0, sb
0051fa04  06 10 a0 e1                                      mov r1, r6
0051fa08  3f bb f7 eb                                      bl #0x30e70c
0051fa0c  00 00 50 e3                                      cmp r0, #0
0051fa10  00 30 a0 e3                                      mov r3, #0
0051fa14  af ff ff 0a                                      beq #0x51f8d8
0051fa18  01 30 a0 e3                                      mov r3, #1
0051fa1c  be ff ff ea                                      b #0x51f91c
0051fa20  07 10 a0 e1                                      mov r1, r7
0051fa24  05 00 a0 e1                                      mov r0, r5
0051fa28  37 bb f7 eb                                      bl #0x30e70c
0051fa2c  00 00 50 e3                                      cmp r0, #0
0051fa30  00 30 a0 e3                                      mov r3, #0
0051fa34  01 30 a0 13                                      movne r3, #1
0051fa38  dc ff ff ea                                      b #0x51f9b0
0051fa3c  09 00 a0 e1                                      mov r0, sb
0051fa40  07 10 a0 e1                                      mov r1, r7
0051fa44  30 bb f7 eb                                      bl #0x30e70c
0051fa48  00 00 50 e3                                      cmp r0, #0
0051fa4c  00 30 a0 e3                                      mov r3, #0
0051fa50  01 30 a0 13                                      movne r3, #1
0051fa54  d5 ff ff ea                                      b #0x51f9b0
0051fa58  00 50 91 e5                                      ldr r5, [r1]
0051fa5c  00 40 a0 e1                                      mov r4, r0
0051fa60  b4 ff ff ea                                      b #0x51f938
