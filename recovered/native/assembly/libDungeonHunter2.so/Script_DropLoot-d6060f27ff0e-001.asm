; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004557e8, declared_size=8, range_size=8, mode=arm
; class-group: Script_DropLoot
; alias: _ZNK15Script_DropLoot10IsBlockingEv
; demangled: Script_DropLoot::IsBlocking() const
; decoder-mode: arm
004557e8  00 00 a0 e3                                      mov r0, #0
004557ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045e374, declared_size=324, range_size=324, mode=arm
; class-group: Script_DropLoot
; alias: _ZN15Script_DropLoot7ExecuteEbi
; demangled: Script_DropLoot::Execute(bool, int)
; decoder-mode: arm
0045e374  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045e378  24 41 9f e5                                      ldr r4, [pc, #0x124]
0045e37c  24 91 9f e5                                      ldr sb, [pc, #0x124]
0045e380  24 11 9f e5                                      ldr r1, [pc, #0x124]
0045e384  04 40 8f e0                                      add r4, pc, r4
0045e388  09 30 94 e7                                      ldr r3, [r4, sb]
0045e38c  01 60 94 e7                                      ldr r6, [r4, r1]
0045e390  40 d0 4d e2                                      sub sp, sp, #0x40
0045e394  00 30 93 e5                                      ldr r3, [r3]
0045e398  02 a0 a0 e1                                      mov sl, r2
0045e39c  24 50 8d e2                                      add r5, sp, #0x24
0045e3a0  3c 30 8d e5                                      str r3, [sp, #0x3c]
0045e3a4  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0045e3a8  06 00 a0 e1                                      mov r0, r6
0045e3ac  35 65 fb eb                                      bl #0x337888
0045e3b0  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
0045e3b4  20 20 8d e2                                      add r2, sp, #0x20
0045e3b8  05 00 a0 e1                                      mov r0, r5
0045e3bc  01 10 8f e0                                      add r1, pc, r1
0045e3c0  ec 80 9f e5                                      ldr r8, [pc, #0xec]
0045e3c4  48 d7 fa eb                                      bl #0x3140ec
0045e3c8  05 10 a0 e1                                      mov r1, r5
0045e3cc  06 00 a0 e1                                      mov r0, r6
0045e3d0  ac 65 fb eb                                      bl #0x337a88
0045e3d4  05 00 a0 e1                                      mov r0, r5
0045e3d8  9d e7 fa eb                                      bl #0x318254
0045e3dc  08 30 94 e7                                      ldr r3, [r4, r8]
0045e3e0  14 60 8d e2                                      add r6, sp, #0x14
0045e3e4  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0045e3e8  38 10 93 e5                                      ldr r1, [r3, #0x38]
0045e3ec  00 50 a0 e3                                      mov r5, #0
0045e3f0  0a 30 a0 e1                                      mov r3, sl
0045e3f4  06 00 a0 e1                                      mov r0, r6
0045e3f8  00 50 8d e5                                      str r5, [sp]
0045e3fc  04 50 8d e5                                      str r5, [sp, #4]
0045e400  26 b2 fb eb                                      bl #0x34aca0
0045e404  05 10 a0 e1                                      mov r1, r5
0045e408  06 00 a0 e1                                      mov r0, r6
0045e40c  6b 86 fb eb                                      bl #0x33fdc0
0045e410  00 50 50 e2                                      subs r5, r0, #0
0045e414  19 00 00 1a                                      bne #0x45e480
0045e418  08 30 94 e7                                      ldr r3, [r4, r8]
0045e41c  08 60 8d e2                                      add r6, sp, #8
0045e420  14 20 97 e5                                      ldr r2, [r7, #0x14]
0045e424  38 10 93 e5                                      ldr r1, [r3, #0x38]
0045e428  00 70 a0 e3                                      mov r7, #0
0045e42c  0a 30 a0 e1                                      mov r3, sl
0045e430  06 00 a0 e1                                      mov r0, r6
0045e434  00 70 8d e5                                      str r7, [sp]
0045e438  04 70 8d e5                                      str r7, [sp, #4]
0045e43c  17 b2 fb eb                                      bl #0x34aca0
0045e440  07 10 a0 e1                                      mov r1, r7
0045e444  06 00 a0 e1                                      mov r0, r6
0045e448  5c 86 fb eb                                      bl #0x33fdc0
0045e44c  00 10 50 e2                                      subs r1, r0, #0
0045e450  0e 00 00 1a                                      bne #0x45e490
0045e454  00 00 55 e3                                      cmp r5, #0
0045e458  01 00 00 0a                                      beq #0x45e464
0045e45c  05 00 a0 e1                                      mov r0, r5
0045e460  9f 1d fd eb                                      bl #0x3a5ae4
0045e464  09 30 94 e7                                      ldr r3, [r4, sb]
0045e468  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0045e46c  00 30 93 e5                                      ldr r3, [r3]
0045e470  03 00 52 e1                                      cmp r2, r3
0045e474  09 00 00 1a                                      bne #0x45e4a0
0045e478  40 d0 8d e2                                      add sp, sp, #0x40
0045e47c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045e480  06 00 a0 e1                                      mov r0, r6
0045e484  b2 86 fb eb                                      bl #0x33ff54
0045e488  00 50 a0 e1                                      mov r5, r0
0045e48c  e1 ff ff ea                                      b #0x45e418
0045e490  06 00 a0 e1                                      mov r0, r6
0045e494  92 86 fb eb                                      bl #0x33fee4
0045e498  00 10 a0 e1                                      mov r1, r0
0045e49c  ec ff ff ea                                      b #0x45e454
0045e4a0  9a bf fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045e4a4  0c 67 53 00 ac 40 00 00 84 08 00 00 c4 ec 46 00  .byte 0x0c, 0x67, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0xec, 0x46, 0x00
0045e4b4  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
