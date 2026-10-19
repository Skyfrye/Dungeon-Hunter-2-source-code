; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080e410, declared_size=28, range_size=28, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream14SetRevertPointEv
; demangled: NetBitStream::SetRevertPoint()
; decoder-mode: arm
0080e410  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0080e414  10 30 90 e5                                      ldr r3, [r0, #0x10]
0080e418  00 10 a0 e3                                      mov r1, #0
0080e41c  1c 10 80 e5                                      str r1, [r0, #0x1c]
0080e420  14 20 80 e5                                      str r2, [r0, #0x14]
0080e424  18 30 80 e5                                      str r3, [r0, #0x18]
0080e428  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e42c, declared_size=108, range_size=108, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream8WriteBitEj
; demangled: NetBitStream::WriteBit(unsigned int)
; decoder-mode: arm
0080e42c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0080e430  30 00 2d e9                                      push {r4, r5}
0080e434  02 00 13 e3                                      tst r3, #2
0080e438  03 00 00 0a                                      beq #0x80e44c
0080e43c  02 30 83 e3                                      orr r3, r3, #2
0080e440  1c 30 80 e5                                      str r3, [r0, #0x1c]
0080e444  30 00 bd e8                                      pop {r4, r5}
0080e448  1e ff 2f e1                                      bx lr
0080e44c  10 20 90 e5                                      ldr r2, [r0, #0x10]
0080e450  08 c0 90 e5                                      ldr ip, [r0, #8]
0080e454  8c 01 52 e1                                      cmp r2, ip, lsl #3
0080e458  f7 ff ff 0a                                      beq #0x80e43c
0080e45c  04 30 90 e5                                      ldr r3, [r0, #4]
0080e460  00 10 51 e2                                      subs r1, r1, #0
0080e464  00 10 e0 13                                      mvnne r1, #0
0080e468  02 50 e0 e1                                      mvn r5, r2
0080e46c  a2 c1 d3 e7                                      ldrb ip, [r3, r2, lsr #3]
0080e470  07 50 05 e2                                      and r5, r5, #7
0080e474  0c 40 21 e0                                      eor r4, r1, ip
0080e478  01 10 a0 e3                                      mov r1, #1
0080e47c  11 15 04 e0                                      and r1, r4, r1, lsl r5
0080e480  0c c0 21 e0                                      eor ip, r1, ip
0080e484  a2 c1 c3 e7                                      strb ip, [r3, r2, lsr #3]
0080e488  10 30 90 e5                                      ldr r3, [r0, #0x10]
0080e48c  01 30 83 e2                                      add r3, r3, #1
0080e490  10 30 80 e5                                      str r3, [r0, #0x10]
0080e494  ea ff ff ea                                      b #0x80e444

; FUNCTION 0x0080e498, declared_size=80, range_size=80, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream7ReadBitEv
; demangled: NetBitStream::ReadBit()
; decoder-mode: arm
0080e498  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0080e49c  00 30 a0 e1                                      mov r3, r0
0080e4a0  08 00 90 e5                                      ldr r0, [r0, #8]
0080e4a4  01 10 82 e2                                      add r1, r2, #1
0080e4a8  a1 01 50 e1                                      cmp r0, r1, lsr #3
0080e4ac  08 00 00 3a                                      blo #0x80e4d4
0080e4b0  04 00 93 e5                                      ldr r0, [r3, #4]
0080e4b4  0c 10 83 e5                                      str r1, [r3, #0xc]
0080e4b8  02 30 e0 e1                                      mvn r3, r2
0080e4bc  a2 21 d0 e7                                      ldrb r2, [r0, r2, lsr #3]
0080e4c0  07 30 03 e2                                      and r3, r3, #7
0080e4c4  01 00 a0 e3                                      mov r0, #1
0080e4c8  10 03 02 e0                                      and r0, r2, r0, lsl r3
0080e4cc  50 03 a0 e1                                      asr r0, r0, r3
0080e4d0  1e ff 2f e1                                      bx lr
0080e4d4  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0080e4d8  00 00 a0 e3                                      mov r0, #0
0080e4dc  01 20 82 e3                                      orr r2, r2, #1
0080e4e0  1c 20 83 e5                                      str r2, [r3, #0x1c]
0080e4e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080e4e8, declared_size=124, range_size=124, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream9WriteByteEhj
; demangled: NetBitStream::WriteByte(unsigned char, unsigned int)
; decoder-mode: arm
0080e4e8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0080e4ec  70 00 2d e9                                      push {r4, r5, r6}
0080e4f0  02 00 13 e3                                      tst r3, #2
0080e4f4  03 00 00 0a                                      beq #0x80e508
0080e4f8  02 30 83 e3                                      orr r3, r3, #2
0080e4fc  1c 30 80 e5                                      str r3, [r0, #0x1c]
0080e500  70 00 bd e8                                      pop {r4, r5, r6}
0080e504  1e ff 2f e1                                      bx lr
0080e508  10 c0 90 e5                                      ldr ip, [r0, #0x10]
0080e50c  08 40 90 e5                                      ldr r4, [r0, #8]
0080e510  84 41 6c e0                                      rsb r4, ip, r4, lsl #3
0080e514  04 00 52 e1                                      cmp r2, r4
0080e518  f6 ff ff 8a                                      bhi #0x80e4f8
0080e51c  08 00 54 e3                                      cmp r4, #8
0080e520  f4 ff ff 9a                                      bls #0x80e4f8
0080e524  08 30 62 e2                                      rsb r3, r2, #8
0080e528  11 13 a0 e1                                      lsl r1, r1, r3
0080e52c  04 30 90 e5                                      ldr r3, [r0, #4]
0080e530  71 10 ef e6                                      uxtb r1, r1
0080e534  07 40 0c e2                                      and r4, ip, #7
0080e538  ac 51 d3 e7                                      ldrb r5, [r3, ip, lsr #3]
0080e53c  08 60 64 e2                                      rsb r6, r4, #8
0080e540  11 66 a0 e1                                      lsl r6, r1, r6
0080e544  51 14 85 e1                                      orr r1, r5, r1, asr r4
0080e548  ac 51 83 e0                                      add r5, r3, ip, lsr #3
0080e54c  ac 11 c3 e7                                      strb r1, [r3, ip, lsr #3]
0080e550  01 60 c5 e5                                      strb r6, [r5, #1]
0080e554  10 30 90 e5                                      ldr r3, [r0, #0x10]
0080e558  02 20 83 e0                                      add r2, r3, r2
0080e55c  10 20 80 e5                                      str r2, [r0, #0x10]
0080e560  e6 ff ff ea                                      b #0x80e500

; FUNCTION 0x0080e564, declared_size=120, range_size=120, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream8ReadByteEj
; demangled: NetBitStream::ReadByte(unsigned int)
; decoder-mode: arm
0080e564  f0 00 2d e9                                      push {r4, r5, r6, r7}
0080e568  00 30 a0 e1                                      mov r3, r0
0080e56c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0080e570  10 00 90 e5                                      ldr r0, [r0, #0x10]
0080e574  00 00 62 e0                                      rsb r0, r2, r0
0080e578  00 00 51 e1                                      cmp r1, r0
0080e57c  11 00 00 8a                                      bhi #0x80e5c8
0080e580  04 00 93 e5                                      ldr r0, [r3, #4]
0080e584  07 c0 02 e2                                      and ip, r2, #7
0080e588  08 60 6c e2                                      rsb r6, ip, #8
0080e58c  a2 41 80 e0                                      add r4, r0, r2, lsr #3
0080e590  01 70 d4 e5                                      ldrb r7, [r4, #1]
0080e594  a2 51 d0 e7                                      ldrb r5, [r0, r2, lsr #3]
0080e598  08 40 61 e2                                      rsb r4, r1, #8
0080e59c  57 06 a0 e1                                      asr r0, r7, r6
0080e5a0  15 0c 80 e1                                      orr r0, r0, r5, lsl ip
0080e5a4  70 00 ef e6                                      uxtb r0, r0
0080e5a8  00 c0 e0 e3                                      mvn ip, #0
0080e5ac  50 04 a0 e1                                      asr r0, r0, r4
0080e5b0  70 00 ef e6                                      uxtb r0, r0
0080e5b4  1c 01 c0 e1                                      bic r0, r0, ip, lsl r1
0080e5b8  02 20 81 e0                                      add r2, r1, r2
0080e5bc  0c 20 83 e5                                      str r2, [r3, #0xc]
0080e5c0  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0080e5c4  1e ff 2f e1                                      bx lr
0080e5c8  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0080e5cc  00 00 a0 e3                                      mov r0, #0
0080e5d0  01 20 82 e3                                      orr r2, r2, #1
0080e5d4  1c 20 83 e5                                      str r2, [r3, #0x1c]
0080e5d8  f8 ff ff ea                                      b #0x80e5c0

; FUNCTION 0x0080e5dc, declared_size=84, range_size=84, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream8WriteU32Ejj
; demangled: NetBitStream::WriteU32(unsigned int, unsigned int)
; decoder-mode: arm
0080e5dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080e5e0  07 70 12 e2                                      ands r7, r2, #7
0080e5e4  01 70 a0 13                                      movne r7, #1
0080e5e8  a2 71 97 e0                                      adds r7, r7, r2, lsr #3
0080e5ec  02 40 a0 e1                                      mov r4, r2
0080e5f0  00 80 a0 e1                                      mov r8, r0
0080e5f4  01 50 a0 e1                                      mov r5, r1
0080e5f8  0b 00 00 0a                                      beq #0x80e62c
0080e5fc  00 60 a0 e3                                      mov r6, #0
0080e600  08 00 54 e3                                      cmp r4, #8
0080e604  04 20 a0 31                                      movlo r2, r4
0080e608  08 20 a0 23                                      movhs r2, #8
0080e60c  75 10 ef e6                                      uxtb r1, r5
0080e610  01 60 86 e2                                      add r6, r6, #1
0080e614  08 00 a0 e1                                      mov r0, r8
0080e618  b2 ff ff eb                                      bl #0x80e4e8
0080e61c  07 00 56 e1                                      cmp r6, r7
0080e620  25 54 a0 e1                                      lsr r5, r5, #8
0080e624  08 40 44 e2                                      sub r4, r4, #8
0080e628  f4 ff ff 1a                                      bne #0x80e600
0080e62c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0080e630, declared_size=108, range_size=108, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream7ReadU32Ej
; demangled: NetBitStream::ReadU32(unsigned int)
; decoder-mode: arm
0080e630  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0080e634  07 70 11 e2                                      ands r7, r1, #7
0080e638  01 70 a0 13                                      movne r7, #1
0080e63c  a1 71 87 e0                                      add r7, r7, r1, lsr #3
0080e640  00 00 57 e3                                      cmp r7, #0
0080e644  00 40 a0 c3                                      movgt r4, #0
0080e648  01 a0 a0 e1                                      mov sl, r1
0080e64c  00 80 a0 e1                                      mov r8, r0
0080e650  01 50 a0 c1                                      movgt r5, r1
0080e654  04 60 a0 c1                                      movgt r6, r4
0080e658  0d 00 00 da                                      ble #0x80e694
0080e65c  08 00 55 e3                                      cmp r5, #8
0080e660  05 10 a0 31                                      movlo r1, r5
0080e664  08 10 a0 23                                      movhs r1, #8
0080e668  08 00 a0 e1                                      mov r0, r8
0080e66c  bc ff ff eb                                      bl #0x80e564
0080e670  84 31 a0 e1                                      lsl r3, r4, #3
0080e674  01 40 84 e2                                      add r4, r4, #1
0080e678  04 00 57 e1                                      cmp r7, r4
0080e67c  10 63 86 e1                                      orr r6, r6, r0, lsl r3
0080e680  08 50 45 e2                                      sub r5, r5, #8
0080e684  f4 ff ff 1a                                      bne #0x80e65c
0080e688  00 00 e0 e3                                      mvn r0, #0
0080e68c  10 0a c6 e1                                      bic r0, r6, r0, lsl sl
0080e690  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0080e694  00 00 a0 e3                                      mov r0, #0
0080e698  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0080e790, declared_size=72, range_size=72, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStreamD1Ev
; demangled: NetBitStream::~NetBitStream()
; decoder-mode: arm
0080e790  10 40 2d e9                                      push {r4, lr}
0080e794  34 30 9f e5                                      ldr r3, [pc, #0x34]
0080e798  34 20 9f e5                                      ldr r2, [pc, #0x34]
0080e79c  00 40 a0 e1                                      mov r4, r0
0080e7a0  03 30 8f e0                                      add r3, pc, r3
0080e7a4  04 00 90 e5                                      ldr r0, [r0, #4]
0080e7a8  02 20 93 e7                                      ldr r2, [r3, r2]
0080e7ac  00 00 50 e3                                      cmp r0, #0
0080e7b0  08 20 82 e2                                      add r2, r2, #8
0080e7b4  00 20 84 e5                                      str r2, [r4]
0080e7b8  02 00 00 0a                                      beq #0x80e7c8
0080e7bc  1f 07 ec eb                                      bl #0x310440
0080e7c0  00 30 a0 e3                                      mov r3, #0
0080e7c4  04 30 84 e5                                      str r3, [r4, #4]
0080e7c8  04 00 a0 e1                                      mov r0, r4
0080e7cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0080e7d0  f0 62 18 00 dc 25 00 00                          .byte 0xf0, 0x62, 0x18, 0x00, 0xdc, 0x25, 0x00, 0x00

; FUNCTION 0x0080e7d8, declared_size=28, range_size=28, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStreamD0Ev
; demangled: NetBitStream::~NetBitStream()
; decoder-mode: arm
0080e7d8  10 40 2d e9                                      push {r4, lr}
0080e7dc  00 40 a0 e1                                      mov r4, r0
0080e7e0  ea ff ff eb                                      bl #0x80e790
0080e7e4  04 00 a0 e1                                      mov r0, r4
0080e7e8  14 07 ec eb                                      bl #0x310440
0080e7ec  04 00 a0 e1                                      mov r0, r4
0080e7f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080e7f4, declared_size=72, range_size=72, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStreamD2Ev
; demangled: NetBitStream::~NetBitStream()
; decoder-mode: arm
0080e7f4  10 40 2d e9                                      push {r4, lr}
0080e7f8  34 30 9f e5                                      ldr r3, [pc, #0x34]
0080e7fc  34 20 9f e5                                      ldr r2, [pc, #0x34]
0080e800  00 40 a0 e1                                      mov r4, r0
0080e804  03 30 8f e0                                      add r3, pc, r3
0080e808  04 00 90 e5                                      ldr r0, [r0, #4]
0080e80c  02 20 93 e7                                      ldr r2, [r3, r2]
0080e810  00 00 50 e3                                      cmp r0, #0
0080e814  08 20 82 e2                                      add r2, r2, #8
0080e818  00 20 84 e5                                      str r2, [r4]
0080e81c  02 00 00 0a                                      beq #0x80e82c
0080e820  06 07 ec eb                                      bl #0x310440
0080e824  00 30 a0 e3                                      mov r3, #0
0080e828  04 30 84 e5                                      str r3, [r4, #4]
0080e82c  04 00 a0 e1                                      mov r0, r4
0080e830  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0080e834  8c 62 18 00 dc 25 00 00                          .byte 0x8c, 0x62, 0x18, 0x00, 0xdc, 0x25, 0x00, 0x00

; FUNCTION 0x0080e83c, declared_size=96, range_size=96, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream6RevertEv
; demangled: NetBitStream::Revert()
; decoder-mode: arm
0080e83c  70 00 2d e9                                      push {r4, r5, r6}
0080e840  18 20 90 e5                                      ldr r2, [r0, #0x18]
0080e844  14 c0 90 e5                                      ldr ip, [r0, #0x14]
0080e848  04 40 90 e5                                      ldr r4, [r0, #4]
0080e84c  07 30 12 e2                                      ands r3, r2, #7
0080e850  01 30 a0 13                                      movne r3, #1
0080e854  a2 31 83 e0                                      add r3, r3, r2, lsr #3
0080e858  00 10 a0 e3                                      mov r1, #0
0080e85c  0c c0 80 e5                                      str ip, [r0, #0xc]
0080e860  10 20 80 e5                                      str r2, [r0, #0x10]
0080e864  1c 10 80 e5                                      str r1, [r0, #0x1c]
0080e868  01 c0 43 e2                                      sub ip, r3, #1
0080e86c  0c 50 d4 e7                                      ldrb r5, [r4, ip]
0080e870  08 20 62 e2                                      rsb r2, r2, #8
0080e874  00 60 e0 e3                                      mvn r6, #0
0080e878  07 20 02 e2                                      and r2, r2, #7
0080e87c  16 22 05 e0                                      and r2, r5, r6, lsl r2
0080e880  0c 20 c4 e7                                      strb r2, [r4, ip]
0080e884  08 20 90 e5                                      ldr r2, [r0, #8]
0080e888  04 c0 90 e5                                      ldr ip, [r0, #4]
0080e88c  02 20 63 e0                                      rsb r2, r3, r2
0080e890  03 00 8c e0                                      add r0, ip, r3
0080e894  70 00 bd e8                                      pop {r4, r5, r6}
0080e898  f0 fe eb ea                                      b #0x30e460

; FUNCTION 0x0080e89c, declared_size=52, range_size=52, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream5ResetEv
; demangled: NetBitStream::Reset()
; decoder-mode: arm
0080e89c  70 40 2d e9                                      push {r4, r5, r6, lr}
0080e8a0  00 50 a0 e3                                      mov r5, #0
0080e8a4  00 40 a0 e1                                      mov r4, r0
0080e8a8  10 50 80 e5                                      str r5, [r0, #0x10]
0080e8ac  0c 50 80 e5                                      str r5, [r0, #0xc]
0080e8b0  05 10 a0 e1                                      mov r1, r5
0080e8b4  04 00 90 e5                                      ldr r0, [r0, #4]
0080e8b8  08 20 94 e5                                      ldr r2, [r4, #8]
0080e8bc  e7 fe eb eb                                      bl #0x30e460
0080e8c0  1c 50 84 e5                                      str r5, [r4, #0x1c]
0080e8c4  18 50 84 e5                                      str r5, [r4, #0x18]
0080e8c8  14 50 84 e5                                      str r5, [r4, #0x14]
0080e8cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080e908, declared_size=120, range_size=120, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStreamC1Ej
; demangled: NetBitStream::NetBitStream(unsigned int)
; decoder-mode: arm
0080e908  68 30 9f e5                                      ldr r3, [pc, #0x68]
0080e90c  68 20 9f e5                                      ldr r2, [pc, #0x68]
0080e910  70 40 2d e9                                      push {r4, r5, r6, lr}
0080e914  03 30 8f e0                                      add r3, pc, r3
0080e918  02 20 93 e7                                      ldr r2, [r3, r2]
0080e91c  00 60 a0 e3                                      mov r6, #0
0080e920  01 50 a0 e1                                      mov r5, r1
0080e924  08 20 82 e2                                      add r2, r2, #8
0080e928  00 40 a0 e1                                      mov r4, r0
0080e92c  44 00 80 e8                                      stm r0, {r2, r6}
0080e930  08 60 80 e5                                      str r6, [r0, #8]
0080e934  0c 60 80 e5                                      str r6, [r0, #0xc]
0080e938  10 60 80 e5                                      str r6, [r0, #0x10]
0080e93c  14 60 80 e5                                      str r6, [r0, #0x14]
0080e940  18 60 80 e5                                      str r6, [r0, #0x18]
0080e944  1c 60 80 e5                                      str r6, [r0, #0x1c]
0080e948  02 10 a0 e3                                      mov r1, #2
0080e94c  05 00 a0 e1                                      mov r0, r5
0080e950  05 07 ec eb                                      bl #0x31056c
0080e954  06 10 a0 e1                                      mov r1, r6
0080e958  04 00 84 e5                                      str r0, [r4, #4]
0080e95c  05 20 a0 e1                                      mov r2, r5
0080e960  be fe eb eb                                      bl #0x30e460
0080e964  04 30 94 e5                                      ldr r3, [r4, #4]
0080e968  04 00 a0 e1                                      mov r0, r4
0080e96c  06 00 53 e1                                      cmp r3, r6
0080e970  08 50 84 15                                      strne r5, [r4, #8]
0080e974  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080e978  7c 61 18 00 dc 25 00 00                          .byte 0x7c, 0x61, 0x18, 0x00, 0xdc, 0x25, 0x00, 0x00

; FUNCTION 0x0080ea50, declared_size=120, range_size=120, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStreamC2Ej
; demangled: NetBitStream::NetBitStream(unsigned int)
; decoder-mode: arm
0080ea50  68 30 9f e5                                      ldr r3, [pc, #0x68]
0080ea54  68 20 9f e5                                      ldr r2, [pc, #0x68]
0080ea58  70 40 2d e9                                      push {r4, r5, r6, lr}
0080ea5c  03 30 8f e0                                      add r3, pc, r3
0080ea60  02 20 93 e7                                      ldr r2, [r3, r2]
0080ea64  00 60 a0 e3                                      mov r6, #0
0080ea68  01 50 a0 e1                                      mov r5, r1
0080ea6c  08 20 82 e2                                      add r2, r2, #8
0080ea70  00 40 a0 e1                                      mov r4, r0
0080ea74  44 00 80 e8                                      stm r0, {r2, r6}
0080ea78  08 60 80 e5                                      str r6, [r0, #8]
0080ea7c  0c 60 80 e5                                      str r6, [r0, #0xc]
0080ea80  10 60 80 e5                                      str r6, [r0, #0x10]
0080ea84  14 60 80 e5                                      str r6, [r0, #0x14]
0080ea88  18 60 80 e5                                      str r6, [r0, #0x18]
0080ea8c  1c 60 80 e5                                      str r6, [r0, #0x1c]
0080ea90  02 10 a0 e3                                      mov r1, #2
0080ea94  05 00 a0 e1                                      mov r0, r5
0080ea98  b3 06 ec eb                                      bl #0x31056c
0080ea9c  06 10 a0 e1                                      mov r1, r6
0080eaa0  04 00 84 e5                                      str r0, [r4, #4]
0080eaa4  05 20 a0 e1                                      mov r2, r5
0080eaa8  6c fe eb eb                                      bl #0x30e460
0080eaac  04 30 94 e5                                      ldr r3, [r4, #4]
0080eab0  04 00 a0 e1                                      mov r0, r4
0080eab4  06 00 53 e1                                      cmp r3, r6
0080eab8  08 50 84 15                                      strne r5, [r4, #8]
0080eabc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080eac0  34 60 18 00 dc 25 00 00                          .byte 0x34, 0x60, 0x18, 0x00, 0xdc, 0x25, 0x00, 0x00

; FUNCTION 0x0080eac8, declared_size=256, range_size=256, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream12ShiftMemCopyEPvjPKvji
; demangled: NetBitStream::ShiftMemCopy(void*, unsigned int, void const*, unsigned int, int)
; decoder-mode: arm
0080eac8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080eacc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0080ead0  01 40 a0 e1                                      mov r4, r1
0080ead4  18 50 9d e5                                      ldr r5, [sp, #0x18]
0080ead8  00 00 50 e3                                      cmp r0, #0
0080eadc  13 00 00 da                                      ble #0x80eb30
0080eae0  07 20 15 e2                                      ands r2, r5, #7
0080eae4  01 20 a0 13                                      movne r2, #1
0080eae8  a5 51 92 e0                                      adds r5, r2, r5, lsr #3
0080eaec  20 00 00 0a                                      beq #0x80eb74
0080eaf0  00 60 d1 e5                                      ldrb r6, [r1]
0080eaf4  00 20 a0 e3                                      mov r2, #0
0080eaf8  08 70 60 e2                                      rsb r7, r0, #8
0080eafc  02 c0 a0 e1                                      mov ip, r2
0080eb00  02 10 d3 e7                                      ldrb r1, [r3, r2]
0080eb04  01 c0 8c e2                                      add ip, ip, #1
0080eb08  51 60 86 e1                                      orr r6, r6, r1, asr r0
0080eb0c  02 60 c4 e7                                      strb r6, [r4, r2]
0080eb10  02 60 d3 e7                                      ldrb r6, [r3, r2]
0080eb14  01 20 82 e2                                      add r2, r2, #1
0080eb18  05 00 52 e1                                      cmp r2, r5
0080eb1c  16 67 a0 e1                                      lsl r6, r6, r7
0080eb20  76 60 ef e6                                      uxtb r6, r6
0080eb24  0c 60 c4 e7                                      strb r6, [r4, ip]
0080eb28  f4 ff ff 1a                                      bne #0x80eb00
0080eb2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0080eb30  10 00 00 1a                                      bne #0x80eb78
0080eb34  02 00 55 e1                                      cmp r5, r2
0080eb38  02 50 a0 21                                      movhs r5, r2
0080eb3c  07 60 15 e2                                      ands r6, r5, #7
0080eb40  01 60 a0 13                                      movne r6, #1
0080eb44  a5 61 86 e0                                      add r6, r6, r5, lsr #3
0080eb48  06 20 a0 e1                                      mov r2, r6
0080eb4c  03 10 a0 e1                                      mov r1, r3
0080eb50  01 60 46 e2                                      sub r6, r6, #1
0080eb54  04 00 a0 e1                                      mov r0, r4
0080eb58  42 ff eb eb                                      bl #0x30e868
0080eb5c  06 20 d4 e7                                      ldrb r2, [r4, r6]
0080eb60  08 50 65 e2                                      rsb r5, r5, #8
0080eb64  07 50 05 e2                                      and r5, r5, #7
0080eb68  00 30 e0 e3                                      mvn r3, #0
0080eb6c  13 35 02 e0                                      and r3, r2, r3, lsl r5
0080eb70  06 30 c4 e7                                      strb r3, [r4, r6]
0080eb74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0080eb78  07 10 12 e2                                      ands r1, r2, #7
0080eb7c  01 10 a0 13                                      movne r1, #1
0080eb80  a2 21 91 e0                                      adds r2, r1, r2, lsr #3
0080eb84  fa ff ff 0a                                      beq #0x80eb74
0080eb88  00 00 60 e2                                      rsb r0, r0, #0
0080eb8c  00 10 a0 e3                                      mov r1, #0
0080eb90  08 70 60 e2                                      rsb r7, r0, #8
0080eb94  01 c0 a0 e1                                      mov ip, r1
0080eb98  01 50 d3 e7                                      ldrb r5, [r3, r1]
0080eb9c  01 c0 8c e2                                      add ip, ip, #1
0080eba0  02 00 5c e1                                      cmp ip, r2
0080eba4  15 50 a0 e1                                      lsl r5, r5, r0
0080eba8  75 50 ef e6                                      uxtb r5, r5
0080ebac  01 50 c4 e7                                      strb r5, [r4, r1]
0080ebb0  0c 60 d3 e7                                      ldrb r6, [r3, ip]
0080ebb4  56 57 85 e1                                      orr r5, r5, r6, asr r7
0080ebb8  01 50 c4 e7                                      strb r5, [r4, r1]
0080ebbc  01 10 81 e2                                      add r1, r1, #1
0080ebc0  f4 ff ff 1a                                      bne #0x80eb98
0080ebc4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0080ebc8, declared_size=96, range_size=96, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream21ReadByteArray_BitSizeEPvj
; demangled: NetBitStream::ReadByteArray_BitSize(void*, unsigned int)
; decoder-mode: arm
0080ebc8  70 40 2d e9                                      push {r4, r5, r6, lr}
0080ebcc  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0080ebd0  10 c0 90 e5                                      ldr ip, [r0, #0x10]
0080ebd4  08 d0 4d e2                                      sub sp, sp, #8
0080ebd8  00 40 a0 e1                                      mov r4, r0
0080ebdc  0c c0 63 e0                                      rsb ip, r3, ip
0080ebe0  0c 00 52 e1                                      cmp r2, ip
0080ebe4  02 50 a0 e1                                      mov r5, r2
0080ebe8  04 00 00 9a                                      bls #0x80ec00
0080ebec  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0080ebf0  01 30 83 e3                                      orr r3, r3, #1
0080ebf4  1c 30 80 e5                                      str r3, [r0, #0x1c]
0080ebf8  08 d0 8d e2                                      add sp, sp, #8
0080ebfc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080ec00  04 60 90 e5                                      ldr r6, [r0, #4]
0080ec04  07 e0 03 e2                                      and lr, r3, #7
0080ec08  00 e0 6e e2                                      rsb lr, lr, #0
0080ec0c  a3 31 86 e0                                      add r3, r6, r3, lsr #3
0080ec10  00 50 8d e8                                      stm sp, {ip, lr}
0080ec14  ab ff ff eb                                      bl #0x80eac8
0080ec18  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0080ec1c  05 50 83 e0                                      add r5, r3, r5
0080ec20  0c 50 84 e5                                      str r5, [r4, #0xc]
0080ec24  f3 ff ff ea                                      b #0x80ebf8

; FUNCTION 0x0080ec28, declared_size=8, range_size=8, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream13ReadByteArrayEPvj
; demangled: NetBitStream::ReadByteArray(void*, unsigned int)
; decoder-mode: arm
0080ec28  82 21 a0 e1                                      lsl r2, r2, #3
0080ec2c  e5 ff ff ea                                      b #0x80ebc8

; FUNCTION 0x0080ec30, declared_size=184, range_size=184, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream10ReadStringEv
; demangled: NetBitStream::ReadString()
; decoder-mode: arm
0080ec30  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0080ec34  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
0080ec38  a0 70 9f e5                                      ldr r7, [pc, #0xa0]
0080ec3c  01 a0 a0 e1                                      mov sl, r1
0080ec40  05 50 8f e0                                      add r5, pc, r5
0080ec44  07 30 95 e7                                      ldr r3, [r5, r7]
0080ec48  43 df 4d e2                                      sub sp, sp, #0x10c
0080ec4c  08 10 a0 e3                                      mov r1, #8
0080ec50  00 30 93 e5                                      ldr r3, [r3]
0080ec54  00 40 a0 e1                                      mov r4, r0
0080ec58  0a 00 a0 e1                                      mov r0, sl
0080ec5c  04 31 8d e5                                      str r3, [sp, #0x104]
0080ec60  3f fe ff eb                                      bl #0x80e564
0080ec64  00 80 a0 e1                                      mov r8, r0
0080ec68  00 10 a0 e3                                      mov r1, #0
0080ec6c  01 21 00 e3                                      movw r2, #0x101
0080ec70  0d 00 a0 e1                                      mov r0, sp
0080ec74  f9 fd eb eb                                      bl #0x30e460
0080ec78  0a 00 a0 e1                                      mov r0, sl
0080ec7c  0d 10 a0 e1                                      mov r1, sp
0080ec80  08 20 a0 e1                                      mov r2, r8
0080ec84  e7 ff ff eb                                      bl #0x80ec28
0080ec88  00 00 58 e3                                      cmp r8, #0
0080ec8c  0d 60 a0 11                                      movne r6, sp
0080ec90  4c 60 9f 05                                      ldreq r6, [pc, #0x4c]
0080ec94  06 60 8f 00                                      addeq r6, pc, r6
0080ec98  10 40 84 e5                                      str r4, [r4, #0x10]
0080ec9c  14 40 84 e5                                      str r4, [r4, #0x14]
0080eca0  06 00 a0 e1                                      mov r0, r6
0080eca4  6a fc eb eb                                      bl #0x30de54
0080eca8  06 10 a0 e1                                      mov r1, r6
0080ecac  00 20 86 e0                                      add r2, r6, r0
0080ecb0  04 00 a0 e1                                      mov r0, r4
0080ecb4  8b 0a ec eb                                      bl #0x3116e8
0080ecb8  07 30 95 e7                                      ldr r3, [r5, r7]
0080ecbc  04 21 9d e5                                      ldr r2, [sp, #0x104]
0080ecc0  04 00 a0 e1                                      mov r0, r4
0080ecc4  00 30 93 e5                                      ldr r3, [r3]
0080ecc8  03 00 52 e1                                      cmp r2, r3
0080eccc  01 00 00 1a                                      bne #0x80ecd8
0080ecd0  43 df 8d e2                                      add sp, sp, #0x10c
0080ecd4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0080ecd8  8c fd eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0080ecdc  50 5e 18 00 ac 40 00 00 74 cb 0b 00              .byte 0x50, 0x5e, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00, 0x74, 0xcb, 0x0b, 0x00

; FUNCTION 0x0080ece8, declared_size=108, range_size=108, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream22WriteByteArray_BitSizeEPKvj
; demangled: NetBitStream::WriteByteArray_BitSize(void const*, unsigned int)
; decoder-mode: arm
0080ece8  70 40 2d e9                                      push {r4, r5, r6, lr}
0080ecec  1c 60 90 e5                                      ldr r6, [r0, #0x1c]
0080ecf0  08 d0 4d e2                                      sub sp, sp, #8
0080ecf4  00 40 a0 e1                                      mov r4, r0
0080ecf8  02 00 16 e3                                      tst r6, #2
0080ecfc  02 50 a0 e1                                      mov r5, r2
0080ed00  03 00 00 0a                                      beq #0x80ed14
0080ed04  02 60 86 e3                                      orr r6, r6, #2
0080ed08  1c 60 84 e5                                      str r6, [r4, #0x1c]
0080ed0c  08 d0 8d e2                                      add sp, sp, #8
0080ed10  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080ed14  10 c0 90 e5                                      ldr ip, [r0, #0x10]
0080ed18  08 20 90 e5                                      ldr r2, [r0, #8]
0080ed1c  82 21 6c e0                                      rsb r2, ip, r2, lsl #3
0080ed20  02 00 55 e1                                      cmp r5, r2
0080ed24  f6 ff ff 8a                                      bhi #0x80ed04
0080ed28  04 e0 90 e5                                      ldr lr, [r0, #4]
0080ed2c  01 30 a0 e1                                      mov r3, r1
0080ed30  00 50 8d e5                                      str r5, [sp]
0080ed34  ac 11 8e e0                                      add r1, lr, ip, lsr #3
0080ed38  07 c0 0c e2                                      and ip, ip, #7
0080ed3c  04 c0 8d e5                                      str ip, [sp, #4]
0080ed40  60 ff ff eb                                      bl #0x80eac8
0080ed44  10 30 94 e5                                      ldr r3, [r4, #0x10]
0080ed48  05 50 83 e0                                      add r5, r3, r5
0080ed4c  10 50 84 e5                                      str r5, [r4, #0x10]
0080ed50  ed ff ff ea                                      b #0x80ed0c

; FUNCTION 0x0080ed54, declared_size=12, range_size=12, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream11WriteStreamERS_
; demangled: NetBitStream::WriteStream(NetBitStream&)
; decoder-mode: arm
0080ed54  10 20 91 e5                                      ldr r2, [r1, #0x10]
0080ed58  04 10 91 e5                                      ldr r1, [r1, #4]
0080ed5c  e1 ff ff ea                                      b #0x80ece8

; FUNCTION 0x0080eda8, declared_size=8, range_size=8, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream14WriteByteArrayEPKvj
; demangled: NetBitStream::WriteByteArray(void const*, unsigned int)
; decoder-mode: arm
0080eda8  82 21 a0 e1                                      lsl r2, r2, #3
0080edac  cd ff ff ea                                      b #0x80ece8

; FUNCTION 0x0080edb0, declared_size=92, range_size=92, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream11WriteStringESsj
; demangled: NetBitStream::WriteString(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, unsigned int)
; decoder-mode: arm
0080edb0  00 00 52 e3                                      cmp r2, #0
0080edb4  70 40 2d e9                                      push {r4, r5, r6, lr}
0080edb8  00 60 a0 e1                                      mov r6, r0
0080edbc  01 50 a0 e1                                      mov r5, r1
0080edc0  0b 00 00 1a                                      bne #0x80edf4
0080edc4  14 30 91 e5                                      ldr r3, [r1, #0x14]
0080edc8  10 40 91 e5                                      ldr r4, [r1, #0x10]
0080edcc  04 40 63 e0                                      rsb r4, r3, r4
0080edd0  74 10 ef e6                                      uxtb r1, r4
0080edd4  06 00 a0 e1                                      mov r0, r6
0080edd8  08 20 a0 e3                                      mov r2, #8
0080eddc  c1 fd ff eb                                      bl #0x80e4e8
0080ede0  14 10 95 e5                                      ldr r1, [r5, #0x14]
0080ede4  06 00 a0 e1                                      mov r0, r6
0080ede8  04 20 a0 e1                                      mov r2, r4
0080edec  70 40 bd e8                                      pop {r4, r5, r6, lr}
0080edf0  ec ff ff ea                                      b #0x80eda8
0080edf4  10 40 91 e5                                      ldr r4, [r1, #0x10]
0080edf8  14 30 91 e5                                      ldr r3, [r1, #0x14]
0080edfc  04 40 63 e0                                      rsb r4, r3, r4
0080ee00  02 00 54 e1                                      cmp r4, r2
0080ee04  02 40 a0 21                                      movhs r4, r2
0080ee08  f0 ff ff ea                                      b #0x80edd0

; FUNCTION 0x0080ee0c, declared_size=48, range_size=48, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream9GetBufferEPcj
; demangled: NetBitStream::GetBuffer(char*, unsigned int)
; decoder-mode: arm
0080ee0c  10 40 2d e9                                      push {r4, lr}
0080ee10  10 40 90 e5                                      ldr r4, [r0, #0x10]
0080ee14  00 30 a0 e1                                      mov r3, r0
0080ee18  01 00 a0 e1                                      mov r0, r1
0080ee1c  04 10 93 e5                                      ldr r1, [r3, #4]
0080ee20  07 30 14 e2                                      ands r3, r4, #7
0080ee24  01 30 a0 13                                      movne r3, #1
0080ee28  a4 41 83 e0                                      add r4, r3, r4, lsr #3
0080ee2c  04 20 a0 e1                                      mov r2, r4
0080ee30  8c fe eb eb                                      bl #0x30e868
0080ee34  04 00 a0 e1                                      mov r0, r4
0080ee38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080ee3c, declared_size=32, range_size=32, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStream9SetBufferEPKcj
; demangled: NetBitStream::SetBuffer(char const*, unsigned int)
; decoder-mode: arm
0080ee3c  70 40 2d e9                                      push {r4, r5, r6, lr}
0080ee40  02 50 a0 e1                                      mov r5, r2
0080ee44  00 40 a0 e1                                      mov r4, r0
0080ee48  85 51 a0 e1                                      lsl r5, r5, #3
0080ee4c  04 00 90 e5                                      ldr r0, [r0, #4]
0080ee50  84 fe eb eb                                      bl #0x30e868
0080ee54  10 50 84 e5                                      str r5, [r4, #0x10]
0080ee58  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080ee5c, declared_size=152, range_size=152, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStreamaSERKS_
; demangled: NetBitStream::operator=(NetBitStream const&)
; decoder-mode: arm
0080ee5c  01 00 50 e1                                      cmp r0, r1
0080ee60  70 40 2d e9                                      push {r4, r5, r6, lr}
0080ee64  00 40 a0 e1                                      mov r4, r0
0080ee68  01 50 a0 e1                                      mov r5, r1
0080ee6c  11 00 00 0a                                      beq #0x80eeb8
0080ee70  08 30 90 e5                                      ldr r3, [r0, #8]
0080ee74  08 20 91 e5                                      ldr r2, [r1, #8]
0080ee78  02 00 53 e1                                      cmp r3, r2
0080ee7c  04 00 90 25                                      ldrhs r0, [r0, #4]
0080ee80  0e 00 00 3a                                      blo #0x80eec0
0080ee84  00 10 a0 e3                                      mov r1, #0
0080ee88  74 fd eb eb                                      bl #0x30e460
0080ee8c  04 00 94 e5                                      ldr r0, [r4, #4]
0080ee90  00 00 50 e3                                      cmp r0, #0
0080ee94  07 00 00 0a                                      beq #0x80eeb8
0080ee98  06 00 95 e9                                      ldmib r5, {r1, r2}
0080ee9c  71 fe eb eb                                      bl #0x30e868
0080eea0  08 30 95 e5                                      ldr r3, [r5, #8]
0080eea4  08 30 84 e5                                      str r3, [r4, #8]
0080eea8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0080eeac  0c 30 84 e5                                      str r3, [r4, #0xc]
0080eeb0  10 30 95 e5                                      ldr r3, [r5, #0x10]
0080eeb4  10 30 84 e5                                      str r3, [r4, #0x10]
0080eeb8  04 00 a0 e1                                      mov r0, r4
0080eebc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080eec0  04 00 94 e5                                      ldr r0, [r4, #4]
0080eec4  00 00 50 e3                                      cmp r0, #0
0080eec8  03 00 00 0a                                      beq #0x80eedc
0080eecc  5b 05 ec eb                                      bl #0x310440
0080eed0  00 30 a0 e3                                      mov r3, #0
0080eed4  04 30 84 e5                                      str r3, [r4, #4]
0080eed8  08 20 95 e5                                      ldr r2, [r5, #8]
0080eedc  02 00 a0 e1                                      mov r0, r2
0080eee0  02 10 a0 e3                                      mov r1, #2
0080eee4  a0 05 ec eb                                      bl #0x31056c
0080eee8  04 00 84 e5                                      str r0, [r4, #4]
0080eeec  08 20 95 e5                                      ldr r2, [r5, #8]
0080eef0  e3 ff ff ea                                      b #0x80ee84

; FUNCTION 0x0080eef4, declared_size=152, range_size=152, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStreamC1ERKS_
; demangled: NetBitStream::NetBitStream(NetBitStream const&)
; decoder-mode: arm
0080eef4  88 30 9f e5                                      ldr r3, [pc, #0x88]
0080eef8  88 20 9f e5                                      ldr r2, [pc, #0x88]
0080eefc  70 40 2d e9                                      push {r4, r5, r6, lr}
0080ef00  03 30 8f e0                                      add r3, pc, r3
0080ef04  02 20 93 e7                                      ldr r2, [r3, r2]
0080ef08  00 60 a0 e3                                      mov r6, #0
0080ef0c  01 50 a0 e1                                      mov r5, r1
0080ef10  08 20 82 e2                                      add r2, r2, #8
0080ef14  44 00 80 e8                                      stm r0, {r2, r6}
0080ef18  08 60 80 e5                                      str r6, [r0, #8]
0080ef1c  0c 60 80 e5                                      str r6, [r0, #0xc]
0080ef20  10 60 80 e5                                      str r6, [r0, #0x10]
0080ef24  14 60 80 e5                                      str r6, [r0, #0x14]
0080ef28  18 60 80 e5                                      str r6, [r0, #0x18]
0080ef2c  1c 60 80 e5                                      str r6, [r0, #0x1c]
0080ef30  00 40 a0 e1                                      mov r4, r0
0080ef34  02 10 a0 e3                                      mov r1, #2
0080ef38  08 00 95 e5                                      ldr r0, [r5, #8]
0080ef3c  8a 05 ec eb                                      bl #0x31056c
0080ef40  04 00 84 e5                                      str r0, [r4, #4]
0080ef44  06 10 a0 e1                                      mov r1, r6
0080ef48  08 20 95 e5                                      ldr r2, [r5, #8]
0080ef4c  43 fd eb eb                                      bl #0x30e460
0080ef50  04 00 94 e5                                      ldr r0, [r4, #4]
0080ef54  06 00 50 e1                                      cmp r0, r6
0080ef58  07 00 00 0a                                      beq #0x80ef7c
0080ef5c  06 00 95 e9                                      ldmib r5, {r1, r2}
0080ef60  40 fe eb eb                                      bl #0x30e868
0080ef64  08 30 95 e5                                      ldr r3, [r5, #8]
0080ef68  08 30 84 e5                                      str r3, [r4, #8]
0080ef6c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0080ef70  0c 30 84 e5                                      str r3, [r4, #0xc]
0080ef74  10 30 95 e5                                      ldr r3, [r5, #0x10]
0080ef78  10 30 84 e5                                      str r3, [r4, #0x10]
0080ef7c  04 00 a0 e1                                      mov r0, r4
0080ef80  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080ef84  90 5b 18 00 dc 25 00 00                          .byte 0x90, 0x5b, 0x18, 0x00, 0xdc, 0x25, 0x00, 0x00

; FUNCTION 0x0080ef8c, declared_size=152, range_size=152, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStreamC2ERKS_
; demangled: NetBitStream::NetBitStream(NetBitStream const&)
; decoder-mode: arm
0080ef8c  88 30 9f e5                                      ldr r3, [pc, #0x88]
0080ef90  88 20 9f e5                                      ldr r2, [pc, #0x88]
0080ef94  70 40 2d e9                                      push {r4, r5, r6, lr}
0080ef98  03 30 8f e0                                      add r3, pc, r3
0080ef9c  02 20 93 e7                                      ldr r2, [r3, r2]
0080efa0  00 60 a0 e3                                      mov r6, #0
0080efa4  01 50 a0 e1                                      mov r5, r1
0080efa8  08 20 82 e2                                      add r2, r2, #8
0080efac  44 00 80 e8                                      stm r0, {r2, r6}
0080efb0  08 60 80 e5                                      str r6, [r0, #8]
0080efb4  0c 60 80 e5                                      str r6, [r0, #0xc]
0080efb8  10 60 80 e5                                      str r6, [r0, #0x10]
0080efbc  14 60 80 e5                                      str r6, [r0, #0x14]
0080efc0  18 60 80 e5                                      str r6, [r0, #0x18]
0080efc4  1c 60 80 e5                                      str r6, [r0, #0x1c]
0080efc8  00 40 a0 e1                                      mov r4, r0
0080efcc  02 10 a0 e3                                      mov r1, #2
0080efd0  08 00 95 e5                                      ldr r0, [r5, #8]
0080efd4  64 05 ec eb                                      bl #0x31056c
0080efd8  04 00 84 e5                                      str r0, [r4, #4]
0080efdc  06 10 a0 e1                                      mov r1, r6
0080efe0  08 20 95 e5                                      ldr r2, [r5, #8]
0080efe4  1d fd eb eb                                      bl #0x30e460
0080efe8  04 00 94 e5                                      ldr r0, [r4, #4]
0080efec  06 00 50 e1                                      cmp r0, r6
0080eff0  07 00 00 0a                                      beq #0x80f014
0080eff4  06 00 95 e9                                      ldmib r5, {r1, r2}
0080eff8  1a fe eb eb                                      bl #0x30e868
0080effc  08 30 95 e5                                      ldr r3, [r5, #8]
0080f000  08 30 84 e5                                      str r3, [r4, #8]
0080f004  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0080f008  0c 30 84 e5                                      str r3, [r4, #0xc]
0080f00c  10 30 95 e5                                      ldr r3, [r5, #0x10]
0080f010  10 30 84 e5                                      str r3, [r4, #0x10]
0080f014  04 00 a0 e1                                      mov r0, r4
0080f018  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080f01c  f8 5a 18 00 dc 25 00 00                          .byte 0xf8, 0x5a, 0x18, 0x00, 0xdc, 0x25, 0x00, 0x00

; FUNCTION 0x0080f024, declared_size=80, range_size=80, mode=arm
; class-group: NetBitStream
; alias: _ZN12NetBitStreameqERKS_
; demangled: NetBitStream::operator==(NetBitStream const&)
; decoder-mode: arm
0080f024  01 00 50 e1                                      cmp r0, r1
0080f028  10 40 2d e9                                      push {r4, lr}
0080f02c  0e 00 00 0a                                      beq #0x80f06c
0080f030  10 30 90 e5                                      ldr r3, [r0, #0x10]
0080f034  10 20 91 e5                                      ldr r2, [r1, #0x10]
0080f038  02 00 53 e1                                      cmp r3, r2
0080f03c  01 00 00 0a                                      beq #0x80f048
0080f040  00 00 a0 e3                                      mov r0, #0
0080f044  10 80 bd e8                                      pop {r4, pc}
0080f048  07 20 13 e2                                      ands r2, r3, #7
0080f04c  01 20 a0 13                                      movne r2, #1
0080f050  a3 21 82 e0                                      add r2, r2, r3, lsr #3
0080f054  04 00 90 e5                                      ldr r0, [r0, #4]
0080f058  04 10 91 e5                                      ldr r1, [r1, #4]
0080f05c  5f fd eb eb                                      bl #0x30e5e0
0080f060  01 00 70 e2                                      rsbs r0, r0, #1
0080f064  00 00 a0 33                                      movlo r0, #0
0080f068  10 80 bd e8                                      pop {r4, pc}
0080f06c  01 00 a0 e3                                      mov r0, #1
0080f070  10 80 bd e8                                      pop {r4, pc}
