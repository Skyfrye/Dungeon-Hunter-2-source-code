; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d3cbc, declared_size=4, range_size=4, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_ogl8activateEv
; demangled: bitmap_info_ogl::activate()
; decoder-mode: arm
007d3cbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3cc0, declared_size=12, range_size=12, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_ogl12set_writableEv
; demangled: bitmap_info_ogl::set_writable()
; decoder-mode: arm
007d3cc0  01 30 a0 e3                                      mov r3, #1
007d3cc4  0c 30 c0 e5                                      strb r3, [r0, #0xc]
007d3cc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3ccc, declared_size=104, range_size=104, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_ogl14set_min_filterEN7gameswf11bitmap_info11filter_modeE
; demangled: bitmap_info_ogl::set_min_filter(gameswf::bitmap_info::filter_mode)
; decoder-mode: arm
007d3ccc  10 30 90 e5                                      ldr r3, [r0, #0x10]
007d3cd0  2c 10 80 e5                                      str r1, [r0, #0x2c]
007d3cd4  00 00 53 e3                                      cmp r3, #0
007d3cd8  1e ff 2f 01                                      bxeq lr
007d3cdc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
007d3ce0  38 00 93 e5                                      ldr r0, [r3, #0x38]
007d3ce4  02 20 8f e0                                      add r2, pc, r2
007d3ce8  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
007d3cec  50 16 e2 e7                                      ubfx r1, r0, #0xc, #3
007d3cf0  01 00 52 e1                                      cmp r2, r1
007d3cf4  1e ff 2f 01                                      bxeq lr
007d3cf8  3e 10 d3 e5                                      ldrb r1, [r3, #0x3e]
007d3cfc  01 00 51 e3                                      cmp r1, #1
007d3d00  07 00 00 9a                                      bls #0x7d3d24
007d3d04  b0 14 d3 e1                                      ldrh r1, [r3, #0x40]
007d3d08  07 20 02 e2                                      and r2, r2, #7
007d3d0c  07 0a c0 e3                                      bic r0, r0, #0x7000
007d3d10  02 26 80 e1                                      orr r2, r0, r2, lsl #12
007d3d14  04 10 81 e3                                      orr r1, r1, #4
007d3d18  b0 14 c3 e1                                      strh r1, [r3, #0x40]
007d3d1c  38 20 83 e5                                      str r2, [r3, #0x38]
007d3d20  1e ff 2f e1                                      bx lr
007d3d24  01 00 52 e3                                      cmp r2, #1
007d3d28  1e ff 2f c1                                      bxgt lr
007d3d2c  f4 ff ff ea                                      b #0x7d3d04
; mapping-symbol data/literal pool
007d3d30  58 83 13 00                                      .byte 0x58, 0x83, 0x13, 0x00

; FUNCTION 0x007d3d34, declared_size=80, range_size=80, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_ogl14set_mag_filterEN7gameswf11bitmap_info11filter_modeE
; demangled: bitmap_info_ogl::set_mag_filter(gameswf::bitmap_info::filter_mode)
; decoder-mode: arm
007d3d34  10 30 90 e5                                      ldr r3, [r0, #0x10]
007d3d38  30 10 80 e5                                      str r1, [r0, #0x30]
007d3d3c  00 00 53 e3                                      cmp r3, #0
007d3d40  1e ff 2f 01                                      bxeq lr
007d3d44  34 20 9f e5                                      ldr r2, [pc, #0x34]
007d3d48  38 00 93 e5                                      ldr r0, [r3, #0x38]
007d3d4c  02 20 8f e0                                      add r2, pc, r2
007d3d50  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
007d3d54  d0 17 e2 e7                                      ubfx r1, r0, #0xf, #3
007d3d58  01 00 52 e1                                      cmp r2, r1
007d3d5c  1e ff 2f 01                                      bxeq lr
007d3d60  b0 14 d3 e1                                      ldrh r1, [r3, #0x40]
007d3d64  07 20 02 e2                                      and r2, r2, #7
007d3d68  0e 09 c0 e3                                      bic r0, r0, #0x38000
007d3d6c  82 27 80 e1                                      orr r2, r0, r2, lsl #15
007d3d70  08 10 81 e3                                      orr r1, r1, #8
007d3d74  b0 14 c3 e1                                      strh r1, [r3, #0x40]
007d3d78  38 20 83 e5                                      str r2, [r3, #0x38]
007d3d7c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007d3d80  f0 82 13 00                                      .byte 0xf0, 0x82, 0x13, 0x00

; FUNCTION 0x007d3d84, declared_size=8, range_size=8, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZNK15bitmap_info_ogl9get_widthEv
; demangled: bitmap_info_ogl::get_width() const
; decoder-mode: arm
007d3d84  20 00 90 e5                                      ldr r0, [r0, #0x20]
007d3d88  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3d8c, declared_size=8, range_size=8, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZNK15bitmap_info_ogl10get_heightEv
; demangled: bitmap_info_ogl::get_height() const
; decoder-mode: arm
007d3d8c  24 00 90 e5                                      ldr r0, [r0, #0x24]
007d3d90  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3d94, declared_size=16, range_size=16, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZNK15bitmap_info_ogl9is_layoutEv
; demangled: bitmap_info_ogl::is_layout() const
; decoder-mode: arm
007d3d94  10 00 90 e5                                      ldr r0, [r0, #0x10]
007d3d98  00 00 50 e2                                      subs r0, r0, #0
007d3d9c  01 00 a0 13                                      movne r0, #1
007d3da0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3da4, declared_size=40, range_size=40, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZNK15bitmap_info_ogl18get_internal_widthEv
; demangled: bitmap_info_ogl::get_internal_width() const
; decoder-mode: arm
007d3da4  10 30 90 e5                                      ldr r3, [r0, #0x10]
007d3da8  00 00 53 e3                                      cmp r3, #0
007d3dac  20 00 93 15                                      ldrne r0, [r3, #0x20]
007d3db0  1e ff 2f 11                                      bxne lr
007d3db4  18 30 90 e5                                      ldr r3, [r0, #0x18]
007d3db8  00 00 53 e3                                      cmp r3, #0
007d3dbc  20 00 90 05                                      ldreq r0, [r0, #0x20]
007d3dc0  1e ff 2f 01                                      bxeq lr
007d3dc4  10 00 93 e5                                      ldr r0, [r3, #0x10]
007d3dc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3dcc, declared_size=40, range_size=40, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZNK15bitmap_info_ogl19get_internal_heightEv
; demangled: bitmap_info_ogl::get_internal_height() const
; decoder-mode: arm
007d3dcc  10 30 90 e5                                      ldr r3, [r0, #0x10]
007d3dd0  00 00 53 e3                                      cmp r3, #0
007d3dd4  24 00 93 15                                      ldrne r0, [r3, #0x24]
007d3dd8  1e ff 2f 11                                      bxne lr
007d3ddc  18 30 90 e5                                      ldr r3, [r0, #0x18]
007d3de0  00 00 53 e3                                      cmp r3, #0
007d3de4  24 00 90 05                                      ldreq r0, [r0, #0x24]
007d3de8  1e ff 2f 01                                      bxeq lr
007d3dec  14 00 93 e5                                      ldr r0, [r3, #0x14]
007d3df0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3fcc, declared_size=92, range_size=92, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_ogl2p2Ei
; demangled: bitmap_info_ogl::p2(int)
; decoder-mode: arm
007d3fcc  01 00 51 e3                                      cmp r1, #1
007d3fd0  70 40 2d e9                                      push {r4, r5, r6, lr}
007d3fd4  01 40 a0 d3                                      movle r4, #1
007d3fd8  03 00 00 da                                      ble #0x7d3fec
007d3fdc  01 40 a0 e3                                      mov r4, #1
007d3fe0  84 40 a0 e1                                      lsl r4, r4, #1
007d3fe4  04 00 51 e1                                      cmp r1, r4
007d3fe8  fc ff ff ca                                      bgt #0x7d3fe0
007d3fec  01 00 a0 e1                                      mov r0, r1
007d3ff0  5b ea ec eb                                      bl #0x30e964
007d3ff4  00 50 a0 e1                                      mov r5, r0
007d3ff8  04 00 a0 e1                                      mov r0, r4
007d3ffc  58 ea ec eb                                      bl #0x30e964
007d4000  00 10 a0 e1                                      mov r1, r0
007d4004  05 00 a0 e1                                      mov r0, r5
007d4008  21 eb ec eb                                      bl #0x30ec94
007d400c  9a 19 09 e3                                      movw r1, #0x999a
007d4010  19 1f 43 e3                                      movt r1, #0x3f19
007d4014  bc e9 ec eb                                      bl #0x30e70c
007d4018  00 00 50 e3                                      cmp r0, #0
007d401c  c4 40 a0 11                                      asrne r4, r4, #1
007d4020  04 00 a0 e1                                      mov r0, r4
007d4024  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d4048, declared_size=8, range_size=8, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_ogl6unlockEv
; demangled: bitmap_info_ogl::unlock()
; decoder-mode: arm
007d4048  10 00 90 e5                                      ldr r0, [r0, #0x10]
007d404c  0c a7 f8 ea                                      b #0x5fdc84

; FUNCTION 0x007d4050, declared_size=36, range_size=36, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_ogl4lockEv
; demangled: bitmap_info_ogl::lock()
; decoder-mode: arm
007d4050  10 40 2d e9                                      push {r4, lr}
007d4054  00 30 90 e5                                      ldr r3, [r0]
007d4058  00 40 a0 e1                                      mov r4, r0
007d405c  0f e0 a0 e1                                      mov lr, pc
007d4060  08 f0 93 e5                                      ldr pc, [r3, #8]
007d4064  10 00 94 e5                                      ldr r0, [r4, #0x10]
007d4068  00 10 a0 e3                                      mov r1, #0
007d406c  10 40 bd e8                                      pop {r4, lr}
007d4070  a2 a8 f8 ea                                      b #0x5fe300

; FUNCTION 0x007d4b3c, declared_size=120, range_size=120, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEiiPKN7gameswf6membufE
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, int, int, gameswf::membuf const*)
; decoder-mode: arm
007d4b3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d4b40  64 40 9f e5                                      ldr r4, [pc, #0x64]
007d4b44  00 70 a0 e1                                      mov r7, r0
007d4b48  01 50 a0 e1                                      mov r5, r1
007d4b4c  02 60 a0 e1                                      mov r6, r2
007d4b50  03 80 a0 e1                                      mov r8, r3
007d4b54  2a 14 fe eb                                      bl #0x759c04
007d4b58  50 20 9f e5                                      ldr r2, [pc, #0x50]
007d4b5c  04 40 8f e0                                      add r4, pc, r4
007d4b60  00 30 a0 e3                                      mov r3, #0
007d4b64  02 20 94 e7                                      ldr r2, [r4, r2]
007d4b68  18 30 87 e5                                      str r3, [r7, #0x18]
007d4b6c  01 10 a0 e3                                      mov r1, #1
007d4b70  08 20 82 e2                                      add r2, r2, #8
007d4b74  00 20 87 e5                                      str r2, [r7]
007d4b78  18 20 9d e5                                      ldr r2, [sp, #0x18]
007d4b7c  20 60 87 e5                                      str r6, [r7, #0x20]
007d4b80  24 80 87 e5                                      str r8, [r7, #0x24]
007d4b84  1c 20 87 e5                                      str r2, [r7, #0x1c]
007d4b88  28 50 87 e5                                      str r5, [r7, #0x28]
007d4b8c  30 10 87 e5                                      str r1, [r7, #0x30]
007d4b90  0c 30 c7 e5                                      strb r3, [r7, #0xc]
007d4b94  0d 30 c7 e5                                      strb r3, [r7, #0xd]
007d4b98  10 30 87 e5                                      str r3, [r7, #0x10]
007d4b9c  14 30 87 e5                                      str r3, [r7, #0x14]
007d4ba0  2c 10 87 e5                                      str r1, [r7, #0x2c]
007d4ba4  07 00 a0 e1                                      mov r0, r7
007d4ba8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d4bac  34 ff 1b 00 e4 05 00 00                          .byte 0x34, 0xff, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d4bfc, declared_size=120, range_size=120, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC2EPN6glitch5video12IVideoDriverEiiPKN7gameswf6membufE
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, int, int, gameswf::membuf const*)
; decoder-mode: arm
007d4bfc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d4c00  64 40 9f e5                                      ldr r4, [pc, #0x64]
007d4c04  00 70 a0 e1                                      mov r7, r0
007d4c08  01 50 a0 e1                                      mov r5, r1
007d4c0c  02 60 a0 e1                                      mov r6, r2
007d4c10  03 80 a0 e1                                      mov r8, r3
007d4c14  fa 13 fe eb                                      bl #0x759c04
007d4c18  50 20 9f e5                                      ldr r2, [pc, #0x50]
007d4c1c  04 40 8f e0                                      add r4, pc, r4
007d4c20  00 30 a0 e3                                      mov r3, #0
007d4c24  02 20 94 e7                                      ldr r2, [r4, r2]
007d4c28  18 30 87 e5                                      str r3, [r7, #0x18]
007d4c2c  01 10 a0 e3                                      mov r1, #1
007d4c30  08 20 82 e2                                      add r2, r2, #8
007d4c34  00 20 87 e5                                      str r2, [r7]
007d4c38  18 20 9d e5                                      ldr r2, [sp, #0x18]
007d4c3c  20 60 87 e5                                      str r6, [r7, #0x20]
007d4c40  24 80 87 e5                                      str r8, [r7, #0x24]
007d4c44  1c 20 87 e5                                      str r2, [r7, #0x1c]
007d4c48  28 50 87 e5                                      str r5, [r7, #0x28]
007d4c4c  30 10 87 e5                                      str r1, [r7, #0x30]
007d4c50  0c 30 c7 e5                                      strb r3, [r7, #0xc]
007d4c54  0d 30 c7 e5                                      strb r3, [r7, #0xd]
007d4c58  10 30 87 e5                                      str r3, [r7, #0x10]
007d4c5c  14 30 87 e5                                      str r3, [r7, #0x14]
007d4c60  2c 10 87 e5                                      str r1, [r7, #0x2c]
007d4c64  07 00 a0 e1                                      mov r0, r7
007d4c68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d4c6c  74 fe 1b 00 e4 05 00 00                          .byte 0x74, 0xfe, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d4c74, declared_size=140, range_size=140, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEPNS1_8ITextureE
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, glitch::video::ITexture*)
; decoder-mode: arm
007d4c74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d4c78  78 40 9f e5                                      ldr r4, [pc, #0x78]
007d4c7c  00 60 a0 e1                                      mov r6, r0
007d4c80  02 50 a0 e1                                      mov r5, r2
007d4c84  01 70 a0 e1                                      mov r7, r1
007d4c88  dd 13 fe eb                                      bl #0x759c04
007d4c8c  68 30 9f e5                                      ldr r3, [pc, #0x68]
007d4c90  04 40 8f e0                                      add r4, pc, r4
007d4c94  00 20 a0 e3                                      mov r2, #0
007d4c98  03 30 94 e7                                      ldr r3, [r4, r3]
007d4c9c  0d 20 c6 e5                                      strb r2, [r6, #0xd]
007d4ca0  0c 20 c6 e5                                      strb r2, [r6, #0xc]
007d4ca4  08 30 83 e2                                      add r3, r3, #8
007d4ca8  00 30 86 e5                                      str r3, [r6]
007d4cac  10 50 86 e5                                      str r5, [r6, #0x10]
007d4cb0  00 00 55 e3                                      cmp r5, #0
007d4cb4  04 30 95 15                                      ldrne r3, [r5, #4]
007d4cb8  06 00 a0 e1                                      mov r0, r6
007d4cbc  01 30 83 12                                      addne r3, r3, #1
007d4cc0  04 30 85 15                                      strne r3, [r5, #4]
007d4cc4  00 30 a0 e3                                      mov r3, #0
007d4cc8  1c 30 86 e5                                      str r3, [r6, #0x1c]
007d4ccc  14 30 86 e5                                      str r3, [r6, #0x14]
007d4cd0  18 30 86 e5                                      str r3, [r6, #0x18]
007d4cd4  20 20 95 e5                                      ldr r2, [r5, #0x20]
007d4cd8  01 30 a0 e3                                      mov r3, #1
007d4cdc  20 20 86 e5                                      str r2, [r6, #0x20]
007d4ce0  24 20 95 e5                                      ldr r2, [r5, #0x24]
007d4ce4  28 70 86 e5                                      str r7, [r6, #0x28]
007d4ce8  30 30 86 e5                                      str r3, [r6, #0x30]
007d4cec  24 20 86 e5                                      str r2, [r6, #0x24]
007d4cf0  2c 30 86 e5                                      str r3, [r6, #0x2c]
007d4cf4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d4cf8  00 fe 1b 00 e4 05 00 00                          .byte 0x00, 0xfe, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d4d30, declared_size=140, range_size=140, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC2EPN6glitch5video12IVideoDriverEPNS1_8ITextureE
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, glitch::video::ITexture*)
; decoder-mode: arm
007d4d30  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d4d34  78 40 9f e5                                      ldr r4, [pc, #0x78]
007d4d38  00 60 a0 e1                                      mov r6, r0
007d4d3c  02 50 a0 e1                                      mov r5, r2
007d4d40  01 70 a0 e1                                      mov r7, r1
007d4d44  ae 13 fe eb                                      bl #0x759c04
007d4d48  68 30 9f e5                                      ldr r3, [pc, #0x68]
007d4d4c  04 40 8f e0                                      add r4, pc, r4
007d4d50  00 20 a0 e3                                      mov r2, #0
007d4d54  03 30 94 e7                                      ldr r3, [r4, r3]
007d4d58  0d 20 c6 e5                                      strb r2, [r6, #0xd]
007d4d5c  0c 20 c6 e5                                      strb r2, [r6, #0xc]
007d4d60  08 30 83 e2                                      add r3, r3, #8
007d4d64  00 30 86 e5                                      str r3, [r6]
007d4d68  10 50 86 e5                                      str r5, [r6, #0x10]
007d4d6c  00 00 55 e3                                      cmp r5, #0
007d4d70  04 30 95 15                                      ldrne r3, [r5, #4]
007d4d74  06 00 a0 e1                                      mov r0, r6
007d4d78  01 30 83 12                                      addne r3, r3, #1
007d4d7c  04 30 85 15                                      strne r3, [r5, #4]
007d4d80  00 30 a0 e3                                      mov r3, #0
007d4d84  1c 30 86 e5                                      str r3, [r6, #0x1c]
007d4d88  14 30 86 e5                                      str r3, [r6, #0x14]
007d4d8c  18 30 86 e5                                      str r3, [r6, #0x18]
007d4d90  20 20 95 e5                                      ldr r2, [r5, #0x20]
007d4d94  01 30 a0 e3                                      mov r3, #1
007d4d98  20 20 86 e5                                      str r2, [r6, #0x20]
007d4d9c  24 20 95 e5                                      ldr r2, [r5, #0x24]
007d4da0  28 70 86 e5                                      str r7, [r6, #0x28]
007d4da4  30 30 86 e5                                      str r3, [r6, #0x30]
007d4da8  24 20 86 e5                                      str r2, [r6, #0x24]
007d4dac  2c 30 86 e5                                      str r3, [r6, #0x2c]
007d4db0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d4db4  44 fd 1b 00 e4 05 00 00                          .byte 0x44, 0xfd, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d4dbc, declared_size=108, range_size=108, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverE
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*)
; decoder-mode: arm
007d4dbc  70 40 2d e9                                      push {r4, r5, r6, lr}
007d4dc0  58 40 9f e5                                      ldr r4, [pc, #0x58]
007d4dc4  00 50 a0 e1                                      mov r5, r0
007d4dc8  01 60 a0 e1                                      mov r6, r1
007d4dcc  8c 13 fe eb                                      bl #0x759c04
007d4dd0  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
007d4dd4  04 40 8f e0                                      add r4, pc, r4
007d4dd8  00 30 a0 e3                                      mov r3, #0
007d4ddc  02 20 94 e7                                      ldr r2, [r4, r2]
007d4de0  01 10 a0 e3                                      mov r1, #1
007d4de4  24 30 85 e5                                      str r3, [r5, #0x24]
007d4de8  08 20 82 e2                                      add r2, r2, #8
007d4dec  00 20 85 e5                                      str r2, [r5]
007d4df0  28 60 85 e5                                      str r6, [r5, #0x28]
007d4df4  30 10 85 e5                                      str r1, [r5, #0x30]
007d4df8  0c 30 c5 e5                                      strb r3, [r5, #0xc]
007d4dfc  0d 30 c5 e5                                      strb r3, [r5, #0xd]
007d4e00  10 30 85 e5                                      str r3, [r5, #0x10]
007d4e04  14 30 85 e5                                      str r3, [r5, #0x14]
007d4e08  18 30 85 e5                                      str r3, [r5, #0x18]
007d4e0c  1c 30 85 e5                                      str r3, [r5, #0x1c]
007d4e10  20 30 85 e5                                      str r3, [r5, #0x20]
007d4e14  2c 10 85 e5                                      str r1, [r5, #0x2c]
007d4e18  05 00 a0 e1                                      mov r0, r5
007d4e1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007d4e20  bc fc 1b 00 e4 05 00 00                          .byte 0xbc, 0xfc, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d4e50, declared_size=108, range_size=108, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC2EPN6glitch5video12IVideoDriverE
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*)
; decoder-mode: arm
007d4e50  70 40 2d e9                                      push {r4, r5, r6, lr}
007d4e54  58 40 9f e5                                      ldr r4, [pc, #0x58]
007d4e58  00 50 a0 e1                                      mov r5, r0
007d4e5c  01 60 a0 e1                                      mov r6, r1
007d4e60  67 13 fe eb                                      bl #0x759c04
007d4e64  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
007d4e68  04 40 8f e0                                      add r4, pc, r4
007d4e6c  00 30 a0 e3                                      mov r3, #0
007d4e70  02 20 94 e7                                      ldr r2, [r4, r2]
007d4e74  01 10 a0 e3                                      mov r1, #1
007d4e78  24 30 85 e5                                      str r3, [r5, #0x24]
007d4e7c  08 20 82 e2                                      add r2, r2, #8
007d4e80  00 20 85 e5                                      str r2, [r5]
007d4e84  28 60 85 e5                                      str r6, [r5, #0x28]
007d4e88  30 10 85 e5                                      str r1, [r5, #0x30]
007d4e8c  0c 30 c5 e5                                      strb r3, [r5, #0xc]
007d4e90  0d 30 c5 e5                                      strb r3, [r5, #0xd]
007d4e94  10 30 85 e5                                      str r3, [r5, #0x10]
007d4e98  14 30 85 e5                                      str r3, [r5, #0x14]
007d4e9c  18 30 85 e5                                      str r3, [r5, #0x18]
007d4ea0  1c 30 85 e5                                      str r3, [r5, #0x1c]
007d4ea4  20 30 85 e5                                      str r3, [r5, #0x20]
007d4ea8  2c 10 85 e5                                      str r1, [r5, #0x2c]
007d4eac  05 00 a0 e1                                      mov r0, r5
007d4eb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007d4eb4  28 fc 1b 00 e4 05 00 00                          .byte 0x28, 0xfc, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d5004, declared_size=344, range_size=344, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC2EPN6glitch5video12IVideoDriverEPN7gameswf9image_rgbE
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, gameswf::image_rgb*)
; decoder-mode: arm
007d5004  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d5008  44 61 9f e5                                      ldr r6, [pc, #0x144]
007d500c  10 d0 4d e2                                      sub sp, sp, #0x10
007d5010  00 50 a0 e1                                      mov r5, r0
007d5014  02 40 a0 e1                                      mov r4, r2
007d5018  01 70 a0 e1                                      mov r7, r1
007d501c  f8 12 fe eb                                      bl #0x759c04
007d5020  30 21 9f e5                                      ldr r2, [pc, #0x130]
007d5024  06 60 8f e0                                      add r6, pc, r6
007d5028  00 30 a0 e3                                      mov r3, #0
007d502c  02 20 96 e7                                      ldr r2, [r6, r2]
007d5030  1c 30 85 e5                                      str r3, [r5, #0x1c]
007d5034  0c 30 c5 e5                                      strb r3, [r5, #0xc]
007d5038  08 20 82 e2                                      add r2, r2, #8
007d503c  0d 30 c5 e5                                      strb r3, [r5, #0xd]
007d5040  10 30 85 e5                                      str r3, [r5, #0x10]
007d5044  14 30 85 e5                                      str r3, [r5, #0x14]
007d5048  18 30 85 e5                                      str r3, [r5, #0x18]
007d504c  00 20 85 e5                                      str r2, [r5]
007d5050  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007d5054  01 30 a0 e3                                      mov r3, #1
007d5058  0c 00 8d e2                                      add r0, sp, #0xc
007d505c  20 20 85 e5                                      str r2, [r5, #0x20]
007d5060  10 20 94 e5                                      ldr r2, [r4, #0x10]
007d5064  30 30 85 e5                                      str r3, [r5, #0x30]
007d5068  2c 30 85 e5                                      str r3, [r5, #0x2c]
007d506c  24 20 85 e5                                      str r2, [r5, #0x24]
007d5070  28 70 85 e5                                      str r7, [r5, #0x28]
007d5074  0c e0 94 e5                                      ldr lr, [r4, #0xc]
007d5078  10 c0 94 e5                                      ldr ip, [r4, #0x10]
007d507c  0c 20 a0 e3                                      mov r2, #0xc
007d5080  e0 10 97 e5                                      ldr r1, [r7, #0xe0]
007d5084  04 30 8d e2                                      add r3, sp, #4
007d5088  04 e0 8d e5                                      str lr, [sp, #4]
007d508c  08 c0 8d e5                                      str ip, [sp, #8]
007d5090  bc 4d f8 eb                                      bl #0x5e8788
007d5094  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007d5098  00 00 53 e3                                      cmp r3, #0
007d509c  04 20 93 15                                      ldrne r2, [r3, #4]
007d50a0  01 20 82 12                                      addne r2, r2, #1
007d50a4  04 20 83 15                                      strne r2, [r3, #4]
007d50a8  18 00 95 e5                                      ldr r0, [r5, #0x18]
007d50ac  18 30 85 e5                                      str r3, [r5, #0x18]
007d50b0  00 00 50 e3                                      cmp r0, #0
007d50b4  00 00 00 0a                                      beq #0x7d50bc
007d50b8  31 21 ed eb                                      bl #0x31d584
007d50bc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007d50c0  00 00 50 e3                                      cmp r0, #0
007d50c4  00 00 00 0a                                      beq #0x7d50cc
007d50c8  2d 21 ed eb                                      bl #0x31d584
007d50cc  10 20 94 e5                                      ldr r2, [r4, #0x10]
007d50d0  18 30 95 e5                                      ldr r3, [r5, #0x18]
007d50d4  00 00 52 e3                                      cmp r2, #0
007d50d8  08 60 93 e5                                      ldr r6, [r3, #8]
007d50dc  19 00 00 da                                      ble #0x7d5148
007d50e0  00 80 a0 e3                                      mov r8, #0
007d50e4  00 70 e0 e3                                      mvn r7, #0
007d50e8  04 00 a0 e1                                      mov r0, r4
007d50ec  08 10 a0 e1                                      mov r1, r8
007d50f0  5d 80 ff eb                                      bl #0x7b526c
007d50f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007d50f8  00 00 53 e3                                      cmp r3, #0
007d50fc  0d 00 00 da                                      ble #0x7d5138
007d5100  00 30 a0 e3                                      mov r3, #0
007d5104  00 70 c6 e5                                      strb r7, [r6]
007d5108  00 20 d0 e5                                      ldrb r2, [r0]
007d510c  01 30 83 e2                                      add r3, r3, #1
007d5110  01 20 c6 e5                                      strb r2, [r6, #1]
007d5114  01 20 d0 e5                                      ldrb r2, [r0, #1]
007d5118  02 20 c6 e5                                      strb r2, [r6, #2]
007d511c  02 20 d0 e5                                      ldrb r2, [r0, #2]
007d5120  03 00 80 e2                                      add r0, r0, #3
007d5124  03 20 c6 e5                                      strb r2, [r6, #3]
007d5128  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007d512c  04 60 86 e2                                      add r6, r6, #4
007d5130  03 00 52 e1                                      cmp r2, r3
007d5134  f2 ff ff ca                                      bgt #0x7d5104
007d5138  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d513c  01 80 88 e2                                      add r8, r8, #1
007d5140  08 00 53 e1                                      cmp r3, r8
007d5144  e7 ff ff ca                                      bgt #0x7d50e8
007d5148  05 00 a0 e1                                      mov r0, r5
007d514c  10 d0 8d e2                                      add sp, sp, #0x10
007d5150  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d5154  6c fa 1b 00 e4 05 00 00                          .byte 0x6c, 0xfa, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d515c, declared_size=312, range_size=312, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC2EPN6glitch5video12IVideoDriverEii
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, int, int)
; decoder-mode: arm
007d515c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d5160  20 61 9f e5                                      ldr r6, [pc, #0x120]
007d5164  18 d0 4d e2                                      sub sp, sp, #0x18
007d5168  00 40 a0 e1                                      mov r4, r0
007d516c  02 70 a0 e1                                      mov r7, r2
007d5170  03 80 a0 e1                                      mov r8, r3
007d5174  01 50 a0 e1                                      mov r5, r1
007d5178  a1 12 fe eb                                      bl #0x759c04
007d517c  08 21 9f e5                                      ldr r2, [pc, #0x108]
007d5180  06 60 8f e0                                      add r6, pc, r6
007d5184  00 30 a0 e3                                      mov r3, #0
007d5188  02 20 96 e7                                      ldr r2, [r6, r2]
007d518c  1c 30 84 e5                                      str r3, [r4, #0x1c]
007d5190  0c 30 c4 e5                                      strb r3, [r4, #0xc]
007d5194  10 30 84 e5                                      str r3, [r4, #0x10]
007d5198  14 30 84 e5                                      str r3, [r4, #0x14]
007d519c  18 30 84 e5                                      str r3, [r4, #0x18]
007d51a0  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
007d51a4  01 c0 a0 e3                                      mov ip, #1
007d51a8  08 20 82 e2                                      add r2, r2, #8
007d51ac  00 20 84 e5                                      str r2, [r4]
007d51b0  0d c0 c4 e5                                      strb ip, [r4, #0xd]
007d51b4  20 70 84 e5                                      str r7, [r4, #0x20]
007d51b8  24 80 84 e5                                      str r8, [r4, #0x24]
007d51bc  28 50 84 e5                                      str r5, [r4, #0x28]
007d51c0  2c c0 84 e5                                      str ip, [r4, #0x2c]
007d51c4  30 c0 84 e5                                      str ip, [r4, #0x30]
007d51c8  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
007d51cc  08 20 8d e2                                      add r2, sp, #8
007d51d0  03 30 8f e0                                      add r3, pc, r3
007d51d4  14 00 8d e2                                      add r0, sp, #0x14
007d51d8  0e e0 a0 e3                                      mov lr, #0xe
007d51dc  08 70 8d e5                                      str r7, [sp, #8]
007d51e0  0c 80 8d e5                                      str r8, [sp, #0xc]
007d51e4  00 e0 8d e5                                      str lr, [sp]
007d51e8  04 c0 8d e5                                      str ip, [sp, #4]
007d51ec  c1 55 f8 eb                                      bl #0x5ea8f8
007d51f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007d51f4  00 00 53 e3                                      cmp r3, #0
007d51f8  04 20 93 15                                      ldrne r2, [r3, #4]
007d51fc  01 20 82 12                                      addne r2, r2, #1
007d5200  04 20 83 15                                      strne r2, [r3, #4]
007d5204  10 00 94 e5                                      ldr r0, [r4, #0x10]
007d5208  10 30 84 e5                                      str r3, [r4, #0x10]
007d520c  00 00 50 e3                                      cmp r0, #0
007d5210  00 00 00 0a                                      beq #0x7d5218
007d5214  da 20 ed eb                                      bl #0x31d584
007d5218  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d521c  00 00 50 e3                                      cmp r0, #0
007d5220  00 00 00 0a                                      beq #0x7d5228
007d5224  d6 20 ed eb                                      bl #0x31d584
007d5228  10 20 84 e2                                      add r2, r4, #0x10
007d522c  10 00 8d e2                                      add r0, sp, #0x10
007d5230  00 30 a0 e3                                      mov r3, #0
007d5234  05 10 a0 e1                                      mov r1, r5
007d5238  00 c0 95 e5                                      ldr ip, [r5]
007d523c  0f e0 a0 e1                                      mov lr, pc
007d5240  84 f0 9c e5                                      ldr pc, [ip, #0x84]
007d5244  10 30 9d e5                                      ldr r3, [sp, #0x10]
007d5248  00 00 53 e3                                      cmp r3, #0
007d524c  04 20 93 15                                      ldrne r2, [r3, #4]
007d5250  01 20 82 12                                      addne r2, r2, #1
007d5254  04 20 83 15                                      strne r2, [r3, #4]
007d5258  14 00 94 e5                                      ldr r0, [r4, #0x14]
007d525c  14 30 84 e5                                      str r3, [r4, #0x14]
007d5260  00 00 50 e3                                      cmp r0, #0
007d5264  00 00 00 0a                                      beq #0x7d526c
007d5268  c5 20 ed eb                                      bl #0x31d584
007d526c  10 00 9d e5                                      ldr r0, [sp, #0x10]
007d5270  00 00 50 e3                                      cmp r0, #0
007d5274  00 00 00 0a                                      beq #0x7d527c
007d5278  c1 20 ed eb                                      bl #0x31d584
007d527c  04 00 a0 e1                                      mov r0, r4
007d5280  18 d0 8d e2                                      add sp, sp, #0x18
007d5284  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d5288  10 f9 1b 00 e4 05 00 00 b8 6e 13 00              .byte 0x10, 0xf9, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00, 0xb8, 0x6e, 0x13, 0x00

; FUNCTION 0x007d5294, declared_size=312, range_size=312, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEii
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, int, int)
; decoder-mode: arm
007d5294  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d5298  20 61 9f e5                                      ldr r6, [pc, #0x120]
007d529c  18 d0 4d e2                                      sub sp, sp, #0x18
007d52a0  00 40 a0 e1                                      mov r4, r0
007d52a4  02 70 a0 e1                                      mov r7, r2
007d52a8  03 80 a0 e1                                      mov r8, r3
007d52ac  01 50 a0 e1                                      mov r5, r1
007d52b0  53 12 fe eb                                      bl #0x759c04
007d52b4  08 21 9f e5                                      ldr r2, [pc, #0x108]
007d52b8  06 60 8f e0                                      add r6, pc, r6
007d52bc  00 30 a0 e3                                      mov r3, #0
007d52c0  02 20 96 e7                                      ldr r2, [r6, r2]
007d52c4  1c 30 84 e5                                      str r3, [r4, #0x1c]
007d52c8  0c 30 c4 e5                                      strb r3, [r4, #0xc]
007d52cc  10 30 84 e5                                      str r3, [r4, #0x10]
007d52d0  14 30 84 e5                                      str r3, [r4, #0x14]
007d52d4  18 30 84 e5                                      str r3, [r4, #0x18]
007d52d8  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
007d52dc  01 c0 a0 e3                                      mov ip, #1
007d52e0  08 20 82 e2                                      add r2, r2, #8
007d52e4  00 20 84 e5                                      str r2, [r4]
007d52e8  0d c0 c4 e5                                      strb ip, [r4, #0xd]
007d52ec  20 70 84 e5                                      str r7, [r4, #0x20]
007d52f0  24 80 84 e5                                      str r8, [r4, #0x24]
007d52f4  28 50 84 e5                                      str r5, [r4, #0x28]
007d52f8  2c c0 84 e5                                      str ip, [r4, #0x2c]
007d52fc  30 c0 84 e5                                      str ip, [r4, #0x30]
007d5300  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
007d5304  08 20 8d e2                                      add r2, sp, #8
007d5308  03 30 8f e0                                      add r3, pc, r3
007d530c  14 00 8d e2                                      add r0, sp, #0x14
007d5310  0e e0 a0 e3                                      mov lr, #0xe
007d5314  08 70 8d e5                                      str r7, [sp, #8]
007d5318  0c 80 8d e5                                      str r8, [sp, #0xc]
007d531c  00 e0 8d e5                                      str lr, [sp]
007d5320  04 c0 8d e5                                      str ip, [sp, #4]
007d5324  73 55 f8 eb                                      bl #0x5ea8f8
007d5328  14 30 9d e5                                      ldr r3, [sp, #0x14]
007d532c  00 00 53 e3                                      cmp r3, #0
007d5330  04 20 93 15                                      ldrne r2, [r3, #4]
007d5334  01 20 82 12                                      addne r2, r2, #1
007d5338  04 20 83 15                                      strne r2, [r3, #4]
007d533c  10 00 94 e5                                      ldr r0, [r4, #0x10]
007d5340  10 30 84 e5                                      str r3, [r4, #0x10]
007d5344  00 00 50 e3                                      cmp r0, #0
007d5348  00 00 00 0a                                      beq #0x7d5350
007d534c  8c 20 ed eb                                      bl #0x31d584
007d5350  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d5354  00 00 50 e3                                      cmp r0, #0
007d5358  00 00 00 0a                                      beq #0x7d5360
007d535c  88 20 ed eb                                      bl #0x31d584
007d5360  10 20 84 e2                                      add r2, r4, #0x10
007d5364  10 00 8d e2                                      add r0, sp, #0x10
007d5368  00 30 a0 e3                                      mov r3, #0
007d536c  05 10 a0 e1                                      mov r1, r5
007d5370  00 c0 95 e5                                      ldr ip, [r5]
007d5374  0f e0 a0 e1                                      mov lr, pc
007d5378  84 f0 9c e5                                      ldr pc, [ip, #0x84]
007d537c  10 30 9d e5                                      ldr r3, [sp, #0x10]
007d5380  00 00 53 e3                                      cmp r3, #0
007d5384  04 20 93 15                                      ldrne r2, [r3, #4]
007d5388  01 20 82 12                                      addne r2, r2, #1
007d538c  04 20 83 15                                      strne r2, [r3, #4]
007d5390  14 00 94 e5                                      ldr r0, [r4, #0x14]
007d5394  14 30 84 e5                                      str r3, [r4, #0x14]
007d5398  00 00 50 e3                                      cmp r0, #0
007d539c  00 00 00 0a                                      beq #0x7d53a4
007d53a0  77 20 ed eb                                      bl #0x31d584
007d53a4  10 00 9d e5                                      ldr r0, [sp, #0x10]
007d53a8  00 00 50 e3                                      cmp r0, #0
007d53ac  00 00 00 0a                                      beq #0x7d53b4
007d53b0  73 20 ed eb                                      bl #0x31d584
007d53b4  04 00 a0 e1                                      mov r0, r4
007d53b8  18 d0 8d e2                                      add sp, sp, #0x18
007d53bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d53c0  d8 f7 1b 00 e4 05 00 00 80 6d 13 00              .byte 0xd8, 0xf7, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00, 0x80, 0x6d, 0x13, 0x00

; FUNCTION 0x007d5404, declared_size=280, range_size=280, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEiiPh
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, int, int, unsigned char*)
; decoder-mode: arm
007d5404  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007d5408  04 61 9f e5                                      ldr r6, [pc, #0x104]
007d540c  14 d0 4d e2                                      sub sp, sp, #0x14
007d5410  00 40 a0 e1                                      mov r4, r0
007d5414  02 70 a0 e1                                      mov r7, r2
007d5418  03 80 a0 e1                                      mov r8, r3
007d541c  01 a0 a0 e1                                      mov sl, r1
007d5420  30 50 9d e5                                      ldr r5, [sp, #0x30]
007d5424  f6 11 fe eb                                      bl #0x759c04
007d5428  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
007d542c  06 60 8f e0                                      add r6, pc, r6
007d5430  00 30 a0 e3                                      mov r3, #0
007d5434  02 20 96 e7                                      ldr r2, [r6, r2]
007d5438  01 10 a0 e3                                      mov r1, #1
007d543c  1c 30 84 e5                                      str r3, [r4, #0x1c]
007d5440  08 20 82 e2                                      add r2, r2, #8
007d5444  00 20 84 e5                                      str r2, [r4]
007d5448  0c 30 c4 e5                                      strb r3, [r4, #0xc]
007d544c  0d 30 c4 e5                                      strb r3, [r4, #0xd]
007d5450  10 30 84 e5                                      str r3, [r4, #0x10]
007d5454  14 30 84 e5                                      str r3, [r4, #0x14]
007d5458  18 30 84 e5                                      str r3, [r4, #0x18]
007d545c  30 10 84 e5                                      str r1, [r4, #0x30]
007d5460  20 70 84 e5                                      str r7, [r4, #0x20]
007d5464  24 80 84 e5                                      str r8, [r4, #0x24]
007d5468  28 a0 84 e5                                      str sl, [r4, #0x28]
007d546c  2c 10 84 e5                                      str r1, [r4, #0x2c]
007d5470  0c 20 a0 e3                                      mov r2, #0xc
007d5474  e0 10 9a e5                                      ldr r1, [sl, #0xe0]
007d5478  0c 00 8d e2                                      add r0, sp, #0xc
007d547c  04 30 8d e2                                      add r3, sp, #4
007d5480  80 01 8d e9                                      stmib sp, {r7, r8}
007d5484  bf 4c f8 eb                                      bl #0x5e8788
007d5488  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007d548c  00 00 53 e3                                      cmp r3, #0
007d5490  04 20 93 15                                      ldrne r2, [r3, #4]
007d5494  01 20 82 12                                      addne r2, r2, #1
007d5498  04 20 83 15                                      strne r2, [r3, #4]
007d549c  18 00 94 e5                                      ldr r0, [r4, #0x18]
007d54a0  18 30 84 e5                                      str r3, [r4, #0x18]
007d54a4  00 00 50 e3                                      cmp r0, #0
007d54a8  00 00 00 0a                                      beq #0x7d54b0
007d54ac  34 20 ed eb                                      bl #0x31d584
007d54b0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007d54b4  00 00 50 e3                                      cmp r0, #0
007d54b8  00 00 00 0a                                      beq #0x7d54c0
007d54bc  30 20 ed eb                                      bl #0x31d584
007d54c0  00 00 55 e3                                      cmp r5, #0
007d54c4  0f 00 00 0a                                      beq #0x7d5508
007d54c8  97 08 07 e0                                      mul r7, r7, r8
007d54cc  18 30 94 e5                                      ldr r3, [r4, #0x18]
007d54d0  00 00 57 e3                                      cmp r7, #0
007d54d4  08 30 93 e5                                      ldr r3, [r3, #8]
007d54d8  0a 00 00 da                                      ble #0x7d5508
007d54dc  00 20 a0 e3                                      mov r2, #0
007d54e0  00 10 e0 e3                                      mvn r1, #0
007d54e4  02 00 d5 e7                                      ldrb r0, [r5, r2]
007d54e8  01 20 82 e2                                      add r2, r2, #1
007d54ec  07 00 52 e1                                      cmp r2, r7
007d54f0  00 00 c3 e5                                      strb r0, [r3]
007d54f4  01 10 c3 e5                                      strb r1, [r3, #1]
007d54f8  02 10 c3 e5                                      strb r1, [r3, #2]
007d54fc  03 10 c3 e5                                      strb r1, [r3, #3]
007d5500  04 30 83 e2                                      add r3, r3, #4
007d5504  f6 ff ff 1a                                      bne #0x7d54e4
007d5508  04 00 a0 e1                                      mov r0, r4
007d550c  14 d0 8d e2                                      add sp, sp, #0x14
007d5510  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
007d5514  64 f6 1b 00 e4 05 00 00                          .byte 0x64, 0xf6, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d5564, declared_size=280, range_size=280, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC2EPN6glitch5video12IVideoDriverEiiPh
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, int, int, unsigned char*)
; decoder-mode: arm
007d5564  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007d5568  04 61 9f e5                                      ldr r6, [pc, #0x104]
007d556c  14 d0 4d e2                                      sub sp, sp, #0x14
007d5570  00 40 a0 e1                                      mov r4, r0
007d5574  02 70 a0 e1                                      mov r7, r2
007d5578  03 80 a0 e1                                      mov r8, r3
007d557c  01 a0 a0 e1                                      mov sl, r1
007d5580  30 50 9d e5                                      ldr r5, [sp, #0x30]
007d5584  9e 11 fe eb                                      bl #0x759c04
007d5588  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
007d558c  06 60 8f e0                                      add r6, pc, r6
007d5590  00 30 a0 e3                                      mov r3, #0
007d5594  02 20 96 e7                                      ldr r2, [r6, r2]
007d5598  01 10 a0 e3                                      mov r1, #1
007d559c  1c 30 84 e5                                      str r3, [r4, #0x1c]
007d55a0  08 20 82 e2                                      add r2, r2, #8
007d55a4  00 20 84 e5                                      str r2, [r4]
007d55a8  0c 30 c4 e5                                      strb r3, [r4, #0xc]
007d55ac  0d 30 c4 e5                                      strb r3, [r4, #0xd]
007d55b0  10 30 84 e5                                      str r3, [r4, #0x10]
007d55b4  14 30 84 e5                                      str r3, [r4, #0x14]
007d55b8  18 30 84 e5                                      str r3, [r4, #0x18]
007d55bc  30 10 84 e5                                      str r1, [r4, #0x30]
007d55c0  20 70 84 e5                                      str r7, [r4, #0x20]
007d55c4  24 80 84 e5                                      str r8, [r4, #0x24]
007d55c8  28 a0 84 e5                                      str sl, [r4, #0x28]
007d55cc  2c 10 84 e5                                      str r1, [r4, #0x2c]
007d55d0  0c 20 a0 e3                                      mov r2, #0xc
007d55d4  e0 10 9a e5                                      ldr r1, [sl, #0xe0]
007d55d8  0c 00 8d e2                                      add r0, sp, #0xc
007d55dc  04 30 8d e2                                      add r3, sp, #4
007d55e0  80 01 8d e9                                      stmib sp, {r7, r8}
007d55e4  67 4c f8 eb                                      bl #0x5e8788
007d55e8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007d55ec  00 00 53 e3                                      cmp r3, #0
007d55f0  04 20 93 15                                      ldrne r2, [r3, #4]
007d55f4  01 20 82 12                                      addne r2, r2, #1
007d55f8  04 20 83 15                                      strne r2, [r3, #4]
007d55fc  18 00 94 e5                                      ldr r0, [r4, #0x18]
007d5600  18 30 84 e5                                      str r3, [r4, #0x18]
007d5604  00 00 50 e3                                      cmp r0, #0
007d5608  00 00 00 0a                                      beq #0x7d5610
007d560c  dc 1f ed eb                                      bl #0x31d584
007d5610  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007d5614  00 00 50 e3                                      cmp r0, #0
007d5618  00 00 00 0a                                      beq #0x7d5620
007d561c  d8 1f ed eb                                      bl #0x31d584
007d5620  00 00 55 e3                                      cmp r5, #0
007d5624  0f 00 00 0a                                      beq #0x7d5668
007d5628  97 08 07 e0                                      mul r7, r7, r8
007d562c  18 30 94 e5                                      ldr r3, [r4, #0x18]
007d5630  00 00 57 e3                                      cmp r7, #0
007d5634  08 30 93 e5                                      ldr r3, [r3, #8]
007d5638  0a 00 00 da                                      ble #0x7d5668
007d563c  00 20 a0 e3                                      mov r2, #0
007d5640  00 10 e0 e3                                      mvn r1, #0
007d5644  02 00 d5 e7                                      ldrb r0, [r5, r2]
007d5648  01 20 82 e2                                      add r2, r2, #1
007d564c  07 00 52 e1                                      cmp r2, r7
007d5650  00 00 c3 e5                                      strb r0, [r3]
007d5654  01 10 c3 e5                                      strb r1, [r3, #1]
007d5658  02 10 c3 e5                                      strb r1, [r3, #2]
007d565c  03 10 c3 e5                                      strb r1, [r3, #3]
007d5660  04 30 83 e2                                      add r3, r3, #4
007d5664  f6 ff ff 1a                                      bne #0x7d5644
007d5668  04 00 a0 e1                                      mov r0, r4
007d566c  14 d0 8d e2                                      add sp, sp, #0x14
007d5670  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
007d5674  04 f5 1b 00 e4 05 00 00                          .byte 0x04, 0xf5, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d567c, declared_size=308, range_size=308, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEPN7gameswf10image_rgbaE
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, gameswf::image_rgba*)
; decoder-mode: arm
007d567c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007d5680  20 61 9f e5                                      ldr r6, [pc, #0x120]
007d5684  14 d0 4d e2                                      sub sp, sp, #0x14
007d5688  00 40 a0 e1                                      mov r4, r0
007d568c  02 50 a0 e1                                      mov r5, r2
007d5690  01 70 a0 e1                                      mov r7, r1
007d5694  5a 11 fe eb                                      bl #0x759c04
007d5698  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
007d569c  06 60 8f e0                                      add r6, pc, r6
007d56a0  00 30 a0 e3                                      mov r3, #0
007d56a4  02 20 96 e7                                      ldr r2, [r6, r2]
007d56a8  1c 30 84 e5                                      str r3, [r4, #0x1c]
007d56ac  0c 30 c4 e5                                      strb r3, [r4, #0xc]
007d56b0  08 20 82 e2                                      add r2, r2, #8
007d56b4  0d 30 c4 e5                                      strb r3, [r4, #0xd]
007d56b8  10 30 84 e5                                      str r3, [r4, #0x10]
007d56bc  14 30 84 e5                                      str r3, [r4, #0x14]
007d56c0  18 30 84 e5                                      str r3, [r4, #0x18]
007d56c4  00 20 84 e5                                      str r2, [r4]
007d56c8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
007d56cc  01 30 a0 e3                                      mov r3, #1
007d56d0  0c 00 8d e2                                      add r0, sp, #0xc
007d56d4  20 20 84 e5                                      str r2, [r4, #0x20]
007d56d8  10 20 95 e5                                      ldr r2, [r5, #0x10]
007d56dc  30 30 84 e5                                      str r3, [r4, #0x30]
007d56e0  2c 30 84 e5                                      str r3, [r4, #0x2c]
007d56e4  24 20 84 e5                                      str r2, [r4, #0x24]
007d56e8  28 70 84 e5                                      str r7, [r4, #0x28]
007d56ec  0c e0 95 e5                                      ldr lr, [r5, #0xc]
007d56f0  10 c0 95 e5                                      ldr ip, [r5, #0x10]
007d56f4  0c 20 a0 e3                                      mov r2, #0xc
007d56f8  e0 10 97 e5                                      ldr r1, [r7, #0xe0]
007d56fc  04 30 8d e2                                      add r3, sp, #4
007d5700  04 e0 8d e5                                      str lr, [sp, #4]
007d5704  08 c0 8d e5                                      str ip, [sp, #8]
007d5708  1e 4c f8 eb                                      bl #0x5e8788
007d570c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007d5710  00 00 53 e3                                      cmp r3, #0
007d5714  04 20 93 15                                      ldrne r2, [r3, #4]
007d5718  01 20 82 12                                      addne r2, r2, #1
007d571c  04 20 83 15                                      strne r2, [r3, #4]
007d5720  18 00 94 e5                                      ldr r0, [r4, #0x18]
007d5724  18 30 84 e5                                      str r3, [r4, #0x18]
007d5728  00 00 50 e3                                      cmp r0, #0
007d572c  00 00 00 0a                                      beq #0x7d5734
007d5730  93 1f ed eb                                      bl #0x31d584
007d5734  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007d5738  00 00 50 e3                                      cmp r0, #0
007d573c  00 00 00 0a                                      beq #0x7d5744
007d5740  8f 1f ed eb                                      bl #0x31d584
007d5744  0c 70 95 e5                                      ldr r7, [r5, #0xc]
007d5748  10 10 95 e5                                      ldr r1, [r5, #0x10]
007d574c  18 20 94 e5                                      ldr r2, [r4, #0x18]
007d5750  08 30 95 e5                                      ldr r3, [r5, #8]
007d5754  97 01 07 e0                                      mul r7, r7, r1
007d5758  08 20 92 e5                                      ldr r2, [r2, #8]
007d575c  00 00 57 e3                                      cmp r7, #0
007d5760  0d 00 00 da                                      ble #0x7d579c
007d5764  00 10 a0 e3                                      mov r1, #0
007d5768  00 50 d3 e5                                      ldrb r5, [r3]
007d576c  01 c0 d3 e5                                      ldrb ip, [r3, #1]
007d5770  02 00 d3 e5                                      ldrb r0, [r3, #2]
007d5774  03 60 d3 e5                                      ldrb r6, [r3, #3]
007d5778  01 10 81 e2                                      add r1, r1, #1
007d577c  07 00 51 e1                                      cmp r1, r7
007d5780  00 60 c2 e5                                      strb r6, [r2]
007d5784  01 50 c2 e5                                      strb r5, [r2, #1]
007d5788  02 c0 c2 e5                                      strb ip, [r2, #2]
007d578c  03 00 c2 e5                                      strb r0, [r2, #3]
007d5790  04 30 83 e2                                      add r3, r3, #4
007d5794  04 20 82 e2                                      add r2, r2, #4
007d5798  f2 ff ff 1a                                      bne #0x7d5768
007d579c  04 00 a0 e1                                      mov r0, r4
007d57a0  14 d0 8d e2                                      add sp, sp, #0x14
007d57a4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
007d57a8  f4 f3 1b 00 e4 05 00 00                          .byte 0xf4, 0xf3, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d57e0, declared_size=308, range_size=308, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC2EPN6glitch5video12IVideoDriverEPN7gameswf10image_rgbaE
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, gameswf::image_rgba*)
; decoder-mode: arm
007d57e0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007d57e4  20 61 9f e5                                      ldr r6, [pc, #0x120]
007d57e8  14 d0 4d e2                                      sub sp, sp, #0x14
007d57ec  00 40 a0 e1                                      mov r4, r0
007d57f0  02 50 a0 e1                                      mov r5, r2
007d57f4  01 70 a0 e1                                      mov r7, r1
007d57f8  01 11 fe eb                                      bl #0x759c04
007d57fc  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
007d5800  06 60 8f e0                                      add r6, pc, r6
007d5804  00 30 a0 e3                                      mov r3, #0
007d5808  02 20 96 e7                                      ldr r2, [r6, r2]
007d580c  1c 30 84 e5                                      str r3, [r4, #0x1c]
007d5810  0c 30 c4 e5                                      strb r3, [r4, #0xc]
007d5814  08 20 82 e2                                      add r2, r2, #8
007d5818  0d 30 c4 e5                                      strb r3, [r4, #0xd]
007d581c  10 30 84 e5                                      str r3, [r4, #0x10]
007d5820  14 30 84 e5                                      str r3, [r4, #0x14]
007d5824  18 30 84 e5                                      str r3, [r4, #0x18]
007d5828  00 20 84 e5                                      str r2, [r4]
007d582c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
007d5830  01 30 a0 e3                                      mov r3, #1
007d5834  0c 00 8d e2                                      add r0, sp, #0xc
007d5838  20 20 84 e5                                      str r2, [r4, #0x20]
007d583c  10 20 95 e5                                      ldr r2, [r5, #0x10]
007d5840  30 30 84 e5                                      str r3, [r4, #0x30]
007d5844  2c 30 84 e5                                      str r3, [r4, #0x2c]
007d5848  24 20 84 e5                                      str r2, [r4, #0x24]
007d584c  28 70 84 e5                                      str r7, [r4, #0x28]
007d5850  0c e0 95 e5                                      ldr lr, [r5, #0xc]
007d5854  10 c0 95 e5                                      ldr ip, [r5, #0x10]
007d5858  0c 20 a0 e3                                      mov r2, #0xc
007d585c  e0 10 97 e5                                      ldr r1, [r7, #0xe0]
007d5860  04 30 8d e2                                      add r3, sp, #4
007d5864  04 e0 8d e5                                      str lr, [sp, #4]
007d5868  08 c0 8d e5                                      str ip, [sp, #8]
007d586c  c5 4b f8 eb                                      bl #0x5e8788
007d5870  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007d5874  00 00 53 e3                                      cmp r3, #0
007d5878  04 20 93 15                                      ldrne r2, [r3, #4]
007d587c  01 20 82 12                                      addne r2, r2, #1
007d5880  04 20 83 15                                      strne r2, [r3, #4]
007d5884  18 00 94 e5                                      ldr r0, [r4, #0x18]
007d5888  18 30 84 e5                                      str r3, [r4, #0x18]
007d588c  00 00 50 e3                                      cmp r0, #0
007d5890  00 00 00 0a                                      beq #0x7d5898
007d5894  3a 1f ed eb                                      bl #0x31d584
007d5898  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007d589c  00 00 50 e3                                      cmp r0, #0
007d58a0  00 00 00 0a                                      beq #0x7d58a8
007d58a4  36 1f ed eb                                      bl #0x31d584
007d58a8  0c 70 95 e5                                      ldr r7, [r5, #0xc]
007d58ac  10 10 95 e5                                      ldr r1, [r5, #0x10]
007d58b0  18 20 94 e5                                      ldr r2, [r4, #0x18]
007d58b4  08 30 95 e5                                      ldr r3, [r5, #8]
007d58b8  97 01 07 e0                                      mul r7, r7, r1
007d58bc  08 20 92 e5                                      ldr r2, [r2, #8]
007d58c0  00 00 57 e3                                      cmp r7, #0
007d58c4  0d 00 00 da                                      ble #0x7d5900
007d58c8  00 10 a0 e3                                      mov r1, #0
007d58cc  00 50 d3 e5                                      ldrb r5, [r3]
007d58d0  01 c0 d3 e5                                      ldrb ip, [r3, #1]
007d58d4  02 00 d3 e5                                      ldrb r0, [r3, #2]
007d58d8  03 60 d3 e5                                      ldrb r6, [r3, #3]
007d58dc  01 10 81 e2                                      add r1, r1, #1
007d58e0  07 00 51 e1                                      cmp r1, r7
007d58e4  00 60 c2 e5                                      strb r6, [r2]
007d58e8  01 50 c2 e5                                      strb r5, [r2, #1]
007d58ec  02 c0 c2 e5                                      strb ip, [r2, #2]
007d58f0  03 00 c2 e5                                      strb r0, [r2, #3]
007d58f4  04 30 83 e2                                      add r3, r3, #4
007d58f8  04 20 82 e2                                      add r2, r2, #4
007d58fc  f2 ff ff 1a                                      bne #0x7d58cc
007d5900  04 00 a0 e1                                      mov r0, r4
007d5904  14 d0 8d e2                                      add sp, sp, #0x14
007d5908  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
007d590c  90 f2 1b 00 e4 05 00 00                          .byte 0x90, 0xf2, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d5914, declared_size=344, range_size=344, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEPN7gameswf9image_rgbE
; demangled: bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver*, gameswf::image_rgb*)
; decoder-mode: arm
007d5914  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d5918  44 61 9f e5                                      ldr r6, [pc, #0x144]
007d591c  10 d0 4d e2                                      sub sp, sp, #0x10
007d5920  00 50 a0 e1                                      mov r5, r0
007d5924  02 40 a0 e1                                      mov r4, r2
007d5928  01 70 a0 e1                                      mov r7, r1
007d592c  b4 10 fe eb                                      bl #0x759c04
007d5930  30 21 9f e5                                      ldr r2, [pc, #0x130]
007d5934  06 60 8f e0                                      add r6, pc, r6
007d5938  00 30 a0 e3                                      mov r3, #0
007d593c  02 20 96 e7                                      ldr r2, [r6, r2]
007d5940  1c 30 85 e5                                      str r3, [r5, #0x1c]
007d5944  0c 30 c5 e5                                      strb r3, [r5, #0xc]
007d5948  08 20 82 e2                                      add r2, r2, #8
007d594c  0d 30 c5 e5                                      strb r3, [r5, #0xd]
007d5950  10 30 85 e5                                      str r3, [r5, #0x10]
007d5954  14 30 85 e5                                      str r3, [r5, #0x14]
007d5958  18 30 85 e5                                      str r3, [r5, #0x18]
007d595c  00 20 85 e5                                      str r2, [r5]
007d5960  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007d5964  01 30 a0 e3                                      mov r3, #1
007d5968  0c 00 8d e2                                      add r0, sp, #0xc
007d596c  20 20 85 e5                                      str r2, [r5, #0x20]
007d5970  10 20 94 e5                                      ldr r2, [r4, #0x10]
007d5974  30 30 85 e5                                      str r3, [r5, #0x30]
007d5978  2c 30 85 e5                                      str r3, [r5, #0x2c]
007d597c  24 20 85 e5                                      str r2, [r5, #0x24]
007d5980  28 70 85 e5                                      str r7, [r5, #0x28]
007d5984  0c e0 94 e5                                      ldr lr, [r4, #0xc]
007d5988  10 c0 94 e5                                      ldr ip, [r4, #0x10]
007d598c  0c 20 a0 e3                                      mov r2, #0xc
007d5990  e0 10 97 e5                                      ldr r1, [r7, #0xe0]
007d5994  04 30 8d e2                                      add r3, sp, #4
007d5998  04 e0 8d e5                                      str lr, [sp, #4]
007d599c  08 c0 8d e5                                      str ip, [sp, #8]
007d59a0  78 4b f8 eb                                      bl #0x5e8788
007d59a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007d59a8  00 00 53 e3                                      cmp r3, #0
007d59ac  04 20 93 15                                      ldrne r2, [r3, #4]
007d59b0  01 20 82 12                                      addne r2, r2, #1
007d59b4  04 20 83 15                                      strne r2, [r3, #4]
007d59b8  18 00 95 e5                                      ldr r0, [r5, #0x18]
007d59bc  18 30 85 e5                                      str r3, [r5, #0x18]
007d59c0  00 00 50 e3                                      cmp r0, #0
007d59c4  00 00 00 0a                                      beq #0x7d59cc
007d59c8  ed 1e ed eb                                      bl #0x31d584
007d59cc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007d59d0  00 00 50 e3                                      cmp r0, #0
007d59d4  00 00 00 0a                                      beq #0x7d59dc
007d59d8  e9 1e ed eb                                      bl #0x31d584
007d59dc  10 20 94 e5                                      ldr r2, [r4, #0x10]
007d59e0  18 30 95 e5                                      ldr r3, [r5, #0x18]
007d59e4  00 00 52 e3                                      cmp r2, #0
007d59e8  08 60 93 e5                                      ldr r6, [r3, #8]
007d59ec  19 00 00 da                                      ble #0x7d5a58
007d59f0  00 80 a0 e3                                      mov r8, #0
007d59f4  00 70 e0 e3                                      mvn r7, #0
007d59f8  04 00 a0 e1                                      mov r0, r4
007d59fc  08 10 a0 e1                                      mov r1, r8
007d5a00  19 7e ff eb                                      bl #0x7b526c
007d5a04  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007d5a08  00 00 53 e3                                      cmp r3, #0
007d5a0c  0d 00 00 da                                      ble #0x7d5a48
007d5a10  00 30 a0 e3                                      mov r3, #0
007d5a14  00 70 c6 e5                                      strb r7, [r6]
007d5a18  00 20 d0 e5                                      ldrb r2, [r0]
007d5a1c  01 30 83 e2                                      add r3, r3, #1
007d5a20  01 20 c6 e5                                      strb r2, [r6, #1]
007d5a24  01 20 d0 e5                                      ldrb r2, [r0, #1]
007d5a28  02 20 c6 e5                                      strb r2, [r6, #2]
007d5a2c  02 20 d0 e5                                      ldrb r2, [r0, #2]
007d5a30  03 00 80 e2                                      add r0, r0, #3
007d5a34  03 20 c6 e5                                      strb r2, [r6, #3]
007d5a38  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007d5a3c  04 60 86 e2                                      add r6, r6, #4
007d5a40  03 00 52 e1                                      cmp r2, r3
007d5a44  f2 ff ff ca                                      bgt #0x7d5a14
007d5a48  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d5a4c  01 80 88 e2                                      add r8, r8, #1
007d5a50  08 00 53 e1                                      cmp r3, r8
007d5a54  e7 ff ff ca                                      bgt #0x7d59f8
007d5a58  05 00 a0 e1                                      mov r0, r5
007d5a5c  10 d0 8d e2                                      add sp, sp, #0x10
007d5a60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d5a64  5c f1 1b 00 e4 05 00 00                          .byte 0x5c, 0xf1, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00

; FUNCTION 0x007d5a9c, declared_size=144, range_size=144, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_ogl7releaseEv
; demangled: bitmap_info_ogl::release()
; decoder-mode: arm
007d5a9c  70 40 2d e9                                      push {r4, r5, r6, lr}
007d5aa0  00 40 a0 e1                                      mov r4, r0
007d5aa4  10 00 90 e5                                      ldr r0, [r0, #0x10]
007d5aa8  00 00 50 e3                                      cmp r0, #0
007d5aac  07 00 00 0a                                      beq #0x7d5ad0
007d5ab0  0d 30 d4 e5                                      ldrb r3, [r4, #0xd]
007d5ab4  00 00 53 e3                                      cmp r3, #0
007d5ab8  15 00 00 1a                                      bne #0x7d5b14
007d5abc  00 30 a0 e3                                      mov r3, #0
007d5ac0  00 00 50 e3                                      cmp r0, #0
007d5ac4  10 30 84 e5                                      str r3, [r4, #0x10]
007d5ac8  00 00 00 0a                                      beq #0x7d5ad0
007d5acc  ac 1e ed eb                                      bl #0x31d584
007d5ad0  18 00 94 e5                                      ldr r0, [r4, #0x18]
007d5ad4  00 00 50 e3                                      cmp r0, #0
007d5ad8  02 00 00 0a                                      beq #0x7d5ae8
007d5adc  00 30 a0 e3                                      mov r3, #0
007d5ae0  18 30 84 e5                                      str r3, [r4, #0x18]
007d5ae4  a6 1e ed eb                                      bl #0x31d584
007d5ae8  1c 50 94 e5                                      ldr r5, [r4, #0x1c]
007d5aec  00 00 55 e3                                      cmp r5, #0
007d5af0  06 00 00 0a                                      beq #0x7d5b10
007d5af4  05 00 a0 e1                                      mov r0, r5
007d5af8  92 82 ff eb                                      bl #0x7b6548
007d5afc  05 00 a0 e1                                      mov r0, r5
007d5b00  00 10 a0 e3                                      mov r1, #0
007d5b04  0b f4 fd eb                                      bl #0x752b38
007d5b08  00 30 a0 e3                                      mov r3, #0
007d5b0c  1c 30 84 e5                                      str r3, [r4, #0x1c]
007d5b10  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d5b14  28 30 94 e5                                      ldr r3, [r4, #0x28]
007d5b18  10 10 84 e2                                      add r1, r4, #0x10
007d5b1c  e0 00 93 e5                                      ldr r0, [r3, #0xe0]
007d5b20  e3 bc ee eb                                      bl #0x384eb4
007d5b24  10 00 94 e5                                      ldr r0, [r4, #0x10]
007d5b28  e3 ff ff ea                                      b #0x7d5abc

; FUNCTION 0x007d5b2c, declared_size=84, range_size=84, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_ogl11set_textureEPN6glitch5video8ITextureE
; demangled: bitmap_info_ogl::set_texture(glitch::video::ITexture*)
; decoder-mode: arm
007d5b2c  70 40 2d e9                                      push {r4, r5, r6, lr}
007d5b30  01 40 a0 e1                                      mov r4, r1
007d5b34  00 50 a0 e1                                      mov r5, r0
007d5b38  d7 ff ff eb                                      bl #0x7d5a9c
007d5b3c  00 00 54 e3                                      cmp r4, #0
007d5b40  04 30 94 15                                      ldrne r3, [r4, #4]
007d5b44  01 30 83 12                                      addne r3, r3, #1
007d5b48  04 30 84 15                                      strne r3, [r4, #4]
007d5b4c  10 00 95 e5                                      ldr r0, [r5, #0x10]
007d5b50  04 30 a0 e1                                      mov r3, r4
007d5b54  10 40 85 e5                                      str r4, [r5, #0x10]
007d5b58  00 00 50 e3                                      cmp r0, #0
007d5b5c  02 00 00 0a                                      beq #0x7d5b6c
007d5b60  87 1e ed eb                                      bl #0x31d584
007d5b64  10 40 95 e5                                      ldr r4, [r5, #0x10]
007d5b68  04 30 a0 e1                                      mov r3, r4
007d5b6c  20 20 94 e5                                      ldr r2, [r4, #0x20]
007d5b70  20 20 85 e5                                      str r2, [r5, #0x20]
007d5b74  24 30 93 e5                                      ldr r3, [r3, #0x24]
007d5b78  24 30 85 e5                                      str r3, [r5, #0x24]
007d5b7c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d5b80, declared_size=4, range_size=4, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_ogl8unlayoutEv
; demangled: bitmap_info_ogl::unlayout()
; decoder-mode: arm
007d5b80  c5 ff ff ea                                      b #0x7d5a9c

; FUNCTION 0x007d5b84, declared_size=128, range_size=128, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglD1Ev
; demangled: bitmap_info_ogl::~bitmap_info_ogl()
; decoder-mode: arm
007d5b84  70 40 2d e9                                      push {r4, r5, r6, lr}
007d5b88  68 50 9f e5                                      ldr r5, [pc, #0x68]
007d5b8c  68 30 9f e5                                      ldr r3, [pc, #0x68]
007d5b90  00 40 a0 e1                                      mov r4, r0
007d5b94  05 50 8f e0                                      add r5, pc, r5
007d5b98  03 30 95 e7                                      ldr r3, [r5, r3]
007d5b9c  08 30 83 e2                                      add r3, r3, #8
007d5ba0  00 30 80 e5                                      str r3, [r0]
007d5ba4  bc ff ff eb                                      bl #0x7d5a9c
007d5ba8  18 00 94 e5                                      ldr r0, [r4, #0x18]
007d5bac  00 00 50 e3                                      cmp r0, #0
007d5bb0  00 00 00 0a                                      beq #0x7d5bb8
007d5bb4  72 1e ed eb                                      bl #0x31d584
007d5bb8  14 00 94 e5                                      ldr r0, [r4, #0x14]
007d5bbc  00 00 50 e3                                      cmp r0, #0
007d5bc0  00 00 00 0a                                      beq #0x7d5bc8
007d5bc4  6e 1e ed eb                                      bl #0x31d584
007d5bc8  10 00 94 e5                                      ldr r0, [r4, #0x10]
007d5bcc  00 00 50 e3                                      cmp r0, #0
007d5bd0  00 00 00 0a                                      beq #0x7d5bd8
007d5bd4  6a 1e ed eb                                      bl #0x31d584
007d5bd8  20 30 9f e5                                      ldr r3, [pc, #0x20]
007d5bdc  04 00 a0 e1                                      mov r0, r4
007d5be0  03 30 95 e7                                      ldr r3, [r5, r3]
007d5be4  08 30 83 e2                                      add r3, r3, #8
007d5be8  00 30 84 e5                                      str r3, [r4]
007d5bec  2c 20 fe eb                                      bl #0x75dca4
007d5bf0  04 00 a0 e1                                      mov r0, r4
007d5bf4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007d5bf8  fc ee 1b 00 e4 05 00 00 88 21 00 00              .byte 0xfc, 0xee, 0x1b, 0x00, 0xe4, 0x05, 0x00, 0x00, 0x88, 0x21, 0x00, 0x00

; FUNCTION 0x007d5c04, declared_size=28, range_size=28, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_oglD0Ev
; demangled: bitmap_info_ogl::~bitmap_info_ogl()
; decoder-mode: arm
007d5c04  10 40 2d e9                                      push {r4, lr}
007d5c08  00 40 a0 e1                                      mov r4, r0
007d5c0c  dc ff ff eb                                      bl #0x7d5b84
007d5c10  04 00 a0 e1                                      mov r0, r4
007d5c14  a5 e1 ec eb                                      bl #0x30e2b0
007d5c18  04 00 a0 e1                                      mov r0, r4
007d5c1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007d5c20, declared_size=1072, range_size=1072, mode=arm
; class-group: bitmap_info_ogl
; alias: _ZN15bitmap_info_ogl6layoutEv
; demangled: bitmap_info_ogl::layout()
; decoder-mode: arm
007d5c20  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d5c24  04 44 9f e5                                      ldr r4, [pc, #0x404]
007d5c28  04 64 9f e5                                      ldr r6, [pc, #0x404]
007d5c2c  10 80 90 e5                                      ldr r8, [r0, #0x10]
007d5c30  04 40 8f e0                                      add r4, pc, r4
007d5c34  06 30 94 e7                                      ldr r3, [r4, r6]
007d5c38  64 d0 4d e2                                      sub sp, sp, #0x64
007d5c3c  00 00 58 e3                                      cmp r8, #0
007d5c40  00 30 93 e5                                      ldr r3, [r3]
007d5c44  00 50 a0 e1                                      mov r5, r0
007d5c48  5c 30 8d e5                                      str r3, [sp, #0x5c]
007d5c4c  06 00 00 0a                                      beq #0x7d5c6c
007d5c50  06 30 94 e7                                      ldr r3, [r4, r6]
007d5c54  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
007d5c58  00 30 93 e5                                      ldr r3, [r3]
007d5c5c  03 00 52 e1                                      cmp r2, r3
007d5c60  f1 00 00 1a                                      bne #0x7d602c
007d5c64  64 d0 8d e2                                      add sp, sp, #0x64
007d5c68  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d5c6c  c4 13 9f e5                                      ldr r1, [pc, #0x3c4]
007d5c70  1c b0 8d e2                                      add fp, sp, #0x1c
007d5c74  0b 00 a0 e1                                      mov r0, fp
007d5c78  01 10 8f e0                                      add r1, pc, r1
007d5c7c  05 20 a0 e1                                      mov r2, r5
007d5c80  97 e3 ec eb                                      bl #0x30eae4
007d5c84  28 70 95 e5                                      ldr r7, [r5, #0x28]
007d5c88  00 00 57 e3                                      cmp r7, #0
007d5c8c  02 00 00 0a                                      beq #0x7d5c9c
007d5c90  88 30 97 e5                                      ldr r3, [r7, #0x88]
007d5c94  10 00 13 e3                                      tst r3, #0x10
007d5c98  89 00 00 1a                                      bne #0x7d5ec4
007d5c9c  00 20 a0 e3                                      mov r2, #0
007d5ca0  07 30 a0 e1                                      mov r3, r7
007d5ca4  08 20 8d e5                                      str r2, [sp, #8]
007d5ca8  e0 80 93 e5                                      ldr r8, [r3, #0xe0]
007d5cac  0c a0 d5 e5                                      ldrb sl, [r5, #0xc]
007d5cb0  00 00 58 e3                                      cmp r8, #0
007d5cb4  08 a0 a0 01                                      moveq sl, r8
007d5cb8  08 00 00 0a                                      beq #0x7d5ce0
007d5cbc  74 20 98 e5                                      ldr r2, [r8, #0x74]
007d5cc0  52 32 e0 e7                                      ubfx r3, r2, #4, #1
007d5cc4  03 00 5a e1                                      cmp sl, r3
007d5cc8  04 00 00 0a                                      beq #0x7d5ce0
007d5ccc  00 00 5a e3                                      cmp sl, #0
007d5cd0  10 20 82 13                                      orrne r2, r2, #0x10
007d5cd4  10 20 c2 03                                      biceq r2, r2, #0x10
007d5cd8  74 20 88 e5                                      str r2, [r8, #0x74]
007d5cdc  03 a0 a0 e1                                      mov sl, r3
007d5ce0  18 90 95 e5                                      ldr sb, [r5, #0x18]
007d5ce4  00 00 59 e3                                      cmp sb, #0
007d5ce8  7f 00 00 0a                                      beq #0x7d5eec
007d5cec  0c 30 d5 e5                                      ldrb r3, [r5, #0xc]
007d5cf0  00 00 53 e3                                      cmp r3, #0
007d5cf4  28 30 95 05                                      ldreq r3, [r5, #0x28]
007d5cf8  61 00 00 0a                                      beq #0x7d5e84
007d5cfc  28 30 95 e5                                      ldr r3, [r5, #0x28]
007d5d00  9c 20 93 e5                                      ldr r2, [r3, #0x9c]
007d5d04  06 2a 02 e2                                      and r2, r2, #0x6000
007d5d08  06 0a 52 e3                                      cmp r2, #0x6000
007d5d0c  5c 00 00 1a                                      bne #0x7d5e84
007d5d10  20 20 99 e5                                      ldr r2, [sb, #0x20]
007d5d14  20 13 9f e5                                      ldr r1, [pc, #0x320]
007d5d18  28 00 a0 e3                                      mov r0, #0x28
007d5d1c  90 02 02 e0                                      mul r2, r0, r2
007d5d20  01 10 94 e7                                      ldr r1, [r4, r1]
007d5d24  02 20 91 e7                                      ldr r2, [r1, r2]
007d5d28  08 00 12 e3                                      tst r2, #8
007d5d2c  54 00 00 1a                                      bne #0x7d5e84
007d5d30  28 c0 d9 e5                                      ldrb ip, [sb, #0x28]
007d5d34  00 00 5c e3                                      cmp ip, #0
007d5d38  51 00 00 1a                                      bne #0x7d5e84
007d5d3c  18 90 8d e2                                      add sb, sp, #0x18
007d5d40  e0 10 93 e5                                      ldr r1, [r3, #0xe0]
007d5d44  0b 20 a0 e1                                      mov r2, fp
007d5d48  09 00 a0 e1                                      mov r0, sb
007d5d4c  18 30 85 e2                                      add r3, r5, #0x18
007d5d50  00 c0 8d e5                                      str ip, [sp]
007d5d54  01 c0 a0 e3                                      mov ip, #1
007d5d58  04 c0 8d e5                                      str ip, [sp, #4]
007d5d5c  50 5b f8 eb                                      bl #0x5ecaa4
007d5d60  09 10 a0 e1                                      mov r1, sb
007d5d64  10 00 85 e2                                      add r0, r5, #0x10
007d5d68  22 bc ee eb                                      bl #0x384df8
007d5d6c  18 00 9d e5                                      ldr r0, [sp, #0x18]
007d5d70  00 00 50 e3                                      cmp r0, #0
007d5d74  00 00 00 0a                                      beq #0x7d5d7c
007d5d78  01 1e ed eb                                      bl #0x31d584
007d5d7c  10 30 95 e5                                      ldr r3, [r5, #0x10]
007d5d80  b8 12 9f e5                                      ldr r1, [pc, #0x2b8]
007d5d84  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
007d5d88  01 20 a0 e3                                      mov r2, #1
007d5d8c  0d 20 c5 e5                                      strb r2, [r5, #0xd]
007d5d90  01 10 8f e0                                      add r1, pc, r1
007d5d94  38 20 93 e5                                      ldr r2, [r3, #0x38]
007d5d98  00 11 91 e7                                      ldr r1, [r1, r0, lsl #2]
007d5d9c  52 06 e2 e7                                      ubfx r0, r2, #0xc, #3
007d5da0  00 00 51 e1                                      cmp r1, r0
007d5da4  0b 00 00 0a                                      beq #0x7d5dd8
007d5da8  3e 00 d3 e5                                      ldrb r0, [r3, #0x3e]
007d5dac  01 00 50 e3                                      cmp r0, #1
007d5db0  97 00 00 9a                                      bls #0x7d6014
007d5db4  b0 04 d3 e1                                      ldrh r0, [r3, #0x40]
007d5db8  07 10 01 e2                                      and r1, r1, #7
007d5dbc  07 2a c2 e3                                      bic r2, r2, #0x7000
007d5dc0  01 26 82 e1                                      orr r2, r2, r1, lsl #12
007d5dc4  04 10 80 e3                                      orr r1, r0, #4
007d5dc8  38 20 83 e5                                      str r2, [r3, #0x38]
007d5dcc  b0 14 c3 e1                                      strh r1, [r3, #0x40]
007d5dd0  10 30 95 e5                                      ldr r3, [r5, #0x10]
007d5dd4  38 20 93 e5                                      ldr r2, [r3, #0x38]
007d5dd8  64 12 9f e5                                      ldr r1, [pc, #0x264]
007d5ddc  30 c0 95 e5                                      ldr ip, [r5, #0x30]
007d5de0  d2 07 e2 e7                                      ubfx r0, r2, #0xf, #3
007d5de4  01 10 8f e0                                      add r1, pc, r1
007d5de8  0c 11 91 e7                                      ldr r1, [r1, ip, lsl #2]
007d5dec  00 00 51 e1                                      cmp r1, r0
007d5df0  06 00 00 0a                                      beq #0x7d5e10
007d5df4  b0 04 d3 e1                                      ldrh r0, [r3, #0x40]
007d5df8  07 10 01 e2                                      and r1, r1, #7
007d5dfc  0e 29 c2 e3                                      bic r2, r2, #0x38000
007d5e00  81 27 82 e1                                      orr r2, r2, r1, lsl #15
007d5e04  08 10 80 e3                                      orr r1, r0, #8
007d5e08  b0 14 c3 e1                                      strh r1, [r3, #0x40]
007d5e0c  38 20 83 e5                                      str r2, [r3, #0x38]
007d5e10  18 00 95 e5                                      ldr r0, [r5, #0x18]
007d5e14  00 30 a0 e3                                      mov r3, #0
007d5e18  18 30 85 e5                                      str r3, [r5, #0x18]
007d5e1c  03 00 50 e1                                      cmp r0, r3
007d5e20  00 00 00 0a                                      beq #0x7d5e28
007d5e24  d6 1d ed eb                                      bl #0x31d584
007d5e28  00 00 58 e3                                      cmp r8, #0
007d5e2c  07 00 00 0a                                      beq #0x7d5e50
007d5e30  74 30 98 e5                                      ldr r3, [r8, #0x74]
007d5e34  53 22 e0 e7                                      ubfx r2, r3, #4, #1
007d5e38  02 00 5a e1                                      cmp sl, r2
007d5e3c  03 00 00 0a                                      beq #0x7d5e50
007d5e40  00 00 5a e3                                      cmp sl, #0
007d5e44  10 30 83 13                                      orrne r3, r3, #0x10
007d5e48  10 30 c3 03                                      biceq r3, r3, #0x10
007d5e4c  74 30 88 e5                                      str r3, [r8, #0x74]
007d5e50  00 00 57 e3                                      cmp r7, #0
007d5e54  7d ff ff 0a                                      beq #0x7d5c50
007d5e58  88 30 97 e5                                      ldr r3, [r7, #0x88]
007d5e5c  08 20 9d e5                                      ldr r2, [sp, #8]
007d5e60  53 32 e0 e7                                      ubfx r3, r3, #4, #1
007d5e64  03 00 52 e1                                      cmp r2, r3
007d5e68  78 ff ff 0a                                      beq #0x7d5c50
007d5e6c  07 00 a0 e1                                      mov r0, r7
007d5e70  00 30 97 e5                                      ldr r3, [r7]
007d5e74  10 10 a0 e3                                      mov r1, #0x10
007d5e78  0f e0 a0 e1                                      mov lr, pc
007d5e7c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
007d5e80  72 ff ff ea                                      b #0x7d5c50
007d5e84  14 90 8d e2                                      add sb, sp, #0x14
007d5e88  e0 10 93 e5                                      ldr r1, [r3, #0xe0]
007d5e8c  00 c0 a0 e3                                      mov ip, #0
007d5e90  0b 20 a0 e1                                      mov r2, fp
007d5e94  09 00 a0 e1                                      mov r0, sb
007d5e98  18 30 85 e2                                      add r3, r5, #0x18
007d5e9c  04 c0 8d e5                                      str ip, [sp, #4]
007d5ea0  00 c0 8d e5                                      str ip, [sp]
007d5ea4  fe 5a f8 eb                                      bl #0x5ecaa4
007d5ea8  09 10 a0 e1                                      mov r1, sb
007d5eac  10 00 85 e2                                      add r0, r5, #0x10
007d5eb0  d0 bb ee eb                                      bl #0x384df8
007d5eb4  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d5eb8  00 00 50 e3                                      cmp r0, #0
007d5ebc  ad ff ff 1a                                      bne #0x7d5d78
007d5ec0  ad ff ff ea                                      b #0x7d5d7c
007d5ec4  08 20 a0 e1                                      mov r2, r8
007d5ec8  00 30 97 e5                                      ldr r3, [r7]
007d5ecc  07 00 a0 e1                                      mov r0, r7
007d5ed0  10 10 a0 e3                                      mov r1, #0x10
007d5ed4  0f e0 a0 e1                                      mov lr, pc
007d5ed8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
007d5edc  01 20 a0 e3                                      mov r2, #1
007d5ee0  08 20 8d e5                                      str r2, [sp, #8]
007d5ee4  28 30 95 e5                                      ldr r3, [r5, #0x28]
007d5ee8  6e ff ff ea                                      b #0x7d5ca8
007d5eec  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
007d5ef0  00 00 50 e3                                      cmp r0, #0
007d5ef4  cb ff ff 0a                                      beq #0x7d5e28
007d5ef8  00 10 90 e5                                      ldr r1, [r0]
007d5efc  0b 20 a0 e1                                      mov r2, fp
007d5f00  09 30 a0 e1                                      mov r3, sb
007d5f04  08 00 90 e5                                      ldr r0, [r0, #8]
007d5f08  18 65 f6 eb                                      bl #0x56f370
007d5f0c  0c 00 8d e5                                      str r0, [sp, #0xc]
007d5f10  28 20 95 e5                                      ldr r2, [r5, #0x28]
007d5f14  10 b0 8d e2                                      add fp, sp, #0x10
007d5f18  09 30 a0 e1                                      mov r3, sb
007d5f1c  e0 10 92 e5                                      ldr r1, [r2, #0xe0]
007d5f20  0b 00 a0 e1                                      mov r0, fp
007d5f24  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007d5f28  00 90 8d e5                                      str sb, [sp]
007d5f2c  64 5c f8 eb                                      bl #0x5ed0c4
007d5f30  0b 10 a0 e1                                      mov r1, fp
007d5f34  10 00 85 e2                                      add r0, r5, #0x10
007d5f38  ae bb ee eb                                      bl #0x384df8
007d5f3c  10 00 9d e5                                      ldr r0, [sp, #0x10]
007d5f40  00 00 50 e3                                      cmp r0, #0
007d5f44  00 00 00 0a                                      beq #0x7d5f4c
007d5f48  8d 1d ed eb                                      bl #0x31d584
007d5f4c  10 30 95 e5                                      ldr r3, [r5, #0x10]
007d5f50  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
007d5f54  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
007d5f58  38 20 93 e5                                      ldr r2, [r3, #0x38]
007d5f5c  01 10 8f e0                                      add r1, pc, r1
007d5f60  00 11 91 e7                                      ldr r1, [r1, r0, lsl #2]
007d5f64  52 06 e2 e7                                      ubfx r0, r2, #0xc, #3
007d5f68  00 00 51 e1                                      cmp r1, r0
007d5f6c  0b 00 00 0a                                      beq #0x7d5fa0
007d5f70  3e 00 d3 e5                                      ldrb r0, [r3, #0x3e]
007d5f74  01 00 50 e3                                      cmp r0, #1
007d5f78  28 00 00 9a                                      bls #0x7d6020
007d5f7c  b0 04 d3 e1                                      ldrh r0, [r3, #0x40]
007d5f80  07 10 01 e2                                      and r1, r1, #7
007d5f84  07 2a c2 e3                                      bic r2, r2, #0x7000
007d5f88  01 26 82 e1                                      orr r2, r2, r1, lsl #12
007d5f8c  04 10 80 e3                                      orr r1, r0, #4
007d5f90  38 20 83 e5                                      str r2, [r3, #0x38]
007d5f94  b0 14 c3 e1                                      strh r1, [r3, #0x40]
007d5f98  10 30 95 e5                                      ldr r3, [r5, #0x10]
007d5f9c  38 20 93 e5                                      ldr r2, [r3, #0x38]
007d5fa0  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
007d5fa4  30 c0 95 e5                                      ldr ip, [r5, #0x30]
007d5fa8  d2 07 e2 e7                                      ubfx r0, r2, #0xf, #3
007d5fac  01 10 8f e0                                      add r1, pc, r1
007d5fb0  0c 11 91 e7                                      ldr r1, [r1, ip, lsl #2]
007d5fb4  00 00 51 e1                                      cmp r1, r0
007d5fb8  06 00 00 0a                                      beq #0x7d5fd8
007d5fbc  b0 04 d3 e1                                      ldrh r0, [r3, #0x40]
007d5fc0  07 10 01 e2                                      and r1, r1, #7
007d5fc4  0e 29 c2 e3                                      bic r2, r2, #0x38000
007d5fc8  81 27 82 e1                                      orr r2, r2, r1, lsl #15
007d5fcc  08 10 80 e3                                      orr r1, r0, #8
007d5fd0  b0 14 c3 e1                                      strh r1, [r3, #0x40]
007d5fd4  38 20 83 e5                                      str r2, [r3, #0x38]
007d5fd8  01 30 a0 e3                                      mov r3, #1
007d5fdc  0d 30 c5 e5                                      strb r3, [r5, #0xd]
007d5fe0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007d5fe4  66 1d ed eb                                      bl #0x31d584
007d5fe8  1c 90 95 e5                                      ldr sb, [r5, #0x1c]
007d5fec  00 00 59 e3                                      cmp sb, #0
007d5ff0  04 00 00 0a                                      beq #0x7d6008
007d5ff4  09 00 a0 e1                                      mov r0, sb
007d5ff8  52 81 ff eb                                      bl #0x7b6548
007d5ffc  09 00 a0 e1                                      mov r0, sb
007d6000  00 10 a0 e3                                      mov r1, #0
007d6004  cb f2 fd eb                                      bl #0x752b38
007d6008  00 30 a0 e3                                      mov r3, #0
007d600c  1c 30 85 e5                                      str r3, [r5, #0x1c]
007d6010  84 ff ff ea                                      b #0x7d5e28
007d6014  01 00 51 e3                                      cmp r1, #1
007d6018  6e ff ff ca                                      bgt #0x7d5dd8
007d601c  64 ff ff ea                                      b #0x7d5db4
007d6020  01 00 51 e3                                      cmp r1, #1
007d6024  dd ff ff ca                                      bgt #0x7d5fa0
007d6028  d3 ff ff ea                                      b #0x7d5f7c
007d602c  b7 e0 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007d6030  60 ee 1b 00 ac 40 00 00 20 64 13 00 34 1f 00 00  .byte 0x60, 0xee, 0x1b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x64, 0x13, 0x00, 0x34, 0x1f, 0x00, 0x00
007d6040  ac 62 13 00 58 62 13 00 e0 60 13 00 90 60 13 00  .byte 0xac, 0x62, 0x13, 0x00, 0x58, 0x62, 0x13, 0x00, 0xe0, 0x60, 0x13, 0x00, 0x90, 0x60, 0x13, 0x00
