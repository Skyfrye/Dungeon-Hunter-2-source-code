; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078a2f8, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZNK7gameswf19edit_text_character2isEi
; demangled: gameswf::edit_text_character::is(int) const
; decoder-mode: arm
0078a2f8  20 00 51 e3                                      cmp r1, #0x20
0078a2fc  04 00 00 0a                                      beq #0x78a314
0078a300  01 00 51 e3                                      cmp r1, #1
0078a304  02 00 00 0a                                      beq #0x78a314
0078a308  01 00 71 e2                                      rsbs r0, r1, #1
0078a30c  00 00 a0 33                                      movlo r0, #0
0078a310  1e ff 2f e1                                      bx lr
0078a314  01 00 a0 e3                                      mov r0, #1
0078a318  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078a31c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character17get_character_defEv
; demangled: gameswf::edit_text_character::get_character_def()
; decoder-mode: arm
0078a31c  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
0078a320  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078a338, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character22can_handle_mouse_eventEv
; demangled: gameswf::edit_text_character::can_handle_mouse_event()
; decoder-mode: arm
0078a338  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
0078a33c  4b 00 d3 e5                                      ldrb r0, [r3, #0x4b]
0078a340  01 00 20 e2                                      eor r0, r0, #1
0078a344  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078a348, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character8hit_testEff
; demangled: gameswf::edit_text_character::hit_test(float, float)
; decoder-mode: arm
0078a348  10 40 2d e9                                      push {r4, lr}
0078a34c  00 30 90 e5                                      ldr r3, [r0]
0078a350  0f e0 a0 e1                                      mov lr, pc
0078a354  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0078a358  00 00 50 e2                                      subs r0, r0, #0
0078a35c  01 00 a0 13                                      movne r0, #1
0078a360  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078a364, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZNK7gameswf19edit_text_character12get_var_nameEv
; demangled: gameswf::edit_text_character::get_var_name() const
; decoder-mode: arm
0078a364  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
0078a368  34 00 80 e2                                      add r0, r0, #0x34
0078a36c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078a370, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character18reset_bounding_boxEff
; demangled: gameswf::edit_text_character::reset_bounding_box(float, float)
; decoder-mode: arm
0078a370  34 21 80 e5                                      str r2, [r0, #0x134]
0078a374  2c 11 80 e5                                      str r1, [r0, #0x12c]
0078a378  28 11 80 e5                                      str r1, [r0, #0x128]
0078a37c  30 21 80 e5                                      str r2, [r0, #0x130]
0078a380  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078a384, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character7advanceEf
; demangled: gameswf::edit_text_character::advance(float)
; decoder-mode: arm
0078a384  10 40 2d e9                                      push {r4, lr}
0078a388  00 30 90 e5                                      ldr r3, [r0]
0078a38c  0f e0 a0 e1                                      mov lr, pc
0078a390  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0078a394  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078a398, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character10align_lineENS_23edit_text_character_def9alignmentEif
; demangled: gameswf::edit_text_character::align_line(gameswf::edit_text_character_def::alignment, int, float)
; decoder-mode: arm
0078a398  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0078a39c  00 40 a0 e1                                      mov r4, r0
0078a3a0  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
0078a3a4  00 50 51 e2                                      subs r5, r1, #0
0078a3a8  02 60 a0 e1                                      mov r6, r2
0078a3ac  24 10 90 e5                                      ldr r1, [r0, #0x24]
0078a3b0  03 70 a0 e1                                      mov r7, r3
0078a3b4  28 00 90 e5                                      ldr r0, [r0, #0x28]
0078a3b8  84 81 94 e5                                      ldr r8, [r4, #0x184]
0078a3bc  23 00 00 0a                                      beq #0x78a450
0078a3c0  f9 0f ee eb                                      bl #0x30e3ac
0078a3c4  08 10 a0 e1                                      mov r1, r8
0078a3c8  f7 0f ee eb                                      bl #0x30e3ac
0078a3cc  07 10 a0 e1                                      mov r1, r7
0078a3d0  f5 0f ee eb                                      bl #0x30e3ac
0078a3d4  42 14 a0 e3                                      mov r1, #0x42000000
0078a3d8  0a 16 81 e2                                      add r1, r1, #0xa00000
0078a3dc  f2 0f ee eb                                      bl #0x30e3ac
0078a3e0  02 00 55 e3                                      cmp r5, #2
0078a3e4  00 80 a0 e1                                      mov r8, r0
0078a3e8  19 00 00 0a                                      beq #0x78a454
0078a3ec  01 00 55 e3                                      cmp r5, #1
0078a3f0  00 80 a0 13                                      movne r8, #0
0078a3f4  a8 20 94 e5                                      ldr r2, [r4, #0xa8]
0078a3f8  02 00 56 e1                                      cmp r6, r2
0078a3fc  0f 00 00 aa                                      bge #0x78a440
0078a400  30 50 a0 e3                                      mov r5, #0x30
0078a404  95 06 05 e0                                      mul r5, r5, r6
0078a408  a4 70 94 e5                                      ldr r7, [r4, #0xa4]
0078a40c  08 10 a0 e1                                      mov r1, r8
0078a410  01 60 86 e2                                      add r6, r6, #1
0078a414  05 70 87 e0                                      add r7, r7, r5
0078a418  1c 30 d7 e5                                      ldrb r3, [r7, #0x1c]
0078a41c  30 50 85 e2                                      add r5, r5, #0x30
0078a420  00 00 53 e3                                      cmp r3, #0
0078a424  03 00 00 0a                                      beq #0x78a438
0078a428  10 00 97 e5                                      ldr r0, [r7, #0x10]
0078a42c  dc 11 ee eb                                      bl #0x30eba4
0078a430  10 00 87 e5                                      str r0, [r7, #0x10]
0078a434  a8 20 94 e5                                      ldr r2, [r4, #0xa8]
0078a438  02 00 56 e1                                      cmp r6, r2
0078a43c  f1 ff ff ba                                      blt #0x78a408
0078a440  54 01 94 e5                                      ldr r0, [r4, #0x154]
0078a444  08 10 a0 e1                                      mov r1, r8
0078a448  d5 11 ee eb                                      bl #0x30eba4
0078a44c  54 01 84 e5                                      str r0, [r4, #0x154]
0078a450  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0078a454  3f 14 a0 e3                                      mov r1, #0x3f000000
0078a458  43 12 ee eb                                      bl #0x30ed6c
0078a45c  00 80 a0 e1                                      mov r8, r0
0078a460  e3 ff ff ea                                      b #0x78a3f4

; FUNCTION 0x0078a990, declared_size=964, range_size=964, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character12append_imageERKNS_9tu_stringEii
; demangled: gameswf::edit_text_character::append_image(gameswf::tu_string const&, int, int)
; decoder-mode: arm
0078a990  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078a994  64 d0 4d e2                                      sub sp, sp, #0x64
0078a998  00 c0 90 e5                                      ldr ip, [r0]
0078a99c  00 40 a0 e1                                      mov r4, r0
0078a9a0  02 50 a0 e1                                      mov r5, r2
0078a9a4  03 60 a0 e1                                      mov r6, r3
0078a9a8  01 a0 a0 e1                                      mov sl, r1
0078a9ac  0f e0 a0 e1                                      mov lr, pc
0078a9b0  84 f0 9c e5                                      ldr pc, [ip, #0x84]
0078a9b4  8c 73 9f e5                                      ldr r7, [pc, #0x38c]
0078a9b8  00 80 50 e2                                      subs r8, r0, #0
0078a9bc  07 70 8f e0                                      add r7, pc, r7
0078a9c0  05 00 00 0a                                      beq #0x78a9dc
0078a9c4  00 30 98 e5                                      ldr r3, [r8]
0078a9c8  21 10 a0 e3                                      mov r1, #0x21
0078a9cc  0f e0 a0 e1                                      mov lr, pc
0078a9d0  08 f0 93 e5                                      ldr pc, [r3, #8]
0078a9d4  00 00 50 e3                                      cmp r0, #0
0078a9d8  c6 00 00 1a                                      bne #0x78acf8
0078a9dc  68 33 9f e5                                      ldr r3, [pc, #0x368]
0078a9e0  03 30 97 e7                                      ldr r3, [r7, r3]
0078a9e4  00 30 93 e5                                      ldr r3, [r3]
0078a9e8  00 00 53 e3                                      cmp r3, #0
0078a9ec  bf 00 00 0a                                      beq #0x78acf0
0078a9f0  d0 20 da e1                                      ldrsb r2, [sl]
0078a9f4  05 10 a0 e1                                      mov r1, r5
0078a9f8  01 00 72 e3                                      cmn r2, #1
0078a9fc  01 00 8a 12                                      addne r0, sl, #1
0078aa00  0c 00 9a 05                                      ldreq r0, [sl, #0xc]
0078aa04  06 20 a0 e1                                      mov r2, r6
0078aa08  33 ff 2f e1                                      blx r3
0078aa0c  00 10 50 e2                                      subs r1, r0, #0
0078aa10  b6 00 00 0a                                      beq #0x78acf0
0078aa14  34 33 9f e5                                      ldr r3, [pc, #0x334]
0078aa18  03 30 97 e7                                      ldr r3, [r7, r3]
0078aa1c  00 30 93 e5                                      ldr r3, [r3]
0078aa20  03 00 a0 e1                                      mov r0, r3
0078aa24  00 30 93 e5                                      ldr r3, [r3]
0078aa28  0f e0 a0 e1                                      mov lr, pc
0078aa2c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0078aa30  00 00 55 e3                                      cmp r5, #0
0078aa34  00 70 a0 e1                                      mov r7, r0
0078aa38  b5 00 00 da                                      ble #0x78ad14
0078aa3c  00 00 56 e3                                      cmp r6, #0
0078aa40  ba 00 00 da                                      ble #0x78ad30
0078aa44  3c 30 8d e2                                      add r3, sp, #0x3c
0078aa48  04 00 83 e2                                      add r0, r3, #4
0078aa4c  04 30 8d e5                                      str r3, [sp, #4]
0078aa50  11 33 a0 e3                                      mov r3, #0x44000000
0078aa54  00 80 e0 e3                                      mvn r8, #0
0078aa58  07 10 a0 e1                                      mov r1, r7
0078aa5c  3c 30 8d e5                                      str r3, [sp, #0x3c]
0078aa60  00 70 a0 e3                                      mov r7, #0
0078aa64  02 30 a0 e3                                      mov r3, #2
0078aa68  5e 30 cd e5                                      strb r3, [sp, #0x5e]
0078aa6c  40 70 8d e5                                      str r7, [sp, #0x40]
0078aa70  54 70 8d e5                                      str r7, [sp, #0x54]
0078aa74  b8 75 cd e1                                      strh r7, [sp, #0x58]
0078aa78  ba 85 cd e1                                      strh r8, [sp, #0x5a]
0078aa7c  bc 75 cd e1                                      strh r7, [sp, #0x5c]
0078aa80  2e bf ff eb                                      bl #0x77a740
0078aa84  05 00 a0 e1                                      mov r0, r5
0078aa88  b5 0f ee eb                                      bl #0x30e964
0078aa8c  41 14 a0 e3                                      mov r1, #0x41000000
0078aa90  0a 16 81 e2                                      add r1, r1, #0xa00000
0078aa94  b4 10 ee eb                                      bl #0x30ed6c
0078aa98  00 50 a0 e3                                      mov r5, #0
0078aa9c  01 3b a0 e3                                      mov r3, #0x400
0078aaa0  00 b0 a0 e1                                      mov fp, r0
0078aaa4  06 00 a0 e1                                      mov r0, r6
0078aaa8  b8 35 cd e1                                      strh r3, [sp, #0x58]
0078aaac  44 50 8d e5                                      str r5, [sp, #0x44]
0078aab0  4c 50 8d e5                                      str r5, [sp, #0x4c]
0078aab4  3c b0 8d e5                                      str fp, [sp, #0x3c]
0078aab8  bc 85 cd e1                                      strh r8, [sp, #0x5c]
0078aabc  48 b0 8d e5                                      str fp, [sp, #0x48]
0078aac0  a7 0f ee eb                                      bl #0x30e964
0078aac4  41 14 a0 e3                                      mov r1, #0x41000000
0078aac8  0a 16 81 e2                                      add r1, r1, #0xa00000
0078aacc  a6 10 ee eb                                      bl #0x30ed6c
0078aad0  60 11 94 e5                                      ldr r1, [r4, #0x160]
0078aad4  50 00 8d e5                                      str r0, [sp, #0x50]
0078aad8  31 10 ee eb                                      bl #0x30eba4
0078aadc  a8 10 94 e5                                      ldr r1, [r4, #0xa8]
0078aae0  00 90 a0 e1                                      mov sb, r0
0078aae4  fe 05 a0 e3                                      mov r0, #0x3f800000
0078aae8  07 00 51 e1                                      cmp r1, r7
0078aaec  24 00 8d e5                                      str r0, [sp, #0x24]
0078aaf0  01 00 a0 e3                                      mov r0, #1
0078aaf4  20 50 8d e5                                      str r5, [sp, #0x20]
0078aaf8  1c 50 8d e5                                      str r5, [sp, #0x1c]
0078aafc  0c 80 8d e5                                      str r8, [sp, #0xc]
0078ab00  17 80 cd e5                                      strb r8, [sp, #0x17]
0078ab04  2a 00 cd e5                                      strb r0, [sp, #0x2a]
0078ab08  34 70 8d e5                                      str r7, [sp, #0x34]
0078ab0c  38 70 cd e5                                      strb r7, [sp, #0x38]
0078ab10  10 70 8d e5                                      str r7, [sp, #0x10]
0078ab14  14 80 cd e5                                      strb r8, [sp, #0x14]
0078ab18  15 80 cd e5                                      strb r8, [sp, #0x15]
0078ab1c  16 80 cd e5                                      strb r8, [sp, #0x16]
0078ab20  18 70 cd e5                                      strb r7, [sp, #0x18]
0078ab24  28 70 cd e5                                      strb r7, [sp, #0x28]
0078ab28  29 70 cd e5                                      strb r7, [sp, #0x29]
0078ab2c  2c 70 8d e5                                      str r7, [sp, #0x2c]
0078ab30  30 70 8d e5                                      str r7, [sp, #0x30]
0078ab34  20 90 8d d5                                      strle sb, [sp, #0x20]
0078ab38  0c 50 8d d2                                      addle r5, sp, #0xc
0078ab3c  3e 00 00 da                                      ble #0x78ac3c
0078ab40  30 30 a0 e3                                      mov r3, #0x30
0078ab44  08 10 81 e0                                      add r1, r1, r8
0078ab48  a4 70 94 e5                                      ldr r7, [r4, #0xa4]
0078ab4c  93 01 01 e0                                      mul r1, r3, r1
0078ab50  60 50 8d e2                                      add r5, sp, #0x60
0078ab54  01 30 97 e7                                      ldr r3, [r7, r1]
0078ab58  01 70 87 e0                                      add r7, r7, r1
0078ab5c  54 30 25 e5                                      str r3, [r5, #-0x54]!
0078ab60  04 00 85 e2                                      add r0, r5, #4
0078ab64  04 10 97 e5                                      ldr r1, [r7, #4]
0078ab68  b1 65 ff eb                                      bl #0x764234
0078ab6c  08 30 97 e5                                      ldr r3, [r7, #8]
0078ab70  09 00 a0 e1                                      mov r0, sb
0078ab74  14 30 8d e5                                      str r3, [sp, #0x14]
0078ab78  0c 30 d7 e5                                      ldrb r3, [r7, #0xc]
0078ab7c  18 30 cd e5                                      strb r3, [sp, #0x18]
0078ab80  10 30 97 e5                                      ldr r3, [r7, #0x10]
0078ab84  1c 30 8d e5                                      str r3, [sp, #0x1c]
0078ab88  14 60 97 e5                                      ldr r6, [r7, #0x14]
0078ab8c  20 60 8d e5                                      str r6, [sp, #0x20]
0078ab90  18 30 97 e5                                      ldr r3, [r7, #0x18]
0078ab94  06 10 a0 e1                                      mov r1, r6
0078ab98  24 30 8d e5                                      str r3, [sp, #0x24]
0078ab9c  1c 30 d7 e5                                      ldrb r3, [r7, #0x1c]
0078aba0  28 30 cd e5                                      strb r3, [sp, #0x28]
0078aba4  1d 30 d7 e5                                      ldrb r3, [r7, #0x1d]
0078aba8  29 30 cd e5                                      strb r3, [sp, #0x29]
0078abac  1e 30 d7 e5                                      ldrb r3, [r7, #0x1e]
0078abb0  2a 30 cd e5                                      strb r3, [sp, #0x2a]
0078abb4  cf 0d ee eb                                      bl #0x30e2f8
0078abb8  00 00 50 e3                                      cmp r0, #0
0078abbc  1e 00 00 0a                                      beq #0x78ac3c
0078abc0  a8 a0 94 e5                                      ldr sl, [r4, #0xa8]
0078abc4  08 70 9a e0                                      adds r7, sl, r8
0078abc8  1a 00 00 4a                                      bmi #0x78ac38
0078abcc  30 30 a0 e3                                      mov r3, #0x30
0078abd0  93 07 07 e0                                      mul r7, r3, r7
0078abd4  a4 80 94 e5                                      ldr r8, [r4, #0xa4]
0078abd8  06 00 a0 e1                                      mov r0, r6
0078abdc  07 80 88 e0                                      add r8, r8, r7
0078abe0  14 10 98 e5                                      ldr r1, [r8, #0x14]
0078abe4  e8 0c ee eb                                      bl #0x30df8c
0078abe8  00 00 50 e3                                      cmp r0, #0
0078abec  11 00 00 0a                                      beq #0x78ac38
0078abf0  02 60 4a e2                                      sub r6, sl, #2
0078abf4  30 30 a0 e3                                      mov r3, #0x30
0078abf8  93 06 06 e0                                      mul r6, r3, r6
0078abfc  00 00 00 ea                                      b #0x78ac04
0078ac00  07 80 88 e0                                      add r8, r8, r7
0078ac04  01 00 5a e3                                      cmp sl, #1
0078ac08  14 90 88 e5                                      str sb, [r8, #0x14]
0078ac0c  09 00 00 0a                                      beq #0x78ac38
0078ac10  a4 80 94 e5                                      ldr r8, [r4, #0xa4]
0078ac14  20 10 9d e5                                      ldr r1, [sp, #0x20]
0078ac18  30 70 47 e2                                      sub r7, r7, #0x30
0078ac1c  06 30 88 e0                                      add r3, r8, r6
0078ac20  14 00 93 e5                                      ldr r0, [r3, #0x14]
0078ac24  d8 0c ee eb                                      bl #0x30df8c
0078ac28  00 00 50 e3                                      cmp r0, #0
0078ac2c  01 a0 4a e2                                      sub sl, sl, #1
0078ac30  30 60 46 e2                                      sub r6, r6, #0x30
0078ac34  f1 ff ff 1a                                      bne #0x78ac00
0078ac38  20 90 8d e5                                      str sb, [sp, #0x20]
0078ac3c  88 11 94 e5                                      ldr r1, [r4, #0x188]
0078ac40  80 01 94 e5                                      ldr r0, [r4, #0x180]
0078ac44  d6 0f ee eb                                      bl #0x30eba4
0078ac48  00 10 a0 e3                                      mov r1, #0
0078ac4c  00 60 a0 e1                                      mov r6, r0
0078ac50  a8 0d ee eb                                      bl #0x30e2f8
0078ac54  00 00 50 e3                                      cmp r0, #0
0078ac58  00 60 a0 03                                      moveq r6, #0
0078ac5c  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
0078ac60  06 10 a0 e1                                      mov r1, r6
0078ac64  ce 0f ee eb                                      bl #0x30eba4
0078ac68  00 10 a0 e3                                      mov r1, #0
0078ac6c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0078ac70  04 00 85 e2                                      add r0, r5, #4
0078ac74  6e 65 ff eb                                      bl #0x764234
0078ac78  11 e3 a0 e3                                      mov lr, #0x44000000
0078ac7c  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
0078ac80  00 30 e0 e3                                      mvn r3, #0
0078ac84  00 c0 a0 e3                                      mov ip, #0
0078ac88  01 20 a0 e3                                      mov r2, #1
0078ac8c  02 e5 8e e2                                      add lr, lr, #0x800000
0078ac90  0b 10 a0 e1                                      mov r1, fp
0078ac94  17 30 cd e5                                      strb r3, [sp, #0x17]
0078ac98  24 e0 8d e5                                      str lr, [sp, #0x24]
0078ac9c  29 20 cd e5                                      strb r2, [sp, #0x29]
0078aca0  2a c0 cd e5                                      strb ip, [sp, #0x2a]
0078aca4  14 30 cd e5                                      strb r3, [sp, #0x14]
0078aca8  15 30 cd e5                                      strb r3, [sp, #0x15]
0078acac  16 30 cd e5                                      strb r3, [sp, #0x16]
0078acb0  18 c0 cd e5                                      strb ip, [sp, #0x18]
0078acb4  28 20 cd e5                                      strb r2, [sp, #0x28]
0078acb8  b9 0f ee eb                                      bl #0x30eba4
0078acbc  5c 01 84 e5                                      str r0, [r4, #0x15c]
0078acc0  04 10 9d e5                                      ldr r1, [sp, #4]
0078acc4  20 00 85 e2                                      add r0, r5, #0x20
0078acc8  d3 fe ff eb                                      bl #0x78a81c
0078accc  a4 00 84 e2                                      add r0, r4, #0xa4
0078acd0  05 10 a0 e1                                      mov r1, r5
0078acd4  1b ff ff eb                                      bl #0x78a948
0078acd8  05 00 a0 e1                                      mov r0, r5
0078acdc  35 fe ff eb                                      bl #0x78a5b8
0078ace0  40 00 9d e5                                      ldr r0, [sp, #0x40]
0078ace4  00 00 50 e3                                      cmp r0, #0
0078ace8  00 00 00 0a                                      beq #0x78acf0
0078acec  53 3d ff eb                                      bl #0x75a240
0078acf0  64 d0 8d e2                                      add sp, sp, #0x64
0078acf4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0078acf8  08 00 a0 e1                                      mov r0, r8
0078acfc  00 30 98 e5                                      ldr r3, [r8]
0078ad00  0f e0 a0 e1                                      mov lr, pc
0078ad04  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0078ad08  00 00 55 e3                                      cmp r5, #0
0078ad0c  00 70 a0 e1                                      mov r7, r0
0078ad10  49 ff ff ca                                      bgt #0x78aa3c
0078ad14  00 30 97 e5                                      ldr r3, [r7]
0078ad18  07 00 a0 e1                                      mov r0, r7
0078ad1c  0f e0 a0 e1                                      mov lr, pc
0078ad20  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0078ad24  00 00 56 e3                                      cmp r6, #0
0078ad28  00 50 a0 e1                                      mov r5, r0
0078ad2c  44 ff ff ca                                      bgt #0x78aa44
0078ad30  00 30 97 e5                                      ldr r3, [r7]
0078ad34  07 00 a0 e1                                      mov r0, r7
0078ad38  0f e0 a0 e1                                      mov lr, pc
0078ad3c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0078ad40  00 60 a0 e1                                      mov r6, r0
0078ad44  3e ff ff ea                                      b #0x78aa44
; mapping-symbol data/literal pool
0078ad48  d4 a0 20 00 78 27 00 00 b4 39 00 00              .byte 0xd4, 0xa0, 0x20, 0x00, 0x78, 0x27, 0x00, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x0078ae10, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character19update_world_cxformEv
; demangled: gameswf::edit_text_character::update_world_cxform()
; decoder-mode: arm
0078ae10  10 40 2d e9                                      push {r4, lr}
0078ae14  00 40 a0 e1                                      mov r4, r0
0078ae18  9b 26 ff eb                                      bl #0x75488c
0078ae1c  00 20 e0 e3                                      mvn r2, #0
0078ae20  00 30 e0 e3                                      mvn r3, #0
0078ae24  f0 2e c4 e1                                      strd r2, r3, [r4, #0xe0]
0078ae28  f8 2d c4 e1                                      strd r2, r3, [r4, #0xd8]
0078ae2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078ae30, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character19update_world_matrixEv
; demangled: gameswf::edit_text_character::update_world_matrix()
; decoder-mode: arm
0078ae30  10 40 2d e9                                      push {r4, lr}
0078ae34  00 40 a0 e1                                      mov r4, r0
0078ae38  7d 27 ff eb                                      bl #0x754c34
0078ae3c  00 20 e0 e3                                      mvn r2, #0
0078ae40  00 30 e0 e3                                      mvn r3, #0
0078ae44  f0 2e c4 e1                                      strd r2, r3, [r4, #0xe0]
0078ae48  f8 2d c4 e1                                      strd r2, r3, [r4, #0xd8]
0078ae4c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078aee0, declared_size=480, range_size=480, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::edit_text_character::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
0078aee0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0078aee4  c4 41 9f e5                                      ldr r4, [pc, #0x1c4]
0078aee8  c4 81 9f e5                                      ldr r8, [pc, #0x1c4]
0078aeec  1c d0 4d e2                                      sub sp, sp, #0x1c
0078aef0  04 40 8f e0                                      add r4, pc, r4
0078aef4  08 30 94 e7                                      ldr r3, [r4, r8]
0078aef8  00 70 a0 e1                                      mov r7, r0
0078aefc  01 00 a0 e1                                      mov r0, r1
0078af00  00 30 93 e5                                      ldr r3, [r3]
0078af04  01 50 a0 e1                                      mov r5, r1
0078af08  02 60 a0 e1                                      mov r6, r2
0078af0c  14 30 8d e5                                      str r3, [sp, #0x14]
0078af10  46 9c ff eb                                      bl #0x772030
0078af14  16 00 40 e2                                      sub r0, r0, #0x16
0078af18  09 00 50 e3                                      cmp r0, #9
0078af1c  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
0078af20  14 00 00 ea                                      b #0x78af78
0078af24  25 00 00 ea                                      b #0x78afc0
0078af28  24 00 00 ea                                      b #0x78afc0
0078af2c  27 00 00 ea                                      b #0x78afd0
0078af30  32 00 00 ea                                      b #0x78b000
0078af34  34 00 00 ea                                      b #0x78b00c
0078af38  3a 00 00 ea                                      b #0x78b028
0078af3c  3e 00 00 ea                                      b #0x78b03c
0078af40  42 00 00 ea                                      b #0x78b050
0078af44  46 00 00 ea                                      b #0x78b064
0078af48  ff ff ff ea                                      b #0x78af4c
0078af4c  95 01 d7 e5                                      ldrb r0, [r7, #0x195]
0078af50  94 21 d7 e5                                      ldrb r2, [r7, #0x194]
0078af54  96 31 d7 e5                                      ldrb r3, [r7, #0x196]
0078af58  00 04 a0 e1                                      lsl r0, r0, #8
0078af5c  02 08 80 e1                                      orr r0, r0, r2, lsl #16
0078af60  03 00 80 e1                                      orr r0, r0, r3
0078af64  71 0f ee eb                                      bl #0x30ed30
0078af68  00 20 a0 e1                                      mov r2, r0
0078af6c  01 30 a0 e1                                      mov r3, r1
0078af70  06 00 a0 e1                                      mov r0, r6
0078af74  43 31 00 eb                                      bl #0x797488
0078af78  06 00 a0 e3                                      mov r0, #6
0078af7c  05 10 a0 e1                                      mov r1, r5
0078af80  06 20 a0 e1                                      mov r2, r6
0078af84  9f 87 ff eb                                      bl #0x76ce08
0078af88  00 00 50 e3                                      cmp r0, #0
0078af8c  01 00 a0 13                                      movne r0, #1
0078af90  03 00 00 1a                                      bne #0x78afa4
0078af94  07 00 a0 e1                                      mov r0, r7
0078af98  05 10 a0 e1                                      mov r1, r5
0078af9c  06 20 a0 e1                                      mov r2, r6
0078afa0  3d 24 ff eb                                      bl #0x75409c
0078afa4  08 30 94 e7                                      ldr r3, [r4, r8]
0078afa8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0078afac  00 30 93 e5                                      ldr r3, [r3]
0078afb0  03 00 52 e1                                      cmp r2, r3
0078afb4  3c 00 00 1a                                      bne #0x78b0ac
0078afb8  1c d0 8d e2                                      add sp, sp, #0x1c
0078afbc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0078afc0  06 00 a0 e1                                      mov r0, r6
0078afc4  4e 1f 87 e2                                      add r1, r7, #0x138
0078afc8  c2 30 00 eb                                      bl #0x7972d8
0078afcc  e9 ff ff ea                                      b #0x78af78
0078afd0  28 11 97 e5                                      ldr r1, [r7, #0x128]
0078afd4  2c 01 97 e5                                      ldr r0, [r7, #0x12c]
0078afd8  f3 0c ee eb                                      bl #0x30e3ac
0078afdc  41 14 a0 e3                                      mov r1, #0x41000000
0078afe0  0a 16 81 e2                                      add r1, r1, #0xa00000
0078afe4  2a 0f ee eb                                      bl #0x30ec94
0078afe8  2d 0e ee eb                                      bl #0x30e8a4
0078afec  00 20 a0 e1                                      mov r2, r0
0078aff0  01 30 a0 e1                                      mov r3, r1
0078aff4  06 00 a0 e1                                      mov r0, r6
0078aff8  22 31 00 eb                                      bl #0x797488
0078affc  dd ff ff ea                                      b #0x78af78
0078b000  30 11 97 e5                                      ldr r1, [r7, #0x130]
0078b004  34 01 97 e5                                      ldr r0, [r7, #0x134]
0078b008  f2 ff ff ea                                      b #0x78afd8
0078b00c  71 01 d7 e5                                      ldrb r0, [r7, #0x171]
0078b010  70 21 d7 e5                                      ldrb r2, [r7, #0x170]
0078b014  72 31 d7 e5                                      ldrb r3, [r7, #0x172]
0078b018  00 04 a0 e1                                      lsl r0, r0, #8
0078b01c  02 08 80 e0                                      add r0, r0, r2, lsl #16
0078b020  03 00 80 e0                                      add r0, r0, r3
0078b024  ce ff ff ea                                      b #0x78af64
0078b028  a0 30 97 e5                                      ldr r3, [r7, #0xa0]
0078b02c  06 00 a0 e1                                      mov r0, r6
0078b030  4e 10 d3 e5                                      ldrb r1, [r3, #0x4e]
0078b034  7d 30 00 eb                                      bl #0x797230
0078b038  ce ff ff ea                                      b #0x78af78
0078b03c  a0 30 97 e5                                      ldr r3, [r7, #0xa0]
0078b040  06 00 a0 e1                                      mov r0, r6
0078b044  49 10 d3 e5                                      ldrb r1, [r3, #0x49]
0078b048  78 30 00 eb                                      bl #0x797230
0078b04c  c9 ff ff ea                                      b #0x78af78
0078b050  a0 30 97 e5                                      ldr r3, [r7, #0xa0]
0078b054  06 00 a0 e1                                      mov r0, r6
0078b058  48 10 d3 e5                                      ldrb r1, [r3, #0x48]
0078b05c  73 30 00 eb                                      bl #0x797230
0078b060  c4 ff ff ea                                      b #0x78af78
0078b064  a0 30 97 e5                                      ldr r3, [r7, #0xa0]
0078b068  4b 30 d3 e5                                      ldrb r3, [r3, #0x4b]
0078b06c  00 00 53 e3                                      cmp r3, #0
0078b070  0a 00 00 1a                                      bne #0x78b0a0
0078b074  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0078b078  01 10 8f e0                                      add r1, pc, r1
0078b07c  0d 00 a0 e1                                      mov r0, sp
0078b080  7d 22 f2 eb                                      bl #0x413a7c
0078b084  06 00 a0 e1                                      mov r0, r6
0078b088  0d 10 a0 e1                                      mov r1, sp
0078b08c  91 30 00 eb                                      bl #0x7972d8
0078b090  0d 00 a0 e1                                      mov r0, sp
0078b094  0d a0 a0 e1                                      mov sl, sp
0078b098  8e 53 f2 eb                                      bl #0x41fed8
0078b09c  b5 ff ff ea                                      b #0x78af78
0078b0a0  14 10 9f e5                                      ldr r1, [pc, #0x14]
0078b0a4  01 10 8f e0                                      add r1, pc, r1
0078b0a8  f3 ff ff ea                                      b #0x78b07c
0078b0ac  97 0c ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0078b0b0  a0 9b 20 00 ac 40 00 00 38 ee 17 00 14 ee 17 00  .byte 0xa0, 0x9b, 0x20, 0x00, 0xac, 0x40, 0x00, 0x00, 0x38, 0xee, 0x17, 0x00, 0x14, 0xee, 0x17, 0x00

; FUNCTION 0x0078b128, declared_size=280, range_size=280, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character11show_cursorEv
; demangled: gameswf::edit_text_character::show_cursor()
; decoder-mode: arm
0078b128  70 40 2d e9                                      push {r4, r5, r6, lr}
0078b12c  58 31 90 e5                                      ldr r3, [r0, #0x158]
0078b130  54 21 90 e5                                      ldr r2, [r0, #0x154]
0078b134  74 11 90 e5                                      ldr r1, [r0, #0x174]
0078b138  30 d0 4d e2                                      sub sp, sp, #0x30
0078b13c  00 40 a0 e1                                      mov r4, r0
0078b140  03 00 a0 e1                                      mov r0, r3
0078b144  24 20 8d e5                                      str r2, [sp, #0x24]
0078b148  1c 20 8d e5                                      str r2, [sp, #0x1c]
0078b14c  20 30 8d e5                                      str r3, [sp, #0x20]
0078b150  93 0e ee eb                                      bl #0x30eba4
0078b154  28 00 8d e5                                      str r0, [sp, #0x28]
0078b158  04 00 a0 e1                                      mov r0, r4
0078b15c  84 23 ff eb                                      bl #0x753f74
0078b160  04 c0 8d e2                                      add ip, sp, #4
0078b164  cc 40 9f e5                                      ldr r4, [pc, #0xcc]
0078b168  00 50 a0 e1                                      mov r5, r0
0078b16c  0c 60 a0 e1                                      mov r6, ip
0078b170  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
0078b174  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
0078b178  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
0078b17c  04 40 8f e0                                      add r4, pc, r4
0078b180  04 10 95 e5                                      ldr r1, [r5, #4]
0078b184  02 40 94 e7                                      ldr r4, [r4, r2]
0078b188  00 00 95 e5                                      ldr r0, [r5]
0078b18c  04 10 86 e5                                      str r1, [r6, #4]
0078b190  00 50 94 e5                                      ldr r5, [r4]
0078b194  00 00 86 e5                                      str r0, [r6]
0078b198  00 00 55 e3                                      cmp r5, #0
0078b19c  23 00 00 0a                                      beq #0x78b230
0078b1a0  05 00 a0 e1                                      mov r0, r5
0078b1a4  0c 10 a0 e1                                      mov r1, ip
0078b1a8  00 30 95 e5                                      ldr r3, [r5]
0078b1ac  0f e0 a0 e1                                      mov lr, pc
0078b1b0  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0078b1b4  00 00 94 e5                                      ldr r0, [r4]
0078b1b8  00 00 50 e3                                      cmp r0, #0
0078b1bc  1b 00 00 0a                                      beq #0x78b230
0078b1c0  00 30 90 e5                                      ldr r3, [r0]
0078b1c4  00 10 e0 e3                                      mvn r1, #0
0078b1c8  00 20 a0 e3                                      mov r2, #0
0078b1cc  78 30 93 e5                                      ldr r3, [r3, #0x78]
0078b1d0  2d 20 cd e5                                      strb r2, [sp, #0x2d]
0078b1d4  2c 10 cd e5                                      strb r1, [sp, #0x2c]
0078b1d8  2f 10 cd e5                                      strb r1, [sp, #0x2f]
0078b1dc  2e 20 cd e5                                      strb r2, [sp, #0x2e]
0078b1e0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0078b1e4  33 ff 2f e1                                      blx r3
0078b1e8  00 30 94 e5                                      ldr r3, [r4]
0078b1ec  00 00 53 e3                                      cmp r3, #0
0078b1f0  0e 00 00 0a                                      beq #0x78b230
0078b1f4  42 14 a0 e3                                      mov r1, #0x42000000
0078b1f8  03 00 a0 e1                                      mov r0, r3
0078b1fc  02 16 81 e2                                      add r1, r1, #0x200000
0078b200  00 30 93 e5                                      ldr r3, [r3]
0078b204  0f e0 a0 e1                                      mov lr, pc
0078b208  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
0078b20c  00 30 94 e5                                      ldr r3, [r4]
0078b210  00 00 53 e3                                      cmp r3, #0
0078b214  05 00 00 0a                                      beq #0x78b230
0078b218  03 00 a0 e1                                      mov r0, r3
0078b21c  1c 10 8d e2                                      add r1, sp, #0x1c
0078b220  00 30 93 e5                                      ldr r3, [r3]
0078b224  02 20 a0 e3                                      mov r2, #2
0078b228  0f e0 a0 e1                                      mov lr, pc
0078b22c  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0078b230  30 d0 8d e2                                      add sp, sp, #0x30
0078b234  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0078b238  14 99 20 00 b4 39 00 00                          .byte 0x14, 0x99, 0x20, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x0078bb58, declared_size=180, range_size=180, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character24get_topmost_mouse_entityEff
; demangled: gameswf::edit_text_character::get_topmost_mouse_entity(float, float)
; decoder-mode: arm
0078bb58  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0078bb5c  00 40 a0 e1                                      mov r4, r0
0078bb60  9b 00 d0 e5                                      ldrb r0, [r0, #0x9b]
0078bb64  14 d0 4d e2                                      sub sp, sp, #0x14
0078bb68  01 c0 a0 e1                                      mov ip, r1
0078bb6c  00 00 50 e3                                      cmp r0, #0
0078bb70  02 30 a0 e1                                      mov r3, r2
0078bb74  02 00 00 1a                                      bne #0x78bb84
0078bb78  00 00 a0 e3                                      mov r0, #0
0078bb7c  14 d0 8d e2                                      add sp, sp, #0x14
0078bb80  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0078bb84  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0078bb88  00 e0 a0 e3                                      mov lr, #0
0078bb8c  08 10 8d e2                                      add r1, sp, #8
0078bb90  0d 20 a0 e1                                      mov r2, sp
0078bb94  0c e0 8d e5                                      str lr, [sp, #0xc]
0078bb98  00 c0 8d e5                                      str ip, [sp]
0078bb9c  04 30 8d e5                                      str r3, [sp, #4]
0078bba0  08 e0 8d e5                                      str lr, [sp, #8]
0078bba4  74 20 ff eb                                      bl #0x753d7c
0078bba8  a0 50 94 e5                                      ldr r5, [r4, #0xa0]
0078bbac  08 60 9d e5                                      ldr r6, [sp, #8]
0078bbb0  0c 70 9d e5                                      ldr r7, [sp, #0xc]
0078bbb4  24 10 95 e5                                      ldr r1, [r5, #0x24]
0078bbb8  06 00 a0 e1                                      mov r0, r6
0078bbbc  d2 0a ee eb                                      bl #0x30e70c
0078bbc0  00 00 50 e3                                      cmp r0, #0
0078bbc4  eb ff ff 1a                                      bne #0x78bb78
0078bbc8  06 00 a0 e1                                      mov r0, r6
0078bbcc  28 10 95 e5                                      ldr r1, [r5, #0x28]
0078bbd0  c8 09 ee eb                                      bl #0x30e2f8
0078bbd4  00 00 50 e3                                      cmp r0, #0
0078bbd8  e6 ff ff 1a                                      bne #0x78bb78
0078bbdc  07 00 a0 e1                                      mov r0, r7
0078bbe0  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
0078bbe4  c8 0a ee eb                                      bl #0x30e70c
0078bbe8  00 00 50 e3                                      cmp r0, #0
0078bbec  e1 ff ff 1a                                      bne #0x78bb78
0078bbf0  07 00 a0 e1                                      mov r0, r7
0078bbf4  30 10 95 e5                                      ldr r1, [r5, #0x30]
0078bbf8  be 09 ee eb                                      bl #0x30e2f8
0078bbfc  00 00 50 e3                                      cmp r0, #0
0078bc00  04 00 a0 01                                      moveq r0, r4
0078bc04  dc ff ff 0a                                      beq #0x78bb7c
0078bc08  da ff ff ea                                      b #0x78bb78

; FUNCTION 0x0078c0ec, declared_size=484, range_size=484, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character14preload_glyphsEPKNS_6filterE
; demangled: gameswf::edit_text_character::preload_glyphs(gameswf::filter const*)
; decoder-mode: arm
0078c0ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078c0f0  a8 30 90 e5                                      ldr r3, [r0, #0xa8]
0078c0f4  00 60 a0 e3                                      mov r6, #0
0078c0f8  24 d0 4d e2                                      sub sp, sp, #0x24
0078c0fc  06 00 53 e1                                      cmp r3, r6
0078c100  00 40 a0 e1                                      mov r4, r0
0078c104  0c 10 8d e5                                      str r1, [sp, #0xc]
0078c108  10 60 8d e5                                      str r6, [sp, #0x10]
0078c10c  18 60 8d e5                                      str r6, [sp, #0x18]
0078c110  1c 60 cd e5                                      strb r6, [sp, #0x1c]
0078c114  10 70 8d d2                                      addle r7, sp, #0x10
0078c118  5c 00 00 da                                      ble #0x78c290
0078c11c  08 60 8d e5                                      str r6, [sp, #8]
0078c120  a4 90 94 e5                                      ldr sb, [r4, #0xa4]
0078c124  06 30 a0 e1                                      mov r3, r6
0078c128  00 00 53 e3                                      cmp r3, #0
0078c12c  10 70 8d e2                                      add r7, sp, #0x10
0078c130  06 50 a0 e1                                      mov r5, r6
0078c134  06 90 89 e0                                      add sb, sb, r6
0078c138  3e 00 00 da                                      ble #0x78c238
0078c13c  14 50 8d e5                                      str r5, [sp, #0x14]
0078c140  24 30 99 e5                                      ldr r3, [sb, #0x24]
0078c144  00 00 53 e3                                      cmp r3, #0
0078c148  05 30 a0 d1                                      movle r3, r5
0078c14c  2d 00 00 da                                      ble #0x78c208
0078c150  05 a0 a0 e1                                      mov sl, r5
0078c154  05 30 a0 e1                                      mov r3, r5
0078c158  09 00 00 ea                                      b #0x78c184
0078c15c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0078c160  b0 b2 db e1                                      ldrh fp, [fp, #0x20]
0078c164  83 30 a0 e1                                      lsl r3, r3, #1
0078c168  24 a0 8a e2                                      add sl, sl, #0x24
0078c16c  b3 b0 82 e1                                      strh fp, [r2, r3]
0078c170  14 80 8d e5                                      str r8, [sp, #0x14]
0078c174  24 20 99 e5                                      ldr r2, [sb, #0x24]
0078c178  08 30 a0 e1                                      mov r3, r8
0078c17c  02 00 58 e1                                      cmp r8, r2
0078c180  0a 00 00 aa                                      bge #0x78c1b0
0078c184  18 20 9d e5                                      ldr r2, [sp, #0x18]
0078c188  20 b0 99 e5                                      ldr fp, [sb, #0x20]
0078c18c  01 80 83 e2                                      add r8, r3, #1
0078c190  02 00 58 e1                                      cmp r8, r2
0078c194  0a b0 8b e0                                      add fp, fp, sl
0078c198  ef ff ff da                                      ble #0x78c15c
0078c19c  07 00 a0 e1                                      mov r0, r7
0078c1a0  c8 10 88 e0                                      add r1, r8, r8, asr #1
0078c1a4  34 b7 ff eb                                      bl #0x779e7c
0078c1a8  14 30 9d e5                                      ldr r3, [sp, #0x14]
0078c1ac  ea ff ff ea                                      b #0x78c15c
0078c1b0  30 30 94 e5                                      ldr r3, [r4, #0x30]
0078c1b4  00 00 53 e3                                      cmp r3, #0
0078c1b8  03 00 00 0a                                      beq #0x78c1cc
0078c1bc  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0078c1c0  04 20 d0 e5                                      ldrb r2, [r0, #4]
0078c1c4  00 00 52 e3                                      cmp r2, #0
0078c1c8  23 00 00 0a                                      beq #0x78c25c
0078c1cc  41 14 a0 e3                                      mov r1, #0x41000000
0078c1d0  18 00 99 e5                                      ldr r0, [sb, #0x18]
0078c1d4  0a 16 81 e2                                      add r1, r1, #0xa00000
0078c1d8  ac a0 93 e5                                      ldr sl, [r3, #0xac]
0078c1dc  ac 0a ee eb                                      bl #0x30ec94
0078c1e0  b9 08 ee eb                                      bl #0x30e4cc
0078c1e4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0078c1e8  04 30 99 e5                                      ldr r3, [sb, #4]
0078c1ec  08 20 a0 e1                                      mov r2, r8
0078c1f0  00 00 8d e5                                      str r0, [sp]
0078c1f4  10 10 9d e5                                      ldr r1, [sp, #0x10]
0078c1f8  0a 00 a0 e1                                      mov r0, sl
0078c1fc  04 c0 8d e5                                      str ip, [sp, #4]
0078c200  0e fc ff eb                                      bl #0x78b240
0078c204  14 30 9d e5                                      ldr r3, [sp, #0x14]
0078c208  08 00 9d e5                                      ldr r0, [sp, #8]
0078c20c  a8 20 94 e5                                      ldr r2, [r4, #0xa8]
0078c210  30 60 86 e2                                      add r6, r6, #0x30
0078c214  01 00 80 e2                                      add r0, r0, #1
0078c218  02 00 50 e1                                      cmp r0, r2
0078c21c  08 00 8d e5                                      str r0, [sp, #8]
0078c220  18 00 00 aa                                      bge #0x78c288
0078c224  14 30 9d e5                                      ldr r3, [sp, #0x14]
0078c228  a4 90 94 e5                                      ldr sb, [r4, #0xa4]
0078c22c  00 00 53 e3                                      cmp r3, #0
0078c230  06 90 89 e0                                      add sb, sb, r6
0078c234  c0 ff ff ca                                      bgt #0x78c13c
0078c238  bf ff ff aa                                      bge #0x78c13c
0078c23c  83 20 a0 e1                                      lsl r2, r3, #1
0078c240  10 10 9d e5                                      ldr r1, [sp, #0x10]
0078c244  00 00 a0 e3                                      mov r0, #0
0078c248  01 30 93 e2                                      adds r3, r3, #1
0078c24c  b2 00 81 e1                                      strh r0, [r1, r2]
0078c250  02 20 82 e2                                      add r2, r2, #2
0078c254  f9 ff ff 1a                                      bne #0x78c240
0078c258  b7 ff ff ea                                      b #0x78c13c
0078c25c  00 10 90 e5                                      ldr r1, [r0]
0078c260  01 10 41 e2                                      sub r1, r1, #1
0078c264  00 00 51 e3                                      cmp r1, #0
0078c268  00 10 80 e5                                      str r1, [r0]
0078c26c  00 00 00 1a                                      bne #0x78c274
0078c270  30 1a ff eb                                      bl #0x752b38
0078c274  14 80 9d e5                                      ldr r8, [sp, #0x14]
0078c278  05 30 a0 e1                                      mov r3, r5
0078c27c  2c 50 84 e5                                      str r5, [r4, #0x2c]
0078c280  30 50 84 e5                                      str r5, [r4, #0x30]
0078c284  d0 ff ff ea                                      b #0x78c1cc
0078c288  00 00 53 e3                                      cmp r3, #0
0078c28c  06 00 00 da                                      ble #0x78c2ac
0078c290  00 30 a0 e3                                      mov r3, #0
0078c294  07 00 a0 e1                                      mov r0, r7
0078c298  03 10 a0 e1                                      mov r1, r3
0078c29c  14 30 8d e5                                      str r3, [sp, #0x14]
0078c2a0  f5 b6 ff eb                                      bl #0x779e7c
0078c2a4  24 d0 8d e2                                      add sp, sp, #0x24
0078c2a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0078c2ac  f7 ff ff aa                                      bge #0x78c290
0078c2b0  83 20 a0 e1                                      lsl r2, r3, #1
0078c2b4  10 10 9d e5                                      ldr r1, [sp, #0x10]
0078c2b8  00 c0 a0 e3                                      mov ip, #0
0078c2bc  01 30 93 e2                                      adds r3, r3, #1
0078c2c0  b2 c0 81 e1                                      strh ip, [r1, r2]
0078c2c4  02 20 82 e2                                      add r2, r2, #2
0078c2c8  f9 ff ff 1a                                      bne #0x78c2b4
0078c2cc  ef ff ff ea                                      b #0x78c290

; FUNCTION 0x0078c2d0, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character14preload_glyphsEv
; demangled: gameswf::edit_text_character::preload_glyphs()
; decoder-mode: arm
0078c2d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0078c2d4  50 30 90 e5                                      ldr r3, [r0, #0x50]
0078c2d8  00 60 a0 e1                                      mov r6, r0
0078c2dc  08 20 93 e5                                      ldr r2, [r3, #8]
0078c2e0  00 00 52 e3                                      cmp r2, #0
0078c2e4  0b 00 00 da                                      ble #0x78c318
0078c2e8  00 40 a0 e3                                      mov r4, #0
0078c2ec  04 50 a0 e1                                      mov r5, r4
0078c2f0  04 10 93 e5                                      ldr r1, [r3, #4]
0078c2f4  06 00 a0 e1                                      mov r0, r6
0078c2f8  01 50 85 e2                                      add r5, r5, #1
0078c2fc  04 10 81 e0                                      add r1, r1, r4
0078c300  79 ff ff eb                                      bl #0x78c0ec
0078c304  50 30 96 e5                                      ldr r3, [r6, #0x50]
0078c308  2c 40 84 e2                                      add r4, r4, #0x2c
0078c30c  08 20 93 e5                                      ldr r2, [r3, #8]
0078c310  02 00 55 e1                                      cmp r5, r2
0078c314  f5 ff ff ba                                      blt #0x78c2f0
0078c318  06 00 a0 e1                                      mov r0, r6
0078c31c  00 10 a0 e3                                      mov r1, #0
0078c320  70 40 bd e8                                      pop {r4, r5, r6, lr}
0078c324  70 ff ff ea                                      b #0x78c0ec

; FUNCTION 0x0078c328, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_characterD1Ev
; demangled: gameswf::edit_text_character::~edit_text_character()
; decoder-mode: arm
0078c328  70 40 2d e9                                      push {r4, r5, r6, lr}
0078c32c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0078c330  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0078c334  00 40 a0 e1                                      mov r4, r0
0078c338  03 30 8f e0                                      add r3, pc, r3
0078c33c  78 01 90 e5                                      ldr r0, [r0, #0x178]
0078c340  02 20 93 e7                                      ldr r2, [r3, r2]
0078c344  00 00 50 e3                                      cmp r0, #0
0078c348  08 20 82 e2                                      add r2, r2, #8
0078c34c  00 20 84 e5                                      str r2, [r4]
0078c350  00 00 00 0a                                      beq #0x78c358
0078c354  b9 37 ff eb                                      bl #0x75a240
0078c358  38 31 d4 e5                                      ldrb r3, [r4, #0x138]
0078c35c  ff 00 53 e3                                      cmp r3, #0xff
0078c360  1d 00 00 0a                                      beq #0x78c3dc
0078c364  c4 50 84 e2                                      add r5, r4, #0xc4
0078c368  d8 00 84 e2                                      add r0, r4, #0xd8
0078c36c  ad fd ff eb                                      bl #0x78ba28
0078c370  05 00 a0 e1                                      mov r0, r5
0078c374  55 fd ff eb                                      bl #0x78b8d0
0078c378  05 00 a0 e1                                      mov r0, r5
0078c37c  00 10 a0 e3                                      mov r1, #0
0078c380  b4 50 84 e2                                      add r5, r4, #0xb4
0078c384  60 54 ff eb                                      bl #0x76150c
0078c388  05 00 a0 e1                                      mov r0, r5
0078c38c  00 10 a0 e3                                      mov r1, #0
0078c390  35 54 ff eb                                      bl #0x76146c
0078c394  05 00 a0 e1                                      mov r0, r5
0078c398  00 10 a0 e3                                      mov r1, #0
0078c39c  a4 50 84 e2                                      add r5, r4, #0xa4
0078c3a0  0f 54 ff eb                                      bl #0x7613e4
0078c3a4  00 10 a0 e3                                      mov r1, #0
0078c3a8  05 00 a0 e1                                      mov r0, r5
0078c3ac  46 fe ff eb                                      bl #0x78bccc
0078c3b0  05 00 a0 e1                                      mov r0, r5
0078c3b4  00 10 a0 e3                                      mov r1, #0
0078c3b8  8d f8 ff eb                                      bl #0x78a5f4
0078c3bc  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
0078c3c0  00 00 50 e3                                      cmp r0, #0
0078c3c4  00 00 00 0a                                      beq #0x78c3cc
0078c3c8  9c 37 ff eb                                      bl #0x75a240
0078c3cc  04 00 a0 e1                                      mov r0, r4
0078c3d0  67 46 ff eb                                      bl #0x75dd74
0078c3d4  04 00 a0 e1                                      mov r0, r4
0078c3d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0078c3dc  44 01 94 e5                                      ldr r0, [r4, #0x144]
0078c3e0  40 11 94 e5                                      ldr r1, [r4, #0x140]
0078c3e4  d3 19 ff eb                                      bl #0x752b38
0078c3e8  dd ff ff ea                                      b #0x78c364
; mapping-symbol data/literal pool
0078c3ec  58 87 20 00 60 3f 00 00                          .byte 0x58, 0x87, 0x20, 0x00, 0x60, 0x3f, 0x00, 0x00

; FUNCTION 0x0078c3f4, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_characterD0Ev
; demangled: gameswf::edit_text_character::~edit_text_character()
; decoder-mode: arm
0078c3f4  10 40 2d e9                                      push {r4, lr}
0078c3f8  00 40 a0 e1                                      mov r4, r0
0078c3fc  c9 ff ff eb                                      bl #0x78c328
0078c400  04 00 a0 e1                                      mov r0, r4
0078c404  a9 07 ee eb                                      bl #0x30e2b0
0078c408  04 00 a0 e1                                      mov r0, r4
0078c40c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078c410, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_characterD2Ev
; demangled: gameswf::edit_text_character::~edit_text_character()
; decoder-mode: arm
0078c410  70 40 2d e9                                      push {r4, r5, r6, lr}
0078c414  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0078c418  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0078c41c  00 40 a0 e1                                      mov r4, r0
0078c420  03 30 8f e0                                      add r3, pc, r3
0078c424  78 01 90 e5                                      ldr r0, [r0, #0x178]
0078c428  02 20 93 e7                                      ldr r2, [r3, r2]
0078c42c  00 00 50 e3                                      cmp r0, #0
0078c430  08 20 82 e2                                      add r2, r2, #8
0078c434  00 20 84 e5                                      str r2, [r4]
0078c438  00 00 00 0a                                      beq #0x78c440
0078c43c  7f 37 ff eb                                      bl #0x75a240
0078c440  38 31 d4 e5                                      ldrb r3, [r4, #0x138]
0078c444  ff 00 53 e3                                      cmp r3, #0xff
0078c448  1d 00 00 0a                                      beq #0x78c4c4
0078c44c  c4 50 84 e2                                      add r5, r4, #0xc4
0078c450  d8 00 84 e2                                      add r0, r4, #0xd8
0078c454  73 fd ff eb                                      bl #0x78ba28
0078c458  05 00 a0 e1                                      mov r0, r5
0078c45c  1b fd ff eb                                      bl #0x78b8d0
0078c460  05 00 a0 e1                                      mov r0, r5
0078c464  00 10 a0 e3                                      mov r1, #0
0078c468  b4 50 84 e2                                      add r5, r4, #0xb4
0078c46c  26 54 ff eb                                      bl #0x76150c
0078c470  05 00 a0 e1                                      mov r0, r5
0078c474  00 10 a0 e3                                      mov r1, #0
0078c478  fb 53 ff eb                                      bl #0x76146c
0078c47c  05 00 a0 e1                                      mov r0, r5
0078c480  00 10 a0 e3                                      mov r1, #0
0078c484  a4 50 84 e2                                      add r5, r4, #0xa4
0078c488  d5 53 ff eb                                      bl #0x7613e4
0078c48c  00 10 a0 e3                                      mov r1, #0
0078c490  05 00 a0 e1                                      mov r0, r5
0078c494  0c fe ff eb                                      bl #0x78bccc
0078c498  05 00 a0 e1                                      mov r0, r5
0078c49c  00 10 a0 e3                                      mov r1, #0
0078c4a0  53 f8 ff eb                                      bl #0x78a5f4
0078c4a4  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
0078c4a8  00 00 50 e3                                      cmp r0, #0
0078c4ac  00 00 00 0a                                      beq #0x78c4b4
0078c4b0  62 37 ff eb                                      bl #0x75a240
0078c4b4  04 00 a0 e1                                      mov r0, r4
0078c4b8  2d 46 ff eb                                      bl #0x75dd74
0078c4bc  04 00 a0 e1                                      mov r0, r4
0078c4c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0078c4c4  44 01 94 e5                                      ldr r0, [r4, #0x144]
0078c4c8  40 11 94 e5                                      ldr r1, [r4, #0x140]
0078c4cc  99 19 ff eb                                      bl #0x752b38
0078c4d0  dd ff ff ea                                      b #0x78c44c
; mapping-symbol data/literal pool
0078c4d4  70 86 20 00 60 3f 00 00                          .byte 0x70, 0x86, 0x20, 0x00, 0x60, 0x3f, 0x00, 0x00

; FUNCTION 0x0078cb90, declared_size=2880, range_size=2880, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character11append_textERKNS_9tu_stringERNS0_15text_attributesEb
; demangled: gameswf::edit_text_character::append_text(gameswf::tu_string const&, gameswf::edit_text_character::text_attributes&, bool)
; decoder-mode: arm
0078cb90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078cb94  00 40 a0 e1                                      mov r4, r0
0078cb98  a4 d0 4d e2                                      sub sp, sp, #0xa4
0078cb9c  04 00 92 e5                                      ldr r0, [r2, #4]
0078cba0  02 70 a0 e1                                      mov r7, r2
0078cba4  34 30 8d e5                                      str r3, [sp, #0x34]
0078cba8  01 b0 a0 e1                                      mov fp, r1
0078cbac  6c 07 ee eb                                      bl #0x30e964
0078cbb0  30 30 94 e5                                      ldr r3, [r4, #0x30]
0078cbb4  00 50 a0 e1                                      mov r5, r0
0078cbb8  00 00 53 e3                                      cmp r3, #0
0078cbbc  03 00 00 0a                                      beq #0x78cbd0
0078cbc0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0078cbc4  04 20 d0 e5                                      ldrb r2, [r0, #4]
0078cbc8  00 00 52 e3                                      cmp r2, #0
0078cbcc  b2 02 00 0a                                      beq #0x78d69c
0078cbd0  ac 30 93 e5                                      ldr r3, [r3, #0xac]
0078cbd4  11 13 a0 e3                                      mov r1, #0x44000000
0078cbd8  02 15 81 e2                                      add r1, r1, #0x800000
0078cbdc  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0078cbe0  04 00 93 e5                                      ldr r0, [r3, #4]
0078cbe4  60 08 ee eb                                      bl #0x30ed6c
0078cbe8  00 10 a0 e1                                      mov r1, r0
0078cbec  05 00 a0 e1                                      mov r0, r5
0078cbf0  27 08 ee eb                                      bl #0x30ec94
0078cbf4  04 00 8d e5                                      str r0, [sp, #4]
0078cbf8  00 50 97 e5                                      ldr r5, [r7]
0078cbfc  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0078cc00  00 00 53 e3                                      cmp r3, #0
0078cc04  03 00 00 0a                                      beq #0x78cc18
0078cc08  41 14 a0 e3                                      mov r1, #0x41000000
0078cc0c  0a 16 81 e2                                      add r1, r1, #0xa00000
0078cc10  1f 08 ee eb                                      bl #0x30ec94
0078cc14  04 00 8d e5                                      str r0, [sp, #4]
0078cc18  05 00 a0 e1                                      mov r0, r5
0078cc1c  fe 09 01 eb                                      bl #0x7cf41c
0078cc20  00 60 a0 e1                                      mov r6, r0
0078cc24  04 00 97 e5                                      ldr r0, [r7, #4]
0078cc28  4d 07 ee eb                                      bl #0x30e964
0078cc2c  00 50 a0 e1                                      mov r5, r0
0078cc30  00 00 97 e5                                      ldr r0, [r7]
0078cc34  39 0a 01 eb                                      bl #0x7cf520
0078cc38  06 10 a0 e1                                      mov r1, r6
0078cc3c  14 08 ee eb                                      bl #0x30ec94
0078cc40  00 10 a0 e1                                      mov r1, r0
0078cc44  05 00 a0 e1                                      mov r0, r5
0078cc48  47 08 ee eb                                      bl #0x30ed6c
0078cc4c  00 10 a0 e3                                      mov r1, #0
0078cc50  24 00 8d e5                                      str r0, [sp, #0x24]
0078cc54  cc 04 ee eb                                      bl #0x30df8c
0078cc58  00 00 50 e3                                      cmp r0, #0
0078cc5c  02 00 00 0a                                      beq #0x78cc6c
0078cc60  04 00 97 e5                                      ldr r0, [r7, #4]
0078cc64  3e 07 ee eb                                      bl #0x30e964
0078cc68  24 00 8d e5                                      str r0, [sp, #0x24]
0078cc6c  fe c5 a0 e3                                      mov ip, #0x3f800000
0078cc70  00 50 97 e5                                      ldr r5, [r7]
0078cc74  04 00 97 e5                                      ldr r0, [r7, #4]
0078cc78  00 30 a0 e3                                      mov r3, #0
0078cc7c  00 20 e0 e3                                      mvn r2, #0
0078cc80  00 10 a0 e3                                      mov r1, #0
0078cc84  60 c0 8d e5                                      str ip, [sp, #0x60]
0078cc88  01 c0 a0 e3                                      mov ip, #1
0078cc8c  74 30 cd e5                                      strb r3, [sp, #0x74]
0078cc90  4c 30 8d e5                                      str r3, [sp, #0x4c]
0078cc94  54 30 cd e5                                      strb r3, [sp, #0x54]
0078cc98  64 30 cd e5                                      strb r3, [sp, #0x64]
0078cc9c  65 30 cd e5                                      strb r3, [sp, #0x65]
0078cca0  68 30 8d e5                                      str r3, [sp, #0x68]
0078cca4  6c 30 8d e5                                      str r3, [sp, #0x6c]
0078cca8  70 30 8d e5                                      str r3, [sp, #0x70]
0078ccac  53 20 cd e5                                      strb r2, [sp, #0x53]
0078ccb0  66 c0 cd e5                                      strb ip, [sp, #0x66]
0078ccb4  48 20 8d e5                                      str r2, [sp, #0x48]
0078ccb8  50 20 cd e5                                      strb r2, [sp, #0x50]
0078ccbc  51 20 cd e5                                      strb r2, [sp, #0x51]
0078ccc0  52 20 cd e5                                      strb r2, [sp, #0x52]
0078ccc4  5c 10 8d e5                                      str r1, [sp, #0x5c]
0078ccc8  58 10 8d e5                                      str r1, [sp, #0x58]
0078cccc  24 07 ee eb                                      bl #0x30e964
0078ccd0  60 11 94 e5                                      ldr r1, [r4, #0x160]
0078ccd4  b2 07 ee eb                                      bl #0x30eba4
0078ccd8  58 10 95 e5                                      ldr r1, [r5, #0x58]
0078ccdc  00 60 a0 e1                                      mov r6, r0
0078cce0  5c 00 95 e5                                      ldr r0, [r5, #0x5c]
0078cce4  b0 05 ee eb                                      bl #0x30e3ac
0078cce8  04 10 9d e5                                      ldr r1, [sp, #4]
0078ccec  1e 08 ee eb                                      bl #0x30ed6c
0078ccf0  00 10 a0 e1                                      mov r1, r0
0078ccf4  06 00 a0 e1                                      mov r0, r6
0078ccf8  a9 07 ee eb                                      bl #0x30eba4
0078ccfc  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0078cd00  00 a0 a0 e1                                      mov sl, r0
0078cd04  00 00 53 e3                                      cmp r3, #0
0078cd08  40 02 00 da                                      ble #0x78d610
0078cd0c  30 10 a0 e3                                      mov r1, #0x30
0078cd10  01 30 43 e2                                      sub r3, r3, #1
0078cd14  a4 60 94 e5                                      ldr r6, [r4, #0xa4]
0078cd18  91 03 03 e0                                      mul r3, r1, r3
0078cd1c  a0 20 8d e2                                      add r2, sp, #0xa0
0078cd20  08 20 8d e5                                      str r2, [sp, #8]
0078cd24  03 20 96 e7                                      ldr r2, [r6, r3]
0078cd28  03 60 86 e0                                      add r6, r6, r3
0078cd2c  08 30 9d e5                                      ldr r3, [sp, #8]
0078cd30  58 20 23 e5                                      str r2, [r3, #-0x58]!
0078cd34  08 30 8d e5                                      str r3, [sp, #8]
0078cd38  04 00 83 e2                                      add r0, r3, #4
0078cd3c  04 10 96 e5                                      ldr r1, [r6, #4]
0078cd40  3b 5d ff eb                                      bl #0x764234
0078cd44  08 30 96 e5                                      ldr r3, [r6, #8]
0078cd48  0a 00 a0 e1                                      mov r0, sl
0078cd4c  50 30 8d e5                                      str r3, [sp, #0x50]
0078cd50  0c 30 d6 e5                                      ldrb r3, [r6, #0xc]
0078cd54  54 30 cd e5                                      strb r3, [sp, #0x54]
0078cd58  10 30 96 e5                                      ldr r3, [r6, #0x10]
0078cd5c  58 30 8d e5                                      str r3, [sp, #0x58]
0078cd60  14 50 96 e5                                      ldr r5, [r6, #0x14]
0078cd64  5c 50 8d e5                                      str r5, [sp, #0x5c]
0078cd68  18 30 96 e5                                      ldr r3, [r6, #0x18]
0078cd6c  05 10 a0 e1                                      mov r1, r5
0078cd70  60 30 8d e5                                      str r3, [sp, #0x60]
0078cd74  1c 30 d6 e5                                      ldrb r3, [r6, #0x1c]
0078cd78  64 30 cd e5                                      strb r3, [sp, #0x64]
0078cd7c  1d 30 d6 e5                                      ldrb r3, [r6, #0x1d]
0078cd80  65 30 cd e5                                      strb r3, [sp, #0x65]
0078cd84  1e 30 d6 e5                                      ldrb r3, [r6, #0x1e]
0078cd88  66 30 cd e5                                      strb r3, [sp, #0x66]
0078cd8c  59 05 ee eb                                      bl #0x30e2f8
0078cd90  00 00 50 e3                                      cmp r0, #0
0078cd94  fd 01 00 1a                                      bne #0x78d590
0078cd98  00 50 97 e5                                      ldr r5, [r7]
0078cd9c  88 11 94 e5                                      ldr r1, [r4, #0x188]
0078cda0  80 01 94 e5                                      ldr r0, [r4, #0x180]
0078cda4  7e 07 ee eb                                      bl #0x30eba4
0078cda8  00 10 a0 e3                                      mov r1, #0
0078cdac  00 60 a0 e1                                      mov r6, r0
0078cdb0  50 05 ee eb                                      bl #0x30e2f8
0078cdb4  08 20 9d e5                                      ldr r2, [sp, #8]
0078cdb8  00 00 50 e3                                      cmp r0, #0
0078cdbc  00 60 a0 03                                      moveq r6, #0
0078cdc0  05 10 a0 e1                                      mov r1, r5
0078cdc4  04 00 82 e2                                      add r0, r2, #4
0078cdc8  58 60 8d e5                                      str r6, [sp, #0x58]
0078cdcc  18 5d ff eb                                      bl #0x764234
0078cdd0  08 20 97 e5                                      ldr r2, [r7, #8]
0078cdd4  0c 30 d7 e5                                      ldrb r3, [r7, #0xc]
0078cdd8  04 00 97 e5                                      ldr r0, [r7, #4]
0078cddc  50 20 8d e5                                      str r2, [sp, #0x50]
0078cde0  54 30 cd e5                                      strb r3, [sp, #0x54]
0078cde4  de 06 ee eb                                      bl #0x30e964
0078cde8  60 00 8d e5                                      str r0, [sp, #0x60]
0078cdec  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
0078cdf0  01 30 a0 e3                                      mov r3, #1
0078cdf4  58 00 9d e5                                      ldr r0, [sp, #0x58]
0078cdf8  66 30 cd e5                                      strb r3, [sp, #0x66]
0078cdfc  64 30 cd e5                                      strb r3, [sp, #0x64]
0078ce00  65 30 cd e5                                      strb r3, [sp, #0x65]
0078ce04  66 07 ee eb                                      bl #0x30eba4
0078ce08  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
0078ce0c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0078ce10  00 30 97 e5                                      ldr r3, [r7]
0078ce14  58 00 8d e5                                      str r0, [sp, #0x58]
0078ce18  28 10 8d e5                                      str r1, [sp, #0x28]
0078ce1c  8c 51 94 e5                                      ldr r5, [r4, #0x18c]
0078ce20  5c 10 93 e5                                      ldr r1, [r3, #0x5c]
0078ce24  04 00 9d e5                                      ldr r0, [sp, #4]
0078ce28  cf 07 ee eb                                      bl #0x30ed6c
0078ce2c  05 10 a0 e1                                      mov r1, r5
0078ce30  5b 07 ee eb                                      bl #0x30eba4
0078ce34  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0078ce38  30 00 8d e5                                      str r0, [sp, #0x30]
0078ce3c  00 10 a0 e3                                      mov r1, #0
0078ce40  54 21 84 e5                                      str r2, [r4, #0x154]
0078ce44  28 30 9d e5                                      ldr r3, [sp, #0x28]
0078ce48  a0 20 8d e2                                      add r2, sp, #0xa0
0078ce4c  00 a0 e0 e3                                      mvn sl, #0
0078ce50  58 31 84 e5                                      str r3, [r4, #0x158]
0078ce54  d0 30 db e1                                      ldrsb r3, [fp]
0078ce58  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
0078ce5c  01 00 73 e3                                      cmn r3, #1
0078ce60  5c 38 9f e5                                      ldr r3, [pc, #0x85c]
0078ce64  0c b0 9b 05                                      ldreq fp, [fp, #0xc]
0078ce68  01 b0 8b 12                                      addne fp, fp, #1
0078ce6c  03 30 8f e0                                      add r3, pc, r3
0078ce70  2c 30 8d e5                                      str r3, [sp, #0x2c]
0078ce74  4c 38 9f e5                                      ldr r3, [pc, #0x84c]
0078ce78  14 10 8d e5                                      str r1, [sp, #0x14]
0078ce7c  04 b0 22 e5                                      str fp, [r2, #-4]!
0078ce80  03 30 8f e0                                      add r3, pc, r3
0078ce84  38 30 8d e5                                      str r3, [sp, #0x38]
0078ce88  3c 38 9f e5                                      ldr r3, [pc, #0x83c]
0078ce8c  28 10 9d e5                                      ldr r1, [sp, #0x28]
0078ce90  10 20 8d e5                                      str r2, [sp, #0x10]
0078ce94  03 30 8f e0                                      add r3, pc, r3
0078ce98  3c 30 8d e5                                      str r3, [sp, #0x3c]
0078ce9c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0078cea0  a4 30 84 e2                                      add r3, r4, #0xa4
0078cea4  20 30 8d e5                                      str r3, [sp, #0x20]
0078cea8  0c 10 8d e5                                      str r1, [sp, #0xc]
0078ceac  78 15 ff eb                                      bl #0x752494
0078ceb0  00 80 50 e2                                      subs r8, r0, #0
0078ceb4  1a 00 00 0a                                      beq #0x78cf24
0078ceb8  08 20 a0 e1                                      mov r2, r8
0078cebc  0a 10 a0 e1                                      mov r1, sl
0078cec0  00 00 97 e5                                      ldr r0, [r7]
0078cec4  77 05 01 eb                                      bl #0x7ce4a8
0078cec8  04 10 9d e5                                      ldr r1, [sp, #4]
0078cecc  a6 07 ee eb                                      bl #0x30ed6c
0078ced0  00 10 a0 e1                                      mov r1, r0
0078ced4  06 00 a0 e1                                      mov r0, r6
0078ced8  31 07 ee eb                                      bl #0x30eba4
0078cedc  0a 00 58 e3                                      cmp r8, #0xa
0078cee0  00 30 a0 13                                      movne r3, #0
0078cee4  01 30 a0 03                                      moveq r3, #1
0078cee8  0a 00 58 e3                                      cmp r8, #0xa
0078ceec  0d 00 58 13                                      cmpne r8, #0xd
0078cef0  08 50 a0 e1                                      mov r5, r8
0078cef4  00 60 a0 e1                                      mov r6, r0
0078cef8  6a 00 00 1a                                      bne #0x78d0a8
0078cefc  0d 00 5a e3                                      cmp sl, #0xd
0078cf00  00 a0 a0 13                                      movne sl, #0
0078cf04  01 a0 03 02                                      andeq sl, r3, #1
0078cf08  00 00 5a e3                                      cmp sl, #0
0078cf0c  31 00 00 0a                                      beq #0x78cfd8
0078cf10  05 a0 a0 e1                                      mov sl, r5
0078cf14  10 00 9d e5                                      ldr r0, [sp, #0x10]
0078cf18  5d 15 ff eb                                      bl #0x752494
0078cf1c  00 80 50 e2                                      subs r8, r0, #0
0078cf20  e4 ff ff 1a                                      bne #0x78ceb8
0078cf24  00 30 97 e5                                      ldr r3, [r7]
0078cf28  04 00 9d e5                                      ldr r0, [sp, #4]
0078cf2c  5c 10 93 e5                                      ldr r1, [r3, #0x5c]
0078cf30  8d 07 ee eb                                      bl #0x30ed6c
0078cf34  00 10 a0 e1                                      mov r1, r0
0078cf38  54 01 94 e5                                      ldr r0, [r4, #0x154]
0078cf3c  18 07 ee eb                                      bl #0x30eba4
0078cf40  54 01 84 e5                                      str r0, [r4, #0x154]
0078cf44  04 00 97 e5                                      ldr r0, [r7, #4]
0078cf48  85 06 ee eb                                      bl #0x30e964
0078cf4c  00 50 97 e5                                      ldr r5, [r7]
0078cf50  00 70 a0 e1                                      mov r7, r0
0078cf54  58 10 95 e5                                      ldr r1, [r5, #0x58]
0078cf58  5c 00 95 e5                                      ldr r0, [r5, #0x5c]
0078cf5c  12 05 ee eb                                      bl #0x30e3ac
0078cf60  04 10 9d e5                                      ldr r1, [sp, #4]
0078cf64  80 07 ee eb                                      bl #0x30ed6c
0078cf68  00 10 a0 e1                                      mov r1, r0
0078cf6c  07 00 a0 e1                                      mov r0, r7
0078cf70  0b 07 ee eb                                      bl #0x30eba4
0078cf74  00 10 a0 e1                                      mov r1, r0
0078cf78  58 01 94 e5                                      ldr r0, [r4, #0x158]
0078cf7c  0a 05 ee eb                                      bl #0x30e3ac
0078cf80  58 01 84 e5                                      str r0, [r4, #0x158]
0078cf84  20 00 9d e5                                      ldr r0, [sp, #0x20]
0078cf88  08 10 9d e5                                      ldr r1, [sp, #8]
0078cf8c  6d f6 ff eb                                      bl #0x78a948
0078cf90  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0078cf94  06 00 a0 e1                                      mov r0, r6
0078cf98  03 05 ee eb                                      bl #0x30e3ac
0078cf9c  00 10 a0 e1                                      mov r1, r0
0078cfa0  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
0078cfa4  fe 06 ee eb                                      bl #0x30eba4
0078cfa8  5c 01 84 e5                                      str r0, [r4, #0x15c]
0078cfac  28 10 9d e5                                      ldr r1, [sp, #0x28]
0078cfb0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0078cfb4  fc 04 ee eb                                      bl #0x30e3ac
0078cfb8  00 10 a0 e1                                      mov r1, r0
0078cfbc  60 01 94 e5                                      ldr r0, [r4, #0x160]
0078cfc0  f7 06 ee eb                                      bl #0x30eba4
0078cfc4  60 01 84 e5                                      str r0, [r4, #0x160]
0078cfc8  08 00 9d e5                                      ldr r0, [sp, #8]
0078cfcc  79 f5 ff eb                                      bl #0x78a5b8
0078cfd0  a4 d0 8d e2                                      add sp, sp, #0xa4
0078cfd4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0078cfd8  08 10 9d e5                                      ldr r1, [sp, #8]
0078cfdc  20 00 9d e5                                      ldr r0, [sp, #0x20]
0078cfe0  58 f6 ff eb                                      bl #0x78a948
0078cfe4  06 30 a0 e1                                      mov r3, r6
0078cfe8  64 21 94 e5                                      ldr r2, [r4, #0x164]
0078cfec  04 00 a0 e1                                      mov r0, r4
0078cff0  7c 11 94 e5                                      ldr r1, [r4, #0x17c]
0078cff4  e7 f4 ff eb                                      bl #0x78a398
0078cff8  88 11 94 e5                                      ldr r1, [r4, #0x188]
0078cffc  80 01 94 e5                                      ldr r0, [r4, #0x180]
0078d000  e7 06 ee eb                                      bl #0x30eba4
0078d004  00 10 a0 e3                                      mov r1, #0
0078d008  00 60 a0 e1                                      mov r6, r0
0078d00c  b9 04 ee eb                                      bl #0x30e2f8
0078d010  30 10 9d e5                                      ldr r1, [sp, #0x30]
0078d014  00 00 50 e3                                      cmp r0, #0
0078d018  24 00 9d e5                                      ldr r0, [sp, #0x24]
0078d01c  00 60 a0 03                                      moveq r6, #0
0078d020  df 06 ee eb                                      bl #0x30eba4
0078d024  00 10 a0 e1                                      mov r1, r0
0078d028  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0078d02c  dc 06 ee eb                                      bl #0x30eba4
0078d030  08 20 9d e5                                      ldr r2, [sp, #8]
0078d034  0c 00 8d e5                                      str r0, [sp, #0xc]
0078d038  00 10 a0 e3                                      mov r1, #0
0078d03c  20 00 82 e2                                      add r0, r2, #0x20
0078d040  29 f5 ff eb                                      bl #0x78a4ec
0078d044  08 30 9d e5                                      ldr r3, [sp, #8]
0078d048  00 10 97 e5                                      ldr r1, [r7]
0078d04c  05 a0 a0 e1                                      mov sl, r5
0078d050  04 00 83 e2                                      add r0, r3, #4
0078d054  76 5c ff eb                                      bl #0x764234
0078d058  08 20 97 e5                                      ldr r2, [r7, #8]
0078d05c  0c 30 d7 e5                                      ldrb r3, [r7, #0xc]
0078d060  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078d064  04 00 97 e5                                      ldr r0, [r7, #4]
0078d068  50 20 8d e5                                      str r2, [sp, #0x50]
0078d06c  54 30 cd e5                                      strb r3, [sp, #0x54]
0078d070  5c 10 8d e5                                      str r1, [sp, #0x5c]
0078d074  58 60 8d e5                                      str r6, [sp, #0x58]
0078d078  39 06 ee eb                                      bl #0x30e964
0078d07c  a8 20 94 e5                                      ldr r2, [r4, #0xa8]
0078d080  01 30 a0 e3                                      mov r3, #1
0078d084  00 10 e0 e3                                      mvn r1, #0
0078d088  60 00 8d e5                                      str r0, [sp, #0x60]
0078d08c  66 30 cd e5                                      strb r3, [sp, #0x66]
0078d090  6c 11 84 e5                                      str r1, [r4, #0x16c]
0078d094  64 21 84 e5                                      str r2, [r4, #0x164]
0078d098  64 30 cd e5                                      strb r3, [sp, #0x64]
0078d09c  65 30 cd e5                                      strb r3, [sp, #0x65]
0078d0a0  68 21 84 e5                                      str r2, [r4, #0x168]
0078d0a4  9a ff ff ea                                      b #0x78cf14
0078d0a8  08 00 58 e3                                      cmp r8, #8
0078d0ac  a0 00 00 0a                                      beq #0x78d334
0078d0b0  11 00 58 e3                                      cmp r8, #0x11
0078d0b4  00 20 a0 03                                      moveq r2, #0
0078d0b8  18 20 8d 05                                      streq r2, [sp, #0x18]
0078d0bc  94 00 00 0a                                      beq #0x78d314
0078d0c0  20 00 58 e3                                      cmp r8, #0x20
0078d0c4  90 00 00 0a                                      beq #0x78d30c
0078d0c8  a0 00 58 e3                                      cmp r8, #0xa0
0078d0cc  13 01 00 1a                                      bne #0x78d520
0078d0d0  20 50 a0 e3                                      mov r5, #0x20
0078d0d4  fe 15 a0 e3                                      mov r1, #0x3f800000
0078d0d8  05 90 a0 e1                                      mov sb, r5
0078d0dc  18 10 8d e5                                      str r1, [sp, #0x18]
0078d0e0  05 80 a0 e1                                      mov r8, r5
0078d0e4  11 33 a0 e3                                      mov r3, #0x44000000
0078d0e8  04 00 97 e5                                      ldr r0, [r7, #4]
0078d0ec  00 10 a0 e3                                      mov r1, #0
0078d0f0  00 20 e0 e3                                      mvn r2, #0
0078d0f4  78 30 8d e5                                      str r3, [sp, #0x78]
0078d0f8  00 30 a0 e3                                      mov r3, #0
0078d0fc  b6 29 cd e1                                      strh r2, [sp, #0x96]
0078d100  b8 39 cd e1                                      strh r3, [sp, #0x98]
0078d104  7c 10 8d e5                                      str r1, [sp, #0x7c]
0078d108  90 10 8d e5                                      str r1, [sp, #0x90]
0078d10c  b4 19 cd e1                                      strh r1, [sp, #0x94]
0078d110  9a 10 cd e5                                      strb r1, [sp, #0x9a]
0078d114  12 06 ee eb                                      bl #0x30e964
0078d118  41 14 a0 e3                                      mov r1, #0x41000000
0078d11c  0a 16 81 e2                                      add r1, r1, #0xa00000
0078d120  db 06 ee eb                                      bl #0x30ec94
0078d124  e8 04 ee eb                                      bl #0x30e4cc
0078d128  00 b0 97 e5                                      ldr fp, [r7]
0078d12c  78 a0 8d e2                                      add sl, sp, #0x78
0078d130  00 30 a0 e1                                      mov r3, r0
0078d134  0a 10 a0 e1                                      mov r1, sl
0078d138  0b 00 a0 e1                                      mov r0, fp
0078d13c  09 20 a0 e1                                      mov r2, sb
0078d140  1d 0c 01 eb                                      bl #0x7d01bc
0078d144  00 00 50 e3                                      cmp r0, #0
0078d148  0d 00 00 1a                                      bne #0x78d184
0078d14c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0078d150  00 30 92 e5                                      ldr r3, [r2]
0078d154  09 00 53 e3                                      cmp r3, #9
0078d158  09 00 00 ca                                      bgt #0x78d184
0078d15c  01 30 83 e2                                      add r3, r3, #1
0078d160  00 30 82 e5                                      str r3, [r2]
0078d164  00 20 97 e5                                      ldr r2, [r7]
0078d168  38 00 9d e5                                      ldr r0, [sp, #0x38]
0078d16c  08 10 a0 e1                                      mov r1, r8
0078d170  d0 33 d2 e1                                      ldrsb r3, [r2, #0x30]
0078d174  01 00 73 e3                                      cmn r3, #1
0078d178  31 20 82 12                                      addne r2, r2, #0x31
0078d17c  3c 20 92 05                                      ldreq r2, [r2, #0x3c]
0078d180  ff 4f ff eb                                      bl #0x761184
0078d184  90 11 94 e5                                      ldr r1, [r4, #0x190]
0078d188  78 00 9d e5                                      ldr r0, [sp, #0x78]
0078d18c  84 06 ee eb                                      bl #0x30eba4
0078d190  18 10 9d e5                                      ldr r1, [sp, #0x18]
0078d194  00 b0 a0 e1                                      mov fp, r0
0078d198  04 00 9d e5                                      ldr r0, [sp, #4]
0078d19c  f2 06 ee eb                                      bl #0x30ed6c
0078d1a0  00 10 a0 e1                                      mov r1, r0
0078d1a4  0b 00 a0 e1                                      mov r0, fp
0078d1a8  ef 06 ee eb                                      bl #0x30ed6c
0078d1ac  01 0a 58 e3                                      cmp r8, #0x1000
0078d1b0  78 00 8d e5                                      str r0, [sp, #0x78]
0078d1b4  03 00 00 9a                                      bls #0x78d1c8
0078d1b8  cd 1c 0c e3                                      movw r1, #0xcccd
0078d1bc  8c 1f 43 e3                                      movt r1, #0x3f8c
0078d1c0  e9 06 ee eb                                      bl #0x30ed6c
0078d1c4  78 00 8d e5                                      str r0, [sp, #0x78]
0078d1c8  04 00 97 e5                                      ldr r0, [r7, #4]
0078d1cc  e4 05 ee eb                                      bl #0x30e964
0078d1d0  41 14 a0 e3                                      mov r1, #0x41000000
0078d1d4  0a 16 81 e2                                      add r1, r1, #0xa00000
0078d1d8  ad 06 ee eb                                      bl #0x30ec94
0078d1dc  ba 04 ee eb                                      bl #0x30e4cc
0078d1e0  08 30 9d e5                                      ldr r3, [sp, #8]
0078d1e4  0a 10 a0 e1                                      mov r1, sl
0078d1e8  b4 09 cd e1                                      strh r0, [sp, #0x94]
0078d1ec  20 80 83 e2                                      add r8, r3, #0x20
0078d1f0  08 00 a0 e1                                      mov r0, r8
0078d1f4  b8 99 cd e1                                      strh sb, [sp, #0x98]
0078d1f8  87 f5 ff eb                                      bl #0x78a81c
0078d1fc  06 00 a0 e1                                      mov r0, r6
0078d200  78 10 9d e5                                      ldr r1, [sp, #0x78]
0078d204  66 06 ee eb                                      bl #0x30eba4
0078d208  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
0078d20c  00 a0 a0 e1                                      mov sl, r0
0078d210  24 10 93 e5                                      ldr r1, [r3, #0x24]
0078d214  28 00 93 e5                                      ldr r0, [r3, #0x28]
0078d218  63 04 ee eb                                      bl #0x30e3ac
0078d21c  84 11 94 e5                                      ldr r1, [r4, #0x184]
0078d220  61 04 ee eb                                      bl #0x30e3ac
0078d224  42 14 a0 e3                                      mov r1, #0x42000000
0078d228  0a 16 81 e2                                      add r1, r1, #0xa00000
0078d22c  5e 04 ee eb                                      bl #0x30e3ac
0078d230  0a 10 a0 e1                                      mov r1, sl
0078d234  dc 05 ee eb                                      bl #0x30e9ac
0078d238  00 00 50 e3                                      cmp r0, #0
0078d23c  0a 60 a0 01                                      moveq r6, sl
0078d240  49 00 00 1a                                      bne #0x78d36c
0078d244  14 20 9d e5                                      ldr r2, [sp, #0x14]
0078d248  50 31 94 e5                                      ldr r3, [r4, #0x150]
0078d24c  03 00 52 e1                                      cmp r2, r3
0078d250  54 61 84 b5                                      strlt r6, [r4, #0x154]
0078d254  0c 30 9d b5                                      ldrlt r3, [sp, #0xc]
0078d258  58 31 84 b5                                      strlt r3, [r4, #0x158]
0078d25c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0078d260  00 30 97 e5                                      ldr r3, [r7]
0078d264  04 00 9d e5                                      ldr r0, [sp, #4]
0078d268  01 10 81 e2                                      add r1, r1, #1
0078d26c  14 10 8d e5                                      str r1, [sp, #0x14]
0078d270  58 10 93 e5                                      ldr r1, [r3, #0x58]
0078d274  bc 06 ee eb                                      bl #0x30ed6c
0078d278  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078d27c  48 06 ee eb                                      bl #0x30eba4
0078d280  28 a1 94 e5                                      ldr sl, [r4, #0x128]
0078d284  00 80 a0 e1                                      mov r8, r0
0078d288  06 00 a0 e1                                      mov r0, r6
0078d28c  0a 10 a0 e1                                      mov r1, sl
0078d290  18 04 ee eb                                      bl #0x30e2f8
0078d294  30 91 94 e5                                      ldr sb, [r4, #0x130]
0078d298  00 00 50 e3                                      cmp r0, #0
0078d29c  06 a0 a0 01                                      moveq sl, r6
0078d2a0  09 10 a0 e1                                      mov r1, sb
0078d2a4  28 a1 84 e5                                      str sl, [r4, #0x128]
0078d2a8  08 00 a0 e1                                      mov r0, r8
0078d2ac  11 04 ee eb                                      bl #0x30e2f8
0078d2b0  2c a1 94 e5                                      ldr sl, [r4, #0x12c]
0078d2b4  00 00 50 e3                                      cmp r0, #0
0078d2b8  08 90 a0 01                                      moveq sb, r8
0078d2bc  0a 10 a0 e1                                      mov r1, sl
0078d2c0  30 91 84 e5                                      str sb, [r4, #0x130]
0078d2c4  06 00 a0 e1                                      mov r0, r6
0078d2c8  0a 04 ee eb                                      bl #0x30e2f8
0078d2cc  34 91 94 e5                                      ldr sb, [r4, #0x134]
0078d2d0  00 00 50 e3                                      cmp r0, #0
0078d2d4  06 a0 a0 11                                      movne sl, r6
0078d2d8  08 00 a0 e1                                      mov r0, r8
0078d2dc  2c a1 84 e5                                      str sl, [r4, #0x12c]
0078d2e0  09 10 a0 e1                                      mov r1, sb
0078d2e4  03 04 ee eb                                      bl #0x30e2f8
0078d2e8  00 00 50 e3                                      cmp r0, #0
0078d2ec  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0078d2f0  09 80 a0 01                                      moveq r8, sb
0078d2f4  34 81 84 e5                                      str r8, [r4, #0x134]
0078d2f8  00 00 50 e3                                      cmp r0, #0
0078d2fc  03 ff ff 0a                                      beq #0x78cf10
0078d300  ce 33 ff eb                                      bl #0x75a240
0078d304  05 a0 a0 e1                                      mov sl, r5
0078d308  01 ff ff ea                                      b #0x78cf14
0078d30c  fe 35 a0 e3                                      mov r3, #0x3f800000
0078d310  18 30 8d e5                                      str r3, [sp, #0x18]
0078d314  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0078d318  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0078d31c  20 50 a0 e3                                      mov r5, #0x20
0078d320  6c 21 84 e5                                      str r2, [r4, #0x16c]
0078d324  68 31 84 e5                                      str r3, [r4, #0x168]
0078d328  05 90 a0 e1                                      mov sb, r5
0078d32c  05 80 a0 e1                                      mov r8, r5
0078d330  6b ff ff ea                                      b #0x78d0e4
0078d334  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
0078d338  00 00 58 e3                                      cmp r8, #0
0078d33c  f3 fe ff da                                      ble #0x78cf10
0078d340  24 30 a0 e3                                      mov r3, #0x24
0078d344  01 80 48 e2                                      sub r8, r8, #1
0078d348  93 08 08 e0                                      mul r8, r3, r8
0078d34c  68 a0 9d e5                                      ldr sl, [sp, #0x68]
0078d350  08 10 9a e7                                      ldr r1, [sl, r8]
0078d354  14 04 ee eb                                      bl #0x30e3ac
0078d358  00 30 a0 e3                                      mov r3, #0
0078d35c  08 30 8a e7                                      str r3, [sl, r8]
0078d360  00 60 a0 e1                                      mov r6, r0
0078d364  05 a0 a0 e1                                      mov sl, r5
0078d368  e9 fe ff ea                                      b #0x78cf14
0078d36c  20 00 9d e5                                      ldr r0, [sp, #0x20]
0078d370  08 10 9d e5                                      ldr r1, [sp, #8]
0078d374  73 f5 ff eb                                      bl #0x78a948
0078d378  30 10 9d e5                                      ldr r1, [sp, #0x30]
0078d37c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0078d380  07 06 ee eb                                      bl #0x30eba4
0078d384  00 10 a0 e1                                      mov r1, r0
0078d388  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0078d38c  04 06 ee eb                                      bl #0x30eba4
0078d390  00 10 a0 e3                                      mov r1, #0
0078d394  0c 00 8d e5                                      str r0, [sp, #0xc]
0078d398  08 00 a0 e1                                      mov r0, r8
0078d39c  80 61 94 e5                                      ldr r6, [r4, #0x180]
0078d3a0  51 f4 ff eb                                      bl #0x78a4ec
0078d3a4  08 10 9d e5                                      ldr r1, [sp, #8]
0078d3a8  04 00 81 e2                                      add r0, r1, #4
0078d3ac  00 10 97 e5                                      ldr r1, [r7]
0078d3b0  9f 5b ff eb                                      bl #0x764234
0078d3b4  08 20 97 e5                                      ldr r2, [r7, #8]
0078d3b8  0c 30 d7 e5                                      ldrb r3, [r7, #0xc]
0078d3bc  04 00 97 e5                                      ldr r0, [r7, #4]
0078d3c0  50 20 8d e5                                      str r2, [sp, #0x50]
0078d3c4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0078d3c8  54 30 cd e5                                      strb r3, [sp, #0x54]
0078d3cc  58 60 8d e5                                      str r6, [sp, #0x58]
0078d3d0  5c 20 8d e5                                      str r2, [sp, #0x5c]
0078d3d4  62 05 ee eb                                      bl #0x30e964
0078d3d8  a8 90 94 e5                                      ldr sb, [r4, #0xa8]
0078d3dc  6c c1 94 e5                                      ldr ip, [r4, #0x16c]
0078d3e0  a4 10 94 e5                                      ldr r1, [r4, #0xa4]
0078d3e4  01 30 a0 e3                                      mov r3, #1
0078d3e8  01 90 49 e2                                      sub sb, sb, #1
0078d3ec  30 20 a0 e3                                      mov r2, #0x30
0078d3f0  01 00 7c e3                                      cmn ip, #1
0078d3f4  60 00 8d e5                                      str r0, [sp, #0x60]
0078d3f8  65 30 cd e5                                      strb r3, [sp, #0x65]
0078d3fc  64 30 cd e5                                      strb r3, [sp, #0x64]
0078d400  92 19 2b e0                                      mla fp, r2, sb, r1
0078d404  85 00 00 0a                                      beq #0x78d620
0078d408  68 81 94 e5                                      ldr r8, [r4, #0x168]
0078d40c  24 30 a0 e3                                      mov r3, #0x24
0078d410  93 0c 0e e0                                      mul lr, r3, ip
0078d414  92 18 23 e0                                      mla r3, r2, r8, r1
0078d418  0a 00 a0 e1                                      mov r0, sl
0078d41c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0078d420  0e 10 93 e7                                      ldr r1, [r3, lr]
0078d424  00 c0 8d e5                                      str ip, [sp]
0078d428  df 03 ee eb                                      bl #0x30e3ac
0078d42c  00 c0 9d e5                                      ldr ip, [sp]
0078d430  24 30 9b e5                                      ldr r3, [fp, #0x24]
0078d434  09 00 58 e1                                      cmp r8, sb
0078d438  00 a0 a0 13                                      movne sl, #0
0078d43c  01 a0 8c 02                                      addeq sl, ip, #1
0078d440  03 00 5a e1                                      cmp sl, r3
0078d444  00 20 a0 e1                                      mov r2, r0
0078d448  22 00 00 aa                                      bge #0x78d4d8
0078d44c  08 10 9d e5                                      ldr r1, [sp, #8]
0078d450  24 80 a0 e3                                      mov r8, #0x24
0078d454  98 0a 08 e0                                      mul r8, r8, sl
0078d458  20 30 81 e2                                      add r3, r1, #0x20
0078d45c  20 90 9b e5                                      ldr sb, [fp, #0x20]
0078d460  18 50 8d e5                                      str r5, [sp, #0x18]
0078d464  44 70 8d e5                                      str r7, [sp, #0x44]
0078d468  00 50 a0 e1                                      mov r5, r0
0078d46c  40 40 8d e5                                      str r4, [sp, #0x40]
0078d470  03 70 a0 e1                                      mov r7, r3
0078d474  08 10 89 e0                                      add r1, sb, r8
0078d478  07 00 a0 e1                                      mov r0, r7
0078d47c  e6 f4 ff eb                                      bl #0x78a81c
0078d480  20 90 9b e5                                      ldr sb, [fp, #0x20]
0078d484  06 00 a0 e1                                      mov r0, r6
0078d488  01 a0 8a e2                                      add sl, sl, #1
0078d48c  08 40 99 e7                                      ldr r4, [sb, r8]
0078d490  24 80 88 e2                                      add r8, r8, #0x24
0078d494  04 10 a0 e1                                      mov r1, r4
0078d498  c1 05 ee eb                                      bl #0x30eba4
0078d49c  04 10 a0 e1                                      mov r1, r4
0078d4a0  00 60 a0 e1                                      mov r6, r0
0078d4a4  05 00 a0 e1                                      mov r0, r5
0078d4a8  bf 03 ee eb                                      bl #0x30e3ac
0078d4ac  24 30 9b e5                                      ldr r3, [fp, #0x24]
0078d4b0  00 50 a0 e1                                      mov r5, r0
0078d4b4  03 00 5a e1                                      cmp sl, r3
0078d4b8  ed ff ff ba                                      blt #0x78d474
0078d4bc  40 40 9d e5                                      ldr r4, [sp, #0x40]
0078d4c0  18 50 9d e5                                      ldr r5, [sp, #0x18]
0078d4c4  44 70 9d e5                                      ldr r7, [sp, #0x44]
0078d4c8  a8 90 94 e5                                      ldr sb, [r4, #0xa8]
0078d4cc  68 81 94 e5                                      ldr r8, [r4, #0x168]
0078d4d0  00 20 a0 e1                                      mov r2, r0
0078d4d4  01 90 49 e2                                      sub sb, sb, #1
0078d4d8  08 00 59 e1                                      cmp sb, r8
0078d4dc  6c 11 94 05                                      ldreq r1, [r4, #0x16c]
0078d4e0  00 10 a0 13                                      movne r1, #0
0078d4e4  20 00 8b e2                                      add r0, fp, #0x20
0078d4e8  00 20 8d e5                                      str r2, [sp]
0078d4ec  fe f3 ff eb                                      bl #0x78a4ec
0078d4f0  00 20 9d e5                                      ldr r2, [sp]
0078d4f4  02 30 a0 e1                                      mov r3, r2
0078d4f8  04 00 a0 e1                                      mov r0, r4
0078d4fc  64 21 94 e5                                      ldr r2, [r4, #0x164]
0078d500  7c 11 94 e5                                      ldr r1, [r4, #0x17c]
0078d504  a3 f3 ff eb                                      bl #0x78a398
0078d508  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0078d50c  00 20 e0 e3                                      mvn r2, #0
0078d510  6c 21 84 e5                                      str r2, [r4, #0x16c]
0078d514  64 31 84 e5                                      str r3, [r4, #0x164]
0078d518  68 31 84 e5                                      str r3, [r4, #0x168]
0078d51c  48 ff ff ea                                      b #0x78d244
0078d520  26 00 58 e3                                      cmp r8, #0x26
0078d524  fe 25 a0 13                                      movne r2, #0x3f800000
0078d528  78 90 ff 16                                      uxthne sb, r8
0078d52c  18 20 8d 15                                      strne r2, [sp, #0x18]
0078d530  eb fe ff 1a                                      bne #0x78d0e4
0078d534  34 30 9d e5                                      ldr r3, [sp, #0x34]
0078d538  00 00 53 e3                                      cmp r3, #0
0078d53c  0e 00 00 0a                                      beq #0x78d57c
0078d540  9c 50 9d e5                                      ldr r5, [sp, #0x9c]
0078d544  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0078d548  05 20 a0 e3                                      mov r2, #5
0078d54c  05 00 a0 e1                                      mov r0, r5
0078d550  c9 05 ee eb                                      bl #0x30ec7c
0078d554  00 00 50 e3                                      cmp r0, #0
0078d558  07 00 00 1a                                      bne #0x78d57c
0078d55c  05 30 85 e2                                      add r3, r5, #5
0078d560  fe 15 a0 e3                                      mov r1, #0x3f800000
0078d564  20 50 a0 e3                                      mov r5, #0x20
0078d568  9c 30 8d e5                                      str r3, [sp, #0x9c]
0078d56c  05 90 a0 e1                                      mov sb, r5
0078d570  18 10 8d e5                                      str r1, [sp, #0x18]
0078d574  05 80 a0 e1                                      mov r8, r5
0078d578  d9 fe ff ea                                      b #0x78d0e4
0078d57c  fe 25 a0 e3                                      mov r2, #0x3f800000
0078d580  26 50 a0 e3                                      mov r5, #0x26
0078d584  18 20 8d e5                                      str r2, [sp, #0x18]
0078d588  05 90 a0 e1                                      mov sb, r5
0078d58c  d4 fe ff ea                                      b #0x78d0e4
0078d590  a8 80 94 e5                                      ldr r8, [r4, #0xa8]
0078d594  01 60 58 e2                                      subs r6, r8, #1
0078d598  1a 00 00 4a                                      bmi #0x78d608
0078d59c  30 10 a0 e3                                      mov r1, #0x30
0078d5a0  91 06 06 e0                                      mul r6, r1, r6
0078d5a4  a4 90 94 e5                                      ldr sb, [r4, #0xa4]
0078d5a8  05 10 a0 e1                                      mov r1, r5
0078d5ac  06 90 89 e0                                      add sb, sb, r6
0078d5b0  14 00 99 e5                                      ldr r0, [sb, #0x14]
0078d5b4  74 02 ee eb                                      bl #0x30df8c
0078d5b8  00 00 50 e3                                      cmp r0, #0
0078d5bc  11 00 00 0a                                      beq #0x78d608
0078d5c0  02 50 48 e2                                      sub r5, r8, #2
0078d5c4  30 20 a0 e3                                      mov r2, #0x30
0078d5c8  92 05 05 e0                                      mul r5, r2, r5
0078d5cc  00 00 00 ea                                      b #0x78d5d4
0078d5d0  06 90 89 e0                                      add sb, sb, r6
0078d5d4  01 00 58 e3                                      cmp r8, #1
0078d5d8  14 a0 89 e5                                      str sl, [sb, #0x14]
0078d5dc  09 00 00 0a                                      beq #0x78d608
0078d5e0  a4 90 94 e5                                      ldr sb, [r4, #0xa4]
0078d5e4  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
0078d5e8  30 60 46 e2                                      sub r6, r6, #0x30
0078d5ec  05 30 89 e0                                      add r3, sb, r5
0078d5f0  14 00 93 e5                                      ldr r0, [r3, #0x14]
0078d5f4  64 02 ee eb                                      bl #0x30df8c
0078d5f8  00 00 50 e3                                      cmp r0, #0
0078d5fc  01 80 48 e2                                      sub r8, r8, #1
0078d600  30 50 45 e2                                      sub r5, r5, #0x30
0078d604  f1 ff ff 1a                                      bne #0x78d5d0
0078d608  5c a0 8d e5                                      str sl, [sp, #0x5c]
0078d60c  e1 fd ff ea                                      b #0x78cd98
0078d610  48 30 8d e2                                      add r3, sp, #0x48
0078d614  5c 00 8d e5                                      str r0, [sp, #0x5c]
0078d618  08 30 8d e5                                      str r3, [sp, #8]
0078d61c  de fd ff ea                                      b #0x78cd9c
0078d620  24 10 9b e5                                      ldr r1, [fp, #0x24]
0078d624  00 00 51 e3                                      cmp r1, #0
0078d628  0a 20 a0 d1                                      movle r2, sl
0078d62c  b0 ff ff da                                      ble #0x78d4f4
0078d630  20 30 9b e5                                      ldr r3, [fp, #0x20]
0078d634  24 90 a0 e3                                      mov sb, #0x24
0078d638  01 10 41 e2                                      sub r1, r1, #1
0078d63c  99 31 21 e0                                      mla r1, sb, r1, r3
0078d640  08 00 a0 e1                                      mov r0, r8
0078d644  74 f4 ff eb                                      bl #0x78a81c
0078d648  24 30 9b e5                                      ldr r3, [fp, #0x24]
0078d64c  20 20 bb e5                                      ldr r2, [fp, #0x20]!
0078d650  06 00 a0 e1                                      mov r0, r6
0078d654  01 30 43 e2                                      sub r3, r3, #1
0078d658  99 03 09 e0                                      mul sb, sb, r3
0078d65c  09 80 92 e7                                      ldr r8, [r2, sb]
0078d660  00 30 8d e5                                      str r3, [sp]
0078d664  08 10 a0 e1                                      mov r1, r8
0078d668  4d 05 ee eb                                      bl #0x30eba4
0078d66c  08 10 a0 e1                                      mov r1, r8
0078d670  00 60 a0 e1                                      mov r6, r0
0078d674  0a 00 a0 e1                                      mov r0, sl
0078d678  4b 03 ee eb                                      bl #0x30e3ac
0078d67c  00 30 9d e5                                      ldr r3, [sp]
0078d680  00 20 a0 e1                                      mov r2, r0
0078d684  0b 00 a0 e1                                      mov r0, fp
0078d688  03 10 a0 e1                                      mov r1, r3
0078d68c  00 20 8d e5                                      str r2, [sp]
0078d690  95 f3 ff eb                                      bl #0x78a4ec
0078d694  00 20 9d e5                                      ldr r2, [sp]
0078d698  95 ff ff ea                                      b #0x78d4f4
0078d69c  00 10 90 e5                                      ldr r1, [r0]
0078d6a0  01 10 41 e2                                      sub r1, r1, #1
0078d6a4  00 00 51 e3                                      cmp r1, #0
0078d6a8  00 10 80 e5                                      str r1, [r0]
0078d6ac  00 00 00 1a                                      bne #0x78d6b4
0078d6b0  20 15 ff eb                                      bl #0x752b38
0078d6b4  00 30 a0 e3                                      mov r3, #0
0078d6b8  2c 30 84 e5                                      str r3, [r4, #0x2c]
0078d6bc  30 30 84 e5                                      str r3, [r4, #0x30]
0078d6c0  42 fd ff ea                                      b #0x78cbd0
; mapping-symbol data/literal pool
0078d6c4  cc fb 29 00 48 d0 17 00 2c d0 17 00              .byte 0xcc, 0xfb, 0x29, 0x00, 0x48, 0xd0, 0x17, 0x00, 0x2c, 0xd0, 0x17, 0x00

; FUNCTION 0x0078dde8, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character8get_rootEv
; demangled: gameswf::edit_text_character::get_root()
; decoder-mode: arm
0078dde8  10 40 2d e9                                      push {r4, lr}
0078ddec  40 30 90 e5                                      ldr r3, [r0, #0x40]
0078ddf0  00 40 a0 e1                                      mov r4, r0
0078ddf4  00 00 53 e3                                      cmp r3, #0
0078ddf8  03 00 00 0a                                      beq #0x78de0c
0078ddfc  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
0078de00  04 20 d0 e5                                      ldrb r2, [r0, #4]
0078de04  00 00 52 e3                                      cmp r2, #0
0078de08  04 00 00 0a                                      beq #0x78de20
0078de0c  03 00 a0 e1                                      mov r0, r3
0078de10  00 30 93 e5                                      ldr r3, [r3]
0078de14  0f e0 a0 e1                                      mov lr, pc
0078de18  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0078de1c  10 80 bd e8                                      pop {r4, pc}
0078de20  00 10 90 e5                                      ldr r1, [r0]
0078de24  01 10 41 e2                                      sub r1, r1, #1
0078de28  00 00 51 e3                                      cmp r1, #0
0078de2c  00 10 80 e5                                      str r1, [r0]
0078de30  00 00 00 1a                                      bne #0x78de38
0078de34  3f 13 ff eb                                      bl #0x752b38
0078de38  00 30 a0 e3                                      mov r3, #0
0078de3c  40 30 84 e5                                      str r3, [r4, #0x40]
0078de40  3c 30 84 e5                                      str r3, [r4, #0x3c]
0078de44  03 00 a0 e1                                      mov r0, r3
0078de48  00 30 93 e5                                      ldr r3, [r3]
0078de4c  0f e0 a0 e1                                      mov lr, pc
0078de50  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0078de54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078efb8, declared_size=564, range_size=564, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character11format_textEb
; demangled: gameswf::edit_text_character::format_text(bool)
; decoder-mode: arm
0078efb8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0078efbc  00 20 e0 e3                                      mvn r2, #0
0078efc0  00 30 e0 e3                                      mvn r3, #0
0078efc4  00 40 a0 e1                                      mov r4, r0
0078efc8  f0 2e c0 e1                                      strd r2, r3, [r0, #0xe0]
0078efcc  f8 2d c0 e1                                      strd r2, r3, [r0, #0xd8]
0078efd0  10 d0 4d e2                                      sub sp, sp, #0x10
0078efd4  a4 00 80 e2                                      add r0, r0, #0xa4
0078efd8  01 60 a0 e1                                      mov r6, r1
0078efdc  00 10 a0 e3                                      mov r1, #0
0078efe0  39 f3 ff eb                                      bl #0x78bccc
0078efe4  00 50 a0 e3                                      mov r5, #0
0078efe8  00 30 a0 e3                                      mov r3, #0
0078efec  00 20 e0 e3                                      mvn r2, #0
0078eff0  03 10 a0 e1                                      mov r1, r3
0078eff4  6c 21 84 e5                                      str r2, [r4, #0x16c]
0078eff8  5c 31 84 e5                                      str r3, [r4, #0x15c]
0078effc  60 31 84 e5                                      str r3, [r4, #0x160]
0078f000  64 51 84 e5                                      str r5, [r4, #0x164]
0078f004  68 51 84 e5                                      str r5, [r4, #0x168]
0078f008  04 00 a0 e1                                      mov r0, r4
0078f00c  03 20 a0 e1                                      mov r2, r3
0078f010  d6 ec ff eb                                      bl #0x78a370
0078f014  78 11 94 e5                                      ldr r1, [r4, #0x178]
0078f018  05 00 51 e1                                      cmp r1, r5
0078f01c  5c 00 00 0a                                      beq #0x78f194
0078f020  05 00 56 e1                                      cmp r6, r5
0078f024  5c 00 00 0a                                      beq #0x78f19c
0078f028  0d 00 a0 e1                                      mov r0, sp
0078f02c  04 10 a0 e1                                      mov r1, r4
0078f030  00 50 8d e5                                      str r5, [sp]
0078f034  04 50 8d e5                                      str r5, [sp, #4]
0078f038  08 50 8d e5                                      str r5, [sp, #8]
0078f03c  0c 50 cd e5                                      strb r5, [sp, #0xc]
0078f040  c3 fc ff eb                                      bl #0x78e354
0078f044  0d 00 a0 e1                                      mov r0, sp
0078f048  05 10 a0 e1                                      mov r1, r5
0078f04c  ee f2 ff eb                                      bl #0x78bc0c
0078f050  0d 00 a0 e1                                      mov r0, sp
0078f054  05 10 a0 e1                                      mov r1, r5
0078f058  0d 60 a0 e1                                      mov r6, sp
0078f05c  86 ed ff eb                                      bl #0x78a67c
0078f060  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0078f064  04 00 a0 e1                                      mov r0, r4
0078f068  7c 11 94 e5                                      ldr r1, [r4, #0x17c]
0078f06c  64 21 94 e5                                      ldr r2, [r4, #0x164]
0078f070  c8 ec ff eb                                      bl #0x78a398
0078f074  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
0078f078  49 50 d3 e5                                      ldrb r5, [r3, #0x49]
0078f07c  00 00 55 e3                                      cmp r5, #0
0078f080  3c 00 00 1a                                      bne #0x78f178
0078f084  a8 80 94 e5                                      ldr r8, [r4, #0xa8]
0078f088  01 00 58 e3                                      cmp r8, #1
0078f08c  39 00 00 da                                      ble #0x78f178
0078f090  a4 60 94 e5                                      ldr r6, [r4, #0xa4]
0078f094  05 70 a0 e1                                      mov r7, r5
0078f098  00 90 a0 e3                                      mov sb, #0
0078f09c  05 30 86 e0                                      add r3, r6, r5
0078f0a0  1d 20 d3 e5                                      ldrb r2, [r3, #0x1d]
0078f0a4  09 10 a0 e1                                      mov r1, sb
0078f0a8  01 70 87 e2                                      add r7, r7, #1
0078f0ac  00 00 52 e3                                      cmp r2, #0
0078f0b0  30 50 85 e2                                      add r5, r5, #0x30
0078f0b4  0e 00 00 0a                                      beq #0x78f0f4
0078f0b8  14 a0 93 e5                                      ldr sl, [r3, #0x14]
0078f0bc  0a 00 a0 e1                                      mov r0, sl
0078f0c0  8c fc ed eb                                      bl #0x30e2f8
0078f0c4  00 00 50 e3                                      cmp r0, #0
0078f0c8  09 00 00 0a                                      beq #0x78f0f4
0078f0cc  08 00 57 e1                                      cmp r7, r8
0078f0d0  0a 00 00 0a                                      beq #0x78f100
0078f0d4  05 30 86 e0                                      add r3, r6, r5
0078f0d8  1d 20 d3 e5                                      ldrb r2, [r3, #0x1d]
0078f0dc  0a 90 a0 e1                                      mov sb, sl
0078f0e0  09 10 a0 e1                                      mov r1, sb
0078f0e4  00 00 52 e3                                      cmp r2, #0
0078f0e8  01 70 87 e2                                      add r7, r7, #1
0078f0ec  30 50 85 e2                                      add r5, r5, #0x30
0078f0f0  f0 ff ff 1a                                      bne #0x78f0b8
0078f0f4  08 00 57 e1                                      cmp r7, r8
0078f0f8  09 a0 a0 e1                                      mov sl, sb
0078f0fc  f4 ff ff 1a                                      bne #0x78f0d4
0078f100  0a 00 a0 e1                                      mov r0, sl
0078f104  bf 14 a0 e3                                      mov r1, #0xbf000000
0078f108  17 ff ed eb                                      bl #0x30ed6c
0078f10c  bf 14 a0 e3                                      mov r1, #0xbf000000
0078f110  00 50 a0 e1                                      mov r5, r0
0078f114  18 00 96 e5                                      ldr r0, [r6, #0x18]
0078f118  13 ff ed eb                                      bl #0x30ed6c
0078f11c  14 10 96 e5                                      ldr r1, [r6, #0x14]
0078f120  9f fe ed eb                                      bl #0x30eba4
0078f124  00 10 a0 e1                                      mov r1, r0
0078f128  05 00 a0 e1                                      mov r0, r5
0078f12c  9c fe ed eb                                      bl #0x30eba4
0078f130  00 50 a0 e3                                      mov r5, #0
0078f134  00 a0 a0 e1                                      mov sl, r0
0078f138  05 70 a0 e1                                      mov r7, r5
0078f13c  00 00 00 ea                                      b #0x78f144
0078f140  a4 60 94 e5                                      ldr r6, [r4, #0xa4]
0078f144  05 60 86 e0                                      add r6, r6, r5
0078f148  1d 30 d6 e5                                      ldrb r3, [r6, #0x1d]
0078f14c  0a 10 a0 e1                                      mov r1, sl
0078f150  01 70 87 e2                                      add r7, r7, #1
0078f154  00 00 53 e3                                      cmp r3, #0
0078f158  30 50 85 e2                                      add r5, r5, #0x30
0078f15c  03 00 00 0a                                      beq #0x78f170
0078f160  14 00 96 e5                                      ldr r0, [r6, #0x14]
0078f164  8e fe ed eb                                      bl #0x30eba4
0078f168  14 00 86 e5                                      str r0, [r6, #0x14]
0078f16c  a8 80 94 e5                                      ldr r8, [r4, #0xa8]
0078f170  08 00 57 e1                                      cmp r7, r8
0078f174  f1 ff ff ba                                      blt #0x78f140
0078f178  04 00 a0 e1                                      mov r0, r4
0078f17c  19 fb ff eb                                      bl #0x78dde8
0078f180  87 30 d0 e5                                      ldrb r3, [r0, #0x87]
0078f184  00 00 53 e3                                      cmp r3, #0
0078f188  01 00 00 0a                                      beq #0x78f194
0078f18c  04 00 a0 e1                                      mov r0, r4
0078f190  4e f4 ff eb                                      bl #0x78c2d0
0078f194  10 d0 8d e2                                      add sp, sp, #0x10
0078f198  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0078f19c  70 31 94 e5                                      ldr r3, [r4, #0x170]
0078f1a0  0c 20 a0 e3                                      mov r2, #0xc
0078f1a4  0d 00 a0 e1                                      mov r0, sp
0078f1a8  0c 00 8d e9                                      stmib sp, {r2, r3}
0078f1ac  00 60 8d e5                                      str r6, [sp]
0078f1b0  0c 60 cd e5                                      strb r6, [sp, #0xc]
0078f1b4  1e 54 ff eb                                      bl #0x764234
0078f1b8  74 01 94 e5                                      ldr r0, [r4, #0x174]
0078f1bc  c2 fc ed eb                                      bl #0x30e4cc
0078f1c0  0d 20 a0 e1                                      mov r2, sp
0078f1c4  04 00 8d e5                                      str r0, [sp, #4]
0078f1c8  06 30 a0 e1                                      mov r3, r6
0078f1cc  04 00 a0 e1                                      mov r0, r4
0078f1d0  4e 1f 84 e2                                      add r1, r4, #0x138
0078f1d4  6d f6 ff eb                                      bl #0x78cb90
0078f1d8  00 00 9d e5                                      ldr r0, [sp]
0078f1dc  00 00 50 e3                                      cmp r0, #0
0078f1e0  9e ff ff 0a                                      beq #0x78f060
0078f1e4  15 2c ff eb                                      bl #0x75a240
0078f1e8  9c ff ff ea                                      b #0x78f060

; FUNCTION 0x0078f1ec, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character8set_textERKNS_9tu_stringEb
; demangled: gameswf::edit_text_character::set_text(gameswf::tu_string const&, bool)
; decoder-mode: arm
0078f1ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0078f1f0  4e 6f 80 e2                                      add r6, r0, #0x138
0078f1f4  01 00 56 e1                                      cmp r6, r1
0078f1f8  00 40 a0 e1                                      mov r4, r0
0078f1fc  01 50 a0 e1                                      mov r5, r1
0078f200  02 70 a0 e1                                      mov r7, r2
0078f204  0a 00 00 0a                                      beq #0x78f234
0078f208  38 31 d0 e5                                      ldrb r3, [r0, #0x138]
0078f20c  ff 00 53 e3                                      cmp r3, #0xff
0078f210  d0 30 d1 e1                                      ldrsb r3, [r1]
0078f214  01 00 86 12                                      addne r0, r6, #1
0078f218  44 01 94 05                                      ldreq r0, [r4, #0x144]
0078f21c  01 00 73 e3                                      cmn r3, #1
0078f220  01 10 81 12                                      addne r1, r1, #1
0078f224  0c 10 95 05                                      ldreq r1, [r5, #0xc]
0078f228  3b fc ed eb                                      bl #0x30e31c
0078f22c  00 00 50 e3                                      cmp r0, #0
0078f230  00 00 00 1a                                      bne #0x78f238
0078f234  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0078f238  05 10 a0 e1                                      mov r1, r5
0078f23c  06 00 a0 e1                                      mov r0, r6
0078f240  42 0f ff eb                                      bl #0x752f50
0078f244  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
0078f248  64 10 93 e5                                      ldr r1, [r3, #0x64]
0078f24c  00 00 51 e3                                      cmp r1, #0
0078f250  08 00 00 da                                      ble #0x78f278
0078f254  38 31 d4 e5                                      ldrb r3, [r4, #0x138]
0078f258  73 30 af e6                                      sxtb r3, r3
0078f25c  01 00 73 e3                                      cmn r3, #1
0078f260  3c 31 94 05                                      ldreq r3, [r4, #0x13c]
0078f264  01 30 43 e2                                      sub r3, r3, #1
0078f268  03 00 51 e1                                      cmp r1, r3
0078f26c  01 00 00 aa                                      bge #0x78f278
0078f270  06 00 a0 e1                                      mov r0, r6
0078f274  a6 0a ff eb                                      bl #0x751d14
0078f278  04 00 a0 e1                                      mov r0, r4
0078f27c  07 10 a0 e1                                      mov r1, r7
0078f280  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0078f284  4b ff ff ea                                      b #0x78efb8

; FUNCTION 0x0078f288, declared_size=1896, range_size=1896, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character12reset_formatEPNS_13as_textformatE
; demangled: gameswf::edit_text_character::reset_format(gameswf::as_textformat*)
; decoder-mode: arm
0078f288  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078f28c  18 77 9f e5                                      ldr r7, [pc, #0x718]
0078f290  18 87 9f e5                                      ldr r8, [pc, #0x718]
0078f294  00 30 91 e5                                      ldr r3, [r1]
0078f298  07 70 8f e0                                      add r7, pc, r7
0078f29c  08 20 97 e7                                      ldr r2, [r7, r8]
0078f2a0  01 40 a0 e1                                      mov r4, r1
0078f2a4  43 df 4d e2                                      sub sp, sp, #0x10c
0078f2a8  00 10 92 e5                                      ldr r1, [r2]
0078f2ac  f0 90 8d e2                                      add sb, sp, #0xf0
0078f2b0  00 20 a0 e3                                      mov r2, #0
0078f2b4  04 11 8d e5                                      str r1, [sp, #0x104]
0078f2b8  f4 16 9f e5                                      ldr r1, [pc, #0x6f4]
0078f2bc  09 20 cd e5                                      strb r2, [sp, #9]
0078f2c0  08 20 cd e5                                      strb r2, [sp, #8]
0078f2c4  01 10 8f e0                                      add r1, pc, r1
0078f2c8  00 60 a0 e1                                      mov r6, r0
0078f2cc  08 50 8d e2                                      add r5, sp, #8
0078f2d0  09 00 a0 e1                                      mov r0, sb
0078f2d4  20 a0 93 e5                                      ldr sl, [r3, #0x20]
0078f2d8  e7 11 f2 eb                                      bl #0x413a7c
0078f2dc  09 10 a0 e1                                      mov r1, sb
0078f2e0  04 00 a0 e1                                      mov r0, r4
0078f2e4  05 20 a0 e1                                      mov r2, r5
0078f2e8  3a ff 2f e1                                      blx sl
0078f2ec  d0 3f dd e1                                      ldrsb r3, [sp, #0xf0]
0078f2f0  00 a0 a0 e1                                      mov sl, r0
0078f2f4  01 00 73 e3                                      cmn r3, #1
0078f2f8  7a 01 00 0a                                      beq #0x78f8e8
0078f2fc  00 00 5a e3                                      cmp sl, #0
0078f300  ea 00 00 1a                                      bne #0x78f6b0
0078f304  ac 16 9f e5                                      ldr r1, [pc, #0x6ac]
0078f308  00 30 94 e5                                      ldr r3, [r4]
0078f30c  dc 90 8d e2                                      add sb, sp, #0xdc
0078f310  01 10 8f e0                                      add r1, pc, r1
0078f314  09 00 a0 e1                                      mov r0, sb
0078f318  20 a0 93 e5                                      ldr sl, [r3, #0x20]
0078f31c  d6 11 f2 eb                                      bl #0x413a7c
0078f320  04 00 a0 e1                                      mov r0, r4
0078f324  09 10 a0 e1                                      mov r1, sb
0078f328  05 20 a0 e1                                      mov r2, r5
0078f32c  3a ff 2f e1                                      blx sl
0078f330  dc 3d dd e1                                      ldrsb r3, [sp, #0xdc]
0078f334  00 a0 a0 e1                                      mov sl, r0
0078f338  01 00 73 e3                                      cmn r3, #1
0078f33c  79 01 00 0a                                      beq #0x78f928
0078f340  00 00 5a e3                                      cmp sl, #0
0078f344  e9 00 00 1a                                      bne #0x78f6f0
0078f348  6c 16 9f e5                                      ldr r1, [pc, #0x66c]
0078f34c  00 30 94 e5                                      ldr r3, [r4]
0078f350  c8 90 8d e2                                      add sb, sp, #0xc8
0078f354  01 10 8f e0                                      add r1, pc, r1
0078f358  09 00 a0 e1                                      mov r0, sb
0078f35c  20 a0 93 e5                                      ldr sl, [r3, #0x20]
0078f360  c5 11 f2 eb                                      bl #0x413a7c
0078f364  04 00 a0 e1                                      mov r0, r4
0078f368  09 10 a0 e1                                      mov r1, sb
0078f36c  05 20 a0 e1                                      mov r2, r5
0078f370  3a ff 2f e1                                      blx sl
0078f374  d8 3c dd e1                                      ldrsb r3, [sp, #0xc8]
0078f378  00 a0 a0 e1                                      mov sl, r0
0078f37c  01 00 73 e3                                      cmn r3, #1
0078f380  5c 01 00 0a                                      beq #0x78f8f8
0078f384  00 00 5a e3                                      cmp sl, #0
0078f388  d0 00 00 1a                                      bne #0x78f6d0
0078f38c  2c 16 9f e5                                      ldr r1, [pc, #0x62c]
0078f390  00 30 94 e5                                      ldr r3, [r4]
0078f394  b4 90 8d e2                                      add sb, sp, #0xb4
0078f398  01 10 8f e0                                      add r1, pc, r1
0078f39c  09 00 a0 e1                                      mov r0, sb
0078f3a0  20 a0 93 e5                                      ldr sl, [r3, #0x20]
0078f3a4  b4 11 f2 eb                                      bl #0x413a7c
0078f3a8  04 00 a0 e1                                      mov r0, r4
0078f3ac  09 10 a0 e1                                      mov r1, sb
0078f3b0  05 20 a0 e1                                      mov r2, r5
0078f3b4  3a ff 2f e1                                      blx sl
0078f3b8  d4 3b dd e1                                      ldrsb r3, [sp, #0xb4]
0078f3bc  00 a0 a0 e1                                      mov sl, r0
0078f3c0  01 00 73 e3                                      cmn r3, #1
0078f3c4  4f 01 00 0a                                      beq #0x78f908
0078f3c8  00 00 5a e3                                      cmp sl, #0
0078f3cc  32 01 00 1a                                      bne #0x78f89c
0078f3d0  ec 15 9f e5                                      ldr r1, [pc, #0x5ec]
0078f3d4  00 30 94 e5                                      ldr r3, [r4]
0078f3d8  a0 90 8d e2                                      add sb, sp, #0xa0
0078f3dc  01 10 8f e0                                      add r1, pc, r1
0078f3e0  09 00 a0 e1                                      mov r0, sb
0078f3e4  20 a0 93 e5                                      ldr sl, [r3, #0x20]
0078f3e8  a3 11 f2 eb                                      bl #0x413a7c
0078f3ec  04 00 a0 e1                                      mov r0, r4
0078f3f0  09 10 a0 e1                                      mov r1, sb
0078f3f4  05 20 a0 e1                                      mov r2, r5
0078f3f8  3a ff 2f e1                                      blx sl
0078f3fc  d0 3a dd e1                                      ldrsb r3, [sp, #0xa0]
0078f400  00 a0 a0 e1                                      mov sl, r0
0078f404  01 00 73 e3                                      cmn r3, #1
0078f408  5a 01 00 0a                                      beq #0x78f978
0078f40c  00 00 5a e3                                      cmp sl, #0
0078f410  19 01 00 1a                                      bne #0x78f87c
0078f414  ac 15 9f e5                                      ldr r1, [pc, #0x5ac]
0078f418  00 30 94 e5                                      ldr r3, [r4]
0078f41c  8c 90 8d e2                                      add sb, sp, #0x8c
0078f420  01 10 8f e0                                      add r1, pc, r1
0078f424  09 00 a0 e1                                      mov r0, sb
0078f428  20 a0 93 e5                                      ldr sl, [r3, #0x20]
0078f42c  92 11 f2 eb                                      bl #0x413a7c
0078f430  04 00 a0 e1                                      mov r0, r4
0078f434  09 10 a0 e1                                      mov r1, sb
0078f438  05 20 a0 e1                                      mov r2, r5
0078f43c  3a ff 2f e1                                      blx sl
0078f440  dc 38 dd e1                                      ldrsb r3, [sp, #0x8c]
0078f444  00 a0 a0 e1                                      mov sl, r0
0078f448  01 00 73 e3                                      cmn r3, #1
0078f44c  4d 01 00 0a                                      beq #0x78f988
0078f450  00 00 5a e3                                      cmp sl, #0
0078f454  fd 00 00 1a                                      bne #0x78f850
0078f458  6c 15 9f e5                                      ldr r1, [pc, #0x56c]
0078f45c  00 30 94 e5                                      ldr r3, [r4]
0078f460  78 90 8d e2                                      add sb, sp, #0x78
0078f464  01 10 8f e0                                      add r1, pc, r1
0078f468  09 00 a0 e1                                      mov r0, sb
0078f46c  20 a0 93 e5                                      ldr sl, [r3, #0x20]
0078f470  81 11 f2 eb                                      bl #0x413a7c
0078f474  04 00 a0 e1                                      mov r0, r4
0078f478  09 10 a0 e1                                      mov r1, sb
0078f47c  05 20 a0 e1                                      mov r2, r5
0078f480  3a ff 2f e1                                      blx sl
0078f484  d8 37 dd e1                                      ldrsb r3, [sp, #0x78]
0078f488  00 a0 a0 e1                                      mov sl, r0
0078f48c  01 00 73 e3                                      cmn r3, #1
0078f490  20 01 00 0a                                      beq #0x78f918
0078f494  00 00 5a e3                                      cmp sl, #0
0078f498  e4 00 00 1a                                      bne #0x78f830
0078f49c  2c 15 9f e5                                      ldr r1, [pc, #0x52c]
0078f4a0  00 30 94 e5                                      ldr r3, [r4]
0078f4a4  64 90 8d e2                                      add sb, sp, #0x64
0078f4a8  01 10 8f e0                                      add r1, pc, r1
0078f4ac  09 00 a0 e1                                      mov r0, sb
0078f4b0  20 a0 93 e5                                      ldr sl, [r3, #0x20]
0078f4b4  70 11 f2 eb                                      bl #0x413a7c
0078f4b8  04 00 a0 e1                                      mov r0, r4
0078f4bc  09 10 a0 e1                                      mov r1, sb
0078f4c0  05 20 a0 e1                                      mov r2, r5
0078f4c4  3a ff 2f e1                                      blx sl
0078f4c8  d4 36 dd e1                                      ldrsb r3, [sp, #0x64]
0078f4cc  00 a0 a0 e1                                      mov sl, r0
0078f4d0  01 00 73 e3                                      cmn r3, #1
0078f4d4  23 01 00 0a                                      beq #0x78f968
0078f4d8  00 00 5a e3                                      cmp sl, #0
0078f4dc  ac 00 00 1a                                      bne #0x78f794
0078f4e0  78 11 96 e5                                      ldr r1, [r6, #0x178]
0078f4e4  50 90 8d e2                                      add sb, sp, #0x50
0078f4e8  09 00 a0 e1                                      mov r0, sb
0078f4ec  30 10 81 e2                                      add r1, r1, #0x30
0078f4f0  cd 0e ff eb                                      bl #0x75302c
0078f4f4  d8 14 9f e5                                      ldr r1, [pc, #0x4d8]
0078f4f8  00 30 94 e5                                      ldr r3, [r4]
0078f4fc  3c b0 8d e2                                      add fp, sp, #0x3c
0078f500  01 10 8f e0                                      add r1, pc, r1
0078f504  0b 00 a0 e1                                      mov r0, fp
0078f508  20 a0 93 e5                                      ldr sl, [r3, #0x20]
0078f50c  5a 11 f2 eb                                      bl #0x413a7c
0078f510  04 00 a0 e1                                      mov r0, r4
0078f514  0b 10 a0 e1                                      mov r1, fp
0078f518  05 20 a0 e1                                      mov r2, r5
0078f51c  3a ff 2f e1                                      blx sl
0078f520  dc 33 dd e1                                      ldrsb r3, [sp, #0x3c]
0078f524  00 a0 a0 e1                                      mov sl, r0
0078f528  01 00 73 e3                                      cmn r3, #1
0078f52c  19 01 00 0a                                      beq #0x78f998
0078f530  00 00 5a e3                                      cmp sl, #0
0078f534  90 00 00 1a                                      bne #0x78f77c
0078f538  78 31 96 e5                                      ldr r3, [r6, #0x178]
0078f53c  94 14 9f e5                                      ldr r1, [pc, #0x494]
0078f540  00 20 94 e5                                      ldr r2, [r4]
0078f544  4d 30 d3 e5                                      ldrb r3, [r3, #0x4d]
0078f548  28 b0 8d e2                                      add fp, sp, #0x28
0078f54c  01 10 8f e0                                      add r1, pc, r1
0078f550  0b 00 a0 e1                                      mov r0, fp
0078f554  20 a0 92 e5                                      ldr sl, [r2, #0x20]
0078f558  04 30 8d e5                                      str r3, [sp, #4]
0078f55c  46 11 f2 eb                                      bl #0x413a7c
0078f560  04 00 a0 e1                                      mov r0, r4
0078f564  0b 10 a0 e1                                      mov r1, fp
0078f568  05 20 a0 e1                                      mov r2, r5
0078f56c  3a ff 2f e1                                      blx sl
0078f570  d8 32 dd e1                                      ldrsb r3, [sp, #0x28]
0078f574  00 a0 a0 e1                                      mov sl, r0
0078f578  01 00 73 e3                                      cmn r3, #1
0078f57c  f1 00 00 0a                                      beq #0x78f948
0078f580  00 00 5a e3                                      cmp sl, #0
0078f584  78 00 00 1a                                      bne #0x78f76c
0078f588  00 30 94 e5                                      ldr r3, [r4]
0078f58c  48 14 9f e5                                      ldr r1, [pc, #0x448]
0078f590  78 21 96 e5                                      ldr r2, [r6, #0x178]
0078f594  20 30 93 e5                                      ldr r3, [r3, #0x20]
0078f598  14 b0 8d e2                                      add fp, sp, #0x14
0078f59c  01 10 8f e0                                      add r1, pc, r1
0078f5a0  0b 00 a0 e1                                      mov r0, fp
0078f5a4  4c a0 d2 e5                                      ldrb sl, [r2, #0x4c]
0078f5a8  00 30 8d e5                                      str r3, [sp]
0078f5ac  32 11 f2 eb                                      bl #0x413a7c
0078f5b0  04 00 a0 e1                                      mov r0, r4
0078f5b4  00 30 9d e5                                      ldr r3, [sp]
0078f5b8  0b 10 a0 e1                                      mov r1, fp
0078f5bc  05 20 a0 e1                                      mov r2, r5
0078f5c0  33 ff 2f e1                                      blx r3
0078f5c4  d4 31 dd e1                                      ldrsb r3, [sp, #0x14]
0078f5c8  00 40 a0 e1                                      mov r4, r0
0078f5cc  01 00 73 e3                                      cmn r3, #1
0078f5d0  e0 00 00 0a                                      beq #0x78f958
0078f5d4  00 00 54 e3                                      cmp r4, #0
0078f5d8  4c 00 00 1a                                      bne #0x78f710
0078f5dc  78 11 96 e5                                      ldr r1, [r6, #0x178]
0078f5e0  4c 30 d1 e5                                      ldrb r3, [r1, #0x4c]
0078f5e4  0a 00 53 e1                                      cmp r3, sl
0078f5e8  4f 00 00 0a                                      beq #0x78f72c
0078f5ec  00 30 96 e5                                      ldr r3, [r6]
0078f5f0  06 00 a0 e1                                      mov r0, r6
0078f5f4  09 10 a0 e1                                      mov r1, sb
0078f5f8  0f e0 a0 e1                                      mov lr, pc
0078f5fc  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0078f600  00 40 50 e2                                      subs r4, r0, #0
0078f604  05 00 00 0a                                      beq #0x78f620
0078f608  00 30 94 e5                                      ldr r3, [r4]
0078f60c  13 10 a0 e3                                      mov r1, #0x13
0078f610  0f e0 a0 e1                                      mov lr, pc
0078f614  08 f0 93 e5                                      ldr pc, [r3, #8]
0078f618  00 00 50 e3                                      cmp r0, #0
0078f61c  a6 00 00 1a                                      bne #0x78f8bc
0078f620  06 00 a0 e1                                      mov r0, r6
0078f624  52 c3 ff eb                                      bl #0x780374
0078f628  00 10 a0 e3                                      mov r1, #0
0078f62c  00 40 a0 e1                                      mov r4, r0
0078f630  88 00 a0 e3                                      mov r0, #0x88
0078f634  5b 0d ff eb                                      bl #0x752ba8
0078f638  04 10 a0 e1                                      mov r1, r4
0078f63c  00 b0 a0 e1                                      mov fp, r0
0078f640  a4 00 01 eb                                      bl #0x7cf8d8
0078f644  0b 10 a0 e1                                      mov r1, fp
0078f648  5e 0f 86 e2                                      add r0, r6, #0x178
0078f64c  f8 52 ff eb                                      bl #0x764234
0078f650  78 31 96 e5                                      ldr r3, [r6, #0x178]
0078f654  04 20 9d e5                                      ldr r2, [sp, #4]
0078f658  09 10 a0 e1                                      mov r1, sb
0078f65c  4d 20 c3 e5                                      strb r2, [r3, #0x4d]
0078f660  78 31 96 e5                                      ldr r3, [r6, #0x178]
0078f664  4c a0 c3 e5                                      strb sl, [r3, #0x4c]
0078f668  78 01 96 e5                                      ldr r0, [r6, #0x178]
0078f66c  30 00 80 e2                                      add r0, r0, #0x30
0078f670  36 0e ff eb                                      bl #0x752f50
0078f674  06 00 a0 e1                                      mov r0, r6
0078f678  00 10 a0 e3                                      mov r1, #0
0078f67c  4d fe ff eb                                      bl #0x78efb8
0078f680  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
0078f684  01 00 73 e3                                      cmn r3, #1
0078f688  aa 00 00 0a                                      beq #0x78f938
0078f68c  05 00 a0 e1                                      mov r0, r5
0078f690  a3 1e 00 eb                                      bl #0x797124
0078f694  08 30 97 e7                                      ldr r3, [r7, r8]
0078f698  04 21 9d e5                                      ldr r2, [sp, #0x104]
0078f69c  00 30 93 e5                                      ldr r3, [r3]
0078f6a0  03 00 52 e1                                      cmp r2, r3
0078f6a4  bf 00 00 1a                                      bne #0x78f9a8
0078f6a8  43 df 8d e2                                      add sp, sp, #0x10c
0078f6ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0078f6b0  05 00 a0 e1                                      mov r0, r5
0078f6b4  e6 20 00 eb                                      bl #0x797a54
0078f6b8  f8 fb ed eb                                      bl #0x30e6a0
0078f6bc  41 14 a0 e3                                      mov r1, #0x41000000
0078f6c0  0a 16 81 e2                                      add r1, r1, #0xa00000
0078f6c4  a8 fd ed eb                                      bl #0x30ed6c
0078f6c8  80 01 86 e5                                      str r0, [r6, #0x180]
0078f6cc  0c ff ff ea                                      b #0x78f304
0078f6d0  05 00 a0 e1                                      mov r0, r5
0078f6d4  de 20 00 eb                                      bl #0x797a54
0078f6d8  f0 fb ed eb                                      bl #0x30e6a0
0078f6dc  41 14 a0 e3                                      mov r1, #0x41000000
0078f6e0  0a 16 81 e2                                      add r1, r1, #0xa00000
0078f6e4  a0 fd ed eb                                      bl #0x30ed6c
0078f6e8  84 01 86 e5                                      str r0, [r6, #0x184]
0078f6ec  26 ff ff ea                                      b #0x78f38c
0078f6f0  05 00 a0 e1                                      mov r0, r5
0078f6f4  d6 20 00 eb                                      bl #0x797a54
0078f6f8  e8 fb ed eb                                      bl #0x30e6a0
0078f6fc  41 14 a0 e3                                      mov r1, #0x41000000
0078f700  0a 16 81 e2                                      add r1, r1, #0xa00000
0078f704  98 fd ed eb                                      bl #0x30ed6c
0078f708  88 01 86 e5                                      str r0, [r6, #0x188]
0078f70c  0d ff ff ea                                      b #0x78f348
0078f710  05 00 a0 e1                                      mov r0, r5
0078f714  91 20 00 eb                                      bl #0x797960
0078f718  78 11 96 e5                                      ldr r1, [r6, #0x178]
0078f71c  00 a0 a0 e1                                      mov sl, r0
0078f720  4c 30 d1 e5                                      ldrb r3, [r1, #0x4c]
0078f724  0a 00 53 e1                                      cmp r3, sl
0078f728  af ff ff 1a                                      bne #0x78f5ec
0078f72c  4d 30 d1 e5                                      ldrb r3, [r1, #0x4d]
0078f730  04 20 9d e5                                      ldr r2, [sp, #4]
0078f734  02 00 53 e1                                      cmp r3, r2
0078f738  ab ff ff 1a                                      bne #0x78f5ec
0078f73c  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
0078f740  01 00 73 e3                                      cmn r3, #1
0078f744  d0 33 d1 e1                                      ldrsb r3, [r1, #0x30]
0078f748  01 00 89 12                                      addne r0, sb, #1
0078f74c  5c 00 9d 05                                      ldreq r0, [sp, #0x5c]
0078f750  01 00 73 e3                                      cmn r3, #1
0078f754  31 10 81 12                                      addne r1, r1, #0x31
0078f758  3c 10 91 05                                      ldreq r1, [r1, #0x3c]
0078f75c  ee fa ed eb                                      bl #0x30e31c
0078f760  00 00 50 e3                                      cmp r0, #0
0078f764  c2 ff ff 0a                                      beq #0x78f674
0078f768  9f ff ff ea                                      b #0x78f5ec
0078f76c  05 00 a0 e1                                      mov r0, r5
0078f770  7a 20 00 eb                                      bl #0x797960
0078f774  04 00 8d e5                                      str r0, [sp, #4]
0078f778  82 ff ff ea                                      b #0x78f588
0078f77c  05 00 a0 e1                                      mov r0, r5
0078f780  bf 44 f2 eb                                      bl #0x420a84
0078f784  00 10 a0 e1                                      mov r1, r0
0078f788  09 00 a0 e1                                      mov r0, sb
0078f78c  ef 0d ff eb                                      bl #0x752f50
0078f790  68 ff ff ea                                      b #0x78f538
0078f794  05 00 a0 e1                                      mov r0, r5
0078f798  b9 44 f2 eb                                      bl #0x420a84
0078f79c  d0 30 d0 e1                                      ldrsb r3, [r0]
0078f7a0  38 12 9f e5                                      ldr r1, [pc, #0x238]
0078f7a4  01 00 73 e3                                      cmn r3, #1
0078f7a8  0c 00 90 05                                      ldreq r0, [r0, #0xc]
0078f7ac  01 00 80 12                                      addne r0, r0, #1
0078f7b0  01 10 8f e0                                      add r1, pc, r1
0078f7b4  d8 fa ed eb                                      bl #0x30e31c
0078f7b8  00 00 50 e3                                      cmp r0, #0
0078f7bc  7c 01 86 05                                      streq r0, [r6, #0x17c]
0078f7c0  46 ff ff 0a                                      beq #0x78f4e0
0078f7c4  05 00 a0 e1                                      mov r0, r5
0078f7c8  ad 44 f2 eb                                      bl #0x420a84
0078f7cc  10 12 9f e5                                      ldr r1, [pc, #0x210]
0078f7d0  01 10 8f e0                                      add r1, pc, r1
0078f7d4  b8 ed ff eb                                      bl #0x78aebc
0078f7d8  00 00 50 e3                                      cmp r0, #0
0078f7dc  02 30 a0 13                                      movne r3, #2
0078f7e0  7c 31 86 15                                      strne r3, [r6, #0x17c]
0078f7e4  3d ff ff 1a                                      bne #0x78f4e0
0078f7e8  05 00 a0 e1                                      mov r0, r5
0078f7ec  a4 44 f2 eb                                      bl #0x420a84
0078f7f0  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
0078f7f4  01 10 8f e0                                      add r1, pc, r1
0078f7f8  af ed ff eb                                      bl #0x78aebc
0078f7fc  00 00 50 e3                                      cmp r0, #0
0078f800  01 30 a0 13                                      movne r3, #1
0078f804  7c 31 86 15                                      strne r3, [r6, #0x17c]
0078f808  34 ff ff 1a                                      bne #0x78f4e0
0078f80c  05 00 a0 e1                                      mov r0, r5
0078f810  9b 44 f2 eb                                      bl #0x420a84
0078f814  d0 11 9f e5                                      ldr r1, [pc, #0x1d0]
0078f818  01 10 8f e0                                      add r1, pc, r1
0078f81c  a6 ed ff eb                                      bl #0x78aebc
0078f820  00 00 50 e3                                      cmp r0, #0
0078f824  03 30 a0 13                                      movne r3, #3
0078f828  7c 31 86 15                                      strne r3, [r6, #0x17c]
0078f82c  2b ff ff ea                                      b #0x78f4e0
0078f830  05 00 a0 e1                                      mov r0, r5
0078f834  86 20 00 eb                                      bl #0x797a54
0078f838  98 fb ed eb                                      bl #0x30e6a0
0078f83c  41 14 a0 e3                                      mov r1, #0x41000000
0078f840  0a 16 81 e2                                      add r1, r1, #0xa00000
0078f844  48 fd ed eb                                      bl #0x30ed6c
0078f848  74 01 86 e5                                      str r0, [r6, #0x174]
0078f84c  12 ff ff ea                                      b #0x78f49c
0078f850  05 00 a0 e1                                      mov r0, r5
0078f854  7e 20 00 eb                                      bl #0x797a54
0078f858  71 fc ed eb                                      bl #0x30ea24
0078f85c  40 34 a0 e1                                      asr r3, r0, #8
0078f860  40 28 a0 e1                                      asr r2, r0, #0x10
0078f864  71 31 c6 e5                                      strb r3, [r6, #0x171]
0078f868  00 30 e0 e3                                      mvn r3, #0
0078f86c  70 21 c6 e5                                      strb r2, [r6, #0x170]
0078f870  72 01 c6 e5                                      strb r0, [r6, #0x172]
0078f874  73 31 c6 e5                                      strb r3, [r6, #0x173]
0078f878  f6 fe ff ea                                      b #0x78f458
0078f87c  05 00 a0 e1                                      mov r0, r5
0078f880  73 20 00 eb                                      bl #0x797a54
0078f884  85 fb ed eb                                      bl #0x30e6a0
0078f888  41 14 a0 e3                                      mov r1, #0x41000000
0078f88c  0a 16 81 e2                                      add r1, r1, #0xa00000
0078f890  35 fd ed eb                                      bl #0x30ed6c
0078f894  90 01 86 e5                                      str r0, [r6, #0x190]
0078f898  dd fe ff ea                                      b #0x78f414
0078f89c  05 00 a0 e1                                      mov r0, r5
0078f8a0  6b 20 00 eb                                      bl #0x797a54
0078f8a4  7d fb ed eb                                      bl #0x30e6a0
0078f8a8  41 14 a0 e3                                      mov r1, #0x41000000
0078f8ac  0a 16 81 e2                                      add r1, r1, #0xa00000
0078f8b0  2d fd ed eb                                      bl #0x30ed6c
0078f8b4  8c 01 86 e5                                      str r0, [r6, #0x18c]
0078f8b8  c4 fe ff ea                                      b #0x78f3d0
0078f8bc  13 10 a0 e3                                      mov r1, #0x13
0078f8c0  00 30 94 e5                                      ldr r3, [r4]
0078f8c4  04 00 a0 e1                                      mov r0, r4
0078f8c8  0f e0 a0 e1                                      mov lr, pc
0078f8cc  08 f0 93 e5                                      ldr pc, [r3, #8]
0078f8d0  00 00 50 e3                                      cmp r0, #0
0078f8d4  04 10 a0 11                                      movne r1, r4
0078f8d8  00 10 a0 03                                      moveq r1, #0
0078f8dc  5e 0f 86 e2                                      add r0, r6, #0x178
0078f8e0  53 52 ff eb                                      bl #0x764234
0078f8e4  59 ff ff ea                                      b #0x78f650
0078f8e8  fc 00 9d e5                                      ldr r0, [sp, #0xfc]
0078f8ec  f8 10 9d e5                                      ldr r1, [sp, #0xf8]
0078f8f0  90 0c ff eb                                      bl #0x752b38
0078f8f4  80 fe ff ea                                      b #0x78f2fc
0078f8f8  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
0078f8fc  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
0078f900  8c 0c ff eb                                      bl #0x752b38
0078f904  9e fe ff ea                                      b #0x78f384
0078f908  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
0078f90c  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
0078f910  88 0c ff eb                                      bl #0x752b38
0078f914  ab fe ff ea                                      b #0x78f3c8
0078f918  84 00 9d e5                                      ldr r0, [sp, #0x84]
0078f91c  80 10 9d e5                                      ldr r1, [sp, #0x80]
0078f920  84 0c ff eb                                      bl #0x752b38
0078f924  da fe ff ea                                      b #0x78f494
0078f928  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
0078f92c  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
0078f930  80 0c ff eb                                      bl #0x752b38
0078f934  81 fe ff ea                                      b #0x78f340
0078f938  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0078f93c  58 10 9d e5                                      ldr r1, [sp, #0x58]
0078f940  7c 0c ff eb                                      bl #0x752b38
0078f944  50 ff ff ea                                      b #0x78f68c
0078f948  34 00 9d e5                                      ldr r0, [sp, #0x34]
0078f94c  30 10 9d e5                                      ldr r1, [sp, #0x30]
0078f950  78 0c ff eb                                      bl #0x752b38
0078f954  09 ff ff ea                                      b #0x78f580
0078f958  20 00 9d e5                                      ldr r0, [sp, #0x20]
0078f95c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0078f960  74 0c ff eb                                      bl #0x752b38
0078f964  1a ff ff ea                                      b #0x78f5d4
0078f968  70 00 9d e5                                      ldr r0, [sp, #0x70]
0078f96c  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
0078f970  70 0c ff eb                                      bl #0x752b38
0078f974  d7 fe ff ea                                      b #0x78f4d8
0078f978  ac 00 9d e5                                      ldr r0, [sp, #0xac]
0078f97c  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0078f980  6c 0c ff eb                                      bl #0x752b38
0078f984  a0 fe ff ea                                      b #0x78f40c
0078f988  98 00 9d e5                                      ldr r0, [sp, #0x98]
0078f98c  94 10 9d e5                                      ldr r1, [sp, #0x94]
0078f990  68 0c ff eb                                      bl #0x752b38
0078f994  ad fe ff ea                                      b #0x78f450
0078f998  48 00 9d e5                                      ldr r0, [sp, #0x48]
0078f99c  44 10 9d e5                                      ldr r1, [sp, #0x44]
0078f9a0  64 0c ff eb                                      bl #0x752b38
0078f9a4  e1 fe ff ea                                      b #0x78f530
0078f9a8  58 fa ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0078f9ac  f8 57 20 00 ac 40 00 00 b4 ac 17 00 78 ac 17 00  .byte 0xf8, 0x57, 0x20, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0xac, 0x17, 0x00, 0x78, 0xac, 0x17, 0x00
0078f9bc  3c ac 17 00 08 ac 17 00 cc ab 17 00 40 37 15 00  .byte 0x3c, 0xac, 0x17, 0x00, 0x08, 0xac, 0x17, 0x00, 0xcc, 0xab, 0x17, 0x00, 0x40, 0x37, 0x15, 0x00
0078f9cc  6c 62 13 00 10 ab 17 00 58 aa 17 00 8c aa 17 00  .byte 0x6c, 0x62, 0x13, 0x00, 0x10, 0xab, 0x17, 0x00, 0x58, 0xaa, 0x17, 0x00, 0x8c, 0xaa, 0x17, 0x00
0078f9dc  44 aa 17 00 10 a8 17 00 68 e8 14 00 d4 a7 17 00  .byte 0x44, 0xaa, 0x17, 0x00, 0x10, 0xa8, 0x17, 0x00, 0x68, 0xe8, 0x14, 0x00, 0xd4, 0xa7, 0x17, 0x00
0078f9ec  b8 a7 17 00                                      .byte 0xb8, 0xa7, 0x17, 0x00

; FUNCTION 0x00790ab0, declared_size=500, range_size=500, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character14set_text_valueERKNS_9tu_stringEb
; demangled: gameswf::edit_text_character::set_text_value(gameswf::tu_string const&, bool)
; decoder-mode: arm
00790ab0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00790ab4  e0 41 9f e5                                      ldr r4, [pc, #0x1e0]
00790ab8  e0 61 9f e5                                      ldr r6, [pc, #0x1e0]
00790abc  50 d0 4d e2                                      sub sp, sp, #0x50
00790ac0  04 40 8f e0                                      add r4, pc, r4
00790ac4  06 30 94 e7                                      ldr r3, [r4, r6]
00790ac8  00 50 a0 e1                                      mov r5, r0
00790acc  01 a0 a0 e1                                      mov sl, r1
00790ad0  00 30 93 e5                                      ldr r3, [r3]
00790ad4  4c 30 8d e5                                      str r3, [sp, #0x4c]
00790ad8  c3 f9 ff eb                                      bl #0x78f1ec
00790adc  05 00 a0 e1                                      mov r0, r5
00790ae0  1f e6 ff eb                                      bl #0x78a364
00790ae4  d0 30 d0 e1                                      ldrsb r3, [r0]
00790ae8  01 00 73 e3                                      cmn r3, #1
00790aec  04 30 90 05                                      ldreq r3, [r0, #4]
00790af0  01 30 43 e2                                      sub r3, r3, #1
00790af4  00 00 53 e3                                      cmp r3, #0
00790af8  47 00 00 da                                      ble #0x790c1c
00790afc  40 70 95 e5                                      ldr r7, [r5, #0x40]
00790b00  00 00 57 e3                                      cmp r7, #0
00790b04  03 00 00 0a                                      beq #0x790b18
00790b08  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
00790b0c  04 30 d0 e5                                      ldrb r3, [r0, #4]
00790b10  00 00 53 e3                                      cmp r3, #0
00790b14  47 00 00 0a                                      beq #0x790c38
00790b18  48 30 9d e5                                      ldr r3, [sp, #0x48]
00790b1c  00 10 e0 e3                                      mvn r1, #0
00790b20  00 20 a0 e3                                      mov r2, #0
00790b24  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
00790b28  23 1c a0 e1                                      lsr r1, r3, #0x18
00790b2c  12 10 c0 e7                                      bfi r1, r2, #0, #1
00790b30  01 c0 a0 e3                                      mov ip, #1
00790b34  05 00 a0 e1                                      mov r0, r5
00790b38  48 30 8d e5                                      str r3, [sp, #0x48]
00790b3c  38 c0 cd e5                                      strb ip, [sp, #0x38]
00790b40  39 20 cd e5                                      strb r2, [sp, #0x39]
00790b44  4b 10 cd e5                                      strb r1, [sp, #0x4b]
00790b48  05 e6 ff eb                                      bl #0x78a364
00790b4c  24 80 8d e2                                      add r8, sp, #0x24
00790b50  00 10 a0 e1                                      mov r1, r0
00790b54  08 00 a0 e1                                      mov r0, r8
00790b58  33 09 ff eb                                      bl #0x75302c
00790b5c  05 00 a0 e1                                      mov r0, r5
00790b60  38 50 8d e2                                      add r5, sp, #0x38
00790b64  fe e5 ff eb                                      bl #0x78a364
00790b68  05 10 a0 e1                                      mov r1, r5
00790b6c  08 20 a0 e1                                      mov r2, r8
00790b70  6e f1 00 eb                                      bl #0x7cd130
00790b74  00 00 50 e3                                      cmp r0, #0
00790b78  06 00 00 0a                                      beq #0x790b98
00790b7c  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
00790b80  07 00 a0 e1                                      mov r0, r7
00790b84  01 00 73 e3                                      cmn r3, #1
00790b88  01 10 85 12                                      addne r1, r5, #1
00790b8c  44 10 9d 05                                      ldreq r1, [sp, #0x44]
00790b90  bb 69 ff eb                                      bl #0x76b284
00790b94  00 70 a0 e1                                      mov r7, r0
00790b98  00 00 57 e3                                      cmp r7, #0
00790b9c  18 00 00 0a                                      beq #0x790c04
00790ba0  00 30 97 e5                                      ldr r3, [r7]
00790ba4  10 90 8d e2                                      add sb, sp, #0x10
00790ba8  08 10 a0 e1                                      mov r1, r8
00790bac  09 00 a0 e1                                      mov r0, sb
00790bb0  1c 80 93 e5                                      ldr r8, [r3, #0x1c]
00790bb4  1c 09 ff eb                                      bl #0x75302c
00790bb8  d0 30 da e1                                      ldrsb r3, [sl]
00790bbc  04 50 8d e2                                      add r5, sp, #4
00790bc0  05 00 a0 e1                                      mov r0, r5
00790bc4  01 00 73 e3                                      cmn r3, #1
00790bc8  0c 10 9a 05                                      ldreq r1, [sl, #0xc]
00790bcc  00 30 a0 e3                                      mov r3, #0
00790bd0  01 10 8a 12                                      addne r1, sl, #1
00790bd4  05 30 cd e5                                      strb r3, [sp, #5]
00790bd8  04 30 cd e5                                      strb r3, [sp, #4]
00790bdc  db 19 00 eb                                      bl #0x797350
00790be0  09 10 a0 e1                                      mov r1, sb
00790be4  05 20 a0 e1                                      mov r2, r5
00790be8  07 00 a0 e1                                      mov r0, r7
00790bec  38 ff 2f e1                                      blx r8
00790bf0  05 00 a0 e1                                      mov r0, r5
00790bf4  4a 19 00 eb                                      bl #0x797124
00790bf8  d0 31 dd e1                                      ldrsb r3, [sp, #0x10]
00790bfc  01 00 73 e3                                      cmn r3, #1
00790c00  16 00 00 0a                                      beq #0x790c60
00790c04  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
00790c08  01 00 73 e3                                      cmn r3, #1
00790c0c  17 00 00 0a                                      beq #0x790c70
00790c10  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
00790c14  01 00 73 e3                                      cmn r3, #1
00790c18  1a 00 00 0a                                      beq #0x790c88
00790c1c  06 30 94 e7                                      ldr r3, [r4, r6]
00790c20  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00790c24  00 30 93 e5                                      ldr r3, [r3]
00790c28  03 00 52 e1                                      cmp r2, r3
00790c2c  19 00 00 1a                                      bne #0x790c98
00790c30  50 d0 8d e2                                      add sp, sp, #0x50
00790c34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00790c38  00 10 90 e5                                      ldr r1, [r0]
00790c3c  01 10 41 e2                                      sub r1, r1, #1
00790c40  00 00 51 e3                                      cmp r1, #0
00790c44  00 10 80 e5                                      str r1, [r0]
00790c48  00 00 00 1a                                      bne #0x790c50
00790c4c  b9 07 ff eb                                      bl #0x752b38
00790c50  00 70 a0 e3                                      mov r7, #0
00790c54  3c 70 85 e5                                      str r7, [r5, #0x3c]
00790c58  40 70 85 e5                                      str r7, [r5, #0x40]
00790c5c  ad ff ff ea                                      b #0x790b18
00790c60  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00790c64  18 10 9d e5                                      ldr r1, [sp, #0x18]
00790c68  b2 07 ff eb                                      bl #0x752b38
00790c6c  e4 ff ff ea                                      b #0x790c04
00790c70  30 00 9d e5                                      ldr r0, [sp, #0x30]
00790c74  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00790c78  ae 07 ff eb                                      bl #0x752b38
00790c7c  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
00790c80  01 00 73 e3                                      cmn r3, #1
00790c84  e4 ff ff 1a                                      bne #0x790c1c
00790c88  44 00 9d e5                                      ldr r0, [sp, #0x44]
00790c8c  40 10 9d e5                                      ldr r1, [sp, #0x40]
00790c90  a8 07 ff eb                                      bl #0x752b38
00790c94  e0 ff ff ea                                      b #0x790c1c
00790c98  9c f5 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00790c9c  d0 3f 20 00 ac 40 00 00                          .byte 0xd0, 0x3f, 0x20, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00790ca4, declared_size=692, range_size=692, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character10set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::edit_text_character::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
00790ca4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00790ca8  98 42 9f e5                                      ldr r4, [pc, #0x298]
00790cac  98 62 9f e5                                      ldr r6, [pc, #0x298]
00790cb0  34 d0 4d e2                                      sub sp, sp, #0x34
00790cb4  04 40 8f e0                                      add r4, pc, r4
00790cb8  06 30 94 e7                                      ldr r3, [r4, r6]
00790cbc  00 50 a0 e1                                      mov r5, r0
00790cc0  01 00 a0 e1                                      mov r0, r1
00790cc4  00 30 93 e5                                      ldr r3, [r3]
00790cc8  01 70 a0 e1                                      mov r7, r1
00790ccc  02 80 a0 e1                                      mov r8, r2
00790cd0  2c 30 8d e5                                      str r3, [sp, #0x2c]
00790cd4  d5 84 ff eb                                      bl #0x772030
00790cd8  16 00 40 e2                                      sub r0, r0, #0x16
00790cdc  09 00 50 e3                                      cmp r0, #9
00790ce0  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
00790ce4  16 00 00 ea                                      b #0x790d44
00790ce8  2e 00 00 ea                                      b #0x790da8
00790cec  46 00 00 ea                                      b #0x790e0c
00790cf0  13 00 00 ea                                      b #0x790d44
00790cf4  12 00 00 ea                                      b #0x790d44
00790cf8  5c 00 00 ea                                      b #0x790e70
00790cfc  69 00 00 ea                                      b #0x790ea8
00790d00  70 00 00 ea                                      b #0x790ec8
00790d04  77 00 00 ea                                      b #0x790ee8
00790d08  00 00 00 ea                                      b #0x790d10
00790d0c  17 00 00 ea                                      b #0x790d70
00790d10  08 00 a0 e1                                      mov r0, r8
00790d14  5a 3f f2 eb                                      bl #0x420a84
00790d18  d0 30 d0 e1                                      ldrsb r3, [r0]
00790d1c  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
00790d20  01 00 73 e3                                      cmn r3, #1
00790d24  01 00 80 12                                      addne r0, r0, #1
00790d28  0c 00 90 05                                      ldreq r0, [r0, #0xc]
00790d2c  01 10 8f e0                                      add r1, pc, r1
00790d30  f6 03 ff eb                                      bl #0x751d10
00790d34  00 00 50 e3                                      cmp r0, #0
00790d38  72 00 00 1a                                      bne #0x790f08
00790d3c  a0 30 95 e5                                      ldr r3, [r5, #0xa0]
00790d40  4b 00 c3 e5                                      strb r0, [r3, #0x4b]
00790d44  08 20 a0 e1                                      mov r2, r8
00790d48  05 00 a0 e1                                      mov r0, r5
00790d4c  07 10 a0 e1                                      mov r1, r7
00790d50  31 0a ff eb                                      bl #0x75361c
00790d54  06 30 94 e7                                      ldr r3, [r4, r6]
00790d58  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00790d5c  00 30 93 e5                                      ldr r3, [r3]
00790d60  03 00 52 e1                                      cmp r2, r3
00790d64  76 00 00 1a                                      bne #0x790f44
00790d68  34 d0 8d e2                                      add sp, sp, #0x34
00790d6c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00790d70  08 00 a0 e1                                      mov r0, r8
00790d74  36 1b 00 eb                                      bl #0x797a54
00790d78  29 f7 ed eb                                      bl #0x30ea24
00790d7c  00 10 e0 e3                                      mvn r1, #0
00790d80  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
00790d84  50 24 e7 e7                                      ubfx r2, r0, #8, #8
00790d88  97 11 c5 e5                                      strb r1, [r5, #0x197]
00790d8c  96 01 c5 e5                                      strb r0, [r5, #0x196]
00790d90  95 21 c5 e5                                      strb r2, [r5, #0x195]
00790d94  94 31 c5 e5                                      strb r3, [r5, #0x194]
00790d98  05 00 a0 e1                                      mov r0, r5
00790d9c  00 10 a0 e3                                      mov r1, #0
00790da0  84 f8 ff eb                                      bl #0x78efb8
00790da4  e6 ff ff ea                                      b #0x790d44
00790da8  28 30 9d e5                                      ldr r3, [sp, #0x28]
00790dac  00 20 e0 e3                                      mvn r2, #0
00790db0  00 a0 a0 e3                                      mov sl, #0
00790db4  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00790db8  23 2c a0 e1                                      lsr r2, r3, #0x18
00790dbc  1a 20 c0 e7                                      bfi r2, sl, #0, #1
00790dc0  01 c0 a0 e3                                      mov ip, #1
00790dc4  18 10 8d e2                                      add r1, sp, #0x18
00790dc8  08 00 a0 e1                                      mov r0, r8
00790dcc  28 30 8d e5                                      str r3, [sp, #0x28]
00790dd0  18 c0 cd e5                                      strb ip, [sp, #0x18]
00790dd4  2b 20 cd e5                                      strb r2, [sp, #0x2b]
00790dd8  19 a0 cd e5                                      strb sl, [sp, #0x19]
00790ddc  66 1b 00 eb                                      bl #0x797b7c
00790de0  0a 20 a0 e1                                      mov r2, sl
00790de4  00 10 a0 e1                                      mov r1, r0
00790de8  05 00 a0 e1                                      mov r0, r5
00790dec  2f ff ff eb                                      bl #0x790ab0
00790df0  d8 31 dd e1                                      ldrsb r3, [sp, #0x18]
00790df4  01 00 73 e3                                      cmn r3, #1
00790df8  d1 ff ff 1a                                      bne #0x790d44
00790dfc  24 00 9d e5                                      ldr r0, [sp, #0x24]
00790e00  20 10 9d e5                                      ldr r1, [sp, #0x20]
00790e04  4b 07 ff eb                                      bl #0x752b38
00790e08  cd ff ff ea                                      b #0x790d44
00790e0c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00790e10  00 10 e0 e3                                      mvn r1, #0
00790e14  00 20 a0 e3                                      mov r2, #0
00790e18  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
00790e1c  23 cc a0 e1                                      lsr ip, r3, #0x18
00790e20  12 c0 c0 e7                                      bfi ip, r2, #0, #1
00790e24  01 a0 a0 e3                                      mov sl, #1
00790e28  04 10 8d e2                                      add r1, sp, #4
00790e2c  08 00 a0 e1                                      mov r0, r8
00790e30  14 30 8d e5                                      str r3, [sp, #0x14]
00790e34  05 20 cd e5                                      strb r2, [sp, #5]
00790e38  17 c0 cd e5                                      strb ip, [sp, #0x17]
00790e3c  04 a0 cd e5                                      strb sl, [sp, #4]
00790e40  4d 1b 00 eb                                      bl #0x797b7c
00790e44  0a 20 a0 e1                                      mov r2, sl
00790e48  00 10 a0 e1                                      mov r1, r0
00790e4c  05 00 a0 e1                                      mov r0, r5
00790e50  16 ff ff eb                                      bl #0x790ab0
00790e54  d4 30 dd e1                                      ldrsb r3, [sp, #4]
00790e58  01 00 73 e3                                      cmn r3, #1
00790e5c  b8 ff ff 1a                                      bne #0x790d44
00790e60  10 00 9d e5                                      ldr r0, [sp, #0x10]
00790e64  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00790e68  32 07 ff eb                                      bl #0x752b38
00790e6c  b4 ff ff ea                                      b #0x790d44
00790e70  08 00 a0 e1                                      mov r0, r8
00790e74  f6 1a 00 eb                                      bl #0x797a54
00790e78  e9 f6 ed eb                                      bl #0x30ea24
00790e7c  50 34 e7 e7                                      ubfx r3, r0, #8, #8
00790e80  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00790e84  71 31 c5 e5                                      strb r3, [r5, #0x171]
00790e88  00 30 e0 e3                                      mvn r3, #0
00790e8c  72 01 c5 e5                                      strb r0, [r5, #0x172]
00790e90  70 21 c5 e5                                      strb r2, [r5, #0x170]
00790e94  73 31 c5 e5                                      strb r3, [r5, #0x173]
00790e98  05 00 a0 e1                                      mov r0, r5
00790e9c  00 10 a0 e3                                      mov r1, #0
00790ea0  44 f8 ff eb                                      bl #0x78efb8
00790ea4  a6 ff ff ea                                      b #0x790d44
00790ea8  08 00 a0 e1                                      mov r0, r8
00790eac  a0 a0 95 e5                                      ldr sl, [r5, #0xa0]
00790eb0  aa 1a 00 eb                                      bl #0x797960
00790eb4  00 10 a0 e3                                      mov r1, #0
00790eb8  4e 00 ca e5                                      strb r0, [sl, #0x4e]
00790ebc  05 00 a0 e1                                      mov r0, r5
00790ec0  3c f8 ff eb                                      bl #0x78efb8
00790ec4  9e ff ff ea                                      b #0x790d44
00790ec8  08 00 a0 e1                                      mov r0, r8
00790ecc  a0 a0 95 e5                                      ldr sl, [r5, #0xa0]
00790ed0  a2 1a 00 eb                                      bl #0x797960
00790ed4  00 10 a0 e3                                      mov r1, #0
00790ed8  49 00 ca e5                                      strb r0, [sl, #0x49]
00790edc  05 00 a0 e1                                      mov r0, r5
00790ee0  34 f8 ff eb                                      bl #0x78efb8
00790ee4  96 ff ff ea                                      b #0x790d44
00790ee8  08 00 a0 e1                                      mov r0, r8
00790eec  a0 a0 95 e5                                      ldr sl, [r5, #0xa0]
00790ef0  9a 1a 00 eb                                      bl #0x797960
00790ef4  00 10 a0 e3                                      mov r1, #0
00790ef8  48 00 ca e5                                      strb r0, [sl, #0x48]
00790efc  05 00 a0 e1                                      mov r0, r5
00790f00  2c f8 ff eb                                      bl #0x78efb8
00790f04  8e ff ff ea                                      b #0x790d44
00790f08  08 00 a0 e1                                      mov r0, r8
00790f0c  dc 3e f2 eb                                      bl #0x420a84
00790f10  d0 30 d0 e1                                      ldrsb r3, [r0]
00790f14  38 10 9f e5                                      ldr r1, [pc, #0x38]
00790f18  01 00 73 e3                                      cmn r3, #1
00790f1c  01 00 80 12                                      addne r0, r0, #1
00790f20  0c 00 90 05                                      ldreq r0, [r0, #0xc]
00790f24  01 10 8f e0                                      add r1, pc, r1
00790f28  78 03 ff eb                                      bl #0x751d10
00790f2c  00 00 50 e3                                      cmp r0, #0
00790f30  83 ff ff 1a                                      bne #0x790d44
00790f34  a0 30 95 e5                                      ldr r3, [r5, #0xa0]
00790f38  01 20 a0 e3                                      mov r2, #1
00790f3c  4b 20 c3 e5                                      strb r2, [r3, #0x4b]
00790f40  7f ff ff ea                                      b #0x790d44
00790f44  f1 f4 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00790f48  dc 3d 20 00 ac 40 00 00 84 91 17 00 94 8f 17 00  .byte 0xdc, 0x3d, 0x20, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x91, 0x17, 0x00, 0x94, 0x8f, 0x17, 0x00

; FUNCTION 0x00790f58, declared_size=1412, range_size=1412, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character8on_eventERKNS_8event_idE
; demangled: gameswf::edit_text_character::on_event(gameswf::event_id const&)
; decoder-mode: arm
00790f58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00790f5c  60 45 9f e5                                      ldr r4, [pc, #0x560]
00790f60  60 65 9f e5                                      ldr r6, [pc, #0x560]
00790f64  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
00790f68  04 40 8f e0                                      add r4, pc, r4
00790f6c  06 20 94 e7                                      ldr r2, [r4, r6]
00790f70  63 df 4d e2                                      sub sp, sp, #0x18c
00790f74  00 50 a0 e1                                      mov r5, r0
00790f78  00 20 92 e5                                      ldr r2, [r2]
00790f7c  01 80 a0 e1                                      mov r8, r1
00790f80  84 21 8d e5                                      str r2, [sp, #0x184]
00790f84  4b 70 d3 e5                                      ldrb r7, [r3, #0x4b]
00790f88  00 00 57 e3                                      cmp r7, #0
00790f8c  06 00 00 1a                                      bne #0x790fac
00790f90  00 30 d1 e5                                      ldrb r3, [r1]
00790f94  14 00 53 e3                                      cmp r3, #0x14
00790f98  0b 00 00 0a                                      beq #0x790fcc
00790f9c  15 00 53 e3                                      cmp r3, #0x15
00790fa0  70 00 00 0a                                      beq #0x791168
00790fa4  08 00 53 e3                                      cmp r3, #8
00790fa8  34 00 00 0a                                      beq #0x791080
00790fac  00 00 a0 e3                                      mov r0, #0
00790fb0  06 30 94 e7                                      ldr r3, [r4, r6]
00790fb4  84 21 9d e5                                      ldr r2, [sp, #0x184]
00790fb8  00 30 93 e5                                      ldr r3, [r3]
00790fbc  03 00 52 e1                                      cmp r2, r3
00790fc0  3e 01 00 1a                                      bne #0x7914c0
00790fc4  63 df 8d e2                                      add sp, sp, #0x18c
00790fc8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00790fcc  85 f3 ff eb                                      bl #0x78dde8
00790fd0  05 10 a0 e1                                      mov r1, r5
00790fd4  4f 8e ff eb                                      bl #0x774918
00790fd8  4c 71 d5 e5                                      ldrb r7, [r5, #0x14c]
00790fdc  00 00 57 e3                                      cmp r7, #0
00790fe0  ac 00 00 1a                                      bne #0x791298
00790fe4  e0 14 9f e5                                      ldr r1, [pc, #0x4e0]
00790fe8  00 30 95 e5                                      ldr r3, [r5]
00790fec  17 8e 8d e2                                      add r8, sp, #0x170
00790ff0  3c 71 cd e5                                      strb r7, [sp, #0x13c]
00790ff4  3d 71 cd e5                                      strb r7, [sp, #0x13d]
00790ff8  01 10 8f e0                                      add r1, pc, r1
00790ffc  08 00 a0 e1                                      mov r0, r8
00791000  4f 9f 8d e2                                      add sb, sp, #0x13c
00791004  20 a0 93 e5                                      ldr sl, [r3, #0x20]
00791008  9b 0a f2 eb                                      bl #0x413a7c
0079100c  08 10 a0 e1                                      mov r1, r8
00791010  09 20 a0 e1                                      mov r2, sb
00791014  05 00 a0 e1                                      mov r0, r5
00791018  3a ff 2f e1                                      blx sl
0079101c  00 a0 a0 e1                                      mov sl, r0
00791020  08 00 a0 e1                                      mov r0, r8
00791024  ab 3b f2 eb                                      bl #0x41fed8
00791028  00 00 5a e3                                      cmp sl, #0
0079102c  f1 00 00 1a                                      bne #0x7913f8
00791030  05 00 a0 e1                                      mov r0, r5
00791034  6b f3 ff eb                                      bl #0x78dde8
00791038  05 10 a0 e1                                      mov r1, r5
0079103c  a8 00 80 e2                                      add r0, r0, #0xa8
00791040  c1 3f ff eb                                      bl #0x760f4c
00791044  38 31 d5 e5                                      ldrb r3, [r5, #0x138]
00791048  01 20 a0 e3                                      mov r2, #1
0079104c  4c 21 c5 e5                                      strb r2, [r5, #0x14c]
00791050  73 30 af e6                                      sxtb r3, r3
00791054  01 00 73 e3                                      cmn r3, #1
00791058  3c 31 95 05                                      ldreq r3, [r5, #0x13c]
0079105c  05 00 a0 e1                                      mov r0, r5
00791060  00 10 a0 e3                                      mov r1, #0
00791064  01 30 43 e2                                      sub r3, r3, #1
00791068  50 31 85 e5                                      str r3, [r5, #0x150]
0079106c  d1 f7 ff eb                                      bl #0x78efb8
00791070  09 00 a0 e1                                      mov r0, sb
00791074  2a 18 00 eb                                      bl #0x797124
00791078  01 00 a0 e3                                      mov r0, #1
0079107c  cb ff ff ea                                      b #0x790fb0
00791080  52 7f 8d e2                                      add r7, sp, #0x148
00791084  4e 1f 85 e2                                      add r1, r5, #0x138
00791088  07 00 a0 e1                                      mov r0, r7
0079108c  e6 07 ff eb                                      bl #0x75302c
00791090  38 01 d5 e5                                      ldrb r0, [r5, #0x138]
00791094  50 21 95 e5                                      ldr r2, [r5, #0x150]
00791098  70 30 af e6                                      sxtb r3, r0
0079109c  01 00 73 e3                                      cmn r3, #1
007910a0  3c 11 95 05                                      ldreq r1, [r5, #0x13c]
007910a4  01 10 43 12                                      subne r1, r3, #1
007910a8  01 10 41 02                                      subeq r1, r1, #1
007910ac  02 00 51 e1                                      cmp r1, r2
007910b0  02 10 a0 a1                                      movge r1, r2
007910b4  50 11 85 e5                                      str r1, [r5, #0x150]
007910b8  01 20 d8 e5                                      ldrb r2, [r8, #1]
007910bc  08 30 42 e2                                      sub r3, r2, #8
007910c0  26 00 53 e3                                      cmp r3, #0x26
007910c4  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
007910c8  ae 00 00 ea                                      b #0x791388
007910cc  ba 00 00 ea                                      b #0x7913bc
007910d0  ac 00 00 ea                                      b #0x791388
007910d4  ab 00 00 ea                                      b #0x791388
007910d8  aa 00 00 ea                                      b #0x791388
007910dc  a9 00 00 ea                                      b #0x791388
007910e0  a8 00 00 ea                                      b #0x791388
007910e4  a7 00 00 ea                                      b #0x791388
007910e8  a6 00 00 ea                                      b #0x791388
007910ec  a5 00 00 ea                                      b #0x791388
007910f0  a4 00 00 ea                                      b #0x791388
007910f4  a3 00 00 ea                                      b #0x791388
007910f8  a2 00 00 ea                                      b #0x791388
007910fc  a1 00 00 ea                                      b #0x791388
00791100  a0 00 00 ea                                      b #0x791388
00791104  9f 00 00 ea                                      b #0x791388
00791108  9e 00 00 ea                                      b #0x791388
0079110c  9d 00 00 ea                                      b #0x791388
00791110  9c 00 00 ea                                      b #0x791388
00791114  9b 00 00 ea                                      b #0x791388
00791118  9a 00 00 ea                                      b #0x791388
0079111c  99 00 00 ea                                      b #0x791388
00791120  98 00 00 ea                                      b #0x791388
00791124  97 00 00 ea                                      b #0x791388
00791128  96 00 00 ea                                      b #0x791388
0079112c  95 00 00 ea                                      b #0x791388
00791130  69 00 00 ea                                      b #0x7912dc
00791134  7d 00 00 ea                                      b #0x791330
00791138  67 00 00 ea                                      b #0x7912dc
0079113c  7b 00 00 ea                                      b #0x791330
00791140  70 00 00 ea                                      b #0x791308
00791144  79 00 00 ea                                      b #0x791330
00791148  7f 00 00 ea                                      b #0x79134c
0079114c  62 00 00 ea                                      b #0x7912dc
00791150  8c 00 00 ea                                      b #0x791388
00791154  8b 00 00 ea                                      b #0x791388
00791158  8a 00 00 ea                                      b #0x791388
0079115c  89 00 00 ea                                      b #0x791388
00791160  88 00 00 ea                                      b #0x791388
00791164  4d 00 00 ea                                      b #0x7912a0
00791168  4c 31 d0 e5                                      ldrb r3, [r0, #0x14c]
0079116c  00 00 53 e3                                      cmp r3, #0
00791170  48 00 00 0a                                      beq #0x791298
00791174  54 13 9f e5                                      ldr r1, [pc, #0x354]
00791178  00 30 90 e5                                      ldr r3, [r0]
0079117c  57 8f 8d e2                                      add r8, sp, #0x15c
00791180  0c 71 cd e5                                      strb r7, [sp, #0x10c]
00791184  0d 71 cd e5                                      strb r7, [sp, #0x10d]
00791188  01 10 8f e0                                      add r1, pc, r1
0079118c  08 00 a0 e1                                      mov r0, r8
00791190  43 9f 8d e2                                      add sb, sp, #0x10c
00791194  20 a0 93 e5                                      ldr sl, [r3, #0x20]
00791198  37 0a f2 eb                                      bl #0x413a7c
0079119c  08 10 a0 e1                                      mov r1, r8
007911a0  09 20 a0 e1                                      mov r2, sb
007911a4  05 00 a0 e1                                      mov r0, r5
007911a8  3a ff 2f e1                                      blx sl
007911ac  00 a0 a0 e1                                      mov sl, r0
007911b0  08 00 a0 e1                                      mov r0, r8
007911b4  47 3b f2 eb                                      bl #0x41fed8
007911b8  00 00 5a e3                                      cmp sl, #0
007911bc  27 00 00 0a                                      beq #0x791260
007911c0  05 00 a0 e1                                      mov r0, r5
007911c4  6a bc ff eb                                      bl #0x780374
007911c8  10 80 8d e2                                      add r8, sp, #0x10
007911cc  00 10 a0 e1                                      mov r1, r0
007911d0  01 ac 8d e2                                      add sl, sp, #0x100
007911d4  08 00 a0 e1                                      mov r0, r8
007911d8  5b 36 ff eb                                      bl #0x75eb4c
007911dc  0a 10 a0 e1                                      mov r1, sl
007911e0  08 00 a0 e1                                      mov r0, r8
007911e4  00 71 cd e5                                      strb r7, [sp, #0x100]
007911e8  01 71 cd e5                                      strb r7, [sp, #0x101]
007911ec  a9 5f ff eb                                      bl #0x769098
007911f0  0a 00 a0 e1                                      mov r0, sl
007911f4  ca 17 00 eb                                      bl #0x797124
007911f8  05 30 a0 e3                                      mov r3, #5
007911fc  05 00 a0 e1                                      mov r0, r5
00791200  f4 70 cd e5                                      strb r7, [sp, #0xf4]
00791204  f5 30 cd e5                                      strb r3, [sp, #0xf5]
00791208  f8 50 8d e5                                      str r5, [sp, #0xf8]
0079120c  94 22 ff eb                                      bl #0x759c64
00791210  14 b0 9d e5                                      ldr fp, [sp, #0x14]
00791214  b8 c2 9f e5                                      ldr ip, [pc, #0x2b8]
00791218  e8 70 8d e2                                      add r7, sp, #0xe8
0079121c  f4 a0 8d e2                                      add sl, sp, #0xf4
00791220  0c c0 8f e0                                      add ip, pc, ip
00791224  01 e0 a0 e3                                      mov lr, #1
00791228  09 10 a0 e1                                      mov r1, sb
0079122c  08 20 a0 e1                                      mov r2, r8
00791230  0a 30 a0 e1                                      mov r3, sl
00791234  07 00 a0 e1                                      mov r0, r7
00791238  01 b0 4b e2                                      sub fp, fp, #1
0079123c  00 e0 8d e5                                      str lr, [sp]
00791240  00 18 8d e9                                      stmib sp, {fp, ip}
00791244  ae a5 00 eb                                      bl #0x7ba904
00791248  07 00 a0 e1                                      mov r0, r7
0079124c  b4 17 00 eb                                      bl #0x797124
00791250  0a 00 a0 e1                                      mov r0, sl
00791254  b2 17 00 eb                                      bl #0x797124
00791258  08 00 a0 e1                                      mov r0, r8
0079125c  76 33 ff eb                                      bl #0x75e03c
00791260  00 70 a0 e3                                      mov r7, #0
00791264  4c 71 c5 e5                                      strb r7, [r5, #0x14c]
00791268  05 00 a0 e1                                      mov r0, r5
0079126c  dd f2 ff eb                                      bl #0x78dde8
00791270  05 10 a0 e1                                      mov r1, r5
00791274  a8 00 80 e2                                      add r0, r0, #0xa8
00791278  f1 3e ff eb                                      bl #0x760e44
0079127c  05 00 a0 e1                                      mov r0, r5
00791280  07 10 a0 e1                                      mov r1, r7
00791284  4b f7 ff eb                                      bl #0x78efb8
00791288  09 00 a0 e1                                      mov r0, sb
0079128c  a4 17 00 eb                                      bl #0x797124
00791290  01 00 a0 e3                                      mov r0, #1
00791294  45 ff ff ea                                      b #0x790fb0
00791298  01 00 a0 e3                                      mov r0, #1
0079129c  43 ff ff ea                                      b #0x790fb0
007912a0  48 01 dd e5                                      ldrb r0, [sp, #0x148]
007912a4  70 30 af e6                                      sxtb r3, r0
007912a8  01 00 73 e3                                      cmn r3, #1
007912ac  4c 21 9d 05                                      ldreq r2, [sp, #0x14c]
007912b0  03 20 a0 11                                      movne r2, r3
007912b4  01 20 42 e2                                      sub r2, r2, #1
007912b8  02 00 51 e1                                      cmp r1, r2
007912bc  76 00 00 ba                                      blt #0x79149c
007912c0  01 00 73 e3                                      cmn r3, #1
007912c4  38 ff ff 1a                                      bne #0x790fac
007912c8  54 01 9d e5                                      ldr r0, [sp, #0x154]
007912cc  50 11 9d e5                                      ldr r1, [sp, #0x150]
007912d0  18 06 ff eb                                      bl #0x752b38
007912d4  00 00 a0 e3                                      mov r0, #0
007912d8  34 ff ff ea                                      b #0x790fb0
007912dc  70 00 af e6                                      sxtb r0, r0
007912e0  01 00 70 e3                                      cmn r0, #1
007912e4  3c 01 95 05                                      ldreq r0, [r5, #0x13c]
007912e8  01 00 40 e2                                      sub r0, r0, #1
007912ec  50 01 85 e5                                      str r0, [r5, #0x150]
007912f0  05 00 a0 e1                                      mov r0, r5
007912f4  00 10 a0 e3                                      mov r1, #0
007912f8  2e f7 ff eb                                      bl #0x78efb8
007912fc  48 21 dd e5                                      ldrb r2, [sp, #0x148]
00791300  72 30 af e6                                      sxtb r3, r2
00791304  ed ff ff ea                                      b #0x7912c0
00791308  00 00 51 e3                                      cmp r1, #0
0079130c  00 10 a0 d3                                      movle r1, #0
00791310  01 10 41 c2                                      subgt r1, r1, #1
00791314  50 11 85 e5                                      str r1, [r5, #0x150]
00791318  05 00 a0 e1                                      mov r0, r5
0079131c  00 10 a0 e3                                      mov r1, #0
00791320  24 f7 ff eb                                      bl #0x78efb8
00791324  48 01 dd e5                                      ldrb r0, [sp, #0x148]
00791328  70 30 af e6                                      sxtb r3, r0
0079132c  e3 ff ff ea                                      b #0x7912c0
00791330  00 10 a0 e3                                      mov r1, #0
00791334  05 00 a0 e1                                      mov r0, r5
00791338  50 11 85 e5                                      str r1, [r5, #0x150]
0079133c  1d f7 ff eb                                      bl #0x78efb8
00791340  48 01 dd e5                                      ldrb r0, [sp, #0x148]
00791344  70 30 af e6                                      sxtb r3, r0
00791348  dc ff ff ea                                      b #0x7912c0
0079134c  70 30 af e6                                      sxtb r3, r0
00791350  01 00 73 e3                                      cmn r3, #1
00791354  3c 21 95 05                                      ldreq r2, [r5, #0x13c]
00791358  03 20 a0 11                                      movne r2, r3
0079135c  01 20 42 e2                                      sub r2, r2, #1
00791360  02 00 51 e1                                      cmp r1, r2
00791364  01 10 81 b2                                      addlt r1, r1, #1
00791368  04 00 00 ba                                      blt #0x791380
0079136c  01 00 73 e3                                      cmn r3, #1
00791370  38 11 d5 15                                      ldrbne r1, [r5, #0x138]
00791374  3c 11 95 05                                      ldreq r1, [r5, #0x13c]
00791378  71 10 af 16                                      sxtbne r1, r1
0079137c  01 10 41 e2                                      sub r1, r1, #1
00791380  50 11 85 e5                                      str r1, [r5, #0x150]
00791384  d9 ff ff ea                                      b #0x7912f0
00791388  72 20 af e6                                      sxtb r2, r2
0079138c  07 00 a0 e1                                      mov r0, r7
00791390  4a e7 ff eb                                      bl #0x78b0c0
00791394  50 31 95 e5                                      ldr r3, [r5, #0x150]
00791398  05 00 a0 e1                                      mov r0, r5
0079139c  07 10 a0 e1                                      mov r1, r7
007913a0  01 30 83 e2                                      add r3, r3, #1
007913a4  50 31 85 e5                                      str r3, [r5, #0x150]
007913a8  00 20 a0 e3                                      mov r2, #0
007913ac  bf fd ff eb                                      bl #0x790ab0
007913b0  48 01 dd e5                                      ldrb r0, [sp, #0x148]
007913b4  70 30 af e6                                      sxtb r3, r0
007913b8  c0 ff ff ea                                      b #0x7912c0
007913bc  00 00 51 e3                                      cmp r1, #0
007913c0  fa ff ff da                                      ble #0x7913b0
007913c4  01 10 41 e2                                      sub r1, r1, #1
007913c8  07 00 a0 e1                                      mov r0, r7
007913cc  5e e9 ff eb                                      bl #0x78b94c
007913d0  50 31 95 e5                                      ldr r3, [r5, #0x150]
007913d4  00 20 a0 e3                                      mov r2, #0
007913d8  05 00 a0 e1                                      mov r0, r5
007913dc  01 30 43 e2                                      sub r3, r3, #1
007913e0  50 31 85 e5                                      str r3, [r5, #0x150]
007913e4  07 10 a0 e1                                      mov r1, r7
007913e8  b0 fd ff eb                                      bl #0x790ab0
007913ec  48 21 dd e5                                      ldrb r2, [sp, #0x148]
007913f0  72 30 af e6                                      sxtb r3, r2
007913f4  b1 ff ff ea                                      b #0x7912c0
007913f8  05 00 a0 e1                                      mov r0, r5
007913fc  dc bb ff eb                                      bl #0x780374
00791400  7c 80 8d e2                                      add r8, sp, #0x7c
00791404  13 ae 8d e2                                      add sl, sp, #0x130
00791408  00 10 a0 e1                                      mov r1, r0
0079140c  08 00 a0 e1                                      mov r0, r8
00791410  cd 35 ff eb                                      bl #0x75eb4c
00791414  0a 10 a0 e1                                      mov r1, sl
00791418  08 00 a0 e1                                      mov r0, r8
0079141c  30 71 cd e5                                      strb r7, [sp, #0x130]
00791420  31 71 cd e5                                      strb r7, [sp, #0x131]
00791424  1b 5f ff eb                                      bl #0x769098
00791428  0a 00 a0 e1                                      mov r0, sl
0079142c  3c 17 00 eb                                      bl #0x797124
00791430  05 00 a0 e1                                      mov r0, r5
00791434  05 30 a0 e3                                      mov r3, #5
00791438  24 71 cd e5                                      strb r7, [sp, #0x124]
0079143c  25 31 cd e5                                      strb r3, [sp, #0x125]
00791440  28 51 8d e5                                      str r5, [sp, #0x128]
00791444  06 22 ff eb                                      bl #0x759c64
00791448  80 b0 9d e5                                      ldr fp, [sp, #0x80]
0079144c  84 c0 9f e5                                      ldr ip, [pc, #0x84]
00791450  46 7f 8d e2                                      add r7, sp, #0x118
00791454  49 af 8d e2                                      add sl, sp, #0x124
00791458  0c c0 8f e0                                      add ip, pc, ip
0079145c  01 e0 a0 e3                                      mov lr, #1
00791460  09 10 a0 e1                                      mov r1, sb
00791464  08 20 a0 e1                                      mov r2, r8
00791468  0a 30 a0 e1                                      mov r3, sl
0079146c  07 00 a0 e1                                      mov r0, r7
00791470  01 b0 4b e2                                      sub fp, fp, #1
00791474  00 e0 8d e5                                      str lr, [sp]
00791478  00 18 8d e9                                      stmib sp, {fp, ip}
0079147c  20 a5 00 eb                                      bl #0x7ba904
00791480  07 00 a0 e1                                      mov r0, r7
00791484  26 17 00 eb                                      bl #0x797124
00791488  0a 00 a0 e1                                      mov r0, sl
0079148c  24 17 00 eb                                      bl #0x797124
00791490  08 00 a0 e1                                      mov r0, r8
00791494  e8 32 ff eb                                      bl #0x75e03c
00791498  e4 fe ff ea                                      b #0x791030
0079149c  07 00 a0 e1                                      mov r0, r7
007914a0  29 e9 ff eb                                      bl #0x78b94c
007914a4  00 20 a0 e3                                      mov r2, #0
007914a8  05 00 a0 e1                                      mov r0, r5
007914ac  07 10 a0 e1                                      mov r1, r7
007914b0  7e fd ff eb                                      bl #0x790ab0
007914b4  48 21 dd e5                                      ldrb r2, [sp, #0x148]
007914b8  72 30 af e6                                      sxtb r3, r2
007914bc  7f ff ff ea                                      b #0x7912c0
007914c0  92 f3 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007914c4  28 3b 20 00 ac 40 00 00 f0 8f 17 00 70 8e 17 00  .byte 0x28, 0x3b, 0x20, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0x8f, 0x17, 0x00, 0x70, 0x8e, 0x17, 0x00
007914d4  18 c4 13 00 e0 c1 13 00                          .byte 0x18, 0xc4, 0x13, 0x00, 0xe0, 0xc1, 0x13, 0x00

; FUNCTION 0x007914dc, declared_size=456, range_size=456, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character4initEv
; demangled: gameswf::edit_text_character::init()
; decoder-mode: arm
007914dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007914e0  b4 51 9f e5                                      ldr r5, [pc, #0x1b4]
007914e4  b4 61 9f e5                                      ldr r6, [pc, #0x1b4]
007914e8  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
007914ec  05 50 8f e0                                      add r5, pc, r5
007914f0  06 20 95 e7                                      ldr r2, [r5, r6]
007914f4  00 70 e0 e3                                      mvn r7, #0
007914f8  80 d0 4d e2                                      sub sp, sp, #0x80
007914fc  00 10 92 e5                                      ldr r1, [r2]
00791500  00 80 a0 e3                                      mov r8, #0
00791504  00 20 a0 e3                                      mov r2, #0
00791508  7c 10 8d e5                                      str r1, [sp, #0x7c]
0079150c  6c 71 80 e5                                      str r7, [r0, #0x16c]
00791510  68 21 80 e5                                      str r2, [r0, #0x168]
00791514  4c 21 c0 e5                                      strb r2, [r0, #0x14c]
00791518  50 21 80 e5                                      str r2, [r0, #0x150]
0079151c  54 81 80 e5                                      str r8, [r0, #0x154]
00791520  58 81 80 e5                                      str r8, [r0, #0x158]
00791524  5c 81 80 e5                                      str r8, [r0, #0x15c]
00791528  60 81 80 e5                                      str r8, [r0, #0x160]
0079152c  64 21 80 e5                                      str r2, [r0, #0x164]
00791530  60 20 93 e5                                      ldr r2, [r3, #0x60]
00791534  00 40 a0 e1                                      mov r4, r0
00791538  5e 0f 80 e2                                      add r0, r0, #0x178
0079153c  70 21 84 e5                                      str r2, [r4, #0x170]
00791540  5c 20 93 e5                                      ldr r2, [r3, #0x5c]
00791544  74 21 84 e5                                      str r2, [r4, #0x174]
00791548  58 10 93 e5                                      ldr r1, [r3, #0x58]
0079154c  38 4b ff eb                                      bl #0x764234
00791550  a0 10 94 e5                                      ldr r1, [r4, #0xa0]
00791554  68 30 91 e5                                      ldr r3, [r1, #0x68]
00791558  7c 31 84 e5                                      str r3, [r4, #0x17c]
0079155c  6c 30 91 e5                                      ldr r3, [r1, #0x6c]
00791560  80 31 84 e5                                      str r3, [r4, #0x180]
00791564  70 30 91 e5                                      ldr r3, [r1, #0x70]
00791568  84 31 84 e5                                      str r3, [r4, #0x184]
0079156c  74 30 91 e5                                      ldr r3, [r1, #0x74]
00791570  88 31 84 e5                                      str r3, [r4, #0x188]
00791574  78 30 91 e5                                      ldr r3, [r1, #0x78]
00791578  97 71 c4 e5                                      strb r7, [r4, #0x197]
0079157c  94 71 c4 e5                                      strb r7, [r4, #0x194]
00791580  95 71 c4 e5                                      strb r7, [r4, #0x195]
00791584  96 71 c4 e5                                      strb r7, [r4, #0x196]
00791588  90 81 84 e5                                      str r8, [r4, #0x190]
0079158c  8c 31 84 e5                                      str r3, [r4, #0x18c]
00791590  dc 37 d1 e1                                      ldrsb r3, [r1, #0x7c]
00791594  07 00 53 e1                                      cmp r3, r7
00791598  68 70 8d e2                                      add r7, sp, #0x68
0079159c  7d 10 81 12                                      addne r1, r1, #0x7d
007915a0  88 10 91 05                                      ldreq r1, [r1, #0x88]
007915a4  07 00 a0 e1                                      mov r0, r7
007915a8  33 09 f2 eb                                      bl #0x413a7c
007915ac  04 00 a0 e1                                      mov r0, r4
007915b0  07 10 a0 e1                                      mov r1, r7
007915b4  00 20 a0 e3                                      mov r2, #0
007915b8  0b f7 ff eb                                      bl #0x78f1ec
007915bc  d8 36 dd e1                                      ldrsb r3, [sp, #0x68]
007915c0  01 00 73 e3                                      cmn r3, #1
007915c4  2b 00 00 0a                                      beq #0x791678
007915c8  00 30 94 e5                                      ldr r3, [r4]
007915cc  04 00 a0 e1                                      mov r0, r4
007915d0  0f e0 a0 e1                                      mov lr, pc
007915d4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007915d8  54 70 8d e2                                      add r7, sp, #0x54
007915dc  00 10 a0 e1                                      mov r1, r0
007915e0  07 00 a0 e1                                      mov r0, r7
007915e4  24 09 f2 eb                                      bl #0x413a7c
007915e8  04 00 a0 e1                                      mov r0, r4
007915ec  07 10 a0 e1                                      mov r1, r7
007915f0  00 20 a0 e3                                      mov r2, #0
007915f4  2d fd ff eb                                      bl #0x790ab0
007915f8  d4 35 dd e1                                      ldrsb r3, [sp, #0x54]
007915fc  01 00 73 e3                                      cmn r3, #1
00791600  20 00 00 0a                                      beq #0x791688
00791604  b4 80 84 e2                                      add r8, r4, #0xb4
00791608  00 10 a0 e3                                      mov r1, #0
0079160c  08 00 a0 e1                                      mov r0, r8
00791610  95 3f ff eb                                      bl #0x76146c
00791614  0d 00 a0 e1                                      mov r0, sp
00791618  1b cd ff eb                                      bl #0x784a8c
0079161c  0d 10 a0 e1                                      mov r1, sp
00791620  08 00 a0 e1                                      mov r0, r8
00791624  d1 40 ff eb                                      bl #0x761970
00791628  0d 00 a0 e1                                      mov r0, sp
0079162c  9e cd ff eb                                      bl #0x784cac
00791630  04 00 a0 e1                                      mov r0, r4
00791634  4a e3 ff eb                                      bl #0x78a364
00791638  d0 30 d0 e1                                      ldrsb r3, [r0]
0079163c  06 10 95 e7                                      ldr r1, [r5, r6]
00791640  0d 70 a0 e1                                      mov r7, sp
00791644  01 00 73 e3                                      cmn r3, #1
00791648  04 30 90 05                                      ldreq r3, [r0, #4]
0079164c  01 30 43 e2                                      sub r3, r3, #1
00791650  00 00 53 e3                                      cmp r3, #0
00791654  00 30 a0 d3                                      movle r3, #0
00791658  01 30 a0 c3                                      movgt r3, #1
0079165c  9d 30 c4 e5                                      strb r3, [r4, #0x9d]
00791660  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00791664  00 30 91 e5                                      ldr r3, [r1]
00791668  03 00 52 e1                                      cmp r2, r3
0079166c  09 00 00 1a                                      bne #0x791698
00791670  80 d0 8d e2                                      add sp, sp, #0x80
00791674  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00791678  74 00 9d e5                                      ldr r0, [sp, #0x74]
0079167c  70 10 9d e5                                      ldr r1, [sp, #0x70]
00791680  2c 05 ff eb                                      bl #0x752b38
00791684  cf ff ff ea                                      b #0x7915c8
00791688  60 00 9d e5                                      ldr r0, [sp, #0x60]
0079168c  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00791690  28 05 ff eb                                      bl #0x752b38
00791694  da ff ff ea                                      b #0x791604
00791698  1c f3 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0079169c  a4 35 20 00 ac 40 00 00                          .byte 0xa4, 0x35, 0x20, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007916a4, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character7recycleEPNS_9characterEi
; demangled: gameswf::edit_text_character::recycle(gameswf::character*, int)
; decoder-mode: arm
007916a4  10 40 2d e9                                      push {r4, lr}
007916a8  00 40 a0 e1                                      mov r4, r0
007916ac  a9 0c ff eb                                      bl #0x754958
007916b0  04 00 a0 e1                                      mov r0, r4
007916b4  10 40 bd e8                                      pop {r4, lr}
007916b8  87 ff ff ea                                      b #0x7914dc

; FUNCTION 0x007916bc, declared_size=352, range_size=352, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_characterC1EPNS_6playerEPNS_9characterEPNS_23edit_text_character_defEi
; demangled: gameswf::edit_text_character::edit_text_character(gameswf::player*, gameswf::character*, gameswf::edit_text_character_def*, int)
; decoder-mode: arm
007916bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007916c0  0c d0 4d e2                                      sub sp, sp, #0xc
007916c4  03 60 a0 e1                                      mov r6, r3
007916c8  20 c0 a0 e3                                      mov ip, #0x20
007916cc  20 30 9d e5                                      ldr r3, [sp, #0x20]
007916d0  3c 51 9f e5                                      ldr r5, [pc, #0x13c]
007916d4  00 40 a0 e1                                      mov r4, r0
007916d8  00 c0 8d e5                                      str ip, [sp]
007916dc  11 0d ff eb                                      bl #0x754b28
007916e0  30 31 9f e5                                      ldr r3, [pc, #0x130]
007916e4  05 50 8f e0                                      add r5, pc, r5
007916e8  00 00 56 e3                                      cmp r6, #0
007916ec  03 30 95 e7                                      ldr r3, [r5, r3]
007916f0  a0 60 84 e5                                      str r6, [r4, #0xa0]
007916f4  08 30 83 e2                                      add r3, r3, #8
007916f8  00 30 84 e5                                      str r3, [r4]
007916fc  01 00 00 0a                                      beq #0x791708
00791700  06 00 a0 e1                                      mov r0, r6
00791704  56 21 ff eb                                      bl #0x759c64
00791708  48 01 94 e5                                      ldr r0, [r4, #0x148]
0079170c  00 20 e0 e3                                      mvn r2, #0
00791710  00 30 a0 e3                                      mov r3, #0
00791714  12 00 d7 e7                                      bfi r0, r2, #0, #0x18
00791718  20 cc a0 e1                                      lsr ip, r0, #0x18
0079171c  00 10 a0 e3                                      mov r1, #0
00791720  13 c0 c0 e7                                      bfi ip, r3, #0, #1
00791724  00 60 e0 e3                                      mvn r6, #0
00791728  00 70 e0 e3                                      mvn r7, #0
0079172c  01 e0 a0 e3                                      mov lr, #1
00791730  38 e1 c4 e5                                      strb lr, [r4, #0x138]
00791734  a4 30 84 e5                                      str r3, [r4, #0xa4]
00791738  a8 30 84 e5                                      str r3, [r4, #0xa8]
0079173c  ac 30 84 e5                                      str r3, [r4, #0xac]
00791740  b0 30 c4 e5                                      strb r3, [r4, #0xb0]
00791744  b4 30 84 e5                                      str r3, [r4, #0xb4]
00791748  b8 30 84 e5                                      str r3, [r4, #0xb8]
0079174c  bc 30 84 e5                                      str r3, [r4, #0xbc]
00791750  c0 30 c4 e5                                      strb r3, [r4, #0xc0]
00791754  c4 30 84 e5                                      str r3, [r4, #0xc4]
00791758  c8 30 84 e5                                      str r3, [r4, #0xc8]
0079175c  cc 30 84 e5                                      str r3, [r4, #0xcc]
00791760  d0 30 c4 e5                                      strb r3, [r4, #0xd0]
00791764  e8 30 84 e5                                      str r3, [r4, #0xe8]
00791768  ec 30 84 e5                                      str r3, [r4, #0xec]
0079176c  f0 30 84 e5                                      str r3, [r4, #0xf0]
00791770  f4 30 c4 e5                                      strb r3, [r4, #0xf4]
00791774  f8 30 84 e5                                      str r3, [r4, #0xf8]
00791778  fc 30 84 e5                                      str r3, [r4, #0xfc]
0079177c  00 31 84 e5                                      str r3, [r4, #0x100]
00791780  04 31 c4 e5                                      strb r3, [r4, #0x104]
00791784  08 31 84 e5                                      str r3, [r4, #0x108]
00791788  0c 31 84 e5                                      str r3, [r4, #0x10c]
0079178c  10 31 84 e5                                      str r3, [r4, #0x110]
00791790  14 31 c4 e5                                      strb r3, [r4, #0x114]
00791794  18 31 84 e5                                      str r3, [r4, #0x118]
00791798  1c 31 84 e5                                      str r3, [r4, #0x11c]
0079179c  20 31 84 e5                                      str r3, [r4, #0x120]
007917a0  24 31 c4 e5                                      strb r3, [r4, #0x124]
007917a4  39 31 c4 e5                                      strb r3, [r4, #0x139]
007917a8  f0 6e c4 e1                                      strd r6, r7, [r4, #0xe0]
007917ac  f8 6d c4 e1                                      strd r6, r7, [r4, #0xd8]
007917b0  48 01 84 e5                                      str r0, [r4, #0x148]
007917b4  04 00 a0 e1                                      mov r0, r4
007917b8  4b c1 c4 e5                                      strb ip, [r4, #0x14b]
007917bc  60 11 84 e5                                      str r1, [r4, #0x160]
007917c0  78 31 84 e5                                      str r3, [r4, #0x178]
007917c4  97 21 c4 e5                                      strb r2, [r4, #0x197]
007917c8  4c 31 c4 e5                                      strb r3, [r4, #0x14c]
007917cc  50 31 84 e5                                      str r3, [r4, #0x150]
007917d0  54 11 84 e5                                      str r1, [r4, #0x154]
007917d4  58 11 84 e5                                      str r1, [r4, #0x158]
007917d8  5c 11 84 e5                                      str r1, [r4, #0x15c]
007917dc  64 31 84 e5                                      str r3, [r4, #0x164]
007917e0  68 31 84 e5                                      str r3, [r4, #0x168]
007917e4  6c 21 84 e5                                      str r2, [r4, #0x16c]
007917e8  70 21 c4 e5                                      strb r2, [r4, #0x170]
007917ec  71 21 c4 e5                                      strb r2, [r4, #0x171]
007917f0  72 21 c4 e5                                      strb r2, [r4, #0x172]
007917f4  73 21 c4 e5                                      strb r2, [r4, #0x173]
007917f8  94 21 c4 e5                                      strb r2, [r4, #0x194]
007917fc  95 21 c4 e5                                      strb r2, [r4, #0x195]
00791800  96 21 c4 e5                                      strb r2, [r4, #0x196]
00791804  34 ff ff eb                                      bl #0x7914dc
00791808  04 00 a0 e1                                      mov r0, r4
0079180c  0c d0 8d e2                                      add sp, sp, #0xc
00791810  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00791814  ac 33 20 00 60 3f 00 00                          .byte 0xac, 0x33, 0x20, 0x00, 0x60, 0x3f, 0x00, 0x00

; FUNCTION 0x00791964, declared_size=352, range_size=352, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_characterC2EPNS_6playerEPNS_9characterEPNS_23edit_text_character_defEi
; demangled: gameswf::edit_text_character::edit_text_character(gameswf::player*, gameswf::character*, gameswf::edit_text_character_def*, int)
; decoder-mode: arm
00791964  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00791968  0c d0 4d e2                                      sub sp, sp, #0xc
0079196c  03 60 a0 e1                                      mov r6, r3
00791970  20 c0 a0 e3                                      mov ip, #0x20
00791974  20 30 9d e5                                      ldr r3, [sp, #0x20]
00791978  3c 51 9f e5                                      ldr r5, [pc, #0x13c]
0079197c  00 40 a0 e1                                      mov r4, r0
00791980  00 c0 8d e5                                      str ip, [sp]
00791984  67 0c ff eb                                      bl #0x754b28
00791988  30 31 9f e5                                      ldr r3, [pc, #0x130]
0079198c  05 50 8f e0                                      add r5, pc, r5
00791990  00 00 56 e3                                      cmp r6, #0
00791994  03 30 95 e7                                      ldr r3, [r5, r3]
00791998  a0 60 84 e5                                      str r6, [r4, #0xa0]
0079199c  08 30 83 e2                                      add r3, r3, #8
007919a0  00 30 84 e5                                      str r3, [r4]
007919a4  01 00 00 0a                                      beq #0x7919b0
007919a8  06 00 a0 e1                                      mov r0, r6
007919ac  ac 20 ff eb                                      bl #0x759c64
007919b0  48 01 94 e5                                      ldr r0, [r4, #0x148]
007919b4  00 20 e0 e3                                      mvn r2, #0
007919b8  00 30 a0 e3                                      mov r3, #0
007919bc  12 00 d7 e7                                      bfi r0, r2, #0, #0x18
007919c0  20 cc a0 e1                                      lsr ip, r0, #0x18
007919c4  00 10 a0 e3                                      mov r1, #0
007919c8  13 c0 c0 e7                                      bfi ip, r3, #0, #1
007919cc  00 60 e0 e3                                      mvn r6, #0
007919d0  00 70 e0 e3                                      mvn r7, #0
007919d4  01 e0 a0 e3                                      mov lr, #1
007919d8  38 e1 c4 e5                                      strb lr, [r4, #0x138]
007919dc  a4 30 84 e5                                      str r3, [r4, #0xa4]
007919e0  a8 30 84 e5                                      str r3, [r4, #0xa8]
007919e4  ac 30 84 e5                                      str r3, [r4, #0xac]
007919e8  b0 30 c4 e5                                      strb r3, [r4, #0xb0]
007919ec  b4 30 84 e5                                      str r3, [r4, #0xb4]
007919f0  b8 30 84 e5                                      str r3, [r4, #0xb8]
007919f4  bc 30 84 e5                                      str r3, [r4, #0xbc]
007919f8  c0 30 c4 e5                                      strb r3, [r4, #0xc0]
007919fc  c4 30 84 e5                                      str r3, [r4, #0xc4]
00791a00  c8 30 84 e5                                      str r3, [r4, #0xc8]
00791a04  cc 30 84 e5                                      str r3, [r4, #0xcc]
00791a08  d0 30 c4 e5                                      strb r3, [r4, #0xd0]
00791a0c  e8 30 84 e5                                      str r3, [r4, #0xe8]
00791a10  ec 30 84 e5                                      str r3, [r4, #0xec]
00791a14  f0 30 84 e5                                      str r3, [r4, #0xf0]
00791a18  f4 30 c4 e5                                      strb r3, [r4, #0xf4]
00791a1c  f8 30 84 e5                                      str r3, [r4, #0xf8]
00791a20  fc 30 84 e5                                      str r3, [r4, #0xfc]
00791a24  00 31 84 e5                                      str r3, [r4, #0x100]
00791a28  04 31 c4 e5                                      strb r3, [r4, #0x104]
00791a2c  08 31 84 e5                                      str r3, [r4, #0x108]
00791a30  0c 31 84 e5                                      str r3, [r4, #0x10c]
00791a34  10 31 84 e5                                      str r3, [r4, #0x110]
00791a38  14 31 c4 e5                                      strb r3, [r4, #0x114]
00791a3c  18 31 84 e5                                      str r3, [r4, #0x118]
00791a40  1c 31 84 e5                                      str r3, [r4, #0x11c]
00791a44  20 31 84 e5                                      str r3, [r4, #0x120]
00791a48  24 31 c4 e5                                      strb r3, [r4, #0x124]
00791a4c  39 31 c4 e5                                      strb r3, [r4, #0x139]
00791a50  f0 6e c4 e1                                      strd r6, r7, [r4, #0xe0]
00791a54  f8 6d c4 e1                                      strd r6, r7, [r4, #0xd8]
00791a58  48 01 84 e5                                      str r0, [r4, #0x148]
00791a5c  04 00 a0 e1                                      mov r0, r4
00791a60  4b c1 c4 e5                                      strb ip, [r4, #0x14b]
00791a64  60 11 84 e5                                      str r1, [r4, #0x160]
00791a68  78 31 84 e5                                      str r3, [r4, #0x178]
00791a6c  97 21 c4 e5                                      strb r2, [r4, #0x197]
00791a70  4c 31 c4 e5                                      strb r3, [r4, #0x14c]
00791a74  50 31 84 e5                                      str r3, [r4, #0x150]
00791a78  54 11 84 e5                                      str r1, [r4, #0x154]
00791a7c  58 11 84 e5                                      str r1, [r4, #0x158]
00791a80  5c 11 84 e5                                      str r1, [r4, #0x15c]
00791a84  64 31 84 e5                                      str r3, [r4, #0x164]
00791a88  68 31 84 e5                                      str r3, [r4, #0x168]
00791a8c  6c 21 84 e5                                      str r2, [r4, #0x16c]
00791a90  70 21 c4 e5                                      strb r2, [r4, #0x170]
00791a94  71 21 c4 e5                                      strb r2, [r4, #0x171]
00791a98  72 21 c4 e5                                      strb r2, [r4, #0x172]
00791a9c  73 21 c4 e5                                      strb r2, [r4, #0x173]
00791aa0  94 21 c4 e5                                      strb r2, [r4, #0x194]
00791aa4  95 21 c4 e5                                      strb r2, [r4, #0x195]
00791aa8  96 21 c4 e5                                      strb r2, [r4, #0x196]
00791aac  8a fe ff eb                                      bl #0x7914dc
00791ab0  04 00 a0 e1                                      mov r0, r4
00791ab4  0c d0 8d e2                                      add sp, sp, #0xc
00791ab8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00791abc  04 31 20 00 60 3f 00 00                          .byte 0x04, 0x31, 0x20, 0x00, 0x60, 0x3f, 0x00, 0x00

; FUNCTION 0x00791ac4, declared_size=644, range_size=644, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character9to_stringEv
; demangled: gameswf::edit_text_character::to_string()
; decoder-mode: arm
00791ac4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00791ac8  70 42 9f e5                                      ldr r4, [pc, #0x270]
00791acc  70 62 9f e5                                      ldr r6, [pc, #0x270]
00791ad0  64 d0 4d e2                                      sub sp, sp, #0x64
00791ad4  04 40 8f e0                                      add r4, pc, r4
00791ad8  06 30 94 e7                                      ldr r3, [r4, r6]
00791adc  00 50 a0 e1                                      mov r5, r0
00791ae0  00 30 93 e5                                      ldr r3, [r3]
00791ae4  5c 30 8d e5                                      str r3, [sp, #0x5c]
00791ae8  1d e2 ff eb                                      bl #0x78a364
00791aec  d0 30 d0 e1                                      ldrsb r3, [r0]
00791af0  01 00 73 e3                                      cmn r3, #1
00791af4  04 30 90 05                                      ldreq r3, [r0, #4]
00791af8  01 30 43 e2                                      sub r3, r3, #1
00791afc  00 00 53 e3                                      cmp r3, #0
00791b00  4b 00 00 da                                      ble #0x791c34
00791b04  40 70 95 e5                                      ldr r7, [r5, #0x40]
00791b08  00 00 57 e3                                      cmp r7, #0
00791b0c  03 00 00 0a                                      beq #0x791b20
00791b10  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
00791b14  04 30 d0 e5                                      ldrb r3, [r0, #4]
00791b18  00 00 53 e3                                      cmp r3, #0
00791b1c  50 00 00 0a                                      beq #0x791c64
00791b20  58 30 9d e5                                      ldr r3, [sp, #0x58]
00791b24  00 10 e0 e3                                      mvn r1, #0
00791b28  00 20 a0 e3                                      mov r2, #0
00791b2c  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
00791b30  23 1c a0 e1                                      lsr r1, r3, #0x18
00791b34  12 10 c0 e7                                      bfi r1, r2, #0, #1
00791b38  01 c0 a0 e3                                      mov ip, #1
00791b3c  05 00 a0 e1                                      mov r0, r5
00791b40  58 30 8d e5                                      str r3, [sp, #0x58]
00791b44  48 c0 cd e5                                      strb ip, [sp, #0x48]
00791b48  49 20 cd e5                                      strb r2, [sp, #0x49]
00791b4c  5b 10 cd e5                                      strb r1, [sp, #0x5b]
00791b50  03 e2 ff eb                                      bl #0x78a364
00791b54  34 80 8d e2                                      add r8, sp, #0x34
00791b58  00 10 a0 e1                                      mov r1, r0
00791b5c  08 00 a0 e1                                      mov r0, r8
00791b60  31 05 ff eb                                      bl #0x75302c
00791b64  48 a0 8d e2                                      add sl, sp, #0x48
00791b68  05 00 a0 e1                                      mov r0, r5
00791b6c  fc e1 ff eb                                      bl #0x78a364
00791b70  0a 10 a0 e1                                      mov r1, sl
00791b74  08 20 a0 e1                                      mov r2, r8
00791b78  6c ed 00 eb                                      bl #0x7cd130
00791b7c  00 00 50 e3                                      cmp r0, #0
00791b80  06 00 00 0a                                      beq #0x791ba0
00791b84  d8 34 dd e1                                      ldrsb r3, [sp, #0x48]
00791b88  07 00 a0 e1                                      mov r0, r7
00791b8c  01 00 73 e3                                      cmn r3, #1
00791b90  01 10 8a 12                                      addne r1, sl, #1
00791b94  54 10 9d 05                                      ldreq r1, [sp, #0x54]
00791b98  b9 65 ff eb                                      bl #0x76b284
00791b9c  00 70 a0 e1                                      mov r7, r0
00791ba0  00 00 57 e3                                      cmp r7, #0
00791ba4  1c 00 00 0a                                      beq #0x791c1c
00791ba8  00 90 a0 e3                                      mov sb, #0
00791bac  00 90 cd e5                                      strb sb, [sp]
00791bb0  01 90 cd e5                                      strb sb, [sp, #1]
00791bb4  00 30 97 e5                                      ldr r3, [r7]
00791bb8  20 b0 8d e2                                      add fp, sp, #0x20
00791bbc  08 10 a0 e1                                      mov r1, r8
00791bc0  0b 00 a0 e1                                      mov r0, fp
00791bc4  20 a0 93 e5                                      ldr sl, [r3, #0x20]
00791bc8  17 05 ff eb                                      bl #0x75302c
00791bcc  07 00 a0 e1                                      mov r0, r7
00791bd0  0b 10 a0 e1                                      mov r1, fp
00791bd4  0d 20 a0 e1                                      mov r2, sp
00791bd8  3a ff 2f e1                                      blx sl
00791bdc  00 00 50 e3                                      cmp r0, #0
00791be0  0d 80 a0 e1                                      mov r8, sp
00791be4  00 90 a0 01                                      moveq sb, r0
00791be8  04 00 00 0a                                      beq #0x791c00
00791bec  d1 30 dd e1                                      ldrsb r3, [sp, #1]
00791bf0  05 00 53 e3                                      cmp r3, #5
00791bf4  04 90 9d 05                                      ldreq sb, [sp, #4]
00791bf8  09 90 55 e0                                      subs sb, r5, sb
00791bfc  01 90 a0 13                                      movne sb, #1
00791c00  d0 32 dd e1                                      ldrsb r3, [sp, #0x20]
00791c04  01 00 73 e3                                      cmn r3, #1
00791c08  47 00 00 0a                                      beq #0x791d2c
00791c0c  00 00 59 e3                                      cmp sb, #0
00791c10  27 00 00 1a                                      bne #0x791cb4
00791c14  0d 00 a0 e1                                      mov r0, sp
00791c18  41 15 00 eb                                      bl #0x797124
00791c1c  d4 33 dd e1                                      ldrsb r3, [sp, #0x34]
00791c20  01 00 73 e3                                      cmn r3, #1
00791c24  18 00 00 0a                                      beq #0x791c8c
00791c28  d8 34 dd e1                                      ldrsb r3, [sp, #0x48]
00791c2c  01 00 73 e3                                      cmn r3, #1
00791c30  1b 00 00 0a                                      beq #0x791ca4
00791c34  38 31 d5 e5                                      ldrb r3, [r5, #0x138]
00791c38  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00791c3c  ff 00 53 e3                                      cmp r3, #0xff
00791c40  06 30 94 e7                                      ldr r3, [r4, r6]
00791c44  4e 0f 85 12                                      addne r0, r5, #0x138
00791c48  01 00 80 12                                      addne r0, r0, #1
00791c4c  00 30 93 e5                                      ldr r3, [r3]
00791c50  44 01 95 05                                      ldreq r0, [r5, #0x144]
00791c54  03 00 52 e1                                      cmp r2, r3
00791c58  37 00 00 1a                                      bne #0x791d3c
00791c5c  64 d0 8d e2                                      add sp, sp, #0x64
00791c60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00791c64  00 10 90 e5                                      ldr r1, [r0]
00791c68  01 10 41 e2                                      sub r1, r1, #1
00791c6c  00 00 51 e3                                      cmp r1, #0
00791c70  00 10 80 e5                                      str r1, [r0]
00791c74  00 00 00 1a                                      bne #0x791c7c
00791c78  ae 03 ff eb                                      bl #0x752b38
00791c7c  00 70 a0 e3                                      mov r7, #0
00791c80  3c 70 85 e5                                      str r7, [r5, #0x3c]
00791c84  40 70 85 e5                                      str r7, [r5, #0x40]
00791c88  a4 ff ff ea                                      b #0x791b20
00791c8c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00791c90  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00791c94  a7 03 ff eb                                      bl #0x752b38
00791c98  d8 34 dd e1                                      ldrsb r3, [sp, #0x48]
00791c9c  01 00 73 e3                                      cmn r3, #1
00791ca0  e3 ff ff 1a                                      bne #0x791c34
00791ca4  54 00 9d e5                                      ldr r0, [sp, #0x54]
00791ca8  50 10 9d e5                                      ldr r1, [sp, #0x50]
00791cac  a1 03 ff eb                                      bl #0x752b38
00791cb0  df ff ff ea                                      b #0x791c34
00791cb4  0d 00 a0 e1                                      mov r0, sp
00791cb8  71 3b f2 eb                                      bl #0x420a84
00791cbc  d0 30 d0 e1                                      ldrsb r3, [r0]
00791cc0  01 00 73 e3                                      cmn r3, #1
00791cc4  38 31 d5 e5                                      ldrb r3, [r5, #0x138]
00791cc8  01 00 80 12                                      addne r0, r0, #1
00791ccc  0c 00 90 05                                      ldreq r0, [r0, #0xc]
00791cd0  ff 00 53 e3                                      cmp r3, #0xff
00791cd4  4e 1f 85 12                                      addne r1, r5, #0x138
00791cd8  01 10 81 12                                      addne r1, r1, #1
00791cdc  44 11 95 05                                      ldreq r1, [r5, #0x144]
00791ce0  8d f1 ed eb                                      bl #0x30e31c
00791ce4  00 00 50 e3                                      cmp r0, #0
00791ce8  c9 ff ff 0a                                      beq #0x791c14
00791cec  0d 00 a0 e1                                      mov r0, sp
00791cf0  63 3b f2 eb                                      bl #0x420a84
00791cf4  d0 30 d0 e1                                      ldrsb r3, [r0]
00791cf8  0c 70 8d e2                                      add r7, sp, #0xc
00791cfc  01 00 73 e3                                      cmn r3, #1
00791d00  01 10 80 12                                      addne r1, r0, #1
00791d04  0c 10 90 05                                      ldreq r1, [r0, #0xc]
00791d08  07 00 a0 e1                                      mov r0, r7
00791d0c  5a 07 f2 eb                                      bl #0x413a7c
00791d10  05 00 a0 e1                                      mov r0, r5
00791d14  07 10 a0 e1                                      mov r1, r7
00791d18  00 20 a0 e3                                      mov r2, #0
00791d1c  32 f5 ff eb                                      bl #0x78f1ec
00791d20  07 00 a0 e1                                      mov r0, r7
00791d24  6b 38 f2 eb                                      bl #0x41fed8
00791d28  b9 ff ff ea                                      b #0x791c14
00791d2c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00791d30  28 10 9d e5                                      ldr r1, [sp, #0x28]
00791d34  7f 03 ff eb                                      bl #0x752b38
00791d38  b3 ff ff ea                                      b #0x791c0c
00791d3c  73 f1 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00791d40  bc 2f 20 00 ac 40 00 00                          .byte 0xbc, 0x2f, 0x20, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007928cc, declared_size=3168, range_size=3168, mode=arm
; class-group: gameswf::edit_text_character
; alias: _ZN7gameswf19edit_text_character7displayEv
; demangled: gameswf::edit_text_character::display()
; decoder-mode: arm
007928cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007928d0  00 40 a0 e1                                      mov r4, r0
007928d4  30 00 90 e5                                      ldr r0, [r0, #0x30]
007928d8  40 5c 9f e5                                      ldr r5, [pc, #0xc40]
007928dc  d4 d0 4d e2                                      sub sp, sp, #0xd4
007928e0  00 00 50 e3                                      cmp r0, #0
007928e4  05 50 8f e0                                      add r5, pc, r5
007928e8  03 00 00 0a                                      beq #0x7928fc
007928ec  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
007928f0  04 20 d3 e5                                      ldrb r2, [r3, #4]
007928f4  00 00 52 e3                                      cmp r2, #0
007928f8  8c 00 00 0a                                      beq #0x792b30
007928fc  2c 6b ff eb                                      bl #0x76d5b4
00792900  85 30 d0 e5                                      ldrb r3, [r0, #0x85]
00792904  00 00 53 e3                                      cmp r3, #0
00792908  02 00 00 0a                                      beq #0x792918
0079290c  86 30 d0 e5                                      ldrb r3, [r0, #0x86]
00792910  00 00 53 e3                                      cmp r3, #0
00792914  3d 01 00 0a                                      beq #0x792e10
00792918  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
0079291c  4e 30 d3 e5                                      ldrb r3, [r3, #0x4e]
00792920  00 00 53 e3                                      cmp r3, #0
00792924  a0 00 00 1a                                      bne #0x792bac
00792928  f4 6b 9f e5                                      ldr r6, [pc, #0xbf4]
0079292c  30 70 94 e5                                      ldr r7, [r4, #0x30]
00792930  00 00 57 e3                                      cmp r7, #0
00792934  03 00 00 0a                                      beq #0x792948
00792938  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0079293c  04 30 d0 e5                                      ldrb r3, [r0, #4]
00792940  00 00 53 e3                                      cmp r3, #0
00792944  68 00 00 0a                                      beq #0x792aec
00792948  ac 30 97 e5                                      ldr r3, [r7, #0xac]
0079294c  fe 15 a0 e3                                      mov r1, #0x3f800000
00792950  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00792954  04 00 93 e5                                      ldr r0, [r3, #4]
00792958  8b ed ed eb                                      bl #0x30df8c
0079295c  00 00 50 e3                                      cmp r0, #0
00792960  59 00 00 0a                                      beq #0x792acc
00792964  06 30 95 e7                                      ldr r3, [r5, r6]
00792968  a0 20 94 e5                                      ldr r2, [r4, #0xa0]
0079296c  00 30 93 e5                                      ldr r3, [r3]
00792970  94 20 92 e5                                      ldr r2, [r2, #0x94]
00792974  00 00 53 e3                                      cmp r3, #0
00792978  03 00 00 0a                                      beq #0x79298c
0079297c  00 20 52 e2                                      subs r2, r2, #0
00792980  01 20 a0 13                                      movne r2, #1
00792984  04 20 c3 e5                                      strb r2, [r3, #4]
00792988  30 70 94 e5                                      ldr r7, [r4, #0x30]
0079298c  00 00 57 e3                                      cmp r7, #0
00792990  03 00 00 0a                                      beq #0x7929a4
00792994  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00792998  04 30 d0 e5                                      ldrb r3, [r0, #4]
0079299c  00 00 53 e3                                      cmp r3, #0
007929a0  06 01 00 0a                                      beq #0x792dc0
007929a4  98 30 d7 e5                                      ldrb r3, [r7, #0x98]
007929a8  00 00 53 e3                                      cmp r3, #0
007929ac  6d 00 00 1a                                      bne #0x792b68
007929b0  00 00 57 e3                                      cmp r7, #0
007929b4  03 00 00 0a                                      beq #0x7929c8
007929b8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
007929bc  04 80 d3 e5                                      ldrb r8, [r3, #4]
007929c0  00 00 58 e3                                      cmp r8, #0
007929c4  16 01 00 0a                                      beq #0x792e24
007929c8  98 30 d7 e5                                      ldrb r3, [r7, #0x98]
007929cc  00 00 53 e3                                      cmp r3, #0
007929d0  08 00 00 0a                                      beq #0x7929f8
007929d4  06 30 95 e7                                      ldr r3, [r5, r6]
007929d8  00 30 93 e5                                      ldr r3, [r3]
007929dc  00 00 53 e3                                      cmp r3, #0
007929e0  04 00 00 0a                                      beq #0x7929f8
007929e4  03 00 a0 e1                                      mov r0, r3
007929e8  d8 10 84 e2                                      add r1, r4, #0xd8
007929ec  00 30 93 e5                                      ldr r3, [r3]
007929f0  0f e0 a0 e1                                      mov lr, pc
007929f4  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
007929f8  28 3b 9f e5                                      ldr r3, [pc, #0xb28]
007929fc  b0 a0 8d e2                                      add sl, sp, #0xb0
00792a00  00 20 a0 e3                                      mov r2, #0
00792a04  03 10 95 e7                                      ldr r1, [r5, r3]
00792a08  08 30 8a e2                                      add r3, sl, #8
00792a0c  04 20 83 e4                                      str r2, [r3], #4
00792a10  00 00 91 e5                                      ldr r0, [r1]
00792a14  04 20 83 e4                                      str r2, [r3], #4
00792a18  04 20 83 e4                                      str r2, [r3], #4
00792a1c  fe 15 a0 e3                                      mov r1, #0x3f800000
00792a20  02 00 50 e1                                      cmp r0, r2
00792a24  00 20 83 e5                                      str r2, [r3]
00792a28  b4 20 8d e5                                      str r2, [sp, #0xb4]
00792a2c  c0 10 8d e5                                      str r1, [sp, #0xc0]
00792a30  b0 10 8d e5                                      str r1, [sp, #0xb0]
00792a34  0a 01 00 0a                                      beq #0x792e64
00792a38  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00792a3c  00 00 53 e3                                      cmp r3, #0
00792a40  0a 00 00 da                                      ble #0x792a70
00792a44  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00792a48  00 c0 a0 e3                                      mov ip, #0
00792a4c  0c 00 a0 e1                                      mov r0, ip
00792a50  20 30 93 e5                                      ldr r3, [r3, #0x20]
00792a54  04 10 a0 e1                                      mov r1, r4
00792a58  a4 20 84 e2                                      add r2, r4, #0xa4
00792a5c  00 c0 8d e5                                      str ip, [sp]
00792a60  04 c0 8d e5                                      str ip, [sp, #4]
00792a64  08 c0 8d e5                                      str ip, [sp, #8]
00792a68  0c c0 8d e5                                      str ip, [sp, #0xc]
00792a6c  0b f4 ff eb                                      bl #0x78faa0
00792a70  30 30 94 e5                                      ldr r3, [r4, #0x30]
00792a74  00 00 53 e3                                      cmp r3, #0
00792a78  03 00 00 0a                                      beq #0x792a8c
00792a7c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00792a80  04 20 d0 e5                                      ldrb r2, [r0, #4]
00792a84  00 00 52 e3                                      cmp r2, #0
00792a88  eb 00 00 0a                                      beq #0x792e3c
00792a8c  98 30 d3 e5                                      ldrb r3, [r3, #0x98]
00792a90  00 00 53 e3                                      cmp r3, #0
00792a94  d3 00 00 1a                                      bne #0x792de8
00792a98  4c 31 d4 e5                                      ldrb r3, [r4, #0x14c]
00792a9c  00 00 53 e3                                      cmp r3, #0
00792aa0  2d 00 00 1a                                      bne #0x792b5c
00792aa4  54 30 94 e5                                      ldr r3, [r4, #0x54]
00792aa8  00 00 53 e3                                      cmp r3, #0
00792aac  04 00 00 0a                                      beq #0x792ac4
00792ab0  60 30 93 e5                                      ldr r3, [r3, #0x60]
00792ab4  00 00 53 e3                                      cmp r3, #0
00792ab8  01 00 00 0a                                      beq #0x792ac4
00792abc  04 00 a0 e1                                      mov r0, r4
00792ac0  35 05 ff eb                                      bl #0x753f9c
00792ac4  d4 d0 8d e2                                      add sp, sp, #0xd4
00792ac8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00792acc  06 30 95 e7                                      ldr r3, [r5, r6]
00792ad0  00 30 93 e5                                      ldr r3, [r3]
00792ad4  00 00 53 e3                                      cmp r3, #0
00792ad8  ab ff ff 0a                                      beq #0x79298c
00792adc  00 20 a0 e3                                      mov r2, #0
00792ae0  04 20 c3 e5                                      strb r2, [r3, #4]
00792ae4  30 70 94 e5                                      ldr r7, [r4, #0x30]
00792ae8  a7 ff ff ea                                      b #0x79298c
00792aec  00 10 90 e5                                      ldr r1, [r0]
00792af0  01 10 41 e2                                      sub r1, r1, #1
00792af4  00 00 51 e3                                      cmp r1, #0
00792af8  00 10 80 e5                                      str r1, [r0]
00792afc  00 00 00 1a                                      bne #0x792b04
00792b00  0c 00 ff eb                                      bl #0x752b38
00792b04  00 70 a0 e3                                      mov r7, #0
00792b08  2c 70 84 e5                                      str r7, [r4, #0x2c]
00792b0c  30 70 84 e5                                      str r7, [r4, #0x30]
00792b10  ac 30 97 e5                                      ldr r3, [r7, #0xac]
00792b14  fe 15 a0 e3                                      mov r1, #0x3f800000
00792b18  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00792b1c  04 00 93 e5                                      ldr r0, [r3, #4]
00792b20  19 ed ed eb                                      bl #0x30df8c
00792b24  00 00 50 e3                                      cmp r0, #0
00792b28  8d ff ff 1a                                      bne #0x792964
00792b2c  e6 ff ff ea                                      b #0x792acc
00792b30  00 10 93 e5                                      ldr r1, [r3]
00792b34  01 10 41 e2                                      sub r1, r1, #1
00792b38  00 00 51 e3                                      cmp r1, #0
00792b3c  00 10 83 e5                                      str r1, [r3]
00792b40  01 00 00 1a                                      bne #0x792b4c
00792b44  03 00 a0 e1                                      mov r0, r3
00792b48  fa ff fe eb                                      bl #0x752b38
00792b4c  00 00 a0 e3                                      mov r0, #0
00792b50  2c 00 84 e5                                      str r0, [r4, #0x2c]
00792b54  30 00 84 e5                                      str r0, [r4, #0x30]
00792b58  67 ff ff ea                                      b #0x7928fc
00792b5c  04 00 a0 e1                                      mov r0, r4
00792b60  70 e1 ff eb                                      bl #0x78b128
00792b64  ce ff ff ea                                      b #0x792aa4
00792b68  d8 70 84 e2                                      add r7, r4, #0xd8
00792b6c  07 00 a0 e1                                      mov r0, r7
00792b70  04 10 a0 e1                                      mov r1, r4
00792b74  4a 83 ff eb                                      bl #0x7738a4
00792b78  00 00 50 e3                                      cmp r0, #0
00792b7c  30 70 94 05                                      ldreq r7, [r4, #0x30]
00792b80  8a ff ff 0a                                      beq #0x7929b0
00792b84  06 30 95 e7                                      ldr r3, [r5, r6]
00792b88  00 30 93 e5                                      ldr r3, [r3]
00792b8c  00 00 53 e3                                      cmp r3, #0
00792b90  c0 ff ff 0a                                      beq #0x792a98
00792b94  03 00 a0 e1                                      mov r0, r3
00792b98  07 10 a0 e1                                      mov r1, r7
00792b9c  00 30 93 e5                                      ldr r3, [r3]
00792ba0  0f e0 a0 e1                                      mov lr, pc
00792ba4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00792ba8  ba ff ff ea                                      b #0x792a98
00792bac  04 00 a0 e1                                      mov r0, r4
00792bb0  ef 04 ff eb                                      bl #0x753f74
00792bb4  b0 a0 8d e2                                      add sl, sp, #0xb0
00792bb8  64 69 9f e5                                      ldr r6, [pc, #0x964]
00792bbc  00 c0 a0 e1                                      mov ip, r0
00792bc0  0a e0 a0 e1                                      mov lr, sl
00792bc4  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00792bc8  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
00792bcc  06 20 95 e7                                      ldr r2, [r5, r6]
00792bd0  03 00 9c e8                                      ldm ip, {r0, r1}
00792bd4  00 c0 92 e5                                      ldr ip, [r2]
00792bd8  03 00 8e e8                                      stm lr, {r0, r1}
00792bdc  00 00 5c e3                                      cmp ip, #0
00792be0  04 00 00 0a                                      beq #0x792bf8
00792be4  0c 00 a0 e1                                      mov r0, ip
00792be8  0a 10 a0 e1                                      mov r1, sl
00792bec  00 30 9c e5                                      ldr r3, [ip]
00792bf0  0f e0 a0 e1                                      mov lr, pc
00792bf4  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00792bf8  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00792bfc  00 70 a0 e3                                      mov r7, #0
00792c00  48 10 8d e2                                      add r1, sp, #0x48
00792c04  28 10 8d e5                                      str r1, [sp, #0x28]
00792c08  90 70 8d e5                                      str r7, [sp, #0x90]
00792c0c  94 70 8d e5                                      str r7, [sp, #0x94]
00792c10  98 70 8d e5                                      str r7, [sp, #0x98]
00792c14  9c 70 8d e5                                      str r7, [sp, #0x9c]
00792c18  a0 70 8d e5                                      str r7, [sp, #0xa0]
00792c1c  a4 70 8d e5                                      str r7, [sp, #0xa4]
00792c20  a8 70 8d e5                                      str r7, [sp, #0xa8]
00792c24  ac 70 8d e5                                      str r7, [sp, #0xac]
00792c28  24 a0 93 e5                                      ldr sl, [r3, #0x24]
00792c2c  2c 80 93 e5                                      ldr r8, [r3, #0x2c]
00792c30  01 00 a0 e1                                      mov r0, r1
00792c34  90 a0 8d e5                                      str sl, [sp, #0x90]
00792c38  94 80 8d e5                                      str r8, [sp, #0x94]
00792c3c  28 b0 93 e5                                      ldr fp, [r3, #0x28]
00792c40  2c c0 93 e5                                      ldr ip, [r3, #0x2c]
00792c44  00 10 a0 e3                                      mov r1, #0
00792c48  98 b0 8d e5                                      str fp, [sp, #0x98]
00792c4c  9c c0 8d e5                                      str ip, [sp, #0x9c]
00792c50  24 20 93 e5                                      ldr r2, [r3, #0x24]
00792c54  20 20 8d e5                                      str r2, [sp, #0x20]
00792c58  30 e0 93 e5                                      ldr lr, [r3, #0x30]
00792c5c  48 20 a0 e3                                      mov r2, #0x48
00792c60  24 e0 8d e5                                      str lr, [sp, #0x24]
00792c64  20 e0 9d e5                                      ldr lr, [sp, #0x20]
00792c68  a0 e0 8d e5                                      str lr, [sp, #0xa0]
00792c6c  24 e0 9d e5                                      ldr lr, [sp, #0x24]
00792c70  a4 e0 8d e5                                      str lr, [sp, #0xa4]
00792c74  30 e0 93 e5                                      ldr lr, [r3, #0x30]
00792c78  1c e0 8d e5                                      str lr, [sp, #0x1c]
00792c7c  28 30 93 e5                                      ldr r3, [r3, #0x28]
00792c80  ac e0 8d e5                                      str lr, [sp, #0xac]
00792c84  14 c0 8d e5                                      str ip, [sp, #0x14]
00792c88  a8 30 8d e5                                      str r3, [sp, #0xa8]
00792c8c  18 30 8d e5                                      str r3, [sp, #0x18]
00792c90  f2 ed ed eb                                      bl #0x30e460
00792c94  06 90 95 e7                                      ldr sb, [r5, r6]
00792c98  18 30 9d e5                                      ldr r3, [sp, #0x18]
00792c9c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00792ca0  00 20 99 e5                                      ldr r2, [sb]
00792ca4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00792ca8  20 e0 9d e5                                      ldr lr, [sp, #0x20]
00792cac  78 30 8d e5                                      str r3, [sp, #0x78]
00792cb0  7c 10 8d e5                                      str r1, [sp, #0x7c]
00792cb4  60 30 8d e5                                      str r3, [sp, #0x60]
00792cb8  24 10 9d e5                                      ldr r1, [sp, #0x24]
00792cbc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00792cc0  00 00 52 e3                                      cmp r2, #0
00792cc4  70 b0 8d e5                                      str fp, [sp, #0x70]
00792cc8  74 c0 8d e5                                      str ip, [sp, #0x74]
00792ccc  80 e0 8d e5                                      str lr, [sp, #0x80]
00792cd0  84 10 8d e5                                      str r1, [sp, #0x84]
00792cd4  88 a0 8d e5                                      str sl, [sp, #0x88]
00792cd8  8c 80 8d e5                                      str r8, [sp, #0x8c]
00792cdc  48 a0 8d e5                                      str sl, [sp, #0x48]
00792ce0  4c 80 8d e5                                      str r8, [sp, #0x4c]
00792ce4  50 b0 8d e5                                      str fp, [sp, #0x50]
00792ce8  54 c0 8d e5                                      str ip, [sp, #0x54]
00792cec  58 e0 8d e5                                      str lr, [sp, #0x58]
00792cf0  5c 10 8d e5                                      str r1, [sp, #0x5c]
00792cf4  64 30 8d e5                                      str r3, [sp, #0x64]
00792cf8  68 a0 8d e5                                      str sl, [sp, #0x68]
00792cfc  6c 80 8d e5                                      str r8, [sp, #0x6c]
00792d00  09 ff ff 0a                                      beq #0x79292c
00792d04  00 30 92 e5                                      ldr r3, [r2]
00792d08  02 00 a0 e1                                      mov r0, r2
00792d0c  00 10 a0 e3                                      mov r1, #0
00792d10  65 2f 84 e2                                      add r2, r4, #0x194
00792d14  0f e0 a0 e1                                      mov lr, pc
00792d18  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00792d1c  00 30 99 e5                                      ldr r3, [sb]
00792d20  00 00 53 e3                                      cmp r3, #0
00792d24  00 ff ff 0a                                      beq #0x79292c
00792d28  03 00 a0 e1                                      mov r0, r3
00792d2c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00792d30  00 30 93 e5                                      ldr r3, [r3]
00792d34  04 20 a0 e3                                      mov r2, #4
00792d38  0f e0 a0 e1                                      mov lr, pc
00792d3c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00792d40  00 00 99 e5                                      ldr r0, [sb]
00792d44  00 00 50 e3                                      cmp r0, #0
00792d48  f7 fe ff 0a                                      beq #0x79292c
00792d4c  00 30 90 e5                                      ldr r3, [r0]
00792d50  00 20 a0 e3                                      mov r2, #0
00792d54  00 10 e0 e3                                      mvn r1, #0
00792d58  78 30 93 e5                                      ldr r3, [r3, #0x78]
00792d5c  cb 10 cd e5                                      strb r1, [sp, #0xcb]
00792d60  c8 20 cd e5                                      strb r2, [sp, #0xc8]
00792d64  ca 20 cd e5                                      strb r2, [sp, #0xca]
00792d68  c9 20 cd e5                                      strb r2, [sp, #0xc9]
00792d6c  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
00792d70  33 ff 2f e1                                      blx r3
00792d74  00 30 99 e5                                      ldr r3, [sb]
00792d78  00 00 53 e3                                      cmp r3, #0
00792d7c  ea fe ff 0a                                      beq #0x79292c
00792d80  03 00 a0 e1                                      mov r0, r3
00792d84  07 10 a0 e1                                      mov r1, r7
00792d88  00 30 93 e5                                      ldr r3, [r3]
00792d8c  0f e0 a0 e1                                      mov lr, pc
00792d90  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00792d94  00 30 99 e5                                      ldr r3, [sb]
00792d98  00 00 53 e3                                      cmp r3, #0
00792d9c  e2 fe ff 0a                                      beq #0x79292c
00792da0  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00792da4  03 00 a0 e1                                      mov r0, r3
00792da8  05 20 a0 e3                                      mov r2, #5
00792dac  20 10 8c e2                                      add r1, ip, #0x20
00792db0  00 30 93 e5                                      ldr r3, [r3]
00792db4  0f e0 a0 e1                                      mov lr, pc
00792db8  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00792dbc  da fe ff ea                                      b #0x79292c
00792dc0  00 10 90 e5                                      ldr r1, [r0]
00792dc4  01 10 41 e2                                      sub r1, r1, #1
00792dc8  00 00 51 e3                                      cmp r1, #0
00792dcc  00 10 80 e5                                      str r1, [r0]
00792dd0  00 00 00 1a                                      bne #0x792dd8
00792dd4  57 ff fe eb                                      bl #0x752b38
00792dd8  00 70 a0 e3                                      mov r7, #0
00792ddc  2c 70 84 e5                                      str r7, [r4, #0x2c]
00792de0  30 70 84 e5                                      str r7, [r4, #0x30]
00792de4  ee fe ff ea                                      b #0x7929a4
00792de8  06 30 95 e7                                      ldr r3, [r5, r6]
00792dec  00 30 93 e5                                      ldr r3, [r3]
00792df0  00 00 53 e3                                      cmp r3, #0
00792df4  27 ff ff 0a                                      beq #0x792a98
00792df8  03 00 a0 e1                                      mov r0, r3
00792dfc  00 10 a0 e3                                      mov r1, #0
00792e00  00 30 93 e5                                      ldr r3, [r3]
00792e04  0f e0 a0 e1                                      mov lr, pc
00792e08  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00792e0c  21 ff ff ea                                      b #0x792a98
00792e10  d0 10 8d e2                                      add r1, sp, #0xd0
00792e14  04 40 21 e5                                      str r4, [r1, #-4]!
00792e18  98 00 80 e2                                      add r0, r0, #0x98
00792e1c  e7 df ff eb                                      bl #0x78adc0
00792e20  27 ff ff ea                                      b #0x792ac4
00792e24  2c 00 84 e2                                      add r0, r4, #0x2c
00792e28  08 10 a0 e1                                      mov r1, r8
00792e2c  14 34 f2 eb                                      bl #0x41fe84
00792e30  08 70 a0 e1                                      mov r7, r8
00792e34  30 80 84 e5                                      str r8, [r4, #0x30]
00792e38  e2 fe ff ea                                      b #0x7929c8
00792e3c  00 10 90 e5                                      ldr r1, [r0]
00792e40  01 10 41 e2                                      sub r1, r1, #1
00792e44  00 00 51 e3                                      cmp r1, #0
00792e48  00 10 80 e5                                      str r1, [r0]
00792e4c  00 00 00 1a                                      bne #0x792e54
00792e50  38 ff fe eb                                      bl #0x752b38
00792e54  00 30 a0 e3                                      mov r3, #0
00792e58  2c 30 84 e5                                      str r3, [r4, #0x2c]
00792e5c  30 30 84 e5                                      str r3, [r4, #0x30]
00792e60  09 ff ff ea                                      b #0x792a8c
00792e64  50 30 94 e5                                      ldr r3, [r4, #0x50]
00792e68  08 20 93 e5                                      ldr r2, [r3, #8]
00792e6c  00 00 52 e3                                      cmp r2, #0
00792e70  a7 01 00 ca                                      bgt #0x793514
00792e74  04 70 a0 e1                                      mov r7, r4
00792e78  40 80 97 e5                                      ldr r8, [r7, #0x40]
00792e7c  00 00 58 e3                                      cmp r8, #0
00792e80  ec fe ff 0a                                      beq #0x792a38
00792e84  3c 00 97 e5                                      ldr r0, [r7, #0x3c]
00792e88  04 30 d0 e5                                      ldrb r3, [r0, #4]
00792e8c  00 00 53 e3                                      cmp r3, #0
00792e90  04 01 00 0a                                      beq #0x7932a8
00792e94  50 30 98 e5                                      ldr r3, [r8, #0x50]
00792e98  08 70 a0 e1                                      mov r7, r8
00792e9c  08 20 93 e5                                      ldr r2, [r3, #8]
00792ea0  00 00 52 e3                                      cmp r2, #0
00792ea4  f3 ff ff da                                      ble #0x792e78
00792ea8  24 20 8d e5                                      str r2, [sp, #0x24]
00792eac  24 10 9d e5                                      ldr r1, [sp, #0x24]
00792eb0  01 20 51 e2                                      subs r2, r1, #1
00792eb4  df fe ff 4a                                      bmi #0x792a38
00792eb8  2c 90 a0 e3                                      mov sb, #0x2c
00792ebc  99 02 09 e0                                      mul sb, sb, r2
00792ec0  a4 20 84 e2                                      add r2, r4, #0xa4
00792ec4  34 20 8d e5                                      str r2, [sp, #0x34]
00792ec8  01 c0 a0 e3                                      mov ip, #1
00792ecc  90 10 8d e2                                      add r1, sp, #0x90
00792ed0  c8 20 8d e2                                      add r2, sp, #0xc8
00792ed4  00 b0 a0 e3                                      mov fp, #0
00792ed8  3c c0 8d e5                                      str ip, [sp, #0x3c]
00792edc  1c 10 8d e5                                      str r1, [sp, #0x1c]
00792ee0  38 20 8d e5                                      str r2, [sp, #0x38]
00792ee4  2c 80 8d e5                                      str r8, [sp, #0x2c]
00792ee8  40 50 8d e5                                      str r5, [sp, #0x40]
00792eec  44 60 8d e5                                      str r6, [sp, #0x44]
00792ef0  20 a0 8d e5                                      str sl, [sp, #0x20]
00792ef4  04 50 93 e5                                      ldr r5, [r3, #4]
00792ef8  09 30 95 e7                                      ldr r3, [r5, sb]
00792efc  09 50 85 e0                                      add r5, r5, sb
00792f00  02 00 53 e3                                      cmp r3, #2
00792f04  f1 00 00 0a                                      beq #0x7932d0
00792f08  00 00 53 e3                                      cmp r3, #0
00792f0c  89 00 00 1a                                      bne #0x793138
00792f10  20 00 95 e5                                      ldr r0, [r5, #0x20]
00792f14  6c ed ed eb                                      bl #0x30e4cc
00792f18  00 60 a0 e1                                      mov r6, r0
00792f1c  24 00 95 e5                                      ldr r0, [r5, #0x24]
00792f20  69 ed ed eb                                      bl #0x30e4cc
00792f24  28 00 8d e5                                      str r0, [sp, #0x28]
00792f28  08 80 95 e5                                      ldr r8, [r5, #8]
00792f2c  0c 70 95 e5                                      ldr r7, [r5, #0xc]
00792f30  08 00 a0 e1                                      mov r0, r8
00792f34  06 ee ed eb                                      bl #0x30e754
00792f38  00 10 a0 e1                                      mov r1, r0
00792f3c  00 00 66 e2                                      rsb r0, r6, #0
00792f40  18 10 8d e5                                      str r1, [sp, #0x18]
00792f44  86 ee ed eb                                      bl #0x30e964
00792f48  18 10 9d e5                                      ldr r1, [sp, #0x18]
00792f4c  00 a0 a0 e1                                      mov sl, r0
00792f50  07 00 a0 e1                                      mov r0, r7
00792f54  84 ef ed eb                                      bl #0x30ed6c
00792f58  00 10 a0 e1                                      mov r1, r0
00792f5c  0a 00 a0 e1                                      mov r0, sl
00792f60  0f ef ed eb                                      bl #0x30eba4
00792f64  30 00 8d e5                                      str r0, [sp, #0x30]
00792f68  08 00 a0 e1                                      mov r0, r8
00792f6c  e5 ee ed eb                                      bl #0x30eb08
00792f70  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00792f74  00 a0 a0 e1                                      mov sl, r0
00792f78  00 00 6e e2                                      rsb r0, lr, #0
00792f7c  78 ee ed eb                                      bl #0x30e964
00792f80  0a 10 a0 e1                                      mov r1, sl
00792f84  00 80 a0 e1                                      mov r8, r0
00792f88  07 00 a0 e1                                      mov r0, r7
00792f8c  76 ef ed eb                                      bl #0x30ed6c
00792f90  00 10 a0 e1                                      mov r1, r0
00792f94  08 00 a0 e1                                      mov r0, r8
00792f98  01 ef ed eb                                      bl #0x30eba4
00792f9c  00 10 e0 e3                                      mvn r1, #0
00792fa0  c8 10 cd e5                                      strb r1, [sp, #0xc8]
00792fa4  c9 10 cd e5                                      strb r1, [sp, #0xc9]
00792fa8  ca 10 cd e5                                      strb r1, [sp, #0xca]
00792fac  cb 10 cd e5                                      strb r1, [sp, #0xcb]
00792fb0  04 e0 d5 e5                                      ldrb lr, [r5, #4]
00792fb4  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00792fb8  00 70 a0 e1                                      mov r7, r0
00792fbc  ca e0 cd e5                                      strb lr, [sp, #0xca]
00792fc0  05 e0 d5 e5                                      ldrb lr, [r5, #5]
00792fc4  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00792fc8  c9 e0 cd e5                                      strb lr, [sp, #0xc9]
00792fcc  06 e0 d5 e5                                      ldrb lr, [r5, #6]
00792fd0  c8 e0 cd e5                                      strb lr, [sp, #0xc8]
00792fd4  07 e0 d5 e5                                      ldrb lr, [r5, #7]
00792fd8  cb e0 cd e5                                      strb lr, [sp, #0xcb]
00792fdc  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00792fe0  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
00792fe4  03 00 9c e8                                      ldm ip, {r0, r1}
00792fe8  04 10 8e e5                                      str r1, [lr, #4]
00792fec  41 14 a0 e3                                      mov r1, #0x41000000
00792ff0  00 00 8e e5                                      str r0, [lr]
00792ff4  0a 16 81 e2                                      add r1, r1, #0xa00000
00792ff8  30 00 9d e5                                      ldr r0, [sp, #0x30]
00792ffc  5a ef ed eb                                      bl #0x30ed6c
00793000  41 14 a0 e3                                      mov r1, #0x41000000
00793004  00 80 a0 e1                                      mov r8, r0
00793008  0a 16 81 e2                                      add r1, r1, #0xa00000
0079300c  07 00 a0 e1                                      mov r0, r7
00793010  55 ef ed eb                                      bl #0x30ed6c
00793014  90 10 9d e5                                      ldr r1, [sp, #0x90]
00793018  00 70 a0 e1                                      mov r7, r0
0079301c  08 00 a0 e1                                      mov r0, r8
00793020  51 ef ed eb                                      bl #0x30ed6c
00793024  94 10 9d e5                                      ldr r1, [sp, #0x94]
00793028  00 50 a0 e1                                      mov r5, r0
0079302c  07 00 a0 e1                                      mov r0, r7
00793030  4d ef ed eb                                      bl #0x30ed6c
00793034  00 10 a0 e1                                      mov r1, r0
00793038  05 00 a0 e1                                      mov r0, r5
0079303c  d8 ee ed eb                                      bl #0x30eba4
00793040  98 10 9d e5                                      ldr r1, [sp, #0x98]
00793044  d6 ee ed eb                                      bl #0x30eba4
00793048  02 15 e0 e3                                      mvn r1, #0x800000
0079304c  00 50 a0 e1                                      mov r5, r0
00793050  17 ed ed eb                                      bl #0x30e4b4
00793054  00 00 50 e3                                      cmp r0, #0
00793058  34 00 00 0a                                      beq #0x793130
0079305c  02 11 e0 e3                                      mvn r1, #0x80000000
00793060  05 00 a0 e1                                      mov r0, r5
00793064  02 15 41 e2                                      sub r1, r1, #0x800000
00793068  4f ee ed eb                                      bl #0x30e9ac
0079306c  00 00 50 e3                                      cmp r0, #0
00793070  2e 00 00 0a                                      beq #0x793130
00793074  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
00793078  08 00 a0 e1                                      mov r0, r8
0079307c  98 50 8d e5                                      str r5, [sp, #0x98]
00793080  39 ef ed eb                                      bl #0x30ed6c
00793084  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00793088  00 50 a0 e1                                      mov r5, r0
0079308c  07 00 a0 e1                                      mov r0, r7
00793090  35 ef ed eb                                      bl #0x30ed6c
00793094  00 10 a0 e1                                      mov r1, r0
00793098  05 00 a0 e1                                      mov r0, r5
0079309c  c0 ee ed eb                                      bl #0x30eba4
007930a0  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
007930a4  be ee ed eb                                      bl #0x30eba4
007930a8  02 15 e0 e3                                      mvn r1, #0x800000
007930ac  00 50 a0 e1                                      mov r5, r0
007930b0  ff ec ed eb                                      bl #0x30e4b4
007930b4  00 00 50 e3                                      cmp r0, #0
007930b8  05 01 00 0a                                      beq #0x7934d4
007930bc  02 11 e0 e3                                      mvn r1, #0x80000000
007930c0  05 00 a0 e1                                      mov r0, r5
007930c4  02 15 41 e2                                      sub r1, r1, #0x800000
007930c8  37 ee ed eb                                      bl #0x30e9ac
007930cc  00 00 50 e3                                      cmp r0, #0
007930d0  ff 00 00 0a                                      beq #0x7934d4
007930d4  28 10 9d e5                                      ldr r1, [sp, #0x28]
007930d8  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
007930dc  a4 50 8d e5                                      str r5, [sp, #0xa4]
007930e0  71 c0 ef e6                                      uxtb ip, r1
007930e4  20 30 93 e5                                      ldr r3, [r3, #0x20]
007930e8  0c c0 8d e5                                      str ip, [sp, #0xc]
007930ec  38 c0 9d e5                                      ldr ip, [sp, #0x38]
007930f0  76 60 ef e6                                      uxtb r6, r6
007930f4  00 e0 a0 e3                                      mov lr, #0
007930f8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007930fc  04 10 a0 e1                                      mov r1, r4
00793100  34 20 9d e5                                      ldr r2, [sp, #0x34]
00793104  08 60 8d e5                                      str r6, [sp, #8]
00793108  00 50 8d e8                                      stm sp, {ip, lr}
0079310c  63 f2 ff eb                                      bl #0x78faa0
00793110  24 20 9d e5                                      ldr r2, [sp, #0x24]
00793114  01 b0 8b e2                                      add fp, fp, #1
00793118  2c 90 49 e2                                      sub sb, sb, #0x2c
0079311c  02 00 5b e1                                      cmp fp, r2
00793120  f2 00 00 0a                                      beq #0x7934f0
00793124  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00793128  50 30 9c e5                                      ldr r3, [ip, #0x50]
0079312c  70 ff ff ea                                      b #0x792ef4
00793130  00 50 a0 e3                                      mov r5, #0
00793134  ce ff ff ea                                      b #0x793074
00793138  01 00 53 e3                                      cmp r3, #1
0079313c  f3 ff ff 1a                                      bne #0x793110
00793140  20 00 95 e5                                      ldr r0, [r5, #0x20]
00793144  55 ac 04 eb                                      bl #0x8be2a0
00793148  70 60 ef e6                                      uxtb r6, r0
0079314c  24 00 95 e5                                      ldr r0, [r5, #0x24]
00793150  52 ac 04 eb                                      bl #0x8be2a0
00793154  70 50 ef e6                                      uxtb r5, r0
00793158  06 10 95 e1                                      orrs r1, r5, r6
0079315c  eb ff ff 0a                                      beq #0x793110
00793160  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00793164  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00793168  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0079316c  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
00793170  03 00 9c e8                                      ldm ip, {r0, r1}
00793174  03 00 8e e8                                      stm lr, {r0, r1}
00793178  00 00 66 e2                                      rsb r0, r6, #0
0079317c  f8 ed ed eb                                      bl #0x30e964
00793180  41 14 a0 e3                                      mov r1, #0x41000000
00793184  0a 16 81 e2                                      add r1, r1, #0xa00000
00793188  f7 ee ed eb                                      bl #0x30ed6c
0079318c  00 70 a0 e1                                      mov r7, r0
00793190  00 00 65 e2                                      rsb r0, r5, #0
00793194  f2 ed ed eb                                      bl #0x30e964
00793198  41 14 a0 e3                                      mov r1, #0x41000000
0079319c  0a 16 81 e2                                      add r1, r1, #0xa00000
007931a0  f1 ee ed eb                                      bl #0x30ed6c
007931a4  90 10 9d e5                                      ldr r1, [sp, #0x90]
007931a8  00 a0 a0 e1                                      mov sl, r0
007931ac  07 00 a0 e1                                      mov r0, r7
007931b0  ed ee ed eb                                      bl #0x30ed6c
007931b4  94 10 9d e5                                      ldr r1, [sp, #0x94]
007931b8  00 80 a0 e1                                      mov r8, r0
007931bc  0a 00 a0 e1                                      mov r0, sl
007931c0  e9 ee ed eb                                      bl #0x30ed6c
007931c4  00 10 a0 e1                                      mov r1, r0
007931c8  08 00 a0 e1                                      mov r0, r8
007931cc  74 ee ed eb                                      bl #0x30eba4
007931d0  98 10 9d e5                                      ldr r1, [sp, #0x98]
007931d4  72 ee ed eb                                      bl #0x30eba4
007931d8  02 15 e0 e3                                      mvn r1, #0x800000
007931dc  00 80 a0 e1                                      mov r8, r0
007931e0  b3 ec ed eb                                      bl #0x30e4b4
007931e4  00 00 50 e3                                      cmp r0, #0
007931e8  2c 00 00 0a                                      beq #0x7932a0
007931ec  02 11 e0 e3                                      mvn r1, #0x80000000
007931f0  08 00 a0 e1                                      mov r0, r8
007931f4  02 15 41 e2                                      sub r1, r1, #0x800000
007931f8  eb ed ed eb                                      bl #0x30e9ac
007931fc  00 00 50 e3                                      cmp r0, #0
00793200  26 00 00 0a                                      beq #0x7932a0
00793204  07 00 a0 e1                                      mov r0, r7
00793208  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
0079320c  98 80 8d e5                                      str r8, [sp, #0x98]
00793210  d5 ee ed eb                                      bl #0x30ed6c
00793214  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00793218  00 70 a0 e1                                      mov r7, r0
0079321c  0a 00 a0 e1                                      mov r0, sl
00793220  d1 ee ed eb                                      bl #0x30ed6c
00793224  00 10 a0 e1                                      mov r1, r0
00793228  07 00 a0 e1                                      mov r0, r7
0079322c  5c ee ed eb                                      bl #0x30eba4
00793230  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00793234  5a ee ed eb                                      bl #0x30eba4
00793238  02 15 e0 e3                                      mvn r1, #0x800000
0079323c  00 70 a0 e1                                      mov r7, r0
00793240  9b ec ed eb                                      bl #0x30e4b4
00793244  00 00 50 e3                                      cmp r0, #0
00793248  af 00 00 0a                                      beq #0x79350c
0079324c  02 11 e0 e3                                      mvn r1, #0x80000000
00793250  07 00 a0 e1                                      mov r0, r7
00793254  02 15 41 e2                                      sub r1, r1, #0x800000
00793258  d3 ed ed eb                                      bl #0x30e9ac
0079325c  00 00 50 e3                                      cmp r0, #0
00793260  a9 00 00 0a                                      beq #0x79350c
00793264  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00793268  a4 70 8d e5                                      str r7, [sp, #0xa4]
0079326c  00 c0 a0 e3                                      mov ip, #0
00793270  20 30 93 e5                                      ldr r3, [r3, #0x20]
00793274  04 10 a0 e1                                      mov r1, r4
00793278  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0079327c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00793280  08 60 8d e5                                      str r6, [sp, #8]
00793284  0c 50 8d e5                                      str r5, [sp, #0xc]
00793288  00 c0 8d e5                                      str ip, [sp]
0079328c  04 c0 8d e5                                      str ip, [sp, #4]
00793290  02 f2 ff eb                                      bl #0x78faa0
00793294  00 10 a0 e3                                      mov r1, #0
00793298  3c 10 8d e5                                      str r1, [sp, #0x3c]
0079329c  9b ff ff ea                                      b #0x793110
007932a0  00 80 a0 e3                                      mov r8, #0
007932a4  d6 ff ff ea                                      b #0x793204
007932a8  00 10 90 e5                                      ldr r1, [r0]
007932ac  01 10 41 e2                                      sub r1, r1, #1
007932b0  00 00 51 e3                                      cmp r1, #0
007932b4  00 10 80 e5                                      str r1, [r0]
007932b8  00 00 00 1a                                      bne #0x7932c0
007932bc  1d fe fe eb                                      bl #0x752b38
007932c0  00 30 a0 e3                                      mov r3, #0
007932c4  40 30 87 e5                                      str r3, [r7, #0x40]
007932c8  3c 30 87 e5                                      str r3, [r7, #0x3c]
007932cc  d9 fd ff ea                                      b #0x792a38
007932d0  24 30 95 e5                                      ldr r3, [r5, #0x24]
007932d4  00 c0 e0 e3                                      mvn ip, #0
007932d8  20 a0 95 e5                                      ldr sl, [r5, #0x20]
007932dc  c8 c0 cd e5                                      strb ip, [sp, #0xc8]
007932e0  c9 c0 cd e5                                      strb ip, [sp, #0xc9]
007932e4  ca c0 cd e5                                      strb ip, [sp, #0xca]
007932e8  cb c0 cd e5                                      strb ip, [sp, #0xcb]
007932ec  28 30 8d e5                                      str r3, [sp, #0x28]
007932f0  04 30 d5 e5                                      ldrb r3, [r5, #4]
007932f4  ca 30 cd e5                                      strb r3, [sp, #0xca]
007932f8  05 30 d5 e5                                      ldrb r3, [r5, #5]
007932fc  c9 30 cd e5                                      strb r3, [sp, #0xc9]
00793300  06 30 d5 e5                                      ldrb r3, [r5, #6]
00793304  c8 30 cd e5                                      strb r3, [sp, #0xc8]
00793308  07 70 d5 e5                                      ldrb r7, [r5, #7]
0079330c  cb 70 cd e5                                      strb r7, [sp, #0xcb]
00793310  24 60 95 e5                                      ldr r6, [r5, #0x24]
00793314  20 80 95 e5                                      ldr r8, [r5, #0x20]
00793318  10 50 95 e5                                      ldr r5, [r5, #0x10]
0079331c  06 10 a0 e1                                      mov r1, r6
00793320  08 00 a0 e1                                      mov r0, r8
00793324  f8 ec ed eb                                      bl #0x30e70c
00793328  00 00 50 e3                                      cmp r0, #0
0079332c  07 00 a0 e1                                      mov r0, r7
00793330  08 60 a0 01                                      moveq r6, r8
00793334  8a ed ed eb                                      bl #0x30e964
00793338  00 70 a0 e1                                      mov r7, r0
0079333c  05 00 a0 e1                                      mov r0, r5
00793340  87 ed ed eb                                      bl #0x30e964
00793344  41 14 a0 e3                                      mov r1, #0x41000000
00793348  02 16 81 e2                                      add r1, r1, #0x200000
0079334c  50 ee ed eb                                      bl #0x30ec94
00793350  00 10 a0 e1                                      mov r1, r0
00793354  07 00 a0 e1                                      mov r0, r7
00793358  83 ee ed eb                                      bl #0x30ed6c
0079335c  5a ec ed eb                                      bl #0x30e4cc
00793360  fe 00 50 e3                                      cmp r0, #0xfe
00793364  00 20 e0 c3                                      mvngt r2, #0
00793368  cb 20 cd c5                                      strbgt r2, [sp, #0xcb]
0079336c  5a 00 00 da                                      ble #0x7934dc
00793370  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00793374  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00793378  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0079337c  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
00793380  03 00 9c e8                                      ldm ip, {r0, r1}
00793384  03 00 8e e8                                      stm lr, {r0, r1}
00793388  0a 00 a0 e1                                      mov r0, sl
0079338c  4e ec ed eb                                      bl #0x30e4cc
00793390  00 00 60 e2                                      rsb r0, r0, #0
00793394  72 ed ed eb                                      bl #0x30e964
00793398  41 14 a0 e3                                      mov r1, #0x41000000
0079339c  0a 16 81 e2                                      add r1, r1, #0xa00000
007933a0  71 ee ed eb                                      bl #0x30ed6c
007933a4  00 80 a0 e1                                      mov r8, r0
007933a8  28 00 9d e5                                      ldr r0, [sp, #0x28]
007933ac  46 ec ed eb                                      bl #0x30e4cc
007933b0  00 00 60 e2                                      rsb r0, r0, #0
007933b4  6a ed ed eb                                      bl #0x30e964
007933b8  41 14 a0 e3                                      mov r1, #0x41000000
007933bc  0a 16 81 e2                                      add r1, r1, #0xa00000
007933c0  69 ee ed eb                                      bl #0x30ed6c
007933c4  90 10 9d e5                                      ldr r1, [sp, #0x90]
007933c8  00 70 a0 e1                                      mov r7, r0
007933cc  08 00 a0 e1                                      mov r0, r8
007933d0  65 ee ed eb                                      bl #0x30ed6c
007933d4  94 10 9d e5                                      ldr r1, [sp, #0x94]
007933d8  00 50 a0 e1                                      mov r5, r0
007933dc  07 00 a0 e1                                      mov r0, r7
007933e0  61 ee ed eb                                      bl #0x30ed6c
007933e4  00 10 a0 e1                                      mov r1, r0
007933e8  05 00 a0 e1                                      mov r0, r5
007933ec  ec ed ed eb                                      bl #0x30eba4
007933f0  98 10 9d e5                                      ldr r1, [sp, #0x98]
007933f4  ea ed ed eb                                      bl #0x30eba4
007933f8  02 15 e0 e3                                      mvn r1, #0x800000
007933fc  00 50 a0 e1                                      mov r5, r0
00793400  2b ec ed eb                                      bl #0x30e4b4
00793404  00 00 50 e3                                      cmp r0, #0
00793408  2f 00 00 0a                                      beq #0x7934cc
0079340c  02 11 e0 e3                                      mvn r1, #0x80000000
00793410  05 00 a0 e1                                      mov r0, r5
00793414  02 15 41 e2                                      sub r1, r1, #0x800000
00793418  63 ed ed eb                                      bl #0x30e9ac
0079341c  00 00 50 e3                                      cmp r0, #0
00793420  29 00 00 0a                                      beq #0x7934cc
00793424  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
00793428  08 00 a0 e1                                      mov r0, r8
0079342c  98 50 8d e5                                      str r5, [sp, #0x98]
00793430  4d ee ed eb                                      bl #0x30ed6c
00793434  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00793438  00 50 a0 e1                                      mov r5, r0
0079343c  07 00 a0 e1                                      mov r0, r7
00793440  49 ee ed eb                                      bl #0x30ed6c
00793444  00 10 a0 e1                                      mov r1, r0
00793448  05 00 a0 e1                                      mov r0, r5
0079344c  d4 ed ed eb                                      bl #0x30eba4
00793450  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00793454  d2 ed ed eb                                      bl #0x30eba4
00793458  02 15 e0 e3                                      mvn r1, #0x800000
0079345c  00 50 a0 e1                                      mov r5, r0
00793460  13 ec ed eb                                      bl #0x30e4b4
00793464  00 00 50 e3                                      cmp r0, #0
00793468  25 00 00 0a                                      beq #0x793504
0079346c  02 11 e0 e3                                      mvn r1, #0x80000000
00793470  05 00 a0 e1                                      mov r0, r5
00793474  02 15 41 e2                                      sub r1, r1, #0x800000
00793478  4b ed ed eb                                      bl #0x30e9ac
0079347c  00 00 50 e3                                      cmp r0, #0
00793480  1f 00 00 0a                                      beq #0x793504
00793484  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00793488  38 10 9d e5                                      ldr r1, [sp, #0x38]
0079348c  a4 50 8d e5                                      str r5, [sp, #0xa4]
00793490  06 00 a0 e1                                      mov r0, r6
00793494  20 50 93 e5                                      ldr r5, [r3, #0x20]
00793498  00 10 8d e5                                      str r1, [sp]
0079349c  7f ab 04 eb                                      bl #0x8be2a0
007934a0  70 c0 ef e6                                      uxtb ip, r0
007934a4  04 c0 8d e5                                      str ip, [sp, #4]
007934a8  05 30 a0 e1                                      mov r3, r5
007934ac  00 c0 a0 e3                                      mov ip, #0
007934b0  04 10 a0 e1                                      mov r1, r4
007934b4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007934b8  34 20 9d e5                                      ldr r2, [sp, #0x34]
007934bc  08 c0 8d e5                                      str ip, [sp, #8]
007934c0  0c c0 8d e5                                      str ip, [sp, #0xc]
007934c4  75 f1 ff eb                                      bl #0x78faa0
007934c8  10 ff ff ea                                      b #0x793110
007934cc  00 50 a0 e3                                      mov r5, #0
007934d0  d3 ff ff ea                                      b #0x793424
007934d4  00 50 a0 e3                                      mov r5, #0
007934d8  fd fe ff ea                                      b #0x7930d4
007934dc  70 00 ef e6                                      uxtb r0, r0
007934e0  00 00 50 e3                                      cmp r0, #0
007934e4  cb 00 cd e5                                      strb r0, [sp, #0xcb]
007934e8  08 ff ff 0a                                      beq #0x793110
007934ec  9f ff ff ea                                      b #0x793370
007934f0  3c 10 8d e2                                      add r1, sp, #0x3c
007934f4  62 00 91 e8                                      ldm r1, {r1, r5, r6}
007934f8  00 00 51 e3                                      cmp r1, #0
007934fc  5b fd ff 0a                                      beq #0x792a70
00793500  4c fd ff ea                                      b #0x792a38
00793504  00 50 a0 e3                                      mov r5, #0
00793508  dd ff ff ea                                      b #0x793484
0079350c  00 70 a0 e3                                      mov r7, #0
00793510  53 ff ff ea                                      b #0x793264
00793514  24 20 8d e5                                      str r2, [sp, #0x24]
00793518  04 80 a0 e1                                      mov r8, r4
0079351c  62 fe ff ea                                      b #0x792eac
; mapping-symbol data/literal pool
00793520  ac 21 20 00 b4 39 00 00 b8 36 00 00              .byte 0xac, 0x21, 0x20, 0x00, 0xb4, 0x39, 0x00, 0x00, 0xb8, 0x36, 0x00, 0x00
