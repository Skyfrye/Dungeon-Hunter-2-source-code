; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e80e8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZNK6glitch5video8ITexture14getSizeInBytesEv
; demangled: glitch::video::ITexture::getSizeInBytes() const
; decoder-mode: arm
005e80e8  38 30 90 e5                                      ldr r3, [r0, #0x38]
005e80ec  3f 20 d0 e5                                      ldrb r2, [r0, #0x3f]
005e80f0  03 30 03 e2                                      and r3, r3, #3
005e80f4  02 00 53 e3                                      cmp r3, #2
005e80f8  05 30 a0 03                                      moveq r3, #5
005e80fc  00 30 a0 13                                      movne r3, #0
005e8100  02 00 12 e3                                      tst r2, #2
005e8104  06 00 00 1a                                      bne #0x5e8124
005e8108  30 20 90 e5                                      ldr r2, [r0, #0x30]
005e810c  3e 10 d0 e5                                      ldrb r1, [r0, #0x3e]
005e8110  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
005e8114  7f 00 82 e2                                      add r0, r2, #0x7f
005e8118  7f 00 c0 e3                                      bic r0, r0, #0x7f
005e811c  90 23 20 e0                                      mla r0, r0, r3, r2
005e8120  1e ff 2f e1                                      bx lr
005e8124  30 10 90 e5                                      ldr r1, [r0, #0x30]
005e8128  04 00 91 e5                                      ldr r0, [r1, #4]
005e812c  00 20 91 e5                                      ldr r2, [r1]
005e8130  00 20 62 e0                                      rsb r2, r2, r0
005e8134  7f 00 82 e2                                      add r0, r2, #0x7f
005e8138  7f 00 c0 e3                                      bic r0, r0, #0x7f
005e813c  90 23 20 e0                                      mla r0, r0, r3, r2
005e8140  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ea504, declared_size=56, range_size=56, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZNK6glitch5video8ITexture8getPitchEh
; demangled: glitch::video::ITexture::getPitch(unsigned char) const
; decoder-mode: arm
005ea504  00 30 a0 e1                                      mov r3, r0
005ea508  38 00 90 e5                                      ldr r0, [r0, #0x38]
005ea50c  50 21 e1 e7                                      ubfx r2, r0, #2, #2
005ea510  01 00 52 e3                                      cmp r2, #1
005ea514  05 00 00 0a                                      beq #0x5ea530
005ea518  20 30 93 e5                                      ldr r3, [r3, #0x20]
005ea51c  50 02 e5 e7                                      ubfx r0, r0, #4, #6
005ea520  53 11 a0 e1                                      asr r1, r3, r1
005ea524  01 00 51 e3                                      cmp r1, #1
005ea528  01 10 a0 b3                                      movlt r1, #1
005ea52c  6e 0d 00 ea                                      b #0x5edaec
005ea530  20 10 93 e5                                      ldr r1, [r3, #0x20]
005ea534  50 02 e5 e7                                      ubfx r0, r0, #4, #6
005ea538  6b 0d 00 ea                                      b #0x5edaec

; FUNCTION 0x005fdae8, declared_size=264, range_size=264, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZNK6glitch5video8ITexture12setDataDirtyEb
; demangled: glitch::video::ITexture::setDataDirty(bool) const
; decoder-mode: arm
005fdae8  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005fdaec  f0 00 2d e9                                      push {r4, r5, r6, r7}
005fdaf0  02 00 13 e3                                      tst r3, #2
005fdaf4  1d 00 00 0a                                      beq #0x5fdb70
005fdaf8  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
005fdafc  00 00 53 e3                                      cmp r3, #0
005fdb00  34 00 00 0a                                      beq #0x5fdbd8
005fdb04  38 70 90 e5                                      ldr r7, [r0, #0x38]
005fdb08  b0 34 d0 e1                                      ldrh r3, [r0, #0x40]
005fdb0c  3e 10 d0 e5                                      ldrb r1, [r0, #0x3e]
005fdb10  03 70 07 e2                                      and r7, r7, #3
005fdb14  01 30 83 e3                                      orr r3, r3, #1
005fdb18  02 00 57 e3                                      cmp r7, #2
005fdb1c  00 20 a0 e3                                      mov r2, #0
005fdb20  b0 34 c0 e1                                      strh r3, [r0, #0x40]
005fdb24  06 70 a0 03                                      moveq r7, #6
005fdb28  01 70 a0 13                                      movne r7, #1
005fdb2c  02 30 a0 e1                                      mov r3, r2
005fdb30  01 60 a0 e3                                      mov r6, #1
005fdb34  30 40 90 e5                                      ldr r4, [r0, #0x30]
005fdb38  01 10 81 e2                                      add r1, r1, #1
005fdb3c  a3 c2 a0 e1                                      lsr ip, r3, #5
005fdb40  01 11 84 e0                                      add r1, r4, r1, lsl #2
005fdb44  0c 41 91 e7                                      ldr r4, [r1, ip, lsl #2]
005fdb48  1f 50 03 e2                                      and r5, r3, #0x1f
005fdb4c  01 20 82 e2                                      add r2, r2, #1
005fdb50  16 45 84 e1                                      orr r4, r4, r6, lsl r5
005fdb54  0c 41 81 e7                                      str r4, [r1, ip, lsl #2]
005fdb58  3e 10 d0 e5                                      ldrb r1, [r0, #0x3e]
005fdb5c  07 00 52 e1                                      cmp r2, r7
005fdb60  01 30 83 e0                                      add r3, r3, r1
005fdb64  f2 ff ff ba                                      blt #0x5fdb34
005fdb68  f0 00 bd e8                                      pop {r4, r5, r6, r7}
005fdb6c  1e ff 2f e1                                      bx lr
005fdb70  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
005fdb74  00 00 53 e3                                      cmp r3, #0
005fdb78  19 00 00 0a                                      beq #0x5fdbe4
005fdb7c  38 10 90 e5                                      ldr r1, [r0, #0x38]
005fdb80  3e 20 d0 e5                                      ldrb r2, [r0, #0x3e]
005fdb84  30 30 90 e5                                      ldr r3, [r0, #0x30]
005fdb88  03 10 01 e2                                      and r1, r1, #3
005fdb8c  02 00 51 e3                                      cmp r1, #2
005fdb90  06 10 a0 03                                      moveq r1, #6
005fdb94  01 10 a0 13                                      movne r1, #1
005fdb98  92 01 01 e0                                      mul r1, r2, r1
005fdb9c  b0 c4 d0 e1                                      ldrh ip, [r0, #0x40]
005fdba0  1f 10 81 e2                                      add r1, r1, #0x1f
005fdba4  01 20 82 e2                                      add r2, r2, #1
005fdba8  a1 12 a0 e1                                      lsr r1, r1, #5
005fdbac  02 31 83 e0                                      add r3, r3, r2, lsl #2
005fdbb0  01 11 83 e0                                      add r1, r3, r1, lsl #2
005fdbb4  01 20 8c e3                                      orr r2, ip, #1
005fdbb8  03 00 51 e1                                      cmp r1, r3
005fdbbc  b0 24 c0 e1                                      strh r2, [r0, #0x40]
005fdbc0  e8 ff ff 0a                                      beq #0x5fdb68
005fdbc4  00 20 e0 e3                                      mvn r2, #0
005fdbc8  04 20 83 e4                                      str r2, [r3], #4
005fdbcc  03 00 51 e1                                      cmp r1, r3
005fdbd0  fc ff ff 1a                                      bne #0x5fdbc8
005fdbd4  e3 ff ff ea                                      b #0x5fdb68
005fdbd8  00 00 51 e3                                      cmp r1, #0
005fdbdc  e1 ff ff 0a                                      beq #0x5fdb68
005fdbe0  c7 ff ff ea                                      b #0x5fdb04
005fdbe4  00 00 51 e3                                      cmp r1, #0
005fdbe8  de ff ff 0a                                      beq #0x5fdb68
005fdbec  e2 ff ff ea                                      b #0x5fdb7c

; FUNCTION 0x005fdbf0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZNK6glitch5video8ITexture13getDriverTypeEv
; demangled: glitch::video::ITexture::getDriverType() const
; decoder-mode: arm
005fdbf0  10 40 2d e9                                      push {r4, lr}
005fdbf4  34 30 90 e5                                      ldr r3, [r0, #0x34]
005fdbf8  03 00 a0 e1                                      mov r0, r3
005fdbfc  00 30 93 e5                                      ldr r3, [r3]
005fdc00  0f e0 a0 e1                                      mov lr, pc
005fdc04  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
005fdc08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005fdc0c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZNK6glitch5video8ITexture5unmapEv
; demangled: glitch::video::ITexture::unmap() const
; decoder-mode: arm
005fdc0c  42 30 d0 e5                                      ldrb r3, [r0, #0x42]
005fdc10  10 40 2d e9                                      push {r4, lr}
005fdc14  1f 20 03 e2                                      and r2, r3, #0x1f
005fdc18  01 00 52 e3                                      cmp r2, #1
005fdc1c  00 40 a0 e1                                      mov r4, r0
005fdc20  04 00 00 9a                                      bls #0x5fdc38
005fdc24  01 20 42 e2                                      sub r2, r2, #1
005fdc28  1f 30 c3 e3                                      bic r3, r3, #0x1f
005fdc2c  03 30 82 e1                                      orr r3, r2, r3
005fdc30  42 30 c0 e5                                      strb r3, [r0, #0x42]
005fdc34  10 80 bd e8                                      pop {r4, pc}
005fdc38  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005fdc3c  20 00 13 e3                                      tst r3, #0x20
005fdc40  05 00 00 1a                                      bne #0x5fdc5c
005fdc44  00 20 a0 e3                                      mov r2, #0
005fdc48  40 30 c3 e3                                      bic r3, r3, #0x40
005fdc4c  3f 30 c4 e5                                      strb r3, [r4, #0x3f]
005fdc50  42 20 c4 e5                                      strb r2, [r4, #0x42]
005fdc54  43 20 c4 e5                                      strb r2, [r4, #0x43]
005fdc58  10 80 bd e8                                      pop {r4, pc}
005fdc5c  00 30 90 e5                                      ldr r3, [r0]
005fdc60  0f e0 a0 e1                                      mov lr, pc
005fdc64  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005fdc68  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005fdc6c  00 20 a0 e3                                      mov r2, #0
005fdc70  42 20 c4 e5                                      strb r2, [r4, #0x42]
005fdc74  40 30 c3 e3                                      bic r3, r3, #0x40
005fdc78  3f 30 c4 e5                                      strb r3, [r4, #0x3f]
005fdc7c  43 20 c4 e5                                      strb r2, [r4, #0x43]
005fdc80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005fdc84, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITexture6unlockEv
; demangled: glitch::video::ITexture::unlock()
; decoder-mode: arm
005fdc84  e0 ff ff ea                                      b #0x5fdc0c

; FUNCTION 0x005fdc88, declared_size=404, range_size=404, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITexture18copyParametersFromERKN5boost13intrusive_ptrIS1_EE
; demangled: glitch::video::ITexture::copyParametersFrom(boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
005fdc88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005fdc8c  00 50 91 e5                                      ldr r5, [r1]
005fdc90  00 40 a0 e1                                      mov r4, r0
005fdc94  01 60 a0 e1                                      mov r6, r1
005fdc98  44 70 95 e5                                      ldr r7, [r5, #0x44]
005fdc9c  fe 15 a0 e3                                      mov r1, #0x3f800000
005fdca0  07 00 a0 e1                                      mov r0, r7
005fdca4  98 42 f4 eb                                      bl #0x30e70c
005fdca8  00 00 50 e3                                      cmp r0, #0
005fdcac  fe 75 a0 13                                      movne r7, #0x3f800000
005fdcb0  07 10 a0 e1                                      mov r1, r7
005fdcb4  44 00 94 e5                                      ldr r0, [r4, #0x44]
005fdcb8  b3 40 f4 eb                                      bl #0x30df8c
005fdcbc  00 00 50 e3                                      cmp r0, #0
005fdcc0  b0 34 d4 01                                      ldrheq r3, [r4, #0x40]
005fdcc4  44 70 84 05                                      streq r7, [r4, #0x44]
005fdcc8  48 10 94 e5                                      ldr r1, [r4, #0x48]
005fdccc  80 30 83 03                                      orreq r3, r3, #0x80
005fdcd0  b0 34 c4 01                                      strheq r3, [r4, #0x40]
005fdcd4  00 50 96 05                                      ldreq r5, [r6]
005fdcd8  48 70 95 e5                                      ldr r7, [r5, #0x48]
005fdcdc  07 00 a0 e1                                      mov r0, r7
005fdce0  a9 40 f4 eb                                      bl #0x30df8c
005fdce4  00 00 50 e3                                      cmp r0, #0
005fdce8  b0 34 d4 01                                      ldrheq r3, [r4, #0x40]
005fdcec  48 70 84 05                                      streq r7, [r4, #0x48]
005fdcf0  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
005fdcf4  01 3c 83 03                                      orreq r3, r3, #0x100
005fdcf8  b0 34 c4 01                                      strheq r3, [r4, #0x40]
005fdcfc  00 50 96 05                                      ldreq r5, [r6]
005fdd00  4c 70 95 e5                                      ldr r7, [r5, #0x4c]
005fdd04  07 00 a0 e1                                      mov r0, r7
005fdd08  9f 40 f4 eb                                      bl #0x30df8c
005fdd0c  00 00 50 e3                                      cmp r0, #0
005fdd10  b0 34 d4 01                                      ldrheq r3, [r4, #0x40]
005fdd14  4c 70 84 05                                      streq r7, [r4, #0x4c]
005fdd18  50 10 94 e5                                      ldr r1, [r4, #0x50]
005fdd1c  02 3c 83 03                                      orreq r3, r3, #0x200
005fdd20  b0 34 c4 01                                      strheq r3, [r4, #0x40]
005fdd24  00 50 96 05                                      ldreq r5, [r6]
005fdd28  50 70 95 e5                                      ldr r7, [r5, #0x50]
005fdd2c  07 00 a0 e1                                      mov r0, r7
005fdd30  95 40 f4 eb                                      bl #0x30df8c
005fdd34  00 00 50 e3                                      cmp r0, #0
005fdd38  b0 34 d4 01                                      ldrheq r3, [r4, #0x40]
005fdd3c  50 70 84 05                                      streq r7, [r4, #0x50]
005fdd40  01 3b 83 03                                      orreq r3, r3, #0x400
005fdd44  b0 34 c4 01                                      strheq r3, [r4, #0x40]
005fdd48  00 50 96 05                                      ldreq r5, [r6]
005fdd4c  38 30 94 e5                                      ldr r3, [r4, #0x38]
005fdd50  38 20 95 e5                                      ldr r2, [r5, #0x38]
005fdd54  53 06 e2 e7                                      ubfx r0, r3, #0xc, #3
005fdd58  52 16 e2 e7                                      ubfx r1, r2, #0xc, #3
005fdd5c  00 00 51 e1                                      cmp r1, r0
005fdd60  09 00 00 0a                                      beq #0x5fdd8c
005fdd64  3e 00 d4 e5                                      ldrb r0, [r4, #0x3e]
005fdd68  01 00 50 e3                                      cmp r0, #1
005fdd6c  27 00 00 9a                                      bls #0x5fde10
005fdd70  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
005fdd74  11 36 ce e7                                      bfi r3, r1, #0xc, #3
005fdd78  38 30 84 e5                                      str r3, [r4, #0x38]
005fdd7c  04 20 82 e3                                      orr r2, r2, #4
005fdd80  b0 24 c4 e1                                      strh r2, [r4, #0x40]
005fdd84  00 20 96 e5                                      ldr r2, [r6]
005fdd88  38 20 92 e5                                      ldr r2, [r2, #0x38]
005fdd8c  d2 17 e2 e7                                      ubfx r1, r2, #0xf, #3
005fdd90  d3 07 e2 e7                                      ubfx r0, r3, #0xf, #3
005fdd94  00 00 51 e1                                      cmp r1, r0
005fdd98  06 00 00 0a                                      beq #0x5fddb8
005fdd9c  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
005fdda0  91 37 d1 e7                                      bfi r3, r1, #0xf, #3
005fdda4  38 30 84 e5                                      str r3, [r4, #0x38]
005fdda8  08 20 82 e3                                      orr r2, r2, #8
005fddac  b0 24 c4 e1                                      strh r2, [r4, #0x40]
005fddb0  00 20 96 e5                                      ldr r2, [r6]
005fddb4  38 20 92 e5                                      ldr r2, [r2, #0x38]
005fddb8  52 19 e2 e7                                      ubfx r1, r2, #0x12, #3
005fddbc  53 09 e2 e7                                      ubfx r0, r3, #0x12, #3
005fddc0  00 00 51 e1                                      cmp r1, r0
005fddc4  06 00 00 0a                                      beq #0x5fdde4
005fddc8  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
005fddcc  11 39 d4 e7                                      bfi r3, r1, #0x12, #3
005fddd0  38 30 84 e5                                      str r3, [r4, #0x38]
005fddd4  10 20 82 e3                                      orr r2, r2, #0x10
005fddd8  b0 24 c4 e1                                      strh r2, [r4, #0x40]
005fdddc  00 20 96 e5                                      ldr r2, [r6]
005fdde0  38 20 92 e5                                      ldr r2, [r2, #0x38]
005fdde4  d2 2a e2 e7                                      ubfx r2, r2, #0x15, #3
005fdde8  d3 1a e2 e7                                      ubfx r1, r3, #0x15, #3
005fddec  01 00 52 e1                                      cmp r2, r1
005fddf0  05 00 00 0a                                      beq #0x5fde0c
005fddf4  b0 14 d4 e1                                      ldrh r1, [r4, #0x40]
005fddf8  0e 36 c3 e3                                      bic r3, r3, #0xe00000
005fddfc  82 2a 83 e1                                      orr r2, r3, r2, lsl #21
005fde00  20 30 81 e3                                      orr r3, r1, #0x20
005fde04  b0 34 c4 e1                                      strh r3, [r4, #0x40]
005fde08  38 20 84 e5                                      str r2, [r4, #0x38]
005fde0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005fde10  01 00 51 e3                                      cmp r1, #1
005fde14  dc ff ff ca                                      bgt #0x5fdd8c
005fde18  d4 ff ff ea                                      b #0x5fdd70

; FUNCTION 0x005fde9c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITexture4bindEb
; demangled: glitch::video::ITexture::bind(bool)
; decoder-mode: arm
005fde9c  10 40 2d e9                                      push {r4, lr}
005fdea0  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005fdea4  08 d0 4d e2                                      sub sp, sp, #8
005fdea8  00 40 a0 e1                                      mov r4, r0
005fdeac  08 00 13 e3                                      tst r3, #8
005fdeb0  18 00 00 1a                                      bne #0x5fdf18
005fdeb4  00 30 94 e5                                      ldr r3, [r4]
005fdeb8  04 00 a0 e1                                      mov r0, r4
005fdebc  0f e0 a0 e1                                      mov lr, pc
005fdec0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005fdec4  00 00 50 e3                                      cmp r0, #0
005fdec8  10 00 00 0a                                      beq #0x5fdf10
005fdecc  34 00 94 e5                                      ldr r0, [r4, #0x34]
005fded0  9c 30 90 e5                                      ldr r3, [r0, #0x9c]
005fded4  01 04 13 e3                                      tst r3, #0x1000000
005fded8  0c 00 00 0a                                      beq #0x5fdf10
005fdedc  38 31 90 e5                                      ldr r3, [r0, #0x138]
005fdee0  06 00 13 e3                                      tst r3, #6
005fdee4  09 00 00 1a                                      bne #0x5fdf10
005fdee8  04 30 94 e5                                      ldr r3, [r4, #4]
005fdeec  08 10 8d e2                                      add r1, sp, #8
005fdef0  04 40 21 e5                                      str r4, [r1, #-4]!
005fdef4  01 30 83 e2                                      add r3, r3, #1
005fdef8  04 30 84 e5                                      str r3, [r4, #4]
005fdefc  33 bc fe eb                                      bl #0x5acfd0
005fdf00  04 00 9d e5                                      ldr r0, [sp, #4]
005fdf04  00 00 50 e3                                      cmp r0, #0
005fdf08  00 00 00 0a                                      beq #0x5fdf10
005fdf0c  9c 7d f4 eb                                      bl #0x31d584
005fdf10  08 d0 8d e2                                      add sp, sp, #8
005fdf14  10 80 bd e8                                      pop {r4, pc}
005fdf18  b0 34 d0 e1                                      ldrh r3, [r0, #0x40]
005fdf1c  01 00 13 e3                                      tst r3, #1
005fdf20  fa ff ff 0a                                      beq #0x5fdf10
005fdf24  e2 ff ff ea                                      b #0x5fdeb4

; FUNCTION 0x005fdf28, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITexture15generateMipmapsEv
; demangled: glitch::video::ITexture::generateMipmaps()
; decoder-mode: arm
005fdf28  10 40 2d e9                                      push {r4, lr}
005fdf2c  3e 30 d0 e5                                      ldrb r3, [r0, #0x3e]
005fdf30  00 40 a0 e1                                      mov r4, r0
005fdf34  01 00 53 e3                                      cmp r3, #1
005fdf38  03 00 00 9a                                      bls #0x5fdf4c
005fdf3c  34 30 90 e5                                      ldr r3, [r0, #0x34]
005fdf40  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
005fdf44  04 00 13 e3                                      tst r3, #4
005fdf48  01 00 00 1a                                      bne #0x5fdf54
005fdf4c  00 00 a0 e3                                      mov r0, #0
005fdf50  10 80 bd e8                                      pop {r4, pc}
005fdf54  00 10 a0 e3                                      mov r1, #0
005fdf58  cf ff ff eb                                      bl #0x5fde9c
005fdf5c  04 00 a0 e1                                      mov r0, r4
005fdf60  00 30 94 e5                                      ldr r3, [r4]
005fdf64  0f e0 a0 e1                                      mov lr, pc
005fdf68  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005fdf6c  01 00 a0 e3                                      mov r0, #1
005fdf70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005fdf74, declared_size=352, range_size=352, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITexture7setDataEPvbb
; demangled: glitch::video::ITexture::setData(void*, bool, bool)
; decoder-mode: arm
005fdf74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005fdf78  00 40 a0 e1                                      mov r4, r0
005fdf7c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005fdf80  01 50 a0 e1                                      mov r5, r1
005fdf84  02 60 a0 e1                                      mov r6, r2
005fdf88  00 00 51 e1                                      cmp r1, r0
005fdf8c  03 70 a0 e1                                      mov r7, r3
005fdf90  3b 00 00 0a                                      beq #0x5fe084
005fdf94  00 00 50 e3                                      cmp r0, #0
005fdf98  19 00 00 0a                                      beq #0x5fe004
005fdf9c  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005fdfa0  01 00 13 e3                                      tst r3, #1
005fdfa4  15 00 00 1a                                      bne #0x5fe000
005fdfa8  00 00 55 e3                                      cmp r5, #0
005fdfac  2c 50 84 e5                                      str r5, [r4, #0x2c]
005fdfb0  01 50 a0 13                                      movne r5, #1
005fdfb4  17 00 00 0a                                      beq #0x5fe018
005fdfb8  3e c0 d4 e5                                      ldrb ip, [r4, #0x3e]
005fdfbc  00 00 56 e3                                      cmp r6, #0
005fdfc0  01 30 83 13                                      orrne r3, r3, #1
005fdfc4  fe 30 03 02                                      andeq r3, r3, #0xfe
005fdfc8  01 00 5c e3                                      cmp ip, #1
005fdfcc  3f 30 c4 e5                                      strb r3, [r4, #0x3f]
005fdfd0  23 00 00 9a                                      bls #0x5fe064
005fdfd4  00 00 57 e3                                      cmp r7, #0
005fdfd8  21 00 00 0a                                      beq #0x5fe064
005fdfdc  02 10 03 e2                                      and r1, r3, #2
005fdfe0  71 10 ef e6                                      uxtb r1, r1
005fdfe4  00 00 51 e3                                      cmp r1, #0
005fdfe8  2a 00 00 0a                                      beq #0x5fe098
005fdfec  02 30 83 e3                                      orr r3, r3, #2
005fdff0  00 00 55 e3                                      cmp r5, #0
005fdff4  3f 30 c4 e5                                      strb r3, [r4, #0x3f]
005fdff8  1d 00 00 1a                                      bne #0x5fe074
005fdffc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005fe000  2c 40 f4 eb                                      bl #0x30e0b8
005fe004  00 00 55 e3                                      cmp r5, #0
005fe008  2c 50 84 e5                                      str r5, [r4, #0x2c]
005fe00c  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005fe010  01 50 a0 13                                      movne r5, #1
005fe014  e7 ff ff 1a                                      bne #0x5fdfb8
005fe018  01 30 83 e3                                      orr r3, r3, #1
005fe01c  08 00 13 e3                                      tst r3, #8
005fe020  3f 30 c4 e5                                      strb r3, [r4, #0x3f]
005fe024  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005fe028  3e 20 d4 e5                                      ldrb r2, [r4, #0x3e]
005fe02c  01 30 c3 13                                      bicne r3, r3, #1
005fe030  03 38 a0 11                                      lslne r3, r3, #0x10
005fe034  23 38 a0 11                                      lsrne r3, r3, #0x10
005fe038  b0 34 c4 11                                      strhne r3, [r4, #0x40]
005fe03c  02 30 c3 e3                                      bic r3, r3, #2
005fe040  01 00 52 e3                                      cmp r2, #1
005fe044  b0 34 c4 e1                                      strh r3, [r4, #0x40]
005fe048  1b 00 00 9a                                      bls #0x5fe0bc
005fe04c  00 00 57 e3                                      cmp r7, #0
005fe050  19 00 00 0a                                      beq #0x5fe0bc
005fe054  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005fe058  02 30 83 e3                                      orr r3, r3, #2
005fe05c  3f 30 c4 e5                                      strb r3, [r4, #0x3f]
005fe060  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005fe064  02 30 c3 e3                                      bic r3, r3, #2
005fe068  00 00 55 e3                                      cmp r5, #0
005fe06c  3f 30 c4 e5                                      strb r3, [r4, #0x3f]
005fe070  e1 ff ff 0a                                      beq #0x5fdffc
005fe074  04 00 a0 e1                                      mov r0, r4
005fe078  00 10 a0 e3                                      mov r1, #0
005fe07c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
005fe080  98 fe ff ea                                      b #0x5fdae8
005fe084  00 00 51 e3                                      cmp r1, #0
005fe088  0f 00 00 0a                                      beq #0x5fe0cc
005fe08c  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005fe090  00 50 a0 e3                                      mov r5, #0
005fe094  c7 ff ff ea                                      b #0x5fdfb8
005fe098  30 30 94 e5                                      ldr r3, [r4, #0x30]
005fe09c  1f 20 8c e2                                      add r2, ip, #0x1f
005fe0a0  c2 22 a0 e1                                      asr r2, r2, #5
005fe0a4  01 00 8c e2                                      add r0, ip, #1
005fe0a8  00 01 83 e0                                      add r0, r3, r0, lsl #2
005fe0ac  02 21 a0 e1                                      lsl r2, r2, #2
005fe0b0  ea 40 f4 eb                                      bl #0x30e460
005fe0b4  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005fe0b8  cb ff ff ea                                      b #0x5fdfec
005fe0bc  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005fe0c0  02 30 c3 e3                                      bic r3, r3, #2
005fe0c4  3f 30 c4 e5                                      strb r3, [r4, #0x3f]
005fe0c8  cb ff ff ea                                      b #0x5fdffc
005fe0cc  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005fe0d0  d0 ff ff ea                                      b #0x5fe018

; FUNCTION 0x005fe0d4, declared_size=556, range_size=556, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_23E_TEXTURE_CUBE_MAP_FACEEh
; demangled: glitch::video::ITexture::map(glitch::video::E_BUFFER_MAP_ACCESS, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)
; decoder-mode: arm
005fe0d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005fe0d8  42 c0 d0 e5                                      ldrb ip, [r0, #0x42]
005fe0dc  00 40 a0 e1                                      mov r4, r0
005fe0e0  01 70 a0 e1                                      mov r7, r1
005fe0e4  00 00 5c e3                                      cmp ip, #0
005fe0e8  02 50 a0 e1                                      mov r5, r2
005fe0ec  03 60 a0 e1                                      mov r6, r3
005fe0f0  38 00 00 1a                                      bne #0x5fe1d8
005fe0f4  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005fe0f8  08 00 13 e3                                      tst r3, #8
005fe0fc  0a 00 00 0a                                      beq #0x5fe12c
005fe100  03 00 51 e3                                      cmp r1, #3
005fe104  2f 00 00 ca                                      bgt #0x5fe1c8
005fe108  01 10 07 e2                                      and r1, r7, #1
005fe10c  04 00 a0 e1                                      mov r0, r4
005fe110  02 10 81 e3                                      orr r1, r1, #2
005fe114  05 20 a0 e1                                      mov r2, r5
005fe118  06 30 a0 e1                                      mov r3, r6
005fe11c  00 c0 94 e5                                      ldr ip, [r4]
005fe120  0f e0 a0 e1                                      mov lr, pc
005fe124  14 f0 9c e5                                      ldr pc, [ip, #0x14]
005fe128  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005fe12c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005fe130  00 00 50 e3                                      cmp r0, #0
005fe134  55 00 00 0a                                      beq #0x5fe290
005fe138  00 00 56 e3                                      cmp r6, #0
005fe13c  00 00 55 03                                      cmpeq r5, #0
005fe140  86 31 85 e1                                      orr r3, r5, r6, lsl #3
005fe144  43 30 c4 e5                                      strb r3, [r4, #0x43]
005fe148  3f 30 d4 05                                      ldrbeq r3, [r4, #0x3f]
005fe14c  87 72 a0 e1                                      lsl r7, r7, #5
005fe150  01 70 87 e3                                      orr r7, r7, #1
005fe154  40 30 83 03                                      orreq r3, r3, #0x40
005fe158  3f 30 c4 05                                      strbeq r3, [r4, #0x3f]
005fe15c  00 00 50 e3                                      cmp r0, #0
005fe160  42 70 c4 e5                                      strb r7, [r4, #0x42]
005fe164  0e 00 00 0a                                      beq #0x5fe1a4
005fe168  3e 20 d4 e5                                      ldrb r2, [r4, #0x3e]
005fe16c  b0 c4 d4 e1                                      ldrh ip, [r4, #0x40]
005fe170  30 00 94 e5                                      ldr r0, [r4, #0x30]
005fe174  92 65 21 e0                                      mla r1, r2, r5, r6
005fe178  01 c0 8c e3                                      orr ip, ip, #1
005fe17c  01 30 82 e2                                      add r3, r2, #1
005fe180  b0 c4 c4 e1                                      strh ip, [r4, #0x40]
005fe184  a1 22 a0 e1                                      lsr r2, r1, #5
005fe188  03 31 80 e0                                      add r3, r0, r3, lsl #2
005fe18c  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005fe190  1f 10 01 e2                                      and r1, r1, #0x1f
005fe194  01 c0 a0 e3                                      mov ip, #1
005fe198  1c 11 80 e1                                      orr r1, r0, ip, lsl r1
005fe19c  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
005fe1a0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
005fe1a4  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005fe1a8  02 00 13 e3                                      tst r3, #2
005fe1ac  0f 00 00 0a                                      beq #0x5fe1f0
005fe1b0  30 30 94 e5                                      ldr r3, [r4, #0x30]
005fe1b4  0c 00 93 e8                                      ldm r3, {r2, r3}
005fe1b8  03 30 62 e0                                      rsb r3, r2, r3
005fe1bc  93 05 05 e0                                      mul r5, r3, r5
005fe1c0  05 00 80 e0                                      add r0, r0, r5
005fe1c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005fe1c8  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005fe1cc  00 00 50 e3                                      cmp r0, #0
005fe1d0  d8 ff ff 1a                                      bne #0x5fe138
005fe1d4  cb ff ff ea                                      b #0x5fe108
005fe1d8  43 30 d0 e5                                      ldrb r3, [r0, #0x43]
005fe1dc  07 20 03 e2                                      and r2, r3, #7
005fe1e0  02 00 55 e1                                      cmp r5, r2
005fe1e4  09 00 00 0a                                      beq #0x5fe210
005fe1e8  00 00 a0 e3                                      mov r0, #0
005fe1ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005fe1f0  30 30 94 e5                                      ldr r3, [r4, #0x30]
005fe1f4  3e 20 d4 e5                                      ldrb r2, [r4, #0x3e]
005fe1f8  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
005fe1fc  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
005fe200  7f 20 82 e2                                      add r2, r2, #0x7f
005fe204  7f 20 c2 e3                                      bic r2, r2, #0x7f
005fe208  92 35 25 e0                                      mla r5, r2, r5, r3
005fe20c  eb ff ff ea                                      b #0x5fe1c0
005fe210  a3 01 56 e1                                      cmp r6, r3, lsr #3
005fe214  f3 ff ff 1a                                      bne #0x5fe1e8
005fe218  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005fe21c  1f 20 0c e2                                      and r2, ip, #0x1f
005fe220  01 20 82 e2                                      add r2, r2, #1
005fe224  1f c0 cc e3                                      bic ip, ip, #0x1f
005fe228  0c 20 82 e1                                      orr r2, r2, ip
005fe22c  20 00 13 e3                                      tst r3, #0x20
005fe230  42 20 c0 e5                                      strb r2, [r0, #0x42]
005fe234  11 00 00 1a                                      bne #0x5fe280
005fe238  02 00 13 e3                                      tst r3, #2
005fe23c  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
005fe240  06 00 00 0a                                      beq #0x5fe260
005fe244  30 20 90 e5                                      ldr r2, [r0, #0x30]
005fe248  00 10 92 e5                                      ldr r1, [r2]
005fe24c  04 00 92 e5                                      ldr r0, [r2, #4]
005fe250  00 00 61 e0                                      rsb r0, r1, r0
005fe254  90 05 00 e0                                      mul r0, r0, r5
005fe258  00 00 83 e0                                      add r0, r3, r0
005fe25c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005fe260  30 20 90 e5                                      ldr r2, [r0, #0x30]
005fe264  3e 10 d0 e5                                      ldrb r1, [r0, #0x3e]
005fe268  01 01 92 e7                                      ldr r0, [r2, r1, lsl #2]
005fe26c  06 21 92 e7                                      ldr r2, [r2, r6, lsl #2]
005fe270  7f 00 80 e2                                      add r0, r0, #0x7f
005fe274  7f 00 c0 e3                                      bic r0, r0, #0x7f
005fe278  95 20 20 e0                                      mla r0, r5, r0, r2
005fe27c  f5 ff ff ea                                      b #0x5fe258
005fe280  00 30 90 e5                                      ldr r3, [r0]
005fe284  0f e0 a0 e1                                      mov lr, pc
005fe288  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005fe28c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005fe290  38 20 94 e5                                      ldr r2, [r4, #0x38]
005fe294  03 20 02 e2                                      and r2, r2, #3
005fe298  02 00 52 e3                                      cmp r2, #2
005fe29c  05 20 a0 03                                      moveq r2, #5
005fe2a0  00 20 a0 13                                      movne r2, #0
005fe2a4  02 00 13 e3                                      tst r3, #2
005fe2a8  30 10 94 15                                      ldrne r1, [r4, #0x30]
005fe2ac  30 30 94 05                                      ldreq r3, [r4, #0x30]
005fe2b0  3e 10 d4 05                                      ldrbeq r1, [r4, #0x3e]
005fe2b4  00 30 91 15                                      ldrne r3, [r1]
005fe2b8  04 10 91 15                                      ldrne r1, [r1, #4]
005fe2bc  01 31 93 07                                      ldreq r3, [r3, r1, lsl #2]
005fe2c0  01 30 63 10                                      rsbne r3, r3, r1
005fe2c4  7f 00 83 e2                                      add r0, r3, #0x7f
005fe2c8  7f 00 c0 e3                                      bic r0, r0, #0x7f
005fe2cc  90 32 20 e0                                      mla r0, r0, r2, r3
005fe2d0  00 10 a0 e3                                      mov r1, #0
005fe2d4  b3 d7 fc eb                                      bl #0x5341a8
005fe2d8  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005fe2dc  00 10 a0 e1                                      mov r1, r0
005fe2e0  01 20 a0 e3                                      mov r2, #1
005fe2e4  04 00 a0 e1                                      mov r0, r4
005fe2e8  d3 30 e0 e7                                      ubfx r3, r3, #1, #1
005fe2ec  20 ff ff eb                                      bl #0x5fdf74
005fe2f0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
005fe2f4  00 00 50 e3                                      cmp r0, #0
005fe2f8  ba ff ff 0a                                      beq #0x5fe1e8
005fe2fc  8d ff ff ea                                      b #0x5fe138

; FUNCTION 0x005fe300, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITexture4lockEb
; demangled: glitch::video::ITexture::lock(bool)
; decoder-mode: arm
005fe300  00 20 a0 e3                                      mov r2, #0
005fe304  05 10 a0 e3                                      mov r1, #5
005fe308  02 30 a0 e1                                      mov r3, r2
005fe30c  70 ff ff ea                                      b #0x5fe0d4

; FUNCTION 0x005fe310, declared_size=108, range_size=108, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITextureD1Ev
; demangled: glitch::video::ITexture::~ITexture()
; decoder-mode: arm
005fe310  5c c0 9f e5                                      ldr ip, [pc, #0x5c]
005fe314  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
005fe318  00 10 a0 e3                                      mov r1, #0
005fe31c  0c c0 8f e0                                      add ip, pc, ip
005fe320  03 30 9c e7                                      ldr r3, [ip, r3]
005fe324  10 40 2d e9                                      push {r4, lr}
005fe328  08 30 83 e2                                      add r3, r3, #8
005fe32c  00 30 80 e5                                      str r3, [r0]
005fe330  00 40 a0 e1                                      mov r4, r0
005fe334  01 20 a0 e3                                      mov r2, #1
005fe338  01 30 a0 e1                                      mov r3, r1
005fe33c  0c ff ff eb                                      bl #0x5fdf74
005fe340  30 00 94 e5                                      ldr r0, [r4, #0x30]
005fe344  00 00 50 e3                                      cmp r0, #0
005fe348  00 00 00 0a                                      beq #0x5fe350
005fe34c  59 3f f4 eb                                      bl #0x30e0b8
005fe350  08 30 84 e2                                      add r3, r4, #8
005fe354  14 00 93 e5                                      ldr r0, [r3, #0x14]
005fe358  03 00 50 e1                                      cmp r0, r3
005fe35c  02 00 00 0a                                      beq #0x5fe36c
005fe360  00 00 50 e3                                      cmp r0, #0
005fe364  00 00 00 0a                                      beq #0x5fe36c
005fe368  38 48 f4 eb                                      bl #0x310450
005fe36c  04 00 a0 e1                                      mov r0, r4
005fe370  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005fe374  74 67 39 00 04 35 00 00                          .byte 0x74, 0x67, 0x39, 0x00, 0x04, 0x35, 0x00, 0x00

; FUNCTION 0x005fe37c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITextureD0Ev
; demangled: glitch::video::ITexture::~ITexture()
; decoder-mode: arm
005fe37c  10 40 2d e9                                      push {r4, lr}
005fe380  00 40 a0 e1                                      mov r4, r0
005fe384  e1 ff ff eb                                      bl #0x5fe310
005fe388  04 00 a0 e1                                      mov r0, r4
005fe38c  c7 3f f4 eb                                      bl #0x30e2b0
005fe390  04 00 a0 e1                                      mov r0, r4
005fe394  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005fe398, declared_size=108, range_size=108, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITextureD2Ev
; demangled: glitch::video::ITexture::~ITexture()
; decoder-mode: arm
005fe398  5c c0 9f e5                                      ldr ip, [pc, #0x5c]
005fe39c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
005fe3a0  00 10 a0 e3                                      mov r1, #0
005fe3a4  0c c0 8f e0                                      add ip, pc, ip
005fe3a8  03 30 9c e7                                      ldr r3, [ip, r3]
005fe3ac  10 40 2d e9                                      push {r4, lr}
005fe3b0  08 30 83 e2                                      add r3, r3, #8
005fe3b4  00 30 80 e5                                      str r3, [r0]
005fe3b8  00 40 a0 e1                                      mov r4, r0
005fe3bc  01 20 a0 e3                                      mov r2, #1
005fe3c0  01 30 a0 e1                                      mov r3, r1
005fe3c4  ea fe ff eb                                      bl #0x5fdf74
005fe3c8  30 00 94 e5                                      ldr r0, [r4, #0x30]
005fe3cc  00 00 50 e3                                      cmp r0, #0
005fe3d0  00 00 00 0a                                      beq #0x5fe3d8
005fe3d4  37 3f f4 eb                                      bl #0x30e0b8
005fe3d8  08 30 84 e2                                      add r3, r4, #8
005fe3dc  14 00 93 e5                                      ldr r0, [r3, #0x14]
005fe3e0  03 00 50 e1                                      cmp r0, r3
005fe3e4  02 00 00 0a                                      beq #0x5fe3f4
005fe3e8  00 00 50 e3                                      cmp r0, #0
005fe3ec  00 00 00 0a                                      beq #0x5fe3f4
005fe3f0  16 48 f4 eb                                      bl #0x310450
005fe3f4  04 00 a0 e1                                      mov r0, r4
005fe3f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005fe3fc  ec 66 39 00 04 35 00 00                          .byte 0xec, 0x66, 0x39, 0x00, 0x04, 0x35, 0x00, 0x00

; FUNCTION 0x005fe404, declared_size=732, range_size=732, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITextureC1EPKcPNS0_12IVideoDriverERKNS0_12STextureDescE
; demangled: glitch::video::ITexture::ITexture(char const*, glitch::video::IVideoDriver*, glitch::video::STextureDesc const&)
; decoder-mode: arm
005fe404  cc c2 9f e5                                      ldr ip, [pc, #0x2cc]
005fe408  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005fe40c  c8 e2 9f e5                                      ldr lr, [pc, #0x2c8]
005fe410  0c c0 8f e0                                      add ip, pc, ip
005fe414  00 60 a0 e1                                      mov r6, r0
005fe418  0e e0 9c e7                                      ldr lr, [ip, lr]
005fe41c  24 d0 4d e2                                      sub sp, sp, #0x24
005fe420  00 40 a0 e3                                      mov r4, #0
005fe424  08 e0 8e e2                                      add lr, lr, #8
005fe428  04 40 86 e5                                      str r4, [r6, #4]
005fe42c  02 40 a0 e1                                      mov r4, r2
005fe430  08 e0 80 e4                                      str lr, [r0], #8
005fe434  1c 20 8d e2                                      add r2, sp, #0x1c
005fe438  03 50 a0 e1                                      mov r5, r3
005fe43c  fe 9e f4 eb                                      bl #0x32603c
005fe440  10 30 95 e5                                      ldr r3, [r5, #0x10]
005fe444  20 30 86 e5                                      str r3, [r6, #0x20]
005fe448  14 30 95 e5                                      ldr r3, [r5, #0x14]
005fe44c  24 30 86 e5                                      str r3, [r6, #0x24]
005fe450  00 30 95 e5                                      ldr r3, [r5]
005fe454  01 00 53 e3                                      cmp r3, #1
005fe458  18 20 95 05                                      ldreq r2, [r5, #0x18]
005fe45c  00 30 a0 e3                                      mov r3, #0
005fe460  01 20 a0 13                                      movne r2, #1
005fe464  38 30 86 e5                                      str r3, [r6, #0x38]
005fe468  2c 30 86 e5                                      str r3, [r6, #0x2c]
005fe46c  30 30 86 e5                                      str r3, [r6, #0x30]
005fe470  00 30 e0 e3                                      mvn r3, #0
005fe474  28 20 86 e5                                      str r2, [r6, #0x28]
005fe478  34 40 86 e5                                      str r4, [r6, #0x34]
005fe47c  bc 33 c6 e1                                      strh r3, [r6, #0x3c]
005fe480  1c 00 d5 e5                                      ldrb r0, [r5, #0x1c]
005fe484  00 00 50 e3                                      cmp r0, #0
005fe488  01 20 a0 03                                      moveq r2, #1
005fe48c  24 00 00 0a                                      beq #0x5fe524
005fe490  10 30 95 e5                                      ldr r3, [r5, #0x10]
005fe494  00 00 53 e3                                      cmp r3, #0
005fe498  00 20 e0 03                                      mvneq r2, #0
005fe49c  03 00 00 0a                                      beq #0x5fe4b0
005fe4a0  00 20 e0 e3                                      mvn r2, #0
005fe4a4  a3 30 b0 e1                                      lsrs r3, r3, #1
005fe4a8  01 20 82 e2                                      add r2, r2, #1
005fe4ac  fc ff ff 1a                                      bne #0x5fe4a4
005fe4b0  14 30 95 e5                                      ldr r3, [r5, #0x14]
005fe4b4  18 20 8d e5                                      str r2, [sp, #0x18]
005fe4b8  00 00 53 e3                                      cmp r3, #0
005fe4bc  00 10 e0 03                                      mvneq r1, #0
005fe4c0  03 00 00 0a                                      beq #0x5fe4d4
005fe4c4  00 10 e0 e3                                      mvn r1, #0
005fe4c8  a3 30 b0 e1                                      lsrs r3, r3, #1
005fe4cc  01 10 81 e2                                      add r1, r1, #1
005fe4d0  fc ff ff 1a                                      bne #0x5fe4c8
005fe4d4  18 30 95 e5                                      ldr r3, [r5, #0x18]
005fe4d8  14 10 8d e5                                      str r1, [sp, #0x14]
005fe4dc  00 00 53 e3                                      cmp r3, #0
005fe4e0  00 00 e0 03                                      mvneq r0, #0
005fe4e4  03 00 00 0a                                      beq #0x5fe4f8
005fe4e8  00 00 e0 e3                                      mvn r0, #0
005fe4ec  a3 30 b0 e1                                      lsrs r3, r3, #1
005fe4f0  01 00 80 e2                                      add r0, r0, #1
005fe4f4  fc ff ff 1a                                      bne #0x5fe4ec
005fe4f8  02 00 51 e1                                      cmp r1, r2
005fe4fc  01 20 a0 81                                      movhi r2, r1
005fe500  14 30 8d 82                                      addhi r3, sp, #0x14
005fe504  18 30 8d 92                                      addls r3, sp, #0x18
005fe508  00 00 52 e1                                      cmp r2, r0
005fe50c  10 00 8d e5                                      str r0, [sp, #0x10]
005fe510  10 30 8d 32                                      addlo r3, sp, #0x10
005fe514  00 20 93 e5                                      ldr r2, [r3]
005fe518  01 20 82 e2                                      add r2, r2, #1
005fe51c  72 20 ef e6                                      uxtb r2, r2
005fe520  01 00 42 e2                                      sub r0, r2, #1
005fe524  3e 20 c6 e5                                      strb r2, [r6, #0x3e]
005fe528  1d 10 d5 e5                                      ldrb r1, [r5, #0x1d]
005fe52c  00 30 a0 e3                                      mov r3, #0
005fe530  4c 30 86 e5                                      str r3, [r6, #0x4c]
005fe534  00 00 51 e3                                      cmp r1, #0
005fe538  01 c0 a0 01                                      moveq ip, r1
005fe53c  04 c0 a0 13                                      movne ip, #4
005fe540  3f c0 c6 e5                                      strb ip, [r6, #0x3f]
005fe544  fd cf 01 e3                                      movw ip, #0x1ffd
005fe548  b0 c4 c6 e1                                      strh ip, [r6, #0x40]
005fe54c  00 10 a0 e3                                      mov r1, #0
005fe550  fe c5 a0 e3                                      mov ip, #0x3f800000
005fe554  44 c0 86 e5                                      str ip, [r6, #0x44]
005fe558  48 30 86 e5                                      str r3, [r6, #0x48]
005fe55c  43 10 c6 e5                                      strb r1, [r6, #0x43]
005fe560  42 10 c6 e5                                      strb r1, [r6, #0x42]
005fe564  00 10 95 e5                                      ldr r1, [r5]
005fe568  38 30 96 e5                                      ldr r3, [r6, #0x38]
005fe56c  03 10 01 e2                                      and r1, r1, #3
005fe570  03 30 c3 e3                                      bic r3, r3, #3
005fe574  03 30 81 e1                                      orr r3, r1, r3
005fe578  38 30 86 e5                                      str r3, [r6, #0x38]
005fe57c  08 10 95 e5                                      ldr r1, [r5, #8]
005fe580  0c 30 c3 e3                                      bic r3, r3, #0xc
005fe584  03 10 01 e2                                      and r1, r1, #3
005fe588  01 31 83 e1                                      orr r3, r3, r1, lsl #2
005fe58c  38 30 86 e5                                      str r3, [r6, #0x38]
005fe590  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005fe594  03 3b c3 e3                                      bic r3, r3, #0xc00
005fe598  03 10 01 e2                                      and r1, r1, #3
005fe59c  01 35 83 e1                                      orr r3, r3, r1, lsl #10
005fe5a0  38 30 86 e5                                      str r3, [r6, #0x38]
005fe5a4  04 10 95 e5                                      ldr r1, [r5, #4]
005fe5a8  3f 3e c3 e3                                      bic r3, r3, #0x3f0
005fe5ac  3f 10 01 e2                                      and r1, r1, #0x3f
005fe5b0  01 32 83 e1                                      orr r3, r3, r1, lsl #4
005fe5b4  38 30 86 e5                                      str r3, [r6, #0x38]
005fe5b8  1c 10 d5 e5                                      ldrb r1, [r5, #0x1c]
005fe5bc  3f 3a c3 e3                                      bic r3, r3, #0x3f000
005fe5c0  00 00 51 e3                                      cmp r1, #0
005fe5c4  03 1a a0 13                                      movne r1, #0x3000
005fe5c8  01 1a a0 03                                      moveq r1, #0x1000
005fe5cc  01 30 83 e1                                      orr r3, r3, r1
005fe5d0  02 39 83 e3                                      orr r3, r3, #0x8000
005fe5d4  ff 36 c3 e3                                      bic r3, r3, #0xff00000
005fe5d8  03 37 c3 e3                                      bic r3, r3, #0xc0000
005fe5dc  07 02 13 e3                                      tst r3, #0x70000000
005fe5e0  38 30 86 e5                                      str r3, [r6, #0x38]
005fe5e4  07 32 c3 13                                      bicne r3, r3, #0x70000000
005fe5e8  38 30 86 15                                      strne r3, [r6, #0x38]
005fe5ec  01 00 42 12                                      subne r0, r2, #1
005fe5f0  db 40 f4 eb                                      bl #0x30e964
005fe5f4  38 30 96 e5                                      ldr r3, [r6, #0x38]
005fe5f8  3e a0 d6 e5                                      ldrb sl, [r6, #0x3e]
005fe5fc  50 00 86 e5                                      str r0, [r6, #0x50]
005fe600  03 00 03 e2                                      and r0, r3, #3
005fe604  02 00 50 e3                                      cmp r0, #2
005fe608  06 00 a0 03                                      moveq r0, #6
005fe60c  01 00 a0 13                                      movne r0, #1
005fe610  9a 00 00 e0                                      mul r0, sl, r0
005fe614  01 20 8a e2                                      add r2, sl, #1
005fe618  1f 00 80 e2                                      add r0, r0, #0x1f
005fe61c  a0 02 82 e0                                      add r0, r2, r0, lsr #5
005fe620  00 10 a0 e3                                      mov r1, #0
005fe624  00 01 a0 e1                                      lsl r0, r0, #2
005fe628  de d6 fc eb                                      bl #0x5341a8
005fe62c  00 80 a0 e1                                      mov r8, r0
005fe630  30 00 96 e5                                      ldr r0, [r6, #0x30]
005fe634  30 80 86 e5                                      str r8, [r6, #0x30]
005fe638  00 00 50 e3                                      cmp r0, #0
005fe63c  01 00 00 0a                                      beq #0x5fe648
005fe640  9c 3e f4 eb                                      bl #0x30e0b8
005fe644  30 80 96 e5                                      ldr r8, [r6, #0x30]
005fe648  08 08 95 e9                                      ldmib r5, {r3, fp}
005fe64c  01 00 5b e3                                      cmp fp, #1
005fe650  00 b0 a0 13                                      movne fp, #0
005fe654  01 b0 a0 03                                      moveq fp, #1
005fe658  0c 30 8d e5                                      str r3, [sp, #0xc]
005fe65c  00 00 5a e3                                      cmp sl, #0
005fe660  18 90 95 e5                                      ldr sb, [r5, #0x18]
005fe664  0a 70 a0 01                                      moveq r7, sl
005fe668  13 00 00 0a                                      beq #0x5fe6bc
005fe66c  00 40 a0 e3                                      mov r4, #0
005fe670  04 70 a0 e1                                      mov r7, r4
005fe674  04 c0 a0 e1                                      mov ip, r4
005fe678  04 71 88 e7                                      str r7, [r8, r4, lsl #2]
005fe67c  10 10 95 e5                                      ldr r1, [r5, #0x10]
005fe680  14 20 95 e5                                      ldr r2, [r5, #0x14]
005fe684  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005fe688  09 30 a0 e1                                      mov r3, sb
005fe68c  00 c0 8d e5                                      str ip, [sp]
005fe690  04 b0 8d e5                                      str fp, [sp, #4]
005fe694  54 bd ff eb                                      bl #0x5edbec
005fe698  01 40 84 e2                                      add r4, r4, #1
005fe69c  74 c0 ef e6                                      uxtb ip, r4
005fe6a0  0a 00 5c e1                                      cmp ip, sl
005fe6a4  00 70 87 e0                                      add r7, r7, r0
005fe6a8  f2 ff ff 3a                                      blo #0x5fe678
005fe6ac  01 a0 4a e2                                      sub sl, sl, #1
005fe6b0  7a a0 ef e6                                      uxtb sl, sl
005fe6b4  01 a0 8a e2                                      add sl, sl, #1
005fe6b8  0a 81 88 e0                                      add r8, r8, sl, lsl #2
005fe6bc  06 00 a0 e1                                      mov r0, r6
005fe6c0  00 70 88 e5                                      str r7, [r8]
005fe6c4  01 10 a0 e3                                      mov r1, #1
005fe6c8  06 fd ff eb                                      bl #0x5fdae8
005fe6cc  06 00 a0 e1                                      mov r0, r6
005fe6d0  24 d0 8d e2                                      add sp, sp, #0x24
005fe6d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005fe6d8  80 66 39 00 04 35 00 00                          .byte 0x80, 0x66, 0x39, 0x00, 0x04, 0x35, 0x00, 0x00

; FUNCTION 0x005fe6e0, declared_size=732, range_size=732, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITextureC2EPKcPNS0_12IVideoDriverERKNS0_12STextureDescE
; demangled: glitch::video::ITexture::ITexture(char const*, glitch::video::IVideoDriver*, glitch::video::STextureDesc const&)
; decoder-mode: arm
005fe6e0  cc c2 9f e5                                      ldr ip, [pc, #0x2cc]
005fe6e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005fe6e8  c8 e2 9f e5                                      ldr lr, [pc, #0x2c8]
005fe6ec  0c c0 8f e0                                      add ip, pc, ip
005fe6f0  00 60 a0 e1                                      mov r6, r0
005fe6f4  0e e0 9c e7                                      ldr lr, [ip, lr]
005fe6f8  24 d0 4d e2                                      sub sp, sp, #0x24
005fe6fc  00 40 a0 e3                                      mov r4, #0
005fe700  08 e0 8e e2                                      add lr, lr, #8
005fe704  04 40 86 e5                                      str r4, [r6, #4]
005fe708  02 40 a0 e1                                      mov r4, r2
005fe70c  08 e0 80 e4                                      str lr, [r0], #8
005fe710  1c 20 8d e2                                      add r2, sp, #0x1c
005fe714  03 50 a0 e1                                      mov r5, r3
005fe718  47 9e f4 eb                                      bl #0x32603c
005fe71c  10 30 95 e5                                      ldr r3, [r5, #0x10]
005fe720  20 30 86 e5                                      str r3, [r6, #0x20]
005fe724  14 30 95 e5                                      ldr r3, [r5, #0x14]
005fe728  24 30 86 e5                                      str r3, [r6, #0x24]
005fe72c  00 30 95 e5                                      ldr r3, [r5]
005fe730  01 00 53 e3                                      cmp r3, #1
005fe734  18 20 95 05                                      ldreq r2, [r5, #0x18]
005fe738  00 30 a0 e3                                      mov r3, #0
005fe73c  01 20 a0 13                                      movne r2, #1
005fe740  38 30 86 e5                                      str r3, [r6, #0x38]
005fe744  2c 30 86 e5                                      str r3, [r6, #0x2c]
005fe748  30 30 86 e5                                      str r3, [r6, #0x30]
005fe74c  00 30 e0 e3                                      mvn r3, #0
005fe750  28 20 86 e5                                      str r2, [r6, #0x28]
005fe754  34 40 86 e5                                      str r4, [r6, #0x34]
005fe758  bc 33 c6 e1                                      strh r3, [r6, #0x3c]
005fe75c  1c 00 d5 e5                                      ldrb r0, [r5, #0x1c]
005fe760  00 00 50 e3                                      cmp r0, #0
005fe764  01 20 a0 03                                      moveq r2, #1
005fe768  24 00 00 0a                                      beq #0x5fe800
005fe76c  10 30 95 e5                                      ldr r3, [r5, #0x10]
005fe770  00 00 53 e3                                      cmp r3, #0
005fe774  00 20 e0 03                                      mvneq r2, #0
005fe778  03 00 00 0a                                      beq #0x5fe78c
005fe77c  00 20 e0 e3                                      mvn r2, #0
005fe780  a3 30 b0 e1                                      lsrs r3, r3, #1
005fe784  01 20 82 e2                                      add r2, r2, #1
005fe788  fc ff ff 1a                                      bne #0x5fe780
005fe78c  14 30 95 e5                                      ldr r3, [r5, #0x14]
005fe790  18 20 8d e5                                      str r2, [sp, #0x18]
005fe794  00 00 53 e3                                      cmp r3, #0
005fe798  00 10 e0 03                                      mvneq r1, #0
005fe79c  03 00 00 0a                                      beq #0x5fe7b0
005fe7a0  00 10 e0 e3                                      mvn r1, #0
005fe7a4  a3 30 b0 e1                                      lsrs r3, r3, #1
005fe7a8  01 10 81 e2                                      add r1, r1, #1
005fe7ac  fc ff ff 1a                                      bne #0x5fe7a4
005fe7b0  18 30 95 e5                                      ldr r3, [r5, #0x18]
005fe7b4  14 10 8d e5                                      str r1, [sp, #0x14]
005fe7b8  00 00 53 e3                                      cmp r3, #0
005fe7bc  00 00 e0 03                                      mvneq r0, #0
005fe7c0  03 00 00 0a                                      beq #0x5fe7d4
005fe7c4  00 00 e0 e3                                      mvn r0, #0
005fe7c8  a3 30 b0 e1                                      lsrs r3, r3, #1
005fe7cc  01 00 80 e2                                      add r0, r0, #1
005fe7d0  fc ff ff 1a                                      bne #0x5fe7c8
005fe7d4  02 00 51 e1                                      cmp r1, r2
005fe7d8  01 20 a0 81                                      movhi r2, r1
005fe7dc  14 30 8d 82                                      addhi r3, sp, #0x14
005fe7e0  18 30 8d 92                                      addls r3, sp, #0x18
005fe7e4  00 00 52 e1                                      cmp r2, r0
005fe7e8  10 00 8d e5                                      str r0, [sp, #0x10]
005fe7ec  10 30 8d 32                                      addlo r3, sp, #0x10
005fe7f0  00 20 93 e5                                      ldr r2, [r3]
005fe7f4  01 20 82 e2                                      add r2, r2, #1
005fe7f8  72 20 ef e6                                      uxtb r2, r2
005fe7fc  01 00 42 e2                                      sub r0, r2, #1
005fe800  3e 20 c6 e5                                      strb r2, [r6, #0x3e]
005fe804  1d 10 d5 e5                                      ldrb r1, [r5, #0x1d]
005fe808  00 30 a0 e3                                      mov r3, #0
005fe80c  4c 30 86 e5                                      str r3, [r6, #0x4c]
005fe810  00 00 51 e3                                      cmp r1, #0
005fe814  01 c0 a0 01                                      moveq ip, r1
005fe818  04 c0 a0 13                                      movne ip, #4
005fe81c  3f c0 c6 e5                                      strb ip, [r6, #0x3f]
005fe820  fd cf 01 e3                                      movw ip, #0x1ffd
005fe824  b0 c4 c6 e1                                      strh ip, [r6, #0x40]
005fe828  00 10 a0 e3                                      mov r1, #0
005fe82c  fe c5 a0 e3                                      mov ip, #0x3f800000
005fe830  44 c0 86 e5                                      str ip, [r6, #0x44]
005fe834  48 30 86 e5                                      str r3, [r6, #0x48]
005fe838  43 10 c6 e5                                      strb r1, [r6, #0x43]
005fe83c  42 10 c6 e5                                      strb r1, [r6, #0x42]
005fe840  00 10 95 e5                                      ldr r1, [r5]
005fe844  38 30 96 e5                                      ldr r3, [r6, #0x38]
005fe848  03 10 01 e2                                      and r1, r1, #3
005fe84c  03 30 c3 e3                                      bic r3, r3, #3
005fe850  03 30 81 e1                                      orr r3, r1, r3
005fe854  38 30 86 e5                                      str r3, [r6, #0x38]
005fe858  08 10 95 e5                                      ldr r1, [r5, #8]
005fe85c  0c 30 c3 e3                                      bic r3, r3, #0xc
005fe860  03 10 01 e2                                      and r1, r1, #3
005fe864  01 31 83 e1                                      orr r3, r3, r1, lsl #2
005fe868  38 30 86 e5                                      str r3, [r6, #0x38]
005fe86c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005fe870  03 3b c3 e3                                      bic r3, r3, #0xc00
005fe874  03 10 01 e2                                      and r1, r1, #3
005fe878  01 35 83 e1                                      orr r3, r3, r1, lsl #10
005fe87c  38 30 86 e5                                      str r3, [r6, #0x38]
005fe880  04 10 95 e5                                      ldr r1, [r5, #4]
005fe884  3f 3e c3 e3                                      bic r3, r3, #0x3f0
005fe888  3f 10 01 e2                                      and r1, r1, #0x3f
005fe88c  01 32 83 e1                                      orr r3, r3, r1, lsl #4
005fe890  38 30 86 e5                                      str r3, [r6, #0x38]
005fe894  1c 10 d5 e5                                      ldrb r1, [r5, #0x1c]
005fe898  3f 3a c3 e3                                      bic r3, r3, #0x3f000
005fe89c  00 00 51 e3                                      cmp r1, #0
005fe8a0  03 1a a0 13                                      movne r1, #0x3000
005fe8a4  01 1a a0 03                                      moveq r1, #0x1000
005fe8a8  01 30 83 e1                                      orr r3, r3, r1
005fe8ac  02 39 83 e3                                      orr r3, r3, #0x8000
005fe8b0  ff 36 c3 e3                                      bic r3, r3, #0xff00000
005fe8b4  03 37 c3 e3                                      bic r3, r3, #0xc0000
005fe8b8  07 02 13 e3                                      tst r3, #0x70000000
005fe8bc  38 30 86 e5                                      str r3, [r6, #0x38]
005fe8c0  07 32 c3 13                                      bicne r3, r3, #0x70000000
005fe8c4  38 30 86 15                                      strne r3, [r6, #0x38]
005fe8c8  01 00 42 12                                      subne r0, r2, #1
005fe8cc  24 40 f4 eb                                      bl #0x30e964
005fe8d0  38 30 96 e5                                      ldr r3, [r6, #0x38]
005fe8d4  3e a0 d6 e5                                      ldrb sl, [r6, #0x3e]
005fe8d8  50 00 86 e5                                      str r0, [r6, #0x50]
005fe8dc  03 00 03 e2                                      and r0, r3, #3
005fe8e0  02 00 50 e3                                      cmp r0, #2
005fe8e4  06 00 a0 03                                      moveq r0, #6
005fe8e8  01 00 a0 13                                      movne r0, #1
005fe8ec  9a 00 00 e0                                      mul r0, sl, r0
005fe8f0  01 20 8a e2                                      add r2, sl, #1
005fe8f4  1f 00 80 e2                                      add r0, r0, #0x1f
005fe8f8  a0 02 82 e0                                      add r0, r2, r0, lsr #5
005fe8fc  00 10 a0 e3                                      mov r1, #0
005fe900  00 01 a0 e1                                      lsl r0, r0, #2
005fe904  27 d6 fc eb                                      bl #0x5341a8
005fe908  00 80 a0 e1                                      mov r8, r0
005fe90c  30 00 96 e5                                      ldr r0, [r6, #0x30]
005fe910  30 80 86 e5                                      str r8, [r6, #0x30]
005fe914  00 00 50 e3                                      cmp r0, #0
005fe918  01 00 00 0a                                      beq #0x5fe924
005fe91c  e5 3d f4 eb                                      bl #0x30e0b8
005fe920  30 80 96 e5                                      ldr r8, [r6, #0x30]
005fe924  08 08 95 e9                                      ldmib r5, {r3, fp}
005fe928  01 00 5b e3                                      cmp fp, #1
005fe92c  00 b0 a0 13                                      movne fp, #0
005fe930  01 b0 a0 03                                      moveq fp, #1
005fe934  0c 30 8d e5                                      str r3, [sp, #0xc]
005fe938  00 00 5a e3                                      cmp sl, #0
005fe93c  18 90 95 e5                                      ldr sb, [r5, #0x18]
005fe940  0a 70 a0 01                                      moveq r7, sl
005fe944  13 00 00 0a                                      beq #0x5fe998
005fe948  00 40 a0 e3                                      mov r4, #0
005fe94c  04 70 a0 e1                                      mov r7, r4
005fe950  04 c0 a0 e1                                      mov ip, r4
005fe954  04 71 88 e7                                      str r7, [r8, r4, lsl #2]
005fe958  10 10 95 e5                                      ldr r1, [r5, #0x10]
005fe95c  14 20 95 e5                                      ldr r2, [r5, #0x14]
005fe960  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005fe964  09 30 a0 e1                                      mov r3, sb
005fe968  00 c0 8d e5                                      str ip, [sp]
005fe96c  04 b0 8d e5                                      str fp, [sp, #4]
005fe970  9d bc ff eb                                      bl #0x5edbec
005fe974  01 40 84 e2                                      add r4, r4, #1
005fe978  74 c0 ef e6                                      uxtb ip, r4
005fe97c  0a 00 5c e1                                      cmp ip, sl
005fe980  00 70 87 e0                                      add r7, r7, r0
005fe984  f2 ff ff 3a                                      blo #0x5fe954
005fe988  01 a0 4a e2                                      sub sl, sl, #1
005fe98c  7a a0 ef e6                                      uxtb sl, sl
005fe990  01 a0 8a e2                                      add sl, sl, #1
005fe994  0a 81 88 e0                                      add r8, r8, sl, lsl #2
005fe998  06 00 a0 e1                                      mov r0, r6
005fe99c  00 70 88 e5                                      str r7, [r8]
005fe9a0  01 10 a0 e3                                      mov r1, #1
005fe9a4  4f fc ff eb                                      bl #0x5fdae8
005fe9a8  06 00 a0 e1                                      mov r0, r6
005fe9ac  24 d0 8d e2                                      add sp, sp, #0x24
005fe9b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005fe9b4  a4 63 39 00 04 35 00 00                          .byte 0xa4, 0x63, 0x39, 0x00, 0x04, 0x35, 0x00, 0x00

; FUNCTION 0x005fea04, declared_size=800, range_size=800, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITexture21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::ITexture::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
005fea04  70 40 2d e9                                      push {r4, r5, r6, lr}
005fea08  01 50 a0 e1                                      mov r5, r1
005fea0c  e0 12 9f e5                                      ldr r1, [pc, #0x2e0]
005fea10  00 30 95 e5                                      ldr r3, [r5]
005fea14  00 40 a0 e1                                      mov r4, r0
005fea18  01 10 8f e0                                      add r1, pc, r1
005fea1c  05 00 a0 e1                                      mov r0, r5
005fea20  0f e0 a0 e1                                      mov lr, pc
005fea24  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005fea28  c8 12 9f e5                                      ldr r1, [pc, #0x2c8]
005fea2c  05 00 a0 e1                                      mov r0, r5
005fea30  01 10 8f e0                                      add r1, pc, r1
005fea34  00 fd ff eb                                      bl #0x5fde3c
005fea38  38 30 94 e5                                      ldr r3, [r4, #0x38]
005fea3c  53 26 e2 e7                                      ubfx r2, r3, #0xc, #3
005fea40  02 00 50 e1                                      cmp r0, r2
005fea44  09 00 00 0a                                      beq #0x5fea70
005fea48  3e 20 d4 e5                                      ldrb r2, [r4, #0x3e]
005fea4c  01 00 52 e3                                      cmp r2, #1
005fea50  a4 00 00 9a                                      bls #0x5fece8
005fea54  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
005fea58  07 00 00 e2                                      and r0, r0, #7
005fea5c  07 3a c3 e3                                      bic r3, r3, #0x7000
005fea60  00 36 83 e1                                      orr r3, r3, r0, lsl #12
005fea64  04 20 82 e3                                      orr r2, r2, #4
005fea68  38 30 84 e5                                      str r3, [r4, #0x38]
005fea6c  b0 24 c4 e1                                      strh r2, [r4, #0x40]
005fea70  84 12 9f e5                                      ldr r1, [pc, #0x284]
005fea74  05 00 a0 e1                                      mov r0, r5
005fea78  01 10 8f e0                                      add r1, pc, r1
005fea7c  ee fc ff eb                                      bl #0x5fde3c
005fea80  38 30 94 e5                                      ldr r3, [r4, #0x38]
005fea84  d3 27 e2 e7                                      ubfx r2, r3, #0xf, #3
005fea88  02 00 50 e1                                      cmp r0, r2
005fea8c  06 00 00 0a                                      beq #0x5feaac
005fea90  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
005fea94  07 00 00 e2                                      and r0, r0, #7
005fea98  0e 39 c3 e3                                      bic r3, r3, #0x38000
005fea9c  80 37 83 e1                                      orr r3, r3, r0, lsl #15
005feaa0  08 20 82 e3                                      orr r2, r2, #8
005feaa4  38 30 84 e5                                      str r3, [r4, #0x38]
005feaa8  b0 24 c4 e1                                      strh r2, [r4, #0x40]
005feaac  4c 12 9f e5                                      ldr r1, [pc, #0x24c]
005feab0  05 00 a0 e1                                      mov r0, r5
005feab4  01 10 8f e0                                      add r1, pc, r1
005feab8  eb fc ff eb                                      bl #0x5fde6c
005feabc  38 30 94 e5                                      ldr r3, [r4, #0x38]
005feac0  53 29 e2 e7                                      ubfx r2, r3, #0x12, #3
005feac4  02 00 50 e1                                      cmp r0, r2
005feac8  06 00 00 0a                                      beq #0x5feae8
005feacc  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
005fead0  07 00 00 e2                                      and r0, r0, #7
005fead4  07 37 c3 e3                                      bic r3, r3, #0x1c0000
005fead8  00 39 83 e1                                      orr r3, r3, r0, lsl #18
005feadc  10 20 82 e3                                      orr r2, r2, #0x10
005feae0  38 30 84 e5                                      str r3, [r4, #0x38]
005feae4  b0 24 c4 e1                                      strh r2, [r4, #0x40]
005feae8  14 12 9f e5                                      ldr r1, [pc, #0x214]
005feaec  05 00 a0 e1                                      mov r0, r5
005feaf0  01 10 8f e0                                      add r1, pc, r1
005feaf4  dc fc ff eb                                      bl #0x5fde6c
005feaf8  38 30 94 e5                                      ldr r3, [r4, #0x38]
005feafc  d3 2a e2 e7                                      ubfx r2, r3, #0x15, #3
005feb00  02 00 50 e1                                      cmp r0, r2
005feb04  06 00 00 0a                                      beq #0x5feb24
005feb08  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
005feb0c  07 00 00 e2                                      and r0, r0, #7
005feb10  0e 36 c3 e3                                      bic r3, r3, #0xe00000
005feb14  80 3a 83 e1                                      orr r3, r3, r0, lsl #21
005feb18  20 20 82 e3                                      orr r2, r2, #0x20
005feb1c  38 30 84 e5                                      str r3, [r4, #0x38]
005feb20  b0 24 c4 e1                                      strh r2, [r4, #0x40]
005feb24  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
005feb28  05 00 a0 e1                                      mov r0, r5
005feb2c  01 10 8f e0                                      add r1, pc, r1
005feb30  cd fc ff eb                                      bl #0x5fde6c
005feb34  38 30 94 e5                                      ldr r3, [r4, #0x38]
005feb38  d3 2a e2 e7                                      ubfx r2, r3, #0x15, #3
005feb3c  02 00 50 e1                                      cmp r0, r2
005feb40  06 00 00 0a                                      beq #0x5feb60
005feb44  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
005feb48  07 00 00 e2                                      and r0, r0, #7
005feb4c  07 34 c3 e3                                      bic r3, r3, #0x7000000
005feb50  00 3c 83 e1                                      orr r3, r3, r0, lsl #24
005feb54  40 20 82 e3                                      orr r2, r2, #0x40
005feb58  38 30 84 e5                                      str r3, [r4, #0x38]
005feb5c  b0 24 c4 e1                                      strh r2, [r4, #0x40]
005feb60  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
005feb64  00 30 95 e5                                      ldr r3, [r5]
005feb68  05 00 a0 e1                                      mov r0, r5
005feb6c  01 10 8f e0                                      add r1, pc, r1
005feb70  0f e0 a0 e1                                      mov lr, pc
005feb74  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005feb78  38 30 94 e5                                      ldr r3, [r4, #0x38]
005feb7c  d3 2d e0 e7                                      ubfx r2, r3, #0x1b, #1
005feb80  02 00 50 e1                                      cmp r0, r2
005feb84  05 00 00 0a                                      beq #0x5feba0
005feb88  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
005feb8c  02 33 c3 e3                                      bic r3, r3, #0x8000000
005feb90  80 0d 83 e1                                      orr r0, r3, r0, lsl #27
005feb94  02 2b 82 e3                                      orr r2, r2, #0x800
005feb98  38 00 84 e5                                      str r0, [r4, #0x38]
005feb9c  b0 24 c4 e1                                      strh r2, [r4, #0x40]
005feba0  00 30 95 e5                                      ldr r3, [r5]
005feba4  00 00 a0 e3                                      mov r0, #0
005feba8  00 61 93 e5                                      ldr r6, [r3, #0x100]
005febac  72 71 03 eb                                      bl #0x6db17c
005febb0  58 11 9f e5                                      ldr r1, [pc, #0x158]
005febb4  00 20 a0 e1                                      mov r2, r0
005febb8  05 00 a0 e1                                      mov r0, r5
005febbc  01 10 8f e0                                      add r1, pc, r1
005febc0  36 ff 2f e1                                      blx r6
005febc4  38 30 94 e5                                      ldr r3, [r4, #0x38]
005febc8  44 11 9f e5                                      ldr r1, [pc, #0x144]
005febcc  53 2e e2 e7                                      ubfx r2, r3, #0x1c, #3
005febd0  00 00 52 e1                                      cmp r2, r0
005febd4  07 32 c3 13                                      bicne r3, r3, #0x70000000
005febd8  07 00 00 12                                      andne r0, r0, #7
005febdc  00 3e 83 11                                      orrne r3, r3, r0, lsl #28
005febe0  38 30 84 15                                      strne r3, [r4, #0x38]
005febe4  00 30 95 e5                                      ldr r3, [r5]
005febe8  05 00 a0 e1                                      mov r0, r5
005febec  01 10 8f e0                                      add r1, pc, r1
005febf0  0f e0 a0 e1                                      mov lr, pc
005febf4  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005febf8  fe 15 a0 e3                                      mov r1, #0x3f800000
005febfc  00 60 a0 e1                                      mov r6, r0
005fec00  c1 3e f4 eb                                      bl #0x30e70c
005fec04  00 00 50 e3                                      cmp r0, #0
005fec08  fe 65 a0 13                                      movne r6, #0x3f800000
005fec0c  44 00 94 e5                                      ldr r0, [r4, #0x44]
005fec10  06 10 a0 e1                                      mov r1, r6
005fec14  dc 3c f4 eb                                      bl #0x30df8c
005fec18  00 00 50 e3                                      cmp r0, #0
005fec1c  b0 34 d4 01                                      ldrheq r3, [r4, #0x40]
005fec20  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
005fec24  44 60 84 05                                      streq r6, [r4, #0x44]
005fec28  80 30 83 03                                      orreq r3, r3, #0x80
005fec2c  b0 34 c4 01                                      strheq r3, [r4, #0x40]
005fec30  00 30 95 e5                                      ldr r3, [r5]
005fec34  05 00 a0 e1                                      mov r0, r5
005fec38  01 10 8f e0                                      add r1, pc, r1
005fec3c  0f e0 a0 e1                                      mov lr, pc
005fec40  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005fec44  48 10 94 e5                                      ldr r1, [r4, #0x48]
005fec48  00 60 a0 e1                                      mov r6, r0
005fec4c  ce 3c f4 eb                                      bl #0x30df8c
005fec50  00 00 50 e3                                      cmp r0, #0
005fec54  b0 34 d4 01                                      ldrheq r3, [r4, #0x40]
005fec58  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
005fec5c  48 60 84 05                                      streq r6, [r4, #0x48]
005fec60  01 3c 83 03                                      orreq r3, r3, #0x100
005fec64  b0 34 c4 01                                      strheq r3, [r4, #0x40]
005fec68  00 30 95 e5                                      ldr r3, [r5]
005fec6c  05 00 a0 e1                                      mov r0, r5
005fec70  01 10 8f e0                                      add r1, pc, r1
005fec74  0f e0 a0 e1                                      mov lr, pc
005fec78  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005fec7c  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
005fec80  00 60 a0 e1                                      mov r6, r0
005fec84  c0 3c f4 eb                                      bl #0x30df8c
005fec88  00 00 50 e3                                      cmp r0, #0
005fec8c  b0 34 d4 01                                      ldrheq r3, [r4, #0x40]
005fec90  88 10 9f e5                                      ldr r1, [pc, #0x88]
005fec94  4c 60 84 05                                      streq r6, [r4, #0x4c]
005fec98  02 3c 83 03                                      orreq r3, r3, #0x200
005fec9c  b0 34 c4 01                                      strheq r3, [r4, #0x40]
005feca0  00 30 95 e5                                      ldr r3, [r5]
005feca4  05 00 a0 e1                                      mov r0, r5
005feca8  01 10 8f e0                                      add r1, pc, r1
005fecac  0f e0 a0 e1                                      mov lr, pc
005fecb0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005fecb4  50 10 94 e5                                      ldr r1, [r4, #0x50]
005fecb8  00 60 a0 e1                                      mov r6, r0
005fecbc  b2 3c f4 eb                                      bl #0x30df8c
005fecc0  00 00 50 e3                                      cmp r0, #0
005fecc4  b0 34 d4 01                                      ldrheq r3, [r4, #0x40]
005fecc8  50 60 84 05                                      streq r6, [r4, #0x50]
005feccc  05 00 a0 e1                                      mov r0, r5
005fecd0  01 3b 83 03                                      orreq r3, r3, #0x400
005fecd4  b0 34 c4 01                                      strheq r3, [r4, #0x40]
005fecd8  00 30 95 e5                                      ldr r3, [r5]
005fecdc  0f e0 a0 e1                                      mov lr, pc
005fece0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005fece4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005fece8  01 00 50 e3                                      cmp r0, #1
005fecec  5f ff ff ca                                      bgt #0x5fea70
005fecf0  57 ff ff ea                                      b #0x5fea54
; mapping-symbol data/literal pool
005fecf4  10 5a 2e 00 08 5a 2e 00 d0 59 2e 00 a4 59 2e 00  .byte 0x10, 0x5a, 0x2e, 0x00, 0x08, 0x5a, 0x2e, 0x00, 0xd0, 0x59, 0x2e, 0x00, 0xa4, 0x59, 0x2e, 0x00
005fed04  70 59 2e 00 3c 59 2e 00 04 59 2e 00 cc 58 2e 00  .byte 0x70, 0x59, 0x2e, 0x00, 0x3c, 0x59, 0x2e, 0x00, 0x04, 0x59, 0x2e, 0x00, 0xcc, 0x58, 0x2e, 0x00
005fed14  ac 58 2e 00 70 58 2e 00 48 58 2e 00 18 58 2e 00  .byte 0xac, 0x58, 0x2e, 0x00, 0x70, 0x58, 0x2e, 0x00, 0x48, 0x58, 0x2e, 0x00, 0x18, 0x58, 0x2e, 0x00

; FUNCTION 0x005fed6c, declared_size=1280, range_size=1280, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZNK6glitch5video8ITexture19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::ITexture::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005fed6c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005fed70  01 40 a0 e1                                      mov r4, r1
005fed74  74 14 9f e5                                      ldr r1, [pc, #0x474]
005fed78  00 50 a0 e1                                      mov r5, r0
005fed7c  0c d0 4d e2                                      sub sp, sp, #0xc
005fed80  01 10 8f e0                                      add r1, pc, r1
005fed84  04 00 a0 e1                                      mov r0, r4
005fed88  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
005fed8c  01 30 a0 e3                                      mov r3, #1
005fed90  00 c0 94 e5                                      ldr ip, [r4]
005fed94  0f e0 a0 e1                                      mov lr, pc
005fed98  7c f0 9c e5                                      ldr pc, [ip, #0x7c]
005fed9c  50 14 9f e5                                      ldr r1, [pc, #0x450]
005feda0  bc 23 d5 e1                                      ldrh r2, [r5, #0x3c]
005feda4  01 30 a0 e3                                      mov r3, #1
005feda8  01 10 8f e0                                      add r1, pc, r1
005fedac  00 c0 94 e5                                      ldr ip, [r4]
005fedb0  04 00 a0 e1                                      mov r0, r4
005fedb4  0f e0 a0 e1                                      mov lr, pc
005fedb8  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005fedbc  00 00 a0 e3                                      mov r0, #0
005fedc0  38 70 95 e5                                      ldr r7, [r5, #0x38]
005fedc4  27 fb ff eb                                      bl #0x5fda68
005fedc8  28 14 9f e5                                      ldr r1, [pc, #0x428]
005fedcc  01 60 a0 e3                                      mov r6, #1
005fedd0  00 60 8d e5                                      str r6, [sp]
005fedd4  03 70 07 e2                                      and r7, r7, #3
005fedd8  00 30 a0 e1                                      mov r3, r0
005feddc  07 20 a0 e1                                      mov r2, r7
005fede0  01 10 8f e0                                      add r1, pc, r1
005fede4  00 c0 94 e5                                      ldr ip, [r4]
005fede8  04 00 a0 e1                                      mov r0, r4
005fedec  0f e0 a0 e1                                      mov lr, pc
005fedf0  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005fedf4  00 00 a0 e3                                      mov r0, #0
005fedf8  38 70 95 e5                                      ldr r7, [r5, #0x38]
005fedfc  1d fb ff eb                                      bl #0x5fda78
005fee00  f4 13 9f e5                                      ldr r1, [pc, #0x3f4]
005fee04  00 60 8d e5                                      str r6, [sp]
005fee08  57 71 e1 e7                                      ubfx r7, r7, #2, #2
005fee0c  00 30 a0 e1                                      mov r3, r0
005fee10  07 20 a0 e1                                      mov r2, r7
005fee14  01 10 8f e0                                      add r1, pc, r1
005fee18  00 c0 94 e5                                      ldr ip, [r4]
005fee1c  04 00 a0 e1                                      mov r0, r4
005fee20  0f e0 a0 e1                                      mov lr, pc
005fee24  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005fee28  00 00 a0 e3                                      mov r0, #0
005fee2c  38 70 95 e5                                      ldr r7, [r5, #0x38]
005fee30  b1 70 03 eb                                      bl #0x6db0fc
005fee34  c4 13 9f e5                                      ldr r1, [pc, #0x3c4]
005fee38  00 60 8d e5                                      str r6, [sp]
005fee3c  57 75 e1 e7                                      ubfx r7, r7, #0xa, #2
005fee40  00 30 a0 e1                                      mov r3, r0
005fee44  07 20 a0 e1                                      mov r2, r7
005fee48  01 10 8f e0                                      add r1, pc, r1
005fee4c  00 c0 94 e5                                      ldr ip, [r4]
005fee50  04 00 a0 e1                                      mov r0, r4
005fee54  0f e0 a0 e1                                      mov lr, pc
005fee58  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005fee5c  00 00 a0 e3                                      mov r0, #0
005fee60  38 70 95 e5                                      ldr r7, [r5, #0x38]
005fee64  b6 ba ff eb                                      bl #0x5ed944
005fee68  94 13 9f e5                                      ldr r1, [pc, #0x394]
005fee6c  00 60 8d e5                                      str r6, [sp]
005fee70  57 72 e5 e7                                      ubfx r7, r7, #4, #6
005fee74  00 30 a0 e1                                      mov r3, r0
005fee78  07 20 a0 e1                                      mov r2, r7
005fee7c  01 10 8f e0                                      add r1, pc, r1
005fee80  04 00 a0 e1                                      mov r0, r4
005fee84  00 c0 94 e5                                      ldr ip, [r4]
005fee88  0f e0 a0 e1                                      mov lr, pc
005fee8c  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005fee90  70 13 9f e5                                      ldr r1, [pc, #0x370]
005fee94  06 30 a0 e1                                      mov r3, r6
005fee98  04 00 a0 e1                                      mov r0, r4
005fee9c  20 20 95 e5                                      ldr r2, [r5, #0x20]
005feea0  01 10 8f e0                                      add r1, pc, r1
005feea4  00 c0 94 e5                                      ldr ip, [r4]
005feea8  0f e0 a0 e1                                      mov lr, pc
005feeac  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005feeb0  54 13 9f e5                                      ldr r1, [pc, #0x354]
005feeb4  06 30 a0 e1                                      mov r3, r6
005feeb8  04 00 a0 e1                                      mov r0, r4
005feebc  24 20 95 e5                                      ldr r2, [r5, #0x24]
005feec0  01 10 8f e0                                      add r1, pc, r1
005feec4  00 c0 94 e5                                      ldr ip, [r4]
005feec8  0f e0 a0 e1                                      mov lr, pc
005feecc  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005feed0  38 13 9f e5                                      ldr r1, [pc, #0x338]
005feed4  28 20 95 e5                                      ldr r2, [r5, #0x28]
005feed8  06 30 a0 e1                                      mov r3, r6
005feedc  00 c0 94 e5                                      ldr ip, [r4]
005feee0  01 10 8f e0                                      add r1, pc, r1
005feee4  04 00 a0 e1                                      mov r0, r4
005feee8  0f e0 a0 e1                                      mov lr, pc
005feeec  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005feef0  38 30 95 e5                                      ldr r3, [r5, #0x38]
005feef4  3f 00 d5 e5                                      ldrb r0, [r5, #0x3f]
005feef8  00 10 94 e5                                      ldr r1, [r4]
005feefc  03 30 03 e2                                      and r3, r3, #3
005fef00  02 00 53 e3                                      cmp r3, #2
005fef04  05 30 a0 03                                      moveq r3, #5
005fef08  00 30 a0 13                                      movne r3, #0
005fef0c  02 00 10 e3                                      tst r0, #2
005fef10  30 00 95 15                                      ldrne r0, [r5, #0x30]
005fef14  4c c0 91 e5                                      ldr ip, [r1, #0x4c]
005fef18  30 20 95 05                                      ldreq r2, [r5, #0x30]
005fef1c  3e 10 d5 05                                      ldrbeq r1, [r5, #0x3e]
005fef20  04 10 90 15                                      ldrne r1, [r0, #4]
005fef24  00 20 90 15                                      ldrne r2, [r0]
005fef28  01 11 92 07                                      ldreq r1, [r2, r1, lsl #2]
005fef2c  04 00 a0 e1                                      mov r0, r4
005fef30  01 10 62 10                                      rsbne r1, r2, r1
005fef34  7f 20 81 e2                                      add r2, r1, #0x7f
005fef38  7f 20 c2 e3                                      bic r2, r2, #0x7f
005fef3c  92 13 22 e0                                      mla r2, r2, r3, r1
005fef40  cc 12 9f e5                                      ldr r1, [pc, #0x2cc]
005fef44  01 30 a0 e3                                      mov r3, #1
005fef48  01 10 8f e0                                      add r1, pc, r1
005fef4c  3c ff 2f e1                                      blx ip
005fef50  38 00 95 e5                                      ldr r0, [r5, #0x38]
005fef54  00 30 94 e5                                      ldr r3, [r4]
005fef58  20 10 95 e5                                      ldr r1, [r5, #0x20]
005fef5c  50 02 e5 e7                                      ubfx r0, r0, #4, #6
005fef60  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
005fef64  e0 ba ff eb                                      bl #0x5edaec
005fef68  a8 12 9f e5                                      ldr r1, [pc, #0x2a8]
005fef6c  00 20 a0 e1                                      mov r2, r0
005fef70  01 30 a0 e3                                      mov r3, #1
005fef74  01 10 8f e0                                      add r1, pc, r1
005fef78  04 00 a0 e1                                      mov r0, r4
005fef7c  36 ff 2f e1                                      blx r6
005fef80  38 00 95 e5                                      ldr r0, [r5, #0x38]
005fef84  00 30 94 e5                                      ldr r3, [r4]
005fef88  20 10 95 e5                                      ldr r1, [r5, #0x20]
005fef8c  50 02 e5 e7                                      ubfx r0, r0, #4, #6
005fef90  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
005fef94  d4 ba ff eb                                      bl #0x5edaec
005fef98  24 20 95 e5                                      ldr r2, [r5, #0x24]
005fef9c  78 12 9f e5                                      ldr r1, [pc, #0x278]
005fefa0  01 30 a0 e3                                      mov r3, #1
005fefa4  92 00 02 e0                                      mul r2, r2, r0
005fefa8  01 10 8f e0                                      add r1, pc, r1
005fefac  04 00 a0 e1                                      mov r0, r4
005fefb0  36 ff 2f e1                                      blx r6
005fefb4  64 12 9f e5                                      ldr r1, [pc, #0x264]
005fefb8  04 00 a0 e1                                      mov r0, r4
005fefbc  3e 20 d5 e5                                      ldrb r2, [r5, #0x3e]
005fefc0  01 10 8f e0                                      add r1, pc, r1
005fefc4  01 30 a0 e3                                      mov r3, #1
005fefc8  00 c0 94 e5                                      ldr ip, [r4]
005fefcc  0f e0 a0 e1                                      mov lr, pc
005fefd0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005fefd4  3f 20 d5 e5                                      ldrb r2, [r5, #0x3f]
005fefd8  44 12 9f e5                                      ldr r1, [pc, #0x244]
005fefdc  04 00 a0 e1                                      mov r0, r4
005fefe0  d2 20 e0 e7                                      ubfx r2, r2, #1, #1
005fefe4  01 10 8f e0                                      add r1, pc, r1
005fefe8  01 30 a0 e3                                      mov r3, #1
005fefec  00 c0 94 e5                                      ldr ip, [r4]
005feff0  0f e0 a0 e1                                      mov lr, pc
005feff4  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005feff8  3f 20 d5 e5                                      ldrb r2, [r5, #0x3f]
005feffc  24 12 9f e5                                      ldr r1, [pc, #0x224]
005ff000  00 c0 94 e5                                      ldr ip, [r4]
005ff004  52 21 e0 e7                                      ubfx r2, r2, #2, #1
005ff008  01 30 a0 e3                                      mov r3, #1
005ff00c  01 10 8f e0                                      add r1, pc, r1
005ff010  04 00 a0 e1                                      mov r0, r4
005ff014  0f e0 a0 e1                                      mov lr, pc
005ff018  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005ff01c  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005ff020  00 20 94 e5                                      ldr r2, [r4]
005ff024  08 00 13 e3                                      tst r3, #8
005ff028  7c c0 92 e5                                      ldr ip, [r2, #0x7c]
005ff02c  6c 00 00 1a                                      bne #0x5ff1e4
005ff030  10 00 13 e3                                      tst r3, #0x10
005ff034  67 00 00 1a                                      bne #0x5ff1d8
005ff038  ec 21 9f e5                                      ldr r2, [pc, #0x1ec]
005ff03c  02 20 8f e0                                      add r2, pc, r2
005ff040  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
005ff044  04 00 a0 e1                                      mov r0, r4
005ff048  01 30 a0 e3                                      mov r3, #1
005ff04c  01 10 8f e0                                      add r1, pc, r1
005ff050  3c ff 2f e1                                      blx ip
005ff054  d8 11 9f e5                                      ldr r1, [pc, #0x1d8]
005ff058  00 30 94 e5                                      ldr r3, [r4]
005ff05c  04 00 a0 e1                                      mov r0, r4
005ff060  01 10 8f e0                                      add r1, pc, r1
005ff064  0f e0 a0 e1                                      mov lr, pc
005ff068  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005ff06c  38 20 95 e5                                      ldr r2, [r5, #0x38]
005ff070  c0 11 9f e5                                      ldr r1, [pc, #0x1c0]
005ff074  04 00 a0 e1                                      mov r0, r4
005ff078  52 26 e2 e7                                      ubfx r2, r2, #0xc, #3
005ff07c  01 10 8f e0                                      add r1, pc, r1
005ff080  27 ff ff eb                                      bl #0x5fed24
005ff084  38 20 95 e5                                      ldr r2, [r5, #0x38]
005ff088  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
005ff08c  04 00 a0 e1                                      mov r0, r4
005ff090  d2 27 e2 e7                                      ubfx r2, r2, #0xf, #3
005ff094  01 10 8f e0                                      add r1, pc, r1
005ff098  21 ff ff eb                                      bl #0x5fed24
005ff09c  38 20 95 e5                                      ldr r2, [r5, #0x38]
005ff0a0  98 11 9f e5                                      ldr r1, [pc, #0x198]
005ff0a4  04 00 a0 e1                                      mov r0, r4
005ff0a8  52 29 e2 e7                                      ubfx r2, r2, #0x12, #3
005ff0ac  01 10 8f e0                                      add r1, pc, r1
005ff0b0  41 fe ff eb                                      bl #0x5fe9bc
005ff0b4  38 20 95 e5                                      ldr r2, [r5, #0x38]
005ff0b8  84 11 9f e5                                      ldr r1, [pc, #0x184]
005ff0bc  04 00 a0 e1                                      mov r0, r4
005ff0c0  d2 2a e2 e7                                      ubfx r2, r2, #0x15, #3
005ff0c4  01 10 8f e0                                      add r1, pc, r1
005ff0c8  3b fe ff eb                                      bl #0x5fe9bc
005ff0cc  38 20 95 e5                                      ldr r2, [r5, #0x38]
005ff0d0  70 11 9f e5                                      ldr r1, [pc, #0x170]
005ff0d4  04 00 a0 e1                                      mov r0, r4
005ff0d8  d2 2a e2 e7                                      ubfx r2, r2, #0x15, #3
005ff0dc  01 10 8f e0                                      add r1, pc, r1
005ff0e0  35 fe ff eb                                      bl #0x5fe9bc
005ff0e4  38 20 95 e5                                      ldr r2, [r5, #0x38]
005ff0e8  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
005ff0ec  00 c0 94 e5                                      ldr ip, [r4]
005ff0f0  00 30 a0 e3                                      mov r3, #0
005ff0f4  d2 2d e0 e7                                      ubfx r2, r2, #0x1b, #1
005ff0f8  01 10 8f e0                                      add r1, pc, r1
005ff0fc  04 00 a0 e1                                      mov r0, r4
005ff100  0f e0 a0 e1                                      mov lr, pc
005ff104  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005ff108  00 00 a0 e3                                      mov r0, #0
005ff10c  00 60 a0 e1                                      mov r6, r0
005ff110  38 70 95 e5                                      ldr r7, [r5, #0x38]
005ff114  18 70 03 eb                                      bl #0x6db17c
005ff118  30 11 9f e5                                      ldr r1, [pc, #0x130]
005ff11c  00 60 8d e5                                      str r6, [sp]
005ff120  57 7e e2 e7                                      ubfx r7, r7, #0x1c, #3
005ff124  00 30 a0 e1                                      mov r3, r0
005ff128  07 20 a0 e1                                      mov r2, r7
005ff12c  04 00 a0 e1                                      mov r0, r4
005ff130  00 c0 94 e5                                      ldr ip, [r4]
005ff134  01 10 8f e0                                      add r1, pc, r1
005ff138  0f e0 a0 e1                                      mov lr, pc
005ff13c  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005ff140  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
005ff144  04 00 a0 e1                                      mov r0, r4
005ff148  44 20 95 e5                                      ldr r2, [r5, #0x44]
005ff14c  06 30 a0 e1                                      mov r3, r6
005ff150  00 c0 94 e5                                      ldr ip, [r4]
005ff154  01 10 8f e0                                      add r1, pc, r1
005ff158  0f e0 a0 e1                                      mov lr, pc
005ff15c  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005ff160  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
005ff164  04 00 a0 e1                                      mov r0, r4
005ff168  48 20 95 e5                                      ldr r2, [r5, #0x48]
005ff16c  06 30 a0 e1                                      mov r3, r6
005ff170  00 c0 94 e5                                      ldr ip, [r4]
005ff174  01 10 8f e0                                      add r1, pc, r1
005ff178  0f e0 a0 e1                                      mov lr, pc
005ff17c  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005ff180  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
005ff184  04 00 a0 e1                                      mov r0, r4
005ff188  4c 20 95 e5                                      ldr r2, [r5, #0x4c]
005ff18c  06 30 a0 e1                                      mov r3, r6
005ff190  00 c0 94 e5                                      ldr ip, [r4]
005ff194  01 10 8f e0                                      add r1, pc, r1
005ff198  0f e0 a0 e1                                      mov lr, pc
005ff19c  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005ff1a0  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
005ff1a4  06 30 a0 e1                                      mov r3, r6
005ff1a8  04 00 a0 e1                                      mov r0, r4
005ff1ac  50 20 95 e5                                      ldr r2, [r5, #0x50]
005ff1b0  01 10 8f e0                                      add r1, pc, r1
005ff1b4  00 c0 94 e5                                      ldr ip, [r4]
005ff1b8  0f e0 a0 e1                                      mov lr, pc
005ff1bc  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005ff1c0  04 00 a0 e1                                      mov r0, r4
005ff1c4  00 30 94 e5                                      ldr r3, [r4]
005ff1c8  0f e0 a0 e1                                      mov lr, pc
005ff1cc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005ff1d0  0c d0 8d e2                                      add sp, sp, #0xc
005ff1d4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005ff1d8  84 20 9f e5                                      ldr r2, [pc, #0x84]
005ff1dc  02 20 8f e0                                      add r2, pc, r2
005ff1e0  96 ff ff ea                                      b #0x5ff040
005ff1e4  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
005ff1e8  02 20 8f e0                                      add r2, pc, r2
005ff1ec  93 ff ff ea                                      b #0x5ff040
; mapping-symbol data/literal pool
005ff1f0  00 d0 2c 00 20 da 2c 00 98 3b 2c 00 b4 56 2e 00  .byte 0x00, 0xd0, 0x2c, 0x00, 0x20, 0xda, 0x2c, 0x00, 0x98, 0x3b, 0x2c, 0x00, 0xb4, 0x56, 0x2e, 0x00
005ff200  88 56 2e 00 5c 56 2e 00 c0 c4 2e 00 b0 c4 2e 00  .byte 0x88, 0x56, 0x2e, 0x00, 0x5c, 0x56, 0x2e, 0x00, 0xc0, 0xc4, 0x2e, 0x00, 0xb0, 0xc4, 0x2e, 0x00
005ff210  90 25 2e 00 a0 55 2e 00 7c 55 2e 00 50 55 2e 00  .byte 0x90, 0x25, 0x2e, 0x00, 0xa0, 0x55, 0x2e, 0x00, 0x7c, 0x55, 0x2e, 0x00, 0x50, 0x55, 0x2e, 0x00
005ff220  48 55 2e 00 34 55 2e 00 24 55 2e 00 14 55 2e 00  .byte 0x48, 0x55, 0x2e, 0x00, 0x34, 0x55, 0x2e, 0x00, 0x24, 0x55, 0x2e, 0x00, 0x14, 0x55, 0x2e, 0x00
005ff230  14 55 2e 00 c8 53 2e 00 bc 53 2e 00 b4 53 2e 00  .byte 0x14, 0x55, 0x2e, 0x00, 0xc8, 0x53, 0x2e, 0x00, 0xbc, 0x53, 0x2e, 0x00, 0xb4, 0x53, 0x2e, 0x00
005ff240  ac 53 2e 00 9c 53 2e 00 8c 53 2e 00 78 53 2e 00  .byte 0xac, 0x53, 0x2e, 0x00, 0x9c, 0x53, 0x2e, 0x00, 0x8c, 0x53, 0x2e, 0x00, 0x78, 0x53, 0x2e, 0x00
005ff250  54 53 2e 00 44 53 2e 00 34 53 2e 00 24 53 2e 00  .byte 0x54, 0x53, 0x2e, 0x00, 0x44, 0x53, 0x2e, 0x00, 0x34, 0x53, 0x2e, 0x00, 0x24, 0x53, 0x2e, 0x00
005ff260  10 53 2e 00 5c 5a 2e 00 60 53 2e 00              .byte 0x10, 0x53, 0x2e, 0x00, 0x5c, 0x5a, 0x2e, 0x00, 0x60, 0x53, 0x2e, 0x00

; FUNCTION 0x005ff26c, declared_size=236, range_size=236, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITexture4copyEv
; demangled: glitch::video::ITexture::copy()
; decoder-mode: arm
005ff26c  70 40 2d e9                                      push {r4, r5, r6, lr}
005ff270  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005ff274  00 40 a0 e1                                      mov r4, r0
005ff278  01 00 13 e3                                      tst r3, #1
005ff27c  2c 50 90 05                                      ldreq r5, [r0, #0x2c]
005ff280  27 00 00 1a                                      bne #0x5ff324
005ff284  38 10 94 e5                                      ldr r1, [r4, #0x38]
005ff288  03 10 01 e2                                      and r1, r1, #3
005ff28c  02 00 51 e3                                      cmp r1, #2
005ff290  05 10 a0 03                                      moveq r1, #5
005ff294  00 10 a0 13                                      movne r1, #0
005ff298  02 00 13 e3                                      tst r3, #2
005ff29c  25 00 00 1a                                      bne #0x5ff338
005ff2a0  3e 20 d4 e5                                      ldrb r2, [r4, #0x3e]
005ff2a4  30 30 94 e5                                      ldr r3, [r4, #0x30]
005ff2a8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005ff2ac  7f 20 83 e2                                      add r2, r3, #0x7f
005ff2b0  7f 20 c2 e3                                      bic r2, r2, #0x7f
005ff2b4  92 31 20 e0                                      mla r0, r2, r1, r3
005ff2b8  00 10 a0 e3                                      mov r1, #0
005ff2bc  b9 d3 fc eb                                      bl #0x5341a8
005ff2c0  38 30 94 e5                                      ldr r3, [r4, #0x38]
005ff2c4  3f 10 d4 e5                                      ldrb r1, [r4, #0x3f]
005ff2c8  2c 00 84 e5                                      str r0, [r4, #0x2c]
005ff2cc  03 30 03 e2                                      and r3, r3, #3
005ff2d0  02 00 53 e3                                      cmp r3, #2
005ff2d4  05 30 a0 03                                      moveq r3, #5
005ff2d8  00 30 a0 13                                      movne r3, #0
005ff2dc  02 00 11 e3                                      tst r1, #2
005ff2e0  30 c0 94 15                                      ldrne ip, [r4, #0x30]
005ff2e4  3e 10 d4 05                                      ldrbeq r1, [r4, #0x3e]
005ff2e8  30 20 94 05                                      ldreq r2, [r4, #0x30]
005ff2ec  04 10 9c 15                                      ldrne r1, [ip, #4]
005ff2f0  00 20 9c 15                                      ldrne r2, [ip]
005ff2f4  01 11 92 07                                      ldreq r1, [r2, r1, lsl #2]
005ff2f8  01 10 62 10                                      rsbne r1, r2, r1
005ff2fc  7f 20 81 e2                                      add r2, r1, #0x7f
005ff300  7f 20 c2 e3                                      bic r2, r2, #0x7f
005ff304  92 13 22 e0                                      mla r2, r2, r3, r1
005ff308  05 10 a0 e1                                      mov r1, r5
005ff30c  55 3d f4 eb                                      bl #0x30e868
005ff310  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005ff314  01 00 a0 e3                                      mov r0, #1
005ff318  00 30 83 e1                                      orr r3, r3, r0
005ff31c  3f 30 c4 e5                                      strb r3, [r4, #0x3f]
005ff320  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ff324  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005ff328  00 00 55 e3                                      cmp r5, #0
005ff32c  d4 ff ff 0a                                      beq #0x5ff284
005ff330  00 00 a0 e3                                      mov r0, #0
005ff334  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ff338  30 20 94 e5                                      ldr r2, [r4, #0x30]
005ff33c  04 00 92 e5                                      ldr r0, [r2, #4]
005ff340  00 30 92 e5                                      ldr r3, [r2]
005ff344  00 30 63 e0                                      rsb r3, r3, r0
005ff348  7f 00 83 e2                                      add r0, r3, #0x7f
005ff34c  7f 00 c0 e3                                      bic r0, r0, #0x7f
005ff350  90 31 20 e0                                      mla r0, r0, r1, r3
005ff354  d7 ff ff ea                                      b #0x5ff2b8

; FUNCTION 0x00608048, declared_size=240, range_size=240, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZNK6glitch5video8ITexture12setDataDirtyEb.clone.0
; demangled: glitch::video::ITexture::setDataDirty(bool) const [clone .clone.0]
; decoder-mode: arm
00608048  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
0060804c  f0 00 2d e9                                      push {r4, r5, r6, r7}
00608050  02 00 13 e3                                      tst r3, #2
00608054  1d 00 00 0a                                      beq #0x6080d0
00608058  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
0060805c  00 00 53 e3                                      cmp r3, #0
00608060  18 00 00 0a                                      beq #0x6080c8
00608064  38 70 90 e5                                      ldr r7, [r0, #0x38]
00608068  b0 34 d0 e1                                      ldrh r3, [r0, #0x40]
0060806c  3e 10 d0 e5                                      ldrb r1, [r0, #0x3e]
00608070  03 70 07 e2                                      and r7, r7, #3
00608074  01 30 83 e3                                      orr r3, r3, #1
00608078  02 00 57 e3                                      cmp r7, #2
0060807c  00 20 a0 e3                                      mov r2, #0
00608080  b0 34 c0 e1                                      strh r3, [r0, #0x40]
00608084  06 70 a0 03                                      moveq r7, #6
00608088  01 70 a0 13                                      movne r7, #1
0060808c  02 30 a0 e1                                      mov r3, r2
00608090  01 60 a0 e3                                      mov r6, #1
00608094  30 40 90 e5                                      ldr r4, [r0, #0x30]
00608098  01 10 81 e2                                      add r1, r1, #1
0060809c  a3 c2 a0 e1                                      lsr ip, r3, #5
006080a0  01 11 84 e0                                      add r1, r4, r1, lsl #2
006080a4  0c 41 91 e7                                      ldr r4, [r1, ip, lsl #2]
006080a8  1f 50 03 e2                                      and r5, r3, #0x1f
006080ac  01 20 82 e2                                      add r2, r2, #1
006080b0  16 45 84 e1                                      orr r4, r4, r6, lsl r5
006080b4  0c 41 81 e7                                      str r4, [r1, ip, lsl #2]
006080b8  3e 10 d0 e5                                      ldrb r1, [r0, #0x3e]
006080bc  07 00 52 e1                                      cmp r2, r7
006080c0  01 30 83 e0                                      add r3, r3, r1
006080c4  f2 ff ff ba                                      blt #0x608094
006080c8  f0 00 bd e8                                      pop {r4, r5, r6, r7}
006080cc  1e ff 2f e1                                      bx lr
006080d0  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
006080d4  00 00 53 e3                                      cmp r3, #0
006080d8  fa ff ff 0a                                      beq #0x6080c8
006080dc  38 20 90 e5                                      ldr r2, [r0, #0x38]
006080e0  3e 10 d0 e5                                      ldrb r1, [r0, #0x3e]
006080e4  30 40 90 e5                                      ldr r4, [r0, #0x30]
006080e8  03 20 02 e2                                      and r2, r2, #3
006080ec  02 00 52 e3                                      cmp r2, #2
006080f0  06 20 a0 03                                      moveq r2, #6
006080f4  01 20 a0 13                                      movne r2, #1
006080f8  91 02 02 e0                                      mul r2, r1, r2
006080fc  b0 c4 d0 e1                                      ldrh ip, [r0, #0x40]
00608100  1f 20 82 e2                                      add r2, r2, #0x1f
00608104  01 30 81 e2                                      add r3, r1, #1
00608108  a2 22 a0 e1                                      lsr r2, r2, #5
0060810c  03 31 84 e0                                      add r3, r4, r3, lsl #2
00608110  02 21 83 e0                                      add r2, r3, r2, lsl #2
00608114  01 10 8c e3                                      orr r1, ip, #1
00608118  02 00 53 e1                                      cmp r3, r2
0060811c  b0 14 c0 e1                                      strh r1, [r0, #0x40]
00608120  e8 ff ff 0a                                      beq #0x6080c8
00608124  00 10 e0 e3                                      mvn r1, #0
00608128  04 10 83 e4                                      str r1, [r3], #4
0060812c  03 00 52 e1                                      cmp r2, r3
00608130  fc ff ff 1a                                      bne #0x608128
00608134  e3 ff ff ea                                      b #0x6080c8

; FUNCTION 0x006ce46c, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITexture7setWrapENS0_15E_TEXTURE_CLAMPE.clone.1
; demangled: glitch::video::ITexture::setWrap(glitch::video::E_TEXTURE_CLAMP) [clone .clone.1]
; decoder-mode: arm
006ce46c  38 30 90 e5                                      ldr r3, [r0, #0x38]
006ce470  53 29 e2 e7                                      ubfx r2, r3, #0x12, #3
006ce474  02 00 52 e3                                      cmp r2, #2
006ce478  05 00 00 0a                                      beq #0x6ce494
006ce47c  b0 24 d0 e1                                      ldrh r2, [r0, #0x40]
006ce480  07 37 c3 e3                                      bic r3, r3, #0x1c0000
006ce484  02 37 83 e3                                      orr r3, r3, #0x80000
006ce488  10 20 82 e3                                      orr r2, r2, #0x10
006ce48c  b0 24 c0 e1                                      strh r2, [r0, #0x40]
006ce490  38 30 80 e5                                      str r3, [r0, #0x38]
006ce494  d3 2a e2 e7                                      ubfx r2, r3, #0x15, #3
006ce498  02 00 52 e3                                      cmp r2, #2
006ce49c  1e ff 2f 01                                      bxeq lr
006ce4a0  b0 24 d0 e1                                      ldrh r2, [r0, #0x40]
006ce4a4  0e 36 c3 e3                                      bic r3, r3, #0xe00000
006ce4a8  01 35 83 e3                                      orr r3, r3, #0x400000
006ce4ac  01 05 13 e3                                      tst r3, #0x400000
006ce4b0  20 20 82 e3                                      orr r2, r2, #0x20
006ce4b4  38 30 80 e5                                      str r3, [r0, #0x38]
006ce4b8  07 34 c3 03                                      biceq r3, r3, #0x7000000
006ce4bc  b0 24 c0 e1                                      strh r2, [r0, #0x40]
006ce4c0  02 34 83 03                                      orreq r3, r3, #0x2000000
006ce4c4  40 20 82 03                                      orreq r2, r2, #0x40
006ce4c8  b0 24 c0 01                                      strheq r2, [r0, #0x40]
006ce4cc  38 30 80 05                                      streq r3, [r0, #0x38]
006ce4d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d3bb4, declared_size=112, range_size=112, mode=arm
; class-group: glitch::video::ITexture
; alias: _ZN6glitch5video8ITexture7setWrapENS0_15E_TEXTURE_CLAMPE
; demangled: glitch::video::ITexture::setWrap(glitch::video::E_TEXTURE_CLAMP)
; decoder-mode: arm
007d3bb4  38 30 90 e5                                      ldr r3, [r0, #0x38]
007d3bb8  04 40 2d e5                                      str r4, [sp, #-4]!
007d3bbc  53 29 e2 e7                                      ubfx r2, r3, #0x12, #3
007d3bc0  02 00 51 e1                                      cmp r1, r2
007d3bc4  b0 24 d0 11                                      ldrhne r2, [r0, #0x40]
007d3bc8  11 39 d4 17                                      bfine r3, r1, #0x12, #3
007d3bcc  38 30 80 15                                      strne r3, [r0, #0x38]
007d3bd0  10 20 82 13                                      orrne r2, r2, #0x10
007d3bd4  b0 24 c0 11                                      strhne r2, [r0, #0x40]
007d3bd8  d3 2a e2 e7                                      ubfx r2, r3, #0x15, #3
007d3bdc  02 00 51 e1                                      cmp r1, r2
007d3be0  0d 00 00 0a                                      beq #0x7d3c1c
007d3be4  07 c0 01 e2                                      and ip, r1, #7
007d3be8  0e 36 c3 e3                                      bic r3, r3, #0xe00000
007d3bec  8c 3a 83 e1                                      orr r3, r3, ip, lsl #21
007d3bf0  b0 24 d0 e1                                      ldrh r2, [r0, #0x40]
007d3bf4  d3 4a e2 e7                                      ubfx r4, r3, #0x15, #3
007d3bf8  04 00 51 e1                                      cmp r1, r4
007d3bfc  20 20 82 e3                                      orr r2, r2, #0x20
007d3c00  38 30 80 e5                                      str r3, [r0, #0x38]
007d3c04  07 34 c3 13                                      bicne r3, r3, #0x7000000
007d3c08  b0 24 c0 e1                                      strh r2, [r0, #0x40]
007d3c0c  0c cc 83 11                                      orrne ip, r3, ip, lsl #24
007d3c10  40 20 82 13                                      orrne r2, r2, #0x40
007d3c14  b0 24 c0 11                                      strhne r2, [r0, #0x40]
007d3c18  38 c0 80 15                                      strne ip, [r0, #0x38]
007d3c1c  10 00 bd e8                                      ldm sp!, {r4}
007d3c20  1e ff 2f e1                                      bx lr
