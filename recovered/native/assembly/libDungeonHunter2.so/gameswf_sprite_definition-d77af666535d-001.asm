; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075f5d0, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition25create_character_instanceEPNS_9characterEi
; demangled: gameswf::sprite_definition::create_character_instance(gameswf::character*, int)
; decoder-mode: arm
0075f5d0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0075f5d4  1c 70 90 e5                                      ldr r7, [r0, #0x1c]
0075f5d8  0c d0 4d e2                                      sub sp, sp, #0xc
0075f5dc  00 50 a0 e1                                      mov r5, r0
0075f5e0  00 00 57 e3                                      cmp r7, #0
0075f5e4  01 60 a0 e1                                      mov r6, r1
0075f5e8  02 40 a0 e1                                      mov r4, r2
0075f5ec  03 00 00 0a                                      beq #0x75f600
0075f5f0  18 00 90 e5                                      ldr r0, [r0, #0x18]
0075f5f4  04 30 d0 e5                                      ldrb r3, [r0, #4]
0075f5f8  00 00 53 e3                                      cmp r3, #0
0075f5fc  0b 00 00 0a                                      beq #0x75f630
0075f600  00 30 96 e5                                      ldr r3, [r6]
0075f604  06 00 a0 e1                                      mov r0, r6
0075f608  0f e0 a0 e1                                      mov lr, pc
0075f60c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0075f610  05 10 a0 e1                                      mov r1, r5
0075f614  00 20 a0 e1                                      mov r2, r0
0075f618  06 30 a0 e1                                      mov r3, r6
0075f61c  07 00 a0 e1                                      mov r0, r7
0075f620  00 40 8d e5                                      str r4, [sp]
0075f624  b1 35 00 eb                                      bl #0x76ccf0
0075f628  0c d0 8d e2                                      add sp, sp, #0xc
0075f62c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0075f630  00 10 90 e5                                      ldr r1, [r0]
0075f634  01 10 41 e2                                      sub r1, r1, #1
0075f638  00 00 51 e3                                      cmp r1, #0
0075f63c  00 10 80 e5                                      str r1, [r0]
0075f640  00 00 00 1a                                      bne #0x75f648
0075f644  3b cd ff eb                                      bl #0x752b38
0075f648  00 70 a0 e3                                      mov r7, #0
0075f64c  18 70 85 e5                                      str r7, [r5, #0x18]
0075f650  1c 70 85 e5                                      str r7, [r5, #0x1c]
0075f654  e9 ff ff ea                                      b #0x75f600

; FUNCTION 0x007830f4, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZNK7gameswf17sprite_definition2isEi
; demangled: gameswf::sprite_definition::is(int) const
; decoder-mode: arm
007830f4  0b 00 51 e3                                      cmp r1, #0xb
007830f8  05 00 00 0a                                      beq #0x783114
007830fc  09 00 51 e3                                      cmp r1, #9
00783100  03 00 00 0a                                      beq #0x783114
00783104  0a 00 51 e3                                      cmp r1, #0xa
00783108  00 00 a0 13                                      movne r0, #0
0078310c  01 00 a0 03                                      moveq r0, #1
00783110  1e ff 2f e1                                      bx lr
00783114  01 00 a0 e3                                      mov r0, #1
00783118  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078311c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZNK7gameswf17sprite_definition16get_width_pixelsEv
; demangled: gameswf::sprite_definition::get_width_pixels() const
; decoder-mode: arm
0078311c  fe 05 a0 e3                                      mov r0, #0x3f800000
00783120  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783124, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZNK7gameswf17sprite_definition17get_height_pixelsEv
; demangled: gameswf::sprite_definition::get_height_pixels() const
; decoder-mode: arm
00783124  fe 05 a0 e3                                      mov r0, #0x3f800000
00783128  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078312c, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZNK7gameswf17sprite_definition14get_frame_rateEv
; demangled: gameswf::sprite_definition::get_frame_rate() const
; decoder-mode: arm
0078312c  10 40 2d e9                                      push {r4, lr}
00783130  44 30 90 e5                                      ldr r3, [r0, #0x44]
00783134  00 00 53 e3                                      cmp r3, #0
00783138  04 00 00 0a                                      beq #0x783150
0078313c  03 00 a0 e1                                      mov r0, r3
00783140  00 30 93 e5                                      ldr r3, [r3]
00783144  0f e0 a0 e1                                      mov lr, pc
00783148  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0078314c  10 80 bd e8                                      pop {r4, pc}
00783150  00 00 a0 e3                                      mov r0, #0
00783154  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783158, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZNK7gameswf17sprite_definition11get_versionEv
; demangled: gameswf::sprite_definition::get_version() const
; decoder-mode: arm
00783158  10 40 2d e9                                      push {r4, lr}
0078315c  44 30 90 e5                                      ldr r3, [r0, #0x44]
00783160  00 00 53 e3                                      cmp r3, #0
00783164  04 00 00 0a                                      beq #0x78317c
00783168  03 00 a0 e1                                      mov r0, r3
0078316c  00 30 93 e5                                      ldr r3, [r3]
00783170  0f e0 a0 e1                                      mov lr, pc
00783174  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00783178  10 80 bd e8                                      pop {r4, pc}
0078317c  03 00 a0 e1                                      mov r0, r3
00783180  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783184, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition7add_abcERNS_9tu_stringEPNS_7abc_defE
; demangled: gameswf::sprite_definition::add_abc(gameswf::tu_string&, gameswf::abc_def*)
; decoder-mode: arm
00783184  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783188, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition16add_symbol_classEiRKNS_9tu_stringE
; demangled: gameswf::sprite_definition::add_symbol_class(int, gameswf::tu_string const&)
; decoder-mode: arm
00783188  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078318c, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition9add_sceneEiRKNS_9tu_stringE
; demangled: gameswf::sprite_definition::add_scene(int, gameswf::tu_string const&)
; decoder-mode: arm
0078318c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783190, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition15add_frame_labelEiRKNS_9tu_stringE
; demangled: gameswf::sprite_definition::add_frame_label(int, gameswf::tu_string const&)
; decoder-mode: arm
00783190  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783194, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition8get_fontEi
; demangled: gameswf::sprite_definition::get_font(int)
; decoder-mode: arm
00783194  10 40 2d e9                                      push {r4, lr}
00783198  44 30 90 e5                                      ldr r3, [r0, #0x44]
0078319c  03 00 a0 e1                                      mov r0, r3
007831a0  00 30 93 e5                                      ldr r3, [r3]
007831a4  0f e0 a0 e1                                      mov lr, pc
007831a8  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
007831ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007831b0, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition15set_jpeg_loaderEPNS_4jpeg5inputE
; demangled: gameswf::sprite_definition::set_jpeg_loader(gameswf::jpeg::input*)
; decoder-mode: arm
007831b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007831b4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition15get_jpeg_loaderEv
; demangled: gameswf::sprite_definition::get_jpeg_loader()
; decoder-mode: arm
007831b4  00 00 a0 e3                                      mov r0, #0
007831b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007831bc, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition20get_bitmap_characterEi
; demangled: gameswf::sprite_definition::get_bitmap_character(int)
; decoder-mode: arm
007831bc  10 40 2d e9                                      push {r4, lr}
007831c0  44 30 90 e5                                      ldr r3, [r0, #0x44]
007831c4  03 00 a0 e1                                      mov r0, r3
007831c8  00 30 93 e5                                      ldr r3, [r3]
007831cc  0f e0 a0 e1                                      mov lr, pc
007831d0  98 f0 93 e5                                      ldr pc, [r3, #0x98]
007831d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007831d8, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition16get_sound_sampleEi
; demangled: gameswf::sprite_definition::get_sound_sample(int)
; decoder-mode: arm
007831d8  10 40 2d e9                                      push {r4, lr}
007831dc  44 30 90 e5                                      ldr r3, [r0, #0x44]
007831e0  03 00 a0 e1                                      mov r0, r3
007831e4  00 30 93 e5                                      ldr r3, [r3]
007831e8  0f e0 a0 e1                                      mov lr, pc
007831ec  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
007831f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007831f4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZNK7gameswf17sprite_definition18get_create_bitmapsEv
; demangled: gameswf::sprite_definition::get_create_bitmaps() const
; decoder-mode: arm
007831f4  00 00 a0 e3                                      mov r0, #0
007831f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007831fc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZNK7gameswf17sprite_definition22get_create_font_shapesEv
; demangled: gameswf::sprite_definition::get_create_font_shapes() const
; decoder-mode: arm
007831fc  00 00 a0 e3                                      mov r0, #0
00783200  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783204, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZNK7gameswf17sprite_definition21get_bitmap_info_countEv
; demangled: gameswf::sprite_definition::get_bitmap_info_count() const
; decoder-mode: arm
00783204  00 00 a0 e3                                      mov r0, #0
00783208  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078320c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZNK7gameswf17sprite_definition15get_bitmap_infoEi
; demangled: gameswf::sprite_definition::get_bitmap_info(int) const
; decoder-mode: arm
0078320c  00 00 a0 e3                                      mov r0, #0
00783210  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783214, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition15add_bitmap_infoEPNS_11bitmap_infoE
; demangled: gameswf::sprite_definition::add_bitmap_info(gameswf::bitmap_info*)
; decoder-mode: arm
00783214  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783218, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition21get_exported_resourceERKNS_9tu_stringE
; demangled: gameswf::sprite_definition::get_exported_resource(gameswf::tu_string const&)
; decoder-mode: arm
00783218  10 40 2d e9                                      push {r4, lr}
0078321c  44 30 90 e5                                      ldr r3, [r0, #0x44]
00783220  03 00 a0 e1                                      mov r0, r3
00783224  00 30 93 e5                                      ldr r3, [r3]
00783228  0f e0 a0 e1                                      mov lr, pc
0078322c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00783230  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783234, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition10add_importERKNS_9tu_stringEiS3_
; demangled: gameswf::sprite_definition::add_import(gameswf::tu_string const&, int, gameswf::tu_string const&)
; decoder-mode: arm
00783234  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783238, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition21visit_imported_moviesEPNS_16movie_definition14import_visitorE
; demangled: gameswf::sprite_definition::visit_imported_movies(gameswf::movie_definition::import_visitor*)
; decoder-mode: arm
00783238  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078323c, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition17get_character_defEi
; demangled: gameswf::sprite_definition::get_character_def(int)
; decoder-mode: arm
0078323c  10 40 2d e9                                      push {r4, lr}
00783240  44 30 90 e5                                      ldr r3, [r0, #0x44]
00783244  03 00 a0 e1                                      mov r0, r3
00783248  00 30 93 e5                                      ldr r3, [r3]
0078324c  0f e0 a0 e1                                      mov lr, pc
00783250  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00783254  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783258, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition18output_cached_dataEPNS_7tu_fileERKNS_13cache_optionsE
; demangled: gameswf::sprite_definition::output_cached_data(gameswf::tu_file*, gameswf::cache_options const&)
; decoder-mode: arm
00783258  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078325c, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition17input_cached_dataEPNS_7tu_fileE
; demangled: gameswf::sprite_definition::input_cached_data(gameswf::tu_file*)
; decoder-mode: arm
0078325c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783260, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition15create_instanceEv
; demangled: gameswf::sprite_definition::create_instance()
; decoder-mode: arm
00783260  00 00 a0 e3                                      mov r0, #0
00783264  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783268, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition16has_init_actionsEv
; demangled: gameswf::sprite_definition::has_init_actions()
; decoder-mode: arm
00783268  00 00 a0 e3                                      mov r0, #0
0078326c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783270, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition12get_playlistEi
; demangled: gameswf::sprite_definition::get_playlist(int)
; decoder-mode: arm
00783270  48 00 90 e5                                      ldr r0, [r0, #0x48]
00783274  01 02 80 e0                                      add r0, r0, r1, lsl #4
00783278  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078327c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition16get_init_actionsEi
; demangled: gameswf::sprite_definition::get_init_actions(int)
; decoder-mode: arm
0078327c  00 00 a0 e3                                      mov r0, #0
00783280  1e ff 2f e1                                      bx lr

; FUNCTION 0x00783284, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition15export_resourceERKNS_9tu_stringEPNS_13character_defE
; demangled: gameswf::sprite_definition::export_resource(gameswf::tu_string const&, gameswf::character_def*)
; decoder-mode: arm
00783284  04 00 9f e5                                      ldr r0, [pc, #4]
00783288  00 00 8f e0                                      add r0, pc, r0
0078328c  bc 77 ff ea                                      b #0x761184
; mapping-symbol data/literal pool
00783290  78 6a 18 00                                      .byte 0x78, 0x6a, 0x18, 0x00

; FUNCTION 0x00783294, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition16add_sound_sampleEiPNS_12sound_sampleE
; demangled: gameswf::sprite_definition::add_sound_sample(int, gameswf::sound_sample*)
; decoder-mode: arm
00783294  04 00 9f e5                                      ldr r0, [pc, #4]
00783298  00 00 8f e0                                      add r0, pc, r0
0078329c  b8 77 ff ea                                      b #0x761184
; mapping-symbol data/literal pool
007832a0  88 6a 18 00                                      .byte 0x88, 0x6a, 0x18, 0x00

; FUNCTION 0x007832a4, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition20add_bitmap_characterEiPNS_20bitmap_character_defE
; demangled: gameswf::sprite_definition::add_bitmap_character(int, gameswf::bitmap_character_def*)
; decoder-mode: arm
007832a4  04 00 9f e5                                      ldr r0, [pc, #4]
007832a8  00 00 8f e0                                      add r0, pc, r0
007832ac  b4 77 ff ea                                      b #0x761184
; mapping-symbol data/literal pool
007832b0  a0 6a 18 00                                      .byte 0xa0, 0x6a, 0x18, 0x00

; FUNCTION 0x007832b4, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition15add_init_actionEiPNS_11execute_tagE
; demangled: gameswf::sprite_definition::add_init_action(int, gameswf::execute_tag*)
; decoder-mode: arm
007832b4  04 00 9f e5                                      ldr r0, [pc, #4]
007832b8  00 00 8f e0                                      add r0, pc, r0
007832bc  b0 77 ff ea                                      b #0x761184
; mapping-symbol data/literal pool
007832c0  b0 6a 18 00                                      .byte 0xb0, 0x6a, 0x18, 0x00

; FUNCTION 0x007832c4, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition8add_fontEiPNS_4fontE
; demangled: gameswf::sprite_definition::add_font(int, gameswf::font*)
; decoder-mode: arm
007832c4  04 00 9f e5                                      ldr r0, [pc, #4]
007832c8  00 00 8f e0                                      add r0, pc, r0
007832cc  ac 77 ff ea                                      b #0x761184
; mapping-symbol data/literal pool
007832d0  d8 6a 18 00                                      .byte 0xd8, 0x6a, 0x18, 0x00

; FUNCTION 0x007832d4, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition13add_characterEiPNS_13character_defE
; demangled: gameswf::sprite_definition::add_character(int, gameswf::character_def*)
; decoder-mode: arm
007832d4  04 00 9f e5                                      ldr r0, [pc, #4]
007832d8  00 00 8f e0                                      add r0, pc, r0
007832dc  a8 77 ff ea                                      b #0x761184
; mapping-symbol data/literal pool
007832e0  f0 6a 18 00                                      .byte 0xf0, 0x6a, 0x18, 0x00

; FUNCTION 0x007832e4, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition17get_labeled_frameERKNS_10tu_stringiEPi
; demangled: gameswf::sprite_definition::get_labeled_frame(gameswf::tu_stringi const&, int*)
; decoder-mode: arm
007832e4  30 40 2d e9                                      push {r4, r5, lr}
007832e8  0c d0 4d e2                                      sub sp, sp, #0xc
007832ec  08 30 8d e2                                      add r3, sp, #8
007832f0  04 10 23 e5                                      str r1, [r3, #-4]!
007832f4  03 10 a0 e1                                      mov r1, r3
007832f8  00 40 a0 e1                                      mov r4, r0
007832fc  58 00 80 e2                                      add r0, r0, #0x58
00783300  02 50 a0 e1                                      mov r5, r2
00783304  6d 86 ff eb                                      bl #0x764cc0
00783308  00 30 50 e2                                      subs r3, r0, #0
0078330c  00 00 a0 b3                                      movlt r0, #0
00783310  06 00 00 ba                                      blt #0x783330
00783314  00 00 55 e3                                      cmp r5, #0
00783318  58 20 94 15                                      ldrne r2, [r4, #0x58]
0078331c  01 00 a0 03                                      moveq r0, #1
00783320  01 00 a0 13                                      movne r0, #1
00783324  03 32 82 10                                      addne r3, r2, r3, lsl #4
00783328  14 30 93 15                                      ldrne r3, [r3, #0x14]
0078332c  00 30 85 15                                      strne r3, [r5]
00783330  0c d0 8d e2                                      add sp, sp, #0xc
00783334  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00783338, declared_size=188, range_size=188, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definitionD2Ev
; demangled: gameswf::sprite_definition::~sprite_definition()
; decoder-mode: arm
00783338  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0078333c  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00783340  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00783344  4c a0 90 e5                                      ldr sl, [r0, #0x4c]
00783348  03 30 8f e0                                      add r3, pc, r3
0078334c  02 20 93 e7                                      ldr r2, [r3, r2]
00783350  00 00 5a e3                                      cmp sl, #0
00783354  00 40 a0 e1                                      mov r4, r0
00783358  08 20 82 e2                                      add r2, r2, #8
0078335c  00 20 80 e5                                      str r2, [r0]
00783360  01 20 a0 e3                                      mov r2, #1
00783364  41 20 c0 e5                                      strb r2, [r0, #0x41]
00783368  12 00 00 da                                      ble #0x7833b8
0078336c  00 80 a0 e3                                      mov r8, #0
00783370  48 30 94 e5                                      ldr r3, [r4, #0x48]
00783374  08 62 a0 e1                                      lsl r6, r8, #4
00783378  06 20 83 e0                                      add r2, r3, r6
0078337c  04 70 92 e5                                      ldr r7, [r2, #4]
00783380  00 00 57 e3                                      cmp r7, #0
00783384  08 00 00 da                                      ble #0x7833ac
00783388  00 50 a0 e3                                      mov r5, #0
0078338c  00 00 00 ea                                      b #0x783394
00783390  48 30 94 e5                                      ldr r3, [r4, #0x48]
00783394  06 30 93 e7                                      ldr r3, [r3, r6]
00783398  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0078339c  01 50 85 e2                                      add r5, r5, #1
007833a0  b1 82 ff eb                                      bl #0x763e6c
007833a4  07 00 55 e1                                      cmp r5, r7
007833a8  f8 ff ff 1a                                      bne #0x783390
007833ac  01 80 88 e2                                      add r8, r8, #1
007833b0  0a 00 58 e1                                      cmp r8, sl
007833b4  ed ff ff 1a                                      bne #0x783370
007833b8  58 00 84 e2                                      add r0, r4, #0x58
007833bc  48 50 84 e2                                      add r5, r4, #0x48
007833c0  89 82 ff eb                                      bl #0x763dec
007833c4  05 00 a0 e1                                      mov r0, r5
007833c8  00 10 a0 e3                                      mov r1, #0
007833cc  7f 84 ff eb                                      bl #0x7645d0
007833d0  05 00 a0 e1                                      mov r0, r5
007833d4  00 10 a0 e3                                      mov r1, #0
007833d8  5d 84 ff eb                                      bl #0x764554
007833dc  04 00 a0 e1                                      mov r0, r4
007833e0  18 87 ff eb                                      bl #0x765048
007833e4  04 00 a0 e1                                      mov r0, r4
007833e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007833ec  48 17 21 00 50 10 00 00                          .byte 0x48, 0x17, 0x21, 0x00, 0x50, 0x10, 0x00, 0x00

; FUNCTION 0x007833f4, declared_size=248, range_size=248, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition4readEPNS_6streamE
; demangled: gameswf::sprite_definition::read(gameswf::stream*)
; decoder-mode: arm
007833f4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007833f8  00 50 a0 e1                                      mov r5, r0
007833fc  08 d0 4d e2                                      sub sp, sp, #8
00783400  01 00 a0 e1                                      mov r0, r1
00783404  01 40 a0 e1                                      mov r4, r1
00783408  2b 02 00 eb                                      bl #0x783cbc
0078340c  00 60 a0 e1                                      mov r6, r0
00783410  04 00 a0 e1                                      mov r0, r4
00783414  fe 01 00 eb                                      bl #0x783c14
00783418  00 00 50 e3                                      cmp r0, #0
0078341c  01 30 a0 03                                      moveq r3, #1
00783420  38 00 85 e5                                      str r0, [r5, #0x38]
00783424  38 30 85 05                                      streq r3, [r5, #0x38]
00783428  05 00 a0 e1                                      mov r0, r5
0078342c  00 30 95 e5                                      ldr r3, [r5]
00783430  0f e0 a0 e1                                      mov lr, pc
00783434  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00783438  00 10 a0 e1                                      mov r1, r0
0078343c  48 00 85 e2                                      add r0, r5, #0x48
00783440  62 84 ff eb                                      bl #0x7645d0
00783444  9c 70 9f e5                                      ldr r7, [pc, #0x9c]
00783448  04 80 8d e2                                      add r8, sp, #4
0078344c  07 70 8f e0                                      add r7, pc, r7
00783450  04 00 a0 e1                                      mov r0, r4
00783454  08 02 00 eb                                      bl #0x783c7c
00783458  06 00 50 e1                                      cmp r0, r6
0078345c  01 00 00 3a                                      blo #0x783468
00783460  08 d0 8d e2                                      add sp, sp, #8
00783464  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00783468  41 90 d5 e5                                      ldrb sb, [r5, #0x41]
0078346c  04 00 a0 e1                                      mov r0, r4
00783470  00 00 59 e3                                      cmp sb, #0
00783474  f9 ff ff 1a                                      bne #0x783460
00783478  14 02 00 eb                                      bl #0x783cd0
0078347c  01 00 50 e3                                      cmp r0, #1
00783480  00 a0 a0 e1                                      mov sl, r0
00783484  08 10 a0 e1                                      mov r1, r8
00783488  04 90 8d e5                                      str sb, [sp, #4]
0078348c  0d 00 00 0a                                      beq #0x7834c8
00783490  8e 87 ff eb                                      bl #0x7652d0
00783494  00 00 50 e3                                      cmp r0, #0
00783498  0a 10 a0 e1                                      mov r1, sl
0078349c  07 00 a0 e1                                      mov r0, r7
007834a0  06 00 00 0a                                      beq #0x7834c0
007834a4  04 00 a0 e1                                      mov r0, r4
007834a8  05 20 a0 e1                                      mov r2, r5
007834ac  0f e0 a0 e1                                      mov lr, pc
007834b0  04 f0 9d e5                                      ldr pc, [sp, #4]
007834b4  04 00 a0 e1                                      mov r0, r4
007834b8  28 03 00 eb                                      bl #0x784160
007834bc  e3 ff ff ea                                      b #0x783450
007834c0  4a 77 ff eb                                      bl #0x7611f0
007834c4  fa ff ff ea                                      b #0x7834b4
007834c8  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
007834cc  00 30 95 e5                                      ldr r3, [r5]
007834d0  05 00 a0 e1                                      mov r0, r5
007834d4  01 20 82 e2                                      add r2, r2, #1
007834d8  3c 20 85 e5                                      str r2, [r5, #0x3c]
007834dc  0f e0 a0 e1                                      mov lr, pc
007834e0  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
007834e4  f2 ff ff ea                                      b #0x7834b4
; mapping-symbol data/literal pool
007834e8  3c 5a 18 00                                      .byte 0x3c, 0x5a, 0x18, 0x00

; FUNCTION 0x007834ec, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition15add_execute_tagEPNS_11execute_tagE
; demangled: gameswf::sprite_definition::add_execute_tag(gameswf::execute_tag*)
; decoder-mode: arm
007834ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007834f0  48 60 90 e5                                      ldr r6, [r0, #0x48]
007834f4  3c 70 90 e5                                      ldr r7, [r0, #0x3c]
007834f8  01 80 a0 e1                                      mov r8, r1
007834fc  07 42 86 e0                                      add r4, r6, r7, lsl #4
00783500  04 30 94 e5                                      ldr r3, [r4, #4]
00783504  08 20 94 e5                                      ldr r2, [r4, #8]
00783508  01 50 83 e2                                      add r5, r3, #1
0078350c  02 00 55 e1                                      cmp r5, r2
00783510  03 00 00 da                                      ble #0x783524
00783514  04 00 a0 e1                                      mov r0, r4
00783518  c5 10 85 e0                                      add r1, r5, r5, asr #1
0078351c  c6 83 ff eb                                      bl #0x76443c
00783520  04 30 94 e5                                      ldr r3, [r4, #4]
00783524  07 22 96 e7                                      ldr r2, [r6, r7, lsl #4]
00783528  03 81 82 e7                                      str r8, [r2, r3, lsl #2]
0078352c  04 50 84 e5                                      str r5, [r4, #4]
00783530  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00783534, declared_size=188, range_size=188, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definitionD1Ev
; demangled: gameswf::sprite_definition::~sprite_definition()
; decoder-mode: arm
00783534  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00783538  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0078353c  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00783540  4c a0 90 e5                                      ldr sl, [r0, #0x4c]
00783544  03 30 8f e0                                      add r3, pc, r3
00783548  02 20 93 e7                                      ldr r2, [r3, r2]
0078354c  00 00 5a e3                                      cmp sl, #0
00783550  00 40 a0 e1                                      mov r4, r0
00783554  08 20 82 e2                                      add r2, r2, #8
00783558  00 20 80 e5                                      str r2, [r0]
0078355c  01 20 a0 e3                                      mov r2, #1
00783560  41 20 c0 e5                                      strb r2, [r0, #0x41]
00783564  12 00 00 da                                      ble #0x7835b4
00783568  00 80 a0 e3                                      mov r8, #0
0078356c  48 30 94 e5                                      ldr r3, [r4, #0x48]
00783570  08 62 a0 e1                                      lsl r6, r8, #4
00783574  06 20 83 e0                                      add r2, r3, r6
00783578  04 70 92 e5                                      ldr r7, [r2, #4]
0078357c  00 00 57 e3                                      cmp r7, #0
00783580  08 00 00 da                                      ble #0x7835a8
00783584  00 50 a0 e3                                      mov r5, #0
00783588  00 00 00 ea                                      b #0x783590
0078358c  48 30 94 e5                                      ldr r3, [r4, #0x48]
00783590  06 30 93 e7                                      ldr r3, [r3, r6]
00783594  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00783598  01 50 85 e2                                      add r5, r5, #1
0078359c  32 82 ff eb                                      bl #0x763e6c
007835a0  07 00 55 e1                                      cmp r5, r7
007835a4  f8 ff ff 1a                                      bne #0x78358c
007835a8  01 80 88 e2                                      add r8, r8, #1
007835ac  0a 00 58 e1                                      cmp r8, sl
007835b0  ed ff ff 1a                                      bne #0x78356c
007835b4  58 00 84 e2                                      add r0, r4, #0x58
007835b8  48 50 84 e2                                      add r5, r4, #0x48
007835bc  0a 82 ff eb                                      bl #0x763dec
007835c0  05 00 a0 e1                                      mov r0, r5
007835c4  00 10 a0 e3                                      mov r1, #0
007835c8  00 84 ff eb                                      bl #0x7645d0
007835cc  05 00 a0 e1                                      mov r0, r5
007835d0  00 10 a0 e3                                      mov r1, #0
007835d4  de 83 ff eb                                      bl #0x764554
007835d8  04 00 a0 e1                                      mov r0, r4
007835dc  99 86 ff eb                                      bl #0x765048
007835e0  04 00 a0 e1                                      mov r0, r4
007835e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007835e8  4c 15 21 00 50 10 00 00                          .byte 0x4c, 0x15, 0x21, 0x00, 0x50, 0x10, 0x00, 0x00

; FUNCTION 0x007835f0, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definitionD0Ev
; demangled: gameswf::sprite_definition::~sprite_definition()
; decoder-mode: arm
007835f0  10 40 2d e9                                      push {r4, lr}
007835f4  00 40 a0 e1                                      mov r4, r0
007835f8  cd ff ff eb                                      bl #0x783534
007835fc  04 00 a0 e1                                      mov r0, r4
00783600  2a 2b ee eb                                      bl #0x30e2b0
00783604  04 00 a0 e1                                      mov r0, r4
00783608  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00783650, declared_size=276, range_size=276, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definitionC2EPNS_6playerEPNS_20movie_definition_subE
; demangled: gameswf::sprite_definition::sprite_definition(gameswf::player*, gameswf::movie_definition_sub*)
; decoder-mode: arm
00783650  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00783654  fc 40 9f e5                                      ldr r4, [pc, #0xfc]
00783658  00 50 a0 e1                                      mov r5, r0
0078365c  02 60 a0 e1                                      mov r6, r2
00783660  f7 6c ff eb                                      bl #0x75ea44
00783664  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
00783668  04 40 8f e0                                      add r4, pc, r4
0078366c  00 20 a0 e3                                      mov r2, #0
00783670  03 30 94 e7                                      ldr r3, [r4, r3]
00783674  00 10 e0 e3                                      mvn r1, #0
00783678  00 00 56 e3                                      cmp r6, #0
0078367c  08 00 83 e2                                      add r0, r3, #8
00783680  28 10 85 e5                                      str r1, [r5, #0x28]
00783684  00 00 85 e5                                      str r0, [r5]
00783688  58 20 85 e5                                      str r2, [r5, #0x58]
0078368c  20 10 85 e5                                      str r1, [r5, #0x20]
00783690  24 20 85 e5                                      str r2, [r5, #0x24]
00783694  2c 20 c5 e5                                      strb r2, [r5, #0x2c]
00783698  2d 20 c5 e5                                      strb r2, [r5, #0x2d]
0078369c  2e 20 c5 e5                                      strb r2, [r5, #0x2e]
007836a0  30 20 85 e5                                      str r2, [r5, #0x30]
007836a4  34 20 85 e5                                      str r2, [r5, #0x34]
007836a8  38 20 85 e5                                      str r2, [r5, #0x38]
007836ac  3c 20 85 e5                                      str r2, [r5, #0x3c]
007836b0  41 20 c5 e5                                      strb r2, [r5, #0x41]
007836b4  44 60 85 e5                                      str r6, [r5, #0x44]
007836b8  48 20 85 e5                                      str r2, [r5, #0x48]
007836bc  4c 20 85 e5                                      str r2, [r5, #0x4c]
007836c0  50 20 85 e5                                      str r2, [r5, #0x50]
007836c4  54 20 c5 e5                                      strb r2, [r5, #0x54]
007836c8  01 00 00 0a                                      beq #0x7836d4
007836cc  05 00 a0 e1                                      mov r0, r5
007836d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007836d4  01 70 a0 e3                                      mov r7, #1
007836d8  38 70 85 e5                                      str r7, [r5, #0x38]
007836dc  3c 70 85 e5                                      str r7, [r5, #0x3c]
007836e0  05 00 a0 e1                                      mov r0, r5
007836e4  0f e0 a0 e1                                      mov lr, pc
007836e8  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
007836ec  07 10 a0 e1                                      mov r1, r7
007836f0  48 00 85 e2                                      add r0, r5, #0x48
007836f4  b5 83 ff eb                                      bl #0x7645d0
007836f8  06 10 a0 e1                                      mov r1, r6
007836fc  04 00 a0 e3                                      mov r0, #4
00783700  48 60 95 e5                                      ldr r6, [r5, #0x48]
00783704  27 3d ff eb                                      bl #0x752ba8
00783708  50 30 9f e5                                      ldr r3, [pc, #0x50]
0078370c  00 70 a0 e1                                      mov r7, r0
00783710  03 30 94 e7                                      ldr r3, [r4, r3]
00783714  08 30 83 e2                                      add r3, r3, #8
00783718  00 30 80 e5                                      str r3, [r0]
0078371c  04 30 96 e5                                      ldr r3, [r6, #4]
00783720  08 20 96 e5                                      ldr r2, [r6, #8]
00783724  01 40 83 e2                                      add r4, r3, #1
00783728  02 00 54 e1                                      cmp r4, r2
0078372c  04 00 00 ca                                      bgt #0x783744
00783730  00 20 96 e5                                      ldr r2, [r6]
00783734  05 00 a0 e1                                      mov r0, r5
00783738  03 71 82 e7                                      str r7, [r2, r3, lsl #2]
0078373c  04 40 86 e5                                      str r4, [r6, #4]
00783740  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00783744  06 00 a0 e1                                      mov r0, r6
00783748  c4 10 84 e0                                      add r1, r4, r4, asr #1
0078374c  3a 83 ff eb                                      bl #0x76443c
00783750  04 30 96 e5                                      ldr r3, [r6, #4]
00783754  f5 ff ff ea                                      b #0x783730
; mapping-symbol data/literal pool
00783758  28 14 21 00 50 10 00 00 e8 32 00 00              .byte 0x28, 0x14, 0x21, 0x00, 0x50, 0x10, 0x00, 0x00, 0xe8, 0x32, 0x00, 0x00

; FUNCTION 0x00783764, declared_size=276, range_size=276, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definitionC1EPNS_6playerEPNS_20movie_definition_subE
; demangled: gameswf::sprite_definition::sprite_definition(gameswf::player*, gameswf::movie_definition_sub*)
; decoder-mode: arm
00783764  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00783768  fc 40 9f e5                                      ldr r4, [pc, #0xfc]
0078376c  00 50 a0 e1                                      mov r5, r0
00783770  02 60 a0 e1                                      mov r6, r2
00783774  b2 6c ff eb                                      bl #0x75ea44
00783778  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
0078377c  04 40 8f e0                                      add r4, pc, r4
00783780  00 20 a0 e3                                      mov r2, #0
00783784  03 30 94 e7                                      ldr r3, [r4, r3]
00783788  00 10 e0 e3                                      mvn r1, #0
0078378c  00 00 56 e3                                      cmp r6, #0
00783790  08 00 83 e2                                      add r0, r3, #8
00783794  28 10 85 e5                                      str r1, [r5, #0x28]
00783798  00 00 85 e5                                      str r0, [r5]
0078379c  58 20 85 e5                                      str r2, [r5, #0x58]
007837a0  20 10 85 e5                                      str r1, [r5, #0x20]
007837a4  24 20 85 e5                                      str r2, [r5, #0x24]
007837a8  2c 20 c5 e5                                      strb r2, [r5, #0x2c]
007837ac  2d 20 c5 e5                                      strb r2, [r5, #0x2d]
007837b0  2e 20 c5 e5                                      strb r2, [r5, #0x2e]
007837b4  30 20 85 e5                                      str r2, [r5, #0x30]
007837b8  34 20 85 e5                                      str r2, [r5, #0x34]
007837bc  38 20 85 e5                                      str r2, [r5, #0x38]
007837c0  3c 20 85 e5                                      str r2, [r5, #0x3c]
007837c4  41 20 c5 e5                                      strb r2, [r5, #0x41]
007837c8  44 60 85 e5                                      str r6, [r5, #0x44]
007837cc  48 20 85 e5                                      str r2, [r5, #0x48]
007837d0  4c 20 85 e5                                      str r2, [r5, #0x4c]
007837d4  50 20 85 e5                                      str r2, [r5, #0x50]
007837d8  54 20 c5 e5                                      strb r2, [r5, #0x54]
007837dc  01 00 00 0a                                      beq #0x7837e8
007837e0  05 00 a0 e1                                      mov r0, r5
007837e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007837e8  01 70 a0 e3                                      mov r7, #1
007837ec  38 70 85 e5                                      str r7, [r5, #0x38]
007837f0  3c 70 85 e5                                      str r7, [r5, #0x3c]
007837f4  05 00 a0 e1                                      mov r0, r5
007837f8  0f e0 a0 e1                                      mov lr, pc
007837fc  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
00783800  07 10 a0 e1                                      mov r1, r7
00783804  48 00 85 e2                                      add r0, r5, #0x48
00783808  70 83 ff eb                                      bl #0x7645d0
0078380c  06 10 a0 e1                                      mov r1, r6
00783810  04 00 a0 e3                                      mov r0, #4
00783814  48 60 95 e5                                      ldr r6, [r5, #0x48]
00783818  e2 3c ff eb                                      bl #0x752ba8
0078381c  50 30 9f e5                                      ldr r3, [pc, #0x50]
00783820  00 70 a0 e1                                      mov r7, r0
00783824  03 30 94 e7                                      ldr r3, [r4, r3]
00783828  08 30 83 e2                                      add r3, r3, #8
0078382c  00 30 80 e5                                      str r3, [r0]
00783830  04 30 96 e5                                      ldr r3, [r6, #4]
00783834  08 20 96 e5                                      ldr r2, [r6, #8]
00783838  01 40 83 e2                                      add r4, r3, #1
0078383c  02 00 54 e1                                      cmp r4, r2
00783840  04 00 00 ca                                      bgt #0x783858
00783844  00 20 96 e5                                      ldr r2, [r6]
00783848  05 00 a0 e1                                      mov r0, r5
0078384c  03 71 82 e7                                      str r7, [r2, r3, lsl #2]
00783850  04 40 86 e5                                      str r4, [r6, #4]
00783854  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00783858  06 00 a0 e1                                      mov r0, r6
0078385c  c4 10 84 e0                                      add r1, r4, r4, asr #1
00783860  f5 82 ff eb                                      bl #0x76443c
00783864  04 30 96 e5                                      ldr r3, [r6, #4]
00783868  f5 ff ff ea                                      b #0x783844
; mapping-symbol data/literal pool
0078386c  14 13 21 00 50 10 00 00 e8 32 00 00              .byte 0x14, 0x13, 0x21, 0x00, 0x50, 0x10, 0x00, 0x00, 0xe8, 0x32, 0x00, 0x00

; FUNCTION 0x00783878, declared_size=300, range_size=300, mode=arm
; class-group: gameswf::sprite_definition
; alias: _ZN7gameswf17sprite_definition14add_frame_nameEPKc
; demangled: gameswf::sprite_definition::add_frame_name(char const*)
; decoder-mode: arm
00783878  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0078387c  14 51 9f e5                                      ldr r5, [pc, #0x114]
00783880  14 81 9f e5                                      ldr r8, [pc, #0x114]
00783884  1c 60 90 e5                                      ldr r6, [r0, #0x1c]
00783888  05 50 8f e0                                      add r5, pc, r5
0078388c  08 30 95 e7                                      ldr r3, [r5, r8]
00783890  24 d0 4d e2                                      sub sp, sp, #0x24
00783894  00 00 56 e3                                      cmp r6, #0
00783898  00 30 93 e5                                      ldr r3, [r3]
0078389c  00 40 a0 e1                                      mov r4, r0
007838a0  01 a0 a0 e1                                      mov sl, r1
007838a4  1c 30 8d e5                                      str r3, [sp, #0x1c]
007838a8  03 00 00 0a                                      beq #0x7838bc
007838ac  18 00 90 e5                                      ldr r0, [r0, #0x18]
007838b0  04 30 d0 e5                                      ldrb r3, [r0, #4]
007838b4  00 00 53 e3                                      cmp r3, #0
007838b8  27 00 00 0a                                      beq #0x78395c
007838bc  08 70 8d e2                                      add r7, sp, #8
007838c0  0a 10 a0 e1                                      mov r1, sl
007838c4  07 00 a0 e1                                      mov r0, r7
007838c8  6b 40 f2 eb                                      bl #0x413a7c
007838cc  2c 00 86 e2                                      add r0, r6, #0x2c
007838d0  07 10 a0 e1                                      mov r1, r7
007838d4  7c 62 ff eb                                      bl #0x75c2cc
007838d8  d8 30 dd e1                                      ldrsb r3, [sp, #8]
007838dc  04 00 8d e5                                      str r0, [sp, #4]
007838e0  01 00 73 e3                                      cmn r3, #1
007838e4  26 00 00 0a                                      beq #0x783984
007838e8  58 70 84 e2                                      add r7, r4, #0x58
007838ec  04 60 8d e2                                      add r6, sp, #4
007838f0  07 00 a0 e1                                      mov r0, r7
007838f4  06 10 a0 e1                                      mov r1, r6
007838f8  f0 84 ff eb                                      bl #0x764cc0
007838fc  00 00 50 e3                                      cmp r0, #0
00783900  07 00 00 ba                                      blt #0x783924
00783904  58 30 94 e5                                      ldr r3, [r4, #0x58]
00783908  0a 20 a0 e1                                      mov r2, sl
0078390c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00783910  00 32 83 e0                                      add r3, r3, r0, lsl #4
00783914  84 00 9f e5                                      ldr r0, [pc, #0x84]
00783918  14 30 93 e5                                      ldr r3, [r3, #0x14]
0078391c  00 00 8f e0                                      add r0, pc, r0
00783920  17 76 ff eb                                      bl #0x761184
00783924  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00783928  20 20 8d e2                                      add r2, sp, #0x20
0078392c  07 00 a0 e1                                      mov r0, r7
00783930  20 30 22 e5                                      str r3, [r2, #-0x20]!
00783934  06 10 a0 e1                                      mov r1, r6
00783938  0d 20 a0 e1                                      mov r2, sp
0078393c  32 ff ff eb                                      bl #0x78360c
00783940  08 30 95 e7                                      ldr r3, [r5, r8]
00783944  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00783948  00 30 93 e5                                      ldr r3, [r3]
0078394c  03 00 52 e1                                      cmp r2, r3
00783950  0f 00 00 1a                                      bne #0x783994
00783954  24 d0 8d e2                                      add sp, sp, #0x24
00783958  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0078395c  00 10 90 e5                                      ldr r1, [r0]
00783960  01 10 41 e2                                      sub r1, r1, #1
00783964  00 00 51 e3                                      cmp r1, #0
00783968  00 10 80 e5                                      str r1, [r0]
0078396c  00 00 00 1a                                      bne #0x783974
00783970  70 3c ff eb                                      bl #0x752b38
00783974  00 60 a0 e3                                      mov r6, #0
00783978  18 60 84 e5                                      str r6, [r4, #0x18]
0078397c  1c 60 84 e5                                      str r6, [r4, #0x1c]
00783980  cd ff ff ea                                      b #0x7838bc
00783984  14 00 9d e5                                      ldr r0, [sp, #0x14]
00783988  10 10 9d e5                                      ldr r1, [sp, #0x10]
0078398c  69 3c ff eb                                      bl #0x752b38
00783990  d4 ff ff ea                                      b #0x7838e8
00783994  5d 2a ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00783998  08 12 21 00 ac 40 00 00 dc 64 18 00              .byte 0x08, 0x12, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x64, 0x18, 0x00
