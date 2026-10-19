; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004822d8, declared_size=4, range_size=4, mode=arm
; class-group: QE_ClearEnemyTemplate
; alias: _ZN21QE_ClearEnemyTemplateD1Ev
; demangled: QE_ClearEnemyTemplate::~QE_ClearEnemyTemplate()
; decoder-mode: arm
004822d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482390, declared_size=56, range_size=56, mode=arm
; class-group: QE_ClearEnemyTemplate
; alias: _ZNK21QE_ClearEnemyTemplate14FillNetworkMsgER19tMsgRaisedEventData
; demangled: QE_ClearEnemyTemplate::FillNetworkMsg(tMsgRaisedEventData&) const
; decoder-mode: arm
00482390  04 30 90 e5                                      ldr r3, [r0, #4]
00482394  00 30 81 e5                                      str r3, [r1]
00482398  08 30 90 e5                                      ldr r3, [r0, #8]
0048239c  00 00 53 e3                                      cmp r3, #0
004823a0  08 31 93 15                                      ldrne r3, [r3, #0x108]
004823a4  00 30 e0 03                                      mvneq r3, #0
004823a8  04 30 81 e5                                      str r3, [r1, #4]
004823ac  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004823b0  08 30 81 e5                                      str r3, [r1, #8]
004823b4  14 30 90 e5                                      ldr r3, [r0, #0x14]
004823b8  0c 30 81 e5                                      str r3, [r1, #0xc]
004823bc  18 30 90 e5                                      ldr r3, [r0, #0x18]
004823c0  10 30 81 e5                                      str r3, [r1, #0x10]
004823c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482514, declared_size=52, range_size=52, mode=arm
; class-group: QE_ClearEnemyTemplate
; alias: _ZN21QE_ClearEnemyTemplateD0Ev
; demangled: QE_ClearEnemyTemplate::~QE_ClearEnemyTemplate()
; decoder-mode: arm
00482514  24 30 9f e5                                      ldr r3, [pc, #0x24]
00482518  24 20 9f e5                                      ldr r2, [pc, #0x24]
0048251c  10 40 2d e9                                      push {r4, lr}
00482520  03 30 8f e0                                      add r3, pc, r3
00482524  02 20 93 e7                                      ldr r2, [r3, r2]
00482528  00 40 a0 e1                                      mov r4, r0
0048252c  08 20 82 e2                                      add r2, r2, #8
00482530  00 20 80 e5                                      str r2, [r0]
00482534  c1 37 fa eb                                      bl #0x310440
00482538  04 00 a0 e1                                      mov r0, r4
0048253c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00482540  70 25 51 00 b0 0b 00 00                          .byte 0x70, 0x25, 0x51, 0x00, 0xb0, 0x0b, 0x00, 0x00
