; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00612604, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00612604  70 40 2d e9                                      push {r4, r5, r6, lr}
00612608  00 c0 a0 e3                                      mov ip, #0
0061260c  10 d0 4d e2                                      sub sp, sp, #0x10
00612610  01 40 a0 e1                                      mov r4, r1
00612614  00 10 a0 e3                                      mov r1, #0
00612618  02 50 a0 e1                                      mov r5, r2
0061261c  03 60 a0 e1                                      mov r6, r3
00612620  0c c0 8d e5                                      str ip, [sp, #0xc]
00612624  04 c0 8d e5                                      str ip, [sp, #4]
00612628  08 c0 8d e5                                      str ip, [sp, #8]
0061262c  fc 5d 01 eb                                      bl #0x669e24
00612630  04 20 90 e5                                      ldr r2, [r0, #4]
00612634  84 40 84 e0                                      add r4, r4, r4, lsl #1
00612638  04 c0 8d e2                                      add ip, sp, #4
0061263c  04 30 d2 e7                                      ldrb r3, [r2, r4]
00612640  04 40 82 e0                                      add r4, r2, r4
00612644  05 00 a0 e1                                      mov r0, r5
00612648  04 30 cd e5                                      strb r3, [sp, #4]
0061264c  01 e0 d4 e5                                      ldrb lr, [r4, #1]
00612650  0c 10 a0 e1                                      mov r1, ip
00612654  06 20 a0 e1                                      mov r2, r6
00612658  05 e0 cd e5                                      strb lr, [sp, #5]
0061265c  02 30 d4 e5                                      ldrb r3, [r4, #2]
00612660  02 30 cc e5                                      strb r3, [ip, #2]
00612664  55 ee ff eb                                      bl #0x60dfc0
00612668  10 d0 8d e2                                      add sp, sp, #0x10
0061266c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006127a4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006127a4  10 40 2d e9                                      push {r4, lr}
006127a8  18 d0 4d e2                                      sub sp, sp, #0x18
006127ac  00 c0 a0 e3                                      mov ip, #0
006127b0  0c 40 8d e2                                      add r4, sp, #0xc
006127b4  14 c0 8d e5                                      str ip, [sp, #0x14]
006127b8  0c c0 8d e5                                      str ip, [sp, #0xc]
006127bc  10 c0 8d e5                                      str ip, [sp, #0x10]
006127c0  00 40 8d e5                                      str r4, [sp]
006127c4  bf ff ff eb                                      bl #0x6126c8
006127c8  20 00 9d e5                                      ldr r0, [sp, #0x20]
006127cc  04 10 a0 e1                                      mov r1, r4
006127d0  24 20 9d e5                                      ldr r2, [sp, #0x24]
006127d4  f9 ed ff eb                                      bl #0x60dfc0
006127d8  18 d0 8d e2                                      add sp, sp, #0x18
006127dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00621958, declared_size=264, range_size=264, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621958  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062195c  01 00 52 e3                                      cmp r2, #1
00621960  24 d0 4d e2                                      sub sp, sp, #0x24
00621964  00 80 a0 e3                                      mov r8, #0
00621968  01 40 a0 e1                                      mov r4, r1
0062196c  04 30 8d e5                                      str r3, [sp, #4]
00621970  14 80 8d e5                                      str r8, [sp, #0x14]
00621974  18 80 8d e5                                      str r8, [sp, #0x18]
00621978  1c 80 8d e5                                      str r8, [sp, #0x1c]
0062197c  2e 00 00 0a                                      beq #0x621a3c
00621980  00 00 52 e3                                      cmp r2, #0
00621984  08 80 8d e5                                      str r8, [sp, #8]
00621988  0c 80 8d e5                                      str r8, [sp, #0xc]
0062198c  10 80 8d e5                                      str r8, [sp, #0x10]
00621990  08 00 a0 01                                      moveq r0, r8
00621994  19 00 00 0a                                      beq #0x621a00
00621998  82 20 82 e0                                      add r2, r2, r2, lsl #1
0062199c  00 70 a0 e1                                      mov r7, r0
006219a0  02 b0 80 e0                                      add fp, r0, r2
006219a4  08 a0 8d e2                                      add sl, sp, #8
006219a8  00 90 94 e5                                      ldr sb, [r4]
006219ac  00 50 a0 e3                                      mov r5, #0
006219b0  05 60 a0 e1                                      mov r6, r5
006219b4  06 00 d7 e7                                      ldrb r0, [r7, r6]
006219b8  e9 b3 f3 eb                                      bl #0x30e964
006219bc  09 10 a0 e1                                      mov r1, sb
006219c0  e9 b4 f3 eb                                      bl #0x30ed6c
006219c4  08 10 a0 e1                                      mov r1, r8
006219c8  75 b4 f3 eb                                      bl #0x30eba4
006219cc  05 00 8a e7                                      str r0, [sl, r5]
006219d0  04 50 85 e2                                      add r5, r5, #4
006219d4  0c 00 55 e3                                      cmp r5, #0xc
006219d8  01 60 86 e2                                      add r6, r6, #1
006219dc  05 80 9a 17                                      ldrne r8, [sl, r5]
006219e0  f3 ff ff 1a                                      bne #0x6219b4
006219e4  03 70 87 e2                                      add r7, r7, #3
006219e8  0b 00 57 e1                                      cmp r7, fp
006219ec  02 00 00 0a                                      beq #0x6219fc
006219f0  08 80 9d e5                                      ldr r8, [sp, #8]
006219f4  04 40 84 e2                                      add r4, r4, #4
006219f8  ea ff ff ea                                      b #0x6219a8
006219fc  08 00 9d e5                                      ldr r0, [sp, #8]
00621a00  26 72 0a eb                                      bl #0x8be2a0
00621a04  14 00 cd e5                                      strb r0, [sp, #0x14]
00621a08  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00621a0c  23 72 0a eb                                      bl #0x8be2a0
00621a10  15 00 cd e5                                      strb r0, [sp, #0x15]
00621a14  10 00 9d e5                                      ldr r0, [sp, #0x10]
00621a18  20 72 0a eb                                      bl #0x8be2a0
00621a1c  14 10 8d e2                                      add r1, sp, #0x14
00621a20  01 30 81 e2                                      add r3, r1, #1
00621a24  01 00 c3 e5                                      strb r0, [r3, #1]
00621a28  04 00 9d e5                                      ldr r0, [sp, #4]
00621a2c  48 20 9d e5                                      ldr r2, [sp, #0x48]
00621a30  62 b1 ff eb                                      bl #0x60dfc0
00621a34  24 d0 8d e2                                      add sp, sp, #0x24
00621a38  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00621a3c  00 30 a0 e1                                      mov r3, r0
00621a40  01 c0 d3 e4                                      ldrb ip, [r3], #1
00621a44  01 20 d0 e5                                      ldrb r2, [r0, #1]
00621a48  14 10 8d e2                                      add r1, sp, #0x14
00621a4c  01 30 d3 e5                                      ldrb r3, [r3, #1]
00621a50  14 c0 cd e5                                      strb ip, [sp, #0x14]
00621a54  15 20 cd e5                                      strb r2, [sp, #0x15]
00621a58  02 30 c1 e5                                      strb r3, [r1, #2]
00621a5c  f1 ff ff ea                                      b #0x621a28

; FUNCTION 0x00621a7c, declared_size=264, range_size=264, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621a7c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00621a80  01 00 52 e3                                      cmp r2, #1
00621a84  24 d0 4d e2                                      sub sp, sp, #0x24
00621a88  00 80 a0 e3                                      mov r8, #0
00621a8c  01 40 a0 e1                                      mov r4, r1
00621a90  04 30 8d e5                                      str r3, [sp, #4]
00621a94  14 80 8d e5                                      str r8, [sp, #0x14]
00621a98  18 80 8d e5                                      str r8, [sp, #0x18]
00621a9c  1c 80 8d e5                                      str r8, [sp, #0x1c]
00621aa0  2e 00 00 0a                                      beq #0x621b60
00621aa4  00 00 52 e3                                      cmp r2, #0
00621aa8  08 80 8d e5                                      str r8, [sp, #8]
00621aac  0c 80 8d e5                                      str r8, [sp, #0xc]
00621ab0  10 80 8d e5                                      str r8, [sp, #0x10]
00621ab4  08 00 a0 01                                      moveq r0, r8
00621ab8  19 00 00 0a                                      beq #0x621b24
00621abc  82 20 82 e0                                      add r2, r2, r2, lsl #1
00621ac0  00 70 a0 e1                                      mov r7, r0
00621ac4  02 b0 80 e0                                      add fp, r0, r2
00621ac8  08 a0 8d e2                                      add sl, sp, #8
00621acc  00 90 94 e5                                      ldr sb, [r4]
00621ad0  00 50 a0 e3                                      mov r5, #0
00621ad4  05 60 a0 e1                                      mov r6, r5
00621ad8  06 00 d7 e7                                      ldrb r0, [r7, r6]
00621adc  a0 b3 f3 eb                                      bl #0x30e964
00621ae0  09 10 a0 e1                                      mov r1, sb
00621ae4  a0 b4 f3 eb                                      bl #0x30ed6c
00621ae8  08 10 a0 e1                                      mov r1, r8
00621aec  2c b4 f3 eb                                      bl #0x30eba4
00621af0  05 00 8a e7                                      str r0, [sl, r5]
00621af4  04 50 85 e2                                      add r5, r5, #4
00621af8  0c 00 55 e3                                      cmp r5, #0xc
00621afc  01 60 86 e2                                      add r6, r6, #1
00621b00  05 80 9a 17                                      ldrne r8, [sl, r5]
00621b04  f3 ff ff 1a                                      bne #0x621ad8
00621b08  03 70 87 e2                                      add r7, r7, #3
00621b0c  0b 00 57 e1                                      cmp r7, fp
00621b10  02 00 00 0a                                      beq #0x621b20
00621b14  08 80 9d e5                                      ldr r8, [sp, #8]
00621b18  04 40 84 e2                                      add r4, r4, #4
00621b1c  ea ff ff ea                                      b #0x621acc
00621b20  08 00 9d e5                                      ldr r0, [sp, #8]
00621b24  dd 71 0a eb                                      bl #0x8be2a0
00621b28  14 00 cd e5                                      strb r0, [sp, #0x14]
00621b2c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00621b30  da 71 0a eb                                      bl #0x8be2a0
00621b34  15 00 cd e5                                      strb r0, [sp, #0x15]
00621b38  10 00 9d e5                                      ldr r0, [sp, #0x10]
00621b3c  d7 71 0a eb                                      bl #0x8be2a0
00621b40  14 10 8d e2                                      add r1, sp, #0x14
00621b44  01 30 81 e2                                      add r3, r1, #1
00621b48  01 00 c3 e5                                      strb r0, [r3, #1]
00621b4c  04 00 9d e5                                      ldr r0, [sp, #4]
00621b50  48 20 9d e5                                      ldr r2, [sp, #0x48]
00621b54  19 b1 ff eb                                      bl #0x60dfc0
00621b58  24 d0 8d e2                                      add sp, sp, #0x24
00621b5c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00621b60  00 30 a0 e1                                      mov r3, r0
00621b64  01 c0 d3 e4                                      ldrb ip, [r3], #1
00621b68  01 20 d0 e5                                      ldrb r2, [r0, #1]
00621b6c  14 10 8d e2                                      add r1, sp, #0x14
00621b70  01 30 d3 e5                                      ldrb r3, [r3, #1]
00621b74  14 c0 cd e5                                      strb ip, [sp, #0x14]
00621b78  15 20 cd e5                                      strb r2, [sp, #0x15]
00621b7c  02 30 c1 e5                                      strb r3, [r1, #2]
00621b80  f1 ff ff ea                                      b #0x621b4c
