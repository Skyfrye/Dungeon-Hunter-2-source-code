; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00824da8, declared_size=40, range_size=40, mode=arm
; class-group: CBluetoothSocketAbstract
; alias: _ZN24CBluetoothSocketAbstract21GetDeviceNameByPeerIdEj
; demangled: CBluetoothSocketAbstract::GetDeviceNameByPeerId(unsigned int)
; decoder-mode: arm
00824da8  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00824dac  10 40 2d e9                                      push {r4, lr}
00824db0  00 40 a0 e1                                      mov r4, r0
00824db4  10 00 84 e5                                      str r0, [r4, #0x10]
00824db8  14 00 84 e5                                      str r0, [r4, #0x14]
00824dbc  01 10 8f e0                                      add r1, pc, r1
00824dc0  b2 ff ff eb                                      bl #0x824c90
00824dc4  04 00 a0 e1                                      mov r0, r4
00824dc8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00824dcc  4c 6a 0a 00                                      .byte 0x4c, 0x6a, 0x0a, 0x00

; FUNCTION 0x00828c14, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocketAbstract
; alias: _ZN24CBluetoothSocketAbstract16SetSocketOptionsEj
; demangled: CBluetoothSocketAbstract::SetSocketOptions(unsigned int)
; decoder-mode: arm
00828c14  00 00 a0 e3                                      mov r0, #0
00828c18  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c1c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocketAbstract
; alias: _ZN24CBluetoothSocketAbstract14GetSocketErrorEv
; demangled: CBluetoothSocketAbstract::GetSocketError()
; decoder-mode: arm
00828c1c  00 00 a0 e3                                      mov r0, #0
00828c20  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c24, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocketAbstract
; alias: _ZN24CBluetoothSocketAbstract10WouldBlockEv
; demangled: CBluetoothSocketAbstract::WouldBlock()
; decoder-mode: arm
00828c24  00 00 a0 e3                                      mov r0, #0
00828c28  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c2c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocketAbstract
; alias: _ZNK24CBluetoothSocketAbstract12IsConnectingEv
; demangled: CBluetoothSocketAbstract::IsConnecting() const
; decoder-mode: arm
00828c2c  00 00 a0 e3                                      mov r0, #0
00828c30  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c34, declared_size=4, range_size=4, mode=arm
; class-group: CBluetoothSocketAbstract
; alias: _ZN24CBluetoothSocketAbstract9TerminateEv
; demangled: CBluetoothSocketAbstract::Terminate()
; decoder-mode: arm
00828c34  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c38, declared_size=4, range_size=4, mode=arm
; class-group: CBluetoothSocketAbstract
; alias: _ZN24CBluetoothSocketAbstract16UpdateConnectingEv
; demangled: CBluetoothSocketAbstract::UpdateConnecting()
; decoder-mode: arm
00828c38  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828fac, declared_size=52, range_size=52, mode=arm
; class-group: CBluetoothSocketAbstract
; alias: _ZN24CBluetoothSocketAbstractD1Ev
; demangled: CBluetoothSocketAbstract::~CBluetoothSocketAbstract()
; decoder-mode: arm
00828fac  24 30 9f e5                                      ldr r3, [pc, #0x24]
00828fb0  24 20 9f e5                                      ldr r2, [pc, #0x24]
00828fb4  10 40 2d e9                                      push {r4, lr}
00828fb8  03 30 8f e0                                      add r3, pc, r3
00828fbc  02 20 93 e7                                      ldr r2, [r3, r2]
00828fc0  00 40 a0 e1                                      mov r4, r0
00828fc4  08 20 82 e2                                      add r2, r2, #8
00828fc8  04 20 80 e4                                      str r2, [r0], #4
00828fcc  76 aa eb eb                                      bl #0x3139ac
00828fd0  04 00 a0 e1                                      mov r0, r4
00828fd4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00828fd8  d8 ba 16 00 34 3d 00 00                          .byte 0xd8, 0xba, 0x16, 0x00, 0x34, 0x3d, 0x00, 0x00

; FUNCTION 0x00829104, declared_size=60, range_size=60, mode=arm
; class-group: CBluetoothSocketAbstract
; alias: _ZN24CBluetoothSocketAbstractD0Ev
; demangled: CBluetoothSocketAbstract::~CBluetoothSocketAbstract()
; decoder-mode: arm
00829104  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00829108  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0082910c  10 40 2d e9                                      push {r4, lr}
00829110  03 30 8f e0                                      add r3, pc, r3
00829114  02 20 93 e7                                      ldr r2, [r3, r2]
00829118  00 40 a0 e1                                      mov r4, r0
0082911c  08 20 82 e2                                      add r2, r2, #8
00829120  04 20 80 e4                                      str r2, [r0], #4
00829124  20 aa eb eb                                      bl #0x3139ac
00829128  04 00 a0 e1                                      mov r0, r4
0082912c  c3 9c eb eb                                      bl #0x310440
00829130  04 00 a0 e1                                      mov r0, r4
00829134  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00829138  80 b9 16 00 34 3d 00 00                          .byte 0x80, 0xb9, 0x16, 0x00, 0x34, 0x3d, 0x00, 0x00
