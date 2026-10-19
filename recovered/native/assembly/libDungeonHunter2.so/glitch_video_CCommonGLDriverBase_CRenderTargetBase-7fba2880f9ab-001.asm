; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b262c, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBaseD2Ev
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::~CRenderTargetBase()
; decoder-mode: arm
005b262c  48 30 9f e5                                      ldr r3, [pc, #0x48]
005b2630  48 20 9f e5                                      ldr r2, [pc, #0x48]
005b2634  70 40 2d e9                                      push {r4, r5, r6, lr}
005b2638  03 30 8f e0                                      add r3, pc, r3
005b263c  02 20 93 e7                                      ldr r2, [r3, r2]
005b2640  00 60 a0 e1                                      mov r6, r0
005b2644  48 40 86 e2                                      add r4, r6, #0x48
005b2648  08 20 82 e2                                      add r2, r2, #8
005b264c  50 20 80 e4                                      str r2, [r0], #0x50
005b2650  e3 ff ff eb                                      bl #0x5b25e4
005b2654  04 00 a0 e1                                      mov r0, r4
005b2658  e1 ff ff eb                                      bl #0x5b25e4
005b265c  28 50 86 e2                                      add r5, r6, #0x28
005b2660  08 40 44 e2                                      sub r4, r4, #8
005b2664  04 00 a0 e1                                      mov r0, r4
005b2668  dd ff ff eb                                      bl #0x5b25e4
005b266c  05 00 54 e1                                      cmp r4, r5
005b2670  fa ff ff 1a                                      bne #0x5b2660
005b2674  06 00 a0 e1                                      mov r0, r6
005b2678  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b267c  58 24 3e 00 24 46 00 00                          .byte 0x58, 0x24, 0x3e, 0x00, 0x24, 0x46, 0x00, 0x00

; FUNCTION 0x006dca20, declared_size=160, range_size=160, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase14copyAttachmentERNS2_11SAttachmentERKS3_
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::copyAttachment(glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment&, glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment const&)
; decoder-mode: arm
006dca20  70 40 2d e9                                      push {r4, r5, r6, lr}
006dca24  04 30 90 e5                                      ldr r3, [r0, #4]
006dca28  00 40 a0 e1                                      mov r4, r0
006dca2c  01 50 a0 e1                                      mov r5, r1
006dca30  00 00 53 e3                                      cmp r3, #0
006dca34  00 00 00 0a                                      beq #0x6dca3c
006dca38  e9 56 fb eb                                      bl #0x5b25e4
006dca3c  04 30 95 e5                                      ldr r3, [r5, #4]
006dca40  00 00 53 e3                                      cmp r3, #0
006dca44  1c 00 00 0a                                      beq #0x6dcabc
006dca48  b0 20 d5 e1                                      ldrh r2, [r5]
006dca4c  00 00 52 e3                                      cmp r2, #0
006dca50  0e 00 00 0a                                      beq #0x6dca90
006dca54  04 10 93 e5                                      ldr r1, [r3, #4]
006dca58  00 20 a0 e3                                      mov r2, #0
006dca5c  03 00 a0 e1                                      mov r0, r3
006dca60  01 10 81 e2                                      add r1, r1, #1
006dca64  04 10 83 e5                                      str r1, [r3, #4]
006dca68  01 10 a0 e3                                      mov r1, #1
006dca6c  03 20 c4 e5                                      strb r2, [r4, #3]
006dca70  04 30 84 e5                                      str r3, [r4, #4]
006dca74  b0 10 c4 e1                                      strh r1, [r4]
006dca78  02 20 c4 e5                                      strb r2, [r4, #2]
006dca7c  04 20 93 e5                                      ldr r2, [r3, #4]
006dca80  01 20 82 e2                                      add r2, r2, #1
006dca84  04 20 83 e5                                      str r2, [r3, #4]
006dca88  70 40 bd e8                                      pop {r4, r5, r6, lr}
006dca8c  bc 02 f1 ea                                      b #0x31d584
006dca90  04 10 93 e5                                      ldr r1, [r3, #4]
006dca94  03 00 a0 e1                                      mov r0, r3
006dca98  01 10 81 e2                                      add r1, r1, #1
006dca9c  04 10 83 e5                                      str r1, [r3, #4]
006dcaa0  03 c0 d5 e5                                      ldrb ip, [r5, #3]
006dcaa4  02 10 d5 e5                                      ldrb r1, [r5, #2]
006dcaa8  b0 20 c4 e1                                      strh r2, [r4]
006dcaac  03 c0 c4 e5                                      strb ip, [r4, #3]
006dcab0  02 10 c4 e5                                      strb r1, [r4, #2]
006dcab4  04 30 84 e5                                      str r3, [r4, #4]
006dcab8  ef ff ff ea                                      b #0x6dca7c
006dcabc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006dcbfc, declared_size=108, range_size=108, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase17CRenderTargetBase14getTargetCountENS0_13IRenderTarget17E_ATTACHMENT_TYPEE
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::getTargetCount(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE) const
; decoder-mode: arm
006dcbfc  03 00 51 e3                                      cmp r1, #3
006dcc00  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
006dcc04  06 00 00 ea                                      b #0x6dcc24
006dcc08  0f 00 00 ea                                      b #0x6dcc4c
006dcc0c  0a 00 00 ea                                      b #0x6dcc3c
006dcc10  05 00 00 ea                                      b #0x6dcc2c
006dcc14  ff ff ff ea                                      b #0x6dcc18
006dcc18  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
006dcc1c  00 00 53 e3                                      cmp r3, #0
006dcc20  0b 00 00 1a                                      bne #0x6dcc54
006dcc24  00 00 a0 e3                                      mov r0, #0
006dcc28  1e ff 2f e1                                      bx lr
006dcc2c  54 00 90 e5                                      ldr r0, [r0, #0x54]
006dcc30  00 00 50 e2                                      subs r0, r0, #0
006dcc34  01 00 a0 13                                      movne r0, #1
006dcc38  1e ff 2f e1                                      bx lr
006dcc3c  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
006dcc40  00 00 50 e2                                      subs r0, r0, #0
006dcc44  01 00 a0 13                                      movne r0, #1
006dcc48  1e ff 2f e1                                      bx lr
006dcc4c  59 00 d0 e5                                      ldrb r0, [r0, #0x59]
006dcc50  1e ff 2f e1                                      bx lr
006dcc54  54 00 90 e5                                      ldr r0, [r0, #0x54]
006dcc58  00 00 53 e1                                      cmp r3, r0
006dcc5c  00 00 a0 13                                      movne r0, #0
006dcc60  01 00 a0 03                                      moveq r0, #1
006dcc64  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcc68, declared_size=228, range_size=228, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase12removeTargetENS0_13IRenderTarget17E_ATTACHMENT_TYPEEj
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::removeTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE, unsigned int)
; decoder-mode: arm
006dcc68  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006dcc6c  00 40 a0 e1                                      mov r4, r0
006dcc70  02 60 a0 e1                                      mov r6, r2
006dcc74  03 00 51 e3                                      cmp r1, #3
006dcc78  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
006dcc7c  1d 00 00 ea                                      b #0x6dccf8
006dcc80  02 00 00 ea                                      b #0x6dcc90
006dcc84  29 00 00 ea                                      b #0x6dcd30
006dcc88  23 00 00 ea                                      b #0x6dcd1c
006dcc8c  1c 00 00 ea                                      b #0x6dcd04
006dcc90  05 70 82 e2                                      add r7, r2, #5
006dcc94  87 71 80 e0                                      add r7, r0, r7, lsl #3
006dcc98  07 00 a0 e1                                      mov r0, r7
006dcc9c  50 56 fb eb                                      bl #0x5b25e4
006dcca0  59 80 d4 e5                                      ldrb r8, [r4, #0x59]
006dcca4  01 80 48 e2                                      sub r8, r8, #1
006dcca8  78 80 ef e6                                      uxtb r8, r8
006dccac  00 00 58 e3                                      cmp r8, #0
006dccb0  59 80 c4 e5                                      strb r8, [r4, #0x59]
006dccb4  0f 00 00 0a                                      beq #0x6dccf8
006dccb8  76 50 ef e6                                      uxtb r5, r6
006dccbc  01 80 48 e2                                      sub r8, r8, #1
006dccc0  05 00 56 e1                                      cmp r6, r5
006dccc4  78 80 ef e6                                      uxtb r8, r8
006dccc8  07 00 00 9a                                      bls #0x6dccec
006dcccc  06 10 85 e2                                      add r1, r5, #6
006dccd0  01 50 85 e2                                      add r5, r5, #1
006dccd4  81 11 84 e0                                      add r1, r4, r1, lsl #3
006dccd8  07 00 a0 e1                                      mov r0, r7
006dccdc  75 50 ef e6                                      uxtb r5, r5
006dcce0  4e ff ff eb                                      bl #0x6dca20
006dcce4  05 00 56 e1                                      cmp r6, r5
006dcce8  f7 ff ff 8a                                      bhi #0x6dcccc
006dccec  05 00 88 e2                                      add r0, r8, #5
006dccf0  80 01 84 e0                                      add r0, r4, r0, lsl #3
006dccf4  3a 56 fb eb                                      bl #0x5b25e4
006dccf8  01 00 a0 e3                                      mov r0, #1
006dccfc  5a 00 c4 e5                                      strb r0, [r4, #0x5a]
006dcd00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006dcd04  4c 20 90 e5                                      ldr r2, [r0, #0x4c]
006dcd08  54 30 90 e5                                      ldr r3, [r0, #0x54]
006dcd0c  03 00 52 e1                                      cmp r2, r3
006dcd10  0b 00 00 1a                                      bne #0x6dcd44
006dcd14  48 00 80 e2                                      add r0, r0, #0x48
006dcd18  31 56 fb eb                                      bl #0x5b25e4
006dcd1c  50 00 84 e2                                      add r0, r4, #0x50
006dcd20  2f 56 fb eb                                      bl #0x5b25e4
006dcd24  01 00 a0 e3                                      mov r0, #1
006dcd28  5a 00 c4 e5                                      strb r0, [r4, #0x5a]
006dcd2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006dcd30  48 00 80 e2                                      add r0, r0, #0x48
006dcd34  2a 56 fb eb                                      bl #0x5b25e4
006dcd38  01 00 a0 e3                                      mov r0, #1
006dcd3c  5a 00 c4 e5                                      strb r0, [r4, #0x5a]
006dcd40  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006dcd44  00 00 a0 e3                                      mov r0, #0
006dcd48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006dcd4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase17CRenderTargetBase14getColorFormatEv
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::getColorFormat() const
; decoder-mode: arm
006dcd4c  58 00 d0 e5                                      ldrb r0, [r0, #0x58]
006dcd50  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dd0b4, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBaseD1Ev
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::~CRenderTargetBase()
; decoder-mode: arm
006dd0b4  48 30 9f e5                                      ldr r3, [pc, #0x48]
006dd0b8  48 20 9f e5                                      ldr r2, [pc, #0x48]
006dd0bc  70 40 2d e9                                      push {r4, r5, r6, lr}
006dd0c0  03 30 8f e0                                      add r3, pc, r3
006dd0c4  02 20 93 e7                                      ldr r2, [r3, r2]
006dd0c8  00 60 a0 e1                                      mov r6, r0
006dd0cc  48 40 86 e2                                      add r4, r6, #0x48
006dd0d0  08 20 82 e2                                      add r2, r2, #8
006dd0d4  50 20 80 e4                                      str r2, [r0], #0x50
006dd0d8  41 55 fb eb                                      bl #0x5b25e4
006dd0dc  04 00 a0 e1                                      mov r0, r4
006dd0e0  3f 55 fb eb                                      bl #0x5b25e4
006dd0e4  28 50 86 e2                                      add r5, r6, #0x28
006dd0e8  08 40 44 e2                                      sub r4, r4, #8
006dd0ec  04 00 a0 e1                                      mov r0, r4
006dd0f0  3b 55 fb eb                                      bl #0x5b25e4
006dd0f4  05 00 54 e1                                      cmp r4, r5
006dd0f8  fa ff ff 1a                                      bne #0x6dd0e8
006dd0fc  06 00 a0 e1                                      mov r0, r6
006dd100  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006dd104  d0 79 2b 00 24 46 00 00                          .byte 0xd0, 0x79, 0x2b, 0x00, 0x24, 0x46, 0x00, 0x00

; FUNCTION 0x006dd144, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBaseD0Ev
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::~CRenderTargetBase()
; decoder-mode: arm
006dd144  10 40 2d e9                                      push {r4, lr}
006dd148  00 40 a0 e1                                      mov r4, r0
006dd14c  d8 ff ff eb                                      bl #0x6dd0b4
006dd150  04 00 a0 e1                                      mov r0, r4
006dd154  55 c4 f0 eb                                      bl #0x30e2b0
006dd158  04 00 a0 e1                                      mov r0, r4
006dd15c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006dd1c8, declared_size=876, range_size=876, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase9setTargetENS0_13IRenderTarget17E_ATTACHMENT_TYPEENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvj
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE, glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&, void*, unsigned int)
; decoder-mode: arm
006dd1c8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006dd1cc  0c c0 90 e5                                      ldr ip, [r0, #0xc]
006dd1d0  14 d0 4d e2                                      sub sp, sp, #0x14
006dd1d4  00 40 a0 e1                                      mov r4, r0
006dd1d8  01 00 7c e3                                      cmn ip, #1
006dd1dc  01 50 a0 e1                                      mov r5, r1
006dd1e0  02 60 a0 e1                                      mov r6, r2
006dd1e4  30 80 9d e5                                      ldr r8, [sp, #0x30]
006dd1e8  34 70 9d e5                                      ldr r7, [sp, #0x34]
006dd1ec  14 00 00 1a                                      bne #0x6dd244
006dd1f0  00 10 93 e5                                      ldr r1, [r3]
006dd1f4  00 a0 90 e5                                      ldr sl, [r0]
006dd1f8  00 20 a0 e3                                      mov r2, #0
006dd1fc  0c 10 80 e5                                      str r1, [r0, #0xc]
006dd200  04 c0 93 e5                                      ldr ip, [r3, #4]
006dd204  0d 10 a0 e1                                      mov r1, sp
006dd208  10 c0 80 e5                                      str ip, [r0, #0x10]
006dd20c  04 c0 93 e5                                      ldr ip, [r3, #4]
006dd210  00 e0 93 e5                                      ldr lr, [r3]
006dd214  0c 30 9a e5                                      ldr r3, [sl, #0xc]
006dd218  04 40 8d e9                                      stmib sp, {r2, lr}
006dd21c  0c c0 8d e5                                      str ip, [sp, #0xc]
006dd220  00 20 8d e5                                      str r2, [sp]
006dd224  33 ff 2f e1                                      blx r3
006dd228  03 00 55 e3                                      cmp r5, #3
006dd22c  05 f1 8f 90                                      addls pc, pc, r5, lsl #2
006dd230  16 00 00 ea                                      b #0x6dd290
006dd234  4a 00 00 ea                                      b #0x6dd364
006dd238  1f 00 00 ea                                      b #0x6dd2bc
006dd23c  35 00 00 ea                                      b #0x6dd318
006dd240  04 00 00 ea                                      b #0x6dd258
006dd244  00 20 93 e5                                      ldr r2, [r3]
006dd248  02 00 5c e1                                      cmp ip, r2
006dd24c  4f 00 00 0a                                      beq #0x6dd390
006dd250  00 50 a0 e3                                      mov r5, #0
006dd254  15 00 00 ea                                      b #0x6dd2b0
006dd258  23 00 56 e3                                      cmp r6, #0x23
006dd25c  9a 00 00 1a                                      bne #0x6dd4cc
006dd260  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006dd264  00 00 53 e3                                      cmp r3, #0
006dd268  92 00 00 0a                                      beq #0x6dd4b8
006dd26c  01 00 77 e3                                      cmn r7, #1
006dd270  7a 00 00 0a                                      beq #0x6dd460
006dd274  54 30 94 e5                                      ldr r3, [r4, #0x54]
006dd278  00 00 53 e3                                      cmp r3, #0
006dd27c  01 00 00 0a                                      beq #0x6dd288
006dd280  50 00 84 e2                                      add r0, r4, #0x50
006dd284  d6 54 fb eb                                      bl #0x5b25e4
006dd288  48 50 84 e2                                      add r5, r4, #0x48
006dd28c  00 00 00 ea                                      b #0x6dd294
006dd290  00 50 a0 e3                                      mov r5, #0
006dd294  04 30 95 e5                                      ldr r3, [r5, #4]
006dd298  00 00 53 e3                                      cmp r3, #0
006dd29c  01 00 00 0a                                      beq #0x6dd2a8
006dd2a0  05 00 a0 e1                                      mov r0, r5
006dd2a4  ce 54 fb eb                                      bl #0x5b25e4
006dd2a8  01 30 a0 e3                                      mov r3, #1
006dd2ac  5a 30 c4 e5                                      strb r3, [r4, #0x5a]
006dd2b0  05 00 a0 e1                                      mov r0, r5
006dd2b4  14 d0 8d e2                                      add sp, sp, #0x14
006dd2b8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006dd2bc  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006dd2c0  00 00 53 e3                                      cmp r3, #0
006dd2c4  01 00 00 0a                                      beq #0x6dd2d0
006dd2c8  01 00 77 e3                                      cmn r7, #1
006dd2cc  69 00 00 0a                                      beq #0x6dd478
006dd2d0  23 00 56 e3                                      cmp r6, #0x23
006dd2d4  4b 00 00 0a                                      beq #0x6dd408
006dd2d8  54 30 94 e5                                      ldr r3, [r4, #0x54]
006dd2dc  00 00 53 e3                                      cmp r3, #0
006dd2e0  e8 ff ff 0a                                      beq #0x6dd288
006dd2e4  b0 25 d4 e1                                      ldrh r2, [r4, #0x50]
006dd2e8  00 00 52 e3                                      cmp r2, #0
006dd2ec  38 30 93 05                                      ldreq r3, [r3, #0x38]
006dd2f0  08 30 93 15                                      ldrne r3, [r3, #8]
006dd2f4  53 32 e5 07                                      ubfxeq r3, r3, #4, #6
006dd2f8  23 00 53 e3                                      cmp r3, #0x23
006dd2fc  e1 ff ff 1a                                      bne #0x6dd288
006dd300  04 02 9f e5                                      ldr r0, [pc, #0x204]
006dd304  03 10 a0 e3                                      mov r1, #3
006dd308  00 50 a0 e3                                      mov r5, #0
006dd30c  00 00 8f e0                                      add r0, pc, r0
006dd310  62 b6 fc eb                                      bl #0x60aca0
006dd314  e5 ff ff ea                                      b #0x6dd2b0
006dd318  54 30 94 e5                                      ldr r3, [r4, #0x54]
006dd31c  00 00 53 e3                                      cmp r3, #0
006dd320  01 00 00 0a                                      beq #0x6dd32c
006dd324  01 00 77 e3                                      cmn r7, #1
006dd328  58 00 00 0a                                      beq #0x6dd490
006dd32c  23 00 56 e3                                      cmp r6, #0x23
006dd330  3f 00 00 0a                                      beq #0x6dd434
006dd334  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006dd338  00 00 53 e3                                      cmp r3, #0
006dd33c  06 00 00 0a                                      beq #0x6dd35c
006dd340  b8 24 d4 e1                                      ldrh r2, [r4, #0x48]
006dd344  00 00 52 e3                                      cmp r2, #0
006dd348  38 30 93 05                                      ldreq r3, [r3, #0x38]
006dd34c  08 30 93 15                                      ldrne r3, [r3, #8]
006dd350  53 32 e5 07                                      ubfxeq r3, r3, #4, #6
006dd354  23 00 53 e3                                      cmp r3, #0x23
006dd358  1e 00 00 0a                                      beq #0x6dd3d8
006dd35c  50 50 84 e2                                      add r5, r4, #0x50
006dd360  cb ff ff ea                                      b #0x6dd294
006dd364  01 00 77 e3                                      cmn r7, #1
006dd368  0d 00 00 0a                                      beq #0x6dd3a4
006dd36c  59 30 d4 e5                                      ldrb r3, [r4, #0x59]
006dd370  03 00 57 e1                                      cmp r7, r3
006dd374  5a 00 00 2a                                      bhs #0x6dd4e4
006dd378  01 00 53 e3                                      cmp r3, #1
006dd37c  58 60 c4 05                                      strbeq r6, [r4, #0x58]
006dd380  48 00 00 1a                                      bne #0x6dd4a8
006dd384  05 50 87 e2                                      add r5, r7, #5
006dd388  85 51 84 e0                                      add r5, r4, r5, lsl #3
006dd38c  c0 ff ff ea                                      b #0x6dd294
006dd390  04 30 93 e5                                      ldr r3, [r3, #4]
006dd394  10 20 90 e5                                      ldr r2, [r0, #0x10]
006dd398  03 00 52 e1                                      cmp r2, r3
006dd39c  ab ff ff 1a                                      bne #0x6dd250
006dd3a0  a0 ff ff ea                                      b #0x6dd228
006dd3a4  08 30 94 e5                                      ldr r3, [r4, #8]
006dd3a8  59 50 d4 e5                                      ldrb r5, [r4, #0x59]
006dd3ac  a1 34 d3 e5                                      ldrb r3, [r3, #0x4a1]
006dd3b0  05 00 53 e1                                      cmp r3, r5
006dd3b4  0d 00 00 9a                                      bls #0x6dd3f0
006dd3b8  00 00 55 e3                                      cmp r5, #0
006dd3bc  58 60 c4 05                                      strbeq r6, [r4, #0x58]
006dd3c0  4d 00 00 1a                                      bne #0x6dd4fc
006dd3c4  01 30 85 e2                                      add r3, r5, #1
006dd3c8  05 50 85 e2                                      add r5, r5, #5
006dd3cc  59 30 c4 e5                                      strb r3, [r4, #0x59]
006dd3d0  85 51 84 e0                                      add r5, r4, r5, lsl #3
006dd3d4  ae ff ff ea                                      b #0x6dd294
006dd3d8  30 01 9f e5                                      ldr r0, [pc, #0x130]
006dd3dc  03 10 a0 e3                                      mov r1, #3
006dd3e0  00 50 a0 e3                                      mov r5, #0
006dd3e4  00 00 8f e0                                      add r0, pc, r0
006dd3e8  2c b6 fc eb                                      bl #0x60aca0
006dd3ec  af ff ff ea                                      b #0x6dd2b0
006dd3f0  1c 01 9f e5                                      ldr r0, [pc, #0x11c]
006dd3f4  02 10 a0 e3                                      mov r1, #2
006dd3f8  00 50 a0 e3                                      mov r5, #0
006dd3fc  00 00 8f e0                                      add r0, pc, r0
006dd400  26 b6 fc eb                                      bl #0x60aca0
006dd404  a9 ff ff ea                                      b #0x6dd2b0
006dd408  54 30 94 e5                                      ldr r3, [r4, #0x54]
006dd40c  00 00 53 e3                                      cmp r3, #0
006dd410  9c ff ff 0a                                      beq #0x6dd288
006dd414  03 00 58 e1                                      cmp r8, r3
006dd418  9a ff ff 0a                                      beq #0x6dd288
006dd41c  f4 00 9f e5                                      ldr r0, [pc, #0xf4]
006dd420  03 10 a0 e3                                      mov r1, #3
006dd424  00 50 a0 e3                                      mov r5, #0
006dd428  00 00 8f e0                                      add r0, pc, r0
006dd42c  1b b6 fc eb                                      bl #0x60aca0
006dd430  9e ff ff ea                                      b #0x6dd2b0
006dd434  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006dd438  00 00 53 e3                                      cmp r3, #0
006dd43c  c6 ff ff 0a                                      beq #0x6dd35c
006dd440  03 00 58 e1                                      cmp r8, r3
006dd444  c4 ff ff 0a                                      beq #0x6dd35c
006dd448  cc 00 9f e5                                      ldr r0, [pc, #0xcc]
006dd44c  03 10 a0 e3                                      mov r1, #3
006dd450  00 50 a0 e3                                      mov r5, #0
006dd454  00 00 8f e0                                      add r0, pc, r0
006dd458  10 b6 fc eb                                      bl #0x60aca0
006dd45c  93 ff ff ea                                      b #0x6dd2b0
006dd460  b8 00 9f e5                                      ldr r0, [pc, #0xb8]
006dd464  03 10 a0 e3                                      mov r1, #3
006dd468  00 50 a0 e3                                      mov r5, #0
006dd46c  00 00 8f e0                                      add r0, pc, r0
006dd470  0a b6 fc eb                                      bl #0x60aca0
006dd474  8d ff ff ea                                      b #0x6dd2b0
006dd478  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
006dd47c  03 10 a0 e3                                      mov r1, #3
006dd480  00 50 a0 e3                                      mov r5, #0
006dd484  00 00 8f e0                                      add r0, pc, r0
006dd488  04 b6 fc eb                                      bl #0x60aca0
006dd48c  87 ff ff ea                                      b #0x6dd2b0
006dd490  90 00 9f e5                                      ldr r0, [pc, #0x90]
006dd494  03 10 a0 e3                                      mov r1, #3
006dd498  00 50 a0 e3                                      mov r5, #0
006dd49c  00 00 8f e0                                      add r0, pc, r0
006dd4a0  fe b5 fc eb                                      bl #0x60aca0
006dd4a4  81 ff ff ea                                      b #0x6dd2b0
006dd4a8  58 30 d4 e5                                      ldrb r3, [r4, #0x58]
006dd4ac  06 00 53 e1                                      cmp r3, r6
006dd4b0  66 ff ff 1a                                      bne #0x6dd250
006dd4b4  b2 ff ff ea                                      b #0x6dd384
006dd4b8  54 30 94 e5                                      ldr r3, [r4, #0x54]
006dd4bc  00 00 53 e3                                      cmp r3, #0
006dd4c0  69 ff ff 1a                                      bne #0x6dd26c
006dd4c4  48 50 84 e2                                      add r5, r4, #0x48
006dd4c8  71 ff ff ea                                      b #0x6dd294
006dd4cc  58 00 9f e5                                      ldr r0, [pc, #0x58]
006dd4d0  03 10 a0 e3                                      mov r1, #3
006dd4d4  00 50 a0 e3                                      mov r5, #0
006dd4d8  00 00 8f e0                                      add r0, pc, r0
006dd4dc  ef b5 fc eb                                      bl #0x60aca0
006dd4e0  72 ff ff ea                                      b #0x6dd2b0
006dd4e4  44 00 9f e5                                      ldr r0, [pc, #0x44]
006dd4e8  01 10 a0 e3                                      mov r1, #1
006dd4ec  00 50 a0 e3                                      mov r5, #0
006dd4f0  00 00 8f e0                                      add r0, pc, r0
006dd4f4  e9 b5 fc eb                                      bl #0x60aca0
006dd4f8  6c ff ff ea                                      b #0x6dd2b0
006dd4fc  58 30 d4 e5                                      ldrb r3, [r4, #0x58]
006dd500  06 00 53 e1                                      cmp r3, r6
006dd504  51 ff ff 1a                                      bne #0x6dd250
006dd508  ad ff ff ea                                      b #0x6dd3c4
; mapping-symbol data/literal pool
006dd50c  1c ea 20 00 e4 e9 20 00 94 e8 20 00 a8 e8 20 00  .byte 0x1c, 0xea, 0x20, 0x00, 0xe4, 0xe9, 0x20, 0x00, 0x94, 0xe8, 0x20, 0x00, 0xa8, 0xe8, 0x20, 0x00
006dd51c  24 e9 20 00 dc e9 20 00 2c e8 20 00 14 e8 20 00  .byte 0x24, 0xe9, 0x20, 0x00, 0xdc, 0xe9, 0x20, 0x00, 0x2c, 0xe8, 0x20, 0x00, 0x14, 0xe8, 0x20, 0x00
006dd52c  48 e9 20 00 78 e7 20 00                          .byte 0x48, 0xe9, 0x20, 0x00, 0x78, 0xe7, 0x20, 0x00

; FUNCTION 0x006dd534, declared_size=204, range_size=204, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase17setTargetInternalENS0_13IRenderTarget17E_ATTACHMENT_TYPEERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_23E_TEXTURE_CUBE_MAP_FACEEjj
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned int, unsigned int)
; decoder-mode: arm
006dd534  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006dd538  00 c0 92 e5                                      ldr ip, [r2]
006dd53c  0c d0 4d e2                                      sub sp, sp, #0xc
006dd540  02 50 a0 e1                                      mov r5, r2
006dd544  00 00 5c e3                                      cmp ip, #0
006dd548  00 60 a0 e1                                      mov r6, r0
006dd54c  01 40 a0 e1                                      mov r4, r1
006dd550  03 70 a0 e1                                      mov r7, r3
006dd554  21 00 00 0a                                      beq #0x6dd5e0
006dd558  38 20 9c e5                                      ldr r2, [ip, #0x38]
006dd55c  03 30 02 e2                                      and r3, r2, #3
006dd560  01 00 53 e3                                      cmp r3, #1
006dd564  1d 00 00 0a                                      beq #0x6dd5e0
006dd568  00 00 51 e3                                      cmp r1, #0
006dd56c  17 00 00 1a                                      bne #0x6dd5d0
006dd570  24 e0 9d e5                                      ldr lr, [sp, #0x24]
006dd574  52 22 e5 e7                                      ubfx r2, r2, #4, #6
006dd578  20 30 8c e2                                      add r3, ip, #0x20
006dd57c  06 00 a0 e1                                      mov r0, r6
006dd580  04 10 a0 e1                                      mov r1, r4
006dd584  00 50 8d e8                                      stm sp, {ip, lr}
006dd588  0e ff ff eb                                      bl #0x6dd1c8
006dd58c  00 00 50 e3                                      cmp r0, #0
006dd590  12 00 00 0a                                      beq #0x6dd5e0
006dd594  02 70 c0 e5                                      strb r7, [r0, #2]
006dd598  20 30 9d e5                                      ldr r3, [sp, #0x20]
006dd59c  03 30 c0 e5                                      strb r3, [r0, #3]
006dd5a0  00 30 a0 e3                                      mov r3, #0
006dd5a4  b0 30 c0 e1                                      strh r3, [r0]
006dd5a8  00 30 95 e5                                      ldr r3, [r5]
006dd5ac  00 00 53 e3                                      cmp r3, #0
006dd5b0  04 30 80 e5                                      str r3, [r0, #4]
006dd5b4  04 20 93 15                                      ldrne r2, [r3, #4]
006dd5b8  01 20 82 12                                      addne r2, r2, #1
006dd5bc  04 20 83 15                                      strne r2, [r3, #4]
006dd5c0  03 00 54 e3                                      cmp r4, #3
006dd5c4  08 00 00 0a                                      beq #0x6dd5ec
006dd5c8  01 00 a0 e3                                      mov r0, #1
006dd5cc  04 00 00 ea                                      b #0x6dd5e4
006dd5d0  08 30 96 e5                                      ldr r3, [r6, #8]
006dd5d4  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
006dd5d8  02 0b 13 e3                                      tst r3, #0x800
006dd5dc  e3 ff ff 1a                                      bne #0x6dd570
006dd5e0  00 00 a0 e3                                      mov r0, #0
006dd5e4  0c d0 8d e2                                      add sp, sp, #0xc
006dd5e8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006dd5ec  50 00 86 e2                                      add r0, r6, #0x50
006dd5f0  48 10 86 e2                                      add r1, r6, #0x48
006dd5f4  09 fd ff eb                                      bl #0x6dca20
006dd5f8  01 00 a0 e3                                      mov r0, #1
006dd5fc  f8 ff ff ea                                      b #0x6dd5e4

; FUNCTION 0x006dd600, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase9setTargetENS0_13IRenderTarget17E_ATTACHMENT_TYPEERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_23E_TEXTURE_CUBE_MAP_FACEEjj
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned int, unsigned int)
; decoder-mode: arm
006dd600  cb ff ff ea                                      b #0x6dd534

; FUNCTION 0x006dd604, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase9addTargetENS0_13IRenderTarget17E_ATTACHMENT_TYPEERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_23E_TEXTURE_CUBE_MAP_FACEEj
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::addTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned int)
; decoder-mode: arm
006dd604  04 e0 2d e5                                      str lr, [sp, #-4]!
006dd608  00 c0 e0 e3                                      mvn ip, #0
006dd60c  0c d0 4d e2                                      sub sp, sp, #0xc
006dd610  04 c0 8d e5                                      str ip, [sp, #4]
006dd614  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006dd618  00 c0 8d e5                                      str ip, [sp]
006dd61c  c4 ff ff eb                                      bl #0x6dd534
006dd620  0c d0 8d e2                                      add sp, sp, #0xc
006dd624  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x006dd628, declared_size=168, range_size=168, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase17setTargetInternalENS0_13IRenderTarget17E_ATTACHMENT_TYPEERKN5boost13intrusive_ptrINS0_13IRenderBufferEEEj
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE, boost::intrusive_ptr<glitch::video::IRenderBuffer> const&, unsigned int)
; decoder-mode: arm
006dd628  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006dd62c  00 c0 92 e5                                      ldr ip, [r2]
006dd630  0c d0 4d e2                                      sub sp, sp, #0xc
006dd634  02 40 a0 e1                                      mov r4, r2
006dd638  00 00 5c e3                                      cmp ip, #0
006dd63c  03 70 a0 e1                                      mov r7, r3
006dd640  00 50 a0 e1                                      mov r5, r0
006dd644  01 60 a0 e1                                      mov r6, r1
006dd648  03 00 00 0a                                      beq #0x6dd65c
006dd64c  08 30 90 e5                                      ldr r3, [r0, #8]
006dd650  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
006dd654  02 0b 13 e3                                      tst r3, #0x800
006dd658  02 00 00 1a                                      bne #0x6dd668
006dd65c  00 00 a0 e3                                      mov r0, #0
006dd660  0c d0 8d e2                                      add sp, sp, #0xc
006dd664  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006dd668  08 20 9c e5                                      ldr r2, [ip, #8]
006dd66c  0c 30 8c e2                                      add r3, ip, #0xc
006dd670  04 70 8d e5                                      str r7, [sp, #4]
006dd674  00 c0 8d e5                                      str ip, [sp]
006dd678  d2 fe ff eb                                      bl #0x6dd1c8
006dd67c  00 00 50 e3                                      cmp r0, #0
006dd680  f5 ff ff 0a                                      beq #0x6dd65c
006dd684  01 20 a0 e3                                      mov r2, #1
006dd688  00 30 a0 e3                                      mov r3, #0
006dd68c  b0 20 c0 e1                                      strh r2, [r0]
006dd690  03 30 c0 e5                                      strb r3, [r0, #3]
006dd694  02 30 c0 e5                                      strb r3, [r0, #2]
006dd698  00 30 94 e5                                      ldr r3, [r4]
006dd69c  00 00 53 e3                                      cmp r3, #0
006dd6a0  04 30 80 e5                                      str r3, [r0, #4]
006dd6a4  04 20 93 15                                      ldrne r2, [r3, #4]
006dd6a8  01 20 82 12                                      addne r2, r2, #1
006dd6ac  04 20 83 15                                      strne r2, [r3, #4]
006dd6b0  03 00 56 e3                                      cmp r6, #3
006dd6b4  01 00 a0 13                                      movne r0, #1
006dd6b8  e8 ff ff 1a                                      bne #0x6dd660
006dd6bc  50 00 85 e2                                      add r0, r5, #0x50
006dd6c0  48 10 85 e2                                      add r1, r5, #0x48
006dd6c4  d5 fc ff eb                                      bl #0x6dca20
006dd6c8  01 00 a0 e3                                      mov r0, #1
006dd6cc  e3 ff ff ea                                      b #0x6dd660

; FUNCTION 0x006dd6d0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase9setTargetENS0_13IRenderTarget17E_ATTACHMENT_TYPEERKN5boost13intrusive_ptrINS0_13IRenderBufferEEEj
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::setTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE, boost::intrusive_ptr<glitch::video::IRenderBuffer> const&, unsigned int)
; decoder-mode: arm
006dd6d0  d4 ff ff ea                                      b #0x6dd628

; FUNCTION 0x006dd6d4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase9addTargetENS0_13IRenderTarget17E_ATTACHMENT_TYPEERKN5boost13intrusive_ptrINS0_13IRenderBufferEEE
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::addTarget(glitch::video::IRenderTarget::E_ATTACHMENT_TYPE, boost::intrusive_ptr<glitch::video::IRenderBuffer> const&)
; decoder-mode: arm
006dd6d4  00 30 e0 e3                                      mvn r3, #0
006dd6d8  d2 ff ff ea                                      b #0x6dd628

; FUNCTION 0x006ddb2c, declared_size=192, range_size=192, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBaseC1EPS1_
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::CRenderTargetBase(glitch::video::CCommonGLDriverBase*)
; decoder-mode: arm
006ddb2c  30 40 2d e9                                      push {r4, r5, lr}
006ddb30  0c d0 4d e2                                      sub sp, sp, #0xc
006ddb34  00 30 e0 e3                                      mvn r3, #0
006ddb38  0d 20 a0 e1                                      mov r2, sp
006ddb3c  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
006ddb40  00 40 a0 e1                                      mov r4, r0
006ddb44  04 30 8d e5                                      str r3, [sp, #4]
006ddb48  00 30 8d e5                                      str r3, [sp]
006ddb4c  65 fa ff eb                                      bl #0x6dc4e8
006ddb50  90 30 9f e5                                      ldr r3, [pc, #0x90]
006ddb54  05 50 8f e0                                      add r5, pc, r5
006ddb58  00 20 a0 e3                                      mov r2, #0
006ddb5c  03 30 95 e7                                      ldr r3, [r5, r3]
006ddb60  02 10 a0 e1                                      mov r1, r2
006ddb64  24 20 84 e5                                      str r2, [r4, #0x24]
006ddb68  08 30 83 e2                                      add r3, r3, #8
006ddb6c  00 30 84 e5                                      str r3, [r4]
006ddb70  28 c0 84 e2                                      add ip, r4, #0x28
006ddb74  02 00 a0 e1                                      mov r0, r2
006ddb78  0c 30 a0 e1                                      mov r3, ip
006ddb7c  ff 20 a0 e3                                      mov r2, #0xff
006ddb80  b1 20 a3 e1                                      strh r2, [r3, r1]!
006ddb84  08 10 81 e2                                      add r1, r1, #8
006ddb88  00 20 a0 e3                                      mov r2, #0
006ddb8c  20 00 51 e3                                      cmp r1, #0x20
006ddb90  04 00 83 e5                                      str r0, [r3, #4]
006ddb94  02 00 c3 e5                                      strb r0, [r3, #2]
006ddb98  03 20 c3 e5                                      strb r2, [r3, #3]
006ddb9c  f5 ff ff 1a                                      bne #0x6ddb78
006ddba0  27 30 a0 e3                                      mov r3, #0x27
006ddba4  58 30 c4 e5                                      strb r3, [r4, #0x58]
006ddba8  01 30 a0 e3                                      mov r3, #1
006ddbac  5a 30 c4 e5                                      strb r3, [r4, #0x5a]
006ddbb0  ff 30 a0 e3                                      mov r3, #0xff
006ddbb4  59 20 c4 e5                                      strb r2, [r4, #0x59]
006ddbb8  b8 34 c4 e1                                      strh r3, [r4, #0x48]
006ddbbc  4a 20 c4 e5                                      strb r2, [r4, #0x4a]
006ddbc0  4b 20 c4 e5                                      strb r2, [r4, #0x4b]
006ddbc4  4c 20 84 e5                                      str r2, [r4, #0x4c]
006ddbc8  b0 35 c4 e1                                      strh r3, [r4, #0x50]
006ddbcc  52 20 c4 e5                                      strb r2, [r4, #0x52]
006ddbd0  53 20 c4 e5                                      strb r2, [r4, #0x53]
006ddbd4  54 20 84 e5                                      str r2, [r4, #0x54]
006ddbd8  04 00 a0 e1                                      mov r0, r4
006ddbdc  0c d0 8d e2                                      add sp, sp, #0xc
006ddbe0  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
006ddbe4  3c 6f 2b 00 24 46 00 00                          .byte 0x3c, 0x6f, 0x2b, 0x00, 0x24, 0x46, 0x00, 0x00

; FUNCTION 0x006ddbec, declared_size=192, range_size=192, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBaseC2EPS1_
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::CRenderTargetBase(glitch::video::CCommonGLDriverBase*)
; decoder-mode: arm
006ddbec  30 40 2d e9                                      push {r4, r5, lr}
006ddbf0  0c d0 4d e2                                      sub sp, sp, #0xc
006ddbf4  00 30 e0 e3                                      mvn r3, #0
006ddbf8  0d 20 a0 e1                                      mov r2, sp
006ddbfc  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
006ddc00  00 40 a0 e1                                      mov r4, r0
006ddc04  04 30 8d e5                                      str r3, [sp, #4]
006ddc08  00 30 8d e5                                      str r3, [sp]
006ddc0c  35 fa ff eb                                      bl #0x6dc4e8
006ddc10  90 30 9f e5                                      ldr r3, [pc, #0x90]
006ddc14  05 50 8f e0                                      add r5, pc, r5
006ddc18  00 20 a0 e3                                      mov r2, #0
006ddc1c  03 30 95 e7                                      ldr r3, [r5, r3]
006ddc20  02 10 a0 e1                                      mov r1, r2
006ddc24  24 20 84 e5                                      str r2, [r4, #0x24]
006ddc28  08 30 83 e2                                      add r3, r3, #8
006ddc2c  00 30 84 e5                                      str r3, [r4]
006ddc30  28 c0 84 e2                                      add ip, r4, #0x28
006ddc34  02 00 a0 e1                                      mov r0, r2
006ddc38  0c 30 a0 e1                                      mov r3, ip
006ddc3c  ff 20 a0 e3                                      mov r2, #0xff
006ddc40  b1 20 a3 e1                                      strh r2, [r3, r1]!
006ddc44  08 10 81 e2                                      add r1, r1, #8
006ddc48  00 20 a0 e3                                      mov r2, #0
006ddc4c  20 00 51 e3                                      cmp r1, #0x20
006ddc50  04 00 83 e5                                      str r0, [r3, #4]
006ddc54  02 00 c3 e5                                      strb r0, [r3, #2]
006ddc58  03 20 c3 e5                                      strb r2, [r3, #3]
006ddc5c  f5 ff ff 1a                                      bne #0x6ddc38
006ddc60  27 30 a0 e3                                      mov r3, #0x27
006ddc64  58 30 c4 e5                                      strb r3, [r4, #0x58]
006ddc68  01 30 a0 e3                                      mov r3, #1
006ddc6c  5a 30 c4 e5                                      strb r3, [r4, #0x5a]
006ddc70  ff 30 a0 e3                                      mov r3, #0xff
006ddc74  59 20 c4 e5                                      strb r2, [r4, #0x59]
006ddc78  b8 34 c4 e1                                      strh r3, [r4, #0x48]
006ddc7c  4a 20 c4 e5                                      strb r2, [r4, #0x4a]
006ddc80  4b 20 c4 e5                                      strb r2, [r4, #0x4b]
006ddc84  4c 20 84 e5                                      str r2, [r4, #0x4c]
006ddc88  b0 35 c4 e1                                      strh r3, [r4, #0x50]
006ddc8c  52 20 c4 e5                                      strb r2, [r4, #0x52]
006ddc90  53 20 c4 e5                                      strb r2, [r4, #0x53]
006ddc94  54 20 84 e5                                      str r2, [r4, #0x54]
006ddc98  04 00 a0 e1                                      mov r0, r4
006ddc9c  0c d0 8d e2                                      add sp, sp, #0xc
006ddca0  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
006ddca4  7c 6e 2b 00 24 46 00 00                          .byte 0x7c, 0x6e, 0x2b, 0x00, 0x24, 0x46, 0x00, 0x00
