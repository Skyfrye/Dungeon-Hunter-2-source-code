; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004788ac, declared_size=52, range_size=52, mode=arm
; class-group: Condition_IsQuestStateLower
; alias: _ZN27Condition_IsQuestStateLowerD1Ev
; demangled: Condition_IsQuestStateLower::~Condition_IsQuestStateLower()
; decoder-mode: arm
004788ac  24 30 9f e5                                      ldr r3, [pc, #0x24]
004788b0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004788b4  10 40 2d e9                                      push {r4, lr}
004788b8  03 30 8f e0                                      add r3, pc, r3
004788bc  02 20 93 e7                                      ldr r2, [r3, r2]
004788c0  00 40 a0 e1                                      mov r4, r0
004788c4  08 20 82 e2                                      add r2, r2, #8
004788c8  00 20 80 e5                                      str r2, [r0]
004788cc  73 ff ff eb                                      bl #0x4786a0
004788d0  04 00 a0 e1                                      mov r0, r4
004788d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004788d8  d8 c1 51 00 0c 15 00 00                          .byte 0xd8, 0xc1, 0x51, 0x00, 0x0c, 0x15, 0x00, 0x00

; FUNCTION 0x004792e4, declared_size=60, range_size=60, mode=arm
; class-group: Condition_IsQuestStateLower
; alias: _ZN27Condition_IsQuestStateLowerD0Ev
; demangled: Condition_IsQuestStateLower::~Condition_IsQuestStateLower()
; decoder-mode: arm
004792e4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004792e8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004792ec  10 40 2d e9                                      push {r4, lr}
004792f0  03 30 8f e0                                      add r3, pc, r3
004792f4  02 20 93 e7                                      ldr r2, [r3, r2]
004792f8  00 40 a0 e1                                      mov r4, r0
004792fc  08 20 82 e2                                      add r2, r2, #8
00479300  00 20 80 e5                                      str r2, [r0]
00479304  e5 fc ff eb                                      bl #0x4786a0
00479308  04 00 a0 e1                                      mov r0, r4
0047930c  4b 5c fa eb                                      bl #0x310440
00479310  04 00 a0 e1                                      mov r0, r4
00479314  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00479318  a0 b7 51 00 0c 15 00 00                          .byte 0xa0, 0xb7, 0x51, 0x00, 0x0c, 0x15, 0x00, 0x00
