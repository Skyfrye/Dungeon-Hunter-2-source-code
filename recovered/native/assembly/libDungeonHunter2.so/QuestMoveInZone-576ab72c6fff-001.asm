; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00396120, declared_size=304, range_size=304, mode=arm
; class-group: QuestMoveInZone
; alias: _ZN15QuestMoveInZone17OnCollisionBeginsEP10GameObject
; demangled: QuestMoveInZone::OnCollisionBegins(GameObject*)
; decoder-mode: arm
00396120  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00396124  fc 40 9f e5                                      ldr r4, [pc, #0xfc]
00396128  00 50 51 e2                                      subs r5, r1, #0
0039612c  28 d0 4d e2                                      sub sp, sp, #0x28
00396130  00 60 a0 e1                                      mov r6, r0
00396134  04 40 8f e0                                      add r4, pc, r4
00396138  25 00 00 0a                                      beq #0x3961d4
0039613c  00 30 95 e5                                      ldr r3, [r5]
00396140  05 00 a0 e1                                      mov r0, r5
00396144  0f e0 a0 e1                                      mov lr, pc
00396148  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0039614c  00 00 50 e3                                      cmp r0, #0
00396150  01 00 00 1a                                      bne #0x39615c
00396154  28 d0 8d e2                                      add sp, sp, #0x28
00396158  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0039615c  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00396160  03 80 94 e7                                      ldr r8, [r4, r3]
00396164  08 00 a0 e1                                      mov r0, r8
00396168  09 25 fe eb                                      bl #0x31f594
0039616c  00 70 50 e2                                      subs r7, r0, #0
00396170  f7 ff ff 0a                                      beq #0x396154
00396174  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
00396178  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0039617c  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
00396180  01 10 8f e0                                      add r1, pc, r1
00396184  02 20 8f e0                                      add r2, pc, r2
00396188  64 80 96 e5                                      ldr r8, [r6, #0x64]
0039618c  92 ba 04 eb                                      bl #0x4c4bdc
00396190  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00396194  00 30 a0 e3                                      mov r3, #0
00396198  10 00 8d e5                                      str r0, [sp, #0x10]
0039619c  02 20 94 e7                                      ldr r2, [r4, r2]
003961a0  00 c0 e0 e3                                      mvn ip, #0
003961a4  07 00 a0 e1                                      mov r0, r7
003961a8  08 20 82 e2                                      add r2, r2, #8
003961ac  0c 10 8d e2                                      add r1, sp, #0xc
003961b0  14 50 8d e5                                      str r5, [sp, #0x14]
003961b4  18 80 8d e5                                      str r8, [sp, #0x18]
003961b8  1d 30 cd e5                                      strb r3, [sp, #0x1d]
003961bc  20 c0 8d e5                                      str ip, [sp, #0x20]
003961c0  0c 20 8d e5                                      str r2, [sp, #0xc]
003961c4  24 60 8d e5                                      str r6, [sp, #0x24]
003961c8  1c 30 cd e5                                      strb r3, [sp, #0x1c]
003961cc  af 8b fe eb                                      bl #0x339090
003961d0  df ff ff ea                                      b #0x396154
003961d4  60 30 9f e5                                      ldr r3, [pc, #0x60]
003961d8  03 30 94 e7                                      ldr r3, [r4, r3]
003961dc  00 30 93 e5                                      ldr r3, [r3]
003961e0  02 00 53 e3                                      cmp r3, #2
003961e4  00 50 85 05                                      streq r5, [r5]
003961e8  d3 ff ff 0a                                      beq #0x39613c
003961ec  01 00 53 e3                                      cmp r3, #1
003961f0  d1 ff ff 1a                                      bne #0x39613c
003961f4  44 00 9f e5                                      ldr r0, [pc, #0x44]
003961f8  44 10 9f e5                                      ldr r1, [pc, #0x44]
003961fc  44 20 9f e5                                      ldr r2, [pc, #0x44]
00396200  00 00 94 e7                                      ldr r0, [r4, r0]
00396204  40 30 9f e5                                      ldr r3, [pc, #0x40]
00396208  26 c0 a0 e3                                      mov ip, #0x26
0039620c  01 10 8f e0                                      add r1, pc, r1
00396210  02 20 8f e0                                      add r2, pc, r2
00396214  03 30 8f e0                                      add r3, pc, r3
00396218  a8 00 80 e2                                      add r0, r0, #0xa8
0039621c  00 c0 8d e5                                      str ip, [sp]
00396220  77 df fd eb                                      bl #0x30e004
00396224  c4 ff ff ea                                      b #0x39613c
; mapping-symbol data/literal pool
00396228  5c e9 5f 00 f4 37 00 00 e8 c7 52 00 fc c7 52 00  .byte 0x5c, 0xe9, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe8, 0xc7, 0x52, 0x00, 0xfc, 0xc7, 0x52, 0x00
00396238  c0 2f 00 00 c0 39 00 00 c0 19 00 00 cc 81 52 00  .byte 0xc0, 0x2f, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xcc, 0x81, 0x52, 0x00
00396248  88 c1 52 00 04 c7 52 00                          .byte 0x88, 0xc1, 0x52, 0x00, 0x04, 0xc7, 0x52, 0x00

; FUNCTION 0x00396284, declared_size=8, range_size=8, mode=arm
; class-group: QuestMoveInZone
; alias: _ZThn36_N15QuestMoveInZoneD1Ev
; demangled: non-virtual thunk to QuestMoveInZone::~QuestMoveInZone()
; decoder-mode: arm
00396284  24 00 40 e2                                      sub r0, r0, #0x24
00396288  ff ff ff ea                                      b #0x39628c

; FUNCTION 0x0039628c, declared_size=64, range_size=64, mode=arm
; class-group: QuestMoveInZone
; alias: _ZN15QuestMoveInZoneD1Ev
; demangled: QuestMoveInZone::~QuestMoveInZone()
; decoder-mode: arm
0039628c  30 20 9f e5                                      ldr r2, [pc, #0x30]
00396290  30 30 9f e5                                      ldr r3, [pc, #0x30]
00396294  10 40 2d e9                                      push {r4, lr}
00396298  02 20 8f e0                                      add r2, pc, r2
0039629c  03 30 92 e7                                      ldr r3, [r2, r3]
003962a0  00 40 a0 e1                                      mov r4, r0
003962a4  f4 20 83 e2                                      add r2, r3, #0xf4
003962a8  08 10 83 e2                                      add r1, r3, #8
003962ac  e8 30 83 e2                                      add r3, r3, #0xe8
003962b0  0a 00 80 e8                                      stm r0, {r1, r3}
003962b4  24 20 80 e5                                      str r2, [r0, #0x24]
003962b8  41 06 00 eb                                      bl #0x397bc4
003962bc  04 00 a0 e1                                      mov r0, r4
003962c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003962c4  f8 e7 5f 00 74 2e 00 00                          .byte 0xf8, 0xe7, 0x5f, 0x00, 0x74, 0x2e, 0x00, 0x00

; FUNCTION 0x003962cc, declared_size=8, range_size=8, mode=arm
; class-group: QuestMoveInZone
; alias: _ZThn36_N15QuestMoveInZoneD0Ev
; demangled: non-virtual thunk to QuestMoveInZone::~QuestMoveInZone()
; decoder-mode: arm
003962cc  24 00 40 e2                                      sub r0, r0, #0x24
003962d0  ff ff ff ea                                      b #0x3962d4

; FUNCTION 0x003962d4, declared_size=28, range_size=28, mode=arm
; class-group: QuestMoveInZone
; alias: _ZN15QuestMoveInZoneD0Ev
; demangled: QuestMoveInZone::~QuestMoveInZone()
; decoder-mode: arm
003962d4  10 40 2d e9                                      push {r4, lr}
003962d8  00 40 a0 e1                                      mov r4, r0
003962dc  ea ff ff eb                                      bl #0x39628c
003962e0  04 00 a0 e1                                      mov r0, r4
003962e4  55 e8 fd eb                                      bl #0x310440
003962e8  04 00 a0 e1                                      mov r0, r4
003962ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003962f0, declared_size=64, range_size=64, mode=arm
; class-group: QuestMoveInZone
; alias: _ZN15QuestMoveInZoneD2Ev
; demangled: QuestMoveInZone::~QuestMoveInZone()
; decoder-mode: arm
003962f0  30 20 9f e5                                      ldr r2, [pc, #0x30]
003962f4  30 30 9f e5                                      ldr r3, [pc, #0x30]
003962f8  10 40 2d e9                                      push {r4, lr}
003962fc  02 20 8f e0                                      add r2, pc, r2
00396300  03 30 92 e7                                      ldr r3, [r2, r3]
00396304  00 40 a0 e1                                      mov r4, r0
00396308  f4 20 83 e2                                      add r2, r3, #0xf4
0039630c  08 10 83 e2                                      add r1, r3, #8
00396310  e8 30 83 e2                                      add r3, r3, #0xe8
00396314  0a 00 80 e8                                      stm r0, {r1, r3}
00396318  24 20 80 e5                                      str r2, [r0, #0x24]
0039631c  28 06 00 eb                                      bl #0x397bc4
00396320  04 00 a0 e1                                      mov r0, r4
00396324  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00396328  94 e7 5f 00 74 2e 00 00                          .byte 0x94, 0xe7, 0x5f, 0x00, 0x74, 0x2e, 0x00, 0x00

; FUNCTION 0x00396330, declared_size=72, range_size=72, mode=arm
; class-group: QuestMoveInZone
; alias: _ZN15QuestMoveInZoneC1EN10ObjectBase6GO_IDSE
; demangled: QuestMoveInZone::QuestMoveInZone(ObjectBase::GO_IDS)
; decoder-mode: arm
00396330  70 40 2d e9                                      push {r4, r5, r6, lr}
00396334  01 20 a0 e3                                      mov r2, #1
00396338  00 30 a0 e3                                      mov r3, #0
0039633c  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
00396340  00 40 a0 e1                                      mov r4, r0
00396344  55 06 00 eb                                      bl #0x397ca0
00396348  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039634c  05 50 8f e0                                      add r5, pc, r5
00396350  04 00 a0 e1                                      mov r0, r4
00396354  03 30 95 e7                                      ldr r3, [r5, r3]
00396358  f4 20 83 e2                                      add r2, r3, #0xf4
0039635c  08 10 83 e2                                      add r1, r3, #8
00396360  e8 30 83 e2                                      add r3, r3, #0xe8
00396364  0a 00 84 e8                                      stm r4, {r1, r3}
00396368  24 20 84 e5                                      str r2, [r4, #0x24]
0039636c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00396370  44 e7 5f 00 74 2e 00 00                          .byte 0x44, 0xe7, 0x5f, 0x00, 0x74, 0x2e, 0x00, 0x00

; FUNCTION 0x00396378, declared_size=72, range_size=72, mode=arm
; class-group: QuestMoveInZone
; alias: _ZN15QuestMoveInZoneC2EN10ObjectBase6GO_IDSE
; demangled: QuestMoveInZone::QuestMoveInZone(ObjectBase::GO_IDS)
; decoder-mode: arm
00396378  70 40 2d e9                                      push {r4, r5, r6, lr}
0039637c  01 20 a0 e3                                      mov r2, #1
00396380  00 30 a0 e3                                      mov r3, #0
00396384  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
00396388  00 40 a0 e1                                      mov r4, r0
0039638c  43 06 00 eb                                      bl #0x397ca0
00396390  24 30 9f e5                                      ldr r3, [pc, #0x24]
00396394  05 50 8f e0                                      add r5, pc, r5
00396398  04 00 a0 e1                                      mov r0, r4
0039639c  03 30 95 e7                                      ldr r3, [r5, r3]
003963a0  f4 20 83 e2                                      add r2, r3, #0xf4
003963a4  08 10 83 e2                                      add r1, r3, #8
003963a8  e8 30 83 e2                                      add r3, r3, #0xe8
003963ac  0a 00 84 e8                                      stm r4, {r1, r3}
003963b0  24 20 84 e5                                      str r2, [r4, #0x24]
003963b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003963b8  fc e6 5f 00 74 2e 00 00                          .byte 0xfc, 0xe6, 0x5f, 0x00, 0x74, 0x2e, 0x00, 0x00
