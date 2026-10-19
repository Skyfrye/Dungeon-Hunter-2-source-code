; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00478640, declared_size=8, range_size=8, mode=arm
; class-group: Condition_IsPlayerAtLevel
; alias: _ZN25Condition_IsPlayerAtLevel4EvalEv
; demangled: Condition_IsPlayerAtLevel::Eval()
; decoder-mode: arm
00478640  01 00 a0 e3                                      mov r0, #1
00478644  1e ff 2f e1                                      bx lr

; FUNCTION 0x00478810, declared_size=52, range_size=52, mode=arm
; class-group: Condition_IsPlayerAtLevel
; alias: _ZN25Condition_IsPlayerAtLevelD1Ev
; demangled: Condition_IsPlayerAtLevel::~Condition_IsPlayerAtLevel()
; decoder-mode: arm
00478810  24 30 9f e5                                      ldr r3, [pc, #0x24]
00478814  24 20 9f e5                                      ldr r2, [pc, #0x24]
00478818  10 40 2d e9                                      push {r4, lr}
0047881c  03 30 8f e0                                      add r3, pc, r3
00478820  02 20 93 e7                                      ldr r2, [r3, r2]
00478824  00 40 a0 e1                                      mov r4, r0
00478828  08 20 82 e2                                      add r2, r2, #8
0047882c  00 20 80 e5                                      str r2, [r0]
00478830  9a ff ff eb                                      bl #0x4786a0
00478834  04 00 a0 e1                                      mov r0, r4
00478838  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047883c  74 c2 51 00 dc 39 00 00                          .byte 0x74, 0xc2, 0x51, 0x00, 0xdc, 0x39, 0x00, 0x00

; FUNCTION 0x00478f94, declared_size=28, range_size=28, mode=arm
; class-group: Condition_IsPlayerAtLevel
; alias: _ZN25Condition_IsPlayerAtLevel37DBG_TraceDetailedConditionInformationEP7__sFILE
; demangled: Condition_IsPlayerAtLevel::DBG_TraceDetailedConditionInformation(__sFILE*)
; decoder-mode: arm
00478f94  10 00 9f e5                                      ldr r0, [pc, #0x10]
00478f98  01 30 a0 e1                                      mov r3, r1
00478f9c  1d 20 a0 e3                                      mov r2, #0x1d
00478fa0  00 00 8f e0                                      add r0, pc, r0
00478fa4  01 10 a0 e3                                      mov r1, #1
00478fa8  7a 55 fa ea                                      b #0x30e598
; mapping-symbol data/literal pool
00478fac  18 4b 45 00                                      .byte 0x18, 0x4b, 0x45, 0x00

; FUNCTION 0x0047926c, declared_size=60, range_size=60, mode=arm
; class-group: Condition_IsPlayerAtLevel
; alias: _ZN25Condition_IsPlayerAtLevelD0Ev
; demangled: Condition_IsPlayerAtLevel::~Condition_IsPlayerAtLevel()
; decoder-mode: arm
0047926c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00479270  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00479274  10 40 2d e9                                      push {r4, lr}
00479278  03 30 8f e0                                      add r3, pc, r3
0047927c  02 20 93 e7                                      ldr r2, [r3, r2]
00479280  00 40 a0 e1                                      mov r4, r0
00479284  08 20 82 e2                                      add r2, r2, #8
00479288  00 20 80 e5                                      str r2, [r0]
0047928c  03 fd ff eb                                      bl #0x4786a0
00479290  04 00 a0 e1                                      mov r0, r4
00479294  69 5c fa eb                                      bl #0x310440
00479298  04 00 a0 e1                                      mov r0, r4
0047929c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004792a0  18 b8 51 00 dc 39 00 00                          .byte 0x18, 0xb8, 0x51, 0x00, 0xdc, 0x39, 0x00, 0x00
