; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004121f8, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character10set_matrixERKNS_6matrixE
; demangled: gameswf::character::set_matrix(gameswf::matrix const&)
; decoder-mode: arm
004121f8  70 40 2d e9                                      push {r4, r5, r6, lr}
004121fc  54 60 90 e5                                      ldr r6, [r0, #0x54]
00412200  00 40 a0 e1                                      mov r4, r0
00412204  01 50 a0 e1                                      mov r5, r1
00412208  00 00 56 e3                                      cmp r6, #0
0041220c  0a 00 00 0a                                      beq #0x41223c
00412210  20 c0 86 e2                                      add ip, r6, #0x20
00412214  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
00412218  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0041221c  03 00 95 e8                                      ldm r5, {r0, r1}
00412220  01 20 a0 e3                                      mov r2, #1
00412224  03 00 8c e8                                      stm ip, {r0, r1}
00412228  54 30 94 e5                                      ldr r3, [r4, #0x54]
0041222c  99 20 c4 e5                                      strb r2, [r4, #0x99]
00412230  20 30 83 e2                                      add r3, r3, #0x20
00412234  4c 30 84 e5                                      str r3, [r4, #0x4c]
00412238  70 80 bd e8                                      pop {r4, r5, r6, pc}
0041223c  06 10 a0 e1                                      mov r1, r6
00412240  6c 00 a0 e3                                      mov r0, #0x6c
00412244  57 02 0d eb                                      bl #0x752ba8
00412248  00 60 a0 e1                                      mov r6, r0
0041224c  c3 ff ff eb                                      bl #0x412160
00412250  54 60 84 e5                                      str r6, [r4, #0x54]
00412254  ed ff ff ea                                      b #0x412210

; FUNCTION 0x00752c28, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character2isEi
; demangled: gameswf::character::is(int) const
; decoder-mode: arm
00752c28  01 00 51 e3                                      cmp r1, #1
00752c2c  01 00 a0 01                                      moveq r0, r1
00752c30  1e ff 2f 01                                      bxeq lr
00752c34  01 00 71 e2                                      rsbs r0, r1, #1
00752c38  00 00 a0 33                                      movlo r0, #0
00752c3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752c40, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character24get_topmost_mouse_entityEff
; demangled: gameswf::character::get_topmost_mouse_entity(float, float)
; decoder-mode: arm
00752c40  00 00 a0 e3                                      mov r0, #0
00752c44  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752c48, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character8hit_testEff
; demangled: gameswf::character::hit_test(float, float)
; decoder-mode: arm
00752c48  00 00 a0 e3                                      mov r0, #0
00752c4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752c50, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character17get_track_as_menuEv
; demangled: gameswf::character::get_track_as_menu() const
; decoder-mode: arm
00752c50  00 00 a0 e3                                      mov r0, #0
00752c54  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752c58, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character15get_pixel_scaleEv
; demangled: gameswf::character::get_pixel_scale() const
; decoder-mode: arm
00752c58  fe 05 a0 e3                                      mov r0, #0x3f800000
00752c5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752c60, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character13get_characterEi
; demangled: gameswf::character::get_character(int)
; decoder-mode: arm
00752c60  00 00 a0 e3                                      mov r0, #0
00752c64  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752c68, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character16call_method_argsEPKcS2_St9__va_list
; demangled: gameswf::character::call_method_args(char const*, char const*, std::__va_list)
; decoder-mode: arm
00752c68  00 00 a0 e3                                      mov r0, #0
00752c6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752c70, declared_size=56, range_size=56, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character11call_methodEPKcPNS_8as_valueEi
; demangled: gameswf::character::call_method(char const*, gameswf::as_value*, int)
; decoder-mode: arm
00752c70  10 20 90 e5                                      ldr r2, [r0, #0x10]
00752c74  00 c0 e0 e3                                      mvn ip, #0
00752c78  00 10 a0 e3                                      mov r1, #0
00752c7c  1c 20 d7 e7                                      bfi r2, ip, #0, #0x18
00752c80  22 cc a0 e1                                      lsr ip, r2, #0x18
00752c84  04 40 2d e5                                      str r4, [sp, #-4]!
00752c88  11 c0 c0 e7                                      bfi ip, r1, #0, #1
00752c8c  01 40 a0 e3                                      mov r4, #1
00752c90  10 20 80 e5                                      str r2, [r0, #0x10]
00752c94  00 40 c0 e5                                      strb r4, [r0]
00752c98  13 c0 c0 e5                                      strb ip, [r0, #0x13]
00752c9c  01 10 c0 e5                                      strb r1, [r0, #1]
00752ca0  10 00 bd e8                                      ldm sp!, {r4}
00752ca4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752ca8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character14set_play_stateENS0_10play_stateE
; demangled: gameswf::character::set_play_state(gameswf::character::play_state)
; decoder-mode: arm
00752ca8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cac, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character14get_play_stateEv
; demangled: gameswf::character::get_play_state() const
; decoder-mode: arm
00752cac  01 00 a0 e3                                      mov r0, #1
00752cb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cb4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character18goto_labeled_frameERKNS_10tu_stringiE
; demangled: gameswf::character::goto_labeled_frame(gameswf::tu_stringi const&)
; decoder-mode: arm
00752cb4  00 00 a0 e3                                      mov r0, #0
00752cb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cbc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character32find_previous_replace_or_add_tagEiii
; demangled: gameswf::character::find_previous_replace_or_add_tag(int, int, int)
; decoder-mode: arm
00752cbc  00 00 a0 e3                                      mov r0, #0
00752cc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cc4, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character21clear_display_objectsEv
; demangled: gameswf::character::clear_display_objects()
; decoder-mode: arm
00752cc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cc8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character21remove_display_objectEPS0_
; demangled: gameswf::character::remove_display_object(gameswf::character*)
; decoder-mode: arm
00752cc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752ccc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character10replace_meEPNS_13character_defE
; demangled: gameswf::character::replace_me(gameswf::character_def*)
; decoder-mode: arm
00752ccc  00 00 a0 e3                                      mov r0, #0
00752cd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cd4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character10replace_meEPNS_16movie_definitionE
; demangled: gameswf::character::replace_me(gameswf::movie_definition*)
; decoder-mode: arm
00752cd4  00 00 a0 e3                                      mov r0, #0
00752cd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cdc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character18add_display_objectEtRKNS_9tu_stringERKNS_5arrayIPNS_9swf_eventEEEibPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
; demangled: gameswf::character::add_display_object(unsigned short, gameswf::tu_string const&, gameswf::array<gameswf::swf_event*> const&, int, bool, gameswf::cxform const*, gameswf::matrix const*, gameswf::effect const*, float, unsigned short)
; decoder-mode: arm
00752cdc  00 00 a0 e3                                      mov r0, #0
00752ce0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752ce4, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character19move_display_objectEiPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
; demangled: gameswf::character::move_display_object(int, gameswf::cxform const*, gameswf::matrix const*, gameswf::effect const*, float, unsigned short)
; decoder-mode: arm
00752ce4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752ce8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character22replace_display_objectEtPKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
; demangled: gameswf::character::replace_display_object(unsigned short, char const*, int, gameswf::cxform const*, gameswf::matrix const*, gameswf::effect const*, float, unsigned short)
; decoder-mode: arm
00752ce8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cec, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character22replace_display_objectEPS0_PKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
; demangled: gameswf::character::replace_display_object(gameswf::character*, char const*, int, gameswf::cxform const*, gameswf::matrix const*, gameswf::effect const*, float, unsigned short)
; decoder-mode: arm
00752cec  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cf0, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character21remove_display_objectEii
; demangled: gameswf::character::remove_display_object(int, int)
; decoder-mode: arm
00752cf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cf4, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character18execute_frame_tagsEib
; demangled: gameswf::character::execute_frame_tags(int, bool)
; decoder-mode: arm
00752cf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cf8, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character17add_action_bufferEPNS_13action_bufferE
; demangled: gameswf::character::add_action_buffer(gameswf::action_buffer*)
; decoder-mode: arm
00752cf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752cfc, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character10do_actionsERKNS_5arrayIPNS_13action_bufferEEE
; demangled: gameswf::character::do_actions(gameswf::array<gameswf::action_buffer*> const&)
; decoder-mode: arm
00752cfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d00, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character20clone_display_objectERKNS_9tu_stringEi
; demangled: gameswf::character::clone_display_object(gameswf::tu_string const&, int)
; decoder-mode: arm
00752d00  00 00 a0 e3                                      mov r0, #0
00752d04  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d08, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character21remove_display_objectERKNS_9tu_stringE
; demangled: gameswf::character::remove_display_object(gameswf::tu_string const&)
; decoder-mode: arm
00752d08  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d0c, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character14set_drag_stateERKNS0_10drag_stateE
; demangled: gameswf::character::set_drag_state(gameswf::character::drag_state const&)
; decoder-mode: arm
00752d0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d10, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character9stop_dragEv
; demangled: gameswf::character::stop_drag()
; decoder-mode: arm
00752d10  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d14, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character18call_frame_actionsERKNS_8as_valueE
; demangled: gameswf::character::call_frame_actions(gameswf::as_value const&)
; decoder-mode: arm
00752d14  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d18, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character20set_background_colorERKNS_4rgbaE
; demangled: gameswf::character::set_background_color(gameswf::rgba const&)
; decoder-mode: arm
00752d18  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d1c, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character20set_background_alphaEf
; demangled: gameswf::character::set_background_alpha(float)
; decoder-mode: arm
00752d1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d20, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character20get_background_alphaEv
; demangled: gameswf::character::get_background_alpha() const
; decoder-mode: arm
00752d20  fe 05 a0 e3                                      mov r0, #0x3f800000
00752d24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d28, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character20set_display_viewportEiiii
; demangled: gameswf::character::set_display_viewport(int, int, int, int)
; decoder-mode: arm
00752d28  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d2c, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character18set_display_boundsEiiii
; demangled: gameswf::character::set_display_bounds(int, int, int, int)
; decoder-mode: arm
00752d2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d30, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character12get_userdataEv
; demangled: gameswf::character::get_userdata()
; decoder-mode: arm
00752d30  00 00 a0 e3                                      mov r0, #0
00752d34  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d38, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character12set_userdataEPv
; demangled: gameswf::character::set_userdata(void*)
; decoder-mode: arm
00752d38  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d3c, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character12set_variableEPKcS2_
; demangled: gameswf::character::set_variable(char const*, char const*)
; decoder-mode: arm
00752d3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d40, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character12set_variableEPKcPKw
; demangled: gameswf::character::set_variable(char const*, wchar_t const*)
; decoder-mode: arm
00752d40  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d44, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character12get_variableEPKc
; demangled: gameswf::character::get_variable(char const*) const
; decoder-mode: arm
00752d44  04 00 9f e5                                      ldr r0, [pc, #4]
00752d48  00 00 8f e0                                      add r0, pc, r0
00752d4c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00752d50  c0 8a 17 00                                      .byte 0xc0, 0x8a, 0x17, 0x00

; FUNCTION 0x00752d54, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character23attach_display_callbackEPKcPFvPvES3_
; demangled: gameswf::character::attach_display_callback(char const*, void (*)(void*), void*)
; decoder-mode: arm
00752d54  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d58, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character7displayEv
; demangled: gameswf::character::display()
; decoder-mode: arm
00752d58  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d5c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character17get_character_defEv
; demangled: gameswf::character::get_character_def()
; decoder-mode: arm
00752d5c  00 00 a0 e3                                      mov r0, #0
00752d60  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d64, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character17get_current_frameEv
; demangled: gameswf::character::get_current_frame() const
; decoder-mode: arm
00752d64  00 00 e0 e3                                      mvn r0, #0
00752d68  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d6c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character15get_frame_countEv
; demangled: gameswf::character::get_frame_count() const
; decoder-mode: arm
00752d6c  00 00 e0 e3                                      mvn r0, #0
00752d70  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d74, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character17get_loading_frameEv
; demangled: gameswf::character::get_loading_frame() const
; decoder-mode: arm
00752d74  00 00 e0 e3                                      mvn r0, #0
00752d78  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d7c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character10has_loopedEv
; demangled: gameswf::character::has_looped() const
; decoder-mode: arm
00752d7c  00 00 a0 e3                                      mov r0, #0
00752d80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d84, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character9constructEv
; demangled: gameswf::character::construct()
; decoder-mode: arm
00752d84  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d88, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character7advanceEf
; demangled: gameswf::character::advance(float)
; decoder-mode: arm
00752d88  00 30 a0 e3                                      mov r3, #0
00752d8c  9d 30 c0 e5                                      strb r3, [r0, #0x9d]
00752d90  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d94, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character10goto_frameEi
; demangled: gameswf::character::goto_frame(int)
; decoder-mode: arm
00752d94  00 00 a0 e3                                      mov r0, #0
00752d98  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752d9c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character21get_accept_anim_movesEv
; demangled: gameswf::character::get_accept_anim_moves() const
; decoder-mode: arm
00752d9c  01 00 a0 e3                                      mov r0, #1
00752da0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752da4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character18has_keypress_eventEv
; demangled: gameswf::character::has_keypress_event()
; decoder-mode: arm
00752da4  00 00 a0 e3                                      mov r0, #0
00752da8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752dac, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character22can_handle_mouse_eventEv
; demangled: gameswf::character::can_handle_mouse_event()
; decoder-mode: arm
00752dac  00 00 a0 e3                                      mov r0, #0
00752db0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752db4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character17get_movie_versionEv
; demangled: gameswf::character::get_movie_version()
; decoder-mode: arm
00752db4  00 00 a0 e3                                      mov r0, #0
00752db8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752dbc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character15get_movie_widthEv
; demangled: gameswf::character::get_movie_width()
; decoder-mode: arm
00752dbc  00 00 a0 e3                                      mov r0, #0
00752dc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752dc4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character16get_movie_heightEv
; demangled: gameswf::character::get_movie_height()
; decoder-mode: arm
00752dc4  00 00 a0 e3                                      mov r0, #0
00752dc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752dcc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character13get_movie_fpsEv
; demangled: gameswf::character::get_movie_fps()
; decoder-mode: arm
00752dcc  00 00 a0 e3                                      mov r0, #0
00752dd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752dd4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character10is_enabledEv
; demangled: gameswf::character::is_enabled() const
; decoder-mode: arm
00752dd4  01 00 a0 e3                                      mov r0, #1
00752dd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752ddc, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character9get_widthEv
; demangled: gameswf::character::get_width()
; decoder-mode: arm
00752ddc  10 40 2d e9                                      push {r4, lr}
00752de0  10 d0 4d e2                                      sub sp, sp, #0x10
00752de4  00 30 90 e5                                      ldr r3, [r0]
00752de8  0d 10 a0 e1                                      mov r1, sp
00752dec  0f e0 a0 e1                                      mov lr, pc
00752df0  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
00752df4  00 10 9d e5                                      ldr r1, [sp]
00752df8  04 00 9d e5                                      ldr r0, [sp, #4]
00752dfc  6a ed ee eb                                      bl #0x30e3ac
00752e00  02 15 a0 e3                                      mov r1, #0x800000
00752e04  00 40 a0 e1                                      mov r4, r0
00752e08  a9 ed ee eb                                      bl #0x30e4b4
00752e0c  00 00 50 e3                                      cmp r0, #0
00752e10  00 40 a0 03                                      moveq r4, #0
00752e14  04 00 a0 e1                                      mov r0, r4
00752e18  10 d0 8d e2                                      add sp, sp, #0x10
00752e1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00752e20, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character10get_heightEv
; demangled: gameswf::character::get_height()
; decoder-mode: arm
00752e20  10 40 2d e9                                      push {r4, lr}
00752e24  10 d0 4d e2                                      sub sp, sp, #0x10
00752e28  00 30 90 e5                                      ldr r3, [r0]
00752e2c  0d 10 a0 e1                                      mov r1, sp
00752e30  0f e0 a0 e1                                      mov lr, pc
00752e34  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
00752e38  08 10 9d e5                                      ldr r1, [sp, #8]
00752e3c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00752e40  59 ed ee eb                                      bl #0x30e3ac
00752e44  02 15 a0 e3                                      mov r1, #0x800000
00752e48  00 40 a0 e1                                      mov r4, r0
00752e4c  98 ed ee eb                                      bl #0x30e4b4
00752e50  00 00 50 e3                                      cmp r0, #0
00752e54  00 40 a0 03                                      moveq r4, #0
00752e58  04 00 a0 e1                                      mov r0, r4
00752e5c  10 d0 8d e2                                      add sp, sp, #0x10
00752e60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00752e94, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character11call_methodEPKcS2_z
; demangled: gameswf::character::call_method(char const*, char const*, ...)
; decoder-mode: arm
00752e94  0c 00 2d e9                                      push {r2, r3}
00752e98  04 e0 2d e5                                      str lr, [sp, #-4]!
00752e9c  0c d0 4d e2                                      sub sp, sp, #0xc
00752ea0  14 30 8d e2                                      add r3, sp, #0x14
00752ea4  04 30 8d e5                                      str r3, [sp, #4]
00752ea8  00 c0 90 e5                                      ldr ip, [r0]
00752eac  10 20 9d e5                                      ldr r2, [sp, #0x10]
00752eb0  0f e0 a0 e1                                      mov lr, pc
00752eb4  8c f0 9c e5                                      ldr pc, [ip, #0x8c]
00752eb8  0c d0 8d e2                                      add sp, sp, #0xc
00752ebc  04 e0 9d e4                                      pop {lr}
00752ec0  08 d0 8d e2                                      add sp, sp, #8
00752ec4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007531e4, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character17detach_scene_nodeEv
; demangled: gameswf::character::detach_scene_node()
; decoder-mode: arm
007531e4  70 40 2d e9                                      push {r4, r5, r6, lr}
007531e8  54 50 90 e5                                      ldr r5, [r0, #0x54]
007531ec  00 40 a0 e1                                      mov r4, r0
007531f0  00 00 55 e3                                      cmp r5, #0
007531f4  14 00 00 0a                                      beq #0x75324c
007531f8  68 00 95 e5                                      ldr r0, [r5, #0x68]
007531fc  00 00 50 e3                                      cmp r0, #0
00753200  11 00 00 0a                                      beq #0x75324c
00753204  3c 22 90 e5                                      ldr r2, [r0, #0x23c]
00753208  00 00 52 e3                                      cmp r2, #0
0075320c  0c 00 00 da                                      ble #0x753244
00753210  38 c2 90 e5                                      ldr ip, [r0, #0x238]
00753214  00 30 9c e5                                      ldr r3, [ip]
00753218  03 00 54 e1                                      cmp r4, r3
0075321c  00 10 a0 03                                      moveq r1, #0
00753220  0a 00 00 0a                                      beq #0x753250
00753224  00 10 a0 e3                                      mov r1, #0
00753228  02 00 00 ea                                      b #0x753238
0075322c  01 31 9c e7                                      ldr r3, [ip, r1, lsl #2]
00753230  03 00 54 e1                                      cmp r4, r3
00753234  05 00 00 0a                                      beq #0x753250
00753238  01 10 81 e2                                      add r1, r1, #1
0075323c  02 00 51 e1                                      cmp r1, r2
00753240  f9 ff ff 1a                                      bne #0x75322c
00753244  00 30 a0 e3                                      mov r3, #0
00753248  68 30 85 e5                                      str r3, [r5, #0x68]
0075324c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00753250  8e 0f 80 e2                                      add r0, r0, #0x238
00753254  cd ff ff eb                                      bl #0x753190
00753258  54 50 94 e5                                      ldr r5, [r4, #0x54]
0075325c  f8 ff ff ea                                      b #0x753244

; FUNCTION 0x00753260, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character9enumerateEPNS_14as_environmentE
; demangled: gameswf::character::enumerate(gameswf::as_environment*)
; decoder-mode: arm
00753260  8e 5e 00 ea                                      b #0x76aca0

; FUNCTION 0x00753264, declared_size=56, range_size=56, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character9get_boundEPNS_4rectE
; demangled: gameswf::character::get_bound(gameswf::rect*)
; decoder-mode: arm
00753264  70 40 2d e9                                      push {r4, r5, r6, lr}
00753268  00 30 90 e5                                      ldr r3, [r0]
0075326c  01 40 a0 e1                                      mov r4, r1
00753270  00 50 a0 e1                                      mov r5, r0
00753274  0f e0 a0 e1                                      mov lr, pc
00753278  30 f1 93 e5                                      ldr pc, [r3, #0x130]
0075327c  04 10 a0 e1                                      mov r1, r4
00753280  00 30 90 e5                                      ldr r3, [r0]
00753284  0f e0 a0 e1                                      mov lr, pc
00753288  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0075328c  4c 00 95 e5                                      ldr r0, [r5, #0x4c]
00753290  04 10 a0 e1                                      mov r1, r4
00753294  70 40 bd e8                                      pop {r4, r5, r6, lr}
00753298  dd 05 01 ea                                      b #0x794a14

; FUNCTION 0x00753470, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9characterD1Ev
; demangled: gameswf::character::~character()
; decoder-mode: arm
00753470  70 40 2d e9                                      push {r4, r5, r6, lr}
00753474  68 30 9f e5                                      ldr r3, [pc, #0x68]
00753478  68 20 9f e5                                      ldr r2, [pc, #0x68]
0075347c  54 50 90 e5                                      ldr r5, [r0, #0x54]
00753480  03 30 8f e0                                      add r3, pc, r3
00753484  02 20 93 e7                                      ldr r2, [r3, r2]
00753488  00 00 55 e3                                      cmp r5, #0
0075348c  00 40 a0 e1                                      mov r4, r0
00753490  08 20 82 e2                                      add r2, r2, #8
00753494  00 20 80 e5                                      str r2, [r0]
00753498  04 00 00 0a                                      beq #0x7534b0
0075349c  05 00 a0 e1                                      mov r0, r5
007534a0  c6 ff ff eb                                      bl #0x7533c0
007534a4  05 00 a0 e1                                      mov r0, r5
007534a8  00 10 a0 e3                                      mov r1, #0
007534ac  a1 fd ff eb                                      bl #0x752b38
007534b0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007534b4  00 00 50 e3                                      cmp r0, #0
007534b8  05 00 00 0a                                      beq #0x7534d4
007534bc  00 10 90 e5                                      ldr r1, [r0]
007534c0  01 10 41 e2                                      sub r1, r1, #1
007534c4  00 00 51 e3                                      cmp r1, #0
007534c8  00 10 80 e5                                      str r1, [r0]
007534cc  00 00 00 1a                                      bne #0x7534d4
007534d0  98 fd ff eb                                      bl #0x752b38
007534d4  04 00 a0 e1                                      mov r0, r4
007534d8  6f 59 00 eb                                      bl #0x769a9c
007534dc  04 00 a0 e1                                      mov r0, r4
007534e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007534e4  10 16 24 00 e4 31 00 00                          .byte 0x10, 0x16, 0x24, 0x00, 0xe4, 0x31, 0x00, 0x00

; FUNCTION 0x007534ec, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9characterD0Ev
; demangled: gameswf::character::~character()
; decoder-mode: arm
007534ec  10 40 2d e9                                      push {r4, lr}
007534f0  00 40 a0 e1                                      mov r4, r0
007534f4  dd ff ff eb                                      bl #0x753470
007534f8  04 00 a0 e1                                      mov r0, r4
007534fc  6b eb ee eb                                      bl #0x30e2b0
00753500  04 00 a0 e1                                      mov r0, r4
00753504  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00753508, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character20set_display_callbackEPFvRNS_12render_stateEPvES3_
; demangled: gameswf::character::set_display_callback(void (*)(gameswf::render_state&, void*), void*)
; decoder-mode: arm
00753508  70 40 2d e9                                      push {r4, r5, r6, lr}
0075350c  54 40 90 e5                                      ldr r4, [r0, #0x54]
00753510  08 d0 4d e2                                      sub sp, sp, #8
00753514  00 50 a0 e1                                      mov r5, r0
00753518  00 00 54 e3                                      cmp r4, #0
0075351c  01 60 a0 e1                                      mov r6, r1
00753520  04 00 00 0a                                      beq #0x753538
00753524  60 60 84 e5                                      str r6, [r4, #0x60]
00753528  54 30 95 e5                                      ldr r3, [r5, #0x54]
0075352c  64 20 83 e5                                      str r2, [r3, #0x64]
00753530  08 d0 8d e2                                      add sp, sp, #8
00753534  70 80 bd e8                                      pop {r4, r5, r6, pc}
00753538  04 10 a0 e1                                      mov r1, r4
0075353c  6c 00 a0 e3                                      mov r0, #0x6c
00753540  04 20 8d e5                                      str r2, [sp, #4]
00753544  97 fd ff eb                                      bl #0x752ba8
00753548  00 40 a0 e1                                      mov r4, r0
0075354c  03 fb f2 eb                                      bl #0x412160
00753550  54 40 85 e5                                      str r4, [r5, #0x54]
00753554  04 20 9d e5                                      ldr r2, [sp, #4]
00753558  f1 ff ff ea                                      b #0x753524

; FUNCTION 0x0075355c, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character10set_cxformERKNS_6cxformE
; demangled: gameswf::character::set_cxform(gameswf::cxform const&)
; decoder-mode: arm
0075355c  70 40 2d e9                                      push {r4, r5, r6, lr}
00753560  54 40 90 e5                                      ldr r4, [r0, #0x54]
00753564  00 50 a0 e1                                      mov r5, r0
00753568  01 60 a0 e1                                      mov r6, r1
0075356c  00 00 54 e3                                      cmp r4, #0
00753570  09 00 00 0a                                      beq #0x75359c
00753574  04 c0 a0 e1                                      mov ip, r4
00753578  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
0075357c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00753580  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00753584  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00753588  54 30 95 e5                                      ldr r3, [r5, #0x54]
0075358c  01 20 a0 e3                                      mov r2, #1
00753590  9a 20 c5 e5                                      strb r2, [r5, #0x9a]
00753594  48 30 85 e5                                      str r3, [r5, #0x48]
00753598  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075359c  04 10 a0 e1                                      mov r1, r4
007535a0  6c 00 a0 e3                                      mov r0, #0x6c
007535a4  7f fd ff eb                                      bl #0x752ba8
007535a8  00 40 a0 e1                                      mov r4, r0
007535ac  eb fa f2 eb                                      bl #0x412160
007535b0  54 40 85 e5                                      str r4, [r5, #0x54]
007535b4  ee ff ff ea                                      b #0x753574

; FUNCTION 0x007535b8, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character8set_nameERKNS_9tu_stringE
; demangled: gameswf::character::set_name(gameswf::tu_string const&)
; decoder-mode: arm
007535b8  70 40 2d e9                                      push {r4, r5, r6, lr}
007535bc  13 30 d1 e5                                      ldrb r3, [r1, #0x13]
007535c0  01 50 a0 e1                                      mov r5, r1
007535c4  00 40 a0 e1                                      mov r4, r0
007535c8  01 00 13 e3                                      tst r3, #1
007535cc  09 00 00 1a                                      bne #0x7535f8
007535d0  54 60 90 e5                                      ldr r6, [r0, #0x54]
007535d4  00 00 56 e3                                      cmp r6, #0
007535d8  08 00 00 0a                                      beq #0x753600
007535dc  4c 00 86 e2                                      add r0, r6, #0x4c
007535e0  05 10 a0 e1                                      mov r1, r5
007535e4  59 fe ff eb                                      bl #0x752f50
007535e8  54 30 94 e5                                      ldr r3, [r4, #0x54]
007535ec  4c 30 83 e2                                      add r3, r3, #0x4c
007535f0  44 30 84 e5                                      str r3, [r4, #0x44]
007535f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007535f8  44 10 84 e5                                      str r1, [r4, #0x44]
007535fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00753600  06 10 a0 e1                                      mov r1, r6
00753604  6c 00 a0 e3                                      mov r0, #0x6c
00753608  66 fd ff eb                                      bl #0x752ba8
0075360c  00 60 a0 e1                                      mov r6, r0
00753610  d2 fa f2 eb                                      bl #0x412160
00753614  54 60 84 e5                                      str r6, [r4, #0x54]
00753618  ef ff ff ea                                      b #0x7535dc

; FUNCTION 0x0075361c, declared_size=1524, range_size=1524, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character10set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::character::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
0075361c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00753620  00 40 a0 e1                                      mov r4, r0
00753624  28 d0 4d e2                                      sub sp, sp, #0x28
00753628  01 00 a0 e1                                      mov r0, r1
0075362c  01 60 a0 e1                                      mov r6, r1
00753630  02 50 a0 e1                                      mov r5, r2
00753634  7d 7a 00 eb                                      bl #0x772030
00753638  12 00 50 e3                                      cmp r0, #0x12
0075363c  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
00753640  23 00 00 ea                                      b #0x7536d4
00753644  27 00 00 ea                                      b #0x7536e8
00753648  45 00 00 ea                                      b #0x753764
0075364c  63 00 00 ea                                      b #0x7537e0
00753650  f5 00 00 ea                                      b #0x753a2c
00753654  1e 00 00 ea                                      b #0x7536d4
00753658  1d 00 00 ea                                      b #0x7536d4
0075365c  0e 01 00 ea                                      b #0x753a9c
00753660  88 00 00 ea                                      b #0x753888
00753664  09 00 00 ea                                      b #0x753690
00753668  8b 00 00 ea                                      b #0x75389c
0075366c  ca 00 00 ea                                      b #0x75399c
00753670  17 00 00 ea                                      b #0x7536d4
00753674  16 00 00 ea                                      b #0x7536d4
00753678  0e 00 00 ea                                      b #0x7536b8
0075367c  14 00 00 ea                                      b #0x7536d4
00753680  13 00 00 ea                                      b #0x7536d4
00753684  08 00 00 ea                                      b #0x7536ac
00753688  07 00 00 ea                                      b #0x7536ac
0075368c  06 00 00 ea                                      b #0x7536ac
00753690  05 00 a0 e1                                      mov r0, r5
00753694  ee 10 01 eb                                      bl #0x797a54
00753698  00 ec ee eb                                      bl #0x30e6a0
0075369c  00 10 a0 e3                                      mov r1, #0
007536a0  14 eb ee eb                                      bl #0x30e2f8
007536a4  00 00 50 e3                                      cmp r0, #0
007536a8  1f 01 00 1a                                      bne #0x753b2c
007536ac  01 00 a0 e3                                      mov r0, #1
007536b0  28 d0 8d e2                                      add sp, sp, #0x28
007536b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007536b8  05 00 a0 e1                                      mov r0, r5
007536bc  f0 34 f3 eb                                      bl #0x420a84
007536c0  00 10 a0 e1                                      mov r1, r0
007536c4  04 00 a0 e1                                      mov r0, r4
007536c8  ba ff ff eb                                      bl #0x7535b8
007536cc  01 00 a0 e3                                      mov r0, #1
007536d0  f6 ff ff ea                                      b #0x7536b0
007536d4  04 00 a0 e1                                      mov r0, r4
007536d8  06 10 a0 e1                                      mov r1, r6
007536dc  05 20 a0 e1                                      mov r2, r5
007536e0  be 62 00 eb                                      bl #0x76c1e0
007536e4  f1 ff ff ea                                      b #0x7536b0
007536e8  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
007536ec  08 60 8d e2                                      add r6, sp, #8
007536f0  06 e0 a0 e1                                      mov lr, r6
007536f4  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007536f8  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
007536fc  03 00 9c e8                                      ldm ip, {r0, r1}
00753700  03 00 8e e8                                      stm lr, {r0, r1}
00753704  05 00 a0 e1                                      mov r0, r5
00753708  d1 10 01 eb                                      bl #0x797a54
0075370c  01 31 a0 e3                                      mov r3, #0x40000000
00753710  00 20 a0 e3                                      mov r2, #0
00753714  0d 37 83 e2                                      add r3, r3, #0x340000
00753718  e5 ec ee eb                                      bl #0x30eab4
0075371c  df eb ee eb                                      bl #0x30e6a0
00753720  02 15 e0 e3                                      mvn r1, #0x800000
00753724  00 50 a0 e1                                      mov r5, r0
00753728  61 eb ee eb                                      bl #0x30e4b4
0075372c  00 00 50 e3                                      cmp r0, #0
00753730  f7 00 00 0a                                      beq #0x753b14
00753734  02 11 e0 e3                                      mvn r1, #0x80000000
00753738  05 00 a0 e1                                      mov r0, r5
0075373c  02 15 41 e2                                      sub r1, r1, #0x800000
00753740  99 ec ee eb                                      bl #0x30e9ac
00753744  00 00 50 e3                                      cmp r0, #0
00753748  f1 00 00 0a                                      beq #0x753b14
0075374c  04 00 a0 e1                                      mov r0, r4
00753750  06 10 a0 e1                                      mov r1, r6
00753754  10 50 8d e5                                      str r5, [sp, #0x10]
00753758  a6 fa f2 eb                                      bl #0x4121f8
0075375c  01 00 a0 e3                                      mov r0, #1
00753760  d2 ff ff ea                                      b #0x7536b0
00753764  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
00753768  08 60 8d e2                                      add r6, sp, #8
0075376c  06 e0 a0 e1                                      mov lr, r6
00753770  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00753774  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
00753778  03 00 9c e8                                      ldm ip, {r0, r1}
0075377c  03 00 8e e8                                      stm lr, {r0, r1}
00753780  05 00 a0 e1                                      mov r0, r5
00753784  b2 10 01 eb                                      bl #0x797a54
00753788  01 31 a0 e3                                      mov r3, #0x40000000
0075378c  00 20 a0 e3                                      mov r2, #0
00753790  0d 37 83 e2                                      add r3, r3, #0x340000
00753794  c6 ec ee eb                                      bl #0x30eab4
00753798  c0 eb ee eb                                      bl #0x30e6a0
0075379c  02 15 e0 e3                                      mvn r1, #0x800000
007537a0  00 50 a0 e1                                      mov r5, r0
007537a4  42 eb ee eb                                      bl #0x30e4b4
007537a8  00 00 50 e3                                      cmp r0, #0
007537ac  dc 00 00 0a                                      beq #0x753b24
007537b0  02 11 e0 e3                                      mvn r1, #0x80000000
007537b4  05 00 a0 e1                                      mov r0, r5
007537b8  02 15 41 e2                                      sub r1, r1, #0x800000
007537bc  7a ec ee eb                                      bl #0x30e9ac
007537c0  00 00 50 e3                                      cmp r0, #0
007537c4  d6 00 00 0a                                      beq #0x753b24
007537c8  04 00 a0 e1                                      mov r0, r4
007537cc  06 10 a0 e1                                      mov r1, r6
007537d0  1c 50 8d e5                                      str r5, [sp, #0x1c]
007537d4  87 fa f2 eb                                      bl #0x4121f8
007537d8  01 00 a0 e3                                      mov r0, #1
007537dc  b3 ff ff ea                                      b #0x7536b0
007537e0  4c e0 94 e5                                      ldr lr, [r4, #0x4c]
007537e4  08 c0 8d e2                                      add ip, sp, #8
007537e8  0c 60 a0 e1                                      mov r6, ip
007537ec  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007537f0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007537f4  03 00 9e e8                                      ldm lr, {r0, r1}
007537f8  03 00 8c e8                                      stm ip, {r0, r1}
007537fc  05 00 a0 e1                                      mov r0, r5
00753800  93 10 01 eb                                      bl #0x797a54
00753804  00 80 a0 e1                                      mov r8, r0
00753808  18 00 9d e5                                      ldr r0, [sp, #0x18]
0075380c  01 90 a0 e1                                      mov sb, r1
00753810  00 10 a0 e1                                      mov r1, r0
00753814  54 ed ee eb                                      bl #0x30ed6c
00753818  00 50 a0 e1                                      mov r5, r0
0075381c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00753820  00 10 a0 e1                                      mov r1, r0
00753824  50 ed ee eb                                      bl #0x30ed6c
00753828  00 10 a0 e1                                      mov r1, r0
0075382c  05 00 a0 e1                                      mov r0, r5
00753830  db ec ee eb                                      bl #0x30eba4
00753834  3a ea ee eb                                      bl #0x30e124
00753838  00 70 a0 e1                                      mov r7, r0
0075383c  06 00 a0 e1                                      mov r0, r6
00753840  1c 0c 01 eb                                      bl #0x7968b8
00753844  09 10 a0 e1                                      mov r1, sb
00753848  00 50 a0 e1                                      mov r5, r0
0075384c  08 00 a0 e1                                      mov r0, r8
00753850  92 eb ee eb                                      bl #0x30e6a0
00753854  42 14 a0 e3                                      mov r1, #0x42000000
00753858  32 17 81 e2                                      add r1, r1, #0xc80000
0075385c  0c ed ee eb                                      bl #0x30ec94
00753860  07 20 a0 e1                                      mov r2, r7
00753864  00 10 a0 e1                                      mov r1, r0
00753868  05 30 a0 e1                                      mov r3, r5
0075386c  06 00 a0 e1                                      mov r0, r6
00753870  2a 0c 01 eb                                      bl #0x796920
00753874  04 00 a0 e1                                      mov r0, r4
00753878  06 10 a0 e1                                      mov r1, r6
0075387c  5d fa f2 eb                                      bl #0x4121f8
00753880  01 00 a0 e3                                      mov r0, #1
00753884  89 ff ff ea                                      b #0x7536b0
00753888  05 00 a0 e1                                      mov r0, r5
0075388c  33 10 01 eb                                      bl #0x797960
00753890  9b 00 c4 e5                                      strb r0, [r4, #0x9b]
00753894  01 00 a0 e3                                      mov r0, #1
00753898  84 ff ff ea                                      b #0x7536b0
0075389c  05 00 a0 e1                                      mov r0, r5
007538a0  6b 10 01 eb                                      bl #0x797a54
007538a4  7d eb ee eb                                      bl #0x30e6a0
007538a8  00 10 a0 e3                                      mov r1, #0
007538ac  91 ea ee eb                                      bl #0x30e2f8
007538b0  00 00 50 e3                                      cmp r0, #0
007538b4  7c ff ff 0a                                      beq #0x7536ac
007538b8  4c e0 94 e5                                      ldr lr, [r4, #0x4c]
007538bc  08 c0 8d e2                                      add ip, sp, #8
007538c0  0c 60 a0 e1                                      mov r6, ip
007538c4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007538c8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007538cc  03 00 9e e8                                      ldm lr, {r0, r1}
007538d0  03 00 8c e8                                      stm ip, {r0, r1}
007538d4  06 00 a0 e1                                      mov r0, r6
007538d8  6f fe ff eb                                      bl #0x75329c
007538dc  00 80 a0 e1                                      mov r8, r0
007538e0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007538e4  00 10 a0 e1                                      mov r1, r0
007538e8  1f ed ee eb                                      bl #0x30ed6c
007538ec  00 70 a0 e1                                      mov r7, r0
007538f0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007538f4  00 10 a0 e1                                      mov r1, r0
007538f8  1b ed ee eb                                      bl #0x30ed6c
007538fc  00 10 a0 e1                                      mov r1, r0
00753900  07 00 a0 e1                                      mov r0, r7
00753904  a6 ec ee eb                                      bl #0x30eba4
00753908  05 ea ee eb                                      bl #0x30e124
0075390c  00 a0 a0 e1                                      mov sl, r0
00753910  06 00 a0 e1                                      mov r0, r6
00753914  e7 0b 01 eb                                      bl #0x7968b8
00753918  00 30 94 e5                                      ldr r3, [r4]
0075391c  00 70 a0 e1                                      mov r7, r0
00753920  04 00 a0 e1                                      mov r0, r4
00753924  0f e0 a0 e1                                      mov lr, pc
00753928  24 f1 93 e5                                      ldr pc, [r3, #0x124]
0075392c  00 90 a0 e1                                      mov sb, r0
00753930  05 00 a0 e1                                      mov r0, r5
00753934  46 10 01 eb                                      bl #0x797a54
00753938  01 30 a0 e1                                      mov r3, r1
0075393c  41 14 a0 e3                                      mov r1, #0x41000000
00753940  00 20 a0 e1                                      mov r2, r0
00753944  0a 16 81 e2                                      add r1, r1, #0xa00000
00753948  09 00 a0 e1                                      mov r0, sb
0075394c  04 20 8d e5                                      str r2, [sp, #4]
00753950  00 30 8d e5                                      str r3, [sp]
00753954  ce ec ee eb                                      bl #0x30ec94
00753958  04 20 9d e5                                      ldr r2, [sp, #4]
0075395c  00 30 9d e5                                      ldr r3, [sp]
00753960  00 50 a0 e1                                      mov r5, r0
00753964  02 00 a0 e1                                      mov r0, r2
00753968  03 10 a0 e1                                      mov r1, r3
0075396c  4b eb ee eb                                      bl #0x30e6a0
00753970  00 10 a0 e1                                      mov r1, r0
00753974  05 00 a0 e1                                      mov r0, r5
00753978  c5 ec ee eb                                      bl #0x30ec94
0075397c  00 10 a0 e1                                      mov r1, r0
00753980  0a 00 a0 e1                                      mov r0, sl
00753984  c2 ec ee eb                                      bl #0x30ec94
00753988  08 10 a0 e1                                      mov r1, r8
0075398c  00 20 a0 e1                                      mov r2, r0
00753990  07 30 a0 e1                                      mov r3, r7
00753994  06 00 a0 e1                                      mov r0, r6
00753998  b4 ff ff ea                                      b #0x753870
0075399c  4c e0 94 e5                                      ldr lr, [r4, #0x4c]
007539a0  08 c0 8d e2                                      add ip, sp, #8
007539a4  0c 60 a0 e1                                      mov r6, ip
007539a8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007539ac  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007539b0  03 00 9e e8                                      ldm lr, {r0, r1}
007539b4  03 00 8c e8                                      stm ip, {r0, r1}
007539b8  06 00 a0 e1                                      mov r0, r6
007539bc  36 fe ff eb                                      bl #0x75329c
007539c0  00 80 a0 e1                                      mov r8, r0
007539c4  18 00 9d e5                                      ldr r0, [sp, #0x18]
007539c8  00 10 a0 e1                                      mov r1, r0
007539cc  e6 ec ee eb                                      bl #0x30ed6c
007539d0  00 70 a0 e1                                      mov r7, r0
007539d4  14 00 9d e5                                      ldr r0, [sp, #0x14]
007539d8  00 10 a0 e1                                      mov r1, r0
007539dc  e2 ec ee eb                                      bl #0x30ed6c
007539e0  00 10 a0 e1                                      mov r1, r0
007539e4  07 00 a0 e1                                      mov r0, r7
007539e8  6d ec ee eb                                      bl #0x30eba4
007539ec  cc e9 ee eb                                      bl #0x30e124
007539f0  00 70 a0 e1                                      mov r7, r0
007539f4  05 00 a0 e1                                      mov r0, r5
007539f8  15 10 01 eb                                      bl #0x797a54
007539fc  27 eb ee eb                                      bl #0x30e6a0
00753a00  db 1f 00 e3                                      movw r1, #0xfdb
00753a04  49 10 44 e3                                      movt r1, #0x4049
00753a08  d7 ec ee eb                                      bl #0x30ed6c
00753a0c  43 14 a0 e3                                      mov r1, #0x43000000
00753a10  0d 17 81 e2                                      add r1, r1, #0x340000
00753a14  9e ec ee eb                                      bl #0x30ec94
00753a18  08 10 a0 e1                                      mov r1, r8
00753a1c  00 30 a0 e1                                      mov r3, r0
00753a20  07 20 a0 e1                                      mov r2, r7
00753a24  06 00 a0 e1                                      mov r0, r6
00753a28  90 ff ff ea                                      b #0x753870
00753a2c  4c e0 94 e5                                      ldr lr, [r4, #0x4c]
00753a30  08 c0 8d e2                                      add ip, sp, #8
00753a34  0c 60 a0 e1                                      mov r6, ip
00753a38  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00753a3c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00753a40  03 00 9e e8                                      ldm lr, {r0, r1}
00753a44  03 00 8c e8                                      stm ip, {r0, r1}
00753a48  06 00 a0 e1                                      mov r0, r6
00753a4c  12 fe ff eb                                      bl #0x75329c
00753a50  00 70 a0 e1                                      mov r7, r0
00753a54  05 00 a0 e1                                      mov r0, r5
00753a58  fd 0f 01 eb                                      bl #0x797a54
00753a5c  00 80 a0 e1                                      mov r8, r0
00753a60  06 00 a0 e1                                      mov r0, r6
00753a64  01 90 a0 e1                                      mov sb, r1
00753a68  92 0b 01 eb                                      bl #0x7968b8
00753a6c  09 10 a0 e1                                      mov r1, sb
00753a70  00 50 a0 e1                                      mov r5, r0
00753a74  08 00 a0 e1                                      mov r0, r8
00753a78  08 eb ee eb                                      bl #0x30e6a0
00753a7c  42 14 a0 e3                                      mov r1, #0x42000000
00753a80  32 17 81 e2                                      add r1, r1, #0xc80000
00753a84  82 ec ee eb                                      bl #0x30ec94
00753a88  07 10 a0 e1                                      mov r1, r7
00753a8c  00 20 a0 e1                                      mov r2, r0
00753a90  05 30 a0 e1                                      mov r3, r5
00753a94  06 00 a0 e1                                      mov r0, r6
00753a98  74 ff ff ea                                      b #0x753870
00753a9c  48 e0 94 e5                                      ldr lr, [r4, #0x48]
00753aa0  08 60 8d e2                                      add r6, sp, #8
00753aa4  06 c0 a0 e1                                      mov ip, r6
00753aa8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00753aac  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00753ab0  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00753ab4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00753ab8  05 00 a0 e1                                      mov r0, r5
00753abc  e4 0f 01 eb                                      bl #0x797a54
00753ac0  f6 ea ee eb                                      bl #0x30e6a0
00753ac4  42 14 a0 e3                                      mov r1, #0x42000000
00753ac8  32 17 81 e2                                      add r1, r1, #0xc80000
00753acc  70 ec ee eb                                      bl #0x30ec94
00753ad0  02 15 e0 e3                                      mvn r1, #0x800000
00753ad4  00 50 a0 e1                                      mov r5, r0
00753ad8  75 ea ee eb                                      bl #0x30e4b4
00753adc  00 00 50 e3                                      cmp r0, #0
00753ae0  0d 00 00 0a                                      beq #0x753b1c
00753ae4  02 11 e0 e3                                      mvn r1, #0x80000000
00753ae8  05 00 a0 e1                                      mov r0, r5
00753aec  02 15 41 e2                                      sub r1, r1, #0x800000
00753af0  ad eb ee eb                                      bl #0x30e9ac
00753af4  00 00 50 e3                                      cmp r0, #0
00753af8  07 00 00 0a                                      beq #0x753b1c
00753afc  04 00 a0 e1                                      mov r0, r4
00753b00  06 10 a0 e1                                      mov r1, r6
00753b04  20 50 8d e5                                      str r5, [sp, #0x20]
00753b08  93 fe ff eb                                      bl #0x75355c
00753b0c  01 00 a0 e3                                      mov r0, #1
00753b10  e6 fe ff ea                                      b #0x7536b0
00753b14  00 50 a0 e3                                      mov r5, #0
00753b18  0b ff ff ea                                      b #0x75374c
00753b1c  00 50 a0 e3                                      mov r5, #0
00753b20  f5 ff ff ea                                      b #0x753afc
00753b24  00 50 a0 e3                                      mov r5, #0
00753b28  26 ff ff ea                                      b #0x7537c8
00753b2c  4c e0 94 e5                                      ldr lr, [r4, #0x4c]
00753b30  08 c0 8d e2                                      add ip, sp, #8
00753b34  0c 60 a0 e1                                      mov r6, ip
00753b38  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00753b3c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00753b40  03 00 9e e8                                      ldm lr, {r0, r1}
00753b44  03 00 8c e8                                      stm ip, {r0, r1}
00753b48  06 00 a0 e1                                      mov r0, r6
00753b4c  d2 fd ff eb                                      bl #0x75329c
00753b50  00 a0 a0 e1                                      mov sl, r0
00753b54  18 00 9d e5                                      ldr r0, [sp, #0x18]
00753b58  00 10 a0 e1                                      mov r1, r0
00753b5c  82 ec ee eb                                      bl #0x30ed6c
00753b60  00 70 a0 e1                                      mov r7, r0
00753b64  14 00 9d e5                                      ldr r0, [sp, #0x14]
00753b68  00 10 a0 e1                                      mov r1, r0
00753b6c  7e ec ee eb                                      bl #0x30ed6c
00753b70  00 10 a0 e1                                      mov r1, r0
00753b74  07 00 a0 e1                                      mov r0, r7
00753b78  09 ec ee eb                                      bl #0x30eba4
00753b7c  68 e9 ee eb                                      bl #0x30e124
00753b80  00 80 a0 e1                                      mov r8, r0
00753b84  06 00 a0 e1                                      mov r0, r6
00753b88  4a 0b 01 eb                                      bl #0x7968b8
00753b8c  00 30 94 e5                                      ldr r3, [r4]
00753b90  00 70 a0 e1                                      mov r7, r0
00753b94  04 00 a0 e1                                      mov r0, r4
00753b98  0f e0 a0 e1                                      mov lr, pc
00753b9c  28 f1 93 e5                                      ldr pc, [r3, #0x128]
00753ba0  00 90 a0 e1                                      mov sb, r0
00753ba4  05 00 a0 e1                                      mov r0, r5
00753ba8  a9 0f 01 eb                                      bl #0x797a54
00753bac  01 30 a0 e1                                      mov r3, r1
00753bb0  41 14 a0 e3                                      mov r1, #0x41000000
00753bb4  00 20 a0 e1                                      mov r2, r0
00753bb8  0a 16 81 e2                                      add r1, r1, #0xa00000
00753bbc  09 00 a0 e1                                      mov r0, sb
00753bc0  04 20 8d e5                                      str r2, [sp, #4]
00753bc4  00 30 8d e5                                      str r3, [sp]
00753bc8  31 ec ee eb                                      bl #0x30ec94
00753bcc  04 20 9d e5                                      ldr r2, [sp, #4]
00753bd0  00 30 9d e5                                      ldr r3, [sp]
00753bd4  00 50 a0 e1                                      mov r5, r0
00753bd8  02 00 a0 e1                                      mov r0, r2
00753bdc  03 10 a0 e1                                      mov r1, r3
00753be0  ae ea ee eb                                      bl #0x30e6a0
00753be4  00 10 a0 e1                                      mov r1, r0
00753be8  05 00 a0 e1                                      mov r0, r5
00753bec  28 ec ee eb                                      bl #0x30ec94
00753bf0  00 10 a0 e1                                      mov r1, r0
00753bf4  0a 00 a0 e1                                      mov r0, sl
00753bf8  25 ec ee eb                                      bl #0x30ec94
00753bfc  08 20 a0 e1                                      mov r2, r8
00753c00  00 10 a0 e1                                      mov r1, r0
00753c04  07 30 a0 e1                                      mov r3, r7
00753c08  06 00 a0 e1                                      mov r0, r6
00753c0c  17 ff ff ea                                      b #0x753870

; FUNCTION 0x00753c10, declared_size=364, range_size=364, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character17attach_scene_nodeEPN6glitch5scene10ISceneNodeENS1_4core11dimension2dIiEEb
; demangled: gameswf::character::attach_scene_node(glitch::scene::ISceneNode*, glitch::core::dimension2d<int>, bool)
; decoder-mode: arm
00753c10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00753c14  00 50 a0 e1                                      mov r5, r0
00753c18  54 00 90 e5                                      ldr r0, [r0, #0x54]
00753c1c  50 41 9f e5                                      ldr r4, [pc, #0x150]
00753c20  10 d0 4d e2                                      sub sp, sp, #0x10
00753c24  00 00 50 e3                                      cmp r0, #0
00753c28  04 40 8f e0                                      add r4, pc, r4
00753c2c  08 20 8d e5                                      str r2, [sp, #8]
00753c30  0c 30 8d e5                                      str r3, [sp, #0xc]
00753c34  01 60 a0 e1                                      mov r6, r1
00753c38  28 70 dd e5                                      ldrb r7, [sp, #0x28]
00753c3c  36 00 00 0a                                      beq #0x753d1c
00753c40  30 31 9f e5                                      ldr r3, [pc, #0x130]
00753c44  06 00 a0 e1                                      mov r0, r6
00753c48  03 30 94 e7                                      ldr r3, [r4, r3]
00753c4c  00 10 93 e5                                      ldr r1, [r3]
00753c50  27 12 f9 eb                                      bl #0x5984f4
00753c54  00 00 50 e3                                      cmp r0, #0
00753c58  18 00 00 0a                                      beq #0x753cc0
00753c5c  00 00 57 e3                                      cmp r7, #0
00753c60  00 40 a0 01                                      moveq r4, r0
00753c64  05 00 00 0a                                      beq #0x753c80
00753c68  3c 32 90 e5                                      ldr r3, [r0, #0x23c]
00753c6c  00 40 a0 e1                                      mov r4, r0
00753c70  00 00 53 e3                                      cmp r3, #0
00753c74  2f 00 00 da                                      ble #0x753d38
00753c78  00 30 a0 e3                                      mov r3, #0
00753c7c  3c 32 80 e5                                      str r3, [r0, #0x23c]
00753c80  54 30 95 e5                                      ldr r3, [r5, #0x54]
00753c84  68 40 83 e5                                      str r4, [r3, #0x68]
00753c88  3c 32 94 e5                                      ldr r3, [r4, #0x23c]
00753c8c  40 22 94 e5                                      ldr r2, [r4, #0x240]
00753c90  01 60 83 e2                                      add r6, r3, #1
00753c94  02 00 56 e1                                      cmp r6, r2
00753c98  03 00 00 da                                      ble #0x753cac
00753c9c  8e 0f 84 e2                                      add r0, r4, #0x238
00753ca0  c6 10 86 e0                                      add r1, r6, r6, asr #1
00753ca4  5a 00 f3 eb                                      bl #0x413e14
00753ca8  3c 32 94 e5                                      ldr r3, [r4, #0x23c]
00753cac  38 22 94 e5                                      ldr r2, [r4, #0x238]
00753cb0  03 51 82 e7                                      str r5, [r2, r3, lsl #2]
00753cb4  3c 62 84 e5                                      str r6, [r4, #0x23c]
00753cb8  10 d0 8d e2                                      add sp, sp, #0x10
00753cbc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00753cc0  30 70 95 e5                                      ldr r7, [r5, #0x30]
00753cc4  00 00 57 e3                                      cmp r7, #0
00753cc8  03 00 00 0a                                      beq #0x753cdc
00753ccc  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
00753cd0  04 40 d3 e5                                      ldrb r4, [r3, #4]
00753cd4  00 00 54 e3                                      cmp r4, #0
00753cd8  1f 00 00 0a                                      beq #0x753d5c
00753cdc  00 10 a0 e3                                      mov r1, #0
00753ce0  27 0e a0 e3                                      mov r0, #0x270
00753ce4  30 81 f7 eb                                      bl #0x5341ac
00753ce8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00753cec  00 40 a0 e1                                      mov r4, r0
00753cf0  07 10 a0 e1                                      mov r1, r7
00753cf4  08 30 9d e5                                      ldr r3, [sp, #8]
00753cf8  06 20 a0 e1                                      mov r2, r6
00753cfc  00 c0 8d e5                                      str ip, [sp]
00753d00  ce 92 00 eb                                      bl #0x778840
00753d04  06 00 a0 e1                                      mov r0, r6
00753d08  00 30 96 e5                                      ldr r3, [r6]
00753d0c  04 10 a0 e1                                      mov r1, r4
00753d10  0f e0 a0 e1                                      mov lr, pc
00753d14  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00753d18  d8 ff ff ea                                      b #0x753c80
00753d1c  00 10 a0 e1                                      mov r1, r0
00753d20  6c 00 a0 e3                                      mov r0, #0x6c
00753d24  9f fb ff eb                                      bl #0x752ba8
00753d28  00 80 a0 e1                                      mov r8, r0
00753d2c  0b f9 f2 eb                                      bl #0x412160
00753d30  54 80 85 e5                                      str r8, [r5, #0x54]
00753d34  c1 ff ff ea                                      b #0x753c40
00753d38  ce ff ff aa                                      bge #0x753c78
00753d3c  03 21 a0 e1                                      lsl r2, r3, #2
00753d40  00 c0 a0 e3                                      mov ip, #0
00753d44  38 12 90 e5                                      ldr r1, [r0, #0x238]
00753d48  01 30 93 e2                                      adds r3, r3, #1
00753d4c  02 c0 81 e7                                      str ip, [r1, r2]
00753d50  04 20 82 e2                                      add r2, r2, #4
00753d54  fa ff ff 1a                                      bne #0x753d44
00753d58  c6 ff ff ea                                      b #0x753c78
00753d5c  2c 00 85 e2                                      add r0, r5, #0x2c
00753d60  04 10 a0 e1                                      mov r1, r4
00753d64  46 30 f3 eb                                      bl #0x41fe84
00753d68  04 70 a0 e1                                      mov r7, r4
00753d6c  30 40 85 e5                                      str r4, [r5, #0x30]
00753d70  d9 ff ff ea                                      b #0x753cdc
; mapping-symbol data/literal pool
00753d74  68 0e 24 00 04 0d 00 00                          .byte 0x68, 0x0e, 0x24, 0x00, 0x04, 0x0d, 0x00, 0x00

; FUNCTION 0x00753e34, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character28get_world_cxform_root_changeEv
; demangled: gameswf::character::get_world_cxform_root_change()
; decoder-mode: arm
00753e34  70 40 2d e9                                      push {r4, r5, r6, lr}
00753e38  00 40 50 e2                                      subs r4, r0, #0
00753e3c  04 50 a0 01                                      moveq r5, r4
00753e40  11 00 00 0a                                      beq #0x753e8c
00753e44  9a 20 d4 e5                                      ldrb r2, [r4, #0x9a]
00753e48  40 30 94 e5                                      ldr r3, [r4, #0x40]
00753e4c  00 50 a0 e3                                      mov r5, #0
00753e50  00 00 52 e3                                      cmp r2, #0
00753e54  04 50 a0 11                                      movne r5, r4
00753e58  00 00 53 e3                                      cmp r3, #0
00753e5c  0a 00 00 0a                                      beq #0x753e8c
00753e60  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00753e64  04 20 d0 e5                                      ldrb r2, [r0, #4]
00753e68  00 00 52 e3                                      cmp r2, #0
00753e6c  08 00 00 0a                                      beq #0x753e94
00753e70  03 40 a0 e1                                      mov r4, r3
00753e74  9a 20 d4 e5                                      ldrb r2, [r4, #0x9a]
00753e78  40 30 94 e5                                      ldr r3, [r4, #0x40]
00753e7c  00 00 52 e3                                      cmp r2, #0
00753e80  04 50 a0 11                                      movne r5, r4
00753e84  00 00 53 e3                                      cmp r3, #0
00753e88  f4 ff ff 1a                                      bne #0x753e60
00753e8c  05 00 a0 e1                                      mov r0, r5
00753e90  70 80 bd e8                                      pop {r4, r5, r6, pc}
00753e94  00 10 90 e5                                      ldr r1, [r0]
00753e98  01 10 41 e2                                      sub r1, r1, #1
00753e9c  00 00 51 e3                                      cmp r1, #0
00753ea0  00 10 80 e5                                      str r1, [r0]
00753ea4  00 00 00 1a                                      bne #0x753eac
00753ea8  22 fb ff eb                                      bl #0x752b38
00753eac  00 30 a0 e3                                      mov r3, #0
00753eb0  40 30 84 e5                                      str r3, [r4, #0x40]
00753eb4  3c 30 84 e5                                      str r3, [r4, #0x3c]
00753eb8  05 00 a0 e1                                      mov r0, r5
00753ebc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00753ec0, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character16get_world_cxformEv
; demangled: gameswf::character::get_world_cxform()
; decoder-mode: arm
00753ec0  10 40 2d e9                                      push {r4, lr}
00753ec4  00 40 a0 e1                                      mov r4, r0
00753ec8  d9 ff ff eb                                      bl #0x753e34
00753ecc  00 30 50 e2                                      subs r3, r0, #0
00753ed0  02 00 00 0a                                      beq #0x753ee0
00753ed4  00 30 93 e5                                      ldr r3, [r3]
00753ed8  0f e0 a0 e1                                      mov lr, pc
00753edc  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
00753ee0  58 00 84 e2                                      add r0, r4, #0x58
00753ee4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00753ee8, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character28get_world_matrix_root_changeEv
; demangled: gameswf::character::get_world_matrix_root_change()
; decoder-mode: arm
00753ee8  70 40 2d e9                                      push {r4, r5, r6, lr}
00753eec  00 40 50 e2                                      subs r4, r0, #0
00753ef0  04 50 a0 01                                      moveq r5, r4
00753ef4  11 00 00 0a                                      beq #0x753f40
00753ef8  99 20 d4 e5                                      ldrb r2, [r4, #0x99]
00753efc  40 30 94 e5                                      ldr r3, [r4, #0x40]
00753f00  00 50 a0 e3                                      mov r5, #0
00753f04  00 00 52 e3                                      cmp r2, #0
00753f08  04 50 a0 11                                      movne r5, r4
00753f0c  00 00 53 e3                                      cmp r3, #0
00753f10  0a 00 00 0a                                      beq #0x753f40
00753f14  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00753f18  04 20 d0 e5                                      ldrb r2, [r0, #4]
00753f1c  00 00 52 e3                                      cmp r2, #0
00753f20  08 00 00 0a                                      beq #0x753f48
00753f24  03 40 a0 e1                                      mov r4, r3
00753f28  99 20 d4 e5                                      ldrb r2, [r4, #0x99]
00753f2c  40 30 94 e5                                      ldr r3, [r4, #0x40]
00753f30  00 00 52 e3                                      cmp r2, #0
00753f34  04 50 a0 11                                      movne r5, r4
00753f38  00 00 53 e3                                      cmp r3, #0
00753f3c  f4 ff ff 1a                                      bne #0x753f14
00753f40  05 00 a0 e1                                      mov r0, r5
00753f44  70 80 bd e8                                      pop {r4, r5, r6, pc}
00753f48  00 10 90 e5                                      ldr r1, [r0]
00753f4c  01 10 41 e2                                      sub r1, r1, #1
00753f50  00 00 51 e3                                      cmp r1, #0
00753f54  00 10 80 e5                                      str r1, [r0]
00753f58  00 00 00 1a                                      bne #0x753f60
00753f5c  f5 fa ff eb                                      bl #0x752b38
00753f60  00 30 a0 e3                                      mov r3, #0
00753f64  40 30 84 e5                                      str r3, [r4, #0x40]
00753f68  3c 30 84 e5                                      str r3, [r4, #0x3c]
00753f6c  05 00 a0 e1                                      mov r0, r5
00753f70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00753f74, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character16get_world_matrixEv
; demangled: gameswf::character::get_world_matrix()
; decoder-mode: arm
00753f74  10 40 2d e9                                      push {r4, lr}
00753f78  00 40 a0 e1                                      mov r4, r0
00753f7c  d9 ff ff eb                                      bl #0x753ee8
00753f80  00 30 50 e2                                      subs r3, r0, #0
00753f84  02 00 00 0a                                      beq #0x753f94
00753f88  00 30 93 e5                                      ldr r3, [r3]
00753f8c  0f e0 a0 e1                                      mov lr, pc
00753f90  18 f1 93 e5                                      ldr pc, [r3, #0x118]
00753f94  78 00 84 e2                                      add r0, r4, #0x78
00753f98  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00753f9c, declared_size=256, range_size=256, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character19do_display_callbackEv
; demangled: gameswf::character::do_display_callback()
; decoder-mode: arm
00753f9c  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
00753fa0  f0 20 9f e5                                      ldr r2, [pc, #0xf0]
00753fa4  70 40 2d e9                                      push {r4, r5, r6, lr}
00753fa8  03 30 8f e0                                      add r3, pc, r3
00753fac  02 50 93 e7                                      ldr r5, [r3, r2]
00753fb0  40 d0 4d e2                                      sub sp, sp, #0x40
00753fb4  00 40 a0 e1                                      mov r4, r0
00753fb8  00 30 95 e5                                      ldr r3, [r5]
00753fbc  04 60 8d e2                                      add r6, sp, #4
00753fc0  03 00 a0 e1                                      mov r0, r3
00753fc4  00 30 93 e5                                      ldr r3, [r3]
00753fc8  0f e0 a0 e1                                      mov lr, pc
00753fcc  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
00753fd0  04 e0 86 e2                                      add lr, r6, #4
00753fd4  08 30 8e e2                                      add r3, lr, #8
00753fd8  00 10 a0 e3                                      mov r1, #0
00753fdc  04 10 83 e4                                      str r1, [r3], #4
00753fe0  04 10 83 e4                                      str r1, [r3], #4
00753fe4  04 10 83 e4                                      str r1, [r3], #4
00753fe8  fe 25 a0 e3                                      mov r2, #0x3f800000
00753fec  00 c0 a0 e3                                      mov ip, #0
00753ff0  00 10 83 e5                                      str r1, [r3]
00753ff4  04 00 a0 e1                                      mov r0, r4
00753ff8  38 20 8d e5                                      str r2, [sp, #0x38]
00753ffc  3c c0 8d e5                                      str ip, [sp, #0x3c]
00754000  04 10 8e e5                                      str r1, [lr, #4]
00754004  04 40 8d e5                                      str r4, [sp, #4]
00754008  08 20 8d e5                                      str r2, [sp, #8]
0075400c  18 20 8d e5                                      str r2, [sp, #0x18]
00754010  20 20 8d e5                                      str r2, [sp, #0x20]
00754014  28 20 8d e5                                      str r2, [sp, #0x28]
00754018  30 20 8d e5                                      str r2, [sp, #0x30]
0075401c  24 c0 8d e5                                      str ip, [sp, #0x24]
00754020  2c c0 8d e5                                      str ip, [sp, #0x2c]
00754024  34 c0 8d e5                                      str ip, [sp, #0x34]
00754028  d1 ff ff eb                                      bl #0x753f74
0075402c  08 c0 8d e2                                      add ip, sp, #8
00754030  00 e0 a0 e1                                      mov lr, r0
00754034  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00754038  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0075403c  03 00 9e e8                                      ldm lr, {r0, r1}
00754040  03 00 8c e8                                      stm ip, {r0, r1}
00754044  04 00 a0 e1                                      mov r0, r4
00754048  9c ff ff eb                                      bl #0x753ec0
0075404c  20 c0 8d e2                                      add ip, sp, #0x20
00754050  00 e0 a0 e1                                      mov lr, r0
00754054  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00754058  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0075405c  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00754060  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00754064  54 30 94 e5                                      ldr r3, [r4, #0x54]
00754068  06 00 a0 e1                                      mov r0, r6
0075406c  64 10 93 e5                                      ldr r1, [r3, #0x64]
00754070  0f e0 a0 e1                                      mov lr, pc
00754074  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00754078  00 30 95 e5                                      ldr r3, [r5]
0075407c  03 00 a0 e1                                      mov r0, r3
00754080  00 30 93 e5                                      ldr r3, [r3]
00754084  0f e0 a0 e1                                      mov lr, pc
00754088  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
0075408c  40 d0 8d e2                                      add sp, sp, #0x40
00754090  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00754094  e8 0a 24 00 b4 39 00 00                          .byte 0xe8, 0x0a, 0x24, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x0075409c, declared_size=1816, range_size=1816, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::character::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
0075409c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007540a0  e8 46 9f e5                                      ldr r4, [pc, #0x6e8]
007540a4  e8 56 9f e5                                      ldr r5, [pc, #0x6e8]
007540a8  7c d0 4d e2                                      sub sp, sp, #0x7c
007540ac  04 40 8f e0                                      add r4, pc, r4
007540b0  05 30 94 e7                                      ldr r3, [r4, r5]
007540b4  00 60 a0 e1                                      mov r6, r0
007540b8  01 80 a0 e1                                      mov r8, r1
007540bc  00 30 93 e5                                      ldr r3, [r3]
007540c0  02 70 a0 e1                                      mov r7, r2
007540c4  74 30 8d e5                                      str r3, [sp, #0x74]
007540c8  21 54 00 eb                                      bl #0x769154
007540cc  00 00 50 e3                                      cmp r0, #0
007540d0  07 00 00 0a                                      beq #0x7540f4
007540d4  01 00 a0 e3                                      mov r0, #1
007540d8  05 30 94 e7                                      ldr r3, [r4, r5]
007540dc  74 20 9d e5                                      ldr r2, [sp, #0x74]
007540e0  00 30 93 e5                                      ldr r3, [r3]
007540e4  03 00 52 e1                                      cmp r2, r3
007540e8  9b 01 00 1a                                      bne #0x75475c
007540ec  7c d0 8d e2                                      add sp, sp, #0x7c
007540f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007540f4  08 00 a0 e1                                      mov r0, r8
007540f8  cc 77 00 eb                                      bl #0x772030
007540fc  27 00 50 e3                                      cmp r0, #0x27
00754100  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
00754104  27 00 00 ea                                      b #0x7541a8
00754108  28 00 00 ea                                      b #0x7541b0
0075410c  33 00 00 ea                                      b #0x7541e0
00754110  38 00 00 ea                                      b #0x7541f8
00754114  3d 00 00 ea                                      b #0x754210
00754118  22 00 00 ea                                      b #0x7541a8
0075411c  21 00 00 ea                                      b #0x7541a8
00754120  4b 00 00 ea                                      b #0x754254
00754124  50 00 00 ea                                      b #0x75426c
00754128  54 00 00 ea                                      b #0x754280
0075412c  5d 00 00 ea                                      b #0x7542a8
00754130  61 00 00 ea                                      b #0x7542bc
00754134  67 00 00 ea                                      b #0x7542d8
00754138  1a 00 00 ea                                      b #0x7541a8
0075413c  a2 00 00 ea                                      b #0x7543cc
00754140  a6 00 00 ea                                      b #0x7543e0
00754144  ab 00 00 ea                                      b #0x7543f8
00754148  b0 00 00 ea                                      b #0x754410
0075414c  b4 00 00 ea                                      b #0x754424
00754150  b8 00 00 ea                                      b #0x754438
00754154  bd 00 00 ea                                      b #0x754450
00754158  d8 00 00 ea                                      b #0x7544c0
0075415c  f3 00 00 ea                                      b #0x754530
00754160  10 00 00 ea                                      b #0x7541a8
00754164  0f 00 00 ea                                      b #0x7541a8
00754168  0e 00 00 ea                                      b #0x7541a8
0075416c  0d 00 00 ea                                      b #0x7541a8
00754170  0c 00 00 ea                                      b #0x7541a8
00754174  0b 00 00 ea                                      b #0x7541a8
00754178  0a 00 00 ea                                      b #0x7541a8
0075417c  09 00 00 ea                                      b #0x7541a8
00754180  08 00 00 ea                                      b #0x7541a8
00754184  07 00 00 ea                                      b #0x7541a8
00754188  f7 00 00 ea                                      b #0x75456c
0075418c  05 00 00 ea                                      b #0x7541a8
00754190  fa 00 00 ea                                      b #0x754580
00754194  f4 00 00 ea                                      b #0x75456c
00754198  e4 00 00 ea                                      b #0x754530
0075419c  f7 00 00 ea                                      b #0x754580
007541a0  ff 00 00 ea                                      b #0x7545a4
007541a4  05 01 00 ea                                      b #0x7545c0
007541a8  00 00 a0 e3                                      mov r0, #0
007541ac  c9 ff ff ea                                      b #0x7540d8
007541b0  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
007541b4  41 14 a0 e3                                      mov r1, #0x41000000
007541b8  0a 16 81 e2                                      add r1, r1, #0xa00000
007541bc  08 00 93 e5                                      ldr r0, [r3, #8]
007541c0  b3 ea ee eb                                      bl #0x30ec94
007541c4  b6 e9 ee eb                                      bl #0x30e8a4
007541c8  00 20 a0 e1                                      mov r2, r0
007541cc  01 30 a0 e1                                      mov r3, r1
007541d0  07 00 a0 e1                                      mov r0, r7
007541d4  ab 0c 01 eb                                      bl #0x797488
007541d8  01 00 a0 e3                                      mov r0, #1
007541dc  bd ff ff ea                                      b #0x7540d8
007541e0  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
007541e4  41 14 a0 e3                                      mov r1, #0x41000000
007541e8  0a 16 81 e2                                      add r1, r1, #0xa00000
007541ec  14 00 93 e5                                      ldr r0, [r3, #0x14]
007541f0  a7 ea ee eb                                      bl #0x30ec94
007541f4  f2 ff ff ea                                      b #0x7541c4
007541f8  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
007541fc  26 fc ff eb                                      bl #0x75329c
00754200  42 14 a0 e3                                      mov r1, #0x42000000
00754204  32 17 81 e2                                      add r1, r1, #0xc80000
00754208  d7 ea ee eb                                      bl #0x30ed6c
0075420c  ec ff ff ea                                      b #0x7541c4
00754210  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
00754214  10 00 93 e5                                      ldr r0, [r3, #0x10]
00754218  0c 80 93 e5                                      ldr r8, [r3, #0xc]
0075421c  00 10 a0 e1                                      mov r1, r0
00754220  d1 ea ee eb                                      bl #0x30ed6c
00754224  08 10 a0 e1                                      mov r1, r8
00754228  00 60 a0 e1                                      mov r6, r0
0075422c  08 00 a0 e1                                      mov r0, r8
00754230  cd ea ee eb                                      bl #0x30ed6c
00754234  00 10 a0 e1                                      mov r1, r0
00754238  06 00 a0 e1                                      mov r0, r6
0075423c  58 ea ee eb                                      bl #0x30eba4
00754240  b7 e7 ee eb                                      bl #0x30e124
00754244  42 14 a0 e3                                      mov r1, #0x42000000
00754248  32 17 81 e2                                      add r1, r1, #0xc80000
0075424c  c6 ea ee eb                                      bl #0x30ed6c
00754250  db ff ff ea                                      b #0x7541c4
00754254  48 30 96 e5                                      ldr r3, [r6, #0x48]
00754258  42 14 a0 e3                                      mov r1, #0x42000000
0075425c  32 17 81 e2                                      add r1, r1, #0xc80000
00754260  18 00 93 e5                                      ldr r0, [r3, #0x18]
00754264  c0 ea ee eb                                      bl #0x30ed6c
00754268  d5 ff ff ea                                      b #0x7541c4
0075426c  07 00 a0 e1                                      mov r0, r7
00754270  9b 10 d6 e5                                      ldrb r1, [r6, #0x9b]
00754274  ed 0b 01 eb                                      bl #0x797230
00754278  01 00 a0 e3                                      mov r0, #1
0075427c  95 ff ff ea                                      b #0x7540d8
00754280  06 00 a0 e1                                      mov r0, r6
00754284  00 30 96 e5                                      ldr r3, [r6]
00754288  0f e0 a0 e1                                      mov lr, pc
0075428c  28 f1 93 e5                                      ldr pc, [r3, #0x128]
00754290  41 14 a0 e3                                      mov r1, #0x41000000
00754294  0a 16 81 e2                                      add r1, r1, #0xa00000
00754298  7d ea ee eb                                      bl #0x30ec94
0075429c  8a e8 ee eb                                      bl #0x30e4cc
007542a0  a2 ea ee eb                                      bl #0x30ed30
007542a4  c7 ff ff ea                                      b #0x7541c8
007542a8  06 00 a0 e1                                      mov r0, r6
007542ac  00 30 96 e5                                      ldr r3, [r6]
007542b0  0f e0 a0 e1                                      mov lr, pc
007542b4  24 f1 93 e5                                      ldr pc, [r3, #0x124]
007542b8  f4 ff ff ea                                      b #0x754290
007542bc  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
007542c0  7c 09 01 eb                                      bl #0x7968b8
007542c4  e0 1e 02 e3                                      movw r1, #0x2ee0
007542c8  65 12 44 e3                                      movt r1, #0x4265
007542cc  a6 ea ee eb                                      bl #0x30ed6c
007542d0  73 e9 ee eb                                      bl #0x30e8a4
007542d4  bb ff ff ea                                      b #0x7541c8
007542d8  3c 00 86 e2                                      add r0, r6, #0x3c
007542dc  d0 8f f3 eb                                      bl #0x438224
007542e0  00 b0 50 e2                                      subs fp, r0, #0
007542e4  1d 01 00 0a                                      beq #0x754760
007542e8  00 30 a0 e3                                      mov r3, #0
007542ec  19 30 cd e5                                      strb r3, [sp, #0x19]
007542f0  18 30 cd e5                                      strb r3, [sp, #0x18]
007542f4  9c 14 9f e5                                      ldr r1, [pc, #0x49c]
007542f8  00 30 9b e5                                      ldr r3, [fp]
007542fc  4c 80 8d e2                                      add r8, sp, #0x4c
00754300  01 10 8f e0                                      add r1, pc, r1
00754304  18 90 8d e2                                      add sb, sp, #0x18
00754308  08 00 a0 e1                                      mov r0, r8
0075430c  20 a0 93 e5                                      ldr sl, [r3, #0x20]
00754310  d9 fd f2 eb                                      bl #0x413a7c
00754314  08 10 a0 e1                                      mov r1, r8
00754318  09 20 a0 e1                                      mov r2, sb
0075431c  0b 00 a0 e1                                      mov r0, fp
00754320  3a ff 2f e1                                      blx sl
00754324  08 00 a0 e1                                      mov r0, r8
00754328  ea 2e f3 eb                                      bl #0x41fed8
0075432c  09 00 a0 e1                                      mov r0, sb
00754330  d3 31 f3 eb                                      bl #0x420a84
00754334  38 80 8d e2                                      add r8, sp, #0x38
00754338  00 10 a0 e1                                      mov r1, r0
0075433c  08 00 a0 e1                                      mov r0, r8
00754340  39 fb ff eb                                      bl #0x75302c
00754344  50 a4 9f e5                                      ldr sl, [pc, #0x450]
00754348  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
0075434c  0a a0 8f e0                                      add sl, pc, sl
00754350  01 00 73 e3                                      cmn r3, #1
00754354  01 00 88 12                                      addne r0, r8, #1
00754358  44 00 9d 05                                      ldreq r0, [sp, #0x44]
0075435c  0a 10 a0 e1                                      mov r1, sl
00754360  ed e7 ee eb                                      bl #0x30e31c
00754364  00 00 50 e3                                      cmp r0, #0
00754368  0a 10 a0 11                                      movne r1, sl
0075436c  2c 14 9f 05                                      ldreq r1, [pc, #0x42c]
00754370  01 10 8f 00                                      addeq r1, pc, r1
00754374  08 00 a0 e1                                      mov r0, r8
00754378  93 f7 ff eb                                      bl #0x7521cc
0075437c  44 10 96 e5                                      ldr r1, [r6, #0x44]
00754380  d0 30 d1 e1                                      ldrsb r3, [r1]
00754384  01 00 73 e3                                      cmn r3, #1
00754388  04 30 91 05                                      ldreq r3, [r1, #4]
0075438c  01 30 43 e2                                      sub r3, r3, #1
00754390  00 00 53 e3                                      cmp r3, #0
00754394  e5 00 00 1a                                      bne #0x754730
00754398  04 14 9f e5                                      ldr r1, [pc, #0x404]
0075439c  08 00 a0 e1                                      mov r0, r8
007543a0  01 10 8f e0                                      add r1, pc, r1
007543a4  88 f7 ff eb                                      bl #0x7521cc
007543a8  08 10 a0 e1                                      mov r1, r8
007543ac  07 00 a0 e1                                      mov r0, r7
007543b0  c8 0b 01 eb                                      bl #0x7972d8
007543b4  08 00 a0 e1                                      mov r0, r8
007543b8  c6 2e f3 eb                                      bl #0x41fed8
007543bc  09 00 a0 e1                                      mov r0, sb
007543c0  57 0b 01 eb                                      bl #0x797124
007543c4  01 00 a0 e3                                      mov r0, #1
007543c8  42 ff ff ea                                      b #0x7540d8
007543cc  07 00 a0 e1                                      mov r0, r7
007543d0  44 10 96 e5                                      ldr r1, [r6, #0x44]
007543d4  bf 0b 01 eb                                      bl #0x7972d8
007543d8  01 00 a0 e3                                      mov r0, #1
007543dc  3d ff ff ea                                      b #0x7540d8
007543e0  c0 13 9f e5                                      ldr r1, [pc, #0x3c0]
007543e4  07 00 a0 e1                                      mov r0, r7
007543e8  01 10 8f e0                                      add r1, pc, r1
007543ec  d7 0b 01 eb                                      bl #0x797350
007543f0  01 00 a0 e3                                      mov r0, #1
007543f4  37 ff ff ea                                      b #0x7540d8
007543f8  ac 13 9f e5                                      ldr r1, [pc, #0x3ac]
007543fc  07 00 a0 e1                                      mov r0, r7
00754400  01 10 8f e0                                      add r1, pc, r1
00754404  d1 0b 01 eb                                      bl #0x797350
00754408  01 00 a0 e3                                      mov r0, #1
0075440c  31 ff ff ea                                      b #0x7540d8
00754410  07 00 a0 e1                                      mov r0, r7
00754414  01 10 a0 e3                                      mov r1, #1
00754418  84 0b 01 eb                                      bl #0x797230
0075441c  01 00 a0 e3                                      mov r0, #1
00754420  2c ff ff ea                                      b #0x7540d8
00754424  07 00 a0 e1                                      mov r0, r7
00754428  00 10 a0 e3                                      mov r1, #0
0075442c  7f 0b 01 eb                                      bl #0x797230
00754430  01 00 a0 e3                                      mov r0, #1
00754434  27 ff ff ea                                      b #0x7540d8
00754438  07 00 a0 e1                                      mov r0, r7
0075443c  00 20 a0 e3                                      mov r2, #0
00754440  00 30 a0 e3                                      mov r3, #0
00754444  0f 0c 01 eb                                      bl #0x797488
00754448  01 00 a0 e3                                      mov r0, #1
0075444c  21 ff ff ea                                      b #0x7540d8
00754450  2c a0 8d e2                                      add sl, sp, #0x2c
00754454  30 80 8d e2                                      add r8, sp, #0x30
00754458  34 30 8d e2                                      add r3, sp, #0x34
0075445c  00 c0 96 e5                                      ldr ip, [r6]
00754460  06 00 a0 e1                                      mov r0, r6
00754464  0a 10 a0 e1                                      mov r1, sl
00754468  08 20 a0 e1                                      mov r2, r8
0075446c  06 90 a0 e1                                      mov sb, r6
00754470  0f e0 a0 e1                                      mov lr, pc
00754474  70 f0 9c e5                                      ldr pc, [ip, #0x70]
00754478  54 30 99 e5                                      ldr r3, [sb, #0x54]
0075447c  00 00 53 e3                                      cmp r3, #0
00754480  02 00 00 0a                                      beq #0x754490
00754484  68 00 93 e5                                      ldr r0, [r3, #0x68]
00754488  00 00 50 e3                                      cmp r0, #0
0075448c  ae 00 00 1a                                      bne #0x75474c
00754490  40 30 99 e5                                      ldr r3, [sb, #0x40]
00754494  00 00 53 e3                                      cmp r3, #0
00754498  83 00 00 0a                                      beq #0x7546ac
0075449c  3c 20 99 e5                                      ldr r2, [sb, #0x3c]
007544a0  04 b0 d2 e5                                      ldrb fp, [r2, #4]
007544a4  00 00 5b e3                                      cmp fp, #0
007544a8  7b 00 00 0a                                      beq #0x75469c
007544ac  03 90 a0 e1                                      mov sb, r3
007544b0  54 30 99 e5                                      ldr r3, [sb, #0x54]
007544b4  00 00 53 e3                                      cmp r3, #0
007544b8  f1 ff ff 1a                                      bne #0x754484
007544bc  f3 ff ff ea                                      b #0x754490
007544c0  34 a0 8d e2                                      add sl, sp, #0x34
007544c4  30 80 8d e2                                      add r8, sp, #0x30
007544c8  2c 30 8d e2                                      add r3, sp, #0x2c
007544cc  00 c0 96 e5                                      ldr ip, [r6]
007544d0  06 00 a0 e1                                      mov r0, r6
007544d4  0a 10 a0 e1                                      mov r1, sl
007544d8  08 20 a0 e1                                      mov r2, r8
007544dc  06 90 a0 e1                                      mov sb, r6
007544e0  0f e0 a0 e1                                      mov lr, pc
007544e4  70 f0 9c e5                                      ldr pc, [ip, #0x70]
007544e8  54 30 99 e5                                      ldr r3, [sb, #0x54]
007544ec  00 00 53 e3                                      cmp r3, #0
007544f0  02 00 00 0a                                      beq #0x754500
007544f4  68 00 93 e5                                      ldr r0, [r3, #0x68]
007544f8  00 00 50 e3                                      cmp r0, #0
007544fc  8e 00 00 1a                                      bne #0x75473c
00754500  40 30 99 e5                                      ldr r3, [sb, #0x40]
00754504  00 00 53 e3                                      cmp r3, #0
00754508  42 00 00 0a                                      beq #0x754618
0075450c  3c 20 99 e5                                      ldr r2, [sb, #0x3c]
00754510  04 b0 d2 e5                                      ldrb fp, [r2, #4]
00754514  00 00 5b e3                                      cmp fp, #0
00754518  3a 00 00 0a                                      beq #0x754608
0075451c  03 90 a0 e1                                      mov sb, r3
00754520  54 30 99 e5                                      ldr r3, [sb, #0x54]
00754524  00 00 53 e3                                      cmp r3, #0
00754528  f1 ff ff 1a                                      bne #0x7544f4
0075452c  f3 ff ff ea                                      b #0x754500
00754530  3c 00 86 e2                                      add r0, r6, #0x3c
00754534  3a 8f f3 eb                                      bl #0x438224
00754538  00 60 50 e2                                      subs r6, r0, #0
0075453c  06 00 00 0a                                      beq #0x75455c
00754540  00 10 a0 e3                                      mov r1, #0
00754544  00 30 96 e5                                      ldr r3, [r6]
00754548  0f e0 a0 e1                                      mov lr, pc
0075454c  08 f0 93 e5                                      ldr pc, [r3, #8]
00754550  00 00 50 e3                                      cmp r0, #0
00754554  06 10 a0 11                                      movne r1, r6
00754558  00 00 00 1a                                      bne #0x754560
0075455c  00 10 a0 e3                                      mov r1, #0
00754560  07 00 a0 e1                                      mov r0, r7
00754564  39 0b 01 eb                                      bl #0x797250
00754568  d9 fe ff ea                                      b #0x7540d4
0075456c  07 00 a0 e1                                      mov r0, r7
00754570  06 10 a0 e1                                      mov r1, r6
00754574  35 0b 01 eb                                      bl #0x797250
00754578  01 00 a0 e3                                      mov r0, #1
0075457c  d5 fe ff ea                                      b #0x7540d8
00754580  00 30 96 e5                                      ldr r3, [r6]
00754584  06 00 a0 e1                                      mov r0, r6
00754588  0f e0 a0 e1                                      mov lr, pc
0075458c  34 f1 93 e5                                      ldr pc, [r3, #0x134]
00754590  00 10 a0 e1                                      mov r1, r0
00754594  07 00 a0 e1                                      mov r0, r7
00754598  2c 0b 01 eb                                      bl #0x797250
0075459c  01 00 a0 e3                                      mov r0, #1
007545a0  cc fe ff ea                                      b #0x7540d8
007545a4  06 00 a0 e1                                      mov r0, r6
007545a8  d5 5b 00 eb                                      bl #0x76b504
007545ac  00 10 a0 e1                                      mov r1, r0
007545b0  07 00 a0 e1                                      mov r0, r7
007545b4  25 0b 01 eb                                      bl #0x797250
007545b8  01 00 a0 e3                                      mov r0, #1
007545bc  c5 fe ff ea                                      b #0x7540d8
007545c0  30 00 96 e5                                      ldr r0, [r6, #0x30]
007545c4  00 00 50 e3                                      cmp r0, #0
007545c8  08 00 00 0a                                      beq #0x7545f0
007545cc  2c 30 96 e5                                      ldr r3, [r6, #0x2c]
007545d0  04 80 d3 e5                                      ldrb r8, [r3, #4]
007545d4  00 00 58 e3                                      cmp r8, #0
007545d8  04 00 00 1a                                      bne #0x7545f0
007545dc  2c 00 86 e2                                      add r0, r6, #0x2c
007545e0  08 10 a0 e1                                      mov r1, r8
007545e4  26 2e f3 eb                                      bl #0x41fe84
007545e8  30 80 86 e5                                      str r8, [r6, #0x30]
007545ec  08 00 a0 e1                                      mov r0, r8
007545f0  7b 60 00 eb                                      bl #0x76c7e4
007545f4  00 10 a0 e1                                      mov r1, r0
007545f8  07 00 a0 e1                                      mov r0, r7
007545fc  13 0b 01 eb                                      bl #0x797250
00754600  01 00 a0 e3                                      mov r0, #1
00754604  b3 fe ff ea                                      b #0x7540d8
00754608  3c 00 89 e2                                      add r0, sb, #0x3c
0075460c  0b 10 a0 e1                                      mov r1, fp
00754610  1b 2e f3 eb                                      bl #0x41fe84
00754614  40 b0 89 e5                                      str fp, [sb, #0x40]
00754618  06 00 a0 e1                                      mov r0, r6
0075461c  54 fe ff eb                                      bl #0x753f74
00754620  0d c0 a0 e1                                      mov ip, sp
00754624  00 e0 a0 e1                                      mov lr, r0
00754628  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0075462c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00754630  03 00 9e e8                                      ldm lr, {r0, r1}
00754634  03 00 8c e8                                      stm ip, {r0, r1}
00754638  30 00 9d e5                                      ldr r0, [sp, #0x30]
0075463c  c8 e8 ee eb                                      bl #0x30e964
00754640  41 14 a0 e3                                      mov r1, #0x41000000
00754644  0a 16 81 e2                                      add r1, r1, #0xa00000
00754648  c7 e9 ee eb                                      bl #0x30ed6c
0075464c  00 60 a0 e1                                      mov r6, r0
00754650  34 00 9d e5                                      ldr r0, [sp, #0x34]
00754654  c2 e8 ee eb                                      bl #0x30e964
00754658  41 14 a0 e3                                      mov r1, #0x41000000
0075465c  0a 16 81 e2                                      add r1, r1, #0xa00000
00754660  c1 e9 ee eb                                      bl #0x30ed6c
00754664  00 30 a0 e3                                      mov r3, #0
00754668  24 00 8d e5                                      str r0, [sp, #0x24]
0075466c  18 10 8d e2                                      add r1, sp, #0x18
00754670  0d 00 a0 e1                                      mov r0, sp
00754674  24 20 8d e2                                      add r2, sp, #0x24
00754678  28 60 8d e5                                      str r6, [sp, #0x28]
0075467c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00754680  18 30 8d e5                                      str r3, [sp, #0x18]
00754684  bc fd ff eb                                      bl #0x753d7c
00754688  41 14 a0 e3                                      mov r1, #0x41000000
0075468c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00754690  0a 16 81 e2                                      add r1, r1, #0xa00000
00754694  7e e9 ee eb                                      bl #0x30ec94
00754698  c9 fe ff ea                                      b #0x7541c4
0075469c  3c 00 89 e2                                      add r0, sb, #0x3c
007546a0  0b 10 a0 e1                                      mov r1, fp
007546a4  f6 2d f3 eb                                      bl #0x41fe84
007546a8  40 b0 89 e5                                      str fp, [sb, #0x40]
007546ac  06 00 a0 e1                                      mov r0, r6
007546b0  2f fe ff eb                                      bl #0x753f74
007546b4  0d c0 a0 e1                                      mov ip, sp
007546b8  00 e0 a0 e1                                      mov lr, r0
007546bc  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007546c0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007546c4  03 00 9e e8                                      ldm lr, {r0, r1}
007546c8  03 00 8c e8                                      stm ip, {r0, r1}
007546cc  30 00 9d e5                                      ldr r0, [sp, #0x30]
007546d0  a3 e8 ee eb                                      bl #0x30e964
007546d4  41 14 a0 e3                                      mov r1, #0x41000000
007546d8  0a 16 81 e2                                      add r1, r1, #0xa00000
007546dc  a2 e9 ee eb                                      bl #0x30ed6c
007546e0  00 60 a0 e1                                      mov r6, r0
007546e4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007546e8  9d e8 ee eb                                      bl #0x30e964
007546ec  41 14 a0 e3                                      mov r1, #0x41000000
007546f0  0a 16 81 e2                                      add r1, r1, #0xa00000
007546f4  9c e9 ee eb                                      bl #0x30ed6c
007546f8  00 30 a0 e3                                      mov r3, #0
007546fc  18 00 8d e5                                      str r0, [sp, #0x18]
00754700  24 10 8d e2                                      add r1, sp, #0x24
00754704  0d 00 a0 e1                                      mov r0, sp
00754708  18 20 8d e2                                      add r2, sp, #0x18
0075470c  1c 60 8d e5                                      str r6, [sp, #0x1c]
00754710  28 30 8d e5                                      str r3, [sp, #0x28]
00754714  24 30 8d e5                                      str r3, [sp, #0x24]
00754718  97 fd ff eb                                      bl #0x753d7c
0075471c  41 14 a0 e3                                      mov r1, #0x41000000
00754720  24 00 9d e5                                      ldr r0, [sp, #0x24]
00754724  0a 16 81 e2                                      add r1, r1, #0xa00000
00754728  59 e9 ee eb                                      bl #0x30ec94
0075472c  a4 fe ff ea                                      b #0x7541c4
00754730  08 00 a0 e1                                      mov r0, r8
00754734  79 fa ff eb                                      bl #0x753120
00754738  1a ff ff ea                                      b #0x7543a8
0075473c  0a 10 a0 e1                                      mov r1, sl
00754740  08 20 a0 e1                                      mov r2, r8
00754744  9e 8b 00 eb                                      bl #0x7775c4
00754748  b2 ff ff ea                                      b #0x754618
0075474c  0a 10 a0 e1                                      mov r1, sl
00754750  08 20 a0 e1                                      mov r2, r8
00754754  9a 8b 00 eb                                      bl #0x7775c4
00754758  d3 ff ff ea                                      b #0x7546ac
0075475c  eb e6 ee eb                                      bl #0x30e310
00754760  48 10 9f e5                                      ldr r1, [pc, #0x48]
00754764  60 60 8d e2                                      add r6, sp, #0x60
00754768  06 00 a0 e1                                      mov r0, r6
0075476c  01 10 8f e0                                      add r1, pc, r1
00754770  c1 fc f2 eb                                      bl #0x413a7c
00754774  07 00 a0 e1                                      mov r0, r7
00754778  06 10 a0 e1                                      mov r1, r6
0075477c  d5 0a 01 eb                                      bl #0x7972d8
00754780  06 00 a0 e1                                      mov r0, r6
00754784  d3 2d f3 eb                                      bl #0x41fed8
00754788  01 00 a0 e3                                      mov r0, #1
0075478c  51 fe ff ea                                      b #0x7540d8
; mapping-symbol data/literal pool
00754790  e4 09 24 00 ac 40 00 00 b0 45 1b 00 0c c9 16 00  .byte 0xe4, 0x09, 0x24, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb0, 0x45, 0x1b, 0x00, 0x0c, 0xc9, 0x16, 0x00
007547a0  98 74 17 00 18 45 1b 00 d8 44 1b 00 c8 44 1b 00  .byte 0x98, 0x74, 0x17, 0x00, 0x18, 0x45, 0x1b, 0x00, 0xd8, 0x44, 0x1b, 0x00, 0xc8, 0x44, 0x1b, 0x00
007547b0  ec c4 16 00                                      .byte 0xec, 0xc4, 0x16, 0x00

; FUNCTION 0x007547b4, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character14get_root_movieEv
; demangled: gameswf::character::get_root_movie()
; decoder-mode: arm
007547b4  10 40 2d e9                                      push {r4, lr}
007547b8  40 30 90 e5                                      ldr r3, [r0, #0x40]
007547bc  00 40 a0 e1                                      mov r4, r0
007547c0  00 00 53 e3                                      cmp r3, #0
007547c4  03 00 00 0a                                      beq #0x7547d8
007547c8  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
007547cc  04 20 d0 e5                                      ldrb r2, [r0, #4]
007547d0  00 00 52 e3                                      cmp r2, #0
007547d4  04 00 00 0a                                      beq #0x7547ec
007547d8  03 00 a0 e1                                      mov r0, r3
007547dc  00 30 93 e5                                      ldr r3, [r3]
007547e0  0f e0 a0 e1                                      mov lr, pc
007547e4  34 f1 93 e5                                      ldr pc, [r3, #0x134]
007547e8  10 80 bd e8                                      pop {r4, pc}
007547ec  00 10 90 e5                                      ldr r1, [r0]
007547f0  01 10 41 e2                                      sub r1, r1, #1
007547f4  00 00 51 e3                                      cmp r1, #0
007547f8  00 10 80 e5                                      str r1, [r0]
007547fc  00 00 00 1a                                      bne #0x754804
00754800  cc f8 ff eb                                      bl #0x752b38
00754804  00 30 a0 e3                                      mov r3, #0
00754808  40 30 84 e5                                      str r3, [r4, #0x40]
0075480c  3c 30 84 e5                                      str r3, [r4, #0x3c]
00754810  03 00 a0 e1                                      mov r0, r3
00754814  00 30 93 e5                                      ldr r3, [r3]
00754818  0f e0 a0 e1                                      mov lr, pc
0075481c  34 f1 93 e5                                      ldr pc, [r3, #0x134]
00754820  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00754824, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character14get_drag_stateEPNS0_10drag_stateE
; demangled: gameswf::character::get_drag_state(gameswf::character::drag_state*)
; decoder-mode: arm
00754824  70 40 2d e9                                      push {r4, r5, r6, lr}
00754828  40 30 90 e5                                      ldr r3, [r0, #0x40]
0075482c  00 40 a0 e1                                      mov r4, r0
00754830  01 50 a0 e1                                      mov r5, r1
00754834  00 00 53 e3                                      cmp r3, #0
00754838  03 00 00 0a                                      beq #0x75484c
0075483c  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
00754840  04 20 d0 e5                                      ldrb r2, [r0, #4]
00754844  00 00 52 e3                                      cmp r2, #0
00754848  05 00 00 0a                                      beq #0x754864
0075484c  03 00 a0 e1                                      mov r0, r3
00754850  05 10 a0 e1                                      mov r1, r5
00754854  00 30 93 e5                                      ldr r3, [r3]
00754858  0f e0 a0 e1                                      mov lr, pc
0075485c  dc f0 93 e5                                      ldr pc, [r3, #0xdc]
00754860  70 80 bd e8                                      pop {r4, r5, r6, pc}
00754864  00 10 90 e5                                      ldr r1, [r0]
00754868  01 10 41 e2                                      sub r1, r1, #1
0075486c  00 00 51 e3                                      cmp r1, #0
00754870  00 10 80 e5                                      str r1, [r0]
00754874  00 00 00 1a                                      bne #0x75487c
00754878  ae f8 ff eb                                      bl #0x752b38
0075487c  00 30 a0 e3                                      mov r3, #0
00754880  40 30 84 e5                                      str r3, [r4, #0x40]
00754884  3c 30 84 e5                                      str r3, [r4, #0x3c]
00754888  ef ff ff ea                                      b #0x75484c

; FUNCTION 0x0075488c, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character19update_world_cxformEv
; demangled: gameswf::character::update_world_cxform()
; decoder-mode: arm
0075488c  70 40 2d e9                                      push {r4, r5, r6, lr}
00754890  00 40 a0 e1                                      mov r4, r0
00754894  40 00 90 e5                                      ldr r0, [r0, #0x40]
00754898  b0 50 9f e5                                      ldr r5, [pc, #0xb0]
0075489c  00 00 50 e3                                      cmp r0, #0
007548a0  05 50 8f e0                                      add r5, pc, r5
007548a4  1e 00 00 0a                                      beq #0x754924
007548a8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
007548ac  04 20 d3 e5                                      ldrb r2, [r3, #4]
007548b0  00 00 52 e3                                      cmp r2, #0
007548b4  10 00 00 0a                                      beq #0x7548fc
007548b8  80 fd ff eb                                      bl #0x753ec0
007548bc  58 c0 84 e2                                      add ip, r4, #0x58
007548c0  00 60 a0 e1                                      mov r6, r0
007548c4  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
007548c8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007548cc  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
007548d0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007548d4  78 30 9f e5                                      ldr r3, [pc, #0x78]
007548d8  48 10 94 e5                                      ldr r1, [r4, #0x48]
007548dc  03 30 95 e7                                      ldr r3, [r5, r3]
007548e0  03 00 51 e1                                      cmp r1, r3
007548e4  01 00 00 0a                                      beq #0x7548f0
007548e8  58 00 84 e2                                      add r0, r4, #0x58
007548ec  11 01 01 eb                                      bl #0x794d38
007548f0  00 30 a0 e3                                      mov r3, #0
007548f4  9a 30 c4 e5                                      strb r3, [r4, #0x9a]
007548f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007548fc  00 10 93 e5                                      ldr r1, [r3]
00754900  01 10 41 e2                                      sub r1, r1, #1
00754904  00 00 51 e3                                      cmp r1, #0
00754908  00 10 83 e5                                      str r1, [r3]
0075490c  01 00 00 1a                                      bne #0x754918
00754910  03 00 a0 e1                                      mov r0, r3
00754914  87 f8 ff eb                                      bl #0x752b38
00754918  00 30 a0 e3                                      mov r3, #0
0075491c  40 30 84 e5                                      str r3, [r4, #0x40]
00754920  3c 30 84 e5                                      str r3, [r4, #0x3c]
00754924  00 20 a0 e3                                      mov r2, #0
00754928  fe 35 a0 e3                                      mov r3, #0x3f800000
0075492c  5c 20 84 e5                                      str r2, [r4, #0x5c]
00754930  58 30 84 e5                                      str r3, [r4, #0x58]
00754934  74 20 84 e5                                      str r2, [r4, #0x74]
00754938  70 30 84 e5                                      str r3, [r4, #0x70]
0075493c  6c 20 84 e5                                      str r2, [r4, #0x6c]
00754940  68 30 84 e5                                      str r3, [r4, #0x68]
00754944  64 20 84 e5                                      str r2, [r4, #0x64]
00754948  60 30 84 e5                                      str r3, [r4, #0x60]
0075494c  e0 ff ff ea                                      b #0x7548d4
; mapping-symbol data/literal pool
00754950  f0 01 24 00 84 34 00 00                          .byte 0xf0, 0x01, 0x24, 0x00, 0x84, 0x34, 0x00, 0x00

; FUNCTION 0x00754958, declared_size=196, range_size=196, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character7recycleEPS0_i
; demangled: gameswf::character::recycle(gameswf::character*, int)
; decoder-mode: arm
00754958  00 30 a0 e3                                      mov r3, #0
0075495c  70 40 2d e9                                      push {r4, r5, r6, lr}
00754960  90 30 80 e5                                      str r3, [r0, #0x90]
00754964  00 30 a0 e3                                      mov r3, #0
00754968  00 40 a0 e1                                      mov r4, r0
0075496c  38 20 80 e5                                      str r2, [r0, #0x38]
00754970  b4 39 c0 e1                                      strh r3, [r0, #0x94]
00754974  b6 39 c0 e1                                      strh r3, [r0, #0x96]
00754978  3c 00 80 e2                                      add r0, r0, #0x3c
0075497c  89 4c f3 eb                                      bl #0x427ba8
00754980  80 10 9f e5                                      ldr r1, [pc, #0x80]
00754984  80 50 9f e5                                      ldr r5, [pc, #0x80]
00754988  04 00 a0 e1                                      mov r0, r4
0075498c  01 10 8f e0                                      add r1, pc, r1
00754990  0c 10 81 e2                                      add r1, r1, #0xc
00754994  07 fb ff eb                                      bl #0x7535b8
00754998  70 30 9f e5                                      ldr r3, [pc, #0x70]
0075499c  05 50 8f e0                                      add r5, pc, r5
007549a0  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
007549a4  03 30 95 e7                                      ldr r3, [r5, r3]
007549a8  03 00 52 e1                                      cmp r2, r3
007549ac  4c 30 84 15                                      strne r3, [r4, #0x4c]
007549b0  01 30 a0 13                                      movne r3, #1
007549b4  99 30 c4 15                                      strbne r3, [r4, #0x99]
007549b8  54 30 9f e5                                      ldr r3, [pc, #0x54]
007549bc  48 20 94 e5                                      ldr r2, [r4, #0x48]
007549c0  03 30 95 e7                                      ldr r3, [r5, r3]
007549c4  03 00 52 e1                                      cmp r2, r3
007549c8  48 30 84 15                                      strne r3, [r4, #0x48]
007549cc  01 30 a0 13                                      movne r3, #1
007549d0  9a 30 c4 15                                      strbne r3, [r4, #0x9a]
007549d4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
007549d8  50 20 94 e5                                      ldr r2, [r4, #0x50]
007549dc  03 30 95 e7                                      ldr r3, [r5, r3]
007549e0  03 00 52 e1                                      cmp r2, r3
007549e4  50 30 84 15                                      strne r3, [r4, #0x50]
007549e8  00 20 a0 e3                                      mov r2, #0
007549ec  01 30 a0 e3                                      mov r3, #1
007549f0  99 30 c4 e5                                      strb r3, [r4, #0x99]
007549f4  9c 20 c4 e5                                      strb r2, [r4, #0x9c]
007549f8  9b 30 c4 e5                                      strb r3, [r4, #0x9b]
007549fc  9d 30 c4 e5                                      strb r3, [r4, #0x9d]
00754a00  9a 30 c4 e5                                      strb r3, [r4, #0x9a]
00754a04  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00754a08  f4 7a 2a 00 f4 00 24 00 c8 40 00 00 84 34 00 00  .byte 0xf4, 0x7a, 0x2a, 0x00, 0xf4, 0x00, 0x24, 0x00, 0xc8, 0x40, 0x00, 0x00, 0x84, 0x34, 0x00, 0x00
00754a18  e4 3d 00 00                                      .byte 0xe4, 0x3d, 0x00, 0x00

; FUNCTION 0x00754a1c, declared_size=268, range_size=268, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9characterC1EPNS_6playerEPS0_ii
; demangled: gameswf::character::character(gameswf::player*, gameswf::character*, int, int)
; decoder-mode: arm
00754a1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00754a20  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
00754a24  00 60 a0 e1                                      mov r6, r0
00754a28  02 50 a0 e1                                      mov r5, r2
00754a2c  03 80 a0 e1                                      mov r8, r3
00754a30  aa 5c 00 eb                                      bl #0x76bce0
00754a34  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00754a38  04 40 8f e0                                      add r4, pc, r4
00754a3c  00 70 a0 e3                                      mov r7, #0
00754a40  03 30 94 e7                                      ldr r3, [r4, r3]
00754a44  38 80 86 e5                                      str r8, [r6, #0x38]
00754a48  05 10 a0 e1                                      mov r1, r5
00754a4c  08 30 83 e2                                      add r3, r3, #8
00754a50  00 30 86 e5                                      str r3, [r6]
00754a54  3c 00 86 e2                                      add r0, r6, #0x3c
00754a58  3c 70 86 e5                                      str r7, [r6, #0x3c]
00754a5c  40 70 86 e5                                      str r7, [r6, #0x40]
00754a60  50 4c f3 eb                                      bl #0x427ba8
00754a64  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00754a68  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00754a6c  00 20 a0 e3                                      mov r2, #0
00754a70  03 50 94 e7                                      ldr r5, [r4, r3]
00754a74  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00754a78  01 10 8f e0                                      add r1, pc, r1
00754a7c  0c 80 81 e2                                      add r8, r1, #0xc
00754a80  03 c0 94 e7                                      ldr ip, [r4, r3]
00754a84  98 30 9f e5                                      ldr r3, [pc, #0x98]
00754a88  44 80 86 e5                                      str r8, [r6, #0x44]
00754a8c  48 50 86 e5                                      str r5, [r6, #0x48]
00754a90  03 40 94 e7                                      ldr r4, [r4, r3]
00754a94  fe 35 a0 e3                                      mov r3, #0x3f800000
00754a98  50 c0 86 e5                                      str ip, [r6, #0x50]
00754a9c  4c 40 86 e5                                      str r4, [r6, #0x4c]
00754aa0  88 30 86 e5                                      str r3, [r6, #0x88]
00754aa4  90 20 86 e5                                      str r2, [r6, #0x90]
00754aa8  b6 79 c6 e1                                      strh r7, [r6, #0x96]
00754aac  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00754ab0  01 10 a0 e3                                      mov r1, #1
00754ab4  9c 70 c6 e5                                      strb r7, [r6, #0x9c]
00754ab8  98 c0 c6 e5                                      strb ip, [r6, #0x98]
00754abc  9d 10 c6 e5                                      strb r1, [r6, #0x9d]
00754ac0  54 70 86 e5                                      str r7, [r6, #0x54]
00754ac4  58 30 86 e5                                      str r3, [r6, #0x58]
00754ac8  60 30 86 e5                                      str r3, [r6, #0x60]
00754acc  68 30 86 e5                                      str r3, [r6, #0x68]
00754ad0  70 30 86 e5                                      str r3, [r6, #0x70]
00754ad4  5c 20 86 e5                                      str r2, [r6, #0x5c]
00754ad8  64 20 86 e5                                      str r2, [r6, #0x64]
00754adc  6c 20 86 e5                                      str r2, [r6, #0x6c]
00754ae0  74 20 86 e5                                      str r2, [r6, #0x74]
00754ae4  7c 70 86 e5                                      str r7, [r6, #0x7c]
00754ae8  80 70 86 e5                                      str r7, [r6, #0x80]
00754aec  84 70 86 e5                                      str r7, [r6, #0x84]
00754af0  8c 70 86 e5                                      str r7, [r6, #0x8c]
00754af4  78 30 86 e5                                      str r3, [r6, #0x78]
00754af8  b4 79 c6 e1                                      strh r7, [r6, #0x94]
00754afc  99 10 c6 e5                                      strb r1, [r6, #0x99]
00754b00  9a 10 c6 e5                                      strb r1, [r6, #0x9a]
00754b04  9b 10 c6 e5                                      strb r1, [r6, #0x9b]
00754b08  06 00 a0 e1                                      mov r0, r6
00754b0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00754b10  58 00 24 00 e4 31 00 00 84 34 00 00 08 7a 2a 00  .byte 0x58, 0x00, 0x24, 0x00, 0xe4, 0x31, 0x00, 0x00, 0x84, 0x34, 0x00, 0x00, 0x08, 0x7a, 0x2a, 0x00
00754b20  e4 3d 00 00 c8 40 00 00                          .byte 0xe4, 0x3d, 0x00, 0x00, 0xc8, 0x40, 0x00, 0x00

; FUNCTION 0x00754b28, declared_size=268, range_size=268, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9characterC2EPNS_6playerEPS0_ii
; demangled: gameswf::character::character(gameswf::player*, gameswf::character*, int, int)
; decoder-mode: arm
00754b28  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00754b2c  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
00754b30  00 60 a0 e1                                      mov r6, r0
00754b34  02 50 a0 e1                                      mov r5, r2
00754b38  03 80 a0 e1                                      mov r8, r3
00754b3c  67 5c 00 eb                                      bl #0x76bce0
00754b40  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00754b44  04 40 8f e0                                      add r4, pc, r4
00754b48  00 70 a0 e3                                      mov r7, #0
00754b4c  03 30 94 e7                                      ldr r3, [r4, r3]
00754b50  38 80 86 e5                                      str r8, [r6, #0x38]
00754b54  05 10 a0 e1                                      mov r1, r5
00754b58  08 30 83 e2                                      add r3, r3, #8
00754b5c  00 30 86 e5                                      str r3, [r6]
00754b60  3c 00 86 e2                                      add r0, r6, #0x3c
00754b64  3c 70 86 e5                                      str r7, [r6, #0x3c]
00754b68  40 70 86 e5                                      str r7, [r6, #0x40]
00754b6c  0d 4c f3 eb                                      bl #0x427ba8
00754b70  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00754b74  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00754b78  00 20 a0 e3                                      mov r2, #0
00754b7c  03 50 94 e7                                      ldr r5, [r4, r3]
00754b80  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00754b84  01 10 8f e0                                      add r1, pc, r1
00754b88  0c 80 81 e2                                      add r8, r1, #0xc
00754b8c  03 c0 94 e7                                      ldr ip, [r4, r3]
00754b90  98 30 9f e5                                      ldr r3, [pc, #0x98]
00754b94  44 80 86 e5                                      str r8, [r6, #0x44]
00754b98  48 50 86 e5                                      str r5, [r6, #0x48]
00754b9c  03 40 94 e7                                      ldr r4, [r4, r3]
00754ba0  fe 35 a0 e3                                      mov r3, #0x3f800000
00754ba4  50 c0 86 e5                                      str ip, [r6, #0x50]
00754ba8  4c 40 86 e5                                      str r4, [r6, #0x4c]
00754bac  88 30 86 e5                                      str r3, [r6, #0x88]
00754bb0  90 20 86 e5                                      str r2, [r6, #0x90]
00754bb4  b6 79 c6 e1                                      strh r7, [r6, #0x96]
00754bb8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00754bbc  01 10 a0 e3                                      mov r1, #1
00754bc0  9c 70 c6 e5                                      strb r7, [r6, #0x9c]
00754bc4  98 c0 c6 e5                                      strb ip, [r6, #0x98]
00754bc8  9d 10 c6 e5                                      strb r1, [r6, #0x9d]
00754bcc  54 70 86 e5                                      str r7, [r6, #0x54]
00754bd0  58 30 86 e5                                      str r3, [r6, #0x58]
00754bd4  60 30 86 e5                                      str r3, [r6, #0x60]
00754bd8  68 30 86 e5                                      str r3, [r6, #0x68]
00754bdc  70 30 86 e5                                      str r3, [r6, #0x70]
00754be0  5c 20 86 e5                                      str r2, [r6, #0x5c]
00754be4  64 20 86 e5                                      str r2, [r6, #0x64]
00754be8  6c 20 86 e5                                      str r2, [r6, #0x6c]
00754bec  74 20 86 e5                                      str r2, [r6, #0x74]
00754bf0  7c 70 86 e5                                      str r7, [r6, #0x7c]
00754bf4  80 70 86 e5                                      str r7, [r6, #0x80]
00754bf8  84 70 86 e5                                      str r7, [r6, #0x84]
00754bfc  8c 70 86 e5                                      str r7, [r6, #0x8c]
00754c00  78 30 86 e5                                      str r3, [r6, #0x78]
00754c04  b4 79 c6 e1                                      strh r7, [r6, #0x94]
00754c08  99 10 c6 e5                                      strb r1, [r6, #0x99]
00754c0c  9a 10 c6 e5                                      strb r1, [r6, #0x9a]
00754c10  9b 10 c6 e5                                      strb r1, [r6, #0x9b]
00754c14  06 00 a0 e1                                      mov r0, r6
00754c18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00754c1c  4c ff 23 00 e4 31 00 00 84 34 00 00 fc 78 2a 00  .byte 0x4c, 0xff, 0x23, 0x00, 0xe4, 0x31, 0x00, 0x00, 0x84, 0x34, 0x00, 0x00, 0xfc, 0x78, 0x2a, 0x00
00754c2c  e4 3d 00 00 c8 40 00 00                          .byte 0xe4, 0x3d, 0x00, 0x00, 0xc8, 0x40, 0x00, 0x00

; FUNCTION 0x00754c34, declared_size=212, range_size=212, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character19update_world_matrixEv
; demangled: gameswf::character::update_world_matrix()
; decoder-mode: arm
00754c34  70 40 2d e9                                      push {r4, r5, r6, lr}
00754c38  00 40 a0 e1                                      mov r4, r0
00754c3c  40 00 90 e5                                      ldr r0, [r0, #0x40]
00754c40  18 d0 4d e2                                      sub sp, sp, #0x18
00754c44  00 00 50 e3                                      cmp r0, #0
00754c48  1c 00 00 0a                                      beq #0x754cc0
00754c4c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00754c50  04 20 d3 e5                                      ldrb r2, [r3, #4]
00754c54  00 00 52 e3                                      cmp r2, #0
00754c58  0e 00 00 0a                                      beq #0x754c98
00754c5c  c4 fc ff eb                                      bl #0x753f74
00754c60  78 c0 84 e2                                      add ip, r4, #0x78
00754c64  00 e0 a0 e1                                      mov lr, r0
00754c68  0c 50 a0 e1                                      mov r5, ip
00754c6c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00754c70  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
00754c74  03 00 9e e8                                      ldm lr, {r0, r1}
00754c78  03 00 85 e8                                      stm r5, {r0, r1}
00754c7c  0c 00 a0 e1                                      mov r0, ip
00754c80  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00754c84  4b 06 f3 eb                                      bl #0x4165b8
00754c88  00 30 a0 e3                                      mov r3, #0
00754c8c  99 30 c4 e5                                      strb r3, [r4, #0x99]
00754c90  18 d0 8d e2                                      add sp, sp, #0x18
00754c94  70 80 bd e8                                      pop {r4, r5, r6, pc}
00754c98  00 10 93 e5                                      ldr r1, [r3]
00754c9c  01 10 41 e2                                      sub r1, r1, #1
00754ca0  00 00 51 e3                                      cmp r1, #0
00754ca4  00 10 83 e5                                      str r1, [r3]
00754ca8  01 00 00 1a                                      bne #0x754cb4
00754cac  03 00 a0 e1                                      mov r0, r3
00754cb0  a0 f7 ff eb                                      bl #0x752b38
00754cb4  00 30 a0 e3                                      mov r3, #0
00754cb8  40 30 84 e5                                      str r3, [r4, #0x40]
00754cbc  3c 30 84 e5                                      str r3, [r4, #0x3c]
00754cc0  00 20 a0 e3                                      mov r2, #0
00754cc4  08 30 8d e2                                      add r3, sp, #8
00754cc8  04 20 83 e4                                      str r2, [r3], #4
00754ccc  04 20 83 e4                                      str r2, [r3], #4
00754cd0  04 20 83 e4                                      str r2, [r3], #4
00754cd4  fe 55 a0 e3                                      mov r5, #0x3f800000
00754cd8  78 c0 84 e2                                      add ip, r4, #0x78
00754cdc  00 20 83 e5                                      str r2, [r3]
00754ce0  04 20 8d e5                                      str r2, [sp, #4]
00754ce4  00 50 8d e5                                      str r5, [sp]
00754ce8  0d e0 a0 e1                                      mov lr, sp
00754cec  0c 60 a0 e1                                      mov r6, ip
00754cf0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00754cf4  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
00754cf8  10 50 8d e5                                      str r5, [sp, #0x10]
00754cfc  03 00 9e e8                                      ldm lr, {r0, r1}
00754d00  03 00 86 e8                                      stm r6, {r0, r1}
00754d04  dc ff ff ea                                      b #0x754c7c

; FUNCTION 0x00754d08, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character22find_exported_resourceERKNS_9tu_stringE
; demangled: gameswf::character::find_exported_resource(gameswf::tu_string const&)
; decoder-mode: arm
00754d08  10 40 2d e9                                      push {r4, lr}
00754d0c  40 30 90 e5                                      ldr r3, [r0, #0x40]
00754d10  00 40 a0 e1                                      mov r4, r0
00754d14  00 00 53 e3                                      cmp r3, #0
00754d18  12 00 00 0a                                      beq #0x754d68
00754d1c  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
00754d20  04 20 d0 e5                                      ldrb r2, [r0, #4]
00754d24  00 00 52 e3                                      cmp r2, #0
00754d28  04 00 00 0a                                      beq #0x754d40
00754d2c  03 00 a0 e1                                      mov r0, r3
00754d30  00 30 93 e5                                      ldr r3, [r3]
00754d34  0f e0 a0 e1                                      mov lr, pc
00754d38  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00754d3c  10 80 bd e8                                      pop {r4, pc}
00754d40  00 10 90 e5                                      ldr r1, [r0]
00754d44  01 10 41 e2                                      sub r1, r1, #1
00754d48  00 00 51 e3                                      cmp r1, #0
00754d4c  00 10 80 e5                                      str r1, [r0]
00754d50  00 00 00 1a                                      bne #0x754d58
00754d54  77 f7 ff eb                                      bl #0x752b38
00754d58  00 00 a0 e3                                      mov r0, #0
00754d5c  40 00 84 e5                                      str r0, [r4, #0x40]
00754d60  3c 00 84 e5                                      str r0, [r4, #0x3c]
00754d64  10 80 bd e8                                      pop {r4, pc}
00754d68  03 00 a0 e1                                      mov r0, r3
00754d6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00754d70, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character15get_mouse_stateEPiS1_S1_
; demangled: gameswf::character::get_mouse_state(int*, int*, int*)
; decoder-mode: arm
00754d70  30 40 2d e9                                      push {r4, r5, lr}
00754d74  40 c0 90 e5                                      ldr ip, [r0, #0x40]
00754d78  0c d0 4d e2                                      sub sp, sp, #0xc
00754d7c  00 40 a0 e1                                      mov r4, r0
00754d80  00 00 5c e3                                      cmp ip, #0
00754d84  01 50 a0 e1                                      mov r5, r1
00754d88  03 00 00 0a                                      beq #0x754d9c
00754d8c  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
00754d90  04 10 d0 e5                                      ldrb r1, [r0, #4]
00754d94  00 00 51 e3                                      cmp r1, #0
00754d98  06 00 00 0a                                      beq #0x754db8
00754d9c  0c 00 a0 e1                                      mov r0, ip
00754da0  05 10 a0 e1                                      mov r1, r5
00754da4  00 c0 9c e5                                      ldr ip, [ip]
00754da8  0f e0 a0 e1                                      mov lr, pc
00754dac  70 f0 9c e5                                      ldr pc, [ip, #0x70]
00754db0  0c d0 8d e2                                      add sp, sp, #0xc
00754db4  30 80 bd e8                                      pop {r4, r5, pc}
00754db8  00 10 90 e5                                      ldr r1, [r0]
00754dbc  01 10 41 e2                                      sub r1, r1, #1
00754dc0  00 00 51 e3                                      cmp r1, #0
00754dc4  00 10 80 e5                                      str r1, [r0]
00754dc8  04 00 00 1a                                      bne #0x754de0
00754dcc  04 20 8d e5                                      str r2, [sp, #4]
00754dd0  00 30 8d e5                                      str r3, [sp]
00754dd4  57 f7 ff eb                                      bl #0x752b38
00754dd8  00 30 9d e5                                      ldr r3, [sp]
00754ddc  04 20 9d e5                                      ldr r2, [sp, #4]
00754de0  00 c0 a0 e3                                      mov ip, #0
00754de4  40 c0 84 e5                                      str ip, [r4, #0x40]
00754de8  3c c0 84 e5                                      str ip, [r4, #0x3c]
00754dec  ea ff ff ea                                      b #0x754d9c

; FUNCTION 0x00754df0, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character20get_movie_definitionEv
; demangled: gameswf::character::get_movie_definition()
; decoder-mode: arm
00754df0  10 40 2d e9                                      push {r4, lr}
00754df4  40 30 90 e5                                      ldr r3, [r0, #0x40]
00754df8  00 40 a0 e1                                      mov r4, r0
00754dfc  00 00 53 e3                                      cmp r3, #0
00754e00  12 00 00 0a                                      beq #0x754e50
00754e04  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
00754e08  04 20 d0 e5                                      ldrb r2, [r0, #4]
00754e0c  00 00 52 e3                                      cmp r2, #0
00754e10  04 00 00 0a                                      beq #0x754e28
00754e14  03 00 a0 e1                                      mov r0, r3
00754e18  00 30 93 e5                                      ldr r3, [r3]
00754e1c  0f e0 a0 e1                                      mov lr, pc
00754e20  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00754e24  10 80 bd e8                                      pop {r4, pc}
00754e28  00 10 90 e5                                      ldr r1, [r0]
00754e2c  01 10 41 e2                                      sub r1, r1, #1
00754e30  00 00 51 e3                                      cmp r1, #0
00754e34  00 10 80 e5                                      str r1, [r0]
00754e38  00 00 00 1a                                      bne #0x754e40
00754e3c  3d f7 ff eb                                      bl #0x752b38
00754e40  00 00 a0 e3                                      mov r0, #0
00754e44  40 00 84 e5                                      str r0, [r4, #0x40]
00754e48  3c 00 84 e5                                      str r0, [r4, #0x3c]
00754e4c  10 80 bd e8                                      pop {r4, pc}
00754e50  03 00 a0 e1                                      mov r0, r3
00754e54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00755cf8, declared_size=168, range_size=168, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character10set_effectERKNS_6effectE
; demangled: gameswf::character::set_effect(gameswf::effect const&)
; decoder-mode: arm
00755cf8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00755cfc  54 60 90 e5                                      ldr r6, [r0, #0x54]
00755d00  00 a0 a0 e1                                      mov sl, r0
00755d04  01 80 a0 e1                                      mov r8, r1
00755d08  00 00 56 e3                                      cmp r6, #0
00755d0c  1c 00 00 0a                                      beq #0x755d84
00755d10  00 30 98 e5                                      ldr r3, [r8]
00755d14  3c 00 86 e2                                      add r0, r6, #0x3c
00755d18  38 30 86 e5                                      str r3, [r6, #0x38]
00755d1c  08 10 98 e5                                      ldr r1, [r8, #8]
00755d20  6c ff ff eb                                      bl #0x755ad8
00755d24  40 30 96 e5                                      ldr r3, [r6, #0x40]
00755d28  00 00 53 e3                                      cmp r3, #0
00755d2c  10 00 00 da                                      ble #0x755d74
00755d30  00 50 a0 e3                                      mov r5, #0
00755d34  05 70 a0 e1                                      mov r7, r5
00755d38  3c c0 96 e5                                      ldr ip, [r6, #0x3c]
00755d3c  04 40 98 e5                                      ldr r4, [r8, #4]
00755d40  01 70 87 e2                                      add r7, r7, #1
00755d44  05 c0 8c e0                                      add ip, ip, r5
00755d48  05 40 84 e0                                      add r4, r4, r5
00755d4c  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00755d50  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00755d54  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00755d58  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00755d5c  07 00 94 e8                                      ldm r4, {r0, r1, r2}
00755d60  07 00 8c e8                                      stm ip, {r0, r1, r2}
00755d64  40 30 96 e5                                      ldr r3, [r6, #0x40]
00755d68  2c 50 85 e2                                      add r5, r5, #0x2c
00755d6c  03 00 57 e1                                      cmp r7, r3
00755d70  f0 ff ff ba                                      blt #0x755d38
00755d74  54 30 9a e5                                      ldr r3, [sl, #0x54]
00755d78  38 30 83 e2                                      add r3, r3, #0x38
00755d7c  50 30 8a e5                                      str r3, [sl, #0x50]
00755d80  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00755d84  06 10 a0 e1                                      mov r1, r6
00755d88  6c 00 a0 e3                                      mov r0, #0x6c
00755d8c  85 f3 ff eb                                      bl #0x752ba8
00755d90  00 60 a0 e1                                      mov r6, r0
00755d94  f1 f0 f2 eb                                      bl #0x412160
00755d98  54 60 8a e5                                      str r6, [sl, #0x54]
00755d9c  db ff ff ea                                      b #0x755d10

; FUNCTION 0x0075dd74, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9characterD2Ev
; demangled: gameswf::character::~character()
; decoder-mode: arm
0075dd74  10 40 2d e9                                      push {r4, lr}
0075dd78  58 30 9f e5                                      ldr r3, [pc, #0x58]
0075dd7c  58 20 9f e5                                      ldr r2, [pc, #0x58]
0075dd80  00 40 a0 e1                                      mov r4, r0
0075dd84  03 30 8f e0                                      add r3, pc, r3
0075dd88  54 00 90 e5                                      ldr r0, [r0, #0x54]
0075dd8c  02 20 93 e7                                      ldr r2, [r3, r2]
0075dd90  00 00 50 e3                                      cmp r0, #0
0075dd94  08 20 82 e2                                      add r2, r2, #8
0075dd98  00 20 84 e5                                      str r2, [r4]
0075dd9c  00 00 00 0a                                      beq #0x75dda4
0075dda0  5b fb ff eb                                      bl #0x75cb14
0075dda4  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0075dda8  00 00 50 e3                                      cmp r0, #0
0075ddac  05 00 00 0a                                      beq #0x75ddc8
0075ddb0  00 10 90 e5                                      ldr r1, [r0]
0075ddb4  01 10 41 e2                                      sub r1, r1, #1
0075ddb8  00 00 51 e3                                      cmp r1, #0
0075ddbc  00 10 80 e5                                      str r1, [r0]
0075ddc0  00 00 00 1a                                      bne #0x75ddc8
0075ddc4  5b d3 ff eb                                      bl #0x752b38
0075ddc8  04 00 a0 e1                                      mov r0, r4
0075ddcc  32 2f 00 eb                                      bl #0x769a9c
0075ddd0  04 00 a0 e1                                      mov r0, r4
0075ddd4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0075ddd8  0c 6d 23 00 e4 31 00 00                          .byte 0x0c, 0x6d, 0x23, 0x00, 0xe4, 0x31, 0x00, 0x00

; FUNCTION 0x0075e3a8, declared_size=1540, range_size=1540, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character13do_mouse_dragEv
; demangled: gameswf::character::do_mouse_drag()
; decoder-mode: arm
0075e3a8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0075e3ac  00 30 a0 e3                                      mov r3, #0
0075e3b0  94 d0 4d e2                                      sub sp, sp, #0x94
0075e3b4  00 20 a0 e3                                      mov r2, #0
0075e3b8  fe 15 a0 e3                                      mov r1, #0x3f800000
0075e3bc  18 10 8d e5                                      str r1, [sp, #0x18]
0075e3c0  14 10 8d e5                                      str r1, [sp, #0x14]
0075e3c4  0a 20 cd e5                                      strb r2, [sp, #0xa]
0075e3c8  20 30 8d e5                                      str r3, [sp, #0x20]
0075e3cc  04 20 8d e5                                      str r2, [sp, #4]
0075e3d0  08 20 cd e5                                      strb r2, [sp, #8]
0075e3d4  09 20 cd e5                                      strb r2, [sp, #9]
0075e3d8  0c 30 8d e5                                      str r3, [sp, #0xc]
0075e3dc  10 30 8d e5                                      str r3, [sp, #0x10]
0075e3e0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0075e3e4  04 60 8d e2                                      add r6, sp, #4
0075e3e8  00 30 90 e5                                      ldr r3, [r0]
0075e3ec  06 10 a0 e1                                      mov r1, r6
0075e3f0  00 40 a0 e1                                      mov r4, r0
0075e3f4  0f e0 a0 e1                                      mov lr, pc
0075e3f8  dc f0 93 e5                                      ldr pc, [r3, #0xdc]
0075e3fc  04 50 9d e5                                      ldr r5, [sp, #4]
0075e400  04 00 55 e1                                      cmp r5, r4
0075e404  01 00 00 0a                                      beq #0x75e410
0075e408  94 d0 8d e2                                      add sp, sp, #0x94
0075e40c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0075e410  01 30 a0 e3                                      mov r3, #1
0075e414  9d 30 c5 e5                                      strb r3, [r5, #0x9d]
0075e418  05 00 a0 e1                                      mov r0, r5
0075e41c  00 30 95 e5                                      ldr r3, [r5]
0075e420  0f e0 a0 e1                                      mov lr, pc
0075e424  34 f1 93 e5                                      ldr pc, [r3, #0x134]
0075e428  8c 70 8d e2                                      add r7, sp, #0x8c
0075e42c  88 80 8d e2                                      add r8, sp, #0x88
0075e430  84 30 8d e2                                      add r3, sp, #0x84
0075e434  00 c0 90 e5                                      ldr ip, [r0]
0075e438  07 10 a0 e1                                      mov r1, r7
0075e43c  08 20 a0 e1                                      mov r2, r8
0075e440  05 a0 a0 e1                                      mov sl, r5
0075e444  0f e0 a0 e1                                      mov lr, pc
0075e448  70 f0 9c e5                                      ldr pc, [ip, #0x70]
0075e44c  54 30 9a e5                                      ldr r3, [sl, #0x54]
0075e450  00 00 53 e3                                      cmp r3, #0
0075e454  02 00 00 0a                                      beq #0x75e464
0075e458  68 00 93 e5                                      ldr r0, [r3, #0x68]
0075e45c  00 00 50 e3                                      cmp r0, #0
0075e460  aa 00 00 1a                                      bne #0x75e710
0075e464  40 30 9a e5                                      ldr r3, [sl, #0x40]
0075e468  00 00 53 e3                                      cmp r3, #0
0075e46c  11 00 00 0a                                      beq #0x75e4b8
0075e470  3c 00 9a e5                                      ldr r0, [sl, #0x3c]
0075e474  04 20 d0 e5                                      ldrb r2, [r0, #4]
0075e478  00 00 52 e3                                      cmp r2, #0
0075e47c  04 00 00 0a                                      beq #0x75e494
0075e480  03 a0 a0 e1                                      mov sl, r3
0075e484  54 30 9a e5                                      ldr r3, [sl, #0x54]
0075e488  00 00 53 e3                                      cmp r3, #0
0075e48c  f1 ff ff 1a                                      bne #0x75e458
0075e490  f3 ff ff ea                                      b #0x75e464
0075e494  00 10 90 e5                                      ldr r1, [r0]
0075e498  01 10 41 e2                                      sub r1, r1, #1
0075e49c  00 00 51 e3                                      cmp r1, #0
0075e4a0  00 10 80 e5                                      str r1, [r0]
0075e4a4  00 00 00 1a                                      bne #0x75e4ac
0075e4a8  a2 d1 ff eb                                      bl #0x752b38
0075e4ac  00 30 a0 e3                                      mov r3, #0
0075e4b0  40 30 8a e5                                      str r3, [sl, #0x40]
0075e4b4  3c 30 8a e5                                      str r3, [sl, #0x3c]
0075e4b8  88 00 9d e5                                      ldr r0, [sp, #0x88]
0075e4bc  28 c1 ee eb                                      bl #0x30e964
0075e4c0  41 14 a0 e3                                      mov r1, #0x41000000
0075e4c4  0a 16 81 e2                                      add r1, r1, #0xa00000
0075e4c8  27 c2 ee eb                                      bl #0x30ed6c
0075e4cc  00 70 a0 e1                                      mov r7, r0
0075e4d0  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
0075e4d4  22 c1 ee eb                                      bl #0x30e964
0075e4d8  41 14 a0 e3                                      mov r1, #0x41000000
0075e4dc  0a 16 81 e2                                      add r1, r1, #0xa00000
0075e4e0  21 c2 ee eb                                      bl #0x30ed6c
0075e4e4  7c 00 8d e5                                      str r0, [sp, #0x7c]
0075e4e8  05 00 a0 e1                                      mov r0, r5
0075e4ec  80 70 8d e5                                      str r7, [sp, #0x80]
0075e4f0  9f d6 ff eb                                      bl #0x753f74
0075e4f4  54 c0 8d e2                                      add ip, sp, #0x54
0075e4f8  00 e0 a0 e1                                      mov lr, r0
0075e4fc  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0075e500  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0075e504  03 00 9e e8                                      ldm lr, {r0, r1}
0075e508  7c 70 8d e2                                      add r7, sp, #0x7c
0075e50c  00 30 a0 e3                                      mov r3, #0
0075e510  03 00 8c e8                                      stm ip, {r0, r1}
0075e514  74 10 8d e2                                      add r1, sp, #0x74
0075e518  54 00 8d e2                                      add r0, sp, #0x54
0075e51c  07 20 a0 e1                                      mov r2, r7
0075e520  78 30 8d e5                                      str r3, [sp, #0x78]
0075e524  74 30 8d e5                                      str r3, [sp, #0x74]
0075e528  13 d6 ff eb                                      bl #0x753d7c
0075e52c  09 30 dd e5                                      ldrb r3, [sp, #9]
0075e530  00 00 53 e3                                      cmp r3, #0
0075e534  79 00 00 1a                                      bne #0x75e720
0075e538  08 30 dd e5                                      ldrb r3, [sp, #8]
0075e53c  00 00 53 e3                                      cmp r3, #0
0075e540  02 01 00 0a                                      beq #0x75e950
0075e544  4c c0 95 e5                                      ldr ip, [r5, #0x4c]
0075e548  24 40 8d e2                                      add r4, sp, #0x24
0075e54c  04 e0 a0 e1                                      mov lr, r4
0075e550  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0075e554  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0075e558  03 00 9c e8                                      ldm ip, {r0, r1}
0075e55c  03 00 8e e8                                      stm lr, {r0, r1}
0075e560  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0075e564  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0075e568  8f bf ee eb                                      bl #0x30e3ac
0075e56c  02 15 e0 e3                                      mvn r1, #0x800000
0075e570  00 70 a0 e1                                      mov r7, r0
0075e574  ce bf ee eb                                      bl #0x30e4b4
0075e578  00 00 50 e3                                      cmp r0, #0
0075e57c  57 00 00 1a                                      bne #0x75e6e0
0075e580  00 70 a0 e3                                      mov r7, #0
0075e584  20 10 9d e5                                      ldr r1, [sp, #0x20]
0075e588  80 00 9d e5                                      ldr r0, [sp, #0x80]
0075e58c  2c 70 8d e5                                      str r7, [sp, #0x2c]
0075e590  85 bf ee eb                                      bl #0x30e3ac
0075e594  02 15 e0 e3                                      mvn r1, #0x800000
0075e598  00 60 a0 e1                                      mov r6, r0
0075e59c  c4 bf ee eb                                      bl #0x30e4b4
0075e5a0  00 00 50 e3                                      cmp r0, #0
0075e5a4  46 00 00 1a                                      bne #0x75e6c4
0075e5a8  00 60 a0 e3                                      mov r6, #0
0075e5ac  0a 30 dd e5                                      ldrb r3, [sp, #0xa]
0075e5b0  38 60 8d e5                                      str r6, [sp, #0x38]
0075e5b4  00 00 53 e3                                      cmp r3, #0
0075e5b8  3d 00 00 0a                                      beq #0x75e6b4
0075e5bc  41 14 a0 e3                                      mov r1, #0x41000000
0075e5c0  0a 16 81 e2                                      add r1, r1, #0xa00000
0075e5c4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075e5c8  e7 c1 ee eb                                      bl #0x30ed6c
0075e5cc  41 14 a0 e3                                      mov r1, #0x41000000
0075e5d0  00 80 a0 e1                                      mov r8, r0
0075e5d4  0a 16 81 e2                                      add r1, r1, #0xa00000
0075e5d8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0075e5dc  e2 c1 ee eb                                      bl #0x30ed6c
0075e5e0  07 10 a0 e1                                      mov r1, r7
0075e5e4  00 a0 a0 e1                                      mov sl, r0
0075e5e8  42 bf ee eb                                      bl #0x30e2f8
0075e5ec  00 00 50 e3                                      cmp r0, #0
0075e5f0  0a 70 a0 01                                      moveq r7, sl
0075e5f4  07 10 a0 e1                                      mov r1, r7
0075e5f8  08 00 a0 e1                                      mov r0, r8
0075e5fc  42 c0 ee eb                                      bl #0x30e70c
0075e600  00 00 50 e3                                      cmp r0, #0
0075e604  08 70 a0 01                                      moveq r7, r8
0075e608  07 00 a0 e1                                      mov r0, r7
0075e60c  02 15 e0 e3                                      mvn r1, #0x800000
0075e610  a7 bf ee eb                                      bl #0x30e4b4
0075e614  00 00 50 e3                                      cmp r0, #0
0075e618  3a 00 00 0a                                      beq #0x75e708
0075e61c  02 11 e0 e3                                      mvn r1, #0x80000000
0075e620  07 00 a0 e1                                      mov r0, r7
0075e624  02 15 41 e2                                      sub r1, r1, #0x800000
0075e628  df c0 ee eb                                      bl #0x30e9ac
0075e62c  00 00 50 e3                                      cmp r0, #0
0075e630  34 00 00 0a                                      beq #0x75e708
0075e634  41 14 a0 e3                                      mov r1, #0x41000000
0075e638  0a 16 81 e2                                      add r1, r1, #0xa00000
0075e63c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0075e640  2c 70 8d e5                                      str r7, [sp, #0x2c]
0075e644  c8 c1 ee eb                                      bl #0x30ed6c
0075e648  41 14 a0 e3                                      mov r1, #0x41000000
0075e64c  00 70 a0 e1                                      mov r7, r0
0075e650  0a 16 81 e2                                      add r1, r1, #0xa00000
0075e654  18 00 9d e5                                      ldr r0, [sp, #0x18]
0075e658  c3 c1 ee eb                                      bl #0x30ed6c
0075e65c  06 10 a0 e1                                      mov r1, r6
0075e660  00 80 a0 e1                                      mov r8, r0
0075e664  23 bf ee eb                                      bl #0x30e2f8
0075e668  00 00 50 e3                                      cmp r0, #0
0075e66c  08 60 a0 01                                      moveq r6, r8
0075e670  06 10 a0 e1                                      mov r1, r6
0075e674  07 00 a0 e1                                      mov r0, r7
0075e678  23 c0 ee eb                                      bl #0x30e70c
0075e67c  00 00 50 e3                                      cmp r0, #0
0075e680  07 60 a0 01                                      moveq r6, r7
0075e684  06 00 a0 e1                                      mov r0, r6
0075e688  02 15 e0 e3                                      mvn r1, #0x800000
0075e68c  88 bf ee eb                                      bl #0x30e4b4
0075e690  00 00 50 e3                                      cmp r0, #0
0075e694  18 00 00 0a                                      beq #0x75e6fc
0075e698  02 11 e0 e3                                      mvn r1, #0x80000000
0075e69c  06 00 a0 e1                                      mov r0, r6
0075e6a0  02 15 41 e2                                      sub r1, r1, #0x800000
0075e6a4  c0 c0 ee eb                                      bl #0x30e9ac
0075e6a8  00 00 50 e3                                      cmp r0, #0
0075e6ac  12 00 00 0a                                      beq #0x75e6fc
0075e6b0  38 60 8d e5                                      str r6, [sp, #0x38]
0075e6b4  05 00 a0 e1                                      mov r0, r5
0075e6b8  04 10 a0 e1                                      mov r1, r4
0075e6bc  cd ce f2 eb                                      bl #0x4121f8
0075e6c0  50 ff ff ea                                      b #0x75e408
0075e6c4  02 11 e0 e3                                      mvn r1, #0x80000000
0075e6c8  06 00 a0 e1                                      mov r0, r6
0075e6cc  02 15 41 e2                                      sub r1, r1, #0x800000
0075e6d0  b5 c0 ee eb                                      bl #0x30e9ac
0075e6d4  00 00 50 e3                                      cmp r0, #0
0075e6d8  b3 ff ff 1a                                      bne #0x75e5ac
0075e6dc  b1 ff ff ea                                      b #0x75e5a8
0075e6e0  02 11 e0 e3                                      mvn r1, #0x80000000
0075e6e4  07 00 a0 e1                                      mov r0, r7
0075e6e8  02 15 41 e2                                      sub r1, r1, #0x800000
0075e6ec  ae c0 ee eb                                      bl #0x30e9ac
0075e6f0  00 00 50 e3                                      cmp r0, #0
0075e6f4  a2 ff ff 1a                                      bne #0x75e584
0075e6f8  a0 ff ff ea                                      b #0x75e580
0075e6fc  00 60 a0 e3                                      mov r6, #0
0075e700  38 60 8d e5                                      str r6, [sp, #0x38]
0075e704  ea ff ff ea                                      b #0x75e6b4
0075e708  00 70 a0 e3                                      mov r7, #0
0075e70c  c8 ff ff ea                                      b #0x75e634
0075e710  07 10 a0 e1                                      mov r1, r7
0075e714  08 20 a0 e1                                      mov r2, r8
0075e718  a9 63 00 eb                                      bl #0x7775c4
0075e71c  65 ff ff ea                                      b #0x75e4b8
0075e720  3c 40 8d e2                                      add r4, sp, #0x3c
0075e724  00 20 a0 e3                                      mov r2, #0
0075e728  08 30 84 e2                                      add r3, r4, #8
0075e72c  04 20 83 e4                                      str r2, [r3], #4
0075e730  04 20 83 e4                                      str r2, [r3], #4
0075e734  04 20 83 e4                                      str r2, [r3], #4
0075e738  fe 15 a0 e3                                      mov r1, #0x3f800000
0075e73c  00 20 83 e5                                      str r2, [r3]
0075e740  40 20 8d e5                                      str r2, [sp, #0x40]
0075e744  4c 10 8d e5                                      str r1, [sp, #0x4c]
0075e748  3c 10 8d e5                                      str r1, [sp, #0x3c]
0075e74c  40 00 95 e5                                      ldr r0, [r5, #0x40]
0075e750  02 00 50 e1                                      cmp r0, r2
0075e754  0a 00 00 0a                                      beq #0x75e784
0075e758  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0075e75c  04 60 d3 e5                                      ldrb r6, [r3, #4]
0075e760  02 00 56 e1                                      cmp r6, r2
0075e764  8b 00 00 0a                                      beq #0x75e998
0075e768  01 d6 ff eb                                      bl #0x753f74
0075e76c  04 e0 a0 e1                                      mov lr, r4
0075e770  00 c0 a0 e1                                      mov ip, r0
0075e774  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0075e778  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0075e77c  03 00 9c e8                                      ldm ip, {r0, r1}
0075e780  03 00 8e e8                                      stm lr, {r0, r1}
0075e784  00 30 a0 e3                                      mov r3, #0
0075e788  04 00 a0 e1                                      mov r0, r4
0075e78c  07 20 a0 e1                                      mov r2, r7
0075e790  6c 10 8d e2                                      add r1, sp, #0x6c
0075e794  70 30 8d e5                                      str r3, [sp, #0x70]
0075e798  6c 30 8d e5                                      str r3, [sp, #0x6c]
0075e79c  76 d5 ff eb                                      bl #0x753d7c
0075e7a0  4c c0 95 e5                                      ldr ip, [r5, #0x4c]
0075e7a4  24 40 8d e2                                      add r4, sp, #0x24
0075e7a8  04 e0 a0 e1                                      mov lr, r4
0075e7ac  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0075e7b0  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0075e7b4  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
0075e7b8  03 00 9c e8                                      ldm ip, {r0, r1}
0075e7bc  03 00 8e e8                                      stm lr, {r0, r1}
0075e7c0  02 15 e0 e3                                      mvn r1, #0x800000
0075e7c4  06 00 a0 e1                                      mov r0, r6
0075e7c8  39 bf ee eb                                      bl #0x30e4b4
0075e7cc  00 00 50 e3                                      cmp r0, #0
0075e7d0  57 00 00 0a                                      beq #0x75e934
0075e7d4  02 11 e0 e3                                      mvn r1, #0x80000000
0075e7d8  06 00 a0 e1                                      mov r0, r6
0075e7dc  02 15 41 e2                                      sub r1, r1, #0x800000
0075e7e0  71 c0 ee eb                                      bl #0x30e9ac
0075e7e4  00 00 50 e3                                      cmp r0, #0
0075e7e8  51 00 00 0a                                      beq #0x75e934
0075e7ec  70 70 9d e5                                      ldr r7, [sp, #0x70]
0075e7f0  02 15 e0 e3                                      mvn r1, #0x800000
0075e7f4  2c 60 8d e5                                      str r6, [sp, #0x2c]
0075e7f8  07 00 a0 e1                                      mov r0, r7
0075e7fc  2c bf ee eb                                      bl #0x30e4b4
0075e800  00 00 50 e3                                      cmp r0, #0
0075e804  48 00 00 0a                                      beq #0x75e92c
0075e808  02 11 e0 e3                                      mvn r1, #0x80000000
0075e80c  07 00 a0 e1                                      mov r0, r7
0075e810  02 15 41 e2                                      sub r1, r1, #0x800000
0075e814  64 c0 ee eb                                      bl #0x30e9ac
0075e818  00 00 50 e3                                      cmp r0, #0
0075e81c  42 00 00 0a                                      beq #0x75e92c
0075e820  0a 30 dd e5                                      ldrb r3, [sp, #0xa]
0075e824  38 70 8d e5                                      str r7, [sp, #0x38]
0075e828  00 00 53 e3                                      cmp r3, #0
0075e82c  a0 ff ff 0a                                      beq #0x75e6b4
0075e830  41 14 a0 e3                                      mov r1, #0x41000000
0075e834  0a 16 81 e2                                      add r1, r1, #0xa00000
0075e838  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0075e83c  4a c1 ee eb                                      bl #0x30ed6c
0075e840  41 14 a0 e3                                      mov r1, #0x41000000
0075e844  00 80 a0 e1                                      mov r8, r0
0075e848  0a 16 81 e2                                      add r1, r1, #0xa00000
0075e84c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0075e850  45 c1 ee eb                                      bl #0x30ed6c
0075e854  06 10 a0 e1                                      mov r1, r6
0075e858  00 a0 a0 e1                                      mov sl, r0
0075e85c  a5 be ee eb                                      bl #0x30e2f8
0075e860  00 00 50 e3                                      cmp r0, #0
0075e864  0a 60 a0 01                                      moveq r6, sl
0075e868  06 10 a0 e1                                      mov r1, r6
0075e86c  08 00 a0 e1                                      mov r0, r8
0075e870  a5 bf ee eb                                      bl #0x30e70c
0075e874  00 00 50 e3                                      cmp r0, #0
0075e878  08 60 a0 01                                      moveq r6, r8
0075e87c  06 00 a0 e1                                      mov r0, r6
0075e880  02 15 e0 e3                                      mvn r1, #0x800000
0075e884  0a bf ee eb                                      bl #0x30e4b4
0075e888  00 00 50 e3                                      cmp r0, #0
0075e88c  2d 00 00 0a                                      beq #0x75e948
0075e890  02 11 e0 e3                                      mvn r1, #0x80000000
0075e894  06 00 a0 e1                                      mov r0, r6
0075e898  02 15 41 e2                                      sub r1, r1, #0x800000
0075e89c  42 c0 ee eb                                      bl #0x30e9ac
0075e8a0  00 00 50 e3                                      cmp r0, #0
0075e8a4  27 00 00 0a                                      beq #0x75e948
0075e8a8  41 14 a0 e3                                      mov r1, #0x41000000
0075e8ac  0a 16 81 e2                                      add r1, r1, #0xa00000
0075e8b0  10 00 9d e5                                      ldr r0, [sp, #0x10]
0075e8b4  2c 60 8d e5                                      str r6, [sp, #0x2c]
0075e8b8  2b c1 ee eb                                      bl #0x30ed6c
0075e8bc  41 14 a0 e3                                      mov r1, #0x41000000
0075e8c0  00 60 a0 e1                                      mov r6, r0
0075e8c4  0a 16 81 e2                                      add r1, r1, #0xa00000
0075e8c8  18 00 9d e5                                      ldr r0, [sp, #0x18]
0075e8cc  26 c1 ee eb                                      bl #0x30ed6c
0075e8d0  07 10 a0 e1                                      mov r1, r7
0075e8d4  00 80 a0 e1                                      mov r8, r0
0075e8d8  86 be ee eb                                      bl #0x30e2f8
0075e8dc  00 00 50 e3                                      cmp r0, #0
0075e8e0  08 70 a0 01                                      moveq r7, r8
0075e8e4  07 10 a0 e1                                      mov r1, r7
0075e8e8  06 00 a0 e1                                      mov r0, r6
0075e8ec  86 bf ee eb                                      bl #0x30e70c
0075e8f0  00 00 50 e3                                      cmp r0, #0
0075e8f4  06 70 a0 01                                      moveq r7, r6
0075e8f8  07 00 a0 e1                                      mov r0, r7
0075e8fc  02 15 e0 e3                                      mvn r1, #0x800000
0075e900  eb be ee eb                                      bl #0x30e4b4
0075e904  00 00 50 e3                                      cmp r0, #0
0075e908  0b 00 00 0a                                      beq #0x75e93c
0075e90c  02 11 e0 e3                                      mvn r1, #0x80000000
0075e910  07 00 a0 e1                                      mov r0, r7
0075e914  02 15 41 e2                                      sub r1, r1, #0x800000
0075e918  23 c0 ee eb                                      bl #0x30e9ac
0075e91c  00 00 50 e3                                      cmp r0, #0
0075e920  05 00 00 0a                                      beq #0x75e93c
0075e924  38 70 8d e5                                      str r7, [sp, #0x38]
0075e928  61 ff ff ea                                      b #0x75e6b4
0075e92c  00 70 a0 e3                                      mov r7, #0
0075e930  ba ff ff ea                                      b #0x75e820
0075e934  00 60 a0 e3                                      mov r6, #0
0075e938  ab ff ff ea                                      b #0x75e7ec
0075e93c  00 70 a0 e3                                      mov r7, #0
0075e940  38 70 8d e5                                      str r7, [sp, #0x38]
0075e944  5a ff ff ea                                      b #0x75e6b4
0075e948  00 60 a0 e3                                      mov r6, #0
0075e94c  d5 ff ff ea                                      b #0x75e8a8
0075e950  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
0075e954  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0075e958  08 10 93 e5                                      ldr r1, [r3, #8]
0075e95c  92 be ee eb                                      bl #0x30e3ac
0075e960  1c 00 8d e5                                      str r0, [sp, #0x1c]
0075e964  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
0075e968  80 00 9d e5                                      ldr r0, [sp, #0x80]
0075e96c  14 10 93 e5                                      ldr r1, [r3, #0x14]
0075e970  8d be ee eb                                      bl #0x30e3ac
0075e974  01 30 a0 e3                                      mov r3, #1
0075e978  20 00 8d e5                                      str r0, [sp, #0x20]
0075e97c  08 30 cd e5                                      strb r3, [sp, #8]
0075e980  04 00 a0 e1                                      mov r0, r4
0075e984  06 10 a0 e1                                      mov r1, r6
0075e988  00 30 94 e5                                      ldr r3, [r4]
0075e98c  0f e0 a0 e1                                      mov lr, pc
0075e990  e0 f0 93 e5                                      ldr pc, [r3, #0xe0]
0075e994  ea fe ff ea                                      b #0x75e544
0075e998  3c 00 85 e2                                      add r0, r5, #0x3c
0075e99c  06 10 a0 e1                                      mov r1, r6
0075e9a0  37 05 f3 eb                                      bl #0x41fe84
0075e9a4  40 60 85 e5                                      str r6, [r5, #0x40]
0075e9a8  75 ff ff ea                                      b #0x75e784

; FUNCTION 0x007750e8, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::character
; alias: _ZN7gameswf9character19notify_need_advanceEv
; demangled: gameswf::character::notify_need_advance()
; decoder-mode: arm
007750e8  10 40 2d e9                                      push {r4, lr}
007750ec  00 40 a0 e1                                      mov r4, r0
007750f0  40 30 94 e5                                      ldr r3, [r4, #0x40]
007750f4  01 10 a0 e3                                      mov r1, #1
007750f8  9d 10 c4 e5                                      strb r1, [r4, #0x9d]
007750fc  00 00 53 e3                                      cmp r3, #0
00775100  08 00 00 0a                                      beq #0x775128
00775104  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00775108  04 20 d0 e5                                      ldrb r2, [r0, #4]
0077510c  00 00 52 e3                                      cmp r2, #0
00775110  05 00 00 0a                                      beq #0x77512c
00775114  03 40 a0 e1                                      mov r4, r3
00775118  40 30 94 e5                                      ldr r3, [r4, #0x40]
0077511c  9d 10 c4 e5                                      strb r1, [r4, #0x9d]
00775120  00 00 53 e3                                      cmp r3, #0
00775124  f6 ff ff 1a                                      bne #0x775104
00775128  10 80 bd e8                                      pop {r4, pc}
0077512c  00 10 90 e5                                      ldr r1, [r0]
00775130  01 10 41 e2                                      sub r1, r1, #1
00775134  00 00 51 e3                                      cmp r1, #0
00775138  00 10 80 e5                                      str r1, [r0]
0077513c  00 00 00 1a                                      bne #0x775144
00775140  7c 76 ff eb                                      bl #0x752b38
00775144  00 30 a0 e3                                      mov r3, #0
00775148  40 30 84 e5                                      str r3, [r4, #0x40]
0077514c  3c 30 84 e5                                      str r3, [r4, #0x3c]
00775150  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007804d4, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::character
; alias: _ZNK7gameswf9character10get_parentEv
; demangled: gameswf::character::get_parent() const
; decoder-mode: arm
007804d4  10 40 2d e9                                      push {r4, lr}
007804d8  00 40 a0 e1                                      mov r4, r0
007804dc  40 00 90 e5                                      ldr r0, [r0, #0x40]
007804e0  00 00 50 e3                                      cmp r0, #0
007804e4  03 00 00 0a                                      beq #0x7804f8
007804e8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
007804ec  04 20 d3 e5                                      ldrb r2, [r3, #4]
007804f0  00 00 52 e3                                      cmp r2, #0
007804f4  00 00 00 0a                                      beq #0x7804fc
007804f8  10 80 bd e8                                      pop {r4, pc}
007804fc  00 10 93 e5                                      ldr r1, [r3]
00780500  01 10 41 e2                                      sub r1, r1, #1
00780504  00 00 51 e3                                      cmp r1, #0
00780508  00 10 83 e5                                      str r1, [r3]
0078050c  01 00 00 1a                                      bne #0x780518
00780510  03 00 a0 e1                                      mov r0, r3
00780514  87 49 ff eb                                      bl #0x752b38
00780518  00 00 a0 e3                                      mov r0, #0
0078051c  40 00 84 e5                                      str r0, [r4, #0x40]
00780520  3c 00 84 e5                                      str r0, [r4, #0x3c]
00780524  10 80 bd e8                                      pop {r4, pc}
