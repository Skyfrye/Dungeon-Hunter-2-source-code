; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f464, declared_size=8, range_size=8, mode=arm
; class-group: CMsgMenuReady
; alias: _ZN13CMsgMenuReady10GetDataPtrEv
; demangled: CMsgMenuReady::GetDataPtr()
; decoder-mode: arm
0031f464  50 00 80 e2                                      add r0, r0, #0x50
0031f468  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f46c, declared_size=8, range_size=8, mode=arm
; class-group: CMsgMenuReady
; alias: _ZNK13CMsgMenuReady11GetDataSizeEv
; demangled: CMsgMenuReady::GetDataSize() const
; decoder-mode: arm
0031f46c  08 00 a0 e3                                      mov r0, #8
0031f470  1e ff 2f e1                                      bx lr

; FUNCTION 0x00320044, declared_size=52, range_size=52, mode=arm
; class-group: CMsgMenuReady
; alias: _ZN13CMsgMenuReadyD1Ev
; demangled: CMsgMenuReady::~CMsgMenuReady()
; decoder-mode: arm
00320044  24 30 9f e5                                      ldr r3, [pc, #0x24]
00320048  24 20 9f e5                                      ldr r2, [pc, #0x24]
0032004c  10 40 2d e9                                      push {r4, lr}
00320050  03 30 8f e0                                      add r3, pc, r3
00320054  02 20 93 e7                                      ldr r2, [r3, r2]
00320058  00 40 a0 e1                                      mov r4, r0
0032005c  08 20 82 e2                                      add r2, r2, #8
00320060  00 20 80 e5                                      str r2, [r0]
00320064  4a a8 13 eb                                      bl #0x80a194
00320068  04 00 a0 e1                                      mov r0, r4
0032006c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00320070  40 4a 67 00 d4 41 00 00                          .byte 0x40, 0x4a, 0x67, 0x00, 0xd4, 0x41, 0x00, 0x00

; FUNCTION 0x00324348, declared_size=60, range_size=60, mode=arm
; class-group: CMsgMenuReady
; alias: _ZN13CMsgMenuReadyD0Ev
; demangled: CMsgMenuReady::~CMsgMenuReady()
; decoder-mode: arm
00324348  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0032434c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00324350  10 40 2d e9                                      push {r4, lr}
00324354  03 30 8f e0                                      add r3, pc, r3
00324358  02 20 93 e7                                      ldr r2, [r3, r2]
0032435c  00 40 a0 e1                                      mov r4, r0
00324360  08 20 82 e2                                      add r2, r2, #8
00324364  00 20 80 e5                                      str r2, [r0]
00324368  89 97 13 eb                                      bl #0x80a194
0032436c  04 00 a0 e1                                      mov r0, r4
00324370  32 b0 ff eb                                      bl #0x310440
00324374  04 00 a0 e1                                      mov r0, r4
00324378  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0032437c  3c 07 67 00 d4 41 00 00                          .byte 0x3c, 0x07, 0x67, 0x00, 0xd4, 0x41, 0x00, 0x00

; FUNCTION 0x003279e0, declared_size=44, range_size=44, mode=arm
; class-group: CMsgMenuReady
; alias: _ZN13CMsgMenuReady13SetPropertiesEv
; demangled: CMsgMenuReady::SetProperties()
; decoder-mode: arm
003279e0  20 10 9f e5                                      ldr r1, [pc, #0x20]
003279e4  10 40 2d e9                                      push {r4, lr}
003279e8  01 10 8f e0                                      add r1, pc, r1
003279ec  00 40 a0 e1                                      mov r4, r0
003279f0  0d 20 81 e2                                      add r2, r1, #0xd
003279f4  14 00 80 e2                                      add r0, r0, #0x14
003279f8  f8 a3 ff eb                                      bl #0x3109e0
003279fc  01 30 a0 e3                                      mov r3, #1
00327a00  2c 30 84 e5                                      str r3, [r4, #0x2c]
00327a04  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00327a08  e8 74 59 00                                      .byte 0xe8, 0x74, 0x59, 0x00
