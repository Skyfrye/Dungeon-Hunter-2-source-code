; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d3b0, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<3u>
; alias: _ZN18NetStructByteArrayILj3EE12GetBufferPtrEv
; demangled: NetStructByteArray<3u>::GetBufferPtr()
; decoder-mode: arm
0036d3b0  20 00 90 e5                                      ldr r0, [r0, #0x20]
0036d3b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d3b8, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<3u>
; alias: _ZN18NetStructByteArrayILj3EE13GetBufferSizeEv
; demangled: NetStructByteArray<3u>::GetBufferSize()
; decoder-mode: arm
0036d3b8  24 00 90 e5                                      ldr r0, [r0, #0x24]
0036d3bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d3c0, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<3u>
; alias: _ZN18NetStructByteArrayILj3EE16GetMaxBufferSizeEv
; demangled: NetStructByteArray<3u>::GetMaxBufferSize()
; decoder-mode: arm
0036d3c0  03 00 a0 e3                                      mov r0, #3
0036d3c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d730, declared_size=60, range_size=60, mode=arm
; class-group: NetStructByteArray<3u>
; alias: _ZN18NetStructByteArrayILj3EE9GetBufferEPvi
; demangled: NetStructByteArray<3u>::GetBuffer(void*, int)
; decoder-mode: arm
0036d730  10 40 2d e9                                      push {r4, lr}
0036d734  20 30 90 e5                                      ldr r3, [r0, #0x20]
0036d738  00 40 a0 e1                                      mov r4, r0
0036d73c  00 00 53 e3                                      cmp r3, #0
0036d740  07 00 00 0a                                      beq #0x36d764
0036d744  24 20 90 e5                                      ldr r2, [r0, #0x24]
0036d748  00 00 52 e3                                      cmp r2, #0
0036d74c  04 00 00 da                                      ble #0x36d764
0036d750  01 00 a0 e1                                      mov r0, r1
0036d754  03 10 a0 e1                                      mov r1, r3
0036d758  42 84 fe eb                                      bl #0x30e868
0036d75c  24 00 94 e5                                      ldr r0, [r4, #0x24]
0036d760  10 80 bd e8                                      pop {r4, pc}
0036d764  00 00 a0 e3                                      mov r0, #0
0036d768  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036dc34, declared_size=48, range_size=48, mode=arm
; class-group: NetStructByteArray<3u>
; alias: _ZN18NetStructByteArrayILj3EE5WriteER12NetBitStream
; demangled: NetStructByteArray<3u>::Write(NetBitStream&)
; decoder-mode: arm
0036dc34  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dc38  01 50 a0 e1                                      mov r5, r1
0036dc3c  00 40 a0 e1                                      mov r4, r0
0036dc40  24 10 90 e5                                      ldr r1, [r0, #0x24]
0036dc44  10 20 a0 e3                                      mov r2, #0x10
0036dc48  05 00 a0 e1                                      mov r0, r5
0036dc4c  62 82 12 eb                                      bl #0x80e5dc
0036dc50  24 20 94 e5                                      ldr r2, [r4, #0x24]
0036dc54  20 10 94 e5                                      ldr r1, [r4, #0x20]
0036dc58  05 00 a0 e1                                      mov r0, r5
0036dc5c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036dc60  50 84 12 ea                                      b #0x80eda8

; FUNCTION 0x0036fef8, declared_size=72, range_size=72, mode=arm
; class-group: NetStructByteArray<3u>
; alias: _ZN18NetStructByteArrayILj3EED1Ev
; demangled: NetStructByteArray<3u>::~NetStructByteArray()
; decoder-mode: arm
0036fef8  10 40 2d e9                                      push {r4, lr}
0036fefc  34 30 9f e5                                      ldr r3, [pc, #0x34]
0036ff00  34 20 9f e5                                      ldr r2, [pc, #0x34]
0036ff04  00 40 a0 e1                                      mov r4, r0
0036ff08  03 30 8f e0                                      add r3, pc, r3
0036ff0c  20 00 90 e5                                      ldr r0, [r0, #0x20]
0036ff10  02 20 93 e7                                      ldr r2, [r3, r2]
0036ff14  00 00 50 e3                                      cmp r0, #0
0036ff18  08 20 82 e2                                      add r2, r2, #8
0036ff1c  00 20 84 e5                                      str r2, [r4]
0036ff20  02 00 00 0a                                      beq #0x36ff30
0036ff24  45 81 fe eb                                      bl #0x310440
0036ff28  00 30 a0 e3                                      mov r3, #0
0036ff2c  20 30 84 e5                                      str r3, [r4, #0x20]
0036ff30  04 00 a0 e1                                      mov r0, r4
0036ff34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036ff38  88 4b 62 00 ec 2a 00 00                          .byte 0x88, 0x4b, 0x62, 0x00, 0xec, 0x2a, 0x00, 0x00

; FUNCTION 0x00370258, declared_size=80, range_size=80, mode=arm
; class-group: NetStructByteArray<3u>
; alias: _ZN18NetStructByteArrayILj3EE9SetBufferEPKvi
; demangled: NetStructByteArray<3u>::SetBuffer(void const*, int)
; decoder-mode: arm
00370258  70 40 2d e9                                      push {r4, r5, r6, lr}
0037025c  00 c0 90 e5                                      ldr ip, [r0]
00370260  08 d0 4d e2                                      sub sp, sp, #8
00370264  00 30 a0 e3                                      mov r3, #0
00370268  00 50 a0 e1                                      mov r5, r0
0037026c  0d 00 a0 e1                                      mov r0, sp
00370270  1c 60 9c e5                                      ldr r6, [ip, #0x1c]
00370274  04 30 8d e5                                      str r3, [sp, #4]
00370278  00 30 8d e5                                      str r3, [sp]
0037027c  ca f6 ff eb                                      bl #0x36ddac
00370280  05 00 a0 e1                                      mov r0, r5
00370284  0d 10 a0 e1                                      mov r1, sp
00370288  36 ff 2f e1                                      blx r6
0037028c  00 00 9d e5                                      ldr r0, [sp]
00370290  0d 40 a0 e1                                      mov r4, sp
00370294  00 00 50 e3                                      cmp r0, #0
00370298  00 00 00 0a                                      beq #0x3702a0
0037029c  67 80 fe eb                                      bl #0x310440
003702a0  08 d0 8d e2                                      add sp, sp, #8
003702a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003703b0, declared_size=128, range_size=128, mode=arm
; class-group: NetStructByteArray<3u>
; alias: _ZN18NetStructByteArrayILj3EE4ReadER12NetBitStream
; demangled: NetStructByteArray<3u>::Read(NetBitStream&)
; decoder-mode: arm
003703b0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003703b4  01 40 a0 e1                                      mov r4, r1
003703b8  14 d0 4d e2                                      sub sp, sp, #0x14
003703bc  00 50 a0 e1                                      mov r5, r0
003703c0  10 10 a0 e3                                      mov r1, #0x10
003703c4  04 00 a0 e1                                      mov r0, r4
003703c8  98 78 12 eb                                      bl #0x80e630
003703cc  0c 60 8d e2                                      add r6, sp, #0xc
003703d0  00 70 a0 e1                                      mov r7, r0
003703d4  06 10 a0 e1                                      mov r1, r6
003703d8  04 00 a0 e1                                      mov r0, r4
003703dc  07 20 a0 e1                                      mov r2, r7
003703e0  10 7a 12 eb                                      bl #0x80ec28
003703e4  00 c0 95 e5                                      ldr ip, [r5]
003703e8  04 40 8d e2                                      add r4, sp, #4
003703ec  00 30 a0 e3                                      mov r3, #0
003703f0  06 10 a0 e1                                      mov r1, r6
003703f4  07 20 a0 e1                                      mov r2, r7
003703f8  04 00 a0 e1                                      mov r0, r4
003703fc  1c 60 9c e5                                      ldr r6, [ip, #0x1c]
00370400  08 30 8d e5                                      str r3, [sp, #8]
00370404  04 30 8d e5                                      str r3, [sp, #4]
00370408  67 f6 ff eb                                      bl #0x36ddac
0037040c  05 00 a0 e1                                      mov r0, r5
00370410  04 10 a0 e1                                      mov r1, r4
00370414  36 ff 2f e1                                      blx r6
00370418  04 00 9d e5                                      ldr r0, [sp, #4]
0037041c  00 00 50 e3                                      cmp r0, #0
00370420  00 00 00 0a                                      beq #0x370428
00370424  05 80 fe eb                                      bl #0x310440
00370428  14 d0 8d e2                                      add sp, sp, #0x14
0037042c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00370608, declared_size=184, range_size=184, mode=arm
; class-group: NetStructByteArray<3u>
; alias: _ZN18NetStructByteArrayILj3EEC1E9ByteArray
; demangled: NetStructByteArray<3u>::NetStructByteArray(ByteArray)
; decoder-mode: arm
00370608  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0037060c  0c d0 4d e2                                      sub sp, sp, #0xc
00370610  00 40 a0 e1                                      mov r4, r0
00370614  00 50 a0 e3                                      mov r5, #0
00370618  04 20 91 e5                                      ldr r2, [r1, #4]
0037061c  0d 00 a0 e1                                      mov r0, sp
00370620  00 10 91 e5                                      ldr r1, [r1]
00370624  88 60 9f e5                                      ldr r6, [pc, #0x88]
00370628  00 50 8d e5                                      str r5, [sp]
0037062c  04 50 8d e5                                      str r5, [sp, #4]
00370630  dd f5 ff eb                                      bl #0x36ddac
00370634  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00370638  06 60 8f e0                                      add r6, pc, r6
0037063c  18 10 a0 e3                                      mov r1, #0x18
00370640  03 30 96 e7                                      ldr r3, [r6, r3]
00370644  00 20 e0 e3                                      mvn r2, #0
00370648  04 10 84 e5                                      str r1, [r4, #4]
0037064c  08 30 83 e2                                      add r3, r3, #8
00370650  00 00 a0 e3                                      mov r0, #0
00370654  00 10 a0 e3                                      mov r1, #0
00370658  f8 00 c4 e1                                      strd r0, r1, [r4, #8]
0037065c  04 00 a0 e1                                      mov r0, r4
00370660  14 20 84 e5                                      str r2, [r4, #0x14]
00370664  00 30 84 e5                                      str r3, [r4]
00370668  24 50 84 e5                                      str r5, [r4, #0x24]
0037066c  10 20 84 e5                                      str r2, [r4, #0x10]
00370670  18 50 84 e5                                      str r5, [r4, #0x18]
00370674  1c 50 c4 e5                                      strb r5, [r4, #0x1c]
00370678  20 50 84 e5                                      str r5, [r4, #0x20]
0037067c  0d 10 a0 e1                                      mov r1, sp
00370680  f7 fa ff eb                                      bl #0x36f264
00370684  00 00 9d e5                                      ldr r0, [sp]
00370688  0d 70 a0 e1                                      mov r7, sp
0037068c  05 00 50 e1                                      cmp r0, r5
00370690  00 00 00 0a                                      beq #0x370698
00370694  69 7f fe eb                                      bl #0x310440
00370698  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0037069c  04 00 a0 e1                                      mov r0, r4
003706a0  03 30 96 e7                                      ldr r3, [r6, r3]
003706a4  08 30 83 e2                                      add r3, r3, #8
003706a8  00 30 84 e5                                      str r3, [r4]
003706ac  0c d0 8d e2                                      add sp, sp, #0xc
003706b0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003706b4  58 44 62 00 ec 2a 00 00 f8 1c 00 00              .byte 0x58, 0x44, 0x62, 0x00, 0xec, 0x2a, 0x00, 0x00, 0xf8, 0x1c, 0x00, 0x00

; FUNCTION 0x003708a4, declared_size=100, range_size=100, mode=arm
; class-group: NetStructByteArray<3u>
; alias: _ZN18NetStructByteArrayILj3EED0Ev
; demangled: NetStructByteArray<3u>::~NetStructByteArray()
; decoder-mode: arm
003708a4  70 40 2d e9                                      push {r4, r5, r6, lr}
003708a8  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
003708ac  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003708b0  00 40 a0 e1                                      mov r4, r0
003708b4  05 50 8f e0                                      add r5, pc, r5
003708b8  20 00 90 e5                                      ldr r0, [r0, #0x20]
003708bc  03 30 95 e7                                      ldr r3, [r5, r3]
003708c0  00 00 50 e3                                      cmp r0, #0
003708c4  08 30 83 e2                                      add r3, r3, #8
003708c8  00 30 84 e5                                      str r3, [r4]
003708cc  02 00 00 0a                                      beq #0x3708dc
003708d0  da 7e fe eb                                      bl #0x310440
003708d4  00 30 a0 e3                                      mov r3, #0
003708d8  20 30 84 e5                                      str r3, [r4, #0x20]
003708dc  20 30 9f e5                                      ldr r3, [pc, #0x20]
003708e0  04 00 a0 e1                                      mov r0, r4
003708e4  03 30 95 e7                                      ldr r3, [r5, r3]
003708e8  08 30 83 e2                                      add r3, r3, #8
003708ec  00 30 84 e5                                      str r3, [r4]
003708f0  d2 7e fe eb                                      bl #0x310440
003708f4  04 00 a0 e1                                      mov r0, r4
003708f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003708fc  dc 41 62 00 ec 2a 00 00 a8 10 00 00              .byte 0xdc, 0x41, 0x62, 0x00, 0xec, 0x2a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
