; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00751ffc, declared_size=228, range_size=228, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf30encode_utf8_from_wchar_genericItEEvPNS_9tu_stringEPKT_
; demangled: void gameswf::encode_utf8_from_wchar_generic<unsigned short>(gameswf::tu_string*, unsigned short const*)
; decoder-mode: arm
00751ffc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00752000  d0 b0 9f e5                                      ldr fp, [pc, #0xd0]
00752004  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
00752008  24 d0 4d e2                                      sub sp, sp, #0x24
0075200c  0b b0 8f e0                                      add fp, pc, fp
00752010  02 30 9b e7                                      ldr r3, [fp, r2]
00752014  00 40 a0 e3                                      mov r4, #0
00752018  04 20 8d e5                                      str r2, [sp, #4]
0075201c  00 30 93 e5                                      ldr r3, [r3]
00752020  00 00 8d e5                                      str r0, [sp]
00752024  01 70 a0 e1                                      mov r7, r1
00752028  04 60 a0 e1                                      mov r6, r4
0075202c  10 a0 8d e2                                      add sl, sp, #0x10
00752030  1c 30 8d e5                                      str r3, [sp, #0x1c]
00752034  0c 80 8d e2                                      add r8, sp, #0xc
00752038  04 90 a0 e1                                      mov sb, r4
0075203c  b4 50 97 e1                                      ldrh r5, [r7, r4]
00752040  0a 00 a0 e1                                      mov r0, sl
00752044  08 10 a0 e1                                      mov r1, r8
00752048  05 20 a0 e1                                      mov r2, r5
0075204c  0c 90 8d e5                                      str sb, [sp, #0xc]
00752050  e3 01 00 eb                                      bl #0x7527e4
00752054  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00752058  00 00 55 e3                                      cmp r5, #0
0075205c  02 40 84 e2                                      add r4, r4, #2
00752060  03 60 86 e0                                      add r6, r6, r3
00752064  f4 ff ff 1a                                      bne #0x75203c
00752068  01 10 46 e2                                      sub r1, r6, #1
0075206c  00 00 9d e5                                      ldr r0, [sp]
00752070  27 ff ff eb                                      bl #0x751d14
00752074  00 20 9d e5                                      ldr r2, [sp]
00752078  00 40 a0 e3                                      mov r4, #0
0075207c  d0 30 d2 e1                                      ldrsb r3, [r2]
00752080  01 00 73 e3                                      cmn r3, #1
00752084  00 30 9d 05                                      ldreq r3, [sp]
00752088  01 60 82 12                                      addne r6, r2, #1
0075208c  0c 60 93 05                                      ldreq r6, [r3, #0xc]
00752090  0c 40 8d e5                                      str r4, [sp, #0xc]
00752094  b4 50 97 e1                                      ldrh r5, [r7, r4]
00752098  06 00 a0 e1                                      mov r0, r6
0075209c  08 10 a0 e1                                      mov r1, r8
007520a0  05 20 a0 e1                                      mov r2, r5
007520a4  ce 01 00 eb                                      bl #0x7527e4
007520a8  00 00 55 e3                                      cmp r5, #0
007520ac  02 40 84 e2                                      add r4, r4, #2
007520b0  f7 ff ff 1a                                      bne #0x752094
007520b4  04 20 9d e5                                      ldr r2, [sp, #4]
007520b8  02 30 9b e7                                      ldr r3, [fp, r2]
007520bc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007520c0  00 30 93 e5                                      ldr r3, [r3]
007520c4  03 00 52 e1                                      cmp r2, r3
007520c8  01 00 00 1a                                      bne #0x7520d4
007520cc  24 d0 8d e2                                      add sp, sp, #0x24
007520d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007520d4  8d f0 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007520d8  84 2a 24 00 ac 40 00 00                          .byte 0x84, 0x2a, 0x24, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007520e4, declared_size=228, range_size=228, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf30encode_utf8_from_wchar_genericIjEEvPNS_9tu_stringEPKT_
; demangled: void gameswf::encode_utf8_from_wchar_generic<unsigned int>(gameswf::tu_string*, unsigned int const*)
; decoder-mode: arm
007520e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007520e8  d0 b0 9f e5                                      ldr fp, [pc, #0xd0]
007520ec  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
007520f0  24 d0 4d e2                                      sub sp, sp, #0x24
007520f4  0b b0 8f e0                                      add fp, pc, fp
007520f8  02 30 9b e7                                      ldr r3, [fp, r2]
007520fc  00 40 a0 e3                                      mov r4, #0
00752100  04 20 8d e5                                      str r2, [sp, #4]
00752104  00 30 93 e5                                      ldr r3, [r3]
00752108  00 00 8d e5                                      str r0, [sp]
0075210c  01 70 a0 e1                                      mov r7, r1
00752110  04 60 a0 e1                                      mov r6, r4
00752114  10 a0 8d e2                                      add sl, sp, #0x10
00752118  1c 30 8d e5                                      str r3, [sp, #0x1c]
0075211c  0c 80 8d e2                                      add r8, sp, #0xc
00752120  04 90 a0 e1                                      mov sb, r4
00752124  04 50 97 e7                                      ldr r5, [r7, r4]
00752128  0a 00 a0 e1                                      mov r0, sl
0075212c  08 10 a0 e1                                      mov r1, r8
00752130  05 20 a0 e1                                      mov r2, r5
00752134  0c 90 8d e5                                      str sb, [sp, #0xc]
00752138  a9 01 00 eb                                      bl #0x7527e4
0075213c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00752140  00 00 55 e3                                      cmp r5, #0
00752144  04 40 84 e2                                      add r4, r4, #4
00752148  03 60 86 e0                                      add r6, r6, r3
0075214c  f4 ff ff 1a                                      bne #0x752124
00752150  01 10 46 e2                                      sub r1, r6, #1
00752154  00 00 9d e5                                      ldr r0, [sp]
00752158  ed fe ff eb                                      bl #0x751d14
0075215c  00 20 9d e5                                      ldr r2, [sp]
00752160  00 40 a0 e3                                      mov r4, #0
00752164  d0 30 d2 e1                                      ldrsb r3, [r2]
00752168  01 00 73 e3                                      cmn r3, #1
0075216c  00 30 9d 05                                      ldreq r3, [sp]
00752170  01 60 82 12                                      addne r6, r2, #1
00752174  0c 60 93 05                                      ldreq r6, [r3, #0xc]
00752178  0c 40 8d e5                                      str r4, [sp, #0xc]
0075217c  04 50 97 e7                                      ldr r5, [r7, r4]
00752180  06 00 a0 e1                                      mov r0, r6
00752184  08 10 a0 e1                                      mov r1, r8
00752188  05 20 a0 e1                                      mov r2, r5
0075218c  94 01 00 eb                                      bl #0x7527e4
00752190  00 00 55 e3                                      cmp r5, #0
00752194  04 40 84 e2                                      add r4, r4, #4
00752198  f7 ff ff 1a                                      bne #0x75217c
0075219c  04 20 9d e5                                      ldr r2, [sp, #4]
007521a0  02 30 9b e7                                      ldr r3, [fp, r2]
007521a4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007521a8  00 30 93 e5                                      ldr r3, [r3]
007521ac  03 00 52 e1                                      cmp r2, r3
007521b0  01 00 00 1a                                      bne #0x7521bc
007521b4  24 d0 8d e2                                      add sp, sp, #0x24
007521b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007521bc  53 f0 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007521c0  9c 29 24 00 ac 40 00 00                          .byte 0x9c, 0x29, 0x24, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0075a02c, declared_size=16, range_size=16, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf9destructpIhEEvPKT_j
; demangled: void gameswf::destructp<unsigned char>(unsigned char const*, unsigned int)
; decoder-mode: arm
0075a02c  00 00 50 e3                                      cmp r0, #0
0075a030  1e ff 2f 01                                      bxeq lr
0075a034  00 10 a0 e3                                      mov r1, #0
0075a038  be e2 ff ea                                      b #0x752b38

; FUNCTION 0x0075a1bc, declared_size=44, range_size=44, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_9image_rgbEEEvPKT_
; demangled: void gameswf::destruct<gameswf::image_rgb>(gameswf::image_rgb const*)
; decoder-mode: arm
0075a1bc  10 40 2d e9                                      push {r4, lr}
0075a1c0  00 40 50 e2                                      subs r4, r0, #0
0075a1c4  06 00 00 0a                                      beq #0x75a1e4
0075a1c8  00 30 94 e5                                      ldr r3, [r4]
0075a1cc  0f e0 a0 e1                                      mov lr, pc
0075a1d0  00 f0 93 e5                                      ldr pc, [r3]
0075a1d4  04 00 a0 e1                                      mov r0, r4
0075a1d8  00 10 a0 e3                                      mov r1, #0
0075a1dc  10 40 bd e8                                      pop {r4, lr}
0075a1e0  54 e2 ff ea                                      b #0x752b38
0075a1e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075a1e8, declared_size=44, range_size=44, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_10image_rgbaEEEvPKT_
; demangled: void gameswf::destruct<gameswf::image_rgba>(gameswf::image_rgba const*)
; decoder-mode: arm
0075a1e8  10 40 2d e9                                      push {r4, lr}
0075a1ec  00 40 50 e2                                      subs r4, r0, #0
0075a1f0  06 00 00 0a                                      beq #0x75a210
0075a1f4  00 30 94 e5                                      ldr r3, [r4]
0075a1f8  0f e0 a0 e1                                      mov lr, pc
0075a1fc  00 f0 93 e5                                      ldr pc, [r3]
0075a200  04 00 a0 e1                                      mov r0, r4
0075a204  00 10 a0 e3                                      mov r1, #0
0075a208  10 40 bd e8                                      pop {r4, lr}
0075a20c  49 e2 ff ea                                      b #0x752b38
0075a210  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075a214, declared_size=44, range_size=44, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_11ref_countedEEEvPKT_
; demangled: void gameswf::destruct<gameswf::ref_counted>(gameswf::ref_counted const*)
; decoder-mode: arm
0075a214  10 40 2d e9                                      push {r4, lr}
0075a218  00 40 50 e2                                      subs r4, r0, #0
0075a21c  06 00 00 0a                                      beq #0x75a23c
0075a220  00 30 94 e5                                      ldr r3, [r4]
0075a224  0f e0 a0 e1                                      mov lr, pc
0075a228  00 f0 93 e5                                      ldr pc, [r3]
0075a22c  04 00 a0 e1                                      mov r0, r4
0075a230  00 10 a0 e3                                      mov r1, #0
0075a234  10 40 bd e8                                      pop {r4, lr}
0075a238  3e e2 ff ea                                      b #0x752b38
0075a23c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075cb14, declared_size=88, range_size=88, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_9character6customEEEvPKT_
; demangled: void gameswf::destruct<gameswf::character::custom>(gameswf::character::custom const*)
; decoder-mode: arm
0075cb14  70 40 2d e9                                      push {r4, r5, r6, lr}
0075cb18  00 40 50 e2                                      subs r4, r0, #0
0075cb1c  0d 00 00 0a                                      beq #0x75cb58
0075cb20  dc 34 d4 e1                                      ldrsb r3, [r4, #0x4c]
0075cb24  01 00 73 e3                                      cmn r3, #1
0075cb28  0b 00 00 0a                                      beq #0x75cb5c
0075cb2c  3c 50 84 e2                                      add r5, r4, #0x3c
0075cb30  05 00 a0 e1                                      mov r0, r5
0075cb34  00 10 a0 e3                                      mov r1, #0
0075cb38  e6 e3 ff eb                                      bl #0x755ad8
0075cb3c  05 00 a0 e1                                      mov r0, r5
0075cb40  00 10 a0 e3                                      mov r1, #0
0075cb44  df d8 ff eb                                      bl #0x752ec8
0075cb48  04 00 a0 e1                                      mov r0, r4
0075cb4c  00 10 a0 e3                                      mov r1, #0
0075cb50  70 40 bd e8                                      pop {r4, r5, r6, lr}
0075cb54  f7 d7 ff ea                                      b #0x752b38
0075cb58  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075cb5c  58 00 94 e5                                      ldr r0, [r4, #0x58]
0075cb60  54 10 94 e5                                      ldr r1, [r4, #0x54]
0075cb64  f3 d7 ff eb                                      bl #0x752b38
0075cb68  ef ff ff ea                                      b #0x75cb2c

; FUNCTION 0x007613b8, declared_size=44, range_size=44, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_19shape_character_defEEEvPKT_
; demangled: void gameswf::destruct<gameswf::shape_character_def>(gameswf::shape_character_def const*)
; decoder-mode: arm
007613b8  10 40 2d e9                                      push {r4, lr}
007613bc  00 40 50 e2                                      subs r4, r0, #0
007613c0  06 00 00 0a                                      beq #0x7613e0
007613c4  00 30 94 e5                                      ldr r3, [r4]
007613c8  0f e0 a0 e1                                      mov lr, pc
007613cc  00 f0 93 e5                                      ldr pc, [r3]
007613d0  04 00 a0 e1                                      mov r0, r4
007613d4  00 10 a0 e3                                      mov r1, #0
007613d8  10 40 bd e8                                      pop {r4, lr}
007613dc  d5 c5 ff ea                                      b #0x752b38
007613e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00763dc0, declared_size=44, range_size=44, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_4jpeg5inputEEEvPKT_
; demangled: void gameswf::destruct<gameswf::jpeg::input>(gameswf::jpeg::input const*)
; decoder-mode: arm
00763dc0  10 40 2d e9                                      push {r4, lr}
00763dc4  00 40 50 e2                                      subs r4, r0, #0
00763dc8  06 00 00 0a                                      beq #0x763de8
00763dcc  00 30 94 e5                                      ldr r3, [r4]
00763dd0  0f e0 a0 e1                                      mov lr, pc
00763dd4  00 f0 93 e5                                      ldr pc, [r3]
00763dd8  04 00 a0 e1                                      mov r0, r4
00763ddc  00 10 a0 e3                                      mov r1, #0
00763de0  10 40 bd e8                                      pop {r4, lr}
00763de4  53 bb ff ea                                      b #0x752b38
00763de8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00763e6c, declared_size=44, range_size=44, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_11execute_tagEEEvPKT_
; demangled: void gameswf::destruct<gameswf::execute_tag>(gameswf::execute_tag const*)
; decoder-mode: arm
00763e6c  10 40 2d e9                                      push {r4, lr}
00763e70  00 40 50 e2                                      subs r4, r0, #0
00763e74  06 00 00 0a                                      beq #0x763e94
00763e78  00 30 94 e5                                      ldr r3, [r4]
00763e7c  0f e0 a0 e1                                      mov lr, pc
00763e80  00 f0 93 e5                                      ldr pc, [r3]
00763e84  04 00 a0 e1                                      mov r0, r4
00763e88  00 10 a0 e3                                      mov r1, #0
00763e8c  10 40 bd e8                                      pop {r4, lr}
00763e90  28 bb ff ea                                      b #0x752b38
00763e94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0076c870, declared_size=60, range_size=60, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_16permanent_stringEEEvPKT_
; demangled: void gameswf::destruct<gameswf::permanent_string>(gameswf::permanent_string const*)
; decoder-mode: arm
0076c870  10 40 2d e9                                      push {r4, lr}
0076c874  00 40 50 e2                                      subs r4, r0, #0
0076c878  0a 00 00 0a                                      beq #0x76c8a8
0076c87c  d0 30 d4 e1                                      ldrsb r3, [r4]
0076c880  01 00 73 e3                                      cmn r3, #1
0076c884  03 00 00 0a                                      beq #0x76c898
0076c888  04 00 a0 e1                                      mov r0, r4
0076c88c  00 10 a0 e3                                      mov r1, #0
0076c890  10 40 bd e8                                      pop {r4, lr}
0076c894  a7 98 ff ea                                      b #0x752b38
0076c898  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0076c89c  08 10 94 e5                                      ldr r1, [r4, #8]
0076c8a0  a4 98 ff eb                                      bl #0x752b38
0076c8a4  f7 ff ff ea                                      b #0x76c888
0076c8a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0076c9ac, declared_size=44, range_size=44, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_21bitmap_glyph_providerEEEvPKT_
; demangled: void gameswf::destruct<gameswf::bitmap_glyph_provider>(gameswf::bitmap_glyph_provider const*)
; decoder-mode: arm
0076c9ac  10 40 2d e9                                      push {r4, lr}
0076c9b0  00 40 50 e2                                      subs r4, r0, #0
0076c9b4  06 00 00 0a                                      beq #0x76c9d4
0076c9b8  00 30 94 e5                                      ldr r3, [r4]
0076c9bc  0f e0 a0 e1                                      mov lr, pc
0076c9c0  00 f0 93 e5                                      ldr pc, [r3]
0076c9c4  04 00 a0 e1                                      mov r0, r4
0076c9c8  00 10 a0 e3                                      mov r1, #0
0076c9cc  10 40 bd e8                                      pop {r4, lr}
0076c9d0  58 98 ff ea                                      b #0x752b38
0076c9d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007775f4, declared_size=464, range_size=464, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf7collectIaEEvPKjjRKN6glitch5video13SVertexStreamEPNS_5pointE
; demangled: void gameswf::collect<signed char>(unsigned int const*, unsigned int, glitch::video::SVertexStream const&, gameswf::point*)
; decoder-mode: arm
007775f4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007775f8  00 40 a0 e1                                      mov r4, r0
007775fc  01 60 a0 e1                                      mov r6, r1
00777600  00 00 92 e5                                      ldr r0, [r2]
00777604  01 10 a0 e3                                      mov r1, #1
00777608  02 50 a0 e1                                      mov r5, r2
0077760c  03 70 a0 e1                                      mov r7, r3
00777610  31 a9 f8 eb                                      bl #0x5a1adc
00777614  04 80 95 e5                                      ldr r8, [r5, #4]
00777618  00 00 54 e3                                      cmp r4, #0
0077761c  08 80 80 e0                                      add r8, r0, r8
00777620  3b 00 00 0a                                      beq #0x777714
00777624  00 00 56 e3                                      cmp r6, #0
00777628  27 00 00 0a                                      beq #0x7776cc
0077762c  00 a0 a0 e3                                      mov sl, #0
00777630  00 00 00 ea                                      b #0x777638
00777634  18 70 87 e2                                      add r7, r7, #0x18
00777638  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
0077763c  08 b0 94 e5                                      ldr fp, [r4, #8]
00777640  01 a0 8a e2                                      add sl, sl, #1
00777644  9b 03 0b e0                                      mul fp, fp, r3
00777648  db 00 98 e1                                      ldrsb r0, [r8, fp]
0077764c  c4 5c ee eb                                      bl #0x30e964
00777650  0b b0 88 e0                                      add fp, r8, fp
00777654  00 90 a0 e1                                      mov sb, r0
00777658  d1 00 db e1                                      ldrsb r0, [fp, #1]
0077765c  c0 5c ee eb                                      bl #0x30e964
00777660  00 90 87 e5                                      str sb, [r7]
00777664  04 00 87 e5                                      str r0, [r7, #4]
00777668  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
0077766c  04 b0 94 e5                                      ldr fp, [r4, #4]
00777670  9b 03 0b e0                                      mul fp, fp, r3
00777674  db 00 98 e1                                      ldrsb r0, [r8, fp]
00777678  b9 5c ee eb                                      bl #0x30e964
0077767c  0b b0 88 e0                                      add fp, r8, fp
00777680  00 90 a0 e1                                      mov sb, r0
00777684  d1 00 db e1                                      ldrsb r0, [fp, #1]
00777688  b5 5c ee eb                                      bl #0x30e964
0077768c  08 90 87 e5                                      str sb, [r7, #8]
00777690  0c 00 87 e5                                      str r0, [r7, #0xc]
00777694  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00777698  00 b0 94 e5                                      ldr fp, [r4]
0077769c  0c 40 84 e2                                      add r4, r4, #0xc
007776a0  9b 03 0b e0                                      mul fp, fp, r3
007776a4  db 00 98 e1                                      ldrsb r0, [r8, fp]
007776a8  ad 5c ee eb                                      bl #0x30e964
007776ac  0b b0 88 e0                                      add fp, r8, fp
007776b0  00 90 a0 e1                                      mov sb, r0
007776b4  d1 00 db e1                                      ldrsb r0, [fp, #1]
007776b8  a9 5c ee eb                                      bl #0x30e964
007776bc  06 00 5a e1                                      cmp sl, r6
007776c0  14 00 87 e5                                      str r0, [r7, #0x14]
007776c4  10 90 87 e5                                      str sb, [r7, #0x10]
007776c8  d9 ff ff 1a                                      bne #0x777634
007776cc  00 00 58 e3                                      cmp r8, #0
007776d0  0e 00 00 0a                                      beq #0x777710
007776d4  00 40 95 e5                                      ldr r4, [r5]
007776d8  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
007776dc  1f 20 03 e2                                      and r2, r3, #0x1f
007776e0  01 00 52 e3                                      cmp r2, #1
007776e4  04 00 00 9a                                      bls #0x7776fc
007776e8  01 20 42 e2                                      sub r2, r2, #1
007776ec  1f 30 c3 e3                                      bic r3, r3, #0x1f
007776f0  03 30 82 e1                                      orr r3, r2, r3
007776f4  13 30 c4 e5                                      strb r3, [r4, #0x13]
007776f8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007776fc  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00777700  20 00 13 e3                                      tst r3, #0x20
00777704  29 00 00 1a                                      bne #0x7777b0
00777708  00 30 a0 e3                                      mov r3, #0
0077770c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00777710  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00777714  00 00 56 e3                                      cmp r6, #0
00777718  01 00 00 1a                                      bne #0x777724
0077771c  ea ff ff ea                                      b #0x7776cc
00777720  18 70 87 e2                                      add r7, r7, #0x18
00777724  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00777728  02 30 84 e2                                      add r3, r4, #2
0077772c  99 03 09 e0                                      mul sb, sb, r3
00777730  d9 00 98 e1                                      ldrsb r0, [r8, sb]
00777734  8a 5c ee eb                                      bl #0x30e964
00777738  09 90 88 e0                                      add sb, r8, sb
0077773c  00 a0 a0 e1                                      mov sl, r0
00777740  d1 00 d9 e1                                      ldrsb r0, [sb, #1]
00777744  86 5c ee eb                                      bl #0x30e964
00777748  00 a0 87 e5                                      str sl, [r7]
0077774c  04 00 87 e5                                      str r0, [r7, #4]
00777750  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00777754  94 99 29 e0                                      mla sb, r4, sb, sb
00777758  d9 00 98 e1                                      ldrsb r0, [r8, sb]
0077775c  80 5c ee eb                                      bl #0x30e964
00777760  09 90 88 e0                                      add sb, r8, sb
00777764  00 a0 a0 e1                                      mov sl, r0
00777768  d1 00 d9 e1                                      ldrsb r0, [sb, #1]
0077776c  7c 5c ee eb                                      bl #0x30e964
00777770  08 a0 87 e5                                      str sl, [r7, #8]
00777774  0c 00 87 e5                                      str r0, [r7, #0xc]
00777778  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
0077777c  99 04 09 e0                                      mul sb, sb, r4
00777780  03 40 84 e2                                      add r4, r4, #3
00777784  d9 00 98 e1                                      ldrsb r0, [r8, sb]
00777788  75 5c ee eb                                      bl #0x30e964
0077778c  09 90 88 e0                                      add sb, r8, sb
00777790  00 a0 a0 e1                                      mov sl, r0
00777794  d1 00 d9 e1                                      ldrsb r0, [sb, #1]
00777798  71 5c ee eb                                      bl #0x30e964
0077779c  04 00 56 e1                                      cmp r6, r4
007777a0  14 00 87 e5                                      str r0, [r7, #0x14]
007777a4  10 a0 87 e5                                      str sl, [r7, #0x10]
007777a8  dc ff ff 8a                                      bhi #0x777720
007777ac  c6 ff ff ea                                      b #0x7776cc
007777b0  00 30 94 e5                                      ldr r3, [r4]
007777b4  04 00 a0 e1                                      mov r0, r4
007777b8  0f e0 a0 e1                                      mov lr, pc
007777bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007777c0  d0 ff ff ea                                      b #0x777708

; FUNCTION 0x007777c4, declared_size=464, range_size=464, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf7collectIjEEvPKjjRKN6glitch5video13SVertexStreamEPNS_5pointE
; demangled: void gameswf::collect<unsigned int>(unsigned int const*, unsigned int, glitch::video::SVertexStream const&, gameswf::point*)
; decoder-mode: arm
007777c4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007777c8  00 40 a0 e1                                      mov r4, r0
007777cc  01 60 a0 e1                                      mov r6, r1
007777d0  00 00 92 e5                                      ldr r0, [r2]
007777d4  01 10 a0 e3                                      mov r1, #1
007777d8  02 50 a0 e1                                      mov r5, r2
007777dc  03 70 a0 e1                                      mov r7, r3
007777e0  bd a8 f8 eb                                      bl #0x5a1adc
007777e4  04 80 95 e5                                      ldr r8, [r5, #4]
007777e8  00 00 54 e3                                      cmp r4, #0
007777ec  08 80 80 e0                                      add r8, r0, r8
007777f0  3b 00 00 0a                                      beq #0x7778e4
007777f4  00 00 56 e3                                      cmp r6, #0
007777f8  27 00 00 0a                                      beq #0x77789c
007777fc  00 a0 a0 e3                                      mov sl, #0
00777800  00 00 00 ea                                      b #0x777808
00777804  18 70 87 e2                                      add r7, r7, #0x18
00777808  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
0077780c  08 b0 94 e5                                      ldr fp, [r4, #8]
00777810  01 a0 8a e2                                      add sl, sl, #1
00777814  9b 03 0b e0                                      mul fp, fp, r3
00777818  0b 00 98 e7                                      ldr r0, [r8, fp]
0077781c  af 5a ee eb                                      bl #0x30e2e0
00777820  0b b0 88 e0                                      add fp, r8, fp
00777824  00 90 a0 e1                                      mov sb, r0
00777828  04 00 9b e5                                      ldr r0, [fp, #4]
0077782c  ab 5a ee eb                                      bl #0x30e2e0
00777830  00 90 87 e5                                      str sb, [r7]
00777834  04 00 87 e5                                      str r0, [r7, #4]
00777838  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
0077783c  04 b0 94 e5                                      ldr fp, [r4, #4]
00777840  9b 03 0b e0                                      mul fp, fp, r3
00777844  0b 00 98 e7                                      ldr r0, [r8, fp]
00777848  a4 5a ee eb                                      bl #0x30e2e0
0077784c  0b b0 88 e0                                      add fp, r8, fp
00777850  00 90 a0 e1                                      mov sb, r0
00777854  04 00 9b e5                                      ldr r0, [fp, #4]
00777858  a0 5a ee eb                                      bl #0x30e2e0
0077785c  08 90 87 e5                                      str sb, [r7, #8]
00777860  0c 00 87 e5                                      str r0, [r7, #0xc]
00777864  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00777868  00 b0 94 e5                                      ldr fp, [r4]
0077786c  0c 40 84 e2                                      add r4, r4, #0xc
00777870  9b 03 0b e0                                      mul fp, fp, r3
00777874  0b 00 98 e7                                      ldr r0, [r8, fp]
00777878  98 5a ee eb                                      bl #0x30e2e0
0077787c  0b b0 88 e0                                      add fp, r8, fp
00777880  00 90 a0 e1                                      mov sb, r0
00777884  04 00 9b e5                                      ldr r0, [fp, #4]
00777888  94 5a ee eb                                      bl #0x30e2e0
0077788c  06 00 5a e1                                      cmp sl, r6
00777890  14 00 87 e5                                      str r0, [r7, #0x14]
00777894  10 90 87 e5                                      str sb, [r7, #0x10]
00777898  d9 ff ff 1a                                      bne #0x777804
0077789c  00 00 58 e3                                      cmp r8, #0
007778a0  0e 00 00 0a                                      beq #0x7778e0
007778a4  00 40 95 e5                                      ldr r4, [r5]
007778a8  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
007778ac  1f 20 03 e2                                      and r2, r3, #0x1f
007778b0  01 00 52 e3                                      cmp r2, #1
007778b4  04 00 00 9a                                      bls #0x7778cc
007778b8  01 20 42 e2                                      sub r2, r2, #1
007778bc  1f 30 c3 e3                                      bic r3, r3, #0x1f
007778c0  03 30 82 e1                                      orr r3, r2, r3
007778c4  13 30 c4 e5                                      strb r3, [r4, #0x13]
007778c8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007778cc  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
007778d0  20 00 13 e3                                      tst r3, #0x20
007778d4  29 00 00 1a                                      bne #0x777980
007778d8  00 30 a0 e3                                      mov r3, #0
007778dc  13 30 c4 e5                                      strb r3, [r4, #0x13]
007778e0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007778e4  00 00 56 e3                                      cmp r6, #0
007778e8  01 00 00 1a                                      bne #0x7778f4
007778ec  ea ff ff ea                                      b #0x77789c
007778f0  18 70 87 e2                                      add r7, r7, #0x18
007778f4  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
007778f8  02 30 84 e2                                      add r3, r4, #2
007778fc  99 03 09 e0                                      mul sb, sb, r3
00777900  09 00 98 e7                                      ldr r0, [r8, sb]
00777904  75 5a ee eb                                      bl #0x30e2e0
00777908  09 90 88 e0                                      add sb, r8, sb
0077790c  00 a0 a0 e1                                      mov sl, r0
00777910  04 00 99 e5                                      ldr r0, [sb, #4]
00777914  71 5a ee eb                                      bl #0x30e2e0
00777918  00 a0 87 e5                                      str sl, [r7]
0077791c  04 00 87 e5                                      str r0, [r7, #4]
00777920  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00777924  94 99 29 e0                                      mla sb, r4, sb, sb
00777928  09 00 98 e7                                      ldr r0, [r8, sb]
0077792c  6b 5a ee eb                                      bl #0x30e2e0
00777930  09 90 88 e0                                      add sb, r8, sb
00777934  00 a0 a0 e1                                      mov sl, r0
00777938  04 00 99 e5                                      ldr r0, [sb, #4]
0077793c  67 5a ee eb                                      bl #0x30e2e0
00777940  08 a0 87 e5                                      str sl, [r7, #8]
00777944  0c 00 87 e5                                      str r0, [r7, #0xc]
00777948  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
0077794c  99 04 09 e0                                      mul sb, sb, r4
00777950  03 40 84 e2                                      add r4, r4, #3
00777954  09 00 98 e7                                      ldr r0, [r8, sb]
00777958  60 5a ee eb                                      bl #0x30e2e0
0077795c  09 90 88 e0                                      add sb, r8, sb
00777960  00 a0 a0 e1                                      mov sl, r0
00777964  04 00 99 e5                                      ldr r0, [sb, #4]
00777968  5c 5a ee eb                                      bl #0x30e2e0
0077796c  04 00 56 e1                                      cmp r6, r4
00777970  14 00 87 e5                                      str r0, [r7, #0x14]
00777974  10 a0 87 e5                                      str sl, [r7, #0x10]
00777978  dc ff ff 8a                                      bhi #0x7778f0
0077797c  c6 ff ff ea                                      b #0x77789c
00777980  00 30 94 e5                                      ldr r3, [r4]
00777984  04 00 a0 e1                                      mov r0, r4
00777988  0f e0 a0 e1                                      mov lr, pc
0077798c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00777990  d0 ff ff ea                                      b #0x7778d8

; FUNCTION 0x00777994, declared_size=392, range_size=392, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf7collectIfEEvPKjjRKN6glitch5video13SVertexStreamEPNS_5pointE
; demangled: void gameswf::collect<float>(unsigned int const*, unsigned int, glitch::video::SVertexStream const&, gameswf::point*)
; decoder-mode: arm
00777994  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00777998  00 40 a0 e1                                      mov r4, r0
0077799c  01 60 a0 e1                                      mov r6, r1
007779a0  00 00 92 e5                                      ldr r0, [r2]
007779a4  01 10 a0 e3                                      mov r1, #1
007779a8  02 50 a0 e1                                      mov r5, r2
007779ac  03 70 a0 e1                                      mov r7, r3
007779b0  49 a8 f8 eb                                      bl #0x5a1adc
007779b4  04 30 95 e5                                      ldr r3, [r5, #4]
007779b8  00 00 54 e3                                      cmp r4, #0
007779bc  03 30 80 e0                                      add r3, r0, r3
007779c0  32 00 00 0a                                      beq #0x777a90
007779c4  00 00 56 e3                                      cmp r6, #0
007779c8  1e 00 00 0a                                      beq #0x777a48
007779cc  00 20 a0 e3                                      mov r2, #0
007779d0  00 00 00 ea                                      b #0x7779d8
007779d4  18 70 87 e2                                      add r7, r7, #0x18
007779d8  08 00 94 e5                                      ldr r0, [r4, #8]
007779dc  be 10 d5 e1                                      ldrh r1, [r5, #0xe]
007779e0  01 20 82 e2                                      add r2, r2, #1
007779e4  06 00 52 e1                                      cmp r2, r6
007779e8  90 01 01 e0                                      mul r1, r0, r1
007779ec  01 c0 83 e0                                      add ip, r3, r1
007779f0  01 00 93 e7                                      ldr r0, [r3, r1]
007779f4  04 10 9c e5                                      ldr r1, [ip, #4]
007779f8  00 00 87 e5                                      str r0, [r7]
007779fc  04 10 87 e5                                      str r1, [r7, #4]
00777a00  04 00 94 e5                                      ldr r0, [r4, #4]
00777a04  be 10 d5 e1                                      ldrh r1, [r5, #0xe]
00777a08  90 01 01 e0                                      mul r1, r0, r1
00777a0c  01 c0 83 e0                                      add ip, r3, r1
00777a10  01 00 93 e7                                      ldr r0, [r3, r1]
00777a14  04 10 9c e5                                      ldr r1, [ip, #4]
00777a18  08 00 87 e5                                      str r0, [r7, #8]
00777a1c  0c 10 87 e5                                      str r1, [r7, #0xc]
00777a20  00 00 94 e5                                      ldr r0, [r4]
00777a24  be 10 d5 e1                                      ldrh r1, [r5, #0xe]
00777a28  0c 40 84 e2                                      add r4, r4, #0xc
00777a2c  90 01 01 e0                                      mul r1, r0, r1
00777a30  01 c0 83 e0                                      add ip, r3, r1
00777a34  01 00 93 e7                                      ldr r0, [r3, r1]
00777a38  04 10 9c e5                                      ldr r1, [ip, #4]
00777a3c  10 00 87 e5                                      str r0, [r7, #0x10]
00777a40  14 10 87 e5                                      str r1, [r7, #0x14]
00777a44  e2 ff ff 1a                                      bne #0x7779d4
00777a48  00 00 53 e3                                      cmp r3, #0
00777a4c  0e 00 00 0a                                      beq #0x777a8c
00777a50  00 40 95 e5                                      ldr r4, [r5]
00777a54  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00777a58  1f 20 03 e2                                      and r2, r3, #0x1f
00777a5c  01 00 52 e3                                      cmp r2, #1
00777a60  04 00 00 9a                                      bls #0x777a78
00777a64  01 20 42 e2                                      sub r2, r2, #1
00777a68  1f 30 c3 e3                                      bic r3, r3, #0x1f
00777a6c  03 30 82 e1                                      orr r3, r2, r3
00777a70  13 30 c4 e5                                      strb r3, [r4, #0x13]
00777a74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00777a78  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00777a7c  20 00 13 e3                                      tst r3, #0x20
00777a80  20 00 00 1a                                      bne #0x777b08
00777a84  00 30 a0 e3                                      mov r3, #0
00777a88  13 30 c4 e5                                      strb r3, [r4, #0x13]
00777a8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00777a90  00 00 56 e3                                      cmp r6, #0
00777a94  01 00 00 1a                                      bne #0x777aa0
00777a98  ea ff ff ea                                      b #0x777a48
00777a9c  18 70 87 e2                                      add r7, r7, #0x18
00777aa0  be 10 d5 e1                                      ldrh r1, [r5, #0xe]
00777aa4  02 20 84 e2                                      add r2, r4, #2
00777aa8  91 02 02 e0                                      mul r2, r1, r2
00777aac  02 00 83 e0                                      add r0, r3, r2
00777ab0  02 10 93 e7                                      ldr r1, [r3, r2]
00777ab4  04 20 90 e5                                      ldr r2, [r0, #4]
00777ab8  00 10 87 e5                                      str r1, [r7]
00777abc  04 20 87 e5                                      str r2, [r7, #4]
00777ac0  be 20 d5 e1                                      ldrh r2, [r5, #0xe]
00777ac4  94 22 22 e0                                      mla r2, r4, r2, r2
00777ac8  02 00 83 e0                                      add r0, r3, r2
00777acc  02 10 93 e7                                      ldr r1, [r3, r2]
00777ad0  04 20 90 e5                                      ldr r2, [r0, #4]
00777ad4  08 10 87 e5                                      str r1, [r7, #8]
00777ad8  0c 20 87 e5                                      str r2, [r7, #0xc]
00777adc  be 20 d5 e1                                      ldrh r2, [r5, #0xe]
00777ae0  92 04 02 e0                                      mul r2, r2, r4
00777ae4  03 40 84 e2                                      add r4, r4, #3
00777ae8  02 00 83 e0                                      add r0, r3, r2
00777aec  02 10 93 e7                                      ldr r1, [r3, r2]
00777af0  04 20 90 e5                                      ldr r2, [r0, #4]
00777af4  04 00 56 e1                                      cmp r6, r4
00777af8  10 10 87 e5                                      str r1, [r7, #0x10]
00777afc  14 20 87 e5                                      str r2, [r7, #0x14]
00777b00  e5 ff ff 8a                                      bhi #0x777a9c
00777b04  cf ff ff ea                                      b #0x777a48
00777b08  00 30 94 e5                                      ldr r3, [r4]
00777b0c  04 00 a0 e1                                      mov r0, r4
00777b10  0f e0 a0 e1                                      mov lr, pc
00777b14  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00777b18  d9 ff ff ea                                      b #0x777a84

; FUNCTION 0x00777b1c, declared_size=464, range_size=464, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf7collectIhEEvPKjjRKN6glitch5video13SVertexStreamEPNS_5pointE
; demangled: void gameswf::collect<unsigned char>(unsigned int const*, unsigned int, glitch::video::SVertexStream const&, gameswf::point*)
; decoder-mode: arm
00777b1c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00777b20  00 40 a0 e1                                      mov r4, r0
00777b24  01 60 a0 e1                                      mov r6, r1
00777b28  00 00 92 e5                                      ldr r0, [r2]
00777b2c  01 10 a0 e3                                      mov r1, #1
00777b30  02 50 a0 e1                                      mov r5, r2
00777b34  03 70 a0 e1                                      mov r7, r3
00777b38  e7 a7 f8 eb                                      bl #0x5a1adc
00777b3c  04 80 95 e5                                      ldr r8, [r5, #4]
00777b40  00 00 54 e3                                      cmp r4, #0
00777b44  08 80 80 e0                                      add r8, r0, r8
00777b48  3b 00 00 0a                                      beq #0x777c3c
00777b4c  00 00 56 e3                                      cmp r6, #0
00777b50  27 00 00 0a                                      beq #0x777bf4
00777b54  00 a0 a0 e3                                      mov sl, #0
00777b58  00 00 00 ea                                      b #0x777b60
00777b5c  18 70 87 e2                                      add r7, r7, #0x18
00777b60  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00777b64  08 b0 94 e5                                      ldr fp, [r4, #8]
00777b68  01 a0 8a e2                                      add sl, sl, #1
00777b6c  9b 03 0b e0                                      mul fp, fp, r3
00777b70  0b 00 d8 e7                                      ldrb r0, [r8, fp]
00777b74  d9 59 ee eb                                      bl #0x30e2e0
00777b78  0b b0 88 e0                                      add fp, r8, fp
00777b7c  00 90 a0 e1                                      mov sb, r0
00777b80  01 00 db e5                                      ldrb r0, [fp, #1]
00777b84  d5 59 ee eb                                      bl #0x30e2e0
00777b88  00 90 87 e5                                      str sb, [r7]
00777b8c  04 00 87 e5                                      str r0, [r7, #4]
00777b90  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00777b94  04 b0 94 e5                                      ldr fp, [r4, #4]
00777b98  9b 03 0b e0                                      mul fp, fp, r3
00777b9c  0b 00 d8 e7                                      ldrb r0, [r8, fp]
00777ba0  ce 59 ee eb                                      bl #0x30e2e0
00777ba4  0b b0 88 e0                                      add fp, r8, fp
00777ba8  00 90 a0 e1                                      mov sb, r0
00777bac  01 00 db e5                                      ldrb r0, [fp, #1]
00777bb0  ca 59 ee eb                                      bl #0x30e2e0
00777bb4  08 90 87 e5                                      str sb, [r7, #8]
00777bb8  0c 00 87 e5                                      str r0, [r7, #0xc]
00777bbc  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00777bc0  00 b0 94 e5                                      ldr fp, [r4]
00777bc4  0c 40 84 e2                                      add r4, r4, #0xc
00777bc8  9b 03 0b e0                                      mul fp, fp, r3
00777bcc  0b 00 d8 e7                                      ldrb r0, [r8, fp]
00777bd0  c2 59 ee eb                                      bl #0x30e2e0
00777bd4  0b b0 88 e0                                      add fp, r8, fp
00777bd8  00 90 a0 e1                                      mov sb, r0
00777bdc  01 00 db e5                                      ldrb r0, [fp, #1]
00777be0  be 59 ee eb                                      bl #0x30e2e0
00777be4  06 00 5a e1                                      cmp sl, r6
00777be8  14 00 87 e5                                      str r0, [r7, #0x14]
00777bec  10 90 87 e5                                      str sb, [r7, #0x10]
00777bf0  d9 ff ff 1a                                      bne #0x777b5c
00777bf4  00 00 58 e3                                      cmp r8, #0
00777bf8  0e 00 00 0a                                      beq #0x777c38
00777bfc  00 40 95 e5                                      ldr r4, [r5]
00777c00  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00777c04  1f 20 03 e2                                      and r2, r3, #0x1f
00777c08  01 00 52 e3                                      cmp r2, #1
00777c0c  04 00 00 9a                                      bls #0x777c24
00777c10  01 20 42 e2                                      sub r2, r2, #1
00777c14  1f 30 c3 e3                                      bic r3, r3, #0x1f
00777c18  03 30 82 e1                                      orr r3, r2, r3
00777c1c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00777c20  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00777c24  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00777c28  20 00 13 e3                                      tst r3, #0x20
00777c2c  29 00 00 1a                                      bne #0x777cd8
00777c30  00 30 a0 e3                                      mov r3, #0
00777c34  13 30 c4 e5                                      strb r3, [r4, #0x13]
00777c38  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00777c3c  00 00 56 e3                                      cmp r6, #0
00777c40  01 00 00 1a                                      bne #0x777c4c
00777c44  ea ff ff ea                                      b #0x777bf4
00777c48  18 70 87 e2                                      add r7, r7, #0x18
00777c4c  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00777c50  02 30 84 e2                                      add r3, r4, #2
00777c54  99 03 09 e0                                      mul sb, sb, r3
00777c58  09 00 d8 e7                                      ldrb r0, [r8, sb]
00777c5c  9f 59 ee eb                                      bl #0x30e2e0
00777c60  09 90 88 e0                                      add sb, r8, sb
00777c64  00 a0 a0 e1                                      mov sl, r0
00777c68  01 00 d9 e5                                      ldrb r0, [sb, #1]
00777c6c  9b 59 ee eb                                      bl #0x30e2e0
00777c70  00 a0 87 e5                                      str sl, [r7]
00777c74  04 00 87 e5                                      str r0, [r7, #4]
00777c78  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00777c7c  94 99 29 e0                                      mla sb, r4, sb, sb
00777c80  09 00 d8 e7                                      ldrb r0, [r8, sb]
00777c84  95 59 ee eb                                      bl #0x30e2e0
00777c88  09 90 88 e0                                      add sb, r8, sb
00777c8c  00 a0 a0 e1                                      mov sl, r0
00777c90  01 00 d9 e5                                      ldrb r0, [sb, #1]
00777c94  91 59 ee eb                                      bl #0x30e2e0
00777c98  08 a0 87 e5                                      str sl, [r7, #8]
00777c9c  0c 00 87 e5                                      str r0, [r7, #0xc]
00777ca0  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00777ca4  99 04 09 e0                                      mul sb, sb, r4
00777ca8  03 40 84 e2                                      add r4, r4, #3
00777cac  09 00 d8 e7                                      ldrb r0, [r8, sb]
00777cb0  8a 59 ee eb                                      bl #0x30e2e0
00777cb4  09 90 88 e0                                      add sb, r8, sb
00777cb8  00 a0 a0 e1                                      mov sl, r0
00777cbc  01 00 d9 e5                                      ldrb r0, [sb, #1]
00777cc0  86 59 ee eb                                      bl #0x30e2e0
00777cc4  04 00 56 e1                                      cmp r6, r4
00777cc8  14 00 87 e5                                      str r0, [r7, #0x14]
00777ccc  10 a0 87 e5                                      str sl, [r7, #0x10]
00777cd0  dc ff ff 8a                                      bhi #0x777c48
00777cd4  c6 ff ff ea                                      b #0x777bf4
00777cd8  00 30 94 e5                                      ldr r3, [r4]
00777cdc  04 00 a0 e1                                      mov r0, r4
00777ce0  0f e0 a0 e1                                      mov lr, pc
00777ce4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00777ce8  d0 ff ff ea                                      b #0x777c30

; FUNCTION 0x00777cec, declared_size=464, range_size=464, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf7collectIsEEvPKjjRKN6glitch5video13SVertexStreamEPNS_5pointE
; demangled: void gameswf::collect<short>(unsigned int const*, unsigned int, glitch::video::SVertexStream const&, gameswf::point*)
; decoder-mode: arm
00777cec  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00777cf0  00 40 a0 e1                                      mov r4, r0
00777cf4  01 60 a0 e1                                      mov r6, r1
00777cf8  00 00 92 e5                                      ldr r0, [r2]
00777cfc  01 10 a0 e3                                      mov r1, #1
00777d00  02 50 a0 e1                                      mov r5, r2
00777d04  03 70 a0 e1                                      mov r7, r3
00777d08  73 a7 f8 eb                                      bl #0x5a1adc
00777d0c  04 80 95 e5                                      ldr r8, [r5, #4]
00777d10  00 00 54 e3                                      cmp r4, #0
00777d14  08 80 80 e0                                      add r8, r0, r8
00777d18  3b 00 00 0a                                      beq #0x777e0c
00777d1c  00 00 56 e3                                      cmp r6, #0
00777d20  27 00 00 0a                                      beq #0x777dc4
00777d24  00 a0 a0 e3                                      mov sl, #0
00777d28  00 00 00 ea                                      b #0x777d30
00777d2c  18 70 87 e2                                      add r7, r7, #0x18
00777d30  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00777d34  08 b0 94 e5                                      ldr fp, [r4, #8]
00777d38  01 a0 8a e2                                      add sl, sl, #1
00777d3c  9b 03 0b e0                                      mul fp, fp, r3
00777d40  fb 00 98 e1                                      ldrsh r0, [r8, fp]
00777d44  06 5b ee eb                                      bl #0x30e964
00777d48  0b b0 88 e0                                      add fp, r8, fp
00777d4c  00 90 a0 e1                                      mov sb, r0
00777d50  f2 00 db e1                                      ldrsh r0, [fp, #2]
00777d54  02 5b ee eb                                      bl #0x30e964
00777d58  00 90 87 e5                                      str sb, [r7]
00777d5c  04 00 87 e5                                      str r0, [r7, #4]
00777d60  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00777d64  04 b0 94 e5                                      ldr fp, [r4, #4]
00777d68  9b 03 0b e0                                      mul fp, fp, r3
00777d6c  fb 00 98 e1                                      ldrsh r0, [r8, fp]
00777d70  fb 5a ee eb                                      bl #0x30e964
00777d74  0b b0 88 e0                                      add fp, r8, fp
00777d78  00 90 a0 e1                                      mov sb, r0
00777d7c  f2 00 db e1                                      ldrsh r0, [fp, #2]
00777d80  f7 5a ee eb                                      bl #0x30e964
00777d84  08 90 87 e5                                      str sb, [r7, #8]
00777d88  0c 00 87 e5                                      str r0, [r7, #0xc]
00777d8c  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00777d90  00 b0 94 e5                                      ldr fp, [r4]
00777d94  0c 40 84 e2                                      add r4, r4, #0xc
00777d98  9b 03 0b e0                                      mul fp, fp, r3
00777d9c  fb 00 98 e1                                      ldrsh r0, [r8, fp]
00777da0  ef 5a ee eb                                      bl #0x30e964
00777da4  0b b0 88 e0                                      add fp, r8, fp
00777da8  00 90 a0 e1                                      mov sb, r0
00777dac  f2 00 db e1                                      ldrsh r0, [fp, #2]
00777db0  eb 5a ee eb                                      bl #0x30e964
00777db4  06 00 5a e1                                      cmp sl, r6
00777db8  14 00 87 e5                                      str r0, [r7, #0x14]
00777dbc  10 90 87 e5                                      str sb, [r7, #0x10]
00777dc0  d9 ff ff 1a                                      bne #0x777d2c
00777dc4  00 00 58 e3                                      cmp r8, #0
00777dc8  0e 00 00 0a                                      beq #0x777e08
00777dcc  00 40 95 e5                                      ldr r4, [r5]
00777dd0  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00777dd4  1f 20 03 e2                                      and r2, r3, #0x1f
00777dd8  01 00 52 e3                                      cmp r2, #1
00777ddc  04 00 00 9a                                      bls #0x777df4
00777de0  01 20 42 e2                                      sub r2, r2, #1
00777de4  1f 30 c3 e3                                      bic r3, r3, #0x1f
00777de8  03 30 82 e1                                      orr r3, r2, r3
00777dec  13 30 c4 e5                                      strb r3, [r4, #0x13]
00777df0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00777df4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00777df8  20 00 13 e3                                      tst r3, #0x20
00777dfc  29 00 00 1a                                      bne #0x777ea8
00777e00  00 30 a0 e3                                      mov r3, #0
00777e04  13 30 c4 e5                                      strb r3, [r4, #0x13]
00777e08  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00777e0c  00 00 56 e3                                      cmp r6, #0
00777e10  01 00 00 1a                                      bne #0x777e1c
00777e14  ea ff ff ea                                      b #0x777dc4
00777e18  18 70 87 e2                                      add r7, r7, #0x18
00777e1c  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00777e20  02 30 84 e2                                      add r3, r4, #2
00777e24  99 03 09 e0                                      mul sb, sb, r3
00777e28  f9 00 98 e1                                      ldrsh r0, [r8, sb]
00777e2c  cc 5a ee eb                                      bl #0x30e964
00777e30  09 90 88 e0                                      add sb, r8, sb
00777e34  00 a0 a0 e1                                      mov sl, r0
00777e38  f2 00 d9 e1                                      ldrsh r0, [sb, #2]
00777e3c  c8 5a ee eb                                      bl #0x30e964
00777e40  00 a0 87 e5                                      str sl, [r7]
00777e44  04 00 87 e5                                      str r0, [r7, #4]
00777e48  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00777e4c  94 99 29 e0                                      mla sb, r4, sb, sb
00777e50  f9 00 98 e1                                      ldrsh r0, [r8, sb]
00777e54  c2 5a ee eb                                      bl #0x30e964
00777e58  09 90 88 e0                                      add sb, r8, sb
00777e5c  00 a0 a0 e1                                      mov sl, r0
00777e60  f2 00 d9 e1                                      ldrsh r0, [sb, #2]
00777e64  be 5a ee eb                                      bl #0x30e964
00777e68  08 a0 87 e5                                      str sl, [r7, #8]
00777e6c  0c 00 87 e5                                      str r0, [r7, #0xc]
00777e70  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00777e74  99 04 09 e0                                      mul sb, sb, r4
00777e78  03 40 84 e2                                      add r4, r4, #3
00777e7c  f9 00 98 e1                                      ldrsh r0, [r8, sb]
00777e80  b7 5a ee eb                                      bl #0x30e964
00777e84  09 90 88 e0                                      add sb, r8, sb
00777e88  00 a0 a0 e1                                      mov sl, r0
00777e8c  f2 00 d9 e1                                      ldrsh r0, [sb, #2]
00777e90  b3 5a ee eb                                      bl #0x30e964
00777e94  04 00 56 e1                                      cmp r6, r4
00777e98  14 00 87 e5                                      str r0, [r7, #0x14]
00777e9c  10 a0 87 e5                                      str sl, [r7, #0x10]
00777ea0  dc ff ff 8a                                      bhi #0x777e18
00777ea4  c6 ff ff ea                                      b #0x777dc4
00777ea8  00 30 94 e5                                      ldr r3, [r4]
00777eac  04 00 a0 e1                                      mov r0, r4
00777eb0  0f e0 a0 e1                                      mov lr, pc
00777eb4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00777eb8  d0 ff ff ea                                      b #0x777e00

; FUNCTION 0x00777ebc, declared_size=464, range_size=464, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf7collectItEEvPKjjRKN6glitch5video13SVertexStreamEPNS_5pointE
; demangled: void gameswf::collect<unsigned short>(unsigned int const*, unsigned int, glitch::video::SVertexStream const&, gameswf::point*)
; decoder-mode: arm
00777ebc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00777ec0  00 40 a0 e1                                      mov r4, r0
00777ec4  01 60 a0 e1                                      mov r6, r1
00777ec8  00 00 92 e5                                      ldr r0, [r2]
00777ecc  01 10 a0 e3                                      mov r1, #1
00777ed0  02 50 a0 e1                                      mov r5, r2
00777ed4  03 70 a0 e1                                      mov r7, r3
00777ed8  ff a6 f8 eb                                      bl #0x5a1adc
00777edc  04 80 95 e5                                      ldr r8, [r5, #4]
00777ee0  00 00 54 e3                                      cmp r4, #0
00777ee4  08 80 80 e0                                      add r8, r0, r8
00777ee8  3b 00 00 0a                                      beq #0x777fdc
00777eec  00 00 56 e3                                      cmp r6, #0
00777ef0  27 00 00 0a                                      beq #0x777f94
00777ef4  00 a0 a0 e3                                      mov sl, #0
00777ef8  00 00 00 ea                                      b #0x777f00
00777efc  18 70 87 e2                                      add r7, r7, #0x18
00777f00  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00777f04  08 b0 94 e5                                      ldr fp, [r4, #8]
00777f08  01 a0 8a e2                                      add sl, sl, #1
00777f0c  9b 03 0b e0                                      mul fp, fp, r3
00777f10  bb 00 98 e1                                      ldrh r0, [r8, fp]
00777f14  f1 58 ee eb                                      bl #0x30e2e0
00777f18  0b b0 88 e0                                      add fp, r8, fp
00777f1c  00 90 a0 e1                                      mov sb, r0
00777f20  b2 00 db e1                                      ldrh r0, [fp, #2]
00777f24  ed 58 ee eb                                      bl #0x30e2e0
00777f28  00 90 87 e5                                      str sb, [r7]
00777f2c  04 00 87 e5                                      str r0, [r7, #4]
00777f30  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00777f34  04 b0 94 e5                                      ldr fp, [r4, #4]
00777f38  9b 03 0b e0                                      mul fp, fp, r3
00777f3c  bb 00 98 e1                                      ldrh r0, [r8, fp]
00777f40  e6 58 ee eb                                      bl #0x30e2e0
00777f44  0b b0 88 e0                                      add fp, r8, fp
00777f48  00 90 a0 e1                                      mov sb, r0
00777f4c  b2 00 db e1                                      ldrh r0, [fp, #2]
00777f50  e2 58 ee eb                                      bl #0x30e2e0
00777f54  08 90 87 e5                                      str sb, [r7, #8]
00777f58  0c 00 87 e5                                      str r0, [r7, #0xc]
00777f5c  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00777f60  00 b0 94 e5                                      ldr fp, [r4]
00777f64  0c 40 84 e2                                      add r4, r4, #0xc
00777f68  9b 03 0b e0                                      mul fp, fp, r3
00777f6c  bb 00 98 e1                                      ldrh r0, [r8, fp]
00777f70  da 58 ee eb                                      bl #0x30e2e0
00777f74  0b b0 88 e0                                      add fp, r8, fp
00777f78  00 90 a0 e1                                      mov sb, r0
00777f7c  b2 00 db e1                                      ldrh r0, [fp, #2]
00777f80  d6 58 ee eb                                      bl #0x30e2e0
00777f84  06 00 5a e1                                      cmp sl, r6
00777f88  14 00 87 e5                                      str r0, [r7, #0x14]
00777f8c  10 90 87 e5                                      str sb, [r7, #0x10]
00777f90  d9 ff ff 1a                                      bne #0x777efc
00777f94  00 00 58 e3                                      cmp r8, #0
00777f98  0e 00 00 0a                                      beq #0x777fd8
00777f9c  00 40 95 e5                                      ldr r4, [r5]
00777fa0  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00777fa4  1f 20 03 e2                                      and r2, r3, #0x1f
00777fa8  01 00 52 e3                                      cmp r2, #1
00777fac  04 00 00 9a                                      bls #0x777fc4
00777fb0  01 20 42 e2                                      sub r2, r2, #1
00777fb4  1f 30 c3 e3                                      bic r3, r3, #0x1f
00777fb8  03 30 82 e1                                      orr r3, r2, r3
00777fbc  13 30 c4 e5                                      strb r3, [r4, #0x13]
00777fc0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00777fc4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00777fc8  20 00 13 e3                                      tst r3, #0x20
00777fcc  29 00 00 1a                                      bne #0x778078
00777fd0  00 30 a0 e3                                      mov r3, #0
00777fd4  13 30 c4 e5                                      strb r3, [r4, #0x13]
00777fd8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00777fdc  00 00 56 e3                                      cmp r6, #0
00777fe0  01 00 00 1a                                      bne #0x777fec
00777fe4  ea ff ff ea                                      b #0x777f94
00777fe8  18 70 87 e2                                      add r7, r7, #0x18
00777fec  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00777ff0  02 30 84 e2                                      add r3, r4, #2
00777ff4  99 03 09 e0                                      mul sb, sb, r3
00777ff8  b9 00 98 e1                                      ldrh r0, [r8, sb]
00777ffc  b7 58 ee eb                                      bl #0x30e2e0
00778000  09 90 88 e0                                      add sb, r8, sb
00778004  00 a0 a0 e1                                      mov sl, r0
00778008  b2 00 d9 e1                                      ldrh r0, [sb, #2]
0077800c  b3 58 ee eb                                      bl #0x30e2e0
00778010  00 a0 87 e5                                      str sl, [r7]
00778014  04 00 87 e5                                      str r0, [r7, #4]
00778018  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
0077801c  94 99 29 e0                                      mla sb, r4, sb, sb
00778020  b9 00 98 e1                                      ldrh r0, [r8, sb]
00778024  ad 58 ee eb                                      bl #0x30e2e0
00778028  09 90 88 e0                                      add sb, r8, sb
0077802c  00 a0 a0 e1                                      mov sl, r0
00778030  b2 00 d9 e1                                      ldrh r0, [sb, #2]
00778034  a9 58 ee eb                                      bl #0x30e2e0
00778038  08 a0 87 e5                                      str sl, [r7, #8]
0077803c  0c 00 87 e5                                      str r0, [r7, #0xc]
00778040  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00778044  99 04 09 e0                                      mul sb, sb, r4
00778048  03 40 84 e2                                      add r4, r4, #3
0077804c  b9 00 98 e1                                      ldrh r0, [r8, sb]
00778050  a2 58 ee eb                                      bl #0x30e2e0
00778054  09 90 88 e0                                      add sb, r8, sb
00778058  00 a0 a0 e1                                      mov sl, r0
0077805c  b2 00 d9 e1                                      ldrh r0, [sb, #2]
00778060  9e 58 ee eb                                      bl #0x30e2e0
00778064  04 00 56 e1                                      cmp r6, r4
00778068  14 00 87 e5                                      str r0, [r7, #0x14]
0077806c  10 a0 87 e5                                      str sl, [r7, #0x10]
00778070  dc ff ff 8a                                      bhi #0x777fe8
00778074  c6 ff ff ea                                      b #0x777f94
00778078  00 30 94 e5                                      ldr r3, [r4]
0077807c  04 00 a0 e1                                      mov r0, r4
00778080  0f e0 a0 e1                                      mov lr, pc
00778084  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00778088  d0 ff ff ea                                      b #0x777fd0

; FUNCTION 0x0077808c, declared_size=464, range_size=464, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf7collectIiEEvPKjjRKN6glitch5video13SVertexStreamEPNS_5pointE
; demangled: void gameswf::collect<int>(unsigned int const*, unsigned int, glitch::video::SVertexStream const&, gameswf::point*)
; decoder-mode: arm
0077808c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00778090  00 40 a0 e1                                      mov r4, r0
00778094  01 60 a0 e1                                      mov r6, r1
00778098  00 00 92 e5                                      ldr r0, [r2]
0077809c  01 10 a0 e3                                      mov r1, #1
007780a0  02 50 a0 e1                                      mov r5, r2
007780a4  03 70 a0 e1                                      mov r7, r3
007780a8  8b a6 f8 eb                                      bl #0x5a1adc
007780ac  04 80 95 e5                                      ldr r8, [r5, #4]
007780b0  00 00 54 e3                                      cmp r4, #0
007780b4  08 80 80 e0                                      add r8, r0, r8
007780b8  3b 00 00 0a                                      beq #0x7781ac
007780bc  00 00 56 e3                                      cmp r6, #0
007780c0  27 00 00 0a                                      beq #0x778164
007780c4  00 a0 a0 e3                                      mov sl, #0
007780c8  00 00 00 ea                                      b #0x7780d0
007780cc  18 70 87 e2                                      add r7, r7, #0x18
007780d0  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
007780d4  08 b0 94 e5                                      ldr fp, [r4, #8]
007780d8  01 a0 8a e2                                      add sl, sl, #1
007780dc  9b 03 0b e0                                      mul fp, fp, r3
007780e0  0b 00 98 e7                                      ldr r0, [r8, fp]
007780e4  1e 5a ee eb                                      bl #0x30e964
007780e8  0b b0 88 e0                                      add fp, r8, fp
007780ec  00 90 a0 e1                                      mov sb, r0
007780f0  04 00 9b e5                                      ldr r0, [fp, #4]
007780f4  1a 5a ee eb                                      bl #0x30e964
007780f8  00 90 87 e5                                      str sb, [r7]
007780fc  04 00 87 e5                                      str r0, [r7, #4]
00778100  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00778104  04 b0 94 e5                                      ldr fp, [r4, #4]
00778108  9b 03 0b e0                                      mul fp, fp, r3
0077810c  0b 00 98 e7                                      ldr r0, [r8, fp]
00778110  13 5a ee eb                                      bl #0x30e964
00778114  0b b0 88 e0                                      add fp, r8, fp
00778118  00 90 a0 e1                                      mov sb, r0
0077811c  04 00 9b e5                                      ldr r0, [fp, #4]
00778120  0f 5a ee eb                                      bl #0x30e964
00778124  08 90 87 e5                                      str sb, [r7, #8]
00778128  0c 00 87 e5                                      str r0, [r7, #0xc]
0077812c  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
00778130  00 b0 94 e5                                      ldr fp, [r4]
00778134  0c 40 84 e2                                      add r4, r4, #0xc
00778138  9b 03 0b e0                                      mul fp, fp, r3
0077813c  0b 00 98 e7                                      ldr r0, [r8, fp]
00778140  07 5a ee eb                                      bl #0x30e964
00778144  0b b0 88 e0                                      add fp, r8, fp
00778148  00 90 a0 e1                                      mov sb, r0
0077814c  04 00 9b e5                                      ldr r0, [fp, #4]
00778150  03 5a ee eb                                      bl #0x30e964
00778154  06 00 5a e1                                      cmp sl, r6
00778158  14 00 87 e5                                      str r0, [r7, #0x14]
0077815c  10 90 87 e5                                      str sb, [r7, #0x10]
00778160  d9 ff ff 1a                                      bne #0x7780cc
00778164  00 00 58 e3                                      cmp r8, #0
00778168  0e 00 00 0a                                      beq #0x7781a8
0077816c  00 40 95 e5                                      ldr r4, [r5]
00778170  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00778174  1f 20 03 e2                                      and r2, r3, #0x1f
00778178  01 00 52 e3                                      cmp r2, #1
0077817c  04 00 00 9a                                      bls #0x778194
00778180  01 20 42 e2                                      sub r2, r2, #1
00778184  1f 30 c3 e3                                      bic r3, r3, #0x1f
00778188  03 30 82 e1                                      orr r3, r2, r3
0077818c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00778190  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00778194  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00778198  20 00 13 e3                                      tst r3, #0x20
0077819c  29 00 00 1a                                      bne #0x778248
007781a0  00 30 a0 e3                                      mov r3, #0
007781a4  13 30 c4 e5                                      strb r3, [r4, #0x13]
007781a8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007781ac  00 00 56 e3                                      cmp r6, #0
007781b0  01 00 00 1a                                      bne #0x7781bc
007781b4  ea ff ff ea                                      b #0x778164
007781b8  18 70 87 e2                                      add r7, r7, #0x18
007781bc  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
007781c0  02 30 84 e2                                      add r3, r4, #2
007781c4  99 03 09 e0                                      mul sb, sb, r3
007781c8  09 00 98 e7                                      ldr r0, [r8, sb]
007781cc  e4 59 ee eb                                      bl #0x30e964
007781d0  09 90 88 e0                                      add sb, r8, sb
007781d4  00 a0 a0 e1                                      mov sl, r0
007781d8  04 00 99 e5                                      ldr r0, [sb, #4]
007781dc  e0 59 ee eb                                      bl #0x30e964
007781e0  00 a0 87 e5                                      str sl, [r7]
007781e4  04 00 87 e5                                      str r0, [r7, #4]
007781e8  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
007781ec  94 99 29 e0                                      mla sb, r4, sb, sb
007781f0  09 00 98 e7                                      ldr r0, [r8, sb]
007781f4  da 59 ee eb                                      bl #0x30e964
007781f8  09 90 88 e0                                      add sb, r8, sb
007781fc  00 a0 a0 e1                                      mov sl, r0
00778200  04 00 99 e5                                      ldr r0, [sb, #4]
00778204  d6 59 ee eb                                      bl #0x30e964
00778208  08 a0 87 e5                                      str sl, [r7, #8]
0077820c  0c 00 87 e5                                      str r0, [r7, #0xc]
00778210  be 90 d5 e1                                      ldrh sb, [r5, #0xe]
00778214  99 04 09 e0                                      mul sb, sb, r4
00778218  03 40 84 e2                                      add r4, r4, #3
0077821c  09 00 98 e7                                      ldr r0, [r8, sb]
00778220  cf 59 ee eb                                      bl #0x30e964
00778224  09 90 88 e0                                      add sb, r8, sb
00778228  00 a0 a0 e1                                      mov sl, r0
0077822c  04 00 99 e5                                      ldr r0, [sb, #4]
00778230  cb 59 ee eb                                      bl #0x30e964
00778234  04 00 56 e1                                      cmp r6, r4
00778238  14 00 87 e5                                      str r0, [r7, #0x14]
0077823c  10 a0 87 e5                                      str sl, [r7, #0x10]
00778240  dc ff ff 8a                                      bhi #0x7781b8
00778244  c6 ff ff ea                                      b #0x778164
00778248  00 30 94 e5                                      ldr r3, [r4]
0077824c  04 00 a0 e1                                      mov r0, r4
00778250  0f e0 a0 e1                                      mov lr, pc
00778254  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00778258  d0 ff ff ea                                      b #0x7781a0

; FUNCTION 0x0077932c, declared_size=48, range_size=48, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8write_leIsEEvPNS_7tu_fileET_
; demangled: void gameswf::write_le<short>(gameswf::tu_file*, short)
; decoder-mode: arm
0077932c  04 e0 2d e5                                      str lr, [sp, #-4]!
00779330  0c d0 4d e2                                      sub sp, sp, #0xc
00779334  08 20 8d e2                                      add r2, sp, #8
00779338  b2 10 62 e1                                      strh r1, [r2, #-2]!
0077933c  00 30 a0 e1                                      mov r3, r0
00779340  02 10 a0 e3                                      mov r1, #2
00779344  02 00 a0 e1                                      mov r0, r2
00779348  00 20 93 e5                                      ldr r2, [r3]
0077934c  0f e0 a0 e1                                      mov lr, pc
00779350  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00779354  0c d0 8d e2                                      add sp, sp, #0xc
00779358  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0077b59c, declared_size=48, range_size=48, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8write_leIfEEvPNS_7tu_fileET_
; demangled: void gameswf::write_le<float>(gameswf::tu_file*, float)
; decoder-mode: arm
0077b59c  04 e0 2d e5                                      str lr, [sp, #-4]!
0077b5a0  0c d0 4d e2                                      sub sp, sp, #0xc
0077b5a4  08 20 8d e2                                      add r2, sp, #8
0077b5a8  04 10 22 e5                                      str r1, [r2, #-4]!
0077b5ac  00 30 a0 e1                                      mov r3, r0
0077b5b0  04 10 a0 e3                                      mov r1, #4
0077b5b4  02 00 a0 e1                                      mov r0, r2
0077b5b8  00 20 93 e5                                      ldr r2, [r3]
0077b5bc  0f e0 a0 e1                                      mov lr, pc
0077b5c0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0077b5c4  0c d0 8d e2                                      add sp, sp, #0xc
0077b5c8  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007a7fb8, declared_size=44, range_size=44, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_14player_contextEEEvPKT_
; demangled: void gameswf::destruct<gameswf::player_context>(gameswf::player_context const*)
; decoder-mode: arm
007a7fb8  10 40 2d e9                                      push {r4, lr}
007a7fbc  00 40 50 e2                                      subs r4, r0, #0
007a7fc0  06 00 00 0a                                      beq #0x7a7fe0
007a7fc4  00 30 94 e5                                      ldr r3, [r4]
007a7fc8  0f e0 a0 e1                                      mov lr, pc
007a7fcc  00 f0 93 e5                                      ldr pc, [r3]
007a7fd0  04 00 a0 e1                                      mov r0, r4
007a7fd4  00 10 a0 e3                                      mov r1, #0
007a7fd8  10 40 bd e8                                      pop {r4, lr}
007a7fdc  d5 aa fe ea                                      b #0x752b38
007a7fe0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a7ff0, declared_size=44, range_size=44, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_14render_handlerEEEvPKT_
; demangled: void gameswf::destruct<gameswf::render_handler>(gameswf::render_handler const*)
; decoder-mode: arm
007a7ff0  10 40 2d e9                                      push {r4, lr}
007a7ff4  00 40 50 e2                                      subs r4, r0, #0
007a7ff8  06 00 00 0a                                      beq #0x7a8018
007a7ffc  00 30 94 e5                                      ldr r3, [r4]
007a8000  0f e0 a0 e1                                      mov lr, pc
007a8004  00 f0 93 e5                                      ldr pc, [r3]
007a8008  04 00 a0 e1                                      mov r0, r4
007a800c  00 10 a0 e3                                      mov r1, #0
007a8010  10 40 bd e8                                      pop {r4, lr}
007a8014  c7 aa fe ea                                      b #0x752b38
007a8018  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a9988, declared_size=112, range_size=112, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_5arrayIN8RenderFX11SearchIndex5EntryEEEEEvPKT_
; demangled: void gameswf::destruct<gameswf::array<RenderFX::SearchIndex::Entry> >(gameswf::array<RenderFX::SearchIndex::Entry> const*)
; decoder-mode: arm
007a9988  70 40 2d e9                                      push {r4, r5, r6, lr}
007a998c  00 60 50 e2                                      subs r6, r0, #0
007a9990  0b 00 00 0a                                      beq #0x7a99c4
007a9994  04 40 96 e5                                      ldr r4, [r6, #4]
007a9998  00 00 54 e3                                      cmp r4, #0
007a999c  09 00 00 da                                      ble #0x7a99c8
007a99a0  00 40 a0 e3                                      mov r4, #0
007a99a4  06 00 a0 e1                                      mov r0, r6
007a99a8  04 10 a0 e1                                      mov r1, r4
007a99ac  04 40 86 e5                                      str r4, [r6, #4]
007a99b0  21 fa ff eb                                      bl #0x7a823c
007a99b4  06 00 a0 e1                                      mov r0, r6
007a99b8  04 10 a0 e1                                      mov r1, r4
007a99bc  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a99c0  5c a4 fe ea                                      b #0x752b38
007a99c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a99c8  f4 ff ff aa                                      bge #0x7a99a0
007a99cc  41 5f a0 e3                                      mov r5, #0x104
007a99d0  95 04 05 e0                                      mul r5, r5, r4
007a99d4  00 00 96 e5                                      ldr r0, [r6]
007a99d8  00 10 a0 e3                                      mov r1, #0
007a99dc  41 2f a0 e3                                      mov r2, #0x104
007a99e0  05 00 80 e0                                      add r0, r0, r5
007a99e4  9d 92 ed eb                                      bl #0x30e460
007a99e8  01 40 94 e2                                      adds r4, r4, #1
007a99ec  41 5f 85 e2                                      add r5, r5, #0x104
007a99f0  f7 ff ff 1a                                      bne #0x7a99d4
007a99f4  e9 ff ff ea                                      b #0x7a99a0

; FUNCTION 0x007b21a8, declared_size=144, range_size=144, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf9destructaINS_5arrayIPNS_14grid_entry_boxIfbEEEEEEvPKT_j
; demangled: void gameswf::destructa<gameswf::array<gameswf::grid_entry_box<float, bool>*> >(gameswf::array<gameswf::grid_entry_box<float, bool>*> const*, unsigned int)
; decoder-mode: arm
007b21a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b21ac  00 70 50 e2                                      subs r7, r0, #0
007b21b0  1f 00 00 0a                                      beq #0x7b2234
007b21b4  01 60 51 e2                                      subs r6, r1, #1
007b21b8  19 00 00 4a                                      bmi #0x7b2224
007b21bc  1f 12 41 e2                                      sub r1, r1, #0xf0000001
007b21c0  01 42 87 e0                                      add r4, r7, r1, lsl #4
007b21c4  04 40 84 e2                                      add r4, r4, #4
007b21c8  00 50 a0 e3                                      mov r5, #0
007b21cc  04 00 00 ea                                      b #0x7b21e4
007b21d0  10 50 04 e4                                      str r5, [r4], #-0x10
007b21d4  05 10 a0 e1                                      mov r1, r5
007b21d8  6b ff ff eb                                      bl #0x7b1f8c
007b21dc  01 60 56 e2                                      subs r6, r6, #1
007b21e0  0f 00 00 4a                                      bmi #0x7b2224
007b21e4  00 30 94 e5                                      ldr r3, [r4]
007b21e8  04 00 44 e2                                      sub r0, r4, #4
007b21ec  00 00 53 e3                                      cmp r3, #0
007b21f0  f6 ff ff ca                                      bgt #0x7b21d0
007b21f4  f5 ff ff aa                                      bge #0x7b21d0
007b21f8  03 21 a0 e1                                      lsl r2, r3, #2
007b21fc  04 10 14 e5                                      ldr r1, [r4, #-4]
007b2200  01 30 93 e2                                      adds r3, r3, #1
007b2204  02 50 81 e7                                      str r5, [r1, r2]
007b2208  04 20 82 e2                                      add r2, r2, #4
007b220c  fa ff ff 1a                                      bne #0x7b21fc
007b2210  10 50 04 e4                                      str r5, [r4], #-0x10
007b2214  05 10 a0 e1                                      mov r1, r5
007b2218  5b ff ff eb                                      bl #0x7b1f8c
007b221c  01 60 56 e2                                      subs r6, r6, #1
007b2220  ef ff ff 5a                                      bpl #0x7b21e4
007b2224  07 00 a0 e1                                      mov r0, r7
007b2228  00 10 a0 e3                                      mov r1, #0
007b222c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007b2230  40 82 fe ea                                      b #0x752b38
007b2234  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007b2298, declared_size=368, range_size=368, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf30grid_index_pick_good_grid_sizeIfEEvPiS1_RKNS_9index_boxIT_EEif.clone.3
; demangled: void gameswf::grid_index_pick_good_grid_size<float>(int*, int*, gameswf::index_box<float> const&, int, float) [clone .clone.3]
; decoder-mode: arm
007b2298  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007b229c  00 60 53 e2                                      subs r6, r3, #0
007b22a0  01 30 a0 e3                                      mov r3, #1
007b22a4  00 30 80 e5                                      str r3, [r0]
007b22a8  00 50 a0 e1                                      mov r5, r0
007b22ac  01 40 a0 e1                                      mov r4, r1
007b22b0  00 30 81 e5                                      str r3, [r1]
007b22b4  02 70 a0 e1                                      mov r7, r2
007b22b8  48 00 00 da                                      ble #0x7b23e0
007b22bc  00 10 92 e5                                      ldr r1, [r2]
007b22c0  08 00 92 e5                                      ldr r0, [r2, #8]
007b22c4  38 70 ed eb                                      bl #0x30e3ac
007b22c8  04 10 97 e5                                      ldr r1, [r7, #4]
007b22cc  00 80 a0 e1                                      mov r8, r0
007b22d0  0c 00 97 e5                                      ldr r0, [r7, #0xc]
007b22d4  34 70 ed eb                                      bl #0x30e3ac
007b22d8  00 70 a0 e1                                      mov r7, r0
007b22dc  07 10 a0 e1                                      mov r1, r7
007b22e0  08 00 a0 e1                                      mov r0, r8
007b22e4  a0 72 ed eb                                      bl #0x30ed6c
007b22e8  00 10 a0 e3                                      mov r1, #0
007b22ec  00 a0 a0 e1                                      mov sl, r0
007b22f0  00 70 ed eb                                      bl #0x30e2f8
007b22f4  00 00 50 e3                                      cmp r0, #0
007b22f8  1f 00 00 0a                                      beq #0x7b237c
007b22fc  06 00 a0 e1                                      mov r0, r6
007b2300  97 71 ed eb                                      bl #0x30e964
007b2304  86 6f ed eb                                      bl #0x30e124
007b2308  08 10 a0 e1                                      mov r1, r8
007b230c  00 60 a0 e1                                      mov r6, r0
007b2310  08 00 a0 e1                                      mov r0, r8
007b2314  94 72 ed eb                                      bl #0x30ed6c
007b2318  0a 10 a0 e1                                      mov r1, sl
007b231c  5c 72 ed eb                                      bl #0x30ec94
007b2320  f4 1d 0f e3                                      movw r1, #0xfdf4
007b2324  34 1f 43 e3                                      movt r1, #0x3f34
007b2328  8f 72 ed eb                                      bl #0x30ed6c
007b232c  00 10 a0 e1                                      mov r1, r0
007b2330  06 00 a0 e1                                      mov r0, r6
007b2334  8c 72 ed eb                                      bl #0x30ed6c
007b2338  63 70 ed eb                                      bl #0x30e4cc
007b233c  07 10 a0 e1                                      mov r1, r7
007b2340  00 00 85 e5                                      str r0, [r5]
007b2344  07 00 a0 e1                                      mov r0, r7
007b2348  87 72 ed eb                                      bl #0x30ed6c
007b234c  0a 10 a0 e1                                      mov r1, sl
007b2350  4f 72 ed eb                                      bl #0x30ec94
007b2354  f4 1d 0f e3                                      movw r1, #0xfdf4
007b2358  34 1f 43 e3                                      movt r1, #0x3f34
007b235c  82 72 ed eb                                      bl #0x30ed6c
007b2360  00 10 a0 e1                                      mov r1, r0
007b2364  06 00 a0 e1                                      mov r0, r6
007b2368  7f 72 ed eb                                      bl #0x30ed6c
007b236c  56 70 ed eb                                      bl #0x30e4cc
007b2370  00 00 84 e5                                      str r0, [r4]
007b2374  00 00 95 e5                                      ldr r0, [r5]
007b2378  0b 00 00 ea                                      b #0x7b23ac
007b237c  08 00 a0 e1                                      mov r0, r8
007b2380  00 10 a0 e3                                      mov r1, #0
007b2384  db 6f ed eb                                      bl #0x30e2f8
007b2388  00 00 50 e3                                      cmp r0, #0
007b238c  14 00 00 0a                                      beq #0x7b23e4
007b2390  06 00 a0 e1                                      mov r0, r6
007b2394  72 71 ed eb                                      bl #0x30e964
007b2398  36 1c 0e e3                                      movw r1, #0xec36
007b239c  ff 1e 43 e3                                      movt r1, #0x3eff
007b23a0  71 72 ed eb                                      bl #0x30ed6c
007b23a4  48 70 ed eb                                      bl #0x30e4cc
007b23a8  00 00 85 e5                                      str r0, [r5]
007b23ac  ff 00 50 e3                                      cmp r0, #0xff
007b23b0  01 0c a0 c3                                      movgt r0, #0x100
007b23b4  01 00 00 ca                                      bgt #0x7b23c0
007b23b8  01 00 50 e3                                      cmp r0, #1
007b23bc  01 00 a0 b3                                      movlt r0, #1
007b23c0  00 00 85 e5                                      str r0, [r5]
007b23c4  00 30 94 e5                                      ldr r3, [r4]
007b23c8  ff 00 53 e3                                      cmp r3, #0xff
007b23cc  01 3c a0 c3                                      movgt r3, #0x100
007b23d0  01 00 00 ca                                      bgt #0x7b23dc
007b23d4  01 00 53 e3                                      cmp r3, #1
007b23d8  01 30 a0 b3                                      movlt r3, #1
007b23dc  00 30 84 e5                                      str r3, [r4]
007b23e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007b23e4  06 00 a0 e1                                      mov r0, r6
007b23e8  5d 71 ed eb                                      bl #0x30e964
007b23ec  36 1c 0e e3                                      movw r1, #0xec36
007b23f0  ff 1e 43 e3                                      movt r1, #0x3eff
007b23f4  5c 72 ed eb                                      bl #0x30ed6c
007b23f8  33 70 ed eb                                      bl #0x30e4cc
007b23fc  00 00 84 e5                                      str r0, [r4]
007b2400  00 00 95 e5                                      ldr r0, [r5]
007b2404  e8 ff ff ea                                      b #0x7b23ac

; FUNCTION 0x007badb4, declared_size=84, range_size=84, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf4swapINS_8as_valueEEEvPT_S3_
; demangled: void gameswf::swap<gameswf::as_value>(gameswf::as_value*, gameswf::as_value*)
; decoder-mode: arm
007badb4  70 40 2d e9                                      push {r4, r5, r6, lr}
007badb8  10 d0 4d e2                                      sub sp, sp, #0x10
007badbc  00 60 a0 e1                                      mov r6, r0
007badc0  04 40 8d e2                                      add r4, sp, #4
007badc4  00 30 a0 e3                                      mov r3, #0
007badc8  01 50 a0 e1                                      mov r5, r1
007badcc  04 00 a0 e1                                      mov r0, r4
007badd0  06 10 a0 e1                                      mov r1, r6
007badd4  05 30 cd e5                                      strb r3, [sp, #5]
007badd8  04 30 cd e5                                      strb r3, [sp, #4]
007baddc  56 72 ff eb                                      bl #0x79773c
007bade0  06 00 a0 e1                                      mov r0, r6
007bade4  05 10 a0 e1                                      mov r1, r5
007bade8  53 72 ff eb                                      bl #0x79773c
007badec  05 00 a0 e1                                      mov r0, r5
007badf0  04 10 a0 e1                                      mov r1, r4
007badf4  50 72 ff eb                                      bl #0x79773c
007badf8  04 00 a0 e1                                      mov r0, r4
007badfc  c8 70 ff eb                                      bl #0x797124
007bae00  10 d0 8d e2                                      add sp, sp, #0x10
007bae04  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007d0444, declared_size=44, range_size=44, mode=arm
; class-group: void gameswf
; alias: _ZN7gameswf8destructINS_11image_alphaEEEvPKT_
; demangled: void gameswf::destruct<gameswf::image_alpha>(gameswf::image_alpha const*)
; decoder-mode: arm
007d0444  10 40 2d e9                                      push {r4, lr}
007d0448  00 40 50 e2                                      subs r4, r0, #0
007d044c  06 00 00 0a                                      beq #0x7d046c
007d0450  00 30 94 e5                                      ldr r3, [r4]
007d0454  0f e0 a0 e1                                      mov lr, pc
007d0458  00 f0 93 e5                                      ldr pc, [r3]
007d045c  04 00 a0 e1                                      mov r0, r4
007d0460  00 10 a0 e3                                      mov r1, #0
007d0464  10 40 bd e8                                      pop {r4, lr}
007d0468  b2 09 fe ea                                      b #0x752b38
007d046c  10 80 bd e8                                      pop {r4, pc}
