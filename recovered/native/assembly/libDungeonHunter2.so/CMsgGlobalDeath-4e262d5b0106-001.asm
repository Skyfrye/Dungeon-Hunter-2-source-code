; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f4d4, declared_size=8, range_size=8, mode=arm
; class-group: CMsgGlobalDeath
; alias: _ZNK15CMsgGlobalDeath11GetDataSizeEv
; demangled: CMsgGlobalDeath::GetDataSize() const
; decoder-mode: arm
0031f4d4  00 00 a0 e3                                      mov r0, #0
0031f4d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031ff0c, declared_size=52, range_size=52, mode=arm
; class-group: CMsgGlobalDeath
; alias: _ZN15CMsgGlobalDeathD1Ev
; demangled: CMsgGlobalDeath::~CMsgGlobalDeath()
; decoder-mode: arm
0031ff0c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031ff10  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031ff14  10 40 2d e9                                      push {r4, lr}
0031ff18  03 30 8f e0                                      add r3, pc, r3
0031ff1c  02 20 93 e7                                      ldr r2, [r3, r2]
0031ff20  00 40 a0 e1                                      mov r4, r0
0031ff24  08 20 82 e2                                      add r2, r2, #8
0031ff28  00 20 80 e5                                      str r2, [r0]
0031ff2c  98 a8 13 eb                                      bl #0x80a194
0031ff30  04 00 a0 e1                                      mov r0, r4
0031ff34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031ff38  78 4b 67 00 88 39 00 00                          .byte 0x78, 0x4b, 0x67, 0x00, 0x88, 0x39, 0x00, 0x00

; FUNCTION 0x003244b0, declared_size=60, range_size=60, mode=arm
; class-group: CMsgGlobalDeath
; alias: _ZN15CMsgGlobalDeathD0Ev
; demangled: CMsgGlobalDeath::~CMsgGlobalDeath()
; decoder-mode: arm
003244b0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003244b4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003244b8  10 40 2d e9                                      push {r4, lr}
003244bc  03 30 8f e0                                      add r3, pc, r3
003244c0  02 20 93 e7                                      ldr r2, [r3, r2]
003244c4  00 40 a0 e1                                      mov r4, r0
003244c8  08 20 82 e2                                      add r2, r2, #8
003244cc  00 20 80 e5                                      str r2, [r0]
003244d0  2f 97 13 eb                                      bl #0x80a194
003244d4  04 00 a0 e1                                      mov r0, r4
003244d8  d8 af ff eb                                      bl #0x310440
003244dc  04 00 a0 e1                                      mov r0, r4
003244e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003244e4  d4 05 67 00 88 39 00 00                          .byte 0xd4, 0x05, 0x67, 0x00, 0x88, 0x39, 0x00, 0x00

; FUNCTION 0x00327868, declared_size=52, range_size=52, mode=arm
; class-group: CMsgGlobalDeath
; alias: _ZN15CMsgGlobalDeath13SetPropertiesEv
; demangled: CMsgGlobalDeath::SetProperties()
; decoder-mode: arm
00327868  28 10 9f e5                                      ldr r1, [pc, #0x28]
0032786c  10 40 2d e9                                      push {r4, lr}
00327870  01 10 8f e0                                      add r1, pc, r1
00327874  00 40 a0 e1                                      mov r4, r0
00327878  0f 20 81 e2                                      add r2, r1, #0xf
0032787c  14 00 80 e2                                      add r0, r0, #0x14
00327880  56 a4 ff eb                                      bl #0x3109e0
00327884  01 30 a0 e3                                      mov r3, #1
00327888  30 30 c4 e5                                      strb r3, [r4, #0x30]
0032788c  2c 30 84 e5                                      str r3, [r4, #0x2c]
00327890  32 30 c4 e5                                      strb r3, [r4, #0x32]
00327894  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00327898  e8 75 59 00                                      .byte 0xe8, 0x75, 0x59, 0x00
