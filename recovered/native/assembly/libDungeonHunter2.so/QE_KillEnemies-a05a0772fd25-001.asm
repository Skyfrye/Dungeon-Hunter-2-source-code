; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004822cc, declared_size=4, range_size=4, mode=arm
; class-group: QE_KillEnemies
; alias: _ZN14QE_KillEnemiesD1Ev
; demangled: QE_KillEnemies::~QE_KillEnemies()
; decoder-mode: arm
004822cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004822e8, declared_size=56, range_size=56, mode=arm
; class-group: QE_KillEnemies
; alias: _ZNK14QE_KillEnemies14FillNetworkMsgER19tMsgRaisedEventData
; demangled: QE_KillEnemies::FillNetworkMsg(tMsgRaisedEventData&) const
; decoder-mode: arm
004822e8  04 30 90 e5                                      ldr r3, [r0, #4]
004822ec  00 30 81 e5                                      str r3, [r1]
004822f0  08 30 90 e5                                      ldr r3, [r0, #8]
004822f4  00 00 53 e3                                      cmp r3, #0
004822f8  08 31 93 15                                      ldrne r3, [r3, #0x108]
004822fc  00 30 e0 03                                      mvneq r3, #0
00482300  04 30 81 e5                                      str r3, [r1, #4]
00482304  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00482308  08 30 81 e5                                      str r3, [r1, #8]
0048230c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00482310  0c 30 81 e5                                      str r3, [r1, #0xc]
00482314  18 30 90 e5                                      ldr r3, [r0, #0x18]
00482318  10 30 81 e5                                      str r3, [r1, #0x10]
0048231c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482478, declared_size=52, range_size=52, mode=arm
; class-group: QE_KillEnemies
; alias: _ZN14QE_KillEnemiesD0Ev
; demangled: QE_KillEnemies::~QE_KillEnemies()
; decoder-mode: arm
00482478  24 30 9f e5                                      ldr r3, [pc, #0x24]
0048247c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00482480  10 40 2d e9                                      push {r4, lr}
00482484  03 30 8f e0                                      add r3, pc, r3
00482488  02 20 93 e7                                      ldr r2, [r3, r2]
0048248c  00 40 a0 e1                                      mov r4, r0
00482490  08 20 82 e2                                      add r2, r2, #8
00482494  00 20 80 e5                                      str r2, [r0]
00482498  e8 37 fa eb                                      bl #0x310440
0048249c  04 00 a0 e1                                      mov r0, r4
004824a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004824a4  0c 26 51 00 b0 0b 00 00                          .byte 0x0c, 0x26, 0x51, 0x00, 0xb0, 0x0b, 0x00, 0x00
