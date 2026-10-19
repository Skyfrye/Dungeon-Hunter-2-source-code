; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008274e8, declared_size=4, range_size=4, mode=arm
; class-group: CTransport
; alias: _ZN10CTransportD1Ev
; demangled: CTransport::~CTransport()
; decoder-mode: arm
008274e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008274ec, declared_size=8, range_size=8, mode=arm
; class-group: CTransport
; alias: _ZN10CTransport7ConnectER10CNetworkId
; demangled: CTransport::Connect(CNetworkId&)
; decoder-mode: arm
008274ec  00 00 a0 e3                                      mov r0, #0
008274f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008274f4, declared_size=8, range_size=8, mode=arm
; class-group: CTransport
; alias: _ZN10CTransport10DisconnectEv
; demangled: CTransport::Disconnect()
; decoder-mode: arm
008274f4  00 00 a0 e3                                      mov r0, #0
008274f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008274fc, declared_size=4, range_size=4, mode=arm
; class-group: CTransport
; alias: _ZN10CTransport14StartBroadcastEv
; demangled: CTransport::StartBroadcast()
; decoder-mode: arm
008274fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00827500, declared_size=4, range_size=4, mode=arm
; class-group: CTransport
; alias: _ZN10CTransport13StopBroadcastEv
; demangled: CTransport::StopBroadcast()
; decoder-mode: arm
00827500  1e ff 2f e1                                      bx lr

; FUNCTION 0x008277d0, declared_size=52, range_size=52, mode=arm
; class-group: CTransport
; alias: _ZN10CTransportD0Ev
; demangled: CTransport::~CTransport()
; decoder-mode: arm
008277d0  24 30 9f e5                                      ldr r3, [pc, #0x24]
008277d4  24 20 9f e5                                      ldr r2, [pc, #0x24]
008277d8  10 40 2d e9                                      push {r4, lr}
008277dc  03 30 8f e0                                      add r3, pc, r3
008277e0  02 20 93 e7                                      ldr r2, [r3, r2]
008277e4  00 40 a0 e1                                      mov r4, r0
008277e8  08 20 82 e2                                      add r2, r2, #8
008277ec  00 20 80 e5                                      str r2, [r0]
008277f0  12 a3 eb eb                                      bl #0x310440
008277f4  04 00 a0 e1                                      mov r0, r4
008277f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008277fc  b4 d2 16 00 2c 29 00 00                          .byte 0xb4, 0xd2, 0x16, 0x00, 0x2c, 0x29, 0x00, 0x00
