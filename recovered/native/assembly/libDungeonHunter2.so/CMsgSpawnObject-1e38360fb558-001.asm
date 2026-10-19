; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f4b4, declared_size=8, range_size=8, mode=arm
; class-group: CMsgSpawnObject
; alias: _ZN15CMsgSpawnObject10GetDataPtrEv
; demangled: CMsgSpawnObject::GetDataPtr()
; decoder-mode: arm
0031f4b4  50 00 80 e2                                      add r0, r0, #0x50
0031f4b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f4bc, declared_size=8, range_size=8, mode=arm
; class-group: CMsgSpawnObject
; alias: _ZNK15CMsgSpawnObject11GetDataSizeEv
; demangled: CMsgSpawnObject::GetDataSize() const
; decoder-mode: arm
0031f4bc  1c 00 a0 e3                                      mov r0, #0x1c
0031f4c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031ff40, declared_size=52, range_size=52, mode=arm
; class-group: CMsgSpawnObject
; alias: _ZN15CMsgSpawnObjectD1Ev
; demangled: CMsgSpawnObject::~CMsgSpawnObject()
; decoder-mode: arm
0031ff40  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031ff44  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031ff48  10 40 2d e9                                      push {r4, lr}
0031ff4c  03 30 8f e0                                      add r3, pc, r3
0031ff50  02 20 93 e7                                      ldr r2, [r3, r2]
0031ff54  00 40 a0 e1                                      mov r4, r0
0031ff58  08 20 82 e2                                      add r2, r2, #8
0031ff5c  00 20 80 e5                                      str r2, [r0]
0031ff60  8b a8 13 eb                                      bl #0x80a194
0031ff64  04 00 a0 e1                                      mov r0, r4
0031ff68  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031ff6c  44 4b 67 00 08 34 00 00                          .byte 0x44, 0x4b, 0x67, 0x00, 0x08, 0x34, 0x00, 0x00

; FUNCTION 0x00324438, declared_size=60, range_size=60, mode=arm
; class-group: CMsgSpawnObject
; alias: _ZN15CMsgSpawnObjectD0Ev
; demangled: CMsgSpawnObject::~CMsgSpawnObject()
; decoder-mode: arm
00324438  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0032443c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00324440  10 40 2d e9                                      push {r4, lr}
00324444  03 30 8f e0                                      add r3, pc, r3
00324448  02 20 93 e7                                      ldr r2, [r3, r2]
0032444c  00 40 a0 e1                                      mov r4, r0
00324450  08 20 82 e2                                      add r2, r2, #8
00324454  00 20 80 e5                                      str r2, [r0]
00324458  4d 97 13 eb                                      bl #0x80a194
0032445c  04 00 a0 e1                                      mov r0, r4
00324460  f6 af ff eb                                      bl #0x310440
00324464  04 00 a0 e1                                      mov r0, r4
00324468  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0032446c  4c 06 67 00 08 34 00 00                          .byte 0x4c, 0x06, 0x67, 0x00, 0x08, 0x34, 0x00, 0x00

; FUNCTION 0x0032789c, declared_size=56, range_size=56, mode=arm
; class-group: CMsgSpawnObject
; alias: _ZN15CMsgSpawnObject13SetPropertiesEv
; demangled: CMsgSpawnObject::SetProperties()
; decoder-mode: arm
0032789c  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
003278a0  10 40 2d e9                                      push {r4, lr}
003278a4  01 10 8f e0                                      add r1, pc, r1
003278a8  00 40 a0 e1                                      mov r4, r0
003278ac  0f 20 81 e2                                      add r2, r1, #0xf
003278b0  14 00 80 e2                                      add r0, r0, #0x14
003278b4  49 a4 ff eb                                      bl #0x3109e0
003278b8  00 30 a0 e3                                      mov r3, #0
003278bc  01 20 a0 e3                                      mov r2, #1
003278c0  32 20 c4 e5                                      strb r2, [r4, #0x32]
003278c4  33 30 c4 e5                                      strb r3, [r4, #0x33]
003278c8  2c 30 84 e5                                      str r3, [r4, #0x2c]
003278cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003278d0  c4 75 59 00                                      .byte 0xc4, 0x75, 0x59, 0x00

; FUNCTION 0x0032a66c, declared_size=124, range_size=124, mode=arm
; class-group: CMsgSpawnObject
; alias: _ZN15CMsgSpawnObjectC1Eb
; demangled: CMsgSpawnObject::CMsgSpawnObject(bool)
; decoder-mode: arm
0032a66c  70 40 2d e9                                      push {r4, r5, r6, lr}
0032a670  64 60 9f e5                                      ldr r6, [pc, #0x64]
0032a674  01 20 a0 e1                                      mov r2, r1
0032a678  60 50 9f e5                                      ldr r5, [pc, #0x60]
0032a67c  06 60 8f e0                                      add r6, pc, r6
0032a680  06 10 a0 e1                                      mov r1, r6
0032a684  00 40 a0 e1                                      mov r4, r0
0032a688  ac 7f 13 eb                                      bl #0x80a540
0032a68c  50 20 9f e5                                      ldr r2, [pc, #0x50]
0032a690  05 50 8f e0                                      add r5, pc, r5
0032a694  00 30 a0 e3                                      mov r3, #0
0032a698  02 20 95 e7                                      ldr r2, [r5, r2]
0032a69c  64 30 84 e5                                      str r3, [r4, #0x64]
0032a6a0  5c 30 84 e5                                      str r3, [r4, #0x5c]
0032a6a4  08 20 82 e2                                      add r2, r2, #8
0032a6a8  00 20 84 e5                                      str r2, [r4]
0032a6ac  60 30 84 e5                                      str r3, [r4, #0x60]
0032a6b0  0f 20 86 e2                                      add r2, r6, #0xf
0032a6b4  06 10 a0 e1                                      mov r1, r6
0032a6b8  14 00 84 e2                                      add r0, r4, #0x14
0032a6bc  c7 98 ff eb                                      bl #0x3109e0
0032a6c0  00 30 a0 e3                                      mov r3, #0
0032a6c4  01 20 a0 e3                                      mov r2, #1
0032a6c8  33 30 c4 e5                                      strb r3, [r4, #0x33]
0032a6cc  32 20 c4 e5                                      strb r2, [r4, #0x32]
0032a6d0  2c 30 84 e5                                      str r3, [r4, #0x2c]
0032a6d4  04 00 a0 e1                                      mov r0, r4
0032a6d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0032a6dc  ec 47 59 00 00 a4 66 00 08 34 00 00              .byte 0xec, 0x47, 0x59, 0x00, 0x00, 0xa4, 0x66, 0x00, 0x08, 0x34, 0x00, 0x00
