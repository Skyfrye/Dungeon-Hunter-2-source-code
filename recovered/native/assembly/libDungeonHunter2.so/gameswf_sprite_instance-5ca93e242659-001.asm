; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077ddc4, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZNK7gameswf15sprite_instance2isEi
; demangled: gameswf::sprite_instance::is(int) const
; decoder-mode: arm
0077ddc4  02 00 51 e3                                      cmp r1, #2
0077ddc8  04 00 00 0a                                      beq #0x77dde0
0077ddcc  01 00 51 e3                                      cmp r1, #1
0077ddd0  02 00 00 0a                                      beq #0x77dde0
0077ddd4  01 00 71 e2                                      rsbs r0, r1, #1
0077ddd8  00 00 a0 33                                      movlo r0, #0
0077dddc  1e ff 2f e1                                      bx lr
0077dde0  01 00 a0 e3                                      mov r0, #1
0077dde4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077dde8, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance17get_character_defEv
; demangled: gameswf::sprite_instance::get_character_def()
; decoder-mode: arm
0077dde8  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
0077ddec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077ddf0, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance20get_movie_definitionEv
; demangled: gameswf::sprite_instance::get_movie_definition()
; decoder-mode: arm
0077ddf0  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
0077ddf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077ddf8, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZNK7gameswf15sprite_instance17get_current_frameEv
; demangled: gameswf::sprite_instance::get_current_frame() const
; decoder-mode: arm
0077ddf8  f4 0e d0 e1                                      ldrsh r0, [r0, #0xe4]
0077ddfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077de00, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZNK7gameswf15sprite_instance15get_frame_countEv
; demangled: gameswf::sprite_instance::get_frame_count() const
; decoder-mode: arm
0077de00  10 40 2d e9                                      push {r4, lr}
0077de04  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
0077de08  03 00 a0 e1                                      mov r0, r3
0077de0c  00 30 93 e5                                      ldr r3, [r3]
0077de10  0f e0 a0 e1                                      mov lr, pc
0077de14  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0077de18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077de1c, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZNK7gameswf15sprite_instance17get_loading_frameEv
; demangled: gameswf::sprite_instance::get_loading_frame() const
; decoder-mode: arm
0077de1c  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
0077de20  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
0077de24  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077de28, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance13get_characterEi
; demangled: gameswf::sprite_instance::get_character(int)
; decoder-mode: arm
0077de28  00 00 a0 e3                                      mov r0, #0
0077de2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077de30, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZNK7gameswf15sprite_instance15get_pixel_scaleEv
; demangled: gameswf::sprite_instance::get_pixel_scale() const
; decoder-mode: arm
0077de30  10 40 2d e9                                      push {r4, lr}
0077de34  a4 30 90 e5                                      ldr r3, [r0, #0xa4]
0077de38  03 00 a0 e1                                      mov r0, r3
0077de3c  00 30 93 e5                                      ldr r3, [r3]
0077de40  0f e0 a0 e1                                      mov lr, pc
0077de44  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0077de48  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077de4c, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance15get_mouse_stateEPiS1_S1_
; demangled: gameswf::sprite_instance::get_mouse_state(int*, int*, int*)
; decoder-mode: arm
0077de4c  10 40 2d e9                                      push {r4, lr}
0077de50  a4 c0 90 e5                                      ldr ip, [r0, #0xa4]
0077de54  0c 00 a0 e1                                      mov r0, ip
0077de58  00 c0 9c e5                                      ldr ip, [ip]
0077de5c  0f e0 a0 e1                                      mov lr, pc
0077de60  08 f0 9c e5                                      ldr pc, [ip, #8]
0077de64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077de68, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance7_typeofEv
; demangled: gameswf::sprite_instance::_typeof()
; decoder-mode: arm
0077de68  04 00 9f e5                                      ldr r0, [pc, #4]
0077de6c  00 00 8f e0                                      add r0, pc, r0
0077de70  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0077de74  54 bc 18 00                                      .byte 0x54, 0xbc, 0x18, 0x00

; FUNCTION 0x0077de78, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZNK7gameswf15sprite_instance14get_play_stateEv
; demangled: gameswf::sprite_instance::get_play_state() const
; decoder-mode: arm
0077de78  d6 0e d0 e1                                      ldrsb r0, [r0, #0xe6]
0077de7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077de80, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance32find_previous_replace_or_add_tagEiii
; demangled: gameswf::sprite_instance::find_previous_replace_or_add_tag(int, int, int)
; decoder-mode: arm
0077de80  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077de84  73 30 ff e6                                      uxth r3, r3
0077de88  01 40 51 e2                                      subs r4, r1, #1
0077de8c  02 58 83 e1                                      orr r5, r3, r2, lsl #16
0077de90  00 60 a0 e1                                      mov r6, r0
0077de94  1c 00 00 4a                                      bmi #0x77df0c
0077de98  a0 30 96 e5                                      ldr r3, [r6, #0xa0]
0077de9c  04 10 a0 e1                                      mov r1, r4
0077dea0  03 00 a0 e1                                      mov r0, r3
0077dea4  00 30 93 e5                                      ldr r3, [r3]
0077dea8  0f e0 a0 e1                                      mov lr, pc
0077deac  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0077deb0  04 90 90 e5                                      ldr sb, [r0, #4]
0077deb4  00 b0 a0 e1                                      mov fp, r0
0077deb8  01 70 59 e2                                      subs r7, sb, #1
0077debc  10 00 00 4a                                      bmi #0x77df04
0077dec0  07 71 a0 e1                                      lsl r7, r7, #2
0077dec4  00 a0 a0 e3                                      mov sl, #0
0077dec8  01 00 00 ea                                      b #0x77ded4
0077decc  09 00 5a e1                                      cmp sl, sb
0077ded0  0b 00 00 0a                                      beq #0x77df04
0077ded4  00 30 9b e5                                      ldr r3, [fp]
0077ded8  01 a0 8a e2                                      add sl, sl, #1
0077dedc  07 80 93 e7                                      ldr r8, [r3, r7]
0077dee0  04 70 47 e2                                      sub r7, r7, #4
0077dee4  00 30 98 e5                                      ldr r3, [r8]
0077dee8  08 00 a0 e1                                      mov r0, r8
0077deec  0f e0 a0 e1                                      mov lr, pc
0077def0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0077def4  00 00 55 e1                                      cmp r5, r0
0077def8  f3 ff ff 1a                                      bne #0x77decc
0077defc  08 00 a0 e1                                      mov r0, r8
0077df00  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077df04  01 40 54 e2                                      subs r4, r4, #1
0077df08  e2 ff ff 2a                                      bhs #0x77de98
0077df0c  00 80 a0 e3                                      mov r8, #0
0077df10  f9 ff ff ea                                      b #0x77defc

; FUNCTION 0x0077df14, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance19execute_remove_tagsEi
; demangled: gameswf::sprite_instance::execute_remove_tags(int)
; decoder-mode: arm
0077df14  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077df18  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
0077df1c  00 60 a0 e1                                      mov r6, r0
0077df20  03 00 a0 e1                                      mov r0, r3
0077df24  00 30 93 e5                                      ldr r3, [r3]
0077df28  0f e0 a0 e1                                      mov lr, pc
0077df2c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0077df30  04 30 90 e5                                      ldr r3, [r0, #4]
0077df34  00 50 a0 e1                                      mov r5, r0
0077df38  00 00 53 e3                                      cmp r3, #0
0077df3c  15 00 00 da                                      ble #0x77df98
0077df40  00 40 a0 e3                                      mov r4, #0
0077df44  02 00 00 ea                                      b #0x77df54
0077df48  04 30 95 e5                                      ldr r3, [r5, #4]
0077df4c  03 00 54 e1                                      cmp r4, r3
0077df50  10 00 00 aa                                      bge #0x77df98
0077df54  00 30 95 e5                                      ldr r3, [r5]
0077df58  04 71 93 e7                                      ldr r7, [r3, r4, lsl #2]
0077df5c  01 40 84 e2                                      add r4, r4, #1
0077df60  00 30 97 e5                                      ldr r3, [r7]
0077df64  07 00 a0 e1                                      mov r0, r7
0077df68  0f e0 a0 e1                                      mov lr, pc
0077df6c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0077df70  00 00 50 e3                                      cmp r0, #0
0077df74  f3 ff ff 0a                                      beq #0x77df48
0077df78  00 30 97 e5                                      ldr r3, [r7]
0077df7c  07 00 a0 e1                                      mov r0, r7
0077df80  06 10 a0 e1                                      mov r1, r6
0077df84  0f e0 a0 e1                                      mov lr, pc
0077df88  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0077df8c  04 30 95 e5                                      ldr r3, [r5, #4]
0077df90  03 00 54 e1                                      cmp r4, r3
0077df94  ee ff ff ba                                      blt #0x77df54
0077df98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0077df9c, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance22get_frameid_from_labelERKNS_10tu_stringiE
; demangled: gameswf::sprite_instance::get_frameid_from_label(gameswf::tu_stringi const&)
; decoder-mode: arm
0077df9c  10 40 2d e9                                      push {r4, lr}
0077dfa0  08 d0 4d e2                                      sub sp, sp, #8
0077dfa4  08 20 8d e2                                      add r2, sp, #8
0077dfa8  00 40 e0 e3                                      mvn r4, #0
0077dfac  04 40 22 e5                                      str r4, [r2, #-4]!
0077dfb0  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
0077dfb4  03 00 a0 e1                                      mov r0, r3
0077dfb8  00 30 93 e5                                      ldr r3, [r3]
0077dfbc  0f e0 a0 e1                                      mov lr, pc
0077dfc0  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0077dfc4  00 00 50 e3                                      cmp r0, #0
0077dfc8  04 00 a0 01                                      moveq r0, r4
0077dfcc  04 00 9d 15                                      ldrne r0, [sp, #4]
0077dfd0  08 d0 8d e2                                      add sp, sp, #8
0077dfd4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077dfd8, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance18goto_labeled_frameERKNS_10tu_stringiE
; demangled: gameswf::sprite_instance::goto_labeled_frame(gameswf::tu_stringi const&)
; decoder-mode: arm
0077dfd8  10 40 2d e9                                      push {r4, lr}
0077dfdc  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
0077dfe0  08 d0 4d e2                                      sub sp, sp, #8
0077dfe4  08 20 8d e2                                      add r2, sp, #8
0077dfe8  00 40 a0 e1                                      mov r4, r0
0077dfec  00 00 e0 e3                                      mvn r0, #0
0077dff0  04 00 22 e5                                      str r0, [r2, #-4]!
0077dff4  03 00 a0 e1                                      mov r0, r3
0077dff8  00 30 93 e5                                      ldr r3, [r3]
0077dffc  0f e0 a0 e1                                      mov lr, pc
0077e000  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0077e004  00 00 50 e3                                      cmp r0, #0
0077e008  05 00 00 0a                                      beq #0x77e024
0077e00c  04 00 a0 e1                                      mov r0, r4
0077e010  00 30 94 e5                                      ldr r3, [r4]
0077e014  04 10 9d e5                                      ldr r1, [sp, #4]
0077e018  0f e0 a0 e1                                      mov lr, pc
0077e01c  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
0077e020  01 00 a0 e3                                      mov r0, #1
0077e024  08 d0 8d e2                                      add sp, sp, #8
0077e028  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077e02c, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance14get_drag_stateEPNS_9character10drag_stateE
; demangled: gameswf::sprite_instance::get_drag_state(gameswf::character::drag_state*)
; decoder-mode: arm
0077e02c  30 00 2d e9                                      push {r4, r5}
0077e030  a4 c0 90 e5                                      ldr ip, [r0, #0xa4]
0077e034  01 40 a0 e1                                      mov r4, r1
0077e038  04 50 a0 e1                                      mov r5, r4
0077e03c  58 c0 8c e2                                      add ip, ip, #0x58
0077e040  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0077e044  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
0077e048  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0077e04c  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
0077e050  30 00 bd e8                                      pop {r4, r5}
0077e054  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077e16c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance14get_root_movieEv
; demangled: gameswf::sprite_instance::get_root_movie()
; decoder-mode: arm
0077e16c  a4 00 90 e5                                      ldr r0, [r0, #0xa4]
0077e170  f7 d7 ff ea                                      b #0x774154

; FUNCTION 0x0077e174, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZNK7gameswf15sprite_instance20get_background_alphaEv
; demangled: gameswf::sprite_instance::get_background_alpha() const
; decoder-mode: arm
0077e174  a4 00 90 e5                                      ldr r0, [r0, #0xa4]
0077e178  31 d8 ff ea                                      b #0x774244

; FUNCTION 0x0077e17c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance20set_background_colorERKNS_4rgbaE
; demangled: gameswf::sprite_instance::set_background_color(gameswf::rgba const&)
; decoder-mode: arm
0077e17c  a4 00 90 e5                                      ldr r0, [r0, #0xa4]
0077e180  16 d8 ff ea                                      b #0x7741e0

; FUNCTION 0x0077e184, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance19update_world_cxformEv
; demangled: gameswf::sprite_instance::update_world_cxform()
; decoder-mode: arm
0077e184  70 40 2d e9                                      push {r4, r5, r6, lr}
0077e188  00 60 a0 e1                                      mov r6, r0
0077e18c  be 59 ff eb                                      bl #0x75488c
0077e190  ac 50 96 e5                                      ldr r5, [r6, #0xac]
0077e194  00 00 55 e3                                      cmp r5, #0
0077e198  0b 00 00 da                                      ble #0x77e1cc
0077e19c  00 40 a0 e3                                      mov r4, #0
0077e1a0  a8 30 96 e5                                      ldr r3, [r6, #0xa8]
0077e1a4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0077e1a8  01 40 84 e2                                      add r4, r4, #1
0077e1ac  00 00 53 e3                                      cmp r3, #0
0077e1b0  03 00 a0 e1                                      mov r0, r3
0077e1b4  02 00 00 0a                                      beq #0x77e1c4
0077e1b8  00 30 93 e5                                      ldr r3, [r3]
0077e1bc  0f e0 a0 e1                                      mov lr, pc
0077e1c0  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
0077e1c4  05 00 54 e1                                      cmp r4, r5
0077e1c8  f4 ff ff 1a                                      bne #0x77e1a0
0077e1cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0077e1d0, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance19update_world_matrixEv
; demangled: gameswf::sprite_instance::update_world_matrix()
; decoder-mode: arm
0077e1d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0077e1d4  00 60 a0 e1                                      mov r6, r0
0077e1d8  95 5a ff eb                                      bl #0x754c34
0077e1dc  ac 50 96 e5                                      ldr r5, [r6, #0xac]
0077e1e0  00 00 55 e3                                      cmp r5, #0
0077e1e4  0b 00 00 da                                      ble #0x77e218
0077e1e8  00 40 a0 e3                                      mov r4, #0
0077e1ec  a8 30 96 e5                                      ldr r3, [r6, #0xa8]
0077e1f0  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0077e1f4  01 40 84 e2                                      add r4, r4, #1
0077e1f8  00 00 53 e3                                      cmp r3, #0
0077e1fc  03 00 a0 e1                                      mov r0, r3
0077e200  02 00 00 0a                                      beq #0x77e210
0077e204  00 30 93 e5                                      ldr r3, [r3]
0077e208  0f e0 a0 e1                                      mov lr, pc
0077e20c  18 f1 93 e5                                      ldr pc, [r3, #0x118]
0077e210  05 00 54 e1                                      cmp r4, r5
0077e214  f4 ff ff 1a                                      bne #0x77e1ec
0077e218  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0077e2a8, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance16set_frame_scriptEi
; demangled: gameswf::sprite_instance::set_frame_script(int)
; decoder-mode: arm
0077e2a8  30 40 2d e9                                      push {r4, r5, lr}
0077e2ac  fc 50 80 e2                                      add r5, r0, #0xfc
0077e2b0  0c d0 4d e2                                      sub sp, sp, #0xc
0077e2b4  00 40 a0 e1                                      mov r4, r0
0077e2b8  04 10 8d e5                                      str r1, [sp, #4]
0077e2bc  05 00 a0 e1                                      mov r0, r5
0077e2c0  00 10 a0 e3                                      mov r1, #0
0077e2c4  d4 ff ff eb                                      bl #0x77e21c
0077e2c8  f8 00 94 e5                                      ldr r0, [r4, #0xf8]
0077e2cc  00 00 50 e3                                      cmp r0, #0
0077e2d0  02 00 00 0a                                      beq #0x77e2e0
0077e2d4  05 20 a0 e1                                      mov r2, r5
0077e2d8  04 10 8d e2                                      add r1, sp, #4
0077e2dc  de ff ff eb                                      bl #0x77e25c
0077e2e0  0c d0 8d e2                                      add sp, sp, #0xc
0077e2e4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0077e738, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10add_scriptEiPNS_11as_functionE
; demangled: gameswf::sprite_instance::add_script(int, gameswf::as_function*)
; decoder-mode: arm
0077e738  70 40 2d e9                                      push {r4, r5, r6, lr}
0077e73c  00 00 51 e3                                      cmp r1, #0
0077e740  10 d0 4d e2                                      sub sp, sp, #0x10
0077e744  00 40 a0 e1                                      mov r4, r0
0077e748  04 10 8d e5                                      str r1, [sp, #4]
0077e74c  02 50 a0 e1                                      mov r5, r2
0077e750  1b 00 00 ba                                      blt #0x77e7c4
0077e754  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
0077e758  03 00 a0 e1                                      mov r0, r3
0077e75c  00 30 93 e5                                      ldr r3, [r3]
0077e760  0f e0 a0 e1                                      mov lr, pc
0077e764  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0077e768  04 30 9d e5                                      ldr r3, [sp, #4]
0077e76c  03 00 50 e1                                      cmp r0, r3
0077e770  13 00 00 da                                      ble #0x77e7c4
0077e774  f8 60 94 e5                                      ldr r6, [r4, #0xf8]
0077e778  00 00 56 e3                                      cmp r6, #0
0077e77c  15 00 00 0a                                      beq #0x77e7d8
0077e780  00 00 55 e3                                      cmp r5, #0
0077e784  0c 50 8d e5                                      str r5, [sp, #0xc]
0077e788  01 00 00 0a                                      beq #0x77e794
0077e78c  05 00 a0 e1                                      mov r0, r5
0077e790  33 6d ff eb                                      bl #0x759c64
0077e794  06 00 a0 e1                                      mov r0, r6
0077e798  04 10 8d e2                                      add r1, sp, #4
0077e79c  0c 20 8d e2                                      add r2, sp, #0xc
0077e7a0  d2 ff ff eb                                      bl #0x77e6f0
0077e7a4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0077e7a8  00 00 50 e3                                      cmp r0, #0
0077e7ac  00 00 00 0a                                      beq #0x77e7b4
0077e7b0  a2 6e ff eb                                      bl #0x75a240
0077e7b4  f4 1e d4 e1                                      ldrsh r1, [r4, #0xe4]
0077e7b8  04 30 9d e5                                      ldr r3, [sp, #4]
0077e7bc  03 00 51 e1                                      cmp r1, r3
0077e7c0  01 00 00 0a                                      beq #0x77e7cc
0077e7c4  10 d0 8d e2                                      add sp, sp, #0x10
0077e7c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0077e7cc  04 00 a0 e1                                      mov r0, r4
0077e7d0  b4 fe ff eb                                      bl #0x77e2a8
0077e7d4  fa ff ff ea                                      b #0x77e7c4
0077e7d8  06 10 a0 e1                                      mov r1, r6
0077e7dc  04 00 a0 e3                                      mov r0, #4
0077e7e0  f0 50 ff eb                                      bl #0x752ba8
0077e7e4  00 30 a0 e3                                      mov r3, #0
0077e7e8  00 30 80 e5                                      str r3, [r0]
0077e7ec  00 60 a0 e1                                      mov r6, r0
0077e7f0  f8 00 84 e5                                      str r0, [r4, #0xf8]
0077e7f4  e1 ff ff ea                                      b #0x77e780

; FUNCTION 0x0077e874, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance17add_action_bufferEPNS_13action_bufferE
; demangled: gameswf::sprite_instance::add_action_buffer(gameswf::action_buffer*)
; decoder-mode: arm
0077e874  70 40 2d e9                                      push {r4, r5, r6, lr}
0077e878  c0 30 90 e5                                      ldr r3, [r0, #0xc0]
0077e87c  c4 20 90 e5                                      ldr r2, [r0, #0xc4]
0077e880  00 40 a0 e1                                      mov r4, r0
0077e884  01 50 83 e2                                      add r5, r3, #1
0077e888  02 00 55 e1                                      cmp r5, r2
0077e88c  01 60 a0 e1                                      mov r6, r1
0077e890  03 00 00 da                                      ble #0x77e8a4
0077e894  bc 00 80 e2                                      add r0, r0, #0xbc
0077e898  c5 10 85 e0                                      add r1, r5, r5, asr #1
0077e89c  d5 ff ff eb                                      bl #0x77e7f8
0077e8a0  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
0077e8a4  bc 20 94 e5                                      ldr r2, [r4, #0xbc]
0077e8a8  03 61 82 e7                                      str r6, [r2, r3, lsl #2]
0077e8ac  c0 50 84 e5                                      str r5, [r4, #0xc0]
0077e8b0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0077e9a4, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance9enumerateEPNS_14as_environmentE
; demangled: gameswf::sprite_instance::enumerate(gameswf::as_environment*)
; decoder-mode: arm
0077e9a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077e9a8  00 60 a0 e1                                      mov r6, r0
0077e9ac  01 70 a0 e1                                      mov r7, r1
0077e9b0  2a 52 ff eb                                      bl #0x753260
0077e9b4  ac 50 96 e5                                      ldr r5, [r6, #0xac]
0077e9b8  00 00 55 e3                                      cmp r5, #0
0077e9bc  10 00 00 da                                      ble #0x77ea04
0077e9c0  00 40 a0 e3                                      mov r4, #0
0077e9c4  a8 30 96 e5                                      ldr r3, [r6, #0xa8]
0077e9c8  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0077e9cc  00 00 53 e3                                      cmp r3, #0
0077e9d0  08 00 00 0a                                      beq #0x77e9f8
0077e9d4  44 10 93 e5                                      ldr r1, [r3, #0x44]
0077e9d8  07 00 a0 e1                                      mov r0, r7
0077e9dc  d0 30 d1 e1                                      ldrsb r3, [r1]
0077e9e0  01 00 73 e3                                      cmn r3, #1
0077e9e4  04 30 91 05                                      ldreq r3, [r1, #4]
0077e9e8  01 30 43 e2                                      sub r3, r3, #1
0077e9ec  00 00 53 e3                                      cmp r3, #0
0077e9f0  00 00 00 da                                      ble #0x77e9f8
0077e9f4  be a9 ff eb                                      bl #0x7690f4
0077e9f8  01 40 84 e2                                      add r4, r4, #1
0077e9fc  05 00 54 e1                                      cmp r4, r5
0077ea00  ef ff ff 1a                                      bne #0x77e9c4
0077ea04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0077ea08, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance7set_fpsEf
; demangled: gameswf::sprite_instance::set_fps(float)
; decoder-mode: arm
0077ea08  a4 00 90 e5                                      ldr r0, [r0, #0xa4]
0077ea0c  b3 d6 ff ea                                      b #0x7744e0

; FUNCTION 0x0077ea10, declared_size=116, range_size=116, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10clear_refsEPNS_4hashIPNS_9as_objectEbNS_15fixed_size_hashIS3_EEEES3_
; demangled: gameswf::sprite_instance::clear_refs(gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >*, gameswf::as_object*)
; decoder-mode: arm
0077ea10  70 40 2d e9                                      push {r4, r5, r6, lr}
0077ea14  08 d0 4d e2                                      sub sp, sp, #8
0077ea18  08 30 8d e2                                      add r3, sp, #8
0077ea1c  04 00 23 e5                                      str r0, [r3, #-4]!
0077ea20  01 40 a0 e1                                      mov r4, r1
0077ea24  00 50 a0 e1                                      mov r5, r0
0077ea28  03 10 a0 e1                                      mov r1, r3
0077ea2c  04 00 a0 e1                                      mov r0, r4
0077ea30  02 60 a0 e1                                      mov r6, r2
0077ea34  53 a8 ff eb                                      bl #0x768b88
0077ea38  00 00 50 e3                                      cmp r0, #0
0077ea3c  01 00 00 ba                                      blt #0x77ea48
0077ea40  08 d0 8d e2                                      add sp, sp, #8
0077ea44  70 80 bd e8                                      pop {r4, r5, r6, pc}
0077ea48  05 00 a0 e1                                      mov r0, r5
0077ea4c  04 10 a0 e1                                      mov r1, r4
0077ea50  06 20 a0 e1                                      mov r2, r6
0077ea54  d5 ac ff eb                                      bl #0x769db0
0077ea58  a8 00 85 e2                                      add r0, r5, #0xa8
0077ea5c  04 10 a0 e1                                      mov r1, r4
0077ea60  06 20 a0 e1                                      mov r2, r6
0077ea64  77 59 ff eb                                      bl #0x755048
0077ea68  e0 00 95 e5                                      ldr r0, [r5, #0xe0]
0077ea6c  00 00 50 e3                                      cmp r0, #0
0077ea70  f2 ff ff 0a                                      beq #0x77ea40
0077ea74  04 10 a0 e1                                      mov r1, r4
0077ea78  06 20 a0 e1                                      mov r2, r6
0077ea7c  14 39 01 eb                                      bl #0x7cced4
0077ea80  ee ff ff ea                                      b #0x77ea40

; FUNCTION 0x0077ea84, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZNK7gameswf15sprite_instance16get_loaded_bytesEv
; demangled: gameswf::sprite_instance::get_loaded_bytes() const
; decoder-mode: arm
0077ea84  10 40 2d e9                                      push {r4, lr}
0077ea88  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
0077ea8c  71 fd ff eb                                      bl #0x77e058
0077ea90  00 00 50 e3                                      cmp r0, #0
0077ea94  01 00 00 0a                                      beq #0x77eaa0
0077ea98  10 40 bd e8                                      pop {r4, lr}
0077ea9c  12 93 ff ea                                      b #0x7636ec
0077eaa0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077eaa4, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZNK7gameswf15sprite_instance14get_file_bytesEv
; demangled: gameswf::sprite_instance::get_file_bytes() const
; decoder-mode: arm
0077eaa4  10 40 2d e9                                      push {r4, lr}
0077eaa8  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
0077eaac  69 fd ff eb                                      bl #0x77e058
0077eab0  00 00 50 e3                                      cmp r0, #0
0077eab4  01 00 00 0a                                      beq #0x77eac0
0077eab8  10 40 bd e8                                      pop {r4, lr}
0077eabc  08 93 ff ea                                      b #0x7636e4
0077eac0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077eac4, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance9get_boundEPNS_4rectE
; demangled: gameswf::sprite_instance::get_bound(gameswf::rect*)
; decoder-mode: arm
0077eac4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0077eac8  ac 70 90 e5                                      ldr r7, [r0, #0xac]
0077eacc  02 21 e0 e3                                      mvn r2, #0x80000000
0077ead0  02 25 42 e2                                      sub r2, r2, #0x800000
0077ead4  02 35 e0 e3                                      mvn r3, #0x800000
0077ead8  00 00 57 e3                                      cmp r7, #0
0077eadc  14 d0 4d e2                                      sub sp, sp, #0x14
0077eae0  00 60 a0 e1                                      mov r6, r0
0077eae4  01 80 a0 e1                                      mov r8, r1
0077eae8  08 20 81 e5                                      str r2, [r1, #8]
0077eaec  0c 30 81 e5                                      str r3, [r1, #0xc]
0077eaf0  00 20 81 e5                                      str r2, [r1]
0077eaf4  04 30 81 e5                                      str r3, [r1, #4]
0077eaf8  22 00 00 0a                                      beq #0x77eb88
0077eafc  4c a0 90 e5                                      ldr sl, [r0, #0x4c]
0077eb00  20 00 00 da                                      ble #0x77eb88
0077eb04  00 40 a0 e3                                      mov r4, #0
0077eb08  0d 50 a0 e1                                      mov r5, sp
0077eb0c  a8 30 96 e5                                      ldr r3, [r6, #0xa8]
0077eb10  0d 10 a0 e1                                      mov r1, sp
0077eb14  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0077eb18  01 40 84 e2                                      add r4, r4, #1
0077eb1c  00 00 53 e2                                      subs r0, r3, #0
0077eb20  16 00 00 0a                                      beq #0x77eb80
0077eb24  00 30 93 e5                                      ldr r3, [r3]
0077eb28  0f e0 a0 e1                                      mov lr, pc
0077eb2c  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
0077eb30  00 10 9d e5                                      ldr r1, [sp]
0077eb34  04 00 9d e5                                      ldr r0, [sp, #4]
0077eb38  1b 3e ee eb                                      bl #0x30e3ac
0077eb3c  00 10 a0 e3                                      mov r1, #0
0077eb40  ec 3d ee eb                                      bl #0x30e2f8
0077eb44  00 00 50 e3                                      cmp r0, #0
0077eb48  0c 00 00 0a                                      beq #0x77eb80
0077eb4c  08 10 9d e5                                      ldr r1, [sp, #8]
0077eb50  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0077eb54  14 3e ee eb                                      bl #0x30e3ac
0077eb58  00 10 a0 e3                                      mov r1, #0
0077eb5c  e5 3d ee eb                                      bl #0x30e2f8
0077eb60  00 00 50 e3                                      cmp r0, #0
0077eb64  0d 10 a0 e1                                      mov r1, sp
0077eb68  0a 00 a0 e1                                      mov r0, sl
0077eb6c  03 00 00 0a                                      beq #0x77eb80
0077eb70  a7 57 00 eb                                      bl #0x794a14
0077eb74  08 00 a0 e1                                      mov r0, r8
0077eb78  0d 10 a0 e1                                      mov r1, sp
0077eb7c  54 fc ff eb                                      bl #0x77dcd4
0077eb80  07 00 54 e1                                      cmp r4, r7
0077eb84  e0 ff ff 1a                                      bne #0x77eb0c
0077eb88  14 d0 8d e2                                      add sp, sp, #0x14
0077eb8c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0077ec44, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance11call_methodEPKcPNS_8as_valueEi
; demangled: gameswf::sprite_instance::call_method(char const*, gameswf::as_value*, int)
; decoder-mode: arm
0077ec44  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0077ec48  01 40 a0 e1                                      mov r4, r1
0077ec4c  0c d0 4d e2                                      sub sp, sp, #0xc
0077ec50  00 50 a0 e1                                      mov r5, r0
0077ec54  00 10 91 e5                                      ldr r1, [r1]
0077ec58  04 00 a0 e1                                      mov r0, r4
0077ec5c  02 70 a0 e1                                      mov r7, r2
0077ec60  03 60 a0 e1                                      mov r6, r3
0077ec64  0f e0 a0 e1                                      mov lr, pc
0077ec68  58 f0 91 e5                                      ldr pc, [r1, #0x58]
0077ec6c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0077ec70  00 10 a0 e1                                      mov r1, r0
0077ec74  04 20 a0 e1                                      mov r2, r4
0077ec78  05 00 a0 e1                                      mov r0, r5
0077ec7c  07 30 a0 e1                                      mov r3, r7
0077ec80  40 10 8d e8                                      stm sp, {r6, ip}
0077ec84  dc f3 00 eb                                      bl #0x7bbbfc
0077ec88  05 00 a0 e1                                      mov r0, r5
0077ec8c  0c d0 8d e2                                      add sp, sp, #0xc
0077ec90  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0077ec94, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance21remove_display_objectEPNS_9characterE
; demangled: gameswf::sprite_instance::remove_display_object(gameswf::character*)
; decoder-mode: arm
0077ec94  a8 00 80 e2                                      add r0, r0, #0xa8
0077ec98  31 5e ff ea                                      b #0x756564

; FUNCTION 0x0077ec9c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance21remove_display_objectERKNS_9tu_stringE
; demangled: gameswf::sprite_instance::remove_display_object(gameswf::tu_string const&)
; decoder-mode: arm
0077ec9c  10 40 2d e9                                      push {r4, lr}
0077eca0  00 40 a0 e1                                      mov r4, r0
0077eca4  a8 00 80 e2                                      add r0, r0, #0xa8
0077eca8  6e 5f ff eb                                      bl #0x756a68
0077ecac  00 10 50 e2                                      subs r1, r0, #0
0077ecb0  05 00 00 0a                                      beq #0x77eccc
0077ecb4  38 20 91 e5                                      ldr r2, [r1, #0x38]
0077ecb8  04 00 a0 e1                                      mov r0, r4
0077ecbc  00 30 94 e5                                      ldr r3, [r4]
0077ecc0  b4 19 d1 e1                                      ldrh r1, [r1, #0x94]
0077ecc4  0f e0 a0 e1                                      mov lr, pc
0077ecc8  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
0077eccc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077ecd0, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance9stop_dragEv
; demangled: gameswf::sprite_instance::stop_drag()
; decoder-mode: arm
0077ecd0  a4 00 90 e5                                      ldr r0, [r0, #0xa4]
0077ecd4  20 d5 ff ea                                      b #0x77415c

; FUNCTION 0x0077ecd8, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10do_actionsERKNS_5arrayIPNS_13action_bufferEEE
; demangled: gameswf::sprite_instance::do_actions(gameswf::array<gameswf::action_buffer*> const&)
; decoder-mode: arm
0077ecd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077ecdc  04 30 91 e5                                      ldr r3, [r1, #4]
0077ece0  01 50 a0 e1                                      mov r5, r1
0077ece4  00 60 a0 e1                                      mov r6, r0
0077ece8  00 00 53 e3                                      cmp r3, #0
0077ecec  0d 00 00 da                                      ble #0x77ed28
0077ecf0  00 40 a0 e3                                      mov r4, #0
0077ecf4  00 20 95 e5                                      ldr r2, [r5]
0077ecf8  00 30 96 e5                                      ldr r3, [r6]
0077ecfc  06 00 a0 e1                                      mov r0, r6
0077ed00  04 71 92 e7                                      ldr r7, [r2, r4, lsl #2]
0077ed04  0f e0 a0 e1                                      mov lr, pc
0077ed08  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0077ed0c  00 10 a0 e1                                      mov r1, r0
0077ed10  07 00 a0 e1                                      mov r0, r7
0077ed14  5d 06 01 eb                                      bl #0x7c0690
0077ed18  04 30 95 e5                                      ldr r3, [r5, #4]
0077ed1c  01 40 84 e2                                      add r4, r4, #1
0077ed20  03 00 54 e1                                      cmp r4, r3
0077ed24  f2 ff ff ba                                      blt #0x77ecf4
0077ed28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0077ed2c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance17get_highest_depthEv
; demangled: gameswf::sprite_instance::get_highest_depth()
; decoder-mode: arm
0077ed2c  a8 00 80 e2                                      add r0, r0, #0xa8
0077ed30  b4 58 ff ea                                      b #0x755008

; FUNCTION 0x0077ed34, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance15get_id_at_depthEi
; demangled: gameswf::sprite_instance::get_id_at_depth(int)
; decoder-mode: arm
0077ed34  10 40 2d e9                                      push {r4, lr}
0077ed38  00 40 a0 e1                                      mov r4, r0
0077ed3c  a8 00 80 e2                                      add r0, r0, #0xa8
0077ed40  88 58 ff eb                                      bl #0x754f68
0077ed44  01 00 70 e3                                      cmn r0, #1
0077ed48  a8 30 94 15                                      ldrne r3, [r4, #0xa8]
0077ed4c  00 31 93 17                                      ldrne r3, [r3, r0, lsl #2]
0077ed50  38 00 93 15                                      ldrne r0, [r3, #0x38]
0077ed54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077ed58, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance21clear_display_objectsEv
; demangled: gameswf::sprite_instance::clear_display_objects()
; decoder-mode: arm
0077ed58  a8 00 80 e2                                      add r0, r0, #0xa8
0077ed5c  c6 5d ff ea                                      b #0x75647c

; FUNCTION 0x0077ed60, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance21remove_display_objectEii
; demangled: gameswf::sprite_instance::remove_display_object(int, int)
; decoder-mode: arm
0077ed60  a8 00 80 e2                                      add r0, r0, #0xa8
0077ed64  d0 5d ff ea                                      b #0x7564ac

; FUNCTION 0x0077ed68, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance19move_display_objectEiPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
; demangled: gameswf::sprite_instance::move_display_object(int, gameswf::cxform const*, gameswf::matrix const*, gameswf::effect const*, float, unsigned short)
; decoder-mode: arm
0077ed68  04 40 2d e5                                      str r4, [sp, #-4]!
0077ed6c  08 40 9d e5                                      ldr r4, [sp, #8]
0077ed70  bc c0 dd e1                                      ldrh ip, [sp, #0xc]
0077ed74  a8 00 80 e2                                      add r0, r0, #0xa8
0077ed78  0c c0 8d e5                                      str ip, [sp, #0xc]
0077ed7c  10 00 bd e8                                      ldm sp!, {r4}
0077ed80  a1 5b ff ea                                      b #0x755c0c

; FUNCTION 0x0077ed84, declared_size=488, range_size=488, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance18add_display_objectEtRKNS_9tu_stringERKNS_5arrayIPNS_9swf_eventEEEibPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
; demangled: gameswf::sprite_instance::add_display_object(unsigned short, gameswf::tu_string const&, gameswf::array<gameswf::swf_event*> const&, int, bool, gameswf::cxform const*, gameswf::matrix const*, gameswf::effect const*, float, unsigned short)
; decoder-mode: arm
0077ed84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077ed88  2c d0 4d e2                                      sub sp, sp, #0x2c
0077ed8c  a0 c0 90 e5                                      ldr ip, [r0, #0xa0]
0077ed90  02 60 a0 e1                                      mov r6, r2
0077ed94  b8 26 dd e1                                      ldrh r2, [sp, #0x68]
0077ed98  00 50 a0 e1                                      mov r5, r0
0077ed9c  03 70 a0 e1                                      mov r7, r3
0077eda0  0c 00 a0 e1                                      mov r0, ip
0077eda4  00 30 9c e5                                      ldr r3, [ip]
0077eda8  1c 20 8d e5                                      str r2, [sp, #0x1c]
0077edac  01 b0 a0 e1                                      mov fp, r1
0077edb0  50 a0 9d e5                                      ldr sl, [sp, #0x50]
0077edb4  54 90 dd e5                                      ldrb sb, [sp, #0x54]
0077edb8  0f e0 a0 e1                                      mov lr, pc
0077edbc  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0077edc0  00 40 50 e2                                      subs r4, r0, #0
0077edc4  62 00 00 0a                                      beq #0x77ef54
0077edc8  a8 80 85 e2                                      add r8, r5, #0xa8
0077edcc  08 00 a0 e1                                      mov r0, r8
0077edd0  0a 10 a0 e1                                      mov r1, sl
0077edd4  71 58 ff eb                                      bl #0x754fa0
0077edd8  00 00 50 e3                                      cmp r0, #0
0077eddc  02 00 00 0a                                      beq #0x77edec
0077ede0  38 30 90 e5                                      ldr r3, [r0, #0x38]
0077ede4  03 00 5b e1                                      cmp fp, r3
0077ede8  3c 00 00 0a                                      beq #0x77eee0
0077edec  04 00 a0 e1                                      mov r0, r4
0077edf0  00 30 94 e5                                      ldr r3, [r4]
0077edf4  05 10 a0 e1                                      mov r1, r5
0077edf8  0b 20 a0 e1                                      mov r2, fp
0077edfc  0f e0 a0 e1                                      mov lr, pc
0077ee00  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0077ee04  00 40 50 e2                                      subs r4, r0, #0
0077ee08  00 00 00 0a                                      beq #0x77ee10
0077ee0c  94 6b ff eb                                      bl #0x759c64
0077ee10  06 10 a0 e1                                      mov r1, r6
0077ee14  04 00 a0 e1                                      mov r0, r4
0077ee18  e6 51 ff eb                                      bl #0x7535b8
0077ee1c  04 60 97 e5                                      ldr r6, [r7, #4]
0077ee20  00 00 56 e3                                      cmp r6, #0
0077ee24  0e 00 00 da                                      ble #0x77ee64
0077ee28  00 50 a0 e3                                      mov r5, #0
0077ee2c  00 30 97 e5                                      ldr r3, [r7]
0077ee30  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0077ee34  2f f0 00 eb                                      bl #0x7baef8
0077ee38  00 20 97 e5                                      ldr r2, [r7]
0077ee3c  00 10 a0 e1                                      mov r1, r0
0077ee40  00 30 94 e5                                      ldr r3, [r4]
0077ee44  05 21 92 e7                                      ldr r2, [r2, r5, lsl #2]
0077ee48  04 00 a0 e1                                      mov r0, r4
0077ee4c  01 50 85 e2                                      add r5, r5, #1
0077ee50  08 20 82 e2                                      add r2, r2, #8
0077ee54  0f e0 a0 e1                                      mov lr, pc
0077ee58  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0077ee5c  06 00 55 e1                                      cmp r5, r6
0077ee60  f1 ff ff 1a                                      bne #0x77ee2c
0077ee64  58 c0 9d e5                                      ldr ip, [sp, #0x58]
0077ee68  08 00 a0 e1                                      mov r0, r8
0077ee6c  0a 20 a0 e1                                      mov r2, sl
0077ee70  00 c0 8d e5                                      str ip, [sp]
0077ee74  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
0077ee78  09 30 a0 e1                                      mov r3, sb
0077ee7c  04 10 a0 e1                                      mov r1, r4
0077ee80  04 c0 8d e5                                      str ip, [sp, #4]
0077ee84  60 c0 9d e5                                      ldr ip, [sp, #0x60]
0077ee88  08 c0 8d e5                                      str ip, [sp, #8]
0077ee8c  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0077ee90  0c c0 8d e5                                      str ip, [sp, #0xc]
0077ee94  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0077ee98  10 c0 8d e5                                      str ip, [sp, #0x10]
0077ee9c  b9 5d ff eb                                      bl #0x756588
0077eea0  00 30 94 e5                                      ldr r3, [r4]
0077eea4  00 20 a0 e3                                      mov r2, #0
0077eea8  13 10 a0 e3                                      mov r1, #0x13
0077eeac  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
0077eeb0  04 00 a0 e1                                      mov r0, r4
0077eeb4  20 10 cd e5                                      strb r1, [sp, #0x20]
0077eeb8  24 20 8d e5                                      str r2, [sp, #0x24]
0077eebc  21 20 cd e5                                      strb r2, [sp, #0x21]
0077eec0  b2 22 cd e1                                      strh r2, [sp, #0x22]
0077eec4  20 10 8d e2                                      add r1, sp, #0x20
0077eec8  33 ff 2f e1                                      blx r3
0077eecc  04 00 a0 e1                                      mov r0, r4
0077eed0  da 6c ff eb                                      bl #0x75a240
0077eed4  04 00 a0 e1                                      mov r0, r4
0077eed8  2c d0 8d e2                                      add sp, sp, #0x2c
0077eedc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077eee0  44 10 90 e5                                      ldr r1, [r0, #0x44]
0077eee4  01 00 56 e1                                      cmp r6, r1
0077eee8  0a 00 00 0a                                      beq #0x77ef18
0077eeec  d0 30 d6 e1                                      ldrsb r3, [r6]
0077eef0  01 00 73 e3                                      cmn r3, #1
0077eef4  d0 30 d1 e1                                      ldrsb r3, [r1]
0077eef8  01 00 86 12                                      addne r0, r6, #1
0077eefc  0c 00 96 05                                      ldreq r0, [r6, #0xc]
0077ef00  01 00 73 e3                                      cmn r3, #1
0077ef04  01 10 81 12                                      addne r1, r1, #1
0077ef08  0c 10 91 05                                      ldreq r1, [r1, #0xc]
0077ef0c  02 3d ee eb                                      bl #0x30e31c
0077ef10  00 00 50 e3                                      cmp r0, #0
0077ef14  b4 ff ff 1a                                      bne #0x77edec
0077ef18  60 30 9d e5                                      ldr r3, [sp, #0x60]
0077ef1c  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0077ef20  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0077ef24  00 30 8d e5                                      str r3, [sp]
0077ef28  04 c0 8d e5                                      str ip, [sp, #4]
0077ef2c  08 20 8d e5                                      str r2, [sp, #8]
0077ef30  05 00 a0 e1                                      mov r0, r5
0077ef34  0a 10 a0 e1                                      mov r1, sl
0077ef38  58 20 9d e5                                      ldr r2, [sp, #0x58]
0077ef3c  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0077ef40  00 c0 95 e5                                      ldr ip, [r5]
0077ef44  0f e0 a0 e1                                      mov lr, pc
0077ef48  b8 f0 9c e5                                      ldr pc, [ip, #0xb8]
0077ef4c  00 40 a0 e3                                      mov r4, #0
0077ef50  df ff ff ea                                      b #0x77eed4
0077ef54  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0077ef58  0b 10 a0 e1                                      mov r1, fp
0077ef5c  00 00 8f e0                                      add r0, pc, r0
0077ef60  87 88 ff eb                                      bl #0x761184
0077ef64  da ff ff ea                                      b #0x77eed4
; mapping-symbol data/literal pool
0077ef68  74 ab 18 00                                      .byte 0x74, 0xab, 0x18, 0x00

; FUNCTION 0x0077ef6c, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10goto_frameERKNS_9tu_stringE
; demangled: gameswf::sprite_instance::goto_frame(gameswf::tu_string const&)
; decoder-mode: arm
0077ef6c  30 40 2d e9                                      push {r4, r5, lr}
0077ef70  d0 30 d1 e1                                      ldrsb r3, [r1]
0077ef74  01 40 a0 e1                                      mov r4, r1
0077ef78  0c d0 4d e2                                      sub sp, sp, #0xc
0077ef7c  01 00 73 e3                                      cmn r3, #1
0077ef80  01 10 81 12                                      addne r1, r1, #1
0077ef84  0c 10 94 05                                      ldreq r1, [r4, #0xc]
0077ef88  00 50 a0 e1                                      mov r5, r0
0077ef8c  0d 00 a0 e1                                      mov r0, sp
0077ef90  8c 9a 00 eb                                      bl #0x7a59c8
0077ef94  00 00 50 e3                                      cmp r0, #0
0077ef98  06 00 00 1a                                      bne #0x77efb8
0077ef9c  05 00 a0 e1                                      mov r0, r5
0077efa0  04 10 a0 e1                                      mov r1, r4
0077efa4  00 30 95 e5                                      ldr r3, [r5]
0077efa8  0f e0 a0 e1                                      mov lr, pc
0077efac  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0077efb0  0c d0 8d e2                                      add sp, sp, #0xc
0077efb4  30 80 bd e8                                      pop {r4, r5, pc}
0077efb8  d0 00 cd e1                                      ldrd r0, r1, [sp]
0077efbc  98 3e ee eb                                      bl #0x30ea24
0077efc0  00 30 95 e5                                      ldr r3, [r5]
0077efc4  01 10 40 e2                                      sub r1, r0, #1
0077efc8  05 00 a0 e1                                      mov r0, r5
0077efcc  0f e0 a0 e1                                      mov lr, pc
0077efd0  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
0077efd4  f5 ff ff ea                                      b #0x77efb0

; FUNCTION 0x0077efd8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance9constructEv
; demangled: gameswf::sprite_instance::construct()
; decoder-mode: arm
0077efd8  10 40 2d e9                                      push {r4, lr}
0077efdc  eb 30 d0 e5                                      ldrb r3, [r0, #0xeb]
0077efe0  00 40 a0 e1                                      mov r4, r0
0077efe4  00 00 53 e3                                      cmp r3, #0
0077efe8  06 00 00 1a                                      bne #0x77f008
0077efec  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
0077eff0  04 10 a0 e1                                      mov r1, r4
0077eff4  47 83 ff eb                                      bl #0x75fd18
0077eff8  a8 00 84 e2                                      add r0, r4, #0xa8
0077effc  83 5a ff eb                                      bl #0x755a10
0077f000  01 30 a0 e3                                      mov r3, #1
0077f004  eb 30 c4 e5                                      strb r3, [r4, #0xeb]
0077f008  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077f00c, declared_size=380, range_size=380, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance24get_topmost_mouse_entityEff
; demangled: gameswf::sprite_instance::get_topmost_mouse_entity(float, float)
; decoder-mode: arm
0077f00c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077f010  00 40 a0 e1                                      mov r4, r0
0077f014  9b 00 d0 e5                                      ldrb r0, [r0, #0x9b]
0077f018  1c d0 4d e2                                      sub sp, sp, #0x1c
0077f01c  04 10 8d e5                                      str r1, [sp, #4]
0077f020  00 00 50 e3                                      cmp r0, #0
0077f024  00 20 8d e5                                      str r2, [sp]
0077f028  00 50 a0 01                                      moveq r5, r0
0077f02c  41 00 00 0a                                      beq #0x77f138
0077f030  54 30 94 e5                                      ldr r3, [r4, #0x54]
0077f034  00 00 53 e3                                      cmp r3, #0
0077f038  06 00 00 0a                                      beq #0x77f058
0077f03c  68 00 93 e5                                      ldr r0, [r3, #0x68]
0077f040  00 00 50 e3                                      cmp r0, #0
0077f044  03 00 00 0a                                      beq #0x77f058
0077f048  04 10 a0 e1                                      mov r1, r4
0077f04c  04 20 8d e2                                      add r2, sp, #4
0077f050  0d 30 a0 e1                                      mov r3, sp
0077f054  2e e1 ff eb                                      bl #0x777514
0077f058  04 c0 9d e5                                      ldr ip, [sp, #4]
0077f05c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0077f060  00 30 a0 e3                                      mov r3, #0
0077f064  08 c0 8d e5                                      str ip, [sp, #8]
0077f068  00 c0 9d e5                                      ldr ip, [sp]
0077f06c  10 10 8d e2                                      add r1, sp, #0x10
0077f070  08 20 8d e2                                      add r2, sp, #8
0077f074  14 30 8d e5                                      str r3, [sp, #0x14]
0077f078  0c c0 8d e5                                      str ip, [sp, #0xc]
0077f07c  10 30 8d e5                                      str r3, [sp, #0x10]
0077f080  3d 53 ff eb                                      bl #0x753d7c
0077f084  ac 80 94 e5                                      ldr r8, [r4, #0xac]
0077f088  01 70 58 e2                                      subs r7, r8, #1
0077f08c  39 00 00 4a                                      bmi #0x77f178
0077f090  ec a0 9f e5                                      ldr sl, [pc, #0xec]
0077f094  00 60 a0 e3                                      mov r6, #0
0077f098  07 71 a0 e1                                      lsl r7, r7, #2
0077f09c  0a a0 8f e0                                      add sl, pc, sl
0077f0a0  06 90 a0 e1                                      mov sb, r6
0077f0a4  06 b0 a0 e1                                      mov fp, r6
0077f0a8  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0077f0ac  07 50 93 e7                                      ldr r5, [r3, r7]
0077f0b0  00 00 55 e2                                      subs r0, r5, #0
0077f0b4  18 00 00 0a                                      beq #0x77f11c
0077f0b8  9b 30 d5 e5                                      ldrb r3, [r5, #0x9b]
0077f0bc  00 00 53 e3                                      cmp r3, #0
0077f0c0  15 00 00 0a                                      beq #0x77f11c
0077f0c4  10 10 9d e5                                      ldr r1, [sp, #0x10]
0077f0c8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0077f0cc  00 30 95 e5                                      ldr r3, [r5]
0077f0d0  0f e0 a0 e1                                      mov lr, pc
0077f0d4  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0077f0d8  00 b0 50 e2                                      subs fp, r0, #0
0077f0dc  05 00 00 0a                                      beq #0x77f0f8
0077f0e0  00 30 9b e5                                      ldr r3, [fp]
0077f0e4  0f e0 a0 e1                                      mov lr, pc
0077f0e8  5c f1 93 e5                                      ldr pc, [r3, #0x15c]
0077f0ec  00 00 50 e3                                      cmp r0, #0
0077f0f0  1e 00 00 1a                                      bne #0x77f170
0077f0f4  01 90 a0 e3                                      mov sb, #1
0077f0f8  44 30 95 e5                                      ldr r3, [r5, #0x44]
0077f0fc  0a 10 a0 e1                                      mov r1, sl
0077f100  d0 20 d3 e1                                      ldrsb r2, [r3]
0077f104  01 00 83 e2                                      add r0, r3, #1
0077f108  01 00 72 e3                                      cmn r2, #1
0077f10c  0c 00 93 05                                      ldreq r0, [r3, #0xc]
0077f110  81 3c ee eb                                      bl #0x30e31c
0077f114  00 00 50 e3                                      cmp r0, #0
0077f118  03 00 00 0a                                      beq #0x77f12c
0077f11c  01 60 86 e2                                      add r6, r6, #1
0077f120  08 00 56 e1                                      cmp r6, r8
0077f124  04 70 47 e2                                      sub r7, r7, #4
0077f128  de ff ff 1a                                      bne #0x77f0a8
0077f12c  00 00 59 e3                                      cmp sb, #0
0077f130  03 00 00 1a                                      bne #0x77f144
0077f134  0b 50 a0 e1                                      mov r5, fp
0077f138  05 00 a0 e1                                      mov r0, r5
0077f13c  1c d0 8d e2                                      add sp, sp, #0x1c
0077f140  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077f144  00 50 a0 e3                                      mov r5, #0
0077f148  00 30 94 e5                                      ldr r3, [r4]
0077f14c  04 00 a0 e1                                      mov r0, r4
0077f150  0f e0 a0 e1                                      mov lr, pc
0077f154  5c f1 93 e5                                      ldr pc, [r3, #0x15c]
0077f158  00 00 50 e3                                      cmp r0, #0
0077f15c  04 50 a0 11                                      movne r5, r4
0077f160  f4 ff ff 1a                                      bne #0x77f138
0077f164  00 00 55 e3                                      cmp r5, #0
0077f168  f2 ff ff 1a                                      bne #0x77f138
0077f16c  f0 ff ff ea                                      b #0x77f134
0077f170  0b 50 a0 e1                                      mov r5, fp
0077f174  f3 ff ff ea                                      b #0x77f148
0077f178  00 b0 a0 e3                                      mov fp, #0
0077f17c  0b 50 a0 e1                                      mov r5, fp
0077f180  ec ff ff ea                                      b #0x77f138
; mapping-symbol data/literal pool
0077f184  64 aa 18 00                                      .byte 0x64, 0xaa, 0x18, 0x00

; FUNCTION 0x0077f188, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance22can_handle_mouse_eventEv
; demangled: gameswf::sprite_instance::can_handle_mouse_event()
; decoder-mode: arm
0077f188  10 40 2d e9                                      push {r4, lr}
0077f18c  00 30 90 e5                                      ldr r3, [r0]
0077f190  00 40 a0 e1                                      mov r4, r0
0077f194  0f e0 a0 e1                                      mov lr, pc
0077f198  70 f1 93 e5                                      ldr pc, [r3, #0x170]
0077f19c  00 00 50 e3                                      cmp r0, #0
0077f1a0  04 00 00 0a                                      beq #0x77f1b8
0077f1a4  9c 30 d4 e5                                      ldrb r3, [r4, #0x9c]
0077f1a8  00 00 53 e3                                      cmp r3, #0
0077f1ac  02 00 00 0a                                      beq #0x77f1bc
0077f1b0  01 00 a0 e3                                      mov r0, #1
0077f1b4  10 80 bd e8                                      pop {r4, pc}
0077f1b8  10 80 bd e8                                      pop {r4, pc}
0077f1bc  04 00 a0 e1                                      mov r0, r4
0077f1c0  10 40 bd e8                                      pop {r4, lr}
0077f1c4  c3 a6 00 ea                                      b #0x7a8cd8

; FUNCTION 0x0077f1c8, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance4dumpERNS_9tu_stringE
; demangled: gameswf::sprite_instance::dump(gameswf::tu_string&)
; decoder-mode: arm
0077f1c8  70 40 2d e9                                      push {r4, r5, r6, lr}
0077f1cc  d0 60 d1 e1                                      ldrsb r6, [r1]
0077f1d0  01 40 a0 e1                                      mov r4, r1
0077f1d4  00 50 a0 e1                                      mov r5, r0
0077f1d8  01 00 76 e3                                      cmn r6, #1
0077f1dc  04 60 91 05                                      ldreq r6, [r1, #4]
0077f1e0  01 00 a0 e1                                      mov r0, r1
0077f1e4  01 60 46 e2                                      sub r6, r6, #1
0077f1e8  02 10 86 e2                                      add r1, r6, #2
0077f1ec  c8 4a ff eb                                      bl #0x751d14
0077f1f0  d0 30 d4 e1                                      ldrsb r3, [r4]
0077f1f4  20 20 a0 e3                                      mov r2, #0x20
0077f1f8  01 00 73 e3                                      cmn r3, #1
0077f1fc  0c 10 94 05                                      ldreq r1, [r4, #0xc]
0077f200  01 10 84 12                                      addne r1, r4, #1
0077f204  06 30 81 e0                                      add r3, r1, r6
0077f208  06 20 c1 e7                                      strb r2, [r1, r6]
0077f20c  02 00 83 e2                                      add r0, r3, #2
0077f210  01 20 c3 e5                                      strb r2, [r3, #1]
0077f214  00 30 a0 e3                                      mov r3, #0
0077f218  00 30 c0 e5                                      strb r3, [r0]
0077f21c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0077f220  d0 20 d4 e1                                      ldrsb r2, [r4]
0077f224  58 00 9f e5                                      ldr r0, [pc, #0x58]
0077f228  00 10 e0 e3                                      mvn r1, #0
0077f22c  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
0077f230  01 00 52 e1                                      cmp r2, r1
0077f234  01 10 84 12                                      addne r1, r4, #1
0077f238  0c 10 94 05                                      ldreq r1, [r4, #0xc]
0077f23c  10 30 84 e5                                      str r3, [r4, #0x10]
0077f240  05 20 a0 e1                                      mov r2, r5
0077f244  00 00 8f e0                                      add r0, pc, r0
0077f248  0d 3b ee eb                                      bl #0x30de84
0077f24c  05 00 a0 e1                                      mov r0, r5
0077f250  04 10 a0 e1                                      mov r1, r4
0077f254  93 ad ff eb                                      bl #0x76a8a8
0077f258  a8 00 85 e2                                      add r0, r5, #0xa8
0077f25c  04 10 a0 e1                                      mov r1, r4
0077f260  1e 5e ff eb                                      bl #0x756ae0
0077f264  d0 10 d4 e1                                      ldrsb r1, [r4]
0077f268  04 00 a0 e1                                      mov r0, r4
0077f26c  01 00 71 e3                                      cmn r1, #1
0077f270  04 10 94 05                                      ldreq r1, [r4, #4]
0077f274  01 10 41 e2                                      sub r1, r1, #1
0077f278  02 10 41 e2                                      sub r1, r1, #2
0077f27c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0077f280  a3 4a ff ea                                      b #0x751d14
; mapping-symbol data/literal pool
0077f284  c4 a8 18 00                                      .byte 0xc4, 0xa8, 0x18, 0x00

; FUNCTION 0x0077f390, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance26execute_frame_tags_reverseEi
; demangled: gameswf::sprite_instance::execute_frame_tags_reverse(int)
; decoder-mode: arm
0077f390  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0077f394  00 60 50 e2                                      subs r6, r0, #0
0077f398  01 80 a0 e1                                      mov r8, r1
0077f39c  00 00 00 0a                                      beq #0x77f3a4
0077f3a0  2f 6a ff eb                                      bl #0x759c64
0077f3a4  a0 30 96 e5                                      ldr r3, [r6, #0xa0]
0077f3a8  08 10 a0 e1                                      mov r1, r8
0077f3ac  03 00 a0 e1                                      mov r0, r3
0077f3b0  00 30 93 e5                                      ldr r3, [r3]
0077f3b4  0f e0 a0 e1                                      mov lr, pc
0077f3b8  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0077f3bc  04 a0 90 e5                                      ldr sl, [r0, #4]
0077f3c0  00 70 a0 e1                                      mov r7, r0
0077f3c4  01 50 5a e2                                      subs r5, sl, #1
0077f3c8  0d 00 00 4a                                      bmi #0x77f404
0077f3cc  05 51 a0 e1                                      lsl r5, r5, #2
0077f3d0  00 40 a0 e3                                      mov r4, #0
0077f3d4  00 30 97 e5                                      ldr r3, [r7]
0077f3d8  01 40 84 e2                                      add r4, r4, #1
0077f3dc  06 10 a0 e1                                      mov r1, r6
0077f3e0  05 30 93 e7                                      ldr r3, [r3, r5]
0077f3e4  08 20 a0 e1                                      mov r2, r8
0077f3e8  04 50 45 e2                                      sub r5, r5, #4
0077f3ec  03 00 a0 e1                                      mov r0, r3
0077f3f0  00 30 93 e5                                      ldr r3, [r3]
0077f3f4  0f e0 a0 e1                                      mov lr, pc
0077f3f8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0077f3fc  0a 00 54 e1                                      cmp r4, sl
0077f400  f3 ff ff 1a                                      bne #0x77f3d4
0077f404  00 00 56 e3                                      cmp r6, #0
0077f408  02 00 00 0a                                      beq #0x77f418
0077f40c  06 00 a0 e1                                      mov r0, r6
0077f410  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0077f414  89 6b ff ea                                      b #0x75a240
0077f418  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0077f41c, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance16call_method_argsEPKcS2_St9__va_list
; demangled: gameswf::sprite_instance::call_method_args(char const*, char const*, std::__va_list)
; decoder-mode: arm
0077f41c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0077f420  00 40 50 e2                                      subs r4, r0, #0
0077f424  0c d0 4d e2                                      sub sp, sp, #0xc
0077f428  01 70 a0 e1                                      mov r7, r1
0077f42c  02 60 a0 e1                                      mov r6, r2
0077f430  03 50 a0 e1                                      mov r5, r3
0077f434  0f 00 00 0a                                      beq #0x77f478
0077f438  09 6a ff eb                                      bl #0x759c64
0077f43c  00 30 94 e5                                      ldr r3, [r4]
0077f440  04 00 a0 e1                                      mov r0, r4
0077f444  0f e0 a0 e1                                      mov lr, pc
0077f448  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0077f44c  07 20 a0 e1                                      mov r2, r7
0077f450  06 30 a0 e1                                      mov r3, r6
0077f454  04 10 a0 e1                                      mov r1, r4
0077f458  00 50 8d e5                                      str r5, [sp]
0077f45c  63 f2 00 eb                                      bl #0x7bbdf0
0077f460  00 50 a0 e1                                      mov r5, r0
0077f464  04 00 a0 e1                                      mov r0, r4
0077f468  74 6b ff eb                                      bl #0x75a240
0077f46c  05 00 a0 e1                                      mov r0, r5
0077f470  0c d0 8d e2                                      add sp, sp, #0xc
0077f474  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0077f478  00 30 94 e5                                      ldr r3, [r4]
0077f47c  0f e0 a0 e1                                      mov lr, pc
0077f480  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0077f484  04 10 a0 e1                                      mov r1, r4
0077f488  07 20 a0 e1                                      mov r2, r7
0077f48c  06 30 a0 e1                                      mov r3, r6
0077f490  00 50 8d e5                                      str r5, [sp]
0077f494  55 f2 00 eb                                      bl #0x7bbdf0
0077f498  00 50 a0 e1                                      mov r5, r0
0077f49c  f2 ff ff ea                                      b #0x77f46c

; FUNCTION 0x0077f4a0, declared_size=372, range_size=372, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance8on_eventERKNS_8event_idE
; demangled: gameswf::sprite_instance::on_event(gameswf::event_id const&)
; decoder-mode: arm
0077f4a0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0077f4a4  00 40 50 e2                                      subs r4, r0, #0
0077f4a8  38 d0 4d e2                                      sub sp, sp, #0x38
0077f4ac  01 70 a0 e1                                      mov r7, r1
0077f4b0  00 00 00 0a                                      beq #0x77f4b8
0077f4b4  ea 69 ff eb                                      bl #0x759c64
0077f4b8  07 00 a0 e1                                      mov r0, r7
0077f4bc  8d ee 00 eb                                      bl #0x7baef8
0077f4c0  2c 60 8d e2                                      add r6, sp, #0x2c
0077f4c4  00 80 a0 e1                                      mov r8, r0
0077f4c8  00 a0 a0 e3                                      mov sl, #0
0077f4cc  04 00 a0 e1                                      mov r0, r4
0077f4d0  08 10 a0 e1                                      mov r1, r8
0077f4d4  06 20 a0 e1                                      mov r2, r6
0077f4d8  2c a0 cd e5                                      strb sl, [sp, #0x2c]
0077f4dc  2d a0 cd e5                                      strb sl, [sp, #0x2d]
0077f4e0  1b a7 ff eb                                      bl #0x769154
0077f4e4  00 00 50 e3                                      cmp r0, #0
0077f4e8  00 70 a0 01                                      moveq r7, r0
0077f4ec  3f 00 00 0a                                      beq #0x77f5f0
0077f4f0  04 50 97 e5                                      ldr r5, [r7, #4]
0077f4f4  00 00 55 e3                                      cmp r5, #0
0077f4f8  10 00 00 0a                                      beq #0x77f540
0077f4fc  04 50 95 e5                                      ldr r5, [r5, #4]
0077f500  01 30 55 e2                                      subs r3, r5, #1
0077f504  0d 00 00 4a                                      bmi #0x77f540
0077f508  0c 90 a0 e3                                      mov sb, #0xc
0077f50c  99 03 09 e0                                      mul sb, sb, r3
0077f510  00 30 94 e5                                      ldr r3, [r4]
0077f514  04 00 a0 e1                                      mov r0, r4
0077f518  0f e0 a0 e1                                      mov lr, pc
0077f51c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0077f520  04 30 97 e5                                      ldr r3, [r7, #4]
0077f524  01 a0 8a e2                                      add sl, sl, #1
0077f528  00 10 93 e5                                      ldr r1, [r3]
0077f52c  09 10 81 e0                                      add r1, r1, sb
0077f530  d8 a6 ff eb                                      bl #0x769098
0077f534  05 00 5a e1                                      cmp sl, r5
0077f538  0c 90 49 e2                                      sub sb, sb, #0xc
0077f53c  f3 ff ff 1a                                      bne #0x77f510
0077f540  00 30 94 e5                                      ldr r3, [r4]
0077f544  04 00 a0 e1                                      mov r0, r4
0077f548  0f e0 a0 e1                                      mov lr, pc
0077f54c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0077f550  00 30 a0 e3                                      mov r3, #0
0077f554  20 30 cd e5                                      strb r3, [sp, #0x20]
0077f558  00 00 54 e3                                      cmp r4, #0
0077f55c  05 30 a0 e3                                      mov r3, #5
0077f560  00 a0 a0 e1                                      mov sl, r0
0077f564  21 30 cd e5                                      strb r3, [sp, #0x21]
0077f568  24 40 8d e5                                      str r4, [sp, #0x24]
0077f56c  01 00 00 0a                                      beq #0x77f578
0077f570  04 00 a0 e1                                      mov r0, r4
0077f574  ba 69 ff eb                                      bl #0x759c64
0077f578  00 30 94 e5                                      ldr r3, [r4]
0077f57c  04 00 a0 e1                                      mov r0, r4
0077f580  0f e0 a0 e1                                      mov lr, pc
0077f584  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0077f588  d0 30 d8 e1                                      ldrsb r3, [r8]
0077f58c  04 c0 90 e5                                      ldr ip, [r0, #4]
0077f590  20 70 8d e2                                      add r7, sp, #0x20
0077f594  01 00 73 e3                                      cmn r3, #1
0077f598  0c e0 98 05                                      ldreq lr, [r8, #0xc]
0077f59c  01 e0 88 12                                      addne lr, r8, #1
0077f5a0  14 80 8d e2                                      add r8, sp, #0x14
0077f5a4  01 c0 4c e2                                      sub ip, ip, #1
0077f5a8  06 10 a0 e1                                      mov r1, r6
0077f5ac  07 30 a0 e1                                      mov r3, r7
0077f5b0  0a 20 a0 e1                                      mov r2, sl
0077f5b4  08 00 a0 e1                                      mov r0, r8
0077f5b8  20 50 8d e8                                      stm sp, {r5, ip, lr}
0077f5bc  d0 ec 00 eb                                      bl #0x7ba904
0077f5c0  08 00 a0 e1                                      mov r0, r8
0077f5c4  d6 5e 00 eb                                      bl #0x797124
0077f5c8  07 00 a0 e1                                      mov r0, r7
0077f5cc  d4 5e 00 eb                                      bl #0x797124
0077f5d0  00 30 94 e5                                      ldr r3, [r4]
0077f5d4  04 00 a0 e1                                      mov r0, r4
0077f5d8  0f e0 a0 e1                                      mov lr, pc
0077f5dc  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0077f5e0  04 10 90 e5                                      ldr r1, [r0, #4]
0077f5e4  01 70 a0 e3                                      mov r7, #1
0077f5e8  01 10 65 e0                                      rsb r1, r5, r1
0077f5ec  6c fd ff eb                                      bl #0x77eba4
0077f5f0  06 00 a0 e1                                      mov r0, r6
0077f5f4  ca 5e 00 eb                                      bl #0x797124
0077f5f8  00 00 54 e3                                      cmp r4, #0
0077f5fc  01 00 00 0a                                      beq #0x77f608
0077f600  04 00 a0 e1                                      mov r0, r4
0077f604  0d 6b ff eb                                      bl #0x75a240
0077f608  07 00 a0 e1                                      mov r0, r7
0077f60c  38 d0 8d e2                                      add sp, sp, #0x38
0077f610  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0077f614, declared_size=184, range_size=184, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance18has_keypress_eventEv
; demangled: gameswf::sprite_instance::has_keypress_event()
; decoder-mode: arm
0077f614  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0077f618  a0 40 9f e5                                      ldr r4, [pc, #0xa0]
0077f61c  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
0077f620  2c d0 4d e2                                      sub sp, sp, #0x2c
0077f624  04 40 8f e0                                      add r4, pc, r4
0077f628  05 20 94 e7                                      ldr r2, [r4, r5]
0077f62c  00 30 90 e5                                      ldr r3, [r0]
0077f630  10 80 8d e2                                      add r8, sp, #0x10
0077f634  00 10 92 e5                                      ldr r1, [r2]
0077f638  00 20 a0 e3                                      mov r2, #0
0077f63c  05 20 cd e5                                      strb r2, [sp, #5]
0077f640  24 10 8d e5                                      str r1, [sp, #0x24]
0077f644  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0077f648  04 20 cd e5                                      strb r2, [sp, #4]
0077f64c  00 a0 a0 e1                                      mov sl, r0
0077f650  01 10 8f e0                                      add r1, pc, r1
0077f654  08 00 a0 e1                                      mov r0, r8
0077f658  04 60 8d e2                                      add r6, sp, #4
0077f65c  20 70 93 e5                                      ldr r7, [r3, #0x20]
0077f660  05 51 f2 eb                                      bl #0x413a7c
0077f664  0a 00 a0 e1                                      mov r0, sl
0077f668  08 10 a0 e1                                      mov r1, r8
0077f66c  06 20 a0 e1                                      mov r2, r6
0077f670  37 ff 2f e1                                      blx r7
0077f674  d0 31 dd e1                                      ldrsb r3, [sp, #0x10]
0077f678  00 70 a0 e1                                      mov r7, r0
0077f67c  01 00 73 e3                                      cmn r3, #1
0077f680  09 00 00 0a                                      beq #0x77f6ac
0077f684  06 00 a0 e1                                      mov r0, r6
0077f688  a5 5e 00 eb                                      bl #0x797124
0077f68c  05 30 94 e7                                      ldr r3, [r4, r5]
0077f690  24 20 9d e5                                      ldr r2, [sp, #0x24]
0077f694  07 00 a0 e1                                      mov r0, r7
0077f698  00 30 93 e5                                      ldr r3, [r3]
0077f69c  03 00 52 e1                                      cmp r2, r3
0077f6a0  05 00 00 1a                                      bne #0x77f6bc
0077f6a4  2c d0 8d e2                                      add sp, sp, #0x2c
0077f6a8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0077f6ac  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0077f6b0  18 10 9d e5                                      ldr r1, [sp, #0x18]
0077f6b4  1f 4d ff eb                                      bl #0x752b38
0077f6b8  f1 ff ff ea                                      b #0x77f684
0077f6bc  13 3b ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0077f6c0  6c 54 21 00 ac 40 00 00 d8 a4 18 00              .byte 0x6c, 0x54, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd8, 0xa4, 0x18, 0x00

; FUNCTION 0x0077f6cc, declared_size=284, range_size=284, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance12set_variableEPKcS2_
; demangled: gameswf::sprite_instance::set_variable(char const*, char const*)
; decoder-mode: arm
0077f6cc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0077f6d0  00 41 9f e5                                      ldr r4, [pc, #0x100]
0077f6d4  00 71 9f e5                                      ldr r7, [pc, #0x100]
0077f6d8  38 d0 4d e2                                      sub sp, sp, #0x38
0077f6dc  04 40 8f e0                                      add r4, pc, r4
0077f6e0  07 30 94 e7                                      ldr r3, [r4, r7]
0077f6e4  00 00 51 e3                                      cmp r1, #0
0077f6e8  00 50 a0 e1                                      mov r5, r0
0077f6ec  00 30 93 e5                                      ldr r3, [r3]
0077f6f0  02 a0 a0 e1                                      mov sl, r2
0077f6f4  34 30 8d e5                                      str r3, [sp, #0x34]
0077f6f8  2d 00 00 0a                                      beq #0x77f7b4
0077f6fc  00 00 52 e3                                      cmp r2, #0
0077f700  2f 00 00 0a                                      beq #0x77f7c4
0077f704  20 90 8d e2                                      add sb, sp, #0x20
0077f708  00 80 a0 e3                                      mov r8, #0
0077f70c  14 60 8d e2                                      add r6, sp, #0x14
0077f710  09 00 a0 e1                                      mov r0, sb
0077f714  04 80 8d e5                                      str r8, [sp, #4]
0077f718  08 80 8d e5                                      str r8, [sp, #8]
0077f71c  0c 80 8d e5                                      str r8, [sp, #0xc]
0077f720  10 80 cd e5                                      strb r8, [sp, #0x10]
0077f724  d4 50 f2 eb                                      bl #0x413a7c
0077f728  0a 10 a0 e1                                      mov r1, sl
0077f72c  06 00 a0 e1                                      mov r0, r6
0077f730  15 80 cd e5                                      strb r8, [sp, #0x15]
0077f734  14 80 cd e5                                      strb r8, [sp, #0x14]
0077f738  04 5f 00 eb                                      bl #0x797350
0077f73c  00 30 95 e5                                      ldr r3, [r5]
0077f740  05 00 a0 e1                                      mov r0, r5
0077f744  04 50 8d e2                                      add r5, sp, #4
0077f748  0f e0 a0 e1                                      mov lr, pc
0077f74c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0077f750  05 30 a0 e1                                      mov r3, r5
0077f754  09 10 a0 e1                                      mov r1, sb
0077f758  06 20 a0 e1                                      mov r2, r6
0077f75c  11 38 01 eb                                      bl #0x7cd7a8
0077f760  06 00 a0 e1                                      mov r0, r6
0077f764  6e 5e 00 eb                                      bl #0x797124
0077f768  d0 32 dd e1                                      ldrsb r3, [sp, #0x20]
0077f76c  01 00 73 e3                                      cmn r3, #1
0077f770  0b 00 00 0a                                      beq #0x77f7a4
0077f774  05 00 a0 e1                                      mov r0, r5
0077f778  e6 fe ff eb                                      bl #0x77f318
0077f77c  05 00 a0 e1                                      mov r0, r5
0077f780  00 10 a0 e3                                      mov r1, #0
0077f784  e2 6a ff eb                                      bl #0x75a314
0077f788  07 30 94 e7                                      ldr r3, [r4, r7]
0077f78c  34 20 9d e5                                      ldr r2, [sp, #0x34]
0077f790  00 30 93 e5                                      ldr r3, [r3]
0077f794  03 00 52 e1                                      cmp r2, r3
0077f798  0d 00 00 1a                                      bne #0x77f7d4
0077f79c  38 d0 8d e2                                      add sp, sp, #0x38
0077f7a0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0077f7a4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0077f7a8  28 10 9d e5                                      ldr r1, [sp, #0x28]
0077f7ac  e1 4c ff eb                                      bl #0x752b38
0077f7b0  ef ff ff ea                                      b #0x77f774
0077f7b4  24 00 9f e5                                      ldr r0, [pc, #0x24]
0077f7b8  00 00 8f e0                                      add r0, pc, r0
0077f7bc  70 86 ff eb                                      bl #0x761184
0077f7c0  f0 ff ff ea                                      b #0x77f788
0077f7c4  18 00 9f e5                                      ldr r0, [pc, #0x18]
0077f7c8  00 00 8f e0                                      add r0, pc, r0
0077f7cc  6c 86 ff eb                                      bl #0x761184
0077f7d0  ec ff ff ea                                      b #0x77f788
0077f7d4  cd 3a ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0077f7d8  b4 53 21 00 ac 40 00 00 80 a3 18 00 a8 a3 18 00  .byte 0xb4, 0x53, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00, 0x80, 0xa3, 0x18, 0x00, 0xa8, 0xa3, 0x18, 0x00

; FUNCTION 0x0077f7e8, declared_size=232, range_size=232, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance22replace_display_objectEPNS_9characterEPKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
; demangled: gameswf::sprite_instance::replace_display_object(gameswf::character*, char const*, int, gameswf::cxform const*, gameswf::matrix const*, gameswf::effect const*, float, unsigned short)
; decoder-mode: arm
0077f7e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077f7ec  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
0077f7f0  d4 50 9f e5                                      ldr r5, [pc, #0xd4]
0077f7f4  34 d0 4d e2                                      sub sp, sp, #0x34
0077f7f8  04 40 8f e0                                      add r4, pc, r4
0077f7fc  00 c0 52 e2                                      subs ip, r2, #0
0077f800  03 a0 a0 e1                                      mov sl, r3
0077f804  05 20 94 e7                                      ldr r2, [r4, r5]
0077f808  60 30 9d e5                                      ldr r3, [sp, #0x60]
0077f80c  00 80 a0 e1                                      mov r8, r0
0077f810  00 20 92 e5                                      ldr r2, [r2]
0077f814  10 30 8d e5                                      str r3, [sp, #0x10]
0077f818  b8 36 dd e1                                      ldrh r3, [sp, #0x68]
0077f81c  01 60 a0 e1                                      mov r6, r1
0077f820  58 70 9d e5                                      ldr r7, [sp, #0x58]
0077f824  2c 20 8d e5                                      str r2, [sp, #0x2c]
0077f828  5c b0 9d e5                                      ldr fp, [sp, #0x5c]
0077f82c  14 30 8d e5                                      str r3, [sp, #0x14]
0077f830  02 00 00 0a                                      beq #0x77f840
0077f834  d0 30 dc e1                                      ldrsb r3, [ip]
0077f838  00 00 53 e3                                      cmp r3, #0
0077f83c  12 00 00 1a                                      bne #0x77f88c
0077f840  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0077f844  0a 20 a0 e1                                      mov r2, sl
0077f848  07 30 a0 e1                                      mov r3, r7
0077f84c  04 c0 8d e5                                      str ip, [sp, #4]
0077f850  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0077f854  a8 00 88 e2                                      add r0, r8, #0xa8
0077f858  06 10 a0 e1                                      mov r1, r6
0077f85c  08 c0 8d e5                                      str ip, [sp, #8]
0077f860  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0077f864  00 b0 8d e5                                      str fp, [sp]
0077f868  0c c0 8d e5                                      str ip, [sp, #0xc]
0077f86c  d6 5b ff eb                                      bl #0x7567cc
0077f870  05 30 94 e7                                      ldr r3, [r4, r5]
0077f874  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0077f878  00 30 93 e5                                      ldr r3, [r3]
0077f87c  03 00 52 e1                                      cmp r2, r3
0077f880  0f 00 00 1a                                      bne #0x77f8c4
0077f884  34 d0 8d e2                                      add sp, sp, #0x34
0077f888  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077f88c  18 90 8d e2                                      add sb, sp, #0x18
0077f890  0c 10 a0 e1                                      mov r1, ip
0077f894  09 00 a0 e1                                      mov r0, sb
0077f898  77 50 f2 eb                                      bl #0x413a7c
0077f89c  06 00 a0 e1                                      mov r0, r6
0077f8a0  09 10 a0 e1                                      mov r1, sb
0077f8a4  43 4f ff eb                                      bl #0x7535b8
0077f8a8  d8 31 dd e1                                      ldrsb r3, [sp, #0x18]
0077f8ac  01 00 73 e3                                      cmn r3, #1
0077f8b0  e2 ff ff 1a                                      bne #0x77f840
0077f8b4  24 00 9d e5                                      ldr r0, [sp, #0x24]
0077f8b8  20 10 9d e5                                      ldr r1, [sp, #0x20]
0077f8bc  9d 4c ff eb                                      bl #0x752b38
0077f8c0  de ff ff ea                                      b #0x77f840
0077f8c4  91 3a ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0077f8c8  98 52 21 00 ac 40 00 00                          .byte 0x98, 0x52, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0077f8d0, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZNK7gameswf15sprite_instance12get_variableEPKc
; demangled: gameswf::sprite_instance::get_variable(char const*) const
; decoder-mode: arm
0077f8d0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0077f8d4  40 41 9f e5                                      ldr r4, [pc, #0x140]
0077f8d8  40 71 9f e5                                      ldr r7, [pc, #0x140]
0077f8dc  40 61 9f e5                                      ldr r6, [pc, #0x140]
0077f8e0  04 40 8f e0                                      add r4, pc, r4
0077f8e4  07 30 94 e7                                      ldr r3, [r4, r7]
0077f8e8  40 d0 4d e2                                      sub sp, sp, #0x40
0077f8ec  28 80 8d e2                                      add r8, sp, #0x28
0077f8f0  00 20 93 e5                                      ldr r2, [r3]
0077f8f4  00 50 a0 e1                                      mov r5, r0
0077f8f8  00 30 a0 e3                                      mov r3, #0
0077f8fc  06 60 8f e0                                      add r6, pc, r6
0077f900  08 00 a0 e1                                      mov r0, r8
0077f904  3c 20 8d e5                                      str r2, [sp, #0x3c]
0077f908  18 30 cd e5                                      strb r3, [sp, #0x18]
0077f90c  0c 30 8d e5                                      str r3, [sp, #0xc]
0077f910  10 30 8d e5                                      str r3, [sp, #0x10]
0077f914  14 30 8d e5                                      str r3, [sp, #0x14]
0077f918  57 50 f2 eb                                      bl #0x413a7c
0077f91c  0c a0 96 e5                                      ldr sl, [r6, #0xc]
0077f920  01 a0 1a e2                                      ands sl, sl, #1
0077f924  27 00 00 0a                                      beq #0x77f9c8
0077f928  00 30 95 e5                                      ldr r3, [r5]
0077f92c  05 00 a0 e1                                      mov r0, r5
0077f930  0f e0 a0 e1                                      mov lr, pc
0077f934  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0077f938  08 20 a0 e1                                      mov r2, r8
0077f93c  e4 80 9f e5                                      ldr r8, [pc, #0xe4]
0077f940  1c 60 8d e2                                      add r6, sp, #0x1c
0077f944  0c 50 8d e2                                      add r5, sp, #0xc
0077f948  08 80 8f e0                                      add r8, pc, r8
0077f94c  05 30 a0 e1                                      mov r3, r5
0077f950  00 c0 a0 e3                                      mov ip, #0
0077f954  00 10 a0 e1                                      mov r1, r0
0077f958  10 80 88 e2                                      add r8, r8, #0x10
0077f95c  06 00 a0 e1                                      mov r0, r6
0077f960  00 c0 8d e5                                      str ip, [sp]
0077f964  ed 39 01 eb                                      bl #0x7ce120
0077f968  06 10 a0 e1                                      mov r1, r6
0077f96c  08 00 a0 e1                                      mov r0, r8
0077f970  71 5f 00 eb                                      bl #0x79773c
0077f974  06 00 a0 e1                                      mov r0, r6
0077f978  e9 5d 00 eb                                      bl #0x797124
0077f97c  08 00 a0 e1                                      mov r0, r8
0077f980  8b 5d 00 eb                                      bl #0x796fb4
0077f984  d8 32 dd e1                                      ldrsb r3, [sp, #0x28]
0077f988  00 60 a0 e1                                      mov r6, r0
0077f98c  01 00 73 e3                                      cmn r3, #1
0077f990  1c 00 00 0a                                      beq #0x77fa08
0077f994  05 00 a0 e1                                      mov r0, r5
0077f998  5e fe ff eb                                      bl #0x77f318
0077f99c  05 00 a0 e1                                      mov r0, r5
0077f9a0  00 10 a0 e3                                      mov r1, #0
0077f9a4  5a 6a ff eb                                      bl #0x75a314
0077f9a8  07 30 94 e7                                      ldr r3, [r4, r7]
0077f9ac  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0077f9b0  06 00 a0 e1                                      mov r0, r6
0077f9b4  00 30 93 e5                                      ldr r3, [r3]
0077f9b8  03 00 52 e1                                      cmp r2, r3
0077f9bc  15 00 00 1a                                      bne #0x77fa18
0077f9c0  40 d0 8d e2                                      add sp, sp, #0x40
0077f9c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0077f9c8  0c 90 86 e2                                      add sb, r6, #0xc
0077f9cc  09 00 a0 e1                                      mov r0, sb
0077f9d0  65 3b ee eb                                      bl #0x30e76c
0077f9d4  00 00 50 e3                                      cmp r0, #0
0077f9d8  d2 ff ff 0a                                      beq #0x77f928
0077f9dc  09 00 a0 e1                                      mov r0, sb
0077f9e0  11 a0 c6 e5                                      strb sl, [r6, #0x11]
0077f9e4  10 a0 c6 e5                                      strb sl, [r6, #0x10]
0077f9e8  13 3c ee eb                                      bl #0x30ea3c
0077f9ec  38 30 9f e5                                      ldr r3, [pc, #0x38]
0077f9f0  04 00 89 e2                                      add r0, sb, #4
0077f9f4  03 10 94 e7                                      ldr r1, [r4, r3]
0077f9f8  30 30 9f e5                                      ldr r3, [pc, #0x30]
0077f9fc  03 20 94 e7                                      ldr r2, [r4, r3]
0077fa00  3f 3a ee eb                                      bl #0x30e304
0077fa04  c7 ff ff ea                                      b #0x77f928
0077fa08  34 00 9d e5                                      ldr r0, [sp, #0x34]
0077fa0c  30 10 9d e5                                      ldr r1, [sp, #0x30]
0077fa10  48 4c ff eb                                      bl #0x752b38
0077fa14  de ff ff ea                                      b #0x77f994
0077fa18  3c 3a ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0077fa1c  b0 51 21 00 ac 40 00 00 b4 d0 27 00 68 d0 27 00  .byte 0xb0, 0x51, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0xd0, 0x27, 0x00, 0x68, 0xd0, 0x27, 0x00
0077fa2c  48 30 00 00 90 18 00 00                          .byte 0x48, 0x30, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0077fa34, declared_size=304, range_size=304, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance23attach_display_callbackEPKcPFvRNS_12render_stateEPvES5_
; demangled: gameswf::sprite_instance::attach_display_callback(char const*, void (*)(gameswf::render_state&, void*), void*)
; decoder-mode: arm
0077fa34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077fa38  1c 41 9f e5                                      ldr r4, [pc, #0x11c]
0077fa3c  1c a1 9f e5                                      ldr sl, [pc, #0x11c]
0077fa40  4c d0 4d e2                                      sub sp, sp, #0x4c
0077fa44  04 40 8f e0                                      add r4, pc, r4
0077fa48  0a c0 94 e7                                      ldr ip, [r4, sl]
0077fa4c  00 50 a0 e3                                      mov r5, #0
0077fa50  14 50 8d e5                                      str r5, [sp, #0x14]
0077fa54  00 c0 9c e5                                      ldr ip, [ip]
0077fa58  18 50 8d e5                                      str r5, [sp, #0x18]
0077fa5c  1c 50 8d e5                                      str r5, [sp, #0x1c]
0077fa60  44 c0 8d e5                                      str ip, [sp, #0x44]
0077fa64  20 50 cd e5                                      strb r5, [sp, #0x20]
0077fa68  01 60 a0 e1                                      mov r6, r1
0077fa6c  00 10 90 e5                                      ldr r1, [r0]
0077fa70  0c 30 8d e5                                      str r3, [sp, #0xc]
0077fa74  02 b0 a0 e1                                      mov fp, r2
0077fa78  0f e0 a0 e1                                      mov lr, pc
0077fa7c  58 f0 91 e5                                      ldr pc, [r1, #0x58]
0077fa80  30 70 8d e2                                      add r7, sp, #0x30
0077fa84  06 10 a0 e1                                      mov r1, r6
0077fa88  00 90 a0 e1                                      mov sb, r0
0077fa8c  24 80 8d e2                                      add r8, sp, #0x24
0077fa90  07 00 a0 e1                                      mov r0, r7
0077fa94  14 60 8d e2                                      add r6, sp, #0x14
0077fa98  f7 4f f2 eb                                      bl #0x413a7c
0077fa9c  06 30 a0 e1                                      mov r3, r6
0077faa0  09 10 a0 e1                                      mov r1, sb
0077faa4  07 20 a0 e1                                      mov r2, r7
0077faa8  08 00 a0 e1                                      mov r0, r8
0077faac  00 50 8d e5                                      str r5, [sp]
0077fab0  9a 39 01 eb                                      bl #0x7ce120
0077fab4  d0 33 dd e1                                      ldrsb r3, [sp, #0x30]
0077fab8  01 00 73 e3                                      cmn r3, #1
0077fabc  21 00 00 0a                                      beq #0x77fb48
0077fac0  d5 32 dd e1                                      ldrsb r3, [sp, #0x25]
0077fac4  05 00 53 e3                                      cmp r3, #5
0077fac8  0d 00 00 0a                                      beq #0x77fb04
0077facc  08 00 a0 e1                                      mov r0, r8
0077fad0  93 5d 00 eb                                      bl #0x797124
0077fad4  06 00 a0 e1                                      mov r0, r6
0077fad8  0e fe ff eb                                      bl #0x77f318
0077fadc  06 00 a0 e1                                      mov r0, r6
0077fae0  00 10 a0 e3                                      mov r1, #0
0077fae4  0a 6a ff eb                                      bl #0x75a314
0077fae8  0a 30 94 e7                                      ldr r3, [r4, sl]
0077faec  44 20 9d e5                                      ldr r2, [sp, #0x44]
0077faf0  00 30 93 e5                                      ldr r3, [r3]
0077faf4  03 00 52 e1                                      cmp r2, r3
0077faf8  16 00 00 1a                                      bne #0x77fb58
0077fafc  4c d0 8d e2                                      add sp, sp, #0x4c
0077fb00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077fb04  28 50 9d e5                                      ldr r5, [sp, #0x28]
0077fb08  00 00 55 e3                                      cmp r5, #0
0077fb0c  ee ff ff 0a                                      beq #0x77facc
0077fb10  00 30 95 e5                                      ldr r3, [r5]
0077fb14  05 00 a0 e1                                      mov r0, r5
0077fb18  01 10 a0 e3                                      mov r1, #1
0077fb1c  0f e0 a0 e1                                      mov lr, pc
0077fb20  08 f0 93 e5                                      ldr pc, [r3, #8]
0077fb24  00 00 50 e3                                      cmp r0, #0
0077fb28  e7 ff ff 0a                                      beq #0x77facc
0077fb2c  05 00 a0 e1                                      mov r0, r5
0077fb30  0b 10 a0 e1                                      mov r1, fp
0077fb34  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0077fb38  00 30 95 e5                                      ldr r3, [r5]
0077fb3c  0f e0 a0 e1                                      mov lr, pc
0077fb40  54 f1 93 e5                                      ldr pc, [r3, #0x154]
0077fb44  e0 ff ff ea                                      b #0x77facc
0077fb48  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0077fb4c  38 10 9d e5                                      ldr r1, [sp, #0x38]
0077fb50  f8 4b ff eb                                      bl #0x752b38
0077fb54  d9 ff ff ea                                      b #0x77fac0
0077fb58  ec 39 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0077fb5c  4c 50 21 00 ac 40 00 00                          .byte 0x4c, 0x50, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0077fb64, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance22replace_display_objectEtPKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
; demangled: gameswf::sprite_instance::replace_display_object(unsigned short, char const*, int, gameswf::cxform const*, gameswf::matrix const*, gameswf::effect const*, float, unsigned short)
; decoder-mode: arm
0077fb64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077fb68  40 41 9f e5                                      ldr r4, [pc, #0x140]
0077fb6c  40 71 9f e5                                      ldr r7, [pc, #0x140]
0077fb70  00 50 a0 e1                                      mov r5, r0
0077fb74  04 40 8f e0                                      add r4, pc, r4
0077fb78  07 00 94 e7                                      ldr r0, [r4, r7]
0077fb7c  02 80 a0 e1                                      mov r8, r2
0077fb80  3c d0 4d e2                                      sub sp, sp, #0x3c
0077fb84  00 20 90 e5                                      ldr r2, [r0]
0077fb88  a0 c0 95 e5                                      ldr ip, [r5, #0xa0]
0077fb8c  03 a0 a0 e1                                      mov sl, r3
0077fb90  34 20 8d e5                                      str r2, [sp, #0x34]
0077fb94  64 20 9d e5                                      ldr r2, [sp, #0x64]
0077fb98  00 30 9c e5                                      ldr r3, [ip]
0077fb9c  0c 00 a0 e1                                      mov r0, ip
0077fba0  14 20 8d e5                                      str r2, [sp, #0x14]
0077fba4  68 c0 9d e5                                      ldr ip, [sp, #0x68]
0077fba8  b0 27 dd e1                                      ldrh r2, [sp, #0x70]
0077fbac  01 60 a0 e1                                      mov r6, r1
0077fbb0  18 c0 8d e5                                      str ip, [sp, #0x18]
0077fbb4  1c 20 8d e5                                      str r2, [sp, #0x1c]
0077fbb8  60 90 9d e5                                      ldr sb, [sp, #0x60]
0077fbbc  0f e0 a0 e1                                      mov lr, pc
0077fbc0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0077fbc4  00 30 50 e2                                      subs r3, r0, #0
0077fbc8  32 00 00 0a                                      beq #0x77fc98
0077fbcc  06 20 a0 e1                                      mov r2, r6
0077fbd0  00 30 93 e5                                      ldr r3, [r3]
0077fbd4  05 10 a0 e1                                      mov r1, r5
0077fbd8  0f e0 a0 e1                                      mov lr, pc
0077fbdc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0077fbe0  00 60 50 e2                                      subs r6, r0, #0
0077fbe4  00 00 00 0a                                      beq #0x77fbec
0077fbe8  1d 68 ff eb                                      bl #0x759c64
0077fbec  00 00 58 e3                                      cmp r8, #0
0077fbf0  02 00 00 0a                                      beq #0x77fc00
0077fbf4  d0 30 d8 e1                                      ldrsb r3, [r8]
0077fbf8  00 00 53 e3                                      cmp r3, #0
0077fbfc  17 00 00 1a                                      bne #0x77fc60
0077fc00  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0077fc04  a8 00 85 e2                                      add r0, r5, #0xa8
0077fc08  0a 20 a0 e1                                      mov r2, sl
0077fc0c  00 c0 8d e5                                      str ip, [sp]
0077fc10  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0077fc14  09 30 a0 e1                                      mov r3, sb
0077fc18  06 10 a0 e1                                      mov r1, r6
0077fc1c  04 c0 8d e5                                      str ip, [sp, #4]
0077fc20  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
0077fc24  08 c0 8d e5                                      str ip, [sp, #8]
0077fc28  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0077fc2c  0c c0 8d e5                                      str ip, [sp, #0xc]
0077fc30  e5 5a ff eb                                      bl #0x7567cc
0077fc34  00 00 56 e3                                      cmp r6, #0
0077fc38  01 00 00 0a                                      beq #0x77fc44
0077fc3c  06 00 a0 e1                                      mov r0, r6
0077fc40  7e 69 ff eb                                      bl #0x75a240
0077fc44  07 30 94 e7                                      ldr r3, [r4, r7]
0077fc48  34 20 9d e5                                      ldr r2, [sp, #0x34]
0077fc4c  00 30 93 e5                                      ldr r3, [r3]
0077fc50  03 00 52 e1                                      cmp r2, r3
0077fc54  14 00 00 1a                                      bne #0x77fcac
0077fc58  3c d0 8d e2                                      add sp, sp, #0x3c
0077fc5c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077fc60  20 b0 8d e2                                      add fp, sp, #0x20
0077fc64  08 10 a0 e1                                      mov r1, r8
0077fc68  0b 00 a0 e1                                      mov r0, fp
0077fc6c  82 4f f2 eb                                      bl #0x413a7c
0077fc70  06 00 a0 e1                                      mov r0, r6
0077fc74  0b 10 a0 e1                                      mov r1, fp
0077fc78  4e 4e ff eb                                      bl #0x7535b8
0077fc7c  d0 32 dd e1                                      ldrsb r3, [sp, #0x20]
0077fc80  01 00 73 e3                                      cmn r3, #1
0077fc84  dd ff ff 1a                                      bne #0x77fc00
0077fc88  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0077fc8c  28 10 9d e5                                      ldr r1, [sp, #0x28]
0077fc90  a8 4b ff eb                                      bl #0x752b38
0077fc94  d9 ff ff ea                                      b #0x77fc00
0077fc98  18 00 9f e5                                      ldr r0, [pc, #0x18]
0077fc9c  06 10 a0 e1                                      mov r1, r6
0077fca0  00 00 8f e0                                      add r0, pc, r0
0077fca4  36 85 ff eb                                      bl #0x761184
0077fca8  e5 ff ff ea                                      b #0x77fc44
0077fcac  97 39 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0077fcb0  1c 4f 21 00 ac 40 00 00 00 9f 18 00              .byte 0x1c, 0x4f, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x9f, 0x18, 0x00

; FUNCTION 0x0077fcbc, declared_size=276, range_size=276, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance12set_variableEPKcPKw
; demangled: gameswf::sprite_instance::set_variable(char const*, wchar_t const*)
; decoder-mode: arm
0077fcbc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0077fcc0  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
0077fcc4  f8 70 9f e5                                      ldr r7, [pc, #0xf8]
0077fcc8  3c d0 4d e2                                      sub sp, sp, #0x3c
0077fccc  04 40 8f e0                                      add r4, pc, r4
0077fcd0  07 30 94 e7                                      ldr r3, [r4, r7]
0077fcd4  00 00 51 e3                                      cmp r1, #0
0077fcd8  00 50 a0 e1                                      mov r5, r0
0077fcdc  00 30 93 e5                                      ldr r3, [r3]
0077fce0  02 80 a0 e1                                      mov r8, r2
0077fce4  34 30 8d e5                                      str r3, [sp, #0x34]
0077fce8  2b 00 00 0a                                      beq #0x77fd9c
0077fcec  00 00 52 e3                                      cmp r2, #0
0077fcf0  2d 00 00 0a                                      beq #0x77fdac
0077fcf4  20 a0 8d e2                                      add sl, sp, #0x20
0077fcf8  00 30 a0 e3                                      mov r3, #0
0077fcfc  14 60 8d e2                                      add r6, sp, #0x14
0077fd00  0a 00 a0 e1                                      mov r0, sl
0077fd04  10 30 cd e5                                      strb r3, [sp, #0x10]
0077fd08  04 30 8d e5                                      str r3, [sp, #4]
0077fd0c  08 30 8d e5                                      str r3, [sp, #8]
0077fd10  0c 30 8d e5                                      str r3, [sp, #0xc]
0077fd14  58 4f f2 eb                                      bl #0x413a7c
0077fd18  08 10 a0 e1                                      mov r1, r8
0077fd1c  06 00 a0 e1                                      mov r0, r6
0077fd20  b8 5d 00 eb                                      bl #0x797408
0077fd24  00 30 95 e5                                      ldr r3, [r5]
0077fd28  05 00 a0 e1                                      mov r0, r5
0077fd2c  04 50 8d e2                                      add r5, sp, #4
0077fd30  0f e0 a0 e1                                      mov lr, pc
0077fd34  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0077fd38  05 30 a0 e1                                      mov r3, r5
0077fd3c  0a 10 a0 e1                                      mov r1, sl
0077fd40  06 20 a0 e1                                      mov r2, r6
0077fd44  97 36 01 eb                                      bl #0x7cd7a8
0077fd48  06 00 a0 e1                                      mov r0, r6
0077fd4c  f4 5c 00 eb                                      bl #0x797124
0077fd50  d0 32 dd e1                                      ldrsb r3, [sp, #0x20]
0077fd54  01 00 73 e3                                      cmn r3, #1
0077fd58  0b 00 00 0a                                      beq #0x77fd8c
0077fd5c  05 00 a0 e1                                      mov r0, r5
0077fd60  6c fd ff eb                                      bl #0x77f318
0077fd64  05 00 a0 e1                                      mov r0, r5
0077fd68  00 10 a0 e3                                      mov r1, #0
0077fd6c  68 69 ff eb                                      bl #0x75a314
0077fd70  07 30 94 e7                                      ldr r3, [r4, r7]
0077fd74  34 20 9d e5                                      ldr r2, [sp, #0x34]
0077fd78  00 30 93 e5                                      ldr r3, [r3]
0077fd7c  03 00 52 e1                                      cmp r2, r3
0077fd80  0d 00 00 1a                                      bne #0x77fdbc
0077fd84  3c d0 8d e2                                      add sp, sp, #0x3c
0077fd88  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0077fd8c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0077fd90  28 10 9d e5                                      ldr r1, [sp, #0x28]
0077fd94  67 4b ff eb                                      bl #0x752b38
0077fd98  ef ff ff ea                                      b #0x77fd5c
0077fd9c  24 00 9f e5                                      ldr r0, [pc, #0x24]
0077fda0  00 00 8f e0                                      add r0, pc, r0
0077fda4  f6 84 ff eb                                      bl #0x761184
0077fda8  f0 ff ff ea                                      b #0x77fd70
0077fdac  18 00 9f e5                                      ldr r0, [pc, #0x18]
0077fdb0  00 00 8f e0                                      add r0, pc, r0
0077fdb4  f2 84 ff eb                                      bl #0x761184
0077fdb8  ec ff ff ea                                      b #0x77fd70
0077fdbc  53 39 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0077fdc0  c4 4d 21 00 ac 40 00 00 98 9d 18 00 c0 9d 18 00  .byte 0xc4, 0x4d, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0x9d, 0x18, 0x00, 0xc0, 0x9d, 0x18, 0x00

; FUNCTION 0x0077fdd0, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance14set_drag_stateERKNS_9character10drag_stateE
; demangled: gameswf::sprite_instance::set_drag_state(gameswf::character::drag_state const&)
; decoder-mode: arm
0077fdd0  30 00 2d e9                                      push {r4, r5}
0077fdd4  a4 c0 90 e5                                      ldr ip, [r0, #0xa4]
0077fdd8  01 50 a0 e1                                      mov r5, r1
0077fddc  01 40 a0 e1                                      mov r4, r1
0077fde0  58 c0 8c e2                                      add ip, ip, #0x58
0077fde4  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
0077fde8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0077fdec  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0077fdf0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0077fdf4  00 00 94 e5                                      ldr r0, [r4]
0077fdf8  00 00 50 e3                                      cmp r0, #0
0077fdfc  01 00 00 0a                                      beq #0x77fe08
0077fe00  30 00 bd e8                                      pop {r4, r5}
0077fe04  b7 d4 ff ea                                      b #0x7750e8
0077fe08  30 00 bd e8                                      pop {r4, r5}
0077fe0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077fe10, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance14set_play_stateENS_9character10play_stateE
; demangled: gameswf::sprite_instance::set_play_state(gameswf::character::play_state)
; decoder-mode: arm
0077fe10  70 40 2d e9                                      push {r4, r5, r6, lr}
0077fe14  00 40 a0 e1                                      mov r4, r0
0077fe18  01 50 a0 e1                                      mov r5, r1
0077fe1c  5f f3 ff eb                                      bl #0x77cba0
0077fe20  00 c0 50 e2                                      subs ip, r0, #0
0077fe24  09 00 00 0a                                      beq #0x77fe50
0077fe28  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
0077fe2c  20 10 93 e5                                      ldr r1, [r3, #0x20]
0077fe30  00 00 51 e3                                      cmp r1, #0
0077fe34  05 00 00 ba                                      blt #0x77fe50
0077fe38  d6 2e d4 e1                                      ldrsb r2, [r4, #0xe6]
0077fe3c  00 30 9c e5                                      ldr r3, [ip]
0077fe40  01 20 72 e2                                      rsbs r2, r2, #1
0077fe44  00 20 a0 33                                      movlo r2, #0
0077fe48  0f e0 a0 e1                                      mov lr, pc
0077fe4c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0077fe50  04 00 a0 e1                                      mov r0, r4
0077fe54  e6 50 c4 e5                                      strb r5, [r4, #0xe6]
0077fe58  70 40 bd e8                                      pop {r4, r5, r6, lr}
0077fe5c  a1 d4 ff ea                                      b #0x7750e8

; FUNCTION 0x0077fe60, declared_size=224, range_size=224, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance17notify_set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::sprite_instance::notify_set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
0077fe60  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0077fe64  d0 60 d1 e1                                      ldrsb r6, [r1]
0077fe68  00 50 a0 e1                                      mov r5, r0
0077fe6c  01 40 a0 e1                                      mov r4, r1
0077fe70  01 00 76 e3                                      cmn r6, #1
0077fe74  01 00 81 12                                      addne r0, r1, #1
0077fe78  0c 00 91 05                                      ldreq r0, [r1, #0xc]
0077fe7c  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0077fe80  10 d0 4d e2                                      sub sp, sp, #0x10
0077fe84  01 10 8f e0                                      add r1, pc, r1
0077fe88  23 39 ee eb                                      bl #0x30e31c
0077fe8c  00 00 50 e3                                      cmp r0, #0
0077fe90  1e 00 00 0a                                      beq #0x77ff10
0077fe94  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0077fe98  01 00 76 e3                                      cmn r6, #1
0077fe9c  01 00 84 12                                      addne r0, r4, #1
0077fea0  0c 00 94 05                                      ldreq r0, [r4, #0xc]
0077fea4  02 20 a0 e3                                      mov r2, #2
0077fea8  01 10 8f e0                                      add r1, pc, r1
0077feac  72 3b ee eb                                      bl #0x30ec7c
0077feb0  00 60 50 e2                                      subs r6, r0, #0
0077feb4  13 00 00 1a                                      bne #0x77ff08
0077feb8  7c a0 9f e5                                      ldr sl, [pc, #0x7c]
0077febc  01 90 84 e2                                      add sb, r4, #1
0077fec0  04 80 8d e2                                      add r8, sp, #4
0077fec4  0a a0 8f e0                                      add sl, pc, sl
0077fec8  06 70 a0 e1                                      mov r7, r6
0077fecc  d0 30 d4 e1                                      ldrsb r3, [r4]
0077fed0  04 70 cd e5                                      strb r7, [sp, #4]
0077fed4  05 70 cd e5                                      strb r7, [sp, #5]
0077fed8  01 00 73 e3                                      cmn r3, #1
0077fedc  06 10 9a e7                                      ldr r1, [sl, r6]
0077fee0  09 00 a0 11                                      movne r0, sb
0077fee4  0c 00 94 05                                      ldreq r0, [r4, #0xc]
0077fee8  88 47 ff eb                                      bl #0x751d10
0077feec  00 00 50 e3                                      cmp r0, #0
0077fef0  04 60 86 e2                                      add r6, r6, #4
0077fef4  08 00 a0 e1                                      mov r0, r8
0077fef8  09 00 00 0a                                      beq #0x77ff24
0077fefc  88 5c 00 eb                                      bl #0x797124
0077ff00  20 00 56 e3                                      cmp r6, #0x20
0077ff04  f0 ff ff 1a                                      bne #0x77fecc
0077ff08  10 d0 8d e2                                      add sp, sp, #0x10
0077ff0c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0077ff10  01 30 a0 e3                                      mov r3, #1
0077ff14  e9 30 c5 e5                                      strb r3, [r5, #0xe9]
0077ff18  05 00 a0 e1                                      mov r0, r5
0077ff1c  71 d4 ff eb                                      bl #0x7750e8
0077ff20  f8 ff ff ea                                      b #0x77ff08
0077ff24  01 30 a0 e3                                      mov r3, #1
0077ff28  9c 30 c5 e5                                      strb r3, [r5, #0x9c]
0077ff2c  7c 5c 00 eb                                      bl #0x797124
0077ff30  f4 ff ff ea                                      b #0x77ff08
; mapping-symbol data/literal pool
0077ff34  54 9d 18 00 08 e6 15 00 88 aa 1d 00              .byte 0x54, 0x9d, 0x18, 0x00, 0x08, 0xe6, 0x15, 0x00, 0x88, 0xaa, 0x1d, 0x00

; FUNCTION 0x0077ff40, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance13get_transformEv
; demangled: gameswf::sprite_instance::get_transform()
; decoder-mode: arm
0077ff40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077ff44  00 40 a0 e1                                      mov r4, r0
0077ff48  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
0077ff4c  00 00 50 e3                                      cmp r0, #0
0077ff50  00 00 00 0a                                      beq #0x77ff58
0077ff54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0077ff58  30 70 94 e5                                      ldr r7, [r4, #0x30]
0077ff5c  f4 60 84 e2                                      add r6, r4, #0xf4
0077ff60  00 00 57 e3                                      cmp r7, #0
0077ff64  08 00 00 0a                                      beq #0x77ff8c
0077ff68  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0077ff6c  04 50 d3 e5                                      ldrb r5, [r3, #4]
0077ff70  00 00 55 e3                                      cmp r5, #0
0077ff74  04 00 00 1a                                      bne #0x77ff8c
0077ff78  2c 00 84 e2                                      add r0, r4, #0x2c
0077ff7c  05 10 a0 e1                                      mov r1, r5
0077ff80  bf 7f f2 eb                                      bl #0x41fe84
0077ff84  05 70 a0 e1                                      mov r7, r5
0077ff88  30 50 84 e5                                      str r5, [r4, #0x30]
0077ff8c  00 10 a0 e3                                      mov r1, #0
0077ff90  40 00 a0 e3                                      mov r0, #0x40
0077ff94  03 4b ff eb                                      bl #0x752ba8
0077ff98  07 10 a0 e1                                      mov r1, r7
0077ff9c  00 50 a0 e1                                      mov r5, r0
0077ffa0  04 20 a0 e1                                      mov r2, r4
0077ffa4  b8 9e 00 eb                                      bl #0x7a7a8c
0077ffa8  06 00 a0 e1                                      mov r0, r6
0077ffac  05 10 a0 e1                                      mov r1, r5
0077ffb0  cc f8 ff eb                                      bl #0x77e2e8
0077ffb4  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
0077ffb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0077ffbc, declared_size=468, range_size=468, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::sprite_instance::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
0077ffbc  70 40 2d e9                                      push {r4, r5, r6, lr}
0077ffc0  00 40 a0 e1                                      mov r4, r0
0077ffc4  a8 00 80 e2                                      add r0, r0, #0xa8
0077ffc8  01 60 a0 e1                                      mov r6, r1
0077ffcc  02 50 a0 e1                                      mov r5, r2
0077ffd0  e0 57 ff eb                                      bl #0x755f58
0077ffd4  00 10 50 e2                                      subs r1, r0, #0
0077ffd8  03 00 00 0a                                      beq #0x77ffec
0077ffdc  05 00 a0 e1                                      mov r0, r5
0077ffe0  9a 5c 00 eb                                      bl #0x797250
0077ffe4  01 00 a0 e3                                      mov r0, #1
0077ffe8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0077ffec  04 00 a0 e1                                      mov r0, r4
0077fff0  06 10 a0 e1                                      mov r1, r6
0077fff4  05 20 a0 e1                                      mov r2, r5
0077fff8  27 50 ff eb                                      bl #0x75409c
0077fffc  00 00 50 e3                                      cmp r0, #0
00780000  01 00 00 0a                                      beq #0x78000c
00780004  01 00 a0 e3                                      mov r0, #1
00780008  70 80 bd e8                                      pop {r4, r5, r6, pc}
0078000c  01 00 a0 e3                                      mov r0, #1
00780010  06 10 a0 e1                                      mov r1, r6
00780014  05 20 a0 e1                                      mov r2, r5
00780018  7a b3 ff eb                                      bl #0x76ce08
0078001c  00 00 50 e3                                      cmp r0, #0
00780020  f7 ff ff 1a                                      bne #0x780004
00780024  06 00 a0 e1                                      mov r0, r6
00780028  00 c8 ff eb                                      bl #0x772030
0078002c  04 00 40 e2                                      sub r0, r0, #4
00780030  25 00 50 e3                                      cmp r0, #0x25
00780034  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
00780038  52 00 00 ea                                      b #0x780188
0078003c  49 00 00 ea                                      b #0x780168
00780040  3c 00 00 ea                                      b #0x780138
00780044  4f 00 00 ea                                      b #0x780188
00780048  4e 00 00 ea                                      b #0x780188
0078004c  4d 00 00 ea                                      b #0x780188
00780050  4c 00 00 ea                                      b #0x780188
00780054  4b 00 00 ea                                      b #0x780188
00780058  4a 00 00 ea                                      b #0x780188
0078005c  28 00 00 ea                                      b #0x780104
00780060  48 00 00 ea                                      b #0x780188
00780064  47 00 00 ea                                      b #0x780188
00780068  46 00 00 ea                                      b #0x780188
0078006c  45 00 00 ea                                      b #0x780188
00780070  44 00 00 ea                                      b #0x780188
00780074  43 00 00 ea                                      b #0x780188
00780078  42 00 00 ea                                      b #0x780188
0078007c  41 00 00 ea                                      b #0x780188
00780080  40 00 00 ea                                      b #0x780188
00780084  3f 00 00 ea                                      b #0x780188
00780088  3e 00 00 ea                                      b #0x780188
0078008c  3d 00 00 ea                                      b #0x780188
00780090  3c 00 00 ea                                      b #0x780188
00780094  3b 00 00 ea                                      b #0x780188
00780098  3a 00 00 ea                                      b #0x780188
0078009c  39 00 00 ea                                      b #0x780188
007800a0  38 00 00 ea                                      b #0x780188
007800a4  37 00 00 ea                                      b #0x780188
007800a8  36 00 00 ea                                      b #0x780188
007800ac  35 00 00 ea                                      b #0x780188
007800b0  34 00 00 ea                                      b #0x780188
007800b4  33 00 00 ea                                      b #0x780188
007800b8  32 00 00 ea                                      b #0x780188
007800bc  31 00 00 ea                                      b #0x780188
007800c0  30 00 00 ea                                      b #0x780188
007800c4  2f 00 00 ea                                      b #0x780188
007800c8  2e 00 00 ea                                      b #0x780188
007800cc  07 00 00 ea                                      b #0x7800f0
007800d0  ff ff ff ea                                      b #0x7800d4
007800d4  04 00 a0 e1                                      mov r0, r4
007800d8  98 ff ff eb                                      bl #0x77ff40
007800dc  37 9d 00 eb                                      bl #0x7a75c0
007800e0  04 00 a0 e1                                      mov r0, r4
007800e4  95 ff ff eb                                      bl #0x77ff40
007800e8  00 10 a0 e1                                      mov r1, r0
007800ec  ba ff ff ea                                      b #0x77ffdc
007800f0  05 00 a0 e1                                      mov r0, r5
007800f4  ea 10 d4 e5                                      ldrb r1, [r4, #0xea]
007800f8  4c 5c 00 eb                                      bl #0x797230
007800fc  01 00 a0 e3                                      mov r0, #1
00780100  70 80 bd e8                                      pop {r4, r5, r6, pc}
00780104  04 00 a0 e1                                      mov r0, r4
00780108  00 30 94 e5                                      ldr r3, [r4]
0078010c  0f e0 a0 e1                                      mov lr, pc
00780110  40 f1 93 e5                                      ldr pc, [r3, #0x140]
00780114  00 00 50 e3                                      cmp r0, #0
00780118  0c 00 00 ba                                      blt #0x780150
0078011c  03 3b ee eb                                      bl #0x30ed30
00780120  00 20 a0 e1                                      mov r2, r0
00780124  01 30 a0 e1                                      mov r3, r1
00780128  05 00 a0 e1                                      mov r0, r5
0078012c  d5 5c 00 eb                                      bl #0x797488
00780130  01 00 a0 e3                                      mov r0, #1
00780134  70 80 bd e8                                      pop {r4, r5, r6, pc}
00780138  04 00 a0 e1                                      mov r0, r4
0078013c  00 30 94 e5                                      ldr r3, [r4]
00780140  0f e0 a0 e1                                      mov lr, pc
00780144  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
00780148  00 00 50 e3                                      cmp r0, #0
0078014c  f2 ff ff aa                                      bge #0x78011c
00780150  05 00 a0 e1                                      mov r0, r5
00780154  f2 5b 00 eb                                      bl #0x797124
00780158  00 30 a0 e3                                      mov r3, #0
0078015c  01 30 c5 e5                                      strb r3, [r5, #1]
00780160  01 00 a0 e3                                      mov r0, #1
00780164  70 80 bd e8                                      pop {r4, r5, r6, pc}
00780168  04 00 a0 e1                                      mov r0, r4
0078016c  00 30 94 e5                                      ldr r3, [r4]
00780170  0f e0 a0 e1                                      mov lr, pc
00780174  38 f1 93 e5                                      ldr pc, [r3, #0x138]
00780178  00 00 50 e3                                      cmp r0, #0
0078017c  01 00 80 a2                                      addge r0, r0, #1
00780180  e5 ff ff aa                                      bge #0x78011c
00780184  f1 ff ff ea                                      b #0x780150
00780188  00 00 a0 e3                                      mov r0, #0
0078018c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007801e4, declared_size=400, range_size=400, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance7displayEv
; demangled: gameswf::sprite_instance::display()
; decoder-mode: arm
007801e4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007801e8  9b 30 d0 e5                                      ldrb r3, [r0, #0x9b]
007801ec  78 41 9f e5                                      ldr r4, [pc, #0x178]
007801f0  00 50 a0 e1                                      mov r5, r0
007801f4  00 00 53 e3                                      cmp r3, #0
007801f8  04 40 8f e0                                      add r4, pc, r4
007801fc  05 00 00 0a                                      beq #0x780218
00780200  54 30 90 e5                                      ldr r3, [r0, #0x54]
00780204  00 00 53 e3                                      cmp r3, #0
00780208  03 00 00 0a                                      beq #0x78021c
0078020c  68 30 93 e5                                      ldr r3, [r3, #0x68]
00780210  00 00 53 e3                                      cmp r3, #0
00780214  00 00 00 0a                                      beq #0x78021c
00780218  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0078021c  ec 30 d5 e5                                      ldrb r3, [r5, #0xec]
00780220  00 00 53 e3                                      cmp r3, #0
00780224  11 00 00 0a                                      beq #0x780270
00780228  ac 30 95 e5                                      ldr r3, [r5, #0xac]
0078022c  00 00 53 e3                                      cmp r3, #0
00780230  05 00 00 0a                                      beq #0x78024c
00780234  50 30 95 e5                                      ldr r3, [r5, #0x50]
00780238  00 60 93 e5                                      ldr r6, [r3]
0078023c  00 00 56 e3                                      cmp r6, #0
00780240  10 00 00 1a                                      bne #0x780288
00780244  a8 00 85 e2                                      add r0, r5, #0xa8
00780248  17 54 ff eb                                      bl #0x7552ac
0078024c  54 30 95 e5                                      ldr r3, [r5, #0x54]
00780250  00 00 53 e3                                      cmp r3, #0
00780254  ef ff ff 0a                                      beq #0x780218
00780258  60 30 93 e5                                      ldr r3, [r3, #0x60]
0078025c  00 00 53 e3                                      cmp r3, #0
00780260  ec ff ff 0a                                      beq #0x780218
00780264  05 00 a0 e1                                      mov r0, r5
00780268  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0078026c  4a 4f ff ea                                      b #0x753f9c
00780270  00 30 95 e5                                      ldr r3, [r5]
00780274  05 00 a0 e1                                      mov r0, r5
00780278  fe 15 a0 e3                                      mov r1, #0x3f800000
0078027c  0f e0 a0 e1                                      mov lr, pc
00780280  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00780284  e7 ff ff ea                                      b #0x780228
00780288  2c 80 85 e2                                      add r8, r5, #0x2c
0078028c  08 00 a0 e1                                      mov r0, r8
00780290  be ff ff eb                                      bl #0x780190
00780294  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
00780298  00 00 53 e3                                      cmp r3, #0
0078029c  e8 ff ff 1a                                      bne #0x780244
007802a0  08 00 a0 e1                                      mov r0, r8
007802a4  b9 ff ff eb                                      bl #0x780190
007802a8  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
007802ac  a4 20 90 e5                                      ldr r2, [r0, #0xa4]
007802b0  00 70 a0 e1                                      mov r7, r0
007802b4  01 90 83 e2                                      add sb, r3, #1
007802b8  02 00 59 e1                                      cmp sb, r2
007802bc  03 00 00 da                                      ble #0x7802d0
007802c0  9c 00 80 e2                                      add r0, r0, #0x9c
007802c4  c9 10 89 e0                                      add r1, sb, sb, asr #1
007802c8  79 f9 ff eb                                      bl #0x77e8b4
007802cc  a0 30 97 e5                                      ldr r3, [r7, #0xa0]
007802d0  98 a0 9f e5                                      ldr sl, [pc, #0x98]
007802d4  9c 10 97 e5                                      ldr r1, [r7, #0x9c]
007802d8  0a 20 94 e7                                      ldr r2, [r4, sl]
007802dc  03 61 81 e7                                      str r6, [r1, r3, lsl #2]
007802e0  a0 90 87 e5                                      str sb, [r7, #0xa0]
007802e4  00 30 92 e5                                      ldr r3, [r2]
007802e8  00 00 53 e3                                      cmp r3, #0
007802ec  04 00 00 0a                                      beq #0x780304
007802f0  03 00 a0 e1                                      mov r0, r3
007802f4  06 10 a0 e1                                      mov r1, r6
007802f8  00 30 93 e5                                      ldr r3, [r3]
007802fc  0f e0 a0 e1                                      mov lr, pc
00780300  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00780304  a8 00 85 e2                                      add r0, r5, #0xa8
00780308  e7 53 ff eb                                      bl #0x7552ac
0078030c  08 00 a0 e1                                      mov r0, r8
00780310  9e ff ff eb                                      bl #0x780190
00780314  a0 70 90 e5                                      ldr r7, [r0, #0xa0]
00780318  00 60 a0 e1                                      mov r6, r0
0078031c  01 70 57 e2                                      subs r7, r7, #1
00780320  02 00 00 0a                                      beq #0x780330
00780324  a4 30 96 e5                                      ldr r3, [r6, #0xa4]
00780328  03 00 57 e1                                      cmp r7, r3
0078032c  0a 00 00 ca                                      bgt #0x78035c
00780330  0a 30 94 e7                                      ldr r3, [r4, sl]
00780334  a0 70 86 e5                                      str r7, [r6, #0xa0]
00780338  00 30 93 e5                                      ldr r3, [r3]
0078033c  00 00 53 e3                                      cmp r3, #0
00780340  c1 ff ff 0a                                      beq #0x78024c
00780344  03 00 a0 e1                                      mov r0, r3
00780348  00 10 a0 e3                                      mov r1, #0
0078034c  00 30 93 e5                                      ldr r3, [r3]
00780350  0f e0 a0 e1                                      mov lr, pc
00780354  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00780358  bb ff ff ea                                      b #0x78024c
0078035c  9c 00 86 e2                                      add r0, r6, #0x9c
00780360  c7 10 87 e0                                      add r1, r7, r7, asr #1
00780364  52 f9 ff eb                                      bl #0x77e8b4
00780368  f0 ff ff ea                                      b #0x780330
; mapping-symbol data/literal pool
0078036c  98 48 21 00 b4 39 00 00                          .byte 0x98, 0x48, 0x21, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x007803c8, declared_size=268, range_size=268, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10get_canvasEv
; demangled: gameswf::sprite_instance::get_canvas()
; decoder-mode: arm
007803c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007803cc  f0 40 90 e5                                      ldr r4, [r0, #0xf0]
007803d0  ec 60 9f e5                                      ldr r6, [pc, #0xec]
007803d4  18 d0 4d e2                                      sub sp, sp, #0x18
007803d8  00 00 54 e3                                      cmp r4, #0
007803dc  00 50 a0 e1                                      mov r5, r0
007803e0  06 60 8f e0                                      add r6, pc, r6
007803e4  10 00 00 0a                                      beq #0x78042c
007803e8  04 00 a0 e1                                      mov r0, r4
007803ec  00 30 94 e5                                      ldr r3, [r4]
007803f0  0f e0 a0 e1                                      mov lr, pc
007803f4  30 f1 93 e5                                      ldr pc, [r3, #0x130]
007803f8  00 40 50 e2                                      subs r4, r0, #0
007803fc  02 00 00 1a                                      bne #0x78040c
00780400  00 00 a0 e3                                      mov r0, #0
00780404  18 d0 8d e2                                      add sp, sp, #0x18
00780408  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0078040c  00 30 94 e5                                      ldr r3, [r4]
00780410  14 10 a0 e3                                      mov r1, #0x14
00780414  0f e0 a0 e1                                      mov lr, pc
00780418  08 f0 93 e5                                      ldr pc, [r3, #8]
0078041c  00 00 50 e3                                      cmp r0, #0
00780420  04 00 a0 11                                      movne r0, r4
00780424  f6 ff ff 1a                                      bne #0x780404
00780428  f4 ff ff ea                                      b #0x780400
0078042c  d0 ff ff eb                                      bl #0x780374
00780430  04 10 a0 e1                                      mov r1, r4
00780434  00 80 a0 e1                                      mov r8, r0
00780438  9c 00 a0 e3                                      mov r0, #0x9c
0078043c  d9 49 ff eb                                      bl #0x752ba8
00780440  08 10 a0 e1                                      mov r1, r8
00780444  00 70 a0 e1                                      mov r7, r0
00780448  bb 21 01 eb                                      bl #0x7c8b3c
0078044c  00 30 97 e5                                      ldr r3, [r7]
00780450  00 20 e0 e3                                      mvn r2, #0
00780454  07 00 a0 e1                                      mov r0, r7
00780458  05 10 a0 e1                                      mov r1, r5
0078045c  0f e0 a0 e1                                      mov lr, pc
00780460  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00780464  00 10 a0 e1                                      mov r1, r0
00780468  f0 00 85 e2                                      add r0, r5, #0xf0
0078046c  46 53 ff eb                                      bl #0x75518c
00780470  05 00 a0 e1                                      mov r0, r5
00780474  f0 80 95 e5                                      ldr r8, [r5, #0xf0]
00780478  2b fa ff eb                                      bl #0x77ed2c
0078047c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00780480  00 20 a0 e1                                      mov r2, r0
00780484  08 10 a0 e1                                      mov r1, r8
00780488  03 70 96 e7                                      ldr r7, [r6, r3]
0078048c  38 30 9f e5                                      ldr r3, [pc, #0x38]
00780490  a8 00 85 e2                                      add r0, r5, #0xa8
00780494  10 40 8d e5                                      str r4, [sp, #0x10]
00780498  03 e0 96 e7                                      ldr lr, [r6, r3]
0078049c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007804a0  80 40 8d e8                                      stm sp, {r7, lr}
007804a4  03 c0 96 e7                                      ldr ip, [r6, r3]
007804a8  01 30 a0 e3                                      mov r3, #1
007804ac  08 c0 8d e5                                      str ip, [sp, #8]
007804b0  00 c0 a0 e3                                      mov ip, #0
007804b4  0c c0 8d e5                                      str ip, [sp, #0xc]
007804b8  32 58 ff eb                                      bl #0x756588
007804bc  f0 40 95 e5                                      ldr r4, [r5, #0xf0]
007804c0  c8 ff ff ea                                      b #0x7803e8
; mapping-symbol data/literal pool
007804c4  b0 46 21 00 84 34 00 00 c8 40 00 00 e4 3d 00 00  .byte 0xb0, 0x46, 0x21, 0x00, 0x84, 0x34, 0x00, 0x00, 0xc8, 0x40, 0x00, 0x00, 0xe4, 0x3d, 0x00, 0x00

; FUNCTION 0x00780528, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance22find_exported_resourceERKNS_9tu_stringE
; demangled: gameswf::sprite_instance::find_exported_resource(gameswf::tu_string const&)
; decoder-mode: arm
00780528  70 40 2d e9                                      push {r4, r5, r6, lr}
0078052c  00 30 90 e5                                      ldr r3, [r0]
00780530  01 50 a0 e1                                      mov r5, r1
00780534  00 40 a0 e1                                      mov r4, r0
00780538  0f e0 a0 e1                                      mov lr, pc
0078053c  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00780540  c4 f6 ff eb                                      bl #0x77e058
00780544  00 30 50 e2                                      subs r3, r0, #0
00780548  06 00 00 0a                                      beq #0x780568
0078054c  00 30 93 e5                                      ldr r3, [r3]
00780550  05 10 a0 e1                                      mov r1, r5
00780554  0f e0 a0 e1                                      mov lr, pc
00780558  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0078055c  00 00 50 e3                                      cmp r0, #0
00780560  00 00 00 0a                                      beq #0x780568
00780564  70 80 bd e8                                      pop {r4, r5, r6, pc}
00780568  04 00 a0 e1                                      mov r0, r4
0078056c  d8 ff ff eb                                      bl #0x7804d4
00780570  00 30 50 e2                                      subs r3, r0, #0
00780574  04 00 00 0a                                      beq #0x78058c
00780578  00 30 93 e5                                      ldr r3, [r3]
0078057c  05 10 a0 e1                                      mov r1, r5
00780580  0f e0 a0 e1                                      mov lr, pc
00780584  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00780588  f5 ff ff ea                                      b #0x780564
0078058c  03 00 a0 e1                                      mov r0, r3
00780590  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00780594, declared_size=264, range_size=264, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10this_aliveEv
; demangled: gameswf::sprite_instance::this_alive()
; decoder-mode: arm
00780594  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00780598  30 30 90 e5                                      ldr r3, [r0, #0x30]
0078059c  00 60 a0 e1                                      mov r6, r0
007805a0  00 00 53 e3                                      cmp r3, #0
007805a4  03 00 00 0a                                      beq #0x7805b8
007805a8  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
007805ac  04 20 d0 e5                                      ldrb r2, [r0, #4]
007805b0  00 00 52 e3                                      cmp r2, #0
007805b4  2e 00 00 0a                                      beq #0x780674
007805b8  30 30 93 e5                                      ldr r3, [r3, #0x30]
007805bc  34 20 96 e5                                      ldr r2, [r6, #0x34]
007805c0  03 00 52 e1                                      cmp r2, r3
007805c4  29 00 00 0a                                      beq #0x780670
007805c8  06 00 a0 e1                                      mov r0, r6
007805cc  d1 af ff eb                                      bl #0x76c518
007805d0  ac 70 96 e5                                      ldr r7, [r6, #0xac]
007805d4  00 00 57 e3                                      cmp r7, #0
007805d8  24 00 00 da                                      ble #0x780670
007805dc  00 40 a0 e3                                      mov r4, #0
007805e0  04 80 a0 e1                                      mov r8, r4
007805e4  09 00 00 ea                                      b #0x780610
007805e8  30 30 92 e5                                      ldr r3, [r2, #0x30]
007805ec  34 20 95 e5                                      ldr r2, [r5, #0x34]
007805f0  05 00 a0 e1                                      mov r0, r5
007805f4  03 00 52 e1                                      cmp r2, r3
007805f8  02 00 00 0a                                      beq #0x780608
007805fc  00 30 95 e5                                      ldr r3, [r5]
00780600  0f e0 a0 e1                                      mov lr, pc
00780604  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00780608  07 00 54 e1                                      cmp r4, r7
0078060c  17 00 00 0a                                      beq #0x780670
00780610  a8 30 96 e5                                      ldr r3, [r6, #0xa8]
00780614  04 51 93 e7                                      ldr r5, [r3, r4, lsl #2]
00780618  01 40 84 e2                                      add r4, r4, #1
0078061c  00 00 55 e3                                      cmp r5, #0
00780620  f8 ff ff 0a                                      beq #0x780608
00780624  30 20 96 e5                                      ldr r2, [r6, #0x30]
00780628  00 00 52 e3                                      cmp r2, #0
0078062c  ed ff ff 0a                                      beq #0x7805e8
00780630  2c 30 96 e5                                      ldr r3, [r6, #0x2c]
00780634  04 10 d3 e5                                      ldrb r1, [r3, #4]
00780638  00 00 51 e3                                      cmp r1, #0
0078063c  e9 ff ff 1a                                      bne #0x7805e8
00780640  00 20 93 e5                                      ldr r2, [r3]
00780644  03 00 a0 e1                                      mov r0, r3
00780648  01 20 42 e2                                      sub r2, r2, #1
0078064c  00 00 52 e3                                      cmp r2, #0
00780650  02 10 a0 e1                                      mov r1, r2
00780654  00 20 83 e5                                      str r2, [r3]
00780658  00 00 00 1a                                      bne #0x780660
0078065c  35 49 ff eb                                      bl #0x752b38
00780660  2c 80 86 e5                                      str r8, [r6, #0x2c]
00780664  30 80 86 e5                                      str r8, [r6, #0x30]
00780668  08 20 a0 e1                                      mov r2, r8
0078066c  dd ff ff ea                                      b #0x7805e8
00780670  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00780674  00 10 90 e5                                      ldr r1, [r0]
00780678  01 10 41 e2                                      sub r1, r1, #1
0078067c  00 00 51 e3                                      cmp r1, #0
00780680  00 10 80 e5                                      str r1, [r0]
00780684  00 00 00 1a                                      bne #0x78068c
00780688  2a 49 ff eb                                      bl #0x752b38
0078068c  00 30 a0 e3                                      mov r3, #0
00780690  2c 30 86 e5                                      str r3, [r6, #0x2c]
00780694  30 30 86 e5                                      str r3, [r6, #0x30]
00780698  c6 ff ff ea                                      b #0x7805b8

; FUNCTION 0x0078069c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance15do_init_actionsEv
; demangled: gameswf::sprite_instance::do_init_actions()
; decoder-mode: arm
0078069c  10 40 2d e9                                      push {r4, lr}
007806a0  dc 30 90 e5                                      ldr r3, [r0, #0xdc]
007806a4  00 40 a0 e1                                      mov r4, r0
007806a8  00 00 53 e3                                      cmp r3, #0
007806ac  0f 00 00 0a                                      beq #0x7806f0
007806b0  6b 65 ff eb                                      bl #0x759c64
007806b4  00 30 94 e5                                      ldr r3, [r4]
007806b8  04 00 a0 e1                                      mov r0, r4
007806bc  0f e0 a0 e1                                      mov lr, pc
007806c0  58 f0 93 e5                                      ldr pc, [r3, #0x58]
007806c4  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
007806c8  50 6c ff eb                                      bl #0x75b810
007806cc  dc 00 94 e5                                      ldr r0, [r4, #0xdc]
007806d0  04 30 90 e5                                      ldr r3, [r0, #4]
007806d4  00 00 53 e3                                      cmp r3, #0
007806d8  05 00 00 da                                      ble #0x7806f4
007806dc  00 30 a0 e3                                      mov r3, #0
007806e0  04 30 80 e5                                      str r3, [r0, #4]
007806e4  04 00 a0 e1                                      mov r0, r4
007806e8  10 40 bd e8                                      pop {r4, lr}
007806ec  d3 66 ff ea                                      b #0x75a240
007806f0  10 80 bd e8                                      pop {r4, pc}
007806f4  f8 ff ff aa                                      bge #0x7806dc
007806f8  03 21 a0 e1                                      lsl r2, r3, #2
007806fc  00 c0 a0 e3                                      mov ip, #0
00780700  00 10 90 e5                                      ldr r1, [r0]
00780704  01 30 93 e2                                      adds r3, r3, #1
00780708  02 c0 81 e7                                      str ip, [r1, r2]
0078070c  04 20 82 e2                                      add r2, r2, #4
00780710  fa ff ff 1a                                      bne #0x780700
00780714  f0 ff ff ea                                      b #0x7806dc

; FUNCTION 0x00780718, declared_size=592, range_size=592, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instanceC1EPNS_6playerEPNS_20movie_definition_subEPNS_4rootEPNS_9characterEi
; demangled: gameswf::sprite_instance::sprite_instance(gameswf::player*, gameswf::movie_definition_sub*, gameswf::root*, gameswf::character*, int)
; decoder-mode: arm
00780718  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0078071c  08 d0 4d e2                                      sub sp, sp, #8
00780720  02 60 a0 e1                                      mov r6, r2
00780724  02 c0 a0 e3                                      mov ip, #2
00780728  03 70 a0 e1                                      mov r7, r3
0078072c  2c 52 9f e5                                      ldr r5, [pc, #0x22c]
00780730  24 30 9d e5                                      ldr r3, [sp, #0x24]
00780734  20 20 9d e5                                      ldr r2, [sp, #0x20]
00780738  00 40 a0 e1                                      mov r4, r0
0078073c  00 c0 8d e5                                      str ip, [sp]
00780740  f8 50 ff eb                                      bl #0x754b28
00780744  18 32 9f e5                                      ldr r3, [pc, #0x218]
00780748  05 50 8f e0                                      add r5, pc, r5
0078074c  00 00 56 e3                                      cmp r6, #0
00780750  03 30 95 e7                                      ldr r3, [r5, r3]
00780754  a0 60 84 e5                                      str r6, [r4, #0xa0]
00780758  08 30 83 e2                                      add r3, r3, #8
0078075c  00 30 84 e5                                      str r3, [r4]
00780760  01 00 00 0a                                      beq #0x78076c
00780764  06 00 a0 e1                                      mov r0, r6
00780768  3d 65 ff eb                                      bl #0x759c64
0078076c  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00780770  00 50 a0 e3                                      mov r5, #0
00780774  01 20 a0 e3                                      mov r2, #1
00780778  a4 70 84 e5                                      str r7, [r4, #0xa4]
0078077c  ea 20 c4 e5                                      strb r2, [r4, #0xea]
00780780  a8 50 84 e5                                      str r5, [r4, #0xa8]
00780784  ac 50 84 e5                                      str r5, [r4, #0xac]
00780788  b0 50 84 e5                                      str r5, [r4, #0xb0]
0078078c  b4 50 c4 e5                                      strb r5, [r4, #0xb4]
00780790  b8 50 84 e5                                      str r5, [r4, #0xb8]
00780794  bc 50 84 e5                                      str r5, [r4, #0xbc]
00780798  c0 50 84 e5                                      str r5, [r4, #0xc0]
0078079c  c4 50 84 e5                                      str r5, [r4, #0xc4]
007807a0  c8 50 c4 e5                                      strb r5, [r4, #0xc8]
007807a4  cc 50 84 e5                                      str r5, [r4, #0xcc]
007807a8  d0 50 84 e5                                      str r5, [r4, #0xd0]
007807ac  d4 50 84 e5                                      str r5, [r4, #0xd4]
007807b0  d8 50 c4 e5                                      strb r5, [r4, #0xd8]
007807b4  dc 50 84 e5                                      str r5, [r4, #0xdc]
007807b8  e0 50 84 e5                                      str r5, [r4, #0xe0]
007807bc  b4 5e c4 e1                                      strh r5, [r4, #0xe4]
007807c0  e6 50 c4 e5                                      strb r5, [r4, #0xe6]
007807c4  e7 50 c4 e5                                      strb r5, [r4, #0xe7]
007807c8  e8 20 c4 e5                                      strb r2, [r4, #0xe8]
007807cc  e9 50 c4 e5                                      strb r5, [r4, #0xe9]
007807d0  eb 50 c4 e5                                      strb r5, [r4, #0xeb]
007807d4  ec 50 c4 e5                                      strb r5, [r4, #0xec]
007807d8  f0 50 84 e5                                      str r5, [r4, #0xf0]
007807dc  f4 50 84 e5                                      str r5, [r4, #0xf4]
007807e0  f8 50 84 e5                                      str r5, [r4, #0xf8]
007807e4  fc 50 84 e5                                      str r5, [r4, #0xfc]
007807e8  03 00 a0 e1                                      mov r0, r3
007807ec  00 30 93 e5                                      ldr r3, [r3]
007807f0  0f e0 a0 e1                                      mov lr, pc
007807f4  88 f0 93 e5                                      ldr pc, [r3, #0x88]
007807f8  05 00 50 e1                                      cmp r0, r5
007807fc  15 00 00 1a                                      bne #0x780858
00780800  30 10 94 e5                                      ldr r1, [r4, #0x30]
00780804  00 00 51 e3                                      cmp r1, #0
00780808  01 30 a0 e1                                      mov r3, r1
0078080c  03 00 00 0a                                      beq #0x780820
00780810  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00780814  04 20 d0 e5                                      ldrb r2, [r0, #4]
00780818  00 00 52 e3                                      cmp r2, #0
0078081c  3c 00 00 0a                                      beq #0x780914
00780820  30 30 93 e5                                      ldr r3, [r3, #0x30]
00780824  00 00 51 e3                                      cmp r1, #0
00780828  34 30 84 e5                                      str r3, [r4, #0x34]
0078082c  03 00 00 0a                                      beq #0x780840
00780830  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00780834  04 30 d0 e5                                      ldrb r3, [r0, #4]
00780838  00 00 53 e3                                      cmp r3, #0
0078083c  2a 00 00 0a                                      beq #0x7808ec
00780840  04 00 a0 e1                                      mov r0, r4
00780844  88 10 81 e2                                      add r1, r1, #0x88
00780848  2e a1 ff eb                                      bl #0x768d08
0078084c  04 00 a0 e1                                      mov r0, r4
00780850  08 d0 8d e2                                      add sp, sp, #8
00780854  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00780858  05 10 a0 e1                                      mov r1, r5
0078085c  20 00 a0 e3                                      mov r0, #0x20
00780860  d0 48 ff eb                                      bl #0x752ba8
00780864  1c 50 c0 e5                                      strb r5, [r0, #0x1c]
00780868  00 50 80 e5                                      str r5, [r0]
0078086c  04 50 80 e5                                      str r5, [r0, #4]
00780870  08 50 80 e5                                      str r5, [r0, #8]
00780874  0c 50 c0 e5                                      strb r5, [r0, #0xc]
00780878  10 50 80 e5                                      str r5, [r0, #0x10]
0078087c  14 50 80 e5                                      str r5, [r0, #0x14]
00780880  18 50 80 e5                                      str r5, [r0, #0x18]
00780884  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00780888  dc 00 84 e5                                      str r0, [r4, #0xdc]
0078088c  00 70 a0 e1                                      mov r7, r0
00780890  10 80 80 e2                                      add r8, r0, #0x10
00780894  03 00 a0 e1                                      mov r0, r3
00780898  00 30 93 e5                                      ldr r3, [r3]
0078089c  0f e0 a0 e1                                      mov lr, pc
007808a0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
007808a4  00 60 50 e2                                      subs r6, r0, #0
007808a8  14 50 97 e5                                      ldr r5, [r7, #0x14]
007808ac  24 00 00 1a                                      bne #0x780944
007808b0  05 00 56 e1                                      cmp r6, r5
007808b4  05 00 00 da                                      ble #0x7808d0
007808b8  00 20 a0 e3                                      mov r2, #0
007808bc  00 30 98 e5                                      ldr r3, [r8]
007808c0  05 20 c3 e7                                      strb r2, [r3, r5]
007808c4  01 50 85 e2                                      add r5, r5, #1
007808c8  06 00 55 e1                                      cmp r5, r6
007808cc  fa ff ff 1a                                      bne #0x7808bc
007808d0  14 60 87 e5                                      str r6, [r7, #0x14]
007808d4  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
007808d8  00 10 a0 e3                                      mov r1, #0
007808dc  14 20 93 e5                                      ldr r2, [r3, #0x14]
007808e0  10 00 93 e5                                      ldr r0, [r3, #0x10]
007808e4  dd 36 ee eb                                      bl #0x30e460
007808e8  c4 ff ff ea                                      b #0x780800
007808ec  00 10 90 e5                                      ldr r1, [r0]
007808f0  01 10 41 e2                                      sub r1, r1, #1
007808f4  00 00 51 e3                                      cmp r1, #0
007808f8  00 10 80 e5                                      str r1, [r0]
007808fc  00 00 00 1a                                      bne #0x780904
00780900  8c 48 ff eb                                      bl #0x752b38
00780904  00 10 a0 e3                                      mov r1, #0
00780908  2c 10 84 e5                                      str r1, [r4, #0x2c]
0078090c  30 10 84 e5                                      str r1, [r4, #0x30]
00780910  ca ff ff ea                                      b #0x780840
00780914  00 10 90 e5                                      ldr r1, [r0]
00780918  01 10 41 e2                                      sub r1, r1, #1
0078091c  00 00 51 e3                                      cmp r1, #0
00780920  00 10 80 e5                                      str r1, [r0]
00780924  00 00 00 1a                                      bne #0x78092c
00780928  82 48 ff eb                                      bl #0x752b38
0078092c  00 20 a0 e3                                      mov r2, #0
00780930  02 30 a0 e1                                      mov r3, r2
00780934  2c 20 84 e5                                      str r2, [r4, #0x2c]
00780938  30 20 84 e5                                      str r2, [r4, #0x30]
0078093c  02 10 a0 e1                                      mov r1, r2
00780940  b6 ff ff ea                                      b #0x780820
00780944  18 30 97 e5                                      ldr r3, [r7, #0x18]
00780948  03 00 56 e1                                      cmp r6, r3
0078094c  d7 ff ff da                                      ble #0x7808b0
00780950  08 00 a0 e1                                      mov r0, r8
00780954  c6 10 86 e0                                      add r1, r6, r6, asr #1
00780958  f4 f7 ff eb                                      bl #0x77e930
0078095c  d3 ff ff ea                                      b #0x7808b0
; mapping-symbol data/literal pool
00780960  48 43 21 00 74 4b 00 00                          .byte 0x48, 0x43, 0x21, 0x00, 0x74, 0x4b, 0x00, 0x00

; FUNCTION 0x00780968, declared_size=584, range_size=584, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::sprite_instance::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
00780968  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0078096c  2c 42 9f e5                                      ldr r4, [pc, #0x22c]
00780970  2c 52 9f e5                                      ldr r5, [pc, #0x22c]
00780974  38 d0 4d e2                                      sub sp, sp, #0x38
00780978  04 40 8f e0                                      add r4, pc, r4
0078097c  05 30 94 e7                                      ldr r3, [r4, r5]
00780980  00 60 a0 e1                                      mov r6, r0
00780984  01 00 a0 e1                                      mov r0, r1
00780988  00 30 93 e5                                      ldr r3, [r3]
0078098c  01 70 a0 e1                                      mov r7, r1
00780990  02 80 a0 e1                                      mov r8, r2
00780994  34 30 8d e5                                      str r3, [sp, #0x34]
00780998  a4 c5 ff eb                                      bl #0x772030
0078099c  28 00 50 e3                                      cmp r0, #0x28
007809a0  0c 00 00 0a                                      beq #0x7809d8
007809a4  29 00 50 e3                                      cmp r0, #0x29
007809a8  0f 00 00 0a                                      beq #0x7809ec
007809ac  06 00 a0 e1                                      mov r0, r6
007809b0  07 10 a0 e1                                      mov r1, r7
007809b4  08 20 a0 e1                                      mov r2, r8
007809b8  17 4b ff eb                                      bl #0x75361c
007809bc  05 30 94 e7                                      ldr r3, [r4, r5]
007809c0  34 20 9d e5                                      ldr r2, [sp, #0x34]
007809c4  00 30 93 e5                                      ldr r3, [r3]
007809c8  03 00 52 e1                                      cmp r2, r3
007809cc  72 00 00 1a                                      bne #0x780b9c
007809d0  38 d0 8d e2                                      add sp, sp, #0x38
007809d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007809d8  08 00 a0 e1                                      mov r0, r8
007809dc  df 5b 00 eb                                      bl #0x797960
007809e0  ea 00 c6 e5                                      strb r0, [r6, #0xea]
007809e4  01 00 a0 e3                                      mov r0, #1
007809e8  f3 ff ff ea                                      b #0x7809bc
007809ec  d1 30 d8 e1                                      ldrsb r3, [r8, #1]
007809f0  05 00 53 e3                                      cmp r3, #5
007809f4  01 00 00 0a                                      beq #0x780a00
007809f8  01 00 a0 e3                                      mov r0, #1
007809fc  ee ff ff ea                                      b #0x7809bc
00780a00  04 70 98 e5                                      ldr r7, [r8, #4]
00780a04  00 00 57 e3                                      cmp r7, #0
00780a08  fa ff ff 0a                                      beq #0x7809f8
00780a0c  00 30 97 e5                                      ldr r3, [r7]
00780a10  07 00 a0 e1                                      mov r0, r7
00780a14  1b 10 a0 e3                                      mov r1, #0x1b
00780a18  0f e0 a0 e1                                      mov lr, pc
00780a1c  08 f0 93 e5                                      ldr pc, [r3, #8]
00780a20  00 00 50 e3                                      cmp r0, #0
00780a24  f3 ff ff 0a                                      beq #0x7809f8
00780a28  00 30 97 e5                                      ldr r3, [r7]
00780a2c  06 00 a0 e1                                      mov r0, r6
00780a30  20 90 8d e2                                      add sb, sp, #0x20
00780a34  48 80 93 e5                                      ldr r8, [r3, #0x48]
00780a38  40 fd ff eb                                      bl #0x77ff40
00780a3c  00 10 a0 e1                                      mov r1, r0
00780a40  07 00 a0 e1                                      mov r0, r7
00780a44  38 ff 2f e1                                      blx r8
00780a48  06 00 a0 e1                                      mov r0, r6
00780a4c  3b fd ff eb                                      bl #0x77ff40
00780a50  06 10 a0 e1                                      mov r1, r6
00780a54  38 00 80 e2                                      add r0, r0, #0x38
00780a58  52 9c f2 eb                                      bl #0x427ba8
00780a5c  00 30 a0 e3                                      mov r3, #0
00780a60  01 30 cd e5                                      strb r3, [sp, #1]
00780a64  00 30 cd e5                                      strb r3, [sp]
00780a68  38 11 9f e5                                      ldr r1, [pc, #0x138]
00780a6c  00 30 97 e5                                      ldr r3, [r7]
00780a70  09 00 a0 e1                                      mov r0, sb
00780a74  01 10 8f e0                                      add r1, pc, r1
00780a78  20 a0 93 e5                                      ldr sl, [r3, #0x20]
00780a7c  fe 4b f2 eb                                      bl #0x413a7c
00780a80  09 10 a0 e1                                      mov r1, sb
00780a84  07 00 a0 e1                                      mov r0, r7
00780a88  0d 20 a0 e1                                      mov r2, sp
00780a8c  3a ff 2f e1                                      blx sl
00780a90  d0 32 dd e1                                      ldrsb r3, [sp, #0x20]
00780a94  0d 80 a0 e1                                      mov r8, sp
00780a98  01 00 73 e3                                      cmn r3, #1
00780a9c  02 00 00 1a                                      bne #0x780aac
00780aa0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00780aa4  28 10 9d e5                                      ldr r1, [sp, #0x28]
00780aa8  22 48 ff eb                                      bl #0x752b38
00780aac  d1 30 dd e1                                      ldrsb r3, [sp, #1]
00780ab0  05 00 53 e3                                      cmp r3, #5
00780ab4  18 00 00 0a                                      beq #0x780b1c
00780ab8  0d 00 a0 e1                                      mov r0, sp
00780abc  98 59 00 eb                                      bl #0x797124
00780ac0  00 30 a0 e3                                      mov r3, #0
00780ac4  01 30 cd e5                                      strb r3, [sp, #1]
00780ac8  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00780acc  00 30 97 e5                                      ldr r3, [r7]
00780ad0  0c 90 8d e2                                      add sb, sp, #0xc
00780ad4  01 10 8f e0                                      add r1, pc, r1
00780ad8  09 00 a0 e1                                      mov r0, sb
00780adc  20 a0 93 e5                                      ldr sl, [r3, #0x20]
00780ae0  e5 4b f2 eb                                      bl #0x413a7c
00780ae4  07 00 a0 e1                                      mov r0, r7
00780ae8  09 10 a0 e1                                      mov r1, sb
00780aec  0d 20 a0 e1                                      mov r2, sp
00780af0  3a ff 2f e1                                      blx sl
00780af4  dc 30 dd e1                                      ldrsb r3, [sp, #0xc]
00780af8  01 00 73 e3                                      cmn r3, #1
00780afc  22 00 00 0a                                      beq #0x780b8c
00780b00  d1 30 dd e1                                      ldrsb r3, [sp, #1]
00780b04  05 00 53 e3                                      cmp r3, #5
00780b08  11 00 00 0a                                      beq #0x780b54
00780b0c  0d 00 a0 e1                                      mov r0, sp
00780b10  83 59 00 eb                                      bl #0x797124
00780b14  01 00 a0 e3                                      mov r0, #1
00780b18  a7 ff ff ea                                      b #0x7809bc
00780b1c  04 a0 9d e5                                      ldr sl, [sp, #4]
00780b20  00 00 5a e3                                      cmp sl, #0
00780b24  e3 ff ff 0a                                      beq #0x780ab8
00780b28  00 30 9a e5                                      ldr r3, [sl]
00780b2c  0a 00 a0 e1                                      mov r0, sl
00780b30  1a 10 a0 e3                                      mov r1, #0x1a
00780b34  0f e0 a0 e1                                      mov lr, pc
00780b38  08 f0 93 e5                                      ldr pc, [r3, #8]
00780b3c  00 00 50 e3                                      cmp r0, #0
00780b40  dc ff ff 0a                                      beq #0x780ab8
00780b44  38 10 8a e2                                      add r1, sl, #0x38
00780b48  06 00 a0 e1                                      mov r0, r6
00780b4c  a9 45 f2 eb                                      bl #0x4121f8
00780b50  d8 ff ff ea                                      b #0x780ab8
00780b54  04 70 9d e5                                      ldr r7, [sp, #4]
00780b58  00 00 57 e3                                      cmp r7, #0
00780b5c  ea ff ff 0a                                      beq #0x780b0c
00780b60  00 30 97 e5                                      ldr r3, [r7]
00780b64  07 00 a0 e1                                      mov r0, r7
00780b68  1c 10 a0 e3                                      mov r1, #0x1c
00780b6c  0f e0 a0 e1                                      mov lr, pc
00780b70  08 f0 93 e5                                      ldr pc, [r3, #8]
00780b74  00 00 50 e3                                      cmp r0, #0
00780b78  e3 ff ff 0a                                      beq #0x780b0c
00780b7c  06 00 a0 e1                                      mov r0, r6
00780b80  38 10 87 e2                                      add r1, r7, #0x38
00780b84  74 4a ff eb                                      bl #0x75355c
00780b88  df ff ff ea                                      b #0x780b0c
00780b8c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00780b90  14 10 9d e5                                      ldr r1, [sp, #0x14]
00780b94  e7 47 ff eb                                      bl #0x752b38
00780b98  d8 ff ff ea                                      b #0x780b00
00780b9c  db 35 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00780ba0  18 41 21 00 ac 40 00 00 4c 1e 16 00 d4 8c 18 00  .byte 0x18, 0x41, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0x1e, 0x16, 0x00, 0xd4, 0x8c, 0x18, 0x00

; FUNCTION 0x00780bb0, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance15get_environmentEv
; demangled: gameswf::sprite_instance::get_environment()
; decoder-mode: arm
00780bb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00780bb4  00 40 a0 e1                                      mov r4, r0
00780bb8  e0 00 90 e5                                      ldr r0, [r0, #0xe0]
00780bbc  00 00 50 e3                                      cmp r0, #0
00780bc0  00 00 00 0a                                      beq #0x780bc8
00780bc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00780bc8  30 50 94 e5                                      ldr r5, [r4, #0x30]
00780bcc  00 00 55 e3                                      cmp r5, #0
00780bd0  08 00 00 0a                                      beq #0x780bf8
00780bd4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00780bd8  04 60 d3 e5                                      ldrb r6, [r3, #4]
00780bdc  00 00 56 e3                                      cmp r6, #0
00780be0  04 00 00 1a                                      bne #0x780bf8
00780be4  2c 00 84 e2                                      add r0, r4, #0x2c
00780be8  06 10 a0 e1                                      mov r1, r6
00780bec  a4 7c f2 eb                                      bl #0x41fe84
00780bf0  06 50 a0 e1                                      mov r5, r6
00780bf4  30 60 84 e5                                      str r6, [r4, #0x30]
00780bf8  00 10 a0 e3                                      mov r1, #0
00780bfc  6c 00 a0 e3                                      mov r0, #0x6c
00780c00  e8 47 ff eb                                      bl #0x752ba8
00780c04  05 10 a0 e1                                      mov r1, r5
00780c08  00 60 a0 e1                                      mov r6, r0
00780c0c  ce 77 ff eb                                      bl #0x75eb4c
00780c10  06 00 a0 e1                                      mov r0, r6
00780c14  e0 60 84 e5                                      str r6, [r4, #0xe0]
00780c18  04 10 a0 e1                                      mov r1, r4
00780c1c  aa 30 01 eb                                      bl #0x7ccecc
00780c20  e0 00 94 e5                                      ldr r0, [r4, #0xe0]
00780c24  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00780c28, declared_size=632, range_size=632, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance17create_text_fieldEPKciiiii
; demangled: gameswf::sprite_instance::create_text_field(char const*, int, int, int, int, int)
; decoder-mode: arm
00780c28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00780c2c  58 42 9f e5                                      ldr r4, [pc, #0x258]
00780c30  58 a2 9f e5                                      ldr sl, [pc, #0x258]
00780c34  00 50 a0 e1                                      mov r5, r0
00780c38  04 40 8f e0                                      add r4, pc, r4
00780c3c  0a 00 94 e7                                      ldr r0, [r4, sl]
00780c40  30 60 95 e5                                      ldr r6, [r5, #0x30]
00780c44  01 90 a0 e1                                      mov sb, r1
00780c48  00 10 90 e5                                      ldr r1, [r0]
00780c4c  54 d0 4d e2                                      sub sp, sp, #0x54
00780c50  00 00 56 e3                                      cmp r6, #0
00780c54  1c 20 8d e5                                      str r2, [sp, #0x1c]
00780c58  4c 10 8d e5                                      str r1, [sp, #0x4c]
00780c5c  03 b0 a0 e1                                      mov fp, r3
00780c60  03 00 00 0a                                      beq #0x780c74
00780c64  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00780c68  04 30 d0 e5                                      ldrb r3, [r0, #4]
00780c6c  00 00 53 e3                                      cmp r3, #0
00780c70  76 00 00 0a                                      beq #0x780e50
00780c74  00 10 a0 e3                                      mov r1, #0
00780c78  a0 00 a0 e3                                      mov r0, #0xa0
00780c7c  c9 47 ff eb                                      bl #0x752ba8
00780c80  06 10 a0 e1                                      mov r1, r6
00780c84  00 70 a0 e1                                      mov r7, r0
00780c88  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00780c8c  80 30 9d e5                                      ldr r3, [sp, #0x80]
00780c90  36 33 00 eb                                      bl #0x78d970
00780c94  00 30 97 e5                                      ldr r3, [r7]
00780c98  00 20 a0 e3                                      mov r2, #0
00780c9c  05 10 a0 e1                                      mov r1, r5
00780ca0  07 00 a0 e1                                      mov r0, r7
00780ca4  0f e0 a0 e1                                      mov lr, pc
00780ca8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00780cac  38 80 8d e2                                      add r8, sp, #0x38
00780cb0  00 60 a0 e1                                      mov r6, r0
00780cb4  09 10 a0 e1                                      mov r1, sb
00780cb8  08 00 a0 e1                                      mov r0, r8
00780cbc  6e 4b f2 eb                                      bl #0x413a7c
00780cc0  06 00 a0 e1                                      mov r0, r6
00780cc4  08 10 a0 e1                                      mov r1, r8
00780cc8  3a 4a ff eb                                      bl #0x7535b8
00780ccc  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
00780cd0  01 00 73 e3                                      cmn r3, #1
00780cd4  67 00 00 0a                                      beq #0x780e78
00780cd8  20 80 8d e2                                      add r8, sp, #0x20
00780cdc  00 20 a0 e3                                      mov r2, #0
00780ce0  0c 30 88 e2                                      add r3, r8, #0xc
00780ce4  04 20 83 e4                                      str r2, [r3], #4
00780ce8  04 20 83 e4                                      str r2, [r3], #4
00780cec  00 20 83 e5                                      str r2, [r3]
00780cf0  fe 15 a0 e3                                      mov r1, #0x3f800000
00780cf4  0b 00 a0 e1                                      mov r0, fp
00780cf8  24 20 8d e5                                      str r2, [sp, #0x24]
00780cfc  30 10 8d e5                                      str r1, [sp, #0x30]
00780d00  20 10 8d e5                                      str r1, [sp, #0x20]
00780d04  16 37 ee eb                                      bl #0x30e964
00780d08  41 14 a0 e3                                      mov r1, #0x41000000
00780d0c  0a 16 81 e2                                      add r1, r1, #0xa00000
00780d10  15 38 ee eb                                      bl #0x30ed6c
00780d14  00 90 a0 e1                                      mov sb, r0
00780d18  78 00 9d e5                                      ldr r0, [sp, #0x78]
00780d1c  10 37 ee eb                                      bl #0x30e964
00780d20  41 14 a0 e3                                      mov r1, #0x41000000
00780d24  0a 16 81 e2                                      add r1, r1, #0xa00000
00780d28  0f 38 ee eb                                      bl #0x30ed6c
00780d2c  00 10 a0 e3                                      mov r1, #0
00780d30  00 b0 a0 e1                                      mov fp, r0
00780d34  0c 38 ee eb                                      bl #0x30ed6c
00780d38  00 10 a0 e1                                      mov r1, r0
00780d3c  09 00 a0 e1                                      mov r0, sb
00780d40  97 37 ee eb                                      bl #0x30eba4
00780d44  00 10 a0 e3                                      mov r1, #0
00780d48  95 37 ee eb                                      bl #0x30eba4
00780d4c  02 15 e0 e3                                      mvn r1, #0x800000
00780d50  00 70 a0 e1                                      mov r7, r0
00780d54  d6 35 ee eb                                      bl #0x30e4b4
00780d58  00 00 50 e3                                      cmp r0, #0
00780d5c  37 00 00 0a                                      beq #0x780e40
00780d60  02 11 e0 e3                                      mvn r1, #0x80000000
00780d64  07 00 a0 e1                                      mov r0, r7
00780d68  02 15 41 e2                                      sub r1, r1, #0x800000
00780d6c  0e 37 ee eb                                      bl #0x30e9ac
00780d70  00 00 50 e3                                      cmp r0, #0
00780d74  31 00 00 0a                                      beq #0x780e40
00780d78  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00780d7c  09 00 a0 e1                                      mov r0, sb
00780d80  28 70 8d e5                                      str r7, [sp, #0x28]
00780d84  f8 37 ee eb                                      bl #0x30ed6c
00780d88  00 10 a0 e1                                      mov r1, r0
00780d8c  0b 00 a0 e1                                      mov r0, fp
00780d90  83 37 ee eb                                      bl #0x30eba4
00780d94  34 10 9d e5                                      ldr r1, [sp, #0x34]
00780d98  81 37 ee eb                                      bl #0x30eba4
00780d9c  02 15 e0 e3                                      mvn r1, #0x800000
00780da0  00 70 a0 e1                                      mov r7, r0
00780da4  c2 35 ee eb                                      bl #0x30e4b4
00780da8  00 00 50 e3                                      cmp r0, #0
00780dac  25 00 00 0a                                      beq #0x780e48
00780db0  02 11 e0 e3                                      mvn r1, #0x80000000
00780db4  07 00 a0 e1                                      mov r0, r7
00780db8  02 15 41 e2                                      sub r1, r1, #0x800000
00780dbc  fa 36 ee eb                                      bl #0x30e9ac
00780dc0  00 00 50 e3                                      cmp r0, #0
00780dc4  1f 00 00 0a                                      beq #0x780e48
00780dc8  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00780dcc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00780dd0  a8 00 85 e2                                      add r0, r5, #0xa8
00780dd4  03 c0 94 e7                                      ldr ip, [r4, r3]
00780dd8  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00780ddc  06 10 a0 e1                                      mov r1, r6
00780de0  00 c0 8d e5                                      str ip, [sp]
00780de4  03 e0 94 e7                                      ldr lr, [r4, r3]
00780de8  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00780dec  00 c0 a0 e3                                      mov ip, #0
00780df0  0c c0 8d e5                                      str ip, [sp, #0xc]
00780df4  03 90 94 e7                                      ldr sb, [r4, r3]
00780df8  00 c0 a0 e3                                      mov ip, #0
00780dfc  01 30 a0 e3                                      mov r3, #1
00780e00  04 e0 8d e5                                      str lr, [sp, #4]
00780e04  10 c0 8d e5                                      str ip, [sp, #0x10]
00780e08  34 70 8d e5                                      str r7, [sp, #0x34]
00780e0c  08 90 8d e5                                      str sb, [sp, #8]
00780e10  dc 55 ff eb                                      bl #0x756588
00780e14  06 00 a0 e1                                      mov r0, r6
00780e18  08 10 a0 e1                                      mov r1, r8
00780e1c  f5 44 f2 eb                                      bl #0x4121f8
00780e20  0a 30 94 e7                                      ldr r3, [r4, sl]
00780e24  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00780e28  06 00 a0 e1                                      mov r0, r6
00780e2c  00 30 93 e5                                      ldr r3, [r3]
00780e30  03 00 52 e1                                      cmp r2, r3
00780e34  13 00 00 1a                                      bne #0x780e88
00780e38  54 d0 8d e2                                      add sp, sp, #0x54
00780e3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00780e40  00 70 a0 e3                                      mov r7, #0
00780e44  cb ff ff ea                                      b #0x780d78
00780e48  00 70 a0 e3                                      mov r7, #0
00780e4c  dd ff ff ea                                      b #0x780dc8
00780e50  00 10 90 e5                                      ldr r1, [r0]
00780e54  01 10 41 e2                                      sub r1, r1, #1
00780e58  00 00 51 e3                                      cmp r1, #0
00780e5c  00 10 80 e5                                      str r1, [r0]
00780e60  00 00 00 1a                                      bne #0x780e68
00780e64  33 47 ff eb                                      bl #0x752b38
00780e68  00 60 a0 e3                                      mov r6, #0
00780e6c  2c 60 85 e5                                      str r6, [r5, #0x2c]
00780e70  30 60 85 e5                                      str r6, [r5, #0x30]
00780e74  7e ff ff ea                                      b #0x780c74
00780e78  44 00 9d e5                                      ldr r0, [sp, #0x44]
00780e7c  40 10 9d e5                                      ldr r1, [sp, #0x40]
00780e80  2c 47 ff eb                                      bl #0x752b38
00780e84  93 ff ff ea                                      b #0x780cd8
00780e88  20 35 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00780e8c  58 3e 21 00 ac 40 00 00 84 34 00 00 c8 40 00 00  .byte 0x58, 0x3e, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x34, 0x00, 0x00, 0xc8, 0x40, 0x00, 0x00
00780e9c  e4 3d 00 00                                      .byte 0xe4, 0x3d, 0x00, 0x00

; FUNCTION 0x00780f3c, declared_size=312, range_size=312, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance7recycleEPNS_9characterEi
; demangled: gameswf::sprite_instance::recycle(gameswf::character*, int)
; decoder-mode: arm
00780f3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00780f40  00 40 a0 e1                                      mov r4, r0
00780f44  83 4e ff eb                                      bl #0x754958
00780f48  dc 60 94 e5                                      ldr r6, [r4, #0xdc]
00780f4c  00 50 a0 e3                                      mov r5, #0
00780f50  01 30 a0 e3                                      mov r3, #1
00780f54  05 00 56 e1                                      cmp r6, r5
00780f58  e8 30 c4 e5                                      strb r3, [r4, #0xe8]
00780f5c  e6 50 c4 e5                                      strb r5, [r4, #0xe6]
00780f60  b4 5e c4 e1                                      strh r5, [r4, #0xe4]
00780f64  e9 50 c4 e5                                      strb r5, [r4, #0xe9]
00780f68  05 00 00 0a                                      beq #0x780f84
00780f6c  06 00 a0 e1                                      mov r0, r6
00780f70  ca ff ff eb                                      bl #0x780ea0
00780f74  06 00 a0 e1                                      mov r0, r6
00780f78  05 10 a0 e1                                      mov r1, r5
00780f7c  ed 46 ff eb                                      bl #0x752b38
00780f80  dc 50 84 e5                                      str r5, [r4, #0xdc]
00780f84  e0 50 94 e5                                      ldr r5, [r4, #0xe0]
00780f88  00 00 55 e3                                      cmp r5, #0
00780f8c  06 00 00 0a                                      beq #0x780fac
00780f90  05 00 a0 e1                                      mov r0, r5
00780f94  28 74 ff eb                                      bl #0x75e03c
00780f98  05 00 a0 e1                                      mov r0, r5
00780f9c  00 10 a0 e3                                      mov r1, #0
00780fa0  e4 46 ff eb                                      bl #0x752b38
00780fa4  00 30 a0 e3                                      mov r3, #0
00780fa8  e0 30 84 e5                                      str r3, [r4, #0xe0]
00780fac  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
00780fb0  00 c0 a0 e3                                      mov ip, #0
00780fb4  01 20 a0 e3                                      mov r2, #1
00780fb8  0c 00 53 e1                                      cmp r3, ip
00780fbc  ea 20 c4 e5                                      strb r2, [r4, #0xea]
00780fc0  e7 c0 c4 e5                                      strb ip, [r4, #0xe7]
00780fc4  eb c0 c4 e5                                      strb ip, [r4, #0xeb]
00780fc8  ec c0 c4 e5                                      strb ip, [r4, #0xec]
00780fcc  bc 00 84 e2                                      add r0, r4, #0xbc
00780fd0  17 00 00 da                                      ble #0x781034
00780fd4  d0 30 94 e5                                      ldr r3, [r4, #0xd0]
00780fd8  00 c0 a0 e3                                      mov ip, #0
00780fdc  c0 c0 84 e5                                      str ip, [r4, #0xc0]
00780fe0  0c 00 53 e1                                      cmp r3, ip
00780fe4  cc 00 84 e2                                      add r0, r4, #0xcc
00780fe8  19 00 00 da                                      ble #0x781054
00780fec  00 50 a0 e3                                      mov r5, #0
00780ff0  f0 00 84 e2                                      add r0, r4, #0xf0
00780ff4  05 10 a0 e1                                      mov r1, r5
00780ff8  d0 50 84 e5                                      str r5, [r4, #0xd0]
00780ffc  62 50 ff eb                                      bl #0x75518c
00781000  f4 00 84 e2                                      add r0, r4, #0xf4
00781004  05 10 a0 e1                                      mov r1, r5
00781008  b6 f4 ff eb                                      bl #0x77e2e8
0078100c  f8 60 94 e5                                      ldr r6, [r4, #0xf8]
00781010  05 00 56 e1                                      cmp r6, r5
00781014  05 00 00 0a                                      beq #0x781030
00781018  06 00 a0 e1                                      mov r0, r6
0078101c  c1 f4 ff eb                                      bl #0x77e328
00781020  06 00 a0 e1                                      mov r0, r6
00781024  05 10 a0 e1                                      mov r1, r5
00781028  c2 46 ff eb                                      bl #0x752b38
0078102c  f8 50 84 e5                                      str r5, [r4, #0xf8]
00781030  70 80 bd e8                                      pop {r4, r5, r6, pc}
00781034  e6 ff ff aa                                      bge #0x780fd4
00781038  03 21 a0 e1                                      lsl r2, r3, #2
0078103c  00 10 90 e5                                      ldr r1, [r0]
00781040  01 30 93 e2                                      adds r3, r3, #1
00781044  02 c0 81 e7                                      str ip, [r1, r2]
00781048  04 20 82 e2                                      add r2, r2, #4
0078104c  fa ff ff 1a                                      bne #0x78103c
00781050  df ff ff ea                                      b #0x780fd4
00781054  e4 ff ff aa                                      bge #0x780fec
00781058  03 21 a0 e1                                      lsl r2, r3, #2
0078105c  00 10 90 e5                                      ldr r1, [r0]
00781060  01 30 93 e2                                      adds r3, r3, #1
00781064  02 c0 81 e7                                      str ip, [r1, r2]
00781068  04 20 82 e2                                      add r2, r2, #4
0078106c  fa ff ff 1a                                      bne #0x78105c
00781070  dd ff ff ea                                      b #0x780fec

; FUNCTION 0x00781074, declared_size=592, range_size=592, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instanceC2EPNS_6playerEPNS_20movie_definition_subEPNS_4rootEPNS_9characterEi
; demangled: gameswf::sprite_instance::sprite_instance(gameswf::player*, gameswf::movie_definition_sub*, gameswf::root*, gameswf::character*, int)
; decoder-mode: arm
00781074  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00781078  08 d0 4d e2                                      sub sp, sp, #8
0078107c  02 60 a0 e1                                      mov r6, r2
00781080  02 c0 a0 e3                                      mov ip, #2
00781084  03 70 a0 e1                                      mov r7, r3
00781088  2c 52 9f e5                                      ldr r5, [pc, #0x22c]
0078108c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00781090  20 20 9d e5                                      ldr r2, [sp, #0x20]
00781094  00 40 a0 e1                                      mov r4, r0
00781098  00 c0 8d e5                                      str ip, [sp]
0078109c  a1 4e ff eb                                      bl #0x754b28
007810a0  18 32 9f e5                                      ldr r3, [pc, #0x218]
007810a4  05 50 8f e0                                      add r5, pc, r5
007810a8  00 00 56 e3                                      cmp r6, #0
007810ac  03 30 95 e7                                      ldr r3, [r5, r3]
007810b0  a0 60 84 e5                                      str r6, [r4, #0xa0]
007810b4  08 30 83 e2                                      add r3, r3, #8
007810b8  00 30 84 e5                                      str r3, [r4]
007810bc  01 00 00 0a                                      beq #0x7810c8
007810c0  06 00 a0 e1                                      mov r0, r6
007810c4  e6 62 ff eb                                      bl #0x759c64
007810c8  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
007810cc  00 50 a0 e3                                      mov r5, #0
007810d0  01 20 a0 e3                                      mov r2, #1
007810d4  a4 70 84 e5                                      str r7, [r4, #0xa4]
007810d8  ea 20 c4 e5                                      strb r2, [r4, #0xea]
007810dc  a8 50 84 e5                                      str r5, [r4, #0xa8]
007810e0  ac 50 84 e5                                      str r5, [r4, #0xac]
007810e4  b0 50 84 e5                                      str r5, [r4, #0xb0]
007810e8  b4 50 c4 e5                                      strb r5, [r4, #0xb4]
007810ec  b8 50 84 e5                                      str r5, [r4, #0xb8]
007810f0  bc 50 84 e5                                      str r5, [r4, #0xbc]
007810f4  c0 50 84 e5                                      str r5, [r4, #0xc0]
007810f8  c4 50 84 e5                                      str r5, [r4, #0xc4]
007810fc  c8 50 c4 e5                                      strb r5, [r4, #0xc8]
00781100  cc 50 84 e5                                      str r5, [r4, #0xcc]
00781104  d0 50 84 e5                                      str r5, [r4, #0xd0]
00781108  d4 50 84 e5                                      str r5, [r4, #0xd4]
0078110c  d8 50 c4 e5                                      strb r5, [r4, #0xd8]
00781110  dc 50 84 e5                                      str r5, [r4, #0xdc]
00781114  e0 50 84 e5                                      str r5, [r4, #0xe0]
00781118  b4 5e c4 e1                                      strh r5, [r4, #0xe4]
0078111c  e6 50 c4 e5                                      strb r5, [r4, #0xe6]
00781120  e7 50 c4 e5                                      strb r5, [r4, #0xe7]
00781124  e8 20 c4 e5                                      strb r2, [r4, #0xe8]
00781128  e9 50 c4 e5                                      strb r5, [r4, #0xe9]
0078112c  eb 50 c4 e5                                      strb r5, [r4, #0xeb]
00781130  ec 50 c4 e5                                      strb r5, [r4, #0xec]
00781134  f0 50 84 e5                                      str r5, [r4, #0xf0]
00781138  f4 50 84 e5                                      str r5, [r4, #0xf4]
0078113c  f8 50 84 e5                                      str r5, [r4, #0xf8]
00781140  fc 50 84 e5                                      str r5, [r4, #0xfc]
00781144  03 00 a0 e1                                      mov r0, r3
00781148  00 30 93 e5                                      ldr r3, [r3]
0078114c  0f e0 a0 e1                                      mov lr, pc
00781150  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00781154  05 00 50 e1                                      cmp r0, r5
00781158  15 00 00 1a                                      bne #0x7811b4
0078115c  30 10 94 e5                                      ldr r1, [r4, #0x30]
00781160  00 00 51 e3                                      cmp r1, #0
00781164  01 30 a0 e1                                      mov r3, r1
00781168  03 00 00 0a                                      beq #0x78117c
0078116c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00781170  04 20 d0 e5                                      ldrb r2, [r0, #4]
00781174  00 00 52 e3                                      cmp r2, #0
00781178  3c 00 00 0a                                      beq #0x781270
0078117c  30 30 93 e5                                      ldr r3, [r3, #0x30]
00781180  00 00 51 e3                                      cmp r1, #0
00781184  34 30 84 e5                                      str r3, [r4, #0x34]
00781188  03 00 00 0a                                      beq #0x78119c
0078118c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00781190  04 30 d0 e5                                      ldrb r3, [r0, #4]
00781194  00 00 53 e3                                      cmp r3, #0
00781198  2a 00 00 0a                                      beq #0x781248
0078119c  04 00 a0 e1                                      mov r0, r4
007811a0  88 10 81 e2                                      add r1, r1, #0x88
007811a4  d7 9e ff eb                                      bl #0x768d08
007811a8  04 00 a0 e1                                      mov r0, r4
007811ac  08 d0 8d e2                                      add sp, sp, #8
007811b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007811b4  05 10 a0 e1                                      mov r1, r5
007811b8  20 00 a0 e3                                      mov r0, #0x20
007811bc  79 46 ff eb                                      bl #0x752ba8
007811c0  1c 50 c0 e5                                      strb r5, [r0, #0x1c]
007811c4  00 50 80 e5                                      str r5, [r0]
007811c8  04 50 80 e5                                      str r5, [r0, #4]
007811cc  08 50 80 e5                                      str r5, [r0, #8]
007811d0  0c 50 c0 e5                                      strb r5, [r0, #0xc]
007811d4  10 50 80 e5                                      str r5, [r0, #0x10]
007811d8  14 50 80 e5                                      str r5, [r0, #0x14]
007811dc  18 50 80 e5                                      str r5, [r0, #0x18]
007811e0  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
007811e4  dc 00 84 e5                                      str r0, [r4, #0xdc]
007811e8  00 70 a0 e1                                      mov r7, r0
007811ec  10 80 80 e2                                      add r8, r0, #0x10
007811f0  03 00 a0 e1                                      mov r0, r3
007811f4  00 30 93 e5                                      ldr r3, [r3]
007811f8  0f e0 a0 e1                                      mov lr, pc
007811fc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00781200  00 60 50 e2                                      subs r6, r0, #0
00781204  14 50 97 e5                                      ldr r5, [r7, #0x14]
00781208  24 00 00 1a                                      bne #0x7812a0
0078120c  05 00 56 e1                                      cmp r6, r5
00781210  05 00 00 da                                      ble #0x78122c
00781214  00 20 a0 e3                                      mov r2, #0
00781218  00 30 98 e5                                      ldr r3, [r8]
0078121c  05 20 c3 e7                                      strb r2, [r3, r5]
00781220  01 50 85 e2                                      add r5, r5, #1
00781224  06 00 55 e1                                      cmp r5, r6
00781228  fa ff ff 1a                                      bne #0x781218
0078122c  14 60 87 e5                                      str r6, [r7, #0x14]
00781230  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00781234  00 10 a0 e3                                      mov r1, #0
00781238  14 20 93 e5                                      ldr r2, [r3, #0x14]
0078123c  10 00 93 e5                                      ldr r0, [r3, #0x10]
00781240  86 34 ee eb                                      bl #0x30e460
00781244  c4 ff ff ea                                      b #0x78115c
00781248  00 10 90 e5                                      ldr r1, [r0]
0078124c  01 10 41 e2                                      sub r1, r1, #1
00781250  00 00 51 e3                                      cmp r1, #0
00781254  00 10 80 e5                                      str r1, [r0]
00781258  00 00 00 1a                                      bne #0x781260
0078125c  35 46 ff eb                                      bl #0x752b38
00781260  00 10 a0 e3                                      mov r1, #0
00781264  2c 10 84 e5                                      str r1, [r4, #0x2c]
00781268  30 10 84 e5                                      str r1, [r4, #0x30]
0078126c  ca ff ff ea                                      b #0x78119c
00781270  00 10 90 e5                                      ldr r1, [r0]
00781274  01 10 41 e2                                      sub r1, r1, #1
00781278  00 00 51 e3                                      cmp r1, #0
0078127c  00 10 80 e5                                      str r1, [r0]
00781280  00 00 00 1a                                      bne #0x781288
00781284  2b 46 ff eb                                      bl #0x752b38
00781288  00 20 a0 e3                                      mov r2, #0
0078128c  02 30 a0 e1                                      mov r3, r2
00781290  2c 20 84 e5                                      str r2, [r4, #0x2c]
00781294  30 20 84 e5                                      str r2, [r4, #0x30]
00781298  02 10 a0 e1                                      mov r1, r2
0078129c  b6 ff ff ea                                      b #0x78117c
007812a0  18 30 97 e5                                      ldr r3, [r7, #0x18]
007812a4  03 00 56 e1                                      cmp r6, r3
007812a8  d7 ff ff da                                      ble #0x78120c
007812ac  08 00 a0 e1                                      mov r0, r8
007812b0  c6 10 86 e0                                      add r1, r6, r6, asr #1
007812b4  9d f5 ff eb                                      bl #0x77e930
007812b8  d3 ff ff ea                                      b #0x78120c
; mapping-symbol data/literal pool
007812bc  ec 39 21 00 74 4b 00 00                          .byte 0xec, 0x39, 0x21, 0x00, 0x74, 0x4b, 0x00, 0x00

; FUNCTION 0x007812c4, declared_size=424, range_size=424, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance19add_empty_movieclipEPKci
; demangled: gameswf::sprite_instance::add_empty_movieclip(char const*, int)
; decoder-mode: arm
007812c4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007812c8  88 51 9f e5                                      ldr r5, [pc, #0x188]
007812cc  88 81 9f e5                                      ldr r8, [pc, #0x188]
007812d0  30 60 90 e5                                      ldr r6, [r0, #0x30]
007812d4  05 50 8f e0                                      add r5, pc, r5
007812d8  08 30 95 e7                                      ldr r3, [r5, r8]
007812dc  30 d0 4d e2                                      sub sp, sp, #0x30
007812e0  00 00 56 e3                                      cmp r6, #0
007812e4  00 30 93 e5                                      ldr r3, [r3]
007812e8  00 40 a0 e1                                      mov r4, r0
007812ec  01 a0 a0 e1                                      mov sl, r1
007812f0  02 90 a0 e1                                      mov sb, r2
007812f4  2c 30 8d e5                                      str r3, [sp, #0x2c]
007812f8  03 00 00 0a                                      beq #0x78130c
007812fc  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00781300  04 30 d0 e5                                      ldrb r3, [r0, #4]
00781304  00 00 53 e3                                      cmp r3, #0
00781308  38 00 00 0a                                      beq #0x7813f0
0078130c  00 10 a0 e3                                      mov r1, #0
00781310  5c 00 a0 e3                                      mov r0, #0x5c
00781314  23 46 ff eb                                      bl #0x752ba8
00781318  06 10 a0 e1                                      mov r1, r6
0078131c  00 20 a0 e3                                      mov r2, #0
00781320  00 70 a0 e1                                      mov r7, r0
00781324  0e 09 00 eb                                      bl #0x783764
00781328  30 00 94 e5                                      ldr r0, [r4, #0x30]
0078132c  00 00 50 e3                                      cmp r0, #0
00781330  03 00 00 0a                                      beq #0x781344
00781334  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00781338  04 20 d3 e5                                      ldrb r2, [r3, #4]
0078133c  00 00 52 e3                                      cmp r2, #0
00781340  34 00 00 0a                                      beq #0x781418
00781344  a4 20 94 e5                                      ldr r2, [r4, #0xa4]
00781348  04 30 a0 e1                                      mov r3, r4
0078134c  00 c0 a0 e3                                      mov ip, #0
00781350  07 10 a0 e1                                      mov r1, r7
00781354  00 c0 8d e5                                      str ip, [sp]
00781358  64 ae ff eb                                      bl #0x76ccf0
0078135c  18 70 8d e2                                      add r7, sp, #0x18
00781360  00 60 a0 e1                                      mov r6, r0
00781364  0a 10 a0 e1                                      mov r1, sl
00781368  07 00 a0 e1                                      mov r0, r7
0078136c  c2 49 f2 eb                                      bl #0x413a7c
00781370  06 00 a0 e1                                      mov r0, r6
00781374  07 10 a0 e1                                      mov r1, r7
00781378  8e 48 ff eb                                      bl #0x7535b8
0078137c  d8 31 dd e1                                      ldrsb r3, [sp, #0x18]
00781380  01 00 73 e3                                      cmn r3, #1
00781384  2e 00 00 0a                                      beq #0x781444
00781388  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
0078138c  a8 00 84 e2                                      add r0, r4, #0xa8
00781390  09 20 a0 e1                                      mov r2, sb
00781394  03 e0 95 e7                                      ldr lr, [r5, r3]
00781398  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0078139c  06 10 a0 e1                                      mov r1, r6
007813a0  00 e0 8d e5                                      str lr, [sp]
007813a4  03 c0 95 e7                                      ldr ip, [r5, r3]
007813a8  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
007813ac  04 c0 8d e5                                      str ip, [sp, #4]
007813b0  03 70 95 e7                                      ldr r7, [r5, r3]
007813b4  00 c0 a0 e3                                      mov ip, #0
007813b8  01 30 a0 e3                                      mov r3, #1
007813bc  0c c0 8d e5                                      str ip, [sp, #0xc]
007813c0  00 c0 a0 e3                                      mov ip, #0
007813c4  08 70 8d e5                                      str r7, [sp, #8]
007813c8  10 c0 8d e5                                      str ip, [sp, #0x10]
007813cc  6d 54 ff eb                                      bl #0x756588
007813d0  08 30 95 e7                                      ldr r3, [r5, r8]
007813d4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
007813d8  06 00 a0 e1                                      mov r0, r6
007813dc  00 30 93 e5                                      ldr r3, [r3]
007813e0  03 00 52 e1                                      cmp r2, r3
007813e4  1a 00 00 1a                                      bne #0x781454
007813e8  30 d0 8d e2                                      add sp, sp, #0x30
007813ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007813f0  00 10 90 e5                                      ldr r1, [r0]
007813f4  01 10 41 e2                                      sub r1, r1, #1
007813f8  00 00 51 e3                                      cmp r1, #0
007813fc  00 10 80 e5                                      str r1, [r0]
00781400  00 00 00 1a                                      bne #0x781408
00781404  cb 45 ff eb                                      bl #0x752b38
00781408  00 60 a0 e3                                      mov r6, #0
0078140c  2c 60 84 e5                                      str r6, [r4, #0x2c]
00781410  30 60 84 e5                                      str r6, [r4, #0x30]
00781414  bc ff ff ea                                      b #0x78130c
00781418  00 10 93 e5                                      ldr r1, [r3]
0078141c  01 10 41 e2                                      sub r1, r1, #1
00781420  00 00 51 e3                                      cmp r1, #0
00781424  00 10 83 e5                                      str r1, [r3]
00781428  01 00 00 1a                                      bne #0x781434
0078142c  03 00 a0 e1                                      mov r0, r3
00781430  c0 45 ff eb                                      bl #0x752b38
00781434  00 00 a0 e3                                      mov r0, #0
00781438  2c 00 84 e5                                      str r0, [r4, #0x2c]
0078143c  30 00 84 e5                                      str r0, [r4, #0x30]
00781440  bf ff ff ea                                      b #0x781344
00781444  24 00 9d e5                                      ldr r0, [sp, #0x24]
00781448  20 10 9d e5                                      ldr r1, [sp, #0x20]
0078144c  b9 45 ff eb                                      bl #0x752b38
00781450  cc ff ff ea                                      b #0x781388
00781454  ad 33 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00781458  bc 37 21 00 ac 40 00 00 84 34 00 00 c8 40 00 00  .byte 0xbc, 0x37, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x34, 0x00, 0x00, 0xc8, 0x40, 0x00, 0x00
00781468  e4 3d 00 00                                      .byte 0xe4, 0x3d, 0x00, 0x00

; FUNCTION 0x0078146c, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instanceD2Ev
; demangled: gameswf::sprite_instance::~sprite_instance()
; decoder-mode: arm
0078146c  70 40 2d e9                                      push {r4, r5, r6, lr}
00781470  50 31 9f e5                                      ldr r3, [pc, #0x150]
00781474  50 21 9f e5                                      ldr r2, [pc, #0x150]
00781478  f8 50 90 e5                                      ldr r5, [r0, #0xf8]
0078147c  03 30 8f e0                                      add r3, pc, r3
00781480  02 20 93 e7                                      ldr r2, [r3, r2]
00781484  00 00 55 e3                                      cmp r5, #0
00781488  00 40 a0 e1                                      mov r4, r0
0078148c  08 20 82 e2                                      add r2, r2, #8
00781490  00 20 80 e5                                      str r2, [r0]
00781494  04 00 00 0a                                      beq #0x7814ac
00781498  05 00 a0 e1                                      mov r0, r5
0078149c  a1 f3 ff eb                                      bl #0x77e328
007814a0  05 00 a0 e1                                      mov r0, r5
007814a4  00 10 a0 e3                                      mov r1, #0
007814a8  a2 45 ff eb                                      bl #0x752b38
007814ac  dc 50 94 e5                                      ldr r5, [r4, #0xdc]
007814b0  00 00 55 e3                                      cmp r5, #0
007814b4  04 00 00 0a                                      beq #0x7814cc
007814b8  05 00 a0 e1                                      mov r0, r5
007814bc  77 fe ff eb                                      bl #0x780ea0
007814c0  05 00 a0 e1                                      mov r0, r5
007814c4  00 10 a0 e3                                      mov r1, #0
007814c8  9a 45 ff eb                                      bl #0x752b38
007814cc  e0 50 94 e5                                      ldr r5, [r4, #0xe0]
007814d0  00 00 55 e3                                      cmp r5, #0
007814d4  04 00 00 0a                                      beq #0x7814ec
007814d8  05 00 a0 e1                                      mov r0, r5
007814dc  d6 72 ff eb                                      bl #0x75e03c
007814e0  05 00 a0 e1                                      mov r0, r5
007814e4  00 10 a0 e3                                      mov r1, #0
007814e8  92 45 ff eb                                      bl #0x752b38
007814ec  fc 00 94 e5                                      ldr r0, [r4, #0xfc]
007814f0  00 00 50 e3                                      cmp r0, #0
007814f4  00 00 00 0a                                      beq #0x7814fc
007814f8  50 63 ff eb                                      bl #0x75a240
007814fc  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
00781500  00 00 50 e3                                      cmp r0, #0
00781504  00 00 00 0a                                      beq #0x78150c
00781508  4c 63 ff eb                                      bl #0x75a240
0078150c  f0 00 94 e5                                      ldr r0, [r4, #0xf0]
00781510  00 00 50 e3                                      cmp r0, #0
00781514  00 00 00 0a                                      beq #0x78151c
00781518  48 63 ff eb                                      bl #0x75a240
0078151c  d0 30 94 e5                                      ldr r3, [r4, #0xd0]
00781520  cc 00 84 e2                                      add r0, r4, #0xcc
00781524  00 00 53 e3                                      cmp r3, #0
00781528  15 00 00 da                                      ble #0x781584
0078152c  00 50 a0 e3                                      mov r5, #0
00781530  d0 50 84 e5                                      str r5, [r4, #0xd0]
00781534  05 10 a0 e1                                      mov r1, r5
00781538  ae f4 ff eb                                      bl #0x77e7f8
0078153c  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
00781540  bc 00 84 e2                                      add r0, r4, #0xbc
00781544  05 00 53 e1                                      cmp r3, r5
00781548  16 00 00 da                                      ble #0x7815a8
0078154c  00 30 a0 e3                                      mov r3, #0
00781550  03 10 a0 e1                                      mov r1, r3
00781554  c0 30 84 e5                                      str r3, [r4, #0xc0]
00781558  a6 f4 ff eb                                      bl #0x77e7f8
0078155c  a8 00 84 e2                                      add r0, r4, #0xa8
00781560  48 f7 ff eb                                      bl #0x77f288
00781564  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
00781568  00 00 50 e3                                      cmp r0, #0
0078156c  00 00 00 0a                                      beq #0x781574
00781570  32 63 ff eb                                      bl #0x75a240
00781574  04 00 a0 e1                                      mov r0, r4
00781578  fd 71 ff eb                                      bl #0x75dd74
0078157c  04 00 a0 e1                                      mov r0, r4
00781580  70 80 bd e8                                      pop {r4, r5, r6, pc}
00781584  e8 ff ff aa                                      bge #0x78152c
00781588  03 21 a0 e1                                      lsl r2, r3, #2
0078158c  00 c0 a0 e3                                      mov ip, #0
00781590  00 10 90 e5                                      ldr r1, [r0]
00781594  01 30 93 e2                                      adds r3, r3, #1
00781598  02 c0 81 e7                                      str ip, [r1, r2]
0078159c  04 20 82 e2                                      add r2, r2, #4
007815a0  fa ff ff 1a                                      bne #0x781590
007815a4  e0 ff ff ea                                      b #0x78152c
007815a8  e7 ff ff aa                                      bge #0x78154c
007815ac  03 21 a0 e1                                      lsl r2, r3, #2
007815b0  00 10 90 e5                                      ldr r1, [r0]
007815b4  01 30 93 e2                                      adds r3, r3, #1
007815b8  02 50 81 e7                                      str r5, [r1, r2]
007815bc  04 20 82 e2                                      add r2, r2, #4
007815c0  fa ff ff 1a                                      bne #0x7815b0
007815c4  e0 ff ff ea                                      b #0x78154c
; mapping-symbol data/literal pool
007815c8  14 36 21 00 74 4b 00 00                          .byte 0x14, 0x36, 0x21, 0x00, 0x74, 0x4b, 0x00, 0x00

; FUNCTION 0x007815d0, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instanceD1Ev
; demangled: gameswf::sprite_instance::~sprite_instance()
; decoder-mode: arm
007815d0  70 40 2d e9                                      push {r4, r5, r6, lr}
007815d4  50 31 9f e5                                      ldr r3, [pc, #0x150]
007815d8  50 21 9f e5                                      ldr r2, [pc, #0x150]
007815dc  f8 50 90 e5                                      ldr r5, [r0, #0xf8]
007815e0  03 30 8f e0                                      add r3, pc, r3
007815e4  02 20 93 e7                                      ldr r2, [r3, r2]
007815e8  00 00 55 e3                                      cmp r5, #0
007815ec  00 40 a0 e1                                      mov r4, r0
007815f0  08 20 82 e2                                      add r2, r2, #8
007815f4  00 20 80 e5                                      str r2, [r0]
007815f8  04 00 00 0a                                      beq #0x781610
007815fc  05 00 a0 e1                                      mov r0, r5
00781600  48 f3 ff eb                                      bl #0x77e328
00781604  05 00 a0 e1                                      mov r0, r5
00781608  00 10 a0 e3                                      mov r1, #0
0078160c  49 45 ff eb                                      bl #0x752b38
00781610  dc 50 94 e5                                      ldr r5, [r4, #0xdc]
00781614  00 00 55 e3                                      cmp r5, #0
00781618  04 00 00 0a                                      beq #0x781630
0078161c  05 00 a0 e1                                      mov r0, r5
00781620  1e fe ff eb                                      bl #0x780ea0
00781624  05 00 a0 e1                                      mov r0, r5
00781628  00 10 a0 e3                                      mov r1, #0
0078162c  41 45 ff eb                                      bl #0x752b38
00781630  e0 50 94 e5                                      ldr r5, [r4, #0xe0]
00781634  00 00 55 e3                                      cmp r5, #0
00781638  04 00 00 0a                                      beq #0x781650
0078163c  05 00 a0 e1                                      mov r0, r5
00781640  7d 72 ff eb                                      bl #0x75e03c
00781644  05 00 a0 e1                                      mov r0, r5
00781648  00 10 a0 e3                                      mov r1, #0
0078164c  39 45 ff eb                                      bl #0x752b38
00781650  fc 00 94 e5                                      ldr r0, [r4, #0xfc]
00781654  00 00 50 e3                                      cmp r0, #0
00781658  00 00 00 0a                                      beq #0x781660
0078165c  f7 62 ff eb                                      bl #0x75a240
00781660  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
00781664  00 00 50 e3                                      cmp r0, #0
00781668  00 00 00 0a                                      beq #0x781670
0078166c  f3 62 ff eb                                      bl #0x75a240
00781670  f0 00 94 e5                                      ldr r0, [r4, #0xf0]
00781674  00 00 50 e3                                      cmp r0, #0
00781678  00 00 00 0a                                      beq #0x781680
0078167c  ef 62 ff eb                                      bl #0x75a240
00781680  d0 30 94 e5                                      ldr r3, [r4, #0xd0]
00781684  cc 00 84 e2                                      add r0, r4, #0xcc
00781688  00 00 53 e3                                      cmp r3, #0
0078168c  15 00 00 da                                      ble #0x7816e8
00781690  00 50 a0 e3                                      mov r5, #0
00781694  d0 50 84 e5                                      str r5, [r4, #0xd0]
00781698  05 10 a0 e1                                      mov r1, r5
0078169c  55 f4 ff eb                                      bl #0x77e7f8
007816a0  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
007816a4  bc 00 84 e2                                      add r0, r4, #0xbc
007816a8  05 00 53 e1                                      cmp r3, r5
007816ac  16 00 00 da                                      ble #0x78170c
007816b0  00 30 a0 e3                                      mov r3, #0
007816b4  03 10 a0 e1                                      mov r1, r3
007816b8  c0 30 84 e5                                      str r3, [r4, #0xc0]
007816bc  4d f4 ff eb                                      bl #0x77e7f8
007816c0  a8 00 84 e2                                      add r0, r4, #0xa8
007816c4  ef f6 ff eb                                      bl #0x77f288
007816c8  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
007816cc  00 00 50 e3                                      cmp r0, #0
007816d0  00 00 00 0a                                      beq #0x7816d8
007816d4  d9 62 ff eb                                      bl #0x75a240
007816d8  04 00 a0 e1                                      mov r0, r4
007816dc  a4 71 ff eb                                      bl #0x75dd74
007816e0  04 00 a0 e1                                      mov r0, r4
007816e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007816e8  e8 ff ff aa                                      bge #0x781690
007816ec  03 21 a0 e1                                      lsl r2, r3, #2
007816f0  00 c0 a0 e3                                      mov ip, #0
007816f4  00 10 90 e5                                      ldr r1, [r0]
007816f8  01 30 93 e2                                      adds r3, r3, #1
007816fc  02 c0 81 e7                                      str ip, [r1, r2]
00781700  04 20 82 e2                                      add r2, r2, #4
00781704  fa ff ff 1a                                      bne #0x7816f4
00781708  e0 ff ff ea                                      b #0x781690
0078170c  e7 ff ff aa                                      bge #0x7816b0
00781710  03 21 a0 e1                                      lsl r2, r3, #2
00781714  00 10 90 e5                                      ldr r1, [r0]
00781718  01 30 93 e2                                      adds r3, r3, #1
0078171c  02 50 81 e7                                      str r5, [r1, r2]
00781720  04 20 82 e2                                      add r2, r2, #4
00781724  fa ff ff 1a                                      bne #0x781714
00781728  e0 ff ff ea                                      b #0x7816b0
; mapping-symbol data/literal pool
0078172c  b0 34 21 00 74 4b 00 00                          .byte 0xb0, 0x34, 0x21, 0x00, 0x74, 0x4b, 0x00, 0x00

; FUNCTION 0x00781734, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instanceD0Ev
; demangled: gameswf::sprite_instance::~sprite_instance()
; decoder-mode: arm
00781734  10 40 2d e9                                      push {r4, lr}
00781738  00 40 a0 e1                                      mov r4, r0
0078173c  a3 ff ff eb                                      bl #0x7815d0
00781740  04 00 a0 e1                                      mov r0, r4
00781744  d9 32 ee eb                                      bl #0x30e2b0
00781748  04 00 a0 e1                                      mov r0, r4
0078174c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00781750, declared_size=244, range_size=244, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10replace_meEPNS_13character_defE
; demangled: gameswf::sprite_instance::replace_me(gameswf::character_def*)
; decoder-mode: arm
00781750  70 40 2d e9                                      push {r4, r5, r6, lr}
00781754  40 60 90 e5                                      ldr r6, [r0, #0x40]
00781758  18 d0 4d e2                                      sub sp, sp, #0x18
0078175c  00 50 a0 e1                                      mov r5, r0
00781760  00 00 56 e3                                      cmp r6, #0
00781764  01 30 a0 e1                                      mov r3, r1
00781768  2d 00 00 0a                                      beq #0x781824
0078176c  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
00781770  04 20 d0 e5                                      ldrb r2, [r0, #4]
00781774  00 00 52 e3                                      cmp r2, #0
00781778  21 00 00 0a                                      beq #0x781804
0078177c  00 20 a0 e3                                      mov r2, #0
00781780  00 30 93 e5                                      ldr r3, [r3]
00781784  01 00 a0 e1                                      mov r0, r1
00781788  06 10 a0 e1                                      mov r1, r6
0078178c  0f e0 a0 e1                                      mov lr, pc
00781790  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00781794  06 10 a0 e1                                      mov r1, r6
00781798  00 40 a0 e1                                      mov r4, r0
0078179c  3c 00 80 e2                                      add r0, r0, #0x3c
007817a0  00 99 f2 eb                                      bl #0x427ba8
007817a4  44 20 95 e5                                      ldr r2, [r5, #0x44]
007817a8  00 10 96 e5                                      ldr r1, [r6]
007817ac  d0 30 d2 e1                                      ldrsb r3, [r2]
007817b0  c0 c0 91 e5                                      ldr ip, [r1, #0xc0]
007817b4  01 00 73 e3                                      cmn r3, #1
007817b8  01 20 82 12                                      addne r2, r2, #1
007817bc  0e 00 00 0a                                      beq #0x7817fc
007817c0  b6 09 d5 e1                                      ldrh r0, [r5, #0x96]
007817c4  90 e0 95 e5                                      ldr lr, [r5, #0x90]
007817c8  00 10 a0 e3                                      mov r1, #0
007817cc  b4 39 d5 e1                                      ldrh r3, [r5, #0x94]
007817d0  08 10 8d e5                                      str r1, [sp, #8]
007817d4  10 00 8d e5                                      str r0, [sp, #0x10]
007817d8  00 10 8d e5                                      str r1, [sp]
007817dc  04 10 8d e5                                      str r1, [sp, #4]
007817e0  0c e0 8d e5                                      str lr, [sp, #0xc]
007817e4  06 00 a0 e1                                      mov r0, r6
007817e8  04 10 a0 e1                                      mov r1, r4
007817ec  3c ff 2f e1                                      blx ip
007817f0  04 00 a0 e1                                      mov r0, r4
007817f4  18 d0 8d e2                                      add sp, sp, #0x18
007817f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007817fc  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00781800  ee ff ff ea                                      b #0x7817c0
00781804  00 10 90 e5                                      ldr r1, [r0]
00781808  01 10 41 e2                                      sub r1, r1, #1
0078180c  00 00 51 e3                                      cmp r1, #0
00781810  00 10 80 e5                                      str r1, [r0]
00781814  07 00 00 0a                                      beq #0x781838
00781818  00 30 a0 e3                                      mov r3, #0
0078181c  40 30 85 e5                                      str r3, [r5, #0x40]
00781820  3c 30 85 e5                                      str r3, [r5, #0x3c]
00781824  14 00 9f e5                                      ldr r0, [pc, #0x14]
00781828  00 40 a0 e3                                      mov r4, #0
0078182c  00 00 8f e0                                      add r0, pc, r0
00781830  53 7e ff eb                                      bl #0x761184
00781834  ed ff ff ea                                      b #0x7817f0
00781838  be 44 ff eb                                      bl #0x752b38
0078183c  f5 ff ff ea                                      b #0x781818
; mapping-symbol data/literal pool
00781840  bc 83 18 00                                      .byte 0xbc, 0x83, 0x18, 0x00

; FUNCTION 0x00781898, declared_size=420, range_size=420, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance18call_frame_actionsERKNS_8as_valueE
; demangled: gameswf::sprite_instance::call_frame_actions(gameswf::as_value const&)
; decoder-mode: arm
00781898  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0078189c  01 30 d1 e5                                      ldrb r3, [r1, #1]
007818a0  08 d0 4d e2                                      sub sp, sp, #8
007818a4  00 20 e0 e3                                      mvn r2, #0
007818a8  03 30 43 e2                                      sub r3, r3, #3
007818ac  73 30 ef e6                                      uxtb r3, r3
007818b0  01 00 53 e3                                      cmp r3, #1
007818b4  01 50 a0 e1                                      mov r5, r1
007818b8  04 20 8d e5                                      str r2, [sp, #4]
007818bc  00 40 a0 e1                                      mov r4, r0
007818c0  4b 00 00 9a                                      bls #0x7819f4
007818c4  01 00 a0 e1                                      mov r0, r1
007818c8  61 58 00 eb                                      bl #0x797a54
007818cc  54 34 ee eb                                      bl #0x30ea24
007818d0  01 00 40 e2                                      sub r0, r0, #1
007818d4  04 00 8d e5                                      str r0, [sp, #4]
007818d8  00 00 50 e3                                      cmp r0, #0
007818dc  3c 00 00 ba                                      blt #0x7819d4
007818e0  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
007818e4  03 00 a0 e1                                      mov r0, r3
007818e8  00 30 93 e5                                      ldr r3, [r3]
007818ec  0f e0 a0 e1                                      mov lr, pc
007818f0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
007818f4  04 10 9d e5                                      ldr r1, [sp, #4]
007818f8  01 00 50 e1                                      cmp r0, r1
007818fc  34 00 00 da                                      ble #0x7819d4
00781900  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00781904  c0 60 94 e5                                      ldr r6, [r4, #0xc0]
00781908  03 00 a0 e1                                      mov r0, r3
0078190c  00 30 93 e5                                      ldr r3, [r3]
00781910  0f e0 a0 e1                                      mov lr, pc
00781914  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00781918  04 30 90 e5                                      ldr r3, [r0, #4]
0078191c  00 70 a0 e1                                      mov r7, r0
00781920  00 00 53 e3                                      cmp r3, #0
00781924  00 50 a0 c3                                      movgt r5, #0
00781928  03 00 00 ca                                      bgt #0x78193c
0078192c  13 00 00 ea                                      b #0x781980
00781930  04 30 97 e5                                      ldr r3, [r7, #4]
00781934  03 00 55 e1                                      cmp r5, r3
00781938  10 00 00 aa                                      bge #0x781980
0078193c  00 30 97 e5                                      ldr r3, [r7]
00781940  05 81 93 e7                                      ldr r8, [r3, r5, lsl #2]
00781944  01 50 85 e2                                      add r5, r5, #1
00781948  00 30 98 e5                                      ldr r3, [r8]
0078194c  08 00 a0 e1                                      mov r0, r8
00781950  0f e0 a0 e1                                      mov lr, pc
00781954  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00781958  00 00 50 e3                                      cmp r0, #0
0078195c  f3 ff ff 0a                                      beq #0x781930
00781960  00 30 98 e5                                      ldr r3, [r8]
00781964  08 00 a0 e1                                      mov r0, r8
00781968  04 10 a0 e1                                      mov r1, r4
0078196c  0f e0 a0 e1                                      mov lr, pc
00781970  08 f0 93 e5                                      ldr pc, [r3, #8]
00781974  04 30 97 e5                                      ldr r3, [r7, #4]
00781978  03 00 55 e1                                      cmp r5, r3
0078197c  ee ff ff ba                                      blt #0x78193c
00781980  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
00781984  03 00 56 e1                                      cmp r6, r3
00781988  17 00 00 aa                                      bge #0x7819ec
0078198c  06 71 a0 e1                                      lsl r7, r6, #2
00781990  bc 50 84 e2                                      add r5, r4, #0xbc
00781994  bc 20 94 e5                                      ldr r2, [r4, #0xbc]
00781998  00 30 94 e5                                      ldr r3, [r4]
0078199c  04 00 a0 e1                                      mov r0, r4
007819a0  07 80 92 e7                                      ldr r8, [r2, r7]
007819a4  0f e0 a0 e1                                      mov lr, pc
007819a8  58 f0 93 e5                                      ldr pc, [r3, #0x58]
007819ac  00 10 a0 e1                                      mov r1, r0
007819b0  08 00 a0 e1                                      mov r0, r8
007819b4  35 fb 00 eb                                      bl #0x7c0690
007819b8  05 00 a0 e1                                      mov r0, r5
007819bc  06 10 a0 e1                                      mov r1, r6
007819c0  9f ff ff eb                                      bl #0x781844
007819c4  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
007819c8  03 00 56 e1                                      cmp r6, r3
007819cc  f0 ff ff ba                                      blt #0x781994
007819d0  05 00 00 ea                                      b #0x7819ec
007819d4  05 00 a0 e1                                      mov r0, r5
007819d8  75 55 00 eb                                      bl #0x796fb4
007819dc  00 10 a0 e1                                      mov r1, r0
007819e0  50 00 9f e5                                      ldr r0, [pc, #0x50]
007819e4  00 00 8f e0                                      add r0, pc, r0
007819e8  e5 7d ff eb                                      bl #0x761184
007819ec  08 d0 8d e2                                      add sp, sp, #8
007819f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007819f4  a0 70 90 e5                                      ldr r7, [r0, #0xa0]
007819f8  01 00 a0 e1                                      mov r0, r1
007819fc  00 30 97 e5                                      ldr r3, [r7]
00781a00  60 60 93 e5                                      ldr r6, [r3, #0x60]
00781a04  1e 7c f2 eb                                      bl #0x420a84
00781a08  04 20 8d e2                                      add r2, sp, #4
00781a0c  00 10 a0 e1                                      mov r1, r0
00781a10  07 00 a0 e1                                      mov r0, r7
00781a14  36 ff 2f e1                                      blx r6
00781a18  00 00 50 e3                                      cmp r0, #0
00781a1c  04 00 9d 15                                      ldrne r0, [sp, #4]
00781a20  ac ff ff 1a                                      bne #0x7818d8
00781a24  05 00 a0 e1                                      mov r0, r5
00781a28  09 58 00 eb                                      bl #0x797a54
00781a2c  fc 33 ee eb                                      bl #0x30ea24
00781a30  04 00 8d e5                                      str r0, [sp, #4]
00781a34  a7 ff ff ea                                      b #0x7818d8
; mapping-symbol data/literal pool
00781a38  24 82 18 00                                      .byte 0x24, 0x82, 0x18, 0x00

; FUNCTION 0x00781a3c, declared_size=744, range_size=744, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10goto_frameEi
; demangled: gameswf::sprite_instance::goto_frame(int)
; decoder-mode: arm
00781a3c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00781a40  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
00781a44  00 40 a0 e1                                      mov r4, r0
00781a48  01 70 a0 e1                                      mov r7, r1
00781a4c  03 00 a0 e1                                      mov r0, r3
00781a50  00 30 93 e5                                      ldr r3, [r3]
00781a54  0f e0 a0 e1                                      mov lr, pc
00781a58  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00781a5c  07 00 50 e1                                      cmp r0, r7
00781a60  03 00 00 ca                                      bgt #0x781a74
00781a64  01 30 a0 e3                                      mov r3, #1
00781a68  e6 30 c4 e5                                      strb r3, [r4, #0xe6]
00781a6c  00 00 a0 e3                                      mov r0, #0
00781a70  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00781a74  00 00 57 e3                                      cmp r7, #0
00781a78  f9 ff ff ba                                      blt #0x781a64
00781a7c  f4 3e d4 e1                                      ldrsh r3, [r4, #0xe4]
00781a80  07 00 53 e1                                      cmp r3, r7
00781a84  f6 ff ff 0a                                      beq #0x781a64
00781a88  c0 a0 94 e5                                      ldr sl, [r4, #0xc0]
00781a8c  cc 60 84 e2                                      add r6, r4, #0xcc
00781a90  bc 50 84 e2                                      add r5, r4, #0xbc
00781a94  00 00 5a e3                                      cmp sl, #0
00781a98  d0 80 94 e5                                      ldr r8, [r4, #0xd0]
00781a9c  74 00 00 1a                                      bne #0x781c74
00781aa0  08 00 5a e1                                      cmp sl, r8
00781aa4  07 00 00 da                                      ble #0x781ac8
00781aa8  08 31 a0 e1                                      lsl r3, r8, #2
00781aac  00 10 a0 e3                                      mov r1, #0
00781ab0  00 20 96 e5                                      ldr r2, [r6]
00781ab4  01 80 88 e2                                      add r8, r8, #1
00781ab8  0a 00 58 e1                                      cmp r8, sl
00781abc  03 10 82 e7                                      str r1, [r2, r3]
00781ac0  04 30 83 e2                                      add r3, r3, #4
00781ac4  f9 ff ff 1a                                      bne #0x781ab0
00781ac8  00 00 5a e3                                      cmp sl, #0
00781acc  d0 a0 84 e5                                      str sl, [r4, #0xd0]
00781ad0  08 00 00 da                                      ble #0x781af8
00781ad4  00 30 a0 e3                                      mov r3, #0
00781ad8  00 10 95 e5                                      ldr r1, [r5]
00781adc  00 20 96 e5                                      ldr r2, [r6]
00781ae0  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
00781ae4  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00781ae8  04 20 96 e5                                      ldr r2, [r6, #4]
00781aec  01 30 83 e2                                      add r3, r3, #1
00781af0  02 00 53 e1                                      cmp r3, r2
00781af4  f7 ff ff ba                                      blt #0x781ad8
00781af8  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
00781afc  00 00 53 e3                                      cmp r3, #0
00781b00  71 00 00 da                                      ble #0x781ccc
00781b04  f4 9e d4 e1                                      ldrsh sb, [r4, #0xe4]
00781b08  00 80 a0 e3                                      mov r8, #0
00781b0c  c0 80 84 e5                                      str r8, [r4, #0xc0]
00781b10  09 00 57 e1                                      cmp r7, sb
00781b14  1a 00 00 ba                                      blt #0x781b84
00781b18  2a 00 00 da                                      ble #0x781bc8
00781b1c  01 a0 89 e2                                      add sl, sb, #1
00781b20  0a 00 57 e1                                      cmp r7, sl
00781b24  20 00 00 da                                      ble #0x781bac
00781b28  09 90 e0 e1                                      mvn sb, sb
00781b2c  07 90 89 e0                                      add sb, sb, r7
00781b30  08 10 8a e0                                      add r1, sl, r8
00781b34  00 30 94 e5                                      ldr r3, [r4]
00781b38  01 80 88 e2                                      add r8, r8, #1
00781b3c  04 00 a0 e1                                      mov r0, r4
00781b40  01 20 a0 e3                                      mov r2, #1
00781b44  0f e0 a0 e1                                      mov lr, pc
00781b48  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
00781b4c  09 00 58 e1                                      cmp r8, sb
00781b50  f6 ff ff 1a                                      bne #0x781b30
00781b54  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
00781b58  00 00 53 e3                                      cmp r3, #0
00781b5c  12 00 00 ca                                      bgt #0x781bac
00781b60  11 00 00 aa                                      bge #0x781bac
00781b64  03 21 a0 e1                                      lsl r2, r3, #2
00781b68  00 00 a0 e3                                      mov r0, #0
00781b6c  00 10 95 e5                                      ldr r1, [r5]
00781b70  01 30 93 e2                                      adds r3, r3, #1
00781b74  02 00 81 e7                                      str r0, [r1, r2]
00781b78  04 20 82 e2                                      add r2, r2, #4
00781b7c  fa ff ff 1a                                      bne #0x781b6c
00781b80  09 00 00 ea                                      b #0x781bac
00781b84  09 a0 67 e0                                      rsb sl, r7, sb
00781b88  09 10 68 e0                                      rsb r1, r8, sb
00781b8c  04 00 a0 e1                                      mov r0, r4
00781b90  01 80 88 e2                                      add r8, r8, #1
00781b94  fd f5 ff eb                                      bl #0x77f390
00781b98  0a 00 58 e1                                      cmp r8, sl
00781b9c  f9 ff ff 1a                                      bne #0x781b88
00781ba0  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
00781ba4  00 00 53 e3                                      cmp r3, #0
00781ba8  54 00 00 da                                      ble #0x781d00
00781bac  00 20 a0 e3                                      mov r2, #0
00781bb0  c0 20 84 e5                                      str r2, [r4, #0xc0]
00781bb4  00 30 94 e5                                      ldr r3, [r4]
00781bb8  04 00 a0 e1                                      mov r0, r4
00781bbc  07 10 a0 e1                                      mov r1, r7
00781bc0  0f e0 a0 e1                                      mov lr, pc
00781bc4  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
00781bc8  c0 80 94 e5                                      ldr r8, [r4, #0xc0]
00781bcc  01 30 a0 e3                                      mov r3, #1
00781bd0  b4 7e c4 e1                                      strh r7, [r4, #0xe4]
00781bd4  00 00 58 e3                                      cmp r8, #0
00781bd8  e6 30 c4 e5                                      strb r3, [r4, #0xe6]
00781bdc  bc a0 94 e5                                      ldr sl, [r4, #0xbc]
00781be0  2a 00 00 da                                      ble #0x781c90
00781be4  d0 90 94 e5                                      ldr sb, [r4, #0xd0]
00781be8  08 70 99 e0                                      adds r7, sb, r8
00781bec  02 00 00 0a                                      beq #0x781bfc
00781bf0  d4 30 94 e5                                      ldr r3, [r4, #0xd4]
00781bf4  03 00 57 e1                                      cmp r7, r3
00781bf8  3c 00 00 ca                                      bgt #0x781cf0
00781bfc  07 00 59 e1                                      cmp sb, r7
00781c00  09 21 a0 a1                                      lslge r2, sb, #2
00781c04  08 00 00 aa                                      bge #0x781c2c
00781c08  09 21 a0 e1                                      lsl r2, sb, #2
00781c0c  02 30 a0 e1                                      mov r3, r2
00781c10  00 00 a0 e3                                      mov r0, #0
00781c14  00 10 96 e5                                      ldr r1, [r6]
00781c18  01 90 89 e2                                      add sb, sb, #1
00781c1c  07 00 59 e1                                      cmp sb, r7
00781c20  03 00 81 e7                                      str r0, [r1, r3]
00781c24  04 30 83 e2                                      add r3, r3, #4
00781c28  f9 ff ff 1a                                      bne #0x781c14
00781c2c  d0 70 84 e5                                      str r7, [r4, #0xd0]
00781c30  00 30 a0 e3                                      mov r3, #0
00781c34  03 01 9a e7                                      ldr r0, [sl, r3, lsl #2]
00781c38  cc 10 94 e5                                      ldr r1, [r4, #0xcc]
00781c3c  01 30 83 e2                                      add r3, r3, #1
00781c40  08 00 53 e1                                      cmp r3, r8
00781c44  02 00 81 e7                                      str r0, [r1, r2]
00781c48  04 20 82 e2                                      add r2, r2, #4
00781c4c  f8 ff ff 1a                                      bne #0x781c34
00781c50  c0 80 94 e5                                      ldr r8, [r4, #0xc0]
00781c54  00 00 58 e3                                      cmp r8, #0
00781c58  0c 00 00 da                                      ble #0x781c90
00781c5c  00 30 a0 e3                                      mov r3, #0
00781c60  04 00 a0 e1                                      mov r0, r4
00781c64  c0 30 84 e5                                      str r3, [r4, #0xc0]
00781c68  1e cd ff eb                                      bl #0x7750e8
00781c6c  01 00 a0 e3                                      mov r0, #1
00781c70  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00781c74  d4 30 94 e5                                      ldr r3, [r4, #0xd4]
00781c78  03 00 5a e1                                      cmp sl, r3
00781c7c  87 ff ff da                                      ble #0x781aa0
00781c80  06 00 a0 e1                                      mov r0, r6
00781c84  ca 10 8a e0                                      add r1, sl, sl, asr #1
00781c88  da f2 ff eb                                      bl #0x77e7f8
00781c8c  83 ff ff ea                                      b #0x781aa0
00781c90  00 00 58 e3                                      cmp r8, #0
00781c94  f0 ff ff aa                                      bge #0x781c5c
00781c98  08 31 a0 e1                                      lsl r3, r8, #2
00781c9c  00 10 a0 e3                                      mov r1, #0
00781ca0  00 20 95 e5                                      ldr r2, [r5]
00781ca4  01 80 98 e2                                      adds r8, r8, #1
00781ca8  03 10 82 e7                                      str r1, [r2, r3]
00781cac  04 30 83 e2                                      add r3, r3, #4
00781cb0  fa ff ff 1a                                      bne #0x781ca0
00781cb4  00 30 a0 e3                                      mov r3, #0
00781cb8  04 00 a0 e1                                      mov r0, r4
00781cbc  c0 30 84 e5                                      str r3, [r4, #0xc0]
00781cc0  08 cd ff eb                                      bl #0x7750e8
00781cc4  01 00 a0 e3                                      mov r0, #1
00781cc8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00781ccc  8c ff ff aa                                      bge #0x781b04
00781cd0  03 21 a0 e1                                      lsl r2, r3, #2
00781cd4  00 00 a0 e3                                      mov r0, #0
00781cd8  00 10 95 e5                                      ldr r1, [r5]
00781cdc  01 30 93 e2                                      adds r3, r3, #1
00781ce0  02 00 81 e7                                      str r0, [r1, r2]
00781ce4  04 20 82 e2                                      add r2, r2, #4
00781ce8  fa ff ff 1a                                      bne #0x781cd8
00781cec  84 ff ff ea                                      b #0x781b04
00781cf0  06 00 a0 e1                                      mov r0, r6
00781cf4  c7 10 87 e0                                      add r1, r7, r7, asr #1
00781cf8  be f2 ff eb                                      bl #0x77e7f8
00781cfc  be ff ff ea                                      b #0x781bfc
00781d00  a9 ff ff aa                                      bge #0x781bac
00781d04  03 21 a0 e1                                      lsl r2, r3, #2
00781d08  00 00 a0 e3                                      mov r0, #0
00781d0c  00 10 95 e5                                      ldr r1, [r5]
00781d10  01 30 93 e2                                      adds r3, r3, #1
00781d14  02 00 81 e7                                      str r0, [r1, r2]
00781d18  04 20 82 e2                                      add r2, r2, #4
00781d1c  fa ff ff 1a                                      bne #0x781d0c
00781d20  a1 ff ff ea                                      b #0x781bac

; FUNCTION 0x00781d24, declared_size=392, range_size=392, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10replace_meEPNS_16movie_definitionE
; demangled: gameswf::sprite_instance::replace_me(gameswf::movie_definition*)
; decoder-mode: arm
00781d24  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00781d28  40 50 90 e5                                      ldr r5, [r0, #0x40]
00781d2c  1c d0 4d e2                                      sub sp, sp, #0x1c
00781d30  00 40 a0 e1                                      mov r4, r0
00781d34  00 00 55 e3                                      cmp r5, #0
00781d38  01 70 a0 e1                                      mov r7, r1
00781d3c  42 00 00 0a                                      beq #0x781e4c
00781d40  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
00781d44  04 30 d0 e5                                      ldrb r3, [r0, #4]
00781d48  00 00 53 e3                                      cmp r3, #0
00781d4c  36 00 00 0a                                      beq #0x781e2c
00781d50  30 60 94 e5                                      ldr r6, [r4, #0x30]
00781d54  00 00 56 e3                                      cmp r6, #0
00781d58  03 00 00 0a                                      beq #0x781d6c
00781d5c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00781d60  04 30 d0 e5                                      ldrb r3, [r0, #4]
00781d64  00 00 53 e3                                      cmp r3, #0
00781d68  25 00 00 0a                                      beq #0x781e04
00781d6c  07 00 a0 e1                                      mov r0, r7
00781d70  b8 f0 ff eb                                      bl #0x77e058
00781d74  a4 20 94 e5                                      ldr r2, [r4, #0xa4]
00781d78  00 c0 e0 e3                                      mvn ip, #0
00781d7c  00 10 a0 e1                                      mov r1, r0
00781d80  05 30 a0 e1                                      mov r3, r5
00781d84  06 00 a0 e1                                      mov r0, r6
00781d88  00 c0 8d e5                                      str ip, [sp]
00781d8c  d7 ab ff eb                                      bl #0x76ccf0
00781d90  05 10 a0 e1                                      mov r1, r5
00781d94  00 70 a0 e1                                      mov r7, r0
00781d98  3c 00 80 e2                                      add r0, r0, #0x3c
00781d9c  81 97 f2 eb                                      bl #0x427ba8
00781da0  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
00781da4  07 60 a0 e1                                      mov r6, r7
00781da8  a4 30 87 e5                                      str r3, [r7, #0xa4]
00781dac  44 20 94 e5                                      ldr r2, [r4, #0x44]
00781db0  00 10 95 e5                                      ldr r1, [r5]
00781db4  b6 09 d4 e1                                      ldrh r0, [r4, #0x96]
00781db8  d0 30 d2 e1                                      ldrsb r3, [r2]
00781dbc  90 e0 94 e5                                      ldr lr, [r4, #0x90]
00781dc0  c0 c0 91 e5                                      ldr ip, [r1, #0xc0]
00781dc4  01 00 73 e3                                      cmn r3, #1
00781dc8  00 10 a0 e3                                      mov r1, #0
00781dcc  0c 20 92 05                                      ldreq r2, [r2, #0xc]
00781dd0  b4 39 d4 e1                                      ldrh r3, [r4, #0x94]
00781dd4  01 20 82 12                                      addne r2, r2, #1
00781dd8  08 10 8d e5                                      str r1, [sp, #8]
00781ddc  10 00 8d e5                                      str r0, [sp, #0x10]
00781de0  00 10 8d e5                                      str r1, [sp]
00781de4  04 10 8d e5                                      str r1, [sp, #4]
00781de8  0c e0 8d e5                                      str lr, [sp, #0xc]
00781dec  05 00 a0 e1                                      mov r0, r5
00781df0  07 10 a0 e1                                      mov r1, r7
00781df4  3c ff 2f e1                                      blx ip
00781df8  06 00 a0 e1                                      mov r0, r6
00781dfc  1c d0 8d e2                                      add sp, sp, #0x1c
00781e00  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00781e04  00 10 90 e5                                      ldr r1, [r0]
00781e08  01 10 41 e2                                      sub r1, r1, #1
00781e0c  00 00 51 e3                                      cmp r1, #0
00781e10  00 10 80 e5                                      str r1, [r0]
00781e14  00 00 00 1a                                      bne #0x781e1c
00781e18  46 43 ff eb                                      bl #0x752b38
00781e1c  00 60 a0 e3                                      mov r6, #0
00781e20  2c 60 84 e5                                      str r6, [r4, #0x2c]
00781e24  30 60 84 e5                                      str r6, [r4, #0x30]
00781e28  cf ff ff ea                                      b #0x781d6c
00781e2c  00 10 90 e5                                      ldr r1, [r0]
00781e30  01 10 41 e2                                      sub r1, r1, #1
00781e34  00 00 51 e3                                      cmp r1, #0
00781e38  00 10 80 e5                                      str r1, [r0]
00781e3c  18 00 00 0a                                      beq #0x781ea4
00781e40  00 30 a0 e3                                      mov r3, #0
00781e44  40 30 84 e5                                      str r3, [r4, #0x40]
00781e48  3c 30 84 e5                                      str r3, [r4, #0x3c]
00781e4c  00 30 97 e5                                      ldr r3, [r7]
00781e50  07 00 a0 e1                                      mov r0, r7
00781e54  0f e0 a0 e1                                      mov lr, pc
00781e58  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00781e5c  00 70 a0 e1                                      mov r7, r0
00781e60  bb c8 ff eb                                      bl #0x774154
00781e64  00 60 a0 e1                                      mov r6, r0
00781e68  30 00 94 e5                                      ldr r0, [r4, #0x30]
00781e6c  00 00 50 e3                                      cmp r0, #0
00781e70  08 00 00 0a                                      beq #0x781e98
00781e74  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00781e78  04 50 d3 e5                                      ldrb r5, [r3, #4]
00781e7c  00 00 55 e3                                      cmp r5, #0
00781e80  04 00 00 1a                                      bne #0x781e98
00781e84  2c 00 84 e2                                      add r0, r4, #0x2c
00781e88  05 10 a0 e1                                      mov r1, r5
00781e8c  fc 77 f2 eb                                      bl #0x41fe84
00781e90  30 50 84 e5                                      str r5, [r4, #0x30]
00781e94  05 00 a0 e1                                      mov r0, r5
00781e98  07 10 a0 e1                                      mov r1, r7
00781e9c  1e ae ff eb                                      bl #0x76d71c
00781ea0  d4 ff ff ea                                      b #0x781df8
00781ea4  23 43 ff eb                                      bl #0x752b38
00781ea8  e4 ff ff ea                                      b #0x781e40

; FUNCTION 0x00781eac, declared_size=688, range_size=688, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance10do_actionsEv
; demangled: gameswf::sprite_instance::do_actions()
; decoder-mode: arm
00781eac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00781eb0  c0 30 90 e5                                      ldr r3, [r0, #0xc0]
00781eb4  d8 d0 4d e2                                      sub sp, sp, #0xd8
00781eb8  00 40 a0 e1                                      mov r4, r0
00781ebc  00 00 53 e3                                      cmp r3, #0
00781ec0  50 00 00 da                                      ble #0x782008
00781ec4  01 50 a0 e3                                      mov r5, #1
00781ec8  9d 50 c0 e5                                      strb r5, [r0, #0x9d]
00781ecc  14 60 8d e2                                      add r6, sp, #0x14
00781ed0  63 5f ff eb                                      bl #0x759c64
00781ed4  06 00 a0 e1                                      mov r0, r6
00781ed8  80 20 a0 e3                                      mov r2, #0x80
00781edc  00 10 a0 e3                                      mov r1, #0
00781ee0  5e 31 ee eb                                      bl #0x30e460
00781ee4  c0 80 94 e5                                      ldr r8, [r4, #0xc0]
00781ee8  00 30 a0 e3                                      mov r3, #0
00781eec  20 20 a0 e3                                      mov r2, #0x20
00781ef0  1f 00 58 e3                                      cmp r8, #0x1f
00781ef4  94 90 8d c2                                      addgt sb, sp, #0x94
00781ef8  a4 a0 8d d2                                      addle sl, sp, #0xa4
00781efc  b0 50 cd e5                                      strb r5, [sp, #0xb0]
00781f00  a4 60 8d e5                                      str r6, [sp, #0xa4]
00781f04  09 50 a0 c1                                      movgt r5, sb
00781f08  0a 50 a0 d1                                      movle r5, sl
00781f0c  ac 20 8d e5                                      str r2, [sp, #0xac]
00781f10  a0 30 cd e5                                      strb r3, [sp, #0xa0]
00781f14  a8 30 8d e5                                      str r3, [sp, #0xa8]
00781f18  94 30 8d e5                                      str r3, [sp, #0x94]
00781f1c  98 30 8d e5                                      str r3, [sp, #0x98]
00781f20  9c 30 8d e5                                      str r3, [sp, #0x9c]
00781f24  a4 a0 8d c2                                      addgt sl, sp, #0xa4
00781f28  94 90 8d d2                                      addle sb, sp, #0x94
00781f2c  00 00 58 e3                                      cmp r8, #0
00781f30  bc 70 84 e2                                      add r7, r4, #0xbc
00781f34  04 60 95 e5                                      ldr r6, [r5, #4]
00781f38  66 00 00 1a                                      bne #0x7820d8
00781f3c  06 00 58 e1                                      cmp r8, r6
00781f40  07 00 00 da                                      ble #0x781f64
00781f44  06 31 a0 e1                                      lsl r3, r6, #2
00781f48  00 10 a0 e3                                      mov r1, #0
00781f4c  00 20 95 e5                                      ldr r2, [r5]
00781f50  01 60 86 e2                                      add r6, r6, #1
00781f54  08 00 56 e1                                      cmp r6, r8
00781f58  03 10 82 e7                                      str r1, [r2, r3]
00781f5c  04 30 83 e2                                      add r3, r3, #4
00781f60  f9 ff ff 1a                                      bne #0x781f4c
00781f64  00 00 58 e3                                      cmp r8, #0
00781f68  04 80 85 e5                                      str r8, [r5, #4]
00781f6c  08 00 00 da                                      ble #0x781f94
00781f70  00 30 a0 e3                                      mov r3, #0
00781f74  00 10 97 e5                                      ldr r1, [r7]
00781f78  00 20 95 e5                                      ldr r2, [r5]
00781f7c  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
00781f80  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00781f84  04 20 95 e5                                      ldr r2, [r5, #4]
00781f88  01 30 83 e2                                      add r3, r3, #1
00781f8c  02 00 53 e1                                      cmp r3, r2
00781f90  f7 ff ff ba                                      blt #0x781f74
00781f94  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
00781f98  00 00 53 e3                                      cmp r3, #0
00781f9c  54 00 00 da                                      ble #0x7820f4
00781fa0  00 60 a0 e3                                      mov r6, #0
00781fa4  00 30 94 e5                                      ldr r3, [r4]
00781fa8  c0 60 84 e5                                      str r6, [r4, #0xc0]
00781fac  04 00 a0 e1                                      mov r0, r4
00781fb0  0f e0 a0 e1                                      mov lr, pc
00781fb4  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00781fb8  05 10 a0 e1                                      mov r1, r5
00781fbc  13 66 ff eb                                      bl #0x75b810
00781fc0  98 30 9d e5                                      ldr r3, [sp, #0x98]
00781fc4  06 00 53 e1                                      cmp r3, r6
00781fc8  52 00 00 da                                      ble #0x782118
00781fcc  00 50 a0 e3                                      mov r5, #0
00781fd0  09 00 a0 e1                                      mov r0, sb
00781fd4  05 10 a0 e1                                      mov r1, r5
00781fd8  98 50 8d e5                                      str r5, [sp, #0x98]
00781fdc  05 f2 ff eb                                      bl #0x77e7f8
00781fe0  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00781fe4  05 00 53 e1                                      cmp r3, r5
00781fe8  52 00 00 da                                      ble #0x782138
00781fec  00 30 a0 e3                                      mov r3, #0
00781ff0  0a 00 a0 e1                                      mov r0, sl
00781ff4  03 10 a0 e1                                      mov r1, r3
00781ff8  a8 30 8d e5                                      str r3, [sp, #0xa8]
00781ffc  fd f1 ff eb                                      bl #0x77e7f8
00782000  04 00 a0 e1                                      mov r0, r4
00782004  8d 60 ff eb                                      bl #0x75a240
00782008  fc 30 94 e5                                      ldr r3, [r4, #0xfc]
0078200c  00 00 53 e3                                      cmp r3, #0
00782010  2e 00 00 0a                                      beq #0x7820d0
00782014  04 00 a0 e1                                      mov r0, r4
00782018  11 5f ff eb                                      bl #0x759c64
0078201c  fc 00 94 e5                                      ldr r0, [r4, #0xfc]
00782020  00 30 a0 e3                                      mov r3, #0
00782024  cc 30 cd e5                                      strb r3, [sp, #0xcc]
00782028  00 00 50 e3                                      cmp r0, #0
0078202c  05 30 a0 e3                                      mov r3, #5
00782030  cd 30 cd e5                                      strb r3, [sp, #0xcd]
00782034  d0 00 8d e5                                      str r0, [sp, #0xd0]
00782038  00 00 00 0a                                      beq #0x782040
0078203c  08 5f ff eb                                      bl #0x759c64
00782040  00 30 94 e5                                      ldr r3, [r4]
00782044  04 00 a0 e1                                      mov r0, r4
00782048  0f e0 a0 e1                                      mov lr, pc
0078204c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00782050  00 50 a0 e3                                      mov r5, #0
00782054  05 30 a0 e3                                      mov r3, #5
00782058  00 a0 a0 e1                                      mov sl, r0
0078205c  04 00 a0 e1                                      mov r0, r4
00782060  c1 30 cd e5                                      strb r3, [sp, #0xc1]
00782064  c0 50 cd e5                                      strb r5, [sp, #0xc0]
00782068  c4 40 8d e5                                      str r4, [sp, #0xc4]
0078206c  fc 5e ff eb                                      bl #0x759c64
00782070  e0 c0 9f e5                                      ldr ip, [pc, #0xe0]
00782074  b4 70 8d e2                                      add r7, sp, #0xb4
00782078  cc 80 8d e2                                      add r8, sp, #0xcc
0078207c  c0 60 8d e2                                      add r6, sp, #0xc0
00782080  0c c0 8f e0                                      add ip, pc, ip
00782084  0a 20 a0 e1                                      mov r2, sl
00782088  08 10 a0 e1                                      mov r1, r8
0078208c  06 30 a0 e1                                      mov r3, r6
00782090  07 00 a0 e1                                      mov r0, r7
00782094  08 c0 8d e5                                      str ip, [sp, #8]
00782098  00 50 8d e5                                      str r5, [sp]
0078209c  04 50 8d e5                                      str r5, [sp, #4]
007820a0  17 e2 00 eb                                      bl #0x7ba904
007820a4  07 00 a0 e1                                      mov r0, r7
007820a8  1d 54 00 eb                                      bl #0x797124
007820ac  06 00 a0 e1                                      mov r0, r6
007820b0  1b 54 00 eb                                      bl #0x797124
007820b4  08 00 a0 e1                                      mov r0, r8
007820b8  19 54 00 eb                                      bl #0x797124
007820bc  fc 00 84 e2                                      add r0, r4, #0xfc
007820c0  05 10 a0 e1                                      mov r1, r5
007820c4  54 f0 ff eb                                      bl #0x77e21c
007820c8  04 00 a0 e1                                      mov r0, r4
007820cc  5b 60 ff eb                                      bl #0x75a240
007820d0  d8 d0 8d e2                                      add sp, sp, #0xd8
007820d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007820d8  08 30 95 e5                                      ldr r3, [r5, #8]
007820dc  03 00 58 e1                                      cmp r8, r3
007820e0  95 ff ff da                                      ble #0x781f3c
007820e4  05 00 a0 e1                                      mov r0, r5
007820e8  c8 10 88 e0                                      add r1, r8, r8, asr #1
007820ec  c1 f1 ff eb                                      bl #0x77e7f8
007820f0  91 ff ff ea                                      b #0x781f3c
007820f4  a9 ff ff aa                                      bge #0x781fa0
007820f8  03 21 a0 e1                                      lsl r2, r3, #2
007820fc  00 00 a0 e3                                      mov r0, #0
00782100  00 10 97 e5                                      ldr r1, [r7]
00782104  01 30 93 e2                                      adds r3, r3, #1
00782108  02 00 81 e7                                      str r0, [r1, r2]
0078210c  04 20 82 e2                                      add r2, r2, #4
00782110  fa ff ff 1a                                      bne #0x782100
00782114  a1 ff ff ea                                      b #0x781fa0
00782118  ab ff ff aa                                      bge #0x781fcc
0078211c  03 21 a0 e1                                      lsl r2, r3, #2
00782120  94 10 9d e5                                      ldr r1, [sp, #0x94]
00782124  01 30 93 e2                                      adds r3, r3, #1
00782128  02 60 81 e7                                      str r6, [r1, r2]
0078212c  04 20 82 e2                                      add r2, r2, #4
00782130  fa ff ff 1a                                      bne #0x782120
00782134  a4 ff ff ea                                      b #0x781fcc
00782138  ab ff ff aa                                      bge #0x781fec
0078213c  03 21 a0 e1                                      lsl r2, r3, #2
00782140  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00782144  01 30 93 e2                                      adds r3, r3, #1
00782148  02 50 81 e7                                      str r5, [r1, r2]
0078214c  04 20 82 e2                                      add r2, r2, #4
00782150  fa ff ff 1a                                      bne #0x782140
00782154  a4 ff ff ea                                      b #0x781fec
; mapping-symbol data/literal pool
00782158  b8 b5 14 00                                      .byte 0xb8, 0xb5, 0x14, 0x00

; FUNCTION 0x0078215c, declared_size=688, range_size=688, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance18execute_frame_tagsEib
; demangled: gameswf::sprite_instance::execute_frame_tags(int, bool)
; decoder-mode: arm
0078215c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00782160  00 40 50 e2                                      subs r4, r0, #0
00782164  04 d0 4d e2                                      sub sp, sp, #4
00782168  01 50 a0 e1                                      mov r5, r1
0078216c  02 80 a0 e1                                      mov r8, r2
00782170  00 00 00 0a                                      beq #0x782178
00782174  ba 5e ff eb                                      bl #0x759c64
00782178  a0 60 94 e5                                      ldr r6, [r4, #0xa0]
0078217c  00 30 96 e5                                      ldr r3, [r6]
00782180  06 00 a0 e1                                      mov r0, r6
00782184  0f e0 a0 e1                                      mov lr, pc
00782188  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0078218c  00 00 50 e3                                      cmp r0, #0
00782190  02 00 00 0a                                      beq #0x7821a0
00782194  3c 30 96 e5                                      ldr r3, [r6, #0x3c]
00782198  03 00 55 e1                                      cmp r5, r3
0078219c  99 00 00 aa                                      bge #0x782408
007821a0  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
007821a4  00 00 53 e3                                      cmp r3, #0
007821a8  03 00 00 0a                                      beq #0x7821bc
007821ac  10 30 93 e5                                      ldr r3, [r3, #0x10]
007821b0  05 60 d3 e7                                      ldrb r6, [r3, r5]
007821b4  00 00 56 e3                                      cmp r6, #0
007821b8  2b 00 00 0a                                      beq #0x78226c
007821bc  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
007821c0  05 10 a0 e1                                      mov r1, r5
007821c4  03 00 a0 e1                                      mov r0, r3
007821c8  00 30 93 e5                                      ldr r3, [r3]
007821cc  0f e0 a0 e1                                      mov lr, pc
007821d0  50 f0 93 e5                                      ldr pc, [r3, #0x50]
007821d4  04 30 90 e5                                      ldr r3, [r0, #4]
007821d8  00 70 a0 e1                                      mov r7, r0
007821dc  00 00 53 e3                                      cmp r3, #0
007821e0  16 00 00 da                                      ble #0x782240
007821e4  00 60 a0 e3                                      mov r6, #0
007821e8  07 00 00 ea                                      b #0x78220c
007821ec  03 00 a0 e1                                      mov r0, r3
007821f0  00 30 93 e5                                      ldr r3, [r3]
007821f4  0f e0 a0 e1                                      mov lr, pc
007821f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007821fc  04 30 97 e5                                      ldr r3, [r7, #4]
00782200  01 60 86 e2                                      add r6, r6, #1
00782204  03 00 56 e1                                      cmp r6, r3
00782208  0c 00 00 aa                                      bge #0x782240
0078220c  00 30 97 e5                                      ldr r3, [r7]
00782210  00 00 58 e3                                      cmp r8, #0
00782214  04 10 a0 e1                                      mov r1, r4
00782218  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0078221c  f2 ff ff 1a                                      bne #0x7821ec
00782220  03 00 a0 e1                                      mov r0, r3
00782224  00 30 93 e5                                      ldr r3, [r3]
00782228  0f e0 a0 e1                                      mov lr, pc
0078222c  08 f0 93 e5                                      ldr pc, [r3, #8]
00782230  04 30 97 e5                                      ldr r3, [r7, #4]
00782234  01 60 86 e2                                      add r6, r6, #1
00782238  03 00 56 e1                                      cmp r6, r3
0078223c  f2 ff ff ba                                      blt #0x78220c
00782240  00 00 58 e3                                      cmp r8, #0
00782244  4b 00 00 0a                                      beq #0x782378
00782248  05 10 a0 e1                                      mov r1, r5
0078224c  04 00 a0 e1                                      mov r0, r4
00782250  14 f0 ff eb                                      bl #0x77e2a8
00782254  00 00 54 e3                                      cmp r4, #0
00782258  44 00 00 0a                                      beq #0x782370
0078225c  04 00 a0 e1                                      mov r0, r4
00782260  04 d0 8d e2                                      add sp, sp, #4
00782264  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00782268  f4 5f ff ea                                      b #0x75a240
0078226c  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00782270  05 10 a0 e1                                      mov r1, r5
00782274  03 00 a0 e1                                      mov r0, r3
00782278  00 30 93 e5                                      ldr r3, [r3]
0078227c  0f e0 a0 e1                                      mov lr, pc
00782280  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00782284  00 70 50 e2                                      subs r7, r0, #0
00782288  11 00 00 0a                                      beq #0x7822d4
0078228c  04 30 97 e5                                      ldr r3, [r7, #4]
00782290  00 00 53 e3                                      cmp r3, #0
00782294  0e 00 00 da                                      ble #0x7822d4
00782298  00 30 97 e5                                      ldr r3, [r7]
0078229c  04 10 a0 e1                                      mov r1, r4
007822a0  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
007822a4  01 60 86 e2                                      add r6, r6, #1
007822a8  03 00 a0 e1                                      mov r0, r3
007822ac  00 30 93 e5                                      ldr r3, [r3]
007822b0  0f e0 a0 e1                                      mov lr, pc
007822b4  08 f0 93 e5                                      ldr pc, [r3, #8]
007822b8  04 30 97 e5                                      ldr r3, [r7, #4]
007822bc  03 00 56 e1                                      cmp r6, r3
007822c0  f4 ff ff ba                                      blt #0x782298
007822c4  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
007822c8  01 20 a0 e3                                      mov r2, #1
007822cc  10 30 93 e5                                      ldr r3, [r3, #0x10]
007822d0  05 20 c3 e7                                      strb r2, [r3, r5]
007822d4  c0 60 94 e5                                      ldr r6, [r4, #0xc0]
007822d8  dc 70 94 e5                                      ldr r7, [r4, #0xdc]
007822dc  bc 90 94 e5                                      ldr sb, [r4, #0xbc]
007822e0  00 00 56 e3                                      cmp r6, #0
007822e4  38 00 00 da                                      ble #0x7823cc
007822e8  04 b0 97 e5                                      ldr fp, [r7, #4]
007822ec  06 a0 9b e0                                      adds sl, fp, r6
007822f0  02 00 00 0a                                      beq #0x782300
007822f4  08 30 97 e5                                      ldr r3, [r7, #8]
007822f8  03 00 5a e1                                      cmp sl, r3
007822fc  3d 00 00 ca                                      bgt #0x7823f8
00782300  0a 00 5b e1                                      cmp fp, sl
00782304  0b 21 a0 a1                                      lslge r2, fp, #2
00782308  08 00 00 aa                                      bge #0x782330
0078230c  0b 21 a0 e1                                      lsl r2, fp, #2
00782310  02 30 a0 e1                                      mov r3, r2
00782314  00 00 a0 e3                                      mov r0, #0
00782318  00 10 97 e5                                      ldr r1, [r7]
0078231c  01 b0 8b e2                                      add fp, fp, #1
00782320  0a 00 5b e1                                      cmp fp, sl
00782324  03 00 81 e7                                      str r0, [r1, r3]
00782328  04 30 83 e2                                      add r3, r3, #4
0078232c  f9 ff ff 1a                                      bne #0x782318
00782330  04 a0 87 e5                                      str sl, [r7, #4]
00782334  00 30 a0 e3                                      mov r3, #0
00782338  03 01 99 e7                                      ldr r0, [sb, r3, lsl #2]
0078233c  00 10 97 e5                                      ldr r1, [r7]
00782340  01 30 83 e2                                      add r3, r3, #1
00782344  06 00 53 e1                                      cmp r3, r6
00782348  02 00 81 e7                                      str r0, [r1, r2]
0078234c  04 20 82 e2                                      add r2, r2, #4
00782350  f8 ff ff 1a                                      bne #0x782338
00782354  c0 60 94 e5                                      ldr r6, [r4, #0xc0]
00782358  bc 10 84 e2                                      add r1, r4, #0xbc
0078235c  00 00 56 e3                                      cmp r6, #0
00782360  1a 00 00 da                                      ble #0x7823d0
00782364  00 30 a0 e3                                      mov r3, #0
00782368  c0 30 84 e5                                      str r3, [r4, #0xc0]
0078236c  92 ff ff ea                                      b #0x7821bc
00782370  04 d0 8d e2                                      add sp, sp, #4
00782374  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00782378  08 ea ff eb                                      bl #0x77cba0
0078237c  00 60 50 e2                                      subs r6, r0, #0
00782380  b0 ff ff 0a                                      beq #0x782248
00782384  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00782388  28 20 93 e5                                      ldr r2, [r3, #0x28]
0078238c  02 00 55 e1                                      cmp r5, r2
00782390  ac ff ff 1a                                      bne #0x782248
00782394  20 10 93 e5                                      ldr r1, [r3, #0x20]
00782398  00 00 51 e3                                      cmp r1, #0
0078239c  a9 ff ff ba                                      blt #0x782248
007823a0  00 30 96 e5                                      ldr r3, [r6]
007823a4  0f e0 a0 e1                                      mov lr, pc
007823a8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007823ac  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
007823b0  06 00 a0 e1                                      mov r0, r6
007823b4  08 20 a0 e1                                      mov r2, r8
007823b8  20 10 93 e5                                      ldr r1, [r3, #0x20]
007823bc  00 30 96 e5                                      ldr r3, [r6]
007823c0  0f e0 a0 e1                                      mov lr, pc
007823c4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007823c8  9e ff ff ea                                      b #0x782248
007823cc  bc 10 84 e2                                      add r1, r4, #0xbc
007823d0  00 00 56 e3                                      cmp r6, #0
007823d4  e2 ff ff aa                                      bge #0x782364
007823d8  06 31 a0 e1                                      lsl r3, r6, #2
007823dc  00 00 a0 e3                                      mov r0, #0
007823e0  00 20 91 e5                                      ldr r2, [r1]
007823e4  01 60 96 e2                                      adds r6, r6, #1
007823e8  03 00 82 e7                                      str r0, [r2, r3]
007823ec  04 30 83 e2                                      add r3, r3, #4
007823f0  fa ff ff 1a                                      bne #0x7823e0
007823f4  da ff ff ea                                      b #0x782364
007823f8  07 00 a0 e1                                      mov r0, r7
007823fc  ca 10 8a e0                                      add r1, sl, sl, asr #1
00782400  fc f0 ff eb                                      bl #0x77e7f8
00782404  bd ff ff ea                                      b #0x782300
00782408  fe ff ff ea                                      b #0x782408

; FUNCTION 0x0078240c, declared_size=1528, range_size=1528, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance7advanceEf
; demangled: gameswf::sprite_instance::advance(float)
; decoder-mode: arm
0078240c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00782410  ec 40 d0 e5                                      ldrb r4, [r0, #0xec]
00782414  c4 d0 4d e2                                      sub sp, sp, #0xc4
00782418  00 60 a0 e1                                      mov r6, r0
0078241c  00 00 54 e3                                      cmp r4, #0
00782420  0c 10 8d e5                                      str r1, [sp, #0xc]
00782424  c4 00 00 0a                                      beq #0x78273c
00782428  9b 30 d6 e5                                      ldrb r3, [r6, #0x9b]
0078242c  00 00 53 e3                                      cmp r3, #0
00782430  02 00 00 1a                                      bne #0x782440
00782434  ec 30 d6 e5                                      ldrb r3, [r6, #0xec]
00782438  00 00 53 e3                                      cmp r3, #0
0078243c  a0 00 00 1a                                      bne #0x7826c4
00782440  d0 30 96 e5                                      ldr r3, [r6, #0xd0]
00782444  06 00 a0 e1                                      mov r0, r6
00782448  00 00 53 e3                                      cmp r3, #0
0078244c  00 30 a0 d3                                      movle r3, #0
00782450  01 30 a0 c3                                      movgt r3, #1
00782454  9d 30 c6 e5                                      strb r3, [r6, #0x9d]
00782458  d2 6f ff eb                                      bl #0x75e3a8
0078245c  d0 30 96 e5                                      ldr r3, [r6, #0xd0]
00782460  00 00 53 e3                                      cmp r3, #0
00782464  67 00 00 da                                      ble #0x782608
00782468  10 30 8d e2                                      add r3, sp, #0x10
0078246c  00 70 a0 e3                                      mov r7, #0
00782470  08 30 8d e5                                      str r3, [sp, #8]
00782474  90 30 8d e2                                      add r3, sp, #0x90
00782478  cc 50 86 e2                                      add r5, r6, #0xcc
0078247c  a0 80 8d e2                                      add r8, sp, #0xa0
00782480  04 30 8d e5                                      str r3, [sp, #4]
00782484  07 40 a0 e1                                      mov r4, r7
00782488  08 00 9d e5                                      ldr r0, [sp, #8]
0078248c  00 10 a0 e3                                      mov r1, #0
00782490  80 20 a0 e3                                      mov r2, #0x80
00782494  f1 2f ee eb                                      bl #0x30e460
00782498  08 30 9d e5                                      ldr r3, [sp, #8]
0078249c  d0 b0 96 e5                                      ldr fp, [r6, #0xd0]
007824a0  04 a0 9d e5                                      ldr sl, [sp, #4]
007824a4  90 30 8d e5                                      str r3, [sp, #0x90]
007824a8  20 30 a0 e3                                      mov r3, #0x20
007824ac  1f 00 5b e3                                      cmp fp, #0x1f
007824b0  98 30 8d e5                                      str r3, [sp, #0x98]
007824b4  01 30 a0 e3                                      mov r3, #1
007824b8  08 a0 a0 c1                                      movgt sl, r8
007824bc  94 40 8d e5                                      str r4, [sp, #0x94]
007824c0  9c 30 cd e5                                      strb r3, [sp, #0x9c]
007824c4  a0 40 8d e5                                      str r4, [sp, #0xa0]
007824c8  a4 40 8d e5                                      str r4, [sp, #0xa4]
007824cc  a8 40 8d e5                                      str r4, [sp, #0xa8]
007824d0  ac 40 cd e5                                      strb r4, [sp, #0xac]
007824d4  00 00 5b e3                                      cmp fp, #0
007824d8  04 90 9a e5                                      ldr sb, [sl, #4]
007824dc  02 00 00 0a                                      beq #0x7824ec
007824e0  08 30 9a e5                                      ldr r3, [sl, #8]
007824e4  03 00 5b e1                                      cmp fp, r3
007824e8  77 00 00 ca                                      bgt #0x7826cc
007824ec  09 00 5b e1                                      cmp fp, sb
007824f0  06 00 00 da                                      ble #0x782510
007824f4  09 31 a0 e1                                      lsl r3, sb, #2
007824f8  00 20 9a e5                                      ldr r2, [sl]
007824fc  01 90 89 e2                                      add sb, sb, #1
00782500  0b 00 59 e1                                      cmp sb, fp
00782504  03 40 82 e7                                      str r4, [r2, r3]
00782508  04 30 83 e2                                      add r3, r3, #4
0078250c  f9 ff ff 1a                                      bne #0x7824f8
00782510  00 00 5b e3                                      cmp fp, #0
00782514  04 b0 8a e5                                      str fp, [sl, #4]
00782518  08 00 00 da                                      ble #0x782540
0078251c  00 30 a0 e3                                      mov r3, #0
00782520  00 10 95 e5                                      ldr r1, [r5]
00782524  00 20 9a e5                                      ldr r2, [sl]
00782528  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
0078252c  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00782530  04 20 9a e5                                      ldr r2, [sl, #4]
00782534  01 30 83 e2                                      add r3, r3, #1
00782538  02 00 53 e1                                      cmp r3, r2
0078253c  f7 ff ff ba                                      blt #0x782520
00782540  d0 30 96 e5                                      ldr r3, [r6, #0xd0]
00782544  00 00 53 e3                                      cmp r3, #0
00782548  63 00 00 da                                      ble #0x7826dc
0078254c  00 30 96 e5                                      ldr r3, [r6]
00782550  d0 40 86 e5                                      str r4, [r6, #0xd0]
00782554  06 00 a0 e1                                      mov r0, r6
00782558  0f e0 a0 e1                                      mov lr, pc
0078255c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00782560  0a 10 a0 e1                                      mov r1, sl
00782564  a9 64 ff eb                                      bl #0x75b810
00782568  0b 00 57 e3                                      cmp r7, #0xb
0078256c  12 00 00 0a                                      beq #0x7825bc
00782570  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00782574  00 00 53 e3                                      cmp r3, #0
00782578  67 00 00 da                                      ble #0x78271c
0078257c  08 00 a0 e1                                      mov r0, r8
00782580  04 10 a0 e1                                      mov r1, r4
00782584  a4 40 8d e5                                      str r4, [sp, #0xa4]
00782588  9a f0 ff eb                                      bl #0x77e7f8
0078258c  94 30 9d e5                                      ldr r3, [sp, #0x94]
00782590  00 00 53 e3                                      cmp r3, #0
00782594  58 00 00 da                                      ble #0x7826fc
00782598  04 00 9d e5                                      ldr r0, [sp, #4]
0078259c  04 10 a0 e1                                      mov r1, r4
007825a0  94 40 8d e5                                      str r4, [sp, #0x94]
007825a4  93 f0 ff eb                                      bl #0x77e7f8
007825a8  d0 30 96 e5                                      ldr r3, [r6, #0xd0]
007825ac  00 00 53 e3                                      cmp r3, #0
007825b0  14 00 00 da                                      ble #0x782608
007825b4  01 70 87 e2                                      add r7, r7, #1
007825b8  b2 ff ff ea                                      b #0x782488
007825bc  3c 04 9f e5                                      ldr r0, [pc, #0x43c]
007825c0  00 00 8f e0                                      add r0, pc, r0
007825c4  09 7b ff eb                                      bl #0x7611f0
007825c8  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
007825cc  00 00 53 e3                                      cmp r3, #0
007825d0  d9 00 00 da                                      ble #0x78293c
007825d4  00 40 a0 e3                                      mov r4, #0
007825d8  08 00 a0 e1                                      mov r0, r8
007825dc  04 10 a0 e1                                      mov r1, r4
007825e0  a4 40 8d e5                                      str r4, [sp, #0xa4]
007825e4  83 f0 ff eb                                      bl #0x77e7f8
007825e8  94 30 9d e5                                      ldr r3, [sp, #0x94]
007825ec  04 00 53 e1                                      cmp r3, r4
007825f0  d9 00 00 da                                      ble #0x78295c
007825f4  00 30 a0 e3                                      mov r3, #0
007825f8  04 00 9d e5                                      ldr r0, [sp, #4]
007825fc  03 10 a0 e1                                      mov r1, r3
00782600  94 30 8d e5                                      str r3, [sp, #0x94]
00782604  7b f0 ff eb                                      bl #0x77e7f8
00782608  d6 4e d6 e1                                      ldrsb r4, [r6, #0xe6]
0078260c  00 00 54 e3                                      cmp r4, #0
00782610  0d 00 00 1a                                      bne #0x78264c
00782614  a0 30 96 e5                                      ldr r3, [r6, #0xa0]
00782618  9d 50 d6 e5                                      ldrb r5, [r6, #0x9d]
0078261c  03 00 a0 e1                                      mov r0, r3
00782620  00 30 93 e5                                      ldr r3, [r3]
00782624  0f e0 a0 e1                                      mov lr, pc
00782628  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0078262c  ec 30 d6 e5                                      ldrb r3, [r6, #0xec]
00782630  01 00 50 e3                                      cmp r0, #1
00782634  05 00 a0 d1                                      movle r0, r5
00782638  01 00 85 c3                                      orrgt r0, r5, #1
0078263c  9d 00 c6 e5                                      strb r0, [r6, #0x9d]
00782640  00 00 53 e3                                      cmp r3, #0
00782644  b4 7e d6 e1                                      ldrh r7, [r6, #0xe4]
00782648  49 00 00 1a                                      bne #0x782774
0078264c  a8 40 86 e2                                      add r4, r6, #0xa8
00782650  e9 30 d6 e5                                      ldrb r3, [r6, #0xe9]
00782654  00 00 53 e3                                      cmp r3, #0
00782658  0f 00 00 0a                                      beq #0x78269c
0078265c  ec 30 d6 e5                                      ldrb r3, [r6, #0xec]
00782660  00 00 53 e3                                      cmp r3, #0
00782664  0a 00 00 0a                                      beq #0x782694
00782668  00 30 96 e5                                      ldr r3, [r6]
0078266c  00 20 a0 e3                                      mov r2, #0
00782670  0c 10 a0 e3                                      mov r1, #0xc
00782674  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00782678  06 00 a0 e1                                      mov r0, r6
0078267c  b0 10 cd e5                                      strb r1, [sp, #0xb0]
00782680  b4 20 8d e5                                      str r2, [sp, #0xb4]
00782684  b1 20 cd e5                                      strb r2, [sp, #0xb1]
00782688  b2 2b cd e1                                      strh r2, [sp, #0xb2]
0078268c  b0 10 8d e2                                      add r1, sp, #0xb0
00782690  33 ff 2f e1                                      blx r3
00782694  01 30 a0 e3                                      mov r3, #1
00782698  9d 30 c6 e5                                      strb r3, [r6, #0x9d]
0078269c  06 00 a0 e1                                      mov r0, r6
007826a0  01 fe ff eb                                      bl #0x781eac
007826a4  04 00 a0 e1                                      mov r0, r4
007826a8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007826ac  95 4c ff eb                                      bl #0x755908
007826b0  00 00 50 e3                                      cmp r0, #0
007826b4  01 30 a0 13                                      movne r3, #1
007826b8  9d 30 c6 15                                      strbne r3, [r6, #0x9d]
007826bc  01 30 a0 e3                                      mov r3, #1
007826c0  ec 30 c6 e5                                      strb r3, [r6, #0xec]
007826c4  c4 d0 8d e2                                      add sp, sp, #0xc4
007826c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007826cc  0a 00 a0 e1                                      mov r0, sl
007826d0  cb 10 8b e0                                      add r1, fp, fp, asr #1
007826d4  47 f0 ff eb                                      bl #0x77e7f8
007826d8  83 ff ff ea                                      b #0x7824ec
007826dc  9a ff ff aa                                      bge #0x78254c
007826e0  03 21 a0 e1                                      lsl r2, r3, #2
007826e4  00 10 95 e5                                      ldr r1, [r5]
007826e8  01 30 93 e2                                      adds r3, r3, #1
007826ec  02 40 81 e7                                      str r4, [r1, r2]
007826f0  04 20 82 e2                                      add r2, r2, #4
007826f4  fa ff ff 1a                                      bne #0x7826e4
007826f8  93 ff ff ea                                      b #0x78254c
007826fc  a5 ff ff aa                                      bge #0x782598
00782700  03 21 a0 e1                                      lsl r2, r3, #2
00782704  90 10 9d e5                                      ldr r1, [sp, #0x90]
00782708  01 30 93 e2                                      adds r3, r3, #1
0078270c  02 40 81 e7                                      str r4, [r1, r2]
00782710  04 20 82 e2                                      add r2, r2, #4
00782714  fa ff ff 1a                                      bne #0x782704
00782718  9e ff ff ea                                      b #0x782598
0078271c  96 ff ff aa                                      bge #0x78257c
00782720  03 21 a0 e1                                      lsl r2, r3, #2
00782724  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00782728  01 30 93 e2                                      adds r3, r3, #1
0078272c  02 40 81 e7                                      str r4, [r1, r2]
00782730  04 20 82 e2                                      add r2, r2, #4
00782734  fa ff ff 1a                                      bne #0x782724
00782738  8f ff ff ea                                      b #0x78257c
0078273c  00 30 90 e5                                      ldr r3, [r0]
00782740  0f e0 a0 e1                                      mov lr, pc
00782744  48 f1 93 e5                                      ldr pc, [r3, #0x148]
00782748  00 30 96 e5                                      ldr r3, [r6]
0078274c  0a 20 a0 e3                                      mov r2, #0xa
00782750  06 00 a0 e1                                      mov r0, r6
00782754  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00782758  b8 10 8d e2                                      add r1, sp, #0xb8
0078275c  b8 20 cd e5                                      strb r2, [sp, #0xb8]
00782760  bc 40 8d e5                                      str r4, [sp, #0xbc]
00782764  b9 40 cd e5                                      strb r4, [sp, #0xb9]
00782768  ba 4b cd e1                                      strh r4, [sp, #0xba]
0078276c  33 ff 2f e1                                      blx r3
00782770  2c ff ff ea                                      b #0x782428
00782774  a0 30 96 e5                                      ldr r3, [r6, #0xa0]
00782778  01 50 87 e2                                      add r5, r7, #1
0078277c  75 50 ff e6                                      uxth r5, r5
00782780  b4 5e c6 e1                                      strh r5, [r6, #0xe4]
00782784  03 00 a0 e1                                      mov r0, r3
00782788  00 30 93 e5                                      ldr r3, [r3]
0078278c  0f e0 a0 e1                                      mov lr, pc
00782790  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00782794  75 50 bf e6                                      sxth r5, r5
00782798  00 00 55 e1                                      cmp r5, r0
0078279c  b4 4e c6 a1                                      strhge r4, [r6, #0xe4]
007827a0  b4 5e d6 e1                                      ldrh r5, [r6, #0xe4]
007827a4  07 00 55 e1                                      cmp r5, r7
007827a8  75 10 bf e6                                      sxth r1, r5
007827ac  a6 ff ff 0a                                      beq #0x78264c
007827b0  00 00 55 e3                                      cmp r5, #0
007827b4  08 00 00 0a                                      beq #0x7827dc
007827b8  a8 40 86 e2                                      add r4, r6, #0xa8
007827bc  00 30 96 e5                                      ldr r3, [r6]
007827c0  06 00 a0 e1                                      mov r0, r6
007827c4  00 20 a0 e3                                      mov r2, #0
007827c8  0f e0 a0 e1                                      mov lr, pc
007827cc  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
007827d0  01 30 a0 e3                                      mov r3, #1
007827d4  9d 30 c6 e5                                      strb r3, [r6, #0x9d]
007827d8  9c ff ff ea                                      b #0x782650
007827dc  a0 30 96 e5                                      ldr r3, [r6, #0xa0]
007827e0  03 00 a0 e1                                      mov r0, r3
007827e4  00 30 93 e5                                      ldr r3, [r3]
007827e8  0f e0 a0 e1                                      mov lr, pc
007827ec  38 f0 93 e5                                      ldr pc, [r3, #0x38]
007827f0  01 00 50 e3                                      cmp r0, #1
007827f4  65 00 00 da                                      ble #0x782990
007827f8  a0 30 96 e5                                      ldr r3, [r6, #0xa0]
007827fc  05 10 a0 e1                                      mov r1, r5
00782800  10 70 8d e2                                      add r7, sp, #0x10
00782804  03 00 a0 e1                                      mov r0, r3
00782808  00 30 93 e5                                      ldr r3, [r3]
0078280c  0f e0 a0 e1                                      mov lr, pc
00782810  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00782814  05 10 a0 e1                                      mov r1, r5
00782818  00 40 a0 e1                                      mov r4, r0
0078281c  80 20 a0 e3                                      mov r2, #0x80
00782820  07 00 a0 e1                                      mov r0, r7
00782824  0d 2f ee eb                                      bl #0x30e460
00782828  20 30 a0 e3                                      mov r3, #0x20
0078282c  a8 30 8d e5                                      str r3, [sp, #0xa8]
00782830  01 30 a0 e3                                      mov r3, #1
00782834  a0 70 8d e5                                      str r7, [sp, #0xa0]
00782838  ac 30 cd e5                                      strb r3, [sp, #0xac]
0078283c  9c 50 cd e5                                      strb r5, [sp, #0x9c]
00782840  a4 50 8d e5                                      str r5, [sp, #0xa4]
00782844  90 50 8d e5                                      str r5, [sp, #0x90]
00782848  94 50 8d e5                                      str r5, [sp, #0x94]
0078284c  98 50 8d e5                                      str r5, [sp, #0x98]
00782850  04 30 94 e5                                      ldr r3, [r4, #4]
00782854  1f 00 53 e3                                      cmp r3, #0x1f
00782858  47 00 00 ca                                      bgt #0x78297c
0078285c  00 00 53 e3                                      cmp r3, #0
00782860  59 00 00 da                                      ble #0x7829cc
00782864  a0 80 8d e2                                      add r8, sp, #0xa0
00782868  90 30 8d e2                                      add r3, sp, #0x90
0078286c  08 50 a0 e1                                      mov r5, r8
00782870  04 30 8d e5                                      str r3, [sp, #4]
00782874  00 70 a0 e3                                      mov r7, #0
00782878  00 30 94 e5                                      ldr r3, [r4]
0078287c  07 31 93 e7                                      ldr r3, [r3, r7, lsl #2]
00782880  01 70 87 e2                                      add r7, r7, #1
00782884  03 00 a0 e1                                      mov r0, r3
00782888  00 30 93 e5                                      ldr r3, [r3]
0078288c  0f e0 a0 e1                                      mov lr, pc
00782890  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00782894  04 30 95 e5                                      ldr r3, [r5, #4]
00782898  08 20 95 e5                                      ldr r2, [r5, #8]
0078289c  20 98 a0 e1                                      lsr sb, r0, #0x10
007828a0  01 a0 83 e2                                      add sl, r3, #1
007828a4  02 00 5a e1                                      cmp sl, r2
007828a8  1e 00 00 ca                                      bgt #0x782928
007828ac  00 20 95 e5                                      ldr r2, [r5]
007828b0  03 91 82 e7                                      str sb, [r2, r3, lsl #2]
007828b4  04 a0 85 e5                                      str sl, [r5, #4]
007828b8  04 30 94 e5                                      ldr r3, [r4, #4]
007828bc  03 00 57 e1                                      cmp r7, r3
007828c0  ec ff ff ba                                      blt #0x782878
007828c4  04 30 95 e5                                      ldr r3, [r5, #4]
007828c8  00 00 53 e3                                      cmp r3, #0
007828cc  31 00 00 da                                      ble #0x782998
007828d0  a8 40 86 e2                                      add r4, r6, #0xa8
007828d4  05 10 a0 e1                                      mov r1, r5
007828d8  04 00 a0 e1                                      mov r0, r4
007828dc  c5 4e ff eb                                      bl #0x7563f8
007828e0  94 30 9d e5                                      ldr r3, [sp, #0x94]
007828e4  00 00 53 e3                                      cmp r3, #0
007828e8  2e 00 00 da                                      ble #0x7829a8
007828ec  00 50 a0 e3                                      mov r5, #0
007828f0  04 00 9d e5                                      ldr r0, [sp, #4]
007828f4  05 10 a0 e1                                      mov r1, r5
007828f8  94 50 8d e5                                      str r5, [sp, #0x94]
007828fc  af 86 ff eb                                      bl #0x7643c0
00782900  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00782904  05 00 53 e1                                      cmp r3, r5
00782908  34 00 00 da                                      ble #0x7829e0
0078290c  00 30 a0 e3                                      mov r3, #0
00782910  03 10 a0 e1                                      mov r1, r3
00782914  08 00 a0 e1                                      mov r0, r8
00782918  a4 30 8d e5                                      str r3, [sp, #0xa4]
0078291c  a7 86 ff eb                                      bl #0x7643c0
00782920  f4 1e d6 e1                                      ldrsh r1, [r6, #0xe4]
00782924  a4 ff ff ea                                      b #0x7827bc
00782928  05 00 a0 e1                                      mov r0, r5
0078292c  ca 10 8a e0                                      add r1, sl, sl, asr #1
00782930  a2 86 ff eb                                      bl #0x7643c0
00782934  04 30 95 e5                                      ldr r3, [r5, #4]
00782938  db ff ff ea                                      b #0x7828ac
0078293c  24 ff ff aa                                      bge #0x7825d4
00782940  03 21 a0 e1                                      lsl r2, r3, #2
00782944  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00782948  01 30 93 e2                                      adds r3, r3, #1
0078294c  02 40 81 e7                                      str r4, [r1, r2]
00782950  04 20 82 e2                                      add r2, r2, #4
00782954  fa ff ff 1a                                      bne #0x782944
00782958  1d ff ff ea                                      b #0x7825d4
0078295c  24 ff ff aa                                      bge #0x7825f4
00782960  03 21 a0 e1                                      lsl r2, r3, #2
00782964  90 10 9d e5                                      ldr r1, [sp, #0x90]
00782968  01 30 93 e2                                      adds r3, r3, #1
0078296c  02 40 81 e7                                      str r4, [r1, r2]
00782970  04 20 82 e2                                      add r2, r2, #4
00782974  fa ff ff 1a                                      bne #0x782964
00782978  1d ff ff ea                                      b #0x7825f4
0078297c  90 30 8d e2                                      add r3, sp, #0x90
00782980  04 30 8d e5                                      str r3, [sp, #4]
00782984  03 50 a0 e1                                      mov r5, r3
00782988  a0 80 8d e2                                      add r8, sp, #0xa0
0078298c  b8 ff ff ea                                      b #0x782874
00782990  f4 1e d6 e1                                      ldrsh r1, [r6, #0xe4]
00782994  87 ff ff ea                                      b #0x7827b8
00782998  a8 40 86 e2                                      add r4, r6, #0xa8
0078299c  04 00 a0 e1                                      mov r0, r4
007829a0  b5 4e ff eb                                      bl #0x75647c
007829a4  cd ff ff ea                                      b #0x7828e0
007829a8  cf ff ff aa                                      bge #0x7828ec
007829ac  03 21 a0 e1                                      lsl r2, r3, #2
007829b0  00 00 a0 e3                                      mov r0, #0
007829b4  90 10 9d e5                                      ldr r1, [sp, #0x90]
007829b8  01 30 93 e2                                      adds r3, r3, #1
007829bc  02 00 81 e7                                      str r0, [r1, r2]
007829c0  04 20 82 e2                                      add r2, r2, #4
007829c4  fa ff ff 1a                                      bne #0x7829b4
007829c8  c7 ff ff ea                                      b #0x7828ec
007829cc  a0 80 8d e2                                      add r8, sp, #0xa0
007829d0  90 30 8d e2                                      add r3, sp, #0x90
007829d4  08 50 a0 e1                                      mov r5, r8
007829d8  04 30 8d e5                                      str r3, [sp, #4]
007829dc  b8 ff ff ea                                      b #0x7828c4
007829e0  c9 ff ff aa                                      bge #0x78290c
007829e4  03 21 a0 e1                                      lsl r2, r3, #2
007829e8  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
007829ec  01 30 93 e2                                      adds r3, r3, #1
007829f0  02 50 81 e7                                      str r5, [r1, r2]
007829f4  04 20 82 e2                                      add r2, r2, #4
007829f8  fa ff ff 1a                                      bne #0x7829e8
007829fc  c2 ff ff ea                                      b #0x78290c
; mapping-symbol data/literal pool
00782a00  78 76 18 00                                      .byte 0x78, 0x76, 0x18, 0x00

; FUNCTION 0x00782a04, declared_size=656, range_size=656, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance20clone_display_objectERKNS_9tu_stringEi
; demangled: gameswf::sprite_instance::clone_display_object(gameswf::tu_string const&, int)
; decoder-mode: arm
00782a04  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00782a08  40 70 90 e5                                      ldr r7, [r0, #0x40]
00782a0c  6c 62 9f e5                                      ldr r6, [pc, #0x26c]
00782a10  18 d0 4d e2                                      sub sp, sp, #0x18
00782a14  00 00 57 e3                                      cmp r7, #0
00782a18  00 40 a0 e1                                      mov r4, r0
00782a1c  01 80 a0 e1                                      mov r8, r1
00782a20  06 60 8f e0                                      add r6, pc, r6
00782a24  02 a0 a0 e1                                      mov sl, r2
00782a28  63 00 00 0a                                      beq #0x782bbc
00782a2c  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
00782a30  04 30 d0 e5                                      ldrb r3, [r0, #4]
00782a34  00 00 53 e3                                      cmp r3, #0
00782a38  56 00 00 0a                                      beq #0x782b98
00782a3c  00 30 97 e5                                      ldr r3, [r7]
00782a40  07 00 a0 e1                                      mov r0, r7
00782a44  02 10 a0 e3                                      mov r1, #2
00782a48  0f e0 a0 e1                                      mov lr, pc
00782a4c  08 f0 93 e5                                      ldr pc, [r3, #8]
00782a50  00 00 50 e3                                      cmp r0, #0
00782a54  58 00 00 0a                                      beq #0x782bbc
00782a58  38 30 94 e5                                      ldr r3, [r4, #0x38]
00782a5c  01 00 73 e3                                      cmn r3, #1
00782a60  5b 00 00 0a                                      beq #0x782bd4
00782a64  30 00 94 e5                                      ldr r0, [r4, #0x30]
00782a68  00 00 50 e3                                      cmp r0, #0
00782a6c  03 00 00 0a                                      beq #0x782a80
00782a70  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00782a74  04 20 d3 e5                                      ldrb r2, [r3, #4]
00782a78  00 00 52 e3                                      cmp r2, #0
00782a7c  74 00 00 0a                                      beq #0x782c54
00782a80  a4 20 94 e5                                      ldr r2, [r4, #0xa4]
00782a84  00 c0 a0 e3                                      mov ip, #0
00782a88  a0 10 94 e5                                      ldr r1, [r4, #0xa0]
00782a8c  07 30 a0 e1                                      mov r3, r7
00782a90  00 c0 8d e5                                      str ip, [sp]
00782a94  95 a8 ff eb                                      bl #0x76ccf0
00782a98  07 10 a0 e1                                      mov r1, r7
00782a9c  00 50 a0 e1                                      mov r5, r0
00782aa0  3c 00 80 e2                                      add r0, r0, #0x3c
00782aa4  3f 94 f2 eb                                      bl #0x427ba8
00782aa8  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
00782aac  08 10 a0 e1                                      mov r1, r8
00782ab0  05 00 a0 e1                                      mov r0, r5
00782ab4  a4 30 85 e5                                      str r3, [r5, #0xa4]
00782ab8  be 42 ff eb                                      bl #0x7535b8
00782abc  f0 30 94 e5                                      ldr r3, [r4, #0xf0]
00782ac0  00 00 53 e3                                      cmp r3, #0
00782ac4  12 00 00 0a                                      beq #0x782b14
00782ac8  05 00 a0 e1                                      mov r0, r5
00782acc  3d f6 ff eb                                      bl #0x7803c8
00782ad0  00 80 a0 e1                                      mov r8, r0
00782ad4  04 00 a0 e1                                      mov r0, r4
00782ad8  3a f6 ff eb                                      bl #0x7803c8
00782adc  00 90 a0 e1                                      mov sb, r0
00782ae0  09 10 a0 e1                                      mov r1, sb
00782ae4  08 00 a0 e1                                      mov r0, r8
00782ae8  00 e1 ff eb                                      bl #0x77aef0
00782aec  88 30 99 e5                                      ldr r3, [sb, #0x88]
00782af0  88 30 88 e5                                      str r3, [r8, #0x88]
00782af4  8c 30 99 e5                                      ldr r3, [sb, #0x8c]
00782af8  8c 30 88 e5                                      str r3, [r8, #0x8c]
00782afc  90 30 99 e5                                      ldr r3, [sb, #0x90]
00782b00  90 30 88 e5                                      str r3, [r8, #0x90]
00782b04  94 30 99 e5                                      ldr r3, [sb, #0x94]
00782b08  94 30 88 e5                                      str r3, [r8, #0x94]
00782b0c  98 30 99 e5                                      ldr r3, [sb, #0x98]
00782b10  98 30 88 e5                                      str r3, [r8, #0x98]
00782b14  68 31 9f e5                                      ldr r3, [pc, #0x168]
00782b18  b6 c9 d4 e1                                      ldrh ip, [r4, #0x96]
00782b1c  0a 20 a0 e1                                      mov r2, sl
00782b20  03 80 96 e7                                      ldr r8, [r6, r3]
00782b24  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
00782b28  a8 00 87 e2                                      add r0, r7, #0xa8
00782b2c  05 10 a0 e1                                      mov r1, r5
00782b30  03 90 96 e7                                      ldr sb, [r6, r3]
00782b34  50 31 9f e5                                      ldr r3, [pc, #0x150]
00782b38  03 e0 96 e7                                      ldr lr, [r6, r3]
00782b3c  90 60 94 e5                                      ldr r6, [r4, #0x90]
00782b40  01 30 a0 e3                                      mov r3, #1
00782b44  08 e0 8d e5                                      str lr, [sp, #8]
00782b48  10 c0 8d e5                                      str ip, [sp, #0x10]
00782b4c  00 03 8d e8                                      stm sp, {r8, sb}
00782b50  0c 60 8d e5                                      str r6, [sp, #0xc]
00782b54  8b 4e ff eb                                      bl #0x756588
00782b58  48 10 94 e5                                      ldr r1, [r4, #0x48]
00782b5c  05 00 a0 e1                                      mov r0, r5
00782b60  7d 42 ff eb                                      bl #0x75355c
00782b64  05 00 a0 e1                                      mov r0, r5
00782b68  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00782b6c  a1 3d f2 eb                                      bl #0x4121f8
00782b70  05 00 a0 e1                                      mov r0, r5
00782b74  50 10 94 e5                                      ldr r1, [r4, #0x50]
00782b78  5e 4c ff eb                                      bl #0x755cf8
00782b7c  04 00 a0 e1                                      mov r0, r4
00782b80  00 30 94 e5                                      ldr r3, [r4]
00782b84  05 10 a0 e1                                      mov r1, r5
00782b88  0f e0 a0 e1                                      mov lr, pc
00782b8c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00782b90  05 00 a0 e1                                      mov r0, r5
00782b94  0c 00 00 ea                                      b #0x782bcc
00782b98  00 10 90 e5                                      ldr r1, [r0]
00782b9c  01 10 41 e2                                      sub r1, r1, #1
00782ba0  00 00 51 e3                                      cmp r1, #0
00782ba4  00 10 80 e5                                      str r1, [r0]
00782ba8  00 00 00 1a                                      bne #0x782bb0
00782bac  e1 3f ff eb                                      bl #0x752b38
00782bb0  00 30 a0 e3                                      mov r3, #0
00782bb4  40 30 84 e5                                      str r3, [r4, #0x40]
00782bb8  3c 30 84 e5                                      str r3, [r4, #0x3c]
00782bbc  cc 00 9f e5                                      ldr r0, [pc, #0xcc]
00782bc0  00 00 8f e0                                      add r0, pc, r0
00782bc4  6e 79 ff eb                                      bl #0x761184
00782bc8  00 00 a0 e3                                      mov r0, #0
00782bcc  18 d0 8d e2                                      add sp, sp, #0x18
00782bd0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00782bd4  30 50 94 e5                                      ldr r5, [r4, #0x30]
00782bd8  00 00 55 e3                                      cmp r5, #0
00782bdc  03 00 00 0a                                      beq #0x782bf0
00782be0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00782be4  04 90 d3 e5                                      ldrb sb, [r3, #4]
00782be8  00 00 59 e3                                      cmp sb, #0
00782bec  12 00 00 0a                                      beq #0x782c3c
00782bf0  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
00782bf4  17 ed ff eb                                      bl #0x77e058
00782bf8  a4 20 94 e5                                      ldr r2, [r4, #0xa4]
00782bfc  07 30 a0 e1                                      mov r3, r7
00782c00  00 c0 e0 e3                                      mvn ip, #0
00782c04  00 10 a0 e1                                      mov r1, r0
00782c08  05 00 a0 e1                                      mov r0, r5
00782c0c  00 c0 8d e5                                      str ip, [sp]
00782c10  36 a8 ff eb                                      bl #0x76ccf0
00782c14  07 10 a0 e1                                      mov r1, r7
00782c18  00 50 a0 e1                                      mov r5, r0
00782c1c  3c 00 80 e2                                      add r0, r0, #0x3c
00782c20  e0 93 f2 eb                                      bl #0x427ba8
00782c24  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
00782c28  08 10 a0 e1                                      mov r1, r8
00782c2c  05 00 a0 e1                                      mov r0, r5
00782c30  a4 30 85 e5                                      str r3, [r5, #0xa4]
00782c34  5f 42 ff eb                                      bl #0x7535b8
00782c38  b5 ff ff ea                                      b #0x782b14
00782c3c  2c 00 84 e2                                      add r0, r4, #0x2c
00782c40  09 10 a0 e1                                      mov r1, sb
00782c44  8e 74 f2 eb                                      bl #0x41fe84
00782c48  09 50 a0 e1                                      mov r5, sb
00782c4c  30 90 84 e5                                      str sb, [r4, #0x30]
00782c50  e6 ff ff ea                                      b #0x782bf0
00782c54  00 10 93 e5                                      ldr r1, [r3]
00782c58  01 10 41 e2                                      sub r1, r1, #1
00782c5c  00 00 51 e3                                      cmp r1, #0
00782c60  00 10 83 e5                                      str r1, [r3]
00782c64  01 00 00 1a                                      bne #0x782c70
00782c68  03 00 a0 e1                                      mov r0, r3
00782c6c  b1 3f ff eb                                      bl #0x752b38
00782c70  00 00 a0 e3                                      mov r0, #0
00782c74  2c 00 84 e5                                      str r0, [r4, #0x2c]
00782c78  30 00 84 e5                                      str r0, [r4, #0x30]
00782c7c  7f ff ff ea                                      b #0x782a80
; mapping-symbol data/literal pool
00782c80  70 20 21 00 84 34 00 00 c8 40 00 00 e4 3d 00 00  .byte 0x70, 0x20, 0x21, 0x00, 0x84, 0x34, 0x00, 0x00, 0xc8, 0x40, 0x00, 0x00, 0xe4, 0x3d, 0x00, 0x00
00782c90  b8 70 18 00                                      .byte 0xb8, 0x70, 0x18, 0x00

; FUNCTION 0x00782c94, declared_size=336, range_size=336, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance8hit_testEPNS_9characterE
; demangled: gameswf::sprite_instance::hit_test(gameswf::character*)
; decoder-mode: arm
00782c94  70 40 2d e9                                      push {r4, r5, r6, lr}
00782c98  20 d0 4d e2                                      sub sp, sp, #0x20
00782c9c  10 60 8d e2                                      add r6, sp, #0x10
00782ca0  00 50 a0 e1                                      mov r5, r0
00782ca4  00 30 90 e5                                      ldr r3, [r0]
00782ca8  01 40 a0 e1                                      mov r4, r1
00782cac  06 10 a0 e1                                      mov r1, r6
00782cb0  0f e0 a0 e1                                      mov lr, pc
00782cb4  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
00782cb8  40 00 95 e5                                      ldr r0, [r5, #0x40]
00782cbc  00 00 50 e3                                      cmp r0, #0
00782cc0  06 00 00 0a                                      beq #0x782ce0
00782cc4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00782cc8  04 20 d3 e5                                      ldrb r2, [r3, #4]
00782ccc  00 00 52 e3                                      cmp r2, #0
00782cd0  38 00 00 0a                                      beq #0x782db8
00782cd4  a6 44 ff eb                                      bl #0x753f74
00782cd8  06 10 a0 e1                                      mov r1, r6
00782cdc  4c 47 00 eb                                      bl #0x794a14
00782ce0  04 00 a0 e1                                      mov r0, r4
00782ce4  00 30 94 e5                                      ldr r3, [r4]
00782ce8  0d 10 a0 e1                                      mov r1, sp
00782cec  0f e0 a0 e1                                      mov lr, pc
00782cf0  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
00782cf4  40 00 94 e5                                      ldr r0, [r4, #0x40]
00782cf8  0d 50 a0 e1                                      mov r5, sp
00782cfc  00 00 50 e3                                      cmp r0, #0
00782d00  06 00 00 0a                                      beq #0x782d20
00782d04  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00782d08  04 20 d3 e5                                      ldrb r2, [r3, #4]
00782d0c  00 00 52 e3                                      cmp r2, #0
00782d10  1d 00 00 0a                                      beq #0x782d8c
00782d14  96 44 ff eb                                      bl #0x753f74
00782d18  0d 10 a0 e1                                      mov r1, sp
00782d1c  3c 47 00 eb                                      bl #0x794a14
00782d20  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00782d24  08 10 9d e5                                      ldr r1, [sp, #8]
00782d28  77 2e ee eb                                      bl #0x30e70c
00782d2c  00 00 50 e3                                      cmp r0, #0
00782d30  12 00 00 1a                                      bne #0x782d80
00782d34  18 00 9d e5                                      ldr r0, [sp, #0x18]
00782d38  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00782d3c  6d 2d ee eb                                      bl #0x30e2f8
00782d40  00 00 50 e3                                      cmp r0, #0
00782d44  0d 00 00 1a                                      bne #0x782d80
00782d48  14 00 9d e5                                      ldr r0, [sp, #0x14]
00782d4c  00 10 9d e5                                      ldr r1, [sp]
00782d50  6d 2e ee eb                                      bl #0x30e70c
00782d54  00 00 50 e3                                      cmp r0, #0
00782d58  08 00 00 1a                                      bne #0x782d80
00782d5c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00782d60  04 10 9d e5                                      ldr r1, [sp, #4]
00782d64  63 2d ee eb                                      bl #0x30e2f8
00782d68  00 00 50 e3                                      cmp r0, #0
00782d6c  00 00 a0 e3                                      mov r0, #0
00782d70  01 00 a0 13                                      movne r0, #1
00782d74  01 00 20 e2                                      eor r0, r0, #1
00782d78  70 00 ef e6                                      uxtb r0, r0
00782d7c  00 00 00 ea                                      b #0x782d84
00782d80  00 00 a0 e3                                      mov r0, #0
00782d84  20 d0 8d e2                                      add sp, sp, #0x20
00782d88  70 80 bd e8                                      pop {r4, r5, r6, pc}
00782d8c  00 10 93 e5                                      ldr r1, [r3]
00782d90  01 10 41 e2                                      sub r1, r1, #1
00782d94  00 00 51 e3                                      cmp r1, #0
00782d98  00 10 83 e5                                      str r1, [r3]
00782d9c  01 00 00 1a                                      bne #0x782da8
00782da0  03 00 a0 e1                                      mov r0, r3
00782da4  63 3f ff eb                                      bl #0x752b38
00782da8  00 30 a0 e3                                      mov r3, #0
00782dac  40 30 84 e5                                      str r3, [r4, #0x40]
00782db0  3c 30 84 e5                                      str r3, [r4, #0x3c]
00782db4  d9 ff ff ea                                      b #0x782d20
00782db8  00 10 93 e5                                      ldr r1, [r3]
00782dbc  01 10 41 e2                                      sub r1, r1, #1
00782dc0  00 00 51 e3                                      cmp r1, #0
00782dc4  00 10 83 e5                                      str r1, [r3]
00782dc8  01 00 00 1a                                      bne #0x782dd4
00782dcc  03 00 a0 e1                                      mov r0, r3
00782dd0  58 3f ff eb                                      bl #0x752b38
00782dd4  00 30 a0 e3                                      mov r3, #0
00782dd8  40 30 85 e5                                      str r3, [r5, #0x40]
00782ddc  3c 30 85 e5                                      str r3, [r5, #0x3c]
00782de0  be ff ff ea                                      b #0x782ce0

; FUNCTION 0x00782de4, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZNK7gameswf15sprite_instance10is_enabledEv
; demangled: gameswf::sprite_instance::is_enabled() const
; decoder-mode: arm
00782de4  10 40 2d e9                                      push {r4, lr}
00782de8  00 40 a0 e1                                      mov r4, r0
00782dec  ea 00 d0 e5                                      ldrb r0, [r0, #0xea]
00782df0  00 00 50 e3                                      cmp r0, #0
00782df4  00 00 00 1a                                      bne #0x782dfc
00782df8  10 80 bd e8                                      pop {r4, pc}
00782dfc  40 30 94 e5                                      ldr r3, [r4, #0x40]
00782e00  00 00 53 e3                                      cmp r3, #0
00782e04  13 00 00 0a                                      beq #0x782e58
00782e08  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00782e0c  04 20 d0 e5                                      ldrb r2, [r0, #4]
00782e10  00 00 52 e3                                      cmp r2, #0
00782e14  04 00 00 0a                                      beq #0x782e2c
00782e18  03 00 a0 e1                                      mov r0, r3
00782e1c  00 30 93 e5                                      ldr r3, [r3]
00782e20  0f e0 a0 e1                                      mov lr, pc
00782e24  70 f1 93 e5                                      ldr pc, [r3, #0x170]
00782e28  10 80 bd e8                                      pop {r4, pc}
00782e2c  00 10 90 e5                                      ldr r1, [r0]
00782e30  01 10 41 e2                                      sub r1, r1, #1
00782e34  00 00 51 e3                                      cmp r1, #0
00782e38  00 10 80 e5                                      str r1, [r0]
00782e3c  00 00 00 1a                                      bne #0x782e44
00782e40  3c 3f ff eb                                      bl #0x752b38
00782e44  00 30 a0 e3                                      mov r3, #0
00782e48  40 30 84 e5                                      str r3, [r4, #0x40]
00782e4c  3c 30 84 e5                                      str r3, [r4, #0x3c]
00782e50  01 00 a0 e3                                      mov r0, #1
00782e54  10 80 bd e8                                      pop {r4, pc}
00782e58  01 00 a0 e3                                      mov r0, #1
00782e5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00782e60, declared_size=268, range_size=268, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance12attach_movieERKNS_9tu_stringES1_i
; demangled: gameswf::sprite_instance::attach_movie(gameswf::tu_string const&, gameswf::tu_string, int)
; decoder-mode: arm
00782e60  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00782e64  1c d0 4d e2                                      sub sp, sp, #0x1c
00782e68  00 c0 90 e5                                      ldr ip, [r0]
00782e6c  00 40 a0 e1                                      mov r4, r0
00782e70  02 70 a0 e1                                      mov r7, r2
00782e74  03 60 a0 e1                                      mov r6, r3
00782e78  0f e0 a0 e1                                      mov lr, pc
00782e7c  84 f0 9c e5                                      ldr pc, [ip, #0x84]
00782e80  00 50 50 e2                                      subs r5, r0, #0
00782e84  03 00 00 1a                                      bne #0x782e98
00782e88  00 50 a0 e3                                      mov r5, #0
00782e8c  05 00 a0 e1                                      mov r0, r5
00782e90  1c d0 8d e2                                      add sp, sp, #0x1c
00782e94  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00782e98  00 30 95 e5                                      ldr r3, [r5]
00782e9c  0b 10 a0 e3                                      mov r1, #0xb
00782ea0  0f e0 a0 e1                                      mov lr, pc
00782ea4  08 f0 93 e5                                      ldr pc, [r3, #8]
00782ea8  00 00 50 e3                                      cmp r0, #0
00782eac  f5 ff ff 0a                                      beq #0x782e88
00782eb0  30 00 94 e5                                      ldr r0, [r4, #0x30]
00782eb4  00 00 50 e3                                      cmp r0, #0
00782eb8  03 00 00 0a                                      beq #0x782ecc
00782ebc  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00782ec0  04 20 d3 e5                                      ldrb r2, [r3, #4]
00782ec4  00 00 52 e3                                      cmp r2, #0
00782ec8  1c 00 00 0a                                      beq #0x782f40
00782ecc  a4 20 94 e5                                      ldr r2, [r4, #0xa4]
00782ed0  04 30 a0 e1                                      mov r3, r4
00782ed4  00 c0 e0 e3                                      mvn ip, #0
00782ed8  05 10 a0 e1                                      mov r1, r5
00782edc  00 c0 8d e5                                      str ip, [sp]
00782ee0  82 a7 ff eb                                      bl #0x76ccf0
00782ee4  07 10 a0 e1                                      mov r1, r7
00782ee8  00 50 a0 e1                                      mov r5, r0
00782eec  b1 41 ff eb                                      bl #0x7535b8
00782ef0  50 c0 94 e5                                      ldr ip, [r4, #0x50]
00782ef4  48 70 94 e5                                      ldr r7, [r4, #0x48]
00782ef8  4c e0 94 e5                                      ldr lr, [r4, #0x4c]
00782efc  08 c0 8d e5                                      str ip, [sp, #8]
00782f00  00 c0 a0 e3                                      mov ip, #0
00782f04  a8 00 84 e2                                      add r0, r4, #0xa8
00782f08  05 10 a0 e1                                      mov r1, r5
00782f0c  0c c0 8d e5                                      str ip, [sp, #0xc]
00782f10  06 20 a0 e1                                      mov r2, r6
00782f14  00 c0 a0 e3                                      mov ip, #0
00782f18  01 30 a0 e3                                      mov r3, #1
00782f1c  80 40 8d e8                                      stm sp, {r7, lr}
00782f20  10 c0 8d e5                                      str ip, [sp, #0x10]
00782f24  97 4d ff eb                                      bl #0x756588
00782f28  00 30 95 e5                                      ldr r3, [r5]
00782f2c  05 00 a0 e1                                      mov r0, r5
00782f30  fe 15 a0 e3                                      mov r1, #0x3f800000
00782f34  0f e0 a0 e1                                      mov lr, pc
00782f38  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00782f3c  d2 ff ff ea                                      b #0x782e8c
00782f40  00 10 93 e5                                      ldr r1, [r3]
00782f44  01 10 41 e2                                      sub r1, r1, #1
00782f48  00 00 51 e3                                      cmp r1, #0
00782f4c  00 10 83 e5                                      str r1, [r3]
00782f50  01 00 00 1a                                      bne #0x782f5c
00782f54  03 00 a0 e1                                      mov r0, r3
00782f58  f6 3e ff eb                                      bl #0x752b38
00782f5c  00 00 a0 e3                                      mov r0, #0
00782f60  2c 00 84 e5                                      str r0, [r4, #0x2c]
00782f64  30 00 84 e5                                      str r0, [r4, #0x30]
00782f68  d7 ff ff ea                                      b #0x782ecc

; FUNCTION 0x00782f6c, declared_size=384, range_size=384, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance8hit_testEffb
; demangled: gameswf::sprite_instance::hit_test(float, float, bool)
; decoder-mode: arm
00782f6c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00782f70  00 00 53 e3                                      cmp r3, #0
00782f74  1c d0 4d e2                                      sub sp, sp, #0x1c
00782f78  01 40 a0 e1                                      mov r4, r1
00782f7c  02 60 a0 e1                                      mov r6, r2
00782f80  00 50 a0 e1                                      mov r5, r0
00782f84  24 00 00 0a                                      beq #0x78301c
00782f88  9b 30 d0 e5                                      ldrb r3, [r0, #0x9b]
00782f8c  00 00 53 e3                                      cmp r3, #0
00782f90  1e 00 00 0a                                      beq #0x783010
00782f94  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
00782f98  00 30 a0 e3                                      mov r3, #0
00782f9c  0d 10 a0 e1                                      mov r1, sp
00782fa0  10 20 8d e2                                      add r2, sp, #0x10
00782fa4  04 30 8d e5                                      str r3, [sp, #4]
00782fa8  10 40 8d e5                                      str r4, [sp, #0x10]
00782fac  14 60 8d e5                                      str r6, [sp, #0x14]
00782fb0  00 30 8d e5                                      str r3, [sp]
00782fb4  70 43 ff eb                                      bl #0x753d7c
00782fb8  ac 10 95 e5                                      ldr r1, [r5, #0xac]
00782fbc  00 00 51 e3                                      cmp r1, #0
00782fc0  12 00 00 da                                      ble #0x783010
00782fc4  00 40 a0 e3                                      mov r4, #0
00782fc8  a8 30 95 e5                                      ldr r3, [r5, #0xa8]
00782fcc  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00782fd0  00 00 53 e2                                      subs r0, r3, #0
00782fd4  0a 00 00 0a                                      beq #0x783004
00782fd8  9b 20 d3 e5                                      ldrb r2, [r3, #0x9b]
00782fdc  00 00 52 e3                                      cmp r2, #0
00782fe0  07 00 00 0a                                      beq #0x783004
00782fe4  00 30 93 e5                                      ldr r3, [r3]
00782fe8  00 10 9d e5                                      ldr r1, [sp]
00782fec  04 20 9d e5                                      ldr r2, [sp, #4]
00782ff0  0f e0 a0 e1                                      mov lr, pc
00782ff4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00782ff8  00 00 50 e3                                      cmp r0, #0
00782ffc  38 00 00 1a                                      bne #0x7830e4
00783000  ac 10 95 e5                                      ldr r1, [r5, #0xac]
00783004  01 40 84 e2                                      add r4, r4, #1
00783008  01 00 54 e1                                      cmp r4, r1
0078300c  ed ff ff ba                                      blt #0x782fc8
00783010  00 00 a0 e3                                      mov r0, #0
00783014  1c d0 8d e2                                      add sp, sp, #0x1c
00783018  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0078301c  00 30 90 e5                                      ldr r3, [r0]
00783020  0d 10 a0 e1                                      mov r1, sp
00783024  0f e0 a0 e1                                      mov lr, pc
00783028  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
0078302c  40 00 95 e5                                      ldr r0, [r5, #0x40]
00783030  0d 70 a0 e1                                      mov r7, sp
00783034  00 00 50 e3                                      cmp r0, #0
00783038  06 00 00 0a                                      beq #0x783058
0078303c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00783040  04 20 d3 e5                                      ldrb r2, [r3, #4]
00783044  00 00 52 e3                                      cmp r2, #0
00783048  1a 00 00 0a                                      beq #0x7830b8
0078304c  c8 43 ff eb                                      bl #0x753f74
00783050  0d 10 a0 e1                                      mov r1, sp
00783054  6e 46 00 eb                                      bl #0x794a14
00783058  04 00 a0 e1                                      mov r0, r4
0078305c  00 10 9d e5                                      ldr r1, [sp]
00783060  a9 2d ee eb                                      bl #0x30e70c
00783064  00 00 50 e3                                      cmp r0, #0
00783068  e8 ff ff 1a                                      bne #0x783010
0078306c  04 00 a0 e1                                      mov r0, r4
00783070  04 10 9d e5                                      ldr r1, [sp, #4]
00783074  9f 2c ee eb                                      bl #0x30e2f8
00783078  00 00 50 e3                                      cmp r0, #0
0078307c  e3 ff ff 1a                                      bne #0x783010
00783080  06 00 a0 e1                                      mov r0, r6
00783084  08 10 9d e5                                      ldr r1, [sp, #8]
00783088  9f 2d ee eb                                      bl #0x30e70c
0078308c  00 00 50 e3                                      cmp r0, #0
00783090  de ff ff 1a                                      bne #0x783010
00783094  06 00 a0 e1                                      mov r0, r6
00783098  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078309c  95 2c ee eb                                      bl #0x30e2f8
007830a0  00 00 50 e3                                      cmp r0, #0
007830a4  00 30 a0 e3                                      mov r3, #0
007830a8  01 30 a0 13                                      movne r3, #1
007830ac  01 30 23 e2                                      eor r3, r3, #1
007830b0  73 00 ef e6                                      uxtb r0, r3
007830b4  d6 ff ff ea                                      b #0x783014
007830b8  00 10 93 e5                                      ldr r1, [r3]
007830bc  01 10 41 e2                                      sub r1, r1, #1
007830c0  00 00 51 e3                                      cmp r1, #0
007830c4  00 10 83 e5                                      str r1, [r3]
007830c8  01 00 00 1a                                      bne #0x7830d4
007830cc  03 00 a0 e1                                      mov r0, r3
007830d0  98 3e ff eb                                      bl #0x752b38
007830d4  00 30 a0 e3                                      mov r3, #0
007830d8  40 30 85 e5                                      str r3, [r5, #0x40]
007830dc  3c 30 85 e5                                      str r3, [r5, #0x3c]
007830e0  dc ff ff ea                                      b #0x783058
007830e4  01 00 a0 e3                                      mov r0, #1
007830e8  c9 ff ff ea                                      b #0x783014

; FUNCTION 0x007830ec, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_instance
; alias: _ZN7gameswf15sprite_instance8hit_testEff
; demangled: gameswf::sprite_instance::hit_test(float, float)
; decoder-mode: arm
007830ec  01 30 a0 e3                                      mov r3, #1
007830f0  9d ff ff ea                                      b #0x782f6c
