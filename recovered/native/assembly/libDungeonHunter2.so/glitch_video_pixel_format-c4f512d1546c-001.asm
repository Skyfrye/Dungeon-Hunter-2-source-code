; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005ed954, declared_size=124, range_size=124, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format13getPackedTypeENS0_14E_PIXEL_FORMATE
; demangled: glitch::video::pixel_format::getPackedType(glitch::video::E_PIXEL_FORMAT)
; decoder-mode: arm
005ed954  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
005ed958  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
005ed95c  28 10 a0 e3                                      mov r1, #0x28
005ed960  03 30 8f e0                                      add r3, pc, r3
005ed964  91 00 01 e0                                      mul r1, r1, r0
005ed968  02 20 93 e7                                      ldr r2, [r3, r2]
005ed96c  01 30 92 e7                                      ldr r3, [r2, r1]
005ed970  01 20 82 e0                                      add r2, r2, r1
005ed974  10 20 82 e2                                      add r2, r2, #0x10
005ed978  40 00 13 e3                                      tst r3, #0x40
005ed97c  04 00 d2 e5                                      ldrb r0, [r2, #4]
005ed980  07 30 d2 e5                                      ldrb r3, [r2, #7]
005ed984  1e ff 2f 11                                      bxne lr
005ed988  01 00 53 e3                                      cmp r3, #1
005ed98c  1e ff 2f 01                                      bxeq lr
005ed990  00 00 50 e3                                      cmp r0, #0
005ed994  03 00 00 0a                                      beq #0x5ed9a8
005ed998  01 00 50 e3                                      cmp r0, #1
005ed99c  06 00 00 0a                                      beq #0x5ed9bc
005ed9a0  ff 00 a0 e3                                      mov r0, #0xff
005ed9a4  1e ff 2f e1                                      bx lr
005ed9a8  02 00 53 e3                                      cmp r3, #2
005ed9ac  01 00 a0 93                                      movls r0, #1
005ed9b0  1e ff 2f 91                                      bxls lr
005ed9b4  02 00 a0 e3                                      mov r0, #2
005ed9b8  1e ff 2f e1                                      bx lr
005ed9bc  02 00 53 e3                                      cmp r3, #2
005ed9c0  f6 ff ff 1a                                      bne #0x5ed9a0
005ed9c4  fa ff ff ea                                      b #0x5ed9b4
; mapping-symbol data/literal pool
005ed9c8  30 71 3a 00 34 1f 00 00                          .byte 0x30, 0x71, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x005ed9d0, declared_size=160, range_size=160, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format27computeRelativeSwizzleTableENS0_14E_PIXEL_FORMATES2_Ph
; demangled: glitch::video::pixel_format::computeRelativeSwizzleTable(glitch::video::E_PIXEL_FORMAT, glitch::video::E_PIXEL_FORMAT, unsigned char*)
; decoder-mode: arm
005ed9d0  90 30 9f e5                                      ldr r3, [pc, #0x90]
005ed9d4  90 c0 9f e5                                      ldr ip, [pc, #0x90]
005ed9d8  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
005ed9dc  03 30 8f e0                                      add r3, pc, r3
005ed9e0  0c 40 93 e7                                      ldr r4, [r3, ip]
005ed9e4  28 50 a0 e3                                      mov r5, #0x28
005ed9e8  95 01 06 e0                                      mul r6, r5, r1
005ed9ec  95 40 25 e0                                      mla r5, r5, r0, r4
005ed9f0  06 70 94 e7                                      ldr r7, [r4, r6]
005ed9f4  06 40 84 e0                                      add r4, r4, r6
005ed9f8  20 60 d4 e5                                      ldrb r6, [r4, #0x20]
005ed9fc  20 80 d5 e5                                      ldrb r8, [r5, #0x20]
005eda00  04 00 17 e3                                      tst r7, #4
005eda04  06 80 c2 e7                                      strb r8, [r2, r6]
005eda08  05 00 00 1a                                      bne #0x5eda24
005eda0c  22 60 d4 e5                                      ldrb r6, [r4, #0x22]
005eda10  22 70 d5 e5                                      ldrb r7, [r5, #0x22]
005eda14  21 40 d4 e5                                      ldrb r4, [r4, #0x21]
005eda18  21 50 d5 e5                                      ldrb r5, [r5, #0x21]
005eda1c  04 50 c2 e7                                      strb r5, [r2, r4]
005eda20  06 70 c2 e7                                      strb r7, [r2, r6]
005eda24  28 40 a0 e3                                      mov r4, #0x28
005eda28  0c 30 93 e7                                      ldr r3, [r3, ip]
005eda2c  94 00 00 e0                                      mul r0, r4, r0
005eda30  00 c0 93 e7                                      ldr ip, [r3, r0]
005eda34  00 00 83 e0                                      add r0, r3, r0
005eda38  01 00 1c e3                                      tst ip, #1
005eda3c  06 00 00 0a                                      beq #0x5eda5c
005eda40  94 01 01 e0                                      mul r1, r4, r1
005eda44  01 c0 93 e7                                      ldr ip, [r3, r1]
005eda48  01 10 83 e0                                      add r1, r3, r1
005eda4c  01 00 1c e3                                      tst ip, #1
005eda50  23 30 d1 15                                      ldrbne r3, [r1, #0x23]
005eda54  23 10 d0 15                                      ldrbne r1, [r0, #0x23]
005eda58  03 10 c2 17                                      strbne r1, [r2, r3]
005eda5c  02 00 a0 e1                                      mov r0, r2
005eda60  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
005eda64  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005eda68  b4 70 3a 00 34 1f 00 00                          .byte 0xb4, 0x70, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x005eda70, declared_size=124, range_size=124, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format9getFormatEjjjj
; demangled: glitch::video::pixel_format::getFormat(unsigned int, unsigned int, unsigned int, unsigned int)
; decoder-mode: arm
005eda70  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
005eda74  30 00 2d e9                                      push {r4, r5}
005eda78  68 40 9f e5                                      ldr r4, [pc, #0x68]
005eda7c  0c c0 8f e0                                      add ip, pc, ip
005eda80  00 50 a0 e3                                      mov r5, #0
005eda84  04 40 9c e7                                      ldr r4, [ip, r4]
005eda88  04 40 84 e2                                      add r4, r4, #4
005eda8c  03 00 00 ea                                      b #0x5edaa0
005eda90  01 50 85 e2                                      add r5, r5, #1
005eda94  28 00 55 e3                                      cmp r5, #0x28
005eda98  28 40 84 e2                                      add r4, r4, #0x28
005eda9c  0d 00 00 0a                                      beq #0x5edad8
005edaa0  00 c0 94 e5                                      ldr ip, [r4]
005edaa4  00 00 5c e1                                      cmp ip, r0
005edaa8  f8 ff ff 1a                                      bne #0x5eda90
005edaac  04 c0 94 e5                                      ldr ip, [r4, #4]
005edab0  01 00 5c e1                                      cmp ip, r1
005edab4  f5 ff ff 1a                                      bne #0x5eda90
005edab8  08 c0 94 e5                                      ldr ip, [r4, #8]
005edabc  02 00 5c e1                                      cmp ip, r2
005edac0  f2 ff ff 1a                                      bne #0x5eda90
005edac4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005edac8  03 00 5c e1                                      cmp ip, r3
005edacc  ef ff ff 1a                                      bne #0x5eda90
005edad0  05 00 a0 e1                                      mov r0, r5
005edad4  00 00 00 ea                                      b #0x5edadc
005edad8  27 00 a0 e3                                      mov r0, #0x27
005edadc  30 00 bd e8                                      pop {r4, r5}
005edae0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005edae4  14 70 3a 00 34 1f 00 00                          .byte 0x14, 0x70, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x005edaec, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj
; demangled: glitch::video::pixel_format::computePitch(glitch::video::E_PIXEL_FORMAT, unsigned int)
; decoder-mode: arm
005edaec  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
005edaf0  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
005edaf4  10 40 2d e9                                      push {r4, lr}
005edaf8  03 30 8f e0                                      add r3, pc, r3
005edafc  02 20 93 e7                                      ldr r2, [r3, r2]
005edb00  28 40 a0 e3                                      mov r4, #0x28
005edb04  94 20 24 e0                                      mla r4, r4, r0, r2
005edb08  24 30 d4 e5                                      ldrb r3, [r4, #0x24]
005edb0c  01 00 53 e3                                      cmp r3, #1
005edb10  06 00 00 9a                                      bls #0x5edb30
005edb14  01 00 43 e2                                      sub r0, r3, #1
005edb18  01 00 80 e0                                      add r0, r0, r1
005edb1c  03 10 a0 e1                                      mov r1, r3
005edb20  49 84 f4 eb                                      bl #0x30ec4c
005edb24  15 10 d4 e5                                      ldrb r1, [r4, #0x15]
005edb28  91 00 00 e0                                      mul r0, r1, r0
005edb2c  10 80 bd e8                                      pop {r4, pc}
005edb30  16 00 d4 e5                                      ldrb r0, [r4, #0x16]
005edb34  90 01 01 e0                                      mul r1, r0, r1
005edb38  a1 01 a0 e1                                      lsr r0, r1, #3
005edb3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005edb40  98 6f 3a 00 34 1f 00 00                          .byte 0x98, 0x6f, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x005edb48, declared_size=112, range_size=112, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format18computeSizeInBytesENS0_14E_PIXEL_FORMATEjj
; demangled: glitch::video::pixel_format::computeSizeInBytes(glitch::video::E_PIXEL_FORMAT, unsigned int, unsigned int)
; decoder-mode: arm
005edb48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005edb4c  02 80 a0 e1                                      mov r8, r2
005edb50  00 60 a0 e1                                      mov r6, r0
005edb54  e4 ff ff eb                                      bl #0x5edaec
005edb58  50 40 9f e5                                      ldr r4, [pc, #0x50]
005edb5c  50 50 9f e5                                      ldr r5, [pc, #0x50]
005edb60  28 20 a0 e3                                      mov r2, #0x28
005edb64  04 40 8f e0                                      add r4, pc, r4
005edb68  05 30 94 e7                                      ldr r3, [r4, r5]
005edb6c  00 70 a0 e1                                      mov r7, r0
005edb70  92 36 23 e0                                      mla r3, r2, r6, r3
005edb74  25 10 d3 e5                                      ldrb r1, [r3, #0x25]
005edb78  01 00 51 e3                                      cmp r1, #1
005edb7c  98 00 00 90                                      mulls r0, r8, r0
005edb80  03 00 00 9a                                      bls #0x5edb94
005edb84  01 00 41 e2                                      sub r0, r1, #1
005edb88  08 00 80 e0                                      add r0, r0, r8
005edb8c  2e 84 f4 eb                                      bl #0x30ec4c
005edb90  90 07 00 e0                                      mul r0, r0, r7
005edb94  05 30 94 e7                                      ldr r3, [r4, r5]
005edb98  28 20 a0 e3                                      mov r2, #0x28
005edb9c  92 36 26 e0                                      mla r6, r2, r6, r3
005edba0  27 30 d6 e5                                      ldrb r3, [r6, #0x27]
005edba4  03 00 50 e1                                      cmp r0, r3
005edba8  03 00 a0 31                                      movlo r0, r3
005edbac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005edbb0  2c 6f 3a 00 34 1f 00 00                          .byte 0x2c, 0x6f, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x005edbb8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format18computeSizeInBytesENS0_14E_PIXEL_FORMATEjjj
; demangled: glitch::video::pixel_format::computeSizeInBytes(glitch::video::E_PIXEL_FORMAT, unsigned int, unsigned int, unsigned int)
; decoder-mode: arm
005edbb8  10 40 2d e9                                      push {r4, lr}
005edbbc  03 40 a0 e1                                      mov r4, r3
005edbc0  e0 ff ff eb                                      bl #0x5edb48
005edbc4  94 00 00 e0                                      mul r0, r4, r0
005edbc8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005edbcc, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format24computeMipmapSizeInBytesENS0_14E_PIXEL_FORMATEjjhb
; demangled: glitch::video::pixel_format::computeMipmapSizeInBytes(glitch::video::E_PIXEL_FORMAT, unsigned int, unsigned int, unsigned char, bool)
; decoder-mode: arm
005edbcc  00 c0 dd e5                                      ldrb ip, [sp]
005edbd0  00 00 5c e3                                      cmp ip, #0
005edbd4  01 00 00 1a                                      bne #0x5edbe0
005edbd8  31 13 b0 e1                                      lsrs r1, r1, r3
005edbdc  01 10 a0 03                                      moveq r1, #1
005edbe0  32 23 b0 e1                                      lsrs r2, r2, r3
005edbe4  01 20 a0 03                                      moveq r2, #1
005edbe8  d6 ff ff ea                                      b #0x5edb48

; FUNCTION 0x005edbec, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format24computeMipmapSizeInBytesENS0_14E_PIXEL_FORMATEjjjhb
; demangled: glitch::video::pixel_format::computeMipmapSizeInBytes(glitch::video::E_PIXEL_FORMAT, unsigned int, unsigned int, unsigned int, unsigned char, bool)
; decoder-mode: arm
005edbec  04 c0 dd e5                                      ldrb ip, [sp, #4]
005edbf0  00 00 5c e3                                      cmp ip, #0
005edbf4  00 c0 dd e5                                      ldrb ip, [sp]
005edbf8  01 00 00 1a                                      bne #0x5edc04
005edbfc  31 1c b0 e1                                      lsrs r1, r1, ip
005edc00  01 10 a0 03                                      moveq r1, #1
005edc04  32 2c b0 e1                                      lsrs r2, r2, ip
005edc08  01 20 a0 03                                      moveq r2, #1
005edc0c  33 3c b0 e1                                      lsrs r3, r3, ip
005edc10  01 30 a0 03                                      moveq r3, #1
005edc14  e7 ff ff ea                                      b #0x5edbb8

; FUNCTION 0x005edc18, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format18computeSizeInBytesENS0_14E_PIXEL_FORMATEjjjhb
; demangled: glitch::video::pixel_format::computeSizeInBytes(glitch::video::E_PIXEL_FORMAT, unsigned int, unsigned int, unsigned int, unsigned char, bool)
; decoder-mode: arm
005edc18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005edc1c  08 d0 4d e2                                      sub sp, sp, #8
005edc20  28 40 dd e5                                      ldrb r4, [sp, #0x28]
005edc24  00 90 a0 e1                                      mov sb, r0
005edc28  01 a0 a0 e1                                      mov sl, r1
005edc2c  00 00 54 e3                                      cmp r4, #0
005edc30  02 80 a0 e1                                      mov r8, r2
005edc34  03 60 a0 e1                                      mov r6, r3
005edc38  2c 70 dd e5                                      ldrb r7, [sp, #0x2c]
005edc3c  04 50 a0 01                                      moveq r5, r4
005edc40  0b 00 00 0a                                      beq #0x5edc74
005edc44  00 50 a0 e3                                      mov r5, #0
005edc48  01 40 44 e2                                      sub r4, r4, #1
005edc4c  74 40 ef e6                                      uxtb r4, r4
005edc50  09 00 a0 e1                                      mov r0, sb
005edc54  0a 10 a0 e1                                      mov r1, sl
005edc58  08 20 a0 e1                                      mov r2, r8
005edc5c  06 30 a0 e1                                      mov r3, r6
005edc60  90 00 8d e8                                      stm sp, {r4, r7}
005edc64  e0 ff ff eb                                      bl #0x5edbec
005edc68  00 00 54 e3                                      cmp r4, #0
005edc6c  00 50 85 e0                                      add r5, r5, r0
005edc70  f4 ff ff 1a                                      bne #0x5edc48
005edc74  05 00 a0 e1                                      mov r0, r5
005edc78  08 d0 8d e2                                      add sp, sp, #8
005edc7c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005edc80, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format18computeSizeInBytesENS0_14E_PIXEL_FORMATEjjhb
; demangled: glitch::video::pixel_format::computeSizeInBytes(glitch::video::E_PIXEL_FORMAT, unsigned int, unsigned int, unsigned char, bool)
; decoder-mode: arm
005edc80  04 e0 2d e5                                      str lr, [sp, #-4]!
005edc84  0c d0 4d e2                                      sub sp, sp, #0xc
005edc88  10 c0 dd e5                                      ldrb ip, [sp, #0x10]
005edc8c  00 30 8d e5                                      str r3, [sp]
005edc90  01 30 a0 e3                                      mov r3, #1
005edc94  04 c0 8d e5                                      str ip, [sp, #4]
005edc98  de ff ff eb                                      bl #0x5edc18
005edc9c  0c d0 8d e2                                      add sp, sp, #0xc
005edca0  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x005edca4, declared_size=248, range_size=248, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_135SPackedRGBtoLuminanceAlphaConverterC1ENS0_14E_PIXEL_FORMATE
; demangled: glitch::video::pixel_format::(anonymous namespace)::SPackedRGBtoLuminanceAlphaConverter::SPackedRGBtoLuminanceAlphaConverter(glitch::video::E_PIXEL_FORMAT)
; decoder-mode: arm
005edca4  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
005edca8  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
005edcac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005edcb0  03 30 8f e0                                      add r3, pc, r3
005edcb4  02 20 93 e7                                      ldr r2, [r3, r2]
005edcb8  28 60 a0 e3                                      mov r6, #0x28
005edcbc  3d 3a 00 e3                                      movw r3, #0xa3d
005edcc0  14 d0 4d e2                                      sub sp, sp, #0x14
005edcc4  17 3f 43 e3                                      movt r3, #0x3f17
005edcc8  96 21 26 e0                                      mla r6, r6, r1, r2
005edccc  9a b9 09 e3                                      movw fp, #0x999a
005edcd0  08 30 8d e5                                      str r3, [sp, #8]
005edcd4  ae 37 04 e3                                      movw r3, #0x47ae
005edcd8  99 be 43 e3                                      movt fp, #0x3e99
005edcdc  e1 3d 43 e3                                      movt r3, #0x3de1
005edce0  00 50 a0 e1                                      mov r5, r0
005edce4  0c 30 8d e5                                      str r3, [sp, #0xc]
005edce8  04 b0 8d e5                                      str fp, [sp, #4]
005edcec  00 80 a0 e1                                      mov r8, r0
005edcf0  00 70 a0 e1                                      mov r7, r0
005edcf4  00 40 a0 e3                                      mov r4, #0
005edcf8  06 a0 a0 e1                                      mov sl, r6
005edcfc  04 90 8d e2                                      add sb, sp, #4
005edd00  04 30 8a e0                                      add r3, sl, r4
005edd04  04 00 93 e5                                      ldr r0, [r3, #4]
005edd08  1c 30 d6 e5                                      ldrb r3, [r6, #0x1c]
005edd0c  01 60 86 e2                                      add r6, r6, #1
005edd10  0c 00 87 e5                                      str r0, [r7, #0xc]
005edd14  18 30 c8 e5                                      strb r3, [r8, #0x18]
005edd18  30 03 a0 e1                                      lsr r0, r0, r3
005edd1c  6f 81 f4 eb                                      bl #0x30e2e0
005edd20  00 10 a0 e1                                      mov r1, r0
005edd24  0b 00 a0 e1                                      mov r0, fp
005edd28  d9 83 f4 eb                                      bl #0x30ec94
005edd2c  04 00 85 e7                                      str r0, [r5, r4]
005edd30  04 40 84 e2                                      add r4, r4, #4
005edd34  0c 00 54 e3                                      cmp r4, #0xc
005edd38  04 70 87 e2                                      add r7, r7, #4
005edd3c  01 80 88 e2                                      add r8, r8, #1
005edd40  04 b0 99 17                                      ldrne fp, [sb, r4]
005edd44  ed ff ff 1a                                      bne #0x5edd00
005edd48  10 30 9a e5                                      ldr r3, [sl, #0x10]
005edd4c  1f 40 da e5                                      ldrb r4, [sl, #0x1f]
005edd50  1c 30 85 e5                                      str r3, [r5, #0x1c]
005edd54  1b 40 c5 e5                                      strb r4, [r5, #0x1b]
005edd58  33 44 a0 e1                                      lsr r4, r3, r4
005edd5c  04 00 a0 e1                                      mov r0, r4
005edd60  5e 81 f4 eb                                      bl #0x30e2e0
005edd64  00 10 a0 e1                                      mov r1, r0
005edd68  43 04 a0 e3                                      mov r0, #0x43000000
005edd6c  7f 08 80 e2                                      add r0, r0, #0x7f0000
005edd70  c7 83 f4 eb                                      bl #0x30ec94
005edd74  00 30 9a e5                                      ldr r3, [sl]
005edd78  20 00 85 e5                                      str r0, [r5, #0x20]
005edd7c  05 00 a0 e1                                      mov r0, r5
005edd80  01 00 13 e3                                      tst r3, #1
005edd84  00 40 a0 13                                      movne r4, #0
005edd88  24 40 85 e5                                      str r4, [r5, #0x24]
005edd8c  14 d0 8d e2                                      add sp, sp, #0x14
005edd90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005edd94  e0 6d 3a 00 34 1f 00 00                          .byte 0xe0, 0x6d, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x005edd9c, declared_size=320, range_size=320, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format9swapBytesENS0_14E_PIXEL_FORMATEPKvjbPv
; demangled: glitch::video::pixel_format::swapBytes(glitch::video::E_PIXEL_FORMAT, void const*, unsigned int, bool, void*)
; decoder-mode: arm
005edd9c  30 c1 9f e5                                      ldr ip, [pc, #0x130]
005edda0  f0 00 2d e9                                      push {r4, r5, r6, r7}
005edda4  2c 41 9f e5                                      ldr r4, [pc, #0x12c]
005edda8  0c c0 8f e0                                      add ip, pc, ip
005eddac  28 50 a0 e3                                      mov r5, #0x28
005eddb0  04 40 9c e7                                      ldr r4, [ip, r4]
005eddb4  95 00 05 e0                                      mul r5, r5, r0
005eddb8  08 d0 4d e2                                      sub sp, sp, #8
005eddbc  05 00 94 e7                                      ldr r0, [r4, r5]
005eddc0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005eddc4  05 50 84 e0                                      add r5, r4, r5
005eddc8  08 00 10 e3                                      tst r0, #8
005eddcc  01 00 00 1a                                      bne #0x5eddd8
005eddd0  00 00 53 e3                                      cmp r3, #0
005eddd4  03 00 00 0a                                      beq #0x5edde8
005eddd8  00 00 a0 e3                                      mov r0, #0
005edddc  08 d0 8d e2                                      add sp, sp, #8
005edde0  f0 00 bd e8                                      pop {r4, r5, r6, r7}
005edde4  1e ff 2f e1                                      bx lr
005edde8  14 00 d5 e5                                      ldrb r0, [r5, #0x14]
005eddec  00 00 50 e3                                      cmp r0, #0
005eddf0  f8 ff ff 0a                                      beq #0x5eddd8
005eddf4  22 61 a0 e1                                      lsr r6, r2, #2
005eddf8  01 00 50 e3                                      cmp r0, #1
005eddfc  03 00 50 13                                      cmpne r0, #3
005ede00  00 70 a0 13                                      movne r7, #0
005ede04  01 70 a0 03                                      moveq r7, #1
005ede08  01 00 a0 e1                                      mov r0, r1
005ede0c  06 51 81 e0                                      add r5, r1, r6, lsl #2
005ede10  0c 40 a0 e1                                      mov r4, ip
005ede14  1a 00 00 1a                                      bne #0x5ede84
005ede18  05 00 51 e1                                      cmp r1, r5
005ede1c  0e 00 00 0a                                      beq #0x5ede5c
005ede20  04 70 81 e2                                      add r7, r1, #4
005ede24  05 70 67 e0                                      rsb r7, r7, r5
005ede28  03 70 c7 e3                                      bic r7, r7, #3
005ede2c  04 70 87 e2                                      add r7, r7, #4
005ede30  03 00 91 e7                                      ldr r0, [r1, r3]
005ede34  ff 48 c0 e3                                      bic r4, r0, #0xff0000
005ede38  ff 04 c0 e3                                      bic r0, r0, #0xff000000
005ede3c  ff 0c c0 e3                                      bic r0, r0, #0xff00
005ede40  24 44 a0 e1                                      lsr r4, r4, #8
005ede44  00 04 84 e1                                      orr r0, r4, r0, lsl #8
005ede48  03 00 8c e7                                      str r0, [ip, r3]
005ede4c  04 30 83 e2                                      add r3, r3, #4
005ede50  07 00 53 e1                                      cmp r3, r7
005ede54  f5 ff ff 1a                                      bne #0x5ede30
005ede58  03 40 8c e0                                      add r4, ip, r3
005ede5c  03 00 12 e3                                      tst r2, #3
005ede60  19 00 00 0a                                      beq #0x5edecc
005ede64  01 30 d5 e5                                      ldrb r3, [r5, #1]
005ede68  06 21 d1 e7                                      ldrb r2, [r1, r6, lsl #2]
005ede6c  01 00 a0 e3                                      mov r0, #1
005ede70  04 30 cd e5                                      strb r3, [sp, #4]
005ede74  05 20 cd e5                                      strb r2, [sp, #5]
005ede78  b4 30 dd e1                                      ldrh r3, [sp, #4]
005ede7c  b0 30 c4 e1                                      strh r3, [r4]
005ede80  d5 ff ff ea                                      b #0x5edddc
005ede84  05 00 51 e1                                      cmp r1, r5
005ede88  07 30 a0 11                                      movne r3, r7
005ede8c  04 70 8d 12                                      addne r7, sp, #4
005ede90  0d 00 00 0a                                      beq #0x5edecc
005ede94  04 00 80 e2                                      add r0, r0, #4
005ede98  04 20 50 e5                                      ldrb r2, [r0, #-4]
005ede9c  01 60 50 e5                                      ldrb r6, [r0, #-1]
005edea0  02 40 50 e5                                      ldrb r4, [r0, #-2]
005edea4  03 10 50 e5                                      ldrb r1, [r0, #-3]
005edea8  04 60 cd e5                                      strb r6, [sp, #4]
005edeac  05 40 cd e5                                      strb r4, [sp, #5]
005edeb0  06 10 cd e5                                      strb r1, [sp, #6]
005edeb4  07 20 cd e5                                      strb r2, [sp, #7]
005edeb8  00 20 97 e5                                      ldr r2, [r7]
005edebc  00 00 55 e1                                      cmp r5, r0
005edec0  03 20 8c e7                                      str r2, [ip, r3]
005edec4  04 30 83 e2                                      add r3, r3, #4
005edec8  f1 ff ff 1a                                      bne #0x5ede94
005edecc  01 00 a0 e3                                      mov r0, #1
005eded0  c1 ff ff ea                                      b #0x5edddc
; mapping-symbol data/literal pool
005eded4  e8 6c 3a 00 34 1f 00 00                          .byte 0xe8, 0x6c, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x005ededc, declared_size=248, range_size=248, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZNK6glitch5video12pixel_format12_GLOBAL__N_128SAlphaIndexedPackedConverterINS2_16SPackedConverterILNS2_23E_PACKED_CONVERTER_TYPEE1ELS5_2EEENS2_26SRGBUpscalePackedConverterIS6_NS2_20SPackedConverterBaseEEEEclEj
; demangled: glitch::video::pixel_format::(anonymous namespace)::SAlphaIndexedPackedConverter<glitch::video::pixel_format::(anonymous namespace)::SPackedConverter<(glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1, (glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)2>, glitch::video::pixel_format::(anonymous namespace)::SRGBUpscalePackedConverter<glitch::video::pixel_format::(anonymous namespace)::SPackedConverter<(glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1, (glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)2>, glitch::video::pixel_format::(anonymous namespace)::SPackedConverterBase> >::operator()(unsigned int) const
; decoder-mode: arm
005ededc  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005edee0  1c 80 90 e5                                      ldr r8, [r0, #0x1c]
005edee4  20 50 90 e5                                      ldr r5, [r0, #0x20]
005edee8  10 20 d0 e5                                      ldrb r2, [r0, #0x10]
005edeec  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
005edef0  24 b0 90 e5                                      ldr fp, [r0, #0x24]
005edef4  14 70 d0 e5                                      ldrb r7, [r0, #0x14]
005edef8  15 60 d0 e5                                      ldrb r6, [r0, #0x15]
005edefc  12 c0 d0 e5                                      ldrb ip, [r0, #0x12]
005edf00  08 80 01 e0                                      and r8, r1, r8
005edf04  05 50 01 e0                                      and r5, r1, r5
005edf08  38 82 a0 e1                                      lsr r8, r8, r2
005edf0c  35 53 a0 e1                                      lsr r5, r5, r3
005edf10  16 40 d0 e5                                      ldrb r4, [r0, #0x16]
005edf14  0b b0 01 e0                                      and fp, r1, fp
005edf18  18 87 a0 e1                                      lsl r8, r8, r7
005edf1c  15 56 a0 e1                                      lsl r5, r5, r6
005edf20  3b bc a0 e1                                      lsr fp, fp, ip
005edf24  1b b4 a0 e1                                      lsl fp, fp, r4
005edf28  40 30 90 e5                                      ldr r3, [r0, #0x40]
005edf2c  28 90 90 e5                                      ldr sb, [r0, #0x28]
005edf30  13 40 d0 e5                                      ldrb r4, [r0, #0x13]
005edf34  34 c0 d0 e5                                      ldrb ip, [r0, #0x34]
005edf38  2c 70 90 e5                                      ldr r7, [r0, #0x2c]
005edf3c  03 30 01 e0                                      and r3, r1, r3
005edf40  09 90 01 e0                                      and sb, r1, sb
005edf44  35 20 d0 e5                                      ldrb r2, [r0, #0x35]
005edf48  39 9c a0 e1                                      lsr sb, sb, ip
005edf4c  33 34 a0 e1                                      lsr r3, r3, r4
005edf50  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
005edf54  07 70 01 e0                                      and r7, r1, r7
005edf58  83 30 a0 e1                                      lsl r3, r3, #1
005edf5c  37 72 a0 e1                                      lsr r7, r7, r2
005edf60  b3 20 9c e1                                      ldrh r2, [ip, r3]
005edf64  30 30 90 e5                                      ldr r3, [r0, #0x30]
005edf68  37 a0 d0 e5                                      ldrb sl, [r0, #0x37]
005edf6c  38 60 d0 e5                                      ldrb r6, [r0, #0x38]
005edf70  36 40 d0 e5                                      ldrb r4, [r0, #0x36]
005edf74  39 c0 d0 e5                                      ldrb ip, [r0, #0x39]
005edf78  03 10 01 e0                                      and r1, r1, r3
005edf7c  3a 30 d0 e5                                      ldrb r3, [r0, #0x3a]
005edf80  19 8a 88 e1                                      orr r8, r8, sb, lsl sl
005edf84  17 56 85 e1                                      orr r5, r5, r7, lsl r6
005edf88  31 14 a0 e1                                      lsr r1, r1, r4
005edf8c  0c 60 90 e5                                      ldr r6, [r0, #0xc]
005edf90  17 70 d0 e5                                      ldrb r7, [r0, #0x17]
005edf94  11 cc 8b e1                                      orr ip, fp, r1, lsl ip
005edf98  52 33 a0 e1                                      asr r3, r2, r3
005edf9c  13 37 06 e0                                      and r3, r6, r3, lsl r7
005edfa0  00 a0 90 e5                                      ldr sl, [r0]
005edfa4  04 60 90 e5                                      ldr r6, [r0, #4]
005edfa8  18 10 90 e5                                      ldr r1, [r0, #0x18]
005edfac  08 20 90 e5                                      ldr r2, [r0, #8]
005edfb0  0a 80 08 e0                                      and r8, r8, sl
005edfb4  06 50 05 e0                                      and r5, r5, r6
005edfb8  05 00 88 e1                                      orr r0, r8, r5
005edfbc  01 00 80 e1                                      orr r0, r0, r1
005edfc0  02 c0 0c e0                                      and ip, ip, r2
005edfc4  0c 00 80 e1                                      orr r0, r0, ip
005edfc8  03 00 80 e1                                      orr r0, r0, r3
005edfcc  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
005edfd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005edfd4, declared_size=272, range_size=272, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZNK6glitch5video12pixel_format12_GLOBAL__N_128SAlphaUpscalePackedConverterINS2_16SPackedConverterILNS2_23E_PACKED_CONVERTER_TYPEE1ELS5_1EEENS2_26SRGBUpscalePackedConverterIS6_NS2_20SPackedConverterBaseEEEEclEj
; demangled: glitch::video::pixel_format::(anonymous namespace)::SAlphaUpscalePackedConverter<glitch::video::pixel_format::(anonymous namespace)::SPackedConverter<(glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1, (glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1>, glitch::video::pixel_format::(anonymous namespace)::SRGBUpscalePackedConverter<glitch::video::pixel_format::(anonymous namespace)::SPackedConverter<(glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1, (glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1>, glitch::video::pixel_format::(anonymous namespace)::SPackedConverterBase> >::operator()(unsigned int) const
; decoder-mode: arm
005edfd4  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005edfd8  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005edfdc  10 20 d0 e5                                      ldrb r2, [r0, #0x10]
005edfe0  24 70 90 e5                                      ldr r7, [r0, #0x24]
005edfe4  12 60 d0 e5                                      ldrb r6, [r0, #0x12]
005edfe8  05 50 01 e0                                      and r5, r1, r5
005edfec  07 70 01 e0                                      and r7, r1, r7
005edff0  35 52 a0 e1                                      lsr r5, r5, r2
005edff4  16 20 d0 e5                                      ldrb r2, [r0, #0x16]
005edff8  37 66 a0 e1                                      lsr r6, r7, r6
005edffc  16 22 a0 e1                                      lsl r2, r6, r2
005ee000  3c 80 90 e5                                      ldr r8, [r0, #0x3c]
005ee004  20 b0 90 e5                                      ldr fp, [r0, #0x20]
005ee008  13 c0 d0 e5                                      ldrb ip, [r0, #0x13]
005ee00c  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
005ee010  17 90 d0 e5                                      ldrb sb, [r0, #0x17]
005ee014  14 a0 d0 e5                                      ldrb sl, [r0, #0x14]
005ee018  15 40 d0 e5                                      ldrb r4, [r0, #0x15]
005ee01c  08 80 01 e0                                      and r8, r1, r8
005ee020  0b b0 01 e0                                      and fp, r1, fp
005ee024  38 8c a0 e1                                      lsr r8, r8, ip
005ee028  3b b3 a0 e1                                      lsr fp, fp, r3
005ee02c  18 89 a0 e1                                      lsl r8, r8, sb
005ee030  1b b4 a0 e1                                      lsl fp, fp, r4
005ee034  15 5a a0 e1                                      lsl r5, r5, sl
005ee038  08 d0 4d e2                                      sub sp, sp, #8
005ee03c  04 20 8d e5                                      str r2, [sp, #4]
005ee040  28 70 90 e5                                      ldr r7, [r0, #0x28]
005ee044  34 30 d0 e5                                      ldrb r3, [r0, #0x34]
005ee048  40 90 90 e5                                      ldr sb, [r0, #0x40]
005ee04c  07 70 01 e0                                      and r7, r1, r7
005ee050  37 73 a0 e1                                      lsr r7, r7, r3
005ee054  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
005ee058  35 c0 d0 e5                                      ldrb ip, [r0, #0x35]
005ee05c  3a 20 d0 e5                                      ldrb r2, [r0, #0x3a]
005ee060  03 40 01 e0                                      and r4, r1, r3
005ee064  3b a0 d0 e5                                      ldrb sl, [r0, #0x3b]
005ee068  37 60 d0 e5                                      ldrb r6, [r0, #0x37]
005ee06c  38 30 d0 e5                                      ldrb r3, [r0, #0x38]
005ee070  34 cc a0 e1                                      lsr ip, r4, ip
005ee074  09 90 01 e0                                      and sb, r1, sb
005ee078  30 40 90 e5                                      ldr r4, [r0, #0x30]
005ee07c  39 92 a0 e1                                      lsr sb, sb, r2
005ee080  36 20 d0 e5                                      ldrb r2, [r0, #0x36]
005ee084  19 8a 88 e1                                      orr r8, r8, sb, lsl sl
005ee088  17 56 85 e1                                      orr r5, r5, r7, lsl r6
005ee08c  04 10 01 e0                                      and r1, r1, r4
005ee090  39 60 d0 e5                                      ldrb r6, [r0, #0x39]
005ee094  1c 33 8b e1                                      orr r3, fp, ip, lsl r3
005ee098  04 c0 9d e5                                      ldr ip, [sp, #4]
005ee09c  31 22 a0 e1                                      lsr r2, r1, r2
005ee0a0  12 26 8c e1                                      orr r2, ip, r2, lsl r6
005ee0a4  0c a0 90 e5                                      ldr sl, [r0, #0xc]
005ee0a8  00 60 90 e5                                      ldr r6, [r0]
005ee0ac  18 40 90 e5                                      ldr r4, [r0, #0x18]
005ee0b0  04 c0 90 e5                                      ldr ip, [r0, #4]
005ee0b4  08 10 90 e5                                      ldr r1, [r0, #8]
005ee0b8  0a 80 08 e0                                      and r8, r8, sl
005ee0bc  06 50 05 e0                                      and r5, r5, r6
005ee0c0  05 00 88 e1                                      orr r0, r8, r5
005ee0c4  04 00 80 e1                                      orr r0, r0, r4
005ee0c8  0c 30 03 e0                                      and r3, r3, ip
005ee0cc  03 00 80 e1                                      orr r0, r0, r3
005ee0d0  01 20 02 e0                                      and r2, r2, r1
005ee0d4  02 00 80 e1                                      orr r0, r0, r2
005ee0d8  08 d0 8d e2                                      add sp, sp, #8
005ee0dc  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
005ee0e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ee104, declared_size=776, range_size=776, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format16unpackPalettizedEPKvjhNS0_14E_PIXEL_FORMATES3_Pvjjjb
; demangled: glitch::video::pixel_format::unpackPalettized(void const*, unsigned int, unsigned char, glitch::video::E_PIXEL_FORMAT, void const*, void*, unsigned int, unsigned int, unsigned int, bool)
; decoder-mode: arm
005ee104  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ee108  14 d0 4d e2                                      sub sp, sp, #0x14
005ee10c  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005ee110  d8 52 9f e5                                      ldr r5, [pc, #0x2d8]
005ee114  08 10 8d e5                                      str r1, [sp, #8]
005ee118  07 00 50 e1                                      cmp r0, r7
005ee11c  05 50 8f e0                                      add r5, pc, r5
005ee120  38 40 9d e5                                      ldr r4, [sp, #0x38]
005ee124  40 90 9d e5                                      ldr sb, [sp, #0x40]
005ee128  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005ee12c  48 a0 9d e5                                      ldr sl, [sp, #0x48]
005ee130  4c 10 dd e5                                      ldrb r1, [sp, #0x4c]
005ee134  a7 00 00 0a                                      beq #0x5ee3d8
005ee138  01 60 42 e2                                      sub r6, r2, #1
005ee13c  02 60 16 e0                                      ands r6, r6, r2
005ee140  01 00 00 1a                                      bne #0x5ee14c
005ee144  08 00 52 e3                                      cmp r2, #8
005ee148  08 00 00 9a                                      bls #0x5ee170
005ee14c  a0 02 9f e5                                      ldr r0, [pc, #0x2a0]
005ee150  a0 12 9f e5                                      ldr r1, [pc, #0x2a0]
005ee154  03 20 a0 e3                                      mov r2, #3
005ee158  00 00 8f e0                                      add r0, pc, r0
005ee15c  01 10 8f e0                                      add r1, pc, r1
005ee160  e0 72 00 eb                                      bl #0x60ace8
005ee164  00 00 a0 e3                                      mov r0, #0
005ee168  14 d0 8d e2                                      add sp, sp, #0x14
005ee16c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ee170  84 82 9f e5                                      ldr r8, [pc, #0x284]
005ee174  08 50 95 e7                                      ldr r5, [r5, r8]
005ee178  28 80 a0 e3                                      mov r8, #0x28
005ee17c  98 53 25 e0                                      mla r5, r8, r3, r5
005ee180  15 50 d5 e5                                      ldrb r5, [r5, #0x15]
005ee184  02 00 55 e3                                      cmp r5, #2
005ee188  0e 00 00 0a                                      beq #0x5ee1c8
005ee18c  04 00 55 e3                                      cmp r5, #4
005ee190  61 00 00 0a                                      beq #0x5ee31c
005ee194  01 00 55 e3                                      cmp r5, #1
005ee198  37 00 00 0a                                      beq #0x5ee27c
005ee19c  73 20 ff e6                                      uxth r2, r3
005ee1a0  27 00 52 e3                                      cmp r2, #0x27
005ee1a4  85 00 00 1a                                      bne #0x5ee3c0
005ee1a8  50 12 9f e5                                      ldr r1, [pc, #0x250]
005ee1ac  01 10 8f e0                                      add r1, pc, r1
005ee1b0  4c 02 9f e5                                      ldr r0, [pc, #0x24c]
005ee1b4  03 20 a0 e3                                      mov r2, #3
005ee1b8  00 00 8f e0                                      add r0, pc, r0
005ee1bc  c9 72 00 eb                                      bl #0x60ace8
005ee1c0  00 00 a0 e3                                      mov r0, #0
005ee1c4  e7 ff ff ea                                      b #0x5ee168
005ee1c8  00 80 e0 e3                                      mvn r8, #0
005ee1cc  18 82 e0 e1                                      mvn r8, r8, lsl r2
005ee1d0  00 00 51 e3                                      cmp r1, #0
005ee1d4  09 50 a0 11                                      movne r5, sb
005ee1d8  01 30 4a 12                                      subne r3, sl, #1
005ee1dc  00 50 65 12                                      rsbne r5, r5, #0
005ee1e0  0c 90 8d e5                                      str sb, [sp, #0xc]
005ee1e4  99 73 27 10                                      mlane r7, sb, r3, r7
005ee1e8  0c 50 8d 15                                      strne r5, [sp, #0xc]
005ee1ec  00 00 5a e3                                      cmp sl, #0
005ee1f0  78 80 ef e6                                      uxtb r8, r8
005ee1f4  1e 00 00 0a                                      beq #0x5ee274
005ee1f8  08 90 62 e2                                      rsb sb, r2, #8
005ee1fc  79 90 ef e6                                      uxtb sb, sb
005ee200  07 b0 a0 e1                                      mov fp, r7
005ee204  04 00 8d e5                                      str r0, [sp, #4]
005ee208  09 10 a0 e1                                      mov r1, sb
005ee20c  00 00 5c e3                                      cmp ip, #0
005ee210  00 30 a0 13                                      movne r3, #0
005ee214  0d 00 00 0a                                      beq #0x5ee250
005ee218  00 60 d0 e5                                      ldrb r6, [r0]
005ee21c  00 00 51 e3                                      cmp r1, #0
005ee220  83 50 a0 e1                                      lsl r5, r3, #1
005ee224  56 61 08 e0                                      and r6, r8, r6, asr r1
005ee228  51 12 a0 11                                      asrne r1, r1, r2
005ee22c  86 60 a0 e1                                      lsl r6, r6, #1
005ee230  b6 60 94 e1                                      ldrh r6, [r4, r6]
005ee234  01 30 83 e2                                      add r3, r3, #1
005ee238  01 00 80 02                                      addeq r0, r0, #1
005ee23c  09 10 a0 01                                      moveq r1, sb
005ee240  71 10 ef 16                                      uxtbne r1, r1
005ee244  0c 00 53 e1                                      cmp r3, ip
005ee248  b5 60 87 e1                                      strh r6, [r7, r5]
005ee24c  f1 ff ff 1a                                      bne #0x5ee218
005ee250  01 a0 5a e2                                      subs sl, sl, #1
005ee254  06 00 00 0a                                      beq #0x5ee274
005ee258  28 00 9d e9                                      ldmib sp, {r3, r5}
005ee25c  05 00 83 e0                                      add r0, r3, r5
005ee260  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005ee264  04 00 8d e5                                      str r0, [sp, #4]
005ee268  03 b0 8b e0                                      add fp, fp, r3
005ee26c  0b 70 a0 e1                                      mov r7, fp
005ee270  e5 ff ff ea                                      b #0x5ee20c
005ee274  01 00 a0 e3                                      mov r0, #1
005ee278  ba ff ff ea                                      b #0x5ee168
005ee27c  15 52 a0 e1                                      lsl r5, r5, r2
005ee280  00 00 51 e3                                      cmp r1, #0
005ee284  01 30 4a 12                                      subne r3, sl, #1
005ee288  99 73 27 10                                      mlane r7, sb, r3, r7
005ee28c  09 30 a0 11                                      movne r3, sb
005ee290  00 30 63 12                                      rsbne r3, r3, #0
005ee294  01 60 45 e2                                      sub r6, r5, #1
005ee298  04 90 8d e5                                      str sb, [sp, #4]
005ee29c  04 30 8d 15                                      strne r3, [sp, #4]
005ee2a0  00 00 5a e3                                      cmp sl, #0
005ee2a4  76 60 ef e6                                      uxtb r6, r6
005ee2a8  f1 ff ff 0a                                      beq #0x5ee274
005ee2ac  08 80 62 e2                                      rsb r8, r2, #8
005ee2b0  78 80 ef e6                                      uxtb r8, r8
005ee2b4  07 90 a0 e1                                      mov sb, r7
005ee2b8  00 b0 a0 e1                                      mov fp, r0
005ee2bc  08 10 a0 e1                                      mov r1, r8
005ee2c0  00 00 5c e3                                      cmp ip, #0
005ee2c4  00 30 a0 13                                      movne r3, #0
005ee2c8  0b 00 00 0a                                      beq #0x5ee2fc
005ee2cc  00 50 d0 e5                                      ldrb r5, [r0]
005ee2d0  00 00 51 e3                                      cmp r1, #0
005ee2d4  01 00 80 02                                      addeq r0, r0, #1
005ee2d8  55 51 06 e0                                      and r5, r6, r5, asr r1
005ee2dc  51 12 a0 11                                      asrne r1, r1, r2
005ee2e0  05 50 d4 e7                                      ldrb r5, [r4, r5]
005ee2e4  08 10 a0 01                                      moveq r1, r8
005ee2e8  71 10 ef 16                                      uxtbne r1, r1
005ee2ec  03 50 c7 e7                                      strb r5, [r7, r3]
005ee2f0  01 30 83 e2                                      add r3, r3, #1
005ee2f4  0c 00 53 e1                                      cmp r3, ip
005ee2f8  f3 ff ff 1a                                      bne #0x5ee2cc
005ee2fc  01 a0 5a e2                                      subs sl, sl, #1
005ee300  db ff ff 0a                                      beq #0x5ee274
005ee304  28 00 9d e9                                      ldmib sp, {r3, r5}
005ee308  05 00 8b e0                                      add r0, fp, r5
005ee30c  03 90 89 e0                                      add sb, sb, r3
005ee310  09 70 a0 e1                                      mov r7, sb
005ee314  00 b0 a0 e1                                      mov fp, r0
005ee318  e8 ff ff ea                                      b #0x5ee2c0
005ee31c  00 60 e0 e3                                      mvn r6, #0
005ee320  16 62 e0 e1                                      mvn r6, r6, lsl r2
005ee324  00 00 51 e3                                      cmp r1, #0
005ee328  09 50 a0 11                                      movne r5, sb
005ee32c  01 30 4a 12                                      subne r3, sl, #1
005ee330  00 50 65 12                                      rsbne r5, r5, #0
005ee334  04 90 8d e5                                      str sb, [sp, #4]
005ee338  99 73 27 10                                      mlane r7, sb, r3, r7
005ee33c  04 50 8d 15                                      strne r5, [sp, #4]
005ee340  00 00 5a e3                                      cmp sl, #0
005ee344  76 60 ef e6                                      uxtb r6, r6
005ee348  c9 ff ff 0a                                      beq #0x5ee274
005ee34c  08 80 62 e2                                      rsb r8, r2, #8
005ee350  78 80 ef e6                                      uxtb r8, r8
005ee354  07 90 a0 e1                                      mov sb, r7
005ee358  00 b0 a0 e1                                      mov fp, r0
005ee35c  08 10 a0 e1                                      mov r1, r8
005ee360  00 00 5c e3                                      cmp ip, #0
005ee364  00 30 a0 13                                      movne r3, #0
005ee368  0b 00 00 0a                                      beq #0x5ee39c
005ee36c  00 50 d0 e5                                      ldrb r5, [r0]
005ee370  00 00 51 e3                                      cmp r1, #0
005ee374  01 00 80 02                                      addeq r0, r0, #1
005ee378  55 51 06 e0                                      and r5, r6, r5, asr r1
005ee37c  51 12 a0 11                                      asrne r1, r1, r2
005ee380  05 51 94 e7                                      ldr r5, [r4, r5, lsl #2]
005ee384  08 10 a0 01                                      moveq r1, r8
005ee388  71 10 ef 16                                      uxtbne r1, r1
005ee38c  03 51 87 e7                                      str r5, [r7, r3, lsl #2]
005ee390  01 30 83 e2                                      add r3, r3, #1
005ee394  0c 00 53 e1                                      cmp r3, ip
005ee398  f3 ff ff 1a                                      bne #0x5ee36c
005ee39c  01 a0 5a e2                                      subs sl, sl, #1
005ee3a0  b3 ff ff 0a                                      beq #0x5ee274
005ee3a4  08 30 9d e5                                      ldr r3, [sp, #8]
005ee3a8  04 50 9d e5                                      ldr r5, [sp, #4]
005ee3ac  03 00 8b e0                                      add r0, fp, r3
005ee3b0  05 90 89 e0                                      add sb, sb, r5
005ee3b4  09 70 a0 e1                                      mov r7, sb
005ee3b8  00 b0 a0 e1                                      mov fp, r0
005ee3bc  e7 ff ff ea                                      b #0x5ee360
005ee3c0  06 00 a0 e1                                      mov r0, r6
005ee3c4  00 30 8d e5                                      str r3, [sp]
005ee3c8  5d fd ff eb                                      bl #0x5ed944
005ee3cc  00 30 9d e5                                      ldr r3, [sp]
005ee3d0  03 11 90 e7                                      ldr r1, [r0, r3, lsl #2]
005ee3d4  75 ff ff ea                                      b #0x5ee1b0
005ee3d8  28 00 9f e5                                      ldr r0, [pc, #0x28]
005ee3dc  03 10 a0 e3                                      mov r1, #3
005ee3e0  00 00 8f e0                                      add r0, pc, r0
005ee3e4  2d 72 00 eb                                      bl #0x60aca0
005ee3e8  00 00 a0 e3                                      mov r0, #0
005ee3ec  5d ff ff ea                                      b #0x5ee168
; mapping-symbol data/literal pool
005ee3f0  74 69 3a 00 d8 5b 2f 00 ec 5b 2f 00 34 1f 00 00  .byte 0x74, 0x69, 0x3a, 0x00, 0xd8, 0x5b, 0x2f, 0x00, 0xec, 0x5b, 0x2f, 0x00, 0x34, 0x1f, 0x00, 0x00
005ee400  b4 82 2d 00 a8 5b 2f 00 18 59 2f 00              .byte 0xb4, 0x82, 0x2d, 0x00, 0xa8, 0x5b, 0x2f, 0x00, 0x18, 0x59, 0x2f, 0x00

; FUNCTION 0x005ee40c, declared_size=476, range_size=476, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb
; demangled: glitch::video::pixel_format::(anonymous namespace)::copy(glitch::video::E_PIXEL_FORMAT, void const*, unsigned int, void*, unsigned int, unsigned int, unsigned int, bool)
; decoder-mode: arm
005ee40c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ee410  bc 61 9f e5                                      ldr r6, [pc, #0x1bc]
005ee414  bc 91 9f e5                                      ldr sb, [pc, #0x1bc]
005ee418  00 70 a0 e1                                      mov r7, r0
005ee41c  06 60 8f e0                                      add r6, pc, r6
005ee420  28 00 a0 e3                                      mov r0, #0x28
005ee424  90 07 00 e0                                      mul r0, r0, r7
005ee428  09 c0 96 e7                                      ldr ip, [r6, sb]
005ee42c  02 50 a0 e1                                      mov r5, r2
005ee430  01 40 a0 e1                                      mov r4, r1
005ee434  00 20 9c e7                                      ldr r2, [ip, r0]
005ee438  03 80 a0 e1                                      mov r8, r3
005ee43c  34 b0 dd e5                                      ldrb fp, [sp, #0x34]
005ee440  08 00 12 e3                                      tst r2, #8
005ee444  01 00 00 0a                                      beq #0x5ee450
005ee448  00 00 5b e3                                      cmp fp, #0
005ee44c  29 00 00 1a                                      bne #0x5ee4f8
005ee450  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005ee454  07 00 a0 e1                                      mov r0, r7
005ee458  a3 fd ff eb                                      bl #0x5edaec
005ee45c  09 30 96 e7                                      ldr r3, [r6, sb]
005ee460  28 20 a0 e3                                      mov r2, #0x28
005ee464  00 a0 a0 e1                                      mov sl, r0
005ee468  92 37 27 e0                                      mla r7, r2, r7, r3
005ee46c  30 00 9d e5                                      ldr r0, [sp, #0x30]
005ee470  25 10 d7 e5                                      ldrb r1, [r7, #0x25]
005ee474  f4 81 f4 eb                                      bl #0x30ec4c
005ee478  08 00 54 e1                                      cmp r4, r8
005ee47c  00 60 a0 e1                                      mov r6, r0
005ee480  22 00 00 0a                                      beq #0x5ee510
005ee484  00 00 5b e3                                      cmp fp, #0
005ee488  0f 00 00 0a                                      beq #0x5ee4cc
005ee48c  28 20 9d e5                                      ldr r2, [sp, #0x28]
005ee490  01 30 46 e2                                      sub r3, r6, #1
005ee494  92 83 28 e0                                      mla r8, r2, r3, r8
005ee498  00 70 62 e2                                      rsb r7, r2, #0
005ee49c  00 00 56 e3                                      cmp r6, #0
005ee4a0  07 00 00 0a                                      beq #0x5ee4c4
005ee4a4  08 00 a0 e1                                      mov r0, r8
005ee4a8  04 10 a0 e1                                      mov r1, r4
005ee4ac  0a 20 a0 e1                                      mov r2, sl
005ee4b0  ec 80 f4 eb                                      bl #0x30e868
005ee4b4  01 60 56 e2                                      subs r6, r6, #1
005ee4b8  05 40 84 e0                                      add r4, r4, r5
005ee4bc  07 80 88 e0                                      add r8, r8, r7
005ee4c0  f7 ff ff 1a                                      bne #0x5ee4a4
005ee4c4  01 00 a0 e3                                      mov r0, #1
005ee4c8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ee4cc  28 30 9d e5                                      ldr r3, [sp, #0x28]
005ee4d0  03 00 5a e1                                      cmp sl, r3
005ee4d4  05 00 5a 01                                      cmpeq sl, r5
005ee4d8  28 70 9d 15                                      ldrne r7, [sp, #0x28]
005ee4dc  ee ff ff 1a                                      bne #0x5ee49c
005ee4e0  96 0a 02 e0                                      mul r2, r6, sl
005ee4e4  08 00 a0 e1                                      mov r0, r8
005ee4e8  04 10 a0 e1                                      mov r1, r4
005ee4ec  dd 80 f4 eb                                      bl #0x30e868
005ee4f0  01 00 a0 e3                                      mov r0, #1
005ee4f4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ee4f8  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
005ee4fc  03 10 a0 e3                                      mov r1, #3
005ee500  00 00 8f e0                                      add r0, pc, r0
005ee504  e5 71 00 eb                                      bl #0x60aca0
005ee508  00 00 a0 e3                                      mov r0, #0
005ee50c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ee510  28 20 9d e5                                      ldr r2, [sp, #0x28]
005ee514  02 00 55 e1                                      cmp r5, r2
005ee518  25 00 00 1a                                      bne #0x5ee5b4
005ee51c  00 00 5b e3                                      cmp fp, #0
005ee520  e7 ff ff 0a                                      beq #0x5ee4c4
005ee524  4a 17 fd eb                                      bl #0x534254
005ee528  00 90 a0 e1                                      mov sb, r0
005ee52c  01 00 a0 e3                                      mov r0, #1
005ee530  4c 17 fd eb                                      bl #0x534268
005ee534  0a 00 a0 e1                                      mov r0, sl
005ee538  2d 18 fd eb                                      bl #0x5345f4
005ee53c  01 60 46 e2                                      sub r6, r6, #1
005ee540  96 45 26 e0                                      mla r6, r6, r5, r4
005ee544  00 70 a0 e1                                      mov r7, r0
005ee548  06 00 54 e1                                      cmp r4, r6
005ee54c  10 00 00 8a                                      bhi #0x5ee594
005ee550  00 80 65 e2                                      rsb r8, r5, #0
005ee554  06 10 a0 e1                                      mov r1, r6
005ee558  0a 20 a0 e1                                      mov r2, sl
005ee55c  07 00 a0 e1                                      mov r0, r7
005ee560  c0 80 f4 eb                                      bl #0x30e868
005ee564  04 10 a0 e1                                      mov r1, r4
005ee568  06 00 a0 e1                                      mov r0, r6
005ee56c  0a 20 a0 e1                                      mov r2, sl
005ee570  bc 80 f4 eb                                      bl #0x30e868
005ee574  08 60 86 e0                                      add r6, r6, r8
005ee578  04 00 a0 e1                                      mov r0, r4
005ee57c  07 10 a0 e1                                      mov r1, r7
005ee580  0a 20 a0 e1                                      mov r2, sl
005ee584  05 40 84 e0                                      add r4, r4, r5
005ee588  b6 80 f4 eb                                      bl #0x30e868
005ee58c  04 00 56 e1                                      cmp r6, r4
005ee590  ef ff ff 2a                                      bhs #0x5ee554
005ee594  00 00 57 e3                                      cmp r7, #0
005ee598  01 00 00 0a                                      beq #0x5ee5a4
005ee59c  07 00 a0 e1                                      mov r0, r7
005ee5a0  38 18 fd eb                                      bl #0x534688
005ee5a4  09 00 a0 e1                                      mov r0, sb
005ee5a8  2e 17 fd eb                                      bl #0x534268
005ee5ac  01 00 a0 e3                                      mov r0, #1
005ee5b0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ee5b4  24 00 9f e5                                      ldr r0, [pc, #0x24]
005ee5b8  24 10 9f e5                                      ldr r1, [pc, #0x24]
005ee5bc  03 20 a0 e3                                      mov r2, #3
005ee5c0  00 00 8f e0                                      add r0, pc, r0
005ee5c4  01 10 8f e0                                      add r1, pc, r1
005ee5c8  c6 71 00 eb                                      bl #0x60ace8
005ee5cc  00 00 a0 e3                                      mov r0, #0
005ee5d0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005ee5d4  74 66 3a 00 34 1f 00 00 80 58 2f 00 f0 57 2f 00  .byte 0x74, 0x66, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x80, 0x58, 0x2f, 0x00, 0xf0, 0x57, 0x2f, 0x00
005ee5e4  0c 58 2f 00                                      .byte 0x0c, 0x58, 0x2f, 0x00

; FUNCTION 0x005ee5e8, declared_size=424, range_size=424, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_116SPackedConverterILNS2_23E_PACKED_CONVERTER_TYPEE0ELS4_2EEC1ENS0_14E_PIXEL_FORMATES6_
; demangled: glitch::video::pixel_format::(anonymous namespace)::SPackedConverter<(glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)0, (glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)2>::SPackedConverter(glitch::video::E_PIXEL_FORMAT, glitch::video::E_PIXEL_FORMAT)
; decoder-mode: arm
005ee5e8  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
005ee5ec  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005ee5f0  88 b1 9f e5                                      ldr fp, [pc, #0x188]
005ee5f4  03 30 8f e0                                      add r3, pc, r3
005ee5f8  28 40 a0 e3                                      mov r4, #0x28
005ee5fc  94 02 05 e0                                      mul r5, r4, r2
005ee600  0b c0 93 e7                                      ldr ip, [r3, fp]
005ee604  08 d0 4d e2                                      sub sp, sp, #8
005ee608  00 20 8d e5                                      str r2, [sp]
005ee60c  00 20 a0 e1                                      mov r2, r0
005ee610  05 00 9c e7                                      ldr r0, [ip, r5]
005ee614  04 10 8d e5                                      str r1, [sp, #4]
005ee618  01 00 10 e3                                      tst r0, #1
005ee61c  04 00 00 0a                                      beq #0x5ee634
005ee620  94 01 04 e0                                      mul r4, r4, r1
005ee624  04 10 9c e7                                      ldr r1, [ip, r4]
005ee628  01 00 11 e3                                      tst r1, #1
005ee62c  00 10 e0 03                                      mvneq r1, #0
005ee630  00 00 00 0a                                      beq #0x5ee638
005ee634  00 10 a0 e3                                      mov r1, #0
005ee638  18 10 82 e5                                      str r1, [r2, #0x18]
005ee63c  0b 00 93 e7                                      ldr r0, [r3, fp]
005ee640  00 10 9d e5                                      ldr r1, [sp]
005ee644  28 40 a0 e3                                      mov r4, #0x28
005ee648  03 a0 a0 e1                                      mov sl, r3
005ee64c  94 01 2c e0                                      mla ip, r4, r1, r0
005ee650  04 10 9d e5                                      ldr r1, [sp, #4]
005ee654  0c 90 a0 e1                                      mov sb, ip
005ee658  94 01 24 e0                                      mla r4, r4, r1, r0
005ee65c  02 00 a0 e1                                      mov r0, r2
005ee660  00 10 a0 e3                                      mov r1, #0
005ee664  01 60 89 e0                                      add r6, sb, r1
005ee668  18 30 d4 e5                                      ldrb r3, [r4, #0x18]
005ee66c  18 50 dc e5                                      ldrb r5, [ip, #0x18]
005ee670  04 80 96 e5                                      ldr r8, [r6, #4]
005ee674  1c 70 dc e5                                      ldrb r7, [ip, #0x1c]
005ee678  1c 60 d4 e5                                      ldrb r6, [r4, #0x1c]
005ee67c  05 00 53 e1                                      cmp r3, r5
005ee680  01 80 82 e7                                      str r8, [r2, r1]
005ee684  10 60 c0 e5                                      strb r6, [r0, #0x10]
005ee688  14 70 c0 e5                                      strb r7, [r0, #0x14]
005ee68c  27 00 00 9a                                      bls #0x5ee730
005ee690  06 30 83 e0                                      add r3, r3, r6
005ee694  03 50 65 e0                                      rsb r5, r5, r3
005ee698  10 50 c0 e5                                      strb r5, [r0, #0x10]
005ee69c  04 10 81 e2                                      add r1, r1, #4
005ee6a0  10 00 51 e3                                      cmp r1, #0x10
005ee6a4  01 40 84 e2                                      add r4, r4, #1
005ee6a8  01 00 80 e2                                      add r0, r0, #1
005ee6ac  01 c0 8c e2                                      add ip, ip, #1
005ee6b0  eb ff ff 1a                                      bne #0x5ee664
005ee6b4  04 40 9d e5                                      ldr r4, [sp, #4]
005ee6b8  0b 00 9a e7                                      ldr r0, [sl, fp]
005ee6bc  28 c0 a0 e3                                      mov ip, #0x28
005ee6c0  18 50 92 e5                                      ldr r5, [r2, #0x18]
005ee6c4  9c 04 2c e0                                      mla ip, ip, r4, r0
005ee6c8  0c 40 92 e5                                      ldr r4, [r2, #0xc]
005ee6cc  1b 00 dc e5                                      ldrb r0, [ip, #0x1b]
005ee6d0  01 10 9c e7                                      ldr r1, [ip, r1]
005ee6d4  04 c0 05 e0                                      and ip, r5, r4
005ee6d8  02 00 50 e3                                      cmp r0, #2
005ee6dc  0a 30 a0 e1                                      mov r3, sl
005ee6e0  18 c0 82 e5                                      str ip, [r2, #0x18]
005ee6e4  24 10 82 e5                                      str r1, [r2, #0x24]
005ee6e8  1e 00 00 0a                                      beq #0x5ee768
005ee6ec  04 00 50 e3                                      cmp r0, #4
005ee6f0  17 00 00 0a                                      beq #0x5ee754
005ee6f4  01 00 50 e3                                      cmp r0, #1
005ee6f8  00 10 a0 13                                      movne r1, #0
005ee6fc  20 10 82 15                                      strne r1, [r2, #0x20]
005ee700  0f 00 00 0a                                      beq #0x5ee744
005ee704  00 c0 9d e5                                      ldr ip, [sp]
005ee708  0b 30 93 e7                                      ldr r3, [r3, fp]
005ee70c  28 10 a0 e3                                      mov r1, #0x28
005ee710  02 00 a0 e1                                      mov r0, r2
005ee714  91 3c 23 e0                                      mla r3, r1, ip, r3
005ee718  1b 30 d3 e5                                      ldrb r3, [r3, #0x1b]
005ee71c  10 30 63 e2                                      rsb r3, r3, #0x10
005ee720  1c 30 c2 e5                                      strb r3, [r2, #0x1c]
005ee724  08 d0 8d e2                                      add sp, sp, #8
005ee728  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
005ee72c  1e ff 2f e1                                      bx lr
005ee730  83 00 55 e1                                      cmp r5, r3, lsl #1
005ee734  07 50 85 d0                                      addle r5, r5, r7
005ee738  05 30 63 d0                                      rsble r3, r3, r5
005ee73c  14 30 c0 d5                                      strble r3, [r0, #0x14]
005ee740  d5 ff ff ea                                      b #0x5ee69c
005ee744  38 10 9f e5                                      ldr r1, [pc, #0x38]
005ee748  01 10 8f e0                                      add r1, pc, r1
005ee74c  20 10 82 e5                                      str r1, [r2, #0x20]
005ee750  eb ff ff ea                                      b #0x5ee704
005ee754  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
005ee758  01 10 8f e0                                      add r1, pc, r1
005ee75c  0c 10 81 e2                                      add r1, r1, #0xc
005ee760  20 10 82 e5                                      str r1, [r2, #0x20]
005ee764  e6 ff ff ea                                      b #0x5ee704
005ee768  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
005ee76c  01 10 8f e0                                      add r1, pc, r1
005ee770  04 10 81 e2                                      add r1, r1, #4
005ee774  20 10 82 e5                                      str r1, [r2, #0x20]
005ee778  e1 ff ff ea                                      b #0x5ee704
; mapping-symbol data/literal pool
005ee77c  9c 64 3a 00 34 1f 00 00 44 4f 2f 00 34 4f 2f 00  .byte 0x9c, 0x64, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x44, 0x4f, 0x2f, 0x00, 0x34, 0x4f, 0x2f, 0x00
005ee78c  20 4f 2f 00                                      .byte 0x20, 0x4f, 0x2f, 0x00

; FUNCTION 0x005ee790, declared_size=456, range_size=456, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_126SRGBIndexedPackedConverterINS2_16SPackedConverterILNS2_23E_PACKED_CONVERTER_TYPEE2ELS5_0EEENS2_20SPackedConverterBaseEEC2ENS0_14E_PIXEL_FORMATES9_
; demangled: glitch::video::pixel_format::(anonymous namespace)::SRGBIndexedPackedConverter<glitch::video::pixel_format::(anonymous namespace)::SPackedConverter<(glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)2, (glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)0>, glitch::video::pixel_format::(anonymous namespace)::SPackedConverterBase>::SRGBIndexedPackedConverter(glitch::video::E_PIXEL_FORMAT, glitch::video::E_PIXEL_FORMAT)
; decoder-mode: arm
005ee790  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005ee794  a8 b1 9f e5                                      ldr fp, [pc, #0x1a8]
005ee798  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
005ee79c  10 d0 4d e2                                      sub sp, sp, #0x10
005ee7a0  0b b0 8f e0                                      add fp, pc, fp
005ee7a4  28 c0 a0 e3                                      mov ip, #0x28
005ee7a8  04 30 8d e5                                      str r3, [sp, #4]
005ee7ac  9c 02 04 e0                                      mul r4, ip, r2
005ee7b0  03 30 9b e7                                      ldr r3, [fp, r3]
005ee7b4  08 10 8d e5                                      str r1, [sp, #8]
005ee7b8  04 40 93 e7                                      ldr r4, [r3, r4]
005ee7bc  01 00 14 e3                                      tst r4, #1
005ee7c0  04 00 00 0a                                      beq #0x5ee7d8
005ee7c4  9c 01 0c e0                                      mul ip, ip, r1
005ee7c8  0c 30 93 e7                                      ldr r3, [r3, ip]
005ee7cc  01 00 13 e3                                      tst r3, #1
005ee7d0  00 30 e0 03                                      mvneq r3, #0
005ee7d4  00 00 00 0a                                      beq #0x5ee7dc
005ee7d8  00 30 a0 e3                                      mov r3, #0
005ee7dc  30 00 9d e9                                      ldmib sp, {r4, r5}
005ee7e0  28 80 a0 e3                                      mov r8, #0x28
005ee7e4  04 10 9b e7                                      ldr r1, [fp, r4]
005ee7e8  18 30 80 e5                                      str r3, [r0, #0x18]
005ee7ec  00 30 a0 e3                                      mov r3, #0
005ee7f0  98 12 22 e0                                      mla r2, r8, r2, r1
005ee7f4  98 15 28 e0                                      mla r8, r8, r5, r1
005ee7f8  02 40 a0 e1                                      mov r4, r2
005ee7fc  00 10 a0 e1                                      mov r1, r0
005ee800  08 c0 a0 e1                                      mov ip, r8
005ee804  02 90 a0 e1                                      mov sb, r2
005ee808  0c 20 8d e5                                      str r2, [sp, #0xc]
005ee80c  08 a0 a0 e1                                      mov sl, r8
005ee810  03 60 89 e0                                      add r6, sb, r3
005ee814  18 20 dc e5                                      ldrb r2, [ip, #0x18]
005ee818  18 50 d4 e5                                      ldrb r5, [r4, #0x18]
005ee81c  04 80 96 e5                                      ldr r8, [r6, #4]
005ee820  1c 70 d4 e5                                      ldrb r7, [r4, #0x1c]
005ee824  1c 60 dc e5                                      ldrb r6, [ip, #0x1c]
005ee828  05 00 52 e1                                      cmp r2, r5
005ee82c  03 80 80 e7                                      str r8, [r0, r3]
005ee830  10 60 c1 e5                                      strb r6, [r1, #0x10]
005ee834  14 70 c1 e5                                      strb r7, [r1, #0x14]
005ee838  3c 00 00 9a                                      bls #0x5ee930
005ee83c  06 20 82 e0                                      add r2, r2, r6
005ee840  02 20 65 e0                                      rsb r2, r5, r2
005ee844  10 20 c1 e5                                      strb r2, [r1, #0x10]
005ee848  04 30 83 e2                                      add r3, r3, #4
005ee84c  10 00 53 e3                                      cmp r3, #0x10
005ee850  01 c0 8c e2                                      add ip, ip, #1
005ee854  01 10 81 e2                                      add r1, r1, #1
005ee858  01 40 84 e2                                      add r4, r4, #1
005ee85c  eb ff ff 1a                                      bne #0x5ee810
005ee860  22 00 9d e9                                      ldmib sp, {r1, r5}
005ee864  28 40 a0 e3                                      mov r4, #0x28
005ee868  01 c0 9b e7                                      ldr ip, [fp, r1]
005ee86c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
005ee870  18 10 90 e5                                      ldr r1, [r0, #0x18]
005ee874  94 c5 24 e0                                      mla r4, r4, r5, ip
005ee878  cc 60 9f e5                                      ldr r6, [pc, #0xcc]
005ee87c  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
005ee880  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005ee884  c8 70 9f e5                                      ldr r7, [pc, #0xc8]
005ee888  03 30 01 e0                                      and r3, r1, r3
005ee88c  06 60 8f e0                                      add r6, pc, r6
005ee890  05 50 8f e0                                      add r5, pc, r5
005ee894  18 30 80 e5                                      str r3, [r0, #0x18]
005ee898  0a 80 a0 e1                                      mov r8, sl
005ee89c  04 60 86 e2                                      add r6, r6, #4
005ee8a0  0c 50 85 e2                                      add r5, r5, #0xc
005ee8a4  00 30 a0 e3                                      mov r3, #0
005ee8a8  18 10 d8 e5                                      ldrb r1, [r8, #0x18]
005ee8ac  03 c1 84 e0                                      add ip, r4, r3, lsl #2
005ee8b0  04 a0 9c e5                                      ldr sl, [ip, #4]
005ee8b4  02 00 51 e3                                      cmp r1, #2
005ee8b8  0a c0 83 e2                                      add ip, r3, #0xa
005ee8bc  03 11 80 00                                      addeq r1, r0, r3, lsl #2
005ee8c0  0c a1 80 e7                                      str sl, [r0, ip, lsl #2]
005ee8c4  1c 60 81 05                                      streq r6, [r1, #0x1c]
005ee8c8  0c 00 00 0a                                      beq #0x5ee900
005ee8cc  04 00 51 e3                                      cmp r1, #4
005ee8d0  06 c0 83 02                                      addeq ip, r3, #6
005ee8d4  0c c1 80 00                                      addeq ip, r0, ip, lsl #2
005ee8d8  01 50 8c 07                                      streq r5, [ip, r1]
005ee8dc  07 00 00 0a                                      beq #0x5ee900
005ee8e0  01 00 51 e3                                      cmp r1, #1
005ee8e4  06 10 83 12                                      addne r1, r3, #6
005ee8e8  03 11 80 00                                      addeq r1, r0, r3, lsl #2
005ee8ec  07 c0 8f 00                                      addeq ip, pc, r7
005ee8f0  01 11 80 10                                      addne r1, r0, r1, lsl #2
005ee8f4  00 c0 a0 13                                      movne ip, #0
005ee8f8  1c c0 81 05                                      streq ip, [r1, #0x1c]
005ee8fc  04 c0 81 15                                      strne ip, [r1, #4]
005ee900  18 c0 d2 e5                                      ldrb ip, [r2, #0x18]
005ee904  03 10 80 e0                                      add r1, r0, r3
005ee908  01 30 83 e2                                      add r3, r3, #1
005ee90c  10 c0 6c e2                                      rsb ip, ip, #0x10
005ee910  03 00 53 e3                                      cmp r3, #3
005ee914  34 c0 c1 e5                                      strb ip, [r1, #0x34]
005ee918  01 80 88 e2                                      add r8, r8, #1
005ee91c  01 20 82 e2                                      add r2, r2, #1
005ee920  e0 ff ff 1a                                      bne #0x5ee8a8
005ee924  10 d0 8d e2                                      add sp, sp, #0x10
005ee928  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
005ee92c  1e ff 2f e1                                      bx lr
005ee930  82 00 55 e1                                      cmp r5, r2, lsl #1
005ee934  07 50 85 d0                                      addle r5, r5, r7
005ee938  05 50 62 d0                                      rsble r5, r2, r5
005ee93c  14 50 c1 d5                                      strble r5, [r1, #0x14]
005ee940  c0 ff ff ea                                      b #0x5ee848
; mapping-symbol data/literal pool
005ee944  f0 62 3a 00 34 1f 00 00 00 4e 2f 00 fc 4d 2f 00  .byte 0xf0, 0x62, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x00, 0x4e, 0x2f, 0x00, 0xfc, 0x4d, 0x2f, 0x00
005ee954  a0 4d 2f 00                                      .byte 0xa0, 0x4d, 0x2f, 0x00

; FUNCTION 0x005ee958, declared_size=396, range_size=396, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_116SPackedConverterILNS2_23E_PACKED_CONVERTER_TYPEE1ELS4_0EEC1ENS0_14E_PIXEL_FORMATES6_
; demangled: glitch::video::pixel_format::(anonymous namespace)::SPackedConverter<(glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1, (glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)0>::SPackedConverter(glitch::video::E_PIXEL_FORMAT, glitch::video::E_PIXEL_FORMAT)
; decoder-mode: arm
005ee958  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005ee95c  78 b1 9f e5                                      ldr fp, [pc, #0x178]
005ee960  78 31 9f e5                                      ldr r3, [pc, #0x178]
005ee964  10 d0 4d e2                                      sub sp, sp, #0x10
005ee968  0b b0 8f e0                                      add fp, pc, fp
005ee96c  28 c0 a0 e3                                      mov ip, #0x28
005ee970  04 30 8d e5                                      str r3, [sp, #4]
005ee974  9c 02 04 e0                                      mul r4, ip, r2
005ee978  03 30 9b e7                                      ldr r3, [fp, r3]
005ee97c  08 10 8d e5                                      str r1, [sp, #8]
005ee980  04 40 93 e7                                      ldr r4, [r3, r4]
005ee984  01 00 14 e3                                      tst r4, #1
005ee988  04 00 00 0a                                      beq #0x5ee9a0
005ee98c  9c 01 0c e0                                      mul ip, ip, r1
005ee990  0c 30 93 e7                                      ldr r3, [r3, ip]
005ee994  01 00 13 e3                                      tst r3, #1
005ee998  00 30 e0 03                                      mvneq r3, #0
005ee99c  00 00 00 0a                                      beq #0x5ee9a4
005ee9a0  00 30 a0 e3                                      mov r3, #0
005ee9a4  10 10 9d e9                                      ldmib sp, {r4, ip}
005ee9a8  28 80 a0 e3                                      mov r8, #0x28
005ee9ac  04 10 9b e7                                      ldr r1, [fp, r4]
005ee9b0  18 30 80 e5                                      str r3, [r0, #0x18]
005ee9b4  00 30 a0 e3                                      mov r3, #0
005ee9b8  98 12 22 e0                                      mla r2, r8, r2, r1
005ee9bc  98 1c 28 e0                                      mla r8, r8, ip, r1
005ee9c0  02 40 a0 e1                                      mov r4, r2
005ee9c4  00 10 a0 e1                                      mov r1, r0
005ee9c8  08 c0 a0 e1                                      mov ip, r8
005ee9cc  02 90 a0 e1                                      mov sb, r2
005ee9d0  0c 20 8d e5                                      str r2, [sp, #0xc]
005ee9d4  08 a0 a0 e1                                      mov sl, r8
005ee9d8  03 60 89 e0                                      add r6, sb, r3
005ee9dc  18 20 dc e5                                      ldrb r2, [ip, #0x18]
005ee9e0  18 50 d4 e5                                      ldrb r5, [r4, #0x18]
005ee9e4  04 80 96 e5                                      ldr r8, [r6, #4]
005ee9e8  1c 70 d4 e5                                      ldrb r7, [r4, #0x1c]
005ee9ec  1c 60 dc e5                                      ldrb r6, [ip, #0x1c]
005ee9f0  05 00 52 e1                                      cmp r2, r5
005ee9f4  03 80 80 e7                                      str r8, [r0, r3]
005ee9f8  10 60 c1 e5                                      strb r6, [r1, #0x10]
005ee9fc  14 70 c1 e5                                      strb r7, [r1, #0x14]
005eea00  30 00 00 9a                                      bls #0x5eeac8
005eea04  06 20 82 e0                                      add r2, r2, r6
005eea08  02 20 65 e0                                      rsb r2, r5, r2
005eea0c  10 20 c1 e5                                      strb r2, [r1, #0x10]
005eea10  04 30 83 e2                                      add r3, r3, #4
005eea14  10 00 53 e3                                      cmp r3, #0x10
005eea18  01 c0 8c e2                                      add ip, ip, #1
005eea1c  01 10 81 e2                                      add r1, r1, #1
005eea20  01 40 84 e2                                      add r4, r4, #1
005eea24  eb ff ff 1a                                      bne #0x5ee9d8
005eea28  04 10 9d e5                                      ldr r1, [sp, #4]
005eea2c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
005eea30  08 40 9d e5                                      ldr r4, [sp, #8]
005eea34  01 c0 9b e7                                      ldr ip, [fp, r1]
005eea38  18 10 90 e5                                      ldr r1, [r0, #0x18]
005eea3c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005eea40  28 60 a0 e3                                      mov r6, #0x28
005eea44  03 30 01 e0                                      and r3, r1, r3
005eea48  96 c4 26 e0                                      mla r6, r6, r4, ip
005eea4c  18 30 80 e5                                      str r3, [r0, #0x18]
005eea50  0a 80 a0 e1                                      mov r8, sl
005eea54  00 c0 a0 e1                                      mov ip, r0
005eea58  00 30 a0 e3                                      mov r3, #0
005eea5c  18 50 d8 e5                                      ldrb r5, [r8, #0x18]
005eea60  18 40 d2 e5                                      ldrb r4, [r2, #0x18]
005eea64  03 11 86 e0                                      add r1, r6, r3, lsl #2
005eea68  04 10 91 e5                                      ldr r1, [r1, #4]
005eea6c  85 40 64 e0                                      rsb r4, r4, r5, lsl #1
005eea70  74 40 ef e6                                      uxtb r4, r4
005eea74  11 74 01 e0                                      and r7, r1, r1, lsl r4
005eea78  0a 50 83 e2                                      add r5, r3, #0xa
005eea7c  03 a1 80 e0                                      add sl, r0, r3, lsl #2
005eea80  1c 10 8a e5                                      str r1, [sl, #0x1c]
005eea84  05 71 80 e7                                      str r7, [r0, r5, lsl #2]
005eea88  10 70 dc e5                                      ldrb r7, [ip, #0x10]
005eea8c  1c 50 d2 e5                                      ldrb r5, [r2, #0x1c]
005eea90  03 10 80 e0                                      add r1, r0, r3
005eea94  01 30 83 e2                                      add r3, r3, #1
005eea98  30 10 81 e2                                      add r1, r1, #0x30
005eea9c  07 40 84 e0                                      add r4, r4, r7
005eeaa0  03 00 53 e3                                      cmp r3, #3
005eeaa4  07 50 c1 e5                                      strb r5, [r1, #7]
005eeaa8  04 40 c1 e5                                      strb r4, [r1, #4]
005eeaac  01 80 88 e2                                      add r8, r8, #1
005eeab0  01 20 82 e2                                      add r2, r2, #1
005eeab4  01 c0 8c e2                                      add ip, ip, #1
005eeab8  e7 ff ff 1a                                      bne #0x5eea5c
005eeabc  10 d0 8d e2                                      add sp, sp, #0x10
005eeac0  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
005eeac4  1e ff 2f e1                                      bx lr
005eeac8  82 00 55 e1                                      cmp r5, r2, lsl #1
005eeacc  07 50 85 d0                                      addle r5, r5, r7
005eead0  05 50 62 d0                                      rsble r5, r2, r5
005eead4  14 50 c1 d5                                      strble r5, [r1, #0x14]
005eead8  cc ff ff ea                                      b #0x5eea10
; mapping-symbol data/literal pool
005eeadc  28 61 3a 00 34 1f 00 00                          .byte 0x28, 0x61, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x005eeae4, declared_size=568, range_size=568, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_128SAlphaIndexedPackedConverterINS2_16SPackedConverterILNS2_23E_PACKED_CONVERTER_TYPEE1ELS5_2EEENS2_26SRGBUpscalePackedConverterIS6_NS2_20SPackedConverterBaseEEEEC2ENS0_14E_PIXEL_FORMATESB_
; demangled: glitch::video::pixel_format::(anonymous namespace)::SAlphaIndexedPackedConverter<glitch::video::pixel_format::(anonymous namespace)::SPackedConverter<(glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1, (glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)2>, glitch::video::pixel_format::(anonymous namespace)::SRGBUpscalePackedConverter<glitch::video::pixel_format::(anonymous namespace)::SPackedConverter<(glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1, (glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)2>, glitch::video::pixel_format::(anonymous namespace)::SPackedConverterBase> >::SAlphaIndexedPackedConverter(glitch::video::E_PIXEL_FORMAT, glitch::video::E_PIXEL_FORMAT)
; decoder-mode: arm
005eeae4  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005eeae8  18 42 9f e5                                      ldr r4, [pc, #0x218]
005eeaec  10 d0 4d e2                                      sub sp, sp, #0x10
005eeaf0  14 32 9f e5                                      ldr r3, [pc, #0x214]
005eeaf4  00 40 8d e5                                      str r4, [sp]
005eeaf8  04 20 8d e5                                      str r2, [sp, #4]
005eeafc  00 20 9d e5                                      ldr r2, [sp]
005eeb00  03 30 8f e0                                      add r3, pc, r3
005eeb04  28 40 a0 e3                                      mov r4, #0x28
005eeb08  02 c0 93 e7                                      ldr ip, [r3, r2]
005eeb0c  04 20 9d e5                                      ldr r2, [sp, #4]
005eeb10  08 10 8d e5                                      str r1, [sp, #8]
005eeb14  94 02 05 e0                                      mul r5, r4, r2
005eeb18  00 20 a0 e1                                      mov r2, r0
005eeb1c  05 00 9c e7                                      ldr r0, [ip, r5]
005eeb20  01 00 10 e3                                      tst r0, #1
005eeb24  04 00 00 0a                                      beq #0x5eeb3c
005eeb28  94 01 04 e0                                      mul r4, r4, r1
005eeb2c  04 10 9c e7                                      ldr r1, [ip, r4]
005eeb30  01 00 11 e3                                      tst r1, #1
005eeb34  00 10 e0 03                                      mvneq r1, #0
005eeb38  00 00 00 0a                                      beq #0x5eeb40
005eeb3c  00 10 a0 e3                                      mov r1, #0
005eeb40  00 40 9d e5                                      ldr r4, [sp]
005eeb44  18 10 82 e5                                      str r1, [r2, #0x18]
005eeb48  04 c0 9d e5                                      ldr ip, [sp, #4]
005eeb4c  04 00 93 e7                                      ldr r0, [r3, r4]
005eeb50  08 10 9d e5                                      ldr r1, [sp, #8]
005eeb54  28 a0 a0 e3                                      mov sl, #0x28
005eeb58  9a 0c 27 e0                                      mla r7, sl, ip, r0
005eeb5c  9a 01 2a e0                                      mla sl, sl, r1, r0
005eeb60  07 40 a0 e1                                      mov r4, r7
005eeb64  02 00 a0 e1                                      mov r0, r2
005eeb68  0a c0 a0 e1                                      mov ip, sl
005eeb6c  00 10 a0 e3                                      mov r1, #0
005eeb70  07 b0 a0 e1                                      mov fp, r7
005eeb74  0c 70 8d e5                                      str r7, [sp, #0xc]
005eeb78  0a 90 a0 e1                                      mov sb, sl
005eeb7c  01 70 8b e0                                      add r7, fp, r1
005eeb80  18 50 dc e5                                      ldrb r5, [ip, #0x18]
005eeb84  18 60 d4 e5                                      ldrb r6, [r4, #0x18]
005eeb88  04 a0 97 e5                                      ldr sl, [r7, #4]
005eeb8c  1c 80 d4 e5                                      ldrb r8, [r4, #0x1c]
005eeb90  1c 70 dc e5                                      ldrb r7, [ip, #0x1c]
005eeb94  06 00 55 e1                                      cmp r5, r6
005eeb98  01 a0 82 e7                                      str sl, [r2, r1]
005eeb9c  10 70 c0 e5                                      strb r7, [r0, #0x10]
005eeba0  14 80 c0 e5                                      strb r8, [r0, #0x14]
005eeba4  44 00 00 9a                                      bls #0x5eecbc
005eeba8  07 50 85 e0                                      add r5, r5, r7
005eebac  05 50 66 e0                                      rsb r5, r6, r5
005eebb0  10 50 c0 e5                                      strb r5, [r0, #0x10]
005eebb4  04 10 81 e2                                      add r1, r1, #4
005eebb8  10 00 51 e3                                      cmp r1, #0x10
005eebbc  01 c0 8c e2                                      add ip, ip, #1
005eebc0  01 00 80 e2                                      add r0, r0, #1
005eebc4  01 40 84 e2                                      add r4, r4, #1
005eebc8  eb ff ff 1a                                      bne #0x5eeb7c
005eebcc  00 40 9d e5                                      ldr r4, [sp]
005eebd0  18 00 92 e5                                      ldr r0, [r2, #0x18]
005eebd4  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005eebd8  04 c0 93 e7                                      ldr ip, [r3, r4]
005eebdc  08 40 9d e5                                      ldr r4, [sp, #8]
005eebe0  01 10 00 e0                                      and r1, r0, r1
005eebe4  09 a0 a0 e1                                      mov sl, sb
005eebe8  28 90 a0 e3                                      mov sb, #0x28
005eebec  0c 70 9d e5                                      ldr r7, [sp, #0xc]
005eebf0  99 c4 29 e0                                      mla sb, sb, r4, ip
005eebf4  18 10 82 e5                                      str r1, [r2, #0x18]
005eebf8  02 c0 a0 e1                                      mov ip, r2
005eebfc  00 10 a0 e3                                      mov r1, #0
005eec00  18 50 da e5                                      ldrb r5, [sl, #0x18]
005eec04  18 40 d7 e5                                      ldrb r4, [r7, #0x18]
005eec08  01 01 89 e0                                      add r0, sb, r1, lsl #2
005eec0c  04 00 90 e5                                      ldr r0, [r0, #4]
005eec10  85 40 64 e0                                      rsb r4, r4, r5, lsl #1
005eec14  74 40 ef e6                                      uxtb r4, r4
005eec18  10 64 00 e0                                      and r6, r0, r0, lsl r4
005eec1c  0a 50 81 e2                                      add r5, r1, #0xa
005eec20  01 81 82 e0                                      add r8, r2, r1, lsl #2
005eec24  1c 00 88 e5                                      str r0, [r8, #0x1c]
005eec28  05 61 82 e7                                      str r6, [r2, r5, lsl #2]
005eec2c  10 60 dc e5                                      ldrb r6, [ip, #0x10]
005eec30  1c 00 d7 e5                                      ldrb r0, [r7, #0x1c]
005eec34  01 50 82 e0                                      add r5, r2, r1
005eec38  01 10 81 e2                                      add r1, r1, #1
005eec3c  30 50 85 e2                                      add r5, r5, #0x30
005eec40  06 40 84 e0                                      add r4, r4, r6
005eec44  03 00 51 e3                                      cmp r1, #3
005eec48  07 00 c5 e5                                      strb r0, [r5, #7]
005eec4c  04 40 c5 e5                                      strb r4, [r5, #4]
005eec50  01 a0 8a e2                                      add sl, sl, #1
005eec54  01 70 87 e2                                      add r7, r7, #1
005eec58  01 c0 8c e2                                      add ip, ip, #1
005eec5c  e7 ff ff 1a                                      bne #0x5eec00
005eec60  1b 10 d9 e5                                      ldrb r1, [sb, #0x1b]
005eec64  10 00 99 e5                                      ldr r0, [sb, #0x10]
005eec68  02 00 51 e3                                      cmp r1, #2
005eec6c  40 00 82 e5                                      str r0, [r2, #0x40]
005eec70  1f 00 00 0a                                      beq #0x5eecf4
005eec74  04 00 51 e3                                      cmp r1, #4
005eec78  18 00 00 0a                                      beq #0x5eece0
005eec7c  01 00 51 e3                                      cmp r1, #1
005eec80  00 10 a0 13                                      movne r1, #0
005eec84  3c 10 82 15                                      strne r1, [r2, #0x3c]
005eec88  10 00 00 0a                                      beq #0x5eecd0
005eec8c  00 c0 9d e5                                      ldr ip, [sp]
005eec90  04 40 9d e5                                      ldr r4, [sp, #4]
005eec94  28 10 a0 e3                                      mov r1, #0x28
005eec98  0c 30 93 e7                                      ldr r3, [r3, ip]
005eec9c  02 00 a0 e1                                      mov r0, r2
005eeca0  91 34 23 e0                                      mla r3, r1, r4, r3
005eeca4  1b 30 d3 e5                                      ldrb r3, [r3, #0x1b]
005eeca8  10 30 63 e2                                      rsb r3, r3, #0x10
005eecac  3a 30 c2 e5                                      strb r3, [r2, #0x3a]
005eecb0  10 d0 8d e2                                      add sp, sp, #0x10
005eecb4  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
005eecb8  1e ff 2f e1                                      bx lr
005eecbc  85 00 56 e1                                      cmp r6, r5, lsl #1
005eecc0  08 60 86 d0                                      addle r6, r6, r8
005eecc4  06 60 65 d0                                      rsble r6, r5, r6
005eecc8  14 60 c0 d5                                      strble r6, [r0, #0x14]
005eeccc  b8 ff ff ea                                      b #0x5eebb4
005eecd0  38 10 9f e5                                      ldr r1, [pc, #0x38]
005eecd4  01 10 8f e0                                      add r1, pc, r1
005eecd8  3c 10 82 e5                                      str r1, [r2, #0x3c]
005eecdc  ea ff ff ea                                      b #0x5eec8c
005eece0  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
005eece4  01 10 8f e0                                      add r1, pc, r1
005eece8  0c 10 81 e2                                      add r1, r1, #0xc
005eecec  3c 10 82 e5                                      str r1, [r2, #0x3c]
005eecf0  e5 ff ff ea                                      b #0x5eec8c
005eecf4  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
005eecf8  01 10 8f e0                                      add r1, pc, r1
005eecfc  04 10 81 e2                                      add r1, r1, #4
005eed00  3c 10 82 e5                                      str r1, [r2, #0x3c]
005eed04  e0 ff ff ea                                      b #0x5eec8c
; mapping-symbol data/literal pool
005eed08  34 1f 00 00 90 5f 3a 00 b8 49 2f 00 a8 49 2f 00  .byte 0x34, 0x1f, 0x00, 0x00, 0x90, 0x5f, 0x3a, 0x00, 0xb8, 0x49, 0x2f, 0x00, 0xa8, 0x49, 0x2f, 0x00
005eed18  94 49 2f 00                                      .byte 0x94, 0x49, 0x2f, 0x00

; FUNCTION 0x005eed1c, declared_size=472, range_size=472, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_128SAlphaUpscalePackedConverterINS2_16SPackedConverterILNS2_23E_PACKED_CONVERTER_TYPEE1ELS5_1EEENS2_26SRGBUpscalePackedConverterIS6_NS2_20SPackedConverterBaseEEEEC2ENS0_14E_PIXEL_FORMATESB_
; demangled: glitch::video::pixel_format::(anonymous namespace)::SAlphaUpscalePackedConverter<glitch::video::pixel_format::(anonymous namespace)::SPackedConverter<(glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1, (glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1>, glitch::video::pixel_format::(anonymous namespace)::SRGBUpscalePackedConverter<glitch::video::pixel_format::(anonymous namespace)::SPackedConverter<(glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1, (glitch::video::pixel_format::(anonymous namespace)::E_PACKED_CONVERTER_TYPE)1>, glitch::video::pixel_format::(anonymous namespace)::SPackedConverterBase> >::SAlphaUpscalePackedConverter(glitch::video::E_PIXEL_FORMAT, glitch::video::E_PIXEL_FORMAT)
; decoder-mode: arm
005eed1c  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005eed20  10 d0 4d e2                                      sub sp, sp, #0x10
005eed24  00 20 8d e5                                      str r2, [sp]
005eed28  bc b1 9f e5                                      ldr fp, [pc, #0x1bc]
005eed2c  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
005eed30  00 40 9d e5                                      ldr r4, [sp]
005eed34  0b b0 8f e0                                      add fp, pc, fp
005eed38  28 20 a0 e3                                      mov r2, #0x28
005eed3c  04 30 8d e5                                      str r3, [sp, #4]
005eed40  92 04 0c e0                                      mul ip, r2, r4
005eed44  03 30 9b e7                                      ldr r3, [fp, r3]
005eed48  08 10 8d e5                                      str r1, [sp, #8]
005eed4c  0c c0 93 e7                                      ldr ip, [r3, ip]
005eed50  01 00 1c e3                                      tst ip, #1
005eed54  04 00 00 0a                                      beq #0x5eed6c
005eed58  92 01 02 e0                                      mul r2, r2, r1
005eed5c  02 30 93 e7                                      ldr r3, [r3, r2]
005eed60  01 00 13 e3                                      tst r3, #1
005eed64  00 30 e0 03                                      mvneq r3, #0
005eed68  00 00 00 0a                                      beq #0x5eed70
005eed6c  00 30 a0 e3                                      mov r3, #0
005eed70  02 10 9d e8                                      ldm sp, {r1, ip}
005eed74  18 30 80 e5                                      str r3, [r0, #0x18]
005eed78  0c 20 9b e7                                      ldr r2, [fp, ip]
005eed7c  08 30 9d e5                                      ldr r3, [sp, #8]
005eed80  28 80 a0 e3                                      mov r8, #0x28
005eed84  98 21 26 e0                                      mla r6, r8, r1, r2
005eed88  98 23 28 e0                                      mla r8, r8, r3, r2
005eed8c  06 c0 a0 e1                                      mov ip, r6
005eed90  00 20 a0 e1                                      mov r2, r0
005eed94  08 10 a0 e1                                      mov r1, r8
005eed98  00 30 a0 e3                                      mov r3, #0
005eed9c  06 90 a0 e1                                      mov sb, r6
005eeda0  0c 60 8d e5                                      str r6, [sp, #0xc]
005eeda4  08 a0 a0 e1                                      mov sl, r8
005eeda8  03 60 89 e0                                      add r6, sb, r3
005eedac  18 40 d1 e5                                      ldrb r4, [r1, #0x18]
005eedb0  18 50 dc e5                                      ldrb r5, [ip, #0x18]
005eedb4  04 80 96 e5                                      ldr r8, [r6, #4]
005eedb8  1c 70 dc e5                                      ldrb r7, [ip, #0x1c]
005eedbc  1c 60 d1 e5                                      ldrb r6, [r1, #0x1c]
005eedc0  05 00 54 e1                                      cmp r4, r5
005eedc4  03 80 80 e7                                      str r8, [r0, r3]
005eedc8  10 60 c2 e5                                      strb r6, [r2, #0x10]
005eedcc  14 70 c2 e5                                      strb r7, [r2, #0x14]
005eedd0  40 00 00 9a                                      bls #0x5eeed8
005eedd4  06 40 84 e0                                      add r4, r4, r6
005eedd8  04 40 65 e0                                      rsb r4, r5, r4
005eeddc  10 40 c2 e5                                      strb r4, [r2, #0x10]
005eede0  04 30 83 e2                                      add r3, r3, #4
005eede4  10 00 53 e3                                      cmp r3, #0x10
005eede8  01 10 81 e2                                      add r1, r1, #1
005eedec  01 20 82 e2                                      add r2, r2, #1
005eedf0  01 c0 8c e2                                      add ip, ip, #1
005eedf4  eb ff ff 1a                                      bne #0x5eeda8
005eedf8  04 40 9d e5                                      ldr r4, [sp, #4]
005eedfc  0a 80 a0 e1                                      mov r8, sl
005eee00  08 c0 9d e5                                      ldr ip, [sp, #8]
005eee04  04 a0 9b e7                                      ldr sl, [fp, r4]
005eee08  18 20 90 e5                                      ldr r2, [r0, #0x18]
005eee0c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
005eee10  28 90 a0 e3                                      mov sb, #0x28
005eee14  0c 60 9d e5                                      ldr r6, [sp, #0xc]
005eee18  99 ac 29 e0                                      mla sb, sb, ip, sl
005eee1c  03 30 02 e0                                      and r3, r2, r3
005eee20  18 30 80 e5                                      str r3, [r0, #0x18]
005eee24  00 10 a0 e1                                      mov r1, r0
005eee28  00 30 a0 e3                                      mov r3, #0
005eee2c  18 40 d8 e5                                      ldrb r4, [r8, #0x18]
005eee30  18 c0 d6 e5                                      ldrb ip, [r6, #0x18]
005eee34  03 21 89 e0                                      add r2, sb, r3, lsl #2
005eee38  04 20 92 e5                                      ldr r2, [r2, #4]
005eee3c  84 c0 6c e0                                      rsb ip, ip, r4, lsl #1
005eee40  7c c0 ef e6                                      uxtb ip, ip
005eee44  12 5c 02 e0                                      and r5, r2, r2, lsl ip
005eee48  0a 40 83 e2                                      add r4, r3, #0xa
005eee4c  03 71 80 e0                                      add r7, r0, r3, lsl #2
005eee50  1c 20 87 e5                                      str r2, [r7, #0x1c]
005eee54  04 51 80 e7                                      str r5, [r0, r4, lsl #2]
005eee58  10 50 d1 e5                                      ldrb r5, [r1, #0x10]
005eee5c  1c 40 d6 e5                                      ldrb r4, [r6, #0x1c]
005eee60  03 20 80 e0                                      add r2, r0, r3
005eee64  01 30 83 e2                                      add r3, r3, #1
005eee68  30 20 82 e2                                      add r2, r2, #0x30
005eee6c  05 c0 8c e0                                      add ip, ip, r5
005eee70  03 00 53 e3                                      cmp r3, #3
005eee74  07 40 c2 e5                                      strb r4, [r2, #7]
005eee78  04 c0 c2 e5                                      strb ip, [r2, #4]
005eee7c  01 80 88 e2                                      add r8, r8, #1
005eee80  01 60 86 e2                                      add r6, r6, #1
005eee84  01 10 81 e2                                      add r1, r1, #1
005eee88  e7 ff ff 1a                                      bne #0x5eee2c
005eee8c  00 10 9d e5                                      ldr r1, [sp]
005eee90  28 30 a0 e3                                      mov r3, #0x28
005eee94  13 40 d0 e5                                      ldrb r4, [r0, #0x13]
005eee98  93 a1 2a e0                                      mla sl, r3, r1, sl
005eee9c  1b 10 d9 e5                                      ldrb r1, [sb, #0x1b]
005eeea0  1b 20 da e5                                      ldrb r2, [sl, #0x1b]
005eeea4  10 30 99 e5                                      ldr r3, [sb, #0x10]
005eeea8  81 20 62 e0                                      rsb r2, r2, r1, lsl #1
005eeeac  72 20 ef e6                                      uxtb r2, r2
005eeeb0  13 c2 03 e0                                      and ip, r3, r3, lsl r2
005eeeb4  1f 10 da e5                                      ldrb r1, [sl, #0x1f]
005eeeb8  04 20 82 e0                                      add r2, r2, r4
005eeebc  40 c0 80 e5                                      str ip, [r0, #0x40]
005eeec0  3a 20 c0 e5                                      strb r2, [r0, #0x3a]
005eeec4  3b 10 c0 e5                                      strb r1, [r0, #0x3b]
005eeec8  3c 30 80 e5                                      str r3, [r0, #0x3c]
005eeecc  10 d0 8d e2                                      add sp, sp, #0x10
005eeed0  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
005eeed4  1e ff 2f e1                                      bx lr
005eeed8  84 00 55 e1                                      cmp r5, r4, lsl #1
005eeedc  07 50 85 d0                                      addle r5, r5, r7
005eeee0  05 50 64 d0                                      rsble r5, r4, r5
005eeee4  14 50 c2 d5                                      strble r5, [r2, #0x14]
005eeee8  bc ff ff ea                                      b #0x5eede0
; mapping-symbol data/literal pool
005eeeec  5c 5d 3a 00 34 1f 00 00                          .byte 0x5c, 0x5d, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; FUNCTION 0x005f4fe8, declared_size=17860, range_size=17860, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb
; demangled: glitch::video::pixel_format::(anonymous namespace)::convertPacked(glitch::video::E_PIXEL_FORMAT, void const*, unsigned int, glitch::video::E_PIXEL_FORMAT, void*, unsigned int, unsigned int, unsigned int, bool)
; decoder-mode: arm
005f4fe8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005f4fec  b4 d0 4d e2                                      sub sp, sp, #0xb4
005f4ff0  30 10 8d e5                                      str r1, [sp, #0x30]
005f4ff4  e8 10 dd e5                                      ldrb r1, [sp, #0xe8]
005f4ff8  03 80 a0 e1                                      mov r8, r3
005f4ffc  5c 20 8d e5                                      str r2, [sp, #0x5c]
005f5000  2c 10 8d e5                                      str r1, [sp, #0x2c]
005f5004  00 a0 a0 e1                                      mov sl, r0
005f5008  51 e2 ff eb                                      bl #0x5ed954
005f500c  00 40 a0 e1                                      mov r4, r0
005f5010  08 00 a0 e1                                      mov r0, r8
005f5014  4e e2 ff eb                                      bl #0x5ed954
005f5018  bc 7e 9f e5                                      ldr r7, [pc, #0xebc]
005f501c  04 01 80 e1                                      orr r0, r0, r4, lsl #2
005f5020  07 70 8f e0                                      add r7, pc, r7
005f5024  0a 00 50 e3                                      cmp r0, #0xa
005f5028  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
005f502c  0a 00 00 ea                                      b #0x5f505c
005f5030  0c 00 00 ea                                      b #0x5f5068
005f5034  16 00 00 ea                                      b #0x5f5094
005f5038  99 00 00 ea                                      b #0x5f52a4
005f503c  06 00 00 ea                                      b #0x5f505c
005f5040  1b 01 00 ea                                      b #0x5f54b4
005f5044  9a 01 00 ea                                      b #0x5f56b4
005f5048  a5 01 00 ea                                      b #0x5f56e4
005f504c  02 00 00 ea                                      b #0x5f505c
005f5050  29 02 00 ea                                      b #0x5f58fc
005f5054  aa 02 00 ea                                      b #0x5f5b04
005f5058  2d 03 00 ea                                      b #0x5f5d14
005f505c  00 00 a0 e3                                      mov r0, #0
005f5060  b4 d0 8d e2                                      add sp, sp, #0xb4
005f5064  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005f5068  08 30 a0 e1                                      mov r3, r8
005f506c  d8 40 8d e2                                      add r4, sp, #0xd8
005f5070  f0 00 94 e8                                      ldm r4, {r4, r5, r6, r7}
005f5074  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
005f5078  0a 00 a0 e1                                      mov r0, sl
005f507c  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f5080  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f5084  f0 00 8d e8                                      stm sp, {r4, r5, r6, r7}
005f5088  10 80 8d e5                                      str r8, [sp, #0x10]
005f508c  d2 f7 ff eb                                      bl #0x5f2fdc
005f5090  f2 ff ff ea                                      b #0x5f5060
005f5094  44 9e 9f e5                                      ldr sb, [pc, #0xe44]
005f5098  28 b0 a0 e3                                      mov fp, #0x28
005f509c  30 40 9d e5                                      ldr r4, [sp, #0x30]
005f50a0  09 30 97 e7                                      ldr r3, [r7, sb]
005f50a4  d8 50 9d e5                                      ldr r5, [sp, #0xd8]
005f50a8  9b 38 21 e0                                      mla r1, fp, r8, r3
005f50ac  9b 3a 2b e0                                      mla fp, fp, sl, r3
005f50b0  19 20 d1 e5                                      ldrb r2, [r1, #0x19]
005f50b4  19 30 db e5                                      ldrb r3, [fp, #0x19]
005f50b8  00 00 53 e3                                      cmp r3, #0
005f50bc  02 30 a0 01                                      moveq r3, r2
005f50c0  00 00 52 e3                                      cmp r2, #0
005f50c4  e7 03 00 0a                                      beq #0x5f6068
005f50c8  03 00 52 e1                                      cmp r2, r3
005f50cc  e5 03 00 9a                                      bls #0x5f6068
005f50d0  83 00 52 e1                                      cmp r2, r3, lsl #1
005f50d4  fb 07 00 ca                                      bgt #0x5f70c8
005f50d8  1b 30 db e5                                      ldrb r3, [fp, #0x1b]
005f50dc  1b 20 d1 e5                                      ldrb r2, [r1, #0x1b]
005f50e0  00 00 53 e3                                      cmp r3, #0
005f50e4  02 30 a0 01                                      moveq r3, r2
005f50e8  00 00 52 e3                                      cmp r2, #0
005f50ec  dc 08 00 1a                                      bne #0x5f7464
005f50f0  08 20 a0 e1                                      mov r2, r8
005f50f4  0a 10 a0 e1                                      mov r1, sl
005f50f8  6c 00 8d e2                                      add r0, sp, #0x6c
005f50fc  15 e6 ff eb                                      bl #0x5ee958
005f5100  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005f5104  09 30 97 e7                                      ldr r3, [r7, sb]
005f5108  00 00 52 e3                                      cmp r2, #0
005f510c  28 20 a0 e3                                      mov r2, #0x28
005f5110  92 3a 2a e0                                      mla sl, r2, sl, r3
005f5114  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
005f5118  15 a0 da e5                                      ldrb sl, [sl, #0x15]
005f511c  34 30 8d e5                                      str r3, [sp, #0x34]
005f5120  38 a0 8d e5                                      str sl, [sp, #0x38]
005f5124  05 00 00 0a                                      beq #0x5f5140
005f5128  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f512c  d8 70 9d e5                                      ldr r7, [sp, #0xd8]
005f5130  00 80 63 e2                                      rsb r8, r3, #0
005f5134  01 50 46 e2                                      sub r5, r6, #1
005f5138  93 75 25 e0                                      mla r5, r3, r5, r7
005f513c  34 80 8d e5                                      str r8, [sp, #0x34]
005f5140  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f5144  00 00 5b e3                                      cmp fp, #0
005f5148  2c 50 8d 15                                      strne r5, [sp, #0x2c]
005f514c  28 50 8d 15                                      strne r5, [sp, #0x28]
005f5150  96 08 00 0a                                      beq #0x5f73b0
005f5154  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005f5158  00 00 53 e3                                      cmp r3, #0
005f515c  42 00 00 0a                                      beq #0x5f526c
005f5160  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f5164  00 20 a0 e3                                      mov r2, #0
005f5168  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005f516c  88 80 9d e5                                      ldr r8, [sp, #0x88]
005f5170  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
005f5174  0c 30 d4 e6                                      ldrb r3, [r4], ip
005f5178  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f517c  81 50 dd e5                                      ldrb r5, [sp, #0x81]
005f5180  08 80 03 e0                                      and r8, r3, r8
005f5184  38 80 a0 e1                                      lsr r8, r8, r0
005f5188  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f518c  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005f5190  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f5194  00 00 03 e0                                      and r0, r3, r0
005f5198  30 0c a0 e1                                      lsr r0, r0, ip
005f519c  10 55 a0 e1                                      lsl r5, r0, r5
005f51a0  0b b0 03 e0                                      and fp, r3, fp
005f51a4  82 c0 dd e5                                      ldrb ip, [sp, #0x82]
005f51a8  3b 66 a0 e1                                      lsr r6, fp, r6
005f51ac  16 cc a0 e1                                      lsl ip, r6, ip
005f51b0  80 70 dd e5                                      ldrb r7, [sp, #0x80]
005f51b4  3c 50 8d e5                                      str r5, [sp, #0x3c]
005f51b8  98 50 9d e5                                      ldr r5, [sp, #0x98]
005f51bc  18 87 a0 e1                                      lsl r8, r8, r7
005f51c0  a1 70 dd e5                                      ldrb r7, [sp, #0xa1]
005f51c4  94 90 9d e5                                      ldr sb, [sp, #0x94]
005f51c8  05 50 03 e0                                      and r5, r3, r5
005f51cc  20 c0 8d e5                                      str ip, [sp, #0x20]
005f51d0  35 57 a0 e1                                      lsr r5, r5, r7
005f51d4  a0 c0 dd e5                                      ldrb ip, [sp, #0xa0]
005f51d8  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
005f51dc  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f51e0  a3 a0 dd e5                                      ldrb sl, [sp, #0xa3]
005f51e4  09 90 03 e0                                      and sb, r3, sb
005f51e8  07 70 03 e0                                      and r7, r3, r7
005f51ec  39 9c a0 e1                                      lsr sb, sb, ip
005f51f0  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f51f4  a4 c0 dd e5                                      ldrb ip, [sp, #0xa4]
005f51f8  37 66 a0 e1                                      lsr r6, r7, r6
005f51fc  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005f5200  19 8a 88 e1                                      orr r8, r8, sb, lsl sl
005f5204  a5 b0 dd e5                                      ldrb fp, [sp, #0xa5]
005f5208  24 00 8d e5                                      str r0, [sp, #0x24]
005f520c  15 0c 87 e1                                      orr r0, r7, r5, lsl ip
005f5210  20 50 9d e5                                      ldr r5, [sp, #0x20]
005f5214  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f5218  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005f521c  16 6b 85 e1                                      orr r6, r5, r6, lsl fp
005f5220  78 50 9d e5                                      ldr r5, [sp, #0x78]
005f5224  33 37 a0 e1                                      lsr r3, r3, r7
005f5228  13 3c 05 e0                                      and r3, r5, r3, lsl ip
005f522c  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f5230  84 c0 9d e5                                      ldr ip, [sp, #0x84]
005f5234  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f5238  0a 80 08 e0                                      and r8, r8, sl
005f523c  0c 80 88 e1                                      orr r8, r8, ip
005f5240  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f5244  0b 60 06 e0                                      and r6, r6, fp
005f5248  01 10 51 e2                                      subs r1, r1, #1
005f524c  0c 00 00 e0                                      and r0, r0, ip
005f5250  00 80 88 e1                                      orr r8, r8, r0
005f5254  06 60 88 e1                                      orr r6, r8, r6
005f5258  28 80 9d e5                                      ldr r8, [sp, #0x28]
005f525c  03 30 86 e1                                      orr r3, r6, r3
005f5260  b2 30 88 e1                                      strh r3, [r8, r2]
005f5264  02 20 82 e2                                      add r2, r2, #2
005f5268  be ff ff 1a                                      bne #0x5f5168
005f526c  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f5270  01 b0 5b e2                                      subs fp, fp, #1
005f5274  e4 b0 8d e5                                      str fp, [sp, #0xe4]
005f5278  4c 08 00 0a                                      beq #0x5f73b0
005f527c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f5280  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005f5284  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f5288  34 20 9d e5                                      ldr r2, [sp, #0x34]
005f528c  00 40 8c e0                                      add r4, ip, r0
005f5290  02 10 81 e0                                      add r1, r1, r2
005f5294  2c 10 8d e5                                      str r1, [sp, #0x2c]
005f5298  28 10 8d e5                                      str r1, [sp, #0x28]
005f529c  30 40 8d e5                                      str r4, [sp, #0x30]
005f52a0  ab ff ff ea                                      b #0x5f5154
005f52a4  34 9c 9f e5                                      ldr sb, [pc, #0xc34]
005f52a8  28 b0 a0 e3                                      mov fp, #0x28
005f52ac  30 40 9d e5                                      ldr r4, [sp, #0x30]
005f52b0  09 30 97 e7                                      ldr r3, [r7, sb]
005f52b4  d8 50 9d e5                                      ldr r5, [sp, #0xd8]
005f52b8  9b 38 21 e0                                      mla r1, fp, r8, r3
005f52bc  9b 3a 2b e0                                      mla fp, fp, sl, r3
005f52c0  19 20 d1 e5                                      ldrb r2, [r1, #0x19]
005f52c4  19 30 db e5                                      ldrb r3, [fp, #0x19]
005f52c8  00 00 53 e3                                      cmp r3, #0
005f52cc  02 30 a0 01                                      moveq r3, r2
005f52d0  00 00 52 e3                                      cmp r2, #0
005f52d4  9b 02 00 0a                                      beq #0x5f5d48
005f52d8  03 00 52 e1                                      cmp r2, r3
005f52dc  99 02 00 9a                                      bls #0x5f5d48
005f52e0  83 00 52 e1                                      cmp r2, r3, lsl #1
005f52e4  d4 07 00 ca                                      bgt #0x5f723c
005f52e8  1b 30 db e5                                      ldrb r3, [fp, #0x1b]
005f52ec  1b 20 d1 e5                                      ldrb r2, [r1, #0x1b]
005f52f0  00 00 53 e3                                      cmp r3, #0
005f52f4  02 30 a0 01                                      moveq r3, r2
005f52f8  00 00 52 e3                                      cmp r2, #0
005f52fc  59 0a 00 1a                                      bne #0x5f7c68
005f5300  08 20 a0 e1                                      mov r2, r8
005f5304  0a 10 a0 e1                                      mov r1, sl
005f5308  6c 00 8d e2                                      add r0, sp, #0x6c
005f530c  91 e5 ff eb                                      bl #0x5ee958
005f5310  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005f5314  09 30 97 e7                                      ldr r3, [r7, sb]
005f5318  00 00 52 e3                                      cmp r2, #0
005f531c  28 20 a0 e3                                      mov r2, #0x28
005f5320  92 3a 2a e0                                      mla sl, r2, sl, r3
005f5324  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
005f5328  15 a0 da e5                                      ldrb sl, [sl, #0x15]
005f532c  34 30 8d e5                                      str r3, [sp, #0x34]
005f5330  38 a0 8d e5                                      str sl, [sp, #0x38]
005f5334  05 00 00 0a                                      beq #0x5f5350
005f5338  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f533c  d8 70 9d e5                                      ldr r7, [sp, #0xd8]
005f5340  00 80 63 e2                                      rsb r8, r3, #0
005f5344  01 50 46 e2                                      sub r5, r6, #1
005f5348  93 75 25 e0                                      mla r5, r3, r5, r7
005f534c  34 80 8d e5                                      str r8, [sp, #0x34]
005f5350  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f5354  00 00 5b e3                                      cmp fp, #0
005f5358  2c 50 8d 15                                      strne r5, [sp, #0x2c]
005f535c  28 50 8d 15                                      strne r5, [sp, #0x28]
005f5360  12 08 00 0a                                      beq #0x5f73b0
005f5364  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005f5368  00 00 53 e3                                      cmp r3, #0
005f536c  42 00 00 0a                                      beq #0x5f547c
005f5370  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f5374  00 20 a0 e3                                      mov r2, #0
005f5378  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005f537c  88 80 9d e5                                      ldr r8, [sp, #0x88]
005f5380  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
005f5384  0c 30 d4 e6                                      ldrb r3, [r4], ip
005f5388  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f538c  81 50 dd e5                                      ldrb r5, [sp, #0x81]
005f5390  08 80 03 e0                                      and r8, r3, r8
005f5394  38 80 a0 e1                                      lsr r8, r8, r0
005f5398  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f539c  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005f53a0  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f53a4  00 00 03 e0                                      and r0, r3, r0
005f53a8  30 0c a0 e1                                      lsr r0, r0, ip
005f53ac  10 55 a0 e1                                      lsl r5, r0, r5
005f53b0  0b b0 03 e0                                      and fp, r3, fp
005f53b4  82 c0 dd e5                                      ldrb ip, [sp, #0x82]
005f53b8  3b 66 a0 e1                                      lsr r6, fp, r6
005f53bc  16 cc a0 e1                                      lsl ip, r6, ip
005f53c0  80 70 dd e5                                      ldrb r7, [sp, #0x80]
005f53c4  3c 50 8d e5                                      str r5, [sp, #0x3c]
005f53c8  98 50 9d e5                                      ldr r5, [sp, #0x98]
005f53cc  18 87 a0 e1                                      lsl r8, r8, r7
005f53d0  a1 70 dd e5                                      ldrb r7, [sp, #0xa1]
005f53d4  94 90 9d e5                                      ldr sb, [sp, #0x94]
005f53d8  05 50 03 e0                                      and r5, r3, r5
005f53dc  20 c0 8d e5                                      str ip, [sp, #0x20]
005f53e0  35 57 a0 e1                                      lsr r5, r5, r7
005f53e4  a0 c0 dd e5                                      ldrb ip, [sp, #0xa0]
005f53e8  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
005f53ec  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f53f0  a3 a0 dd e5                                      ldrb sl, [sp, #0xa3]
005f53f4  09 90 03 e0                                      and sb, r3, sb
005f53f8  07 70 03 e0                                      and r7, r3, r7
005f53fc  39 9c a0 e1                                      lsr sb, sb, ip
005f5400  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f5404  a4 c0 dd e5                                      ldrb ip, [sp, #0xa4]
005f5408  37 66 a0 e1                                      lsr r6, r7, r6
005f540c  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005f5410  19 8a 88 e1                                      orr r8, r8, sb, lsl sl
005f5414  a5 b0 dd e5                                      ldrb fp, [sp, #0xa5]
005f5418  24 00 8d e5                                      str r0, [sp, #0x24]
005f541c  15 0c 87 e1                                      orr r0, r7, r5, lsl ip
005f5420  20 50 9d e5                                      ldr r5, [sp, #0x20]
005f5424  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f5428  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005f542c  16 6b 85 e1                                      orr r6, r5, r6, lsl fp
005f5430  78 50 9d e5                                      ldr r5, [sp, #0x78]
005f5434  33 37 a0 e1                                      lsr r3, r3, r7
005f5438  13 3c 05 e0                                      and r3, r5, r3, lsl ip
005f543c  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f5440  84 c0 9d e5                                      ldr ip, [sp, #0x84]
005f5444  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f5448  0a 80 08 e0                                      and r8, r8, sl
005f544c  0c 80 88 e1                                      orr r8, r8, ip
005f5450  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f5454  0b 60 06 e0                                      and r6, r6, fp
005f5458  01 10 51 e2                                      subs r1, r1, #1
005f545c  0c 00 00 e0                                      and r0, r0, ip
005f5460  00 80 88 e1                                      orr r8, r8, r0
005f5464  06 60 88 e1                                      orr r6, r8, r6
005f5468  28 80 9d e5                                      ldr r8, [sp, #0x28]
005f546c  03 30 86 e1                                      orr r3, r6, r3
005f5470  02 30 88 e7                                      str r3, [r8, r2]
005f5474  04 20 82 e2                                      add r2, r2, #4
005f5478  be ff ff 1a                                      bne #0x5f5378
005f547c  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f5480  01 b0 5b e2                                      subs fp, fp, #1
005f5484  e4 b0 8d e5                                      str fp, [sp, #0xe4]
005f5488  c8 07 00 0a                                      beq #0x5f73b0
005f548c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f5490  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005f5494  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f5498  34 20 9d e5                                      ldr r2, [sp, #0x34]
005f549c  00 40 8c e0                                      add r4, ip, r0
005f54a0  02 10 81 e0                                      add r1, r1, r2
005f54a4  2c 10 8d e5                                      str r1, [sp, #0x2c]
005f54a8  28 10 8d e5                                      str r1, [sp, #0x28]
005f54ac  30 40 8d e5                                      str r4, [sp, #0x30]
005f54b0  ab ff ff ea                                      b #0x5f5364
005f54b4  24 9a 9f e5                                      ldr sb, [pc, #0xa24]
005f54b8  28 b0 a0 e3                                      mov fp, #0x28
005f54bc  30 50 9d e5                                      ldr r5, [sp, #0x30]
005f54c0  09 30 97 e7                                      ldr r3, [r7, sb]
005f54c4  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
005f54c8  9b 38 21 e0                                      mla r1, fp, r8, r3
005f54cc  9b 3a 2b e0                                      mla fp, fp, sl, r3
005f54d0  19 20 d1 e5                                      ldrb r2, [r1, #0x19]
005f54d4  19 30 db e5                                      ldrb r3, [fp, #0x19]
005f54d8  00 00 53 e3                                      cmp r3, #0
005f54dc  02 30 a0 01                                      moveq r3, r2
005f54e0  00 00 52 e3                                      cmp r2, #0
005f54e4  7e 02 00 0a                                      beq #0x5f5ee4
005f54e8  03 00 52 e1                                      cmp r2, r3
005f54ec  7c 02 00 9a                                      bls #0x5f5ee4
005f54f0  83 00 52 e1                                      cmp r2, r3, lsl #1
005f54f4  80 05 00 ca                                      bgt #0x5f6afc
005f54f8  1b 30 db e5                                      ldrb r3, [fp, #0x1b]
005f54fc  1b 20 d1 e5                                      ldrb r2, [r1, #0x1b]
005f5500  00 00 53 e3                                      cmp r3, #0
005f5504  02 30 a0 01                                      moveq r3, r2
005f5508  00 00 52 e3                                      cmp r2, #0
005f550c  4e 09 00 1a                                      bne #0x5f7a4c
005f5510  08 20 a0 e1                                      mov r2, r8
005f5514  0a 10 a0 e1                                      mov r1, sl
005f5518  6c 00 8d e2                                      add r0, sp, #0x6c
005f551c  0d e5 ff eb                                      bl #0x5ee958
005f5520  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005f5524  09 30 97 e7                                      ldr r3, [r7, sb]
005f5528  00 00 52 e3                                      cmp r2, #0
005f552c  28 20 a0 e3                                      mov r2, #0x28
005f5530  92 3a 2a e0                                      mla sl, r2, sl, r3
005f5534  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
005f5538  15 90 da e5                                      ldrb sb, [sl, #0x15]
005f553c  34 30 8d e5                                      str r3, [sp, #0x34]
005f5540  05 00 00 0a                                      beq #0x5f555c
005f5544  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f5548  d8 70 9d e5                                      ldr r7, [sp, #0xd8]
005f554c  00 80 63 e2                                      rsb r8, r3, #0
005f5550  01 40 46 e2                                      sub r4, r6, #1
005f5554  93 74 24 e0                                      mla r4, r3, r4, r7
005f5558  34 80 8d e5                                      str r8, [sp, #0x34]
005f555c  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f5560  00 00 5b e3                                      cmp fp, #0
005f5564  2c 40 8d 15                                      strne r4, [sp, #0x2c]
005f5568  90 07 00 0a                                      beq #0x5f73b0
005f556c  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
005f5570  00 00 52 e3                                      cmp r2, #0
005f5574  00 30 a0 13                                      movne r3, #0
005f5578  40 00 00 0a                                      beq #0x5f5680
005f557c  b9 00 95 e0                                      ldrh r0, [r5], sb
005f5580  88 c0 9d e5                                      ldr ip, [sp, #0x88]
005f5584  7c 20 dd e5                                      ldrb r2, [sp, #0x7c]
005f5588  7d 10 dd e5                                      ldrb r1, [sp, #0x7d]
005f558c  0c c0 00 e0                                      and ip, r0, ip
005f5590  3c c2 a0 e1                                      lsr ip, ip, r2
005f5594  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
005f5598  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005f559c  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f55a0  02 20 00 e0                                      and r2, r0, r2
005f55a4  32 21 a0 e1                                      lsr r2, r2, r1
005f55a8  0b b0 00 e0                                      and fp, r0, fp
005f55ac  82 10 dd e5                                      ldrb r1, [sp, #0x82]
005f55b0  3b 66 a0 e1                                      lsr r6, fp, r6
005f55b4  81 40 dd e5                                      ldrb r4, [sp, #0x81]
005f55b8  16 11 a0 e1                                      lsl r1, r6, r1
005f55bc  80 70 dd e5                                      ldrb r7, [sp, #0x80]
005f55c0  12 44 a0 e1                                      lsl r4, r2, r4
005f55c4  1c c7 a0 e1                                      lsl ip, ip, r7
005f55c8  94 60 9d e5                                      ldr r6, [sp, #0x94]
005f55cc  a0 20 dd e5                                      ldrb r2, [sp, #0xa0]
005f55d0  a4 70 dd e5                                      ldrb r7, [sp, #0xa4]
005f55d4  06 60 00 e0                                      and r6, r0, r6
005f55d8  36 62 a0 e1                                      lsr r6, r6, r2
005f55dc  20 70 8d e5                                      str r7, [sp, #0x20]
005f55e0  7f a0 dd e5                                      ldrb sl, [sp, #0x7f]
005f55e4  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
005f55e8  98 20 9d e5                                      ldr r2, [sp, #0x98]
005f55ec  28 10 8d e5                                      str r1, [sp, #0x28]
005f55f0  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f55f4  a2 10 dd e5                                      ldrb r1, [sp, #0xa2]
005f55f8  30 aa a0 e1                                      lsr sl, r0, sl
005f55fc  02 20 00 e0                                      and r2, r0, r2
005f5600  07 00 00 e0                                      and r0, r0, r7
005f5604  78 70 9d e5                                      ldr r7, [sp, #0x78]
005f5608  24 40 8d e5                                      str r4, [sp, #0x24]
005f560c  a1 b0 dd e5                                      ldrb fp, [sp, #0xa1]
005f5610  a3 40 dd e5                                      ldrb r4, [sp, #0xa3]
005f5614  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f5618  30 11 a0 e1                                      lsr r1, r0, r1
005f561c  24 80 9d e5                                      ldr r8, [sp, #0x24]
005f5620  20 00 9d e5                                      ldr r0, [sp, #0x20]
005f5624  16 c4 8c e1                                      orr ip, ip, r6, lsl r4
005f5628  32 2b a0 e1                                      lsr r2, r2, fp
005f562c  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f5630  a5 b0 dd e5                                      ldrb fp, [sp, #0xa5]
005f5634  12 20 88 e1                                      orr r2, r8, r2, lsl r0
005f5638  11 1b 84 e1                                      orr r1, r4, r1, lsl fp
005f563c  84 80 9d e5                                      ldr r8, [sp, #0x84]
005f5640  6c 40 9d e5                                      ldr r4, [sp, #0x6c]
005f5644  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f5648  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f564c  08 70 87 e1                                      orr r7, r7, r8
005f5650  04 c0 0c e0                                      and ip, ip, r4
005f5654  0c 70 87 e1                                      orr r7, r7, ip
005f5658  00 20 02 e0                                      and r2, r2, r0
005f565c  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f5660  02 70 87 e1                                      orr r7, r7, r2
005f5664  0b 10 01 e0                                      and r1, r1, fp
005f5668  01 10 87 e1                                      orr r1, r7, r1
005f566c  03 10 c6 e7                                      strb r1, [r6, r3]
005f5670  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f5674  01 30 83 e2                                      add r3, r3, #1
005f5678  03 00 57 e1                                      cmp r7, r3
005f567c  be ff ff 1a                                      bne #0x5f557c
005f5680  e4 80 9d e5                                      ldr r8, [sp, #0xe4]
005f5684  01 80 58 e2                                      subs r8, r8, #1
005f5688  e4 80 8d e5                                      str r8, [sp, #0xe4]
005f568c  47 07 00 0a                                      beq #0x5f73b0
005f5690  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f5694  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005f5698  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005f569c  34 10 9d e5                                      ldr r1, [sp, #0x34]
005f56a0  0c 50 8b e0                                      add r5, fp, ip
005f56a4  01 00 80 e0                                      add r0, r0, r1
005f56a8  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f56ac  30 50 8d e5                                      str r5, [sp, #0x30]
005f56b0  ad ff ff ea                                      b #0x5f556c
005f56b4  d8 c0 9d e5                                      ldr ip, [sp, #0xd8]
005f56b8  dc 40 8d e2                                      add r4, sp, #0xdc
005f56bc  70 00 94 e8                                      ldm r4, {r4, r5, r6}
005f56c0  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f56c4  0a 00 a0 e1                                      mov r0, sl
005f56c8  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f56cc  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f56d0  08 30 a0 e1                                      mov r3, r8
005f56d4  00 c0 8d e5                                      str ip, [sp]
005f56d8  f0 00 8d e9                                      stmib sp, {r4, r5, r6, r7}
005f56dc  1f ee ff eb                                      bl #0x5f0f60
005f56e0  5e fe ff ea                                      b #0x5f5060
005f56e4  f4 97 9f e5                                      ldr sb, [pc, #0x7f4]
005f56e8  28 50 a0 e3                                      mov r5, #0x28
005f56ec  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f56f0  09 30 97 e7                                      ldr r3, [r7, sb]
005f56f4  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
005f56f8  28 b0 8d e5                                      str fp, [sp, #0x28]
005f56fc  95 38 21 e0                                      mla r1, r5, r8, r3
005f5700  95 3a 25 e0                                      mla r5, r5, sl, r3
005f5704  19 20 d1 e5                                      ldrb r2, [r1, #0x19]
005f5708  19 30 d5 e5                                      ldrb r3, [r5, #0x19]
005f570c  00 00 53 e3                                      cmp r3, #0
005f5710  02 30 a0 01                                      moveq r3, r2
005f5714  00 00 52 e3                                      cmp r2, #0
005f5718  b7 02 00 0a                                      beq #0x5f61fc
005f571c  03 00 52 e1                                      cmp r2, r3
005f5720  b5 02 00 9a                                      bls #0x5f61fc
005f5724  83 00 52 e1                                      cmp r2, r3, lsl #1
005f5728  50 05 00 ca                                      bgt #0x5f6c70
005f572c  1b 30 d5 e5                                      ldrb r3, [r5, #0x1b]
005f5730  1b 20 d1 e5                                      ldrb r2, [r1, #0x1b]
005f5734  00 00 53 e3                                      cmp r3, #0
005f5738  02 30 a0 01                                      moveq r3, r2
005f573c  00 00 52 e3                                      cmp r2, #0
005f5740  77 07 00 1a                                      bne #0x5f7524
005f5744  08 20 a0 e1                                      mov r2, r8
005f5748  0a 10 a0 e1                                      mov r1, sl
005f574c  6c 00 8d e2                                      add r0, sp, #0x6c
005f5750  80 e4 ff eb                                      bl #0x5ee958
005f5754  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005f5758  09 30 97 e7                                      ldr r3, [r7, sb]
005f575c  00 00 52 e3                                      cmp r2, #0
005f5760  28 20 a0 e3                                      mov r2, #0x28
005f5764  92 3a 2a e0                                      mla sl, r2, sl, r3
005f5768  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
005f576c  15 a0 da e5                                      ldrb sl, [sl, #0x15]
005f5770  34 30 8d e5                                      str r3, [sp, #0x34]
005f5774  38 a0 8d e5                                      str sl, [sp, #0x38]
005f5778  05 00 00 0a                                      beq #0x5f5794
005f577c  e4 50 9d e5                                      ldr r5, [sp, #0xe4]
005f5780  d8 60 9d e5                                      ldr r6, [sp, #0xd8]
005f5784  00 70 63 e2                                      rsb r7, r3, #0
005f5788  01 40 45 e2                                      sub r4, r5, #1
005f578c  93 64 24 e0                                      mla r4, r3, r4, r6
005f5790  34 70 8d e5                                      str r7, [sp, #0x34]
005f5794  e4 80 9d e5                                      ldr r8, [sp, #0xe4]
005f5798  00 00 58 e3                                      cmp r8, #0
005f579c  03 07 00 0a                                      beq #0x5f73b0
005f57a0  28 00 9d e5                                      ldr r0, [sp, #0x28]
005f57a4  2c 40 8d e5                                      str r4, [sp, #0x2c]
005f57a8  28 40 8d e5                                      str r4, [sp, #0x28]
005f57ac  e0 40 9d e5                                      ldr r4, [sp, #0xe0]
005f57b0  00 00 54 e3                                      cmp r4, #0
005f57b4  42 00 00 0a                                      beq #0x5f58c4
005f57b8  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f57bc  00 20 a0 e3                                      mov r2, #0
005f57c0  38 b0 9d e5                                      ldr fp, [sp, #0x38]
005f57c4  88 80 9d e5                                      ldr r8, [sp, #0x88]
005f57c8  7c c0 dd e5                                      ldrb ip, [sp, #0x7c]
005f57cc  bb 30 90 e0                                      ldrh r3, [r0], fp
005f57d0  7d 40 dd e5                                      ldrb r4, [sp, #0x7d]
005f57d4  81 50 dd e5                                      ldrb r5, [sp, #0x81]
005f57d8  08 80 03 e0                                      and r8, r3, r8
005f57dc  38 8c a0 e1                                      lsr r8, r8, ip
005f57e0  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
005f57e4  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005f57e8  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f57ec  0c c0 03 e0                                      and ip, r3, ip
005f57f0  3c c4 a0 e1                                      lsr ip, ip, r4
005f57f4  1c 55 a0 e1                                      lsl r5, ip, r5
005f57f8  0b b0 03 e0                                      and fp, r3, fp
005f57fc  82 40 dd e5                                      ldrb r4, [sp, #0x82]
005f5800  3b 66 a0 e1                                      lsr r6, fp, r6
005f5804  16 44 a0 e1                                      lsl r4, r6, r4
005f5808  80 70 dd e5                                      ldrb r7, [sp, #0x80]
005f580c  3c 50 8d e5                                      str r5, [sp, #0x3c]
005f5810  98 50 9d e5                                      ldr r5, [sp, #0x98]
005f5814  18 87 a0 e1                                      lsl r8, r8, r7
005f5818  a1 70 dd e5                                      ldrb r7, [sp, #0xa1]
005f581c  94 90 9d e5                                      ldr sb, [sp, #0x94]
005f5820  05 50 03 e0                                      and r5, r3, r5
005f5824  20 40 8d e5                                      str r4, [sp, #0x20]
005f5828  35 57 a0 e1                                      lsr r5, r5, r7
005f582c  a0 40 dd e5                                      ldrb r4, [sp, #0xa0]
005f5830  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
005f5834  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f5838  a3 a0 dd e5                                      ldrb sl, [sp, #0xa3]
005f583c  09 90 03 e0                                      and sb, r3, sb
005f5840  07 70 03 e0                                      and r7, r3, r7
005f5844  39 94 a0 e1                                      lsr sb, sb, r4
005f5848  7f c0 dd e5                                      ldrb ip, [sp, #0x7f]
005f584c  a4 40 dd e5                                      ldrb r4, [sp, #0xa4]
005f5850  37 66 a0 e1                                      lsr r6, r7, r6
005f5854  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005f5858  19 8a 88 e1                                      orr r8, r8, sb, lsl sl
005f585c  a5 b0 dd e5                                      ldrb fp, [sp, #0xa5]
005f5860  24 c0 8d e5                                      str ip, [sp, #0x24]
005f5864  15 c4 87 e1                                      orr ip, r7, r5, lsl r4
005f5868  20 50 9d e5                                      ldr r5, [sp, #0x20]
005f586c  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f5870  83 40 dd e5                                      ldrb r4, [sp, #0x83]
005f5874  16 6b 85 e1                                      orr r6, r5, r6, lsl fp
005f5878  78 50 9d e5                                      ldr r5, [sp, #0x78]
005f587c  33 37 a0 e1                                      lsr r3, r3, r7
005f5880  13 34 05 e0                                      and r3, r5, r3, lsl r4
005f5884  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f5888  84 40 9d e5                                      ldr r4, [sp, #0x84]
005f588c  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f5890  0a 80 08 e0                                      and r8, r8, sl
005f5894  04 80 88 e1                                      orr r8, r8, r4
005f5898  70 40 9d e5                                      ldr r4, [sp, #0x70]
005f589c  0b 60 06 e0                                      and r6, r6, fp
005f58a0  01 10 51 e2                                      subs r1, r1, #1
005f58a4  04 c0 0c e0                                      and ip, ip, r4
005f58a8  0c 80 88 e1                                      orr r8, r8, ip
005f58ac  06 60 88 e1                                      orr r6, r8, r6
005f58b0  28 80 9d e5                                      ldr r8, [sp, #0x28]
005f58b4  03 30 86 e1                                      orr r3, r6, r3
005f58b8  02 30 88 e7                                      str r3, [r8, r2]
005f58bc  04 20 82 e2                                      add r2, r2, #4
005f58c0  be ff ff 1a                                      bne #0x5f57c0
005f58c4  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f58c8  01 b0 5b e2                                      subs fp, fp, #1
005f58cc  e4 b0 8d e5                                      str fp, [sp, #0xe4]
005f58d0  b6 06 00 0a                                      beq #0x5f73b0
005f58d4  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f58d8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005f58dc  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
005f58e0  34 30 9d e5                                      ldr r3, [sp, #0x34]
005f58e4  01 00 8c e0                                      add r0, ip, r1
005f58e8  03 20 82 e0                                      add r2, r2, r3
005f58ec  2c 20 8d e5                                      str r2, [sp, #0x2c]
005f58f0  28 20 8d e5                                      str r2, [sp, #0x28]
005f58f4  30 00 8d e5                                      str r0, [sp, #0x30]
005f58f8  ab ff ff ea                                      b #0x5f57ac
005f58fc  dc 95 9f e5                                      ldr sb, [pc, #0x5dc]
005f5900  28 b0 a0 e3                                      mov fp, #0x28
005f5904  30 40 9d e5                                      ldr r4, [sp, #0x30]
005f5908  09 30 97 e7                                      ldr r3, [r7, sb]
005f590c  d8 50 9d e5                                      ldr r5, [sp, #0xd8]
005f5910  9b 38 21 e0                                      mla r1, fp, r8, r3
005f5914  9b 3a 2b e0                                      mla fp, fp, sl, r3
005f5918  19 20 d1 e5                                      ldrb r2, [r1, #0x19]
005f591c  19 30 db e5                                      ldrb r3, [fp, #0x19]
005f5920  00 00 53 e3                                      cmp r3, #0
005f5924  02 30 a0 01                                      moveq r3, r2
005f5928  00 00 52 e3                                      cmp r2, #0
005f592c  97 02 00 0a                                      beq #0x5f6390
005f5930  03 00 52 e1                                      cmp r2, r3
005f5934  95 02 00 9a                                      bls #0x5f6390
005f5938  83 00 52 e1                                      cmp r2, r3, lsl #1
005f593c  28 05 00 ca                                      bgt #0x5f6de4
005f5940  1b 30 db e5                                      ldrb r3, [fp, #0x1b]
005f5944  1b 20 d1 e5                                      ldrb r2, [r1, #0x1b]
005f5948  00 00 53 e3                                      cmp r3, #0
005f594c  02 30 a0 01                                      moveq r3, r2
005f5950  00 00 52 e3                                      cmp r2, #0
005f5954  66 08 00 1a                                      bne #0x5f7af4
005f5958  0a 10 a0 e1                                      mov r1, sl
005f595c  08 20 a0 e1                                      mov r2, r8
005f5960  6c 00 8d e2                                      add r0, sp, #0x6c
005f5964  fb e3 ff eb                                      bl #0x5ee958
005f5968  09 30 97 e7                                      ldr r3, [r7, sb]
005f596c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005f5970  28 20 a0 e3                                      mov r2, #0x28
005f5974  92 3a 2a e0                                      mla sl, r2, sl, r3
005f5978  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005f597c  00 00 50 e3                                      cmp r0, #0
005f5980  15 90 da e5                                      ldrb sb, [sl, #0x15]
005f5984  38 10 8d e5                                      str r1, [sp, #0x38]
005f5988  05 00 00 0a                                      beq #0x5f59a4
005f598c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f5990  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
005f5994  00 60 61 e2                                      rsb r6, r1, #0
005f5998  01 50 42 e2                                      sub r5, r2, #1
005f599c  91 35 25 e0                                      mla r5, r1, r5, r3
005f59a0  38 60 8d e5                                      str r6, [sp, #0x38]
005f59a4  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f59a8  00 00 57 e3                                      cmp r7, #0
005f59ac  34 50 8d 15                                      strne r5, [sp, #0x34]
005f59b0  2c 50 8d 15                                      strne r5, [sp, #0x2c]
005f59b4  7d 06 00 0a                                      beq #0x5f73b0
005f59b8  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
005f59bc  00 00 52 e3                                      cmp r2, #0
005f59c0  00 30 a0 13                                      movne r3, #0
005f59c4  40 00 00 0a                                      beq #0x5f5acc
005f59c8  09 00 94 e6                                      ldr r0, [r4], sb
005f59cc  88 c0 9d e5                                      ldr ip, [sp, #0x88]
005f59d0  7c 20 dd e5                                      ldrb r2, [sp, #0x7c]
005f59d4  7d 10 dd e5                                      ldrb r1, [sp, #0x7d]
005f59d8  0c c0 00 e0                                      and ip, r0, ip
005f59dc  3c c2 a0 e1                                      lsr ip, ip, r2
005f59e0  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
005f59e4  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005f59e8  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f59ec  02 20 00 e0                                      and r2, r0, r2
005f59f0  32 21 a0 e1                                      lsr r2, r2, r1
005f59f4  0b b0 00 e0                                      and fp, r0, fp
005f59f8  82 10 dd e5                                      ldrb r1, [sp, #0x82]
005f59fc  3b 66 a0 e1                                      lsr r6, fp, r6
005f5a00  81 50 dd e5                                      ldrb r5, [sp, #0x81]
005f5a04  16 11 a0 e1                                      lsl r1, r6, r1
005f5a08  80 70 dd e5                                      ldrb r7, [sp, #0x80]
005f5a0c  12 55 a0 e1                                      lsl r5, r2, r5
005f5a10  1c c7 a0 e1                                      lsl ip, ip, r7
005f5a14  94 60 9d e5                                      ldr r6, [sp, #0x94]
005f5a18  a0 20 dd e5                                      ldrb r2, [sp, #0xa0]
005f5a1c  a4 70 dd e5                                      ldrb r7, [sp, #0xa4]
005f5a20  06 60 00 e0                                      and r6, r0, r6
005f5a24  36 62 a0 e1                                      lsr r6, r6, r2
005f5a28  20 70 8d e5                                      str r7, [sp, #0x20]
005f5a2c  7f a0 dd e5                                      ldrb sl, [sp, #0x7f]
005f5a30  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
005f5a34  98 20 9d e5                                      ldr r2, [sp, #0x98]
005f5a38  28 10 8d e5                                      str r1, [sp, #0x28]
005f5a3c  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f5a40  a2 10 dd e5                                      ldrb r1, [sp, #0xa2]
005f5a44  30 aa a0 e1                                      lsr sl, r0, sl
005f5a48  02 20 00 e0                                      and r2, r0, r2
005f5a4c  07 00 00 e0                                      and r0, r0, r7
005f5a50  78 70 9d e5                                      ldr r7, [sp, #0x78]
005f5a54  24 50 8d e5                                      str r5, [sp, #0x24]
005f5a58  a1 b0 dd e5                                      ldrb fp, [sp, #0xa1]
005f5a5c  a3 50 dd e5                                      ldrb r5, [sp, #0xa3]
005f5a60  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f5a64  30 11 a0 e1                                      lsr r1, r0, r1
005f5a68  24 80 9d e5                                      ldr r8, [sp, #0x24]
005f5a6c  20 00 9d e5                                      ldr r0, [sp, #0x20]
005f5a70  16 c5 8c e1                                      orr ip, ip, r6, lsl r5
005f5a74  32 2b a0 e1                                      lsr r2, r2, fp
005f5a78  28 50 9d e5                                      ldr r5, [sp, #0x28]
005f5a7c  a5 b0 dd e5                                      ldrb fp, [sp, #0xa5]
005f5a80  12 20 88 e1                                      orr r2, r8, r2, lsl r0
005f5a84  11 1b 85 e1                                      orr r1, r5, r1, lsl fp
005f5a88  84 80 9d e5                                      ldr r8, [sp, #0x84]
005f5a8c  6c 50 9d e5                                      ldr r5, [sp, #0x6c]
005f5a90  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f5a94  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f5a98  08 70 87 e1                                      orr r7, r7, r8
005f5a9c  05 c0 0c e0                                      and ip, ip, r5
005f5aa0  0c 70 87 e1                                      orr r7, r7, ip
005f5aa4  00 20 02 e0                                      and r2, r2, r0
005f5aa8  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f5aac  02 70 87 e1                                      orr r7, r7, r2
005f5ab0  0b 10 01 e0                                      and r1, r1, fp
005f5ab4  01 70 87 e1                                      orr r7, r7, r1
005f5ab8  03 70 c6 e7                                      strb r7, [r6, r3]
005f5abc  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f5ac0  01 30 83 e2                                      add r3, r3, #1
005f5ac4  03 00 57 e1                                      cmp r7, r3
005f5ac8  be ff ff 1a                                      bne #0x5f59c8
005f5acc  e4 80 9d e5                                      ldr r8, [sp, #0xe4]
005f5ad0  01 80 58 e2                                      subs r8, r8, #1
005f5ad4  e4 80 8d e5                                      str r8, [sp, #0xe4]
005f5ad8  34 06 00 0a                                      beq #0x5f73b0
005f5adc  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f5ae0  34 00 9d e5                                      ldr r0, [sp, #0x34]
005f5ae4  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005f5ae8  38 10 9d e5                                      ldr r1, [sp, #0x38]
005f5aec  0c 40 8b e0                                      add r4, fp, ip
005f5af0  01 00 80 e0                                      add r0, r0, r1
005f5af4  34 00 8d e5                                      str r0, [sp, #0x34]
005f5af8  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f5afc  30 40 8d e5                                      str r4, [sp, #0x30]
005f5b00  ac ff ff ea                                      b #0x5f59b8
005f5b04  d4 93 9f e5                                      ldr sb, [pc, #0x3d4]
005f5b08  28 b0 a0 e3                                      mov fp, #0x28
005f5b0c  30 40 9d e5                                      ldr r4, [sp, #0x30]
005f5b10  09 30 97 e7                                      ldr r3, [r7, sb]
005f5b14  d8 50 9d e5                                      ldr r5, [sp, #0xd8]
005f5b18  9b 38 21 e0                                      mla r1, fp, r8, r3
005f5b1c  9b 3a 2b e0                                      mla fp, fp, sl, r3
005f5b20  19 20 d1 e5                                      ldrb r2, [r1, #0x19]
005f5b24  19 30 db e5                                      ldrb r3, [fp, #0x19]
005f5b28  00 00 53 e3                                      cmp r3, #0
005f5b2c  02 30 a0 01                                      moveq r3, r2
005f5b30  00 00 52 e3                                      cmp r2, #0
005f5b34  78 02 00 0a                                      beq #0x5f651c
005f5b38  03 00 52 e1                                      cmp r2, r3
005f5b3c  76 02 00 9a                                      bls #0x5f651c
005f5b40  83 00 52 e1                                      cmp r2, r3, lsl #1
005f5b44  02 05 00 ca                                      bgt #0x5f6f54
005f5b48  1b 30 db e5                                      ldrb r3, [fp, #0x1b]
005f5b4c  1b 20 d1 e5                                      ldrb r2, [r1, #0x1b]
005f5b50  00 00 53 e3                                      cmp r3, #0
005f5b54  02 30 a0 01                                      moveq r3, r2
005f5b58  00 00 52 e3                                      cmp r2, #0
005f5b5c  11 08 00 1a                                      bne #0x5f7ba8
005f5b60  08 20 a0 e1                                      mov r2, r8
005f5b64  0a 10 a0 e1                                      mov r1, sl
005f5b68  6c 00 8d e2                                      add r0, sp, #0x6c
005f5b6c  79 e3 ff eb                                      bl #0x5ee958
005f5b70  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005f5b74  09 30 97 e7                                      ldr r3, [r7, sb]
005f5b78  00 00 52 e3                                      cmp r2, #0
005f5b7c  28 20 a0 e3                                      mov r2, #0x28
005f5b80  92 3a 2a e0                                      mla sl, r2, sl, r3
005f5b84  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
005f5b88  15 a0 da e5                                      ldrb sl, [sl, #0x15]
005f5b8c  34 30 8d e5                                      str r3, [sp, #0x34]
005f5b90  38 a0 8d e5                                      str sl, [sp, #0x38]
005f5b94  05 00 00 0a                                      beq #0x5f5bb0
005f5b98  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f5b9c  d8 70 9d e5                                      ldr r7, [sp, #0xd8]
005f5ba0  00 80 63 e2                                      rsb r8, r3, #0
005f5ba4  01 50 46 e2                                      sub r5, r6, #1
005f5ba8  93 75 25 e0                                      mla r5, r3, r5, r7
005f5bac  34 80 8d e5                                      str r8, [sp, #0x34]
005f5bb0  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f5bb4  00 00 5b e3                                      cmp fp, #0
005f5bb8  2c 50 8d 15                                      strne r5, [sp, #0x2c]
005f5bbc  28 50 8d 15                                      strne r5, [sp, #0x28]
005f5bc0  fa 05 00 0a                                      beq #0x5f73b0
005f5bc4  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005f5bc8  00 00 53 e3                                      cmp r3, #0
005f5bcc  42 00 00 0a                                      beq #0x5f5cdc
005f5bd0  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f5bd4  00 20 a0 e3                                      mov r2, #0
005f5bd8  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005f5bdc  88 80 9d e5                                      ldr r8, [sp, #0x88]
005f5be0  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
005f5be4  0c 30 94 e6                                      ldr r3, [r4], ip
005f5be8  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f5bec  81 50 dd e5                                      ldrb r5, [sp, #0x81]
005f5bf0  08 80 03 e0                                      and r8, r3, r8
005f5bf4  38 80 a0 e1                                      lsr r8, r8, r0
005f5bf8  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f5bfc  90 b0 9d e5                                      ldr fp, [sp, #0x90]
005f5c00  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f5c04  00 00 03 e0                                      and r0, r3, r0
005f5c08  30 0c a0 e1                                      lsr r0, r0, ip
005f5c0c  10 55 a0 e1                                      lsl r5, r0, r5
005f5c10  0b b0 03 e0                                      and fp, r3, fp
005f5c14  82 c0 dd e5                                      ldrb ip, [sp, #0x82]
005f5c18  3b 66 a0 e1                                      lsr r6, fp, r6
005f5c1c  16 cc a0 e1                                      lsl ip, r6, ip
005f5c20  80 70 dd e5                                      ldrb r7, [sp, #0x80]
005f5c24  3c 50 8d e5                                      str r5, [sp, #0x3c]
005f5c28  98 50 9d e5                                      ldr r5, [sp, #0x98]
005f5c2c  18 87 a0 e1                                      lsl r8, r8, r7
005f5c30  a1 70 dd e5                                      ldrb r7, [sp, #0xa1]
005f5c34  94 90 9d e5                                      ldr sb, [sp, #0x94]
005f5c38  05 50 03 e0                                      and r5, r3, r5
005f5c3c  20 c0 8d e5                                      str ip, [sp, #0x20]
005f5c40  35 57 a0 e1                                      lsr r5, r5, r7
005f5c44  a0 c0 dd e5                                      ldrb ip, [sp, #0xa0]
005f5c48  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
005f5c4c  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f5c50  a3 a0 dd e5                                      ldrb sl, [sp, #0xa3]
005f5c54  09 90 03 e0                                      and sb, r3, sb
005f5c58  07 70 03 e0                                      and r7, r3, r7
005f5c5c  39 9c a0 e1                                      lsr sb, sb, ip
005f5c60  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f5c64  a4 c0 dd e5                                      ldrb ip, [sp, #0xa4]
005f5c68  37 66 a0 e1                                      lsr r6, r7, r6
005f5c6c  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005f5c70  19 8a 88 e1                                      orr r8, r8, sb, lsl sl
005f5c74  a5 b0 dd e5                                      ldrb fp, [sp, #0xa5]
005f5c78  24 00 8d e5                                      str r0, [sp, #0x24]
005f5c7c  15 0c 87 e1                                      orr r0, r7, r5, lsl ip
005f5c80  20 50 9d e5                                      ldr r5, [sp, #0x20]
005f5c84  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f5c88  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005f5c8c  16 6b 85 e1                                      orr r6, r5, r6, lsl fp
005f5c90  78 50 9d e5                                      ldr r5, [sp, #0x78]
005f5c94  33 37 a0 e1                                      lsr r3, r3, r7
005f5c98  13 3c 05 e0                                      and r3, r5, r3, lsl ip
005f5c9c  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005f5ca0  84 c0 9d e5                                      ldr ip, [sp, #0x84]
005f5ca4  74 b0 9d e5                                      ldr fp, [sp, #0x74]
005f5ca8  0a 80 08 e0                                      and r8, r8, sl
005f5cac  0c 80 88 e1                                      orr r8, r8, ip
005f5cb0  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f5cb4  0b 60 06 e0                                      and r6, r6, fp
005f5cb8  01 10 51 e2                                      subs r1, r1, #1
005f5cbc  0c 00 00 e0                                      and r0, r0, ip
005f5cc0  00 80 88 e1                                      orr r8, r8, r0
005f5cc4  06 60 88 e1                                      orr r6, r8, r6
005f5cc8  28 80 9d e5                                      ldr r8, [sp, #0x28]
005f5ccc  03 30 86 e1                                      orr r3, r6, r3
005f5cd0  b2 30 88 e1                                      strh r3, [r8, r2]
005f5cd4  02 20 82 e2                                      add r2, r2, #2
005f5cd8  be ff ff 1a                                      bne #0x5f5bd8
005f5cdc  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f5ce0  01 b0 5b e2                                      subs fp, fp, #1
005f5ce4  e4 b0 8d e5                                      str fp, [sp, #0xe4]
005f5ce8  b0 05 00 0a                                      beq #0x5f73b0
005f5cec  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f5cf0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005f5cf4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f5cf8  34 20 9d e5                                      ldr r2, [sp, #0x34]
005f5cfc  00 40 8c e0                                      add r4, ip, r0
005f5d00  02 10 81 e0                                      add r1, r1, r2
005f5d04  2c 10 8d e5                                      str r1, [sp, #0x2c]
005f5d08  28 10 8d e5                                      str r1, [sp, #0x28]
005f5d0c  30 40 8d e5                                      str r4, [sp, #0x30]
005f5d10  ab ff ff ea                                      b #0x5f5bc4
005f5d14  08 30 a0 e1                                      mov r3, r8
005f5d18  d8 80 8d e2                                      add r8, sp, #0xd8
005f5d1c  00 19 98 e8                                      ldm r8, {r8, fp, ip}
005f5d20  e4 40 9d e5                                      ldr r4, [sp, #0xe4]
005f5d24  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005f5d28  0a 00 a0 e1                                      mov r0, sl
005f5d2c  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f5d30  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f5d34  00 19 8d e8                                      stm sp, {r8, fp, ip}
005f5d38  0c 40 8d e5                                      str r4, [sp, #0xc]
005f5d3c  10 50 8d e5                                      str r5, [sp, #0x10]
005f5d40  6b e4 ff eb                                      bl #0x5eeef4
005f5d44  c5 fc ff ea                                      b #0x5f5060
005f5d48  28 10 a0 e3                                      mov r1, #0x28
005f5d4c  09 30 97 e7                                      ldr r3, [r7, sb]
005f5d50  91 08 02 e0                                      mul r2, r1, r8
005f5d54  91 0a 00 e0                                      mul r0, r1, sl
005f5d58  02 10 83 e0                                      add r1, r3, r2
005f5d5c  1b 10 d1 e5                                      ldrb r1, [r1, #0x1b]
005f5d60  00 60 83 e0                                      add r6, r3, r0
005f5d64  1b b0 d6 e5                                      ldrb fp, [r6, #0x1b]
005f5d68  34 10 8d e5                                      str r1, [sp, #0x34]
005f5d6c  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005f5d70  00 00 5b e3                                      cmp fp, #0
005f5d74  0b 10 a0 e1                                      mov r1, fp
005f5d78  0c 10 a0 01                                      moveq r1, ip
005f5d7c  00 00 5c e3                                      cmp ip, #0
005f5d80  38 b0 8d e5                                      str fp, [sp, #0x38]
005f5d84  49 02 00 0a                                      beq #0x5f66b0
005f5d88  01 00 5c e1                                      cmp ip, r1
005f5d8c  47 02 00 9a                                      bls #0x5f66b0
005f5d90  34 b0 9d e5                                      ldr fp, [sp, #0x34]
005f5d94  8b 00 51 e1                                      cmp r1, fp, lsl #1
005f5d98  b4 08 00 aa                                      bge #0x5f8070
005f5d9c  0a 10 a0 e1                                      mov r1, sl
005f5da0  08 20 a0 e1                                      mov r2, r8
005f5da4  6c 00 8d e2                                      add r0, sp, #0x6c
005f5da8  0e e2 ff eb                                      bl #0x5ee5e8
005f5dac  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005f5db0  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
005f5db4  15 90 d6 e5                                      ldrb sb, [r6, #0x15]
005f5db8  00 00 5c e3                                      cmp ip, #0
005f5dbc  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f5dc0  05 00 00 0a                                      beq #0x5f5ddc
005f5dc4  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f5dc8  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
005f5dcc  00 30 60 e2                                      rsb r3, r0, #0
005f5dd0  01 50 41 e2                                      sub r5, r1, #1
005f5dd4  90 25 25 e0                                      mla r5, r0, r5, r2
005f5dd8  2c 30 8d e5                                      str r3, [sp, #0x2c]
005f5ddc  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f5de0  00 00 56 e3                                      cmp r6, #0
005f5de4  28 50 8d 15                                      strne r5, [sp, #0x28]
005f5de8  24 50 8d 15                                      strne r5, [sp, #0x24]
005f5dec  6f 05 00 0a                                      beq #0x5f73b0
005f5df0  e0 60 9d e5                                      ldr r6, [sp, #0xe0]
005f5df4  00 00 56 e3                                      cmp r6, #0
005f5df8  29 00 00 0a                                      beq #0x5f5ea4
005f5dfc  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f5e00  00 20 a0 e3                                      mov r2, #0
005f5e04  09 30 d4 e6                                      ldrb r3, [r4], sb
005f5e08  90 00 9d e5                                      ldr r0, [sp, #0x90]
005f5e0c  7f c0 dd e5                                      ldrb ip, [sp, #0x7f]
005f5e10  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f5e14  00 00 03 e0                                      and r0, r3, r0
005f5e18  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f5e1c  30 0c a0 e1                                      lsr r0, r0, ip
005f5e20  7d 50 dd e5                                      ldrb r5, [sp, #0x7d]
005f5e24  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
005f5e28  82 70 dd e5                                      ldrb r7, [sp, #0x82]
005f5e2c  80 00 a0 e1                                      lsl r0, r0, #1
005f5e30  b0 00 9c e1                                      ldrh r0, [ip, r0]
005f5e34  88 b0 dd e5                                      ldrb fp, [sp, #0x88]
005f5e38  33 aa a0 e1                                      lsr sl, r3, sl
005f5e3c  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f5e40  33 55 a0 e1                                      lsr r5, r3, r5
005f5e44  33 36 a0 e1                                      lsr r3, r3, r6
005f5e48  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f5e4c  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f5e50  20 70 8d e5                                      str r7, [sp, #0x20]
005f5e54  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f5e58  15 cc 06 e0                                      and ip, r6, r5, lsl ip
005f5e5c  50 0b a0 e1                                      asr r0, r0, fp
005f5e60  74 60 9d e5                                      ldr r6, [sp, #0x74]
005f5e64  20 b0 9d e5                                      ldr fp, [sp, #0x20]
005f5e68  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f5e6c  13 3b 06 e0                                      and r3, r6, r3, lsl fp
005f5e70  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f5e74  78 b0 9d e5                                      ldr fp, [sp, #0x78]
005f5e78  01 10 51 e2                                      subs r1, r1, #1
005f5e7c  10 08 0b e0                                      and r0, fp, r0, lsl r8
005f5e80  84 80 9d e5                                      ldr r8, [sp, #0x84]
005f5e84  08 70 87 e1                                      orr r7, r7, r8
005f5e88  0c c0 87 e1                                      orr ip, r7, ip
005f5e8c  03 30 8c e1                                      orr r3, ip, r3
005f5e90  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005f5e94  00 00 83 e1                                      orr r0, r3, r0
005f5e98  02 00 8c e7                                      str r0, [ip, r2]
005f5e9c  04 20 82 e2                                      add r2, r2, #4
005f5ea0  d7 ff ff 1a                                      bne #0x5f5e04
005f5ea4  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f5ea8  01 00 50 e2                                      subs r0, r0, #1
005f5eac  e4 00 8d e5                                      str r0, [sp, #0xe4]
005f5eb0  3e 05 00 0a                                      beq #0x5f73b0
005f5eb4  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f5eb8  28 30 9d e5                                      ldr r3, [sp, #0x28]
005f5ebc  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f5ec0  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005f5ec4  02 40 81 e0                                      add r4, r1, r2
005f5ec8  05 30 83 e0                                      add r3, r3, r5
005f5ecc  28 30 8d e5                                      str r3, [sp, #0x28]
005f5ed0  24 30 8d e5                                      str r3, [sp, #0x24]
005f5ed4  30 40 8d e5                                      str r4, [sp, #0x30]
005f5ed8  c4 ff ff ea                                      b #0x5f5df0
; mapping-symbol data/literal pool
005f5edc  70 fa 39 00 34 1f 00 00                          .byte 0x70, 0xfa, 0x39, 0x00, 0x34, 0x1f, 0x00, 0x00
; decoder-mode: arm
005f5ee4  28 10 a0 e3                                      mov r1, #0x28
005f5ee8  09 30 97 e7                                      ldr r3, [r7, sb]
005f5eec  91 08 02 e0                                      mul r2, r1, r8
005f5ef0  91 0a 00 e0                                      mul r0, r1, sl
005f5ef4  02 10 83 e0                                      add r1, r3, r2
005f5ef8  1b 10 d1 e5                                      ldrb r1, [r1, #0x1b]
005f5efc  00 60 83 e0                                      add r6, r3, r0
005f5f00  1b b0 d6 e5                                      ldrb fp, [r6, #0x1b]
005f5f04  34 10 8d e5                                      str r1, [sp, #0x34]
005f5f08  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005f5f0c  00 00 5b e3                                      cmp fp, #0
005f5f10  0b 10 a0 e1                                      mov r1, fp
005f5f14  0c 10 a0 01                                      moveq r1, ip
005f5f18  00 00 5c e3                                      cmp ip, #0
005f5f1c  38 b0 8d e5                                      str fp, [sp, #0x38]
005f5f20  10 02 00 0a                                      beq #0x5f6768
005f5f24  01 00 5c e1                                      cmp ip, r1
005f5f28  0e 02 00 9a                                      bls #0x5f6768
005f5f2c  34 b0 9d e5                                      ldr fp, [sp, #0x34]
005f5f30  8b 00 51 e1                                      cmp r1, fp, lsl #1
005f5f34  f3 08 00 aa                                      bge #0x5f8308
005f5f38  0a 10 a0 e1                                      mov r1, sl
005f5f3c  08 20 a0 e1                                      mov r2, r8
005f5f40  6c 00 8d e2                                      add r0, sp, #0x6c
005f5f44  a7 e1 ff eb                                      bl #0x5ee5e8
005f5f48  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005f5f4c  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
005f5f50  15 90 d6 e5                                      ldrb sb, [r6, #0x15]
005f5f54  00 00 5c e3                                      cmp ip, #0
005f5f58  28 00 8d e5                                      str r0, [sp, #0x28]
005f5f5c  05 00 00 0a                                      beq #0x5f5f78
005f5f60  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f5f64  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
005f5f68  00 30 60 e2                                      rsb r3, r0, #0
005f5f6c  01 40 41 e2                                      sub r4, r1, #1
005f5f70  90 24 24 e0                                      mla r4, r0, r4, r2
005f5f74  28 30 8d e5                                      str r3, [sp, #0x28]
005f5f78  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f5f7c  00 00 56 e3                                      cmp r6, #0
005f5f80  20 40 8d 15                                      strne r4, [sp, #0x20]
005f5f84  09 05 00 0a                                      beq #0x5f73b0
005f5f88  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005f5f8c  00 00 53 e3                                      cmp r3, #0
005f5f90  00 20 a0 13                                      movne r2, #0
005f5f94  26 00 00 0a                                      beq #0x5f6034
005f5f98  b9 30 95 e0                                      ldrh r3, [r5], sb
005f5f9c  90 10 9d e5                                      ldr r1, [sp, #0x90]
005f5fa0  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f5fa4  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f5fa8  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f5fac  01 10 03 e0                                      and r1, r3, r1
005f5fb0  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f5fb4  31 10 a0 e1                                      lsr r1, r1, r0
005f5fb8  7d 60 dd e5                                      ldrb r6, [sp, #0x7d]
005f5fbc  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f5fc0  33 aa a0 e1                                      lsr sl, r3, sl
005f5fc4  7e c0 dd e5                                      ldrb ip, [sp, #0x7e]
005f5fc8  81 10 a0 e1                                      lsl r1, r1, #1
005f5fcc  81 40 dd e5                                      ldrb r4, [sp, #0x81]
005f5fd0  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f5fd4  70 80 9d e5                                      ldr r8, [sp, #0x70]
005f5fd8  b1 00 90 e1                                      ldrh r0, [r0, r1]
005f5fdc  33 66 a0 e1                                      lsr r6, r3, r6
005f5fe0  88 10 dd e5                                      ldrb r1, [sp, #0x88]
005f5fe4  82 b0 dd e5                                      ldrb fp, [sp, #0x82]
005f5fe8  33 3c a0 e1                                      lsr r3, r3, ip
005f5fec  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005f5ff0  16 44 08 e0                                      and r4, r8, r6, lsl r4
005f5ff4  50 11 a0 e1                                      asr r1, r0, r1
005f5ff8  83 60 dd e5                                      ldrb r6, [sp, #0x83]
005f5ffc  78 00 9d e5                                      ldr r0, [sp, #0x78]
005f6000  13 3b 0c e0                                      and r3, ip, r3, lsl fp
005f6004  11 16 00 e0                                      and r1, r0, r1, lsl r6
005f6008  84 00 9d e5                                      ldr r0, [sp, #0x84]
005f600c  04 70 87 e1                                      orr r7, r7, r4
005f6010  00 70 87 e1                                      orr r7, r7, r0
005f6014  03 30 87 e1                                      orr r3, r7, r3
005f6018  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f601c  01 10 83 e1                                      orr r1, r3, r1
005f6020  02 10 c7 e7                                      strb r1, [r7, r2]
005f6024  e0 80 9d e5                                      ldr r8, [sp, #0xe0]
005f6028  01 20 82 e2                                      add r2, r2, #1
005f602c  02 00 58 e1                                      cmp r8, r2
005f6030  d8 ff ff 1a                                      bne #0x5f5f98
005f6034  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f6038  01 b0 5b e2                                      subs fp, fp, #1
005f603c  e4 b0 8d e5                                      str fp, [sp, #0xe4]
005f6040  da 04 00 0a                                      beq #0x5f73b0
005f6044  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f6048  20 10 9d e5                                      ldr r1, [sp, #0x20]
005f604c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f6050  28 20 9d e5                                      ldr r2, [sp, #0x28]
005f6054  00 50 8c e0                                      add r5, ip, r0
005f6058  02 10 81 e0                                      add r1, r1, r2
005f605c  20 10 8d e5                                      str r1, [sp, #0x20]
005f6060  30 50 8d e5                                      str r5, [sp, #0x30]
005f6064  c7 ff ff ea                                      b #0x5f5f88
005f6068  28 10 a0 e3                                      mov r1, #0x28
005f606c  09 30 97 e7                                      ldr r3, [r7, sb]
005f6070  91 08 02 e0                                      mul r2, r1, r8
005f6074  91 0a 00 e0                                      mul r0, r1, sl
005f6078  02 10 83 e0                                      add r1, r3, r2
005f607c  1b 10 d1 e5                                      ldrb r1, [r1, #0x1b]
005f6080  00 60 83 e0                                      add r6, r3, r0
005f6084  1b b0 d6 e5                                      ldrb fp, [r6, #0x1b]
005f6088  34 10 8d e5                                      str r1, [sp, #0x34]
005f608c  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005f6090  00 00 5b e3                                      cmp fp, #0
005f6094  0b 10 a0 e1                                      mov r1, fp
005f6098  0c 10 a0 01                                      moveq r1, ip
005f609c  00 00 5c e3                                      cmp ip, #0
005f60a0  38 b0 8d e5                                      str fp, [sp, #0x38]
005f60a4  dd 01 00 0a                                      beq #0x5f6820
005f60a8  01 00 5c e1                                      cmp ip, r1
005f60ac  db 01 00 9a                                      bls #0x5f6820
005f60b0  34 b0 9d e5                                      ldr fp, [sp, #0x34]
005f60b4  8b 00 51 e1                                      cmp r1, fp, lsl #1
005f60b8  c0 07 00 aa                                      bge #0x5f7fc0
005f60bc  0a 10 a0 e1                                      mov r1, sl
005f60c0  08 20 a0 e1                                      mov r2, r8
005f60c4  6c 00 8d e2                                      add r0, sp, #0x6c
005f60c8  46 e1 ff eb                                      bl #0x5ee5e8
005f60cc  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005f60d0  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
005f60d4  15 90 d6 e5                                      ldrb sb, [r6, #0x15]
005f60d8  00 00 5c e3                                      cmp ip, #0
005f60dc  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f60e0  05 00 00 0a                                      beq #0x5f60fc
005f60e4  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f60e8  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
005f60ec  00 30 60 e2                                      rsb r3, r0, #0
005f60f0  01 50 41 e2                                      sub r5, r1, #1
005f60f4  90 25 25 e0                                      mla r5, r0, r5, r2
005f60f8  2c 30 8d e5                                      str r3, [sp, #0x2c]
005f60fc  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f6100  00 00 56 e3                                      cmp r6, #0
005f6104  28 50 8d 15                                      strne r5, [sp, #0x28]
005f6108  24 50 8d 15                                      strne r5, [sp, #0x24]
005f610c  a7 04 00 0a                                      beq #0x5f73b0
005f6110  e0 60 9d e5                                      ldr r6, [sp, #0xe0]
005f6114  00 00 56 e3                                      cmp r6, #0
005f6118  29 00 00 0a                                      beq #0x5f61c4
005f611c  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f6120  00 20 a0 e3                                      mov r2, #0
005f6124  09 30 d4 e6                                      ldrb r3, [r4], sb
005f6128  90 00 9d e5                                      ldr r0, [sp, #0x90]
005f612c  7f c0 dd e5                                      ldrb ip, [sp, #0x7f]
005f6130  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f6134  00 00 03 e0                                      and r0, r3, r0
005f6138  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f613c  30 0c a0 e1                                      lsr r0, r0, ip
005f6140  7d 50 dd e5                                      ldrb r5, [sp, #0x7d]
005f6144  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
005f6148  82 70 dd e5                                      ldrb r7, [sp, #0x82]
005f614c  80 00 a0 e1                                      lsl r0, r0, #1
005f6150  b0 00 9c e1                                      ldrh r0, [ip, r0]
005f6154  88 b0 dd e5                                      ldrb fp, [sp, #0x88]
005f6158  33 aa a0 e1                                      lsr sl, r3, sl
005f615c  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f6160  33 55 a0 e1                                      lsr r5, r3, r5
005f6164  33 36 a0 e1                                      lsr r3, r3, r6
005f6168  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f616c  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f6170  20 70 8d e5                                      str r7, [sp, #0x20]
005f6174  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f6178  15 cc 06 e0                                      and ip, r6, r5, lsl ip
005f617c  50 0b a0 e1                                      asr r0, r0, fp
005f6180  74 60 9d e5                                      ldr r6, [sp, #0x74]
005f6184  20 b0 9d e5                                      ldr fp, [sp, #0x20]
005f6188  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f618c  13 3b 06 e0                                      and r3, r6, r3, lsl fp
005f6190  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f6194  78 b0 9d e5                                      ldr fp, [sp, #0x78]
005f6198  01 10 51 e2                                      subs r1, r1, #1
005f619c  10 08 0b e0                                      and r0, fp, r0, lsl r8
005f61a0  84 80 9d e5                                      ldr r8, [sp, #0x84]
005f61a4  08 70 87 e1                                      orr r7, r7, r8
005f61a8  0c c0 87 e1                                      orr ip, r7, ip
005f61ac  03 30 8c e1                                      orr r3, ip, r3
005f61b0  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005f61b4  00 00 83 e1                                      orr r0, r3, r0
005f61b8  b2 00 8c e1                                      strh r0, [ip, r2]
005f61bc  02 20 82 e2                                      add r2, r2, #2
005f61c0  d7 ff ff 1a                                      bne #0x5f6124
005f61c4  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f61c8  01 00 50 e2                                      subs r0, r0, #1
005f61cc  e4 00 8d e5                                      str r0, [sp, #0xe4]
005f61d0  76 04 00 0a                                      beq #0x5f73b0
005f61d4  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f61d8  28 30 9d e5                                      ldr r3, [sp, #0x28]
005f61dc  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f61e0  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005f61e4  02 40 81 e0                                      add r4, r1, r2
005f61e8  05 30 83 e0                                      add r3, r3, r5
005f61ec  28 30 8d e5                                      str r3, [sp, #0x28]
005f61f0  24 30 8d e5                                      str r3, [sp, #0x24]
005f61f4  30 40 8d e5                                      str r4, [sp, #0x30]
005f61f8  c4 ff ff ea                                      b #0x5f6110
005f61fc  28 10 a0 e3                                      mov r1, #0x28
005f6200  09 30 97 e7                                      ldr r3, [r7, sb]
005f6204  91 08 02 e0                                      mul r2, r1, r8
005f6208  91 0a 00 e0                                      mul r0, r1, sl
005f620c  02 10 83 e0                                      add r1, r3, r2
005f6210  1b 10 d1 e5                                      ldrb r1, [r1, #0x1b]
005f6214  00 50 83 e0                                      add r5, r3, r0
005f6218  1b c0 d5 e5                                      ldrb ip, [r5, #0x1b]
005f621c  38 10 8d e5                                      str r1, [sp, #0x38]
005f6220  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f6224  00 00 5c e3                                      cmp ip, #0
005f6228  0c 10 a0 e1                                      mov r1, ip
005f622c  06 10 a0 01                                      moveq r1, r6
005f6230  00 00 56 e3                                      cmp r6, #0
005f6234  3c c0 8d e5                                      str ip, [sp, #0x3c]
005f6238  a6 01 00 0a                                      beq #0x5f68d8
005f623c  01 00 56 e1                                      cmp r6, r1
005f6240  a4 01 00 9a                                      bls #0x5f68d8
005f6244  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f6248  86 00 51 e1                                      cmp r1, r6, lsl #1
005f624c  59 04 00 aa                                      bge #0x5f73b8
005f6250  08 20 a0 e1                                      mov r2, r8
005f6254  0a 10 a0 e1                                      mov r1, sl
005f6258  6c 00 8d e2                                      add r0, sp, #0x6c
005f625c  e1 e0 ff eb                                      bl #0x5ee5e8
005f6260  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f6264  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f6268  15 90 d5 e5                                      ldrb sb, [r5, #0x15]
005f626c  00 00 57 e3                                      cmp r7, #0
005f6270  2c 80 8d e5                                      str r8, [sp, #0x2c]
005f6274  05 00 00 0a                                      beq #0x5f6290
005f6278  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f627c  d8 c0 9d e5                                      ldr ip, [sp, #0xd8]
005f6280  00 00 68 e2                                      rsb r0, r8, #0
005f6284  01 40 4b e2                                      sub r4, fp, #1
005f6288  98 c4 24 e0                                      mla r4, r8, r4, ip
005f628c  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f6290  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f6294  00 00 51 e3                                      cmp r1, #0
005f6298  44 04 00 0a                                      beq #0x5f73b0
005f629c  30 00 9d e5                                      ldr r0, [sp, #0x30]
005f62a0  20 40 8d e5                                      str r4, [sp, #0x20]
005f62a4  e0 b0 9d e5                                      ldr fp, [sp, #0xe0]
005f62a8  00 00 5b e3                                      cmp fp, #0
005f62ac  29 00 00 0a                                      beq #0x5f6358
005f62b0  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f62b4  00 20 a0 e3                                      mov r2, #0
005f62b8  b9 30 90 e0                                      ldrh r3, [r0], sb
005f62bc  90 c0 9d e5                                      ldr ip, [sp, #0x90]
005f62c0  7f 40 dd e5                                      ldrb r4, [sp, #0x7f]
005f62c4  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f62c8  0c c0 03 e0                                      and ip, r3, ip
005f62cc  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f62d0  3c c4 a0 e1                                      lsr ip, ip, r4
005f62d4  7d 50 dd e5                                      ldrb r5, [sp, #0x7d]
005f62d8  8c 40 9d e5                                      ldr r4, [sp, #0x8c]
005f62dc  82 70 dd e5                                      ldrb r7, [sp, #0x82]
005f62e0  8c c0 a0 e1                                      lsl ip, ip, #1
005f62e4  bc c0 94 e1                                      ldrh ip, [r4, ip]
005f62e8  88 b0 dd e5                                      ldrb fp, [sp, #0x88]
005f62ec  33 aa a0 e1                                      lsr sl, r3, sl
005f62f0  81 40 dd e5                                      ldrb r4, [sp, #0x81]
005f62f4  33 55 a0 e1                                      lsr r5, r3, r5
005f62f8  33 36 a0 e1                                      lsr r3, r3, r6
005f62fc  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f6300  30 70 8d e5                                      str r7, [sp, #0x30]
005f6304  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f6308  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f630c  15 44 06 e0                                      and r4, r6, r5, lsl r4
005f6310  5c cb a0 e1                                      asr ip, ip, fp
005f6314  74 60 9d e5                                      ldr r6, [sp, #0x74]
005f6318  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f631c  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f6320  13 3b 06 e0                                      and r3, r6, r3, lsl fp
005f6324  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f6328  78 b0 9d e5                                      ldr fp, [sp, #0x78]
005f632c  01 10 51 e2                                      subs r1, r1, #1
005f6330  1c c8 0b e0                                      and ip, fp, ip, lsl r8
005f6334  84 80 9d e5                                      ldr r8, [sp, #0x84]
005f6338  08 70 87 e1                                      orr r7, r7, r8
005f633c  04 40 87 e1                                      orr r4, r7, r4
005f6340  03 30 84 e1                                      orr r3, r4, r3
005f6344  0c c0 83 e1                                      orr ip, r3, ip
005f6348  20 30 9d e5                                      ldr r3, [sp, #0x20]
005f634c  02 c0 83 e7                                      str ip, [r3, r2]
005f6350  04 20 82 e2                                      add r2, r2, #4
005f6354  d7 ff ff 1a                                      bne #0x5f62b8
005f6358  e4 40 9d e5                                      ldr r4, [sp, #0xe4]
005f635c  01 40 54 e2                                      subs r4, r4, #1
005f6360  e4 40 8d e5                                      str r4, [sp, #0xe4]
005f6364  11 04 00 0a                                      beq #0x5f73b0
005f6368  28 50 9d e5                                      ldr r5, [sp, #0x28]
005f636c  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f6370  5c 60 9d e5                                      ldr r6, [sp, #0x5c]
005f6374  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
005f6378  06 50 85 e0                                      add r5, r5, r6
005f637c  08 70 87 e0                                      add r7, r7, r8
005f6380  28 50 8d e5                                      str r5, [sp, #0x28]
005f6384  20 70 8d e5                                      str r7, [sp, #0x20]
005f6388  05 00 a0 e1                                      mov r0, r5
005f638c  c4 ff ff ea                                      b #0x5f62a4
005f6390  28 10 a0 e3                                      mov r1, #0x28
005f6394  09 30 97 e7                                      ldr r3, [r7, sb]
005f6398  91 08 02 e0                                      mul r2, r1, r8
005f639c  91 0a 00 e0                                      mul r0, r1, sl
005f63a0  02 10 83 e0                                      add r1, r3, r2
005f63a4  1b 10 d1 e5                                      ldrb r1, [r1, #0x1b]
005f63a8  00 60 83 e0                                      add r6, r3, r0
005f63ac  1b b0 d6 e5                                      ldrb fp, [r6, #0x1b]
005f63b0  34 10 8d e5                                      str r1, [sp, #0x34]
005f63b4  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005f63b8  00 00 5b e3                                      cmp fp, #0
005f63bc  0b 10 a0 e1                                      mov r1, fp
005f63c0  0c 10 a0 01                                      moveq r1, ip
005f63c4  00 00 5c e3                                      cmp ip, #0
005f63c8  38 b0 8d e5                                      str fp, [sp, #0x38]
005f63cc  6e 01 00 0a                                      beq #0x5f698c
005f63d0  01 00 5c e1                                      cmp ip, r1
005f63d4  6c 01 00 9a                                      bls #0x5f698c
005f63d8  34 b0 9d e5                                      ldr fp, [sp, #0x34]
005f63dc  8b 00 51 e1                                      cmp r1, fp, lsl #1
005f63e0  7e 04 00 aa                                      bge #0x5f75e0
005f63e4  0a 10 a0 e1                                      mov r1, sl
005f63e8  08 20 a0 e1                                      mov r2, r8
005f63ec  6c 00 8d e2                                      add r0, sp, #0x6c
005f63f0  7c e0 ff eb                                      bl #0x5ee5e8
005f63f4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005f63f8  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
005f63fc  15 90 d6 e5                                      ldrb sb, [r6, #0x15]
005f6400  00 00 5c e3                                      cmp ip, #0
005f6404  28 00 8d e5                                      str r0, [sp, #0x28]
005f6408  05 00 00 0a                                      beq #0x5f6424
005f640c  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f6410  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
005f6414  00 30 60 e2                                      rsb r3, r0, #0
005f6418  01 50 41 e2                                      sub r5, r1, #1
005f641c  90 25 25 e0                                      mla r5, r0, r5, r2
005f6420  28 30 8d e5                                      str r3, [sp, #0x28]
005f6424  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f6428  00 00 56 e3                                      cmp r6, #0
005f642c  24 50 8d 15                                      strne r5, [sp, #0x24]
005f6430  20 50 8d 15                                      strne r5, [sp, #0x20]
005f6434  dd 03 00 0a                                      beq #0x5f73b0
005f6438  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005f643c  00 00 53 e3                                      cmp r3, #0
005f6440  00 20 a0 13                                      movne r2, #0
005f6444  26 00 00 0a                                      beq #0x5f64e4
005f6448  09 30 94 e6                                      ldr r3, [r4], sb
005f644c  90 10 9d e5                                      ldr r1, [sp, #0x90]
005f6450  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f6454  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f6458  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f645c  01 10 03 e0                                      and r1, r3, r1
005f6460  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f6464  31 10 a0 e1                                      lsr r1, r1, r0
005f6468  7d 60 dd e5                                      ldrb r6, [sp, #0x7d]
005f646c  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005f6470  33 aa a0 e1                                      lsr sl, r3, sl
005f6474  7e c0 dd e5                                      ldrb ip, [sp, #0x7e]
005f6478  81 10 a0 e1                                      lsl r1, r1, #1
005f647c  81 50 dd e5                                      ldrb r5, [sp, #0x81]
005f6480  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f6484  70 80 9d e5                                      ldr r8, [sp, #0x70]
005f6488  b1 00 90 e1                                      ldrh r0, [r0, r1]
005f648c  33 66 a0 e1                                      lsr r6, r3, r6
005f6490  88 10 dd e5                                      ldrb r1, [sp, #0x88]
005f6494  82 b0 dd e5                                      ldrb fp, [sp, #0x82]
005f6498  33 3c a0 e1                                      lsr r3, r3, ip
005f649c  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005f64a0  16 55 08 e0                                      and r5, r8, r6, lsl r5
005f64a4  50 11 a0 e1                                      asr r1, r0, r1
005f64a8  83 60 dd e5                                      ldrb r6, [sp, #0x83]
005f64ac  78 00 9d e5                                      ldr r0, [sp, #0x78]
005f64b0  13 3b 0c e0                                      and r3, ip, r3, lsl fp
005f64b4  11 16 00 e0                                      and r1, r0, r1, lsl r6
005f64b8  84 00 9d e5                                      ldr r0, [sp, #0x84]
005f64bc  05 70 87 e1                                      orr r7, r7, r5
005f64c0  00 70 87 e1                                      orr r7, r7, r0
005f64c4  03 30 87 e1                                      orr r3, r7, r3
005f64c8  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f64cc  01 10 83 e1                                      orr r1, r3, r1
005f64d0  02 10 c7 e7                                      strb r1, [r7, r2]
005f64d4  e0 80 9d e5                                      ldr r8, [sp, #0xe0]
005f64d8  01 20 82 e2                                      add r2, r2, #1
005f64dc  02 00 58 e1                                      cmp r8, r2
005f64e0  d8 ff ff 1a                                      bne #0x5f6448
005f64e4  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f64e8  01 b0 5b e2                                      subs fp, fp, #1
005f64ec  e4 b0 8d e5                                      str fp, [sp, #0xe4]
005f64f0  ae 03 00 0a                                      beq #0x5f73b0
005f64f4  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f64f8  24 10 9d e5                                      ldr r1, [sp, #0x24]
005f64fc  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f6500  28 20 9d e5                                      ldr r2, [sp, #0x28]
005f6504  00 40 8c e0                                      add r4, ip, r0
005f6508  02 10 81 e0                                      add r1, r1, r2
005f650c  24 10 8d e5                                      str r1, [sp, #0x24]
005f6510  20 10 8d e5                                      str r1, [sp, #0x20]
005f6514  30 40 8d e5                                      str r4, [sp, #0x30]
005f6518  c6 ff ff ea                                      b #0x5f6438
005f651c  28 10 a0 e3                                      mov r1, #0x28
005f6520  09 30 97 e7                                      ldr r3, [r7, sb]
005f6524  91 08 02 e0                                      mul r2, r1, r8
005f6528  91 0a 00 e0                                      mul r0, r1, sl
005f652c  02 10 83 e0                                      add r1, r3, r2
005f6530  1b 10 d1 e5                                      ldrb r1, [r1, #0x1b]
005f6534  00 60 83 e0                                      add r6, r3, r0
005f6538  1b b0 d6 e5                                      ldrb fp, [r6, #0x1b]
005f653c  34 10 8d e5                                      str r1, [sp, #0x34]
005f6540  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005f6544  00 00 5b e3                                      cmp fp, #0
005f6548  0b 10 a0 e1                                      mov r1, fp
005f654c  0c 10 a0 01                                      moveq r1, ip
005f6550  00 00 5c e3                                      cmp ip, #0
005f6554  38 b0 8d e5                                      str fp, [sp, #0x38]
005f6558  39 01 00 0a                                      beq #0x5f6a44
005f655c  01 00 5c e1                                      cmp ip, r1
005f6560  37 01 00 9a                                      bls #0x5f6a44
005f6564  34 b0 9d e5                                      ldr fp, [sp, #0x34]
005f6568  8b 00 51 e1                                      cmp r1, fp, lsl #1
005f656c  ed 05 00 aa                                      bge #0x5f7d28
005f6570  0a 10 a0 e1                                      mov r1, sl
005f6574  08 20 a0 e1                                      mov r2, r8
005f6578  6c 00 8d e2                                      add r0, sp, #0x6c
005f657c  19 e0 ff eb                                      bl #0x5ee5e8
005f6580  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005f6584  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
005f6588  15 90 d6 e5                                      ldrb sb, [r6, #0x15]
005f658c  00 00 5c e3                                      cmp ip, #0
005f6590  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f6594  05 00 00 0a                                      beq #0x5f65b0
005f6598  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f659c  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
005f65a0  00 30 60 e2                                      rsb r3, r0, #0
005f65a4  01 50 41 e2                                      sub r5, r1, #1
005f65a8  90 25 25 e0                                      mla r5, r0, r5, r2
005f65ac  2c 30 8d e5                                      str r3, [sp, #0x2c]
005f65b0  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f65b4  00 00 56 e3                                      cmp r6, #0
005f65b8  28 50 8d 15                                      strne r5, [sp, #0x28]
005f65bc  24 50 8d 15                                      strne r5, [sp, #0x24]
005f65c0  7a 03 00 0a                                      beq #0x5f73b0
005f65c4  e0 60 9d e5                                      ldr r6, [sp, #0xe0]
005f65c8  00 00 56 e3                                      cmp r6, #0
005f65cc  29 00 00 0a                                      beq #0x5f6678
005f65d0  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f65d4  00 20 a0 e3                                      mov r2, #0
005f65d8  09 30 94 e6                                      ldr r3, [r4], sb
005f65dc  90 00 9d e5                                      ldr r0, [sp, #0x90]
005f65e0  7f c0 dd e5                                      ldrb ip, [sp, #0x7f]
005f65e4  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f65e8  00 00 03 e0                                      and r0, r3, r0
005f65ec  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f65f0  30 0c a0 e1                                      lsr r0, r0, ip
005f65f4  7d 50 dd e5                                      ldrb r5, [sp, #0x7d]
005f65f8  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
005f65fc  82 70 dd e5                                      ldrb r7, [sp, #0x82]
005f6600  80 00 a0 e1                                      lsl r0, r0, #1
005f6604  b0 00 9c e1                                      ldrh r0, [ip, r0]
005f6608  88 b0 dd e5                                      ldrb fp, [sp, #0x88]
005f660c  33 aa a0 e1                                      lsr sl, r3, sl
005f6610  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f6614  33 55 a0 e1                                      lsr r5, r3, r5
005f6618  33 36 a0 e1                                      lsr r3, r3, r6
005f661c  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f6620  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f6624  20 70 8d e5                                      str r7, [sp, #0x20]
005f6628  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f662c  15 cc 06 e0                                      and ip, r6, r5, lsl ip
005f6630  50 0b a0 e1                                      asr r0, r0, fp
005f6634  74 60 9d e5                                      ldr r6, [sp, #0x74]
005f6638  20 b0 9d e5                                      ldr fp, [sp, #0x20]
005f663c  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f6640  13 3b 06 e0                                      and r3, r6, r3, lsl fp
005f6644  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f6648  78 b0 9d e5                                      ldr fp, [sp, #0x78]
005f664c  01 10 51 e2                                      subs r1, r1, #1
005f6650  10 08 0b e0                                      and r0, fp, r0, lsl r8
005f6654  84 80 9d e5                                      ldr r8, [sp, #0x84]
005f6658  08 70 87 e1                                      orr r7, r7, r8
005f665c  0c c0 87 e1                                      orr ip, r7, ip
005f6660  03 30 8c e1                                      orr r3, ip, r3
005f6664  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005f6668  00 00 83 e1                                      orr r0, r3, r0
005f666c  b2 00 8c e1                                      strh r0, [ip, r2]
005f6670  02 20 82 e2                                      add r2, r2, #2
005f6674  d7 ff ff 1a                                      bne #0x5f65d8
005f6678  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f667c  01 00 50 e2                                      subs r0, r0, #1
005f6680  e4 00 8d e5                                      str r0, [sp, #0xe4]
005f6684  49 03 00 0a                                      beq #0x5f73b0
005f6688  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f668c  28 30 9d e5                                      ldr r3, [sp, #0x28]
005f6690  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f6694  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005f6698  02 40 81 e0                                      add r4, r1, r2
005f669c  05 30 83 e0                                      add r3, r3, r5
005f66a0  28 30 8d e5                                      str r3, [sp, #0x28]
005f66a4  24 30 8d e5                                      str r3, [sp, #0x24]
005f66a8  30 40 8d e5                                      str r4, [sp, #0x30]
005f66ac  c4 ff ff ea                                      b #0x5f65c4
005f66b0  28 20 a0 e3                                      mov r2, #0x28
005f66b4  09 10 97 e7                                      ldr r1, [r7, sb]
005f66b8  92 08 03 e0                                      mul r3, r2, r8
005f66bc  03 30 91 e7                                      ldr r3, [r1, r3]
005f66c0  01 00 13 e3                                      tst r3, #1
005f66c4  9c 0b 00 1a                                      bne #0x5f953c
005f66c8  00 10 a0 e3                                      mov r1, #0
005f66cc  34 10 8d e5                                      str r1, [sp, #0x34]
005f66d0  09 30 97 e7                                      ldr r3, [r7, sb]
005f66d4  28 10 a0 e3                                      mov r1, #0x28
005f66d8  6c 60 8d e2                                      add r6, sp, #0x6c
005f66dc  91 38 28 e0                                      mla r8, r1, r8, r3
005f66e0  3c a0 8d e5                                      str sl, [sp, #0x3c]
005f66e4  91 3a 21 e0                                      mla r1, r1, sl, r3
005f66e8  06 20 a0 e1                                      mov r2, r6
005f66ec  00 30 a0 e3                                      mov r3, #0
005f66f0  28 40 8d e5                                      str r4, [sp, #0x28]
005f66f4  38 50 8d e5                                      str r5, [sp, #0x38]
005f66f8  07 b0 a0 e1                                      mov fp, r7
005f66fc  08 a0 a0 e1                                      mov sl, r8
005f6700  08 00 00 ea                                      b #0x5f6728
005f6704  04 00 80 e0                                      add r0, r0, r4
005f6708  00 00 6c e0                                      rsb r0, ip, r0
005f670c  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f6710  04 30 83 e2                                      add r3, r3, #4
005f6714  10 00 53 e3                                      cmp r3, #0x10
005f6718  01 10 81 e2                                      add r1, r1, #1
005f671c  01 20 82 e2                                      add r2, r2, #1
005f6720  01 80 88 e2                                      add r8, r8, #1
005f6724  d6 08 00 0a                                      beq #0x5f8a84
005f6728  03 40 8a e0                                      add r4, sl, r3
005f672c  18 00 d1 e5                                      ldrb r0, [r1, #0x18]
005f6730  18 c0 d8 e5                                      ldrb ip, [r8, #0x18]
005f6734  04 70 94 e5                                      ldr r7, [r4, #4]
005f6738  1c 50 d8 e5                                      ldrb r5, [r8, #0x1c]
005f673c  1c 40 d1 e5                                      ldrb r4, [r1, #0x1c]
005f6740  0c 00 50 e1                                      cmp r0, ip
005f6744  03 70 86 e7                                      str r7, [r6, r3]
005f6748  10 40 c2 e5                                      strb r4, [r2, #0x10]
005f674c  14 50 c2 e5                                      strb r5, [r2, #0x14]
005f6750  eb ff ff 8a                                      bhi #0x5f6704
005f6754  80 00 5c e1                                      cmp ip, r0, lsl #1
005f6758  05 c0 8c d0                                      addle ip, ip, r5
005f675c  0c 00 60 d0                                      rsble r0, r0, ip
005f6760  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f6764  e9 ff ff ea                                      b #0x5f6710
005f6768  28 20 a0 e3                                      mov r2, #0x28
005f676c  09 10 97 e7                                      ldr r1, [r7, sb]
005f6770  92 08 03 e0                                      mul r3, r2, r8
005f6774  03 30 91 e7                                      ldr r3, [r1, r3]
005f6778  01 00 13 e3                                      tst r3, #1
005f677c  60 0b 00 1a                                      bne #0x5f9504
005f6780  00 10 a0 e3                                      mov r1, #0
005f6784  34 10 8d e5                                      str r1, [sp, #0x34]
005f6788  09 30 97 e7                                      ldr r3, [r7, sb]
005f678c  28 10 a0 e3                                      mov r1, #0x28
005f6790  6c 60 8d e2                                      add r6, sp, #0x6c
005f6794  91 38 28 e0                                      mla r8, r1, r8, r3
005f6798  3c a0 8d e5                                      str sl, [sp, #0x3c]
005f679c  91 3a 21 e0                                      mla r1, r1, sl, r3
005f67a0  06 20 a0 e1                                      mov r2, r6
005f67a4  00 30 a0 e3                                      mov r3, #0
005f67a8  28 50 8d e5                                      str r5, [sp, #0x28]
005f67ac  38 40 8d e5                                      str r4, [sp, #0x38]
005f67b0  07 b0 a0 e1                                      mov fp, r7
005f67b4  08 a0 a0 e1                                      mov sl, r8
005f67b8  08 00 00 ea                                      b #0x5f67e0
005f67bc  04 00 80 e0                                      add r0, r0, r4
005f67c0  00 00 6c e0                                      rsb r0, ip, r0
005f67c4  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f67c8  04 30 83 e2                                      add r3, r3, #4
005f67cc  10 00 53 e3                                      cmp r3, #0x10
005f67d0  01 10 81 e2                                      add r1, r1, #1
005f67d4  01 20 82 e2                                      add r2, r2, #1
005f67d8  01 80 88 e2                                      add r8, r8, #1
005f67dc  e8 07 00 0a                                      beq #0x5f8784
005f67e0  03 40 8a e0                                      add r4, sl, r3
005f67e4  18 00 d1 e5                                      ldrb r0, [r1, #0x18]
005f67e8  18 c0 d8 e5                                      ldrb ip, [r8, #0x18]
005f67ec  04 70 94 e5                                      ldr r7, [r4, #4]
005f67f0  1c 50 d8 e5                                      ldrb r5, [r8, #0x1c]
005f67f4  1c 40 d1 e5                                      ldrb r4, [r1, #0x1c]
005f67f8  0c 00 50 e1                                      cmp r0, ip
005f67fc  03 70 86 e7                                      str r7, [r6, r3]
005f6800  10 40 c2 e5                                      strb r4, [r2, #0x10]
005f6804  14 50 c2 e5                                      strb r5, [r2, #0x14]
005f6808  eb ff ff 8a                                      bhi #0x5f67bc
005f680c  80 00 5c e1                                      cmp ip, r0, lsl #1
005f6810  05 c0 8c d0                                      addle ip, ip, r5
005f6814  0c 00 60 d0                                      rsble r0, r0, ip
005f6818  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f681c  e9 ff ff ea                                      b #0x5f67c8
005f6820  28 20 a0 e3                                      mov r2, #0x28
005f6824  09 10 97 e7                                      ldr r1, [r7, sb]
005f6828  92 08 03 e0                                      mul r3, r2, r8
005f682c  03 30 91 e7                                      ldr r3, [r1, r3]
005f6830  01 00 13 e3                                      tst r3, #1
005f6834  39 0b 00 1a                                      bne #0x5f9520
005f6838  00 10 a0 e3                                      mov r1, #0
005f683c  34 10 8d e5                                      str r1, [sp, #0x34]
005f6840  09 30 97 e7                                      ldr r3, [r7, sb]
005f6844  28 10 a0 e3                                      mov r1, #0x28
005f6848  6c 60 8d e2                                      add r6, sp, #0x6c
005f684c  91 38 28 e0                                      mla r8, r1, r8, r3
005f6850  3c a0 8d e5                                      str sl, [sp, #0x3c]
005f6854  91 3a 21 e0                                      mla r1, r1, sl, r3
005f6858  06 20 a0 e1                                      mov r2, r6
005f685c  00 30 a0 e3                                      mov r3, #0
005f6860  28 40 8d e5                                      str r4, [sp, #0x28]
005f6864  38 50 8d e5                                      str r5, [sp, #0x38]
005f6868  07 b0 a0 e1                                      mov fp, r7
005f686c  08 a0 a0 e1                                      mov sl, r8
005f6870  08 00 00 ea                                      b #0x5f6898
005f6874  04 00 80 e0                                      add r0, r0, r4
005f6878  00 00 6c e0                                      rsb r0, ip, r0
005f687c  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f6880  04 30 83 e2                                      add r3, r3, #4
005f6884  10 00 53 e3                                      cmp r3, #0x10
005f6888  01 10 81 e2                                      add r1, r1, #1
005f688c  01 20 82 e2                                      add r2, r2, #1
005f6890  01 80 88 e2                                      add r8, r8, #1
005f6894  1a 08 00 0a                                      beq #0x5f8904
005f6898  03 40 8a e0                                      add r4, sl, r3
005f689c  18 00 d1 e5                                      ldrb r0, [r1, #0x18]
005f68a0  18 c0 d8 e5                                      ldrb ip, [r8, #0x18]
005f68a4  04 70 94 e5                                      ldr r7, [r4, #4]
005f68a8  1c 50 d8 e5                                      ldrb r5, [r8, #0x1c]
005f68ac  1c 40 d1 e5                                      ldrb r4, [r1, #0x1c]
005f68b0  0c 00 50 e1                                      cmp r0, ip
005f68b4  03 70 86 e7                                      str r7, [r6, r3]
005f68b8  10 40 c2 e5                                      strb r4, [r2, #0x10]
005f68bc  14 50 c2 e5                                      strb r5, [r2, #0x14]
005f68c0  eb ff ff 8a                                      bhi #0x5f6874
005f68c4  80 00 5c e1                                      cmp ip, r0, lsl #1
005f68c8  05 c0 8c d0                                      addle ip, ip, r5
005f68cc  0c 00 60 d0                                      rsble r0, r0, ip
005f68d0  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f68d4  e9 ff ff ea                                      b #0x5f6880
005f68d8  28 20 a0 e3                                      mov r2, #0x28
005f68dc  09 10 97 e7                                      ldr r1, [r7, sb]
005f68e0  92 08 03 e0                                      mul r3, r2, r8
005f68e4  03 30 91 e7                                      ldr r3, [r1, r3]
005f68e8  01 00 13 e3                                      tst r3, #1
005f68ec  20 0b 00 1a                                      bne #0x5f9574
005f68f0  00 c0 a0 e3                                      mov ip, #0
005f68f4  38 c0 8d e5                                      str ip, [sp, #0x38]
005f68f8  09 30 97 e7                                      ldr r3, [r7, sb]
005f68fc  28 10 a0 e3                                      mov r1, #0x28
005f6900  6c 60 8d e2                                      add r6, sp, #0x6c
005f6904  91 38 28 e0                                      mla r8, r1, r8, r3
005f6908  3c a0 8d e5                                      str sl, [sp, #0x3c]
005f690c  91 3a 21 e0                                      mla r1, r1, sl, r3
005f6910  06 20 a0 e1                                      mov r2, r6
005f6914  00 30 a0 e3                                      mov r3, #0
005f6918  34 40 8d e5                                      str r4, [sp, #0x34]
005f691c  07 b0 a0 e1                                      mov fp, r7
005f6920  08 a0 a0 e1                                      mov sl, r8
005f6924  08 00 00 ea                                      b #0x5f694c
005f6928  04 00 80 e0                                      add r0, r0, r4
005f692c  00 00 6c e0                                      rsb r0, ip, r0
005f6930  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f6934  04 30 83 e2                                      add r3, r3, #4
005f6938  10 00 53 e3                                      cmp r3, #0x10
005f693c  01 10 81 e2                                      add r1, r1, #1
005f6940  01 20 82 e2                                      add r2, r2, #1
005f6944  01 80 88 e2                                      add r8, r8, #1
005f6948  0d 09 00 0a                                      beq #0x5f8d84
005f694c  03 40 8a e0                                      add r4, sl, r3
005f6950  18 00 d1 e5                                      ldrb r0, [r1, #0x18]
005f6954  18 c0 d8 e5                                      ldrb ip, [r8, #0x18]
005f6958  04 70 94 e5                                      ldr r7, [r4, #4]
005f695c  1c 50 d8 e5                                      ldrb r5, [r8, #0x1c]
005f6960  1c 40 d1 e5                                      ldrb r4, [r1, #0x1c]
005f6964  0c 00 50 e1                                      cmp r0, ip
005f6968  03 70 86 e7                                      str r7, [r6, r3]
005f696c  10 40 c2 e5                                      strb r4, [r2, #0x10]
005f6970  14 50 c2 e5                                      strb r5, [r2, #0x14]
005f6974  eb ff ff 8a                                      bhi #0x5f6928
005f6978  80 00 5c e1                                      cmp ip, r0, lsl #1
005f697c  05 c0 8c d0                                      addle ip, ip, r5
005f6980  0c 00 60 d0                                      rsble r0, r0, ip
005f6984  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f6988  e9 ff ff ea                                      b #0x5f6934
005f698c  28 20 a0 e3                                      mov r2, #0x28
005f6990  09 10 97 e7                                      ldr r1, [r7, sb]
005f6994  92 08 03 e0                                      mul r3, r2, r8
005f6998  03 30 91 e7                                      ldr r3, [r1, r3]
005f699c  01 00 13 e3                                      tst r3, #1
005f69a0  ec 0a 00 1a                                      bne #0x5f9558
005f69a4  00 10 a0 e3                                      mov r1, #0
005f69a8  34 10 8d e5                                      str r1, [sp, #0x34]
005f69ac  09 30 97 e7                                      ldr r3, [r7, sb]
005f69b0  28 10 a0 e3                                      mov r1, #0x28
005f69b4  6c 60 8d e2                                      add r6, sp, #0x6c
005f69b8  91 38 28 e0                                      mla r8, r1, r8, r3
005f69bc  3c a0 8d e5                                      str sl, [sp, #0x3c]
005f69c0  91 3a 21 e0                                      mla r1, r1, sl, r3
005f69c4  06 20 a0 e1                                      mov r2, r6
005f69c8  00 30 a0 e3                                      mov r3, #0
005f69cc  28 40 8d e5                                      str r4, [sp, #0x28]
005f69d0  38 50 8d e5                                      str r5, [sp, #0x38]
005f69d4  07 b0 a0 e1                                      mov fp, r7
005f69d8  08 a0 a0 e1                                      mov sl, r8
005f69dc  08 00 00 ea                                      b #0x5f6a04
005f69e0  04 00 80 e0                                      add r0, r0, r4
005f69e4  00 00 6c e0                                      rsb r0, ip, r0
005f69e8  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f69ec  04 30 83 e2                                      add r3, r3, #4
005f69f0  10 00 53 e3                                      cmp r3, #0x10
005f69f4  01 10 81 e2                                      add r1, r1, #1
005f69f8  01 20 82 e2                                      add r2, r2, #1
005f69fc  01 80 88 e2                                      add r8, r8, #1
005f6a00  7f 08 00 0a                                      beq #0x5f8c04
005f6a04  03 40 8a e0                                      add r4, sl, r3
005f6a08  18 00 d1 e5                                      ldrb r0, [r1, #0x18]
005f6a0c  18 c0 d8 e5                                      ldrb ip, [r8, #0x18]
005f6a10  04 70 94 e5                                      ldr r7, [r4, #4]
005f6a14  1c 50 d8 e5                                      ldrb r5, [r8, #0x1c]
005f6a18  1c 40 d1 e5                                      ldrb r4, [r1, #0x1c]
005f6a1c  0c 00 50 e1                                      cmp r0, ip
005f6a20  03 70 86 e7                                      str r7, [r6, r3]
005f6a24  10 40 c2 e5                                      strb r4, [r2, #0x10]
005f6a28  14 50 c2 e5                                      strb r5, [r2, #0x14]
005f6a2c  eb ff ff 8a                                      bhi #0x5f69e0
005f6a30  80 00 5c e1                                      cmp ip, r0, lsl #1
005f6a34  05 c0 8c d0                                      addle ip, ip, r5
005f6a38  0c 00 60 d0                                      rsble r0, r0, ip
005f6a3c  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f6a40  e9 ff ff ea                                      b #0x5f69ec
005f6a44  28 20 a0 e3                                      mov r2, #0x28
005f6a48  09 10 97 e7                                      ldr r1, [r7, sb]
005f6a4c  92 08 03 e0                                      mul r3, r2, r8
005f6a50  03 30 91 e7                                      ldr r3, [r1, r3]
005f6a54  01 00 13 e3                                      tst r3, #1
005f6a58  cc 0a 00 1a                                      bne #0x5f9590
005f6a5c  00 10 a0 e3                                      mov r1, #0
005f6a60  34 10 8d e5                                      str r1, [sp, #0x34]
005f6a64  09 30 97 e7                                      ldr r3, [r7, sb]
005f6a68  28 10 a0 e3                                      mov r1, #0x28
005f6a6c  6c 60 8d e2                                      add r6, sp, #0x6c
005f6a70  91 38 28 e0                                      mla r8, r1, r8, r3
005f6a74  3c a0 8d e5                                      str sl, [sp, #0x3c]
005f6a78  91 3a 21 e0                                      mla r1, r1, sl, r3
005f6a7c  06 20 a0 e1                                      mov r2, r6
005f6a80  00 30 a0 e3                                      mov r3, #0
005f6a84  28 40 8d e5                                      str r4, [sp, #0x28]
005f6a88  38 50 8d e5                                      str r5, [sp, #0x38]
005f6a8c  07 b0 a0 e1                                      mov fp, r7
005f6a90  08 a0 a0 e1                                      mov sl, r8
005f6a94  08 00 00 ea                                      b #0x5f6abc
005f6a98  04 00 80 e0                                      add r0, r0, r4
005f6a9c  00 00 6c e0                                      rsb r0, ip, r0
005f6aa0  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f6aa4  04 30 83 e2                                      add r3, r3, #4
005f6aa8  10 00 53 e3                                      cmp r3, #0x10
005f6aac  01 10 81 e2                                      add r1, r1, #1
005f6ab0  01 20 82 e2                                      add r2, r2, #1
005f6ab4  01 80 88 e2                                      add r8, r8, #1
005f6ab8  0f 09 00 0a                                      beq #0x5f8efc
005f6abc  03 40 8a e0                                      add r4, sl, r3
005f6ac0  18 00 d1 e5                                      ldrb r0, [r1, #0x18]
005f6ac4  18 c0 d8 e5                                      ldrb ip, [r8, #0x18]
005f6ac8  04 70 94 e5                                      ldr r7, [r4, #4]
005f6acc  1c 50 d8 e5                                      ldrb r5, [r8, #0x1c]
005f6ad0  1c 40 d1 e5                                      ldrb r4, [r1, #0x1c]
005f6ad4  0c 00 50 e1                                      cmp r0, ip
005f6ad8  03 70 86 e7                                      str r7, [r6, r3]
005f6adc  10 40 c2 e5                                      strb r4, [r2, #0x10]
005f6ae0  14 50 c2 e5                                      strb r5, [r2, #0x14]
005f6ae4  eb ff ff 8a                                      bhi #0x5f6a98
005f6ae8  80 00 5c e1                                      cmp ip, r0, lsl #1
005f6aec  05 c0 8c d0                                      addle ip, ip, r5
005f6af0  0c 00 60 d0                                      rsble r0, r0, ip
005f6af4  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f6af8  e9 ff ff ea                                      b #0x5f6aa4
005f6afc  0a 10 a0 e1                                      mov r1, sl
005f6b00  08 20 a0 e1                                      mov r2, r8
005f6b04  6c 00 8d e2                                      add r0, sp, #0x6c
005f6b08  20 df ff eb                                      bl #0x5ee790
005f6b0c  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f6b10  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f6b14  15 10 db e5                                      ldrb r1, [fp, #0x15]
005f6b18  00 00 57 e3                                      cmp r7, #0
005f6b1c  24 80 8d e5                                      str r8, [sp, #0x24]
005f6b20  04 00 00 0a                                      beq #0x5f6b38
005f6b24  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f6b28  00 c0 68 e2                                      rsb ip, r8, #0
005f6b2c  24 c0 8d e5                                      str ip, [sp, #0x24]
005f6b30  01 30 4b e2                                      sub r3, fp, #1
005f6b34  98 43 24 e0                                      mla r4, r8, r3, r4
005f6b38  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f6b3c  00 00 50 e3                                      cmp r0, #0
005f6b40  1a 02 00 0a                                      beq #0x5f73b0
005f6b44  30 20 9d e5                                      ldr r2, [sp, #0x30]
005f6b48  01 b0 a0 e1                                      mov fp, r1
005f6b4c  20 50 8d e5                                      str r5, [sp, #0x20]
005f6b50  30 40 8d e5                                      str r4, [sp, #0x30]
005f6b54  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f6b58  00 00 51 e3                                      cmp r1, #0
005f6b5c  00 30 a0 13                                      movne r3, #0
005f6b60  34 00 00 0a                                      beq #0x5f6c38
005f6b64  bb 10 92 e0                                      ldrh r1, [r2], fp
005f6b68  94 40 9d e5                                      ldr r4, [sp, #0x94]
005f6b6c  7c c0 dd e5                                      ldrb ip, [sp, #0x7c]
005f6b70  7d 00 dd e5                                      ldrb r0, [sp, #0x7d]
005f6b74  04 40 01 e0                                      and r4, r1, r4
005f6b78  34 4c a0 e1                                      lsr r4, r4, ip
005f6b7c  98 c0 9d e5                                      ldr ip, [sp, #0x98]
005f6b80  7e 50 dd e5                                      ldrb r5, [sp, #0x7e]
005f6b84  84 40 a0 e1                                      lsl r4, r4, #1
005f6b88  0c c0 01 e0                                      and ip, r1, ip
005f6b8c  3c c0 a0 e1                                      lsr ip, ip, r0
005f6b90  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
005f6b94  8c c0 a0 e1                                      lsl ip, ip, #1
005f6b98  7f a0 dd e5                                      ldrb sl, [sp, #0x7f]
005f6b9c  00 00 01 e0                                      and r0, r1, r0
005f6ba0  30 05 a0 e1                                      lsr r0, r0, r5
005f6ba4  88 50 9d e5                                      ldr r5, [sp, #0x88]
005f6ba8  80 00 a0 e1                                      lsl r0, r0, #1
005f6bac  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f6bb0  b4 90 95 e1                                      ldrh sb, [r5, r4]
005f6bb4  8c 50 9d e5                                      ldr r5, [sp, #0x8c]
005f6bb8  a0 40 dd e5                                      ldrb r4, [sp, #0xa0]
005f6bbc  31 aa a0 e1                                      lsr sl, r1, sl
005f6bc0  bc 60 95 e1                                      ldrh r6, [r5, ip]
005f6bc4  90 c0 9d e5                                      ldr ip, [sp, #0x90]
005f6bc8  a1 50 dd e5                                      ldrb r5, [sp, #0xa1]
005f6bcc  59 44 a0 e1                                      asr r4, sb, r4
005f6bd0  b0 00 9c e1                                      ldrh r0, [ip, r0]
005f6bd4  56 55 a0 e1                                      asr r5, r6, r5
005f6bd8  80 c0 dd e5                                      ldrb ip, [sp, #0x80]
005f6bdc  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
005f6be0  a2 10 dd e5                                      ldrb r1, [sp, #0xa2]
005f6be4  78 70 9d e5                                      ldr r7, [sp, #0x78]
005f6be8  14 cc 06 e0                                      and ip, r6, r4, lsl ip
005f6bec  81 90 dd e5                                      ldrb sb, [sp, #0x81]
005f6bf0  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f6bf4  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f6bf8  50 11 a0 e1                                      asr r1, r0, r1
005f6bfc  82 80 dd e5                                      ldrb r8, [sp, #0x82]
005f6c00  74 00 9d e5                                      ldr r0, [sp, #0x74]
005f6c04  15 59 06 e0                                      and r5, r6, r5, lsl sb
005f6c08  11 18 00 e0                                      and r1, r0, r1, lsl r8
005f6c0c  84 80 9d e5                                      ldr r8, [sp, #0x84]
005f6c10  30 40 9d e5                                      ldr r4, [sp, #0x30]
005f6c14  08 70 87 e1                                      orr r7, r7, r8
005f6c18  0c c0 87 e1                                      orr ip, r7, ip
005f6c1c  05 50 8c e1                                      orr r5, ip, r5
005f6c20  01 10 85 e1                                      orr r1, r5, r1
005f6c24  03 10 c4 e7                                      strb r1, [r4, r3]
005f6c28  e0 50 9d e5                                      ldr r5, [sp, #0xe0]
005f6c2c  01 30 83 e2                                      add r3, r3, #1
005f6c30  03 00 55 e1                                      cmp r5, r3
005f6c34  ca ff ff 1a                                      bne #0x5f6b64
005f6c38  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f6c3c  01 60 56 e2                                      subs r6, r6, #1
005f6c40  e4 60 8d e5                                      str r6, [sp, #0xe4]
005f6c44  d9 01 00 0a                                      beq #0x5f73b0
005f6c48  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f6c4c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f6c50  5c 80 9d e5                                      ldr r8, [sp, #0x5c]
005f6c54  24 00 9d e5                                      ldr r0, [sp, #0x24]
005f6c58  08 70 87 e0                                      add r7, r7, r8
005f6c5c  00 c0 8c e0                                      add ip, ip, r0
005f6c60  20 70 8d e5                                      str r7, [sp, #0x20]
005f6c64  30 c0 8d e5                                      str ip, [sp, #0x30]
005f6c68  07 20 a0 e1                                      mov r2, r7
005f6c6c  b8 ff ff ea                                      b #0x5f6b54
005f6c70  0a 10 a0 e1                                      mov r1, sl
005f6c74  08 20 a0 e1                                      mov r2, r8
005f6c78  6c 00 8d e2                                      add r0, sp, #0x6c
005f6c7c  c3 de ff eb                                      bl #0x5ee790
005f6c80  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f6c84  15 50 d5 e5                                      ldrb r5, [r5, #0x15]
005f6c88  dc 70 9d e5                                      ldr r7, [sp, #0xdc]
005f6c8c  00 00 56 e3                                      cmp r6, #0
005f6c90  2c 50 8d e5                                      str r5, [sp, #0x2c]
005f6c94  24 70 8d e5                                      str r7, [sp, #0x24]
005f6c98  04 00 00 0a                                      beq #0x5f6cb0
005f6c9c  e4 80 9d e5                                      ldr r8, [sp, #0xe4]
005f6ca0  00 b0 67 e2                                      rsb fp, r7, #0
005f6ca4  24 b0 8d e5                                      str fp, [sp, #0x24]
005f6ca8  01 30 48 e2                                      sub r3, r8, #1
005f6cac  97 43 24 e0                                      mla r4, r7, r3, r4
005f6cb0  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f6cb4  00 00 5c e3                                      cmp ip, #0
005f6cb8  bc 01 00 0a                                      beq #0x5f73b0
005f6cbc  30 00 9d e5                                      ldr r0, [sp, #0x30]
005f6cc0  30 40 8d e5                                      str r4, [sp, #0x30]
005f6cc4  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f6cc8  00 00 51 e3                                      cmp r1, #0
005f6ccc  36 00 00 0a                                      beq #0x5f6dac
005f6cd0  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f6cd4  00 20 a0 e3                                      mov r2, #0
005f6cd8  2c 40 9d e5                                      ldr r4, [sp, #0x2c]
005f6cdc  94 c0 9d e5                                      ldr ip, [sp, #0x94]
005f6ce0  7c 50 dd e5                                      ldrb r5, [sp, #0x7c]
005f6ce4  b4 30 90 e0                                      ldrh r3, [r0], r4
005f6ce8  7d 40 dd e5                                      ldrb r4, [sp, #0x7d]
005f6cec  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f6cf0  0c c0 03 e0                                      and ip, r3, ip
005f6cf4  3c c5 a0 e1                                      lsr ip, ip, r5
005f6cf8  98 50 9d e5                                      ldr r5, [sp, #0x98]
005f6cfc  8c c0 a0 e1                                      lsl ip, ip, #1
005f6d00  80 a0 dd e5                                      ldrb sl, [sp, #0x80]
005f6d04  05 50 03 e0                                      and r5, r3, r5
005f6d08  35 54 a0 e1                                      lsr r5, r5, r4
005f6d0c  9c 40 9d e5                                      ldr r4, [sp, #0x9c]
005f6d10  85 50 a0 e1                                      lsl r5, r5, #1
005f6d14  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005f6d18  04 40 03 e0                                      and r4, r3, r4
005f6d1c  34 46 a0 e1                                      lsr r4, r4, r6
005f6d20  88 60 9d e5                                      ldr r6, [sp, #0x88]
005f6d24  84 40 a0 e1                                      lsl r4, r4, #1
005f6d28  01 10 51 e2                                      subs r1, r1, #1
005f6d2c  bc 90 96 e1                                      ldrh sb, [r6, ip]
005f6d30  8c 60 9d e5                                      ldr r6, [sp, #0x8c]
005f6d34  a0 c0 dd e5                                      ldrb ip, [sp, #0xa0]
005f6d38  b5 b0 96 e1                                      ldrh fp, [r6, r5]
005f6d3c  90 60 9d e5                                      ldr r6, [sp, #0x90]
005f6d40  a1 50 dd e5                                      ldrb r5, [sp, #0xa1]
005f6d44  59 9c a0 e1                                      asr sb, sb, ip
005f6d48  b4 70 96 e1                                      ldrh r7, [r6, r4]
005f6d4c  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f6d50  81 40 dd e5                                      ldrb r4, [sp, #0x81]
005f6d54  7f c0 dd e5                                      ldrb ip, [sp, #0x7f]
005f6d58  57 66 a0 e1                                      asr r6, r7, r6
005f6d5c  70 70 9d e5                                      ldr r7, [sp, #0x70]
005f6d60  5b 55 a0 e1                                      asr r5, fp, r5
005f6d64  82 b0 dd e5                                      ldrb fp, [sp, #0x82]
005f6d68  15 44 07 e0                                      and r4, r7, r5, lsl r4
005f6d6c  74 70 9d e5                                      ldr r7, [sp, #0x74]
005f6d70  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005f6d74  33 3c a0 e1                                      lsr r3, r3, ip
005f6d78  83 a0 dd e5                                      ldrb sl, [sp, #0x83]
005f6d7c  78 c0 9d e5                                      ldr ip, [sp, #0x78]
005f6d80  16 6b 07 e0                                      and r6, r7, r6, lsl fp
005f6d84  13 3a 0c e0                                      and r3, ip, r3, lsl sl
005f6d88  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005f6d8c  30 50 9d e5                                      ldr r5, [sp, #0x30]
005f6d90  0a 80 88 e1                                      orr r8, r8, sl
005f6d94  04 40 88 e1                                      orr r4, r8, r4
005f6d98  06 60 84 e1                                      orr r6, r4, r6
005f6d9c  03 30 86 e1                                      orr r3, r6, r3
005f6da0  02 30 85 e7                                      str r3, [r5, r2]
005f6da4  04 20 82 e2                                      add r2, r2, #4
005f6da8  ca ff ff 1a                                      bne #0x5f6cd8
005f6dac  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f6db0  01 60 56 e2                                      subs r6, r6, #1
005f6db4  e4 60 8d e5                                      str r6, [sp, #0xe4]
005f6db8  7c 01 00 0a                                      beq #0x5f73b0
005f6dbc  28 70 9d e5                                      ldr r7, [sp, #0x28]
005f6dc0  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f6dc4  5c 80 9d e5                                      ldr r8, [sp, #0x5c]
005f6dc8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005f6dcc  08 70 87 e0                                      add r7, r7, r8
005f6dd0  0c b0 8b e0                                      add fp, fp, ip
005f6dd4  28 70 8d e5                                      str r7, [sp, #0x28]
005f6dd8  30 b0 8d e5                                      str fp, [sp, #0x30]
005f6ddc  07 00 a0 e1                                      mov r0, r7
005f6de0  b7 ff ff ea                                      b #0x5f6cc4
005f6de4  08 20 a0 e1                                      mov r2, r8
005f6de8  0a 10 a0 e1                                      mov r1, sl
005f6dec  6c 00 8d e2                                      add r0, sp, #0x6c
005f6df0  66 de ff eb                                      bl #0x5ee790
005f6df4  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f6df8  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f6dfc  15 20 db e5                                      ldrb r2, [fp, #0x15]
005f6e00  00 00 57 e3                                      cmp r7, #0
005f6e04  28 80 8d e5                                      str r8, [sp, #0x28]
005f6e08  04 00 00 0a                                      beq #0x5f6e20
005f6e0c  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f6e10  00 c0 68 e2                                      rsb ip, r8, #0
005f6e14  28 c0 8d e5                                      str ip, [sp, #0x28]
005f6e18  01 30 4b e2                                      sub r3, fp, #1
005f6e1c  98 53 25 e0                                      mla r5, r8, r3, r5
005f6e20  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f6e24  00 00 50 e3                                      cmp r0, #0
005f6e28  24 50 8d 15                                      strne r5, [sp, #0x24]
005f6e2c  02 b0 a0 11                                      movne fp, r2
005f6e30  20 50 8d 15                                      strne r5, [sp, #0x20]
005f6e34  5d 01 00 0a                                      beq #0x5f73b0
005f6e38  e0 c0 9d e5                                      ldr ip, [sp, #0xe0]
005f6e3c  00 00 5c e3                                      cmp ip, #0
005f6e40  00 30 a0 13                                      movne r3, #0
005f6e44  34 00 00 0a                                      beq #0x5f6f1c
005f6e48  0b 20 94 e6                                      ldr r2, [r4], fp
005f6e4c  94 c0 9d e5                                      ldr ip, [sp, #0x94]
005f6e50  7c 00 dd e5                                      ldrb r0, [sp, #0x7c]
005f6e54  7d 10 dd e5                                      ldrb r1, [sp, #0x7d]
005f6e58  0c c0 02 e0                                      and ip, r2, ip
005f6e5c  3c c0 a0 e1                                      lsr ip, ip, r0
005f6e60  98 00 9d e5                                      ldr r0, [sp, #0x98]
005f6e64  7e 50 dd e5                                      ldrb r5, [sp, #0x7e]
005f6e68  8c c0 a0 e1                                      lsl ip, ip, #1
005f6e6c  00 00 02 e0                                      and r0, r2, r0
005f6e70  30 01 a0 e1                                      lsr r0, r0, r1
005f6e74  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
005f6e78  80 00 a0 e1                                      lsl r0, r0, #1
005f6e7c  7f a0 dd e5                                      ldrb sl, [sp, #0x7f]
005f6e80  01 10 02 e0                                      and r1, r2, r1
005f6e84  31 15 a0 e1                                      lsr r1, r1, r5
005f6e88  88 50 9d e5                                      ldr r5, [sp, #0x88]
005f6e8c  81 10 a0 e1                                      lsl r1, r1, #1
005f6e90  83 80 dd e5                                      ldrb r8, [sp, #0x83]
005f6e94  bc 90 95 e1                                      ldrh sb, [r5, ip]
005f6e98  8c 50 9d e5                                      ldr r5, [sp, #0x8c]
005f6e9c  a0 c0 dd e5                                      ldrb ip, [sp, #0xa0]
005f6ea0  32 aa a0 e1                                      lsr sl, r2, sl
005f6ea4  b0 60 95 e1                                      ldrh r6, [r5, r0]
005f6ea8  90 00 9d e5                                      ldr r0, [sp, #0x90]
005f6eac  a1 50 dd e5                                      ldrb r5, [sp, #0xa1]
005f6eb0  a2 20 dd e5                                      ldrb r2, [sp, #0xa2]
005f6eb4  b1 10 90 e1                                      ldrh r1, [r0, r1]
005f6eb8  56 55 a0 e1                                      asr r5, r6, r5
005f6ebc  80 00 dd e5                                      ldrb r0, [sp, #0x80]
005f6ec0  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
005f6ec4  59 cc a0 e1                                      asr ip, sb, ip
005f6ec8  78 70 9d e5                                      ldr r7, [sp, #0x78]
005f6ecc  81 90 dd e5                                      ldrb sb, [sp, #0x81]
005f6ed0  1c 00 06 e0                                      and r0, r6, ip, lsl r0
005f6ed4  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f6ed8  1a 78 07 e0                                      and r7, r7, sl, lsl r8
005f6edc  51 22 a0 e1                                      asr r2, r1, r2
005f6ee0  82 80 dd e5                                      ldrb r8, [sp, #0x82]
005f6ee4  74 10 9d e5                                      ldr r1, [sp, #0x74]
005f6ee8  15 59 06 e0                                      and r5, r6, r5, lsl sb
005f6eec  12 28 01 e0                                      and r2, r1, r2, lsl r8
005f6ef0  84 80 9d e5                                      ldr r8, [sp, #0x84]
005f6ef4  20 10 9d e5                                      ldr r1, [sp, #0x20]
005f6ef8  08 70 87 e1                                      orr r7, r7, r8
005f6efc  00 00 87 e1                                      orr r0, r7, r0
005f6f00  05 50 80 e1                                      orr r5, r0, r5
005f6f04  02 20 85 e1                                      orr r2, r5, r2
005f6f08  03 20 c1 e7                                      strb r2, [r1, r3]
005f6f0c  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
005f6f10  01 30 83 e2                                      add r3, r3, #1
005f6f14  03 00 52 e1                                      cmp r2, r3
005f6f18  ca ff ff 1a                                      bne #0x5f6e48
005f6f1c  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
005f6f20  01 30 53 e2                                      subs r3, r3, #1
005f6f24  e4 30 8d e5                                      str r3, [sp, #0xe4]
005f6f28  20 01 00 0a                                      beq #0x5f73b0
005f6f2c  30 50 9d e5                                      ldr r5, [sp, #0x30]
005f6f30  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f6f34  5c 60 9d e5                                      ldr r6, [sp, #0x5c]
005f6f38  28 80 9d e5                                      ldr r8, [sp, #0x28]
005f6f3c  06 40 85 e0                                      add r4, r5, r6
005f6f40  08 70 87 e0                                      add r7, r7, r8
005f6f44  24 70 8d e5                                      str r7, [sp, #0x24]
005f6f48  20 70 8d e5                                      str r7, [sp, #0x20]
005f6f4c  30 40 8d e5                                      str r4, [sp, #0x30]
005f6f50  b8 ff ff ea                                      b #0x5f6e38
005f6f54  08 20 a0 e1                                      mov r2, r8
005f6f58  0a 10 a0 e1                                      mov r1, sl
005f6f5c  6c 00 8d e2                                      add r0, sp, #0x6c
005f6f60  0a de ff eb                                      bl #0x5ee790
005f6f64  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f6f68  15 b0 db e5                                      ldrb fp, [fp, #0x15]
005f6f6c  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f6f70  00 00 57 e3                                      cmp r7, #0
005f6f74  2c b0 8d e5                                      str fp, [sp, #0x2c]
005f6f78  28 80 8d e5                                      str r8, [sp, #0x28]
005f6f7c  04 00 00 0a                                      beq #0x5f6f94
005f6f80  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f6f84  00 c0 68 e2                                      rsb ip, r8, #0
005f6f88  28 c0 8d e5                                      str ip, [sp, #0x28]
005f6f8c  01 30 4b e2                                      sub r3, fp, #1
005f6f90  98 53 25 e0                                      mla r5, r8, r3, r5
005f6f94  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f6f98  00 00 50 e3                                      cmp r0, #0
005f6f9c  24 50 8d 15                                      strne r5, [sp, #0x24]
005f6fa0  20 50 8d 15                                      strne r5, [sp, #0x20]
005f6fa4  01 01 00 0a                                      beq #0x5f73b0
005f6fa8  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f6fac  00 00 51 e3                                      cmp r1, #0
005f6fb0  36 00 00 0a                                      beq #0x5f7090
005f6fb4  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f6fb8  00 20 a0 e3                                      mov r2, #0
005f6fbc  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005f6fc0  94 00 9d e5                                      ldr r0, [sp, #0x94]
005f6fc4  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f6fc8  05 30 94 e6                                      ldr r3, [r4], r5
005f6fcc  7c 50 dd e5                                      ldrb r5, [sp, #0x7c]
005f6fd0  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f6fd4  00 00 03 e0                                      and r0, r3, r0
005f6fd8  30 05 a0 e1                                      lsr r0, r0, r5
005f6fdc  98 50 9d e5                                      ldr r5, [sp, #0x98]
005f6fe0  80 00 a0 e1                                      lsl r0, r0, #1
005f6fe4  80 a0 dd e5                                      ldrb sl, [sp, #0x80]
005f6fe8  05 50 03 e0                                      and r5, r3, r5
005f6fec  35 5c a0 e1                                      lsr r5, r5, ip
005f6ff0  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
005f6ff4  85 50 a0 e1                                      lsl r5, r5, #1
005f6ff8  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005f6ffc  0c c0 03 e0                                      and ip, r3, ip
005f7000  3c c6 a0 e1                                      lsr ip, ip, r6
005f7004  88 60 9d e5                                      ldr r6, [sp, #0x88]
005f7008  8c c0 a0 e1                                      lsl ip, ip, #1
005f700c  01 10 51 e2                                      subs r1, r1, #1
005f7010  b0 90 96 e1                                      ldrh sb, [r6, r0]
005f7014  8c 60 9d e5                                      ldr r6, [sp, #0x8c]
005f7018  a0 00 dd e5                                      ldrb r0, [sp, #0xa0]
005f701c  b5 b0 96 e1                                      ldrh fp, [r6, r5]
005f7020  90 60 9d e5                                      ldr r6, [sp, #0x90]
005f7024  a1 50 dd e5                                      ldrb r5, [sp, #0xa1]
005f7028  59 90 a0 e1                                      asr sb, sb, r0
005f702c  bc 70 96 e1                                      ldrh r7, [r6, ip]
005f7030  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f7034  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f7038  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f703c  57 66 a0 e1                                      asr r6, r7, r6
005f7040  70 70 9d e5                                      ldr r7, [sp, #0x70]
005f7044  5b 55 a0 e1                                      asr r5, fp, r5
005f7048  82 b0 dd e5                                      ldrb fp, [sp, #0x82]
005f704c  15 cc 07 e0                                      and ip, r7, r5, lsl ip
005f7050  74 70 9d e5                                      ldr r7, [sp, #0x74]
005f7054  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005f7058  33 30 a0 e1                                      lsr r3, r3, r0
005f705c  83 a0 dd e5                                      ldrb sl, [sp, #0x83]
005f7060  78 00 9d e5                                      ldr r0, [sp, #0x78]
005f7064  16 6b 07 e0                                      and r6, r7, r6, lsl fp
005f7068  13 3a 00 e0                                      and r3, r0, r3, lsl sl
005f706c  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005f7070  0a 80 88 e1                                      orr r8, r8, sl
005f7074  0c c0 88 e1                                      orr ip, r8, ip
005f7078  06 60 8c e1                                      orr r6, ip, r6
005f707c  03 30 86 e1                                      orr r3, r6, r3
005f7080  20 60 9d e5                                      ldr r6, [sp, #0x20]
005f7084  b2 30 86 e1                                      strh r3, [r6, r2]
005f7088  02 20 82 e2                                      add r2, r2, #2
005f708c  ca ff ff 1a                                      bne #0x5f6fbc
005f7090  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f7094  01 70 57 e2                                      subs r7, r7, #1
005f7098  e4 70 8d e5                                      str r7, [sp, #0xe4]
005f709c  c3 00 00 0a                                      beq #0x5f73b0
005f70a0  30 80 9d e5                                      ldr r8, [sp, #0x30]
005f70a4  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005f70a8  5c b0 9d e5                                      ldr fp, [sp, #0x5c]
005f70ac  28 00 9d e5                                      ldr r0, [sp, #0x28]
005f70b0  0b 40 88 e0                                      add r4, r8, fp
005f70b4  00 c0 8c e0                                      add ip, ip, r0
005f70b8  24 c0 8d e5                                      str ip, [sp, #0x24]
005f70bc  20 c0 8d e5                                      str ip, [sp, #0x20]
005f70c0  30 40 8d e5                                      str r4, [sp, #0x30]
005f70c4  b7 ff ff ea                                      b #0x5f6fa8
005f70c8  08 20 a0 e1                                      mov r2, r8
005f70cc  0a 10 a0 e1                                      mov r1, sl
005f70d0  6c 00 8d e2                                      add r0, sp, #0x6c
005f70d4  ad dd ff eb                                      bl #0x5ee790
005f70d8  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f70dc  15 b0 db e5                                      ldrb fp, [fp, #0x15]
005f70e0  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f70e4  00 00 57 e3                                      cmp r7, #0
005f70e8  2c b0 8d e5                                      str fp, [sp, #0x2c]
005f70ec  28 80 8d e5                                      str r8, [sp, #0x28]
005f70f0  04 00 00 0a                                      beq #0x5f7108
005f70f4  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f70f8  00 c0 68 e2                                      rsb ip, r8, #0
005f70fc  28 c0 8d e5                                      str ip, [sp, #0x28]
005f7100  01 30 4b e2                                      sub r3, fp, #1
005f7104  98 53 25 e0                                      mla r5, r8, r3, r5
005f7108  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f710c  00 00 50 e3                                      cmp r0, #0
005f7110  24 50 8d 15                                      strne r5, [sp, #0x24]
005f7114  20 50 8d 15                                      strne r5, [sp, #0x20]
005f7118  a4 00 00 0a                                      beq #0x5f73b0
005f711c  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f7120  00 00 51 e3                                      cmp r1, #0
005f7124  36 00 00 0a                                      beq #0x5f7204
005f7128  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f712c  00 20 a0 e3                                      mov r2, #0
005f7130  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005f7134  94 00 9d e5                                      ldr r0, [sp, #0x94]
005f7138  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f713c  05 30 d4 e6                                      ldrb r3, [r4], r5
005f7140  7c 50 dd e5                                      ldrb r5, [sp, #0x7c]
005f7144  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f7148  00 00 03 e0                                      and r0, r3, r0
005f714c  30 05 a0 e1                                      lsr r0, r0, r5
005f7150  98 50 9d e5                                      ldr r5, [sp, #0x98]
005f7154  80 00 a0 e1                                      lsl r0, r0, #1
005f7158  80 a0 dd e5                                      ldrb sl, [sp, #0x80]
005f715c  05 50 03 e0                                      and r5, r3, r5
005f7160  35 5c a0 e1                                      lsr r5, r5, ip
005f7164  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
005f7168  85 50 a0 e1                                      lsl r5, r5, #1
005f716c  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005f7170  0c c0 03 e0                                      and ip, r3, ip
005f7174  3c c6 a0 e1                                      lsr ip, ip, r6
005f7178  88 60 9d e5                                      ldr r6, [sp, #0x88]
005f717c  8c c0 a0 e1                                      lsl ip, ip, #1
005f7180  01 10 51 e2                                      subs r1, r1, #1
005f7184  b0 90 96 e1                                      ldrh sb, [r6, r0]
005f7188  8c 60 9d e5                                      ldr r6, [sp, #0x8c]
005f718c  a0 00 dd e5                                      ldrb r0, [sp, #0xa0]
005f7190  b5 b0 96 e1                                      ldrh fp, [r6, r5]
005f7194  90 60 9d e5                                      ldr r6, [sp, #0x90]
005f7198  a1 50 dd e5                                      ldrb r5, [sp, #0xa1]
005f719c  59 90 a0 e1                                      asr sb, sb, r0
005f71a0  bc 70 96 e1                                      ldrh r7, [r6, ip]
005f71a4  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f71a8  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f71ac  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f71b0  57 66 a0 e1                                      asr r6, r7, r6
005f71b4  70 70 9d e5                                      ldr r7, [sp, #0x70]
005f71b8  5b 55 a0 e1                                      asr r5, fp, r5
005f71bc  82 b0 dd e5                                      ldrb fp, [sp, #0x82]
005f71c0  15 cc 07 e0                                      and ip, r7, r5, lsl ip
005f71c4  74 70 9d e5                                      ldr r7, [sp, #0x74]
005f71c8  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005f71cc  33 30 a0 e1                                      lsr r3, r3, r0
005f71d0  83 a0 dd e5                                      ldrb sl, [sp, #0x83]
005f71d4  78 00 9d e5                                      ldr r0, [sp, #0x78]
005f71d8  16 6b 07 e0                                      and r6, r7, r6, lsl fp
005f71dc  13 3a 00 e0                                      and r3, r0, r3, lsl sl
005f71e0  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005f71e4  0a 80 88 e1                                      orr r8, r8, sl
005f71e8  0c c0 88 e1                                      orr ip, r8, ip
005f71ec  06 60 8c e1                                      orr r6, ip, r6
005f71f0  03 30 86 e1                                      orr r3, r6, r3
005f71f4  20 60 9d e5                                      ldr r6, [sp, #0x20]
005f71f8  b2 30 86 e1                                      strh r3, [r6, r2]
005f71fc  02 20 82 e2                                      add r2, r2, #2
005f7200  ca ff ff 1a                                      bne #0x5f7130
005f7204  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f7208  01 70 57 e2                                      subs r7, r7, #1
005f720c  e4 70 8d e5                                      str r7, [sp, #0xe4]
005f7210  66 00 00 0a                                      beq #0x5f73b0
005f7214  30 80 9d e5                                      ldr r8, [sp, #0x30]
005f7218  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005f721c  5c b0 9d e5                                      ldr fp, [sp, #0x5c]
005f7220  28 00 9d e5                                      ldr r0, [sp, #0x28]
005f7224  0b 40 88 e0                                      add r4, r8, fp
005f7228  00 c0 8c e0                                      add ip, ip, r0
005f722c  24 c0 8d e5                                      str ip, [sp, #0x24]
005f7230  20 c0 8d e5                                      str ip, [sp, #0x20]
005f7234  30 40 8d e5                                      str r4, [sp, #0x30]
005f7238  b7 ff ff ea                                      b #0x5f711c
005f723c  08 20 a0 e1                                      mov r2, r8
005f7240  0a 10 a0 e1                                      mov r1, sl
005f7244  6c 00 8d e2                                      add r0, sp, #0x6c
005f7248  50 dd ff eb                                      bl #0x5ee790
005f724c  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f7250  15 b0 db e5                                      ldrb fp, [fp, #0x15]
005f7254  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f7258  00 00 57 e3                                      cmp r7, #0
005f725c  2c b0 8d e5                                      str fp, [sp, #0x2c]
005f7260  28 80 8d e5                                      str r8, [sp, #0x28]
005f7264  04 00 00 0a                                      beq #0x5f727c
005f7268  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f726c  00 c0 68 e2                                      rsb ip, r8, #0
005f7270  28 c0 8d e5                                      str ip, [sp, #0x28]
005f7274  01 30 4b e2                                      sub r3, fp, #1
005f7278  98 53 25 e0                                      mla r5, r8, r3, r5
005f727c  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f7280  00 00 50 e3                                      cmp r0, #0
005f7284  24 50 8d 15                                      strne r5, [sp, #0x24]
005f7288  20 50 8d 15                                      strne r5, [sp, #0x20]
005f728c  47 00 00 0a                                      beq #0x5f73b0
005f7290  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f7294  00 00 51 e3                                      cmp r1, #0
005f7298  36 00 00 0a                                      beq #0x5f7378
005f729c  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f72a0  00 20 a0 e3                                      mov r2, #0
005f72a4  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005f72a8  94 00 9d e5                                      ldr r0, [sp, #0x94]
005f72ac  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f72b0  05 30 d4 e6                                      ldrb r3, [r4], r5
005f72b4  7c 50 dd e5                                      ldrb r5, [sp, #0x7c]
005f72b8  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f72bc  00 00 03 e0                                      and r0, r3, r0
005f72c0  30 05 a0 e1                                      lsr r0, r0, r5
005f72c4  98 50 9d e5                                      ldr r5, [sp, #0x98]
005f72c8  80 00 a0 e1                                      lsl r0, r0, #1
005f72cc  80 a0 dd e5                                      ldrb sl, [sp, #0x80]
005f72d0  05 50 03 e0                                      and r5, r3, r5
005f72d4  35 5c a0 e1                                      lsr r5, r5, ip
005f72d8  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
005f72dc  85 50 a0 e1                                      lsl r5, r5, #1
005f72e0  6c 80 9d e5                                      ldr r8, [sp, #0x6c]
005f72e4  0c c0 03 e0                                      and ip, r3, ip
005f72e8  3c c6 a0 e1                                      lsr ip, ip, r6
005f72ec  88 60 9d e5                                      ldr r6, [sp, #0x88]
005f72f0  8c c0 a0 e1                                      lsl ip, ip, #1
005f72f4  01 10 51 e2                                      subs r1, r1, #1
005f72f8  b0 90 96 e1                                      ldrh sb, [r6, r0]
005f72fc  8c 60 9d e5                                      ldr r6, [sp, #0x8c]
005f7300  a0 00 dd e5                                      ldrb r0, [sp, #0xa0]
005f7304  b5 b0 96 e1                                      ldrh fp, [r6, r5]
005f7308  90 60 9d e5                                      ldr r6, [sp, #0x90]
005f730c  a1 50 dd e5                                      ldrb r5, [sp, #0xa1]
005f7310  59 90 a0 e1                                      asr sb, sb, r0
005f7314  bc 70 96 e1                                      ldrh r7, [r6, ip]
005f7318  a2 60 dd e5                                      ldrb r6, [sp, #0xa2]
005f731c  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f7320  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f7324  57 66 a0 e1                                      asr r6, r7, r6
005f7328  70 70 9d e5                                      ldr r7, [sp, #0x70]
005f732c  5b 55 a0 e1                                      asr r5, fp, r5
005f7330  82 b0 dd e5                                      ldrb fp, [sp, #0x82]
005f7334  15 cc 07 e0                                      and ip, r7, r5, lsl ip
005f7338  74 70 9d e5                                      ldr r7, [sp, #0x74]
005f733c  19 8a 08 e0                                      and r8, r8, sb, lsl sl
005f7340  33 30 a0 e1                                      lsr r3, r3, r0
005f7344  83 a0 dd e5                                      ldrb sl, [sp, #0x83]
005f7348  78 00 9d e5                                      ldr r0, [sp, #0x78]
005f734c  16 6b 07 e0                                      and r6, r7, r6, lsl fp
005f7350  13 3a 00 e0                                      and r3, r0, r3, lsl sl
005f7354  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005f7358  0a 80 88 e1                                      orr r8, r8, sl
005f735c  0c c0 88 e1                                      orr ip, r8, ip
005f7360  06 60 8c e1                                      orr r6, ip, r6
005f7364  03 30 86 e1                                      orr r3, r6, r3
005f7368  20 60 9d e5                                      ldr r6, [sp, #0x20]
005f736c  02 30 86 e7                                      str r3, [r6, r2]
005f7370  04 20 82 e2                                      add r2, r2, #4
005f7374  ca ff ff 1a                                      bne #0x5f72a4
005f7378  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f737c  01 70 57 e2                                      subs r7, r7, #1
005f7380  e4 70 8d e5                                      str r7, [sp, #0xe4]
005f7384  09 00 00 0a                                      beq #0x5f73b0
005f7388  30 80 9d e5                                      ldr r8, [sp, #0x30]
005f738c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005f7390  5c b0 9d e5                                      ldr fp, [sp, #0x5c]
005f7394  28 00 9d e5                                      ldr r0, [sp, #0x28]
005f7398  0b 40 88 e0                                      add r4, r8, fp
005f739c  00 c0 8c e0                                      add ip, ip, r0
005f73a0  24 c0 8d e5                                      str ip, [sp, #0x24]
005f73a4  20 c0 8d e5                                      str ip, [sp, #0x20]
005f73a8  30 40 8d e5                                      str r4, [sp, #0x30]
005f73ac  b7 ff ff ea                                      b #0x5f7290
005f73b0  01 00 a0 e3                                      mov r0, #1
005f73b4  29 f7 ff ea                                      b #0x5f5060
005f73b8  02 20 93 e7                                      ldr r2, [r3, r2]
005f73bc  01 00 12 e3                                      tst r2, #1
005f73c0  31 08 00 1a                                      bne #0x5f948c
005f73c4  00 00 a0 e3                                      mov r0, #0
005f73c8  40 00 8d e5                                      str r0, [sp, #0x40]
005f73cc  09 30 97 e7                                      ldr r3, [r7, sb]
005f73d0  28 c0 a0 e3                                      mov ip, #0x28
005f73d4  6c 60 8d e2                                      add r6, sp, #0x6c
005f73d8  9c 38 21 e0                                      mla r1, ip, r8, r3
005f73dc  44 a0 8d e5                                      str sl, [sp, #0x44]
005f73e0  9c 3a 2c e0                                      mla ip, ip, sl, r3
005f73e4  06 20 a0 e1                                      mov r2, r6
005f73e8  00 30 a0 e3                                      mov r3, #0
005f73ec  34 40 8d e5                                      str r4, [sp, #0x34]
005f73f0  48 80 8d e5                                      str r8, [sp, #0x48]
005f73f4  07 b0 a0 e1                                      mov fp, r7
005f73f8  01 a0 a0 e1                                      mov sl, r1
005f73fc  08 00 00 ea                                      b #0x5f7424
005f7400  05 00 80 e0                                      add r0, r0, r5
005f7404  00 00 64 e0                                      rsb r0, r4, r0
005f7408  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f740c  04 30 83 e2                                      add r3, r3, #4
005f7410  10 00 53 e3                                      cmp r3, #0x10
005f7414  01 c0 8c e2                                      add ip, ip, #1
005f7418  01 20 82 e2                                      add r2, r2, #1
005f741c  01 10 81 e2                                      add r1, r1, #1
005f7420  11 01 00 0a                                      beq #0x5f786c
005f7424  03 50 8a e0                                      add r5, sl, r3
005f7428  18 00 dc e5                                      ldrb r0, [ip, #0x18]
005f742c  18 40 d1 e5                                      ldrb r4, [r1, #0x18]
005f7430  04 80 95 e5                                      ldr r8, [r5, #4]
005f7434  1c 70 d1 e5                                      ldrb r7, [r1, #0x1c]
005f7438  1c 50 dc e5                                      ldrb r5, [ip, #0x1c]
005f743c  04 00 50 e1                                      cmp r0, r4
005f7440  03 80 86 e7                                      str r8, [r6, r3]
005f7444  10 50 c2 e5                                      strb r5, [r2, #0x10]
005f7448  14 70 c2 e5                                      strb r7, [r2, #0x14]
005f744c  eb ff ff 8a                                      bhi #0x5f7400
005f7450  80 00 54 e1                                      cmp r4, r0, lsl #1
005f7454  07 40 84 d0                                      addle r4, r4, r7
005f7458  04 00 60 d0                                      rsble r0, r0, r4
005f745c  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f7460  e9 ff ff ea                                      b #0x5f740c
005f7464  03 00 52 e1                                      cmp r2, r3
005f7468  20 f7 ff 9a                                      bls #0x5f50f0
005f746c  83 00 52 e1                                      cmp r2, r3, lsl #1
005f7470  2c 07 00 da                                      ble #0x5f9128
005f7474  6c 60 8d e2                                      add r6, sp, #0x6c
005f7478  08 20 a0 e1                                      mov r2, r8
005f747c  0a 10 a0 e1                                      mov r1, sl
005f7480  06 00 a0 e1                                      mov r0, r6
005f7484  96 dd ff eb                                      bl #0x5eeae4
005f7488  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f748c  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f7490  15 90 db e5                                      ldrb sb, [fp, #0x15]
005f7494  00 00 57 e3                                      cmp r7, #0
005f7498  24 80 8d e5                                      str r8, [sp, #0x24]
005f749c  04 00 00 0a                                      beq #0x5f74b4
005f74a0  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f74a4  00 c0 68 e2                                      rsb ip, r8, #0
005f74a8  24 c0 8d e5                                      str ip, [sp, #0x24]
005f74ac  01 30 4b e2                                      sub r3, fp, #1
005f74b0  98 53 25 e0                                      mla r5, r8, r3, r5
005f74b4  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f74b8  00 00 50 e3                                      cmp r0, #0
005f74bc  bb ff ff 0a                                      beq #0x5f73b0
005f74c0  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f74c4  05 a0 a0 e1                                      mov sl, r5
005f74c8  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f74cc  00 00 57 e3                                      cmp r7, #0
005f74d0  08 00 00 0a                                      beq #0x5f74f8
005f74d4  e0 80 9d e5                                      ldr r8, [sp, #0xe0]
005f74d8  00 70 a0 e3                                      mov r7, #0
005f74dc  09 10 d4 e6                                      ldrb r1, [r4], sb
005f74e0  06 00 a0 e1                                      mov r0, r6
005f74e4  7c da ff eb                                      bl #0x5ededc
005f74e8  01 80 58 e2                                      subs r8, r8, #1
005f74ec  b7 00 85 e1                                      strh r0, [r5, r7]
005f74f0  02 70 87 e2                                      add r7, r7, #2
005f74f4  f8 ff ff 1a                                      bne #0x5f74dc
005f74f8  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f74fc  01 10 51 e2                                      subs r1, r1, #1
005f7500  e4 10 8d e5                                      str r1, [sp, #0xe4]
005f7504  a9 ff ff 0a                                      beq #0x5f73b0
005f7508  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f750c  24 30 9d e5                                      ldr r3, [sp, #0x24]
005f7510  02 40 8b e0                                      add r4, fp, r2
005f7514  03 a0 8a e0                                      add sl, sl, r3
005f7518  0a 50 a0 e1                                      mov r5, sl
005f751c  04 b0 a0 e1                                      mov fp, r4
005f7520  e8 ff ff ea                                      b #0x5f74c8
005f7524  03 00 52 e1                                      cmp r2, r3
005f7528  85 f8 ff 9a                                      bls #0x5f5744
005f752c  83 00 52 e1                                      cmp r2, r3, lsl #1
005f7530  d1 06 00 da                                      ble #0x5f907c
005f7534  6c 60 8d e2                                      add r6, sp, #0x6c
005f7538  0a 10 a0 e1                                      mov r1, sl
005f753c  08 20 a0 e1                                      mov r2, r8
005f7540  06 00 a0 e1                                      mov r0, r6
005f7544  66 dd ff eb                                      bl #0x5eeae4
005f7548  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f754c  dc 90 9d e5                                      ldr sb, [sp, #0xdc]
005f7550  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f7554  00 00 57 e3                                      cmp r7, #0
005f7558  e4 80 9d 15                                      ldrne r8, [sp, #0xe4]
005f755c  15 a0 d5 e5                                      ldrb sl, [r5, #0x15]
005f7560  01 30 48 12                                      subne r3, r8, #1
005f7564  99 43 24 10                                      mlane r4, sb, r3, r4
005f7568  00 90 69 12                                      rsbne sb, sb, #0
005f756c  00 00 5b e3                                      cmp fp, #0
005f7570  8e ff ff 0a                                      beq #0x5f73b0
005f7574  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f7578  30 90 8d e5                                      str sb, [sp, #0x30]
005f757c  28 90 9d e5                                      ldr sb, [sp, #0x28]
005f7580  04 80 a0 e1                                      mov r8, r4
005f7584  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
005f7588  00 00 52 e3                                      cmp r2, #0
005f758c  08 00 00 0a                                      beq #0x5f75b4
005f7590  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f7594  00 50 a0 e3                                      mov r5, #0
005f7598  ba 10 99 e0                                      ldrh r1, [sb], sl
005f759c  06 00 a0 e1                                      mov r0, r6
005f75a0  4d da ff eb                                      bl #0x5ededc
005f75a4  01 70 57 e2                                      subs r7, r7, #1
005f75a8  05 00 84 e7                                      str r0, [r4, r5]
005f75ac  04 50 85 e2                                      add r5, r5, #4
005f75b0  f8 ff ff 1a                                      bne #0x5f7598
005f75b4  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f75b8  01 c0 5c e2                                      subs ip, ip, #1
005f75bc  e4 c0 8d e5                                      str ip, [sp, #0xe4]
005f75c0  7a ff ff 0a                                      beq #0x5f73b0
005f75c4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f75c8  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f75cc  00 90 8b e0                                      add sb, fp, r0
005f75d0  01 80 88 e0                                      add r8, r8, r1
005f75d4  08 40 a0 e1                                      mov r4, r8
005f75d8  09 b0 a0 e1                                      mov fp, sb
005f75dc  e8 ff ff ea                                      b #0x5f7584
005f75e0  02 20 93 e7                                      ldr r2, [r3, r2]
005f75e4  01 00 12 e3                                      tst r2, #1
005f75e8  ad 07 00 1a                                      bne #0x5f94a4
005f75ec  00 b0 a0 e3                                      mov fp, #0
005f75f0  3c b0 8d e5                                      str fp, [sp, #0x3c]
005f75f4  09 30 97 e7                                      ldr r3, [r7, sb]
005f75f8  28 c0 a0 e3                                      mov ip, #0x28
005f75fc  6c 60 8d e2                                      add r6, sp, #0x6c
005f7600  9c 38 21 e0                                      mla r1, ip, r8, r3
005f7604  44 a0 8d e5                                      str sl, [sp, #0x44]
005f7608  9c 3a 2c e0                                      mla ip, ip, sl, r3
005f760c  06 20 a0 e1                                      mov r2, r6
005f7610  00 30 a0 e3                                      mov r3, #0
005f7614  28 40 8d e5                                      str r4, [sp, #0x28]
005f7618  40 50 8d e5                                      str r5, [sp, #0x40]
005f761c  48 80 8d e5                                      str r8, [sp, #0x48]
005f7620  07 b0 a0 e1                                      mov fp, r7
005f7624  01 a0 a0 e1                                      mov sl, r1
005f7628  08 00 00 ea                                      b #0x5f7650
005f762c  05 00 80 e0                                      add r0, r0, r5
005f7630  00 00 64 e0                                      rsb r0, r4, r0
005f7634  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f7638  04 30 83 e2                                      add r3, r3, #4
005f763c  10 00 53 e3                                      cmp r3, #0x10
005f7640  01 c0 8c e2                                      add ip, ip, #1
005f7644  01 20 82 e2                                      add r2, r2, #1
005f7648  01 10 81 e2                                      add r1, r1, #1
005f764c  0f 00 00 0a                                      beq #0x5f7690
005f7650  03 50 8a e0                                      add r5, sl, r3
005f7654  18 00 dc e5                                      ldrb r0, [ip, #0x18]
005f7658  18 40 d1 e5                                      ldrb r4, [r1, #0x18]
005f765c  04 80 95 e5                                      ldr r8, [r5, #4]
005f7660  1c 70 d1 e5                                      ldrb r7, [r1, #0x1c]
005f7664  1c 50 dc e5                                      ldrb r5, [ip, #0x1c]
005f7668  04 00 50 e1                                      cmp r0, r4
005f766c  03 80 86 e7                                      str r8, [r6, r3]
005f7670  10 50 c2 e5                                      strb r5, [r2, #0x10]
005f7674  14 70 c2 e5                                      strb r7, [r2, #0x14]
005f7678  eb ff ff 8a                                      bhi #0x5f762c
005f767c  80 00 54 e1                                      cmp r4, r0, lsl #1
005f7680  07 40 84 d0                                      addle r4, r4, r7
005f7684  04 00 60 d0                                      rsble r0, r0, r4
005f7688  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f768c  e9 ff ff ea                                      b #0x5f7638
005f7690  09 10 9b e7                                      ldr r1, [fp, sb]
005f7694  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f7698  28 20 a0 e3                                      mov r2, #0x28
005f769c  48 80 9d e5                                      ldr r8, [sp, #0x48]
005f76a0  92 1a 2a e0                                      mla sl, r2, sl, r1
005f76a4  34 00 9d e5                                      ldr r0, [sp, #0x34]
005f76a8  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f76ac  7f c0 dd e5                                      ldrb ip, [sp, #0x7f]
005f76b0  03 70 9a e7                                      ldr r7, [sl, r3]
005f76b4  2c b0 9d e5                                      ldr fp, [sp, #0x2c]
005f76b8  92 18 21 e0                                      mla r1, r2, r8, r1
005f76bc  86 20 60 e0                                      rsb r2, r0, r6, lsl #1
005f76c0  72 20 ef e6                                      uxtb r2, r2
005f76c4  00 00 5b e3                                      cmp fp, #0
005f76c8  0c b0 82 e0                                      add fp, r2, ip
005f76cc  17 22 07 e0                                      and r2, r7, r7, lsl r2
005f76d0  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f76d4  78 80 9d e5                                      ldr r8, [sp, #0x78]
005f76d8  28 c0 8d e5                                      str ip, [sp, #0x28]
005f76dc  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005f76e0  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
005f76e4  03 30 8a e0                                      add r3, sl, r3
005f76e8  08 c0 0c e0                                      and ip, ip, r8
005f76ec  40 50 9d e5                                      ldr r5, [sp, #0x40]
005f76f0  2c c0 8d e5                                      str ip, [sp, #0x2c]
005f76f4  7b b0 ef e6                                      uxtb fp, fp
005f76f8  1f a0 d1 e5                                      ldrb sl, [r1, #0x1f]
005f76fc  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f7700  54 20 8d e5                                      str r2, [sp, #0x54]
005f7704  64 00 8d e5                                      str r0, [sp, #0x64]
005f7708  05 00 00 0a                                      beq #0x5f7724
005f770c  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f7710  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
005f7714  00 30 60 e2                                      rsb r3, r0, #0
005f7718  01 50 41 e2                                      sub r5, r1, #1
005f771c  90 25 25 e0                                      mla r5, r0, r5, r2
005f7720  64 30 8d e5                                      str r3, [sp, #0x64]
005f7724  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f7728  00 00 56 e3                                      cmp r6, #0
005f772c  1f ff ff 0a                                      beq #0x5f73b0
005f7730  7c c0 dd e5                                      ldrb ip, [sp, #0x7c]
005f7734  80 00 dd e5                                      ldrb r0, [sp, #0x80]
005f7738  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005f773c  7d 20 dd e5                                      ldrb r2, [sp, #0x7d]
005f7740  50 c0 8d e5                                      str ip, [sp, #0x50]
005f7744  4c 00 8d e5                                      str r0, [sp, #0x4c]
005f7748  48 10 8d e5                                      str r1, [sp, #0x48]
005f774c  44 20 8d e5                                      str r2, [sp, #0x44]
005f7750  81 30 dd e5                                      ldrb r3, [sp, #0x81]
005f7754  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f7758  7e c0 dd e5                                      ldrb ip, [sp, #0x7e]
005f775c  82 00 dd e5                                      ldrb r0, [sp, #0x82]
005f7760  74 10 9d e5                                      ldr r1, [sp, #0x74]
005f7764  83 20 dd e5                                      ldrb r2, [sp, #0x83]
005f7768  58 70 8d e5                                      str r7, [sp, #0x58]
005f776c  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f7770  40 30 8d e5                                      str r3, [sp, #0x40]
005f7774  3c 60 8d e5                                      str r6, [sp, #0x3c]
005f7778  38 c0 8d e5                                      str ip, [sp, #0x38]
005f777c  34 00 8d e5                                      str r0, [sp, #0x34]
005f7780  24 10 8d e5                                      str r1, [sp, #0x24]
005f7784  20 20 8d e5                                      str r2, [sp, #0x20]
005f7788  60 50 8d e5                                      str r5, [sp, #0x60]
005f778c  00 00 57 e3                                      cmp r7, #0
005f7790  00 20 a0 13                                      movne r2, #0
005f7794  1c 50 8d 15                                      strne r5, [sp, #0x1c]
005f7798  18 70 8d 15                                      strne r7, [sp, #0x18]
005f779c  26 00 00 0a                                      beq #0x5f783c
005f77a0  09 30 94 e6                                      ldr r3, [r4], sb
005f77a4  58 50 9d e5                                      ldr r5, [sp, #0x58]
005f77a8  28 60 9d e5                                      ldr r6, [sp, #0x28]
005f77ac  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f77b0  05 c0 03 e0                                      and ip, r3, r5
005f77b4  3c c6 a0 e1                                      lsr ip, ip, r6
005f77b8  1c c7 a0 e1                                      lsl ip, ip, r7
005f77bc  50 10 9d e5                                      ldr r1, [sp, #0x50]
005f77c0  44 50 9d e5                                      ldr r5, [sp, #0x44]
005f77c4  54 60 9d e5                                      ldr r6, [sp, #0x54]
005f77c8  33 01 a0 e1                                      lsr r0, r3, r1
005f77cc  48 70 9d e5                                      ldr r7, [sp, #0x48]
005f77d0  33 15 a0 e1                                      lsr r1, r3, r5
005f77d4  06 50 03 e0                                      and r5, r3, r6
005f77d8  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
005f77dc  35 5b a0 e1                                      lsr r5, r5, fp
005f77e0  10 06 07 e0                                      and r0, r7, r0, lsl r6
005f77e4  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005f77e8  40 60 9d e5                                      ldr r6, [sp, #0x40]
005f77ec  15 ca 8c e1                                      orr ip, ip, r5, lsl sl
005f77f0  11 16 07 e0                                      and r1, r7, r1, lsl r6
005f77f4  38 70 9d e5                                      ldr r7, [sp, #0x38]
005f77f8  24 50 9d e5                                      ldr r5, [sp, #0x24]
005f77fc  34 60 9d e5                                      ldr r6, [sp, #0x34]
005f7800  33 37 a0 e1                                      lsr r3, r3, r7
005f7804  13 36 05 e0                                      and r3, r5, r3, lsl r6
005f7808  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f780c  01 10 80 e1                                      orr r1, r0, r1
005f7810  08 c0 0c e0                                      and ip, ip, r8
005f7814  07 10 81 e1                                      orr r1, r1, r7
005f7818  03 30 81 e1                                      orr r3, r1, r3
005f781c  0c 30 83 e1                                      orr r3, r3, ip
005f7820  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
005f7824  02 30 cc e7                                      strb r3, [ip, r2]
005f7828  18 00 9d e5                                      ldr r0, [sp, #0x18]
005f782c  01 20 82 e2                                      add r2, r2, #1
005f7830  02 00 50 e1                                      cmp r0, r2
005f7834  d9 ff ff 1a                                      bne #0x5f77a0
005f7838  00 70 a0 e1                                      mov r7, r0
005f783c  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f7840  01 10 51 e2                                      subs r1, r1, #1
005f7844  e4 10 8d e5                                      str r1, [sp, #0xe4]
005f7848  d8 fe ff 0a                                      beq #0x5f73b0
005f784c  30 20 9d e5                                      ldr r2, [sp, #0x30]
005f7850  5c 30 8d e2                                      add r3, sp, #0x5c
005f7854  68 00 93 e8                                      ldm r3, {r3, r5, r6}
005f7858  03 40 82 e0                                      add r4, r2, r3
005f785c  06 50 85 e0                                      add r5, r5, r6
005f7860  60 50 8d e5                                      str r5, [sp, #0x60]
005f7864  30 40 8d e5                                      str r4, [sp, #0x30]
005f7868  c7 ff ff ea                                      b #0x5f778c
005f786c  09 10 9b e7                                      ldr r1, [fp, sb]
005f7870  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f7874  28 20 a0 e3                                      mov r2, #0x28
005f7878  48 80 9d e5                                      ldr r8, [sp, #0x48]
005f787c  92 1a 20 e0                                      mla r0, r2, sl, r1
005f7880  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f7884  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005f7888  92 18 2c e0                                      mla ip, r2, r8, r1
005f788c  7f 50 dd e5                                      ldrb r5, [sp, #0x7f]
005f7890  03 80 90 e7                                      ldr r8, [r0, r3]
005f7894  87 20 66 e0                                      rsb r2, r6, r7, lsl #1
005f7898  72 20 ef e6                                      uxtb r2, r2
005f789c  05 10 82 e0                                      add r1, r2, r5
005f78a0  18 22 08 e0                                      and r2, r8, r8, lsl r2
005f78a4  2c b0 9d e5                                      ldr fp, [sp, #0x2c]
005f78a8  03 30 80 e0                                      add r3, r0, r3
005f78ac  71 10 ef e6                                      uxtb r1, r1
005f78b0  78 a0 9d e5                                      ldr sl, [sp, #0x78]
005f78b4  40 00 9d e5                                      ldr r0, [sp, #0x40]
005f78b8  58 10 8d e5                                      str r1, [sp, #0x58]
005f78bc  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005f78c0  00 00 5b e3                                      cmp fp, #0
005f78c4  0a 00 00 e0                                      and r0, r0, sl
005f78c8  34 40 9d e5                                      ldr r4, [sp, #0x34]
005f78cc  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f78d0  34 50 8d e5                                      str r5, [sp, #0x34]
005f78d4  1f b0 dc e5                                      ldrb fp, [ip, #0x1f]
005f78d8  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f78dc  54 20 8d e5                                      str r2, [sp, #0x54]
005f78e0  60 10 8d e5                                      str r1, [sp, #0x60]
005f78e4  05 00 00 0a                                      beq #0x5f7900
005f78e8  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f78ec  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
005f78f0  00 50 61 e2                                      rsb r5, r1, #0
005f78f4  01 40 42 e2                                      sub r4, r2, #1
005f78f8  91 34 24 e0                                      mla r4, r1, r4, r3
005f78fc  60 50 8d e5                                      str r5, [sp, #0x60]
005f7900  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f7904  00 00 56 e3                                      cmp r6, #0
005f7908  a8 fe ff 0a                                      beq #0x5f73b0
005f790c  7c 70 dd e5                                      ldrb r7, [sp, #0x7c]
005f7910  80 c0 dd e5                                      ldrb ip, [sp, #0x80]
005f7914  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005f7918  50 70 8d e5                                      str r7, [sp, #0x50]
005f791c  4c c0 8d e5                                      str ip, [sp, #0x4c]
005f7920  48 10 8d e5                                      str r1, [sp, #0x48]
005f7924  7d 20 dd e5                                      ldrb r2, [sp, #0x7d]
005f7928  81 30 dd e5                                      ldrb r3, [sp, #0x81]
005f792c  70 50 9d e5                                      ldr r5, [sp, #0x70]
005f7930  7e 60 dd e5                                      ldrb r6, [sp, #0x7e]
005f7934  82 70 dd e5                                      ldrb r7, [sp, #0x82]
005f7938  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005f793c  83 10 dd e5                                      ldrb r1, [sp, #0x83]
005f7940  30 00 9d e5                                      ldr r0, [sp, #0x30]
005f7944  44 20 8d e5                                      str r2, [sp, #0x44]
005f7948  40 30 8d e5                                      str r3, [sp, #0x40]
005f794c  3c 50 8d e5                                      str r5, [sp, #0x3c]
005f7950  38 60 8d e5                                      str r6, [sp, #0x38]
005f7954  24 70 8d e5                                      str r7, [sp, #0x24]
005f7958  20 c0 8d e5                                      str ip, [sp, #0x20]
005f795c  30 10 8d e5                                      str r1, [sp, #0x30]
005f7960  e0 50 9d e5                                      ldr r5, [sp, #0xe0]
005f7964  00 00 55 e3                                      cmp r5, #0
005f7968  2b 00 00 0a                                      beq #0x5f7a1c
005f796c  05 10 a0 e1                                      mov r1, r5
005f7970  00 20 a0 e3                                      mov r2, #0
005f7974  64 80 8d e5                                      str r8, [sp, #0x64]
005f7978  1c 40 8d e5                                      str r4, [sp, #0x1c]
005f797c  b9 30 90 e0                                      ldrh r3, [r0], sb
005f7980  64 40 9d e5                                      ldr r4, [sp, #0x64]
005f7984  34 50 9d e5                                      ldr r5, [sp, #0x34]
005f7988  30 70 9d e5                                      ldr r7, [sp, #0x30]
005f798c  04 60 03 e0                                      and r6, r3, r4
005f7990  36 65 a0 e1                                      lsr r6, r6, r5
005f7994  16 67 a0 e1                                      lsl r6, r6, r7
005f7998  50 80 9d e5                                      ldr r8, [sp, #0x50]
005f799c  44 40 9d e5                                      ldr r4, [sp, #0x44]
005f79a0  01 10 51 e2                                      subs r1, r1, #1
005f79a4  33 58 a0 e1                                      lsr r5, r3, r8
005f79a8  54 80 9d e5                                      ldr r8, [sp, #0x54]
005f79ac  33 c4 a0 e1                                      lsr ip, r3, r4
005f79b0  08 70 03 e0                                      and r7, r3, r8
005f79b4  48 40 9d e5                                      ldr r4, [sp, #0x48]
005f79b8  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
005f79bc  15 58 04 e0                                      and r5, r4, r5, lsl r8
005f79c0  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
005f79c4  40 80 9d e5                                      ldr r8, [sp, #0x40]
005f79c8  1c c8 04 e0                                      and ip, r4, ip, lsl r8
005f79cc  58 40 9d e5                                      ldr r4, [sp, #0x58]
005f79d0  38 80 9d e5                                      ldr r8, [sp, #0x38]
005f79d4  0c c0 85 e1                                      orr ip, r5, ip
005f79d8  37 74 a0 e1                                      lsr r7, r7, r4
005f79dc  20 40 9d e5                                      ldr r4, [sp, #0x20]
005f79e0  17 6b 86 e1                                      orr r6, r6, r7, lsl fp
005f79e4  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f79e8  33 38 a0 e1                                      lsr r3, r3, r8
005f79ec  13 37 04 e0                                      and r3, r4, r3, lsl r7
005f79f0  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
005f79f4  0a 60 06 e0                                      and r6, r6, sl
005f79f8  08 c0 8c e1                                      orr ip, ip, r8
005f79fc  03 30 8c e1                                      orr r3, ip, r3
005f7a00  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
005f7a04  06 30 83 e1                                      orr r3, r3, r6
005f7a08  02 30 8c e7                                      str r3, [ip, r2]
005f7a0c  04 20 82 e2                                      add r2, r2, #4
005f7a10  d9 ff ff 1a                                      bne #0x5f797c
005f7a14  64 80 9d e5                                      ldr r8, [sp, #0x64]
005f7a18  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
005f7a1c  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f7a20  01 00 50 e2                                      subs r0, r0, #1
005f7a24  e4 00 8d e5                                      str r0, [sp, #0xe4]
005f7a28  60 fe ff 0a                                      beq #0x5f73b0
005f7a2c  28 10 9d e5                                      ldr r1, [sp, #0x28]
005f7a30  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f7a34  60 30 9d e5                                      ldr r3, [sp, #0x60]
005f7a38  02 10 81 e0                                      add r1, r1, r2
005f7a3c  28 10 8d e5                                      str r1, [sp, #0x28]
005f7a40  03 40 84 e0                                      add r4, r4, r3
005f7a44  01 00 a0 e1                                      mov r0, r1
005f7a48  c4 ff ff ea                                      b #0x5f7960
005f7a4c  03 00 52 e1                                      cmp r2, r3
005f7a50  ae f6 ff 9a                                      bls #0x5f5510
005f7a54  83 00 52 e1                                      cmp r2, r3, lsl #1
005f7a58  5f 06 00 da                                      ble #0x5f93dc
005f7a5c  6c 60 8d e2                                      add r6, sp, #0x6c
005f7a60  0a 10 a0 e1                                      mov r1, sl
005f7a64  08 20 a0 e1                                      mov r2, r8
005f7a68  06 00 a0 e1                                      mov r0, r6
005f7a6c  1c dc ff eb                                      bl #0x5eeae4
005f7a70  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005f7a74  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f7a78  15 a0 db e5                                      ldrb sl, [fp, #0x15]
005f7a7c  00 00 53 e3                                      cmp r3, #0
005f7a80  e4 70 9d 15                                      ldrne r7, [sp, #0xe4]
005f7a84  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f7a88  01 30 47 12                                      subne r3, r7, #1
005f7a8c  98 43 24 10                                      mlane r4, r8, r3, r4
005f7a90  00 80 68 12                                      rsbne r8, r8, #0
005f7a94  00 00 5b e3                                      cmp fp, #0
005f7a98  44 fe ff 0a                                      beq #0x5f73b0
005f7a9c  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f7aa0  e4 90 9d e5                                      ldr sb, [sp, #0xe4]
005f7aa4  30 80 8d e5                                      str r8, [sp, #0x30]
005f7aa8  e0 80 9d e5                                      ldr r8, [sp, #0xe0]
005f7aac  00 00 58 e3                                      cmp r8, #0
005f7ab0  00 70 a0 13                                      movne r7, #0
005f7ab4  06 00 00 0a                                      beq #0x5f7ad4
005f7ab8  ba 10 9b e0                                      ldrh r1, [fp], sl
005f7abc  06 00 a0 e1                                      mov r0, r6
005f7ac0  05 d9 ff eb                                      bl #0x5ededc
005f7ac4  07 00 c4 e7                                      strb r0, [r4, r7]
005f7ac8  01 70 87 e2                                      add r7, r7, #1
005f7acc  07 00 58 e1                                      cmp r8, r7
005f7ad0  f8 ff ff 1a                                      bne #0x5f7ab8
005f7ad4  01 90 59 e2                                      subs sb, sb, #1
005f7ad8  34 fe ff 0a                                      beq #0x5f73b0
005f7adc  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005f7ae0  30 00 9d e5                                      ldr r0, [sp, #0x30]
005f7ae4  0c 50 85 e0                                      add r5, r5, ip
005f7ae8  00 40 84 e0                                      add r4, r4, r0
005f7aec  05 b0 a0 e1                                      mov fp, r5
005f7af0  ed ff ff ea                                      b #0x5f7aac
005f7af4  03 00 52 e1                                      cmp r2, r3
005f7af8  96 f7 ff 9a                                      bls #0x5f5958
005f7afc  83 00 52 e1                                      cmp r2, r3, lsl #1
005f7b00  0c 06 00 da                                      ble #0x5f9338
005f7b04  6c 60 8d e2                                      add r6, sp, #0x6c
005f7b08  0a 10 a0 e1                                      mov r1, sl
005f7b0c  08 20 a0 e1                                      mov r2, r8
005f7b10  06 00 a0 e1                                      mov r0, r6
005f7b14  f2 db ff eb                                      bl #0x5eeae4
005f7b18  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005f7b1c  dc 90 9d e5                                      ldr sb, [sp, #0xdc]
005f7b20  e4 80 9d e5                                      ldr r8, [sp, #0xe4]
005f7b24  00 00 53 e3                                      cmp r3, #0
005f7b28  e4 70 9d 15                                      ldrne r7, [sp, #0xe4]
005f7b2c  15 a0 db e5                                      ldrb sl, [fp, #0x15]
005f7b30  01 30 47 12                                      subne r3, r7, #1
005f7b34  99 53 25 10                                      mlane r5, sb, r3, r5
005f7b38  00 90 69 12                                      rsbne sb, sb, #0
005f7b3c  00 00 58 e3                                      cmp r8, #0
005f7b40  1a fe ff 0a                                      beq #0x5f73b0
005f7b44  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f7b48  30 90 8d e5                                      str sb, [sp, #0x30]
005f7b4c  e0 90 9d e5                                      ldr sb, [sp, #0xe0]
005f7b50  05 80 a0 e1                                      mov r8, r5
005f7b54  00 00 59 e3                                      cmp sb, #0
005f7b58  00 70 a0 13                                      movne r7, #0
005f7b5c  06 00 00 0a                                      beq #0x5f7b7c
005f7b60  0a 10 94 e6                                      ldr r1, [r4], sl
005f7b64  06 00 a0 e1                                      mov r0, r6
005f7b68  db d8 ff eb                                      bl #0x5ededc
005f7b6c  07 00 c5 e7                                      strb r0, [r5, r7]
005f7b70  01 70 87 e2                                      add r7, r7, #1
005f7b74  07 00 59 e1                                      cmp sb, r7
005f7b78  f8 ff ff 1a                                      bne #0x5f7b60
005f7b7c  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f7b80  01 c0 5c e2                                      subs ip, ip, #1
005f7b84  e4 c0 8d e5                                      str ip, [sp, #0xe4]
005f7b88  08 fe ff 0a                                      beq #0x5f73b0
005f7b8c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f7b90  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f7b94  00 40 8b e0                                      add r4, fp, r0
005f7b98  01 80 88 e0                                      add r8, r8, r1
005f7b9c  08 50 a0 e1                                      mov r5, r8
005f7ba0  04 b0 a0 e1                                      mov fp, r4
005f7ba4  ea ff ff ea                                      b #0x5f7b54
005f7ba8  03 00 52 e1                                      cmp r2, r3
005f7bac  eb f7 ff 9a                                      bls #0x5f5b60
005f7bb0  83 00 52 e1                                      cmp r2, r3, lsl #1
005f7bb4  b3 05 00 da                                      ble #0x5f9288
005f7bb8  6c 60 8d e2                                      add r6, sp, #0x6c
005f7bbc  08 20 a0 e1                                      mov r2, r8
005f7bc0  0a 10 a0 e1                                      mov r1, sl
005f7bc4  06 00 a0 e1                                      mov r0, r6
005f7bc8  c5 db ff eb                                      bl #0x5eeae4
005f7bcc  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f7bd0  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f7bd4  15 90 db e5                                      ldrb sb, [fp, #0x15]
005f7bd8  00 00 57 e3                                      cmp r7, #0
005f7bdc  24 80 8d e5                                      str r8, [sp, #0x24]
005f7be0  04 00 00 0a                                      beq #0x5f7bf8
005f7be4  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f7be8  00 c0 68 e2                                      rsb ip, r8, #0
005f7bec  24 c0 8d e5                                      str ip, [sp, #0x24]
005f7bf0  01 30 4b e2                                      sub r3, fp, #1
005f7bf4  98 53 25 e0                                      mla r5, r8, r3, r5
005f7bf8  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f7bfc  00 00 50 e3                                      cmp r0, #0
005f7c00  ea fd ff 0a                                      beq #0x5f73b0
005f7c04  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f7c08  05 a0 a0 e1                                      mov sl, r5
005f7c0c  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f7c10  00 00 57 e3                                      cmp r7, #0
005f7c14  08 00 00 0a                                      beq #0x5f7c3c
005f7c18  e0 80 9d e5                                      ldr r8, [sp, #0xe0]
005f7c1c  00 70 a0 e3                                      mov r7, #0
005f7c20  09 10 94 e6                                      ldr r1, [r4], sb
005f7c24  06 00 a0 e1                                      mov r0, r6
005f7c28  ab d8 ff eb                                      bl #0x5ededc
005f7c2c  01 80 58 e2                                      subs r8, r8, #1
005f7c30  b7 00 85 e1                                      strh r0, [r5, r7]
005f7c34  02 70 87 e2                                      add r7, r7, #2
005f7c38  f8 ff ff 1a                                      bne #0x5f7c20
005f7c3c  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f7c40  01 10 51 e2                                      subs r1, r1, #1
005f7c44  e4 10 8d e5                                      str r1, [sp, #0xe4]
005f7c48  d8 fd ff 0a                                      beq #0x5f73b0
005f7c4c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f7c50  24 30 9d e5                                      ldr r3, [sp, #0x24]
005f7c54  02 40 8b e0                                      add r4, fp, r2
005f7c58  03 a0 8a e0                                      add sl, sl, r3
005f7c5c  0a 50 a0 e1                                      mov r5, sl
005f7c60  04 b0 a0 e1                                      mov fp, r4
005f7c64  e8 ff ff ea                                      b #0x5f7c0c
005f7c68  03 00 52 e1                                      cmp r2, r3
005f7c6c  a3 f5 ff 9a                                      bls #0x5f5300
005f7c70  83 00 52 e1                                      cmp r2, r3, lsl #1
005f7c74  57 05 00 da                                      ble #0x5f91d8
005f7c78  6c 60 8d e2                                      add r6, sp, #0x6c
005f7c7c  08 20 a0 e1                                      mov r2, r8
005f7c80  0a 10 a0 e1                                      mov r1, sl
005f7c84  06 00 a0 e1                                      mov r0, r6
005f7c88  95 db ff eb                                      bl #0x5eeae4
005f7c8c  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f7c90  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f7c94  15 90 db e5                                      ldrb sb, [fp, #0x15]
005f7c98  00 00 57 e3                                      cmp r7, #0
005f7c9c  24 80 8d e5                                      str r8, [sp, #0x24]
005f7ca0  04 00 00 0a                                      beq #0x5f7cb8
005f7ca4  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f7ca8  00 c0 68 e2                                      rsb ip, r8, #0
005f7cac  24 c0 8d e5                                      str ip, [sp, #0x24]
005f7cb0  01 30 4b e2                                      sub r3, fp, #1
005f7cb4  98 53 25 e0                                      mla r5, r8, r3, r5
005f7cb8  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f7cbc  00 00 50 e3                                      cmp r0, #0
005f7cc0  ba fd ff 0a                                      beq #0x5f73b0
005f7cc4  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f7cc8  05 a0 a0 e1                                      mov sl, r5
005f7ccc  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f7cd0  00 00 57 e3                                      cmp r7, #0
005f7cd4  08 00 00 0a                                      beq #0x5f7cfc
005f7cd8  e0 80 9d e5                                      ldr r8, [sp, #0xe0]
005f7cdc  00 70 a0 e3                                      mov r7, #0
005f7ce0  09 10 d4 e6                                      ldrb r1, [r4], sb
005f7ce4  06 00 a0 e1                                      mov r0, r6
005f7ce8  7b d8 ff eb                                      bl #0x5ededc
005f7cec  01 80 58 e2                                      subs r8, r8, #1
005f7cf0  07 00 85 e7                                      str r0, [r5, r7]
005f7cf4  04 70 87 e2                                      add r7, r7, #4
005f7cf8  f8 ff ff 1a                                      bne #0x5f7ce0
005f7cfc  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f7d00  01 10 51 e2                                      subs r1, r1, #1
005f7d04  e4 10 8d e5                                      str r1, [sp, #0xe4]
005f7d08  a8 fd ff 0a                                      beq #0x5f73b0
005f7d0c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f7d10  24 30 9d e5                                      ldr r3, [sp, #0x24]
005f7d14  02 40 8b e0                                      add r4, fp, r2
005f7d18  03 a0 8a e0                                      add sl, sl, r3
005f7d1c  0a 50 a0 e1                                      mov r5, sl
005f7d20  04 b0 a0 e1                                      mov fp, r4
005f7d24  e8 ff ff ea                                      b #0x5f7ccc
005f7d28  02 20 93 e7                                      ldr r2, [r3, r2]
005f7d2c  01 00 12 e3                                      tst r2, #1
005f7d30  cf 05 00 1a                                      bne #0x5f9474
005f7d34  00 c0 a0 e3                                      mov ip, #0
005f7d38  3c c0 8d e5                                      str ip, [sp, #0x3c]
005f7d3c  09 30 97 e7                                      ldr r3, [r7, sb]
005f7d40  28 c0 a0 e3                                      mov ip, #0x28
005f7d44  6c 60 8d e2                                      add r6, sp, #0x6c
005f7d48  9c 38 21 e0                                      mla r1, ip, r8, r3
005f7d4c  44 a0 8d e5                                      str sl, [sp, #0x44]
005f7d50  9c 3a 2c e0                                      mla ip, ip, sl, r3
005f7d54  06 20 a0 e1                                      mov r2, r6
005f7d58  00 30 a0 e3                                      mov r3, #0
005f7d5c  28 40 8d e5                                      str r4, [sp, #0x28]
005f7d60  40 50 8d e5                                      str r5, [sp, #0x40]
005f7d64  48 80 8d e5                                      str r8, [sp, #0x48]
005f7d68  07 b0 a0 e1                                      mov fp, r7
005f7d6c  01 a0 a0 e1                                      mov sl, r1
005f7d70  08 00 00 ea                                      b #0x5f7d98
005f7d74  05 00 80 e0                                      add r0, r0, r5
005f7d78  00 00 64 e0                                      rsb r0, r4, r0
005f7d7c  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f7d80  04 30 83 e2                                      add r3, r3, #4
005f7d84  10 00 53 e3                                      cmp r3, #0x10
005f7d88  01 c0 8c e2                                      add ip, ip, #1
005f7d8c  01 20 82 e2                                      add r2, r2, #1
005f7d90  01 10 81 e2                                      add r1, r1, #1
005f7d94  0f 00 00 0a                                      beq #0x5f7dd8
005f7d98  03 50 8a e0                                      add r5, sl, r3
005f7d9c  18 00 dc e5                                      ldrb r0, [ip, #0x18]
005f7da0  18 40 d1 e5                                      ldrb r4, [r1, #0x18]
005f7da4  04 80 95 e5                                      ldr r8, [r5, #4]
005f7da8  1c 70 d1 e5                                      ldrb r7, [r1, #0x1c]
005f7dac  1c 50 dc e5                                      ldrb r5, [ip, #0x1c]
005f7db0  04 00 50 e1                                      cmp r0, r4
005f7db4  03 80 86 e7                                      str r8, [r6, r3]
005f7db8  10 50 c2 e5                                      strb r5, [r2, #0x10]
005f7dbc  14 70 c2 e5                                      strb r7, [r2, #0x14]
005f7dc0  eb ff ff 8a                                      bhi #0x5f7d74
005f7dc4  80 00 54 e1                                      cmp r4, r0, lsl #1
005f7dc8  07 40 84 d0                                      addle r4, r4, r7
005f7dcc  04 00 60 d0                                      rsble r0, r0, r4
005f7dd0  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f7dd4  e9 ff ff ea                                      b #0x5f7d80
005f7dd8  09 10 9b e7                                      ldr r1, [fp, sb]
005f7ddc  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f7de0  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f7de4  48 80 9d e5                                      ldr r8, [sp, #0x48]
005f7de8  28 20 a0 e3                                      mov r2, #0x28
005f7dec  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f7df0  28 00 8d e5                                      str r0, [sp, #0x28]
005f7df4  92 1a 20 e0                                      mla r0, r2, sl, r1
005f7df8  92 18 2c e0                                      mla ip, r2, r8, r1
005f7dfc  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f7e00  34 10 9d e5                                      ldr r1, [sp, #0x34]
005f7e04  03 80 90 e7                                      ldr r8, [r0, r3]
005f7e08  28 b0 9d e5                                      ldr fp, [sp, #0x28]
005f7e0c  86 20 61 e0                                      rsb r2, r1, r6, lsl #1
005f7e10  72 20 ef e6                                      uxtb r2, r2
005f7e14  0b 10 82 e0                                      add r1, r2, fp
005f7e18  18 22 08 e0                                      and r2, r8, r8, lsl r2
005f7e1c  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f7e20  03 30 80 e0                                      add r3, r0, r3
005f7e24  71 10 ef e6                                      uxtb r1, r1
005f7e28  78 a0 9d e5                                      ldr sl, [sp, #0x78]
005f7e2c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005f7e30  58 10 8d e5                                      str r1, [sp, #0x58]
005f7e34  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005f7e38  0a 00 00 e0                                      and r0, r0, sl
005f7e3c  00 00 57 e3                                      cmp r7, #0
005f7e40  40 50 9d e5                                      ldr r5, [sp, #0x40]
005f7e44  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f7e48  1f b0 dc e5                                      ldrb fp, [ip, #0x1f]
005f7e4c  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f7e50  54 20 8d e5                                      str r2, [sp, #0x54]
005f7e54  64 10 8d e5                                      str r1, [sp, #0x64]
005f7e58  05 00 00 0a                                      beq #0x5f7e74
005f7e5c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f7e60  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
005f7e64  00 60 61 e2                                      rsb r6, r1, #0
005f7e68  01 50 42 e2                                      sub r5, r2, #1
005f7e6c  91 35 25 e0                                      mla r5, r1, r5, r3
005f7e70  64 60 8d e5                                      str r6, [sp, #0x64]
005f7e74  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f7e78  00 00 57 e3                                      cmp r7, #0
005f7e7c  4b fd ff 0a                                      beq #0x5f73b0
005f7e80  7c c0 dd e5                                      ldrb ip, [sp, #0x7c]
005f7e84  80 00 dd e5                                      ldrb r0, [sp, #0x80]
005f7e88  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005f7e8c  50 c0 8d e5                                      str ip, [sp, #0x50]
005f7e90  4c 00 8d e5                                      str r0, [sp, #0x4c]
005f7e94  48 10 8d e5                                      str r1, [sp, #0x48]
005f7e98  7d 20 dd e5                                      ldrb r2, [sp, #0x7d]
005f7e9c  81 30 dd e5                                      ldrb r3, [sp, #0x81]
005f7ea0  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f7ea4  7e 70 dd e5                                      ldrb r7, [sp, #0x7e]
005f7ea8  82 c0 dd e5                                      ldrb ip, [sp, #0x82]
005f7eac  74 00 9d e5                                      ldr r0, [sp, #0x74]
005f7eb0  83 10 dd e5                                      ldrb r1, [sp, #0x83]
005f7eb4  44 20 8d e5                                      str r2, [sp, #0x44]
005f7eb8  40 30 8d e5                                      str r3, [sp, #0x40]
005f7ebc  3c 60 8d e5                                      str r6, [sp, #0x3c]
005f7ec0  38 70 8d e5                                      str r7, [sp, #0x38]
005f7ec4  34 c0 8d e5                                      str ip, [sp, #0x34]
005f7ec8  24 00 8d e5                                      str r0, [sp, #0x24]
005f7ecc  20 10 8d e5                                      str r1, [sp, #0x20]
005f7ed0  60 50 8d e5                                      str r5, [sp, #0x60]
005f7ed4  e0 60 9d e5                                      ldr r6, [sp, #0xe0]
005f7ed8  00 00 56 e3                                      cmp r6, #0
005f7edc  2a 00 00 0a                                      beq #0x5f7f8c
005f7ee0  06 10 a0 e1                                      mov r1, r6
005f7ee4  00 20 a0 e3                                      mov r2, #0
005f7ee8  1c 80 8d e5                                      str r8, [sp, #0x1c]
005f7eec  18 50 8d e5                                      str r5, [sp, #0x18]
005f7ef0  09 30 94 e6                                      ldr r3, [r4], sb
005f7ef4  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
005f7ef8  28 70 9d e5                                      ldr r7, [sp, #0x28]
005f7efc  20 80 9d e5                                      ldr r8, [sp, #0x20]
005f7f00  06 50 03 e0                                      and r5, r3, r6
005f7f04  35 57 a0 e1                                      lsr r5, r5, r7
005f7f08  15 58 a0 e1                                      lsl r5, r5, r8
005f7f0c  50 00 9d e5                                      ldr r0, [sp, #0x50]
005f7f10  44 60 9d e5                                      ldr r6, [sp, #0x44]
005f7f14  54 70 9d e5                                      ldr r7, [sp, #0x54]
005f7f18  33 c0 a0 e1                                      lsr ip, r3, r0
005f7f1c  48 80 9d e5                                      ldr r8, [sp, #0x48]
005f7f20  33 06 a0 e1                                      lsr r0, r3, r6
005f7f24  07 60 03 e0                                      and r6, r3, r7
005f7f28  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
005f7f2c  01 10 51 e2                                      subs r1, r1, #1
005f7f30  1c c7 08 e0                                      and ip, r8, ip, lsl r7
005f7f34  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
005f7f38  40 70 9d e5                                      ldr r7, [sp, #0x40]
005f7f3c  10 07 08 e0                                      and r0, r8, r0, lsl r7
005f7f40  58 80 9d e5                                      ldr r8, [sp, #0x58]
005f7f44  38 70 9d e5                                      ldr r7, [sp, #0x38]
005f7f48  00 00 8c e1                                      orr r0, ip, r0
005f7f4c  36 68 a0 e1                                      lsr r6, r6, r8
005f7f50  24 80 9d e5                                      ldr r8, [sp, #0x24]
005f7f54  16 5b 85 e1                                      orr r5, r5, r6, lsl fp
005f7f58  34 60 9d e5                                      ldr r6, [sp, #0x34]
005f7f5c  33 37 a0 e1                                      lsr r3, r3, r7
005f7f60  13 36 08 e0                                      and r3, r8, r3, lsl r6
005f7f64  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f7f68  18 80 9d e5                                      ldr r8, [sp, #0x18]
005f7f6c  0a 50 05 e0                                      and r5, r5, sl
005f7f70  07 00 80 e1                                      orr r0, r0, r7
005f7f74  03 30 80 e1                                      orr r3, r0, r3
005f7f78  05 30 83 e1                                      orr r3, r3, r5
005f7f7c  b2 30 88 e1                                      strh r3, [r8, r2]
005f7f80  02 20 82 e2                                      add r2, r2, #2
005f7f84  d9 ff ff 1a                                      bne #0x5f7ef0
005f7f88  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
005f7f8c  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f7f90  01 c0 5c e2                                      subs ip, ip, #1
005f7f94  e4 c0 8d e5                                      str ip, [sp, #0xe4]
005f7f98  04 fd ff 0a                                      beq #0x5f73b0
005f7f9c  30 00 9d e5                                      ldr r0, [sp, #0x30]
005f7fa0  5c 10 8d e2                                      add r1, sp, #0x5c
005f7fa4  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
005f7fa8  01 40 80 e0                                      add r4, r0, r1
005f7fac  03 20 82 e0                                      add r2, r2, r3
005f7fb0  60 20 8d e5                                      str r2, [sp, #0x60]
005f7fb4  02 50 a0 e1                                      mov r5, r2
005f7fb8  30 40 8d e5                                      str r4, [sp, #0x30]
005f7fbc  c4 ff ff ea                                      b #0x5f7ed4
005f7fc0  02 20 93 e7                                      ldr r2, [r3, r2]
005f7fc4  01 00 12 e3                                      tst r2, #1
005f7fc8  47 05 00 1a                                      bne #0x5f94ec
005f7fcc  00 c0 a0 e3                                      mov ip, #0
005f7fd0  3c c0 8d e5                                      str ip, [sp, #0x3c]
005f7fd4  09 30 97 e7                                      ldr r3, [r7, sb]
005f7fd8  28 c0 a0 e3                                      mov ip, #0x28
005f7fdc  6c 60 8d e2                                      add r6, sp, #0x6c
005f7fe0  9c 38 21 e0                                      mla r1, ip, r8, r3
005f7fe4  44 a0 8d e5                                      str sl, [sp, #0x44]
005f7fe8  9c 3a 2c e0                                      mla ip, ip, sl, r3
005f7fec  06 20 a0 e1                                      mov r2, r6
005f7ff0  00 30 a0 e3                                      mov r3, #0
005f7ff4  28 40 8d e5                                      str r4, [sp, #0x28]
005f7ff8  40 50 8d e5                                      str r5, [sp, #0x40]
005f7ffc  48 80 8d e5                                      str r8, [sp, #0x48]
005f8000  07 b0 a0 e1                                      mov fp, r7
005f8004  01 a0 a0 e1                                      mov sl, r1
005f8008  08 00 00 ea                                      b #0x5f8030
005f800c  05 00 80 e0                                      add r0, r0, r5
005f8010  00 00 64 e0                                      rsb r0, r4, r0
005f8014  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f8018  04 30 83 e2                                      add r3, r3, #4
005f801c  10 00 53 e3                                      cmp r3, #0x10
005f8020  01 c0 8c e2                                      add ip, ip, #1
005f8024  01 20 82 e2                                      add r2, r2, #1
005f8028  01 10 81 e2                                      add r1, r1, #1
005f802c  5a 01 00 0a                                      beq #0x5f859c
005f8030  03 50 8a e0                                      add r5, sl, r3
005f8034  18 00 dc e5                                      ldrb r0, [ip, #0x18]
005f8038  18 40 d1 e5                                      ldrb r4, [r1, #0x18]
005f803c  04 80 95 e5                                      ldr r8, [r5, #4]
005f8040  1c 70 d1 e5                                      ldrb r7, [r1, #0x1c]
005f8044  1c 50 dc e5                                      ldrb r5, [ip, #0x1c]
005f8048  04 00 50 e1                                      cmp r0, r4
005f804c  03 80 86 e7                                      str r8, [r6, r3]
005f8050  10 50 c2 e5                                      strb r5, [r2, #0x10]
005f8054  14 70 c2 e5                                      strb r7, [r2, #0x14]
005f8058  eb ff ff 8a                                      bhi #0x5f800c
005f805c  80 00 54 e1                                      cmp r4, r0, lsl #1
005f8060  07 40 84 d0                                      addle r4, r4, r7
005f8064  04 00 60 d0                                      rsble r0, r0, r4
005f8068  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f806c  e9 ff ff ea                                      b #0x5f8018
005f8070  02 20 93 e7                                      ldr r2, [r3, r2]
005f8074  01 00 12 e3                                      tst r2, #1
005f8078  15 05 00 1a                                      bne #0x5f94d4
005f807c  00 c0 a0 e3                                      mov ip, #0
005f8080  3c c0 8d e5                                      str ip, [sp, #0x3c]
005f8084  09 30 97 e7                                      ldr r3, [r7, sb]
005f8088  28 c0 a0 e3                                      mov ip, #0x28
005f808c  6c 60 8d e2                                      add r6, sp, #0x6c
005f8090  9c 38 21 e0                                      mla r1, ip, r8, r3
005f8094  44 a0 8d e5                                      str sl, [sp, #0x44]
005f8098  9c 3a 2c e0                                      mla ip, ip, sl, r3
005f809c  06 20 a0 e1                                      mov r2, r6
005f80a0  00 30 a0 e3                                      mov r3, #0
005f80a4  28 40 8d e5                                      str r4, [sp, #0x28]
005f80a8  40 50 8d e5                                      str r5, [sp, #0x40]
005f80ac  48 80 8d e5                                      str r8, [sp, #0x48]
005f80b0  07 b0 a0 e1                                      mov fp, r7
005f80b4  01 a0 a0 e1                                      mov sl, r1
005f80b8  08 00 00 ea                                      b #0x5f80e0
005f80bc  05 00 80 e0                                      add r0, r0, r5
005f80c0  00 00 64 e0                                      rsb r0, r4, r0
005f80c4  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f80c8  04 30 83 e2                                      add r3, r3, #4
005f80cc  10 00 53 e3                                      cmp r3, #0x10
005f80d0  01 c0 8c e2                                      add ip, ip, #1
005f80d4  01 20 82 e2                                      add r2, r2, #1
005f80d8  01 10 81 e2                                      add r1, r1, #1
005f80dc  0f 00 00 0a                                      beq #0x5f8120
005f80e0  03 50 8a e0                                      add r5, sl, r3
005f80e4  18 00 dc e5                                      ldrb r0, [ip, #0x18]
005f80e8  18 40 d1 e5                                      ldrb r4, [r1, #0x18]
005f80ec  04 80 95 e5                                      ldr r8, [r5, #4]
005f80f0  1c 70 d1 e5                                      ldrb r7, [r1, #0x1c]
005f80f4  1c 50 dc e5                                      ldrb r5, [ip, #0x1c]
005f80f8  04 00 50 e1                                      cmp r0, r4
005f80fc  03 80 86 e7                                      str r8, [r6, r3]
005f8100  10 50 c2 e5                                      strb r5, [r2, #0x10]
005f8104  14 70 c2 e5                                      strb r7, [r2, #0x14]
005f8108  eb ff ff 8a                                      bhi #0x5f80bc
005f810c  80 00 54 e1                                      cmp r4, r0, lsl #1
005f8110  07 40 84 d0                                      addle r4, r4, r7
005f8114  04 00 60 d0                                      rsble r0, r0, r4
005f8118  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f811c  e9 ff ff ea                                      b #0x5f80c8
005f8120  09 10 9b e7                                      ldr r1, [fp, sb]
005f8124  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f8128  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f812c  48 80 9d e5                                      ldr r8, [sp, #0x48]
005f8130  28 20 a0 e3                                      mov r2, #0x28
005f8134  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f8138  28 00 8d e5                                      str r0, [sp, #0x28]
005f813c  92 1a 20 e0                                      mla r0, r2, sl, r1
005f8140  92 18 2c e0                                      mla ip, r2, r8, r1
005f8144  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f8148  34 10 9d e5                                      ldr r1, [sp, #0x34]
005f814c  03 80 90 e7                                      ldr r8, [r0, r3]
005f8150  28 b0 9d e5                                      ldr fp, [sp, #0x28]
005f8154  86 20 61 e0                                      rsb r2, r1, r6, lsl #1
005f8158  72 20 ef e6                                      uxtb r2, r2
005f815c  0b 10 82 e0                                      add r1, r2, fp
005f8160  18 22 08 e0                                      and r2, r8, r8, lsl r2
005f8164  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f8168  03 30 80 e0                                      add r3, r0, r3
005f816c  71 10 ef e6                                      uxtb r1, r1
005f8170  78 a0 9d e5                                      ldr sl, [sp, #0x78]
005f8174  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005f8178  58 10 8d e5                                      str r1, [sp, #0x58]
005f817c  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005f8180  0a 00 00 e0                                      and r0, r0, sl
005f8184  00 00 57 e3                                      cmp r7, #0
005f8188  40 50 9d e5                                      ldr r5, [sp, #0x40]
005f818c  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f8190  1f b0 dc e5                                      ldrb fp, [ip, #0x1f]
005f8194  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f8198  54 20 8d e5                                      str r2, [sp, #0x54]
005f819c  64 10 8d e5                                      str r1, [sp, #0x64]
005f81a0  05 00 00 0a                                      beq #0x5f81bc
005f81a4  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f81a8  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
005f81ac  00 60 61 e2                                      rsb r6, r1, #0
005f81b0  01 50 42 e2                                      sub r5, r2, #1
005f81b4  91 35 25 e0                                      mla r5, r1, r5, r3
005f81b8  64 60 8d e5                                      str r6, [sp, #0x64]
005f81bc  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f81c0  00 00 57 e3                                      cmp r7, #0
005f81c4  79 fc ff 0a                                      beq #0x5f73b0
005f81c8  7c c0 dd e5                                      ldrb ip, [sp, #0x7c]
005f81cc  80 00 dd e5                                      ldrb r0, [sp, #0x80]
005f81d0  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005f81d4  50 c0 8d e5                                      str ip, [sp, #0x50]
005f81d8  4c 00 8d e5                                      str r0, [sp, #0x4c]
005f81dc  48 10 8d e5                                      str r1, [sp, #0x48]
005f81e0  7d 20 dd e5                                      ldrb r2, [sp, #0x7d]
005f81e4  81 30 dd e5                                      ldrb r3, [sp, #0x81]
005f81e8  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f81ec  7e 70 dd e5                                      ldrb r7, [sp, #0x7e]
005f81f0  82 c0 dd e5                                      ldrb ip, [sp, #0x82]
005f81f4  74 00 9d e5                                      ldr r0, [sp, #0x74]
005f81f8  83 10 dd e5                                      ldrb r1, [sp, #0x83]
005f81fc  44 20 8d e5                                      str r2, [sp, #0x44]
005f8200  40 30 8d e5                                      str r3, [sp, #0x40]
005f8204  3c 60 8d e5                                      str r6, [sp, #0x3c]
005f8208  38 70 8d e5                                      str r7, [sp, #0x38]
005f820c  34 c0 8d e5                                      str ip, [sp, #0x34]
005f8210  24 00 8d e5                                      str r0, [sp, #0x24]
005f8214  20 10 8d e5                                      str r1, [sp, #0x20]
005f8218  60 50 8d e5                                      str r5, [sp, #0x60]
005f821c  e0 60 9d e5                                      ldr r6, [sp, #0xe0]
005f8220  00 00 56 e3                                      cmp r6, #0
005f8224  2a 00 00 0a                                      beq #0x5f82d4
005f8228  06 10 a0 e1                                      mov r1, r6
005f822c  00 20 a0 e3                                      mov r2, #0
005f8230  1c 80 8d e5                                      str r8, [sp, #0x1c]
005f8234  18 50 8d e5                                      str r5, [sp, #0x18]
005f8238  09 30 d4 e6                                      ldrb r3, [r4], sb
005f823c  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
005f8240  28 70 9d e5                                      ldr r7, [sp, #0x28]
005f8244  20 80 9d e5                                      ldr r8, [sp, #0x20]
005f8248  06 50 03 e0                                      and r5, r3, r6
005f824c  35 57 a0 e1                                      lsr r5, r5, r7
005f8250  15 58 a0 e1                                      lsl r5, r5, r8
005f8254  50 00 9d e5                                      ldr r0, [sp, #0x50]
005f8258  44 60 9d e5                                      ldr r6, [sp, #0x44]
005f825c  54 70 9d e5                                      ldr r7, [sp, #0x54]
005f8260  33 c0 a0 e1                                      lsr ip, r3, r0
005f8264  48 80 9d e5                                      ldr r8, [sp, #0x48]
005f8268  33 06 a0 e1                                      lsr r0, r3, r6
005f826c  07 60 03 e0                                      and r6, r3, r7
005f8270  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
005f8274  01 10 51 e2                                      subs r1, r1, #1
005f8278  1c c7 08 e0                                      and ip, r8, ip, lsl r7
005f827c  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
005f8280  40 70 9d e5                                      ldr r7, [sp, #0x40]
005f8284  10 07 08 e0                                      and r0, r8, r0, lsl r7
005f8288  58 80 9d e5                                      ldr r8, [sp, #0x58]
005f828c  38 70 9d e5                                      ldr r7, [sp, #0x38]
005f8290  00 00 8c e1                                      orr r0, ip, r0
005f8294  36 68 a0 e1                                      lsr r6, r6, r8
005f8298  24 80 9d e5                                      ldr r8, [sp, #0x24]
005f829c  16 5b 85 e1                                      orr r5, r5, r6, lsl fp
005f82a0  34 60 9d e5                                      ldr r6, [sp, #0x34]
005f82a4  33 37 a0 e1                                      lsr r3, r3, r7
005f82a8  13 36 08 e0                                      and r3, r8, r3, lsl r6
005f82ac  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f82b0  18 80 9d e5                                      ldr r8, [sp, #0x18]
005f82b4  0a 50 05 e0                                      and r5, r5, sl
005f82b8  07 00 80 e1                                      orr r0, r0, r7
005f82bc  03 30 80 e1                                      orr r3, r0, r3
005f82c0  05 30 83 e1                                      orr r3, r3, r5
005f82c4  02 30 88 e7                                      str r3, [r8, r2]
005f82c8  04 20 82 e2                                      add r2, r2, #4
005f82cc  d9 ff ff 1a                                      bne #0x5f8238
005f82d0  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
005f82d4  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f82d8  01 c0 5c e2                                      subs ip, ip, #1
005f82dc  e4 c0 8d e5                                      str ip, [sp, #0xe4]
005f82e0  32 fc ff 0a                                      beq #0x5f73b0
005f82e4  30 00 9d e5                                      ldr r0, [sp, #0x30]
005f82e8  5c 10 8d e2                                      add r1, sp, #0x5c
005f82ec  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
005f82f0  01 40 80 e0                                      add r4, r0, r1
005f82f4  03 20 82 e0                                      add r2, r2, r3
005f82f8  60 20 8d e5                                      str r2, [sp, #0x60]
005f82fc  02 50 a0 e1                                      mov r5, r2
005f8300  30 40 8d e5                                      str r4, [sp, #0x30]
005f8304  c4 ff ff ea                                      b #0x5f821c
005f8308  02 20 93 e7                                      ldr r2, [r3, r2]
005f830c  01 00 12 e3                                      tst r2, #1
005f8310  69 04 00 1a                                      bne #0x5f94bc
005f8314  00 b0 a0 e3                                      mov fp, #0
005f8318  3c b0 8d e5                                      str fp, [sp, #0x3c]
005f831c  09 30 97 e7                                      ldr r3, [r7, sb]
005f8320  28 c0 a0 e3                                      mov ip, #0x28
005f8324  6c 60 8d e2                                      add r6, sp, #0x6c
005f8328  9c 38 21 e0                                      mla r1, ip, r8, r3
005f832c  44 a0 8d e5                                      str sl, [sp, #0x44]
005f8330  9c 3a 2c e0                                      mla ip, ip, sl, r3
005f8334  06 20 a0 e1                                      mov r2, r6
005f8338  00 30 a0 e3                                      mov r3, #0
005f833c  28 50 8d e5                                      str r5, [sp, #0x28]
005f8340  40 40 8d e5                                      str r4, [sp, #0x40]
005f8344  48 80 8d e5                                      str r8, [sp, #0x48]
005f8348  07 b0 a0 e1                                      mov fp, r7
005f834c  01 a0 a0 e1                                      mov sl, r1
005f8350  08 00 00 ea                                      b #0x5f8378
005f8354  05 00 80 e0                                      add r0, r0, r5
005f8358  00 00 64 e0                                      rsb r0, r4, r0
005f835c  10 00 c2 e5                                      strb r0, [r2, #0x10]
005f8360  04 30 83 e2                                      add r3, r3, #4
005f8364  10 00 53 e3                                      cmp r3, #0x10
005f8368  01 c0 8c e2                                      add ip, ip, #1
005f836c  01 20 82 e2                                      add r2, r2, #1
005f8370  01 10 81 e2                                      add r1, r1, #1
005f8374  0f 00 00 0a                                      beq #0x5f83b8
005f8378  03 50 8a e0                                      add r5, sl, r3
005f837c  18 00 dc e5                                      ldrb r0, [ip, #0x18]
005f8380  18 40 d1 e5                                      ldrb r4, [r1, #0x18]
005f8384  04 80 95 e5                                      ldr r8, [r5, #4]
005f8388  1c 70 d1 e5                                      ldrb r7, [r1, #0x1c]
005f838c  1c 50 dc e5                                      ldrb r5, [ip, #0x1c]
005f8390  04 00 50 e1                                      cmp r0, r4
005f8394  03 80 86 e7                                      str r8, [r6, r3]
005f8398  10 50 c2 e5                                      strb r5, [r2, #0x10]
005f839c  14 70 c2 e5                                      strb r7, [r2, #0x14]
005f83a0  eb ff ff 8a                                      bhi #0x5f8354
005f83a4  80 00 54 e1                                      cmp r4, r0, lsl #1
005f83a8  07 40 84 d0                                      addle r4, r4, r7
005f83ac  04 00 60 d0                                      rsble r0, r0, r4
005f83b0  14 00 c2 d5                                      strble r0, [r2, #0x14]
005f83b4  e9 ff ff ea                                      b #0x5f8360
005f83b8  09 10 9b e7                                      ldr r1, [fp, sb]
005f83bc  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f83c0  48 80 9d e5                                      ldr r8, [sp, #0x48]
005f83c4  7f c0 dd e5                                      ldrb ip, [sp, #0x7f]
005f83c8  28 20 a0 e3                                      mov r2, #0x28
005f83cc  92 1a 20 e0                                      mla r0, r2, sl, r1
005f83d0  28 50 9d e5                                      ldr r5, [sp, #0x28]
005f83d4  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f83d8  28 c0 8d e5                                      str ip, [sp, #0x28]
005f83dc  92 18 2c e0                                      mla ip, r2, r8, r1
005f83e0  34 10 9d e5                                      ldr r1, [sp, #0x34]
005f83e4  03 80 90 e7                                      ldr r8, [r0, r3]
005f83e8  28 b0 9d e5                                      ldr fp, [sp, #0x28]
005f83ec  86 20 61 e0                                      rsb r2, r1, r6, lsl #1
005f83f0  72 20 ef e6                                      uxtb r2, r2
005f83f4  0b 10 82 e0                                      add r1, r2, fp
005f83f8  18 22 08 e0                                      and r2, r8, r8, lsl r2
005f83fc  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f8400  03 30 80 e0                                      add r3, r0, r3
005f8404  71 10 ef e6                                      uxtb r1, r1
005f8408  78 a0 9d e5                                      ldr sl, [sp, #0x78]
005f840c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005f8410  54 10 8d e5                                      str r1, [sp, #0x54]
005f8414  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005f8418  0a 00 00 e0                                      and r0, r0, sl
005f841c  00 00 57 e3                                      cmp r7, #0
005f8420  40 40 9d e5                                      ldr r4, [sp, #0x40]
005f8424  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f8428  1f b0 dc e5                                      ldrb fp, [ip, #0x1f]
005f842c  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f8430  50 20 8d e5                                      str r2, [sp, #0x50]
005f8434  60 10 8d e5                                      str r1, [sp, #0x60]
005f8438  05 00 00 0a                                      beq #0x5f8454
005f843c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f8440  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
005f8444  00 60 61 e2                                      rsb r6, r1, #0
005f8448  01 40 42 e2                                      sub r4, r2, #1
005f844c  91 34 24 e0                                      mla r4, r1, r4, r3
005f8450  60 60 8d e5                                      str r6, [sp, #0x60]
005f8454  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f8458  00 00 57 e3                                      cmp r7, #0
005f845c  d3 fb ff 0a                                      beq #0x5f73b0
005f8460  7c c0 dd e5                                      ldrb ip, [sp, #0x7c]
005f8464  80 10 dd e5                                      ldrb r1, [sp, #0x80]
005f8468  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
005f846c  7d 30 dd e5                                      ldrb r3, [sp, #0x7d]
005f8470  70 70 9d e5                                      ldr r7, [sp, #0x70]
005f8474  4c c0 8d e5                                      str ip, [sp, #0x4c]
005f8478  48 10 8d e5                                      str r1, [sp, #0x48]
005f847c  44 20 8d e5                                      str r2, [sp, #0x44]
005f8480  40 30 8d e5                                      str r3, [sp, #0x40]
005f8484  81 60 dd e5                                      ldrb r6, [sp, #0x81]
005f8488  7e c0 dd e5                                      ldrb ip, [sp, #0x7e]
005f848c  82 10 dd e5                                      ldrb r1, [sp, #0x82]
005f8490  74 20 9d e5                                      ldr r2, [sp, #0x74]
005f8494  83 30 dd e5                                      ldrb r3, [sp, #0x83]
005f8498  38 70 8d e5                                      str r7, [sp, #0x38]
005f849c  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f84a0  30 00 9d e5                                      ldr r0, [sp, #0x30]
005f84a4  3c 60 8d e5                                      str r6, [sp, #0x3c]
005f84a8  34 c0 8d e5                                      str ip, [sp, #0x34]
005f84ac  24 10 8d e5                                      str r1, [sp, #0x24]
005f84b0  20 20 8d e5                                      str r2, [sp, #0x20]
005f84b4  30 30 8d e5                                      str r3, [sp, #0x30]
005f84b8  58 50 8d e5                                      str r5, [sp, #0x58]
005f84bc  00 00 57 e3                                      cmp r7, #0
005f84c0  00 20 a0 13                                      movne r2, #0
005f84c4  64 40 8d 15                                      strne r4, [sp, #0x64]
005f84c8  1c 70 8d 15                                      strne r7, [sp, #0x1c]
005f84cc  27 00 00 0a                                      beq #0x5f8570
005f84d0  b9 30 90 e0                                      ldrh r3, [r0], sb
005f84d4  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f84d8  30 60 9d e5                                      ldr r6, [sp, #0x30]
005f84dc  08 50 03 e0                                      and r5, r3, r8
005f84e0  35 54 a0 e1                                      lsr r5, r5, r4
005f84e4  15 56 a0 e1                                      lsl r5, r5, r6
005f84e8  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
005f84ec  40 40 9d e5                                      ldr r4, [sp, #0x40]
005f84f0  33 c7 a0 e1                                      lsr ip, r3, r7
005f84f4  50 70 9d e5                                      ldr r7, [sp, #0x50]
005f84f8  33 14 a0 e1                                      lsr r1, r3, r4
005f84fc  07 60 03 e0                                      and r6, r3, r7
005f8500  44 40 9d e5                                      ldr r4, [sp, #0x44]
005f8504  48 70 9d e5                                      ldr r7, [sp, #0x48]
005f8508  1c c7 04 e0                                      and ip, r4, ip, lsl r7
005f850c  38 40 9d e5                                      ldr r4, [sp, #0x38]
005f8510  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005f8514  11 17 04 e0                                      and r1, r4, r1, lsl r7
005f8518  54 40 9d e5                                      ldr r4, [sp, #0x54]
005f851c  34 70 9d e5                                      ldr r7, [sp, #0x34]
005f8520  01 10 8c e1                                      orr r1, ip, r1
005f8524  36 64 a0 e1                                      lsr r6, r6, r4
005f8528  20 40 9d e5                                      ldr r4, [sp, #0x20]
005f852c  16 5b 85 e1                                      orr r5, r5, r6, lsl fp
005f8530  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f8534  33 37 a0 e1                                      lsr r3, r3, r7
005f8538  13 36 04 e0                                      and r3, r4, r3, lsl r6
005f853c  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f8540  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005f8544  0a 50 05 e0                                      and r5, r5, sl
005f8548  07 10 81 e1                                      orr r1, r1, r7
005f854c  03 30 81 e1                                      orr r3, r1, r3
005f8550  05 30 83 e1                                      orr r3, r3, r5
005f8554  02 30 cc e7                                      strb r3, [ip, r2]
005f8558  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005f855c  01 20 82 e2                                      add r2, r2, #1
005f8560  02 00 51 e1                                      cmp r1, r2
005f8564  d9 ff ff 1a                                      bne #0x5f84d0
005f8568  64 40 9d e5                                      ldr r4, [sp, #0x64]
005f856c  01 70 a0 e1                                      mov r7, r1
005f8570  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f8574  01 20 52 e2                                      subs r2, r2, #1
005f8578  e4 20 8d e5                                      str r2, [sp, #0xe4]
005f857c  8b fb ff 0a                                      beq #0x5f73b0
005f8580  58 30 8d e2                                      add r3, sp, #0x58
005f8584  68 00 93 e8                                      ldm r3, {r3, r5, r6}
005f8588  05 30 83 e0                                      add r3, r3, r5
005f858c  58 30 8d e5                                      str r3, [sp, #0x58]
005f8590  06 40 84 e0                                      add r4, r4, r6
005f8594  03 00 a0 e1                                      mov r0, r3
005f8598  c7 ff ff ea                                      b #0x5f84bc
005f859c  09 10 9b e7                                      ldr r1, [fp, sb]
005f85a0  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f85a4  7f 00 dd e5                                      ldrb r0, [sp, #0x7f]
005f85a8  48 80 9d e5                                      ldr r8, [sp, #0x48]
005f85ac  28 20 a0 e3                                      mov r2, #0x28
005f85b0  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f85b4  28 00 8d e5                                      str r0, [sp, #0x28]
005f85b8  92 1a 20 e0                                      mla r0, r2, sl, r1
005f85bc  92 18 2c e0                                      mla ip, r2, r8, r1
005f85c0  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f85c4  34 10 9d e5                                      ldr r1, [sp, #0x34]
005f85c8  03 80 90 e7                                      ldr r8, [r0, r3]
005f85cc  28 b0 9d e5                                      ldr fp, [sp, #0x28]
005f85d0  86 20 61 e0                                      rsb r2, r1, r6, lsl #1
005f85d4  72 20 ef e6                                      uxtb r2, r2
005f85d8  0b 10 82 e0                                      add r1, r2, fp
005f85dc  18 22 08 e0                                      and r2, r8, r8, lsl r2
005f85e0  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f85e4  03 30 80 e0                                      add r3, r0, r3
005f85e8  71 10 ef e6                                      uxtb r1, r1
005f85ec  78 a0 9d e5                                      ldr sl, [sp, #0x78]
005f85f0  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005f85f4  58 10 8d e5                                      str r1, [sp, #0x58]
005f85f8  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005f85fc  0a 00 00 e0                                      and r0, r0, sl
005f8600  00 00 57 e3                                      cmp r7, #0
005f8604  40 50 9d e5                                      ldr r5, [sp, #0x40]
005f8608  2c 00 8d e5                                      str r0, [sp, #0x2c]
005f860c  1f b0 dc e5                                      ldrb fp, [ip, #0x1f]
005f8610  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f8614  54 20 8d e5                                      str r2, [sp, #0x54]
005f8618  64 10 8d e5                                      str r1, [sp, #0x64]
005f861c  05 00 00 0a                                      beq #0x5f8638
005f8620  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f8624  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
005f8628  00 60 61 e2                                      rsb r6, r1, #0
005f862c  01 50 42 e2                                      sub r5, r2, #1
005f8630  91 35 25 e0                                      mla r5, r1, r5, r3
005f8634  64 60 8d e5                                      str r6, [sp, #0x64]
005f8638  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f863c  00 00 57 e3                                      cmp r7, #0
005f8640  5a fb ff 0a                                      beq #0x5f73b0
005f8644  7c c0 dd e5                                      ldrb ip, [sp, #0x7c]
005f8648  80 00 dd e5                                      ldrb r0, [sp, #0x80]
005f864c  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005f8650  50 c0 8d e5                                      str ip, [sp, #0x50]
005f8654  4c 00 8d e5                                      str r0, [sp, #0x4c]
005f8658  48 10 8d e5                                      str r1, [sp, #0x48]
005f865c  7d 20 dd e5                                      ldrb r2, [sp, #0x7d]
005f8660  81 30 dd e5                                      ldrb r3, [sp, #0x81]
005f8664  70 60 9d e5                                      ldr r6, [sp, #0x70]
005f8668  7e 70 dd e5                                      ldrb r7, [sp, #0x7e]
005f866c  82 c0 dd e5                                      ldrb ip, [sp, #0x82]
005f8670  74 00 9d e5                                      ldr r0, [sp, #0x74]
005f8674  83 10 dd e5                                      ldrb r1, [sp, #0x83]
005f8678  44 20 8d e5                                      str r2, [sp, #0x44]
005f867c  40 30 8d e5                                      str r3, [sp, #0x40]
005f8680  3c 60 8d e5                                      str r6, [sp, #0x3c]
005f8684  38 70 8d e5                                      str r7, [sp, #0x38]
005f8688  34 c0 8d e5                                      str ip, [sp, #0x34]
005f868c  24 00 8d e5                                      str r0, [sp, #0x24]
005f8690  20 10 8d e5                                      str r1, [sp, #0x20]
005f8694  60 50 8d e5                                      str r5, [sp, #0x60]
005f8698  e0 60 9d e5                                      ldr r6, [sp, #0xe0]
005f869c  00 00 56 e3                                      cmp r6, #0
005f86a0  2a 00 00 0a                                      beq #0x5f8750
005f86a4  06 10 a0 e1                                      mov r1, r6
005f86a8  00 20 a0 e3                                      mov r2, #0
005f86ac  1c 80 8d e5                                      str r8, [sp, #0x1c]
005f86b0  18 50 8d e5                                      str r5, [sp, #0x18]
005f86b4  09 30 d4 e6                                      ldrb r3, [r4], sb
005f86b8  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
005f86bc  28 70 9d e5                                      ldr r7, [sp, #0x28]
005f86c0  20 80 9d e5                                      ldr r8, [sp, #0x20]
005f86c4  06 50 03 e0                                      and r5, r3, r6
005f86c8  35 57 a0 e1                                      lsr r5, r5, r7
005f86cc  15 58 a0 e1                                      lsl r5, r5, r8
005f86d0  50 00 9d e5                                      ldr r0, [sp, #0x50]
005f86d4  44 60 9d e5                                      ldr r6, [sp, #0x44]
005f86d8  54 70 9d e5                                      ldr r7, [sp, #0x54]
005f86dc  33 c0 a0 e1                                      lsr ip, r3, r0
005f86e0  48 80 9d e5                                      ldr r8, [sp, #0x48]
005f86e4  33 06 a0 e1                                      lsr r0, r3, r6
005f86e8  07 60 03 e0                                      and r6, r3, r7
005f86ec  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
005f86f0  01 10 51 e2                                      subs r1, r1, #1
005f86f4  1c c7 08 e0                                      and ip, r8, ip, lsl r7
005f86f8  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
005f86fc  40 70 9d e5                                      ldr r7, [sp, #0x40]
005f8700  10 07 08 e0                                      and r0, r8, r0, lsl r7
005f8704  58 80 9d e5                                      ldr r8, [sp, #0x58]
005f8708  38 70 9d e5                                      ldr r7, [sp, #0x38]
005f870c  00 00 8c e1                                      orr r0, ip, r0
005f8710  36 68 a0 e1                                      lsr r6, r6, r8
005f8714  24 80 9d e5                                      ldr r8, [sp, #0x24]
005f8718  16 5b 85 e1                                      orr r5, r5, r6, lsl fp
005f871c  34 60 9d e5                                      ldr r6, [sp, #0x34]
005f8720  33 37 a0 e1                                      lsr r3, r3, r7
005f8724  13 36 08 e0                                      and r3, r8, r3, lsl r6
005f8728  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f872c  18 80 9d e5                                      ldr r8, [sp, #0x18]
005f8730  0a 50 05 e0                                      and r5, r5, sl
005f8734  07 00 80 e1                                      orr r0, r0, r7
005f8738  03 30 80 e1                                      orr r3, r0, r3
005f873c  05 30 83 e1                                      orr r3, r3, r5
005f8740  b2 30 88 e1                                      strh r3, [r8, r2]
005f8744  02 20 82 e2                                      add r2, r2, #2
005f8748  d9 ff ff 1a                                      bne #0x5f86b4
005f874c  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
005f8750  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f8754  01 c0 5c e2                                      subs ip, ip, #1
005f8758  e4 c0 8d e5                                      str ip, [sp, #0xe4]
005f875c  13 fb ff 0a                                      beq #0x5f73b0
005f8760  30 00 9d e5                                      ldr r0, [sp, #0x30]
005f8764  5c 10 8d e2                                      add r1, sp, #0x5c
005f8768  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
005f876c  01 40 80 e0                                      add r4, r0, r1
005f8770  03 20 82 e0                                      add r2, r2, r3
005f8774  60 20 8d e5                                      str r2, [sp, #0x60]
005f8778  02 50 a0 e1                                      mov r5, r2
005f877c  30 40 8d e5                                      str r4, [sp, #0x30]
005f8780  c4 ff ff ea                                      b #0x5f8698
005f8784  78 20 9d e5                                      ldr r2, [sp, #0x78]
005f8788  09 10 9b e7                                      ldr r1, [fp, sb]
005f878c  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
005f8790  28 50 9d e5                                      ldr r5, [sp, #0x28]
005f8794  28 20 8d e5                                      str r2, [sp, #0x28]
005f8798  28 20 a0 e3                                      mov r2, #0x28
005f879c  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f87a0  92 1a 22 e0                                      mla r2, r2, sl, r1
005f87a4  34 70 9d e5                                      ldr r7, [sp, #0x34]
005f87a8  28 80 9d e5                                      ldr r8, [sp, #0x28]
005f87ac  dc b0 9d e5                                      ldr fp, [sp, #0xdc]
005f87b0  00 00 56 e3                                      cmp r6, #0
005f87b4  03 30 82 e0                                      add r3, r2, r3
005f87b8  38 40 9d e5                                      ldr r4, [sp, #0x38]
005f87bc  08 60 07 e0                                      and r6, r7, r8
005f87c0  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f87c4  4c b0 8d e5                                      str fp, [sp, #0x4c]
005f87c8  05 00 00 0a                                      beq #0x5f87e4
005f87cc  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f87d0  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
005f87d4  00 10 6b e2                                      rsb r1, fp, #0
005f87d8  01 40 4c e2                                      sub r4, ip, #1
005f87dc  9b 04 24 e0                                      mla r4, fp, r4, r0
005f87e0  4c 10 8d e5                                      str r1, [sp, #0x4c]
005f87e4  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f87e8  00 00 52 e3                                      cmp r2, #0
005f87ec  ef fa ff 0a                                      beq #0x5f73b0
005f87f0  81 30 dd e5                                      ldrb r3, [sp, #0x81]
005f87f4  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f87f8  7e 00 dd e5                                      ldrb r0, [sp, #0x7e]
005f87fc  40 30 8d e5                                      str r3, [sp, #0x40]
005f8800  3c c0 8d e5                                      str ip, [sp, #0x3c]
005f8804  82 10 dd e5                                      ldrb r1, [sp, #0x82]
005f8808  74 20 9d e5                                      ldr r2, [sp, #0x74]
005f880c  7f 30 dd e5                                      ldrb r3, [sp, #0x7f]
005f8810  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005f8814  44 60 8d e5                                      str r6, [sp, #0x44]
005f8818  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f881c  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f8820  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f8824  7d b0 dd e5                                      ldrb fp, [sp, #0x7d]
005f8828  e0 60 9d e5                                      ldr r6, [sp, #0xe0]
005f882c  38 00 8d e5                                      str r0, [sp, #0x38]
005f8830  34 10 8d e5                                      str r1, [sp, #0x34]
005f8834  2c 20 8d e5                                      str r2, [sp, #0x2c]
005f8838  24 30 8d e5                                      str r3, [sp, #0x24]
005f883c  20 c0 8d e5                                      str ip, [sp, #0x20]
005f8840  48 40 8d e5                                      str r4, [sp, #0x48]
005f8844  00 00 56 e3                                      cmp r6, #0
005f8848  00 20 a0 13                                      movne r2, #0
005f884c  50 40 8d 15                                      strne r4, [sp, #0x50]
005f8850  54 60 8d 15                                      strne r6, [sp, #0x54]
005f8854  1c 00 00 0a                                      beq #0x5f88cc
005f8858  b9 30 95 e0                                      ldrh r3, [r5], sb
005f885c  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
005f8860  40 60 9d e5                                      ldr r6, [sp, #0x40]
005f8864  33 1b a0 e1                                      lsr r1, r3, fp
005f8868  11 16 04 e0                                      and r1, r4, r1, lsl r6
005f886c  38 40 9d e5                                      ldr r4, [sp, #0x38]
005f8870  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f8874  33 0a a0 e1                                      lsr r0, r3, sl
005f8878  33 c4 a0 e1                                      lsr ip, r3, r4
005f887c  10 08 07 e0                                      and r0, r7, r0, lsl r8
005f8880  2c 40 9d e5                                      ldr r4, [sp, #0x2c]
005f8884  33 36 a0 e1                                      lsr r3, r3, r6
005f8888  34 60 9d e5                                      ldr r6, [sp, #0x34]
005f888c  01 10 80 e1                                      orr r1, r0, r1
005f8890  44 00 9d e5                                      ldr r0, [sp, #0x44]
005f8894  1c c6 04 e0                                      and ip, r4, ip, lsl r6
005f8898  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f889c  20 60 9d e5                                      ldr r6, [sp, #0x20]
005f88a0  00 10 81 e1                                      orr r1, r1, r0
005f88a4  0c c0 81 e1                                      orr ip, r1, ip
005f88a8  13 36 04 e0                                      and r3, r4, r3, lsl r6
005f88ac  50 10 9d e5                                      ldr r1, [sp, #0x50]
005f88b0  03 30 8c e1                                      orr r3, ip, r3
005f88b4  02 30 c1 e7                                      strb r3, [r1, r2]
005f88b8  54 30 9d e5                                      ldr r3, [sp, #0x54]
005f88bc  01 20 82 e2                                      add r2, r2, #1
005f88c0  02 00 53 e1                                      cmp r3, r2
005f88c4  e3 ff ff 1a                                      bne #0x5f8858
005f88c8  03 60 a0 e1                                      mov r6, r3
005f88cc  e4 40 9d e5                                      ldr r4, [sp, #0xe4]
005f88d0  01 40 54 e2                                      subs r4, r4, #1
005f88d4  e4 40 8d e5                                      str r4, [sp, #0xe4]
005f88d8  b4 fa ff 0a                                      beq #0x5f73b0
005f88dc  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f88e0  48 10 9d e5                                      ldr r1, [sp, #0x48]
005f88e4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f88e8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005f88ec  00 50 8c e0                                      add r5, ip, r0
005f88f0  02 10 81 e0                                      add r1, r1, r2
005f88f4  48 10 8d e5                                      str r1, [sp, #0x48]
005f88f8  01 40 a0 e1                                      mov r4, r1
005f88fc  30 50 8d e5                                      str r5, [sp, #0x30]
005f8900  cf ff ff ea                                      b #0x5f8844
005f8904  78 20 9d e5                                      ldr r2, [sp, #0x78]
005f8908  09 10 9b e7                                      ldr r1, [fp, sb]
005f890c  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
005f8910  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f8914  28 20 8d e5                                      str r2, [sp, #0x28]
005f8918  28 20 a0 e3                                      mov r2, #0x28
005f891c  92 1a 22 e0                                      mla r2, r2, sl, r1
005f8920  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f8924  34 80 9d e5                                      ldr r8, [sp, #0x34]
005f8928  28 b0 9d e5                                      ldr fp, [sp, #0x28]
005f892c  dc c0 9d e5                                      ldr ip, [sp, #0xdc]
005f8930  03 30 82 e0                                      add r3, r2, r3
005f8934  00 00 56 e3                                      cmp r6, #0
005f8938  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f893c  0b 70 08 e0                                      and r7, r8, fp
005f8940  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f8944  4c c0 8d e5                                      str ip, [sp, #0x4c]
005f8948  05 00 00 0a                                      beq #0x5f8964
005f894c  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f8950  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005f8954  00 20 6c e2                                      rsb r2, ip, #0
005f8958  01 50 40 e2                                      sub r5, r0, #1
005f895c  9c 15 25 e0                                      mla r5, ip, r5, r1
005f8960  4c 20 8d e5                                      str r2, [sp, #0x4c]
005f8964  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
005f8968  00 00 53 e3                                      cmp r3, #0
005f896c  8f fa ff 0a                                      beq #0x5f73b0
005f8970  7d 60 dd e5                                      ldrb r6, [sp, #0x7d]
005f8974  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f8978  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f897c  44 60 8d e5                                      str r6, [sp, #0x44]
005f8980  40 c0 8d e5                                      str ip, [sp, #0x40]
005f8984  7e 10 dd e5                                      ldrb r1, [sp, #0x7e]
005f8988  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f898c  74 30 9d e5                                      ldr r3, [sp, #0x74]
005f8990  7f 60 dd e5                                      ldrb r6, [sp, #0x7f]
005f8994  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005f8998  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f899c  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f89a0  6c b0 9d e5                                      ldr fp, [sp, #0x6c]
005f89a4  3c 00 8d e5                                      str r0, [sp, #0x3c]
005f89a8  38 10 8d e5                                      str r1, [sp, #0x38]
005f89ac  34 20 8d e5                                      str r2, [sp, #0x34]
005f89b0  2c 30 8d e5                                      str r3, [sp, #0x2c]
005f89b4  24 60 8d e5                                      str r6, [sp, #0x24]
005f89b8  20 c0 8d e5                                      str ip, [sp, #0x20]
005f89bc  48 50 8d e5                                      str r5, [sp, #0x48]
005f89c0  e0 c0 9d e5                                      ldr ip, [sp, #0xe0]
005f89c4  00 00 5c e3                                      cmp ip, #0
005f89c8  20 00 00 0a                                      beq #0x5f8a50
005f89cc  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f89d0  00 20 a0 e3                                      mov r2, #0
005f89d4  50 70 8d e5                                      str r7, [sp, #0x50]
005f89d8  54 50 8d e5                                      str r5, [sp, #0x54]
005f89dc  09 30 d4 e6                                      ldrb r3, [r4], sb
005f89e0  44 50 9d e5                                      ldr r5, [sp, #0x44]
005f89e4  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005f89e8  40 70 9d e5                                      ldr r7, [sp, #0x40]
005f89ec  33 05 a0 e1                                      lsr r0, r3, r5
005f89f0  10 07 06 e0                                      and r0, r6, r0, lsl r7
005f89f4  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f89f8  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f89fc  33 ca a0 e1                                      lsr ip, r3, sl
005f8a00  33 56 a0 e1                                      lsr r5, r3, r6
005f8a04  1c c8 0b e0                                      and ip, fp, ip, lsl r8
005f8a08  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f8a0c  33 37 a0 e1                                      lsr r3, r3, r7
005f8a10  34 70 9d e5                                      ldr r7, [sp, #0x34]
005f8a14  00 00 8c e1                                      orr r0, ip, r0
005f8a18  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005f8a1c  15 57 06 e0                                      and r5, r6, r5, lsl r7
005f8a20  28 60 9d e5                                      ldr r6, [sp, #0x28]
005f8a24  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f8a28  0c 00 80 e1                                      orr r0, r0, ip
005f8a2c  05 50 80 e1                                      orr r5, r0, r5
005f8a30  13 37 06 e0                                      and r3, r6, r3, lsl r7
005f8a34  54 00 9d e5                                      ldr r0, [sp, #0x54]
005f8a38  03 30 85 e1                                      orr r3, r5, r3
005f8a3c  01 10 51 e2                                      subs r1, r1, #1
005f8a40  b2 30 80 e1                                      strh r3, [r0, r2]
005f8a44  02 20 82 e2                                      add r2, r2, #2
005f8a48  e3 ff ff 1a                                      bne #0x5f89dc
005f8a4c  50 70 9d e5                                      ldr r7, [sp, #0x50]
005f8a50  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f8a54  01 10 51 e2                                      subs r1, r1, #1
005f8a58  e4 10 8d e5                                      str r1, [sp, #0xe4]
005f8a5c  53 fa ff 0a                                      beq #0x5f73b0
005f8a60  30 20 9d e5                                      ldr r2, [sp, #0x30]
005f8a64  48 50 9d e5                                      ldr r5, [sp, #0x48]
005f8a68  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005f8a6c  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
005f8a70  03 40 82 e0                                      add r4, r2, r3
005f8a74  06 50 85 e0                                      add r5, r5, r6
005f8a78  48 50 8d e5                                      str r5, [sp, #0x48]
005f8a7c  30 40 8d e5                                      str r4, [sp, #0x30]
005f8a80  ce ff ff ea                                      b #0x5f89c0
005f8a84  78 20 9d e5                                      ldr r2, [sp, #0x78]
005f8a88  09 10 9b e7                                      ldr r1, [fp, sb]
005f8a8c  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
005f8a90  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f8a94  28 20 8d e5                                      str r2, [sp, #0x28]
005f8a98  28 20 a0 e3                                      mov r2, #0x28
005f8a9c  92 1a 22 e0                                      mla r2, r2, sl, r1
005f8aa0  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f8aa4  34 80 9d e5                                      ldr r8, [sp, #0x34]
005f8aa8  28 b0 9d e5                                      ldr fp, [sp, #0x28]
005f8aac  dc c0 9d e5                                      ldr ip, [sp, #0xdc]
005f8ab0  03 30 82 e0                                      add r3, r2, r3
005f8ab4  00 00 56 e3                                      cmp r6, #0
005f8ab8  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f8abc  0b 70 08 e0                                      and r7, r8, fp
005f8ac0  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f8ac4  4c c0 8d e5                                      str ip, [sp, #0x4c]
005f8ac8  05 00 00 0a                                      beq #0x5f8ae4
005f8acc  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f8ad0  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005f8ad4  00 20 6c e2                                      rsb r2, ip, #0
005f8ad8  01 50 40 e2                                      sub r5, r0, #1
005f8adc  9c 15 25 e0                                      mla r5, ip, r5, r1
005f8ae0  4c 20 8d e5                                      str r2, [sp, #0x4c]
005f8ae4  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
005f8ae8  00 00 53 e3                                      cmp r3, #0
005f8aec  2f fa ff 0a                                      beq #0x5f73b0
005f8af0  7d 60 dd e5                                      ldrb r6, [sp, #0x7d]
005f8af4  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f8af8  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f8afc  44 60 8d e5                                      str r6, [sp, #0x44]
005f8b00  40 c0 8d e5                                      str ip, [sp, #0x40]
005f8b04  7e 10 dd e5                                      ldrb r1, [sp, #0x7e]
005f8b08  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f8b0c  74 30 9d e5                                      ldr r3, [sp, #0x74]
005f8b10  7f 60 dd e5                                      ldrb r6, [sp, #0x7f]
005f8b14  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005f8b18  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f8b1c  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f8b20  6c b0 9d e5                                      ldr fp, [sp, #0x6c]
005f8b24  3c 00 8d e5                                      str r0, [sp, #0x3c]
005f8b28  38 10 8d e5                                      str r1, [sp, #0x38]
005f8b2c  34 20 8d e5                                      str r2, [sp, #0x34]
005f8b30  2c 30 8d e5                                      str r3, [sp, #0x2c]
005f8b34  24 60 8d e5                                      str r6, [sp, #0x24]
005f8b38  20 c0 8d e5                                      str ip, [sp, #0x20]
005f8b3c  48 50 8d e5                                      str r5, [sp, #0x48]
005f8b40  e0 c0 9d e5                                      ldr ip, [sp, #0xe0]
005f8b44  00 00 5c e3                                      cmp ip, #0
005f8b48  20 00 00 0a                                      beq #0x5f8bd0
005f8b4c  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f8b50  00 20 a0 e3                                      mov r2, #0
005f8b54  50 70 8d e5                                      str r7, [sp, #0x50]
005f8b58  54 50 8d e5                                      str r5, [sp, #0x54]
005f8b5c  09 30 d4 e6                                      ldrb r3, [r4], sb
005f8b60  44 50 9d e5                                      ldr r5, [sp, #0x44]
005f8b64  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005f8b68  40 70 9d e5                                      ldr r7, [sp, #0x40]
005f8b6c  33 05 a0 e1                                      lsr r0, r3, r5
005f8b70  10 07 06 e0                                      and r0, r6, r0, lsl r7
005f8b74  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f8b78  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f8b7c  33 ca a0 e1                                      lsr ip, r3, sl
005f8b80  33 56 a0 e1                                      lsr r5, r3, r6
005f8b84  1c c8 0b e0                                      and ip, fp, ip, lsl r8
005f8b88  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f8b8c  33 37 a0 e1                                      lsr r3, r3, r7
005f8b90  34 70 9d e5                                      ldr r7, [sp, #0x34]
005f8b94  00 00 8c e1                                      orr r0, ip, r0
005f8b98  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005f8b9c  15 57 06 e0                                      and r5, r6, r5, lsl r7
005f8ba0  28 60 9d e5                                      ldr r6, [sp, #0x28]
005f8ba4  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f8ba8  0c 00 80 e1                                      orr r0, r0, ip
005f8bac  05 50 80 e1                                      orr r5, r0, r5
005f8bb0  13 37 06 e0                                      and r3, r6, r3, lsl r7
005f8bb4  54 00 9d e5                                      ldr r0, [sp, #0x54]
005f8bb8  03 30 85 e1                                      orr r3, r5, r3
005f8bbc  01 10 51 e2                                      subs r1, r1, #1
005f8bc0  02 30 80 e7                                      str r3, [r0, r2]
005f8bc4  04 20 82 e2                                      add r2, r2, #4
005f8bc8  e3 ff ff 1a                                      bne #0x5f8b5c
005f8bcc  50 70 9d e5                                      ldr r7, [sp, #0x50]
005f8bd0  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f8bd4  01 10 51 e2                                      subs r1, r1, #1
005f8bd8  e4 10 8d e5                                      str r1, [sp, #0xe4]
005f8bdc  f3 f9 ff 0a                                      beq #0x5f73b0
005f8be0  30 20 9d e5                                      ldr r2, [sp, #0x30]
005f8be4  48 50 9d e5                                      ldr r5, [sp, #0x48]
005f8be8  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005f8bec  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
005f8bf0  03 40 82 e0                                      add r4, r2, r3
005f8bf4  06 50 85 e0                                      add r5, r5, r6
005f8bf8  48 50 8d e5                                      str r5, [sp, #0x48]
005f8bfc  30 40 8d e5                                      str r4, [sp, #0x30]
005f8c00  ce ff ff ea                                      b #0x5f8b40
005f8c04  78 20 9d e5                                      ldr r2, [sp, #0x78]
005f8c08  09 10 9b e7                                      ldr r1, [fp, sb]
005f8c0c  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
005f8c10  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f8c14  28 20 8d e5                                      str r2, [sp, #0x28]
005f8c18  28 20 a0 e3                                      mov r2, #0x28
005f8c1c  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f8c20  92 1a 22 e0                                      mla r2, r2, sl, r1
005f8c24  34 70 9d e5                                      ldr r7, [sp, #0x34]
005f8c28  28 80 9d e5                                      ldr r8, [sp, #0x28]
005f8c2c  dc b0 9d e5                                      ldr fp, [sp, #0xdc]
005f8c30  00 00 56 e3                                      cmp r6, #0
005f8c34  03 30 82 e0                                      add r3, r2, r3
005f8c38  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f8c3c  08 60 07 e0                                      and r6, r7, r8
005f8c40  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f8c44  4c b0 8d e5                                      str fp, [sp, #0x4c]
005f8c48  05 00 00 0a                                      beq #0x5f8c64
005f8c4c  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f8c50  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
005f8c54  00 10 6b e2                                      rsb r1, fp, #0
005f8c58  01 50 4c e2                                      sub r5, ip, #1
005f8c5c  9b 05 25 e0                                      mla r5, fp, r5, r0
005f8c60  4c 10 8d e5                                      str r1, [sp, #0x4c]
005f8c64  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f8c68  00 00 52 e3                                      cmp r2, #0
005f8c6c  cf f9 ff 0a                                      beq #0x5f73b0
005f8c70  81 30 dd e5                                      ldrb r3, [sp, #0x81]
005f8c74  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005f8c78  7e 00 dd e5                                      ldrb r0, [sp, #0x7e]
005f8c7c  40 30 8d e5                                      str r3, [sp, #0x40]
005f8c80  3c c0 8d e5                                      str ip, [sp, #0x3c]
005f8c84  82 10 dd e5                                      ldrb r1, [sp, #0x82]
005f8c88  74 20 9d e5                                      ldr r2, [sp, #0x74]
005f8c8c  7f 30 dd e5                                      ldrb r3, [sp, #0x7f]
005f8c90  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005f8c94  44 60 8d e5                                      str r6, [sp, #0x44]
005f8c98  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f8c9c  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f8ca0  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
005f8ca4  7d b0 dd e5                                      ldrb fp, [sp, #0x7d]
005f8ca8  e0 60 9d e5                                      ldr r6, [sp, #0xe0]
005f8cac  38 00 8d e5                                      str r0, [sp, #0x38]
005f8cb0  34 10 8d e5                                      str r1, [sp, #0x34]
005f8cb4  2c 20 8d e5                                      str r2, [sp, #0x2c]
005f8cb8  24 30 8d e5                                      str r3, [sp, #0x24]
005f8cbc  20 c0 8d e5                                      str ip, [sp, #0x20]
005f8cc0  48 50 8d e5                                      str r5, [sp, #0x48]
005f8cc4  00 00 56 e3                                      cmp r6, #0
005f8cc8  00 20 a0 13                                      movne r2, #0
005f8ccc  50 50 8d 15                                      strne r5, [sp, #0x50]
005f8cd0  54 60 8d 15                                      strne r6, [sp, #0x54]
005f8cd4  1c 00 00 0a                                      beq #0x5f8d4c
005f8cd8  09 30 94 e6                                      ldr r3, [r4], sb
005f8cdc  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
005f8ce0  40 60 9d e5                                      ldr r6, [sp, #0x40]
005f8ce4  33 1b a0 e1                                      lsr r1, r3, fp
005f8ce8  11 16 05 e0                                      and r1, r5, r1, lsl r6
005f8cec  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f8cf0  24 60 9d e5                                      ldr r6, [sp, #0x24]
005f8cf4  33 0a a0 e1                                      lsr r0, r3, sl
005f8cf8  33 c5 a0 e1                                      lsr ip, r3, r5
005f8cfc  10 08 07 e0                                      and r0, r7, r0, lsl r8
005f8d00  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005f8d04  33 36 a0 e1                                      lsr r3, r3, r6
005f8d08  34 60 9d e5                                      ldr r6, [sp, #0x34]
005f8d0c  01 10 80 e1                                      orr r1, r0, r1
005f8d10  44 00 9d e5                                      ldr r0, [sp, #0x44]
005f8d14  1c c6 05 e0                                      and ip, r5, ip, lsl r6
005f8d18  28 50 9d e5                                      ldr r5, [sp, #0x28]
005f8d1c  20 60 9d e5                                      ldr r6, [sp, #0x20]
005f8d20  00 10 81 e1                                      orr r1, r1, r0
005f8d24  0c c0 81 e1                                      orr ip, r1, ip
005f8d28  13 36 05 e0                                      and r3, r5, r3, lsl r6
005f8d2c  50 10 9d e5                                      ldr r1, [sp, #0x50]
005f8d30  03 30 8c e1                                      orr r3, ip, r3
005f8d34  02 30 c1 e7                                      strb r3, [r1, r2]
005f8d38  54 30 9d e5                                      ldr r3, [sp, #0x54]
005f8d3c  01 20 82 e2                                      add r2, r2, #1
005f8d40  02 00 53 e1                                      cmp r3, r2
005f8d44  e3 ff ff 1a                                      bne #0x5f8cd8
005f8d48  03 60 a0 e1                                      mov r6, r3
005f8d4c  e4 40 9d e5                                      ldr r4, [sp, #0xe4]
005f8d50  01 40 54 e2                                      subs r4, r4, #1
005f8d54  e4 40 8d e5                                      str r4, [sp, #0xe4]
005f8d58  94 f9 ff 0a                                      beq #0x5f73b0
005f8d5c  30 50 9d e5                                      ldr r5, [sp, #0x30]
005f8d60  48 00 9d e5                                      ldr r0, [sp, #0x48]
005f8d64  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005f8d68  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005f8d6c  0c 40 85 e0                                      add r4, r5, ip
005f8d70  01 00 80 e0                                      add r0, r0, r1
005f8d74  48 00 8d e5                                      str r0, [sp, #0x48]
005f8d78  00 50 a0 e1                                      mov r5, r0
005f8d7c  30 40 8d e5                                      str r4, [sp, #0x30]
005f8d80  cf ff ff ea                                      b #0x5f8cc4
005f8d84  09 10 9b e7                                      ldr r1, [fp, sb]
005f8d88  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
005f8d8c  28 20 a0 e3                                      mov r2, #0x28
005f8d90  78 00 9d e5                                      ldr r0, [sp, #0x78]
005f8d94  92 1a 22 e0                                      mla r2, r2, sl, r1
005f8d98  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005f8d9c  03 30 82 e0                                      add r3, r2, r3
005f8da0  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f8da4  38 20 9d e5                                      ldr r2, [sp, #0x38]
005f8da8  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
005f8dac  00 00 51 e3                                      cmp r1, #0
005f8db0  34 40 9d e5                                      ldr r4, [sp, #0x34]
005f8db4  00 70 02 e0                                      and r7, r2, r0
005f8db8  34 00 8d e5                                      str r0, [sp, #0x34]
005f8dbc  48 30 8d e5                                      str r3, [sp, #0x48]
005f8dc0  05 00 00 0a                                      beq #0x5f8ddc
005f8dc4  e4 50 9d e5                                      ldr r5, [sp, #0xe4]
005f8dc8  d8 60 9d e5                                      ldr r6, [sp, #0xd8]
005f8dcc  00 80 63 e2                                      rsb r8, r3, #0
005f8dd0  01 40 45 e2                                      sub r4, r5, #1
005f8dd4  93 64 24 e0                                      mla r4, r3, r4, r6
005f8dd8  48 80 8d e5                                      str r8, [sp, #0x48]
005f8ddc  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
005f8de0  00 00 5b e3                                      cmp fp, #0
005f8de4  71 f9 ff 0a                                      beq #0x5f73b0
005f8de8  7d c0 dd e5                                      ldrb ip, [sp, #0x7d]
005f8dec  81 10 dd e5                                      ldrb r1, [sp, #0x81]
005f8df0  70 20 9d e5                                      ldr r2, [sp, #0x70]
005f8df4  44 c0 8d e5                                      str ip, [sp, #0x44]
005f8df8  40 10 8d e5                                      str r1, [sp, #0x40]
005f8dfc  7e 30 dd e5                                      ldrb r3, [sp, #0x7e]
005f8e00  82 50 dd e5                                      ldrb r5, [sp, #0x82]
005f8e04  74 60 9d e5                                      ldr r6, [sp, #0x74]
005f8e08  7f c0 dd e5                                      ldrb ip, [sp, #0x7f]
005f8e0c  83 10 dd e5                                      ldrb r1, [sp, #0x83]
005f8e10  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f8e14  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f8e18  6c b0 9d e5                                      ldr fp, [sp, #0x6c]
005f8e1c  30 00 9d e5                                      ldr r0, [sp, #0x30]
005f8e20  3c 20 8d e5                                      str r2, [sp, #0x3c]
005f8e24  38 30 8d e5                                      str r3, [sp, #0x38]
005f8e28  2c 50 8d e5                                      str r5, [sp, #0x2c]
005f8e2c  24 60 8d e5                                      str r6, [sp, #0x24]
005f8e30  20 c0 8d e5                                      str ip, [sp, #0x20]
005f8e34  30 10 8d e5                                      str r1, [sp, #0x30]
005f8e38  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
005f8e3c  00 00 52 e3                                      cmp r2, #0
005f8e40  21 00 00 0a                                      beq #0x5f8ecc
005f8e44  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f8e48  00 20 a0 e3                                      mov r2, #0
005f8e4c  4c 70 8d e5                                      str r7, [sp, #0x4c]
005f8e50  50 40 8d e5                                      str r4, [sp, #0x50]
005f8e54  b9 30 90 e0                                      ldrh r3, [r0], sb
005f8e58  44 40 9d e5                                      ldr r4, [sp, #0x44]
005f8e5c  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005f8e60  40 70 9d e5                                      ldr r7, [sp, #0x40]
005f8e64  33 c4 a0 e1                                      lsr ip, r3, r4
005f8e68  38 40 9d e5                                      ldr r4, [sp, #0x38]
005f8e6c  1c c7 06 e0                                      and ip, r6, ip, lsl r7
005f8e70  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f8e74  33 64 a0 e1                                      lsr r6, r3, r4
005f8e78  33 5a a0 e1                                      lsr r5, r3, sl
005f8e7c  24 40 9d e5                                      ldr r4, [sp, #0x24]
005f8e80  33 37 a0 e1                                      lsr r3, r3, r7
005f8e84  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005f8e88  15 58 0b e0                                      and r5, fp, r5, lsl r8
005f8e8c  16 67 04 e0                                      and r6, r4, r6, lsl r7
005f8e90  34 40 9d e5                                      ldr r4, [sp, #0x34]
005f8e94  30 70 9d e5                                      ldr r7, [sp, #0x30]
005f8e98  0c c0 85 e1                                      orr ip, r5, ip
005f8e9c  50 50 9d e5                                      ldr r5, [sp, #0x50]
005f8ea0  13 37 04 e0                                      and r3, r4, r3, lsl r7
005f8ea4  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
005f8ea8  01 10 51 e2                                      subs r1, r1, #1
005f8eac  04 c0 8c e1                                      orr ip, ip, r4
005f8eb0  06 60 8c e1                                      orr r6, ip, r6
005f8eb4  03 30 86 e1                                      orr r3, r6, r3
005f8eb8  02 30 85 e7                                      str r3, [r5, r2]
005f8ebc  04 20 82 e2                                      add r2, r2, #4
005f8ec0  e3 ff ff 1a                                      bne #0x5f8e54
005f8ec4  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
005f8ec8  50 40 9d e5                                      ldr r4, [sp, #0x50]
005f8ecc  e4 60 9d e5                                      ldr r6, [sp, #0xe4]
005f8ed0  01 60 56 e2                                      subs r6, r6, #1
005f8ed4  e4 60 8d e5                                      str r6, [sp, #0xe4]
005f8ed8  34 f9 ff 0a                                      beq #0x5f73b0
005f8edc  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005f8ee0  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f8ee4  48 10 9d e5                                      ldr r1, [sp, #0x48]
005f8ee8  00 c0 8c e0                                      add ip, ip, r0
005f8eec  28 c0 8d e5                                      str ip, [sp, #0x28]
005f8ef0  01 40 84 e0                                      add r4, r4, r1
005f8ef4  0c 00 a0 e1                                      mov r0, ip
005f8ef8  ce ff ff ea                                      b #0x5f8e38
005f8efc  78 20 9d e5                                      ldr r2, [sp, #0x78]
005f8f00  09 10 9b e7                                      ldr r1, [fp, sb]
005f8f04  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
005f8f08  28 40 9d e5                                      ldr r4, [sp, #0x28]
005f8f0c  28 20 8d e5                                      str r2, [sp, #0x28]
005f8f10  28 20 a0 e3                                      mov r2, #0x28
005f8f14  92 1a 22 e0                                      mla r2, r2, sl, r1
005f8f18  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f8f1c  34 80 9d e5                                      ldr r8, [sp, #0x34]
005f8f20  28 b0 9d e5                                      ldr fp, [sp, #0x28]
005f8f24  dc c0 9d e5                                      ldr ip, [sp, #0xdc]
005f8f28  03 30 82 e0                                      add r3, r2, r3
005f8f2c  00 00 56 e3                                      cmp r6, #0
005f8f30  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f8f34  0b 70 08 e0                                      and r7, r8, fp
005f8f38  05 90 d3 e5                                      ldrb sb, [r3, #5]
005f8f3c  4c c0 8d e5                                      str ip, [sp, #0x4c]
005f8f40  05 00 00 0a                                      beq #0x5f8f5c
005f8f44  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
005f8f48  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005f8f4c  00 20 6c e2                                      rsb r2, ip, #0
005f8f50  01 50 40 e2                                      sub r5, r0, #1
005f8f54  9c 15 25 e0                                      mla r5, ip, r5, r1
005f8f58  4c 20 8d e5                                      str r2, [sp, #0x4c]
005f8f5c  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
005f8f60  00 00 53 e3                                      cmp r3, #0
005f8f64  11 f9 ff 0a                                      beq #0x5f73b0
005f8f68  7d 60 dd e5                                      ldrb r6, [sp, #0x7d]
005f8f6c  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
005f8f70  70 00 9d e5                                      ldr r0, [sp, #0x70]
005f8f74  44 60 8d e5                                      str r6, [sp, #0x44]
005f8f78  40 c0 8d e5                                      str ip, [sp, #0x40]
005f8f7c  7e 10 dd e5                                      ldrb r1, [sp, #0x7e]
005f8f80  82 20 dd e5                                      ldrb r2, [sp, #0x82]
005f8f84  74 30 9d e5                                      ldr r3, [sp, #0x74]
005f8f88  7f 60 dd e5                                      ldrb r6, [sp, #0x7f]
005f8f8c  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
005f8f90  7c a0 dd e5                                      ldrb sl, [sp, #0x7c]
005f8f94  80 80 dd e5                                      ldrb r8, [sp, #0x80]
005f8f98  6c b0 9d e5                                      ldr fp, [sp, #0x6c]
005f8f9c  3c 00 8d e5                                      str r0, [sp, #0x3c]
005f8fa0  38 10 8d e5                                      str r1, [sp, #0x38]
005f8fa4  34 20 8d e5                                      str r2, [sp, #0x34]
005f8fa8  2c 30 8d e5                                      str r3, [sp, #0x2c]
005f8fac  24 60 8d e5                                      str r6, [sp, #0x24]
005f8fb0  20 c0 8d e5                                      str ip, [sp, #0x20]
005f8fb4  48 50 8d e5                                      str r5, [sp, #0x48]
005f8fb8  e0 c0 9d e5                                      ldr ip, [sp, #0xe0]
005f8fbc  00 00 5c e3                                      cmp ip, #0
005f8fc0  20 00 00 0a                                      beq #0x5f9048
005f8fc4  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005f8fc8  00 20 a0 e3                                      mov r2, #0
005f8fcc  50 70 8d e5                                      str r7, [sp, #0x50]
005f8fd0  54 50 8d e5                                      str r5, [sp, #0x54]
005f8fd4  09 30 94 e6                                      ldr r3, [r4], sb
005f8fd8  44 50 9d e5                                      ldr r5, [sp, #0x44]
005f8fdc  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005f8fe0  40 70 9d e5                                      ldr r7, [sp, #0x40]
005f8fe4  33 05 a0 e1                                      lsr r0, r3, r5
005f8fe8  10 07 06 e0                                      and r0, r6, r0, lsl r7
005f8fec  38 60 9d e5                                      ldr r6, [sp, #0x38]
005f8ff0  24 70 9d e5                                      ldr r7, [sp, #0x24]
005f8ff4  33 ca a0 e1                                      lsr ip, r3, sl
005f8ff8  33 56 a0 e1                                      lsr r5, r3, r6
005f8ffc  1c c8 0b e0                                      and ip, fp, ip, lsl r8
005f9000  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
005f9004  33 37 a0 e1                                      lsr r3, r3, r7
005f9008  34 70 9d e5                                      ldr r7, [sp, #0x34]
005f900c  00 00 8c e1                                      orr r0, ip, r0
005f9010  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005f9014  15 57 06 e0                                      and r5, r6, r5, lsl r7
005f9018  28 60 9d e5                                      ldr r6, [sp, #0x28]
005f901c  20 70 9d e5                                      ldr r7, [sp, #0x20]
005f9020  0c 00 80 e1                                      orr r0, r0, ip
005f9024  05 50 80 e1                                      orr r5, r0, r5
005f9028  13 37 06 e0                                      and r3, r6, r3, lsl r7
005f902c  54 00 9d e5                                      ldr r0, [sp, #0x54]
005f9030  03 30 85 e1                                      orr r3, r5, r3
005f9034  01 10 51 e2                                      subs r1, r1, #1
005f9038  b2 30 80 e1                                      strh r3, [r0, r2]
005f903c  02 20 82 e2                                      add r2, r2, #2
005f9040  e3 ff ff 1a                                      bne #0x5f8fd4
005f9044  50 70 9d e5                                      ldr r7, [sp, #0x50]
005f9048  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f904c  01 10 51 e2                                      subs r1, r1, #1
005f9050  e4 10 8d e5                                      str r1, [sp, #0xe4]
005f9054  d5 f8 ff 0a                                      beq #0x5f73b0
005f9058  30 20 9d e5                                      ldr r2, [sp, #0x30]
005f905c  48 50 9d e5                                      ldr r5, [sp, #0x48]
005f9060  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005f9064  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
005f9068  03 40 82 e0                                      add r4, r2, r3
005f906c  06 50 85 e0                                      add r5, r5, r6
005f9070  48 50 8d e5                                      str r5, [sp, #0x48]
005f9074  30 40 8d e5                                      str r4, [sp, #0x30]
005f9078  ce ff ff ea                                      b #0x5f8fb8
005f907c  6c 60 8d e2                                      add r6, sp, #0x6c
005f9080  0a 10 a0 e1                                      mov r1, sl
005f9084  08 20 a0 e1                                      mov r2, r8
005f9088  06 00 a0 e1                                      mov r0, r6
005f908c  22 d7 ff eb                                      bl #0x5eed1c
005f9090  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005f9094  15 a0 d5 e5                                      ldrb sl, [r5, #0x15]
005f9098  dc 90 9d e5                                      ldr sb, [sp, #0xdc]
005f909c  00 00 53 e3                                      cmp r3, #0
005f90a0  e4 50 9d 15                                      ldrne r5, [sp, #0xe4]
005f90a4  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
005f90a8  01 30 45 12                                      subne r3, r5, #1
005f90ac  99 43 24 10                                      mlane r4, sb, r3, r4
005f90b0  00 90 69 12                                      rsbne sb, sb, #0
005f90b4  00 00 57 e3                                      cmp r7, #0
005f90b8  bc f8 ff 0a                                      beq #0x5f73b0
005f90bc  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f90c0  30 90 8d e5                                      str sb, [sp, #0x30]
005f90c4  28 90 9d e5                                      ldr sb, [sp, #0x28]
005f90c8  04 80 a0 e1                                      mov r8, r4
005f90cc  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
005f90d0  00 00 52 e3                                      cmp r2, #0
005f90d4  08 00 00 0a                                      beq #0x5f90fc
005f90d8  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f90dc  00 50 a0 e3                                      mov r5, #0
005f90e0  ba 10 99 e0                                      ldrh r1, [sb], sl
005f90e4  06 00 a0 e1                                      mov r0, r6
005f90e8  b9 d3 ff eb                                      bl #0x5edfd4
005f90ec  01 70 57 e2                                      subs r7, r7, #1
005f90f0  05 00 84 e7                                      str r0, [r4, r5]
005f90f4  04 50 85 e2                                      add r5, r5, #4
005f90f8  f8 ff ff 1a                                      bne #0x5f90e0
005f90fc  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f9100  01 c0 5c e2                                      subs ip, ip, #1
005f9104  e4 c0 8d e5                                      str ip, [sp, #0xe4]
005f9108  a8 f8 ff 0a                                      beq #0x5f73b0
005f910c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f9110  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f9114  00 90 8b e0                                      add sb, fp, r0
005f9118  01 80 88 e0                                      add r8, r8, r1
005f911c  08 40 a0 e1                                      mov r4, r8
005f9120  09 b0 a0 e1                                      mov fp, sb
005f9124  e8 ff ff ea                                      b #0x5f90cc
005f9128  6c 60 8d e2                                      add r6, sp, #0x6c
005f912c  08 20 a0 e1                                      mov r2, r8
005f9130  0a 10 a0 e1                                      mov r1, sl
005f9134  06 00 a0 e1                                      mov r0, r6
005f9138  f7 d6 ff eb                                      bl #0x5eed1c
005f913c  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
005f9140  15 90 db e5                                      ldrb sb, [fp, #0x15]
005f9144  dc b0 9d e5                                      ldr fp, [sp, #0xdc]
005f9148  00 00 58 e3                                      cmp r8, #0
005f914c  24 b0 8d e5                                      str fp, [sp, #0x24]
005f9150  04 00 00 0a                                      beq #0x5f9168
005f9154  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f9158  00 00 6b e2                                      rsb r0, fp, #0
005f915c  24 00 8d e5                                      str r0, [sp, #0x24]
005f9160  01 30 4c e2                                      sub r3, ip, #1
005f9164  9b 53 25 e0                                      mla r5, fp, r3, r5
005f9168  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f916c  00 00 51 e3                                      cmp r1, #0
005f9170  8e f8 ff 0a                                      beq #0x5f73b0
005f9174  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f9178  05 a0 a0 e1                                      mov sl, r5
005f917c  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f9180  00 00 57 e3                                      cmp r7, #0
005f9184  08 00 00 0a                                      beq #0x5f91ac
005f9188  e0 80 9d e5                                      ldr r8, [sp, #0xe0]
005f918c  00 70 a0 e3                                      mov r7, #0
005f9190  09 10 d4 e6                                      ldrb r1, [r4], sb
005f9194  06 00 a0 e1                                      mov r0, r6
005f9198  8d d3 ff eb                                      bl #0x5edfd4
005f919c  01 80 58 e2                                      subs r8, r8, #1
005f91a0  b7 00 85 e1                                      strh r0, [r5, r7]
005f91a4  02 70 87 e2                                      add r7, r7, #2
005f91a8  f8 ff ff 1a                                      bne #0x5f9190
005f91ac  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f91b0  01 20 52 e2                                      subs r2, r2, #1
005f91b4  e4 20 8d e5                                      str r2, [sp, #0xe4]
005f91b8  7c f8 ff 0a                                      beq #0x5f73b0
005f91bc  24 50 9d e5                                      ldr r5, [sp, #0x24]
005f91c0  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005f91c4  05 a0 8a e0                                      add sl, sl, r5
005f91c8  03 40 8b e0                                      add r4, fp, r3
005f91cc  0a 50 a0 e1                                      mov r5, sl
005f91d0  04 b0 a0 e1                                      mov fp, r4
005f91d4  e8 ff ff ea                                      b #0x5f917c
005f91d8  6c 60 8d e2                                      add r6, sp, #0x6c
005f91dc  08 20 a0 e1                                      mov r2, r8
005f91e0  0a 10 a0 e1                                      mov r1, sl
005f91e4  06 00 a0 e1                                      mov r0, r6
005f91e8  cb d6 ff eb                                      bl #0x5eed1c
005f91ec  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
005f91f0  15 90 db e5                                      ldrb sb, [fp, #0x15]
005f91f4  dc b0 9d e5                                      ldr fp, [sp, #0xdc]
005f91f8  00 00 58 e3                                      cmp r8, #0
005f91fc  24 b0 8d e5                                      str fp, [sp, #0x24]
005f9200  04 00 00 0a                                      beq #0x5f9218
005f9204  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f9208  00 00 6b e2                                      rsb r0, fp, #0
005f920c  24 00 8d e5                                      str r0, [sp, #0x24]
005f9210  01 30 4c e2                                      sub r3, ip, #1
005f9214  9b 53 25 e0                                      mla r5, fp, r3, r5
005f9218  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f921c  00 00 51 e3                                      cmp r1, #0
005f9220  62 f8 ff 0a                                      beq #0x5f73b0
005f9224  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f9228  05 a0 a0 e1                                      mov sl, r5
005f922c  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f9230  00 00 57 e3                                      cmp r7, #0
005f9234  08 00 00 0a                                      beq #0x5f925c
005f9238  e0 80 9d e5                                      ldr r8, [sp, #0xe0]
005f923c  00 70 a0 e3                                      mov r7, #0
005f9240  09 10 d4 e6                                      ldrb r1, [r4], sb
005f9244  06 00 a0 e1                                      mov r0, r6
005f9248  61 d3 ff eb                                      bl #0x5edfd4
005f924c  01 80 58 e2                                      subs r8, r8, #1
005f9250  07 00 85 e7                                      str r0, [r5, r7]
005f9254  04 70 87 e2                                      add r7, r7, #4
005f9258  f8 ff ff 1a                                      bne #0x5f9240
005f925c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f9260  01 20 52 e2                                      subs r2, r2, #1
005f9264  e4 20 8d e5                                      str r2, [sp, #0xe4]
005f9268  50 f8 ff 0a                                      beq #0x5f73b0
005f926c  24 50 9d e5                                      ldr r5, [sp, #0x24]
005f9270  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005f9274  05 a0 8a e0                                      add sl, sl, r5
005f9278  03 40 8b e0                                      add r4, fp, r3
005f927c  0a 50 a0 e1                                      mov r5, sl
005f9280  04 b0 a0 e1                                      mov fp, r4
005f9284  e8 ff ff ea                                      b #0x5f922c
005f9288  6c 60 8d e2                                      add r6, sp, #0x6c
005f928c  08 20 a0 e1                                      mov r2, r8
005f9290  0a 10 a0 e1                                      mov r1, sl
005f9294  06 00 a0 e1                                      mov r0, r6
005f9298  9f d6 ff eb                                      bl #0x5eed1c
005f929c  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
005f92a0  15 90 db e5                                      ldrb sb, [fp, #0x15]
005f92a4  dc b0 9d e5                                      ldr fp, [sp, #0xdc]
005f92a8  00 00 58 e3                                      cmp r8, #0
005f92ac  24 b0 8d e5                                      str fp, [sp, #0x24]
005f92b0  04 00 00 0a                                      beq #0x5f92c8
005f92b4  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f92b8  00 00 6b e2                                      rsb r0, fp, #0
005f92bc  24 00 8d e5                                      str r0, [sp, #0x24]
005f92c0  01 30 4c e2                                      sub r3, ip, #1
005f92c4  9b 53 25 e0                                      mla r5, fp, r3, r5
005f92c8  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005f92cc  00 00 51 e3                                      cmp r1, #0
005f92d0  36 f8 ff 0a                                      beq #0x5f73b0
005f92d4  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f92d8  05 a0 a0 e1                                      mov sl, r5
005f92dc  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
005f92e0  00 00 57 e3                                      cmp r7, #0
005f92e4  08 00 00 0a                                      beq #0x5f930c
005f92e8  e0 80 9d e5                                      ldr r8, [sp, #0xe0]
005f92ec  00 70 a0 e3                                      mov r7, #0
005f92f0  09 10 94 e6                                      ldr r1, [r4], sb
005f92f4  06 00 a0 e1                                      mov r0, r6
005f92f8  35 d3 ff eb                                      bl #0x5edfd4
005f92fc  01 80 58 e2                                      subs r8, r8, #1
005f9300  b7 00 85 e1                                      strh r0, [r5, r7]
005f9304  02 70 87 e2                                      add r7, r7, #2
005f9308  f8 ff ff 1a                                      bne #0x5f92f0
005f930c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005f9310  01 20 52 e2                                      subs r2, r2, #1
005f9314  e4 20 8d e5                                      str r2, [sp, #0xe4]
005f9318  24 f8 ff 0a                                      beq #0x5f73b0
005f931c  24 50 9d e5                                      ldr r5, [sp, #0x24]
005f9320  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005f9324  05 a0 8a e0                                      add sl, sl, r5
005f9328  03 40 8b e0                                      add r4, fp, r3
005f932c  0a 50 a0 e1                                      mov r5, sl
005f9330  04 b0 a0 e1                                      mov fp, r4
005f9334  e8 ff ff ea                                      b #0x5f92dc
005f9338  6c 60 8d e2                                      add r6, sp, #0x6c
005f933c  08 20 a0 e1                                      mov r2, r8
005f9340  0a 10 a0 e1                                      mov r1, sl
005f9344  06 00 a0 e1                                      mov r0, r6
005f9348  73 d6 ff eb                                      bl #0x5eed1c
005f934c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005f9350  dc 90 9d e5                                      ldr sb, [sp, #0xdc]
005f9354  e4 80 9d e5                                      ldr r8, [sp, #0xe4]
005f9358  00 00 52 e3                                      cmp r2, #0
005f935c  e4 70 9d 15                                      ldrne r7, [sp, #0xe4]
005f9360  15 a0 db e5                                      ldrb sl, [fp, #0x15]
005f9364  01 30 47 12                                      subne r3, r7, #1
005f9368  99 53 25 10                                      mlane r5, sb, r3, r5
005f936c  00 90 69 12                                      rsbne sb, sb, #0
005f9370  00 00 58 e3                                      cmp r8, #0
005f9374  0d f8 ff 0a                                      beq #0x5f73b0
005f9378  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f937c  30 90 8d e5                                      str sb, [sp, #0x30]
005f9380  e0 90 9d e5                                      ldr sb, [sp, #0xe0]
005f9384  05 80 a0 e1                                      mov r8, r5
005f9388  00 00 59 e3                                      cmp sb, #0
005f938c  00 70 a0 13                                      movne r7, #0
005f9390  06 00 00 0a                                      beq #0x5f93b0
005f9394  0a 10 94 e6                                      ldr r1, [r4], sl
005f9398  06 00 a0 e1                                      mov r0, r6
005f939c  0c d3 ff eb                                      bl #0x5edfd4
005f93a0  07 00 c5 e7                                      strb r0, [r5, r7]
005f93a4  01 70 87 e2                                      add r7, r7, #1
005f93a8  07 00 59 e1                                      cmp sb, r7
005f93ac  f8 ff ff 1a                                      bne #0x5f9394
005f93b0  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
005f93b4  01 c0 5c e2                                      subs ip, ip, #1
005f93b8  e4 c0 8d e5                                      str ip, [sp, #0xe4]
005f93bc  fb f7 ff 0a                                      beq #0x5f73b0
005f93c0  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005f93c4  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f93c8  00 40 8b e0                                      add r4, fp, r0
005f93cc  01 80 88 e0                                      add r8, r8, r1
005f93d0  08 50 a0 e1                                      mov r5, r8
005f93d4  04 b0 a0 e1                                      mov fp, r4
005f93d8  ea ff ff ea                                      b #0x5f9388
005f93dc  6c 60 8d e2                                      add r6, sp, #0x6c
005f93e0  08 20 a0 e1                                      mov r2, r8
005f93e4  0a 10 a0 e1                                      mov r1, sl
005f93e8  06 00 a0 e1                                      mov r0, r6
005f93ec  4a d6 ff eb                                      bl #0x5eed1c
005f93f0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005f93f4  dc 80 9d e5                                      ldr r8, [sp, #0xdc]
005f93f8  15 a0 db e5                                      ldrb sl, [fp, #0x15]
005f93fc  00 00 51 e3                                      cmp r1, #0
005f9400  e4 20 9d 15                                      ldrne r2, [sp, #0xe4]
005f9404  01 30 42 12                                      subne r3, r2, #1
005f9408  98 43 24 10                                      mlane r4, r8, r3, r4
005f940c  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
005f9410  00 80 68 12                                      rsbne r8, r8, #0
005f9414  00 00 53 e3                                      cmp r3, #0
005f9418  e4 f7 ff 0a                                      beq #0x5f73b0
005f941c  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f9420  30 80 8d e5                                      str r8, [sp, #0x30]
005f9424  e0 80 9d e5                                      ldr r8, [sp, #0xe0]
005f9428  03 90 a0 e1                                      mov sb, r3
005f942c  00 00 58 e3                                      cmp r8, #0
005f9430  00 70 a0 13                                      movne r7, #0
005f9434  06 00 00 0a                                      beq #0x5f9454
005f9438  ba 10 9b e0                                      ldrh r1, [fp], sl
005f943c  06 00 a0 e1                                      mov r0, r6
005f9440  e3 d2 ff eb                                      bl #0x5edfd4
005f9444  07 00 c4 e7                                      strb r0, [r4, r7]
005f9448  01 70 87 e2                                      add r7, r7, #1
005f944c  07 00 58 e1                                      cmp r8, r7
005f9450  f8 ff ff 1a                                      bne #0x5f9438
005f9454  01 90 59 e2                                      subs sb, sb, #1
005f9458  d4 f7 ff 0a                                      beq #0x5f73b0
005f945c  5c 70 9d e5                                      ldr r7, [sp, #0x5c]
005f9460  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005f9464  07 50 85 e0                                      add r5, r5, r7
005f9468  0b 40 84 e0                                      add r4, r4, fp
005f946c  05 b0 a0 e1                                      mov fp, r5
005f9470  ed ff ff ea                                      b #0x5f942c
005f9474  00 30 93 e7                                      ldr r3, [r3, r0]
005f9478  01 00 13 e3                                      tst r3, #1
005f947c  00 b0 e0 03                                      mvneq fp, #0
005f9480  3c b0 8d 05                                      streq fp, [sp, #0x3c]
005f9484  2c fa ff 0a                                      beq #0x5f7d3c
005f9488  29 fa ff ea                                      b #0x5f7d34
005f948c  00 30 93 e7                                      ldr r3, [r3, r0]
005f9490  01 00 13 e3                                      tst r3, #1
005f9494  00 c0 e0 03                                      mvneq ip, #0
005f9498  40 c0 8d 05                                      streq ip, [sp, #0x40]
005f949c  ca f7 ff 0a                                      beq #0x5f73cc
005f94a0  c7 f7 ff ea                                      b #0x5f73c4
005f94a4  00 30 93 e7                                      ldr r3, [r3, r0]
005f94a8  01 00 13 e3                                      tst r3, #1
005f94ac  00 60 e0 03                                      mvneq r6, #0
005f94b0  3c 60 8d 05                                      streq r6, [sp, #0x3c]
005f94b4  4e f8 ff 0a                                      beq #0x5f75f4
005f94b8  4b f8 ff ea                                      b #0x5f75ec
005f94bc  00 30 93 e7                                      ldr r3, [r3, r0]
005f94c0  01 00 13 e3                                      tst r3, #1
005f94c4  00 60 e0 03                                      mvneq r6, #0
005f94c8  3c 60 8d 05                                      streq r6, [sp, #0x3c]
005f94cc  92 fb ff 0a                                      beq #0x5f831c
005f94d0  8f fb ff ea                                      b #0x5f8314
005f94d4  00 30 93 e7                                      ldr r3, [r3, r0]
005f94d8  01 00 13 e3                                      tst r3, #1
005f94dc  00 b0 e0 03                                      mvneq fp, #0
005f94e0  3c b0 8d 05                                      streq fp, [sp, #0x3c]
005f94e4  e6 fa ff 0a                                      beq #0x5f8084
005f94e8  e3 fa ff ea                                      b #0x5f807c
005f94ec  00 30 93 e7                                      ldr r3, [r3, r0]
005f94f0  01 00 13 e3                                      tst r3, #1
005f94f4  00 b0 e0 03                                      mvneq fp, #0
005f94f8  3c b0 8d 05                                      streq fp, [sp, #0x3c]
005f94fc  b4 fa ff 0a                                      beq #0x5f7fd4
005f9500  b1 fa ff ea                                      b #0x5f7fcc
005f9504  92 0a 03 e0                                      mul r3, r2, sl
005f9508  03 30 91 e7                                      ldr r3, [r1, r3]
005f950c  01 00 13 e3                                      tst r3, #1
005f9510  00 00 e0 03                                      mvneq r0, #0
005f9514  34 00 8d 05                                      streq r0, [sp, #0x34]
005f9518  9a f4 ff 0a                                      beq #0x5f6788
005f951c  97 f4 ff ea                                      b #0x5f6780
005f9520  92 0a 03 e0                                      mul r3, r2, sl
005f9524  03 30 91 e7                                      ldr r3, [r1, r3]
005f9528  01 00 13 e3                                      tst r3, #1
005f952c  00 00 e0 03                                      mvneq r0, #0
005f9530  34 00 8d 05                                      streq r0, [sp, #0x34]
005f9534  c1 f4 ff 0a                                      beq #0x5f6840
005f9538  be f4 ff ea                                      b #0x5f6838
005f953c  92 0a 03 e0                                      mul r3, r2, sl
005f9540  03 30 91 e7                                      ldr r3, [r1, r3]
005f9544  01 00 13 e3                                      tst r3, #1
005f9548  00 00 e0 03                                      mvneq r0, #0
005f954c  34 00 8d 05                                      streq r0, [sp, #0x34]
005f9550  5e f4 ff 0a                                      beq #0x5f66d0
005f9554  5b f4 ff ea                                      b #0x5f66c8
005f9558  92 0a 03 e0                                      mul r3, r2, sl
005f955c  03 30 91 e7                                      ldr r3, [r1, r3]
005f9560  01 00 13 e3                                      tst r3, #1
005f9564  00 00 e0 03                                      mvneq r0, #0
005f9568  34 00 8d 05                                      streq r0, [sp, #0x34]
005f956c  0e f5 ff 0a                                      beq #0x5f69ac
005f9570  0b f5 ff ea                                      b #0x5f69a4
005f9574  92 0a 03 e0                                      mul r3, r2, sl
005f9578  03 30 91 e7                                      ldr r3, [r1, r3]
005f957c  01 00 13 e3                                      tst r3, #1
005f9580  00 b0 e0 03                                      mvneq fp, #0
005f9584  38 b0 8d 05                                      streq fp, [sp, #0x38]
005f9588  da f4 ff 0a                                      beq #0x5f68f8
005f958c  d7 f4 ff ea                                      b #0x5f68f0
005f9590  92 0a 03 e0                                      mul r3, r2, sl
005f9594  03 30 91 e7                                      ldr r3, [r1, r3]
005f9598  01 00 13 e3                                      tst r3, #1
005f959c  00 00 e0 03                                      mvneq r0, #0
005f95a0  34 00 8d 05                                      streq r0, [sp, #0x34]
005f95a4  2e f5 ff 0a                                      beq #0x5f6a64
005f95a8  2b f5 ff ea                                      b #0x5f6a5c

; FUNCTION 0x005f95ac, declared_size=17128, range_size=17128, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb
; demangled: glitch::video::pixel_format::convert(glitch::video::E_PIXEL_FORMAT, void const*, unsigned int, glitch::video::E_PIXEL_FORMAT, void*, unsigned int, unsigned int, unsigned int, bool)
; decoder-mode: arm
005f95ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005f95b0  4d df 4d e2                                      sub sp, sp, #0x134
005f95b4  a0 5e 9f e5                                      ldr r5, [pc, #0xea0]
005f95b8  01 80 a0 e1                                      mov r8, r1
005f95bc  68 11 dd e5                                      ldrb r1, [sp, #0x168]
005f95c0  00 00 52 e3                                      cmp r2, #0
005f95c4  05 50 8f e0                                      add r5, pc, r5
005f95c8  5c 20 8d e5                                      str r2, [sp, #0x5c]
005f95cc  03 70 a0 e1                                      mov r7, r3
005f95d0  00 a0 a0 e1                                      mov sl, r0
005f95d4  5c 91 9d e5                                      ldr sb, [sp, #0x15c]
005f95d8  60 41 9d e5                                      ldr r4, [sp, #0x160]
005f95dc  38 10 8d e5                                      str r1, [sp, #0x38]
005f95e0  54 00 00 0a                                      beq #0x5f9738
005f95e4  00 00 59 e3                                      cmp sb, #0
005f95e8  4d 00 00 0a                                      beq #0x5f9724
005f95ec  07 00 5a e1                                      cmp sl, r7
005f95f0  6a 00 00 0a                                      beq #0x5f97a0
005f95f4  58 61 9d e5                                      ldr r6, [sp, #0x158]
005f95f8  06 00 58 e1                                      cmp r8, r6
005f95fc  81 00 00 0a                                      beq #0x5f9808
005f9600  58 be 9f e5                                      ldr fp, [pc, #0xe58]
005f9604  28 10 a0 e3                                      mov r1, #0x28
005f9608  91 07 06 e0                                      mul r6, r1, r7
005f960c  0b 20 95 e7                                      ldr r2, [r5, fp]
005f9610  06 30 92 e7                                      ldr r3, [r2, r6]
005f9614  06 60 82 e0                                      add r6, r2, r6
005f9618  08 00 13 e3                                      tst r3, #8
005f961c  0c 00 00 0a                                      beq #0x5f9654
005f9620  77 30 ff e6                                      uxth r3, r7
005f9624  27 00 53 e3                                      cmp r3, #0x27
005f9628  59 00 00 0a                                      beq #0x5f9794
005f962c  00 00 a0 e3                                      mov r0, #0
005f9630  c3 d0 ff eb                                      bl #0x5ed944
005f9634  07 11 90 e7                                      ldr r1, [r0, r7, lsl #2]
005f9638  24 0e 9f e5                                      ldr r0, [pc, #0xe24]
005f963c  03 20 a0 e3                                      mov r2, #3
005f9640  00 00 8f e0                                      add r0, pc, r0
005f9644  a7 45 00 eb                                      bl #0x60ace8
005f9648  00 00 a0 e3                                      mov r0, #0
005f964c  4d df 8d e2                                      add sp, sp, #0x134
005f9650  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005f9654  91 0a 01 e0                                      mul r1, r1, sl
005f9658  01 20 92 e7                                      ldr r2, [r2, r1]
005f965c  08 00 12 e3                                      tst r2, #8
005f9660  5a 00 00 1a                                      bne #0x5f97d0
005f9664  04 00 13 e3                                      tst r3, #4
005f9668  11 00 00 0a                                      beq #0x5f96b4
005f966c  04 00 12 e3                                      tst r2, #4
005f9670  0f 00 00 1a                                      bne #0x5f96b4
005f9674  0a 00 a0 e1                                      mov r0, sl
005f9678  28 30 8d e5                                      str r3, [sp, #0x28]
005f967c  b4 d0 ff eb                                      bl #0x5ed954
005f9680  14 20 d6 e5                                      ldrb r2, [r6, #0x14]
005f9684  28 30 9d e5                                      ldr r3, [sp, #0x28]
005f9688  00 21 82 e1                                      orr r2, r2, r0, lsl #2
005f968c  04 20 42 e2                                      sub r2, r2, #4
005f9690  05 00 52 e3                                      cmp r2, #5
005f9694  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
005f9698  01 01 00 ea                                      b #0x5f9aa4
005f969c  cf 00 00 ea                                      b #0x5f99e0
005f96a0  05 01 00 ea                                      b #0x5f9abc
005f96a4  fe 00 00 ea                                      b #0x5f9aa4
005f96a8  fd 00 00 ea                                      b #0x5f9aa4
005f96ac  9a 00 00 ea                                      b #0x5f991c
005f96b0  6d 00 00 ea                                      b #0x5f986c
005f96b4  0b 10 95 e7                                      ldr r1, [r5, fp]
005f96b8  28 00 a0 e3                                      mov r0, #0x28
005f96bc  90 17 2c e0                                      mla ip, r0, r7, r1
005f96c0  90 1a 21 e0                                      mla r1, r0, sl, r1
005f96c4  14 00 dc e5                                      ldrb r0, [ip, #0x14]
005f96c8  14 10 d1 e5                                      ldrb r1, [r1, #0x14]
005f96cc  00 00 51 e1                                      cmp r1, r0
005f96d0  1c 00 00 0a                                      beq #0x5f9748
005f96d4  03 10 82 e1                                      orr r1, r2, r3
005f96d8  02 10 11 e2                                      ands r1, r1, #2
005f96dc  58 00 00 1a                                      bne #0x5f9844
005f96e0  0a 00 4a e2                                      sub r0, sl, #0xa
005f96e4  01 00 50 e3                                      cmp r0, #1
005f96e8  f3 01 00 9a                                      bls #0x5f9ebc
005f96ec  58 e1 9d e5                                      ldr lr, [sp, #0x158]
005f96f0  08 40 8d e5                                      str r4, [sp, #8]
005f96f4  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f96f8  64 41 9d e5                                      ldr r4, [sp, #0x164]
005f96fc  0a 00 a0 e1                                      mov r0, sl
005f9700  08 10 a0 e1                                      mov r1, r8
005f9704  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f9708  07 30 a0 e1                                      mov r3, r7
005f970c  00 e0 8d e5                                      str lr, [sp]
005f9710  04 90 8d e5                                      str sb, [sp, #4]
005f9714  0c 40 8d e5                                      str r4, [sp, #0xc]
005f9718  10 50 8d e5                                      str r5, [sp, #0x10]
005f971c  31 ee ff eb                                      bl #0x5f4fe8
005f9720  c9 ff ff ea                                      b #0x5f964c
005f9724  07 00 a0 e1                                      mov r0, r7
005f9728  04 10 a0 e1                                      mov r1, r4
005f972c  ee d0 ff eb                                      bl #0x5edaec
005f9730  00 90 a0 e1                                      mov sb, r0
005f9734  ac ff ff ea                                      b #0x5f95ec
005f9738  04 10 a0 e1                                      mov r1, r4
005f973c  ea d0 ff eb                                      bl #0x5edaec
005f9740  5c 00 8d e5                                      str r0, [sp, #0x5c]
005f9744  a6 ff ff ea                                      b #0x5f95e4
005f9748  40 00 12 e3                                      tst r2, #0x40
005f974c  e0 ff ff 1a                                      bne #0x5f96d4
005f9750  40 00 13 e3                                      tst r3, #0x40
005f9754  de ff ff 1a                                      bne #0x5f96d4
005f9758  01 00 13 e3                                      tst r3, #1
005f975c  01 00 00 0a                                      beq #0x5f9768
005f9760  01 00 12 e3                                      tst r2, #1
005f9764  da ff ff 0a                                      beq #0x5f96d4
005f9768  02 00 57 e3                                      cmp r7, #2
005f976c  02 00 5a 13                                      cmpne sl, #2
005f9770  d7 ff ff 0a                                      beq #0x5f96d4
005f9774  04 00 51 e3                                      cmp r1, #4
005f9778  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
005f977c  34 00 00 ea                                      b #0x5f9854
005f9780  6b 01 00 ea                                      b #0x5f9d34
005f9784  30 01 00 ea                                      b #0x5f9c4c
005f9788  f7 00 00 ea                                      b #0x5f9b6c
005f978c  2e 01 00 ea                                      b #0x5f9c4c
005f9790  f5 00 00 ea                                      b #0x5f9b6c
005f9794  cc 1c 9f e5                                      ldr r1, [pc, #0xccc]
005f9798  01 10 8f e0                                      add r1, pc, r1
005f979c  a5 ff ff ea                                      b #0x5f9638
005f97a0  04 40 8d e5                                      str r4, [sp, #4]
005f97a4  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f97a8  64 41 9d e5                                      ldr r4, [sp, #0x164]
005f97ac  0a 00 a0 e1                                      mov r0, sl
005f97b0  08 10 a0 e1                                      mov r1, r8
005f97b4  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f97b8  58 31 9d e5                                      ldr r3, [sp, #0x158]
005f97bc  00 90 8d e5                                      str sb, [sp]
005f97c0  08 40 8d e5                                      str r4, [sp, #8]
005f97c4  0c 50 8d e5                                      str r5, [sp, #0xc]
005f97c8  0f d3 ff eb                                      bl #0x5ee40c
005f97cc  9e ff ff ea                                      b #0x5f964c
005f97d0  58 e1 9d e5                                      ldr lr, [sp, #0x158]
005f97d4  08 40 8d e5                                      str r4, [sp, #8]
005f97d8  38 50 9d e5                                      ldr r5, [sp, #0x38]
005f97dc  64 41 9d e5                                      ldr r4, [sp, #0x164]
005f97e0  0a 00 a0 e1                                      mov r0, sl
005f97e4  08 10 a0 e1                                      mov r1, r8
005f97e8  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005f97ec  07 30 a0 e1                                      mov r3, r7
005f97f0  00 e0 8d e5                                      str lr, [sp]
005f97f4  04 90 8d e5                                      str sb, [sp, #4]
005f97f8  0c 40 8d e5                                      str r4, [sp, #0xc]
005f97fc  10 50 8d e5                                      str r5, [sp, #0x10]
005f9800  23 10 00 eb                                      bl #0x5fd894
005f9804  90 ff ff ea                                      b #0x5f964c
005f9808  04 10 a0 e1                                      mov r1, r4
005f980c  0a 00 a0 e1                                      mov r0, sl
005f9810  b5 d0 ff eb                                      bl #0x5edaec
005f9814  04 10 a0 e1                                      mov r1, r4
005f9818  00 60 a0 e1                                      mov r6, r0
005f981c  07 00 a0 e1                                      mov r0, r7
005f9820  b1 d0 ff eb                                      bl #0x5edaec
005f9824  00 00 56 e1                                      cmp r6, r0
005f9828  0b 00 00 0a                                      beq #0x5f985c
005f982c  38 0c 9f e5                                      ldr r0, [pc, #0xc38]
005f9830  03 10 a0 e3                                      mov r1, #3
005f9834  00 00 8f e0                                      add r0, pc, r0
005f9838  18 45 00 eb                                      bl #0x60aca0
005f983c  00 00 a0 e3                                      mov r0, #0
005f9840  81 ff ff ea                                      b #0x5f964c
005f9844  24 0c 9f e5                                      ldr r0, [pc, #0xc24]
005f9848  03 10 a0 e3                                      mov r1, #3
005f984c  00 00 8f e0                                      add r0, pc, r0
005f9850  12 45 00 eb                                      bl #0x60aca0
005f9854  00 00 a0 e3                                      mov r0, #0
005f9858  7b ff ff ea                                      b #0x5f964c
005f985c  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005f9860  09 00 5c e1                                      cmp ip, sb
005f9864  f0 ff ff 1a                                      bne #0x5f982c
005f9868  64 ff ff ea                                      b #0x5f9600
005f986c  0b 30 95 e7                                      ldr r3, [r5, fp]
005f9870  28 20 a0 e3                                      mov r2, #0x28
005f9874  9a b9 09 e3                                      movw fp, #0x999a
005f9878  92 3a 2a e0                                      mla sl, r2, sl, r3
005f987c  3d 3a 00 e3                                      movw r3, #0xa3d
005f9880  17 3f 43 e3                                      movt r3, #0x3f17
005f9884  f4 30 8d e5                                      str r3, [sp, #0xf4]
005f9888  ae 37 04 e3                                      movw r3, #0x47ae
005f988c  99 be 43 e3                                      movt fp, #0x3e99
005f9890  b4 c0 8d e2                                      add ip, sp, #0xb4
005f9894  e1 3d 43 e3                                      movt r3, #0x3de1
005f9898  f0 e0 8d e2                                      add lr, sp, #0xf0
005f989c  f8 30 8d e5                                      str r3, [sp, #0xf8]
005f98a0  f0 b0 8d e5                                      str fp, [sp, #0xf0]
005f98a4  0b 30 a0 e1                                      mov r3, fp
005f98a8  0c 60 a0 e1                                      mov r6, ip
005f98ac  0c 70 a0 e1                                      mov r7, ip
005f98b0  00 50 a0 e3                                      mov r5, #0
005f98b4  3c a0 8d e5                                      str sl, [sp, #0x3c]
005f98b8  40 e0 8d e5                                      str lr, [sp, #0x40]
005f98bc  0c b0 a0 e1                                      mov fp, ip
005f98c0  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005f98c4  05 20 80 e0                                      add r2, r0, r5
005f98c8  04 00 92 e5                                      ldr r0, [r2, #4]
005f98cc  1c 20 da e5                                      ldrb r2, [sl, #0x1c]
005f98d0  01 a0 8a e2                                      add sl, sl, #1
005f98d4  0c 00 86 e5                                      str r0, [r6, #0xc]
005f98d8  18 20 c7 e5                                      strb r2, [r7, #0x18]
005f98dc  30 02 a0 e1                                      lsr r0, r0, r2
005f98e0  28 30 8d e5                                      str r3, [sp, #0x28]
005f98e4  7d 52 f4 eb                                      bl #0x30e2e0
005f98e8  28 30 9d e5                                      ldr r3, [sp, #0x28]
005f98ec  00 10 a0 e1                                      mov r1, r0
005f98f0  04 60 86 e2                                      add r6, r6, #4
005f98f4  03 00 a0 e1                                      mov r0, r3
005f98f8  e5 54 f4 eb                                      bl #0x30ec94
005f98fc  05 00 8b e7                                      str r0, [fp, r5]
005f9900  04 50 85 e2                                      add r5, r5, #4
005f9904  0c 00 55 e3                                      cmp r5, #0xc
005f9908  01 70 87 e2                                      add r7, r7, #1
005f990c  72 02 00 0a                                      beq #0x5fa2dc
005f9910  40 10 9d e5                                      ldr r1, [sp, #0x40]
005f9914  05 30 91 e7                                      ldr r3, [r1, r5]
005f9918  e8 ff ff ea                                      b #0x5f98c0
005f991c  01 20 13 e2                                      ands r2, r3, #1
005f9920  08 60 a0 e1                                      mov r6, r8
005f9924  58 71 9d e5                                      ldr r7, [sp, #0x158]
005f9928  cc 04 00 1a                                      bne #0x5fac60
005f992c  0b 10 95 e7                                      ldr r1, [r5, fp]
005f9930  28 00 a0 e3                                      mov r0, #0x28
005f9934  9a 39 09 e3                                      movw r3, #0x999a
005f9938  90 1a 2a e0                                      mla sl, r0, sl, r1
005f993c  3d 1a 00 e3                                      movw r1, #0xa3d
005f9940  17 1f 43 e3                                      movt r1, #0x3f17
005f9944  f4 10 8d e5                                      str r1, [sp, #0xf4]
005f9948  ae 17 04 e3                                      movw r1, #0x47ae
005f994c  b4 c0 8d e2                                      add ip, sp, #0xb4
005f9950  99 3e 43 e3                                      movt r3, #0x3e99
005f9954  e1 1d 43 e3                                      movt r1, #0x3de1
005f9958  f0 e0 8d e2                                      add lr, sp, #0xf0
005f995c  4c 70 8d e5                                      str r7, [sp, #0x4c]
005f9960  f8 10 8d e5                                      str r1, [sp, #0xf8]
005f9964  f0 30 8d e5                                      str r3, [sp, #0xf0]
005f9968  02 50 a0 e1                                      mov r5, r2
005f996c  3c 30 8d e5                                      str r3, [sp, #0x3c]
005f9970  0c b0 a0 e1                                      mov fp, ip
005f9974  40 a0 8d e5                                      str sl, [sp, #0x40]
005f9978  44 e0 8d e5                                      str lr, [sp, #0x44]
005f997c  48 80 8d e5                                      str r8, [sp, #0x48]
005f9980  0c 60 a0 e1                                      mov r6, ip
005f9984  0c 70 a0 e1                                      mov r7, ip
005f9988  40 00 9d e5                                      ldr r0, [sp, #0x40]
005f998c  05 30 80 e0                                      add r3, r0, r5
005f9990  04 00 93 e5                                      ldr r0, [r3, #4]
005f9994  1c 30 da e5                                      ldrb r3, [sl, #0x1c]
005f9998  01 a0 8a e2                                      add sl, sl, #1
005f999c  0c 00 8b e5                                      str r0, [fp, #0xc]
005f99a0  18 30 c6 e5                                      strb r3, [r6, #0x18]
005f99a4  30 03 a0 e1                                      lsr r0, r0, r3
005f99a8  4c 52 f4 eb                                      bl #0x30e2e0
005f99ac  00 10 a0 e1                                      mov r1, r0
005f99b0  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005f99b4  b6 54 f4 eb                                      bl #0x30ec94
005f99b8  05 00 87 e7                                      str r0, [r7, r5]
005f99bc  04 50 85 e2                                      add r5, r5, #4
005f99c0  0c 00 55 e3                                      cmp r5, #0xc
005f99c4  04 b0 8b e2                                      add fp, fp, #4
005f99c8  01 60 86 e2                                      add r6, r6, #1
005f99cc  05 03 00 0a                                      beq #0x5fa5e8
005f99d0  44 10 9d e5                                      ldr r1, [sp, #0x44]
005f99d4  05 10 91 e7                                      ldr r1, [r1, r5]
005f99d8  3c 10 8d e5                                      str r1, [sp, #0x3c]
005f99dc  e9 ff ff ea                                      b #0x5f9988
005f99e0  58 71 9d e5                                      ldr r7, [sp, #0x158]
005f99e4  01 30 13 e2                                      ands r3, r3, #1
005f99e8  08 60 a0 e1                                      mov r6, r8
005f99ec  68 70 8d e5                                      str r7, [sp, #0x68]
005f99f0  ef 04 00 1a                                      bne #0x5fadb4
005f99f4  0b 10 95 e7                                      ldr r1, [r5, fp]
005f99f8  28 00 a0 e3                                      mov r0, #0x28
005f99fc  9a 29 09 e3                                      movw r2, #0x999a
005f9a00  90 1a 2a e0                                      mla sl, r0, sl, r1
005f9a04  3d 1a 00 e3                                      movw r1, #0xa3d
005f9a08  17 1f 43 e3                                      movt r1, #0x3f17
005f9a0c  f4 10 8d e5                                      str r1, [sp, #0xf4]
005f9a10  ae 17 04 e3                                      movw r1, #0x47ae
005f9a14  b4 c0 8d e2                                      add ip, sp, #0xb4
005f9a18  99 2e 43 e3                                      movt r2, #0x3e99
005f9a1c  e1 1d 43 e3                                      movt r1, #0x3de1
005f9a20  f0 e0 8d e2                                      add lr, sp, #0xf0
005f9a24  f8 10 8d e5                                      str r1, [sp, #0xf8]
005f9a28  f0 20 8d e5                                      str r2, [sp, #0xf0]
005f9a2c  03 50 a0 e1                                      mov r5, r3
005f9a30  0c 70 a0 e1                                      mov r7, ip
005f9a34  0c b0 a0 e1                                      mov fp, ip
005f9a38  3c a0 8d e5                                      str sl, [sp, #0x3c]
005f9a3c  40 e0 8d e5                                      str lr, [sp, #0x40]
005f9a40  44 80 8d e5                                      str r8, [sp, #0x44]
005f9a44  0c 60 a0 e1                                      mov r6, ip
005f9a48  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005f9a4c  05 30 80 e0                                      add r3, r0, r5
005f9a50  04 00 93 e5                                      ldr r0, [r3, #4]
005f9a54  1c 30 da e5                                      ldrb r3, [sl, #0x1c]
005f9a58  01 a0 8a e2                                      add sl, sl, #1
005f9a5c  0c 00 87 e5                                      str r0, [r7, #0xc]
005f9a60  18 30 cb e5                                      strb r3, [fp, #0x18]
005f9a64  30 03 a0 e1                                      lsr r0, r0, r3
005f9a68  2c 20 8d e5                                      str r2, [sp, #0x2c]
005f9a6c  1b 52 f4 eb                                      bl #0x30e2e0
005f9a70  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005f9a74  00 10 a0 e1                                      mov r1, r0
005f9a78  04 70 87 e2                                      add r7, r7, #4
005f9a7c  02 00 a0 e1                                      mov r0, r2
005f9a80  83 54 f4 eb                                      bl #0x30ec94
005f9a84  05 00 86 e7                                      str r0, [r6, r5]
005f9a88  04 50 85 e2                                      add r5, r5, #4
005f9a8c  0c 00 55 e3                                      cmp r5, #0xc
005f9a90  01 b0 8b e2                                      add fp, fp, #1
005f9a94  77 02 00 0a                                      beq #0x5fa478
005f9a98  40 10 9d e5                                      ldr r1, [sp, #0x40]
005f9a9c  05 20 91 e7                                      ldr r2, [r1, r5]
005f9aa0  e8 ff ff ea                                      b #0x5f9a48
005f9aa4  c8 09 9f e5                                      ldr r0, [pc, #0x9c8]
005f9aa8  03 10 a0 e3                                      mov r1, #3
005f9aac  00 00 8f e0                                      add r0, pc, r0
005f9ab0  7a 44 00 eb                                      bl #0x60aca0
005f9ab4  00 00 a0 e3                                      mov r0, #0
005f9ab8  e3 fe ff ea                                      b #0x5f964c
005f9abc  0b 30 95 e7                                      ldr r3, [r5, fp]
005f9ac0  28 20 a0 e3                                      mov r2, #0x28
005f9ac4  9a b9 09 e3                                      movw fp, #0x999a
005f9ac8  92 3a 2a e0                                      mla sl, r2, sl, r3
005f9acc  3d 3a 00 e3                                      movw r3, #0xa3d
005f9ad0  17 3f 43 e3                                      movt r3, #0x3f17
005f9ad4  f4 30 8d e5                                      str r3, [sp, #0xf4]
005f9ad8  ae 37 04 e3                                      movw r3, #0x47ae
005f9adc  99 be 43 e3                                      movt fp, #0x3e99
005f9ae0  b4 c0 8d e2                                      add ip, sp, #0xb4
005f9ae4  e1 3d 43 e3                                      movt r3, #0x3de1
005f9ae8  f0 e0 8d e2                                      add lr, sp, #0xf0
005f9aec  f8 30 8d e5                                      str r3, [sp, #0xf8]
005f9af0  f0 b0 8d e5                                      str fp, [sp, #0xf0]
005f9af4  0b 30 a0 e1                                      mov r3, fp
005f9af8  0c 60 a0 e1                                      mov r6, ip
005f9afc  0c 70 a0 e1                                      mov r7, ip
005f9b00  00 50 a0 e3                                      mov r5, #0
005f9b04  3c a0 8d e5                                      str sl, [sp, #0x3c]
005f9b08  40 e0 8d e5                                      str lr, [sp, #0x40]
005f9b0c  0c b0 a0 e1                                      mov fp, ip
005f9b10  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005f9b14  05 20 80 e0                                      add r2, r0, r5
005f9b18  04 00 92 e5                                      ldr r0, [r2, #4]
005f9b1c  1c 20 da e5                                      ldrb r2, [sl, #0x1c]
005f9b20  01 a0 8a e2                                      add sl, sl, #1
005f9b24  0c 00 87 e5                                      str r0, [r7, #0xc]
005f9b28  18 20 c6 e5                                      strb r2, [r6, #0x18]
005f9b2c  30 02 a0 e1                                      lsr r0, r0, r2
005f9b30  28 30 8d e5                                      str r3, [sp, #0x28]
005f9b34  e9 51 f4 eb                                      bl #0x30e2e0
005f9b38  28 30 9d e5                                      ldr r3, [sp, #0x28]
005f9b3c  00 10 a0 e1                                      mov r1, r0
005f9b40  04 70 87 e2                                      add r7, r7, #4
005f9b44  03 00 a0 e1                                      mov r0, r3
005f9b48  51 54 f4 eb                                      bl #0x30ec94
005f9b4c  05 00 8b e7                                      str r0, [fp, r5]
005f9b50  04 50 85 e2                                      add r5, r5, #4
005f9b54  0c 00 55 e3                                      cmp r5, #0xc
005f9b58  01 60 86 e2                                      add r6, r6, #1
005f9b5c  83 01 00 0a                                      beq #0x5fa170
005f9b60  40 10 9d e5                                      ldr r1, [sp, #0x40]
005f9b64  05 30 91 e7                                      ldr r3, [r1, r5]
005f9b68  e8 ff ff ea                                      b #0x5f9b10
005f9b6c  0b c0 95 e7                                      ldr ip, [r5, fp]
005f9b70  28 b0 a0 e3                                      mov fp, #0x28
005f9b74  08 50 a0 e1                                      mov r5, r8
005f9b78  9b c7 23 e0                                      mla r3, fp, r7, ip
005f9b7c  58 61 9d e5                                      ldr r6, [sp, #0x158]
005f9b80  17 30 d3 e5                                      ldrb r3, [r3, #0x17]
005f9b84  03 00 53 e3                                      cmp r3, #3
005f9b88  e0 04 00 0a                                      beq #0x5faf10
005f9b8c  04 00 53 e3                                      cmp r3, #4
005f9b90  0d 05 00 0a                                      beq #0x5fafcc
005f9b94  02 00 53 e3                                      cmp r3, #2
005f9b98  2d ff ff 1a                                      bne #0x5f9854
005f9b9c  07 10 a0 e1                                      mov r1, r7
005f9ba0  0a 00 a0 e1                                      mov r0, sl
005f9ba4  43 2f 8d e2                                      add r2, sp, #0x10c
005f9ba8  30 c0 8d e5                                      str ip, [sp, #0x30]
005f9bac  87 cf ff eb                                      bl #0x5ed9d0
005f9bb0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f9bb4  58 11 9d e5                                      ldr r1, [sp, #0x158]
005f9bb8  9b ca 2c e0                                      mla ip, fp, sl, ip
005f9bbc  01 00 58 e1                                      cmp r8, r1
005f9bc0  15 70 dc e5                                      ldrb r7, [ip, #0x15]
005f9bc4  a9 0b 00 0a                                      beq #0x5fca70
005f9bc8  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005f9bcc  64 01 9d e5                                      ldr r0, [sp, #0x164]
005f9bd0  09 10 a0 e1                                      mov r1, sb
005f9bd4  00 00 5a e3                                      cmp sl, #0
005f9bd8  64 c1 9d 15                                      ldrne ip, [sp, #0x164]
005f9bdc  00 10 69 12                                      rsbne r1, sb, #0
005f9be0  01 30 4c 12                                      subne r3, ip, #1
005f9be4  93 69 26 10                                      mlane r6, r3, sb, r6
005f9be8  00 00 50 e3                                      cmp r0, #0
005f9bec  b0 00 00 0a                                      beq #0x5f9eb4
005f9bf0  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
005f9bf4  06 30 a0 e1                                      mov r3, r6
005f9bf8  00 c0 a0 e1                                      mov ip, r0
005f9bfc  00 00 54 e3                                      cmp r4, #0
005f9c00  04 20 a0 11                                      movne r2, r4
005f9c04  09 00 00 0a                                      beq #0x5f9c30
005f9c08  0c 01 dd e5                                      ldrb r0, [sp, #0x10c]
005f9c0c  01 20 52 e2                                      subs r2, r2, #1
005f9c10  00 01 98 e7                                      ldr r0, [r8, r0, lsl #2]
005f9c14  00 00 83 e5                                      str r0, [r3]
005f9c18  0d 01 dd e5                                      ldrb r0, [sp, #0x10d]
005f9c1c  00 01 98 e7                                      ldr r0, [r8, r0, lsl #2]
005f9c20  07 80 88 e0                                      add r8, r8, r7
005f9c24  04 00 83 e5                                      str r0, [r3, #4]
005f9c28  08 30 83 e2                                      add r3, r3, #8
005f9c2c  f5 ff ff 1a                                      bne #0x5f9c08
005f9c30  01 c0 5c e2                                      subs ip, ip, #1
005f9c34  9e 00 00 0a                                      beq #0x5f9eb4
005f9c38  0a 50 85 e0                                      add r5, r5, sl
005f9c3c  01 60 86 e0                                      add r6, r6, r1
005f9c40  06 30 a0 e1                                      mov r3, r6
005f9c44  05 80 a0 e1                                      mov r8, r5
005f9c48  eb ff ff ea                                      b #0x5f9bfc
005f9c4c  0b c0 95 e7                                      ldr ip, [r5, fp]
005f9c50  28 b0 a0 e3                                      mov fp, #0x28
005f9c54  08 50 a0 e1                                      mov r5, r8
005f9c58  9b c7 23 e0                                      mla r3, fp, r7, ip
005f9c5c  58 61 9d e5                                      ldr r6, [sp, #0x158]
005f9c60  17 30 d3 e5                                      ldrb r3, [r3, #0x17]
005f9c64  03 00 53 e3                                      cmp r3, #3
005f9c68  a0 05 00 0a                                      beq #0x5fb2f0
005f9c6c  04 00 53 e3                                      cmp r3, #4
005f9c70  68 05 00 0a                                      beq #0x5fb218
005f9c74  02 00 53 e3                                      cmp r3, #2
005f9c78  f5 fe ff 1a                                      bne #0x5f9854
005f9c7c  07 10 a0 e1                                      mov r1, r7
005f9c80  0a 00 a0 e1                                      mov r0, sl
005f9c84  43 2f 8d e2                                      add r2, sp, #0x10c
005f9c88  30 c0 8d e5                                      str ip, [sp, #0x30]
005f9c8c  4f cf ff eb                                      bl #0x5ed9d0
005f9c90  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f9c94  58 11 9d e5                                      ldr r1, [sp, #0x158]
005f9c98  9b ca 2c e0                                      mla ip, fp, sl, ip
005f9c9c  01 00 58 e1                                      cmp r8, r1
005f9ca0  15 70 dc e5                                      ldrb r7, [ip, #0x15]
005f9ca4  1b 0a 00 0a                                      beq #0x5fc518
005f9ca8  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005f9cac  64 01 9d e5                                      ldr r0, [sp, #0x164]
005f9cb0  09 10 a0 e1                                      mov r1, sb
005f9cb4  00 00 5a e3                                      cmp sl, #0
005f9cb8  64 c1 9d 15                                      ldrne ip, [sp, #0x164]
005f9cbc  00 10 69 12                                      rsbne r1, sb, #0
005f9cc0  01 30 4c 12                                      subne r3, ip, #1
005f9cc4  93 69 26 10                                      mlane r6, r3, sb, r6
005f9cc8  00 00 50 e3                                      cmp r0, #0
005f9ccc  78 00 00 0a                                      beq #0x5f9eb4
005f9cd0  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
005f9cd4  64 c1 9d e5                                      ldr ip, [sp, #0x164]
005f9cd8  06 00 a0 e1                                      mov r0, r6
005f9cdc  00 00 54 e3                                      cmp r4, #0
005f9ce0  04 30 a0 11                                      movne r3, r4
005f9ce4  0b 00 00 0a                                      beq #0x5f9d18
005f9ce8  0c 21 dd e5                                      ldrb r2, [sp, #0x10c]
005f9cec  01 30 53 e2                                      subs r3, r3, #1
005f9cf0  82 20 a0 e1                                      lsl r2, r2, #1
005f9cf4  b2 20 95 e1                                      ldrh r2, [r5, r2]
005f9cf8  b0 20 c6 e1                                      strh r2, [r6]
005f9cfc  0d 21 dd e5                                      ldrb r2, [sp, #0x10d]
005f9d00  82 20 a0 e1                                      lsl r2, r2, #1
005f9d04  b2 20 95 e1                                      ldrh r2, [r5, r2]
005f9d08  07 50 85 e0                                      add r5, r5, r7
005f9d0c  b2 20 c6 e1                                      strh r2, [r6, #2]
005f9d10  04 60 86 e2                                      add r6, r6, #4
005f9d14  f3 ff ff 1a                                      bne #0x5f9ce8
005f9d18  01 c0 5c e2                                      subs ip, ip, #1
005f9d1c  64 00 00 0a                                      beq #0x5f9eb4
005f9d20  0a 50 88 e0                                      add r5, r8, sl
005f9d24  01 00 80 e0                                      add r0, r0, r1
005f9d28  00 60 a0 e1                                      mov r6, r0
005f9d2c  05 80 a0 e1                                      mov r8, r5
005f9d30  e9 ff ff ea                                      b #0x5f9cdc
005f9d34  0b c0 95 e7                                      ldr ip, [r5, fp]
005f9d38  28 b0 a0 e3                                      mov fp, #0x28
005f9d3c  08 50 a0 e1                                      mov r5, r8
005f9d40  9b c7 23 e0                                      mla r3, fp, r7, ip
005f9d44  58 61 9d e5                                      ldr r6, [sp, #0x158]
005f9d48  17 30 d3 e5                                      ldrb r3, [r3, #0x17]
005f9d4c  03 00 53 e3                                      cmp r3, #3
005f9d50  01 05 00 0a                                      beq #0x5fb15c
005f9d54  04 00 53 e3                                      cmp r3, #4
005f9d58  cd 04 00 0a                                      beq #0x5fb094
005f9d5c  02 00 53 e3                                      cmp r3, #2
005f9d60  bb fe ff 1a                                      bne #0x5f9854
005f9d64  07 10 a0 e1                                      mov r1, r7
005f9d68  0a 00 a0 e1                                      mov r0, sl
005f9d6c  4b 2f 8d e2                                      add r2, sp, #0x12c
005f9d70  30 c0 8d e5                                      str ip, [sp, #0x30]
005f9d74  15 cf ff eb                                      bl #0x5ed9d0
005f9d78  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005f9d7c  58 01 9d e5                                      ldr r0, [sp, #0x158]
005f9d80  9b ca 2c e0                                      mla ip, fp, sl, ip
005f9d84  00 00 58 e1                                      cmp r8, r0
005f9d88  15 70 dc e5                                      ldrb r7, [ip, #0x15]
005f9d8c  ba 09 00 0a                                      beq #0x5fc47c
005f9d90  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005f9d94  64 01 9d e5                                      ldr r0, [sp, #0x164]
005f9d98  09 10 a0 e1                                      mov r1, sb
005f9d9c  00 00 5a e3                                      cmp sl, #0
005f9da0  64 c1 9d 15                                      ldrne ip, [sp, #0x164]
005f9da4  00 10 69 12                                      rsbne r1, sb, #0
005f9da8  01 30 4c 12                                      subne r3, ip, #1
005f9dac  93 69 26 10                                      mlane r6, r3, sb, r6
005f9db0  00 00 50 e3                                      cmp r0, #0
005f9db4  3e 00 00 0a                                      beq #0x5f9eb4
005f9db8  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
005f9dbc  64 c1 9d e5                                      ldr ip, [sp, #0x164]
005f9dc0  06 00 a0 e1                                      mov r0, r6
005f9dc4  00 00 54 e3                                      cmp r4, #0
005f9dc8  04 30 a0 11                                      movne r3, r4
005f9dcc  09 00 00 0a                                      beq #0x5f9df8
005f9dd0  2c 21 dd e5                                      ldrb r2, [sp, #0x12c]
005f9dd4  01 30 53 e2                                      subs r3, r3, #1
005f9dd8  02 20 d5 e7                                      ldrb r2, [r5, r2]
005f9ddc  00 20 c6 e5                                      strb r2, [r6]
005f9de0  2d 21 dd e5                                      ldrb r2, [sp, #0x12d]
005f9de4  02 20 d5 e7                                      ldrb r2, [r5, r2]
005f9de8  07 50 85 e0                                      add r5, r5, r7
005f9dec  01 20 c6 e5                                      strb r2, [r6, #1]
005f9df0  02 60 86 e2                                      add r6, r6, #2
005f9df4  f5 ff ff 1a                                      bne #0x5f9dd0
005f9df8  01 c0 5c e2                                      subs ip, ip, #1
005f9dfc  2c 00 00 0a                                      beq #0x5f9eb4
005f9e00  0a 50 88 e0                                      add r5, r8, sl
005f9e04  01 00 80 e0                                      add r0, r0, r1
005f9e08  00 60 a0 e1                                      mov r6, r0
005f9e0c  05 80 a0 e1                                      mov r8, r5
005f9e10  eb ff ff ea                                      b #0x5f9dc4
005f9e14  64 31 9d e5                                      ldr r3, [sp, #0x164]
005f9e18  58 81 9d e5                                      ldr r8, [sp, #0x158]
005f9e1c  01 60 43 e2                                      sub r6, r3, #1
005f9e20  96 89 26 e0                                      mla r6, r6, sb, r8
005f9e24  00 90 69 e2                                      rsb sb, sb, #0
005f9e28  06 00 58 e1                                      cmp r8, r6
005f9e2c  54 90 8d e5                                      str sb, [sp, #0x54]
005f9e30  43 af 8d 92                                      addls sl, sp, #0x10c
005f9e34  04 80 a0 91                                      movls r8, r4
005f9e38  1d 00 00 8a                                      bhi #0x5f9eb4
005f9e3c  00 00 58 e3                                      cmp r8, #0
005f9e40  06 90 a0 e1                                      mov sb, r6
005f9e44  05 b0 a0 e1                                      mov fp, r5
005f9e48  08 40 a0 11                                      movne r4, r8
005f9e4c  12 00 00 0a                                      beq #0x5f9e9c
005f9e50  2c 31 dd e5                                      ldrb r3, [sp, #0x12c]
005f9e54  2d c1 dd e5                                      ldrb ip, [sp, #0x12d]
005f9e58  05 00 a0 e1                                      mov r0, r5
005f9e5c  03 e0 d6 e7                                      ldrb lr, [r6, r3]
005f9e60  0a 10 a0 e1                                      mov r1, sl
005f9e64  07 20 a0 e1                                      mov r2, r7
005f9e68  0c e1 cd e5                                      strb lr, [sp, #0x10c]
005f9e6c  0c c0 d6 e7                                      ldrb ip, [r6, ip]
005f9e70  0d c1 cd e5                                      strb ip, [sp, #0x10d]
005f9e74  03 30 d5 e7                                      ldrb r3, [r5, r3]
005f9e78  00 30 c6 e5                                      strb r3, [r6]
005f9e7c  2d 31 dd e5                                      ldrb r3, [sp, #0x12d]
005f9e80  03 30 d5 e7                                      ldrb r3, [r5, r3]
005f9e84  07 50 85 e0                                      add r5, r5, r7
005f9e88  01 30 c6 e5                                      strb r3, [r6, #1]
005f9e8c  75 52 f4 eb                                      bl #0x30e868
005f9e90  01 40 54 e2                                      subs r4, r4, #1
005f9e94  02 60 86 e2                                      add r6, r6, #2
005f9e98  ec ff ff 1a                                      bne #0x5f9e50
005f9e9c  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005f9ea0  54 00 9d e5                                      ldr r0, [sp, #0x54]
005f9ea4  0c 50 8b e0                                      add r5, fp, ip
005f9ea8  00 60 89 e0                                      add r6, sb, r0
005f9eac  06 00 55 e1                                      cmp r5, r6
005f9eb0  e1 ff ff 9a                                      bls #0x5f9e3c
005f9eb4  01 00 a0 e3                                      mov r0, #1
005f9eb8  e3 fd ff ea                                      b #0x5f964c
005f9ebc  07 00 a0 e1                                      mov r0, r7
005f9ec0  30 10 8d e5                                      str r1, [sp, #0x30]
005f9ec4  2c 20 8d e5                                      str r2, [sp, #0x2c]
005f9ec8  28 30 8d e5                                      str r3, [sp, #0x28]
005f9ecc  a0 ce ff eb                                      bl #0x5ed954
005f9ed0  01 00 50 e3                                      cmp r0, #1
005f9ed4  08 60 a0 e1                                      mov r6, r8
005f9ed8  30 10 9d e5                                      ldr r1, [sp, #0x30]
005f9edc  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005f9ee0  28 30 9d e5                                      ldr r3, [sp, #0x28]
005f9ee4  bb 02 00 0a                                      beq #0x5fa9d8
005f9ee8  02 00 50 e3                                      cmp r0, #2
005f9eec  17 02 00 0a                                      beq #0x5fa750
005f9ef0  00 00 50 e3                                      cmp r0, #0
005f9ef4  01 00 a0 11                                      movne r0, r1
005f9ef8  d3 fd ff 1a                                      bne #0x5f964c
005f9efc  58 11 9d e5                                      ldr r1, [sp, #0x158]
005f9f00  0b 00 95 e7                                      ldr r0, [r5, fp]
005f9f04  a8 10 8d e5                                      str r1, [sp, #0xa8]
005f9f08  28 10 a0 e3                                      mov r1, #0x28
005f9f0c  91 07 21 e0                                      mla r1, r1, r7, r0
005f9f10  19 10 d1 e5                                      ldrb r1, [r1, #0x19]
005f9f14  08 00 51 e3                                      cmp r1, #8
005f9f18  1d 06 00 8a                                      bhi #0x5fb794
005f9f1c  01 00 13 e3                                      tst r3, #1
005f9f20  13 08 00 1a                                      bne #0x5fbf74
005f9f24  00 00 a0 e3                                      mov r0, #0
005f9f28  3c 00 8d e5                                      str r0, [sp, #0x3c]
005f9f2c  0b 30 95 e7                                      ldr r3, [r5, fp]
005f9f30  28 00 a0 e3                                      mov r0, #0x28
005f9f34  b4 c0 8d e2                                      add ip, sp, #0xb4
005f9f38  90 37 27 e0                                      mla r7, r0, r7, r3
005f9f3c  44 a0 8d e5                                      str sl, [sp, #0x44]
005f9f40  90 3a 20 e0                                      mla r0, r0, sl, r3
005f9f44  4c 90 8d e5                                      str sb, [sp, #0x4c]
005f9f48  0c 10 a0 e1                                      mov r1, ip
005f9f4c  00 20 a0 e3                                      mov r2, #0
005f9f50  40 60 8d e5                                      str r6, [sp, #0x40]
005f9f54  48 80 8d e5                                      str r8, [sp, #0x48]
005f9f58  50 40 8d e5                                      str r4, [sp, #0x50]
005f9f5c  05 90 a0 e1                                      mov sb, r5
005f9f60  07 a0 a0 e1                                      mov sl, r7
005f9f64  02 50 8a e0                                      add r5, sl, r2
005f9f68  18 30 d0 e5                                      ldrb r3, [r0, #0x18]
005f9f6c  18 40 d7 e5                                      ldrb r4, [r7, #0x18]
005f9f70  04 80 95 e5                                      ldr r8, [r5, #4]
005f9f74  1c 60 d7 e5                                      ldrb r6, [r7, #0x1c]
005f9f78  1c 50 d0 e5                                      ldrb r5, [r0, #0x1c]
005f9f7c  04 00 53 e1                                      cmp r3, r4
005f9f80  02 80 8c e7                                      str r8, [ip, r2]
005f9f84  10 50 c1 e5                                      strb r5, [r1, #0x10]
005f9f88  14 60 c1 e5                                      strb r6, [r1, #0x14]
005f9f8c  2d 01 00 9a                                      bls #0x5fa448
005f9f90  05 30 83 e0                                      add r3, r3, r5
005f9f94  03 30 64 e0                                      rsb r3, r4, r3
005f9f98  10 30 c1 e5                                      strb r3, [r1, #0x10]
005f9f9c  04 20 82 e2                                      add r2, r2, #4
005f9fa0  10 00 52 e3                                      cmp r2, #0x10
005f9fa4  01 00 80 e2                                      add r0, r0, #1
005f9fa8  01 10 81 e2                                      add r1, r1, #1
005f9fac  01 70 87 e2                                      add r7, r7, #1
005f9fb0  eb ff ff 1a                                      bne #0x5f9f64
005f9fb4  09 50 a0 e1                                      mov r5, sb
005f9fb8  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
005f9fbc  0b 10 95 e7                                      ldr r1, [r5, fp]
005f9fc0  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005f9fc4  40 60 9d e5                                      ldr r6, [sp, #0x40]
005f9fc8  40 30 8d e5                                      str r3, [sp, #0x40]
005f9fcc  28 30 a0 e3                                      mov r3, #0x28
005f9fd0  93 1a 23 e0                                      mla r3, r3, sl, r1
005f9fd4  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005f9fd8  48 80 9d e5                                      ldr r8, [sp, #0x48]
005f9fdc  58 51 9d e5                                      ldr r5, [sp, #0x158]
005f9fe0  40 a0 9d e5                                      ldr sl, [sp, #0x40]
005f9fe4  02 20 83 e0                                      add r2, r3, r2
005f9fe8  05 00 58 e1                                      cmp r8, r5
005f9fec  0a 70 07 e0                                      and r7, r7, sl
005f9ff0  50 40 9d e5                                      ldr r4, [sp, #0x50]
005f9ff4  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
005f9ff8  3c 70 8d e5                                      str r7, [sp, #0x3c]
005f9ffc  05 b0 d2 e5                                      ldrb fp, [r2, #5]
005fa000  c3 08 00 0a                                      beq #0x5fc314
005fa004  38 00 9d e5                                      ldr r0, [sp, #0x38]
005fa008  68 90 8d e5                                      str sb, [sp, #0x68]
005fa00c  00 00 50 e3                                      cmp r0, #0
005fa010  06 00 00 0a                                      beq #0x5fa030
005fa014  64 11 9d e5                                      ldr r1, [sp, #0x164]
005fa018  58 21 9d e5                                      ldr r2, [sp, #0x158]
005fa01c  01 30 41 e2                                      sub r3, r1, #1
005fa020  93 29 23 e0                                      mla r3, r3, sb, r2
005fa024  a8 30 8d e5                                      str r3, [sp, #0xa8]
005fa028  00 30 69 e2                                      rsb r3, sb, #0
005fa02c  68 30 8d e5                                      str r3, [sp, #0x68]
005fa030  64 51 9d e5                                      ldr r5, [sp, #0x164]
005fa034  00 00 55 e3                                      cmp r5, #0
005fa038  9d ff ff 0a                                      beq #0x5f9eb4
005fa03c  b8 c0 9d e5                                      ldr ip, [sp, #0xb8]
005fa040  c6 00 dd e5                                      ldrb r0, [sp, #0xc6]
005fa044  c9 50 dd e5                                      ldrb r5, [sp, #0xc9]
005fa048  50 c0 8d e5                                      str ip, [sp, #0x50]
005fa04c  4c 00 8d e5                                      str r0, [sp, #0x4c]
005fa050  ca 10 dd e5                                      ldrb r1, [sp, #0xca]
005fa054  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
005fa058  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
005fa05c  c7 30 dd e5                                      ldrb r3, [sp, #0xc7]
005fa060  cb c0 dd e5                                      ldrb ip, [sp, #0xcb]
005fa064  64 80 8d e5                                      str r8, [sp, #0x64]
005fa068  c4 90 dd e5                                      ldrb sb, [sp, #0xc4]
005fa06c  c8 a0 dd e5                                      ldrb sl, [sp, #0xc8]
005fa070  b4 80 9d e5                                      ldr r8, [sp, #0xb4]
005fa074  c5 70 dd e5                                      ldrb r7, [sp, #0xc5]
005fa078  58 50 8d e5                                      str r5, [sp, #0x58]
005fa07c  48 10 8d e5                                      str r1, [sp, #0x48]
005fa080  44 20 8d e5                                      str r2, [sp, #0x44]
005fa084  38 30 8d e5                                      str r3, [sp, #0x38]
005fa088  34 c0 8d e5                                      str ip, [sp, #0x34]
005fa08c  60 00 8d e5                                      str r0, [sp, #0x60]
005fa090  00 50 a0 e1                                      mov r5, r0
005fa094  00 00 54 e3                                      cmp r4, #0
005fa098  00 20 a0 13                                      movne r2, #0
005fa09c  54 50 8d 15                                      strne r5, [sp, #0x54]
005fa0a0  6c 40 8d 15                                      strne r4, [sp, #0x6c]
005fa0a4  23 00 00 0a                                      beq #0x5fa138
005fa0a8  00 30 d6 e5                                      ldrb r3, [r6]
005fa0ac  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
005fa0b0  50 50 9d e5                                      ldr r5, [sp, #0x50]
005fa0b4  10 31 cd e5                                      strb r3, [sp, #0x110]
005fa0b8  01 30 d6 e5                                      ldrb r3, [r6, #1]
005fa0bc  11 31 cd e5                                      strb r3, [sp, #0x111]
005fa0c0  02 30 d6 e5                                      ldrb r3, [r6, #2]
005fa0c4  06 60 8b e0                                      add r6, fp, r6
005fa0c8  12 31 cd e5                                      strb r3, [sp, #0x112]
005fa0cc  10 31 9d e5                                      ldr r3, [sp, #0x110]
005fa0d0  33 c4 a0 e1                                      lsr ip, r3, r4
005fa0d4  58 40 9d e5                                      ldr r4, [sp, #0x58]
005fa0d8  33 07 a0 e1                                      lsr r0, r3, r7
005fa0dc  10 04 05 e0                                      and r0, r5, r0, lsl r4
005fa0e0  38 50 9d e5                                      ldr r5, [sp, #0x38]
005fa0e4  44 40 9d e5                                      ldr r4, [sp, #0x44]
005fa0e8  33 19 a0 e1                                      lsr r1, r3, sb
005fa0ec  33 35 a0 e1                                      lsr r3, r3, r5
005fa0f0  48 50 9d e5                                      ldr r5, [sp, #0x48]
005fa0f4  11 1a 08 e0                                      and r1, r8, r1, lsl sl
005fa0f8  1c c5 04 e0                                      and ip, r4, ip, lsl r5
005fa0fc  40 40 9d e5                                      ldr r4, [sp, #0x40]
005fa100  34 50 9d e5                                      ldr r5, [sp, #0x34]
005fa104  01 10 80 e1                                      orr r1, r0, r1
005fa108  0c c0 81 e1                                      orr ip, r1, ip
005fa10c  13 35 04 e0                                      and r3, r4, r3, lsl r5
005fa110  03 30 8c e1                                      orr r3, ip, r3
005fa114  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005fa118  54 00 9d e5                                      ldr r0, [sp, #0x54]
005fa11c  0c 30 83 e1                                      orr r3, r3, ip
005fa120  02 30 c0 e7                                      strb r3, [r0, r2]
005fa124  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005fa128  01 20 82 e2                                      add r2, r2, #1
005fa12c  02 00 51 e1                                      cmp r1, r2
005fa130  dc ff ff 1a                                      bne #0x5fa0a8
005fa134  01 40 a0 e1                                      mov r4, r1
005fa138  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fa13c  01 20 52 e2                                      subs r2, r2, #1
005fa140  64 21 8d e5                                      str r2, [sp, #0x164]
005fa144  5a ff ff 0a                                      beq #0x5f9eb4
005fa148  64 30 9d e5                                      ldr r3, [sp, #0x64]
005fa14c  5c 50 9d e5                                      ldr r5, [sp, #0x5c]
005fa150  60 c0 9d e5                                      ldr ip, [sp, #0x60]
005fa154  68 00 9d e5                                      ldr r0, [sp, #0x68]
005fa158  05 60 83 e0                                      add r6, r3, r5
005fa15c  64 60 8d e5                                      str r6, [sp, #0x64]
005fa160  00 c0 8c e0                                      add ip, ip, r0
005fa164  60 c0 8d e5                                      str ip, [sp, #0x60]
005fa168  0c 50 a0 e1                                      mov r5, ip
005fa16c  c8 ff ff ea                                      b #0x5fa094
005fa170  58 21 9d e5                                      ldr r2, [sp, #0x158]
005fa174  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005fa178  58 80 8d e5                                      str r8, [sp, #0x58]
005fa17c  02 00 58 e1                                      cmp r8, r2
005fa180  15 50 d3 e5                                      ldrb r5, [r3, #0x15]
005fa184  02 b0 a0 e1                                      mov fp, r2
005fa188  7e 07 00 0a                                      beq #0x5fbf88
005fa18c  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005fa190  64 90 8d e5                                      str sb, [sp, #0x64]
005fa194  00 00 5a e3                                      cmp sl, #0
005fa198  04 00 00 0a                                      beq #0x5fa1b0
005fa19c  64 c1 9d e5                                      ldr ip, [sp, #0x164]
005fa1a0  00 00 69 e2                                      rsb r0, sb, #0
005fa1a4  64 00 8d e5                                      str r0, [sp, #0x64]
005fa1a8  01 30 4c e2                                      sub r3, ip, #1
005fa1ac  93 29 2b e0                                      mla fp, r3, sb, r2
005fa1b0  64 11 9d e5                                      ldr r1, [sp, #0x164]
005fa1b4  00 00 51 e3                                      cmp r1, #0
005fa1b8  3d ff ff 0a                                      beq #0x5f9eb4
005fa1bc  cc 20 dd e5                                      ldrb r2, [sp, #0xcc]
005fa1c0  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
005fa1c4  c4 60 9d e5                                      ldr r6, [sp, #0xc4]
005fa1c8  cd 70 dd e5                                      ldrb r7, [sp, #0xcd]
005fa1cc  b8 a0 9d e5                                      ldr sl, [sp, #0xb8]
005fa1d0  c8 c0 9d e5                                      ldr ip, [sp, #0xc8]
005fa1d4  ce 00 dd e5                                      ldrb r0, [sp, #0xce]
005fa1d8  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
005fa1dc  c0 90 9d e5                                      ldr sb, [sp, #0xc0]
005fa1e0  50 20 8d e5                                      str r2, [sp, #0x50]
005fa1e4  4c 30 8d e5                                      str r3, [sp, #0x4c]
005fa1e8  48 60 8d e5                                      str r6, [sp, #0x48]
005fa1ec  44 70 8d e5                                      str r7, [sp, #0x44]
005fa1f0  40 a0 8d e5                                      str sl, [sp, #0x40]
005fa1f4  3c c0 8d e5                                      str ip, [sp, #0x3c]
005fa1f8  38 00 8d e5                                      str r0, [sp, #0x38]
005fa1fc  34 10 8d e5                                      str r1, [sp, #0x34]
005fa200  60 40 8d e5                                      str r4, [sp, #0x60]
005fa204  60 70 9d e5                                      ldr r7, [sp, #0x60]
005fa208  00 00 57 e3                                      cmp r7, #0
005fa20c  26 00 00 0a                                      beq #0x5fa2ac
005fa210  60 70 9d e5                                      ldr r7, [sp, #0x60]
005fa214  00 60 a0 e3                                      mov r6, #0
005fa218  b5 40 98 e0                                      ldrh r4, [r8], r5
005fa21c  50 20 9d e5                                      ldr r2, [sp, #0x50]
005fa220  09 00 04 e0                                      and r0, r4, sb
005fa224  30 02 a0 e1                                      lsr r0, r0, r2
005fa228  2c 50 f4 eb                                      bl #0x30e2e0
005fa22c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005fa230  cd 52 f4 eb                                      bl #0x30ed6c
005fa234  48 30 9d e5                                      ldr r3, [sp, #0x48]
005fa238  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005fa23c  00 a0 a0 e1                                      mov sl, r0
005fa240  03 00 04 e0                                      and r0, r4, r3
005fa244  30 0c a0 e1                                      lsr r0, r0, ip
005fa248  24 50 f4 eb                                      bl #0x30e2e0
005fa24c  40 10 9d e5                                      ldr r1, [sp, #0x40]
005fa250  c5 52 f4 eb                                      bl #0x30ed6c
005fa254  00 10 a0 e1                                      mov r1, r0
005fa258  0a 00 a0 e1                                      mov r0, sl
005fa25c  50 52 f4 eb                                      bl #0x30eba4
005fa260  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
005fa264  38 10 9d e5                                      ldr r1, [sp, #0x38]
005fa268  00 a0 a0 e1                                      mov sl, r0
005fa26c  0e 00 04 e0                                      and r0, r4, lr
005fa270  30 01 a0 e1                                      lsr r0, r0, r1
005fa274  19 50 f4 eb                                      bl #0x30e2e0
005fa278  34 10 9d e5                                      ldr r1, [sp, #0x34]
005fa27c  ba 52 f4 eb                                      bl #0x30ed6c
005fa280  00 10 a0 e1                                      mov r1, r0
005fa284  0a 00 a0 e1                                      mov r0, sl
005fa288  45 52 f4 eb                                      bl #0x30eba4
005fa28c  00 1f 0f e3                                      movw r1, #0xff00
005fa290  7f 17 44 e3                                      movt r1, #0x477f
005fa294  b4 52 f4 eb                                      bl #0x30ed6c
005fa298  00 10 0b eb                                      bl #0x8be2a0
005fa29c  01 70 57 e2                                      subs r7, r7, #1
005fa2a0  b6 00 8b e1                                      strh r0, [fp, r6]
005fa2a4  02 60 86 e2                                      add r6, r6, #2
005fa2a8  da ff ff 1a                                      bne #0x5fa218
005fa2ac  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fa2b0  01 20 52 e2                                      subs r2, r2, #1
005fa2b4  64 21 8d e5                                      str r2, [sp, #0x164]
005fa2b8  fd fe ff 0a                                      beq #0x5f9eb4
005fa2bc  58 30 9d e5                                      ldr r3, [sp, #0x58]
005fa2c0  5c 40 9d e5                                      ldr r4, [sp, #0x5c]
005fa2c4  64 60 9d e5                                      ldr r6, [sp, #0x64]
005fa2c8  04 30 83 e0                                      add r3, r3, r4
005fa2cc  58 30 8d e5                                      str r3, [sp, #0x58]
005fa2d0  06 b0 8b e0                                      add fp, fp, r6
005fa2d4  03 80 a0 e1                                      mov r8, r3
005fa2d8  c9 ff ff ea                                      b #0x5fa204
005fa2dc  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fa2e0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005fa2e4  58 a1 9d e5                                      ldr sl, [sp, #0x158]
005fa2e8  00 00 52 e3                                      cmp r2, #0
005fa2ec  15 b0 d3 e5                                      ldrb fp, [r3, #0x15]
005fa2f0  68 90 8d e5                                      str sb, [sp, #0x68]
005fa2f4  04 00 00 0a                                      beq #0x5fa30c
005fa2f8  64 51 9d e5                                      ldr r5, [sp, #0x164]
005fa2fc  00 60 69 e2                                      rsb r6, sb, #0
005fa300  68 60 8d e5                                      str r6, [sp, #0x68]
005fa304  01 30 45 e2                                      sub r3, r5, #1
005fa308  93 a9 2a e0                                      mla sl, r3, sb, sl
005fa30c  64 71 9d e5                                      ldr r7, [sp, #0x164]
005fa310  00 00 57 e3                                      cmp r7, #0
005fa314  e6 fe ff 0a                                      beq #0x5f9eb4
005fa318  cc c0 dd e5                                      ldrb ip, [sp, #0xcc]
005fa31c  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
005fa320  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
005fa324  cd 20 dd e5                                      ldrb r2, [sp, #0xcd]
005fa328  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
005fa32c  c8 50 9d e5                                      ldr r5, [sp, #0xc8]
005fa330  ce 60 dd e5                                      ldrb r6, [sp, #0xce]
005fa334  bc 70 9d e5                                      ldr r7, [sp, #0xbc]
005fa338  c0 90 9d e5                                      ldr sb, [sp, #0xc0]
005fa33c  50 c0 8d e5                                      str ip, [sp, #0x50]
005fa340  4c 00 8d e5                                      str r0, [sp, #0x4c]
005fa344  48 10 8d e5                                      str r1, [sp, #0x48]
005fa348  44 20 8d e5                                      str r2, [sp, #0x44]
005fa34c  40 30 8d e5                                      str r3, [sp, #0x40]
005fa350  3c 50 8d e5                                      str r5, [sp, #0x3c]
005fa354  38 60 8d e5                                      str r6, [sp, #0x38]
005fa358  34 70 8d e5                                      str r7, [sp, #0x34]
005fa35c  58 a0 8d e5                                      str sl, [sp, #0x58]
005fa360  64 80 8d e5                                      str r8, [sp, #0x64]
005fa364  60 40 8d e5                                      str r4, [sp, #0x60]
005fa368  60 c0 9d e5                                      ldr ip, [sp, #0x60]
005fa36c  00 00 5c e3                                      cmp ip, #0
005fa370  26 00 00 0a                                      beq #0x5fa410
005fa374  60 60 9d e5                                      ldr r6, [sp, #0x60]
005fa378  00 50 a0 e3                                      mov r5, #0
005fa37c  0b 40 98 e6                                      ldr r4, [r8], fp
005fa380  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005fa384  09 00 04 e0                                      and r0, r4, sb
005fa388  30 0c a0 e1                                      lsr r0, r0, ip
005fa38c  d3 4f f4 eb                                      bl #0x30e2e0
005fa390  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005fa394  74 52 f4 eb                                      bl #0x30ed6c
005fa398  48 e0 9d e5                                      ldr lr, [sp, #0x48]
005fa39c  44 10 9d e5                                      ldr r1, [sp, #0x44]
005fa3a0  00 70 a0 e1                                      mov r7, r0
005fa3a4  0e 00 04 e0                                      and r0, r4, lr
005fa3a8  30 01 a0 e1                                      lsr r0, r0, r1
005fa3ac  cb 4f f4 eb                                      bl #0x30e2e0
005fa3b0  40 10 9d e5                                      ldr r1, [sp, #0x40]
005fa3b4  6c 52 f4 eb                                      bl #0x30ed6c
005fa3b8  00 10 a0 e1                                      mov r1, r0
005fa3bc  07 00 a0 e1                                      mov r0, r7
005fa3c0  f7 51 f4 eb                                      bl #0x30eba4
005fa3c4  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005fa3c8  38 30 9d e5                                      ldr r3, [sp, #0x38]
005fa3cc  00 70 a0 e1                                      mov r7, r0
005fa3d0  02 00 04 e0                                      and r0, r4, r2
005fa3d4  30 03 a0 e1                                      lsr r0, r0, r3
005fa3d8  c0 4f f4 eb                                      bl #0x30e2e0
005fa3dc  34 10 9d e5                                      ldr r1, [sp, #0x34]
005fa3e0  61 52 f4 eb                                      bl #0x30ed6c
005fa3e4  00 10 a0 e1                                      mov r1, r0
005fa3e8  07 00 a0 e1                                      mov r0, r7
005fa3ec  ec 51 f4 eb                                      bl #0x30eba4
005fa3f0  00 1f 0f e3                                      movw r1, #0xff00
005fa3f4  7f 17 44 e3                                      movt r1, #0x477f
005fa3f8  5b 52 f4 eb                                      bl #0x30ed6c
005fa3fc  a7 0f 0b eb                                      bl #0x8be2a0
005fa400  01 60 56 e2                                      subs r6, r6, #1
005fa404  b5 00 8a e1                                      strh r0, [sl, r5]
005fa408  02 50 85 e2                                      add r5, r5, #2
005fa40c  da ff ff 1a                                      bne #0x5fa37c
005fa410  64 41 9d e5                                      ldr r4, [sp, #0x164]
005fa414  01 40 54 e2                                      subs r4, r4, #1
005fa418  64 41 8d e5                                      str r4, [sp, #0x164]
005fa41c  a4 fe ff 0a                                      beq #0x5f9eb4
005fa420  64 50 9d e5                                      ldr r5, [sp, #0x64]
005fa424  58 70 9d e5                                      ldr r7, [sp, #0x58]
005fa428  68 a0 9d e5                                      ldr sl, [sp, #0x68]
005fa42c  5c 60 9d e5                                      ldr r6, [sp, #0x5c]
005fa430  0a 70 87 e0                                      add r7, r7, sl
005fa434  06 80 85 e0                                      add r8, r5, r6
005fa438  58 70 8d e5                                      str r7, [sp, #0x58]
005fa43c  07 a0 a0 e1                                      mov sl, r7
005fa440  64 80 8d e5                                      str r8, [sp, #0x64]
005fa444  c7 ff ff ea                                      b #0x5fa368
005fa448  83 00 54 e1                                      cmp r4, r3, lsl #1
005fa44c  06 40 84 d0                                      addle r4, r4, r6
005fa450  04 30 63 d0                                      rsble r3, r3, r4
005fa454  14 30 c1 d5                                      strble r3, [r1, #0x14]
005fa458  cf fe ff ea                                      b #0x5f9f9c
; mapping-symbol data/literal pool
005fa45c  cc b4 39 00 34 1f 00 00 00 a8 2e 00 c8 cc 2c 00  .byte 0xcc, 0xb4, 0x39, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x00, 0xa8, 0x2e, 0x00, 0xc8, 0xcc, 0x2c, 0x00
005fa46c  cc a5 2e 00 64 a6 2e 00 c4 a3 2e 00              .byte 0xcc, 0xa5, 0x2e, 0x00, 0x64, 0xa6, 0x2e, 0x00, 0xc4, 0xa3, 0x2e, 0x00
; decoder-mode: arm
005fa478  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fa47c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005fa480  44 60 9d e5                                      ldr r6, [sp, #0x44]
005fa484  00 00 52 e3                                      cmp r2, #0
005fa488  15 a0 d3 e5                                      ldrb sl, [r3, #0x15]
005fa48c  64 90 8d e5                                      str sb, [sp, #0x64]
005fa490  06 00 00 0a                                      beq #0x5fa4b0
005fa494  64 51 9d e5                                      ldr r5, [sp, #0x164]
005fa498  58 71 9d e5                                      ldr r7, [sp, #0x158]
005fa49c  00 c0 69 e2                                      rsb ip, sb, #0
005fa4a0  01 30 45 e2                                      sub r3, r5, #1
005fa4a4  93 79 23 e0                                      mla r3, r3, sb, r7
005fa4a8  64 c0 8d e5                                      str ip, [sp, #0x64]
005fa4ac  68 30 8d e5                                      str r3, [sp, #0x68]
005fa4b0  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fa4b4  00 00 50 e3                                      cmp r0, #0
005fa4b8  7d fe ff 0a                                      beq #0x5f9eb4
005fa4bc  cc 90 dd e5                                      ldrb sb, [sp, #0xcc]
005fa4c0  68 00 9d e5                                      ldr r0, [sp, #0x68]
005fa4c4  60 80 8d e5                                      str r8, [sp, #0x60]
005fa4c8  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
005fa4cc  c4 20 9d e5                                      ldr r2, [sp, #0xc4]
005fa4d0  cd 30 dd e5                                      ldrb r3, [sp, #0xcd]
005fa4d4  b8 50 9d e5                                      ldr r5, [sp, #0xb8]
005fa4d8  c8 70 9d e5                                      ldr r7, [sp, #0xc8]
005fa4dc  ce 80 dd e5                                      ldrb r8, [sp, #0xce]
005fa4e0  bc c0 9d e5                                      ldr ip, [sp, #0xbc]
005fa4e4  c0 b0 9d e5                                      ldr fp, [sp, #0xc0]
005fa4e8  50 90 8d e5                                      str sb, [sp, #0x50]
005fa4ec  4c 10 8d e5                                      str r1, [sp, #0x4c]
005fa4f0  48 20 8d e5                                      str r2, [sp, #0x48]
005fa4f4  44 30 8d e5                                      str r3, [sp, #0x44]
005fa4f8  40 50 8d e5                                      str r5, [sp, #0x40]
005fa4fc  3c 70 8d e5                                      str r7, [sp, #0x3c]
005fa500  38 80 8d e5                                      str r8, [sp, #0x38]
005fa504  34 c0 8d e5                                      str ip, [sp, #0x34]
005fa508  58 00 8d e5                                      str r0, [sp, #0x58]
005fa50c  00 90 a0 e1                                      mov sb, r0
005fa510  00 00 54 e3                                      cmp r4, #0
005fa514  00 50 a0 13                                      movne r5, #0
005fa518  24 00 00 0a                                      beq #0x5fa5b0
005fa51c  ba 70 96 e0                                      ldrh r7, [r6], sl
005fa520  50 10 9d e5                                      ldr r1, [sp, #0x50]
005fa524  0b 00 07 e0                                      and r0, r7, fp
005fa528  30 01 a0 e1                                      lsr r0, r0, r1
005fa52c  6b 4f f4 eb                                      bl #0x30e2e0
005fa530  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005fa534  0c 52 f4 eb                                      bl #0x30ed6c
005fa538  48 20 9d e5                                      ldr r2, [sp, #0x48]
005fa53c  44 30 9d e5                                      ldr r3, [sp, #0x44]
005fa540  00 80 a0 e1                                      mov r8, r0
005fa544  02 00 07 e0                                      and r0, r7, r2
005fa548  30 03 a0 e1                                      lsr r0, r0, r3
005fa54c  63 4f f4 eb                                      bl #0x30e2e0
005fa550  40 10 9d e5                                      ldr r1, [sp, #0x40]
005fa554  04 52 f4 eb                                      bl #0x30ed6c
005fa558  00 10 a0 e1                                      mov r1, r0
005fa55c  08 00 a0 e1                                      mov r0, r8
005fa560  8f 51 f4 eb                                      bl #0x30eba4
005fa564  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005fa568  38 e0 9d e5                                      ldr lr, [sp, #0x38]
005fa56c  00 80 a0 e1                                      mov r8, r0
005fa570  0c 00 07 e0                                      and r0, r7, ip
005fa574  30 0e a0 e1                                      lsr r0, r0, lr
005fa578  58 4f f4 eb                                      bl #0x30e2e0
005fa57c  34 10 9d e5                                      ldr r1, [sp, #0x34]
005fa580  f9 51 f4 eb                                      bl #0x30ed6c
005fa584  00 10 a0 e1                                      mov r1, r0
005fa588  08 00 a0 e1                                      mov r0, r8
005fa58c  84 51 f4 eb                                      bl #0x30eba4
005fa590  43 14 a0 e3                                      mov r1, #0x43000000
005fa594  7f 18 81 e2                                      add r1, r1, #0x7f0000
005fa598  f3 51 f4 eb                                      bl #0x30ed6c
005fa59c  3f 0f 0b eb                                      bl #0x8be2a0
005fa5a0  05 00 c9 e7                                      strb r0, [sb, r5]
005fa5a4  01 50 85 e2                                      add r5, r5, #1
005fa5a8  05 00 54 e1                                      cmp r4, r5
005fa5ac  da ff ff 1a                                      bne #0x5fa51c
005fa5b0  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fa5b4  01 00 50 e2                                      subs r0, r0, #1
005fa5b8  64 01 8d e5                                      str r0, [sp, #0x164]
005fa5bc  3c fe ff 0a                                      beq #0x5f9eb4
005fa5c0  60 10 9d e5                                      ldr r1, [sp, #0x60]
005fa5c4  58 30 9d e5                                      ldr r3, [sp, #0x58]
005fa5c8  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005fa5cc  64 50 9d e5                                      ldr r5, [sp, #0x64]
005fa5d0  02 60 81 e0                                      add r6, r1, r2
005fa5d4  05 30 83 e0                                      add r3, r3, r5
005fa5d8  58 30 8d e5                                      str r3, [sp, #0x58]
005fa5dc  03 90 a0 e1                                      mov sb, r3
005fa5e0  60 60 8d e5                                      str r6, [sp, #0x60]
005fa5e4  c9 ff ff ea                                      b #0x5fa510
005fa5e8  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fa5ec  40 30 9d e5                                      ldr r3, [sp, #0x40]
005fa5f0  48 60 9d e5                                      ldr r6, [sp, #0x48]
005fa5f4  00 00 52 e3                                      cmp r2, #0
005fa5f8  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
005fa5fc  15 a0 d3 e5                                      ldrb sl, [r3, #0x15]
005fa600  64 90 8d e5                                      str sb, [sp, #0x64]
005fa604  05 00 00 0a                                      beq #0x5fa620
005fa608  64 51 9d e5                                      ldr r5, [sp, #0x164]
005fa60c  58 c1 9d e5                                      ldr ip, [sp, #0x158]
005fa610  00 00 69 e2                                      rsb r0, sb, #0
005fa614  01 70 45 e2                                      sub r7, r5, #1
005fa618  97 c9 27 e0                                      mla r7, r7, sb, ip
005fa61c  64 00 8d e5                                      str r0, [sp, #0x64]
005fa620  64 11 9d e5                                      ldr r1, [sp, #0x164]
005fa624  00 00 51 e3                                      cmp r1, #0
005fa628  21 fe ff 0a                                      beq #0x5f9eb4
005fa62c  cc 20 dd e5                                      ldrb r2, [sp, #0xcc]
005fa630  60 80 8d e5                                      str r8, [sp, #0x60]
005fa634  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
005fa638  50 20 8d e5                                      str r2, [sp, #0x50]
005fa63c  c4 50 9d e5                                      ldr r5, [sp, #0xc4]
005fa640  cd 80 dd e5                                      ldrb r8, [sp, #0xcd]
005fa644  b8 c0 9d e5                                      ldr ip, [sp, #0xb8]
005fa648  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
005fa64c  ce 10 dd e5                                      ldrb r1, [sp, #0xce]
005fa650  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
005fa654  c0 b0 9d e5                                      ldr fp, [sp, #0xc0]
005fa658  4c 30 8d e5                                      str r3, [sp, #0x4c]
005fa65c  48 50 8d e5                                      str r5, [sp, #0x48]
005fa660  44 80 8d e5                                      str r8, [sp, #0x44]
005fa664  40 c0 8d e5                                      str ip, [sp, #0x40]
005fa668  3c 00 8d e5                                      str r0, [sp, #0x3c]
005fa66c  38 10 8d e5                                      str r1, [sp, #0x38]
005fa670  34 20 8d e5                                      str r2, [sp, #0x34]
005fa674  58 70 8d e5                                      str r7, [sp, #0x58]
005fa678  00 00 54 e3                                      cmp r4, #0
005fa67c  00 50 a0 13                                      movne r5, #0
005fa680  24 00 00 0a                                      beq #0x5fa718
005fa684  0a 80 96 e6                                      ldr r8, [r6], sl
005fa688  50 30 9d e5                                      ldr r3, [sp, #0x50]
005fa68c  0b 00 08 e0                                      and r0, r8, fp
005fa690  30 03 a0 e1                                      lsr r0, r0, r3
005fa694  11 4f f4 eb                                      bl #0x30e2e0
005fa698  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005fa69c  b2 51 f4 eb                                      bl #0x30ed6c
005fa6a0  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005fa6a4  44 e0 9d e5                                      ldr lr, [sp, #0x44]
005fa6a8  00 90 a0 e1                                      mov sb, r0
005fa6ac  0c 00 08 e0                                      and r0, r8, ip
005fa6b0  30 0e a0 e1                                      lsr r0, r0, lr
005fa6b4  09 4f f4 eb                                      bl #0x30e2e0
005fa6b8  40 10 9d e5                                      ldr r1, [sp, #0x40]
005fa6bc  aa 51 f4 eb                                      bl #0x30ed6c
005fa6c0  00 10 a0 e1                                      mov r1, r0
005fa6c4  09 00 a0 e1                                      mov r0, sb
005fa6c8  35 51 f4 eb                                      bl #0x30eba4
005fa6cc  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
005fa6d0  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fa6d4  00 90 a0 e1                                      mov sb, r0
005fa6d8  01 00 08 e0                                      and r0, r8, r1
005fa6dc  30 02 a0 e1                                      lsr r0, r0, r2
005fa6e0  fe 4e f4 eb                                      bl #0x30e2e0
005fa6e4  34 10 9d e5                                      ldr r1, [sp, #0x34]
005fa6e8  9f 51 f4 eb                                      bl #0x30ed6c
005fa6ec  00 10 a0 e1                                      mov r1, r0
005fa6f0  09 00 a0 e1                                      mov r0, sb
005fa6f4  2a 51 f4 eb                                      bl #0x30eba4
005fa6f8  43 14 a0 e3                                      mov r1, #0x43000000
005fa6fc  7f 18 81 e2                                      add r1, r1, #0x7f0000
005fa700  99 51 f4 eb                                      bl #0x30ed6c
005fa704  e5 0e 0b eb                                      bl #0x8be2a0
005fa708  05 00 c7 e7                                      strb r0, [r7, r5]
005fa70c  01 50 85 e2                                      add r5, r5, #1
005fa710  05 00 54 e1                                      cmp r4, r5
005fa714  da ff ff 1a                                      bne #0x5fa684
005fa718  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fa71c  01 30 53 e2                                      subs r3, r3, #1
005fa720  64 31 8d e5                                      str r3, [sp, #0x164]
005fa724  e2 fd ff 0a                                      beq #0x5f9eb4
005fa728  60 50 9d e5                                      ldr r5, [sp, #0x60]
005fa72c  5c 70 9d e5                                      ldr r7, [sp, #0x5c]
005fa730  58 80 9d e5                                      ldr r8, [sp, #0x58]
005fa734  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005fa738  07 60 85 e0                                      add r6, r5, r7
005fa73c  60 60 8d e5                                      str r6, [sp, #0x60]
005fa740  0c 80 88 e0                                      add r8, r8, ip
005fa744  58 80 8d e5                                      str r8, [sp, #0x58]
005fa748  08 70 a0 e1                                      mov r7, r8
005fa74c  c9 ff ff ea                                      b #0x5fa678
005fa750  58 11 9d e5                                      ldr r1, [sp, #0x158]
005fa754  0b 00 95 e7                                      ldr r0, [r5, fp]
005fa758  a0 10 8d e5                                      str r1, [sp, #0xa0]
005fa75c  28 10 a0 e3                                      mov r1, #0x28
005fa760  91 07 21 e0                                      mla r1, r1, r7, r0
005fa764  19 10 d1 e5                                      ldrb r1, [r1, #0x19]
005fa768  08 00 51 e3                                      cmp r1, #8
005fa76c  ff 04 00 8a                                      bhi #0x5fbb70
005fa770  01 00 13 e3                                      tst r3, #1
005fa774  f4 05 00 1a                                      bne #0x5fbf4c
005fa778  00 10 a0 e3                                      mov r1, #0
005fa77c  40 10 8d e5                                      str r1, [sp, #0x40]
005fa780  0b 30 95 e7                                      ldr r3, [r5, fp]
005fa784  28 00 a0 e3                                      mov r0, #0x28
005fa788  b4 c0 8d e2                                      add ip, sp, #0xb4
005fa78c  90 37 27 e0                                      mla r7, r0, r7, r3
005fa790  44 a0 8d e5                                      str sl, [sp, #0x44]
005fa794  90 3a 20 e0                                      mla r0, r0, sl, r3
005fa798  4c 90 8d e5                                      str sb, [sp, #0x4c]
005fa79c  0c 10 a0 e1                                      mov r1, ip
005fa7a0  00 20 a0 e3                                      mov r2, #0
005fa7a4  3c 60 8d e5                                      str r6, [sp, #0x3c]
005fa7a8  48 80 8d e5                                      str r8, [sp, #0x48]
005fa7ac  50 40 8d e5                                      str r4, [sp, #0x50]
005fa7b0  05 90 a0 e1                                      mov sb, r5
005fa7b4  07 a0 a0 e1                                      mov sl, r7
005fa7b8  02 50 8a e0                                      add r5, sl, r2
005fa7bc  18 30 d0 e5                                      ldrb r3, [r0, #0x18]
005fa7c0  18 40 d7 e5                                      ldrb r4, [r7, #0x18]
005fa7c4  04 80 95 e5                                      ldr r8, [r5, #4]
005fa7c8  1c 60 d7 e5                                      ldrb r6, [r7, #0x1c]
005fa7cc  1c 50 d0 e5                                      ldrb r5, [r0, #0x1c]
005fa7d0  04 00 53 e1                                      cmp r3, r4
005fa7d4  02 80 8c e7                                      str r8, [ip, r2]
005fa7d8  10 50 c1 e5                                      strb r5, [r1, #0x10]
005fa7dc  14 60 c1 e5                                      strb r6, [r1, #0x14]
005fa7e0  77 00 00 9a                                      bls #0x5fa9c4
005fa7e4  05 30 83 e0                                      add r3, r3, r5
005fa7e8  03 30 64 e0                                      rsb r3, r4, r3
005fa7ec  10 30 c1 e5                                      strb r3, [r1, #0x10]
005fa7f0  04 20 82 e2                                      add r2, r2, #4
005fa7f4  10 00 52 e3                                      cmp r2, #0x10
005fa7f8  01 00 80 e2                                      add r0, r0, #1
005fa7fc  01 10 81 e2                                      add r1, r1, #1
005fa800  01 70 87 e2                                      add r7, r7, #1
005fa804  eb ff ff 1a                                      bne #0x5fa7b8
005fa808  09 50 a0 e1                                      mov r5, sb
005fa80c  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
005fa810  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005fa814  0b 10 95 e7                                      ldr r1, [r5, fp]
005fa818  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005fa81c  3c 30 8d e5                                      str r3, [sp, #0x3c]
005fa820  28 30 a0 e3                                      mov r3, #0x28
005fa824  93 1a 23 e0                                      mla r3, r3, sl, r1
005fa828  38 50 9d e5                                      ldr r5, [sp, #0x38]
005fa82c  40 70 9d e5                                      ldr r7, [sp, #0x40]
005fa830  02 30 83 e0                                      add r3, r3, r2
005fa834  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
005fa838  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
005fa83c  05 30 d3 e5                                      ldrb r3, [r3, #5]
005fa840  0a 70 07 e0                                      and r7, r7, sl
005fa844  00 00 55 e3                                      cmp r5, #0
005fa848  48 80 9d e5                                      ldr r8, [sp, #0x48]
005fa84c  50 40 9d e5                                      ldr r4, [sp, #0x50]
005fa850  38 70 8d e5                                      str r7, [sp, #0x38]
005fa854  40 30 8d e5                                      str r3, [sp, #0x40]
005fa858  6c 90 8d e5                                      str sb, [sp, #0x6c]
005fa85c  06 00 00 0a                                      beq #0x5fa87c
005fa860  64 c1 9d e5                                      ldr ip, [sp, #0x164]
005fa864  58 01 9d e5                                      ldr r0, [sp, #0x158]
005fa868  00 10 69 e2                                      rsb r1, sb, #0
005fa86c  01 30 4c e2                                      sub r3, ip, #1
005fa870  93 09 23 e0                                      mla r3, r3, sb, r0
005fa874  6c 10 8d e5                                      str r1, [sp, #0x6c]
005fa878  a0 30 8d e5                                      str r3, [sp, #0xa0]
005fa87c  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fa880  00 00 52 e3                                      cmp r2, #0
005fa884  8a fd ff 0a                                      beq #0x5f9eb4
005fa888  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
005fa88c  c6 50 dd e5                                      ldrb r5, [sp, #0xc6]
005fa890  ca c0 dd e5                                      ldrb ip, [sp, #0xca]
005fa894  58 30 8d e5                                      str r3, [sp, #0x58]
005fa898  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
005fa89c  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
005fa8a0  c7 10 dd e5                                      ldrb r1, [sp, #0xc7]
005fa8a4  cb 20 dd e5                                      ldrb r2, [sp, #0xcb]
005fa8a8  68 80 8d e5                                      str r8, [sp, #0x68]
005fa8ac  c4 90 dd e5                                      ldrb sb, [sp, #0xc4]
005fa8b0  c8 a0 dd e5                                      ldrb sl, [sp, #0xc8]
005fa8b4  b4 80 9d e5                                      ldr r8, [sp, #0xb4]
005fa8b8  c5 70 dd e5                                      ldrb r7, [sp, #0xc5]
005fa8bc  c9 b0 dd e5                                      ldrb fp, [sp, #0xc9]
005fa8c0  50 50 8d e5                                      str r5, [sp, #0x50]
005fa8c4  4c c0 8d e5                                      str ip, [sp, #0x4c]
005fa8c8  48 00 8d e5                                      str r0, [sp, #0x48]
005fa8cc  44 10 8d e5                                      str r1, [sp, #0x44]
005fa8d0  34 20 8d e5                                      str r2, [sp, #0x34]
005fa8d4  60 30 8d e5                                      str r3, [sp, #0x60]
005fa8d8  03 50 a0 e1                                      mov r5, r3
005fa8dc  64 40 8d e5                                      str r4, [sp, #0x64]
005fa8e0  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005fa8e4  00 00 5c e3                                      cmp ip, #0
005fa8e8  27 00 00 0a                                      beq #0x5fa98c
005fa8ec  64 10 9d e5                                      ldr r1, [sp, #0x64]
005fa8f0  00 20 a0 e3                                      mov r2, #0
005fa8f4  54 70 8d e5                                      str r7, [sp, #0x54]
005fa8f8  70 50 8d e5                                      str r5, [sp, #0x70]
005fa8fc  00 30 d6 e5                                      ldrb r3, [r6]
005fa900  40 40 9d e5                                      ldr r4, [sp, #0x40]
005fa904  54 50 9d e5                                      ldr r5, [sp, #0x54]
005fa908  00 31 cd e5                                      strb r3, [sp, #0x100]
005fa90c  01 30 d6 e5                                      ldrb r3, [r6, #1]
005fa910  50 70 9d e5                                      ldr r7, [sp, #0x50]
005fa914  01 10 51 e2                                      subs r1, r1, #1
005fa918  01 31 cd e5                                      strb r3, [sp, #0x101]
005fa91c  02 30 d6 e5                                      ldrb r3, [r6, #2]
005fa920  04 60 86 e0                                      add r6, r6, r4
005fa924  02 31 cd e5                                      strb r3, [sp, #0x102]
005fa928  00 31 9d e5                                      ldr r3, [sp, #0x100]
005fa92c  33 c5 a0 e1                                      lsr ip, r3, r5
005fa930  33 47 a0 e1                                      lsr r4, r3, r7
005fa934  58 50 9d e5                                      ldr r5, [sp, #0x58]
005fa938  44 70 9d e5                                      ldr r7, [sp, #0x44]
005fa93c  33 09 a0 e1                                      lsr r0, r3, sb
005fa940  1c cb 05 e0                                      and ip, r5, ip, lsl fp
005fa944  33 37 a0 e1                                      lsr r3, r3, r7
005fa948  48 50 9d e5                                      ldr r5, [sp, #0x48]
005fa94c  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
005fa950  10 0a 08 e0                                      and r0, r8, r0, lsl sl
005fa954  14 47 05 e0                                      and r4, r5, r4, lsl r7
005fa958  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
005fa95c  34 70 9d e5                                      ldr r7, [sp, #0x34]
005fa960  00 00 8c e1                                      orr r0, ip, r0
005fa964  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005fa968  13 37 05 e0                                      and r3, r5, r3, lsl r7
005fa96c  04 40 80 e1                                      orr r4, r0, r4
005fa970  70 00 9d e5                                      ldr r0, [sp, #0x70]
005fa974  03 30 84 e1                                      orr r3, r4, r3
005fa978  0c 30 83 e1                                      orr r3, r3, ip
005fa97c  02 30 80 e7                                      str r3, [r0, r2]
005fa980  04 20 82 e2                                      add r2, r2, #4
005fa984  dc ff ff 1a                                      bne #0x5fa8fc
005fa988  54 70 9d e5                                      ldr r7, [sp, #0x54]
005fa98c  64 11 9d e5                                      ldr r1, [sp, #0x164]
005fa990  01 10 51 e2                                      subs r1, r1, #1
005fa994  64 11 8d e5                                      str r1, [sp, #0x164]
005fa998  45 fd ff 0a                                      beq #0x5f9eb4
005fa99c  68 20 9d e5                                      ldr r2, [sp, #0x68]
005fa9a0  60 40 9d e5                                      ldr r4, [sp, #0x60]
005fa9a4  6c 50 9d e5                                      ldr r5, [sp, #0x6c]
005fa9a8  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005fa9ac  05 40 84 e0                                      add r4, r4, r5
005fa9b0  03 60 82 e0                                      add r6, r2, r3
005fa9b4  60 40 8d e5                                      str r4, [sp, #0x60]
005fa9b8  04 50 a0 e1                                      mov r5, r4
005fa9bc  68 60 8d e5                                      str r6, [sp, #0x68]
005fa9c0  c6 ff ff ea                                      b #0x5fa8e0
005fa9c4  83 00 54 e1                                      cmp r4, r3, lsl #1
005fa9c8  06 40 84 d0                                      addle r4, r4, r6
005fa9cc  04 30 63 d0                                      rsble r3, r3, r4
005fa9d0  14 30 c1 d5                                      strble r3, [r1, #0x14]
005fa9d4  85 ff ff ea                                      b #0x5fa7f0
005fa9d8  58 11 9d e5                                      ldr r1, [sp, #0x158]
005fa9dc  0b 00 95 e7                                      ldr r0, [r5, fp]
005fa9e0  a0 10 8d e5                                      str r1, [sp, #0xa0]
005fa9e4  28 10 a0 e3                                      mov r1, #0x28
005fa9e8  91 07 21 e0                                      mla r1, r1, r7, r0
005fa9ec  19 10 d1 e5                                      ldrb r1, [r1, #0x19]
005fa9f0  08 00 51 e3                                      cmp r1, #8
005fa9f4  6f 02 00 8a                                      bhi #0x5fb3b8
005fa9f8  01 00 13 e3                                      tst r3, #1
005fa9fc  57 05 00 1a                                      bne #0x5fbf60
005faa00  00 10 a0 e3                                      mov r1, #0
005faa04  40 10 8d e5                                      str r1, [sp, #0x40]
005faa08  0b 30 95 e7                                      ldr r3, [r5, fp]
005faa0c  28 00 a0 e3                                      mov r0, #0x28
005faa10  b4 c0 8d e2                                      add ip, sp, #0xb4
005faa14  90 37 27 e0                                      mla r7, r0, r7, r3
005faa18  44 a0 8d e5                                      str sl, [sp, #0x44]
005faa1c  90 3a 20 e0                                      mla r0, r0, sl, r3
005faa20  4c 90 8d e5                                      str sb, [sp, #0x4c]
005faa24  0c 10 a0 e1                                      mov r1, ip
005faa28  00 20 a0 e3                                      mov r2, #0
005faa2c  3c 60 8d e5                                      str r6, [sp, #0x3c]
005faa30  48 80 8d e5                                      str r8, [sp, #0x48]
005faa34  50 40 8d e5                                      str r4, [sp, #0x50]
005faa38  05 90 a0 e1                                      mov sb, r5
005faa3c  07 a0 a0 e1                                      mov sl, r7
005faa40  02 50 8a e0                                      add r5, sl, r2
005faa44  18 30 d0 e5                                      ldrb r3, [r0, #0x18]
005faa48  18 40 d7 e5                                      ldrb r4, [r7, #0x18]
005faa4c  04 80 95 e5                                      ldr r8, [r5, #4]
005faa50  1c 60 d7 e5                                      ldrb r6, [r7, #0x1c]
005faa54  1c 50 d0 e5                                      ldrb r5, [r0, #0x1c]
005faa58  04 00 53 e1                                      cmp r3, r4
005faa5c  02 80 8c e7                                      str r8, [ip, r2]
005faa60  10 50 c1 e5                                      strb r5, [r1, #0x10]
005faa64  14 60 c1 e5                                      strb r6, [r1, #0x14]
005faa68  77 00 00 9a                                      bls #0x5fac4c
005faa6c  05 30 83 e0                                      add r3, r3, r5
005faa70  03 30 64 e0                                      rsb r3, r4, r3
005faa74  10 30 c1 e5                                      strb r3, [r1, #0x10]
005faa78  04 20 82 e2                                      add r2, r2, #4
005faa7c  10 00 52 e3                                      cmp r2, #0x10
005faa80  01 00 80 e2                                      add r0, r0, #1
005faa84  01 10 81 e2                                      add r1, r1, #1
005faa88  01 70 87 e2                                      add r7, r7, #1
005faa8c  eb ff ff 1a                                      bne #0x5faa40
005faa90  09 50 a0 e1                                      mov r5, sb
005faa94  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
005faa98  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005faa9c  0b 10 95 e7                                      ldr r1, [r5, fp]
005faaa0  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005faaa4  3c 30 8d e5                                      str r3, [sp, #0x3c]
005faaa8  28 30 a0 e3                                      mov r3, #0x28
005faaac  93 1a 23 e0                                      mla r3, r3, sl, r1
005faab0  38 50 9d e5                                      ldr r5, [sp, #0x38]
005faab4  40 70 9d e5                                      ldr r7, [sp, #0x40]
005faab8  02 30 83 e0                                      add r3, r3, r2
005faabc  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
005faac0  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
005faac4  05 30 d3 e5                                      ldrb r3, [r3, #5]
005faac8  0a 70 07 e0                                      and r7, r7, sl
005faacc  00 00 55 e3                                      cmp r5, #0
005faad0  48 80 9d e5                                      ldr r8, [sp, #0x48]
005faad4  50 40 9d e5                                      ldr r4, [sp, #0x50]
005faad8  38 70 8d e5                                      str r7, [sp, #0x38]
005faadc  40 30 8d e5                                      str r3, [sp, #0x40]
005faae0  6c 90 8d e5                                      str sb, [sp, #0x6c]
005faae4  06 00 00 0a                                      beq #0x5fab04
005faae8  64 c1 9d e5                                      ldr ip, [sp, #0x164]
005faaec  58 01 9d e5                                      ldr r0, [sp, #0x158]
005faaf0  00 10 69 e2                                      rsb r1, sb, #0
005faaf4  01 30 4c e2                                      sub r3, ip, #1
005faaf8  93 09 23 e0                                      mla r3, r3, sb, r0
005faafc  6c 10 8d e5                                      str r1, [sp, #0x6c]
005fab00  a0 30 8d e5                                      str r3, [sp, #0xa0]
005fab04  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fab08  00 00 52 e3                                      cmp r2, #0
005fab0c  e8 fc ff 0a                                      beq #0x5f9eb4
005fab10  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
005fab14  c6 50 dd e5                                      ldrb r5, [sp, #0xc6]
005fab18  ca c0 dd e5                                      ldrb ip, [sp, #0xca]
005fab1c  58 30 8d e5                                      str r3, [sp, #0x58]
005fab20  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
005fab24  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
005fab28  c7 10 dd e5                                      ldrb r1, [sp, #0xc7]
005fab2c  cb 20 dd e5                                      ldrb r2, [sp, #0xcb]
005fab30  68 80 8d e5                                      str r8, [sp, #0x68]
005fab34  c4 90 dd e5                                      ldrb sb, [sp, #0xc4]
005fab38  c8 a0 dd e5                                      ldrb sl, [sp, #0xc8]
005fab3c  b4 80 9d e5                                      ldr r8, [sp, #0xb4]
005fab40  c5 70 dd e5                                      ldrb r7, [sp, #0xc5]
005fab44  c9 b0 dd e5                                      ldrb fp, [sp, #0xc9]
005fab48  50 50 8d e5                                      str r5, [sp, #0x50]
005fab4c  4c c0 8d e5                                      str ip, [sp, #0x4c]
005fab50  48 00 8d e5                                      str r0, [sp, #0x48]
005fab54  44 10 8d e5                                      str r1, [sp, #0x44]
005fab58  34 20 8d e5                                      str r2, [sp, #0x34]
005fab5c  60 30 8d e5                                      str r3, [sp, #0x60]
005fab60  03 50 a0 e1                                      mov r5, r3
005fab64  64 40 8d e5                                      str r4, [sp, #0x64]
005fab68  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005fab6c  00 00 5c e3                                      cmp ip, #0
005fab70  27 00 00 0a                                      beq #0x5fac14
005fab74  64 10 9d e5                                      ldr r1, [sp, #0x64]
005fab78  00 20 a0 e3                                      mov r2, #0
005fab7c  54 70 8d e5                                      str r7, [sp, #0x54]
005fab80  70 50 8d e5                                      str r5, [sp, #0x70]
005fab84  00 30 d6 e5                                      ldrb r3, [r6]
005fab88  40 40 9d e5                                      ldr r4, [sp, #0x40]
005fab8c  54 50 9d e5                                      ldr r5, [sp, #0x54]
005fab90  08 31 cd e5                                      strb r3, [sp, #0x108]
005fab94  01 30 d6 e5                                      ldrb r3, [r6, #1]
005fab98  50 70 9d e5                                      ldr r7, [sp, #0x50]
005fab9c  01 10 51 e2                                      subs r1, r1, #1
005faba0  09 31 cd e5                                      strb r3, [sp, #0x109]
005faba4  02 30 d6 e5                                      ldrb r3, [r6, #2]
005faba8  04 60 86 e0                                      add r6, r6, r4
005fabac  0a 31 cd e5                                      strb r3, [sp, #0x10a]
005fabb0  08 31 9d e5                                      ldr r3, [sp, #0x108]
005fabb4  33 c5 a0 e1                                      lsr ip, r3, r5
005fabb8  33 47 a0 e1                                      lsr r4, r3, r7
005fabbc  58 50 9d e5                                      ldr r5, [sp, #0x58]
005fabc0  44 70 9d e5                                      ldr r7, [sp, #0x44]
005fabc4  33 09 a0 e1                                      lsr r0, r3, sb
005fabc8  1c cb 05 e0                                      and ip, r5, ip, lsl fp
005fabcc  33 37 a0 e1                                      lsr r3, r3, r7
005fabd0  48 50 9d e5                                      ldr r5, [sp, #0x48]
005fabd4  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
005fabd8  10 0a 08 e0                                      and r0, r8, r0, lsl sl
005fabdc  14 47 05 e0                                      and r4, r5, r4, lsl r7
005fabe0  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
005fabe4  34 70 9d e5                                      ldr r7, [sp, #0x34]
005fabe8  00 00 8c e1                                      orr r0, ip, r0
005fabec  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005fabf0  13 37 05 e0                                      and r3, r5, r3, lsl r7
005fabf4  04 40 80 e1                                      orr r4, r0, r4
005fabf8  70 00 9d e5                                      ldr r0, [sp, #0x70]
005fabfc  03 30 84 e1                                      orr r3, r4, r3
005fac00  0c 30 83 e1                                      orr r3, r3, ip
005fac04  b2 30 80 e1                                      strh r3, [r0, r2]
005fac08  02 20 82 e2                                      add r2, r2, #2
005fac0c  dc ff ff 1a                                      bne #0x5fab84
005fac10  54 70 9d e5                                      ldr r7, [sp, #0x54]
005fac14  64 11 9d e5                                      ldr r1, [sp, #0x164]
005fac18  01 10 51 e2                                      subs r1, r1, #1
005fac1c  64 11 8d e5                                      str r1, [sp, #0x164]
005fac20  a3 fc ff 0a                                      beq #0x5f9eb4
005fac24  68 20 9d e5                                      ldr r2, [sp, #0x68]
005fac28  60 40 9d e5                                      ldr r4, [sp, #0x60]
005fac2c  6c 50 9d e5                                      ldr r5, [sp, #0x6c]
005fac30  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005fac34  05 40 84 e0                                      add r4, r4, r5
005fac38  03 60 82 e0                                      add r6, r2, r3
005fac3c  60 40 8d e5                                      str r4, [sp, #0x60]
005fac40  04 50 a0 e1                                      mov r5, r4
005fac44  68 60 8d e5                                      str r6, [sp, #0x68]
005fac48  c6 ff ff ea                                      b #0x5fab68
005fac4c  83 00 54 e1                                      cmp r4, r3, lsl #1
005fac50  06 40 84 d0                                      addle r4, r4, r6
005fac54  04 30 63 d0                                      rsble r3, r3, r4
005fac58  14 30 c1 d5                                      strble r3, [r1, #0x14]
005fac5c  85 ff ff ea                                      b #0x5faa78
005fac60  0a 10 a0 e1                                      mov r1, sl
005fac64  b4 00 8d e2                                      add r0, sp, #0xb4
005fac68  0d cc ff eb                                      bl #0x5edca4
005fac6c  0b 30 95 e7                                      ldr r3, [r5, fp]
005fac70  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005fac74  28 20 a0 e3                                      mov r2, #0x28
005fac78  92 3a 2a e0                                      mla sl, r2, sl, r3
005fac7c  00 00 5c e3                                      cmp ip, #0
005fac80  38 90 8d e5                                      str sb, [sp, #0x38]
005fac84  15 a0 da e5                                      ldrb sl, [sl, #0x15]
005fac88  04 00 00 0a                                      beq #0x5faca0
005fac8c  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fac90  00 10 69 e2                                      rsb r1, sb, #0
005fac94  38 10 8d e5                                      str r1, [sp, #0x38]
005fac98  01 30 40 e2                                      sub r3, r0, #1
005fac9c  93 79 27 e0                                      mla r7, r3, sb, r7
005faca0  64 21 9d e5                                      ldr r2, [sp, #0x164]
005faca4  00 00 52 e3                                      cmp r2, #0
005faca8  34 80 8d 15                                      strne r8, [sp, #0x34]
005facac  07 b0 a0 11                                      movne fp, r7
005facb0  7f fc ff 0a                                      beq #0x5f9eb4
005facb4  00 00 54 e3                                      cmp r4, #0
005facb8  04 80 a0 11                                      movne r8, r4
005facbc  30 00 00 0a                                      beq #0x5fad84
005facc0  00 50 96 e5                                      ldr r5, [r6]
005facc4  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
005facc8  cc 30 dd e5                                      ldrb r3, [sp, #0xcc]
005faccc  00 00 05 e0                                      and r0, r5, r0
005facd0  30 03 a0 e1                                      lsr r0, r0, r3
005facd4  81 4d f4 eb                                      bl #0x30e2e0
005facd8  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
005facdc  22 50 f4 eb                                      bl #0x30ed6c
005face0  00 90 a0 e1                                      mov sb, r0
005face4  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
005face8  cd 30 dd e5                                      ldrb r3, [sp, #0xcd]
005facec  00 00 05 e0                                      and r0, r5, r0
005facf0  30 03 a0 e1                                      lsr r0, r0, r3
005facf4  79 4d f4 eb                                      bl #0x30e2e0
005facf8  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
005facfc  1a 50 f4 eb                                      bl #0x30ed6c
005fad00  00 10 a0 e1                                      mov r1, r0
005fad04  09 00 a0 e1                                      mov r0, sb
005fad08  a5 4f f4 eb                                      bl #0x30eba4
005fad0c  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
005fad10  ce 30 dd e5                                      ldrb r3, [sp, #0xce]
005fad14  00 90 a0 e1                                      mov sb, r0
005fad18  02 50 05 e0                                      and r5, r5, r2
005fad1c  35 03 a0 e1                                      lsr r0, r5, r3
005fad20  6e 4d f4 eb                                      bl #0x30e2e0
005fad24  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
005fad28  0f 50 f4 eb                                      bl #0x30ed6c
005fad2c  00 10 a0 e1                                      mov r1, r0
005fad30  09 00 a0 e1                                      mov r0, sb
005fad34  9a 4f f4 eb                                      bl #0x30eba4
005fad38  43 14 a0 e3                                      mov r1, #0x43000000
005fad3c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005fad40  09 50 f4 eb                                      bl #0x30ed6c
005fad44  55 0d 0b eb                                      bl #0x8be2a0
005fad48  00 00 c7 e5                                      strb r0, [r7]
005fad4c  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
005fad50  0a 00 96 e6                                      ldr r0, [r6], sl
005fad54  cf 20 dd e5                                      ldrb r2, [sp, #0xcf]
005fad58  03 00 00 e0                                      and r0, r0, r3
005fad5c  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
005fad60  30 02 83 e1                                      orr r0, r3, r0, lsr r2
005fad64  5d 4d f4 eb                                      bl #0x30e2e0
005fad68  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
005fad6c  fe 4f f4 eb                                      bl #0x30ed6c
005fad70  4a 0d 0b eb                                      bl #0x8be2a0
005fad74  01 80 58 e2                                      subs r8, r8, #1
005fad78  01 00 c7 e5                                      strb r0, [r7, #1]
005fad7c  02 70 87 e2                                      add r7, r7, #2
005fad80  ce ff ff 1a                                      bne #0x5facc0
005fad84  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fad88  01 30 53 e2                                      subs r3, r3, #1
005fad8c  64 31 8d e5                                      str r3, [sp, #0x164]
005fad90  47 fc ff 0a                                      beq #0x5f9eb4
005fad94  34 50 9d e5                                      ldr r5, [sp, #0x34]
005fad98  5c 70 9d e5                                      ldr r7, [sp, #0x5c]
005fad9c  38 80 9d e5                                      ldr r8, [sp, #0x38]
005fada0  07 60 85 e0                                      add r6, r5, r7
005fada4  08 b0 8b e0                                      add fp, fp, r8
005fada8  0b 70 a0 e1                                      mov r7, fp
005fadac  34 60 8d e5                                      str r6, [sp, #0x34]
005fadb0  bf ff ff ea                                      b #0x5facb4
005fadb4  0a 10 a0 e1                                      mov r1, sl
005fadb8  b4 00 8d e2                                      add r0, sp, #0xb4
005fadbc  b8 cb ff eb                                      bl #0x5edca4
005fadc0  0b 30 95 e7                                      ldr r3, [r5, fp]
005fadc4  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005fadc8  28 20 a0 e3                                      mov r2, #0x28
005fadcc  92 3a 2a e0                                      mla sl, r2, sl, r3
005fadd0  00 00 5c e3                                      cmp ip, #0
005fadd4  38 90 8d e5                                      str sb, [sp, #0x38]
005fadd8  15 a0 da e5                                      ldrb sl, [sl, #0x15]
005faddc  05 00 00 0a                                      beq #0x5fadf8
005fade0  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fade4  00 10 69 e2                                      rsb r1, sb, #0
005fade8  38 10 8d e5                                      str r1, [sp, #0x38]
005fadec  01 30 40 e2                                      sub r3, r0, #1
005fadf0  93 79 27 e0                                      mla r7, r3, sb, r7
005fadf4  68 70 8d e5                                      str r7, [sp, #0x68]
005fadf8  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fadfc  00 00 52 e3                                      cmp r2, #0
005fae00  2b fc ff 0a                                      beq #0x5f9eb4
005fae04  68 50 9d e5                                      ldr r5, [sp, #0x68]
005fae08  34 80 8d e5                                      str r8, [sp, #0x34]
005fae0c  05 b0 a0 e1                                      mov fp, r5
005fae10  00 00 54 e3                                      cmp r4, #0
005fae14  04 80 a0 11                                      movne r8, r4
005fae18  30 00 00 0a                                      beq #0x5faee0
005fae1c  b0 70 d6 e1                                      ldrh r7, [r6]
005fae20  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
005fae24  cc 30 dd e5                                      ldrb r3, [sp, #0xcc]
005fae28  00 00 07 e0                                      and r0, r7, r0
005fae2c  30 03 a0 e1                                      lsr r0, r0, r3
005fae30  2a 4d f4 eb                                      bl #0x30e2e0
005fae34  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
005fae38  cb 4f f4 eb                                      bl #0x30ed6c
005fae3c  00 90 a0 e1                                      mov sb, r0
005fae40  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
005fae44  cd 30 dd e5                                      ldrb r3, [sp, #0xcd]
005fae48  00 00 07 e0                                      and r0, r7, r0
005fae4c  30 03 a0 e1                                      lsr r0, r0, r3
005fae50  22 4d f4 eb                                      bl #0x30e2e0
005fae54  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
005fae58  c3 4f f4 eb                                      bl #0x30ed6c
005fae5c  00 10 a0 e1                                      mov r1, r0
005fae60  09 00 a0 e1                                      mov r0, sb
005fae64  4e 4f f4 eb                                      bl #0x30eba4
005fae68  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
005fae6c  ce 30 dd e5                                      ldrb r3, [sp, #0xce]
005fae70  00 90 a0 e1                                      mov sb, r0
005fae74  02 70 07 e0                                      and r7, r7, r2
005fae78  37 03 a0 e1                                      lsr r0, r7, r3
005fae7c  17 4d f4 eb                                      bl #0x30e2e0
005fae80  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
005fae84  b8 4f f4 eb                                      bl #0x30ed6c
005fae88  00 10 a0 e1                                      mov r1, r0
005fae8c  09 00 a0 e1                                      mov r0, sb
005fae90  43 4f f4 eb                                      bl #0x30eba4
005fae94  43 14 a0 e3                                      mov r1, #0x43000000
005fae98  7f 18 81 e2                                      add r1, r1, #0x7f0000
005fae9c  b2 4f f4 eb                                      bl #0x30ed6c
005faea0  fe 0c 0b eb                                      bl #0x8be2a0
005faea4  00 00 c5 e5                                      strb r0, [r5]
005faea8  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
005faeac  ba 00 96 e0                                      ldrh r0, [r6], sl
005faeb0  cf 20 dd e5                                      ldrb r2, [sp, #0xcf]
005faeb4  03 00 00 e0                                      and r0, r0, r3
005faeb8  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
005faebc  30 02 83 e1                                      orr r0, r3, r0, lsr r2
005faec0  06 4d f4 eb                                      bl #0x30e2e0
005faec4  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
005faec8  a7 4f f4 eb                                      bl #0x30ed6c
005faecc  f3 0c 0b eb                                      bl #0x8be2a0
005faed0  01 80 58 e2                                      subs r8, r8, #1
005faed4  01 00 c5 e5                                      strb r0, [r5, #1]
005faed8  02 50 85 e2                                      add r5, r5, #2
005faedc  ce ff ff 1a                                      bne #0x5fae1c
005faee0  64 31 9d e5                                      ldr r3, [sp, #0x164]
005faee4  01 30 53 e2                                      subs r3, r3, #1
005faee8  64 31 8d e5                                      str r3, [sp, #0x164]
005faeec  f0 fb ff 0a                                      beq #0x5f9eb4
005faef0  34 50 9d e5                                      ldr r5, [sp, #0x34]
005faef4  5c 70 9d e5                                      ldr r7, [sp, #0x5c]
005faef8  38 80 9d e5                                      ldr r8, [sp, #0x38]
005faefc  07 60 85 e0                                      add r6, r5, r7
005faf00  08 b0 8b e0                                      add fp, fp, r8
005faf04  34 60 8d e5                                      str r6, [sp, #0x34]
005faf08  0b 50 a0 e1                                      mov r5, fp
005faf0c  bf ff ff ea                                      b #0x5fae10
005faf10  07 10 a0 e1                                      mov r1, r7
005faf14  0a 00 a0 e1                                      mov r0, sl
005faf18  43 2f 8d e2                                      add r2, sp, #0x10c
005faf1c  30 c0 8d e5                                      str ip, [sp, #0x30]
005faf20  aa ca ff eb                                      bl #0x5ed9d0
005faf24  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005faf28  58 11 9d e5                                      ldr r1, [sp, #0x158]
005faf2c  9b ca 2c e0                                      mla ip, fp, sl, ip
005faf30  01 00 58 e1                                      cmp r8, r1
005faf34  15 70 dc e5                                      ldrb r7, [ip, #0x15]
005faf38  a4 06 00 0a                                      beq #0x5fc9d0
005faf3c  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005faf40  64 01 9d e5                                      ldr r0, [sp, #0x164]
005faf44  09 10 a0 e1                                      mov r1, sb
005faf48  00 00 5a e3                                      cmp sl, #0
005faf4c  64 c1 9d 15                                      ldrne ip, [sp, #0x164]
005faf50  00 10 69 12                                      rsbne r1, sb, #0
005faf54  01 30 4c 12                                      subne r3, ip, #1
005faf58  93 69 26 10                                      mlane r6, r3, sb, r6
005faf5c  00 00 50 e3                                      cmp r0, #0
005faf60  d3 fb ff 0a                                      beq #0x5f9eb4
005faf64  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
005faf68  64 c1 9d e5                                      ldr ip, [sp, #0x164]
005faf6c  06 00 a0 e1                                      mov r0, r6
005faf70  00 00 54 e3                                      cmp r4, #0
005faf74  04 30 a0 11                                      movne r3, r4
005faf78  0c 00 00 0a                                      beq #0x5fafb0
005faf7c  0c 21 dd e5                                      ldrb r2, [sp, #0x10c]
005faf80  01 30 53 e2                                      subs r3, r3, #1
005faf84  02 21 95 e7                                      ldr r2, [r5, r2, lsl #2]
005faf88  00 20 86 e5                                      str r2, [r6]
005faf8c  0d 21 dd e5                                      ldrb r2, [sp, #0x10d]
005faf90  02 21 95 e7                                      ldr r2, [r5, r2, lsl #2]
005faf94  04 20 86 e5                                      str r2, [r6, #4]
005faf98  0e 21 dd e5                                      ldrb r2, [sp, #0x10e]
005faf9c  02 21 95 e7                                      ldr r2, [r5, r2, lsl #2]
005fafa0  07 50 85 e0                                      add r5, r5, r7
005fafa4  08 20 86 e5                                      str r2, [r6, #8]
005fafa8  0c 60 86 e2                                      add r6, r6, #0xc
005fafac  f2 ff ff 1a                                      bne #0x5faf7c
005fafb0  01 c0 5c e2                                      subs ip, ip, #1
005fafb4  be fb ff 0a                                      beq #0x5f9eb4
005fafb8  0a 50 88 e0                                      add r5, r8, sl
005fafbc  01 00 80 e0                                      add r0, r0, r1
005fafc0  00 60 a0 e1                                      mov r6, r0
005fafc4  05 80 a0 e1                                      mov r8, r5
005fafc8  e8 ff ff ea                                      b #0x5faf70
005fafcc  07 10 a0 e1                                      mov r1, r7
005fafd0  0a 00 a0 e1                                      mov r0, sl
005fafd4  43 2f 8d e2                                      add r2, sp, #0x10c
005fafd8  30 c0 8d e5                                      str ip, [sp, #0x30]
005fafdc  7b ca ff eb                                      bl #0x5ed9d0
005fafe0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005fafe4  58 11 9d e5                                      ldr r1, [sp, #0x158]
005fafe8  9b ca 2c e0                                      mla ip, fp, sl, ip
005fafec  01 00 58 e1                                      cmp r8, r1
005faff0  15 70 dc e5                                      ldrb r7, [ip, #0x15]
005faff4  50 07 00 0a                                      beq #0x5fcd3c
005faff8  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005faffc  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fb000  09 10 a0 e1                                      mov r1, sb
005fb004  00 00 5a e3                                      cmp sl, #0
005fb008  64 c1 9d 15                                      ldrne ip, [sp, #0x164]
005fb00c  00 10 69 12                                      rsbne r1, sb, #0
005fb010  01 30 4c 12                                      subne r3, ip, #1
005fb014  93 69 26 10                                      mlane r6, r3, sb, r6
005fb018  00 00 50 e3                                      cmp r0, #0
005fb01c  a4 fb ff 0a                                      beq #0x5f9eb4
005fb020  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
005fb024  64 c1 9d e5                                      ldr ip, [sp, #0x164]
005fb028  06 00 a0 e1                                      mov r0, r6
005fb02c  00 00 54 e3                                      cmp r4, #0
005fb030  04 30 a0 11                                      movne r3, r4
005fb034  0f 00 00 0a                                      beq #0x5fb078
005fb038  0c 21 dd e5                                      ldrb r2, [sp, #0x10c]
005fb03c  01 30 53 e2                                      subs r3, r3, #1
005fb040  02 21 95 e7                                      ldr r2, [r5, r2, lsl #2]
005fb044  00 20 86 e5                                      str r2, [r6]
005fb048  0d 21 dd e5                                      ldrb r2, [sp, #0x10d]
005fb04c  02 21 95 e7                                      ldr r2, [r5, r2, lsl #2]
005fb050  04 20 86 e5                                      str r2, [r6, #4]
005fb054  0e 21 dd e5                                      ldrb r2, [sp, #0x10e]
005fb058  02 21 95 e7                                      ldr r2, [r5, r2, lsl #2]
005fb05c  08 20 86 e5                                      str r2, [r6, #8]
005fb060  0f 21 dd e5                                      ldrb r2, [sp, #0x10f]
005fb064  02 21 95 e7                                      ldr r2, [r5, r2, lsl #2]
005fb068  07 50 85 e0                                      add r5, r5, r7
005fb06c  0c 20 86 e5                                      str r2, [r6, #0xc]
005fb070  10 60 86 e2                                      add r6, r6, #0x10
005fb074  ef ff ff 1a                                      bne #0x5fb038
005fb078  01 c0 5c e2                                      subs ip, ip, #1
005fb07c  8c fb ff 0a                                      beq #0x5f9eb4
005fb080  0a 50 88 e0                                      add r5, r8, sl
005fb084  01 00 80 e0                                      add r0, r0, r1
005fb088  00 60 a0 e1                                      mov r6, r0
005fb08c  05 80 a0 e1                                      mov r8, r5
005fb090  e5 ff ff ea                                      b #0x5fb02c
005fb094  07 10 a0 e1                                      mov r1, r7
005fb098  0a 00 a0 e1                                      mov r0, sl
005fb09c  4b 2f 8d e2                                      add r2, sp, #0x12c
005fb0a0  30 c0 8d e5                                      str ip, [sp, #0x30]
005fb0a4  49 ca ff eb                                      bl #0x5ed9d0
005fb0a8  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005fb0ac  58 11 9d e5                                      ldr r1, [sp, #0x158]
005fb0b0  9b ca 2c e0                                      mla ip, fp, sl, ip
005fb0b4  01 00 58 e1                                      cmp r8, r1
005fb0b8  15 70 dc e5                                      ldrb r7, [ip, #0x15]
005fb0bc  f1 06 00 0a                                      beq #0x5fcc88
005fb0c0  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005fb0c4  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fb0c8  09 10 a0 e1                                      mov r1, sb
005fb0cc  00 00 5a e3                                      cmp sl, #0
005fb0d0  64 c1 9d 15                                      ldrne ip, [sp, #0x164]
005fb0d4  00 10 69 12                                      rsbne r1, sb, #0
005fb0d8  01 30 4c 12                                      subne r3, ip, #1
005fb0dc  93 69 26 10                                      mlane r6, r3, sb, r6
005fb0e0  00 00 50 e3                                      cmp r0, #0
005fb0e4  72 fb ff 0a                                      beq #0x5f9eb4
005fb0e8  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
005fb0ec  64 c1 9d e5                                      ldr ip, [sp, #0x164]
005fb0f0  06 00 a0 e1                                      mov r0, r6
005fb0f4  00 00 54 e3                                      cmp r4, #0
005fb0f8  04 30 a0 11                                      movne r3, r4
005fb0fc  0f 00 00 0a                                      beq #0x5fb140
005fb100  2c 21 dd e5                                      ldrb r2, [sp, #0x12c]
005fb104  01 30 53 e2                                      subs r3, r3, #1
005fb108  02 20 d5 e7                                      ldrb r2, [r5, r2]
005fb10c  00 20 c6 e5                                      strb r2, [r6]
005fb110  2d 21 dd e5                                      ldrb r2, [sp, #0x12d]
005fb114  02 20 d5 e7                                      ldrb r2, [r5, r2]
005fb118  01 20 c6 e5                                      strb r2, [r6, #1]
005fb11c  2e 21 dd e5                                      ldrb r2, [sp, #0x12e]
005fb120  02 20 d5 e7                                      ldrb r2, [r5, r2]
005fb124  02 20 c6 e5                                      strb r2, [r6, #2]
005fb128  2f 21 dd e5                                      ldrb r2, [sp, #0x12f]
005fb12c  02 20 d5 e7                                      ldrb r2, [r5, r2]
005fb130  07 50 85 e0                                      add r5, r5, r7
005fb134  03 20 c6 e5                                      strb r2, [r6, #3]
005fb138  04 60 86 e2                                      add r6, r6, #4
005fb13c  ef ff ff 1a                                      bne #0x5fb100
005fb140  01 c0 5c e2                                      subs ip, ip, #1
005fb144  5a fb ff 0a                                      beq #0x5f9eb4
005fb148  0a 50 88 e0                                      add r5, r8, sl
005fb14c  01 00 80 e0                                      add r0, r0, r1
005fb150  00 60 a0 e1                                      mov r6, r0
005fb154  05 80 a0 e1                                      mov r8, r5
005fb158  e5 ff ff ea                                      b #0x5fb0f4
005fb15c  07 10 a0 e1                                      mov r1, r7
005fb160  0a 00 a0 e1                                      mov r0, sl
005fb164  4b 2f 8d e2                                      add r2, sp, #0x12c
005fb168  30 c0 8d e5                                      str ip, [sp, #0x30]
005fb16c  17 ca ff eb                                      bl #0x5ed9d0
005fb170  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005fb174  58 11 9d e5                                      ldr r1, [sp, #0x158]
005fb178  9b ca 2c e0                                      mla ip, fp, sl, ip
005fb17c  01 00 58 e1                                      cmp r8, r1
005fb180  15 70 dc e5                                      ldrb r7, [ip, #0x15]
005fb184  95 06 00 0a                                      beq #0x5fcbe0
005fb188  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005fb18c  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fb190  09 10 a0 e1                                      mov r1, sb
005fb194  00 00 5a e3                                      cmp sl, #0
005fb198  64 c1 9d 15                                      ldrne ip, [sp, #0x164]
005fb19c  00 10 69 12                                      rsbne r1, sb, #0
005fb1a0  01 30 4c 12                                      subne r3, ip, #1
005fb1a4  93 69 26 10                                      mlane r6, r3, sb, r6
005fb1a8  00 00 50 e3                                      cmp r0, #0
005fb1ac  40 fb ff 0a                                      beq #0x5f9eb4
005fb1b0  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
005fb1b4  64 c1 9d e5                                      ldr ip, [sp, #0x164]
005fb1b8  06 00 a0 e1                                      mov r0, r6
005fb1bc  00 00 54 e3                                      cmp r4, #0
005fb1c0  04 30 a0 11                                      movne r3, r4
005fb1c4  0c 00 00 0a                                      beq #0x5fb1fc
005fb1c8  2c 21 dd e5                                      ldrb r2, [sp, #0x12c]
005fb1cc  01 30 53 e2                                      subs r3, r3, #1
005fb1d0  02 20 d5 e7                                      ldrb r2, [r5, r2]
005fb1d4  00 20 c6 e5                                      strb r2, [r6]
005fb1d8  2d 21 dd e5                                      ldrb r2, [sp, #0x12d]
005fb1dc  02 20 d5 e7                                      ldrb r2, [r5, r2]
005fb1e0  01 20 c6 e5                                      strb r2, [r6, #1]
005fb1e4  2e 21 dd e5                                      ldrb r2, [sp, #0x12e]
005fb1e8  02 20 d5 e7                                      ldrb r2, [r5, r2]
005fb1ec  07 50 85 e0                                      add r5, r5, r7
005fb1f0  02 20 c6 e5                                      strb r2, [r6, #2]
005fb1f4  03 60 86 e2                                      add r6, r6, #3
005fb1f8  f2 ff ff 1a                                      bne #0x5fb1c8
005fb1fc  01 c0 5c e2                                      subs ip, ip, #1
005fb200  2b fb ff 0a                                      beq #0x5f9eb4
005fb204  0a 50 88 e0                                      add r5, r8, sl
005fb208  01 00 80 e0                                      add r0, r0, r1
005fb20c  00 60 a0 e1                                      mov r6, r0
005fb210  05 80 a0 e1                                      mov r8, r5
005fb214  e8 ff ff ea                                      b #0x5fb1bc
005fb218  07 10 a0 e1                                      mov r1, r7
005fb21c  0a 00 a0 e1                                      mov r0, sl
005fb220  43 2f 8d e2                                      add r2, sp, #0x10c
005fb224  30 c0 8d e5                                      str ip, [sp, #0x30]
005fb228  e8 c9 ff eb                                      bl #0x5ed9d0
005fb22c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005fb230  58 11 9d e5                                      ldr r1, [sp, #0x158]
005fb234  9b ca 2c e0                                      mla ip, fp, sl, ip
005fb238  01 00 58 e1                                      cmp r8, r1
005fb23c  15 70 dc e5                                      ldrb r7, [ip, #0x15]
005fb240  33 06 00 0a                                      beq #0x5fcb14
005fb244  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005fb248  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fb24c  09 10 a0 e1                                      mov r1, sb
005fb250  00 00 5a e3                                      cmp sl, #0
005fb254  64 c1 9d 15                                      ldrne ip, [sp, #0x164]
005fb258  00 10 69 12                                      rsbne r1, sb, #0
005fb25c  01 30 4c 12                                      subne r3, ip, #1
005fb260  93 69 26 10                                      mlane r6, r3, sb, r6
005fb264  00 00 50 e3                                      cmp r0, #0
005fb268  11 fb ff 0a                                      beq #0x5f9eb4
005fb26c  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
005fb270  06 30 a0 e1                                      mov r3, r6
005fb274  00 c0 a0 e1                                      mov ip, r0
005fb278  00 00 54 e3                                      cmp r4, #0
005fb27c  04 20 a0 11                                      movne r2, r4
005fb280  13 00 00 0a                                      beq #0x5fb2d4
005fb284  0c 01 dd e5                                      ldrb r0, [sp, #0x10c]
005fb288  01 20 52 e2                                      subs r2, r2, #1
005fb28c  80 00 a0 e1                                      lsl r0, r0, #1
005fb290  b0 00 98 e1                                      ldrh r0, [r8, r0]
005fb294  b0 00 c3 e1                                      strh r0, [r3]
005fb298  0d 01 dd e5                                      ldrb r0, [sp, #0x10d]
005fb29c  80 00 a0 e1                                      lsl r0, r0, #1
005fb2a0  b0 00 98 e1                                      ldrh r0, [r8, r0]
005fb2a4  b2 00 c3 e1                                      strh r0, [r3, #2]
005fb2a8  0e 01 dd e5                                      ldrb r0, [sp, #0x10e]
005fb2ac  80 00 a0 e1                                      lsl r0, r0, #1
005fb2b0  b0 00 98 e1                                      ldrh r0, [r8, r0]
005fb2b4  b4 00 c3 e1                                      strh r0, [r3, #4]
005fb2b8  0f 01 dd e5                                      ldrb r0, [sp, #0x10f]
005fb2bc  80 00 a0 e1                                      lsl r0, r0, #1
005fb2c0  b0 00 98 e1                                      ldrh r0, [r8, r0]
005fb2c4  07 80 88 e0                                      add r8, r8, r7
005fb2c8  b6 00 c3 e1                                      strh r0, [r3, #6]
005fb2cc  08 30 83 e2                                      add r3, r3, #8
005fb2d0  eb ff ff 1a                                      bne #0x5fb284
005fb2d4  01 c0 5c e2                                      subs ip, ip, #1
005fb2d8  f5 fa ff 0a                                      beq #0x5f9eb4
005fb2dc  0a 50 85 e0                                      add r5, r5, sl
005fb2e0  01 60 86 e0                                      add r6, r6, r1
005fb2e4  06 30 a0 e1                                      mov r3, r6
005fb2e8  05 80 a0 e1                                      mov r8, r5
005fb2ec  e1 ff ff ea                                      b #0x5fb278
005fb2f0  07 10 a0 e1                                      mov r1, r7
005fb2f4  0a 00 a0 e1                                      mov r0, sl
005fb2f8  43 2f 8d e2                                      add r2, sp, #0x10c
005fb2fc  30 c0 8d e5                                      str ip, [sp, #0x30]
005fb300  b2 c9 ff eb                                      bl #0x5ed9d0
005fb304  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005fb308  58 11 9d e5                                      ldr r1, [sp, #0x158]
005fb30c  9b ca 2c e0                                      mla ip, fp, sl, ip
005fb310  01 00 58 e1                                      cmp r8, r1
005fb314  15 70 dc e5                                      ldrb r7, [ip, #0x15]
005fb318  7d 05 00 0a                                      beq #0x5fc914
005fb31c  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005fb320  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fb324  09 10 a0 e1                                      mov r1, sb
005fb328  00 00 5a e3                                      cmp sl, #0
005fb32c  64 c1 9d 15                                      ldrne ip, [sp, #0x164]
005fb330  00 10 69 12                                      rsbne r1, sb, #0
005fb334  01 30 4c 12                                      subne r3, ip, #1
005fb338  93 69 26 10                                      mlane r6, r3, sb, r6
005fb33c  00 00 50 e3                                      cmp r0, #0
005fb340  db fa ff 0a                                      beq #0x5f9eb4
005fb344  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
005fb348  06 30 a0 e1                                      mov r3, r6
005fb34c  00 c0 a0 e1                                      mov ip, r0
005fb350  00 00 54 e3                                      cmp r4, #0
005fb354  04 20 a0 11                                      movne r2, r4
005fb358  0f 00 00 0a                                      beq #0x5fb39c
005fb35c  0c 01 dd e5                                      ldrb r0, [sp, #0x10c]
005fb360  01 20 52 e2                                      subs r2, r2, #1
005fb364  80 00 a0 e1                                      lsl r0, r0, #1
005fb368  b0 00 98 e1                                      ldrh r0, [r8, r0]
005fb36c  b0 00 c3 e1                                      strh r0, [r3]
005fb370  0d 01 dd e5                                      ldrb r0, [sp, #0x10d]
005fb374  80 00 a0 e1                                      lsl r0, r0, #1
005fb378  b0 00 98 e1                                      ldrh r0, [r8, r0]
005fb37c  b2 00 c3 e1                                      strh r0, [r3, #2]
005fb380  0e 01 dd e5                                      ldrb r0, [sp, #0x10e]
005fb384  80 00 a0 e1                                      lsl r0, r0, #1
005fb388  b0 00 98 e1                                      ldrh r0, [r8, r0]
005fb38c  07 80 88 e0                                      add r8, r8, r7
005fb390  b4 00 c3 e1                                      strh r0, [r3, #4]
005fb394  06 30 83 e2                                      add r3, r3, #6
005fb398  ef ff ff 1a                                      bne #0x5fb35c
005fb39c  01 c0 5c e2                                      subs ip, ip, #1
005fb3a0  c3 fa ff 0a                                      beq #0x5f9eb4
005fb3a4  0a 50 85 e0                                      add r5, r5, sl
005fb3a8  01 60 86 e0                                      add r6, r6, r1
005fb3ac  06 30 a0 e1                                      mov r3, r6
005fb3b0  05 80 a0 e1                                      mov r8, r5
005fb3b4  e5 ff ff ea                                      b #0x5fb350
005fb3b8  01 00 13 e3                                      tst r3, #1
005fb3bc  52 03 00 1a                                      bne #0x5fc10c
005fb3c0  00 30 a0 e3                                      mov r3, #0
005fb3c4  3c 30 8d e5                                      str r3, [sp, #0x3c]
005fb3c8  0b 20 95 e7                                      ldr r2, [r5, fp]
005fb3cc  28 30 a0 e3                                      mov r3, #0x28
005fb3d0  b4 c0 8d e2                                      add ip, sp, #0xb4
005fb3d4  93 27 27 e0                                      mla r7, r3, r7, r2
005fb3d8  93 2a 22 e0                                      mla r2, r3, sl, r2
005fb3dc  07 00 a0 e1                                      mov r0, r7
005fb3e0  40 70 8d e5                                      str r7, [sp, #0x40]
005fb3e4  44 20 8d e5                                      str r2, [sp, #0x44]
005fb3e8  02 70 a0 e1                                      mov r7, r2
005fb3ec  50 a0 8d e5                                      str sl, [sp, #0x50]
005fb3f0  60 90 8d e5                                      str sb, [sp, #0x60]
005fb3f4  48 c0 8d e5                                      str ip, [sp, #0x48]
005fb3f8  0c 10 a0 e1                                      mov r1, ip
005fb3fc  00 20 a0 e3                                      mov r2, #0
005fb400  4c 60 8d e5                                      str r6, [sp, #0x4c]
005fb404  58 80 8d e5                                      str r8, [sp, #0x58]
005fb408  64 40 8d e5                                      str r4, [sp, #0x64]
005fb40c  05 90 a0 e1                                      mov sb, r5
005fb410  00 a0 a0 e1                                      mov sl, r0
005fb414  02 50 8a e0                                      add r5, sl, r2
005fb418  18 30 d7 e5                                      ldrb r3, [r7, #0x18]
005fb41c  18 40 d0 e5                                      ldrb r4, [r0, #0x18]
005fb420  04 80 95 e5                                      ldr r8, [r5, #4]
005fb424  1c 60 d0 e5                                      ldrb r6, [r0, #0x1c]
005fb428  1c 50 d7 e5                                      ldrb r5, [r7, #0x1c]
005fb42c  04 00 53 e1                                      cmp r3, r4
005fb430  02 80 8c e7                                      str r8, [ip, r2]
005fb434  10 50 c1 e5                                      strb r5, [r1, #0x10]
005fb438  14 60 c1 e5                                      strb r6, [r1, #0x14]
005fb43c  cf 00 00 9a                                      bls #0x5fb780
005fb440  05 30 83 e0                                      add r3, r3, r5
005fb444  03 30 64 e0                                      rsb r3, r4, r3
005fb448  10 30 c1 e5                                      strb r3, [r1, #0x10]
005fb44c  04 20 82 e2                                      add r2, r2, #4
005fb450  10 00 52 e3                                      cmp r2, #0x10
005fb454  01 70 87 e2                                      add r7, r7, #1
005fb458  01 10 81 e2                                      add r1, r1, #1
005fb45c  01 00 80 e2                                      add r0, r0, #1
005fb460  eb ff ff 1a                                      bne #0x5fb414
005fb464  09 50 a0 e1                                      mov r5, sb
005fb468  0b 20 95 e7                                      ldr r2, [r5, fp]
005fb46c  50 a0 9d e5                                      ldr sl, [sp, #0x50]
005fb470  28 30 a0 e3                                      mov r3, #0x28
005fb474  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
005fb478  93 2a 2a e0                                      mla sl, r3, sl, r2
005fb47c  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
005fb480  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
005fb484  58 80 9d e5                                      ldr r8, [sp, #0x58]
005fb488  64 40 9d e5                                      ldr r4, [sp, #0x64]
005fb48c  60 90 9d e5                                      ldr sb, [sp, #0x60]
005fb490  48 00 9d e5                                      ldr r0, [sp, #0x48]
005fb494  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005fb498  03 30 05 e0                                      and r3, r5, r3
005fb49c  3c 30 8d e5                                      str r3, [sp, #0x3c]
005fb4a0  40 20 9d e5                                      ldr r2, [sp, #0x40]
005fb4a4  00 30 a0 e3                                      mov r3, #0
005fb4a8  40 60 8d e5                                      str r6, [sp, #0x40]
005fb4ac  08 b0 a0 e1                                      mov fp, r8
005fb4b0  34 40 8d e5                                      str r4, [sp, #0x34]
005fb4b4  18 60 dc e5                                      ldrb r6, [ip, #0x18]
005fb4b8  18 50 d2 e5                                      ldrb r5, [r2, #0x18]
005fb4bc  03 11 8a e0                                      add r1, sl, r3, lsl #2
005fb4c0  04 10 91 e5                                      ldr r1, [r1, #4]
005fb4c4  86 50 65 e0                                      rsb r5, r5, r6, lsl #1
005fb4c8  75 50 ef e6                                      uxtb r5, r5
005fb4cc  11 75 01 e0                                      and r7, r1, r1, lsl r5
005fb4d0  13 6e 8d e2                                      add r6, sp, #0x130
005fb4d4  03 81 86 e0                                      add r8, r6, r3, lsl #2
005fb4d8  60 10 08 e5                                      str r1, [r8, #-0x60]
005fb4dc  54 70 08 e5                                      str r7, [r8, #-0x54]
005fb4e0  10 70 d0 e5                                      ldrb r7, [r0, #0x10]
005fb4e4  1c 10 d2 e5                                      ldrb r1, [r2, #0x1c]
005fb4e8  13 8e 8d e2                                      add r8, sp, #0x130
005fb4ec  03 60 88 e0                                      add r6, r8, r3
005fb4f0  01 30 83 e2                                      add r3, r3, #1
005fb4f4  4c 60 46 e2                                      sub r6, r6, #0x4c
005fb4f8  07 50 85 e0                                      add r5, r5, r7
005fb4fc  03 00 53 e3                                      cmp r3, #3
005fb500  07 10 c6 e5                                      strb r1, [r6, #7]
005fb504  04 50 c6 e5                                      strb r5, [r6, #4]
005fb508  01 c0 8c e2                                      add ip, ip, #1
005fb50c  01 20 82 e2                                      add r2, r2, #1
005fb510  01 00 80 e2                                      add r0, r0, #1
005fb514  e6 ff ff 1a                                      bne #0x5fb4b4
005fb518  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005fb51c  15 a0 da e5                                      ldrb sl, [sl, #0x15]
005fb520  40 60 9d e5                                      ldr r6, [sp, #0x40]
005fb524  00 00 5c e3                                      cmp ip, #0
005fb528  0b 80 a0 e1                                      mov r8, fp
005fb52c  34 40 9d e5                                      ldr r4, [sp, #0x34]
005fb530  38 a0 8d e5                                      str sl, [sp, #0x38]
005fb534  a8 90 8d e5                                      str sb, [sp, #0xa8]
005fb538  06 00 00 0a                                      beq #0x5fb558
005fb53c  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fb540  58 11 9d e5                                      ldr r1, [sp, #0x158]
005fb544  00 20 69 e2                                      rsb r2, sb, #0
005fb548  01 30 40 e2                                      sub r3, r0, #1
005fb54c  93 19 23 e0                                      mla r3, r3, sb, r1
005fb550  a8 20 8d e5                                      str r2, [sp, #0xa8]
005fb554  a0 30 8d e5                                      str r3, [sp, #0xa0]
005fb558  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fb55c  00 00 53 e3                                      cmp r3, #0
005fb560  53 fa ff 0a                                      beq #0x5f9eb4
005fb564  c8 50 dd e5                                      ldrb r5, [sp, #0xc8]
005fb568  dc 70 9d e5                                      ldr r7, [sp, #0xdc]
005fb56c  eb a0 dd e5                                      ldrb sl, [sp, #0xeb]
005fb570  b4 c0 9d e5                                      ldr ip, [sp, #0xb4]
005fb574  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
005fb578  c5 10 dd e5                                      ldrb r1, [sp, #0xc5]
005fb57c  a4 80 8d e5                                      str r8, [sp, #0xa4]
005fb580  e8 80 dd e5                                      ldrb r8, [sp, #0xe8]
005fb584  c9 20 dd e5                                      ldrb r2, [sp, #0xc9]
005fb588  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005fb58c  98 50 8d e5                                      str r5, [sp, #0x98]
005fb590  94 70 8d e5                                      str r7, [sp, #0x94]
005fb594  e9 50 dd e5                                      ldrb r5, [sp, #0xe9]
005fb598  ec 70 dd e5                                      ldrb r7, [sp, #0xec]
005fb59c  90 80 8d e5                                      str r8, [sp, #0x90]
005fb5a0  8c a0 8d e5                                      str sl, [sp, #0x8c]
005fb5a4  b8 80 9d e5                                      ldr r8, [sp, #0xb8]
005fb5a8  d8 a0 9d e5                                      ldr sl, [sp, #0xd8]
005fb5ac  40 c0 8d e5                                      str ip, [sp, #0x40]
005fb5b0  88 00 8d e5                                      str r0, [sp, #0x88]
005fb5b4  c6 c0 dd e5                                      ldrb ip, [sp, #0xc6]
005fb5b8  84 10 8d e5                                      str r1, [sp, #0x84]
005fb5bc  ca 00 dd e5                                      ldrb r0, [sp, #0xca]
005fb5c0  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005fb5c4  80 20 8d e5                                      str r2, [sp, #0x80]
005fb5c8  7c 30 8d e5                                      str r3, [sp, #0x7c]
005fb5cc  78 50 8d e5                                      str r5, [sp, #0x78]
005fb5d0  74 70 8d e5                                      str r7, [sp, #0x74]
005fb5d4  34 80 8d e5                                      str r8, [sp, #0x34]
005fb5d8  70 a0 8d e5                                      str sl, [sp, #0x70]
005fb5dc  6c c0 8d e5                                      str ip, [sp, #0x6c]
005fb5e0  d0 90 9d e5                                      ldr sb, [sp, #0xd0]
005fb5e4  c4 b0 dd e5                                      ldrb fp, [sp, #0xc4]
005fb5e8  68 00 8d e5                                      str r0, [sp, #0x68]
005fb5ec  64 10 8d e5                                      str r1, [sp, #0x64]
005fb5f0  a0 c0 9d e5                                      ldr ip, [sp, #0xa0]
005fb5f4  c0 a0 9d e5                                      ldr sl, [sp, #0xc0]
005fb5f8  ea 20 dd e5                                      ldrb r2, [sp, #0xea]
005fb5fc  ed 30 dd e5                                      ldrb r3, [sp, #0xed]
005fb600  bc 50 9d e5                                      ldr r5, [sp, #0xbc]
005fb604  c7 70 dd e5                                      ldrb r7, [sp, #0xc7]
005fb608  cb 80 dd e5                                      ldrb r8, [sp, #0xcb]
005fb60c  44 a0 8d e5                                      str sl, [sp, #0x44]
005fb610  60 20 8d e5                                      str r2, [sp, #0x60]
005fb614  58 30 8d e5                                      str r3, [sp, #0x58]
005fb618  50 50 8d e5                                      str r5, [sp, #0x50]
005fb61c  4c 70 8d e5                                      str r7, [sp, #0x4c]
005fb620  48 80 8d e5                                      str r8, [sp, #0x48]
005fb624  9c c0 8d e5                                      str ip, [sp, #0x9c]
005fb628  0c a0 a0 e1                                      mov sl, ip
005fb62c  a0 40 8d e5                                      str r4, [sp, #0xa0]
005fb630  a0 c0 9d e5                                      ldr ip, [sp, #0xa0]
005fb634  00 00 5c e3                                      cmp ip, #0
005fb638  42 00 00 0a                                      beq #0x5fb748
005fb63c  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
005fb640  00 20 a0 e3                                      mov r2, #0
005fb644  54 a0 8d e5                                      str sl, [sp, #0x54]
005fb648  00 30 d6 e5                                      ldrb r3, [r6]
005fb64c  88 40 9d e5                                      ldr r4, [sp, #0x88]
005fb650  84 50 9d e5                                      ldr r5, [sp, #0x84]
005fb654  0c 31 cd e5                                      strb r3, [sp, #0x10c]
005fb658  01 30 d6 e5                                      ldrb r3, [r6, #1]
005fb65c  98 a0 9d e5                                      ldr sl, [sp, #0x98]
005fb660  38 00 9d e5                                      ldr r0, [sp, #0x38]
005fb664  0d 31 cd e5                                      strb r3, [sp, #0x10d]
005fb668  02 30 d6 e5                                      ldrb r3, [r6, #2]
005fb66c  70 80 9d e5                                      ldr r8, [sp, #0x70]
005fb670  06 60 80 e0                                      add r6, r0, r6
005fb674  0e 31 cd e5                                      strb r3, [sp, #0x10e]
005fb678  0c 31 9d e5                                      ldr r3, [sp, #0x10c]
005fb67c  01 10 51 e2                                      subs r1, r1, #1
005fb680  03 70 09 e0                                      and r7, sb, r3
005fb684  37 7b a0 e1                                      lsr r7, r7, fp
005fb688  04 c0 03 e0                                      and ip, r3, r4
005fb68c  3c c5 a0 e1                                      lsr ip, ip, r5
005fb690  17 7a a0 e1                                      lsl r7, r7, sl
005fb694  80 50 9d e5                                      ldr r5, [sp, #0x80]
005fb698  6c 40 9d e5                                      ldr r4, [sp, #0x6c]
005fb69c  08 00 03 e0                                      and r0, r3, r8
005fb6a0  1c c5 a0 e1                                      lsl ip, ip, r5
005fb6a4  68 80 9d e5                                      ldr r8, [sp, #0x68]
005fb6a8  30 04 a0 e1                                      lsr r0, r0, r4
005fb6ac  10 08 a0 e1                                      lsl r0, r0, r8
005fb6b0  94 a0 9d e5                                      ldr sl, [sp, #0x94]
005fb6b4  90 40 9d e5                                      ldr r4, [sp, #0x90]
005fb6b8  7c 50 9d e5                                      ldr r5, [sp, #0x7c]
005fb6bc  0a 80 03 e0                                      and r8, r3, sl
005fb6c0  78 a0 9d e5                                      ldr sl, [sp, #0x78]
005fb6c4  38 84 a0 e1                                      lsr r8, r8, r4
005fb6c8  05 40 03 e0                                      and r4, r3, r5
005fb6cc  34 4a a0 e1                                      lsr r4, r4, sl
005fb6d0  64 a0 9d e5                                      ldr sl, [sp, #0x64]
005fb6d4  0a 50 03 e0                                      and r5, r3, sl
005fb6d8  8c a0 9d e5                                      ldr sl, [sp, #0x8c]
005fb6dc  18 7a 87 e1                                      orr r7, r7, r8, lsl sl
005fb6e0  74 a0 9d e5                                      ldr sl, [sp, #0x74]
005fb6e4  60 80 9d e5                                      ldr r8, [sp, #0x60]
005fb6e8  14 ca 8c e1                                      orr ip, ip, r4, lsl sl
005fb6ec  58 40 9d e5                                      ldr r4, [sp, #0x58]
005fb6f0  35 58 a0 e1                                      lsr r5, r5, r8
005fb6f4  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
005fb6f8  15 54 80 e1                                      orr r5, r0, r5, lsl r4
005fb6fc  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005fb700  48 00 9d e5                                      ldr r0, [sp, #0x48]
005fb704  33 38 a0 e1                                      lsr r3, r3, r8
005fb708  13 30 0a e0                                      and r3, sl, r3, lsl r0
005fb70c  40 40 9d e5                                      ldr r4, [sp, #0x40]
005fb710  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
005fb714  34 a0 9d e5                                      ldr sl, [sp, #0x34]
005fb718  50 00 9d e5                                      ldr r0, [sp, #0x50]
005fb71c  04 70 07 e0                                      and r7, r7, r4
005fb720  07 70 88 e1                                      orr r7, r8, r7
005fb724  0a c0 0c e0                                      and ip, ip, sl
005fb728  0c c0 87 e1                                      orr ip, r7, ip
005fb72c  00 50 05 e0                                      and r5, r5, r0
005fb730  05 c0 8c e1                                      orr ip, ip, r5
005fb734  03 c0 8c e1                                      orr ip, ip, r3
005fb738  54 30 9d e5                                      ldr r3, [sp, #0x54]
005fb73c  b2 c0 83 e1                                      strh ip, [r3, r2]
005fb740  02 20 82 e2                                      add r2, r2, #2
005fb744  bf ff ff 1a                                      bne #0x5fb648
005fb748  64 41 9d e5                                      ldr r4, [sp, #0x164]
005fb74c  01 40 54 e2                                      subs r4, r4, #1
005fb750  64 41 8d e5                                      str r4, [sp, #0x164]
005fb754  d6 f9 ff 0a                                      beq #0x5f9eb4
005fb758  a4 50 9d e5                                      ldr r5, [sp, #0xa4]
005fb75c  9c 80 9d e5                                      ldr r8, [sp, #0x9c]
005fb760  a8 a0 9d e5                                      ldr sl, [sp, #0xa8]
005fb764  5c 70 9d e5                                      ldr r7, [sp, #0x5c]
005fb768  0a 80 88 e0                                      add r8, r8, sl
005fb76c  07 60 85 e0                                      add r6, r5, r7
005fb770  9c 80 8d e5                                      str r8, [sp, #0x9c]
005fb774  08 a0 a0 e1                                      mov sl, r8
005fb778  a4 60 8d e5                                      str r6, [sp, #0xa4]
005fb77c  ab ff ff ea                                      b #0x5fb630
005fb780  83 00 54 e1                                      cmp r4, r3, lsl #1
005fb784  06 40 84 d0                                      addle r4, r4, r6
005fb788  04 30 63 d0                                      rsble r3, r3, r4
005fb78c  14 30 c1 d5                                      strble r3, [r1, #0x14]
005fb790  2d ff ff ea                                      b #0x5fb44c
005fb794  01 00 13 e3                                      tst r3, #1
005fb798  60 02 00 1a                                      bne #0x5fc120
005fb79c  00 30 a0 e3                                      mov r3, #0
005fb7a0  3c 30 8d e5                                      str r3, [sp, #0x3c]
005fb7a4  0b 20 95 e7                                      ldr r2, [r5, fp]
005fb7a8  28 30 a0 e3                                      mov r3, #0x28
005fb7ac  b4 c0 8d e2                                      add ip, sp, #0xb4
005fb7b0  93 27 27 e0                                      mla r7, r3, r7, r2
005fb7b4  93 2a 22 e0                                      mla r2, r3, sl, r2
005fb7b8  07 00 a0 e1                                      mov r0, r7
005fb7bc  40 70 8d e5                                      str r7, [sp, #0x40]
005fb7c0  44 20 8d e5                                      str r2, [sp, #0x44]
005fb7c4  02 70 a0 e1                                      mov r7, r2
005fb7c8  50 a0 8d e5                                      str sl, [sp, #0x50]
005fb7cc  60 90 8d e5                                      str sb, [sp, #0x60]
005fb7d0  48 c0 8d e5                                      str ip, [sp, #0x48]
005fb7d4  0c 10 a0 e1                                      mov r1, ip
005fb7d8  00 20 a0 e3                                      mov r2, #0
005fb7dc  4c 60 8d e5                                      str r6, [sp, #0x4c]
005fb7e0  58 80 8d e5                                      str r8, [sp, #0x58]
005fb7e4  64 40 8d e5                                      str r4, [sp, #0x64]
005fb7e8  05 90 a0 e1                                      mov sb, r5
005fb7ec  00 a0 a0 e1                                      mov sl, r0
005fb7f0  02 50 8a e0                                      add r5, sl, r2
005fb7f4  18 30 d7 e5                                      ldrb r3, [r7, #0x18]
005fb7f8  18 40 d0 e5                                      ldrb r4, [r0, #0x18]
005fb7fc  04 80 95 e5                                      ldr r8, [r5, #4]
005fb800  1c 60 d0 e5                                      ldrb r6, [r0, #0x1c]
005fb804  1c 50 d7 e5                                      ldrb r5, [r7, #0x1c]
005fb808  04 00 53 e1                                      cmp r3, r4
005fb80c  02 80 8c e7                                      str r8, [ip, r2]
005fb810  10 50 c1 e5                                      strb r5, [r1, #0x10]
005fb814  14 60 c1 e5                                      strb r6, [r1, #0x14]
005fb818  cf 00 00 9a                                      bls #0x5fbb5c
005fb81c  05 30 83 e0                                      add r3, r3, r5
005fb820  03 30 64 e0                                      rsb r3, r4, r3
005fb824  10 30 c1 e5                                      strb r3, [r1, #0x10]
005fb828  04 20 82 e2                                      add r2, r2, #4
005fb82c  10 00 52 e3                                      cmp r2, #0x10
005fb830  01 70 87 e2                                      add r7, r7, #1
005fb834  01 10 81 e2                                      add r1, r1, #1
005fb838  01 00 80 e2                                      add r0, r0, #1
005fb83c  eb ff ff 1a                                      bne #0x5fb7f0
005fb840  09 50 a0 e1                                      mov r5, sb
005fb844  0b 20 95 e7                                      ldr r2, [r5, fp]
005fb848  50 a0 9d e5                                      ldr sl, [sp, #0x50]
005fb84c  28 30 a0 e3                                      mov r3, #0x28
005fb850  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
005fb854  93 2a 2a e0                                      mla sl, r3, sl, r2
005fb858  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
005fb85c  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
005fb860  58 80 9d e5                                      ldr r8, [sp, #0x58]
005fb864  64 40 9d e5                                      ldr r4, [sp, #0x64]
005fb868  60 90 9d e5                                      ldr sb, [sp, #0x60]
005fb86c  48 00 9d e5                                      ldr r0, [sp, #0x48]
005fb870  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005fb874  03 30 05 e0                                      and r3, r5, r3
005fb878  3c 30 8d e5                                      str r3, [sp, #0x3c]
005fb87c  40 20 9d e5                                      ldr r2, [sp, #0x40]
005fb880  00 30 a0 e3                                      mov r3, #0
005fb884  40 60 8d e5                                      str r6, [sp, #0x40]
005fb888  08 b0 a0 e1                                      mov fp, r8
005fb88c  34 40 8d e5                                      str r4, [sp, #0x34]
005fb890  18 60 dc e5                                      ldrb r6, [ip, #0x18]
005fb894  18 50 d2 e5                                      ldrb r5, [r2, #0x18]
005fb898  03 11 8a e0                                      add r1, sl, r3, lsl #2
005fb89c  04 10 91 e5                                      ldr r1, [r1, #4]
005fb8a0  86 50 65 e0                                      rsb r5, r5, r6, lsl #1
005fb8a4  75 50 ef e6                                      uxtb r5, r5
005fb8a8  11 75 01 e0                                      and r7, r1, r1, lsl r5
005fb8ac  13 6e 8d e2                                      add r6, sp, #0x130
005fb8b0  03 81 86 e0                                      add r8, r6, r3, lsl #2
005fb8b4  60 10 08 e5                                      str r1, [r8, #-0x60]
005fb8b8  54 70 08 e5                                      str r7, [r8, #-0x54]
005fb8bc  10 70 d0 e5                                      ldrb r7, [r0, #0x10]
005fb8c0  1c 10 d2 e5                                      ldrb r1, [r2, #0x1c]
005fb8c4  13 8e 8d e2                                      add r8, sp, #0x130
005fb8c8  03 60 88 e0                                      add r6, r8, r3
005fb8cc  01 30 83 e2                                      add r3, r3, #1
005fb8d0  4c 60 46 e2                                      sub r6, r6, #0x4c
005fb8d4  07 50 85 e0                                      add r5, r5, r7
005fb8d8  03 00 53 e3                                      cmp r3, #3
005fb8dc  07 10 c6 e5                                      strb r1, [r6, #7]
005fb8e0  04 50 c6 e5                                      strb r5, [r6, #4]
005fb8e4  01 c0 8c e2                                      add ip, ip, #1
005fb8e8  01 20 82 e2                                      add r2, r2, #1
005fb8ec  01 00 80 e2                                      add r0, r0, #1
005fb8f0  e6 ff ff 1a                                      bne #0x5fb890
005fb8f4  58 c1 9d e5                                      ldr ip, [sp, #0x158]
005fb8f8  0b 80 a0 e1                                      mov r8, fp
005fb8fc  40 60 9d e5                                      ldr r6, [sp, #0x40]
005fb900  0c 00 5b e1                                      cmp fp, ip
005fb904  34 40 9d e5                                      ldr r4, [sp, #0x34]
005fb908  15 b0 da e5                                      ldrb fp, [sl, #0x15]
005fb90c  2a 03 00 0a                                      beq #0x5fc5bc
005fb910  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005fb914  a4 90 8d e5                                      str sb, [sp, #0xa4]
005fb918  00 00 5a e3                                      cmp sl, #0
005fb91c  06 00 00 0a                                      beq #0x5fb93c
005fb920  64 c1 9d e5                                      ldr ip, [sp, #0x164]
005fb924  58 01 9d e5                                      ldr r0, [sp, #0x158]
005fb928  00 10 69 e2                                      rsb r1, sb, #0
005fb92c  01 30 4c e2                                      sub r3, ip, #1
005fb930  93 09 23 e0                                      mla r3, r3, sb, r0
005fb934  a4 10 8d e5                                      str r1, [sp, #0xa4]
005fb938  a8 30 8d e5                                      str r3, [sp, #0xa8]
005fb93c  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fb940  00 00 52 e3                                      cmp r2, #0
005fb944  5a f9 ff 0a                                      beq #0x5f9eb4
005fb948  c8 30 dd e5                                      ldrb r3, [sp, #0xc8]
005fb94c  dc 50 9d e5                                      ldr r5, [sp, #0xdc]
005fb950  e8 70 dd e5                                      ldrb r7, [sp, #0xe8]
005fb954  b4 c0 9d e5                                      ldr ip, [sp, #0xb4]
005fb958  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
005fb95c  c5 10 dd e5                                      ldrb r1, [sp, #0xc5]
005fb960  c9 20 dd e5                                      ldrb r2, [sp, #0xc9]
005fb964  a0 80 8d e5                                      str r8, [sp, #0xa0]
005fb968  eb 80 dd e5                                      ldrb r8, [sp, #0xeb]
005fb96c  94 30 8d e5                                      str r3, [sp, #0x94]
005fb970  90 50 8d e5                                      str r5, [sp, #0x90]
005fb974  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005fb978  e9 50 dd e5                                      ldrb r5, [sp, #0xe9]
005fb97c  8c 70 8d e5                                      str r7, [sp, #0x8c]
005fb980  88 80 8d e5                                      str r8, [sp, #0x88]
005fb984  ec 70 dd e5                                      ldrb r7, [sp, #0xec]
005fb988  b8 80 9d e5                                      ldr r8, [sp, #0xb8]
005fb98c  34 c0 8d e5                                      str ip, [sp, #0x34]
005fb990  84 00 8d e5                                      str r0, [sp, #0x84]
005fb994  d8 c0 9d e5                                      ldr ip, [sp, #0xd8]
005fb998  c6 00 dd e5                                      ldrb r0, [sp, #0xc6]
005fb99c  80 10 8d e5                                      str r1, [sp, #0x80]
005fb9a0  7c 20 8d e5                                      str r2, [sp, #0x7c]
005fb9a4  ca 10 dd e5                                      ldrb r1, [sp, #0xca]
005fb9a8  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005fb9ac  c4 a0 dd e5                                      ldrb sl, [sp, #0xc4]
005fb9b0  78 30 8d e5                                      str r3, [sp, #0x78]
005fb9b4  74 50 8d e5                                      str r5, [sp, #0x74]
005fb9b8  70 70 8d e5                                      str r7, [sp, #0x70]
005fb9bc  38 80 8d e5                                      str r8, [sp, #0x38]
005fb9c0  6c c0 8d e5                                      str ip, [sp, #0x6c]
005fb9c4  68 00 8d e5                                      str r0, [sp, #0x68]
005fb9c8  64 10 8d e5                                      str r1, [sp, #0x64]
005fb9cc  d0 90 9d e5                                      ldr sb, [sp, #0xd0]
005fb9d0  60 20 8d e5                                      str r2, [sp, #0x60]
005fb9d4  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
005fb9d8  ea 30 dd e5                                      ldrb r3, [sp, #0xea]
005fb9dc  ed 50 dd e5                                      ldrb r5, [sp, #0xed]
005fb9e0  bc 70 9d e5                                      ldr r7, [sp, #0xbc]
005fb9e4  c7 80 dd e5                                      ldrb r8, [sp, #0xc7]
005fb9e8  cb c0 dd e5                                      ldrb ip, [sp, #0xcb]
005fb9ec  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
005fb9f0  98 a0 8d e5                                      str sl, [sp, #0x98]
005fb9f4  58 30 8d e5                                      str r3, [sp, #0x58]
005fb9f8  50 50 8d e5                                      str r5, [sp, #0x50]
005fb9fc  4c 70 8d e5                                      str r7, [sp, #0x4c]
005fba00  48 80 8d e5                                      str r8, [sp, #0x48]
005fba04  44 c0 8d e5                                      str ip, [sp, #0x44]
005fba08  40 00 8d e5                                      str r0, [sp, #0x40]
005fba0c  9c 10 8d e5                                      str r1, [sp, #0x9c]
005fba10  01 a0 a0 e1                                      mov sl, r1
005fba14  00 00 54 e3                                      cmp r4, #0
005fba18  00 20 a0 13                                      movne r2, #0
005fba1c  54 a0 8d 15                                      strne sl, [sp, #0x54]
005fba20  3f 00 00 0a                                      beq #0x5fbb24
005fba24  00 30 d6 e5                                      ldrb r3, [r6]
005fba28  98 50 9d e5                                      ldr r5, [sp, #0x98]
005fba2c  84 80 9d e5                                      ldr r8, [sp, #0x84]
005fba30  20 31 cd e5                                      strb r3, [sp, #0x120]
005fba34  01 30 d6 e5                                      ldrb r3, [r6, #1]
005fba38  80 a0 9d e5                                      ldr sl, [sp, #0x80]
005fba3c  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
005fba40  21 31 cd e5                                      strb r3, [sp, #0x121]
005fba44  02 30 d6 e5                                      ldrb r3, [r6, #2]
005fba48  06 60 8b e0                                      add r6, fp, r6
005fba4c  22 31 cd e5                                      strb r3, [sp, #0x122]
005fba50  20 31 9d e5                                      ldr r3, [sp, #0x120]
005fba54  03 70 09 e0                                      and r7, sb, r3
005fba58  37 75 a0 e1                                      lsr r7, r7, r5
005fba5c  94 50 9d e5                                      ldr r5, [sp, #0x94]
005fba60  08 00 03 e0                                      and r0, r3, r8
005fba64  30 0a a0 e1                                      lsr r0, r0, sl
005fba68  17 75 a0 e1                                      lsl r7, r7, r5
005fba6c  7c a0 9d e5                                      ldr sl, [sp, #0x7c]
005fba70  68 80 9d e5                                      ldr r8, [sp, #0x68]
005fba74  0c 10 03 e0                                      and r1, r3, ip
005fba78  10 0a a0 e1                                      lsl r0, r0, sl
005fba7c  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005fba80  31 18 a0 e1                                      lsr r1, r1, r8
005fba84  11 1c a0 e1                                      lsl r1, r1, ip
005fba88  90 50 9d e5                                      ldr r5, [sp, #0x90]
005fba8c  8c a0 9d e5                                      ldr sl, [sp, #0x8c]
005fba90  05 80 03 e0                                      and r8, r3, r5
005fba94  78 50 9d e5                                      ldr r5, [sp, #0x78]
005fba98  38 8a a0 e1                                      lsr r8, r8, sl
005fba9c  74 a0 9d e5                                      ldr sl, [sp, #0x74]
005fbaa0  05 c0 03 e0                                      and ip, r3, r5
005fbaa4  3c ca a0 e1                                      lsr ip, ip, sl
005fbaa8  60 a0 9d e5                                      ldr sl, [sp, #0x60]
005fbaac  03 50 0a e0                                      and r5, sl, r3
005fbab0  88 a0 9d e5                                      ldr sl, [sp, #0x88]
005fbab4  18 7a 87 e1                                      orr r7, r7, r8, lsl sl
005fbab8  70 a0 9d e5                                      ldr sl, [sp, #0x70]
005fbabc  58 80 9d e5                                      ldr r8, [sp, #0x58]
005fbac0  1c 0a 80 e1                                      orr r0, r0, ip, lsl sl
005fbac4  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005fbac8  35 58 a0 e1                                      lsr r5, r5, r8
005fbacc  15 5c 81 e1                                      orr r5, r1, r5, lsl ip
005fbad0  48 10 9d e5                                      ldr r1, [sp, #0x48]
005fbad4  40 80 9d e5                                      ldr r8, [sp, #0x40]
005fbad8  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005fbadc  33 31 a0 e1                                      lsr r3, r3, r1
005fbae0  13 3a 08 e0                                      and r3, r8, r3, lsl sl
005fbae4  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005fbae8  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
005fbaec  38 80 9d e5                                      ldr r8, [sp, #0x38]
005fbaf0  4c a0 9d e5                                      ldr sl, [sp, #0x4c]
005fbaf4  0c 70 07 e0                                      and r7, r7, ip
005fbaf8  07 70 81 e1                                      orr r7, r1, r7
005fbafc  08 00 00 e0                                      and r0, r0, r8
005fbb00  00 00 87 e1                                      orr r0, r7, r0
005fbb04  0a 50 05 e0                                      and r5, r5, sl
005fbb08  54 c0 9d e5                                      ldr ip, [sp, #0x54]
005fbb0c  05 00 80 e1                                      orr r0, r0, r5
005fbb10  03 00 80 e1                                      orr r0, r0, r3
005fbb14  02 00 cc e7                                      strb r0, [ip, r2]
005fbb18  01 20 82 e2                                      add r2, r2, #1
005fbb1c  02 00 54 e1                                      cmp r4, r2
005fbb20  bf ff ff 1a                                      bne #0x5fba24
005fbb24  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fbb28  01 00 50 e2                                      subs r0, r0, #1
005fbb2c  64 01 8d e5                                      str r0, [sp, #0x164]
005fbb30  df f8 ff 0a                                      beq #0x5f9eb4
005fbb34  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
005fbb38  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
005fbb3c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005fbb40  a4 50 9d e5                                      ldr r5, [sp, #0xa4]
005fbb44  02 60 81 e0                                      add r6, r1, r2
005fbb48  05 30 83 e0                                      add r3, r3, r5
005fbb4c  9c 30 8d e5                                      str r3, [sp, #0x9c]
005fbb50  03 a0 a0 e1                                      mov sl, r3
005fbb54  a0 60 8d e5                                      str r6, [sp, #0xa0]
005fbb58  ad ff ff ea                                      b #0x5fba14
005fbb5c  83 00 54 e1                                      cmp r4, r3, lsl #1
005fbb60  06 40 84 d0                                      addle r4, r4, r6
005fbb64  04 30 63 d0                                      rsble r3, r3, r4
005fbb68  14 30 c1 d5                                      strble r3, [r1, #0x14]
005fbb6c  2d ff ff ea                                      b #0x5fb828
005fbb70  01 00 13 e3                                      tst r3, #1
005fbb74  5f 01 00 1a                                      bne #0x5fc0f8
005fbb78  00 30 a0 e3                                      mov r3, #0
005fbb7c  40 30 8d e5                                      str r3, [sp, #0x40]
005fbb80  0b 20 95 e7                                      ldr r2, [r5, fp]
005fbb84  28 30 a0 e3                                      mov r3, #0x28
005fbb88  b4 c0 8d e2                                      add ip, sp, #0xb4
005fbb8c  93 27 27 e0                                      mla r7, r3, r7, r2
005fbb90  93 2a 22 e0                                      mla r2, r3, sl, r2
005fbb94  07 00 a0 e1                                      mov r0, r7
005fbb98  3c 70 8d e5                                      str r7, [sp, #0x3c]
005fbb9c  44 20 8d e5                                      str r2, [sp, #0x44]
005fbba0  02 70 a0 e1                                      mov r7, r2
005fbba4  50 a0 8d e5                                      str sl, [sp, #0x50]
005fbba8  60 90 8d e5                                      str sb, [sp, #0x60]
005fbbac  48 c0 8d e5                                      str ip, [sp, #0x48]
005fbbb0  0c 10 a0 e1                                      mov r1, ip
005fbbb4  00 20 a0 e3                                      mov r2, #0
005fbbb8  4c 60 8d e5                                      str r6, [sp, #0x4c]
005fbbbc  58 80 8d e5                                      str r8, [sp, #0x58]
005fbbc0  64 40 8d e5                                      str r4, [sp, #0x64]
005fbbc4  05 90 a0 e1                                      mov sb, r5
005fbbc8  00 a0 a0 e1                                      mov sl, r0
005fbbcc  02 50 8a e0                                      add r5, sl, r2
005fbbd0  18 30 d7 e5                                      ldrb r3, [r7, #0x18]
005fbbd4  18 40 d0 e5                                      ldrb r4, [r0, #0x18]
005fbbd8  04 80 95 e5                                      ldr r8, [r5, #4]
005fbbdc  1c 60 d0 e5                                      ldrb r6, [r0, #0x1c]
005fbbe0  1c 50 d7 e5                                      ldrb r5, [r7, #0x1c]
005fbbe4  04 00 53 e1                                      cmp r3, r4
005fbbe8  02 80 8c e7                                      str r8, [ip, r2]
005fbbec  10 50 c1 e5                                      strb r5, [r1, #0x10]
005fbbf0  14 60 c1 e5                                      strb r6, [r1, #0x14]
005fbbf4  cf 00 00 9a                                      bls #0x5fbf38
005fbbf8  05 30 83 e0                                      add r3, r3, r5
005fbbfc  03 30 64 e0                                      rsb r3, r4, r3
005fbc00  10 30 c1 e5                                      strb r3, [r1, #0x10]
005fbc04  04 20 82 e2                                      add r2, r2, #4
005fbc08  10 00 52 e3                                      cmp r2, #0x10
005fbc0c  01 70 87 e2                                      add r7, r7, #1
005fbc10  01 10 81 e2                                      add r1, r1, #1
005fbc14  01 00 80 e2                                      add r0, r0, #1
005fbc18  eb ff ff 1a                                      bne #0x5fbbcc
005fbc1c  09 50 a0 e1                                      mov r5, sb
005fbc20  0b 20 95 e7                                      ldr r2, [r5, fp]
005fbc24  50 a0 9d e5                                      ldr sl, [sp, #0x50]
005fbc28  28 30 a0 e3                                      mov r3, #0x28
005fbc2c  40 50 9d e5                                      ldr r5, [sp, #0x40]
005fbc30  93 2a 2a e0                                      mla sl, r3, sl, r2
005fbc34  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
005fbc38  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
005fbc3c  58 80 9d e5                                      ldr r8, [sp, #0x58]
005fbc40  64 40 9d e5                                      ldr r4, [sp, #0x64]
005fbc44  60 90 9d e5                                      ldr sb, [sp, #0x60]
005fbc48  44 00 9d e5                                      ldr r0, [sp, #0x44]
005fbc4c  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005fbc50  03 30 05 e0                                      and r3, r5, r3
005fbc54  40 30 8d e5                                      str r3, [sp, #0x40]
005fbc58  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005fbc5c  00 30 a0 e3                                      mov r3, #0
005fbc60  3c 60 8d e5                                      str r6, [sp, #0x3c]
005fbc64  08 b0 a0 e1                                      mov fp, r8
005fbc68  34 40 8d e5                                      str r4, [sp, #0x34]
005fbc6c  18 60 d0 e5                                      ldrb r6, [r0, #0x18]
005fbc70  18 50 d2 e5                                      ldrb r5, [r2, #0x18]
005fbc74  03 11 8a e0                                      add r1, sl, r3, lsl #2
005fbc78  04 10 91 e5                                      ldr r1, [r1, #4]
005fbc7c  86 50 65 e0                                      rsb r5, r5, r6, lsl #1
005fbc80  75 50 ef e6                                      uxtb r5, r5
005fbc84  11 75 01 e0                                      and r7, r1, r1, lsl r5
005fbc88  13 6e 8d e2                                      add r6, sp, #0x130
005fbc8c  03 81 86 e0                                      add r8, r6, r3, lsl #2
005fbc90  60 10 08 e5                                      str r1, [r8, #-0x60]
005fbc94  54 70 08 e5                                      str r7, [r8, #-0x54]
005fbc98  10 70 dc e5                                      ldrb r7, [ip, #0x10]
005fbc9c  1c 10 d2 e5                                      ldrb r1, [r2, #0x1c]
005fbca0  13 8e 8d e2                                      add r8, sp, #0x130
005fbca4  03 60 88 e0                                      add r6, r8, r3
005fbca8  01 30 83 e2                                      add r3, r3, #1
005fbcac  4c 60 46 e2                                      sub r6, r6, #0x4c
005fbcb0  07 50 85 e0                                      add r5, r5, r7
005fbcb4  03 00 53 e3                                      cmp r3, #3
005fbcb8  07 10 c6 e5                                      strb r1, [r6, #7]
005fbcbc  04 50 c6 e5                                      strb r5, [r6, #4]
005fbcc0  01 00 80 e2                                      add r0, r0, #1
005fbcc4  01 20 82 e2                                      add r2, r2, #1
005fbcc8  01 c0 8c e2                                      add ip, ip, #1
005fbccc  e6 ff ff 1a                                      bne #0x5fbc6c
005fbcd0  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005fbcd4  15 a0 da e5                                      ldrb sl, [sl, #0x15]
005fbcd8  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005fbcdc  00 00 5c e3                                      cmp ip, #0
005fbce0  0b 80 a0 e1                                      mov r8, fp
005fbce4  34 40 9d e5                                      ldr r4, [sp, #0x34]
005fbce8  38 a0 8d e5                                      str sl, [sp, #0x38]
005fbcec  a8 90 8d e5                                      str sb, [sp, #0xa8]
005fbcf0  06 00 00 0a                                      beq #0x5fbd10
005fbcf4  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fbcf8  58 11 9d e5                                      ldr r1, [sp, #0x158]
005fbcfc  00 20 69 e2                                      rsb r2, sb, #0
005fbd00  01 30 40 e2                                      sub r3, r0, #1
005fbd04  93 19 23 e0                                      mla r3, r3, sb, r1
005fbd08  a8 20 8d e5                                      str r2, [sp, #0xa8]
005fbd0c  a0 30 8d e5                                      str r3, [sp, #0xa0]
005fbd10  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fbd14  00 00 53 e3                                      cmp r3, #0
005fbd18  65 f8 ff 0a                                      beq #0x5f9eb4
005fbd1c  c8 50 dd e5                                      ldrb r5, [sp, #0xc8]
005fbd20  dc 70 9d e5                                      ldr r7, [sp, #0xdc]
005fbd24  eb a0 dd e5                                      ldrb sl, [sp, #0xeb]
005fbd28  b4 c0 9d e5                                      ldr ip, [sp, #0xb4]
005fbd2c  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
005fbd30  c5 10 dd e5                                      ldrb r1, [sp, #0xc5]
005fbd34  a4 80 8d e5                                      str r8, [sp, #0xa4]
005fbd38  e8 80 dd e5                                      ldrb r8, [sp, #0xe8]
005fbd3c  c9 20 dd e5                                      ldrb r2, [sp, #0xc9]
005fbd40  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005fbd44  98 50 8d e5                                      str r5, [sp, #0x98]
005fbd48  94 70 8d e5                                      str r7, [sp, #0x94]
005fbd4c  e9 50 dd e5                                      ldrb r5, [sp, #0xe9]
005fbd50  ec 70 dd e5                                      ldrb r7, [sp, #0xec]
005fbd54  90 80 8d e5                                      str r8, [sp, #0x90]
005fbd58  8c a0 8d e5                                      str sl, [sp, #0x8c]
005fbd5c  b8 80 9d e5                                      ldr r8, [sp, #0xb8]
005fbd60  d8 a0 9d e5                                      ldr sl, [sp, #0xd8]
005fbd64  34 c0 8d e5                                      str ip, [sp, #0x34]
005fbd68  88 00 8d e5                                      str r0, [sp, #0x88]
005fbd6c  c6 c0 dd e5                                      ldrb ip, [sp, #0xc6]
005fbd70  84 10 8d e5                                      str r1, [sp, #0x84]
005fbd74  ca 00 dd e5                                      ldrb r0, [sp, #0xca]
005fbd78  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005fbd7c  80 20 8d e5                                      str r2, [sp, #0x80]
005fbd80  7c 30 8d e5                                      str r3, [sp, #0x7c]
005fbd84  78 50 8d e5                                      str r5, [sp, #0x78]
005fbd88  74 70 8d e5                                      str r7, [sp, #0x74]
005fbd8c  70 80 8d e5                                      str r8, [sp, #0x70]
005fbd90  3c a0 8d e5                                      str sl, [sp, #0x3c]
005fbd94  6c c0 8d e5                                      str ip, [sp, #0x6c]
005fbd98  d0 90 9d e5                                      ldr sb, [sp, #0xd0]
005fbd9c  c4 b0 dd e5                                      ldrb fp, [sp, #0xc4]
005fbda0  68 00 8d e5                                      str r0, [sp, #0x68]
005fbda4  64 10 8d e5                                      str r1, [sp, #0x64]
005fbda8  a0 c0 9d e5                                      ldr ip, [sp, #0xa0]
005fbdac  c0 a0 9d e5                                      ldr sl, [sp, #0xc0]
005fbdb0  ea 20 dd e5                                      ldrb r2, [sp, #0xea]
005fbdb4  ed 30 dd e5                                      ldrb r3, [sp, #0xed]
005fbdb8  bc 50 9d e5                                      ldr r5, [sp, #0xbc]
005fbdbc  c7 70 dd e5                                      ldrb r7, [sp, #0xc7]
005fbdc0  cb 80 dd e5                                      ldrb r8, [sp, #0xcb]
005fbdc4  44 a0 8d e5                                      str sl, [sp, #0x44]
005fbdc8  60 20 8d e5                                      str r2, [sp, #0x60]
005fbdcc  58 30 8d e5                                      str r3, [sp, #0x58]
005fbdd0  50 50 8d e5                                      str r5, [sp, #0x50]
005fbdd4  4c 70 8d e5                                      str r7, [sp, #0x4c]
005fbdd8  48 80 8d e5                                      str r8, [sp, #0x48]
005fbddc  9c c0 8d e5                                      str ip, [sp, #0x9c]
005fbde0  0c a0 a0 e1                                      mov sl, ip
005fbde4  a0 40 8d e5                                      str r4, [sp, #0xa0]
005fbde8  a0 c0 9d e5                                      ldr ip, [sp, #0xa0]
005fbdec  00 00 5c e3                                      cmp ip, #0
005fbdf0  42 00 00 0a                                      beq #0x5fbf00
005fbdf4  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
005fbdf8  00 20 a0 e3                                      mov r2, #0
005fbdfc  54 a0 8d e5                                      str sl, [sp, #0x54]
005fbe00  00 30 d6 e5                                      ldrb r3, [r6]
005fbe04  88 40 9d e5                                      ldr r4, [sp, #0x88]
005fbe08  84 50 9d e5                                      ldr r5, [sp, #0x84]
005fbe0c  04 31 cd e5                                      strb r3, [sp, #0x104]
005fbe10  01 30 d6 e5                                      ldrb r3, [r6, #1]
005fbe14  98 a0 9d e5                                      ldr sl, [sp, #0x98]
005fbe18  38 00 9d e5                                      ldr r0, [sp, #0x38]
005fbe1c  05 31 cd e5                                      strb r3, [sp, #0x105]
005fbe20  02 30 d6 e5                                      ldrb r3, [r6, #2]
005fbe24  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
005fbe28  00 60 86 e0                                      add r6, r6, r0
005fbe2c  06 31 cd e5                                      strb r3, [sp, #0x106]
005fbe30  04 31 9d e5                                      ldr r3, [sp, #0x104]
005fbe34  01 10 51 e2                                      subs r1, r1, #1
005fbe38  09 70 03 e0                                      and r7, r3, sb
005fbe3c  37 7b a0 e1                                      lsr r7, r7, fp
005fbe40  04 c0 03 e0                                      and ip, r3, r4
005fbe44  3c c5 a0 e1                                      lsr ip, ip, r5
005fbe48  17 7a a0 e1                                      lsl r7, r7, sl
005fbe4c  80 50 9d e5                                      ldr r5, [sp, #0x80]
005fbe50  6c 40 9d e5                                      ldr r4, [sp, #0x6c]
005fbe54  03 00 08 e0                                      and r0, r8, r3
005fbe58  1c c5 a0 e1                                      lsl ip, ip, r5
005fbe5c  68 80 9d e5                                      ldr r8, [sp, #0x68]
005fbe60  30 04 a0 e1                                      lsr r0, r0, r4
005fbe64  10 08 a0 e1                                      lsl r0, r0, r8
005fbe68  94 a0 9d e5                                      ldr sl, [sp, #0x94]
005fbe6c  90 40 9d e5                                      ldr r4, [sp, #0x90]
005fbe70  7c 50 9d e5                                      ldr r5, [sp, #0x7c]
005fbe74  03 80 0a e0                                      and r8, sl, r3
005fbe78  78 a0 9d e5                                      ldr sl, [sp, #0x78]
005fbe7c  38 84 a0 e1                                      lsr r8, r8, r4
005fbe80  05 40 03 e0                                      and r4, r3, r5
005fbe84  34 4a a0 e1                                      lsr r4, r4, sl
005fbe88  64 a0 9d e5                                      ldr sl, [sp, #0x64]
005fbe8c  0a 50 03 e0                                      and r5, r3, sl
005fbe90  8c a0 9d e5                                      ldr sl, [sp, #0x8c]
005fbe94  18 7a 87 e1                                      orr r7, r7, r8, lsl sl
005fbe98  74 a0 9d e5                                      ldr sl, [sp, #0x74]
005fbe9c  60 80 9d e5                                      ldr r8, [sp, #0x60]
005fbea0  14 ca 8c e1                                      orr ip, ip, r4, lsl sl
005fbea4  58 40 9d e5                                      ldr r4, [sp, #0x58]
005fbea8  35 58 a0 e1                                      lsr r5, r5, r8
005fbeac  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
005fbeb0  15 54 80 e1                                      orr r5, r0, r5, lsl r4
005fbeb4  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005fbeb8  48 00 9d e5                                      ldr r0, [sp, #0x48]
005fbebc  33 38 a0 e1                                      lsr r3, r3, r8
005fbec0  13 30 0a e0                                      and r3, sl, r3, lsl r0
005fbec4  34 40 9d e5                                      ldr r4, [sp, #0x34]
005fbec8  40 80 9d e5                                      ldr r8, [sp, #0x40]
005fbecc  70 a0 9d e5                                      ldr sl, [sp, #0x70]
005fbed0  50 00 9d e5                                      ldr r0, [sp, #0x50]
005fbed4  04 70 07 e0                                      and r7, r7, r4
005fbed8  07 70 88 e1                                      orr r7, r8, r7
005fbedc  0a c0 0c e0                                      and ip, ip, sl
005fbee0  0c c0 87 e1                                      orr ip, r7, ip
005fbee4  00 50 05 e0                                      and r5, r5, r0
005fbee8  05 c0 8c e1                                      orr ip, ip, r5
005fbeec  03 c0 8c e1                                      orr ip, ip, r3
005fbef0  54 30 9d e5                                      ldr r3, [sp, #0x54]
005fbef4  02 c0 83 e7                                      str ip, [r3, r2]
005fbef8  04 20 82 e2                                      add r2, r2, #4
005fbefc  bf ff ff 1a                                      bne #0x5fbe00
005fbf00  64 41 9d e5                                      ldr r4, [sp, #0x164]
005fbf04  01 40 54 e2                                      subs r4, r4, #1
005fbf08  64 41 8d e5                                      str r4, [sp, #0x164]
005fbf0c  e8 f7 ff 0a                                      beq #0x5f9eb4
005fbf10  a4 50 9d e5                                      ldr r5, [sp, #0xa4]
005fbf14  9c 80 9d e5                                      ldr r8, [sp, #0x9c]
005fbf18  a8 a0 9d e5                                      ldr sl, [sp, #0xa8]
005fbf1c  5c 70 9d e5                                      ldr r7, [sp, #0x5c]
005fbf20  0a 80 88 e0                                      add r8, r8, sl
005fbf24  07 60 85 e0                                      add r6, r5, r7
005fbf28  9c 80 8d e5                                      str r8, [sp, #0x9c]
005fbf2c  08 a0 a0 e1                                      mov sl, r8
005fbf30  a4 60 8d e5                                      str r6, [sp, #0xa4]
005fbf34  ab ff ff ea                                      b #0x5fbde8
005fbf38  83 00 54 e1                                      cmp r4, r3, lsl #1
005fbf3c  06 40 84 d0                                      addle r4, r4, r6
005fbf40  04 30 63 d0                                      rsble r3, r3, r4
005fbf44  14 30 c1 d5                                      strble r3, [r1, #0x14]
005fbf48  2d ff ff ea                                      b #0x5fbc04
005fbf4c  01 00 12 e3                                      tst r2, #1
005fbf50  00 00 e0 03                                      mvneq r0, #0
005fbf54  40 00 8d 05                                      streq r0, [sp, #0x40]
005fbf58  08 fa ff 0a                                      beq #0x5fa780
005fbf5c  05 fa ff ea                                      b #0x5fa778
005fbf60  01 00 12 e3                                      tst r2, #1
005fbf64  00 00 e0 03                                      mvneq r0, #0
005fbf68  40 00 8d 05                                      streq r0, [sp, #0x40]
005fbf6c  a5 fa ff 0a                                      beq #0x5faa08
005fbf70  a2 fa ff ea                                      b #0x5faa00
005fbf74  01 00 12 e3                                      tst r2, #1
005fbf78  00 c0 e0 03                                      mvneq ip, #0
005fbf7c  3c c0 8d 05                                      streq ip, [sp, #0x3c]
005fbf80  e9 f7 ff 0a                                      beq #0x5f9f2c
005fbf84  e6 f7 ff ea                                      b #0x5f9f24
005fbf88  38 60 9d e5                                      ldr r6, [sp, #0x38]
005fbf8c  00 00 56 e3                                      cmp r6, #0
005fbf90  67 00 00 1a                                      bne #0x5fc134
005fbf94  64 71 9d e5                                      ldr r7, [sp, #0x164]
005fbf98  00 00 57 e3                                      cmp r7, #0
005fbf9c  c4 f7 ff 0a                                      beq #0x5f9eb4
005fbfa0  c0 80 9d e5                                      ldr r8, [sp, #0xc0]
005fbfa4  cc a0 dd e5                                      ldrb sl, [sp, #0xcc]
005fbfa8  ce 60 dd e5                                      ldrb r6, [sp, #0xce]
005fbfac  34 20 8d e5                                      str r2, [sp, #0x34]
005fbfb0  b4 c0 9d e5                                      ldr ip, [sp, #0xb4]
005fbfb4  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
005fbfb8  cd 10 dd e5                                      ldrb r1, [sp, #0xcd]
005fbfbc  b8 20 9d e5                                      ldr r2, [sp, #0xb8]
005fbfc0  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
005fbfc4  bc 70 9d e5                                      ldr r7, [sp, #0xbc]
005fbfc8  64 80 8d e5                                      str r8, [sp, #0x64]
005fbfcc  60 a0 8d e5                                      str sl, [sp, #0x60]
005fbfd0  3c 60 8d e5                                      str r6, [sp, #0x3c]
005fbfd4  50 c0 8d e5                                      str ip, [sp, #0x50]
005fbfd8  4c 00 8d e5                                      str r0, [sp, #0x4c]
005fbfdc  48 10 8d e5                                      str r1, [sp, #0x48]
005fbfe0  44 20 8d e5                                      str r2, [sp, #0x44]
005fbfe4  40 30 8d e5                                      str r3, [sp, #0x40]
005fbfe8  38 70 8d e5                                      str r7, [sp, #0x38]
005fbfec  0b 80 a0 e1                                      mov r8, fp
005fbff0  0b 60 a0 e1                                      mov r6, fp
005fbff4  f0 a0 8d e2                                      add sl, sp, #0xf0
005fbff8  6c 90 8d e5                                      str sb, [sp, #0x6c]
005fbffc  68 40 8d e5                                      str r4, [sp, #0x68]
005fc000  68 70 9d e5                                      ldr r7, [sp, #0x68]
005fc004  00 00 57 e3                                      cmp r7, #0
005fc008  2c 00 00 0a                                      beq #0x5fc0c0
005fc00c  68 70 9d e5                                      ldr r7, [sp, #0x68]
005fc010  00 40 a0 e3                                      mov r4, #0
005fc014  05 20 a0 e1                                      mov r2, r5
005fc018  06 10 a0 e1                                      mov r1, r6
005fc01c  0a 00 a0 e1                                      mov r0, sl
005fc020  10 4a f4 eb                                      bl #0x30e868
005fc024  64 e0 9d e5                                      ldr lr, [sp, #0x64]
005fc028  b0 9f dd e1                                      ldrh sb, [sp, #0xf0]
005fc02c  60 10 9d e5                                      ldr r1, [sp, #0x60]
005fc030  05 60 86 e0                                      add r6, r6, r5
005fc034  0e 00 09 e0                                      and r0, sb, lr
005fc038  30 01 a0 e1                                      lsr r0, r0, r1
005fc03c  a7 48 f4 eb                                      bl #0x30e2e0
005fc040  50 10 9d e5                                      ldr r1, [sp, #0x50]
005fc044  48 4b f4 eb                                      bl #0x30ed6c
005fc048  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005fc04c  48 30 9d e5                                      ldr r3, [sp, #0x48]
005fc050  00 b0 a0 e1                                      mov fp, r0
005fc054  02 00 09 e0                                      and r0, sb, r2
005fc058  30 03 a0 e1                                      lsr r0, r0, r3
005fc05c  9f 48 f4 eb                                      bl #0x30e2e0
005fc060  44 10 9d e5                                      ldr r1, [sp, #0x44]
005fc064  40 4b f4 eb                                      bl #0x30ed6c
005fc068  00 10 a0 e1                                      mov r1, r0
005fc06c  0b 00 a0 e1                                      mov r0, fp
005fc070  cb 4a f4 eb                                      bl #0x30eba4
005fc074  40 c0 9d e5                                      ldr ip, [sp, #0x40]
005fc078  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
005fc07c  00 b0 a0 e1                                      mov fp, r0
005fc080  0c 00 09 e0                                      and r0, sb, ip
005fc084  30 0e a0 e1                                      lsr r0, r0, lr
005fc088  94 48 f4 eb                                      bl #0x30e2e0
005fc08c  38 10 9d e5                                      ldr r1, [sp, #0x38]
005fc090  35 4b f4 eb                                      bl #0x30ed6c
005fc094  00 10 a0 e1                                      mov r1, r0
005fc098  0b 00 a0 e1                                      mov r0, fp
005fc09c  c0 4a f4 eb                                      bl #0x30eba4
005fc0a0  00 1f 0f e3                                      movw r1, #0xff00
005fc0a4  7f 17 44 e3                                      movt r1, #0x477f
005fc0a8  2f 4b f4 eb                                      bl #0x30ed6c
005fc0ac  7b 08 0b eb                                      bl #0x8be2a0
005fc0b0  01 70 57 e2                                      subs r7, r7, #1
005fc0b4  b4 00 88 e1                                      strh r0, [r8, r4]
005fc0b8  02 40 84 e2                                      add r4, r4, #2
005fc0bc  d4 ff ff 1a                                      bne #0x5fc014
005fc0c0  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fc0c4  01 00 50 e2                                      subs r0, r0, #1
005fc0c8  64 01 8d e5                                      str r0, [sp, #0x164]
005fc0cc  78 f7 ff 0a                                      beq #0x5f9eb4
005fc0d0  34 10 9d e5                                      ldr r1, [sp, #0x34]
005fc0d4  58 30 9d e5                                      ldr r3, [sp, #0x58]
005fc0d8  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005fc0dc  6c 40 9d e5                                      ldr r4, [sp, #0x6c]
005fc0e0  02 60 81 e0                                      add r6, r1, r2
005fc0e4  04 30 83 e0                                      add r3, r3, r4
005fc0e8  58 30 8d e5                                      str r3, [sp, #0x58]
005fc0ec  34 60 8d e5                                      str r6, [sp, #0x34]
005fc0f0  03 80 a0 e1                                      mov r8, r3
005fc0f4  c1 ff ff ea                                      b #0x5fc000
005fc0f8  01 00 12 e3                                      tst r2, #1
005fc0fc  00 20 e0 03                                      mvneq r2, #0
005fc100  40 20 8d 05                                      streq r2, [sp, #0x40]
005fc104  9d fe ff 0a                                      beq #0x5fbb80
005fc108  9a fe ff ea                                      b #0x5fbb78
005fc10c  01 00 12 e3                                      tst r2, #1
005fc110  00 20 e0 03                                      mvneq r2, #0
005fc114  3c 20 8d 05                                      streq r2, [sp, #0x3c]
005fc118  aa fc ff 0a                                      beq #0x5fb3c8
005fc11c  a7 fc ff ea                                      b #0x5fb3c0
005fc120  01 00 12 e3                                      tst r2, #1
005fc124  00 20 e0 03                                      mvneq r2, #0
005fc128  3c 20 8d 05                                      streq r2, [sp, #0x3c]
005fc12c  9c fd ff 0a                                      beq #0x5fb7a4
005fc130  99 fd ff ea                                      b #0x5fb79c
005fc134  64 81 9d e5                                      ldr r8, [sp, #0x164]
005fc138  58 a1 9d e5                                      ldr sl, [sp, #0x158]
005fc13c  01 60 48 e2                                      sub r6, r8, #1
005fc140  96 a9 26 e0                                      mla r6, r6, sb, sl
005fc144  00 90 69 e2                                      rsb sb, sb, #0
005fc148  06 00 5a e1                                      cmp sl, r6
005fc14c  68 90 8d e5                                      str sb, [sp, #0x68]
005fc150  57 f7 ff 8a                                      bhi #0x5f9eb4
005fc154  cc c0 dd e5                                      ldrb ip, [sp, #0xcc]
005fc158  34 a0 8d e5                                      str sl, [sp, #0x34]
005fc15c  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
005fc160  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
005fc164  cd 20 dd e5                                      ldrb r2, [sp, #0xcd]
005fc168  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
005fc16c  c8 70 9d e5                                      ldr r7, [sp, #0xc8]
005fc170  ce 80 dd e5                                      ldrb r8, [sp, #0xce]
005fc174  bc a0 9d e5                                      ldr sl, [sp, #0xbc]
005fc178  64 40 8d e5                                      str r4, [sp, #0x64]
005fc17c  c0 b0 9d e5                                      ldr fp, [sp, #0xc0]
005fc180  58 40 9d e5                                      ldr r4, [sp, #0x58]
005fc184  50 c0 8d e5                                      str ip, [sp, #0x50]
005fc188  f0 c0 8d e2                                      add ip, sp, #0xf0
005fc18c  4c 00 8d e5                                      str r0, [sp, #0x4c]
005fc190  48 10 8d e5                                      str r1, [sp, #0x48]
005fc194  44 20 8d e5                                      str r2, [sp, #0x44]
005fc198  40 30 8d e5                                      str r3, [sp, #0x40]
005fc19c  3c 70 8d e5                                      str r7, [sp, #0x3c]
005fc1a0  38 80 8d e5                                      str r8, [sp, #0x38]
005fc1a4  54 a0 8d e5                                      str sl, [sp, #0x54]
005fc1a8  60 c0 8d e5                                      str ip, [sp, #0x60]
005fc1ac  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005fc1b0  00 00 5c e3                                      cmp ip, #0
005fc1b4  4d 00 00 0a                                      beq #0x5fc2f0
005fc1b8  64 80 9d e5                                      ldr r8, [sp, #0x64]
005fc1bc  00 70 a0 e3                                      mov r7, #0
005fc1c0  b7 a0 96 e1                                      ldrh sl, [r6, r7]
005fc1c4  50 e0 9d e5                                      ldr lr, [sp, #0x50]
005fc1c8  0b 00 0a e0                                      and r0, sl, fp
005fc1cc  30 0e a0 e1                                      lsr r0, r0, lr
005fc1d0  42 48 f4 eb                                      bl #0x30e2e0
005fc1d4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005fc1d8  e3 4a f4 eb                                      bl #0x30ed6c
005fc1dc  48 10 9d e5                                      ldr r1, [sp, #0x48]
005fc1e0  44 20 9d e5                                      ldr r2, [sp, #0x44]
005fc1e4  00 90 a0 e1                                      mov sb, r0
005fc1e8  01 00 0a e0                                      and r0, sl, r1
005fc1ec  30 02 a0 e1                                      lsr r0, r0, r2
005fc1f0  3a 48 f4 eb                                      bl #0x30e2e0
005fc1f4  40 10 9d e5                                      ldr r1, [sp, #0x40]
005fc1f8  db 4a f4 eb                                      bl #0x30ed6c
005fc1fc  00 10 a0 e1                                      mov r1, r0
005fc200  09 00 a0 e1                                      mov r0, sb
005fc204  66 4a f4 eb                                      bl #0x30eba4
005fc208  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005fc20c  00 90 a0 e1                                      mov sb, r0
005fc210  03 00 0a e0                                      and r0, sl, r3
005fc214  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005fc218  30 0a a0 e1                                      lsr r0, r0, sl
005fc21c  2f 48 f4 eb                                      bl #0x30e2e0
005fc220  54 10 9d e5                                      ldr r1, [sp, #0x54]
005fc224  d0 4a f4 eb                                      bl #0x30ed6c
005fc228  00 10 a0 e1                                      mov r1, r0
005fc22c  09 00 a0 e1                                      mov r0, sb
005fc230  5b 4a f4 eb                                      bl #0x30eba4
005fc234  00 1f 0f e3                                      movw r1, #0xff00
005fc238  7f 17 44 e3                                      movt r1, #0x477f
005fc23c  ca 4a f4 eb                                      bl #0x30ed6c
005fc240  16 08 0b eb                                      bl #0x8be2a0
005fc244  b0 0f cd e1                                      strh r0, [sp, #0xf0]
005fc248  b0 a0 d4 e1                                      ldrh sl, [r4]
005fc24c  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005fc250  0b 00 0a e0                                      and r0, sl, fp
005fc254  30 0c a0 e1                                      lsr r0, r0, ip
005fc258  20 48 f4 eb                                      bl #0x30e2e0
005fc25c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005fc260  c1 4a f4 eb                                      bl #0x30ed6c
005fc264  48 e0 9d e5                                      ldr lr, [sp, #0x48]
005fc268  44 10 9d e5                                      ldr r1, [sp, #0x44]
005fc26c  00 90 a0 e1                                      mov sb, r0
005fc270  0e 00 0a e0                                      and r0, sl, lr
005fc274  30 01 a0 e1                                      lsr r0, r0, r1
005fc278  18 48 f4 eb                                      bl #0x30e2e0
005fc27c  40 10 9d e5                                      ldr r1, [sp, #0x40]
005fc280  b9 4a f4 eb                                      bl #0x30ed6c
005fc284  00 10 a0 e1                                      mov r1, r0
005fc288  09 00 a0 e1                                      mov r0, sb
005fc28c  44 4a f4 eb                                      bl #0x30eba4
005fc290  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005fc294  38 30 9d e5                                      ldr r3, [sp, #0x38]
005fc298  00 90 a0 e1                                      mov sb, r0
005fc29c  02 00 0a e0                                      and r0, sl, r2
005fc2a0  30 03 a0 e1                                      lsr r0, r0, r3
005fc2a4  0d 48 f4 eb                                      bl #0x30e2e0
005fc2a8  54 10 9d e5                                      ldr r1, [sp, #0x54]
005fc2ac  ae 4a f4 eb                                      bl #0x30ed6c
005fc2b0  00 10 a0 e1                                      mov r1, r0
005fc2b4  09 00 a0 e1                                      mov r0, sb
005fc2b8  39 4a f4 eb                                      bl #0x30eba4
005fc2bc  00 1f 0f e3                                      movw r1, #0xff00
005fc2c0  7f 17 44 e3                                      movt r1, #0x477f
005fc2c4  a8 4a f4 eb                                      bl #0x30ed6c
005fc2c8  f4 07 0b eb                                      bl #0x8be2a0
005fc2cc  05 20 a0 e1                                      mov r2, r5
005fc2d0  b7 00 86 e1                                      strh r0, [r6, r7]
005fc2d4  04 00 a0 e1                                      mov r0, r4
005fc2d8  60 10 9d e5                                      ldr r1, [sp, #0x60]
005fc2dc  61 49 f4 eb                                      bl #0x30e868
005fc2e0  01 80 58 e2                                      subs r8, r8, #1
005fc2e4  05 40 84 e0                                      add r4, r4, r5
005fc2e8  02 70 87 e2                                      add r7, r7, #2
005fc2ec  b3 ff ff 1a                                      bne #0x5fc1c0
005fc2f0  34 70 9d e5                                      ldr r7, [sp, #0x34]
005fc2f4  5c 80 9d e5                                      ldr r8, [sp, #0x5c]
005fc2f8  68 a0 9d e5                                      ldr sl, [sp, #0x68]
005fc2fc  08 40 87 e0                                      add r4, r7, r8
005fc300  0a 60 86 e0                                      add r6, r6, sl
005fc304  06 00 54 e1                                      cmp r4, r6
005fc308  e9 f6 ff 8a                                      bhi #0x5f9eb4
005fc30c  34 40 8d e5                                      str r4, [sp, #0x34]
005fc310  a5 ff ff ea                                      b #0x5fc1ac
005fc314  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005fc318  00 00 5c e3                                      cmp ip, #0
005fc31c  e7 02 00 1a                                      bne #0x5fcec0
005fc320  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fc324  00 00 50 e3                                      cmp r0, #0
005fc328  e1 f6 ff 0a                                      beq #0x5f9eb4
005fc32c  c9 30 dd e5                                      ldrb r3, [sp, #0xc9]
005fc330  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
005fc334  c5 20 dd e5                                      ldrb r2, [sp, #0xc5]
005fc338  68 80 8d e5                                      str r8, [sp, #0x68]
005fc33c  c6 70 dd e5                                      ldrb r7, [sp, #0xc6]
005fc340  58 30 8d e5                                      str r3, [sp, #0x58]
005fc344  68 30 9d e5                                      ldr r3, [sp, #0x68]
005fc348  64 10 8d e5                                      str r1, [sp, #0x64]
005fc34c  60 20 8d e5                                      str r2, [sp, #0x60]
005fc350  b8 50 9d e5                                      ldr r5, [sp, #0xb8]
005fc354  ca c0 dd e5                                      ldrb ip, [sp, #0xca]
005fc358  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
005fc35c  c7 10 dd e5                                      ldrb r1, [sp, #0xc7]
005fc360  cb 20 dd e5                                      ldrb r2, [sp, #0xcb]
005fc364  c4 80 dd e5                                      ldrb r8, [sp, #0xc4]
005fc368  c8 a0 dd e5                                      ldrb sl, [sp, #0xc8]
005fc36c  4c 70 8d e5                                      str r7, [sp, #0x4c]
005fc370  6c 30 8d e5                                      str r3, [sp, #0x6c]
005fc374  03 70 a0 e1                                      mov r7, r3
005fc378  12 3e 8d e2                                      add r3, sp, #0x120
005fc37c  70 90 8d e5                                      str sb, [sp, #0x70]
005fc380  50 50 8d e5                                      str r5, [sp, #0x50]
005fc384  48 c0 8d e5                                      str ip, [sp, #0x48]
005fc388  44 00 8d e5                                      str r0, [sp, #0x44]
005fc38c  38 10 8d e5                                      str r1, [sp, #0x38]
005fc390  34 20 8d e5                                      str r2, [sp, #0x34]
005fc394  03 90 a0 e1                                      mov sb, r3
005fc398  00 00 54 e3                                      cmp r4, #0
005fc39c  00 50 a0 13                                      movne r5, #0
005fc3a0  54 60 8d 15                                      strne r6, [sp, #0x54]
005fc3a4  27 00 00 0a                                      beq #0x5fc448
005fc3a8  07 10 a0 e1                                      mov r1, r7
005fc3ac  0b 20 a0 e1                                      mov r2, fp
005fc3b0  09 00 a0 e1                                      mov r0, sb
005fc3b4  2b 49 f4 eb                                      bl #0x30e868
005fc3b8  20 11 dd e5                                      ldrb r1, [sp, #0x120]
005fc3bc  21 21 dd e5                                      ldrb r2, [sp, #0x121]
005fc3c0  22 31 dd e5                                      ldrb r3, [sp, #0x122]
005fc3c4  14 11 cd e5                                      strb r1, [sp, #0x114]
005fc3c8  15 21 cd e5                                      strb r2, [sp, #0x115]
005fc3cc  16 31 cd e5                                      strb r3, [sp, #0x116]
005fc3d0  14 31 9d e5                                      ldr r3, [sp, #0x114]
005fc3d4  60 60 9d e5                                      ldr r6, [sp, #0x60]
005fc3d8  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
005fc3dc  33 28 a0 e1                                      lsr r2, r3, r8
005fc3e0  33 16 a0 e1                                      lsr r1, r3, r6
005fc3e4  33 0c a0 e1                                      lsr r0, r3, ip
005fc3e8  50 60 9d e5                                      ldr r6, [sp, #0x50]
005fc3ec  58 c0 9d e5                                      ldr ip, [sp, #0x58]
005fc3f0  0b 70 87 e0                                      add r7, r7, fp
005fc3f4  11 1c 06 e0                                      and r1, r6, r1, lsl ip
005fc3f8  64 60 9d e5                                      ldr r6, [sp, #0x64]
005fc3fc  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005fc400  12 2a 06 e0                                      and r2, r6, r2, lsl sl
005fc404  33 3c a0 e1                                      lsr r3, r3, ip
005fc408  44 60 9d e5                                      ldr r6, [sp, #0x44]
005fc40c  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005fc410  02 20 81 e1                                      orr r2, r1, r2
005fc414  54 10 9d e5                                      ldr r1, [sp, #0x54]
005fc418  10 0c 06 e0                                      and r0, r6, r0, lsl ip
005fc41c  40 60 9d e5                                      ldr r6, [sp, #0x40]
005fc420  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005fc424  00 20 82 e1                                      orr r2, r2, r0
005fc428  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005fc42c  13 3c 06 e0                                      and r3, r6, r3, lsl ip
005fc430  03 30 82 e1                                      orr r3, r2, r3
005fc434  00 30 83 e1                                      orr r3, r3, r0
005fc438  05 30 c1 e7                                      strb r3, [r1, r5]
005fc43c  01 50 85 e2                                      add r5, r5, #1
005fc440  05 00 54 e1                                      cmp r4, r5
005fc444  d7 ff ff 1a                                      bne #0x5fc3a8
005fc448  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fc44c  01 20 52 e2                                      subs r2, r2, #1
005fc450  64 21 8d e5                                      str r2, [sp, #0x164]
005fc454  96 f6 ff 0a                                      beq #0x5f9eb4
005fc458  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
005fc45c  68 60 9d e5                                      ldr r6, [sp, #0x68]
005fc460  5c 50 9d e5                                      ldr r5, [sp, #0x5c]
005fc464  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005fc468  05 70 83 e0                                      add r7, r3, r5
005fc46c  0c 60 86 e0                                      add r6, r6, ip
005fc470  68 60 8d e5                                      str r6, [sp, #0x68]
005fc474  6c 70 8d e5                                      str r7, [sp, #0x6c]
005fc478  c6 ff ff ea                                      b #0x5fc398
005fc47c  38 10 9d e5                                      ldr r1, [sp, #0x38]
005fc480  00 00 51 e3                                      cmp r1, #0
005fc484  62 f6 ff 1a                                      bne #0x5f9e14
005fc488  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fc48c  00 00 52 e3                                      cmp r2, #0
005fc490  87 f6 ff 0a                                      beq #0x5f9eb4
005fc494  00 b0 a0 e1                                      mov fp, r0
005fc498  34 00 8d e5                                      str r0, [sp, #0x34]
005fc49c  00 60 a0 e1                                      mov r6, r0
005fc4a0  43 8f 8d e2                                      add r8, sp, #0x10c
005fc4a4  04 a0 a0 e1                                      mov sl, r4
005fc4a8  00 00 5a e3                                      cmp sl, #0
005fc4ac  0a 40 a0 11                                      movne r4, sl
005fc4b0  0d 00 00 0a                                      beq #0x5fc4ec
005fc4b4  06 10 a0 e1                                      mov r1, r6
005fc4b8  08 00 a0 e1                                      mov r0, r8
005fc4bc  07 20 a0 e1                                      mov r2, r7
005fc4c0  e8 48 f4 eb                                      bl #0x30e868
005fc4c4  2c 31 dd e5                                      ldrb r3, [sp, #0x12c]
005fc4c8  01 40 54 e2                                      subs r4, r4, #1
005fc4cc  07 60 86 e0                                      add r6, r6, r7
005fc4d0  03 30 d8 e7                                      ldrb r3, [r8, r3]
005fc4d4  00 30 c5 e5                                      strb r3, [r5]
005fc4d8  2d 31 dd e5                                      ldrb r3, [sp, #0x12d]
005fc4dc  03 30 d8 e7                                      ldrb r3, [r8, r3]
005fc4e0  01 30 c5 e5                                      strb r3, [r5, #1]
005fc4e4  02 50 85 e2                                      add r5, r5, #2
005fc4e8  f1 ff ff 1a                                      bne #0x5fc4b4
005fc4ec  64 11 9d e5                                      ldr r1, [sp, #0x164]
005fc4f0  01 10 51 e2                                      subs r1, r1, #1
005fc4f4  64 11 8d e5                                      str r1, [sp, #0x164]
005fc4f8  6d f6 ff 0a                                      beq #0x5f9eb4
005fc4fc  34 20 9d e5                                      ldr r2, [sp, #0x34]
005fc500  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005fc504  09 b0 8b e0                                      add fp, fp, sb
005fc508  0b 50 a0 e1                                      mov r5, fp
005fc50c  03 60 82 e0                                      add r6, r2, r3
005fc510  34 60 8d e5                                      str r6, [sp, #0x34]
005fc514  e3 ff ff ea                                      b #0x5fc4a8
005fc518  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fc51c  00 00 52 e3                                      cmp r2, #0
005fc520  af 04 00 1a                                      bne #0x5fd7e4
005fc524  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fc528  00 00 53 e3                                      cmp r3, #0
005fc52c  60 f6 ff 0a                                      beq #0x5f9eb4
005fc530  01 b0 a0 e1                                      mov fp, r1
005fc534  34 10 8d e5                                      str r1, [sp, #0x34]
005fc538  01 60 a0 e1                                      mov r6, r1
005fc53c  f0 80 8d e2                                      add r8, sp, #0xf0
005fc540  04 a0 a0 e1                                      mov sl, r4
005fc544  00 00 5a e3                                      cmp sl, #0
005fc548  0a 40 a0 11                                      movne r4, sl
005fc54c  0f 00 00 0a                                      beq #0x5fc590
005fc550  06 10 a0 e1                                      mov r1, r6
005fc554  08 00 a0 e1                                      mov r0, r8
005fc558  07 20 a0 e1                                      mov r2, r7
005fc55c  c1 48 f4 eb                                      bl #0x30e868
005fc560  0c 31 dd e5                                      ldrb r3, [sp, #0x10c]
005fc564  01 40 54 e2                                      subs r4, r4, #1
005fc568  07 60 86 e0                                      add r6, r6, r7
005fc56c  83 30 a0 e1                                      lsl r3, r3, #1
005fc570  b3 30 98 e1                                      ldrh r3, [r8, r3]
005fc574  b0 30 c5 e1                                      strh r3, [r5]
005fc578  0d 31 dd e5                                      ldrb r3, [sp, #0x10d]
005fc57c  83 30 a0 e1                                      lsl r3, r3, #1
005fc580  b3 30 98 e1                                      ldrh r3, [r8, r3]
005fc584  b2 30 c5 e1                                      strh r3, [r5, #2]
005fc588  04 50 85 e2                                      add r5, r5, #4
005fc58c  ef ff ff 1a                                      bne #0x5fc550
005fc590  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fc594  01 20 52 e2                                      subs r2, r2, #1
005fc598  64 21 8d e5                                      str r2, [sp, #0x164]
005fc59c  44 f6 ff 0a                                      beq #0x5f9eb4
005fc5a0  34 30 9d e5                                      ldr r3, [sp, #0x34]
005fc5a4  5c 40 9d e5                                      ldr r4, [sp, #0x5c]
005fc5a8  09 b0 8b e0                                      add fp, fp, sb
005fc5ac  0b 50 a0 e1                                      mov r5, fp
005fc5b0  04 60 83 e0                                      add r6, r3, r4
005fc5b4  34 60 8d e5                                      str r6, [sp, #0x34]
005fc5b8  e1 ff ff ea                                      b #0x5fc544
005fc5bc  38 00 9d e5                                      ldr r0, [sp, #0x38]
005fc5c0  00 00 50 e3                                      cmp r0, #0
005fc5c4  f5 03 00 0a                                      beq #0x5fd5a0
005fc5c8  64 01 9d e5                                      ldr r0, [sp, #0x164]
005fc5cc  01 30 40 e2                                      sub r3, r0, #1
005fc5d0  93 89 23 e0                                      mla r3, r3, sb, r8
005fc5d4  00 90 69 e2                                      rsb sb, sb, #0
005fc5d8  03 00 58 e1                                      cmp r8, r3
005fc5dc  ac 90 8d e5                                      str sb, [sp, #0xac]
005fc5e0  33 f6 ff 8a                                      bhi #0x5f9eb4
005fc5e4  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
005fc5e8  c4 20 dd e5                                      ldrb r2, [sp, #0xc4]
005fc5ec  c8 50 dd e5                                      ldrb r5, [sp, #0xc8]
005fc5f0  dc 70 9d e5                                      ldr r7, [sp, #0xdc]
005fc5f4  eb a0 dd e5                                      ldrb sl, [sp, #0xeb]
005fc5f8  b4 c0 9d e5                                      ldr ip, [sp, #0xb4]
005fc5fc  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
005fc600  a4 80 8d e5                                      str r8, [sp, #0xa4]
005fc604  98 10 8d e5                                      str r1, [sp, #0x98]
005fc608  e8 80 dd e5                                      ldrb r8, [sp, #0xe8]
005fc60c  c5 10 dd e5                                      ldrb r1, [sp, #0xc5]
005fc610  94 20 8d e5                                      str r2, [sp, #0x94]
005fc614  90 50 8d e5                                      str r5, [sp, #0x90]
005fc618  c9 20 dd e5                                      ldrb r2, [sp, #0xc9]
005fc61c  e0 50 9d e5                                      ldr r5, [sp, #0xe0]
005fc620  8c 70 8d e5                                      str r7, [sp, #0x8c]
005fc624  88 80 8d e5                                      str r8, [sp, #0x88]
005fc628  e9 70 dd e5                                      ldrb r7, [sp, #0xe9]
005fc62c  ec 80 dd e5                                      ldrb r8, [sp, #0xec]
005fc630  84 a0 8d e5                                      str sl, [sp, #0x84]
005fc634  34 c0 8d e5                                      str ip, [sp, #0x34]
005fc638  b8 a0 9d e5                                      ldr sl, [sp, #0xb8]
005fc63c  d8 c0 9d e5                                      ldr ip, [sp, #0xd8]
005fc640  80 00 8d e5                                      str r0, [sp, #0x80]
005fc644  7c 10 8d e5                                      str r1, [sp, #0x7c]
005fc648  c6 00 dd e5                                      ldrb r0, [sp, #0xc6]
005fc64c  ca 10 dd e5                                      ldrb r1, [sp, #0xca]
005fc650  78 20 8d e5                                      str r2, [sp, #0x78]
005fc654  74 50 8d e5                                      str r5, [sp, #0x74]
005fc658  70 70 8d e5                                      str r7, [sp, #0x70]
005fc65c  6c 80 8d e5                                      str r8, [sp, #0x6c]
005fc660  54 a0 8d e5                                      str sl, [sp, #0x54]
005fc664  68 c0 8d e5                                      str ip, [sp, #0x68]
005fc668  64 00 8d e5                                      str r0, [sp, #0x64]
005fc66c  60 10 8d e5                                      str r1, [sp, #0x60]
005fc670  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005fc674  ea 50 dd e5                                      ldrb r5, [sp, #0xea]
005fc678  ed 70 dd e5                                      ldrb r7, [sp, #0xed]
005fc67c  bc 80 9d e5                                      ldr r8, [sp, #0xbc]
005fc680  c7 a0 dd e5                                      ldrb sl, [sp, #0xc7]
005fc684  cb c0 dd e5                                      ldrb ip, [sp, #0xcb]
005fc688  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
005fc68c  43 1f 8d e2                                      add r1, sp, #0x10c
005fc690  a8 40 8d e5                                      str r4, [sp, #0xa8]
005fc694  58 20 8d e5                                      str r2, [sp, #0x58]
005fc698  50 50 8d e5                                      str r5, [sp, #0x50]
005fc69c  4c 70 8d e5                                      str r7, [sp, #0x4c]
005fc6a0  48 80 8d e5                                      str r8, [sp, #0x48]
005fc6a4  44 a0 8d e5                                      str sl, [sp, #0x44]
005fc6a8  40 c0 8d e5                                      str ip, [sp, #0x40]
005fc6ac  38 00 8d e5                                      str r0, [sp, #0x38]
005fc6b0  a0 30 8d e5                                      str r3, [sp, #0xa0]
005fc6b4  9c 10 8d e5                                      str r1, [sp, #0x9c]
005fc6b8  03 40 a0 e1                                      mov r4, r3
005fc6bc  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
005fc6c0  00 00 53 e3                                      cmp r3, #0
005fc6c4  a8 90 9d 15                                      ldrne sb, [sp, #0xa8]
005fc6c8  86 00 00 0a                                      beq #0x5fc8e8
005fc6cc  00 30 d4 e5                                      ldrb r3, [r4]
005fc6d0  98 50 9d e5                                      ldr r5, [sp, #0x98]
005fc6d4  94 80 9d e5                                      ldr r8, [sp, #0x94]
005fc6d8  2c 31 cd e5                                      strb r3, [sp, #0x12c]
005fc6dc  01 30 f4 e5                                      ldrb r3, [r4, #1]!
005fc6e0  80 a0 9d e5                                      ldr sl, [sp, #0x80]
005fc6e4  7c e0 9d e5                                      ldr lr, [sp, #0x7c]
005fc6e8  2d 31 cd e5                                      strb r3, [sp, #0x12d]
005fc6ec  01 30 d4 e5                                      ldrb r3, [r4, #1]
005fc6f0  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
005fc6f4  06 00 a0 e1                                      mov r0, r6
005fc6f8  2e 31 cd e5                                      strb r3, [sp, #0x12e]
005fc6fc  2c 31 9d e5                                      ldr r3, [sp, #0x12c]
005fc700  0b 20 a0 e1                                      mov r2, fp
005fc704  05 70 03 e0                                      and r7, r3, r5
005fc708  0a c0 03 e0                                      and ip, r3, sl
005fc70c  68 50 9d e5                                      ldr r5, [sp, #0x68]
005fc710  37 78 a0 e1                                      lsr r7, r7, r8
005fc714  90 80 9d e5                                      ldr r8, [sp, #0x90]
005fc718  3c ce a0 e1                                      lsr ip, ip, lr
005fc71c  64 e0 9d e5                                      ldr lr, [sp, #0x64]
005fc720  05 a0 03 e0                                      and sl, r3, r5
005fc724  17 78 a0 e1                                      lsl r7, r7, r8
005fc728  60 80 9d e5                                      ldr r8, [sp, #0x60]
005fc72c  3a ae a0 e1                                      lsr sl, sl, lr
005fc730  78 50 9d e5                                      ldr r5, [sp, #0x78]
005fc734  1a a8 a0 e1                                      lsl sl, sl, r8
005fc738  1c c5 a0 e1                                      lsl ip, ip, r5
005fc73c  1c a0 8d e5                                      str sl, [sp, #0x1c]
005fc740  8c a0 9d e5                                      ldr sl, [sp, #0x8c]
005fc744  74 50 9d e5                                      ldr r5, [sp, #0x74]
005fc748  24 c0 8d e5                                      str ip, [sp, #0x24]
005fc74c  0a 80 03 e0                                      and r8, r3, sl
005fc750  88 c0 9d e5                                      ldr ip, [sp, #0x88]
005fc754  70 a0 9d e5                                      ldr sl, [sp, #0x70]
005fc758  05 e0 03 e0                                      and lr, r3, r5
005fc75c  38 8c a0 e1                                      lsr r8, r8, ip
005fc760  3e ea a0 e1                                      lsr lr, lr, sl
005fc764  58 c0 9d e5                                      ldr ip, [sp, #0x58]
005fc768  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005fc76c  03 50 0c e0                                      and r5, ip, r3
005fc770  18 7a 87 e1                                      orr r7, r7, r8, lsl sl
005fc774  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005fc778  24 80 9d e5                                      ldr r8, [sp, #0x24]
005fc77c  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005fc780  35 5c a0 e1                                      lsr r5, r5, ip
005fc784  1e ca 88 e1                                      orr ip, r8, lr, lsl sl
005fc788  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
005fc78c  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
005fc790  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005fc794  15 58 8e e1                                      orr r5, lr, r5, lsl r8
005fc798  38 e0 9d e5                                      ldr lr, [sp, #0x38]
005fc79c  40 80 9d e5                                      ldr r8, [sp, #0x40]
005fc7a0  33 3a a0 e1                                      lsr r3, r3, sl
005fc7a4  13 38 0e e0                                      and r3, lr, r3, lsl r8
005fc7a8  34 a0 9d e5                                      ldr sl, [sp, #0x34]
005fc7ac  54 80 9d e5                                      ldr r8, [sp, #0x54]
005fc7b0  0a e0 07 e0                                      and lr, r7, sl
005fc7b4  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005fc7b8  48 a0 9d e5                                      ldr sl, [sp, #0x48]
005fc7bc  08 c0 0c e0                                      and ip, ip, r8
005fc7c0  0e e0 87 e1                                      orr lr, r7, lr
005fc7c4  0a 50 05 e0                                      and r5, r5, sl
005fc7c8  0c c0 8e e1                                      orr ip, lr, ip
005fc7cc  05 c0 8c e1                                      orr ip, ip, r5
005fc7d0  03 30 8c e1                                      orr r3, ip, r3
005fc7d4  0c 31 cd e5                                      strb r3, [sp, #0x10c]
005fc7d8  00 30 d6 e5                                      ldrb r3, [r6]
005fc7dc  98 c0 9d e5                                      ldr ip, [sp, #0x98]
005fc7e0  94 e0 9d e5                                      ldr lr, [sp, #0x94]
005fc7e4  28 31 cd e5                                      strb r3, [sp, #0x128]
005fc7e8  01 30 d6 e5                                      ldrb r3, [r6, #1]
005fc7ec  80 50 9d e5                                      ldr r5, [sp, #0x80]
005fc7f0  7c 80 9d e5                                      ldr r8, [sp, #0x7c]
005fc7f4  29 31 cd e5                                      strb r3, [sp, #0x129]
005fc7f8  02 30 d6 e5                                      ldrb r3, [r6, #2]
005fc7fc  0b 60 86 e0                                      add r6, r6, fp
005fc800  2a 31 cd e5                                      strb r3, [sp, #0x12a]
005fc804  28 31 9d e5                                      ldr r3, [sp, #0x128]
005fc808  0c 70 03 e0                                      and r7, r3, ip
005fc80c  37 7e a0 e1                                      lsr r7, r7, lr
005fc810  05 c0 03 e0                                      and ip, r3, r5
005fc814  68 e0 9d e5                                      ldr lr, [sp, #0x68]
005fc818  90 50 9d e5                                      ldr r5, [sp, #0x90]
005fc81c  3c c8 a0 e1                                      lsr ip, ip, r8
005fc820  64 80 9d e5                                      ldr r8, [sp, #0x64]
005fc824  0e a0 03 e0                                      and sl, r3, lr
005fc828  17 75 a0 e1                                      lsl r7, r7, r5
005fc82c  60 50 9d e5                                      ldr r5, [sp, #0x60]
005fc830  3a a8 a0 e1                                      lsr sl, sl, r8
005fc834  78 e0 9d e5                                      ldr lr, [sp, #0x78]
005fc838  1a a5 a0 e1                                      lsl sl, sl, r5
005fc83c  1c ce a0 e1                                      lsl ip, ip, lr
005fc840  1c a0 8d e5                                      str sl, [sp, #0x1c]
005fc844  8c a0 9d e5                                      ldr sl, [sp, #0x8c]
005fc848  74 50 9d e5                                      ldr r5, [sp, #0x74]
005fc84c  24 c0 8d e5                                      str ip, [sp, #0x24]
005fc850  0a 80 03 e0                                      and r8, r3, sl
005fc854  88 c0 9d e5                                      ldr ip, [sp, #0x88]
005fc858  70 a0 9d e5                                      ldr sl, [sp, #0x70]
005fc85c  05 e0 03 e0                                      and lr, r3, r5
005fc860  38 8c a0 e1                                      lsr r8, r8, ip
005fc864  3e ea a0 e1                                      lsr lr, lr, sl
005fc868  58 c0 9d e5                                      ldr ip, [sp, #0x58]
005fc86c  84 a0 9d e5                                      ldr sl, [sp, #0x84]
005fc870  03 50 0c e0                                      and r5, ip, r3
005fc874  18 7a 87 e1                                      orr r7, r7, r8, lsl sl
005fc878  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005fc87c  24 80 9d e5                                      ldr r8, [sp, #0x24]
005fc880  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
005fc884  35 5c a0 e1                                      lsr r5, r5, ip
005fc888  1e ca 88 e1                                      orr ip, r8, lr, lsl sl
005fc88c  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
005fc890  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
005fc894  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005fc898  15 58 8e e1                                      orr r5, lr, r5, lsl r8
005fc89c  38 e0 9d e5                                      ldr lr, [sp, #0x38]
005fc8a0  40 80 9d e5                                      ldr r8, [sp, #0x40]
005fc8a4  33 3a a0 e1                                      lsr r3, r3, sl
005fc8a8  13 38 0e e0                                      and r3, lr, r3, lsl r8
005fc8ac  34 a0 9d e5                                      ldr sl, [sp, #0x34]
005fc8b0  54 80 9d e5                                      ldr r8, [sp, #0x54]
005fc8b4  0a e0 07 e0                                      and lr, r7, sl
005fc8b8  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005fc8bc  48 a0 9d e5                                      ldr sl, [sp, #0x48]
005fc8c0  08 c0 0c e0                                      and ip, ip, r8
005fc8c4  0e e0 87 e1                                      orr lr, r7, lr
005fc8c8  0c c0 8e e1                                      orr ip, lr, ip
005fc8cc  0a 50 05 e0                                      and r5, r5, sl
005fc8d0  05 c0 8c e1                                      orr ip, ip, r5
005fc8d4  03 30 8c e1                                      orr r3, ip, r3
005fc8d8  01 30 44 e5                                      strb r3, [r4, #-1]
005fc8dc  e1 47 f4 eb                                      bl #0x30e868
005fc8e0  01 90 59 e2                                      subs sb, sb, #1
005fc8e4  78 ff ff 1a                                      bne #0x5fc6cc
005fc8e8  a4 c0 9d e5                                      ldr ip, [sp, #0xa4]
005fc8ec  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005fc8f0  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
005fc8f4  ac 20 9d e5                                      ldr r2, [sp, #0xac]
005fc8f8  00 60 8c e0                                      add r6, ip, r0
005fc8fc  02 40 81 e0                                      add r4, r1, r2
005fc900  06 00 54 e1                                      cmp r4, r6
005fc904  6a f5 ff 3a                                      blo #0x5f9eb4
005fc908  a0 40 8d e5                                      str r4, [sp, #0xa0]
005fc90c  a4 60 8d e5                                      str r6, [sp, #0xa4]
005fc910  69 ff ff ea                                      b #0x5fc6bc
005fc914  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fc918  00 00 52 e3                                      cmp r2, #0
005fc91c  ea 02 00 1a                                      bne #0x5fd4cc
005fc920  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fc924  00 00 53 e3                                      cmp r3, #0
005fc928  61 f5 ff 0a                                      beq #0x5f9eb4
005fc92c  09 b0 a0 e1                                      mov fp, sb
005fc930  34 10 8d e5                                      str r1, [sp, #0x34]
005fc934  01 60 a0 e1                                      mov r6, r1
005fc938  01 a0 a0 e1                                      mov sl, r1
005fc93c  f0 80 8d e2                                      add r8, sp, #0xf0
005fc940  04 90 a0 e1                                      mov sb, r4
005fc944  00 00 59 e3                                      cmp sb, #0
005fc948  09 40 a0 11                                      movne r4, sb
005fc94c  13 00 00 0a                                      beq #0x5fc9a0
005fc950  0a 10 a0 e1                                      mov r1, sl
005fc954  08 00 a0 e1                                      mov r0, r8
005fc958  07 20 a0 e1                                      mov r2, r7
005fc95c  c1 47 f4 eb                                      bl #0x30e868
005fc960  0c 31 dd e5                                      ldrb r3, [sp, #0x10c]
005fc964  01 40 54 e2                                      subs r4, r4, #1
005fc968  07 a0 8a e0                                      add sl, sl, r7
005fc96c  83 30 a0 e1                                      lsl r3, r3, #1
005fc970  b3 30 98 e1                                      ldrh r3, [r8, r3]
005fc974  b0 30 c6 e1                                      strh r3, [r6]
005fc978  0d 31 dd e5                                      ldrb r3, [sp, #0x10d]
005fc97c  83 30 a0 e1                                      lsl r3, r3, #1
005fc980  b3 30 98 e1                                      ldrh r3, [r8, r3]
005fc984  b2 30 c6 e1                                      strh r3, [r6, #2]
005fc988  0e 31 dd e5                                      ldrb r3, [sp, #0x10e]
005fc98c  83 30 a0 e1                                      lsl r3, r3, #1
005fc990  b3 30 98 e1                                      ldrh r3, [r8, r3]
005fc994  b4 30 c6 e1                                      strh r3, [r6, #4]
005fc998  06 60 86 e2                                      add r6, r6, #6
005fc99c  eb ff ff 1a                                      bne #0x5fc950
005fc9a0  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fc9a4  01 20 52 e2                                      subs r2, r2, #1
005fc9a8  64 21 8d e5                                      str r2, [sp, #0x164]
005fc9ac  40 f5 ff 0a                                      beq #0x5f9eb4
005fc9b0  34 30 9d e5                                      ldr r3, [sp, #0x34]
005fc9b4  5c 40 9d e5                                      ldr r4, [sp, #0x5c]
005fc9b8  0b 50 85 e0                                      add r5, r5, fp
005fc9bc  05 60 a0 e1                                      mov r6, r5
005fc9c0  04 30 83 e0                                      add r3, r3, r4
005fc9c4  34 30 8d e5                                      str r3, [sp, #0x34]
005fc9c8  03 a0 a0 e1                                      mov sl, r3
005fc9cc  dc ff ff ea                                      b #0x5fc944
005fc9d0  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fc9d4  00 00 52 e3                                      cmp r2, #0
005fc9d8  8b 02 00 1a                                      bne #0x5fd40c
005fc9dc  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fc9e0  00 00 53 e3                                      cmp r3, #0
005fc9e4  32 f5 ff 0a                                      beq #0x5f9eb4
005fc9e8  01 b0 a0 e1                                      mov fp, r1
005fc9ec  34 10 8d e5                                      str r1, [sp, #0x34]
005fc9f0  01 60 a0 e1                                      mov r6, r1
005fc9f4  f0 80 8d e2                                      add r8, sp, #0xf0
005fc9f8  04 a0 a0 e1                                      mov sl, r4
005fc9fc  00 00 5a e3                                      cmp sl, #0
005fca00  0a 40 a0 11                                      movne r4, sl
005fca04  0e 00 00 0a                                      beq #0x5fca44
005fca08  05 10 a0 e1                                      mov r1, r5
005fca0c  07 20 a0 e1                                      mov r2, r7
005fca10  08 00 a0 e1                                      mov r0, r8
005fca14  93 47 f4 eb                                      bl #0x30e868
005fca18  0c 11 dd e5                                      ldrb r1, [sp, #0x10c]
005fca1c  0d 21 dd e5                                      ldrb r2, [sp, #0x10d]
005fca20  0e 31 dd e5                                      ldrb r3, [sp, #0x10e]
005fca24  01 11 98 e7                                      ldr r1, [r8, r1, lsl #2]
005fca28  02 21 98 e7                                      ldr r2, [r8, r2, lsl #2]
005fca2c  03 31 98 e7                                      ldr r3, [r8, r3, lsl #2]
005fca30  01 40 54 e2                                      subs r4, r4, #1
005fca34  0e 00 86 e8                                      stm r6, {r1, r2, r3}
005fca38  07 50 85 e0                                      add r5, r5, r7
005fca3c  0c 60 86 e2                                      add r6, r6, #0xc
005fca40  f0 ff ff 1a                                      bne #0x5fca08
005fca44  64 11 9d e5                                      ldr r1, [sp, #0x164]
005fca48  01 10 51 e2                                      subs r1, r1, #1
005fca4c  64 11 8d e5                                      str r1, [sp, #0x164]
005fca50  17 f5 ff 0a                                      beq #0x5f9eb4
005fca54  34 20 9d e5                                      ldr r2, [sp, #0x34]
005fca58  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005fca5c  09 b0 8b e0                                      add fp, fp, sb
005fca60  0b 60 a0 e1                                      mov r6, fp
005fca64  03 50 82 e0                                      add r5, r2, r3
005fca68  34 50 8d e5                                      str r5, [sp, #0x34]
005fca6c  e2 ff ff ea                                      b #0x5fc9fc
005fca70  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fca74  00 00 52 e3                                      cmp r2, #0
005fca78  38 02 00 1a                                      bne #0x5fd360
005fca7c  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fca80  00 00 53 e3                                      cmp r3, #0
005fca84  0a f5 ff 0a                                      beq #0x5f9eb4
005fca88  09 b0 a0 e1                                      mov fp, sb
005fca8c  34 10 8d e5                                      str r1, [sp, #0x34]
005fca90  01 60 a0 e1                                      mov r6, r1
005fca94  01 a0 a0 e1                                      mov sl, r1
005fca98  f0 80 8d e2                                      add r8, sp, #0xf0
005fca9c  04 90 a0 e1                                      mov sb, r4
005fcaa0  00 00 59 e3                                      cmp sb, #0
005fcaa4  09 40 a0 11                                      movne r4, sb
005fcaa8  0d 00 00 0a                                      beq #0x5fcae4
005fcaac  0a 10 a0 e1                                      mov r1, sl
005fcab0  08 00 a0 e1                                      mov r0, r8
005fcab4  07 20 a0 e1                                      mov r2, r7
005fcab8  6a 47 f4 eb                                      bl #0x30e868
005fcabc  0c 31 dd e5                                      ldrb r3, [sp, #0x10c]
005fcac0  01 40 54 e2                                      subs r4, r4, #1
005fcac4  07 a0 8a e0                                      add sl, sl, r7
005fcac8  03 31 98 e7                                      ldr r3, [r8, r3, lsl #2]
005fcacc  00 30 86 e5                                      str r3, [r6]
005fcad0  0d 31 dd e5                                      ldrb r3, [sp, #0x10d]
005fcad4  03 31 98 e7                                      ldr r3, [r8, r3, lsl #2]
005fcad8  04 30 86 e5                                      str r3, [r6, #4]
005fcadc  08 60 86 e2                                      add r6, r6, #8
005fcae0  f1 ff ff 1a                                      bne #0x5fcaac
005fcae4  64 11 9d e5                                      ldr r1, [sp, #0x164]
005fcae8  01 10 51 e2                                      subs r1, r1, #1
005fcaec  64 11 8d e5                                      str r1, [sp, #0x164]
005fcaf0  ef f4 ff 0a                                      beq #0x5f9eb4
005fcaf4  34 20 9d e5                                      ldr r2, [sp, #0x34]
005fcaf8  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005fcafc  0b 50 85 e0                                      add r5, r5, fp
005fcb00  05 60 a0 e1                                      mov r6, r5
005fcb04  03 20 82 e0                                      add r2, r2, r3
005fcb08  34 20 8d e5                                      str r2, [sp, #0x34]
005fcb0c  02 a0 a0 e1                                      mov sl, r2
005fcb10  e2 ff ff ea                                      b #0x5fcaa0
005fcb14  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fcb18  00 00 52 e3                                      cmp r2, #0
005fcb1c  d1 01 00 1a                                      bne #0x5fd268
005fcb20  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fcb24  00 00 53 e3                                      cmp r3, #0
005fcb28  e1 f4 ff 0a                                      beq #0x5f9eb4
005fcb2c  09 b0 a0 e1                                      mov fp, sb
005fcb30  34 10 8d e5                                      str r1, [sp, #0x34]
005fcb34  01 60 a0 e1                                      mov r6, r1
005fcb38  01 a0 a0 e1                                      mov sl, r1
005fcb3c  f0 80 8d e2                                      add r8, sp, #0xf0
005fcb40  04 90 a0 e1                                      mov sb, r4
005fcb44  00 00 59 e3                                      cmp sb, #0
005fcb48  09 40 a0 11                                      movne r4, sb
005fcb4c  17 00 00 0a                                      beq #0x5fcbb0
005fcb50  0a 10 a0 e1                                      mov r1, sl
005fcb54  07 20 a0 e1                                      mov r2, r7
005fcb58  08 00 a0 e1                                      mov r0, r8
005fcb5c  41 47 f4 eb                                      bl #0x30e868
005fcb60  0c 01 dd e5                                      ldrb r0, [sp, #0x10c]
005fcb64  0d 11 dd e5                                      ldrb r1, [sp, #0x10d]
005fcb68  0e 21 dd e5                                      ldrb r2, [sp, #0x10e]
005fcb6c  80 00 a0 e1                                      lsl r0, r0, #1
005fcb70  b0 00 98 e1                                      ldrh r0, [r8, r0]
005fcb74  0f 31 dd e5                                      ldrb r3, [sp, #0x10f]
005fcb78  81 10 a0 e1                                      lsl r1, r1, #1
005fcb7c  b0 00 c6 e1                                      strh r0, [r6]
005fcb80  b1 10 98 e1                                      ldrh r1, [r8, r1]
005fcb84  82 20 a0 e1                                      lsl r2, r2, #1
005fcb88  83 30 a0 e1                                      lsl r3, r3, #1
005fcb8c  b2 10 c6 e1                                      strh r1, [r6, #2]
005fcb90  b2 20 98 e1                                      ldrh r2, [r8, r2]
005fcb94  01 40 54 e2                                      subs r4, r4, #1
005fcb98  07 a0 8a e0                                      add sl, sl, r7
005fcb9c  b4 20 c6 e1                                      strh r2, [r6, #4]
005fcba0  b3 30 98 e1                                      ldrh r3, [r8, r3]
005fcba4  b6 30 c6 e1                                      strh r3, [r6, #6]
005fcba8  08 60 86 e2                                      add r6, r6, #8
005fcbac  e7 ff ff 1a                                      bne #0x5fcb50
005fcbb0  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fcbb4  01 20 52 e2                                      subs r2, r2, #1
005fcbb8  64 21 8d e5                                      str r2, [sp, #0x164]
005fcbbc  bc f4 ff 0a                                      beq #0x5f9eb4
005fcbc0  34 40 9d e5                                      ldr r4, [sp, #0x34]
005fcbc4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005fcbc8  0b 40 84 e0                                      add r4, r4, fp
005fcbcc  03 50 85 e0                                      add r5, r5, r3
005fcbd0  34 40 8d e5                                      str r4, [sp, #0x34]
005fcbd4  04 60 a0 e1                                      mov r6, r4
005fcbd8  05 a0 a0 e1                                      mov sl, r5
005fcbdc  d8 ff ff ea                                      b #0x5fcb44
005fcbe0  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fcbe4  00 00 52 e3                                      cmp r2, #0
005fcbe8  6e 01 00 1a                                      bne #0x5fd1a8
005fcbec  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fcbf0  00 00 53 e3                                      cmp r3, #0
005fcbf4  ae f4 ff 0a                                      beq #0x5f9eb4
005fcbf8  01 b0 a0 e1                                      mov fp, r1
005fcbfc  34 10 8d e5                                      str r1, [sp, #0x34]
005fcc00  01 60 a0 e1                                      mov r6, r1
005fcc04  43 8f 8d e2                                      add r8, sp, #0x10c
005fcc08  04 a0 a0 e1                                      mov sl, r4
005fcc0c  00 00 5a e3                                      cmp sl, #0
005fcc10  0a 40 a0 11                                      movne r4, sl
005fcc14  10 00 00 0a                                      beq #0x5fcc5c
005fcc18  05 10 a0 e1                                      mov r1, r5
005fcc1c  07 20 a0 e1                                      mov r2, r7
005fcc20  08 00 a0 e1                                      mov r0, r8
005fcc24  0f 47 f4 eb                                      bl #0x30e868
005fcc28  2c 11 dd e5                                      ldrb r1, [sp, #0x12c]
005fcc2c  2d 21 dd e5                                      ldrb r2, [sp, #0x12d]
005fcc30  2e 31 dd e5                                      ldrb r3, [sp, #0x12e]
005fcc34  01 10 d8 e7                                      ldrb r1, [r8, r1]
005fcc38  02 20 d8 e7                                      ldrb r2, [r8, r2]
005fcc3c  03 30 d8 e7                                      ldrb r3, [r8, r3]
005fcc40  01 40 54 e2                                      subs r4, r4, #1
005fcc44  00 10 c6 e5                                      strb r1, [r6]
005fcc48  01 20 c6 e5                                      strb r2, [r6, #1]
005fcc4c  02 30 c6 e5                                      strb r3, [r6, #2]
005fcc50  07 50 85 e0                                      add r5, r5, r7
005fcc54  03 60 86 e2                                      add r6, r6, #3
005fcc58  ee ff ff 1a                                      bne #0x5fcc18
005fcc5c  64 11 9d e5                                      ldr r1, [sp, #0x164]
005fcc60  01 10 51 e2                                      subs r1, r1, #1
005fcc64  64 11 8d e5                                      str r1, [sp, #0x164]
005fcc68  91 f4 ff 0a                                      beq #0x5f9eb4
005fcc6c  34 20 9d e5                                      ldr r2, [sp, #0x34]
005fcc70  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005fcc74  09 b0 8b e0                                      add fp, fp, sb
005fcc78  0b 60 a0 e1                                      mov r6, fp
005fcc7c  03 50 82 e0                                      add r5, r2, r3
005fcc80  34 50 8d e5                                      str r5, [sp, #0x34]
005fcc84  e0 ff ff ea                                      b #0x5fcc0c
005fcc88  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fcc8c  00 00 52 e3                                      cmp r2, #0
005fcc90  0d 01 00 1a                                      bne #0x5fd0cc
005fcc94  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fcc98  00 00 53 e3                                      cmp r3, #0
005fcc9c  84 f4 ff 0a                                      beq #0x5f9eb4
005fcca0  01 b0 a0 e1                                      mov fp, r1
005fcca4  34 10 8d e5                                      str r1, [sp, #0x34]
005fcca8  01 80 a0 e1                                      mov r8, r1
005fccac  43 6f 8d e2                                      add r6, sp, #0x10c
005fccb0  04 a0 a0 e1                                      mov sl, r4
005fccb4  00 00 5a e3                                      cmp sl, #0
005fccb8  0a 40 a0 11                                      movne r4, sl
005fccbc  13 00 00 0a                                      beq #0x5fcd10
005fccc0  08 10 a0 e1                                      mov r1, r8
005fccc4  06 00 a0 e1                                      mov r0, r6
005fccc8  07 20 a0 e1                                      mov r2, r7
005fcccc  e5 46 f4 eb                                      bl #0x30e868
005fccd0  2c 31 dd e5                                      ldrb r3, [sp, #0x12c]
005fccd4  01 40 54 e2                                      subs r4, r4, #1
005fccd8  07 80 88 e0                                      add r8, r8, r7
005fccdc  03 30 d6 e7                                      ldrb r3, [r6, r3]
005fcce0  00 30 c5 e5                                      strb r3, [r5]
005fcce4  2d 31 dd e5                                      ldrb r3, [sp, #0x12d]
005fcce8  03 30 d6 e7                                      ldrb r3, [r6, r3]
005fccec  01 30 c5 e5                                      strb r3, [r5, #1]
005fccf0  2e 31 dd e5                                      ldrb r3, [sp, #0x12e]
005fccf4  03 30 d6 e7                                      ldrb r3, [r6, r3]
005fccf8  02 30 c5 e5                                      strb r3, [r5, #2]
005fccfc  2f 31 dd e5                                      ldrb r3, [sp, #0x12f]
005fcd00  03 30 d6 e7                                      ldrb r3, [r6, r3]
005fcd04  03 30 c5 e5                                      strb r3, [r5, #3]
005fcd08  04 50 85 e2                                      add r5, r5, #4
005fcd0c  eb ff ff 1a                                      bne #0x5fccc0
005fcd10  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fcd14  01 20 52 e2                                      subs r2, r2, #1
005fcd18  64 21 8d e5                                      str r2, [sp, #0x164]
005fcd1c  64 f4 ff 0a                                      beq #0x5f9eb4
005fcd20  34 30 9d e5                                      ldr r3, [sp, #0x34]
005fcd24  5c 40 9d e5                                      ldr r4, [sp, #0x5c]
005fcd28  09 b0 8b e0                                      add fp, fp, sb
005fcd2c  0b 50 a0 e1                                      mov r5, fp
005fcd30  04 80 83 e0                                      add r8, r3, r4
005fcd34  34 80 8d e5                                      str r8, [sp, #0x34]
005fcd38  dd ff ff ea                                      b #0x5fccb4
005fcd3c  38 20 9d e5                                      ldr r2, [sp, #0x38]
005fcd40  00 00 52 e3                                      cmp r2, #0
005fcd44  26 00 00 1a                                      bne #0x5fcde4
005fcd48  64 31 9d e5                                      ldr r3, [sp, #0x164]
005fcd4c  00 00 53 e3                                      cmp r3, #0
005fcd50  57 f4 ff 0a                                      beq #0x5f9eb4
005fcd54  01 b0 a0 e1                                      mov fp, r1
005fcd58  34 10 8d e5                                      str r1, [sp, #0x34]
005fcd5c  01 60 a0 e1                                      mov r6, r1
005fcd60  f0 80 8d e2                                      add r8, sp, #0xf0
005fcd64  04 a0 a0 e1                                      mov sl, r4
005fcd68  00 00 5a e3                                      cmp sl, #0
005fcd6c  0a 40 a0 11                                      movne r4, sl
005fcd70  10 00 00 0a                                      beq #0x5fcdb8
005fcd74  05 10 a0 e1                                      mov r1, r5
005fcd78  07 20 a0 e1                                      mov r2, r7
005fcd7c  08 00 a0 e1                                      mov r0, r8
005fcd80  b8 46 f4 eb                                      bl #0x30e868
005fcd84  0c 01 dd e5                                      ldrb r0, [sp, #0x10c]
005fcd88  0d 11 dd e5                                      ldrb r1, [sp, #0x10d]
005fcd8c  0e 21 dd e5                                      ldrb r2, [sp, #0x10e]
005fcd90  0f 31 dd e5                                      ldrb r3, [sp, #0x10f]
005fcd94  00 01 98 e7                                      ldr r0, [r8, r0, lsl #2]
005fcd98  01 11 98 e7                                      ldr r1, [r8, r1, lsl #2]
005fcd9c  02 21 98 e7                                      ldr r2, [r8, r2, lsl #2]
005fcda0  03 31 98 e7                                      ldr r3, [r8, r3, lsl #2]
005fcda4  01 40 54 e2                                      subs r4, r4, #1
005fcda8  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
005fcdac  07 50 85 e0                                      add r5, r5, r7
005fcdb0  10 60 86 e2                                      add r6, r6, #0x10
005fcdb4  ee ff ff 1a                                      bne #0x5fcd74
005fcdb8  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fcdbc  01 20 52 e2                                      subs r2, r2, #1
005fcdc0  64 21 8d e5                                      str r2, [sp, #0x164]
005fcdc4  3a f4 ff 0a                                      beq #0x5f9eb4
005fcdc8  34 30 9d e5                                      ldr r3, [sp, #0x34]
005fcdcc  5c 40 9d e5                                      ldr r4, [sp, #0x5c]
005fcdd0  09 b0 8b e0                                      add fp, fp, sb
005fcdd4  0b 60 a0 e1                                      mov r6, fp
005fcdd8  04 50 83 e0                                      add r5, r3, r4
005fcddc  34 50 8d e5                                      str r5, [sp, #0x34]
005fcde0  e0 ff ff ea                                      b #0x5fcd68
005fcde4  64 81 9d e5                                      ldr r8, [sp, #0x164]
005fcde8  58 a1 9d e5                                      ldr sl, [sp, #0x158]
005fcdec  01 60 48 e2                                      sub r6, r8, #1
005fcdf0  96 a9 26 e0                                      mla r6, r6, sb, sl
005fcdf4  00 90 69 e2                                      rsb sb, sb, #0
005fcdf8  06 00 5a e1                                      cmp sl, r6
005fcdfc  38 90 8d e5                                      str sb, [sp, #0x38]
005fce00  04 a0 a0 91                                      movls sl, r4
005fce04  f0 90 8d 92                                      addls sb, sp, #0xf0
005fce08  29 f4 ff 8a                                      bhi #0x5f9eb4
005fce0c  00 00 5a e3                                      cmp sl, #0
005fce10  54 60 8d e5                                      str r6, [sp, #0x54]
005fce14  05 b0 a0 e1                                      mov fp, r5
005fce18  0a 40 a0 11                                      movne r4, sl
005fce1c  1e 00 00 0a                                      beq #0x5fce9c
005fce20  0c 31 dd e5                                      ldrb r3, [sp, #0x10c]
005fce24  0d 21 dd e5                                      ldrb r2, [sp, #0x10d]
005fce28  0e e1 dd e5                                      ldrb lr, [sp, #0x10e]
005fce2c  03 11 96 e7                                      ldr r1, [r6, r3, lsl #2]
005fce30  0f c1 dd e5                                      ldrb ip, [sp, #0x10f]
005fce34  05 00 a0 e1                                      mov r0, r5
005fce38  f0 10 8d e5                                      str r1, [sp, #0xf0]
005fce3c  02 81 96 e7                                      ldr r8, [r6, r2, lsl #2]
005fce40  09 10 a0 e1                                      mov r1, sb
005fce44  07 20 a0 e1                                      mov r2, r7
005fce48  f4 80 8d e5                                      str r8, [sp, #0xf4]
005fce4c  0e e1 96 e7                                      ldr lr, [r6, lr, lsl #2]
005fce50  f8 e0 8d e5                                      str lr, [sp, #0xf8]
005fce54  0c c1 96 e7                                      ldr ip, [r6, ip, lsl #2]
005fce58  fc c0 8d e5                                      str ip, [sp, #0xfc]
005fce5c  03 31 95 e7                                      ldr r3, [r5, r3, lsl #2]
005fce60  00 30 86 e5                                      str r3, [r6]
005fce64  0d 31 dd e5                                      ldrb r3, [sp, #0x10d]
005fce68  03 31 95 e7                                      ldr r3, [r5, r3, lsl #2]
005fce6c  04 30 86 e5                                      str r3, [r6, #4]
005fce70  0e 31 dd e5                                      ldrb r3, [sp, #0x10e]
005fce74  03 31 95 e7                                      ldr r3, [r5, r3, lsl #2]
005fce78  08 30 86 e5                                      str r3, [r6, #8]
005fce7c  0f 31 dd e5                                      ldrb r3, [sp, #0x10f]
005fce80  03 31 95 e7                                      ldr r3, [r5, r3, lsl #2]
005fce84  07 50 85 e0                                      add r5, r5, r7
005fce88  0c 30 86 e5                                      str r3, [r6, #0xc]
005fce8c  75 46 f4 eb                                      bl #0x30e868
005fce90  01 40 54 e2                                      subs r4, r4, #1
005fce94  10 60 86 e2                                      add r6, r6, #0x10
005fce98  e0 ff ff 1a                                      bne #0x5fce20
005fce9c  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005fcea0  54 00 9d e5                                      ldr r0, [sp, #0x54]
005fcea4  38 10 9d e5                                      ldr r1, [sp, #0x38]
005fcea8  0c 50 8b e0                                      add r5, fp, ip
005fceac  01 60 80 e0                                      add r6, r0, r1
005fceb0  05 00 56 e1                                      cmp r6, r5
005fceb4  d4 ff ff 2a                                      bhs #0x5fce0c
005fceb8  01 00 a0 e3                                      mov r0, #1
005fcebc  e2 f1 ff ea                                      b #0x5f964c
005fcec0  64 71 9d e5                                      ldr r7, [sp, #0x164]
005fcec4  01 50 47 e2                                      sub r5, r7, #1
005fcec8  95 89 25 e0                                      mla r5, r5, sb, r8
005fcecc  00 90 69 e2                                      rsb sb, sb, #0
005fced0  05 00 58 e1                                      cmp r8, r5
005fced4  70 90 8d e5                                      str sb, [sp, #0x70]
005fced8  f5 f3 ff 8a                                      bhi #0x5f9eb4
005fcedc  c5 c0 dd e5                                      ldrb ip, [sp, #0xc5]
005fcee0  6c 80 8d e5                                      str r8, [sp, #0x6c]
005fcee4  b4 80 9d e5                                      ldr r8, [sp, #0xb4]
005fcee8  c9 00 dd e5                                      ldrb r0, [sp, #0xc9]
005fceec  58 c0 8d e5                                      str ip, [sp, #0x58]
005fcef0  60 80 8d e5                                      str r8, [sp, #0x60]
005fcef4  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
005fcef8  c7 80 dd e5                                      ldrb r8, [sp, #0xc7]
005fcefc  c6 20 dd e5                                      ldrb r2, [sp, #0xc6]
005fcf00  ca 30 dd e5                                      ldrb r3, [sp, #0xca]
005fcf04  bc 70 9d e5                                      ldr r7, [sp, #0xbc]
005fcf08  cb c0 dd e5                                      ldrb ip, [sp, #0xcb]
005fcf0c  c4 90 dd e5                                      ldrb sb, [sp, #0xc4]
005fcf10  c8 a0 dd e5                                      ldrb sl, [sp, #0xc8]
005fcf14  50 00 8d e5                                      str r0, [sp, #0x50]
005fcf18  12 0e 8d e2                                      add r0, sp, #0x120
005fcf1c  34 80 8d e5                                      str r8, [sp, #0x34]
005fcf20  4c 10 8d e5                                      str r1, [sp, #0x4c]
005fcf24  40 80 9d e5                                      ldr r8, [sp, #0x40]
005fcf28  48 20 8d e5                                      str r2, [sp, #0x48]
005fcf2c  44 30 8d e5                                      str r3, [sp, #0x44]
005fcf30  38 70 8d e5                                      str r7, [sp, #0x38]
005fcf34  54 c0 8d e5                                      str ip, [sp, #0x54]
005fcf38  68 50 8d e5                                      str r5, [sp, #0x68]
005fcf3c  64 00 8d e5                                      str r0, [sp, #0x64]
005fcf40  40 40 8d e5                                      str r4, [sp, #0x40]
005fcf44  40 40 9d e5                                      ldr r4, [sp, #0x40]
005fcf48  00 00 54 e3                                      cmp r4, #0
005fcf4c  40 70 9d 15                                      ldrne r7, [sp, #0x40]
005fcf50  52 00 00 0a                                      beq #0x5fd0a0
005fcf54  00 30 d5 e5                                      ldrb r3, [r5]
005fcf58  60 c0 9d e5                                      ldr ip, [sp, #0x60]
005fcf5c  58 40 9d e5                                      ldr r4, [sp, #0x58]
005fcf60  1c 31 cd e5                                      strb r3, [sp, #0x11c]
005fcf64  01 30 f5 e5                                      ldrb r3, [r5, #1]!
005fcf68  64 10 9d e5                                      ldr r1, [sp, #0x64]
005fcf6c  06 00 a0 e1                                      mov r0, r6
005fcf70  1d 31 cd e5                                      strb r3, [sp, #0x11d]
005fcf74  01 30 d5 e5                                      ldrb r3, [r5, #1]
005fcf78  0b 20 a0 e1                                      mov r2, fp
005fcf7c  1e 31 cd e5                                      strb r3, [sp, #0x11e]
005fcf80  1c 31 9d e5                                      ldr r3, [sp, #0x11c]
005fcf84  33 e9 a0 e1                                      lsr lr, r3, sb
005fcf88  1e ea 0c e0                                      and lr, ip, lr, lsl sl
005fcf8c  74 e0 8d e5                                      str lr, [sp, #0x74]
005fcf90  48 e0 9d e5                                      ldr lr, [sp, #0x48]
005fcf94  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
005fcf98  33 44 a0 e1                                      lsr r4, r3, r4
005fcf9c  33 ee a0 e1                                      lsr lr, r3, lr
005fcfa0  7c e0 8d e5                                      str lr, [sp, #0x7c]
005fcfa4  50 e0 9d e5                                      ldr lr, [sp, #0x50]
005fcfa8  14 4e 0c e0                                      and r4, ip, r4, lsl lr
005fcfac  78 40 8d e5                                      str r4, [sp, #0x78]
005fcfb0  34 40 9d e5                                      ldr r4, [sp, #0x34]
005fcfb4  7c e0 9d e5                                      ldr lr, [sp, #0x7c]
005fcfb8  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005fcfbc  33 34 a0 e1                                      lsr r3, r3, r4
005fcfc0  44 40 9d e5                                      ldr r4, [sp, #0x44]
005fcfc4  1e c4 0c e0                                      and ip, ip, lr, lsl r4
005fcfc8  80 c0 8d e5                                      str ip, [sp, #0x80]
005fcfcc  54 c0 9d e5                                      ldr ip, [sp, #0x54]
005fcfd0  13 4c 08 e0                                      and r4, r8, r3, lsl ip
005fcfd4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005fcfd8  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005fcfdc  0c e0 83 e1                                      orr lr, r3, ip
005fcfe0  78 30 9d e5                                      ldr r3, [sp, #0x78]
005fcfe4  80 c0 9d e5                                      ldr ip, [sp, #0x80]
005fcfe8  03 e0 8e e1                                      orr lr, lr, r3
005fcfec  0c e0 8e e1                                      orr lr, lr, ip
005fcff0  04 30 8e e1                                      orr r3, lr, r4
005fcff4  20 31 cd e5                                      strb r3, [sp, #0x120]
005fcff8  00 30 d6 e5                                      ldrb r3, [r6]
005fcffc  60 c0 9d e5                                      ldr ip, [sp, #0x60]
005fd000  58 40 9d e5                                      ldr r4, [sp, #0x58]
005fd004  18 31 cd e5                                      strb r3, [sp, #0x118]
005fd008  01 30 d6 e5                                      ldrb r3, [r6, #1]
005fd00c  19 31 cd e5                                      strb r3, [sp, #0x119]
005fd010  02 30 d6 e5                                      ldrb r3, [r6, #2]
005fd014  06 60 8b e0                                      add r6, fp, r6
005fd018  1a 31 cd e5                                      strb r3, [sp, #0x11a]
005fd01c  18 31 9d e5                                      ldr r3, [sp, #0x118]
005fd020  33 e9 a0 e1                                      lsr lr, r3, sb
005fd024  1e ea 0c e0                                      and lr, ip, lr, lsl sl
005fd028  74 e0 8d e5                                      str lr, [sp, #0x74]
005fd02c  48 e0 9d e5                                      ldr lr, [sp, #0x48]
005fd030  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
005fd034  33 44 a0 e1                                      lsr r4, r3, r4
005fd038  33 ee a0 e1                                      lsr lr, r3, lr
005fd03c  7c e0 8d e5                                      str lr, [sp, #0x7c]
005fd040  50 e0 9d e5                                      ldr lr, [sp, #0x50]
005fd044  14 4e 0c e0                                      and r4, ip, r4, lsl lr
005fd048  78 40 8d e5                                      str r4, [sp, #0x78]
005fd04c  34 40 9d e5                                      ldr r4, [sp, #0x34]
005fd050  7c e0 9d e5                                      ldr lr, [sp, #0x7c]
005fd054  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005fd058  33 34 a0 e1                                      lsr r3, r3, r4
005fd05c  44 40 9d e5                                      ldr r4, [sp, #0x44]
005fd060  1e c4 0c e0                                      and ip, ip, lr, lsl r4
005fd064  80 c0 8d e5                                      str ip, [sp, #0x80]
005fd068  54 c0 9d e5                                      ldr ip, [sp, #0x54]
005fd06c  13 4c 08 e0                                      and r4, r8, r3, lsl ip
005fd070  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005fd074  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005fd078  0c e0 83 e1                                      orr lr, r3, ip
005fd07c  78 30 9d e5                                      ldr r3, [sp, #0x78]
005fd080  80 c0 9d e5                                      ldr ip, [sp, #0x80]
005fd084  03 e0 8e e1                                      orr lr, lr, r3
005fd088  0c e0 8e e1                                      orr lr, lr, ip
005fd08c  04 30 8e e1                                      orr r3, lr, r4
005fd090  01 30 45 e5                                      strb r3, [r5, #-1]
005fd094  f3 45 f4 eb                                      bl #0x30e868
005fd098  01 70 57 e2                                      subs r7, r7, #1
005fd09c  ac ff ff 1a                                      bne #0x5fcf54
005fd0a0  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
005fd0a4  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
005fd0a8  68 20 9d e5                                      ldr r2, [sp, #0x68]
005fd0ac  70 30 9d e5                                      ldr r3, [sp, #0x70]
005fd0b0  01 60 80 e0                                      add r6, r0, r1
005fd0b4  03 50 82 e0                                      add r5, r2, r3
005fd0b8  06 00 55 e1                                      cmp r5, r6
005fd0bc  7c f3 ff 3a                                      blo #0x5f9eb4
005fd0c0  68 50 8d e5                                      str r5, [sp, #0x68]
005fd0c4  6c 60 8d e5                                      str r6, [sp, #0x6c]
005fd0c8  9d ff ff ea                                      b #0x5fcf44
005fd0cc  64 81 9d e5                                      ldr r8, [sp, #0x164]
005fd0d0  58 a1 9d e5                                      ldr sl, [sp, #0x158]
005fd0d4  01 60 48 e2                                      sub r6, r8, #1
005fd0d8  96 a9 26 e0                                      mla r6, r6, sb, sl
005fd0dc  00 90 69 e2                                      rsb sb, sb, #0
005fd0e0  06 00 5a e1                                      cmp sl, r6
005fd0e4  38 90 8d e5                                      str sb, [sp, #0x38]
005fd0e8  04 a0 a0 91                                      movls sl, r4
005fd0ec  43 9f 8d 92                                      addls sb, sp, #0x10c
005fd0f0  6f f3 ff 8a                                      bhi #0x5f9eb4
005fd0f4  00 00 5a e3                                      cmp sl, #0
005fd0f8  54 60 8d e5                                      str r6, [sp, #0x54]
005fd0fc  05 b0 a0 e1                                      mov fp, r5
005fd100  0a 40 a0 11                                      movne r4, sl
005fd104  1e 00 00 0a                                      beq #0x5fd184
005fd108  2c 31 dd e5                                      ldrb r3, [sp, #0x12c]
005fd10c  2d 21 dd e5                                      ldrb r2, [sp, #0x12d]
005fd110  2e e1 dd e5                                      ldrb lr, [sp, #0x12e]
005fd114  03 10 d6 e7                                      ldrb r1, [r6, r3]
005fd118  2f c1 dd e5                                      ldrb ip, [sp, #0x12f]
005fd11c  05 00 a0 e1                                      mov r0, r5
005fd120  0c 11 cd e5                                      strb r1, [sp, #0x10c]
005fd124  02 80 d6 e7                                      ldrb r8, [r6, r2]
005fd128  09 10 a0 e1                                      mov r1, sb
005fd12c  07 20 a0 e1                                      mov r2, r7
005fd130  0d 81 cd e5                                      strb r8, [sp, #0x10d]
005fd134  0e e0 d6 e7                                      ldrb lr, [r6, lr]
005fd138  0e e1 cd e5                                      strb lr, [sp, #0x10e]
005fd13c  0c c0 d6 e7                                      ldrb ip, [r6, ip]
005fd140  0f c1 cd e5                                      strb ip, [sp, #0x10f]
005fd144  03 30 d5 e7                                      ldrb r3, [r5, r3]
005fd148  00 30 c6 e5                                      strb r3, [r6]
005fd14c  2d 31 dd e5                                      ldrb r3, [sp, #0x12d]
005fd150  03 30 d5 e7                                      ldrb r3, [r5, r3]
005fd154  01 30 c6 e5                                      strb r3, [r6, #1]
005fd158  2e 31 dd e5                                      ldrb r3, [sp, #0x12e]
005fd15c  03 30 d5 e7                                      ldrb r3, [r5, r3]
005fd160  02 30 c6 e5                                      strb r3, [r6, #2]
005fd164  2f 31 dd e5                                      ldrb r3, [sp, #0x12f]
005fd168  03 30 d5 e7                                      ldrb r3, [r5, r3]
005fd16c  07 50 85 e0                                      add r5, r5, r7
005fd170  03 30 c6 e5                                      strb r3, [r6, #3]
005fd174  bb 45 f4 eb                                      bl #0x30e868
005fd178  01 40 54 e2                                      subs r4, r4, #1
005fd17c  04 60 86 e2                                      add r6, r6, #4
005fd180  e0 ff ff 1a                                      bne #0x5fd108
005fd184  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005fd188  54 00 9d e5                                      ldr r0, [sp, #0x54]
005fd18c  38 10 9d e5                                      ldr r1, [sp, #0x38]
005fd190  0c 50 8b e0                                      add r5, fp, ip
005fd194  01 60 80 e0                                      add r6, r0, r1
005fd198  06 00 55 e1                                      cmp r5, r6
005fd19c  d4 ff ff 9a                                      bls #0x5fd0f4
005fd1a0  01 00 a0 e3                                      mov r0, #1
005fd1a4  28 f1 ff ea                                      b #0x5f964c
005fd1a8  64 81 9d e5                                      ldr r8, [sp, #0x164]
005fd1ac  58 a1 9d e5                                      ldr sl, [sp, #0x158]
005fd1b0  01 60 48 e2                                      sub r6, r8, #1
005fd1b4  96 a9 26 e0                                      mla r6, r6, sb, sl
005fd1b8  00 90 69 e2                                      rsb sb, sb, #0
005fd1bc  06 00 5a e1                                      cmp sl, r6
005fd1c0  54 90 8d e5                                      str sb, [sp, #0x54]
005fd1c4  43 af 8d 92                                      addls sl, sp, #0x10c
005fd1c8  04 80 a0 91                                      movls r8, r4
005fd1cc  38 f3 ff 8a                                      bhi #0x5f9eb4
005fd1d0  00 00 58 e3                                      cmp r8, #0
005fd1d4  06 b0 a0 e1                                      mov fp, r6
005fd1d8  05 90 a0 e1                                      mov sb, r5
005fd1dc  08 40 a0 11                                      movne r4, r8
005fd1e0  18 00 00 0a                                      beq #0x5fd248
005fd1e4  2c 31 dd e5                                      ldrb r3, [sp, #0x12c]
005fd1e8  2d 21 dd e5                                      ldrb r2, [sp, #0x12d]
005fd1ec  2e c1 dd e5                                      ldrb ip, [sp, #0x12e]
005fd1f0  03 e0 d6 e7                                      ldrb lr, [r6, r3]
005fd1f4  05 00 a0 e1                                      mov r0, r5
005fd1f8  0a 10 a0 e1                                      mov r1, sl
005fd1fc  0c e1 cd e5                                      strb lr, [sp, #0x10c]
005fd200  02 e0 d6 e7                                      ldrb lr, [r6, r2]
005fd204  07 20 a0 e1                                      mov r2, r7
005fd208  0d e1 cd e5                                      strb lr, [sp, #0x10d]
005fd20c  0c c0 d6 e7                                      ldrb ip, [r6, ip]
005fd210  0e c1 cd e5                                      strb ip, [sp, #0x10e]
005fd214  03 30 d5 e7                                      ldrb r3, [r5, r3]
005fd218  00 30 c6 e5                                      strb r3, [r6]
005fd21c  2d 31 dd e5                                      ldrb r3, [sp, #0x12d]
005fd220  03 30 d5 e7                                      ldrb r3, [r5, r3]
005fd224  01 30 c6 e5                                      strb r3, [r6, #1]
005fd228  2e 31 dd e5                                      ldrb r3, [sp, #0x12e]
005fd22c  03 30 d5 e7                                      ldrb r3, [r5, r3]
005fd230  07 50 85 e0                                      add r5, r5, r7
005fd234  02 30 c6 e5                                      strb r3, [r6, #2]
005fd238  8a 45 f4 eb                                      bl #0x30e868
005fd23c  01 40 54 e2                                      subs r4, r4, #1
005fd240  03 60 86 e2                                      add r6, r6, #3
005fd244  e6 ff ff 1a                                      bne #0x5fd1e4
005fd248  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005fd24c  54 00 9d e5                                      ldr r0, [sp, #0x54]
005fd250  0c 50 89 e0                                      add r5, sb, ip
005fd254  00 60 8b e0                                      add r6, fp, r0
005fd258  06 00 55 e1                                      cmp r5, r6
005fd25c  db ff ff 9a                                      bls #0x5fd1d0
005fd260  01 00 a0 e3                                      mov r0, #1
005fd264  f8 f0 ff ea                                      b #0x5f964c
005fd268  64 61 9d e5                                      ldr r6, [sp, #0x164]
005fd26c  58 81 9d e5                                      ldr r8, [sp, #0x158]
005fd270  01 b0 46 e2                                      sub fp, r6, #1
005fd274  9b 89 2b e0                                      mla fp, fp, sb, r8
005fd278  00 90 69 e2                                      rsb sb, sb, #0
005fd27c  0b 00 58 e1                                      cmp r8, fp
005fd280  54 90 8d e5                                      str sb, [sp, #0x54]
005fd284  05 80 a0 91                                      movls r8, r5
005fd288  f0 90 8d 92                                      addls sb, sp, #0xf0
005fd28c  04 a0 a0 91                                      movls sl, r4
005fd290  07 f3 ff 8a                                      bhi #0x5f9eb4
005fd294  00 00 5a e3                                      cmp sl, #0
005fd298  0b 40 a0 e1                                      mov r4, fp
005fd29c  08 50 a0 e1                                      mov r5, r8
005fd2a0  0a 60 a0 11                                      movne r6, sl
005fd2a4  25 00 00 0a                                      beq #0x5fd340
005fd2a8  0c 31 dd e5                                      ldrb r3, [sp, #0x10c]
005fd2ac  0d 01 dd e5                                      ldrb r0, [sp, #0x10d]
005fd2b0  0e 11 dd e5                                      ldrb r1, [sp, #0x10e]
005fd2b4  83 30 a0 e1                                      lsl r3, r3, #1
005fd2b8  b3 c0 94 e1                                      ldrh ip, [r4, r3]
005fd2bc  80 00 a0 e1                                      lsl r0, r0, #1
005fd2c0  81 10 a0 e1                                      lsl r1, r1, #1
005fd2c4  b0 cf cd e1                                      strh ip, [sp, #0xf0]
005fd2c8  b0 00 94 e1                                      ldrh r0, [r4, r0]
005fd2cc  0f 21 dd e5                                      ldrb r2, [sp, #0x10f]
005fd2d0  b2 0f cd e1                                      strh r0, [sp, #0xf2]
005fd2d4  b1 10 94 e1                                      ldrh r1, [r4, r1]
005fd2d8  82 20 a0 e1                                      lsl r2, r2, #1
005fd2dc  05 00 a0 e1                                      mov r0, r5
005fd2e0  b4 1f cd e1                                      strh r1, [sp, #0xf4]
005fd2e4  b2 20 94 e1                                      ldrh r2, [r4, r2]
005fd2e8  09 10 a0 e1                                      mov r1, sb
005fd2ec  b6 2f cd e1                                      strh r2, [sp, #0xf6]
005fd2f0  b3 30 95 e1                                      ldrh r3, [r5, r3]
005fd2f4  07 20 a0 e1                                      mov r2, r7
005fd2f8  b0 30 c4 e1                                      strh r3, [r4]
005fd2fc  0d 31 dd e5                                      ldrb r3, [sp, #0x10d]
005fd300  83 30 a0 e1                                      lsl r3, r3, #1
005fd304  b3 30 95 e1                                      ldrh r3, [r5, r3]
005fd308  b2 30 c4 e1                                      strh r3, [r4, #2]
005fd30c  0e 31 dd e5                                      ldrb r3, [sp, #0x10e]
005fd310  83 30 a0 e1                                      lsl r3, r3, #1
005fd314  b3 30 95 e1                                      ldrh r3, [r5, r3]
005fd318  b4 30 c4 e1                                      strh r3, [r4, #4]
005fd31c  0f 31 dd e5                                      ldrb r3, [sp, #0x10f]
005fd320  83 30 a0 e1                                      lsl r3, r3, #1
005fd324  b3 30 95 e1                                      ldrh r3, [r5, r3]
005fd328  07 50 85 e0                                      add r5, r5, r7
005fd32c  b6 30 c4 e1                                      strh r3, [r4, #6]
005fd330  4c 45 f4 eb                                      bl #0x30e868
005fd334  01 60 56 e2                                      subs r6, r6, #1
005fd338  08 40 84 e2                                      add r4, r4, #8
005fd33c  d9 ff ff 1a                                      bne #0x5fd2a8
005fd340  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005fd344  54 10 9d e5                                      ldr r1, [sp, #0x54]
005fd348  00 80 88 e0                                      add r8, r8, r0
005fd34c  01 b0 8b e0                                      add fp, fp, r1
005fd350  0b 00 58 e1                                      cmp r8, fp
005fd354  ce ff ff 9a                                      bls #0x5fd294
005fd358  01 00 a0 e3                                      mov r0, #1
005fd35c  ba f0 ff ea                                      b #0x5f964c
005fd360  64 61 9d e5                                      ldr r6, [sp, #0x164]
005fd364  58 81 9d e5                                      ldr r8, [sp, #0x158]
005fd368  01 b0 46 e2                                      sub fp, r6, #1
005fd36c  9b 89 2b e0                                      mla fp, fp, sb, r8
005fd370  00 90 69 e2                                      rsb sb, sb, #0
005fd374  0b 00 58 e1                                      cmp r8, fp
005fd378  54 90 8d e5                                      str sb, [sp, #0x54]
005fd37c  05 80 a0 91                                      movls r8, r5
005fd380  f0 90 8d 92                                      addls sb, sp, #0xf0
005fd384  04 a0 a0 91                                      movls sl, r4
005fd388  c9 f2 ff 8a                                      bhi #0x5f9eb4
005fd38c  00 00 5a e3                                      cmp sl, #0
005fd390  0b 40 a0 e1                                      mov r4, fp
005fd394  08 50 a0 e1                                      mov r5, r8
005fd398  0a 60 a0 11                                      movne r6, sl
005fd39c  12 00 00 0a                                      beq #0x5fd3ec
005fd3a0  0c 31 dd e5                                      ldrb r3, [sp, #0x10c]
005fd3a4  0d c1 dd e5                                      ldrb ip, [sp, #0x10d]
005fd3a8  05 00 a0 e1                                      mov r0, r5
005fd3ac  03 e1 94 e7                                      ldr lr, [r4, r3, lsl #2]
005fd3b0  09 10 a0 e1                                      mov r1, sb
005fd3b4  07 20 a0 e1                                      mov r2, r7
005fd3b8  f0 e0 8d e5                                      str lr, [sp, #0xf0]
005fd3bc  0c c1 94 e7                                      ldr ip, [r4, ip, lsl #2]
005fd3c0  f4 c0 8d e5                                      str ip, [sp, #0xf4]
005fd3c4  03 31 95 e7                                      ldr r3, [r5, r3, lsl #2]
005fd3c8  00 30 84 e5                                      str r3, [r4]
005fd3cc  0d 31 dd e5                                      ldrb r3, [sp, #0x10d]
005fd3d0  03 31 95 e7                                      ldr r3, [r5, r3, lsl #2]
005fd3d4  07 50 85 e0                                      add r5, r5, r7
005fd3d8  04 30 84 e5                                      str r3, [r4, #4]
005fd3dc  21 45 f4 eb                                      bl #0x30e868
005fd3e0  01 60 56 e2                                      subs r6, r6, #1
005fd3e4  08 40 84 e2                                      add r4, r4, #8
005fd3e8  ec ff ff 1a                                      bne #0x5fd3a0
005fd3ec  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005fd3f0  54 00 9d e5                                      ldr r0, [sp, #0x54]
005fd3f4  0c 80 88 e0                                      add r8, r8, ip
005fd3f8  00 b0 8b e0                                      add fp, fp, r0
005fd3fc  0b 00 58 e1                                      cmp r8, fp
005fd400  e1 ff ff 9a                                      bls #0x5fd38c
005fd404  01 00 a0 e3                                      mov r0, #1
005fd408  8f f0 ff ea                                      b #0x5f964c
005fd40c  64 81 9d e5                                      ldr r8, [sp, #0x164]
005fd410  58 a1 9d e5                                      ldr sl, [sp, #0x158]
005fd414  01 60 48 e2                                      sub r6, r8, #1
005fd418  96 a9 26 e0                                      mla r6, r6, sb, sl
005fd41c  00 90 69 e2                                      rsb sb, sb, #0
005fd420  06 00 5a e1                                      cmp sl, r6
005fd424  54 90 8d e5                                      str sb, [sp, #0x54]
005fd428  f0 a0 8d 92                                      addls sl, sp, #0xf0
005fd42c  04 80 a0 91                                      movls r8, r4
005fd430  9f f2 ff 8a                                      bhi #0x5f9eb4
005fd434  00 00 58 e3                                      cmp r8, #0
005fd438  06 b0 a0 e1                                      mov fp, r6
005fd43c  05 90 a0 e1                                      mov sb, r5
005fd440  08 40 a0 11                                      movne r4, r8
005fd444  18 00 00 0a                                      beq #0x5fd4ac
005fd448  0c 31 dd e5                                      ldrb r3, [sp, #0x10c]
005fd44c  0d 21 dd e5                                      ldrb r2, [sp, #0x10d]
005fd450  0e c1 dd e5                                      ldrb ip, [sp, #0x10e]
005fd454  03 e1 96 e7                                      ldr lr, [r6, r3, lsl #2]
005fd458  05 00 a0 e1                                      mov r0, r5
005fd45c  0a 10 a0 e1                                      mov r1, sl
005fd460  f0 e0 8d e5                                      str lr, [sp, #0xf0]
005fd464  02 e1 96 e7                                      ldr lr, [r6, r2, lsl #2]
005fd468  07 20 a0 e1                                      mov r2, r7
005fd46c  f4 e0 8d e5                                      str lr, [sp, #0xf4]
005fd470  0c c1 96 e7                                      ldr ip, [r6, ip, lsl #2]
005fd474  f8 c0 8d e5                                      str ip, [sp, #0xf8]
005fd478  03 31 95 e7                                      ldr r3, [r5, r3, lsl #2]
005fd47c  00 30 86 e5                                      str r3, [r6]
005fd480  0d 31 dd e5                                      ldrb r3, [sp, #0x10d]
005fd484  03 31 95 e7                                      ldr r3, [r5, r3, lsl #2]
005fd488  04 30 86 e5                                      str r3, [r6, #4]
005fd48c  0e 31 dd e5                                      ldrb r3, [sp, #0x10e]
005fd490  03 31 95 e7                                      ldr r3, [r5, r3, lsl #2]
005fd494  07 50 85 e0                                      add r5, r5, r7
005fd498  08 30 86 e5                                      str r3, [r6, #8]
005fd49c  f1 44 f4 eb                                      bl #0x30e868
005fd4a0  01 40 54 e2                                      subs r4, r4, #1
005fd4a4  0c 60 86 e2                                      add r6, r6, #0xc
005fd4a8  e6 ff ff 1a                                      bne #0x5fd448
005fd4ac  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005fd4b0  54 00 9d e5                                      ldr r0, [sp, #0x54]
005fd4b4  0c 50 89 e0                                      add r5, sb, ip
005fd4b8  00 60 8b e0                                      add r6, fp, r0
005fd4bc  05 00 56 e1                                      cmp r6, r5
005fd4c0  db ff ff 2a                                      bhs #0x5fd434
005fd4c4  01 00 a0 e3                                      mov r0, #1
005fd4c8  5f f0 ff ea                                      b #0x5f964c
005fd4cc  64 81 9d e5                                      ldr r8, [sp, #0x164]
005fd4d0  58 a1 9d e5                                      ldr sl, [sp, #0x158]
005fd4d4  01 60 48 e2                                      sub r6, r8, #1
005fd4d8  96 a9 26 e0                                      mla r6, r6, sb, sl
005fd4dc  06 00 5a e1                                      cmp sl, r6
005fd4e0  73 f2 ff 8a                                      bhi #0x5f9eb4
005fd4e4  00 90 69 e2                                      rsb sb, sb, #0
005fd4e8  54 90 8d e5                                      str sb, [sp, #0x54]
005fd4ec  06 b0 a0 e1                                      mov fp, r6
005fd4f0  0a 90 a0 e1                                      mov sb, sl
005fd4f4  f0 a0 8d e2                                      add sl, sp, #0xf0
005fd4f8  00 00 54 e3                                      cmp r4, #0
005fd4fc  04 80 a0 11                                      movne r8, r4
005fd500  1d 00 00 0a                                      beq #0x5fd57c
005fd504  0c 31 dd e5                                      ldrb r3, [sp, #0x10c]
005fd508  0d 11 dd e5                                      ldrb r1, [sp, #0x10d]
005fd50c  0e 21 dd e5                                      ldrb r2, [sp, #0x10e]
005fd510  83 30 a0 e1                                      lsl r3, r3, #1
005fd514  b3 c0 96 e1                                      ldrh ip, [r6, r3]
005fd518  81 10 a0 e1                                      lsl r1, r1, #1
005fd51c  82 20 a0 e1                                      lsl r2, r2, #1
005fd520  b0 cf cd e1                                      strh ip, [sp, #0xf0]
005fd524  b1 10 96 e1                                      ldrh r1, [r6, r1]
005fd528  05 00 a0 e1                                      mov r0, r5
005fd52c  b2 1f cd e1                                      strh r1, [sp, #0xf2]
005fd530  b2 20 96 e1                                      ldrh r2, [r6, r2]
005fd534  0a 10 a0 e1                                      mov r1, sl
005fd538  b4 2f cd e1                                      strh r2, [sp, #0xf4]
005fd53c  b3 30 95 e1                                      ldrh r3, [r5, r3]
005fd540  07 20 a0 e1                                      mov r2, r7
005fd544  b0 30 c6 e1                                      strh r3, [r6]
005fd548  0d 31 dd e5                                      ldrb r3, [sp, #0x10d]
005fd54c  83 30 a0 e1                                      lsl r3, r3, #1
005fd550  b3 30 95 e1                                      ldrh r3, [r5, r3]
005fd554  b2 30 c6 e1                                      strh r3, [r6, #2]
005fd558  0e 31 dd e5                                      ldrb r3, [sp, #0x10e]
005fd55c  83 30 a0 e1                                      lsl r3, r3, #1
005fd560  b3 30 95 e1                                      ldrh r3, [r5, r3]
005fd564  07 50 85 e0                                      add r5, r5, r7
005fd568  b4 30 c6 e1                                      strh r3, [r6, #4]
005fd56c  bd 44 f4 eb                                      bl #0x30e868
005fd570  01 80 58 e2                                      subs r8, r8, #1
005fd574  06 60 86 e2                                      add r6, r6, #6
005fd578  e1 ff ff 1a                                      bne #0x5fd504
005fd57c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005fd580  54 10 9d e5                                      ldr r1, [sp, #0x54]
005fd584  00 50 89 e0                                      add r5, sb, r0
005fd588  01 60 8b e0                                      add r6, fp, r1
005fd58c  06 00 55 e1                                      cmp r5, r6
005fd590  47 f2 ff 8a                                      bhi #0x5f9eb4
005fd594  06 b0 a0 e1                                      mov fp, r6
005fd598  05 90 a0 e1                                      mov sb, r5
005fd59c  d5 ff ff ea                                      b #0x5fd4f8
005fd5a0  64 11 9d e5                                      ldr r1, [sp, #0x164]
005fd5a4  00 00 51 e3                                      cmp r1, #0
005fd5a8  41 f2 ff 0a                                      beq #0x5f9eb4
005fd5ac  d0 20 9d e5                                      ldr r2, [sp, #0xd0]
005fd5b0  c4 30 dd e5                                      ldrb r3, [sp, #0xc4]
005fd5b4  c8 50 dd e5                                      ldrb r5, [sp, #0xc8]
005fd5b8  dc 70 9d e5                                      ldr r7, [sp, #0xdc]
005fd5bc  eb a0 dd e5                                      ldrb sl, [sp, #0xeb]
005fd5c0  b4 c0 9d e5                                      ldr ip, [sp, #0xb4]
005fd5c4  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
005fd5c8  a0 80 8d e5                                      str r8, [sp, #0xa0]
005fd5cc  e8 80 dd e5                                      ldrb r8, [sp, #0xe8]
005fd5d0  c5 10 dd e5                                      ldrb r1, [sp, #0xc5]
005fd5d4  38 20 8d e5                                      str r2, [sp, #0x38]
005fd5d8  9c 30 8d e5                                      str r3, [sp, #0x9c]
005fd5dc  c9 20 dd e5                                      ldrb r2, [sp, #0xc9]
005fd5e0  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005fd5e4  98 50 8d e5                                      str r5, [sp, #0x98]
005fd5e8  94 70 8d e5                                      str r7, [sp, #0x94]
005fd5ec  e9 50 dd e5                                      ldrb r5, [sp, #0xe9]
005fd5f0  ec 70 dd e5                                      ldrb r7, [sp, #0xec]
005fd5f4  90 80 8d e5                                      str r8, [sp, #0x90]
005fd5f8  8c a0 8d e5                                      str sl, [sp, #0x8c]
005fd5fc  b8 80 9d e5                                      ldr r8, [sp, #0xb8]
005fd600  d8 a0 9d e5                                      ldr sl, [sp, #0xd8]
005fd604  40 c0 8d e5                                      str ip, [sp, #0x40]
005fd608  88 00 8d e5                                      str r0, [sp, #0x88]
005fd60c  c6 c0 dd e5                                      ldrb ip, [sp, #0xc6]
005fd610  ca 00 dd e5                                      ldrb r0, [sp, #0xca]
005fd614  84 10 8d e5                                      str r1, [sp, #0x84]
005fd618  80 20 8d e5                                      str r2, [sp, #0x80]
005fd61c  7c 30 8d e5                                      str r3, [sp, #0x7c]
005fd620  78 50 8d e5                                      str r5, [sp, #0x78]
005fd624  74 70 8d e5                                      str r7, [sp, #0x74]
005fd628  70 80 8d e5                                      str r8, [sp, #0x70]
005fd62c  34 a0 8d e5                                      str sl, [sp, #0x34]
005fd630  6c c0 8d e5                                      str ip, [sp, #0x6c]
005fd634  68 00 8d e5                                      str r0, [sp, #0x68]
005fd638  ed 30 dd e5                                      ldrb r3, [sp, #0xed]
005fd63c  c0 a0 9d e5                                      ldr sl, [sp, #0xc0]
005fd640  a0 c0 9d e5                                      ldr ip, [sp, #0xa0]
005fd644  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
005fd648  ea 20 dd e5                                      ldrb r2, [sp, #0xea]
005fd64c  bc 50 9d e5                                      ldr r5, [sp, #0xbc]
005fd650  c7 70 dd e5                                      ldrb r7, [sp, #0xc7]
005fd654  cb 80 dd e5                                      ldrb r8, [sp, #0xcb]
005fd658  58 30 8d e5                                      str r3, [sp, #0x58]
005fd65c  43 3f 8d e2                                      add r3, sp, #0x10c
005fd660  44 a0 8d e5                                      str sl, [sp, #0x44]
005fd664  a8 90 8d e5                                      str sb, [sp, #0xa8]
005fd668  64 10 8d e5                                      str r1, [sp, #0x64]
005fd66c  60 20 8d e5                                      str r2, [sp, #0x60]
005fd670  50 50 8d e5                                      str r5, [sp, #0x50]
005fd674  4c 70 8d e5                                      str r7, [sp, #0x4c]
005fd678  48 80 8d e5                                      str r8, [sp, #0x48]
005fd67c  a4 c0 8d e5                                      str ip, [sp, #0xa4]
005fd680  0c a0 a0 e1                                      mov sl, ip
005fd684  03 90 a0 e1                                      mov sb, r3
005fd688  00 00 54 e3                                      cmp r4, #0
005fd68c  00 50 a0 13                                      movne r5, #0
005fd690  54 a0 8d 15                                      strne sl, [sp, #0x54]
005fd694  44 00 00 0a                                      beq #0x5fd7ac
005fd698  06 10 a0 e1                                      mov r1, r6
005fd69c  0b 20 a0 e1                                      mov r2, fp
005fd6a0  09 00 a0 e1                                      mov r0, sb
005fd6a4  6f 44 f4 eb                                      bl #0x30e868
005fd6a8  0c 11 dd e5                                      ldrb r1, [sp, #0x10c]
005fd6ac  0d 21 dd e5                                      ldrb r2, [sp, #0x10d]
005fd6b0  0e 31 dd e5                                      ldrb r3, [sp, #0x10e]
005fd6b4  24 11 cd e5                                      strb r1, [sp, #0x124]
005fd6b8  25 21 cd e5                                      strb r2, [sp, #0x125]
005fd6bc  26 31 cd e5                                      strb r3, [sp, #0x126]
005fd6c0  24 31 9d e5                                      ldr r3, [sp, #0x124]
005fd6c4  38 80 9d e5                                      ldr r8, [sp, #0x38]
005fd6c8  9c a0 9d e5                                      ldr sl, [sp, #0x9c]
005fd6cc  88 c0 9d e5                                      ldr ip, [sp, #0x88]
005fd6d0  03 70 08 e0                                      and r7, r8, r3
005fd6d4  84 00 9d e5                                      ldr r0, [sp, #0x84]
005fd6d8  37 7a a0 e1                                      lsr r7, r7, sl
005fd6dc  98 a0 9d e5                                      ldr sl, [sp, #0x98]
005fd6e0  0c 10 03 e0                                      and r1, r3, ip
005fd6e4  31 10 a0 e1                                      lsr r1, r1, r0
005fd6e8  17 7a a0 e1                                      lsl r7, r7, sl
005fd6ec  80 00 9d e5                                      ldr r0, [sp, #0x80]
005fd6f0  34 80 9d e5                                      ldr r8, [sp, #0x34]
005fd6f4  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
005fd6f8  11 10 a0 e1                                      lsl r1, r1, r0
005fd6fc  03 20 08 e0                                      and r2, r8, r3
005fd700  68 80 9d e5                                      ldr r8, [sp, #0x68]
005fd704  32 2c a0 e1                                      lsr r2, r2, ip
005fd708  12 28 a0 e1                                      lsl r2, r2, r8
005fd70c  94 a0 9d e5                                      ldr sl, [sp, #0x94]
005fd710  90 c0 9d e5                                      ldr ip, [sp, #0x90]
005fd714  0b 60 86 e0                                      add r6, r6, fp
005fd718  0a 80 03 e0                                      and r8, r3, sl
005fd71c  7c a0 9d e5                                      ldr sl, [sp, #0x7c]
005fd720  38 8c a0 e1                                      lsr r8, r8, ip
005fd724  03 00 0a e0                                      and r0, sl, r3
005fd728  78 c0 9d e5                                      ldr ip, [sp, #0x78]
005fd72c  64 a0 9d e5                                      ldr sl, [sp, #0x64]
005fd730  30 0c a0 e1                                      lsr r0, r0, ip
005fd734  03 c0 0a e0                                      and ip, sl, r3
005fd738  8c a0 9d e5                                      ldr sl, [sp, #0x8c]
005fd73c  18 7a 87 e1                                      orr r7, r7, r8, lsl sl
005fd740  74 a0 9d e5                                      ldr sl, [sp, #0x74]
005fd744  60 80 9d e5                                      ldr r8, [sp, #0x60]
005fd748  10 1a 81 e1                                      orr r1, r1, r0, lsl sl
005fd74c  58 00 9d e5                                      ldr r0, [sp, #0x58]
005fd750  3c c8 a0 e1                                      lsr ip, ip, r8
005fd754  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
005fd758  1c 20 82 e1                                      orr r2, r2, ip, lsl r0
005fd75c  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005fd760  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005fd764  33 38 a0 e1                                      lsr r3, r3, r8
005fd768  13 3c 0a e0                                      and r3, sl, r3, lsl ip
005fd76c  40 80 9d e5                                      ldr r8, [sp, #0x40]
005fd770  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
005fd774  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005fd778  08 00 07 e0                                      and r0, r7, r8
005fd77c  00 00 8a e1                                      orr r0, sl, r0
005fd780  0c 10 01 e0                                      and r1, r1, ip
005fd784  01 10 80 e1                                      orr r1, r0, r1
005fd788  50 00 9d e5                                      ldr r0, [sp, #0x50]
005fd78c  00 20 02 e0                                      and r2, r2, r0
005fd790  02 20 81 e1                                      orr r2, r1, r2
005fd794  54 10 9d e5                                      ldr r1, [sp, #0x54]
005fd798  03 30 82 e1                                      orr r3, r2, r3
005fd79c  05 30 c1 e7                                      strb r3, [r1, r5]
005fd7a0  01 50 85 e2                                      add r5, r5, #1
005fd7a4  05 00 54 e1                                      cmp r4, r5
005fd7a8  ba ff ff 1a                                      bne #0x5fd698
005fd7ac  64 21 9d e5                                      ldr r2, [sp, #0x164]
005fd7b0  01 20 52 e2                                      subs r2, r2, #1
005fd7b4  64 21 8d e5                                      str r2, [sp, #0x164]
005fd7b8  bd f1 ff 0a                                      beq #0x5f9eb4
005fd7bc  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
005fd7c0  a0 70 9d e5                                      ldr r7, [sp, #0xa0]
005fd7c4  5c 50 9d e5                                      ldr r5, [sp, #0x5c]
005fd7c8  a8 80 9d e5                                      ldr r8, [sp, #0xa8]
005fd7cc  05 60 83 e0                                      add r6, r3, r5
005fd7d0  08 70 87 e0                                      add r7, r7, r8
005fd7d4  a0 70 8d e5                                      str r7, [sp, #0xa0]
005fd7d8  07 a0 a0 e1                                      mov sl, r7
005fd7dc  a4 60 8d e5                                      str r6, [sp, #0xa4]
005fd7e0  a8 ff ff ea                                      b #0x5fd688
005fd7e4  64 81 9d e5                                      ldr r8, [sp, #0x164]
005fd7e8  58 a1 9d e5                                      ldr sl, [sp, #0x158]
005fd7ec  01 60 48 e2                                      sub r6, r8, #1
005fd7f0  96 a9 26 e0                                      mla r6, r6, sb, sl
005fd7f4  00 90 69 e2                                      rsb sb, sb, #0
005fd7f8  06 00 5a e1                                      cmp sl, r6
005fd7fc  54 90 8d e5                                      str sb, [sp, #0x54]
005fd800  f0 a0 8d 92                                      addls sl, sp, #0xf0
005fd804  aa f1 ff 8a                                      bhi #0x5f9eb4
005fd808  00 00 54 e3                                      cmp r4, #0
005fd80c  06 b0 a0 e1                                      mov fp, r6
005fd810  05 90 a0 e1                                      mov sb, r5
005fd814  04 80 a0 11                                      movne r8, r4
005fd818  15 00 00 0a                                      beq #0x5fd874
005fd81c  0c 31 dd e5                                      ldrb r3, [sp, #0x10c]
005fd820  0d 21 dd e5                                      ldrb r2, [sp, #0x10d]
005fd824  05 00 a0 e1                                      mov r0, r5
005fd828  83 30 a0 e1                                      lsl r3, r3, #1
005fd82c  b3 c0 96 e1                                      ldrh ip, [r6, r3]
005fd830  82 20 a0 e1                                      lsl r2, r2, #1
005fd834  0a 10 a0 e1                                      mov r1, sl
005fd838  b0 cf cd e1                                      strh ip, [sp, #0xf0]
005fd83c  b2 20 96 e1                                      ldrh r2, [r6, r2]
005fd840  b2 2f cd e1                                      strh r2, [sp, #0xf2]
005fd844  b3 30 95 e1                                      ldrh r3, [r5, r3]
005fd848  07 20 a0 e1                                      mov r2, r7
005fd84c  b0 30 c6 e1                                      strh r3, [r6]
005fd850  0d 31 dd e5                                      ldrb r3, [sp, #0x10d]
005fd854  83 30 a0 e1                                      lsl r3, r3, #1
005fd858  b3 30 95 e1                                      ldrh r3, [r5, r3]
005fd85c  07 50 85 e0                                      add r5, r5, r7
005fd860  b2 30 c6 e1                                      strh r3, [r6, #2]
005fd864  ff 43 f4 eb                                      bl #0x30e868
005fd868  01 80 58 e2                                      subs r8, r8, #1
005fd86c  04 60 86 e2                                      add r6, r6, #4
005fd870  e9 ff ff 1a                                      bne #0x5fd81c
005fd874  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005fd878  54 10 9d e5                                      ldr r1, [sp, #0x54]
005fd87c  00 50 89 e0                                      add r5, sb, r0
005fd880  01 60 8b e0                                      add r6, fp, r1
005fd884  06 00 55 e1                                      cmp r5, r6
005fd888  de ff ff 9a                                      bls #0x5fd808
005fd88c  01 00 a0 e3                                      mov r0, #1
005fd890  6d ef ff ea                                      b #0x5f964c

; FUNCTION 0x005fd894, declared_size=468, range_size=468, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb
; demangled: glitch::video::pixel_format::(anonymous namespace)::decompress(glitch::video::E_PIXEL_FORMAT, void const*, unsigned int, glitch::video::E_PIXEL_FORMAT, void*, unsigned int, unsigned int, unsigned int, bool)
; decoder-mode: arm
005fd894  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005fd898  11 c0 40 e2                                      sub ip, r0, #0x11
005fd89c  24 d0 4d e2                                      sub sp, sp, #0x24
005fd8a0  03 00 5c e3                                      cmp ip, #3
005fd8a4  00 40 a0 e1                                      mov r4, r0
005fd8a8  1c 10 8d e5                                      str r1, [sp, #0x1c]
005fd8ac  02 a0 a0 e1                                      mov sl, r2
005fd8b0  03 60 a0 e1                                      mov r6, r3
005fd8b4  48 70 9d e5                                      ldr r7, [sp, #0x48]
005fd8b8  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
005fd8bc  50 50 9d e5                                      ldr r5, [sp, #0x50]
005fd8c0  54 80 9d e5                                      ldr r8, [sp, #0x54]
005fd8c4  58 b0 dd e5                                      ldrb fp, [sp, #0x58]
005fd8c8  2d 00 00 9a                                      bls #0x5fd984
005fd8cc  05 10 a0 e1                                      mov r1, r5
005fd8d0  85 c0 ff eb                                      bl #0x5edaec
005fd8d4  0a 00 50 e1                                      cmp r0, sl
005fd8d8  21 00 00 1a                                      bne #0x5fd964
005fd8dc  15 30 44 e2                                      sub r3, r4, #0x15
005fd8e0  02 00 53 e3                                      cmp r3, #2
005fd8e4  54 00 00 9a                                      bls #0x5fda3c
005fd8e8  06 00 a0 e1                                      mov r0, r6
005fd8ec  05 10 a0 e1                                      mov r1, r5
005fd8f0  7d c0 ff eb                                      bl #0x5edaec
005fd8f4  0e 00 56 e3                                      cmp r6, #0xe
005fd8f8  09 00 50 01                                      cmpeq r0, sb
005fd8fc  00 a0 a0 e1                                      mov sl, r0
005fd900  25 00 00 1a                                      bne #0x5fd99c
005fd904  18 10 44 e2                                      sub r1, r4, #0x18
005fd908  01 00 51 e3                                      cmp r1, #1
005fd90c  00 10 a0 83                                      movhi r1, #0
005fd910  01 10 a0 93                                      movls r1, #1
005fd914  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005fd918  05 20 a0 e1                                      mov r2, r5
005fd91c  08 30 a0 e1                                      mov r3, r8
005fd920  00 70 8d e5                                      str r7, [sp]
005fd924  8f 87 02 eb                                      bl #0x69f768
005fd928  07 10 a0 e1                                      mov r1, r7
005fd92c  00 00 5b e3                                      cmp fp, #0
005fd930  01 40 a0 03                                      moveq r4, #1
005fd934  0f 00 00 0a                                      beq #0x5fd978
005fd938  0a 20 a0 e1                                      mov r2, sl
005fd93c  06 30 a0 e1                                      mov r3, r6
005fd940  0e 00 a0 e3                                      mov r0, #0xe
005fd944  48 70 8d e5                                      str r7, [sp, #0x48]
005fd948  4c 90 8d e5                                      str sb, [sp, #0x4c]
005fd94c  50 50 8d e5                                      str r5, [sp, #0x50]
005fd950  54 80 8d e5                                      str r8, [sp, #0x54]
005fd954  58 b0 8d e5                                      str fp, [sp, #0x58]
005fd958  24 d0 8d e2                                      add sp, sp, #0x24
005fd95c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005fd960  11 ef ff ea                                      b #0x5f95ac
005fd964  e8 00 9f e5                                      ldr r0, [pc, #0xe8]
005fd968  03 10 a0 e3                                      mov r1, #3
005fd96c  00 40 a0 e3                                      mov r4, #0
005fd970  00 00 8f e0                                      add r0, pc, r0
005fd974  c9 34 00 eb                                      bl #0x60aca0
005fd978  04 00 a0 e1                                      mov r0, r4
005fd97c  24 d0 8d e2                                      add sp, sp, #0x24
005fd980  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005fd984  cc 00 9f e5                                      ldr r0, [pc, #0xcc]
005fd988  03 10 a0 e3                                      mov r1, #3
005fd98c  00 40 a0 e3                                      mov r4, #0
005fd990  00 00 8f e0                                      add r0, pc, r0
005fd994  c1 34 00 eb                                      bl #0x60aca0
005fd998  f6 ff ff ea                                      b #0x5fd978
005fd99c  b8 00 9f e5                                      ldr r0, [pc, #0xb8]
005fd9a0  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
005fd9a4  02 20 a0 e3                                      mov r2, #2
005fd9a8  00 00 8f e0                                      add r0, pc, r0
005fd9ac  01 10 8f e0                                      add r1, pc, r1
005fd9b0  cc 34 00 eb                                      bl #0x60ace8
005fd9b4  05 01 a0 e1                                      lsl r0, r5, #2
005fd9b8  00 10 a0 e3                                      mov r1, #0
005fd9bc  98 00 00 e0                                      mul r0, r8, r0
005fd9c0  f8 d9 fc eb                                      bl #0x5341a8
005fd9c4  18 10 44 e2                                      sub r1, r4, #0x18
005fd9c8  00 c0 a0 e1                                      mov ip, r0
005fd9cc  01 00 51 e3                                      cmp r1, #1
005fd9d0  00 10 a0 83                                      movhi r1, #0
005fd9d4  01 10 a0 93                                      movls r1, #1
005fd9d8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005fd9dc  05 20 a0 e1                                      mov r2, r5
005fd9e0  08 30 a0 e1                                      mov r3, r8
005fd9e4  00 c0 8d e5                                      str ip, [sp]
005fd9e8  18 c0 8d e5                                      str ip, [sp, #0x18]
005fd9ec  5d 87 02 eb                                      bl #0x69f768
005fd9f0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005fd9f4  00 00 5c e3                                      cmp ip, #0
005fd9f8  0c 10 a0 01                                      moveq r1, ip
005fd9fc  ca ff ff 0a                                      beq #0x5fd92c
005fda00  0c 10 a0 e1                                      mov r1, ip
005fda04  0a 20 a0 e1                                      mov r2, sl
005fda08  06 30 a0 e1                                      mov r3, r6
005fda0c  0e 00 a0 e3                                      mov r0, #0xe
005fda10  18 c0 8d e5                                      str ip, [sp, #0x18]
005fda14  80 02 8d e8                                      stm sp, {r7, sb}
005fda18  08 50 8d e5                                      str r5, [sp, #8]
005fda1c  0c 80 8d e5                                      str r8, [sp, #0xc]
005fda20  10 b0 8d e5                                      str fp, [sp, #0x10]
005fda24  e0 ee ff eb                                      bl #0x5f95ac
005fda28  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005fda2c  00 40 a0 e1                                      mov r4, r0
005fda30  0c 00 a0 e1                                      mov r0, ip
005fda34  9f 41 f4 eb                                      bl #0x30e0b8
005fda38  ce ff ff ea                                      b #0x5fd978
005fda3c  20 00 9f e5                                      ldr r0, [pc, #0x20]
005fda40  03 10 a0 e3                                      mov r1, #3
005fda44  00 40 a0 e3                                      mov r4, #0
005fda48  00 00 8f e0                                      add r0, pc, r0
005fda4c  93 34 00 eb                                      bl #0x60aca0
005fda50  c8 ff ff ea                                      b #0x5fd978
; mapping-symbol data/literal pool
005fda54  e8 65 2e 00 98 65 2e 00 20 66 2e 00 34 66 2e 00  .byte 0xe8, 0x65, 0x2e, 0x00, 0x98, 0x65, 0x2e, 0x00, 0x20, 0x66, 0x2e, 0x00, 0x34, 0x66, 0x2e, 0x00
005fda64  58 65 2e 00                                      .byte 0x58, 0x65, 0x2e, 0x00
