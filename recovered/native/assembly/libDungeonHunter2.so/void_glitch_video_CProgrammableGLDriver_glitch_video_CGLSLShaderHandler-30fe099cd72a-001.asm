; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b2fac, declared_size=1524, range_size=1524, mode=arm
; class-group: void glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE34commitCurrentMaterialParametersAuxINS0_31CGlobalMaterialParameterManagerEEEvPKNS0_11CGLSLShaderEPKT_PKNS0_23SShaderParameterBindingESE_
; demangled: void glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialParametersAux<glitch::video::CGlobalMaterialParameterManager>(glitch::video::CGLSLShader const*, glitch::video::CGlobalMaterialParameterManager const*, glitch::video::SShaderParameterBinding const*, glitch::video::SShaderParameterBinding const*)
; decoder-mode: arm
005b2fac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b2fb0  d8 c5 9f e5                                      ldr ip, [pc, #0x5d8]
005b2fb4  4c d0 4d e2                                      sub sp, sp, #0x4c
005b2fb8  02 80 a0 e1                                      mov r8, r2
005b2fbc  70 20 9d e5                                      ldr r2, [sp, #0x70]
005b2fc0  0c c0 8f e0                                      add ip, pc, ip
005b2fc4  10 c0 8d e5                                      str ip, [sp, #0x10]
005b2fc8  24 00 8d e5                                      str r0, [sp, #0x24]
005b2fcc  0c 10 8d e5                                      str r1, [sp, #0xc]
005b2fd0  02 00 53 e1                                      cmp r3, r2
005b2fd4  03 50 a0 e1                                      mov r5, r3
005b2fd8  2c 70 98 e5                                      ldr r7, [r8, #0x2c]
005b2fdc  7e 00 00 0a                                      beq #0x5b31dc
005b2fe0  ac 35 9f e5                                      ldr r3, [pc, #0x5ac]
005b2fe4  ac c5 9f e5                                      ldr ip, [pc, #0x5ac]
005b2fe8  ac 15 9f e5                                      ldr r1, [pc, #0x5ac]
005b2fec  18 30 8d e5                                      str r3, [sp, #0x18]
005b2ff0  00 20 a0 e3                                      mov r2, #0
005b2ff4  38 30 8d e2                                      add r3, sp, #0x38
005b2ff8  28 c0 8d e5                                      str ip, [sp, #0x28]
005b2ffc  34 10 8d e5                                      str r1, [sp, #0x34]
005b3000  1c 20 8d e5                                      str r2, [sp, #0x1c]
005b3004  14 30 8d e5                                      str r3, [sp, #0x14]
005b3008  18 10 98 e5                                      ldr r1, [r8, #0x18]
005b300c  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
005b3010  b2 40 d5 e1                                      ldrh r4, [r5, #2]
005b3014  b0 60 d5 e1                                      ldrh r6, [r5]
005b3018  03 30 61 e0                                      rsb r3, r1, r3
005b301c  43 31 a0 e1                                      asr r3, r3, #2
005b3020  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005b3024  83 20 83 e0                                      add r2, r3, r3, lsl #1
005b3028  c6 07 a0 e1                                      asr r0, r6, #0xf
005b302c  02 22 82 e0                                      add r2, r2, r2, lsl #4
005b3030  05 00 80 e2                                      add r0, r0, #5
005b3034  02 24 82 e0                                      add r2, r2, r2, lsl #8
005b3038  86 68 a0 e1                                      lsl r6, r6, #0x11
005b303c  02 28 82 e0                                      add r2, r2, r2, lsl #16
005b3040  80 01 9c e7                                      ldr r0, [ip, r0, lsl #3]
005b3044  02 21 83 e0                                      add r2, r3, r2, lsl #2
005b3048  02 00 54 e1                                      cmp r4, r2
005b304c  10 20 9d 25                                      ldrhs r2, [sp, #0x10]
005b3050  18 10 9d 25                                      ldrhs r1, [sp, #0x18]
005b3054  14 30 a0 33                                      movlo r3, #0x14
005b3058  93 14 24 30                                      mlalo r4, r3, r4, r1
005b305c  01 40 92 27                                      ldrhs r4, [r2, r1]
005b3060  a6 68 a0 e1                                      lsr r6, r6, #0x11
005b3064  00 30 94 e5                                      ldr r3, [r4]
005b3068  06 62 80 e0                                      add r6, r0, r6, lsl #4
005b306c  00 00 53 e3                                      cmp r3, #0
005b3070  00 40 a0 03                                      moveq r4, #0
005b3074  06 30 d4 e5                                      ldrb r3, [r4, #6]
005b3078  01 30 43 e2                                      sub r3, r3, #1
005b307c  11 00 53 e3                                      cmp r3, #0x11
005b3080  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005b3084  50 00 00 ea                                      b #0x5b31cc
005b3088  05 01 00 ea                                      b #0x5b34a4
005b308c  fa 00 00 ea                                      b #0x5b347c
005b3090  ef 00 00 ea                                      b #0x5b3454
005b3094  e4 00 00 ea                                      b #0x5b342c
005b3098  d9 00 00 ea                                      b #0x5b3404
005b309c  ce 00 00 ea                                      b #0x5b33dc
005b30a0  c3 00 00 ea                                      b #0x5b33b4
005b30a4  4e 00 00 ea                                      b #0x5b31e4
005b30a8  47 00 00 ea                                      b #0x5b31cc
005b30ac  46 00 00 ea                                      b #0x5b31cc
005b30b0  93 00 00 ea                                      b #0x5b3304
005b30b4  62 00 00 ea                                      b #0x5b3244
005b30b8  61 00 00 ea                                      b #0x5b3244
005b30bc  60 00 00 ea                                      b #0x5b3244
005b30c0  5f 00 00 ea                                      b #0x5b3244
005b30c4  01 00 00 ea                                      b #0x5b30d0
005b30c8  48 00 00 ea                                      b #0x5b31f0
005b30cc  51 00 00 ea                                      b #0x5b3218
005b30d0  08 10 96 e5                                      ldr r1, [r6, #8]
005b30d4  01 02 a0 e1                                      lsl r0, r1, #4
005b30d8  08 10 8d e5                                      str r1, [sp, #8]
005b30dc  44 05 fe eb                                      bl #0x5345f4
005b30e0  08 20 9d e5                                      ldr r2, [sp, #8]
005b30e4  00 30 a0 e1                                      mov r3, r0
005b30e8  00 00 52 e3                                      cmp r2, #0
005b30ec  2c 00 00 0a                                      beq #0x5b31a4
005b30f0  2c 80 8d e5                                      str r8, [sp, #0x2c]
005b30f4  00 a0 a0 e3                                      mov sl, #0
005b30f8  20 60 8d e5                                      str r6, [sp, #0x20]
005b30fc  00 80 a0 e1                                      mov r8, r0
005b3100  30 50 8d e5                                      str r5, [sp, #0x30]
005b3104  0c 60 94 e5                                      ldr r6, [r4, #0xc]
005b3108  0a 52 88 e0                                      add r5, r8, sl, lsl #4
005b310c  06 00 d7 e7                                      ldrb r0, [r7, r6]
005b3110  13 6e f5 eb                                      bl #0x30e964
005b3114  81 10 08 e3                                      movw r1, #0x8081
005b3118  80 1b 43 e3                                      movt r1, #0x3b80
005b311c  12 6f f5 eb                                      bl #0x30ed6c
005b3120  06 60 87 e0                                      add r6, r7, r6
005b3124  00 30 a0 e1                                      mov r3, r0
005b3128  01 00 d6 e5                                      ldrb r0, [r6, #1]
005b312c  04 30 8d e5                                      str r3, [sp, #4]
005b3130  0b 6e f5 eb                                      bl #0x30e964
005b3134  81 10 08 e3                                      movw r1, #0x8081
005b3138  80 1b 43 e3                                      movt r1, #0x3b80
005b313c  0a 6f f5 eb                                      bl #0x30ed6c
005b3140  00 b0 a0 e1                                      mov fp, r0
005b3144  02 00 d6 e5                                      ldrb r0, [r6, #2]
005b3148  05 6e f5 eb                                      bl #0x30e964
005b314c  81 10 08 e3                                      movw r1, #0x8081
005b3150  80 1b 43 e3                                      movt r1, #0x3b80
005b3154  04 6f f5 eb                                      bl #0x30ed6c
005b3158  00 90 a0 e1                                      mov sb, r0
005b315c  03 00 d6 e5                                      ldrb r0, [r6, #3]
005b3160  ff 6d f5 eb                                      bl #0x30e964
005b3164  81 10 08 e3                                      movw r1, #0x8081
005b3168  80 1b 43 e3                                      movt r1, #0x3b80
005b316c  fe 6e f5 eb                                      bl #0x30ed6c
005b3170  04 b0 85 e5                                      str fp, [r5, #4]
005b3174  0c 00 85 e5                                      str r0, [r5, #0xc]
005b3178  08 90 85 e5                                      str sb, [r5, #8]
005b317c  04 30 9d e5                                      ldr r3, [sp, #4]
005b3180  0a 32 88 e7                                      str r3, [r8, sl, lsl #4]
005b3184  08 30 9d e5                                      ldr r3, [sp, #8]
005b3188  01 a0 8a e2                                      add sl, sl, #1
005b318c  03 00 5a e1                                      cmp sl, r3
005b3190  db ff ff 1a                                      bne #0x5b3104
005b3194  08 30 a0 e1                                      mov r3, r8
005b3198  20 60 9d e5                                      ldr r6, [sp, #0x20]
005b319c  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
005b31a0  30 50 9d e5                                      ldr r5, [sp, #0x30]
005b31a4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b31a8  03 20 a0 e1                                      mov r2, r3
005b31ac  08 10 9d e5                                      ldr r1, [sp, #8]
005b31b0  04 30 8d e5                                      str r3, [sp, #4]
005b31b4  f9 6d f5 eb                                      bl #0x30e9a0
005b31b8  04 30 9d e5                                      ldr r3, [sp, #4]
005b31bc  00 00 53 e3                                      cmp r3, #0
005b31c0  01 00 00 0a                                      beq #0x5b31cc
005b31c4  03 00 a0 e1                                      mov r0, r3
005b31c8  2e 05 fe eb                                      bl #0x534688
005b31cc  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b31d0  04 50 85 e2                                      add r5, r5, #4
005b31d4  05 00 5c e1                                      cmp ip, r5
005b31d8  8a ff ff 1a                                      bne #0x5b3008
005b31dc  4c d0 8d e2                                      add sp, sp, #0x4c
005b31e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b31e4  b4 30 d6 e1                                      ldrh r3, [r6, #4]
005b31e8  11 00 53 e3                                      cmp r3, #0x11
005b31ec  c5 00 00 0a                                      beq #0x5b3508
005b31f0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b31f4  08 10 96 e5                                      ldr r1, [r6, #8]
005b31f8  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b31fc  02 20 87 e0                                      add r2, r7, r2
005b3200  e6 6d f5 eb                                      bl #0x30e9a0
005b3204  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b3208  04 50 85 e2                                      add r5, r5, #4
005b320c  05 00 5c e1                                      cmp ip, r5
005b3210  7c ff ff 1a                                      bne #0x5b3008
005b3214  f0 ff ff ea                                      b #0x5b31dc
005b3218  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b321c  06 30 a0 e1                                      mov r3, r6
005b3220  24 00 9d e5                                      ldr r0, [sp, #0x24]
005b3224  02 20 97 e7                                      ldr r2, [r7, r2]
005b3228  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005b322c  92 f9 ff eb                                      bl #0x5b187c
005b3230  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b3234  04 50 85 e2                                      add r5, r5, #4
005b3238  05 00 5c e1                                      cmp ip, r5
005b323c  71 ff ff 1a                                      bne #0x5b3008
005b3240  e5 ff ff ea                                      b #0x5b31dc
005b3244  b4 30 d6 e1                                      ldrh r3, [r6, #4]
005b3248  21 00 53 e3                                      cmp r3, #0x21
005b324c  c1 00 00 0a                                      beq #0x5b3558
005b3250  08 30 96 e5                                      ldr r3, [r6, #8]
005b3254  00 00 53 e3                                      cmp r3, #0
005b3258  db ff ff 0a                                      beq #0x5b31cc
005b325c  08 80 8d e5                                      str r8, [sp, #8]
005b3260  1c a0 9d e5                                      ldr sl, [sp, #0x1c]
005b3264  04 80 a0 e1                                      mov r8, r4
005b3268  24 40 9d e5                                      ldr r4, [sp, #0x24]
005b326c  00 90 a0 e3                                      mov sb, #0
005b3270  03 b0 a0 e1                                      mov fp, r3
005b3274  20 50 8d e5                                      str r5, [sp, #0x20]
005b3278  14 00 9d e5                                      ldr r0, [sp, #0x14]
005b327c  07 10 a0 e1                                      mov r1, r7
005b3280  08 20 a0 e1                                      mov r2, r8
005b3284  04 30 a0 e1                                      mov r3, r4
005b3288  b2 fc ff eb                                      bl #0x5b2558
005b328c  38 20 9d e5                                      ldr r2, [sp, #0x38]
005b3290  0c 50 96 e5                                      ldr r5, [r6, #0xc]
005b3294  0a 10 a0 e1                                      mov r1, sl
005b3298  38 30 92 e5                                      ldr r3, [r2, #0x38]
005b329c  04 00 a0 e1                                      mov r0, r4
005b32a0  01 90 89 e2                                      add sb, sb, #1
005b32a4  03 30 03 e2                                      and r3, r3, #3
005b32a8  10 fd ff eb                                      bl #0x5b26f0
005b32ac  05 00 a0 e1                                      mov r0, r5
005b32b0  0a 10 a0 e1                                      mov r1, sl
005b32b4  ce 6d f5 eb                                      bl #0x30e9f4
005b32b8  38 00 9d e5                                      ldr r0, [sp, #0x38]
005b32bc  01 a0 8a e2                                      add sl, sl, #1
005b32c0  7a a0 ff e6                                      uxth sl, sl
005b32c4  00 00 50 e3                                      cmp r0, #0
005b32c8  00 00 00 0a                                      beq #0x5b32d0
005b32cc  ac a8 f5 eb                                      bl #0x31d584
005b32d0  0b 00 59 e1                                      cmp sb, fp
005b32d4  e7 ff ff 1a                                      bne #0x5b3278
005b32d8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
005b32dc  20 50 9d e5                                      ldr r5, [sp, #0x20]
005b32e0  08 80 9d e5                                      ldr r8, [sp, #8]
005b32e4  09 90 8c e0                                      add sb, ip, sb
005b32e8  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b32ec  04 50 85 e2                                      add r5, r5, #4
005b32f0  79 90 ff e6                                      uxth sb, sb
005b32f4  05 00 5c e1                                      cmp ip, r5
005b32f8  1c 90 8d e5                                      str sb, [sp, #0x1c]
005b32fc  41 ff ff 1a                                      bne #0x5b3008
005b3300  b5 ff ff ea                                      b #0x5b31dc
005b3304  08 b0 96 e5                                      ldr fp, [r6, #8]
005b3308  01 00 5b e3                                      cmp fp, #1
005b330c  6e 00 00 0a                                      beq #0x5b34cc
005b3310  0b 03 a0 e1                                      lsl r0, fp, #6
005b3314  b6 04 fe eb                                      bl #0x5345f4
005b3318  00 00 5b e3                                      cmp fp, #0
005b331c  08 00 8d e5                                      str r0, [sp, #8]
005b3320  16 00 00 0a                                      beq #0x5b3380
005b3324  00 90 a0 e1                                      mov sb, r0
005b3328  00 a0 a0 e3                                      mov sl, #0
005b332c  00 00 00 ea                                      b #0x5b3334
005b3330  40 90 89 e2                                      add sb, sb, #0x40
005b3334  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005b3338  09 c0 a0 e1                                      mov ip, sb
005b333c  0a 31 83 e0                                      add r3, r3, sl, lsl #2
005b3340  03 e0 97 e7                                      ldr lr, [r7, r3]
005b3344  01 a0 8a e2                                      add sl, sl, #1
005b3348  00 00 5e e3                                      cmp lr, #0
005b334c  10 20 9d 05                                      ldreq r2, [sp, #0x10]
005b3350  28 10 9d 05                                      ldreq r1, [sp, #0x28]
005b3354  01 e0 92 07                                      ldreq lr, [r2, r1]
005b3358  0b 00 5a e1                                      cmp sl, fp
005b335c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005b3360  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005b3364  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005b3368  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005b336c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005b3370  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005b3374  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
005b3378  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005b337c  eb ff ff 1a                                      bne #0x5b3330
005b3380  08 30 9d e5                                      ldr r3, [sp, #8]
005b3384  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b3388  0b 10 a0 e1                                      mov r1, fp
005b338c  00 20 a0 e3                                      mov r2, #0
005b3390  91 6d f5 eb                                      bl #0x30e9dc
005b3394  08 30 9d e5                                      ldr r3, [sp, #8]
005b3398  00 00 53 e3                                      cmp r3, #0
005b339c  88 ff ff 1a                                      bne #0x5b31c4
005b33a0  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b33a4  04 50 85 e2                                      add r5, r5, #4
005b33a8  05 00 5c e1                                      cmp ip, r5
005b33ac  15 ff ff 1a                                      bne #0x5b3008
005b33b0  89 ff ff ea                                      b #0x5b31dc
005b33b4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b33b8  08 10 96 e5                                      ldr r1, [r6, #8]
005b33bc  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b33c0  02 20 87 e0                                      add r2, r7, r2
005b33c4  6c 6d f5 eb                                      bl #0x30e97c
005b33c8  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b33cc  04 50 85 e2                                      add r5, r5, #4
005b33d0  05 00 5c e1                                      cmp ip, r5
005b33d4  0b ff ff 1a                                      bne #0x5b3008
005b33d8  7f ff ff ea                                      b #0x5b31dc
005b33dc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b33e0  08 10 96 e5                                      ldr r1, [r6, #8]
005b33e4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b33e8  02 20 87 e0                                      add r2, r7, r2
005b33ec  14 6d f5 eb                                      bl #0x30e844
005b33f0  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b33f4  04 50 85 e2                                      add r5, r5, #4
005b33f8  05 00 5c e1                                      cmp ip, r5
005b33fc  01 ff ff 1a                                      bne #0x5b3008
005b3400  75 ff ff ea                                      b #0x5b31dc
005b3404  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b3408  08 10 96 e5                                      ldr r1, [r6, #8]
005b340c  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b3410  02 20 87 e0                                      add r2, r7, r2
005b3414  f8 6c f5 eb                                      bl #0x30e7fc
005b3418  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b341c  04 50 85 e2                                      add r5, r5, #4
005b3420  05 00 5c e1                                      cmp ip, r5
005b3424  f7 fe ff 1a                                      bne #0x5b3008
005b3428  6b ff ff ea                                      b #0x5b31dc
005b342c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b3430  08 10 96 e5                                      ldr r1, [r6, #8]
005b3434  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b3438  02 20 87 e0                                      add r2, r7, r2
005b343c  ef 6b f5 eb                                      bl #0x30e400
005b3440  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b3444  04 50 85 e2                                      add r5, r5, #4
005b3448  05 00 5c e1                                      cmp ip, r5
005b344c  ed fe ff 1a                                      bne #0x5b3008
005b3450  61 ff ff ea                                      b #0x5b31dc
005b3454  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b3458  08 10 96 e5                                      ldr r1, [r6, #8]
005b345c  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b3460  02 20 87 e0                                      add r2, r7, r2
005b3464  2c 6d f5 eb                                      bl #0x30e91c
005b3468  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b346c  04 50 85 e2                                      add r5, r5, #4
005b3470  05 00 5c e1                                      cmp ip, r5
005b3474  e3 fe ff 1a                                      bne #0x5b3008
005b3478  57 ff ff ea                                      b #0x5b31dc
005b347c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b3480  08 10 96 e5                                      ldr r1, [r6, #8]
005b3484  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b3488  02 20 87 e0                                      add r2, r7, r2
005b348c  ce 6c f5 eb                                      bl #0x30e7cc
005b3490  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b3494  04 50 85 e2                                      add r5, r5, #4
005b3498  05 00 5c e1                                      cmp ip, r5
005b349c  d9 fe ff 1a                                      bne #0x5b3008
005b34a0  4d ff ff ea                                      b #0x5b31dc
005b34a4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b34a8  08 10 96 e5                                      ldr r1, [r6, #8]
005b34ac  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b34b0  02 20 87 e0                                      add r2, r7, r2
005b34b4  0b 6e f5 eb                                      bl #0x30ece8
005b34b8  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b34bc  04 50 85 e2                                      add r5, r5, #4
005b34c0  05 00 5c e1                                      cmp ip, r5
005b34c4  cf fe ff 1a                                      bne #0x5b3008
005b34c8  43 ff ff ea                                      b #0x5b31dc
005b34cc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005b34d0  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b34d4  01 10 a0 e3                                      mov r1, #1
005b34d8  03 30 97 e7                                      ldr r3, [r7, r3]
005b34dc  04 50 85 e2                                      add r5, r5, #4
005b34e0  00 00 53 e3                                      cmp r3, #0
005b34e4  10 c0 9d 05                                      ldreq ip, [sp, #0x10]
005b34e8  28 20 9d 05                                      ldreq r2, [sp, #0x28]
005b34ec  02 30 9c 07                                      ldreq r3, [ip, r2]
005b34f0  00 20 a0 e3                                      mov r2, #0
005b34f4  38 6d f5 eb                                      bl #0x30e9dc
005b34f8  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b34fc  05 00 5c e1                                      cmp ip, r5
005b3500  c0 fe ff 1a                                      bne #0x5b3008
005b3504  34 ff ff ea                                      b #0x5b31dc
005b3508  10 10 9d e5                                      ldr r1, [sp, #0x10]
005b350c  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005b3510  14 20 9d e5                                      ldr r2, [sp, #0x14]
005b3514  04 50 85 e2                                      add r5, r5, #4
005b3518  0c 30 91 e7                                      ldr r3, [r1, ip]
005b351c  01 10 a0 e3                                      mov r1, #1
005b3520  00 00 93 e5                                      ldr r0, [r3]
005b3524  04 c0 93 e5                                      ldr ip, [r3, #4]
005b3528  0c e0 93 e5                                      ldr lr, [r3, #0xc]
005b352c  08 30 93 e5                                      ldr r3, [r3, #8]
005b3530  3c c0 8d e5                                      str ip, [sp, #0x3c]
005b3534  38 00 8d e5                                      str r0, [sp, #0x38]
005b3538  40 30 8d e5                                      str r3, [sp, #0x40]
005b353c  44 e0 8d e5                                      str lr, [sp, #0x44]
005b3540  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b3544  15 6d f5 eb                                      bl #0x30e9a0
005b3548  70 c0 9d e5                                      ldr ip, [sp, #0x70]
005b354c  05 00 5c e1                                      cmp ip, r5
005b3550  ac fe ff 1a                                      bne #0x5b3008
005b3554  20 ff ff ea                                      b #0x5b31dc
005b3558  04 20 a0 e1                                      mov r2, r4
005b355c  14 00 9d e5                                      ldr r0, [sp, #0x14]
005b3560  07 10 a0 e1                                      mov r1, r7
005b3564  24 30 9d e5                                      ldr r3, [sp, #0x24]
005b3568  fa fb ff eb                                      bl #0x5b2558
005b356c  38 30 9d e5                                      ldr r3, [sp, #0x38]
005b3570  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b3574  48 10 93 e5                                      ldr r1, [r3, #0x48]
005b3578  96 6c f5 eb                                      bl #0x30e7d8
005b357c  38 00 9d e5                                      ldr r0, [sp, #0x38]
005b3580  00 00 50 e3                                      cmp r0, #0
005b3584  10 ff ff 0a                                      beq #0x5b31cc
005b3588  fd a7 f5 eb                                      bl #0x31d584
005b358c  0e ff ff ea                                      b #0x5b31cc
; mapping-symbol data/literal pool
005b3590  d0 1a 3e 00 14 28 00 00 30 28 00 00 88 35 00 00  .byte 0xd0, 0x1a, 0x3e, 0x00, 0x14, 0x28, 0x00, 0x00, 0x30, 0x28, 0x00, 0x00, 0x88, 0x35, 0x00, 0x00

; FUNCTION 0x005b4da0, declared_size=1440, range_size=1440, mode=arm
; class-group: void glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE34commitCurrentMaterialParametersAuxINS0_9CMaterialEEEvPKNS0_11CGLSLShaderEPKT_PKNS0_23SShaderParameterBindingESE_
; demangled: void glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialParametersAux<glitch::video::CMaterial>(glitch::video::CGLSLShader const*, glitch::video::CMaterial const*, glitch::video::SShaderParameterBinding const*, glitch::video::SShaderParameterBinding const*)
; decoder-mode: arm
005b4da0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b4da4  44 d0 4d e2                                      sub sp, sp, #0x44
005b4da8  04 20 8d e5                                      str r2, [sp, #4]
005b4dac  68 20 9d e5                                      ldr r2, [sp, #0x68]
005b4db0  7c c5 9f e5                                      ldr ip, [pc, #0x57c]
005b4db4  03 40 a0 e1                                      mov r4, r3
005b4db8  02 00 53 e1                                      cmp r3, r2
005b4dbc  04 30 9d e5                                      ldr r3, [sp, #4]
005b4dc0  0c c0 8f e0                                      add ip, pc, ip
005b4dc4  14 c0 8d e5                                      str ip, [sp, #0x14]
005b4dc8  1c 00 8d e5                                      str r0, [sp, #0x1c]
005b4dcc  08 10 8d e5                                      str r1, [sp, #8]
005b4dd0  20 70 83 e2                                      add r7, r3, #0x20
005b4dd4  6b 00 00 0a                                      beq #0x5b4f88
005b4dd8  58 c5 9f e5                                      ldr ip, [pc, #0x558]
005b4ddc  58 15 9f e5                                      ldr r1, [pc, #0x558]
005b4de0  00 20 a0 e3                                      mov r2, #0
005b4de4  30 30 8d e2                                      add r3, sp, #0x30
005b4de8  20 c0 8d e5                                      str ip, [sp, #0x20]
005b4dec  2c 10 8d e5                                      str r1, [sp, #0x2c]
005b4df0  18 20 8d e5                                      str r2, [sp, #0x18]
005b4df4  10 30 8d e5                                      str r3, [sp, #0x10]
005b4df8  04 c0 9d e5                                      ldr ip, [sp, #4]
005b4dfc  b2 30 d4 e1                                      ldrh r3, [r4, #2]
005b4e00  b0 60 d4 e1                                      ldrh r6, [r4]
005b4e04  04 20 9c e5                                      ldr r2, [ip, #4]
005b4e08  08 c0 9d e5                                      ldr ip, [sp, #8]
005b4e0c  c6 17 a0 e1                                      asr r1, r6, #0xf
005b4e10  be 00 d2 e1                                      ldrh r0, [r2, #0xe]
005b4e14  05 10 81 e2                                      add r1, r1, #5
005b4e18  86 68 a0 e1                                      lsl r6, r6, #0x11
005b4e1c  03 00 50 e1                                      cmp r0, r3
005b4e20  20 50 92 85                                      ldrhi r5, [r2, #0x20]
005b4e24  00 50 a0 93                                      movls r5, #0
005b4e28  81 11 9c e7                                      ldr r1, [ip, r1, lsl #3]
005b4e2c  03 52 85 80                                      addhi r5, r5, r3, lsl #4
005b4e30  06 30 d5 e5                                      ldrb r3, [r5, #6]
005b4e34  a6 68 a0 e1                                      lsr r6, r6, #0x11
005b4e38  01 30 43 e2                                      sub r3, r3, #1
005b4e3c  06 62 81 e0                                      add r6, r1, r6, lsl #4
005b4e40  11 00 53 e3                                      cmp r3, #0x11
005b4e44  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005b4e48  4a 00 00 ea                                      b #0x5b4f78
005b4e4c  fd 00 00 ea                                      b #0x5b5248
005b4e50  f2 00 00 ea                                      b #0x5b5220
005b4e54  e7 00 00 ea                                      b #0x5b51f8
005b4e58  dc 00 00 ea                                      b #0x5b51d0
005b4e5c  d1 00 00 ea                                      b #0x5b51a8
005b4e60  c6 00 00 ea                                      b #0x5b5180
005b4e64  bb 00 00 ea                                      b #0x5b5158
005b4e68  48 00 00 ea                                      b #0x5b4f90
005b4e6c  41 00 00 ea                                      b #0x5b4f78
005b4e70  40 00 00 ea                                      b #0x5b4f78
005b4e74  8a 00 00 ea                                      b #0x5b50a4
005b4e78  5c 00 00 ea                                      b #0x5b4ff0
005b4e7c  5b 00 00 ea                                      b #0x5b4ff0
005b4e80  5a 00 00 ea                                      b #0x5b4ff0
005b4e84  59 00 00 ea                                      b #0x5b4ff0
005b4e88  01 00 00 ea                                      b #0x5b4e94
005b4e8c  42 00 00 ea                                      b #0x5b4f9c
005b4e90  4b 00 00 ea                                      b #0x5b4fc4
005b4e94  08 10 96 e5                                      ldr r1, [r6, #8]
005b4e98  01 02 a0 e1                                      lsl r0, r1, #4
005b4e9c  0c 10 8d e5                                      str r1, [sp, #0xc]
005b4ea0  d3 fd fd eb                                      bl #0x5345f4
005b4ea4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b4ea8  00 80 a0 e1                                      mov r8, r0
005b4eac  00 00 52 e3                                      cmp r2, #0
005b4eb0  28 00 00 0a                                      beq #0x5b4f58
005b4eb4  00 a0 a0 e3                                      mov sl, #0
005b4eb8  24 60 8d e5                                      str r6, [sp, #0x24]
005b4ebc  28 40 8d e5                                      str r4, [sp, #0x28]
005b4ec0  0c 60 95 e5                                      ldr r6, [r5, #0xc]
005b4ec4  0a 42 88 e0                                      add r4, r8, sl, lsl #4
005b4ec8  06 00 d7 e7                                      ldrb r0, [r7, r6]
005b4ecc  a4 66 f5 eb                                      bl #0x30e964
005b4ed0  81 10 08 e3                                      movw r1, #0x8081
005b4ed4  80 1b 43 e3                                      movt r1, #0x3b80
005b4ed8  a3 67 f5 eb                                      bl #0x30ed6c
005b4edc  06 60 87 e0                                      add r6, r7, r6
005b4ee0  00 30 a0 e1                                      mov r3, r0
005b4ee4  01 00 d6 e5                                      ldrb r0, [r6, #1]
005b4ee8  00 30 8d e5                                      str r3, [sp]
005b4eec  9c 66 f5 eb                                      bl #0x30e964
005b4ef0  81 10 08 e3                                      movw r1, #0x8081
005b4ef4  80 1b 43 e3                                      movt r1, #0x3b80
005b4ef8  9b 67 f5 eb                                      bl #0x30ed6c
005b4efc  00 b0 a0 e1                                      mov fp, r0
005b4f00  02 00 d6 e5                                      ldrb r0, [r6, #2]
005b4f04  96 66 f5 eb                                      bl #0x30e964
005b4f08  81 10 08 e3                                      movw r1, #0x8081
005b4f0c  80 1b 43 e3                                      movt r1, #0x3b80
005b4f10  95 67 f5 eb                                      bl #0x30ed6c
005b4f14  00 90 a0 e1                                      mov sb, r0
005b4f18  03 00 d6 e5                                      ldrb r0, [r6, #3]
005b4f1c  90 66 f5 eb                                      bl #0x30e964
005b4f20  81 10 08 e3                                      movw r1, #0x8081
005b4f24  80 1b 43 e3                                      movt r1, #0x3b80
005b4f28  8f 67 f5 eb                                      bl #0x30ed6c
005b4f2c  04 b0 84 e5                                      str fp, [r4, #4]
005b4f30  0c 00 84 e5                                      str r0, [r4, #0xc]
005b4f34  08 90 84 e5                                      str sb, [r4, #8]
005b4f38  00 30 9d e5                                      ldr r3, [sp]
005b4f3c  0a 32 88 e7                                      str r3, [r8, sl, lsl #4]
005b4f40  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005b4f44  01 a0 8a e2                                      add sl, sl, #1
005b4f48  03 00 5a e1                                      cmp sl, r3
005b4f4c  db ff ff 1a                                      bne #0x5b4ec0
005b4f50  24 60 9d e5                                      ldr r6, [sp, #0x24]
005b4f54  28 40 9d e5                                      ldr r4, [sp, #0x28]
005b4f58  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b4f5c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005b4f60  08 20 a0 e1                                      mov r2, r8
005b4f64  8d 66 f5 eb                                      bl #0x30e9a0
005b4f68  00 00 58 e3                                      cmp r8, #0
005b4f6c  01 00 00 0a                                      beq #0x5b4f78
005b4f70  08 00 a0 e1                                      mov r0, r8
005b4f74  c3 fd fd eb                                      bl #0x534688
005b4f78  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b4f7c  04 40 84 e2                                      add r4, r4, #4
005b4f80  04 00 5c e1                                      cmp ip, r4
005b4f84  9b ff ff 1a                                      bne #0x5b4df8
005b4f88  44 d0 8d e2                                      add sp, sp, #0x44
005b4f8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b4f90  b4 30 d6 e1                                      ldrh r3, [r6, #4]
005b4f94  11 00 53 e3                                      cmp r3, #0x11
005b4f98  c3 00 00 0a                                      beq #0x5b52ac
005b4f9c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005b4fa0  08 10 96 e5                                      ldr r1, [r6, #8]
005b4fa4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b4fa8  02 20 87 e0                                      add r2, r7, r2
005b4fac  7b 66 f5 eb                                      bl #0x30e9a0
005b4fb0  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b4fb4  04 40 84 e2                                      add r4, r4, #4
005b4fb8  04 00 5c e1                                      cmp ip, r4
005b4fbc  8d ff ff 1a                                      bne #0x5b4df8
005b4fc0  f0 ff ff ea                                      b #0x5b4f88
005b4fc4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005b4fc8  06 30 a0 e1                                      mov r3, r6
005b4fcc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005b4fd0  02 20 97 e7                                      ldr r2, [r7, r2]
005b4fd4  08 10 9d e5                                      ldr r1, [sp, #8]
005b4fd8  27 f2 ff eb                                      bl #0x5b187c
005b4fdc  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b4fe0  04 40 84 e2                                      add r4, r4, #4
005b4fe4  04 00 5c e1                                      cmp ip, r4
005b4fe8  82 ff ff 1a                                      bne #0x5b4df8
005b4fec  e5 ff ff ea                                      b #0x5b4f88
005b4ff0  b4 30 d6 e1                                      ldrh r3, [r6, #4]
005b4ff4  21 00 53 e3                                      cmp r3, #0x21
005b4ff8  bf 00 00 0a                                      beq #0x5b52fc
005b4ffc  08 b0 96 e5                                      ldr fp, [r6, #8]
005b5000  00 00 5b e3                                      cmp fp, #0
005b5004  db ff ff 0a                                      beq #0x5b4f78
005b5008  0c 40 8d e5                                      str r4, [sp, #0xc]
005b500c  18 80 9d e5                                      ldr r8, [sp, #0x18]
005b5010  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
005b5014  00 a0 a0 e3                                      mov sl, #0
005b5018  05 90 a0 e1                                      mov sb, r5
005b501c  10 00 9d e5                                      ldr r0, [sp, #0x10]
005b5020  07 10 a0 e1                                      mov r1, r7
005b5024  09 20 a0 e1                                      mov r2, sb
005b5028  04 30 a0 e1                                      mov r3, r4
005b502c  49 f5 ff eb                                      bl #0x5b2558
005b5030  30 20 9d e5                                      ldr r2, [sp, #0x30]
005b5034  0c 50 96 e5                                      ldr r5, [r6, #0xc]
005b5038  08 10 a0 e1                                      mov r1, r8
005b503c  38 30 92 e5                                      ldr r3, [r2, #0x38]
005b5040  04 00 a0 e1                                      mov r0, r4
005b5044  01 a0 8a e2                                      add sl, sl, #1
005b5048  03 30 03 e2                                      and r3, r3, #3
005b504c  a7 f5 ff eb                                      bl #0x5b26f0
005b5050  05 00 a0 e1                                      mov r0, r5
005b5054  08 10 a0 e1                                      mov r1, r8
005b5058  65 66 f5 eb                                      bl #0x30e9f4
005b505c  30 00 9d e5                                      ldr r0, [sp, #0x30]
005b5060  01 80 88 e2                                      add r8, r8, #1
005b5064  78 80 ff e6                                      uxth r8, r8
005b5068  00 00 50 e3                                      cmp r0, #0
005b506c  00 00 00 0a                                      beq #0x5b5074
005b5070  43 a1 f5 eb                                      bl #0x31d584
005b5074  0b 00 5a e1                                      cmp sl, fp
005b5078  e7 ff ff 1a                                      bne #0x5b501c
005b507c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005b5080  0c 40 9d e5                                      ldr r4, [sp, #0xc]
005b5084  0a a0 8c e0                                      add sl, ip, sl
005b5088  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b508c  04 40 84 e2                                      add r4, r4, #4
005b5090  7a a0 ff e6                                      uxth sl, sl
005b5094  04 00 5c e1                                      cmp ip, r4
005b5098  18 a0 8d e5                                      str sl, [sp, #0x18]
005b509c  55 ff ff 1a                                      bne #0x5b4df8
005b50a0  b8 ff ff ea                                      b #0x5b4f88
005b50a4  08 90 96 e5                                      ldr sb, [r6, #8]
005b50a8  01 00 59 e3                                      cmp sb, #1
005b50ac  6f 00 00 0a                                      beq #0x5b5270
005b50b0  09 03 a0 e1                                      lsl r0, sb, #6
005b50b4  4e fd fd eb                                      bl #0x5345f4
005b50b8  00 00 59 e3                                      cmp sb, #0
005b50bc  00 b0 a0 e1                                      mov fp, r0
005b50c0  16 00 00 0a                                      beq #0x5b5120
005b50c4  00 a0 a0 e1                                      mov sl, r0
005b50c8  00 80 a0 e3                                      mov r8, #0
005b50cc  00 00 00 ea                                      b #0x5b50d4
005b50d0  40 a0 8a e2                                      add sl, sl, #0x40
005b50d4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005b50d8  0a c0 a0 e1                                      mov ip, sl
005b50dc  08 31 83 e0                                      add r3, r3, r8, lsl #2
005b50e0  03 e0 97 e7                                      ldr lr, [r7, r3]
005b50e4  01 80 88 e2                                      add r8, r8, #1
005b50e8  00 00 5e e3                                      cmp lr, #0
005b50ec  14 30 9d 05                                      ldreq r3, [sp, #0x14]
005b50f0  20 20 9d 05                                      ldreq r2, [sp, #0x20]
005b50f4  02 e0 93 07                                      ldreq lr, [r3, r2]
005b50f8  09 00 58 e1                                      cmp r8, sb
005b50fc  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005b5100  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005b5104  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005b5108  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005b510c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005b5110  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005b5114  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
005b5118  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005b511c  eb ff ff 1a                                      bne #0x5b50d0
005b5120  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b5124  09 10 a0 e1                                      mov r1, sb
005b5128  00 20 a0 e3                                      mov r2, #0
005b512c  0b 30 a0 e1                                      mov r3, fp
005b5130  29 66 f5 eb                                      bl #0x30e9dc
005b5134  00 00 5b e3                                      cmp fp, #0
005b5138  8e ff ff 0a                                      beq #0x5b4f78
005b513c  0b 00 a0 e1                                      mov r0, fp
005b5140  50 fd fd eb                                      bl #0x534688
005b5144  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b5148  04 40 84 e2                                      add r4, r4, #4
005b514c  04 00 5c e1                                      cmp ip, r4
005b5150  28 ff ff 1a                                      bne #0x5b4df8
005b5154  8b ff ff ea                                      b #0x5b4f88
005b5158  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005b515c  08 10 96 e5                                      ldr r1, [r6, #8]
005b5160  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b5164  02 20 87 e0                                      add r2, r7, r2
005b5168  03 66 f5 eb                                      bl #0x30e97c
005b516c  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b5170  04 40 84 e2                                      add r4, r4, #4
005b5174  04 00 5c e1                                      cmp ip, r4
005b5178  1e ff ff 1a                                      bne #0x5b4df8
005b517c  81 ff ff ea                                      b #0x5b4f88
005b5180  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005b5184  08 10 96 e5                                      ldr r1, [r6, #8]
005b5188  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b518c  02 20 87 e0                                      add r2, r7, r2
005b5190  ab 65 f5 eb                                      bl #0x30e844
005b5194  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b5198  04 40 84 e2                                      add r4, r4, #4
005b519c  04 00 5c e1                                      cmp ip, r4
005b51a0  14 ff ff 1a                                      bne #0x5b4df8
005b51a4  77 ff ff ea                                      b #0x5b4f88
005b51a8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005b51ac  08 10 96 e5                                      ldr r1, [r6, #8]
005b51b0  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b51b4  02 20 87 e0                                      add r2, r7, r2
005b51b8  8f 65 f5 eb                                      bl #0x30e7fc
005b51bc  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b51c0  04 40 84 e2                                      add r4, r4, #4
005b51c4  04 00 5c e1                                      cmp ip, r4
005b51c8  0a ff ff 1a                                      bne #0x5b4df8
005b51cc  6d ff ff ea                                      b #0x5b4f88
005b51d0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005b51d4  08 10 96 e5                                      ldr r1, [r6, #8]
005b51d8  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b51dc  02 20 87 e0                                      add r2, r7, r2
005b51e0  86 64 f5 eb                                      bl #0x30e400
005b51e4  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b51e8  04 40 84 e2                                      add r4, r4, #4
005b51ec  04 00 5c e1                                      cmp ip, r4
005b51f0  00 ff ff 1a                                      bne #0x5b4df8
005b51f4  63 ff ff ea                                      b #0x5b4f88
005b51f8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005b51fc  08 10 96 e5                                      ldr r1, [r6, #8]
005b5200  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b5204  02 20 87 e0                                      add r2, r7, r2
005b5208  c3 65 f5 eb                                      bl #0x30e91c
005b520c  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b5210  04 40 84 e2                                      add r4, r4, #4
005b5214  04 00 5c e1                                      cmp ip, r4
005b5218  f6 fe ff 1a                                      bne #0x5b4df8
005b521c  59 ff ff ea                                      b #0x5b4f88
005b5220  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005b5224  08 10 96 e5                                      ldr r1, [r6, #8]
005b5228  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b522c  02 20 87 e0                                      add r2, r7, r2
005b5230  65 65 f5 eb                                      bl #0x30e7cc
005b5234  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b5238  04 40 84 e2                                      add r4, r4, #4
005b523c  04 00 5c e1                                      cmp ip, r4
005b5240  ec fe ff 1a                                      bne #0x5b4df8
005b5244  4f ff ff ea                                      b #0x5b4f88
005b5248  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005b524c  08 10 96 e5                                      ldr r1, [r6, #8]
005b5250  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b5254  02 20 87 e0                                      add r2, r7, r2
005b5258  a2 66 f5 eb                                      bl #0x30ece8
005b525c  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b5260  04 40 84 e2                                      add r4, r4, #4
005b5264  04 00 5c e1                                      cmp ip, r4
005b5268  e2 fe ff 1a                                      bne #0x5b4df8
005b526c  45 ff ff ea                                      b #0x5b4f88
005b5270  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005b5274  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b5278  00 20 a0 e3                                      mov r2, #0
005b527c  03 30 97 e7                                      ldr r3, [r7, r3]
005b5280  04 40 84 e2                                      add r4, r4, #4
005b5284  00 00 53 e3                                      cmp r3, #0
005b5288  14 10 9d 05                                      ldreq r1, [sp, #0x14]
005b528c  20 c0 9d 05                                      ldreq ip, [sp, #0x20]
005b5290  0c 30 91 07                                      ldreq r3, [r1, ip]
005b5294  01 10 a0 e3                                      mov r1, #1
005b5298  cf 65 f5 eb                                      bl #0x30e9dc
005b529c  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b52a0  04 00 5c e1                                      cmp ip, r4
005b52a4  d3 fe ff 1a                                      bne #0x5b4df8
005b52a8  36 ff ff ea                                      b #0x5b4f88
005b52ac  14 20 9d e5                                      ldr r2, [sp, #0x14]
005b52b0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005b52b4  04 40 84 e2                                      add r4, r4, #4
005b52b8  01 30 92 e7                                      ldr r3, [r2, r1]
005b52bc  01 10 a0 e3                                      mov r1, #1
005b52c0  10 20 9d e5                                      ldr r2, [sp, #0x10]
005b52c4  00 00 93 e5                                      ldr r0, [r3]
005b52c8  04 c0 93 e5                                      ldr ip, [r3, #4]
005b52cc  0c e0 93 e5                                      ldr lr, [r3, #0xc]
005b52d0  08 30 93 e5                                      ldr r3, [r3, #8]
005b52d4  34 c0 8d e5                                      str ip, [sp, #0x34]
005b52d8  30 00 8d e5                                      str r0, [sp, #0x30]
005b52dc  38 30 8d e5                                      str r3, [sp, #0x38]
005b52e0  3c e0 8d e5                                      str lr, [sp, #0x3c]
005b52e4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b52e8  ac 65 f5 eb                                      bl #0x30e9a0
005b52ec  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b52f0  04 00 5c e1                                      cmp ip, r4
005b52f4  bf fe ff 1a                                      bne #0x5b4df8
005b52f8  22 ff ff ea                                      b #0x5b4f88
005b52fc  05 20 a0 e1                                      mov r2, r5
005b5300  10 00 9d e5                                      ldr r0, [sp, #0x10]
005b5304  07 10 a0 e1                                      mov r1, r7
005b5308  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005b530c  91 f4 ff eb                                      bl #0x5b2558
005b5310  30 30 9d e5                                      ldr r3, [sp, #0x30]
005b5314  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b5318  48 10 93 e5                                      ldr r1, [r3, #0x48]
005b531c  2d 65 f5 eb                                      bl #0x30e7d8
005b5320  30 00 9d e5                                      ldr r0, [sp, #0x30]
005b5324  00 00 50 e3                                      cmp r0, #0
005b5328  12 ff ff 0a                                      beq #0x5b4f78
005b532c  94 a0 f5 eb                                      bl #0x31d584
005b5330  10 ff ff ea                                      b #0x5b4f78
; mapping-symbol data/literal pool
005b5334  d0 fc 3d 00 30 28 00 00 88 35 00 00              .byte 0xd0, 0xfc, 0x3d, 0x00, 0x30, 0x28, 0x00, 0x00, 0x88, 0x35, 0x00, 0x00
