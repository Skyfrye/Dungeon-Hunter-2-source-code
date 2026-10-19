; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1a78, declared_size=48, range_size=48, mode=arm
; class-group: Structs::SetStatic
; alias: _ZN7Structs9SetStatic8finalizeEv
; demangled: Structs::SetStatic::finalize()
; decoder-mode: arm
004d1a78  10 40 2d e9                                      push {r4, lr}
004d1a7c  00 40 a0 e1                                      mov r4, r0
004d1a80  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d1a84  00 00 50 e3                                      cmp r0, #0
004d1a88  03 00 00 0a                                      beq #0x4d1a9c
004d1a8c  6b fa f8 eb                                      bl #0x310440
004d1a90  00 30 a0 e3                                      mov r3, #0
004d1a94  0c 30 84 e5                                      str r3, [r4, #0xc]
004d1a98  10 30 84 e5                                      str r3, [r4, #0x10]
004d1a9c  04 00 a0 e1                                      mov r0, r4
004d1aa0  10 40 bd e8                                      pop {r4, lr}
004d1aa4  6f d4 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d1aa8, declared_size=72, range_size=72, mode=arm
; class-group: Structs::SetStatic
; alias: _ZN7Structs9SetStaticD1Ev
; demangled: Structs::SetStatic::~SetStatic()
; decoder-mode: arm
004d1aa8  10 40 2d e9                                      push {r4, lr}
004d1aac  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1ab0  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1ab4  00 40 a0 e1                                      mov r4, r0
004d1ab8  03 30 8f e0                                      add r3, pc, r3
004d1abc  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d1ac0  02 20 93 e7                                      ldr r2, [r3, r2]
004d1ac4  00 00 50 e3                                      cmp r0, #0
004d1ac8  08 20 82 e2                                      add r2, r2, #8
004d1acc  00 20 84 e5                                      str r2, [r4]
004d1ad0  00 00 00 0a                                      beq #0x4d1ad8
004d1ad4  59 fa f8 eb                                      bl #0x310440
004d1ad8  04 00 a0 e1                                      mov r0, r4
004d1adc  5f d4 ff eb                                      bl #0x4c6c60
004d1ae0  04 00 a0 e1                                      mov r0, r4
004d1ae4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1ae8  d8 2f 4c 00 60 3c 00 00                          .byte 0xd8, 0x2f, 0x4c, 0x00, 0x60, 0x3c, 0x00, 0x00

; FUNCTION 0x004d1af0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SetStatic
; alias: _ZN7Structs9SetStaticD0Ev
; demangled: Structs::SetStatic::~SetStatic()
; decoder-mode: arm
004d1af0  10 40 2d e9                                      push {r4, lr}
004d1af4  00 40 a0 e1                                      mov r4, r0
004d1af8  ea ff ff eb                                      bl #0x4d1aa8
004d1afc  04 00 a0 e1                                      mov r0, r4
004d1b00  4e fa f8 eb                                      bl #0x310440
004d1b04  04 00 a0 e1                                      mov r0, r4
004d1b08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1b0c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::SetStatic
; alias: _ZN7Structs9SetStaticD2Ev
; demangled: Structs::SetStatic::~SetStatic()
; decoder-mode: arm
004d1b0c  10 40 2d e9                                      push {r4, lr}
004d1b10  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1b14  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1b18  00 40 a0 e1                                      mov r4, r0
004d1b1c  03 30 8f e0                                      add r3, pc, r3
004d1b20  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d1b24  02 20 93 e7                                      ldr r2, [r3, r2]
004d1b28  00 00 50 e3                                      cmp r0, #0
004d1b2c  08 20 82 e2                                      add r2, r2, #8
004d1b30  00 20 84 e5                                      str r2, [r4]
004d1b34  00 00 00 0a                                      beq #0x4d1b3c
004d1b38  40 fa f8 eb                                      bl #0x310440
004d1b3c  04 00 a0 e1                                      mov r0, r4
004d1b40  46 d4 ff eb                                      bl #0x4c6c60
004d1b44  04 00 a0 e1                                      mov r0, r4
004d1b48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1b4c  74 2f 4c 00 60 3c 00 00                          .byte 0x74, 0x2f, 0x4c, 0x00, 0x60, 0x3c, 0x00, 0x00

; FUNCTION 0x00500788, declared_size=204, range_size=204, mode=arm
; class-group: Structs::SetStatic
; alias: _ZN7Structs9SetStatic4readEP11IStreamBase
; demangled: Structs::SetStatic::read(IStreamBase*)
; decoder-mode: arm
00500788  70 40 2d e9                                      push {r4, r5, r6, lr}
0050078c  00 40 a0 e1                                      mov r4, r0
00500790  08 d0 4d e2                                      sub sp, sp, #8
00500794  01 60 a0 e1                                      mov r6, r1
00500798  22 fc ff eb                                      bl #0x4ff828
0050079c  06 00 a0 e1                                      mov r0, r6
005007a0  08 10 84 e2                                      add r1, r4, #8
005007a4  3c 6c ff eb                                      bl #0x4db89c
005007a8  06 00 a0 e1                                      mov r0, r6
005007ac  0c 10 84 e2                                      add r1, r4, #0xc
005007b0  7a 7a fb eb                                      bl #0x3df1a0
005007b4  01 30 a0 e3                                      mov r3, #1
005007b8  00 00 53 e3                                      cmp r3, #0
005007bc  04 30 8d e5                                      str r3, [sp, #4]
005007c0  0f 00 00 1a                                      bne #0x500804
005007c4  0d 30 84 e2                                      add r3, r4, #0xd
005007c8  0e 20 84 e2                                      add r2, r4, #0xe
005007cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
005007d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005007d4  03 00 52 e1                                      cmp r2, r3
005007d8  01 10 20 e0                                      eor r1, r0, r1
005007dc  01 10 43 e5                                      strb r1, [r3, #-1]
005007e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005007e4  00 10 21 e0                                      eor r1, r1, r0
005007e8  01 10 c2 e5                                      strb r1, [r2, #1]
005007ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
005007f0  01 20 42 e2                                      sub r2, r2, #1
005007f4  00 10 21 e0                                      eor r1, r1, r0
005007f8  01 10 43 e5                                      strb r1, [r3, #-1]
005007fc  01 30 83 e2                                      add r3, r3, #1
00500800  f1 ff ff 8a                                      bhi #0x5007cc
00500804  10 00 94 e5                                      ldr r0, [r4, #0x10]
00500808  00 00 50 e3                                      cmp r0, #0
0050080c  00 00 00 0a                                      beq #0x500814
00500810  0a 3f f8 eb                                      bl #0x310440
00500814  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00500818  01 10 a0 e3                                      mov r1, #1
0050081c  00 50 a0 e3                                      mov r5, #0
00500820  01 00 80 e0                                      add r0, r0, r1
00500824  50 3f f8 eb                                      bl #0x31056c
00500828  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050082c  00 10 a0 e1                                      mov r1, r0
00500830  10 00 84 e5                                      str r0, [r4, #0x10]
00500834  05 30 a0 e1                                      mov r3, r5
00500838  06 00 a0 e1                                      mov r0, r6
0050083c  04 5b f8 eb                                      bl #0x317454
00500840  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00500844  10 20 94 e5                                      ldr r2, [r4, #0x10]
00500848  03 50 c2 e7                                      strb r5, [r2, r3]
0050084c  08 d0 8d e2                                      add sp, sp, #8
00500850  70 80 bd e8                                      pop {r4, r5, r6, pc}
