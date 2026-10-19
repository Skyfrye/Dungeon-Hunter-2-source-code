; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f484, declared_size=8, range_size=8, mode=arm
; class-group: CMsgDropLoot
; alias: _ZN12CMsgDropLoot10GetDataPtrEv
; demangled: CMsgDropLoot::GetDataPtr()
; decoder-mode: arm
0031f484  50 00 80 e2                                      add r0, r0, #0x50
0031f488  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f48c, declared_size=12, range_size=12, mode=arm
; class-group: CMsgDropLoot
; alias: _ZNK12CMsgDropLoot11GetDataSizeEv
; demangled: CMsgDropLoot::GetDataSize() const
; decoder-mode: arm
0031f48c  64 00 90 e5                                      ldr r0, [r0, #0x64]
0031f490  18 00 80 e2                                      add r0, r0, #0x18
0031f494  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fb84, declared_size=60, range_size=60, mode=arm
; class-group: CMsgDropLoot
; alias: _ZN12CMsgDropLoot9ResetDataEv
; demangled: CMsgDropLoot::ResetData()
; decoder-mode: arm
0031fb84  70 40 2d e9                                      push {r4, r5, r6, lr}
0031fb88  00 40 a0 e1                                      mov r4, r0
0031fb8c  68 00 90 e5                                      ldr r0, [r0, #0x68]
0031fb90  00 50 a0 e3                                      mov r5, #0
0031fb94  50 50 c4 e5                                      strb r5, [r4, #0x50]
0031fb98  05 00 50 e1                                      cmp r0, r5
0031fb9c  54 50 84 e5                                      str r5, [r4, #0x54]
0031fba0  58 50 84 e5                                      str r5, [r4, #0x58]
0031fba4  5c 50 84 e5                                      str r5, [r4, #0x5c]
0031fba8  60 50 84 e5                                      str r5, [r4, #0x60]
0031fbac  64 50 84 e5                                      str r5, [r4, #0x64]
0031fbb0  01 00 00 0a                                      beq #0x31fbbc
0031fbb4  21 c2 ff eb                                      bl #0x310440
0031fbb8  68 50 84 e5                                      str r5, [r4, #0x68]
0031fbbc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031ffa8, declared_size=52, range_size=52, mode=arm
; class-group: CMsgDropLoot
; alias: _ZN12CMsgDropLootD1Ev
; demangled: CMsgDropLoot::~CMsgDropLoot()
; decoder-mode: arm
0031ffa8  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031ffac  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031ffb0  10 40 2d e9                                      push {r4, lr}
0031ffb4  03 30 8f e0                                      add r3, pc, r3
0031ffb8  02 20 93 e7                                      ldr r2, [r3, r2]
0031ffbc  00 40 a0 e1                                      mov r4, r0
0031ffc0  08 20 82 e2                                      add r2, r2, #8
0031ffc4  00 20 80 e5                                      str r2, [r0]
0031ffc8  71 a8 13 eb                                      bl #0x80a194
0031ffcc  04 00 a0 e1                                      mov r0, r4
0031ffd0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031ffd4  dc 4a 67 00 40 0d 00 00                          .byte 0xdc, 0x4a, 0x67, 0x00, 0x40, 0x0d, 0x00, 0x00

; FUNCTION 0x003203bc, declared_size=120, range_size=120, mode=arm
; class-group: CMsgDropLoot
; alias: _ZN12CMsgDropLoot8ReadDataER12NetBitStream
; demangled: CMsgDropLoot::ReadData(NetBitStream&)
; decoder-mode: arm
003203bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003203c0  00 70 a0 e1                                      mov r7, r0
003203c4  50 30 97 e4                                      ldr r3, [r7], #0x50
003203c8  01 50 a0 e1                                      mov r5, r1
003203cc  00 40 a0 e1                                      mov r4, r0
003203d0  0f e0 a0 e1                                      mov lr, pc
003203d4  08 f0 93 e5                                      ldr pc, [r3, #8]
003203d8  07 10 a0 e1                                      mov r1, r7
003203dc  00 60 a0 e1                                      mov r6, r0
003203e0  18 20 a0 e3                                      mov r2, #0x18
003203e4  05 00 a0 e1                                      mov r0, r5
003203e8  0e ba 13 eb                                      bl #0x80ec28
003203ec  68 00 94 e5                                      ldr r0, [r4, #0x68]
003203f0  00 00 50 e3                                      cmp r0, #0
003203f4  02 00 00 0a                                      beq #0x320404
003203f8  10 c0 ff eb                                      bl #0x310440
003203fc  00 30 a0 e3                                      mov r3, #0
00320400  68 30 84 e5                                      str r3, [r4, #0x68]
00320404  64 00 94 e5                                      ldr r0, [r4, #0x64]
00320408  00 00 50 e3                                      cmp r0, #0
0032040c  06 00 00 da                                      ble #0x32042c
00320410  02 10 a0 e3                                      mov r1, #2
00320414  54 c0 ff eb                                      bl #0x31056c
00320418  64 20 94 e5                                      ldr r2, [r4, #0x64]
0032041c  00 10 a0 e1                                      mov r1, r0
00320420  68 00 84 e5                                      str r0, [r4, #0x68]
00320424  05 00 a0 e1                                      mov r0, r5
00320428  fe b9 13 eb                                      bl #0x80ec28
0032042c  06 00 a0 e1                                      mov r0, r6
00320430  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003204a4, declared_size=88, range_size=88, mode=arm
; class-group: CMsgDropLoot
; alias: _ZN12CMsgDropLoot9WriteDataER12NetBitStream
; demangled: CMsgDropLoot::WriteData(NetBitStream&)
; decoder-mode: arm
003204a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003204a8  00 70 a0 e1                                      mov r7, r0
003204ac  50 30 97 e4                                      ldr r3, [r7], #0x50
003204b0  01 50 a0 e1                                      mov r5, r1
003204b4  00 40 a0 e1                                      mov r4, r0
003204b8  0f e0 a0 e1                                      mov lr, pc
003204bc  08 f0 93 e5                                      ldr pc, [r3, #8]
003204c0  07 10 a0 e1                                      mov r1, r7
003204c4  00 60 a0 e1                                      mov r6, r0
003204c8  18 20 a0 e3                                      mov r2, #0x18
003204cc  05 00 a0 e1                                      mov r0, r5
003204d0  34 ba 13 eb                                      bl #0x80eda8
003204d4  68 10 94 e5                                      ldr r1, [r4, #0x68]
003204d8  00 00 51 e3                                      cmp r1, #0
003204dc  04 00 00 0a                                      beq #0x3204f4
003204e0  64 20 94 e5                                      ldr r2, [r4, #0x64]
003204e4  00 00 52 e3                                      cmp r2, #0
003204e8  01 00 00 da                                      ble #0x3204f4
003204ec  05 00 a0 e1                                      mov r0, r5
003204f0  2c ba 13 eb                                      bl #0x80eda8
003204f4  06 00 a0 e1                                      mov r0, r6
003204f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003243c0, declared_size=60, range_size=60, mode=arm
; class-group: CMsgDropLoot
; alias: _ZN12CMsgDropLootD0Ev
; demangled: CMsgDropLoot::~CMsgDropLoot()
; decoder-mode: arm
003243c0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003243c4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003243c8  10 40 2d e9                                      push {r4, lr}
003243cc  03 30 8f e0                                      add r3, pc, r3
003243d0  02 20 93 e7                                      ldr r2, [r3, r2]
003243d4  00 40 a0 e1                                      mov r4, r0
003243d8  08 20 82 e2                                      add r2, r2, #8
003243dc  00 20 80 e5                                      str r2, [r0]
003243e0  6b 97 13 eb                                      bl #0x80a194
003243e4  04 00 a0 e1                                      mov r0, r4
003243e8  14 b0 ff eb                                      bl #0x310440
003243ec  04 00 a0 e1                                      mov r0, r4
003243f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003243f4  c4 06 67 00 40 0d 00 00                          .byte 0xc4, 0x06, 0x67, 0x00, 0x40, 0x0d, 0x00, 0x00

; FUNCTION 0x00327908, declared_size=52, range_size=52, mode=arm
; class-group: CMsgDropLoot
; alias: _ZN12CMsgDropLoot13SetPropertiesEv
; demangled: CMsgDropLoot::SetProperties()
; decoder-mode: arm
00327908  28 10 9f e5                                      ldr r1, [pc, #0x28]
0032790c  10 40 2d e9                                      push {r4, lr}
00327910  01 10 8f e0                                      add r1, pc, r1
00327914  00 40 a0 e1                                      mov r4, r0
00327918  0c 20 81 e2                                      add r2, r1, #0xc
0032791c  14 00 80 e2                                      add r0, r0, #0x14
00327920  2e a4 ff eb                                      bl #0x3109e0
00327924  00 30 a0 e3                                      mov r3, #0
00327928  33 30 c4 e5                                      strb r3, [r4, #0x33]
0032792c  01 30 a0 e3                                      mov r3, #1
00327930  2c 30 84 e5                                      str r3, [r4, #0x2c]
00327934  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00327938  78 75 59 00                                      .byte 0x78, 0x75, 0x59, 0x00

; FUNCTION 0x00328c84, declared_size=132, range_size=132, mode=arm
; class-group: CMsgDropLoot
; alias: _ZN12CMsgDropLootC1Eb
; demangled: CMsgDropLoot::CMsgDropLoot(bool)
; decoder-mode: arm
00328c84  70 40 2d e9                                      push {r4, r5, r6, lr}
00328c88  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
00328c8c  01 20 a0 e1                                      mov r2, r1
00328c90  68 60 9f e5                                      ldr r6, [pc, #0x68]
00328c94  05 50 8f e0                                      add r5, pc, r5
00328c98  05 10 a0 e1                                      mov r1, r5
00328c9c  00 40 a0 e1                                      mov r4, r0
00328ca0  26 86 13 eb                                      bl #0x80a540
00328ca4  58 30 9f e5                                      ldr r3, [pc, #0x58]
00328ca8  06 60 8f e0                                      add r6, pc, r6
00328cac  05 10 a0 e1                                      mov r1, r5
00328cb0  03 30 96 e7                                      ldr r3, [r6, r3]
00328cb4  00 50 a0 e3                                      mov r5, #0
00328cb8  50 50 c4 e5                                      strb r5, [r4, #0x50]
00328cbc  08 30 83 e2                                      add r3, r3, #8
00328cc0  00 30 84 e5                                      str r3, [r4]
00328cc4  54 50 84 e5                                      str r5, [r4, #0x54]
00328cc8  58 50 84 e5                                      str r5, [r4, #0x58]
00328ccc  5c 50 84 e5                                      str r5, [r4, #0x5c]
00328cd0  60 50 84 e5                                      str r5, [r4, #0x60]
00328cd4  64 50 84 e5                                      str r5, [r4, #0x64]
00328cd8  68 50 84 e5                                      str r5, [r4, #0x68]
00328cdc  14 00 84 e2                                      add r0, r4, #0x14
00328ce0  0c 20 81 e2                                      add r2, r1, #0xc
00328ce4  3d 9f ff eb                                      bl #0x3109e0
00328ce8  01 30 a0 e3                                      mov r3, #1
00328cec  2c 30 84 e5                                      str r3, [r4, #0x2c]
00328cf0  33 50 c4 e5                                      strb r5, [r4, #0x33]
00328cf4  04 00 a0 e1                                      mov r0, r4
00328cf8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00328cfc  f4 61 59 00 e8 bd 66 00 40 0d 00 00              .byte 0xf4, 0x61, 0x59, 0x00, 0xe8, 0xbd, 0x66, 0x00, 0x40, 0x0d, 0x00, 0x00
