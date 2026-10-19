; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1d0c, declared_size=48, range_size=48, mode=arm
; class-group: Structs::UnEquipItemFromSlot
; alias: _ZN7Structs19UnEquipItemFromSlot8finalizeEv
; demangled: Structs::UnEquipItemFromSlot::finalize()
; decoder-mode: arm
004d1d0c  10 40 2d e9                                      push {r4, lr}
004d1d10  00 40 a0 e1                                      mov r4, r0
004d1d14  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d1d18  00 00 50 e3                                      cmp r0, #0
004d1d1c  03 00 00 0a                                      beq #0x4d1d30
004d1d20  c6 f9 f8 eb                                      bl #0x310440
004d1d24  00 30 a0 e3                                      mov r3, #0
004d1d28  0c 30 84 e5                                      str r3, [r4, #0xc]
004d1d2c  10 30 84 e5                                      str r3, [r4, #0x10]
004d1d30  04 00 a0 e1                                      mov r0, r4
004d1d34  10 40 bd e8                                      pop {r4, lr}
004d1d38  ca d3 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d1d3c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::UnEquipItemFromSlot
; alias: _ZN7Structs19UnEquipItemFromSlotD1Ev
; demangled: Structs::UnEquipItemFromSlot::~UnEquipItemFromSlot()
; decoder-mode: arm
004d1d3c  10 40 2d e9                                      push {r4, lr}
004d1d40  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1d44  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1d48  00 40 a0 e1                                      mov r4, r0
004d1d4c  03 30 8f e0                                      add r3, pc, r3
004d1d50  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d1d54  02 20 93 e7                                      ldr r2, [r3, r2]
004d1d58  00 00 50 e3                                      cmp r0, #0
004d1d5c  08 20 82 e2                                      add r2, r2, #8
004d1d60  00 20 84 e5                                      str r2, [r4]
004d1d64  00 00 00 0a                                      beq #0x4d1d6c
004d1d68  b4 f9 f8 eb                                      bl #0x310440
004d1d6c  04 00 a0 e1                                      mov r0, r4
004d1d70  ba d3 ff eb                                      bl #0x4c6c60
004d1d74  04 00 a0 e1                                      mov r0, r4
004d1d78  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1d7c  44 2d 4c 00 b0 12 00 00                          .byte 0x44, 0x2d, 0x4c, 0x00, 0xb0, 0x12, 0x00, 0x00

; FUNCTION 0x004d1d84, declared_size=28, range_size=28, mode=arm
; class-group: Structs::UnEquipItemFromSlot
; alias: _ZN7Structs19UnEquipItemFromSlotD0Ev
; demangled: Structs::UnEquipItemFromSlot::~UnEquipItemFromSlot()
; decoder-mode: arm
004d1d84  10 40 2d e9                                      push {r4, lr}
004d1d88  00 40 a0 e1                                      mov r4, r0
004d1d8c  ea ff ff eb                                      bl #0x4d1d3c
004d1d90  04 00 a0 e1                                      mov r0, r4
004d1d94  a9 f9 f8 eb                                      bl #0x310440
004d1d98  04 00 a0 e1                                      mov r0, r4
004d1d9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1da0, declared_size=72, range_size=72, mode=arm
; class-group: Structs::UnEquipItemFromSlot
; alias: _ZN7Structs19UnEquipItemFromSlotD2Ev
; demangled: Structs::UnEquipItemFromSlot::~UnEquipItemFromSlot()
; decoder-mode: arm
004d1da0  10 40 2d e9                                      push {r4, lr}
004d1da4  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1da8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1dac  00 40 a0 e1                                      mov r4, r0
004d1db0  03 30 8f e0                                      add r3, pc, r3
004d1db4  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d1db8  02 20 93 e7                                      ldr r2, [r3, r2]
004d1dbc  00 00 50 e3                                      cmp r0, #0
004d1dc0  08 20 82 e2                                      add r2, r2, #8
004d1dc4  00 20 84 e5                                      str r2, [r4]
004d1dc8  00 00 00 0a                                      beq #0x4d1dd0
004d1dcc  9b f9 f8 eb                                      bl #0x310440
004d1dd0  04 00 a0 e1                                      mov r0, r4
004d1dd4  a1 d3 ff eb                                      bl #0x4c6c60
004d1dd8  04 00 a0 e1                                      mov r0, r4
004d1ddc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1de0  e0 2c 4c 00 b0 12 00 00                          .byte 0xe0, 0x2c, 0x4c, 0x00, 0xb0, 0x12, 0x00, 0x00

; FUNCTION 0x005009d4, declared_size=284, range_size=284, mode=arm
; class-group: Structs::UnEquipItemFromSlot
; alias: _ZN7Structs19UnEquipItemFromSlot4readEP11IStreamBase
; demangled: Structs::UnEquipItemFromSlot::read(IStreamBase*)
; decoder-mode: arm
005009d4  70 40 2d e9                                      push {r4, r5, r6, lr}
005009d8  00 40 a0 e1                                      mov r4, r0
005009dc  08 d0 4d e2                                      sub sp, sp, #8
005009e0  01 60 a0 e1                                      mov r6, r1
005009e4  8f fb ff eb                                      bl #0x4ff828
005009e8  06 00 a0 e1                                      mov r0, r6
005009ec  08 10 84 e2                                      add r1, r4, #8
005009f0  a6 61 fd eb                                      bl #0x459090
005009f4  01 30 a0 e3                                      mov r3, #1
005009f8  00 00 53 e3                                      cmp r3, #0
005009fc  04 30 8d e5                                      str r3, [sp, #4]
00500a00  0f 00 00 1a                                      bne #0x500a44
00500a04  09 30 84 e2                                      add r3, r4, #9
00500a08  0a 20 84 e2                                      add r2, r4, #0xa
00500a0c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500a10  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500a14  02 00 53 e1                                      cmp r3, r2
00500a18  01 10 20 e0                                      eor r1, r0, r1
00500a1c  01 10 43 e5                                      strb r1, [r3, #-1]
00500a20  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500a24  00 10 21 e0                                      eor r1, r1, r0
00500a28  01 10 c2 e5                                      strb r1, [r2, #1]
00500a2c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500a30  01 20 42 e2                                      sub r2, r2, #1
00500a34  00 10 21 e0                                      eor r1, r1, r0
00500a38  01 10 43 e5                                      strb r1, [r3, #-1]
00500a3c  01 30 83 e2                                      add r3, r3, #1
00500a40  f1 ff ff 3a                                      blo #0x500a0c
00500a44  06 00 a0 e1                                      mov r0, r6
00500a48  0c 10 84 e2                                      add r1, r4, #0xc
00500a4c  d3 79 fb eb                                      bl #0x3df1a0
00500a50  01 30 a0 e3                                      mov r3, #1
00500a54  00 00 53 e3                                      cmp r3, #0
00500a58  04 30 8d e5                                      str r3, [sp, #4]
00500a5c  0f 00 00 1a                                      bne #0x500aa0
00500a60  0d 30 84 e2                                      add r3, r4, #0xd
00500a64  0e 20 84 e2                                      add r2, r4, #0xe
00500a68  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500a6c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500a70  02 00 53 e1                                      cmp r3, r2
00500a74  01 10 20 e0                                      eor r1, r0, r1
00500a78  01 10 43 e5                                      strb r1, [r3, #-1]
00500a7c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500a80  00 10 21 e0                                      eor r1, r1, r0
00500a84  01 10 c2 e5                                      strb r1, [r2, #1]
00500a88  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500a8c  01 20 42 e2                                      sub r2, r2, #1
00500a90  00 10 21 e0                                      eor r1, r1, r0
00500a94  01 10 43 e5                                      strb r1, [r3, #-1]
00500a98  01 30 83 e2                                      add r3, r3, #1
00500a9c  f1 ff ff 3a                                      blo #0x500a68
00500aa0  10 00 94 e5                                      ldr r0, [r4, #0x10]
00500aa4  00 00 50 e3                                      cmp r0, #0
00500aa8  00 00 00 0a                                      beq #0x500ab0
00500aac  63 3e f8 eb                                      bl #0x310440
00500ab0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00500ab4  01 10 a0 e3                                      mov r1, #1
00500ab8  00 50 a0 e3                                      mov r5, #0
00500abc  01 00 80 e0                                      add r0, r0, r1
00500ac0  a9 3e f8 eb                                      bl #0x31056c
00500ac4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00500ac8  00 10 a0 e1                                      mov r1, r0
00500acc  10 00 84 e5                                      str r0, [r4, #0x10]
00500ad0  05 30 a0 e1                                      mov r3, r5
00500ad4  06 00 a0 e1                                      mov r0, r6
00500ad8  5d 5a f8 eb                                      bl #0x317454
00500adc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00500ae0  10 20 94 e5                                      ldr r2, [r4, #0x10]
00500ae4  03 50 c2 e7                                      strb r5, [r2, r3]
00500ae8  08 d0 8d e2                                      add sp, sp, #8
00500aec  70 80 bd e8                                      pop {r4, r5, r6, pc}
