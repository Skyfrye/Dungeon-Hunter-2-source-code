; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d4430, declared_size=296, range_size=296, mode=arm
; class-group: render_handler_glitch::fill_style
; alias: _ZN21render_handler_glitch10fill_style10set_bitmapEPN7gameswf11bitmap_infoERKNS1_6matrixENS1_14render_handler16bitmap_wrap_modeERKNS1_6cxformE
; demangled: render_handler_glitch::fill_style::set_bitmap(gameswf::bitmap_info*, gameswf::matrix const&, gameswf::render_handler::bitmap_wrap_mode, gameswf::cxform const&)
; decoder-mode: arm
007d4430  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d4434  00 00 53 e3                                      cmp r3, #0
007d4438  02 30 a0 03                                      moveq r3, #2
007d443c  03 30 a0 13                                      movne r3, #3
007d4440  00 30 80 e5                                      str r3, [r0]
007d4444  08 10 80 e5                                      str r1, [r0, #8]
007d4448  0c e0 80 e2                                      add lr, r0, #0xc
007d444c  02 c0 a0 e1                                      mov ip, r2
007d4450  00 40 a0 e1                                      mov r4, r0
007d4454  18 50 9d e5                                      ldr r5, [sp, #0x18]
007d4458  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007d445c  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
007d4460  03 00 9c e8                                      ldm ip, {r0, r1}
007d4464  24 c0 84 e2                                      add ip, r4, #0x24
007d4468  03 00 8e e8                                      stm lr, {r0, r1}
007d446c  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
007d4470  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007d4474  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
007d4478  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007d447c  24 00 84 e2                                      add r0, r4, #0x24
007d4480  2a 03 ff eb                                      bl #0x795130
007d4484  43 14 a0 e3                                      mov r1, #0x43000000
007d4488  7f 18 81 e2                                      add r1, r1, #0x7f0000
007d448c  24 00 94 e5                                      ldr r0, [r4, #0x24]
007d4490  35 ea ec eb                                      bl #0x30ed6c
007d4494  81 a7 03 eb                                      bl #0x8be2a0
007d4498  43 14 a0 e3                                      mov r1, #0x43000000
007d449c  7f 18 81 e2                                      add r1, r1, #0x7f0000
007d44a0  70 50 ef e6                                      uxtb r5, r0
007d44a4  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007d44a8  2f ea ec eb                                      bl #0x30ed6c
007d44ac  7b a7 03 eb                                      bl #0x8be2a0
007d44b0  43 14 a0 e3                                      mov r1, #0x43000000
007d44b4  7f 18 81 e2                                      add r1, r1, #0x7f0000
007d44b8  70 60 ef e6                                      uxtb r6, r0
007d44bc  34 00 94 e5                                      ldr r0, [r4, #0x34]
007d44c0  29 ea ec eb                                      bl #0x30ed6c
007d44c4  75 a7 03 eb                                      bl #0x8be2a0
007d44c8  43 14 a0 e3                                      mov r1, #0x43000000
007d44cc  7f 18 81 e2                                      add r1, r1, #0x7f0000
007d44d0  70 70 ef e6                                      uxtb r7, r0
007d44d4  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007d44d8  23 ea ec eb                                      bl #0x30ed6c
007d44dc  6f a7 03 eb                                      bl #0x8be2a0
007d44e0  06 70 c4 e5                                      strb r7, [r4, #6]
007d44e4  07 00 c4 e5                                      strb r0, [r4, #7]
007d44e8  05 60 c4 e5                                      strb r6, [r4, #5]
007d44ec  04 50 c4 e5                                      strb r5, [r4, #4]
007d44f0  28 00 94 e5                                      ldr r0, [r4, #0x28]
007d44f4  fe 15 a0 e3                                      mov r1, #0x3f800000
007d44f8  7e e7 ec eb                                      bl #0x30e2f8
007d44fc  00 00 50 e3                                      cmp r0, #0
007d4500  02 00 00 0a                                      beq #0x7d4510
007d4504  01 30 a0 e3                                      mov r3, #1
007d4508  44 30 c4 e5                                      strb r3, [r4, #0x44]
007d450c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007d4510  30 00 94 e5                                      ldr r0, [r4, #0x30]
007d4514  fe 15 a0 e3                                      mov r1, #0x3f800000
007d4518  76 e7 ec eb                                      bl #0x30e2f8
007d451c  00 00 50 e3                                      cmp r0, #0
007d4520  f7 ff ff 1a                                      bne #0x7d4504
007d4524  38 00 94 e5                                      ldr r0, [r4, #0x38]
007d4528  fe 15 a0 e3                                      mov r1, #0x3f800000
007d452c  71 e7 ec eb                                      bl #0x30e2f8
007d4530  00 00 50 e3                                      cmp r0, #0
007d4534  f2 ff ff 1a                                      bne #0x7d4504
007d4538  40 00 94 e5                                      ldr r0, [r4, #0x40]
007d453c  fe 15 a0 e3                                      mov r1, #0x3f800000
007d4540  6c e7 ec eb                                      bl #0x30e2f8
007d4544  00 00 50 e3                                      cmp r0, #0
007d4548  ed ff ff 1a                                      bne #0x7d4504
007d454c  00 30 a0 e3                                      mov r3, #0
007d4550  44 30 c4 e5                                      strb r3, [r4, #0x44]
007d4554  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007d6b54, declared_size=648, range_size=648, mode=arm
; class-group: render_handler_glitch::fill_style
; alias: _ZNK21render_handler_glitch10fill_style5applyEPN6glitch5video12IVideoDriverER16BufferedRendererP6Vertexi
; demangled: render_handler_glitch::fill_style::apply(glitch::video::IVideoDriver*, BufferedRenderer&, Vertex*, int) const
; decoder-mode: arm
007d6b54  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d6b58  00 c0 90 e5                                      ldr ip, [r0]
007d6b5c  1c d0 4d e2                                      sub sp, sp, #0x1c
007d6b60  00 40 a0 e1                                      mov r4, r0
007d6b64  01 00 5c e3                                      cmp ip, #1
007d6b68  02 70 a0 e1                                      mov r7, r2
007d6b6c  03 90 a0 e1                                      mov sb, r3
007d6b70  40 50 9d e5                                      ldr r5, [sp, #0x40]
007d6b74  08 60 90 e5                                      ldr r6, [r0, #8]
007d6b78  13 00 00 0a                                      beq #0x7d6bcc
007d6b7c  02 c0 4c e2                                      sub ip, ip, #2
007d6b80  01 00 5c e3                                      cmp ip, #1
007d6b84  28 00 00 9a                                      bls #0x7d6c2c
007d6b88  00 00 55 e3                                      cmp r5, #0
007d6b8c  06 20 d0 e5                                      ldrb r2, [r0, #6]
007d6b90  07 c0 d0 e5                                      ldrb ip, [r0, #7]
007d6b94  05 10 d4 e5                                      ldrb r1, [r4, #5]
007d6b98  04 00 d0 e5                                      ldrb r0, [r0, #4]
007d6b9c  08 00 00 da                                      ble #0x7d6bc4
007d6ba0  00 30 a0 e3                                      mov r3, #0
007d6ba4  01 30 83 e2                                      add r3, r3, #1
007d6ba8  03 00 55 e1                                      cmp r5, r3
007d6bac  0b c0 c9 e5                                      strb ip, [sb, #0xb]
007d6bb0  0a 20 c9 e5                                      strb r2, [sb, #0xa]
007d6bb4  09 10 c9 e5                                      strb r1, [sb, #9]
007d6bb8  08 00 c9 e5                                      strb r0, [sb, #8]
007d6bbc  18 90 89 e2                                      add sb, sb, #0x18
007d6bc0  f7 ff ff ca                                      bgt #0x7d6ba4
007d6bc4  1c d0 8d e2                                      add sp, sp, #0x1c
007d6bc8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d6bcc  00 30 96 e5                                      ldr r3, [r6]
007d6bd0  06 00 a0 e1                                      mov r0, r6
007d6bd4  0f e0 a0 e1                                      mov lr, pc
007d6bd8  08 f0 93 e5                                      ldr pc, [r3, #8]
007d6bdc  07 00 a0 e1                                      mov r0, r7
007d6be0  10 10 86 e2                                      add r1, r6, #0x10
007d6be4  97 ff ff eb                                      bl #0x7d6a48
007d6be8  00 00 55 e3                                      cmp r5, #0
007d6bec  f4 ff ff da                                      ble #0x7d6bc4
007d6bf0  00 10 a0 e3                                      mov r1, #0
007d6bf4  00 00 a0 e3                                      mov r0, #0
007d6bf8  01 20 a0 e1                                      mov r2, r1
007d6bfc  09 30 a0 e1                                      mov r3, sb
007d6c00  01 20 82 e2                                      add r2, r2, #1
007d6c04  01 00 a3 e7                                      str r0, [r3, r1]!
007d6c08  05 00 52 e1                                      cmp r2, r5
007d6c0c  04 00 83 e5                                      str r0, [r3, #4]
007d6c10  18 10 81 e2                                      add r1, r1, #0x18
007d6c14  f8 ff ff 1a                                      bne #0x7d6bfc
007d6c18  06 20 d4 e5                                      ldrb r2, [r4, #6]
007d6c1c  07 c0 d4 e5                                      ldrb ip, [r4, #7]
007d6c20  04 00 d4 e5                                      ldrb r0, [r4, #4]
007d6c24  05 10 d4 e5                                      ldrb r1, [r4, #5]
007d6c28  dc ff ff ea                                      b #0x7d6ba0
007d6c2c  00 30 96 e5                                      ldr r3, [r6]
007d6c30  06 00 a0 e1                                      mov r0, r6
007d6c34  0f e0 a0 e1                                      mov lr, pc
007d6c38  08 f0 93 e5                                      ldr pc, [r3, #8]
007d6c3c  07 00 a0 e1                                      mov r0, r7
007d6c40  10 10 86 e2                                      add r1, r6, #0x10
007d6c44  7f ff ff eb                                      bl #0x7d6a48
007d6c48  10 00 96 e5                                      ldr r0, [r6, #0x10]
007d6c4c  00 00 50 e3                                      cmp r0, #0
007d6c50  04 00 00 0a                                      beq #0x7d6c68
007d6c54  00 10 94 e5                                      ldr r1, [r4]
007d6c58  02 00 51 e3                                      cmp r1, #2
007d6c5c  02 10 a0 13                                      movne r1, #2
007d6c60  00 10 a0 03                                      moveq r1, #0
007d6c64  d2 f3 ff eb                                      bl #0x7d3bb4
007d6c68  08 30 94 e5                                      ldr r3, [r4, #8]
007d6c6c  03 00 a0 e1                                      mov r0, r3
007d6c70  00 30 93 e5                                      ldr r3, [r3]
007d6c74  0f e0 a0 e1                                      mov lr, pc
007d6c78  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007d6c7c  38 df ec eb                                      bl #0x30e964
007d6c80  00 10 a0 e1                                      mov r1, r0
007d6c84  fe 05 a0 e3                                      mov r0, #0x3f800000
007d6c88  01 e0 ec eb                                      bl #0x30ec94
007d6c8c  08 30 94 e5                                      ldr r3, [r4, #8]
007d6c90  00 70 a0 e1                                      mov r7, r0
007d6c94  03 00 a0 e1                                      mov r0, r3
007d6c98  00 30 93 e5                                      ldr r3, [r3]
007d6c9c  0f e0 a0 e1                                      mov lr, pc
007d6ca0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
007d6ca4  2e df ec eb                                      bl #0x30e964
007d6ca8  00 10 a0 e1                                      mov r1, r0
007d6cac  fe 05 a0 e3                                      mov r0, #0x3f800000
007d6cb0  f7 df ec eb                                      bl #0x30ec94
007d6cb4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007d6cb8  00 60 a0 e1                                      mov r6, r0
007d6cbc  07 00 a0 e1                                      mov r0, r7
007d6cc0  29 e0 ec eb                                      bl #0x30ed6c
007d6cc4  10 10 94 e5                                      ldr r1, [r4, #0x10]
007d6cc8  00 a0 a0 e1                                      mov sl, r0
007d6ccc  07 00 a0 e1                                      mov r0, r7
007d6cd0  25 e0 ec eb                                      bl #0x30ed6c
007d6cd4  14 10 94 e5                                      ldr r1, [r4, #0x14]
007d6cd8  00 80 a0 e1                                      mov r8, r0
007d6cdc  07 00 a0 e1                                      mov r0, r7
007d6ce0  21 e0 ec eb                                      bl #0x30ed6c
007d6ce4  0c 00 8d e5                                      str r0, [sp, #0xc]
007d6ce8  18 10 94 e5                                      ldr r1, [r4, #0x18]
007d6cec  06 00 a0 e1                                      mov r0, r6
007d6cf0  1d e0 ec eb                                      bl #0x30ed6c
007d6cf4  08 00 8d e5                                      str r0, [sp, #8]
007d6cf8  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007d6cfc  06 00 a0 e1                                      mov r0, r6
007d6d00  19 e0 ec eb                                      bl #0x30ed6c
007d6d04  04 00 8d e5                                      str r0, [sp, #4]
007d6d08  20 10 94 e5                                      ldr r1, [r4, #0x20]
007d6d0c  06 00 a0 e1                                      mov r0, r6
007d6d10  15 e0 ec eb                                      bl #0x30ed6c
007d6d14  00 00 55 e3                                      cmp r5, #0
007d6d18  00 00 8d e5                                      str r0, [sp]
007d6d1c  a8 ff ff da                                      ble #0x7d6bc4
007d6d20  09 60 a0 e1                                      mov r6, sb
007d6d24  14 90 8d e5                                      str sb, [sp, #0x14]
007d6d28  00 70 a0 e3                                      mov r7, #0
007d6d2c  0a b0 a0 e1                                      mov fp, sl
007d6d30  10 40 8d e5                                      str r4, [sp, #0x10]
007d6d34  08 90 a0 e1                                      mov sb, r8
007d6d38  0c 80 96 e5                                      ldr r8, [r6, #0xc]
007d6d3c  0b 00 a0 e1                                      mov r0, fp
007d6d40  10 40 96 e5                                      ldr r4, [r6, #0x10]
007d6d44  08 10 a0 e1                                      mov r1, r8
007d6d48  07 e0 ec eb                                      bl #0x30ed6c
007d6d4c  04 10 a0 e1                                      mov r1, r4
007d6d50  00 a0 a0 e1                                      mov sl, r0
007d6d54  09 00 a0 e1                                      mov r0, sb
007d6d58  03 e0 ec eb                                      bl #0x30ed6c
007d6d5c  00 10 a0 e1                                      mov r1, r0
007d6d60  0a 00 a0 e1                                      mov r0, sl
007d6d64  8e df ec eb                                      bl #0x30eba4
007d6d68  00 10 a0 e1                                      mov r1, r0
007d6d6c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007d6d70  8b df ec eb                                      bl #0x30eba4
007d6d74  00 00 86 e5                                      str r0, [r6]
007d6d78  08 10 a0 e1                                      mov r1, r8
007d6d7c  08 00 9d e5                                      ldr r0, [sp, #8]
007d6d80  f9 df ec eb                                      bl #0x30ed6c
007d6d84  04 10 a0 e1                                      mov r1, r4
007d6d88  00 80 a0 e1                                      mov r8, r0
007d6d8c  04 00 9d e5                                      ldr r0, [sp, #4]
007d6d90  f5 df ec eb                                      bl #0x30ed6c
007d6d94  00 10 a0 e1                                      mov r1, r0
007d6d98  08 00 a0 e1                                      mov r0, r8
007d6d9c  80 df ec eb                                      bl #0x30eba4
007d6da0  00 10 a0 e1                                      mov r1, r0
007d6da4  00 00 9d e5                                      ldr r0, [sp]
007d6da8  7d df ec eb                                      bl #0x30eba4
007d6dac  01 70 87 e2                                      add r7, r7, #1
007d6db0  05 00 57 e1                                      cmp r7, r5
007d6db4  04 00 86 e5                                      str r0, [r6, #4]
007d6db8  18 60 86 e2                                      add r6, r6, #0x18
007d6dbc  dd ff ff 1a                                      bne #0x7d6d38
007d6dc0  10 40 9d e5                                      ldr r4, [sp, #0x10]
007d6dc4  14 90 9d e5                                      ldr sb, [sp, #0x14]
007d6dc8  06 20 d4 e5                                      ldrb r2, [r4, #6]
007d6dcc  07 c0 d4 e5                                      ldrb ip, [r4, #7]
007d6dd0  04 00 d4 e5                                      ldrb r0, [r4, #4]
007d6dd4  05 10 d4 e5                                      ldrb r1, [r4, #5]
007d6dd8  70 ff ff ea                                      b #0x7d6ba0
