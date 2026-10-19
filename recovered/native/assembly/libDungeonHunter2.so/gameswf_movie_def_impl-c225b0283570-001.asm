; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075ffb0, declared_size=604, range_size=604, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl11create_rootEv
; demangled: gameswf::movie_def_impl::create_root()
; decoder-mode: arm
0075ffb0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075ffb4  40 42 9f e5                                      ldr r4, [pc, #0x240]
0075ffb8  40 82 9f e5                                      ldr r8, [pc, #0x240]
0075ffbc  40 72 9f e5                                      ldr r7, [pc, #0x240]
0075ffc0  04 40 8f e0                                      add r4, pc, r4
0075ffc4  08 20 94 e7                                      ldr r2, [r4, r8]
0075ffc8  07 30 94 e7                                      ldr r3, [r4, r7]
0075ffcc  44 d0 4d e2                                      sub sp, sp, #0x44
0075ffd0  00 20 d2 e5                                      ldrb r2, [r2]
0075ffd4  00 30 93 e5                                      ldr r3, [r3]
0075ffd8  00 50 a0 e1                                      mov r5, r0
0075ffdc  00 00 52 e3                                      cmp r2, #0
0075ffe0  3c 30 8d e5                                      str r3, [sp, #0x3c]
0075ffe4  0a 00 00 0a                                      beq #0x760014
0075ffe8  e8 60 90 e5                                      ldr r6, [r0, #0xe8]
0075ffec  00 00 56 e3                                      cmp r6, #0
0075fff0  07 00 00 0a                                      beq #0x760014
0075fff4  07 30 94 e7                                      ldr r3, [r4, r7]
0075fff8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0075fffc  06 00 a0 e1                                      mov r0, r6
00760000  00 30 93 e5                                      ldr r3, [r3]
00760004  03 00 52 e1                                      cmp r2, r3
00760008  7a 00 00 1a                                      bne #0x7601f8
0076000c  44 d0 8d e2                                      add sp, sp, #0x44
00760010  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00760014  1c a0 95 e5                                      ldr sl, [r5, #0x1c]
00760018  00 00 5a e3                                      cmp sl, #0
0076001c  03 00 00 0a                                      beq #0x760030
00760020  18 00 95 e5                                      ldr r0, [r5, #0x18]
00760024  04 30 d0 e5                                      ldrb r3, [r0, #4]
00760028  00 00 53 e3                                      cmp r3, #0
0076002c  4a 00 00 0a                                      beq #0x76015c
00760030  00 10 a0 e3                                      mov r1, #0
00760034  d0 00 a0 e3                                      mov r0, #0xd0
00760038  da ca ff eb                                      bl #0x752ba8
0076003c  0a 10 a0 e1                                      mov r1, sl
00760040  05 20 a0 e1                                      mov r2, r5
00760044  00 60 a0 e1                                      mov r6, r0
00760048  54 57 00 eb                                      bl #0x775da0
0076004c  08 30 94 e7                                      ldr r3, [r4, r8]
00760050  00 30 d3 e5                                      ldrb r3, [r3]
00760054  00 00 53 e3                                      cmp r3, #0
00760058  3b 00 00 1a                                      bne #0x76014c
0076005c  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00760060  00 00 50 e3                                      cmp r0, #0
00760064  03 00 00 0a                                      beq #0x760078
00760068  18 30 95 e5                                      ldr r3, [r5, #0x18]
0076006c  04 20 d3 e5                                      ldrb r2, [r3, #4]
00760070  00 00 52 e3                                      cmp r2, #0
00760074  4c 00 00 0a                                      beq #0x7601ac
00760078  00 c0 e0 e3                                      mvn ip, #0
0076007c  05 10 a0 e1                                      mov r1, r5
00760080  06 20 a0 e1                                      mov r2, r6
00760084  00 30 a0 e3                                      mov r3, #0
00760088  00 c0 8d e5                                      str ip, [sp]
0076008c  17 33 00 eb                                      bl #0x76ccf0
00760090  70 11 9f e5                                      ldr r1, [pc, #0x170]
00760094  00 30 90 e5                                      ldr r3, [r0]
00760098  14 90 8d e2                                      add sb, sp, #0x14
0076009c  00 80 a0 e1                                      mov r8, r0
007600a0  01 10 8f e0                                      add r1, pc, r1
007600a4  09 00 a0 e1                                      mov r0, sb
007600a8  1c a0 93 e5                                      ldr sl, [r3, #0x1c]
007600ac  72 ce f2 eb                                      bl #0x413a7c
007600b0  1c b0 95 e5                                      ldr fp, [r5, #0x1c]
007600b4  00 00 5b e3                                      cmp fp, #0
007600b8  03 00 00 0a                                      beq #0x7600cc
007600bc  18 00 95 e5                                      ldr r0, [r5, #0x18]
007600c0  04 30 d0 e5                                      ldrb r3, [r0, #4]
007600c4  00 00 53 e3                                      cmp r3, #0
007600c8  2d 00 00 0a                                      beq #0x760184
007600cc  aa 31 00 eb                                      bl #0x76c77c
007600d0  28 50 8d e2                                      add r5, sp, #0x28
007600d4  00 10 a0 e1                                      mov r1, r0
007600d8  05 00 a0 e1                                      mov r0, r5
007600dc  66 ce f2 eb                                      bl #0x413a7c
007600e0  05 10 a0 e1                                      mov r1, r5
007600e4  2c 00 8b e2                                      add r0, fp, #0x2c
007600e8  77 f0 ff eb                                      bl #0x75c2cc
007600ec  08 50 8d e2                                      add r5, sp, #8
007600f0  00 30 a0 e3                                      mov r3, #0
007600f4  00 10 a0 e1                                      mov r1, r0
007600f8  05 00 a0 e1                                      mov r0, r5
007600fc  0c 30 8d e5                                      str r3, [sp, #0xc]
00760100  08 30 cd e5                                      strb r3, [sp, #8]
00760104  09 30 cd e5                                      strb r3, [sp, #9]
00760108  72 dc 00 eb                                      bl #0x7972d8
0076010c  09 10 a0 e1                                      mov r1, sb
00760110  05 20 a0 e1                                      mov r2, r5
00760114  08 00 a0 e1                                      mov r0, r8
00760118  3a ff 2f e1                                      blx sl
0076011c  05 00 a0 e1                                      mov r0, r5
00760120  ff db 00 eb                                      bl #0x797124
00760124  d8 32 dd e1                                      ldrsb r3, [sp, #0x28]
00760128  01 00 73 e3                                      cmn r3, #1
0076012c  2d 00 00 0a                                      beq #0x7601e8
00760130  d4 31 dd e1                                      ldrsb r3, [sp, #0x14]
00760134  01 00 73 e3                                      cmn r3, #1
00760138  26 00 00 0a                                      beq #0x7601d8
0076013c  08 10 a0 e1                                      mov r1, r8
00760140  06 00 a0 e1                                      mov r0, r6
00760144  fc 50 00 eb                                      bl #0x77453c
00760148  a9 ff ff ea                                      b #0x75fff4
0076014c  e8 00 85 e2                                      add r0, r5, #0xe8
00760150  06 10 a0 e1                                      mov r1, r6
00760154  3f e8 ff eb                                      bl #0x75a258
00760158  bf ff ff ea                                      b #0x76005c
0076015c  00 10 90 e5                                      ldr r1, [r0]
00760160  01 10 41 e2                                      sub r1, r1, #1
00760164  00 00 51 e3                                      cmp r1, #0
00760168  00 10 80 e5                                      str r1, [r0]
0076016c  00 00 00 1a                                      bne #0x760174
00760170  70 ca ff eb                                      bl #0x752b38
00760174  00 a0 a0 e3                                      mov sl, #0
00760178  18 a0 85 e5                                      str sl, [r5, #0x18]
0076017c  1c a0 85 e5                                      str sl, [r5, #0x1c]
00760180  aa ff ff ea                                      b #0x760030
00760184  00 10 90 e5                                      ldr r1, [r0]
00760188  01 10 41 e2                                      sub r1, r1, #1
0076018c  00 00 51 e3                                      cmp r1, #0
00760190  00 10 80 e5                                      str r1, [r0]
00760194  00 00 00 1a                                      bne #0x76019c
00760198  66 ca ff eb                                      bl #0x752b38
0076019c  00 b0 a0 e3                                      mov fp, #0
007601a0  1c b0 85 e5                                      str fp, [r5, #0x1c]
007601a4  18 b0 85 e5                                      str fp, [r5, #0x18]
007601a8  c7 ff ff ea                                      b #0x7600cc
007601ac  00 10 93 e5                                      ldr r1, [r3]
007601b0  01 10 41 e2                                      sub r1, r1, #1
007601b4  00 00 51 e3                                      cmp r1, #0
007601b8  00 10 83 e5                                      str r1, [r3]
007601bc  01 00 00 1a                                      bne #0x7601c8
007601c0  03 00 a0 e1                                      mov r0, r3
007601c4  5b ca ff eb                                      bl #0x752b38
007601c8  00 00 a0 e3                                      mov r0, #0
007601cc  18 00 85 e5                                      str r0, [r5, #0x18]
007601d0  1c 00 85 e5                                      str r0, [r5, #0x1c]
007601d4  a7 ff ff ea                                      b #0x760078
007601d8  20 00 9d e5                                      ldr r0, [sp, #0x20]
007601dc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007601e0  54 ca ff eb                                      bl #0x752b38
007601e4  d4 ff ff ea                                      b #0x76013c
007601e8  34 00 9d e5                                      ldr r0, [sp, #0x34]
007601ec  30 10 9d e5                                      ldr r1, [sp, #0x30]
007601f0  50 ca ff eb                                      bl #0x752b38
007601f4  cd ff ff ea                                      b #0x760130
007601f8  44 b8 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007601fc  d0 4a 23 00 9c 39 00 00 ac 40 00 00 78 8c 1a 00  .byte 0xd0, 0x4a, 0x23, 0x00, 0x9c, 0x39, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x78, 0x8c, 0x1a, 0x00

; FUNCTION 0x0076020c, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl15create_instanceEv
; demangled: gameswf::movie_def_impl::create_instance()
; decoder-mode: arm
0076020c  10 40 2d e9                                      push {r4, lr}
00760210  66 ff ff eb                                      bl #0x75ffb0
00760214  00 40 a0 e1                                      mov r4, r0
00760218  cd 4f 00 eb                                      bl #0x774154
0076021c  00 10 a0 e3                                      mov r1, #0
00760220  00 30 90 e5                                      ldr r3, [r0]
00760224  01 20 a0 e1                                      mov r2, r1
00760228  0f e0 a0 e1                                      mov lr, pc
0076022c  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
00760230  04 00 a0 e1                                      mov r0, r4
00760234  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0076368c, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl2isEi
; demangled: gameswf::movie_def_impl::is(int) const
; decoder-mode: arm
0076368c  08 00 51 e3                                      cmp r1, #8
00763690  05 00 00 0a                                      beq #0x7636ac
00763694  09 00 51 e3                                      cmp r1, #9
00763698  03 00 00 0a                                      beq #0x7636ac
0076369c  0a 00 51 e3                                      cmp r1, #0xa
007636a0  00 00 a0 13                                      movne r0, #0
007636a4  01 00 a0 03                                      moveq r0, #1
007636a8  1e ff 2f e1                                      bx lr
007636ac  01 00 a0 e3                                      mov r0, #1
007636b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007636b4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl16has_init_actionsEv
; demangled: gameswf::movie_def_impl::has_init_actions()
; decoder-mode: arm
007636b4  ec 00 d0 e5                                      ldrb r0, [r0, #0xec]
007636b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007636bc, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl14is_multithreadEv
; demangled: gameswf::movie_def_impl::is_multithread() const
; decoder-mode: arm
007636bc  e4 00 90 e5                                      ldr r0, [r0, #0xe4]
007636c0  00 00 50 e2                                      subs r0, r0, #0
007636c4  01 00 a0 13                                      movne r0, #1
007636c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007636cc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl14get_frame_rateEv
; demangled: gameswf::movie_def_impl::get_frame_rate() const
; decoder-mode: arm
007636cc  c4 00 90 e5                                      ldr r0, [r0, #0xc4]
007636d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007636d4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl14set_frame_rateEf
; demangled: gameswf::movie_def_impl::set_frame_rate(float)
; decoder-mode: arm
007636d4  c4 10 80 e5                                      str r1, [r0, #0xc4]
007636d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007636dc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl11get_versionEv
; demangled: gameswf::movie_def_impl::get_version() const
; decoder-mode: arm
007636dc  c8 00 90 e5                                      ldr r0, [r0, #0xc8]
007636e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007636e4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl14get_file_bytesEv
; demangled: gameswf::movie_def_impl::get_file_bytes() const
; decoder-mode: arm
007636e4  d8 00 90 e5                                      ldr r0, [r0, #0xd8]
007636e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007636ec, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl16get_loaded_bytesEv
; demangled: gameswf::movie_def_impl::get_loaded_bytes() const
; decoder-mode: arm
007636ec  cc 00 90 e5                                      ldr r0, [r0, #0xcc]
007636f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007636f4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl18get_create_bitmapsEv
; demangled: gameswf::movie_def_impl::get_create_bitmaps() const
; decoder-mode: arm
007636f4  ac 00 90 e5                                      ldr r0, [r0, #0xac]
007636f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007636fc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl22get_create_font_shapesEv
; demangled: gameswf::movie_def_impl::get_create_font_shapes() const
; decoder-mode: arm
007636fc  b0 00 90 e5                                      ldr r0, [r0, #0xb0]
00763700  1e ff 2f e1                                      bx lr

; FUNCTION 0x00763704, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl21get_bitmap_info_countEv
; demangled: gameswf::movie_def_impl::get_bitmap_info_count() const
; decoder-mode: arm
00763704  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
00763708  1e ff 2f e1                                      bx lr

; FUNCTION 0x0076370c, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl15get_bitmap_infoEi
; demangled: gameswf::movie_def_impl::get_bitmap_info(int) const
; decoder-mode: arm
0076370c  9c 30 90 e5                                      ldr r3, [r0, #0x9c]
00763710  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00763714  1e ff 2f e1                                      bx lr

; FUNCTION 0x00763718, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl15in_import_tableEi
; demangled: gameswf::movie_def_impl::in_import_table(int)
; decoder-mode: arm
00763718  04 40 2d e5                                      str r4, [sp, #-4]!
0076371c  80 30 90 e5                                      ldr r3, [r0, #0x80]
00763720  00 00 53 e3                                      cmp r3, #0
00763724  0e 00 00 da                                      ble #0x763764
00763728  7c 40 90 e5                                      ldr r4, [r0, #0x7c]
0076372c  14 20 94 e5                                      ldr r2, [r4, #0x14]
00763730  01 00 52 e1                                      cmp r2, r1
00763734  2c 00 a0 13                                      movne r0, #0x2c
00763738  00 20 a0 13                                      movne r2, #0
0076373c  04 00 00 1a                                      bne #0x763754
00763740  0a 00 00 ea                                      b #0x763770
00763744  14 c0 9c e5                                      ldr ip, [ip, #0x14]
00763748  2c 00 80 e2                                      add r0, r0, #0x2c
0076374c  01 00 5c e1                                      cmp ip, r1
00763750  06 00 00 0a                                      beq #0x763770
00763754  01 20 82 e2                                      add r2, r2, #1
00763758  03 00 52 e1                                      cmp r2, r3
0076375c  00 c0 84 e0                                      add ip, r4, r0
00763760  f7 ff ff 1a                                      bne #0x763744
00763764  00 00 a0 e3                                      mov r0, #0
00763768  10 00 bd e8                                      ldm sp!, {r4}
0076376c  1e ff 2f e1                                      bx lr
00763770  01 00 a0 e3                                      mov r0, #1
00763774  fb ff ff ea                                      b #0x763768

; FUNCTION 0x00763778, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl15set_jpeg_loaderEPNS_4jpeg5inputE
; demangled: gameswf::movie_def_impl::set_jpeg_loader(gameswf::jpeg::input*)
; decoder-mode: arm
00763778  d0 10 80 e5                                      str r1, [r0, #0xd0]
0076377c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00763780, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl15get_jpeg_loaderEv
; demangled: gameswf::movie_def_impl::get_jpeg_loader()
; decoder-mode: arm
00763780  d0 00 90 e5                                      ldr r0, [r0, #0xd0]
00763784  1e ff 2f e1                                      bx lr

; FUNCTION 0x00763788, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl12get_playlistEi
; demangled: gameswf::movie_def_impl::get_playlist(int)
; decoder-mode: arm
00763788  54 00 90 e5                                      ldr r0, [r0, #0x54]
0076378c  01 02 80 e0                                      add r0, r0, r1, lsl #4
00763790  1e ff 2f e1                                      bx lr

; FUNCTION 0x00763794, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl16get_init_actionsEi
; demangled: gameswf::movie_def_impl::get_init_actions(int)
; decoder-mode: arm
00763794  64 00 90 e5                                      ldr r0, [r0, #0x64]
00763798  01 02 80 e0                                      add r0, r0, r1, lsl #4
0076379c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007637a0, declared_size=384, range_size=384, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl18output_cached_dataEPNS_7tu_fileERKNS_13cache_optionsE
; demangled: gameswf::movie_def_impl::output_cached_data(gameswf::tu_file*, gameswf::cache_options const&)
; decoder-mode: arm
007637a0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007637a4  67 33 07 e3                                      movw r3, #0x7367
007637a8  0c d0 4d e2                                      sub sp, sp, #0xc
007637ac  63 38 45 e3                                      movt r3, #0x5863
007637b0  00 30 8d e5                                      str r3, [sp]
007637b4  00 40 a0 e3                                      mov r4, #0
007637b8  06 30 a0 e3                                      mov r3, #6
007637bc  01 50 a0 e1                                      mov r5, r1
007637c0  03 30 cd e5                                      strb r3, [sp, #3]
007637c4  04 40 cd e5                                      strb r4, [sp, #4]
007637c8  00 60 a0 e1                                      mov r6, r0
007637cc  02 80 a0 e1                                      mov r8, r2
007637d0  0d 00 a0 e1                                      mov r0, sp
007637d4  00 20 95 e5                                      ldr r2, [r5]
007637d8  04 10 a0 e3                                      mov r1, #4
007637dc  0f e0 a0 e1                                      mov lr, pc
007637e0  0c f0 95 e5                                      ldr pc, [r5, #0xc]
007637e4  44 20 96 e5                                      ldr r2, [r6, #0x44]
007637e8  44 60 86 e2                                      add r6, r6, #0x44
007637ec  04 00 52 e1                                      cmp r2, r4
007637f0  04 00 00 0a                                      beq #0x763808
007637f4  04 10 92 e5                                      ldr r1, [r2, #4]
007637f8  00 00 51 e3                                      cmp r1, #0
007637fc  0b 00 00 aa                                      bge #0x763830
00763800  00 00 56 e3                                      cmp r6, #0
00763804  17 00 00 1a                                      bne #0x763868
00763808  06 a0 8d e2                                      add sl, sp, #6
0076380c  00 30 e0 e3                                      mvn r3, #0
00763810  b6 30 cd e1                                      strh r3, [sp, #6]
00763814  0a 00 a0 e1                                      mov r0, sl
00763818  02 10 a0 e3                                      mov r1, #2
0076381c  00 20 95 e5                                      ldr r2, [r5]
00763820  0f e0 a0 e1                                      mov lr, pc
00763824  0c f0 95 e5                                      ldr pc, [r5, #0xc]
00763828  0c d0 8d e2                                      add sp, sp, #0xc
0076382c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00763830  08 30 a0 e3                                      mov r3, #8
00763834  03 00 92 e7                                      ldr r0, [r2, r3]
00763838  03 c0 82 e0                                      add ip, r2, r3
0076383c  10 30 83 e2                                      add r3, r3, #0x10
00763840  02 00 70 e3                                      cmn r0, #2
00763844  02 00 00 0a                                      beq #0x763854
00763848  04 00 9c e5                                      ldr r0, [ip, #4]
0076384c  01 00 70 e3                                      cmn r0, #1
00763850  ea ff ff 1a                                      bne #0x763800
00763854  01 40 84 e2                                      add r4, r4, #1
00763858  01 00 54 e1                                      cmp r4, r1
0076385c  f4 ff ff da                                      ble #0x763834
00763860  00 00 56 e3                                      cmp r6, #0
00763864  e7 ff ff 0a                                      beq #0x763808
00763868  06 a0 8d e2                                      add sl, sp, #6
0076386c  00 00 52 e3                                      cmp r2, #0
00763870  e5 ff ff 0a                                      beq #0x76380c
00763874  04 30 92 e5                                      ldr r3, [r2, #4]
00763878  04 00 53 e1                                      cmp r3, r4
0076387c  e2 ff ff ba                                      blt #0x76380c
00763880  04 72 a0 e1                                      lsl r7, r4, #4
00763884  08 70 87 e2                                      add r7, r7, #8
00763888  07 20 82 e0                                      add r2, r2, r7
0076388c  b8 20 d2 e1                                      ldrh r2, [r2, #8]
00763890  02 10 a0 e3                                      mov r1, #2
00763894  0a 00 a0 e1                                      mov r0, sl
00763898  b6 20 cd e1                                      strh r2, [sp, #6]
0076389c  00 20 95 e5                                      ldr r2, [r5]
007638a0  0f e0 a0 e1                                      mov lr, pc
007638a4  0c f0 95 e5                                      ldr pc, [r5, #0xc]
007638a8  00 30 96 e5                                      ldr r3, [r6]
007638ac  05 10 a0 e1                                      mov r1, r5
007638b0  08 20 a0 e1                                      mov r2, r8
007638b4  07 70 83 e0                                      add r7, r3, r7
007638b8  0c 30 97 e5                                      ldr r3, [r7, #0xc]
007638bc  03 00 a0 e1                                      mov r0, r3
007638c0  00 30 93 e5                                      ldr r3, [r3]
007638c4  0f e0 a0 e1                                      mov lr, pc
007638c8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007638cc  00 20 96 e5                                      ldr r2, [r6]
007638d0  04 10 92 e5                                      ldr r1, [r2, #4]
007638d4  01 00 54 e1                                      cmp r4, r1
007638d8  cb ff ff ca                                      bgt #0x76380c
007638dc  01 40 84 e2                                      add r4, r4, #1
007638e0  04 00 51 e1                                      cmp r1, r4
007638e4  e0 ff ff ba                                      blt #0x76386c
007638e8  04 32 a0 e1                                      lsl r3, r4, #4
007638ec  08 30 83 e2                                      add r3, r3, #8
007638f0  03 00 92 e7                                      ldr r0, [r2, r3]
007638f4  03 c0 82 e0                                      add ip, r2, r3
007638f8  10 30 83 e2                                      add r3, r3, #0x10
007638fc  02 00 70 e3                                      cmn r0, #2
00763900  02 00 00 0a                                      beq #0x763910
00763904  04 00 9c e5                                      ldr r0, [ip, #4]
00763908  01 00 70 e3                                      cmn r0, #1
0076390c  d6 ff ff 1a                                      bne #0x76386c
00763910  01 40 84 e2                                      add r4, r4, #1
00763914  04 00 51 e1                                      cmp r1, r4
00763918  f4 ff ff aa                                      bge #0x7638f0
0076391c  d2 ff ff ea                                      b #0x76386c

; FUNCTION 0x00764160, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl16get_sound_sampleEi
; demangled: gameswf::movie_def_impl::get_sound_sample(int)
; decoder-mode: arm
00764160  10 40 2d e9                                      push {r4, lr}
00764164  10 d0 4d e2                                      sub sp, sp, #0x10
00764168  04 10 8d e5                                      str r1, [sp, #4]
0076416c  00 30 a0 e3                                      mov r3, #0
00764170  50 00 80 e2                                      add r0, r0, #0x50
00764174  04 10 8d e2                                      add r1, sp, #4
00764178  0c 20 8d e2                                      add r2, sp, #0xc
0076417c  0c 30 8d e5                                      str r3, [sp, #0xc]
00764180  e3 ff ff eb                                      bl #0x764114
00764184  0c 40 9d e5                                      ldr r4, [sp, #0xc]
00764188  00 00 54 e3                                      cmp r4, #0
0076418c  01 00 00 0a                                      beq #0x764198
00764190  04 00 a0 e1                                      mov r0, r4
00764194  29 d8 ff eb                                      bl #0x75a240
00764198  04 00 a0 e1                                      mov r0, r4
0076419c  10 d0 8d e2                                      add sp, sp, #0x10
007641a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007641f0, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl20get_bitmap_characterEi
; demangled: gameswf::movie_def_impl::get_bitmap_character(int)
; decoder-mode: arm
007641f0  10 40 2d e9                                      push {r4, lr}
007641f4  10 d0 4d e2                                      sub sp, sp, #0x10
007641f8  04 10 8d e5                                      str r1, [sp, #4]
007641fc  00 30 a0 e3                                      mov r3, #0
00764200  4c 00 80 e2                                      add r0, r0, #0x4c
00764204  04 10 8d e2                                      add r1, sp, #4
00764208  0c 20 8d e2                                      add r2, sp, #0xc
0076420c  0c 30 8d e5                                      str r3, [sp, #0xc]
00764210  e3 ff ff eb                                      bl #0x7641a4
00764214  0c 40 9d e5                                      ldr r4, [sp, #0xc]
00764218  00 00 54 e3                                      cmp r4, #0
0076421c  01 00 00 0a                                      beq #0x764228
00764220  04 00 a0 e1                                      mov r0, r4
00764224  05 d8 ff eb                                      bl #0x75a240
00764228  04 00 a0 e1                                      mov r0, r4
0076422c  10 d0 8d e2                                      add sp, sp, #0x10
00764230  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007642c0, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl8get_fontEi
; demangled: gameswf::movie_def_impl::get_font(int)
; decoder-mode: arm
007642c0  10 40 2d e9                                      push {r4, lr}
007642c4  10 d0 4d e2                                      sub sp, sp, #0x10
007642c8  04 10 8d e5                                      str r1, [sp, #4]
007642cc  00 30 a0 e3                                      mov r3, #0
007642d0  48 00 80 e2                                      add r0, r0, #0x48
007642d4  04 10 8d e2                                      add r1, sp, #4
007642d8  0c 20 8d e2                                      add r2, sp, #0xc
007642dc  0c 30 8d e5                                      str r3, [sp, #0xc]
007642e0  e3 ff ff eb                                      bl #0x764274
007642e4  0c 40 9d e5                                      ldr r4, [sp, #0xc]
007642e8  00 00 54 e3                                      cmp r4, #0
007642ec  01 00 00 0a                                      beq #0x7642f8
007642f0  04 00 a0 e1                                      mov r0, r4
007642f4  d1 d7 ff eb                                      bl #0x75a240
007642f8  04 00 a0 e1                                      mov r0, r4
007642fc  10 d0 8d e2                                      add sp, sp, #0x10
00764300  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007644b8, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl15add_init_actionEiPNS_11execute_tagE
; demangled: gameswf::movie_def_impl::add_init_action(int, gameswf::execute_tag*)
; decoder-mode: arm
007644b8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007644bc  3c 60 90 e5                                      ldr r6, [r0, #0x3c]
007644c0  64 50 90 e5                                      ldr r5, [r0, #0x64]
007644c4  02 a0 a0 e1                                      mov sl, r2
007644c8  00 40 a0 e1                                      mov r4, r0
007644cc  06 72 85 e0                                      add r7, r5, r6, lsl #4
007644d0  04 30 97 e5                                      ldr r3, [r7, #4]
007644d4  08 20 97 e5                                      ldr r2, [r7, #8]
007644d8  01 80 83 e2                                      add r8, r3, #1
007644dc  02 00 58 e1                                      cmp r8, r2
007644e0  03 00 00 da                                      ble #0x7644f4
007644e4  07 00 a0 e1                                      mov r0, r7
007644e8  c8 10 88 e0                                      add r1, r8, r8, asr #1
007644ec  d2 ff ff eb                                      bl #0x76443c
007644f0  04 30 97 e5                                      ldr r3, [r7, #4]
007644f4  06 22 95 e7                                      ldr r2, [r5, r6, lsl #4]
007644f8  03 a1 82 e7                                      str sl, [r2, r3, lsl #2]
007644fc  01 30 a0 e3                                      mov r3, #1
00764500  04 80 87 e5                                      str r8, [r7, #4]
00764504  ec 30 c4 e5                                      strb r3, [r4, #0xec]
00764508  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0076450c, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl15add_execute_tagEPNS_11execute_tagE
; demangled: gameswf::movie_def_impl::add_execute_tag(gameswf::execute_tag*)
; decoder-mode: arm
0076450c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00764510  54 60 90 e5                                      ldr r6, [r0, #0x54]
00764514  3c 70 90 e5                                      ldr r7, [r0, #0x3c]
00764518  01 80 a0 e1                                      mov r8, r1
0076451c  07 42 86 e0                                      add r4, r6, r7, lsl #4
00764520  04 30 94 e5                                      ldr r3, [r4, #4]
00764524  08 20 94 e5                                      ldr r2, [r4, #8]
00764528  01 50 83 e2                                      add r5, r3, #1
0076452c  02 00 55 e1                                      cmp r5, r2
00764530  03 00 00 da                                      ble #0x764544
00764534  04 00 a0 e1                                      mov r0, r4
00764538  c5 10 85 e0                                      add r1, r5, r5, asr #1
0076453c  be ff ff eb                                      bl #0x76443c
00764540  04 30 94 e5                                      ldr r3, [r4, #4]
00764544  07 22 96 e7                                      ldr r2, [r6, r7, lsl #4]
00764548  03 81 82 e7                                      str r8, [r2, r3, lsl #2]
0076454c  04 50 84 e5                                      str r5, [r4, #4]
00764550  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0076481c, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl15add_bitmap_infoEPNS_11bitmap_infoE
; demangled: gameswf::movie_def_impl::add_bitmap_info(gameswf::bitmap_info*)
; decoder-mode: arm
0076481c  04 e0 2d e5                                      str lr, [sp, #-4]!
00764820  0c d0 4d e2                                      sub sp, sp, #0xc
00764824  08 30 8d e2                                      add r3, sp, #8
00764828  04 10 23 e5                                      str r1, [r3, #-4]!
0076482c  9c 00 80 e2                                      add r0, r0, #0x9c
00764830  03 10 a0 e1                                      mov r1, r3
00764834  e4 ff ff eb                                      bl #0x7647cc
00764838  0c d0 8d e2                                      add sp, sp, #0xc
0076483c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00764da0, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl17get_labeled_frameERKNS_10tu_stringiEPi
; demangled: gameswf::movie_def_impl::get_labeled_frame(gameswf::tu_stringi const&, int*)
; decoder-mode: arm
00764da0  30 40 2d e9                                      push {r4, r5, lr}
00764da4  0c d0 4d e2                                      sub sp, sp, #0xc
00764da8  08 30 8d e2                                      add r3, sp, #8
00764dac  04 10 23 e5                                      str r1, [r3, #-4]!
00764db0  03 10 a0 e1                                      mov r1, r3
00764db4  00 40 a0 e1                                      mov r4, r0
00764db8  74 00 80 e2                                      add r0, r0, #0x74
00764dbc  02 50 a0 e1                                      mov r5, r2
00764dc0  be ff ff eb                                      bl #0x764cc0
00764dc4  00 30 50 e2                                      subs r3, r0, #0
00764dc8  00 00 a0 b3                                      movlt r0, #0
00764dcc  06 00 00 ba                                      blt #0x764dec
00764dd0  00 00 55 e3                                      cmp r5, #0
00764dd4  74 20 94 15                                      ldrne r2, [r4, #0x74]
00764dd8  01 00 a0 03                                      moveq r0, #1
00764ddc  01 00 a0 13                                      movne r0, #1
00764de0  03 32 82 10                                      addne r3, r2, r3, lsl #4
00764de4  14 30 93 15                                      ldrne r3, [r3, #0x14]
00764de8  00 30 85 15                                      strne r3, [r5]
00764dec  0c d0 8d e2                                      add sp, sp, #0xc
00764df0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00765000, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl17get_height_pixelsEv
; demangled: gameswf::movie_def_impl::get_height_pixels() const
; decoder-mode: arm
00765000  10 40 2d e9                                      push {r4, lr}
00765004  bc 10 90 e5                                      ldr r1, [r0, #0xbc]
00765008  c0 00 90 e5                                      ldr r0, [r0, #0xc0]
0076500c  e6 a4 ee eb                                      bl #0x30e3ac
00765010  41 14 a0 e3                                      mov r1, #0x41000000
00765014  0a 16 81 e2                                      add r1, r1, #0xa00000
00765018  1d a7 ee eb                                      bl #0x30ec94
0076501c  10 40 bd e8                                      pop {r4, lr}
00765020  3b a5 ee ea                                      b #0x30e514

; FUNCTION 0x00765024, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl16get_width_pixelsEv
; demangled: gameswf::movie_def_impl::get_width_pixels() const
; decoder-mode: arm
00765024  10 40 2d e9                                      push {r4, lr}
00765028  b4 10 90 e5                                      ldr r1, [r0, #0xb4]
0076502c  b8 00 90 e5                                      ldr r0, [r0, #0xb8]
00765030  dd a4 ee eb                                      bl #0x30e3ac
00765034  41 14 a0 e3                                      mov r1, #0x41000000
00765038  0a 16 81 e2                                      add r1, r1, #0xa00000
0076503c  14 a7 ee eb                                      bl #0x30ec94
00765040  10 40 bd e8                                      pop {r4, lr}
00765044  32 a5 ee ea                                      b #0x30e514

; FUNCTION 0x00765464, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl17get_character_defEi
; demangled: gameswf::movie_def_impl::get_character_def(int)
; decoder-mode: arm
00765464  10 40 2d e9                                      push {r4, lr}
00765468  10 d0 4d e2                                      sub sp, sp, #0x10
0076546c  04 10 8d e5                                      str r1, [sp, #4]
00765470  00 30 a0 e3                                      mov r3, #0
00765474  44 00 80 e2                                      add r0, r0, #0x44
00765478  04 10 8d e2                                      add r1, sp, #4
0076547c  0c 20 8d e2                                      add r2, sp, #0xc
00765480  0c 30 8d e5                                      str r3, [sp, #0xc]
00765484  ff fa ff eb                                      bl #0x764088
00765488  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0076548c  00 00 54 e3                                      cmp r4, #0
00765490  01 00 00 0a                                      beq #0x76549c
00765494  04 00 a0 e1                                      mov r0, r4
00765498  68 d3 ff eb                                      bl #0x75a240
0076549c  04 00 a0 e1                                      mov r0, r4
007654a0  10 d0 8d e2                                      add sp, sp, #0x10
007654a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007654a8, declared_size=364, range_size=364, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl17input_cached_dataEPNS_7tu_fileE
; demangled: gameswf::movie_def_impl::input_cached_data(gameswf::tu_file*)
; decoder-mode: arm
007654a8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007654ac  01 40 a0 e1                                      mov r4, r1
007654b0  14 d0 4d e2                                      sub sp, sp, #0x14
007654b4  00 80 a0 e1                                      mov r8, r0
007654b8  04 10 a0 e3                                      mov r1, #4
007654bc  08 00 8d e2                                      add r0, sp, #8
007654c0  00 20 94 e5                                      ldr r2, [r4]
007654c4  0f e0 a0 e1                                      mov lr, pc
007654c8  08 f0 94 e5                                      ldr pc, [r4, #8]
007654cc  08 30 dd e5                                      ldrb r3, [sp, #8]
007654d0  67 00 53 e3                                      cmp r3, #0x67
007654d4  02 00 00 1a                                      bne #0x7654e4
007654d8  09 30 dd e5                                      ldrb r3, [sp, #9]
007654dc  73 00 53 e3                                      cmp r3, #0x73
007654e0  04 00 00 0a                                      beq #0x7654f8
007654e4  14 01 9f e5                                      ldr r0, [pc, #0x114]
007654e8  00 00 8f e0                                      add r0, pc, r0
007654ec  24 ef ff eb                                      bl #0x761184
007654f0  14 d0 8d e2                                      add sp, sp, #0x14
007654f4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007654f8  0a 30 dd e5                                      ldrb r3, [sp, #0xa]
007654fc  63 00 53 e3                                      cmp r3, #0x63
00765500  f7 ff ff 1a                                      bne #0x7654e4
00765504  0b 10 dd e5                                      ldrb r1, [sp, #0xb]
00765508  06 00 51 e3                                      cmp r1, #6
0076550c  2a 00 00 1a                                      bne #0x7655bc
00765510  44 80 88 e2                                      add r8, r8, #0x44
00765514  0e 60 8d e2                                      add r6, sp, #0xe
00765518  0d 70 a0 e1                                      mov r7, sp
0076551c  04 a0 8d e2                                      add sl, sp, #4
00765520  24 30 94 e5                                      ldr r3, [r4, #0x24]
00765524  00 00 53 e3                                      cmp r3, #0
00765528  1f 00 00 1a                                      bne #0x7655ac
0076552c  00 00 94 e5                                      ldr r0, [r4]
00765530  0f e0 a0 e1                                      mov lr, pc
00765534  1c f0 94 e5                                      ldr pc, [r4, #0x1c]
00765538  00 50 50 e2                                      subs r5, r0, #0
0076553c  02 10 a0 e3                                      mov r1, #2
00765540  06 00 a0 e1                                      mov r0, r6
00765544  21 00 00 1a                                      bne #0x7655d0
00765548  00 20 94 e5                                      ldr r2, [r4]
0076554c  0f e0 a0 e1                                      mov lr, pc
00765550  08 f0 94 e5                                      ldr pc, [r4, #8]
00765554  fe 30 dd e1                                      ldrsh r3, [sp, #0xe]
00765558  0a 20 a0 e1                                      mov r2, sl
0076555c  0d 10 a0 e1                                      mov r1, sp
00765560  01 00 73 e3                                      cmn r3, #1
00765564  08 00 a0 e1                                      mov r0, r8
00765568  e0 ff ff 0a                                      beq #0x7654f0
0076556c  28 00 8d e8                                      stm sp, {r3, r5}
00765570  c4 fa ff eb                                      bl #0x764088
00765574  04 30 9d e5                                      ldr r3, [sp, #4]
00765578  04 10 a0 e1                                      mov r1, r4
0076557c  00 00 53 e2                                      subs r0, r3, #0
00765580  16 00 00 0a                                      beq #0x7655e0
00765584  00 30 93 e5                                      ldr r3, [r3]
00765588  0f e0 a0 e1                                      mov lr, pc
0076558c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00765590  04 00 9d e5                                      ldr r0, [sp, #4]
00765594  00 00 50 e3                                      cmp r0, #0
00765598  e0 ff ff 0a                                      beq #0x765520
0076559c  27 d3 ff eb                                      bl #0x75a240
007655a0  24 30 94 e5                                      ldr r3, [r4, #0x24]
007655a4  00 00 53 e3                                      cmp r3, #0
007655a8  df ff ff 0a                                      beq #0x76552c
007655ac  50 00 9f e5                                      ldr r0, [pc, #0x50]
007655b0  00 00 8f e0                                      add r0, pc, r0
007655b4  f2 ee ff eb                                      bl #0x761184
007655b8  cc ff ff ea                                      b #0x7654f0
007655bc  44 00 9f e5                                      ldr r0, [pc, #0x44]
007655c0  06 20 a0 e3                                      mov r2, #6
007655c4  00 00 8f e0                                      add r0, pc, r0
007655c8  ed ee ff eb                                      bl #0x761184
007655cc  c7 ff ff ea                                      b #0x7654f0
007655d0  34 00 9f e5                                      ldr r0, [pc, #0x34]
007655d4  00 00 8f e0                                      add r0, pc, r0
007655d8  e9 ee ff eb                                      bl #0x761184
007655dc  c3 ff ff ea                                      b #0x7654f0
007655e0  28 00 9f e5                                      ldr r0, [pc, #0x28]
007655e4  00 00 8f e0                                      add r0, pc, r0
007655e8  e5 ee ff eb                                      bl #0x761184
007655ec  04 00 9d e5                                      ldr r0, [sp, #4]
007655f0  00 00 50 e3                                      cmp r0, #0
007655f4  bd ff ff 0a                                      beq #0x7654f0
007655f8  10 d3 ff eb                                      bl #0x75a240
007655fc  bb ff ff ea                                      b #0x7654f0
; mapping-symbol data/literal pool
00765600  60 38 1a 00 10 38 1a 00 bc 37 1a 00 24 38 1a 00  .byte 0x60, 0x38, 0x1a, 0x00, 0x10, 0x38, 0x1a, 0x00, 0xbc, 0x37, 0x1a, 0x00, 0x24, 0x38, 0x1a, 0x00
00765610  54 38 1a 00                                      .byte 0x54, 0x38, 0x1a, 0x00

; FUNCTION 0x007658d8, declared_size=540, range_size=540, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl15get_owned_fontsEPNS_5arrayIPNS_4fontEEE
; demangled: gameswf::movie_def_impl::get_owned_fonts(gameswf::array<gameswf::font*>*)
; decoder-mode: arm
007658d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007658dc  04 30 91 e5                                      ldr r3, [r1, #4]
007658e0  1c d0 4d e2                                      sub sp, sp, #0x1c
007658e4  01 70 a0 e1                                      mov r7, r1
007658e8  00 00 53 e3                                      cmp r3, #0
007658ec  00 a0 a0 e1                                      mov sl, r0
007658f0  76 00 00 da                                      ble #0x765ad0
007658f4  00 50 a0 e3                                      mov r5, #0
007658f8  04 50 87 e5                                      str r5, [r7, #4]
007658fc  48 20 9a e5                                      ldr r2, [sl, #0x48]
00765900  48 60 8a e2                                      add r6, sl, #0x48
00765904  00 50 8d e5                                      str r5, [sp]
00765908  05 00 52 e1                                      cmp r2, r5
0076590c  04 50 8d e5                                      str r5, [sp, #4]
00765910  08 50 8d e5                                      str r5, [sp, #8]
00765914  0c 50 cd e5                                      strb r5, [sp, #0xc]
00765918  04 00 00 0a                                      beq #0x765930
0076591c  04 10 92 e5                                      ldr r1, [r2, #4]
00765920  00 00 51 e3                                      cmp r1, #0
00765924  09 00 00 aa                                      bge #0x765950
00765928  00 00 56 e3                                      cmp r6, #0
0076592c  15 00 00 1a                                      bne #0x765988
00765930  0d 80 a0 e1                                      mov r8, sp
00765934  00 30 a0 e3                                      mov r3, #0
00765938  0d 00 a0 e1                                      mov r0, sp
0076593c  03 10 a0 e1                                      mov r1, r3
00765940  04 30 8d e5                                      str r3, [sp, #4]
00765944  9d fa ff eb                                      bl #0x7643c0
00765948  1c d0 8d e2                                      add sp, sp, #0x1c
0076594c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00765950  08 30 a0 e3                                      mov r3, #8
00765954  03 00 92 e7                                      ldr r0, [r2, r3]
00765958  03 c0 82 e0                                      add ip, r2, r3
0076595c  10 30 83 e2                                      add r3, r3, #0x10
00765960  02 00 70 e3                                      cmn r0, #2
00765964  02 00 00 0a                                      beq #0x765974
00765968  04 00 9c e5                                      ldr r0, [ip, #4]
0076596c  01 00 70 e3                                      cmn r0, #1
00765970  ec ff ff 1a                                      bne #0x765928
00765974  01 50 85 e2                                      add r5, r5, #1
00765978  01 00 55 e1                                      cmp r5, r1
0076597c  f4 ff ff da                                      ble #0x765954
00765980  00 00 56 e3                                      cmp r6, #0
00765984  e9 ff ff 0a                                      beq #0x765930
00765988  00 30 a0 e3                                      mov r3, #0
0076598c  0d 80 a0 e1                                      mov r8, sp
00765990  14 90 8d e2                                      add sb, sp, #0x14
00765994  10 b0 8d e2                                      add fp, sp, #0x10
00765998  00 00 52 e3                                      cmp r2, #0
0076599c  02 00 00 0a                                      beq #0x7659ac
007659a0  04 10 92 e5                                      ldr r1, [r2, #4]
007659a4  05 00 51 e1                                      cmp r1, r5
007659a8  0a 00 00 aa                                      bge #0x7659d8
007659ac  00 00 53 e3                                      cmp r3, #0
007659b0  df ff ff ca                                      bgt #0x765934
007659b4  de ff ff aa                                      bge #0x765934
007659b8  03 21 a0 e1                                      lsl r2, r3, #2
007659bc  00 00 a0 e3                                      mov r0, #0
007659c0  00 10 9d e5                                      ldr r1, [sp]
007659c4  01 30 93 e2                                      adds r3, r3, #1
007659c8  02 00 81 e7                                      str r0, [r1, r2]
007659cc  04 20 82 e2                                      add r2, r2, #4
007659d0  fa ff ff 1a                                      bne #0x7659c0
007659d4  d6 ff ff ea                                      b #0x765934
007659d8  05 12 a0 e1                                      lsl r1, r5, #4
007659dc  08 10 81 e2                                      add r1, r1, #8
007659e0  01 20 82 e0                                      add r2, r2, r1
007659e4  0c 20 92 e5                                      ldr r2, [r2, #0xc]
007659e8  14 20 8d e5                                      str r2, [sp, #0x14]
007659ec  44 20 92 e5                                      ldr r2, [r2, #0x44]
007659f0  02 00 5a e1                                      cmp sl, r2
007659f4  17 00 00 0a                                      beq #0x765a58
007659f8  00 20 96 e5                                      ldr r2, [r6]
007659fc  04 10 92 e5                                      ldr r1, [r2, #4]
00765a00  05 00 51 e1                                      cmp r1, r5
00765a04  e8 ff ff ba                                      blt #0x7659ac
00765a08  01 50 85 e2                                      add r5, r5, #1
00765a0c  05 00 51 e1                                      cmp r1, r5
00765a10  09 00 00 ba                                      blt #0x765a3c
00765a14  05 32 a0 e1                                      lsl r3, r5, #4
00765a18  08 30 83 e2                                      add r3, r3, #8
00765a1c  03 00 92 e7                                      ldr r0, [r2, r3]
00765a20  03 c0 82 e0                                      add ip, r2, r3
00765a24  10 30 83 e2                                      add r3, r3, #0x10
00765a28  02 00 70 e3                                      cmn r0, #2
00765a2c  04 00 00 0a                                      beq #0x765a44
00765a30  04 00 9c e5                                      ldr r0, [ip, #4]
00765a34  01 00 70 e3                                      cmn r0, #1
00765a38  01 00 00 0a                                      beq #0x765a44
00765a3c  04 30 9d e5                                      ldr r3, [sp, #4]
00765a40  d4 ff ff ea                                      b #0x765998
00765a44  01 50 85 e2                                      add r5, r5, #1
00765a48  05 00 51 e1                                      cmp r1, r5
00765a4c  f2 ff ff aa                                      bge #0x765a1c
00765a50  04 30 9d e5                                      ldr r3, [sp, #4]
00765a54  cf ff ff ea                                      b #0x765998
00765a58  00 20 96 e5                                      ldr r2, [r6]
00765a5c  00 00 53 e3                                      cmp r3, #0
00765a60  01 20 82 e0                                      add r2, r2, r1
00765a64  08 10 92 e5                                      ldr r1, [r2, #8]
00765a68  10 10 8d e5                                      str r1, [sp, #0x10]
00765a6c  15 00 00 da                                      ble #0x765ac8
00765a70  00 00 9d e5                                      ldr r0, [sp]
00765a74  00 20 90 e5                                      ldr r2, [r0]
00765a78  02 00 51 e1                                      cmp r1, r2
00765a7c  00 40 a0 a3                                      movge r4, #0
00765a80  03 00 00 aa                                      bge #0x765a94
00765a84  0f 00 00 ea                                      b #0x765ac8
00765a88  04 21 90 e7                                      ldr r2, [r0, r4, lsl #2]
00765a8c  02 00 51 e1                                      cmp r1, r2
00765a90  02 00 00 ba                                      blt #0x765aa0
00765a94  01 40 84 e2                                      add r4, r4, #1
00765a98  03 00 54 e1                                      cmp r4, r3
00765a9c  f9 ff ff 1a                                      bne #0x765a88
00765aa0  07 00 a0 e1                                      mov r0, r7
00765aa4  04 10 a0 e1                                      mov r1, r4
00765aa8  09 20 a0 e1                                      mov r2, sb
00765aac  69 ff ff eb                                      bl #0x765858
00765ab0  0d 00 a0 e1                                      mov r0, sp
00765ab4  04 10 a0 e1                                      mov r1, r4
00765ab8  0b 20 a0 e1                                      mov r2, fp
00765abc  7e fb ff eb                                      bl #0x7648bc
00765ac0  04 30 9d e5                                      ldr r3, [sp, #4]
00765ac4  cb ff ff ea                                      b #0x7659f8
00765ac8  00 40 a0 e3                                      mov r4, #0
00765acc  f3 ff ff ea                                      b #0x765aa0
00765ad0  87 ff ff aa                                      bge #0x7658f4
00765ad4  03 21 a0 e1                                      lsl r2, r3, #2
00765ad8  00 00 a0 e3                                      mov r0, #0
00765adc  00 10 97 e5                                      ldr r1, [r7]
00765ae0  01 30 93 e2                                      adds r3, r3, #1
00765ae4  02 00 81 e7                                      str r0, [r1, r2]
00765ae8  04 20 82 e2                                      add r2, r2, #4
00765aec  fa ff ff 1a                                      bne #0x765adc
00765af0  7f ff ff ea                                      b #0x7658f4

; FUNCTION 0x00765af4, declared_size=388, range_size=388, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl9read_tagsEv
; demangled: gameswf::movie_def_impl::read_tags()
; decoder-mode: arm
00765af4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00765af8  6c 71 9f e5                                      ldr r7, [pc, #0x16c]
00765afc  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
00765b00  0c d0 4d e2                                      sub sp, sp, #0xc
00765b04  00 40 a0 e1                                      mov r4, r0
00765b08  07 70 8f e0                                      add r7, pc, r7
00765b0c  06 60 8f e0                                      add r6, pc, r6
00765b10  04 50 8d e2                                      add r5, sp, #4
00765b14  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
00765b18  57 78 00 eb                                      bl #0x783c7c
00765b1c  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
00765b20  03 00 50 e1                                      cmp r0, r3
00765b24  1f 00 00 3a                                      blo #0x765ba8
00765b28  d0 00 94 e5                                      ldr r0, [r4, #0xd0]
00765b2c  00 00 50 e3                                      cmp r0, #0
00765b30  02 00 00 0a                                      beq #0x765b40
00765b34  a1 f8 ff eb                                      bl #0x763dc0
00765b38  00 30 a0 e3                                      mov r3, #0
00765b3c  d0 30 84 e5                                      str r3, [r4, #0xd0]
00765b40  dc 50 94 e5                                      ldr r5, [r4, #0xdc]
00765b44  00 00 55 e3                                      cmp r5, #0
00765b48  04 00 00 0a                                      beq #0x765b60
00765b4c  05 00 a0 e1                                      mov r0, r5
00765b50  a4 43 01 eb                                      bl #0x7b69e8
00765b54  05 00 a0 e1                                      mov r0, r5
00765b58  00 10 a0 e3                                      mov r1, #0
00765b5c  f5 b3 ff eb                                      bl #0x752b38
00765b60  d4 50 94 e5                                      ldr r5, [r4, #0xd4]
00765b64  00 00 55 e3                                      cmp r5, #0
00765b68  04 00 00 0a                                      beq #0x765b80
00765b6c  05 00 a0 e1                                      mov r0, r5
00765b70  2e 79 00 eb                                      bl #0x784030
00765b74  05 00 a0 e1                                      mov r0, r5
00765b78  00 10 a0 e3                                      mov r1, #0
00765b7c  ed b3 ff eb                                      bl #0x752b38
00765b80  e0 40 94 e5                                      ldr r4, [r4, #0xe0]
00765b84  00 00 54 e3                                      cmp r4, #0
00765b88  04 00 00 0a                                      beq #0x765ba0
00765b8c  04 00 a0 e1                                      mov r0, r4
00765b90  94 43 01 eb                                      bl #0x7b69e8
00765b94  04 00 a0 e1                                      mov r0, r4
00765b98  00 10 a0 e3                                      mov r1, #0
00765b9c  e5 b3 ff eb                                      bl #0x752b38
00765ba0  0c d0 8d e2                                      add sp, sp, #0xc
00765ba4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00765ba8  41 30 d4 e5                                      ldrb r3, [r4, #0x41]
00765bac  00 00 53 e3                                      cmp r3, #0
00765bb0  dc ff ff 1a                                      bne #0x765b28
00765bb4  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
00765bb8  44 78 00 eb                                      bl #0x783cd0
00765bbc  01 00 50 e3                                      cmp r0, #1
00765bc0  04 00 8d e5                                      str r0, [sp, #4]
00765bc4  18 00 00 0a                                      beq #0x765c2c
00765bc8  05 00 a0 e1                                      mov r0, r5
00765bcc  8d fd ff eb                                      bl #0x765208
00765bd0  00 30 50 e2                                      subs r3, r0, #0
00765bd4  1c 00 00 ba                                      blt #0x765c4c
00765bd8  00 20 96 e5                                      ldr r2, [r6]
00765bdc  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
00765be0  04 10 9d e5                                      ldr r1, [sp, #4]
00765be4  03 32 82 e0                                      add r3, r2, r3, lsl #4
00765be8  04 20 a0 e1                                      mov r2, r4
00765bec  0f e0 a0 e1                                      mov lr, pc
00765bf0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00765bf4  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
00765bf8  58 79 00 eb                                      bl #0x784160
00765bfc  04 30 9d e5                                      ldr r3, [sp, #4]
00765c00  00 00 53 e3                                      cmp r3, #0
00765c04  04 00 00 1a                                      bne #0x765c1c
00765c08  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
00765c0c  1a 78 00 eb                                      bl #0x783c7c
00765c10  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
00765c14  03 00 50 e1                                      cmp r0, r3
00765c18  0f 00 00 1a                                      bne #0x765c5c
00765c1c  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
00765c20  15 78 00 eb                                      bl #0x783c7c
00765c24  cc 00 84 e5                                      str r0, [r4, #0xcc]
00765c28  b9 ff ff ea                                      b #0x765b14
00765c2c  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00765c30  00 30 94 e5                                      ldr r3, [r4]
00765c34  04 00 a0 e1                                      mov r0, r4
00765c38  01 20 82 e2                                      add r2, r2, #1
00765c3c  3c 20 84 e5                                      str r2, [r4, #0x3c]
00765c40  0f e0 a0 e1                                      mov lr, pc
00765c44  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00765c48  e9 ff ff ea                                      b #0x765bf4
00765c4c  07 00 a0 e1                                      mov r0, r7
00765c50  04 10 9d e5                                      ldr r1, [sp, #4]
00765c54  65 ed ff eb                                      bl #0x7611f0
00765c58  e5 ff ff ea                                      b #0x765bf4
00765c5c  10 00 9f e5                                      ldr r0, [pc, #0x10]
00765c60  00 00 8f e0                                      add r0, pc, r0
00765c64  61 ed ff eb                                      bl #0x7611f0
00765c68  ae ff ff ea                                      b #0x765b28
; mapping-symbol data/literal pool
00765c6c  80 33 1a 00 68 6c 29 00 48 32 1a 00              .byte 0x80, 0x33, 0x1a, 0x00, 0x68, 0x6c, 0x29, 0x00, 0x48, 0x32, 0x1a, 0x00

; FUNCTION 0x00765c88, declared_size=400, range_size=400, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl4readEPNS_7tu_fileE
; demangled: gameswf::movie_def_impl::read(gameswf::tu_file*)
; decoder-mode: arm
00765c88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00765c8c  00 40 a0 e1                                      mov r4, r0
00765c90  e0 10 84 e5                                      str r1, [r4, #0xe0]
00765c94  08 d0 4d e2                                      sub sp, sp, #8
00765c98  00 00 91 e5                                      ldr r0, [r1]
00765c9c  01 50 a0 e1                                      mov r5, r1
00765ca0  0f e0 a0 e1                                      mov lr, pc
00765ca4  18 f0 91 e5                                      ldr pc, [r1, #0x18]
00765ca8  04 60 8d e2                                      add r6, sp, #4
00765cac  00 70 a0 e1                                      mov r7, r0
00765cb0  04 10 a0 e3                                      mov r1, #4
00765cb4  00 20 95 e5                                      ldr r2, [r5]
00765cb8  06 00 a0 e1                                      mov r0, r6
00765cbc  0f e0 a0 e1                                      mov lr, pc
00765cc0  08 f0 95 e5                                      ldr pc, [r5, #8]
00765cc4  06 00 a0 e1                                      mov r0, r6
00765cc8  04 10 a0 e3                                      mov r1, #4
00765ccc  04 60 9d e5                                      ldr r6, [sp, #4]
00765cd0  00 20 95 e5                                      ldr r2, [r5]
00765cd4  0f e0 a0 e1                                      mov lr, pc
00765cd8  08 f0 95 e5                                      ldr pc, [r5, #8]
00765cdc  04 80 9d e5                                      ldr r8, [sp, #4]
00765ce0  43 17 05 e3                                      movw r1, #0x5743
00765ce4  46 37 05 e3                                      movw r3, #0x5746
00765ce8  ff 24 c6 e3                                      bic r2, r6, #0xff000000
00765cec  53 10 40 e3                                      movt r1, #0x53
00765cf0  53 30 40 e3                                      movt r3, #0x53
00765cf4  01 00 52 e1                                      cmp r2, r1
00765cf8  03 00 52 11                                      cmpne r2, r3
00765cfc  08 70 87 e0                                      add r7, r7, r8
00765d00  26 0c a0 e1                                      lsr r0, r6, #0x18
00765d04  00 20 a0 03                                      moveq r2, #0
00765d08  01 20 a0 13                                      movne r2, #1
00765d0c  d8 70 84 e5                                      str r7, [r4, #0xd8]
00765d10  c8 00 84 e5                                      str r0, [r4, #0xc8]
00765d14  3a 00 00 1a                                      bne #0x765e04
00765d18  ff 60 06 e2                                      and r6, r6, #0xff
00765d1c  43 00 56 e3                                      cmp r6, #0x43
00765d20  00 60 a0 13                                      movne r6, #0
00765d24  01 60 a0 03                                      moveq r6, #1
00765d28  00 00 56 e3                                      cmp r6, #0
00765d2c  dc 20 84 e5                                      str r2, [r4, #0xdc]
00765d30  2c 00 00 1a                                      bne #0x765de8
00765d34  05 00 a0 e1                                      mov r0, r5
00765d38  3d 44 01 eb                                      bl #0x7b6e34
00765d3c  00 70 a0 e1                                      mov r7, r0
00765d40  dc 00 84 e5                                      str r0, [r4, #0xdc]
00765d44  00 10 a0 e3                                      mov r1, #0
00765d48  2c 00 a0 e3                                      mov r0, #0x2c
00765d4c  95 b3 ff eb                                      bl #0x752ba8
00765d50  06 20 a0 e1                                      mov r2, r6
00765d54  00 50 a0 e1                                      mov r5, r0
00765d58  07 10 a0 e1                                      mov r1, r7
00765d5c  1c 78 00 eb                                      bl #0x783dd4
00765d60  05 10 a0 e1                                      mov r1, r5
00765d64  b4 00 84 e2                                      add r0, r4, #0xb4
00765d68  d4 50 84 e5                                      str r5, [r4, #0xd4]
00765d6c  9e c0 00 eb                                      bl #0x795fec
00765d70  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
00765d74  a6 77 00 eb                                      bl #0x783c14
00765d78  f9 a2 ee eb                                      bl #0x30e964
00765d7c  ee 15 a0 e3                                      mov r1, #0x3b800000
00765d80  f9 a3 ee eb                                      bl #0x30ed6c
00765d84  c4 00 84 e5                                      str r0, [r4, #0xc4]
00765d88  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
00765d8c  a0 77 00 eb                                      bl #0x783c14
00765d90  00 00 50 e3                                      cmp r0, #0
00765d94  01 30 a0 03                                      moveq r3, #1
00765d98  38 00 84 e5                                      str r0, [r4, #0x38]
00765d9c  38 30 84 05                                      streq r3, [r4, #0x38]
00765da0  04 00 a0 e1                                      mov r0, r4
00765da4  00 30 94 e5                                      ldr r3, [r4]
00765da8  0f e0 a0 e1                                      mov lr, pc
00765dac  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00765db0  00 10 a0 e1                                      mov r1, r0
00765db4  54 00 84 e2                                      add r0, r4, #0x54
00765db8  04 fa ff eb                                      bl #0x7645d0
00765dbc  00 30 94 e5                                      ldr r3, [r4]
00765dc0  04 00 a0 e1                                      mov r0, r4
00765dc4  0f e0 a0 e1                                      mov lr, pc
00765dc8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00765dcc  00 10 a0 e1                                      mov r1, r0
00765dd0  64 00 84 e2                                      add r0, r4, #0x64
00765dd4  fd f9 ff eb                                      bl #0x7645d0
00765dd8  04 00 a0 e1                                      mov r0, r4
00765ddc  44 ff ff eb                                      bl #0x765af4
00765de0  08 d0 8d e2                                      add sp, sp, #8
00765de4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00765de8  05 00 a0 e1                                      mov r0, r5
00765dec  7f 47 01 eb                                      bl #0x7b7bf0
00765df0  08 80 48 e2                                      sub r8, r8, #8
00765df4  00 70 a0 e1                                      mov r7, r0
00765df8  d8 80 84 e5                                      str r8, [r4, #0xd8]
00765dfc  dc 00 84 e5                                      str r0, [r4, #0xdc]
00765e00  cf ff ff ea                                      b #0x765d44
00765e04  08 00 9f e5                                      ldr r0, [pc, #8]
00765e08  00 00 8f e0                                      add r0, pc, r0
00765e0c  dc ec ff eb                                      bl #0x761184
00765e10  f2 ff ff ea                                      b #0x765de0
; mapping-symbol data/literal pool
00765e14  f8 30 1a 00                                      .byte 0xf8, 0x30, 0x1a, 0x00

; FUNCTION 0x00765ec8, declared_size=372, range_size=372, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_implC1EPNS_6playerENS_19create_bitmaps_flagENS_23create_font_shapes_flagE
; demangled: gameswf::movie_def_impl::movie_def_impl(gameswf::player*, gameswf::create_bitmaps_flag, gameswf::create_font_shapes_flag)
; decoder-mode: arm
00765ec8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00765ecc  60 41 9f e5                                      ldr r4, [pc, #0x160]
00765ed0  00 60 a0 e1                                      mov r6, r0
00765ed4  02 50 a0 e1                                      mov r5, r2
00765ed8  03 80 a0 e1                                      mov r8, r3
00765edc  01 70 a0 e1                                      mov r7, r1
00765ee0  d7 e2 ff eb                                      bl #0x75ea44
00765ee4  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
00765ee8  04 40 8f e0                                      add r4, pc, r4
00765eec  00 30 a0 e3                                      mov r3, #0
00765ef0  02 20 94 e7                                      ldr r2, [r4, r2]
00765ef4  00 10 e0 e3                                      mvn r1, #0
00765ef8  20 10 86 e5                                      str r1, [r6, #0x20]
00765efc  08 20 82 e2                                      add r2, r2, #8
00765f00  00 20 86 e5                                      str r2, [r6]
00765f04  28 10 86 e5                                      str r1, [r6, #0x28]
00765f08  24 30 86 e5                                      str r3, [r6, #0x24]
00765f0c  2c 30 c6 e5                                      strb r3, [r6, #0x2c]
00765f10  2d 30 c6 e5                                      strb r3, [r6, #0x2d]
00765f14  2e 30 c6 e5                                      strb r3, [r6, #0x2e]
00765f18  30 30 86 e5                                      str r3, [r6, #0x30]
00765f1c  34 30 86 e5                                      str r3, [r6, #0x34]
00765f20  38 30 86 e5                                      str r3, [r6, #0x38]
00765f24  3c 30 86 e5                                      str r3, [r6, #0x3c]
00765f28  41 30 c6 e5                                      strb r3, [r6, #0x41]
00765f2c  44 30 86 e5                                      str r3, [r6, #0x44]
00765f30  48 30 86 e5                                      str r3, [r6, #0x48]
00765f34  4c 30 86 e5                                      str r3, [r6, #0x4c]
00765f38  50 30 86 e5                                      str r3, [r6, #0x50]
00765f3c  54 30 86 e5                                      str r3, [r6, #0x54]
00765f40  58 30 86 e5                                      str r3, [r6, #0x58]
00765f44  5c 30 86 e5                                      str r3, [r6, #0x5c]
00765f48  60 30 c6 e5                                      strb r3, [r6, #0x60]
00765f4c  64 30 86 e5                                      str r3, [r6, #0x64]
00765f50  68 30 86 e5                                      str r3, [r6, #0x68]
00765f54  6c 30 86 e5                                      str r3, [r6, #0x6c]
00765f58  70 30 c6 e5                                      strb r3, [r6, #0x70]
00765f5c  74 30 86 e5                                      str r3, [r6, #0x74]
00765f60  78 30 86 e5                                      str r3, [r6, #0x78]
00765f64  7c 30 86 e5                                      str r3, [r6, #0x7c]
00765f68  80 30 86 e5                                      str r3, [r6, #0x80]
00765f6c  84 30 86 e5                                      str r3, [r6, #0x84]
00765f70  88 30 c6 e5                                      strb r3, [r6, #0x88]
00765f74  8c 30 86 e5                                      str r3, [r6, #0x8c]
00765f78  90 30 86 e5                                      str r3, [r6, #0x90]
00765f7c  94 30 86 e5                                      str r3, [r6, #0x94]
00765f80  14 21 96 e5                                      ldr r2, [r6, #0x114]
00765f84  41 04 a0 e3                                      mov r0, #0x41000000
00765f88  0f 06 80 e2                                      add r0, r0, #0xf00000
00765f8c  11 20 d7 e7                                      bfi r2, r1, #0, #0x18
00765f90  22 1c a0 e1                                      lsr r1, r2, #0x18
00765f94  c4 00 86 e5                                      str r0, [r6, #0xc4]
00765f98  13 10 c0 e7                                      bfi r1, r3, #0, #1
00765f9c  01 00 a0 e3                                      mov r0, #1
00765fa0  04 01 c6 e5                                      strb r0, [r6, #0x104]
00765fa4  f0 30 86 e5                                      str r3, [r6, #0xf0]
00765fa8  14 21 86 e5                                      str r2, [r6, #0x114]
00765fac  ac 50 86 e5                                      str r5, [r6, #0xac]
00765fb0  b0 80 86 e5                                      str r8, [r6, #0xb0]
00765fb4  17 11 c6 e5                                      strb r1, [r6, #0x117]
00765fb8  98 30 c6 e5                                      strb r3, [r6, #0x98]
00765fbc  9c 30 86 e5                                      str r3, [r6, #0x9c]
00765fc0  a0 30 86 e5                                      str r3, [r6, #0xa0]
00765fc4  a4 30 86 e5                                      str r3, [r6, #0xa4]
00765fc8  a8 30 c6 e5                                      strb r3, [r6, #0xa8]
00765fcc  c8 30 86 e5                                      str r3, [r6, #0xc8]
00765fd0  cc 30 86 e5                                      str r3, [r6, #0xcc]
00765fd4  d0 30 86 e5                                      str r3, [r6, #0xd0]
00765fd8  d4 30 86 e5                                      str r3, [r6, #0xd4]
00765fdc  d8 30 86 e5                                      str r3, [r6, #0xd8]
00765fe0  dc 30 86 e5                                      str r3, [r6, #0xdc]
00765fe4  e0 30 86 e5                                      str r3, [r6, #0xe0]
00765fe8  e4 30 86 e5                                      str r3, [r6, #0xe4]
00765fec  e8 30 86 e5                                      str r3, [r6, #0xe8]
00765ff0  ec 30 c6 e5                                      strb r3, [r6, #0xec]
00765ff4  05 31 c6 e5                                      strb r3, [r6, #0x105]
00765ff8  18 31 86 e5                                      str r3, [r6, #0x118]
00765ffc  1c 31 86 e5                                      str r3, [r6, #0x11c]
00766000  20 31 86 e5                                      str r3, [r6, #0x120]
00766004  24 31 86 e5                                      str r3, [r6, #0x124]
00766008  ac 10 97 e5                                      ldr r1, [r7, #0xac]
0076600c  06 00 a0 e1                                      mov r0, r6
00766010  24 20 91 e5                                      ldr r2, [r1, #0x24]
00766014  01 c0 82 e2                                      add ip, r2, #1
00766018  24 c0 81 e5                                      str ip, [r1, #0x24]
0076601c  f0 20 86 e5                                      str r2, [r6, #0xf0]
00766020  f4 30 86 e5                                      str r3, [r6, #0xf4]
00766024  f8 30 86 e5                                      str r3, [r6, #0xf8]
00766028  00 31 86 e5                                      str r3, [r6, #0x100]
0076602c  fc 30 86 e5                                      str r3, [r6, #0xfc]
00766030  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00766034  a8 eb 22 00 58 26 00 00                          .byte 0xa8, 0xeb, 0x22, 0x00, 0x58, 0x26, 0x00, 0x00

; FUNCTION 0x0076603c, declared_size=372, range_size=372, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_implC2EPNS_6playerENS_19create_bitmaps_flagENS_23create_font_shapes_flagE
; demangled: gameswf::movie_def_impl::movie_def_impl(gameswf::player*, gameswf::create_bitmaps_flag, gameswf::create_font_shapes_flag)
; decoder-mode: arm
0076603c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00766040  60 41 9f e5                                      ldr r4, [pc, #0x160]
00766044  00 60 a0 e1                                      mov r6, r0
00766048  02 50 a0 e1                                      mov r5, r2
0076604c  03 80 a0 e1                                      mov r8, r3
00766050  01 70 a0 e1                                      mov r7, r1
00766054  7a e2 ff eb                                      bl #0x75ea44
00766058  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
0076605c  04 40 8f e0                                      add r4, pc, r4
00766060  00 30 a0 e3                                      mov r3, #0
00766064  02 20 94 e7                                      ldr r2, [r4, r2]
00766068  00 10 e0 e3                                      mvn r1, #0
0076606c  20 10 86 e5                                      str r1, [r6, #0x20]
00766070  08 20 82 e2                                      add r2, r2, #8
00766074  00 20 86 e5                                      str r2, [r6]
00766078  28 10 86 e5                                      str r1, [r6, #0x28]
0076607c  24 30 86 e5                                      str r3, [r6, #0x24]
00766080  2c 30 c6 e5                                      strb r3, [r6, #0x2c]
00766084  2d 30 c6 e5                                      strb r3, [r6, #0x2d]
00766088  2e 30 c6 e5                                      strb r3, [r6, #0x2e]
0076608c  30 30 86 e5                                      str r3, [r6, #0x30]
00766090  34 30 86 e5                                      str r3, [r6, #0x34]
00766094  38 30 86 e5                                      str r3, [r6, #0x38]
00766098  3c 30 86 e5                                      str r3, [r6, #0x3c]
0076609c  41 30 c6 e5                                      strb r3, [r6, #0x41]
007660a0  44 30 86 e5                                      str r3, [r6, #0x44]
007660a4  48 30 86 e5                                      str r3, [r6, #0x48]
007660a8  4c 30 86 e5                                      str r3, [r6, #0x4c]
007660ac  50 30 86 e5                                      str r3, [r6, #0x50]
007660b0  54 30 86 e5                                      str r3, [r6, #0x54]
007660b4  58 30 86 e5                                      str r3, [r6, #0x58]
007660b8  5c 30 86 e5                                      str r3, [r6, #0x5c]
007660bc  60 30 c6 e5                                      strb r3, [r6, #0x60]
007660c0  64 30 86 e5                                      str r3, [r6, #0x64]
007660c4  68 30 86 e5                                      str r3, [r6, #0x68]
007660c8  6c 30 86 e5                                      str r3, [r6, #0x6c]
007660cc  70 30 c6 e5                                      strb r3, [r6, #0x70]
007660d0  74 30 86 e5                                      str r3, [r6, #0x74]
007660d4  78 30 86 e5                                      str r3, [r6, #0x78]
007660d8  7c 30 86 e5                                      str r3, [r6, #0x7c]
007660dc  80 30 86 e5                                      str r3, [r6, #0x80]
007660e0  84 30 86 e5                                      str r3, [r6, #0x84]
007660e4  88 30 c6 e5                                      strb r3, [r6, #0x88]
007660e8  8c 30 86 e5                                      str r3, [r6, #0x8c]
007660ec  90 30 86 e5                                      str r3, [r6, #0x90]
007660f0  94 30 86 e5                                      str r3, [r6, #0x94]
007660f4  14 21 96 e5                                      ldr r2, [r6, #0x114]
007660f8  41 04 a0 e3                                      mov r0, #0x41000000
007660fc  0f 06 80 e2                                      add r0, r0, #0xf00000
00766100  11 20 d7 e7                                      bfi r2, r1, #0, #0x18
00766104  22 1c a0 e1                                      lsr r1, r2, #0x18
00766108  c4 00 86 e5                                      str r0, [r6, #0xc4]
0076610c  13 10 c0 e7                                      bfi r1, r3, #0, #1
00766110  01 00 a0 e3                                      mov r0, #1
00766114  04 01 c6 e5                                      strb r0, [r6, #0x104]
00766118  f0 30 86 e5                                      str r3, [r6, #0xf0]
0076611c  14 21 86 e5                                      str r2, [r6, #0x114]
00766120  ac 50 86 e5                                      str r5, [r6, #0xac]
00766124  b0 80 86 e5                                      str r8, [r6, #0xb0]
00766128  17 11 c6 e5                                      strb r1, [r6, #0x117]
0076612c  98 30 c6 e5                                      strb r3, [r6, #0x98]
00766130  9c 30 86 e5                                      str r3, [r6, #0x9c]
00766134  a0 30 86 e5                                      str r3, [r6, #0xa0]
00766138  a4 30 86 e5                                      str r3, [r6, #0xa4]
0076613c  a8 30 c6 e5                                      strb r3, [r6, #0xa8]
00766140  c8 30 86 e5                                      str r3, [r6, #0xc8]
00766144  cc 30 86 e5                                      str r3, [r6, #0xcc]
00766148  d0 30 86 e5                                      str r3, [r6, #0xd0]
0076614c  d4 30 86 e5                                      str r3, [r6, #0xd4]
00766150  d8 30 86 e5                                      str r3, [r6, #0xd8]
00766154  dc 30 86 e5                                      str r3, [r6, #0xdc]
00766158  e0 30 86 e5                                      str r3, [r6, #0xe0]
0076615c  e4 30 86 e5                                      str r3, [r6, #0xe4]
00766160  e8 30 86 e5                                      str r3, [r6, #0xe8]
00766164  ec 30 c6 e5                                      strb r3, [r6, #0xec]
00766168  05 31 c6 e5                                      strb r3, [r6, #0x105]
0076616c  18 31 86 e5                                      str r3, [r6, #0x118]
00766170  1c 31 86 e5                                      str r3, [r6, #0x11c]
00766174  20 31 86 e5                                      str r3, [r6, #0x120]
00766178  24 31 86 e5                                      str r3, [r6, #0x124]
0076617c  ac 10 97 e5                                      ldr r1, [r7, #0xac]
00766180  06 00 a0 e1                                      mov r0, r6
00766184  24 20 91 e5                                      ldr r2, [r1, #0x24]
00766188  01 c0 82 e2                                      add ip, r2, #1
0076618c  24 c0 81 e5                                      str ip, [r1, #0x24]
00766190  f0 20 86 e5                                      str r2, [r6, #0xf0]
00766194  f4 30 86 e5                                      str r3, [r6, #0xf4]
00766198  f8 30 86 e5                                      str r3, [r6, #0xf8]
0076619c  00 31 86 e5                                      str r3, [r6, #0x100]
007661a0  fc 30 86 e5                                      str r3, [r6, #0xfc]
007661a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007661a8  34 ea 22 00 58 26 00 00                          .byte 0x34, 0xea, 0x22, 0x00, 0x58, 0x26, 0x00, 0x00

; FUNCTION 0x007661b0, declared_size=520, range_size=520, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_implD1Ev
; demangled: gameswf::movie_def_impl::~movie_def_impl()
; decoder-mode: arm
007661b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007661b4  f4 31 9f e5                                      ldr r3, [pc, #0x1f4]
007661b8  f4 21 9f e5                                      ldr r2, [pc, #0x1f4]
007661bc  00 40 a0 e1                                      mov r4, r0
007661c0  03 30 8f e0                                      add r3, pc, r3
007661c4  02 20 93 e7                                      ldr r2, [r3, r2]
007661c8  e4 00 90 e5                                      ldr r0, [r0, #0xe4]
007661cc  08 20 82 e2                                      add r2, r2, #8
007661d0  00 20 84 e5                                      str r2, [r4]
007661d4  00 00 50 e3                                      cmp r0, #0
007661d8  01 20 a0 e3                                      mov r2, #1
007661dc  41 20 c4 e5                                      strb r2, [r4, #0x41]
007661e0  01 00 00 0a                                      beq #0x7661ec
007661e4  00 10 a0 e3                                      mov r1, #0
007661e8  52 b2 ff eb                                      bl #0x752b38
007661ec  58 a0 94 e5                                      ldr sl, [r4, #0x58]
007661f0  00 00 5a e3                                      cmp sl, #0
007661f4  12 00 00 da                                      ble #0x766244
007661f8  00 80 a0 e3                                      mov r8, #0
007661fc  54 30 94 e5                                      ldr r3, [r4, #0x54]
00766200  08 62 a0 e1                                      lsl r6, r8, #4
00766204  06 20 83 e0                                      add r2, r3, r6
00766208  04 70 92 e5                                      ldr r7, [r2, #4]
0076620c  00 00 57 e3                                      cmp r7, #0
00766210  08 00 00 da                                      ble #0x766238
00766214  00 50 a0 e3                                      mov r5, #0
00766218  00 00 00 ea                                      b #0x766220
0076621c  54 30 94 e5                                      ldr r3, [r4, #0x54]
00766220  06 30 93 e7                                      ldr r3, [r3, r6]
00766224  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00766228  01 50 85 e2                                      add r5, r5, #1
0076622c  0e f7 ff eb                                      bl #0x763e6c
00766230  07 00 55 e1                                      cmp r5, r7
00766234  f8 ff ff 1a                                      bne #0x76621c
00766238  01 80 88 e2                                      add r8, r8, #1
0076623c  0a 00 58 e1                                      cmp r8, sl
00766240  ed ff ff 1a                                      bne #0x7661fc
00766244  68 a0 94 e5                                      ldr sl, [r4, #0x68]
00766248  00 00 5a e3                                      cmp sl, #0
0076624c  12 00 00 da                                      ble #0x76629c
00766250  00 80 a0 e3                                      mov r8, #0
00766254  64 30 94 e5                                      ldr r3, [r4, #0x64]
00766258  08 62 a0 e1                                      lsl r6, r8, #4
0076625c  06 20 83 e0                                      add r2, r3, r6
00766260  04 70 92 e5                                      ldr r7, [r2, #4]
00766264  00 00 57 e3                                      cmp r7, #0
00766268  08 00 00 da                                      ble #0x766290
0076626c  00 50 a0 e3                                      mov r5, #0
00766270  00 00 00 ea                                      b #0x766278
00766274  64 30 94 e5                                      ldr r3, [r4, #0x64]
00766278  06 30 93 e7                                      ldr r3, [r3, r6]
0076627c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00766280  01 50 85 e2                                      add r5, r5, #1
00766284  f8 f6 ff eb                                      bl #0x763e6c
00766288  07 00 55 e1                                      cmp r5, r7
0076628c  f8 ff ff 1a                                      bne #0x766274
00766290  01 80 88 e2                                      add r8, r8, #1
00766294  0a 00 58 e1                                      cmp r8, sl
00766298  ed ff ff 1a                                      bne #0x766254
0076629c  49 0f 84 e2                                      add r0, r4, #0x124
007662a0  db fc ff eb                                      bl #0x765614
007662a4  12 0e 84 e2                                      add r0, r4, #0x120
007662a8  d9 fc ff eb                                      bl #0x765614
007662ac  47 0f 84 e2                                      add r0, r4, #0x11c
007662b0  d7 fc ff eb                                      bl #0x765614
007662b4  18 01 94 e5                                      ldr r0, [r4, #0x118]
007662b8  00 00 50 e3                                      cmp r0, #0
007662bc  00 00 00 0a                                      beq #0x7662c4
007662c0  de cf ff eb                                      bl #0x75a240
007662c4  04 31 d4 e5                                      ldrb r3, [r4, #0x104]
007662c8  ff 00 53 e3                                      cmp r3, #0xff
007662cc  33 00 00 0a                                      beq #0x7663a0
007662d0  e8 00 94 e5                                      ldr r0, [r4, #0xe8]
007662d4  00 00 50 e3                                      cmp r0, #0
007662d8  00 00 00 0a                                      beq #0x7662e0
007662dc  d7 cf ff eb                                      bl #0x75a240
007662e0  9c 50 84 e2                                      add r5, r4, #0x9c
007662e4  05 00 a0 e1                                      mov r0, r5
007662e8  aa fb ff eb                                      bl #0x765198
007662ec  05 00 a0 e1                                      mov r0, r5
007662f0  00 10 a0 e3                                      mov r1, #0
007662f4  8c 50 84 e2                                      add r5, r4, #0x8c
007662f8  14 f9 ff eb                                      bl #0x764750
007662fc  05 00 a0 e1                                      mov r0, r5
00766300  08 fc ff eb                                      bl #0x765328
00766304  05 00 a0 e1                                      mov r0, r5
00766308  00 10 a0 e3                                      mov r1, #0
0076630c  7c 50 84 e2                                      add r5, r4, #0x7c
00766310  4a f9 ff eb                                      bl #0x764840
00766314  05 00 a0 e1                                      mov r0, r5
00766318  0d fd ff eb                                      bl #0x765754
0076631c  00 10 a0 e3                                      mov r1, #0
00766320  05 00 a0 e1                                      mov r0, r5
00766324  e7 f8 ff eb                                      bl #0x7646c8
00766328  78 00 84 e2                                      add r0, r4, #0x78
0076632c  b9 fe ff eb                                      bl #0x765e18
00766330  64 50 84 e2                                      add r5, r4, #0x64
00766334  74 00 84 e2                                      add r0, r4, #0x74
00766338  ab f6 ff eb                                      bl #0x763dec
0076633c  05 00 a0 e1                                      mov r0, r5
00766340  00 10 a0 e3                                      mov r1, #0
00766344  a1 f8 ff eb                                      bl #0x7645d0
00766348  05 00 a0 e1                                      mov r0, r5
0076634c  00 10 a0 e3                                      mov r1, #0
00766350  54 50 84 e2                                      add r5, r4, #0x54
00766354  7e f8 ff eb                                      bl #0x764554
00766358  05 00 a0 e1                                      mov r0, r5
0076635c  00 10 a0 e3                                      mov r1, #0
00766360  9a f8 ff eb                                      bl #0x7645d0
00766364  00 10 a0 e3                                      mov r1, #0
00766368  05 00 a0 e1                                      mov r0, r5
0076636c  78 f8 ff eb                                      bl #0x764554
00766370  50 00 84 e2                                      add r0, r4, #0x50
00766374  c7 f6 ff eb                                      bl #0x763e98
00766378  4c 00 84 e2                                      add r0, r4, #0x4c
0076637c  e9 f6 ff eb                                      bl #0x763f28
00766380  48 00 84 e2                                      add r0, r4, #0x48
00766384  0b f7 ff eb                                      bl #0x763fb8
00766388  44 00 84 e2                                      add r0, r4, #0x44
0076638c  10 fc ff eb                                      bl #0x7653d4
00766390  04 00 a0 e1                                      mov r0, r4
00766394  2b fb ff eb                                      bl #0x765048
00766398  04 00 a0 e1                                      mov r0, r4
0076639c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007663a0  10 01 94 e5                                      ldr r0, [r4, #0x110]
007663a4  0c 11 94 e5                                      ldr r1, [r4, #0x10c]
007663a8  e2 b1 ff eb                                      bl #0x752b38
007663ac  c7 ff ff ea                                      b #0x7662d0
; mapping-symbol data/literal pool
007663b0  d0 e8 22 00 58 26 00 00                          .byte 0xd0, 0xe8, 0x22, 0x00, 0x58, 0x26, 0x00, 0x00

; FUNCTION 0x007663b8, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_implD0Ev
; demangled: gameswf::movie_def_impl::~movie_def_impl()
; decoder-mode: arm
007663b8  10 40 2d e9                                      push {r4, lr}
007663bc  00 40 a0 e1                                      mov r4, r0
007663c0  7a ff ff eb                                      bl #0x7661b0
007663c4  04 00 a0 e1                                      mov r0, r4
007663c8  b8 9f ee eb                                      bl #0x30e2b0
007663cc  04 00 a0 e1                                      mov r0, r4
007663d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007663d4, declared_size=520, range_size=520, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_implD2Ev
; demangled: gameswf::movie_def_impl::~movie_def_impl()
; decoder-mode: arm
007663d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007663d8  f4 31 9f e5                                      ldr r3, [pc, #0x1f4]
007663dc  f4 21 9f e5                                      ldr r2, [pc, #0x1f4]
007663e0  00 40 a0 e1                                      mov r4, r0
007663e4  03 30 8f e0                                      add r3, pc, r3
007663e8  02 20 93 e7                                      ldr r2, [r3, r2]
007663ec  e4 00 90 e5                                      ldr r0, [r0, #0xe4]
007663f0  08 20 82 e2                                      add r2, r2, #8
007663f4  00 20 84 e5                                      str r2, [r4]
007663f8  00 00 50 e3                                      cmp r0, #0
007663fc  01 20 a0 e3                                      mov r2, #1
00766400  41 20 c4 e5                                      strb r2, [r4, #0x41]
00766404  01 00 00 0a                                      beq #0x766410
00766408  00 10 a0 e3                                      mov r1, #0
0076640c  c9 b1 ff eb                                      bl #0x752b38
00766410  58 a0 94 e5                                      ldr sl, [r4, #0x58]
00766414  00 00 5a e3                                      cmp sl, #0
00766418  12 00 00 da                                      ble #0x766468
0076641c  00 80 a0 e3                                      mov r8, #0
00766420  54 30 94 e5                                      ldr r3, [r4, #0x54]
00766424  08 62 a0 e1                                      lsl r6, r8, #4
00766428  06 20 83 e0                                      add r2, r3, r6
0076642c  04 70 92 e5                                      ldr r7, [r2, #4]
00766430  00 00 57 e3                                      cmp r7, #0
00766434  08 00 00 da                                      ble #0x76645c
00766438  00 50 a0 e3                                      mov r5, #0
0076643c  00 00 00 ea                                      b #0x766444
00766440  54 30 94 e5                                      ldr r3, [r4, #0x54]
00766444  06 30 93 e7                                      ldr r3, [r3, r6]
00766448  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0076644c  01 50 85 e2                                      add r5, r5, #1
00766450  85 f6 ff eb                                      bl #0x763e6c
00766454  07 00 55 e1                                      cmp r5, r7
00766458  f8 ff ff 1a                                      bne #0x766440
0076645c  01 80 88 e2                                      add r8, r8, #1
00766460  0a 00 58 e1                                      cmp r8, sl
00766464  ed ff ff 1a                                      bne #0x766420
00766468  68 a0 94 e5                                      ldr sl, [r4, #0x68]
0076646c  00 00 5a e3                                      cmp sl, #0
00766470  12 00 00 da                                      ble #0x7664c0
00766474  00 80 a0 e3                                      mov r8, #0
00766478  64 30 94 e5                                      ldr r3, [r4, #0x64]
0076647c  08 62 a0 e1                                      lsl r6, r8, #4
00766480  06 20 83 e0                                      add r2, r3, r6
00766484  04 70 92 e5                                      ldr r7, [r2, #4]
00766488  00 00 57 e3                                      cmp r7, #0
0076648c  08 00 00 da                                      ble #0x7664b4
00766490  00 50 a0 e3                                      mov r5, #0
00766494  00 00 00 ea                                      b #0x76649c
00766498  64 30 94 e5                                      ldr r3, [r4, #0x64]
0076649c  06 30 93 e7                                      ldr r3, [r3, r6]
007664a0  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
007664a4  01 50 85 e2                                      add r5, r5, #1
007664a8  6f f6 ff eb                                      bl #0x763e6c
007664ac  07 00 55 e1                                      cmp r5, r7
007664b0  f8 ff ff 1a                                      bne #0x766498
007664b4  01 80 88 e2                                      add r8, r8, #1
007664b8  0a 00 58 e1                                      cmp r8, sl
007664bc  ed ff ff 1a                                      bne #0x766478
007664c0  49 0f 84 e2                                      add r0, r4, #0x124
007664c4  52 fc ff eb                                      bl #0x765614
007664c8  12 0e 84 e2                                      add r0, r4, #0x120
007664cc  50 fc ff eb                                      bl #0x765614
007664d0  47 0f 84 e2                                      add r0, r4, #0x11c
007664d4  4e fc ff eb                                      bl #0x765614
007664d8  18 01 94 e5                                      ldr r0, [r4, #0x118]
007664dc  00 00 50 e3                                      cmp r0, #0
007664e0  00 00 00 0a                                      beq #0x7664e8
007664e4  55 cf ff eb                                      bl #0x75a240
007664e8  04 31 d4 e5                                      ldrb r3, [r4, #0x104]
007664ec  ff 00 53 e3                                      cmp r3, #0xff
007664f0  33 00 00 0a                                      beq #0x7665c4
007664f4  e8 00 94 e5                                      ldr r0, [r4, #0xe8]
007664f8  00 00 50 e3                                      cmp r0, #0
007664fc  00 00 00 0a                                      beq #0x766504
00766500  4e cf ff eb                                      bl #0x75a240
00766504  9c 50 84 e2                                      add r5, r4, #0x9c
00766508  05 00 a0 e1                                      mov r0, r5
0076650c  21 fb ff eb                                      bl #0x765198
00766510  05 00 a0 e1                                      mov r0, r5
00766514  00 10 a0 e3                                      mov r1, #0
00766518  8c 50 84 e2                                      add r5, r4, #0x8c
0076651c  8b f8 ff eb                                      bl #0x764750
00766520  05 00 a0 e1                                      mov r0, r5
00766524  7f fb ff eb                                      bl #0x765328
00766528  05 00 a0 e1                                      mov r0, r5
0076652c  00 10 a0 e3                                      mov r1, #0
00766530  7c 50 84 e2                                      add r5, r4, #0x7c
00766534  c1 f8 ff eb                                      bl #0x764840
00766538  05 00 a0 e1                                      mov r0, r5
0076653c  84 fc ff eb                                      bl #0x765754
00766540  00 10 a0 e3                                      mov r1, #0
00766544  05 00 a0 e1                                      mov r0, r5
00766548  5e f8 ff eb                                      bl #0x7646c8
0076654c  78 00 84 e2                                      add r0, r4, #0x78
00766550  30 fe ff eb                                      bl #0x765e18
00766554  64 50 84 e2                                      add r5, r4, #0x64
00766558  74 00 84 e2                                      add r0, r4, #0x74
0076655c  22 f6 ff eb                                      bl #0x763dec
00766560  05 00 a0 e1                                      mov r0, r5
00766564  00 10 a0 e3                                      mov r1, #0
00766568  18 f8 ff eb                                      bl #0x7645d0
0076656c  05 00 a0 e1                                      mov r0, r5
00766570  00 10 a0 e3                                      mov r1, #0
00766574  54 50 84 e2                                      add r5, r4, #0x54
00766578  f5 f7 ff eb                                      bl #0x764554
0076657c  05 00 a0 e1                                      mov r0, r5
00766580  00 10 a0 e3                                      mov r1, #0
00766584  11 f8 ff eb                                      bl #0x7645d0
00766588  00 10 a0 e3                                      mov r1, #0
0076658c  05 00 a0 e1                                      mov r0, r5
00766590  ef f7 ff eb                                      bl #0x764554
00766594  50 00 84 e2                                      add r0, r4, #0x50
00766598  3e f6 ff eb                                      bl #0x763e98
0076659c  4c 00 84 e2                                      add r0, r4, #0x4c
007665a0  60 f6 ff eb                                      bl #0x763f28
007665a4  48 00 84 e2                                      add r0, r4, #0x48
007665a8  82 f6 ff eb                                      bl #0x763fb8
007665ac  44 00 84 e2                                      add r0, r4, #0x44
007665b0  87 fb ff eb                                      bl #0x7653d4
007665b4  04 00 a0 e1                                      mov r0, r4
007665b8  a2 fa ff eb                                      bl #0x765048
007665bc  04 00 a0 e1                                      mov r0, r4
007665c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007665c4  10 01 94 e5                                      ldr r0, [r4, #0x110]
007665c8  0c 11 94 e5                                      ldr r1, [r4, #0x10c]
007665cc  59 b1 ff eb                                      bl #0x752b38
007665d0  c7 ff ff ea                                      b #0x7664f4
; mapping-symbol data/literal pool
007665d4  ac e6 22 00 58 26 00 00                          .byte 0xac, 0xe6, 0x22, 0x00, 0x58, 0x26, 0x00, 0x00

; FUNCTION 0x00766914, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl16add_sound_sampleEiPNS_12sound_sampleE
; demangled: gameswf::movie_def_impl::add_sound_sample(int, gameswf::sound_sample*)
; decoder-mode: arm
00766914  10 40 2d e9                                      push {r4, lr}
00766918  00 00 52 e3                                      cmp r2, #0
0076691c  10 d0 4d e2                                      sub sp, sp, #0x10
00766920  04 10 8d e5                                      str r1, [sp, #4]
00766924  50 40 80 e2                                      add r4, r0, #0x50
00766928  0c 20 8d e5                                      str r2, [sp, #0xc]
0076692c  01 00 00 0a                                      beq #0x766938
00766930  02 00 a0 e1                                      mov r0, r2
00766934  ca cc ff eb                                      bl #0x759c64
00766938  04 00 a0 e1                                      mov r0, r4
0076693c  04 10 8d e2                                      add r1, sp, #4
00766940  0c 20 8d e2                                      add r2, sp, #0xc
00766944  8b ff ff eb                                      bl #0x766778
00766948  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0076694c  00 00 50 e3                                      cmp r0, #0
00766950  00 00 00 0a                                      beq #0x766958
00766954  39 ce ff eb                                      bl #0x75a240
00766958  10 d0 8d e2                                      add sp, sp, #0x10
0076695c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00766c98, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl20add_bitmap_characterEiPNS_20bitmap_character_defE
; demangled: gameswf::movie_def_impl::add_bitmap_character(int, gameswf::bitmap_character_def*)
; decoder-mode: arm
00766c98  70 40 2d e9                                      push {r4, r5, r6, lr}
00766c9c  00 00 52 e3                                      cmp r2, #0
00766ca0  10 d0 4d e2                                      sub sp, sp, #0x10
00766ca4  02 40 a0 e1                                      mov r4, r2
00766ca8  00 50 a0 e1                                      mov r5, r0
00766cac  04 10 8d e5                                      str r1, [sp, #4]
00766cb0  0c 20 8d e5                                      str r2, [sp, #0xc]
00766cb4  4c 60 80 e2                                      add r6, r0, #0x4c
00766cb8  01 00 00 0a                                      beq #0x766cc4
00766cbc  02 00 a0 e1                                      mov r0, r2
00766cc0  e7 cb ff eb                                      bl #0x759c64
00766cc4  06 00 a0 e1                                      mov r0, r6
00766cc8  04 10 8d e2                                      add r1, sp, #4
00766ccc  0c 20 8d e2                                      add r2, sp, #0xc
00766cd0  89 ff ff eb                                      bl #0x766afc
00766cd4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00766cd8  00 00 50 e3                                      cmp r0, #0
00766cdc  00 00 00 0a                                      beq #0x766ce4
00766ce0  56 cd ff eb                                      bl #0x75a240
00766ce4  00 20 95 e5                                      ldr r2, [r5]
00766ce8  00 30 94 e5                                      ldr r3, [r4]
00766cec  04 00 a0 e1                                      mov r0, r4
00766cf0  b0 40 92 e5                                      ldr r4, [r2, #0xb0]
00766cf4  0f e0 a0 e1                                      mov lr, pc
00766cf8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00766cfc  00 10 a0 e1                                      mov r1, r0
00766d00  05 00 a0 e1                                      mov r0, r5
00766d04  34 ff 2f e1                                      blx r4
00766d08  10 d0 8d e2                                      add sp, sp, #0x10
00766d0c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00767048, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl8add_fontEiPNS_4fontE
; demangled: gameswf::movie_def_impl::add_font(int, gameswf::font*)
; decoder-mode: arm
00767048  10 40 2d e9                                      push {r4, lr}
0076704c  00 00 52 e3                                      cmp r2, #0
00767050  10 d0 4d e2                                      sub sp, sp, #0x10
00767054  04 10 8d e5                                      str r1, [sp, #4]
00767058  48 40 80 e2                                      add r4, r0, #0x48
0076705c  0c 20 8d e5                                      str r2, [sp, #0xc]
00767060  01 00 00 0a                                      beq #0x76706c
00767064  02 00 a0 e1                                      mov r0, r2
00767068  fd ca ff eb                                      bl #0x759c64
0076706c  04 00 a0 e1                                      mov r0, r4
00767070  04 10 8d e2                                      add r1, sp, #4
00767074  0c 20 8d e2                                      add r2, sp, #0xc
00767078  8b ff ff eb                                      bl #0x766eac
0076707c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00767080  00 00 50 e3                                      cmp r0, #0
00767084  00 00 00 0a                                      beq #0x76708c
00767088  6c cc ff eb                                      bl #0x75a240
0076708c  10 d0 8d e2                                      add sp, sp, #0x10
00767090  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007673cc, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl13add_characterEiPNS_13character_defE
; demangled: gameswf::movie_def_impl::add_character(int, gameswf::character_def*)
; decoder-mode: arm
007673cc  10 40 2d e9                                      push {r4, lr}
007673d0  00 00 52 e3                                      cmp r2, #0
007673d4  10 d0 4d e2                                      sub sp, sp, #0x10
007673d8  04 10 8d e5                                      str r1, [sp, #4]
007673dc  44 40 80 e2                                      add r4, r0, #0x44
007673e0  0c 20 8d e5                                      str r2, [sp, #0xc]
007673e4  01 00 00 0a                                      beq #0x7673f0
007673e8  02 00 a0 e1                                      mov r0, r2
007673ec  1c ca ff eb                                      bl #0x759c64
007673f0  04 00 a0 e1                                      mov r0, r4
007673f4  04 10 8d e2                                      add r1, sp, #4
007673f8  0c 20 8d e2                                      add r2, sp, #0xc
007673fc  8b ff ff eb                                      bl #0x767230
00767400  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00767404  00 00 50 e3                                      cmp r0, #0
00767408  00 00 00 0a                                      beq #0x767410
0076740c  8b cb ff eb                                      bl #0x75a240
00767410  10 d0 8d e2                                      add sp, sp, #0x10
00767414  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007674fc, declared_size=188, range_size=188, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl10add_importERKNS_9tu_stringEiS3_
; demangled: gameswf::movie_def_impl::add_import(gameswf::tu_string const&, int, gameswf::tu_string const&)
; decoder-mode: arm
007674fc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00767500  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
00767504  a8 60 9f e5                                      ldr r6, [pc, #0xa8]
00767508  03 80 a0 e1                                      mov r8, r3
0076750c  04 40 8f e0                                      add r4, pc, r4
00767510  06 c0 94 e7                                      ldr ip, [r4, r6]
00767514  34 d0 4d e2                                      sub sp, sp, #0x34
00767518  7c 70 80 e2                                      add r7, r0, #0x7c
0076751c  00 30 9c e5                                      ldr r3, [ip]
00767520  0d 00 a0 e1                                      mov r0, sp
00767524  02 a0 a0 e1                                      mov sl, r2
00767528  2c 30 8d e5                                      str r3, [sp, #0x2c]
0076752c  be ae ff eb                                      bl #0x75302c
00767530  08 10 a0 e1                                      mov r1, r8
00767534  18 00 8d e2                                      add r0, sp, #0x18
00767538  14 a0 8d e5                                      str sl, [sp, #0x14]
0076753c  ba ae ff eb                                      bl #0x75302c
00767540  07 00 a0 e1                                      mov r0, r7
00767544  0d 10 a0 e1                                      mov r1, sp
00767548  d2 ff ff eb                                      bl #0x767498
0076754c  d8 31 dd e1                                      ldrsb r3, [sp, #0x18]
00767550  0d 50 a0 e1                                      mov r5, sp
00767554  01 00 73 e3                                      cmn r3, #1
00767558  09 00 00 0a                                      beq #0x767584
0076755c  d0 30 dd e1                                      ldrsb r3, [sp]
00767560  01 00 73 e3                                      cmn r3, #1
00767564  0c 00 00 0a                                      beq #0x76759c
00767568  06 30 94 e7                                      ldr r3, [r4, r6]
0076756c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00767570  00 30 93 e5                                      ldr r3, [r3]
00767574  03 00 52 e1                                      cmp r2, r3
00767578  0b 00 00 1a                                      bne #0x7675ac
0076757c  34 d0 8d e2                                      add sp, sp, #0x34
00767580  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00767584  24 00 9d e5                                      ldr r0, [sp, #0x24]
00767588  20 10 9d e5                                      ldr r1, [sp, #0x20]
0076758c  69 ad ff eb                                      bl #0x752b38
00767590  d0 30 dd e1                                      ldrsb r3, [sp]
00767594  01 00 73 e3                                      cmn r3, #1
00767598  f2 ff ff 1a                                      bne #0x767568
0076759c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007675a0  08 10 9d e5                                      ldr r1, [sp, #8]
007675a4  63 ad ff eb                                      bl #0x752b38
007675a8  ee ff ff ea                                      b #0x767568
007675ac  57 9b ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007675b0  84 d5 22 00 ac 40 00 00                          .byte 0x84, 0xd5, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007675b8, declared_size=164, range_size=164, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl21get_exported_resourceERKNS_9tu_stringE
; demangled: gameswf::movie_def_impl::get_exported_resource(gameswf::tu_string const&)
; decoder-mode: arm
007675b8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007675bc  90 40 9f e5                                      ldr r4, [pc, #0x90]
007675c0  90 50 9f e5                                      ldr r5, [pc, #0x90]
007675c4  24 d0 4d e2                                      sub sp, sp, #0x24
007675c8  04 40 8f e0                                      add r4, pc, r4
007675cc  05 30 94 e7                                      ldr r3, [r4, r5]
007675d0  08 60 8d e2                                      add r6, sp, #8
007675d4  00 20 a0 e3                                      mov r2, #0
007675d8  00 30 93 e5                                      ldr r3, [r3]
007675dc  78 70 80 e2                                      add r7, r0, #0x78
007675e0  06 00 a0 e1                                      mov r0, r6
007675e4  1c 30 8d e5                                      str r3, [sp, #0x1c]
007675e8  04 20 8d e5                                      str r2, [sp, #4]
007675ec  8e ae ff eb                                      bl #0x75302c
007675f0  07 00 a0 e1                                      mov r0, r7
007675f4  06 10 a0 e1                                      mov r1, r6
007675f8  04 20 8d e2                                      add r2, sp, #4
007675fc  6c f6 ff eb                                      bl #0x764fb4
00767600  d8 30 dd e1                                      ldrsb r3, [sp, #8]
00767604  01 00 73 e3                                      cmn r3, #1
00767608  0c 00 00 0a                                      beq #0x767640
0076760c  04 60 9d e5                                      ldr r6, [sp, #4]
00767610  00 00 56 e3                                      cmp r6, #0
00767614  01 00 00 0a                                      beq #0x767620
00767618  06 00 a0 e1                                      mov r0, r6
0076761c  07 cb ff eb                                      bl #0x75a240
00767620  05 30 94 e7                                      ldr r3, [r4, r5]
00767624  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00767628  06 00 a0 e1                                      mov r0, r6
0076762c  00 30 93 e5                                      ldr r3, [r3]
00767630  03 00 52 e1                                      cmp r2, r3
00767634  05 00 00 1a                                      bne #0x767650
00767638  24 d0 8d e2                                      add sp, sp, #0x24
0076763c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00767640  14 00 9d e5                                      ldr r0, [sp, #0x14]
00767644  10 10 9d e5                                      ldr r1, [sp, #0x10]
00767648  3a ad ff eb                                      bl #0x752b38
0076764c  ee ff ff ea                                      b #0x76760c
00767650  2e 9b ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00767654  c8 d4 22 00 ac 40 00 00                          .byte 0xc8, 0xd4, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007679fc, declared_size=656, range_size=656, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZNK7gameswf14movie_def_impl17instanciate_classEPNS_9characterE
; demangled: gameswf::movie_def_impl::instanciate_class(gameswf::character*) const
; decoder-mode: arm
007679fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00767a00  7c 22 9f e5                                      ldr r2, [pc, #0x27c]
00767a04  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
00767a08  74 d0 4d e2                                      sub sp, sp, #0x74
00767a0c  02 20 8f e0                                      add r2, pc, r2
00767a10  08 20 8d e5                                      str r2, [sp, #8]
00767a14  14 30 8d e5                                      str r3, [sp, #0x14]
00767a18  03 20 92 e7                                      ldr r2, [r2, r3]
00767a1c  38 30 91 e5                                      ldr r3, [r1, #0x38]
00767a20  01 70 a0 e1                                      mov r7, r1
00767a24  00 20 92 e5                                      ldr r2, [r2]
00767a28  01 00 73 e3                                      cmn r3, #1
00767a2c  40 30 8d e5                                      str r3, [sp, #0x40]
00767a30  00 30 a0 03                                      moveq r3, #0
00767a34  40 30 8d 05                                      streq r3, [sp, #0x40]
00767a38  68 30 9d e5                                      ldr r3, [sp, #0x68]
00767a3c  6c 20 8d e5                                      str r2, [sp, #0x6c]
00767a40  00 20 e0 e3                                      mvn r2, #0
00767a44  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00767a48  58 10 8d e2                                      add r1, sp, #0x58
00767a4c  1c 10 8d e5                                      str r1, [sp, #0x1c]
00767a50  00 40 a0 e3                                      mov r4, #0
00767a54  23 cc a0 e1                                      lsr ip, r3, #0x18
00767a58  14 c0 c0 e7                                      bfi ip, r4, #0, #1
00767a5c  01 e0 a0 e3                                      mov lr, #1
00767a60  00 b0 a0 e1                                      mov fp, r0
00767a64  40 10 8d e2                                      add r1, sp, #0x40
00767a68  47 0f 80 e2                                      add r0, r0, #0x11c
00767a6c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00767a70  68 30 8d e5                                      str r3, [sp, #0x68]
00767a74  58 e0 cd e5                                      strb lr, [sp, #0x58]
00767a78  6b c0 cd e5                                      strb ip, [sp, #0x6b]
00767a7c  59 40 cd e5                                      strb r4, [sp, #0x59]
00767a80  ca ff ff eb                                      bl #0x7679b0
00767a84  00 00 50 e3                                      cmp r0, #0
00767a88  6a 00 00 0a                                      beq #0x767c38
00767a8c  18 31 9b e5                                      ldr r3, [fp, #0x118]
00767a90  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00767a94  9c 10 93 e5                                      ldr r1, [r3, #0x9c]
00767a98  03 00 a0 e1                                      mov r0, r3
00767a9c  0c 21 91 e7                                      ldr r2, [r1, ip, lsl #2]
00767aa0  0c 11 81 e0                                      add r1, r1, ip, lsl #2
00767aa4  04 10 8d e5                                      str r1, [sp, #4]
00767aa8  34 10 92 e5                                      ldr r1, [r2, #0x34]
00767aac  00 00 51 e3                                      cmp r1, #0
00767ab0  5e 00 00 da                                      ble #0x767c30
00767ab4  20 c0 8d e2                                      add ip, sp, #0x20
00767ab8  04 10 8c e2                                      add r1, ip, #4
00767abc  0c c0 8d e5                                      str ip, [sp, #0xc]
00767ac0  38 c0 8d e2                                      add ip, sp, #0x38
00767ac4  2c 50 8d e2                                      add r5, sp, #0x2c
00767ac8  44 90 8d e2                                      add sb, sp, #0x44
00767acc  14 80 a0 e3                                      mov r8, #0x14
00767ad0  04 60 a0 e1                                      mov r6, r4
00767ad4  10 10 8d e5                                      str r1, [sp, #0x10]
00767ad8  18 c0 8d e5                                      str ip, [sp, #0x18]
00767adc  30 20 92 e5                                      ldr r2, [r2, #0x30]
00767ae0  6c c0 93 e5                                      ldr ip, [r3, #0x6c]
00767ae4  3c 10 93 e5                                      ldr r1, [r3, #0x3c]
00767ae8  04 e1 92 e7                                      ldr lr, [r2, r4, lsl #2]
00767aec  04 01 a0 e1                                      lsl r0, r4, #2
00767af0  0c e0 9e e5                                      ldr lr, [lr, #0xc]
00767af4  98 ce 2c e0                                      mla ip, r8, lr, ip
00767af8  10 a0 9c e5                                      ldr sl, [ip, #0x10]
00767afc  98 0a 0a e0                                      mul sl, r8, sl
00767b00  da c0 91 e1                                      ldrsb ip, [r1, sl]
00767b04  0a a0 81 e0                                      add sl, r1, sl
00767b08  01 00 7c e3                                      cmn ip, #1
00767b0c  0c a0 9a 05                                      ldreq sl, [sl, #0xc]
00767b10  2c 60 cd e5                                      strb r6, [sp, #0x2c]
00767b14  2d 60 cd e5                                      strb r6, [sp, #0x2d]
00767b18  00 10 92 e7                                      ldr r1, [r2, r0]
00767b1c  01 a0 8a 12                                      addne sl, sl, #1
00767b20  10 20 d1 e5                                      ldrb r2, [r1, #0x10]
00767b24  06 00 52 e3                                      cmp r2, #6
00767b28  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
00767b2c  0b 00 00 ea                                      b #0x767b60
00767b30  20 00 00 ea                                      b #0x767bb8
00767b34  04 00 00 ea                                      b #0x767b4c
00767b38  03 00 00 ea                                      b #0x767b4c
00767b3c  02 00 00 ea                                      b #0x767b4c
00767b40  06 00 00 ea                                      b #0x767b60
00767b44  05 00 00 ea                                      b #0x767b60
00767b48  1a 00 00 ea                                      b #0x767bb8
00767b4c  18 20 91 e5                                      ldr r2, [r1, #0x18]
00767b50  7c 30 93 e5                                      ldr r3, [r3, #0x7c]
00767b54  05 00 a0 e1                                      mov r0, r5
00767b58  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
00767b5c  bb bd 00 eb                                      bl #0x797250
00767b60  00 30 97 e5                                      ldr r3, [r7]
00767b64  0a 10 a0 e1                                      mov r1, sl
00767b68  09 00 a0 e1                                      mov r0, sb
00767b6c  1c a0 93 e5                                      ldr sl, [r3, #0x1c]
00767b70  c1 af f2 eb                                      bl #0x413a7c
00767b74  07 00 a0 e1                                      mov r0, r7
00767b78  09 10 a0 e1                                      mov r1, sb
00767b7c  05 20 a0 e1                                      mov r2, r5
00767b80  3a ff 2f e1                                      blx sl
00767b84  d4 34 dd e1                                      ldrsb r3, [sp, #0x44]
00767b88  01 00 73 e3                                      cmn r3, #1
00767b8c  1b 00 00 0a                                      beq #0x767c00
00767b90  05 00 a0 e1                                      mov r0, r5
00767b94  62 bd 00 eb                                      bl #0x797124
00767b98  04 30 9d e5                                      ldr r3, [sp, #4]
00767b9c  01 40 84 e2                                      add r4, r4, #1
00767ba0  00 20 93 e5                                      ldr r2, [r3]
00767ba4  34 30 92 e5                                      ldr r3, [r2, #0x34]
00767ba8  03 00 54 e1                                      cmp r4, r3
00767bac  1e 00 00 aa                                      bge #0x767c2c
00767bb0  18 31 9b e5                                      ldr r3, [fp, #0x118]
00767bb4  c8 ff ff ea                                      b #0x767adc
00767bb8  00 20 a0 e3                                      mov r2, #0
00767bbc  00 30 a0 e3                                      mov r3, #0
00767bc0  f8 23 cd e1                                      strd r2, r3, [sp, #0x38]
00767bc4  18 30 9d e5                                      ldr r3, [sp, #0x18]
00767bc8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00767bcc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00767bd0  04 20 93 e5                                      ldr r2, [r3, #4]
00767bd4  00 30 a0 e3                                      mov r3, #0
00767bd8  05 00 a0 e1                                      mov r0, r5
00767bdc  04 20 8c e5                                      str r2, [ip, #4]
00767be0  00 30 8c e5                                      str r3, [ip]
00767be4  02 20 a0 e3                                      mov r2, #2
00767be8  20 60 cd e5                                      strb r6, [sp, #0x20]
00767bec  21 20 cd e5                                      strb r2, [sp, #0x21]
00767bf0  d1 be 00 eb                                      bl #0x79773c
00767bf4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00767bf8  49 bd 00 eb                                      bl #0x797124
00767bfc  d7 ff ff ea                                      b #0x767b60
00767c00  50 00 9d e5                                      ldr r0, [sp, #0x50]
00767c04  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00767c08  ca ab ff eb                                      bl #0x752b38
00767c0c  05 00 a0 e1                                      mov r0, r5
00767c10  43 bd 00 eb                                      bl #0x797124
00767c14  04 30 9d e5                                      ldr r3, [sp, #4]
00767c18  01 40 84 e2                                      add r4, r4, #1
00767c1c  00 20 93 e5                                      ldr r2, [r3]
00767c20  34 30 92 e5                                      ldr r3, [r2, #0x34]
00767c24  03 00 54 e1                                      cmp r4, r3
00767c28  e0 ff ff ba                                      blt #0x767bb0
00767c2c  18 01 9b e5                                      ldr r0, [fp, #0x118]
00767c30  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00767c34  e1 40 01 eb                                      bl #0x7b7fc0
00767c38  d8 35 dd e1                                      ldrsb r3, [sp, #0x58]
00767c3c  00 40 a0 e1                                      mov r4, r0
00767c40  01 00 73 e3                                      cmn r3, #1
00767c44  09 00 00 0a                                      beq #0x767c70
00767c48  08 10 9d e5                                      ldr r1, [sp, #8]
00767c4c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00767c50  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00767c54  04 00 a0 e1                                      mov r0, r4
00767c58  0c 30 91 e7                                      ldr r3, [r1, ip]
00767c5c  00 30 93 e5                                      ldr r3, [r3]
00767c60  03 00 52 e1                                      cmp r2, r3
00767c64  05 00 00 1a                                      bne #0x767c80
00767c68  74 d0 8d e2                                      add sp, sp, #0x74
00767c6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00767c70  64 00 9d e5                                      ldr r0, [sp, #0x64]
00767c74  60 10 9d e5                                      ldr r1, [sp, #0x60]
00767c78  ae ab ff eb                                      bl #0x752b38
00767c7c  f1 ff ff ea                                      b #0x767c48
00767c80  a2 99 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00767c84  84 d0 22 00 ac 40 00 00                          .byte 0x84, 0xd0, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00767c8c, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl7add_abcERNS_9tu_stringEPNS_7abc_defE
; demangled: gameswf::movie_def_impl::add_abc(gameswf::tu_string&, gameswf::abc_def*)
; decoder-mode: arm
00767c8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00767c90  00 40 a0 e1                                      mov r4, r0
00767c94  01 50 a0 e1                                      mov r5, r1
00767c98  46 0f 80 e2                                      add r0, r0, #0x118
00767c9c  02 10 a0 e1                                      mov r1, r2
00767ca0  97 f1 ff eb                                      bl #0x764304
00767ca4  41 0f 84 e2                                      add r0, r4, #0x104
00767ca8  05 10 a0 e1                                      mov r1, r5
00767cac  70 40 bd e8                                      pop {r4, r5, r6, lr}
00767cb0  a6 ac ff ea                                      b #0x752f50

; FUNCTION 0x00767fec, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl15add_frame_labelEiRKNS_9tu_stringE
; demangled: gameswf::movie_def_impl::add_frame_label(int, gameswf::tu_string const&)
; decoder-mode: arm
00767fec  04 e0 2d e5                                      str lr, [sp, #-4]!
00767ff0  0c d0 4d e2                                      sub sp, sp, #0xc
00767ff4  08 30 8d e2                                      add r3, sp, #8
00767ff8  04 10 23 e5                                      str r1, [r3, #-4]!
00767ffc  49 0f 80 e2                                      add r0, r0, #0x124
00768000  03 10 a0 e1                                      mov r1, r3
00768004  2a ff ff eb                                      bl #0x767cb4
00768008  0c d0 8d e2                                      add sp, sp, #0xc
0076800c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00768010, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl9add_sceneEiRKNS_9tu_stringE
; demangled: gameswf::movie_def_impl::add_scene(int, gameswf::tu_string const&)
; decoder-mode: arm
00768010  04 e0 2d e5                                      str lr, [sp, #-4]!
00768014  0c d0 4d e2                                      sub sp, sp, #0xc
00768018  08 30 8d e2                                      add r3, sp, #8
0076801c  04 10 23 e5                                      str r1, [r3, #-4]!
00768020  12 0e 80 e2                                      add r0, r0, #0x120
00768024  03 10 a0 e1                                      mov r1, r3
00768028  21 ff ff eb                                      bl #0x767cb4
0076802c  0c d0 8d e2                                      add sp, sp, #0xc
00768030  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00768034, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl16add_symbol_classEiRKNS_9tu_stringE
; demangled: gameswf::movie_def_impl::add_symbol_class(int, gameswf::tu_string const&)
; decoder-mode: arm
00768034  04 e0 2d e5                                      str lr, [sp, #-4]!
00768038  0c d0 4d e2                                      sub sp, sp, #0xc
0076803c  08 30 8d e2                                      add r3, sp, #8
00768040  04 10 23 e5                                      str r1, [r3, #-4]!
00768044  47 0f 80 e2                                      add r0, r0, #0x11c
00768048  03 10 a0 e1                                      mov r1, r3
0076804c  18 ff ff eb                                      bl #0x767cb4
00768050  0c d0 8d e2                                      add sp, sp, #0xc
00768054  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00768444, declared_size=416, range_size=416, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl21visit_imported_moviesEPNS_16movie_definition14import_visitorE
; demangled: gameswf::movie_def_impl::visit_imported_movies(gameswf::movie_definition::import_visitor*)
; decoder-mode: arm
00768444  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00768448  8c 21 9f e5                                      ldr r2, [pc, #0x18c]
0076844c  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
00768450  54 d0 4d e2                                      sub sp, sp, #0x54
00768454  02 20 8f e0                                      add r2, pc, r2
00768458  14 30 8d e5                                      str r3, [sp, #0x14]
0076845c  03 30 92 e7                                      ldr r3, [r2, r3]
00768460  0c 20 8d e5                                      str r2, [sp, #0xc]
00768464  00 80 a0 e1                                      mov r8, r0
00768468  80 00 90 e5                                      ldr r0, [r0, #0x80]
0076846c  00 30 93 e5                                      ldr r3, [r3]
00768470  00 40 a0 e3                                      mov r4, #0
00768474  04 00 50 e1                                      cmp r0, r4
00768478  04 00 8d e5                                      str r0, [sp, #4]
0076847c  01 a0 a0 e1                                      mov sl, r1
00768480  4c 30 8d e5                                      str r3, [sp, #0x4c]
00768484  1c 40 8d e5                                      str r4, [sp, #0x1c]
00768488  1c 70 8d d2                                      addle r7, sp, #0x1c
0076848c  46 00 00 da                                      ble #0x7685ac
00768490  24 10 8d e2                                      add r1, sp, #0x24
00768494  23 20 8d e2                                      add r2, sp, #0x23
00768498  04 50 a0 e1                                      mov r5, r4
0076849c  38 60 8d e2                                      add r6, sp, #0x38
007684a0  1c 70 8d e2                                      add r7, sp, #0x1c
007684a4  08 10 8d e5                                      str r1, [sp, #8]
007684a8  10 20 8d e5                                      str r2, [sp, #0x10]
007684ac  24 00 00 ea                                      b #0x768544
007684b0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007684b4  00 00 53 e3                                      cmp r3, #0
007684b8  2b 00 00 0a                                      beq #0x76856c
007684bc  04 b0 93 e5                                      ldr fp, [r3, #4]
007684c0  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
007684c4  0b 00 50 e1                                      cmp r0, fp
007684c8  00 b0 a0 d3                                      movle fp, #0
007684cc  01 b0 a0 c3                                      movgt fp, #1
007684d0  01 00 73 e3                                      cmn r3, #1
007684d4  28 00 00 0a                                      beq #0x76857c
007684d8  00 00 5b e3                                      cmp fp, #0
007684dc  13 00 00 0a                                      beq #0x768530
007684e0  d0 20 d9 e1                                      ldrsb r2, [sb]
007684e4  00 30 9a e5                                      ldr r3, [sl]
007684e8  0a 00 a0 e1                                      mov r0, sl
007684ec  01 00 72 e3                                      cmn r2, #1
007684f0  01 10 89 12                                      addne r1, sb, #1
007684f4  0c 10 99 05                                      ldreq r1, [sb, #0xc]
007684f8  08 30 93 e5                                      ldr r3, [r3, #8]
007684fc  33 ff 2f e1                                      blx r3
00768500  09 10 a0 e1                                      mov r1, sb
00768504  08 00 9d e5                                      ldr r0, [sp, #8]
00768508  c7 aa ff eb                                      bl #0x75302c
0076850c  01 30 a0 e3                                      mov r3, #1
00768510  07 00 a0 e1                                      mov r0, r7
00768514  08 10 9d e5                                      ldr r1, [sp, #8]
00768518  10 20 9d e5                                      ldr r2, [sp, #0x10]
0076851c  23 30 cd e5                                      strb r3, [sp, #0x23]
00768520  b6 ff ff eb                                      bl #0x768400
00768524  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
00768528  01 00 73 e3                                      cmn r3, #1
0076852c  16 00 00 0a                                      beq #0x76858c
00768530  04 00 9d e5                                      ldr r0, [sp, #4]
00768534  01 50 85 e2                                      add r5, r5, #1
00768538  2c 40 84 e2                                      add r4, r4, #0x2c
0076853c  00 00 55 e1                                      cmp r5, r0
00768540  19 00 00 0a                                      beq #0x7685ac
00768544  7c 90 98 e5                                      ldr sb, [r8, #0x7c]
00768548  06 00 a0 e1                                      mov r0, r6
0076854c  04 90 89 e0                                      add sb, sb, r4
00768550  09 10 a0 e1                                      mov r1, sb
00768554  b4 aa ff eb                                      bl #0x75302c
00768558  07 00 a0 e1                                      mov r0, r7
0076855c  06 10 a0 e1                                      mov r1, r6
00768560  23 f2 ff eb                                      bl #0x764df4
00768564  00 00 50 e3                                      cmp r0, #0
00768568  d0 ff ff aa                                      bge #0x7684b0
0076856c  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
00768570  01 b0 a0 e3                                      mov fp, #1
00768574  01 00 73 e3                                      cmn r3, #1
00768578  d6 ff ff 1a                                      bne #0x7684d8
0076857c  44 00 9d e5                                      ldr r0, [sp, #0x44]
00768580  40 10 9d e5                                      ldr r1, [sp, #0x40]
00768584  6b a9 ff eb                                      bl #0x752b38
00768588  d2 ff ff ea                                      b #0x7684d8
0076858c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00768590  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00768594  67 a9 ff eb                                      bl #0x752b38
00768598  04 00 9d e5                                      ldr r0, [sp, #4]
0076859c  01 50 85 e2                                      add r5, r5, #1
007685a0  2c 40 84 e2                                      add r4, r4, #0x2c
007685a4  00 00 55 e1                                      cmp r5, r0
007685a8  e5 ff ff 1a                                      bne #0x768544
007685ac  07 00 a0 e1                                      mov r0, r7
007685b0  3f f4 ff eb                                      bl #0x7656b4
007685b4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007685b8  14 10 9d e5                                      ldr r1, [sp, #0x14]
007685bc  01 30 92 e7                                      ldr r3, [r2, r1]
007685c0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
007685c4  00 30 93 e5                                      ldr r3, [r3]
007685c8  03 00 52 e1                                      cmp r2, r3
007685cc  01 00 00 1a                                      bne #0x7685d8
007685d0  54 d0 8d e2                                      add sp, sp, #0x54
007685d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007685d8  4c 97 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007685dc  3c c6 22 00 ac 40 00 00                          .byte 0x3c, 0xc6, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007689b0, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl15export_resourceERKNS_9tu_stringEPNS_13character_defE
; demangled: gameswf::movie_def_impl::export_resource(gameswf::tu_string const&, gameswf::character_def*)
; decoder-mode: arm
007689b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007689b4  98 40 9f e5                                      ldr r4, [pc, #0x98]
007689b8  98 50 9f e5                                      ldr r5, [pc, #0x98]
007689bc  20 d0 4d e2                                      sub sp, sp, #0x20
007689c0  04 40 8f e0                                      add r4, pc, r4
007689c4  05 30 94 e7                                      ldr r3, [r4, r5]
007689c8  08 60 8d e2                                      add r6, sp, #8
007689cc  02 70 a0 e1                                      mov r7, r2
007689d0  00 30 93 e5                                      ldr r3, [r3]
007689d4  78 80 80 e2                                      add r8, r0, #0x78
007689d8  06 00 a0 e1                                      mov r0, r6
007689dc  1c 30 8d e5                                      str r3, [sp, #0x1c]
007689e0  91 a9 ff eb                                      bl #0x75302c
007689e4  00 00 57 e3                                      cmp r7, #0
007689e8  04 70 8d e5                                      str r7, [sp, #4]
007689ec  01 00 00 0a                                      beq #0x7689f8
007689f0  07 00 a0 e1                                      mov r0, r7
007689f4  9a c4 ff eb                                      bl #0x759c64
007689f8  08 00 a0 e1                                      mov r0, r8
007689fc  06 10 a0 e1                                      mov r1, r6
00768a00  04 20 8d e2                                      add r2, sp, #4
00768a04  d7 ff ff eb                                      bl #0x768968
00768a08  04 00 9d e5                                      ldr r0, [sp, #4]
00768a0c  00 00 50 e3                                      cmp r0, #0
00768a10  00 00 00 0a                                      beq #0x768a18
00768a14  09 c6 ff eb                                      bl #0x75a240
00768a18  d8 30 dd e1                                      ldrsb r3, [sp, #8]
00768a1c  01 00 73 e3                                      cmn r3, #1
00768a20  06 00 00 0a                                      beq #0x768a40
00768a24  05 30 94 e7                                      ldr r3, [r4, r5]
00768a28  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00768a2c  00 30 93 e5                                      ldr r3, [r3]
00768a30  03 00 52 e1                                      cmp r2, r3
00768a34  05 00 00 1a                                      bne #0x768a50
00768a38  20 d0 8d e2                                      add sp, sp, #0x20
00768a3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00768a40  14 00 9d e5                                      ldr r0, [sp, #0x14]
00768a44  10 10 9d e5                                      ldr r1, [sp, #0x10]
00768a48  3a a8 ff eb                                      bl #0x752b38
00768a4c  f4 ff ff ea                                      b #0x768a24
00768a50  2e 96 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00768a54  d0 c0 22 00 ac 40 00 00                          .byte 0xd0, 0xc0, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00768a5c, declared_size=232, range_size=232, mode=arm
; class-group: gameswf::movie_def_impl
; alias: _ZN7gameswf14movie_def_impl14add_frame_nameEPKc
; demangled: gameswf::movie_def_impl::add_frame_name(char const*)
; decoder-mode: arm
00768a5c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00768a60  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
00768a64  d4 50 9f e5                                      ldr r5, [pc, #0xd4]
00768a68  1c 70 90 e5                                      ldr r7, [r0, #0x1c]
00768a6c  04 40 8f e0                                      add r4, pc, r4
00768a70  05 30 94 e7                                      ldr r3, [r4, r5]
00768a74  24 d0 4d e2                                      sub sp, sp, #0x24
00768a78  00 00 57 e3                                      cmp r7, #0
00768a7c  00 30 93 e5                                      ldr r3, [r3]
00768a80  00 60 a0 e1                                      mov r6, r0
00768a84  01 a0 a0 e1                                      mov sl, r1
00768a88  1c 30 8d e5                                      str r3, [sp, #0x1c]
00768a8c  03 00 00 0a                                      beq #0x768aa0
00768a90  18 00 90 e5                                      ldr r0, [r0, #0x18]
00768a94  04 30 d0 e5                                      ldrb r3, [r0, #4]
00768a98  00 00 53 e3                                      cmp r3, #0
00768a9c  1b 00 00 0a                                      beq #0x768b10
00768aa0  08 80 8d e2                                      add r8, sp, #8
00768aa4  0a 10 a0 e1                                      mov r1, sl
00768aa8  08 00 a0 e1                                      mov r0, r8
00768aac  f2 ab f2 eb                                      bl #0x413a7c
00768ab0  2c 00 87 e2                                      add r0, r7, #0x2c
00768ab4  08 10 a0 e1                                      mov r1, r8
00768ab8  03 ce ff eb                                      bl #0x75c2cc
00768abc  d8 30 dd e1                                      ldrsb r3, [sp, #8]
00768ac0  04 00 8d e5                                      str r0, [sp, #4]
00768ac4  01 00 73 e3                                      cmn r3, #1
00768ac8  0c 00 00 0a                                      beq #0x768b00
00768acc  3c 30 96 e5                                      ldr r3, [r6, #0x3c]
00768ad0  0d 20 a0 e1                                      mov r2, sp
00768ad4  74 00 86 e2                                      add r0, r6, #0x74
00768ad8  04 10 8d e2                                      add r1, sp, #4
00768adc  00 30 8d e5                                      str r3, [sp]
00768ae0  dd fa ff eb                                      bl #0x76765c
00768ae4  05 30 94 e7                                      ldr r3, [r4, r5]
00768ae8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00768aec  00 30 93 e5                                      ldr r3, [r3]
00768af0  03 00 52 e1                                      cmp r2, r3
00768af4  0f 00 00 1a                                      bne #0x768b38
00768af8  24 d0 8d e2                                      add sp, sp, #0x24
00768afc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00768b00  14 00 9d e5                                      ldr r0, [sp, #0x14]
00768b04  10 10 9d e5                                      ldr r1, [sp, #0x10]
00768b08  0a a8 ff eb                                      bl #0x752b38
00768b0c  ee ff ff ea                                      b #0x768acc
00768b10  00 10 90 e5                                      ldr r1, [r0]
00768b14  01 10 41 e2                                      sub r1, r1, #1
00768b18  00 00 51 e3                                      cmp r1, #0
00768b1c  00 10 80 e5                                      str r1, [r0]
00768b20  00 00 00 1a                                      bne #0x768b28
00768b24  03 a8 ff eb                                      bl #0x752b38
00768b28  00 70 a0 e3                                      mov r7, #0
00768b2c  18 70 86 e5                                      str r7, [r6, #0x18]
00768b30  1c 70 86 e5                                      str r7, [r6, #0x1c]
00768b34  d9 ff ff ea                                      b #0x768aa0
00768b38  f4 95 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00768b3c  24 c0 22 00 ac 40 00 00                          .byte 0x24, 0xc0, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00
