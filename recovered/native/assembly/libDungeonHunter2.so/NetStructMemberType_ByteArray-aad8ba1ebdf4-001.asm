; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d388, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<ByteArray>
; alias: _ZN19NetStructMemberTypeI9ByteArrayE9TestValueERKS0_
; demangled: NetStructMemberType<ByteArray>::TestValue(ByteArray const&)
; decoder-mode: arm
0036d388  01 00 a0 e3                                      mov r0, #1
0036d38c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d390, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<ByteArray>
; alias: _ZN19NetStructMemberTypeI9ByteArrayE8GetValueEv
; demangled: NetStructMemberType<ByteArray>::GetValue()
; decoder-mode: arm
0036d390  20 00 80 e2                                      add r0, r0, #0x20
0036d394  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036f264, declared_size=88, range_size=88, mode=arm
; class-group: NetStructMemberType<ByteArray>
; alias: _ZN19NetStructMemberTypeI9ByteArrayE8SetValueERKS0_
; demangled: NetStructMemberType<ByteArray>::SetValue(ByteArray const&)
; decoder-mode: arm
0036f264  70 40 2d e9                                      push {r4, r5, r6, lr}
0036f268  24 20 90 e5                                      ldr r2, [r0, #0x24]
0036f26c  04 60 91 e5                                      ldr r6, [r1, #4]
0036f270  00 40 a0 e1                                      mov r4, r0
0036f274  01 50 a0 e1                                      mov r5, r1
0036f278  06 00 52 e1                                      cmp r2, r6
0036f27c  08 00 00 0a                                      beq #0x36f2a4
0036f280  20 00 84 e2                                      add r0, r4, #0x20
0036f284  00 00 55 e1                                      cmp r5, r0
0036f288  02 00 00 0a                                      beq #0x36f298
0036f28c  00 10 95 e5                                      ldr r1, [r5]
0036f290  06 20 a0 e1                                      mov r2, r6
0036f294  c4 fa ff eb                                      bl #0x36ddac
0036f298  04 00 a0 e1                                      mov r0, r4
0036f29c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036f2a0  37 97 12 ea                                      b #0x814f84
0036f2a4  20 00 90 e5                                      ldr r0, [r0, #0x20]
0036f2a8  00 10 91 e5                                      ldr r1, [r1]
0036f2ac  cb 7c fe eb                                      bl #0x30e5e0
0036f2b0  00 00 50 e3                                      cmp r0, #0
0036f2b4  f1 ff ff 1a                                      bne #0x36f280
0036f2b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0036ff88, declared_size=72, range_size=72, mode=arm
; class-group: NetStructMemberType<ByteArray>
; alias: _ZN19NetStructMemberTypeI9ByteArrayED1Ev
; demangled: NetStructMemberType<ByteArray>::~NetStructMemberType()
; decoder-mode: arm
0036ff88  10 40 2d e9                                      push {r4, lr}
0036ff8c  34 30 9f e5                                      ldr r3, [pc, #0x34]
0036ff90  34 20 9f e5                                      ldr r2, [pc, #0x34]
0036ff94  00 40 a0 e1                                      mov r4, r0
0036ff98  03 30 8f e0                                      add r3, pc, r3
0036ff9c  20 00 90 e5                                      ldr r0, [r0, #0x20]
0036ffa0  02 20 93 e7                                      ldr r2, [r3, r2]
0036ffa4  00 00 50 e3                                      cmp r0, #0
0036ffa8  08 20 82 e2                                      add r2, r2, #8
0036ffac  00 20 84 e5                                      str r2, [r4]
0036ffb0  02 00 00 0a                                      beq #0x36ffc0
0036ffb4  21 81 fe eb                                      bl #0x310440
0036ffb8  00 30 a0 e3                                      mov r3, #0
0036ffbc  20 30 84 e5                                      str r3, [r4, #0x20]
0036ffc0  04 00 a0 e1                                      mov r0, r4
0036ffc4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036ffc8  f8 4a 62 00 ec 2a 00 00                          .byte 0xf8, 0x4a, 0x62, 0x00, 0xec, 0x2a, 0x00, 0x00

; FUNCTION 0x003704e8, declared_size=104, range_size=104, mode=arm
; class-group: NetStructMemberType<ByteArray>
; alias: _ZN19NetStructMemberTypeI9ByteArrayE5EraseER12NetBitStream
; demangled: NetStructMemberType<ByteArray>::Erase(NetBitStream&)
; decoder-mode: arm
003704e8  70 40 2d e9                                      push {r4, r5, r6, lr}
003704ec  00 40 a0 e1                                      mov r4, r0
003704f0  08 d0 4d e2                                      sub sp, sp, #8
003704f4  24 20 90 e5                                      ldr r2, [r0, #0x24]
003704f8  00 30 a0 e3                                      mov r3, #0
003704fc  01 60 a0 e1                                      mov r6, r1
00370500  0d 00 a0 e1                                      mov r0, sp
00370504  20 10 94 e5                                      ldr r1, [r4, #0x20]
00370508  04 30 8d e5                                      str r3, [sp, #4]
0037050c  00 30 8d e5                                      str r3, [sp]
00370510  25 f6 ff eb                                      bl #0x36ddac
00370514  04 00 a0 e1                                      mov r0, r4
00370518  06 10 a0 e1                                      mov r1, r6
0037051c  fa 92 12 eb                                      bl #0x81510c
00370520  0d 50 a0 e1                                      mov r5, sp
00370524  20 00 84 e2                                      add r0, r4, #0x20
00370528  05 00 50 e1                                      cmp r0, r5
0037052c  01 00 00 0a                                      beq #0x370538
00370530  06 00 9d e8                                      ldm sp, {r1, r2}
00370534  1c f6 ff eb                                      bl #0x36ddac
00370538  00 00 9d e5                                      ldr r0, [sp]
0037053c  00 00 50 e3                                      cmp r0, #0
00370540  00 00 00 0a                                      beq #0x370548
00370544  bd 7f fe eb                                      bl #0x310440
00370548  08 d0 8d e2                                      add sp, sp, #8
0037054c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00370778, declared_size=100, range_size=100, mode=arm
; class-group: NetStructMemberType<ByteArray>
; alias: _ZN19NetStructMemberTypeI9ByteArrayED0Ev
; demangled: NetStructMemberType<ByteArray>::~NetStructMemberType()
; decoder-mode: arm
00370778  70 40 2d e9                                      push {r4, r5, r6, lr}
0037077c  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
00370780  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00370784  00 40 a0 e1                                      mov r4, r0
00370788  05 50 8f e0                                      add r5, pc, r5
0037078c  20 00 90 e5                                      ldr r0, [r0, #0x20]
00370790  03 30 95 e7                                      ldr r3, [r5, r3]
00370794  00 00 50 e3                                      cmp r0, #0
00370798  08 30 83 e2                                      add r3, r3, #8
0037079c  00 30 84 e5                                      str r3, [r4]
003707a0  02 00 00 0a                                      beq #0x3707b0
003707a4  25 7f fe eb                                      bl #0x310440
003707a8  00 30 a0 e3                                      mov r3, #0
003707ac  20 30 84 e5                                      str r3, [r4, #0x20]
003707b0  20 30 9f e5                                      ldr r3, [pc, #0x20]
003707b4  04 00 a0 e1                                      mov r0, r4
003707b8  03 30 95 e7                                      ldr r3, [r5, r3]
003707bc  08 30 83 e2                                      add r3, r3, #8
003707c0  00 30 84 e5                                      str r3, [r4]
003707c4  1d 7f fe eb                                      bl #0x310440
003707c8  04 00 a0 e1                                      mov r0, r4
003707cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003707d0  08 43 62 00 ec 2a 00 00 a8 10 00 00              .byte 0x08, 0x43, 0x62, 0x00, 0xec, 0x2a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
