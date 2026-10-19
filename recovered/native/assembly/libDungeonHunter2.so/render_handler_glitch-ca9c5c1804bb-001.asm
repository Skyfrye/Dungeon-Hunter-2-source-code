; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d3df4, declared_size=4, range_size=4, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch4openEv
; demangled: render_handler_glitch::open()
; decoder-mode: arm
007d3df4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3df8, declared_size=8, range_size=8, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch15get_orientationEv
; demangled: render_handler_glitch::get_orientation()
; decoder-mode: arm
007d3df8  00 00 a0 e3                                      mov r0, #0
007d3dfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3e00, declared_size=4, range_size=4, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch15set_antialiasedEb
; demangled: render_handler_glitch::set_antialiased(bool)
; decoder-mode: arm
007d3e00  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3e04, declared_size=8, range_size=8, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch20create_video_handlerEv
; demangled: render_handler_glitch::create_video_handler()
; decoder-mode: arm
007d3e04  00 00 a0 e3                                      mov r0, #0
007d3e08  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3e0c, declared_size=92, range_size=92, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch10set_targetEPN7gameswf11bitmap_infoE
; demangled: render_handler_glitch::set_target(gameswf::bitmap_info*)
; decoder-mode: arm
007d3e0c  04 e0 2d e5                                      str lr, [sp, #-4]!
007d3e10  00 00 51 e3                                      cmp r1, #0
007d3e14  0c d0 4d e2                                      sub sp, sp, #0xc
007d3e18  07 00 00 0a                                      beq #0x7d3e3c
007d3e1c  10 30 90 e5                                      ldr r3, [r0, #0x10]
007d3e20  14 10 81 e2                                      add r1, r1, #0x14
007d3e24  03 00 a0 e1                                      mov r0, r3
007d3e28  00 30 93 e5                                      ldr r3, [r3]
007d3e2c  0f e0 a0 e1                                      mov lr, pc
007d3e30  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
007d3e34  0c d0 8d e2                                      add sp, sp, #0xc
007d3e38  00 80 bd e8                                      ldm sp!, {pc}
007d3e3c  10 30 90 e5                                      ldr r3, [r0, #0x10]
007d3e40  04 00 8d e2                                      add r0, sp, #4
007d3e44  03 10 a0 e1                                      mov r1, r3
007d3e48  00 30 93 e5                                      ldr r3, [r3]
007d3e4c  0f e0 a0 e1                                      mov lr, pc
007d3e50  90 f0 93 e5                                      ldr pc, [r3, #0x90]
007d3e54  04 00 9d e5                                      ldr r0, [sp, #4]
007d3e58  00 00 50 e3                                      cmp r0, #0
007d3e5c  f4 ff ff 0a                                      beq #0x7d3e34
007d3e60  c7 25 ed eb                                      bl #0x31d584
007d3e64  f2 ff ff ea                                      b #0x7d3e34

; FUNCTION 0x007d3e68, declared_size=4, range_size=4, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch18clear_frame_bufferEv
; demangled: render_handler_glitch::clear_frame_buffer()
; decoder-mode: arm
007d3e68  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3e6c, declared_size=4, range_size=4, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch17read_frame_bufferEiiiiPh
; demangled: render_handler_glitch::read_frame_buffer(int, int, int, int, unsigned char*)
; decoder-mode: arm
007d3e6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3e70, declared_size=8, range_size=8, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch14set_wire_frameEb
; demangled: render_handler_glitch::set_wire_frame(bool)
; decoder-mode: arm
007d3e70  f4 11 c0 e5                                      strb r1, [r0, #0x1f4]
007d3e74  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3e78, declared_size=12, range_size=12, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch11set_contextEPN7gameswf14player_contextE
; demangled: render_handler_glitch::set_context(gameswf::player_context*)
; decoder-mode: arm
007d3e78  28 12 80 e5                                      str r1, [r0, #0x228]
007d3e7c  08 10 80 e5                                      str r1, [r0, #8]
007d3e80  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3e84, declared_size=96, range_size=96, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch20end_display_callbackEv
; demangled: render_handler_glitch::end_display_callback()
; decoder-mode: arm
007d3e84  10 40 2d e9                                      push {r4, lr}
007d3e88  10 30 90 e5                                      ldr r3, [r0, #0x10]
007d3e8c  00 40 a0 e1                                      mov r4, r0
007d3e90  45 2f 80 e2                                      add r2, r0, #0x114
007d3e94  02 10 a0 e3                                      mov r1, #2
007d3e98  03 00 a0 e1                                      mov r0, r3
007d3e9c  00 30 93 e5                                      ldr r3, [r3]
007d3ea0  0f e0 a0 e1                                      mov lr, pc
007d3ea4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007d3ea8  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d3eac  56 2f 84 e2                                      add r2, r4, #0x158
007d3eb0  00 10 a0 e3                                      mov r1, #0
007d3eb4  03 00 a0 e1                                      mov r0, r3
007d3eb8  00 30 93 e5                                      ldr r3, [r3]
007d3ebc  0f e0 a0 e1                                      mov lr, pc
007d3ec0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007d3ec4  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d3ec8  67 2f 84 e2                                      add r2, r4, #0x19c
007d3ecc  01 10 a0 e3                                      mov r1, #1
007d3ed0  03 00 a0 e1                                      mov r0, r3
007d3ed4  00 30 93 e5                                      ldr r3, [r3]
007d3ed8  0f e0 a0 e1                                      mov lr, pc
007d3edc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007d3ee0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007d3ee4, declared_size=36, range_size=36, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch10set_matrixERKN7gameswf6matrixE
; demangled: render_handler_glitch::set_matrix(gameswf::matrix const&)
; decoder-mode: arm
007d3ee4  04 40 2d e5                                      str r4, [sp, #-4]!
007d3ee8  c3 cf 80 e2                                      add ip, r0, #0x30c
007d3eec  01 40 a0 e1                                      mov r4, r1
007d3ef0  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
007d3ef4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007d3ef8  03 00 94 e8                                      ldm r4, {r0, r1}
007d3efc  03 00 8c e8                                      stm ip, {r0, r1}
007d3f00  10 00 bd e8                                      ldm sp!, {r4}
007d3f04  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3f08, declared_size=36, range_size=36, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch10set_cxformERKN7gameswf6cxformE
; demangled: render_handler_glitch::set_cxform(gameswf::cxform const&)
; decoder-mode: arm
007d3f08  04 40 2d e5                                      str r4, [sp, #-4]!
007d3f0c  c9 cf 80 e2                                      add ip, r0, #0x324
007d3f10  01 40 a0 e1                                      mov r4, r1
007d3f14  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
007d3f18  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007d3f1c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
007d3f20  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007d3f24  10 00 bd e8                                      ldm sp!, {r4}
007d3f28  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3f2c, declared_size=20, range_size=20, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch18fill_style_disableEi
; demangled: render_handler_glitch::fill_style_disable(int)
; decoder-mode: arm
007d3f2c  4c 30 a0 e3                                      mov r3, #0x4c
007d3f30  93 01 23 e0                                      mla r3, r3, r1, r0
007d3f34  00 20 a0 e3                                      mov r2, #0
007d3f38  b0 23 83 e5                                      str r2, [r3, #0x3b0]
007d3f3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3f40, declared_size=12, range_size=12, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch18line_style_disableEv
; demangled: render_handler_glitch::line_style_disable()
; decoder-mode: arm
007d3f40  00 30 a0 e3                                      mov r3, #0
007d3f44  48 34 80 e5                                      str r3, [r0, #0x448]
007d3f48  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3f4c, declared_size=8, range_size=8, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch16line_style_widthEf
; demangled: render_handler_glitch::line_style_width(float)
; decoder-mode: arm
007d3f4c  90 14 80 e5                                      str r1, [r0, #0x490]
007d3f50  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3f54, declared_size=120, range_size=120, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch10is_visibleERKN7gameswf4rectE
; demangled: render_handler_glitch::is_visible(gameswf::rect const&)
; decoder-mode: arm
007d3f54  70 40 2d e9                                      push {r4, r5, r6, lr}
007d3f58  00 30 a0 e1                                      mov r3, r0
007d3f5c  01 40 a0 e1                                      mov r4, r1
007d3f60  04 03 90 e5                                      ldr r0, [r0, #0x304]
007d3f64  00 10 91 e5                                      ldr r1, [r1]
007d3f68  08 53 93 e5                                      ldr r5, [r3, #0x308]
007d3f6c  e6 e9 ec eb                                      bl #0x30e70c
007d3f70  00 00 50 e3                                      cmp r0, #0
007d3f74  12 00 00 1a                                      bne #0x7d3fc4
007d3f78  04 00 94 e5                                      ldr r0, [r4, #4]
007d3f7c  00 10 a0 e3                                      mov r1, #0
007d3f80  e1 e9 ec eb                                      bl #0x30e70c
007d3f84  00 00 50 e3                                      cmp r0, #0
007d3f88  0d 00 00 1a                                      bne #0x7d3fc4
007d3f8c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007d3f90  00 10 a0 e3                                      mov r1, #0
007d3f94  dc e9 ec eb                                      bl #0x30e70c
007d3f98  00 00 50 e3                                      cmp r0, #0
007d3f9c  08 00 00 1a                                      bne #0x7d3fc4
007d3fa0  05 00 a0 e1                                      mov r0, r5
007d3fa4  08 10 94 e5                                      ldr r1, [r4, #8]
007d3fa8  d7 e9 ec eb                                      bl #0x30e70c
007d3fac  00 00 50 e3                                      cmp r0, #0
007d3fb0  00 00 a0 e3                                      mov r0, #0
007d3fb4  01 00 a0 13                                      movne r0, #1
007d3fb8  01 00 20 e2                                      eor r0, r0, #1
007d3fbc  70 00 ef e6                                      uxtb r0, r0
007d3fc0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d3fc4  00 00 a0 e3                                      mov r0, #0
007d3fc8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d4334, declared_size=12, range_size=12, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch19set_buffer_capacityEN7gameswf14render_handler11buffer_modeEi
; demangled: render_handler_glitch::set_buffer_capacity(gameswf::render_handler::buffer_mode, int)
; decoder-mode: arm
007d4334  f0 11 a0 e5                                      str r1, [r0, #0x1f0]!
007d4338  02 10 a0 e1                                      mov r1, r2
007d433c  d0 ff ff ea                                      b #0x7d4284

; FUNCTION 0x007d4340, declared_size=140, range_size=140, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch20ensureBufferCapacityEi
; demangled: render_handler_glitch::ensureBufferCapacity(int)
; decoder-mode: arm
007d4340  70 40 2d e9                                      push {r4, r5, r6, lr}
007d4344  70 33 90 e5                                      ldr r3, [r0, #0x370]
007d4348  00 50 a0 e1                                      mov r5, r0
007d434c  01 40 a0 e1                                      mov r4, r1
007d4350  01 00 53 e1                                      cmp r3, r1
007d4354  00 00 00 ba                                      blt #0x7d435c
007d4358  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d435c  18 60 a0 e3                                      mov r6, #0x18
007d4360  96 01 06 e0                                      mul r6, r6, r1
007d4364  00 10 a0 e3                                      mov r1, #0
007d4368  06 00 a0 e1                                      mov r0, r6
007d436c  8d 7f f5 eb                                      bl #0x5341a8
007d4370  00 00 54 e3                                      cmp r4, #0
007d4374  00 20 a0 e1                                      mov r2, r0
007d4378  0b 00 00 0a                                      beq #0x7d43ac
007d437c  00 30 a0 e1                                      mov r3, r0
007d4380  00 10 a0 e3                                      mov r1, #0
007d4384  00 00 a0 e3                                      mov r0, #0
007d4388  01 00 80 e2                                      add r0, r0, #1
007d438c  04 00 50 e1                                      cmp r0, r4
007d4390  00 10 83 e5                                      str r1, [r3]
007d4394  04 10 83 e5                                      str r1, [r3, #4]
007d4398  0c 10 83 e5                                      str r1, [r3, #0xc]
007d439c  10 10 83 e5                                      str r1, [r3, #0x10]
007d43a0  14 10 83 e5                                      str r1, [r3, #0x14]
007d43a4  18 30 83 e2                                      add r3, r3, #0x18
007d43a8  f6 ff ff 1a                                      bne #0x7d4388
007d43ac  78 33 95 e5                                      ldr r3, [r5, #0x378]
007d43b0  74 23 85 e5                                      str r2, [r5, #0x374]
007d43b4  06 10 a0 e1                                      mov r1, r6
007d43b8  14 00 93 e5                                      ldr r0, [r3, #0x14]
007d43bc  01 30 a0 e3                                      mov r3, #1
007d43c0  3b 36 f7 eb                                      bl #0x5a1cb4
007d43c4  70 43 85 e5                                      str r4, [r5, #0x370]
007d43c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d43cc, declared_size=100, range_size=100, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch16line_style_colorEN7gameswf4rgbaE
; demangled: render_handler_glitch::line_style_color(gameswf::rgba)
; decoder-mode: arm
007d43cc  10 40 2d e9                                      push {r4, lr}
007d43d0  00 40 a0 e1                                      mov r4, r0
007d43d4  18 d0 4d e2                                      sub sp, sp, #0x18
007d43d8  c9 0f 80 e2                                      add r0, r0, #0x324
007d43dc  0c 10 8d e5                                      str r1, [sp, #0xc]
007d43e0  e9 02 ff eb                                      bl #0x794f8c
007d43e4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
007d43e8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
007d43ec  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
007d43f0  01 10 cd e5                                      strb r1, [sp, #1]
007d43f4  02 20 cd e5                                      strb r2, [sp, #2]
007d43f8  00 00 cd e5                                      strb r0, [sp]
007d43fc  03 30 cd e5                                      strb r3, [sp, #3]
007d4400  00 30 9d e5                                      ldr r3, [sp]
007d4404  01 20 a0 e3                                      mov r2, #1
007d4408  48 24 84 e5                                      str r2, [r4, #0x448]
007d440c  53 18 e7 e7                                      ubfx r1, r3, #0x10, #8
007d4410  53 24 e7 e7                                      ubfx r2, r3, #8, #8
007d4414  23 0c a0 e1                                      lsr r0, r3, #0x18
007d4418  4c 34 c4 e5                                      strb r3, [r4, #0x44c]
007d441c  4f 04 c4 e5                                      strb r0, [r4, #0x44f]
007d4420  4e 14 c4 e5                                      strb r1, [r4, #0x44e]
007d4424  4d 24 c4 e5                                      strb r2, [r4, #0x44d]
007d4428  18 d0 8d e2                                      add sp, sp, #0x18
007d442c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007d4558, declared_size=44, range_size=44, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch17fill_style_bitmapEiPN7gameswf11bitmap_infoERKNS0_6matrixENS0_14render_handler16bitmap_wrap_modeE
; demangled: render_handler_glitch::fill_style_bitmap(int, gameswf::bitmap_info*, gameswf::matrix const&, gameswf::render_handler::bitmap_wrap_mode)
; decoder-mode: arm
007d4558  4c c0 a0 e3                                      mov ip, #0x4c
007d455c  9c 01 01 e0                                      mul r1, ip, r1
007d4560  00 c0 a0 e1                                      mov ip, r0
007d4564  3b 1e 81 e2                                      add r1, r1, #0x3b0
007d4568  01 00 80 e0                                      add r0, r0, r1
007d456c  02 10 a0 e1                                      mov r1, r2
007d4570  03 20 a0 e1                                      mov r2, r3
007d4574  00 30 9d e5                                      ldr r3, [sp]
007d4578  c9 cf 8c e2                                      add ip, ip, #0x324
007d457c  00 c0 8d e5                                      str ip, [sp]
007d4580  aa ff ff ea                                      b #0x7d4430

; FUNCTION 0x007d4624, declared_size=216, range_size=216, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch16fill_style_colorEiRKN7gameswf4rgbaE
; demangled: render_handler_glitch::fill_style_color(int, gameswf::rgba const&)
; decoder-mode: arm
007d4624  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d4628  30 d0 4d e2                                      sub sp, sp, #0x30
007d462c  14 30 8d e2                                      add r3, sp, #0x14
007d4630  4c 80 a0 e3                                      mov r8, #0x4c
007d4634  00 e0 a0 e3                                      mov lr, #0
007d4638  08 c0 83 e2                                      add ip, r3, #8
007d463c  98 01 08 e0                                      mul r8, r8, r1
007d4640  04 e0 8c e4                                      str lr, [ip], #4
007d4644  04 e0 8c e4                                      str lr, [ip], #4
007d4648  04 e0 8c e4                                      str lr, [ip], #4
007d464c  00 40 a0 e1                                      mov r4, r0
007d4650  3b 0e 88 e2                                      add r0, r8, #0x3b0
007d4654  02 50 a0 e1                                      mov r5, r2
007d4658  00 e0 8c e5                                      str lr, [ip]
007d465c  00 00 84 e0                                      add r0, r4, r0
007d4660  03 20 a0 e1                                      mov r2, r3
007d4664  c9 6f 84 e2                                      add r6, r4, #0x324
007d4668  0e 30 a0 e1                                      mov r3, lr
007d466c  df 1f 84 e2                                      add r1, r4, #0x37c
007d4670  fe 75 a0 e3                                      mov r7, #0x3f800000
007d4674  18 e0 8d e5                                      str lr, [sp, #0x18]
007d4678  24 70 8d e5                                      str r7, [sp, #0x24]
007d467c  14 70 8d e5                                      str r7, [sp, #0x14]
007d4680  00 60 8d e5                                      str r6, [sp]
007d4684  69 ff ff eb                                      bl #0x7d4430
007d4688  01 00 d5 e5                                      ldrb r0, [r5, #1]
007d468c  00 30 d5 e5                                      ldrb r3, [r5]
007d4690  02 20 d5 e5                                      ldrb r2, [r5, #2]
007d4694  03 10 d5 e5                                      ldrb r1, [r5, #3]
007d4698  00 34 83 e1                                      orr r3, r3, r0, lsl #8
007d469c  02 38 83 e1                                      orr r3, r3, r2, lsl #16
007d46a0  01 1c 83 e1                                      orr r1, r3, r1, lsl #24
007d46a4  06 00 a0 e1                                      mov r0, r6
007d46a8  37 02 ff eb                                      bl #0x794f8c
007d46ac  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
007d46b0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
007d46b4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
007d46b8  09 10 cd e5                                      strb r1, [sp, #9]
007d46bc  0a 20 cd e5                                      strb r2, [sp, #0xa]
007d46c0  08 00 cd e5                                      strb r0, [sp, #8]
007d46c4  0b 30 cd e5                                      strb r3, [sp, #0xb]
007d46c8  08 30 9d e5                                      ldr r3, [sp, #8]
007d46cc  08 40 84 e0                                      add r4, r4, r8
007d46d0  53 24 e7 e7                                      ubfx r2, r3, #8, #8
007d46d4  53 18 e7 e7                                      ubfx r1, r3, #0x10, #8
007d46d8  23 0c a0 e1                                      lsr r0, r3, #0x18
007d46dc  b4 33 c4 e5                                      strb r3, [r4, #0x3b4]
007d46e0  01 30 a0 e3                                      mov r3, #1
007d46e4  b0 33 84 e5                                      str r3, [r4, #0x3b0]
007d46e8  b7 03 c4 e5                                      strb r0, [r4, #0x3b7]
007d46ec  b6 13 c4 e5                                      strb r1, [r4, #0x3b6]
007d46f0  b5 23 c4 e5                                      strb r2, [r4, #0x3b5]
007d46f4  30 d0 8d e2                                      add sp, sp, #0x30
007d46f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007d4bb4, declared_size=72, range_size=72, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch25create_bitmap_info_nativeEiiPKN7gameswf6membufE
; demangled: render_handler_glitch::create_bitmap_info_native(int, int, gameswf::membuf const*)
; decoder-mode: arm
007d4bb4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d4bb8  00 70 a0 e1                                      mov r7, r0
007d4bbc  08 d0 4d e2                                      sub sp, sp, #8
007d4bc0  01 60 a0 e1                                      mov r6, r1
007d4bc4  34 00 a0 e3                                      mov r0, #0x34
007d4bc8  00 10 a0 e3                                      mov r1, #0
007d4bcc  02 50 a0 e1                                      mov r5, r2
007d4bd0  03 40 a0 e1                                      mov r4, r3
007d4bd4  f3 f7 fd eb                                      bl #0x752ba8
007d4bd8  10 10 97 e5                                      ldr r1, [r7, #0x10]
007d4bdc  00 80 a0 e1                                      mov r8, r0
007d4be0  06 20 a0 e1                                      mov r2, r6
007d4be4  05 30 a0 e1                                      mov r3, r5
007d4be8  00 40 8d e5                                      str r4, [sp]
007d4bec  d2 ff ff eb                                      bl #0x7d4b3c
007d4bf0  08 00 a0 e1                                      mov r0, r8
007d4bf4  08 d0 8d e2                                      add sp, sp, #8
007d4bf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007d4d00, declared_size=48, range_size=48, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch26create_bitmap_info_textureEPN6glitch5video8ITextureE
; demangled: render_handler_glitch::create_bitmap_info_texture(glitch::video::ITexture*)
; decoder-mode: arm
007d4d00  70 40 2d e9                                      push {r4, r5, r6, lr}
007d4d04  00 60 a0 e1                                      mov r6, r0
007d4d08  01 50 a0 e1                                      mov r5, r1
007d4d0c  34 00 a0 e3                                      mov r0, #0x34
007d4d10  00 10 a0 e3                                      mov r1, #0
007d4d14  a3 f7 fd eb                                      bl #0x752ba8
007d4d18  10 10 96 e5                                      ldr r1, [r6, #0x10]
007d4d1c  00 40 a0 e1                                      mov r4, r0
007d4d20  05 20 a0 e1                                      mov r2, r5
007d4d24  d2 ff ff eb                                      bl #0x7d4c74
007d4d28  04 00 a0 e1                                      mov r0, r4
007d4d2c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d4e28, declared_size=40, range_size=40, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch24create_bitmap_info_emptyEv
; demangled: render_handler_glitch::create_bitmap_info_empty()
; decoder-mode: arm
007d4e28  70 40 2d e9                                      push {r4, r5, r6, lr}
007d4e2c  00 10 a0 e3                                      mov r1, #0
007d4e30  00 50 a0 e1                                      mov r5, r0
007d4e34  34 00 a0 e3                                      mov r0, #0x34
007d4e38  5a f7 fd eb                                      bl #0x752ba8
007d4e3c  10 10 95 e5                                      ldr r1, [r5, #0x10]
007d4e40  00 40 a0 e1                                      mov r4, r0
007d4e44  dc ff ff eb                                      bl #0x7d4dbc
007d4e48  04 00 a0 e1                                      mov r0, r4
007d4e4c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d4f8c, declared_size=120, range_size=120, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch16set_render_cacheEPN7gameswf12render_cacheE
; demangled: render_handler_glitch::set_render_cache(gameswf::render_cache*)
; decoder-mode: arm
007d4f8c  00 00 51 e3                                      cmp r1, #0
007d4f90  30 00 2d e9                                      push {r4, r5}
007d4f94  0c 10 80 e5                                      str r1, [r0, #0xc]
007d4f98  07 00 00 0a                                      beq #0x7d4fbc
007d4f9c  14 c0 91 e5                                      ldr ip, [r1, #0x14]
007d4fa0  10 50 81 e2                                      add r5, r1, #0x10
007d4fa4  00 00 5c e3                                      cmp ip, #0
007d4fa8  05 00 00 da                                      ble #0x7d4fc4
007d4fac  00 30 a0 e3                                      mov r3, #0
007d4fb0  34 30 81 e5                                      str r3, [r1, #0x34]
007d4fb4  14 30 81 e5                                      str r3, [r1, #0x14]
007d4fb8  24 30 81 e5                                      str r3, [r1, #0x24]
007d4fbc  30 00 bd e8                                      pop {r4, r5}
007d4fc0  1e ff 2f e1                                      bx lr
007d4fc4  f8 ff ff aa                                      bge #0x7d4fac
007d4fc8  18 00 a0 e3                                      mov r0, #0x18
007d4fcc  90 0c 00 e0                                      mul r0, r0, ip
007d4fd0  00 30 a0 e3                                      mov r3, #0
007d4fd4  00 40 95 e5                                      ldr r4, [r5]
007d4fd8  01 c0 9c e2                                      adds ip, ip, #1
007d4fdc  00 20 84 e0                                      add r2, r4, r0
007d4fe0  00 30 84 e7                                      str r3, [r4, r0]
007d4fe4  14 30 82 e5                                      str r3, [r2, #0x14]
007d4fe8  04 30 82 e5                                      str r3, [r2, #4]
007d4fec  08 30 82 e5                                      str r3, [r2, #8]
007d4ff0  0c 30 82 e5                                      str r3, [r2, #0xc]
007d4ff4  10 30 82 e5                                      str r3, [r2, #0x10]
007d4ff8  18 00 80 e2                                      add r0, r0, #0x18
007d4ffc  f4 ff ff 1a                                      bne #0x7d4fd4
007d5000  e9 ff ff ea                                      b #0x7d4fac

; FUNCTION 0x007d53cc, declared_size=56, range_size=56, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch25create_bitmap_info_targetEii
; demangled: render_handler_glitch::create_bitmap_info_target(int, int)
; decoder-mode: arm
007d53cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d53d0  00 70 a0 e1                                      mov r7, r0
007d53d4  01 60 a0 e1                                      mov r6, r1
007d53d8  34 00 a0 e3                                      mov r0, #0x34
007d53dc  00 10 a0 e3                                      mov r1, #0
007d53e0  02 50 a0 e1                                      mov r5, r2
007d53e4  ef f5 fd eb                                      bl #0x752ba8
007d53e8  10 10 97 e5                                      ldr r1, [r7, #0x10]
007d53ec  00 40 a0 e1                                      mov r4, r0
007d53f0  06 20 a0 e1                                      mov r2, r6
007d53f4  05 30 a0 e1                                      mov r3, r5
007d53f8  a5 ff ff eb                                      bl #0x7d5294
007d53fc  04 00 a0 e1                                      mov r0, r4
007d5400  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007d551c, declared_size=72, range_size=72, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch24create_bitmap_info_alphaEiiPh
; demangled: render_handler_glitch::create_bitmap_info_alpha(int, int, unsigned char*)
; decoder-mode: arm
007d551c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d5520  00 70 a0 e1                                      mov r7, r0
007d5524  08 d0 4d e2                                      sub sp, sp, #8
007d5528  01 60 a0 e1                                      mov r6, r1
007d552c  34 00 a0 e3                                      mov r0, #0x34
007d5530  00 10 a0 e3                                      mov r1, #0
007d5534  02 50 a0 e1                                      mov r5, r2
007d5538  03 40 a0 e1                                      mov r4, r3
007d553c  99 f5 fd eb                                      bl #0x752ba8
007d5540  10 10 97 e5                                      ldr r1, [r7, #0x10]
007d5544  00 80 a0 e1                                      mov r8, r0
007d5548  06 20 a0 e1                                      mov r2, r6
007d554c  05 30 a0 e1                                      mov r3, r5
007d5550  00 40 8d e5                                      str r4, [sp]
007d5554  aa ff ff eb                                      bl #0x7d5404
007d5558  08 00 a0 e1                                      mov r0, r8
007d555c  08 d0 8d e2                                      add sp, sp, #8
007d5560  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007d57b0, declared_size=48, range_size=48, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch23create_bitmap_info_rgbaEPN7gameswf10image_rgbaE
; demangled: render_handler_glitch::create_bitmap_info_rgba(gameswf::image_rgba*)
; decoder-mode: arm
007d57b0  70 40 2d e9                                      push {r4, r5, r6, lr}
007d57b4  00 60 a0 e1                                      mov r6, r0
007d57b8  01 50 a0 e1                                      mov r5, r1
007d57bc  34 00 a0 e3                                      mov r0, #0x34
007d57c0  00 10 a0 e3                                      mov r1, #0
007d57c4  f7 f4 fd eb                                      bl #0x752ba8
007d57c8  10 10 96 e5                                      ldr r1, [r6, #0x10]
007d57cc  00 40 a0 e1                                      mov r4, r0
007d57d0  05 20 a0 e1                                      mov r2, r5
007d57d4  a8 ff ff eb                                      bl #0x7d567c
007d57d8  04 00 a0 e1                                      mov r0, r4
007d57dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d5a6c, declared_size=48, range_size=48, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch22create_bitmap_info_rgbEPN7gameswf9image_rgbE
; demangled: render_handler_glitch::create_bitmap_info_rgb(gameswf::image_rgb*)
; decoder-mode: arm
007d5a6c  70 40 2d e9                                      push {r4, r5, r6, lr}
007d5a70  00 60 a0 e1                                      mov r6, r0
007d5a74  01 50 a0 e1                                      mov r5, r1
007d5a78  34 00 a0 e3                                      mov r0, #0x34
007d5a7c  00 10 a0 e3                                      mov r1, #0
007d5a80  48 f4 fd eb                                      bl #0x752ba8
007d5a84  10 10 96 e5                                      ldr r1, [r6, #0x10]
007d5a88  00 40 a0 e1                                      mov r4, r0
007d5a8c  05 20 a0 e1                                      mov r2, r5
007d5a90  9f ff ff eb                                      bl #0x7d5914
007d5a94  04 00 a0 e1                                      mov r0, r4
007d5a98  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d60f4, declared_size=1380, range_size=1380, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitchC1EPN6glitch5video12IVideoDriverE
; demangled: render_handler_glitch::render_handler_glitch(glitch::video::IVideoDriver*)
; decoder-mode: arm
007d60f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d60f8  24 a5 9f e5                                      ldr sl, [pc, #0x524]
007d60fc  24 25 9f e5                                      ldr r2, [pc, #0x524]
007d6100  1f 38 a0 e3                                      mov r3, #0x1f0000
007d6104  0a a0 8f e0                                      add sl, pc, sl
007d6108  02 20 9a e7                                      ldr r2, [sl, r2]
007d610c  00 40 a0 e1                                      mov r4, r0
007d6110  00 50 a0 e3                                      mov r5, #0
007d6114  fe 75 a0 e3                                      mov r7, #0x3f800000
007d6118  00 60 a0 e3                                      mov r6, #0
007d611c  ff 30 83 e2                                      add r3, r3, #0xff
007d6120  08 20 82 e2                                      add r2, r2, #8
007d6124  01 b0 a0 e3                                      mov fp, #1
007d6128  14 30 80 e5                                      str r3, [r0, #0x14]
007d612c  00 20 80 e5                                      str r2, [r0]
007d6130  74 d0 4d e2                                      sub sp, sp, #0x74
007d6134  04 b0 c4 e5                                      strb fp, [r4, #4]
007d6138  08 50 80 e5                                      str r5, [r0, #8]
007d613c  0c 50 80 e5                                      str r5, [r0, #0xc]
007d6140  10 10 84 e5                                      str r1, [r4, #0x10]
007d6144  18 50 c0 e5                                      strb r5, [r0, #0x18]
007d6148  19 50 c0 e5                                      strb r5, [r0, #0x19]
007d614c  1a 50 c0 e5                                      strb r5, [r0, #0x1a]
007d6150  1b 50 c0 e5                                      strb r5, [r0, #0x1b]
007d6154  1c 70 80 e5                                      str r7, [r0, #0x1c]
007d6158  20 60 80 e5                                      str r6, [r0, #0x20]
007d615c  24 70 80 e5                                      str r7, [r0, #0x24]
007d6160  28 50 80 e5                                      str r5, [r0, #0x28]
007d6164  2c 50 80 e5                                      str r5, [r0, #0x2c]
007d6168  30 50 80 e5                                      str r5, [r0, #0x30]
007d616c  34 50 80 e5                                      str r5, [r0, #0x34]
007d6170  38 00 80 e2                                      add r0, r0, #0x38
007d6174  01 90 a0 e1                                      mov sb, r1
007d6178  1f 8e 84 e2                                      add r8, r4, #0x1f0
007d617c  b3 ff ff eb                                      bl #0x7d6050
007d6180  45 0f 84 e2                                      add r0, r4, #0x114
007d6184  b1 ff ff eb                                      bl #0x7d6050
007d6188  09 10 a0 e1                                      mov r1, sb
007d618c  08 00 a0 e1                                      mov r0, r8
007d6190  74 f9 ff eb                                      bl #0x7d4768
007d6194  00 53 c4 e5                                      strb r5, [r4, #0x300]
007d6198  01 53 c4 e5                                      strb r5, [r4, #0x301]
007d619c  04 63 84 e5                                      str r6, [r4, #0x304]
007d61a0  08 63 84 e5                                      str r6, [r4, #0x308]
007d61a4  10 53 84 e5                                      str r5, [r4, #0x310]
007d61a8  14 53 84 e5                                      str r5, [r4, #0x314]
007d61ac  18 53 84 e5                                      str r5, [r4, #0x318]
007d61b0  20 53 84 e5                                      str r5, [r4, #0x320]
007d61b4  0c 73 84 e5                                      str r7, [r4, #0x30c]
007d61b8  1c 73 84 e5                                      str r7, [r4, #0x31c]
007d61bc  24 73 84 e5                                      str r7, [r4, #0x324]
007d61c0  2c 73 84 e5                                      str r7, [r4, #0x32c]
007d61c4  34 73 84 e5                                      str r7, [r4, #0x334]
007d61c8  3c 73 84 e5                                      str r7, [r4, #0x33c]
007d61cc  28 63 84 e5                                      str r6, [r4, #0x328]
007d61d0  30 63 84 e5                                      str r6, [r4, #0x330]
007d61d4  38 63 84 e5                                      str r6, [r4, #0x338]
007d61d8  40 63 84 e5                                      str r6, [r4, #0x340]
007d61dc  44 53 84 e5                                      str r5, [r4, #0x344]
007d61e0  48 63 84 e5                                      str r6, [r4, #0x348]
007d61e4  4c 53 84 e5                                      str r5, [r4, #0x34c]
007d61e8  50 53 84 e5                                      str r5, [r4, #0x350]
007d61ec  54 53 84 e5                                      str r5, [r4, #0x354]
007d61f0  58 53 c4 e5                                      strb r5, [r4, #0x358]
007d61f4  5c 53 84 e5                                      str r5, [r4, #0x35c]
007d61f8  60 53 84 e5                                      str r5, [r4, #0x360]
007d61fc  64 53 84 e5                                      str r5, [r4, #0x364]
007d6200  68 53 c4 e5                                      strb r5, [r4, #0x368]
007d6204  db 0f 84 e2                                      add r0, r4, #0x36c
007d6208  3e be fe eb                                      bl #0x785b08
007d620c  0b 10 a0 e1                                      mov r1, fp
007d6210  de 0f 84 e2                                      add r0, r4, #0x378
007d6214  01 27 a0 e3                                      mov r2, #0x40000
007d6218  70 53 84 e5                                      str r5, [r4, #0x370]
007d621c  74 53 84 e5                                      str r5, [r4, #0x374]
007d6220  77 2c f7 eb                                      bl #0x5a1404
007d6224  00 c4 9f e5                                      ldr ip, [pc, #0x400]
007d6228  04 20 a0 e3                                      mov r2, #4
007d622c  02 30 a0 e1                                      mov r3, r2
007d6230  09 10 a0 e1                                      mov r1, sb
007d6234  0c c0 8f e0                                      add ip, pc, ip
007d6238  df 0f 84 e2                                      add r0, r4, #0x37c
007d623c  00 c0 8d e5                                      str ip, [sp]
007d6240  6f fc ff eb                                      bl #0x7d5404
007d6244  3b 3e 84 e2                                      add r3, r4, #0x3b0
007d6248  e4 10 83 e2                                      add r1, r3, #0xe4
007d624c  00 20 e0 e3                                      mvn r2, #0
007d6250  00 50 83 e5                                      str r5, [r3]
007d6254  04 20 c3 e5                                      strb r2, [r3, #4]
007d6258  05 20 c3 e5                                      strb r2, [r3, #5]
007d625c  06 20 c3 e5                                      strb r2, [r3, #6]
007d6260  07 20 c3 e5                                      strb r2, [r3, #7]
007d6264  10 50 83 e5                                      str r5, [r3, #0x10]
007d6268  14 50 83 e5                                      str r5, [r3, #0x14]
007d626c  18 50 83 e5                                      str r5, [r3, #0x18]
007d6270  20 50 83 e5                                      str r5, [r3, #0x20]
007d6274  0c 70 83 e5                                      str r7, [r3, #0xc]
007d6278  1c 70 83 e5                                      str r7, [r3, #0x1c]
007d627c  24 70 83 e5                                      str r7, [r3, #0x24]
007d6280  2c 70 83 e5                                      str r7, [r3, #0x2c]
007d6284  34 70 83 e5                                      str r7, [r3, #0x34]
007d6288  3c 70 83 e5                                      str r7, [r3, #0x3c]
007d628c  28 60 83 e5                                      str r6, [r3, #0x28]
007d6290  30 60 83 e5                                      str r6, [r3, #0x30]
007d6294  38 60 83 e5                                      str r6, [r3, #0x38]
007d6298  40 60 83 e5                                      str r6, [r3, #0x40]
007d629c  44 50 c3 e5                                      strb r5, [r3, #0x44]
007d62a0  4c 30 83 e2                                      add r3, r3, #0x4c
007d62a4  01 00 53 e1                                      cmp r3, r1
007d62a8  e8 ff ff 1a                                      bne #0x7d6250
007d62ac  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d62b0  00 00 53 e3                                      cmp r3, #0
007d62b4  57 00 00 0a                                      beq #0x7d6418
007d62b8  04 10 93 e5                                      ldr r1, [r3, #4]
007d62bc  01 e0 a0 e3                                      mov lr, #1
007d62c0  05 20 a0 e1                                      mov r2, r5
007d62c4  01 10 81 e2                                      add r1, r1, #1
007d62c8  04 10 83 e5                                      str r1, [r3, #4]
007d62cc  10 c0 94 e5                                      ldr ip, [r4, #0x10]
007d62d0  6c 00 8d e2                                      add r0, sp, #0x6c
007d62d4  04 30 a0 e3                                      mov r3, #4
007d62d8  0c 10 a0 e1                                      mov r1, ip
007d62dc  00 c0 9c e5                                      ldr ip, [ip]
007d62e0  08 e0 8d e5                                      str lr, [sp, #8]
007d62e4  00 50 8d e5                                      str r5, [sp]
007d62e8  04 50 8d e5                                      str r5, [sp, #4]
007d62ec  0f e0 a0 e1                                      mov lr, pc
007d62f0  78 f0 9c e5                                      ldr pc, [ip, #0x78]
007d62f4  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
007d62f8  78 03 94 e5                                      ldr r0, [r4, #0x378]
007d62fc  0c c0 a0 e3                                      mov ip, #0xc
007d6300  00 00 53 e3                                      cmp r3, #0
007d6304  34 30 8d e5                                      str r3, [sp, #0x34]
007d6308  04 20 93 15                                      ldrne r2, [r3, #4]
007d630c  14 10 80 e2                                      add r1, r0, #0x14
007d6310  01 20 82 12                                      addne r2, r2, #1
007d6314  04 20 83 15                                      strne r2, [r3, #4]
007d6318  38 c0 8d e5                                      str ip, [sp, #0x38]
007d631c  06 c0 a0 e3                                      mov ip, #6
007d6320  3c c0 8d e5                                      str ip, [sp, #0x3c]
007d6324  03 c0 a0 e3                                      mov ip, #3
007d6328  b0 c4 cd e1                                      strh ip, [sp, #0x40]
007d632c  34 20 8d e2                                      add r2, sp, #0x34
007d6330  18 c0 a0 e3                                      mov ip, #0x18
007d6334  01 30 a0 e3                                      mov r3, #1
007d6338  b2 c4 cd e1                                      strh ip, [sp, #0x42]
007d633c  ee f8 ff eb                                      bl #0x7d46fc
007d6340  34 00 9d e5                                      ldr r0, [sp, #0x34]
007d6344  00 00 50 e3                                      cmp r0, #0
007d6348  00 00 00 0a                                      beq #0x7d6350
007d634c  8c 1c ed eb                                      bl #0x31d584
007d6350  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
007d6354  78 03 94 e5                                      ldr r0, [r4, #0x378]
007d6358  00 c0 a0 e3                                      mov ip, #0
007d635c  00 00 53 e3                                      cmp r3, #0
007d6360  24 30 8d e5                                      str r3, [sp, #0x24]
007d6364  04 20 93 15                                      ldrne r2, [r3, #4]
007d6368  24 10 80 e2                                      add r1, r0, #0x24
007d636c  01 20 82 12                                      addne r2, r2, #1
007d6370  04 20 83 15                                      strne r2, [r3, #4]
007d6374  28 c0 8d e5                                      str ip, [sp, #0x28]
007d6378  06 c0 a0 e3                                      mov ip, #6
007d637c  2c c0 8d e5                                      str ip, [sp, #0x2c]
007d6380  02 c0 a0 e3                                      mov ip, #2
007d6384  b0 c3 cd e1                                      strh ip, [sp, #0x30]
007d6388  24 20 8d e2                                      add r2, sp, #0x24
007d638c  18 c0 a0 e3                                      mov ip, #0x18
007d6390  01 30 a0 e3                                      mov r3, #1
007d6394  b2 c3 cd e1                                      strh ip, [sp, #0x32]
007d6398  d7 f8 ff eb                                      bl #0x7d46fc
007d639c  24 00 9d e5                                      ldr r0, [sp, #0x24]
007d63a0  00 00 50 e3                                      cmp r0, #0
007d63a4  00 00 00 0a                                      beq #0x7d63ac
007d63a8  75 1c ed eb                                      bl #0x31d584
007d63ac  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
007d63b0  78 03 94 e5                                      ldr r0, [r4, #0x378]
007d63b4  08 c0 a0 e3                                      mov ip, #8
007d63b8  00 00 53 e3                                      cmp r3, #0
007d63bc  14 30 8d e5                                      str r3, [sp, #0x14]
007d63c0  04 20 93 15                                      ldrne r2, [r3, #4]
007d63c4  34 10 80 e2                                      add r1, r0, #0x34
007d63c8  01 20 82 12                                      addne r2, r2, #1
007d63cc  04 20 83 15                                      strne r2, [r3, #4]
007d63d0  18 c0 8d e5                                      str ip, [sp, #0x18]
007d63d4  01 c0 a0 e3                                      mov ip, #1
007d63d8  1c c0 8d e5                                      str ip, [sp, #0x1c]
007d63dc  04 c0 a0 e3                                      mov ip, #4
007d63e0  b0 c2 cd e1                                      strh ip, [sp, #0x20]
007d63e4  14 20 8d e2                                      add r2, sp, #0x14
007d63e8  18 c0 a0 e3                                      mov ip, #0x18
007d63ec  00 30 a0 e3                                      mov r3, #0
007d63f0  b2 c2 cd e1                                      strh ip, [sp, #0x22]
007d63f4  c0 f8 ff eb                                      bl #0x7d46fc
007d63f8  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d63fc  00 00 50 e3                                      cmp r0, #0
007d6400  00 00 00 0a                                      beq #0x7d6408
007d6404  5e 1c ed eb                                      bl #0x31d584
007d6408  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
007d640c  00 00 50 e3                                      cmp r0, #0
007d6410  00 00 00 0a                                      beq #0x7d6418
007d6414  5a 1c ed eb                                      bl #0x31d584
007d6418  04 00 a0 e1                                      mov r0, r4
007d641c  01 1c a0 e3                                      mov r1, #0x100
007d6420  c6 f7 ff eb                                      bl #0x7d4340
007d6424  04 32 9f e5                                      ldr r3, [pc, #0x204]
007d6428  04 12 9f e5                                      ldr r1, [pc, #0x204]
007d642c  44 50 8d e2                                      add r5, sp, #0x44
007d6430  03 20 9a e7                                      ldr r2, [sl, r3]
007d6434  01 10 8f e0                                      add r1, pc, r1
007d6438  05 00 a0 e1                                      mov r0, r5
007d643c  86 e3 f8 eb                                      bl #0x60f25c
007d6440  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
007d6444  68 70 8d e2                                      add r7, sp, #0x68
007d6448  00 c0 a0 e3                                      mov ip, #0
007d644c  10 20 94 e5                                      ldr r2, [r4, #0x10]
007d6450  07 00 a0 e1                                      mov r0, r7
007d6454  05 10 a0 e1                                      mov r1, r5
007d6458  03 30 8f e0                                      add r3, pc, r3
007d645c  00 c0 8d e5                                      str ip, [sp]
007d6460  29 13 f9 eb                                      bl #0x61b10c
007d6464  68 30 9d e5                                      ldr r3, [sp, #0x68]
007d6468  64 60 8d e2                                      add r6, sp, #0x64
007d646c  06 10 a0 e1                                      mov r1, r6
007d6470  00 00 53 e3                                      cmp r3, #0
007d6474  64 30 8d e5                                      str r3, [sp, #0x64]
007d6478  00 20 93 15                                      ldrne r2, [r3]
007d647c  08 00 a0 e1                                      mov r0, r8
007d6480  01 20 82 12                                      addne r2, r2, #1
007d6484  00 20 83 15                                      strne r2, [r3]
007d6488  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
007d648c  00 20 a0 e3                                      mov r2, #0
007d6490  03 30 8f e0                                      add r3, pc, r3
007d6494  85 f9 ff eb                                      bl #0x7d4ab0
007d6498  06 00 a0 e1                                      mov r0, r6
007d649c  85 ef ed eb                                      bl #0x3522b8
007d64a0  68 30 9d e5                                      ldr r3, [sp, #0x68]
007d64a4  60 60 8d e2                                      add r6, sp, #0x60
007d64a8  06 10 a0 e1                                      mov r1, r6
007d64ac  00 00 53 e3                                      cmp r3, #0
007d64b0  60 30 8d e5                                      str r3, [sp, #0x60]
007d64b4  00 20 93 15                                      ldrne r2, [r3]
007d64b8  08 00 a0 e1                                      mov r0, r8
007d64bc  01 20 82 12                                      addne r2, r2, #1
007d64c0  00 20 83 15                                      strne r2, [r3]
007d64c4  74 31 9f e5                                      ldr r3, [pc, #0x174]
007d64c8  01 20 a0 e3                                      mov r2, #1
007d64cc  03 30 8f e0                                      add r3, pc, r3
007d64d0  76 f9 ff eb                                      bl #0x7d4ab0
007d64d4  06 00 a0 e1                                      mov r0, r6
007d64d8  76 ef ed eb                                      bl #0x3522b8
007d64dc  68 30 9d e5                                      ldr r3, [sp, #0x68]
007d64e0  5c 60 8d e2                                      add r6, sp, #0x5c
007d64e4  06 10 a0 e1                                      mov r1, r6
007d64e8  00 00 53 e3                                      cmp r3, #0
007d64ec  5c 30 8d e5                                      str r3, [sp, #0x5c]
007d64f0  00 20 93 15                                      ldrne r2, [r3]
007d64f4  08 00 a0 e1                                      mov r0, r8
007d64f8  01 20 82 12                                      addne r2, r2, #1
007d64fc  00 20 83 15                                      strne r2, [r3]
007d6500  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
007d6504  03 20 a0 e3                                      mov r2, #3
007d6508  03 30 8f e0                                      add r3, pc, r3
007d650c  67 f9 ff eb                                      bl #0x7d4ab0
007d6510  06 00 a0 e1                                      mov r0, r6
007d6514  67 ef ed eb                                      bl #0x3522b8
007d6518  68 30 9d e5                                      ldr r3, [sp, #0x68]
007d651c  58 60 8d e2                                      add r6, sp, #0x58
007d6520  06 10 a0 e1                                      mov r1, r6
007d6524  00 00 53 e3                                      cmp r3, #0
007d6528  58 30 8d e5                                      str r3, [sp, #0x58]
007d652c  00 20 93 15                                      ldrne r2, [r3]
007d6530  08 00 a0 e1                                      mov r0, r8
007d6534  01 20 82 12                                      addne r2, r2, #1
007d6538  00 20 83 15                                      strne r2, [r3]
007d653c  04 31 9f e5                                      ldr r3, [pc, #0x104]
007d6540  04 20 a0 e3                                      mov r2, #4
007d6544  03 30 8f e0                                      add r3, pc, r3
007d6548  58 f9 ff eb                                      bl #0x7d4ab0
007d654c  06 00 a0 e1                                      mov r0, r6
007d6550  58 ef ed eb                                      bl #0x3522b8
007d6554  68 30 9d e5                                      ldr r3, [sp, #0x68]
007d6558  54 60 8d e2                                      add r6, sp, #0x54
007d655c  06 10 a0 e1                                      mov r1, r6
007d6560  00 00 53 e3                                      cmp r3, #0
007d6564  54 30 8d e5                                      str r3, [sp, #0x54]
007d6568  00 20 93 15                                      ldrne r2, [r3]
007d656c  08 00 a0 e1                                      mov r0, r8
007d6570  01 20 82 12                                      addne r2, r2, #1
007d6574  00 20 83 15                                      strne r2, [r3]
007d6578  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
007d657c  0d 20 a0 e3                                      mov r2, #0xd
007d6580  03 30 8f e0                                      add r3, pc, r3
007d6584  49 f9 ff eb                                      bl #0x7d4ab0
007d6588  06 00 a0 e1                                      mov r0, r6
007d658c  49 ef ed eb                                      bl #0x3522b8
007d6590  68 30 9d e5                                      ldr r3, [sp, #0x68]
007d6594  50 60 8d e2                                      add r6, sp, #0x50
007d6598  06 10 a0 e1                                      mov r1, r6
007d659c  00 00 53 e3                                      cmp r3, #0
007d65a0  50 30 8d e5                                      str r3, [sp, #0x50]
007d65a4  00 20 93 15                                      ldrne r2, [r3]
007d65a8  08 00 a0 e1                                      mov r0, r8
007d65ac  01 20 82 12                                      addne r2, r2, #1
007d65b0  00 20 83 15                                      strne r2, [r3]
007d65b4  94 30 9f e5                                      ldr r3, [pc, #0x94]
007d65b8  0f 20 a0 e3                                      mov r2, #0xf
007d65bc  03 30 8f e0                                      add r3, pc, r3
007d65c0  3a f9 ff eb                                      bl #0x7d4ab0
007d65c4  06 00 a0 e1                                      mov r0, r6
007d65c8  3a ef ed eb                                      bl #0x3522b8
007d65cc  68 30 9d e5                                      ldr r3, [sp, #0x68]
007d65d0  4c 60 8d e2                                      add r6, sp, #0x4c
007d65d4  06 10 a0 e1                                      mov r1, r6
007d65d8  00 00 53 e3                                      cmp r3, #0
007d65dc  4c 30 8d e5                                      str r3, [sp, #0x4c]
007d65e0  00 20 93 15                                      ldrne r2, [r3]
007d65e4  08 00 a0 e1                                      mov r0, r8
007d65e8  01 20 82 12                                      addne r2, r2, #1
007d65ec  00 20 83 15                                      strne r2, [r3]
007d65f0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
007d65f4  10 20 a0 e3                                      mov r2, #0x10
007d65f8  03 30 8f e0                                      add r3, pc, r3
007d65fc  2b f9 ff eb                                      bl #0x7d4ab0
007d6600  06 00 a0 e1                                      mov r0, r6
007d6604  2b ef ed eb                                      bl #0x3522b8
007d6608  07 00 a0 e1                                      mov r0, r7
007d660c  29 ef ed eb                                      bl #0x3522b8
007d6610  05 00 a0 e1                                      mov r0, r5
007d6614  96 0b f9 eb                                      bl #0x619474
007d6618  04 00 a0 e1                                      mov r0, r4
007d661c  74 d0 8d e2                                      add sp, sp, #0x74
007d6620  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007d6624  8c e9 1b 00 0c 42 00 00 a4 7f 1c 00 10 47 00 00  .byte 0x8c, 0xe9, 0x1b, 0x00, 0x0c, 0x42, 0x00, 0x00, 0xa4, 0x7f, 0x1c, 0x00, 0x10, 0x47, 0x00, 0x00
007d6634  7c 5c 13 00 70 5c 13 00 30 a4 0e 00 f4 a3 0e 00  .byte 0x7c, 0x5c, 0x13, 0x00, 0x70, 0x5c, 0x13, 0x00, 0x30, 0xa4, 0x0e, 0x00, 0xf4, 0xa3, 0x0e, 0x00
007d6644  58 54 13 00 94 5b 13 00 60 5b 13 00 04 a3 0e 00  .byte 0x58, 0x54, 0x13, 0x00, 0x94, 0x5b, 0x13, 0x00, 0x60, 0x5b, 0x13, 0x00, 0x04, 0xa3, 0x0e, 0x00
007d6654  c8 a2 0e 00                                      .byte 0xc8, 0xa2, 0x0e, 0x00

; FUNCTION 0x007d6680, declared_size=188, range_size=188, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch10get_matrixERKN7gameswf6matrixE
; demangled: render_handler_glitch::get_matrix(gameswf::matrix const&)
; decoder-mode: arm
007d6680  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d6684  40 80 a0 e3                                      mov r8, #0x40
007d6688  44 d0 4d e2                                      sub sp, sp, #0x44
007d668c  00 50 a0 e1                                      mov r5, r0
007d6690  02 70 a0 e1                                      mov r7, r2
007d6694  00 10 a0 e3                                      mov r1, #0
007d6698  08 20 a0 e1                                      mov r2, r8
007d669c  0d 00 a0 e1                                      mov r0, sp
007d66a0  6e df ec eb                                      bl #0x30e460
007d66a4  14 b0 97 e5                                      ldr fp, [r7, #0x14]
007d66a8  00 c0 97 e5                                      ldr ip, [r7]
007d66ac  0c 30 97 e5                                      ldr r3, [r7, #0xc]
007d66b0  04 a0 97 e5                                      ldr sl, [r7, #4]
007d66b4  10 90 97 e5                                      ldr sb, [r7, #0x10]
007d66b8  08 e0 97 e5                                      ldr lr, [r7, #8]
007d66bc  00 70 a0 e3                                      mov r7, #0
007d66c0  40 70 c5 e5                                      strb r7, [r5, #0x40]
007d66c4  fe 65 a0 e3                                      mov r6, #0x3f800000
007d66c8  08 20 a0 e1                                      mov r2, r8
007d66cc  07 10 a0 e1                                      mov r1, r7
007d66d0  05 00 a0 e1                                      mov r0, r5
007d66d4  00 c0 8d e5                                      str ip, [sp]
007d66d8  04 30 8d e5                                      str r3, [sp, #4]
007d66dc  0d 40 a0 e1                                      mov r4, sp
007d66e0  10 a0 8d e5                                      str sl, [sp, #0x10]
007d66e4  14 90 8d e5                                      str sb, [sp, #0x14]
007d66e8  30 e0 8d e5                                      str lr, [sp, #0x30]
007d66ec  34 b0 8d e5                                      str fp, [sp, #0x34]
007d66f0  28 60 8d e5                                      str r6, [sp, #0x28]
007d66f4  3c 60 8d e5                                      str r6, [sp, #0x3c]
007d66f8  58 df ec eb                                      bl #0x30e460
007d66fc  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
007d6700  05 c0 a0 e1                                      mov ip, r5
007d6704  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007d6708  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
007d670c  3c 60 85 e5                                      str r6, [r5, #0x3c]
007d6710  40 70 c5 e5                                      strb r7, [r5, #0x40]
007d6714  28 60 85 e5                                      str r6, [r5, #0x28]
007d6718  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007d671c  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
007d6720  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007d6724  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
007d6728  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007d672c  40 70 c5 e5                                      strb r7, [r5, #0x40]
007d6730  05 00 a0 e1                                      mov r0, r5
007d6734  44 d0 8d e2                                      add sp, sp, #0x44
007d6738  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007d6a40, declared_size=8, range_size=8, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch22begin_display_callbackEv
; demangled: render_handler_glitch::begin_display_callback()
; decoder-mode: arm
007d6a40  1f 0e 80 e2                                      add r0, r0, #0x1f0
007d6a44  92 ff ff ea                                      b #0x7d6894

; FUNCTION 0x007d6afc, declared_size=88, range_size=88, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch5resetEv
; demangled: render_handler_glitch::reset()
; decoder-mode: arm
007d6afc  70 40 2d e9                                      push {r4, r5, r6, lr}
007d6b00  10 d0 4d e2                                      sub sp, sp, #0x10
007d6b04  04 40 8d e2                                      add r4, sp, #4
007d6b08  04 50 84 e2                                      add r5, r4, #4
007d6b0c  00 20 a0 e3                                      mov r2, #0
007d6b10  00 30 e0 e3                                      mvn r3, #0
007d6b14  05 10 a0 e1                                      mov r1, r5
007d6b18  00 60 a0 e1                                      mov r6, r0
007d6b1c  10 00 90 e5                                      ldr r0, [r0, #0x10]
007d6b20  08 20 8d e5                                      str r2, [sp, #8]
007d6b24  be 30 cd e1                                      strh r3, [sp, #0xe]
007d6b28  04 20 8d e5                                      str r2, [sp, #4]
007d6b2c  bc 30 cd e1                                      strh r3, [sp, #0xc]
007d6b30  f0 f8 ff eb                                      bl #0x7d4ef8
007d6b34  1f 0e 86 e2                                      add r0, r6, #0x1f0
007d6b38  d6 ff ff eb                                      bl #0x7d6a98
007d6b3c  05 00 a0 e1                                      mov r0, r5
007d6b40  28 e8 ec eb                                      bl #0x310be8
007d6b44  04 00 a0 e1                                      mov r0, r4
007d6b48  da ed ed eb                                      bl #0x3522b8
007d6b4c  10 d0 8d e2                                      add sp, sp, #0x10
007d6b50  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d6ddc, declared_size=8, range_size=8, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch5flushEv
; demangled: render_handler_glitch::flush()
; decoder-mode: arm
007d6ddc  1f 0e 80 e2                                      add r0, r0, #0x1f0
007d6de0  ab fe ff ea                                      b #0x7d6894

; FUNCTION 0x007d6de4, declared_size=188, range_size=188, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch11end_displayEv
; demangled: render_handler_glitch::end_display()
; decoder-mode: arm
007d6de4  10 40 2d e9                                      push {r4, lr}
007d6de8  00 40 a0 e1                                      mov r4, r0
007d6dec  1f 0e 80 e2                                      add r0, r0, #0x1f0
007d6df0  a7 fe ff eb                                      bl #0x7d6894
007d6df4  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d6df8  38 20 84 e2                                      add r2, r4, #0x38
007d6dfc  02 10 a0 e3                                      mov r1, #2
007d6e00  03 00 a0 e1                                      mov r0, r3
007d6e04  00 30 93 e5                                      ldr r3, [r3]
007d6e08  0f e0 a0 e1                                      mov lr, pc
007d6e0c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007d6e10  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d6e14  7c 20 84 e2                                      add r2, r4, #0x7c
007d6e18  00 10 a0 e3                                      mov r1, #0
007d6e1c  03 00 a0 e1                                      mov r0, r3
007d6e20  00 30 93 e5                                      ldr r3, [r3]
007d6e24  0f e0 a0 e1                                      mov lr, pc
007d6e28  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007d6e2c  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d6e30  c0 20 84 e2                                      add r2, r4, #0xc0
007d6e34  01 10 a0 e3                                      mov r1, #1
007d6e38  03 00 a0 e1                                      mov r0, r3
007d6e3c  00 30 93 e5                                      ldr r3, [r3]
007d6e40  0f e0 a0 e1                                      mov lr, pc
007d6e44  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007d6e48  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d6e4c  41 1f 84 e2                                      add r1, r4, #0x104
007d6e50  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
007d6e54  04 30 13 e5                                      ldr r3, [r3, #-4]
007d6e58  03 00 a0 e1                                      mov r0, r3
007d6e5c  00 30 93 e5                                      ldr r3, [r3]
007d6e60  0f e0 a0 e1                                      mov lr, pc
007d6e64  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007d6e68  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d6e6c  01 1c a0 e3                                      mov r1, #0x100
007d6e70  01 23 d4 e5                                      ldrb r2, [r4, #0x301]
007d6e74  03 00 a0 e1                                      mov r0, r3
007d6e78  00 30 93 e5                                      ldr r3, [r3]
007d6e7c  0f e0 a0 e1                                      mov lr, pc
007d6e80  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
007d6e84  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d6e88  14 10 84 e2                                      add r1, r4, #0x14
007d6e8c  03 00 a0 e1                                      mov r0, r3
007d6e90  00 30 93 e5                                      ldr r3, [r3]
007d6e94  0f e0 a0 e1                                      mov lr, pc
007d6e98  e4 f1 93 e5                                      ldr pc, [r3, #0x1e4]
007d6e9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007d71bc, declared_size=248, range_size=248, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch24render_mask_intersectionEv
; demangled: render_handler_glitch::render_mask_intersection()
; decoder-mode: arm
007d71bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d71c0  00 60 a0 e1                                      mov r6, r0
007d71c4  1f be 80 e2                                      add fp, r0, #0x1f0
007d71c8  0c d0 4d e2                                      sub sp, sp, #0xc
007d71cc  0b 00 a0 e1                                      mov r0, fp
007d71d0  e3 1f 86 e2                                      add r1, r6, #0x38c
007d71d4  1b fe ff eb                                      bl #0x7d6a48
007d71d8  44 83 96 e5                                      ldr r8, [r6, #0x344]
007d71dc  4c 33 96 e5                                      ldr r3, [r6, #0x34c]
007d71e0  06 00 a0 e1                                      mov r0, r6
007d71e4  01 80 48 e2                                      sub r8, r8, #1
007d71e8  08 82 83 e0                                      add r8, r3, r8, lsl #4
007d71ec  04 70 98 e5                                      ldr r7, [r8, #4]
007d71f0  01 1c a0 e3                                      mov r1, #0x100
007d71f4  51 f4 ff eb                                      bl #0x7d4340
007d71f8  00 00 57 e3                                      cmp r7, #0
007d71fc  28 00 00 da                                      ble #0x7d72a4
007d7200  de 3f 86 e2                                      add r3, r6, #0x378
007d7204  00 40 a0 e3                                      mov r4, #0
007d7208  04 30 8d e5                                      str r3, [sp, #4]
007d720c  18 a0 a0 e3                                      mov sl, #0x18
007d7210  04 30 a0 e1                                      mov r3, r4
007d7214  00 50 e0 e3                                      mvn r5, #0
007d7218  01 00 00 ea                                      b #0x7d7224
007d721c  07 00 54 e1                                      cmp r4, r7
007d7220  1f 00 00 0a                                      beq #0x7d72a4
007d7224  74 23 96 e5                                      ldr r2, [r6, #0x374]
007d7228  9a 23 22 e0                                      mla r2, sl, r3, r2
007d722c  01 30 83 e2                                      add r3, r3, #1
007d7230  0b 50 c2 e5                                      strb r5, [r2, #0xb]
007d7234  0a 50 c2 e5                                      strb r5, [r2, #0xa]
007d7238  09 50 c2 e5                                      strb r5, [r2, #9]
007d723c  08 50 c2 e5                                      strb r5, [r2, #8]
007d7240  00 10 98 e5                                      ldr r1, [r8]
007d7244  48 03 96 e5                                      ldr r0, [r6, #0x348]
007d7248  ff 00 53 e3                                      cmp r3, #0xff
007d724c  00 c0 a0 d3                                      movle ip, #0
007d7250  01 c0 a0 c3                                      movgt ip, #1
007d7254  84 91 81 e0                                      add sb, r1, r4, lsl #3
007d7258  04 90 99 e5                                      ldr sb, [sb, #4]
007d725c  84 11 91 e7                                      ldr r1, [r1, r4, lsl #3]
007d7260  07 00 53 e1                                      cmp r3, r7
007d7264  01 c0 8c 03                                      orreq ip, ip, #1
007d7268  00 00 5c e3                                      cmp ip, #0
007d726c  01 40 84 e2                                      add r4, r4, #1
007d7270  14 00 82 e5                                      str r0, [r2, #0x14]
007d7274  0c 10 82 e5                                      str r1, [r2, #0xc]
007d7278  10 90 82 e5                                      str sb, [r2, #0x10]
007d727c  e6 ff ff 0a                                      beq #0x7d721c
007d7280  78 23 96 e5                                      ldr r2, [r6, #0x378]
007d7284  04 10 9d e5                                      ldr r1, [sp, #4]
007d7288  0b 00 a0 e1                                      mov r0, fp
007d728c  08 30 82 e5                                      str r3, [r2, #8]
007d7290  06 20 a0 e3                                      mov r2, #6
007d7294  01 ff ff eb                                      bl #0x7d6ea0
007d7298  07 00 54 e1                                      cmp r4, r7
007d729c  00 30 a0 e3                                      mov r3, #0
007d72a0  df ff ff 1a                                      bne #0x7d7224
007d72a4  0b 00 a0 e1                                      mov r0, fp
007d72a8  0c d0 8d e2                                      add sp, sp, #0xc
007d72ac  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d72b0  77 fd ff ea                                      b #0x7d6894

; FUNCTION 0x007d73d0, declared_size=992, range_size=992, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch13begin_displayEN7gameswf4rgbaEiiiiffff
; demangled: render_handler_glitch::begin_display(gameswf::rgba, int, int, int, int, float, float, float, float)
; decoder-mode: arm
007d73d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d73d4  ac d0 4d e2                                      sub sp, sp, #0xac
007d73d8  00 40 a0 e1                                      mov r4, r0
007d73dc  0c 10 8d e5                                      str r1, [sp, #0xc]
007d73e0  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
007d73e4  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
007d73e8  03 50 a0 e1                                      mov r5, r3
007d73ec  02 60 a0 e1                                      mov r6, r2
007d73f0  ed db ec eb                                      bl #0x30e3ac
007d73f4  02 31 c0 e3                                      bic r3, r0, #0x80000000
007d73f8  04 33 84 e5                                      str r3, [r4, #0x304]
007d73fc  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
007d7400  00 80 a0 e1                                      mov r8, r0
007d7404  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
007d7408  e7 db ec eb                                      bl #0x30e3ac
007d740c  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d7410  02 21 c0 e3                                      bic r2, r0, #0x80000000
007d7414  08 23 84 e5                                      str r2, [r4, #0x308]
007d7418  02 10 a0 e3                                      mov r1, #2
007d741c  00 a0 a0 e1                                      mov sl, r0
007d7420  03 00 a0 e1                                      mov r0, r3
007d7424  00 30 93 e5                                      ldr r3, [r3]
007d7428  0f e0 a0 e1                                      mov lr, pc
007d742c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
007d7430  41 20 a0 e3                                      mov r2, #0x41
007d7434  00 10 a0 e1                                      mov r1, r0
007d7438  38 00 84 e2                                      add r0, r4, #0x38
007d743c  09 dd ec eb                                      bl #0x30e868
007d7440  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d7444  00 10 a0 e3                                      mov r1, #0
007d7448  58 73 9f e5                                      ldr r7, [pc, #0x358]
007d744c  03 00 a0 e1                                      mov r0, r3
007d7450  00 30 93 e5                                      ldr r3, [r3]
007d7454  0f e0 a0 e1                                      mov lr, pc
007d7458  70 f0 93 e5                                      ldr pc, [r3, #0x70]
007d745c  41 20 a0 e3                                      mov r2, #0x41
007d7460  00 10 a0 e1                                      mov r1, r0
007d7464  7c 00 84 e2                                      add r0, r4, #0x7c
007d7468  fe dc ec eb                                      bl #0x30e868
007d746c  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d7470  01 10 a0 e3                                      mov r1, #1
007d7474  07 70 8f e0                                      add r7, pc, r7
007d7478  03 00 a0 e1                                      mov r0, r3
007d747c  00 30 93 e5                                      ldr r3, [r3]
007d7480  0f e0 a0 e1                                      mov lr, pc
007d7484  70 f0 93 e5                                      ldr pc, [r3, #0x70]
007d7488  00 10 a0 e1                                      mov r1, r0
007d748c  41 20 a0 e3                                      mov r2, #0x41
007d7490  c0 00 84 e2                                      add r0, r4, #0xc0
007d7494  f3 dc ec eb                                      bl #0x30e868
007d7498  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d749c  14 10 84 e2                                      add r1, r4, #0x14
007d74a0  cc 20 93 e5                                      ldr r2, [r3, #0xcc]
007d74a4  03 00 a0 e1                                      mov r0, r3
007d74a8  04 20 12 e5                                      ldr r2, [r2, #-4]
007d74ac  14 c0 92 e5                                      ldr ip, [r2, #0x14]
007d74b0  04 c1 84 e5                                      str ip, [r4, #0x104]
007d74b4  18 c0 92 e5                                      ldr ip, [r2, #0x18]
007d74b8  08 c1 84 e5                                      str ip, [r4, #0x108]
007d74bc  1c c0 92 e5                                      ldr ip, [r2, #0x1c]
007d74c0  0c c1 84 e5                                      str ip, [r4, #0x10c]
007d74c4  20 20 92 e5                                      ldr r2, [r2, #0x20]
007d74c8  10 21 84 e5                                      str r2, [r4, #0x110]
007d74cc  88 20 93 e5                                      ldr r2, [r3, #0x88]
007d74d0  52 24 e0 e7                                      ubfx r2, r2, #8, #1
007d74d4  01 23 c4 e5                                      strb r2, [r4, #0x301]
007d74d8  00 30 93 e5                                      ldr r3, [r3]
007d74dc  0f e0 a0 e1                                      mov lr, pc
007d74e0  e0 f1 93 e5                                      ldr pc, [r3, #0x1e0]
007d74e4  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
007d74e8  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
007d74ec  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d74f0  06 10 81 e0                                      add r1, r1, r6
007d74f4  05 20 82 e0                                      add r2, r2, r5
007d74f8  a4 20 8d e5                                      str r2, [sp, #0xa4]
007d74fc  9c 50 8d e5                                      str r5, [sp, #0x9c]
007d7500  a0 10 8d e5                                      str r1, [sp, #0xa0]
007d7504  98 60 8d e5                                      str r6, [sp, #0x98]
007d7508  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
007d750c  98 10 8d e2                                      add r1, sp, #0x98
007d7510  00 50 a0 e3                                      mov r5, #0
007d7514  04 30 13 e5                                      ldr r3, [r3, #-4]
007d7518  03 00 a0 e1                                      mov r0, r3
007d751c  00 30 93 e5                                      ldr r3, [r3]
007d7520  0f e0 a0 e1                                      mov lr, pc
007d7524  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007d7528  1f 0e 84 e2                                      add r0, r4, #0x1f0
007d752c  60 ff ff eb                                      bl #0x7d72b4
007d7530  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d7534  01 1c a0 e3                                      mov r1, #0x100
007d7538  00 20 a0 e3                                      mov r2, #0
007d753c  03 00 a0 e1                                      mov r0, r3
007d7540  00 30 93 e5                                      ldr r3, [r3]
007d7544  0f e0 a0 e1                                      mov lr, pc
007d7548  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
007d754c  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d7550  02 10 a0 e3                                      mov r1, #2
007d7554  03 00 a0 e1                                      mov r0, r3
007d7558  00 30 93 e5                                      ldr r3, [r3]
007d755c  0f e0 a0 e1                                      mov lr, pc
007d7560  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
007d7564  50 33 94 e5                                      ldr r3, [r4, #0x350]
007d7568  00 00 a0 e3                                      mov r0, #0
007d756c  44 53 84 e5                                      str r5, [r4, #0x344]
007d7570  05 00 53 e1                                      cmp r3, r5
007d7574  48 03 84 e5                                      str r0, [r4, #0x348]
007d7578  19 00 00 da                                      ble #0x7d75e4
007d757c  05 60 a0 e1                                      mov r6, r5
007d7580  04 00 00 ea                                      b #0x7d7598
007d7584  04 60 8e e5                                      str r6, [lr, #4]
007d7588  50 33 94 e5                                      ldr r3, [r4, #0x350]
007d758c  01 50 85 e2                                      add r5, r5, #1
007d7590  03 00 55 e1                                      cmp r5, r3
007d7594  12 00 00 aa                                      bge #0x7d75e4
007d7598  4c e3 94 e5                                      ldr lr, [r4, #0x34c]
007d759c  05 e2 8e e0                                      add lr, lr, r5, lsl #4
007d75a0  04 20 9e e5                                      ldr r2, [lr, #4]
007d75a4  00 00 52 e3                                      cmp r2, #0
007d75a8  f5 ff ff ca                                      bgt #0x7d7584
007d75ac  f4 ff ff aa                                      bge #0x7d7584
007d75b0  82 31 a0 e1                                      lsl r3, r2, #3
007d75b4  00 10 9e e5                                      ldr r1, [lr]
007d75b8  01 20 92 e2                                      adds r2, r2, #1
007d75bc  03 c0 81 e0                                      add ip, r1, r3
007d75c0  03 00 81 e7                                      str r0, [r1, r3]
007d75c4  04 00 8c e5                                      str r0, [ip, #4]
007d75c8  08 30 83 e2                                      add r3, r3, #8
007d75cc  f8 ff ff 1a                                      bne #0x7d75b4
007d75d0  04 60 8e e5                                      str r6, [lr, #4]
007d75d4  50 33 94 e5                                      ldr r3, [r4, #0x350]
007d75d8  01 50 85 e2                                      add r5, r5, #1
007d75dc  03 00 55 e1                                      cmp r5, r3
007d75e0  ec ff ff ba                                      blt #0x7d7598
007d75e4  45 9f 84 e2                                      add sb, r4, #0x114
007d75e8  bf c4 a0 e3                                      mov ip, #0xbf000000
007d75ec  00 60 a0 e3                                      mov r6, #0
007d75f0  02 c5 8c e2                                      add ip, ip, #0x800000
007d75f4  00 50 a0 e3                                      mov r5, #0
007d75f8  fe b5 a0 e3                                      mov fp, #0x3f800000
007d75fc  3f 34 a0 e3                                      mov r3, #0x3f000000
007d7600  14 10 8d e2                                      add r1, sp, #0x14
007d7604  41 20 a0 e3                                      mov r2, #0x41
007d7608  09 00 a0 e1                                      mov r0, sb
007d760c  28 c0 8d e5                                      str ip, [sp, #0x28]
007d7610  04 c0 8d e5                                      str ip, [sp, #4]
007d7614  4c 30 8d e5                                      str r3, [sp, #0x4c]
007d7618  18 60 8d e5                                      str r6, [sp, #0x18]
007d761c  1c 60 8d e5                                      str r6, [sp, #0x1c]
007d7620  20 60 8d e5                                      str r6, [sp, #0x20]
007d7624  24 60 8d e5                                      str r6, [sp, #0x24]
007d7628  2c 60 8d e5                                      str r6, [sp, #0x2c]
007d762c  30 60 8d e5                                      str r6, [sp, #0x30]
007d7630  34 60 8d e5                                      str r6, [sp, #0x34]
007d7634  38 60 8d e5                                      str r6, [sp, #0x38]
007d7638  3c 30 8d e5                                      str r3, [sp, #0x3c]
007d763c  40 60 8d e5                                      str r6, [sp, #0x40]
007d7640  44 60 8d e5                                      str r6, [sp, #0x44]
007d7644  48 60 8d e5                                      str r6, [sp, #0x48]
007d7648  54 50 cd e5                                      strb r5, [sp, #0x54]
007d764c  14 b0 8d e5                                      str fp, [sp, #0x14]
007d7650  50 b0 8d e5                                      str fp, [sp, #0x50]
007d7654  83 dc ec eb                                      bl #0x30e868
007d7658  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d765c  09 20 a0 e1                                      mov r2, sb
007d7660  02 10 a0 e3                                      mov r1, #2
007d7664  03 00 a0 e1                                      mov r0, r3
007d7668  00 30 93 e5                                      ldr r3, [r3]
007d766c  0f e0 a0 e1                                      mov lr, pc
007d7670  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007d7674  30 31 9f e5                                      ldr r3, [pc, #0x130]
007d7678  56 9f 84 e2                                      add sb, r4, #0x158
007d767c  67 1f 84 e2                                      add r1, r4, #0x19c
007d7680  03 70 97 e7                                      ldr r7, [r7, r3]
007d7684  41 20 a0 e3                                      mov r2, #0x41
007d7688  08 10 8d e5                                      str r1, [sp, #8]
007d768c  09 00 a0 e1                                      mov r0, sb
007d7690  07 10 a0 e1                                      mov r1, r7
007d7694  73 dc ec eb                                      bl #0x30e868
007d7698  08 10 a0 e1                                      mov r1, r8
007d769c  01 01 a0 e3                                      mov r0, #0x40000000
007d76a0  7b dd ec eb                                      bl #0x30ec94
007d76a4  0a 10 a0 e1                                      mov r1, sl
007d76a8  58 00 8d e5                                      str r0, [sp, #0x58]
007d76ac  01 01 a0 e3                                      mov r0, #0x40000000
007d76b0  5c 60 8d e5                                      str r6, [sp, #0x5c]
007d76b4  60 60 8d e5                                      str r6, [sp, #0x60]
007d76b8  64 60 8d e5                                      str r6, [sp, #0x64]
007d76bc  68 60 8d e5                                      str r6, [sp, #0x68]
007d76c0  73 dd ec eb                                      bl #0x30ec94
007d76c4  04 c0 9d e5                                      ldr ip, [sp, #4]
007d76c8  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
007d76cc  6c 00 8d e5                                      str r0, [sp, #0x6c]
007d76d0  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
007d76d4  80 c0 8d e5                                      str ip, [sp, #0x80]
007d76d8  84 60 8d e5                                      str r6, [sp, #0x84]
007d76dc  70 60 8d e5                                      str r6, [sp, #0x70]
007d76e0  74 60 8d e5                                      str r6, [sp, #0x74]
007d76e4  78 60 8d e5                                      str r6, [sp, #0x78]
007d76e8  7c 60 8d e5                                      str r6, [sp, #0x7c]
007d76ec  2c dd ec eb                                      bl #0x30eba4
007d76f0  08 10 a0 e1                                      mov r1, r8
007d76f4  02 01 80 e2                                      add r0, r0, #0x80000000
007d76f8  65 dd ec eb                                      bl #0x30ec94
007d76fc  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
007d7700  88 00 8d e5                                      str r0, [sp, #0x88]
007d7704  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
007d7708  25 dd ec eb                                      bl #0x30eba4
007d770c  0a 10 a0 e1                                      mov r1, sl
007d7710  02 01 80 e2                                      add r0, r0, #0x80000000
007d7714  5e dd ec eb                                      bl #0x30ec94
007d7718  58 e0 8d e2                                      add lr, sp, #0x58
007d771c  8c 00 8d e5                                      str r0, [sp, #0x8c]
007d7720  09 c0 a0 e1                                      mov ip, sb
007d7724  98 51 c4 e5                                      strb r5, [r4, #0x198]
007d7728  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007d772c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007d7730  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007d7734  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007d7738  02 61 a0 e3                                      mov r6, #0x80000000
007d773c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007d7740  94 b0 8d e5                                      str fp, [sp, #0x94]
007d7744  90 60 8d e5                                      str r6, [sp, #0x90]
007d7748  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007d774c  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
007d7750  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007d7754  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d7758  98 51 c4 e5                                      strb r5, [r4, #0x198]
007d775c  05 10 a0 e1                                      mov r1, r5
007d7760  03 00 a0 e1                                      mov r0, r3
007d7764  09 20 a0 e1                                      mov r2, sb
007d7768  00 30 93 e5                                      ldr r3, [r3]
007d776c  0f e0 a0 e1                                      mov lr, pc
007d7770  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007d7774  07 10 a0 e1                                      mov r1, r7
007d7778  41 20 a0 e3                                      mov r2, #0x41
007d777c  08 00 9d e5                                      ldr r0, [sp, #8]
007d7780  38 dc ec eb                                      bl #0x30e868
007d7784  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d7788  08 20 9d e5                                      ldr r2, [sp, #8]
007d778c  01 10 a0 e3                                      mov r1, #1
007d7790  03 00 a0 e1                                      mov r0, r3
007d7794  00 30 93 e5                                      ldr r3, [r3]
007d7798  0f e0 a0 e1                                      mov lr, pc
007d779c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007d77a0  ac d0 8d e2                                      add sp, sp, #0xac
007d77a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007d77a8  1c d6 1b 00 30 28 00 00                          .byte 0x1c, 0xd6, 0x1b, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x007d77b0, declared_size=988, range_size=988, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch15draw_line_stripEPKvi
; demangled: render_handler_glitch::draw_line_strip(void const*, int)
; decoder-mode: arm
007d77b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d77b4  00 40 a0 e1                                      mov r4, r0
007d77b8  84 d0 4d e2                                      sub sp, sp, #0x84
007d77bc  1f 0e 80 e2                                      add r0, r0, #0x1f0
007d77c0  1c 20 8d e5                                      str r2, [sp, #0x1c]
007d77c4  01 a0 a0 e1                                      mov sl, r1
007d77c8  31 fc ff eb                                      bl #0x7d6894
007d77cc  0c 03 94 e5                                      ldr r0, [r4, #0x30c]
007d77d0  10 63 94 e5                                      ldr r6, [r4, #0x310]
007d77d4  00 10 a0 e1                                      mov r1, r0
007d77d8  63 dd ec eb                                      bl #0x30ed6c
007d77dc  06 10 a0 e1                                      mov r1, r6
007d77e0  00 50 a0 e1                                      mov r5, r0
007d77e4  06 00 a0 e1                                      mov r0, r6
007d77e8  5f dd ec eb                                      bl #0x30ed6c
007d77ec  00 10 a0 e1                                      mov r1, r0
007d77f0  05 00 a0 e1                                      mov r0, r5
007d77f4  ea dc ec eb                                      bl #0x30eba4
007d77f8  49 da ec eb                                      bl #0x30e124
007d77fc  1c 73 94 e5                                      ldr r7, [r4, #0x31c]
007d7800  00 50 a0 e1                                      mov r5, r0
007d7804  0c 13 94 e5                                      ldr r1, [r4, #0x30c]
007d7808  07 00 a0 e1                                      mov r0, r7
007d780c  56 dd ec eb                                      bl #0x30ed6c
007d7810  18 63 94 e5                                      ldr r6, [r4, #0x318]
007d7814  10 13 94 e5                                      ldr r1, [r4, #0x310]
007d7818  00 80 a0 e1                                      mov r8, r0
007d781c  06 00 a0 e1                                      mov r0, r6
007d7820  51 dd ec eb                                      bl #0x30ed6c
007d7824  00 10 a0 e1                                      mov r1, r0
007d7828  08 00 a0 e1                                      mov r0, r8
007d782c  de da ec eb                                      bl #0x30e3ac
007d7830  00 10 a0 e3                                      mov r1, #0
007d7834  b4 db ec eb                                      bl #0x30e70c
007d7838  07 10 a0 e1                                      mov r1, r7
007d783c  00 00 50 e3                                      cmp r0, #0
007d7840  07 00 a0 e1                                      mov r0, r7
007d7844  02 51 85 12                                      addne r5, r5, #0x80000000
007d7848  47 dd ec eb                                      bl #0x30ed6c
007d784c  06 10 a0 e1                                      mov r1, r6
007d7850  00 70 a0 e1                                      mov r7, r0
007d7854  06 00 a0 e1                                      mov r0, r6
007d7858  43 dd ec eb                                      bl #0x30ed6c
007d785c  00 10 a0 e1                                      mov r1, r0
007d7860  07 00 a0 e1                                      mov r0, r7
007d7864  ce dc ec eb                                      bl #0x30eba4
007d7868  2d da ec eb                                      bl #0x30e124
007d786c  02 51 c5 e3                                      bic r5, r5, #0x80000000
007d7870  02 11 c0 e3                                      bic r1, r0, #0x80000000
007d7874  05 00 a0 e1                                      mov r0, r5
007d7878  c9 dc ec eb                                      bl #0x30eba4
007d787c  90 14 94 e5                                      ldr r1, [r4, #0x490]
007d7880  39 dd ec eb                                      bl #0x30ed6c
007d7884  3f 14 a0 e3                                      mov r1, #0x3f000000
007d7888  37 dd ec eb                                      bl #0x30ed6c
007d788c  41 14 a0 e3                                      mov r1, #0x41000000
007d7890  0a 16 81 e2                                      add r1, r1, #0xa00000
007d7894  fe dc ec eb                                      bl #0x30ec94
007d7898  fc 32 94 e5                                      ldr r3, [r4, #0x2fc]
007d789c  0c 50 a0 e3                                      mov r5, #0xc
007d78a0  fe 15 a0 e3                                      mov r1, #0x3f800000
007d78a4  95 03 05 e0                                      mul r5, r5, r3
007d78a8  00 60 a0 e1                                      mov r6, r0
007d78ac  05 30 84 e0                                      add r3, r4, r5
007d78b0  30 32 93 e5                                      ldr r3, [r3, #0x230]
007d78b4  00 00 53 e3                                      cmp r3, #0
007d78b8  05 50 84 10                                      addne r5, r4, r5
007d78bc  8b 5f 84 02                                      addeq r5, r4, #0x22c
007d78c0  8b 5f 85 12                                      addne r5, r5, #0x22c
007d78c4  38 dc ec eb                                      bl #0x30e9ac
007d78c8  00 00 50 e3                                      cmp r0, #0
007d78cc  04 00 95 e5                                      ldr r0, [r5, #4]
007d78d0  fe 65 a0 13                                      movne r6, #0x3f800000
007d78d4  16 b9 f7 eb                                      bl #0x5c5d34
007d78d8  04 30 95 e5                                      ldr r3, [r5, #4]
007d78dc  0c 20 a0 e3                                      mov r2, #0xc
007d78e0  04 30 93 e5                                      ldr r3, [r3, #4]
007d78e4  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d78e8  92 30 23 e0                                      mla r3, r2, r0, r3
007d78ec  06 00 a0 e1                                      mov r0, r6
007d78f0  08 70 93 e5                                      ldr r7, [r3, #8]
007d78f4  0c 10 97 e5                                      ldr r1, [r7, #0xc]
007d78f8  0c 60 87 e5                                      str r6, [r7, #0xc]
007d78fc  a2 d9 ec eb                                      bl #0x30df8c
007d7900  00 00 50 e3                                      cmp r0, #0
007d7904  01 30 a0 03                                      moveq r3, #1
007d7908  30 30 c7 05                                      strbeq r3, [r7, #0x30]
007d790c  00 20 a0 e3                                      mov r2, #0
007d7910  e3 3f 84 e2                                      add r3, r4, #0x38c
007d7914  b8 10 d5 e1                                      ldrh r1, [r5, #8]
007d7918  04 00 95 e5                                      ldr r0, [r5, #4]
007d791c  80 d6 f7 eb                                      bl #0x5cd324
007d7920  04 10 85 e2                                      add r1, r5, #4
007d7924  10 00 94 e5                                      ldr r0, [r4, #0x10]
007d7928  72 f5 ff eb                                      bl #0x7d4ef8
007d792c  4f 24 d4 e5                                      ldrb r2, [r4, #0x44f]
007d7930  04 00 a0 e1                                      mov r0, r4
007d7934  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007d7938  18 20 8d e5                                      str r2, [sp, #0x18]
007d793c  4c 34 d4 e5                                      ldrb r3, [r4, #0x44c]
007d7940  14 30 8d e5                                      str r3, [sp, #0x14]
007d7944  4d c4 d4 e5                                      ldrb ip, [r4, #0x44d]
007d7948  10 c0 8d e5                                      str ip, [sp, #0x10]
007d794c  4e 24 d4 e5                                      ldrb r2, [r4, #0x44e]
007d7950  0c 20 8d e5                                      str r2, [sp, #0xc]
007d7954  79 f2 ff eb                                      bl #0x7d4340
007d7958  20 00 8d e2                                      add r0, sp, #0x20
007d795c  04 10 a0 e1                                      mov r1, r4
007d7960  c3 2f 84 e2                                      add r2, r4, #0x30c
007d7964  45 fb ff eb                                      bl #0x7d6680
007d7968  74 53 94 e5                                      ldr r5, [r4, #0x374]
007d796c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
007d7970  18 30 a0 e3                                      mov r3, #0x18
007d7974  93 5c 23 e0                                      mla r3, r3, ip, r5
007d7978  03 00 55 e1                                      cmp r5, r3
007d797c  04 30 8d e5                                      str r3, [sp, #4]
007d7980  56 00 00 0a                                      beq #0x7d7ae0
007d7984  00 90 a0 e3                                      mov sb, #0
007d7988  08 40 8d e5                                      str r4, [sp, #8]
007d798c  08 20 9d e5                                      ldr r2, [sp, #8]
007d7990  00 70 9a e5                                      ldr r7, [sl]
007d7994  04 60 9a e5                                      ldr r6, [sl, #4]
007d7998  48 43 92 e5                                      ldr r4, [r2, #0x348]
007d799c  0c 70 85 e5                                      str r7, [r5, #0xc]
007d79a0  10 60 85 e5                                      str r6, [r5, #0x10]
007d79a4  14 40 85 e5                                      str r4, [r5, #0x14]
007d79a8  24 10 9d e5                                      ldr r1, [sp, #0x24]
007d79ac  07 00 a0 e1                                      mov r0, r7
007d79b0  ed dc ec eb                                      bl #0x30ed6c
007d79b4  34 10 9d e5                                      ldr r1, [sp, #0x34]
007d79b8  00 80 a0 e1                                      mov r8, r0
007d79bc  06 00 a0 e1                                      mov r0, r6
007d79c0  e9 dc ec eb                                      bl #0x30ed6c
007d79c4  00 10 a0 e1                                      mov r1, r0
007d79c8  08 00 a0 e1                                      mov r0, r8
007d79cc  74 dc ec eb                                      bl #0x30eba4
007d79d0  44 10 9d e5                                      ldr r1, [sp, #0x44]
007d79d4  00 80 a0 e1                                      mov r8, r0
007d79d8  04 00 a0 e1                                      mov r0, r4
007d79dc  e2 dc ec eb                                      bl #0x30ed6c
007d79e0  00 10 a0 e1                                      mov r1, r0
007d79e4  08 00 a0 e1                                      mov r0, r8
007d79e8  6d dc ec eb                                      bl #0x30eba4
007d79ec  54 10 9d e5                                      ldr r1, [sp, #0x54]
007d79f0  6b dc ec eb                                      bl #0x30eba4
007d79f4  28 10 9d e5                                      ldr r1, [sp, #0x28]
007d79f8  00 b0 a0 e1                                      mov fp, r0
007d79fc  07 00 a0 e1                                      mov r0, r7
007d7a00  d9 dc ec eb                                      bl #0x30ed6c
007d7a04  38 10 9d e5                                      ldr r1, [sp, #0x38]
007d7a08  00 80 a0 e1                                      mov r8, r0
007d7a0c  06 00 a0 e1                                      mov r0, r6
007d7a10  d5 dc ec eb                                      bl #0x30ed6c
007d7a14  00 10 a0 e1                                      mov r1, r0
007d7a18  08 00 a0 e1                                      mov r0, r8
007d7a1c  60 dc ec eb                                      bl #0x30eba4
007d7a20  48 10 9d e5                                      ldr r1, [sp, #0x48]
007d7a24  00 80 a0 e1                                      mov r8, r0
007d7a28  04 00 a0 e1                                      mov r0, r4
007d7a2c  ce dc ec eb                                      bl #0x30ed6c
007d7a30  00 10 a0 e1                                      mov r1, r0
007d7a34  08 00 a0 e1                                      mov r0, r8
007d7a38  59 dc ec eb                                      bl #0x30eba4
007d7a3c  58 10 9d e5                                      ldr r1, [sp, #0x58]
007d7a40  57 dc ec eb                                      bl #0x30eba4
007d7a44  20 10 9d e5                                      ldr r1, [sp, #0x20]
007d7a48  00 80 a0 e1                                      mov r8, r0
007d7a4c  07 00 a0 e1                                      mov r0, r7
007d7a50  c5 dc ec eb                                      bl #0x30ed6c
007d7a54  30 10 9d e5                                      ldr r1, [sp, #0x30]
007d7a58  00 70 a0 e1                                      mov r7, r0
007d7a5c  06 00 a0 e1                                      mov r0, r6
007d7a60  c1 dc ec eb                                      bl #0x30ed6c
007d7a64  00 10 a0 e1                                      mov r1, r0
007d7a68  07 00 a0 e1                                      mov r0, r7
007d7a6c  4c dc ec eb                                      bl #0x30eba4
007d7a70  40 10 9d e5                                      ldr r1, [sp, #0x40]
007d7a74  00 60 a0 e1                                      mov r6, r0
007d7a78  04 00 a0 e1                                      mov r0, r4
007d7a7c  ba dc ec eb                                      bl #0x30ed6c
007d7a80  00 10 a0 e1                                      mov r1, r0
007d7a84  06 00 a0 e1                                      mov r0, r6
007d7a88  45 dc ec eb                                      bl #0x30eba4
007d7a8c  50 10 9d e5                                      ldr r1, [sp, #0x50]
007d7a90  43 dc ec eb                                      bl #0x30eba4
007d7a94  0c 00 85 e5                                      str r0, [r5, #0xc]
007d7a98  10 b0 85 e5                                      str fp, [r5, #0x10]
007d7a9c  14 80 85 e5                                      str r8, [r5, #0x14]
007d7aa0  18 30 9d e5                                      ldr r3, [sp, #0x18]
007d7aa4  08 a0 8a e2                                      add sl, sl, #8
007d7aa8  0b 30 c5 e5                                      strb r3, [r5, #0xb]
007d7aac  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007d7ab0  0a c0 c5 e5                                      strb ip, [r5, #0xa]
007d7ab4  10 20 9d e5                                      ldr r2, [sp, #0x10]
007d7ab8  09 20 c5 e5                                      strb r2, [r5, #9]
007d7abc  14 30 9d e5                                      ldr r3, [sp, #0x14]
007d7ac0  00 90 85 e5                                      str sb, [r5]
007d7ac4  04 90 85 e5                                      str sb, [r5, #4]
007d7ac8  08 30 c5 e5                                      strb r3, [r5, #8]
007d7acc  04 c0 9d e5                                      ldr ip, [sp, #4]
007d7ad0  18 50 85 e2                                      add r5, r5, #0x18
007d7ad4  05 00 5c e1                                      cmp ip, r5
007d7ad8  ab ff ff 1a                                      bne #0x7d798c
007d7adc  08 40 9d e5                                      ldr r4, [sp, #8]
007d7ae0  78 33 94 e5                                      ldr r3, [r4, #0x378]
007d7ae4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007d7ae8  7c 10 8d e2                                      add r1, sp, #0x7c
007d7aec  08 20 83 e5                                      str r2, [r3, #8]
007d7af0  78 33 94 e5                                      ldr r3, [r4, #0x378]
007d7af4  10 00 94 e5                                      ldr r0, [r4, #0x10]
007d7af8  00 00 53 e3                                      cmp r3, #0
007d7afc  7c 30 8d e5                                      str r3, [sp, #0x7c]
007d7b00  00 20 93 15                                      ldrne r2, [r3]
007d7b04  01 20 82 12                                      addne r2, r2, #1
007d7b08  00 20 83 15                                      strne r2, [r3]
007d7b0c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
007d7b10  00 30 a0 e3                                      mov r3, #0
007d7b14  70 30 8d e5                                      str r3, [sp, #0x70]
007d7b18  74 c0 8d e5                                      str ip, [sp, #0x74]
007d7b1c  64 30 8d e5                                      str r3, [sp, #0x64]
007d7b20  68 30 8d e5                                      str r3, [sp, #0x68]
007d7b24  6c c0 8d e5                                      str ip, [sp, #0x6c]
007d7b28  ff 30 a0 e3                                      mov r3, #0xff
007d7b2c  01 c0 a0 e3                                      mov ip, #1
007d7b30  64 20 8d e2                                      add r2, sp, #0x64
007d7b34  b8 37 cd e1                                      strh r3, [sp, #0x78]
007d7b38  ba c7 cd e1                                      strh ip, [sp, #0x7a]
007d7b3c  de f4 ff eb                                      bl #0x7d4ebc
007d7b40  64 00 9d e5                                      ldr r0, [sp, #0x64]
007d7b44  00 00 50 e3                                      cmp r0, #0
007d7b48  00 00 00 0a                                      beq #0x7d7b50
007d7b4c  8c 16 ed eb                                      bl #0x31d584
007d7b50  7c 40 9d e5                                      ldr r4, [sp, #0x7c]
007d7b54  00 00 54 e3                                      cmp r4, #0
007d7b58  04 00 00 0a                                      beq #0x7d7b70
007d7b5c  00 30 94 e5                                      ldr r3, [r4]
007d7b60  01 30 43 e2                                      sub r3, r3, #1
007d7b64  00 00 53 e3                                      cmp r3, #0
007d7b68  00 30 84 e5                                      str r3, [r4]
007d7b6c  01 00 00 0a                                      beq #0x7d7b78
007d7b70  84 d0 8d e2                                      add sp, sp, #0x84
007d7b74  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d7b78  04 00 a0 e1                                      mov r0, r4
007d7b7c  a6 23 f7 eb                                      bl #0x5a0a1c
007d7b80  04 00 a0 e1                                      mov r0, r4
007d7b84  c9 d9 ec eb                                      bl #0x30e2b0
007d7b88  f8 ff ff ea                                      b #0x7d7b70

; FUNCTION 0x007d7cf4, declared_size=536, range_size=536, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitchD1Ev
; demangled: render_handler_glitch::~render_handler_glitch()
; decoder-mode: arm
007d7cf4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007d7cf8  04 32 9f e5                                      ldr r3, [pc, #0x204]
007d7cfc  04 22 9f e5                                      ldr r2, [pc, #0x204]
007d7d00  78 43 90 e5                                      ldr r4, [r0, #0x378]
007d7d04  03 30 8f e0                                      add r3, pc, r3
007d7d08  02 20 93 e7                                      ldr r2, [r3, r2]
007d7d0c  00 10 a0 e3                                      mov r1, #0
007d7d10  01 00 54 e1                                      cmp r4, r1
007d7d14  08 20 82 e2                                      add r2, r2, #8
007d7d18  00 a0 a0 e1                                      mov sl, r0
007d7d1c  00 20 80 e5                                      str r2, [r0]
007d7d20  78 13 80 e5                                      str r1, [r0, #0x378]
007d7d24  74 13 80 e5                                      str r1, [r0, #0x374]
007d7d28  04 00 00 0a                                      beq #0x7d7d40
007d7d2c  00 30 94 e5                                      ldr r3, [r4]
007d7d30  01 30 43 e2                                      sub r3, r3, #1
007d7d34  01 00 53 e1                                      cmp r3, r1
007d7d38  00 30 84 e5                                      str r3, [r4]
007d7d3c  6b 00 00 0a                                      beq #0x7d7ef0
007d7d40  10 00 9a e5                                      ldr r0, [sl, #0x10]
007d7d44  00 00 50 e3                                      cmp r0, #0
007d7d48  02 00 00 0a                                      beq #0x7d7d58
007d7d4c  0c 16 ed eb                                      bl #0x31d584
007d7d50  00 30 a0 e3                                      mov r3, #0
007d7d54  10 30 8a e5                                      str r3, [sl, #0x10]
007d7d58  df 0f 8a e2                                      add r0, sl, #0x37c
007d7d5c  88 f7 ff eb                                      bl #0x7d5b84
007d7d60  78 43 9a e5                                      ldr r4, [sl, #0x378]
007d7d64  00 00 54 e3                                      cmp r4, #0
007d7d68  04 00 00 0a                                      beq #0x7d7d80
007d7d6c  00 30 94 e5                                      ldr r3, [r4]
007d7d70  01 30 43 e2                                      sub r3, r3, #1
007d7d74  00 00 53 e3                                      cmp r3, #0
007d7d78  00 30 84 e5                                      str r3, [r4]
007d7d7c  33 00 00 0a                                      beq #0x7d7e50
007d7d80  db 0f 8a e2                                      add r0, sl, #0x36c
007d7d84  2a c1 fe eb                                      bl #0x788234
007d7d88  60 23 9a e5                                      ldr r2, [sl, #0x360]
007d7d8c  d7 0f 8a e2                                      add r0, sl, #0x35c
007d7d90  00 00 52 e3                                      cmp r2, #0
007d7d94  37 00 00 da                                      ble #0x7d7e78
007d7d98  00 60 a0 e3                                      mov r6, #0
007d7d9c  60 63 8a e5                                      str r6, [sl, #0x360]
007d7da0  06 10 a0 e1                                      mov r1, r6
007d7da4  b7 f0 ff eb                                      bl #0x7d4088
007d7da8  50 53 9a e5                                      ldr r5, [sl, #0x350]
007d7dac  d3 7f 8a e2                                      add r7, sl, #0x34c
007d7db0  06 00 55 e1                                      cmp r5, r6
007d7db4  41 00 00 da                                      ble #0x7d7ec0
007d7db8  00 40 a0 e3                                      mov r4, #0
007d7dbc  06 80 a0 e1                                      mov r8, r6
007d7dc0  05 00 00 ea                                      b #0x7d7ddc
007d7dc4  04 80 80 e5                                      str r8, [r0, #4]
007d7dc8  01 60 86 e2                                      add r6, r6, #1
007d7dcc  08 10 a0 e1                                      mov r1, r8
007d7dd0  ac f0 ff eb                                      bl #0x7d4088
007d7dd4  05 00 56 e1                                      cmp r6, r5
007d7dd8  13 00 00 0a                                      beq #0x7d7e2c
007d7ddc  00 00 97 e5                                      ldr r0, [r7]
007d7de0  06 02 80 e0                                      add r0, r0, r6, lsl #4
007d7de4  04 20 90 e5                                      ldr r2, [r0, #4]
007d7de8  00 00 52 e3                                      cmp r2, #0
007d7dec  f4 ff ff ca                                      bgt #0x7d7dc4
007d7df0  f3 ff ff aa                                      bge #0x7d7dc4
007d7df4  82 31 a0 e1                                      lsl r3, r2, #3
007d7df8  00 10 90 e5                                      ldr r1, [r0]
007d7dfc  01 20 92 e2                                      adds r2, r2, #1
007d7e00  03 c0 81 e0                                      add ip, r1, r3
007d7e04  03 40 81 e7                                      str r4, [r1, r3]
007d7e08  04 40 8c e5                                      str r4, [ip, #4]
007d7e0c  08 30 83 e2                                      add r3, r3, #8
007d7e10  f8 ff ff 1a                                      bne #0x7d7df8
007d7e14  04 80 80 e5                                      str r8, [r0, #4]
007d7e18  01 60 86 e2                                      add r6, r6, #1
007d7e1c  08 10 a0 e1                                      mov r1, r8
007d7e20  98 f0 ff eb                                      bl #0x7d4088
007d7e24  05 00 56 e1                                      cmp r6, r5
007d7e28  eb ff ff 1a                                      bne #0x7d7ddc
007d7e2c  00 30 a0 e3                                      mov r3, #0
007d7e30  07 00 a0 e1                                      mov r0, r7
007d7e34  03 10 a0 e1                                      mov r1, r3
007d7e38  50 33 8a e5                                      str r3, [sl, #0x350]
007d7e3c  b0 f0 ff eb                                      bl #0x7d4104
007d7e40  1f 0e 8a e2                                      add r0, sl, #0x1f0
007d7e44  50 ff ff eb                                      bl #0x7d7b8c
007d7e48  0a 00 a0 e1                                      mov r0, sl
007d7e4c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007d7e50  04 00 a0 e1                                      mov r0, r4
007d7e54  f0 22 f7 eb                                      bl #0x5a0a1c
007d7e58  04 00 a0 e1                                      mov r0, r4
007d7e5c  13 d9 ec eb                                      bl #0x30e2b0
007d7e60  db 0f 8a e2                                      add r0, sl, #0x36c
007d7e64  f2 c0 fe eb                                      bl #0x788234
007d7e68  60 23 9a e5                                      ldr r2, [sl, #0x360]
007d7e6c  d7 0f 8a e2                                      add r0, sl, #0x35c
007d7e70  00 00 52 e3                                      cmp r2, #0
007d7e74  c7 ff ff ca                                      bgt #0x7d7d98
007d7e78  c6 ff ff aa                                      bge #0x7d7d98
007d7e7c  00 c0 a0 e3                                      mov ip, #0
007d7e80  82 31 a0 e1                                      lsl r3, r2, #3
007d7e84  00 10 90 e5                                      ldr r1, [r0]
007d7e88  01 20 92 e2                                      adds r2, r2, #1
007d7e8c  03 e0 81 e0                                      add lr, r1, r3
007d7e90  03 c0 81 e7                                      str ip, [r1, r3]
007d7e94  04 c0 8e e5                                      str ip, [lr, #4]
007d7e98  08 30 83 e2                                      add r3, r3, #8
007d7e9c  f8 ff ff 1a                                      bne #0x7d7e84
007d7ea0  00 60 a0 e3                                      mov r6, #0
007d7ea4  60 63 8a e5                                      str r6, [sl, #0x360]
007d7ea8  06 10 a0 e1                                      mov r1, r6
007d7eac  75 f0 ff eb                                      bl #0x7d4088
007d7eb0  50 53 9a e5                                      ldr r5, [sl, #0x350]
007d7eb4  d3 7f 8a e2                                      add r7, sl, #0x34c
007d7eb8  06 00 55 e1                                      cmp r5, r6
007d7ebc  bd ff ff ca                                      bgt #0x7d7db8
007d7ec0  d9 ff ff aa                                      bge #0x7d7e2c
007d7ec4  05 32 a0 e1                                      lsl r3, r5, #4
007d7ec8  00 10 97 e5                                      ldr r1, [r7]
007d7ecc  01 50 95 e2                                      adds r5, r5, #1
007d7ed0  03 20 81 e0                                      add r2, r1, r3
007d7ed4  03 60 81 e7                                      str r6, [r1, r3]
007d7ed8  0c 60 c2 e5                                      strb r6, [r2, #0xc]
007d7edc  04 60 82 e5                                      str r6, [r2, #4]
007d7ee0  08 60 82 e5                                      str r6, [r2, #8]
007d7ee4  10 30 83 e2                                      add r3, r3, #0x10
007d7ee8  f6 ff ff 1a                                      bne #0x7d7ec8
007d7eec  ce ff ff ea                                      b #0x7d7e2c
007d7ef0  04 00 a0 e1                                      mov r0, r4
007d7ef4  c8 22 f7 eb                                      bl #0x5a0a1c
007d7ef8  04 00 a0 e1                                      mov r0, r4
007d7efc  eb d8 ec eb                                      bl #0x30e2b0
007d7f00  8e ff ff ea                                      b #0x7d7d40
; mapping-symbol data/literal pool
007d7f04  8c cd 1b 00 0c 42 00 00                          .byte 0x8c, 0xcd, 0x1b, 0x00, 0x0c, 0x42, 0x00, 0x00

; FUNCTION 0x007d7f0c, declared_size=28, range_size=28, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitchD0Ev
; demangled: render_handler_glitch::~render_handler_glitch()
; decoder-mode: arm
007d7f0c  10 40 2d e9                                      push {r4, lr}
007d7f10  00 40 a0 e1                                      mov r4, r0
007d7f14  76 ff ff eb                                      bl #0x7d7cf4
007d7f18  04 00 a0 e1                                      mov r0, r4
007d7f1c  e3 d8 ec eb                                      bl #0x30e2b0
007d7f20  04 00 a0 e1                                      mov r0, r4
007d7f24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007d81e4, declared_size=120, range_size=120, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch14set_blend_modeEN7gameswf10blend_mode2idE
; demangled: render_handler_glitch::set_blend_mode(gameswf::blend_mode::id)
; decoder-mode: arm
007d81e4  70 40 2d e9                                      push {r4, r5, r6, lr}
007d81e8  fc 32 90 e5                                      ldr r3, [r0, #0x2fc]
007d81ec  00 40 a0 e1                                      mov r4, r0
007d81f0  01 50 a0 e1                                      mov r5, r1
007d81f4  0f 00 53 e3                                      cmp r3, #0xf
007d81f8  16 00 00 0a                                      beq #0x7d8258
007d81fc  44 23 90 e5                                      ldr r2, [r0, #0x344]
007d8200  00 00 52 e3                                      cmp r2, #0
007d8204  1f 6e 80 d2                                      addle r6, r0, #0x1f0
007d8208  06 00 00 da                                      ble #0x7d8228
007d820c  1f 6e 80 e2                                      add r6, r0, #0x1f0
007d8210  06 00 a0 e1                                      mov r0, r6
007d8214  9e f9 ff eb                                      bl #0x7d6894
007d8218  06 00 a0 e1                                      mov r0, r6
007d821c  00 10 a0 e3                                      mov r1, #0
007d8220  40 ff ff eb                                      bl #0x7d7f28
007d8224  fc 32 94 e5                                      ldr r3, [r4, #0x2fc]
007d8228  05 00 53 e1                                      cmp r3, r5
007d822c  01 00 00 0a                                      beq #0x7d8238
007d8230  06 00 a0 e1                                      mov r0, r6
007d8234  96 f9 ff eb                                      bl #0x7d6894
007d8238  44 33 94 e5                                      ldr r3, [r4, #0x344]
007d823c  fc 52 84 e5                                      str r5, [r4, #0x2fc]
007d8240  00 00 53 e3                                      cmp r3, #0
007d8244  03 00 00 da                                      ble #0x7d8258
007d8248  06 00 a0 e1                                      mov r0, r6
007d824c  02 10 a0 e3                                      mov r1, #2
007d8250  70 40 bd e8                                      pop {r4, r5, r6, lr}
007d8254  33 ff ff ea                                      b #0x7d7f28
007d8258  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d825c, declared_size=228, range_size=228, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch17begin_submit_maskEv
; demangled: render_handler_glitch::begin_submit_mask()
; decoder-mode: arm
007d825c  70 40 2d e9                                      push {r4, r5, r6, lr}
007d8260  1f 5e 80 e2                                      add r5, r0, #0x1f0
007d8264  00 40 a0 e1                                      mov r4, r0
007d8268  10 d0 4d e2                                      sub sp, sp, #0x10
007d826c  05 00 a0 e1                                      mov r0, r5
007d8270  87 f9 ff eb                                      bl #0x7d6894
007d8274  fc 32 94 e5                                      ldr r3, [r4, #0x2fc]
007d8278  0f 00 53 e3                                      cmp r3, #0xf
007d827c  01 00 00 0a                                      beq #0x7d8288
007d8280  05 00 a0 e1                                      mov r0, r5
007d8284  82 f9 ff eb                                      bl #0x7d6894
007d8288  44 63 94 e5                                      ldr r6, [r4, #0x344]
007d828c  0f 30 a0 e3                                      mov r3, #0xf
007d8290  6f 12 01 e3                                      movw r1, #0x126f
007d8294  01 60 86 e2                                      add r6, r6, #1
007d8298  fc 32 84 e5                                      str r3, [r4, #0x2fc]
007d829c  48 03 94 e5                                      ldr r0, [r4, #0x348]
007d82a0  44 63 84 e5                                      str r6, [r4, #0x344]
007d82a4  83 1a 43 e3                                      movt r1, #0x3a83
007d82a8  3d da ec eb                                      bl #0x30eba4
007d82ac  50 33 94 e5                                      ldr r3, [r4, #0x350]
007d82b0  48 03 84 e5                                      str r0, [r4, #0x348]
007d82b4  03 00 56 e1                                      cmp r6, r3
007d82b8  10 00 00 da                                      ble #0x7d8300
007d82bc  00 30 a0 e3                                      mov r3, #0
007d82c0  d3 0f 84 e2                                      add r0, r4, #0x34c
007d82c4  0d 10 a0 e1                                      mov r1, sp
007d82c8  0c 30 cd e5                                      strb r3, [sp, #0xc]
007d82cc  00 30 8d e5                                      str r3, [sp]
007d82d0  04 30 8d e5                                      str r3, [sp, #4]
007d82d4  08 30 8d e5                                      str r3, [sp, #8]
007d82d8  4e fe ff eb                                      bl #0x7d7c18
007d82dc  04 20 9d e5                                      ldr r2, [sp, #4]
007d82e0  0d 60 a0 e1                                      mov r6, sp
007d82e4  00 00 52 e3                                      cmp r2, #0
007d82e8  09 00 00 da                                      ble #0x7d8314
007d82ec  00 30 a0 e3                                      mov r3, #0
007d82f0  0d 00 a0 e1                                      mov r0, sp
007d82f4  03 10 a0 e1                                      mov r1, r3
007d82f8  04 30 8d e5                                      str r3, [sp, #4]
007d82fc  61 ef ff eb                                      bl #0x7d4088
007d8300  05 00 a0 e1                                      mov r0, r5
007d8304  01 10 a0 e3                                      mov r1, #1
007d8308  06 ff ff eb                                      bl #0x7d7f28
007d830c  10 d0 8d e2                                      add sp, sp, #0x10
007d8310  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d8314  f4 ff ff aa                                      bge #0x7d82ec
007d8318  00 00 a0 e3                                      mov r0, #0
007d831c  82 31 a0 e1                                      lsl r3, r2, #3
007d8320  00 10 9d e5                                      ldr r1, [sp]
007d8324  01 20 92 e2                                      adds r2, r2, #1
007d8328  03 c0 81 e0                                      add ip, r1, r3
007d832c  03 00 81 e7                                      str r0, [r1, r3]
007d8330  04 00 8c e5                                      str r0, [ip, #4]
007d8334  08 30 83 e2                                      add r3, r3, #8
007d8338  f8 ff ff 1a                                      bne #0x7d8320
007d833c  ea ff ff ea                                      b #0x7d82ec

; FUNCTION 0x007d8340, declared_size=636, range_size=636, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch12disable_maskEv
; demangled: render_handler_glitch::disable_mask()
; decoder-mode: arm
007d8340  70 40 2d e9                                      push {r4, r5, r6, lr}
007d8344  1f 4e 80 e2                                      add r4, r0, #0x1f0
007d8348  00 50 a0 e1                                      mov r5, r0
007d834c  04 00 a0 e1                                      mov r0, r4
007d8350  4f f9 ff eb                                      bl #0x7d6894
007d8354  44 33 95 e5                                      ldr r3, [r5, #0x344]
007d8358  04 00 a0 e1                                      mov r0, r4
007d835c  00 10 a0 e3                                      mov r1, #0
007d8360  01 30 43 e2                                      sub r3, r3, #1
007d8364  44 33 85 e5                                      str r3, [r5, #0x344]
007d8368  ee fe ff eb                                      bl #0x7d7f28
007d836c  44 43 95 e5                                      ldr r4, [r5, #0x344]
007d8370  4c 33 95 e5                                      ldr r3, [r5, #0x34c]
007d8374  04 42 83 e0                                      add r4, r3, r4, lsl #4
007d8378  04 20 94 e5                                      ldr r2, [r4, #4]
007d837c  00 00 52 e3                                      cmp r2, #0
007d8380  82 00 00 da                                      ble #0x7d8590
007d8384  00 30 a0 e3                                      mov r3, #0
007d8388  04 30 84 e5                                      str r3, [r4, #4]
007d838c  44 33 95 e5                                      ldr r3, [r5, #0x344]
007d8390  00 00 53 e3                                      cmp r3, #0
007d8394  7c 00 00 da                                      ble #0x7d858c
007d8398  fc 32 95 e5                                      ldr r3, [r5, #0x2fc]
007d839c  0c 40 a0 e3                                      mov r4, #0xc
007d83a0  94 03 04 e0                                      mul r4, r4, r3
007d83a4  04 30 85 e0                                      add r3, r5, r4
007d83a8  30 32 93 e5                                      ldr r3, [r3, #0x230]
007d83ac  00 00 53 e3                                      cmp r3, #0
007d83b0  04 40 85 10                                      addne r4, r5, r4
007d83b4  8b 4f 85 02                                      addeq r4, r5, #0x22c
007d83b8  8b 4f 84 12                                      addne r4, r4, #0x22c
007d83bc  04 00 94 e5                                      ldr r0, [r4, #4]
007d83c0  5b b6 f7 eb                                      bl #0x5c5d34
007d83c4  04 30 94 e5                                      ldr r3, [r4, #4]
007d83c8  0c 20 a0 e3                                      mov r2, #0xc
007d83cc  04 60 84 e2                                      add r6, r4, #4
007d83d0  04 30 93 e5                                      ldr r3, [r3, #4]
007d83d4  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d83d8  92 30 23 e0                                      mla r3, r2, r0, r3
007d83dc  08 30 93 e5                                      ldr r3, [r3, #8]
007d83e0  04 20 93 e5                                      ldr r2, [r3, #4]
007d83e4  02 07 12 e3                                      tst r2, #0x80000
007d83e8  02 27 82 e3                                      orr r2, r2, #0x80000
007d83ec  04 20 83 e5                                      str r2, [r3, #4]
007d83f0  01 20 a0 03                                      moveq r2, #1
007d83f4  30 20 c3 05                                      strbeq r2, [r3, #0x30]
007d83f8  04 00 94 e5                                      ldr r0, [r4, #4]
007d83fc  4c b6 f7 eb                                      bl #0x5c5d34
007d8400  04 30 94 e5                                      ldr r3, [r4, #4]
007d8404  0c 20 a0 e3                                      mov r2, #0xc
007d8408  04 30 93 e5                                      ldr r3, [r3, #4]
007d840c  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d8410  92 30 23 e0                                      mla r3, r2, r0, r3
007d8414  08 30 93 e5                                      ldr r3, [r3, #8]
007d8418  00 20 93 e5                                      ldr r2, [r3]
007d841c  d2 1d e2 e7                                      ubfx r1, r2, #0x1b, #3
007d8420  0e 23 c2 e3                                      bic r2, r2, #0x38000000
007d8424  03 00 51 e3                                      cmp r1, #3
007d8428  06 23 82 e3                                      orr r2, r2, #0x18000000
007d842c  00 20 83 e5                                      str r2, [r3]
007d8430  01 20 a0 13                                      movne r2, #1
007d8434  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d8438  04 00 94 e5                                      ldr r0, [r4, #4]
007d843c  3c b6 f7 eb                                      bl #0x5c5d34
007d8440  04 30 94 e5                                      ldr r3, [r4, #4]
007d8444  0c 20 a0 e3                                      mov r2, #0xc
007d8448  04 30 93 e5                                      ldr r3, [r3, #4]
007d844c  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d8450  92 30 23 e0                                      mla r3, r2, r0, r3
007d8454  08 30 93 e5                                      ldr r3, [r3, #8]
007d8458  04 20 93 e5                                      ldr r2, [r3, #4]
007d845c  01 06 12 e3                                      tst r2, #0x100000
007d8460  01 26 82 e3                                      orr r2, r2, #0x100000
007d8464  04 20 83 e5                                      str r2, [r3, #4]
007d8468  01 20 a0 03                                      moveq r2, #1
007d846c  30 20 c3 05                                      strbeq r2, [r3, #0x30]
007d8470  04 00 94 e5                                      ldr r0, [r4, #4]
007d8474  2e b6 f7 eb                                      bl #0x5c5d34
007d8478  04 30 94 e5                                      ldr r3, [r4, #4]
007d847c  0c 20 a0 e3                                      mov r2, #0xc
007d8480  00 10 a0 e3                                      mov r1, #0
007d8484  04 30 93 e5                                      ldr r3, [r3, #4]
007d8488  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d848c  92 30 23 e0                                      mla r3, r2, r0, r3
007d8490  06 00 a0 e1                                      mov r0, r6
007d8494  08 30 93 e5                                      ldr r3, [r3, #8]
007d8498  04 20 93 e5                                      ldr r2, [r3, #4]
007d849c  01 08 12 e3                                      tst r2, #0x10000
007d84a0  01 28 c2 e3                                      bic r2, r2, #0x10000
007d84a4  04 20 83 e5                                      str r2, [r3, #4]
007d84a8  01 20 a0 13                                      movne r2, #1
007d84ac  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d84b0  01 20 a0 e1                                      mov r2, r1
007d84b4  01 30 a0 e1                                      mov r3, r1
007d84b8  9d f2 ff eb                                      bl #0x7d4f34
007d84bc  05 00 a0 e1                                      mov r0, r5
007d84c0  3d fb ff eb                                      bl #0x7d71bc
007d84c4  04 00 94 e5                                      ldr r0, [r4, #4]
007d84c8  19 b6 f7 eb                                      bl #0x5c5d34
007d84cc  04 30 94 e5                                      ldr r3, [r4, #4]
007d84d0  0c 20 a0 e3                                      mov r2, #0xc
007d84d4  04 30 93 e5                                      ldr r3, [r3, #4]
007d84d8  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d84dc  92 30 23 e0                                      mla r3, r2, r0, r3
007d84e0  08 30 93 e5                                      ldr r3, [r3, #8]
007d84e4  04 20 93 e5                                      ldr r2, [r3, #4]
007d84e8  01 08 12 e3                                      tst r2, #0x10000
007d84ec  01 28 82 e3                                      orr r2, r2, #0x10000
007d84f0  04 20 83 e5                                      str r2, [r3, #4]
007d84f4  01 20 a0 03                                      moveq r2, #1
007d84f8  30 20 c3 05                                      strbeq r2, [r3, #0x30]
007d84fc  04 00 94 e5                                      ldr r0, [r4, #4]
007d8500  0b b6 f7 eb                                      bl #0x5c5d34
007d8504  04 30 94 e5                                      ldr r3, [r4, #4]
007d8508  0c 20 a0 e3                                      mov r2, #0xc
007d850c  04 30 93 e5                                      ldr r3, [r3, #4]
007d8510  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d8514  92 30 23 e0                                      mla r3, r2, r0, r3
007d8518  08 30 93 e5                                      ldr r3, [r3, #8]
007d851c  00 20 93 e5                                      ldr r2, [r3]
007d8520  d2 1d e2 e7                                      ubfx r1, r2, #0x1b, #3
007d8524  0e 23 c2 e3                                      bic r2, r2, #0x38000000
007d8528  02 00 51 e3                                      cmp r1, #2
007d852c  01 22 82 e3                                      orr r2, r2, #0x10000000
007d8530  00 20 83 e5                                      str r2, [r3]
007d8534  01 20 a0 13                                      movne r2, #1
007d8538  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d853c  04 00 94 e5                                      ldr r0, [r4, #4]
007d8540  fb b5 f7 eb                                      bl #0x5c5d34
007d8544  04 30 94 e5                                      ldr r3, [r4, #4]
007d8548  0c 20 a0 e3                                      mov r2, #0xc
007d854c  01 10 a0 e3                                      mov r1, #1
007d8550  04 30 93 e5                                      ldr r3, [r3, #4]
007d8554  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d8558  92 30 23 e0                                      mla r3, r2, r0, r3
007d855c  06 00 a0 e1                                      mov r0, r6
007d8560  08 30 93 e5                                      ldr r3, [r3, #8]
007d8564  04 20 93 e5                                      ldr r2, [r3, #4]
007d8568  01 06 12 e3                                      tst r2, #0x100000
007d856c  01 26 c2 e3                                      bic r2, r2, #0x100000
007d8570  04 20 83 e5                                      str r2, [r3, #4]
007d8574  01 20 a0 13                                      movne r2, #1
007d8578  30 20 c3 15                                      strbne r2, [r3, #0x30]
007d857c  01 20 a0 e1                                      mov r2, r1
007d8580  01 30 a0 e1                                      mov r3, r1
007d8584  70 40 bd e8                                      pop {r4, r5, r6, lr}
007d8588  69 f2 ff ea                                      b #0x7d4f34
007d858c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d8590  7b ff ff aa                                      bge #0x7d8384
007d8594  00 00 a0 e3                                      mov r0, #0
007d8598  82 31 a0 e1                                      lsl r3, r2, #3
007d859c  00 10 94 e5                                      ldr r1, [r4]
007d85a0  01 20 92 e2                                      adds r2, r2, #1
007d85a4  03 c0 81 e0                                      add ip, r1, r3
007d85a8  03 00 81 e7                                      str r0, [r1, r3]
007d85ac  04 00 8c e5                                      str r0, [ip, #4]
007d85b0  08 30 83 e2                                      add r3, r3, #8
007d85b4  f8 ff ff 1a                                      bne #0x7d859c
007d85b8  71 ff ff ea                                      b #0x7d8384

; FUNCTION 0x007d85bc, declared_size=80, range_size=80, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch15end_submit_maskEv
; demangled: render_handler_glitch::end_submit_mask()
; decoder-mode: arm
007d85bc  70 40 2d e9                                      push {r4, r5, r6, lr}
007d85c0  44 33 90 e5                                      ldr r3, [r0, #0x344]
007d85c4  00 40 a0 e1                                      mov r4, r0
007d85c8  01 00 53 e3                                      cmp r3, #1
007d85cc  00 00 00 da                                      ble #0x7d85d4
007d85d0  f9 fa ff eb                                      bl #0x7d71bc
007d85d4  1f 5e 84 e2                                      add r5, r4, #0x1f0
007d85d8  05 00 a0 e1                                      mov r0, r5
007d85dc  ac f8 ff eb                                      bl #0x7d6894
007d85e0  fc 32 94 e5                                      ldr r3, [r4, #0x2fc]
007d85e4  00 00 53 e3                                      cmp r3, #0
007d85e8  01 00 00 0a                                      beq #0x7d85f4
007d85ec  05 00 a0 e1                                      mov r0, r5
007d85f0  a7 f8 ff eb                                      bl #0x7d6894
007d85f4  00 30 a0 e3                                      mov r3, #0
007d85f8  05 00 a0 e1                                      mov r0, r5
007d85fc  02 10 a0 e3                                      mov r1, #2
007d8600  fc 32 84 e5                                      str r3, [r4, #0x2fc]
007d8604  70 40 bd e8                                      pop {r4, r5, r6, lr}
007d8608  46 fe ff ea                                      b #0x7d7f28

; FUNCTION 0x007d860c, declared_size=2024, range_size=2024, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch25process_mask_intersectionEP6VertexiPKtiN6glitch5video16E_PRIMITIVE_TYPEE
; demangled: render_handler_glitch::process_mask_intersection(Vertex*, int, unsigned short const*, int, glitch::video::E_PRIMITIVE_TYPE)
; decoder-mode: arm
007d860c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d8610  4c d0 4d e2                                      sub sp, sp, #0x4c
007d8614  24 00 8d e5                                      str r0, [sp, #0x24]
007d8618  44 03 90 e5                                      ldr r0, [r0, #0x344]
007d861c  01 40 a0 e1                                      mov r4, r1
007d8620  02 70 a0 e1                                      mov r7, r2
007d8624  00 00 50 e3                                      cmp r0, #0
007d8628  03 90 a0 e1                                      mov sb, r3
007d862c  70 b0 9d e5                                      ldr fp, [sp, #0x70]
007d8630  03 00 00 da                                      ble #0x7d8644
007d8634  24 00 9d e5                                      ldr r0, [sp, #0x24]
007d8638  fc 32 90 e5                                      ldr r3, [r0, #0x2fc]
007d863c  0f 00 53 e3                                      cmp r3, #0xf
007d8640  02 00 00 0a                                      beq #0x7d8650
007d8644  00 00 a0 e3                                      mov r0, #0
007d8648  4c d0 8d e2                                      add sp, sp, #0x4c
007d864c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d8650  02 00 52 e3                                      cmp r2, #2
007d8654  fa ff ff da                                      ble #0x7d8644
007d8658  60 23 90 e5                                      ldr r2, [r0, #0x360]
007d865c  d7 5f 80 e2                                      add r5, r0, #0x35c
007d8660  00 00 52 e3                                      cmp r2, #0
007d8664  09 01 00 da                                      ble #0x7d8a90
007d8668  74 30 9d e5                                      ldr r3, [sp, #0x74]
007d866c  24 10 9d e5                                      ldr r1, [sp, #0x24]
007d8670  04 00 53 e3                                      cmp r3, #4
007d8674  00 30 a0 e3                                      mov r3, #0
007d8678  60 33 81 e5                                      str r3, [r1, #0x360]
007d867c  13 01 00 0a                                      beq #0x7d8ad0
007d8680  00 00 59 e3                                      cmp sb, #0
007d8684  b0 01 00 0a                                      beq #0x7d8d4c
007d8688  56 25 05 e3                                      movw r2, #0x5556
007d868c  55 25 45 e3                                      movt r2, #0x5555
007d8690  92 1b c2 e0                                      smull r1, r2, r2, fp
007d8694  00 00 5b e3                                      cmp fp, #0
007d8698  cb 2f 42 e0                                      sub r2, r2, fp, asr #31
007d869c  30 20 8d e5                                      str r2, [sp, #0x30]
007d86a0  20 00 00 da                                      ble #0x7d8728
007d86a4  03 70 a0 e1                                      mov r7, r3
007d86a8  18 c0 a0 e3                                      mov ip, #0x18
007d86ac  04 a0 a0 e1                                      mov sl, r4
007d86b0  07 00 00 ea                                      b #0x7d86d4
007d86b4  00 20 95 e5                                      ldr r2, [r5]
007d86b8  0b 00 54 e1                                      cmp r4, fp
007d86bc  83 11 82 e0                                      add r1, r2, r3, lsl #3
007d86c0  83 81 82 e7                                      str r8, [r2, r3, lsl #3]
007d86c4  04 60 81 e5                                      str r6, [r1, #4]
007d86c8  04 40 85 e5                                      str r4, [r5, #4]
007d86cc  15 00 00 0a                                      beq #0x7d8728
007d86d0  04 30 a0 e1                                      mov r3, r4
007d86d4  b7 20 99 e1                                      ldrh r2, [sb, r7]
007d86d8  08 10 95 e5                                      ldr r1, [r5, #8]
007d86dc  01 40 83 e2                                      add r4, r3, #1
007d86e0  9c a2 22 e0                                      mla r2, ip, r2, sl
007d86e4  01 00 54 e1                                      cmp r4, r1
007d86e8  10 60 92 e5                                      ldr r6, [r2, #0x10]
007d86ec  02 70 87 e2                                      add r7, r7, #2
007d86f0  0c 80 92 e5                                      ldr r8, [r2, #0xc]
007d86f4  ee ff ff da                                      ble #0x7d86b4
007d86f8  c4 10 84 e0                                      add r1, r4, r4, asr #1
007d86fc  05 00 a0 e1                                      mov r0, r5
007d8700  04 c0 8d e5                                      str ip, [sp, #4]
007d8704  5f ee ff eb                                      bl #0x7d4088
007d8708  0c 00 95 e8                                      ldm r5, {r2, r3}
007d870c  0b 00 54 e1                                      cmp r4, fp
007d8710  04 c0 9d e5                                      ldr ip, [sp, #4]
007d8714  83 11 82 e0                                      add r1, r2, r3, lsl #3
007d8718  83 81 82 e7                                      str r8, [r2, r3, lsl #3]
007d871c  04 60 81 e5                                      str r6, [r1, #4]
007d8720  04 40 85 e5                                      str r4, [r5, #4]
007d8724  e9 ff ff 1a                                      bne #0x7d86d0
007d8728  24 20 9d e5                                      ldr r2, [sp, #0x24]
007d872c  44 33 92 e5                                      ldr r3, [r2, #0x344]
007d8730  4c 23 92 e5                                      ldr r2, [r2, #0x34c]
007d8734  01 40 43 e2                                      sub r4, r3, #1
007d8738  01 00 53 e3                                      cmp r3, #1
007d873c  04 42 82 e0                                      add r4, r2, r4, lsl #4
007d8740  58 01 00 da                                      ble #0x7d8ca8
007d8744  30 c0 9d e5                                      ldr ip, [sp, #0x30]
007d8748  00 00 5c e3                                      cmp ip, #0
007d874c  a6 01 00 da                                      ble #0x7d8dec
007d8750  24 c0 9d e5                                      ldr ip, [sp, #0x24]
007d8754  00 00 a0 e3                                      mov r0, #0
007d8758  56 15 05 e3                                      movw r1, #0x5556
007d875c  28 00 8d e5                                      str r0, [sp, #0x28]
007d8760  55 15 45 e3                                      movt r1, #0x5555
007d8764  db cf 8c e2                                      add ip, ip, #0x36c
007d8768  2c 00 8d e5                                      str r0, [sp, #0x2c]
007d876c  38 00 8d e2                                      add r0, sp, #0x38
007d8770  34 10 8d e5                                      str r1, [sp, #0x34]
007d8774  1c c0 8d e5                                      str ip, [sp, #0x1c]
007d8778  20 00 8d e5                                      str r0, [sp, #0x20]
007d877c  02 30 43 e2                                      sub r3, r3, #2
007d8780  00 10 a0 e3                                      mov r1, #0
007d8784  03 22 82 e0                                      add r2, r2, r3, lsl #4
007d8788  14 20 8d e5                                      str r2, [sp, #0x14]
007d878c  38 10 8d e5                                      str r1, [sp, #0x38]
007d8790  3c 10 8d e5                                      str r1, [sp, #0x3c]
007d8794  40 10 8d e5                                      str r1, [sp, #0x40]
007d8798  44 10 cd e5                                      strb r1, [sp, #0x44]
007d879c  04 30 92 e5                                      ldr r3, [r2, #4]
007d87a0  34 c0 9d e5                                      ldr ip, [sp, #0x34]
007d87a4  24 20 9d e5                                      ldr r2, [sp, #0x24]
007d87a8  28 00 9d e5                                      ldr r0, [sp, #0x28]
007d87ac  5c 13 92 e5                                      ldr r1, [r2, #0x35c]
007d87b0  9c c3 c2 e0                                      smull ip, r2, ip, r3
007d87b4  00 10 81 e0                                      add r1, r1, r0
007d87b8  c3 2f 42 e0                                      sub r2, r2, r3, asr #31
007d87bc  00 00 52 e3                                      cmp r2, #0
007d87c0  18 10 8d e5                                      str r1, [sp, #0x18]
007d87c4  10 20 8d e5                                      str r2, [sp, #0x10]
007d87c8  88 00 00 da                                      ble #0x7d89f0
007d87cc  00 10 a0 e3                                      mov r1, #0
007d87d0  08 10 8d e5                                      str r1, [sp, #8]
007d87d4  0c 10 8d e5                                      str r1, [sp, #0xc]
007d87d8  14 30 9d e5                                      ldr r3, [sp, #0x14]
007d87dc  08 c0 9d e5                                      ldr ip, [sp, #8]
007d87e0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007d87e4  00 20 93 e5                                      ldr r2, [r3]
007d87e8  18 10 9d e5                                      ldr r1, [sp, #0x18]
007d87ec  20 30 9d e5                                      ldr r3, [sp, #0x20]
007d87f0  0c 20 82 e0                                      add r2, r2, ip
007d87f4  7c c0 fe eb                                      bl #0x7889ec
007d87f8  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007d87fc  00 00 53 e3                                      cmp r3, #0
007d8800  6f 00 00 da                                      ble #0x7d89c4
007d8804  04 30 94 e5                                      ldr r3, [r4, #4]
007d8808  08 20 94 e5                                      ldr r2, [r4, #8]
007d880c  38 50 9d e5                                      ldr r5, [sp, #0x38]
007d8810  01 70 83 e2                                      add r7, r3, #1
007d8814  02 00 57 e1                                      cmp r7, r2
007d8818  97 00 00 ca                                      bgt #0x7d8a7c
007d881c  00 00 95 e5                                      ldr r0, [r5]
007d8820  00 20 94 e5                                      ldr r2, [r4]
007d8824  01 60 87 e2                                      add r6, r7, #1
007d8828  83 01 82 e7                                      str r0, [r2, r3, lsl #3]
007d882c  83 11 82 e0                                      add r1, r2, r3, lsl #3
007d8830  04 30 95 e5                                      ldr r3, [r5, #4]
007d8834  04 30 81 e5                                      str r3, [r1, #4]
007d8838  08 30 94 e5                                      ldr r3, [r4, #8]
007d883c  04 70 84 e5                                      str r7, [r4, #4]
007d8840  38 50 9d e5                                      ldr r5, [sp, #0x38]
007d8844  03 00 56 e1                                      cmp r6, r3
007d8848  08 80 85 e2                                      add r8, r5, #8
007d884c  85 00 00 ca                                      bgt #0x7d8a68
007d8850  08 20 95 e5                                      ldr r2, [r5, #8]
007d8854  00 30 94 e5                                      ldr r3, [r4]
007d8858  01 50 86 e2                                      add r5, r6, #1
007d885c  87 21 83 e7                                      str r2, [r3, r7, lsl #3]
007d8860  04 20 98 e5                                      ldr r2, [r8, #4]
007d8864  87 71 83 e0                                      add r7, r3, r7, lsl #3
007d8868  04 20 87 e5                                      str r2, [r7, #4]
007d886c  08 30 94 e5                                      ldr r3, [r4, #8]
007d8870  04 60 84 e5                                      str r6, [r4, #4]
007d8874  38 70 9d e5                                      ldr r7, [sp, #0x38]
007d8878  03 00 55 e1                                      cmp r5, r3
007d887c  10 80 87 e2                                      add r8, r7, #0x10
007d8880  73 00 00 ca                                      bgt #0x7d8a54
007d8884  10 20 97 e5                                      ldr r2, [r7, #0x10]
007d8888  00 30 94 e5                                      ldr r3, [r4]
007d888c  86 21 83 e7                                      str r2, [r3, r6, lsl #3]
007d8890  04 20 98 e5                                      ldr r2, [r8, #4]
007d8894  86 61 83 e0                                      add r6, r3, r6, lsl #3
007d8898  04 20 86 e5                                      str r2, [r6, #4]
007d889c  04 50 84 e5                                      str r5, [r4, #4]
007d88a0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007d88a4  03 00 53 e3                                      cmp r3, #3
007d88a8  45 00 00 da                                      ble #0x7d89c4
007d88ac  08 a0 a0 e3                                      mov sl, #8
007d88b0  03 80 a0 e3                                      mov r8, #3
007d88b4  22 00 00 ea                                      b #0x7d8944
007d88b8  00 10 9b e5                                      ldr r1, [fp]
007d88bc  00 20 94 e5                                      ldr r2, [r4]
007d88c0  85 11 82 e7                                      str r1, [r2, r5, lsl #3]
007d88c4  04 10 9b e5                                      ldr r1, [fp, #4]
007d88c8  85 21 82 e0                                      add r2, r2, r5, lsl #3
007d88cc  03 50 89 e2                                      add r5, sb, #3
007d88d0  04 10 82 e5                                      str r1, [r2, #4]
007d88d4  08 20 94 e5                                      ldr r2, [r4, #8]
007d88d8  04 70 84 e5                                      str r7, [r4, #4]
007d88dc  38 90 9d e5                                      ldr sb, [sp, #0x38]
007d88e0  06 00 52 e1                                      cmp r2, r6
007d88e4  0a 90 89 e0                                      add sb, sb, sl
007d88e8  2e 00 00 ba                                      blt #0x7d89a8
007d88ec  00 10 99 e5                                      ldr r1, [sb]
007d88f0  00 20 94 e5                                      ldr r2, [r4]
007d88f4  87 11 82 e7                                      str r1, [r2, r7, lsl #3]
007d88f8  04 10 99 e5                                      ldr r1, [sb, #4]
007d88fc  87 71 82 e0                                      add r7, r2, r7, lsl #3
007d8900  04 10 87 e5                                      str r1, [r7, #4]
007d8904  08 20 94 e5                                      ldr r2, [r4, #8]
007d8908  04 60 84 e5                                      str r6, [r4, #4]
007d890c  38 70 9d e5                                      ldr r7, [sp, #0x38]
007d8910  05 00 52 e1                                      cmp r2, r5
007d8914  03 90 87 e0                                      add sb, r7, r3
007d8918  1b 00 00 ba                                      blt #0x7d898c
007d891c  03 20 97 e7                                      ldr r2, [r7, r3]
007d8920  00 30 94 e5                                      ldr r3, [r4]
007d8924  86 21 83 e7                                      str r2, [r3, r6, lsl #3]
007d8928  04 20 99 e5                                      ldr r2, [sb, #4]
007d892c  86 61 83 e0                                      add r6, r3, r6, lsl #3
007d8930  04 20 86 e5                                      str r2, [r6, #4]
007d8934  04 50 84 e5                                      str r5, [r4, #4]
007d8938  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007d893c  03 00 58 e1                                      cmp r8, r3
007d8940  1f 00 00 aa                                      bge #0x7d89c4
007d8944  08 30 94 e5                                      ldr r3, [r4, #8]
007d8948  38 b0 9d e5                                      ldr fp, [sp, #0x38]
007d894c  01 70 85 e2                                      add r7, r5, #1
007d8950  07 00 53 e1                                      cmp r3, r7
007d8954  0a b0 8b e0                                      add fp, fp, sl
007d8958  88 31 a0 e1                                      lsl r3, r8, #3
007d895c  08 a0 8a e2                                      add sl, sl, #8
007d8960  01 80 88 e2                                      add r8, r8, #1
007d8964  05 90 a0 e1                                      mov sb, r5
007d8968  02 60 85 e2                                      add r6, r5, #2
007d896c  d1 ff ff aa                                      bge #0x7d88b8
007d8970  c7 10 87 e0                                      add r1, r7, r7, asr #1
007d8974  04 00 a0 e1                                      mov r0, r4
007d8978  04 30 8d e5                                      str r3, [sp, #4]
007d897c  c1 ed ff eb                                      bl #0x7d4088
007d8980  04 50 94 e5                                      ldr r5, [r4, #4]
007d8984  04 30 9d e5                                      ldr r3, [sp, #4]
007d8988  ca ff ff ea                                      b #0x7d88b8
007d898c  04 00 a0 e1                                      mov r0, r4
007d8990  c5 10 85 e0                                      add r1, r5, r5, asr #1
007d8994  04 30 8d e5                                      str r3, [sp, #4]
007d8998  ba ed ff eb                                      bl #0x7d4088
007d899c  04 60 94 e5                                      ldr r6, [r4, #4]
007d89a0  04 30 9d e5                                      ldr r3, [sp, #4]
007d89a4  dc ff ff ea                                      b #0x7d891c
007d89a8  c6 10 86 e0                                      add r1, r6, r6, asr #1
007d89ac  04 00 a0 e1                                      mov r0, r4
007d89b0  04 30 8d e5                                      str r3, [sp, #4]
007d89b4  b3 ed ff eb                                      bl #0x7d4088
007d89b8  04 70 94 e5                                      ldr r7, [r4, #4]
007d89bc  04 30 9d e5                                      ldr r3, [sp, #4]
007d89c0  c9 ff ff ea                                      b #0x7d88ec
007d89c4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007d89c8  08 20 9d e5                                      ldr r2, [sp, #8]
007d89cc  10 10 9d e5                                      ldr r1, [sp, #0x10]
007d89d0  01 00 80 e2                                      add r0, r0, #1
007d89d4  18 20 82 e2                                      add r2, r2, #0x18
007d89d8  01 00 50 e1                                      cmp r0, r1
007d89dc  0c 00 8d e5                                      str r0, [sp, #0xc]
007d89e0  08 20 8d e5                                      str r2, [sp, #8]
007d89e4  7b ff ff 1a                                      bne #0x7d87d8
007d89e8  00 00 53 e3                                      cmp r3, #0
007d89ec  f3 00 00 da                                      ble #0x7d8dc0
007d89f0  44 30 dd e5                                      ldrb r3, [sp, #0x44]
007d89f4  00 00 a0 e3                                      mov r0, #0
007d89f8  3c 00 8d e5                                      str r0, [sp, #0x3c]
007d89fc  00 00 53 e1                                      cmp r3, r0
007d8a00  07 00 00 1a                                      bne #0x7d8a24
007d8a04  38 00 9d e5                                      ldr r0, [sp, #0x38]
007d8a08  00 20 a0 e3                                      mov r2, #0
007d8a0c  40 10 9d e5                                      ldr r1, [sp, #0x40]
007d8a10  02 00 50 e1                                      cmp r0, r2
007d8a14  40 20 8d e5                                      str r2, [sp, #0x40]
007d8a18  01 00 00 0a                                      beq #0x7d8a24
007d8a1c  81 11 a0 e1                                      lsl r1, r1, #3
007d8a20  44 e8 fd eb                                      bl #0x752b38
007d8a24  28 00 8d e2                                      add r0, sp, #0x28
007d8a28  09 10 90 e8                                      ldm r0, {r0, r3, ip}
007d8a2c  01 30 83 e2                                      add r3, r3, #1
007d8a30  18 00 80 e2                                      add r0, r0, #0x18
007d8a34  0c 00 53 e1                                      cmp r3, ip
007d8a38  2c 30 8d e5                                      str r3, [sp, #0x2c]
007d8a3c  28 00 8d e5                                      str r0, [sp, #0x28]
007d8a40  e9 00 00 0a                                      beq #0x7d8dec
007d8a44  24 10 9d e5                                      ldr r1, [sp, #0x24]
007d8a48  44 33 91 e5                                      ldr r3, [r1, #0x344]
007d8a4c  4c 23 91 e5                                      ldr r2, [r1, #0x34c]
007d8a50  49 ff ff ea                                      b #0x7d877c
007d8a54  04 00 a0 e1                                      mov r0, r4
007d8a58  c5 10 85 e0                                      add r1, r5, r5, asr #1
007d8a5c  89 ed ff eb                                      bl #0x7d4088
007d8a60  04 60 94 e5                                      ldr r6, [r4, #4]
007d8a64  86 ff ff ea                                      b #0x7d8884
007d8a68  04 00 a0 e1                                      mov r0, r4
007d8a6c  c6 10 86 e0                                      add r1, r6, r6, asr #1
007d8a70  84 ed ff eb                                      bl #0x7d4088
007d8a74  04 70 94 e5                                      ldr r7, [r4, #4]
007d8a78  74 ff ff ea                                      b #0x7d8850
007d8a7c  04 00 a0 e1                                      mov r0, r4
007d8a80  c7 10 87 e0                                      add r1, r7, r7, asr #1
007d8a84  7f ed ff eb                                      bl #0x7d4088
007d8a88  04 30 94 e5                                      ldr r3, [r4, #4]
007d8a8c  62 ff ff ea                                      b #0x7d881c
007d8a90  f4 fe ff aa                                      bge #0x7d8668
007d8a94  00 00 a0 e3                                      mov r0, #0
007d8a98  82 31 a0 e1                                      lsl r3, r2, #3
007d8a9c  00 10 95 e5                                      ldr r1, [r5]
007d8aa0  01 20 92 e2                                      adds r2, r2, #1
007d8aa4  03 c0 81 e0                                      add ip, r1, r3
007d8aa8  03 00 81 e7                                      str r0, [r1, r3]
007d8aac  04 00 8c e5                                      str r0, [ip, #4]
007d8ab0  08 30 83 e2                                      add r3, r3, #8
007d8ab4  f8 ff ff 1a                                      bne #0x7d8a9c
007d8ab8  74 30 9d e5                                      ldr r3, [sp, #0x74]
007d8abc  24 10 9d e5                                      ldr r1, [sp, #0x24]
007d8ac0  04 00 53 e3                                      cmp r3, #4
007d8ac4  00 30 a0 e3                                      mov r3, #0
007d8ac8  60 33 81 e5                                      str r3, [r1, #0x360]
007d8acc  eb fe ff 1a                                      bne #0x7d8680
007d8ad0  64 33 91 e5                                      ldr r3, [r1, #0x364]
007d8ad4  02 20 47 e2                                      sub r2, r7, #2
007d8ad8  30 20 8d e5                                      str r2, [sp, #0x30]
007d8adc  00 00 53 e3                                      cmp r3, #0
007d8ae0  0c 80 94 e5                                      ldr r8, [r4, #0xc]
007d8ae4  10 60 94 e5                                      ldr r6, [r4, #0x10]
007d8ae8  02 00 00 ca                                      bgt #0x7d8af8
007d8aec  05 00 a0 e1                                      mov r0, r5
007d8af0  01 10 a0 e3                                      mov r1, #1
007d8af4  63 ed ff eb                                      bl #0x7d4088
007d8af8  24 30 9d e5                                      ldr r3, [sp, #0x24]
007d8afc  60 13 93 e5                                      ldr r1, [r3, #0x360]
007d8b00  5c 23 93 e5                                      ldr r2, [r3, #0x35c]
007d8b04  18 30 84 e2                                      add r3, r4, #0x18
007d8b08  81 01 82 e0                                      add r0, r2, r1, lsl #3
007d8b0c  81 81 82 e7                                      str r8, [r2, r1, lsl #3]
007d8b10  04 60 80 e5                                      str r6, [r0, #4]
007d8b14  24 c0 9d e5                                      ldr ip, [sp, #0x24]
007d8b18  01 10 a0 e3                                      mov r1, #1
007d8b1c  64 23 9c e5                                      ldr r2, [ip, #0x364]
007d8b20  60 13 8c e5                                      str r1, [ip, #0x360]
007d8b24  10 60 93 e5                                      ldr r6, [r3, #0x10]
007d8b28  01 00 52 e1                                      cmp r2, r1
007d8b2c  0c 80 93 e5                                      ldr r8, [r3, #0xc]
007d8b30  02 00 00 ca                                      bgt #0x7d8b40
007d8b34  05 00 a0 e1                                      mov r0, r5
007d8b38  02 10 81 e2                                      add r1, r1, #2
007d8b3c  51 ed ff eb                                      bl #0x7d4088
007d8b40  24 00 9d e5                                      ldr r0, [sp, #0x24]
007d8b44  30 30 84 e2                                      add r3, r4, #0x30
007d8b48  60 13 90 e5                                      ldr r1, [r0, #0x360]
007d8b4c  5c 23 90 e5                                      ldr r2, [r0, #0x35c]
007d8b50  81 01 82 e0                                      add r0, r2, r1, lsl #3
007d8b54  81 81 82 e7                                      str r8, [r2, r1, lsl #3]
007d8b58  04 60 80 e5                                      str r6, [r0, #4]
007d8b5c  24 10 9d e5                                      ldr r1, [sp, #0x24]
007d8b60  24 c0 9d e5                                      ldr ip, [sp, #0x24]
007d8b64  64 23 91 e5                                      ldr r2, [r1, #0x364]
007d8b68  02 10 a0 e3                                      mov r1, #2
007d8b6c  60 13 8c e5                                      str r1, [ip, #0x360]
007d8b70  01 00 52 e1                                      cmp r2, r1
007d8b74  10 80 93 e5                                      ldr r8, [r3, #0x10]
007d8b78  0c a0 93 e5                                      ldr sl, [r3, #0xc]
007d8b7c  02 00 00 ca                                      bgt #0x7d8b8c
007d8b80  05 00 a0 e1                                      mov r0, r5
007d8b84  01 10 81 e0                                      add r1, r1, r1
007d8b88  3e ed ff eb                                      bl #0x7d4088
007d8b8c  24 00 9d e5                                      ldr r0, [sp, #0x24]
007d8b90  03 60 a0 e3                                      mov r6, #3
007d8b94  03 00 57 e3                                      cmp r7, #3
007d8b98  60 23 90 e5                                      ldr r2, [r0, #0x360]
007d8b9c  5c 33 90 e5                                      ldr r3, [r0, #0x35c]
007d8ba0  82 11 83 e0                                      add r1, r3, r2, lsl #3
007d8ba4  82 a1 83 e7                                      str sl, [r3, r2, lsl #3]
007d8ba8  04 80 81 e5                                      str r8, [r1, #4]
007d8bac  60 63 80 e5                                      str r6, [r0, #0x360]
007d8bb0  dc fe ff 0a                                      beq #0x7d8728
007d8bb4  96 07 03 e0                                      mul r3, r6, r7
007d8bb8  06 30 43 e2                                      sub r3, r3, #6
007d8bbc  1c 00 00 ea                                      b #0x7d8c34
007d8bc0  00 20 95 e5                                      ldr r2, [r5]
007d8bc4  86 11 82 e0                                      add r1, r2, r6, lsl #3
007d8bc8  86 b1 82 e7                                      str fp, [r2, r6, lsl #3]
007d8bcc  04 90 81 e5                                      str sb, [r1, #4]
007d8bd0  08 20 95 e5                                      ldr r2, [r5, #8]
007d8bd4  04 80 85 e5                                      str r8, [r5, #4]
007d8bd8  03 60 8a e2                                      add r6, sl, #3
007d8bdc  07 00 52 e1                                      cmp r2, r7
007d8be0  3c 90 94 e5                                      ldr sb, [r4, #0x3c]
007d8be4  40 a0 94 e5                                      ldr sl, [r4, #0x40]
007d8be8  27 00 00 ba                                      blt #0x7d8c8c
007d8bec  00 20 95 e5                                      ldr r2, [r5]
007d8bf0  88 11 82 e0                                      add r1, r2, r8, lsl #3
007d8bf4  88 91 82 e7                                      str sb, [r2, r8, lsl #3]
007d8bf8  04 a0 81 e5                                      str sl, [r1, #4]
007d8bfc  08 20 95 e5                                      ldr r2, [r5, #8]
007d8c00  04 70 85 e5                                      str r7, [r5, #4]
007d8c04  54 a0 94 e5                                      ldr sl, [r4, #0x54]
007d8c08  06 00 52 e1                                      cmp r2, r6
007d8c0c  58 80 94 e5                                      ldr r8, [r4, #0x58]
007d8c10  16 00 00 ba                                      blt #0x7d8c70
007d8c14  00 20 95 e5                                      ldr r2, [r5]
007d8c18  03 00 56 e1                                      cmp r6, r3
007d8c1c  18 40 84 e2                                      add r4, r4, #0x18
007d8c20  87 11 82 e0                                      add r1, r2, r7, lsl #3
007d8c24  87 a1 82 e7                                      str sl, [r2, r7, lsl #3]
007d8c28  04 80 81 e5                                      str r8, [r1, #4]
007d8c2c  04 60 85 e5                                      str r6, [r5, #4]
007d8c30  bc fe ff 0a                                      beq #0x7d8728
007d8c34  08 20 95 e5                                      ldr r2, [r5, #8]
007d8c38  01 80 86 e2                                      add r8, r6, #1
007d8c3c  24 b0 94 e5                                      ldr fp, [r4, #0x24]
007d8c40  08 00 52 e1                                      cmp r2, r8
007d8c44  28 90 94 e5                                      ldr sb, [r4, #0x28]
007d8c48  06 a0 a0 e1                                      mov sl, r6
007d8c4c  02 70 86 e2                                      add r7, r6, #2
007d8c50  da ff ff aa                                      bge #0x7d8bc0
007d8c54  c8 10 88 e0                                      add r1, r8, r8, asr #1
007d8c58  05 00 a0 e1                                      mov r0, r5
007d8c5c  04 30 8d e5                                      str r3, [sp, #4]
007d8c60  08 ed ff eb                                      bl #0x7d4088
007d8c64  04 60 95 e5                                      ldr r6, [r5, #4]
007d8c68  04 30 9d e5                                      ldr r3, [sp, #4]
007d8c6c  d3 ff ff ea                                      b #0x7d8bc0
007d8c70  05 00 a0 e1                                      mov r0, r5
007d8c74  c6 10 86 e0                                      add r1, r6, r6, asr #1
007d8c78  04 30 8d e5                                      str r3, [sp, #4]
007d8c7c  01 ed ff eb                                      bl #0x7d4088
007d8c80  04 70 95 e5                                      ldr r7, [r5, #4]
007d8c84  04 30 9d e5                                      ldr r3, [sp, #4]
007d8c88  e1 ff ff ea                                      b #0x7d8c14
007d8c8c  c7 10 87 e0                                      add r1, r7, r7, asr #1
007d8c90  05 00 a0 e1                                      mov r0, r5
007d8c94  04 30 8d e5                                      str r3, [sp, #4]
007d8c98  fa ec ff eb                                      bl #0x7d4088
007d8c9c  04 80 95 e5                                      ldr r8, [r5, #4]
007d8ca0  04 30 9d e5                                      ldr r3, [sp, #4]
007d8ca4  d0 ff ff ea                                      b #0x7d8bec
007d8ca8  24 20 9d e5                                      ldr r2, [sp, #0x24]
007d8cac  60 63 92 e5                                      ldr r6, [r2, #0x360]
007d8cb0  5c 83 92 e5                                      ldr r8, [r2, #0x35c]
007d8cb4  00 00 56 e3                                      cmp r6, #0
007d8cb8  61 fe ff da                                      ble #0x7d8644
007d8cbc  04 70 94 e5                                      ldr r7, [r4, #4]
007d8cc0  06 50 97 e0                                      adds r5, r7, r6
007d8cc4  02 00 00 0a                                      beq #0x7d8cd4
007d8cc8  08 30 94 e5                                      ldr r3, [r4, #8]
007d8ccc  03 00 55 e1                                      cmp r5, r3
007d8cd0  36 00 00 ca                                      bgt #0x7d8db0
007d8cd4  05 00 57 e1                                      cmp r7, r5
007d8cd8  87 31 a0 a1                                      lslge r3, r7, #3
007d8cdc  0a 00 00 aa                                      bge #0x7d8d0c
007d8ce0  87 31 a0 e1                                      lsl r3, r7, #3
007d8ce4  00 00 a0 e3                                      mov r0, #0
007d8ce8  03 20 a0 e1                                      mov r2, r3
007d8cec  00 10 94 e5                                      ldr r1, [r4]
007d8cf0  01 70 87 e2                                      add r7, r7, #1
007d8cf4  05 00 57 e1                                      cmp r7, r5
007d8cf8  02 c0 81 e0                                      add ip, r1, r2
007d8cfc  02 00 81 e7                                      str r0, [r1, r2]
007d8d00  04 00 8c e5                                      str r0, [ip, #4]
007d8d04  08 20 82 e2                                      add r2, r2, #8
007d8d08  f7 ff ff 1a                                      bne #0x7d8cec
007d8d0c  00 c0 a0 e3                                      mov ip, #0
007d8d10  04 50 84 e5                                      str r5, [r4, #4]
007d8d14  0c 10 a0 e1                                      mov r1, ip
007d8d18  08 20 a0 e1                                      mov r2, r8
007d8d1c  0c 50 b2 e7                                      ldr r5, [r2, ip]!
007d8d20  00 00 94 e5                                      ldr r0, [r4]
007d8d24  01 10 81 e2                                      add r1, r1, #1
007d8d28  06 00 51 e1                                      cmp r1, r6
007d8d2c  03 50 80 e7                                      str r5, [r0, r3]
007d8d30  04 20 92 e5                                      ldr r2, [r2, #4]
007d8d34  03 00 80 e0                                      add r0, r0, r3
007d8d38  08 c0 8c e2                                      add ip, ip, #8
007d8d3c  04 20 80 e5                                      str r2, [r0, #4]
007d8d40  08 30 83 e2                                      add r3, r3, #8
007d8d44  f3 ff ff 1a                                      bne #0x7d8d18
007d8d48  3d fe ff ea                                      b #0x7d8644
007d8d4c  07 00 a0 e1                                      mov r0, r7
007d8d50  03 10 a0 e3                                      mov r1, #3
007d8d54  52 d5 ec eb                                      bl #0x30e2a4
007d8d58  30 00 8d e5                                      str r0, [sp, #0x30]
007d8d5c  08 00 00 ea                                      b #0x7d8d84
007d8d60  00 30 95 e5                                      ldr r3, [r5]
007d8d64  07 00 56 e1                                      cmp r6, r7
007d8d68  18 40 84 e2                                      add r4, r4, #0x18
007d8d6c  89 21 83 e0                                      add r2, r3, sb, lsl #3
007d8d70  89 a1 83 e7                                      str sl, [r3, sb, lsl #3]
007d8d74  04 80 82 e5                                      str r8, [r2, #4]
007d8d78  04 60 85 e5                                      str r6, [r5, #4]
007d8d7c  69 fe ff 0a                                      beq #0x7d8728
007d8d80  06 90 a0 e1                                      mov sb, r6
007d8d84  08 30 95 e5                                      ldr r3, [r5, #8]
007d8d88  01 60 89 e2                                      add r6, sb, #1
007d8d8c  0c a0 94 e5                                      ldr sl, [r4, #0xc]
007d8d90  03 00 56 e1                                      cmp r6, r3
007d8d94  10 80 94 e5                                      ldr r8, [r4, #0x10]
007d8d98  f0 ff ff da                                      ble #0x7d8d60
007d8d9c  05 00 a0 e1                                      mov r0, r5
007d8da0  c6 10 86 e0                                      add r1, r6, r6, asr #1
007d8da4  b7 ec ff eb                                      bl #0x7d4088
007d8da8  04 90 95 e5                                      ldr sb, [r5, #4]
007d8dac  eb ff ff ea                                      b #0x7d8d60
007d8db0  04 00 a0 e1                                      mov r0, r4
007d8db4  c5 10 85 e0                                      add r1, r5, r5, asr #1
007d8db8  b2 ec ff eb                                      bl #0x7d4088
007d8dbc  c4 ff ff ea                                      b #0x7d8cd4
007d8dc0  0a ff ff aa                                      bge #0x7d89f0
007d8dc4  83 21 a0 e1                                      lsl r2, r3, #3
007d8dc8  38 10 9d e5                                      ldr r1, [sp, #0x38]
007d8dcc  00 c0 a0 e3                                      mov ip, #0
007d8dd0  01 30 93 e2                                      adds r3, r3, #1
007d8dd4  02 00 81 e0                                      add r0, r1, r2
007d8dd8  02 c0 81 e7                                      str ip, [r1, r2]
007d8ddc  04 c0 80 e5                                      str ip, [r0, #4]
007d8de0  08 20 82 e2                                      add r2, r2, #8
007d8de4  f7 ff ff 1a                                      bne #0x7d8dc8
007d8de8  00 ff ff ea                                      b #0x7d89f0
007d8dec  01 00 a0 e3                                      mov r0, #1
007d8df0  14 fe ff ea                                      b #0x7d8648

; FUNCTION 0x007d8df4, declared_size=1464, range_size=1464, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch11draw_bitmapERKN7gameswf6matrixEPNS0_11bitmap_infoERKNS0_4rectES8_NS0_4rgbaE
; demangled: render_handler_glitch::draw_bitmap(gameswf::matrix const&, gameswf::bitmap_info*, gameswf::rect const&, gameswf::rect const&, gameswf::rgba)
; decoder-mode: arm
007d8df4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d8df8  54 d0 4d e2                                      sub sp, sp, #0x54
007d8dfc  7f 60 dd e5                                      ldrb r6, [sp, #0x7f]
007d8e00  00 40 a0 e1                                      mov r4, r0
007d8e04  01 50 a0 e1                                      mov r5, r1
007d8e08  06 00 a0 e1                                      mov r0, r6
007d8e0c  1c 20 8d e5                                      str r2, [sp, #0x1c]
007d8e10  03 90 a0 e1                                      mov sb, r3
007d8e14  d2 d6 ec eb                                      bl #0x30e964
007d8e18  00 10 a0 e3                                      mov r1, #0
007d8e1c  5a d4 ec eb                                      bl #0x30df8c
007d8e20  00 00 50 e3                                      cmp r0, #0
007d8e24  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
007d8e28  78 70 9d e5                                      ldr r7, [sp, #0x78]
007d8e2c  7d a0 dd e5                                      ldrb sl, [sp, #0x7d]
007d8e30  2c 00 8d e5                                      str r0, [sp, #0x2c]
007d8e34  7e 80 dd e5                                      ldrb r8, [sp, #0x7e]
007d8e38  43 01 00 1a                                      bne #0x7d934c
007d8e3c  00 30 95 e5                                      ldr r3, [r5]
007d8e40  00 00 99 e5                                      ldr r0, [sb]
007d8e44  03 10 a0 e1                                      mov r1, r3
007d8e48  08 30 8d e5                                      str r3, [sp, #8]
007d8e4c  c6 d7 ec eb                                      bl #0x30ed6c
007d8e50  28 00 8d e5                                      str r0, [sp, #0x28]
007d8e54  04 10 95 e5                                      ldr r1, [r5, #4]
007d8e58  20 10 8d e5                                      str r1, [sp, #0x20]
007d8e5c  08 00 99 e5                                      ldr r0, [sb, #8]
007d8e60  c1 d7 ec eb                                      bl #0x30ed6c
007d8e64  08 b0 95 e5                                      ldr fp, [r5, #8]
007d8e68  00 20 a0 e1                                      mov r2, r0
007d8e6c  02 10 a0 e1                                      mov r1, r2
007d8e70  28 00 9d e5                                      ldr r0, [sp, #0x28]
007d8e74  10 20 8d e5                                      str r2, [sp, #0x10]
007d8e78  49 d7 ec eb                                      bl #0x30eba4
007d8e7c  0b 10 a0 e1                                      mov r1, fp
007d8e80  47 d7 ec eb                                      bl #0x30eba4
007d8e84  30 00 8d e5                                      str r0, [sp, #0x30]
007d8e88  0c c0 95 e5                                      ldr ip, [r5, #0xc]
007d8e8c  00 00 99 e5                                      ldr r0, [sb]
007d8e90  0c 10 a0 e1                                      mov r1, ip
007d8e94  0c c0 8d e5                                      str ip, [sp, #0xc]
007d8e98  b3 d7 ec eb                                      bl #0x30ed6c
007d8e9c  38 00 8d e5                                      str r0, [sp, #0x38]
007d8ea0  10 00 95 e5                                      ldr r0, [r5, #0x10]
007d8ea4  24 00 8d e5                                      str r0, [sp, #0x24]
007d8ea8  08 00 99 e5                                      ldr r0, [sb, #8]
007d8eac  24 10 9d e5                                      ldr r1, [sp, #0x24]
007d8eb0  ad d7 ec eb                                      bl #0x30ed6c
007d8eb4  3c 00 8d e5                                      str r0, [sp, #0x3c]
007d8eb8  14 50 95 e5                                      ldr r5, [r5, #0x14]
007d8ebc  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
007d8ec0  38 00 9d e5                                      ldr r0, [sp, #0x38]
007d8ec4  36 d7 ec eb                                      bl #0x30eba4
007d8ec8  05 10 a0 e1                                      mov r1, r5
007d8ecc  34 d7 ec eb                                      bl #0x30eba4
007d8ed0  08 30 9d e5                                      ldr r3, [sp, #8]
007d8ed4  34 00 8d e5                                      str r0, [sp, #0x34]
007d8ed8  04 00 99 e5                                      ldr r0, [sb, #4]
007d8edc  03 10 a0 e1                                      mov r1, r3
007d8ee0  a1 d7 ec eb                                      bl #0x30ed6c
007d8ee4  10 20 9d e5                                      ldr r2, [sp, #0x10]
007d8ee8  00 10 a0 e1                                      mov r1, r0
007d8eec  02 00 a0 e1                                      mov r0, r2
007d8ef0  2b d7 ec eb                                      bl #0x30eba4
007d8ef4  00 10 a0 e1                                      mov r1, r0
007d8ef8  0b 00 a0 e1                                      mov r0, fp
007d8efc  28 d7 ec eb                                      bl #0x30eba4
007d8f00  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007d8f04  14 00 8d e5                                      str r0, [sp, #0x14]
007d8f08  04 00 99 e5                                      ldr r0, [sb, #4]
007d8f0c  0c 10 a0 e1                                      mov r1, ip
007d8f10  95 d7 ec eb                                      bl #0x30ed6c
007d8f14  00 10 a0 e1                                      mov r1, r0
007d8f18  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
007d8f1c  20 d7 ec eb                                      bl #0x30eba4
007d8f20  00 10 a0 e1                                      mov r1, r0
007d8f24  05 00 a0 e1                                      mov r0, r5
007d8f28  1d d7 ec eb                                      bl #0x30eba4
007d8f2c  18 00 8d e5                                      str r0, [sp, #0x18]
007d8f30  0c 30 99 e5                                      ldr r3, [sb, #0xc]
007d8f34  20 10 9d e5                                      ldr r1, [sp, #0x20]
007d8f38  03 00 a0 e1                                      mov r0, r3
007d8f3c  08 30 8d e5                                      str r3, [sp, #8]
007d8f40  89 d7 ec eb                                      bl #0x30ed6c
007d8f44  00 10 a0 e1                                      mov r1, r0
007d8f48  28 00 9d e5                                      ldr r0, [sp, #0x28]
007d8f4c  14 d7 ec eb                                      bl #0x30eba4
007d8f50  00 10 a0 e1                                      mov r1, r0
007d8f54  0b 00 a0 e1                                      mov r0, fp
007d8f58  11 d7 ec eb                                      bl #0x30eba4
007d8f5c  08 30 9d e5                                      ldr r3, [sp, #8]
007d8f60  24 10 9d e5                                      ldr r1, [sp, #0x24]
007d8f64  00 90 a0 e1                                      mov sb, r0
007d8f68  03 00 a0 e1                                      mov r0, r3
007d8f6c  7e d7 ec eb                                      bl #0x30ed6c
007d8f70  00 10 a0 e1                                      mov r1, r0
007d8f74  38 00 9d e5                                      ldr r0, [sp, #0x38]
007d8f78  09 d7 ec eb                                      bl #0x30eba4
007d8f7c  00 10 a0 e1                                      mov r1, r0
007d8f80  05 00 a0 e1                                      mov r0, r5
007d8f84  06 d7 ec eb                                      bl #0x30eba4
007d8f88  09 10 a0 e1                                      mov r1, sb
007d8f8c  00 50 a0 e1                                      mov r5, r0
007d8f90  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d8f94  02 d7 ec eb                                      bl #0x30eba4
007d8f98  30 10 9d e5                                      ldr r1, [sp, #0x30]
007d8f9c  02 d5 ec eb                                      bl #0x30e3ac
007d8fa0  05 10 a0 e1                                      mov r1, r5
007d8fa4  28 00 8d e5                                      str r0, [sp, #0x28]
007d8fa8  18 00 9d e5                                      ldr r0, [sp, #0x18]
007d8fac  fc d6 ec eb                                      bl #0x30eba4
007d8fb0  34 10 9d e5                                      ldr r1, [sp, #0x34]
007d8fb4  fc d4 ec eb                                      bl #0x30e3ac
007d8fb8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007d8fbc  24 00 8d e5                                      str r0, [sp, #0x24]
007d8fc0  00 30 91 e5                                      ldr r3, [r1]
007d8fc4  01 00 a0 e1                                      mov r0, r1
007d8fc8  0f e0 a0 e1                                      mov lr, pc
007d8fcc  08 f0 93 e5                                      ldr pc, [r3, #8]
007d8fd0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007d8fd4  10 00 92 e5                                      ldr r0, [r2, #0x10]
007d8fd8  00 00 50 e3                                      cmp r0, #0
007d8fdc  01 00 00 0a                                      beq #0x7d8fe8
007d8fe0  01 10 a0 e3                                      mov r1, #1
007d8fe4  f2 ea ff eb                                      bl #0x7d3bb4
007d8fe8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
007d8fec  1f 3e 84 e2                                      add r3, r4, #0x1f0
007d8ff0  03 00 a0 e1                                      mov r0, r3
007d8ff4  10 10 8c e2                                      add r1, ip, #0x10
007d8ff8  20 30 8d e5                                      str r3, [sp, #0x20]
007d8ffc  91 f6 ff eb                                      bl #0x7d6a48
007d9000  74 33 94 e5                                      ldr r3, [r4, #0x374]
007d9004  48 23 94 e5                                      ldr r2, [r4, #0x348]
007d9008  30 00 9d e5                                      ldr r0, [sp, #0x30]
007d900c  67 b6 06 e3                                      movw fp, #0x6667
007d9010  14 20 83 e5                                      str r2, [r3, #0x14]
007d9014  0c 00 83 e5                                      str r0, [r3, #0xc]
007d9018  34 10 9d e5                                      ldr r1, [sp, #0x34]
007d901c  66 b6 46 e3                                      movt fp, #0x6666
007d9020  10 10 83 e5                                      str r1, [r3, #0x10]
007d9024  74 33 94 e5                                      ldr r3, [r4, #0x374]
007d9028  48 23 94 e5                                      ldr r2, [r4, #0x348]
007d902c  18 30 83 e2                                      add r3, r3, #0x18
007d9030  14 20 83 e5                                      str r2, [r3, #0x14]
007d9034  14 20 9d e5                                      ldr r2, [sp, #0x14]
007d9038  0c 20 83 e5                                      str r2, [r3, #0xc]
007d903c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007d9040  10 c0 83 e5                                      str ip, [r3, #0x10]
007d9044  74 23 94 e5                                      ldr r2, [r4, #0x374]
007d9048  48 13 94 e5                                      ldr r1, [r4, #0x348]
007d904c  00 30 a0 e3                                      mov r3, #0
007d9050  30 20 82 e2                                      add r2, r2, #0x30
007d9054  10 50 82 e5                                      str r5, [r2, #0x10]
007d9058  14 10 82 e5                                      str r1, [r2, #0x14]
007d905c  0c 90 82 e5                                      str sb, [r2, #0xc]
007d9060  74 23 94 e5                                      ldr r2, [r4, #0x374]
007d9064  48 13 94 e5                                      ldr r1, [r4, #0x348]
007d9068  14 50 a0 e3                                      mov r5, #0x14
007d906c  48 20 82 e2                                      add r2, r2, #0x48
007d9070  14 10 82 e5                                      str r1, [r2, #0x14]
007d9074  28 00 9d e5                                      ldr r0, [sp, #0x28]
007d9078  0c 00 82 e5                                      str r0, [r2, #0xc]
007d907c  24 10 9d e5                                      ldr r1, [sp, #0x24]
007d9080  10 10 82 e5                                      str r1, [r2, #0x10]
007d9084  00 00 97 e5                                      ldr r0, [r7]
007d9088  08 10 97 e5                                      ldr r1, [r7, #8]
007d908c  74 23 94 e5                                      ldr r2, [r4, #0x374]
007d9090  00 00 82 e5                                      str r0, [r2]
007d9094  04 10 82 e5                                      str r1, [r2, #4]
007d9098  08 10 97 e5                                      ldr r1, [r7, #8]
007d909c  74 23 94 e5                                      ldr r2, [r4, #0x374]
007d90a0  04 00 97 e5                                      ldr r0, [r7, #4]
007d90a4  18 00 82 e5                                      str r0, [r2, #0x18]
007d90a8  1c 10 82 e5                                      str r1, [r2, #0x1c]
007d90ac  0c 10 97 e5                                      ldr r1, [r7, #0xc]
007d90b0  00 00 97 e5                                      ldr r0, [r7]
007d90b4  74 23 94 e5                                      ldr r2, [r4, #0x374]
007d90b8  30 00 82 e5                                      str r0, [r2, #0x30]
007d90bc  34 10 82 e5                                      str r1, [r2, #0x34]
007d90c0  0c 00 97 e5                                      ldr r0, [r7, #0xc]
007d90c4  04 10 97 e5                                      ldr r1, [r7, #4]
007d90c8  74 23 94 e5                                      ldr r2, [r4, #0x374]
007d90cc  03 70 a0 e1                                      mov r7, r3
007d90d0  4c 00 82 e5                                      str r0, [r2, #0x4c]
007d90d4  48 10 82 e5                                      str r1, [r2, #0x48]
007d90d8  14 b0 8d e5                                      str fp, [sp, #0x14]
007d90dc  06 b0 a0 e1                                      mov fp, r6
007d90e0  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
007d90e4  74 33 94 e5                                      ldr r3, [r4, #0x374]
007d90e8  07 30 83 e0                                      add r3, r3, r7
007d90ec  08 60 c3 e5                                      strb r6, [r3, #8]
007d90f0  0b b0 c3 e5                                      strb fp, [r3, #0xb]
007d90f4  0a 80 c3 e5                                      strb r8, [r3, #0xa]
007d90f8  09 a0 c3 e5                                      strb sl, [r3, #9]
007d90fc  04 30 d4 e5                                      ldrb r3, [r4, #4]
007d9100  00 00 53 e3                                      cmp r3, #0
007d9104  17 00 00 0a                                      beq #0x7d9168
007d9108  74 93 94 e5                                      ldr sb, [r4, #0x374]
007d910c  07 90 89 e0                                      add sb, sb, r7
007d9110  0c 00 99 e5                                      ldr r0, [sb, #0xc]
007d9114  ec d4 ec eb                                      bl #0x30e4cc
007d9118  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007d911c  0a 00 80 e2                                      add r0, r0, #0xa
007d9120  9c c0 c3 e0                                      smull ip, r3, ip, r0
007d9124  c0 0f a0 e1                                      asr r0, r0, #0x1f
007d9128  c3 01 60 e0                                      rsb r0, r0, r3, asr #3
007d912c  95 00 00 e0                                      mul r0, r5, r0
007d9130  0b d6 ec eb                                      bl #0x30e964
007d9134  0c 00 89 e5                                      str r0, [sb, #0xc]
007d9138  74 93 94 e5                                      ldr sb, [r4, #0x374]
007d913c  07 90 89 e0                                      add sb, sb, r7
007d9140  10 00 99 e5                                      ldr r0, [sb, #0x10]
007d9144  e0 d4 ec eb                                      bl #0x30e4cc
007d9148  14 10 9d e5                                      ldr r1, [sp, #0x14]
007d914c  0a 00 80 e2                                      add r0, r0, #0xa
007d9150  91 10 c3 e0                                      smull r1, r3, r1, r0
007d9154  c0 0f a0 e1                                      asr r0, r0, #0x1f
007d9158  c3 01 60 e0                                      rsb r0, r0, r3, asr #3
007d915c  95 00 00 e0                                      mul r0, r5, r0
007d9160  ff d5 ec eb                                      bl #0x30e964
007d9164  10 00 89 e5                                      str r0, [sb, #0x10]
007d9168  18 70 87 e2                                      add r7, r7, #0x18
007d916c  60 00 57 e3                                      cmp r7, #0x60
007d9170  db ff ff 1a                                      bne #0x7d90e4
007d9174  2c 32 9f e5                                      ldr r3, [pc, #0x22c]
007d9178  78 13 94 e5                                      ldr r1, [r4, #0x378]
007d917c  04 20 a0 e3                                      mov r2, #4
007d9180  03 30 8f e0                                      add r3, pc, r3
007d9184  18 c0 93 e5                                      ldr ip, [r3, #0x18]
007d9188  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
007d918c  08 20 81 e5                                      str r2, [r1, #8]
007d9190  20 e0 93 e5                                      ldr lr, [r3, #0x20]
007d9194  50 50 8d e2                                      add r5, sp, #0x50
007d9198  74 13 94 e5                                      ldr r1, [r4, #0x374]
007d919c  0c c0 25 e5                                      str ip, [r5, #-0xc]!
007d91a0  48 c0 8d e2                                      add ip, sp, #0x48
007d91a4  04 00 8c e4                                      str r0, [ip], #4
007d91a8  00 e0 8c e5                                      str lr, [ip]
007d91ac  06 60 a0 e3                                      mov r6, #6
007d91b0  04 00 a0 e1                                      mov r0, r4
007d91b4  05 30 a0 e1                                      mov r3, r5
007d91b8  00 60 8d e5                                      str r6, [sp]
007d91bc  04 60 8d e5                                      str r6, [sp, #4]
007d91c0  11 fd ff eb                                      bl #0x7d860c
007d91c4  00 00 50 e3                                      cmp r0, #0
007d91c8  61 00 00 0a                                      beq #0x7d9354
007d91cc  0c 60 94 e5                                      ldr r6, [r4, #0xc]
007d91d0  00 00 56 e3                                      cmp r6, #0
007d91d4  5c 00 00 0a                                      beq #0x7d934c
007d91d8  44 20 96 e5                                      ldr r2, [r6, #0x44]
007d91dc  14 20 8d e5                                      str r2, [sp, #0x14]
007d91e0  74 73 94 e5                                      ldr r7, [r4, #0x374]
007d91e4  06 80 92 e2                                      adds r8, r2, #6
007d91e8  24 b0 96 e5                                      ldr fp, [r6, #0x24]
007d91ec  0c 40 87 e2                                      add r4, r7, #0xc
007d91f0  02 00 00 0a                                      beq #0x7d9200
007d91f4  48 30 96 e5                                      ldr r3, [r6, #0x48]
007d91f8  03 00 58 e1                                      cmp r8, r3
007d91fc  5d 00 00 ca                                      bgt #0x7d9378
007d9200  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007d9204  00 20 a0 e3                                      mov r2, #0
007d9208  8c 30 a0 e1                                      lsl r3, ip, #1
007d920c  40 00 96 e5                                      ldr r0, [r6, #0x40]
007d9210  02 10 83 e0                                      add r1, r3, r2
007d9214  02 20 82 e2                                      add r2, r2, #2
007d9218  00 c0 a0 e3                                      mov ip, #0
007d921c  0c 00 52 e3                                      cmp r2, #0xc
007d9220  b1 c0 80 e1                                      strh ip, [r0, r1]
007d9224  f8 ff ff 1a                                      bne #0x7d920c
007d9228  40 00 96 e5                                      ldr r0, [r6, #0x40]
007d922c  05 10 a0 e1                                      mov r1, r5
007d9230  44 80 86 e5                                      str r8, [r6, #0x44]
007d9234  03 00 80 e0                                      add r0, r0, r3
007d9238  8a d5 ec eb                                      bl #0x30e868
007d923c  24 50 96 e5                                      ldr r5, [r6, #0x24]
007d9240  04 50 95 e2                                      adds r5, r5, #4
007d9244  02 00 00 0a                                      beq #0x7d9254
007d9248  28 30 96 e5                                      ldr r3, [r6, #0x28]
007d924c  03 00 55 e1                                      cmp r5, r3
007d9250  50 00 00 ca                                      bgt #0x7d9398
007d9254  34 a0 96 e5                                      ldr sl, [r6, #0x34]
007d9258  24 50 86 e5                                      str r5, [r6, #0x24]
007d925c  04 a0 9a e2                                      adds sl, sl, #4
007d9260  02 00 00 0a                                      beq #0x7d9270
007d9264  38 30 96 e5                                      ldr r3, [r6, #0x38]
007d9268  03 00 5a e1                                      cmp sl, r3
007d926c  45 00 00 ca                                      bgt #0x7d9388
007d9270  20 30 96 e5                                      ldr r3, [r6, #0x20]
007d9274  30 90 96 e5                                      ldr sb, [r6, #0x30]
007d9278  0c 80 a0 e3                                      mov r8, #0xc
007d927c  98 3b 28 e0                                      mla r8, r8, fp, r3
007d9280  00 50 a0 e3                                      mov r5, #0
007d9284  34 a0 86 e5                                      str sl, [r6, #0x34]
007d9288  8b 91 89 e0                                      add sb, sb, fp, lsl #3
007d928c  05 10 a0 e1                                      mov r1, r5
007d9290  05 20 a0 e1                                      mov r2, r5
007d9294  02 30 94 e7                                      ldr r3, [r4, r2]
007d9298  02 00 84 e0                                      add r0, r4, r2
007d929c  04 00 80 e2                                      add r0, r0, #4
007d92a0  01 30 88 e7                                      str r3, [r8, r1]
007d92a4  04 c0 90 e4                                      ldr ip, [r0], #4
007d92a8  01 30 88 e0                                      add r3, r8, r1
007d92ac  04 30 83 e2                                      add r3, r3, #4
007d92b0  04 c0 83 e4                                      str ip, [r3], #4
007d92b4  00 a0 90 e5                                      ldr sl, [r0]
007d92b8  07 c0 a0 e1                                      mov ip, r7
007d92bc  09 00 a0 e1                                      mov r0, sb
007d92c0  00 a0 83 e5                                      str sl, [r3]
007d92c4  02 30 bc e7                                      ldr r3, [ip, r2]!
007d92c8  18 20 82 e2                                      add r2, r2, #0x18
007d92cc  12 0d 52 e3                                      cmp r2, #0x480
007d92d0  05 30 a0 e7                                      str r3, [r0, r5]!
007d92d4  04 30 9c e5                                      ldr r3, [ip, #4]
007d92d8  0c 10 81 e2                                      add r1, r1, #0xc
007d92dc  08 50 85 e2                                      add r5, r5, #8
007d92e0  04 30 80 e5                                      str r3, [r0, #4]
007d92e4  ea ff ff 1a                                      bne #0x7d9294
007d92e8  14 30 96 e5                                      ldr r3, [r6, #0x14]
007d92ec  18 20 96 e5                                      ldr r2, [r6, #0x18]
007d92f0  01 40 83 e2                                      add r4, r3, #1
007d92f4  02 00 54 e1                                      cmp r4, r2
007d92f8  03 00 00 da                                      ble #0x7d930c
007d92fc  10 00 86 e2                                      add r0, r6, #0x10
007d9300  c4 10 84 e0                                      add r1, r4, r4, asr #1
007d9304  fb c4 fe eb                                      bl #0x78a6f8
007d9308  14 30 96 e5                                      ldr r3, [r6, #0x14]
007d930c  18 20 a0 e3                                      mov r2, #0x18
007d9310  10 10 96 e5                                      ldr r1, [r6, #0x10]
007d9314  92 03 02 e0                                      mul r2, r2, r3
007d9318  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007d931c  02 30 81 e0                                      add r3, r1, r2
007d9320  04 00 83 e5                                      str r0, [r3, #4]
007d9324  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
007d9328  02 c0 81 e7                                      str ip, [r1, r2]
007d932c  06 20 a0 e3                                      mov r2, #6
007d9330  14 20 83 e5                                      str r2, [r3, #0x14]
007d9334  08 b0 83 e5                                      str fp, [r3, #8]
007d9338  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d933c  04 20 a0 e3                                      mov r2, #4
007d9340  0c 20 83 e5                                      str r2, [r3, #0xc]
007d9344  10 00 83 e5                                      str r0, [r3, #0x10]
007d9348  14 40 86 e5                                      str r4, [r6, #0x14]
007d934c  54 d0 8d e2                                      add sp, sp, #0x54
007d9350  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d9354  06 30 a0 e1                                      mov r3, r6
007d9358  20 00 9d e5                                      ldr r0, [sp, #0x20]
007d935c  de 1f 84 e2                                      add r1, r4, #0x378
007d9360  05 20 a0 e1                                      mov r2, r5
007d9364  4a f7 ff eb                                      bl #0x7d7094
007d9368  0c 60 94 e5                                      ldr r6, [r4, #0xc]
007d936c  00 00 56 e3                                      cmp r6, #0
007d9370  98 ff ff 1a                                      bne #0x7d91d8
007d9374  f4 ff ff ea                                      b #0x7d934c
007d9378  40 00 86 e2                                      add r0, r6, #0x40
007d937c  c8 10 88 e0                                      add r1, r8, r8, asr #1
007d9380  bd 82 fe eb                                      bl #0x779e7c
007d9384  9d ff ff ea                                      b #0x7d9200
007d9388  30 00 86 e2                                      add r0, r6, #0x30
007d938c  ca 10 8a e0                                      add r1, sl, sl, asr #1
007d9390  9c eb ff eb                                      bl #0x7d4208
007d9394  b5 ff ff ea                                      b #0x7d9270
007d9398  20 00 86 e2                                      add r0, r6, #0x20
007d939c  c5 10 85 e0                                      add r1, r5, r5, asr #1
007d93a0  76 eb ff eb                                      bl #0x7d4180
007d93a4  aa ff ff ea                                      b #0x7d9254
; mapping-symbol data/literal pool
007d93a8  bc 2e 13 00                                      .byte 0xbc, 0x2e, 0x13, 0x00

; FUNCTION 0x007d93ac, declared_size=332, range_size=332, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch4drawEPN7gameswf12render_cacheE
; demangled: render_handler_glitch::draw(gameswf::render_cache*)
; decoder-mode: arm
007d93ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d93b0  14 30 91 e5                                      ldr r3, [r1, #0x14]
007d93b4  00 50 a0 e1                                      mov r5, r0
007d93b8  44 03 90 e5                                      ldr r0, [r0, #0x344]
007d93bc  14 d0 4d e2                                      sub sp, sp, #0x14
007d93c0  00 00 53 e3                                      cmp r3, #0
007d93c4  01 60 a0 e1                                      mov r6, r1
007d93c8  08 00 8d e5                                      str r0, [sp, #8]
007d93cc  41 00 00 da                                      ble #0x7d94d8
007d93d0  00 a0 a0 e3                                      mov sl, #0
007d93d4  de 2f 85 e2                                      add r2, r5, #0x378
007d93d8  1f be 85 e2                                      add fp, r5, #0x1f0
007d93dc  0c 20 8d e5                                      str r2, [sp, #0xc]
007d93e0  0a 90 a0 e1                                      mov sb, sl
007d93e4  0c 80 a0 e3                                      mov r8, #0xc
007d93e8  01 70 a0 e1                                      mov r7, r1
007d93ec  10 40 97 e5                                      ldr r4, [r7, #0x10]
007d93f0  0b 00 a0 e1                                      mov r0, fp
007d93f4  0a 10 94 e7                                      ldr r1, [r4, sl]
007d93f8  0a 40 84 e0                                      add r4, r4, sl
007d93fc  10 10 81 e2                                      add r1, r1, #0x10
007d9400  90 f5 ff eb                                      bl #0x7d6a48
007d9404  08 30 9d e5                                      ldr r3, [sp, #8]
007d9408  00 00 53 e3                                      cmp r3, #0
007d940c  0c 10 94 d5                                      ldrle r1, [r4, #0xc]
007d9410  0d 00 00 da                                      ble #0x7d944c
007d9414  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007d9418  00 00 51 e3                                      cmp r1, #0
007d941c  0a 00 00 da                                      ble #0x7d944c
007d9420  00 30 a0 e3                                      mov r3, #0
007d9424  08 20 94 e5                                      ldr r2, [r4, #8]
007d9428  20 00 97 e5                                      ldr r0, [r7, #0x20]
007d942c  48 13 95 e5                                      ldr r1, [r5, #0x348]
007d9430  02 20 83 e0                                      add r2, r3, r2
007d9434  98 02 22 e0                                      mla r2, r8, r2, r0
007d9438  01 30 83 e2                                      add r3, r3, #1
007d943c  08 10 82 e5                                      str r1, [r2, #8]
007d9440  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007d9444  03 00 51 e1                                      cmp r1, r3
007d9448  f5 ff ff ca                                      bgt #0x7d9424
007d944c  05 00 a0 e1                                      mov r0, r5
007d9450  ba eb ff eb                                      bl #0x7d4340
007d9454  74 33 95 e5                                      ldr r3, [r5, #0x374]
007d9458  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007d945c  18 c0 a0 e3                                      mov ip, #0x18
007d9460  9c 32 21 e0                                      mla r1, ip, r2, r3
007d9464  01 00 53 e1                                      cmp r3, r1
007d9468  05 00 00 0a                                      beq #0x7d9484
007d946c  04 20 94 e5                                      ldr r2, [r4, #4]
007d9470  08 20 c3 e5                                      strb r2, [r3, #8]
007d9474  18 30 83 e2                                      add r3, r3, #0x18
007d9478  03 00 51 e1                                      cmp r1, r3
007d947c  fa ff ff 1a                                      bne #0x7d946c
007d9480  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007d9484  78 13 95 e5                                      ldr r1, [r5, #0x378]
007d9488  40 30 97 e5                                      ldr r3, [r7, #0x40]
007d948c  10 60 94 e5                                      ldr r6, [r4, #0x10]
007d9490  08 20 81 e5                                      str r2, [r1, #8]
007d9494  14 c0 94 e5                                      ldr ip, [r4, #0x14]
007d9498  86 60 83 e0                                      add r6, r3, r6, lsl #1
007d949c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007d94a0  74 13 95 e5                                      ldr r1, [r5, #0x374]
007d94a4  05 00 a0 e1                                      mov r0, r5
007d94a8  00 c0 8d e5                                      str ip, [sp]
007d94ac  06 30 a0 e1                                      mov r3, r6
007d94b0  06 c0 a0 e3                                      mov ip, #6
007d94b4  04 c0 8d e5                                      str ip, [sp, #4]
007d94b8  53 fc ff eb                                      bl #0x7d860c
007d94bc  00 00 50 e3                                      cmp r0, #0
007d94c0  06 00 00 0a                                      beq #0x7d94e0
007d94c4  14 30 97 e5                                      ldr r3, [r7, #0x14]
007d94c8  01 90 89 e2                                      add sb, sb, #1
007d94cc  18 a0 8a e2                                      add sl, sl, #0x18
007d94d0  03 00 59 e1                                      cmp sb, r3
007d94d4  c4 ff ff ba                                      blt #0x7d93ec
007d94d8  14 d0 8d e2                                      add sp, sp, #0x14
007d94dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d94e0  06 20 a0 e1                                      mov r2, r6
007d94e4  14 30 94 e5                                      ldr r3, [r4, #0x14]
007d94e8  0b 00 a0 e1                                      mov r0, fp
007d94ec  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007d94f0  e7 f6 ff eb                                      bl #0x7d7094
007d94f4  f2 ff ff ea                                      b #0x7d94c4

; FUNCTION 0x007d94f8, declared_size=572, range_size=572, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch19draw_mesh_primitiveEiPKviPKti
; demangled: render_handler_glitch::draw_mesh_primitive(int, void const*, int, unsigned short const*, int)
; decoder-mode: arm
007d94f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d94fc  b7 c3 d0 e5                                      ldrb ip, [r0, #0x3b7]
007d9500  64 d0 4d e2                                      sub sp, sp, #0x64
007d9504  00 40 a0 e1                                      mov r4, r0
007d9508  00 00 5c e3                                      cmp ip, #0
007d950c  10 10 8d e5                                      str r1, [sp, #0x10]
007d9510  02 50 a0 e1                                      mov r5, r2
007d9514  0c 30 8d e5                                      str r3, [sp, #0xc]
007d9518  01 00 00 1a                                      bne #0x7d9524
007d951c  64 d0 8d e2                                      add sp, sp, #0x64
007d9520  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d9524  02 10 83 e2                                      add r1, r3, #2
007d9528  84 eb ff eb                                      bl #0x7d4340
007d952c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007d9530  18 b0 a0 e3                                      mov fp, #0x18
007d9534  74 23 94 e5                                      ldr r2, [r4, #0x374]
007d9538  9b 01 0b e0                                      mul fp, fp, r1
007d953c  0b 30 82 e0                                      add r3, r2, fp
007d9540  03 00 52 e1                                      cmp r2, r3
007d9544  0a 00 00 0a                                      beq #0x7d9574
007d9548  00 c0 95 e5                                      ldr ip, [r5]
007d954c  04 00 95 e5                                      ldr r0, [r5, #4]
007d9550  48 13 94 e5                                      ldr r1, [r4, #0x348]
007d9554  0c c0 82 e5                                      str ip, [r2, #0xc]
007d9558  10 00 82 e5                                      str r0, [r2, #0x10]
007d955c  14 10 82 e5                                      str r1, [r2, #0x14]
007d9560  18 20 82 e2                                      add r2, r2, #0x18
007d9564  02 00 53 e1                                      cmp r3, r2
007d9568  08 50 85 e2                                      add r5, r5, #8
007d956c  f5 ff ff 1a                                      bne #0x7d9548
007d9570  74 33 94 e5                                      ldr r3, [r4, #0x374]
007d9574  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007d9578  10 10 94 e5                                      ldr r1, [r4, #0x10]
007d957c  1f 2e 84 e2                                      add r2, r4, #0x1f0
007d9580  3b 0e 84 e2                                      add r0, r4, #0x3b0
007d9584  14 20 8d e5                                      str r2, [sp, #0x14]
007d9588  00 c0 8d e5                                      str ip, [sp]
007d958c  70 f5 ff eb                                      bl #0x7d6b54
007d9590  1c 00 8d e2                                      add r0, sp, #0x1c
007d9594  04 10 a0 e1                                      mov r1, r4
007d9598  c3 2f 84 e2                                      add r2, r4, #0x30c
007d959c  37 f4 ff eb                                      bl #0x7d6680
007d95a0  74 53 94 e5                                      ldr r5, [r4, #0x374]
007d95a4  0b b0 85 e0                                      add fp, r5, fp
007d95a8  0b 00 55 e1                                      cmp r5, fp
007d95ac  43 00 00 0a                                      beq #0x7d96c0
007d95b0  0c 80 95 e5                                      ldr r8, [r5, #0xc]
007d95b4  20 10 9d e5                                      ldr r1, [sp, #0x20]
007d95b8  10 70 95 e5                                      ldr r7, [r5, #0x10]
007d95bc  08 00 a0 e1                                      mov r0, r8
007d95c0  e9 d5 ec eb                                      bl #0x30ed6c
007d95c4  30 10 9d e5                                      ldr r1, [sp, #0x30]
007d95c8  00 a0 a0 e1                                      mov sl, r0
007d95cc  07 00 a0 e1                                      mov r0, r7
007d95d0  e5 d5 ec eb                                      bl #0x30ed6c
007d95d4  00 10 a0 e1                                      mov r1, r0
007d95d8  0a 00 a0 e1                                      mov r0, sl
007d95dc  70 d5 ec eb                                      bl #0x30eba4
007d95e0  14 60 95 e5                                      ldr r6, [r5, #0x14]
007d95e4  00 a0 a0 e1                                      mov sl, r0
007d95e8  40 10 9d e5                                      ldr r1, [sp, #0x40]
007d95ec  06 00 a0 e1                                      mov r0, r6
007d95f0  dd d5 ec eb                                      bl #0x30ed6c
007d95f4  00 10 a0 e1                                      mov r1, r0
007d95f8  0a 00 a0 e1                                      mov r0, sl
007d95fc  68 d5 ec eb                                      bl #0x30eba4
007d9600  50 10 9d e5                                      ldr r1, [sp, #0x50]
007d9604  66 d5 ec eb                                      bl #0x30eba4
007d9608  24 10 9d e5                                      ldr r1, [sp, #0x24]
007d960c  00 90 a0 e1                                      mov sb, r0
007d9610  08 00 a0 e1                                      mov r0, r8
007d9614  d4 d5 ec eb                                      bl #0x30ed6c
007d9618  34 10 9d e5                                      ldr r1, [sp, #0x34]
007d961c  00 a0 a0 e1                                      mov sl, r0
007d9620  07 00 a0 e1                                      mov r0, r7
007d9624  d0 d5 ec eb                                      bl #0x30ed6c
007d9628  00 10 a0 e1                                      mov r1, r0
007d962c  0a 00 a0 e1                                      mov r0, sl
007d9630  5b d5 ec eb                                      bl #0x30eba4
007d9634  44 10 9d e5                                      ldr r1, [sp, #0x44]
007d9638  00 a0 a0 e1                                      mov sl, r0
007d963c  06 00 a0 e1                                      mov r0, r6
007d9640  c9 d5 ec eb                                      bl #0x30ed6c
007d9644  00 10 a0 e1                                      mov r1, r0
007d9648  0a 00 a0 e1                                      mov r0, sl
007d964c  54 d5 ec eb                                      bl #0x30eba4
007d9650  54 10 9d e5                                      ldr r1, [sp, #0x54]
007d9654  52 d5 ec eb                                      bl #0x30eba4
007d9658  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007d965c  00 a0 a0 e1                                      mov sl, r0
007d9660  08 00 a0 e1                                      mov r0, r8
007d9664  c0 d5 ec eb                                      bl #0x30ed6c
007d9668  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007d966c  00 80 a0 e1                                      mov r8, r0
007d9670  07 00 a0 e1                                      mov r0, r7
007d9674  bc d5 ec eb                                      bl #0x30ed6c
007d9678  00 10 a0 e1                                      mov r1, r0
007d967c  08 00 a0 e1                                      mov r0, r8
007d9680  47 d5 ec eb                                      bl #0x30eba4
007d9684  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
007d9688  00 70 a0 e1                                      mov r7, r0
007d968c  06 00 a0 e1                                      mov r0, r6
007d9690  b5 d5 ec eb                                      bl #0x30ed6c
007d9694  00 10 a0 e1                                      mov r1, r0
007d9698  07 00 a0 e1                                      mov r0, r7
007d969c  40 d5 ec eb                                      bl #0x30eba4
007d96a0  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
007d96a4  3e d5 ec eb                                      bl #0x30eba4
007d96a8  0c 00 85 e5                                      str r0, [r5, #0xc]
007d96ac  10 90 85 e5                                      str sb, [r5, #0x10]
007d96b0  14 a0 85 e5                                      str sl, [r5, #0x14]
007d96b4  18 50 85 e2                                      add r5, r5, #0x18
007d96b8  05 00 5b e1                                      cmp fp, r5
007d96bc  bb ff ff 1a                                      bne #0x7d95b0
007d96c0  78 33 94 e5                                      ldr r3, [r4, #0x378]
007d96c4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007d96c8  04 00 a0 e1                                      mov r0, r4
007d96cc  08 20 83 e5                                      str r2, [r3, #8]
007d96d0  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
007d96d4  74 13 94 e5                                      ldr r1, [r4, #0x374]
007d96d8  88 30 9d e5                                      ldr r3, [sp, #0x88]
007d96dc  00 c0 8d e5                                      str ip, [sp]
007d96e0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007d96e4  04 c0 8d e5                                      str ip, [sp, #4]
007d96e8  c7 fb ff eb                                      bl #0x7d860c
007d96ec  00 00 50 e3                                      cmp r0, #0
007d96f0  89 ff ff 1a                                      bne #0x7d951c
007d96f4  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
007d96f8  88 20 9d e5                                      ldr r2, [sp, #0x88]
007d96fc  00 00 52 e3                                      cmp r2, #0
007d9700  00 00 51 13                                      cmpne r1, #0
007d9704  05 00 00 0a                                      beq #0x7d9720
007d9708  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d970c  de 1f 84 e2                                      add r1, r4, #0x378
007d9710  88 20 9d e5                                      ldr r2, [sp, #0x88]
007d9714  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
007d9718  5d f6 ff eb                                      bl #0x7d7094
007d971c  7e ff ff ea                                      b #0x7d951c
007d9720  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d9724  de 1f 84 e2                                      add r1, r4, #0x378
007d9728  10 20 9d e5                                      ldr r2, [sp, #0x10]
007d972c  db f5 ff eb                                      bl #0x7d6ea0
007d9730  79 ff ff ea                                      b #0x7d951c

; FUNCTION 0x007d9734, declared_size=48, range_size=48, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch18draw_triangle_listEPKviPKti
; demangled: render_handler_glitch::draw_triangle_list(void const*, int, unsigned short const*, int)
; decoder-mode: arm
007d9734  04 e0 2d e5                                      str lr, [sp, #-4]!
007d9738  02 c0 a0 e1                                      mov ip, r2
007d973c  0c d0 4d e2                                      sub sp, sp, #0xc
007d9740  00 30 8d e5                                      str r3, [sp]
007d9744  0c 30 a0 e1                                      mov r3, ip
007d9748  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007d974c  01 20 a0 e1                                      mov r2, r1
007d9750  06 10 a0 e3                                      mov r1, #6
007d9754  04 c0 8d e5                                      str ip, [sp, #4]
007d9758  66 ff ff eb                                      bl #0x7d94f8
007d975c  0c d0 8d e2                                      add sp, sp, #0xc
007d9760  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007d9764, declared_size=44, range_size=44, mode=arm
; class-group: render_handler_glitch
; alias: _ZN21render_handler_glitch15draw_mesh_stripEPKvi
; demangled: render_handler_glitch::draw_mesh_strip(void const*, int)
; decoder-mode: arm
007d9764  04 e0 2d e5                                      str lr, [sp, #-4]!
007d9768  00 c0 a0 e3                                      mov ip, #0
007d976c  0c d0 4d e2                                      sub sp, sp, #0xc
007d9770  02 30 a0 e1                                      mov r3, r2
007d9774  01 20 a0 e1                                      mov r2, r1
007d9778  04 10 a0 e3                                      mov r1, #4
007d977c  04 c0 8d e5                                      str ip, [sp, #4]
007d9780  00 c0 8d e5                                      str ip, [sp]
007d9784  5b ff ff eb                                      bl #0x7d94f8
007d9788  0c d0 8d e2                                      add sp, sp, #0xc
007d978c  00 80 bd e8                                      ldm sp!, {pc}
