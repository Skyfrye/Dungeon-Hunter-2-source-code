; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455c08, declared_size=56, range_size=56, mode=arm
; class-group: Script_ExecScript
; alias: _ZNK17Script_ExecScript10IsBlockingEv
; demangled: Script_ExecScript::IsBlocking() const
; decoder-mode: arm
00455c08  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00455c0c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00455c10  18 20 d2 e5                                      ldrb r2, [r2, #0x18]
00455c14  03 30 8f e0                                      add r3, pc, r3
00455c18  00 00 52 e3                                      cmp r2, #0
00455c1c  01 00 00 1a                                      bne #0x455c28
00455c20  02 00 a0 e1                                      mov r0, r2
00455c24  1e ff 2f e1                                      bx lr
00455c28  0c 20 9f e5                                      ldr r2, [pc, #0xc]
00455c2c  10 10 90 e5                                      ldr r1, [r0, #0x10]
00455c30  02 00 93 e7                                      ldr r0, [r3, r2]
00455c34  ec ff ff ea                                      b #0x455bec
; mapping-symbol data/literal pool
00455c38  7c ee 53 00 20 1a 00 00                          .byte 0x7c, 0xee, 0x53, 0x00, 0x20, 0x1a, 0x00, 0x00

; FUNCTION 0x004607f4, declared_size=348, range_size=348, mode=arm
; class-group: Script_ExecScript
; alias: _ZN17Script_ExecScript7ExecuteEbi
; demangled: Script_ExecScript::Execute(bool, int)
; decoder-mode: arm
004607f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004607f8  34 41 9f e5                                      ldr r4, [pc, #0x134]
004607fc  34 91 9f e5                                      ldr sb, [pc, #0x134]
00460800  0c 60 90 e5                                      ldr r6, [r0, #0xc]
00460804  04 40 8f e0                                      add r4, pc, r4
00460808  09 30 94 e7                                      ldr r3, [r4, sb]
0046080c  24 d0 4d e2                                      sub sp, sp, #0x24
00460810  00 80 a0 e1                                      mov r8, r0
00460814  00 30 93 e5                                      ldr r3, [r3]
00460818  02 b0 a0 e1                                      mov fp, r2
0046081c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00460820  10 10 96 e5                                      ldr r1, [r6, #0x10]
00460824  00 00 51 e3                                      cmp r1, #0
00460828  0c 50 96 05                                      ldreq r5, [r6, #0xc]
0046082c  21 00 00 1a                                      bne #0x4608b8
00460830  04 31 9f e5                                      ldr r3, [pc, #0x104]
00460834  04 70 8d e2                                      add r7, sp, #4
00460838  03 a0 94 e7                                      ldr sl, [r4, r3]
0046083c  0a 00 a0 e1                                      mov r0, sl
00460840  10 5c fb eb                                      bl #0x337888
00460844  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
00460848  0d 20 a0 e1                                      mov r2, sp
0046084c  07 00 a0 e1                                      mov r0, r7
00460850  01 10 8f e0                                      add r1, pc, r1
00460854  24 ce fa eb                                      bl #0x3140ec
00460858  07 10 a0 e1                                      mov r1, r7
0046085c  0a 00 a0 e1                                      mov r0, sl
00460860  88 5c fb eb                                      bl #0x337a88
00460864  07 00 a0 e1                                      mov r0, r7
00460868  79 de fa eb                                      bl #0x318254
0046086c  08 30 d6 e5                                      ldrb r3, [r6, #8]
00460870  00 00 53 e3                                      cmp r3, #0
00460874  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00460878  03 20 94 07                                      ldreq r2, [r4, r3]
0046087c  03 00 94 e7                                      ldr r0, [r4, r3]
00460880  01 30 a0 e3                                      mov r3, #1
00460884  08 20 92 05                                      ldreq r2, [r2, #8]
00460888  02 50 85 00                                      addeq r5, r5, r2
0046088c  10 50 88 e5                                      str r5, [r8, #0x10]
00460890  0b 20 a0 e1                                      mov r2, fp
00460894  05 10 a0 e1                                      mov r1, r5
00460898  48 ff ff eb                                      bl #0x4605c0
0046089c  09 30 94 e7                                      ldr r3, [r4, sb]
004608a0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004608a4  00 30 93 e5                                      ldr r3, [r3]
004608a8  03 00 52 e1                                      cmp r2, r3
004608ac  1f 00 00 1a                                      bne #0x460930
004608b0  24 d0 8d e2                                      add sp, sp, #0x24
004608b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004608b8  88 20 9f e5                                      ldr r2, [pc, #0x88]
004608bc  ab e6 0e e3                                      movw lr, #0xe6ab
004608c0  17 3b 0d e3                                      movw r3, #0xdb17
004608c4  02 20 94 e7                                      ldr r2, [r4, r2]
004608c8  52 3b 42 e3                                      movt r3, #0x2b52
004608cc  6b c2 0f e3                                      movw ip, #0xf26b
004608d0  00 00 92 e5                                      ldr r0, [r2]
004608d4  da c0 40 e3                                      movt ip, #0xda
004608d8  14 50 96 e5                                      ldr r5, [r6, #0x14]
004608dc  9e 00 00 e0                                      mul r0, lr, r0
004608e0  2b 0a 80 e2                                      add r0, r0, #0x2b000
004608e4  ff 0f 80 e2                                      add r0, r0, #0x3fc
004608e8  01 00 80 e2                                      add r0, r0, #1
004608ec  93 e0 83 e0                                      umull lr, r3, r3, r0
004608f0  00 e0 63 e0                                      rsb lr, r3, r0
004608f4  ae 30 83 e0                                      add r3, r3, lr, lsr #1
004608f8  a3 3b a0 e1                                      lsr r3, r3, #0x17
004608fc  9c 03 63 e0                                      mls r3, ip, r3, r0
00460900  00 30 82 e5                                      str r3, [r2]
00460904  03 00 a0 e1                                      mov r0, r3
00460908  87 b8 fa eb                                      bl #0x30eb2c
0046090c  38 30 9f e5                                      ldr r3, [pc, #0x38]
00460910  00 00 51 e3                                      cmp r1, #0
00460914  00 10 61 b2                                      rsblt r1, r1, #0
00460918  03 30 94 e7                                      ldr r3, [r4, r3]
0046091c  00 20 93 e5                                      ldr r2, [r3]
00460920  01 20 82 e2                                      add r2, r2, #1
00460924  00 20 83 e5                                      str r2, [r3]
00460928  01 51 95 e7                                      ldr r5, [r5, r1, lsl #2]
0046092c  bf ff ff ea                                      b #0x460830
00460930  76 b6 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00460934  8c 42 53 00 ac 40 00 00 84 08 00 00 30 c8 46 00  .byte 0x8c, 0x42, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x30, 0xc8, 0x46, 0x00
00460944  20 1a 00 00 94 0c 00 00 88 10 00 00              .byte 0x20, 0x1a, 0x00, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00
