; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f474, declared_size=8, range_size=8, mode=arm
; class-group: CMsgScriptCmd
; alias: _ZN13CMsgScriptCmd10GetDataPtrEv
; demangled: CMsgScriptCmd::GetDataPtr()
; decoder-mode: arm
0031f474  50 00 80 e2                                      add r0, r0, #0x50
0031f478  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f47c, declared_size=8, range_size=8, mode=arm
; class-group: CMsgScriptCmd
; alias: _ZNK13CMsgScriptCmd11GetDataSizeEv
; demangled: CMsgScriptCmd::GetDataSize() const
; decoder-mode: arm
0031f47c  0c 00 a0 e3                                      mov r0, #0xc
0031f480  1e ff 2f e1                                      bx lr

; FUNCTION 0x00320010, declared_size=52, range_size=52, mode=arm
; class-group: CMsgScriptCmd
; alias: _ZN13CMsgScriptCmdD1Ev
; demangled: CMsgScriptCmd::~CMsgScriptCmd()
; decoder-mode: arm
00320010  24 30 9f e5                                      ldr r3, [pc, #0x24]
00320014  24 20 9f e5                                      ldr r2, [pc, #0x24]
00320018  10 40 2d e9                                      push {r4, lr}
0032001c  03 30 8f e0                                      add r3, pc, r3
00320020  02 20 93 e7                                      ldr r2, [r3, r2]
00320024  00 40 a0 e1                                      mov r4, r0
00320028  08 20 82 e2                                      add r2, r2, #8
0032002c  00 20 80 e5                                      str r2, [r0]
00320030  57 a8 13 eb                                      bl #0x80a194
00320034  04 00 a0 e1                                      mov r0, r4
00320038  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0032003c  74 4a 67 00 5c 33 00 00                          .byte 0x74, 0x4a, 0x67, 0x00, 0x5c, 0x33, 0x00, 0x00

; FUNCTION 0x00324384, declared_size=60, range_size=60, mode=arm
; class-group: CMsgScriptCmd
; alias: _ZN13CMsgScriptCmdD0Ev
; demangled: CMsgScriptCmd::~CMsgScriptCmd()
; decoder-mode: arm
00324384  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00324388  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0032438c  10 40 2d e9                                      push {r4, lr}
00324390  03 30 8f e0                                      add r3, pc, r3
00324394  02 20 93 e7                                      ldr r2, [r3, r2]
00324398  00 40 a0 e1                                      mov r4, r0
0032439c  08 20 82 e2                                      add r2, r2, #8
003243a0  00 20 80 e5                                      str r2, [r0]
003243a4  7a 97 13 eb                                      bl #0x80a194
003243a8  04 00 a0 e1                                      mov r0, r4
003243ac  23 b0 ff eb                                      bl #0x310440
003243b0  04 00 a0 e1                                      mov r0, r4
003243b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003243b8  00 07 67 00 5c 33 00 00                          .byte 0x00, 0x07, 0x67, 0x00, 0x5c, 0x33, 0x00, 0x00

; FUNCTION 0x003279a8, declared_size=56, range_size=56, mode=arm
; class-group: CMsgScriptCmd
; alias: _ZN13CMsgScriptCmd13SetPropertiesEv
; demangled: CMsgScriptCmd::SetProperties()
; decoder-mode: arm
003279a8  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
003279ac  10 40 2d e9                                      push {r4, lr}
003279b0  01 10 8f e0                                      add r1, pc, r1
003279b4  00 40 a0 e1                                      mov r4, r0
003279b8  0d 20 81 e2                                      add r2, r1, #0xd
003279bc  14 00 80 e2                                      add r0, r0, #0x14
003279c0  06 a4 ff eb                                      bl #0x3109e0
003279c4  01 30 a0 e3                                      mov r3, #1
003279c8  2c 30 84 e5                                      str r3, [r4, #0x2c]
003279cc  33 30 c4 e5                                      strb r3, [r4, #0x33]
003279d0  32 30 c4 e5                                      strb r3, [r4, #0x32]
003279d4  30 30 c4 e5                                      strb r3, [r4, #0x30]
003279d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003279dc  10 75 59 00                                      .byte 0x10, 0x75, 0x59, 0x00
