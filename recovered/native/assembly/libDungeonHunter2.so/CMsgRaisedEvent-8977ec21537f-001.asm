; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f454, declared_size=8, range_size=8, mode=arm
; class-group: CMsgRaisedEvent
; alias: _ZN15CMsgRaisedEvent10GetDataPtrEv
; demangled: CMsgRaisedEvent::GetDataPtr()
; decoder-mode: arm
0031f454  50 00 80 e2                                      add r0, r0, #0x50
0031f458  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f45c, declared_size=8, range_size=8, mode=arm
; class-group: CMsgRaisedEvent
; alias: _ZNK15CMsgRaisedEvent11GetDataSizeEv
; demangled: CMsgRaisedEvent::GetDataSize() const
; decoder-mode: arm
0031f45c  14 00 a0 e3                                      mov r0, #0x14
0031f460  1e ff 2f e1                                      bx lr

; FUNCTION 0x00320078, declared_size=52, range_size=52, mode=arm
; class-group: CMsgRaisedEvent
; alias: _ZN15CMsgRaisedEventD1Ev
; demangled: CMsgRaisedEvent::~CMsgRaisedEvent()
; decoder-mode: arm
00320078  24 30 9f e5                                      ldr r3, [pc, #0x24]
0032007c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00320080  10 40 2d e9                                      push {r4, lr}
00320084  03 30 8f e0                                      add r3, pc, r3
00320088  02 20 93 e7                                      ldr r2, [r3, r2]
0032008c  00 40 a0 e1                                      mov r4, r0
00320090  08 20 82 e2                                      add r2, r2, #8
00320094  00 20 80 e5                                      str r2, [r0]
00320098  3d a8 13 eb                                      bl #0x80a194
0032009c  04 00 a0 e1                                      mov r0, r4
003200a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003200a4  0c 4a 67 00 4c 37 00 00                          .byte 0x0c, 0x4a, 0x67, 0x00, 0x4c, 0x37, 0x00, 0x00

; FUNCTION 0x0032430c, declared_size=60, range_size=60, mode=arm
; class-group: CMsgRaisedEvent
; alias: _ZN15CMsgRaisedEventD0Ev
; demangled: CMsgRaisedEvent::~CMsgRaisedEvent()
; decoder-mode: arm
0032430c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00324310  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00324314  10 40 2d e9                                      push {r4, lr}
00324318  03 30 8f e0                                      add r3, pc, r3
0032431c  02 20 93 e7                                      ldr r2, [r3, r2]
00324320  00 40 a0 e1                                      mov r4, r0
00324324  08 20 82 e2                                      add r2, r2, #8
00324328  00 20 80 e5                                      str r2, [r0]
0032432c  98 97 13 eb                                      bl #0x80a194
00324330  04 00 a0 e1                                      mov r0, r4
00324334  41 b0 ff eb                                      bl #0x310440
00324338  04 00 a0 e1                                      mov r0, r4
0032433c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00324340  78 07 67 00 4c 37 00 00                          .byte 0x78, 0x07, 0x67, 0x00, 0x4c, 0x37, 0x00, 0x00

; FUNCTION 0x00327a0c, declared_size=52, range_size=52, mode=arm
; class-group: CMsgRaisedEvent
; alias: _ZN15CMsgRaisedEvent13SetPropertiesEv
; demangled: CMsgRaisedEvent::SetProperties()
; decoder-mode: arm
00327a0c  28 10 9f e5                                      ldr r1, [pc, #0x28]
00327a10  10 40 2d e9                                      push {r4, lr}
00327a14  01 10 8f e0                                      add r1, pc, r1
00327a18  00 40 a0 e1                                      mov r4, r0
00327a1c  0f 20 81 e2                                      add r2, r1, #0xf
00327a20  14 00 80 e2                                      add r0, r0, #0x14
00327a24  ed a3 ff eb                                      bl #0x3109e0
00327a28  01 30 a0 e3                                      mov r3, #1
00327a2c  30 30 c4 e5                                      strb r3, [r4, #0x30]
00327a30  2c 30 84 e5                                      str r3, [r4, #0x2c]
00327a34  33 30 c4 e5                                      strb r3, [r4, #0x33]
00327a38  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00327a3c  cc 74 59 00                                      .byte 0xcc, 0x74, 0x59, 0x00

; FUNCTION 0x00329630, declared_size=124, range_size=124, mode=arm
; class-group: CMsgRaisedEvent
; alias: _ZN15CMsgRaisedEventC1Eb
; demangled: CMsgRaisedEvent::CMsgRaisedEvent(bool)
; decoder-mode: arm
00329630  70 40 2d e9                                      push {r4, r5, r6, lr}
00329634  64 60 9f e5                                      ldr r6, [pc, #0x64]
00329638  01 20 a0 e1                                      mov r2, r1
0032963c  60 50 9f e5                                      ldr r5, [pc, #0x60]
00329640  06 60 8f e0                                      add r6, pc, r6
00329644  06 10 a0 e1                                      mov r1, r6
00329648  00 40 a0 e1                                      mov r4, r0
0032964c  bb 83 13 eb                                      bl #0x80a540
00329650  50 20 9f e5                                      ldr r2, [pc, #0x50]
00329654  05 50 8f e0                                      add r5, pc, r5
00329658  00 30 a0 e3                                      mov r3, #0
0032965c  02 20 95 e7                                      ldr r2, [r5, r2]
00329660  60 30 84 e5                                      str r3, [r4, #0x60]
00329664  50 30 84 e5                                      str r3, [r4, #0x50]
00329668  08 20 82 e2                                      add r2, r2, #8
0032966c  00 20 84 e5                                      str r2, [r4]
00329670  54 30 84 e5                                      str r3, [r4, #0x54]
00329674  5c 30 84 e5                                      str r3, [r4, #0x5c]
00329678  06 10 a0 e1                                      mov r1, r6
0032967c  14 00 84 e2                                      add r0, r4, #0x14
00329680  0f 20 86 e2                                      add r2, r6, #0xf
00329684  d5 9c ff eb                                      bl #0x3109e0
00329688  01 30 a0 e3                                      mov r3, #1
0032968c  30 30 c4 e5                                      strb r3, [r4, #0x30]
00329690  2c 30 84 e5                                      str r3, [r4, #0x2c]
00329694  33 30 c4 e5                                      strb r3, [r4, #0x33]
00329698  04 00 a0 e1                                      mov r0, r4
0032969c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003296a0  a0 58 59 00 3c b4 66 00 4c 37 00 00              .byte 0xa0, 0x58, 0x59, 0x00, 0x3c, 0xb4, 0x66, 0x00, 0x4c, 0x37, 0x00, 0x00

; FUNCTION 0x0047ac58, declared_size=60, range_size=60, mode=arm
; class-group: CMsgRaisedEvent
; alias: _ZN15CMsgRaisedEvent6CreateEP10QuestEvent
; demangled: CMsgRaisedEvent::Create(QuestEvent*)
; decoder-mode: arm
0047ac58  70 40 2d e9                                      push {r4, r5, r6, lr}
0047ac5c  00 50 a0 e1                                      mov r5, r0
0047ac60  28 00 9f e5                                      ldr r0, [pc, #0x28]
0047ac64  01 10 a0 e3                                      mov r1, #1
0047ac68  00 00 8f e0                                      add r0, pc, r0
0047ac6c  74 3d 0e eb                                      bl #0x80a244
0047ac70  00 40 a0 e1                                      mov r4, r0
0047ac74  00 30 95 e5                                      ldr r3, [r5]
0047ac78  05 00 a0 e1                                      mov r0, r5
0047ac7c  50 10 84 e2                                      add r1, r4, #0x50
0047ac80  0f e0 a0 e1                                      mov lr, pc
0047ac84  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0047ac88  04 00 a0 e1                                      mov r0, r4
0047ac8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0047ac90  78 42 44 00                                      .byte 0x78, 0x42, 0x44, 0x00

; FUNCTION 0x0049a238, declared_size=1196, range_size=1196, mode=arm
; class-group: CMsgRaisedEvent
; alias: _ZN15CMsgRaisedEvent21RaiseEventFromNetworkEPS_
; demangled: CMsgRaisedEvent::RaiseEventFromNetwork(CMsgRaisedEvent*)
; decoder-mode: arm
0049a238  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0049a23c  24 d0 4d e2                                      sub sp, sp, #0x24
0049a240  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0049a244  00 40 a0 e1                                      mov r4, r0
0049a248  4f 9b 0d eb                                      bl #0x800f8c
0049a24c  00 30 90 e5                                      ldr r3, [r0]
0049a250  0f e0 a0 e1                                      mov lr, pc
0049a254  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0049a258  e4 63 9f e5                                      ldr r6, [pc, #0x3e4]
0049a25c  05 00 50 e1                                      cmp r0, r5
0049a260  06 60 8f e0                                      add r6, pc, r6
0049a264  40 00 00 0a                                      beq #0x49a36c
0049a268  d8 73 9f e5                                      ldr r7, [pc, #0x3d8]
0049a26c  14 80 8d e2                                      add r8, sp, #0x14
0049a270  08 00 a0 e1                                      mov r0, r8
0049a274  07 30 96 e7                                      ldr r3, [r6, r7]
0049a278  54 20 94 e5                                      ldr r2, [r4, #0x54]
0049a27c  50 50 94 e5                                      ldr r5, [r4, #0x50]
0049a280  38 10 93 e5                                      ldr r1, [r3, #0x38]
0049a284  58 a0 94 e5                                      ldr sl, [r4, #0x58]
0049a288  5c b0 94 e5                                      ldr fp, [r4, #0x5c]
0049a28c  60 90 94 e5                                      ldr sb, [r4, #0x60]
0049a290  42 99 fa eb                                      bl #0x3407a0
0049a294  08 00 a0 e1                                      mov r0, r8
0049a298  11 97 fa eb                                      bl #0x33fee4
0049a29c  00 80 a0 e1                                      mov r8, r0
0049a2a0  0c 00 55 e3                                      cmp r5, #0xc
0049a2a4  05 f1 8f 90                                      addls pc, pc, r5, lsl #2
0049a2a8  31 00 00 ea                                      b #0x49a374
0049a2ac  33 00 00 ea                                      b #0x49a380
0049a2b0  49 00 00 ea                                      b #0x49a3dc
0049a2b4  54 00 00 ea                                      b #0x49a40c
0049a2b8  6a 00 00 ea                                      b #0x49a468
0049a2bc  75 00 00 ea                                      b #0x49a498
0049a2c0  88 00 00 ea                                      b #0x49a4e8
0049a2c4  2a 00 00 ea                                      b #0x49a374
0049a2c8  92 00 00 ea                                      b #0x49a518
0049a2cc  9d 00 00 ea                                      b #0x49a548
0049a2d0  a8 00 00 ea                                      b #0x49a578
0049a2d4  b3 00 00 ea                                      b #0x49a5a8
0049a2d8  25 00 00 ea                                      b #0x49a374
0049a2dc  ff ff ff ea                                      b #0x49a2e0
0049a2e0  1c 00 a0 e3                                      mov r0, #0x1c
0049a2e4  5a d8 f9 eb                                      bl #0x310454
0049a2e8  07 30 96 e7                                      ldr r3, [r6, r7]
0049a2ec  58 13 9f e5                                      ldr r1, [pc, #0x358]
0049a2f0  58 23 9f e5                                      ldr r2, [pc, #0x358]
0049a2f4  00 40 a0 e1                                      mov r4, r0
0049a2f8  01 10 8f e0                                      add r1, pc, r1
0049a2fc  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0049a300  02 20 8f e0                                      add r2, pc, r2
0049a304  34 aa 00 eb                                      bl #0x4c4bdc
0049a308  44 33 9f e5                                      ldr r3, [pc, #0x344]
0049a30c  00 10 e0 e3                                      mvn r1, #0
0049a310  00 20 a0 e3                                      mov r2, #0
0049a314  03 30 96 e7                                      ldr r3, [r6, r3]
0049a318  01 01 84 e9                                      stmib r4, {r0, r8}
0049a31c  08 30 83 e2                                      add r3, r3, #8
0049a320  11 20 c4 e5                                      strb r2, [r4, #0x11]
0049a324  14 10 84 e5                                      str r1, [r4, #0x14]
0049a328  00 30 84 e5                                      str r3, [r4]
0049a32c  18 90 84 e5                                      str sb, [r4, #0x18]
0049a330  0c 10 84 e5                                      str r1, [r4, #0xc]
0049a334  10 20 c4 e5                                      strb r2, [r4, #0x10]
0049a338  01 50 a0 e3                                      mov r5, #1
0049a33c  07 00 96 e7                                      ldr r0, [r6, r7]
0049a340  93 14 fa eb                                      bl #0x31f594
0049a344  00 30 50 e2                                      subs r3, r0, #0
0049a348  a8 00 00 0a                                      beq #0x49a5f0
0049a34c  00 00 55 e3                                      cmp r5, #0
0049a350  a0 00 00 1a                                      bne #0x49a5d8
0049a354  00 00 55 e3                                      cmp r5, #0
0049a358  03 00 00 0a                                      beq #0x49a36c
0049a35c  04 00 a0 e1                                      mov r0, r4
0049a360  00 30 94 e5                                      ldr r3, [r4]
0049a364  0f e0 a0 e1                                      mov lr, pc
0049a368  04 f0 93 e5                                      ldr pc, [r3, #4]
0049a36c  24 d0 8d e2                                      add sp, sp, #0x24
0049a370  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0049a374  00 50 a0 e3                                      mov r5, #0
0049a378  05 40 a0 e1                                      mov r4, r5
0049a37c  ee ff ff ea                                      b #0x49a33c
0049a380  1c 00 a0 e3                                      mov r0, #0x1c
0049a384  32 d8 f9 eb                                      bl #0x310454
0049a388  07 30 96 e7                                      ldr r3, [r6, r7]
0049a38c  c4 12 9f e5                                      ldr r1, [pc, #0x2c4]
0049a390  c4 22 9f e5                                      ldr r2, [pc, #0x2c4]
0049a394  00 40 a0 e1                                      mov r4, r0
0049a398  01 10 8f e0                                      add r1, pc, r1
0049a39c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0049a3a0  02 20 8f e0                                      add r2, pc, r2
0049a3a4  0c aa 00 eb                                      bl #0x4c4bdc
0049a3a8  b0 32 9f e5                                      ldr r3, [pc, #0x2b0]
0049a3ac  03 30 96 e7                                      ldr r3, [r6, r3]
0049a3b0  00 20 a0 e3                                      mov r2, #0
0049a3b4  00 10 e0 e3                                      mvn r1, #0
0049a3b8  08 30 83 e2                                      add r3, r3, #8
0049a3bc  01 05 84 e9                                      stmib r4, {r0, r8, sl}
0049a3c0  11 20 c4 e5                                      strb r2, [r4, #0x11]
0049a3c4  14 10 84 e5                                      str r1, [r4, #0x14]
0049a3c8  00 30 84 e5                                      str r3, [r4]
0049a3cc  18 90 84 e5                                      str sb, [r4, #0x18]
0049a3d0  10 20 c4 e5                                      strb r2, [r4, #0x10]
0049a3d4  01 50 a0 e3                                      mov r5, #1
0049a3d8  d7 ff ff ea                                      b #0x49a33c
0049a3dc  1c 00 a0 e3                                      mov r0, #0x1c
0049a3e0  1b d8 f9 eb                                      bl #0x310454
0049a3e4  07 30 96 e7                                      ldr r3, [r6, r7]
0049a3e8  74 12 9f e5                                      ldr r1, [pc, #0x274]
0049a3ec  74 22 9f e5                                      ldr r2, [pc, #0x274]
0049a3f0  00 40 a0 e1                                      mov r4, r0
0049a3f4  01 10 8f e0                                      add r1, pc, r1
0049a3f8  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0049a3fc  02 20 8f e0                                      add r2, pc, r2
0049a400  f5 a9 00 eb                                      bl #0x4c4bdc
0049a404  60 32 9f e5                                      ldr r3, [pc, #0x260]
0049a408  e7 ff ff ea                                      b #0x49a3ac
0049a40c  1c 00 a0 e3                                      mov r0, #0x1c
0049a410  0f d8 f9 eb                                      bl #0x310454
0049a414  07 30 96 e7                                      ldr r3, [r6, r7]
0049a418  50 12 9f e5                                      ldr r1, [pc, #0x250]
0049a41c  50 22 9f e5                                      ldr r2, [pc, #0x250]
0049a420  00 40 a0 e1                                      mov r4, r0
0049a424  01 10 8f e0                                      add r1, pc, r1
0049a428  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0049a42c  02 20 8f e0                                      add r2, pc, r2
0049a430  e9 a9 00 eb                                      bl #0x4c4bdc
0049a434  3c 32 9f e5                                      ldr r3, [pc, #0x23c]
0049a438  03 30 96 e7                                      ldr r3, [r6, r3]
0049a43c  00 20 a0 e3                                      mov r2, #0
0049a440  00 10 e0 e3                                      mvn r1, #0
0049a444  08 30 83 e2                                      add r3, r3, #8
0049a448  01 05 84 e9                                      stmib r4, {r0, r8, sl}
0049a44c  11 20 c4 e5                                      strb r2, [r4, #0x11]
0049a450  14 10 84 e5                                      str r1, [r4, #0x14]
0049a454  18 90 84 e5                                      str sb, [r4, #0x18]
0049a458  00 30 84 e5                                      str r3, [r4]
0049a45c  10 20 c4 e5                                      strb r2, [r4, #0x10]
0049a460  01 50 a0 e3                                      mov r5, #1
0049a464  b4 ff ff ea                                      b #0x49a33c
0049a468  1c 00 a0 e3                                      mov r0, #0x1c
0049a46c  f8 d7 f9 eb                                      bl #0x310454
0049a470  07 30 96 e7                                      ldr r3, [r6, r7]
0049a474  00 12 9f e5                                      ldr r1, [pc, #0x200]
0049a478  00 22 9f e5                                      ldr r2, [pc, #0x200]
0049a47c  00 40 a0 e1                                      mov r4, r0
0049a480  01 10 8f e0                                      add r1, pc, r1
0049a484  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0049a488  02 20 8f e0                                      add r2, pc, r2
0049a48c  d2 a9 00 eb                                      bl #0x4c4bdc
0049a490  ec 31 9f e5                                      ldr r3, [pc, #0x1ec]
0049a494  e7 ff ff ea                                      b #0x49a438
0049a498  07 50 96 e7                                      ldr r5, [r6, r7]
0049a49c  08 40 8d e2                                      add r4, sp, #8
0049a4a0  09 20 a0 e1                                      mov r2, sb
0049a4a4  38 10 95 e5                                      ldr r1, [r5, #0x38]
0049a4a8  04 00 a0 e1                                      mov r0, r4
0049a4ac  bb 98 fa eb                                      bl #0x3407a0
0049a4b0  04 00 a0 e1                                      mov r0, r4
0049a4b4  8a 96 fa eb                                      bl #0x33fee4
0049a4b8  00 90 a0 e1                                      mov sb, r0
0049a4bc  1c 00 a0 e3                                      mov r0, #0x1c
0049a4c0  e3 d7 f9 eb                                      bl #0x310454
0049a4c4  bc 11 9f e5                                      ldr r1, [pc, #0x1bc]
0049a4c8  bc 21 9f e5                                      ldr r2, [pc, #0x1bc]
0049a4cc  00 40 a0 e1                                      mov r4, r0
0049a4d0  01 10 8f e0                                      add r1, pc, r1
0049a4d4  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0049a4d8  02 20 8f e0                                      add r2, pc, r2
0049a4dc  be a9 00 eb                                      bl #0x4c4bdc
0049a4e0  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
0049a4e4  b0 ff ff ea                                      b #0x49a3ac
0049a4e8  1c 00 a0 e3                                      mov r0, #0x1c
0049a4ec  d8 d7 f9 eb                                      bl #0x310454
0049a4f0  07 30 96 e7                                      ldr r3, [r6, r7]
0049a4f4  98 11 9f e5                                      ldr r1, [pc, #0x198]
0049a4f8  98 21 9f e5                                      ldr r2, [pc, #0x198]
0049a4fc  00 40 a0 e1                                      mov r4, r0
0049a500  01 10 8f e0                                      add r1, pc, r1
0049a504  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0049a508  02 20 8f e0                                      add r2, pc, r2
0049a50c  b2 a9 00 eb                                      bl #0x4c4bdc
0049a510  84 31 9f e5                                      ldr r3, [pc, #0x184]
0049a514  c7 ff ff ea                                      b #0x49a438
0049a518  1c 00 a0 e3                                      mov r0, #0x1c
0049a51c  cc d7 f9 eb                                      bl #0x310454
0049a520  07 30 96 e7                                      ldr r3, [r6, r7]
0049a524  74 11 9f e5                                      ldr r1, [pc, #0x174]
0049a528  74 21 9f e5                                      ldr r2, [pc, #0x174]
0049a52c  00 40 a0 e1                                      mov r4, r0
0049a530  01 10 8f e0                                      add r1, pc, r1
0049a534  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0049a538  02 20 8f e0                                      add r2, pc, r2
0049a53c  a6 a9 00 eb                                      bl #0x4c4bdc
0049a540  60 31 9f e5                                      ldr r3, [pc, #0x160]
0049a544  bb ff ff ea                                      b #0x49a438
0049a548  1c 00 a0 e3                                      mov r0, #0x1c
0049a54c  c0 d7 f9 eb                                      bl #0x310454
0049a550  07 30 96 e7                                      ldr r3, [r6, r7]
0049a554  50 11 9f e5                                      ldr r1, [pc, #0x150]
0049a558  50 21 9f e5                                      ldr r2, [pc, #0x150]
0049a55c  00 40 a0 e1                                      mov r4, r0
0049a560  01 10 8f e0                                      add r1, pc, r1
0049a564  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0049a568  02 20 8f e0                                      add r2, pc, r2
0049a56c  9a a9 00 eb                                      bl #0x4c4bdc
0049a570  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
0049a574  af ff ff ea                                      b #0x49a438
0049a578  1c 00 a0 e3                                      mov r0, #0x1c
0049a57c  b4 d7 f9 eb                                      bl #0x310454
0049a580  07 30 96 e7                                      ldr r3, [r6, r7]
0049a584  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
0049a588  2c 21 9f e5                                      ldr r2, [pc, #0x12c]
0049a58c  00 40 a0 e1                                      mov r4, r0
0049a590  01 10 8f e0                                      add r1, pc, r1
0049a594  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0049a598  02 20 8f e0                                      add r2, pc, r2
0049a59c  8e a9 00 eb                                      bl #0x4c4bdc
0049a5a0  18 31 9f e5                                      ldr r3, [pc, #0x118]
0049a5a4  a3 ff ff ea                                      b #0x49a438
0049a5a8  1c 00 a0 e3                                      mov r0, #0x1c
0049a5ac  a8 d7 f9 eb                                      bl #0x310454
0049a5b0  07 30 96 e7                                      ldr r3, [r6, r7]
0049a5b4  08 11 9f e5                                      ldr r1, [pc, #0x108]
0049a5b8  08 21 9f e5                                      ldr r2, [pc, #0x108]
0049a5bc  00 40 a0 e1                                      mov r4, r0
0049a5c0  01 10 8f e0                                      add r1, pc, r1
0049a5c4  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0049a5c8  02 20 8f e0                                      add r2, pc, r2
0049a5cc  82 a9 00 eb                                      bl #0x4c4bdc
0049a5d0  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0049a5d4  74 ff ff ea                                      b #0x49a3ac
0049a5d8  01 30 a0 e3                                      mov r3, #1
0049a5dc  14 b0 84 e5                                      str fp, [r4, #0x14]
0049a5e0  11 30 c4 e5                                      strb r3, [r4, #0x11]
0049a5e4  04 10 a0 e1                                      mov r1, r4
0049a5e8  a8 7a fa eb                                      bl #0x339090
0049a5ec  5a ff ff ea                                      b #0x49a35c
0049a5f0  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
0049a5f4  02 20 96 e7                                      ldr r2, [r6, r2]
0049a5f8  00 20 92 e5                                      ldr r2, [r2]
0049a5fc  02 00 52 e3                                      cmp r2, #2
0049a600  00 30 83 05                                      streq r3, [r3]
0049a604  52 ff ff 0a                                      beq #0x49a354
0049a608  01 00 52 e3                                      cmp r2, #1
0049a60c  50 ff ff 1a                                      bne #0x49a354
0049a610  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
0049a614  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0049a618  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
0049a61c  00 00 96 e7                                      ldr r0, [r6, r0]
0049a620  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0049a624  8a c0 a0 e3                                      mov ip, #0x8a
0049a628  01 10 8f e0                                      add r1, pc, r1
0049a62c  02 20 8f e0                                      add r2, pc, r2
0049a630  03 30 8f e0                                      add r3, pc, r3
0049a634  a8 00 80 e2                                      add r0, r0, #0xa8
0049a638  00 c0 8d e5                                      str ip, [sp]
0049a63c  70 ce f9 eb                                      bl #0x30e004
0049a640  43 ff ff ea                                      b #0x49a354
; mapping-symbol data/literal pool
0049a644  30 a8 4f 00 f4 37 00 00 70 86 42 00 70 d1 42 00  .byte 0x30, 0xa8, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x70, 0x86, 0x42, 0x00, 0x70, 0xd1, 0x42, 0x00
0049a654  34 14 00 00 d0 85 42 00 d0 8f 42 00 d4 3c 00 00  .byte 0x34, 0x14, 0x00, 0x00, 0xd0, 0x85, 0x42, 0x00, 0xd0, 0x8f, 0x42, 0x00, 0xd4, 0x3c, 0x00, 0x00
0049a664  74 85 42 00 84 8f 42 00 b4 48 00 00 44 85 42 00  .byte 0x74, 0x85, 0x42, 0x00, 0x84, 0x8f, 0x42, 0x00, 0xb4, 0x48, 0x00, 0x00, 0x44, 0x85, 0x42, 0x00
0049a674  cc 60 42 00 a4 09 00 00 e8 84 42 00 68 8b 42 00  .byte 0xcc, 0x60, 0x42, 0x00, 0xa4, 0x09, 0x00, 0x00, 0xe8, 0x84, 0x42, 0x00, 0x68, 0x8b, 0x42, 0x00
0049a684  90 16 00 00 98 84 42 00 a8 84 42 00 c0 2f 00 00  .byte 0x90, 0x16, 0x00, 0x00, 0x98, 0x84, 0x42, 0x00, 0xa8, 0x84, 0x42, 0x00, 0xc0, 0x2f, 0x00, 0x00
0049a694  68 84 42 00 e8 8c 42 00 88 1b 00 00 38 84 42 00  .byte 0x68, 0x84, 0x42, 0x00, 0xe8, 0x8c, 0x42, 0x00, 0x88, 0x1b, 0x00, 0x00, 0x38, 0x84, 0x42, 0x00
0049a6a4  40 8b 42 00 f8 27 00 00 08 84 42 00 e0 85 42 00  .byte 0x40, 0x8b, 0x42, 0x00, 0xf8, 0x27, 0x00, 0x00, 0x08, 0x84, 0x42, 0x00, 0xe0, 0x85, 0x42, 0x00
0049a6b4  a8 36 00 00 d8 83 42 00 b0 be 42 00 1c 17 00 00  .byte 0xa8, 0x36, 0x00, 0x00, 0xd8, 0x83, 0x42, 0x00, 0xb0, 0xbe, 0x42, 0x00, 0x1c, 0x17, 0x00, 0x00
0049a6c4  a8 83 42 00 c8 8d 42 00 e0 2e 00 00 c0 39 00 00  .byte 0xa8, 0x83, 0x42, 0x00, 0xc8, 0x8d, 0x42, 0x00, 0xe0, 0x2e, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0049a6d4  c0 19 00 00 b0 3d 42 00 2c 53 47 00 08 ac 43 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xb0, 0x3d, 0x42, 0x00, 0x2c, 0x53, 0x47, 0x00, 0x08, 0xac, 0x43, 0x00
