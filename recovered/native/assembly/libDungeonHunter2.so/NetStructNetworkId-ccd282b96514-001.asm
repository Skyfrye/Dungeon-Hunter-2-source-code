; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00801b04, declared_size=4, range_size=4, mode=arm
; class-group: NetStructNetworkId
; alias: _ZN18NetStructNetworkIdD1Ev
; demangled: NetStructNetworkId::~NetStructNetworkId()
; decoder-mode: arm
00801b04  1e ff 2f e1                                      bx lr

; FUNCTION 0x00801bc8, declared_size=52, range_size=52, mode=arm
; class-group: NetStructNetworkId
; alias: _ZN18NetStructNetworkIdD0Ev
; demangled: NetStructNetworkId::~NetStructNetworkId()
; decoder-mode: arm
00801bc8  24 30 9f e5                                      ldr r3, [pc, #0x24]
00801bcc  24 20 9f e5                                      ldr r2, [pc, #0x24]
00801bd0  10 40 2d e9                                      push {r4, lr}
00801bd4  03 30 8f e0                                      add r3, pc, r3
00801bd8  02 20 93 e7                                      ldr r2, [r3, r2]
00801bdc  00 40 a0 e1                                      mov r4, r0
00801be0  08 20 82 e2                                      add r2, r2, #8
00801be4  00 20 80 e5                                      str r2, [r0]
00801be8  14 3a ec eb                                      bl #0x310440
00801bec  04 00 a0 e1                                      mov r0, r4
00801bf0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00801bf4  bc 2e 19 00 a8 10 00 00                          .byte 0xbc, 0x2e, 0x19, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00801de0, declared_size=68, range_size=68, mode=arm
; class-group: NetStructNetworkId
; alias: _ZN18NetStructNetworkId4ReadER12NetBitStream
; demangled: NetStructNetworkId::Read(NetBitStream&)
; decoder-mode: arm
00801de0  70 40 2d e9                                      push {r4, r5, r6, lr}
00801de4  20 d0 4d e2                                      sub sp, sp, #0x20
00801de8  04 40 8d e2                                      add r4, sp, #4
00801dec  00 50 a0 e1                                      mov r5, r0
00801df0  01 60 a0 e1                                      mov r6, r1
00801df4  04 00 a0 e1                                      mov r0, r4
00801df8  61 e9 ff eb                                      bl #0x7fc384
00801dfc  04 00 a0 e1                                      mov r0, r4
00801e00  06 10 a0 e1                                      mov r1, r6
00801e04  b9 ff ff eb                                      bl #0x801cf0
00801e08  05 00 a0 e1                                      mov r0, r5
00801e0c  04 10 a0 e1                                      mov r1, r4
00801e10  00 30 95 e5                                      ldr r3, [r5]
00801e14  0f e0 a0 e1                                      mov lr, pc
00801e18  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00801e1c  20 d0 8d e2                                      add sp, sp, #0x20
00801e20  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00801f14, declared_size=8, range_size=8, mode=arm
; class-group: NetStructNetworkId
; alias: _ZN18NetStructNetworkId5WriteER12NetBitStream
; demangled: NetStructNetworkId::Write(NetBitStream&)
; decoder-mode: arm
00801f14  20 00 80 e2                                      add r0, r0, #0x20
00801f18  c1 ff ff ea                                      b #0x801e24
