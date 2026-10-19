; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00827204, declared_size=28, range_size=28, mode=arm
; class-group: CTransportFactory
; alias: _ZN17CTransportFactory18TerminateTransportEv
; demangled: CTransportFactory::TerminateTransport()
; decoder-mode: arm
00827204  10 40 2d e9                                      push {r4, lr}
00827208  74 0b 00 eb                                      bl #0x829fe0
0082720c  c2 00 00 eb                                      bl #0x82751c
00827210  d8 06 00 eb                                      bl #0x828d78
00827214  59 09 00 eb                                      bl #0x829780
00827218  00 00 a0 e3                                      mov r0, #0
0082721c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00827220, declared_size=84, range_size=84, mode=arm
; class-group: CTransportFactory
; alias: _ZN17CTransportFactory19InitializeTransportE15tTRANSPORT_TYPE
; demangled: CTransportFactory::InitializeTransport(tTRANSPORT_TYPE)
; decoder-mode: arm
00827220  01 00 40 e2                                      sub r0, r0, #1
00827224  10 40 2d e9                                      push {r4, lr}
00827228  03 00 50 e3                                      cmp r0, #3
0082722c  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
00827230  04 00 00 ea                                      b #0x827248
00827234  0b 00 00 ea                                      b #0x827268
00827238  07 00 00 ea                                      b #0x82725c
0082723c  03 00 00 ea                                      b #0x827250
00827240  ff ff ff ea                                      b #0x827244
00827244  a0 08 00 eb                                      bl #0x8294cc
00827248  00 00 a0 e3                                      mov r0, #0
0082724c  10 80 bd e8                                      pop {r4, pc}
00827250  dc 0a 00 eb                                      bl #0x829dc8
00827254  00 00 a0 e3                                      mov r0, #0
00827258  10 80 bd e8                                      pop {r4, pc}
0082725c  80 0c 00 eb                                      bl #0x82a464
00827260  00 00 a0 e3                                      mov r0, #0
00827264  10 80 bd e8                                      pop {r4, pc}
00827268  a3 01 00 eb                                      bl #0x8278fc
0082726c  00 00 a0 e3                                      mov r0, #0
00827270  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008272c4, declared_size=548, range_size=548, mode=arm
; class-group: CTransportFactory
; alias: _ZN17CTransportFactory16ConnectTransportER10CNetworkId
; demangled: CTransportFactory::ConnectTransport(CNetworkId&)
; decoder-mode: arm
008272c4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008272c8  08 42 9f e5                                      ldr r4, [pc, #0x208]
008272cc  08 52 9f e5                                      ldr r5, [pc, #0x208]
008272d0  18 20 90 e5                                      ldr r2, [r0, #0x18]
008272d4  04 40 8f e0                                      add r4, pc, r4
008272d8  05 30 94 e7                                      ldr r3, [r4, r5]
008272dc  02 80 a0 e3                                      mov r8, #2
008272e0  00 90 a0 e3                                      mov sb, #0
008272e4  00 c0 93 e5                                      ldr ip, [r3]
008272e8  00 30 a0 e3                                      mov r3, #0
008272ec  00 60 a0 e1                                      mov r6, r0
008272f0  09 10 03 e0                                      and r1, r3, sb
008272f4  08 00 02 e0                                      and r0, r2, r8
008272f8  84 d0 4d e2                                      sub sp, sp, #0x84
008272fc  01 00 90 e1                                      orrs r0, r0, r1
00827300  7c c0 8d e5                                      str ip, [sp, #0x7c]
00827304  12 00 00 1a                                      bne #0x827354
00827308  04 a0 a0 e3                                      mov sl, #4
0082730c  00 b0 a0 e3                                      mov fp, #0
00827310  0a 80 02 e0                                      and r8, r2, sl
00827314  0b 90 03 e0                                      and sb, r3, fp
00827318  09 10 98 e1                                      orrs r1, r8, sb
0082731c  42 00 00 1a                                      bne #0x82742c
00827320  08 a0 a0 e3                                      mov sl, #8
00827324  00 b0 a0 e3                                      mov fp, #0
00827328  0a 80 02 e0                                      and r8, r2, sl
0082732c  0b 90 03 e0                                      and sb, r3, fp
00827330  09 30 98 e1                                      orrs r3, r8, sb
00827334  16 00 00 1a                                      bne #0x827394
00827338  05 30 94 e7                                      ldr r3, [r4, r5]
0082733c  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00827340  00 30 93 e5                                      ldr r3, [r3]
00827344  03 00 52 e1                                      cmp r2, r3
00827348  61 00 00 1a                                      bne #0x8274d4
0082734c  84 d0 8d e2                                      add sp, sp, #0x84
00827350  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00827354  00 00 a0 e3                                      mov r0, #0
00827358  00 10 a0 e1                                      mov r1, r0
0082735c  29 0c 00 eb                                      bl #0x82a408
00827360  00 70 50 e2                                      subs r7, r0, #0
00827364  58 00 00 0a                                      beq #0x8274cc
00827368  a4 cd ff eb                                      bl #0x81aa00
0082736c  07 10 a0 e1                                      mov r1, r7
00827370  53 d0 ff eb                                      bl #0x81b4c4
00827374  00 30 97 e5                                      ldr r3, [r7]
00827378  07 00 a0 e1                                      mov r0, r7
0082737c  06 10 a0 e1                                      mov r1, r6
00827380  0f e0 a0 e1                                      mov lr, pc
00827384  08 f0 93 e5                                      ldr pc, [r3, #8]
00827388  18 20 96 e5                                      ldr r2, [r6, #0x18]
0082738c  00 30 a0 e3                                      mov r3, #0
00827390  dc ff ff ea                                      b #0x827308
00827394  0d 00 a0 e1                                      mov r0, sp
00827398  f9 53 ff eb                                      bl #0x7fc384
0082739c  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
008273a0  1c 70 8d e2                                      add r7, sp, #0x1c
008273a4  07 00 a0 e1                                      mov r0, r7
008273a8  01 10 8f e0                                      add r1, pc, r1
008273ac  19 10 81 e2                                      add r1, r1, #0x19
008273b0  2c 70 8d e5                                      str r7, [sp, #0x2c]
008273b4  30 70 8d e5                                      str r7, [sp, #0x30]
008273b8  ad ff ff eb                                      bl #0x827274
008273bc  8f cd ff eb                                      bl #0x81aa00
008273c0  34 80 8d e2                                      add r8, sp, #0x34
008273c4  00 30 90 e5                                      ldr r3, [r0]
008273c8  00 10 a0 e1                                      mov r1, r0
008273cc  0d 20 a0 e1                                      mov r2, sp
008273d0  08 00 a0 e1                                      mov r0, r8
008273d4  0f e0 a0 e1                                      mov lr, pc
008273d8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008273dc  08 10 a0 e1                                      mov r1, r8
008273e0  00 20 a0 e3                                      mov r2, #0
008273e4  07 00 a0 e1                                      mov r0, r7
008273e8  04 08 00 eb                                      bl #0x829400
008273ec  00 a0 a0 e1                                      mov sl, r0
008273f0  08 00 a0 e1                                      mov r0, r8
008273f4  6c b1 eb eb                                      bl #0x3139ac
008273f8  07 00 a0 e1                                      mov r0, r7
008273fc  6a b1 eb eb                                      bl #0x3139ac
00827400  00 00 5a e3                                      cmp sl, #0
00827404  30 00 00 0a                                      beq #0x8274cc
00827408  7c cd ff eb                                      bl #0x81aa00
0082740c  0a 10 a0 e1                                      mov r1, sl
00827410  2b d0 ff eb                                      bl #0x81b4c4
00827414  0a 00 a0 e1                                      mov r0, sl
00827418  06 10 a0 e1                                      mov r1, r6
0082741c  00 30 9a e5                                      ldr r3, [sl]
00827420  0f e0 a0 e1                                      mov lr, pc
00827424  08 f0 93 e5                                      ldr pc, [r3, #8]
00827428  c2 ff ff ea                                      b #0x827338
0082742c  0d 00 a0 e1                                      mov r0, sp
00827430  d3 53 ff eb                                      bl #0x7fc384
00827434  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
00827438  4c 70 8d e2                                      add r7, sp, #0x4c
0082743c  07 00 a0 e1                                      mov r0, r7
00827440  01 10 8f e0                                      add r1, pc, r1
00827444  19 10 81 e2                                      add r1, r1, #0x19
00827448  5c 70 8d e5                                      str r7, [sp, #0x5c]
0082744c  60 70 8d e5                                      str r7, [sp, #0x60]
00827450  87 ff ff eb                                      bl #0x827274
00827454  69 cd ff eb                                      bl #0x81aa00
00827458  64 80 8d e2                                      add r8, sp, #0x64
0082745c  00 30 90 e5                                      ldr r3, [r0]
00827460  00 10 a0 e1                                      mov r1, r0
00827464  0d 20 a0 e1                                      mov r2, sp
00827468  08 00 a0 e1                                      mov r0, r8
0082746c  0f e0 a0 e1                                      mov lr, pc
00827470  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00827474  08 10 a0 e1                                      mov r1, r8
00827478  00 20 a0 e3                                      mov r2, #0
0082747c  07 00 a0 e1                                      mov r0, r7
00827480  1d 0a 00 eb                                      bl #0x829cfc
00827484  00 a0 a0 e1                                      mov sl, r0
00827488  08 00 a0 e1                                      mov r0, r8
0082748c  46 b1 eb eb                                      bl #0x3139ac
00827490  07 00 a0 e1                                      mov r0, r7
00827494  44 b1 eb eb                                      bl #0x3139ac
00827498  00 00 5a e3                                      cmp sl, #0
0082749c  0a 00 00 0a                                      beq #0x8274cc
008274a0  56 cd ff eb                                      bl #0x81aa00
008274a4  0a 10 a0 e1                                      mov r1, sl
008274a8  05 d0 ff eb                                      bl #0x81b4c4
008274ac  00 30 9a e5                                      ldr r3, [sl]
008274b0  0a 00 a0 e1                                      mov r0, sl
008274b4  06 10 a0 e1                                      mov r1, r6
008274b8  0f e0 a0 e1                                      mov lr, pc
008274bc  08 f0 93 e5                                      ldr pc, [r3, #8]
008274c0  18 20 96 e5                                      ldr r2, [r6, #0x18]
008274c4  00 30 a0 e3                                      mov r3, #0
008274c8  94 ff ff ea                                      b #0x827320
008274cc  00 00 e0 e3                                      mvn r0, #0
008274d0  98 ff ff ea                                      b #0x827338
008274d4  8d 9b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008274d8  bc d7 16 00 ac 40 00 00 e8 4f 0e 00 50 4f 0e 00  .byte 0xbc, 0xd7, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe8, 0x4f, 0x0e, 0x00, 0x50, 0x4f, 0x0e, 0x00
