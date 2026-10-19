; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00827504, declared_size=8, range_size=8, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp11IsConnectedEv
; demangled: CUdp::IsConnected()
; decoder-mode: arm
00827504  01 00 a0 e3                                      mov r0, #1
00827508  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082750c, declared_size=8, range_size=8, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp17CanDisconnectFromER10CNetworkId
; demangled: CUdp::CanDisconnectFrom(CNetworkId&)
; decoder-mode: arm
0082750c  00 00 a0 e3                                      mov r0, #0
00827510  1e ff 2f e1                                      bx lr

; FUNCTION 0x00827514, declared_size=8, range_size=8, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp7GetTypeEv
; demangled: CUdp::GetType()
; decoder-mode: arm
00827514  01 00 a0 e3                                      mov r0, #1
00827518  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082751c, declared_size=40, range_size=40, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp18TerminateTransportEv
; demangled: CUdp::TerminateTransport()
; decoder-mode: arm
0082751c  18 10 9f e5                                      ldr r1, [pc, #0x18]
00827520  18 20 9f e5                                      ldr r2, [pc, #0x18]
00827524  00 30 a0 e3                                      mov r3, #0
00827528  01 10 8f e0                                      add r1, pc, r1
0082752c  02 20 91 e7                                      ldr r2, [r1, r2]
00827530  03 00 a0 e1                                      mov r0, r3
00827534  00 30 c2 e5                                      strb r3, [r2]
00827538  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0082753c  68 d5 16 00 e0 23 00 00                          .byte 0x68, 0xd5, 0x16, 0x00, 0xe0, 0x23, 0x00, 0x00

; FUNCTION 0x00827544, declared_size=16, range_size=16, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp13IsConnectedToER10CNetworkId
; demangled: CUdp::IsConnectedTo(CNetworkId&)
; decoder-mode: arm
00827544  04 00 90 e5                                      ldr r0, [r0, #4]
00827548  04 00 20 e2                                      eor r0, r0, #4
0082754c  50 01 e0 e7                                      ubfx r0, r0, #2, #1
00827550  1e ff 2f e1                                      bx lr

; FUNCTION 0x00827554, declared_size=20, range_size=20, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp16GetPeerNetworkIdEv
; demangled: CUdp::GetPeerNetworkId()
; decoder-mode: arm
00827554  10 40 2d e9                                      push {r4, lr}
00827558  00 40 a0 e1                                      mov r4, r0
0082755c  88 53 ff eb                                      bl #0x7fc384
00827560  04 00 a0 e1                                      mov r0, r4
00827564  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00827568, declared_size=72, range_size=72, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp17GetLocalNetworkIdEv
; demangled: CUdp::GetLocalNetworkId()
; decoder-mode: arm
00827568  70 40 2d e9                                      push {r4, r5, r6, lr}
0082756c  08 50 81 e2                                      add r5, r1, #8
00827570  00 40 a0 e1                                      mov r4, r0
00827574  05 00 a0 e1                                      mov r0, r5
00827578  08 02 00 eb                                      bl #0x827da0
0082757c  00 60 a0 e1                                      mov r6, r0
00827580  05 00 a0 e1                                      mov r0, r5
00827584  86 02 00 eb                                      bl #0x827fa4
00827588  00 50 a0 e1                                      mov r5, r0
0082758c  04 00 a0 e1                                      mov r0, r4
00827590  7b 53 ff eb                                      bl #0x7fc384
00827594  18 30 94 e5                                      ldr r3, [r4, #0x18]
00827598  b8 50 c4 e1                                      strh r5, [r4, #8]
0082759c  0c 60 84 e5                                      str r6, [r4, #0xc]
008275a0  01 30 83 e3                                      orr r3, r3, #1
008275a4  18 30 84 e5                                      str r3, [r4, #0x18]
008275a8  04 00 a0 e1                                      mov r0, r4
008275ac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008275b0, declared_size=348, range_size=348, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp7ReceiveEv
; demangled: CUdp::Receive()
; decoder-mode: arm
008275b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008275b4  48 41 9f e5                                      ldr r4, [pc, #0x148]
008275b8  48 21 9f e5                                      ldr r2, [pc, #0x148]
008275bc  41 dd 4d e2                                      sub sp, sp, #0x1040
008275c0  04 40 8f e0                                      add r4, pc, r4
008275c4  1c d0 4d e2                                      sub sp, sp, #0x1c
008275c8  02 30 94 e7                                      ldr r3, [r4, r2]
008275cc  20 20 8d e5                                      str r2, [sp, #0x20]
008275d0  10 20 d0 e5                                      ldrb r2, [r0, #0x10]
008275d4  00 30 93 e5                                      ldr r3, [r3]
008275d8  01 ca 8d e2                                      add ip, sp, #0x1000
008275dc  00 00 52 e3                                      cmp r2, #0
008275e0  54 30 8c e5                                      str r3, [ip, #0x54]
008275e4  00 b0 a0 e1                                      mov fp, r0
008275e8  00 30 e0 03                                      mvneq r3, #0
008275ec  0a 00 00 1a                                      bne #0x82761c
008275f0  20 00 9d e5                                      ldr r0, [sp, #0x20]
008275f4  00 10 94 e7                                      ldr r1, [r4, r0]
008275f8  01 4a 8d e2                                      add r4, sp, #0x1000
008275fc  54 20 94 e5                                      ldr r2, [r4, #0x54]
00827600  03 00 a0 e1                                      mov r0, r3
00827604  00 30 91 e5                                      ldr r3, [r1]
00827608  03 00 52 e1                                      cmp r2, r3
0082760c  3b 00 00 1a                                      bne #0x827700
00827610  5c d0 8d e2                                      add sp, sp, #0x5c
00827614  01 da 8d e2                                      add sp, sp, #0x1000
00827618  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082761c  58 30 8d e2                                      add r3, sp, #0x58
00827620  28 60 43 e2                                      sub r6, r3, #0x28
00827624  06 00 a0 e1                                      mov r0, r6
00827628  18 30 8d e5                                      str r3, [sp, #0x18]
0082762c  54 53 ff eb                                      bl #0x7fc384
00827630  18 30 9d e5                                      ldr r3, [sp, #0x18]
00827634  58 a0 8d e2                                      add sl, sp, #0x58
00827638  01 ea e0 e3                                      mvn lr, #0x1000
0082763c  0a 90 a0 e1                                      mov sb, sl
00827640  0a 50 a0 e1                                      mov r5, sl
00827644  20 20 43 e2                                      sub r2, r3, #0x20
00827648  01 8a e0 e3                                      mvn r8, #0x1000
0082764c  05 e0 4e e2                                      sub lr, lr, #5
00827650  10 70 43 e2                                      sub r7, r3, #0x10
00827654  08 00 8b e2                                      add r0, fp, #8
00827658  1c 30 43 e2                                      sub r3, r3, #0x1c
0082765c  0c a0 4a e2                                      sub sl, sl, #0xc
00827660  06 90 49 e2                                      sub sb, sb, #6
00827664  04 50 45 e2                                      sub r5, r5, #4
00827668  0b 80 48 e2                                      sub r8, r8, #0xb
0082766c  24 e0 8d e5                                      str lr, [sp, #0x24]
00827670  1c 00 8d e5                                      str r0, [sp, #0x1c]
00827674  28 20 8d e5                                      str r2, [sp, #0x28]
00827678  2c 30 8d e5                                      str r3, [sp, #0x2c]
0082767c  0c 40 8d e5                                      str r4, [sp, #0xc]
00827680  06 00 a0 e1                                      mov r0, r6
00827684  3e 53 ff eb                                      bl #0x7fc384
00827688  01 4a a0 e3                                      mov r4, #0x1000
0082768c  05 30 a0 e1                                      mov r3, r5
00827690  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00827694  0a 10 a0 e1                                      mov r1, sl
00827698  09 20 a0 e1                                      mov r2, sb
0082769c  00 40 8d e5                                      str r4, [sp]
008276a0  c0 02 00 eb                                      bl #0x8281a8
008276a4  00 30 50 e2                                      subs r3, r0, #0
008276a8  12 00 00 da                                      ble #0x8276f8
008276ac  00 c0 97 e5                                      ldr ip, [r7]
008276b0  41 ed 8d e2                                      add lr, sp, #0x1040
008276b4  18 e0 8e e2                                      add lr, lr, #0x18
008276b8  08 e0 9e e7                                      ldr lr, [lr, r8]
008276bc  2c 40 9d e5                                      ldr r4, [sp, #0x2c]
008276c0  01 c0 8c e3                                      orr ip, ip, #1
008276c4  00 c0 87 e5                                      str ip, [r7]
008276c8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
008276cc  00 e0 84 e5                                      str lr, [r4]
008276d0  41 ed 8d e2                                      add lr, sp, #0x1040
008276d4  18 e0 8e e2                                      add lr, lr, #0x18
008276d8  bc c0 9e e1                                      ldrh ip, [lr, ip]
008276dc  28 e0 9d e5                                      ldr lr, [sp, #0x28]
008276e0  0b 00 a0 e1                                      mov r0, fp
008276e4  06 10 a0 e1                                      mov r1, r6
008276e8  05 20 a0 e1                                      mov r2, r5
008276ec  b0 c0 ce e1                                      strh ip, [lr]
008276f0  89 ce ff eb                                      bl #0x81b11c
008276f4  e1 ff ff ea                                      b #0x827680
008276f8  0c 40 9d e5                                      ldr r4, [sp, #0xc]
008276fc  bb ff ff ea                                      b #0x8275f0
00827700  02 9b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00827704  d0 d4 16 00 ac 40 00 00                          .byte 0xd0, 0xd4, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082770c, declared_size=88, range_size=88, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp4SendER10CNetworkIdPvi
; demangled: CUdp::Send(CNetworkId&, void*, int)
; decoder-mode: arm
0082770c  10 40 2d e9                                      push {r4, lr}
00827710  10 c0 d0 e5                                      ldrb ip, [r0, #0x10]
00827714  10 d0 4d e2                                      sub sp, sp, #0x10
00827718  02 40 a0 e1                                      mov r4, r2
0082771c  00 00 5c e3                                      cmp ip, #0
00827720  03 c0 a0 e1                                      mov ip, r3
00827724  02 00 00 0a                                      beq #0x827734
00827728  18 30 91 e5                                      ldr r3, [r1, #0x18]
0082772c  01 00 13 e3                                      tst r3, #1
00827730  02 00 00 1a                                      bne #0x827740
00827734  00 00 e0 e3                                      mvn r0, #0
00827738  10 d0 8d e2                                      add sp, sp, #0x10
0082773c  10 80 bd e8                                      pop {r4, pc}
00827740  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00827744  b8 20 d1 e1                                      ldrh r2, [r1, #8]
00827748  10 10 8d e2                                      add r1, sp, #0x10
0082774c  04 30 21 e5                                      str r3, [r1, #-4]!
00827750  08 00 80 e2                                      add r0, r0, #8
00827754  04 30 a0 e1                                      mov r3, r4
00827758  00 c0 8d e5                                      str ip, [sp]
0082775c  07 03 00 eb                                      bl #0x828380
00827760  f4 ff ff ea                                      b #0x827738

; FUNCTION 0x00827764, declared_size=28, range_size=28, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp11CloseSocketEv
; demangled: CUdp::CloseSocket()
; decoder-mode: arm
00827764  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
00827768  00 00 53 e3                                      cmp r3, #0
0082776c  01 00 00 1a                                      bne #0x827778
00827770  03 00 a0 e1                                      mov r0, r3
00827774  1e ff 2f e1                                      bx lr
00827778  08 00 80 e2                                      add r0, r0, #8
0082777c  d7 01 00 ea                                      b #0x827ee0

; FUNCTION 0x00827780, declared_size=80, range_size=80, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp10OpenSocketEtb
; demangled: CUdp::OpenSocket(unsigned short, bool)
; decoder-mode: arm
00827780  10 40 2d e9                                      push {r4, lr}
00827784  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
00827788  00 00 53 e3                                      cmp r3, #0
0082778c  08 40 80 12                                      addne r4, r0, #8
00827790  07 00 00 1a                                      bne #0x8277b4
00827794  00 00 52 e3                                      cmp r2, #0
00827798  08 40 80 e2                                      add r4, r0, #8
0082779c  03 20 a0 13                                      movne r2, #3
008277a0  02 20 a0 03                                      moveq r2, #2
008277a4  04 00 a0 e1                                      mov r0, r4
008277a8  83 04 00 eb                                      bl #0x8289bc
008277ac  00 00 50 e3                                      cmp r0, #0
008277b0  05 00 00 ba                                      blt #0x8277cc
008277b4  04 00 a0 e1                                      mov r0, r4
008277b8  78 01 00 eb                                      bl #0x827da0
008277bc  12 9b eb eb                                      bl #0x30e40c
008277c0  04 00 a0 e1                                      mov r0, r4
008277c4  f6 01 00 eb                                      bl #0x827fa4
008277c8  00 00 a0 e3                                      mov r0, #0
008277cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00827804, declared_size=64, range_size=64, mode=arm
; class-group: CUdp
; alias: _ZN4CUdpD1Ev
; demangled: CUdp::~CUdp()
; decoder-mode: arm
00827804  30 30 9f e5                                      ldr r3, [pc, #0x30]
00827808  30 20 9f e5                                      ldr r2, [pc, #0x30]
0082780c  70 40 2d e9                                      push {r4, r5, r6, lr}
00827810  03 30 8f e0                                      add r3, pc, r3
00827814  02 20 93 e7                                      ldr r2, [r3, r2]
00827818  00 40 a0 e1                                      mov r4, r0
0082781c  00 50 a0 e1                                      mov r5, r0
00827820  08 20 82 e2                                      add r2, r2, #8
00827824  08 20 84 e4                                      str r2, [r4], #8
00827828  cd ff ff eb                                      bl #0x827764
0082782c  04 00 a0 e1                                      mov r0, r4
00827830  c1 01 00 eb                                      bl #0x827f3c
00827834  05 00 a0 e1                                      mov r0, r5
00827838  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0082783c  80 d2 16 00 80 13 00 00                          .byte 0x80, 0xd2, 0x16, 0x00, 0x80, 0x13, 0x00, 0x00

; FUNCTION 0x00827844, declared_size=28, range_size=28, mode=arm
; class-group: CUdp
; alias: _ZN4CUdpD0Ev
; demangled: CUdp::~CUdp()
; decoder-mode: arm
00827844  10 40 2d e9                                      push {r4, lr}
00827848  00 40 a0 e1                                      mov r4, r0
0082784c  ec ff ff eb                                      bl #0x827804
00827850  04 00 a0 e1                                      mov r0, r4
00827854  f9 a2 eb eb                                      bl #0x310440
00827858  04 00 a0 e1                                      mov r0, r4
0082785c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00827860, declared_size=64, range_size=64, mode=arm
; class-group: CUdp
; alias: _ZN4CUdpD2Ev
; demangled: CUdp::~CUdp()
; decoder-mode: arm
00827860  30 30 9f e5                                      ldr r3, [pc, #0x30]
00827864  30 20 9f e5                                      ldr r2, [pc, #0x30]
00827868  70 40 2d e9                                      push {r4, r5, r6, lr}
0082786c  03 30 8f e0                                      add r3, pc, r3
00827870  02 20 93 e7                                      ldr r2, [r3, r2]
00827874  00 40 a0 e1                                      mov r4, r0
00827878  00 50 a0 e1                                      mov r5, r0
0082787c  08 20 82 e2                                      add r2, r2, #8
00827880  08 20 84 e4                                      str r2, [r4], #8
00827884  b6 ff ff eb                                      bl #0x827764
00827888  04 00 a0 e1                                      mov r0, r4
0082788c  aa 01 00 eb                                      bl #0x827f3c
00827890  05 00 a0 e1                                      mov r0, r5
00827894  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00827898  24 d2 16 00 80 13 00 00                          .byte 0x24, 0xd2, 0x16, 0x00, 0x80, 0x13, 0x00, 0x00

; FUNCTION 0x008278a0, declared_size=92, range_size=92, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp12CreateByPortEtj
; demangled: CUdp::CreateByPort(unsigned short, unsigned int)
; decoder-mode: arm
008278a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008278a4  01 60 a0 e1                                      mov r6, r1
008278a8  00 70 a0 e1                                      mov r7, r0
008278ac  02 10 a0 e3                                      mov r1, #2
008278b0  1c 00 a0 e3                                      mov r0, #0x1c
008278b4  2d a3 eb eb                                      bl #0x310570
008278b8  34 50 9f e5                                      ldr r5, [pc, #0x34]
008278bc  34 30 9f e5                                      ldr r3, [pc, #0x34]
008278c0  00 40 a0 e1                                      mov r4, r0
008278c4  05 50 8f e0                                      add r5, pc, r5
008278c8  03 30 95 e7                                      ldr r3, [r5, r3]
008278cc  04 60 84 e5                                      str r6, [r4, #4]
008278d0  08 30 83 e2                                      add r3, r3, #8
008278d4  08 30 80 e4                                      str r3, [r0], #8
008278d8  b4 00 00 eb                                      bl #0x827bb0
008278dc  04 00 a0 e1                                      mov r0, r4
008278e0  07 10 a0 e1                                      mov r1, r7
008278e4  d6 20 e0 e7                                      ubfx r2, r6, #1, #1
008278e8  a4 ff ff eb                                      bl #0x827780
008278ec  04 00 a0 e1                                      mov r0, r4
008278f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008278f4  cc d1 16 00 80 13 00 00                          .byte 0xcc, 0xd1, 0x16, 0x00, 0x80, 0x13, 0x00, 0x00

; FUNCTION 0x008278fc, declared_size=116, range_size=116, mode=arm
; class-group: CUdp
; alias: _ZN4CUdp19InitializeTransportEv
; demangled: CUdp::InitializeTransport()
; decoder-mode: arm
008278fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00827900  60 40 9f e5                                      ldr r4, [pc, #0x60]
00827904  60 50 9f e5                                      ldr r5, [pc, #0x60]
00827908  04 40 8f e0                                      add r4, pc, r4
0082790c  05 30 94 e7                                      ldr r3, [r4, r5]
00827910  00 60 d3 e5                                      ldrb r6, [r3]
00827914  00 00 56 e3                                      cmp r6, #0
00827918  0d 00 00 1a                                      bne #0x827954
0082791c  04 10 a0 e3                                      mov r1, #4
00827920  78 0a 01 e3                                      movw r0, #0x1a78
00827924  dd ff ff eb                                      bl #0x8278a0
00827928  00 70 a0 e1                                      mov r7, r0
0082792c  33 cc ff eb                                      bl #0x81aa00
00827930  07 10 a0 e1                                      mov r1, r7
00827934  e2 ce ff eb                                      bl #0x81b4c4
00827938  03 10 a0 e3                                      mov r1, #3
0082793c  06 00 a0 e1                                      mov r0, r6
00827940  d6 ff ff eb                                      bl #0x8278a0
00827944  00 60 a0 e1                                      mov r6, r0
00827948  2c cc ff eb                                      bl #0x81aa00
0082794c  06 10 a0 e1                                      mov r1, r6
00827950  db ce ff eb                                      bl #0x81b4c4
00827954  05 30 94 e7                                      ldr r3, [r4, r5]
00827958  01 20 a0 e3                                      mov r2, #1
0082795c  00 00 a0 e3                                      mov r0, #0
00827960  00 20 c3 e5                                      strb r2, [r3]
00827964  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00827968  88 d1 16 00 e0 23 00 00                          .byte 0x88, 0xd1, 0x16, 0x00, 0xe0, 0x23, 0x00, 0x00
