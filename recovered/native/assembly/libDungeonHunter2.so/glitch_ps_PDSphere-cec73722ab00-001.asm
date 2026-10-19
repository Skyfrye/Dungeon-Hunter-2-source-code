; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0069accc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PDSphere
; alias: _ZN6glitch2ps8PDSphereD1Ev
; demangled: glitch::ps::PDSphere::~PDSphere()
; decoder-mode: arm
0069accc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069acd0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDSphere
; alias: _ZNK6glitch2ps8PDSphere7getTypeEv
; demangled: glitch::ps::PDSphere::getType() const
; decoder-mode: arm
0069acd0  01 00 a0 e3                                      mov r0, #1
0069acd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069b9cc, declared_size=436, range_size=436, mode=arm
; class-group: glitch::ps::PDSphere
; alias: _ZN6glitch2ps8PDSphereC2ERKNS_4core8vector3dIfEEff
; demangled: glitch::ps::PDSphere::PDSphere(glitch::core::vector3d<float> const&, float, float)
; decoder-mode: arm
0069b9cc  a4 c1 9f e5                                      ldr ip, [pc, #0x1a4]
0069b9d0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0069b9d4  a0 51 9f e5                                      ldr r5, [pc, #0x1a0]
0069b9d8  0c c0 8f e0                                      add ip, pc, ip
0069b9dc  00 e0 a0 e3                                      mov lr, #0
0069b9e0  05 50 9c e7                                      ldr r5, [ip, r5]
0069b9e4  04 e0 80 e5                                      str lr, [r0, #4]
0069b9e8  0c e0 80 e5                                      str lr, [r0, #0xc]
0069b9ec  08 50 85 e2                                      add r5, r5, #8
0069b9f0  00 50 80 e5                                      str r5, [r0]
0069b9f4  08 e0 80 e5                                      str lr, [r0, #8]
0069b9f8  01 e0 a0 e1                                      mov lr, r1
0069b9fc  00 10 91 e5                                      ldr r1, [r1]
0069ba00  03 60 a0 e1                                      mov r6, r3
0069ba04  00 40 a0 e1                                      mov r4, r0
0069ba08  04 10 80 e5                                      str r1, [r0, #4]
0069ba0c  04 30 9e e5                                      ldr r3, [lr, #4]
0069ba10  02 00 a0 e1                                      mov r0, r2
0069ba14  06 10 a0 e1                                      mov r1, r6
0069ba18  08 30 84 e5                                      str r3, [r4, #8]
0069ba1c  08 30 9e e5                                      ldr r3, [lr, #8]
0069ba20  02 50 a0 e1                                      mov r5, r2
0069ba24  00 80 a0 e3                                      mov r8, #0
0069ba28  0c 30 84 e5                                      str r3, [r4, #0xc]
0069ba2c  36 cb f1 eb                                      bl #0x30e70c
0069ba30  00 00 50 e3                                      cmp r0, #0
0069ba34  14 60 84 05                                      streq r6, [r4, #0x14]
0069ba38  05 60 a0 01                                      moveq r6, r5
0069ba3c  14 50 84 15                                      strne r5, [r4, #0x14]
0069ba40  10 60 84 15                                      strne r6, [r4, #0x10]
0069ba44  10 50 84 05                                      streq r5, [r4, #0x10]
0069ba48  06 10 a0 e1                                      mov r1, r6
0069ba4c  06 00 a0 e1                                      mov r0, r6
0069ba50  c5 cc f1 eb                                      bl #0x30ed6c
0069ba54  14 60 94 e5                                      ldr r6, [r4, #0x14]
0069ba58  18 00 84 e5                                      str r0, [r4, #0x18]
0069ba5c  00 70 a0 e1                                      mov r7, r0
0069ba60  06 10 a0 e1                                      mov r1, r6
0069ba64  06 00 a0 e1                                      mov r0, r6
0069ba68  bf cc f1 eb                                      bl #0x30ed6c
0069ba6c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0069ba70  1c 00 84 e5                                      str r0, [r4, #0x1c]
0069ba74  00 50 a0 e1                                      mov r5, r0
0069ba78  06 00 a0 e1                                      mov r0, r6
0069ba7c  42 c9 f1 eb                                      bl #0x30df8c
0069ba80  00 00 50 e3                                      cmp r0, #0
0069ba84  01 80 a0 13                                      movne r8, #1
0069ba88  78 60 ef e6                                      uxtb r6, r8
0069ba8c  28 60 c4 e5                                      strb r6, [r4, #0x28]
0069ba90  10 00 94 e5                                      ldr r0, [r4, #0x10]
0069ba94  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069ba98  43 ca f1 eb                                      bl #0x30e3ac
0069ba9c  00 00 56 e3                                      cmp r6, #0
0069baa0  20 00 84 e5                                      str r0, [r4, #0x20]
0069baa4  28 00 00 1a                                      bne #0x69bb4c
0069baa8  07 00 a0 e1                                      mov r0, r7
0069baac  7c cb f1 eb                                      bl #0x30e8a4
0069bab0  81 2c 01 e3                                      movw r2, #0x1c81
0069bab4  52 31 0c e3                                      movw r3, #0xc152
0069bab8  8e 20 44 e3                                      movt r2, #0x408e
0069babc  10 30 44 e3                                      movt r3, #0x4010
0069bac0  fb cb f1 eb                                      bl #0x30eab4
0069bac4  00 60 a0 e1                                      mov r6, r0
0069bac8  10 00 94 e5                                      ldr r0, [r4, #0x10]
0069bacc  01 70 a0 e1                                      mov r7, r1
0069bad0  73 cb f1 eb                                      bl #0x30e8a4
0069bad4  00 20 a0 e1                                      mov r2, r0
0069bad8  01 30 a0 e1                                      mov r3, r1
0069badc  06 00 a0 e1                                      mov r0, r6
0069bae0  07 10 a0 e1                                      mov r1, r7
0069bae4  f2 cb f1 eb                                      bl #0x30eab4
0069bae8  ec ca f1 eb                                      bl #0x30e6a0
0069baec  00 60 a0 e1                                      mov r6, r0
0069baf0  05 00 a0 e1                                      mov r0, r5
0069baf4  6a cb f1 eb                                      bl #0x30e8a4
0069baf8  81 2c 01 e3                                      movw r2, #0x1c81
0069bafc  52 31 0c e3                                      movw r3, #0xc152
0069bb00  8e 20 44 e3                                      movt r2, #0x408e
0069bb04  10 30 44 e3                                      movt r3, #0x4010
0069bb08  e9 cb f1 eb                                      bl #0x30eab4
0069bb0c  00 80 a0 e1                                      mov r8, r0
0069bb10  14 00 94 e5                                      ldr r0, [r4, #0x14]
0069bb14  01 90 a0 e1                                      mov sb, r1
0069bb18  61 cb f1 eb                                      bl #0x30e8a4
0069bb1c  00 20 a0 e1                                      mov r2, r0
0069bb20  01 30 a0 e1                                      mov r3, r1
0069bb24  08 00 a0 e1                                      mov r0, r8
0069bb28  09 10 a0 e1                                      mov r1, sb
0069bb2c  e0 cb f1 eb                                      bl #0x30eab4
0069bb30  da ca f1 eb                                      bl #0x30e6a0
0069bb34  00 10 a0 e1                                      mov r1, r0
0069bb38  06 00 a0 e1                                      mov r0, r6
0069bb3c  1a ca f1 eb                                      bl #0x30e3ac
0069bb40  24 00 84 e5                                      str r0, [r4, #0x24]
0069bb44  04 00 a0 e1                                      mov r0, r4
0069bb48  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0069bb4c  07 00 a0 e1                                      mov r0, r7
0069bb50  53 cb f1 eb                                      bl #0x30e8a4
0069bb54  18 2d 02 e3                                      movw r2, #0x2d18
0069bb58  fb 31 02 e3                                      movw r3, #0x21fb
0069bb5c  44 24 45 e3                                      movt r2, #0x5444
0069bb60  29 30 44 e3                                      movt r3, #0x4029
0069bb64  d2 cb f1 eb                                      bl #0x30eab4
0069bb68  cc ca f1 eb                                      bl #0x30e6a0
0069bb6c  24 00 84 e5                                      str r0, [r4, #0x24]
0069bb70  04 00 a0 e1                                      mov r0, r4
0069bb74  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0069bb78  b8 90 2f 00 30 36 00 00                          .byte 0xb8, 0x90, 0x2f, 0x00, 0x30, 0x36, 0x00, 0x00

; FUNCTION 0x0069bb80, declared_size=436, range_size=436, mode=arm
; class-group: glitch::ps::PDSphere
; alias: _ZN6glitch2ps8PDSphereC1ERKNS_4core8vector3dIfEEff
; demangled: glitch::ps::PDSphere::PDSphere(glitch::core::vector3d<float> const&, float, float)
; decoder-mode: arm
0069bb80  a4 c1 9f e5                                      ldr ip, [pc, #0x1a4]
0069bb84  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0069bb88  a0 51 9f e5                                      ldr r5, [pc, #0x1a0]
0069bb8c  0c c0 8f e0                                      add ip, pc, ip
0069bb90  00 e0 a0 e3                                      mov lr, #0
0069bb94  05 50 9c e7                                      ldr r5, [ip, r5]
0069bb98  04 e0 80 e5                                      str lr, [r0, #4]
0069bb9c  0c e0 80 e5                                      str lr, [r0, #0xc]
0069bba0  08 50 85 e2                                      add r5, r5, #8
0069bba4  00 50 80 e5                                      str r5, [r0]
0069bba8  08 e0 80 e5                                      str lr, [r0, #8]
0069bbac  01 e0 a0 e1                                      mov lr, r1
0069bbb0  00 10 91 e5                                      ldr r1, [r1]
0069bbb4  03 60 a0 e1                                      mov r6, r3
0069bbb8  00 40 a0 e1                                      mov r4, r0
0069bbbc  04 10 80 e5                                      str r1, [r0, #4]
0069bbc0  04 30 9e e5                                      ldr r3, [lr, #4]
0069bbc4  02 00 a0 e1                                      mov r0, r2
0069bbc8  06 10 a0 e1                                      mov r1, r6
0069bbcc  08 30 84 e5                                      str r3, [r4, #8]
0069bbd0  08 30 9e e5                                      ldr r3, [lr, #8]
0069bbd4  02 50 a0 e1                                      mov r5, r2
0069bbd8  00 80 a0 e3                                      mov r8, #0
0069bbdc  0c 30 84 e5                                      str r3, [r4, #0xc]
0069bbe0  c9 ca f1 eb                                      bl #0x30e70c
0069bbe4  00 00 50 e3                                      cmp r0, #0
0069bbe8  14 60 84 05                                      streq r6, [r4, #0x14]
0069bbec  05 60 a0 01                                      moveq r6, r5
0069bbf0  14 50 84 15                                      strne r5, [r4, #0x14]
0069bbf4  10 60 84 15                                      strne r6, [r4, #0x10]
0069bbf8  10 50 84 05                                      streq r5, [r4, #0x10]
0069bbfc  06 10 a0 e1                                      mov r1, r6
0069bc00  06 00 a0 e1                                      mov r0, r6
0069bc04  58 cc f1 eb                                      bl #0x30ed6c
0069bc08  14 60 94 e5                                      ldr r6, [r4, #0x14]
0069bc0c  18 00 84 e5                                      str r0, [r4, #0x18]
0069bc10  00 70 a0 e1                                      mov r7, r0
0069bc14  06 10 a0 e1                                      mov r1, r6
0069bc18  06 00 a0 e1                                      mov r0, r6
0069bc1c  52 cc f1 eb                                      bl #0x30ed6c
0069bc20  10 10 94 e5                                      ldr r1, [r4, #0x10]
0069bc24  1c 00 84 e5                                      str r0, [r4, #0x1c]
0069bc28  00 50 a0 e1                                      mov r5, r0
0069bc2c  06 00 a0 e1                                      mov r0, r6
0069bc30  d5 c8 f1 eb                                      bl #0x30df8c
0069bc34  00 00 50 e3                                      cmp r0, #0
0069bc38  01 80 a0 13                                      movne r8, #1
0069bc3c  78 60 ef e6                                      uxtb r6, r8
0069bc40  28 60 c4 e5                                      strb r6, [r4, #0x28]
0069bc44  10 00 94 e5                                      ldr r0, [r4, #0x10]
0069bc48  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069bc4c  d6 c9 f1 eb                                      bl #0x30e3ac
0069bc50  00 00 56 e3                                      cmp r6, #0
0069bc54  20 00 84 e5                                      str r0, [r4, #0x20]
0069bc58  28 00 00 1a                                      bne #0x69bd00
0069bc5c  07 00 a0 e1                                      mov r0, r7
0069bc60  0f cb f1 eb                                      bl #0x30e8a4
0069bc64  81 2c 01 e3                                      movw r2, #0x1c81
0069bc68  52 31 0c e3                                      movw r3, #0xc152
0069bc6c  8e 20 44 e3                                      movt r2, #0x408e
0069bc70  10 30 44 e3                                      movt r3, #0x4010
0069bc74  8e cb f1 eb                                      bl #0x30eab4
0069bc78  00 60 a0 e1                                      mov r6, r0
0069bc7c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0069bc80  01 70 a0 e1                                      mov r7, r1
0069bc84  06 cb f1 eb                                      bl #0x30e8a4
0069bc88  00 20 a0 e1                                      mov r2, r0
0069bc8c  01 30 a0 e1                                      mov r3, r1
0069bc90  06 00 a0 e1                                      mov r0, r6
0069bc94  07 10 a0 e1                                      mov r1, r7
0069bc98  85 cb f1 eb                                      bl #0x30eab4
0069bc9c  7f ca f1 eb                                      bl #0x30e6a0
0069bca0  00 60 a0 e1                                      mov r6, r0
0069bca4  05 00 a0 e1                                      mov r0, r5
0069bca8  fd ca f1 eb                                      bl #0x30e8a4
0069bcac  81 2c 01 e3                                      movw r2, #0x1c81
0069bcb0  52 31 0c e3                                      movw r3, #0xc152
0069bcb4  8e 20 44 e3                                      movt r2, #0x408e
0069bcb8  10 30 44 e3                                      movt r3, #0x4010
0069bcbc  7c cb f1 eb                                      bl #0x30eab4
0069bcc0  00 80 a0 e1                                      mov r8, r0
0069bcc4  14 00 94 e5                                      ldr r0, [r4, #0x14]
0069bcc8  01 90 a0 e1                                      mov sb, r1
0069bccc  f4 ca f1 eb                                      bl #0x30e8a4
0069bcd0  00 20 a0 e1                                      mov r2, r0
0069bcd4  01 30 a0 e1                                      mov r3, r1
0069bcd8  08 00 a0 e1                                      mov r0, r8
0069bcdc  09 10 a0 e1                                      mov r1, sb
0069bce0  73 cb f1 eb                                      bl #0x30eab4
0069bce4  6d ca f1 eb                                      bl #0x30e6a0
0069bce8  00 10 a0 e1                                      mov r1, r0
0069bcec  06 00 a0 e1                                      mov r0, r6
0069bcf0  ad c9 f1 eb                                      bl #0x30e3ac
0069bcf4  24 00 84 e5                                      str r0, [r4, #0x24]
0069bcf8  04 00 a0 e1                                      mov r0, r4
0069bcfc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0069bd00  07 00 a0 e1                                      mov r0, r7
0069bd04  e6 ca f1 eb                                      bl #0x30e8a4
0069bd08  18 2d 02 e3                                      movw r2, #0x2d18
0069bd0c  fb 31 02 e3                                      movw r3, #0x21fb
0069bd10  44 24 45 e3                                      movt r2, #0x5444
0069bd14  29 30 44 e3                                      movt r3, #0x4029
0069bd18  65 cb f1 eb                                      bl #0x30eab4
0069bd1c  5f ca f1 eb                                      bl #0x30e6a0
0069bd20  24 00 84 e5                                      str r0, [r4, #0x24]
0069bd24  04 00 a0 e1                                      mov r0, r4
0069bd28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0069bd2c  04 8f 2f 00 30 36 00 00                          .byte 0x04, 0x8f, 0x2f, 0x00, 0x30, 0x36, 0x00, 0x00

; FUNCTION 0x0069bd34, declared_size=184, range_size=184, mode=arm
; class-group: glitch::ps::PDSphere
; alias: _ZNK6glitch2ps8PDSphere6withinERKNS_4core8vector3dIfEE
; demangled: glitch::ps::PDSphere::within(glitch::core::vector3d<float> const&) const
; decoder-mode: arm
0069bd34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0069bd38  00 40 a0 e1                                      mov r4, r0
0069bd3c  01 50 a0 e1                                      mov r5, r1
0069bd40  00 00 91 e5                                      ldr r0, [r1]
0069bd44  04 10 94 e5                                      ldr r1, [r4, #4]
0069bd48  97 c9 f1 eb                                      bl #0x30e3ac
0069bd4c  08 10 94 e5                                      ldr r1, [r4, #8]
0069bd50  00 80 a0 e1                                      mov r8, r0
0069bd54  04 00 95 e5                                      ldr r0, [r5, #4]
0069bd58  93 c9 f1 eb                                      bl #0x30e3ac
0069bd5c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0069bd60  00 70 a0 e1                                      mov r7, r0
0069bd64  08 00 95 e5                                      ldr r0, [r5, #8]
0069bd68  8f c9 f1 eb                                      bl #0x30e3ac
0069bd6c  08 10 a0 e1                                      mov r1, r8
0069bd70  00 60 a0 e1                                      mov r6, r0
0069bd74  08 00 a0 e1                                      mov r0, r8
0069bd78  fb cb f1 eb                                      bl #0x30ed6c
0069bd7c  07 10 a0 e1                                      mov r1, r7
0069bd80  00 50 a0 e1                                      mov r5, r0
0069bd84  07 00 a0 e1                                      mov r0, r7
0069bd88  f7 cb f1 eb                                      bl #0x30ed6c
0069bd8c  00 10 a0 e1                                      mov r1, r0
0069bd90  05 00 a0 e1                                      mov r0, r5
0069bd94  82 cb f1 eb                                      bl #0x30eba4
0069bd98  06 10 a0 e1                                      mov r1, r6
0069bd9c  00 50 a0 e1                                      mov r5, r0
0069bda0  06 00 a0 e1                                      mov r0, r6
0069bda4  f0 cb f1 eb                                      bl #0x30ed6c
0069bda8  00 10 a0 e1                                      mov r1, r0
0069bdac  05 00 a0 e1                                      mov r0, r5
0069bdb0  7b cb f1 eb                                      bl #0x30eba4
0069bdb4  00 10 a0 e1                                      mov r1, r0
0069bdb8  00 50 a0 e1                                      mov r5, r0
0069bdbc  18 00 94 e5                                      ldr r0, [r4, #0x18]
0069bdc0  bb c9 f1 eb                                      bl #0x30e4b4
0069bdc4  00 00 50 e3                                      cmp r0, #0
0069bdc8  06 00 00 0a                                      beq #0x69bde8
0069bdcc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0069bdd0  05 10 a0 e1                                      mov r1, r5
0069bdd4  f4 ca f1 eb                                      bl #0x30e9ac
0069bdd8  00 00 50 e3                                      cmp r0, #0
0069bddc  00 00 a0 e3                                      mov r0, #0
0069bde0  01 00 a0 13                                      movne r0, #1
0069bde4  70 00 ef e6                                      uxtb r0, r0
0069bde8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0069bdec, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PDSphere
; alias: _ZN6glitch2ps8PDSphere9transformERKNS_4core8CMatrix4IfEE
; demangled: glitch::ps::PDSphere::transform(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0069bdec  30 c0 91 e5                                      ldr ip, [r1, #0x30]
0069bdf0  34 30 91 e5                                      ldr r3, [r1, #0x34]
0069bdf4  38 20 91 e5                                      ldr r2, [r1, #0x38]
0069bdf8  04 c0 80 e5                                      str ip, [r0, #4]
0069bdfc  08 30 80 e5                                      str r3, [r0, #8]
0069be00  0c 20 80 e5                                      str r2, [r0, #0xc]
0069be04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069be08, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDSphere
; alias: _ZNK6glitch2ps8PDSphere4sizeEv
; demangled: glitch::ps::PDSphere::size() const
; decoder-mode: arm
0069be08  24 00 90 e5                                      ldr r0, [r0, #0x24]
0069be0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069c01c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PDSphere
; alias: _ZN6glitch2ps8PDSphereD0Ev
; demangled: glitch::ps::PDSphere::~PDSphere()
; decoder-mode: arm
0069c01c  10 40 2d e9                                      push {r4, lr}
0069c020  00 40 a0 e1                                      mov r4, r0
0069c024  a1 c8 f1 eb                                      bl #0x30e2b0
0069c028  04 00 a0 e1                                      mov r0, r4
0069c02c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0069c0ac, declared_size=136, range_size=136, mode=arm
; class-group: glitch::ps::PDSphere
; alias: _ZNK6glitch2ps8PDSphere4copyEv
; demangled: glitch::ps::PDSphere::copy() const
; decoder-mode: arm
0069c0ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0069c0b0  00 10 a0 e3                                      mov r1, #0
0069c0b4  00 40 a0 e1                                      mov r4, r0
0069c0b8  2c 00 a0 e3                                      mov r0, #0x2c
0069c0bc  3a 60 fa eb                                      bl #0x5341ac
0069c0c0  64 50 9f e5                                      ldr r5, [pc, #0x64]
0069c0c4  64 20 9f e5                                      ldr r2, [pc, #0x64]
0069c0c8  05 50 8f e0                                      add r5, pc, r5
0069c0cc  02 20 95 e7                                      ldr r2, [r5, r2]
0069c0d0  08 20 82 e2                                      add r2, r2, #8
0069c0d4  00 20 80 e5                                      str r2, [r0]
0069c0d8  04 20 94 e5                                      ldr r2, [r4, #4]
0069c0dc  04 20 80 e5                                      str r2, [r0, #4]
0069c0e0  08 20 94 e5                                      ldr r2, [r4, #8]
0069c0e4  08 20 80 e5                                      str r2, [r0, #8]
0069c0e8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0069c0ec  0c 20 80 e5                                      str r2, [r0, #0xc]
0069c0f0  10 20 94 e5                                      ldr r2, [r4, #0x10]
0069c0f4  10 20 80 e5                                      str r2, [r0, #0x10]
0069c0f8  14 20 94 e5                                      ldr r2, [r4, #0x14]
0069c0fc  14 20 80 e5                                      str r2, [r0, #0x14]
0069c100  18 20 94 e5                                      ldr r2, [r4, #0x18]
0069c104  18 20 80 e5                                      str r2, [r0, #0x18]
0069c108  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0069c10c  1c 20 80 e5                                      str r2, [r0, #0x1c]
0069c110  20 20 94 e5                                      ldr r2, [r4, #0x20]
0069c114  20 20 80 e5                                      str r2, [r0, #0x20]
0069c118  24 20 94 e5                                      ldr r2, [r4, #0x24]
0069c11c  24 20 80 e5                                      str r2, [r0, #0x24]
0069c120  28 20 d4 e5                                      ldrb r2, [r4, #0x28]
0069c124  28 20 c0 e5                                      strb r2, [r0, #0x28]
0069c128  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0069c12c  c8 89 2f 00 30 36 00 00                          .byte 0xc8, 0x89, 0x2f, 0x00, 0x30, 0x36, 0x00, 0x00

; FUNCTION 0x0069c6ec, declared_size=372, range_size=372, mode=arm
; class-group: glitch::ps::PDSphere
; alias: _ZNK6glitch2ps8PDSphere8generateERNS0_8PSRandomE
; demangled: glitch::ps::PDSphere::generate(glitch::ps::PSRandom&) const
; decoder-mode: arm
0069c6ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069c6f0  64 61 9f e5                                      ldr r6, [pc, #0x164]
0069c6f4  00 30 a0 e3                                      mov r3, #0
0069c6f8  14 d0 4d e2                                      sub sp, sp, #0x14
0069c6fc  00 40 a0 e1                                      mov r4, r0
0069c700  08 30 80 e5                                      str r3, [r0, #8]
0069c704  01 50 a0 e1                                      mov r5, r1
0069c708  02 90 a0 e1                                      mov sb, r2
0069c70c  00 30 80 e5                                      str r3, [r0]
0069c710  04 30 80 e5                                      str r3, [r0, #4]
0069c714  06 60 8f e0                                      add r6, pc, r6
0069c718  04 b0 8d e2                                      add fp, sp, #4
0069c71c  0b 00 a0 e1                                      mov r0, fp
0069c720  09 10 a0 e1                                      mov r1, sb
0069c724  e6 6c fe eb                                      bl #0x637ac4
0069c728  00 10 96 e5                                      ldr r1, [r6]
0069c72c  04 00 9d e5                                      ldr r0, [sp, #4]
0069c730  1d c7 f1 eb                                      bl #0x30e3ac
0069c734  04 10 96 e5                                      ldr r1, [r6, #4]
0069c738  00 a0 a0 e1                                      mov sl, r0
0069c73c  08 00 9d e5                                      ldr r0, [sp, #8]
0069c740  19 c7 f1 eb                                      bl #0x30e3ac
0069c744  08 10 96 e5                                      ldr r1, [r6, #8]
0069c748  00 80 a0 e1                                      mov r8, r0
0069c74c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0069c750  15 c7 f1 eb                                      bl #0x30e3ac
0069c754  00 70 a0 e1                                      mov r7, r0
0069c758  0a 10 a0 e1                                      mov r1, sl
0069c75c  0a 00 a0 e1                                      mov r0, sl
0069c760  00 a0 84 e5                                      str sl, [r4]
0069c764  04 80 84 e5                                      str r8, [r4, #4]
0069c768  08 70 84 e5                                      str r7, [r4, #8]
0069c76c  7e c9 f1 eb                                      bl #0x30ed6c
0069c770  08 10 a0 e1                                      mov r1, r8
0069c774  00 a0 a0 e1                                      mov sl, r0
0069c778  08 00 a0 e1                                      mov r0, r8
0069c77c  7a c9 f1 eb                                      bl #0x30ed6c
0069c780  00 10 a0 e1                                      mov r1, r0
0069c784  0a 00 a0 e1                                      mov r0, sl
0069c788  05 c9 f1 eb                                      bl #0x30eba4
0069c78c  07 10 a0 e1                                      mov r1, r7
0069c790  00 80 a0 e1                                      mov r8, r0
0069c794  07 00 a0 e1                                      mov r0, r7
0069c798  73 c9 f1 eb                                      bl #0x30ed6c
0069c79c  00 10 a0 e1                                      mov r1, r0
0069c7a0  08 00 a0 e1                                      mov r0, r8
0069c7a4  fe c8 f1 eb                                      bl #0x30eba4
0069c7a8  fa 15 a0 e3                                      mov r1, #0x3e800000
0069c7ac  d1 c6 f1 eb                                      bl #0x30e2f8
0069c7b0  00 00 50 e3                                      cmp r0, #0
0069c7b4  d8 ff ff 1a                                      bne #0x69c71c
0069c7b8  04 00 a0 e1                                      mov r0, r4
0069c7bc  47 08 f3 eb                                      bl #0x35e8e0
0069c7c0  28 30 d5 e5                                      ldrb r3, [r5, #0x28]
0069c7c4  00 00 53 e3                                      cmp r3, #0
0069c7c8  17 00 00 0a                                      beq #0x69c82c
0069c7cc  10 60 95 e5                                      ldr r6, [r5, #0x10]
0069c7d0  04 10 94 e5                                      ldr r1, [r4, #4]
0069c7d4  06 00 a0 e1                                      mov r0, r6
0069c7d8  63 c9 f1 eb                                      bl #0x30ed6c
0069c7dc  08 10 95 e5                                      ldr r1, [r5, #8]
0069c7e0  ef c8 f1 eb                                      bl #0x30eba4
0069c7e4  08 10 94 e5                                      ldr r1, [r4, #8]
0069c7e8  00 80 a0 e1                                      mov r8, r0
0069c7ec  06 00 a0 e1                                      mov r0, r6
0069c7f0  5d c9 f1 eb                                      bl #0x30ed6c
0069c7f4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0069c7f8  e9 c8 f1 eb                                      bl #0x30eba4
0069c7fc  00 10 94 e5                                      ldr r1, [r4]
0069c800  00 70 a0 e1                                      mov r7, r0
0069c804  06 00 a0 e1                                      mov r0, r6
0069c808  57 c9 f1 eb                                      bl #0x30ed6c
0069c80c  04 10 95 e5                                      ldr r1, [r5, #4]
0069c810  e3 c8 f1 eb                                      bl #0x30eba4
0069c814  04 80 84 e5                                      str r8, [r4, #4]
0069c818  00 00 84 e5                                      str r0, [r4]
0069c81c  08 70 84 e5                                      str r7, [r4, #8]
0069c820  04 00 a0 e1                                      mov r0, r4
0069c824  14 d0 8d e2                                      add sp, sp, #0x14
0069c828  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0069c82c  09 00 a0 e1                                      mov r0, sb
0069c830  14 60 95 e5                                      ldr r6, [r5, #0x14]
0069c834  8f 4d fe eb                                      bl #0x62fe78
0069c838  98 c7 f1 eb                                      bl #0x30e6a0
0069c83c  20 10 95 e5                                      ldr r1, [r5, #0x20]
0069c840  49 c9 f1 eb                                      bl #0x30ed6c
0069c844  00 10 a0 e1                                      mov r1, r0
0069c848  06 00 a0 e1                                      mov r0, r6
0069c84c  d4 c8 f1 eb                                      bl #0x30eba4
0069c850  04 10 94 e5                                      ldr r1, [r4, #4]
0069c854  00 60 a0 e1                                      mov r6, r0
0069c858  de ff ff ea                                      b #0x69c7d8
; mapping-symbol data/literal pool
0069c85c  cc ae 35 00                                      .byte 0xcc, 0xae, 0x35, 0x00
