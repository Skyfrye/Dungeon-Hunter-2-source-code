; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00779830, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_def9get_boundEPNS_4rectE
; demangled: gameswf::shape_character_def::get_bound(gameswf::rect*)
; decoder-mode: arm
00779830  01 c0 a0 e1                                      mov ip, r1
00779834  54 00 80 e2                                      add r0, r0, #0x54
00779838  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
0077983c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00779840  1e ff 2f e1                                      bx lr

; FUNCTION 0x00779844, declared_size=420, range_size=420, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZNK7gameswf19shape_character_def13compute_boundEPNS_4rectE
; demangled: gameswf::shape_character_def::compute_bound(gameswf::rect*) const
; decoder-mode: arm
00779844  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00779848  f9 32 00 e3                                      movw r3, #0x2f9
0077984c  f9 a2 00 e3                                      movw sl, #0x2f9
00779850  15 30 4d e3                                      movt r3, #0xd015
00779854  14 d0 4d e2                                      sub sp, sp, #0x14
00779858  15 a0 45 e3                                      movt sl, #0x5015
0077985c  0c 00 8d e5                                      str r0, [sp, #0xc]
00779860  0c 30 81 e5                                      str r3, [r1, #0xc]
00779864  00 a0 81 e5                                      str sl, [r1]
00779868  08 a0 81 e5                                      str sl, [r1, #8]
0077986c  04 30 81 e5                                      str r3, [r1, #4]
00779870  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00779874  01 40 a0 e1                                      mov r4, r1
00779878  48 30 92 e5                                      ldr r3, [r2, #0x48]
0077987c  00 00 53 e3                                      cmp r3, #0
00779880  56 00 00 da                                      ble #0x7799e0
00779884  00 30 a0 e3                                      mov r3, #0
00779888  04 30 8d e5                                      str r3, [sp, #4]
0077988c  08 30 8d e5                                      str r3, [sp, #8]
00779890  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00779894  04 30 9d e5                                      ldr r3, [sp, #4]
00779898  0a 10 a0 e1                                      mov r1, sl
0077989c  44 b0 92 e5                                      ldr fp, [r2, #0x44]
007798a0  03 b0 8b e0                                      add fp, fp, r3
007798a4  0c 60 9b e5                                      ldr r6, [fp, #0xc]
007798a8  10 50 9b e5                                      ldr r5, [fp, #0x10]
007798ac  06 00 a0 e1                                      mov r0, r6
007798b0  90 52 ee eb                                      bl #0x30e2f8
007798b4  08 70 94 e5                                      ldr r7, [r4, #8]
007798b8  00 00 50 e3                                      cmp r0, #0
007798bc  06 a0 a0 01                                      moveq sl, r6
007798c0  07 10 a0 e1                                      mov r1, r7
007798c4  05 00 a0 e1                                      mov r0, r5
007798c8  00 a0 84 e5                                      str sl, [r4]
007798cc  89 52 ee eb                                      bl #0x30e2f8
007798d0  04 80 94 e5                                      ldr r8, [r4, #4]
007798d4  00 00 50 e3                                      cmp r0, #0
007798d8  05 70 a0 01                                      moveq r7, r5
007798dc  08 70 84 e5                                      str r7, [r4, #8]
007798e0  06 00 a0 e1                                      mov r0, r6
007798e4  08 10 a0 e1                                      mov r1, r8
007798e8  82 52 ee eb                                      bl #0x30e2f8
007798ec  0c 70 94 e5                                      ldr r7, [r4, #0xc]
007798f0  00 00 50 e3                                      cmp r0, #0
007798f4  08 60 a0 01                                      moveq r6, r8
007798f8  05 00 a0 e1                                      mov r0, r5
007798fc  04 60 84 e5                                      str r6, [r4, #4]
00779900  07 10 a0 e1                                      mov r1, r7
00779904  7b 52 ee eb                                      bl #0x30e2f8
00779908  00 00 50 e3                                      cmp r0, #0
0077990c  07 50 a0 01                                      moveq r5, r7
00779910  0c 50 84 e5                                      str r5, [r4, #0xc]
00779914  18 30 9b e5                                      ldr r3, [fp, #0x18]
00779918  00 00 53 e3                                      cmp r3, #0
0077991c  23 00 00 da                                      ble #0x7799b0
00779920  00 70 a0 e3                                      mov r7, #0
00779924  14 30 9b e5                                      ldr r3, [fp, #0x14]
00779928  0a 10 a0 e1                                      mov r1, sl
0077992c  07 32 83 e0                                      add r3, r3, r7, lsl #4
00779930  08 60 93 e5                                      ldr r6, [r3, #8]
00779934  0c 50 93 e5                                      ldr r5, [r3, #0xc]
00779938  01 70 87 e2                                      add r7, r7, #1
0077993c  06 00 a0 e1                                      mov r0, r6
00779940  6c 52 ee eb                                      bl #0x30e2f8
00779944  08 80 94 e5                                      ldr r8, [r4, #8]
00779948  00 00 50 e3                                      cmp r0, #0
0077994c  06 a0 a0 01                                      moveq sl, r6
00779950  08 10 a0 e1                                      mov r1, r8
00779954  05 00 a0 e1                                      mov r0, r5
00779958  00 a0 84 e5                                      str sl, [r4]
0077995c  65 52 ee eb                                      bl #0x30e2f8
00779960  04 90 94 e5                                      ldr sb, [r4, #4]
00779964  00 00 50 e3                                      cmp r0, #0
00779968  05 80 a0 01                                      moveq r8, r5
0077996c  06 00 a0 e1                                      mov r0, r6
00779970  09 10 a0 e1                                      mov r1, sb
00779974  08 80 84 e5                                      str r8, [r4, #8]
00779978  5e 52 ee eb                                      bl #0x30e2f8
0077997c  00 00 50 e3                                      cmp r0, #0
00779980  09 60 a0 01                                      moveq r6, sb
00779984  04 60 84 e5                                      str r6, [r4, #4]
00779988  0c 60 94 e5                                      ldr r6, [r4, #0xc]
0077998c  05 00 a0 e1                                      mov r0, r5
00779990  06 10 a0 e1                                      mov r1, r6
00779994  57 52 ee eb                                      bl #0x30e2f8
00779998  00 00 50 e3                                      cmp r0, #0
0077999c  06 50 a0 01                                      moveq r5, r6
007799a0  0c 50 84 e5                                      str r5, [r4, #0xc]
007799a4  18 30 9b e5                                      ldr r3, [fp, #0x18]
007799a8  03 00 57 e1                                      cmp r7, r3
007799ac  dc ff ff ba                                      blt #0x779924
007799b0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007799b4  48 30 92 e5                                      ldr r3, [r2, #0x48]
007799b8  08 20 9d e5                                      ldr r2, [sp, #8]
007799bc  01 20 82 e2                                      add r2, r2, #1
007799c0  08 20 8d e5                                      str r2, [sp, #8]
007799c4  04 20 9d e5                                      ldr r2, [sp, #4]
007799c8  28 20 82 e2                                      add r2, r2, #0x28
007799cc  04 20 8d e5                                      str r2, [sp, #4]
007799d0  08 20 9d e5                                      ldr r2, [sp, #8]
007799d4  03 00 52 e1                                      cmp r2, r3
007799d8  00 a0 94 b5                                      ldrlt sl, [r4]
007799dc  ab ff ff ba                                      blt #0x779890
007799e0  14 d0 8d e2                                      add sp, sp, #0x14
007799e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00779fd0, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZNK7gameswf19shape_character_def21sort_and_clean_meshesEv
; demangled: gameswf::shape_character_def::sort_and_clean_meshes() const
; decoder-mode: arm
00779fd0  7c 10 90 e5                                      ldr r1, [r0, #0x7c]
00779fd4  00 00 51 e3                                      cmp r1, #0
00779fd8  1e ff 2f d1                                      bxle lr
00779fdc  0c 30 9f e5                                      ldr r3, [pc, #0xc]
00779fe0  78 00 90 e5                                      ldr r0, [r0, #0x78]
00779fe4  04 20 a0 e3                                      mov r2, #4
00779fe8  03 30 8f e0                                      add r3, pc, r3
00779fec  0f 51 ee ea                                      b #0x30e430
; mapping-symbol data/literal pool
00779ff0  f4 f7 ff ff                                      .byte 0xf4, 0xf7, 0xff, 0xff

; FUNCTION 0x0077a570, declared_size=184, range_size=184, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_def16point_test_localEff
; demangled: gameswf::shape_character_def::point_test_local(float, float)
; decoder-mode: arm
0077a570  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077a574  00 60 a0 e1                                      mov r6, r0
0077a578  01 70 a0 e1                                      mov r7, r1
0077a57c  01 00 a0 e1                                      mov r0, r1
0077a580  54 10 96 e5                                      ldr r1, [r6, #0x54]
0077a584  02 80 a0 e1                                      mov r8, r2
0077a588  5f 50 ee eb                                      bl #0x30e70c
0077a58c  00 00 50 e3                                      cmp r0, #0
0077a590  04 00 00 1a                                      bne #0x77a5a8
0077a594  07 00 a0 e1                                      mov r0, r7
0077a598  58 10 96 e5                                      ldr r1, [r6, #0x58]
0077a59c  55 4f ee eb                                      bl #0x30e2f8
0077a5a0  00 00 50 e3                                      cmp r0, #0
0077a5a4  01 00 00 0a                                      beq #0x77a5b0
0077a5a8  00 00 a0 e3                                      mov r0, #0
0077a5ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0077a5b0  08 00 a0 e1                                      mov r0, r8
0077a5b4  5c 10 96 e5                                      ldr r1, [r6, #0x5c]
0077a5b8  53 50 ee eb                                      bl #0x30e70c
0077a5bc  00 00 50 e3                                      cmp r0, #0
0077a5c0  f8 ff ff 1a                                      bne #0x77a5a8
0077a5c4  08 00 a0 e1                                      mov r0, r8
0077a5c8  60 10 96 e5                                      ldr r1, [r6, #0x60]
0077a5cc  49 4f ee eb                                      bl #0x30e2f8
0077a5d0  00 00 50 e3                                      cmp r0, #0
0077a5d4  f3 ff ff 1a                                      bne #0x77a5a8
0077a5d8  48 30 96 e5                                      ldr r3, [r6, #0x48]
0077a5dc  00 00 53 e3                                      cmp r3, #0
0077a5e0  f0 ff ff da                                      ble #0x77a5a8
0077a5e4  00 40 a0 e3                                      mov r4, #0
0077a5e8  04 50 a0 e1                                      mov r5, r4
0077a5ec  03 00 00 ea                                      b #0x77a600
0077a5f0  48 30 96 e5                                      ldr r3, [r6, #0x48]
0077a5f4  28 40 84 e2                                      add r4, r4, #0x28
0077a5f8  03 00 55 e1                                      cmp r5, r3
0077a5fc  e9 ff ff aa                                      bge #0x77a5a8
0077a600  44 00 96 e5                                      ldr r0, [r6, #0x44]
0077a604  07 10 a0 e1                                      mov r1, r7
0077a608  08 20 a0 e1                                      mov r2, r8
0077a60c  04 00 80 e0                                      add r0, r0, r4
0077a610  77 fe ff eb                                      bl #0x779ff4
0077a614  00 00 50 e3                                      cmp r0, #0
0077a618  01 50 85 e2                                      add r5, r5, #1
0077a61c  f3 ff ff 0a                                      beq #0x77a5f0
0077a620  01 00 a0 e3                                      mov r0, #1
0077a624  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0077a990, declared_size=572, range_size=572, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZNK7gameswf19shape_character_def7displayERKNS_6matrixERKNS_6cxformEfRKNS_5arrayINS_10fill_styleEEERKNS7_INS_10line_styleEEE
; demangled: gameswf::shape_character_def::display(gameswf::matrix const&, gameswf::cxform const&, float, gameswf::array<gameswf::fill_style> const&, gameswf::array<gameswf::line_style> const&) const
; decoder-mode: arm
0077a990  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077a994  01 40 a0 e1                                      mov r4, r1
0077a998  00 10 91 e5                                      ldr r1, [r1]
0077a99c  1c d0 4d e2                                      sub sp, sp, #0x1c
0077a9a0  00 50 a0 e1                                      mov r5, r0
0077a9a4  01 00 a0 e1                                      mov r0, r1
0077a9a8  04 60 94 e5                                      ldr r6, [r4, #4]
0077a9ac  03 70 a0 e1                                      mov r7, r3
0077a9b0  0c 20 8d e5                                      str r2, [sp, #0xc]
0077a9b4  ec 50 ee eb                                      bl #0x30ed6c
0077a9b8  06 10 a0 e1                                      mov r1, r6
0077a9bc  00 80 a0 e1                                      mov r8, r0
0077a9c0  06 00 a0 e1                                      mov r0, r6
0077a9c4  e8 50 ee eb                                      bl #0x30ed6c
0077a9c8  00 10 a0 e1                                      mov r1, r0
0077a9cc  08 00 a0 e1                                      mov r0, r8
0077a9d0  73 50 ee eb                                      bl #0x30eba4
0077a9d4  00 80 a0 e1                                      mov r8, r0
0077a9d8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0077a9dc  40 30 9d e5                                      ldr r3, [sp, #0x40]
0077a9e0  10 a0 94 e5                                      ldr sl, [r4, #0x10]
0077a9e4  00 10 a0 e1                                      mov r1, r0
0077a9e8  10 30 8d e5                                      str r3, [sp, #0x10]
0077a9ec  de 50 ee eb                                      bl #0x30ed6c
0077a9f0  0a 10 a0 e1                                      mov r1, sl
0077a9f4  00 60 a0 e1                                      mov r6, r0
0077a9f8  0a 00 a0 e1                                      mov r0, sl
0077a9fc  da 50 ee eb                                      bl #0x30ed6c
0077aa00  00 10 a0 e1                                      mov r1, r0
0077aa04  06 00 a0 e1                                      mov r0, r6
0077aa08  65 50 ee eb                                      bl #0x30eba4
0077aa0c  00 60 a0 e1                                      mov r6, r0
0077aa10  06 10 a0 e1                                      mov r1, r6
0077aa14  08 00 a0 e1                                      mov r0, r8
0077aa18  3b 4f ee eb                                      bl #0x30e70c
0077aa1c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0077aa20  00 00 50 e3                                      cmp r0, #0
0077aa24  08 60 a0 01                                      moveq r6, r8
0077aa28  06 00 a0 e1                                      mov r0, r6
0077aa2c  14 c0 8d e5                                      str ip, [sp, #0x14]
0077aa30  bb 4d ee eb                                      bl #0x30e124
0077aa34  bd 17 03 e3                                      movw r1, #0x37bd
0077aa38  00 60 a0 e1                                      mov r6, r0
0077aa3c  86 15 43 e3                                      movt r1, #0x3586
0077aa40  02 01 c0 e3                                      bic r0, r0, #0x80000000
0077aa44  30 4f ee eb                                      bl #0x30e70c
0077aa48  00 00 50 e3                                      cmp r0, #0
0077aa4c  4e 00 00 1a                                      bne #0x77ab8c
0077aa50  41 04 a0 e3                                      mov r0, #0x41000000
0077aa54  06 10 a0 e1                                      mov r1, r6
0077aa58  0a 06 80 e2                                      add r0, r0, #0xa00000
0077aa5c  8c 50 ee eb                                      bl #0x30ec94
0077aa60  07 10 a0 e1                                      mov r1, r7
0077aa64  8a 50 ee eb                                      bl #0x30ec94
0077aa68  58 31 9f e5                                      ldr r3, [pc, #0x158]
0077aa6c  03 30 8f e0                                      add r3, pc, r3
0077aa70  00 10 93 e5                                      ldr r1, [r3]
0077aa74  bc 50 ee eb                                      bl #0x30ed6c
0077aa78  7c 90 95 e5                                      ldr sb, [r5, #0x7c]
0077aa7c  00 80 a0 e1                                      mov r8, r0
0077aa80  00 00 59 e3                                      cmp sb, #0
0077aa84  22 00 00 da                                      ble #0x77ab14
0077aa88  78 b0 95 e5                                      ldr fp, [r5, #0x78]
0077aa8c  01 11 a0 e3                                      mov r1, #0x40000000
0077aa90  01 15 81 e2                                      add r1, r1, #0x400000
0077aa94  00 a0 9b e5                                      ldr sl, [fp]
0077aa98  00 70 9a e5                                      ldr r7, [sl]
0077aa9c  07 00 a0 e1                                      mov r0, r7
0077aaa0  b1 50 ee eb                                      bl #0x30ed6c
0077aaa4  08 10 a0 e1                                      mov r1, r8
0077aaa8  17 4f ee eb                                      bl #0x30e70c
0077aaac  00 60 50 e2                                      subs r6, r0, #0
0077aab0  17 00 00 1a                                      bne #0x77ab14
0077aab4  07 10 a0 e1                                      mov r1, r7
0077aab8  08 00 a0 e1                                      mov r0, r8
0077aabc  0d 4e ee eb                                      bl #0x30e2f8
0077aac0  00 00 50 e3                                      cmp r0, #0
0077aac4  0d 00 00 0a                                      beq #0x77ab00
0077aac8  31 00 00 ea                                      b #0x77ab94
0077aacc  06 a1 9b e7                                      ldr sl, [fp, r6, lsl #2]
0077aad0  00 70 9a e5                                      ldr r7, [sl]
0077aad4  07 00 a0 e1                                      mov r0, r7
0077aad8  a3 50 ee eb                                      bl #0x30ed6c
0077aadc  08 10 a0 e1                                      mov r1, r8
0077aae0  09 4f ee eb                                      bl #0x30e70c
0077aae4  00 00 50 e3                                      cmp r0, #0
0077aae8  07 10 a0 e1                                      mov r1, r7
0077aaec  08 00 a0 e1                                      mov r0, r8
0077aaf0  07 00 00 1a                                      bne #0x77ab14
0077aaf4  ff 4d ee eb                                      bl #0x30e2f8
0077aaf8  00 00 50 e3                                      cmp r0, #0
0077aafc  24 00 00 1a                                      bne #0x77ab94
0077ab00  01 60 86 e2                                      add r6, r6, #1
0077ab04  01 11 a0 e3                                      mov r1, #0x40000000
0077ab08  09 00 56 e1                                      cmp r6, sb
0077ab0c  01 15 81 e2                                      add r1, r1, #0x400000
0077ab10  ed ff ff 1a                                      bne #0x77aacc
0077ab14  00 10 a0 e3                                      mov r1, #0
0077ab18  14 00 a0 e3                                      mov r0, #0x14
0077ab1c  21 60 ff eb                                      bl #0x752ba8
0077ab20  fd 15 a0 e3                                      mov r1, #0x3f400000
0077ab24  00 60 a0 e1                                      mov r6, r0
0077ab28  08 00 a0 e1                                      mov r0, r8
0077ab2c  8e 50 ee eb                                      bl #0x30ed6c
0077ab30  20 70 85 e2                                      add r7, r5, #0x20
0077ab34  00 20 a0 e1                                      mov r2, r0
0077ab38  07 10 a0 e1                                      mov r1, r7
0077ab3c  06 00 a0 e1                                      mov r0, r6
0077ab40  85 ff ff eb                                      bl #0x77a95c
0077ab44  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0077ab48  80 20 95 e5                                      ldr r2, [r5, #0x80]
0077ab4c  01 70 83 e2                                      add r7, r3, #1
0077ab50  02 00 57 e1                                      cmp r7, r2
0077ab54  16 00 00 ca                                      bgt #0x77abb4
0077ab58  78 20 95 e5                                      ldr r2, [r5, #0x78]
0077ab5c  06 00 a0 e1                                      mov r0, r6
0077ab60  04 10 a0 e1                                      mov r1, r4
0077ab64  03 61 82 e7                                      str r6, [r2, r3, lsl #2]
0077ab68  7c 70 85 e5                                      str r7, [r5, #0x7c]
0077ab6c  0c 20 8d e2                                      add r2, sp, #0xc
0077ab70  0c 10 92 e8                                      ldm r2, {r2, r3, ip}
0077ab74  00 c0 8d e5                                      str ip, [sp]
0077ab78  8b fa ff eb                                      bl #0x7795ac
0077ab7c  05 00 a0 e1                                      mov r0, r5
0077ab80  1c d0 8d e2                                      add sp, sp, #0x1c
0077ab84  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077ab88  10 fd ff ea                                      b #0x779fd0
0077ab8c  1c d0 8d e2                                      add sp, sp, #0x1c
0077ab90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077ab94  0c 20 8d e2                                      add r2, sp, #0xc
0077ab98  0c 10 92 e8                                      ldm r2, {r2, r3, ip}
0077ab9c  0a 00 a0 e1                                      mov r0, sl
0077aba0  04 10 a0 e1                                      mov r1, r4
0077aba4  40 c0 8d e5                                      str ip, [sp, #0x40]
0077aba8  1c d0 8d e2                                      add sp, sp, #0x1c
0077abac  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077abb0  7d fa ff ea                                      b #0x7795ac
0077abb4  78 00 85 e2                                      add r0, r5, #0x78
0077abb8  c7 10 87 e0                                      add r1, r7, r7, asr #1
0077abbc  89 fb ff eb                                      bl #0x7799e8
0077abc0  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0077abc4  e3 ff ff ea                                      b #0x77ab58
; mapping-symbol data/literal pool
0077abc8  f0 31 22 00                                      .byte 0xf0, 0x31, 0x22, 0x00

; FUNCTION 0x0077ac84, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZThn32_NK7gameswf19shape_character_def13tesselate_newEfPNS_13tesselate_new13mesh_accepterE
; demangled: non-virtual thunk to gameswf::shape_character_def::tesselate_new(float, gameswf::tesselate_new::mesh_accepter*) const
; decoder-mode: arm
0077ac84  20 00 40 e2                                      sub r0, r0, #0x20
0077ac88  ff ff ff ea                                      b #0x77ac8c

; FUNCTION 0x0077ac8c, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZNK7gameswf19shape_character_def13tesselate_newEfPNS_13tesselate_new13mesh_accepterE
; demangled: gameswf::shape_character_def::tesselate_new(float, gameswf::tesselate_new::mesh_accepter*) const
; decoder-mode: arm
0077ac8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077ac90  00 60 a0 e1                                      mov r6, r0
0077ac94  02 00 a0 e1                                      mov r0, r2
0077ac98  02 70 a0 e1                                      mov r7, r2
0077ac9c  01 80 a0 e1                                      mov r8, r1
0077aca0  e9 29 00 eb                                      bl #0x78544c
0077aca4  48 30 96 e5                                      ldr r3, [r6, #0x48]
0077aca8  00 00 53 e3                                      cmp r3, #0
0077acac  16 00 00 da                                      ble #0x77ad0c
0077acb0  00 40 a0 e3                                      mov r4, #0
0077acb4  04 50 a0 e1                                      mov r5, r4
0077acb8  08 00 00 ea                                      b #0x77ace0
0077acbc  24 33 00 eb                                      bl #0x787954
0077acc0  07 00 a0 e1                                      mov r0, r7
0077acc4  08 10 a0 e1                                      mov r1, r8
0077acc8  df 29 00 eb                                      bl #0x78544c
0077accc  48 30 96 e5                                      ldr r3, [r6, #0x48]
0077acd0  01 50 85 e2                                      add r5, r5, #1
0077acd4  28 40 84 e2                                      add r4, r4, #0x28
0077acd8  03 00 55 e1                                      cmp r5, r3
0077acdc  0a 00 00 aa                                      bge #0x77ad0c
0077ace0  44 00 96 e5                                      ldr r0, [r6, #0x44]
0077ace4  04 00 80 e0                                      add r0, r0, r4
0077ace8  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0077acec  00 00 53 e3                                      cmp r3, #0
0077acf0  f1 ff ff 1a                                      bne #0x77acbc
0077acf4  c7 ff ff eb                                      bl #0x77ac18
0077acf8  48 30 96 e5                                      ldr r3, [r6, #0x48]
0077acfc  01 50 85 e2                                      add r5, r5, #1
0077ad00  28 40 84 e2                                      add r4, r4, #0x28
0077ad04  03 00 55 e1                                      cmp r5, r3
0077ad08  f4 ff ff ba                                      blt #0x77ace0
0077ad0c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0077ad10  0f 33 00 ea                                      b #0x787954

; FUNCTION 0x0077ad98, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZThn32_NK7gameswf19shape_character_def9tesselateEfPNS_9tesselate18trapezoid_accepterE
; demangled: non-virtual thunk to gameswf::shape_character_def::tesselate(float, gameswf::tesselate::trapezoid_accepter*) const
; decoder-mode: arm
0077ad98  20 00 40 e2                                      sub r0, r0, #0x20
0077ad9c  ff ff ff ea                                      b #0x77ada0

; FUNCTION 0x0077ada0, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZNK7gameswf19shape_character_def9tesselateEfPNS_9tesselate18trapezoid_accepterE
; demangled: gameswf::shape_character_def::tesselate(float, gameswf::tesselate::trapezoid_accepter*) const
; decoder-mode: arm
0077ada0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077ada4  00 60 a0 e1                                      mov r6, r0
0077ada8  02 00 a0 e1                                      mov r0, r2
0077adac  02 70 a0 e1                                      mov r7, r2
0077adb0  01 80 a0 e1                                      mov r8, r1
0077adb4  a6 31 00 eb                                      bl #0x787454
0077adb8  48 30 96 e5                                      ldr r3, [r6, #0x48]
0077adbc  00 00 53 e3                                      cmp r3, #0
0077adc0  16 00 00 da                                      ble #0x77ae20
0077adc4  00 40 a0 e3                                      mov r4, #0
0077adc8  04 50 a0 e1                                      mov r5, r4
0077adcc  08 00 00 ea                                      b #0x77adf4
0077add0  81 31 00 eb                                      bl #0x7873dc
0077add4  07 00 a0 e1                                      mov r0, r7
0077add8  08 10 a0 e1                                      mov r1, r8
0077addc  9c 31 00 eb                                      bl #0x787454
0077ade0  48 30 96 e5                                      ldr r3, [r6, #0x48]
0077ade4  01 50 85 e2                                      add r5, r5, #1
0077ade8  28 40 84 e2                                      add r4, r4, #0x28
0077adec  03 00 55 e1                                      cmp r5, r3
0077adf0  0a 00 00 aa                                      bge #0x77ae20
0077adf4  44 00 96 e5                                      ldr r0, [r6, #0x44]
0077adf8  04 00 80 e0                                      add r0, r0, r4
0077adfc  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0077ae00  00 00 53 e3                                      cmp r3, #0
0077ae04  f1 ff ff 1a                                      bne #0x77add0
0077ae08  c7 ff ff eb                                      bl #0x77ad2c
0077ae0c  48 30 96 e5                                      ldr r3, [r6, #0x48]
0077ae10  01 50 85 e2                                      add r5, r5, #1
0077ae14  28 40 84 e2                                      add r4, r4, #0x28
0077ae18  03 00 55 e1                                      cmp r5, r3
0077ae1c  f4 ff ff ba                                      blt #0x77adf4
0077ae20  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0077ae24  6c 31 00 ea                                      b #0x7873dc

; FUNCTION 0x0077aef0, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_defaSERKS0_
; demangled: gameswf::shape_character_def::operator=(gameswf::shape_character_def const&)
; decoder-mode: arm
0077aef0  70 40 2d e9                                      push {r4, r5, r6, lr}
0077aef4  00 40 a0 e1                                      mov r4, r0
0077aef8  01 50 a0 e1                                      mov r5, r1
0077aefc  24 00 80 e2                                      add r0, r0, #0x24
0077af00  24 10 81 e2                                      add r1, r1, #0x24
0077af04  4b fe ff eb                                      bl #0x77a838
0077af08  34 00 84 e2                                      add r0, r4, #0x34
0077af0c  34 10 85 e2                                      add r1, r5, #0x34
0077af10  5d fe ff eb                                      bl #0x77a88c
0077af14  44 00 84 e2                                      add r0, r4, #0x44
0077af18  44 10 85 e2                                      add r1, r5, #0x44
0077af1c  c1 ff ff eb                                      bl #0x77ae28
0077af20  54 c0 84 e2                                      add ip, r4, #0x54
0077af24  54 30 85 e2                                      add r3, r5, #0x54
0077af28  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0077af2c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0077af30  64 c0 84 e2                                      add ip, r4, #0x64
0077af34  64 30 85 e2                                      add r3, r5, #0x64
0077af38  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0077af3c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0077af40  74 30 d5 e5                                      ldrb r3, [r5, #0x74]
0077af44  04 00 a0 e1                                      mov r0, r4
0077af48  74 30 c4 e5                                      strb r3, [r4, #0x74]
0077af4c  75 30 d5 e5                                      ldrb r3, [r5, #0x75]
0077af50  75 30 c4 e5                                      strb r3, [r4, #0x75]
0077af54  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0077af58, declared_size=1604, range_size=1604, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_def4readEPNS_6streamEibPNS_20movie_definition_subE
; demangled: gameswf::shape_character_def::read(gameswf::stream*, int, bool, gameswf::movie_definition_sub*)
; decoder-mode: arm
0077af58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077af5c  00 00 53 e3                                      cmp r3, #0
0077af60  b4 d0 4d e2                                      sub sp, sp, #0xb4
0077af64  00 80 a0 e1                                      mov r8, r0
0077af68  28 20 8d e5                                      str r2, [sp, #0x28]
0077af6c  01 40 a0 e1                                      mov r4, r1
0077af70  64 01 00 1a                                      bne #0x77b508
0077af74  24 10 80 e2                                      add r1, r0, #0x24
0077af78  34 20 80 e2                                      add r2, r0, #0x34
0077af7c  38 10 8d e5                                      str r1, [sp, #0x38]
0077af80  3c 20 8d e5                                      str r2, [sp, #0x3c]
0077af84  04 10 a0 e3                                      mov r1, #4
0077af88  04 00 a0 e1                                      mov r0, r4
0077af8c  84 22 00 eb                                      bl #0x7839a4
0077af90  04 10 a0 e3                                      mov r1, #4
0077af94  0c 00 8d e5                                      str r0, [sp, #0xc]
0077af98  04 00 a0 e1                                      mov r0, r4
0077af9c  80 22 00 eb                                      bl #0x7839a4
0077afa0  68 50 8d e2                                      add r5, sp, #0x68
0077afa4  10 00 8d e5                                      str r0, [sp, #0x10]
0077afa8  05 00 a0 e1                                      mov r0, r5
0077afac  fc fa ff eb                                      bl #0x779ba4
0077afb0  00 10 a0 e3                                      mov r1, #0
0077afb4  40 20 8d e2                                      add r2, sp, #0x40
0077afb8  14 c0 82 e2                                      add ip, r2, #0x14
0077afbc  00 60 a0 e3                                      mov r6, #0
0077afc0  2c 10 8d e5                                      str r1, [sp, #0x2c]
0077afc4  24 20 8d e5                                      str r2, [sp, #0x24]
0077afc8  44 30 88 e2                                      add r3, r8, #0x44
0077afcc  20 10 8d e5                                      str r1, [sp, #0x20]
0077afd0  14 e0 85 e2                                      add lr, r5, #0x14
0077afd4  90 10 8d e2                                      add r1, sp, #0x90
0077afd8  a0 20 8d e2                                      add r2, sp, #0xa0
0077afdc  1c 30 8d e5                                      str r3, [sp, #0x1c]
0077afe0  06 70 a0 e1                                      mov r7, r6
0077afe4  30 c0 8d e5                                      str ip, [sp, #0x30]
0077afe8  34 e0 8d e5                                      str lr, [sp, #0x34]
0077afec  14 10 8d e5                                      str r1, [sp, #0x14]
0077aff0  18 20 8d e5                                      str r2, [sp, #0x18]
0077aff4  04 00 a0 e1                                      mov r0, r4
0077aff8  01 10 a0 e3                                      mov r1, #1
0077affc  68 22 00 eb                                      bl #0x7839a4
0077b000  00 00 50 e3                                      cmp r0, #0
0077b004  47 00 00 1a                                      bne #0x77b128
0077b008  04 00 a0 e1                                      mov r0, r4
0077b00c  05 10 a0 e3                                      mov r1, #5
0077b010  63 22 00 eb                                      bl #0x7839a4
0077b014  00 a0 50 e2                                      subs sl, r0, #0
0077b018  ef 00 00 0a                                      beq #0x77b3dc
0077b01c  01 00 1a e3                                      tst sl, #1
0077b020  9b 00 00 1a                                      bne #0x77b294
0077b024  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0077b028  00 00 53 e3                                      cmp r3, #0
0077b02c  00 90 a0 d3                                      movle sb, #0
0077b030  01 90 a0 c3                                      movgt sb, #1
0077b034  aa c0 19 e0                                      ands ip, sb, sl, lsr #1
0077b038  89 00 00 1a                                      bne #0x77b264
0077b03c  2a 91 19 e0                                      ands sb, sb, sl, lsr #2
0077b040  7b 00 00 1a                                      bne #0x77b234
0077b044  10 20 9d e5                                      ldr r2, [sp, #0x10]
0077b048  00 00 52 e3                                      cmp r2, #0
0077b04c  00 30 a0 d3                                      movle r3, #0
0077b050  01 30 a0 c3                                      movgt r3, #1
0077b054  aa 31 13 e0                                      ands r3, r3, sl, lsr #3
0077b058  69 00 00 1a                                      bne #0x77b204
0077b05c  10 00 1a e3                                      tst sl, #0x10
0077b060  e3 ff ff 0a                                      beq #0x77aff4
0077b064  05 00 a0 e1                                      mov r0, r5
0077b068  ab f8 ff eb                                      bl #0x77931c
0077b06c  00 a0 50 e2                                      subs sl, r0, #0
0077b070  08 01 00 0a                                      beq #0x77b498
0077b074  24 00 9d e5                                      ldr r0, [sp, #0x24]
0077b078  c9 fa ff eb                                      bl #0x779ba4
0077b07c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0077b080  24 10 9d e5                                      ldr r1, [sp, #0x24]
0077b084  ea fa ff eb                                      bl #0x779c34
0077b088  30 00 9d e5                                      ldr r0, [sp, #0x30]
0077b08c  00 10 a0 e3                                      mov r1, #0
0077b090  7d 9a ff eb                                      bl #0x761a8c
0077b094  30 00 9d e5                                      ldr r0, [sp, #0x30]
0077b098  00 10 a0 e3                                      mov r1, #0
0077b09c  83 99 ff eb                                      bl #0x7616b0
0077b0a0  48 30 98 e5                                      ldr r3, [r8, #0x48]
0077b0a4  44 20 98 e5                                      ldr r2, [r8, #0x44]
0077b0a8  28 e0 a0 e3                                      mov lr, #0x28
0077b0ac  01 30 43 e2                                      sub r3, r3, #1
0077b0b0  9e 23 23 e0                                      mla r3, lr, r3, r2
0077b0b4  01 20 a0 e3                                      mov r2, #1
0077b0b8  38 00 9d e5                                      ldr r0, [sp, #0x38]
0077b0bc  24 20 c3 e5                                      strb r2, [r3, #0x24]
0077b0c0  28 c0 98 e5                                      ldr ip, [r8, #0x28]
0077b0c4  04 10 a0 e1                                      mov r1, r4
0077b0c8  28 20 9d e5                                      ldr r2, [sp, #0x28]
0077b0cc  20 c0 8d e5                                      str ip, [sp, #0x20]
0077b0d0  38 e0 98 e5                                      ldr lr, [r8, #0x38]
0077b0d4  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0077b0d8  2c e0 8d e5                                      str lr, [sp, #0x2c]
0077b0dc  51 fd ff eb                                      bl #0x77a628
0077b0e0  28 20 9d e5                                      ldr r2, [sp, #0x28]
0077b0e4  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0077b0e8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0077b0ec  04 10 a0 e1                                      mov r1, r4
0077b0f0  70 fd ff eb                                      bl #0x77a6b8
0077b0f4  04 10 a0 e3                                      mov r1, #4
0077b0f8  04 00 a0 e1                                      mov r0, r4
0077b0fc  28 22 00 eb                                      bl #0x7839a4
0077b100  04 10 a0 e3                                      mov r1, #4
0077b104  0c 00 8d e5                                      str r0, [sp, #0xc]
0077b108  04 00 a0 e1                                      mov r0, r4
0077b10c  24 22 00 eb                                      bl #0x7839a4
0077b110  01 10 a0 e3                                      mov r1, #1
0077b114  10 00 8d e5                                      str r0, [sp, #0x10]
0077b118  04 00 a0 e1                                      mov r0, r4
0077b11c  20 22 00 eb                                      bl #0x7839a4
0077b120  00 00 50 e3                                      cmp r0, #0
0077b124  b7 ff ff 0a                                      beq #0x77b008
0077b128  04 00 a0 e1                                      mov r0, r4
0077b12c  01 10 a0 e3                                      mov r1, #1
0077b130  1b 22 00 eb                                      bl #0x7839a4
0077b134  00 00 50 e3                                      cmp r0, #0
0077b138  6e 00 00 1a                                      bne #0x77b2f8
0077b13c  04 10 a0 e3                                      mov r1, #4
0077b140  04 00 a0 e1                                      mov r0, r4
0077b144  16 22 00 eb                                      bl #0x7839a4
0077b148  02 a0 80 e2                                      add sl, r0, #2
0077b14c  0a 10 a0 e1                                      mov r1, sl
0077b150  04 00 a0 e1                                      mov r0, r4
0077b154  43 22 00 eb                                      bl #0x783a68
0077b158  01 4e ee eb                                      bl #0x30e964
0077b15c  07 10 a0 e1                                      mov r1, r7
0077b160  8f 4e ee eb                                      bl #0x30eba4
0077b164  0a 10 a0 e1                                      mov r1, sl
0077b168  00 90 a0 e1                                      mov sb, r0
0077b16c  04 00 a0 e1                                      mov r0, r4
0077b170  3c 22 00 eb                                      bl #0x783a68
0077b174  fa 4d ee eb                                      bl #0x30e964
0077b178  06 10 a0 e1                                      mov r1, r6
0077b17c  88 4e ee eb                                      bl #0x30eba4
0077b180  0a 10 a0 e1                                      mov r1, sl
0077b184  00 b0 a0 e1                                      mov fp, r0
0077b188  04 00 a0 e1                                      mov r0, r4
0077b18c  35 22 00 eb                                      bl #0x783a68
0077b190  f3 4d ee eb                                      bl #0x30e964
0077b194  09 10 a0 e1                                      mov r1, sb
0077b198  81 4e ee eb                                      bl #0x30eba4
0077b19c  0a 10 a0 e1                                      mov r1, sl
0077b1a0  00 70 a0 e1                                      mov r7, r0
0077b1a4  04 00 a0 e1                                      mov r0, r4
0077b1a8  2e 22 00 eb                                      bl #0x783a68
0077b1ac  ec 4d ee eb                                      bl #0x30e964
0077b1b0  0b 10 a0 e1                                      mov r1, fp
0077b1b4  7a 4e ee eb                                      bl #0x30eba4
0077b1b8  0b 20 a0 e1                                      mov r2, fp
0077b1bc  00 60 a0 e1                                      mov r6, r0
0077b1c0  07 30 a0 e1                                      mov r3, r7
0077b1c4  09 10 a0 e1                                      mov r1, sb
0077b1c8  18 00 9d e5                                      ldr r0, [sp, #0x18]
0077b1cc  00 60 8d e5                                      str r6, [sp]
0077b1d0  00 f8 ff eb                                      bl #0x7791d8
0077b1d4  80 30 9d e5                                      ldr r3, [sp, #0x80]
0077b1d8  84 20 9d e5                                      ldr r2, [sp, #0x84]
0077b1dc  01 a0 83 e2                                      add sl, r3, #1
0077b1e0  02 00 5a e1                                      cmp sl, r2
0077b1e4  b6 00 00 ca                                      bgt #0x77b4c4
0077b1e8  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
0077b1ec  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0077b1f0  03 c2 8c e0                                      add ip, ip, r3, lsl #4
0077b1f4  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0077b1f8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0077b1fc  80 a0 8d e5                                      str sl, [sp, #0x80]
0077b200  7b ff ff ea                                      b #0x77aff4
0077b204  05 00 a0 e1                                      mov r0, r5
0077b208  43 f8 ff eb                                      bl #0x77931c
0077b20c  00 90 50 e2                                      subs sb, r0, #0
0077b210  85 00 00 0a                                      beq #0x77b42c
0077b214  04 00 a0 e1                                      mov r0, r4
0077b218  10 10 9d e5                                      ldr r1, [sp, #0x10]
0077b21c  e0 21 00 eb                                      bl #0x7839a4
0077b220  00 00 50 e3                                      cmp r0, #0
0077b224  2c 30 9d c5                                      ldrgt r3, [sp, #0x2c]
0077b228  03 00 80 c0                                      addgt r0, r0, r3
0077b22c  70 00 8d e5                                      str r0, [sp, #0x70]
0077b230  89 ff ff ea                                      b #0x77b05c
0077b234  05 00 a0 e1                                      mov r0, r5
0077b238  37 f8 ff eb                                      bl #0x77931c
0077b23c  00 90 50 e2                                      subs sb, r0, #0
0077b240  82 00 00 0a                                      beq #0x77b450
0077b244  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0077b248  04 00 a0 e1                                      mov r0, r4
0077b24c  d4 21 00 eb                                      bl #0x7839a4
0077b250  00 00 50 e3                                      cmp r0, #0
0077b254  20 10 9d c5                                      ldrgt r1, [sp, #0x20]
0077b258  01 00 80 c0                                      addgt r0, r0, r1
0077b25c  6c 00 8d e5                                      str r0, [sp, #0x6c]
0077b260  77 ff ff ea                                      b #0x77b044
0077b264  05 00 a0 e1                                      mov r0, r5
0077b268  2b f8 ff eb                                      bl #0x77931c
0077b26c  00 b0 50 e2                                      subs fp, r0, #0
0077b270  7f 00 00 0a                                      beq #0x77b474
0077b274  04 00 a0 e1                                      mov r0, r4
0077b278  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0077b27c  c8 21 00 eb                                      bl #0x7839a4
0077b280  00 00 50 e3                                      cmp r0, #0
0077b284  20 e0 9d c5                                      ldrgt lr, [sp, #0x20]
0077b288  0e 00 80 c0                                      addgt r0, r0, lr
0077b28c  68 00 8d e5                                      str r0, [sp, #0x68]
0077b290  69 ff ff ea                                      b #0x77b03c
0077b294  05 00 a0 e1                                      mov r0, r5
0077b298  1f f8 ff eb                                      bl #0x77931c
0077b29c  00 60 50 e2                                      subs r6, r0, #0
0077b2a0  5a 00 00 0a                                      beq #0x77b410
0077b2a4  05 10 a0 e3                                      mov r1, #5
0077b2a8  04 00 a0 e1                                      mov r0, r4
0077b2ac  bc 21 00 eb                                      bl #0x7839a4
0077b2b0  00 60 a0 e1                                      mov r6, r0
0077b2b4  06 10 a0 e1                                      mov r1, r6
0077b2b8  04 00 a0 e1                                      mov r0, r4
0077b2bc  e9 21 00 eb                                      bl #0x783a68
0077b2c0  06 10 a0 e1                                      mov r1, r6
0077b2c4  00 70 a0 e1                                      mov r7, r0
0077b2c8  04 00 a0 e1                                      mov r0, r4
0077b2cc  e5 21 00 eb                                      bl #0x783a68
0077b2d0  00 60 a0 e1                                      mov r6, r0
0077b2d4  07 00 a0 e1                                      mov r0, r7
0077b2d8  a1 4d ee eb                                      bl #0x30e964
0077b2dc  00 70 a0 e1                                      mov r7, r0
0077b2e0  06 00 a0 e1                                      mov r0, r6
0077b2e4  9e 4d ee eb                                      bl #0x30e964
0077b2e8  74 70 8d e5                                      str r7, [sp, #0x74]
0077b2ec  00 60 a0 e1                                      mov r6, r0
0077b2f0  78 00 8d e5                                      str r0, [sp, #0x78]
0077b2f4  4a ff ff ea                                      b #0x77b024
0077b2f8  04 10 a0 e3                                      mov r1, #4
0077b2fc  04 00 a0 e1                                      mov r0, r4
0077b300  a7 21 00 eb                                      bl #0x7839a4
0077b304  01 10 a0 e3                                      mov r1, #1
0077b308  02 a0 80 e2                                      add sl, r0, #2
0077b30c  04 00 a0 e1                                      mov r0, r4
0077b310  a3 21 00 eb                                      bl #0x7839a4
0077b314  00 00 50 e3                                      cmp r0, #0
0077b318  23 00 00 0a                                      beq #0x77b3ac
0077b31c  0a 10 a0 e1                                      mov r1, sl
0077b320  04 00 a0 e1                                      mov r0, r4
0077b324  cf 21 00 eb                                      bl #0x783a68
0077b328  8d 4d ee eb                                      bl #0x30e964
0077b32c  0a 10 a0 e1                                      mov r1, sl
0077b330  00 90 a0 e1                                      mov sb, r0
0077b334  04 00 a0 e1                                      mov r0, r4
0077b338  ca 21 00 eb                                      bl #0x783a68
0077b33c  88 4d ee eb                                      bl #0x30e964
0077b340  00 a0 a0 e1                                      mov sl, r0
0077b344  07 00 a0 e1                                      mov r0, r7
0077b348  09 10 a0 e1                                      mov r1, sb
0077b34c  14 4e ee eb                                      bl #0x30eba4
0077b350  0a 10 a0 e1                                      mov r1, sl
0077b354  00 70 a0 e1                                      mov r7, r0
0077b358  06 00 a0 e1                                      mov r0, r6
0077b35c  10 4e ee eb                                      bl #0x30eba4
0077b360  00 60 a0 e1                                      mov r6, r0
0077b364  07 30 a0 e1                                      mov r3, r7
0077b368  07 10 a0 e1                                      mov r1, r7
0077b36c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0077b370  06 20 a0 e1                                      mov r2, r6
0077b374  00 60 8d e5                                      str r6, [sp]
0077b378  96 f7 ff eb                                      bl #0x7791d8
0077b37c  80 e0 9d e5                                      ldr lr, [sp, #0x80]
0077b380  84 30 9d e5                                      ldr r3, [sp, #0x84]
0077b384  01 a0 8e e2                                      add sl, lr, #1
0077b388  03 00 5a e1                                      cmp sl, r3
0077b38c  51 00 00 ca                                      bgt #0x77b4d8
0077b390  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0077b394  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0077b398  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
0077b39c  0e c2 8c e0                                      add ip, ip, lr, lsl #4
0077b3a0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0077b3a4  80 a0 8d e5                                      str sl, [sp, #0x80]
0077b3a8  11 ff ff ea                                      b #0x77aff4
0077b3ac  04 00 a0 e1                                      mov r0, r4
0077b3b0  01 10 a0 e3                                      mov r1, #1
0077b3b4  7a 21 00 eb                                      bl #0x7839a4
0077b3b8  00 00 50 e3                                      cmp r0, #0
0077b3bc  4a 00 00 1a                                      bne #0x77b4ec
0077b3c0  0a 10 a0 e1                                      mov r1, sl
0077b3c4  04 00 a0 e1                                      mov r0, r4
0077b3c8  a6 21 00 eb                                      bl #0x783a68
0077b3cc  64 4d ee eb                                      bl #0x30e964
0077b3d0  00 a0 a0 e3                                      mov sl, #0
0077b3d4  00 90 a0 e1                                      mov sb, r0
0077b3d8  d9 ff ff ea                                      b #0x77b344
0077b3dc  05 00 a0 e1                                      mov r0, r5
0077b3e0  cd f7 ff eb                                      bl #0x77931c
0077b3e4  00 40 50 e2                                      subs r4, r0, #0
0077b3e8  5a 00 00 0a                                      beq #0x77b558
0077b3ec  14 50 85 e2                                      add r5, r5, #0x14
0077b3f0  05 00 a0 e1                                      mov r0, r5
0077b3f4  00 10 a0 e3                                      mov r1, #0
0077b3f8  a3 99 ff eb                                      bl #0x761a8c
0077b3fc  05 00 a0 e1                                      mov r0, r5
0077b400  00 10 a0 e3                                      mov r1, #0
0077b404  a9 98 ff eb                                      bl #0x7616b0
0077b408  b4 d0 8d e2                                      add sp, sp, #0xb4
0077b40c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077b410  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0077b414  05 10 a0 e1                                      mov r1, r5
0077b418  05 fa ff eb                                      bl #0x779c34
0077b41c  34 00 9d e5                                      ldr r0, [sp, #0x34]
0077b420  06 10 a0 e1                                      mov r1, r6
0077b424  98 99 ff eb                                      bl #0x761a8c
0077b428  9d ff ff ea                                      b #0x77b2a4
0077b42c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0077b430  05 10 a0 e1                                      mov r1, r5
0077b434  fe f9 ff eb                                      bl #0x779c34
0077b438  34 00 9d e5                                      ldr r0, [sp, #0x34]
0077b43c  09 10 a0 e1                                      mov r1, sb
0077b440  91 99 ff eb                                      bl #0x761a8c
0077b444  74 70 8d e5                                      str r7, [sp, #0x74]
0077b448  78 60 8d e5                                      str r6, [sp, #0x78]
0077b44c  70 ff ff ea                                      b #0x77b214
0077b450  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0077b454  05 10 a0 e1                                      mov r1, r5
0077b458  f5 f9 ff eb                                      bl #0x779c34
0077b45c  34 00 9d e5                                      ldr r0, [sp, #0x34]
0077b460  09 10 a0 e1                                      mov r1, sb
0077b464  88 99 ff eb                                      bl #0x761a8c
0077b468  74 70 8d e5                                      str r7, [sp, #0x74]
0077b46c  78 60 8d e5                                      str r6, [sp, #0x78]
0077b470  73 ff ff ea                                      b #0x77b244
0077b474  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0077b478  05 10 a0 e1                                      mov r1, r5
0077b47c  ec f9 ff eb                                      bl #0x779c34
0077b480  34 00 9d e5                                      ldr r0, [sp, #0x34]
0077b484  0b 10 a0 e1                                      mov r1, fp
0077b488  7f 99 ff eb                                      bl #0x761a8c
0077b48c  74 70 8d e5                                      str r7, [sp, #0x74]
0077b490  78 60 8d e5                                      str r6, [sp, #0x78]
0077b494  76 ff ff ea                                      b #0x77b274
0077b498  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0077b49c  05 10 a0 e1                                      mov r1, r5
0077b4a0  e3 f9 ff eb                                      bl #0x779c34
0077b4a4  34 00 9d e5                                      ldr r0, [sp, #0x34]
0077b4a8  0a 10 a0 e1                                      mov r1, sl
0077b4ac  76 99 ff eb                                      bl #0x761a8c
0077b4b0  00 c0 e0 e3                                      mvn ip, #0
0077b4b4  68 c0 8d e5                                      str ip, [sp, #0x68]
0077b4b8  6c c0 8d e5                                      str ip, [sp, #0x6c]
0077b4bc  70 c0 8d e5                                      str ip, [sp, #0x70]
0077b4c0  eb fe ff ea                                      b #0x77b074
0077b4c4  34 00 9d e5                                      ldr r0, [sp, #0x34]
0077b4c8  ca 10 8a e0                                      add r1, sl, sl, asr #1
0077b4cc  77 98 ff eb                                      bl #0x7616b0
0077b4d0  80 30 9d e5                                      ldr r3, [sp, #0x80]
0077b4d4  43 ff ff ea                                      b #0x77b1e8
0077b4d8  34 00 9d e5                                      ldr r0, [sp, #0x34]
0077b4dc  ca 10 8a e0                                      add r1, sl, sl, asr #1
0077b4e0  72 98 ff eb                                      bl #0x7616b0
0077b4e4  80 e0 9d e5                                      ldr lr, [sp, #0x80]
0077b4e8  a8 ff ff ea                                      b #0x77b390
0077b4ec  0a 10 a0 e1                                      mov r1, sl
0077b4f0  04 00 a0 e1                                      mov r0, r4
0077b4f4  5b 21 00 eb                                      bl #0x783a68
0077b4f8  19 4d ee eb                                      bl #0x30e964
0077b4fc  00 90 a0 e3                                      mov sb, #0
0077b500  00 a0 a0 e1                                      mov sl, r0
0077b504  8e ff ff ea                                      b #0x77b344
0077b508  54 00 80 e2                                      add r0, r0, #0x54
0077b50c  b6 6a 00 eb                                      bl #0x795fec
0077b510  28 30 9d e5                                      ldr r3, [sp, #0x28]
0077b514  53 00 53 e3                                      cmp r3, #0x53
0077b518  15 00 00 0a                                      beq #0x77b574
0077b51c  24 c0 88 e2                                      add ip, r8, #0x24
0077b520  0c 00 a0 e1                                      mov r0, ip
0077b524  04 10 a0 e1                                      mov r1, r4
0077b528  28 20 9d e5                                      ldr r2, [sp, #0x28]
0077b52c  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0077b530  34 e0 88 e2                                      add lr, r8, #0x34
0077b534  38 c0 8d e5                                      str ip, [sp, #0x38]
0077b538  3c e0 8d e5                                      str lr, [sp, #0x3c]
0077b53c  39 fc ff eb                                      bl #0x77a628
0077b540  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0077b544  04 10 a0 e1                                      mov r1, r4
0077b548  28 20 9d e5                                      ldr r2, [sp, #0x28]
0077b54c  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0077b550  58 fc ff eb                                      bl #0x77a6b8
0077b554  8a fe ff ea                                      b #0x77af84
0077b558  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0077b55c  05 10 a0 e1                                      mov r1, r5
0077b560  b3 f9 ff eb                                      bl #0x779c34
0077b564  04 10 a0 e1                                      mov r1, r4
0077b568  14 00 85 e2                                      add r0, r5, #0x14
0077b56c  46 99 ff eb                                      bl #0x761a8c
0077b570  9d ff ff ea                                      b #0x77b3ec
0077b574  04 10 a0 e1                                      mov r1, r4
0077b578  64 00 88 e2                                      add r0, r8, #0x64
0077b57c  9a 6a 00 eb                                      bl #0x795fec
0077b580  04 00 a0 e1                                      mov r0, r4
0077b584  67 21 00 eb                                      bl #0x783b28
0077b588  01 30 00 e2                                      and r3, r0, #1
0077b58c  d0 00 e0 e7                                      ubfx r0, r0, #1, #1
0077b590  74 00 c8 e5                                      strb r0, [r8, #0x74]
0077b594  75 30 c8 e5                                      strb r3, [r8, #0x75]
0077b598  df ff ff ea                                      b #0x77b51c

; FUNCTION 0x0077b7f0, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_def18output_cached_dataEPNS_7tu_fileERKNS_13cache_optionsE
; demangled: gameswf::shape_character_def::output_cached_data(gameswf::tu_file*, gameswf::cache_options const&)
; decoder-mode: arm
0077b7f0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0077b7f4  7c 40 90 e5                                      ldr r4, [r0, #0x7c]
0077b7f8  0c d0 4d e2                                      sub sp, sp, #0xc
0077b7fc  00 60 a0 e1                                      mov r6, r0
0077b800  08 00 8d e2                                      add r0, sp, #8
0077b804  01 50 a0 e1                                      mov r5, r1
0077b808  04 40 20 e5                                      str r4, [r0, #-4]!
0077b80c  04 10 a0 e3                                      mov r1, #4
0077b810  00 20 95 e5                                      ldr r2, [r5]
0077b814  0f e0 a0 e1                                      mov lr, pc
0077b818  0c f0 95 e5                                      ldr pc, [r5, #0xc]
0077b81c  00 00 54 e3                                      cmp r4, #0
0077b820  07 00 00 da                                      ble #0x77b844
0077b824  00 70 a0 e3                                      mov r7, #0
0077b828  78 30 96 e5                                      ldr r3, [r6, #0x78]
0077b82c  05 10 a0 e1                                      mov r1, r5
0077b830  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
0077b834  01 70 87 e2                                      add r7, r7, #1
0077b838  95 ff ff eb                                      bl #0x77b694
0077b83c  04 00 57 e1                                      cmp r7, r4
0077b840  f8 ff ff 1a                                      bne #0x77b828
0077b844  0c d0 8d e2                                      add sp, sp, #0xc
0077b848  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0077b878, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_defC1EPNS_6playerE
; demangled: gameswf::shape_character_def::shape_character_def(gameswf::player*)
; decoder-mode: arm
0077b878  70 40 2d e9                                      push {r4, r5, r6, lr}
0077b87c  74 50 9f e5                                      ldr r5, [pc, #0x74]
0077b880  00 40 a0 e1                                      mov r4, r0
0077b884  6e 8c ff eb                                      bl #0x75ea44
0077b888  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0077b88c  05 50 8f e0                                      add r5, pc, r5
0077b890  00 30 a0 e3                                      mov r3, #0
0077b894  02 20 95 e7                                      ldr r2, [r5, r2]
0077b898  84 30 c4 e5                                      strb r3, [r4, #0x84]
0077b89c  24 30 84 e5                                      str r3, [r4, #0x24]
0077b8a0  44 10 82 e2                                      add r1, r2, #0x44
0077b8a4  08 20 82 e2                                      add r2, r2, #8
0077b8a8  00 20 84 e5                                      str r2, [r4]
0077b8ac  20 10 84 e5                                      str r1, [r4, #0x20]
0077b8b0  28 30 84 e5                                      str r3, [r4, #0x28]
0077b8b4  2c 30 84 e5                                      str r3, [r4, #0x2c]
0077b8b8  30 30 c4 e5                                      strb r3, [r4, #0x30]
0077b8bc  34 30 84 e5                                      str r3, [r4, #0x34]
0077b8c0  38 30 84 e5                                      str r3, [r4, #0x38]
0077b8c4  3c 30 84 e5                                      str r3, [r4, #0x3c]
0077b8c8  40 30 c4 e5                                      strb r3, [r4, #0x40]
0077b8cc  44 30 84 e5                                      str r3, [r4, #0x44]
0077b8d0  48 30 84 e5                                      str r3, [r4, #0x48]
0077b8d4  4c 30 84 e5                                      str r3, [r4, #0x4c]
0077b8d8  50 30 c4 e5                                      strb r3, [r4, #0x50]
0077b8dc  74 30 c4 e5                                      strb r3, [r4, #0x74]
0077b8e0  75 30 c4 e5                                      strb r3, [r4, #0x75]
0077b8e4  78 30 84 e5                                      str r3, [r4, #0x78]
0077b8e8  7c 30 84 e5                                      str r3, [r4, #0x7c]
0077b8ec  80 30 84 e5                                      str r3, [r4, #0x80]
0077b8f0  04 00 a0 e1                                      mov r0, r4
0077b8f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0077b8f8  04 92 21 00 d8 0a 00 00                          .byte 0x04, 0x92, 0x21, 0x00, 0xd8, 0x0a, 0x00, 0x00

; FUNCTION 0x0077b900, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_defC2EPNS_6playerE
; demangled: gameswf::shape_character_def::shape_character_def(gameswf::player*)
; decoder-mode: arm
0077b900  70 40 2d e9                                      push {r4, r5, r6, lr}
0077b904  74 50 9f e5                                      ldr r5, [pc, #0x74]
0077b908  00 40 a0 e1                                      mov r4, r0
0077b90c  4c 8c ff eb                                      bl #0x75ea44
0077b910  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0077b914  05 50 8f e0                                      add r5, pc, r5
0077b918  00 30 a0 e3                                      mov r3, #0
0077b91c  02 20 95 e7                                      ldr r2, [r5, r2]
0077b920  84 30 c4 e5                                      strb r3, [r4, #0x84]
0077b924  24 30 84 e5                                      str r3, [r4, #0x24]
0077b928  44 10 82 e2                                      add r1, r2, #0x44
0077b92c  08 20 82 e2                                      add r2, r2, #8
0077b930  00 20 84 e5                                      str r2, [r4]
0077b934  20 10 84 e5                                      str r1, [r4, #0x20]
0077b938  28 30 84 e5                                      str r3, [r4, #0x28]
0077b93c  2c 30 84 e5                                      str r3, [r4, #0x2c]
0077b940  30 30 c4 e5                                      strb r3, [r4, #0x30]
0077b944  34 30 84 e5                                      str r3, [r4, #0x34]
0077b948  38 30 84 e5                                      str r3, [r4, #0x38]
0077b94c  3c 30 84 e5                                      str r3, [r4, #0x3c]
0077b950  40 30 c4 e5                                      strb r3, [r4, #0x40]
0077b954  44 30 84 e5                                      str r3, [r4, #0x44]
0077b958  48 30 84 e5                                      str r3, [r4, #0x48]
0077b95c  4c 30 84 e5                                      str r3, [r4, #0x4c]
0077b960  50 30 c4 e5                                      strb r3, [r4, #0x50]
0077b964  74 30 c4 e5                                      strb r3, [r4, #0x74]
0077b968  75 30 c4 e5                                      strb r3, [r4, #0x75]
0077b96c  78 30 84 e5                                      str r3, [r4, #0x78]
0077b970  7c 30 84 e5                                      str r3, [r4, #0x7c]
0077b974  80 30 84 e5                                      str r3, [r4, #0x80]
0077b978  04 00 a0 e1                                      mov r0, r4
0077b97c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0077b980  7c 91 21 00 d8 0a 00 00                          .byte 0x7c, 0x91, 0x21, 0x00, 0xd8, 0x0a, 0x00, 0x00

; FUNCTION 0x0077be00, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_def25create_character_instanceEPNS_9characterEi
; demangled: gameswf::shape_character_def::create_character_instance(gameswf::character*, int)
; decoder-mode: arm
0077be00  30 40 2d e9                                      push {r4, r5, lr}
0077be04  00 40 a0 e1                                      mov r4, r0
0077be08  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0077be0c  0c d0 4d e2                                      sub sp, sp, #0xc
0077be10  01 50 a0 e1                                      mov r5, r1
0077be14  00 00 50 e3                                      cmp r0, #0
0077be18  02 30 a0 e1                                      mov r3, r2
0077be1c  03 00 00 0a                                      beq #0x77be30
0077be20  18 20 94 e5                                      ldr r2, [r4, #0x18]
0077be24  04 10 d2 e5                                      ldrb r1, [r2, #4]
0077be28  00 00 51 e3                                      cmp r1, #0
0077be2c  04 00 00 0a                                      beq #0x77be44
0077be30  04 10 a0 e1                                      mov r1, r4
0077be34  05 20 a0 e1                                      mov r2, r5
0077be38  0c d0 8d e2                                      add sp, sp, #0xc
0077be3c  30 40 bd e8                                      pop {r4, r5, lr}
0077be40  6e c3 ff ea                                      b #0x76cc00
0077be44  00 10 92 e5                                      ldr r1, [r2]
0077be48  01 10 41 e2                                      sub r1, r1, #1
0077be4c  00 00 51 e3                                      cmp r1, #0
0077be50  00 10 82 e5                                      str r1, [r2]
0077be54  03 00 00 1a                                      bne #0x77be68
0077be58  02 00 a0 e1                                      mov r0, r2
0077be5c  04 30 8d e5                                      str r3, [sp, #4]
0077be60  34 5b ff eb                                      bl #0x752b38
0077be64  04 30 9d e5                                      ldr r3, [sp, #4]
0077be68  00 00 a0 e3                                      mov r0, #0
0077be6c  18 00 84 e5                                      str r0, [r4, #0x18]
0077be70  1c 00 84 e5                                      str r0, [r4, #0x1c]
0077be74  ed ff ff ea                                      b #0x77be30

; FUNCTION 0x0077be78, declared_size=168, range_size=168, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_def7displayEPNS_9characterE
; demangled: gameswf::shape_character_def::display(gameswf::character*)
; decoder-mode: arm
0077be78  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0077be7c  00 40 a0 e1                                      mov r4, r0
0077be80  0c d0 4d e2                                      sub sp, sp, #0xc
0077be84  01 00 a0 e1                                      mov r0, r1
0077be88  01 50 a0 e1                                      mov r5, r1
0077be8c  38 60 ff eb                                      bl #0x753f74
0077be90  00 70 a0 e1                                      mov r7, r0
0077be94  05 00 a0 e1                                      mov r0, r5
0077be98  08 60 ff eb                                      bl #0x753ec0
0077be9c  40 30 95 e5                                      ldr r3, [r5, #0x40]
0077bea0  00 60 a0 e1                                      mov r6, r0
0077bea4  00 00 53 e3                                      cmp r3, #0
0077bea8  03 00 00 0a                                      beq #0x77bebc
0077beac  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
0077beb0  04 20 d0 e5                                      ldrb r2, [r0, #4]
0077beb4  00 00 52 e3                                      cmp r2, #0
0077beb8  0e 00 00 0a                                      beq #0x77bef8
0077bebc  03 00 a0 e1                                      mov r0, r3
0077bec0  00 30 93 e5                                      ldr r3, [r3]
0077bec4  0f e0 a0 e1                                      mov lr, pc
0077bec8  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0077becc  24 c0 84 e2                                      add ip, r4, #0x24
0077bed0  00 30 a0 e1                                      mov r3, r0
0077bed4  07 10 a0 e1                                      mov r1, r7
0077bed8  04 00 a0 e1                                      mov r0, r4
0077bedc  06 20 a0 e1                                      mov r2, r6
0077bee0  34 40 84 e2                                      add r4, r4, #0x34
0077bee4  00 c0 8d e5                                      str ip, [sp]
0077bee8  04 40 8d e5                                      str r4, [sp, #4]
0077beec  a7 fa ff eb                                      bl #0x77a990
0077bef0  0c d0 8d e2                                      add sp, sp, #0xc
0077bef4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0077bef8  00 10 90 e5                                      ldr r1, [r0]
0077befc  01 10 41 e2                                      sub r1, r1, #1
0077bf00  00 00 51 e3                                      cmp r1, #0
0077bf04  00 10 80 e5                                      str r1, [r0]
0077bf08  00 00 00 1a                                      bne #0x77bf10
0077bf0c  09 5b ff eb                                      bl #0x752b38
0077bf10  00 30 a0 e3                                      mov r3, #0
0077bf14  40 30 85 e5                                      str r3, [r5, #0x40]
0077bf18  3c 30 85 e5                                      str r3, [r5, #0x3c]
0077bf1c  e6 ff ff ea                                      b #0x77bebc

; FUNCTION 0x0077c47c, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_def17input_cached_dataEPNS_7tu_fileE
; demangled: gameswf::shape_character_def::input_cached_data(gameswf::tu_file*)
; decoder-mode: arm
0077c47c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077c480  01 50 a0 e1                                      mov r5, r1
0077c484  08 d0 4d e2                                      sub sp, sp, #8
0077c488  04 10 a0 e3                                      mov r1, #4
0077c48c  00 40 a0 e1                                      mov r4, r0
0077c490  00 20 95 e5                                      ldr r2, [r5]
0077c494  01 00 8d e0                                      add r0, sp, r1
0077c498  0f e0 a0 e1                                      mov lr, pc
0077c49c  08 f0 95 e5                                      ldr pc, [r5, #8]
0077c4a0  04 80 9d e5                                      ldr r8, [sp, #4]
0077c4a4  78 70 84 e2                                      add r7, r4, #0x78
0077c4a8  7c 60 94 e5                                      ldr r6, [r4, #0x7c]
0077c4ac  00 00 58 e3                                      cmp r8, #0
0077c4b0  02 00 00 0a                                      beq #0x77c4c0
0077c4b4  80 30 94 e5                                      ldr r3, [r4, #0x80]
0077c4b8  03 00 58 e1                                      cmp r8, r3
0077c4bc  1c 00 00 ca                                      bgt #0x77c534
0077c4c0  06 00 58 e1                                      cmp r8, r6
0077c4c4  07 00 00 da                                      ble #0x77c4e8
0077c4c8  06 31 a0 e1                                      lsl r3, r6, #2
0077c4cc  00 10 a0 e3                                      mov r1, #0
0077c4d0  00 20 97 e5                                      ldr r2, [r7]
0077c4d4  01 60 86 e2                                      add r6, r6, #1
0077c4d8  06 00 58 e1                                      cmp r8, r6
0077c4dc  03 10 82 e7                                      str r1, [r2, r3]
0077c4e0  04 30 83 e2                                      add r3, r3, #4
0077c4e4  f9 ff ff 1a                                      bne #0x77c4d0
0077c4e8  00 00 58 e3                                      cmp r8, #0
0077c4ec  7c 80 84 e5                                      str r8, [r4, #0x7c]
0077c4f0  0d 00 00 da                                      ble #0x77c52c
0077c4f4  00 60 a0 e3                                      mov r6, #0
0077c4f8  00 10 a0 e3                                      mov r1, #0
0077c4fc  14 00 a0 e3                                      mov r0, #0x14
0077c500  a8 59 ff eb                                      bl #0x752ba8
0077c504  00 70 a0 e1                                      mov r7, r0
0077c508  1f f4 ff eb                                      bl #0x77958c
0077c50c  07 00 a0 e1                                      mov r0, r7
0077c510  05 10 a0 e1                                      mov r1, r5
0077c514  50 ff ff eb                                      bl #0x77c25c
0077c518  78 30 94 e5                                      ldr r3, [r4, #0x78]
0077c51c  06 71 83 e7                                      str r7, [r3, r6, lsl #2]
0077c520  01 60 86 e2                                      add r6, r6, #1
0077c524  06 00 58 e1                                      cmp r8, r6
0077c528  f2 ff ff 1a                                      bne #0x77c4f8
0077c52c  08 d0 8d e2                                      add sp, sp, #8
0077c530  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0077c534  07 00 a0 e1                                      mov r0, r7
0077c538  c8 10 88 e0                                      add r1, r8, r8, asr #1
0077c53c  29 f5 ff eb                                      bl #0x7799e8
0077c540  de ff ff ea                                      b #0x77c4c0

; FUNCTION 0x0077c570, declared_size=316, range_size=316, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_defD2Ev
; demangled: gameswf::shape_character_def::~shape_character_def()
; decoder-mode: arm
0077c570  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077c574  24 61 9f e5                                      ldr r6, [pc, #0x124]
0077c578  24 31 9f e5                                      ldr r3, [pc, #0x124]
0077c57c  7c 20 90 e5                                      ldr r2, [r0, #0x7c]
0077c580  06 60 8f e0                                      add r6, pc, r6
0077c584  03 30 96 e7                                      ldr r3, [r6, r3]
0077c588  00 00 52 e3                                      cmp r2, #0
0077c58c  00 50 a0 e1                                      mov r5, r0
0077c590  44 10 83 e2                                      add r1, r3, #0x44
0077c594  08 30 83 e2                                      add r3, r3, #8
0077c598  00 30 80 e5                                      str r3, [r0]
0077c59c  20 10 80 e5                                      str r1, [r0, #0x20]
0077c5a0  02 30 a0 e1                                      mov r3, r2
0077c5a4  32 00 00 da                                      ble #0x77c674
0077c5a8  00 40 a0 e3                                      mov r4, #0
0077c5ac  78 30 95 e5                                      ldr r3, [r5, #0x78]
0077c5b0  04 71 93 e7                                      ldr r7, [r3, r4, lsl #2]
0077c5b4  01 40 84 e2                                      add r4, r4, #1
0077c5b8  00 00 57 e3                                      cmp r7, #0
0077c5bc  05 00 00 0a                                      beq #0x77c5d8
0077c5c0  07 00 a0 e1                                      mov r0, r7
0077c5c4  de ff ff eb                                      bl #0x77c544
0077c5c8  07 00 a0 e1                                      mov r0, r7
0077c5cc  00 10 a0 e3                                      mov r1, #0
0077c5d0  58 59 ff eb                                      bl #0x752b38
0077c5d4  7c 20 95 e5                                      ldr r2, [r5, #0x7c]
0077c5d8  02 00 54 e1                                      cmp r4, r2
0077c5dc  02 30 a0 e1                                      mov r3, r2
0077c5e0  f1 ff ff ba                                      blt #0x77c5ac
0077c5e4  00 00 52 e3                                      cmp r2, #0
0077c5e8  78 00 85 e2                                      add r0, r5, #0x78
0077c5ec  21 00 00 da                                      ble #0x77c678
0077c5f0  00 40 a0 e3                                      mov r4, #0
0077c5f4  44 70 85 e2                                      add r7, r5, #0x44
0077c5f8  04 10 a0 e1                                      mov r1, r4
0077c5fc  7c 40 85 e5                                      str r4, [r5, #0x7c]
0077c600  f8 f4 ff eb                                      bl #0x7799e8
0077c604  07 00 a0 e1                                      mov r0, r7
0077c608  04 10 a0 e1                                      mov r1, r4
0077c60c  36 95 ff eb                                      bl #0x761aec
0077c610  07 00 a0 e1                                      mov r0, r7
0077c614  04 10 a0 e1                                      mov r1, r4
0077c618  34 70 85 e2                                      add r7, r5, #0x34
0077c61c  42 94 ff eb                                      bl #0x76172c
0077c620  07 00 a0 e1                                      mov r0, r7
0077c624  04 10 a0 e1                                      mov r1, r4
0077c628  d9 93 ff eb                                      bl #0x761594
0077c62c  07 00 a0 e1                                      mov r0, r7
0077c630  04 10 a0 e1                                      mov r1, r4
0077c634  24 70 85 e2                                      add r7, r5, #0x24
0077c638  b3 93 ff eb                                      bl #0x76150c
0077c63c  07 00 a0 e1                                      mov r0, r7
0077c640  04 10 a0 e1                                      mov r1, r4
0077c644  88 93 ff eb                                      bl #0x76146c
0077c648  07 00 a0 e1                                      mov r0, r7
0077c64c  04 10 a0 e1                                      mov r1, r4
0077c650  63 93 ff eb                                      bl #0x7613e4
0077c654  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0077c658  05 00 a0 e1                                      mov r0, r5
0077c65c  03 30 96 e7                                      ldr r3, [r6, r3]
0077c660  08 30 83 e2                                      add r3, r3, #8
0077c664  20 30 85 e5                                      str r3, [r5, #0x20]
0077c668  02 86 ff eb                                      bl #0x75de78
0077c66c  05 00 a0 e1                                      mov r0, r5
0077c670  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0077c674  78 00 80 e2                                      add r0, r0, #0x78
0077c678  00 00 52 e3                                      cmp r2, #0
0077c67c  db ff ff aa                                      bge #0x77c5f0
0077c680  02 21 a0 e1                                      lsl r2, r2, #2
0077c684  00 c0 a0 e3                                      mov ip, #0
0077c688  00 10 90 e5                                      ldr r1, [r0]
0077c68c  01 30 93 e2                                      adds r3, r3, #1
0077c690  02 c0 81 e7                                      str ip, [r1, r2]
0077c694  04 20 82 e2                                      add r2, r2, #4
0077c698  fa ff ff 1a                                      bne #0x77c688
0077c69c  d3 ff ff ea                                      b #0x77c5f0
; mapping-symbol data/literal pool
0077c6a0  10 85 21 00 d8 0a 00 00 78 42 00 00              .byte 0x10, 0x85, 0x21, 0x00, 0xd8, 0x0a, 0x00, 0x00, 0x78, 0x42, 0x00, 0x00

; FUNCTION 0x0077c6ac, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_def11flush_cacheEv
; demangled: gameswf::shape_character_def::flush_cache()
; decoder-mode: arm
0077c6ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0077c6b0  7c 20 90 e5                                      ldr r2, [r0, #0x7c]
0077c6b4  00 50 a0 e1                                      mov r5, r0
0077c6b8  00 00 52 e3                                      cmp r2, #0
0077c6bc  02 30 a0 e1                                      mov r3, r2
0077c6c0  14 00 00 da                                      ble #0x77c718
0077c6c4  00 40 a0 e3                                      mov r4, #0
0077c6c8  78 30 95 e5                                      ldr r3, [r5, #0x78]
0077c6cc  04 61 93 e7                                      ldr r6, [r3, r4, lsl #2]
0077c6d0  01 40 84 e2                                      add r4, r4, #1
0077c6d4  00 00 56 e3                                      cmp r6, #0
0077c6d8  05 00 00 0a                                      beq #0x77c6f4
0077c6dc  06 00 a0 e1                                      mov r0, r6
0077c6e0  97 ff ff eb                                      bl #0x77c544
0077c6e4  06 00 a0 e1                                      mov r0, r6
0077c6e8  00 10 a0 e3                                      mov r1, #0
0077c6ec  11 59 ff eb                                      bl #0x752b38
0077c6f0  7c 20 95 e5                                      ldr r2, [r5, #0x7c]
0077c6f4  02 00 54 e1                                      cmp r4, r2
0077c6f8  02 30 a0 e1                                      mov r3, r2
0077c6fc  f1 ff ff ba                                      blt #0x77c6c8
0077c700  00 00 52 e3                                      cmp r2, #0
0077c704  78 00 85 e2                                      add r0, r5, #0x78
0077c708  03 00 00 da                                      ble #0x77c71c
0077c70c  00 30 a0 e3                                      mov r3, #0
0077c710  7c 30 85 e5                                      str r3, [r5, #0x7c]
0077c714  70 80 bd e8                                      pop {r4, r5, r6, pc}
0077c718  78 00 80 e2                                      add r0, r0, #0x78
0077c71c  00 00 52 e3                                      cmp r2, #0
0077c720  f9 ff ff aa                                      bge #0x77c70c
0077c724  02 21 a0 e1                                      lsl r2, r2, #2
0077c728  00 c0 a0 e3                                      mov ip, #0
0077c72c  00 10 90 e5                                      ldr r1, [r0]
0077c730  01 30 93 e2                                      adds r3, r3, #1
0077c734  02 c0 81 e7                                      str ip, [r1, r2]
0077c738  04 20 82 e2                                      add r2, r2, #4
0077c73c  fa ff ff 1a                                      bne #0x77c72c
0077c740  00 30 a0 e3                                      mov r3, #0
0077c744  7c 30 85 e5                                      str r3, [r5, #0x7c]
0077c748  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0077c74c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZThn32_N7gameswf19shape_character_defD1Ev
; demangled: non-virtual thunk to gameswf::shape_character_def::~shape_character_def()
; decoder-mode: arm
0077c74c  20 00 40 e2                                      sub r0, r0, #0x20
0077c750  ff ff ff ea                                      b #0x77c754

; FUNCTION 0x0077c754, declared_size=316, range_size=316, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_defD1Ev
; demangled: gameswf::shape_character_def::~shape_character_def()
; decoder-mode: arm
0077c754  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077c758  24 61 9f e5                                      ldr r6, [pc, #0x124]
0077c75c  24 31 9f e5                                      ldr r3, [pc, #0x124]
0077c760  7c 20 90 e5                                      ldr r2, [r0, #0x7c]
0077c764  06 60 8f e0                                      add r6, pc, r6
0077c768  03 30 96 e7                                      ldr r3, [r6, r3]
0077c76c  00 00 52 e3                                      cmp r2, #0
0077c770  00 50 a0 e1                                      mov r5, r0
0077c774  44 10 83 e2                                      add r1, r3, #0x44
0077c778  08 30 83 e2                                      add r3, r3, #8
0077c77c  00 30 80 e5                                      str r3, [r0]
0077c780  20 10 80 e5                                      str r1, [r0, #0x20]
0077c784  02 30 a0 e1                                      mov r3, r2
0077c788  32 00 00 da                                      ble #0x77c858
0077c78c  00 40 a0 e3                                      mov r4, #0
0077c790  78 30 95 e5                                      ldr r3, [r5, #0x78]
0077c794  04 71 93 e7                                      ldr r7, [r3, r4, lsl #2]
0077c798  01 40 84 e2                                      add r4, r4, #1
0077c79c  00 00 57 e3                                      cmp r7, #0
0077c7a0  05 00 00 0a                                      beq #0x77c7bc
0077c7a4  07 00 a0 e1                                      mov r0, r7
0077c7a8  65 ff ff eb                                      bl #0x77c544
0077c7ac  07 00 a0 e1                                      mov r0, r7
0077c7b0  00 10 a0 e3                                      mov r1, #0
0077c7b4  df 58 ff eb                                      bl #0x752b38
0077c7b8  7c 20 95 e5                                      ldr r2, [r5, #0x7c]
0077c7bc  02 00 54 e1                                      cmp r4, r2
0077c7c0  02 30 a0 e1                                      mov r3, r2
0077c7c4  f1 ff ff ba                                      blt #0x77c790
0077c7c8  00 00 52 e3                                      cmp r2, #0
0077c7cc  78 00 85 e2                                      add r0, r5, #0x78
0077c7d0  21 00 00 da                                      ble #0x77c85c
0077c7d4  00 40 a0 e3                                      mov r4, #0
0077c7d8  44 70 85 e2                                      add r7, r5, #0x44
0077c7dc  04 10 a0 e1                                      mov r1, r4
0077c7e0  7c 40 85 e5                                      str r4, [r5, #0x7c]
0077c7e4  7f f4 ff eb                                      bl #0x7799e8
0077c7e8  07 00 a0 e1                                      mov r0, r7
0077c7ec  04 10 a0 e1                                      mov r1, r4
0077c7f0  bd 94 ff eb                                      bl #0x761aec
0077c7f4  07 00 a0 e1                                      mov r0, r7
0077c7f8  04 10 a0 e1                                      mov r1, r4
0077c7fc  34 70 85 e2                                      add r7, r5, #0x34
0077c800  c9 93 ff eb                                      bl #0x76172c
0077c804  07 00 a0 e1                                      mov r0, r7
0077c808  04 10 a0 e1                                      mov r1, r4
0077c80c  60 93 ff eb                                      bl #0x761594
0077c810  07 00 a0 e1                                      mov r0, r7
0077c814  04 10 a0 e1                                      mov r1, r4
0077c818  24 70 85 e2                                      add r7, r5, #0x24
0077c81c  3a 93 ff eb                                      bl #0x76150c
0077c820  07 00 a0 e1                                      mov r0, r7
0077c824  04 10 a0 e1                                      mov r1, r4
0077c828  0f 93 ff eb                                      bl #0x76146c
0077c82c  07 00 a0 e1                                      mov r0, r7
0077c830  04 10 a0 e1                                      mov r1, r4
0077c834  ea 92 ff eb                                      bl #0x7613e4
0077c838  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0077c83c  05 00 a0 e1                                      mov r0, r5
0077c840  03 30 96 e7                                      ldr r3, [r6, r3]
0077c844  08 30 83 e2                                      add r3, r3, #8
0077c848  20 30 85 e5                                      str r3, [r5, #0x20]
0077c84c  89 85 ff eb                                      bl #0x75de78
0077c850  05 00 a0 e1                                      mov r0, r5
0077c854  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0077c858  78 00 80 e2                                      add r0, r0, #0x78
0077c85c  00 00 52 e3                                      cmp r2, #0
0077c860  db ff ff aa                                      bge #0x77c7d4
0077c864  02 21 a0 e1                                      lsl r2, r2, #2
0077c868  00 c0 a0 e3                                      mov ip, #0
0077c86c  00 10 90 e5                                      ldr r1, [r0]
0077c870  01 30 93 e2                                      adds r3, r3, #1
0077c874  02 c0 81 e7                                      str ip, [r1, r2]
0077c878  04 20 82 e2                                      add r2, r2, #4
0077c87c  fa ff ff 1a                                      bne #0x77c86c
0077c880  d3 ff ff ea                                      b #0x77c7d4
; mapping-symbol data/literal pool
0077c884  2c 83 21 00 d8 0a 00 00 78 42 00 00              .byte 0x2c, 0x83, 0x21, 0x00, 0xd8, 0x0a, 0x00, 0x00, 0x78, 0x42, 0x00, 0x00

; FUNCTION 0x0077c890, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZThn32_N7gameswf19shape_character_defD0Ev
; demangled: non-virtual thunk to gameswf::shape_character_def::~shape_character_def()
; decoder-mode: arm
0077c890  20 00 40 e2                                      sub r0, r0, #0x20
0077c894  ff ff ff ea                                      b #0x77c898

; FUNCTION 0x0077c898, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::shape_character_def
; alias: _ZN7gameswf19shape_character_defD0Ev
; demangled: gameswf::shape_character_def::~shape_character_def()
; decoder-mode: arm
0077c898  10 40 2d e9                                      push {r4, lr}
0077c89c  00 40 a0 e1                                      mov r4, r0
0077c8a0  ab ff ff eb                                      bl #0x77c754
0077c8a4  04 00 a0 e1                                      mov r0, r4
0077c8a8  80 46 ee eb                                      bl #0x30e2b0
0077c8ac  04 00 a0 e1                                      mov r0, r4
0077c8b0  10 80 bd e8                                      pop {r4, pc}
