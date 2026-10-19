; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00429eb8, declared_size=60, range_size=60, mode=arm
; class-group: MenuDebug
; alias: _ZN9MenuDebugD1Ev
; demangled: MenuDebug::~MenuDebug()
; decoder-mode: arm
00429eb8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00429ebc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00429ec0  10 40 2d e9                                      push {r4, lr}
00429ec4  03 30 8f e0                                      add r3, pc, r3
00429ec8  02 20 93 e7                                      ldr r2, [r3, r2]
00429ecc  00 40 a0 e1                                      mov r4, r0
00429ed0  08 20 82 e2                                      add r2, r2, #8
00429ed4  c4 20 80 e4                                      str r2, [r0], #0xc4
00429ed8  c7 c2 ff eb                                      bl #0x41a9fc
00429edc  04 00 a0 e1                                      mov r0, r4
00429ee0  a3 e2 ff eb                                      bl #0x422974
00429ee4  04 00 a0 e1                                      mov r0, r4
00429ee8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00429eec  cc ab 56 00 d8 3f 00 00                          .byte 0xcc, 0xab, 0x56, 0x00, 0xd8, 0x3f, 0x00, 0x00

; FUNCTION 0x00429ef4, declared_size=28, range_size=28, mode=arm
; class-group: MenuDebug
; alias: _ZN9MenuDebugD0Ev
; demangled: MenuDebug::~MenuDebug()
; decoder-mode: arm
00429ef4  10 40 2d e9                                      push {r4, lr}
00429ef8  00 40 a0 e1                                      mov r4, r0
00429efc  ed ff ff eb                                      bl #0x429eb8
00429f00  04 00 a0 e1                                      mov r0, r4
00429f04  4d 99 fb eb                                      bl #0x310440
00429f08  04 00 a0 e1                                      mov r0, r4
00429f0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00429f10, declared_size=60, range_size=60, mode=arm
; class-group: MenuDebug
; alias: _ZN9MenuDebugD2Ev
; demangled: MenuDebug::~MenuDebug()
; decoder-mode: arm
00429f10  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00429f14  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00429f18  10 40 2d e9                                      push {r4, lr}
00429f1c  03 30 8f e0                                      add r3, pc, r3
00429f20  02 20 93 e7                                      ldr r2, [r3, r2]
00429f24  00 40 a0 e1                                      mov r4, r0
00429f28  08 20 82 e2                                      add r2, r2, #8
00429f2c  c4 20 80 e4                                      str r2, [r0], #0xc4
00429f30  b1 c2 ff eb                                      bl #0x41a9fc
00429f34  04 00 a0 e1                                      mov r0, r4
00429f38  8d e2 ff eb                                      bl #0x422974
00429f3c  04 00 a0 e1                                      mov r0, r4
00429f40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00429f44  74 ab 56 00 d8 3f 00 00                          .byte 0x74, 0xab, 0x56, 0x00, 0xd8, 0x3f, 0x00, 0x00

; FUNCTION 0x0042a040, declared_size=76, range_size=76, mode=arm
; class-group: MenuDebug
; alias: _ZN9MenuDebug4InitEv
; demangled: MenuDebug::Init()
; decoder-mode: arm
0042a040  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a044  00 40 a0 e1                                      mov r4, r0
0042a048  8f 0a 00 eb                                      bl #0x42ca8c
0042a04c  04 10 a0 e1                                      mov r1, r4
0042a050  8f 13 00 eb                                      bl #0x42ee94
0042a054  04 50 94 e5                                      ldr r5, [r4, #4]
0042a058  00 00 55 e3                                      cmp r5, #0
0042a05c  08 00 00 0a                                      beq #0x42a084
0042a060  04 00 a0 e1                                      mov r0, r4
0042a064  f8 df ff eb                                      bl #0x42204c
0042a068  18 10 9f e5                                      ldr r1, [pc, #0x18]
0042a06c  00 30 a0 e1                                      mov r3, r0
0042a070  05 20 a0 e1                                      mov r2, r5
0042a074  c4 00 84 e2                                      add r0, r4, #0xc4
0042a078  01 10 8f e0                                      add r1, pc, r1
0042a07c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042a080  06 f7 ff ea                                      b #0x427ca0
0042a084  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042a088  98 ec 49 00                                      .byte 0x98, 0xec, 0x49, 0x00

; FUNCTION 0x0042a08c, declared_size=144, range_size=144, mode=arm
; class-group: MenuDebug
; alias: _ZN9MenuDebug7SetTextEPKc
; demangled: MenuDebug::SetText(char const*)
; decoder-mode: arm
0042a08c  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a090  04 30 90 e5                                      ldr r3, [r0, #4]
0042a094  00 50 a0 e1                                      mov r5, r0
0042a098  01 60 a0 e1                                      mov r6, r1
0042a09c  00 00 53 e3                                      cmp r3, #0
0042a0a0  1c 00 00 0a                                      beq #0x42a118
0042a0a4  c4 40 80 e2                                      add r4, r0, #0xc4
0042a0a8  04 00 a0 e1                                      mov r0, r4
0042a0ac  27 f7 ff eb                                      bl #0x427d50
0042a0b0  00 00 50 e3                                      cmp r0, #0
0042a0b4  17 00 00 0a                                      beq #0x42a118
0042a0b8  00 00 56 e3                                      cmp r6, #0
0042a0bc  0f 00 00 0a                                      beq #0x42a100
0042a0c0  05 00 a0 e1                                      mov r0, r5
0042a0c4  01 10 a0 e3                                      mov r1, #1
0042a0c8  bb e0 ff eb                                      bl #0x4223bc
0042a0cc  04 00 a0 e1                                      mov r0, r4
0042a0d0  04 50 95 e5                                      ldr r5, [r5, #4]
0042a0d4  1d f7 ff eb                                      bl #0x427d50
0042a0d8  00 30 a0 e3                                      mov r3, #0
0042a0dc  00 10 a0 e1                                      mov r1, r0
0042a0e0  06 20 a0 e1                                      mov r2, r6
0042a0e4  05 00 a0 e1                                      mov r0, r5
0042a0e8  7c fc 0d eb                                      bl #0x7a92e0
0042a0ec  04 00 a0 e1                                      mov r0, r4
0042a0f0  16 f7 ff eb                                      bl #0x427d50
0042a0f4  01 30 a0 e3                                      mov r3, #1
0042a0f8  9b 30 c0 e5                                      strb r3, [r0, #0x9b]
0042a0fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042a100  05 00 a0 e1                                      mov r0, r5
0042a104  06 10 a0 e1                                      mov r1, r6
0042a108  ab e0 ff eb                                      bl #0x4223bc
0042a10c  04 00 a0 e1                                      mov r0, r4
0042a110  0e f7 ff eb                                      bl #0x427d50
0042a114  9b 60 c0 e5                                      strb r6, [r0, #0x9b]
0042a118  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042a610, declared_size=80, range_size=80, mode=arm
; class-group: MenuDebug
; alias: _ZN9MenuDebugC1Ev
; demangled: MenuDebug::MenuDebug()
; decoder-mode: arm
0042a610  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0042a614  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a618  01 10 8f e0                                      add r1, pc, r1
0042a61c  34 40 9f e5                                      ldr r4, [pc, #0x34]
0042a620  00 50 a0 e1                                      mov r5, r0
0042a624  f5 f2 ff eb                                      bl #0x427200
0042a628  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0042a62c  04 40 8f e0                                      add r4, pc, r4
0042a630  05 00 a0 e1                                      mov r0, r5
0042a634  03 30 94 e7                                      ldr r3, [r4, r3]
0042a638  08 30 83 e2                                      add r3, r3, #8
0042a63c  c4 30 80 e4                                      str r3, [r0], #0xc4
0042a640  29 c2 ff eb                                      bl #0x41aeec
0042a644  05 00 a0 e1                                      mov r0, r5
0042a648  7c fe ff eb                                      bl #0x42a040
0042a64c  05 00 a0 e1                                      mov r0, r5
0042a650  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042a654  a8 f3 49 00 64 a4 56 00 d8 3f 00 00              .byte 0xa8, 0xf3, 0x49, 0x00, 0x64, 0xa4, 0x56, 0x00, 0xd8, 0x3f, 0x00, 0x00

; FUNCTION 0x0042a660, declared_size=136, range_size=136, mode=arm
; class-group: MenuDebug
; alias: _ZN9MenuDebug11GetInstanceEv
; demangled: MenuDebug::GetInstance()
; decoder-mode: arm
0042a660  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a664  68 50 9f e5                                      ldr r5, [pc, #0x68]
0042a668  68 40 9f e5                                      ldr r4, [pc, #0x68]
0042a66c  05 50 8f e0                                      add r5, pc, r5
0042a670  f8 31 95 e5                                      ldr r3, [r5, #0x1f8]
0042a674  04 40 8f e0                                      add r4, pc, r4
0042a678  01 00 13 e3                                      tst r3, #1
0042a67c  03 00 00 0a                                      beq #0x42a690
0042a680  54 00 9f e5                                      ldr r0, [pc, #0x54]
0042a684  00 00 8f e0                                      add r0, pc, r0
0042a688  7f 0f 80 e2                                      add r0, r0, #0x1fc
0042a68c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042a690  7e 6f 85 e2                                      add r6, r5, #0x1f8
0042a694  06 00 a0 e1                                      mov r0, r6
0042a698  33 90 fb eb                                      bl #0x30e76c
0042a69c  00 00 50 e3                                      cmp r0, #0
0042a6a0  f6 ff ff 0a                                      beq #0x42a680
0042a6a4  7f 5f 85 e2                                      add r5, r5, #0x1fc
0042a6a8  05 00 a0 e1                                      mov r0, r5
0042a6ac  d7 ff ff eb                                      bl #0x42a610
0042a6b0  06 00 a0 e1                                      mov r0, r6
0042a6b4  e0 90 fb eb                                      bl #0x30ea3c
0042a6b8  20 30 9f e5                                      ldr r3, [pc, #0x20]
0042a6bc  05 00 a0 e1                                      mov r0, r5
0042a6c0  03 10 94 e7                                      ldr r1, [r4, r3]
0042a6c4  18 30 9f e5                                      ldr r3, [pc, #0x18]
0042a6c8  03 20 94 e7                                      ldr r2, [r4, r3]
0042a6cc  0c 8f fb eb                                      bl #0x30e304
0042a6d0  ea ff ff ea                                      b #0x42a680
; mapping-symbol data/literal pool
0042a6d4  04 a4 57 00 1c a4 56 00 ec a3 57 00 00 0e 00 00  .byte 0x04, 0xa4, 0x57, 0x00, 0x1c, 0xa4, 0x56, 0x00, 0xec, 0xa3, 0x57, 0x00, 0x00, 0x0e, 0x00, 0x00
0042a6e4  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0042a6e8, declared_size=80, range_size=80, mode=arm
; class-group: MenuDebug
; alias: _ZN9MenuDebugC2Ev
; demangled: MenuDebug::MenuDebug()
; decoder-mode: arm
0042a6e8  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0042a6ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a6f0  01 10 8f e0                                      add r1, pc, r1
0042a6f4  34 40 9f e5                                      ldr r4, [pc, #0x34]
0042a6f8  00 50 a0 e1                                      mov r5, r0
0042a6fc  bf f2 ff eb                                      bl #0x427200
0042a700  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0042a704  04 40 8f e0                                      add r4, pc, r4
0042a708  05 00 a0 e1                                      mov r0, r5
0042a70c  03 30 94 e7                                      ldr r3, [r4, r3]
0042a710  08 30 83 e2                                      add r3, r3, #8
0042a714  c4 30 80 e4                                      str r3, [r0], #0xc4
0042a718  f3 c1 ff eb                                      bl #0x41aeec
0042a71c  05 00 a0 e1                                      mov r0, r5
0042a720  46 fe ff eb                                      bl #0x42a040
0042a724  05 00 a0 e1                                      mov r0, r5
0042a728  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042a72c  d0 f2 49 00 8c a3 56 00 d8 3f 00 00              .byte 0xd0, 0xf2, 0x49, 0x00, 0x8c, 0xa3, 0x56, 0x00, 0xd8, 0x3f, 0x00, 0x00
