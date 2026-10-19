; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004822d4, declared_size=4, range_size=4, mode=arm
; class-group: QE_KillEnemyTemplate
; alias: _ZN20QE_KillEnemyTemplateD1Ev
; demangled: QE_KillEnemyTemplate::~QE_KillEnemyTemplate()
; decoder-mode: arm
004822d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482358, declared_size=56, range_size=56, mode=arm
; class-group: QE_KillEnemyTemplate
; alias: _ZNK20QE_KillEnemyTemplate14FillNetworkMsgER19tMsgRaisedEventData
; demangled: QE_KillEnemyTemplate::FillNetworkMsg(tMsgRaisedEventData&) const
; decoder-mode: arm
00482358  04 30 90 e5                                      ldr r3, [r0, #4]
0048235c  00 30 81 e5                                      str r3, [r1]
00482360  08 30 90 e5                                      ldr r3, [r0, #8]
00482364  00 00 53 e3                                      cmp r3, #0
00482368  08 31 93 15                                      ldrne r3, [r3, #0x108]
0048236c  00 30 e0 03                                      mvneq r3, #0
00482370  04 30 81 e5                                      str r3, [r1, #4]
00482374  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00482378  08 30 81 e5                                      str r3, [r1, #8]
0048237c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00482380  0c 30 81 e5                                      str r3, [r1, #0xc]
00482384  18 30 90 e5                                      ldr r3, [r0, #0x18]
00482388  10 30 81 e5                                      str r3, [r1, #0x10]
0048238c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004824e0, declared_size=52, range_size=52, mode=arm
; class-group: QE_KillEnemyTemplate
; alias: _ZN20QE_KillEnemyTemplateD0Ev
; demangled: QE_KillEnemyTemplate::~QE_KillEnemyTemplate()
; decoder-mode: arm
004824e0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004824e4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004824e8  10 40 2d e9                                      push {r4, lr}
004824ec  03 30 8f e0                                      add r3, pc, r3
004824f0  02 20 93 e7                                      ldr r2, [r3, r2]
004824f4  00 40 a0 e1                                      mov r4, r0
004824f8  08 20 82 e2                                      add r2, r2, #8
004824fc  00 20 80 e5                                      str r2, [r0]
00482500  ce 37 fa eb                                      bl #0x310440
00482504  04 00 a0 e1                                      mov r0, r4
00482508  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048250c  a4 25 51 00 b0 0b 00 00                          .byte 0xa4, 0x25, 0x51, 0x00, 0xb0, 0x0b, 0x00, 0x00
