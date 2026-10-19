; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f434, declared_size=8, range_size=8, mode=arm
; class-group: CMsgControllerAction
; alias: _ZN20CMsgControllerAction10GetDataPtrEv
; demangled: CMsgControllerAction::GetDataPtr()
; decoder-mode: arm
0031f434  50 00 80 e2                                      add r0, r0, #0x50
0031f438  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f43c, declared_size=8, range_size=8, mode=arm
; class-group: CMsgControllerAction
; alias: _ZNK20CMsgControllerAction11GetDataSizeEv
; demangled: CMsgControllerAction::GetDataSize() const
; decoder-mode: arm
0031f43c  14 00 a0 e3                                      mov r0, #0x14
0031f440  1e ff 2f e1                                      bx lr

; FUNCTION 0x003200e0, declared_size=52, range_size=52, mode=arm
; class-group: CMsgControllerAction
; alias: _ZN20CMsgControllerActionD1Ev
; demangled: CMsgControllerAction::~CMsgControllerAction()
; decoder-mode: arm
003200e0  24 30 9f e5                                      ldr r3, [pc, #0x24]
003200e4  24 20 9f e5                                      ldr r2, [pc, #0x24]
003200e8  10 40 2d e9                                      push {r4, lr}
003200ec  03 30 8f e0                                      add r3, pc, r3
003200f0  02 20 93 e7                                      ldr r2, [r3, r2]
003200f4  00 40 a0 e1                                      mov r4, r0
003200f8  08 20 82 e2                                      add r2, r2, #8
003200fc  00 20 80 e5                                      str r2, [r0]
00320100  23 a8 13 eb                                      bl #0x80a194
00320104  04 00 a0 e1                                      mov r0, r4
00320108  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0032010c  a4 49 67 00 18 35 00 00                          .byte 0xa4, 0x49, 0x67, 0x00, 0x18, 0x35, 0x00, 0x00

; FUNCTION 0x00324294, declared_size=60, range_size=60, mode=arm
; class-group: CMsgControllerAction
; alias: _ZN20CMsgControllerActionD0Ev
; demangled: CMsgControllerAction::~CMsgControllerAction()
; decoder-mode: arm
00324294  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00324298  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0032429c  10 40 2d e9                                      push {r4, lr}
003242a0  03 30 8f e0                                      add r3, pc, r3
003242a4  02 20 93 e7                                      ldr r2, [r3, r2]
003242a8  00 40 a0 e1                                      mov r4, r0
003242ac  08 20 82 e2                                      add r2, r2, #8
003242b0  00 20 80 e5                                      str r2, [r0]
003242b4  b6 97 13 eb                                      bl #0x80a194
003242b8  04 00 a0 e1                                      mov r0, r4
003242bc  5f b0 ff eb                                      bl #0x310440
003242c0  04 00 a0 e1                                      mov r0, r4
003242c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003242c8  f0 07 67 00 18 35 00 00                          .byte 0xf0, 0x07, 0x67, 0x00, 0x18, 0x35, 0x00, 0x00

; FUNCTION 0x00327a74, declared_size=44, range_size=44, mode=arm
; class-group: CMsgControllerAction
; alias: _ZN20CMsgControllerAction13SetPropertiesEv
; demangled: CMsgControllerAction::SetProperties()
; decoder-mode: arm
00327a74  20 10 9f e5                                      ldr r1, [pc, #0x20]
00327a78  10 40 2d e9                                      push {r4, lr}
00327a7c  01 10 8f e0                                      add r1, pc, r1
00327a80  00 40 a0 e1                                      mov r4, r0
00327a84  14 20 81 e2                                      add r2, r1, #0x14
00327a88  14 00 80 e2                                      add r0, r0, #0x14
00327a8c  d3 a3 ff eb                                      bl #0x3109e0
00327a90  01 30 a0 e3                                      mov r3, #1
00327a94  2c 30 84 e5                                      str r3, [r4, #0x2c]
00327a98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00327a9c  8c 74 59 00                                      .byte 0x8c, 0x74, 0x59, 0x00

; FUNCTION 0x00328a64, declared_size=112, range_size=112, mode=arm
; class-group: CMsgControllerAction
; alias: _ZN20CMsgControllerActionC1Eb
; demangled: CMsgControllerAction::CMsgControllerAction(bool)
; decoder-mode: arm
00328a64  70 40 2d e9                                      push {r4, r5, r6, lr}
00328a68  58 60 9f e5                                      ldr r6, [pc, #0x58]
00328a6c  01 20 a0 e1                                      mov r2, r1
00328a70  54 50 9f e5                                      ldr r5, [pc, #0x54]
00328a74  06 60 8f e0                                      add r6, pc, r6
00328a78  06 10 a0 e1                                      mov r1, r6
00328a7c  00 40 a0 e1                                      mov r4, r0
00328a80  ae 86 13 eb                                      bl #0x80a540
00328a84  44 20 9f e5                                      ldr r2, [pc, #0x44]
00328a88  05 50 8f e0                                      add r5, pc, r5
00328a8c  00 30 a0 e3                                      mov r3, #0
00328a90  02 20 95 e7                                      ldr r2, [r5, r2]
00328a94  60 30 84 e5                                      str r3, [r4, #0x60]
00328a98  58 30 84 e5                                      str r3, [r4, #0x58]
00328a9c  08 20 82 e2                                      add r2, r2, #8
00328aa0  00 20 84 e5                                      str r2, [r4]
00328aa4  5c 30 84 e5                                      str r3, [r4, #0x5c]
00328aa8  06 10 a0 e1                                      mov r1, r6
00328aac  14 00 84 e2                                      add r0, r4, #0x14
00328ab0  14 20 86 e2                                      add r2, r6, #0x14
00328ab4  c9 9f ff eb                                      bl #0x3109e0
00328ab8  01 30 a0 e3                                      mov r3, #1
00328abc  2c 30 84 e5                                      str r3, [r4, #0x2c]
00328ac0  04 00 a0 e1                                      mov r0, r4
00328ac4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00328ac8  94 64 59 00 08 c0 66 00 18 35 00 00              .byte 0x94, 0x64, 0x59, 0x00, 0x08, 0xc0, 0x66, 0x00, 0x18, 0x35, 0x00, 0x00
