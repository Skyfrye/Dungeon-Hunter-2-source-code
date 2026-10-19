; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004788e0, declared_size=52, range_size=52, mode=arm
; class-group: Condition_IsQuestInState
; alias: _ZN24Condition_IsQuestInStateD1Ev
; demangled: Condition_IsQuestInState::~Condition_IsQuestInState()
; decoder-mode: arm
004788e0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004788e4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004788e8  10 40 2d e9                                      push {r4, lr}
004788ec  03 30 8f e0                                      add r3, pc, r3
004788f0  02 20 93 e7                                      ldr r2, [r3, r2]
004788f4  00 40 a0 e1                                      mov r4, r0
004788f8  08 20 82 e2                                      add r2, r2, #8
004788fc  00 20 80 e5                                      str r2, [r0]
00478900  66 ff ff eb                                      bl #0x4786a0
00478904  04 00 a0 e1                                      mov r0, r4
00478908  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047890c  a4 c1 51 00 0c 15 00 00                          .byte 0xa4, 0xc1, 0x51, 0x00, 0x0c, 0x15, 0x00, 0x00

; FUNCTION 0x00479320, declared_size=60, range_size=60, mode=arm
; class-group: Condition_IsQuestInState
; alias: _ZN24Condition_IsQuestInStateD0Ev
; demangled: Condition_IsQuestInState::~Condition_IsQuestInState()
; decoder-mode: arm
00479320  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00479324  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00479328  10 40 2d e9                                      push {r4, lr}
0047932c  03 30 8f e0                                      add r3, pc, r3
00479330  02 20 93 e7                                      ldr r2, [r3, r2]
00479334  00 40 a0 e1                                      mov r4, r0
00479338  08 20 82 e2                                      add r2, r2, #8
0047933c  00 20 80 e5                                      str r2, [r0]
00479340  d6 fc ff eb                                      bl #0x4786a0
00479344  04 00 a0 e1                                      mov r0, r4
00479348  3c 5c fa eb                                      bl #0x310440
0047934c  04 00 a0 e1                                      mov r0, r4
00479350  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00479354  64 b7 51 00 0c 15 00 00                          .byte 0x64, 0xb7, 0x51, 0x00, 0x0c, 0x15, 0x00, 0x00
