; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004822d0, declared_size=4, range_size=4, mode=arm
; class-group: QE_ClearEnemies
; alias: _ZN15QE_ClearEnemiesD1Ev
; demangled: QE_ClearEnemies::~QE_ClearEnemies()
; decoder-mode: arm
004822d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482320, declared_size=56, range_size=56, mode=arm
; class-group: QE_ClearEnemies
; alias: _ZNK15QE_ClearEnemies14FillNetworkMsgER19tMsgRaisedEventData
; demangled: QE_ClearEnemies::FillNetworkMsg(tMsgRaisedEventData&) const
; decoder-mode: arm
00482320  04 30 90 e5                                      ldr r3, [r0, #4]
00482324  00 30 81 e5                                      str r3, [r1]
00482328  08 30 90 e5                                      ldr r3, [r0, #8]
0048232c  00 00 53 e3                                      cmp r3, #0
00482330  08 31 93 15                                      ldrne r3, [r3, #0x108]
00482334  00 30 e0 03                                      mvneq r3, #0
00482338  04 30 81 e5                                      str r3, [r1, #4]
0048233c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00482340  08 30 81 e5                                      str r3, [r1, #8]
00482344  14 30 90 e5                                      ldr r3, [r0, #0x14]
00482348  0c 30 81 e5                                      str r3, [r1, #0xc]
0048234c  18 30 90 e5                                      ldr r3, [r0, #0x18]
00482350  10 30 81 e5                                      str r3, [r1, #0x10]
00482354  1e ff 2f e1                                      bx lr

; FUNCTION 0x004824ac, declared_size=52, range_size=52, mode=arm
; class-group: QE_ClearEnemies
; alias: _ZN15QE_ClearEnemiesD0Ev
; demangled: QE_ClearEnemies::~QE_ClearEnemies()
; decoder-mode: arm
004824ac  24 30 9f e5                                      ldr r3, [pc, #0x24]
004824b0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004824b4  10 40 2d e9                                      push {r4, lr}
004824b8  03 30 8f e0                                      add r3, pc, r3
004824bc  02 20 93 e7                                      ldr r2, [r3, r2]
004824c0  00 40 a0 e1                                      mov r4, r0
004824c4  08 20 82 e2                                      add r2, r2, #8
004824c8  00 20 80 e5                                      str r2, [r0]
004824cc  db 37 fa eb                                      bl #0x310440
004824d0  04 00 a0 e1                                      mov r0, r4
004824d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004824d8  d8 25 51 00 b0 0b 00 00                          .byte 0xd8, 0x25, 0x51, 0x00, 0xb0, 0x0b, 0x00, 0x00
