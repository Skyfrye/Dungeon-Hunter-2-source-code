; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c4574, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::bitmap_font_entity
; alias: _ZN7gameswf18bitmap_font_entity9copy_argbEPhiiiS1_ii
; demangled: gameswf::bitmap_font_entity::copy_argb(unsigned char*, int, int, int, unsigned char*, int, int)
; decoder-mode: arm
007c4574  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007c4578  28 40 9d e5                                      ldr r4, [sp, #0x28]
007c457c  03 a0 a0 e1                                      mov sl, r3
007c4580  20 50 9d e5                                      ldr r5, [sp, #0x20]
007c4584  00 00 54 e3                                      cmp r4, #0
007c4588  24 80 9d e5                                      ldr r8, [sp, #0x24]
007c458c  0c 00 00 da                                      ble #0x7c45c4
007c4590  01 61 a0 e1                                      lsl r6, r1, #2
007c4594  92 63 26 e0                                      mla r6, r2, r3, r6
007c4598  00 70 a0 e3                                      mov r7, #0
007c459c  06 60 80 e0                                      add r6, r0, r6
007c45a0  05 00 a0 e1                                      mov r0, r5
007c45a4  06 10 a0 e1                                      mov r1, r6
007c45a8  01 70 87 e2                                      add r7, r7, #1
007c45ac  08 20 a0 e1                                      mov r2, r8
007c45b0  ac 28 ed eb                                      bl #0x30e868
007c45b4  04 00 57 e1                                      cmp r7, r4
007c45b8  0a 60 86 e0                                      add r6, r6, sl
007c45bc  08 50 85 e0                                      add r5, r5, r8
007c45c0  f6 ff ff 1a                                      bne #0x7c45a0
007c45c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007c4cd8, declared_size=348, range_size=348, mode=arm
; class-group: gameswf::bitmap_font_entity
; alias: _ZN7gameswf18bitmap_font_entityD2Ev
; demangled: gameswf::bitmap_font_entity::~bitmap_font_entity()
; decoder-mode: arm
007c4cd8  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
007c4cdc  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
007c4ce0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c4ce4  03 30 8f e0                                      add r3, pc, r3
007c4ce8  02 20 93 e7                                      ldr r2, [r3, r2]
007c4cec  00 50 a0 e1                                      mov r5, r0
007c4cf0  00 60 a0 e1                                      mov r6, r0
007c4cf4  08 20 82 e2                                      add r2, r2, #8
007c4cf8  24 20 85 e4                                      str r2, [r5], #0x24
007c4cfc  24 30 90 e5                                      ldr r3, [r0, #0x24]
007c4d00  00 00 53 e3                                      cmp r3, #0
007c4d04  0a 00 00 0a                                      beq #0x7c4d34
007c4d08  04 10 93 e5                                      ldr r1, [r3, #4]
007c4d0c  00 00 51 e3                                      cmp r1, #0
007c4d10  00 40 a0 b3                                      movlt r4, #0
007c4d14  0f 00 00 aa                                      bge #0x7c4d58
007c4d18  00 00 55 e3                                      cmp r5, #0
007c4d1c  04 00 00 0a                                      beq #0x7c4d34
007c4d20  00 00 53 e3                                      cmp r3, #0
007c4d24  02 00 00 0a                                      beq #0x7c4d34
007c4d28  04 20 93 e5                                      ldr r2, [r3, #4]
007c4d2c  02 00 54 e1                                      cmp r4, r2
007c4d30  16 00 00 da                                      ble #0x7c4d90
007c4d34  05 00 a0 e1                                      mov r0, r5
007c4d38  22 fe ff eb                                      bl #0x7c45c8
007c4d3c  d0 31 d6 e1                                      ldrsb r3, [r6, #0x10]
007c4d40  01 00 73 e3                                      cmn r3, #1
007c4d44  31 00 00 0a                                      beq #0x7c4e10
007c4d48  06 00 a0 e1                                      mov r0, r6
007c4d4c  d4 63 fe eb                                      bl #0x75dca4
007c4d50  06 00 a0 e1                                      mov r0, r6
007c4d54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c4d58  08 20 a0 e3                                      mov r2, #8
007c4d5c  00 40 a0 e3                                      mov r4, #0
007c4d60  02 00 93 e7                                      ldr r0, [r3, r2]
007c4d64  02 c0 83 e0                                      add ip, r3, r2
007c4d68  10 20 82 e2                                      add r2, r2, #0x10
007c4d6c  02 00 70 e3                                      cmn r0, #2
007c4d70  02 00 00 0a                                      beq #0x7c4d80
007c4d74  04 00 9c e5                                      ldr r0, [ip, #4]
007c4d78  01 00 70 e3                                      cmn r0, #1
007c4d7c  e5 ff ff 1a                                      bne #0x7c4d18
007c4d80  01 40 84 e2                                      add r4, r4, #1
007c4d84  01 00 54 e1                                      cmp r4, r1
007c4d88  f4 ff ff da                                      ble #0x7c4d60
007c4d8c  e1 ff ff ea                                      b #0x7c4d18
007c4d90  04 12 83 e0                                      add r1, r3, r4, lsl #4
007c4d94  14 70 91 e5                                      ldr r7, [r1, #0x14]
007c4d98  00 00 57 e3                                      cmp r7, #0
007c4d9c  0a 00 00 0a                                      beq #0x7c4dcc
007c4da0  00 00 97 e5                                      ldr r0, [r7]
007c4da4  00 00 50 e3                                      cmp r0, #0
007c4da8  00 00 00 0a                                      beq #0x7c4db0
007c4dac  23 55 fe eb                                      bl #0x75a240
007c4db0  07 00 a0 e1                                      mov r0, r7
007c4db4  00 10 a0 e3                                      mov r1, #0
007c4db8  5e 37 fe eb                                      bl #0x752b38
007c4dbc  00 30 95 e5                                      ldr r3, [r5]
007c4dc0  04 20 93 e5                                      ldr r2, [r3, #4]
007c4dc4  02 00 54 e1                                      cmp r4, r2
007c4dc8  d9 ff ff ca                                      bgt #0x7c4d34
007c4dcc  01 40 84 e2                                      add r4, r4, #1
007c4dd0  04 00 52 e1                                      cmp r2, r4
007c4dd4  d1 ff ff ba                                      blt #0x7c4d20
007c4dd8  04 12 a0 e1                                      lsl r1, r4, #4
007c4ddc  08 10 81 e2                                      add r1, r1, #8
007c4de0  01 00 93 e7                                      ldr r0, [r3, r1]
007c4de4  01 c0 83 e0                                      add ip, r3, r1
007c4de8  10 10 81 e2                                      add r1, r1, #0x10
007c4dec  02 00 70 e3                                      cmn r0, #2
007c4df0  02 00 00 0a                                      beq #0x7c4e00
007c4df4  04 00 9c e5                                      ldr r0, [ip, #4]
007c4df8  01 00 70 e3                                      cmn r0, #1
007c4dfc  c7 ff ff 1a                                      bne #0x7c4d20
007c4e00  01 40 84 e2                                      add r4, r4, #1
007c4e04  04 00 52 e1                                      cmp r2, r4
007c4e08  f4 ff ff aa                                      bge #0x7c4de0
007c4e0c  c3 ff ff ea                                      b #0x7c4d20
007c4e10  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
007c4e14  18 10 96 e5                                      ldr r1, [r6, #0x18]
007c4e18  46 37 fe eb                                      bl #0x752b38
007c4e1c  06 00 a0 e1                                      mov r0, r6
007c4e20  9f 63 fe eb                                      bl #0x75dca4
007c4e24  06 00 a0 e1                                      mov r0, r6
007c4e28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007c4e2c  ac fd 1c 00 50 47 00 00                          .byte 0xac, 0xfd, 0x1c, 0x00, 0x50, 0x47, 0x00, 0x00

; FUNCTION 0x007c4ea8, declared_size=348, range_size=348, mode=arm
; class-group: gameswf::bitmap_font_entity
; alias: _ZN7gameswf18bitmap_font_entityD1Ev
; demangled: gameswf::bitmap_font_entity::~bitmap_font_entity()
; decoder-mode: arm
007c4ea8  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
007c4eac  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
007c4eb0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c4eb4  03 30 8f e0                                      add r3, pc, r3
007c4eb8  02 20 93 e7                                      ldr r2, [r3, r2]
007c4ebc  00 50 a0 e1                                      mov r5, r0
007c4ec0  00 60 a0 e1                                      mov r6, r0
007c4ec4  08 20 82 e2                                      add r2, r2, #8
007c4ec8  24 20 85 e4                                      str r2, [r5], #0x24
007c4ecc  24 30 90 e5                                      ldr r3, [r0, #0x24]
007c4ed0  00 00 53 e3                                      cmp r3, #0
007c4ed4  0a 00 00 0a                                      beq #0x7c4f04
007c4ed8  04 10 93 e5                                      ldr r1, [r3, #4]
007c4edc  00 00 51 e3                                      cmp r1, #0
007c4ee0  00 40 a0 b3                                      movlt r4, #0
007c4ee4  0f 00 00 aa                                      bge #0x7c4f28
007c4ee8  00 00 55 e3                                      cmp r5, #0
007c4eec  04 00 00 0a                                      beq #0x7c4f04
007c4ef0  00 00 53 e3                                      cmp r3, #0
007c4ef4  02 00 00 0a                                      beq #0x7c4f04
007c4ef8  04 20 93 e5                                      ldr r2, [r3, #4]
007c4efc  02 00 54 e1                                      cmp r4, r2
007c4f00  16 00 00 da                                      ble #0x7c4f60
007c4f04  05 00 a0 e1                                      mov r0, r5
007c4f08  ae fd ff eb                                      bl #0x7c45c8
007c4f0c  d0 31 d6 e1                                      ldrsb r3, [r6, #0x10]
007c4f10  01 00 73 e3                                      cmn r3, #1
007c4f14  31 00 00 0a                                      beq #0x7c4fe0
007c4f18  06 00 a0 e1                                      mov r0, r6
007c4f1c  60 63 fe eb                                      bl #0x75dca4
007c4f20  06 00 a0 e1                                      mov r0, r6
007c4f24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c4f28  08 20 a0 e3                                      mov r2, #8
007c4f2c  00 40 a0 e3                                      mov r4, #0
007c4f30  02 00 93 e7                                      ldr r0, [r3, r2]
007c4f34  02 c0 83 e0                                      add ip, r3, r2
007c4f38  10 20 82 e2                                      add r2, r2, #0x10
007c4f3c  02 00 70 e3                                      cmn r0, #2
007c4f40  02 00 00 0a                                      beq #0x7c4f50
007c4f44  04 00 9c e5                                      ldr r0, [ip, #4]
007c4f48  01 00 70 e3                                      cmn r0, #1
007c4f4c  e5 ff ff 1a                                      bne #0x7c4ee8
007c4f50  01 40 84 e2                                      add r4, r4, #1
007c4f54  01 00 54 e1                                      cmp r4, r1
007c4f58  f4 ff ff da                                      ble #0x7c4f30
007c4f5c  e1 ff ff ea                                      b #0x7c4ee8
007c4f60  04 12 83 e0                                      add r1, r3, r4, lsl #4
007c4f64  14 70 91 e5                                      ldr r7, [r1, #0x14]
007c4f68  00 00 57 e3                                      cmp r7, #0
007c4f6c  0a 00 00 0a                                      beq #0x7c4f9c
007c4f70  00 00 97 e5                                      ldr r0, [r7]
007c4f74  00 00 50 e3                                      cmp r0, #0
007c4f78  00 00 00 0a                                      beq #0x7c4f80
007c4f7c  af 54 fe eb                                      bl #0x75a240
007c4f80  07 00 a0 e1                                      mov r0, r7
007c4f84  00 10 a0 e3                                      mov r1, #0
007c4f88  ea 36 fe eb                                      bl #0x752b38
007c4f8c  00 30 95 e5                                      ldr r3, [r5]
007c4f90  04 20 93 e5                                      ldr r2, [r3, #4]
007c4f94  02 00 54 e1                                      cmp r4, r2
007c4f98  d9 ff ff ca                                      bgt #0x7c4f04
007c4f9c  01 40 84 e2                                      add r4, r4, #1
007c4fa0  04 00 52 e1                                      cmp r2, r4
007c4fa4  d1 ff ff ba                                      blt #0x7c4ef0
007c4fa8  04 12 a0 e1                                      lsl r1, r4, #4
007c4fac  08 10 81 e2                                      add r1, r1, #8
007c4fb0  01 00 93 e7                                      ldr r0, [r3, r1]
007c4fb4  01 c0 83 e0                                      add ip, r3, r1
007c4fb8  10 10 81 e2                                      add r1, r1, #0x10
007c4fbc  02 00 70 e3                                      cmn r0, #2
007c4fc0  02 00 00 0a                                      beq #0x7c4fd0
007c4fc4  04 00 9c e5                                      ldr r0, [ip, #4]
007c4fc8  01 00 70 e3                                      cmn r0, #1
007c4fcc  c7 ff ff 1a                                      bne #0x7c4ef0
007c4fd0  01 40 84 e2                                      add r4, r4, #1
007c4fd4  04 00 52 e1                                      cmp r2, r4
007c4fd8  f4 ff ff aa                                      bge #0x7c4fb0
007c4fdc  c3 ff ff ea                                      b #0x7c4ef0
007c4fe0  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
007c4fe4  18 10 96 e5                                      ldr r1, [r6, #0x18]
007c4fe8  d2 36 fe eb                                      bl #0x752b38
007c4fec  06 00 a0 e1                                      mov r0, r6
007c4ff0  2b 63 fe eb                                      bl #0x75dca4
007c4ff4  06 00 a0 e1                                      mov r0, r6
007c4ff8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007c4ffc  dc fb 1c 00 50 47 00 00                          .byte 0xdc, 0xfb, 0x1c, 0x00, 0x50, 0x47, 0x00, 0x00

; FUNCTION 0x007c5004, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::bitmap_font_entity
; alias: _ZN7gameswf18bitmap_font_entityD0Ev
; demangled: gameswf::bitmap_font_entity::~bitmap_font_entity()
; decoder-mode: arm
007c5004  10 40 2d e9                                      push {r4, lr}
007c5008  00 40 a0 e1                                      mov r4, r0
007c500c  a5 ff ff eb                                      bl #0x7c4ea8
007c5010  04 00 a0 e1                                      mov r0, r4
007c5014  a5 24 ed eb                                      bl #0x30e2b0
007c5018  04 00 a0 e1                                      mov r0, r4
007c501c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c59dc, declared_size=564, range_size=564, mode=arm
; class-group: gameswf::bitmap_font_entity
; alias: _ZN7gameswf18bitmap_font_entity14get_char_imageEtiPNS_4rectEPf
; demangled: gameswf::bitmap_font_entity::get_char_image(unsigned short, int, gameswf::rect*, float*)
; decoder-mode: arm
007c59dc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007c59e0  40 d0 4d e2                                      sub sp, sp, #0x40
007c59e4  24 a0 80 e2                                      add sl, r0, #0x24
007c59e8  3c 80 8d e2                                      add r8, sp, #0x3c
007c59ec  00 40 a0 e1                                      mov r4, r0
007c59f0  01 60 a0 e1                                      mov r6, r1
007c59f4  02 50 a0 e1                                      mov r5, r2
007c59f8  00 70 a0 e3                                      mov r7, #0
007c59fc  02 28 81 e1                                      orr r2, r1, r2, lsl #16
007c5a00  0a 00 a0 e1                                      mov r0, sl
007c5a04  08 10 a0 e1                                      mov r1, r8
007c5a08  3c 20 8d e5                                      str r2, [sp, #0x3c]
007c5a0c  03 90 a0 e1                                      mov sb, r3
007c5a10  38 70 8d e5                                      str r7, [sp, #0x38]
007c5a14  7f fa ff eb                                      bl #0x7c4418
007c5a18  00 00 50 e3                                      cmp r0, #0
007c5a1c  0f 00 00 ba                                      blt #0x7c5a60
007c5a20  24 30 94 e5                                      ldr r3, [r4, #0x24]
007c5a24  00 02 83 e0                                      add r0, r3, r0, lsl #4
007c5a28  14 30 90 e5                                      ldr r3, [r0, #0x14]
007c5a2c  38 30 8d e5                                      str r3, [sp, #0x38]
007c5a30  03 c0 a0 e1                                      mov ip, r3
007c5a34  08 30 83 e2                                      add r3, r3, #8
007c5a38  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
007c5a3c  0f 00 89 e8                                      stm sb, {r0, r1, r2, r3}
007c5a40  60 30 9d e5                                      ldr r3, [sp, #0x60]
007c5a44  04 20 9c e5                                      ldr r2, [ip, #4]
007c5a48  00 20 83 e5                                      str r2, [r3]
007c5a4c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007c5a50  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007c5a54  34 00 93 e5                                      ldr r0, [r3, #0x34]
007c5a58  40 d0 8d e2                                      add sp, sp, #0x40
007c5a5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007c5a60  0c 30 8d e2                                      add r3, sp, #0xc
007c5a64  00 30 8d e5                                      str r3, [sp]
007c5a68  06 20 a0 e1                                      mov r2, r6
007c5a6c  05 30 a0 e1                                      mov r3, r5
007c5a70  00 c0 94 e5                                      ldr ip, [r4]
007c5a74  04 00 a0 e1                                      mov r0, r4
007c5a78  20 10 8d e2                                      add r1, sp, #0x20
007c5a7c  0f e0 a0 e1                                      mov lr, pc
007c5a80  08 f0 9c e5                                      ldr pc, [ip, #8]
007c5a84  00 00 50 e3                                      cmp r0, #0
007c5a88  f2 ff ff 0a                                      beq #0x7c5a58
007c5a8c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007c5a90  0c 50 93 e5                                      ldr r5, [r3, #0xc]
007c5a94  00 00 55 e3                                      cmp r5, #0
007c5a98  56 00 00 0a                                      beq #0x7c5bf8
007c5a9c  07 10 a0 e1                                      mov r1, r7
007c5aa0  18 00 a0 e3                                      mov r0, #0x18
007c5aa4  3f 34 fe eb                                      bl #0x752ba8
007c5aa8  00 20 a0 e3                                      mov r2, #0
007c5aac  00 70 80 e5                                      str r7, [r0]
007c5ab0  14 20 80 e5                                      str r2, [r0, #0x14]
007c5ab4  04 20 80 e5                                      str r2, [r0, #4]
007c5ab8  08 20 80 e5                                      str r2, [r0, #8]
007c5abc  0c 20 80 e5                                      str r2, [r0, #0xc]
007c5ac0  10 20 80 e5                                      str r2, [r0, #0x10]
007c5ac4  24 c0 9d e5                                      ldr ip, [sp, #0x24]
007c5ac8  28 20 9d e5                                      ldr r2, [sp, #0x28]
007c5acc  00 30 a0 e1                                      mov r3, r0
007c5ad0  01 c0 8c e2                                      add ip, ip, #1
007c5ad4  01 20 82 e2                                      add r2, r2, #1
007c5ad8  30 10 8d e2                                      add r1, sp, #0x30
007c5adc  34 00 8d e2                                      add r0, sp, #0x34
007c5ae0  34 c0 8d e5                                      str ip, [sp, #0x34]
007c5ae4  30 20 8d e5                                      str r2, [sp, #0x30]
007c5ae8  38 30 8d e5                                      str r3, [sp, #0x38]
007c5aec  9b 36 ff eb                                      bl #0x793560
007c5af0  24 00 9d e5                                      ldr r0, [sp, #0x24]
007c5af4  9a 23 ed eb                                      bl #0x30e964
007c5af8  00 50 a0 e1                                      mov r5, r0
007c5afc  34 00 9d e5                                      ldr r0, [sp, #0x34]
007c5b00  97 23 ed eb                                      bl #0x30e964
007c5b04  00 10 a0 e1                                      mov r1, r0
007c5b08  05 00 a0 e1                                      mov r0, r5
007c5b0c  60 24 ed eb                                      bl #0x30ec94
007c5b10  38 30 9d e5                                      ldr r3, [sp, #0x38]
007c5b14  0c 00 83 e5                                      str r0, [r3, #0xc]
007c5b18  28 00 9d e5                                      ldr r0, [sp, #0x28]
007c5b1c  90 23 ed eb                                      bl #0x30e964
007c5b20  00 50 a0 e1                                      mov r5, r0
007c5b24  30 00 9d e5                                      ldr r0, [sp, #0x30]
007c5b28  8d 23 ed eb                                      bl #0x30e964
007c5b2c  00 10 a0 e1                                      mov r1, r0
007c5b30  05 00 a0 e1                                      mov r0, r5
007c5b34  56 24 ed eb                                      bl #0x30ec94
007c5b38  38 30 9d e5                                      ldr r3, [sp, #0x38]
007c5b3c  14 00 83 e5                                      str r0, [r3, #0x14]
007c5b40  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007c5b44  00 00 60 e2                                      rsb r0, r0, #0
007c5b48  85 23 ed eb                                      bl #0x30e964
007c5b4c  00 50 a0 e1                                      mov r5, r0
007c5b50  14 00 9d e5                                      ldr r0, [sp, #0x14]
007c5b54  82 23 ed eb                                      bl #0x30e964
007c5b58  00 10 a0 e1                                      mov r1, r0
007c5b5c  05 00 a0 e1                                      mov r0, r5
007c5b60  4b 24 ed eb                                      bl #0x30ec94
007c5b64  38 30 9d e5                                      ldr r3, [sp, #0x38]
007c5b68  08 00 83 e5                                      str r0, [r3, #8]
007c5b6c  10 00 9d e5                                      ldr r0, [sp, #0x10]
007c5b70  7b 23 ed eb                                      bl #0x30e964
007c5b74  00 50 a0 e1                                      mov r5, r0
007c5b78  18 00 9d e5                                      ldr r0, [sp, #0x18]
007c5b7c  78 23 ed eb                                      bl #0x30e964
007c5b80  00 10 a0 e1                                      mov r1, r0
007c5b84  05 00 a0 e1                                      mov r0, r5
007c5b88  41 24 ed eb                                      bl #0x30ec94
007c5b8c  38 30 9d e5                                      ldr r3, [sp, #0x38]
007c5b90  10 00 83 e5                                      str r0, [r3, #0x10]
007c5b94  38 50 9d e5                                      ldr r5, [sp, #0x38]
007c5b98  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007c5b9c  08 00 95 e5                                      ldr r0, [r5, #8]
007c5ba0  02 11 81 e2                                      add r1, r1, #0x80000000
007c5ba4  70 24 ed eb                                      bl #0x30ed6c
007c5ba8  08 00 85 e5                                      str r0, [r5, #8]
007c5bac  38 50 9d e5                                      ldr r5, [sp, #0x38]
007c5bb0  14 10 95 e5                                      ldr r1, [r5, #0x14]
007c5bb4  10 00 95 e5                                      ldr r0, [r5, #0x10]
007c5bb8  6b 24 ed eb                                      bl #0x30ed6c
007c5bbc  10 00 85 e5                                      str r0, [r5, #0x10]
007c5bc0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007c5bc4  66 23 ed eb                                      bl #0x30e964
007c5bc8  41 14 a0 e3                                      mov r1, #0x41000000
007c5bcc  0a 16 81 e2                                      add r1, r1, #0xa00000
007c5bd0  65 24 ed eb                                      bl #0x30ed6c
007c5bd4  38 30 9d e5                                      ldr r3, [sp, #0x38]
007c5bd8  08 10 a0 e1                                      mov r1, r8
007c5bdc  38 20 8d e2                                      add r2, sp, #0x38
007c5be0  04 00 83 e5                                      str r0, [r3, #4]
007c5be4  0a 00 a0 e1                                      mov r0, sl
007c5be8  22 ff ff eb                                      bl #0x7c5878
007c5bec  38 c0 9d e5                                      ldr ip, [sp, #0x38]
007c5bf0  0c 30 a0 e1                                      mov r3, ip
007c5bf4  8e ff ff ea                                      b #0x7c5a34
007c5bf8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
007c5bfc  00 00 8f e0                                      add r0, pc, r0
007c5c00  5f 6d fe eb                                      bl #0x761184
007c5c04  05 00 a0 e1                                      mov r0, r5
007c5c08  92 ff ff ea                                      b #0x7c5a58
; mapping-symbol data/literal pool
007c5c0c  d4 54 14 00                                      .byte 0xd4, 0x54, 0x14, 0x00
