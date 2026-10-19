; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dcbec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CTextureBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase12CTextureBase12getMappedPtrEv
; demangled: glitch::video::CCommonGLDriverBase::CTextureBase::getMappedPtr() const
; decoder-mode: arm
006dcbec  00 00 a0 e3                                      mov r0, #0
006dcbf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcbf4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CTextureBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase12CTextureBase9unmapImplEv
; demangled: glitch::video::CCommonGLDriverBase::CTextureBase::unmapImpl() const
; decoder-mode: arm
006dcbf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dd194, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CTextureBase
; alias: _ZN6glitch5video19CCommonGLDriverBase12CTextureBaseD1Ev
; demangled: glitch::video::CCommonGLDriverBase::CTextureBase::~CTextureBase()
; decoder-mode: arm
006dd194  24 30 9f e5                                      ldr r3, [pc, #0x24]
006dd198  24 20 9f e5                                      ldr r2, [pc, #0x24]
006dd19c  10 40 2d e9                                      push {r4, lr}
006dd1a0  03 30 8f e0                                      add r3, pc, r3
006dd1a4  02 20 93 e7                                      ldr r2, [r3, r2]
006dd1a8  00 40 a0 e1                                      mov r4, r0
006dd1ac  08 20 82 e2                                      add r2, r2, #8
006dd1b0  00 20 80 e5                                      str r2, [r0]
006dd1b4  77 84 fc eb                                      bl #0x5fe398
006dd1b8  04 00 a0 e1                                      mov r0, r4
006dd1bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006dd1c0  f0 78 2b 00 10 3c 00 00                          .byte 0xf0, 0x78, 0x2b, 0x00, 0x10, 0x3c, 0x00, 0x00

; FUNCTION 0x006ddd44, declared_size=340, range_size=340, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CTextureBase
; alias: _ZN6glitch5video19CCommonGLDriverBase12CTextureBase7mapImplEhNS0_23E_TEXTURE_CUBE_MAP_FACEEh
; demangled: glitch::video::CCommonGLDriverBase::CTextureBase::mapImpl(unsigned char, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)
; decoder-mode: arm
006ddd44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ddd48  00 40 a0 e1                                      mov r4, r0
006ddd4c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
006ddd50  01 10 01 e2                                      and r1, r1, #1
006ddd54  02 50 a0 e1                                      mov r5, r2
006ddd58  00 00 50 e3                                      cmp r0, #0
006ddd5c  03 60 a0 e1                                      mov r6, r3
006ddd60  04 70 81 e3                                      orr r7, r1, #4
006ddd64  28 00 00 0a                                      beq #0x6dde0c
006ddd68  3e 20 d4 e5                                      ldrb r2, [r4, #0x3e]
006ddd6c  b0 c4 d4 e1                                      ldrh ip, [r4, #0x40]
006ddd70  30 00 94 e5                                      ldr r0, [r4, #0x30]
006ddd74  92 35 21 e0                                      mla r1, r2, r5, r3
006ddd78  01 c0 8c e3                                      orr ip, ip, #1
006ddd7c  01 30 82 e2                                      add r3, r2, #1
006ddd80  b0 c4 c4 e1                                      strh ip, [r4, #0x40]
006ddd84  03 31 80 e0                                      add r3, r0, r3, lsl #2
006ddd88  a1 22 a0 e1                                      lsr r2, r1, #5
006ddd8c  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
006ddd90  1f 10 01 e2                                      and r1, r1, #0x1f
006ddd94  01 c0 a0 e3                                      mov ip, #1
006ddd98  1c 11 80 e1                                      orr r1, r0, ip, lsl r1
006ddd9c  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
006ddda0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
006ddda4  00 00 53 e3                                      cmp r3, #0
006ddda8  17 00 00 0a                                      beq #0x6dde0c
006dddac  3f 20 d4 e5                                      ldrb r2, [r4, #0x3f]
006dddb0  30 10 94 e5                                      ldr r1, [r4, #0x30]
006dddb4  87 72 a0 e1                                      lsl r7, r7, #5
006dddb8  02 00 12 e3                                      tst r2, #2
006dddbc  3e 00 d4 05                                      ldrbeq r0, [r4, #0x3e]
006dddc0  00 00 91 15                                      ldrne r0, [r1]
006dddc4  04 10 91 15                                      ldrne r1, [r1, #4]
006dddc8  00 01 91 07                                      ldreq r0, [r1, r0, lsl #2]
006dddcc  06 c1 91 07                                      ldreq ip, [r1, r6, lsl #2]
006dddd0  01 00 60 10                                      rsbne r0, r0, r1
006dddd4  7f 00 80 02                                      addeq r0, r0, #0x7f
006dddd8  7f 00 c0 03                                      biceq r0, r0, #0x7f
006ddddc  90 05 00 10                                      mulne r0, r0, r5
006ddde0  90 c5 20 00                                      mlaeq r0, r0, r5, ip
006ddde4  00 00 56 e3                                      cmp r6, #0
006ddde8  00 00 55 03                                      cmpeq r5, #0
006dddec  01 70 87 e3                                      orr r7, r7, #1
006dddf0  86 51 85 e1                                      orr r5, r5, r6, lsl #3
006dddf4  40 20 82 03                                      orreq r2, r2, #0x40
006dddf8  00 00 83 e0                                      add r0, r3, r0
006dddfc  42 70 c4 e5                                      strb r7, [r4, #0x42]
006dde00  43 50 c4 e5                                      strb r5, [r4, #0x43]
006dde04  3f 20 c4 05                                      strbeq r2, [r4, #0x3f]
006dde08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006dde0c  38 30 94 e5                                      ldr r3, [r4, #0x38]
006dde10  3f 20 d4 e5                                      ldrb r2, [r4, #0x3f]
006dde14  03 30 03 e2                                      and r3, r3, #3
006dde18  02 00 53 e3                                      cmp r3, #2
006dde1c  05 30 a0 03                                      moveq r3, #5
006dde20  00 30 a0 13                                      movne r3, #0
006dde24  02 00 12 e3                                      tst r2, #2
006dde28  30 10 94 15                                      ldrne r1, [r4, #0x30]
006dde2c  30 20 94 05                                      ldreq r2, [r4, #0x30]
006dde30  3e 10 d4 05                                      ldrbeq r1, [r4, #0x3e]
006dde34  00 20 91 15                                      ldrne r2, [r1]
006dde38  04 00 91 15                                      ldrne r0, [r1, #4]
006dde3c  01 21 92 07                                      ldreq r2, [r2, r1, lsl #2]
006dde40  00 10 a0 e3                                      mov r1, #0
006dde44  00 20 62 10                                      rsbne r2, r2, r0
006dde48  7f 00 82 e2                                      add r0, r2, #0x7f
006dde4c  7f 00 c0 e3                                      bic r0, r0, #0x7f
006dde50  90 23 20 e0                                      mla r0, r0, r3, r2
006dde54  d3 58 f9 eb                                      bl #0x5341a8
006dde58  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
006dde5c  00 10 a0 e1                                      mov r1, r0
006dde60  01 20 a0 e3                                      mov r2, #1
006dde64  d3 30 e0 e7                                      ubfx r3, r3, #1, #1
006dde68  04 00 a0 e1                                      mov r0, r4
006dde6c  40 80 fc eb                                      bl #0x5fdf74
006dde70  18 00 9f e5                                      ldr r0, [pc, #0x18]
006dde74  18 10 9f e5                                      ldr r1, [pc, #0x18]
006dde78  02 20 a0 e3                                      mov r2, #2
006dde7c  00 00 8f e0                                      add r0, pc, r0
006dde80  01 10 8f e0                                      add r1, pc, r1
006dde84  97 b3 fc eb                                      bl #0x60ace8
006dde88  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
006dde8c  c6 ff ff ea                                      b #0x6dddac
; mapping-symbol data/literal pool
006dde90  24 e0 20 00 38 e0 20 00                          .byte 0x24, 0xe0, 0x20, 0x00, 0x38, 0xe0, 0x20, 0x00

; FUNCTION 0x006dde98, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CTextureBase
; alias: _ZN6glitch5video19CCommonGLDriverBase12CTextureBaseC1EPKcPS1_RKNS0_12STextureDescE
; demangled: glitch::video::CCommonGLDriverBase::CTextureBase::CTextureBase(char const*, glitch::video::CCommonGLDriverBase*, glitch::video::STextureDesc const&)
; decoder-mode: arm
006dde98  70 40 2d e9                                      push {r4, r5, r6, lr}
006dde9c  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
006ddea0  00 40 a0 e1                                      mov r4, r0
006ddea4  0d 82 fc eb                                      bl #0x5fe6e0
006ddea8  24 30 9f e5                                      ldr r3, [pc, #0x24]
006ddeac  05 50 8f e0                                      add r5, pc, r5
006ddeb0  00 20 a0 e3                                      mov r2, #0
006ddeb4  03 30 95 e7                                      ldr r3, [r5, r3]
006ddeb8  58 20 c4 e5                                      strb r2, [r4, #0x58]
006ddebc  54 20 84 e5                                      str r2, [r4, #0x54]
006ddec0  08 30 83 e2                                      add r3, r3, #8
006ddec4  00 30 84 e5                                      str r3, [r4]
006ddec8  04 00 a0 e1                                      mov r0, r4
006ddecc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006dded0  e4 6b 2b 00 10 3c 00 00                          .byte 0xe4, 0x6b, 0x2b, 0x00, 0x10, 0x3c, 0x00, 0x00

; FUNCTION 0x006dded8, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CTextureBase
; alias: _ZN6glitch5video19CCommonGLDriverBase12CTextureBaseC2EPKcPS1_RKNS0_12STextureDescE
; demangled: glitch::video::CCommonGLDriverBase::CTextureBase::CTextureBase(char const*, glitch::video::CCommonGLDriverBase*, glitch::video::STextureDesc const&)
; decoder-mode: arm
006dded8  70 40 2d e9                                      push {r4, r5, r6, lr}
006ddedc  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
006ddee0  00 40 a0 e1                                      mov r4, r0
006ddee4  fd 81 fc eb                                      bl #0x5fe6e0
006ddee8  24 30 9f e5                                      ldr r3, [pc, #0x24]
006ddeec  05 50 8f e0                                      add r5, pc, r5
006ddef0  00 20 a0 e3                                      mov r2, #0
006ddef4  03 30 95 e7                                      ldr r3, [r5, r3]
006ddef8  58 20 c4 e5                                      strb r2, [r4, #0x58]
006ddefc  54 20 84 e5                                      str r2, [r4, #0x54]
006ddf00  08 30 83 e2                                      add r3, r3, #8
006ddf04  00 30 84 e5                                      str r3, [r4]
006ddf08  04 00 a0 e1                                      mov r0, r4
006ddf0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006ddf10  a4 6b 2b 00 10 3c 00 00                          .byte 0xa4, 0x6b, 0x2b, 0x00, 0x10, 0x3c, 0x00, 0x00

; FUNCTION 0x006de224, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CTextureBase
; alias: _ZN6glitch5video19CCommonGLDriverBase12CTextureBaseD0Ev
; demangled: glitch::video::CCommonGLDriverBase::CTextureBase::~CTextureBase()
; decoder-mode: arm
006de224  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006de228  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006de22c  10 40 2d e9                                      push {r4, lr}
006de230  03 30 8f e0                                      add r3, pc, r3
006de234  02 20 93 e7                                      ldr r2, [r3, r2]
006de238  00 40 a0 e1                                      mov r4, r0
006de23c  08 20 82 e2                                      add r2, r2, #8
006de240  00 20 80 e5                                      str r2, [r0]
006de244  53 80 fc eb                                      bl #0x5fe398
006de248  04 00 a0 e1                                      mov r0, r4
006de24c  17 c0 f0 eb                                      bl #0x30e2b0
006de250  04 00 a0 e1                                      mov r0, r4
006de254  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006de258  60 68 2b 00 10 3c 00 00                          .byte 0x60, 0x68, 0x2b, 0x00, 0x10, 0x3c, 0x00, 0x00
