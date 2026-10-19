; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004822dc, declared_size=4, range_size=4, mode=arm
; class-group: QE_InteractWith
; alias: _ZN15QE_InteractWithD1Ev
; demangled: QE_InteractWith::~QE_InteractWith()
; decoder-mode: arm
004822dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004823c8, declared_size=56, range_size=56, mode=arm
; class-group: QE_InteractWith
; alias: _ZNK15QE_InteractWith14FillNetworkMsgER19tMsgRaisedEventData
; demangled: QE_InteractWith::FillNetworkMsg(tMsgRaisedEventData&) const
; decoder-mode: arm
004823c8  04 30 90 e5                                      ldr r3, [r0, #4]
004823cc  00 30 81 e5                                      str r3, [r1]
004823d0  08 30 90 e5                                      ldr r3, [r0, #8]
004823d4  00 00 53 e3                                      cmp r3, #0
004823d8  08 31 93 15                                      ldrne r3, [r3, #0x108]
004823dc  00 30 e0 03                                      mvneq r3, #0
004823e0  04 30 81 e5                                      str r3, [r1, #4]
004823e4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004823e8  08 30 81 e5                                      str r3, [r1, #8]
004823ec  14 30 90 e5                                      ldr r3, [r0, #0x14]
004823f0  0c 30 81 e5                                      str r3, [r1, #0xc]
004823f4  18 30 90 e5                                      ldr r3, [r0, #0x18]
004823f8  10 30 81 e5                                      str r3, [r1, #0x10]
004823fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482548, declared_size=52, range_size=52, mode=arm
; class-group: QE_InteractWith
; alias: _ZN15QE_InteractWithD0Ev
; demangled: QE_InteractWith::~QE_InteractWith()
; decoder-mode: arm
00482548  24 30 9f e5                                      ldr r3, [pc, #0x24]
0048254c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00482550  10 40 2d e9                                      push {r4, lr}
00482554  03 30 8f e0                                      add r3, pc, r3
00482558  02 20 93 e7                                      ldr r2, [r3, r2]
0048255c  00 40 a0 e1                                      mov r4, r0
00482560  08 20 82 e2                                      add r2, r2, #8
00482564  00 20 80 e5                                      str r2, [r0]
00482568  b4 37 fa eb                                      bl #0x310440
0048256c  04 00 a0 e1                                      mov r0, r4
00482570  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00482574  3c 25 51 00 b0 0b 00 00                          .byte 0x3c, 0x25, 0x51, 0x00, 0xb0, 0x0b, 0x00, 0x00
