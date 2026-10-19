; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f83a0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZN6glitch5scene27CParticleAttractionAffector8setPointERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleAttractionAffector::setPoint(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006f83a0  00 30 91 e5                                      ldr r3, [r1]
006f83a4  08 30 80 e5                                      str r3, [r0, #8]
006f83a8  04 30 91 e5                                      ldr r3, [r1, #4]
006f83ac  0c 30 80 e5                                      str r3, [r0, #0xc]
006f83b0  08 30 91 e5                                      ldr r3, [r1, #8]
006f83b4  10 30 80 e5                                      str r3, [r0, #0x10]
006f83b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f83bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZN6glitch5scene27CParticleAttractionAffector8setSpeedEf
; demangled: glitch::scene::CParticleAttractionAffector::setSpeed(float)
; decoder-mode: arm
006f83bc  14 10 80 e5                                      str r1, [r0, #0x14]
006f83c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f83c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZN6glitch5scene27CParticleAttractionAffector10setAttractEb
; demangled: glitch::scene::CParticleAttractionAffector::setAttract(bool)
; decoder-mode: arm
006f83c4  1b 10 c0 e5                                      strb r1, [r0, #0x1b]
006f83c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f83cc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZN6glitch5scene27CParticleAttractionAffector10setAffectXEb
; demangled: glitch::scene::CParticleAttractionAffector::setAffectX(bool)
; decoder-mode: arm
006f83cc  18 10 c0 e5                                      strb r1, [r0, #0x18]
006f83d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f83d4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZN6glitch5scene27CParticleAttractionAffector10setAffectYEb
; demangled: glitch::scene::CParticleAttractionAffector::setAffectY(bool)
; decoder-mode: arm
006f83d4  19 10 c0 e5                                      strb r1, [r0, #0x19]
006f83d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f83dc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZN6glitch5scene27CParticleAttractionAffector10setAffectZEb
; demangled: glitch::scene::CParticleAttractionAffector::setAffectZ(bool)
; decoder-mode: arm
006f83dc  1a 10 c0 e5                                      strb r1, [r0, #0x1a]
006f83e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f83e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZNK6glitch5scene27CParticleAttractionAffector8getPointEv
; demangled: glitch::scene::CParticleAttractionAffector::getPoint() const
; decoder-mode: arm
006f83e4  08 00 80 e2                                      add r0, r0, #8
006f83e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f83ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZNK6glitch5scene27CParticleAttractionAffector8getSpeedEv
; demangled: glitch::scene::CParticleAttractionAffector::getSpeed() const
; decoder-mode: arm
006f83ec  14 00 90 e5                                      ldr r0, [r0, #0x14]
006f83f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f83f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZNK6glitch5scene27CParticleAttractionAffector10getAttractEv
; demangled: glitch::scene::CParticleAttractionAffector::getAttract() const
; decoder-mode: arm
006f83f4  1b 00 d0 e5                                      ldrb r0, [r0, #0x1b]
006f83f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f83fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZNK6glitch5scene27CParticleAttractionAffector10getAffectXEv
; demangled: glitch::scene::CParticleAttractionAffector::getAffectX() const
; decoder-mode: arm
006f83fc  18 00 d0 e5                                      ldrb r0, [r0, #0x18]
006f8400  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8404, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZNK6glitch5scene27CParticleAttractionAffector10getAffectYEv
; demangled: glitch::scene::CParticleAttractionAffector::getAffectY() const
; decoder-mode: arm
006f8404  19 00 d0 e5                                      ldrb r0, [r0, #0x19]
006f8408  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f840c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZNK6glitch5scene27CParticleAttractionAffector10getAffectZEv
; demangled: glitch::scene::CParticleAttractionAffector::getAffectZ() const
; decoder-mode: arm
006f840c  1a 00 d0 e5                                      ldrb r0, [r0, #0x1a]
006f8410  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f845c, declared_size=204, range_size=204, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZN6glitch5scene27CParticleAttractionAffectorC2ERKNS_4core8vector3dIfEEfbbbb
; demangled: glitch::scene::CParticleAttractionAffector::CParticleAttractionAffector(glitch::core::vector3d<float> const&, float, bool, bool, bool, bool)
; decoder-mode: arm
006f845c  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
006f8460  04 40 81 e2                                      add r4, r1, #4
006f8464  04 60 94 e5                                      ldr r6, [r4, #4]
006f8468  04 50 84 e2                                      add r5, r4, #4
006f846c  1c a0 dd e5                                      ldrb sl, [sp, #0x1c]
006f8470  00 60 80 e5                                      str r6, [r0]
006f8474  04 70 95 e5                                      ldr r7, [r5, #4]
006f8478  1c 60 16 e5                                      ldr r6, [r6, #-0x1c]
006f847c  20 80 dd e5                                      ldrb r8, [sp, #0x20]
006f8480  06 70 80 e7                                      str r7, [r0, r6]
006f8484  00 70 90 e5                                      ldr r7, [r0]
006f8488  08 60 95 e5                                      ldr r6, [r5, #8]
006f848c  0c 50 17 e5                                      ldr r5, [r7, #-0xc]
006f8490  24 70 dd e5                                      ldrb r7, [sp, #0x24]
006f8494  05 60 80 e7                                      str r6, [r0, r5]
006f8498  01 50 a0 e3                                      mov r5, #1
006f849c  04 50 c0 e5                                      strb r5, [r0, #4]
006f84a0  04 50 91 e5                                      ldr r5, [r1, #4]
006f84a4  28 60 dd e5                                      ldrb r6, [sp, #0x28]
006f84a8  00 50 80 e5                                      str r5, [r0]
006f84ac  10 90 94 e5                                      ldr sb, [r4, #0x10]
006f84b0  1c 50 15 e5                                      ldr r5, [r5, #-0x1c]
006f84b4  05 90 80 e7                                      str sb, [r0, r5]
006f84b8  00 90 90 e5                                      ldr sb, [r0]
006f84bc  14 50 94 e5                                      ldr r5, [r4, #0x14]
006f84c0  0c 40 19 e5                                      ldr r4, [sb, #-0xc]
006f84c4  04 50 80 e7                                      str r5, [r0, r4]
006f84c8  00 40 91 e5                                      ldr r4, [r1]
006f84cc  00 40 80 e5                                      str r4, [r0]
006f84d0  1c 50 91 e5                                      ldr r5, [r1, #0x1c]
006f84d4  1c 40 14 e5                                      ldr r4, [r4, #-0x1c]
006f84d8  04 50 80 e7                                      str r5, [r0, r4]
006f84dc  00 40 90 e5                                      ldr r4, [r0]
006f84e0  20 10 91 e5                                      ldr r1, [r1, #0x20]
006f84e4  0c 40 14 e5                                      ldr r4, [r4, #-0xc]
006f84e8  04 10 80 e7                                      str r1, [r0, r4]
006f84ec  00 10 92 e5                                      ldr r1, [r2]
006f84f0  08 10 80 e5                                      str r1, [r0, #8]
006f84f4  04 10 92 e5                                      ldr r1, [r2, #4]
006f84f8  0c 10 80 e5                                      str r1, [r0, #0xc]
006f84fc  08 20 92 e5                                      ldr r2, [r2, #8]
006f8500  00 10 a0 e3                                      mov r1, #0
006f8504  1c 10 80 e5                                      str r1, [r0, #0x1c]
006f8508  14 30 80 e5                                      str r3, [r0, #0x14]
006f850c  10 20 80 e5                                      str r2, [r0, #0x10]
006f8510  18 80 c0 e5                                      strb r8, [r0, #0x18]
006f8514  19 70 c0 e5                                      strb r7, [r0, #0x19]
006f8518  1a 60 c0 e5                                      strb r6, [r0, #0x1a]
006f851c  1b a0 c0 e5                                      strb sl, [r0, #0x1b]
006f8520  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
006f8524  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8528, declared_size=268, range_size=268, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZN6glitch5scene27CParticleAttractionAffectorC1ERKNS_4core8vector3dIfEEfbbbb
; demangled: glitch::scene::CParticleAttractionAffector::CParticleAttractionAffector(glitch::core::vector3d<float> const&, float, bool, bool, bool, bool)
; decoder-mode: arm
006f8528  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
006f852c  f0 50 9f e5                                      ldr r5, [pc, #0xf0]
006f8530  f0 c0 9f e5                                      ldr ip, [pc, #0xf0]
006f8534  f0 60 9f e5                                      ldr r6, [pc, #0xf0]
006f8538  05 50 8f e0                                      add r5, pc, r5
006f853c  0c 40 95 e7                                      ldr r4, [r5, ip]
006f8540  06 60 95 e7                                      ldr r6, [r5, r6]
006f8544  01 70 a0 e3                                      mov r7, #1
006f8548  24 80 94 e5                                      ldr r8, [r4, #0x24]
006f854c  08 60 86 e2                                      add r6, r6, #8
006f8550  24 70 80 e5                                      str r7, [r0, #0x24]
006f8554  00 80 80 e5                                      str r8, [r0]
006f8558  20 60 80 e5                                      str r6, [r0, #0x20]
006f855c  0c 60 18 e5                                      ldr r6, [r8, #-0xc]
006f8560  08 a0 94 e5                                      ldr sl, [r4, #8]
006f8564  28 90 94 e5                                      ldr sb, [r4, #0x28]
006f8568  04 80 94 e5                                      ldr r8, [r4, #4]
006f856c  14 b0 94 e5                                      ldr fp, [r4, #0x14]
006f8570  06 90 80 e7                                      str sb, [r0, r6]
006f8574  00 a0 80 e5                                      str sl, [r0]
006f8578  1c 60 1a e5                                      ldr r6, [sl, #-0x1c]
006f857c  0c 90 94 e5                                      ldr sb, [r4, #0xc]
006f8580  10 a0 94 e5                                      ldr sl, [r4, #0x10]
006f8584  18 40 94 e5                                      ldr r4, [r4, #0x18]
006f8588  06 90 80 e7                                      str sb, [r0, r6]
006f858c  00 90 90 e5                                      ldr sb, [r0]
006f8590  08 d0 4d e2                                      sub sp, sp, #8
006f8594  04 40 8d e5                                      str r4, [sp, #4]
006f8598  0c 40 19 e5                                      ldr r4, [sb, #-0xc]
006f859c  8c 60 9f e5                                      ldr r6, [pc, #0x8c]
006f85a0  04 a0 80 e7                                      str sl, [r0, r4]
006f85a4  00 80 80 e5                                      str r8, [r0]
006f85a8  04 70 c0 e5                                      strb r7, [r0, #4]
006f85ac  1c 40 18 e5                                      ldr r4, [r8, #-0x1c]
006f85b0  06 60 95 e7                                      ldr r6, [r5, r6]
006f85b4  2c 80 dd e5                                      ldrb r8, [sp, #0x2c]
006f85b8  04 b0 80 e7                                      str fp, [r0, r4]
006f85bc  00 70 90 e5                                      ldr r7, [r0]
006f85c0  04 b0 9d e5                                      ldr fp, [sp, #4]
006f85c4  80 90 86 e2                                      add sb, r6, #0x80
006f85c8  0c 70 17 e5                                      ldr r7, [r7, #-0xc]
006f85cc  1c 60 86 e2                                      add r6, r6, #0x1c
006f85d0  28 40 dd e5                                      ldrb r4, [sp, #0x28]
006f85d4  30 a0 dd e5                                      ldrb sl, [sp, #0x30]
006f85d8  07 b0 80 e7                                      str fp, [r0, r7]
006f85dc  00 60 80 e5                                      str r6, [r0]
006f85e0  20 90 80 e5                                      str sb, [r0, #0x20]
006f85e4  00 60 91 e5                                      ldr r6, [r1]
006f85e8  08 60 80 e5                                      str r6, [r0, #8]
006f85ec  04 50 91 e5                                      ldr r5, [r1, #4]
006f85f0  0c 50 80 e5                                      str r5, [r0, #0xc]
006f85f4  08 10 91 e5                                      ldr r1, [r1, #8]
006f85f8  00 50 a0 e3                                      mov r5, #0
006f85fc  1c 50 80 e5                                      str r5, [r0, #0x1c]
006f8600  14 20 80 e5                                      str r2, [r0, #0x14]
006f8604  10 10 80 e5                                      str r1, [r0, #0x10]
006f8608  18 40 c0 e5                                      strb r4, [r0, #0x18]
006f860c  19 80 c0 e5                                      strb r8, [r0, #0x19]
006f8610  1a a0 c0 e5                                      strb sl, [r0, #0x1a]
006f8614  1b 30 c0 e5                                      strb r3, [r0, #0x1b]
006f8618  08 d0 8d e2                                      add sp, sp, #8
006f861c  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
006f8620  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006f8624  58 c5 29 00 8c 36 00 00 44 2b 00 00 e4 14 00 00  .byte 0x58, 0xc5, 0x29, 0x00, 0x8c, 0x36, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xe4, 0x14, 0x00, 0x00

; FUNCTION 0x006f8634, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZN6glitch5scene27CParticleAttractionAffectorD1Ev
; demangled: glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector()
; decoder-mode: arm
006f8634  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8638, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZTv0_n24_N6glitch5scene27CParticleAttractionAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector()
; decoder-mode: arm
006f8638  00 30 90 e5                                      ldr r3, [r0]
006f863c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f8640  03 00 80 e0                                      add r0, r0, r3
006f8644  fa ff ff ea                                      b #0x6f8634

; FUNCTION 0x006f8648, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZTv0_n12_N6glitch5scene27CParticleAttractionAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector()
; decoder-mode: arm
006f8648  00 30 90 e5                                      ldr r3, [r0]
006f864c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f8650  03 00 80 e0                                      add r0, r0, r3
006f8654  f6 ff ff ea                                      b #0x6f8634

; FUNCTION 0x006f86cc, declared_size=372, range_size=372, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZN6glitch5scene27CParticleAttractionAffector6affectEjPNS0_9SParticleEj
; demangled: glitch::scene::CParticleAttractionAffector::affect(unsigned int, glitch::scene::SParticle*, unsigned int)
; decoder-mode: arm
006f86cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006f86d0  00 40 a0 e1                                      mov r4, r0
006f86d4  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
006f86d8  1c d0 4d e2                                      sub sp, sp, #0x1c
006f86dc  01 60 a0 e1                                      mov r6, r1
006f86e0  00 00 50 e3                                      cmp r0, #0
006f86e4  02 50 a0 e1                                      mov r5, r2
006f86e8  03 b0 a0 e1                                      mov fp, r3
006f86ec  1c 10 84 05                                      streq r1, [r4, #0x1c]
006f86f0  50 00 00 0a                                      beq #0x6f8838
006f86f4  01 00 60 e0                                      rsb r0, r0, r1
006f86f8  f8 56 f0 eb                                      bl #0x30e2e0
006f86fc  11 13 a0 e3                                      mov r1, #0x44000000
006f8700  7a 18 81 e2                                      add r1, r1, #0x7a0000
006f8704  62 59 f0 eb                                      bl #0x30ec94
006f8708  00 00 8d e5                                      str r0, [sp]
006f870c  04 30 d4 e5                                      ldrb r3, [r4, #4]
006f8710  1c 60 84 e5                                      str r6, [r4, #0x1c]
006f8714  00 00 53 e3                                      cmp r3, #0
006f8718  46 00 00 0a                                      beq #0x6f8838
006f871c  00 00 5b e3                                      cmp fp, #0
006f8720  44 00 00 0a                                      beq #0x6f8838
006f8724  0c 30 8d e2                                      add r3, sp, #0xc
006f8728  00 70 a0 e3                                      mov r7, #0
006f872c  04 30 8d e5                                      str r3, [sp, #4]
006f8730  04 10 95 e5                                      ldr r1, [r5, #4]
006f8734  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006f8738  1b 57 f0 eb                                      bl #0x30e3ac
006f873c  08 10 95 e5                                      ldr r1, [r5, #8]
006f8740  00 80 a0 e1                                      mov r8, r0
006f8744  10 00 94 e5                                      ldr r0, [r4, #0x10]
006f8748  17 57 f0 eb                                      bl #0x30e3ac
006f874c  00 10 95 e5                                      ldr r1, [r5]
006f8750  00 60 a0 e1                                      mov r6, r0
006f8754  08 00 94 e5                                      ldr r0, [r4, #8]
006f8758  13 57 f0 eb                                      bl #0x30e3ac
006f875c  0c 00 8d e5                                      str r0, [sp, #0xc]
006f8760  04 00 9d e5                                      ldr r0, [sp, #4]
006f8764  10 80 8d e5                                      str r8, [sp, #0x10]
006f8768  14 60 8d e5                                      str r6, [sp, #0x14]
006f876c  5b 98 f1 eb                                      bl #0x35e8e0
006f8770  14 10 94 e5                                      ldr r1, [r4, #0x14]
006f8774  00 30 a0 e1                                      mov r3, r0
006f8778  00 60 90 e5                                      ldr r6, [r0]
006f877c  00 00 9d e5                                      ldr r0, [sp]
006f8780  04 80 93 e5                                      ldr r8, [r3, #4]
006f8784  08 90 93 e5                                      ldr sb, [r3, #8]
006f8788  77 59 f0 eb                                      bl #0x30ed6c
006f878c  06 10 a0 e1                                      mov r1, r6
006f8790  00 a0 a0 e1                                      mov sl, r0
006f8794  74 59 f0 eb                                      bl #0x30ed6c
006f8798  08 10 a0 e1                                      mov r1, r8
006f879c  00 60 a0 e1                                      mov r6, r0
006f87a0  0a 00 a0 e1                                      mov r0, sl
006f87a4  70 59 f0 eb                                      bl #0x30ed6c
006f87a8  09 10 a0 e1                                      mov r1, sb
006f87ac  00 80 a0 e1                                      mov r8, r0
006f87b0  0a 00 a0 e1                                      mov r0, sl
006f87b4  6c 59 f0 eb                                      bl #0x30ed6c
006f87b8  1b 30 d4 e5                                      ldrb r3, [r4, #0x1b]
006f87bc  02 21 86 e2                                      add r2, r6, #0x80000000
006f87c0  00 a0 a0 e1                                      mov sl, r0
006f87c4  00 00 53 e3                                      cmp r3, #0
006f87c8  18 30 d4 e5                                      ldrb r3, [r4, #0x18]
006f87cc  02 60 a0 01                                      moveq r6, r2
006f87d0  02 81 88 02                                      addeq r8, r8, #0x80000000
006f87d4  02 a1 80 02                                      addeq sl, r0, #0x80000000
006f87d8  00 00 53 e3                                      cmp r3, #0
006f87dc  01 70 87 e2                                      add r7, r7, #1
006f87e0  06 10 a0 e1                                      mov r1, r6
006f87e4  02 00 00 0a                                      beq #0x6f87f4
006f87e8  00 00 95 e5                                      ldr r0, [r5]
006f87ec  ec 58 f0 eb                                      bl #0x30eba4
006f87f0  00 00 85 e5                                      str r0, [r5]
006f87f4  19 30 d4 e5                                      ldrb r3, [r4, #0x19]
006f87f8  08 10 a0 e1                                      mov r1, r8
006f87fc  00 00 53 e3                                      cmp r3, #0
006f8800  02 00 00 0a                                      beq #0x6f8810
006f8804  04 00 95 e5                                      ldr r0, [r5, #4]
006f8808  e5 58 f0 eb                                      bl #0x30eba4
006f880c  04 00 85 e5                                      str r0, [r5, #4]
006f8810  1a 30 d4 e5                                      ldrb r3, [r4, #0x1a]
006f8814  0a 10 a0 e1                                      mov r1, sl
006f8818  00 00 53 e3                                      cmp r3, #0
006f881c  02 00 00 0a                                      beq #0x6f882c
006f8820  08 00 95 e5                                      ldr r0, [r5, #8]
006f8824  de 58 f0 eb                                      bl #0x30eba4
006f8828  08 00 85 e5                                      str r0, [r5, #8]
006f882c  0b 00 57 e1                                      cmp r7, fp
006f8830  44 50 85 e2                                      add r5, r5, #0x44
006f8834  bd ff ff 1a                                      bne #0x6f8730
006f8838  1c d0 8d e2                                      add sp, sp, #0x1c
006f883c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006f88b4, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZN6glitch5scene27CParticleAttractionAffectorD0Ev
; demangled: glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector()
; decoder-mode: arm
006f88b4  64 30 9f e5                                      ldr r3, [pc, #0x64]
006f88b8  64 20 9f e5                                      ldr r2, [pc, #0x64]
006f88bc  64 10 9f e5                                      ldr r1, [pc, #0x64]
006f88c0  03 30 8f e0                                      add r3, pc, r3
006f88c4  02 20 93 e7                                      ldr r2, [r3, r2]
006f88c8  70 40 2d e9                                      push {r4, r5, r6, lr}
006f88cc  01 10 93 e7                                      ldr r1, [r3, r1]
006f88d0  04 c0 92 e5                                      ldr ip, [r2, #4]
006f88d4  14 50 92 e5                                      ldr r5, [r2, #0x14]
006f88d8  80 10 81 e2                                      add r1, r1, #0x80
006f88dc  00 c0 80 e5                                      str ip, [r0]
006f88e0  20 10 80 e5                                      str r1, [r0, #0x20]
006f88e4  1c e0 1c e5                                      ldr lr, [ip, #-0x1c]
006f88e8  08 10 92 e5                                      ldr r1, [r2, #8]
006f88ec  18 c0 92 e5                                      ldr ip, [r2, #0x18]
006f88f0  0e 50 80 e7                                      str r5, [r0, lr]
006f88f4  00 e0 90 e5                                      ldr lr, [r0]
006f88f8  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006f88fc  00 40 a0 e1                                      mov r4, r0
006f8900  0c 30 1e e5                                      ldr r3, [lr, #-0xc]
006f8904  03 c0 80 e7                                      str ip, [r0, r3]
006f8908  00 10 80 e5                                      str r1, [r0]
006f890c  1c 30 11 e5                                      ldr r3, [r1, #-0x1c]
006f8910  03 20 80 e7                                      str r2, [r0, r3]
006f8914  65 56 f0 eb                                      bl #0x30e2b0
006f8918  04 00 a0 e1                                      mov r0, r4
006f891c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006f8920  d0 c1 29 00 8c 36 00 00 e4 14 00 00              .byte 0xd0, 0xc1, 0x29, 0x00, 0x8c, 0x36, 0x00, 0x00, 0xe4, 0x14, 0x00, 0x00

; FUNCTION 0x006f892c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZTv0_n24_N6glitch5scene27CParticleAttractionAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector()
; decoder-mode: arm
006f892c  00 30 90 e5                                      ldr r3, [r0]
006f8930  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f8934  03 00 80 e0                                      add r0, r0, r3
006f8938  dd ff ff ea                                      b #0x6f88b4

; FUNCTION 0x006f893c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleAttractionAffector
; alias: _ZTv0_n12_N6glitch5scene27CParticleAttractionAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleAttractionAffector::~CParticleAttractionAffector()
; decoder-mode: arm
006f893c  00 30 90 e5                                      ldr r3, [r0]
006f8940  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f8944  03 00 80 e0                                      add r0, r0, r3
006f8948  d9 ff ff ea                                      b #0x6f88b4
