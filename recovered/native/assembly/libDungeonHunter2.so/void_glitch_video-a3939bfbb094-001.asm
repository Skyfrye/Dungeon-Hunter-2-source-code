; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005ffb18, declared_size=224, range_size=224, mode=arm
; class-group: void glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_133executeBlit_TextureBlend_32_to_32ILb1EEEvPKNS1_8SBlitJobE
; demangled: void glitch::video::(anonymous namespace)::executeBlit_TextureBlend_32_to_32<true>(glitch::video::(anonymous namespace)::SBlitJob const*)
; decoder-mode: arm
005ffb18  38 20 90 e5                                      ldr r2, [r0, #0x38]
005ffb1c  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
005ffb20  00 00 52 e3                                      cmp r2, #0
005ffb24  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005ffb28  30 50 90 e5                                      ldr r5, [r0, #0x30]
005ffb2c  2f 00 00 0a                                      beq #0x5ffbf0
005ffb30  34 30 90 e5                                      ldr r3, [r0, #0x34]
005ffb34  00 80 a0 e3                                      mov r8, #0
005ffb38  00 00 53 e3                                      cmp r3, #0
005ffb3c  00 20 a0 13                                      movne r2, #0
005ffb40  02 10 a0 11                                      movne r1, r2
005ffb44  21 00 00 0a                                      beq #0x5ffbd0
005ffb48  02 30 96 e7                                      ldr r3, [r6, r2]
005ffb4c  02 c0 95 e7                                      ldr ip, [r5, r2]
005ffb50  ff 44 13 e2                                      ands r4, r3, #0xff000000
005ffb54  ff 34 8c 03                                      orreq r3, ip, #0xff000000
005ffb58  15 00 00 0a                                      beq #0x5ffbb4
005ffb5c  ff 04 54 e3                                      cmp r4, #0xff000000
005ffb60  13 00 00 0a                                      beq #0x5ffbb4
005ffb64  ff a4 c3 e3                                      bic sl, r3, #0xff000000
005ffb68  ff 74 cc e3                                      bic r7, ip, #0xff000000
005ffb6c  ff 7c c7 e3                                      bic r7, r7, #0xff00
005ffb70  a4 9f a0 e1                                      lsr sb, r4, #0x1f
005ffb74  ff ac ca e3                                      bic sl, sl, #0xff00
005ffb78  24 4c 89 e0                                      add r4, sb, r4, lsr #24
005ffb7c  ff cc 0c e2                                      and ip, ip, #0xff00
005ffb80  ff 3c 03 e2                                      and r3, r3, #0xff00
005ffb84  0a a0 67 e0                                      rsb sl, r7, sl
005ffb88  03 90 6c e0                                      rsb sb, ip, r3
005ffb8c  9a 04 03 e0                                      mul r3, sl, r4
005ffb90  99 04 04 e0                                      mul r4, sb, r4
005ffb94  23 34 87 e0                                      add r3, r7, r3, lsr #8
005ffb98  24 c4 8c e0                                      add ip, ip, r4, lsr #8
005ffb9c  ff 34 c3 e3                                      bic r3, r3, #0xff000000
005ffba0  ff 3c c3 e3                                      bic r3, r3, #0xff00
005ffba4  ff cc 0c e2                                      and ip, ip, #0xff00
005ffba8  0c 30 83 e1                                      orr r3, r3, ip
005ffbac  ff 34 83 e3                                      orr r3, r3, #0xff000000
005ffbb0  63 3c a0 e1                                      ror r3, r3, #0x18
005ffbb4  02 30 85 e7                                      str r3, [r5, r2]
005ffbb8  34 30 90 e5                                      ldr r3, [r0, #0x34]
005ffbbc  01 10 81 e2                                      add r1, r1, #1
005ffbc0  04 20 82 e2                                      add r2, r2, #4
005ffbc4  01 00 53 e1                                      cmp r3, r1
005ffbc8  de ff ff 1a                                      bne #0x5ffb48
005ffbcc  38 20 90 e5                                      ldr r2, [r0, #0x38]
005ffbd0  01 80 88 e2                                      add r8, r8, #1
005ffbd4  08 00 52 e1                                      cmp r2, r8
005ffbd8  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
005ffbdc  40 10 90 e5                                      ldr r1, [r0, #0x40]
005ffbe0  02 00 00 0a                                      beq #0x5ffbf0
005ffbe4  0c 60 86 e0                                      add r6, r6, ip
005ffbe8  01 50 85 e0                                      add r5, r5, r1
005ffbec  d1 ff ff ea                                      b #0x5ffb38
005ffbf0  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
005ffbf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ffbf8, declared_size=228, range_size=228, mode=arm
; class-group: void glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_133executeBlit_TextureBlend_32_to_32ILb0EEEvPKNS1_8SBlitJobE
; demangled: void glitch::video::(anonymous namespace)::executeBlit_TextureBlend_32_to_32<false>(glitch::video::(anonymous namespace)::SBlitJob const*)
; decoder-mode: arm
005ffbf8  38 20 90 e5                                      ldr r2, [r0, #0x38]
005ffbfc  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
005ffc00  00 00 52 e3                                      cmp r2, #0
005ffc04  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005ffc08  30 50 90 e5                                      ldr r5, [r0, #0x30]
005ffc0c  30 00 00 0a                                      beq #0x5ffcd4
005ffc10  34 30 90 e5                                      ldr r3, [r0, #0x34]
005ffc14  00 70 a0 e3                                      mov r7, #0
005ffc18  00 00 53 e3                                      cmp r3, #0
005ffc1c  00 20 a0 13                                      movne r2, #0
005ffc20  02 10 a0 11                                      movne r1, r2
005ffc24  22 00 00 0a                                      beq #0x5ffcb4
005ffc28  02 30 96 e7                                      ldr r3, [r6, r2]
005ffc2c  02 c0 95 e7                                      ldr ip, [r5, r2]
005ffc30  63 34 a0 e1                                      ror r3, r3, #8
005ffc34  ff 44 13 e2                                      ands r4, r3, #0xff000000
005ffc38  6c c4 a0 e1                                      ror ip, ip, #8
005ffc3c  ff 34 8c 03                                      orreq r3, ip, #0xff000000
005ffc40  14 00 00 0a                                      beq #0x5ffc98
005ffc44  ff 04 54 e3                                      cmp r4, #0xff000000
005ffc48  12 00 00 0a                                      beq #0x5ffc98
005ffc4c  ff a4 c3 e3                                      bic sl, r3, #0xff000000
005ffc50  ff 84 cc e3                                      bic r8, ip, #0xff000000
005ffc54  ff 8c c8 e3                                      bic r8, r8, #0xff00
005ffc58  a4 9f a0 e1                                      lsr sb, r4, #0x1f
005ffc5c  ff ac ca e3                                      bic sl, sl, #0xff00
005ffc60  24 4c 89 e0                                      add r4, sb, r4, lsr #24
005ffc64  ff cc 0c e2                                      and ip, ip, #0xff00
005ffc68  ff 3c 03 e2                                      and r3, r3, #0xff00
005ffc6c  0a a0 68 e0                                      rsb sl, r8, sl
005ffc70  03 90 6c e0                                      rsb sb, ip, r3
005ffc74  9a 04 03 e0                                      mul r3, sl, r4
005ffc78  99 04 04 e0                                      mul r4, sb, r4
005ffc7c  23 34 88 e0                                      add r3, r8, r3, lsr #8
005ffc80  24 c4 8c e0                                      add ip, ip, r4, lsr #8
005ffc84  ff 34 c3 e3                                      bic r3, r3, #0xff000000
005ffc88  ff 3c c3 e3                                      bic r3, r3, #0xff00
005ffc8c  ff cc 0c e2                                      and ip, ip, #0xff00
005ffc90  0c 30 83 e1                                      orr r3, r3, ip
005ffc94  ff 34 83 e3                                      orr r3, r3, #0xff000000
005ffc98  02 30 85 e7                                      str r3, [r5, r2]
005ffc9c  34 30 90 e5                                      ldr r3, [r0, #0x34]
005ffca0  01 10 81 e2                                      add r1, r1, #1
005ffca4  04 20 82 e2                                      add r2, r2, #4
005ffca8  01 00 53 e1                                      cmp r3, r1
005ffcac  dd ff ff 1a                                      bne #0x5ffc28
005ffcb0  38 20 90 e5                                      ldr r2, [r0, #0x38]
005ffcb4  01 70 87 e2                                      add r7, r7, #1
005ffcb8  07 00 52 e1                                      cmp r2, r7
005ffcbc  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
005ffcc0  40 10 90 e5                                      ldr r1, [r0, #0x40]
005ffcc4  02 00 00 0a                                      beq #0x5ffcd4
005ffcc8  0c 60 86 e0                                      add r6, r6, ip
005ffccc  01 50 85 e0                                      add r5, r5, r1
005ffcd0  d0 ff ff ea                                      b #0x5ffc18
005ffcd4  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
005ffcd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ffcdc, declared_size=348, range_size=348, mode=arm
; class-group: void glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_138executeBlit_TextureBlendColor_32_to_32ILb1EEEvPKNS1_8SBlitJobE
; demangled: void glitch::video::(anonymous namespace)::executeBlit_TextureBlendColor_32_to_32<true>(glitch::video::(anonymous namespace)::SBlitJob const*)
; decoder-mode: arm
005ffcdc  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005ffce0  38 30 90 e5                                      ldr r3, [r0, #0x38]
005ffce4  08 d0 4d e2                                      sub sp, sp, #8
005ffce8  2c 90 90 e5                                      ldr sb, [r0, #0x2c]
005ffcec  00 00 53 e3                                      cmp r3, #0
005ffcf0  30 50 90 e5                                      ldr r5, [r0, #0x30]
005ffcf4  4c 00 00 0a                                      beq #0x5ffe2c
005ffcf8  34 20 90 e5                                      ldr r2, [r0, #0x34]
005ffcfc  00 10 a0 e3                                      mov r1, #0
005ffd00  04 10 8d e5                                      str r1, [sp, #4]
005ffd04  00 00 52 e3                                      cmp r2, #0
005ffd08  00 30 a0 13                                      movne r3, #0
005ffd0c  03 c0 a0 11                                      movne ip, r3
005ffd10  3b 00 00 0a                                      beq #0x5ffe04
005ffd14  03 20 99 e7                                      ldr r2, [sb, r3]
005ffd18  20 10 90 e5                                      ldr r1, [r0, #0x20]
005ffd1c  03 40 95 e7                                      ldr r4, [r5, r3]
005ffd20  ff 74 02 e2                                      and r7, r2, #0xff000000
005ffd24  ff bc 01 e2                                      and fp, r1, #0xff00
005ffd28  ff 64 01 e2                                      and r6, r1, #0xff000000
005ffd2c  27 78 a0 e1                                      lsr r7, r7, #0x10
005ffd30  00 b0 8d e5                                      str fp, [sp]
005ffd34  26 68 a0 e1                                      lsr r6, r6, #0x10
005ffd38  97 06 06 e0                                      mul r6, r7, r6
005ffd3c  00 70 9d e5                                      ldr r7, [sp]
005ffd40  ff a8 02 e2                                      and sl, r2, #0xff0000
005ffd44  ff 88 01 e2                                      and r8, r1, #0xff0000
005ffd48  ff bc 02 e2                                      and fp, r2, #0xff00
005ffd4c  28 86 a0 e1                                      lsr r8, r8, #0xc
005ffd50  2a a6 a0 e1                                      lsr sl, sl, #0xc
005ffd54  9a 08 08 e0                                      mul r8, sl, r8
005ffd58  9b 07 0b e0                                      mul fp, fp, r7
005ffd5c  ff 10 01 e2                                      and r1, r1, #0xff
005ffd60  ff 20 02 e2                                      and r2, r2, #0xff
005ffd64  92 01 02 e0                                      mul r2, r2, r1
005ffd68  ff 88 08 e2                                      and r8, r8, #0xff0000
005ffd6c  ff 64 06 e2                                      and r6, r6, #0xff000000
005ffd70  2b b8 a0 e1                                      lsr fp, fp, #0x10
005ffd74  06 60 88 e1                                      orr r6, r8, r6
005ffd78  ff bc 0b e2                                      and fp, fp, #0xff00
005ffd7c  0b 60 86 e1                                      orr r6, r6, fp
005ffd80  22 24 86 e1                                      orr r2, r6, r2, lsr #8
005ffd84  ff 14 12 e2                                      ands r1, r2, #0xff000000
005ffd88  ff 24 84 03                                      orreq r2, r4, #0xff000000
005ffd8c  15 00 00 0a                                      beq #0x5ffde8
005ffd90  ff 04 51 e3                                      cmp r1, #0xff000000
005ffd94  13 00 00 0a                                      beq #0x5ffde8
005ffd98  ff 74 c2 e3                                      bic r7, r2, #0xff000000
005ffd9c  ff 64 c4 e3                                      bic r6, r4, #0xff000000
005ffda0  ff 6c c6 e3                                      bic r6, r6, #0xff00
005ffda4  a1 8f a0 e1                                      lsr r8, r1, #0x1f
005ffda8  ff 7c c7 e3                                      bic r7, r7, #0xff00
005ffdac  21 1c 88 e0                                      add r1, r8, r1, lsr #24
005ffdb0  ff 4c 04 e2                                      and r4, r4, #0xff00
005ffdb4  ff 2c 02 e2                                      and r2, r2, #0xff00
005ffdb8  07 70 66 e0                                      rsb r7, r6, r7
005ffdbc  02 80 64 e0                                      rsb r8, r4, r2
005ffdc0  97 01 02 e0                                      mul r2, r7, r1
005ffdc4  98 01 01 e0                                      mul r1, r8, r1
005ffdc8  22 24 86 e0                                      add r2, r6, r2, lsr #8
005ffdcc  21 44 84 e0                                      add r4, r4, r1, lsr #8
005ffdd0  ff 24 c2 e3                                      bic r2, r2, #0xff000000
005ffdd4  ff 2c c2 e3                                      bic r2, r2, #0xff00
005ffdd8  ff 4c 04 e2                                      and r4, r4, #0xff00
005ffddc  04 20 82 e1                                      orr r2, r2, r4
005ffde0  ff 24 82 e3                                      orr r2, r2, #0xff000000
005ffde4  62 2c a0 e1                                      ror r2, r2, #0x18
005ffde8  03 20 85 e7                                      str r2, [r5, r3]
005ffdec  34 20 90 e5                                      ldr r2, [r0, #0x34]
005ffdf0  01 c0 8c e2                                      add ip, ip, #1
005ffdf4  04 30 83 e2                                      add r3, r3, #4
005ffdf8  0c 00 52 e1                                      cmp r2, ip
005ffdfc  c4 ff ff 1a                                      bne #0x5ffd14
005ffe00  38 30 90 e5                                      ldr r3, [r0, #0x38]
005ffe04  04 b0 9d e5                                      ldr fp, [sp, #4]
005ffe08  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
005ffe0c  40 10 90 e5                                      ldr r1, [r0, #0x40]
005ffe10  01 b0 8b e2                                      add fp, fp, #1
005ffe14  0b 00 53 e1                                      cmp r3, fp
005ffe18  04 b0 8d e5                                      str fp, [sp, #4]
005ffe1c  02 00 00 0a                                      beq #0x5ffe2c
005ffe20  0c 90 89 e0                                      add sb, sb, ip
005ffe24  01 50 85 e0                                      add r5, r5, r1
005ffe28  b5 ff ff ea                                      b #0x5ffd04
005ffe2c  08 d0 8d e2                                      add sp, sp, #8
005ffe30  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
005ffe34  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ffe38, declared_size=344, range_size=344, mode=arm
; class-group: void glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_138executeBlit_TextureBlendColor_32_to_32ILb0EEEvPKNS1_8SBlitJobE
; demangled: void glitch::video::(anonymous namespace)::executeBlit_TextureBlendColor_32_to_32<false>(glitch::video::(anonymous namespace)::SBlitJob const*)
; decoder-mode: arm
005ffe38  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005ffe3c  38 30 90 e5                                      ldr r3, [r0, #0x38]
005ffe40  08 d0 4d e2                                      sub sp, sp, #8
005ffe44  2c 90 90 e5                                      ldr sb, [r0, #0x2c]
005ffe48  00 00 53 e3                                      cmp r3, #0
005ffe4c  30 40 90 e5                                      ldr r4, [r0, #0x30]
005ffe50  4b 00 00 0a                                      beq #0x5fff84
005ffe54  34 20 90 e5                                      ldr r2, [r0, #0x34]
005ffe58  00 10 a0 e3                                      mov r1, #0
005ffe5c  04 10 8d e5                                      str r1, [sp, #4]
005ffe60  00 00 52 e3                                      cmp r2, #0
005ffe64  00 30 a0 13                                      movne r3, #0
005ffe68  03 c0 a0 11                                      movne ip, r3
005ffe6c  3a 00 00 0a                                      beq #0x5fff5c
005ffe70  03 20 99 e7                                      ldr r2, [sb, r3]
005ffe74  20 10 90 e5                                      ldr r1, [r0, #0x20]
005ffe78  ff a8 02 e2                                      and sl, r2, #0xff0000
005ffe7c  ff 88 01 e2                                      and r8, r1, #0xff0000
005ffe80  ff 64 01 e2                                      and r6, r1, #0xff000000
005ffe84  ff 74 02 e2                                      and r7, r2, #0xff000000
005ffe88  ff bc 01 e2                                      and fp, r1, #0xff00
005ffe8c  ff 5c 02 e2                                      and r5, r2, #0xff00
005ffe90  28 86 a0 e1                                      lsr r8, r8, #0xc
005ffe94  2a a6 a0 e1                                      lsr sl, sl, #0xc
005ffe98  26 68 a0 e1                                      lsr r6, r6, #0x10
005ffe9c  27 78 a0 e1                                      lsr r7, r7, #0x10
005ffea0  9a 08 08 e0                                      mul r8, sl, r8
005ffea4  97 06 06 e0                                      mul r6, r7, r6
005ffea8  95 0b 05 e0                                      mul r5, r5, fp
005ffeac  ff 10 01 e2                                      and r1, r1, #0xff
005ffeb0  ff 20 02 e2                                      and r2, r2, #0xff
005ffeb4  92 01 02 e0                                      mul r2, r2, r1
005ffeb8  ff 88 08 e2                                      and r8, r8, #0xff0000
005ffebc  ff 64 06 e2                                      and r6, r6, #0xff000000
005ffec0  25 58 a0 e1                                      lsr r5, r5, #0x10
005ffec4  ff 5c 05 e2                                      and r5, r5, #0xff00
005ffec8  06 60 88 e1                                      orr r6, r8, r6
005ffecc  05 60 86 e1                                      orr r6, r6, r5
005ffed0  03 10 94 e7                                      ldr r1, [r4, r3]
005ffed4  22 24 86 e1                                      orr r2, r6, r2, lsr #8
005ffed8  62 24 a0 e1                                      ror r2, r2, #8
005ffedc  61 54 a0 e1                                      ror r5, r1, #8
005ffee0  ff 14 12 e2                                      ands r1, r2, #0xff000000
005ffee4  ff 24 85 03                                      orreq r2, r5, #0xff000000
005ffee8  14 00 00 0a                                      beq #0x5fff40
005ffeec  ff 04 51 e3                                      cmp r1, #0xff000000
005ffef0  12 00 00 0a                                      beq #0x5fff40
005ffef4  ff 74 c2 e3                                      bic r7, r2, #0xff000000
005ffef8  ff 64 c5 e3                                      bic r6, r5, #0xff000000
005ffefc  ff 6c c6 e3                                      bic r6, r6, #0xff00
005fff00  a1 8f a0 e1                                      lsr r8, r1, #0x1f
005fff04  ff 7c c7 e3                                      bic r7, r7, #0xff00
005fff08  21 1c 88 e0                                      add r1, r8, r1, lsr #24
005fff0c  ff 5c 05 e2                                      and r5, r5, #0xff00
005fff10  ff 2c 02 e2                                      and r2, r2, #0xff00
005fff14  07 70 66 e0                                      rsb r7, r6, r7
005fff18  02 80 65 e0                                      rsb r8, r5, r2
005fff1c  97 01 02 e0                                      mul r2, r7, r1
005fff20  98 01 01 e0                                      mul r1, r8, r1
005fff24  22 24 86 e0                                      add r2, r6, r2, lsr #8
005fff28  21 54 85 e0                                      add r5, r5, r1, lsr #8
005fff2c  ff 24 c2 e3                                      bic r2, r2, #0xff000000
005fff30  ff 2c c2 e3                                      bic r2, r2, #0xff00
005fff34  ff 5c 05 e2                                      and r5, r5, #0xff00
005fff38  05 20 82 e1                                      orr r2, r2, r5
005fff3c  ff 24 82 e3                                      orr r2, r2, #0xff000000
005fff40  03 20 84 e7                                      str r2, [r4, r3]
005fff44  34 20 90 e5                                      ldr r2, [r0, #0x34]
005fff48  01 c0 8c e2                                      add ip, ip, #1
005fff4c  04 30 83 e2                                      add r3, r3, #4
005fff50  0c 00 52 e1                                      cmp r2, ip
005fff54  c5 ff ff 1a                                      bne #0x5ffe70
005fff58  38 30 90 e5                                      ldr r3, [r0, #0x38]
005fff5c  04 50 9d e5                                      ldr r5, [sp, #4]
005fff60  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
005fff64  40 10 90 e5                                      ldr r1, [r0, #0x40]
005fff68  01 50 85 e2                                      add r5, r5, #1
005fff6c  05 00 53 e1                                      cmp r3, r5
005fff70  04 50 8d e5                                      str r5, [sp, #4]
005fff74  02 00 00 0a                                      beq #0x5fff84
005fff78  0c 90 89 e0                                      add sb, sb, ip
005fff7c  01 40 84 e0                                      add r4, r4, r1
005fff80  b6 ff ff ea                                      b #0x5ffe60
005fff84  08 d0 8d e2                                      add sp, sp, #8
005fff88  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
005fff8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005fff90, declared_size=192, range_size=192, mode=arm
; class-group: void glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_131executeBlit_ColorAlpha_32_to_32ILb1EEEvPKNS1_8SBlitJobE
; demangled: void glitch::video::(anonymous namespace)::executeBlit_ColorAlpha_32_to_32<true>(glitch::video::(anonymous namespace)::SBlitJob const*)
; decoder-mode: arm
005fff90  38 30 90 e5                                      ldr r3, [r0, #0x38]
005fff94  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
005fff98  00 00 53 e3                                      cmp r3, #0
005fff9c  30 40 90 e5                                      ldr r4, [r0, #0x30]
005fffa0  24 50 90 e5                                      ldr r5, [r0, #0x24]
005fffa4  20 60 90 e5                                      ldr r6, [r0, #0x20]
005fffa8  26 00 00 0a                                      beq #0x600048
005fffac  66 64 a0 e1                                      ror r6, r6, #8
005fffb0  34 10 90 e5                                      ldr r1, [r0, #0x34]
005fffb4  ff 74 c6 e3                                      bic r7, r6, #0xff000000
005fffb8  ff 7c c7 e3                                      bic r7, r7, #0xff00
005fffbc  ff 6c 06 e2                                      and r6, r6, #0xff00
005fffc0  00 80 a0 e3                                      mov r8, #0
005fffc4  00 00 51 e3                                      cmp r1, #0
005fffc8  00 30 a0 13                                      movne r3, #0
005fffcc  03 20 a0 11                                      movne r2, r3
005fffd0  17 00 00 0a                                      beq #0x600034
005fffd4  03 10 94 e7                                      ldr r1, [r4, r3]
005fffd8  01 20 82 e2                                      add r2, r2, #1
005fffdc  61 14 a0 e1                                      ror r1, r1, #8
005fffe0  ff c4 c1 e3                                      bic ip, r1, #0xff000000
005fffe4  ff cc cc e3                                      bic ip, ip, #0xff00
005fffe8  ff 1c 01 e2                                      and r1, r1, #0xff00
005fffec  07 90 6c e0                                      rsb sb, ip, r7
005ffff0  06 a0 61 e0                                      rsb sl, r1, r6
005ffff4  95 09 09 e0                                      mul sb, r5, sb
005ffff8  95 0a 0a e0                                      mul sl, r5, sl
005ffffc  29 c4 8c e0                                      add ip, ip, sb, lsr #8
00600000  2a 14 81 e0                                      add r1, r1, sl, lsr #8
00600004  ff c4 cc e3                                      bic ip, ip, #0xff000000
00600008  ff cc cc e3                                      bic ip, ip, #0xff00
0060000c  ff 1c 01 e2                                      and r1, r1, #0xff00
00600010  01 10 8c e1                                      orr r1, ip, r1
00600014  ff 14 81 e3                                      orr r1, r1, #0xff000000
00600018  61 1c a0 e1                                      ror r1, r1, #0x18
0060001c  03 10 84 e7                                      str r1, [r4, r3]
00600020  34 10 90 e5                                      ldr r1, [r0, #0x34]
00600024  04 30 83 e2                                      add r3, r3, #4
00600028  02 00 51 e1                                      cmp r1, r2
0060002c  e8 ff ff 1a                                      bne #0x5fffd4
00600030  38 30 90 e5                                      ldr r3, [r0, #0x38]
00600034  01 80 88 e2                                      add r8, r8, #1
00600038  08 00 53 e1                                      cmp r3, r8
0060003c  40 20 90 e5                                      ldr r2, [r0, #0x40]
00600040  02 40 84 10                                      addne r4, r4, r2
00600044  de ff ff 1a                                      bne #0x5fffc4
00600048  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
0060004c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00600050, declared_size=180, range_size=180, mode=arm
; class-group: void glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_131executeBlit_ColorAlpha_32_to_32ILb0EEEvPKNS1_8SBlitJobE
; demangled: void glitch::video::(anonymous namespace)::executeBlit_ColorAlpha_32_to_32<false>(glitch::video::(anonymous namespace)::SBlitJob const*)
; decoder-mode: arm
00600050  38 30 90 e5                                      ldr r3, [r0, #0x38]
00600054  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
00600058  00 00 53 e3                                      cmp r3, #0
0060005c  30 40 90 e5                                      ldr r4, [r0, #0x30]
00600060  24 50 90 e5                                      ldr r5, [r0, #0x24]
00600064  20 60 90 e5                                      ldr r6, [r0, #0x20]
00600068  23 00 00 0a                                      beq #0x6000fc
0060006c  34 10 90 e5                                      ldr r1, [r0, #0x34]
00600070  ff 74 c6 e3                                      bic r7, r6, #0xff000000
00600074  ff 7c c7 e3                                      bic r7, r7, #0xff00
00600078  ff 6c 06 e2                                      and r6, r6, #0xff00
0060007c  00 80 a0 e3                                      mov r8, #0
00600080  00 00 51 e3                                      cmp r1, #0
00600084  00 30 a0 13                                      movne r3, #0
00600088  03 20 a0 11                                      movne r2, r3
0060008c  15 00 00 0a                                      beq #0x6000e8
00600090  03 10 94 e7                                      ldr r1, [r4, r3]
00600094  01 20 82 e2                                      add r2, r2, #1
00600098  ff c4 c1 e3                                      bic ip, r1, #0xff000000
0060009c  ff cc cc e3                                      bic ip, ip, #0xff00
006000a0  ff 1c 01 e2                                      and r1, r1, #0xff00
006000a4  07 90 6c e0                                      rsb sb, ip, r7
006000a8  06 a0 61 e0                                      rsb sl, r1, r6
006000ac  95 09 09 e0                                      mul sb, r5, sb
006000b0  95 0a 0a e0                                      mul sl, r5, sl
006000b4  29 c4 8c e0                                      add ip, ip, sb, lsr #8
006000b8  2a 14 81 e0                                      add r1, r1, sl, lsr #8
006000bc  ff c4 cc e3                                      bic ip, ip, #0xff000000
006000c0  ff cc cc e3                                      bic ip, ip, #0xff00
006000c4  ff 1c 01 e2                                      and r1, r1, #0xff00
006000c8  01 10 8c e1                                      orr r1, ip, r1
006000cc  ff 14 81 e3                                      orr r1, r1, #0xff000000
006000d0  03 10 84 e7                                      str r1, [r4, r3]
006000d4  34 10 90 e5                                      ldr r1, [r0, #0x34]
006000d8  04 30 83 e2                                      add r3, r3, #4
006000dc  02 00 51 e1                                      cmp r1, r2
006000e0  ea ff ff 1a                                      bne #0x600090
006000e4  38 30 90 e5                                      ldr r3, [r0, #0x38]
006000e8  01 80 88 e2                                      add r8, r8, #1
006000ec  08 00 53 e1                                      cmp r3, r8
006000f0  40 20 90 e5                                      ldr r2, [r0, #0x40]
006000f4  02 40 84 10                                      addne r4, r4, r2
006000f8  e0 ff ff 1a                                      bne #0x600080
006000fc  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
00600100  1e ff 2f e1                                      bx lr
