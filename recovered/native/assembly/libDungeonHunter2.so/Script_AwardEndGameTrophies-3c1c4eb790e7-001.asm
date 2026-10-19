; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455918, declared_size=8, range_size=8, mode=arm
; class-group: Script_AwardEndGameTrophies
; alias: _ZNK27Script_AwardEndGameTrophies10IsBlockingEv
; demangled: Script_AwardEndGameTrophies::IsBlocking() const
; decoder-mode: arm
00455918  00 00 a0 e3                                      mov r0, #0
0045591c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00459b04, declared_size=1120, range_size=1120, mode=arm
; class-group: Script_AwardEndGameTrophies
; alias: _ZN27Script_AwardEndGameTrophies7ExecuteEbi
; demangled: Script_AwardEndGameTrophies::Execute(bool, int)
; decoder-mode: arm
00459b04  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00459b08  f8 43 9f e5                                      ldr r4, [pc, #0x3f8]
00459b0c  f8 33 9f e5                                      ldr r3, [pc, #0x3f8]
00459b10  00 10 a0 e3                                      mov r1, #0
00459b14  04 40 8f e0                                      add r4, pc, r4
00459b18  03 30 94 e7                                      ldr r3, [r4, r3]
00459b1c  01 20 a0 e3                                      mov r2, #1
00459b20  40 00 93 e5                                      ldr r0, [r3, #0x40]
00459b24  53 52 fc eb                                      bl #0x36e478
00459b28  e0 33 9f e5                                      ldr r3, [pc, #0x3e0]
00459b2c  60 56 90 e5                                      ldr r5, [r0, #0x660]
00459b30  03 30 94 e7                                      ldr r3, [r4, r3]
00459b34  05 00 a0 e1                                      mov r0, r5
00459b38  00 a0 93 e5                                      ldr sl, [r3]
00459b3c  2e 87 fd eb                                      bl #0x3bb7fc
00459b40  07 31 00 e3                                      movw r3, #0x107
00459b44  03 00 50 e1                                      cmp r0, r3
00459b48  32 00 00 0a                                      beq #0x459c18
00459b4c  05 00 a0 e1                                      mov r0, r5
00459b50  29 87 fd eb                                      bl #0x3bb7fc
00459b54  42 0f 50 e3                                      cmp r0, #0x108
00459b58  94 00 00 0a                                      beq #0x459db0
00459b5c  05 00 a0 e1                                      mov r0, r5
00459b60  25 87 fd eb                                      bl #0x3bb7fc
00459b64  09 31 00 e3                                      movw r3, #0x109
00459b68  03 00 50 e1                                      cmp r0, r3
00459b6c  9c 00 00 0a                                      beq #0x459de4
00459b70  05 00 a0 e1                                      mov r0, r5
00459b74  20 87 fd eb                                      bl #0x3bb7fc
00459b78  45 31 00 e3                                      movw r3, #0x145
00459b7c  03 00 50 e1                                      cmp r0, r3
00459b80  b8 00 00 0a                                      beq #0x459e68
00459b84  05 00 a0 e1                                      mov r0, r5
00459b88  1b 87 fd eb                                      bl #0x3bb7fc
00459b8c  46 31 00 e3                                      movw r3, #0x146
00459b90  03 00 50 e1                                      cmp r0, r3
00459b94  9f 00 00 0a                                      beq #0x459e18
00459b98  05 00 a0 e1                                      mov r0, r5
00459b9c  16 87 fd eb                                      bl #0x3bb7fc
00459ba0  47 31 00 e3                                      movw r3, #0x147
00459ba4  03 00 50 e1                                      cmp r0, r3
00459ba8  b5 00 00 0a                                      beq #0x459e84
00459bac  05 00 a0 e1                                      mov r0, r5
00459bb0  11 87 fd eb                                      bl #0x3bb7fc
00459bb4  22 31 00 e3                                      movw r3, #0x122
00459bb8  03 00 50 e1                                      cmp r0, r3
00459bbc  bd 00 00 0a                                      beq #0x459eb8
00459bc0  05 00 a0 e1                                      mov r0, r5
00459bc4  0c 87 fd eb                                      bl #0x3bb7fc
00459bc8  23 31 00 e3                                      movw r3, #0x123
00459bcc  03 00 50 e1                                      cmp r0, r3
00459bd0  bf 00 00 0a                                      beq #0x459ed4
00459bd4  05 00 a0 e1                                      mov r0, r5
00459bd8  07 87 fd eb                                      bl #0x3bb7fc
00459bdc  49 0f 50 e3                                      cmp r0, #0x124
00459be0  12 00 00 1a                                      bne #0x459c30
00459be4  28 03 9f e5                                      ldr r0, [pc, #0x328]
00459be8  00 00 8f e0                                      add r0, pc, r0
00459bec  df 28 fd eb                                      bl #0x3a3f70
00459bf0  00 10 a0 e1                                      mov r1, r0
00459bf4  0a 00 a0 e1                                      mov r0, sl
00459bf8  ee 9d fc eb                                      bl #0x3813b8
00459bfc  14 03 9f e5                                      ldr r0, [pc, #0x314]
00459c00  00 00 8f e0                                      add r0, pc, r0
00459c04  d9 28 fd eb                                      bl #0x3a3f70
00459c08  00 10 a0 e1                                      mov r1, r0
00459c0c  0a 00 a0 e1                                      mov r0, sl
00459c10  e8 9d fc eb                                      bl #0x3813b8
00459c14  05 00 00 ea                                      b #0x459c30
00459c18  fc 02 9f e5                                      ldr r0, [pc, #0x2fc]
00459c1c  00 00 8f e0                                      add r0, pc, r0
00459c20  d2 28 fd eb                                      bl #0x3a3f70
00459c24  00 10 a0 e1                                      mov r1, r0
00459c28  0a 00 a0 e1                                      mov r0, sl
00459c2c  e1 9d fc eb                                      bl #0x3813b8
00459c30  05 00 a0 e1                                      mov r0, r5
00459c34  00 10 e0 e3                                      mvn r1, #0
00459c38  cf 89 fd eb                                      bl #0x3bc37c
00459c3c  00 80 50 e2                                      subs r8, r0, #0
00459c40  08 70 a0 01                                      moveq r7, r8
00459c44  52 00 00 0a                                      beq #0x459d94
00459c48  00 40 a0 e3                                      mov r4, #0
00459c4c  04 70 a0 e1                                      mov r7, r4
00459c50  01 60 a0 e3                                      mov r6, #1
00459c54  06 00 00 ea                                      b #0x459c74
00459c58  00 00 56 e3                                      cmp r6, #0
00459c5c  01 40 84 e2                                      add r4, r4, #1
00459c60  01 00 00 1a                                      bne #0x459c6c
00459c64  00 00 57 e3                                      cmp r7, #0
00459c68  23 00 00 1a                                      bne #0x459cfc
00459c6c  08 00 54 e1                                      cmp r4, r8
00459c70  17 00 00 0a                                      beq #0x459cd4
00459c74  04 10 a0 e1                                      mov r1, r4
00459c78  00 20 e0 e3                                      mvn r2, #0
00459c7c  05 00 a0 e1                                      mov r0, r5
00459c80  9c 89 fd eb                                      bl #0x3bc2f8
00459c84  00 30 90 e5                                      ldr r3, [r0]
00459c88  04 10 a0 e1                                      mov r1, r4
00459c8c  00 20 e0 e3                                      mvn r2, #0
00459c90  0c 00 53 e3                                      cmp r3, #0xc
00459c94  05 00 a0 e1                                      mov r0, r5
00459c98  01 00 00 ca                                      bgt #0x459ca4
00459c9c  16 00 54 e3                                      cmp r4, #0x16
00459ca0  00 60 a0 13                                      movne r6, #0
00459ca4  93 89 fd eb                                      bl #0x3bc2f8
00459ca8  00 30 90 e5                                      ldr r3, [r0]
00459cac  0c 00 53 e3                                      cmp r3, #0xc
00459cb0  e8 ff ff da                                      ble #0x459c58
00459cb4  04 10 a0 e1                                      mov r1, r4
00459cb8  00 20 e0 e3                                      mvn r2, #0
00459cbc  05 00 a0 e1                                      mov r0, r5
00459cc0  8c 89 fd eb                                      bl #0x3bc2f8
00459cc4  f6 96 00 eb                                      bl #0x47f8a4
00459cc8  00 00 50 e3                                      cmp r0, #0
00459ccc  01 70 a0 13                                      movne r7, #1
00459cd0  e0 ff ff ea                                      b #0x459c58
00459cd4  00 00 56 e3                                      cmp r6, #0
00459cd8  2d 00 00 1a                                      bne #0x459d94
00459cdc  00 00 57 e3                                      cmp r7, #0
00459ce0  05 00 00 1a                                      bne #0x459cfc
00459ce4  34 02 9f e5                                      ldr r0, [pc, #0x234]
00459ce8  00 00 8f e0                                      add r0, pc, r0
00459cec  9f 28 fd eb                                      bl #0x3a3f70
00459cf0  00 10 a0 e1                                      mov r1, r0
00459cf4  0a 00 a0 e1                                      mov r0, sl
00459cf8  ae 9d fc eb                                      bl #0x3813b8
00459cfc  56 4e 85 e2                                      add r4, r5, #0x560
00459d00  04 00 a0 e1                                      mov r0, r4
00459d04  19 10 a0 e3                                      mov r1, #0x19
00459d08  00 20 a0 e3                                      mov r2, #0
00459d0c  73 16 fe eb                                      bl #0x3df6e0
00459d10  00 00 50 e3                                      cmp r0, #0
00459d14  17 00 00 0a                                      beq #0x459d78
00459d18  94 10 a0 e3                                      mov r1, #0x94
00459d1c  00 20 a0 e3                                      mov r2, #0
00459d20  04 00 a0 e1                                      mov r0, r4
00459d24  6d 16 fe eb                                      bl #0x3df6e0
00459d28  00 60 a0 e1                                      mov r6, r0
00459d2c  05 00 a0 e1                                      mov r0, r5
00459d30  bc 86 fd eb                                      bl #0x3bb828
00459d34  01 00 40 e2                                      sub r0, r0, #1
00459d38  80 00 56 e1                                      cmp r6, r0, lsl #1
00459d3c  42 00 00 0a                                      beq #0x459e4c
00459d40  04 00 a0 e1                                      mov r0, r4
00459d44  da 10 a0 e3                                      mov r1, #0xda
00459d48  00 20 a0 e3                                      mov r2, #0
00459d4c  63 16 fe eb                                      bl #0x3df6e0
00459d50  00 00 50 e3                                      cmp r0, #0
00459d54  00 00 00 0a                                      beq #0x459d5c
00459d58  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00459d5c  c0 01 9f e5                                      ldr r0, [pc, #0x1c0]
00459d60  00 00 8f e0                                      add r0, pc, r0
00459d64  81 28 fd eb                                      bl #0x3a3f70
00459d68  00 10 a0 e1                                      mov r1, r0
00459d6c  0a 00 a0 e1                                      mov r0, sl
00459d70  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00459d74  8f 9d fc ea                                      b #0x3813b8
00459d78  a8 01 9f e5                                      ldr r0, [pc, #0x1a8]
00459d7c  00 00 8f e0                                      add r0, pc, r0
00459d80  7a 28 fd eb                                      bl #0x3a3f70
00459d84  00 10 a0 e1                                      mov r1, r0
00459d88  0a 00 a0 e1                                      mov r0, sl
00459d8c  89 9d fc eb                                      bl #0x3813b8
00459d90  e0 ff ff ea                                      b #0x459d18
00459d94  90 01 9f e5                                      ldr r0, [pc, #0x190]
00459d98  00 00 8f e0                                      add r0, pc, r0
00459d9c  73 28 fd eb                                      bl #0x3a3f70
00459da0  00 10 a0 e1                                      mov r1, r0
00459da4  0a 00 a0 e1                                      mov r0, sl
00459da8  82 9d fc eb                                      bl #0x3813b8
00459dac  ca ff ff ea                                      b #0x459cdc
00459db0  78 01 9f e5                                      ldr r0, [pc, #0x178]
00459db4  00 00 8f e0                                      add r0, pc, r0
00459db8  6c 28 fd eb                                      bl #0x3a3f70
00459dbc  00 10 a0 e1                                      mov r1, r0
00459dc0  0a 00 a0 e1                                      mov r0, sl
00459dc4  7b 9d fc eb                                      bl #0x3813b8
00459dc8  64 01 9f e5                                      ldr r0, [pc, #0x164]
00459dcc  00 00 8f e0                                      add r0, pc, r0
00459dd0  66 28 fd eb                                      bl #0x3a3f70
00459dd4  00 10 a0 e1                                      mov r1, r0
00459dd8  0a 00 a0 e1                                      mov r0, sl
00459ddc  75 9d fc eb                                      bl #0x3813b8
00459de0  92 ff ff ea                                      b #0x459c30
00459de4  4c 01 9f e5                                      ldr r0, [pc, #0x14c]
00459de8  00 00 8f e0                                      add r0, pc, r0
00459dec  5f 28 fd eb                                      bl #0x3a3f70
00459df0  00 10 a0 e1                                      mov r1, r0
00459df4  0a 00 a0 e1                                      mov r0, sl
00459df8  6e 9d fc eb                                      bl #0x3813b8
00459dfc  38 01 9f e5                                      ldr r0, [pc, #0x138]
00459e00  00 00 8f e0                                      add r0, pc, r0
00459e04  59 28 fd eb                                      bl #0x3a3f70
00459e08  00 10 a0 e1                                      mov r1, r0
00459e0c  0a 00 a0 e1                                      mov r0, sl
00459e10  68 9d fc eb                                      bl #0x3813b8
00459e14  85 ff ff ea                                      b #0x459c30
00459e18  20 01 9f e5                                      ldr r0, [pc, #0x120]
00459e1c  00 00 8f e0                                      add r0, pc, r0
00459e20  52 28 fd eb                                      bl #0x3a3f70
00459e24  00 10 a0 e1                                      mov r1, r0
00459e28  0a 00 a0 e1                                      mov r0, sl
00459e2c  61 9d fc eb                                      bl #0x3813b8
00459e30  0c 01 9f e5                                      ldr r0, [pc, #0x10c]
00459e34  00 00 8f e0                                      add r0, pc, r0
00459e38  4c 28 fd eb                                      bl #0x3a3f70
00459e3c  00 10 a0 e1                                      mov r1, r0
00459e40  0a 00 a0 e1                                      mov r0, sl
00459e44  5b 9d fc eb                                      bl #0x3813b8
00459e48  78 ff ff ea                                      b #0x459c30
00459e4c  f4 00 9f e5                                      ldr r0, [pc, #0xf4]
00459e50  00 00 8f e0                                      add r0, pc, r0
00459e54  45 28 fd eb                                      bl #0x3a3f70
00459e58  00 10 a0 e1                                      mov r1, r0
00459e5c  0a 00 a0 e1                                      mov r0, sl
00459e60  54 9d fc eb                                      bl #0x3813b8
00459e64  b5 ff ff ea                                      b #0x459d40
00459e68  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
00459e6c  00 00 8f e0                                      add r0, pc, r0
00459e70  3e 28 fd eb                                      bl #0x3a3f70
00459e74  00 10 a0 e1                                      mov r1, r0
00459e78  0a 00 a0 e1                                      mov r0, sl
00459e7c  4d 9d fc eb                                      bl #0x3813b8
00459e80  6a ff ff ea                                      b #0x459c30
00459e84  c4 00 9f e5                                      ldr r0, [pc, #0xc4]
00459e88  00 00 8f e0                                      add r0, pc, r0
00459e8c  37 28 fd eb                                      bl #0x3a3f70
00459e90  00 10 a0 e1                                      mov r1, r0
00459e94  0a 00 a0 e1                                      mov r0, sl
00459e98  46 9d fc eb                                      bl #0x3813b8
00459e9c  b0 00 9f e5                                      ldr r0, [pc, #0xb0]
00459ea0  00 00 8f e0                                      add r0, pc, r0
00459ea4  31 28 fd eb                                      bl #0x3a3f70
00459ea8  00 10 a0 e1                                      mov r1, r0
00459eac  0a 00 a0 e1                                      mov r0, sl
00459eb0  40 9d fc eb                                      bl #0x3813b8
00459eb4  5d ff ff ea                                      b #0x459c30
00459eb8  98 00 9f e5                                      ldr r0, [pc, #0x98]
00459ebc  00 00 8f e0                                      add r0, pc, r0
00459ec0  2a 28 fd eb                                      bl #0x3a3f70
00459ec4  00 10 a0 e1                                      mov r1, r0
00459ec8  0a 00 a0 e1                                      mov r0, sl
00459ecc  39 9d fc eb                                      bl #0x3813b8
00459ed0  56 ff ff ea                                      b #0x459c30
00459ed4  80 00 9f e5                                      ldr r0, [pc, #0x80]
00459ed8  00 00 8f e0                                      add r0, pc, r0
00459edc  23 28 fd eb                                      bl #0x3a3f70
00459ee0  00 10 a0 e1                                      mov r1, r0
00459ee4  0a 00 a0 e1                                      mov r0, sl
00459ee8  32 9d fc eb                                      bl #0x3813b8
00459eec  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00459ef0  00 00 8f e0                                      add r0, pc, r0
00459ef4  1d 28 fd eb                                      bl #0x3a3f70
00459ef8  00 10 a0 e1                                      mov r1, r0
00459efc  0a 00 a0 e1                                      mov r0, sl
00459f00  2c 9d fc eb                                      bl #0x3813b8
00459f04  49 ff ff ea                                      b #0x459c30
; mapping-symbol data/literal pool
00459f08  7c af 53 00 f4 37 00 00 70 1d 00 00 b8 33 47 00  .byte 0x7c, 0xaf, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x70, 0x1d, 0x00, 0x00, 0xb8, 0x33, 0x47, 0x00
00459f18  c8 33 47 00 04 33 47 00 f8 32 47 00 d0 32 47 00  .byte 0xc8, 0x33, 0x47, 0x00, 0x04, 0x33, 0x47, 0x00, 0xf8, 0x32, 0x47, 0x00, 0xd0, 0x32, 0x47, 0x00
00459f28  7c 32 47 00 98 93 46 00 6c 31 47 00 6c 31 47 00  .byte 0x7c, 0x32, 0x47, 0x00, 0x98, 0x93, 0x46, 0x00, 0x6c, 0x31, 0x47, 0x00, 0x6c, 0x31, 0x47, 0x00
00459f38  38 31 47 00 50 31 47 00 4c 31 47 00 44 31 47 00  .byte 0x38, 0x31, 0x47, 0x00, 0x50, 0x31, 0x47, 0x00, 0x4c, 0x31, 0x47, 0x00, 0x44, 0x31, 0x47, 0x00
00459f48  c0 31 47 00 fc 30 47 00 e0 30 47 00 e8 30 47 00  .byte 0xc0, 0x31, 0x47, 0x00, 0xfc, 0x30, 0x47, 0x00, 0xe0, 0x30, 0x47, 0x00, 0xe8, 0x30, 0x47, 0x00
00459f58  e4 30 47 00 c8 30 47 00 c0 30 47 00              .byte 0xe4, 0x30, 0x47, 0x00, 0xc8, 0x30, 0x47, 0x00, 0xc0, 0x30, 0x47, 0x00
