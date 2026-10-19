; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00824c80, declared_size=4, range_size=4, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket16RestartBluetoothEv
; demangled: CBluetoothSocket::RestartBluetooth()
; decoder-mode: arm
00824c80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00824c84, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket22DisconnectFromAllPeersEv
; demangled: CBluetoothSocket::DisconnectFromAllPeers()
; decoder-mode: arm
00824c84  01 00 a0 e3                                      mov r0, #1
00824c88  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c3c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZNK16CBluetoothSocket11IsConnectedEv
; demangled: CBluetoothSocket::IsConnected() const
; decoder-mode: arm
00828c3c  00 00 a0 e3                                      mov r0, #0
00828c40  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c44, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket12OpenReliableESsjb
; demangled: CBluetoothSocket::OpenReliable(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, unsigned int, bool)
; decoder-mode: arm
00828c44  00 00 a0 e3                                      mov r0, #0
00828c48  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c4c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket14OpenUnreliableESsjb
; demangled: CBluetoothSocket::OpenUnreliable(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, unsigned int, bool)
; decoder-mode: arm
00828c4c  00 00 a0 e3                                      mov r0, #0
00828c50  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c54, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket5CloseEv
; demangled: CBluetoothSocket::Close()
; decoder-mode: arm
00828c54  00 00 a0 e3                                      mov r0, #0
00828c58  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c5c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket7ConnectEj
; demangled: CBluetoothSocket::Connect(unsigned int)
; decoder-mode: arm
00828c5c  00 00 a0 e3                                      mov r0, #0
00828c60  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c64, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket4SendEPKvi
; demangled: CBluetoothSocket::Send(void const*, int)
; decoder-mode: arm
00828c64  00 00 a0 e3                                      mov r0, #0
00828c68  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c6c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket6SendToEjPKvi
; demangled: CBluetoothSocket::SendTo(unsigned int, void const*, int)
; decoder-mode: arm
00828c6c  00 00 a0 e3                                      mov r0, #0
00828c70  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c74, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket7ReceiveEPci
; demangled: CBluetoothSocket::Receive(char*, int)
; decoder-mode: arm
00828c74  00 00 a0 e3                                      mov r0, #0
00828c78  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c7c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket11ReceiveFromEjPci
; demangled: CBluetoothSocket::ReceiveFrom(unsigned int, char*, int)
; decoder-mode: arm
00828c7c  00 00 a0 e3                                      mov r0, #0
00828c80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c84, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZNK16CBluetoothSocket14GetLocalPeerIdEv
; demangled: CBluetoothSocket::GetLocalPeerId() const
; decoder-mode: arm
00828c84  00 00 a0 e3                                      mov r0, #0
00828c88  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c8c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZNK16CBluetoothSocket15GetRemotePeerIdEv
; demangled: CBluetoothSocket::GetRemotePeerId() const
; decoder-mode: arm
00828c8c  00 00 a0 e3                                      mov r0, #0
00828c90  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c94, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZNK16CBluetoothSocket6IsPeerEv
; demangled: CBluetoothSocket::IsPeer() const
; decoder-mode: arm
00828c94  00 00 a0 e3                                      mov r0, #0
00828c98  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828c9c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZNK16CBluetoothSocket8IsClientEv
; demangled: CBluetoothSocket::IsClient() const
; decoder-mode: arm
00828c9c  00 00 a0 e3                                      mov r0, #0
00828ca0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828ca4, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothSocket
; alias: _ZNK16CBluetoothSocket8IsServerEv
; demangled: CBluetoothSocket::IsServer() const
; decoder-mode: arm
00828ca4  00 00 a0 e3                                      mov r0, #0
00828ca8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828cac, declared_size=4, range_size=4, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket14StartBroadcastEv
; demangled: CBluetoothSocket::StartBroadcast()
; decoder-mode: arm
00828cac  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828cb0, declared_size=4, range_size=4, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocket13StopBroadcastEv
; demangled: CBluetoothSocket::StopBroadcast()
; decoder-mode: arm
00828cb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828f78, declared_size=52, range_size=52, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocketD1Ev
; demangled: CBluetoothSocket::~CBluetoothSocket()
; decoder-mode: arm
00828f78  24 30 9f e5                                      ldr r3, [pc, #0x24]
00828f7c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00828f80  10 40 2d e9                                      push {r4, lr}
00828f84  03 30 8f e0                                      add r3, pc, r3
00828f88  02 20 93 e7                                      ldr r2, [r3, r2]
00828f8c  00 40 a0 e1                                      mov r4, r0
00828f90  08 20 82 e2                                      add r2, r2, #8
00828f94  04 20 80 e4                                      str r2, [r0], #4
00828f98  83 aa eb eb                                      bl #0x3139ac
00828f9c  04 00 a0 e1                                      mov r0, r4
00828fa0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00828fa4  0c bb 16 00 34 3d 00 00                          .byte 0x0c, 0xbb, 0x16, 0x00, 0x34, 0x3d, 0x00, 0x00

; FUNCTION 0x00828fe0, declared_size=44, range_size=44, mode=arm
; class-group: CBluetoothSocket
; alias: _ZNK16CBluetoothSocket19GetRemoteDeviceNameEv
; demangled: CBluetoothSocket::GetRemoteDeviceName() const
; decoder-mode: arm
00828fe0  10 40 2d e9                                      push {r4, lr}
00828fe4  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00828fe8  08 d0 4d e2                                      sub sp, sp, #8
00828fec  00 40 a0 e1                                      mov r4, r0
00828ff0  04 20 8d e2                                      add r2, sp, #4
00828ff4  01 10 8f e0                                      add r1, pc, r1
00828ff8  3b ac eb eb                                      bl #0x3140ec
00828ffc  04 00 a0 e1                                      mov r0, r4
00829000  08 d0 8d e2                                      add sp, sp, #8
00829004  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00829008  14 28 0a 00                                      .byte 0x14, 0x28, 0x0a, 0x00

; FUNCTION 0x00829140, declared_size=60, range_size=60, mode=arm
; class-group: CBluetoothSocket
; alias: _ZN16CBluetoothSocketD0Ev
; demangled: CBluetoothSocket::~CBluetoothSocket()
; decoder-mode: arm
00829140  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00829144  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00829148  10 40 2d e9                                      push {r4, lr}
0082914c  03 30 8f e0                                      add r3, pc, r3
00829150  02 20 93 e7                                      ldr r2, [r3, r2]
00829154  00 40 a0 e1                                      mov r4, r0
00829158  08 20 82 e2                                      add r2, r2, #8
0082915c  04 20 80 e4                                      str r2, [r0], #4
00829160  11 aa eb eb                                      bl #0x3139ac
00829164  04 00 a0 e1                                      mov r0, r4
00829168  b4 9c eb eb                                      bl #0x310440
0082916c  04 00 a0 e1                                      mov r0, r4
00829170  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00829174  44 b9 16 00 34 3d 00 00                          .byte 0x44, 0xb9, 0x16, 0x00, 0x34, 0x3d, 0x00, 0x00
