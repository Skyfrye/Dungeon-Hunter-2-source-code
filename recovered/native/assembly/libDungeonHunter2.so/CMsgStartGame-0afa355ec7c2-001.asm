; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f424, declared_size=8, range_size=8, mode=arm
; class-group: CMsgStartGame
; alias: _ZN13CMsgStartGame10GetDataPtrEv
; demangled: CMsgStartGame::GetDataPtr()
; decoder-mode: arm
0031f424  50 00 80 e2                                      add r0, r0, #0x50
0031f428  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f42c, declared_size=8, range_size=8, mode=arm
; class-group: CMsgStartGame
; alias: _ZNK13CMsgStartGame11GetDataSizeEv
; demangled: CMsgStartGame::GetDataSize() const
; decoder-mode: arm
0031f42c  1c 00 a0 e3                                      mov r0, #0x1c
0031f430  1e ff 2f e1                                      bx lr

; FUNCTION 0x00320114, declared_size=52, range_size=52, mode=arm
; class-group: CMsgStartGame
; alias: _ZN13CMsgStartGameD1Ev
; demangled: CMsgStartGame::~CMsgStartGame()
; decoder-mode: arm
00320114  24 30 9f e5                                      ldr r3, [pc, #0x24]
00320118  24 20 9f e5                                      ldr r2, [pc, #0x24]
0032011c  10 40 2d e9                                      push {r4, lr}
00320120  03 30 8f e0                                      add r3, pc, r3
00320124  02 20 93 e7                                      ldr r2, [r3, r2]
00320128  00 40 a0 e1                                      mov r4, r0
0032012c  08 20 82 e2                                      add r2, r2, #8
00320130  00 20 80 e5                                      str r2, [r0]
00320134  16 a8 13 eb                                      bl #0x80a194
00320138  04 00 a0 e1                                      mov r0, r4
0032013c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00320140  70 49 67 00 20 2c 00 00                          .byte 0x70, 0x49, 0x67, 0x00, 0x20, 0x2c, 0x00, 0x00

; FUNCTION 0x00324258, declared_size=60, range_size=60, mode=arm
; class-group: CMsgStartGame
; alias: _ZN13CMsgStartGameD0Ev
; demangled: CMsgStartGame::~CMsgStartGame()
; decoder-mode: arm
00324258  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0032425c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00324260  10 40 2d e9                                      push {r4, lr}
00324264  03 30 8f e0                                      add r3, pc, r3
00324268  02 20 93 e7                                      ldr r2, [r3, r2]
0032426c  00 40 a0 e1                                      mov r4, r0
00324270  08 20 82 e2                                      add r2, r2, #8
00324274  00 20 80 e5                                      str r2, [r0]
00324278  c5 97 13 eb                                      bl #0x80a194
0032427c  04 00 a0 e1                                      mov r0, r4
00324280  6e b0 ff eb                                      bl #0x310440
00324284  04 00 a0 e1                                      mov r0, r4
00324288  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0032428c  2c 08 67 00 20 2c 00 00                          .byte 0x2c, 0x08, 0x67, 0x00, 0x20, 0x2c, 0x00, 0x00

; FUNCTION 0x00327aa0, declared_size=56, range_size=56, mode=arm
; class-group: CMsgStartGame
; alias: _ZN13CMsgStartGame13SetPropertiesEv
; demangled: CMsgStartGame::SetProperties()
; decoder-mode: arm
00327aa0  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00327aa4  10 40 2d e9                                      push {r4, lr}
00327aa8  01 10 8f e0                                      add r1, pc, r1
00327aac  00 40 a0 e1                                      mov r4, r0
00327ab0  0d 20 81 e2                                      add r2, r1, #0xd
00327ab4  14 00 80 e2                                      add r0, r0, #0x14
00327ab8  c8 a3 ff eb                                      bl #0x3109e0
00327abc  01 30 a0 e3                                      mov r3, #1
00327ac0  00 20 a0 e3                                      mov r2, #0
00327ac4  33 20 c4 e5                                      strb r2, [r4, #0x33]
00327ac8  32 30 c4 e5                                      strb r3, [r4, #0x32]
00327acc  2c 30 84 e5                                      str r3, [r4, #0x2c]
00327ad0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00327ad4  78 74 59 00                                      .byte 0x78, 0x74, 0x59, 0x00
