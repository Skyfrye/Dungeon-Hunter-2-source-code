; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a6a24, declared_size=1256, range_size=1256, mode=arm
; class-group: Character::NetStructCharacter
; alias: _ZN9Character18NetStructCharacterC1Ev
; demangled: Character::NetStructCharacter::NetStructCharacter()
; decoder-mode: arm
003a6a24  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003a6a28  b4 54 9f e5                                      ldr r5, [pc, #0x4b4]
003a6a2c  2c d0 4d e2                                      sub sp, sp, #0x2c
003a6a30  00 40 a0 e1                                      mov r4, r0
003a6a34  ae b3 11 eb                                      bl #0x8138f4
003a6a38  a8 34 9f e5                                      ldr r3, [pc, #0x4a8]
003a6a3c  05 50 8f e0                                      add r5, pc, r5
003a6a40  04 60 a0 e1                                      mov r6, r4
003a6a44  03 30 95 e7                                      ldr r3, [r5, r3]
003a6a48  00 70 a0 e3                                      mov r7, #0
003a6a4c  8a 2f 84 e2                                      add r2, r4, #0x228
003a6a50  08 30 83 e2                                      add r3, r3, #8
003a6a54  30 31 86 e4                                      str r3, [r6], #0x130
003a6a58  07 10 a0 e1                                      mov r1, r7
003a6a5c  06 00 a0 e1                                      mov r0, r6
003a6a60  84 84 9f e5                                      ldr r8, [pc, #0x484]
003a6a64  04 20 8d e5                                      str r2, [sp, #4]
003a6a68  6b ff ff eb                                      bl #0x3a681c
003a6a6c  32 3e 84 e2                                      add r3, r4, #0x320
003a6a70  07 10 a0 e1                                      mov r1, r7
003a6a74  04 00 9d e5                                      ldr r0, [sp, #4]
003a6a78  14 30 8d e5                                      str r3, [sp, #0x14]
003a6a7c  66 ff ff eb                                      bl #0x3a681c
003a6a80  07 10 a0 e1                                      mov r1, r7
003a6a84  14 00 9d e5                                      ldr r0, [sp, #0x14]
003a6a88  a4 ff ff eb                                      bl #0x3a6920
003a6a8c  00 a0 a0 e3                                      mov sl, #0
003a6a90  42 0e a0 e3                                      mov r0, #0x420
003a6a94  08 10 95 e7                                      ldr r1, [r5, r8]
003a6a98  00 b0 a0 e3                                      mov fp, #0
003a6a9c  f0 a0 84 e1                                      strd sl, fp, [r4, r0]
003a6aa0  00 20 e0 e3                                      mvn r2, #0
003a6aa4  00 30 a0 e3                                      mov r3, #0
003a6aa8  08 10 81 e2                                      add r1, r1, #8
003a6aac  10 00 a0 e3                                      mov r0, #0x10
003a6ab0  1c 04 84 e5                                      str r0, [r4, #0x41c]
003a6ab4  18 14 84 e5                                      str r1, [r4, #0x418]
003a6ab8  38 04 94 e5                                      ldr r0, [r4, #0x438]
003a6abc  2c 24 84 e5                                      str r2, [r4, #0x42c]
003a6ac0  34 34 c4 e5                                      strb r3, [r4, #0x434]
003a6ac4  28 24 84 e5                                      str r2, [r4, #0x428]
003a6ac8  30 34 84 e5                                      str r3, [r4, #0x430]
003a6acc  07 10 a0 e1                                      mov r1, r7
003a6ad0  2d 9d fd eb                                      bl #0x30df8c
003a6ad4  00 00 50 e3                                      cmp r0, #0
003a6ad8  41 9e 84 12                                      addne sb, r4, #0x410
003a6adc  08 90 89 12                                      addne sb, sb, #8
003a6ae0  00 90 8d 15                                      strne sb, [sp]
003a6ae4  05 00 00 1a                                      bne #0x3a6b00
003a6ae8  41 ae 84 e2                                      add sl, r4, #0x410
003a6aec  08 a0 8a e2                                      add sl, sl, #8
003a6af0  00 a0 8d e5                                      str sl, [sp]
003a6af4  38 74 84 e5                                      str r7, [r4, #0x438]
003a6af8  00 00 9d e5                                      ldr r0, [sp]
003a6afc  20 b9 11 eb                                      bl #0x814f84
003a6b00  e8 73 9f e5                                      ldr r7, [pc, #0x3e8]
003a6b04  08 10 95 e7                                      ldr r1, [r5, r8]
003a6b08  48 c4 00 e3                                      movw ip, #0x448
003a6b0c  07 00 95 e7                                      ldr r0, [r5, r7]
003a6b10  08 a0 81 e2                                      add sl, r1, #8
003a6b14  00 10 a0 e3                                      mov r1, #0
003a6b18  08 e0 80 e2                                      add lr, r0, #8
003a6b1c  00 00 a0 e3                                      mov r0, #0
003a6b20  fc 00 84 e1                                      strd r0, r1, [r4, ip]
003a6b24  00 20 e0 e3                                      mvn r2, #0
003a6b28  00 30 a0 e3                                      mov r3, #0
003a6b2c  10 00 a0 e3                                      mov r0, #0x10
003a6b30  00 80 a0 e3                                      mov r8, #0
003a6b34  08 10 a0 e1                                      mov r1, r8
003a6b38  44 04 84 e5                                      str r0, [r4, #0x444]
003a6b3c  18 e4 84 e5                                      str lr, [r4, #0x418]
003a6b40  60 04 94 e5                                      ldr r0, [r4, #0x460]
003a6b44  54 24 84 e5                                      str r2, [r4, #0x454]
003a6b48  5c 34 c4 e5                                      strb r3, [r4, #0x45c]
003a6b4c  40 a4 84 e5                                      str sl, [r4, #0x440]
003a6b50  50 24 84 e5                                      str r2, [r4, #0x450]
003a6b54  58 34 84 e5                                      str r3, [r4, #0x458]
003a6b58  0b 9d fd eb                                      bl #0x30df8c
003a6b5c  00 00 50 e3                                      cmp r0, #0
003a6b60  11 1d 84 12                                      addne r1, r4, #0x440
003a6b64  24 10 8d 15                                      strne r1, [sp, #0x24]
003a6b68  04 00 00 1a                                      bne #0x3a6b80
003a6b6c  11 2d 84 e2                                      add r2, r4, #0x440
003a6b70  24 20 8d e5                                      str r2, [sp, #0x24]
003a6b74  60 84 84 e5                                      str r8, [r4, #0x460]
003a6b78  24 00 9d e5                                      ldr r0, [sp, #0x24]
003a6b7c  00 b9 11 eb                                      bl #0x814f84
003a6b80  6c b3 9f e5                                      ldr fp, [pc, #0x36c]
003a6b84  88 34 94 e5                                      ldr r3, [r4, #0x488]
003a6b88  07 00 95 e7                                      ldr r0, [r5, r7]
003a6b8c  0b 10 95 e7                                      ldr r1, [r5, fp]
003a6b90  00 00 53 e3                                      cmp r3, #0
003a6b94  00 80 a0 e3                                      mov r8, #0
003a6b98  08 00 80 e2                                      add r0, r0, #8
003a6b9c  47 ce a0 e3                                      mov ip, #0x470
003a6ba0  00 90 a0 e3                                      mov sb, #0
003a6ba4  fc 80 84 e1                                      strd r8, sb, [r4, ip]
003a6ba8  00 20 e0 e3                                      mvn r2, #0
003a6bac  00 30 a0 e3                                      mov r3, #0
003a6bb0  08 10 81 e2                                      add r1, r1, #8
003a6bb4  40 04 84 e5                                      str r0, [r4, #0x440]
003a6bb8  46 8e 84 02                                      addeq r8, r4, #0x460
003a6bbc  20 00 a0 e3                                      mov r0, #0x20
003a6bc0  6c 04 84 e5                                      str r0, [r4, #0x46c]
003a6bc4  7c 24 84 e5                                      str r2, [r4, #0x47c]
003a6bc8  68 14 84 e5                                      str r1, [r4, #0x468]
003a6bcc  78 24 84 e5                                      str r2, [r4, #0x478]
003a6bd0  80 34 84 e5                                      str r3, [r4, #0x480]
003a6bd4  84 34 c4 e5                                      strb r3, [r4, #0x484]
003a6bd8  08 80 88 02                                      addeq r8, r8, #8
003a6bdc  04 00 00 0a                                      beq #0x3a6bf4
003a6be0  46 8e 84 e2                                      add r8, r4, #0x460
003a6be4  08 80 88 e2                                      add r8, r8, #8
003a6be8  88 34 84 e5                                      str r3, [r4, #0x488]
003a6bec  08 00 a0 e1                                      mov r0, r8
003a6bf0  e3 b8 11 eb                                      bl #0x814f84
003a6bf4  fc 72 9f e5                                      ldr r7, [pc, #0x2fc]
003a6bf8  b0 34 94 e5                                      ldr r3, [r4, #0x4b0]
003a6bfc  0b 10 95 e7                                      ldr r1, [r5, fp]
003a6c00  07 00 95 e7                                      ldr r0, [r5, r7]
003a6c04  00 00 53 e3                                      cmp r3, #0
003a6c08  08 a0 81 e2                                      add sl, r1, #8
003a6c0c  08 e0 80 e2                                      add lr, r0, #8
003a6c10  00 10 a0 e3                                      mov r1, #0
003a6c14  00 00 a0 e3                                      mov r0, #0
003a6c18  98 c4 00 e3                                      movw ip, #0x498
003a6c1c  fc 00 84 e1                                      strd r0, r1, [r4, ip]
003a6c20  00 20 e0 e3                                      mvn r2, #0
003a6c24  00 30 a0 e3                                      mov r3, #0
003a6c28  20 00 a0 e3                                      mov r0, #0x20
003a6c2c  49 1e 84 02                                      addeq r1, r4, #0x490
003a6c30  68 e4 84 e5                                      str lr, [r4, #0x468]
003a6c34  94 04 84 e5                                      str r0, [r4, #0x494]
003a6c38  a4 24 84 e5                                      str r2, [r4, #0x4a4]
003a6c3c  90 a4 84 e5                                      str sl, [r4, #0x490]
003a6c40  a0 24 84 e5                                      str r2, [r4, #0x4a0]
003a6c44  a8 34 84 e5                                      str r3, [r4, #0x4a8]
003a6c48  ac 34 c4 e5                                      strb r3, [r4, #0x4ac]
003a6c4c  20 10 8d 05                                      streq r1, [sp, #0x20]
003a6c50  04 00 00 0a                                      beq #0x3a6c68
003a6c54  49 2e 84 e2                                      add r2, r4, #0x490
003a6c58  20 20 8d e5                                      str r2, [sp, #0x20]
003a6c5c  b0 34 84 e5                                      str r3, [r4, #0x4b0]
003a6c60  20 00 9d e5                                      ldr r0, [sp, #0x20]
003a6c64  c6 b8 11 eb                                      bl #0x814f84
003a6c68  8c 12 9f e5                                      ldr r1, [pc, #0x28c]
003a6c6c  d8 34 94 e5                                      ldr r3, [r4, #0x4d8]
003a6c70  07 00 95 e7                                      ldr r0, [r5, r7]
003a6c74  01 10 95 e7                                      ldr r1, [r5, r1]
003a6c78  00 00 53 e3                                      cmp r3, #0
003a6c7c  00 a0 a0 e3                                      mov sl, #0
003a6c80  08 70 81 e2                                      add r7, r1, #8
003a6c84  00 b0 a0 e3                                      mov fp, #0
003a6c88  13 cd a0 e3                                      mov ip, #0x4c0
003a6c8c  fc a0 84 e1                                      strd sl, fp, [r4, ip]
003a6c90  08 e0 80 e2                                      add lr, r0, #8
003a6c94  00 20 e0 e3                                      mvn r2, #0
003a6c98  00 30 a0 e3                                      mov r3, #0
003a6c9c  b8 74 84 e5                                      str r7, [r4, #0x4b8]
003a6ca0  10 00 a0 e3                                      mov r0, #0x10
003a6ca4  4b 7e 84 02                                      addeq r7, r4, #0x4b0
003a6ca8  90 e4 84 e5                                      str lr, [r4, #0x490]
003a6cac  bc 04 84 e5                                      str r0, [r4, #0x4bc]
003a6cb0  cc 24 84 e5                                      str r2, [r4, #0x4cc]
003a6cb4  c8 24 84 e5                                      str r2, [r4, #0x4c8]
003a6cb8  d0 34 84 e5                                      str r3, [r4, #0x4d0]
003a6cbc  d4 34 c4 e5                                      strb r3, [r4, #0x4d4]
003a6cc0  08 70 87 02                                      addeq r7, r7, #8
003a6cc4  04 00 00 0a                                      beq #0x3a6cdc
003a6cc8  4b 7e 84 e2                                      add r7, r4, #0x4b0
003a6ccc  08 70 87 e2                                      add r7, r7, #8
003a6cd0  d8 34 84 e5                                      str r3, [r4, #0x4d8]
003a6cd4  07 00 a0 e1                                      mov r0, r7
003a6cd8  a9 b8 11 eb                                      bl #0x814f84
003a6cdc  1c c2 9f e5                                      ldr ip, [pc, #0x21c]
003a6ce0  1c 22 9f e5                                      ldr r2, [pc, #0x21c]
003a6ce4  fd 34 d4 e5                                      ldrb r3, [r4, #0x4fd]
003a6ce8  0c c0 95 e7                                      ldr ip, [r5, ip]
003a6cec  02 00 95 e7                                      ldr r0, [r5, r2]
003a6cf0  00 00 53 e3                                      cmp r3, #0
003a6cf4  00 b0 a0 e3                                      mov fp, #0
003a6cf8  08 c0 8c e2                                      add ip, ip, #8
003a6cfc  e8 e4 00 e3                                      movw lr, #0x4e8
003a6d00  00 a0 a0 e3                                      mov sl, #0
003a6d04  fe a0 84 e1                                      strd sl, fp, [r4, lr]
003a6d08  00 10 e0 e3                                      mvn r1, #0
003a6d0c  00 30 a0 e3                                      mov r3, #0
003a6d10  b8 c4 84 e5                                      str ip, [r4, #0x4b8]
003a6d14  08 00 80 e2                                      add r0, r0, #8
003a6d18  01 c0 a0 e3                                      mov ip, #1
003a6d1c  4e be 84 02                                      addeq fp, r4, #0x4e0
003a6d20  e4 c4 84 e5                                      str ip, [r4, #0x4e4]
003a6d24  f4 14 84 e5                                      str r1, [r4, #0x4f4]
003a6d28  e0 04 84 e5                                      str r0, [r4, #0x4e0]
003a6d2c  f0 14 84 e5                                      str r1, [r4, #0x4f0]
003a6d30  f8 34 84 e5                                      str r3, [r4, #0x4f8]
003a6d34  fc 34 c4 e5                                      strb r3, [r4, #0x4fc]
003a6d38  1c b0 8d 05                                      streq fp, [sp, #0x1c]
003a6d3c  06 00 00 0a                                      beq #0x3a6d5c
003a6d40  4e 0e 84 e2                                      add r0, r4, #0x4e0
003a6d44  1c 00 8d e5                                      str r0, [sp, #0x1c]
003a6d48  fd 34 c4 e5                                      strb r3, [r4, #0x4fd]
003a6d4c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003a6d50  10 20 8d e5                                      str r2, [sp, #0x10]
003a6d54  8a b8 11 eb                                      bl #0x814f84
003a6d58  10 20 9d e5                                      ldr r2, [sp, #0x10]
003a6d5c  a4 31 9f e5                                      ldr r3, [pc, #0x1a4]
003a6d60  1d 15 d4 e5                                      ldrb r1, [r4, #0x51d]
003a6d64  02 c0 95 e7                                      ldr ip, [r5, r2]
003a6d68  03 e0 95 e7                                      ldr lr, [r5, r3]
003a6d6c  08 95 00 e3                                      movw sb, #0x508
003a6d70  00 a0 a0 e3                                      mov sl, #0
003a6d74  08 e0 8e e2                                      add lr, lr, #8
003a6d78  00 b0 a0 e3                                      mov fp, #0
003a6d7c  f9 a0 84 e1                                      strd sl, fp, [r4, sb]
003a6d80  00 00 51 e3                                      cmp r1, #0
003a6d84  00 00 e0 e3                                      mvn r0, #0
003a6d88  00 10 a0 e3                                      mov r1, #0
003a6d8c  08 c0 8c e2                                      add ip, ip, #8
003a6d90  e0 e4 84 e5                                      str lr, [r4, #0x4e0]
003a6d94  01 e0 a0 e3                                      mov lr, #1
003a6d98  04 e5 84 e5                                      str lr, [r4, #0x504]
003a6d9c  14 05 84 e5                                      str r0, [r4, #0x514]
003a6da0  00 c5 84 e5                                      str ip, [r4, #0x500]
003a6da4  10 05 84 e5                                      str r0, [r4, #0x510]
003a6da8  18 15 84 e5                                      str r1, [r4, #0x518]
003a6dac  1c 15 c4 e5                                      strb r1, [r4, #0x51c]
003a6db0  05 9c 84 02                                      addeq sb, r4, #0x500
003a6db4  07 00 00 0a                                      beq #0x3a6dd8
003a6db8  05 9c 84 e2                                      add sb, r4, #0x500
003a6dbc  1d 15 c4 e5                                      strb r1, [r4, #0x51d]
003a6dc0  09 00 a0 e1                                      mov r0, sb
003a6dc4  10 20 8d e5                                      str r2, [sp, #0x10]
003a6dc8  0c 30 8d e5                                      str r3, [sp, #0xc]
003a6dcc  6c b8 11 eb                                      bl #0x814f84
003a6dd0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003a6dd4  10 20 9d e5                                      ldr r2, [sp, #0x10]
003a6dd8  03 c0 95 e7                                      ldr ip, [r5, r3]
003a6ddc  02 00 95 e7                                      ldr r0, [r5, r2]
003a6de0  3d 25 d4 e5                                      ldrb r2, [r4, #0x53d]
003a6de4  08 c0 8c e2                                      add ip, ip, #8
003a6de8  00 a0 a0 e3                                      mov sl, #0
003a6dec  28 e5 00 e3                                      movw lr, #0x528
003a6df0  00 b0 a0 e3                                      mov fp, #0
003a6df4  fe a0 84 e1                                      strd sl, fp, [r4, lr]
003a6df8  00 00 52 e3                                      cmp r2, #0
003a6dfc  00 10 e0 e3                                      mvn r1, #0
003a6e00  00 20 a0 e3                                      mov r2, #0
003a6e04  08 00 80 e2                                      add r0, r0, #8
003a6e08  00 c5 84 e5                                      str ip, [r4, #0x500]
003a6e0c  01 c0 a0 e3                                      mov ip, #1
003a6e10  24 c5 84 e5                                      str ip, [r4, #0x524]
003a6e14  34 15 84 e5                                      str r1, [r4, #0x534]
003a6e18  20 05 84 e5                                      str r0, [r4, #0x520]
003a6e1c  30 15 84 e5                                      str r1, [r4, #0x530]
003a6e20  38 25 84 e5                                      str r2, [r4, #0x538]
003a6e24  3c 25 c4 e5                                      strb r2, [r4, #0x53c]
003a6e28  52 ae 84 02                                      addeq sl, r4, #0x520
003a6e2c  05 00 00 0a                                      beq #0x3a6e48
003a6e30  52 ae 84 e2                                      add sl, r4, #0x520
003a6e34  3d 25 c4 e5                                      strb r2, [r4, #0x53d]
003a6e38  0a 00 a0 e1                                      mov r0, sl
003a6e3c  0c 30 8d e5                                      str r3, [sp, #0xc]
003a6e40  4f b8 11 eb                                      bl #0x814f84
003a6e44  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003a6e48  03 30 95 e7                                      ldr r3, [r5, r3]
003a6e4c  06 10 a0 e1                                      mov r1, r6
003a6e50  04 00 a0 e1                                      mov r0, r4
003a6e54  08 30 83 e2                                      add r3, r3, #8
003a6e58  20 35 84 e5                                      str r3, [r4, #0x520]
003a6e5c  fa b0 11 eb                                      bl #0x81324c
003a6e60  04 00 a0 e1                                      mov r0, r4
003a6e64  04 10 9d e5                                      ldr r1, [sp, #4]
003a6e68  f7 b0 11 eb                                      bl #0x81324c
003a6e6c  04 00 a0 e1                                      mov r0, r4
003a6e70  14 10 9d e5                                      ldr r1, [sp, #0x14]
003a6e74  f4 b0 11 eb                                      bl #0x81324c
003a6e78  04 00 a0 e1                                      mov r0, r4
003a6e7c  00 10 9d e5                                      ldr r1, [sp]
003a6e80  f1 b0 11 eb                                      bl #0x81324c
003a6e84  04 00 a0 e1                                      mov r0, r4
003a6e88  24 10 9d e5                                      ldr r1, [sp, #0x24]
003a6e8c  ee b0 11 eb                                      bl #0x81324c
003a6e90  04 00 a0 e1                                      mov r0, r4
003a6e94  08 10 a0 e1                                      mov r1, r8
003a6e98  eb b0 11 eb                                      bl #0x81324c
003a6e9c  04 00 a0 e1                                      mov r0, r4
003a6ea0  20 10 9d e5                                      ldr r1, [sp, #0x20]
003a6ea4  e8 b0 11 eb                                      bl #0x81324c
003a6ea8  04 00 a0 e1                                      mov r0, r4
003a6eac  07 10 a0 e1                                      mov r1, r7
003a6eb0  e5 b0 11 eb                                      bl #0x81324c
003a6eb4  04 00 a0 e1                                      mov r0, r4
003a6eb8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003a6ebc  e2 b0 11 eb                                      bl #0x81324c
003a6ec0  04 00 a0 e1                                      mov r0, r4
003a6ec4  09 10 a0 e1                                      mov r1, sb
003a6ec8  df b0 11 eb                                      bl #0x81324c
003a6ecc  04 00 a0 e1                                      mov r0, r4
003a6ed0  0a 10 a0 e1                                      mov r1, sl
003a6ed4  dc b0 11 eb                                      bl #0x81324c
003a6ed8  04 00 a0 e1                                      mov r0, r4
003a6edc  2c d0 8d e2                                      add sp, sp, #0x2c
003a6ee0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003a6ee4  54 e0 5e 00 f8 41 00 00 b0 49 00 00 98 42 00 00  .byte 0x54, 0xe0, 0x5e, 0x00, 0xf8, 0x41, 0x00, 0x00, 0xb0, 0x49, 0x00, 0x00, 0x98, 0x42, 0x00, 0x00
003a6ef4  68 40 00 00 f0 39 00 00 84 29 00 00 3c 35 00 00  .byte 0x68, 0x40, 0x00, 0x00, 0xf0, 0x39, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00
003a6f04  18 30 00 00 c8 0a 00 00                          .byte 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00

; FUNCTION 0x003a7a50, declared_size=184, range_size=184, mode=arm
; class-group: Character::NetStructCharacter
; alias: _ZN9Character18NetStructCharacterD1Ev
; demangled: Character::NetStructCharacter::~NetStructCharacter()
; decoder-mode: arm
003a7a50  70 40 2d e9                                      push {r4, r5, r6, lr}
003a7a54  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003a7a58  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
003a7a5c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
003a7a60  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
003a7a64  03 30 8f e0                                      add r3, pc, r3
003a7a68  00 40 a0 e1                                      mov r4, r0
003a7a6c  02 20 93 e7                                      ldr r2, [r3, r2]
003a7a70  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
003a7a74  0c c0 93 e7                                      ldr ip, [r3, ip]
003a7a78  01 10 93 e7                                      ldr r1, [r3, r1]
003a7a7c  08 20 82 e2                                      add r2, r2, #8
003a7a80  08 c0 8c e2                                      add ip, ip, #8
003a7a84  08 10 81 e2                                      add r1, r1, #8
003a7a88  00 00 50 e3                                      cmp r0, #0
003a7a8c  54 11 84 e5                                      str r1, [r4, #0x154]
003a7a90  30 c1 84 e5                                      str ip, [r4, #0x130]
003a7a94  00 20 84 e5                                      str r2, [r4]
003a7a98  20 c5 84 e5                                      str ip, [r4, #0x520]
003a7a9c  00 c5 84 e5                                      str ip, [r4, #0x500]
003a7aa0  e0 c4 84 e5                                      str ip, [r4, #0x4e0]
003a7aa4  b8 c4 84 e5                                      str ip, [r4, #0x4b8]
003a7aa8  90 c4 84 e5                                      str ip, [r4, #0x490]
003a7aac  68 c4 84 e5                                      str ip, [r4, #0x468]
003a7ab0  40 c4 84 e5                                      str ip, [r4, #0x440]
003a7ab4  18 c4 84 e5                                      str ip, [r4, #0x418]
003a7ab8  44 13 84 e5                                      str r1, [r4, #0x344]
003a7abc  20 c3 84 e5                                      str ip, [r4, #0x320]
003a7ac0  4c 12 84 e5                                      str r1, [r4, #0x24c]
003a7ac4  28 c2 84 e5                                      str ip, [r4, #0x228]
003a7ac8  08 00 00 0a                                      beq #0x3a7af0
003a7acc  43 5f 84 e2                                      add r5, r4, #0x10c
003a7ad0  05 00 a0 e1                                      mov r0, r5
003a7ad4  10 11 94 e5                                      ldr r1, [r4, #0x110]
003a7ad8  3c 25 ff eb                                      bl #0x370fd0
003a7adc  00 30 a0 e3                                      mov r3, #0
003a7ae0  18 51 84 e5                                      str r5, [r4, #0x118]
003a7ae4  1c 31 84 e5                                      str r3, [r4, #0x11c]
003a7ae8  14 51 84 e5                                      str r5, [r4, #0x114]
003a7aec  10 31 84 e5                                      str r3, [r4, #0x110]
003a7af0  04 00 a0 e1                                      mov r0, r4
003a7af4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003a7af8  2c d0 5e 00 a8 10 00 00 8c 1c 00 00 c4 43 00 00  .byte 0x2c, 0xd0, 0x5e, 0x00, 0xa8, 0x10, 0x00, 0x00, 0x8c, 0x1c, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x003a7b08, declared_size=28, range_size=28, mode=arm
; class-group: Character::NetStructCharacter
; alias: _ZN9Character18NetStructCharacterD0Ev
; demangled: Character::NetStructCharacter::~NetStructCharacter()
; decoder-mode: arm
003a7b08  10 40 2d e9                                      push {r4, lr}
003a7b0c  00 40 a0 e1                                      mov r4, r0
003a7b10  ce ff ff eb                                      bl #0x3a7a50
003a7b14  04 00 a0 e1                                      mov r0, r4
003a7b18  48 a2 fd eb                                      bl #0x310440
003a7b1c  04 00 a0 e1                                      mov r0, r4
003a7b20  10 80 bd e8                                      pop {r4, pc}
