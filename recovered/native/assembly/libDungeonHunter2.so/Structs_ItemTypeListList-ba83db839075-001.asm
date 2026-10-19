; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d3b7c, declared_size=40, range_size=40, mode=arm
; class-group: Structs::ItemTypeListList
; alias: _ZN7Structs16ItemTypeListList8finalizeEv
; demangled: Structs::ItemTypeListList::finalize()
; decoder-mode: arm
004d3b7c  10 40 2d e9                                      push {r4, lr}
004d3b80  00 40 a0 e1                                      mov r4, r0
004d3b84  08 00 90 e5                                      ldr r0, [r0, #8]
004d3b88  00 00 50 e3                                      cmp r0, #0
004d3b8c  03 00 00 0a                                      beq #0x4d3ba0
004d3b90  2a f2 f8 eb                                      bl #0x310440
004d3b94  00 30 a0 e3                                      mov r3, #0
004d3b98  04 30 84 e5                                      str r3, [r4, #4]
004d3b9c  08 30 84 e5                                      str r3, [r4, #8]
004d3ba0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d3ba4, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ItemTypeListList
; alias: _ZN7Structs16ItemTypeListListD1Ev
; demangled: Structs::ItemTypeListList::~ItemTypeListList()
; decoder-mode: arm
004d3ba4  10 40 2d e9                                      push {r4, lr}
004d3ba8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d3bac  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d3bb0  00 40 a0 e1                                      mov r4, r0
004d3bb4  03 30 8f e0                                      add r3, pc, r3
004d3bb8  08 00 90 e5                                      ldr r0, [r0, #8]
004d3bbc  02 20 93 e7                                      ldr r2, [r3, r2]
004d3bc0  00 00 50 e3                                      cmp r0, #0
004d3bc4  08 20 82 e2                                      add r2, r2, #8
004d3bc8  00 20 84 e5                                      str r2, [r4]
004d3bcc  00 00 00 0a                                      beq #0x4d3bd4
004d3bd0  1a f2 f8 eb                                      bl #0x310440
004d3bd4  04 00 a0 e1                                      mov r0, r4
004d3bd8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3bdc  dc 0e 4c 00 54 14 00 00                          .byte 0xdc, 0x0e, 0x4c, 0x00, 0x54, 0x14, 0x00, 0x00

; FUNCTION 0x004d3be4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemTypeListList
; alias: _ZN7Structs16ItemTypeListListD0Ev
; demangled: Structs::ItemTypeListList::~ItemTypeListList()
; decoder-mode: arm
004d3be4  10 40 2d e9                                      push {r4, lr}
004d3be8  00 40 a0 e1                                      mov r4, r0
004d3bec  ec ff ff eb                                      bl #0x4d3ba4
004d3bf0  04 00 a0 e1                                      mov r0, r4
004d3bf4  11 f2 f8 eb                                      bl #0x310440
004d3bf8  04 00 a0 e1                                      mov r0, r4
004d3bfc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d3c00, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ItemTypeListList
; alias: _ZN7Structs16ItemTypeListListD2Ev
; demangled: Structs::ItemTypeListList::~ItemTypeListList()
; decoder-mode: arm
004d3c00  10 40 2d e9                                      push {r4, lr}
004d3c04  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d3c08  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d3c0c  00 40 a0 e1                                      mov r4, r0
004d3c10  03 30 8f e0                                      add r3, pc, r3
004d3c14  08 00 90 e5                                      ldr r0, [r0, #8]
004d3c18  02 20 93 e7                                      ldr r2, [r3, r2]
004d3c1c  00 00 50 e3                                      cmp r0, #0
004d3c20  08 20 82 e2                                      add r2, r2, #8
004d3c24  00 20 84 e5                                      str r2, [r4]
004d3c28  00 00 00 0a                                      beq #0x4d3c30
004d3c2c  03 f2 f8 eb                                      bl #0x310440
004d3c30  04 00 a0 e1                                      mov r0, r4
004d3c34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3c38  80 0e 4c 00 54 14 00 00                          .byte 0x80, 0x0e, 0x4c, 0x00, 0x54, 0x14, 0x00, 0x00

; FUNCTION 0x004dd2c4, declared_size=200, range_size=200, mode=arm
; class-group: Structs::ItemTypeListList
; alias: _ZN7Structs16ItemTypeListList4readEP11IStreamBase
; demangled: Structs::ItemTypeListList::read(IStreamBase*)
; decoder-mode: arm
004dd2c4  70 40 2d e9                                      push {r4, r5, r6, lr}
004dd2c8  00 50 a0 e1                                      mov r5, r0
004dd2cc  08 d0 4d e2                                      sub sp, sp, #8
004dd2d0  01 00 a0 e1                                      mov r0, r1
004dd2d4  01 60 a0 e1                                      mov r6, r1
004dd2d8  04 10 85 e2                                      add r1, r5, #4
004dd2dc  af 07 fc eb                                      bl #0x3df1a0
004dd2e0  01 30 a0 e3                                      mov r3, #1
004dd2e4  00 00 53 e3                                      cmp r3, #0
004dd2e8  04 30 8d e5                                      str r3, [sp, #4]
004dd2ec  0f 00 00 1a                                      bne #0x4dd330
004dd2f0  05 30 85 e2                                      add r3, r5, #5
004dd2f4  06 20 85 e2                                      add r2, r5, #6
004dd2f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd2fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd300  03 00 52 e1                                      cmp r2, r3
004dd304  01 10 20 e0                                      eor r1, r0, r1
004dd308  01 10 43 e5                                      strb r1, [r3, #-1]
004dd30c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd310  00 10 21 e0                                      eor r1, r1, r0
004dd314  01 10 c2 e5                                      strb r1, [r2, #1]
004dd318  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd31c  01 20 42 e2                                      sub r2, r2, #1
004dd320  00 10 21 e0                                      eor r1, r1, r0
004dd324  01 10 43 e5                                      strb r1, [r3, #-1]
004dd328  01 30 83 e2                                      add r3, r3, #1
004dd32c  f1 ff ff 8a                                      bhi #0x4dd2f8
004dd330  08 00 95 e5                                      ldr r0, [r5, #8]
004dd334  00 00 50 e3                                      cmp r0, #0
004dd338  00 00 00 0a                                      beq #0x4dd340
004dd33c  3f cc f8 eb                                      bl #0x310440
004dd340  04 00 95 e5                                      ldr r0, [r5, #4]
004dd344  01 10 a0 e3                                      mov r1, #1
004dd348  87 cc f8 eb                                      bl #0x31056c
004dd34c  04 30 95 e5                                      ldr r3, [r5, #4]
004dd350  08 00 85 e5                                      str r0, [r5, #8]
004dd354  00 00 53 e3                                      cmp r3, #0
004dd358  09 00 00 0a                                      beq #0x4dd384
004dd35c  00 40 a0 e3                                      mov r4, #0
004dd360  00 00 00 ea                                      b #0x4dd368
004dd364  08 00 95 e5                                      ldr r0, [r5, #8]
004dd368  04 10 80 e0                                      add r1, r0, r4
004dd36c  06 00 a0 e1                                      mov r0, r6
004dd370  a1 f9 ff eb                                      bl #0x4db9fc
004dd374  04 30 95 e5                                      ldr r3, [r5, #4]
004dd378  01 40 84 e2                                      add r4, r4, #1
004dd37c  04 00 53 e1                                      cmp r3, r4
004dd380  f7 ff ff 8a                                      bhi #0x4dd364
004dd384  08 d0 8d e2                                      add sp, sp, #8
004dd388  70 80 bd e8                                      pop {r4, r5, r6, pc}
