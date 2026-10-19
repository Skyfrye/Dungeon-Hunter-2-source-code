; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1de8, declared_size=48, range_size=48, mode=arm
; class-group: Structs::AutoEquip
; alias: _ZN7Structs9AutoEquip8finalizeEv
; demangled: Structs::AutoEquip::finalize()
; decoder-mode: arm
004d1de8  10 40 2d e9                                      push {r4, lr}
004d1dec  00 40 a0 e1                                      mov r4, r0
004d1df0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1df4  00 00 50 e3                                      cmp r0, #0
004d1df8  03 00 00 0a                                      beq #0x4d1e0c
004d1dfc  8f f9 f8 eb                                      bl #0x310440
004d1e00  00 30 a0 e3                                      mov r3, #0
004d1e04  08 30 84 e5                                      str r3, [r4, #8]
004d1e08  0c 30 84 e5                                      str r3, [r4, #0xc]
004d1e0c  04 00 a0 e1                                      mov r0, r4
004d1e10  10 40 bd e8                                      pop {r4, lr}
004d1e14  93 d3 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d1e18, declared_size=72, range_size=72, mode=arm
; class-group: Structs::AutoEquip
; alias: _ZN7Structs9AutoEquipD1Ev
; demangled: Structs::AutoEquip::~AutoEquip()
; decoder-mode: arm
004d1e18  10 40 2d e9                                      push {r4, lr}
004d1e1c  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1e20  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1e24  00 40 a0 e1                                      mov r4, r0
004d1e28  03 30 8f e0                                      add r3, pc, r3
004d1e2c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1e30  02 20 93 e7                                      ldr r2, [r3, r2]
004d1e34  00 00 50 e3                                      cmp r0, #0
004d1e38  08 20 82 e2                                      add r2, r2, #8
004d1e3c  00 20 84 e5                                      str r2, [r4]
004d1e40  00 00 00 0a                                      beq #0x4d1e48
004d1e44  7d f9 f8 eb                                      bl #0x310440
004d1e48  04 00 a0 e1                                      mov r0, r4
004d1e4c  83 d3 ff eb                                      bl #0x4c6c60
004d1e50  04 00 a0 e1                                      mov r0, r4
004d1e54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1e58  68 2c 4c 00 84 12 00 00                          .byte 0x68, 0x2c, 0x4c, 0x00, 0x84, 0x12, 0x00, 0x00

; FUNCTION 0x004d1e60, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AutoEquip
; alias: _ZN7Structs9AutoEquipD0Ev
; demangled: Structs::AutoEquip::~AutoEquip()
; decoder-mode: arm
004d1e60  10 40 2d e9                                      push {r4, lr}
004d1e64  00 40 a0 e1                                      mov r4, r0
004d1e68  ea ff ff eb                                      bl #0x4d1e18
004d1e6c  04 00 a0 e1                                      mov r0, r4
004d1e70  72 f9 f8 eb                                      bl #0x310440
004d1e74  04 00 a0 e1                                      mov r0, r4
004d1e78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1e7c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::AutoEquip
; alias: _ZN7Structs9AutoEquipD2Ev
; demangled: Structs::AutoEquip::~AutoEquip()
; decoder-mode: arm
004d1e7c  10 40 2d e9                                      push {r4, lr}
004d1e80  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1e84  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1e88  00 40 a0 e1                                      mov r4, r0
004d1e8c  03 30 8f e0                                      add r3, pc, r3
004d1e90  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1e94  02 20 93 e7                                      ldr r2, [r3, r2]
004d1e98  00 00 50 e3                                      cmp r0, #0
004d1e9c  08 20 82 e2                                      add r2, r2, #8
004d1ea0  00 20 84 e5                                      str r2, [r4]
004d1ea4  00 00 00 0a                                      beq #0x4d1eac
004d1ea8  64 f9 f8 eb                                      bl #0x310440
004d1eac  04 00 a0 e1                                      mov r0, r4
004d1eb0  6a d3 ff eb                                      bl #0x4c6c60
004d1eb4  04 00 a0 e1                                      mov r0, r4
004d1eb8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1ebc  04 2c 4c 00 84 12 00 00                          .byte 0x04, 0x2c, 0x4c, 0x00, 0x84, 0x12, 0x00, 0x00

; FUNCTION 0x00500af0, declared_size=192, range_size=192, mode=arm
; class-group: Structs::AutoEquip
; alias: _ZN7Structs9AutoEquip4readEP11IStreamBase
; demangled: Structs::AutoEquip::read(IStreamBase*)
; decoder-mode: arm
00500af0  70 40 2d e9                                      push {r4, r5, r6, lr}
00500af4  00 40 a0 e1                                      mov r4, r0
00500af8  08 d0 4d e2                                      sub sp, sp, #8
00500afc  01 60 a0 e1                                      mov r6, r1
00500b00  48 fb ff eb                                      bl #0x4ff828
00500b04  06 00 a0 e1                                      mov r0, r6
00500b08  08 10 84 e2                                      add r1, r4, #8
00500b0c  a3 79 fb eb                                      bl #0x3df1a0
00500b10  01 30 a0 e3                                      mov r3, #1
00500b14  00 00 53 e3                                      cmp r3, #0
00500b18  04 30 8d e5                                      str r3, [sp, #4]
00500b1c  0f 00 00 1a                                      bne #0x500b60
00500b20  09 30 84 e2                                      add r3, r4, #9
00500b24  0a 20 84 e2                                      add r2, r4, #0xa
00500b28  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500b2c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500b30  02 00 53 e1                                      cmp r3, r2
00500b34  01 10 20 e0                                      eor r1, r0, r1
00500b38  01 10 43 e5                                      strb r1, [r3, #-1]
00500b3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500b40  00 10 21 e0                                      eor r1, r1, r0
00500b44  01 10 c2 e5                                      strb r1, [r2, #1]
00500b48  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500b4c  01 20 42 e2                                      sub r2, r2, #1
00500b50  00 10 21 e0                                      eor r1, r1, r0
00500b54  01 10 43 e5                                      strb r1, [r3, #-1]
00500b58  01 30 83 e2                                      add r3, r3, #1
00500b5c  f1 ff ff 3a                                      blo #0x500b28
00500b60  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00500b64  00 00 50 e3                                      cmp r0, #0
00500b68  00 00 00 0a                                      beq #0x500b70
00500b6c  33 3e f8 eb                                      bl #0x310440
00500b70  08 00 94 e5                                      ldr r0, [r4, #8]
00500b74  01 10 a0 e3                                      mov r1, #1
00500b78  00 50 a0 e3                                      mov r5, #0
00500b7c  01 00 80 e0                                      add r0, r0, r1
00500b80  79 3e f8 eb                                      bl #0x31056c
00500b84  08 20 94 e5                                      ldr r2, [r4, #8]
00500b88  00 10 a0 e1                                      mov r1, r0
00500b8c  0c 00 84 e5                                      str r0, [r4, #0xc]
00500b90  05 30 a0 e1                                      mov r3, r5
00500b94  06 00 a0 e1                                      mov r0, r6
00500b98  2d 5a f8 eb                                      bl #0x317454
00500b9c  08 30 94 e5                                      ldr r3, [r4, #8]
00500ba0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00500ba4  03 50 c2 e7                                      strb r5, [r2, r3]
00500ba8  08 d0 8d e2                                      add sp, sp, #8
00500bac  70 80 bd e8                                      pop {r4, r5, r6, pc}
