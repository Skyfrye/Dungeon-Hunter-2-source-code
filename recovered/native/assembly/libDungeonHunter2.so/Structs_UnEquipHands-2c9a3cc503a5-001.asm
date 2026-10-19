; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1c30, declared_size=48, range_size=48, mode=arm
; class-group: Structs::UnEquipHands
; alias: _ZN7Structs12UnEquipHands8finalizeEv
; demangled: Structs::UnEquipHands::finalize()
; decoder-mode: arm
004d1c30  10 40 2d e9                                      push {r4, lr}
004d1c34  00 40 a0 e1                                      mov r4, r0
004d1c38  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1c3c  00 00 50 e3                                      cmp r0, #0
004d1c40  03 00 00 0a                                      beq #0x4d1c54
004d1c44  fd f9 f8 eb                                      bl #0x310440
004d1c48  00 30 a0 e3                                      mov r3, #0
004d1c4c  08 30 84 e5                                      str r3, [r4, #8]
004d1c50  0c 30 84 e5                                      str r3, [r4, #0xc]
004d1c54  04 00 a0 e1                                      mov r0, r4
004d1c58  10 40 bd e8                                      pop {r4, lr}
004d1c5c  01 d4 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d1c60, declared_size=72, range_size=72, mode=arm
; class-group: Structs::UnEquipHands
; alias: _ZN7Structs12UnEquipHandsD1Ev
; demangled: Structs::UnEquipHands::~UnEquipHands()
; decoder-mode: arm
004d1c60  10 40 2d e9                                      push {r4, lr}
004d1c64  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1c68  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1c6c  00 40 a0 e1                                      mov r4, r0
004d1c70  03 30 8f e0                                      add r3, pc, r3
004d1c74  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1c78  02 20 93 e7                                      ldr r2, [r3, r2]
004d1c7c  00 00 50 e3                                      cmp r0, #0
004d1c80  08 20 82 e2                                      add r2, r2, #8
004d1c84  00 20 84 e5                                      str r2, [r4]
004d1c88  00 00 00 0a                                      beq #0x4d1c90
004d1c8c  eb f9 f8 eb                                      bl #0x310440
004d1c90  04 00 a0 e1                                      mov r0, r4
004d1c94  f1 d3 ff eb                                      bl #0x4c6c60
004d1c98  04 00 a0 e1                                      mov r0, r4
004d1c9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1ca0  20 2e 4c 00 20 16 00 00                          .byte 0x20, 0x2e, 0x4c, 0x00, 0x20, 0x16, 0x00, 0x00

; FUNCTION 0x004d1ca8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::UnEquipHands
; alias: _ZN7Structs12UnEquipHandsD0Ev
; demangled: Structs::UnEquipHands::~UnEquipHands()
; decoder-mode: arm
004d1ca8  10 40 2d e9                                      push {r4, lr}
004d1cac  00 40 a0 e1                                      mov r4, r0
004d1cb0  ea ff ff eb                                      bl #0x4d1c60
004d1cb4  04 00 a0 e1                                      mov r0, r4
004d1cb8  e0 f9 f8 eb                                      bl #0x310440
004d1cbc  04 00 a0 e1                                      mov r0, r4
004d1cc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1cc4, declared_size=72, range_size=72, mode=arm
; class-group: Structs::UnEquipHands
; alias: _ZN7Structs12UnEquipHandsD2Ev
; demangled: Structs::UnEquipHands::~UnEquipHands()
; decoder-mode: arm
004d1cc4  10 40 2d e9                                      push {r4, lr}
004d1cc8  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1ccc  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1cd0  00 40 a0 e1                                      mov r4, r0
004d1cd4  03 30 8f e0                                      add r3, pc, r3
004d1cd8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1cdc  02 20 93 e7                                      ldr r2, [r3, r2]
004d1ce0  00 00 50 e3                                      cmp r0, #0
004d1ce4  08 20 82 e2                                      add r2, r2, #8
004d1ce8  00 20 84 e5                                      str r2, [r4]
004d1cec  00 00 00 0a                                      beq #0x4d1cf4
004d1cf0  d2 f9 f8 eb                                      bl #0x310440
004d1cf4  04 00 a0 e1                                      mov r0, r4
004d1cf8  d8 d3 ff eb                                      bl #0x4c6c60
004d1cfc  04 00 a0 e1                                      mov r0, r4
004d1d00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1d04  bc 2d 4c 00 20 16 00 00                          .byte 0xbc, 0x2d, 0x4c, 0x00, 0x20, 0x16, 0x00, 0x00

; FUNCTION 0x00500914, declared_size=192, range_size=192, mode=arm
; class-group: Structs::UnEquipHands
; alias: _ZN7Structs12UnEquipHands4readEP11IStreamBase
; demangled: Structs::UnEquipHands::read(IStreamBase*)
; decoder-mode: arm
00500914  70 40 2d e9                                      push {r4, r5, r6, lr}
00500918  00 40 a0 e1                                      mov r4, r0
0050091c  08 d0 4d e2                                      sub sp, sp, #8
00500920  01 60 a0 e1                                      mov r6, r1
00500924  bf fb ff eb                                      bl #0x4ff828
00500928  06 00 a0 e1                                      mov r0, r6
0050092c  08 10 84 e2                                      add r1, r4, #8
00500930  1a 7a fb eb                                      bl #0x3df1a0
00500934  01 30 a0 e3                                      mov r3, #1
00500938  00 00 53 e3                                      cmp r3, #0
0050093c  04 30 8d e5                                      str r3, [sp, #4]
00500940  0f 00 00 1a                                      bne #0x500984
00500944  09 30 84 e2                                      add r3, r4, #9
00500948  0a 20 84 e2                                      add r2, r4, #0xa
0050094c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500950  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500954  02 00 53 e1                                      cmp r3, r2
00500958  01 10 20 e0                                      eor r1, r0, r1
0050095c  01 10 43 e5                                      strb r1, [r3, #-1]
00500960  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500964  00 10 21 e0                                      eor r1, r1, r0
00500968  01 10 c2 e5                                      strb r1, [r2, #1]
0050096c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500970  01 20 42 e2                                      sub r2, r2, #1
00500974  00 10 21 e0                                      eor r1, r1, r0
00500978  01 10 43 e5                                      strb r1, [r3, #-1]
0050097c  01 30 83 e2                                      add r3, r3, #1
00500980  f1 ff ff 3a                                      blo #0x50094c
00500984  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00500988  00 00 50 e3                                      cmp r0, #0
0050098c  00 00 00 0a                                      beq #0x500994
00500990  aa 3e f8 eb                                      bl #0x310440
00500994  08 00 94 e5                                      ldr r0, [r4, #8]
00500998  01 10 a0 e3                                      mov r1, #1
0050099c  00 50 a0 e3                                      mov r5, #0
005009a0  01 00 80 e0                                      add r0, r0, r1
005009a4  f0 3e f8 eb                                      bl #0x31056c
005009a8  08 20 94 e5                                      ldr r2, [r4, #8]
005009ac  00 10 a0 e1                                      mov r1, r0
005009b0  0c 00 84 e5                                      str r0, [r4, #0xc]
005009b4  05 30 a0 e1                                      mov r3, r5
005009b8  06 00 a0 e1                                      mov r0, r6
005009bc  a4 5a f8 eb                                      bl #0x317454
005009c0  08 30 94 e5                                      ldr r3, [r4, #8]
005009c4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005009c8  03 50 c2 e7                                      strb r5, [r2, r3]
005009cc  08 d0 8d e2                                      add sp, sp, #8
005009d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
