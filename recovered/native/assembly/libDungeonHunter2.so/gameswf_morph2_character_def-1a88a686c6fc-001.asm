; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00761b9c, declared_size=1416, range_size=1416, mode=arm
; class-group: gameswf::morph2_character_def
; alias: _ZN7gameswf20morph2_character_def7displayEPNS_9characterE
; demangled: gameswf::morph2_character_def::display(gameswf::character*)
; decoder-mode: arm
00761b9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00761ba0  74 d0 4d e2                                      sub sp, sp, #0x74
00761ba4  24 10 8d e5                                      str r1, [sp, #0x24]
00761ba8  00 40 a0 e1                                      mov r4, r0
00761bac  90 00 91 e5                                      ldr r0, [r1, #0x90]
00761bb0  60 50 8d e2                                      add r5, sp, #0x60
00761bb4  14 00 8d e5                                      str r0, [sp, #0x14]
00761bb8  88 10 94 e5                                      ldr r1, [r4, #0x88]
00761bbc  8c 20 94 e5                                      ldr r2, [r4, #0x8c]
00761bc0  05 00 a0 e1                                      mov r0, r5
00761bc4  54 10 81 e2                                      add r1, r1, #0x54
00761bc8  54 20 82 e2                                      add r2, r2, #0x54
00761bcc  14 30 9d e5                                      ldr r3, [sp, #0x14]
00761bd0  42 cf 00 eb                                      bl #0x7958e0
00761bd4  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00761bd8  54 c0 84 e2                                      add ip, r4, #0x54
00761bdc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00761be0  28 30 94 e5                                      ldr r3, [r4, #0x28]
00761be4  00 00 53 e3                                      cmp r3, #0
00761be8  11 00 00 da                                      ble #0x761c34
00761bec  14 70 9d e5                                      ldr r7, [sp, #0x14]
00761bf0  00 50 a0 e3                                      mov r5, #0
00761bf4  05 60 a0 e1                                      mov r6, r5
00761bf8  88 20 94 e5                                      ldr r2, [r4, #0x88]
00761bfc  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
00761c00  24 00 94 e5                                      ldr r0, [r4, #0x24]
00761c04  24 10 92 e5                                      ldr r1, [r2, #0x24]
00761c08  24 20 93 e5                                      ldr r2, [r3, #0x24]
00761c0c  05 00 80 e0                                      add r0, r0, r5
00761c10  05 10 81 e0                                      add r1, r1, r5
00761c14  05 20 82 e0                                      add r2, r2, r5
00761c18  07 30 a0 e1                                      mov r3, r7
00761c1c  4a 8a 00 eb                                      bl #0x78454c
00761c20  28 30 94 e5                                      ldr r3, [r4, #0x28]
00761c24  01 60 86 e2                                      add r6, r6, #1
00761c28  54 50 85 e2                                      add r5, r5, #0x54
00761c2c  03 00 56 e1                                      cmp r6, r3
00761c30  f0 ff ff ba                                      blt #0x761bf8
00761c34  38 30 94 e5                                      ldr r3, [r4, #0x38]
00761c38  00 00 53 e3                                      cmp r3, #0
00761c3c  25 00 00 da                                      ble #0x761cd8
00761c40  14 70 9d e5                                      ldr r7, [sp, #0x14]
00761c44  00 50 a0 e3                                      mov r5, #0
00761c48  05 60 a0 e1                                      mov r6, r5
00761c4c  88 20 94 e5                                      ldr r2, [r4, #0x88]
00761c50  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
00761c54  34 a0 94 e5                                      ldr sl, [r4, #0x34]
00761c58  34 90 92 e5                                      ldr sb, [r2, #0x34]
00761c5c  34 80 93 e5                                      ldr r8, [r3, #0x34]
00761c60  05 a0 8a e0                                      add sl, sl, r5
00761c64  05 90 89 e0                                      add sb, sb, r5
00761c68  b4 00 d9 e1                                      ldrh r0, [sb, #4]
00761c6c  9b b1 ee eb                                      bl #0x30e2e0
00761c70  05 80 88 e0                                      add r8, r8, r5
00761c74  00 b0 a0 e1                                      mov fp, r0
00761c78  b4 00 d8 e1                                      ldrh r0, [r8, #4]
00761c7c  97 b1 ee eb                                      bl #0x30e2e0
00761c80  0b 10 a0 e1                                      mov r1, fp
00761c84  c8 b1 ee eb                                      bl #0x30e3ac
00761c88  00 10 a0 e1                                      mov r1, r0
00761c8c  07 00 a0 e1                                      mov r0, r7
00761c90  35 b4 ee eb                                      bl #0x30ed6c
00761c94  00 10 a0 e1                                      mov r1, r0
00761c98  0b 00 a0 e1                                      mov r0, fp
00761c9c  c0 b3 ee eb                                      bl #0x30eba4
00761ca0  3f 14 a0 e3                                      mov r1, #0x3f000000
00761ca4  be b3 ee eb                                      bl #0x30eba4
00761ca8  07 b2 ee eb                                      bl #0x30e4cc
00761cac  07 30 a0 e1                                      mov r3, r7
00761cb0  b4 00 ca e1                                      strh r0, [sl, #4]
00761cb4  06 10 89 e2                                      add r1, sb, #6
00761cb8  06 00 8a e2                                      add r0, sl, #6
00761cbc  06 20 88 e2                                      add r2, r8, #6
00761cc0  04 ce 00 eb                                      bl #0x7954d8
00761cc4  38 30 94 e5                                      ldr r3, [r4, #0x38]
00761cc8  01 60 86 e2                                      add r6, r6, #1
00761ccc  6c 50 85 e2                                      add r5, r5, #0x6c
00761cd0  03 00 56 e1                                      cmp r6, r3
00761cd4  dc ff ff ba                                      blt #0x761c4c
00761cd8  48 30 94 e5                                      ldr r3, [r4, #0x48]
00761cdc  00 00 53 e3                                      cmp r3, #0
00761ce0  aa 00 00 da                                      ble #0x761f90
00761ce4  00 10 a0 e3                                      mov r1, #0
00761ce8  1c 10 8d e5                                      str r1, [sp, #0x1c]
00761cec  18 10 8d e5                                      str r1, [sp, #0x18]
00761cf0  01 b0 a0 e1                                      mov fp, r1
00761cf4  20 10 8d e5                                      str r1, [sp, #0x20]
00761cf8  88 30 94 e5                                      ldr r3, [r4, #0x88]
00761cfc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00761d00  44 20 94 e5                                      ldr r2, [r4, #0x44]
00761d04  44 30 93 e5                                      ldr r3, [r3, #0x44]
00761d08  18 00 9d e5                                      ldr r0, [sp, #0x18]
00761d0c  28 e0 a0 e3                                      mov lr, #0x28
00761d10  01 90 83 e0                                      add sb, r3, r1
00761d14  01 80 82 e0                                      add r8, r2, r1
00761d18  9e 00 05 e0                                      mul r5, lr, r0
00761d1c  04 10 99 e5                                      ldr r1, [sb, #4]
00761d20  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00761d24  0e 10 82 e7                                      str r1, [r2, lr]
00761d28  0e 30 93 e7                                      ldr r3, [r3, lr]
00761d2c  04 30 88 e5                                      str r3, [r8, #4]
00761d30  08 30 99 e5                                      ldr r3, [sb, #8]
00761d34  08 30 88 e5                                      str r3, [r8, #8]
00761d38  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
00761d3c  0c 60 99 e5                                      ldr r6, [sb, #0xc]
00761d40  44 30 93 e5                                      ldr r3, [r3, #0x44]
00761d44  06 10 a0 e1                                      mov r1, r6
00761d48  05 30 83 e0                                      add r3, r3, r5
00761d4c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00761d50  95 b1 ee eb                                      bl #0x30e3ac
00761d54  00 10 a0 e1                                      mov r1, r0
00761d58  14 00 9d e5                                      ldr r0, [sp, #0x14]
00761d5c  02 b4 ee eb                                      bl #0x30ed6c
00761d60  00 10 a0 e1                                      mov r1, r0
00761d64  06 00 a0 e1                                      mov r0, r6
00761d68  8d b3 ee eb                                      bl #0x30eba4
00761d6c  0c 00 88 e5                                      str r0, [r8, #0xc]
00761d70  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
00761d74  10 60 99 e5                                      ldr r6, [sb, #0x10]
00761d78  44 30 93 e5                                      ldr r3, [r3, #0x44]
00761d7c  06 10 a0 e1                                      mov r1, r6
00761d80  05 50 83 e0                                      add r5, r3, r5
00761d84  10 00 95 e5                                      ldr r0, [r5, #0x10]
00761d88  87 b1 ee eb                                      bl #0x30e3ac
00761d8c  00 10 a0 e1                                      mov r1, r0
00761d90  14 00 9d e5                                      ldr r0, [sp, #0x14]
00761d94  f4 b3 ee eb                                      bl #0x30ed6c
00761d98  00 10 a0 e1                                      mov r1, r0
00761d9c  06 00 a0 e1                                      mov r0, r6
00761da0  7f b3 ee eb                                      bl #0x30eba4
00761da4  10 00 88 e5                                      str r0, [r8, #0x10]
00761da8  18 10 99 e5                                      ldr r1, [sb, #0x18]
00761dac  14 00 88 e2                                      add r0, r8, #0x14
00761db0  35 ff ff eb                                      bl #0x761a8c
00761db4  18 30 98 e5                                      ldr r3, [r8, #0x18]
00761db8  00 00 53 e3                                      cmp r3, #0
00761dbc  6a 00 00 da                                      ble #0x761f6c
00761dc0  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
00761dc4  00 60 a0 e3                                      mov r6, #0
00761dc8  44 30 93 e5                                      ldr r3, [r3, #0x44]
00761dcc  18 10 9d e5                                      ldr r1, [sp, #0x18]
00761dd0  28 00 a0 e3                                      mov r0, #0x28
00761dd4  14 20 99 e5                                      ldr r2, [sb, #0x14]
00761dd8  90 01 07 e0                                      mul r7, r0, r1
00761ddc  06 52 92 e7                                      ldr r5, [r2, r6, lsl #4]
00761de0  07 30 83 e0                                      add r3, r3, r7
00761de4  14 30 93 e5                                      ldr r3, [r3, #0x14]
00761de8  0b a2 a0 e1                                      lsl sl, fp, #4
00761dec  05 10 a0 e1                                      mov r1, r5
00761df0  0a 00 93 e7                                      ldr r0, [r3, sl]
00761df4  6c b1 ee eb                                      bl #0x30e3ac
00761df8  00 10 a0 e1                                      mov r1, r0
00761dfc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00761e00  d9 b3 ee eb                                      bl #0x30ed6c
00761e04  00 10 a0 e1                                      mov r1, r0
00761e08  05 00 a0 e1                                      mov r0, r5
00761e0c  64 b3 ee eb                                      bl #0x30eba4
00761e10  14 30 98 e5                                      ldr r3, [r8, #0x14]
00761e14  06 52 a0 e1                                      lsl r5, r6, #4
00761e18  01 b0 8b e2                                      add fp, fp, #1
00761e1c  06 02 83 e7                                      str r0, [r3, r6, lsl #4]
00761e20  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
00761e24  14 30 99 e5                                      ldr r3, [sb, #0x14]
00761e28  14 20 98 e5                                      ldr r2, [r8, #0x14]
00761e2c  44 10 91 e5                                      ldr r1, [r1, #0x44]
00761e30  05 30 83 e0                                      add r3, r3, r5
00761e34  04 30 93 e5                                      ldr r3, [r3, #4]
00761e38  07 10 81 e0                                      add r1, r1, r7
00761e3c  14 00 91 e5                                      ldr r0, [r1, #0x14]
00761e40  05 20 82 e0                                      add r2, r2, r5
00761e44  03 10 a0 e1                                      mov r1, r3
00761e48  0a 00 80 e0                                      add r0, r0, sl
00761e4c  04 00 90 e5                                      ldr r0, [r0, #4]
00761e50  0c 20 8d e5                                      str r2, [sp, #0xc]
00761e54  10 30 8d e5                                      str r3, [sp, #0x10]
00761e58  53 b1 ee eb                                      bl #0x30e3ac
00761e5c  00 10 a0 e1                                      mov r1, r0
00761e60  14 00 9d e5                                      ldr r0, [sp, #0x14]
00761e64  c0 b3 ee eb                                      bl #0x30ed6c
00761e68  10 30 9d e5                                      ldr r3, [sp, #0x10]
00761e6c  00 10 a0 e1                                      mov r1, r0
00761e70  01 60 86 e2                                      add r6, r6, #1
00761e74  03 00 a0 e1                                      mov r0, r3
00761e78  49 b3 ee eb                                      bl #0x30eba4
00761e7c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00761e80  04 00 82 e5                                      str r0, [r2, #4]
00761e84  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
00761e88  14 30 99 e5                                      ldr r3, [sb, #0x14]
00761e8c  14 20 98 e5                                      ldr r2, [r8, #0x14]
00761e90  44 10 91 e5                                      ldr r1, [r1, #0x44]
00761e94  05 30 83 e0                                      add r3, r3, r5
00761e98  08 30 93 e5                                      ldr r3, [r3, #8]
00761e9c  07 10 81 e0                                      add r1, r1, r7
00761ea0  14 00 91 e5                                      ldr r0, [r1, #0x14]
00761ea4  05 20 82 e0                                      add r2, r2, r5
00761ea8  03 10 a0 e1                                      mov r1, r3
00761eac  0a 00 80 e0                                      add r0, r0, sl
00761eb0  08 00 90 e5                                      ldr r0, [r0, #8]
00761eb4  0c 20 8d e5                                      str r2, [sp, #0xc]
00761eb8  10 30 8d e5                                      str r3, [sp, #0x10]
00761ebc  3a b1 ee eb                                      bl #0x30e3ac
00761ec0  00 10 a0 e1                                      mov r1, r0
00761ec4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00761ec8  a7 b3 ee eb                                      bl #0x30ed6c
00761ecc  10 30 9d e5                                      ldr r3, [sp, #0x10]
00761ed0  00 10 a0 e1                                      mov r1, r0
00761ed4  03 00 a0 e1                                      mov r0, r3
00761ed8  31 b3 ee eb                                      bl #0x30eba4
00761edc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00761ee0  08 00 82 e5                                      str r0, [r2, #8]
00761ee4  8c 20 94 e5                                      ldr r2, [r4, #0x8c]
00761ee8  14 30 99 e5                                      ldr r3, [sb, #0x14]
00761eec  14 00 98 e5                                      ldr r0, [r8, #0x14]
00761ef0  44 20 92 e5                                      ldr r2, [r2, #0x44]
00761ef4  05 30 83 e0                                      add r3, r3, r5
00761ef8  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00761efc  07 20 82 e0                                      add r2, r2, r7
00761f00  14 20 92 e5                                      ldr r2, [r2, #0x14]
00761f04  03 10 a0 e1                                      mov r1, r3
00761f08  05 50 80 e0                                      add r5, r0, r5
00761f0c  0a a0 82 e0                                      add sl, r2, sl
00761f10  0c 00 9a e5                                      ldr r0, [sl, #0xc]
00761f14  10 30 8d e5                                      str r3, [sp, #0x10]
00761f18  23 b1 ee eb                                      bl #0x30e3ac
00761f1c  00 10 a0 e1                                      mov r1, r0
00761f20  14 00 9d e5                                      ldr r0, [sp, #0x14]
00761f24  90 b3 ee eb                                      bl #0x30ed6c
00761f28  10 30 9d e5                                      ldr r3, [sp, #0x10]
00761f2c  00 10 a0 e1                                      mov r1, r0
00761f30  03 00 a0 e1                                      mov r0, r3
00761f34  1a b3 ee eb                                      bl #0x30eba4
00761f38  0c 00 85 e5                                      str r0, [r5, #0xc]
00761f3c  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
00761f40  44 30 93 e5                                      ldr r3, [r3, #0x44]
00761f44  07 70 83 e0                                      add r7, r3, r7
00761f48  18 20 97 e5                                      ldr r2, [r7, #0x18]
00761f4c  02 00 5b e1                                      cmp fp, r2
00761f50  18 20 9d a5                                      ldrge r2, [sp, #0x18]
00761f54  00 b0 a0 a3                                      movge fp, #0
00761f58  01 20 82 a2                                      addge r2, r2, #1
00761f5c  18 20 8d a5                                      strge r2, [sp, #0x18]
00761f60  18 20 98 e5                                      ldr r2, [r8, #0x18]
00761f64  02 00 56 e1                                      cmp r6, r2
00761f68  97 ff ff ba                                      blt #0x761dcc
00761f6c  20 e0 9d e5                                      ldr lr, [sp, #0x20]
00761f70  48 30 94 e5                                      ldr r3, [r4, #0x48]
00761f74  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00761f78  01 e0 8e e2                                      add lr, lr, #1
00761f7c  03 00 5e e1                                      cmp lr, r3
00761f80  28 00 80 e2                                      add r0, r0, #0x28
00761f84  20 e0 8d e5                                      str lr, [sp, #0x20]
00761f88  1c 00 8d e5                                      str r0, [sp, #0x1c]
00761f8c  59 ff ff ba                                      blt #0x761cf8
00761f90  24 00 9d e5                                      ldr r0, [sp, #0x24]
00761f94  f6 c7 ff eb                                      bl #0x753f74
00761f98  48 60 8d e2                                      add r6, sp, #0x48
00761f9c  00 c0 a0 e1                                      mov ip, r0
00761fa0  06 e0 a0 e1                                      mov lr, r6
00761fa4  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00761fa8  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
00761fac  03 00 9c e8                                      ldm ip, {r0, r1}
00761fb0  28 50 8d e2                                      add r5, sp, #0x28
00761fb4  03 00 8e e8                                      stm lr, {r0, r1}
00761fb8  24 00 9d e5                                      ldr r0, [sp, #0x24]
00761fbc  bf c7 ff eb                                      bl #0x753ec0
00761fc0  05 c0 a0 e1                                      mov ip, r5
00761fc4  00 e0 a0 e1                                      mov lr, r0
00761fc8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00761fcc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00761fd0  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00761fd4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00761fd8  48 00 9d e5                                      ldr r0, [sp, #0x48]
00761fdc  00 10 a0 e1                                      mov r1, r0
00761fe0  61 b3 ee eb                                      bl #0x30ed6c
00761fe4  00 70 a0 e1                                      mov r7, r0
00761fe8  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00761fec  00 10 a0 e1                                      mov r1, r0
00761ff0  5d b3 ee eb                                      bl #0x30ed6c
00761ff4  00 10 a0 e1                                      mov r1, r0
00761ff8  07 00 a0 e1                                      mov r0, r7
00761ffc  e8 b2 ee eb                                      bl #0x30eba4
00762000  00 80 a0 e1                                      mov r8, r0
00762004  54 00 9d e5                                      ldr r0, [sp, #0x54]
00762008  00 10 a0 e1                                      mov r1, r0
0076200c  56 b3 ee eb                                      bl #0x30ed6c
00762010  00 70 a0 e1                                      mov r7, r0
00762014  58 00 9d e5                                      ldr r0, [sp, #0x58]
00762018  00 10 a0 e1                                      mov r1, r0
0076201c  52 b3 ee eb                                      bl #0x30ed6c
00762020  00 10 a0 e1                                      mov r1, r0
00762024  07 00 a0 e1                                      mov r0, r7
00762028  dd b2 ee eb                                      bl #0x30eba4
0076202c  00 70 a0 e1                                      mov r7, r0
00762030  07 10 a0 e1                                      mov r1, r7
00762034  08 00 a0 e1                                      mov r0, r8
00762038  b3 b1 ee eb                                      bl #0x30e70c
0076203c  00 00 50 e3                                      cmp r0, #0
00762040  08 70 a0 01                                      moveq r7, r8
00762044  07 00 a0 e1                                      mov r0, r7
00762048  35 b0 ee eb                                      bl #0x30e124
0076204c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00762050  00 a0 a0 e1                                      mov sl, r0
00762054  3c 00 81 e2                                      add r0, r1, #0x3c
00762058  39 90 f0 eb                                      bl #0x386144
0076205c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00762060  40 30 92 e5                                      ldr r3, [r2, #0x40]
00762064  03 00 a0 e1                                      mov r0, r3
00762068  00 30 93 e5                                      ldr r3, [r3]
0076206c  0f e0 a0 e1                                      mov lr, pc
00762070  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00762074  14 10 9d e5                                      ldr r1, [sp, #0x14]
00762078  00 80 a0 e1                                      mov r8, r0
0076207c  9c 00 94 e5                                      ldr r0, [r4, #0x9c]
00762080  c1 af ee eb                                      bl #0x30df8c
00762084  00 00 50 e3                                      cmp r0, #0
00762088  a0 70 94 15                                      ldrne r7, [r4, #0xa0]
0076208c  1b 00 00 1a                                      bne #0x762100
00762090  a0 70 94 e5                                      ldr r7, [r4, #0xa0]
00762094  00 00 57 e3                                      cmp r7, #0
00762098  04 00 00 0a                                      beq #0x7620b0
0076209c  07 00 a0 e1                                      mov r0, r7
007620a0  27 69 00 eb                                      bl #0x77c544
007620a4  07 00 a0 e1                                      mov r0, r7
007620a8  00 10 a0 e3                                      mov r1, #0
007620ac  a1 c2 ff eb                                      bl #0x752b38
007620b0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007620b4  00 10 a0 e3                                      mov r1, #0
007620b8  14 00 a0 e3                                      mov r0, #0x14
007620bc  9c 30 84 e5                                      str r3, [r4, #0x9c]
007620c0  b8 c2 ff eb                                      bl #0x752ba8
007620c4  00 70 a0 e1                                      mov r7, r0
007620c8  41 04 a0 e3                                      mov r0, #0x41000000
007620cc  0a 10 a0 e1                                      mov r1, sl
007620d0  0a 06 80 e2                                      add r0, r0, #0xa00000
007620d4  ee b2 ee eb                                      bl #0x30ec94
007620d8  08 10 a0 e1                                      mov r1, r8
007620dc  ec b2 ee eb                                      bl #0x30ec94
007620e0  fd 15 a0 e3                                      mov r1, #0x3f400000
007620e4  20 b3 ee eb                                      bl #0x30ed6c
007620e8  20 80 84 e2                                      add r8, r4, #0x20
007620ec  00 20 a0 e1                                      mov r2, r0
007620f0  08 10 a0 e1                                      mov r1, r8
007620f4  07 00 a0 e1                                      mov r0, r7
007620f8  17 62 00 eb                                      bl #0x77a95c
007620fc  a0 70 84 e5                                      str r7, [r4, #0xa0]
00762100  24 30 84 e2                                      add r3, r4, #0x24
00762104  07 00 a0 e1                                      mov r0, r7
00762108  34 40 84 e2                                      add r4, r4, #0x34
0076210c  06 10 a0 e1                                      mov r1, r6
00762110  05 20 a0 e1                                      mov r2, r5
00762114  00 40 8d e5                                      str r4, [sp]
00762118  23 5d 00 eb                                      bl #0x7795ac
0076211c  74 d0 8d e2                                      add sp, sp, #0x74
00762120  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00762124, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::morph2_character_def
; alias: _ZThn32_N7gameswf20morph2_character_defD1Ev
; demangled: non-virtual thunk to gameswf::morph2_character_def::~morph2_character_def()
; decoder-mode: arm
00762124  20 00 40 e2                                      sub r0, r0, #0x20
00762128  ff ff ff ea                                      b #0x76212c

; FUNCTION 0x0076212c, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::morph2_character_def
; alias: _ZN7gameswf20morph2_character_defD1Ev
; demangled: gameswf::morph2_character_def::~morph2_character_def()
; decoder-mode: arm
0076212c  40 20 9f e5                                      ldr r2, [pc, #0x40]
00762130  40 30 9f e5                                      ldr r3, [pc, #0x40]
00762134  10 40 2d e9                                      push {r4, lr}
00762138  02 20 8f e0                                      add r2, pc, r2
0076213c  03 30 92 e7                                      ldr r3, [r2, r3]
00762140  00 40 a0 e1                                      mov r4, r0
00762144  8c 00 90 e5                                      ldr r0, [r0, #0x8c]
00762148  44 20 83 e2                                      add r2, r3, #0x44
0076214c  08 30 83 e2                                      add r3, r3, #8
00762150  00 30 84 e5                                      str r3, [r4]
00762154  20 20 84 e5                                      str r2, [r4, #0x20]
00762158  96 fc ff eb                                      bl #0x7613b8
0076215c  88 00 94 e5                                      ldr r0, [r4, #0x88]
00762160  94 fc ff eb                                      bl #0x7613b8
00762164  04 00 a0 e1                                      mov r0, r4
00762168  00 69 00 eb                                      bl #0x77c570
0076216c  04 00 a0 e1                                      mov r0, r4
00762170  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00762174  58 29 23 00 d4 11 00 00                          .byte 0x58, 0x29, 0x23, 0x00, 0xd4, 0x11, 0x00, 0x00

; FUNCTION 0x0076217c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::morph2_character_def
; alias: _ZThn32_N7gameswf20morph2_character_defD0Ev
; demangled: non-virtual thunk to gameswf::morph2_character_def::~morph2_character_def()
; decoder-mode: arm
0076217c  20 00 40 e2                                      sub r0, r0, #0x20
00762180  ff ff ff ea                                      b #0x762184

; FUNCTION 0x00762184, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::morph2_character_def
; alias: _ZN7gameswf20morph2_character_defD0Ev
; demangled: gameswf::morph2_character_def::~morph2_character_def()
; decoder-mode: arm
00762184  10 40 2d e9                                      push {r4, lr}
00762188  00 40 a0 e1                                      mov r4, r0
0076218c  e6 ff ff eb                                      bl #0x76212c
00762190  04 00 a0 e1                                      mov r0, r4
00762194  45 b0 ee eb                                      bl #0x30e2b0
00762198  04 00 a0 e1                                      mov r0, r4
0076219c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007621a0, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::morph2_character_def
; alias: _ZN7gameswf20morph2_character_defD2Ev
; demangled: gameswf::morph2_character_def::~morph2_character_def()
; decoder-mode: arm
007621a0  40 20 9f e5                                      ldr r2, [pc, #0x40]
007621a4  40 30 9f e5                                      ldr r3, [pc, #0x40]
007621a8  10 40 2d e9                                      push {r4, lr}
007621ac  02 20 8f e0                                      add r2, pc, r2
007621b0  03 30 92 e7                                      ldr r3, [r2, r3]
007621b4  00 40 a0 e1                                      mov r4, r0
007621b8  8c 00 90 e5                                      ldr r0, [r0, #0x8c]
007621bc  44 20 83 e2                                      add r2, r3, #0x44
007621c0  08 30 83 e2                                      add r3, r3, #8
007621c4  00 30 84 e5                                      str r3, [r4]
007621c8  20 20 84 e5                                      str r2, [r4, #0x20]
007621cc  79 fc ff eb                                      bl #0x7613b8
007621d0  88 00 94 e5                                      ldr r0, [r4, #0x88]
007621d4  77 fc ff eb                                      bl #0x7613b8
007621d8  04 00 a0 e1                                      mov r0, r4
007621dc  e3 68 00 eb                                      bl #0x77c570
007621e0  04 00 a0 e1                                      mov r0, r4
007621e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007621e8  e4 28 23 00 d4 11 00 00                          .byte 0xe4, 0x28, 0x23, 0x00, 0xd4, 0x11, 0x00, 0x00

; FUNCTION 0x007621f0, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::morph2_character_def
; alias: _ZN7gameswf20morph2_character_defC1EPNS_6playerE
; demangled: gameswf::morph2_character_def::morph2_character_def(gameswf::player*)
; decoder-mode: arm
007621f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007621f4  78 50 9f e5                                      ldr r5, [pc, #0x78]
007621f8  00 40 a0 e1                                      mov r4, r0
007621fc  01 70 a0 e1                                      mov r7, r1
00762200  be 65 00 eb                                      bl #0x77b900
00762204  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00762208  05 50 8f e0                                      add r5, pc, r5
0076220c  bf 24 a0 e3                                      mov r2, #0xbf000000
00762210  03 30 95 e7                                      ldr r3, [r5, r3]
00762214  02 25 82 e2                                      add r2, r2, #0x800000
00762218  00 60 a0 e3                                      mov r6, #0
0076221c  9c 20 84 e5                                      str r2, [r4, #0x9c]
00762220  44 20 83 e2                                      add r2, r3, #0x44
00762224  08 30 83 e2                                      add r3, r3, #8
00762228  00 30 84 e5                                      str r3, [r4]
0076222c  20 20 84 e5                                      str r2, [r4, #0x20]
00762230  06 10 a0 e1                                      mov r1, r6
00762234  a0 60 84 e5                                      str r6, [r4, #0xa0]
00762238  88 00 a0 e3                                      mov r0, #0x88
0076223c  59 c2 ff eb                                      bl #0x752ba8
00762240  00 80 a0 e1                                      mov r8, r0
00762244  07 10 a0 e1                                      mov r1, r7
00762248  8a 65 00 eb                                      bl #0x77b878
0076224c  06 10 a0 e1                                      mov r1, r6
00762250  88 80 84 e5                                      str r8, [r4, #0x88]
00762254  88 00 a0 e3                                      mov r0, #0x88
00762258  52 c2 ff eb                                      bl #0x752ba8
0076225c  07 10 a0 e1                                      mov r1, r7
00762260  00 50 a0 e1                                      mov r5, r0
00762264  83 65 00 eb                                      bl #0x77b878
00762268  8c 50 84 e5                                      str r5, [r4, #0x8c]
0076226c  04 00 a0 e1                                      mov r0, r4
00762270  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00762274  88 28 23 00 d4 11 00 00                          .byte 0x88, 0x28, 0x23, 0x00, 0xd4, 0x11, 0x00, 0x00

; FUNCTION 0x0076227c, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::morph2_character_def
; alias: _ZN7gameswf20morph2_character_defC2EPNS_6playerE
; demangled: gameswf::morph2_character_def::morph2_character_def(gameswf::player*)
; decoder-mode: arm
0076227c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00762280  78 50 9f e5                                      ldr r5, [pc, #0x78]
00762284  00 40 a0 e1                                      mov r4, r0
00762288  01 70 a0 e1                                      mov r7, r1
0076228c  9b 65 00 eb                                      bl #0x77b900
00762290  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00762294  05 50 8f e0                                      add r5, pc, r5
00762298  bf 24 a0 e3                                      mov r2, #0xbf000000
0076229c  03 30 95 e7                                      ldr r3, [r5, r3]
007622a0  02 25 82 e2                                      add r2, r2, #0x800000
007622a4  00 60 a0 e3                                      mov r6, #0
007622a8  9c 20 84 e5                                      str r2, [r4, #0x9c]
007622ac  44 20 83 e2                                      add r2, r3, #0x44
007622b0  08 30 83 e2                                      add r3, r3, #8
007622b4  00 30 84 e5                                      str r3, [r4]
007622b8  20 20 84 e5                                      str r2, [r4, #0x20]
007622bc  06 10 a0 e1                                      mov r1, r6
007622c0  a0 60 84 e5                                      str r6, [r4, #0xa0]
007622c4  88 00 a0 e3                                      mov r0, #0x88
007622c8  36 c2 ff eb                                      bl #0x752ba8
007622cc  00 80 a0 e1                                      mov r8, r0
007622d0  07 10 a0 e1                                      mov r1, r7
007622d4  67 65 00 eb                                      bl #0x77b878
007622d8  06 10 a0 e1                                      mov r1, r6
007622dc  88 80 84 e5                                      str r8, [r4, #0x88]
007622e0  88 00 a0 e3                                      mov r0, #0x88
007622e4  2f c2 ff eb                                      bl #0x752ba8
007622e8  07 10 a0 e1                                      mov r1, r7
007622ec  00 50 a0 e1                                      mov r5, r0
007622f0  60 65 00 eb                                      bl #0x77b878
007622f4  8c 50 84 e5                                      str r5, [r4, #0x8c]
007622f8  04 00 a0 e1                                      mov r0, r4
007622fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00762300  fc 27 23 00 d4 11 00 00                          .byte 0xfc, 0x27, 0x23, 0x00, 0xd4, 0x11, 0x00, 0x00

; FUNCTION 0x00762308, declared_size=4800, range_size=4800, mode=arm
; class-group: gameswf::morph2_character_def
; alias: _ZN7gameswf20morph2_character_def4readEPNS_6streamEibPNS_20movie_definition_subE
; demangled: gameswf::morph2_character_def::read(gameswf::stream*, int, bool, gameswf::movie_definition_sub*)
; decoder-mode: arm
00762308  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076230c  9f df 4d e2                                      sub sp, sp, #0x27c
00762310  9a 8f 8d e2                                      add r8, sp, #0x268
00762314  00 50 a0 e1                                      mov r5, r0
00762318  01 40 a0 e1                                      mov r4, r1
0076231c  08 00 a0 e1                                      mov r0, r8
00762320  96 7f 8d e2                                      add r7, sp, #0x258
00762324  02 60 a0 e1                                      mov r6, r2
00762328  2f cf 00 eb                                      bl #0x795fec
0076232c  07 00 a0 e1                                      mov r0, r7
00762330  04 10 a0 e1                                      mov r1, r4
00762334  2c cf 00 eb                                      bl #0x795fec
00762338  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
0076233c  88 c0 95 e5                                      ldr ip, [r5, #0x88]
00762340  98 ef 9f e5                                      ldr lr, [pc, #0xf98]
00762344  54 00 56 e3                                      cmp r6, #0x54
00762348  54 c0 8c e2                                      add ip, ip, #0x54
0076234c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00762350  8c c0 95 e5                                      ldr ip, [r5, #0x8c]
00762354  0e e0 8f e0                                      add lr, pc, lr
00762358  18 e0 8d e5                                      str lr, [sp, #0x18]
0076235c  54 c0 8c e2                                      add ip, ip, #0x54
00762360  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
00762364  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00762368  7a 04 00 0a                                      beq #0x763558
0076236c  04 00 a0 e1                                      mov r0, r4
00762370  e9 86 00 eb                                      bl #0x783f1c
00762374  90 00 85 e5                                      str r0, [r5, #0x90]
00762378  04 00 a0 e1                                      mov r0, r4
0076237c  e9 85 00 eb                                      bl #0x783b28
00762380  ff 00 50 e3                                      cmp r0, #0xff
00762384  67 04 00 0a                                      beq #0x763528
00762388  00 00 50 e3                                      cmp r0, #0
0076238c  94 00 85 e5                                      str r0, [r5, #0x94]
00762390  1b 01 00 0a                                      beq #0x762804
00762394  8a 0f 8d e2                                      add r0, sp, #0x228
00762398  04 10 80 e2                                      add r1, r0, #4
0076239c  04 20 81 e2                                      add r2, r1, #4
007623a0  09 3d 8d e2                                      add r3, sp, #0x240
007623a4  04 c0 82 e2                                      add ip, r2, #4
007623a8  04 e0 83 e2                                      add lr, r3, #4
007623ac  1c 00 8d e5                                      str r0, [sp, #0x1c]
007623b0  28 10 8d e5                                      str r1, [sp, #0x28]
007623b4  08 00 8c e2                                      add r0, ip, #8
007623b8  04 10 8e e2                                      add r1, lr, #4
007623bc  2c 20 8d e5                                      str r2, [sp, #0x2c]
007623c0  20 30 8d e5                                      str r3, [sp, #0x20]
007623c4  30 c0 8d e5                                      str ip, [sp, #0x30]
007623c8  34 e0 8d e5                                      str lr, [sp, #0x34]
007623cc  00 90 a0 e3                                      mov sb, #0
007623d0  63 8f 8d e2                                      add r8, sp, #0x18c
007623d4  12 ae 8d e2                                      add sl, sp, #0x120
007623d8  38 00 8d e5                                      str r0, [sp, #0x38]
007623dc  24 10 8d e5                                      str r1, [sp, #0x24]
007623e0  17 00 00 ea                                      b #0x762444
007623e4  10 00 50 e3                                      cmp r0, #0x10
007623e8  12 00 50 13                                      cmpne r0, #0x12
007623ec  00 70 a0 13                                      movne r7, #0
007623f0  01 70 a0 03                                      moveq r7, #1
007623f4  23 00 00 0a                                      beq #0x762488
007623f8  40 00 40 e2                                      sub r0, r0, #0x40
007623fc  01 00 50 e3                                      cmp r0, #1
00762400  0c 03 00 9a                                      bls #0x763038
00762404  88 00 95 e5                                      ldr r0, [r5, #0x88]
00762408  08 10 a0 e1                                      mov r1, r8
0076240c  01 90 89 e2                                      add sb, sb, #1
00762410  24 00 80 e2                                      add r0, r0, #0x24
00762414  55 fd ff eb                                      bl #0x761970
00762418  8c 00 95 e5                                      ldr r0, [r5, #0x8c]
0076241c  0a 10 a0 e1                                      mov r1, sl
00762420  24 00 80 e2                                      add r0, r0, #0x24
00762424  51 fd ff eb                                      bl #0x761970
00762428  0a 00 a0 e1                                      mov r0, sl
0076242c  1e 8a 00 eb                                      bl #0x784cac
00762430  08 00 a0 e1                                      mov r0, r8
00762434  1c 8a 00 eb                                      bl #0x784cac
00762438  94 30 95 e5                                      ldr r3, [r5, #0x94]
0076243c  09 00 53 e1                                      cmp r3, sb
00762440  ef 00 00 da                                      ble #0x762804
00762444  08 00 a0 e1                                      mov r0, r8
00762448  8f 89 00 eb                                      bl #0x784a8c
0076244c  0a 00 a0 e1                                      mov r0, sl
00762450  8d 89 00 eb                                      bl #0x784a8c
00762454  04 00 a0 e1                                      mov r0, r4
00762458  b2 85 00 eb                                      bl #0x783b28
0076245c  00 00 50 e3                                      cmp r0, #0
00762460  90 01 8d e5                                      str r0, [sp, #0x190]
00762464  24 01 8d e5                                      str r0, [sp, #0x124]
00762468  dd ff ff 1a                                      bne #0x7623e4
0076246c  08 00 88 e2                                      add r0, r8, #8
00762470  04 10 a0 e1                                      mov r1, r4
00762474  03 d1 00 eb                                      bl #0x796888
00762478  08 00 8a e2                                      add r0, sl, #8
0076247c  04 10 a0 e1                                      mov r1, r4
00762480  00 d1 00 eb                                      bl #0x796888
00762484  de ff ff ea                                      b #0x762404
00762488  21 2e 8d e2                                      add r2, sp, #0x210
0076248c  00 70 a0 e3                                      mov r7, #0
00762490  14 20 8d e5                                      str r2, [sp, #0x14]
00762494  08 20 82 e2                                      add r2, r2, #8
00762498  04 70 82 e4                                      str r7, [r2], #4
0076249c  04 70 82 e4                                      str r7, [r2], #4
007624a0  7e 3f 8d e2                                      add r3, sp, #0x1f8
007624a4  fe b5 a0 e3                                      mov fp, #0x3f800000
007624a8  04 70 82 e4                                      str r7, [r2], #4
007624ac  10 30 8d e5                                      str r3, [sp, #0x10]
007624b0  08 30 83 e2                                      add r3, r3, #8
007624b4  00 70 82 e5                                      str r7, [r2]
007624b8  10 b2 8d e5                                      str fp, [sp, #0x210]
007624bc  20 b2 8d e5                                      str fp, [sp, #0x220]
007624c0  04 70 83 e4                                      str r7, [r3], #4
007624c4  04 70 83 e4                                      str r7, [r3], #4
007624c8  04 70 83 e4                                      str r7, [r3], #4
007624cc  00 70 83 e5                                      str r7, [r3]
007624d0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007624d4  04 10 a0 e1                                      mov r1, r4
007624d8  14 72 8d e5                                      str r7, [sp, #0x214]
007624dc  fc 71 8d e5                                      str r7, [sp, #0x1fc]
007624e0  f8 b1 8d e5                                      str fp, [sp, #0x1f8]
007624e4  08 b2 8d e5                                      str fp, [sp, #0x208]
007624e8  39 d0 00 eb                                      bl #0x7965d4
007624ec  10 00 9d e5                                      ldr r0, [sp, #0x10]
007624f0  04 10 a0 e1                                      mov r1, r4
007624f4  36 d0 00 eb                                      bl #0x7965d4
007624f8  90 31 9d e5                                      ldr r3, [sp, #0x190]
007624fc  0c 70 88 e5                                      str r7, [r8, #0xc]
00762500  10 70 88 e5                                      str r7, [r8, #0x10]
00762504  10 00 53 e3                                      cmp r3, #0x10
00762508  14 70 88 e5                                      str r7, [r8, #0x14]
0076250c  18 70 88 e5                                      str r7, [r8, #0x18]
00762510  1c 70 88 e5                                      str r7, [r8, #0x1c]
00762514  20 70 88 e5                                      str r7, [r8, #0x20]
00762518  98 b1 8d e5                                      str fp, [sp, #0x198]
0076251c  a8 b1 8d e5                                      str fp, [sp, #0x1a8]
00762520  20 70 8a e5                                      str r7, [sl, #0x20]
00762524  0c 70 8a e5                                      str r7, [sl, #0xc]
00762528  10 70 8a e5                                      str r7, [sl, #0x10]
0076252c  14 70 8a e5                                      str r7, [sl, #0x14]
00762530  18 70 8a e5                                      str r7, [sl, #0x18]
00762534  1c 70 8a e5                                      str r7, [sl, #0x1c]
00762538  3c b1 8d e5                                      str fp, [sp, #0x13c]
0076253c  2c b1 8d e5                                      str fp, [sp, #0x12c]
00762540  ea 02 00 0a                                      beq #0x7630f0
00762544  42 14 a0 e3                                      mov r1, #0x42000000
00762548  98 01 9d e5                                      ldr r0, [sp, #0x198]
0076254c  06 b2 ee eb                                      bl #0x30ed6c
00762550  42 14 a0 e3                                      mov r1, #0x42000000
00762554  00 70 a0 e1                                      mov r7, r0
00762558  9c 01 9d e5                                      ldr r0, [sp, #0x19c]
0076255c  02 b2 ee eb                                      bl #0x30ed6c
00762560  00 10 a0 e1                                      mov r1, r0
00762564  07 00 a0 e1                                      mov r0, r7
00762568  8d b1 ee eb                                      bl #0x30eba4
0076256c  a0 11 9d e5                                      ldr r1, [sp, #0x1a0]
00762570  8b b1 ee eb                                      bl #0x30eba4
00762574  02 15 e0 e3                                      mvn r1, #0x800000
00762578  00 70 a0 e1                                      mov r7, r0
0076257c  cc af ee eb                                      bl #0x30e4b4
00762580  00 00 50 e3                                      cmp r0, #0
00762584  9c 00 00 0a                                      beq #0x7627fc
00762588  02 11 e0 e3                                      mvn r1, #0x80000000
0076258c  07 00 a0 e1                                      mov r0, r7
00762590  02 15 41 e2                                      sub r1, r1, #0x800000
00762594  04 b1 ee eb                                      bl #0x30e9ac
00762598  00 00 50 e3                                      cmp r0, #0
0076259c  96 00 00 0a                                      beq #0x7627fc
007625a0  42 14 a0 e3                                      mov r1, #0x42000000
007625a4  a4 01 9d e5                                      ldr r0, [sp, #0x1a4]
007625a8  a0 71 8d e5                                      str r7, [sp, #0x1a0]
007625ac  ee b1 ee eb                                      bl #0x30ed6c
007625b0  42 14 a0 e3                                      mov r1, #0x42000000
007625b4  00 70 a0 e1                                      mov r7, r0
007625b8  a8 01 9d e5                                      ldr r0, [sp, #0x1a8]
007625bc  ea b1 ee eb                                      bl #0x30ed6c
007625c0  00 10 a0 e1                                      mov r1, r0
007625c4  07 00 a0 e1                                      mov r0, r7
007625c8  75 b1 ee eb                                      bl #0x30eba4
007625cc  ac 11 9d e5                                      ldr r1, [sp, #0x1ac]
007625d0  73 b1 ee eb                                      bl #0x30eba4
007625d4  02 15 e0 e3                                      mvn r1, #0x800000
007625d8  00 70 a0 e1                                      mov r7, r0
007625dc  b4 af ee eb                                      bl #0x30e4b4
007625e0  00 00 50 e3                                      cmp r0, #0
007625e4  ad 01 00 0a                                      beq #0x762ca0
007625e8  02 11 e0 e3                                      mvn r1, #0x80000000
007625ec  07 00 a0 e1                                      mov r0, r7
007625f0  02 15 41 e2                                      sub r1, r1, #0x800000
007625f4  ec b0 ee eb                                      bl #0x30e9ac
007625f8  00 00 50 e3                                      cmp r0, #0
007625fc  a7 01 00 0a                                      beq #0x762ca0
00762600  0c 00 88 e2                                      add r0, r8, #0xc
00762604  3b 14 a0 e3                                      mov r1, #0x3b000000
00762608  ac 71 8d e5                                      str r7, [sp, #0x1ac]
0076260c  1e fb ff eb                                      bl #0x76128c
00762610  42 14 a0 e3                                      mov r1, #0x42000000
00762614  2c 01 9d e5                                      ldr r0, [sp, #0x12c]
00762618  d3 b1 ee eb                                      bl #0x30ed6c
0076261c  42 14 a0 e3                                      mov r1, #0x42000000
00762620  00 70 a0 e1                                      mov r7, r0
00762624  30 01 9d e5                                      ldr r0, [sp, #0x130]
00762628  cf b1 ee eb                                      bl #0x30ed6c
0076262c  00 10 a0 e1                                      mov r1, r0
00762630  07 00 a0 e1                                      mov r0, r7
00762634  5a b1 ee eb                                      bl #0x30eba4
00762638  34 11 9d e5                                      ldr r1, [sp, #0x134]
0076263c  58 b1 ee eb                                      bl #0x30eba4
00762640  02 15 e0 e3                                      mvn r1, #0x800000
00762644  00 70 a0 e1                                      mov r7, r0
00762648  99 af ee eb                                      bl #0x30e4b4
0076264c  00 00 50 e3                                      cmp r0, #0
00762650  67 00 00 0a                                      beq #0x7627f4
00762654  02 11 e0 e3                                      mvn r1, #0x80000000
00762658  07 00 a0 e1                                      mov r0, r7
0076265c  02 15 41 e2                                      sub r1, r1, #0x800000
00762660  d1 b0 ee eb                                      bl #0x30e9ac
00762664  00 00 50 e3                                      cmp r0, #0
00762668  61 00 00 0a                                      beq #0x7627f4
0076266c  42 14 a0 e3                                      mov r1, #0x42000000
00762670  38 01 9d e5                                      ldr r0, [sp, #0x138]
00762674  34 71 8d e5                                      str r7, [sp, #0x134]
00762678  bb b1 ee eb                                      bl #0x30ed6c
0076267c  42 14 a0 e3                                      mov r1, #0x42000000
00762680  00 70 a0 e1                                      mov r7, r0
00762684  3c 01 9d e5                                      ldr r0, [sp, #0x13c]
00762688  b7 b1 ee eb                                      bl #0x30ed6c
0076268c  00 10 a0 e1                                      mov r1, r0
00762690  07 00 a0 e1                                      mov r0, r7
00762694  42 b1 ee eb                                      bl #0x30eba4
00762698  40 11 9d e5                                      ldr r1, [sp, #0x140]
0076269c  40 b1 ee eb                                      bl #0x30eba4
007626a0  02 15 e0 e3                                      mvn r1, #0x800000
007626a4  00 70 a0 e1                                      mov r7, r0
007626a8  81 af ee eb                                      bl #0x30e4b4
007626ac  00 00 50 e3                                      cmp r0, #0
007626b0  78 01 00 0a                                      beq #0x762c98
007626b4  02 11 e0 e3                                      mvn r1, #0x80000000
007626b8  07 00 a0 e1                                      mov r0, r7
007626bc  02 15 41 e2                                      sub r1, r1, #0x800000
007626c0  b9 b0 ee eb                                      bl #0x30e9ac
007626c4  00 00 50 e3                                      cmp r0, #0
007626c8  72 01 00 0a                                      beq #0x762c98
007626cc  0c 00 8a e2                                      add r0, sl, #0xc
007626d0  3b 14 a0 e3                                      mov r1, #0x3b000000
007626d4  40 71 8d e5                                      str r7, [sp, #0x140]
007626d8  eb fa ff eb                                      bl #0x76128c
007626dc  24 30 9d e5                                      ldr r3, [sp, #0x24]
007626e0  00 70 a0 e3                                      mov r7, #0
007626e4  34 e0 9d e5                                      ldr lr, [sp, #0x34]
007626e8  04 70 83 e4                                      str r7, [r3], #4
007626ec  08 30 83 e2                                      add r3, r3, #8
007626f0  00 70 83 e5                                      str r7, [r3]
007626f4  28 c0 9d e5                                      ldr ip, [sp, #0x28]
007626f8  24 30 9d e5                                      ldr r3, [sp, #0x24]
007626fc  fe 25 a0 e3                                      mov r2, #0x3f800000
00762700  38 22 8d e5                                      str r2, [sp, #0x238]
00762704  00 70 8e e5                                      str r7, [lr]
00762708  04 70 83 e5                                      str r7, [r3, #4]
0076270c  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
00762710  40 22 8d e5                                      str r2, [sp, #0x240]
00762714  50 22 8d e5                                      str r2, [sp, #0x250]
00762718  30 30 9d e5                                      ldr r3, [sp, #0x30]
0076271c  00 70 8c e5                                      str r7, [ip]
00762720  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00762724  00 70 8e e5                                      str r7, [lr]
00762728  00 70 83 e5                                      str r7, [r3]
0076272c  00 70 8c e5                                      str r7, [ip]
00762730  14 10 9d e5                                      ldr r1, [sp, #0x14]
00762734  20 00 9d e5                                      ldr r0, [sp, #0x20]
00762738  28 22 8d e5                                      str r2, [sp, #0x228]
0076273c  e6 cc 00 eb                                      bl #0x795adc
00762740  0c 00 88 e2                                      add r0, r8, #0xc
00762744  20 10 9d e5                                      ldr r1, [sp, #0x20]
00762748  9a cf f2 eb                                      bl #0x4165b8
0076274c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00762750  10 10 9d e5                                      ldr r1, [sp, #0x10]
00762754  e0 cc 00 eb                                      bl #0x795adc
00762758  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0076275c  0c 00 8a e2                                      add r0, sl, #0xc
00762760  94 cf f2 eb                                      bl #0x4165b8
00762764  04 00 a0 e1                                      mov r0, r4
00762768  ee 84 00 eb                                      bl #0x783b28
0076276c  00 b0 a0 e1                                      mov fp, r0
00762770  00 10 a0 e1                                      mov r1, r0
00762774  24 00 88 e2                                      add r0, r8, #0x24
00762778  27 fc ff eb                                      bl #0x76181c
0076277c  24 00 8a e2                                      add r0, sl, #0x24
00762780  0b 10 a0 e1                                      mov r1, fp
00762784  24 fc ff eb                                      bl #0x76181c
00762788  07 00 5b e1                                      cmp fp, r7
0076278c  1c ff ff 0a                                      beq #0x762404
00762790  0b b1 8b e0                                      add fp, fp, fp, lsl #2
00762794  b0 01 9d e5                                      ldr r0, [sp, #0x1b0]
00762798  04 10 a0 e1                                      mov r1, r4
0076279c  06 20 a0 e1                                      mov r2, r6
007627a0  07 00 80 e0                                      add r0, r0, r7
007627a4  91 88 00 eb                                      bl #0x7849f0
007627a8  44 01 9d e5                                      ldr r0, [sp, #0x144]
007627ac  04 10 a0 e1                                      mov r1, r4
007627b0  06 20 a0 e1                                      mov r2, r6
007627b4  07 00 80 e0                                      add r0, r0, r7
007627b8  05 70 87 e2                                      add r7, r7, #5
007627bc  8b 88 00 eb                                      bl #0x7849f0
007627c0  0b 00 57 e1                                      cmp r7, fp
007627c4  f2 ff ff 1a                                      bne #0x762794
007627c8  b0 11 9d e5                                      ldr r1, [sp, #0x1b0]
007627cc  65 0f 8d e2                                      add r0, sp, #0x194
007627d0  04 20 a0 e3                                      mov r2, #4
007627d4  01 10 81 e2                                      add r1, r1, #1
007627d8  22 b0 ee eb                                      bl #0x30e868
007627dc  44 11 9d e5                                      ldr r1, [sp, #0x144]
007627e0  4a 0f 8d e2                                      add r0, sp, #0x128
007627e4  04 20 a0 e3                                      mov r2, #4
007627e8  01 10 81 e2                                      add r1, r1, #1
007627ec  1d b0 ee eb                                      bl #0x30e868
007627f0  03 ff ff ea                                      b #0x762404
007627f4  00 70 a0 e3                                      mov r7, #0
007627f8  9b ff ff ea                                      b #0x76266c
007627fc  00 70 a0 e3                                      mov r7, #0
00762800  66 ff ff ea                                      b #0x7625a0
00762804  04 00 a0 e1                                      mov r0, r4
00762808  c6 84 00 eb                                      bl #0x783b28
0076280c  ff 00 50 e3                                      cmp r0, #0xff
00762810  41 03 00 0a                                      beq #0x76351c
00762814  2e 00 56 e3                                      cmp r6, #0x2e
00762818  98 00 85 e5                                      str r0, [r5, #0x98]
0076281c  8f 00 00 0a                                      beq #0x762a60
00762820  00 00 50 e3                                      cmp r0, #0
00762824  d6 00 00 0a                                      beq #0x762b84
00762828  21 ee 8d e2                                      add lr, sp, #0x210
0076282c  04 00 8e e2                                      add r0, lr, #4
00762830  04 10 80 e2                                      add r1, r0, #4
00762834  7e 2f 8d e2                                      add r2, sp, #0x1f8
00762838  a4 3a 9f e5                                      ldr r3, [pc, #0xaa4]
0076283c  a4 ca 9f e5                                      ldr ip, [pc, #0xaa4]
00762840  20 e0 8d e5                                      str lr, [sp, #0x20]
00762844  34 00 8d e5                                      str r0, [sp, #0x34]
00762848  04 e0 81 e2                                      add lr, r1, #4
0076284c  04 00 82 e2                                      add r0, r2, #4
00762850  38 10 8d e5                                      str r1, [sp, #0x38]
00762854  24 20 8d e5                                      str r2, [sp, #0x24]
00762858  08 10 8e e2                                      add r1, lr, #8
0076285c  04 20 80 e2                                      add r2, r0, #4
00762860  14 30 8d e5                                      str r3, [sp, #0x14]
00762864  1c c0 8d e5                                      str ip, [sp, #0x1c]
00762868  3c e0 8d e5                                      str lr, [sp, #0x3c]
0076286c  40 00 8d e5                                      str r0, [sp, #0x40]
00762870  00 90 a0 e3                                      mov sb, #0
00762874  b4 a0 8d e2                                      add sl, sp, #0xb4
00762878  48 80 8d e2                                      add r8, sp, #0x48
0076287c  44 10 8d e5                                      str r1, [sp, #0x44]
00762880  30 20 8d e5                                      str r2, [sp, #0x30]
00762884  23 00 00 ea                                      b #0x762918
00762888  06 00 8a e2                                      add r0, sl, #6
0076288c  04 10 a0 e1                                      mov r1, r4
00762890  06 20 a0 e1                                      mov r2, r6
00762894  03 d0 00 eb                                      bl #0x7968a8
00762898  06 00 88 e2                                      add r0, r8, #6
0076289c  04 10 a0 e1                                      mov r1, r4
007628a0  06 20 a0 e1                                      mov r2, r6
007628a4  ff cf 00 eb                                      bl #0x7968a8
007628a8  88 00 95 e5                                      ldr r0, [r5, #0x88]
007628ac  0a 10 a0 e1                                      mov r1, sl
007628b0  01 90 89 e2                                      add sb, sb, #1
007628b4  34 00 80 e2                                      add r0, r0, #0x34
007628b8  3e fc ff eb                                      bl #0x7619b8
007628bc  8c 00 95 e5                                      ldr r0, [r5, #0x8c]
007628c0  08 10 a0 e1                                      mov r1, r8
007628c4  34 00 80 e2                                      add r0, r0, #0x34
007628c8  3a fc ff eb                                      bl #0x7619b8
007628cc  18 10 9d e5                                      ldr r1, [sp, #0x18]
007628d0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007628d4  00 b0 91 e7                                      ldr fp, [r1, r0]
007628d8  0c 00 88 e2                                      add r0, r8, #0xc
007628dc  08 b0 8b e2                                      add fp, fp, #8
007628e0  48 b0 8d e5                                      str fp, [sp, #0x48]
007628e4  f0 88 00 eb                                      bl #0x784cac
007628e8  18 30 9d e5                                      ldr r3, [sp, #0x18]
007628ec  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007628f0  0c 00 8a e2                                      add r0, sl, #0xc
007628f4  b4 b0 8d e5                                      str fp, [sp, #0xb4]
007628f8  02 70 93 e7                                      ldr r7, [r3, r2]
007628fc  08 70 87 e2                                      add r7, r7, #8
00762900  48 70 8d e5                                      str r7, [sp, #0x48]
00762904  e8 88 00 eb                                      bl #0x784cac
00762908  98 30 95 e5                                      ldr r3, [r5, #0x98]
0076290c  b4 70 8d e5                                      str r7, [sp, #0xb4]
00762910  09 00 53 e1                                      cmp r3, sb
00762914  9a 00 00 da                                      ble #0x762b84
00762918  0a 00 a0 e1                                      mov r0, sl
0076291c  7f 88 00 eb                                      bl #0x784b20
00762920  08 00 a0 e1                                      mov r0, r8
00762924  7d 88 00 eb                                      bl #0x784b20
00762928  04 00 a0 e1                                      mov r0, r4
0076292c  b8 84 00 eb                                      bl #0x783c14
00762930  09 32 a0 e3                                      mov r3, #0x90000000
00762934  9e cf 8d e2                                      add ip, sp, #0x278
00762938  43 3b a0 e1                                      asr r3, r3, #0x16
0076293c  b3 00 8c e1                                      strh r0, [ip, r3]
00762940  04 00 a0 e1                                      mov r0, r4
00762944  b2 84 00 eb                                      bl #0x783c14
00762948  00 30 a0 e3                                      mov r3, #0
0076294c  8b 3f 43 e2                                      sub r3, r3, #0x22c
00762950  9e ef 8d e2                                      add lr, sp, #0x278
00762954  b3 00 8e e1                                      strh r0, [lr, r3]
00762958  02 10 a0 e3                                      mov r1, #2
0076295c  04 00 a0 e1                                      mov r0, r4
00762960  0f 84 00 eb                                      bl #0x7839a4
00762964  02 10 a0 e3                                      mov r1, #2
00762968  04 00 a0 e1                                      mov r0, r4
0076296c  0c 84 00 eb                                      bl #0x7839a4
00762970  01 10 a0 e3                                      mov r1, #1
00762974  00 b0 a0 e1                                      mov fp, r0
00762978  04 00 a0 e1                                      mov r0, r4
0076297c  08 84 00 eb                                      bl #0x7839a4
00762980  01 10 a0 e3                                      mov r1, #1
00762984  00 70 a0 e1                                      mov r7, r0
00762988  04 00 a0 e1                                      mov r0, r4
0076298c  04 84 00 eb                                      bl #0x7839a4
00762990  01 10 a0 e3                                      mov r1, #1
00762994  04 00 a0 e1                                      mov r0, r4
00762998  01 84 00 eb                                      bl #0x7839a4
0076299c  01 10 a0 e3                                      mov r1, #1
007629a0  04 00 a0 e1                                      mov r0, r4
007629a4  fe 83 00 eb                                      bl #0x7839a4
007629a8  01 10 a0 e3                                      mov r1, #1
007629ac  04 00 a0 e1                                      mov r0, r4
007629b0  fb 83 00 eb                                      bl #0x7839a4
007629b4  01 10 a0 e3                                      mov r1, #1
007629b8  04 00 a0 e1                                      mov r0, r4
007629bc  f8 83 00 eb                                      bl #0x7839a4
007629c0  04 00 a0 e1                                      mov r0, r4
007629c4  02 10 a0 e3                                      mov r1, #2
007629c8  f5 83 00 eb                                      bl #0x7839a4
007629cc  02 00 5b e3                                      cmp fp, #2
007629d0  ad 00 00 0a                                      beq #0x762c8c
007629d4  00 00 57 e3                                      cmp r7, #0
007629d8  aa ff ff 0a                                      beq #0x762888
007629dc  12 0e 8d e2                                      add r0, sp, #0x120
007629e0  63 bf 8d e2                                      add fp, sp, #0x18c
007629e4  10 00 8d e5                                      str r0, [sp, #0x10]
007629e8  27 88 00 eb                                      bl #0x784a8c
007629ec  0b 00 a0 e1                                      mov r0, fp
007629f0  25 88 00 eb                                      bl #0x784a8c
007629f4  04 00 a0 e1                                      mov r0, r4
007629f8  4a 84 00 eb                                      bl #0x783b28
007629fc  00 00 50 e3                                      cmp r0, #0
00762a00  24 01 8d e5                                      str r0, [sp, #0x124]
00762a04  90 01 8d e5                                      str r0, [sp, #0x190]
00762a08  0c 00 00 0a                                      beq #0x762a40
00762a0c  10 00 50 e3                                      cmp r0, #0x10
00762a10  12 00 50 13                                      cmpne r0, #0x12
00762a14  00 70 a0 13                                      movne r7, #0
00762a18  01 70 a0 03                                      moveq r7, #1
00762a1c  a1 00 00 0a                                      beq #0x762ca8
00762a20  40 00 40 e2                                      sub r0, r0, #0x40
00762a24  01 00 50 e3                                      cmp r0, #1
00762a28  2f 02 00 9a                                      bls #0x7632ec
00762a2c  0b 00 a0 e1                                      mov r0, fp
00762a30  9d 88 00 eb                                      bl #0x784cac
00762a34  10 00 9d e5                                      ldr r0, [sp, #0x10]
00762a38  9b 88 00 eb                                      bl #0x784cac
00762a3c  99 ff ff ea                                      b #0x7628a8
00762a40  10 10 9d e5                                      ldr r1, [sp, #0x10]
00762a44  08 00 81 e2                                      add r0, r1, #8
00762a48  04 10 a0 e1                                      mov r1, r4
00762a4c  8d cf 00 eb                                      bl #0x796888
00762a50  08 00 8b e2                                      add r0, fp, #8
00762a54  04 10 a0 e1                                      mov r1, r4
00762a58  8a cf 00 eb                                      bl #0x796888
00762a5c  f2 ff ff ea                                      b #0x762a2c
00762a60  00 00 50 e3                                      cmp r0, #0
00762a64  46 00 00 0a                                      beq #0x762b84
00762a68  63 8f 8d e2                                      add r8, sp, #0x18c
00762a6c  70 08 9f e5                                      ldr r0, [pc, #0x870]
00762a70  70 18 9f e5                                      ldr r1, [pc, #0x870]
00762a74  12 ae 8d e2                                      add sl, sp, #0x120
00762a78  06 30 88 e2                                      add r3, r8, #6
00762a7c  ab 24 a0 e3                                      mov r2, #0xab000000
00762a80  28 60 8d e5                                      str r6, [sp, #0x28]
00762a84  18 60 9d e5                                      ldr r6, [sp, #0x18]
00762a88  42 2b a0 e1                                      asr r2, r2, #0x16
00762a8c  20 30 8d e5                                      str r3, [sp, #0x20]
00762a90  06 c0 8a e2                                      add ip, sl, #6
00762a94  0c 30 8a e2                                      add r3, sl, #0xc
00762a98  14 00 8d e5                                      str r0, [sp, #0x14]
00762a9c  1c 10 8d e5                                      str r1, [sp, #0x1c]
00762aa0  10 20 8d e5                                      str r2, [sp, #0x10]
00762aa4  00 70 a0 e3                                      mov r7, #0
00762aa8  24 c0 8d e5                                      str ip, [sp, #0x24]
00762aac  0c 90 88 e2                                      add sb, r8, #0xc
00762ab0  03 b0 a0 e1                                      mov fp, r3
00762ab4  08 00 a0 e1                                      mov r0, r8
00762ab8  18 88 00 eb                                      bl #0x784b20
00762abc  0a 00 a0 e1                                      mov r0, sl
00762ac0  16 88 00 eb                                      bl #0x784b20
00762ac4  04 00 a0 e1                                      mov r0, r4
00762ac8  51 84 00 eb                                      bl #0x783c14
00762acc  01 ec 8d e2                                      add lr, sp, #0x100
00762ad0  b0 09 ce e1                                      strh r0, [lr, #0x90]
00762ad4  04 00 a0 e1                                      mov r0, r4
00762ad8  4d 84 00 eb                                      bl #0x783c14
00762adc  10 10 9d e5                                      ldr r1, [sp, #0x10]
00762ae0  9e 2f 8d e2                                      add r2, sp, #0x278
00762ae4  01 70 87 e2                                      add r7, r7, #1
00762ae8  b1 00 82 e1                                      strh r0, [r2, r1]
00762aec  2e 20 a0 e3                                      mov r2, #0x2e
00762af0  20 00 9d e5                                      ldr r0, [sp, #0x20]
00762af4  04 10 a0 e1                                      mov r1, r4
00762af8  6a cf 00 eb                                      bl #0x7968a8
00762afc  2e 20 a0 e3                                      mov r2, #0x2e
00762b00  24 00 9d e5                                      ldr r0, [sp, #0x24]
00762b04  04 10 a0 e1                                      mov r1, r4
00762b08  66 cf 00 eb                                      bl #0x7968a8
00762b0c  88 00 95 e5                                      ldr r0, [r5, #0x88]
00762b10  08 10 a0 e1                                      mov r1, r8
00762b14  34 00 80 e2                                      add r0, r0, #0x34
00762b18  a6 fb ff eb                                      bl #0x7619b8
00762b1c  8c 00 95 e5                                      ldr r0, [r5, #0x8c]
00762b20  0a 10 a0 e1                                      mov r1, sl
00762b24  34 00 80 e2                                      add r0, r0, #0x34
00762b28  a2 fb ff eb                                      bl #0x7619b8
00762b2c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00762b30  0b 00 a0 e1                                      mov r0, fp
00762b34  03 20 96 e7                                      ldr r2, [r6, r3]
00762b38  08 20 82 e2                                      add r2, r2, #8
00762b3c  20 21 8d e5                                      str r2, [sp, #0x120]
00762b40  0c 20 8d e5                                      str r2, [sp, #0xc]
00762b44  58 88 00 eb                                      bl #0x784cac
00762b48  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00762b4c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00762b50  09 00 a0 e1                                      mov r0, sb
00762b54  0c 30 96 e7                                      ldr r3, [r6, ip]
00762b58  8c 21 8d e5                                      str r2, [sp, #0x18c]
00762b5c  08 30 83 e2                                      add r3, r3, #8
00762b60  20 31 8d e5                                      str r3, [sp, #0x120]
00762b64  0c 30 8d e5                                      str r3, [sp, #0xc]
00762b68  4f 88 00 eb                                      bl #0x784cac
00762b6c  98 20 95 e5                                      ldr r2, [r5, #0x98]
00762b70  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00762b74  07 00 52 e1                                      cmp r2, r7
00762b78  8c 31 8d e5                                      str r3, [sp, #0x18c]
00762b7c  cc ff ff ca                                      bgt #0x762ab4
00762b80  28 60 9d e5                                      ldr r6, [sp, #0x28]
00762b84  a0 c2 9d e5                                      ldr ip, [sp, #0x2a0]
00762b88  88 00 95 e5                                      ldr r0, [r5, #0x88]
00762b8c  04 10 a0 e1                                      mov r1, r4
00762b90  06 20 a0 e1                                      mov r2, r6
00762b94  00 30 a0 e3                                      mov r3, #0
00762b98  00 c0 8d e5                                      str ip, [sp]
00762b9c  ed 60 00 eb                                      bl #0x77af58
00762ba0  04 00 a0 e1                                      mov r0, r4
00762ba4  db 83 00 eb                                      bl #0x783b18
00762ba8  a0 e2 9d e5                                      ldr lr, [sp, #0x2a0]
00762bac  8c 00 95 e5                                      ldr r0, [r5, #0x8c]
00762bb0  04 10 a0 e1                                      mov r1, r4
00762bb4  06 20 a0 e1                                      mov r2, r6
00762bb8  00 30 a0 e3                                      mov r3, #0
00762bbc  00 e0 8d e5                                      str lr, [sp]
00762bc0  e4 60 00 eb                                      bl #0x77af58
00762bc4  88 30 95 e5                                      ldr r3, [r5, #0x88]
00762bc8  24 00 85 e2                                      add r0, r5, #0x24
00762bcc  28 10 93 e5                                      ldr r1, [r3, #0x28]
00762bd0  25 fa ff eb                                      bl #0x76146c
00762bd4  28 30 95 e5                                      ldr r3, [r5, #0x28]
00762bd8  00 00 53 e3                                      cmp r3, #0
00762bdc  0e 00 00 da                                      ble #0x762c1c
00762be0  00 40 a0 e3                                      mov r4, #0
00762be4  04 60 a0 e1                                      mov r6, r4
00762be8  88 30 95 e5                                      ldr r3, [r5, #0x88]
00762bec  24 00 95 e5                                      ldr r0, [r5, #0x24]
00762bf0  01 60 86 e2                                      add r6, r6, #1
00762bf4  24 30 93 e5                                      ldr r3, [r3, #0x24]
00762bf8  04 00 80 e0                                      add r0, r0, r4
00762bfc  24 00 80 e2                                      add r0, r0, #0x24
00762c00  04 30 83 e0                                      add r3, r3, r4
00762c04  28 10 93 e5                                      ldr r1, [r3, #0x28]
00762c08  03 fb ff eb                                      bl #0x76181c
00762c0c  28 30 95 e5                                      ldr r3, [r5, #0x28]
00762c10  54 40 84 e2                                      add r4, r4, #0x54
00762c14  03 00 56 e1                                      cmp r6, r3
00762c18  f2 ff ff ba                                      blt #0x762be8
00762c1c  88 30 95 e5                                      ldr r3, [r5, #0x88]
00762c20  34 00 85 e2                                      add r0, r5, #0x34
00762c24  38 10 93 e5                                      ldr r1, [r3, #0x38]
00762c28  59 fa ff eb                                      bl #0x761594
00762c2c  88 30 95 e5                                      ldr r3, [r5, #0x88]
00762c30  44 00 85 e2                                      add r0, r5, #0x44
00762c34  48 10 93 e5                                      ldr r1, [r3, #0x48]
00762c38  ab fb ff eb                                      bl #0x761aec
00762c3c  48 30 95 e5                                      ldr r3, [r5, #0x48]
00762c40  00 00 53 e3                                      cmp r3, #0
00762c44  0e 00 00 da                                      ble #0x762c84
00762c48  00 40 a0 e3                                      mov r4, #0
00762c4c  04 60 a0 e1                                      mov r6, r4
00762c50  88 30 95 e5                                      ldr r3, [r5, #0x88]
00762c54  44 00 95 e5                                      ldr r0, [r5, #0x44]
00762c58  01 60 86 e2                                      add r6, r6, #1
00762c5c  44 30 93 e5                                      ldr r3, [r3, #0x44]
00762c60  04 00 80 e0                                      add r0, r0, r4
00762c64  14 00 80 e2                                      add r0, r0, #0x14
00762c68  04 30 83 e0                                      add r3, r3, r4
00762c6c  18 10 93 e5                                      ldr r1, [r3, #0x18]
00762c70  85 fb ff eb                                      bl #0x761a8c
00762c74  48 30 95 e5                                      ldr r3, [r5, #0x48]
00762c78  28 40 84 e2                                      add r4, r4, #0x28
00762c7c  03 00 56 e1                                      cmp r6, r3
00762c80  f2 ff ff ba                                      blt #0x762c50
00762c84  9f df 8d e2                                      add sp, sp, #0x27c
00762c88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00762c8c  04 00 a0 e1                                      mov r0, r4
00762c90  df 83 00 eb                                      bl #0x783c14
00762c94  4e ff ff ea                                      b #0x7629d4
00762c98  00 70 a0 e3                                      mov r7, #0
00762c9c  8a fe ff ea                                      b #0x7626cc
00762ca0  00 70 a0 e3                                      mov r7, #0
00762ca4  55 fe ff ea                                      b #0x762600
00762ca8  09 2d 8d e2                                      add r2, sp, #0x240
00762cac  00 70 a0 e3                                      mov r7, #0
00762cb0  08 10 82 e2                                      add r1, r2, #8
00762cb4  04 70 81 e4                                      str r7, [r1], #4
00762cb8  04 70 81 e4                                      str r7, [r1], #4
00762cbc  8a 3f 8d e2                                      add r3, sp, #0x228
00762cc0  04 70 81 e4                                      str r7, [r1], #4
00762cc4  2c 20 8d e5                                      str r2, [sp, #0x2c]
00762cc8  28 30 8d e5                                      str r3, [sp, #0x28]
00762ccc  fe 25 a0 e3                                      mov r2, #0x3f800000
00762cd0  08 30 83 e2                                      add r3, r3, #8
00762cd4  00 70 81 e5                                      str r7, [r1]
00762cd8  40 22 8d e5                                      str r2, [sp, #0x240]
00762cdc  50 22 8d e5                                      str r2, [sp, #0x250]
00762ce0  04 70 83 e4                                      str r7, [r3], #4
00762ce4  04 70 83 e4                                      str r7, [r3], #4
00762ce8  04 70 83 e4                                      str r7, [r3], #4
00762cec  00 70 83 e5                                      str r7, [r3]
00762cf0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00762cf4  04 10 a0 e1                                      mov r1, r4
00762cf8  28 22 8d e5                                      str r2, [sp, #0x228]
00762cfc  38 22 8d e5                                      str r2, [sp, #0x238]
00762d00  0c 20 8d e5                                      str r2, [sp, #0xc]
00762d04  44 72 8d e5                                      str r7, [sp, #0x244]
00762d08  2c 72 8d e5                                      str r7, [sp, #0x22c]
00762d0c  30 ce 00 eb                                      bl #0x7965d4
00762d10  28 00 9d e5                                      ldr r0, [sp, #0x28]
00762d14  04 10 a0 e1                                      mov r1, r4
00762d18  2d ce 00 eb                                      bl #0x7965d4
00762d1c  10 e0 9d e5                                      ldr lr, [sp, #0x10]
00762d20  24 31 9d e5                                      ldr r3, [sp, #0x124]
00762d24  0c 70 8e e5                                      str r7, [lr, #0xc]
00762d28  10 70 8e e5                                      str r7, [lr, #0x10]
00762d2c  14 70 8e e5                                      str r7, [lr, #0x14]
00762d30  18 70 8e e5                                      str r7, [lr, #0x18]
00762d34  1c 70 8e e5                                      str r7, [lr, #0x1c]
00762d38  20 70 8e e5                                      str r7, [lr, #0x20]
00762d3c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00762d40  10 00 53 e3                                      cmp r3, #0x10
00762d44  2c 21 8d e5                                      str r2, [sp, #0x12c]
00762d48  3c 21 8d e5                                      str r2, [sp, #0x13c]
00762d4c  20 70 8b e5                                      str r7, [fp, #0x20]
00762d50  0c 70 8b e5                                      str r7, [fp, #0xc]
00762d54  10 70 8b e5                                      str r7, [fp, #0x10]
00762d58  14 70 8b e5                                      str r7, [fp, #0x14]
00762d5c  18 70 8b e5                                      str r7, [fp, #0x18]
00762d60  1c 70 8b e5                                      str r7, [fp, #0x1c]
00762d64  a8 21 8d e5                                      str r2, [sp, #0x1a8]
00762d68  98 21 8d e5                                      str r2, [sp, #0x198]
00762d6c  87 01 00 0a                                      beq #0x763390
00762d70  42 14 a0 e3                                      mov r1, #0x42000000
00762d74  2c 01 9d e5                                      ldr r0, [sp, #0x12c]
00762d78  fb af ee eb                                      bl #0x30ed6c
00762d7c  42 14 a0 e3                                      mov r1, #0x42000000
00762d80  00 70 a0 e1                                      mov r7, r0
00762d84  30 01 9d e5                                      ldr r0, [sp, #0x130]
00762d88  f7 af ee eb                                      bl #0x30ed6c
00762d8c  00 10 a0 e1                                      mov r1, r0
00762d90  07 00 a0 e1                                      mov r0, r7
00762d94  82 af ee eb                                      bl #0x30eba4
00762d98  34 11 9d e5                                      ldr r1, [sp, #0x134]
00762d9c  80 af ee eb                                      bl #0x30eba4
00762da0  02 15 e0 e3                                      mvn r1, #0x800000
00762da4  00 70 a0 e1                                      mov r7, r0
00762da8  c1 ad ee eb                                      bl #0x30e4b4
00762dac  00 00 50 e3                                      cmp r0, #0
00762db0  37 01 00 1a                                      bne #0x763294
00762db4  00 70 a0 e3                                      mov r7, #0
00762db8  42 14 a0 e3                                      mov r1, #0x42000000
00762dbc  38 01 9d e5                                      ldr r0, [sp, #0x138]
00762dc0  34 71 8d e5                                      str r7, [sp, #0x134]
00762dc4  e8 af ee eb                                      bl #0x30ed6c
00762dc8  42 14 a0 e3                                      mov r1, #0x42000000
00762dcc  00 70 a0 e1                                      mov r7, r0
00762dd0  3c 01 9d e5                                      ldr r0, [sp, #0x13c]
00762dd4  e4 af ee eb                                      bl #0x30ed6c
00762dd8  00 10 a0 e1                                      mov r1, r0
00762ddc  07 00 a0 e1                                      mov r0, r7
00762de0  6f af ee eb                                      bl #0x30eba4
00762de4  40 11 9d e5                                      ldr r1, [sp, #0x140]
00762de8  6d af ee eb                                      bl #0x30eba4
00762dec  02 15 e0 e3                                      mvn r1, #0x800000
00762df0  00 70 a0 e1                                      mov r7, r0
00762df4  ae ad ee eb                                      bl #0x30e4b4
00762df8  00 00 50 e3                                      cmp r0, #0
00762dfc  35 01 00 0a                                      beq #0x7632d8
00762e00  02 11 e0 e3                                      mvn r1, #0x80000000
00762e04  07 00 a0 e1                                      mov r0, r7
00762e08  02 15 41 e2                                      sub r1, r1, #0x800000
00762e0c  e6 ae ee eb                                      bl #0x30e9ac
00762e10  00 00 50 e3                                      cmp r0, #0
00762e14  2f 01 00 0a                                      beq #0x7632d8
00762e18  10 20 9d e5                                      ldr r2, [sp, #0x10]
00762e1c  3b 14 a0 e3                                      mov r1, #0x3b000000
00762e20  40 71 8d e5                                      str r7, [sp, #0x140]
00762e24  0c 00 82 e2                                      add r0, r2, #0xc
00762e28  17 f9 ff eb                                      bl #0x76128c
00762e2c  42 14 a0 e3                                      mov r1, #0x42000000
00762e30  98 01 9d e5                                      ldr r0, [sp, #0x198]
00762e34  cc af ee eb                                      bl #0x30ed6c
00762e38  42 14 a0 e3                                      mov r1, #0x42000000
00762e3c  00 70 a0 e1                                      mov r7, r0
00762e40  9c 01 9d e5                                      ldr r0, [sp, #0x19c]
00762e44  c8 af ee eb                                      bl #0x30ed6c
00762e48  00 10 a0 e1                                      mov r1, r0
00762e4c  07 00 a0 e1                                      mov r0, r7
00762e50  53 af ee eb                                      bl #0x30eba4
00762e54  a0 11 9d e5                                      ldr r1, [sp, #0x1a0]
00762e58  51 af ee eb                                      bl #0x30eba4
00762e5c  02 15 e0 e3                                      mvn r1, #0x800000
00762e60  00 70 a0 e1                                      mov r7, r0
00762e64  92 ad ee eb                                      bl #0x30e4b4
00762e68  00 00 50 e3                                      cmp r0, #0
00762e6c  11 01 00 0a                                      beq #0x7632b8
00762e70  02 11 e0 e3                                      mvn r1, #0x80000000
00762e74  07 00 a0 e1                                      mov r0, r7
00762e78  02 15 41 e2                                      sub r1, r1, #0x800000
00762e7c  ca ae ee eb                                      bl #0x30e9ac
00762e80  00 00 50 e3                                      cmp r0, #0
00762e84  0b 01 00 0a                                      beq #0x7632b8
00762e88  42 14 a0 e3                                      mov r1, #0x42000000
00762e8c  a4 01 9d e5                                      ldr r0, [sp, #0x1a4]
00762e90  a0 71 8d e5                                      str r7, [sp, #0x1a0]
00762e94  b4 af ee eb                                      bl #0x30ed6c
00762e98  42 14 a0 e3                                      mov r1, #0x42000000
00762e9c  00 70 a0 e1                                      mov r7, r0
00762ea0  a8 01 9d e5                                      ldr r0, [sp, #0x1a8]
00762ea4  b0 af ee eb                                      bl #0x30ed6c
00762ea8  00 10 a0 e1                                      mov r1, r0
00762eac  07 00 a0 e1                                      mov r0, r7
00762eb0  3b af ee eb                                      bl #0x30eba4
00762eb4  ac 11 9d e5                                      ldr r1, [sp, #0x1ac]
00762eb8  39 af ee eb                                      bl #0x30eba4
00762ebc  02 15 e0 e3                                      mvn r1, #0x800000
00762ec0  00 70 a0 e1                                      mov r7, r0
00762ec4  7a ad ee eb                                      bl #0x30e4b4
00762ec8  00 00 50 e3                                      cmp r0, #0
00762ecc  ff 00 00 0a                                      beq #0x7632d0
00762ed0  02 11 e0 e3                                      mvn r1, #0x80000000
00762ed4  07 00 a0 e1                                      mov r0, r7
00762ed8  02 15 41 e2                                      sub r1, r1, #0x800000
00762edc  b2 ae ee eb                                      bl #0x30e9ac
00762ee0  00 00 50 e3                                      cmp r0, #0
00762ee4  f9 00 00 0a                                      beq #0x7632d0
00762ee8  0c 00 8b e2                                      add r0, fp, #0xc
00762eec  3b 14 a0 e3                                      mov r1, #0x3b000000
00762ef0  ac 71 8d e5                                      str r7, [sp, #0x1ac]
00762ef4  e4 f8 ff eb                                      bl #0x76128c
00762ef8  30 30 9d e5                                      ldr r3, [sp, #0x30]
00762efc  00 20 a0 e3                                      mov r2, #0
00762f00  30 e0 9d e5                                      ldr lr, [sp, #0x30]
00762f04  04 20 83 e4                                      str r2, [r3], #4
00762f08  08 30 83 e2                                      add r3, r3, #8
00762f0c  00 20 83 e5                                      str r2, [r3]
00762f10  40 30 9d e5                                      ldr r3, [sp, #0x40]
00762f14  fe c5 a0 e3                                      mov ip, #0x3f800000
00762f18  20 c2 8d e5                                      str ip, [sp, #0x220]
00762f1c  00 20 83 e5                                      str r2, [r3]
00762f20  04 20 8e e5                                      str r2, [lr, #4]
00762f24  34 30 9d e5                                      ldr r3, [sp, #0x34]
00762f28  38 e0 9d e5                                      ldr lr, [sp, #0x38]
00762f2c  f8 c1 8d e5                                      str ip, [sp, #0x1f8]
00762f30  08 c2 8d e5                                      str ip, [sp, #0x208]
00762f34  00 20 83 e5                                      str r2, [r3]
00762f38  00 20 8e e5                                      str r2, [lr]
00762f3c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00762f40  44 e0 9d e5                                      ldr lr, [sp, #0x44]
00762f44  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00762f48  00 20 83 e5                                      str r2, [r3]
00762f4c  00 20 8e e5                                      str r2, [lr]
00762f50  24 00 9d e5                                      ldr r0, [sp, #0x24]
00762f54  0c 20 8d e5                                      str r2, [sp, #0xc]
00762f58  10 c2 8d e5                                      str ip, [sp, #0x210]
00762f5c  de ca 00 eb                                      bl #0x795adc
00762f60  10 10 9d e5                                      ldr r1, [sp, #0x10]
00762f64  0c 00 81 e2                                      add r0, r1, #0xc
00762f68  24 10 9d e5                                      ldr r1, [sp, #0x24]
00762f6c  91 cd f2 eb                                      bl #0x4165b8
00762f70  20 00 9d e5                                      ldr r0, [sp, #0x20]
00762f74  28 10 9d e5                                      ldr r1, [sp, #0x28]
00762f78  d7 ca 00 eb                                      bl #0x795adc
00762f7c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00762f80  0c 00 8b e2                                      add r0, fp, #0xc
00762f84  8b cd f2 eb                                      bl #0x4165b8
00762f88  04 00 a0 e1                                      mov r0, r4
00762f8c  e5 82 00 eb                                      bl #0x783b28
00762f90  10 30 9d e5                                      ldr r3, [sp, #0x10]
00762f94  00 70 a0 e1                                      mov r7, r0
00762f98  00 10 a0 e1                                      mov r1, r0
00762f9c  24 00 83 e2                                      add r0, r3, #0x24
00762fa0  1d fa ff eb                                      bl #0x76181c
00762fa4  24 00 8b e2                                      add r0, fp, #0x24
00762fa8  07 10 a0 e1                                      mov r1, r7
00762fac  1a fa ff eb                                      bl #0x76181c
00762fb0  00 00 57 e3                                      cmp r7, #0
00762fb4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00762fb8  9b fe ff 0a                                      beq #0x762a2c
00762fbc  07 31 87 e0                                      add r3, r7, r7, lsl #2
00762fc0  28 90 8d e5                                      str sb, [sp, #0x28]
00762fc4  02 70 a0 e1                                      mov r7, r2
00762fc8  05 90 a0 e1                                      mov sb, r5
00762fcc  03 50 a0 e1                                      mov r5, r3
00762fd0  44 01 9d e5                                      ldr r0, [sp, #0x144]
00762fd4  04 10 a0 e1                                      mov r1, r4
00762fd8  06 20 a0 e1                                      mov r2, r6
00762fdc  07 00 80 e0                                      add r0, r0, r7
00762fe0  82 86 00 eb                                      bl #0x7849f0
00762fe4  b0 01 9d e5                                      ldr r0, [sp, #0x1b0]
00762fe8  04 10 a0 e1                                      mov r1, r4
00762fec  06 20 a0 e1                                      mov r2, r6
00762ff0  07 00 80 e0                                      add r0, r0, r7
00762ff4  05 70 87 e2                                      add r7, r7, #5
00762ff8  7c 86 00 eb                                      bl #0x7849f0
00762ffc  05 00 57 e1                                      cmp r7, r5
00763000  f2 ff ff 1a                                      bne #0x762fd0
00763004  44 11 9d e5                                      ldr r1, [sp, #0x144]
00763008  4a 0f 8d e2                                      add r0, sp, #0x128
0076300c  04 20 a0 e3                                      mov r2, #4
00763010  01 10 81 e2                                      add r1, r1, #1
00763014  09 50 a0 e1                                      mov r5, sb
00763018  28 90 9d e5                                      ldr sb, [sp, #0x28]
0076301c  11 ae ee eb                                      bl #0x30e868
00763020  b0 11 9d e5                                      ldr r1, [sp, #0x1b0]
00763024  65 0f 8d e2                                      add r0, sp, #0x194
00763028  04 20 a0 e3                                      mov r2, #4
0076302c  01 10 81 e2                                      add r1, r1, #1
00763030  0c ae ee eb                                      bl #0x30e868
00763034  7c fe ff ea                                      b #0x762a2c
00763038  04 00 a0 e1                                      mov r0, r4
0076303c  f4 82 00 eb                                      bl #0x783c14
00763040  a0 e2 9d e5                                      ldr lr, [sp, #0x2a0]
00763044  00 10 a0 e1                                      mov r1, r0
00763048  00 30 9e e5                                      ldr r3, [lr]
0076304c  0e 00 a0 e1                                      mov r0, lr
00763050  0f e0 a0 e1                                      mov lr, pc
00763054  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00763058  00 10 a0 e1                                      mov r1, r0
0076305c  38 00 88 e2                                      add r0, r8, #0x38
00763060  dd f9 ff eb                                      bl #0x7617dc
00763064  38 00 8a e2                                      add r0, sl, #0x38
00763068  c4 11 9d e5                                      ldr r1, [sp, #0x1c4]
0076306c  da f9 ff eb                                      bl #0x7617dc
00763070  24 20 9d e5                                      ldr r2, [sp, #0x24]
00763074  fe 35 a0 e3                                      mov r3, #0x3f800000
00763078  28 32 8d e5                                      str r3, [sp, #0x228]
0076307c  38 32 8d e5                                      str r3, [sp, #0x238]
00763080  04 70 82 e4                                      str r7, [r2], #4
00763084  08 70 82 e5                                      str r7, [r2, #8]
00763088  28 20 8d e2                                      add r2, sp, #0x28
0076308c  04 50 92 e8                                      ldm r2, {r2, ip, lr}
00763090  50 32 8d e5                                      str r3, [sp, #0x250]
00763094  00 70 82 e5                                      str r7, [r2]
00763098  00 70 8c e5                                      str r7, [ip]
0076309c  38 20 9d e5                                      ldr r2, [sp, #0x38]
007630a0  34 c0 9d e5                                      ldr ip, [sp, #0x34]
007630a4  00 70 8e e5                                      str r7, [lr]
007630a8  24 e0 9d e5                                      ldr lr, [sp, #0x24]
007630ac  00 70 82 e5                                      str r7, [r2]
007630b0  00 70 8c e5                                      str r7, [ip]
007630b4  04 70 8e e5                                      str r7, [lr, #4]
007630b8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007630bc  04 10 a0 e1                                      mov r1, r4
007630c0  40 32 8d e5                                      str r3, [sp, #0x240]
007630c4  42 cd 00 eb                                      bl #0x7965d4
007630c8  20 00 9d e5                                      ldr r0, [sp, #0x20]
007630cc  04 10 a0 e1                                      mov r1, r4
007630d0  3f cd 00 eb                                      bl #0x7965d4
007630d4  3c 00 88 e2                                      add r0, r8, #0x3c
007630d8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007630dc  7e ca 00 eb                                      bl #0x795adc
007630e0  3c 00 8a e2                                      add r0, sl, #0x3c
007630e4  20 10 9d e5                                      ldr r1, [sp, #0x20]
007630e8  7b ca 00 eb                                      bl #0x795adc
007630ec  c4 fc ff ea                                      b #0x762404
007630f0  43 14 a0 e3                                      mov r1, #0x43000000
007630f4  98 01 9d e5                                      ldr r0, [sp, #0x198]
007630f8  1b af ee eb                                      bl #0x30ed6c
007630fc  00 10 a0 e3                                      mov r1, #0
00763100  00 70 a0 e1                                      mov r7, r0
00763104  9c 01 9d e5                                      ldr r0, [sp, #0x19c]
00763108  17 af ee eb                                      bl #0x30ed6c
0076310c  00 10 a0 e1                                      mov r1, r0
00763110  07 00 a0 e1                                      mov r0, r7
00763114  a2 ae ee eb                                      bl #0x30eba4
00763118  a0 11 9d e5                                      ldr r1, [sp, #0x1a0]
0076311c  a0 ae ee eb                                      bl #0x30eba4
00763120  02 15 e0 e3                                      mvn r1, #0x800000
00763124  00 70 a0 e1                                      mov r7, r0
00763128  e1 ac ee eb                                      bl #0x30e4b4
0076312c  00 00 50 e3                                      cmp r0, #0
00763130  50 00 00 1a                                      bne #0x763278
00763134  00 70 a0 e3                                      mov r7, #0
00763138  43 14 a0 e3                                      mov r1, #0x43000000
0076313c  a4 01 9d e5                                      ldr r0, [sp, #0x1a4]
00763140  a0 71 8d e5                                      str r7, [sp, #0x1a0]
00763144  08 af ee eb                                      bl #0x30ed6c
00763148  00 10 a0 e3                                      mov r1, #0
0076314c  00 70 a0 e1                                      mov r7, r0
00763150  a8 01 9d e5                                      ldr r0, [sp, #0x1a8]
00763154  04 af ee eb                                      bl #0x30ed6c
00763158  00 10 a0 e1                                      mov r1, r0
0076315c  07 00 a0 e1                                      mov r0, r7
00763160  8f ae ee eb                                      bl #0x30eba4
00763164  ac 11 9d e5                                      ldr r1, [sp, #0x1ac]
00763168  8d ae ee eb                                      bl #0x30eba4
0076316c  02 15 e0 e3                                      mvn r1, #0x800000
00763170  00 70 a0 e1                                      mov r7, r0
00763174  ce ac ee eb                                      bl #0x30e4b4
00763178  00 00 50 e3                                      cmp r0, #0
0076317c  4f 00 00 0a                                      beq #0x7632c0
00763180  02 11 e0 e3                                      mvn r1, #0x80000000
00763184  07 00 a0 e1                                      mov r0, r7
00763188  02 15 41 e2                                      sub r1, r1, #0x800000
0076318c  06 ae ee eb                                      bl #0x30e9ac
00763190  00 00 50 e3                                      cmp r0, #0
00763194  49 00 00 0a                                      beq #0x7632c0
00763198  0c 00 88 e2                                      add r0, r8, #0xc
0076319c  0f 13 a0 e3                                      mov r1, #0x3c000000
007631a0  ac 71 8d e5                                      str r7, [sp, #0x1ac]
007631a4  38 f8 ff eb                                      bl #0x76128c
007631a8  43 14 a0 e3                                      mov r1, #0x43000000
007631ac  2c 01 9d e5                                      ldr r0, [sp, #0x12c]
007631b0  ed ae ee eb                                      bl #0x30ed6c
007631b4  00 10 a0 e3                                      mov r1, #0
007631b8  00 70 a0 e1                                      mov r7, r0
007631bc  30 01 9d e5                                      ldr r0, [sp, #0x130]
007631c0  e9 ae ee eb                                      bl #0x30ed6c
007631c4  00 10 a0 e1                                      mov r1, r0
007631c8  07 00 a0 e1                                      mov r0, r7
007631cc  74 ae ee eb                                      bl #0x30eba4
007631d0  34 11 9d e5                                      ldr r1, [sp, #0x134]
007631d4  72 ae ee eb                                      bl #0x30eba4
007631d8  02 15 e0 e3                                      mvn r1, #0x800000
007631dc  00 70 a0 e1                                      mov r7, r0
007631e0  b3 ac ee eb                                      bl #0x30e4b4
007631e4  00 00 50 e3                                      cmp r0, #0
007631e8  30 00 00 0a                                      beq #0x7632b0
007631ec  02 11 e0 e3                                      mvn r1, #0x80000000
007631f0  07 00 a0 e1                                      mov r0, r7
007631f4  02 15 41 e2                                      sub r1, r1, #0x800000
007631f8  eb ad ee eb                                      bl #0x30e9ac
007631fc  00 00 50 e3                                      cmp r0, #0
00763200  2a 00 00 0a                                      beq #0x7632b0
00763204  43 14 a0 e3                                      mov r1, #0x43000000
00763208  38 01 9d e5                                      ldr r0, [sp, #0x138]
0076320c  34 71 8d e5                                      str r7, [sp, #0x134]
00763210  d5 ae ee eb                                      bl #0x30ed6c
00763214  00 10 a0 e3                                      mov r1, #0
00763218  00 70 a0 e1                                      mov r7, r0
0076321c  3c 01 9d e5                                      ldr r0, [sp, #0x13c]
00763220  d1 ae ee eb                                      bl #0x30ed6c
00763224  00 10 a0 e1                                      mov r1, r0
00763228  07 00 a0 e1                                      mov r0, r7
0076322c  5c ae ee eb                                      bl #0x30eba4
00763230  40 11 9d e5                                      ldr r1, [sp, #0x140]
00763234  5a ae ee eb                                      bl #0x30eba4
00763238  02 15 e0 e3                                      mvn r1, #0x800000
0076323c  00 70 a0 e1                                      mov r7, r0
00763240  9b ac ee eb                                      bl #0x30e4b4
00763244  00 00 50 e3                                      cmp r0, #0
00763248  1e 00 00 0a                                      beq #0x7632c8
0076324c  02 11 e0 e3                                      mvn r1, #0x80000000
00763250  07 00 a0 e1                                      mov r0, r7
00763254  02 15 41 e2                                      sub r1, r1, #0x800000
00763258  d3 ad ee eb                                      bl #0x30e9ac
0076325c  00 00 50 e3                                      cmp r0, #0
00763260  18 00 00 0a                                      beq #0x7632c8
00763264  0c 00 8a e2                                      add r0, sl, #0xc
00763268  0f 13 a0 e3                                      mov r1, #0x3c000000
0076326c  40 71 8d e5                                      str r7, [sp, #0x140]
00763270  05 f8 ff eb                                      bl #0x76128c
00763274  18 fd ff ea                                      b #0x7626dc
00763278  02 11 e0 e3                                      mvn r1, #0x80000000
0076327c  07 00 a0 e1                                      mov r0, r7
00763280  02 15 41 e2                                      sub r1, r1, #0x800000
00763284  c8 ad ee eb                                      bl #0x30e9ac
00763288  00 00 50 e3                                      cmp r0, #0
0076328c  a9 ff ff 1a                                      bne #0x763138
00763290  a7 ff ff ea                                      b #0x763134
00763294  02 11 e0 e3                                      mvn r1, #0x80000000
00763298  07 00 a0 e1                                      mov r0, r7
0076329c  02 15 41 e2                                      sub r1, r1, #0x800000
007632a0  c1 ad ee eb                                      bl #0x30e9ac
007632a4  00 00 50 e3                                      cmp r0, #0
007632a8  c2 fe ff 1a                                      bne #0x762db8
007632ac  c0 fe ff ea                                      b #0x762db4
007632b0  00 70 a0 e3                                      mov r7, #0
007632b4  d2 ff ff ea                                      b #0x763204
007632b8  00 70 a0 e3                                      mov r7, #0
007632bc  f1 fe ff ea                                      b #0x762e88
007632c0  00 70 a0 e3                                      mov r7, #0
007632c4  b3 ff ff ea                                      b #0x763198
007632c8  00 70 a0 e3                                      mov r7, #0
007632cc  e4 ff ff ea                                      b #0x763264
007632d0  00 70 a0 e3                                      mov r7, #0
007632d4  03 ff ff ea                                      b #0x762ee8
007632d8  00 70 a0 e3                                      mov r7, #0
007632dc  cd fe ff ea                                      b #0x762e18
; mapping-symbol data/literal pool
007632e0  3c 27 23 00 30 25 00 00 1c 30 00 00              .byte 0x3c, 0x27, 0x23, 0x00, 0x30, 0x25, 0x00, 0x00, 0x1c, 0x30, 0x00, 0x00
; decoder-mode: arm
007632ec  04 00 a0 e1                                      mov r0, r4
007632f0  47 82 00 eb                                      bl #0x783c14
007632f4  a0 c2 9d e5                                      ldr ip, [sp, #0x2a0]
007632f8  00 10 a0 e1                                      mov r1, r0
007632fc  00 30 9c e5                                      ldr r3, [ip]
00763300  0c 00 a0 e1                                      mov r0, ip
00763304  0f e0 a0 e1                                      mov lr, pc
00763308  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0076330c  10 e0 9d e5                                      ldr lr, [sp, #0x10]
00763310  00 10 a0 e1                                      mov r1, r0
00763314  38 00 8e e2                                      add r0, lr, #0x38
00763318  2f f9 ff eb                                      bl #0x7617dc
0076331c  38 00 8b e2                                      add r0, fp, #0x38
00763320  58 11 9d e5                                      ldr r1, [sp, #0x158]
00763324  2c f9 ff eb                                      bl #0x7617dc
00763328  30 30 9d e5                                      ldr r3, [sp, #0x30]
0076332c  fe 25 a0 e3                                      mov r2, #0x3f800000
00763330  10 22 8d e5                                      str r2, [sp, #0x210]
00763334  20 22 8d e5                                      str r2, [sp, #0x220]
00763338  04 70 83 e4                                      str r7, [r3], #4
0076333c  08 70 83 e5                                      str r7, [r3, #8]
00763340  34 30 8d e2                                      add r3, sp, #0x34
00763344  08 50 93 e8                                      ldm r3, {r3, ip, lr}
00763348  08 22 8d e5                                      str r2, [sp, #0x208]
0076334c  00 70 83 e5                                      str r7, [r3]
00763350  00 70 8c e5                                      str r7, [ip]
00763354  00 70 8e e5                                      str r7, [lr]
00763358  44 30 9d e5                                      ldr r3, [sp, #0x44]
0076335c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00763360  30 e0 9d e5                                      ldr lr, [sp, #0x30]
00763364  20 00 9d e5                                      ldr r0, [sp, #0x20]
00763368  04 10 a0 e1                                      mov r1, r4
0076336c  00 70 83 e5                                      str r7, [r3]
00763370  00 70 8c e5                                      str r7, [ip]
00763374  04 70 8e e5                                      str r7, [lr, #4]
00763378  f8 21 8d e5                                      str r2, [sp, #0x1f8]
0076337c  94 cc 00 eb                                      bl #0x7965d4
00763380  24 00 9d e5                                      ldr r0, [sp, #0x24]
00763384  04 10 a0 e1                                      mov r1, r4
00763388  91 cc 00 eb                                      bl #0x7965d4
0076338c  a6 fd ff ea                                      b #0x762a2c
00763390  43 14 a0 e3                                      mov r1, #0x43000000
00763394  2c 01 9d e5                                      ldr r0, [sp, #0x12c]
00763398  73 ae ee eb                                      bl #0x30ed6c
0076339c  00 10 a0 e3                                      mov r1, #0
007633a0  00 70 a0 e1                                      mov r7, r0
007633a4  30 01 9d e5                                      ldr r0, [sp, #0x130]
007633a8  6f ae ee eb                                      bl #0x30ed6c
007633ac  00 10 a0 e1                                      mov r1, r0
007633b0  07 00 a0 e1                                      mov r0, r7
007633b4  fa ad ee eb                                      bl #0x30eba4
007633b8  34 11 9d e5                                      ldr r1, [sp, #0x134]
007633bc  f8 ad ee eb                                      bl #0x30eba4
007633c0  02 15 e0 e3                                      mvn r1, #0x800000
007633c4  00 70 a0 e1                                      mov r7, r0
007633c8  39 ac ee eb                                      bl #0x30e4b4
007633cc  00 00 50 e3                                      cmp r0, #0
007633d0  57 00 00 1a                                      bne #0x763534
007633d4  00 70 a0 e3                                      mov r7, #0
007633d8  43 14 a0 e3                                      mov r1, #0x43000000
007633dc  38 01 9d e5                                      ldr r0, [sp, #0x138]
007633e0  34 71 8d e5                                      str r7, [sp, #0x134]
007633e4  60 ae ee eb                                      bl #0x30ed6c
007633e8  00 10 a0 e3                                      mov r1, #0
007633ec  00 70 a0 e1                                      mov r7, r0
007633f0  3c 01 9d e5                                      ldr r0, [sp, #0x13c]
007633f4  5c ae ee eb                                      bl #0x30ed6c
007633f8  00 10 a0 e1                                      mov r1, r0
007633fc  07 00 a0 e1                                      mov r0, r7
00763400  e7 ad ee eb                                      bl #0x30eba4
00763404  40 11 9d e5                                      ldr r1, [sp, #0x140]
00763408  e5 ad ee eb                                      bl #0x30eba4
0076340c  02 15 e0 e3                                      mvn r1, #0x800000
00763410  00 70 a0 e1                                      mov r7, r0
00763414  26 ac ee eb                                      bl #0x30e4b4
00763418  00 00 50 e3                                      cmp r0, #0
0076341c  65 00 00 0a                                      beq #0x7635b8
00763420  02 11 e0 e3                                      mvn r1, #0x80000000
00763424  07 00 a0 e1                                      mov r0, r7
00763428  02 15 41 e2                                      sub r1, r1, #0x800000
0076342c  5e ad ee eb                                      bl #0x30e9ac
00763430  00 00 50 e3                                      cmp r0, #0
00763434  5f 00 00 0a                                      beq #0x7635b8
00763438  10 10 9d e5                                      ldr r1, [sp, #0x10]
0076343c  40 71 8d e5                                      str r7, [sp, #0x140]
00763440  0c 00 81 e2                                      add r0, r1, #0xc
00763444  0f 13 a0 e3                                      mov r1, #0x3c000000
00763448  8f f7 ff eb                                      bl #0x76128c
0076344c  43 14 a0 e3                                      mov r1, #0x43000000
00763450  98 01 9d e5                                      ldr r0, [sp, #0x198]
00763454  44 ae ee eb                                      bl #0x30ed6c
00763458  00 10 a0 e3                                      mov r1, #0
0076345c  00 70 a0 e1                                      mov r7, r0
00763460  9c 01 9d e5                                      ldr r0, [sp, #0x19c]
00763464  40 ae ee eb                                      bl #0x30ed6c
00763468  00 10 a0 e1                                      mov r1, r0
0076346c  07 00 a0 e1                                      mov r0, r7
00763470  cb ad ee eb                                      bl #0x30eba4
00763474  a0 11 9d e5                                      ldr r1, [sp, #0x1a0]
00763478  c9 ad ee eb                                      bl #0x30eba4
0076347c  02 15 e0 e3                                      mvn r1, #0x800000
00763480  00 70 a0 e1                                      mov r7, r0
00763484  0a ac ee eb                                      bl #0x30e4b4
00763488  00 00 50 e3                                      cmp r0, #0
0076348c  2f 00 00 0a                                      beq #0x763550
00763490  02 11 e0 e3                                      mvn r1, #0x80000000
00763494  07 00 a0 e1                                      mov r0, r7
00763498  02 15 41 e2                                      sub r1, r1, #0x800000
0076349c  42 ad ee eb                                      bl #0x30e9ac
007634a0  00 00 50 e3                                      cmp r0, #0
007634a4  29 00 00 0a                                      beq #0x763550
007634a8  43 14 a0 e3                                      mov r1, #0x43000000
007634ac  a4 01 9d e5                                      ldr r0, [sp, #0x1a4]
007634b0  a0 71 8d e5                                      str r7, [sp, #0x1a0]
007634b4  2c ae ee eb                                      bl #0x30ed6c
007634b8  00 10 a0 e3                                      mov r1, #0
007634bc  00 70 a0 e1                                      mov r7, r0
007634c0  a8 01 9d e5                                      ldr r0, [sp, #0x1a8]
007634c4  28 ae ee eb                                      bl #0x30ed6c
007634c8  00 10 a0 e1                                      mov r1, r0
007634cc  07 00 a0 e1                                      mov r0, r7
007634d0  b3 ad ee eb                                      bl #0x30eba4
007634d4  ac 11 9d e5                                      ldr r1, [sp, #0x1ac]
007634d8  b1 ad ee eb                                      bl #0x30eba4
007634dc  02 15 e0 e3                                      mvn r1, #0x800000
007634e0  00 70 a0 e1                                      mov r7, r0
007634e4  f2 ab ee eb                                      bl #0x30e4b4
007634e8  00 00 50 e3                                      cmp r0, #0
007634ec  33 00 00 0a                                      beq #0x7635c0
007634f0  02 11 e0 e3                                      mvn r1, #0x80000000
007634f4  07 00 a0 e1                                      mov r0, r7
007634f8  02 15 41 e2                                      sub r1, r1, #0x800000
007634fc  2a ad ee eb                                      bl #0x30e9ac
00763500  00 00 50 e3                                      cmp r0, #0
00763504  2d 00 00 0a                                      beq #0x7635c0
00763508  0c 00 8b e2                                      add r0, fp, #0xc
0076350c  0f 13 a0 e3                                      mov r1, #0x3c000000
00763510  ac 71 8d e5                                      str r7, [sp, #0x1ac]
00763514  5c f7 ff eb                                      bl #0x76128c
00763518  76 fe ff ea                                      b #0x762ef8
0076351c  04 00 a0 e1                                      mov r0, r4
00763520  bb 81 00 eb                                      bl #0x783c14
00763524  ba fc ff ea                                      b #0x762814
00763528  04 00 a0 e1                                      mov r0, r4
0076352c  b8 81 00 eb                                      bl #0x783c14
00763530  94 fb ff ea                                      b #0x762388
00763534  02 11 e0 e3                                      mvn r1, #0x80000000
00763538  07 00 a0 e1                                      mov r0, r7
0076353c  02 15 41 e2                                      sub r1, r1, #0x800000
00763540  19 ad ee eb                                      bl #0x30e9ac
00763544  00 00 50 e3                                      cmp r0, #0
00763548  a2 ff ff 1a                                      bne #0x7633d8
0076354c  a0 ff ff ea                                      b #0x7633d4
00763550  00 70 a0 e3                                      mov r7, #0
00763554  d3 ff ff ea                                      b #0x7634a8
00763558  7e 0f 8d e2                                      add r0, sp, #0x1f8
0076355c  04 10 a0 e1                                      mov r1, r4
00763560  a1 ca 00 eb                                      bl #0x795fec
00763564  04 10 a0 e1                                      mov r1, r4
00763568  21 0e 8d e2                                      add r0, sp, #0x210
0076356c  9e ca 00 eb                                      bl #0x795fec
00763570  06 10 a0 e3                                      mov r1, #6
00763574  04 00 a0 e1                                      mov r0, r4
00763578  09 81 00 eb                                      bl #0x7839a4
0076357c  01 10 a0 e3                                      mov r1, #1
00763580  04 00 a0 e1                                      mov r0, r4
00763584  06 81 00 eb                                      bl #0x7839a4
00763588  01 00 50 e3                                      cmp r0, #1
0076358c  00 00 a0 13                                      movne r0, #0
00763590  01 00 a0 03                                      moveq r0, #1
00763594  74 00 c5 e5                                      strb r0, [r5, #0x74]
00763598  01 10 a0 e3                                      mov r1, #1
0076359c  04 00 a0 e1                                      mov r0, r4
007635a0  ff 80 00 eb                                      bl #0x7839a4
007635a4  01 00 50 e3                                      cmp r0, #1
007635a8  00 00 a0 13                                      movne r0, #0
007635ac  01 00 a0 03                                      moveq r0, #1
007635b0  75 00 c5 e5                                      strb r0, [r5, #0x75]
007635b4  6c fb ff ea                                      b #0x76236c
007635b8  00 70 a0 e3                                      mov r7, #0
007635bc  9d ff ff ea                                      b #0x763438
007635c0  00 70 a0 e3                                      mov r7, #0
007635c4  cf ff ff ea                                      b #0x763508
