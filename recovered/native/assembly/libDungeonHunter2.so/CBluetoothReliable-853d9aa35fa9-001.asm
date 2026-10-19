; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00828cb4, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable7GetTypeEv
; demangled: CBluetoothReliable::GetType()
; decoder-mode: arm
00828cb4  04 00 a0 e3                                      mov r0, #4
00828cb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828cbc, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable17CanDisconnectFromER10CNetworkId
; demangled: CBluetoothReliable::CanDisconnectFrom(CNetworkId&)
; decoder-mode: arm
00828cbc  00 00 a0 e3                                      mov r0, #0
00828cc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828cc4, declared_size=28, range_size=28, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable10InitializeEv
; demangled: CBluetoothReliable::Initialize()
; decoder-mode: arm
00828cc4  68 30 d0 e5                                      ldrb r3, [r0, #0x68]
00828cc8  00 00 53 e3                                      cmp r3, #0
00828ccc  01 20 a0 03                                      moveq r2, #1
00828cd0  68 20 c0 05                                      strbeq r2, [r0, #0x68]
00828cd4  00 00 e0 13                                      mvnne r0, #0
00828cd8  03 00 a0 01                                      moveq r0, r3
00828cdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828ce0, declared_size=28, range_size=28, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable10DisconnectEv
; demangled: CBluetoothReliable::Disconnect()
; decoder-mode: arm
00828ce0  68 30 d0 e5                                      ldrb r3, [r0, #0x68]
00828ce4  00 00 53 e3                                      cmp r3, #0
00828ce8  00 30 a0 13                                      movne r3, #0
00828cec  68 30 c0 15                                      strbne r3, [r0, #0x68]
00828cf0  00 00 e0 03                                      mvneq r0, #0
00828cf4  03 00 a0 11                                      movne r0, r3
00828cf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828cfc, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable11IsConnectedEv
; demangled: CBluetoothReliable::IsConnected()
; decoder-mode: arm
00828cfc  00 00 a0 e3                                      mov r0, #0
00828d00  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828d04, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable13IsConnectedToER10CNetworkId
; demangled: CBluetoothReliable::IsConnectedTo(CNetworkId&)
; decoder-mode: arm
00828d04  00 00 a0 e3                                      mov r0, #0
00828d08  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828d0c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable6IsPeerEv
; demangled: CBluetoothReliable::IsPeer()
; decoder-mode: arm
00828d0c  00 00 a0 e3                                      mov r0, #0
00828d10  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828d14, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable8IsClientEv
; demangled: CBluetoothReliable::IsClient()
; decoder-mode: arm
00828d14  00 00 a0 e3                                      mov r0, #0
00828d18  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828d1c, declared_size=64, range_size=64, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable11IsListeningEv
; demangled: CBluetoothReliable::IsListening()
; decoder-mode: arm
00828d1c  10 40 2d e9                                      push {r4, lr}
00828d20  68 30 d0 e5                                      ldrb r3, [r0, #0x68]
00828d24  00 40 a0 e1                                      mov r4, r0
00828d28  00 00 53 e3                                      cmp r3, #0
00828d2c  01 00 00 1a                                      bne #0x828d38
00828d30  00 00 a0 e3                                      mov r0, #0
00828d34  10 80 bd e8                                      pop {r4, pc}
00828d38  08 30 90 e5                                      ldr r3, [r0, #8]
00828d3c  08 00 80 e2                                      add r0, r0, #8
00828d40  0f e0 a0 e1                                      mov lr, pc
00828d44  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00828d48  00 00 50 e3                                      cmp r0, #0
00828d4c  f7 ff ff 0a                                      beq #0x828d30
00828d50  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00828d54  01 00 00 e2                                      and r0, r0, #1
00828d58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00828d5c, declared_size=4, range_size=4, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable14StartBroadcastEv
; demangled: CBluetoothReliable::StartBroadcast()
; decoder-mode: arm
00828d5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828d60, declared_size=4, range_size=4, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable13StopBroadcastEv
; demangled: CBluetoothReliable::StopBroadcast()
; decoder-mode: arm
00828d60  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828d64, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable4SendER10CNetworkIdPvi
; demangled: CBluetoothReliable::Send(CNetworkId&, void*, int)
; decoder-mode: arm
00828d64  00 00 e0 e3                                      mvn r0, #0
00828d68  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828d6c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable7ReceiveEv
; demangled: CBluetoothReliable::Receive()
; decoder-mode: arm
00828d6c  00 00 e0 e3                                      mvn r0, #0
00828d70  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828d74, declared_size=4, range_size=4, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable7SetModeE19_tBLUETOOTH_SESSION
; demangled: CBluetoothReliable::SetMode(_tBLUETOOTH_SESSION)
; decoder-mode: arm
00828d74  1e ff 2f e1                                      bx lr

; FUNCTION 0x00828d78, declared_size=40, range_size=40, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable18TerminateTransportEv
; demangled: CBluetoothReliable::TerminateTransport()
; decoder-mode: arm
00828d78  18 10 9f e5                                      ldr r1, [pc, #0x18]
00828d7c  18 20 9f e5                                      ldr r2, [pc, #0x18]
00828d80  00 30 a0 e3                                      mov r3, #0
00828d84  01 10 8f e0                                      add r1, pc, r1
00828d88  02 20 91 e7                                      ldr r2, [r1, r2]
00828d8c  03 00 a0 e1                                      mov r0, r3
00828d90  00 30 c2 e5                                      strb r3, [r2]
00828d94  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00828d98  0c bd 16 00 24 2a 00 00                          .byte 0x0c, 0xbd, 0x16, 0x00, 0x24, 0x2a, 0x00, 0x00

; FUNCTION 0x00828da0, declared_size=80, range_size=80, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable17AcceptConnectionsEv
; demangled: CBluetoothReliable::AcceptConnections()
; decoder-mode: arm
00828da0  10 40 2d e9                                      push {r4, lr}
00828da4  30 30 d0 e5                                      ldrb r3, [r0, #0x30]
00828da8  00 40 a0 e1                                      mov r4, r0
00828dac  00 00 53 e3                                      cmp r3, #0
00828db0  01 00 00 1a                                      bne #0x828dbc
00828db4  00 00 a0 e3                                      mov r0, #0
00828db8  10 80 bd e8                                      pop {r4, pc}
00828dbc  08 30 90 e5                                      ldr r3, [r0, #8]
00828dc0  08 00 80 e2                                      add r0, r0, #8
00828dc4  0f e0 a0 e1                                      mov lr, pc
00828dc8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00828dcc  00 00 50 e3                                      cmp r0, #0
00828dd0  f7 ff ff 0a                                      beq #0x828db4
00828dd4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00828dd8  01 00 13 e3                                      tst r3, #1
00828ddc  f4 ff ff 0a                                      beq #0x828db4
00828de0  04 10 a0 e1                                      mov r1, r4
00828de4  04 00 a0 e3                                      mov r0, #4
00828de8  cf c9 ff eb                                      bl #0x81b52c
00828dec  f0 ff ff ea                                      b #0x828db4

; FUNCTION 0x00828df0, declared_size=104, range_size=104, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable7ConnectER10CNetworkId
; demangled: CBluetoothReliable::Connect(CNetworkId&)
; decoder-mode: arm
00828df0  70 40 2d e9                                      push {r4, r5, r6, lr}
00828df4  68 30 d0 e5                                      ldrb r3, [r0, #0x68]
00828df8  00 60 a0 e1                                      mov r6, r0
00828dfc  01 40 a0 e1                                      mov r4, r1
00828e00  00 00 53 e3                                      cmp r3, #0
00828e04  00 50 e0 03                                      mvneq r5, #0
00828e08  01 00 00 1a                                      bne #0x828e14
00828e0c  05 00 a0 e1                                      mov r0, r5
00828e10  70 80 bd e8                                      pop {r4, r5, r6, pc}
00828e14  00 30 90 e5                                      ldr r3, [r0]
00828e18  0f e0 a0 e1                                      mov lr, pc
00828e1c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00828e20  00 50 50 e2                                      subs r5, r0, #0
00828e24  08 00 00 1a                                      bne #0x828e4c
00828e28  6c c0 86 e2                                      add ip, r6, #0x6c
00828e2c  0c 00 54 e1                                      cmp r4, ip
00828e30  05 00 00 0a                                      beq #0x828e4c
00828e34  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00828e38  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00828e3c  07 00 94 e8                                      ldm r4, {r0, r1, r2}
00828e40  07 00 8c e8                                      stm ip, {r0, r1, r2}
00828e44  05 00 a0 e1                                      mov r0, r5
00828e48  70 80 bd e8                                      pop {r4, r5, r6, pc}
00828e4c  00 50 a0 e3                                      mov r5, #0
00828e50  05 00 a0 e1                                      mov r0, r5
00828e54  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00828e58, declared_size=112, range_size=112, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable4OpenESsSsi
; demangled: CBluetoothReliable::Open(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
; decoder-mode: arm
00828e58  60 20 9f e5                                      ldr r2, [pc, #0x60]
00828e5c  60 c0 9f e5                                      ldr ip, [pc, #0x60]
00828e60  30 40 2d e9                                      push {r4, r5, lr}
00828e64  02 20 8f e0                                      add r2, pc, r2
00828e68  0c 50 92 e7                                      ldr r5, [r2, ip]
00828e6c  24 d0 4d e2                                      sub sp, sp, #0x24
00828e70  04 40 8d e2                                      add r4, sp, #4
00828e74  00 20 95 e5                                      ldr r2, [r5]
00828e78  1c 20 8d e5                                      str r2, [sp, #0x1c]
00828e7c  04 30 80 e5                                      str r3, [r0, #4]
00828e80  10 20 91 e5                                      ldr r2, [r1, #0x10]
00828e84  04 00 a0 e1                                      mov r0, r4
00828e88  14 10 91 e5                                      ldr r1, [r1, #0x14]
00828e8c  14 40 8d e5                                      str r4, [sp, #0x14]
00828e90  18 40 8d e5                                      str r4, [sp, #0x18]
00828e94  13 a2 eb eb                                      bl #0x3116e8
00828e98  04 00 a0 e1                                      mov r0, r4
00828e9c  c2 aa eb eb                                      bl #0x3139ac
00828ea0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00828ea4  00 30 95 e5                                      ldr r3, [r5]
00828ea8  00 00 a0 e3                                      mov r0, #0
00828eac  03 00 52 e1                                      cmp r2, r3
00828eb0  01 00 00 1a                                      bne #0x828ebc
00828eb4  24 d0 8d e2                                      add sp, sp, #0x24
00828eb8  30 80 bd e8                                      pop {r4, r5, pc}
00828ebc  13 95 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00828ec0  2c bc 16 00 ac 40 00 00                          .byte 0x2c, 0xbc, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00828ec8, declared_size=176, range_size=176, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable6ListenESsSs
; demangled: CBluetoothReliable::Listen(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
00828ec8  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00828ecc  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
00828ed0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00828ed4  03 30 8f e0                                      add r3, pc, r3
00828ed8  0c 60 93 e7                                      ldr r6, [r3, ip]
00828edc  38 d0 4d e2                                      sub sp, sp, #0x38
00828ee0  1c 40 8d e2                                      add r4, sp, #0x1c
00828ee4  00 c0 96 e5                                      ldr ip, [r6]
00828ee8  04 50 8d e2                                      add r5, sp, #4
00828eec  02 70 a0 e1                                      mov r7, r2
00828ef0  00 80 a0 e1                                      mov r8, r0
00828ef4  10 20 91 e5                                      ldr r2, [r1, #0x10]
00828ef8  04 00 a0 e1                                      mov r0, r4
00828efc  14 10 91 e5                                      ldr r1, [r1, #0x14]
00828f00  34 c0 8d e5                                      str ip, [sp, #0x34]
00828f04  2c 40 8d e5                                      str r4, [sp, #0x2c]
00828f08  30 40 8d e5                                      str r4, [sp, #0x30]
00828f0c  f5 a1 eb eb                                      bl #0x3116e8
00828f10  10 20 97 e5                                      ldr r2, [r7, #0x10]
00828f14  14 10 97 e5                                      ldr r1, [r7, #0x14]
00828f18  05 00 a0 e1                                      mov r0, r5
00828f1c  14 50 8d e5                                      str r5, [sp, #0x14]
00828f20  18 50 8d e5                                      str r5, [sp, #0x18]
00828f24  ef a1 eb eb                                      bl #0x3116e8
00828f28  05 20 a0 e1                                      mov r2, r5
00828f2c  01 30 a0 e3                                      mov r3, #1
00828f30  04 10 a0 e1                                      mov r1, r4
00828f34  08 00 a0 e1                                      mov r0, r8
00828f38  c6 ff ff eb                                      bl #0x828e58
00828f3c  00 70 a0 e1                                      mov r7, r0
00828f40  05 00 a0 e1                                      mov r0, r5
00828f44  98 aa eb eb                                      bl #0x3139ac
00828f48  04 00 a0 e1                                      mov r0, r4
00828f4c  96 aa eb eb                                      bl #0x3139ac
00828f50  34 20 9d e5                                      ldr r2, [sp, #0x34]
00828f54  00 30 96 e5                                      ldr r3, [r6]
00828f58  07 00 a0 e1                                      mov r0, r7
00828f5c  03 00 52 e1                                      cmp r2, r3
00828f60  01 00 00 1a                                      bne #0x828f6c
00828f64  38 d0 8d e2                                      add sp, sp, #0x38
00828f68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00828f6c  e7 94 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00828f70  bc bb 16 00 ac 40 00 00                          .byte 0xbc, 0xbb, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082900c, declared_size=208, range_size=208, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliableC2Ev
; demangled: CBluetoothReliable::CBluetoothReliable()
; decoder-mode: arm
0082900c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00829010  b0 70 9f e5                                      ldr r7, [pc, #0xb0]
00829014  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
00829018  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0082901c  07 70 8f e0                                      add r7, pc, r7
00829020  02 20 97 e7                                      ldr r2, [r7, r2]
00829024  03 30 97 e7                                      ldr r3, [r7, r3]
00829028  00 40 a0 e1                                      mov r4, r0
0082902c  00 50 a0 e3                                      mov r5, #0
00829030  08 20 82 e2                                      add r2, r2, #8
00829034  08 10 83 e2                                      add r1, r3, #8
00829038  0c 30 80 e2                                      add r3, r0, #0xc
0082903c  0c d0 4d e2                                      sub sp, sp, #0xc
00829040  00 20 80 e5                                      str r2, [r0]
00829044  08 10 80 e5                                      str r1, [r0, #8]
00829048  03 00 a0 e1                                      mov r0, r3
0082904c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00829050  20 30 84 e5                                      str r3, [r4, #0x20]
00829054  04 50 84 e5                                      str r5, [r4, #4]
00829058  10 10 a0 e3                                      mov r1, #0x10
0082905c  86 a1 eb eb                                      bl #0x31167c
00829060  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00829064  6c 60 9f e5                                      ldr r6, [pc, #0x6c]
00829068  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0082906c  03 30 97 e7                                      ldr r3, [r7, r3]
00829070  06 60 8f e0                                      add r6, pc, r6
00829074  00 50 c2 e5                                      strb r5, [r2]
00829078  08 30 83 e2                                      add r3, r3, #8
0082907c  08 30 84 e5                                      str r3, [r4, #8]
00829080  06 10 a0 e1                                      mov r1, r6
00829084  04 20 8d e2                                      add r2, sp, #4
00829088  2c 50 84 e5                                      str r5, [r4, #0x2c]
0082908c  30 50 c4 e5                                      strb r5, [r4, #0x30]
00829090  34 00 84 e2                                      add r0, r4, #0x34
00829094  14 ac eb eb                                      bl #0x3140ec
00829098  06 10 a0 e1                                      mov r1, r6
0082909c  0d 20 a0 e1                                      mov r2, sp
008290a0  4c 50 84 e5                                      str r5, [r4, #0x4c]
008290a4  50 00 84 e2                                      add r0, r4, #0x50
008290a8  0f ac eb eb                                      bl #0x3140ec
008290ac  6c 00 84 e2                                      add r0, r4, #0x6c
008290b0  69 50 c4 e5                                      strb r5, [r4, #0x69]
008290b4  68 50 c4 e5                                      strb r5, [r4, #0x68]
008290b8  b1 4c ff eb                                      bl #0x7fc384
008290bc  04 00 a0 e1                                      mov r0, r4
008290c0  0c d0 8d e2                                      add sp, sp, #0xc
008290c4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008290c8  74 ba 16 00 78 49 00 00 34 3d 00 00 94 11 00 00  .byte 0x74, 0xba, 0x16, 0x00, 0x78, 0x49, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00, 0x94, 0x11, 0x00, 0x00
008290d8  98 27 0a 00                                      .byte 0x98, 0x27, 0x0a, 0x00

; FUNCTION 0x008290dc, declared_size=40, range_size=40, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable16GetPeerNetworkIdEv
; demangled: CBluetoothReliable::GetPeerNetworkId()
; decoder-mode: arm
008290dc  10 40 2d e9                                      push {r4, lr}
008290e0  00 40 a0 e1                                      mov r4, r0
008290e4  a6 4c ff eb                                      bl #0x7fc384
008290e8  18 30 94 e5                                      ldr r3, [r4, #0x18]
008290ec  00 20 a0 e3                                      mov r2, #0
008290f0  14 20 84 e5                                      str r2, [r4, #0x14]
008290f4  08 30 83 e3                                      orr r3, r3, #8
008290f8  18 30 84 e5                                      str r3, [r4, #0x18]
008290fc  04 00 a0 e1                                      mov r0, r4
00829100  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082917c, declared_size=100, range_size=100, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliableD1Ev
; demangled: CBluetoothReliable::~CBluetoothReliable()
; decoder-mode: arm
0082917c  70 40 2d e9                                      push {r4, r5, r6, lr}
00829180  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
00829184  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00829188  00 60 a0 e1                                      mov r6, r0
0082918c  05 50 8f e0                                      add r5, pc, r5
00829190  03 30 95 e7                                      ldr r3, [r5, r3]
00829194  00 40 a0 e1                                      mov r4, r0
00829198  08 30 83 e2                                      add r3, r3, #8
0082919c  50 30 86 e4                                      str r3, [r6], #0x50
008291a0  b6 ee ff eb                                      bl #0x824c80
008291a4  06 00 a0 e1                                      mov r0, r6
008291a8  ff a9 eb eb                                      bl #0x3139ac
008291ac  34 00 84 e2                                      add r0, r4, #0x34
008291b0  fd a9 eb eb                                      bl #0x3139ac
008291b4  20 30 9f e5                                      ldr r3, [pc, #0x20]
008291b8  0c 00 84 e2                                      add r0, r4, #0xc
008291bc  03 30 95 e7                                      ldr r3, [r5, r3]
008291c0  08 30 83 e2                                      add r3, r3, #8
008291c4  08 30 84 e5                                      str r3, [r4, #8]
008291c8  f7 a9 eb eb                                      bl #0x3139ac
008291cc  04 00 a0 e1                                      mov r0, r4
008291d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008291d4  04 b9 16 00 78 49 00 00 34 3d 00 00              .byte 0x04, 0xb9, 0x16, 0x00, 0x78, 0x49, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00

; FUNCTION 0x008291e0, declared_size=28, range_size=28, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliableD0Ev
; demangled: CBluetoothReliable::~CBluetoothReliable()
; decoder-mode: arm
008291e0  10 40 2d e9                                      push {r4, lr}
008291e4  00 40 a0 e1                                      mov r4, r0
008291e8  e3 ff ff eb                                      bl #0x82917c
008291ec  04 00 a0 e1                                      mov r0, r4
008291f0  92 9c eb eb                                      bl #0x310440
008291f4  04 00 a0 e1                                      mov r0, r4
008291f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008291fc, declared_size=100, range_size=100, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliableD2Ev
; demangled: CBluetoothReliable::~CBluetoothReliable()
; decoder-mode: arm
008291fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00829200  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
00829204  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00829208  00 60 a0 e1                                      mov r6, r0
0082920c  05 50 8f e0                                      add r5, pc, r5
00829210  03 30 95 e7                                      ldr r3, [r5, r3]
00829214  00 40 a0 e1                                      mov r4, r0
00829218  08 30 83 e2                                      add r3, r3, #8
0082921c  50 30 86 e4                                      str r3, [r6], #0x50
00829220  96 ee ff eb                                      bl #0x824c80
00829224  06 00 a0 e1                                      mov r0, r6
00829228  df a9 eb eb                                      bl #0x3139ac
0082922c  34 00 84 e2                                      add r0, r4, #0x34
00829230  dd a9 eb eb                                      bl #0x3139ac
00829234  20 30 9f e5                                      ldr r3, [pc, #0x20]
00829238  0c 00 84 e2                                      add r0, r4, #0xc
0082923c  03 30 95 e7                                      ldr r3, [r5, r3]
00829240  08 30 83 e2                                      add r3, r3, #8
00829244  08 30 84 e5                                      str r3, [r4, #8]
00829248  d7 a9 eb eb                                      bl #0x3139ac
0082924c  04 00 a0 e1                                      mov r0, r4
00829250  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00829254  84 b8 16 00 78 49 00 00 34 3d 00 00              .byte 0x84, 0xb8, 0x16, 0x00, 0x78, 0x49, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00

; FUNCTION 0x00829260, declared_size=208, range_size=208, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliableC2Ejb
; demangled: CBluetoothReliable::CBluetoothReliable(unsigned int, bool)
; decoder-mode: arm
00829260  70 40 2d e9                                      push {r4, r5, r6, lr}
00829264  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
00829268  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0082926c  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00829270  06 60 8f e0                                      add r6, pc, r6
00829274  02 20 96 e7                                      ldr r2, [r6, r2]
00829278  03 30 96 e7                                      ldr r3, [r6, r3]
0082927c  00 40 a0 e1                                      mov r4, r0
00829280  00 50 a0 e3                                      mov r5, #0
00829284  08 20 82 e2                                      add r2, r2, #8
00829288  08 10 83 e2                                      add r1, r3, #8
0082928c  0c 30 80 e2                                      add r3, r0, #0xc
00829290  00 20 80 e5                                      str r2, [r0]
00829294  08 10 80 e5                                      str r1, [r0, #8]
00829298  03 00 a0 e1                                      mov r0, r3
0082929c  1c 30 84 e5                                      str r3, [r4, #0x1c]
008292a0  20 30 84 e5                                      str r3, [r4, #0x20]
008292a4  04 50 84 e5                                      str r5, [r4, #4]
008292a8  10 10 a0 e3                                      mov r1, #0x10
008292ac  f2 a0 eb eb                                      bl #0x31167c
008292b0  74 20 9f e5                                      ldr r2, [pc, #0x74]
008292b4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
008292b8  34 30 84 e2                                      add r3, r4, #0x34
008292bc  02 20 96 e7                                      ldr r2, [r6, r2]
008292c0  00 50 c1 e5                                      strb r5, [r1]
008292c4  03 00 a0 e1                                      mov r0, r3
008292c8  08 20 82 e2                                      add r2, r2, #8
008292cc  08 20 84 e5                                      str r2, [r4, #8]
008292d0  44 30 84 e5                                      str r3, [r4, #0x44]
008292d4  48 30 84 e5                                      str r3, [r4, #0x48]
008292d8  2c 50 84 e5                                      str r5, [r4, #0x2c]
008292dc  30 50 c4 e5                                      strb r5, [r4, #0x30]
008292e0  10 10 a0 e3                                      mov r1, #0x10
008292e4  e4 a0 eb eb                                      bl #0x31167c
008292e8  44 20 94 e5                                      ldr r2, [r4, #0x44]
008292ec  50 30 84 e2                                      add r3, r4, #0x50
008292f0  03 00 a0 e1                                      mov r0, r3
008292f4  00 50 c2 e5                                      strb r5, [r2]
008292f8  10 10 a0 e3                                      mov r1, #0x10
008292fc  60 30 84 e5                                      str r3, [r4, #0x60]
00829300  64 30 84 e5                                      str r3, [r4, #0x64]
00829304  dc a0 eb eb                                      bl #0x31167c
00829308  60 30 94 e5                                      ldr r3, [r4, #0x60]
0082930c  6c 00 84 e2                                      add r0, r4, #0x6c
00829310  00 50 c3 e5                                      strb r5, [r3]
00829314  1a 4c ff eb                                      bl #0x7fc384
00829318  04 00 a0 e1                                      mov r0, r4
0082931c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00829320  20 b8 16 00 78 49 00 00 34 3d 00 00 94 11 00 00  .byte 0x20, 0xb8, 0x16, 0x00, 0x78, 0x49, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00, 0x94, 0x11, 0x00, 0x00

; FUNCTION 0x00829330, declared_size=208, range_size=208, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliableC1Ev
; demangled: CBluetoothReliable::CBluetoothReliable()
; decoder-mode: arm
00829330  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00829334  b0 70 9f e5                                      ldr r7, [pc, #0xb0]
00829338  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0082933c  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00829340  07 70 8f e0                                      add r7, pc, r7
00829344  02 20 97 e7                                      ldr r2, [r7, r2]
00829348  03 30 97 e7                                      ldr r3, [r7, r3]
0082934c  00 40 a0 e1                                      mov r4, r0
00829350  00 50 a0 e3                                      mov r5, #0
00829354  08 20 82 e2                                      add r2, r2, #8
00829358  08 10 83 e2                                      add r1, r3, #8
0082935c  0c 30 80 e2                                      add r3, r0, #0xc
00829360  0c d0 4d e2                                      sub sp, sp, #0xc
00829364  00 20 80 e5                                      str r2, [r0]
00829368  08 10 80 e5                                      str r1, [r0, #8]
0082936c  03 00 a0 e1                                      mov r0, r3
00829370  1c 30 84 e5                                      str r3, [r4, #0x1c]
00829374  20 30 84 e5                                      str r3, [r4, #0x20]
00829378  04 50 84 e5                                      str r5, [r4, #4]
0082937c  10 10 a0 e3                                      mov r1, #0x10
00829380  bd a0 eb eb                                      bl #0x31167c
00829384  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00829388  6c 60 9f e5                                      ldr r6, [pc, #0x6c]
0082938c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00829390  03 30 97 e7                                      ldr r3, [r7, r3]
00829394  06 60 8f e0                                      add r6, pc, r6
00829398  00 50 c2 e5                                      strb r5, [r2]
0082939c  08 30 83 e2                                      add r3, r3, #8
008293a0  08 30 84 e5                                      str r3, [r4, #8]
008293a4  06 10 a0 e1                                      mov r1, r6
008293a8  04 20 8d e2                                      add r2, sp, #4
008293ac  2c 50 84 e5                                      str r5, [r4, #0x2c]
008293b0  30 50 c4 e5                                      strb r5, [r4, #0x30]
008293b4  34 00 84 e2                                      add r0, r4, #0x34
008293b8  4b ab eb eb                                      bl #0x3140ec
008293bc  06 10 a0 e1                                      mov r1, r6
008293c0  0d 20 a0 e1                                      mov r2, sp
008293c4  4c 50 84 e5                                      str r5, [r4, #0x4c]
008293c8  50 00 84 e2                                      add r0, r4, #0x50
008293cc  46 ab eb eb                                      bl #0x3140ec
008293d0  6c 00 84 e2                                      add r0, r4, #0x6c
008293d4  69 50 c4 e5                                      strb r5, [r4, #0x69]
008293d8  68 50 c4 e5                                      strb r5, [r4, #0x68]
008293dc  e8 4b ff eb                                      bl #0x7fc384
008293e0  04 00 a0 e1                                      mov r0, r4
008293e4  0c d0 8d e2                                      add sp, sp, #0xc
008293e8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008293ec  50 b7 16 00 78 49 00 00 34 3d 00 00 94 11 00 00  .byte 0x50, 0xb7, 0x16, 0x00, 0x78, 0x49, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00, 0x94, 0x11, 0x00, 0x00
008293fc  74 24 0a 00                                      .byte 0x74, 0x24, 0x0a, 0x00

; FUNCTION 0x00829400, declared_size=204, range_size=204, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable6CreateESsSsi
; demangled: CBluetoothReliable::Create(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
; decoder-mode: arm
00829400  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00829404  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00829408  00 a0 a0 e1                                      mov sl, r0
0082940c  b4 00 9f e5                                      ldr r0, [pc, #0xb4]
00829410  03 30 8f e0                                      add r3, pc, r3
00829414  38 d0 4d e2                                      sub sp, sp, #0x38
00829418  00 70 93 e7                                      ldr r7, [r3, r0]
0082941c  01 80 a0 e1                                      mov r8, r1
00829420  88 00 a0 e3                                      mov r0, #0x88
00829424  00 c0 97 e5                                      ldr ip, [r7]
00829428  02 10 a0 e3                                      mov r1, #2
0082942c  02 90 a0 e1                                      mov sb, r2
00829430  34 c0 8d e5                                      str ip, [sp, #0x34]
00829434  4d 9c eb eb                                      bl #0x310570
00829438  00 60 a0 e1                                      mov r6, r0
0082943c  1c 40 8d e2                                      add r4, sp, #0x1c
00829440  ba ff ff eb                                      bl #0x829330
00829444  06 00 a0 e1                                      mov r0, r6
00829448  1d fe ff eb                                      bl #0x828cc4
0082944c  04 50 8d e2                                      add r5, sp, #4
00829450  10 20 9a e5                                      ldr r2, [sl, #0x10]
00829454  14 10 9a e5                                      ldr r1, [sl, #0x14]
00829458  04 00 a0 e1                                      mov r0, r4
0082945c  2c 40 8d e5                                      str r4, [sp, #0x2c]
00829460  30 40 8d e5                                      str r4, [sp, #0x30]
00829464  9f a0 eb eb                                      bl #0x3116e8
00829468  10 20 98 e5                                      ldr r2, [r8, #0x10]
0082946c  14 10 98 e5                                      ldr r1, [r8, #0x14]
00829470  05 00 a0 e1                                      mov r0, r5
00829474  14 50 8d e5                                      str r5, [sp, #0x14]
00829478  18 50 8d e5                                      str r5, [sp, #0x18]
0082947c  99 a0 eb eb                                      bl #0x3116e8
00829480  05 20 a0 e1                                      mov r2, r5
00829484  09 30 a0 e1                                      mov r3, sb
00829488  04 10 a0 e1                                      mov r1, r4
0082948c  06 00 a0 e1                                      mov r0, r6
00829490  70 fe ff eb                                      bl #0x828e58
00829494  05 00 a0 e1                                      mov r0, r5
00829498  43 a9 eb eb                                      bl #0x3139ac
0082949c  04 00 a0 e1                                      mov r0, r4
008294a0  41 a9 eb eb                                      bl #0x3139ac
008294a4  34 20 9d e5                                      ldr r2, [sp, #0x34]
008294a8  00 30 97 e5                                      ldr r3, [r7]
008294ac  06 00 a0 e1                                      mov r0, r6
008294b0  03 00 52 e1                                      cmp r2, r3
008294b4  01 00 00 1a                                      bne #0x8294c0
008294b8  38 d0 8d e2                                      add sp, sp, #0x38
008294bc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008294c0  92 93 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008294c4  80 b6 16 00 ac 40 00 00                          .byte 0x80, 0xb6, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008294cc, declared_size=248, range_size=248, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable19InitializeTransportEv
; demangled: CBluetoothReliable::InitializeTransport()
; decoder-mode: arm
008294cc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008294d0  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
008294d4  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
008294d8  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
008294dc  04 40 8f e0                                      add r4, pc, r4
008294e0  03 60 94 e7                                      ldr r6, [r4, r3]
008294e4  05 30 94 e7                                      ldr r3, [r4, r5]
008294e8  5c d0 4d e2                                      sub sp, sp, #0x5c
008294ec  00 20 d6 e5                                      ldrb r2, [r6]
008294f0  00 30 93 e5                                      ldr r3, [r3]
008294f4  00 00 52 e3                                      cmp r2, #0
008294f8  54 30 8d e5                                      str r3, [sp, #0x54]
008294fc  23 00 00 1a                                      bne #0x829590
00829500  04 a0 8d e2                                      add sl, sp, #4
00829504  0a 00 a0 e1                                      mov r0, sl
00829508  9d 4b ff eb                                      bl #0x7fc384
0082950c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00829510  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
00829514  24 70 8d e2                                      add r7, sp, #0x24
00829518  08 30 83 e3                                      orr r3, r3, #8
0082951c  01 10 8f e0                                      add r1, pc, r1
00829520  20 20 8d e2                                      add r2, sp, #0x20
00829524  07 00 a0 e1                                      mov r0, r7
00829528  1c 30 8d e5                                      str r3, [sp, #0x1c]
0082952c  ee aa eb eb                                      bl #0x3140ec
00829530  32 c5 ff eb                                      bl #0x81aa00
00829534  3c 80 8d e2                                      add r8, sp, #0x3c
00829538  00 30 90 e5                                      ldr r3, [r0]
0082953c  0a 20 a0 e1                                      mov r2, sl
00829540  00 10 a0 e1                                      mov r1, r0
00829544  08 00 a0 e1                                      mov r0, r8
00829548  0f e0 a0 e1                                      mov lr, pc
0082954c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00829550  08 10 a0 e1                                      mov r1, r8
00829554  01 20 a0 e3                                      mov r2, #1
00829558  07 00 a0 e1                                      mov r0, r7
0082955c  a7 ff ff eb                                      bl #0x829400
00829560  00 a0 a0 e1                                      mov sl, r0
00829564  08 00 a0 e1                                      mov r0, r8
00829568  0f a9 eb eb                                      bl #0x3139ac
0082956c  07 00 a0 e1                                      mov r0, r7
00829570  0d a9 eb eb                                      bl #0x3139ac
00829574  0a 00 a0 e1                                      mov r0, sl
00829578  d1 fd ff eb                                      bl #0x828cc4
0082957c  1f c5 ff eb                                      bl #0x81aa00
00829580  0a 10 a0 e1                                      mov r1, sl
00829584  ce c7 ff eb                                      bl #0x81b4c4
00829588  01 30 a0 e3                                      mov r3, #1
0082958c  00 30 c6 e5                                      strb r3, [r6]
00829590  05 30 94 e7                                      ldr r3, [r4, r5]
00829594  54 20 9d e5                                      ldr r2, [sp, #0x54]
00829598  00 00 a0 e3                                      mov r0, #0
0082959c  00 30 93 e5                                      ldr r3, [r3]
008295a0  03 00 52 e1                                      cmp r2, r3
008295a4  01 00 00 1a                                      bne #0x8295b0
008295a8  5c d0 8d e2                                      add sp, sp, #0x5c
008295ac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008295b0  56 93 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008295b4  b4 b5 16 00 24 2a 00 00 ac 40 00 00 74 2e 0e 00  .byte 0xb4, 0xb5, 0x16, 0x00, 0x24, 0x2a, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x74, 0x2e, 0x0e, 0x00

; FUNCTION 0x008295c4, declared_size=208, range_size=208, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliableC1Ejb
; demangled: CBluetoothReliable::CBluetoothReliable(unsigned int, bool)
; decoder-mode: arm
008295c4  70 40 2d e9                                      push {r4, r5, r6, lr}
008295c8  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
008295cc  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
008295d0  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
008295d4  06 60 8f e0                                      add r6, pc, r6
008295d8  02 20 96 e7                                      ldr r2, [r6, r2]
008295dc  03 30 96 e7                                      ldr r3, [r6, r3]
008295e0  00 40 a0 e1                                      mov r4, r0
008295e4  00 50 a0 e3                                      mov r5, #0
008295e8  08 20 82 e2                                      add r2, r2, #8
008295ec  08 10 83 e2                                      add r1, r3, #8
008295f0  0c 30 80 e2                                      add r3, r0, #0xc
008295f4  00 20 80 e5                                      str r2, [r0]
008295f8  08 10 80 e5                                      str r1, [r0, #8]
008295fc  03 00 a0 e1                                      mov r0, r3
00829600  1c 30 84 e5                                      str r3, [r4, #0x1c]
00829604  20 30 84 e5                                      str r3, [r4, #0x20]
00829608  04 50 84 e5                                      str r5, [r4, #4]
0082960c  10 10 a0 e3                                      mov r1, #0x10
00829610  19 a0 eb eb                                      bl #0x31167c
00829614  74 20 9f e5                                      ldr r2, [pc, #0x74]
00829618  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0082961c  34 30 84 e2                                      add r3, r4, #0x34
00829620  02 20 96 e7                                      ldr r2, [r6, r2]
00829624  00 50 c1 e5                                      strb r5, [r1]
00829628  03 00 a0 e1                                      mov r0, r3
0082962c  08 20 82 e2                                      add r2, r2, #8
00829630  08 20 84 e5                                      str r2, [r4, #8]
00829634  44 30 84 e5                                      str r3, [r4, #0x44]
00829638  48 30 84 e5                                      str r3, [r4, #0x48]
0082963c  2c 50 84 e5                                      str r5, [r4, #0x2c]
00829640  30 50 c4 e5                                      strb r5, [r4, #0x30]
00829644  10 10 a0 e3                                      mov r1, #0x10
00829648  0b a0 eb eb                                      bl #0x31167c
0082964c  44 20 94 e5                                      ldr r2, [r4, #0x44]
00829650  50 30 84 e2                                      add r3, r4, #0x50
00829654  03 00 a0 e1                                      mov r0, r3
00829658  00 50 c2 e5                                      strb r5, [r2]
0082965c  10 10 a0 e3                                      mov r1, #0x10
00829660  60 30 84 e5                                      str r3, [r4, #0x60]
00829664  64 30 84 e5                                      str r3, [r4, #0x64]
00829668  03 a0 eb eb                                      bl #0x31167c
0082966c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00829670  6c 00 84 e2                                      add r0, r4, #0x6c
00829674  00 50 c3 e5                                      strb r5, [r3]
00829678  41 4b ff eb                                      bl #0x7fc384
0082967c  04 00 a0 e1                                      mov r0, r4
00829680  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00829684  bc b4 16 00 78 49 00 00 34 3d 00 00 94 11 00 00  .byte 0xbc, 0xb4, 0x16, 0x00, 0x78, 0x49, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00, 0x94, 0x11, 0x00, 0x00

; FUNCTION 0x00829694, declared_size=40, range_size=40, mode=arm
; class-group: CBluetoothReliable
; alias: _ZN18CBluetoothReliable17GetLocalNetworkIdEv
; demangled: CBluetoothReliable::GetLocalNetworkId()
; decoder-mode: arm
00829694  10 40 2d e9                                      push {r4, lr}
00829698  00 40 a0 e1                                      mov r4, r0
0082969c  38 4b ff eb                                      bl #0x7fc384
008296a0  18 30 94 e5                                      ldr r3, [r4, #0x18]
008296a4  00 20 a0 e3                                      mov r2, #0
008296a8  14 20 84 e5                                      str r2, [r4, #0x14]
008296ac  08 30 83 e3                                      orr r3, r3, #8
008296b0  18 30 84 e5                                      str r3, [r4, #0x18]
008296b4  04 00 a0 e1                                      mov r0, r4
008296b8  10 80 bd e8                                      pop {r4, pc}
