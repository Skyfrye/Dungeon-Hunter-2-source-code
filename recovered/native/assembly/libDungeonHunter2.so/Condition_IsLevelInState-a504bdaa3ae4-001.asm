; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00478638, declared_size=8, range_size=8, mode=arm
; class-group: Condition_IsLevelInState
; alias: _ZN24Condition_IsLevelInState4EvalEv
; demangled: Condition_IsLevelInState::Eval()
; decoder-mode: arm
00478638  01 00 a0 e3                                      mov r0, #1
0047863c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00478844, declared_size=52, range_size=52, mode=arm
; class-group: Condition_IsLevelInState
; alias: _ZN24Condition_IsLevelInStateD1Ev
; demangled: Condition_IsLevelInState::~Condition_IsLevelInState()
; decoder-mode: arm
00478844  24 30 9f e5                                      ldr r3, [pc, #0x24]
00478848  24 20 9f e5                                      ldr r2, [pc, #0x24]
0047884c  10 40 2d e9                                      push {r4, lr}
00478850  03 30 8f e0                                      add r3, pc, r3
00478854  02 20 93 e7                                      ldr r2, [r3, r2]
00478858  00 40 a0 e1                                      mov r4, r0
0047885c  08 20 82 e2                                      add r2, r2, #8
00478860  00 20 80 e5                                      str r2, [r0]
00478864  8d ff ff eb                                      bl #0x4786a0
00478868  04 00 a0 e1                                      mov r0, r4
0047886c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00478870  40 c2 51 00 1c 36 00 00                          .byte 0x40, 0xc2, 0x51, 0x00, 0x1c, 0x36, 0x00, 0x00

; FUNCTION 0x00478fb0, declared_size=28, range_size=28, mode=arm
; class-group: Condition_IsLevelInState
; alias: _ZN24Condition_IsLevelInState37DBG_TraceDetailedConditionInformationEP7__sFILE
; demangled: Condition_IsLevelInState::DBG_TraceDetailedConditionInformation(__sFILE*)
; decoder-mode: arm
00478fb0  10 00 9f e5                                      ldr r0, [pc, #0x10]
00478fb4  01 30 a0 e1                                      mov r3, r1
00478fb8  1c 20 a0 e3                                      mov r2, #0x1c
00478fbc  00 00 8f e0                                      add r0, pc, r0
00478fc0  01 10 a0 e3                                      mov r1, #1
00478fc4  73 55 fa ea                                      b #0x30e598
; mapping-symbol data/literal pool
00478fc8  1c 4b 45 00                                      .byte 0x1c, 0x4b, 0x45, 0x00

; FUNCTION 0x0047917c, declared_size=60, range_size=60, mode=arm
; class-group: Condition_IsLevelInState
; alias: _ZN24Condition_IsLevelInStateD0Ev
; demangled: Condition_IsLevelInState::~Condition_IsLevelInState()
; decoder-mode: arm
0047917c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00479180  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00479184  10 40 2d e9                                      push {r4, lr}
00479188  03 30 8f e0                                      add r3, pc, r3
0047918c  02 20 93 e7                                      ldr r2, [r3, r2]
00479190  00 40 a0 e1                                      mov r4, r0
00479194  08 20 82 e2                                      add r2, r2, #8
00479198  00 20 80 e5                                      str r2, [r0]
0047919c  3f fd ff eb                                      bl #0x4786a0
004791a0  04 00 a0 e1                                      mov r0, r4
004791a4  a5 5c fa eb                                      bl #0x310440
004791a8  04 00 a0 e1                                      mov r0, r4
004791ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004791b0  08 b9 51 00 1c 36 00 00                          .byte 0x08, 0xb9, 0x51, 0x00, 0x1c, 0x36, 0x00, 0x00
