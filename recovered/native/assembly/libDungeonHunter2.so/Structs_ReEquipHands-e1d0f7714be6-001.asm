; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1b54, declared_size=48, range_size=48, mode=arm
; class-group: Structs::ReEquipHands
; alias: _ZN7Structs12ReEquipHands8finalizeEv
; demangled: Structs::ReEquipHands::finalize()
; decoder-mode: arm
004d1b54  10 40 2d e9                                      push {r4, lr}
004d1b58  00 40 a0 e1                                      mov r4, r0
004d1b5c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1b60  00 00 50 e3                                      cmp r0, #0
004d1b64  03 00 00 0a                                      beq #0x4d1b78
004d1b68  34 fa f8 eb                                      bl #0x310440
004d1b6c  00 30 a0 e3                                      mov r3, #0
004d1b70  08 30 84 e5                                      str r3, [r4, #8]
004d1b74  0c 30 84 e5                                      str r3, [r4, #0xc]
004d1b78  04 00 a0 e1                                      mov r0, r4
004d1b7c  10 40 bd e8                                      pop {r4, lr}
004d1b80  38 d4 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d1b84, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ReEquipHands
; alias: _ZN7Structs12ReEquipHandsD1Ev
; demangled: Structs::ReEquipHands::~ReEquipHands()
; decoder-mode: arm
004d1b84  10 40 2d e9                                      push {r4, lr}
004d1b88  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1b8c  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1b90  00 40 a0 e1                                      mov r4, r0
004d1b94  03 30 8f e0                                      add r3, pc, r3
004d1b98  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1b9c  02 20 93 e7                                      ldr r2, [r3, r2]
004d1ba0  00 00 50 e3                                      cmp r0, #0
004d1ba4  08 20 82 e2                                      add r2, r2, #8
004d1ba8  00 20 84 e5                                      str r2, [r4]
004d1bac  00 00 00 0a                                      beq #0x4d1bb4
004d1bb0  22 fa f8 eb                                      bl #0x310440
004d1bb4  04 00 a0 e1                                      mov r0, r4
004d1bb8  28 d4 ff eb                                      bl #0x4c6c60
004d1bbc  04 00 a0 e1                                      mov r0, r4
004d1bc0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1bc4  fc 2e 4c 00 c4 1f 00 00                          .byte 0xfc, 0x2e, 0x4c, 0x00, 0xc4, 0x1f, 0x00, 0x00

; FUNCTION 0x004d1bcc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ReEquipHands
; alias: _ZN7Structs12ReEquipHandsD0Ev
; demangled: Structs::ReEquipHands::~ReEquipHands()
; decoder-mode: arm
004d1bcc  10 40 2d e9                                      push {r4, lr}
004d1bd0  00 40 a0 e1                                      mov r4, r0
004d1bd4  ea ff ff eb                                      bl #0x4d1b84
004d1bd8  04 00 a0 e1                                      mov r0, r4
004d1bdc  17 fa f8 eb                                      bl #0x310440
004d1be0  04 00 a0 e1                                      mov r0, r4
004d1be4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1be8, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ReEquipHands
; alias: _ZN7Structs12ReEquipHandsD2Ev
; demangled: Structs::ReEquipHands::~ReEquipHands()
; decoder-mode: arm
004d1be8  10 40 2d e9                                      push {r4, lr}
004d1bec  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1bf0  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1bf4  00 40 a0 e1                                      mov r4, r0
004d1bf8  03 30 8f e0                                      add r3, pc, r3
004d1bfc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1c00  02 20 93 e7                                      ldr r2, [r3, r2]
004d1c04  00 00 50 e3                                      cmp r0, #0
004d1c08  08 20 82 e2                                      add r2, r2, #8
004d1c0c  00 20 84 e5                                      str r2, [r4]
004d1c10  00 00 00 0a                                      beq #0x4d1c18
004d1c14  09 fa f8 eb                                      bl #0x310440
004d1c18  04 00 a0 e1                                      mov r0, r4
004d1c1c  0f d4 ff eb                                      bl #0x4c6c60
004d1c20  04 00 a0 e1                                      mov r0, r4
004d1c24  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1c28  98 2e 4c 00 c4 1f 00 00                          .byte 0x98, 0x2e, 0x4c, 0x00, 0xc4, 0x1f, 0x00, 0x00

; FUNCTION 0x00500854, declared_size=192, range_size=192, mode=arm
; class-group: Structs::ReEquipHands
; alias: _ZN7Structs12ReEquipHands4readEP11IStreamBase
; demangled: Structs::ReEquipHands::read(IStreamBase*)
; decoder-mode: arm
00500854  70 40 2d e9                                      push {r4, r5, r6, lr}
00500858  00 40 a0 e1                                      mov r4, r0
0050085c  08 d0 4d e2                                      sub sp, sp, #8
00500860  01 60 a0 e1                                      mov r6, r1
00500864  ef fb ff eb                                      bl #0x4ff828
00500868  06 00 a0 e1                                      mov r0, r6
0050086c  08 10 84 e2                                      add r1, r4, #8
00500870  4a 7a fb eb                                      bl #0x3df1a0
00500874  01 30 a0 e3                                      mov r3, #1
00500878  00 00 53 e3                                      cmp r3, #0
0050087c  04 30 8d e5                                      str r3, [sp, #4]
00500880  0f 00 00 1a                                      bne #0x5008c4
00500884  09 30 84 e2                                      add r3, r4, #9
00500888  0a 20 84 e2                                      add r2, r4, #0xa
0050088c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500890  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500894  02 00 53 e1                                      cmp r3, r2
00500898  01 10 20 e0                                      eor r1, r0, r1
0050089c  01 10 43 e5                                      strb r1, [r3, #-1]
005008a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005008a4  00 10 21 e0                                      eor r1, r1, r0
005008a8  01 10 c2 e5                                      strb r1, [r2, #1]
005008ac  01 00 53 e5                                      ldrb r0, [r3, #-1]
005008b0  01 20 42 e2                                      sub r2, r2, #1
005008b4  00 10 21 e0                                      eor r1, r1, r0
005008b8  01 10 43 e5                                      strb r1, [r3, #-1]
005008bc  01 30 83 e2                                      add r3, r3, #1
005008c0  f1 ff ff 3a                                      blo #0x50088c
005008c4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005008c8  00 00 50 e3                                      cmp r0, #0
005008cc  00 00 00 0a                                      beq #0x5008d4
005008d0  da 3e f8 eb                                      bl #0x310440
005008d4  08 00 94 e5                                      ldr r0, [r4, #8]
005008d8  01 10 a0 e3                                      mov r1, #1
005008dc  00 50 a0 e3                                      mov r5, #0
005008e0  01 00 80 e0                                      add r0, r0, r1
005008e4  20 3f f8 eb                                      bl #0x31056c
005008e8  08 20 94 e5                                      ldr r2, [r4, #8]
005008ec  00 10 a0 e1                                      mov r1, r0
005008f0  0c 00 84 e5                                      str r0, [r4, #0xc]
005008f4  05 30 a0 e1                                      mov r3, r5
005008f8  06 00 a0 e1                                      mov r0, r6
005008fc  d4 5a f8 eb                                      bl #0x317454
00500900  08 30 94 e5                                      ldr r3, [r4, #8]
00500904  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00500908  03 50 c2 e7                                      strb r5, [r2, r3]
0050090c  08 d0 8d e2                                      add sp, sp, #8
00500910  70 80 bd e8                                      pop {r4, r5, r6, pc}
