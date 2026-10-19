; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003883e4, declared_size=8, range_size=8, mode=arm
; class-group: Floor
; alias: _ZNK5Floor11IsUpdatableEv
; demangled: Floor::IsUpdatable() const
; decoder-mode: arm
003883e4  00 00 a0 e3                                      mov r0, #0
003883e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003883ec, declared_size=8, range_size=8, mode=arm
; class-group: Floor
; alias: _ZNK5Floor9IsZonableEv
; demangled: Floor::IsZonable() const
; decoder-mode: arm
003883ec  00 00 a0 e3                                      mov r0, #0
003883f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00388468, declared_size=8, range_size=8, mode=arm
; class-group: Floor
; alias: _ZThn36_N5FloorD1Ev
; demangled: non-virtual thunk to Floor::~Floor()
; decoder-mode: arm
00388468  24 00 40 e2                                      sub r0, r0, #0x24
0038846c  ff ff ff ea                                      b #0x388470

; FUNCTION 0x00388470, declared_size=64, range_size=64, mode=arm
; class-group: Floor
; alias: _ZN5FloorD1Ev
; demangled: Floor::~Floor()
; decoder-mode: arm
00388470  30 20 9f e5                                      ldr r2, [pc, #0x30]
00388474  30 30 9f e5                                      ldr r3, [pc, #0x30]
00388478  10 40 2d e9                                      push {r4, lr}
0038847c  02 20 8f e0                                      add r2, pc, r2
00388480  03 30 92 e7                                      ldr r3, [r2, r3]
00388484  00 40 a0 e1                                      mov r4, r0
00388488  e4 20 83 e2                                      add r2, r3, #0xe4
0038848c  08 10 83 e2                                      add r1, r3, #8
00388490  d8 30 83 e2                                      add r3, r3, #0xd8
00388494  0a 00 80 e8                                      stm r0, {r1, r3}
00388498  24 20 80 e5                                      str r2, [r0, #0x24]
0038849c  b5 13 00 eb                                      bl #0x38d378
003884a0  04 00 a0 e1                                      mov r0, r4
003884a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003884a8  14 c6 60 00 74 0a 00 00                          .byte 0x14, 0xc6, 0x60, 0x00, 0x74, 0x0a, 0x00, 0x00

; FUNCTION 0x003886b4, declared_size=84, range_size=84, mode=arm
; class-group: Floor
; alias: _ZN5Floor8InitPostEv
; demangled: Floor::InitPost()
; decoder-mode: arm
003886b4  10 40 2d e9                                      push {r4, lr}
003886b8  00 40 a0 e1                                      mov r4, r0
003886bc  e6 0d 00 eb                                      bl #0x38be5c
003886c0  04 00 a0 e1                                      mov r0, r4
003886c4  00 30 94 e5                                      ldr r3, [r4]
003886c8  00 10 a0 e3                                      mov r1, #0
003886cc  0f e0 a0 e1                                      mov lr, pc
003886d0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003886d4  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003886d8  00 00 50 e3                                      cmp r0, #0
003886dc  08 00 00 0a                                      beq #0x388704
003886e0  db a0 03 eb                                      bl #0x470a54
003886e4  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003886e8  00 10 a0 e3                                      mov r1, #0
003886ec  1d a3 03 eb                                      bl #0x471368
003886f0  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
003886f4  01 10 a0 e3                                      mov r1, #1
003886f8  08 00 93 e5                                      ldr r0, [r3, #8]
003886fc  10 40 bd e8                                      pop {r4, lr}
00388700  98 17 06 ea                                      b #0x50e568
00388704  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00388e08, declared_size=8, range_size=8, mode=arm
; class-group: Floor
; alias: _ZThn36_N5FloorD0Ev
; demangled: non-virtual thunk to Floor::~Floor()
; decoder-mode: arm
00388e08  24 00 40 e2                                      sub r0, r0, #0x24
00388e0c  ff ff ff ea                                      b #0x388e10

; FUNCTION 0x00388e10, declared_size=72, range_size=72, mode=arm
; class-group: Floor
; alias: _ZN5FloorD0Ev
; demangled: Floor::~Floor()
; decoder-mode: arm
00388e10  38 20 9f e5                                      ldr r2, [pc, #0x38]
00388e14  38 30 9f e5                                      ldr r3, [pc, #0x38]
00388e18  10 40 2d e9                                      push {r4, lr}
00388e1c  02 20 8f e0                                      add r2, pc, r2
00388e20  03 30 92 e7                                      ldr r3, [r2, r3]
00388e24  00 40 a0 e1                                      mov r4, r0
00388e28  e4 20 83 e2                                      add r2, r3, #0xe4
00388e2c  08 10 83 e2                                      add r1, r3, #8
00388e30  d8 30 83 e2                                      add r3, r3, #0xd8
00388e34  0a 00 80 e8                                      stm r0, {r1, r3}
00388e38  24 20 80 e5                                      str r2, [r0, #0x24]
00388e3c  4d 11 00 eb                                      bl #0x38d378
00388e40  04 00 a0 e1                                      mov r0, r4
00388e44  7d 1d fe eb                                      bl #0x310440
00388e48  04 00 a0 e1                                      mov r0, r4
00388e4c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00388e50  74 bc 60 00 74 0a 00 00                          .byte 0x74, 0xbc, 0x60, 0x00, 0x74, 0x0a, 0x00, 0x00
