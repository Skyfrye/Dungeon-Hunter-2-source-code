; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00478878, declared_size=52, range_size=52, mode=arm
; class-group: Condition_IsQuestStateHigher
; alias: _ZN28Condition_IsQuestStateHigherD1Ev
; demangled: Condition_IsQuestStateHigher::~Condition_IsQuestStateHigher()
; decoder-mode: arm
00478878  24 30 9f e5                                      ldr r3, [pc, #0x24]
0047887c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00478880  10 40 2d e9                                      push {r4, lr}
00478884  03 30 8f e0                                      add r3, pc, r3
00478888  02 20 93 e7                                      ldr r2, [r3, r2]
0047888c  00 40 a0 e1                                      mov r4, r0
00478890  08 20 82 e2                                      add r2, r2, #8
00478894  00 20 80 e5                                      str r2, [r0]
00478898  80 ff ff eb                                      bl #0x4786a0
0047889c  04 00 a0 e1                                      mov r0, r4
004788a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004788a4  0c c2 51 00 0c 15 00 00                          .byte 0x0c, 0xc2, 0x51, 0x00, 0x0c, 0x15, 0x00, 0x00

; FUNCTION 0x004792a8, declared_size=60, range_size=60, mode=arm
; class-group: Condition_IsQuestStateHigher
; alias: _ZN28Condition_IsQuestStateHigherD0Ev
; demangled: Condition_IsQuestStateHigher::~Condition_IsQuestStateHigher()
; decoder-mode: arm
004792a8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004792ac  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004792b0  10 40 2d e9                                      push {r4, lr}
004792b4  03 30 8f e0                                      add r3, pc, r3
004792b8  02 20 93 e7                                      ldr r2, [r3, r2]
004792bc  00 40 a0 e1                                      mov r4, r0
004792c0  08 20 82 e2                                      add r2, r2, #8
004792c4  00 20 80 e5                                      str r2, [r0]
004792c8  f4 fc ff eb                                      bl #0x4786a0
004792cc  04 00 a0 e1                                      mov r0, r4
004792d0  5a 5c fa eb                                      bl #0x310440
004792d4  04 00 a0 e1                                      mov r0, r4
004792d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004792dc  dc b7 51 00 0c 15 00 00                          .byte 0xdc, 0xb7, 0x51, 0x00, 0x0c, 0x15, 0x00, 0x00
