; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d398, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<30u>
; alias: _ZN18NetStructByteArrayILj30EE12GetBufferPtrEv
; demangled: NetStructByteArray<30u>::GetBufferPtr()
; decoder-mode: arm
0036d398  20 00 90 e5                                      ldr r0, [r0, #0x20]
0036d39c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d3a0, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<30u>
; alias: _ZN18NetStructByteArrayILj30EE13GetBufferSizeEv
; demangled: NetStructByteArray<30u>::GetBufferSize()
; decoder-mode: arm
0036d3a0  24 00 90 e5                                      ldr r0, [r0, #0x24]
0036d3a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d3a8, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<30u>
; alias: _ZN18NetStructByteArrayILj30EE16GetMaxBufferSizeEv
; demangled: NetStructByteArray<30u>::GetMaxBufferSize()
; decoder-mode: arm
0036d3a8  1e 00 a0 e3                                      mov r0, #0x1e
0036d3ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d76c, declared_size=60, range_size=60, mode=arm
; class-group: NetStructByteArray<30u>
; alias: _ZN18NetStructByteArrayILj30EE9GetBufferEPvi
; demangled: NetStructByteArray<30u>::GetBuffer(void*, int)
; decoder-mode: arm
0036d76c  10 40 2d e9                                      push {r4, lr}
0036d770  20 30 90 e5                                      ldr r3, [r0, #0x20]
0036d774  00 40 a0 e1                                      mov r4, r0
0036d778  00 00 53 e3                                      cmp r3, #0
0036d77c  07 00 00 0a                                      beq #0x36d7a0
0036d780  24 20 90 e5                                      ldr r2, [r0, #0x24]
0036d784  00 00 52 e3                                      cmp r2, #0
0036d788  04 00 00 da                                      ble #0x36d7a0
0036d78c  01 00 a0 e1                                      mov r0, r1
0036d790  03 10 a0 e1                                      mov r1, r3
0036d794  33 84 fe eb                                      bl #0x30e868
0036d798  24 00 94 e5                                      ldr r0, [r4, #0x24]
0036d79c  10 80 bd e8                                      pop {r4, pc}
0036d7a0  00 00 a0 e3                                      mov r0, #0
0036d7a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036dc64, declared_size=48, range_size=48, mode=arm
; class-group: NetStructByteArray<30u>
; alias: _ZN18NetStructByteArrayILj30EE5WriteER12NetBitStream
; demangled: NetStructByteArray<30u>::Write(NetBitStream&)
; decoder-mode: arm
0036dc64  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dc68  01 50 a0 e1                                      mov r5, r1
0036dc6c  00 40 a0 e1                                      mov r4, r0
0036dc70  24 10 90 e5                                      ldr r1, [r0, #0x24]
0036dc74  10 20 a0 e3                                      mov r2, #0x10
0036dc78  05 00 a0 e1                                      mov r0, r5
0036dc7c  56 82 12 eb                                      bl #0x80e5dc
0036dc80  24 20 94 e5                                      ldr r2, [r4, #0x24]
0036dc84  20 10 94 e5                                      ldr r1, [r4, #0x20]
0036dc88  05 00 a0 e1                                      mov r0, r5
0036dc8c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036dc90  44 84 12 ea                                      b #0x80eda8

; FUNCTION 0x0036ff40, declared_size=72, range_size=72, mode=arm
; class-group: NetStructByteArray<30u>
; alias: _ZN18NetStructByteArrayILj30EED1Ev
; demangled: NetStructByteArray<30u>::~NetStructByteArray()
; decoder-mode: arm
0036ff40  10 40 2d e9                                      push {r4, lr}
0036ff44  34 30 9f e5                                      ldr r3, [pc, #0x34]
0036ff48  34 20 9f e5                                      ldr r2, [pc, #0x34]
0036ff4c  00 40 a0 e1                                      mov r4, r0
0036ff50  03 30 8f e0                                      add r3, pc, r3
0036ff54  20 00 90 e5                                      ldr r0, [r0, #0x20]
0036ff58  02 20 93 e7                                      ldr r2, [r3, r2]
0036ff5c  00 00 50 e3                                      cmp r0, #0
0036ff60  08 20 82 e2                                      add r2, r2, #8
0036ff64  00 20 84 e5                                      str r2, [r4]
0036ff68  02 00 00 0a                                      beq #0x36ff78
0036ff6c  33 81 fe eb                                      bl #0x310440
0036ff70  00 30 a0 e3                                      mov r3, #0
0036ff74  20 30 84 e5                                      str r3, [r4, #0x20]
0036ff78  04 00 a0 e1                                      mov r0, r4
0036ff7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036ff80  40 4b 62 00 ec 2a 00 00                          .byte 0x40, 0x4b, 0x62, 0x00, 0xec, 0x2a, 0x00, 0x00

; FUNCTION 0x003702a8, declared_size=80, range_size=80, mode=arm
; class-group: NetStructByteArray<30u>
; alias: _ZN18NetStructByteArrayILj30EE9SetBufferEPKvi
; demangled: NetStructByteArray<30u>::SetBuffer(void const*, int)
; decoder-mode: arm
003702a8  70 40 2d e9                                      push {r4, r5, r6, lr}
003702ac  00 c0 90 e5                                      ldr ip, [r0]
003702b0  08 d0 4d e2                                      sub sp, sp, #8
003702b4  00 30 a0 e3                                      mov r3, #0
003702b8  00 50 a0 e1                                      mov r5, r0
003702bc  0d 00 a0 e1                                      mov r0, sp
003702c0  1c 60 9c e5                                      ldr r6, [ip, #0x1c]
003702c4  04 30 8d e5                                      str r3, [sp, #4]
003702c8  00 30 8d e5                                      str r3, [sp]
003702cc  b6 f6 ff eb                                      bl #0x36ddac
003702d0  05 00 a0 e1                                      mov r0, r5
003702d4  0d 10 a0 e1                                      mov r1, sp
003702d8  36 ff 2f e1                                      blx r6
003702dc  00 00 9d e5                                      ldr r0, [sp]
003702e0  0d 40 a0 e1                                      mov r4, sp
003702e4  00 00 50 e3                                      cmp r0, #0
003702e8  00 00 00 0a                                      beq #0x3702f0
003702ec  53 80 fe eb                                      bl #0x310440
003702f0  08 d0 8d e2                                      add sp, sp, #8
003702f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00370430, declared_size=184, range_size=184, mode=arm
; class-group: NetStructByteArray<30u>
; alias: _ZN18NetStructByteArrayILj30EE4ReadER12NetBitStream
; demangled: NetStructByteArray<30u>::Read(NetBitStream&)
; decoder-mode: arm
00370430  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00370434  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
00370438  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
0037043c  01 60 a0 e1                                      mov r6, r1
00370440  04 40 8f e0                                      add r4, pc, r4
00370444  05 30 94 e7                                      ldr r3, [r4, r5]
00370448  34 d0 4d e2                                      sub sp, sp, #0x34
0037044c  00 70 a0 e1                                      mov r7, r0
00370450  00 30 93 e5                                      ldr r3, [r3]
00370454  10 10 a0 e3                                      mov r1, #0x10
00370458  06 00 a0 e1                                      mov r0, r6
0037045c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00370460  72 78 12 eb                                      bl #0x80e630
00370464  0c 80 8d e2                                      add r8, sp, #0xc
00370468  00 a0 a0 e1                                      mov sl, r0
0037046c  08 10 a0 e1                                      mov r1, r8
00370470  06 00 a0 e1                                      mov r0, r6
00370474  0a 20 a0 e1                                      mov r2, sl
00370478  ea 79 12 eb                                      bl #0x80ec28
0037047c  00 c0 97 e5                                      ldr ip, [r7]
00370480  04 60 8d e2                                      add r6, sp, #4
00370484  00 30 a0 e3                                      mov r3, #0
00370488  08 10 a0 e1                                      mov r1, r8
0037048c  0a 20 a0 e1                                      mov r2, sl
00370490  06 00 a0 e1                                      mov r0, r6
00370494  1c 80 9c e5                                      ldr r8, [ip, #0x1c]
00370498  08 30 8d e5                                      str r3, [sp, #8]
0037049c  04 30 8d e5                                      str r3, [sp, #4]
003704a0  41 f6 ff eb                                      bl #0x36ddac
003704a4  07 00 a0 e1                                      mov r0, r7
003704a8  06 10 a0 e1                                      mov r1, r6
003704ac  38 ff 2f e1                                      blx r8
003704b0  04 00 9d e5                                      ldr r0, [sp, #4]
003704b4  00 00 50 e3                                      cmp r0, #0
003704b8  00 00 00 0a                                      beq #0x3704c0
003704bc  df 7f fe eb                                      bl #0x310440
003704c0  05 30 94 e7                                      ldr r3, [r4, r5]
003704c4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003704c8  00 30 93 e5                                      ldr r3, [r3]
003704cc  03 00 52 e1                                      cmp r2, r3
003704d0  01 00 00 1a                                      bne #0x3704dc
003704d4  34 d0 8d e2                                      add sp, sp, #0x34
003704d8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003704dc  8b 77 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003704e0  50 46 62 00 ac 40 00 00                          .byte 0x50, 0x46, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x003706c0, declared_size=184, range_size=184, mode=arm
; class-group: NetStructByteArray<30u>
; alias: _ZN18NetStructByteArrayILj30EEC1E9ByteArray
; demangled: NetStructByteArray<30u>::NetStructByteArray(ByteArray)
; decoder-mode: arm
003706c0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003706c4  0c d0 4d e2                                      sub sp, sp, #0xc
003706c8  00 40 a0 e1                                      mov r4, r0
003706cc  00 50 a0 e3                                      mov r5, #0
003706d0  04 20 91 e5                                      ldr r2, [r1, #4]
003706d4  0d 00 a0 e1                                      mov r0, sp
003706d8  00 10 91 e5                                      ldr r1, [r1]
003706dc  88 60 9f e5                                      ldr r6, [pc, #0x88]
003706e0  00 50 8d e5                                      str r5, [sp]
003706e4  04 50 8d e5                                      str r5, [sp, #4]
003706e8  af f5 ff eb                                      bl #0x36ddac
003706ec  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003706f0  06 60 8f e0                                      add r6, pc, r6
003706f4  f0 10 a0 e3                                      mov r1, #0xf0
003706f8  03 30 96 e7                                      ldr r3, [r6, r3]
003706fc  00 20 e0 e3                                      mvn r2, #0
00370700  04 10 84 e5                                      str r1, [r4, #4]
00370704  08 30 83 e2                                      add r3, r3, #8
00370708  00 00 a0 e3                                      mov r0, #0
0037070c  00 10 a0 e3                                      mov r1, #0
00370710  f8 00 c4 e1                                      strd r0, r1, [r4, #8]
00370714  04 00 a0 e1                                      mov r0, r4
00370718  14 20 84 e5                                      str r2, [r4, #0x14]
0037071c  00 30 84 e5                                      str r3, [r4]
00370720  24 50 84 e5                                      str r5, [r4, #0x24]
00370724  10 20 84 e5                                      str r2, [r4, #0x10]
00370728  18 50 84 e5                                      str r5, [r4, #0x18]
0037072c  1c 50 c4 e5                                      strb r5, [r4, #0x1c]
00370730  20 50 84 e5                                      str r5, [r4, #0x20]
00370734  0d 10 a0 e1                                      mov r1, sp
00370738  c9 fa ff eb                                      bl #0x36f264
0037073c  00 00 9d e5                                      ldr r0, [sp]
00370740  0d 70 a0 e1                                      mov r7, sp
00370744  05 00 50 e1                                      cmp r0, r5
00370748  00 00 00 0a                                      beq #0x370750
0037074c  3b 7f fe eb                                      bl #0x310440
00370750  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00370754  04 00 a0 e1                                      mov r0, r4
00370758  03 30 96 e7                                      ldr r3, [r6, r3]
0037075c  08 30 83 e2                                      add r3, r3, #8
00370760  00 30 84 e5                                      str r3, [r4]
00370764  0c d0 8d e2                                      add sp, sp, #0xc
00370768  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0037076c  a0 43 62 00 ec 2a 00 00 ac 28 00 00              .byte 0xa0, 0x43, 0x62, 0x00, 0xec, 0x2a, 0x00, 0x00, 0xac, 0x28, 0x00, 0x00

; FUNCTION 0x00370840, declared_size=100, range_size=100, mode=arm
; class-group: NetStructByteArray<30u>
; alias: _ZN18NetStructByteArrayILj30EED0Ev
; demangled: NetStructByteArray<30u>::~NetStructByteArray()
; decoder-mode: arm
00370840  70 40 2d e9                                      push {r4, r5, r6, lr}
00370844  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
00370848  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0037084c  00 40 a0 e1                                      mov r4, r0
00370850  05 50 8f e0                                      add r5, pc, r5
00370854  20 00 90 e5                                      ldr r0, [r0, #0x20]
00370858  03 30 95 e7                                      ldr r3, [r5, r3]
0037085c  00 00 50 e3                                      cmp r0, #0
00370860  08 30 83 e2                                      add r3, r3, #8
00370864  00 30 84 e5                                      str r3, [r4]
00370868  02 00 00 0a                                      beq #0x370878
0037086c  f3 7e fe eb                                      bl #0x310440
00370870  00 30 a0 e3                                      mov r3, #0
00370874  20 30 84 e5                                      str r3, [r4, #0x20]
00370878  20 30 9f e5                                      ldr r3, [pc, #0x20]
0037087c  04 00 a0 e1                                      mov r0, r4
00370880  03 30 95 e7                                      ldr r3, [r5, r3]
00370884  08 30 83 e2                                      add r3, r3, #8
00370888  00 30 84 e5                                      str r3, [r4]
0037088c  eb 7e fe eb                                      bl #0x310440
00370890  04 00 a0 e1                                      mov r0, r4
00370894  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00370898  40 42 62 00 ec 2a 00 00 a8 10 00 00              .byte 0x40, 0x42, 0x62, 0x00, 0xec, 0x2a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
