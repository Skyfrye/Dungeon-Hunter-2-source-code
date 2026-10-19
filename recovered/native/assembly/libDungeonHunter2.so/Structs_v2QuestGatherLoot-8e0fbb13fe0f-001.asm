; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cef60, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestGatherLoot
; alias: _ZN7Structs17v2QuestGatherLoot8finalizeEv
; demangled: Structs::v2QuestGatherLoot::finalize()
; decoder-mode: arm
004cef60  10 40 2d e9                                      push {r4, lr}
004cef64  00 40 a0 e1                                      mov r4, r0
004cef68  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cef6c  00 00 50 e3                                      cmp r0, #0
004cef70  03 00 00 0a                                      beq #0x4cef84
004cef74  31 05 f9 eb                                      bl #0x310440
004cef78  00 30 a0 e3                                      mov r3, #0
004cef7c  10 30 84 e5                                      str r3, [r4, #0x10]
004cef80  14 30 84 e5                                      str r3, [r4, #0x14]
004cef84  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cef88  00 00 50 e3                                      cmp r0, #0
004cef8c  03 00 00 0a                                      beq #0x4cefa0
004cef90  2a 05 f9 eb                                      bl #0x310440
004cef94  00 30 a0 e3                                      mov r3, #0
004cef98  18 30 84 e5                                      str r3, [r4, #0x18]
004cef9c  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cefa0  04 00 a0 e1                                      mov r0, r4
004cefa4  10 40 bd e8                                      pop {r4, lr}
004cefa8  24 e6 ff ea                                      b #0x4c8840

; FUNCTION 0x004cefac, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestGatherLoot
; alias: _ZN7Structs17v2QuestGatherLootD1Ev
; demangled: Structs::v2QuestGatherLoot::~v2QuestGatherLoot()
; decoder-mode: arm
004cefac  10 40 2d e9                                      push {r4, lr}
004cefb0  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cefb4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cefb8  00 40 a0 e1                                      mov r4, r0
004cefbc  03 30 8f e0                                      add r3, pc, r3
004cefc0  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cefc4  02 20 93 e7                                      ldr r2, [r3, r2]
004cefc8  00 00 50 e3                                      cmp r0, #0
004cefcc  08 20 82 e2                                      add r2, r2, #8
004cefd0  00 20 84 e5                                      str r2, [r4]
004cefd4  00 00 00 0a                                      beq #0x4cefdc
004cefd8  18 05 f9 eb                                      bl #0x310440
004cefdc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cefe0  00 00 50 e3                                      cmp r0, #0
004cefe4  00 00 00 0a                                      beq #0x4cefec
004cefe8  14 05 f9 eb                                      bl #0x310440
004cefec  04 00 a0 e1                                      mov r0, r4
004ceff0  10 e6 ff eb                                      bl #0x4c8838
004ceff4  04 00 a0 e1                                      mov r0, r4
004ceff8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ceffc  d4 5a 4c 00 6c 0b 00 00                          .byte 0xd4, 0x5a, 0x4c, 0x00, 0x6c, 0x0b, 0x00, 0x00

; FUNCTION 0x004cf004, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestGatherLoot
; alias: _ZN7Structs17v2QuestGatherLootD0Ev
; demangled: Structs::v2QuestGatherLoot::~v2QuestGatherLoot()
; decoder-mode: arm
004cf004  10 40 2d e9                                      push {r4, lr}
004cf008  00 40 a0 e1                                      mov r4, r0
004cf00c  e6 ff ff eb                                      bl #0x4cefac
004cf010  04 00 a0 e1                                      mov r0, r4
004cf014  09 05 f9 eb                                      bl #0x310440
004cf018  04 00 a0 e1                                      mov r0, r4
004cf01c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cf020, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestGatherLoot
; alias: _ZN7Structs17v2QuestGatherLootD2Ev
; demangled: Structs::v2QuestGatherLoot::~v2QuestGatherLoot()
; decoder-mode: arm
004cf020  10 40 2d e9                                      push {r4, lr}
004cf024  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf028  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf02c  00 40 a0 e1                                      mov r4, r0
004cf030  03 30 8f e0                                      add r3, pc, r3
004cf034  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf038  02 20 93 e7                                      ldr r2, [r3, r2]
004cf03c  00 00 50 e3                                      cmp r0, #0
004cf040  08 20 82 e2                                      add r2, r2, #8
004cf044  00 20 84 e5                                      str r2, [r4]
004cf048  00 00 00 0a                                      beq #0x4cf050
004cf04c  fb 04 f9 eb                                      bl #0x310440
004cf050  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf054  00 00 50 e3                                      cmp r0, #0
004cf058  00 00 00 0a                                      beq #0x4cf060
004cf05c  f7 04 f9 eb                                      bl #0x310440
004cf060  04 00 a0 e1                                      mov r0, r4
004cf064  f3 e5 ff eb                                      bl #0x4c8838
004cf068  04 00 a0 e1                                      mov r0, r4
004cf06c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf070  60 5a 4c 00 6c 0b 00 00                          .byte 0x60, 0x5a, 0x4c, 0x00, 0x6c, 0x0b, 0x00, 0x00

; FUNCTION 0x00503930, declared_size=632, range_size=632, mode=arm
; class-group: Structs::v2QuestGatherLoot
; alias: _ZN7Structs17v2QuestGatherLoot4readEP11IStreamBase
; demangled: Structs::v2QuestGatherLoot::read(IStreamBase*)
; decoder-mode: arm
00503930  70 40 2d e9                                      push {r4, r5, r6, lr}
00503934  00 40 a0 e1                                      mov r4, r0
00503938  08 d0 4d e2                                      sub sp, sp, #8
0050393c  01 50 a0 e1                                      mov r5, r1
00503940  11 ff ff eb                                      bl #0x50358c
00503944  05 00 a0 e1                                      mov r0, r5
00503948  10 10 84 e2                                      add r1, r4, #0x10
0050394c  13 6e fb eb                                      bl #0x3df1a0
00503950  01 30 a0 e3                                      mov r3, #1
00503954  00 00 53 e3                                      cmp r3, #0
00503958  04 30 8d e5                                      str r3, [sp, #4]
0050395c  0f 00 00 1a                                      bne #0x5039a0
00503960  11 30 84 e2                                      add r3, r4, #0x11
00503964  12 20 84 e2                                      add r2, r4, #0x12
00503968  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050396c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503970  03 00 52 e1                                      cmp r2, r3
00503974  01 10 20 e0                                      eor r1, r0, r1
00503978  01 10 43 e5                                      strb r1, [r3, #-1]
0050397c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503980  00 10 21 e0                                      eor r1, r1, r0
00503984  01 10 c2 e5                                      strb r1, [r2, #1]
00503988  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050398c  01 20 42 e2                                      sub r2, r2, #1
00503990  00 10 21 e0                                      eor r1, r1, r0
00503994  01 10 43 e5                                      strb r1, [r3, #-1]
00503998  01 30 83 e2                                      add r3, r3, #1
0050399c  f1 ff ff 8a                                      bhi #0x503968
005039a0  14 00 94 e5                                      ldr r0, [r4, #0x14]
005039a4  00 00 50 e3                                      cmp r0, #0
005039a8  00 00 00 0a                                      beq #0x5039b0
005039ac  a3 32 f8 eb                                      bl #0x310440
005039b0  10 00 94 e5                                      ldr r0, [r4, #0x10]
005039b4  01 10 a0 e3                                      mov r1, #1
005039b8  00 60 a0 e3                                      mov r6, #0
005039bc  01 00 80 e0                                      add r0, r0, r1
005039c0  e9 32 f8 eb                                      bl #0x31056c
005039c4  10 20 94 e5                                      ldr r2, [r4, #0x10]
005039c8  00 10 a0 e1                                      mov r1, r0
005039cc  14 00 84 e5                                      str r0, [r4, #0x14]
005039d0  06 30 a0 e1                                      mov r3, r6
005039d4  05 00 a0 e1                                      mov r0, r5
005039d8  9d 4e f8 eb                                      bl #0x317454
005039dc  10 30 94 e5                                      ldr r3, [r4, #0x10]
005039e0  14 20 94 e5                                      ldr r2, [r4, #0x14]
005039e4  05 00 a0 e1                                      mov r0, r5
005039e8  18 10 84 e2                                      add r1, r4, #0x18
005039ec  03 60 c2 e7                                      strb r6, [r2, r3]
005039f0  ea 6d fb eb                                      bl #0x3df1a0
005039f4  01 30 a0 e3                                      mov r3, #1
005039f8  06 00 53 e1                                      cmp r3, r6
005039fc  04 30 8d e5                                      str r3, [sp, #4]
00503a00  0f 00 00 1a                                      bne #0x503a44
00503a04  19 30 84 e2                                      add r3, r4, #0x19
00503a08  1a 20 84 e2                                      add r2, r4, #0x1a
00503a0c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503a10  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503a14  03 00 52 e1                                      cmp r2, r3
00503a18  01 10 20 e0                                      eor r1, r0, r1
00503a1c  01 10 43 e5                                      strb r1, [r3, #-1]
00503a20  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503a24  00 10 21 e0                                      eor r1, r1, r0
00503a28  01 10 c2 e5                                      strb r1, [r2, #1]
00503a2c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503a30  01 20 42 e2                                      sub r2, r2, #1
00503a34  00 10 21 e0                                      eor r1, r1, r0
00503a38  01 10 43 e5                                      strb r1, [r3, #-1]
00503a3c  01 30 83 e2                                      add r3, r3, #1
00503a40  f1 ff ff 8a                                      bhi #0x503a0c
00503a44  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00503a48  00 00 50 e3                                      cmp r0, #0
00503a4c  00 00 00 0a                                      beq #0x503a54
00503a50  7a 32 f8 eb                                      bl #0x310440
00503a54  18 00 94 e5                                      ldr r0, [r4, #0x18]
00503a58  01 10 a0 e3                                      mov r1, #1
00503a5c  00 60 a0 e3                                      mov r6, #0
00503a60  01 00 80 e0                                      add r0, r0, r1
00503a64  c0 32 f8 eb                                      bl #0x31056c
00503a68  18 20 94 e5                                      ldr r2, [r4, #0x18]
00503a6c  00 10 a0 e1                                      mov r1, r0
00503a70  1c 00 84 e5                                      str r0, [r4, #0x1c]
00503a74  06 30 a0 e1                                      mov r3, r6
00503a78  05 00 a0 e1                                      mov r0, r5
00503a7c  74 4e f8 eb                                      bl #0x317454
00503a80  18 30 94 e5                                      ldr r3, [r4, #0x18]
00503a84  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00503a88  05 00 a0 e1                                      mov r0, r5
00503a8c  20 10 84 e2                                      add r1, r4, #0x20
00503a90  03 60 c2 e7                                      strb r6, [r2, r3]
00503a94  7d 55 fd eb                                      bl #0x459090
00503a98  01 30 a0 e3                                      mov r3, #1
00503a9c  06 00 53 e1                                      cmp r3, r6
00503aa0  04 30 8d e5                                      str r3, [sp, #4]
00503aa4  0f 00 00 1a                                      bne #0x503ae8
00503aa8  21 30 84 e2                                      add r3, r4, #0x21
00503aac  22 20 84 e2                                      add r2, r4, #0x22
00503ab0  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503ab4  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503ab8  03 00 52 e1                                      cmp r2, r3
00503abc  01 10 20 e0                                      eor r1, r0, r1
00503ac0  01 10 43 e5                                      strb r1, [r3, #-1]
00503ac4  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503ac8  00 10 21 e0                                      eor r1, r1, r0
00503acc  01 10 c2 e5                                      strb r1, [r2, #1]
00503ad0  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503ad4  01 20 42 e2                                      sub r2, r2, #1
00503ad8  00 10 21 e0                                      eor r1, r1, r0
00503adc  01 10 43 e5                                      strb r1, [r3, #-1]
00503ae0  01 30 83 e2                                      add r3, r3, #1
00503ae4  f1 ff ff 8a                                      bhi #0x503ab0
00503ae8  05 00 a0 e1                                      mov r0, r5
00503aec  24 10 84 e2                                      add r1, r4, #0x24
00503af0  66 55 fd eb                                      bl #0x459090
00503af4  01 30 a0 e3                                      mov r3, #1
00503af8  00 00 53 e3                                      cmp r3, #0
00503afc  04 30 8d e5                                      str r3, [sp, #4]
00503b00  0f 00 00 1a                                      bne #0x503b44
00503b04  25 30 84 e2                                      add r3, r4, #0x25
00503b08  26 20 84 e2                                      add r2, r4, #0x26
00503b0c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503b10  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503b14  03 00 52 e1                                      cmp r2, r3
00503b18  01 10 20 e0                                      eor r1, r0, r1
00503b1c  01 10 43 e5                                      strb r1, [r3, #-1]
00503b20  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503b24  00 10 21 e0                                      eor r1, r1, r0
00503b28  01 10 c2 e5                                      strb r1, [r2, #1]
00503b2c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503b30  01 20 42 e2                                      sub r2, r2, #1
00503b34  00 10 21 e0                                      eor r1, r1, r0
00503b38  01 10 43 e5                                      strb r1, [r3, #-1]
00503b3c  01 30 83 e2                                      add r3, r3, #1
00503b40  f1 ff ff 8a                                      bhi #0x503b0c
00503b44  05 00 a0 e1                                      mov r0, r5
00503b48  28 10 84 e2                                      add r1, r4, #0x28
00503b4c  4f 55 fd eb                                      bl #0x459090
00503b50  01 30 a0 e3                                      mov r3, #1
00503b54  00 00 53 e3                                      cmp r3, #0
00503b58  04 30 8d e5                                      str r3, [sp, #4]
00503b5c  0f 00 00 1a                                      bne #0x503ba0
00503b60  2a 30 84 e2                                      add r3, r4, #0x2a
00503b64  29 40 84 e2                                      add r4, r4, #0x29
00503b68  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503b6c  01 20 54 e5                                      ldrb r2, [r4, #-1]
00503b70  04 00 53 e1                                      cmp r3, r4
00503b74  02 20 21 e0                                      eor r2, r1, r2
00503b78  01 20 44 e5                                      strb r2, [r4, #-1]
00503b7c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503b80  01 20 22 e0                                      eor r2, r2, r1
00503b84  01 20 c3 e5                                      strb r2, [r3, #1]
00503b88  01 10 54 e5                                      ldrb r1, [r4, #-1]
00503b8c  01 30 43 e2                                      sub r3, r3, #1
00503b90  01 20 22 e0                                      eor r2, r2, r1
00503b94  01 20 44 e5                                      strb r2, [r4, #-1]
00503b98  01 40 84 e2                                      add r4, r4, #1
00503b9c  f1 ff ff 8a                                      bhi #0x503b68
00503ba0  08 d0 8d e2                                      add sp, sp, #8
00503ba4  70 80 bd e8                                      pop {r4, r5, r6, pc}
