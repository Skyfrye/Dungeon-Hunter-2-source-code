; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f4c4, declared_size=8, range_size=8, mode=arm
; class-group: CMsgIsHost
; alias: _ZN10CMsgIsHost10GetDataPtrEv
; demangled: CMsgIsHost::GetDataPtr()
; decoder-mode: arm
0031f4c4  50 00 80 e2                                      add r0, r0, #0x50
0031f4c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f4cc, declared_size=8, range_size=8, mode=arm
; class-group: CMsgIsHost
; alias: _ZNK10CMsgIsHost11GetDataSizeEv
; demangled: CMsgIsHost::GetDataSize() const
; decoder-mode: arm
0031f4cc  04 00 a0 e3                                      mov r0, #4
0031f4d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031ff74, declared_size=52, range_size=52, mode=arm
; class-group: CMsgIsHost
; alias: _ZN10CMsgIsHostD1Ev
; demangled: CMsgIsHost::~CMsgIsHost()
; decoder-mode: arm
0031ff74  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031ff78  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031ff7c  10 40 2d e9                                      push {r4, lr}
0031ff80  03 30 8f e0                                      add r3, pc, r3
0031ff84  02 20 93 e7                                      ldr r2, [r3, r2]
0031ff88  00 40 a0 e1                                      mov r4, r0
0031ff8c  08 20 82 e2                                      add r2, r2, #8
0031ff90  00 20 80 e5                                      str r2, [r0]
0031ff94  7e a8 13 eb                                      bl #0x80a194
0031ff98  04 00 a0 e1                                      mov r0, r4
0031ff9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031ffa0  10 4b 67 00 08 28 00 00                          .byte 0x10, 0x4b, 0x67, 0x00, 0x08, 0x28, 0x00, 0x00

; FUNCTION 0x00324474, declared_size=60, range_size=60, mode=arm
; class-group: CMsgIsHost
; alias: _ZN10CMsgIsHostD0Ev
; demangled: CMsgIsHost::~CMsgIsHost()
; decoder-mode: arm
00324474  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00324478  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0032447c  10 40 2d e9                                      push {r4, lr}
00324480  03 30 8f e0                                      add r3, pc, r3
00324484  02 20 93 e7                                      ldr r2, [r3, r2]
00324488  00 40 a0 e1                                      mov r4, r0
0032448c  08 20 82 e2                                      add r2, r2, #8
00324490  00 20 80 e5                                      str r2, [r0]
00324494  3e 97 13 eb                                      bl #0x80a194
00324498  04 00 a0 e1                                      mov r0, r4
0032449c  e7 af ff eb                                      bl #0x310440
003244a0  04 00 a0 e1                                      mov r0, r4
003244a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003244a8  10 06 67 00 08 28 00 00                          .byte 0x10, 0x06, 0x67, 0x00, 0x08, 0x28, 0x00, 0x00

; FUNCTION 0x003278d4, declared_size=52, range_size=52, mode=arm
; class-group: CMsgIsHost
; alias: _ZN10CMsgIsHost13SetPropertiesEv
; demangled: CMsgIsHost::SetProperties()
; decoder-mode: arm
003278d4  28 10 9f e5                                      ldr r1, [pc, #0x28]
003278d8  10 40 2d e9                                      push {r4, lr}
003278dc  01 10 8f e0                                      add r1, pc, r1
003278e0  00 40 a0 e1                                      mov r4, r0
003278e4  0a 20 81 e2                                      add r2, r1, #0xa
003278e8  14 00 80 e2                                      add r0, r0, #0x14
003278ec  3b a4 ff eb                                      bl #0x3109e0
003278f0  01 30 a0 e3                                      mov r3, #1
003278f4  32 30 c4 e5                                      strb r3, [r4, #0x32]
003278f8  00 30 a0 e3                                      mov r3, #0
003278fc  2c 30 84 e5                                      str r3, [r4, #0x2c]
00327900  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00327904  9c 75 59 00                                      .byte 0x9c, 0x75, 0x59, 0x00
