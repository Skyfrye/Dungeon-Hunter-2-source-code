; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003883d4, declared_size=8, range_size=8, mode=arm
; class-group: Decor
; alias: _ZNK5Decor11IsUpdatableEv
; demangled: Decor::IsUpdatable() const
; decoder-mode: arm
003883d4  00 00 a0 e3                                      mov r0, #0
003883d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00388420, declared_size=8, range_size=8, mode=arm
; class-group: Decor
; alias: _ZThn36_N5DecorD1Ev
; demangled: non-virtual thunk to Decor::~Decor()
; decoder-mode: arm
00388420  24 00 40 e2                                      sub r0, r0, #0x24
00388424  ff ff ff ea                                      b #0x388428

; FUNCTION 0x00388428, declared_size=64, range_size=64, mode=arm
; class-group: Decor
; alias: _ZN5DecorD1Ev
; demangled: Decor::~Decor()
; decoder-mode: arm
00388428  30 20 9f e5                                      ldr r2, [pc, #0x30]
0038842c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00388430  10 40 2d e9                                      push {r4, lr}
00388434  02 20 8f e0                                      add r2, pc, r2
00388438  03 30 92 e7                                      ldr r3, [r2, r3]
0038843c  00 40 a0 e1                                      mov r4, r0
00388440  e4 20 83 e2                                      add r2, r3, #0xe4
00388444  08 10 83 e2                                      add r1, r3, #8
00388448  d8 30 83 e2                                      add r3, r3, #0xd8
0038844c  0a 00 80 e8                                      stm r0, {r1, r3}
00388450  24 20 80 e5                                      str r2, [r0, #0x24]
00388454  c7 13 00 eb                                      bl #0x38d378
00388458  04 00 a0 e1                                      mov r0, r4
0038845c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00388460  5c c6 60 00 0c 2b 00 00                          .byte 0x5c, 0xc6, 0x60, 0x00, 0x0c, 0x2b, 0x00, 0x00

; FUNCTION 0x00388730, declared_size=128, range_size=128, mode=arm
; class-group: Decor
; alias: _ZN5Decor12LoadFloorMapEv
; demangled: Decor::LoadFloorMap()
; decoder-mode: arm
00388730  10 40 2d e9                                      push {r4, lr}
00388734  d8 22 90 e5                                      ldr r2, [r0, #0x2d8]
00388738  68 30 9f e5                                      ldr r3, [pc, #0x68]
0038873c  00 40 a0 e1                                      mov r4, r0
00388740  00 00 52 e3                                      cmp r2, #0
00388744  03 30 8f e0                                      add r3, pc, r3
00388748  02 00 00 0a                                      beq #0x388758
0038874c  75 13 d0 e5                                      ldrb r1, [r0, #0x375]
00388750  00 00 51 e3                                      cmp r1, #0
00388754  00 00 00 1a                                      bne #0x38875c
00388758  10 80 bd e8                                      pop {r4, pc}
0038875c  08 10 92 e5                                      ldr r1, [r2, #8]
00388760  64 20 90 e5                                      ldr r2, [r0, #0x64]
00388764  40 00 9f e5                                      ldr r0, [pc, #0x40]
00388768  00 00 93 e7                                      ldr r0, [r3, r0]
0038876c  44 30 94 e5                                      ldr r3, [r4, #0x44]
00388770  27 6d 06 eb                                      bl #0x523c14
00388774  00 00 50 e3                                      cmp r0, #0
00388778  07 00 00 0a                                      beq #0x38879c
0038877c  76 33 d4 e5                                      ldrb r3, [r4, #0x376]
00388780  4b 1f 84 e2                                      add r1, r4, #0x12c
00388784  00 00 53 e3                                      cmp r3, #0
00388788  24 30 90 e5                                      ldr r3, [r0, #0x24]
0038878c  01 30 83 13                                      orrne r3, r3, #1
00388790  01 30 c3 03                                      biceq r3, r3, #1
00388794  24 30 80 e5                                      str r3, [r0, #0x24]
00388798  9e fe ff eb                                      bl #0x388218
0038879c  00 30 a0 e3                                      mov r3, #0
003887a0  75 33 c4 e5                                      strb r3, [r4, #0x375]
003887a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003887a8  4c c3 60 00 04 12 00 00                          .byte 0x4c, 0xc3, 0x60, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x00388a98, declared_size=136, range_size=136, mode=arm
; class-group: Decor
; alias: _ZN5Decor8InitPostEv
; demangled: Decor::InitPost()
; decoder-mode: arm
00388a98  70 40 2d e9                                      push {r4, r5, r6, lr}
00388a9c  00 40 a0 e1                                      mov r4, r0
00388aa0  ed 0c 00 eb                                      bl #0x38be5c
00388aa4  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00388aa8  68 50 9f e5                                      ldr r5, [pc, #0x68]
00388aac  00 00 50 e3                                      cmp r0, #0
00388ab0  05 50 8f e0                                      add r5, pc, r5
00388ab4  16 00 00 0a                                      beq #0x388b14
00388ab8  e5 9f 03 eb                                      bl #0x470a54
00388abc  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
00388ac0  28 30 d3 e5                                      ldrb r3, [r3, #0x28]
00388ac4  00 00 53 e3                                      cmp r3, #0
00388ac8  02 00 00 1a                                      bne #0x388ad8
00388acc  04 00 a0 e1                                      mov r0, r4
00388ad0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00388ad4  15 ff ff ea                                      b #0x388730
00388ad8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00388adc  00 10 a0 e3                                      mov r1, #0
00388ae0  28 00 a0 e3                                      mov r0, #0x28
00388ae4  03 30 95 e7                                      ldr r3, [r5, r3]
00388ae8  44 60 93 e5                                      ldr r6, [r3, #0x44]
00388aec  9f 1e fe eb                                      bl #0x310570
00388af0  06 10 a0 e1                                      mov r1, r6
00388af4  00 50 a0 e1                                      mov r5, r0
00388af8  04 20 a0 e1                                      mov r2, r4
00388afc  ca ff ff eb                                      bl #0x388a2c
00388b00  04 00 a0 e1                                      mov r0, r4
00388b04  05 10 a0 e1                                      mov r1, r5
00388b08  00 20 a0 e3                                      mov r2, #0
00388b0c  39 30 00 eb                                      bl #0x394bf8
00388b10  ed ff ff ea                                      b #0x388acc
00388b14  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00388b18  e0 bf 60 00 f4 37 00 00                          .byte 0xe0, 0xbf, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00388ea8, declared_size=8, range_size=8, mode=arm
; class-group: Decor
; alias: _ZThn36_N5DecorD0Ev
; demangled: non-virtual thunk to Decor::~Decor()
; decoder-mode: arm
00388ea8  24 00 40 e2                                      sub r0, r0, #0x24
00388eac  ff ff ff ea                                      b #0x388eb0

; FUNCTION 0x00388eb0, declared_size=72, range_size=72, mode=arm
; class-group: Decor
; alias: _ZN5DecorD0Ev
; demangled: Decor::~Decor()
; decoder-mode: arm
00388eb0  38 20 9f e5                                      ldr r2, [pc, #0x38]
00388eb4  38 30 9f e5                                      ldr r3, [pc, #0x38]
00388eb8  10 40 2d e9                                      push {r4, lr}
00388ebc  02 20 8f e0                                      add r2, pc, r2
00388ec0  03 30 92 e7                                      ldr r3, [r2, r3]
00388ec4  00 40 a0 e1                                      mov r4, r0
00388ec8  e4 20 83 e2                                      add r2, r3, #0xe4
00388ecc  08 10 83 e2                                      add r1, r3, #8
00388ed0  d8 30 83 e2                                      add r3, r3, #0xd8
00388ed4  0a 00 80 e8                                      stm r0, {r1, r3}
00388ed8  24 20 80 e5                                      str r2, [r0, #0x24]
00388edc  25 11 00 eb                                      bl #0x38d378
00388ee0  04 00 a0 e1                                      mov r0, r4
00388ee4  55 1d fe eb                                      bl #0x310440
00388ee8  04 00 a0 e1                                      mov r0, r4
00388eec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00388ef0  d4 bb 60 00 0c 2b 00 00                          .byte 0xd4, 0xbb, 0x60, 0x00, 0x0c, 0x2b, 0x00, 0x00

; FUNCTION 0x003899c8, declared_size=8, range_size=8, mode=arm
; class-group: Decor
; alias: _ZThn4_N5Decor17DeclarePropertiesEv
; demangled: non-virtual thunk to Decor::DeclareProperties()
; decoder-mode: arm
003899c8  04 00 40 e2                                      sub r0, r0, #4
003899cc  ff ff ff ea                                      b #0x3899d0

; FUNCTION 0x003899d0, declared_size=156, range_size=156, mode=arm
; class-group: Decor
; alias: _ZN5Decor17DeclarePropertiesEv
; demangled: Decor::DeclareProperties()
; decoder-mode: arm
003899d0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003899d4  0c d0 4d e2                                      sub sp, sp, #0xc
003899d8  00 70 a0 e1                                      mov r7, r0
003899dc  41 0d 00 eb                                      bl #0x38cee8
003899e0  00 10 a0 e3                                      mov r1, #0
003899e4  24 00 a0 e3                                      mov r0, #0x24
003899e8  e0 1a fe eb                                      bl #0x310570
003899ec  68 50 9f e5                                      ldr r5, [pc, #0x68]
003899f0  68 30 9f e5                                      ldr r3, [pc, #0x68]
003899f4  68 60 9f e5                                      ldr r6, [pc, #0x68]
003899f8  05 50 8f e0                                      add r5, pc, r5
003899fc  03 30 95 e7                                      ldr r3, [r5, r3]
00389a00  06 60 8f e0                                      add r6, pc, r6
00389a04  00 40 a0 e1                                      mov r4, r0
00389a08  08 30 83 e2                                      add r3, r3, #8
00389a0c  06 10 a0 e1                                      mov r1, r6
00389a10  04 20 8d e2                                      add r2, sp, #4
00389a14  08 30 80 e4                                      str r3, [r0], #8
00389a18  b3 29 fe eb                                      bl #0x3140ec
00389a1c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00389a20  dd 2f 87 e2                                      add r2, r7, #0x374
00389a24  04 00 87 e2                                      add r0, r7, #4
00389a28  03 30 95 e7                                      ldr r3, [r5, r3]
00389a2c  02 20 82 e2                                      add r2, r2, #2
00389a30  02 20 60 e0                                      rsb r2, r0, r2
00389a34  08 30 83 e2                                      add r3, r3, #8
00389a38  00 30 84 e5                                      str r3, [r4]
00389a3c  01 30 a0 e3                                      mov r3, #1
00389a40  04 20 84 e5                                      str r2, [r4, #4]
00389a44  20 30 c4 e5                                      strb r3, [r4, #0x20]
00389a48  06 10 a0 e1                                      mov r1, r6
00389a4c  04 20 a0 e1                                      mov r2, r4
00389a50  a3 28 06 eb                                      bl #0x513ce4
00389a54  0c d0 8d e2                                      add sp, sp, #0xc
00389a58  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00389a5c  98 b0 60 00 30 23 00 00 f0 88 53 00 4c 3e 00 00  .byte 0x98, 0xb0, 0x60, 0x00, 0x30, 0x23, 0x00, 0x00, 0xf0, 0x88, 0x53, 0x00, 0x4c, 0x3e, 0x00, 0x00
