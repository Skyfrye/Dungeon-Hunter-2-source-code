; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004822e4, declared_size=4, range_size=4, mode=arm
; class-group: QE_MoveInZone
; alias: _ZN13QE_MoveInZoneD1Ev
; demangled: QE_MoveInZone::~QE_MoveInZone()
; decoder-mode: arm
004822e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482438, declared_size=64, range_size=64, mode=arm
; class-group: QE_MoveInZone
; alias: _ZNK13QE_MoveInZone14FillNetworkMsgER19tMsgRaisedEventData
; demangled: QE_MoveInZone::FillNetworkMsg(tMsgRaisedEventData&) const
; decoder-mode: arm
00482438  04 30 90 e5                                      ldr r3, [r0, #4]
0048243c  00 30 81 e5                                      str r3, [r1]
00482440  08 30 90 e5                                      ldr r3, [r0, #8]
00482444  00 00 53 e3                                      cmp r3, #0
00482448  08 31 93 15                                      ldrne r3, [r3, #0x108]
0048244c  00 30 e0 03                                      mvneq r3, #0
00482450  04 30 81 e5                                      str r3, [r1, #4]
00482454  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00482458  08 30 81 e5                                      str r3, [r1, #8]
0048245c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00482460  0c 30 81 e5                                      str r3, [r1, #0xc]
00482464  18 30 90 e5                                      ldr r3, [r0, #0x18]
00482468  00 00 53 e3                                      cmp r3, #0
0048246c  08 31 93 15                                      ldrne r3, [r3, #0x108]
00482470  10 30 81 e5                                      str r3, [r1, #0x10]
00482474  1e ff 2f e1                                      bx lr

; FUNCTION 0x004825b0, declared_size=52, range_size=52, mode=arm
; class-group: QE_MoveInZone
; alias: _ZN13QE_MoveInZoneD0Ev
; demangled: QE_MoveInZone::~QE_MoveInZone()
; decoder-mode: arm
004825b0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004825b4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004825b8  10 40 2d e9                                      push {r4, lr}
004825bc  03 30 8f e0                                      add r3, pc, r3
004825c0  02 20 93 e7                                      ldr r2, [r3, r2]
004825c4  00 40 a0 e1                                      mov r4, r0
004825c8  08 20 82 e2                                      add r2, r2, #8
004825cc  00 20 80 e5                                      str r2, [r0]
004825d0  9a 37 fa eb                                      bl #0x310440
004825d4  04 00 a0 e1                                      mov r0, r4
004825d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004825dc  d4 24 51 00 b0 0b 00 00                          .byte 0xd4, 0x24, 0x51, 0x00, 0xb0, 0x0b, 0x00, 0x00
