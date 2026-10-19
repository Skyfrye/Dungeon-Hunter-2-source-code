; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f444, declared_size=8, range_size=8, mode=arm
; class-group: CMsgAttackResult
; alias: _ZN16CMsgAttackResult10GetDataPtrEv
; demangled: CMsgAttackResult::GetDataPtr()
; decoder-mode: arm
0031f444  50 00 80 e2                                      add r0, r0, #0x50
0031f448  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f44c, declared_size=8, range_size=8, mode=arm
; class-group: CMsgAttackResult
; alias: _ZNK16CMsgAttackResult11GetDataSizeEv
; demangled: CMsgAttackResult::GetDataSize() const
; decoder-mode: arm
0031f44c  34 00 a0 e3                                      mov r0, #0x34
0031f450  1e ff 2f e1                                      bx lr

; FUNCTION 0x003200ac, declared_size=52, range_size=52, mode=arm
; class-group: CMsgAttackResult
; alias: _ZN16CMsgAttackResultD1Ev
; demangled: CMsgAttackResult::~CMsgAttackResult()
; decoder-mode: arm
003200ac  24 30 9f e5                                      ldr r3, [pc, #0x24]
003200b0  24 20 9f e5                                      ldr r2, [pc, #0x24]
003200b4  10 40 2d e9                                      push {r4, lr}
003200b8  03 30 8f e0                                      add r3, pc, r3
003200bc  02 20 93 e7                                      ldr r2, [r3, r2]
003200c0  00 40 a0 e1                                      mov r4, r0
003200c4  08 20 82 e2                                      add r2, r2, #8
003200c8  00 20 80 e5                                      str r2, [r0]
003200cc  30 a8 13 eb                                      bl #0x80a194
003200d0  04 00 a0 e1                                      mov r0, r4
003200d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003200d8  d8 49 67 00 64 3e 00 00                          .byte 0xd8, 0x49, 0x67, 0x00, 0x64, 0x3e, 0x00, 0x00

; FUNCTION 0x003242d0, declared_size=60, range_size=60, mode=arm
; class-group: CMsgAttackResult
; alias: _ZN16CMsgAttackResultD0Ev
; demangled: CMsgAttackResult::~CMsgAttackResult()
; decoder-mode: arm
003242d0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003242d4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003242d8  10 40 2d e9                                      push {r4, lr}
003242dc  03 30 8f e0                                      add r3, pc, r3
003242e0  02 20 93 e7                                      ldr r2, [r3, r2]
003242e4  00 40 a0 e1                                      mov r4, r0
003242e8  08 20 82 e2                                      add r2, r2, #8
003242ec  00 20 80 e5                                      str r2, [r0]
003242f0  a7 97 13 eb                                      bl #0x80a194
003242f4  04 00 a0 e1                                      mov r0, r4
003242f8  50 b0 ff eb                                      bl #0x310440
003242fc  04 00 a0 e1                                      mov r0, r4
00324300  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00324304  b4 07 67 00 64 3e 00 00                          .byte 0xb4, 0x07, 0x67, 0x00, 0x64, 0x3e, 0x00, 0x00

; FUNCTION 0x00327a40, declared_size=52, range_size=52, mode=arm
; class-group: CMsgAttackResult
; alias: _ZN16CMsgAttackResult13SetPropertiesEv
; demangled: CMsgAttackResult::SetProperties()
; decoder-mode: arm
00327a40  28 10 9f e5                                      ldr r1, [pc, #0x28]
00327a44  10 40 2d e9                                      push {r4, lr}
00327a48  01 10 8f e0                                      add r1, pc, r1
00327a4c  00 40 a0 e1                                      mov r4, r0
00327a50  10 20 81 e2                                      add r2, r1, #0x10
00327a54  14 00 80 e2                                      add r0, r0, #0x14
00327a58  e0 a3 ff eb                                      bl #0x3109e0
00327a5c  00 30 a0 e3                                      mov r3, #0
00327a60  33 30 c4 e5                                      strb r3, [r4, #0x33]
00327a64  01 30 a0 e3                                      mov r3, #1
00327a68  2c 30 84 e5                                      str r3, [r4, #0x2c]
00327a6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00327a70  a8 74 59 00                                      .byte 0xa8, 0x74, 0x59, 0x00

; FUNCTION 0x003af330, declared_size=128, range_size=128, mode=arm
; class-group: CMsgAttackResult
; alias: _ZN16CMsgAttackResult6CreateEiiRKN9Character12AttackResultEb
; demangled: CMsgAttackResult::Create(int, int, Character::AttackResult const&, bool)
; decoder-mode: arm
003af330  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003af334  00 60 a0 e1                                      mov r6, r0
003af338  64 00 9f e5                                      ldr r0, [pc, #0x64]
003af33c  01 70 a0 e1                                      mov r7, r1
003af340  01 10 a0 e3                                      mov r1, #1
003af344  00 00 8f e0                                      add r0, pc, r0
003af348  03 a0 a0 e1                                      mov sl, r3
003af34c  02 40 a0 e1                                      mov r4, r2
003af350  bb 6b 11 eb                                      bl #0x80a244
003af354  4c 80 9f e5                                      ldr r8, [pc, #0x4c]
003af358  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003af35c  00 50 a0 e1                                      mov r5, r0
003af360  08 80 8f e0                                      add r8, pc, r8
003af364  03 00 98 e7                                      ldr r0, [r8, r3]
003af368  89 c0 fd eb                                      bl #0x31f594
003af36c  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
003af370  54 c0 85 e2                                      add ip, r5, #0x54
003af374  50 30 85 e5                                      str r3, [r5, #0x50]
003af378  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
003af37c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
003af380  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
003af384  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
003af388  03 00 94 e8                                      ldm r4, {r0, r1}
003af38c  03 00 8c e8                                      stm ip, {r0, r1}
003af390  05 00 a0 e1                                      mov r0, r5
003af394  bc 67 c5 e1                                      strh r6, [r5, #0x7c]
003af398  be 77 c5 e1                                      strh r7, [r5, #0x7e]
003af39c  80 a0 c5 e5                                      strb sl, [r5, #0x80]
003af3a0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
003af3a4  ac fb 50 00 30 57 5e 00 f4 37 00 00              .byte 0xac, 0xfb, 0x50, 0x00, 0x30, 0x57, 0x5e, 0x00, 0xf4, 0x37, 0x00, 0x00
