; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ce39c, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::font
; alias: _ZNK7gameswf4font2isEi
; demangled: gameswf::font::is(int) const
; decoder-mode: arm
007ce39c  13 00 51 e3                                      cmp r1, #0x13
007ce3a0  01 00 a0 03                                      moveq r0, #1
007ce3a4  1e ff 2f 01                                      bxeq lr
007ce3a8  0a 00 51 e3                                      cmp r1, #0xa
007ce3ac  00 00 a0 13                                      movne r0, #0
007ce3b0  01 00 a0 03                                      moveq r0, #1
007ce3b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007ce3b8, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::font
; alias: _ZNK7gameswf4font18get_glyph_by_indexEi
; demangled: gameswf::font::get_glyph_by_index(int) const
; decoder-mode: arm
007ce3b8  24 30 90 e5                                      ldr r3, [r0, #0x24]
007ce3bc  03 00 51 e1                                      cmp r1, r3
007ce3c0  20 30 90 b5                                      ldrlt r3, [r0, #0x20]
007ce3c4  00 00 a0 a3                                      movge r0, #0
007ce3c8  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
007ce3cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007ce3d0, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4font18output_cached_dataEPNS_7tu_fileERKNS_13cache_optionsE
; demangled: gameswf::font::output_cached_data(gameswf::tu_file*, gameswf::cache_options const&)
; decoder-mode: arm
007ce3d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007ce3d4, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4font17input_cached_dataEPNS_7tu_fileE
; demangled: gameswf::font::input_cached_data(gameswf::tu_file*)
; decoder-mode: arm
007ce3d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007ce4a8, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::font
; alias: _ZNK7gameswf4font22get_kerning_adjustmentEii
; demangled: gameswf::font::get_kerning_adjustment(int, int) const
; decoder-mode: arm
007ce4a8  10 40 2d e9                                      push {r4, lr}
007ce4ac  08 d0 4d e2                                      sub sp, sp, #8
007ce4b0  00 40 a0 e1                                      mov r4, r0
007ce4b4  b4 10 cd e1                                      strh r1, [sp, #4]
007ce4b8  70 00 80 e2                                      add r0, r0, #0x70
007ce4bc  04 10 8d e2                                      add r1, sp, #4
007ce4c0  b6 20 cd e1                                      strh r2, [sp, #6]
007ce4c4  c3 ff ff eb                                      bl #0x7ce3d8
007ce4c8  00 00 50 e3                                      cmp r0, #0
007ce4cc  70 30 94 a5                                      ldrge r3, [r4, #0x70]
007ce4d0  00 00 a0 b3                                      movlt r0, #0
007ce4d4  00 02 83 a0                                      addge r0, r3, r0, lsl #4
007ce4d8  14 00 90 a5                                      ldrge r0, [r0, #0x14]
007ce4dc  08 d0 8d e2                                      add sp, sp, #8
007ce4e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007ce628, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4font9copy_fromEPS0_
; demangled: gameswf::font::copy_from(gameswf::font*)
; decoder-mode: arm
007ce628  70 40 2d e9                                      push {r4, r5, r6, lr}
007ce62c  00 40 a0 e1                                      mov r4, r0
007ce630  01 50 a0 e1                                      mov r5, r1
007ce634  30 00 80 e2                                      add r0, r0, #0x30
007ce638  30 10 81 e2                                      add r1, r1, #0x30
007ce63c  43 12 fe eb                                      bl #0x752f50
007ce640  49 30 d5 e5                                      ldrb r3, [r5, #0x49]
007ce644  49 30 c4 e5                                      strb r3, [r4, #0x49]
007ce648  4a 30 d5 e5                                      ldrb r3, [r5, #0x4a]
007ce64c  4a 30 c4 e5                                      strb r3, [r4, #0x4a]
007ce650  4b 30 d5 e5                                      ldrb r3, [r5, #0x4b]
007ce654  4b 30 c4 e5                                      strb r3, [r4, #0x4b]
007ce658  4c 30 d5 e5                                      ldrb r3, [r5, #0x4c]
007ce65c  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
007ce660  4d 30 d5 e5                                      ldrb r3, [r5, #0x4d]
007ce664  4d 30 c4 e5                                      strb r3, [r4, #0x4d]
007ce668  4e 30 d5 e5                                      ldrb r3, [r5, #0x4e]
007ce66c  4e 30 c4 e5                                      strb r3, [r4, #0x4e]
007ce670  54 30 95 e5                                      ldr r3, [r5, #0x54]
007ce674  54 30 84 e5                                      str r3, [r4, #0x54]
007ce678  58 30 95 e5                                      ldr r3, [r5, #0x58]
007ce67c  58 30 84 e5                                      str r3, [r4, #0x58]
007ce680  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
007ce684  5c 30 84 e5                                      str r3, [r4, #0x5c]
007ce688  74 30 d5 e5                                      ldrb r3, [r5, #0x74]
007ce68c  74 30 c4 e5                                      strb r3, [r4, #0x74]
007ce690  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007cf0ac, declared_size=380, range_size=380, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4font20read_font_alignzonesEPNS_6streamEi
; demangled: gameswf::font::read_font_alignzones(gameswf::stream*, int)
; decoder-mode: arm
007cf0ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007cf0b0  01 70 a0 e1                                      mov r7, r1
007cf0b4  00 80 a0 e1                                      mov r8, r0
007cf0b8  0c d0 4d e2                                      sub sp, sp, #0xc
007cf0bc  02 10 a0 e3                                      mov r1, #2
007cf0c0  07 00 a0 e1                                      mov r0, r7
007cf0c4  36 d2 fe eb                                      bl #0x7839a4
007cf0c8  06 10 a0 e3                                      mov r1, #6
007cf0cc  74 00 c8 e5                                      strb r0, [r8, #0x74]
007cf0d0  07 00 a0 e1                                      mov r0, r7
007cf0d4  32 d2 fe eb                                      bl #0x7839a4
007cf0d8  78 00 88 e2                                      add r0, r8, #0x78
007cf0dc  24 10 98 e5                                      ldr r1, [r8, #0x24]
007cf0e0  ad ff ff eb                                      bl #0x7cef9c
007cf0e4  24 30 98 e5                                      ldr r3, [r8, #0x24]
007cf0e8  00 00 53 e3                                      cmp r3, #0
007cf0ec  04 30 8d e5                                      str r3, [sp, #4]
007cf0f0  46 00 00 da                                      ble #0x7cf210
007cf0f4  00 50 a0 e3                                      mov r5, #0
007cf0f8  00 a0 a0 e3                                      mov sl, #0
007cf0fc  05 b0 a0 e1                                      mov fp, r5
007cf100  07 00 a0 e1                                      mov r0, r7
007cf104  87 d2 fe eb                                      bl #0x783b28
007cf108  78 90 98 e5                                      ldr sb, [r8, #0x78]
007cf10c  00 60 50 e2                                      subs r6, r0, #0
007cf110  05 90 89 e0                                      add sb, sb, r5
007cf114  04 40 99 e5                                      ldr r4, [sb, #4]
007cf118  02 00 00 0a                                      beq #0x7cf128
007cf11c  08 30 99 e5                                      ldr r3, [sb, #8]
007cf120  03 00 56 e1                                      cmp r6, r3
007cf124  3b 00 00 ca                                      bgt #0x7cf218
007cf128  04 00 56 e1                                      cmp r6, r4
007cf12c  08 00 00 da                                      ble #0x7cf154
007cf130  84 31 a0 e1                                      lsl r3, r4, #3
007cf134  00 20 99 e5                                      ldr r2, [sb]
007cf138  01 40 84 e2                                      add r4, r4, #1
007cf13c  04 00 56 e1                                      cmp r6, r4
007cf140  03 10 82 e0                                      add r1, r2, r3
007cf144  03 a0 82 e7                                      str sl, [r2, r3]
007cf148  04 a0 81 e5                                      str sl, [r1, #4]
007cf14c  08 30 83 e2                                      add r3, r3, #8
007cf150  f7 ff ff ca                                      bgt #0x7cf134
007cf154  00 00 56 e3                                      cmp r6, #0
007cf158  04 60 89 e5                                      str r6, [sb, #4]
007cf15c  11 00 00 0a                                      beq #0x7cf1a8
007cf160  00 40 a0 e3                                      mov r4, #0
007cf164  78 30 98 e5                                      ldr r3, [r8, #0x78]
007cf168  07 00 a0 e1                                      mov r0, r7
007cf16c  84 91 a0 e1                                      lsl sb, r4, #3
007cf170  05 30 93 e7                                      ldr r3, [r3, r5]
007cf174  00 30 8d e5                                      str r3, [sp]
007cf178  43 d2 fe eb                                      bl #0x783a8c
007cf17c  00 30 9d e5                                      ldr r3, [sp]
007cf180  84 01 83 e7                                      str r0, [r3, r4, lsl #3]
007cf184  78 30 98 e5                                      ldr r3, [r8, #0x78]
007cf188  07 00 a0 e1                                      mov r0, r7
007cf18c  01 40 84 e2                                      add r4, r4, #1
007cf190  05 30 93 e7                                      ldr r3, [r3, r5]
007cf194  09 90 83 e0                                      add sb, r3, sb
007cf198  3b d2 fe eb                                      bl #0x783a8c
007cf19c  04 00 56 e1                                      cmp r6, r4
007cf1a0  04 00 89 e5                                      str r0, [sb, #4]
007cf1a4  ee ff ff ca                                      bgt #0x7cf164
007cf1a8  01 10 a0 e3                                      mov r1, #1
007cf1ac  07 00 a0 e1                                      mov r0, r7
007cf1b0  78 40 98 e5                                      ldr r4, [r8, #0x78]
007cf1b4  fa d1 fe eb                                      bl #0x7839a4
007cf1b8  05 40 84 e0                                      add r4, r4, r5
007cf1bc  01 00 50 e3                                      cmp r0, #1
007cf1c0  00 00 a0 13                                      movne r0, #0
007cf1c4  01 00 a0 03                                      moveq r0, #1
007cf1c8  10 00 c4 e5                                      strb r0, [r4, #0x10]
007cf1cc  01 10 a0 e3                                      mov r1, #1
007cf1d0  07 00 a0 e1                                      mov r0, r7
007cf1d4  78 40 98 e5                                      ldr r4, [r8, #0x78]
007cf1d8  f1 d1 fe eb                                      bl #0x7839a4
007cf1dc  05 40 84 e0                                      add r4, r4, r5
007cf1e0  01 00 50 e3                                      cmp r0, #1
007cf1e4  00 00 a0 13                                      movne r0, #0
007cf1e8  01 00 a0 03                                      moveq r0, #1
007cf1ec  11 00 c4 e5                                      strb r0, [r4, #0x11]
007cf1f0  06 10 a0 e3                                      mov r1, #6
007cf1f4  07 00 a0 e1                                      mov r0, r7
007cf1f8  e9 d1 fe eb                                      bl #0x7839a4
007cf1fc  04 30 9d e5                                      ldr r3, [sp, #4]
007cf200  01 b0 8b e2                                      add fp, fp, #1
007cf204  14 50 85 e2                                      add r5, r5, #0x14
007cf208  03 00 5b e1                                      cmp fp, r3
007cf20c  bb ff ff 1a                                      bne #0x7cf100
007cf210  0c d0 8d e2                                      add sp, sp, #0xc
007cf214  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007cf218  09 00 a0 e1                                      mov r0, sb
007cf21c  c6 10 86 e0                                      add r1, r6, r6, asr #1
007cf220  bc fe ff eb                                      bl #0x7ced18
007cf224  bf ff ff ea                                      b #0x7cf128

; FUNCTION 0x007cf228, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4fontD2Ev
; demangled: gameswf::font::~font()
; decoder-mode: arm
007cf228  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
007cf22c  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
007cf230  70 40 2d e9                                      push {r4, r5, r6, lr}
007cf234  03 30 8f e0                                      add r3, pc, r3
007cf238  02 20 93 e7                                      ldr r2, [r3, r2]
007cf23c  00 50 a0 e1                                      mov r5, r0
007cf240  00 40 a0 e1                                      mov r4, r0
007cf244  08 20 82 e2                                      add r2, r2, #8
007cf248  20 20 85 e4                                      str r2, [r5], #0x20
007cf24c  00 10 a0 e3                                      mov r1, #0
007cf250  05 00 a0 e1                                      mov r0, r5
007cf254  78 60 84 e2                                      add r6, r4, #0x78
007cf258  0e ff ff eb                                      bl #0x7cee98
007cf25c  00 10 a0 e3                                      mov r1, #0
007cf260  06 00 a0 e1                                      mov r0, r6
007cf264  4c ff ff eb                                      bl #0x7cef9c
007cf268  06 00 a0 e1                                      mov r0, r6
007cf26c  00 10 a0 e3                                      mov r1, #0
007cf270  c7 fe ff eb                                      bl #0x7ced94
007cf274  70 00 84 e2                                      add r0, r4, #0x70
007cf278  ba fc ff eb                                      bl #0x7ce568
007cf27c  64 30 94 e5                                      ldr r3, [r4, #0x64]
007cf280  60 00 84 e2                                      add r0, r4, #0x60
007cf284  00 00 53 e3                                      cmp r3, #0
007cf288  16 00 00 da                                      ble #0x7cf2e8
007cf28c  00 30 a0 e3                                      mov r3, #0
007cf290  03 10 a0 e1                                      mov r1, r3
007cf294  64 30 84 e5                                      str r3, [r4, #0x64]
007cf298  d4 aa fe eb                                      bl #0x779df0
007cf29c  50 00 84 e2                                      add r0, r4, #0x50
007cf2a0  8f fc ff eb                                      bl #0x7ce4e4
007cf2a4  d0 33 d4 e1                                      ldrsb r3, [r4, #0x30]
007cf2a8  01 00 73 e3                                      cmn r3, #1
007cf2ac  09 00 00 0a                                      beq #0x7cf2d8
007cf2b0  05 00 a0 e1                                      mov r0, r5
007cf2b4  00 10 a0 e3                                      mov r1, #0
007cf2b8  f6 fe ff eb                                      bl #0x7cee98
007cf2bc  05 00 a0 e1                                      mov r0, r5
007cf2c0  00 10 a0 e3                                      mov r1, #0
007cf2c4  d4 fe ff eb                                      bl #0x7cee1c
007cf2c8  04 00 a0 e1                                      mov r0, r4
007cf2cc  e9 3a fe eb                                      bl #0x75de78
007cf2d0  04 00 a0 e1                                      mov r0, r4
007cf2d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007cf2d8  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007cf2dc  38 10 94 e5                                      ldr r1, [r4, #0x38]
007cf2e0  14 0e fe eb                                      bl #0x752b38
007cf2e4  f1 ff ff ea                                      b #0x7cf2b0
007cf2e8  e7 ff ff aa                                      bge #0x7cf28c
007cf2ec  00 c0 a0 e3                                      mov ip, #0
007cf2f0  03 21 a0 e1                                      lsl r2, r3, #2
007cf2f4  00 10 90 e5                                      ldr r1, [r0]
007cf2f8  01 30 93 e2                                      adds r3, r3, #1
007cf2fc  02 c0 81 e7                                      str ip, [r1, r2]
007cf300  04 20 82 e2                                      add r2, r2, #4
007cf304  fa ff ff 1a                                      bne #0x7cf2f4
007cf308  df ff ff ea                                      b #0x7cf28c
; mapping-symbol data/literal pool
007cf30c  5c 58 1c 00 9c 0f 00 00                          .byte 0x5c, 0x58, 0x1c, 0x00, 0x9c, 0x0f, 0x00, 0x00

; FUNCTION 0x007cf314, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4fontD1Ev
; demangled: gameswf::font::~font()
; decoder-mode: arm
007cf314  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
007cf318  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
007cf31c  70 40 2d e9                                      push {r4, r5, r6, lr}
007cf320  03 30 8f e0                                      add r3, pc, r3
007cf324  02 20 93 e7                                      ldr r2, [r3, r2]
007cf328  00 50 a0 e1                                      mov r5, r0
007cf32c  00 40 a0 e1                                      mov r4, r0
007cf330  08 20 82 e2                                      add r2, r2, #8
007cf334  20 20 85 e4                                      str r2, [r5], #0x20
007cf338  00 10 a0 e3                                      mov r1, #0
007cf33c  05 00 a0 e1                                      mov r0, r5
007cf340  78 60 84 e2                                      add r6, r4, #0x78
007cf344  d3 fe ff eb                                      bl #0x7cee98
007cf348  00 10 a0 e3                                      mov r1, #0
007cf34c  06 00 a0 e1                                      mov r0, r6
007cf350  11 ff ff eb                                      bl #0x7cef9c
007cf354  06 00 a0 e1                                      mov r0, r6
007cf358  00 10 a0 e3                                      mov r1, #0
007cf35c  8c fe ff eb                                      bl #0x7ced94
007cf360  70 00 84 e2                                      add r0, r4, #0x70
007cf364  7f fc ff eb                                      bl #0x7ce568
007cf368  64 30 94 e5                                      ldr r3, [r4, #0x64]
007cf36c  60 00 84 e2                                      add r0, r4, #0x60
007cf370  00 00 53 e3                                      cmp r3, #0
007cf374  16 00 00 da                                      ble #0x7cf3d4
007cf378  00 30 a0 e3                                      mov r3, #0
007cf37c  03 10 a0 e1                                      mov r1, r3
007cf380  64 30 84 e5                                      str r3, [r4, #0x64]
007cf384  99 aa fe eb                                      bl #0x779df0
007cf388  50 00 84 e2                                      add r0, r4, #0x50
007cf38c  54 fc ff eb                                      bl #0x7ce4e4
007cf390  d0 33 d4 e1                                      ldrsb r3, [r4, #0x30]
007cf394  01 00 73 e3                                      cmn r3, #1
007cf398  09 00 00 0a                                      beq #0x7cf3c4
007cf39c  05 00 a0 e1                                      mov r0, r5
007cf3a0  00 10 a0 e3                                      mov r1, #0
007cf3a4  bb fe ff eb                                      bl #0x7cee98
007cf3a8  05 00 a0 e1                                      mov r0, r5
007cf3ac  00 10 a0 e3                                      mov r1, #0
007cf3b0  99 fe ff eb                                      bl #0x7cee1c
007cf3b4  04 00 a0 e1                                      mov r0, r4
007cf3b8  ae 3a fe eb                                      bl #0x75de78
007cf3bc  04 00 a0 e1                                      mov r0, r4
007cf3c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007cf3c4  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007cf3c8  38 10 94 e5                                      ldr r1, [r4, #0x38]
007cf3cc  d9 0d fe eb                                      bl #0x752b38
007cf3d0  f1 ff ff ea                                      b #0x7cf39c
007cf3d4  e7 ff ff aa                                      bge #0x7cf378
007cf3d8  00 c0 a0 e3                                      mov ip, #0
007cf3dc  03 21 a0 e1                                      lsl r2, r3, #2
007cf3e0  00 10 90 e5                                      ldr r1, [r0]
007cf3e4  01 30 93 e2                                      adds r3, r3, #1
007cf3e8  02 c0 81 e7                                      str ip, [r1, r2]
007cf3ec  04 20 82 e2                                      add r2, r2, #4
007cf3f0  fa ff ff 1a                                      bne #0x7cf3e0
007cf3f4  df ff ff ea                                      b #0x7cf378
; mapping-symbol data/literal pool
007cf3f8  70 57 1c 00 9c 0f 00 00                          .byte 0x70, 0x57, 0x1c, 0x00, 0x9c, 0x0f, 0x00, 0x00

; FUNCTION 0x007cf400, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4fontD0Ev
; demangled: gameswf::font::~font()
; decoder-mode: arm
007cf400  10 40 2d e9                                      push {r4, lr}
007cf404  00 40 a0 e1                                      mov r4, r0
007cf408  c1 ff ff eb                                      bl #0x7cf314
007cf40c  04 00 a0 e1                                      mov r0, r4
007cf410  a6 fb ec eb                                      bl #0x30e2b0
007cf414  04 00 a0 e1                                      mov r0, r4
007cf418  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007cf41c, declared_size=260, range_size=260, mode=arm
; class-group: gameswf::font
; alias: _ZNK7gameswf4font16get_units_per_emEv
; demangled: gameswf::font::get_units_per_em() const
; decoder-mode: arm
007cf41c  10 40 2d e9                                      push {r4, lr}
007cf420  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
007cf424  00 40 a0 e1                                      mov r4, r0
007cf428  00 00 53 e3                                      cmp r3, #0
007cf42c  03 00 00 0a                                      beq #0x7cf440
007cf430  18 00 90 e5                                      ldr r0, [r0, #0x18]
007cf434  04 20 d0 e5                                      ldrb r2, [r0, #4]
007cf438  00 00 52 e3                                      cmp r2, #0
007cf43c  21 00 00 0a                                      beq #0x7cf4c8
007cf440  ac 20 93 e5                                      ldr r2, [r3, #0xac]
007cf444  10 00 92 e5                                      ldr r0, [r2, #0x10]
007cf448  00 00 50 e3                                      cmp r0, #0
007cf44c  09 00 00 0a                                      beq #0x7cf478
007cf450  30 10 84 e2                                      add r1, r4, #0x30
007cf454  4d 20 d4 e5                                      ldrb r2, [r4, #0x4d]
007cf458  4c 30 d4 e5                                      ldrb r3, [r4, #0x4c]
007cf45c  f9 da ff eb                                      bl #0x7c6048
007cf460  00 00 50 e3                                      cmp r0, #0
007cf464  02 00 00 0a                                      beq #0x7cf474
007cf468  11 03 a0 e3                                      mov r0, #0x44000000
007cf46c  02 05 80 e2                                      add r0, r0, #0x800000
007cf470  10 80 bd e8                                      pop {r4, pc}
007cf474  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007cf478  00 00 53 e3                                      cmp r3, #0
007cf47c  03 00 00 0a                                      beq #0x7cf490
007cf480  18 00 94 e5                                      ldr r0, [r4, #0x18]
007cf484  04 20 d0 e5                                      ldrb r2, [r0, #4]
007cf488  00 00 52 e3                                      cmp r2, #0
007cf48c  17 00 00 0a                                      beq #0x7cf4f0
007cf490  ac 30 93 e5                                      ldr r3, [r3, #0xac]
007cf494  0c 00 93 e5                                      ldr r0, [r3, #0xc]
007cf498  00 00 50 e3                                      cmp r0, #0
007cf49c  1d 00 00 0a                                      beq #0x7cf518
007cf4a0  4c 30 d4 e5                                      ldrb r3, [r4, #0x4c]
007cf4a4  30 10 84 e2                                      add r1, r4, #0x30
007cf4a8  4d 20 d4 e5                                      ldrb r2, [r4, #0x4d]
007cf4ac  22 07 00 eb                                      bl #0x7d113c
007cf4b0  00 00 50 e3                                      cmp r0, #0
007cf4b4  17 00 00 0a                                      beq #0x7cf518
007cf4b8  24 30 90 e5                                      ldr r3, [r0, #0x24]
007cf4bc  b4 04 d3 e1                                      ldrh r0, [r3, #0x44]
007cf4c0  86 fb ec eb                                      bl #0x30e2e0
007cf4c4  10 80 bd e8                                      pop {r4, pc}
007cf4c8  00 10 90 e5                                      ldr r1, [r0]
007cf4cc  01 10 41 e2                                      sub r1, r1, #1
007cf4d0  00 00 51 e3                                      cmp r1, #0
007cf4d4  00 10 80 e5                                      str r1, [r0]
007cf4d8  00 00 00 1a                                      bne #0x7cf4e0
007cf4dc  95 0d fe eb                                      bl #0x752b38
007cf4e0  00 30 a0 e3                                      mov r3, #0
007cf4e4  18 30 84 e5                                      str r3, [r4, #0x18]
007cf4e8  1c 30 84 e5                                      str r3, [r4, #0x1c]
007cf4ec  d3 ff ff ea                                      b #0x7cf440
007cf4f0  00 10 90 e5                                      ldr r1, [r0]
007cf4f4  01 10 41 e2                                      sub r1, r1, #1
007cf4f8  00 00 51 e3                                      cmp r1, #0
007cf4fc  00 10 80 e5                                      str r1, [r0]
007cf500  00 00 00 1a                                      bne #0x7cf508
007cf504  8b 0d fe eb                                      bl #0x752b38
007cf508  00 30 a0 e3                                      mov r3, #0
007cf50c  18 30 84 e5                                      str r3, [r4, #0x18]
007cf510  1c 30 84 e5                                      str r3, [r4, #0x1c]
007cf514  dd ff ff ea                                      b #0x7cf490
007cf518  fe 05 a0 e3                                      mov r0, #0x3f800000
007cf51c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007cf520, declared_size=276, range_size=276, mode=arm
; class-group: gameswf::font
; alias: _ZNK7gameswf4font10get_heightEv
; demangled: gameswf::font::get_height() const
; decoder-mode: arm
007cf520  10 40 2d e9                                      push {r4, lr}
007cf524  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
007cf528  00 40 a0 e1                                      mov r4, r0
007cf52c  00 00 53 e3                                      cmp r3, #0
007cf530  03 00 00 0a                                      beq #0x7cf544
007cf534  18 00 90 e5                                      ldr r0, [r0, #0x18]
007cf538  04 20 d0 e5                                      ldrb r2, [r0, #4]
007cf53c  00 00 52 e3                                      cmp r2, #0
007cf540  25 00 00 0a                                      beq #0x7cf5dc
007cf544  ac 20 93 e5                                      ldr r2, [r3, #0xac]
007cf548  10 00 92 e5                                      ldr r0, [r2, #0x10]
007cf54c  00 00 50 e3                                      cmp r0, #0
007cf550  0b 00 00 0a                                      beq #0x7cf584
007cf554  4c 30 d4 e5                                      ldrb r3, [r4, #0x4c]
007cf558  30 10 84 e2                                      add r1, r4, #0x30
007cf55c  4d 20 d4 e5                                      ldrb r2, [r4, #0x4d]
007cf560  b8 da ff eb                                      bl #0x7c6048
007cf564  00 00 50 e3                                      cmp r0, #0
007cf568  1c 30 94 05                                      ldreq r3, [r4, #0x1c]
007cf56c  04 00 00 0a                                      beq #0x7cf584
007cf570  41 14 a0 e3                                      mov r1, #0x41000000
007cf574  28 00 90 e5                                      ldr r0, [r0, #0x28]
007cf578  0a 16 81 e2                                      add r1, r1, #0xa00000
007cf57c  fa fd ec eb                                      bl #0x30ed6c
007cf580  10 80 bd e8                                      pop {r4, pc}
007cf584  00 00 53 e3                                      cmp r3, #0
007cf588  03 00 00 0a                                      beq #0x7cf59c
007cf58c  18 00 94 e5                                      ldr r0, [r4, #0x18]
007cf590  04 20 d0 e5                                      ldrb r2, [r0, #4]
007cf594  00 00 52 e3                                      cmp r2, #0
007cf598  19 00 00 0a                                      beq #0x7cf604
007cf59c  ac 30 93 e5                                      ldr r3, [r3, #0xac]
007cf5a0  0c 00 93 e5                                      ldr r0, [r3, #0xc]
007cf5a4  00 00 50 e3                                      cmp r0, #0
007cf5a8  1f 00 00 0a                                      beq #0x7cf62c
007cf5ac  4c 30 d4 e5                                      ldrb r3, [r4, #0x4c]
007cf5b0  30 10 84 e2                                      add r1, r4, #0x30
007cf5b4  4d 20 d4 e5                                      ldrb r2, [r4, #0x4d]
007cf5b8  df 06 00 eb                                      bl #0x7d113c
007cf5bc  00 00 50 e3                                      cmp r0, #0
007cf5c0  19 00 00 0a                                      beq #0x7cf62c
007cf5c4  24 30 90 e5                                      ldr r3, [r0, #0x24]
007cf5c8  f8 24 d3 e1                                      ldrsh r2, [r3, #0x48]
007cf5cc  f6 04 d3 e1                                      ldrsh r0, [r3, #0x46]
007cf5d0  00 00 62 e0                                      rsb r0, r2, r0
007cf5d4  e2 fc ec eb                                      bl #0x30e964
007cf5d8  10 80 bd e8                                      pop {r4, pc}
007cf5dc  00 10 90 e5                                      ldr r1, [r0]
007cf5e0  01 10 41 e2                                      sub r1, r1, #1
007cf5e4  00 00 51 e3                                      cmp r1, #0
007cf5e8  00 10 80 e5                                      str r1, [r0]
007cf5ec  00 00 00 1a                                      bne #0x7cf5f4
007cf5f0  50 0d fe eb                                      bl #0x752b38
007cf5f4  00 30 a0 e3                                      mov r3, #0
007cf5f8  18 30 84 e5                                      str r3, [r4, #0x18]
007cf5fc  1c 30 84 e5                                      str r3, [r4, #0x1c]
007cf600  cf ff ff ea                                      b #0x7cf544
007cf604  00 10 90 e5                                      ldr r1, [r0]
007cf608  01 10 41 e2                                      sub r1, r1, #1
007cf60c  00 00 51 e3                                      cmp r1, #0
007cf610  00 10 80 e5                                      str r1, [r0]
007cf614  00 00 00 1a                                      bne #0x7cf61c
007cf618  46 0d fe eb                                      bl #0x752b38
007cf61c  00 30 a0 e3                                      mov r3, #0
007cf620  18 30 84 e5                                      str r3, [r4, #0x18]
007cf624  1c 30 84 e5                                      str r3, [r4, #0x1c]
007cf628  db ff ff ea                                      b #0x7cf59c
007cf62c  00 00 a0 e3                                      mov r0, #0
007cf630  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007cf7ac, declared_size=180, range_size=180, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4font15read_code_tableEPNS_6streamE
; demangled: gameswf::font::read_code_table(gameswf::stream*)
; decoder-mode: arm
007cf7ac  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007cf7b0  4e 40 d0 e5                                      ldrb r4, [r0, #0x4e]
007cf7b4  0c d0 4d e2                                      sub sp, sp, #0xc
007cf7b8  00 50 a0 e1                                      mov r5, r0
007cf7bc  00 00 54 e3                                      cmp r4, #0
007cf7c0  01 60 a0 e1                                      mov r6, r1
007cf7c4  13 00 00 1a                                      bne #0x7cf818
007cf7c8  24 30 90 e5                                      ldr r3, [r0, #0x24]
007cf7cc  00 00 53 e3                                      cmp r3, #0
007cf7d0  0e 00 00 da                                      ble #0x7cf810
007cf7d4  50 a0 80 e2                                      add sl, r0, #0x50
007cf7d8  04 80 8d e2                                      add r8, sp, #4
007cf7dc  02 70 8d e2                                      add r7, sp, #2
007cf7e0  06 00 a0 e1                                      mov r0, r6
007cf7e4  cf d0 fe eb                                      bl #0x783b28
007cf7e8  08 10 a0 e1                                      mov r1, r8
007cf7ec  b4 00 cd e1                                      strh r0, [sp, #4]
007cf7f0  07 20 a0 e1                                      mov r2, r7
007cf7f4  0a 00 a0 e1                                      mov r0, sl
007cf7f8  b2 40 cd e1                                      strh r4, [sp, #2]
007cf7fc  09 fc ff eb                                      bl #0x7ce828
007cf800  24 30 95 e5                                      ldr r3, [r5, #0x24]
007cf804  01 40 84 e2                                      add r4, r4, #1
007cf808  03 00 54 e1                                      cmp r4, r3
007cf80c  f3 ff ff ba                                      blt #0x7cf7e0
007cf810  0c d0 8d e2                                      add sp, sp, #0xc
007cf814  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007cf818  24 30 90 e5                                      ldr r3, [r0, #0x24]
007cf81c  00 00 53 e3                                      cmp r3, #0
007cf820  fa ff ff da                                      ble #0x7cf810
007cf824  50 80 80 e2                                      add r8, r0, #0x50
007cf828  00 40 a0 e3                                      mov r4, #0
007cf82c  06 70 8d e2                                      add r7, sp, #6
007cf830  06 00 a0 e1                                      mov r0, r6
007cf834  f6 d0 fe eb                                      bl #0x783c14
007cf838  07 10 a0 e1                                      mov r1, r7
007cf83c  b6 00 cd e1                                      strh r0, [sp, #6]
007cf840  08 00 a0 e1                                      mov r0, r8
007cf844  7a ff ff eb                                      bl #0x7cf634
007cf848  b0 40 c0 e1                                      strh r4, [r0]
007cf84c  24 30 95 e5                                      ldr r3, [r5, #0x24]
007cf850  01 40 84 e2                                      add r4, r4, #1
007cf854  03 00 54 e1                                      cmp r4, r3
007cf858  f4 ff ff ba                                      blt #0x7cf830
007cf85c  eb ff ff ea                                      b #0x7cf810

; FUNCTION 0x007cf860, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4font14read_font_infoEPNS_6streamEi
; demangled: gameswf::font::read_font_info(gameswf::stream*, int)
; decoder-mode: arm
007cf860  70 40 2d e9                                      push {r4, r5, r6, lr}
007cf864  00 40 a0 e1                                      mov r4, r0
007cf868  01 50 a0 e1                                      mov r5, r1
007cf86c  01 00 a0 e1                                      mov r0, r1
007cf870  30 10 84 e2                                      add r1, r4, #0x30
007cf874  02 60 a0 e1                                      mov r6, r2
007cf878  b4 d1 fe eb                                      bl #0x783f50
007cf87c  05 00 a0 e1                                      mov r0, r5
007cf880  a8 d0 fe eb                                      bl #0x783b28
007cf884  3e 00 56 e3                                      cmp r6, #0x3e
007cf888  01 30 00 e2                                      and r3, r0, #1
007cf88c  d0 62 e0 e7                                      ubfx r6, r0, #5, #1
007cf890  50 c2 e0 e7                                      ubfx ip, r0, #4, #1
007cf894  d0 11 e0 e7                                      ubfx r1, r0, #3, #1
007cf898  50 21 e0 e7                                      ubfx r2, r0, #2, #1
007cf89c  d0 00 e0 e7                                      ubfx r0, r0, #1, #1
007cf8a0  49 60 c4 e5                                      strb r6, [r4, #0x49]
007cf8a4  4a c0 c4 e5                                      strb ip, [r4, #0x4a]
007cf8a8  4b 10 c4 e5                                      strb r1, [r4, #0x4b]
007cf8ac  4c 20 c4 e5                                      strb r2, [r4, #0x4c]
007cf8b0  4d 00 c4 e5                                      strb r0, [r4, #0x4d]
007cf8b4  4e 30 c4 e5                                      strb r3, [r4, #0x4e]
007cf8b8  03 00 00 0a                                      beq #0x7cf8cc
007cf8bc  04 00 a0 e1                                      mov r0, r4
007cf8c0  05 10 a0 e1                                      mov r1, r5
007cf8c4  70 40 bd e8                                      pop {r4, r5, r6, lr}
007cf8c8  b7 ff ff ea                                      b #0x7cf7ac
007cf8cc  05 00 a0 e1                                      mov r0, r5
007cf8d0  94 d0 fe eb                                      bl #0x783b28
007cf8d4  f8 ff ff ea                                      b #0x7cf8bc

; FUNCTION 0x007cf8d8, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4fontC1EPNS_6playerE
; demangled: gameswf::font::font(gameswf::player*)
; decoder-mode: arm
007cf8d8  70 40 2d e9                                      push {r4, r5, r6, lr}
007cf8dc  98 50 9f e5                                      ldr r5, [pc, #0x98]
007cf8e0  00 40 a0 e1                                      mov r4, r0
007cf8e4  56 3c fe eb                                      bl #0x75ea44
007cf8e8  90 30 9f e5                                      ldr r3, [pc, #0x90]
007cf8ec  05 50 8f e0                                      add r5, pc, r5
007cf8f0  00 60 a0 e3                                      mov r6, #0
007cf8f4  03 30 95 e7                                      ldr r3, [r5, r3]
007cf8f8  20 60 84 e5                                      str r6, [r4, #0x20]
007cf8fc  24 60 84 e5                                      str r6, [r4, #0x24]
007cf900  08 30 83 e2                                      add r3, r3, #8
007cf904  00 30 84 e5                                      str r3, [r4]
007cf908  28 60 84 e5                                      str r6, [r4, #0x28]
007cf90c  2c 60 c4 e5                                      strb r6, [r4, #0x2c]
007cf910  30 00 84 e2                                      add r0, r4, #0x30
007cf914  86 fd ff eb                                      bl #0x7cef34
007cf918  00 30 a0 e3                                      mov r3, #0
007cf91c  01 20 a0 e3                                      mov r2, #1
007cf920  4b 20 c4 e5                                      strb r2, [r4, #0x4b]
007cf924  5c 30 84 e5                                      str r3, [r4, #0x5c]
007cf928  84 60 c4 e5                                      strb r6, [r4, #0x84]
007cf92c  44 60 84 e5                                      str r6, [r4, #0x44]
007cf930  49 60 c4 e5                                      strb r6, [r4, #0x49]
007cf934  4a 60 c4 e5                                      strb r6, [r4, #0x4a]
007cf938  4c 60 c4 e5                                      strb r6, [r4, #0x4c]
007cf93c  4d 60 c4 e5                                      strb r6, [r4, #0x4d]
007cf940  4e 60 c4 e5                                      strb r6, [r4, #0x4e]
007cf944  50 60 84 e5                                      str r6, [r4, #0x50]
007cf948  54 30 84 e5                                      str r3, [r4, #0x54]
007cf94c  58 30 84 e5                                      str r3, [r4, #0x58]
007cf950  60 60 84 e5                                      str r6, [r4, #0x60]
007cf954  64 60 84 e5                                      str r6, [r4, #0x64]
007cf958  68 60 84 e5                                      str r6, [r4, #0x68]
007cf95c  6c 60 c4 e5                                      strb r6, [r4, #0x6c]
007cf960  70 60 84 e5                                      str r6, [r4, #0x70]
007cf964  74 60 c4 e5                                      strb r6, [r4, #0x74]
007cf968  78 60 84 e5                                      str r6, [r4, #0x78]
007cf96c  7c 60 84 e5                                      str r6, [r4, #0x7c]
007cf970  80 60 84 e5                                      str r6, [r4, #0x80]
007cf974  04 00 a0 e1                                      mov r0, r4
007cf978  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007cf97c  a4 51 1c 00 9c 0f 00 00                          .byte 0xa4, 0x51, 0x1c, 0x00, 0x9c, 0x0f, 0x00, 0x00

; FUNCTION 0x007cf984, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4fontC2EPNS_6playerE
; demangled: gameswf::font::font(gameswf::player*)
; decoder-mode: arm
007cf984  70 40 2d e9                                      push {r4, r5, r6, lr}
007cf988  98 50 9f e5                                      ldr r5, [pc, #0x98]
007cf98c  00 40 a0 e1                                      mov r4, r0
007cf990  2b 3c fe eb                                      bl #0x75ea44
007cf994  90 30 9f e5                                      ldr r3, [pc, #0x90]
007cf998  05 50 8f e0                                      add r5, pc, r5
007cf99c  00 60 a0 e3                                      mov r6, #0
007cf9a0  03 30 95 e7                                      ldr r3, [r5, r3]
007cf9a4  20 60 84 e5                                      str r6, [r4, #0x20]
007cf9a8  24 60 84 e5                                      str r6, [r4, #0x24]
007cf9ac  08 30 83 e2                                      add r3, r3, #8
007cf9b0  00 30 84 e5                                      str r3, [r4]
007cf9b4  28 60 84 e5                                      str r6, [r4, #0x28]
007cf9b8  2c 60 c4 e5                                      strb r6, [r4, #0x2c]
007cf9bc  30 00 84 e2                                      add r0, r4, #0x30
007cf9c0  5b fd ff eb                                      bl #0x7cef34
007cf9c4  00 30 a0 e3                                      mov r3, #0
007cf9c8  01 20 a0 e3                                      mov r2, #1
007cf9cc  4b 20 c4 e5                                      strb r2, [r4, #0x4b]
007cf9d0  5c 30 84 e5                                      str r3, [r4, #0x5c]
007cf9d4  84 60 c4 e5                                      strb r6, [r4, #0x84]
007cf9d8  44 60 84 e5                                      str r6, [r4, #0x44]
007cf9dc  49 60 c4 e5                                      strb r6, [r4, #0x49]
007cf9e0  4a 60 c4 e5                                      strb r6, [r4, #0x4a]
007cf9e4  4c 60 c4 e5                                      strb r6, [r4, #0x4c]
007cf9e8  4d 60 c4 e5                                      strb r6, [r4, #0x4d]
007cf9ec  4e 60 c4 e5                                      strb r6, [r4, #0x4e]
007cf9f0  50 60 84 e5                                      str r6, [r4, #0x50]
007cf9f4  54 30 84 e5                                      str r3, [r4, #0x54]
007cf9f8  58 30 84 e5                                      str r3, [r4, #0x58]
007cf9fc  60 60 84 e5                                      str r6, [r4, #0x60]
007cfa00  64 60 84 e5                                      str r6, [r4, #0x64]
007cfa04  68 60 84 e5                                      str r6, [r4, #0x68]
007cfa08  6c 60 c4 e5                                      strb r6, [r4, #0x6c]
007cfa0c  70 60 84 e5                                      str r6, [r4, #0x70]
007cfa10  74 60 c4 e5                                      strb r6, [r4, #0x74]
007cfa14  78 60 84 e5                                      str r6, [r4, #0x78]
007cfa18  7c 60 84 e5                                      str r6, [r4, #0x7c]
007cfa1c  80 60 84 e5                                      str r6, [r4, #0x80]
007cfa20  04 00 a0 e1                                      mov r0, r4
007cfa24  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007cfa28  f8 50 1c 00 9c 0f 00 00                          .byte 0xf8, 0x50, 0x1c, 0x00, 0x9c, 0x0f, 0x00, 0x00

; FUNCTION 0x007cfa30, declared_size=1932, range_size=1932, mode=arm
; class-group: gameswf::font
; alias: _ZN7gameswf4font4readEPNS_6streamEiPNS_20movie_definition_subE
; demangled: gameswf::font::read(gameswf::stream*, int, gameswf::movie_definition_sub*)
; decoder-mode: arm
007cfa30  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007cfa34  0a 00 52 e3                                      cmp r2, #0xa
007cfa38  00 70 a0 e1                                      mov r7, r0
007cfa3c  4c d0 4d e2                                      sub sp, sp, #0x4c
007cfa40  03 50 a0 e1                                      mov r5, r3
007cfa44  01 40 a0 e1                                      mov r4, r1
007cfa48  44 30 87 e5                                      str r3, [r7, #0x44]
007cfa4c  cf 00 00 0a                                      beq #0x7cfd90
007cfa50  30 00 52 e3                                      cmp r2, #0x30
007cfa54  4b 00 52 13                                      cmpne r2, #0x4b
007cfa58  01 00 00 0a                                      beq #0x7cfa64
007cfa5c  4c d0 8d e2                                      add sp, sp, #0x4c
007cfa60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007cfa64  01 10 a0 e3                                      mov r1, #1
007cfa68  04 00 a0 e1                                      mov r0, r4
007cfa6c  cc cf fe eb                                      bl #0x7839a4
007cfa70  01 10 a0 e3                                      mov r1, #1
007cfa74  14 00 8d e5                                      str r0, [sp, #0x14]
007cfa78  04 00 a0 e1                                      mov r0, r4
007cfa7c  c8 cf fe eb                                      bl #0x7839a4
007cfa80  00 00 50 e2                                      subs r0, r0, #0
007cfa84  01 00 a0 13                                      movne r0, #1
007cfa88  4a 00 c7 e5                                      strb r0, [r7, #0x4a]
007cfa8c  01 10 a0 e3                                      mov r1, #1
007cfa90  04 00 a0 e1                                      mov r0, r4
007cfa94  c2 cf fe eb                                      bl #0x7839a4
007cfa98  00 00 50 e2                                      subs r0, r0, #0
007cfa9c  01 00 a0 13                                      movne r0, #1
007cfaa0  49 00 c7 e5                                      strb r0, [r7, #0x49]
007cfaa4  01 10 a0 e3                                      mov r1, #1
007cfaa8  04 00 a0 e1                                      mov r0, r4
007cfaac  bc cf fe eb                                      bl #0x7839a4
007cfab0  00 00 50 e2                                      subs r0, r0, #0
007cfab4  01 00 a0 13                                      movne r0, #1
007cfab8  4b 00 c7 e5                                      strb r0, [r7, #0x4b]
007cfabc  01 10 a0 e3                                      mov r1, #1
007cfac0  04 00 a0 e1                                      mov r0, r4
007cfac4  b6 cf fe eb                                      bl #0x7839a4
007cfac8  01 10 a0 e3                                      mov r1, #1
007cfacc  00 60 a0 e1                                      mov r6, r0
007cfad0  04 00 a0 e1                                      mov r0, r4
007cfad4  b2 cf fe eb                                      bl #0x7839a4
007cfad8  00 00 50 e2                                      subs r0, r0, #0
007cfadc  01 00 a0 13                                      movne r0, #1
007cfae0  4e 00 c7 e5                                      strb r0, [r7, #0x4e]
007cfae4  01 10 a0 e3                                      mov r1, #1
007cfae8  04 00 a0 e1                                      mov r0, r4
007cfaec  ac cf fe eb                                      bl #0x7839a4
007cfaf0  00 00 50 e2                                      subs r0, r0, #0
007cfaf4  01 00 a0 13                                      movne r0, #1
007cfaf8  01 10 a0 e3                                      mov r1, #1
007cfafc  4c 00 c7 e5                                      strb r0, [r7, #0x4c]
007cfb00  04 00 a0 e1                                      mov r0, r4
007cfb04  a6 cf fe eb                                      bl #0x7839a4
007cfb08  00 00 50 e2                                      subs r0, r0, #0
007cfb0c  01 00 a0 13                                      movne r0, #1
007cfb10  4d 00 c7 e5                                      strb r0, [r7, #0x4d]
007cfb14  04 00 a0 e1                                      mov r0, r4
007cfb18  02 d0 fe eb                                      bl #0x783b28
007cfb1c  30 10 87 e2                                      add r1, r7, #0x30
007cfb20  04 00 a0 e1                                      mov r0, r4
007cfb24  09 d1 fe eb                                      bl #0x783f50
007cfb28  04 00 a0 e1                                      mov r0, r4
007cfb2c  38 d0 fe eb                                      bl #0x783c14
007cfb30  00 a0 a0 e1                                      mov sl, r0
007cfb34  04 00 a0 e1                                      mov r0, r4
007cfb38  4f d0 fe eb                                      bl #0x783c7c
007cfb3c  00 80 a0 e3                                      mov r8, #0
007cfb40  00 00 56 e3                                      cmp r6, #0
007cfb44  08 00 8d e5                                      str r0, [sp, #8]
007cfb48  28 80 8d e5                                      str r8, [sp, #0x28]
007cfb4c  2c 80 8d e5                                      str r8, [sp, #0x2c]
007cfb50  30 80 8d e5                                      str r8, [sp, #0x30]
007cfb54  34 80 cd e5                                      strb r8, [sp, #0x34]
007cfb58  58 00 00 1a                                      bne #0x7cfcc0
007cfb5c  08 00 5a e1                                      cmp sl, r8
007cfb60  28 20 8d 02                                      addeq r2, sp, #0x28
007cfb64  10 20 8d 05                                      streq r2, [sp, #0x10]
007cfb68  15 00 00 0a                                      beq #0x7cfbc4
007cfb6c  28 20 8d e2                                      add r2, sp, #0x28
007cfb70  06 80 a0 e1                                      mov r8, r6
007cfb74  10 20 8d e5                                      str r2, [sp, #0x10]
007cfb78  02 b0 a0 e1                                      mov fp, r2
007cfb7c  04 00 a0 e1                                      mov r0, r4
007cfb80  23 d0 fe eb                                      bl #0x783c14
007cfb84  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007cfb88  30 20 9d e5                                      ldr r2, [sp, #0x30]
007cfb8c  00 90 a0 e1                                      mov sb, r0
007cfb90  01 60 83 e2                                      add r6, r3, #1
007cfb94  02 00 56 e1                                      cmp r6, r2
007cfb98  01 80 88 e2                                      add r8, r8, #1
007cfb9c  03 00 00 da                                      ble #0x7cfbb0
007cfba0  0b 00 a0 e1                                      mov r0, fp
007cfba4  c6 10 86 e0                                      add r1, r6, r6, asr #1
007cfba8  04 52 fe eb                                      bl #0x7643c0
007cfbac  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007cfbb0  28 20 9d e5                                      ldr r2, [sp, #0x28]
007cfbb4  08 00 5a e1                                      cmp sl, r8
007cfbb8  03 91 82 e7                                      str sb, [r2, r3, lsl #2]
007cfbbc  2c 60 8d e5                                      str r6, [sp, #0x2c]
007cfbc0  ed ff ff ca                                      bgt #0x7cfb7c
007cfbc4  04 00 a0 e1                                      mov r0, r4
007cfbc8  11 d0 fe eb                                      bl #0x783c14
007cfbcc  0c 00 8d e5                                      str r0, [sp, #0xc]
007cfbd0  20 00 87 e2                                      add r0, r7, #0x20
007cfbd4  0a 10 a0 e1                                      mov r1, sl
007cfbd8  ae fc ff eb                                      bl #0x7cee98
007cfbdc  00 30 95 e5                                      ldr r3, [r5]
007cfbe0  05 00 a0 e1                                      mov r0, r5
007cfbe4  0f e0 a0 e1                                      mov lr, pc
007cfbe8  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
007cfbec  00 60 50 e2                                      subs r6, r0, #0
007cfbf0  df 00 00 1a                                      bne #0x7cff74
007cfbf4  00 00 5a e3                                      cmp sl, #0
007cfbf8  54 00 00 0a                                      beq #0x7cfd50
007cfbfc  07 80 a0 e1                                      mov r8, r7
007cfc00  0a 90 a0 e1                                      mov sb, sl
007cfc04  11 00 00 ea                                      b #0x7cfc50
007cfc08  00 10 a0 e3                                      mov r1, #0
007cfc0c  88 00 a0 e3                                      mov r0, #0x88
007cfc10  e4 0b fe eb                                      bl #0x752ba8
007cfc14  0b 10 a0 e1                                      mov r1, fp
007cfc18  00 70 a0 e1                                      mov r7, r0
007cfc1c  15 af fe eb                                      bl #0x77b878
007cfc20  07 00 a0 e1                                      mov r0, r7
007cfc24  04 10 a0 e1                                      mov r1, r4
007cfc28  16 20 a0 e3                                      mov r2, #0x16
007cfc2c  00 30 a0 e3                                      mov r3, #0
007cfc30  00 50 8d e5                                      str r5, [sp]
007cfc34  c7 ac fe eb                                      bl #0x77af58
007cfc38  20 00 98 e5                                      ldr r0, [r8, #0x20]
007cfc3c  07 10 a0 e1                                      mov r1, r7
007cfc40  0a 00 80 e0                                      add r0, r0, sl
007cfc44  67 fa ff eb                                      bl #0x7ce5e8
007cfc48  06 00 59 e1                                      cmp sb, r6
007cfc4c  3e 00 00 da                                      ble #0x7cfd4c
007cfc50  28 30 9d e5                                      ldr r3, [sp, #0x28]
007cfc54  04 00 a0 e1                                      mov r0, r4
007cfc58  06 a1 a0 e1                                      lsl sl, r6, #2
007cfc5c  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
007cfc60  08 30 9d e5                                      ldr r3, [sp, #8]
007cfc64  01 60 86 e2                                      add r6, r6, #1
007cfc68  01 10 83 e0                                      add r1, r3, r1
007cfc6c  08 d0 fe eb                                      bl #0x783c94
007cfc70  1c b0 95 e5                                      ldr fp, [r5, #0x1c]
007cfc74  00 00 5b e3                                      cmp fp, #0
007cfc78  e2 ff ff 0a                                      beq #0x7cfc08
007cfc7c  18 30 95 e5                                      ldr r3, [r5, #0x18]
007cfc80  04 20 d3 e5                                      ldrb r2, [r3, #4]
007cfc84  00 00 52 e3                                      cmp r2, #0
007cfc88  de ff ff 1a                                      bne #0x7cfc08
007cfc8c  00 20 93 e5                                      ldr r2, [r3]
007cfc90  00 b0 a0 e3                                      mov fp, #0
007cfc94  03 00 a0 e1                                      mov r0, r3
007cfc98  01 20 42 e2                                      sub r2, r2, #1
007cfc9c  0b 00 52 e1                                      cmp r2, fp
007cfca0  02 10 a0 e1                                      mov r1, r2
007cfca4  00 20 83 e5                                      str r2, [r3]
007cfca8  00 00 00 1a                                      bne #0x7cfcb0
007cfcac  a1 0b fe eb                                      bl #0x752b38
007cfcb0  00 10 a0 e3                                      mov r1, #0
007cfcb4  18 10 85 e5                                      str r1, [r5, #0x18]
007cfcb8  1c 10 85 e5                                      str r1, [r5, #0x1c]
007cfcbc  d1 ff ff ea                                      b #0x7cfc08
007cfcc0  00 00 5a e3                                      cmp sl, #0
007cfcc4  28 30 8d 02                                      addeq r3, sp, #0x28
007cfcc8  10 30 8d 05                                      streq r3, [sp, #0x10]
007cfccc  1a 00 00 0a                                      beq #0x7cfd3c
007cfcd0  28 10 8d e2                                      add r1, sp, #0x28
007cfcd4  10 10 8d e5                                      str r1, [sp, #0x10]
007cfcd8  01 b0 a0 e1                                      mov fp, r1
007cfcdc  04 00 00 ea                                      b #0x7cfcf4
007cfce0  28 20 9d e5                                      ldr r2, [sp, #0x28]
007cfce4  08 00 5a e1                                      cmp sl, r8
007cfce8  03 91 82 e7                                      str sb, [r2, r3, lsl #2]
007cfcec  2c 60 8d e5                                      str r6, [sp, #0x2c]
007cfcf0  11 00 00 da                                      ble #0x7cfd3c
007cfcf4  04 00 a0 e1                                      mov r0, r4
007cfcf8  87 d0 fe eb                                      bl #0x783f1c
007cfcfc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007cfd00  30 20 9d e5                                      ldr r2, [sp, #0x30]
007cfd04  00 90 a0 e1                                      mov sb, r0
007cfd08  01 60 83 e2                                      add r6, r3, #1
007cfd0c  02 00 56 e1                                      cmp r6, r2
007cfd10  01 80 88 e2                                      add r8, r8, #1
007cfd14  f1 ff ff da                                      ble #0x7cfce0
007cfd18  0b 00 a0 e1                                      mov r0, fp
007cfd1c  c6 10 86 e0                                      add r1, r6, r6, asr #1
007cfd20  a6 51 fe eb                                      bl #0x7643c0
007cfd24  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007cfd28  28 20 9d e5                                      ldr r2, [sp, #0x28]
007cfd2c  08 00 5a e1                                      cmp sl, r8
007cfd30  03 91 82 e7                                      str sb, [r2, r3, lsl #2]
007cfd34  2c 60 8d e5                                      str r6, [sp, #0x2c]
007cfd38  ed ff ff ca                                      bgt #0x7cfcf4
007cfd3c  04 00 a0 e1                                      mov r0, r4
007cfd40  75 d0 fe eb                                      bl #0x783f1c
007cfd44  0c 00 8d e5                                      str r0, [sp, #0xc]
007cfd48  a0 ff ff ea                                      b #0x7cfbd0
007cfd4c  08 70 a0 e1                                      mov r7, r8
007cfd50  04 00 a0 e1                                      mov r0, r4
007cfd54  c8 cf fe eb                                      bl #0x783c7c
007cfd58  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007cfd5c  08 10 9d e5                                      ldr r1, [sp, #8]
007cfd60  01 30 82 e0                                      add r3, r2, r1
007cfd64  03 00 50 e1                                      cmp r0, r3
007cfd68  8a 00 00 0a                                      beq #0x7cff98
007cfd6c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007cfd70  00 00 53 e3                                      cmp r3, #0
007cfd74  fa 00 00 da                                      ble #0x7d0164
007cfd78  00 30 a0 e3                                      mov r3, #0
007cfd7c  10 00 9d e5                                      ldr r0, [sp, #0x10]
007cfd80  03 10 a0 e1                                      mov r1, r3
007cfd84  2c 30 8d e5                                      str r3, [sp, #0x2c]
007cfd88  8c 51 fe eb                                      bl #0x7643c0
007cfd8c  32 ff ff ea                                      b #0x7cfa5c
007cfd90  01 00 a0 e1                                      mov r0, r1
007cfd94  b8 cf fe eb                                      bl #0x783c7c
007cfd98  00 30 a0 e3                                      mov r3, #0
007cfd9c  08 00 8d e5                                      str r0, [sp, #8]
007cfda0  04 00 a0 e1                                      mov r0, r4
007cfda4  44 30 cd e5                                      strb r3, [sp, #0x44]
007cfda8  38 30 8d e5                                      str r3, [sp, #0x38]
007cfdac  3c 30 8d e5                                      str r3, [sp, #0x3c]
007cfdb0  40 30 8d e5                                      str r3, [sp, #0x40]
007cfdb4  96 cf fe eb                                      bl #0x783c14
007cfdb8  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007cfdbc  40 20 9d e5                                      ldr r2, [sp, #0x40]
007cfdc0  00 80 a0 e1                                      mov r8, r0
007cfdc4  01 60 83 e2                                      add r6, r3, #1
007cfdc8  02 00 56 e1                                      cmp r6, r2
007cfdcc  38 10 8d d2                                      addle r1, sp, #0x38
007cfdd0  0c 10 8d d5                                      strle r1, [sp, #0xc]
007cfdd4  05 00 00 da                                      ble #0x7cfdf0
007cfdd8  38 20 8d e2                                      add r2, sp, #0x38
007cfddc  02 00 a0 e1                                      mov r0, r2
007cfde0  c6 10 86 e0                                      add r1, r6, r6, asr #1
007cfde4  0c 20 8d e5                                      str r2, [sp, #0xc]
007cfde8  74 51 fe eb                                      bl #0x7643c0
007cfdec  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007cfdf0  38 20 9d e5                                      ldr r2, [sp, #0x38]
007cfdf4  03 81 82 e7                                      str r8, [r2, r3, lsl #2]
007cfdf8  38 30 9d e5                                      ldr r3, [sp, #0x38]
007cfdfc  3c 60 8d e5                                      str r6, [sp, #0x3c]
007cfe00  00 80 93 e5                                      ldr r8, [r3]
007cfe04  c8 80 a0 e1                                      asr r8, r8, #1
007cfe08  01 00 58 e3                                      cmp r8, #1
007cfe0c  13 00 00 da                                      ble #0x7cfe60
007cfe10  0c b0 9d e5                                      ldr fp, [sp, #0xc]
007cfe14  01 a0 a0 e3                                      mov sl, #1
007cfe18  04 00 a0 e1                                      mov r0, r4
007cfe1c  7c cf fe eb                                      bl #0x783c14
007cfe20  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007cfe24  40 20 9d e5                                      ldr r2, [sp, #0x40]
007cfe28  00 90 a0 e1                                      mov sb, r0
007cfe2c  01 60 83 e2                                      add r6, r3, #1
007cfe30  02 00 56 e1                                      cmp r6, r2
007cfe34  01 a0 8a e2                                      add sl, sl, #1
007cfe38  03 00 00 da                                      ble #0x7cfe4c
007cfe3c  0b 00 a0 e1                                      mov r0, fp
007cfe40  c6 10 86 e0                                      add r1, r6, r6, asr #1
007cfe44  5d 51 fe eb                                      bl #0x7643c0
007cfe48  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007cfe4c  38 20 9d e5                                      ldr r2, [sp, #0x38]
007cfe50  08 00 5a e1                                      cmp sl, r8
007cfe54  03 91 82 e7                                      str sb, [r2, r3, lsl #2]
007cfe58  3c 60 8d e5                                      str r6, [sp, #0x3c]
007cfe5c  ed ff ff 1a                                      bne #0x7cfe18
007cfe60  20 00 87 e2                                      add r0, r7, #0x20
007cfe64  08 10 a0 e1                                      mov r1, r8
007cfe68  0a fc ff eb                                      bl #0x7cee98
007cfe6c  00 30 95 e5                                      ldr r3, [r5]
007cfe70  05 00 a0 e1                                      mov r0, r5
007cfe74  0f e0 a0 e1                                      mov lr, pc
007cfe78  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
007cfe7c  00 60 50 e2                                      subs r6, r0, #0
007cfe80  32 00 00 1a                                      bne #0x7cff50
007cfe84  00 00 58 e3                                      cmp r8, #0
007cfe88  30 00 00 da                                      ble #0x7cff50
007cfe8c  08 90 a0 e1                                      mov sb, r8
007cfe90  07 80 a0 e1                                      mov r8, r7
007cfe94  11 00 00 ea                                      b #0x7cfee0
007cfe98  00 10 a0 e3                                      mov r1, #0
007cfe9c  88 00 a0 e3                                      mov r0, #0x88
007cfea0  40 0b fe eb                                      bl #0x752ba8
007cfea4  0b 10 a0 e1                                      mov r1, fp
007cfea8  00 70 a0 e1                                      mov r7, r0
007cfeac  71 ae fe eb                                      bl #0x77b878
007cfeb0  07 00 a0 e1                                      mov r0, r7
007cfeb4  04 10 a0 e1                                      mov r1, r4
007cfeb8  02 20 a0 e3                                      mov r2, #2
007cfebc  00 30 a0 e3                                      mov r3, #0
007cfec0  00 50 8d e5                                      str r5, [sp]
007cfec4  23 ac fe eb                                      bl #0x77af58
007cfec8  20 00 98 e5                                      ldr r0, [r8, #0x20]
007cfecc  07 10 a0 e1                                      mov r1, r7
007cfed0  0a 00 80 e0                                      add r0, r0, sl
007cfed4  c3 f9 ff eb                                      bl #0x7ce5e8
007cfed8  09 00 56 e1                                      cmp r6, sb
007cfedc  1b 00 00 0a                                      beq #0x7cff50
007cfee0  38 30 9d e5                                      ldr r3, [sp, #0x38]
007cfee4  04 00 a0 e1                                      mov r0, r4
007cfee8  06 a1 a0 e1                                      lsl sl, r6, #2
007cfeec  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
007cfef0  08 30 9d e5                                      ldr r3, [sp, #8]
007cfef4  01 60 86 e2                                      add r6, r6, #1
007cfef8  01 10 83 e0                                      add r1, r3, r1
007cfefc  64 cf fe eb                                      bl #0x783c94
007cff00  1c b0 95 e5                                      ldr fp, [r5, #0x1c]
007cff04  00 00 5b e3                                      cmp fp, #0
007cff08  e2 ff ff 0a                                      beq #0x7cfe98
007cff0c  18 30 95 e5                                      ldr r3, [r5, #0x18]
007cff10  04 20 d3 e5                                      ldrb r2, [r3, #4]
007cff14  00 00 52 e3                                      cmp r2, #0
007cff18  de ff ff 1a                                      bne #0x7cfe98
007cff1c  00 20 93 e5                                      ldr r2, [r3]
007cff20  00 b0 a0 e3                                      mov fp, #0
007cff24  03 00 a0 e1                                      mov r0, r3
007cff28  01 20 42 e2                                      sub r2, r2, #1
007cff2c  0b 00 52 e1                                      cmp r2, fp
007cff30  02 10 a0 e1                                      mov r1, r2
007cff34  00 20 83 e5                                      str r2, [r3]
007cff38  00 00 00 1a                                      bne #0x7cff40
007cff3c  fd 0a fe eb                                      bl #0x752b38
007cff40  00 10 a0 e3                                      mov r1, #0
007cff44  18 10 85 e5                                      str r1, [r5, #0x18]
007cff48  1c 10 85 e5                                      str r1, [r5, #0x1c]
007cff4c  d1 ff ff ea                                      b #0x7cfe98
007cff50  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007cff54  00 00 53 e3                                      cmp r3, #0
007cff58  8a 00 00 da                                      ble #0x7d0188
007cff5c  00 30 a0 e3                                      mov r3, #0
007cff60  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007cff64  03 10 a0 e1                                      mov r1, r3
007cff68  3c 30 8d e5                                      str r3, [sp, #0x3c]
007cff6c  13 51 fe eb                                      bl #0x7643c0
007cff70  b9 fe ff ea                                      b #0x7cfa5c
007cff74  04 00 a0 e1                                      mov r0, r4
007cff78  4f cf fe eb                                      bl #0x783cbc
007cff7c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007cff80  08 30 9d e5                                      ldr r3, [sp, #8]
007cff84  03 10 82 e0                                      add r1, r2, r3
007cff88  00 00 51 e1                                      cmp r1, r0
007cff8c  76 ff ff aa                                      bge #0x7cfd6c
007cff90  04 00 a0 e1                                      mov r0, r4
007cff94  3e cf fe eb                                      bl #0x783c94
007cff98  04 10 a0 e1                                      mov r1, r4
007cff9c  07 00 a0 e1                                      mov r0, r7
007cffa0  01 fe ff eb                                      bl #0x7cf7ac
007cffa4  14 10 9d e5                                      ldr r1, [sp, #0x14]
007cffa8  00 00 51 e3                                      cmp r1, #0
007cffac  0b 00 00 1a                                      bne #0x7cffe0
007cffb0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007cffb4  00 00 53 e3                                      cmp r3, #0
007cffb8  6e ff ff ca                                      bgt #0x7cfd78
007cffbc  6d ff ff aa                                      bge #0x7cfd78
007cffc0  03 21 a0 e1                                      lsl r2, r3, #2
007cffc4  00 00 a0 e3                                      mov r0, #0
007cffc8  28 10 9d e5                                      ldr r1, [sp, #0x28]
007cffcc  01 30 93 e2                                      adds r3, r3, #1
007cffd0  02 00 81 e7                                      str r0, [r1, r2]
007cffd4  04 20 82 e2                                      add r2, r2, #4
007cffd8  fa ff ff 1a                                      bne #0x7cffc8
007cffdc  65 ff ff ea                                      b #0x7cfd78
007cffe0  04 00 a0 e1                                      mov r0, r4
007cffe4  17 cf fe eb                                      bl #0x783c48
007cffe8  70 00 bf e6                                      sxth r0, r0
007cffec  5c fa ec eb                                      bl #0x30e964
007cfff0  54 00 87 e5                                      str r0, [r7, #0x54]
007cfff4  04 00 a0 e1                                      mov r0, r4
007cfff8  12 cf fe eb                                      bl #0x783c48
007cfffc  70 00 bf e6                                      sxth r0, r0
007d0000  57 fa ec eb                                      bl #0x30e964
007d0004  58 00 87 e5                                      str r0, [r7, #0x58]
007d0008  04 00 a0 e1                                      mov r0, r4
007d000c  0d cf fe eb                                      bl #0x783c48
007d0010  70 00 bf e6                                      sxth r0, r0
007d0014  52 fa ec eb                                      bl #0x30e964
007d0018  24 60 97 e5                                      ldr r6, [r7, #0x24]
007d001c  5c 00 87 e5                                      str r0, [r7, #0x5c]
007d0020  60 80 87 e2                                      add r8, r7, #0x60
007d0024  00 00 56 e3                                      cmp r6, #0
007d0028  64 50 97 e5                                      ldr r5, [r7, #0x64]
007d002c  02 00 00 0a                                      beq #0x7d003c
007d0030  68 30 97 e5                                      ldr r3, [r7, #0x68]
007d0034  03 00 56 e1                                      cmp r6, r3
007d0038  5b 00 00 ca                                      bgt #0x7d01ac
007d003c  05 00 56 e1                                      cmp r6, r5
007d0040  07 00 00 da                                      ble #0x7d0064
007d0044  00 10 a0 e3                                      mov r1, #0
007d0048  05 31 a0 e1                                      lsl r3, r5, #2
007d004c  00 20 98 e5                                      ldr r2, [r8]
007d0050  01 50 85 e2                                      add r5, r5, #1
007d0054  06 00 55 e1                                      cmp r5, r6
007d0058  03 10 82 e7                                      str r1, [r2, r3]
007d005c  04 30 83 e2                                      add r3, r3, #4
007d0060  f9 ff ff 1a                                      bne #0x7d004c
007d0064  00 00 56 e3                                      cmp r6, #0
007d0068  64 60 87 e5                                      str r6, [r7, #0x64]
007d006c  09 00 00 da                                      ble #0x7d0098
007d0070  00 50 a0 e3                                      mov r5, #0
007d0074  04 00 a0 e1                                      mov r0, r4
007d0078  60 80 97 e5                                      ldr r8, [r7, #0x60]
007d007c  f1 ce fe eb                                      bl #0x783c48
007d0080  70 00 bf e6                                      sxth r0, r0
007d0084  36 fa ec eb                                      bl #0x30e964
007d0088  05 01 88 e7                                      str r0, [r8, r5, lsl #2]
007d008c  01 50 85 e2                                      add r5, r5, #1
007d0090  06 00 55 e1                                      cmp r5, r6
007d0094  f6 ff ff 1a                                      bne #0x7d0074
007d0098  24 60 97 e5                                      ldr r6, [r7, #0x24]
007d009c  00 00 56 e3                                      cmp r6, #0
007d00a0  07 00 00 da                                      ble #0x7d00c4
007d00a4  00 50 a0 e3                                      mov r5, #0
007d00a8  18 80 8d e2                                      add r8, sp, #0x18
007d00ac  01 50 85 e2                                      add r5, r5, #1
007d00b0  08 00 a0 e1                                      mov r0, r8
007d00b4  04 10 a0 e1                                      mov r1, r4
007d00b8  cb 17 ff eb                                      bl #0x795fec
007d00bc  06 00 55 e1                                      cmp r5, r6
007d00c0  f9 ff ff 1a                                      bne #0x7d00ac
007d00c4  04 00 a0 e1                                      mov r0, r4
007d00c8  d1 ce fe eb                                      bl #0x783c14
007d00cc  00 90 50 e2                                      subs sb, r0, #0
007d00d0  b6 ff ff 0a                                      beq #0x7cffb0
007d00d4  38 20 8d e2                                      add r2, sp, #0x38
007d00d8  70 b0 87 e2                                      add fp, r7, #0x70
007d00dc  00 50 a0 e3                                      mov r5, #0
007d00e0  0c 20 8d e5                                      str r2, [sp, #0xc]
007d00e4  13 00 00 ea                                      b #0x7d0138
007d00e8  c9 ce fe eb                                      bl #0x783c14
007d00ec  00 80 a0 e1                                      mov r8, r0
007d00f0  04 00 a0 e1                                      mov r0, r4
007d00f4  c6 ce fe eb                                      bl #0x783c14
007d00f8  00 60 a0 e1                                      mov r6, r0
007d00fc  04 00 a0 e1                                      mov r0, r4
007d0100  d0 ce fe eb                                      bl #0x783c48
007d0104  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007d0108  70 a0 ff e6                                      uxth sl, r0
007d010c  0b 00 a0 e1                                      mov r0, fp
007d0110  ba 63 cd e1                                      strh r6, [sp, #0x3a]
007d0114  b8 83 cd e1                                      strh r8, [sp, #0x38]
007d0118  e8 fa ff eb                                      bl #0x7cecc0
007d011c  00 60 a0 e1                                      mov r6, r0
007d0120  7a 00 bf e6                                      sxth r0, sl
007d0124  0e fa ec eb                                      bl #0x30e964
007d0128  01 50 85 e2                                      add r5, r5, #1
007d012c  05 00 59 e1                                      cmp sb, r5
007d0130  00 00 86 e5                                      str r0, [r6]
007d0134  9d ff ff da                                      ble #0x7cffb0
007d0138  4e 30 d7 e5                                      ldrb r3, [r7, #0x4e]
007d013c  04 00 a0 e1                                      mov r0, r4
007d0140  00 00 53 e3                                      cmp r3, #0
007d0144  e7 ff ff 1a                                      bne #0x7d00e8
007d0148  04 00 a0 e1                                      mov r0, r4
007d014c  75 ce fe eb                                      bl #0x783b28
007d0150  00 80 a0 e1                                      mov r8, r0
007d0154  04 00 a0 e1                                      mov r0, r4
007d0158  72 ce fe eb                                      bl #0x783b28
007d015c  00 60 a0 e1                                      mov r6, r0
007d0160  e5 ff ff ea                                      b #0x7d00fc
007d0164  03 ff ff aa                                      bge #0x7cfd78
007d0168  03 21 a0 e1                                      lsl r2, r3, #2
007d016c  00 00 a0 e3                                      mov r0, #0
007d0170  28 10 9d e5                                      ldr r1, [sp, #0x28]
007d0174  01 30 93 e2                                      adds r3, r3, #1
007d0178  02 00 81 e7                                      str r0, [r1, r2]
007d017c  04 20 82 e2                                      add r2, r2, #4
007d0180  fa ff ff 1a                                      bne #0x7d0170
007d0184  fb fe ff ea                                      b #0x7cfd78
007d0188  73 ff ff aa                                      bge #0x7cff5c
007d018c  03 21 a0 e1                                      lsl r2, r3, #2
007d0190  00 00 a0 e3                                      mov r0, #0
007d0194  38 10 9d e5                                      ldr r1, [sp, #0x38]
007d0198  01 30 93 e2                                      adds r3, r3, #1
007d019c  02 00 81 e7                                      str r0, [r1, r2]
007d01a0  04 20 82 e2                                      add r2, r2, #4
007d01a4  fa ff ff 1a                                      bne #0x7d0194
007d01a8  6b ff ff ea                                      b #0x7cff5c
007d01ac  08 00 a0 e1                                      mov r0, r8
007d01b0  c6 10 86 e0                                      add r1, r6, r6, asr #1
007d01b4  0d a7 fe eb                                      bl #0x779df0
007d01b8  9f ff ff ea                                      b #0x7d003c

; FUNCTION 0x007d01bc, declared_size=640, range_size=640, mode=arm
; class-group: gameswf::font
; alias: _ZNK7gameswf4font9get_glyphEPNS_5glyphEti
; demangled: gameswf::font::get_glyph(gameswf::glyph*, unsigned short, int) const
; decoder-mode: arm
007d01bc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007d01c0  01 40 a0 e1                                      mov r4, r1
007d01c4  11 13 a0 e3                                      mov r1, #0x44000000
007d01c8  00 10 84 e5                                      str r1, [r4]
007d01cc  00 10 e0 e3                                      mvn r1, #0
007d01d0  be 11 c4 e1                                      strh r1, [r4, #0x1e]
007d01d4  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
007d01d8  14 d0 4d e2                                      sub sp, sp, #0x14
007d01dc  00 50 a0 e1                                      mov r5, r0
007d01e0  00 00 51 e3                                      cmp r1, #0
007d01e4  02 60 a0 e1                                      mov r6, r2
007d01e8  03 70 a0 e1                                      mov r7, r3
007d01ec  03 00 00 0a                                      beq #0x7d0200
007d01f0  18 00 90 e5                                      ldr r0, [r0, #0x18]
007d01f4  04 30 d0 e5                                      ldrb r3, [r0, #4]
007d01f8  00 00 53 e3                                      cmp r3, #0
007d01fc  4d 00 00 0a                                      beq #0x7d0338
007d0200  ac 30 91 e5                                      ldr r3, [r1, #0xac]
007d0204  10 00 93 e5                                      ldr r0, [r3, #0x10]
007d0208  00 00 50 e3                                      cmp r0, #0
007d020c  20 00 00 0a                                      beq #0x7d0294
007d0210  00 30 a0 e3                                      mov r3, #0
007d0214  22 30 c4 e5                                      strb r3, [r4, #0x22]
007d0218  30 10 85 e2                                      add r1, r5, #0x30
007d021c  4d 20 d5 e5                                      ldrb r2, [r5, #0x4d]
007d0220  4c 30 d5 e5                                      ldrb r3, [r5, #0x4c]
007d0224  87 d7 ff eb                                      bl #0x7c6048
007d0228  00 00 50 e3                                      cmp r0, #0
007d022c  18 00 84 e5                                      str r0, [r4, #0x18]
007d0230  16 00 00 0a                                      beq #0x7d0290
007d0234  08 30 84 e2                                      add r3, r4, #8
007d0238  06 10 a0 e1                                      mov r1, r6
007d023c  07 20 a0 e1                                      mov r2, r7
007d0240  00 40 8d e5                                      str r4, [sp]
007d0244  e4 d5 ff eb                                      bl #0x7c59dc
007d0248  00 10 a0 e1                                      mov r1, r0
007d024c  04 00 84 e2                                      add r0, r4, #4
007d0250  3a a9 fe eb                                      bl #0x77a740
007d0254  04 30 94 e5                                      ldr r3, [r4, #4]
007d0258  00 00 53 e3                                      cmp r3, #0
007d025c  0b 00 00 0a                                      beq #0x7d0290
007d0260  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
007d0264  00 00 53 e3                                      cmp r3, #0
007d0268  01 00 a0 03                                      moveq r0, #1
007d026c  05 00 00 0a                                      beq #0x7d0288
007d0270  41 14 a0 e3                                      mov r1, #0x41000000
007d0274  00 00 94 e5                                      ldr r0, [r4]
007d0278  0a 16 81 e2                                      add r1, r1, #0xa00000
007d027c  ba fa ec eb                                      bl #0x30ed6c
007d0280  00 00 84 e5                                      str r0, [r4]
007d0284  01 00 a0 e3                                      mov r0, #1
007d0288  14 d0 8d e2                                      add sp, sp, #0x14
007d028c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007d0290  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007d0294  00 00 51 e3                                      cmp r1, #0
007d0298  03 00 00 0a                                      beq #0x7d02ac
007d029c  18 00 95 e5                                      ldr r0, [r5, #0x18]
007d02a0  04 30 d0 e5                                      ldrb r3, [r0, #4]
007d02a4  00 00 53 e3                                      cmp r3, #0
007d02a8  2c 00 00 0a                                      beq #0x7d0360
007d02ac  ac 30 91 e5                                      ldr r3, [r1, #0xac]
007d02b0  0c 80 93 e5                                      ldr r8, [r3, #0xc]
007d02b4  00 00 58 e3                                      cmp r8, #0
007d02b8  18 00 00 0a                                      beq #0x7d0320
007d02bc  00 30 a0 e3                                      mov r3, #0
007d02c0  22 30 c4 e5                                      strb r3, [r4, #0x22]
007d02c4  4c e0 d5 e5                                      ldrb lr, [r5, #0x4c]
007d02c8  30 a0 85 e2                                      add sl, r5, #0x30
007d02cc  4d 30 d5 e5                                      ldrb r3, [r5, #0x4d]
007d02d0  08 c0 84 e2                                      add ip, r4, #8
007d02d4  0a 20 a0 e1                                      mov r2, sl
007d02d8  06 10 a0 e1                                      mov r1, r6
007d02dc  08 00 a0 e1                                      mov r0, r8
007d02e0  00 e0 8d e5                                      str lr, [sp]
007d02e4  80 10 8d e9                                      stmib sp, {r7, ip}
007d02e8  0c 40 8d e5                                      str r4, [sp, #0xc]
007d02ec  c8 04 00 eb                                      bl #0x7d1614
007d02f0  00 10 a0 e1                                      mov r1, r0
007d02f4  04 00 84 e2                                      add r0, r4, #4
007d02f8  10 a9 fe eb                                      bl #0x77a740
007d02fc  4c 30 d5 e5                                      ldrb r3, [r5, #0x4c]
007d0300  08 00 a0 e1                                      mov r0, r8
007d0304  0a 10 a0 e1                                      mov r1, sl
007d0308  4d 20 d5 e5                                      ldrb r2, [r5, #0x4d]
007d030c  8a 03 00 eb                                      bl #0x7d113c
007d0310  04 30 94 e5                                      ldr r3, [r4, #4]
007d0314  18 00 84 e5                                      str r0, [r4, #0x18]
007d0318  00 00 53 e3                                      cmp r3, #0
007d031c  cf ff ff 1a                                      bne #0x7d0260
007d0320  50 30 95 e5                                      ldr r3, [r5, #0x50]
007d0324  50 20 85 e2                                      add r2, r5, #0x50
007d0328  00 00 53 e3                                      cmp r3, #0
007d032c  15 00 00 1a                                      bne #0x7d0388
007d0330  00 00 a0 e3                                      mov r0, #0
007d0334  d3 ff ff ea                                      b #0x7d0288
007d0338  00 10 90 e5                                      ldr r1, [r0]
007d033c  01 10 41 e2                                      sub r1, r1, #1
007d0340  00 00 51 e3                                      cmp r1, #0
007d0344  00 10 80 e5                                      str r1, [r0]
007d0348  00 00 00 1a                                      bne #0x7d0350
007d034c  f9 09 fe eb                                      bl #0x752b38
007d0350  00 10 a0 e3                                      mov r1, #0
007d0354  18 10 85 e5                                      str r1, [r5, #0x18]
007d0358  1c 10 85 e5                                      str r1, [r5, #0x1c]
007d035c  a7 ff ff ea                                      b #0x7d0200
007d0360  00 10 90 e5                                      ldr r1, [r0]
007d0364  01 10 41 e2                                      sub r1, r1, #1
007d0368  00 00 51 e3                                      cmp r1, #0
007d036c  00 10 80 e5                                      str r1, [r0]
007d0370  00 00 00 1a                                      bne #0x7d0378
007d0374  ef 09 fe eb                                      bl #0x752b38
007d0378  00 10 a0 e3                                      mov r1, #0
007d037c  18 10 85 e5                                      str r1, [r5, #0x18]
007d0380  1c 10 85 e5                                      str r1, [r5, #0x1c]
007d0384  c8 ff ff ea                                      b #0x7d02ac
007d0388  04 c0 93 e5                                      ldr ip, [r3, #4]
007d038c  0c 00 a0 e3                                      mov r0, #0xc
007d0390  0c 10 06 e0                                      and r1, r6, ip
007d0394  90 01 00 e0                                      mul r0, r0, r1
007d0398  08 00 80 e2                                      add r0, r0, #8
007d039c  00 70 93 e7                                      ldr r7, [r3, r0]
007d03a0  00 00 83 e0                                      add r0, r3, r0
007d03a4  02 00 77 e3                                      cmn r7, #2
007d03a8  e0 ff ff 0a                                      beq #0x7d0330
007d03ac  04 70 90 e5                                      ldr r7, [r0, #4]
007d03b0  01 00 77 e3                                      cmn r7, #1
007d03b4  02 00 00 0a                                      beq #0x7d03c4
007d03b8  07 c0 0c e0                                      and ip, ip, r7
007d03bc  0c 00 51 e1                                      cmp r1, ip
007d03c0  da ff ff 1a                                      bne #0x7d0330
007d03c4  0c 80 a0 e3                                      mov r8, #0xc
007d03c8  07 00 00 ea                                      b #0x7d03ec
007d03cc  00 10 90 e5                                      ldr r1, [r0]
007d03d0  01 00 71 e3                                      cmn r1, #1
007d03d4  d5 ff ff 0a                                      beq #0x7d0330
007d03d8  98 01 00 e0                                      mul r0, r8, r1
007d03dc  00 c0 92 e5                                      ldr ip, [r2]
007d03e0  08 00 80 e2                                      add r0, r0, #8
007d03e4  00 00 8c e0                                      add r0, ip, r0
007d03e8  04 70 90 e5                                      ldr r7, [r0, #4]
007d03ec  07 00 56 e1                                      cmp r6, r7
007d03f0  f5 ff ff 1a                                      bne #0x7d03cc
007d03f4  b8 c0 d0 e1                                      ldrh ip, [r0, #8]
007d03f8  06 00 5c e1                                      cmp ip, r6
007d03fc  f2 ff ff 1a                                      bne #0x7d03cc
007d0400  00 00 51 e3                                      cmp r1, #0
007d0404  c9 ff ff ba                                      blt #0x7d0330
007d0408  0c 20 a0 e3                                      mov r2, #0xc
007d040c  92 31 23 e0                                      mla r3, r2, r1, r3
007d0410  b2 31 d3 e1                                      ldrh r3, [r3, #0x12]
007d0414  be 31 c4 e1                                      strh r3, [r4, #0x1e]
007d0418  64 20 95 e5                                      ldr r2, [r5, #0x64]
007d041c  73 30 bf e6                                      sxth r3, r3
007d0420  02 00 53 e1                                      cmp r3, r2
007d0424  8d ff ff aa                                      bge #0x7d0260
007d0428  60 20 95 e5                                      ldr r2, [r5, #0x60]
007d042c  01 00 a0 e3                                      mov r0, #1
007d0430  03 31 92 e7                                      ldr r3, [r2, r3, lsl #2]
007d0434  00 30 84 e5                                      str r3, [r4]
007d0438  92 ff ff ea                                      b #0x7d0288
