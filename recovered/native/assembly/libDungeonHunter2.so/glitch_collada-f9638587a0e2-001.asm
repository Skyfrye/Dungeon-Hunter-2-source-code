; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060bbd4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada
; alias: _ZN6glitch7collada21intrusive_ptr_releaseEPNS0_15CAnimationBlockE
; demangled: glitch::collada::intrusive_ptr_release(glitch::collada::CAnimationBlock*)
; decoder-mode: arm
0060bbd4  d0 ff ff ea                                      b #0x60bb1c

; FUNCTION 0x0060c598, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada
; alias: _ZN6glitch7collada21intrusive_ptr_add_refEPNS0_15CAnimationBlockE
; demangled: glitch::collada::intrusive_ptr_add_ref(glitch::collada::CAnimationBlock*)
; decoder-mode: arm
0060c598  94 ff ff ea                                      b #0x60c3f0

; FUNCTION 0x0062fdec, declared_size=44, range_size=44, mode=arm
; class-group: glitch::collada
; alias: _ZN6glitch7collada22FxEchoNotHandledEventsERKNS0_15STriggeredEventEPv
; demangled: glitch::collada::FxEchoNotHandledEvents(glitch::collada::STriggeredEvent const&, void*)
; decoder-mode: arm
0062fdec  10 40 2d e9                                      push {r4, lr}
0062fdf0  00 40 a0 e1                                      mov r4, r0
0062fdf4  18 00 9f e5                                      ldr r0, [pc, #0x18]
0062fdf8  01 10 a0 e3                                      mov r1, #1
0062fdfc  00 00 8f e0                                      add r0, pc, r0
0062fe00  a6 6b ff eb                                      bl #0x60aca0
0062fe04  04 00 94 e5                                      ldr r0, [r4, #4]
0062fe08  01 10 a0 e3                                      mov r1, #1
0062fe0c  10 40 bd e8                                      pop {r4, lr}
0062fe10  a2 6b ff ea                                      b #0x60aca0
; mapping-symbol data/literal pool
0062fe14  f4 4f 2b 00                                      .byte 0xf4, 0x4f, 0x2b, 0x00

; FUNCTION 0x0062ff80, declared_size=136, range_size=136, mode=arm
; class-group: glitch::collada
; alias: _ZN6glitch7collada12_GLOBAL__N_132getExternalLightSceneNodeDefaultEPKc
; demangled: glitch::collada::(anonymous namespace)::getExternalLightSceneNodeDefault(char const*)
; decoder-mode: arm
0062ff80  23 10 a0 e3                                      mov r1, #0x23
0062ff84  10 40 2d e9                                      push {r4, lr}
0062ff88  00 40 a0 e1                                      mov r4, r0
0062ff8c  25 7b f3 eb                                      bl #0x30ec28
0062ff90  68 30 9f e5                                      ldr r3, [pc, #0x68]
0062ff94  00 00 50 e3                                      cmp r0, #0
0062ff98  01 10 80 12                                      addne r1, r0, #1
0062ff9c  60 00 9f e5                                      ldr r0, [pc, #0x60]
0062ffa0  03 30 8f e0                                      add r3, pc, r3
0062ffa4  04 10 a0 01                                      moveq r1, r4
0062ffa8  00 30 93 e7                                      ldr r3, [r3, r0]
0062ffac  00 20 a0 e3                                      mov r2, #0
0062ffb0  00 30 93 e5                                      ldr r3, [r3]
0062ffb4  20 30 93 e5                                      ldr r3, [r3, #0x20]
0062ffb8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0062ffbc  03 00 a0 e1                                      mov r0, r3
0062ffc0  00 30 93 e5                                      ldr r3, [r3]
0062ffc4  0f e0 a0 e1                                      mov lr, pc
0062ffc8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0062ffcc  00 40 50 e2                                      subs r4, r0, #0
0062ffd0  06 00 00 0a                                      beq #0x62fff0
0062ffd4  00 30 94 e5                                      ldr r3, [r4]
0062ffd8  0f e0 a0 e1                                      mov lr, pc
0062ffdc  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0062ffe0  6c 37 06 e3                                      movw r3, #0x676c
0062ffe4  68 34 47 e3                                      movt r3, #0x7468
0062ffe8  03 00 50 e1                                      cmp r0, r3
0062ffec  01 00 00 0a                                      beq #0x62fff8
0062fff0  00 00 a0 e3                                      mov r0, #0
0062fff4  10 80 bd e8                                      pop {r4, pc}
0062fff8  04 00 a0 e1                                      mov r0, r4
0062fffc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00630000  f0 4a 36 00 48 44 00 00                          .byte 0xf0, 0x4a, 0x36, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x00631ce8, declared_size=1768, range_size=1768, mode=arm
; class-group: glitch::collada
; alias: _ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::createMaterial(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, glitch::collada::SMaterial&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00631ce8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00631cec  00 20 a0 e3                                      mov r2, #0
00631cf0  a4 d0 4d e2                                      sub sp, sp, #0xa4
00631cf4  1c 00 8d e5                                      str r0, [sp, #0x1c]
00631cf8  18 30 8d e5                                      str r3, [sp, #0x18]
00631cfc  00 20 80 e5                                      str r2, [r0]
00631d00  18 00 9d e5                                      ldr r0, [sp, #0x18]
00631d04  9c 16 9f e5                                      ldr r1, [pc, #0x69c]
00631d08  c8 80 9d e5                                      ldr r8, [sp, #0xc8]
00631d0c  00 30 90 e5                                      ldr r3, [r0]
00631d10  01 10 8f e0                                      add r1, pc, r1
00631d14  28 10 8d e5                                      str r1, [sp, #0x28]
00631d18  02 00 53 e1                                      cmp r3, r2
00631d1c  61 00 00 0a                                      beq #0x631ea8
00631d20  9c 40 8d e2                                      add r4, sp, #0x9c
00631d24  02 30 a0 e1                                      mov r3, r2
00631d28  18 10 9d e5                                      ldr r1, [sp, #0x18]
00631d2c  00 20 98 e5                                      ldr r2, [r8]
00631d30  04 00 a0 e1                                      mov r0, r4
00631d34  d9 68 fe eb                                      bl #0x5cc0a0
00631d38  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00631d3c  a0 00 8d e2                                      add r0, sp, #0xa0
00631d40  98 30 8d e5                                      str r3, [sp, #0x98]
00631d44  00 00 53 e3                                      cmp r3, #0
00631d48  00 20 93 15                                      ldrne r2, [r3]
00631d4c  01 20 82 12                                      addne r2, r2, #1
00631d50  00 20 83 15                                      strne r2, [r3]
00631d54  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
00631d58  98 30 9d 15                                      ldrne r3, [sp, #0x98]
00631d5c  00 20 99 e5                                      ldr r2, [sb]
00631d60  00 30 89 e5                                      str r3, [sb]
00631d64  08 20 20 e5                                      str r2, [r0, #-8]!
00631d68  9e 7b f3 eb                                      bl #0x310be8
00631d6c  04 00 a0 e1                                      mov r0, r4
00631d70  9c 7b f3 eb                                      bl #0x310be8
00631d74  10 a0 98 e5                                      ldr sl, [r8, #0x10]
00631d78  00 00 5a e3                                      cmp sl, #0
00631d7c  20 a0 8d e5                                      str sl, [sp, #0x20]
00631d80  48 00 00 da                                      ble #0x631ea8
00631d84  20 36 9f e5                                      ldr r3, [pc, #0x620]
00631d88  20 26 9f e5                                      ldr r2, [pc, #0x620]
00631d8c  00 40 a0 e3                                      mov r4, #0
00631d90  03 30 8f e0                                      add r3, pc, r3
00631d94  4c 30 83 e2                                      add r3, r3, #0x4c
00631d98  3c 30 8d e5                                      str r3, [sp, #0x3c]
00631d9c  10 36 9f e5                                      ldr r3, [pc, #0x610]
00631da0  02 20 8f e0                                      add r2, pc, r2
00631da4  2c 20 8d e5                                      str r2, [sp, #0x2c]
00631da8  03 30 8f e0                                      add r3, pc, r3
00631dac  34 30 8d e5                                      str r3, [sp, #0x34]
00631db0  00 36 9f e5                                      ldr r3, [pc, #0x600]
00631db4  04 60 a0 e1                                      mov r6, r4
00631db8  03 30 8f e0                                      add r3, pc, r3
00631dbc  38 30 8d e5                                      str r3, [sp, #0x38]
00631dc0  1c 00 00 ea                                      b #0x631e38
00631dc4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00631dc8  00 00 91 e5                                      ldr r0, [r1]
00631dcc  10 10 97 e5                                      ldr r1, [r7, #0x10]
00631dd0  04 30 90 e5                                      ldr r3, [r0, #4]
00631dd4  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
00631dd8  02 00 55 e1                                      cmp r5, r2
00631ddc  20 90 93 35                                      ldrlo sb, [r3, #0x20]
00631de0  00 90 a0 23                                      movhs sb, #0
00631de4  05 92 89 30                                      addlo sb, sb, r5, lsl #4
00631de8  08 a0 99 e5                                      ldr sl, [sb, #8]
00631dec  0c a0 8d e5                                      str sl, [sp, #0xc]
00631df0  00 10 91 e5                                      ldr r1, [r1]
00631df4  01 00 5a e1                                      cmp sl, r1
00631df8  2d 00 00 9a                                      bls #0x631eb4
00631dfc  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
00631e00  00 30 99 e5                                      ldr r3, [sb]
00631e04  b0 15 9f e5                                      ldr r1, [pc, #0x5b0]
00631e08  00 00 52 e3                                      cmp r2, #0
00631e0c  04 20 82 12                                      addne r2, r2, #4
00631e10  00 00 53 e3                                      cmp r3, #0
00631e14  04 30 83 12                                      addne r3, r3, #4
00631e18  01 10 8f e0                                      add r1, pc, r1
00631e1c  03 00 a0 e3                                      mov r0, #3
00631e20  83 64 ff eb                                      bl #0x60b034
00631e24  20 30 9d e5                                      ldr r3, [sp, #0x20]
00631e28  01 60 86 e2                                      add r6, r6, #1
00631e2c  18 40 84 e2                                      add r4, r4, #0x18
00631e30  03 00 56 e1                                      cmp r6, r3
00631e34  1b 00 00 0a                                      beq #0x631ea8
00631e38  14 70 98 e5                                      ldr r7, [r8, #0x14]
00631e3c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00631e40  00 20 a0 e3                                      mov r2, #0
00631e44  04 10 97 e7                                      ldr r1, [r7, r4]
00631e48  00 00 9c e5                                      ldr r0, [ip]
00631e4c  8e 84 fe eb                                      bl #0x5d308c
00631e50  ff 3f 0f e3                                      movw r3, #0xffff
00631e54  03 00 50 e1                                      cmp r0, r3
00631e58  04 70 87 e0                                      add r7, r7, r4
00631e5c  00 50 a0 e1                                      mov r5, r0
00631e60  d7 ff ff 1a                                      bne #0x631dc4
00631e64  08 30 97 e5                                      ldr r3, [r7, #8]
00631e68  14 00 53 e3                                      cmp r3, #0x14
00631e6c  ec ff ff 1a                                      bne #0x631e24
00631e70  14 30 97 e5                                      ldr r3, [r7, #0x14]
00631e74  18 10 9d e5                                      ldr r1, [sp, #0x18]
00631e78  01 60 86 e2                                      add r6, r6, #1
00631e7c  18 40 84 e2                                      add r4, r4, #0x18
00631e80  00 00 91 e5                                      ldr r0, [r1]
00631e84  04 10 93 e5                                      ldr r1, [r3, #4]
00631e88  21 8a fe eb                                      bl #0x5d4714
00631e8c  ff 00 50 e3                                      cmp r0, #0xff
00631e90  1c 20 9d 15                                      ldrne r2, [sp, #0x1c]
00631e94  00 30 92 15                                      ldrne r3, [r2]
00631e98  08 00 c3 15                                      strbne r0, [r3, #8]
00631e9c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00631ea0  03 00 56 e1                                      cmp r6, r3
00631ea4  e3 ff ff 1a                                      bne #0x631e38
00631ea8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00631eac  a4 d0 8d e2                                      add sp, sp, #0xa4
00631eb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00631eb4  06 b0 d9 e5                                      ldrb fp, [sb, #6]
00631eb8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00631ebc  08 c0 97 e5                                      ldr ip, [r7, #8]
00631ec0  01 a0 a0 e3                                      mov sl, #1
00631ec4  0b 11 91 e7                                      ldr r1, [r1, fp, lsl #2]
00631ec8  30 c0 8d e5                                      str ip, [sp, #0x30]
00631ecc  24 c0 8d e5                                      str ip, [sp, #0x24]
00631ed0  1a 1c 11 e0                                      ands r1, r1, sl, lsl ip
00631ed4  1c 00 00 1a                                      bne #0x631f4c
00631ed8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00631edc  00 00 53 e3                                      cmp r3, #0
00631ee0  04 30 83 12                                      addne r3, r3, #4
00631ee4  30 30 8d e5                                      str r3, [sp, #0x30]
00631ee8  00 50 99 e5                                      ldr r5, [sb]
00631eec  00 00 55 e3                                      cmp r5, #0
00631ef0  04 50 85 12                                      addne r5, r5, #4
00631ef4  ff 00 5b e3                                      cmp fp, #0xff
00631ef8  21 00 00 0a                                      beq #0x631f84
00631efc  00 00 a0 e3                                      mov r0, #0
00631f00  6b d8 fe eb                                      bl #0x5e80b4
00631f04  08 70 97 e5                                      ldr r7, [r7, #8]
00631f08  0b a1 90 e7                                      ldr sl, [r0, fp, lsl #2]
00631f0c  24 70 8d e5                                      str r7, [sp, #0x24]
00631f10  34 10 9d e5                                      ldr r1, [sp, #0x34]
00631f14  40 00 8d e2                                      add r0, sp, #0x40
00631f18  58 20 a0 e3                                      mov r2, #0x58
00631f1c  51 72 f3 eb                                      bl #0x30e868
00631f20  24 00 9d e5                                      ldr r0, [sp, #0x24]
00631f24  a0 c0 8d e2                                      add ip, sp, #0xa0
00631f28  30 20 9d e5                                      ldr r2, [sp, #0x30]
00631f2c  00 31 8c e0                                      add r3, ip, r0, lsl #2
00631f30  60 c0 13 e5                                      ldr ip, [r3, #-0x60]
00631f34  03 00 a0 e3                                      mov r0, #3
00631f38  05 30 a0 e1                                      mov r3, r5
00631f3c  38 10 9d e5                                      ldr r1, [sp, #0x38]
00631f40  00 14 8d e8                                      stm sp, {sl, ip}
00631f44  3a 64 ff eb                                      bl #0x60b034
00631f48  b5 ff ff ea                                      b #0x631e24
00631f4c  09 b0 4b e2                                      sub fp, fp, #9
00631f50  09 00 5b e3                                      cmp fp, #9
00631f54  0b f1 8f 90                                      addls pc, pc, fp, lsl #2
00631f58  31 00 00 ea                                      b #0x632024
00631f5c  b0 ff ff ea                                      b #0x631e24
00631f60  af ff ff ea                                      b #0x631e24
00631f64  45 00 00 ea                                      b #0x632080
00631f68  7b 00 00 ea                                      b #0x63215c
00631f6c  9e 00 00 ea                                      b #0x6321ec
00631f70  c1 00 00 ea                                      b #0x63227c
00631f74  e4 00 00 ea                                      b #0x63230c
00631f78  29 00 00 ea                                      b #0x632024
00631f7c  28 00 00 ea                                      b #0x632024
00631f80  02 00 00 ea                                      b #0x631f90
00631f84  34 a4 9f e5                                      ldr sl, [pc, #0x434]
00631f88  0a a0 8f e0                                      add sl, pc, sl
00631f8c  df ff ff ea                                      b #0x631f10
00631f90  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00631f94  00 00 51 e3                                      cmp r1, #0
00631f98  a1 ff ff 0a                                      beq #0x631e24
00631f9c  40 a0 8d e2                                      add sl, sp, #0x40
00631fa0  00 b0 a0 e3                                      mov fp, #0
00631fa4  24 a0 8d e5                                      str sl, [sp, #0x24]
00631fa8  0b 90 a0 e1                                      mov sb, fp
00631fac  0c a0 9d e5                                      ldr sl, [sp, #0xc]
00631fb0  0d 00 00 ea                                      b #0x631fec
00631fb4  cc c0 9d e5                                      ldr ip, [sp, #0xcc]
00631fb8  00 00 5c e3                                      cmp ip, #0
00631fbc  06 00 00 0a                                      beq #0x631fdc
00631fc0  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00631fc4  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
00631fc8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00631fcc  05 20 a0 e1                                      mov r2, r5
00631fd0  09 30 a0 e1                                      mov r3, sb
00631fd4  00 c0 8d e5                                      str ip, [sp]
00631fd8  47 a4 00 eb                                      bl #0x65b0fc
00631fdc  01 90 89 e2                                      add sb, sb, #1
00631fe0  0a 00 59 e1                                      cmp sb, sl
00631fe4  04 b0 8b e2                                      add fp, fp, #4
00631fe8  8d ff ff 0a                                      beq #0x631e24
00631fec  14 30 97 e5                                      ldr r3, [r7, #0x14]
00631ff0  0b 30 83 e0                                      add r3, r3, fp
00631ff4  00 30 93 e5                                      ldr r3, [r3]
00631ff8  40 30 8d e5                                      str r3, [sp, #0x40]
00631ffc  04 20 13 e5                                      ldr r2, [r3, #-4]
00632000  00 00 52 e3                                      cmp r2, #0
00632004  86 ff ff 0a                                      beq #0x631e24
00632008  d0 20 d3 e1                                      ldrsb r2, [r3]
0063200c  23 00 52 e3                                      cmp r2, #0x23
00632010  e7 ff ff 1a                                      bne #0x631fb4
00632014  d1 30 d3 e1                                      ldrsb r3, [r3, #1]
00632018  00 00 53 e3                                      cmp r3, #0
0063201c  80 ff ff 0a                                      beq #0x631e24
00632020  e3 ff ff ea                                      b #0x631fb4
00632024  28 10 9d e5                                      ldr r1, [sp, #0x28]
00632028  94 33 9f e5                                      ldr r3, [pc, #0x394]
0063202c  30 90 9d e5                                      ldr sb, [sp, #0x30]
00632030  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00632034  03 20 91 e7                                      ldr r2, [r1, r3]
00632038  88 13 9f e5                                      ldr r1, [pc, #0x388]
0063203c  01 30 89 e2                                      add r3, sb, #1
00632040  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00632044  01 10 9a e7                                      ldr r1, [sl, r1]
00632048  03 a1 92 e7                                      ldr sl, [r2, r3, lsl #2]
0063204c  78 23 9f e5                                      ldr r2, [pc, #0x378]
00632050  0a 10 d1 e7                                      ldrb r1, [r1, sl]
00632054  02 20 9c e7                                      ldr r2, [ip, r2]
00632058  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0063205c  09 e1 9c e7                                      ldr lr, [ip, sb, lsl #2]
00632060  03 c0 d2 e7                                      ldrb ip, [r2, r3]
00632064  14 30 97 e5                                      ldr r3, [r7, #0x14]
00632068  0e 20 a0 e1                                      mov r2, lr
0063206c  9c 01 0c e0                                      mul ip, ip, r1
00632070  05 10 a0 e1                                      mov r1, r5
00632074  00 c0 8d e5                                      str ip, [sp]
00632078  b0 6b fe eb                                      bl #0x5ccf40
0063207c  68 ff ff ea                                      b #0x631e24
00632080  40 b0 8d e2                                      add fp, sp, #0x40
00632084  0b 00 a0 e1                                      mov r0, fp
00632088  e1 fe ff eb                                      bl #0x631c14
0063208c  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00632090  2c 33 9f e5                                      ldr r3, [pc, #0x32c]
00632094  08 20 97 e5                                      ldr r2, [r7, #8]
00632098  08 c0 99 e5                                      ldr ip, [sb, #8]
0063209c  03 10 9a e7                                      ldr r1, [sl, r3]
006320a0  20 33 9f e5                                      ldr r3, [pc, #0x320]
006320a4  01 20 82 e2                                      add r2, r2, #1
006320a8  02 11 91 e7                                      ldr r1, [r1, r2, lsl #2]
006320ac  03 00 9a e7                                      ldr r0, [sl, r3]
006320b0  14 33 9f e5                                      ldr r3, [pc, #0x314]
006320b4  00 00 5c e3                                      cmp ip, #0
006320b8  01 10 d0 e7                                      ldrb r1, [r0, r1]
006320bc  03 30 9a e7                                      ldr r3, [sl, r3]
006320c0  02 30 d3 e7                                      ldrb r3, [r3, r2]
006320c4  93 01 03 e0                                      mul r3, r3, r1
006320c8  55 ff ff 0a                                      beq #0x631e24
006320cc  00 90 a0 e3                                      mov sb, #0
006320d0  24 40 8d e5                                      str r4, [sp, #0x24]
006320d4  30 60 8d e5                                      str r6, [sp, #0x30]
006320d8  09 a0 a0 e1                                      mov sl, sb
006320dc  05 60 a0 e1                                      mov r6, r5
006320e0  03 40 a0 e1                                      mov r4, r3
006320e4  0c 50 a0 e1                                      mov r5, ip
006320e8  03 00 00 ea                                      b #0x6320fc
006320ec  01 a0 8a e2                                      add sl, sl, #1
006320f0  05 00 5a e1                                      cmp sl, r5
006320f4  04 90 89 e0                                      add sb, sb, r4
006320f8  a7 00 00 0a                                      beq #0x63239c
006320fc  14 e0 97 e5                                      ldr lr, [r7, #0x14]
00632100  00 c0 a0 e3                                      mov ip, #0
00632104  80 c0 cd e5                                      strb ip, [sp, #0x80]
00632108  09 e0 8e e0                                      add lr, lr, sb
0063210c  0b c0 a0 e1                                      mov ip, fp
00632110  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00632114  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00632118  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0063211c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00632120  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00632124  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00632128  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0063212c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00632130  0b 00 a0 e1                                      mov r0, fp
00632134  18 20 fe eb                                      bl #0x5ba19c
00632138  00 00 50 e3                                      cmp r0, #0
0063213c  ea ff ff 1a                                      bne #0x6320ec
00632140  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00632144  0a 20 a0 e1                                      mov r2, sl
00632148  06 10 a0 e1                                      mov r1, r6
0063214c  00 00 93 e5                                      ldr r0, [r3]
00632150  0b 30 a0 e1                                      mov r3, fp
00632154  e0 64 fe eb                                      bl #0x5cb4dc
00632158  e3 ff ff ea                                      b #0x6320ec
0063215c  02 00 55 e1                                      cmp r5, r2
00632160  20 30 93 35                                      ldrlo r3, [r3, #0x20]
00632164  00 30 a0 23                                      movhs r3, #0
00632168  14 a0 97 e5                                      ldr sl, [r7, #0x14]
0063216c  05 32 83 30                                      addlo r3, r3, r5, lsl #4
00632170  08 90 93 e5                                      ldr sb, [r3, #8]
00632174  00 00 59 e3                                      cmp sb, #0
00632178  29 ff ff 0a                                      beq #0x631e24
0063217c  24 40 8d e5                                      str r4, [sp, #0x24]
00632180  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
00632184  00 70 a0 e3                                      mov r7, #0
00632188  40 b0 8d e2                                      add fp, sp, #0x40
0063218c  07 01 9a e7                                      ldr r0, [sl, r7, lsl #2]
00632190  07 20 a0 e1                                      mov r2, r7
00632194  05 10 a0 e1                                      mov r1, r5
00632198  00 00 90 e5                                      ldr r0, [r0]
0063219c  0b 30 a0 e1                                      mov r3, fp
006321a0  01 70 87 e2                                      add r7, r7, #1
006321a4  00 00 50 e3                                      cmp r0, #0
006321a8  0b 00 00 0a                                      beq #0x6321dc
006321ac  10 00 90 e5                                      ldr r0, [r0, #0x10]
006321b0  00 00 50 e3                                      cmp r0, #0
006321b4  40 00 8d e5                                      str r0, [sp, #0x40]
006321b8  04 c0 90 15                                      ldrne ip, [r0, #4]
006321bc  01 c0 8c 12                                      addne ip, ip, #1
006321c0  04 c0 80 15                                      strne ip, [r0, #4]
006321c4  00 00 94 e5                                      ldr r0, [r4]
006321c8  55 6c fe eb                                      bl #0x5cd324
006321cc  40 00 9d e5                                      ldr r0, [sp, #0x40]
006321d0  00 00 50 e3                                      cmp r0, #0
006321d4  00 00 00 0a                                      beq #0x6321dc
006321d8  e9 ac f3 eb                                      bl #0x31d584
006321dc  09 00 57 e1                                      cmp r7, sb
006321e0  e9 ff ff 1a                                      bne #0x63218c
006321e4  24 40 9d e5                                      ldr r4, [sp, #0x24]
006321e8  0d ff ff ea                                      b #0x631e24
006321ec  02 00 55 e1                                      cmp r5, r2
006321f0  20 30 93 35                                      ldrlo r3, [r3, #0x20]
006321f4  00 30 a0 23                                      movhs r3, #0
006321f8  14 a0 97 e5                                      ldr sl, [r7, #0x14]
006321fc  05 32 83 30                                      addlo r3, r3, r5, lsl #4
00632200  08 90 93 e5                                      ldr sb, [r3, #8]
00632204  00 00 59 e3                                      cmp sb, #0
00632208  05 ff ff 0a                                      beq #0x631e24
0063220c  24 40 8d e5                                      str r4, [sp, #0x24]
00632210  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
00632214  00 70 a0 e3                                      mov r7, #0
00632218  40 b0 8d e2                                      add fp, sp, #0x40
0063221c  07 01 9a e7                                      ldr r0, [sl, r7, lsl #2]
00632220  07 20 a0 e1                                      mov r2, r7
00632224  05 10 a0 e1                                      mov r1, r5
00632228  00 00 90 e5                                      ldr r0, [r0]
0063222c  0b 30 a0 e1                                      mov r3, fp
00632230  01 70 87 e2                                      add r7, r7, #1
00632234  00 00 50 e3                                      cmp r0, #0
00632238  0b 00 00 0a                                      beq #0x63226c
0063223c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00632240  00 00 50 e3                                      cmp r0, #0
00632244  40 00 8d e5                                      str r0, [sp, #0x40]
00632248  04 c0 90 15                                      ldrne ip, [r0, #4]
0063224c  01 c0 8c 12                                      addne ip, ip, #1
00632250  04 c0 80 15                                      strne ip, [r0, #4]
00632254  00 00 94 e5                                      ldr r0, [r4]
00632258  31 6c fe eb                                      bl #0x5cd324
0063225c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00632260  00 00 50 e3                                      cmp r0, #0
00632264  00 00 00 0a                                      beq #0x63226c
00632268  c5 ac f3 eb                                      bl #0x31d584
0063226c  09 00 57 e1                                      cmp r7, sb
00632270  e9 ff ff 1a                                      bne #0x63221c
00632274  24 40 9d e5                                      ldr r4, [sp, #0x24]
00632278  e9 fe ff ea                                      b #0x631e24
0063227c  02 00 55 e1                                      cmp r5, r2
00632280  20 30 93 35                                      ldrlo r3, [r3, #0x20]
00632284  00 30 a0 23                                      movhs r3, #0
00632288  14 a0 97 e5                                      ldr sl, [r7, #0x14]
0063228c  05 32 83 30                                      addlo r3, r3, r5, lsl #4
00632290  08 90 93 e5                                      ldr sb, [r3, #8]
00632294  00 00 59 e3                                      cmp sb, #0
00632298  e1 fe ff 0a                                      beq #0x631e24
0063229c  24 40 8d e5                                      str r4, [sp, #0x24]
006322a0  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
006322a4  00 70 a0 e3                                      mov r7, #0
006322a8  40 b0 8d e2                                      add fp, sp, #0x40
006322ac  07 01 9a e7                                      ldr r0, [sl, r7, lsl #2]
006322b0  07 20 a0 e1                                      mov r2, r7
006322b4  05 10 a0 e1                                      mov r1, r5
006322b8  00 00 90 e5                                      ldr r0, [r0]
006322bc  0b 30 a0 e1                                      mov r3, fp
006322c0  01 70 87 e2                                      add r7, r7, #1
006322c4  00 00 50 e3                                      cmp r0, #0
006322c8  0b 00 00 0a                                      beq #0x6322fc
006322cc  10 00 90 e5                                      ldr r0, [r0, #0x10]
006322d0  00 00 50 e3                                      cmp r0, #0
006322d4  40 00 8d e5                                      str r0, [sp, #0x40]
006322d8  04 c0 90 15                                      ldrne ip, [r0, #4]
006322dc  01 c0 8c 12                                      addne ip, ip, #1
006322e0  04 c0 80 15                                      strne ip, [r0, #4]
006322e4  00 00 94 e5                                      ldr r0, [r4]
006322e8  0d 6c fe eb                                      bl #0x5cd324
006322ec  40 00 9d e5                                      ldr r0, [sp, #0x40]
006322f0  00 00 50 e3                                      cmp r0, #0
006322f4  00 00 00 0a                                      beq #0x6322fc
006322f8  a1 ac f3 eb                                      bl #0x31d584
006322fc  09 00 57 e1                                      cmp r7, sb
00632300  e9 ff ff 1a                                      bne #0x6322ac
00632304  24 40 9d e5                                      ldr r4, [sp, #0x24]
00632308  c5 fe ff ea                                      b #0x631e24
0063230c  02 00 55 e1                                      cmp r5, r2
00632310  20 30 93 35                                      ldrlo r3, [r3, #0x20]
00632314  00 30 a0 23                                      movhs r3, #0
00632318  14 a0 97 e5                                      ldr sl, [r7, #0x14]
0063231c  05 32 83 30                                      addlo r3, r3, r5, lsl #4
00632320  08 90 93 e5                                      ldr sb, [r3, #8]
00632324  00 00 59 e3                                      cmp sb, #0
00632328  bd fe ff 0a                                      beq #0x631e24
0063232c  24 40 8d e5                                      str r4, [sp, #0x24]
00632330  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
00632334  00 70 a0 e3                                      mov r7, #0
00632338  40 b0 8d e2                                      add fp, sp, #0x40
0063233c  07 01 9a e7                                      ldr r0, [sl, r7, lsl #2]
00632340  07 20 a0 e1                                      mov r2, r7
00632344  05 10 a0 e1                                      mov r1, r5
00632348  00 00 90 e5                                      ldr r0, [r0]
0063234c  0b 30 a0 e1                                      mov r3, fp
00632350  01 70 87 e2                                      add r7, r7, #1
00632354  00 00 50 e3                                      cmp r0, #0
00632358  0b 00 00 0a                                      beq #0x63238c
0063235c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00632360  00 00 50 e3                                      cmp r0, #0
00632364  40 00 8d e5                                      str r0, [sp, #0x40]
00632368  04 c0 90 15                                      ldrne ip, [r0, #4]
0063236c  01 c0 8c 12                                      addne ip, ip, #1
00632370  04 c0 80 15                                      strne ip, [r0, #4]
00632374  00 00 94 e5                                      ldr r0, [r4]
00632378  e9 6b fe eb                                      bl #0x5cd324
0063237c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00632380  00 00 50 e3                                      cmp r0, #0
00632384  00 00 00 0a                                      beq #0x63238c
00632388  7d ac f3 eb                                      bl #0x31d584
0063238c  09 00 57 e1                                      cmp r7, sb
00632390  e9 ff ff 1a                                      bne #0x63233c
00632394  24 40 9d e5                                      ldr r4, [sp, #0x24]
00632398  a1 fe ff ea                                      b #0x631e24
0063239c  24 40 9d e5                                      ldr r4, [sp, #0x24]
006323a0  30 60 9d e5                                      ldr r6, [sp, #0x30]
006323a4  9e fe ff ea                                      b #0x631e24
; mapping-symbol data/literal pool
006323a8  80 2d 36 00 bc 30 2b 00 ac 30 2b 00 c0 57 32 00  .byte 0x80, 0x2d, 0x36, 0x00, 0xbc, 0x30, 0x2b, 0x00, 0xac, 0x30, 0x2b, 0x00, 0xc0, 0x57, 0x32, 0x00
006323b8  e0 31 2b 00 50 31 2b 00 d8 44 29 00 ac 3b 00 00  .byte 0xe0, 0x31, 0x2b, 0x00, 0x50, 0x31, 0x2b, 0x00, 0xd8, 0x44, 0x29, 0x00, 0xac, 0x3b, 0x00, 0x00
006323c8  c0 15 00 00 ac 2b 00 00                          .byte 0xc0, 0x15, 0x00, 0x00, 0xac, 0x2b, 0x00, 0x00

; FUNCTION 0x00636b6c, declared_size=288, range_size=288, mode=arm
; class-group: glitch::collada
; alias: _ZN6glitch7collada22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPKcRKNS0_11SEffectListEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::createMaterialRenderer(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00636b6c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00636b70  00 40 a0 e1                                      mov r4, r0
00636b74  00 00 a0 e3                                      mov r0, #0
00636b78  00 00 84 e5                                      str r0, [r4]
00636b7c  02 80 a0 e1                                      mov r8, r2
00636b80  18 d0 4d e2                                      sub sp, sp, #0x18
00636b84  00 20 92 e5                                      ldr r2, [r2]
00636b88  08 00 a0 e1                                      mov r0, r8
00636b8c  01 90 a0 e1                                      mov sb, r1
00636b90  03 a0 a0 e1                                      mov sl, r3
00636b94  38 60 9d e5                                      ldr r6, [sp, #0x38]
00636b98  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
00636b9c  0f e0 a0 e1                                      mov lr, pc
00636ba0  5c f0 92 e5                                      ldr pc, [r2, #0x5c]
00636ba4  07 00 10 e3                                      tst r0, #7
00636ba8  1d 00 00 1a                                      bne #0x636c24
00636bac  18 00 10 e3                                      tst r0, #0x18
00636bb0  1e 00 00 1a                                      bne #0x636c30
00636bb4  36 0e 10 e3                                      tst r0, #0x360
00636bb8  19 00 00 1a                                      bne #0x636c24
00636bbc  02 0b 50 e3                                      cmp r0, #0x800
00636bc0  17 00 00 0a                                      beq #0x636c24
00636bc4  00 00 50 e3                                      cmp r0, #0
00636bc8  15 00 00 1a                                      bne #0x636c24
00636bcc  10 70 8d e2                                      add r7, sp, #0x10
00636bd0  08 20 a0 e1                                      mov r2, r8
00636bd4  09 10 a0 e1                                      mov r1, sb
00636bd8  0a 30 a0 e1                                      mov r3, sl
00636bdc  07 00 a0 e1                                      mov r0, r7
00636be0  00 60 8d e5                                      str r6, [sp]
00636be4  04 50 8d e5                                      str r5, [sp, #4]
00636be8  ec fa ff eb                                      bl #0x6357a0
00636bec  10 30 9d e5                                      ldr r3, [sp, #0x10]
00636bf0  18 00 8d e2                                      add r0, sp, #0x18
00636bf4  08 30 8d e5                                      str r3, [sp, #8]
00636bf8  00 00 53 e3                                      cmp r3, #0
00636bfc  00 20 93 15                                      ldrne r2, [r3]
00636c00  01 20 82 12                                      addne r2, r2, #1
00636c04  00 20 83 15                                      strne r2, [r3]
00636c08  08 30 9d 15                                      ldrne r3, [sp, #8]
00636c0c  00 20 94 e5                                      ldr r2, [r4]
00636c10  00 30 84 e5                                      str r3, [r4]
00636c14  10 20 20 e5                                      str r2, [r0, #-0x10]!
00636c18  a6 6d f4 eb                                      bl #0x3522b8
00636c1c  07 00 a0 e1                                      mov r0, r7
00636c20  a4 6d f4 eb                                      bl #0x3522b8
00636c24  04 00 a0 e1                                      mov r0, r4
00636c28  18 d0 8d e2                                      add sp, sp, #0x18
00636c2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00636c30  14 70 8d e2                                      add r7, sp, #0x14
00636c34  08 20 a0 e1                                      mov r2, r8
00636c38  09 10 a0 e1                                      mov r1, sb
00636c3c  0a 30 a0 e1                                      mov r3, sl
00636c40  07 00 a0 e1                                      mov r0, r7
00636c44  00 60 8d e5                                      str r6, [sp]
00636c48  04 50 8d e5                                      str r5, [sp, #4]
00636c4c  65 fd ff eb                                      bl #0x6361e8
00636c50  14 30 9d e5                                      ldr r3, [sp, #0x14]
00636c54  18 00 8d e2                                      add r0, sp, #0x18
00636c58  0c 30 8d e5                                      str r3, [sp, #0xc]
00636c5c  00 00 53 e3                                      cmp r3, #0
00636c60  00 20 93 15                                      ldrne r2, [r3]
00636c64  01 20 82 12                                      addne r2, r2, #1
00636c68  00 20 83 15                                      strne r2, [r3]
00636c6c  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
00636c70  00 20 94 e5                                      ldr r2, [r4]
00636c74  00 30 84 e5                                      str r3, [r4]
00636c78  0c 20 20 e5                                      str r2, [r0, #-0xc]!
00636c7c  8d 6d f4 eb                                      bl #0x3522b8
00636c80  07 00 a0 e1                                      mov r0, r7
00636c84  8b 6d f4 eb                                      bl #0x3522b8
00636c88  e5 ff ff ea                                      b #0x636c24

; FUNCTION 0x00660f6c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada
; alias: _ZN6glitch7collada13ordering_funcERKNS0_37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataES4_
; demangled: glitch::collada::ordering_func(glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const&, glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const&)
; decoder-mode: arm
00660f6c  00 30 90 e5                                      ldr r3, [r0]
00660f70  00 00 91 e5                                      ldr r0, [r1]
00660f74  00 00 53 e1                                      cmp r3, r0
00660f78  00 00 a0 a3                                      movge r0, #0
00660f7c  01 00 a0 b3                                      movlt r0, #1
00660f80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00667c38, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada
; alias: _ZN6glitch7collada18getStringsInternalEPNS0_18ISceneNodeAnimator20E_INTERPOLATION_MODEE
; demangled: glitch::collada::getStringsInternal(glitch::collada::ISceneNodeAnimator::E_INTERPOLATION_MODE*)
; decoder-mode: arm
00667c38  04 00 9f e5                                      ldr r0, [pc, #4]
00667c3c  00 00 8f e0                                      add r0, pc, r0
00667c40  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00667c44  24 3c 33 00                                      .byte 0x24, 0x3c, 0x33, 0x00
