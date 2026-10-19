; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cef08, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZNK6glitch5video17CMaterialRenderer14getParameterIDENS0_23E_SHADER_PARAMETER_TYPEEt
; demangled: glitch::video::CMaterialRenderer::getParameterID(glitch::video::E_SHADER_PARAMETER_TYPE, unsigned short) const
; decoder-mode: arm
005cef08  04 40 2d e5                                      str r4, [sp, #-4]!
005cef0c  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
005cef10  00 c0 a0 e1                                      mov ip, r0
005cef14  03 00 52 e1                                      cmp r2, r3
005cef18  0e 00 00 2a                                      bhs #0x5cef58
005cef1c  02 00 a0 e1                                      mov r0, r2
005cef20  02 00 00 ea                                      b #0x5cef30
005cef24  74 00 ff e6                                      uxth r0, r4
005cef28  03 00 50 e1                                      cmp r0, r3
005cef2c  09 00 00 2a                                      bhs #0x5cef58
005cef30  00 00 53 e1                                      cmp r3, r0
005cef34  20 20 9c 85                                      ldrhi r2, [ip, #0x20]
005cef38  00 20 a0 93                                      movls r2, #0
005cef3c  01 40 80 e2                                      add r4, r0, #1
005cef40  00 22 82 80                                      addhi r2, r2, r0, lsl #4
005cef44  b4 20 d2 e1                                      ldrh r2, [r2, #4]
005cef48  02 00 51 e1                                      cmp r1, r2
005cef4c  f4 ff ff 1a                                      bne #0x5cef24
005cef50  10 00 bd e8                                      ldm sp!, {r4}
005cef54  1e ff 2f e1                                      bx lr
005cef58  ff 0f 0f e3                                      movw r0, #0xffff
005cef5c  fb ff ff ea                                      b #0x5cef50

; FUNCTION 0x005d3034, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZN6glitch5video17CMaterialRenderer14setRenderStateEhhRKNS0_6detail10renderpass12SRenderStateE
; demangled: glitch::video::CMaterialRenderer::setRenderState(unsigned char, unsigned char, glitch::video::detail::renderpass::SRenderState const&)
; decoder-mode: arm
005d3034  70 40 2d e9                                      push {r4, r5, r6, lr}
005d3038  18 00 90 e5                                      ldr r0, [r0, #0x18]
005d303c  0c c0 a0 e3                                      mov ip, #0xc
005d3040  03 50 a0 e1                                      mov r5, r3
005d3044  9c 01 20 e0                                      mla r0, ip, r1, r0
005d3048  34 40 a0 e3                                      mov r4, #0x34
005d304c  08 30 90 e5                                      ldr r3, [r0, #8]
005d3050  05 10 a0 e1                                      mov r1, r5
005d3054  94 32 24 e0                                      mla r4, r4, r2, r3
005d3058  20 20 a0 e3                                      mov r2, #0x20
005d305c  04 00 a0 e1                                      mov r0, r4
005d3060  5e ed f4 eb                                      bl #0x30e5e0
005d3064  00 00 50 e3                                      cmp r0, #0
005d3068  06 00 00 0a                                      beq #0x5d3088
005d306c  04 c0 a0 e1                                      mov ip, r4
005d3070  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
005d3074  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005d3078  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005d307c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005d3080  01 30 a0 e3                                      mov r3, #1
005d3084  30 30 c4 e5                                      strb r3, [r4, #0x30]
005d3088  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d308c, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZNK6glitch5video17CMaterialRenderer14getParameterIDEPKct
; demangled: glitch::video::CMaterialRenderer::getParameterID(char const*, unsigned short) const
; decoder-mode: arm
005d308c  70 40 2d e9                                      push {r4, r5, r6, lr}
005d3090  00 40 a0 e1                                      mov r4, r0
005d3094  01 00 a0 e1                                      mov r0, r1
005d3098  00 10 a0 e3                                      mov r1, #0
005d309c  02 50 a0 e1                                      mov r5, r2
005d30a0  f3 47 03 eb                                      bl #0x6a5074
005d30a4  00 00 50 e3                                      cmp r0, #0
005d30a8  ff 5f 0f 03                                      movweq r5, #0xffff
005d30ac  15 00 00 0a                                      beq #0x5d3108
005d30b0  00 60 90 e5                                      ldr r6, [r0]
005d30b4  00 10 a0 e1                                      mov r1, r0
005d30b8  01 60 86 e2                                      add r6, r6, #1
005d30bc  04 60 81 e4                                      str r6, [r1], #4
005d30c0  be c0 d4 e1                                      ldrh ip, [r4, #0xe]
005d30c4  0c 00 55 e1                                      cmp r5, ip
005d30c8  13 00 00 2a                                      bhs #0x5d311c
005d30cc  20 40 94 e5                                      ldr r4, [r4, #0x20]
005d30d0  02 00 00 ea                                      b #0x5d30e0
005d30d4  72 50 ff e6                                      uxth r5, r2
005d30d8  0c 00 55 e1                                      cmp r5, ip
005d30dc  0e 00 00 2a                                      bhs #0x5d311c
005d30e0  05 32 94 e7                                      ldr r3, [r4, r5, lsl #4]
005d30e4  01 20 85 e2                                      add r2, r5, #1
005d30e8  00 00 53 e3                                      cmp r3, #0
005d30ec  04 30 83 12                                      addne r3, r3, #4
005d30f0  03 00 51 e1                                      cmp r1, r3
005d30f4  f6 ff ff 1a                                      bne #0x5d30d4
005d30f8  01 60 46 e2                                      sub r6, r6, #1
005d30fc  00 00 56 e3                                      cmp r6, #0
005d3100  00 60 80 e5                                      str r6, [r0]
005d3104  01 00 00 0a                                      beq #0x5d3110
005d3108  05 00 a0 e1                                      mov r0, r5
005d310c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d3110  21 47 03 eb                                      bl #0x6a4d9c
005d3114  05 00 a0 e1                                      mov r0, r5
005d3118  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d311c  ff 5f 0f e3                                      movw r5, #0xffff
005d3120  f4 ff ff ea                                      b #0x5d30f8

; FUNCTION 0x005d3124, declared_size=1448, range_size=1448, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZN6glitch5video17CMaterialRendererC1EPNS0_12IVideoDriverEtPKcRKNS0_6detail25material_renderer_manager14STechniqueListEttPKPKNS0_19SShaderParameterDefEjtPKt
; demangled: glitch::video::CMaterialRenderer::CMaterialRenderer(glitch::video::IVideoDriver*, unsigned short, char const*, glitch::video::detail::material_renderer_manager::STechniqueList const&, unsigned short, unsigned short, glitch::video::SShaderParameterDef const* const*, unsigned int, unsigned short, unsigned short const*)
; decoder-mode: arm
005d3124  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d3128  4c d0 4d e2                                      sub sp, sp, #0x4c
005d312c  b8 57 dd e1                                      ldrh r5, [sp, #0x78]
005d3130  20 10 8d e5                                      str r1, [sp, #0x20]
005d3134  00 10 a0 e3                                      mov r1, #0
005d3138  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005d313c  34 00 8d e5                                      str r0, [sp, #0x34]
005d3140  3c 50 8d e5                                      str r5, [sp, #0x3c]
005d3144  bc 20 c0 e1                                      strh r2, [r0, #0xc]
005d3148  00 10 80 e5                                      str r1, [r0]
005d314c  20 60 9d e5                                      ldr r6, [sp, #0x20]
005d3150  08 10 80 e5                                      str r1, [r0, #8]
005d3154  be 50 c0 e1                                      strh r5, [r0, #0xe]
005d3158  04 60 80 e5                                      str r6, [r0, #4]
005d315c  00 e0 9c e5                                      ldr lr, [ip]
005d3160  b4 28 dd e1                                      ldrh r2, [sp, #0x84]
005d3164  44 30 8d e5                                      str r3, [sp, #0x44]
005d3168  0c 00 5e e1                                      cmp lr, ip
005d316c  38 e0 8d e5                                      str lr, [sp, #0x38]
005d3170  80 00 9d e5                                      ldr r0, [sp, #0x80]
005d3174  b4 47 dd e1                                      ldrh r4, [sp, #0x74]
005d3178  40 20 8d e5                                      str r2, [sp, #0x40]
005d317c  05 00 00 0a                                      beq #0x5d3198
005d3180  0e 30 a0 e1                                      mov r3, lr
005d3184  00 30 93 e5                                      ldr r3, [r3]
005d3188  01 10 81 e2                                      add r1, r1, #1
005d318c  03 00 5c e1                                      cmp ip, r3
005d3190  fb ff ff 1a                                      bne #0x5d3184
005d3194  38 30 8d e5                                      str r3, [sp, #0x38]
005d3198  34 30 9d e5                                      ldr r3, [sp, #0x34]
005d319c  71 e0 ef e6                                      uxtb lr, r1
005d31a0  0c 20 a0 e3                                      mov r2, #0xc
005d31a4  28 10 83 e2                                      add r1, r3, #0x28
005d31a8  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005d31ac  92 1e 22 e0                                      mla r2, r2, lr, r1
005d31b0  40 50 9d e5                                      ldr r5, [sp, #0x40]
005d31b4  06 32 82 e0                                      add r3, r2, r6, lsl #4
005d31b8  34 60 9d e5                                      ldr r6, [sp, #0x34]
005d31bc  00 00 55 e3                                      cmp r5, #0
005d31c0  00 50 83 e0                                      add r5, r3, r0
005d31c4  28 50 8d e5                                      str r5, [sp, #0x28]
005d31c8  01 50 a0 e3                                      mov r5, #1
005d31cc  24 30 86 e5                                      str r3, [r6, #0x24]
005d31d0  11 50 c6 e5                                      strb r5, [r6, #0x11]
005d31d4  10 e0 c6 e5                                      strb lr, [r6, #0x10]
005d31d8  14 00 86 e5                                      str r0, [r6, #0x14]
005d31dc  18 10 86 e5                                      str r1, [r6, #0x18]
005d31e0  20 20 86 e5                                      str r2, [r6, #0x20]
005d31e4  28 e0 9d e5                                      ldr lr, [sp, #0x28]
005d31e8  34 30 a0 13                                      movne r3, #0x34
005d31ec  1c e0 86 e5                                      str lr, [r6, #0x1c]
005d31f0  28 10 9d 15                                      ldrne r1, [sp, #0x28]
005d31f4  40 00 9d 05                                      ldreq r0, [sp, #0x40]
005d31f8  38 20 9d e5                                      ldr r2, [sp, #0x38]
005d31fc  93 14 23 10                                      mlane r3, r3, r4, r1
005d3200  10 00 8d 05                                      streq r0, [sp, #0x10]
005d3204  10 30 8d 15                                      strne r3, [sp, #0x10]
005d3208  00 c0 9c e5                                      ldr ip, [ip]
005d320c  02 00 5c e1                                      cmp ip, r2
005d3210  24 c0 8d e5                                      str ip, [sp, #0x24]
005d3214  ed 00 00 0a                                      beq #0x5d35d0
005d3218  34 30 9d e5                                      ldr r3, [sp, #0x34]
005d321c  30 30 8d e5                                      str r3, [sp, #0x30]
005d3220  24 50 9d e5                                      ldr r5, [sp, #0x24]
005d3224  0c 30 d5 e5                                      ldrb r3, [r5, #0xc]
005d3228  00 00 53 e3                                      cmp r3, #0
005d322c  cf 00 00 0a                                      beq #0x5d3570
005d3230  01 30 43 e2                                      sub r3, r3, #1
005d3234  73 30 ef e6                                      uxtb r3, r3
005d3238  34 60 a0 e3                                      mov r6, #0x34
005d323c  93 66 23 e0                                      mla r3, r3, r6, r6
005d3240  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005d3244  00 e0 a0 e3                                      mov lr, #0
005d3248  2c 30 8d e5                                      str r3, [sp, #0x2c]
005d324c  00 c0 8d e5                                      str ip, [sp]
005d3250  08 e0 8d e5                                      str lr, [sp, #8]
005d3254  24 00 9d e5                                      ldr r0, [sp, #0x24]
005d3258  08 10 9d e5                                      ldr r1, [sp, #8]
005d325c  10 40 90 e5                                      ldr r4, [r0, #0x10]
005d3260  01 40 84 e0                                      add r4, r4, r1
005d3264  24 a0 94 e5                                      ldr sl, [r4, #0x24]
005d3268  20 30 94 e5                                      ldr r3, [r4, #0x20]
005d326c  00 00 5a e3                                      cmp sl, #0
005d3270  b4 23 d3 e1                                      ldrh r2, [r3, #0x34]
005d3274  be 02 d3 e1                                      ldrh r0, [r3, #0x2e]
005d3278  bc 12 d3 e1                                      ldrh r1, [r3, #0x2c]
005d327c  0a 60 a0 01                                      moveq r6, sl
005d3280  b6 33 d3 e1                                      ldrh r3, [r3, #0x36]
005d3284  0c a0 8d 05                                      streq sl, [sp, #0xc]
005d3288  04 a0 8d 05                                      streq sl, [sp, #4]
005d328c  95 00 00 0a                                      beq #0x5d34e8
005d3290  00 30 83 e0                                      add r3, r3, r0
005d3294  73 30 ff e6                                      uxth r3, r3
005d3298  03 30 61 e0                                      rsb r3, r1, r3
005d329c  03 30 62 e0                                      rsb r3, r2, r3
005d32a0  73 30 ff e6                                      uxth r3, r3
005d32a4  10 00 9d e5                                      ldr r0, [sp, #0x10]
005d32a8  83 20 a0 e1                                      lsl r2, r3, #1
005d32ac  88 10 9d e5                                      ldr r1, [sp, #0x88]
005d32b0  1c 30 8d e5                                      str r3, [sp, #0x1c]
005d32b4  14 20 8d e5                                      str r2, [sp, #0x14]
005d32b8  6a ed f4 eb                                      bl #0x30e868
005d32bc  14 50 9d e5                                      ldr r5, [sp, #0x14]
005d32c0  10 30 9d e5                                      ldr r3, [sp, #0x10]
005d32c4  10 90 9d e5                                      ldr sb, [sp, #0x10]
005d32c8  05 30 83 e0                                      add r3, r3, r5
005d32cc  04 30 8d e5                                      str r3, [sp, #4]
005d32d0  03 50 a0 e1                                      mov r5, r3
005d32d4  00 30 a0 e3                                      mov r3, #0
005d32d8  03 b0 a0 e1                                      mov fp, r3
005d32dc  04 30 a0 e1                                      mov r3, r4
005d32e0  20 20 93 e5                                      ldr r2, [r3, #0x20]
005d32e4  05 10 8b e2                                      add r1, fp, #5
005d32e8  81 11 82 e0                                      add r1, r2, r1, lsl #3
005d32ec  b4 20 d1 e1                                      ldrh r2, [r1, #4]
005d32f0  b6 80 d1 e1                                      ldrh r8, [r1, #6]
005d32f4  02 00 58 e1                                      cmp r8, r2
005d32f8  27 00 00 9a                                      bls #0x5d339c
005d32fc  8b a7 a0 e1                                      lsl sl, fp, #0xf
005d3300  00 70 a0 e3                                      mov r7, #0
005d3304  7a a0 ff e6                                      uxth sl, sl
005d3308  02 60 a0 e1                                      mov r6, r2
005d330c  07 40 a0 e1                                      mov r4, r7
005d3310  0c 20 8d e5                                      str r2, [sp, #0xc]
005d3314  18 30 8d e5                                      str r3, [sp, #0x18]
005d3318  05 00 00 ea                                      b #0x5d3334
005d331c  01 60 86 e2                                      add r6, r6, #1
005d3320  76 60 ff e6                                      uxth r6, r6
005d3324  08 00 56 e1                                      cmp r6, r8
005d3328  04 40 84 e2                                      add r4, r4, #4
005d332c  02 70 87 e2                                      add r7, r7, #2
005d3330  11 00 00 2a                                      bhs #0x5d337c
005d3334  b7 10 99 e1                                      ldrh r1, [sb, r7]
005d3338  06 30 8a e1                                      orr r3, sl, r6
005d333c  04 20 85 e0                                      add r2, r5, r4
005d3340  02 09 11 e3                                      tst r1, #0x8000
005d3344  b2 10 c2 e1                                      strh r1, [r2, #2]
005d3348  b4 30 85 e1                                      strh r3, [r5, r4]
005d334c  f2 ff ff 0a                                      beq #0x5d331c
005d3350  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005d3354  81 18 a0 e1                                      lsl r1, r1, #0x11
005d3358  01 60 86 e2                                      add r6, r6, #1
005d335c  e4 00 9c e5                                      ldr r0, [ip, #0xe4]
005d3360  a1 18 a0 e1                                      lsr r1, r1, #0x11
005d3364  76 60 ff e6                                      uxth r6, r6
005d3368  6f 9a ff eb                                      bl #0x5b9d2c
005d336c  08 00 56 e1                                      cmp r6, r8
005d3370  04 40 84 e2                                      add r4, r4, #4
005d3374  02 70 87 e2                                      add r7, r7, #2
005d3378  ed ff ff 3a                                      blo #0x5d3334
005d337c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005d3380  18 30 9d e5                                      ldr r3, [sp, #0x18]
005d3384  02 20 e0 e1                                      mvn r2, r2
005d3388  02 20 88 e0                                      add r2, r8, r2
005d338c  72 20 ff e6                                      uxth r2, r2
005d3390  01 20 82 e2                                      add r2, r2, #1
005d3394  82 90 89 e0                                      add sb, sb, r2, lsl #1
005d3398  02 51 85 e0                                      add r5, r5, r2, lsl #2
005d339c  01 b0 8b e2                                      add fp, fp, #1
005d33a0  02 00 5b e3                                      cmp fp, #2
005d33a4  cd ff ff 1a                                      bne #0x5d32e0
005d33a8  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
005d33ac  03 40 a0 e1                                      mov r4, r3
005d33b0  0e b1 a0 e1                                      lsl fp, lr, #2
005d33b4  0b 00 a0 e1                                      mov r0, fp
005d33b8  8d 84 fd eb                                      bl #0x5345f4
005d33bc  00 80 a0 e1                                      mov r8, r0
005d33c0  04 00 9d e5                                      ldr r0, [sp, #4]
005d33c4  0b 10 80 e0                                      add r1, r0, fp
005d33c8  01 00 50 e1                                      cmp r0, r1
005d33cc  0b b0 88 e0                                      add fp, r8, fp
005d33d0  b7 00 00 0a                                      beq #0x5d36b4
005d33d4  04 70 9d e5                                      ldr r7, [sp, #4]
005d33d8  0b 20 a0 e1                                      mov r2, fp
005d33dc  08 a0 a0 e1                                      mov sl, r8
005d33e0  07 30 a0 e1                                      mov r3, r7
005d33e4  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
005d33e8  09 00 00 ea                                      b #0x5d3414
005d33ec  12 00 50 e3                                      cmp r0, #0x12
005d33f0  0f 00 00 0a                                      beq #0x5d3434
005d33f4  b0 00 d3 e1                                      ldrh r0, [r3]
005d33f8  b0 00 c7 e1                                      strh r0, [r7]
005d33fc  b2 60 d3 e1                                      ldrh r6, [r3, #2]
005d3400  b2 60 c7 e1                                      strh r6, [r7, #2]
005d3404  04 70 87 e2                                      add r7, r7, #4
005d3408  04 30 83 e2                                      add r3, r3, #4
005d340c  03 00 51 e1                                      cmp r1, r3
005d3410  0f 00 00 0a                                      beq #0x5d3454
005d3414  b2 00 d3 e1                                      ldrh r0, [r3, #2]
005d3418  02 09 10 e3                                      tst r0, #0x8000
005d341c  9d 00 00 1a                                      bne #0x5d3698
005d3420  00 01 9c e7                                      ldr r0, [ip, r0, lsl #2]
005d3424  b4 00 d0 e1                                      ldrh r0, [r0, #4]
005d3428  02 00 50 e3                                      cmp r0, #2
005d342c  21 00 50 13                                      cmpne r0, #0x21
005d3430  ed ff ff 1a                                      bne #0x5d33ec
005d3434  b0 60 d3 e1                                      ldrh r6, [r3]
005d3438  b0 60 ca e1                                      strh r6, [sl]
005d343c  b2 e0 d3 e1                                      ldrh lr, [r3, #2]
005d3440  04 30 83 e2                                      add r3, r3, #4
005d3444  03 00 51 e1                                      cmp r1, r3
005d3448  b2 e0 ca e1                                      strh lr, [sl, #2]
005d344c  04 a0 8a e2                                      add sl, sl, #4
005d3450  ef ff ff 1a                                      bne #0x5d3414
005d3454  04 c0 9d e5                                      ldr ip, [sp, #4]
005d3458  0a a0 68 e0                                      rsb sl, r8, sl
005d345c  02 60 6b e0                                      rsb r6, fp, r2
005d3460  07 30 6c e0                                      rsb r3, ip, r7
005d3464  5a a1 ef e7                                      ubfx sl, sl, #2, #0x10
005d3468  46 61 a0 e1                                      asr r6, r6, #2
005d346c  53 31 ef e7                                      ubfx r3, r3, #2, #0x10
005d3470  0c 30 8d e5                                      str r3, [sp, #0xc]
005d3474  00 60 66 e2                                      rsb r6, r6, #0
005d3478  0a 91 a0 e1                                      lsl sb, sl, #2
005d347c  07 00 a0 e1                                      mov r0, r7
005d3480  08 10 a0 e1                                      mov r1, r8
005d3484  09 20 a0 e1                                      mov r2, sb
005d3488  f6 ec f4 eb                                      bl #0x30e868
005d348c  00 00 56 e3                                      cmp r6, #0
005d3490  08 00 00 da                                      ble #0x5d34b8
005d3494  09 70 87 e0                                      add r7, r7, sb
005d3498  b4 e0 5b e1                                      ldrh lr, [fp, #-4]
005d349c  01 60 56 e2                                      subs r6, r6, #1
005d34a0  b0 e0 c7 e1                                      strh lr, [r7]
005d34a4  b2 00 5b e1                                      ldrh r0, [fp, #-2]
005d34a8  04 b0 4b e2                                      sub fp, fp, #4
005d34ac  b2 00 c7 e1                                      strh r0, [r7, #2]
005d34b0  04 70 87 e2                                      add r7, r7, #4
005d34b4  f7 ff ff 1a                                      bne #0x5d3498
005d34b8  88 10 9d e5                                      ldr r1, [sp, #0x88]
005d34bc  14 20 9d e5                                      ldr r2, [sp, #0x14]
005d34c0  00 00 58 e3                                      cmp r8, #0
005d34c4  02 10 81 e0                                      add r1, r1, r2
005d34c8  88 10 8d e5                                      str r1, [sp, #0x88]
005d34cc  01 00 00 0a                                      beq #0x5d34d8
005d34d0  08 00 a0 e1                                      mov r0, r8
005d34d4  6b 84 fd eb                                      bl #0x534688
005d34d8  24 60 94 e5                                      ldr r6, [r4, #0x24]
005d34dc  00 00 56 e3                                      cmp r6, #0
005d34e0  10 60 9d 15                                      ldrne r6, [sp, #0x10]
005d34e4  10 50 8d e5                                      str r5, [sp, #0x10]
005d34e8  08 50 9d e5                                      ldr r5, [sp, #8]
005d34ec  28 30 9d e5                                      ldr r3, [sp, #0x28]
005d34f0  04 e0 a0 e1                                      mov lr, r4
005d34f4  05 c0 83 e0                                      add ip, r3, r5
005d34f8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005d34fc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005d3500  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
005d3504  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005d3508  20 30 94 e5                                      ldr r3, [r4, #0x20]
005d350c  00 c0 9d e5                                      ldr ip, [sp]
005d3510  01 50 a0 e3                                      mov r5, #1
005d3514  00 00 53 e3                                      cmp r3, #0
005d3518  20 30 8c e5                                      str r3, [ip, #0x20]
005d351c  04 20 93 15                                      ldrne r2, [r3, #4]
005d3520  01 20 82 12                                      addne r2, r2, #1
005d3524  04 20 83 15                                      strne r2, [r3, #4]
005d3528  08 e0 9d e5                                      ldr lr, [sp, #8]
005d352c  00 10 9d e5                                      ldr r1, [sp]
005d3530  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005d3534  34 e0 8e e2                                      add lr, lr, #0x34
005d3538  08 e0 8d e5                                      str lr, [sp, #8]
005d353c  24 60 81 e5                                      str r6, [r1, #0x24]
005d3540  04 20 9d e5                                      ldr r2, [sp, #4]
005d3544  00 00 5e e1                                      cmp lr, r0
005d3548  28 20 81 e5                                      str r2, [r1, #0x28]
005d354c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005d3550  be a2 c1 e1                                      strh sl, [r1, #0x2e]
005d3554  bc 32 c1 e1                                      strh r3, [r1, #0x2c]
005d3558  30 50 c1 e5                                      strb r5, [r1, #0x30]
005d355c  34 10 81 e2                                      add r1, r1, #0x34
005d3560  00 10 8d e5                                      str r1, [sp]
005d3564  3a ff ff 1a                                      bne #0x5d3254
005d3568  24 60 9d e5                                      ldr r6, [sp, #0x24]
005d356c  0c 30 d6 e5                                      ldrb r3, [r6, #0xc]
005d3570  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005d3574  30 e0 9d e5                                      ldr lr, [sp, #0x30]
005d3578  34 60 a0 e3                                      mov r6, #0x34
005d357c  08 20 9c e5                                      ldr r2, [ip, #8]
005d3580  28 20 8e e5                                      str r2, [lr, #0x28]
005d3584  00 00 52 e3                                      cmp r2, #0
005d3588  00 10 92 15                                      ldrne r1, [r2]
005d358c  01 10 81 12                                      addne r1, r1, #1
005d3590  00 10 82 15                                      strne r1, [r2]
005d3594  30 00 9d e5                                      ldr r0, [sp, #0x30]
005d3598  2c 30 c0 e5                                      strb r3, [r0, #0x2c]
005d359c  28 10 9d e5                                      ldr r1, [sp, #0x28]
005d35a0  30 10 80 e5                                      str r1, [r0, #0x30]
005d35a4  24 20 9d e5                                      ldr r2, [sp, #0x24]
005d35a8  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005d35ac  0c 00 80 e2                                      add r0, r0, #0xc
005d35b0  0c 30 d2 e5                                      ldrb r3, [r2, #0xc]
005d35b4  00 50 92 e5                                      ldr r5, [r2]
005d35b8  30 00 8d e5                                      str r0, [sp, #0x30]
005d35bc  96 13 21 e0                                      mla r1, r6, r3, r1
005d35c0  0c 00 55 e1                                      cmp r5, ip
005d35c4  24 50 8d e5                                      str r5, [sp, #0x24]
005d35c8  28 10 8d e5                                      str r1, [sp, #0x28]
005d35cc  13 ff ff 1a                                      bne #0x5d3220
005d35d0  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005d35d4  34 e0 9d e5                                      ldr lr, [sp, #0x34]
005d35d8  00 00 5c e3                                      cmp ip, #0
005d35dc  20 30 9e e5                                      ldr r3, [lr, #0x20]
005d35e0  17 00 00 da                                      ble #0x5d3644
005d35e4  7c e0 9d e5                                      ldr lr, [sp, #0x7c]
005d35e8  10 30 83 e2                                      add r3, r3, #0x10
005d35ec  00 00 a0 e3                                      mov r0, #0
005d35f0  00 20 9e e7                                      ldr r2, [lr, r0]
005d35f4  04 00 80 e2                                      add r0, r0, #4
005d35f8  00 10 92 e5                                      ldr r1, [r2]
005d35fc  10 10 03 e5                                      str r1, [r3, #-0x10]
005d3600  00 00 51 e3                                      cmp r1, #0
005d3604  00 40 91 15                                      ldrne r4, [r1]
005d3608  01 40 84 12                                      addne r4, r4, #1
005d360c  00 40 81 15                                      strne r4, [r1]
005d3610  b4 10 d2 e1                                      ldrh r1, [r2, #4]
005d3614  01 c0 5c e2                                      subs ip, ip, #1
005d3618  bc 10 43 e1                                      strh r1, [r3, #-0xc]
005d361c  06 10 d2 e5                                      ldrb r1, [r2, #6]
005d3620  0a 10 43 e5                                      strb r1, [r3, #-0xa]
005d3624  07 10 d2 e5                                      ldrb r1, [r2, #7]
005d3628  09 10 43 e5                                      strb r1, [r3, #-9]
005d362c  08 10 92 e5                                      ldr r1, [r2, #8]
005d3630  08 10 03 e5                                      str r1, [r3, #-8]
005d3634  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005d3638  04 20 03 e5                                      str r2, [r3, #-4]
005d363c  10 30 83 e2                                      add r3, r3, #0x10
005d3640  ea ff ff 1a                                      bne #0x5d35f0
005d3644  34 30 9d e5                                      ldr r3, [sp, #0x34]
005d3648  14 20 93 e5                                      ldr r2, [r3, #0x14]
005d364c  00 00 52 e3                                      cmp r2, #0
005d3650  02 00 00 0a                                      beq #0x5d3660
005d3654  24 00 93 e5                                      ldr r0, [r3, #0x24]
005d3658  00 10 a0 e3                                      mov r1, #0
005d365c  7f eb f4 eb                                      bl #0x30e460
005d3660  40 50 9d e5                                      ldr r5, [sp, #0x40]
005d3664  03 00 a0 e3                                      mov r0, #3
005d3668  28 60 9d e5                                      ldr r6, [sp, #0x28]
005d366c  90 05 00 e0                                      mul r0, r0, r5
005d3670  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005d3674  01 00 80 e2                                      add r0, r0, #1
005d3678  c0 00 a0 e1                                      asr r0, r0, #1
005d367c  44 10 9d e5                                      ldr r1, [sp, #0x44]
005d3680  00 01 86 e0                                      add r0, r6, r0, lsl #2
005d3684  08 00 8c e5                                      str r0, [ip, #8]
005d3688  a4 eb f4 eb                                      bl #0x30e520
005d368c  34 00 9d e5                                      ldr r0, [sp, #0x34]
005d3690  4c d0 8d e2                                      add sp, sp, #0x4c
005d3694  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d3698  b0 e0 d3 e1                                      ldrh lr, [r3]
005d369c  80 08 a0 e1                                      lsl r0, r0, #0x11
005d36a0  04 20 42 e2                                      sub r2, r2, #4
005d36a4  a0 08 a0 e1                                      lsr r0, r0, #0x11
005d36a8  b2 00 c2 e1                                      strh r0, [r2, #2]
005d36ac  b0 e0 c2 e1                                      strh lr, [r2]
005d36b0  54 ff ff ea                                      b #0x5d3408
005d36b4  00 60 a0 e3                                      mov r6, #0
005d36b8  00 70 a0 e1                                      mov r7, r0
005d36bc  06 90 a0 e1                                      mov sb, r6
005d36c0  06 a0 a0 e1                                      mov sl, r6
005d36c4  0c 60 8d e5                                      str r6, [sp, #0xc]
005d36c8  6b ff ff ea                                      b #0x5d347c

; FUNCTION 0x005d36cc, declared_size=1448, range_size=1448, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZN6glitch5video17CMaterialRendererC2EPNS0_12IVideoDriverEtPKcRKNS0_6detail25material_renderer_manager14STechniqueListEttPKPKNS0_19SShaderParameterDefEjtPKt
; demangled: glitch::video::CMaterialRenderer::CMaterialRenderer(glitch::video::IVideoDriver*, unsigned short, char const*, glitch::video::detail::material_renderer_manager::STechniqueList const&, unsigned short, unsigned short, glitch::video::SShaderParameterDef const* const*, unsigned int, unsigned short, unsigned short const*)
; decoder-mode: arm
005d36cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d36d0  4c d0 4d e2                                      sub sp, sp, #0x4c
005d36d4  b8 57 dd e1                                      ldrh r5, [sp, #0x78]
005d36d8  20 10 8d e5                                      str r1, [sp, #0x20]
005d36dc  00 10 a0 e3                                      mov r1, #0
005d36e0  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005d36e4  34 00 8d e5                                      str r0, [sp, #0x34]
005d36e8  3c 50 8d e5                                      str r5, [sp, #0x3c]
005d36ec  bc 20 c0 e1                                      strh r2, [r0, #0xc]
005d36f0  00 10 80 e5                                      str r1, [r0]
005d36f4  20 60 9d e5                                      ldr r6, [sp, #0x20]
005d36f8  08 10 80 e5                                      str r1, [r0, #8]
005d36fc  be 50 c0 e1                                      strh r5, [r0, #0xe]
005d3700  04 60 80 e5                                      str r6, [r0, #4]
005d3704  00 e0 9c e5                                      ldr lr, [ip]
005d3708  b4 28 dd e1                                      ldrh r2, [sp, #0x84]
005d370c  44 30 8d e5                                      str r3, [sp, #0x44]
005d3710  0c 00 5e e1                                      cmp lr, ip
005d3714  38 e0 8d e5                                      str lr, [sp, #0x38]
005d3718  80 00 9d e5                                      ldr r0, [sp, #0x80]
005d371c  b4 47 dd e1                                      ldrh r4, [sp, #0x74]
005d3720  40 20 8d e5                                      str r2, [sp, #0x40]
005d3724  05 00 00 0a                                      beq #0x5d3740
005d3728  0e 30 a0 e1                                      mov r3, lr
005d372c  00 30 93 e5                                      ldr r3, [r3]
005d3730  01 10 81 e2                                      add r1, r1, #1
005d3734  03 00 5c e1                                      cmp ip, r3
005d3738  fb ff ff 1a                                      bne #0x5d372c
005d373c  38 30 8d e5                                      str r3, [sp, #0x38]
005d3740  34 30 9d e5                                      ldr r3, [sp, #0x34]
005d3744  71 e0 ef e6                                      uxtb lr, r1
005d3748  0c 20 a0 e3                                      mov r2, #0xc
005d374c  28 10 83 e2                                      add r1, r3, #0x28
005d3750  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
005d3754  92 1e 22 e0                                      mla r2, r2, lr, r1
005d3758  40 50 9d e5                                      ldr r5, [sp, #0x40]
005d375c  06 32 82 e0                                      add r3, r2, r6, lsl #4
005d3760  34 60 9d e5                                      ldr r6, [sp, #0x34]
005d3764  00 00 55 e3                                      cmp r5, #0
005d3768  00 50 83 e0                                      add r5, r3, r0
005d376c  28 50 8d e5                                      str r5, [sp, #0x28]
005d3770  01 50 a0 e3                                      mov r5, #1
005d3774  24 30 86 e5                                      str r3, [r6, #0x24]
005d3778  11 50 c6 e5                                      strb r5, [r6, #0x11]
005d377c  10 e0 c6 e5                                      strb lr, [r6, #0x10]
005d3780  14 00 86 e5                                      str r0, [r6, #0x14]
005d3784  18 10 86 e5                                      str r1, [r6, #0x18]
005d3788  20 20 86 e5                                      str r2, [r6, #0x20]
005d378c  28 e0 9d e5                                      ldr lr, [sp, #0x28]
005d3790  34 30 a0 13                                      movne r3, #0x34
005d3794  1c e0 86 e5                                      str lr, [r6, #0x1c]
005d3798  28 10 9d 15                                      ldrne r1, [sp, #0x28]
005d379c  40 00 9d 05                                      ldreq r0, [sp, #0x40]
005d37a0  38 20 9d e5                                      ldr r2, [sp, #0x38]
005d37a4  93 14 23 10                                      mlane r3, r3, r4, r1
005d37a8  10 00 8d 05                                      streq r0, [sp, #0x10]
005d37ac  10 30 8d 15                                      strne r3, [sp, #0x10]
005d37b0  00 c0 9c e5                                      ldr ip, [ip]
005d37b4  02 00 5c e1                                      cmp ip, r2
005d37b8  24 c0 8d e5                                      str ip, [sp, #0x24]
005d37bc  ed 00 00 0a                                      beq #0x5d3b78
005d37c0  34 30 9d e5                                      ldr r3, [sp, #0x34]
005d37c4  30 30 8d e5                                      str r3, [sp, #0x30]
005d37c8  24 50 9d e5                                      ldr r5, [sp, #0x24]
005d37cc  0c 30 d5 e5                                      ldrb r3, [r5, #0xc]
005d37d0  00 00 53 e3                                      cmp r3, #0
005d37d4  cf 00 00 0a                                      beq #0x5d3b18
005d37d8  01 30 43 e2                                      sub r3, r3, #1
005d37dc  73 30 ef e6                                      uxtb r3, r3
005d37e0  34 60 a0 e3                                      mov r6, #0x34
005d37e4  93 66 23 e0                                      mla r3, r3, r6, r6
005d37e8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005d37ec  00 e0 a0 e3                                      mov lr, #0
005d37f0  2c 30 8d e5                                      str r3, [sp, #0x2c]
005d37f4  00 c0 8d e5                                      str ip, [sp]
005d37f8  08 e0 8d e5                                      str lr, [sp, #8]
005d37fc  24 00 9d e5                                      ldr r0, [sp, #0x24]
005d3800  08 10 9d e5                                      ldr r1, [sp, #8]
005d3804  10 40 90 e5                                      ldr r4, [r0, #0x10]
005d3808  01 40 84 e0                                      add r4, r4, r1
005d380c  24 a0 94 e5                                      ldr sl, [r4, #0x24]
005d3810  20 30 94 e5                                      ldr r3, [r4, #0x20]
005d3814  00 00 5a e3                                      cmp sl, #0
005d3818  b4 23 d3 e1                                      ldrh r2, [r3, #0x34]
005d381c  be 02 d3 e1                                      ldrh r0, [r3, #0x2e]
005d3820  bc 12 d3 e1                                      ldrh r1, [r3, #0x2c]
005d3824  0a 60 a0 01                                      moveq r6, sl
005d3828  b6 33 d3 e1                                      ldrh r3, [r3, #0x36]
005d382c  0c a0 8d 05                                      streq sl, [sp, #0xc]
005d3830  04 a0 8d 05                                      streq sl, [sp, #4]
005d3834  95 00 00 0a                                      beq #0x5d3a90
005d3838  00 30 83 e0                                      add r3, r3, r0
005d383c  73 30 ff e6                                      uxth r3, r3
005d3840  03 30 61 e0                                      rsb r3, r1, r3
005d3844  03 30 62 e0                                      rsb r3, r2, r3
005d3848  73 30 ff e6                                      uxth r3, r3
005d384c  10 00 9d e5                                      ldr r0, [sp, #0x10]
005d3850  83 20 a0 e1                                      lsl r2, r3, #1
005d3854  88 10 9d e5                                      ldr r1, [sp, #0x88]
005d3858  1c 30 8d e5                                      str r3, [sp, #0x1c]
005d385c  14 20 8d e5                                      str r2, [sp, #0x14]
005d3860  00 ec f4 eb                                      bl #0x30e868
005d3864  14 50 9d e5                                      ldr r5, [sp, #0x14]
005d3868  10 30 9d e5                                      ldr r3, [sp, #0x10]
005d386c  10 90 9d e5                                      ldr sb, [sp, #0x10]
005d3870  05 30 83 e0                                      add r3, r3, r5
005d3874  04 30 8d e5                                      str r3, [sp, #4]
005d3878  03 50 a0 e1                                      mov r5, r3
005d387c  00 30 a0 e3                                      mov r3, #0
005d3880  03 b0 a0 e1                                      mov fp, r3
005d3884  04 30 a0 e1                                      mov r3, r4
005d3888  20 20 93 e5                                      ldr r2, [r3, #0x20]
005d388c  05 10 8b e2                                      add r1, fp, #5
005d3890  81 11 82 e0                                      add r1, r2, r1, lsl #3
005d3894  b4 20 d1 e1                                      ldrh r2, [r1, #4]
005d3898  b6 80 d1 e1                                      ldrh r8, [r1, #6]
005d389c  02 00 58 e1                                      cmp r8, r2
005d38a0  27 00 00 9a                                      bls #0x5d3944
005d38a4  8b a7 a0 e1                                      lsl sl, fp, #0xf
005d38a8  00 70 a0 e3                                      mov r7, #0
005d38ac  7a a0 ff e6                                      uxth sl, sl
005d38b0  02 60 a0 e1                                      mov r6, r2
005d38b4  07 40 a0 e1                                      mov r4, r7
005d38b8  0c 20 8d e5                                      str r2, [sp, #0xc]
005d38bc  18 30 8d e5                                      str r3, [sp, #0x18]
005d38c0  05 00 00 ea                                      b #0x5d38dc
005d38c4  01 60 86 e2                                      add r6, r6, #1
005d38c8  76 60 ff e6                                      uxth r6, r6
005d38cc  08 00 56 e1                                      cmp r6, r8
005d38d0  04 40 84 e2                                      add r4, r4, #4
005d38d4  02 70 87 e2                                      add r7, r7, #2
005d38d8  11 00 00 2a                                      bhs #0x5d3924
005d38dc  b7 10 99 e1                                      ldrh r1, [sb, r7]
005d38e0  06 30 8a e1                                      orr r3, sl, r6
005d38e4  04 20 85 e0                                      add r2, r5, r4
005d38e8  02 09 11 e3                                      tst r1, #0x8000
005d38ec  b2 10 c2 e1                                      strh r1, [r2, #2]
005d38f0  b4 30 85 e1                                      strh r3, [r5, r4]
005d38f4  f2 ff ff 0a                                      beq #0x5d38c4
005d38f8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005d38fc  81 18 a0 e1                                      lsl r1, r1, #0x11
005d3900  01 60 86 e2                                      add r6, r6, #1
005d3904  e4 00 9c e5                                      ldr r0, [ip, #0xe4]
005d3908  a1 18 a0 e1                                      lsr r1, r1, #0x11
005d390c  76 60 ff e6                                      uxth r6, r6
005d3910  05 99 ff eb                                      bl #0x5b9d2c
005d3914  08 00 56 e1                                      cmp r6, r8
005d3918  04 40 84 e2                                      add r4, r4, #4
005d391c  02 70 87 e2                                      add r7, r7, #2
005d3920  ed ff ff 3a                                      blo #0x5d38dc
005d3924  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005d3928  18 30 9d e5                                      ldr r3, [sp, #0x18]
005d392c  02 20 e0 e1                                      mvn r2, r2
005d3930  02 20 88 e0                                      add r2, r8, r2
005d3934  72 20 ff e6                                      uxth r2, r2
005d3938  01 20 82 e2                                      add r2, r2, #1
005d393c  82 90 89 e0                                      add sb, sb, r2, lsl #1
005d3940  02 51 85 e0                                      add r5, r5, r2, lsl #2
005d3944  01 b0 8b e2                                      add fp, fp, #1
005d3948  02 00 5b e3                                      cmp fp, #2
005d394c  cd ff ff 1a                                      bne #0x5d3888
005d3950  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
005d3954  03 40 a0 e1                                      mov r4, r3
005d3958  0e b1 a0 e1                                      lsl fp, lr, #2
005d395c  0b 00 a0 e1                                      mov r0, fp
005d3960  23 83 fd eb                                      bl #0x5345f4
005d3964  00 80 a0 e1                                      mov r8, r0
005d3968  04 00 9d e5                                      ldr r0, [sp, #4]
005d396c  0b 10 80 e0                                      add r1, r0, fp
005d3970  01 00 50 e1                                      cmp r0, r1
005d3974  0b b0 88 e0                                      add fp, r8, fp
005d3978  b7 00 00 0a                                      beq #0x5d3c5c
005d397c  04 70 9d e5                                      ldr r7, [sp, #4]
005d3980  0b 20 a0 e1                                      mov r2, fp
005d3984  08 a0 a0 e1                                      mov sl, r8
005d3988  07 30 a0 e1                                      mov r3, r7
005d398c  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
005d3990  09 00 00 ea                                      b #0x5d39bc
005d3994  12 00 50 e3                                      cmp r0, #0x12
005d3998  0f 00 00 0a                                      beq #0x5d39dc
005d399c  b0 00 d3 e1                                      ldrh r0, [r3]
005d39a0  b0 00 c7 e1                                      strh r0, [r7]
005d39a4  b2 60 d3 e1                                      ldrh r6, [r3, #2]
005d39a8  b2 60 c7 e1                                      strh r6, [r7, #2]
005d39ac  04 70 87 e2                                      add r7, r7, #4
005d39b0  04 30 83 e2                                      add r3, r3, #4
005d39b4  03 00 51 e1                                      cmp r1, r3
005d39b8  0f 00 00 0a                                      beq #0x5d39fc
005d39bc  b2 00 d3 e1                                      ldrh r0, [r3, #2]
005d39c0  02 09 10 e3                                      tst r0, #0x8000
005d39c4  9d 00 00 1a                                      bne #0x5d3c40
005d39c8  00 01 9c e7                                      ldr r0, [ip, r0, lsl #2]
005d39cc  b4 00 d0 e1                                      ldrh r0, [r0, #4]
005d39d0  02 00 50 e3                                      cmp r0, #2
005d39d4  21 00 50 13                                      cmpne r0, #0x21
005d39d8  ed ff ff 1a                                      bne #0x5d3994
005d39dc  b0 60 d3 e1                                      ldrh r6, [r3]
005d39e0  b0 60 ca e1                                      strh r6, [sl]
005d39e4  b2 e0 d3 e1                                      ldrh lr, [r3, #2]
005d39e8  04 30 83 e2                                      add r3, r3, #4
005d39ec  03 00 51 e1                                      cmp r1, r3
005d39f0  b2 e0 ca e1                                      strh lr, [sl, #2]
005d39f4  04 a0 8a e2                                      add sl, sl, #4
005d39f8  ef ff ff 1a                                      bne #0x5d39bc
005d39fc  04 c0 9d e5                                      ldr ip, [sp, #4]
005d3a00  0a a0 68 e0                                      rsb sl, r8, sl
005d3a04  02 60 6b e0                                      rsb r6, fp, r2
005d3a08  07 30 6c e0                                      rsb r3, ip, r7
005d3a0c  5a a1 ef e7                                      ubfx sl, sl, #2, #0x10
005d3a10  46 61 a0 e1                                      asr r6, r6, #2
005d3a14  53 31 ef e7                                      ubfx r3, r3, #2, #0x10
005d3a18  0c 30 8d e5                                      str r3, [sp, #0xc]
005d3a1c  00 60 66 e2                                      rsb r6, r6, #0
005d3a20  0a 91 a0 e1                                      lsl sb, sl, #2
005d3a24  07 00 a0 e1                                      mov r0, r7
005d3a28  08 10 a0 e1                                      mov r1, r8
005d3a2c  09 20 a0 e1                                      mov r2, sb
005d3a30  8c eb f4 eb                                      bl #0x30e868
005d3a34  00 00 56 e3                                      cmp r6, #0
005d3a38  08 00 00 da                                      ble #0x5d3a60
005d3a3c  09 70 87 e0                                      add r7, r7, sb
005d3a40  b4 e0 5b e1                                      ldrh lr, [fp, #-4]
005d3a44  01 60 56 e2                                      subs r6, r6, #1
005d3a48  b0 e0 c7 e1                                      strh lr, [r7]
005d3a4c  b2 00 5b e1                                      ldrh r0, [fp, #-2]
005d3a50  04 b0 4b e2                                      sub fp, fp, #4
005d3a54  b2 00 c7 e1                                      strh r0, [r7, #2]
005d3a58  04 70 87 e2                                      add r7, r7, #4
005d3a5c  f7 ff ff 1a                                      bne #0x5d3a40
005d3a60  88 10 9d e5                                      ldr r1, [sp, #0x88]
005d3a64  14 20 9d e5                                      ldr r2, [sp, #0x14]
005d3a68  00 00 58 e3                                      cmp r8, #0
005d3a6c  02 10 81 e0                                      add r1, r1, r2
005d3a70  88 10 8d e5                                      str r1, [sp, #0x88]
005d3a74  01 00 00 0a                                      beq #0x5d3a80
005d3a78  08 00 a0 e1                                      mov r0, r8
005d3a7c  01 83 fd eb                                      bl #0x534688
005d3a80  24 60 94 e5                                      ldr r6, [r4, #0x24]
005d3a84  00 00 56 e3                                      cmp r6, #0
005d3a88  10 60 9d 15                                      ldrne r6, [sp, #0x10]
005d3a8c  10 50 8d e5                                      str r5, [sp, #0x10]
005d3a90  08 50 9d e5                                      ldr r5, [sp, #8]
005d3a94  28 30 9d e5                                      ldr r3, [sp, #0x28]
005d3a98  04 e0 a0 e1                                      mov lr, r4
005d3a9c  05 c0 83 e0                                      add ip, r3, r5
005d3aa0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005d3aa4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005d3aa8  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
005d3aac  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005d3ab0  20 30 94 e5                                      ldr r3, [r4, #0x20]
005d3ab4  00 c0 9d e5                                      ldr ip, [sp]
005d3ab8  01 50 a0 e3                                      mov r5, #1
005d3abc  00 00 53 e3                                      cmp r3, #0
005d3ac0  20 30 8c e5                                      str r3, [ip, #0x20]
005d3ac4  04 20 93 15                                      ldrne r2, [r3, #4]
005d3ac8  01 20 82 12                                      addne r2, r2, #1
005d3acc  04 20 83 15                                      strne r2, [r3, #4]
005d3ad0  08 e0 9d e5                                      ldr lr, [sp, #8]
005d3ad4  00 10 9d e5                                      ldr r1, [sp]
005d3ad8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005d3adc  34 e0 8e e2                                      add lr, lr, #0x34
005d3ae0  08 e0 8d e5                                      str lr, [sp, #8]
005d3ae4  24 60 81 e5                                      str r6, [r1, #0x24]
005d3ae8  04 20 9d e5                                      ldr r2, [sp, #4]
005d3aec  00 00 5e e1                                      cmp lr, r0
005d3af0  28 20 81 e5                                      str r2, [r1, #0x28]
005d3af4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005d3af8  be a2 c1 e1                                      strh sl, [r1, #0x2e]
005d3afc  bc 32 c1 e1                                      strh r3, [r1, #0x2c]
005d3b00  30 50 c1 e5                                      strb r5, [r1, #0x30]
005d3b04  34 10 81 e2                                      add r1, r1, #0x34
005d3b08  00 10 8d e5                                      str r1, [sp]
005d3b0c  3a ff ff 1a                                      bne #0x5d37fc
005d3b10  24 60 9d e5                                      ldr r6, [sp, #0x24]
005d3b14  0c 30 d6 e5                                      ldrb r3, [r6, #0xc]
005d3b18  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005d3b1c  30 e0 9d e5                                      ldr lr, [sp, #0x30]
005d3b20  34 60 a0 e3                                      mov r6, #0x34
005d3b24  08 20 9c e5                                      ldr r2, [ip, #8]
005d3b28  28 20 8e e5                                      str r2, [lr, #0x28]
005d3b2c  00 00 52 e3                                      cmp r2, #0
005d3b30  00 10 92 15                                      ldrne r1, [r2]
005d3b34  01 10 81 12                                      addne r1, r1, #1
005d3b38  00 10 82 15                                      strne r1, [r2]
005d3b3c  30 00 9d e5                                      ldr r0, [sp, #0x30]
005d3b40  2c 30 c0 e5                                      strb r3, [r0, #0x2c]
005d3b44  28 10 9d e5                                      ldr r1, [sp, #0x28]
005d3b48  30 10 80 e5                                      str r1, [r0, #0x30]
005d3b4c  24 20 9d e5                                      ldr r2, [sp, #0x24]
005d3b50  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005d3b54  0c 00 80 e2                                      add r0, r0, #0xc
005d3b58  0c 30 d2 e5                                      ldrb r3, [r2, #0xc]
005d3b5c  00 50 92 e5                                      ldr r5, [r2]
005d3b60  30 00 8d e5                                      str r0, [sp, #0x30]
005d3b64  96 13 21 e0                                      mla r1, r6, r3, r1
005d3b68  0c 00 55 e1                                      cmp r5, ip
005d3b6c  24 50 8d e5                                      str r5, [sp, #0x24]
005d3b70  28 10 8d e5                                      str r1, [sp, #0x28]
005d3b74  13 ff ff 1a                                      bne #0x5d37c8
005d3b78  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005d3b7c  34 e0 9d e5                                      ldr lr, [sp, #0x34]
005d3b80  00 00 5c e3                                      cmp ip, #0
005d3b84  20 30 9e e5                                      ldr r3, [lr, #0x20]
005d3b88  17 00 00 da                                      ble #0x5d3bec
005d3b8c  7c e0 9d e5                                      ldr lr, [sp, #0x7c]
005d3b90  10 30 83 e2                                      add r3, r3, #0x10
005d3b94  00 00 a0 e3                                      mov r0, #0
005d3b98  00 20 9e e7                                      ldr r2, [lr, r0]
005d3b9c  04 00 80 e2                                      add r0, r0, #4
005d3ba0  00 10 92 e5                                      ldr r1, [r2]
005d3ba4  10 10 03 e5                                      str r1, [r3, #-0x10]
005d3ba8  00 00 51 e3                                      cmp r1, #0
005d3bac  00 40 91 15                                      ldrne r4, [r1]
005d3bb0  01 40 84 12                                      addne r4, r4, #1
005d3bb4  00 40 81 15                                      strne r4, [r1]
005d3bb8  b4 10 d2 e1                                      ldrh r1, [r2, #4]
005d3bbc  01 c0 5c e2                                      subs ip, ip, #1
005d3bc0  bc 10 43 e1                                      strh r1, [r3, #-0xc]
005d3bc4  06 10 d2 e5                                      ldrb r1, [r2, #6]
005d3bc8  0a 10 43 e5                                      strb r1, [r3, #-0xa]
005d3bcc  07 10 d2 e5                                      ldrb r1, [r2, #7]
005d3bd0  09 10 43 e5                                      strb r1, [r3, #-9]
005d3bd4  08 10 92 e5                                      ldr r1, [r2, #8]
005d3bd8  08 10 03 e5                                      str r1, [r3, #-8]
005d3bdc  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005d3be0  04 20 03 e5                                      str r2, [r3, #-4]
005d3be4  10 30 83 e2                                      add r3, r3, #0x10
005d3be8  ea ff ff 1a                                      bne #0x5d3b98
005d3bec  34 30 9d e5                                      ldr r3, [sp, #0x34]
005d3bf0  14 20 93 e5                                      ldr r2, [r3, #0x14]
005d3bf4  00 00 52 e3                                      cmp r2, #0
005d3bf8  02 00 00 0a                                      beq #0x5d3c08
005d3bfc  24 00 93 e5                                      ldr r0, [r3, #0x24]
005d3c00  00 10 a0 e3                                      mov r1, #0
005d3c04  15 ea f4 eb                                      bl #0x30e460
005d3c08  40 50 9d e5                                      ldr r5, [sp, #0x40]
005d3c0c  03 00 a0 e3                                      mov r0, #3
005d3c10  28 60 9d e5                                      ldr r6, [sp, #0x28]
005d3c14  90 05 00 e0                                      mul r0, r0, r5
005d3c18  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005d3c1c  01 00 80 e2                                      add r0, r0, #1
005d3c20  c0 00 a0 e1                                      asr r0, r0, #1
005d3c24  44 10 9d e5                                      ldr r1, [sp, #0x44]
005d3c28  00 01 86 e0                                      add r0, r6, r0, lsl #2
005d3c2c  08 00 8c e5                                      str r0, [ip, #8]
005d3c30  3a ea f4 eb                                      bl #0x30e520
005d3c34  34 00 9d e5                                      ldr r0, [sp, #0x34]
005d3c38  4c d0 8d e2                                      add sp, sp, #0x4c
005d3c3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d3c40  b0 e0 d3 e1                                      ldrh lr, [r3]
005d3c44  80 08 a0 e1                                      lsl r0, r0, #0x11
005d3c48  04 20 42 e2                                      sub r2, r2, #4
005d3c4c  a0 08 a0 e1                                      lsr r0, r0, #0x11
005d3c50  b2 00 c2 e1                                      strh r0, [r2, #2]
005d3c54  b0 e0 c2 e1                                      strh lr, [r2]
005d3c58  54 ff ff ea                                      b #0x5d39b0
005d3c5c  00 60 a0 e3                                      mov r6, #0
005d3c60  00 70 a0 e1                                      mov r7, r0
005d3c64  06 90 a0 e1                                      mov sb, r6
005d3c68  06 a0 a0 e1                                      mov sl, r6
005d3c6c  0c 60 8d e5                                      str r6, [sp, #0xc]
005d3c70  6b ff ff ea                                      b #0x5d3a24

; FUNCTION 0x005d3f14, declared_size=280, range_size=280, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZNK6glitch5video17CMaterialRenderer19getBindedLightCountEhh
; demangled: glitch::video::CMaterialRenderer::getBindedLightCount(unsigned char, unsigned char) const
; decoder-mode: arm
005d3f14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d3f18  18 30 90 e5                                      ldr r3, [r0, #0x18]
005d3f1c  00 50 a0 e1                                      mov r5, r0
005d3f20  0c 00 a0 e3                                      mov r0, #0xc
005d3f24  90 31 23 e0                                      mla r3, r0, r1, r3
005d3f28  34 a0 a0 e3                                      mov sl, #0x34
005d3f2c  08 30 93 e5                                      ldr r3, [r3, #8]
005d3f30  2c d0 4d e2                                      sub sp, sp, #0x2c
005d3f34  9a 32 2a e0                                      mla sl, sl, r2, r3
005d3f38  24 b0 9a e5                                      ldr fp, [sl, #0x24]
005d3f3c  00 00 5b e3                                      cmp fp, #0
005d3f40  36 00 00 0a                                      beq #0x5d4020
005d3f44  00 80 a0 e3                                      mov r8, #0
005d3f48  28 70 8d e2                                      add r7, sp, #0x28
005d3f4c  20 80 67 e5                                      strb r8, [r7, #-0x20]!
005d3f50  02 30 8b e2                                      add r3, fp, #2
005d3f54  0c 80 8d e5                                      str r8, [sp, #0xc]
005d3f58  10 70 8d e5                                      str r7, [sp, #0x10]
005d3f5c  14 70 8d e5                                      str r7, [sp, #0x14]
005d3f60  18 80 8d e5                                      str r8, [sp, #0x18]
005d3f64  04 30 8d e5                                      str r3, [sp, #4]
005d3f68  20 90 8d e2                                      add sb, sp, #0x20
005d3f6c  20 30 9a e5                                      ldr r3, [sl, #0x20]
005d3f70  05 20 88 e2                                      add r2, r8, #5
005d3f74  82 31 83 e0                                      add r3, r3, r2, lsl #3
005d3f78  b4 20 d3 e1                                      ldrh r2, [r3, #4]
005d3f7c  b6 60 d3 e1                                      ldrh r6, [r3, #6]
005d3f80  06 60 62 e0                                      rsb r6, r2, r6
005d3f84  76 60 ff e6                                      uxth r6, r6
005d3f88  00 00 56 e3                                      cmp r6, #0
005d3f8c  19 00 00 0a                                      beq #0x5d3ff8
005d3f90  01 60 46 e2                                      sub r6, r6, #1
005d3f94  04 30 9d e5                                      ldr r3, [sp, #4]
005d3f98  76 60 ff e6                                      uxth r6, r6
005d3f9c  0b 40 a0 e1                                      mov r4, fp
005d3fa0  86 60 83 e0                                      add r6, r3, r6, lsl #1
005d3fa4  02 00 00 ea                                      b #0x5d3fb4
005d3fa8  02 40 84 e2                                      add r4, r4, #2
005d3fac  06 00 54 e1                                      cmp r4, r6
005d3fb0  10 00 00 0a                                      beq #0x5d3ff8
005d3fb4  b0 30 d4 e1                                      ldrh r3, [r4]
005d3fb8  be 20 d5 e1                                      ldrh r2, [r5, #0xe]
005d3fbc  03 00 52 e1                                      cmp r2, r3
005d3fc0  f8 ff ff 9a                                      bls #0x5d3fa8
005d3fc4  20 20 95 e5                                      ldr r2, [r5, #0x20]
005d3fc8  03 32 92 e0                                      adds r3, r2, r3, lsl #4
005d3fcc  f5 ff ff 0a                                      beq #0x5d3fa8
005d3fd0  b4 30 d3 e1                                      ldrh r3, [r3, #4]
005d3fd4  12 00 53 e3                                      cmp r3, #0x12
005d3fd8  f2 ff ff 1a                                      bne #0x5d3fa8
005d3fdc  04 20 a0 e1                                      mov r2, r4
005d3fe0  09 00 a0 e1                                      mov r0, sb
005d3fe4  07 10 a0 e1                                      mov r1, r7
005d3fe8  02 40 84 e2                                      add r4, r4, #2
005d3fec  68 ff ff eb                                      bl #0x5d3d94
005d3ff0  06 00 54 e1                                      cmp r4, r6
005d3ff4  ee ff ff 1a                                      bne #0x5d3fb4
005d3ff8  01 80 88 e2                                      add r8, r8, #1
005d3ffc  02 00 58 e3                                      cmp r8, #2
005d4000  d9 ff ff 1a                                      bne #0x5d3f6c
005d4004  18 b0 9d e5                                      ldr fp, [sp, #0x18]
005d4008  00 00 5b e3                                      cmp fp, #0
005d400c  7b b0 ff e6                                      uxth fp, fp
005d4010  02 00 00 0a                                      beq #0x5d4020
005d4014  07 00 a0 e1                                      mov r0, r7
005d4018  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005d401c  f7 fb ff eb                                      bl #0x5d3000
005d4020  0b 00 a0 e1                                      mov r0, fp
005d4024  2c d0 8d e2                                      add sp, sp, #0x2c
005d4028  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005d4714, declared_size=160, range_size=160, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZNK6glitch5video17CMaterialRenderer14getTechniqueIDEPKc
; demangled: glitch::video::CMaterialRenderer::getTechniqueID(char const*) const
; decoder-mode: arm
005d4714  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d4718  00 40 a0 e1                                      mov r4, r0
005d471c  01 00 a0 e1                                      mov r0, r1
005d4720  00 10 a0 e3                                      mov r1, #0
005d4724  52 42 03 eb                                      bl #0x6a5074
005d4728  00 00 50 e3                                      cmp r0, #0
005d472c  ff 40 a0 03                                      moveq r4, #0xff
005d4730  18 00 00 0a                                      beq #0x5d4798
005d4734  00 70 90 e5                                      ldr r7, [r0]
005d4738  00 c0 a0 e1                                      mov ip, r0
005d473c  01 70 87 e2                                      add r7, r7, #1
005d4740  04 70 8c e4                                      str r7, [ip], #4
005d4744  10 50 d4 e5                                      ldrb r5, [r4, #0x10]
005d4748  00 00 55 e3                                      cmp r5, #0
005d474c  16 00 00 0a                                      beq #0x5d47ac
005d4750  00 30 a0 e3                                      mov r3, #0
005d4754  18 60 94 e5                                      ldr r6, [r4, #0x18]
005d4758  03 40 a0 e1                                      mov r4, r3
005d475c  03 00 00 ea                                      b #0x5d4770
005d4760  71 40 ef e6                                      uxtb r4, r1
005d4764  05 00 54 e1                                      cmp r4, r5
005d4768  0c 30 83 e2                                      add r3, r3, #0xc
005d476c  0e 00 00 0a                                      beq #0x5d47ac
005d4770  03 20 96 e7                                      ldr r2, [r6, r3]
005d4774  01 10 84 e2                                      add r1, r4, #1
005d4778  00 00 52 e3                                      cmp r2, #0
005d477c  04 20 82 12                                      addne r2, r2, #4
005d4780  02 00 5c e1                                      cmp ip, r2
005d4784  f5 ff ff 1a                                      bne #0x5d4760
005d4788  01 70 47 e2                                      sub r7, r7, #1
005d478c  00 00 57 e3                                      cmp r7, #0
005d4790  00 70 80 e5                                      str r7, [r0]
005d4794  01 00 00 0a                                      beq #0x5d47a0
005d4798  04 00 a0 e1                                      mov r0, r4
005d479c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d47a0  7d 41 03 eb                                      bl #0x6a4d9c
005d47a4  04 00 a0 e1                                      mov r0, r4
005d47a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d47ac  ff 40 a0 e3                                      mov r4, #0xff
005d47b0  f4 ff ff ea                                      b #0x5d4788

; FUNCTION 0x005d4aa0, declared_size=424, range_size=424, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZN6glitch5video17CMaterialRendererD1Ev
; demangled: glitch::video::CMaterialRenderer::~CMaterialRenderer()
; decoder-mode: arm
005d4aa0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d4aa4  00 80 a0 e1                                      mov r8, r0
005d4aa8  0c d0 4d e2                                      sub sp, sp, #0xc
005d4aac  ed ff ff eb                                      bl #0x5d4a68
005d4ab0  10 30 d8 e5                                      ldrb r3, [r8, #0x10]
005d4ab4  00 00 53 e3                                      cmp r3, #0
005d4ab8  4e 00 00 0a                                      beq #0x5d4bf8
005d4abc  01 30 43 e2                                      sub r3, r3, #1
005d4ac0  73 30 ef e6                                      uxtb r3, r3
005d4ac4  01 30 83 e2                                      add r3, r3, #1
005d4ac8  0c 20 a0 e3                                      mov r2, #0xc
005d4acc  92 03 02 e0                                      mul r2, r2, r3
005d4ad0  00 b0 a0 e3                                      mov fp, #0
005d4ad4  04 20 8d e5                                      str r2, [sp, #4]
005d4ad8  18 40 98 e5                                      ldr r4, [r8, #0x18]
005d4adc  0b a0 84 e0                                      add sl, r4, fp
005d4ae0  04 30 da e5                                      ldrb r3, [sl, #4]
005d4ae4  00 00 53 e3                                      cmp r3, #0
005d4ae8  2d 00 00 0a                                      beq #0x5d4ba4
005d4aec  01 30 43 e2                                      sub r3, r3, #1
005d4af0  73 90 ef e6                                      uxtb sb, r3
005d4af4  34 20 a0 e3                                      mov r2, #0x34
005d4af8  99 22 29 e0                                      mla sb, sb, r2, r2
005d4afc  00 60 a0 e3                                      mov r6, #0
005d4b00  04 30 98 e5                                      ldr r3, [r8, #4]
005d4b04  08 70 9a e5                                      ldr r7, [sl, #8]
005d4b08  00 00 53 e3                                      cmp r3, #0
005d4b0c  06 70 87 e0                                      add r7, r7, r6
005d4b10  1b 00 00 0a                                      beq #0x5d4b84
005d4b14  20 00 97 e5                                      ldr r0, [r7, #0x20]
005d4b18  24 40 97 e5                                      ldr r4, [r7, #0x24]
005d4b1c  b6 c3 d0 e1                                      ldrh ip, [r0, #0x36]
005d4b20  be 12 d0 e1                                      ldrh r1, [r0, #0x2e]
005d4b24  bc 22 d0 e1                                      ldrh r2, [r0, #0x2c]
005d4b28  b4 33 d0 e1                                      ldrh r3, [r0, #0x34]
005d4b2c  01 50 8c e0                                      add r5, ip, r1
005d4b30  75 50 ff e6                                      uxth r5, r5
005d4b34  05 50 62 e0                                      rsb r5, r2, r5
005d4b38  05 50 63 e0                                      rsb r5, r3, r5
005d4b3c  75 50 ff e6                                      uxth r5, r5
005d4b40  85 50 84 e0                                      add r5, r4, r5, lsl #1
005d4b44  04 00 55 e1                                      cmp r5, r4
005d4b48  02 00 00 1a                                      bne #0x5d4b58
005d4b4c  0d 00 00 ea                                      b #0x5d4b88
005d4b50  04 00 55 e1                                      cmp r5, r4
005d4b54  0a 00 00 0a                                      beq #0x5d4b84
005d4b58  b0 10 d4 e1                                      ldrh r1, [r4]
005d4b5c  02 40 84 e2                                      add r4, r4, #2
005d4b60  02 09 11 e3                                      tst r1, #0x8000
005d4b64  f9 ff ff 0a                                      beq #0x5d4b50
005d4b68  04 30 98 e5                                      ldr r3, [r8, #4]
005d4b6c  81 18 a0 e1                                      lsl r1, r1, #0x11
005d4b70  e4 00 93 e5                                      ldr r0, [r3, #0xe4]
005d4b74  a1 18 a0 e1                                      lsr r1, r1, #0x11
005d4b78  73 94 ff eb                                      bl #0x5b9d4c
005d4b7c  04 00 55 e1                                      cmp r5, r4
005d4b80  f4 ff ff 1a                                      bne #0x5d4b58
005d4b84  20 00 97 e5                                      ldr r0, [r7, #0x20]
005d4b88  00 00 50 e3                                      cmp r0, #0
005d4b8c  00 00 00 0a                                      beq #0x5d4b94
005d4b90  7b 22 f5 eb                                      bl #0x31d584
005d4b94  34 60 86 e2                                      add r6, r6, #0x34
005d4b98  09 00 56 e1                                      cmp r6, sb
005d4b9c  d7 ff ff 1a                                      bne #0x5d4b00
005d4ba0  18 40 98 e5                                      ldr r4, [r8, #0x18]
005d4ba4  04 30 9d e5                                      ldr r3, [sp, #4]
005d4ba8  0c b0 8b e2                                      add fp, fp, #0xc
005d4bac  03 00 5b e1                                      cmp fp, r3
005d4bb0  c9 ff ff 1a                                      bne #0x5d4adc
005d4bb4  10 30 d8 e5                                      ldrb r3, [r8, #0x10]
005d4bb8  0c 50 a0 e3                                      mov r5, #0xc
005d4bbc  95 43 25 e0                                      mla r5, r5, r3, r4
005d4bc0  05 00 54 e1                                      cmp r4, r5
005d4bc4  0b 00 00 0a                                      beq #0x5d4bf8
005d4bc8  00 00 94 e5                                      ldr r0, [r4]
005d4bcc  0c 40 84 e2                                      add r4, r4, #0xc
005d4bd0  00 00 50 e3                                      cmp r0, #0
005d4bd4  05 00 00 0a                                      beq #0x5d4bf0
005d4bd8  00 30 90 e5                                      ldr r3, [r0]
005d4bdc  01 30 43 e2                                      sub r3, r3, #1
005d4be0  00 00 53 e3                                      cmp r3, #0
005d4be4  00 30 80 e5                                      str r3, [r0]
005d4be8  00 00 00 1a                                      bne #0x5d4bf0
005d4bec  6a 40 03 eb                                      bl #0x6a4d9c
005d4bf0  04 00 55 e1                                      cmp r5, r4
005d4bf4  f3 ff ff 1a                                      bne #0x5d4bc8
005d4bf8  20 40 98 e5                                      ldr r4, [r8, #0x20]
005d4bfc  be 50 d8 e1                                      ldrh r5, [r8, #0xe]
005d4c00  05 52 84 e0                                      add r5, r4, r5, lsl #4
005d4c04  05 00 54 e1                                      cmp r4, r5
005d4c08  0b 00 00 0a                                      beq #0x5d4c3c
005d4c0c  00 00 94 e5                                      ldr r0, [r4]
005d4c10  10 40 84 e2                                      add r4, r4, #0x10
005d4c14  00 00 50 e3                                      cmp r0, #0
005d4c18  05 00 00 0a                                      beq #0x5d4c34
005d4c1c  00 30 90 e5                                      ldr r3, [r0]
005d4c20  01 30 43 e2                                      sub r3, r3, #1
005d4c24  00 00 53 e3                                      cmp r3, #0
005d4c28  00 30 80 e5                                      str r3, [r0]
005d4c2c  00 00 00 1a                                      bne #0x5d4c34
005d4c30  59 40 03 eb                                      bl #0x6a4d9c
005d4c34  04 00 55 e1                                      cmp r5, r4
005d4c38  f3 ff ff 1a                                      bne #0x5d4c0c
005d4c3c  08 00 a0 e1                                      mov r0, r8
005d4c40  0c d0 8d e2                                      add sp, sp, #0xc
005d4c44  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005d4c48, declared_size=324, range_size=324, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZN6glitch5video17CMaterialRenderer8allocateEPNS0_12IVideoDriverEtPKcRKNS0_6detail25material_renderer_manager14STechniqueListEtPKPKNS0_19SShaderParameterDefEjtPKt
; demangled: glitch::video::CMaterialRenderer::allocate(glitch::video::IVideoDriver*, unsigned short, char const*, glitch::video::detail::material_renderer_manager::STechniqueList const&, unsigned short, glitch::video::SShaderParameterDef const* const*, unsigned int, unsigned short, unsigned short const*)
; decoder-mode: arm
005d4c48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d4c4c  34 d0 4d e2                                      sub sp, sp, #0x34
005d4c50  58 40 9d e5                                      ldr r4, [sp, #0x58]
005d4c54  00 50 a0 e3                                      mov r5, #0
005d4c58  00 50 80 e5                                      str r5, [r0]
005d4c5c  00 60 a0 e1                                      mov r6, r0
005d4c60  03 00 a0 e1                                      mov r0, r3
005d4c64  03 a0 a0 e1                                      mov sl, r3
005d4c68  24 10 8d e5                                      str r1, [sp, #0x24]
005d4c6c  02 b0 a0 e1                                      mov fp, r2
005d4c70  77 e4 f4 eb                                      bl #0x30de54
005d4c74  00 30 94 e5                                      ldr r3, [r4]
005d4c78  bc 95 dd e1                                      ldrh sb, [sp, #0x5c]
005d4c7c  b8 86 dd e1                                      ldrh r8, [sp, #0x68]
005d4c80  04 00 53 e1                                      cmp r3, r4
005d4c84  36 00 00 0a                                      beq #0x5d4d64
005d4c88  03 20 a0 e1                                      mov r2, r3
005d4c8c  00 20 92 e5                                      ldr r2, [r2]
005d4c90  01 50 85 e2                                      add r5, r5, #1
005d4c94  02 00 54 e1                                      cmp r4, r2
005d4c98  fb ff ff 1a                                      bne #0x5d4c8c
005d4c9c  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005d4ca0  88 10 88 e0                                      add r1, r8, r8, lsl #1
005d4ca4  01 10 81 e2                                      add r1, r1, #1
005d4ca8  c1 10 a0 e1                                      asr r1, r1, #1
005d4cac  09 22 8c e0                                      add r2, ip, sb, lsl #4
005d4cb0  29 20 82 e2                                      add r2, r2, #0x29
005d4cb4  01 21 82 e0                                      add r2, r2, r1, lsl #2
005d4cb8  00 00 82 e0                                      add r0, r2, r0
005d4cbc  0c 20 a0 e3                                      mov r2, #0xc
005d4cc0  92 05 20 e0                                      mla r0, r2, r5, r0
005d4cc4  00 50 a0 e3                                      mov r5, #0
005d4cc8  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
005d4ccc  00 30 93 e5                                      ldr r3, [r3]
005d4cd0  02 50 85 e0                                      add r5, r5, r2
005d4cd4  03 00 54 e1                                      cmp r4, r3
005d4cd8  75 50 ff e6                                      uxth r5, r5
005d4cdc  f9 ff ff 1a                                      bne #0x5d4cc8
005d4ce0  34 30 a0 e3                                      mov r3, #0x34
005d4ce4  93 05 03 e0                                      mul r3, r3, r5
005d4ce8  03 00 80 e0                                      add r0, r0, r3
005d4cec  00 10 a0 e3                                      mov r1, #0
005d4cf0  2c 7d fd eb                                      bl #0x5341a8
005d4cf4  00 70 50 e2                                      subs r7, r0, #0
005d4cf8  16 00 00 0a                                      beq #0x5d4d58
005d4cfc  60 c0 9d e5                                      ldr ip, [sp, #0x60]
005d4d00  0b 20 a0 e1                                      mov r2, fp
005d4d04  0a 30 a0 e1                                      mov r3, sl
005d4d08  0c c0 8d e5                                      str ip, [sp, #0xc]
005d4d0c  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005d4d10  24 10 9d e5                                      ldr r1, [sp, #0x24]
005d4d14  00 40 8d e5                                      str r4, [sp]
005d4d18  10 c0 8d e5                                      str ip, [sp, #0x10]
005d4d1c  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
005d4d20  20 02 8d e9                                      stmib sp, {r5, sb}
005d4d24  14 80 8d e5                                      str r8, [sp, #0x14]
005d4d28  18 c0 8d e5                                      str ip, [sp, #0x18]
005d4d2c  fc f8 ff eb                                      bl #0x5d3124
005d4d30  2c 70 8d e5                                      str r7, [sp, #0x2c]
005d4d34  00 30 97 e5                                      ldr r3, [r7]
005d4d38  30 00 8d e2                                      add r0, sp, #0x30
005d4d3c  01 30 83 e2                                      add r3, r3, #1
005d4d40  00 30 87 e5                                      str r3, [r7]
005d4d44  00 20 96 e5                                      ldr r2, [r6]
005d4d48  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005d4d4c  04 20 20 e5                                      str r2, [r0, #-4]!
005d4d50  00 30 86 e5                                      str r3, [r6]
005d4d54  57 f5 f5 eb                                      bl #0x3522b8
005d4d58  06 00 a0 e1                                      mov r0, r6
005d4d5c  34 d0 8d e2                                      add sp, sp, #0x34
005d4d60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d4d64  64 10 9d e5                                      ldr r1, [sp, #0x64]
005d4d68  88 20 88 e0                                      add r2, r8, r8, lsl #1
005d4d6c  01 20 82 e2                                      add r2, r2, #1
005d4d70  c2 20 a0 e1                                      asr r2, r2, #1
005d4d74  09 32 81 e0                                      add r3, r1, sb, lsl #4
005d4d78  29 30 83 e2                                      add r3, r3, #0x29
005d4d7c  02 21 83 e0                                      add r2, r3, r2, lsl #2
005d4d80  00 00 82 e0                                      add r0, r2, r0
005d4d84  05 30 a0 e1                                      mov r3, r5
005d4d88  d6 ff ff ea                                      b #0x5d4ce8

; FUNCTION 0x005d4d8c, declared_size=424, range_size=424, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZN6glitch5video17CMaterialRendererD2Ev
; demangled: glitch::video::CMaterialRenderer::~CMaterialRenderer()
; decoder-mode: arm
005d4d8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d4d90  00 80 a0 e1                                      mov r8, r0
005d4d94  0c d0 4d e2                                      sub sp, sp, #0xc
005d4d98  32 ff ff eb                                      bl #0x5d4a68
005d4d9c  10 30 d8 e5                                      ldrb r3, [r8, #0x10]
005d4da0  00 00 53 e3                                      cmp r3, #0
005d4da4  4e 00 00 0a                                      beq #0x5d4ee4
005d4da8  01 30 43 e2                                      sub r3, r3, #1
005d4dac  73 30 ef e6                                      uxtb r3, r3
005d4db0  01 30 83 e2                                      add r3, r3, #1
005d4db4  0c 20 a0 e3                                      mov r2, #0xc
005d4db8  92 03 02 e0                                      mul r2, r2, r3
005d4dbc  00 b0 a0 e3                                      mov fp, #0
005d4dc0  04 20 8d e5                                      str r2, [sp, #4]
005d4dc4  18 40 98 e5                                      ldr r4, [r8, #0x18]
005d4dc8  0b a0 84 e0                                      add sl, r4, fp
005d4dcc  04 30 da e5                                      ldrb r3, [sl, #4]
005d4dd0  00 00 53 e3                                      cmp r3, #0
005d4dd4  2d 00 00 0a                                      beq #0x5d4e90
005d4dd8  01 30 43 e2                                      sub r3, r3, #1
005d4ddc  73 90 ef e6                                      uxtb sb, r3
005d4de0  34 20 a0 e3                                      mov r2, #0x34
005d4de4  99 22 29 e0                                      mla sb, sb, r2, r2
005d4de8  00 60 a0 e3                                      mov r6, #0
005d4dec  04 30 98 e5                                      ldr r3, [r8, #4]
005d4df0  08 70 9a e5                                      ldr r7, [sl, #8]
005d4df4  00 00 53 e3                                      cmp r3, #0
005d4df8  06 70 87 e0                                      add r7, r7, r6
005d4dfc  1b 00 00 0a                                      beq #0x5d4e70
005d4e00  20 00 97 e5                                      ldr r0, [r7, #0x20]
005d4e04  24 40 97 e5                                      ldr r4, [r7, #0x24]
005d4e08  b6 c3 d0 e1                                      ldrh ip, [r0, #0x36]
005d4e0c  be 12 d0 e1                                      ldrh r1, [r0, #0x2e]
005d4e10  bc 22 d0 e1                                      ldrh r2, [r0, #0x2c]
005d4e14  b4 33 d0 e1                                      ldrh r3, [r0, #0x34]
005d4e18  01 50 8c e0                                      add r5, ip, r1
005d4e1c  75 50 ff e6                                      uxth r5, r5
005d4e20  05 50 62 e0                                      rsb r5, r2, r5
005d4e24  05 50 63 e0                                      rsb r5, r3, r5
005d4e28  75 50 ff e6                                      uxth r5, r5
005d4e2c  85 50 84 e0                                      add r5, r4, r5, lsl #1
005d4e30  04 00 55 e1                                      cmp r5, r4
005d4e34  02 00 00 1a                                      bne #0x5d4e44
005d4e38  0d 00 00 ea                                      b #0x5d4e74
005d4e3c  04 00 55 e1                                      cmp r5, r4
005d4e40  0a 00 00 0a                                      beq #0x5d4e70
005d4e44  b0 10 d4 e1                                      ldrh r1, [r4]
005d4e48  02 40 84 e2                                      add r4, r4, #2
005d4e4c  02 09 11 e3                                      tst r1, #0x8000
005d4e50  f9 ff ff 0a                                      beq #0x5d4e3c
005d4e54  04 30 98 e5                                      ldr r3, [r8, #4]
005d4e58  81 18 a0 e1                                      lsl r1, r1, #0x11
005d4e5c  e4 00 93 e5                                      ldr r0, [r3, #0xe4]
005d4e60  a1 18 a0 e1                                      lsr r1, r1, #0x11
005d4e64  b8 93 ff eb                                      bl #0x5b9d4c
005d4e68  04 00 55 e1                                      cmp r5, r4
005d4e6c  f4 ff ff 1a                                      bne #0x5d4e44
005d4e70  20 00 97 e5                                      ldr r0, [r7, #0x20]
005d4e74  00 00 50 e3                                      cmp r0, #0
005d4e78  00 00 00 0a                                      beq #0x5d4e80
005d4e7c  c0 21 f5 eb                                      bl #0x31d584
005d4e80  34 60 86 e2                                      add r6, r6, #0x34
005d4e84  09 00 56 e1                                      cmp r6, sb
005d4e88  d7 ff ff 1a                                      bne #0x5d4dec
005d4e8c  18 40 98 e5                                      ldr r4, [r8, #0x18]
005d4e90  04 30 9d e5                                      ldr r3, [sp, #4]
005d4e94  0c b0 8b e2                                      add fp, fp, #0xc
005d4e98  03 00 5b e1                                      cmp fp, r3
005d4e9c  c9 ff ff 1a                                      bne #0x5d4dc8
005d4ea0  10 30 d8 e5                                      ldrb r3, [r8, #0x10]
005d4ea4  0c 50 a0 e3                                      mov r5, #0xc
005d4ea8  95 43 25 e0                                      mla r5, r5, r3, r4
005d4eac  05 00 54 e1                                      cmp r4, r5
005d4eb0  0b 00 00 0a                                      beq #0x5d4ee4
005d4eb4  00 00 94 e5                                      ldr r0, [r4]
005d4eb8  0c 40 84 e2                                      add r4, r4, #0xc
005d4ebc  00 00 50 e3                                      cmp r0, #0
005d4ec0  05 00 00 0a                                      beq #0x5d4edc
005d4ec4  00 30 90 e5                                      ldr r3, [r0]
005d4ec8  01 30 43 e2                                      sub r3, r3, #1
005d4ecc  00 00 53 e3                                      cmp r3, #0
005d4ed0  00 30 80 e5                                      str r3, [r0]
005d4ed4  00 00 00 1a                                      bne #0x5d4edc
005d4ed8  af 3f 03 eb                                      bl #0x6a4d9c
005d4edc  04 00 55 e1                                      cmp r5, r4
005d4ee0  f3 ff ff 1a                                      bne #0x5d4eb4
005d4ee4  20 40 98 e5                                      ldr r4, [r8, #0x20]
005d4ee8  be 50 d8 e1                                      ldrh r5, [r8, #0xe]
005d4eec  05 52 84 e0                                      add r5, r4, r5, lsl #4
005d4ef0  05 00 54 e1                                      cmp r4, r5
005d4ef4  0b 00 00 0a                                      beq #0x5d4f28
005d4ef8  00 00 94 e5                                      ldr r0, [r4]
005d4efc  10 40 84 e2                                      add r4, r4, #0x10
005d4f00  00 00 50 e3                                      cmp r0, #0
005d4f04  05 00 00 0a                                      beq #0x5d4f20
005d4f08  00 30 90 e5                                      ldr r3, [r0]
005d4f0c  01 30 43 e2                                      sub r3, r3, #1
005d4f10  00 00 53 e3                                      cmp r3, #0
005d4f14  00 30 80 e5                                      str r3, [r0]
005d4f18  00 00 00 1a                                      bne #0x5d4f20
005d4f1c  9e 3f 03 eb                                      bl #0x6a4d9c
005d4f20  04 00 55 e1                                      cmp r5, r4
005d4f24  f3 ff ff 1a                                      bne #0x5d4ef8
005d4f28  08 00 a0 e1                                      mov r0, r8
005d4f2c  0c d0 8d e2                                      add sp, sp, #0xc
005d4f30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005d66f4, declared_size=428, range_size=428, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZN6glitch5video17CMaterialRenderer21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::CMaterialRenderer::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
005d66f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d66f8  90 31 9f e5                                      ldr r3, [pc, #0x190]
005d66fc  90 c1 9f e5                                      ldr ip, [pc, #0x190]
005d6700  34 d0 4d e2                                      sub sp, sp, #0x34
005d6704  03 30 8f e0                                      add r3, pc, r3
005d6708  10 30 8d e5                                      str r3, [sp, #0x10]
005d670c  0c 30 93 e7                                      ldr r3, [r3, ip]
005d6710  01 40 a0 e1                                      mov r4, r1
005d6714  14 c0 8d e5                                      str ip, [sp, #0x14]
005d6718  00 30 93 e5                                      ldr r3, [r3]
005d671c  02 b0 a0 e1                                      mov fp, r2
005d6720  08 00 8d e5                                      str r0, [sp, #8]
005d6724  2c 30 8d e5                                      str r3, [sp, #0x2c]
005d6728  54 fe ff eb                                      bl #0x5d6080
005d672c  64 11 9f e5                                      ldr r1, [pc, #0x164]
005d6730  00 30 94 e5                                      ldr r3, [r4]
005d6734  04 00 a0 e1                                      mov r0, r4
005d6738  01 10 8f e0                                      add r1, pc, r1
005d673c  0f e0 a0 e1                                      mov lr, pc
005d6740  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005d6744  08 10 9d e5                                      ldr r1, [sp, #8]
005d6748  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
005d674c  00 00 53 e3                                      cmp r3, #0
005d6750  40 00 00 0a                                      beq #0x5d6858
005d6754  01 30 43 e2                                      sub r3, r3, #1
005d6758  73 20 ef e6                                      uxtb r2, r3
005d675c  0c 30 a0 e3                                      mov r3, #0xc
005d6760  92 33 23 e0                                      mla r3, r2, r3, r3
005d6764  00 20 a0 e3                                      mov r2, #0
005d6768  0c 30 8d e5                                      str r3, [sp, #0xc]
005d676c  28 31 9f e5                                      ldr r3, [pc, #0x128]
005d6770  04 20 8d e5                                      str r2, [sp, #4]
005d6774  1c 70 8d e2                                      add r7, sp, #0x1c
005d6778  03 30 8f e0                                      add r3, pc, r3
005d677c  00 30 8d e5                                      str r3, [sp]
005d6780  08 30 9d e5                                      ldr r3, [sp, #8]
005d6784  04 c0 9d e5                                      ldr ip, [sp, #4]
005d6788  04 00 a0 e1                                      mov r0, r4
005d678c  18 a0 93 e5                                      ldr sl, [r3, #0x18]
005d6790  00 30 94 e5                                      ldr r3, [r4]
005d6794  0c 10 9a e7                                      ldr r1, [sl, ip]
005d6798  30 30 93 e5                                      ldr r3, [r3, #0x30]
005d679c  0c a0 8a e0                                      add sl, sl, ip
005d67a0  00 00 51 e3                                      cmp r1, #0
005d67a4  04 10 81 12                                      addne r1, r1, #4
005d67a8  33 ff 2f e1                                      blx r3
005d67ac  04 90 da e5                                      ldrb sb, [sl, #4]
005d67b0  00 00 59 e3                                      cmp sb, #0
005d67b4  1c 00 00 0a                                      beq #0x5d682c
005d67b8  01 90 49 e2                                      sub sb, sb, #1
005d67bc  79 90 ef e6                                      uxtb sb, sb
005d67c0  34 10 a0 e3                                      mov r1, #0x34
005d67c4  99 11 29 e0                                      mla sb, sb, r1, r1
005d67c8  00 50 a0 e3                                      mov r5, #0
005d67cc  05 60 a0 e1                                      mov r6, r5
005d67d0  08 80 9a e5                                      ldr r8, [sl, #8]
005d67d4  06 20 a0 e1                                      mov r2, r6
005d67d8  00 10 9d e5                                      ldr r1, [sp]
005d67dc  07 00 a0 e1                                      mov r0, r7
005d67e0  bf e0 f4 eb                                      bl #0x30eae4
005d67e4  05 80 88 e0                                      add r8, r8, r5
005d67e8  00 30 94 e5                                      ldr r3, [r4]
005d67ec  04 00 a0 e1                                      mov r0, r4
005d67f0  07 10 a0 e1                                      mov r1, r7
005d67f4  0f e0 a0 e1                                      mov lr, pc
005d67f8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005d67fc  08 00 a0 e1                                      mov r0, r8
005d6800  04 10 a0 e1                                      mov r1, r4
005d6804  0b 20 a0 e1                                      mov r2, fp
005d6808  98 2b 00 eb                                      bl #0x5e1670
005d680c  34 50 85 e2                                      add r5, r5, #0x34
005d6810  00 30 94 e5                                      ldr r3, [r4]
005d6814  04 00 a0 e1                                      mov r0, r4
005d6818  0f e0 a0 e1                                      mov lr, pc
005d681c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005d6820  09 00 55 e1                                      cmp r5, sb
005d6824  01 60 86 e2                                      add r6, r6, #1
005d6828  e8 ff ff 1a                                      bne #0x5d67d0
005d682c  04 20 9d e5                                      ldr r2, [sp, #4]
005d6830  04 00 a0 e1                                      mov r0, r4
005d6834  0c 20 82 e2                                      add r2, r2, #0xc
005d6838  04 20 8d e5                                      str r2, [sp, #4]
005d683c  00 30 94 e5                                      ldr r3, [r4]
005d6840  0f e0 a0 e1                                      mov lr, pc
005d6844  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005d6848  04 30 9d e5                                      ldr r3, [sp, #4]
005d684c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005d6850  0c 00 53 e1                                      cmp r3, ip
005d6854  c9 ff ff 1a                                      bne #0x5d6780
005d6858  00 30 94 e5                                      ldr r3, [r4]
005d685c  04 00 a0 e1                                      mov r0, r4
005d6860  0f e0 a0 e1                                      mov lr, pc
005d6864  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005d6868  10 20 9d e5                                      ldr r2, [sp, #0x10]
005d686c  14 10 9d e5                                      ldr r1, [sp, #0x14]
005d6870  01 30 92 e7                                      ldr r3, [r2, r1]
005d6874  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005d6878  00 30 93 e5                                      ldr r3, [r3]
005d687c  03 00 52 e1                                      cmp r2, r3
005d6880  01 00 00 1a                                      bne #0x5d688c
005d6884  34 d0 8d e2                                      add sp, sp, #0x34
005d6888  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d688c  9f de f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005d6890  8c e3 3b 00 ac 40 00 00 88 a3 30 00 58 a3 30 00  .byte 0x8c, 0xe3, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0xa3, 0x30, 0x00, 0x58, 0xa3, 0x30, 0x00

; FUNCTION 0x005d7378, declared_size=512, range_size=512, mode=arm
; class-group: glitch::video::CMaterialRenderer
; alias: _ZNK6glitch5video17CMaterialRenderer19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::CMaterialRenderer::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005d7378  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d737c  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
005d7380  dc c1 9f e5                                      ldr ip, [pc, #0x1dc]
005d7384  34 d0 4d e2                                      sub sp, sp, #0x34
005d7388  03 30 8f e0                                      add r3, pc, r3
005d738c  10 30 8d e5                                      str r3, [sp, #0x10]
005d7390  0c 30 93 e7                                      ldr r3, [r3, ip]
005d7394  01 40 a0 e1                                      mov r4, r1
005d7398  c8 11 9f e5                                      ldr r1, [pc, #0x1c8]
005d739c  00 30 93 e5                                      ldr r3, [r3]
005d73a0  08 00 8d e5                                      str r0, [sp, #8]
005d73a4  14 c0 8d e5                                      str ip, [sp, #0x14]
005d73a8  2c 30 8d e5                                      str r3, [sp, #0x2c]
005d73ac  00 20 8d e5                                      str r2, [sp]
005d73b0  08 20 90 e5                                      ldr r2, [r0, #8]
005d73b4  00 c0 94 e5                                      ldr ip, [r4]
005d73b8  01 10 8f e0                                      add r1, pc, r1
005d73bc  01 30 a0 e3                                      mov r3, #1
005d73c0  04 00 a0 e1                                      mov r0, r4
005d73c4  0f e0 a0 e1                                      mov lr, pc
005d73c8  7c f0 9c e5                                      ldr pc, [ip, #0x7c]
005d73cc  98 11 9f e5                                      ldr r1, [pc, #0x198]
005d73d0  00 30 94 e5                                      ldr r3, [r4]
005d73d4  04 00 a0 e1                                      mov r0, r4
005d73d8  01 10 8f e0                                      add r1, pc, r1
005d73dc  0f e0 a0 e1                                      mov lr, pc
005d73e0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005d73e4  04 10 a0 e1                                      mov r1, r4
005d73e8  08 00 9d e5                                      ldr r0, [sp, #8]
005d73ec  9b fd ff eb                                      bl #0x5d6a60
005d73f0  04 00 a0 e1                                      mov r0, r4
005d73f4  00 30 94 e5                                      ldr r3, [r4]
005d73f8  0f e0 a0 e1                                      mov lr, pc
005d73fc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005d7400  68 11 9f e5                                      ldr r1, [pc, #0x168]
005d7404  00 30 94 e5                                      ldr r3, [r4]
005d7408  04 00 a0 e1                                      mov r0, r4
005d740c  01 10 8f e0                                      add r1, pc, r1
005d7410  0f e0 a0 e1                                      mov lr, pc
005d7414  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005d7418  08 10 9d e5                                      ldr r1, [sp, #8]
005d741c  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
005d7420  00 00 53 e3                                      cmp r3, #0
005d7424  3f 00 00 0a                                      beq #0x5d7528
005d7428  01 30 43 e2                                      sub r3, r3, #1
005d742c  73 20 ef e6                                      uxtb r2, r3
005d7430  0c 30 a0 e3                                      mov r3, #0xc
005d7434  92 33 23 e0                                      mla r3, r2, r3, r3
005d7438  34 b1 9f e5                                      ldr fp, [pc, #0x134]
005d743c  00 20 a0 e3                                      mov r2, #0
005d7440  0c 30 8d e5                                      str r3, [sp, #0xc]
005d7444  0b b0 8f e0                                      add fp, pc, fp
005d7448  04 20 8d e5                                      str r2, [sp, #4]
005d744c  1c 70 8d e2                                      add r7, sp, #0x1c
005d7450  08 30 9d e5                                      ldr r3, [sp, #8]
005d7454  04 c0 9d e5                                      ldr ip, [sp, #4]
005d7458  04 00 a0 e1                                      mov r0, r4
005d745c  18 a0 93 e5                                      ldr sl, [r3, #0x18]
005d7460  00 30 94 e5                                      ldr r3, [r4]
005d7464  0c 10 9a e7                                      ldr r1, [sl, ip]
005d7468  30 30 93 e5                                      ldr r3, [r3, #0x30]
005d746c  0c a0 8a e0                                      add sl, sl, ip
005d7470  00 00 51 e3                                      cmp r1, #0
005d7474  04 10 81 12                                      addne r1, r1, #4
005d7478  33 ff 2f e1                                      blx r3
005d747c  04 90 da e5                                      ldrb sb, [sl, #4]
005d7480  00 00 59 e3                                      cmp sb, #0
005d7484  1c 00 00 0a                                      beq #0x5d74fc
005d7488  01 90 49 e2                                      sub sb, sb, #1
005d748c  79 90 ef e6                                      uxtb sb, sb
005d7490  34 e0 a0 e3                                      mov lr, #0x34
005d7494  99 ee 29 e0                                      mla sb, sb, lr, lr
005d7498  00 50 a0 e3                                      mov r5, #0
005d749c  05 60 a0 e1                                      mov r6, r5
005d74a0  08 80 9a e5                                      ldr r8, [sl, #8]
005d74a4  06 20 a0 e1                                      mov r2, r6
005d74a8  0b 10 a0 e1                                      mov r1, fp
005d74ac  07 00 a0 e1                                      mov r0, r7
005d74b0  8b dd f4 eb                                      bl #0x30eae4
005d74b4  05 80 88 e0                                      add r8, r8, r5
005d74b8  00 30 94 e5                                      ldr r3, [r4]
005d74bc  04 00 a0 e1                                      mov r0, r4
005d74c0  07 10 a0 e1                                      mov r1, r7
005d74c4  0f e0 a0 e1                                      mov lr, pc
005d74c8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005d74cc  08 00 a0 e1                                      mov r0, r8
005d74d0  04 10 a0 e1                                      mov r1, r4
005d74d4  00 20 9d e5                                      ldr r2, [sp]
005d74d8  e1 26 00 eb                                      bl #0x5e1064
005d74dc  34 50 85 e2                                      add r5, r5, #0x34
005d74e0  00 30 94 e5                                      ldr r3, [r4]
005d74e4  04 00 a0 e1                                      mov r0, r4
005d74e8  0f e0 a0 e1                                      mov lr, pc
005d74ec  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005d74f0  09 00 55 e1                                      cmp r5, sb
005d74f4  01 60 86 e2                                      add r6, r6, #1
005d74f8  e8 ff ff 1a                                      bne #0x5d74a0
005d74fc  04 10 9d e5                                      ldr r1, [sp, #4]
005d7500  04 00 a0 e1                                      mov r0, r4
005d7504  0c 10 81 e2                                      add r1, r1, #0xc
005d7508  04 10 8d e5                                      str r1, [sp, #4]
005d750c  00 30 94 e5                                      ldr r3, [r4]
005d7510  0f e0 a0 e1                                      mov lr, pc
005d7514  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005d7518  04 20 9d e5                                      ldr r2, [sp, #4]
005d751c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005d7520  03 00 52 e1                                      cmp r2, r3
005d7524  c9 ff ff 1a                                      bne #0x5d7450
005d7528  00 30 94 e5                                      ldr r3, [r4]
005d752c  04 00 a0 e1                                      mov r0, r4
005d7530  0f e0 a0 e1                                      mov lr, pc
005d7534  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005d7538  10 10 9d e5                                      ldr r1, [sp, #0x10]
005d753c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005d7540  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005d7544  0c 30 91 e7                                      ldr r3, [r1, ip]
005d7548  00 30 93 e5                                      ldr r3, [r3]
005d754c  03 00 52 e1                                      cmp r2, r3
005d7550  01 00 00 1a                                      bne #0x5d755c
005d7554  34 d0 8d e2                                      add sp, sp, #0x34
005d7558  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d755c  6b db f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005d7560  08 d7 3b 00 ac 40 00 00 c8 49 2f 00 00 97 30 00  .byte 0x08, 0xd7, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0x49, 0x2f, 0x00, 0x00, 0x97, 0x30, 0x00
005d7570  b4 96 30 00 8c 96 30 00                          .byte 0xb4, 0x96, 0x30, 0x00, 0x8c, 0x96, 0x30, 0x00
