; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00482880, declared_size=20, range_size=20, mode=arm
; class-group: Reward_Gold
; alias: _ZN11Reward_Gold7CompileEv
; demangled: Reward_Gold::Compile()
; decoder-mode: arm
00482880  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00482884  01 20 a0 e3                                      mov r2, #1
00482888  08 20 c0 e5                                      strb r2, [r0, #8]
0048288c  14 30 80 e5                                      str r3, [r0, #0x14]
00482890  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482ad8, declared_size=52, range_size=52, mode=arm
; class-group: Reward_Gold
; alias: _ZN11Reward_GoldD1Ev
; demangled: Reward_Gold::~Reward_Gold()
; decoder-mode: arm
00482ad8  24 30 9f e5                                      ldr r3, [pc, #0x24]
00482adc  24 20 9f e5                                      ldr r2, [pc, #0x24]
00482ae0  10 40 2d e9                                      push {r4, lr}
00482ae4  03 30 8f e0                                      add r3, pc, r3
00482ae8  02 20 93 e7                                      ldr r2, [r3, r2]
00482aec  00 40 a0 e1                                      mov r4, r0
00482af0  08 20 82 e2                                      add r2, r2, #8
00482af4  00 20 80 e5                                      str r2, [r0]
00482af8  7a ff ff eb                                      bl #0x4828e8
00482afc  04 00 a0 e1                                      mov r0, r4
00482b00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00482b04  ac 1f 51 00 30 20 00 00                          .byte 0xac, 0x1f, 0x51, 0x00, 0x30, 0x20, 0x00, 0x00

; FUNCTION 0x004831ec, declared_size=140, range_size=140, mode=arm
; class-group: Reward_Gold
; alias: _ZN11Reward_Gold34DBG_TraceDetailedRewardInformationEP7__sFILE
; demangled: Reward_Gold::DBG_TraceDetailedRewardInformation(__sFILE*)
; decoder-mode: arm
004831ec  70 40 2d e9                                      push {r4, r5, r6, lr}
004831f0  0c 60 90 e5                                      ldr r6, [r0, #0xc]
004831f4  64 00 9f e5                                      ldr r0, [pc, #0x64]
004831f8  01 50 a0 e1                                      mov r5, r1
004831fc  01 30 a0 e1                                      mov r3, r1
00483200  19 20 a0 e3                                      mov r2, #0x19
00483204  01 10 a0 e3                                      mov r1, #1
00483208  00 00 8f e0                                      add r0, pc, r0
0048320c  50 40 9f e5                                      ldr r4, [pc, #0x50]
00483210  e0 2c fa eb                                      bl #0x30e598
00483214  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00483218  04 40 8f e0                                      add r4, pc, r4
0048321c  48 10 9f e5                                      ldr r1, [pc, #0x48]
00483220  03 30 94 e7                                      ldr r3, [r4, r3]
00483224  04 20 96 e5                                      ldr r2, [r6, #4]
00483228  01 10 8f e0                                      add r1, pc, r1
0048322c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00483230  34 06 01 eb                                      bl #0x4c4b08
00483234  34 10 9f e5                                      ldr r1, [pc, #0x34]
00483238  00 20 a0 e1                                      mov r2, r0
0048323c  05 00 a0 e1                                      mov r0, r5
00483240  01 10 8f e0                                      add r1, pc, r1
00483244  6e 2b fa eb                                      bl #0x30e004
00483248  24 10 9f e5                                      ldr r1, [pc, #0x24]
0048324c  08 20 96 e5                                      ldr r2, [r6, #8]
00483250  05 00 a0 e1                                      mov r0, r5
00483254  01 10 8f e0                                      add r1, pc, r1
00483258  70 40 bd e8                                      pop {r4, r5, r6, lr}
0048325c  68 2b fa ea                                      b #0x30e004
; mapping-symbol data/literal pool
00483260  a0 b2 44 00 78 18 51 00 f4 37 00 00 b0 b1 44 00  .byte 0xa0, 0xb2, 0x44, 0x00, 0x78, 0x18, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb0, 0xb1, 0x44, 0x00
00483270  48 ab 44 00 74 b2 44 00                          .byte 0x48, 0xab, 0x44, 0x00, 0x74, 0xb2, 0x44, 0x00

; FUNCTION 0x00483480, declared_size=68, range_size=68, mode=arm
; class-group: Reward_Gold
; alias: _ZN11Reward_Gold4GiveEv
; demangled: Reward_Gold::Give()
; decoder-mode: arm
00483480  10 40 2d e9                                      push {r4, lr}
00483484  00 40 a0 e1                                      mov r4, r0
00483488  08 00 d0 e5                                      ldrb r0, [r0, #8]
0048348c  00 00 50 e3                                      cmp r0, #0
00483490  0a 00 00 0a                                      beq #0x4834c0
00483494  14 30 94 e5                                      ldr r3, [r4, #0x14]
00483498  10 00 94 e5                                      ldr r0, [r4, #0x10]
0048349c  08 10 93 e5                                      ldr r1, [r3, #8]
004834a0  df 0f 80 e2                                      add r0, r0, #0x37c
004834a4  2e eb fd eb                                      bl #0x3fe164
004834a8  14 30 94 e5                                      ldr r3, [r4, #0x14]
004834ac  10 20 94 e5                                      ldr r2, [r4, #0x10]
004834b0  01 00 a0 e3                                      mov r0, #1
004834b4  08 10 93 e5                                      ldr r1, [r3, #8]
004834b8  15 3c a0 e3                                      mov r3, #0x1500
004834bc  03 10 82 e7                                      str r1, [r2, r3]
004834c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004837d0, declared_size=60, range_size=60, mode=arm
; class-group: Reward_Gold
; alias: _ZN11Reward_GoldD0Ev
; demangled: Reward_Gold::~Reward_Gold()
; decoder-mode: arm
004837d0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004837d4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004837d8  10 40 2d e9                                      push {r4, lr}
004837dc  03 30 8f e0                                      add r3, pc, r3
004837e0  02 20 93 e7                                      ldr r2, [r3, r2]
004837e4  00 40 a0 e1                                      mov r4, r0
004837e8  08 20 82 e2                                      add r2, r2, #8
004837ec  00 20 80 e5                                      str r2, [r0]
004837f0  3c fc ff eb                                      bl #0x4828e8
004837f4  04 00 a0 e1                                      mov r0, r4
004837f8  10 33 fa eb                                      bl #0x310440
004837fc  04 00 a0 e1                                      mov r0, r4
00483800  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00483804  b4 12 51 00 30 20 00 00                          .byte 0xb4, 0x12, 0x51, 0x00, 0x30, 0x20, 0x00, 0x00
