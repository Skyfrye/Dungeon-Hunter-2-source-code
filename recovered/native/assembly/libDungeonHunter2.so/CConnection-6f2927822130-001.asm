; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00825338, declared_size=40, range_size=40, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection10IsToServerEv
; demangled: CConnection::IsToServer()
; decoder-mode: arm
00825338  10 40 2d e9                                      push {r4, lr}
0082533c  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
00825340  11 6f ff eb                                      bl #0x800f8c
00825344  00 30 90 e5                                      ldr r3, [r0]
00825348  0f e0 a0 e1                                      mov lr, pc
0082534c  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00825350  00 00 54 e1                                      cmp r4, r0
00825354  00 00 a0 13                                      movne r0, #0
00825358  01 00 a0 03                                      moveq r0, #1
0082535c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00825360, declared_size=40, range_size=40, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection15PrintStatisticsEv
; demangled: CConnection::PrintStatistics()
; decoder-mode: arm
00825360  10 40 2d e9                                      push {r4, lr}
00825364  00 40 a0 e1                                      mov r4, r0
00825368  07 6f ff eb                                      bl #0x800f8c
0082536c  5b 64 ff eb                                      bl #0x7fe4e0
00825370  00 00 50 e3                                      cmp r0, #0
00825374  00 00 00 0a                                      beq #0x82537c
00825378  10 80 bd e8                                      pop {r4, pc}
0082537c  04 00 a0 e1                                      mov r0, r4
00825380  10 40 bd e8                                      pop {r4, lr}
00825384  eb ff ff ea                                      b #0x825338

; FUNCTION 0x008255c4, declared_size=48, range_size=48, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection4PingEv
; demangled: CConnection::Ping()
; decoder-mode: arm
008255c4  10 40 2d e9                                      push {r4, lr}
008255c8  20 30 9f e5                                      ldr r3, [pc, #0x20]
008255cc  03 30 8f e0                                      add r3, pc, r3
008255d0  00 20 93 e5                                      ldr r2, [r3]
008255d4  01 20 82 e2                                      add r2, r2, #1
008255d8  00 20 83 e5                                      str r2, [r3]
008255dc  6c 60 ff eb                                      bl #0x7fd794
008255e0  00 30 90 e5                                      ldr r3, [r0]
008255e4  0f e0 a0 e1                                      mov lr, pc
008255e8  00 f0 93 e5                                      ldr pc, [r3]
008255ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008255f0  40 e3 20 00                                      .byte 0x40, 0xe3, 0x20, 0x00

; FUNCTION 0x008255f4, declared_size=148, range_size=148, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection11CheckForLagEj
; demangled: CConnection::CheckForLag(unsigned int)
; decoder-mode: arm
008255f4  70 40 2d e9                                      push {r4, r5, r6, lr}
008255f8  18 60 90 e5                                      ldr r6, [r0, #0x18]
008255fc  00 40 a0 e1                                      mov r4, r0
00825600  01 50 a0 e1                                      mov r5, r1
00825604  04 00 56 e3                                      cmp r6, #4
00825608  00 00 00 0a                                      beq #0x825610
0082560c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00825610  48 30 90 e5                                      ldr r3, [r0, #0x48]
00825614  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00825618  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0082561c  01 10 63 e0                                      rsb r1, r3, r1
00825620  03 30 62 e0                                      rsb r3, r2, r3
00825624  7d 0e 53 e3                                      cmp r3, #0x7d0
00825628  0d 00 00 da                                      ble #0x825664
0082562c  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
00825630  00 00 53 e3                                      cmp r3, #0
00825634  08 00 00 1a                                      bne #0x82565c
00825638  cd 59 ff eb                                      bl #0x7fbd74
0082563c  06 16 a0 e3                                      mov r1, #0x600000
00825640  06 30 a0 e1                                      mov r3, r6
00825644  08 00 80 e2                                      add r0, r0, #8
00825648  03 10 81 e2                                      add r1, r1, #3
0082564c  1c 20 84 e2                                      add r2, r4, #0x1c
00825650  eb 62 ff eb                                      bl #0x7fe204
00825654  01 30 a0 e3                                      mov r3, #1
00825658  54 30 c4 e5                                      strb r3, [r4, #0x54]
0082565c  4c 50 84 e5                                      str r5, [r4, #0x4c]
00825660  70 80 bd e8                                      pop {r4, r5, r6, pc}
00825664  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
00825668  00 00 53 e3                                      cmp r3, #0
0082566c  e6 ff ff 0a                                      beq #0x82560c
00825670  05 50 60 e0                                      rsb r5, r0, r5
00825674  05 10 61 e0                                      rsb r1, r1, r5
00825678  fa 0f 51 e3                                      cmp r1, #0x3e8
0082567c  00 30 a0 c3                                      movgt r3, #0
00825680  54 30 c4 c5                                      strbgt r3, [r4, #0x54]
00825684  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00825688, declared_size=92, range_size=92, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection13SendKeepAliveEj
; demangled: CConnection::SendKeepAlive(unsigned int)
; decoder-mode: arm
00825688  10 40 2d e9                                      push {r4, lr}
0082568c  18 30 90 e5                                      ldr r3, [r0, #0x18]
00825690  00 40 a0 e1                                      mov r4, r0
00825694  04 00 53 e3                                      cmp r3, #4
00825698  00 00 00 0a                                      beq #0x8256a0
0082569c  10 80 bd e8                                      pop {r4, pc}
008256a0  44 20 90 e5                                      ldr r2, [r0, #0x44]
008256a4  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
008256a8  40 00 90 e5                                      ldr r0, [r0, #0x40]
008256ac  01 20 62 e0                                      rsb r2, r2, r1
008256b0  01 30 63 e0                                      rsb r3, r3, r1
008256b4  fa 0f 52 e3                                      cmp r2, #0x3e8
008256b8  fa 0f 53 c3                                      cmpgt r3, #0x3e8
008256bc  02 00 00 ca                                      bgt #0x8256cc
008256c0  01 00 60 e0                                      rsb r0, r0, r1
008256c4  fa 0f 50 e3                                      cmp r0, #0x3e8
008256c8  f3 ff ff da                                      ble #0x82569c
008256cc  44 10 84 e5                                      str r1, [r4, #0x44]
008256d0  40 10 84 e5                                      str r1, [r4, #0x40]
008256d4  c9 d4 ff eb                                      bl #0x81aa00
008256d8  20 10 84 e2                                      add r1, r4, #0x20
008256dc  10 40 bd e8                                      pop {r4, lr}
008256e0  28 d9 ff ea                                      b #0x81bb88

; FUNCTION 0x008256e4, declared_size=164, range_size=164, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection19SendConnectFinalizeEv
; demangled: CConnection::SendConnectFinalize()
; decoder-mode: arm
008256e4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008256e8  44 d0 4d e2                                      sub sp, sp, #0x44
008256ec  08 40 8d e2                                      add r4, sp, #8
008256f0  00 50 a0 e1                                      mov r5, r0
008256f4  02 1b a0 e3                                      mov r1, #0x800
008256f8  04 00 a0 e1                                      mov r0, r4
008256fc  81 a4 ff eb                                      bl #0x80e908
00825700  40 10 8d e2                                      add r1, sp, #0x40
00825704  02 30 a0 e3                                      mov r3, #2
00825708  04 30 61 e5                                      strb r3, [r1, #-4]!
0082570c  01 20 a0 e3                                      mov r2, #1
00825710  04 00 a0 e1                                      mov r0, r4
00825714  a3 a5 ff eb                                      bl #0x80eda8
00825718  1b 6e ff eb                                      bl #0x800f8c
0082571c  00 30 90 e5                                      ldr r3, [r0]
00825720  0f e0 a0 e1                                      mov lr, pc
00825724  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00825728  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0082572c  28 10 8d e2                                      add r1, sp, #0x28
00825730  28 00 8d e5                                      str r0, [sp, #0x28]
00825734  2c 30 8d e5                                      str r3, [sp, #0x2c]
00825738  10 20 a0 e3                                      mov r2, #0x10
0082573c  6e 3f a0 e3                                      mov r3, #0x1b8
00825740  04 00 a0 e1                                      mov r0, r4
00825744  d3 60 85 e1                                      ldrd r6, r7, [r5, r3]
00825748  f0 63 cd e1                                      strd r6, r7, [sp, #0x30]
0082574c  95 a5 ff eb                                      bl #0x80eda8
00825750  aa d4 ff eb                                      bl #0x81aa00
00825754  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00825758  20 20 85 e2                                      add r2, r5, #0x20
0082575c  05 10 a0 e3                                      mov r1, #5
00825760  07 30 1c e2                                      ands r3, ip, #7
00825764  01 30 a0 13                                      movne r3, #1
00825768  ac c1 83 e0                                      add ip, r3, ip, lsr #3
0082576c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00825770  00 c0 8d e5                                      str ip, [sp]
00825774  dc d8 ff eb                                      bl #0x81baec
00825778  04 00 a0 e1                                      mov r0, r4
0082577c  03 a4 ff eb                                      bl #0x80e790
00825780  44 d0 8d e2                                      add sp, sp, #0x44
00825784  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00825788, declared_size=160, range_size=160, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection19SendConnectResponseEv
; demangled: CConnection::SendConnectResponse()
; decoder-mode: arm
00825788  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0082578c  44 d0 4d e2                                      sub sp, sp, #0x44
00825790  08 40 8d e2                                      add r4, sp, #8
00825794  00 50 a0 e1                                      mov r5, r0
00825798  02 1b a0 e3                                      mov r1, #0x800
0082579c  04 00 a0 e1                                      mov r0, r4
008257a0  58 a4 ff eb                                      bl #0x80e908
008257a4  40 10 8d e2                                      add r1, sp, #0x40
008257a8  01 20 a0 e3                                      mov r2, #1
008257ac  04 20 61 e5                                      strb r2, [r1, #-4]!
008257b0  04 00 a0 e1                                      mov r0, r4
008257b4  7b a5 ff eb                                      bl #0x80eda8
008257b8  f3 6d ff eb                                      bl #0x800f8c
008257bc  00 30 90 e5                                      ldr r3, [r0]
008257c0  0f e0 a0 e1                                      mov lr, pc
008257c4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
008257c8  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
008257cc  28 10 8d e2                                      add r1, sp, #0x28
008257d0  28 00 8d e5                                      str r0, [sp, #0x28]
008257d4  2c 30 8d e5                                      str r3, [sp, #0x2c]
008257d8  10 20 a0 e3                                      mov r2, #0x10
008257dc  6e 3f a0 e3                                      mov r3, #0x1b8
008257e0  04 00 a0 e1                                      mov r0, r4
008257e4  d3 60 85 e1                                      ldrd r6, r7, [r5, r3]
008257e8  f0 63 cd e1                                      strd r6, r7, [sp, #0x30]
008257ec  6d a5 ff eb                                      bl #0x80eda8
008257f0  82 d4 ff eb                                      bl #0x81aa00
008257f4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
008257f8  20 20 85 e2                                      add r2, r5, #0x20
008257fc  05 10 a0 e3                                      mov r1, #5
00825800  07 30 1c e2                                      ands r3, ip, #7
00825804  01 30 a0 13                                      movne r3, #1
00825808  ac c1 83 e0                                      add ip, r3, ip, lsr #3
0082580c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00825810  00 c0 8d e5                                      str ip, [sp]
00825814  b4 d8 ff eb                                      bl #0x81baec
00825818  04 00 a0 e1                                      mov r0, r4
0082581c  db a3 ff eb                                      bl #0x80e790
00825820  44 d0 8d e2                                      add sp, sp, #0x44
00825824  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00825828, declared_size=4, range_size=4, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection21ProcessConnectRequestER10CNetworkId
; demangled: CConnection::ProcessConnectRequest(CNetworkId&)
; decoder-mode: arm
00825828  d6 ff ff ea                                      b #0x825788

; FUNCTION 0x0082582c, declared_size=196, range_size=196, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection10DisconnectEv
; demangled: CConnection::Disconnect()
; decoder-mode: arm
0082582c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00825830  18 30 90 e5                                      ldr r3, [r0, #0x18]
00825834  34 d0 4d e2                                      sub sp, sp, #0x34
00825838  00 40 a0 e1                                      mov r4, r0
0082583c  01 00 53 e3                                      cmp r3, #1
00825840  27 00 00 0a                                      beq #0x8258e4
00825844  08 50 8d e2                                      add r5, sp, #8
00825848  01 70 a0 e3                                      mov r7, #1
0082584c  18 70 80 e5                                      str r7, [r0, #0x18]
00825850  02 1b a0 e3                                      mov r1, #0x800
00825854  05 00 a0 e1                                      mov r0, r5
00825858  2a a4 ff eb                                      bl #0x80e908
0082585c  04 60 a0 e3                                      mov r6, #4
00825860  30 10 8d e2                                      add r1, sp, #0x30
00825864  04 60 61 e5                                      strb r6, [r1, #-4]!
00825868  07 20 a0 e1                                      mov r2, r7
0082586c  05 00 a0 e1                                      mov r0, r5
00825870  4c a5 ff eb                                      bl #0x80eda8
00825874  c4 6d ff eb                                      bl #0x800f8c
00825878  00 30 90 e5                                      ldr r3, [r0]
0082587c  0f e0 a0 e1                                      mov lr, pc
00825880  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00825884  30 10 8d e2                                      add r1, sp, #0x30
00825888  08 00 21 e5                                      str r0, [r1, #-8]!
0082588c  06 20 a0 e1                                      mov r2, r6
00825890  05 00 a0 e1                                      mov r0, r5
00825894  43 a5 ff eb                                      bl #0x80eda8
00825898  58 d4 ff eb                                      bl #0x81aa00
0082589c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
008258a0  05 10 a0 e3                                      mov r1, #5
008258a4  20 20 84 e2                                      add r2, r4, #0x20
008258a8  07 30 1c e2                                      ands r3, ip, #7
008258ac  07 30 a0 11                                      movne r3, r7
008258b0  ac c1 83 e0                                      add ip, r3, ip, lsr #3
008258b4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008258b8  00 c0 8d e5                                      str ip, [sp]
008258bc  8a d8 ff eb                                      bl #0x81baec
008258c0  2b 59 ff eb                                      bl #0x7fbd74
008258c4  06 16 a0 e3                                      mov r1, #0x600000
008258c8  08 00 80 e2                                      add r0, r0, #8
008258cc  02 10 81 e2                                      add r1, r1, #2
008258d0  1c 20 84 e2                                      add r2, r4, #0x1c
008258d4  06 30 a0 e1                                      mov r3, r6
008258d8  49 62 ff eb                                      bl #0x7fe204
008258dc  05 00 a0 e1                                      mov r0, r5
008258e0  aa a3 ff eb                                      bl #0x80e790
008258e4  00 00 a0 e3                                      mov r0, #0
008258e8  34 d0 8d e2                                      add sp, sp, #0x34
008258ec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x008258f0, declared_size=124, range_size=124, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection4SendE12tPACKET_TYPEPvi
; demangled: CConnection::Send(tPACKET_TYPE, void*, int)
; decoder-mode: arm
008258f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008258f4  00 40 a0 e1                                      mov r4, r0
008258f8  18 00 90 e5                                      ldr r0, [r0, #0x18]
008258fc  01 50 a0 e1                                      mov r5, r1
00825900  08 d0 4d e2                                      sub sp, sp, #8
00825904  01 00 50 e3                                      cmp r0, #1
00825908  02 70 a0 e1                                      mov r7, r2
0082590c  03 60 a0 e1                                      mov r6, r3
00825910  00 50 a0 03                                      moveq r5, #0
00825914  11 00 00 0a                                      beq #0x825960
00825918  15 59 ff eb                                      bl #0x7fbd74
0082591c  05 10 a0 e1                                      mov r1, r5
00825920  bb 59 ff eb                                      bl #0x7fc014
00825924  00 80 a0 e1                                      mov r8, r0
00825928  34 d4 ff eb                                      bl #0x81aa00
0082592c  05 30 a0 e1                                      mov r3, r5
00825930  08 10 a0 e1                                      mov r1, r8
00825934  20 20 84 e2                                      add r2, r4, #0x20
00825938  00 70 8d e5                                      str r7, [sp]
0082593c  04 60 8d e5                                      str r6, [sp, #4]
00825940  52 d6 ff eb                                      bl #0x81b290
00825944  00 50 50 e2                                      subs r5, r0, #0
00825948  04 00 00 ba                                      blt #0x825960
0082594c  90 5f ff eb                                      bl #0x7fd794
00825950  00 30 90 e5                                      ldr r3, [r0]
00825954  0f e0 a0 e1                                      mov lr, pc
00825958  00 f0 93 e5                                      ldr pc, [r3]
0082595c  40 00 84 e5                                      str r0, [r4, #0x40]
00825960  05 00 a0 e1                                      mov r0, r5
00825964  08 d0 8d e2                                      add sp, sp, #8
00825968  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0082596c, declared_size=56, range_size=56, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection7TimeoutEv
; demangled: CConnection::Timeout()
; decoder-mode: arm
0082596c  10 40 2d e9                                      push {r4, lr}
00825970  00 40 a0 e1                                      mov r4, r0
00825974  6f fe ff eb                                      bl #0x825338
00825978  00 00 50 e3                                      cmp r0, #0
0082597c  03 00 00 0a                                      beq #0x825990
00825980  83 5f ff eb                                      bl #0x7fd794
00825984  05 10 a0 e3                                      mov r1, #5
00825988  00 20 a0 e3                                      mov r2, #0
0082598c  e2 5e ff eb                                      bl #0x7fd51c
00825990  04 00 a0 e1                                      mov r0, r4
00825994  00 30 94 e5                                      ldr r3, [r4]
00825998  0f e0 a0 e1                                      mov lr, pc
0082599c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008259a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008259a8, declared_size=272, range_size=272, mode=arm
; class-group: CConnection
; alias: _ZN11CConnectionC1Ev
; demangled: CConnection::CConnection()
; decoder-mode: arm
008259a8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008259ac  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
008259b0  f0 20 9f e5                                      ldr r2, [pc, #0xf0]
008259b4  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
008259b8  04 40 8f e0                                      add r4, pc, r4
008259bc  02 20 94 e7                                      ldr r2, [r4, r2]
008259c0  03 30 94 e7                                      ldr r3, [r4, r3]
008259c4  00 60 a0 e1                                      mov r6, r0
008259c8  08 20 82 e2                                      add r2, r2, #8
008259cc  08 30 83 e2                                      add r3, r3, #8
008259d0  0c 00 80 e8                                      stm r0, {r2, r3}
008259d4  08 00 80 e2                                      add r0, r0, #8
008259d8  6e a2 ff eb                                      bl #0x80e398
008259dc  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
008259e0  ef 35 04 e3                                      movw r3, #0x45ef
008259e4  00 50 a0 e3                                      mov r5, #0
008259e8  02 20 94 e7                                      ldr r2, [r4, r2]
008259ec  22 3f 4f e3                                      movt r3, #0xff22
008259f0  0c 10 86 e2                                      add r1, r6, #0xc
008259f4  08 20 82 e2                                      add r2, r2, #8
008259f8  64 00 a0 e3                                      mov r0, #0x64
008259fc  14 00 86 e5                                      str r0, [r6, #0x14]
00825a00  1c 30 86 e5                                      str r3, [r6, #0x1c]
00825a04  10 10 86 e5                                      str r1, [r6, #0x10]
00825a08  04 20 86 e5                                      str r2, [r6, #4]
00825a0c  0c 10 86 e5                                      str r1, [r6, #0xc]
00825a10  18 50 86 e5                                      str r5, [r6, #0x18]
00825a14  20 00 86 e2                                      add r0, r6, #0x20
00825a18  59 5a ff eb                                      bl #0x7fc384
00825a1c  30 35 07 e3                                      movw r3, #0x7530
00825a20  50 30 86 e5                                      str r3, [r6, #0x50]
00825a24  88 30 9f e5                                      ldr r3, [pc, #0x88]
00825a28  3c 50 86 e5                                      str r5, [r6, #0x3c]
00825a2c  40 50 86 e5                                      str r5, [r6, #0x40]
00825a30  03 a0 94 e7                                      ldr sl, [r4, r3]
00825a34  44 50 86 e5                                      str r5, [r6, #0x44]
00825a38  48 50 86 e5                                      str r5, [r6, #0x48]
00825a3c  54 50 c6 e5                                      strb r5, [r6, #0x54]
00825a40  08 a0 8a e2                                      add sl, sl, #8
00825a44  58 40 86 e2                                      add r4, r6, #0x58
00825a48  67 8f 86 e2                                      add r8, r6, #0x19c
00825a4c  7d 7f a0 e3                                      mov r7, #0x1f4
00825a50  04 00 a0 e1                                      mov r0, r4
00825a54  04 a0 80 e4                                      str sl, [r0], #4
00825a58  2c a2 ff eb                                      bl #0x80e310
00825a5c  04 30 a0 e1                                      mov r3, r4
00825a60  0c 50 84 e5                                      str r5, [r4, #0xc]
00825a64  08 50 e3 e5                                      strb r5, [r3, #8]!
00825a68  14 30 84 e5                                      str r3, [r4, #0x14]
00825a6c  10 30 84 e5                                      str r3, [r4, #0x10]
00825a70  18 50 84 e5                                      str r5, [r4, #0x18]
00825a74  20 70 84 e5                                      str r7, [r4, #0x20]
00825a78  24 40 84 e2                                      add r4, r4, #0x24
00825a7c  08 00 54 e1                                      cmp r4, r8
00825a80  f2 ff ff 1a                                      bne #0x825a50
00825a84  04 00 a0 e1                                      mov r0, r4
00825a88  3d 5a ff eb                                      bl #0x7fc384
00825a8c  00 00 a0 e3                                      mov r0, #0
00825a90  00 10 a0 e3                                      mov r1, #0
00825a94  6e 3f a0 e3                                      mov r3, #0x1b8
00825a98  f3 00 86 e1                                      strd r0, r1, [r6, r3]
00825a9c  06 00 a0 e1                                      mov r0, r6
00825aa0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00825aa4  d8 f0 16 00 a8 45 00 00 4c 0a 00 00 d8 21 00 00  .byte 0xd8, 0xf0, 0x16, 0x00, 0xa8, 0x45, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0xd8, 0x21, 0x00, 0x00
00825ab4  b4 24 00 00                                      .byte 0xb4, 0x24, 0x00, 0x00

; FUNCTION 0x00825ab8, declared_size=272, range_size=272, mode=arm
; class-group: CConnection
; alias: _ZN11CConnectionC2Ev
; demangled: CConnection::CConnection()
; decoder-mode: arm
00825ab8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00825abc  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
00825ac0  f0 20 9f e5                                      ldr r2, [pc, #0xf0]
00825ac4  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
00825ac8  04 40 8f e0                                      add r4, pc, r4
00825acc  02 20 94 e7                                      ldr r2, [r4, r2]
00825ad0  03 30 94 e7                                      ldr r3, [r4, r3]
00825ad4  00 60 a0 e1                                      mov r6, r0
00825ad8  08 20 82 e2                                      add r2, r2, #8
00825adc  08 30 83 e2                                      add r3, r3, #8
00825ae0  0c 00 80 e8                                      stm r0, {r2, r3}
00825ae4  08 00 80 e2                                      add r0, r0, #8
00825ae8  2a a2 ff eb                                      bl #0x80e398
00825aec  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
00825af0  ef 35 04 e3                                      movw r3, #0x45ef
00825af4  00 50 a0 e3                                      mov r5, #0
00825af8  02 20 94 e7                                      ldr r2, [r4, r2]
00825afc  22 3f 4f e3                                      movt r3, #0xff22
00825b00  0c 10 86 e2                                      add r1, r6, #0xc
00825b04  08 20 82 e2                                      add r2, r2, #8
00825b08  64 00 a0 e3                                      mov r0, #0x64
00825b0c  14 00 86 e5                                      str r0, [r6, #0x14]
00825b10  1c 30 86 e5                                      str r3, [r6, #0x1c]
00825b14  10 10 86 e5                                      str r1, [r6, #0x10]
00825b18  04 20 86 e5                                      str r2, [r6, #4]
00825b1c  0c 10 86 e5                                      str r1, [r6, #0xc]
00825b20  18 50 86 e5                                      str r5, [r6, #0x18]
00825b24  20 00 86 e2                                      add r0, r6, #0x20
00825b28  15 5a ff eb                                      bl #0x7fc384
00825b2c  30 35 07 e3                                      movw r3, #0x7530
00825b30  50 30 86 e5                                      str r3, [r6, #0x50]
00825b34  88 30 9f e5                                      ldr r3, [pc, #0x88]
00825b38  3c 50 86 e5                                      str r5, [r6, #0x3c]
00825b3c  40 50 86 e5                                      str r5, [r6, #0x40]
00825b40  03 a0 94 e7                                      ldr sl, [r4, r3]
00825b44  44 50 86 e5                                      str r5, [r6, #0x44]
00825b48  48 50 86 e5                                      str r5, [r6, #0x48]
00825b4c  54 50 c6 e5                                      strb r5, [r6, #0x54]
00825b50  08 a0 8a e2                                      add sl, sl, #8
00825b54  58 40 86 e2                                      add r4, r6, #0x58
00825b58  67 8f 86 e2                                      add r8, r6, #0x19c
00825b5c  7d 7f a0 e3                                      mov r7, #0x1f4
00825b60  04 00 a0 e1                                      mov r0, r4
00825b64  04 a0 80 e4                                      str sl, [r0], #4
00825b68  e8 a1 ff eb                                      bl #0x80e310
00825b6c  04 30 a0 e1                                      mov r3, r4
00825b70  0c 50 84 e5                                      str r5, [r4, #0xc]
00825b74  08 50 e3 e5                                      strb r5, [r3, #8]!
00825b78  14 30 84 e5                                      str r3, [r4, #0x14]
00825b7c  10 30 84 e5                                      str r3, [r4, #0x10]
00825b80  18 50 84 e5                                      str r5, [r4, #0x18]
00825b84  20 70 84 e5                                      str r7, [r4, #0x20]
00825b88  24 40 84 e2                                      add r4, r4, #0x24
00825b8c  08 00 54 e1                                      cmp r4, r8
00825b90  f2 ff ff 1a                                      bne #0x825b60
00825b94  04 00 a0 e1                                      mov r0, r4
00825b98  f9 59 ff eb                                      bl #0x7fc384
00825b9c  00 00 a0 e3                                      mov r0, #0
00825ba0  00 10 a0 e3                                      mov r1, #0
00825ba4  6e 3f a0 e3                                      mov r3, #0x1b8
00825ba8  f3 00 86 e1                                      strd r0, r1, [r6, r3]
00825bac  06 00 a0 e1                                      mov r0, r6
00825bb0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00825bb4  c8 ef 16 00 a8 45 00 00 4c 0a 00 00 d8 21 00 00  .byte 0xc8, 0xef, 0x16, 0x00, 0xa8, 0x45, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0xd8, 0x21, 0x00, 0x00
00825bc4  b4 24 00 00                                      .byte 0xb4, 0x24, 0x00, 0x00

; FUNCTION 0x00825f08, declared_size=260, range_size=260, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection15MergeStatisticsEP10CDataStatsIiE
; demangled: CConnection::MergeStatistics(CDataStats<int>*)
; decoder-mode: arm
00825f08  70 40 2d e9                                      push {r4, r5, r6, lr}
00825f0c  01 50 a0 e1                                      mov r5, r1
00825f10  00 40 a0 e1                                      mov r4, r0
00825f14  1c 6c ff eb                                      bl #0x800f8c
00825f18  70 61 ff eb                                      bl #0x7fe4e0
00825f1c  00 00 50 e3                                      cmp r0, #0
00825f20  34 00 00 0a                                      beq #0x825ff8
00825f24  7c 00 84 e2                                      add r0, r4, #0x7c
00825f28  2e ff ff eb                                      bl #0x825be8
00825f2c  00 10 a0 e1                                      mov r1, r0
00825f30  24 00 85 e2                                      add r0, r5, #0x24
00825f34  98 ff ff eb                                      bl #0x825d9c
00825f38  58 00 84 e2                                      add r0, r4, #0x58
00825f3c  29 ff ff eb                                      bl #0x825be8
00825f40  00 10 a0 e1                                      mov r1, r0
00825f44  05 00 a0 e1                                      mov r0, r5
00825f48  93 ff ff eb                                      bl #0x825d9c
00825f4c  c4 00 84 e2                                      add r0, r4, #0xc4
00825f50  24 ff ff eb                                      bl #0x825be8
00825f54  00 10 a0 e1                                      mov r1, r0
00825f58  6c 00 85 e2                                      add r0, r5, #0x6c
00825f5c  8e ff ff eb                                      bl #0x825d9c
00825f60  a0 00 84 e2                                      add r0, r4, #0xa0
00825f64  1f ff ff eb                                      bl #0x825be8
00825f68  00 10 a0 e1                                      mov r1, r0
00825f6c  48 00 85 e2                                      add r0, r5, #0x48
00825f70  89 ff ff eb                                      bl #0x825d9c
00825f74  01 11 a0 e3                                      mov r1, #0x40000000
00825f78  0a 16 81 e2                                      add r1, r1, #0xa00000
00825f7c  e8 00 84 e2                                      add r0, r4, #0xe8
00825f80  00 fd ff eb                                      bl #0x825388
00825f84  00 10 a0 e1                                      mov r1, r0
00825f88  90 00 85 e2                                      add r0, r5, #0x90
00825f8c  82 ff ff eb                                      bl #0x825d9c
00825f90  41 14 a0 e3                                      mov r1, #0x41000000
00825f94  0f 16 81 e2                                      add r1, r1, #0xf00000
00825f98  5e 0f 84 e2                                      add r0, r4, #0x178
00825f9c  f9 fc ff eb                                      bl #0x825388
00825fa0  00 10 a0 e1                                      mov r1, r0
00825fa4  12 0e 85 e2                                      add r0, r5, #0x120
00825fa8  7b ff ff eb                                      bl #0x825d9c
00825fac  fe 15 a0 e3                                      mov r1, #0x3f800000
00825fb0  13 0e 84 e2                                      add r0, r4, #0x130
00825fb4  f3 fc ff eb                                      bl #0x825388
00825fb8  00 10 a0 e1                                      mov r1, r0
00825fbc  d8 00 85 e2                                      add r0, r5, #0xd8
00825fc0  75 ff ff eb                                      bl #0x825d9c
00825fc4  fe 15 a0 e3                                      mov r1, #0x3f800000
00825fc8  55 0f 84 e2                                      add r0, r4, #0x154
00825fcc  ed fc ff eb                                      bl #0x825388
00825fd0  00 10 a0 e1                                      mov r1, r0
00825fd4  fc 00 85 e2                                      add r0, r5, #0xfc
00825fd8  6f ff ff eb                                      bl #0x825d9c
00825fdc  43 0f 84 e2                                      add r0, r4, #0x10c
00825fe0  fe 15 a0 e3                                      mov r1, #0x3f800000
00825fe4  e7 fc ff eb                                      bl #0x825388
00825fe8  00 10 a0 e1                                      mov r1, r0
00825fec  b4 00 85 e2                                      add r0, r5, #0xb4
00825ff0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00825ff4  68 ff ff ea                                      b #0x825d9c
00825ff8  04 00 a0 e1                                      mov r0, r4
00825ffc  cd fc ff eb                                      bl #0x825338
00826000  00 00 50 e3                                      cmp r0, #0
00826004  c6 ff ff 1a                                      bne #0x825f24
00826008  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0082600c, declared_size=20, range_size=20, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection15ReportStatisticE21tCONNECTION_STATISTICi
; demangled: CConnection::ReportStatistic(tCONNECTION_STATISTIC, int)
; decoder-mode: arm
0082600c  08 00 51 e3                                      cmp r1, #8
00826010  1e ff 2f 11                                      bxne lr
00826014  5e 0f 80 e2                                      add r0, r0, #0x178
00826018  c2 1f c2 e1                                      bic r1, r2, r2, asr #31
0082601c  5e ff ff ea                                      b #0x825d9c

; FUNCTION 0x0082605c, declared_size=184, range_size=184, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection18SendConnectRequestEv
; demangled: CConnection::SendConnectRequest()
; decoder-mode: arm
0082605c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00826060  44 d0 4d e2                                      sub sp, sp, #0x44
00826064  00 50 a0 e1                                      mov r5, r0
00826068  c9 5d ff eb                                      bl #0x7fd794
0082606c  00 30 90 e5                                      ldr r3, [r0]
00826070  0f e0 a0 e1                                      mov lr, pc
00826074  00 f0 93 e5                                      ldr pc, [r3]
00826078  08 40 8d e2                                      add r4, sp, #8
0082607c  40 00 85 e5                                      str r0, [r5, #0x40]
00826080  02 1b a0 e3                                      mov r1, #0x800
00826084  04 00 a0 e1                                      mov r0, r4
00826088  1e a2 ff eb                                      bl #0x80e908
0082608c  40 10 8d e2                                      add r1, sp, #0x40
00826090  00 30 a0 e3                                      mov r3, #0
00826094  04 30 61 e5                                      strb r3, [r1, #-4]!
00826098  01 20 a0 e3                                      mov r2, #1
0082609c  04 00 a0 e1                                      mov r0, r4
008260a0  40 a3 ff eb                                      bl #0x80eda8
008260a4  b8 6b ff eb                                      bl #0x800f8c
008260a8  00 30 90 e5                                      ldr r3, [r0]
008260ac  0f e0 a0 e1                                      mov lr, pc
008260b0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
008260b4  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
008260b8  28 10 8d e2                                      add r1, sp, #0x28
008260bc  28 00 8d e5                                      str r0, [sp, #0x28]
008260c0  2c 30 8d e5                                      str r3, [sp, #0x2c]
008260c4  10 20 a0 e3                                      mov r2, #0x10
008260c8  6e 3f a0 e3                                      mov r3, #0x1b8
008260cc  04 00 a0 e1                                      mov r0, r4
008260d0  d3 60 85 e1                                      ldrd r6, r7, [r5, r3]
008260d4  f0 63 cd e1                                      strd r6, r7, [sp, #0x30]
008260d8  32 a3 ff eb                                      bl #0x80eda8
008260dc  47 d2 ff eb                                      bl #0x81aa00
008260e0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
008260e4  20 20 85 e2                                      add r2, r5, #0x20
008260e8  05 10 a0 e3                                      mov r1, #5
008260ec  07 30 1c e2                                      ands r3, ip, #7
008260f0  01 30 a0 13                                      movne r3, #1
008260f4  ac c1 83 e0                                      add ip, r3, ip, lsr #3
008260f8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008260fc  00 c0 8d e5                                      str ip, [sp]
00826100  79 d6 ff eb                                      bl #0x81baec
00826104  04 00 a0 e1                                      mov r0, r4
00826108  a0 a1 ff eb                                      bl #0x80e790
0082610c  44 d0 8d e2                                      add sp, sp, #0x44
00826110  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00826114, declared_size=144, range_size=144, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection11ProcessPingER8tMsgPing
; demangled: CConnection::ProcessPing(tMsgPing&)
; decoder-mode: arm
00826114  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00826118  01 50 a0 e1                                      mov r5, r1
0082611c  00 60 a0 e1                                      mov r6, r0
00826120  9b 5d ff eb                                      bl #0x7fd794
00826124  00 30 90 e5                                      ldr r3, [r0]
00826128  00 70 a0 e1                                      mov r7, r0
0082612c  0f e0 a0 e1                                      mov lr, pc
00826130  00 f0 93 e5                                      ldr pc, [r3]
00826134  64 40 9f e5                                      ldr r4, [pc, #0x64]
00826138  20 20 97 e5                                      ldr r2, [r7, #0x20]
0082613c  00 10 95 e5                                      ldr r1, [r5]
00826140  04 40 8f e0                                      add r4, pc, r4
00826144  08 c0 95 e5                                      ldr ip, [r5, #8]
00826148  04 30 94 e5                                      ldr r3, [r4, #4]
0082614c  00 20 62 e0                                      rsb r2, r2, r0
00826150  02 20 6c e0                                      rsb r2, ip, r2
00826154  03 00 51 e1                                      cmp r1, r3
00826158  00 30 a0 a3                                      movge r3, #0
0082615c  01 30 a0 b3                                      movlt r3, #1
00826160  b8 1b 00 e3                                      movw r1, #0xbb8
00826164  01 00 52 e1                                      cmp r2, r1
00826168  01 30 83 c3                                      orrgt r3, r3, #1
0082616c  00 00 53 e3                                      cmp r3, #0
00826170  04 00 00 1a                                      bne #0x826188
00826174  06 00 a0 e1                                      mov r0, r6
00826178  08 10 a0 e3                                      mov r1, #8
0082617c  a2 ff ff eb                                      bl #0x82600c
00826180  00 30 95 e5                                      ldr r3, [r5]
00826184  04 30 84 e5                                      str r3, [r4, #4]
00826188  81 5d ff eb                                      bl #0x7fd794
0082618c  00 30 90 e5                                      ldr r3, [r0]
00826190  0f e0 a0 e1                                      mov lr, pc
00826194  00 f0 93 e5                                      ldr pc, [r3]
00826198  3c 00 86 e5                                      str r0, [r6, #0x3c]
0082619c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008261a0  cc d7 20 00                                      .byte 0xcc, 0xd7, 0x20, 0x00

; FUNCTION 0x008261a4, declared_size=32, range_size=32, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection15SetLastRecvTimeEv
; demangled: CConnection::SetLastRecvTime()
; decoder-mode: arm
008261a4  10 40 2d e9                                      push {r4, lr}
008261a8  00 40 a0 e1                                      mov r4, r0
008261ac  78 5d ff eb                                      bl #0x7fd794
008261b0  00 30 90 e5                                      ldr r3, [r0]
008261b4  0f e0 a0 e1                                      mov lr, pc
008261b8  00 f0 93 e5                                      ldr pc, [r3]
008261bc  3c 00 84 e5                                      str r0, [r4, #0x3c]
008261c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008261c4, declared_size=428, range_size=428, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection7ConnectEiR10CNetworkId
; demangled: CConnection::Connect(int, CNetworkId&)
; decoder-mode: arm
008261c4  70 4f 2d e9                                      push {r4, r5, r6, r8, sb, sl, fp, lr}
008261c8  20 c0 80 e2                                      add ip, r0, #0x20
008261cc  02 00 5c e1                                      cmp ip, r2
008261d0  20 d0 4d e2                                      sub sp, sp, #0x20
008261d4  00 40 a0 e1                                      mov r4, r0
008261d8  02 50 a0 e1                                      mov r5, r2
008261dc  1c 10 80 e5                                      str r1, [r0, #0x1c]
008261e0  04 00 00 0a                                      beq #0x8261f8
008261e4  02 e0 a0 e1                                      mov lr, r2
008261e8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
008261ec  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008261f0  07 00 9e e8                                      ldm lr, {r0, r1, r2}
008261f4  07 00 8c e8                                      stm ip, {r0, r1, r2}
008261f8  02 30 a0 e3                                      mov r3, #2
008261fc  18 30 84 e5                                      str r3, [r4, #0x18]
00826200  fe d1 ff eb                                      bl #0x81aa00
00826204  05 10 a0 e1                                      mov r1, r5
00826208  fd d4 ff eb                                      bl #0x81b604
0082620c  00 60 a0 e1                                      mov r6, r0
00826210  5f 5d ff eb                                      bl #0x7fd794
00826214  00 30 90 e5                                      ldr r3, [r0]
00826218  0f e0 a0 e1                                      mov lr, pc
0082621c  00 f0 93 e5                                      ldr pc, [r3]
00826220  00 50 a0 e3                                      mov r5, #0
00826224  bc 01 84 e5                                      str r0, [r4, #0x1bc]
00826228  b8 51 84 e5                                      str r5, [r4, #0x1b8]
0082622c  f3 d1 ff eb                                      bl #0x81aa00
00826230  05 20 a0 e1                                      mov r2, r5
00826234  00 10 a0 e1                                      mov r1, r0
00826238  04 00 8d e2                                      add r0, sp, #4
0082623c  bb d2 ff eb                                      bl #0x81ad30
00826240  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00826244  01 80 a0 e3                                      mov r8, #1
00826248  00 90 a0 e3                                      mov sb, #0
0082624c  00 30 a0 e3                                      mov r3, #0
00826250  08 00 02 e0                                      and r0, r2, r8
00826254  09 10 03 e0                                      and r1, r3, sb
00826258  01 c0 90 e1                                      orrs ip, r0, r1
0082625c  00 00 a0 03                                      moveq r0, #0
00826260  00 10 a0 03                                      moveq r1, #0
00826264  05 00 00 0a                                      beq #0x826280
00826268  10 10 9d e5                                      ldr r1, [sp, #0x10]
0082626c  bc c0 dd e1                                      ldrh ip, [sp, #0xc]
00826270  01 88 a0 e1                                      lsl r8, r1, #0x10
00826274  21 98 a0 e1                                      lsr sb, r1, #0x10
00826278  0c 00 98 e0                                      adds r0, r8, ip
0082627c  00 10 a9 e2                                      adc r1, sb, #0
00826280  02 a0 a0 e3                                      mov sl, #2
00826284  00 b0 a0 e3                                      mov fp, #0
00826288  0a 80 02 e0                                      and r8, r2, sl
0082628c  0b 90 03 e0                                      and sb, r3, fp
00826290  09 c0 98 e1                                      orrs ip, r8, sb
00826294  07 00 00 0a                                      beq #0x8262b8
00826298  08 c0 9d e5                                      ldr ip, [sp, #8]
0082629c  b4 e0 dd e1                                      ldrh lr, [sp, #4]
008262a0  0c 88 a0 e1                                      lsl r8, ip, #0x10
008262a4  0e a0 98 e0                                      adds sl, r8, lr
008262a8  2c 98 a0 e1                                      lsr sb, ip, #0x10
008262ac  00 b0 a9 e2                                      adc fp, sb, #0
008262b0  0a 00 90 e0                                      adds r0, r0, sl
008262b4  0b 10 a1 e0                                      adc r1, r1, fp
008262b8  04 a0 a0 e3                                      mov sl, #4
008262bc  00 b0 a0 e3                                      mov fp, #0
008262c0  0a 80 02 e0                                      and r8, r2, sl
008262c4  0b 90 03 e0                                      and sb, r3, fp
008262c8  09 c0 98 e1                                      orrs ip, r8, sb
008262cc  02 00 00 0a                                      beq #0x8262dc
008262d0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
008262d4  0c 00 90 e0                                      adds r0, r0, ip
008262d8  00 10 a1 e2                                      adc r1, r1, #0
008262dc  08 a0 a0 e3                                      mov sl, #8
008262e0  00 b0 a0 e3                                      mov fp, #0
008262e4  0a 80 02 e0                                      and r8, r2, sl
008262e8  0b 90 03 e0                                      and sb, r3, fp
008262ec  09 c0 98 e1                                      orrs ip, r8, sb
008262f0  02 00 00 0a                                      beq #0x826300
008262f4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
008262f8  0c 00 90 e0                                      adds r0, r0, ip
008262fc  00 10 a1 e2                                      adc r1, r1, #0
00826300  00 a0 e0 e3                                      mvn sl, #0
00826304  82 9b a0 e1                                      lsl sb, r2, #0x17
00826308  ff b4 e0 e3                                      mvn fp, #0xff000000
0082630c  0a 20 00 e0                                      and r2, r0, sl
00826310  00 80 a0 e3                                      mov r8, #0
00826314  08 20 92 e0                                      adds r2, r2, r8
00826318  0b 30 01 e0                                      and r3, r1, fp
0082631c  09 30 a3 e0                                      adc r3, r3, sb
00826320  6e 1f a0 e3                                      mov r1, #0x1b8
00826324  f1 20 84 e1                                      strd r2, r3, [r4, r1]
00826328  19 5d ff eb                                      bl #0x7fd794
0082632c  00 30 90 e5                                      ldr r3, [r0]
00826330  0f e0 a0 e1                                      mov lr, pc
00826334  00 f0 93 e5                                      ldr pc, [r3]
00826338  3c 00 84 e5                                      str r0, [r4, #0x3c]
0082633c  14 5d ff eb                                      bl #0x7fd794
00826340  00 30 90 e5                                      ldr r3, [r0]
00826344  0f e0 a0 e1                                      mov lr, pc
00826348  00 f0 93 e5                                      ldr pc, [r3]
0082634c  40 00 84 e5                                      str r0, [r4, #0x40]
00826350  0f 5d ff eb                                      bl #0x7fd794
00826354  00 30 90 e5                                      ldr r3, [r0]
00826358  0f e0 a0 e1                                      mov lr, pc
0082635c  00 f0 93 e5                                      ldr pc, [r3]
00826360  48 00 84 e5                                      str r0, [r4, #0x48]
00826364  06 00 a0 e1                                      mov r0, r6
00826368  20 d0 8d e2                                      add sp, sp, #0x20
0082636c  70 8f bd e8                                      pop {r4, r5, r6, r8, sb, sl, fp, pc}

; FUNCTION 0x00826370, declared_size=132, range_size=132, mode=arm
; class-group: CConnection
; alias: _ZN11CConnectionD2Ev
; demangled: CConnection::~CConnection()
; decoder-mode: arm
00826370  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00826374  6c 70 9f e5                                      ldr r7, [pc, #0x6c]
00826378  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0082637c  00 80 a0 e1                                      mov r8, r0
00826380  07 70 8f e0                                      add r7, pc, r7
00826384  03 30 97 e7                                      ldr r3, [r7, r3]
00826388  00 60 a0 e1                                      mov r6, r0
0082638c  58 50 80 e2                                      add r5, r0, #0x58
00826390  08 30 83 e2                                      add r3, r3, #8
00826394  04 30 88 e4                                      str r3, [r8], #4
00826398  23 fd ff eb                                      bl #0x82582c
0082639c  08 00 a0 e1                                      mov r0, r8
008263a0  24 60 ff eb                                      bl #0x7fe438
008263a4  67 4f 86 e2                                      add r4, r6, #0x19c
008263a8  24 30 34 e5                                      ldr r3, [r4, #-0x24]!
008263ac  04 00 a0 e1                                      mov r0, r4
008263b0  0f e0 a0 e1                                      mov lr, pc
008263b4  00 f0 93 e5                                      ldr pc, [r3]
008263b8  05 00 54 e1                                      cmp r4, r5
008263bc  f9 ff ff 1a                                      bne #0x8263a8
008263c0  28 30 9f e5                                      ldr r3, [pc, #0x28]
008263c4  0c 00 86 e2                                      add r0, r6, #0xc
008263c8  03 30 97 e7                                      ldr r3, [r7, r3]
008263cc  08 30 83 e2                                      add r3, r3, #8
008263d0  04 30 86 e5                                      str r3, [r6, #4]
008263d4  e5 5b ff eb                                      bl #0x7fd370
008263d8  04 00 88 e2                                      add r0, r8, #4
008263dc  e3 9f ff eb                                      bl #0x80e370
008263e0  06 00 a0 e1                                      mov r0, r6
008263e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008263e8  10 e7 16 00 a8 45 00 00 4c 0a 00 00              .byte 0x10, 0xe7, 0x16, 0x00, 0xa8, 0x45, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x008263f4, declared_size=132, range_size=132, mode=arm
; class-group: CConnection
; alias: _ZN11CConnectionD1Ev
; demangled: CConnection::~CConnection()
; decoder-mode: arm
008263f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008263f8  6c 70 9f e5                                      ldr r7, [pc, #0x6c]
008263fc  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00826400  00 80 a0 e1                                      mov r8, r0
00826404  07 70 8f e0                                      add r7, pc, r7
00826408  03 30 97 e7                                      ldr r3, [r7, r3]
0082640c  00 60 a0 e1                                      mov r6, r0
00826410  58 50 80 e2                                      add r5, r0, #0x58
00826414  08 30 83 e2                                      add r3, r3, #8
00826418  04 30 88 e4                                      str r3, [r8], #4
0082641c  02 fd ff eb                                      bl #0x82582c
00826420  08 00 a0 e1                                      mov r0, r8
00826424  03 60 ff eb                                      bl #0x7fe438
00826428  67 4f 86 e2                                      add r4, r6, #0x19c
0082642c  24 30 34 e5                                      ldr r3, [r4, #-0x24]!
00826430  04 00 a0 e1                                      mov r0, r4
00826434  0f e0 a0 e1                                      mov lr, pc
00826438  00 f0 93 e5                                      ldr pc, [r3]
0082643c  05 00 54 e1                                      cmp r4, r5
00826440  f9 ff ff 1a                                      bne #0x82642c
00826444  28 30 9f e5                                      ldr r3, [pc, #0x28]
00826448  0c 00 86 e2                                      add r0, r6, #0xc
0082644c  03 30 97 e7                                      ldr r3, [r7, r3]
00826450  08 30 83 e2                                      add r3, r3, #8
00826454  04 30 86 e5                                      str r3, [r6, #4]
00826458  c4 5b ff eb                                      bl #0x7fd370
0082645c  04 00 88 e2                                      add r0, r8, #4
00826460  c2 9f ff eb                                      bl #0x80e370
00826464  06 00 a0 e1                                      mov r0, r6
00826468  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0082646c  8c e6 16 00 a8 45 00 00 4c 0a 00 00              .byte 0x8c, 0xe6, 0x16, 0x00, 0xa8, 0x45, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x00826478, declared_size=28, range_size=28, mode=arm
; class-group: CConnection
; alias: _ZN11CConnectionD0Ev
; demangled: CConnection::~CConnection()
; decoder-mode: arm
00826478  10 40 2d e9                                      push {r4, lr}
0082647c  00 40 a0 e1                                      mov r4, r0
00826480  db ff ff eb                                      bl #0x8263f4
00826484  04 00 a0 e1                                      mov r0, r4
00826488  ec a7 eb eb                                      bl #0x310440
0082648c  04 00 a0 e1                                      mov r0, r4
00826490  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00826640, declared_size=172, range_size=172, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection6AcceptEiR10CNetworkIdy
; demangled: CConnection::Accept(int, CNetworkId&, unsigned long long)
; decoder-mode: arm
00826640  30 40 2d e9                                      push {r4, r5, lr}
00826644  24 d0 4d e2                                      sub sp, sp, #0x24
00826648  1c 10 80 e5                                      str r1, [r0, #0x1c]
0082664c  04 c0 8d e2                                      add ip, sp, #4
00826650  02 e0 a0 e1                                      mov lr, r2
00826654  00 40 a0 e1                                      mov r4, r0
00826658  02 50 a0 e1                                      mov r5, r2
0082665c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00826660  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00826664  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00826668  07 00 8c e8                                      stm ip, {r0, r1, r2}
0082666c  04 10 8d e2                                      add r1, sp, #4
00826670  20 00 84 e2                                      add r0, r4, #0x20
00826674  97 ff ff eb                                      bl #0x8264d8
00826678  03 30 a0 e3                                      mov r3, #3
0082667c  18 30 84 e5                                      str r3, [r4, #0x18]
00826680  de d0 ff eb                                      bl #0x81aa00
00826684  05 10 a0 e1                                      mov r1, r5
00826688  dd d3 ff eb                                      bl #0x81b604
0082668c  6e 3f a0 e3                                      mov r3, #0x1b8
00826690  00 50 a0 e1                                      mov r5, r0
00826694  d0 03 cd e1                                      ldrd r0, r1, [sp, #0x30]
00826698  f3 00 84 e1                                      strd r0, r1, [r4, r3]
0082669c  3c 5c ff eb                                      bl #0x7fd794
008266a0  00 30 90 e5                                      ldr r3, [r0]
008266a4  0f e0 a0 e1                                      mov lr, pc
008266a8  00 f0 93 e5                                      ldr pc, [r3]
008266ac  3c 00 84 e5                                      str r0, [r4, #0x3c]
008266b0  37 5c ff eb                                      bl #0x7fd794
008266b4  00 30 90 e5                                      ldr r3, [r0]
008266b8  0f e0 a0 e1                                      mov lr, pc
008266bc  00 f0 93 e5                                      ldr pc, [r3]
008266c0  40 00 84 e5                                      str r0, [r4, #0x40]
008266c4  32 5c ff eb                                      bl #0x7fd794
008266c8  00 30 90 e5                                      ldr r3, [r0]
008266cc  0f e0 a0 e1                                      mov lr, pc
008266d0  00 f0 93 e5                                      ldr pc, [r3]
008266d4  48 00 84 e5                                      str r0, [r4, #0x48]
008266d8  04 00 a0 e1                                      mov r0, r4
008266dc  29 fc ff eb                                      bl #0x825788
008266e0  05 00 a0 e1                                      mov r0, r5
008266e4  24 d0 8d e2                                      add sp, sp, #0x24
008266e8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x008266ec, declared_size=68, range_size=68, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection22ProcessConnectFinalizeER10CNetworkId
; demangled: CConnection::ProcessConnectFinalize(CNetworkId&)
; decoder-mode: arm
008266ec  30 40 2d e9                                      push {r4, r5, lr}
008266f0  67 4f 80 e2                                      add r4, r0, #0x19c
008266f4  24 d0 4d e2                                      sub sp, sp, #0x24
008266f8  01 50 a0 e1                                      mov r5, r1
008266fc  04 00 a0 e1                                      mov r0, r4
00826700  8d 54 ff eb                                      bl #0x7fb93c
00826704  05 e0 a0 e1                                      mov lr, r5
00826708  04 c0 8d e2                                      add ip, sp, #4
0082670c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00826710  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00826714  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00826718  07 00 8c e8                                      stm ip, {r0, r1, r2}
0082671c  04 00 a0 e1                                      mov r0, r4
00826720  04 10 8d e2                                      add r1, sp, #4
00826724  6b ff ff eb                                      bl #0x8264d8
00826728  24 d0 8d e2                                      add sp, sp, #0x24
0082672c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00826730, declared_size=80, range_size=80, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection22ProcessConnectResponseER10CNetworkId
; demangled: CConnection::ProcessConnectResponse(CNetworkId&)
; decoder-mode: arm
00826730  70 40 2d e9                                      push {r4, r5, r6, lr}
00826734  67 5f 80 e2                                      add r5, r0, #0x19c
00826738  20 d0 4d e2                                      sub sp, sp, #0x20
0082673c  01 60 a0 e1                                      mov r6, r1
00826740  00 40 a0 e1                                      mov r4, r0
00826744  05 00 a0 e1                                      mov r0, r5
00826748  7b 54 ff eb                                      bl #0x7fb93c
0082674c  06 e0 a0 e1                                      mov lr, r6
00826750  04 c0 8d e2                                      add ip, sp, #4
00826754  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00826758  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0082675c  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00826760  07 00 8c e8                                      stm ip, {r0, r1, r2}
00826764  05 00 a0 e1                                      mov r0, r5
00826768  04 10 8d e2                                      add r1, sp, #4
0082676c  59 ff ff eb                                      bl #0x8264d8
00826770  04 00 a0 e1                                      mov r0, r4
00826774  da fb ff eb                                      bl #0x8256e4
00826778  20 d0 8d e2                                      add sp, sp, #0x20
0082677c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00826780, declared_size=772, range_size=772, mode=arm
; class-group: CConnection
; alias: _ZN11CConnection6UpdateEv
; demangled: CConnection::Update()
; decoder-mode: arm
00826780  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00826784  14 d0 4d e2                                      sub sp, sp, #0x14
00826788  00 40 a0 e1                                      mov r4, r0
0082678c  00 5c ff eb                                      bl #0x7fd794
00826790  00 30 90 e5                                      ldr r3, [r0]
00826794  0f e0 a0 e1                                      mov lr, pc
00826798  00 f0 93 e5                                      ldr pc, [r3]
0082679c  40 30 94 e5                                      ldr r3, [r4, #0x40]
008267a0  18 20 94 e5                                      ldr r2, [r4, #0x18]
008267a4  00 50 a0 e1                                      mov r5, r0
008267a8  00 30 63 e0                                      rsb r3, r3, r0
008267ac  32 00 53 e3                                      cmp r3, #0x32
008267b0  00 30 a0 d3                                      movle r3, #0
008267b4  01 30 a0 c3                                      movgt r3, #1
008267b8  02 00 52 e3                                      cmp r2, #2
008267bc  00 10 a0 13                                      movne r1, #0
008267c0  01 10 03 02                                      andeq r1, r3, #1
008267c4  00 00 51 e3                                      cmp r1, #0
008267c8  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
008267cc  1e 00 00 1a                                      bne #0x82684c
008267d0  03 00 52 e3                                      cmp r2, #3
008267d4  00 30 a0 13                                      movne r3, #0
008267d8  01 30 03 02                                      andeq r3, r3, #1
008267dc  00 00 53 e3                                      cmp r3, #0
008267e0  1c 00 00 1a                                      bne #0x826858
008267e4  04 00 a0 e1                                      mov r0, r4
008267e8  05 10 a0 e1                                      mov r1, r5
008267ec  a5 fb ff eb                                      bl #0x825688
008267f0  04 00 a0 e1                                      mov r0, r4
008267f4  05 10 a0 e1                                      mov r1, r5
008267f8  7d fb ff eb                                      bl #0x8255f4
008267fc  18 30 94 e5                                      ldr r3, [r4, #0x18]
00826800  02 30 43 e2                                      sub r3, r3, #2
00826804  01 00 53 e3                                      cmp r3, #1
00826808  15 00 00 9a                                      bls #0x826864
0082680c  50 30 94 e5                                      ldr r3, [r4, #0x50]
00826810  48 10 94 e5                                      ldr r1, [r4, #0x48]
00826814  00 00 53 e3                                      cmp r3, #0
00826818  02 00 00 da                                      ble #0x826828
0082681c  18 20 94 e5                                      ldr r2, [r4, #0x18]
00826820  04 00 52 e3                                      cmp r2, #4
00826824  02 00 00 0a                                      beq #0x826834
00826828  48 50 84 e5                                      str r5, [r4, #0x48]
0082682c  14 d0 8d e2                                      add sp, sp, #0x14
00826830  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00826834  01 60 66 e0                                      rsb r6, r6, r1
00826838  06 00 53 e1                                      cmp r3, r6
0082683c  f9 ff ff aa                                      bge #0x826828
00826840  04 00 a0 e1                                      mov r0, r4
00826844  48 fc ff eb                                      bl #0x82596c
00826848  f6 ff ff ea                                      b #0x826828
0082684c  04 00 a0 e1                                      mov r0, r4
00826850  01 fe ff eb                                      bl #0x82605c
00826854  e2 ff ff ea                                      b #0x8267e4
00826858  04 00 a0 e1                                      mov r0, r4
0082685c  c9 fb ff eb                                      bl #0x825788
00826860  df ff ff ea                                      b #0x8267e4
00826864  38 a0 94 e5                                      ldr sl, [r4, #0x38]
00826868  01 00 a0 e3                                      mov r0, #1
0082686c  00 10 a0 e3                                      mov r1, #0
00826870  00 b0 a0 e3                                      mov fp, #0
00826874  00 20 0a e0                                      and r2, sl, r0
00826878  01 30 0b e0                                      and r3, fp, r1
0082687c  03 00 92 e1                                      orrs r0, r2, r3
00826880  00 00 a0 03                                      moveq r0, #0
00826884  00 10 a0 03                                      moveq r1, #0
00826888  05 00 00 0a                                      beq #0x8268a4
0082688c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00826890  b8 c2 d4 e1                                      ldrh ip, [r4, #0x28]
00826894  01 28 a0 e1                                      lsl r2, r1, #0x10
00826898  21 38 a0 e1                                      lsr r3, r1, #0x10
0082689c  0c 00 92 e0                                      adds r0, r2, ip
008268a0  00 10 a3 e2                                      adc r1, r3, #0
008268a4  02 80 a0 e3                                      mov r8, #2
008268a8  00 90 a0 e3                                      mov sb, #0
008268ac  08 20 0a e0                                      and r2, sl, r8
008268b0  09 30 0b e0                                      and r3, fp, sb
008268b4  03 80 92 e1                                      orrs r8, r2, r3
008268b8  07 00 00 0a                                      beq #0x8268dc
008268bc  24 c0 94 e5                                      ldr ip, [r4, #0x24]
008268c0  b0 72 d4 e1                                      ldrh r7, [r4, #0x20]
008268c4  0c 28 a0 e1                                      lsl r2, ip, #0x10
008268c8  07 80 92 e0                                      adds r8, r2, r7
008268cc  2c 38 a0 e1                                      lsr r3, ip, #0x10
008268d0  00 90 a3 e2                                      adc sb, r3, #0
008268d4  08 00 90 e0                                      adds r0, r0, r8
008268d8  09 10 a1 e0                                      adc r1, r1, sb
008268dc  00 90 a0 e3                                      mov sb, #0
008268e0  04 80 a0 e3                                      mov r8, #4
008268e4  08 20 0a e0                                      and r2, sl, r8
008268e8  09 30 0b e0                                      and r3, fp, sb
008268ec  03 90 92 e1                                      orrs sb, r2, r3
008268f0  02 00 00 0a                                      beq #0x826900
008268f4  30 30 94 e5                                      ldr r3, [r4, #0x30]
008268f8  03 00 90 e0                                      adds r0, r0, r3
008268fc  00 10 a1 e2                                      adc r1, r1, #0
00826900  08 80 a0 e3                                      mov r8, #8
00826904  00 90 a0 e3                                      mov sb, #0
00826908  08 20 0a e0                                      and r2, sl, r8
0082690c  09 30 0b e0                                      and r3, fp, sb
00826910  03 c0 92 e1                                      orrs ip, r2, r3
00826914  02 00 00 0a                                      beq #0x826924
00826918  34 30 94 e5                                      ldr r3, [r4, #0x34]
0082691c  03 00 90 e0                                      adds r0, r0, r3
00826920  00 10 a1 e2                                      adc r1, r1, #0
00826924  b4 21 94 e5                                      ldr r2, [r4, #0x1b4]
00826928  8a 9b a0 e1                                      lsl sb, sl, #0x17
0082692c  04 90 8d e5                                      str sb, [sp, #4]
00826930  00 80 e0 e3                                      mvn r8, #0
00826934  ff 94 e0 e3                                      mvn sb, #0xff000000
00826938  08 a0 00 e0                                      and sl, r0, r8
0082693c  09 b0 01 e0                                      and fp, r1, sb
00826940  00 90 a0 e3                                      mov sb, #0
00826944  f8 a0 cd e1                                      strd sl, fp, [sp, #8]
00826948  00 30 a0 e3                                      mov r3, #0
0082694c  01 a0 a0 e3                                      mov sl, #1
00826950  00 b0 a0 e3                                      mov fp, #0
00826954  00 90 8d e5                                      str sb, [sp]
00826958  0a 00 02 e0                                      and r0, r2, sl
0082695c  0b 10 03 e0                                      and r1, r3, fp
00826960  d0 80 cd e1                                      ldrd r8, sb, [sp]
00826964  d8 a0 cd e1                                      ldrd sl, fp, [sp, #8]
00826968  08 a0 9a e0                                      adds sl, sl, r8
0082696c  09 b0 ab e0                                      adc fp, fp, sb
00826970  01 90 90 e1                                      orrs sb, r0, r1
00826974  f8 a0 cd e1                                      strd sl, fp, [sp, #8]
00826978  00 00 a0 03                                      moveq r0, #0
0082697c  00 10 a0 03                                      moveq r1, #0
00826980  06 00 00 0a                                      beq #0x8269a0
00826984  a8 11 94 e5                                      ldr r1, [r4, #0x1a8]
00826988  69 0f a0 e3                                      mov r0, #0x1a4
0082698c  b0 c0 94 e1                                      ldrh ip, [r4, r0]
00826990  01 a8 a0 e1                                      lsl sl, r1, #0x10
00826994  21 b8 a0 e1                                      lsr fp, r1, #0x10
00826998  0c 00 9a e0                                      adds r0, sl, ip
0082699c  00 10 ab e2                                      adc r1, fp, #0
008269a0  02 a0 a0 e3                                      mov sl, #2
008269a4  00 b0 a0 e3                                      mov fp, #0
008269a8  0a 80 02 e0                                      and r8, r2, sl
008269ac  0b 90 03 e0                                      and sb, r3, fp
008269b0  09 a0 98 e1                                      orrs sl, r8, sb
008269b4  08 00 00 0a                                      beq #0x8269dc
008269b8  a0 c1 94 e5                                      ldr ip, [r4, #0x1a0]
008269bc  67 7f a0 e3                                      mov r7, #0x19c
008269c0  b7 70 94 e1                                      ldrh r7, [r4, r7]
008269c4  0c 88 a0 e1                                      lsl r8, ip, #0x10
008269c8  2c 98 a0 e1                                      lsr sb, ip, #0x10
008269cc  07 a0 98 e0                                      adds sl, r8, r7
008269d0  00 b0 a9 e2                                      adc fp, sb, #0
008269d4  0a 00 90 e0                                      adds r0, r0, sl
008269d8  0b 10 a1 e0                                      adc r1, r1, fp
008269dc  00 b0 a0 e3                                      mov fp, #0
008269e0  04 a0 a0 e3                                      mov sl, #4
008269e4  0a 80 02 e0                                      and r8, r2, sl
008269e8  0b 90 03 e0                                      and sb, r3, fp
008269ec  09 b0 98 e1                                      orrs fp, r8, sb
008269f0  02 00 00 0a                                      beq #0x826a00
008269f4  ac c1 94 e5                                      ldr ip, [r4, #0x1ac]
008269f8  0c 00 90 e0                                      adds r0, r0, ip
008269fc  00 10 a1 e2                                      adc r1, r1, #0
00826a00  08 a0 a0 e3                                      mov sl, #8
00826a04  00 b0 a0 e3                                      mov fp, #0
00826a08  0a 80 02 e0                                      and r8, r2, sl
00826a0c  0b 90 03 e0                                      and sb, r3, fp
00826a10  09 c0 98 e1                                      orrs ip, r8, sb
00826a14  02 00 00 0a                                      beq #0x826a24
00826a18  b0 c1 94 e5                                      ldr ip, [r4, #0x1b0]
00826a1c  0c 00 90 e0                                      adds r0, r0, ip
00826a20  00 10 a1 e2                                      adc r1, r1, #0
00826a24  00 a0 e0 e3                                      mvn sl, #0
00826a28  82 9b a0 e1                                      lsl sb, r2, #0x17
00826a2c  0a 20 00 e0                                      and r2, r0, sl
00826a30  08 00 9d e5                                      ldr r0, [sp, #8]
00826a34  ff b4 e0 e3                                      mvn fp, #0xff000000
00826a38  00 80 a0 e3                                      mov r8, #0
00826a3c  08 20 92 e0                                      adds r2, r2, r8
00826a40  0b 30 01 e0                                      and r3, r1, fp
00826a44  09 30 a3 e0                                      adc r3, r3, sb
00826a48  02 00 50 e1                                      cmp r0, r2
00826a4c  6e ff ff 1a                                      bne #0x82680c
00826a50  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00826a54  03 00 51 e1                                      cmp r1, r3
00826a58  6b ff ff 1a                                      bne #0x82680c
00826a5c  c4 54 ff eb                                      bl #0x7fbd74
00826a60  06 16 a0 e3                                      mov r1, #0x600000
00826a64  04 30 a0 e3                                      mov r3, #4
00826a68  08 00 80 e2                                      add r0, r0, #8
00826a6c  01 10 81 e2                                      add r1, r1, #1
00826a70  1c 20 84 e2                                      add r2, r4, #0x1c
00826a74  e2 5d ff eb                                      bl #0x7fe204
00826a78  04 30 a0 e3                                      mov r3, #4
00826a7c  18 30 84 e5                                      str r3, [r4, #0x18]
00826a80  61 ff ff ea                                      b #0x82680c
