; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00378544, declared_size=284, range_size=284, mode=arm
; class-group: PlayerInfo& std::map<int, PlayerInfo, std::less<int>, std::allocator<std::pair<int const, PlayerInfo> > >
; alias: _ZNSt3mapIi10PlayerInfoSt4lessIiESaISt4pairIKiS0_EEEixIiEERS0_RKT_
; demangled: PlayerInfo& std::map<int, PlayerInfo, std::less<int>, std::allocator<std::pair<int const, PlayerInfo> > >::operator[]<int>(int const&)
; decoder-mode: arm
00378544  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00378548  08 51 9f e5                                      ldr r5, [pc, #0x108]
0037854c  08 61 9f e5                                      ldr r6, [pc, #0x108]
00378550  04 40 90 e5                                      ldr r4, [r0, #4]
00378554  05 50 8f e0                                      add r5, pc, r5
00378558  06 30 95 e7                                      ldr r3, [r5, r6]
0037855c  d2 de 4d e2                                      sub sp, sp, #0xd20
00378560  08 d0 4d e2                                      sub sp, sp, #8
00378564  00 30 93 e5                                      ldr r3, [r3]
00378568  00 00 54 e3                                      cmp r4, #0
0037856c  00 90 a0 e1                                      mov sb, r0
00378570  01 70 a0 e1                                      mov r7, r1
00378574  24 3d 8d e5                                      str r3, [sp, #0xd24]
00378578  00 40 a0 01                                      moveq r4, r0
0037857c  0b 00 00 0a                                      beq #0x3785b0
00378580  00 10 91 e5                                      ldr r1, [r1]
00378584  00 20 a0 e1                                      mov r2, r0
00378588  01 00 00 ea                                      b #0x378594
0037858c  04 20 a0 e1                                      mov r2, r4
00378590  03 40 a0 e1                                      mov r4, r3
00378594  10 30 94 e5                                      ldr r3, [r4, #0x10]
00378598  03 00 51 e1                                      cmp r1, r3
0037859c  0c 30 94 c5                                      ldrgt r3, [r4, #0xc]
003785a0  08 30 94 d5                                      ldrle r3, [r4, #8]
003785a4  02 40 a0 c1                                      movgt r4, r2
003785a8  00 00 53 e3                                      cmp r3, #0
003785ac  f6 ff ff 1a                                      bne #0x37858c
003785b0  04 00 59 e1                                      cmp sb, r4
003785b4  0d 00 00 0a                                      beq #0x3785f0
003785b8  00 20 97 e5                                      ldr r2, [r7]
003785bc  10 30 94 e5                                      ldr r3, [r4, #0x10]
003785c0  04 00 a0 e1                                      mov r0, r4
003785c4  03 00 52 e1                                      cmp r2, r3
003785c8  08 00 00 ba                                      blt #0x3785f0
003785cc  06 30 95 e7                                      ldr r3, [r5, r6]
003785d0  24 2d 9d e5                                      ldr r2, [sp, #0xd24]
003785d4  18 00 80 e2                                      add r0, r0, #0x18
003785d8  00 30 93 e5                                      ldr r3, [r3]
003785dc  03 00 52 e1                                      cmp r2, r3
003785e0  1b 00 00 1a                                      bne #0x378654
003785e4  4a df 8d e2                                      add sp, sp, #0x128
003785e8  03 db 8d e2                                      add sp, sp, #0xc00
003785ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003785f0  69 8e 8d e2                                      add r8, sp, #0x690
003785f4  08 80 88 e2                                      add r8, r8, #8
003785f8  08 00 a0 e1                                      mov r0, r8
003785fc  e2 ee ff eb                                      bl #0x37418c
00378600  00 30 97 e5                                      ldr r3, [r7]
00378604  d2 7e 8d e2                                      add r7, sp, #0xd20
00378608  08 70 87 e2                                      add r7, r7, #8
0037860c  20 3d 27 e5                                      str r3, [r7, #-0xd20]!
00378610  08 a0 87 e2                                      add sl, r7, #8
00378614  08 10 a0 e1                                      mov r1, r8
00378618  0a 00 a0 e1                                      mov r0, sl
0037861c  6b fc ff eb                                      bl #0x3777d0
00378620  09 10 a0 e1                                      mov r1, sb
00378624  07 30 a0 e1                                      mov r3, r7
00378628  08 20 47 e2                                      sub r2, r7, #8
0037862c  04 00 47 e2                                      sub r0, r7, #4
00378630  00 40 8d e5                                      str r4, [sp]
00378634  e5 fe ff eb                                      bl #0x3781d0
00378638  04 40 9d e5                                      ldr r4, [sp, #4]
0037863c  0a 00 a0 e1                                      mov r0, sl
00378640  13 e3 ff eb                                      bl #0x371294
00378644  08 00 a0 e1                                      mov r0, r8
00378648  11 e3 ff eb                                      bl #0x371294
0037864c  04 00 a0 e1                                      mov r0, r4
00378650  dd ff ff ea                                      b #0x3785cc
00378654  2d 57 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00378658  3c c5 61 00 ac 40 00 00                          .byte 0x3c, 0xc5, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00
