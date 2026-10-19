; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d3c8, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<36u>
; alias: _ZN18NetStructByteArrayILj36EE12GetBufferPtrEv
; demangled: NetStructByteArray<36u>::GetBufferPtr()
; decoder-mode: arm
0036d3c8  20 00 90 e5                                      ldr r0, [r0, #0x20]
0036d3cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d3d0, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<36u>
; alias: _ZN18NetStructByteArrayILj36EE13GetBufferSizeEv
; demangled: NetStructByteArray<36u>::GetBufferSize()
; decoder-mode: arm
0036d3d0  24 00 90 e5                                      ldr r0, [r0, #0x24]
0036d3d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d3d8, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<36u>
; alias: _ZN18NetStructByteArrayILj36EE16GetMaxBufferSizeEv
; demangled: NetStructByteArray<36u>::GetMaxBufferSize()
; decoder-mode: arm
0036d3d8  24 00 a0 e3                                      mov r0, #0x24
0036d3dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d6f4, declared_size=60, range_size=60, mode=arm
; class-group: NetStructByteArray<36u>
; alias: _ZN18NetStructByteArrayILj36EE9GetBufferEPvi
; demangled: NetStructByteArray<36u>::GetBuffer(void*, int)
; decoder-mode: arm
0036d6f4  10 40 2d e9                                      push {r4, lr}
0036d6f8  20 30 90 e5                                      ldr r3, [r0, #0x20]
0036d6fc  00 40 a0 e1                                      mov r4, r0
0036d700  00 00 53 e3                                      cmp r3, #0
0036d704  07 00 00 0a                                      beq #0x36d728
0036d708  24 20 90 e5                                      ldr r2, [r0, #0x24]
0036d70c  00 00 52 e3                                      cmp r2, #0
0036d710  04 00 00 da                                      ble #0x36d728
0036d714  01 00 a0 e1                                      mov r0, r1
0036d718  03 10 a0 e1                                      mov r1, r3
0036d71c  51 84 fe eb                                      bl #0x30e868
0036d720  24 00 94 e5                                      ldr r0, [r4, #0x24]
0036d724  10 80 bd e8                                      pop {r4, pc}
0036d728  00 00 a0 e3                                      mov r0, #0
0036d72c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036dc04, declared_size=48, range_size=48, mode=arm
; class-group: NetStructByteArray<36u>
; alias: _ZN18NetStructByteArrayILj36EE5WriteER12NetBitStream
; demangled: NetStructByteArray<36u>::Write(NetBitStream&)
; decoder-mode: arm
0036dc04  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dc08  01 50 a0 e1                                      mov r5, r1
0036dc0c  00 40 a0 e1                                      mov r4, r0
0036dc10  24 10 90 e5                                      ldr r1, [r0, #0x24]
0036dc14  10 20 a0 e3                                      mov r2, #0x10
0036dc18  05 00 a0 e1                                      mov r0, r5
0036dc1c  6e 82 12 eb                                      bl #0x80e5dc
0036dc20  24 20 94 e5                                      ldr r2, [r4, #0x24]
0036dc24  20 10 94 e5                                      ldr r1, [r4, #0x20]
0036dc28  05 00 a0 e1                                      mov r0, r5
0036dc2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036dc30  5c 84 12 ea                                      b #0x80eda8

; FUNCTION 0x0036feb0, declared_size=72, range_size=72, mode=arm
; class-group: NetStructByteArray<36u>
; alias: _ZN18NetStructByteArrayILj36EED1Ev
; demangled: NetStructByteArray<36u>::~NetStructByteArray()
; decoder-mode: arm
0036feb0  10 40 2d e9                                      push {r4, lr}
0036feb4  34 30 9f e5                                      ldr r3, [pc, #0x34]
0036feb8  34 20 9f e5                                      ldr r2, [pc, #0x34]
0036febc  00 40 a0 e1                                      mov r4, r0
0036fec0  03 30 8f e0                                      add r3, pc, r3
0036fec4  20 00 90 e5                                      ldr r0, [r0, #0x20]
0036fec8  02 20 93 e7                                      ldr r2, [r3, r2]
0036fecc  00 00 50 e3                                      cmp r0, #0
0036fed0  08 20 82 e2                                      add r2, r2, #8
0036fed4  00 20 84 e5                                      str r2, [r4]
0036fed8  02 00 00 0a                                      beq #0x36fee8
0036fedc  57 81 fe eb                                      bl #0x310440
0036fee0  00 30 a0 e3                                      mov r3, #0
0036fee4  20 30 84 e5                                      str r3, [r4, #0x20]
0036fee8  04 00 a0 e1                                      mov r0, r4
0036feec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036fef0  d0 4b 62 00 ec 2a 00 00                          .byte 0xd0, 0x4b, 0x62, 0x00, 0xec, 0x2a, 0x00, 0x00

; FUNCTION 0x0036ffd0, declared_size=80, range_size=80, mode=arm
; class-group: NetStructByteArray<36u>
; alias: _ZN18NetStructByteArrayILj36EE9SetBufferEPKvi
; demangled: NetStructByteArray<36u>::SetBuffer(void const*, int)
; decoder-mode: arm
0036ffd0  70 40 2d e9                                      push {r4, r5, r6, lr}
0036ffd4  00 c0 90 e5                                      ldr ip, [r0]
0036ffd8  08 d0 4d e2                                      sub sp, sp, #8
0036ffdc  00 30 a0 e3                                      mov r3, #0
0036ffe0  00 50 a0 e1                                      mov r5, r0
0036ffe4  0d 00 a0 e1                                      mov r0, sp
0036ffe8  1c 60 9c e5                                      ldr r6, [ip, #0x1c]
0036ffec  04 30 8d e5                                      str r3, [sp, #4]
0036fff0  00 30 8d e5                                      str r3, [sp]
0036fff4  6c f7 ff eb                                      bl #0x36ddac
0036fff8  05 00 a0 e1                                      mov r0, r5
0036fffc  0d 10 a0 e1                                      mov r1, sp
00370000  36 ff 2f e1                                      blx r6
00370004  00 00 9d e5                                      ldr r0, [sp]
00370008  0d 40 a0 e1                                      mov r4, sp
0037000c  00 00 50 e3                                      cmp r0, #0
00370010  00 00 00 0a                                      beq #0x370018
00370014  09 81 fe eb                                      bl #0x310440
00370018  08 d0 8d e2                                      add sp, sp, #8
0037001c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003702f8, declared_size=184, range_size=184, mode=arm
; class-group: NetStructByteArray<36u>
; alias: _ZN18NetStructByteArrayILj36EE4ReadER12NetBitStream
; demangled: NetStructByteArray<36u>::Read(NetBitStream&)
; decoder-mode: arm
003702f8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003702fc  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
00370300  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
00370304  01 60 a0 e1                                      mov r6, r1
00370308  04 40 8f e0                                      add r4, pc, r4
0037030c  05 30 94 e7                                      ldr r3, [r4, r5]
00370310  34 d0 4d e2                                      sub sp, sp, #0x34
00370314  00 70 a0 e1                                      mov r7, r0
00370318  00 30 93 e5                                      ldr r3, [r3]
0037031c  10 10 a0 e3                                      mov r1, #0x10
00370320  06 00 a0 e1                                      mov r0, r6
00370324  2c 30 8d e5                                      str r3, [sp, #0x2c]
00370328  c0 78 12 eb                                      bl #0x80e630
0037032c  08 80 8d e2                                      add r8, sp, #8
00370330  00 a0 a0 e1                                      mov sl, r0
00370334  08 10 a0 e1                                      mov r1, r8
00370338  06 00 a0 e1                                      mov r0, r6
0037033c  0a 20 a0 e1                                      mov r2, sl
00370340  38 7a 12 eb                                      bl #0x80ec28
00370344  00 c0 97 e5                                      ldr ip, [r7]
00370348  00 30 a0 e3                                      mov r3, #0
0037034c  08 10 a0 e1                                      mov r1, r8
00370350  0a 20 a0 e1                                      mov r2, sl
00370354  0d 00 a0 e1                                      mov r0, sp
00370358  1c 80 9c e5                                      ldr r8, [ip, #0x1c]
0037035c  04 30 8d e5                                      str r3, [sp, #4]
00370360  00 30 8d e5                                      str r3, [sp]
00370364  90 f6 ff eb                                      bl #0x36ddac
00370368  07 00 a0 e1                                      mov r0, r7
0037036c  0d 10 a0 e1                                      mov r1, sp
00370370  38 ff 2f e1                                      blx r8
00370374  00 00 9d e5                                      ldr r0, [sp]
00370378  0d 60 a0 e1                                      mov r6, sp
0037037c  00 00 50 e3                                      cmp r0, #0
00370380  00 00 00 0a                                      beq #0x370388
00370384  2d 80 fe eb                                      bl #0x310440
00370388  05 30 94 e7                                      ldr r3, [r4, r5]
0037038c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00370390  00 30 93 e5                                      ldr r3, [r3]
00370394  03 00 52 e1                                      cmp r2, r3
00370398  01 00 00 1a                                      bne #0x3703a4
0037039c  34 d0 8d e2                                      add sp, sp, #0x34
003703a0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003703a4  d9 77 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003703a8  88 47 62 00 ac 40 00 00                          .byte 0x88, 0x47, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00370550, declared_size=184, range_size=184, mode=arm
; class-group: NetStructByteArray<36u>
; alias: _ZN18NetStructByteArrayILj36EEC1E9ByteArray
; demangled: NetStructByteArray<36u>::NetStructByteArray(ByteArray)
; decoder-mode: arm
00370550  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00370554  0c d0 4d e2                                      sub sp, sp, #0xc
00370558  00 40 a0 e1                                      mov r4, r0
0037055c  00 50 a0 e3                                      mov r5, #0
00370560  04 20 91 e5                                      ldr r2, [r1, #4]
00370564  0d 00 a0 e1                                      mov r0, sp
00370568  00 10 91 e5                                      ldr r1, [r1]
0037056c  88 60 9f e5                                      ldr r6, [pc, #0x88]
00370570  00 50 8d e5                                      str r5, [sp]
00370574  04 50 8d e5                                      str r5, [sp, #4]
00370578  0b f6 ff eb                                      bl #0x36ddac
0037057c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00370580  06 60 8f e0                                      add r6, pc, r6
00370584  12 1e a0 e3                                      mov r1, #0x120
00370588  03 30 96 e7                                      ldr r3, [r6, r3]
0037058c  00 20 e0 e3                                      mvn r2, #0
00370590  04 10 84 e5                                      str r1, [r4, #4]
00370594  08 30 83 e2                                      add r3, r3, #8
00370598  00 00 a0 e3                                      mov r0, #0
0037059c  00 10 a0 e3                                      mov r1, #0
003705a0  f8 00 c4 e1                                      strd r0, r1, [r4, #8]
003705a4  04 00 a0 e1                                      mov r0, r4
003705a8  14 20 84 e5                                      str r2, [r4, #0x14]
003705ac  00 30 84 e5                                      str r3, [r4]
003705b0  24 50 84 e5                                      str r5, [r4, #0x24]
003705b4  10 20 84 e5                                      str r2, [r4, #0x10]
003705b8  18 50 84 e5                                      str r5, [r4, #0x18]
003705bc  1c 50 c4 e5                                      strb r5, [r4, #0x1c]
003705c0  20 50 84 e5                                      str r5, [r4, #0x20]
003705c4  0d 10 a0 e1                                      mov r1, sp
003705c8  25 fb ff eb                                      bl #0x36f264
003705cc  00 00 9d e5                                      ldr r0, [sp]
003705d0  0d 70 a0 e1                                      mov r7, sp
003705d4  05 00 50 e1                                      cmp r0, r5
003705d8  00 00 00 0a                                      beq #0x3705e0
003705dc  97 7f fe eb                                      bl #0x310440
003705e0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
003705e4  04 00 a0 e1                                      mov r0, r4
003705e8  03 30 96 e7                                      ldr r3, [r6, r3]
003705ec  08 30 83 e2                                      add r3, r3, #8
003705f0  00 30 84 e5                                      str r3, [r4]
003705f4  0c d0 8d e2                                      add sp, sp, #0xc
003705f8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003705fc  10 45 62 00 ec 2a 00 00 48 25 00 00              .byte 0x10, 0x45, 0x62, 0x00, 0xec, 0x2a, 0x00, 0x00, 0x48, 0x25, 0x00, 0x00

; FUNCTION 0x003707dc, declared_size=100, range_size=100, mode=arm
; class-group: NetStructByteArray<36u>
; alias: _ZN18NetStructByteArrayILj36EED0Ev
; demangled: NetStructByteArray<36u>::~NetStructByteArray()
; decoder-mode: arm
003707dc  70 40 2d e9                                      push {r4, r5, r6, lr}
003707e0  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
003707e4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003707e8  00 40 a0 e1                                      mov r4, r0
003707ec  05 50 8f e0                                      add r5, pc, r5
003707f0  20 00 90 e5                                      ldr r0, [r0, #0x20]
003707f4  03 30 95 e7                                      ldr r3, [r5, r3]
003707f8  00 00 50 e3                                      cmp r0, #0
003707fc  08 30 83 e2                                      add r3, r3, #8
00370800  00 30 84 e5                                      str r3, [r4]
00370804  02 00 00 0a                                      beq #0x370814
00370808  0c 7f fe eb                                      bl #0x310440
0037080c  00 30 a0 e3                                      mov r3, #0
00370810  20 30 84 e5                                      str r3, [r4, #0x20]
00370814  20 30 9f e5                                      ldr r3, [pc, #0x20]
00370818  04 00 a0 e1                                      mov r0, r4
0037081c  03 30 95 e7                                      ldr r3, [r5, r3]
00370820  08 30 83 e2                                      add r3, r3, #8
00370824  00 30 84 e5                                      str r3, [r4]
00370828  04 7f fe eb                                      bl #0x310440
0037082c  04 00 a0 e1                                      mov r0, r4
00370830  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00370834  a4 42 62 00 ec 2a 00 00 a8 10 00 00              .byte 0xa4, 0x42, 0x62, 0x00, 0xec, 0x2a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
