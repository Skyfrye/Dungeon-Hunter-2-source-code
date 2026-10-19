; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008061bc, declared_size=128, range_size=128, mode=arm
; class-group: CMatchingLocal::RoomInfoNetStruct
; alias: _ZN14CMatchingLocal17RoomInfoNetStructD1Ev
; demangled: CMatchingLocal::RoomInfoNetStruct::~RoomInfoNetStruct()
; decoder-mode: arm
008061bc  70 40 2d e9                                      push {r4, r5, r6, lr}
008061c0  68 30 9f e5                                      ldr r3, [pc, #0x68]
008061c4  68 20 9f e5                                      ldr r2, [pc, #0x68]
008061c8  68 10 9f e5                                      ldr r1, [pc, #0x68]
008061cc  03 30 8f e0                                      add r3, pc, r3
008061d0  00 40 a0 e1                                      mov r4, r0
008061d4  01 10 93 e7                                      ldr r1, [r3, r1]
008061d8  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
008061dc  02 20 93 e7                                      ldr r2, [r3, r2]
008061e0  08 10 81 e2                                      add r1, r1, #8
008061e4  00 00 50 e3                                      cmp r0, #0
008061e8  08 20 82 e2                                      add r2, r2, #8
008061ec  30 21 84 e5                                      str r2, [r4, #0x130]
008061f0  00 10 84 e5                                      str r1, [r4]
008061f4  98 21 84 e5                                      str r2, [r4, #0x198]
008061f8  70 21 84 e5                                      str r2, [r4, #0x170]
008061fc  50 21 84 e5                                      str r2, [r4, #0x150]
00806200  08 00 00 0a                                      beq #0x806228
00806204  43 5f 84 e2                                      add r5, r4, #0x10c
00806208  05 00 a0 e1                                      mov r0, r5
0080620c  10 11 94 e5                                      ldr r1, [r4, #0x110]
00806210  6e ab ed eb                                      bl #0x370fd0
00806214  00 30 a0 e3                                      mov r3, #0
00806218  18 51 84 e5                                      str r5, [r4, #0x118]
0080621c  1c 31 84 e5                                      str r3, [r4, #0x11c]
00806220  14 51 84 e5                                      str r5, [r4, #0x114]
00806224  10 31 84 e5                                      str r3, [r4, #0x110]
00806228  04 00 a0 e1                                      mov r0, r4
0080622c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00806230  c4 e8 18 00 a8 10 00 00 c4 43 00 00              .byte 0xc4, 0xe8, 0x18, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x0080623c, declared_size=28, range_size=28, mode=arm
; class-group: CMatchingLocal::RoomInfoNetStruct
; alias: _ZN14CMatchingLocal17RoomInfoNetStructD0Ev
; demangled: CMatchingLocal::RoomInfoNetStruct::~RoomInfoNetStruct()
; decoder-mode: arm
0080623c  10 40 2d e9                                      push {r4, lr}
00806240  00 40 a0 e1                                      mov r4, r0
00806244  dc ff ff eb                                      bl #0x8061bc
00806248  04 00 a0 e1                                      mov r0, r4
0080624c  7b 28 ec eb                                      bl #0x310440
00806250  04 00 a0 e1                                      mov r0, r4
00806254  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00806964, declared_size=564, range_size=564, mode=arm
; class-group: CMatchingLocal::RoomInfoNetStruct
; alias: _ZN14CMatchingLocal17RoomInfoNetStructC1Ev
; demangled: CMatchingLocal::RoomInfoNetStruct::RoomInfoNetStruct()
; decoder-mode: arm
00806964  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00806968  10 82 9f e5                                      ldr r8, [pc, #0x210]
0080696c  0c d0 4d e2                                      sub sp, sp, #0xc
00806970  00 40 a0 e1                                      mov r4, r0
00806974  de 33 00 eb                                      bl #0x8138f4
00806978  04 32 9f e5                                      ldr r3, [pc, #0x204]
0080697c  04 52 9f e5                                      ldr r5, [pc, #0x204]
00806980  08 80 8f e0                                      add r8, pc, r8
00806984  03 30 98 e7                                      ldr r3, [r8, r3]
00806988  4d 21 d4 e5                                      ldrb r2, [r4, #0x14d]
0080698c  05 00 98 e7                                      ldr r0, [r8, r5]
00806990  08 30 83 e2                                      add r3, r3, #8
00806994  00 60 a0 e3                                      mov r6, #0
00806998  00 70 a0 e3                                      mov r7, #0
0080699c  4e cf a0 e3                                      mov ip, #0x138
008069a0  fc 60 84 e1                                      strd r6, r7, [r4, ip]
008069a4  00 00 52 e3                                      cmp r2, #0
008069a8  00 10 e0 e3                                      mvn r1, #0
008069ac  00 20 a0 e3                                      mov r2, #0
008069b0  08 00 80 e2                                      add r0, r0, #8
008069b4  00 30 84 e5                                      str r3, [r4]
008069b8  01 30 a0 e3                                      mov r3, #1
008069bc  34 31 84 e5                                      str r3, [r4, #0x134]
008069c0  44 11 84 e5                                      str r1, [r4, #0x144]
008069c4  30 01 84 e5                                      str r0, [r4, #0x130]
008069c8  40 11 84 e5                                      str r1, [r4, #0x140]
008069cc  48 21 84 e5                                      str r2, [r4, #0x148]
008069d0  4c 21 c4 e5                                      strb r2, [r4, #0x14c]
008069d4  13 9e 84 02                                      addeq sb, r4, #0x130
008069d8  03 00 00 0a                                      beq #0x8069ec
008069dc  13 9e 84 e2                                      add sb, r4, #0x130
008069e0  4d 21 c4 e5                                      strb r2, [r4, #0x14d]
008069e4  09 00 a0 e1                                      mov r0, sb
008069e8  65 39 00 eb                                      bl #0x814f84
008069ec  98 61 9f e5                                      ldr r6, [pc, #0x198]
008069f0  6d 31 d4 e5                                      ldrb r3, [r4, #0x16d]
008069f4  05 10 98 e7                                      ldr r1, [r8, r5]
008069f8  06 00 98 e7                                      ldr r0, [r8, r6]
008069fc  00 a0 a0 e3                                      mov sl, #0
00806a00  00 b0 a0 e3                                      mov fp, #0
00806a04  08 00 80 e2                                      add r0, r0, #8
00806a08  56 cf a0 e3                                      mov ip, #0x158
00806a0c  fc a0 84 e1                                      strd sl, fp, [r4, ip]
00806a10  00 00 53 e3                                      cmp r3, #0
00806a14  00 20 e0 e3                                      mvn r2, #0
00806a18  00 30 a0 e3                                      mov r3, #0
00806a1c  08 10 81 e2                                      add r1, r1, #8
00806a20  30 01 84 e5                                      str r0, [r4, #0x130]
00806a24  01 00 a0 e3                                      mov r0, #1
00806a28  54 01 84 e5                                      str r0, [r4, #0x154]
00806a2c  64 21 84 e5                                      str r2, [r4, #0x164]
00806a30  50 11 84 e5                                      str r1, [r4, #0x150]
00806a34  60 21 84 e5                                      str r2, [r4, #0x160]
00806a38  68 31 84 e5                                      str r3, [r4, #0x168]
00806a3c  6c 31 c4 e5                                      strb r3, [r4, #0x16c]
00806a40  15 7e 84 02                                      addeq r7, r4, #0x150
00806a44  03 00 00 0a                                      beq #0x806a58
00806a48  15 7e 84 e2                                      add r7, r4, #0x150
00806a4c  6d 31 c4 e5                                      strb r3, [r4, #0x16d]
00806a50  07 00 a0 e1                                      mov r0, r7
00806a54  4a 39 00 eb                                      bl #0x814f84
00806a58  30 51 9f e5                                      ldr r5, [pc, #0x130]
00806a5c  06 00 98 e7                                      ldr r0, [r8, r6]
00806a60  90 31 94 e5                                      ldr r3, [r4, #0x190]
00806a64  05 10 98 e7                                      ldr r1, [r8, r5]
00806a68  08 00 80 e2                                      add r0, r0, #8
00806a6c  00 a0 a0 e3                                      mov sl, #0
00806a70  00 b0 a0 e3                                      mov fp, #0
00806a74  5e cf a0 e3                                      mov ip, #0x178
00806a78  fc a0 84 e1                                      strd sl, fp, [r4, ip]
00806a7c  00 00 53 e3                                      cmp r3, #0
00806a80  00 20 e0 e3                                      mvn r2, #0
00806a84  00 30 a0 e3                                      mov r3, #0
00806a88  08 10 81 e2                                      add r1, r1, #8
00806a8c  50 01 84 e5                                      str r0, [r4, #0x150]
00806a90  20 00 a0 e3                                      mov r0, #0x20
00806a94  74 01 84 e5                                      str r0, [r4, #0x174]
00806a98  84 21 84 e5                                      str r2, [r4, #0x184]
00806a9c  70 11 84 e5                                      str r1, [r4, #0x170]
00806aa0  80 21 84 e5                                      str r2, [r4, #0x180]
00806aa4  88 31 84 e5                                      str r3, [r4, #0x188]
00806aa8  8c 31 c4 e5                                      strb r3, [r4, #0x18c]
00806aac  17 6e 84 02                                      addeq r6, r4, #0x170
00806ab0  03 00 00 0a                                      beq #0x806ac4
00806ab4  17 6e 84 e2                                      add r6, r4, #0x170
00806ab8  90 31 84 e5                                      str r3, [r4, #0x190]
00806abc  06 00 a0 e1                                      mov r0, r6
00806ac0  2f 39 00 eb                                      bl #0x814f84
00806ac4  c8 20 9f e5                                      ldr r2, [pc, #0xc8]
00806ac8  05 10 98 e7                                      ldr r1, [r8, r5]
00806acc  1a ce a0 e3                                      mov ip, #0x1a0
00806ad0  04 20 8d e5                                      str r2, [sp, #4]
00806ad4  02 00 98 e7                                      ldr r0, [r8, r2]
00806ad8  b8 31 94 e5                                      ldr r3, [r4, #0x1b8]
00806adc  00 a0 a0 e3                                      mov sl, #0
00806ae0  08 00 80 e2                                      add r0, r0, #8
00806ae4  00 b0 a0 e3                                      mov fp, #0
00806ae8  fc a0 84 e1                                      strd sl, fp, [r4, ip]
00806aec  00 00 53 e3                                      cmp r3, #0
00806af0  00 20 e0 e3                                      mvn r2, #0
00806af4  00 30 a0 e3                                      mov r3, #0
00806af8  08 10 81 e2                                      add r1, r1, #8
00806afc  70 01 84 e5                                      str r0, [r4, #0x170]
00806b00  20 00 a0 e3                                      mov r0, #0x20
00806b04  9c 01 84 e5                                      str r0, [r4, #0x19c]
00806b08  ac 21 84 e5                                      str r2, [r4, #0x1ac]
00806b0c  98 11 84 e5                                      str r1, [r4, #0x198]
00806b10  a8 21 84 e5                                      str r2, [r4, #0x1a8]
00806b14  b0 31 84 e5                                      str r3, [r4, #0x1b0]
00806b18  b4 31 c4 e5                                      strb r3, [r4, #0x1b4]
00806b1c  66 5f 84 02                                      addeq r5, r4, #0x198
00806b20  03 00 00 0a                                      beq #0x806b34
00806b24  66 5f 84 e2                                      add r5, r4, #0x198
00806b28  b8 31 84 e5                                      str r3, [r4, #0x1b8]
00806b2c  05 00 a0 e1                                      mov r0, r5
00806b30  13 39 00 eb                                      bl #0x814f84
00806b34  04 b0 9d e5                                      ldr fp, [sp, #4]
00806b38  09 10 a0 e1                                      mov r1, sb
00806b3c  04 00 a0 e1                                      mov r0, r4
00806b40  0b 30 98 e7                                      ldr r3, [r8, fp]
00806b44  08 30 83 e2                                      add r3, r3, #8
00806b48  98 31 84 e5                                      str r3, [r4, #0x198]
00806b4c  be 31 00 eb                                      bl #0x81324c
00806b50  04 00 a0 e1                                      mov r0, r4
00806b54  07 10 a0 e1                                      mov r1, r7
00806b58  bb 31 00 eb                                      bl #0x81324c
00806b5c  04 00 a0 e1                                      mov r0, r4
00806b60  06 10 a0 e1                                      mov r1, r6
00806b64  b8 31 00 eb                                      bl #0x81324c
00806b68  04 00 a0 e1                                      mov r0, r4
00806b6c  05 10 a0 e1                                      mov r1, r5
00806b70  b5 31 00 eb                                      bl #0x81324c
00806b74  04 00 a0 e1                                      mov r0, r4
00806b78  0c d0 8d e2                                      add sp, sp, #0xc
00806b7c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00806b80  10 e1 18 00 c0 3b 00 00 18 30 00 00 c8 0a 00 00  .byte 0x10, 0xe1, 0x18, 0x00, 0xc0, 0x3b, 0x00, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00
00806b90  84 29 00 00 c8 10 00 00                          .byte 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
