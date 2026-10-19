; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004822e0, declared_size=4, range_size=4, mode=arm
; class-group: QE_GatherLoot
; alias: _ZN13QE_GatherLootD1Ev
; demangled: QE_GatherLoot::~QE_GatherLoot()
; decoder-mode: arm
004822e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482400, declared_size=56, range_size=56, mode=arm
; class-group: QE_GatherLoot
; alias: _ZNK13QE_GatherLoot14FillNetworkMsgER19tMsgRaisedEventData
; demangled: QE_GatherLoot::FillNetworkMsg(tMsgRaisedEventData&) const
; decoder-mode: arm
00482400  04 30 90 e5                                      ldr r3, [r0, #4]
00482404  00 30 81 e5                                      str r3, [r1]
00482408  08 30 90 e5                                      ldr r3, [r0, #8]
0048240c  00 00 53 e3                                      cmp r3, #0
00482410  08 31 93 15                                      ldrne r3, [r3, #0x108]
00482414  00 30 e0 03                                      mvneq r3, #0
00482418  04 30 81 e5                                      str r3, [r1, #4]
0048241c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00482420  08 30 81 e5                                      str r3, [r1, #8]
00482424  14 30 90 e5                                      ldr r3, [r0, #0x14]
00482428  0c 30 81 e5                                      str r3, [r1, #0xc]
0048242c  18 30 90 e5                                      ldr r3, [r0, #0x18]
00482430  10 30 81 e5                                      str r3, [r1, #0x10]
00482434  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048257c, declared_size=52, range_size=52, mode=arm
; class-group: QE_GatherLoot
; alias: _ZN13QE_GatherLootD0Ev
; demangled: QE_GatherLoot::~QE_GatherLoot()
; decoder-mode: arm
0048257c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00482580  24 20 9f e5                                      ldr r2, [pc, #0x24]
00482584  10 40 2d e9                                      push {r4, lr}
00482588  03 30 8f e0                                      add r3, pc, r3
0048258c  02 20 93 e7                                      ldr r2, [r3, r2]
00482590  00 40 a0 e1                                      mov r4, r0
00482594  08 20 82 e2                                      add r2, r2, #8
00482598  00 20 80 e5                                      str r2, [r0]
0048259c  a7 37 fa eb                                      bl #0x310440
004825a0  04 00 a0 e1                                      mov r0, r4
004825a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004825a8  08 25 51 00 b0 0b 00 00                          .byte 0x08, 0x25, 0x51, 0x00, 0xb0, 0x0b, 0x00, 0x00
