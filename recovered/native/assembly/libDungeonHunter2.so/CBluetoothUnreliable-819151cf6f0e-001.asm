; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008296bc, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable7GetTypeEv
; demangled: CBluetoothUnreliable::GetType()
; decoder-mode: arm
008296bc  03 00 a0 e3                                      mov r0, #3
008296c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008296c4, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable17CanDisconnectFromER10CNetworkId
; demangled: CBluetoothUnreliable::CanDisconnectFrom(CNetworkId&)
; decoder-mode: arm
008296c4  00 00 a0 e3                                      mov r0, #0
008296c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008296cc, declared_size=28, range_size=28, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable10InitializeEv
; demangled: CBluetoothUnreliable::Initialize()
; decoder-mode: arm
008296cc  68 30 d0 e5                                      ldrb r3, [r0, #0x68]
008296d0  00 00 53 e3                                      cmp r3, #0
008296d4  01 20 a0 03                                      moveq r2, #1
008296d8  68 20 c0 05                                      strbeq r2, [r0, #0x68]
008296dc  00 00 e0 13                                      mvnne r0, #0
008296e0  03 00 a0 01                                      moveq r0, r3
008296e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008296e8, declared_size=28, range_size=28, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable10DisconnectEv
; demangled: CBluetoothUnreliable::Disconnect()
; decoder-mode: arm
008296e8  68 30 d0 e5                                      ldrb r3, [r0, #0x68]
008296ec  00 00 53 e3                                      cmp r3, #0
008296f0  00 30 a0 13                                      movne r3, #0
008296f4  68 30 c0 15                                      strbne r3, [r0, #0x68]
008296f8  00 00 e0 03                                      mvneq r0, #0
008296fc  03 00 a0 11                                      movne r0, r3
00829700  1e ff 2f e1                                      bx lr

; FUNCTION 0x00829704, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable11IsConnectedEv
; demangled: CBluetoothUnreliable::IsConnected()
; decoder-mode: arm
00829704  00 00 a0 e3                                      mov r0, #0
00829708  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082970c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable13IsConnectedToER10CNetworkId
; demangled: CBluetoothUnreliable::IsConnectedTo(CNetworkId&)
; decoder-mode: arm
0082970c  00 00 a0 e3                                      mov r0, #0
00829710  1e ff 2f e1                                      bx lr

; FUNCTION 0x00829714, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable6IsPeerEv
; demangled: CBluetoothUnreliable::IsPeer()
; decoder-mode: arm
00829714  00 00 a0 e3                                      mov r0, #0
00829718  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082971c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable8IsClientEv
; demangled: CBluetoothUnreliable::IsClient()
; decoder-mode: arm
0082971c  00 00 a0 e3                                      mov r0, #0
00829720  1e ff 2f e1                                      bx lr

; FUNCTION 0x00829724, declared_size=64, range_size=64, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable11IsListeningEv
; demangled: CBluetoothUnreliable::IsListening()
; decoder-mode: arm
00829724  10 40 2d e9                                      push {r4, lr}
00829728  68 30 d0 e5                                      ldrb r3, [r0, #0x68]
0082972c  00 40 a0 e1                                      mov r4, r0
00829730  00 00 53 e3                                      cmp r3, #0
00829734  01 00 00 1a                                      bne #0x829740
00829738  00 00 a0 e3                                      mov r0, #0
0082973c  10 80 bd e8                                      pop {r4, pc}
00829740  08 30 90 e5                                      ldr r3, [r0, #8]
00829744  08 00 80 e2                                      add r0, r0, #8
00829748  0f e0 a0 e1                                      mov lr, pc
0082974c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00829750  00 00 50 e3                                      cmp r0, #0
00829754  f7 ff ff 0a                                      beq #0x829738
00829758  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0082975c  01 00 00 e2                                      and r0, r0, #1
00829760  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00829764, declared_size=4, range_size=4, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable14StartBroadcastEv
; demangled: CBluetoothUnreliable::StartBroadcast()
; decoder-mode: arm
00829764  1e ff 2f e1                                      bx lr

; FUNCTION 0x00829768, declared_size=4, range_size=4, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable13StopBroadcastEv
; demangled: CBluetoothUnreliable::StopBroadcast()
; decoder-mode: arm
00829768  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082976c, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable4SendER10CNetworkIdPvi
; demangled: CBluetoothUnreliable::Send(CNetworkId&, void*, int)
; decoder-mode: arm
0082976c  00 00 e0 e3                                      mvn r0, #0
00829770  1e ff 2f e1                                      bx lr

; FUNCTION 0x00829774, declared_size=8, range_size=8, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable7ReceiveEv
; demangled: CBluetoothUnreliable::Receive()
; decoder-mode: arm
00829774  00 00 e0 e3                                      mvn r0, #0
00829778  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082977c, declared_size=4, range_size=4, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable7SetModeE19_tBLUETOOTH_SESSION
; demangled: CBluetoothUnreliable::SetMode(_tBLUETOOTH_SESSION)
; decoder-mode: arm
0082977c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00829780, declared_size=40, range_size=40, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable18TerminateTransportEv
; demangled: CBluetoothUnreliable::TerminateTransport()
; decoder-mode: arm
00829780  18 10 9f e5                                      ldr r1, [pc, #0x18]
00829784  18 20 9f e5                                      ldr r2, [pc, #0x18]
00829788  00 30 a0 e3                                      mov r3, #0
0082978c  01 10 8f e0                                      add r1, pc, r1
00829790  02 20 91 e7                                      ldr r2, [r1, r2]
00829794  03 00 a0 e1                                      mov r0, r3
00829798  00 30 c2 e5                                      strb r3, [r2]
0082979c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008297a0  04 b3 16 00 a8 30 00 00                          .byte 0x04, 0xb3, 0x16, 0x00, 0xa8, 0x30, 0x00, 0x00

; FUNCTION 0x008297a8, declared_size=80, range_size=80, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable17AcceptConnectionsEv
; demangled: CBluetoothUnreliable::AcceptConnections()
; decoder-mode: arm
008297a8  10 40 2d e9                                      push {r4, lr}
008297ac  30 30 d0 e5                                      ldrb r3, [r0, #0x30]
008297b0  00 40 a0 e1                                      mov r4, r0
008297b4  00 00 53 e3                                      cmp r3, #0
008297b8  01 00 00 1a                                      bne #0x8297c4
008297bc  00 00 a0 e3                                      mov r0, #0
008297c0  10 80 bd e8                                      pop {r4, pc}
008297c4  08 30 90 e5                                      ldr r3, [r0, #8]
008297c8  08 00 80 e2                                      add r0, r0, #8
008297cc  0f e0 a0 e1                                      mov lr, pc
008297d0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008297d4  00 00 50 e3                                      cmp r0, #0
008297d8  f7 ff ff 0a                                      beq #0x8297bc
008297dc  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
008297e0  01 00 13 e3                                      tst r3, #1
008297e4  f4 ff ff 0a                                      beq #0x8297bc
008297e8  04 10 a0 e1                                      mov r1, r4
008297ec  03 00 a0 e3                                      mov r0, #3
008297f0  4d c7 ff eb                                      bl #0x81b52c
008297f4  f0 ff ff ea                                      b #0x8297bc

; FUNCTION 0x008297f8, declared_size=104, range_size=104, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable7ConnectER10CNetworkId
; demangled: CBluetoothUnreliable::Connect(CNetworkId&)
; decoder-mode: arm
008297f8  70 40 2d e9                                      push {r4, r5, r6, lr}
008297fc  68 30 d0 e5                                      ldrb r3, [r0, #0x68]
00829800  00 60 a0 e1                                      mov r6, r0
00829804  01 40 a0 e1                                      mov r4, r1
00829808  00 00 53 e3                                      cmp r3, #0
0082980c  00 50 e0 03                                      mvneq r5, #0
00829810  01 00 00 1a                                      bne #0x82981c
00829814  05 00 a0 e1                                      mov r0, r5
00829818  70 80 bd e8                                      pop {r4, r5, r6, pc}
0082981c  00 30 90 e5                                      ldr r3, [r0]
00829820  0f e0 a0 e1                                      mov lr, pc
00829824  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00829828  00 50 50 e2                                      subs r5, r0, #0
0082982c  08 00 00 1a                                      bne #0x829854
00829830  6c c0 86 e2                                      add ip, r6, #0x6c
00829834  0c 00 54 e1                                      cmp r4, ip
00829838  05 00 00 0a                                      beq #0x829854
0082983c  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00829840  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00829844  07 00 94 e8                                      ldm r4, {r0, r1, r2}
00829848  07 00 8c e8                                      stm ip, {r0, r1, r2}
0082984c  05 00 a0 e1                                      mov r0, r5
00829850  70 80 bd e8                                      pop {r4, r5, r6, pc}
00829854  00 50 a0 e3                                      mov r5, #0
00829858  05 00 a0 e1                                      mov r0, r5
0082985c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00829860, declared_size=112, range_size=112, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable4OpenESsSsi
; demangled: CBluetoothUnreliable::Open(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
; decoder-mode: arm
00829860  60 20 9f e5                                      ldr r2, [pc, #0x60]
00829864  60 c0 9f e5                                      ldr ip, [pc, #0x60]
00829868  30 40 2d e9                                      push {r4, r5, lr}
0082986c  02 20 8f e0                                      add r2, pc, r2
00829870  0c 50 92 e7                                      ldr r5, [r2, ip]
00829874  24 d0 4d e2                                      sub sp, sp, #0x24
00829878  04 40 8d e2                                      add r4, sp, #4
0082987c  00 20 95 e5                                      ldr r2, [r5]
00829880  1c 20 8d e5                                      str r2, [sp, #0x1c]
00829884  04 30 80 e5                                      str r3, [r0, #4]
00829888  10 20 91 e5                                      ldr r2, [r1, #0x10]
0082988c  04 00 a0 e1                                      mov r0, r4
00829890  14 10 91 e5                                      ldr r1, [r1, #0x14]
00829894  14 40 8d e5                                      str r4, [sp, #0x14]
00829898  18 40 8d e5                                      str r4, [sp, #0x18]
0082989c  91 9f eb eb                                      bl #0x3116e8
008298a0  04 00 a0 e1                                      mov r0, r4
008298a4  40 a8 eb eb                                      bl #0x3139ac
008298a8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
008298ac  00 30 95 e5                                      ldr r3, [r5]
008298b0  00 00 a0 e3                                      mov r0, #0
008298b4  03 00 52 e1                                      cmp r2, r3
008298b8  01 00 00 1a                                      bne #0x8298c4
008298bc  24 d0 8d e2                                      add sp, sp, #0x24
008298c0  30 80 bd e8                                      pop {r4, r5, pc}
008298c4  91 92 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008298c8  24 b2 16 00 ac 40 00 00                          .byte 0x24, 0xb2, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008298d0, declared_size=176, range_size=176, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable6ListenESsSs
; demangled: CBluetoothUnreliable::Listen(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
008298d0  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
008298d4  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
008298d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008298dc  03 30 8f e0                                      add r3, pc, r3
008298e0  0c 60 93 e7                                      ldr r6, [r3, ip]
008298e4  38 d0 4d e2                                      sub sp, sp, #0x38
008298e8  1c 40 8d e2                                      add r4, sp, #0x1c
008298ec  00 c0 96 e5                                      ldr ip, [r6]
008298f0  04 50 8d e2                                      add r5, sp, #4
008298f4  02 70 a0 e1                                      mov r7, r2
008298f8  00 80 a0 e1                                      mov r8, r0
008298fc  10 20 91 e5                                      ldr r2, [r1, #0x10]
00829900  04 00 a0 e1                                      mov r0, r4
00829904  14 10 91 e5                                      ldr r1, [r1, #0x14]
00829908  34 c0 8d e5                                      str ip, [sp, #0x34]
0082990c  2c 40 8d e5                                      str r4, [sp, #0x2c]
00829910  30 40 8d e5                                      str r4, [sp, #0x30]
00829914  73 9f eb eb                                      bl #0x3116e8
00829918  10 20 97 e5                                      ldr r2, [r7, #0x10]
0082991c  14 10 97 e5                                      ldr r1, [r7, #0x14]
00829920  05 00 a0 e1                                      mov r0, r5
00829924  14 50 8d e5                                      str r5, [sp, #0x14]
00829928  18 50 8d e5                                      str r5, [sp, #0x18]
0082992c  6d 9f eb eb                                      bl #0x3116e8
00829930  05 20 a0 e1                                      mov r2, r5
00829934  01 30 a0 e3                                      mov r3, #1
00829938  04 10 a0 e1                                      mov r1, r4
0082993c  08 00 a0 e1                                      mov r0, r8
00829940  c6 ff ff eb                                      bl #0x829860
00829944  00 70 a0 e1                                      mov r7, r0
00829948  05 00 a0 e1                                      mov r0, r5
0082994c  16 a8 eb eb                                      bl #0x3139ac
00829950  04 00 a0 e1                                      mov r0, r4
00829954  14 a8 eb eb                                      bl #0x3139ac
00829958  34 20 9d e5                                      ldr r2, [sp, #0x34]
0082995c  00 30 96 e5                                      ldr r3, [r6]
00829960  07 00 a0 e1                                      mov r0, r7
00829964  03 00 52 e1                                      cmp r2, r3
00829968  01 00 00 1a                                      bne #0x829974
0082996c  38 d0 8d e2                                      add sp, sp, #0x38
00829970  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00829974  65 92 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00829978  b4 b1 16 00 ac 40 00 00                          .byte 0xb4, 0xb1, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00829980, declared_size=208, range_size=208, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliableC2Ev
; demangled: CBluetoothUnreliable::CBluetoothUnreliable()
; decoder-mode: arm
00829980  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00829984  b0 70 9f e5                                      ldr r7, [pc, #0xb0]
00829988  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0082998c  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00829990  07 70 8f e0                                      add r7, pc, r7
00829994  02 20 97 e7                                      ldr r2, [r7, r2]
00829998  03 30 97 e7                                      ldr r3, [r7, r3]
0082999c  00 40 a0 e1                                      mov r4, r0
008299a0  00 50 a0 e3                                      mov r5, #0
008299a4  08 20 82 e2                                      add r2, r2, #8
008299a8  08 10 83 e2                                      add r1, r3, #8
008299ac  0c 30 80 e2                                      add r3, r0, #0xc
008299b0  0c d0 4d e2                                      sub sp, sp, #0xc
008299b4  00 20 80 e5                                      str r2, [r0]
008299b8  08 10 80 e5                                      str r1, [r0, #8]
008299bc  03 00 a0 e1                                      mov r0, r3
008299c0  1c 30 84 e5                                      str r3, [r4, #0x1c]
008299c4  20 30 84 e5                                      str r3, [r4, #0x20]
008299c8  04 50 84 e5                                      str r5, [r4, #4]
008299cc  10 10 a0 e3                                      mov r1, #0x10
008299d0  29 9f eb eb                                      bl #0x31167c
008299d4  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
008299d8  6c 60 9f e5                                      ldr r6, [pc, #0x6c]
008299dc  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
008299e0  03 30 97 e7                                      ldr r3, [r7, r3]
008299e4  06 60 8f e0                                      add r6, pc, r6
008299e8  00 50 c2 e5                                      strb r5, [r2]
008299ec  08 30 83 e2                                      add r3, r3, #8
008299f0  08 30 84 e5                                      str r3, [r4, #8]
008299f4  06 10 a0 e1                                      mov r1, r6
008299f8  04 20 8d e2                                      add r2, sp, #4
008299fc  2c 50 84 e5                                      str r5, [r4, #0x2c]
00829a00  30 50 c4 e5                                      strb r5, [r4, #0x30]
00829a04  34 00 84 e2                                      add r0, r4, #0x34
00829a08  b7 a9 eb eb                                      bl #0x3140ec
00829a0c  06 10 a0 e1                                      mov r1, r6
00829a10  0d 20 a0 e1                                      mov r2, sp
00829a14  4c 50 84 e5                                      str r5, [r4, #0x4c]
00829a18  50 00 84 e2                                      add r0, r4, #0x50
00829a1c  b2 a9 eb eb                                      bl #0x3140ec
00829a20  6c 00 84 e2                                      add r0, r4, #0x6c
00829a24  69 50 c4 e5                                      strb r5, [r4, #0x69]
00829a28  68 50 c4 e5                                      strb r5, [r4, #0x68]
00829a2c  54 4a ff eb                                      bl #0x7fc384
00829a30  04 00 a0 e1                                      mov r0, r4
00829a34  0c d0 8d e2                                      add sp, sp, #0xc
00829a38  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00829a3c  00 b1 16 00 b0 34 00 00 34 3d 00 00 94 11 00 00  .byte 0x00, 0xb1, 0x16, 0x00, 0xb0, 0x34, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00, 0x94, 0x11, 0x00, 0x00
00829a4c  24 1e 0a 00                                      .byte 0x24, 0x1e, 0x0a, 0x00

; FUNCTION 0x00829a50, declared_size=40, range_size=40, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable16GetPeerNetworkIdEv
; demangled: CBluetoothUnreliable::GetPeerNetworkId()
; decoder-mode: arm
00829a50  10 40 2d e9                                      push {r4, lr}
00829a54  00 40 a0 e1                                      mov r4, r0
00829a58  49 4a ff eb                                      bl #0x7fc384
00829a5c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00829a60  00 20 a0 e3                                      mov r2, #0
00829a64  10 20 84 e5                                      str r2, [r4, #0x10]
00829a68  04 30 83 e3                                      orr r3, r3, #4
00829a6c  18 30 84 e5                                      str r3, [r4, #0x18]
00829a70  04 00 a0 e1                                      mov r0, r4
00829a74  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00829a78, declared_size=100, range_size=100, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliableD1Ev
; demangled: CBluetoothUnreliable::~CBluetoothUnreliable()
; decoder-mode: arm
00829a78  70 40 2d e9                                      push {r4, r5, r6, lr}
00829a7c  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
00829a80  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00829a84  00 60 a0 e1                                      mov r6, r0
00829a88  05 50 8f e0                                      add r5, pc, r5
00829a8c  03 30 95 e7                                      ldr r3, [r5, r3]
00829a90  00 40 a0 e1                                      mov r4, r0
00829a94  08 30 83 e2                                      add r3, r3, #8
00829a98  50 30 86 e4                                      str r3, [r6], #0x50
00829a9c  77 ec ff eb                                      bl #0x824c80
00829aa0  06 00 a0 e1                                      mov r0, r6
00829aa4  c0 a7 eb eb                                      bl #0x3139ac
00829aa8  34 00 84 e2                                      add r0, r4, #0x34
00829aac  be a7 eb eb                                      bl #0x3139ac
00829ab0  20 30 9f e5                                      ldr r3, [pc, #0x20]
00829ab4  0c 00 84 e2                                      add r0, r4, #0xc
00829ab8  03 30 95 e7                                      ldr r3, [r5, r3]
00829abc  08 30 83 e2                                      add r3, r3, #8
00829ac0  08 30 84 e5                                      str r3, [r4, #8]
00829ac4  b8 a7 eb eb                                      bl #0x3139ac
00829ac8  04 00 a0 e1                                      mov r0, r4
00829acc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00829ad0  08 b0 16 00 b0 34 00 00 34 3d 00 00              .byte 0x08, 0xb0, 0x16, 0x00, 0xb0, 0x34, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00

; FUNCTION 0x00829adc, declared_size=28, range_size=28, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliableD0Ev
; demangled: CBluetoothUnreliable::~CBluetoothUnreliable()
; decoder-mode: arm
00829adc  10 40 2d e9                                      push {r4, lr}
00829ae0  00 40 a0 e1                                      mov r4, r0
00829ae4  e3 ff ff eb                                      bl #0x829a78
00829ae8  04 00 a0 e1                                      mov r0, r4
00829aec  53 9a eb eb                                      bl #0x310440
00829af0  04 00 a0 e1                                      mov r0, r4
00829af4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00829af8, declared_size=100, range_size=100, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliableD2Ev
; demangled: CBluetoothUnreliable::~CBluetoothUnreliable()
; decoder-mode: arm
00829af8  70 40 2d e9                                      push {r4, r5, r6, lr}
00829afc  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
00829b00  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00829b04  00 60 a0 e1                                      mov r6, r0
00829b08  05 50 8f e0                                      add r5, pc, r5
00829b0c  03 30 95 e7                                      ldr r3, [r5, r3]
00829b10  00 40 a0 e1                                      mov r4, r0
00829b14  08 30 83 e2                                      add r3, r3, #8
00829b18  50 30 86 e4                                      str r3, [r6], #0x50
00829b1c  57 ec ff eb                                      bl #0x824c80
00829b20  06 00 a0 e1                                      mov r0, r6
00829b24  a0 a7 eb eb                                      bl #0x3139ac
00829b28  34 00 84 e2                                      add r0, r4, #0x34
00829b2c  9e a7 eb eb                                      bl #0x3139ac
00829b30  20 30 9f e5                                      ldr r3, [pc, #0x20]
00829b34  0c 00 84 e2                                      add r0, r4, #0xc
00829b38  03 30 95 e7                                      ldr r3, [r5, r3]
00829b3c  08 30 83 e2                                      add r3, r3, #8
00829b40  08 30 84 e5                                      str r3, [r4, #8]
00829b44  98 a7 eb eb                                      bl #0x3139ac
00829b48  04 00 a0 e1                                      mov r0, r4
00829b4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00829b50  88 af 16 00 b0 34 00 00 34 3d 00 00              .byte 0x88, 0xaf, 0x16, 0x00, 0xb0, 0x34, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00

; FUNCTION 0x00829b5c, declared_size=208, range_size=208, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliableC2Ejb
; demangled: CBluetoothUnreliable::CBluetoothUnreliable(unsigned int, bool)
; decoder-mode: arm
00829b5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00829b60  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
00829b64  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
00829b68  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00829b6c  06 60 8f e0                                      add r6, pc, r6
00829b70  02 20 96 e7                                      ldr r2, [r6, r2]
00829b74  03 30 96 e7                                      ldr r3, [r6, r3]
00829b78  00 40 a0 e1                                      mov r4, r0
00829b7c  00 50 a0 e3                                      mov r5, #0
00829b80  08 20 82 e2                                      add r2, r2, #8
00829b84  08 10 83 e2                                      add r1, r3, #8
00829b88  0c 30 80 e2                                      add r3, r0, #0xc
00829b8c  00 20 80 e5                                      str r2, [r0]
00829b90  08 10 80 e5                                      str r1, [r0, #8]
00829b94  03 00 a0 e1                                      mov r0, r3
00829b98  1c 30 84 e5                                      str r3, [r4, #0x1c]
00829b9c  20 30 84 e5                                      str r3, [r4, #0x20]
00829ba0  04 50 84 e5                                      str r5, [r4, #4]
00829ba4  10 10 a0 e3                                      mov r1, #0x10
00829ba8  b3 9e eb eb                                      bl #0x31167c
00829bac  74 20 9f e5                                      ldr r2, [pc, #0x74]
00829bb0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00829bb4  34 30 84 e2                                      add r3, r4, #0x34
00829bb8  02 20 96 e7                                      ldr r2, [r6, r2]
00829bbc  00 50 c1 e5                                      strb r5, [r1]
00829bc0  03 00 a0 e1                                      mov r0, r3
00829bc4  08 20 82 e2                                      add r2, r2, #8
00829bc8  08 20 84 e5                                      str r2, [r4, #8]
00829bcc  44 30 84 e5                                      str r3, [r4, #0x44]
00829bd0  48 30 84 e5                                      str r3, [r4, #0x48]
00829bd4  2c 50 84 e5                                      str r5, [r4, #0x2c]
00829bd8  30 50 c4 e5                                      strb r5, [r4, #0x30]
00829bdc  10 10 a0 e3                                      mov r1, #0x10
00829be0  a5 9e eb eb                                      bl #0x31167c
00829be4  44 20 94 e5                                      ldr r2, [r4, #0x44]
00829be8  50 30 84 e2                                      add r3, r4, #0x50
00829bec  03 00 a0 e1                                      mov r0, r3
00829bf0  00 50 c2 e5                                      strb r5, [r2]
00829bf4  10 10 a0 e3                                      mov r1, #0x10
00829bf8  60 30 84 e5                                      str r3, [r4, #0x60]
00829bfc  64 30 84 e5                                      str r3, [r4, #0x64]
00829c00  9d 9e eb eb                                      bl #0x31167c
00829c04  60 30 94 e5                                      ldr r3, [r4, #0x60]
00829c08  6c 00 84 e2                                      add r0, r4, #0x6c
00829c0c  00 50 c3 e5                                      strb r5, [r3]
00829c10  db 49 ff eb                                      bl #0x7fc384
00829c14  04 00 a0 e1                                      mov r0, r4
00829c18  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00829c1c  24 af 16 00 b0 34 00 00 34 3d 00 00 94 11 00 00  .byte 0x24, 0xaf, 0x16, 0x00, 0xb0, 0x34, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00, 0x94, 0x11, 0x00, 0x00

; FUNCTION 0x00829c2c, declared_size=208, range_size=208, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliableC1Ev
; demangled: CBluetoothUnreliable::CBluetoothUnreliable()
; decoder-mode: arm
00829c2c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00829c30  b0 70 9f e5                                      ldr r7, [pc, #0xb0]
00829c34  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
00829c38  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00829c3c  07 70 8f e0                                      add r7, pc, r7
00829c40  02 20 97 e7                                      ldr r2, [r7, r2]
00829c44  03 30 97 e7                                      ldr r3, [r7, r3]
00829c48  00 40 a0 e1                                      mov r4, r0
00829c4c  00 50 a0 e3                                      mov r5, #0
00829c50  08 20 82 e2                                      add r2, r2, #8
00829c54  08 10 83 e2                                      add r1, r3, #8
00829c58  0c 30 80 e2                                      add r3, r0, #0xc
00829c5c  0c d0 4d e2                                      sub sp, sp, #0xc
00829c60  00 20 80 e5                                      str r2, [r0]
00829c64  08 10 80 e5                                      str r1, [r0, #8]
00829c68  03 00 a0 e1                                      mov r0, r3
00829c6c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00829c70  20 30 84 e5                                      str r3, [r4, #0x20]
00829c74  04 50 84 e5                                      str r5, [r4, #4]
00829c78  10 10 a0 e3                                      mov r1, #0x10
00829c7c  7e 9e eb eb                                      bl #0x31167c
00829c80  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00829c84  6c 60 9f e5                                      ldr r6, [pc, #0x6c]
00829c88  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00829c8c  03 30 97 e7                                      ldr r3, [r7, r3]
00829c90  06 60 8f e0                                      add r6, pc, r6
00829c94  00 50 c2 e5                                      strb r5, [r2]
00829c98  08 30 83 e2                                      add r3, r3, #8
00829c9c  08 30 84 e5                                      str r3, [r4, #8]
00829ca0  06 10 a0 e1                                      mov r1, r6
00829ca4  04 20 8d e2                                      add r2, sp, #4
00829ca8  2c 50 84 e5                                      str r5, [r4, #0x2c]
00829cac  30 50 c4 e5                                      strb r5, [r4, #0x30]
00829cb0  34 00 84 e2                                      add r0, r4, #0x34
00829cb4  0c a9 eb eb                                      bl #0x3140ec
00829cb8  06 10 a0 e1                                      mov r1, r6
00829cbc  0d 20 a0 e1                                      mov r2, sp
00829cc0  4c 50 84 e5                                      str r5, [r4, #0x4c]
00829cc4  50 00 84 e2                                      add r0, r4, #0x50
00829cc8  07 a9 eb eb                                      bl #0x3140ec
00829ccc  6c 00 84 e2                                      add r0, r4, #0x6c
00829cd0  69 50 c4 e5                                      strb r5, [r4, #0x69]
00829cd4  68 50 c4 e5                                      strb r5, [r4, #0x68]
00829cd8  a9 49 ff eb                                      bl #0x7fc384
00829cdc  04 00 a0 e1                                      mov r0, r4
00829ce0  0c d0 8d e2                                      add sp, sp, #0xc
00829ce4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00829ce8  54 ae 16 00 b0 34 00 00 34 3d 00 00 94 11 00 00  .byte 0x54, 0xae, 0x16, 0x00, 0xb0, 0x34, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00, 0x94, 0x11, 0x00, 0x00
00829cf8  78 1b 0a 00                                      .byte 0x78, 0x1b, 0x0a, 0x00

; FUNCTION 0x00829cfc, declared_size=204, range_size=204, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable6CreateESsSsi
; demangled: CBluetoothUnreliable::Create(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
; decoder-mode: arm
00829cfc  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00829d00  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00829d04  00 a0 a0 e1                                      mov sl, r0
00829d08  b4 00 9f e5                                      ldr r0, [pc, #0xb4]
00829d0c  03 30 8f e0                                      add r3, pc, r3
00829d10  38 d0 4d e2                                      sub sp, sp, #0x38
00829d14  00 70 93 e7                                      ldr r7, [r3, r0]
00829d18  01 80 a0 e1                                      mov r8, r1
00829d1c  88 00 a0 e3                                      mov r0, #0x88
00829d20  00 c0 97 e5                                      ldr ip, [r7]
00829d24  02 10 a0 e3                                      mov r1, #2
00829d28  02 90 a0 e1                                      mov sb, r2
00829d2c  34 c0 8d e5                                      str ip, [sp, #0x34]
00829d30  0e 9a eb eb                                      bl #0x310570
00829d34  00 60 a0 e1                                      mov r6, r0
00829d38  1c 40 8d e2                                      add r4, sp, #0x1c
00829d3c  ba ff ff eb                                      bl #0x829c2c
00829d40  06 00 a0 e1                                      mov r0, r6
00829d44  60 fe ff eb                                      bl #0x8296cc
00829d48  04 50 8d e2                                      add r5, sp, #4
00829d4c  10 20 9a e5                                      ldr r2, [sl, #0x10]
00829d50  14 10 9a e5                                      ldr r1, [sl, #0x14]
00829d54  04 00 a0 e1                                      mov r0, r4
00829d58  2c 40 8d e5                                      str r4, [sp, #0x2c]
00829d5c  30 40 8d e5                                      str r4, [sp, #0x30]
00829d60  60 9e eb eb                                      bl #0x3116e8
00829d64  10 20 98 e5                                      ldr r2, [r8, #0x10]
00829d68  14 10 98 e5                                      ldr r1, [r8, #0x14]
00829d6c  05 00 a0 e1                                      mov r0, r5
00829d70  14 50 8d e5                                      str r5, [sp, #0x14]
00829d74  18 50 8d e5                                      str r5, [sp, #0x18]
00829d78  5a 9e eb eb                                      bl #0x3116e8
00829d7c  05 20 a0 e1                                      mov r2, r5
00829d80  09 30 a0 e1                                      mov r3, sb
00829d84  04 10 a0 e1                                      mov r1, r4
00829d88  06 00 a0 e1                                      mov r0, r6
00829d8c  b3 fe ff eb                                      bl #0x829860
00829d90  05 00 a0 e1                                      mov r0, r5
00829d94  04 a7 eb eb                                      bl #0x3139ac
00829d98  04 00 a0 e1                                      mov r0, r4
00829d9c  02 a7 eb eb                                      bl #0x3139ac
00829da0  34 20 9d e5                                      ldr r2, [sp, #0x34]
00829da4  00 30 97 e5                                      ldr r3, [r7]
00829da8  06 00 a0 e1                                      mov r0, r6
00829dac  03 00 52 e1                                      cmp r2, r3
00829db0  01 00 00 1a                                      bne #0x829dbc
00829db4  38 d0 8d e2                                      add sp, sp, #0x38
00829db8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00829dbc  53 91 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00829dc0  84 ad 16 00 ac 40 00 00                          .byte 0x84, 0xad, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00829dc8, declared_size=260, range_size=260, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable19InitializeTransportEv
; demangled: CBluetoothUnreliable::InitializeTransport()
; decoder-mode: arm
00829dc8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00829dcc  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
00829dd0  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
00829dd4  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
00829dd8  04 40 8f e0                                      add r4, pc, r4
00829ddc  03 60 94 e7                                      ldr r6, [r4, r3]
00829de0  05 30 94 e7                                      ldr r3, [r4, r5]
00829de4  74 d0 4d e2                                      sub sp, sp, #0x74
00829de8  00 20 d6 e5                                      ldrb r2, [r6]
00829dec  00 30 93 e5                                      ldr r3, [r3]
00829df0  00 00 52 e3                                      cmp r2, #0
00829df4  6c 30 8d e5                                      str r3, [sp, #0x6c]
00829df8  26 00 00 1a                                      bne #0x829e98
00829dfc  1c a0 8d e2                                      add sl, sp, #0x1c
00829e00  0a 00 a0 e1                                      mov r0, sl
00829e04  5e 49 ff eb                                      bl #0x7fc384
00829e08  34 30 9d e5                                      ldr r3, [sp, #0x34]
00829e0c  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
00829e10  3c 70 8d e2                                      add r7, sp, #0x3c
00829e14  04 30 83 e3                                      orr r3, r3, #4
00829e18  01 10 8f e0                                      add r1, pc, r1
00829e1c  38 20 8d e2                                      add r2, sp, #0x38
00829e20  07 00 a0 e1                                      mov r0, r7
00829e24  34 30 8d e5                                      str r3, [sp, #0x34]
00829e28  af a8 eb eb                                      bl #0x3140ec
00829e2c  f3 c2 ff eb                                      bl #0x81aa00
00829e30  54 80 8d e2                                      add r8, sp, #0x54
00829e34  00 30 90 e5                                      ldr r3, [r0]
00829e38  0a 20 a0 e1                                      mov r2, sl
00829e3c  00 10 a0 e1                                      mov r1, r0
00829e40  08 00 a0 e1                                      mov r0, r8
00829e44  0f e0 a0 e1                                      mov lr, pc
00829e48  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00829e4c  01 20 a0 e3                                      mov r2, #1
00829e50  08 10 a0 e1                                      mov r1, r8
00829e54  07 00 a0 e1                                      mov r0, r7
00829e58  a7 ff ff eb                                      bl #0x829cfc
00829e5c  00 a0 a0 e1                                      mov sl, r0
00829e60  08 00 a0 e1                                      mov r0, r8
00829e64  d0 a6 eb eb                                      bl #0x3139ac
00829e68  07 00 a0 e1                                      mov r0, r7
00829e6c  ce a6 eb eb                                      bl #0x3139ac
00829e70  e2 c2 ff eb                                      bl #0x81aa00
00829e74  0a 10 a0 e1                                      mov r1, sl
00829e78  91 c5 ff eb                                      bl #0x81b4c4
00829e7c  00 30 9a e5                                      ldr r3, [sl]
00829e80  0a 10 a0 e1                                      mov r1, sl
00829e84  0d 00 a0 e1                                      mov r0, sp
00829e88  0f e0 a0 e1                                      mov lr, pc
00829e8c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00829e90  01 30 a0 e3                                      mov r3, #1
00829e94  00 30 c6 e5                                      strb r3, [r6]
00829e98  05 30 94 e7                                      ldr r3, [r4, r5]
00829e9c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00829ea0  00 00 a0 e3                                      mov r0, #0
00829ea4  00 30 93 e5                                      ldr r3, [r3]
00829ea8  03 00 52 e1                                      cmp r2, r3
00829eac  01 00 00 1a                                      bne #0x829eb8
00829eb0  74 d0 8d e2                                      add sp, sp, #0x74
00829eb4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00829eb8  14 91 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00829ebc  b8 ac 16 00 a8 30 00 00 ac 40 00 00 78 25 0e 00  .byte 0xb8, 0xac, 0x16, 0x00, 0xa8, 0x30, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x78, 0x25, 0x0e, 0x00

; FUNCTION 0x00829ecc, declared_size=208, range_size=208, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliableC1Ejb
; demangled: CBluetoothUnreliable::CBluetoothUnreliable(unsigned int, bool)
; decoder-mode: arm
00829ecc  70 40 2d e9                                      push {r4, r5, r6, lr}
00829ed0  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
00829ed4  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
00829ed8  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00829edc  06 60 8f e0                                      add r6, pc, r6
00829ee0  02 20 96 e7                                      ldr r2, [r6, r2]
00829ee4  03 30 96 e7                                      ldr r3, [r6, r3]
00829ee8  00 40 a0 e1                                      mov r4, r0
00829eec  00 50 a0 e3                                      mov r5, #0
00829ef0  08 20 82 e2                                      add r2, r2, #8
00829ef4  08 10 83 e2                                      add r1, r3, #8
00829ef8  0c 30 80 e2                                      add r3, r0, #0xc
00829efc  00 20 80 e5                                      str r2, [r0]
00829f00  08 10 80 e5                                      str r1, [r0, #8]
00829f04  03 00 a0 e1                                      mov r0, r3
00829f08  1c 30 84 e5                                      str r3, [r4, #0x1c]
00829f0c  20 30 84 e5                                      str r3, [r4, #0x20]
00829f10  04 50 84 e5                                      str r5, [r4, #4]
00829f14  10 10 a0 e3                                      mov r1, #0x10
00829f18  d7 9d eb eb                                      bl #0x31167c
00829f1c  74 20 9f e5                                      ldr r2, [pc, #0x74]
00829f20  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00829f24  34 30 84 e2                                      add r3, r4, #0x34
00829f28  02 20 96 e7                                      ldr r2, [r6, r2]
00829f2c  00 50 c1 e5                                      strb r5, [r1]
00829f30  03 00 a0 e1                                      mov r0, r3
00829f34  08 20 82 e2                                      add r2, r2, #8
00829f38  08 20 84 e5                                      str r2, [r4, #8]
00829f3c  44 30 84 e5                                      str r3, [r4, #0x44]
00829f40  48 30 84 e5                                      str r3, [r4, #0x48]
00829f44  2c 50 84 e5                                      str r5, [r4, #0x2c]
00829f48  30 50 c4 e5                                      strb r5, [r4, #0x30]
00829f4c  10 10 a0 e3                                      mov r1, #0x10
00829f50  c9 9d eb eb                                      bl #0x31167c
00829f54  44 20 94 e5                                      ldr r2, [r4, #0x44]
00829f58  50 30 84 e2                                      add r3, r4, #0x50
00829f5c  03 00 a0 e1                                      mov r0, r3
00829f60  00 50 c2 e5                                      strb r5, [r2]
00829f64  10 10 a0 e3                                      mov r1, #0x10
00829f68  60 30 84 e5                                      str r3, [r4, #0x60]
00829f6c  64 30 84 e5                                      str r3, [r4, #0x64]
00829f70  c1 9d eb eb                                      bl #0x31167c
00829f74  60 30 94 e5                                      ldr r3, [r4, #0x60]
00829f78  6c 00 84 e2                                      add r0, r4, #0x6c
00829f7c  00 50 c3 e5                                      strb r5, [r3]
00829f80  ff 48 ff eb                                      bl #0x7fc384
00829f84  04 00 a0 e1                                      mov r0, r4
00829f88  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00829f8c  b4 ab 16 00 b0 34 00 00 34 3d 00 00 94 11 00 00  .byte 0xb4, 0xab, 0x16, 0x00, 0xb0, 0x34, 0x00, 0x00, 0x34, 0x3d, 0x00, 0x00, 0x94, 0x11, 0x00, 0x00

; FUNCTION 0x00829f9c, declared_size=40, range_size=40, mode=arm
; class-group: CBluetoothUnreliable
; alias: _ZN20CBluetoothUnreliable17GetLocalNetworkIdEv
; demangled: CBluetoothUnreliable::GetLocalNetworkId()
; decoder-mode: arm
00829f9c  10 40 2d e9                                      push {r4, lr}
00829fa0  00 40 a0 e1                                      mov r4, r0
00829fa4  f6 48 ff eb                                      bl #0x7fc384
00829fa8  18 30 94 e5                                      ldr r3, [r4, #0x18]
00829fac  00 20 a0 e3                                      mov r2, #0
00829fb0  10 20 84 e5                                      str r2, [r4, #0x10]
00829fb4  04 30 83 e3                                      orr r3, r3, #4
00829fb8  18 30 84 e5                                      str r3, [r4, #0x18]
00829fbc  04 00 a0 e1                                      mov r0, r4
00829fc0  10 80 bd e8                                      pop {r4, pc}
