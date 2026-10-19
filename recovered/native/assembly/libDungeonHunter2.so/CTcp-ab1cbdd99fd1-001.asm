; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00829fc4, declared_size=20, range_size=20, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp17CanDisconnectFromER10CNetworkId
; demangled: CTcp::CanDisconnectFrom(CNetworkId&)
; decoder-mode: arm
00829fc4  10 40 2d e9                                      push {r4, lr}
00829fc8  00 30 90 e5                                      ldr r3, [r0]
00829fcc  0f e0 a0 e1                                      mov lr, pc
00829fd0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00829fd4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00829fd8, declared_size=8, range_size=8, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp7GetTypeEv
; demangled: CTcp::GetType()
; decoder-mode: arm
00829fd8  02 00 a0 e3                                      mov r0, #2
00829fdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00829fe0, declared_size=40, range_size=40, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp18TerminateTransportEv
; demangled: CTcp::TerminateTransport()
; decoder-mode: arm
00829fe0  18 10 9f e5                                      ldr r1, [pc, #0x18]
00829fe4  18 20 9f e5                                      ldr r2, [pc, #0x18]
00829fe8  00 30 a0 e3                                      mov r3, #0
00829fec  01 10 8f e0                                      add r1, pc, r1
00829ff0  02 20 91 e7                                      ldr r2, [r1, r2]
00829ff4  03 00 a0 e1                                      mov r0, r3
00829ff8  00 30 c2 e5                                      strb r3, [r2]
00829ffc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0082a000  a4 aa 16 00 18 2e 00 00                          .byte 0xa4, 0xaa, 0x16, 0x00, 0x18, 0x2e, 0x00, 0x00

; FUNCTION 0x0082a008, declared_size=56, range_size=56, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp13IsConnectedToER10CNetworkId
; demangled: CTcp::IsConnectedTo(CNetworkId&)
; decoder-mode: arm
0082a008  30 40 2d e9                                      push {r4, r5, lr}
0082a00c  24 d0 4d e2                                      sub sp, sp, #0x24
0082a010  04 40 8d e2                                      add r4, sp, #4
0082a014  01 50 a0 e1                                      mov r5, r1
0082a018  00 30 90 e5                                      ldr r3, [r0]
0082a01c  00 10 a0 e1                                      mov r1, r0
0082a020  04 00 a0 e1                                      mov r0, r4
0082a024  0f e0 a0 e1                                      mov lr, pc
0082a028  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0082a02c  04 00 a0 e1                                      mov r0, r4
0082a030  05 10 a0 e1                                      mov r1, r5
0082a034  40 46 ff eb                                      bl #0x7fb93c
0082a038  24 d0 8d e2                                      add sp, sp, #0x24
0082a03c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0082a040, declared_size=8, range_size=8, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp11IsConnectedEv
; demangled: CTcp::IsConnected()
; decoder-mode: arm
0082a040  08 00 80 e2                                      add r0, r0, #8
0082a044  ee f6 ff ea                                      b #0x827c04

; FUNCTION 0x0082a048, declared_size=72, range_size=72, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp16GetPeerNetworkIdEv
; demangled: CTcp::GetPeerNetworkId()
; decoder-mode: arm
0082a048  70 40 2d e9                                      push {r4, r5, r6, lr}
0082a04c  08 50 81 e2                                      add r5, r1, #8
0082a050  00 40 a0 e1                                      mov r4, r0
0082a054  05 00 a0 e1                                      mov r0, r5
0082a058  01 f8 ff eb                                      bl #0x828064
0082a05c  00 60 a0 e1                                      mov r6, r0
0082a060  05 00 a0 e1                                      mov r0, r5
0082a064  28 f8 ff eb                                      bl #0x82810c
0082a068  00 50 a0 e1                                      mov r5, r0
0082a06c  04 00 a0 e1                                      mov r0, r4
0082a070  c3 48 ff eb                                      bl #0x7fc384
0082a074  18 30 94 e5                                      ldr r3, [r4, #0x18]
0082a078  b0 50 c4 e1                                      strh r5, [r4]
0082a07c  04 60 84 e5                                      str r6, [r4, #4]
0082a080  02 30 83 e3                                      orr r3, r3, #2
0082a084  18 30 84 e5                                      str r3, [r4, #0x18]
0082a088  04 00 a0 e1                                      mov r0, r4
0082a08c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0082a090, declared_size=72, range_size=72, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp17GetLocalNetworkIdEv
; demangled: CTcp::GetLocalNetworkId()
; decoder-mode: arm
0082a090  70 40 2d e9                                      push {r4, r5, r6, lr}
0082a094  08 50 81 e2                                      add r5, r1, #8
0082a098  00 40 a0 e1                                      mov r4, r0
0082a09c  05 00 a0 e1                                      mov r0, r5
0082a0a0  3e f7 ff eb                                      bl #0x827da0
0082a0a4  00 60 a0 e1                                      mov r6, r0
0082a0a8  05 00 a0 e1                                      mov r0, r5
0082a0ac  bc f7 ff eb                                      bl #0x827fa4
0082a0b0  00 50 a0 e1                                      mov r5, r0
0082a0b4  04 00 a0 e1                                      mov r0, r4
0082a0b8  b1 48 ff eb                                      bl #0x7fc384
0082a0bc  18 30 94 e5                                      ldr r3, [r4, #0x18]
0082a0c0  b0 50 c4 e1                                      strh r5, [r4]
0082a0c4  04 60 84 e5                                      str r6, [r4, #4]
0082a0c8  02 30 83 e3                                      orr r3, r3, #2
0082a0cc  18 30 84 e5                                      str r3, [r4, #0x18]
0082a0d0  04 00 a0 e1                                      mov r0, r4
0082a0d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0082a0d8, declared_size=260, range_size=260, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp14ReceivePacketsEv
; demangled: CTcp::ReceivePackets()
; decoder-mode: arm
0082a0d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082a0dc  f0 b0 9f e5                                      ldr fp, [pc, #0xf0]
0082a0e0  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0082a0e4  41 dd 4d e2                                      sub sp, sp, #0x1040
0082a0e8  0b b0 8f e0                                      add fp, pc, fp
0082a0ec  01 30 9b e7                                      ldr r3, [fp, r1]
0082a0f0  0c d0 4d e2                                      sub sp, sp, #0xc
0082a0f4  48 40 8d e2                                      add r4, sp, #0x48
0082a0f8  00 30 93 e5                                      ldr r3, [r3]
0082a0fc  20 40 44 e2                                      sub r4, r4, #0x20
0082a100  01 2a 8d e2                                      add r2, sp, #0x1000
0082a104  04 10 8d e5                                      str r1, [sp, #4]
0082a108  00 60 a0 e1                                      mov r6, r0
0082a10c  48 50 8d e2                                      add r5, sp, #0x48
0082a110  04 00 a0 e1                                      mov r0, r4
0082a114  44 30 82 e5                                      str r3, [r2, #0x44]
0082a118  48 80 8d e2                                      add r8, sp, #0x48
0082a11c  98 48 ff eb                                      bl #0x7fc384
0082a120  04 50 45 e2                                      sub r5, r5, #4
0082a124  3c 80 48 e2                                      sub r8, r8, #0x3c
0082a128  08 90 86 e2                                      add sb, r6, #8
0082a12c  14 a0 a0 e3                                      mov sl, #0x14
0082a130  00 40 8d e5                                      str r4, [sp]
0082a134  04 00 a0 e1                                      mov r0, r4
0082a138  91 48 ff eb                                      bl #0x7fc384
0082a13c  09 00 a0 e1                                      mov r0, sb
0082a140  05 10 a0 e1                                      mov r1, r5
0082a144  01 2a a0 e3                                      mov r2, #0x1000
0082a148  57 f8 ff eb                                      bl #0x8282ac
0082a14c  00 70 50 e2                                      subs r7, r0, #0
0082a150  0a 00 00 ca                                      bgt #0x82a180
0082a154  04 10 9d e5                                      ldr r1, [sp, #4]
0082a158  00 00 a0 e3                                      mov r0, #0
0082a15c  01 30 9b e7                                      ldr r3, [fp, r1]
0082a160  01 1a 8d e2                                      add r1, sp, #0x1000
0082a164  44 20 91 e5                                      ldr r2, [r1, #0x44]
0082a168  00 30 93 e5                                      ldr r3, [r3]
0082a16c  03 00 52 e1                                      cmp r2, r3
0082a170  16 00 00 1a                                      bne #0x82a1d0
0082a174  4c d0 8d e2                                      add sp, sp, #0x4c
0082a178  01 da 8d e2                                      add sp, sp, #0x1000
0082a17c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082a180  08 00 a0 e1                                      mov r0, r8
0082a184  06 10 a0 e1                                      mov r1, r6
0082a188  00 30 96 e5                                      ldr r3, [r6]
0082a18c  0f e0 a0 e1                                      mov lr, pc
0082a190  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0082a194  00 c0 9d e5                                      ldr ip, [sp]
0082a198  08 e0 a0 e1                                      mov lr, r8
0082a19c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0082a1a0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0082a1a4  07 30 a0 e1                                      mov r3, r7
0082a1a8  07 00 9e e8                                      ldm lr, {r0, r1, r2}
0082a1ac  07 00 8c e8                                      stm ip, {r0, r1, r2}
0082a1b0  06 00 a0 e1                                      mov r0, r6
0082a1b4  04 10 a0 e1                                      mov r1, r4
0082a1b8  05 20 a0 e1                                      mov r2, r5
0082a1bc  d6 c3 ff eb                                      bl #0x81b11c
0082a1c0  00 00 5a e3                                      cmp sl, #0
0082a1c4  e2 ff ff 0a                                      beq #0x82a154
0082a1c8  01 a0 4a e2                                      sub sl, sl, #1
0082a1cc  d8 ff ff ea                                      b #0x82a134
0082a1d0  4e 90 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082a1d4  a8 a9 16 00 ac 40 00 00                          .byte 0xa8, 0xa9, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082a1dc, declared_size=76, range_size=76, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp4SendER10CNetworkIdPvi
; demangled: CTcp::Send(CNetworkId&, void*, int)
; decoder-mode: arm
0082a1dc  70 40 2d e9                                      push {r4, r5, r6, lr}
0082a1e0  10 c0 d0 e5                                      ldrb ip, [r0, #0x10]
0082a1e4  00 40 a0 e1                                      mov r4, r0
0082a1e8  02 50 a0 e1                                      mov r5, r2
0082a1ec  00 00 5c e3                                      cmp ip, #0
0082a1f0  03 60 a0 e1                                      mov r6, r3
0082a1f4  01 00 00 1a                                      bne #0x82a200
0082a1f8  00 00 e0 e3                                      mvn r0, #0
0082a1fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0082a200  00 30 90 e5                                      ldr r3, [r0]
0082a204  0f e0 a0 e1                                      mov lr, pc
0082a208  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0082a20c  00 00 50 e3                                      cmp r0, #0
0082a210  f8 ff ff 0a                                      beq #0x82a1f8
0082a214  08 00 84 e2                                      add r0, r4, #8
0082a218  05 10 a0 e1                                      mov r1, r5
0082a21c  06 20 a0 e1                                      mov r2, r6
0082a220  70 40 bd e8                                      pop {r4, r5, r6, lr}
0082a224  88 f8 ff ea                                      b #0x82844c

; FUNCTION 0x0082a228, declared_size=92, range_size=92, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp7ConnectER10CNetworkId
; demangled: CTcp::Connect(CNetworkId&)
; decoder-mode: arm
0082a228  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0082a22c  10 20 d0 e5                                      ldrb r2, [r0, #0x10]
0082a230  0c d0 4d e2                                      sub sp, sp, #0xc
0082a234  01 30 a0 e1                                      mov r3, r1
0082a238  00 00 52 e3                                      cmp r2, #0
0082a23c  06 00 00 0a                                      beq #0x82a25c
0082a240  18 20 91 e5                                      ldr r2, [r1, #0x18]
0082a244  02 60 a0 e3                                      mov r6, #2
0082a248  00 50 a0 e3                                      mov r5, #0
0082a24c  02 40 06 e0                                      and r4, r6, r2
0082a250  05 20 94 e1                                      orrs r2, r4, r5
0082a254  00 70 a0 e3                                      mov r7, #0
0082a258  02 00 00 1a                                      bne #0x82a268
0082a25c  00 00 e0 e3                                      mvn r0, #0
0082a260  0c d0 8d e2                                      add sp, sp, #0xc
0082a264  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0082a268  04 20 91 e5                                      ldr r2, [r1, #4]
0082a26c  08 10 8d e2                                      add r1, sp, #8
0082a270  08 00 80 e2                                      add r0, r0, #8
0082a274  04 20 21 e5                                      str r2, [r1, #-4]!
0082a278  b0 20 d3 e1                                      ldrh r2, [r3]
0082a27c  2d f9 ff eb                                      bl #0x828738
0082a280  f6 ff ff ea                                      b #0x82a260

; FUNCTION 0x0082a284, declared_size=32, range_size=32, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp11CloseSocketEv
; demangled: CTcp::CloseSocket()
; decoder-mode: arm
0082a284  10 40 2d e9                                      push {r4, lr}
0082a288  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
0082a28c  00 00 53 e3                                      cmp r3, #0
0082a290  01 00 00 0a                                      beq #0x82a29c
0082a294  08 00 80 e2                                      add r0, r0, #8
0082a298  10 f7 ff eb                                      bl #0x827ee0
0082a29c  00 00 a0 e3                                      mov r0, #0
0082a2a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082a2a4, declared_size=200, range_size=200, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp10OpenSocketEtb
; demangled: CTcp::OpenSocket(unsigned short, bool)
; decoder-mode: arm
0082a2a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082a2a8  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
0082a2ac  b4 70 9f e5                                      ldr r7, [pc, #0xb4]
0082a2b0  00 60 a0 e1                                      mov r6, r0
0082a2b4  04 40 8f e0                                      add r4, pc, r4
0082a2b8  07 00 94 e7                                      ldr r0, [r4, r7]
0082a2bc  10 30 d6 e5                                      ldrb r3, [r6, #0x10]
0082a2c0  02 80 a0 e1                                      mov r8, r2
0082a2c4  00 20 90 e5                                      ldr r2, [r0]
0082a2c8  18 d0 4d e2                                      sub sp, sp, #0x18
0082a2cc  00 00 53 e3                                      cmp r3, #0
0082a2d0  14 20 8d e5                                      str r2, [sp, #0x14]
0082a2d4  08 50 86 12                                      addne r5, r6, #8
0082a2d8  13 00 00 1a                                      bne #0x82a32c
0082a2dc  0c c0 8d e2                                      add ip, sp, #0xc
0082a2e0  08 50 86 e2                                      add r5, r6, #8
0082a2e4  04 30 8c e4                                      str r3, [ip], #4
0082a2e8  05 00 a0 e1                                      mov r0, r5
0082a2ec  06 20 a0 e3                                      mov r2, #6
0082a2f0  00 30 8c e5                                      str r3, [ip]
0082a2f4  04 30 8d e5                                      str r3, [sp, #4]
0082a2f8  08 30 8d e5                                      str r3, [sp, #8]
0082a2fc  59 f9 ff eb                                      bl #0x828868
0082a300  00 00 50 e3                                      cmp r0, #0
0082a304  0e 00 00 ba                                      blt #0x82a344
0082a308  00 00 58 e3                                      cmp r8, #0
0082a30c  06 00 00 0a                                      beq #0x82a32c
0082a310  10 30 d6 e5                                      ldrb r3, [r6, #0x10]
0082a314  00 00 53 e3                                      cmp r3, #0
0082a318  03 00 00 0a                                      beq #0x82a32c
0082a31c  05 00 a0 e1                                      mov r0, r5
0082a320  ef f8 ff eb                                      bl #0x8286e4
0082a324  00 00 50 e3                                      cmp r0, #0
0082a328  05 00 00 ba                                      blt #0x82a344
0082a32c  05 00 a0 e1                                      mov r0, r5
0082a330  9a f6 ff eb                                      bl #0x827da0
0082a334  34 90 eb eb                                      bl #0x30e40c
0082a338  05 00 a0 e1                                      mov r0, r5
0082a33c  18 f7 ff eb                                      bl #0x827fa4
0082a340  00 00 a0 e3                                      mov r0, #0
0082a344  07 30 94 e7                                      ldr r3, [r4, r7]
0082a348  14 20 9d e5                                      ldr r2, [sp, #0x14]
0082a34c  00 30 93 e5                                      ldr r3, [r3]
0082a350  03 00 52 e1                                      cmp r2, r3
0082a354  01 00 00 1a                                      bne #0x82a360
0082a358  18 d0 8d e2                                      add sp, sp, #0x18
0082a35c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0082a360  ea 8f eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082a364  dc a7 16 00 ac 40 00 00                          .byte 0xdc, 0xa7, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082a36c, declared_size=64, range_size=64, mode=arm
; class-group: CTcp
; alias: _ZN4CTcpD1Ev
; demangled: CTcp::~CTcp()
; decoder-mode: arm
0082a36c  30 30 9f e5                                      ldr r3, [pc, #0x30]
0082a370  30 20 9f e5                                      ldr r2, [pc, #0x30]
0082a374  70 40 2d e9                                      push {r4, r5, r6, lr}
0082a378  03 30 8f e0                                      add r3, pc, r3
0082a37c  02 20 93 e7                                      ldr r2, [r3, r2]
0082a380  00 40 a0 e1                                      mov r4, r0
0082a384  00 50 a0 e1                                      mov r5, r0
0082a388  08 20 82 e2                                      add r2, r2, #8
0082a38c  08 20 84 e4                                      str r2, [r4], #8
0082a390  bb ff ff eb                                      bl #0x82a284
0082a394  04 00 a0 e1                                      mov r0, r4
0082a398  e7 f6 ff eb                                      bl #0x827f3c
0082a39c  05 00 a0 e1                                      mov r0, r5
0082a3a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0082a3a4  18 a7 16 00 98 28 00 00                          .byte 0x18, 0xa7, 0x16, 0x00, 0x98, 0x28, 0x00, 0x00

; FUNCTION 0x0082a3ac, declared_size=28, range_size=28, mode=arm
; class-group: CTcp
; alias: _ZN4CTcpD0Ev
; demangled: CTcp::~CTcp()
; decoder-mode: arm
0082a3ac  10 40 2d e9                                      push {r4, lr}
0082a3b0  00 40 a0 e1                                      mov r4, r0
0082a3b4  ec ff ff eb                                      bl #0x82a36c
0082a3b8  04 00 a0 e1                                      mov r0, r4
0082a3bc  1f 98 eb eb                                      bl #0x310440
0082a3c0  04 00 a0 e1                                      mov r0, r4
0082a3c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082a3c8, declared_size=64, range_size=64, mode=arm
; class-group: CTcp
; alias: _ZN4CTcpD2Ev
; demangled: CTcp::~CTcp()
; decoder-mode: arm
0082a3c8  30 30 9f e5                                      ldr r3, [pc, #0x30]
0082a3cc  30 20 9f e5                                      ldr r2, [pc, #0x30]
0082a3d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0082a3d4  03 30 8f e0                                      add r3, pc, r3
0082a3d8  02 20 93 e7                                      ldr r2, [r3, r2]
0082a3dc  00 40 a0 e1                                      mov r4, r0
0082a3e0  00 50 a0 e1                                      mov r5, r0
0082a3e4  08 20 82 e2                                      add r2, r2, #8
0082a3e8  08 20 84 e4                                      str r2, [r4], #8
0082a3ec  a4 ff ff eb                                      bl #0x82a284
0082a3f0  04 00 a0 e1                                      mov r0, r4
0082a3f4  d0 f6 ff eb                                      bl #0x827f3c
0082a3f8  05 00 a0 e1                                      mov r0, r5
0082a3fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0082a400  bc a6 16 00 98 28 00 00                          .byte 0xbc, 0xa6, 0x16, 0x00, 0x98, 0x28, 0x00, 0x00

; FUNCTION 0x0082a408, declared_size=92, range_size=92, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp12CreateByPortEtj
; demangled: CTcp::CreateByPort(unsigned short, unsigned int)
; decoder-mode: arm
0082a408  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082a40c  01 60 a0 e1                                      mov r6, r1
0082a410  00 70 a0 e1                                      mov r7, r0
0082a414  02 10 a0 e3                                      mov r1, #2
0082a418  1c 00 a0 e3                                      mov r0, #0x1c
0082a41c  53 98 eb eb                                      bl #0x310570
0082a420  34 50 9f e5                                      ldr r5, [pc, #0x34]
0082a424  34 30 9f e5                                      ldr r3, [pc, #0x34]
0082a428  00 40 a0 e1                                      mov r4, r0
0082a42c  05 50 8f e0                                      add r5, pc, r5
0082a430  03 30 95 e7                                      ldr r3, [r5, r3]
0082a434  04 60 84 e5                                      str r6, [r4, #4]
0082a438  08 30 83 e2                                      add r3, r3, #8
0082a43c  08 30 80 e4                                      str r3, [r0], #8
0082a440  da f5 ff eb                                      bl #0x827bb0
0082a444  04 00 a0 e1                                      mov r0, r4
0082a448  07 10 a0 e1                                      mov r1, r7
0082a44c  01 20 06 e2                                      and r2, r6, #1
0082a450  93 ff ff eb                                      bl #0x82a2a4
0082a454  04 00 a0 e1                                      mov r0, r4
0082a458  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0082a45c  64 a6 16 00 98 28 00 00                          .byte 0x64, 0xa6, 0x16, 0x00, 0x98, 0x28, 0x00, 0x00

; FUNCTION 0x0082a464, declared_size=84, range_size=84, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp19InitializeTransportEv
; demangled: CTcp::InitializeTransport()
; decoder-mode: arm
0082a464  70 40 2d e9                                      push {r4, r5, r6, lr}
0082a468  40 40 9f e5                                      ldr r4, [pc, #0x40]
0082a46c  40 50 9f e5                                      ldr r5, [pc, #0x40]
0082a470  04 40 8f e0                                      add r4, pc, r4
0082a474  05 30 94 e7                                      ldr r3, [r4, r5]
0082a478  00 00 d3 e5                                      ldrb r0, [r3]
0082a47c  00 00 50 e3                                      cmp r0, #0
0082a480  05 00 00 1a                                      bne #0x82a49c
0082a484  05 10 a0 e3                                      mov r1, #5
0082a488  de ff ff eb                                      bl #0x82a408
0082a48c  00 60 a0 e1                                      mov r6, r0
0082a490  5a c1 ff eb                                      bl #0x81aa00
0082a494  06 10 a0 e1                                      mov r1, r6
0082a498  09 c4 ff eb                                      bl #0x81b4c4
0082a49c  05 30 94 e7                                      ldr r3, [r4, r5]
0082a4a0  01 20 a0 e3                                      mov r2, #1
0082a4a4  00 00 a0 e3                                      mov r0, #0
0082a4a8  00 20 c3 e5                                      strb r2, [r3]
0082a4ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0082a4b0  20 a6 16 00 18 2e 00 00                          .byte 0x20, 0xa6, 0x16, 0x00, 0x18, 0x2e, 0x00, 0x00

; FUNCTION 0x0082a4b8, declared_size=136, range_size=136, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp16CreateBySocketIdEij
; demangled: CTcp::CreateBySocketId(int, unsigned int)
; decoder-mode: arm
0082a4b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082a4bc  00 60 a0 e1                                      mov r6, r0
0082a4c0  01 70 a0 e1                                      mov r7, r1
0082a4c4  1c 00 a0 e3                                      mov r0, #0x1c
0082a4c8  02 10 a0 e3                                      mov r1, #2
0082a4cc  27 98 eb eb                                      bl #0x310570
0082a4d0  60 50 9f e5                                      ldr r5, [pc, #0x60]
0082a4d4  60 30 9f e5                                      ldr r3, [pc, #0x60]
0082a4d8  00 80 a0 e1                                      mov r8, r0
0082a4dc  05 50 8f e0                                      add r5, pc, r5
0082a4e0  03 30 95 e7                                      ldr r3, [r5, r3]
0082a4e4  04 70 80 e5                                      str r7, [r0, #4]
0082a4e8  00 40 a0 e1                                      mov r4, r0
0082a4ec  08 30 83 e2                                      add r3, r3, #8
0082a4f0  08 30 88 e4                                      str r3, [r8], #8
0082a4f4  08 00 a0 e1                                      mov r0, r8
0082a4f8  ac f5 ff eb                                      bl #0x827bb0
0082a4fc  01 30 a0 e3                                      mov r3, #1
0082a500  10 30 c4 e5                                      strb r3, [r4, #0x10]
0082a504  0c 60 84 e5                                      str r6, [r4, #0xc]
0082a508  08 30 94 e5                                      ldr r3, [r4, #8]
0082a50c  08 00 a0 e1                                      mov r0, r8
0082a510  0f e0 a0 e1                                      mov lr, pc
0082a514  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0082a518  08 30 94 e5                                      ldr r3, [r4, #8]
0082a51c  12 00 c4 e5                                      strb r0, [r4, #0x12]
0082a520  04 10 a0 e3                                      mov r1, #4
0082a524  08 00 a0 e1                                      mov r0, r8
0082a528  0f e0 a0 e1                                      mov lr, pc
0082a52c  00 f0 93 e5                                      ldr pc, [r3]
0082a530  04 00 a0 e1                                      mov r0, r4
0082a534  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0082a538  b4 a5 16 00 98 28 00 00                          .byte 0xb4, 0xa5, 0x16, 0x00, 0x98, 0x28, 0x00, 0x00

; FUNCTION 0x0082a540, declared_size=156, range_size=156, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp17AcceptConnectionsEv
; demangled: CTcp::AcceptConnections()
; decoder-mode: arm
0082a540  70 40 2d e9                                      push {r4, r5, r6, lr}
0082a544  28 d0 4d e2                                      sub sp, sp, #0x28
0082a548  04 40 8d e2                                      add r4, sp, #4
0082a54c  00 50 a0 e1                                      mov r5, r0
0082a550  04 00 a0 e1                                      mov r0, r4
0082a554  8a 47 ff eb                                      bl #0x7fc384
0082a558  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
0082a55c  00 00 53 e3                                      cmp r3, #0
0082a560  1a 00 00 0a                                      beq #0x82a5d0
0082a564  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0082a568  00 00 53 e3                                      cmp r3, #0
0082a56c  17 00 00 0a                                      beq #0x82a5d0
0082a570  08 00 85 e2                                      add r0, r5, #8
0082a574  20 10 8d e2                                      add r1, sp, #0x20
0082a578  00 50 a0 e3                                      mov r5, #0
0082a57c  26 20 8d e2                                      add r2, sp, #0x26
0082a580  20 50 8d e5                                      str r5, [sp, #0x20]
0082a584  b6 52 cd e1                                      strh r5, [sp, #0x26]
0082a588  17 f8 ff eb                                      bl #0x8285ec
0082a58c  00 60 50 e2                                      subs r6, r0, #0
0082a590  0e 00 00 da                                      ble #0x82a5d0
0082a594  04 00 a0 e1                                      mov r0, r4
0082a598  79 47 ff eb                                      bl #0x7fc384
0082a59c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0082a5a0  20 20 9d e5                                      ldr r2, [sp, #0x20]
0082a5a4  05 10 a0 e1                                      mov r1, r5
0082a5a8  02 30 83 e3                                      orr r3, r3, #2
0082a5ac  1c 30 8d e5                                      str r3, [sp, #0x1c]
0082a5b0  b6 32 dd e1                                      ldrh r3, [sp, #0x26]
0082a5b4  06 00 a0 e1                                      mov r0, r6
0082a5b8  08 20 8d e5                                      str r2, [sp, #8]
0082a5bc  b4 30 cd e1                                      strh r3, [sp, #4]
0082a5c0  bc ff ff eb                                      bl #0x82a4b8
0082a5c4  00 10 a0 e1                                      mov r1, r0
0082a5c8  02 00 a0 e3                                      mov r0, #2
0082a5cc  d6 c3 ff eb                                      bl #0x81b52c
0082a5d0  00 00 a0 e3                                      mov r0, #0
0082a5d4  28 d0 8d e2                                      add sp, sp, #0x28
0082a5d8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0082a5dc, declared_size=52, range_size=52, mode=arm
; class-group: CTcp
; alias: _ZN4CTcp7ReceiveEv
; demangled: CTcp::Receive()
; decoder-mode: arm
0082a5dc  10 40 2d e9                                      push {r4, lr}
0082a5e0  10 20 d0 e5                                      ldrb r2, [r0, #0x10]
0082a5e4  00 00 52 e3                                      cmp r2, #0
0082a5e8  03 00 00 0a                                      beq #0x82a5fc
0082a5ec  13 30 d0 e5                                      ldrb r3, [r0, #0x13]
0082a5f0  00 00 53 e3                                      cmp r3, #0
0082a5f4  02 00 00 1a                                      bne #0x82a604
0082a5f8  b6 fe ff eb                                      bl #0x82a0d8
0082a5fc  00 00 a0 e3                                      mov r0, #0
0082a600  10 80 bd e8                                      pop {r4, pc}
0082a604  cd ff ff eb                                      bl #0x82a540
0082a608  00 00 a0 e3                                      mov r0, #0
0082a60c  10 80 bd e8                                      pop {r4, pc}
