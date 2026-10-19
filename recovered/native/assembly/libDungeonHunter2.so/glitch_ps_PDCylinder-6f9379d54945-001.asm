; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0069acb4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZN6glitch2ps10PDCylinderD1Ev
; demangled: glitch::ps::PDCylinder::~PDCylinder()
; decoder-mode: arm
0069acb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069acb8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZNK6glitch2ps10PDCylinder7getTypeEv
; demangled: glitch::ps::PDCylinder::getType() const
; decoder-mode: arm
0069acb8  02 00 a0 e3                                      mov r0, #2
0069acbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069b668, declared_size=404, range_size=404, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZNK6glitch2ps10PDCylinder6withinERKNS_4core8vector3dIfEE
; demangled: glitch::ps::PDCylinder::within(glitch::core::vector3d<float> const&) const
; decoder-mode: arm
0069b668  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069b66c  00 40 a0 e1                                      mov r4, r0
0069b670  01 50 a0 e1                                      mov r5, r1
0069b674  00 00 91 e5                                      ldr r0, [r1]
0069b678  04 10 94 e5                                      ldr r1, [r4, #4]
0069b67c  4a cb f1 eb                                      bl #0x30e3ac
0069b680  08 10 94 e5                                      ldr r1, [r4, #8]
0069b684  00 90 a0 e1                                      mov sb, r0
0069b688  04 00 95 e5                                      ldr r0, [r5, #4]
0069b68c  46 cb f1 eb                                      bl #0x30e3ac
0069b690  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0069b694  00 80 a0 e1                                      mov r8, r0
0069b698  08 00 95 e5                                      ldr r0, [r5, #8]
0069b69c  42 cb f1 eb                                      bl #0x30e3ac
0069b6a0  10 b0 94 e5                                      ldr fp, [r4, #0x10]
0069b6a4  00 60 a0 e1                                      mov r6, r0
0069b6a8  09 00 a0 e1                                      mov r0, sb
0069b6ac  0b 10 a0 e1                                      mov r1, fp
0069b6b0  ad cd f1 eb                                      bl #0x30ed6c
0069b6b4  14 a0 94 e5                                      ldr sl, [r4, #0x14]
0069b6b8  00 50 a0 e1                                      mov r5, r0
0069b6bc  08 00 a0 e1                                      mov r0, r8
0069b6c0  0a 10 a0 e1                                      mov r1, sl
0069b6c4  a8 cd f1 eb                                      bl #0x30ed6c
0069b6c8  00 10 a0 e1                                      mov r1, r0
0069b6cc  05 00 a0 e1                                      mov r0, r5
0069b6d0  33 cd f1 eb                                      bl #0x30eba4
0069b6d4  18 70 94 e5                                      ldr r7, [r4, #0x18]
0069b6d8  00 50 a0 e1                                      mov r5, r0
0069b6dc  06 00 a0 e1                                      mov r0, r6
0069b6e0  07 10 a0 e1                                      mov r1, r7
0069b6e4  a0 cd f1 eb                                      bl #0x30ed6c
0069b6e8  00 10 a0 e1                                      mov r1, r0
0069b6ec  05 00 a0 e1                                      mov r0, r5
0069b6f0  2b cd f1 eb                                      bl #0x30eba4
0069b6f4  48 10 94 e5                                      ldr r1, [r4, #0x48]
0069b6f8  9b cd f1 eb                                      bl #0x30ed6c
0069b6fc  00 10 a0 e3                                      mov r1, #0
0069b700  00 50 a0 e1                                      mov r5, r0
0069b704  00 cc f1 eb                                      bl #0x30e70c
0069b708  00 00 50 e3                                      cmp r0, #0
0069b70c  38 00 00 1a                                      bne #0x69b7f4
0069b710  05 00 a0 e1                                      mov r0, r5
0069b714  fe 15 a0 e3                                      mov r1, #0x3f800000
0069b718  f6 ca f1 eb                                      bl #0x30e2f8
0069b71c  00 00 50 e3                                      cmp r0, #0
0069b720  33 00 00 1a                                      bne #0x69b7f4
0069b724  0b 10 a0 e1                                      mov r1, fp
0069b728  05 00 a0 e1                                      mov r0, r5
0069b72c  8e cd f1 eb                                      bl #0x30ed6c
0069b730  00 10 a0 e1                                      mov r1, r0
0069b734  09 00 a0 e1                                      mov r0, sb
0069b738  1b cb f1 eb                                      bl #0x30e3ac
0069b73c  0a 10 a0 e1                                      mov r1, sl
0069b740  00 90 a0 e1                                      mov sb, r0
0069b744  05 00 a0 e1                                      mov r0, r5
0069b748  87 cd f1 eb                                      bl #0x30ed6c
0069b74c  00 10 a0 e1                                      mov r1, r0
0069b750  08 00 a0 e1                                      mov r0, r8
0069b754  14 cb f1 eb                                      bl #0x30e3ac
0069b758  07 10 a0 e1                                      mov r1, r7
0069b75c  00 80 a0 e1                                      mov r8, r0
0069b760  05 00 a0 e1                                      mov r0, r5
0069b764  80 cd f1 eb                                      bl #0x30ed6c
0069b768  00 10 a0 e1                                      mov r1, r0
0069b76c  06 00 a0 e1                                      mov r0, r6
0069b770  0d cb f1 eb                                      bl #0x30e3ac
0069b774  09 10 a0 e1                                      mov r1, sb
0069b778  00 60 a0 e1                                      mov r6, r0
0069b77c  09 00 a0 e1                                      mov r0, sb
0069b780  79 cd f1 eb                                      bl #0x30ed6c
0069b784  08 10 a0 e1                                      mov r1, r8
0069b788  00 50 a0 e1                                      mov r5, r0
0069b78c  08 00 a0 e1                                      mov r0, r8
0069b790  75 cd f1 eb                                      bl #0x30ed6c
0069b794  00 10 a0 e1                                      mov r1, r0
0069b798  05 00 a0 e1                                      mov r0, r5
0069b79c  00 cd f1 eb                                      bl #0x30eba4
0069b7a0  06 10 a0 e1                                      mov r1, r6
0069b7a4  00 50 a0 e1                                      mov r5, r0
0069b7a8  06 00 a0 e1                                      mov r0, r6
0069b7ac  6e cd f1 eb                                      bl #0x30ed6c
0069b7b0  00 10 a0 e1                                      mov r1, r0
0069b7b4  05 00 a0 e1                                      mov r0, r5
0069b7b8  f9 cc f1 eb                                      bl #0x30eba4
0069b7bc  00 10 a0 e1                                      mov r1, r0
0069b7c0  00 50 a0 e1                                      mov r5, r0
0069b7c4  40 00 94 e5                                      ldr r0, [r4, #0x40]
0069b7c8  77 cc f1 eb                                      bl #0x30e9ac
0069b7cc  00 00 50 e3                                      cmp r0, #0
0069b7d0  07 00 00 0a                                      beq #0x69b7f4
0069b7d4  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0069b7d8  05 10 a0 e1                                      mov r1, r5
0069b7dc  34 cb f1 eb                                      bl #0x30e4b4
0069b7e0  00 00 50 e3                                      cmp r0, #0
0069b7e4  00 00 a0 e3                                      mov r0, #0
0069b7e8  01 00 a0 13                                      movne r0, #1
0069b7ec  70 00 ef e6                                      uxtb r0, r0
0069b7f0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0069b7f4  00 00 a0 e3                                      mov r0, #0
0069b7f8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0069b7fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZNK6glitch2ps10PDCylinder4sizeEv
; demangled: glitch::ps::PDCylinder::size() const
; decoder-mode: arm
0069b7fc  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0069b800  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069bff4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZN6glitch2ps10PDCylinderD0Ev
; demangled: glitch::ps::PDCylinder::~PDCylinder()
; decoder-mode: arm
0069bff4  10 40 2d e9                                      push {r4, lr}
0069bff8  00 40 a0 e1                                      mov r4, r0
0069bffc  ab c8 f1 eb                                      bl #0x30e2b0
0069c000  04 00 a0 e1                                      mov r0, r4
0069c004  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0069c20c, declared_size=224, range_size=224, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZNK6glitch2ps10PDCylinder4copyEv
; demangled: glitch::ps::PDCylinder::copy() const
; decoder-mode: arm
0069c20c  70 40 2d e9                                      push {r4, r5, r6, lr}
0069c210  00 10 a0 e3                                      mov r1, #0
0069c214  00 40 a0 e1                                      mov r4, r0
0069c218  58 00 a0 e3                                      mov r0, #0x58
0069c21c  e2 5f fa eb                                      bl #0x5341ac
0069c220  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
0069c224  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
0069c228  05 50 8f e0                                      add r5, pc, r5
0069c22c  02 20 95 e7                                      ldr r2, [r5, r2]
0069c230  08 20 82 e2                                      add r2, r2, #8
0069c234  00 20 80 e5                                      str r2, [r0]
0069c238  04 20 94 e5                                      ldr r2, [r4, #4]
0069c23c  04 20 80 e5                                      str r2, [r0, #4]
0069c240  08 20 94 e5                                      ldr r2, [r4, #8]
0069c244  08 20 80 e5                                      str r2, [r0, #8]
0069c248  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0069c24c  0c 20 80 e5                                      str r2, [r0, #0xc]
0069c250  10 20 94 e5                                      ldr r2, [r4, #0x10]
0069c254  10 20 80 e5                                      str r2, [r0, #0x10]
0069c258  14 20 94 e5                                      ldr r2, [r4, #0x14]
0069c25c  14 20 80 e5                                      str r2, [r0, #0x14]
0069c260  18 20 94 e5                                      ldr r2, [r4, #0x18]
0069c264  18 20 80 e5                                      str r2, [r0, #0x18]
0069c268  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0069c26c  1c 20 80 e5                                      str r2, [r0, #0x1c]
0069c270  20 20 94 e5                                      ldr r2, [r4, #0x20]
0069c274  20 20 80 e5                                      str r2, [r0, #0x20]
0069c278  24 20 94 e5                                      ldr r2, [r4, #0x24]
0069c27c  24 20 80 e5                                      str r2, [r0, #0x24]
0069c280  28 20 94 e5                                      ldr r2, [r4, #0x28]
0069c284  28 20 80 e5                                      str r2, [r0, #0x28]
0069c288  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0069c28c  2c 20 80 e5                                      str r2, [r0, #0x2c]
0069c290  30 20 94 e5                                      ldr r2, [r4, #0x30]
0069c294  30 20 80 e5                                      str r2, [r0, #0x30]
0069c298  34 20 94 e5                                      ldr r2, [r4, #0x34]
0069c29c  34 20 80 e5                                      str r2, [r0, #0x34]
0069c2a0  38 20 94 e5                                      ldr r2, [r4, #0x38]
0069c2a4  38 20 80 e5                                      str r2, [r0, #0x38]
0069c2a8  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0069c2ac  3c 20 80 e5                                      str r2, [r0, #0x3c]
0069c2b0  40 20 94 e5                                      ldr r2, [r4, #0x40]
0069c2b4  40 20 80 e5                                      str r2, [r0, #0x40]
0069c2b8  44 20 94 e5                                      ldr r2, [r4, #0x44]
0069c2bc  44 20 80 e5                                      str r2, [r0, #0x44]
0069c2c0  48 20 94 e5                                      ldr r2, [r4, #0x48]
0069c2c4  48 20 80 e5                                      str r2, [r0, #0x48]
0069c2c8  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0069c2cc  4c 20 80 e5                                      str r2, [r0, #0x4c]
0069c2d0  50 20 94 e5                                      ldr r2, [r4, #0x50]
0069c2d4  50 20 80 e5                                      str r2, [r0, #0x50]
0069c2d8  54 20 d4 e5                                      ldrb r2, [r4, #0x54]
0069c2dc  54 20 c0 e5                                      strb r2, [r0, #0x54]
0069c2e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0069c2e4  68 88 2f 00 bc 2e 00 00                          .byte 0x68, 0x88, 0x2f, 0x00, 0xbc, 0x2e, 0x00, 0x00

; FUNCTION 0x0069d120, declared_size=724, range_size=724, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZN6glitch2ps10PDCylinderC1Eff
; demangled: glitch::ps::PDCylinder::PDCylinder(float, float)
; decoder-mode: arm
0069d120  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
0069d124  c4 c2 9f e5                                      ldr ip, [pc, #0x2c4]
0069d128  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069d12c  03 30 8f e0                                      add r3, pc, r3
0069d130  0c c0 93 e7                                      ldr ip, [r3, ip]
0069d134  00 50 a0 e3                                      mov r5, #0
0069d138  01 60 a0 e1                                      mov r6, r1
0069d13c  08 c0 8c e2                                      add ip, ip, #8
0069d140  00 40 a0 e1                                      mov r4, r0
0069d144  00 c0 80 e5                                      str ip, [r0]
0069d148  0c d0 4d e2                                      sub sp, sp, #0xc
0069d14c  04 50 80 e5                                      str r5, [r0, #4]
0069d150  08 50 80 e5                                      str r5, [r0, #8]
0069d154  0c 50 80 e5                                      str r5, [r0, #0xc]
0069d158  10 50 80 e5                                      str r5, [r0, #0x10]
0069d15c  14 50 80 e5                                      str r5, [r0, #0x14]
0069d160  18 50 80 e5                                      str r5, [r0, #0x18]
0069d164  1c 50 80 e5                                      str r5, [r0, #0x1c]
0069d168  20 50 80 e5                                      str r5, [r0, #0x20]
0069d16c  24 50 80 e5                                      str r5, [r0, #0x24]
0069d170  28 50 80 e5                                      str r5, [r0, #0x28]
0069d174  2c 50 80 e5                                      str r5, [r0, #0x2c]
0069d178  30 50 80 e5                                      str r5, [r0, #0x30]
0069d17c  50 10 84 e5                                      str r1, [r4, #0x50]
0069d180  06 00 a0 e1                                      mov r0, r6
0069d184  bf 14 a0 e3                                      mov r1, #0xbf000000
0069d188  02 70 a0 e1                                      mov r7, r2
0069d18c  f6 c6 f1 eb                                      bl #0x30ed6c
0069d190  06 10 a0 e1                                      mov r1, r6
0069d194  08 00 84 e5                                      str r0, [r4, #8]
0069d198  14 60 84 e5                                      str r6, [r4, #0x14]
0069d19c  06 00 a0 e1                                      mov r0, r6
0069d1a0  f1 c6 f1 eb                                      bl #0x30ed6c
0069d1a4  05 10 a0 e1                                      mov r1, r5
0069d1a8  7d c6 f1 eb                                      bl #0x30eba4
0069d1ac  05 10 a0 e1                                      mov r1, r5
0069d1b0  7b c6 f1 eb                                      bl #0x30eba4
0069d1b4  00 80 a0 e1                                      mov r8, r0
0069d1b8  d9 c3 f1 eb                                      bl #0x30e124
0069d1bc  05 10 a0 e1                                      mov r1, r5
0069d1c0  04 00 8d e5                                      str r0, [sp, #4]
0069d1c4  08 00 a0 e1                                      mov r0, r8
0069d1c8  6f c3 f1 eb                                      bl #0x30df8c
0069d1cc  00 00 50 e3                                      cmp r0, #0
0069d1d0  05 00 a0 11                                      movne r0, r5
0069d1d4  02 00 00 1a                                      bne #0x69d1e4
0069d1d8  08 10 a0 e1                                      mov r1, r8
0069d1dc  fe 05 a0 e3                                      mov r0, #0x3f800000
0069d1e0  ab c6 f1 eb                                      bl #0x30ec94
0069d1e4  48 00 84 e5                                      str r0, [r4, #0x48]
0069d1e8  cd c3 f1 eb                                      bl #0x30e124
0069d1ec  00 10 a0 e3                                      mov r1, #0
0069d1f0  00 80 a0 e1                                      mov r8, r0
0069d1f4  dc c6 f1 eb                                      bl #0x30ed6c
0069d1f8  08 10 a0 e1                                      mov r1, r8
0069d1fc  00 50 a0 e1                                      mov r5, r0
0069d200  06 00 a0 e1                                      mov r0, r6
0069d204  d8 c6 f1 eb                                      bl #0x30ed6c
0069d208  00 10 a0 e3                                      mov r1, #0
0069d20c  00 60 a0 e1                                      mov r6, r0
0069d210  05 00 a0 e1                                      mov r0, r5
0069d214  d4 c6 f1 eb                                      bl #0x30ed6c
0069d218  00 10 a0 e3                                      mov r1, #0
0069d21c  00 80 a0 e1                                      mov r8, r0
0069d220  06 00 a0 e1                                      mov r0, r6
0069d224  d0 c6 f1 eb                                      bl #0x30ed6c
0069d228  00 10 a0 e1                                      mov r1, r0
0069d22c  05 00 a0 e1                                      mov r0, r5
0069d230  5b c6 f1 eb                                      bl #0x30eba4
0069d234  08 10 a0 e1                                      mov r1, r8
0069d238  59 c6 f1 eb                                      bl #0x30eba4
0069d23c  77 1e 0b e3                                      movw r1, #0xbe77
0069d240  7f 1f 43 e3                                      movt r1, #0x3f7f
0069d244  02 01 c0 e3                                      bic r0, r0, #0x80000000
0069d248  2a c4 f1 eb                                      bl #0x30e2f8
0069d24c  00 00 50 e3                                      cmp r0, #0
0069d250  00 b0 a0 13                                      movne fp, #0
0069d254  fe b5 a0 03                                      moveq fp, #0x3f800000
0069d258  05 10 a0 e1                                      mov r1, r5
0069d25c  0b 00 a0 e1                                      mov r0, fp
0069d260  fe a5 a0 13                                      movne sl, #0x3f800000
0069d264  00 a0 a0 03                                      moveq sl, #0
0069d268  bf c6 f1 eb                                      bl #0x30ed6c
0069d26c  06 10 a0 e1                                      mov r1, r6
0069d270  00 90 a0 e1                                      mov sb, r0
0069d274  0a 00 a0 e1                                      mov r0, sl
0069d278  bb c6 f1 eb                                      bl #0x30ed6c
0069d27c  00 10 a0 e1                                      mov r1, r0
0069d280  09 00 a0 e1                                      mov r0, sb
0069d284  46 c6 f1 eb                                      bl #0x30eba4
0069d288  00 10 a0 e1                                      mov r1, r0
0069d28c  08 00 a0 e1                                      mov r0, r8
0069d290  43 c6 f1 eb                                      bl #0x30eba4
0069d294  00 90 a0 e1                                      mov sb, r0
0069d298  09 10 a0 e1                                      mov r1, sb
0069d29c  05 00 a0 e1                                      mov r0, r5
0069d2a0  b1 c6 f1 eb                                      bl #0x30ed6c
0069d2a4  00 80 a0 e1                                      mov r8, r0
0069d2a8  08 10 a0 e1                                      mov r1, r8
0069d2ac  0b 00 a0 e1                                      mov r0, fp
0069d2b0  3d c4 f1 eb                                      bl #0x30e3ac
0069d2b4  09 10 a0 e1                                      mov r1, sb
0069d2b8  1c 00 84 e5                                      str r0, [r4, #0x1c]
0069d2bc  06 00 a0 e1                                      mov r0, r6
0069d2c0  a9 c6 f1 eb                                      bl #0x30ed6c
0069d2c4  00 10 a0 e1                                      mov r1, r0
0069d2c8  0a 00 a0 e1                                      mov r0, sl
0069d2cc  36 c4 f1 eb                                      bl #0x30e3ac
0069d2d0  08 10 a0 e1                                      mov r1, r8
0069d2d4  20 00 84 e5                                      str r0, [r4, #0x20]
0069d2d8  00 00 a0 e3                                      mov r0, #0
0069d2dc  32 c4 f1 eb                                      bl #0x30e3ac
0069d2e0  24 00 84 e5                                      str r0, [r4, #0x24]
0069d2e4  1c 00 84 e2                                      add r0, r4, #0x1c
0069d2e8  7c 05 f3 eb                                      bl #0x35e8e0
0069d2ec  24 90 94 e5                                      ldr sb, [r4, #0x24]
0069d2f0  02 01 86 e2                                      add r0, r6, #0x80000000
0069d2f4  20 80 94 e5                                      ldr r8, [r4, #0x20]
0069d2f8  09 10 a0 e1                                      mov r1, sb
0069d2fc  9a c6 f1 eb                                      bl #0x30ed6c
0069d300  08 10 a0 e1                                      mov r1, r8
0069d304  00 a0 a0 e1                                      mov sl, r0
0069d308  05 00 a0 e1                                      mov r0, r5
0069d30c  96 c6 f1 eb                                      bl #0x30ed6c
0069d310  00 10 a0 e1                                      mov r1, r0
0069d314  0a 00 a0 e1                                      mov r0, sl
0069d318  21 c6 f1 eb                                      bl #0x30eba4
0069d31c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0069d320  02 a1 85 e2                                      add sl, r5, #0x80000000
0069d324  28 00 84 e5                                      str r0, [r4, #0x28]
0069d328  03 10 a0 e1                                      mov r1, r3
0069d32c  0a 00 a0 e1                                      mov r0, sl
0069d330  00 30 8d e5                                      str r3, [sp]
0069d334  8c c6 f1 eb                                      bl #0x30ed6c
0069d338  09 10 a0 e1                                      mov r1, sb
0069d33c  00 b0 a0 e1                                      mov fp, r0
0069d340  05 00 a0 e1                                      mov r0, r5
0069d344  88 c6 f1 eb                                      bl #0x30ed6c
0069d348  00 10 a0 e1                                      mov r1, r0
0069d34c  0b 00 a0 e1                                      mov r0, fp
0069d350  13 c6 f1 eb                                      bl #0x30eba4
0069d354  0a 10 a0 e1                                      mov r1, sl
0069d358  2c 00 84 e5                                      str r0, [r4, #0x2c]
0069d35c  08 00 a0 e1                                      mov r0, r8
0069d360  81 c6 f1 eb                                      bl #0x30ed6c
0069d364  00 30 9d e5                                      ldr r3, [sp]
0069d368  00 50 a0 e1                                      mov r5, r0
0069d36c  06 00 a0 e1                                      mov r0, r6
0069d370  03 10 a0 e1                                      mov r1, r3
0069d374  7c c6 f1 eb                                      bl #0x30ed6c
0069d378  00 10 a0 e1                                      mov r1, r0
0069d37c  05 00 a0 e1                                      mov r0, r5
0069d380  07 c6 f1 eb                                      bl #0x30eba4
0069d384  00 50 a0 e3                                      mov r5, #0
0069d388  30 00 84 e5                                      str r0, [r4, #0x30]
0069d38c  07 10 a0 e1                                      mov r1, r7
0069d390  07 00 a0 e1                                      mov r0, r7
0069d394  38 50 84 e5                                      str r5, [r4, #0x38]
0069d398  44 70 84 e5                                      str r7, [r4, #0x44]
0069d39c  34 70 84 e5                                      str r7, [r4, #0x34]
0069d3a0  71 c6 f1 eb                                      bl #0x30ed6c
0069d3a4  00 30 a0 e3                                      mov r3, #0
0069d3a8  54 30 c4 e5                                      strb r3, [r4, #0x54]
0069d3ac  40 50 84 e5                                      str r5, [r4, #0x40]
0069d3b0  3c 00 84 e5                                      str r0, [r4, #0x3c]
0069d3b4  3a c5 f1 eb                                      bl #0x30e8a4
0069d3b8  18 2d 02 e3                                      movw r2, #0x2d18
0069d3bc  fb 31 02 e3                                      movw r3, #0x21fb
0069d3c0  44 24 45 e3                                      movt r2, #0x5444
0069d3c4  09 30 44 e3                                      movt r3, #0x4009
0069d3c8  b9 c5 f1 eb                                      bl #0x30eab4
0069d3cc  b3 c4 f1 eb                                      bl #0x30e6a0
0069d3d0  00 10 a0 e1                                      mov r1, r0
0069d3d4  04 00 9d e5                                      ldr r0, [sp, #4]
0069d3d8  63 c6 f1 eb                                      bl #0x30ed6c
0069d3dc  4c 00 84 e5                                      str r0, [r4, #0x4c]
0069d3e0  04 00 a0 e1                                      mov r0, r4
0069d3e4  0c d0 8d e2                                      add sp, sp, #0xc
0069d3e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0069d3ec  64 79 2f 00 bc 2e 00 00                          .byte 0x64, 0x79, 0x2f, 0x00, 0xbc, 0x2e, 0x00, 0x00

; FUNCTION 0x0069d3f4, declared_size=724, range_size=724, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZN6glitch2ps10PDCylinderC2Eff
; demangled: glitch::ps::PDCylinder::PDCylinder(float, float)
; decoder-mode: arm
0069d3f4  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
0069d3f8  c4 c2 9f e5                                      ldr ip, [pc, #0x2c4]
0069d3fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069d400  03 30 8f e0                                      add r3, pc, r3
0069d404  0c c0 93 e7                                      ldr ip, [r3, ip]
0069d408  00 50 a0 e3                                      mov r5, #0
0069d40c  01 60 a0 e1                                      mov r6, r1
0069d410  08 c0 8c e2                                      add ip, ip, #8
0069d414  00 40 a0 e1                                      mov r4, r0
0069d418  00 c0 80 e5                                      str ip, [r0]
0069d41c  0c d0 4d e2                                      sub sp, sp, #0xc
0069d420  04 50 80 e5                                      str r5, [r0, #4]
0069d424  08 50 80 e5                                      str r5, [r0, #8]
0069d428  0c 50 80 e5                                      str r5, [r0, #0xc]
0069d42c  10 50 80 e5                                      str r5, [r0, #0x10]
0069d430  14 50 80 e5                                      str r5, [r0, #0x14]
0069d434  18 50 80 e5                                      str r5, [r0, #0x18]
0069d438  1c 50 80 e5                                      str r5, [r0, #0x1c]
0069d43c  20 50 80 e5                                      str r5, [r0, #0x20]
0069d440  24 50 80 e5                                      str r5, [r0, #0x24]
0069d444  28 50 80 e5                                      str r5, [r0, #0x28]
0069d448  2c 50 80 e5                                      str r5, [r0, #0x2c]
0069d44c  30 50 80 e5                                      str r5, [r0, #0x30]
0069d450  50 10 84 e5                                      str r1, [r4, #0x50]
0069d454  06 00 a0 e1                                      mov r0, r6
0069d458  bf 14 a0 e3                                      mov r1, #0xbf000000
0069d45c  02 70 a0 e1                                      mov r7, r2
0069d460  41 c6 f1 eb                                      bl #0x30ed6c
0069d464  06 10 a0 e1                                      mov r1, r6
0069d468  08 00 84 e5                                      str r0, [r4, #8]
0069d46c  14 60 84 e5                                      str r6, [r4, #0x14]
0069d470  06 00 a0 e1                                      mov r0, r6
0069d474  3c c6 f1 eb                                      bl #0x30ed6c
0069d478  05 10 a0 e1                                      mov r1, r5
0069d47c  c8 c5 f1 eb                                      bl #0x30eba4
0069d480  05 10 a0 e1                                      mov r1, r5
0069d484  c6 c5 f1 eb                                      bl #0x30eba4
0069d488  00 80 a0 e1                                      mov r8, r0
0069d48c  24 c3 f1 eb                                      bl #0x30e124
0069d490  05 10 a0 e1                                      mov r1, r5
0069d494  04 00 8d e5                                      str r0, [sp, #4]
0069d498  08 00 a0 e1                                      mov r0, r8
0069d49c  ba c2 f1 eb                                      bl #0x30df8c
0069d4a0  00 00 50 e3                                      cmp r0, #0
0069d4a4  05 00 a0 11                                      movne r0, r5
0069d4a8  02 00 00 1a                                      bne #0x69d4b8
0069d4ac  08 10 a0 e1                                      mov r1, r8
0069d4b0  fe 05 a0 e3                                      mov r0, #0x3f800000
0069d4b4  f6 c5 f1 eb                                      bl #0x30ec94
0069d4b8  48 00 84 e5                                      str r0, [r4, #0x48]
0069d4bc  18 c3 f1 eb                                      bl #0x30e124
0069d4c0  00 10 a0 e3                                      mov r1, #0
0069d4c4  00 80 a0 e1                                      mov r8, r0
0069d4c8  27 c6 f1 eb                                      bl #0x30ed6c
0069d4cc  08 10 a0 e1                                      mov r1, r8
0069d4d0  00 50 a0 e1                                      mov r5, r0
0069d4d4  06 00 a0 e1                                      mov r0, r6
0069d4d8  23 c6 f1 eb                                      bl #0x30ed6c
0069d4dc  00 10 a0 e3                                      mov r1, #0
0069d4e0  00 60 a0 e1                                      mov r6, r0
0069d4e4  05 00 a0 e1                                      mov r0, r5
0069d4e8  1f c6 f1 eb                                      bl #0x30ed6c
0069d4ec  00 10 a0 e3                                      mov r1, #0
0069d4f0  00 80 a0 e1                                      mov r8, r0
0069d4f4  06 00 a0 e1                                      mov r0, r6
0069d4f8  1b c6 f1 eb                                      bl #0x30ed6c
0069d4fc  00 10 a0 e1                                      mov r1, r0
0069d500  05 00 a0 e1                                      mov r0, r5
0069d504  a6 c5 f1 eb                                      bl #0x30eba4
0069d508  08 10 a0 e1                                      mov r1, r8
0069d50c  a4 c5 f1 eb                                      bl #0x30eba4
0069d510  77 1e 0b e3                                      movw r1, #0xbe77
0069d514  7f 1f 43 e3                                      movt r1, #0x3f7f
0069d518  02 01 c0 e3                                      bic r0, r0, #0x80000000
0069d51c  75 c3 f1 eb                                      bl #0x30e2f8
0069d520  00 00 50 e3                                      cmp r0, #0
0069d524  00 b0 a0 13                                      movne fp, #0
0069d528  fe b5 a0 03                                      moveq fp, #0x3f800000
0069d52c  05 10 a0 e1                                      mov r1, r5
0069d530  0b 00 a0 e1                                      mov r0, fp
0069d534  fe a5 a0 13                                      movne sl, #0x3f800000
0069d538  00 a0 a0 03                                      moveq sl, #0
0069d53c  0a c6 f1 eb                                      bl #0x30ed6c
0069d540  06 10 a0 e1                                      mov r1, r6
0069d544  00 90 a0 e1                                      mov sb, r0
0069d548  0a 00 a0 e1                                      mov r0, sl
0069d54c  06 c6 f1 eb                                      bl #0x30ed6c
0069d550  00 10 a0 e1                                      mov r1, r0
0069d554  09 00 a0 e1                                      mov r0, sb
0069d558  91 c5 f1 eb                                      bl #0x30eba4
0069d55c  00 10 a0 e1                                      mov r1, r0
0069d560  08 00 a0 e1                                      mov r0, r8
0069d564  8e c5 f1 eb                                      bl #0x30eba4
0069d568  00 90 a0 e1                                      mov sb, r0
0069d56c  09 10 a0 e1                                      mov r1, sb
0069d570  05 00 a0 e1                                      mov r0, r5
0069d574  fc c5 f1 eb                                      bl #0x30ed6c
0069d578  00 80 a0 e1                                      mov r8, r0
0069d57c  08 10 a0 e1                                      mov r1, r8
0069d580  0b 00 a0 e1                                      mov r0, fp
0069d584  88 c3 f1 eb                                      bl #0x30e3ac
0069d588  09 10 a0 e1                                      mov r1, sb
0069d58c  1c 00 84 e5                                      str r0, [r4, #0x1c]
0069d590  06 00 a0 e1                                      mov r0, r6
0069d594  f4 c5 f1 eb                                      bl #0x30ed6c
0069d598  00 10 a0 e1                                      mov r1, r0
0069d59c  0a 00 a0 e1                                      mov r0, sl
0069d5a0  81 c3 f1 eb                                      bl #0x30e3ac
0069d5a4  08 10 a0 e1                                      mov r1, r8
0069d5a8  20 00 84 e5                                      str r0, [r4, #0x20]
0069d5ac  00 00 a0 e3                                      mov r0, #0
0069d5b0  7d c3 f1 eb                                      bl #0x30e3ac
0069d5b4  24 00 84 e5                                      str r0, [r4, #0x24]
0069d5b8  1c 00 84 e2                                      add r0, r4, #0x1c
0069d5bc  c7 04 f3 eb                                      bl #0x35e8e0
0069d5c0  24 90 94 e5                                      ldr sb, [r4, #0x24]
0069d5c4  02 01 86 e2                                      add r0, r6, #0x80000000
0069d5c8  20 80 94 e5                                      ldr r8, [r4, #0x20]
0069d5cc  09 10 a0 e1                                      mov r1, sb
0069d5d0  e5 c5 f1 eb                                      bl #0x30ed6c
0069d5d4  08 10 a0 e1                                      mov r1, r8
0069d5d8  00 a0 a0 e1                                      mov sl, r0
0069d5dc  05 00 a0 e1                                      mov r0, r5
0069d5e0  e1 c5 f1 eb                                      bl #0x30ed6c
0069d5e4  00 10 a0 e1                                      mov r1, r0
0069d5e8  0a 00 a0 e1                                      mov r0, sl
0069d5ec  6c c5 f1 eb                                      bl #0x30eba4
0069d5f0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0069d5f4  02 a1 85 e2                                      add sl, r5, #0x80000000
0069d5f8  28 00 84 e5                                      str r0, [r4, #0x28]
0069d5fc  03 10 a0 e1                                      mov r1, r3
0069d600  0a 00 a0 e1                                      mov r0, sl
0069d604  00 30 8d e5                                      str r3, [sp]
0069d608  d7 c5 f1 eb                                      bl #0x30ed6c
0069d60c  09 10 a0 e1                                      mov r1, sb
0069d610  00 b0 a0 e1                                      mov fp, r0
0069d614  05 00 a0 e1                                      mov r0, r5
0069d618  d3 c5 f1 eb                                      bl #0x30ed6c
0069d61c  00 10 a0 e1                                      mov r1, r0
0069d620  0b 00 a0 e1                                      mov r0, fp
0069d624  5e c5 f1 eb                                      bl #0x30eba4
0069d628  0a 10 a0 e1                                      mov r1, sl
0069d62c  2c 00 84 e5                                      str r0, [r4, #0x2c]
0069d630  08 00 a0 e1                                      mov r0, r8
0069d634  cc c5 f1 eb                                      bl #0x30ed6c
0069d638  00 30 9d e5                                      ldr r3, [sp]
0069d63c  00 50 a0 e1                                      mov r5, r0
0069d640  06 00 a0 e1                                      mov r0, r6
0069d644  03 10 a0 e1                                      mov r1, r3
0069d648  c7 c5 f1 eb                                      bl #0x30ed6c
0069d64c  00 10 a0 e1                                      mov r1, r0
0069d650  05 00 a0 e1                                      mov r0, r5
0069d654  52 c5 f1 eb                                      bl #0x30eba4
0069d658  00 50 a0 e3                                      mov r5, #0
0069d65c  30 00 84 e5                                      str r0, [r4, #0x30]
0069d660  07 10 a0 e1                                      mov r1, r7
0069d664  07 00 a0 e1                                      mov r0, r7
0069d668  38 50 84 e5                                      str r5, [r4, #0x38]
0069d66c  44 70 84 e5                                      str r7, [r4, #0x44]
0069d670  34 70 84 e5                                      str r7, [r4, #0x34]
0069d674  bc c5 f1 eb                                      bl #0x30ed6c
0069d678  00 30 a0 e3                                      mov r3, #0
0069d67c  54 30 c4 e5                                      strb r3, [r4, #0x54]
0069d680  40 50 84 e5                                      str r5, [r4, #0x40]
0069d684  3c 00 84 e5                                      str r0, [r4, #0x3c]
0069d688  85 c4 f1 eb                                      bl #0x30e8a4
0069d68c  18 2d 02 e3                                      movw r2, #0x2d18
0069d690  fb 31 02 e3                                      movw r3, #0x21fb
0069d694  44 24 45 e3                                      movt r2, #0x5444
0069d698  09 30 44 e3                                      movt r3, #0x4009
0069d69c  04 c5 f1 eb                                      bl #0x30eab4
0069d6a0  fe c3 f1 eb                                      bl #0x30e6a0
0069d6a4  00 10 a0 e1                                      mov r1, r0
0069d6a8  04 00 9d e5                                      ldr r0, [sp, #4]
0069d6ac  ae c5 f1 eb                                      bl #0x30ed6c
0069d6b0  4c 00 84 e5                                      str r0, [r4, #0x4c]
0069d6b4  04 00 a0 e1                                      mov r0, r4
0069d6b8  0c d0 8d e2                                      add sp, sp, #0xc
0069d6bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0069d6c0  90 76 2f 00 bc 2e 00 00                          .byte 0x90, 0x76, 0x2f, 0x00, 0xbc, 0x2e, 0x00, 0x00

; FUNCTION 0x0069d6c8, declared_size=1084, range_size=1084, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZN6glitch2ps10PDCylinderC1ERKNS_4core8vector3dIfEES6_ff
; demangled: glitch::ps::PDCylinder::PDCylinder(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, float, float)
; decoder-mode: arm
0069d6c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069d6cc  28 e4 9f e5                                      ldr lr, [pc, #0x428]
0069d6d0  28 54 9f e5                                      ldr r5, [pc, #0x428]
0069d6d4  00 c0 a0 e3                                      mov ip, #0
0069d6d8  0e e0 8f e0                                      add lr, pc, lr
0069d6dc  05 50 9e e7                                      ldr r5, [lr, r5]
0069d6e0  04 c0 80 e5                                      str ip, [r0, #4]
0069d6e4  08 c0 80 e5                                      str ip, [r0, #8]
0069d6e8  08 50 85 e2                                      add r5, r5, #8
0069d6ec  0c c0 80 e5                                      str ip, [r0, #0xc]
0069d6f0  30 c0 80 e5                                      str ip, [r0, #0x30]
0069d6f4  10 c0 80 e5                                      str ip, [r0, #0x10]
0069d6f8  14 c0 80 e5                                      str ip, [r0, #0x14]
0069d6fc  18 c0 80 e5                                      str ip, [r0, #0x18]
0069d700  1c c0 80 e5                                      str ip, [r0, #0x1c]
0069d704  20 c0 80 e5                                      str ip, [r0, #0x20]
0069d708  24 c0 80 e5                                      str ip, [r0, #0x24]
0069d70c  28 c0 80 e5                                      str ip, [r0, #0x28]
0069d710  2c c0 80 e5                                      str ip, [r0, #0x2c]
0069d714  00 50 80 e5                                      str r5, [r0]
0069d718  01 50 a0 e1                                      mov r5, r1
0069d71c  00 10 91 e5                                      ldr r1, [r1]
0069d720  03 80 a0 e1                                      mov r8, r3
0069d724  0c d0 4d e2                                      sub sp, sp, #0xc
0069d728  04 10 80 e5                                      str r1, [r0, #4]
0069d72c  04 30 95 e5                                      ldr r3, [r5, #4]
0069d730  30 70 9d e5                                      ldr r7, [sp, #0x30]
0069d734  00 40 a0 e1                                      mov r4, r0
0069d738  08 30 80 e5                                      str r3, [r0, #8]
0069d73c  08 30 95 e5                                      ldr r3, [r5, #8]
0069d740  02 60 a0 e1                                      mov r6, r2
0069d744  0c 30 80 e5                                      str r3, [r0, #0xc]
0069d748  04 00 92 e5                                      ldr r0, [r2, #4]
0069d74c  04 10 95 e5                                      ldr r1, [r5, #4]
0069d750  15 c3 f1 eb                                      bl #0x30e3ac
0069d754  08 10 95 e5                                      ldr r1, [r5, #8]
0069d758  00 90 a0 e1                                      mov sb, r0
0069d75c  08 00 96 e5                                      ldr r0, [r6, #8]
0069d760  11 c3 f1 eb                                      bl #0x30e3ac
0069d764  00 10 95 e5                                      ldr r1, [r5]
0069d768  00 a0 a0 e1                                      mov sl, r0
0069d76c  00 00 96 e5                                      ldr r0, [r6]
0069d770  0d c3 f1 eb                                      bl #0x30e3ac
0069d774  07 10 a0 e1                                      mov r1, r7
0069d778  10 00 84 e5                                      str r0, [r4, #0x10]
0069d77c  14 90 84 e5                                      str sb, [r4, #0x14]
0069d780  08 00 a0 e1                                      mov r0, r8
0069d784  18 a0 84 e5                                      str sl, [r4, #0x18]
0069d788  df c3 f1 eb                                      bl #0x30e70c
0069d78c  00 00 50 e3                                      cmp r0, #0
0069d790  38 70 84 05                                      streq r7, [r4, #0x38]
0069d794  08 70 a0 01                                      moveq r7, r8
0069d798  38 80 84 15                                      strne r8, [r4, #0x38]
0069d79c  34 70 84 15                                      strne r7, [r4, #0x34]
0069d7a0  34 80 84 05                                      streq r8, [r4, #0x34]
0069d7a4  07 10 a0 e1                                      mov r1, r7
0069d7a8  07 00 a0 e1                                      mov r0, r7
0069d7ac  6e c5 f1 eb                                      bl #0x30ed6c
0069d7b0  38 50 94 e5                                      ldr r5, [r4, #0x38]
0069d7b4  3c 00 84 e5                                      str r0, [r4, #0x3c]
0069d7b8  00 60 a0 e3                                      mov r6, #0
0069d7bc  05 10 a0 e1                                      mov r1, r5
0069d7c0  05 00 a0 e1                                      mov r0, r5
0069d7c4  68 c5 f1 eb                                      bl #0x30ed6c
0069d7c8  34 10 94 e5                                      ldr r1, [r4, #0x34]
0069d7cc  40 00 84 e5                                      str r0, [r4, #0x40]
0069d7d0  05 00 a0 e1                                      mov r0, r5
0069d7d4  ec c1 f1 eb                                      bl #0x30df8c
0069d7d8  00 00 50 e3                                      cmp r0, #0
0069d7dc  01 60 a0 13                                      movne r6, #1
0069d7e0  38 10 94 e5                                      ldr r1, [r4, #0x38]
0069d7e4  54 60 c4 e5                                      strb r6, [r4, #0x54]
0069d7e8  34 00 94 e5                                      ldr r0, [r4, #0x34]
0069d7ec  ee c2 f1 eb                                      bl #0x30e3ac
0069d7f0  10 60 94 e5                                      ldr r6, [r4, #0x10]
0069d7f4  44 00 84 e5                                      str r0, [r4, #0x44]
0069d7f8  14 50 94 e5                                      ldr r5, [r4, #0x14]
0069d7fc  06 10 a0 e1                                      mov r1, r6
0069d800  06 00 a0 e1                                      mov r0, r6
0069d804  58 c5 f1 eb                                      bl #0x30ed6c
0069d808  05 10 a0 e1                                      mov r1, r5
0069d80c  00 70 a0 e1                                      mov r7, r0
0069d810  05 00 a0 e1                                      mov r0, r5
0069d814  54 c5 f1 eb                                      bl #0x30ed6c
0069d818  00 10 a0 e1                                      mov r1, r0
0069d81c  07 00 a0 e1                                      mov r0, r7
0069d820  df c4 f1 eb                                      bl #0x30eba4
0069d824  18 70 94 e5                                      ldr r7, [r4, #0x18]
0069d828  00 80 a0 e1                                      mov r8, r0
0069d82c  07 10 a0 e1                                      mov r1, r7
0069d830  07 00 a0 e1                                      mov r0, r7
0069d834  4c c5 f1 eb                                      bl #0x30ed6c
0069d838  00 10 a0 e1                                      mov r1, r0
0069d83c  08 00 a0 e1                                      mov r0, r8
0069d840  d7 c4 f1 eb                                      bl #0x30eba4
0069d844  00 80 a0 e1                                      mov r8, r0
0069d848  35 c2 f1 eb                                      bl #0x30e124
0069d84c  00 10 a0 e3                                      mov r1, #0
0069d850  04 00 8d e5                                      str r0, [sp, #4]
0069d854  08 00 a0 e1                                      mov r0, r8
0069d858  cb c1 f1 eb                                      bl #0x30df8c
0069d85c  00 00 50 e3                                      cmp r0, #0
0069d860  00 00 a0 13                                      movne r0, #0
0069d864  02 00 00 1a                                      bne #0x69d874
0069d868  08 10 a0 e1                                      mov r1, r8
0069d86c  fe 05 a0 e3                                      mov r0, #0x3f800000
0069d870  07 c5 f1 eb                                      bl #0x30ec94
0069d874  48 00 84 e5                                      str r0, [r4, #0x48]
0069d878  29 c2 f1 eb                                      bl #0x30e124
0069d87c  06 10 a0 e1                                      mov r1, r6
0069d880  00 80 a0 e1                                      mov r8, r0
0069d884  38 c5 f1 eb                                      bl #0x30ed6c
0069d888  05 10 a0 e1                                      mov r1, r5
0069d88c  00 60 a0 e1                                      mov r6, r0
0069d890  08 00 a0 e1                                      mov r0, r8
0069d894  34 c5 f1 eb                                      bl #0x30ed6c
0069d898  07 10 a0 e1                                      mov r1, r7
0069d89c  00 50 a0 e1                                      mov r5, r0
0069d8a0  08 00 a0 e1                                      mov r0, r8
0069d8a4  30 c5 f1 eb                                      bl #0x30ed6c
0069d8a8  00 10 a0 e3                                      mov r1, #0
0069d8ac  00 70 a0 e1                                      mov r7, r0
0069d8b0  2d c5 f1 eb                                      bl #0x30ed6c
0069d8b4  00 10 a0 e3                                      mov r1, #0
0069d8b8  00 90 a0 e1                                      mov sb, r0
0069d8bc  05 00 a0 e1                                      mov r0, r5
0069d8c0  29 c5 f1 eb                                      bl #0x30ed6c
0069d8c4  00 10 a0 e1                                      mov r1, r0
0069d8c8  06 00 a0 e1                                      mov r0, r6
0069d8cc  b4 c4 f1 eb                                      bl #0x30eba4
0069d8d0  09 10 a0 e1                                      mov r1, sb
0069d8d4  b2 c4 f1 eb                                      bl #0x30eba4
0069d8d8  77 1e 0b e3                                      movw r1, #0xbe77
0069d8dc  7f 1f 43 e3                                      movt r1, #0x3f7f
0069d8e0  02 01 c0 e3                                      bic r0, r0, #0x80000000
0069d8e4  83 c2 f1 eb                                      bl #0x30e2f8
0069d8e8  00 00 50 e3                                      cmp r0, #0
0069d8ec  00 a0 a0 13                                      movne sl, #0
0069d8f0  fe a5 a0 03                                      moveq sl, #0x3f800000
0069d8f4  06 10 a0 e1                                      mov r1, r6
0069d8f8  0a 00 a0 e1                                      mov r0, sl
0069d8fc  fe 85 a0 13                                      movne r8, #0x3f800000
0069d900  00 80 a0 03                                      moveq r8, #0
0069d904  18 c5 f1 eb                                      bl #0x30ed6c
0069d908  05 10 a0 e1                                      mov r1, r5
0069d90c  00 b0 a0 e1                                      mov fp, r0
0069d910  08 00 a0 e1                                      mov r0, r8
0069d914  14 c5 f1 eb                                      bl #0x30ed6c
0069d918  00 10 a0 e1                                      mov r1, r0
0069d91c  0b 00 a0 e1                                      mov r0, fp
0069d920  9f c4 f1 eb                                      bl #0x30eba4
0069d924  00 10 a0 e1                                      mov r1, r0
0069d928  09 00 a0 e1                                      mov r0, sb
0069d92c  9c c4 f1 eb                                      bl #0x30eba4
0069d930  00 90 a0 e1                                      mov sb, r0
0069d934  09 10 a0 e1                                      mov r1, sb
0069d938  06 00 a0 e1                                      mov r0, r6
0069d93c  0a c5 f1 eb                                      bl #0x30ed6c
0069d940  00 10 a0 e1                                      mov r1, r0
0069d944  0a 00 a0 e1                                      mov r0, sl
0069d948  97 c2 f1 eb                                      bl #0x30e3ac
0069d94c  09 10 a0 e1                                      mov r1, sb
0069d950  1c 00 84 e5                                      str r0, [r4, #0x1c]
0069d954  05 00 a0 e1                                      mov r0, r5
0069d958  03 c5 f1 eb                                      bl #0x30ed6c
0069d95c  00 10 a0 e1                                      mov r1, r0
0069d960  08 00 a0 e1                                      mov r0, r8
0069d964  90 c2 f1 eb                                      bl #0x30e3ac
0069d968  09 10 a0 e1                                      mov r1, sb
0069d96c  20 00 84 e5                                      str r0, [r4, #0x20]
0069d970  07 00 a0 e1                                      mov r0, r7
0069d974  fc c4 f1 eb                                      bl #0x30ed6c
0069d978  00 10 a0 e1                                      mov r1, r0
0069d97c  00 00 a0 e3                                      mov r0, #0
0069d980  89 c2 f1 eb                                      bl #0x30e3ac
0069d984  24 00 84 e5                                      str r0, [r4, #0x24]
0069d988  1c 00 84 e2                                      add r0, r4, #0x1c
0069d98c  d3 03 f3 eb                                      bl #0x35e8e0
0069d990  24 90 94 e5                                      ldr sb, [r4, #0x24]
0069d994  02 01 85 e2                                      add r0, r5, #0x80000000
0069d998  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0069d99c  09 10 a0 e1                                      mov r1, sb
0069d9a0  f1 c4 f1 eb                                      bl #0x30ed6c
0069d9a4  0a 10 a0 e1                                      mov r1, sl
0069d9a8  00 80 a0 e1                                      mov r8, r0
0069d9ac  07 00 a0 e1                                      mov r0, r7
0069d9b0  ed c4 f1 eb                                      bl #0x30ed6c
0069d9b4  00 10 a0 e1                                      mov r1, r0
0069d9b8  08 00 a0 e1                                      mov r0, r8
0069d9bc  78 c4 f1 eb                                      bl #0x30eba4
0069d9c0  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
0069d9c4  02 71 87 e2                                      add r7, r7, #0x80000000
0069d9c8  28 00 84 e5                                      str r0, [r4, #0x28]
0069d9cc  08 10 a0 e1                                      mov r1, r8
0069d9d0  07 00 a0 e1                                      mov r0, r7
0069d9d4  e4 c4 f1 eb                                      bl #0x30ed6c
0069d9d8  09 10 a0 e1                                      mov r1, sb
0069d9dc  00 70 a0 e1                                      mov r7, r0
0069d9e0  06 00 a0 e1                                      mov r0, r6
0069d9e4  e0 c4 f1 eb                                      bl #0x30ed6c
0069d9e8  00 10 a0 e1                                      mov r1, r0
0069d9ec  07 00 a0 e1                                      mov r0, r7
0069d9f0  6b c4 f1 eb                                      bl #0x30eba4
0069d9f4  02 11 86 e2                                      add r1, r6, #0x80000000
0069d9f8  2c 00 84 e5                                      str r0, [r4, #0x2c]
0069d9fc  0a 00 a0 e1                                      mov r0, sl
0069da00  d9 c4 f1 eb                                      bl #0x30ed6c
0069da04  08 10 a0 e1                                      mov r1, r8
0069da08  00 60 a0 e1                                      mov r6, r0
0069da0c  05 00 a0 e1                                      mov r0, r5
0069da10  d5 c4 f1 eb                                      bl #0x30ed6c
0069da14  00 10 a0 e1                                      mov r1, r0
0069da18  06 00 a0 e1                                      mov r0, r6
0069da1c  60 c4 f1 eb                                      bl #0x30eba4
0069da20  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
0069da24  30 00 84 e5                                      str r0, [r4, #0x30]
0069da28  40 50 94 e5                                      ldr r5, [r4, #0x40]
0069da2c  00 00 53 e3                                      cmp r3, #0
0069da30  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0069da34  1b 00 00 1a                                      bne #0x69daa8
0069da38  99 c3 f1 eb                                      bl #0x30e8a4
0069da3c  18 2d 02 e3                                      movw r2, #0x2d18
0069da40  fb 31 02 e3                                      movw r3, #0x21fb
0069da44  44 24 45 e3                                      movt r2, #0x5444
0069da48  09 30 44 e3                                      movt r3, #0x4009
0069da4c  18 c4 f1 eb                                      bl #0x30eab4
0069da50  00 60 a0 e1                                      mov r6, r0
0069da54  05 00 a0 e1                                      mov r0, r5
0069da58  01 70 a0 e1                                      mov r7, r1
0069da5c  90 c3 f1 eb                                      bl #0x30e8a4
0069da60  18 2d 02 e3                                      movw r2, #0x2d18
0069da64  fb 31 02 e3                                      movw r3, #0x21fb
0069da68  44 24 45 e3                                      movt r2, #0x5444
0069da6c  09 30 4c e3                                      movt r3, #0xc009
0069da70  0f c4 f1 eb                                      bl #0x30eab4
0069da74  00 20 a0 e1                                      mov r2, r0
0069da78  01 30 a0 e1                                      mov r3, r1
0069da7c  06 00 a0 e1                                      mov r0, r6
0069da80  07 10 a0 e1                                      mov r1, r7
0069da84  2e c4 f1 eb                                      bl #0x30eb44
0069da88  04 c3 f1 eb                                      bl #0x30e6a0
0069da8c  00 10 a0 e1                                      mov r1, r0
0069da90  04 00 9d e5                                      ldr r0, [sp, #4]
0069da94  b4 c4 f1 eb                                      bl #0x30ed6c
0069da98  4c 00 84 e5                                      str r0, [r4, #0x4c]
0069da9c  04 00 a0 e1                                      mov r0, r4
0069daa0  0c d0 8d e2                                      add sp, sp, #0xc
0069daa4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0069daa8  04 00 9d e5                                      ldr r0, [sp, #4]
0069daac  00 10 a0 e1                                      mov r1, r0
0069dab0  3b c4 f1 eb                                      bl #0x30eba4
0069dab4  7a c3 f1 eb                                      bl #0x30e8a4
0069dab8  18 2d 02 e3                                      movw r2, #0x2d18
0069dabc  fb 31 02 e3                                      movw r3, #0x21fb
0069dac0  44 24 45 e3                                      movt r2, #0x5444
0069dac4  09 30 44 e3                                      movt r3, #0x4009
0069dac8  f9 c3 f1 eb                                      bl #0x30eab4
0069dacc  00 60 a0 e1                                      mov r6, r0
0069dad0  34 00 94 e5                                      ldr r0, [r4, #0x34]
0069dad4  01 70 a0 e1                                      mov r7, r1
0069dad8  71 c3 f1 eb                                      bl #0x30e8a4
0069dadc  00 20 a0 e1                                      mov r2, r0
0069dae0  01 30 a0 e1                                      mov r3, r1
0069dae4  06 00 a0 e1                                      mov r0, r6
0069dae8  07 10 a0 e1                                      mov r1, r7
0069daec  f0 c3 f1 eb                                      bl #0x30eab4
0069daf0  ea c2 f1 eb                                      bl #0x30e6a0
0069daf4  4c 00 84 e5                                      str r0, [r4, #0x4c]
0069daf8  e7 ff ff ea                                      b #0x69da9c
; mapping-symbol data/literal pool
0069dafc  b8 73 2f 00 bc 2e 00 00                          .byte 0xb8, 0x73, 0x2f, 0x00, 0xbc, 0x2e, 0x00, 0x00

; FUNCTION 0x0069db04, declared_size=1084, range_size=1084, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZN6glitch2ps10PDCylinderC2ERKNS_4core8vector3dIfEES6_ff
; demangled: glitch::ps::PDCylinder::PDCylinder(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, float, float)
; decoder-mode: arm
0069db04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069db08  28 e4 9f e5                                      ldr lr, [pc, #0x428]
0069db0c  28 54 9f e5                                      ldr r5, [pc, #0x428]
0069db10  00 c0 a0 e3                                      mov ip, #0
0069db14  0e e0 8f e0                                      add lr, pc, lr
0069db18  05 50 9e e7                                      ldr r5, [lr, r5]
0069db1c  04 c0 80 e5                                      str ip, [r0, #4]
0069db20  08 c0 80 e5                                      str ip, [r0, #8]
0069db24  08 50 85 e2                                      add r5, r5, #8
0069db28  0c c0 80 e5                                      str ip, [r0, #0xc]
0069db2c  30 c0 80 e5                                      str ip, [r0, #0x30]
0069db30  10 c0 80 e5                                      str ip, [r0, #0x10]
0069db34  14 c0 80 e5                                      str ip, [r0, #0x14]
0069db38  18 c0 80 e5                                      str ip, [r0, #0x18]
0069db3c  1c c0 80 e5                                      str ip, [r0, #0x1c]
0069db40  20 c0 80 e5                                      str ip, [r0, #0x20]
0069db44  24 c0 80 e5                                      str ip, [r0, #0x24]
0069db48  28 c0 80 e5                                      str ip, [r0, #0x28]
0069db4c  2c c0 80 e5                                      str ip, [r0, #0x2c]
0069db50  00 50 80 e5                                      str r5, [r0]
0069db54  01 50 a0 e1                                      mov r5, r1
0069db58  00 10 91 e5                                      ldr r1, [r1]
0069db5c  03 80 a0 e1                                      mov r8, r3
0069db60  0c d0 4d e2                                      sub sp, sp, #0xc
0069db64  04 10 80 e5                                      str r1, [r0, #4]
0069db68  04 30 95 e5                                      ldr r3, [r5, #4]
0069db6c  30 70 9d e5                                      ldr r7, [sp, #0x30]
0069db70  00 40 a0 e1                                      mov r4, r0
0069db74  08 30 80 e5                                      str r3, [r0, #8]
0069db78  08 30 95 e5                                      ldr r3, [r5, #8]
0069db7c  02 60 a0 e1                                      mov r6, r2
0069db80  0c 30 80 e5                                      str r3, [r0, #0xc]
0069db84  04 00 92 e5                                      ldr r0, [r2, #4]
0069db88  04 10 95 e5                                      ldr r1, [r5, #4]
0069db8c  06 c2 f1 eb                                      bl #0x30e3ac
0069db90  08 10 95 e5                                      ldr r1, [r5, #8]
0069db94  00 90 a0 e1                                      mov sb, r0
0069db98  08 00 96 e5                                      ldr r0, [r6, #8]
0069db9c  02 c2 f1 eb                                      bl #0x30e3ac
0069dba0  00 10 95 e5                                      ldr r1, [r5]
0069dba4  00 a0 a0 e1                                      mov sl, r0
0069dba8  00 00 96 e5                                      ldr r0, [r6]
0069dbac  fe c1 f1 eb                                      bl #0x30e3ac
0069dbb0  07 10 a0 e1                                      mov r1, r7
0069dbb4  10 00 84 e5                                      str r0, [r4, #0x10]
0069dbb8  14 90 84 e5                                      str sb, [r4, #0x14]
0069dbbc  08 00 a0 e1                                      mov r0, r8
0069dbc0  18 a0 84 e5                                      str sl, [r4, #0x18]
0069dbc4  d0 c2 f1 eb                                      bl #0x30e70c
0069dbc8  00 00 50 e3                                      cmp r0, #0
0069dbcc  38 70 84 05                                      streq r7, [r4, #0x38]
0069dbd0  08 70 a0 01                                      moveq r7, r8
0069dbd4  38 80 84 15                                      strne r8, [r4, #0x38]
0069dbd8  34 70 84 15                                      strne r7, [r4, #0x34]
0069dbdc  34 80 84 05                                      streq r8, [r4, #0x34]
0069dbe0  07 10 a0 e1                                      mov r1, r7
0069dbe4  07 00 a0 e1                                      mov r0, r7
0069dbe8  5f c4 f1 eb                                      bl #0x30ed6c
0069dbec  38 50 94 e5                                      ldr r5, [r4, #0x38]
0069dbf0  3c 00 84 e5                                      str r0, [r4, #0x3c]
0069dbf4  00 60 a0 e3                                      mov r6, #0
0069dbf8  05 10 a0 e1                                      mov r1, r5
0069dbfc  05 00 a0 e1                                      mov r0, r5
0069dc00  59 c4 f1 eb                                      bl #0x30ed6c
0069dc04  34 10 94 e5                                      ldr r1, [r4, #0x34]
0069dc08  40 00 84 e5                                      str r0, [r4, #0x40]
0069dc0c  05 00 a0 e1                                      mov r0, r5
0069dc10  dd c0 f1 eb                                      bl #0x30df8c
0069dc14  00 00 50 e3                                      cmp r0, #0
0069dc18  01 60 a0 13                                      movne r6, #1
0069dc1c  38 10 94 e5                                      ldr r1, [r4, #0x38]
0069dc20  54 60 c4 e5                                      strb r6, [r4, #0x54]
0069dc24  34 00 94 e5                                      ldr r0, [r4, #0x34]
0069dc28  df c1 f1 eb                                      bl #0x30e3ac
0069dc2c  10 60 94 e5                                      ldr r6, [r4, #0x10]
0069dc30  44 00 84 e5                                      str r0, [r4, #0x44]
0069dc34  14 50 94 e5                                      ldr r5, [r4, #0x14]
0069dc38  06 10 a0 e1                                      mov r1, r6
0069dc3c  06 00 a0 e1                                      mov r0, r6
0069dc40  49 c4 f1 eb                                      bl #0x30ed6c
0069dc44  05 10 a0 e1                                      mov r1, r5
0069dc48  00 70 a0 e1                                      mov r7, r0
0069dc4c  05 00 a0 e1                                      mov r0, r5
0069dc50  45 c4 f1 eb                                      bl #0x30ed6c
0069dc54  00 10 a0 e1                                      mov r1, r0
0069dc58  07 00 a0 e1                                      mov r0, r7
0069dc5c  d0 c3 f1 eb                                      bl #0x30eba4
0069dc60  18 70 94 e5                                      ldr r7, [r4, #0x18]
0069dc64  00 80 a0 e1                                      mov r8, r0
0069dc68  07 10 a0 e1                                      mov r1, r7
0069dc6c  07 00 a0 e1                                      mov r0, r7
0069dc70  3d c4 f1 eb                                      bl #0x30ed6c
0069dc74  00 10 a0 e1                                      mov r1, r0
0069dc78  08 00 a0 e1                                      mov r0, r8
0069dc7c  c8 c3 f1 eb                                      bl #0x30eba4
0069dc80  00 80 a0 e1                                      mov r8, r0
0069dc84  26 c1 f1 eb                                      bl #0x30e124
0069dc88  00 10 a0 e3                                      mov r1, #0
0069dc8c  04 00 8d e5                                      str r0, [sp, #4]
0069dc90  08 00 a0 e1                                      mov r0, r8
0069dc94  bc c0 f1 eb                                      bl #0x30df8c
0069dc98  00 00 50 e3                                      cmp r0, #0
0069dc9c  00 00 a0 13                                      movne r0, #0
0069dca0  02 00 00 1a                                      bne #0x69dcb0
0069dca4  08 10 a0 e1                                      mov r1, r8
0069dca8  fe 05 a0 e3                                      mov r0, #0x3f800000
0069dcac  f8 c3 f1 eb                                      bl #0x30ec94
0069dcb0  48 00 84 e5                                      str r0, [r4, #0x48]
0069dcb4  1a c1 f1 eb                                      bl #0x30e124
0069dcb8  06 10 a0 e1                                      mov r1, r6
0069dcbc  00 80 a0 e1                                      mov r8, r0
0069dcc0  29 c4 f1 eb                                      bl #0x30ed6c
0069dcc4  05 10 a0 e1                                      mov r1, r5
0069dcc8  00 60 a0 e1                                      mov r6, r0
0069dccc  08 00 a0 e1                                      mov r0, r8
0069dcd0  25 c4 f1 eb                                      bl #0x30ed6c
0069dcd4  07 10 a0 e1                                      mov r1, r7
0069dcd8  00 50 a0 e1                                      mov r5, r0
0069dcdc  08 00 a0 e1                                      mov r0, r8
0069dce0  21 c4 f1 eb                                      bl #0x30ed6c
0069dce4  00 10 a0 e3                                      mov r1, #0
0069dce8  00 70 a0 e1                                      mov r7, r0
0069dcec  1e c4 f1 eb                                      bl #0x30ed6c
0069dcf0  00 10 a0 e3                                      mov r1, #0
0069dcf4  00 90 a0 e1                                      mov sb, r0
0069dcf8  05 00 a0 e1                                      mov r0, r5
0069dcfc  1a c4 f1 eb                                      bl #0x30ed6c
0069dd00  00 10 a0 e1                                      mov r1, r0
0069dd04  06 00 a0 e1                                      mov r0, r6
0069dd08  a5 c3 f1 eb                                      bl #0x30eba4
0069dd0c  09 10 a0 e1                                      mov r1, sb
0069dd10  a3 c3 f1 eb                                      bl #0x30eba4
0069dd14  77 1e 0b e3                                      movw r1, #0xbe77
0069dd18  7f 1f 43 e3                                      movt r1, #0x3f7f
0069dd1c  02 01 c0 e3                                      bic r0, r0, #0x80000000
0069dd20  74 c1 f1 eb                                      bl #0x30e2f8
0069dd24  00 00 50 e3                                      cmp r0, #0
0069dd28  00 a0 a0 13                                      movne sl, #0
0069dd2c  fe a5 a0 03                                      moveq sl, #0x3f800000
0069dd30  06 10 a0 e1                                      mov r1, r6
0069dd34  0a 00 a0 e1                                      mov r0, sl
0069dd38  fe 85 a0 13                                      movne r8, #0x3f800000
0069dd3c  00 80 a0 03                                      moveq r8, #0
0069dd40  09 c4 f1 eb                                      bl #0x30ed6c
0069dd44  05 10 a0 e1                                      mov r1, r5
0069dd48  00 b0 a0 e1                                      mov fp, r0
0069dd4c  08 00 a0 e1                                      mov r0, r8
0069dd50  05 c4 f1 eb                                      bl #0x30ed6c
0069dd54  00 10 a0 e1                                      mov r1, r0
0069dd58  0b 00 a0 e1                                      mov r0, fp
0069dd5c  90 c3 f1 eb                                      bl #0x30eba4
0069dd60  00 10 a0 e1                                      mov r1, r0
0069dd64  09 00 a0 e1                                      mov r0, sb
0069dd68  8d c3 f1 eb                                      bl #0x30eba4
0069dd6c  00 90 a0 e1                                      mov sb, r0
0069dd70  09 10 a0 e1                                      mov r1, sb
0069dd74  06 00 a0 e1                                      mov r0, r6
0069dd78  fb c3 f1 eb                                      bl #0x30ed6c
0069dd7c  00 10 a0 e1                                      mov r1, r0
0069dd80  0a 00 a0 e1                                      mov r0, sl
0069dd84  88 c1 f1 eb                                      bl #0x30e3ac
0069dd88  09 10 a0 e1                                      mov r1, sb
0069dd8c  1c 00 84 e5                                      str r0, [r4, #0x1c]
0069dd90  05 00 a0 e1                                      mov r0, r5
0069dd94  f4 c3 f1 eb                                      bl #0x30ed6c
0069dd98  00 10 a0 e1                                      mov r1, r0
0069dd9c  08 00 a0 e1                                      mov r0, r8
0069dda0  81 c1 f1 eb                                      bl #0x30e3ac
0069dda4  09 10 a0 e1                                      mov r1, sb
0069dda8  20 00 84 e5                                      str r0, [r4, #0x20]
0069ddac  07 00 a0 e1                                      mov r0, r7
0069ddb0  ed c3 f1 eb                                      bl #0x30ed6c
0069ddb4  00 10 a0 e1                                      mov r1, r0
0069ddb8  00 00 a0 e3                                      mov r0, #0
0069ddbc  7a c1 f1 eb                                      bl #0x30e3ac
0069ddc0  24 00 84 e5                                      str r0, [r4, #0x24]
0069ddc4  1c 00 84 e2                                      add r0, r4, #0x1c
0069ddc8  c4 02 f3 eb                                      bl #0x35e8e0
0069ddcc  24 90 94 e5                                      ldr sb, [r4, #0x24]
0069ddd0  02 01 85 e2                                      add r0, r5, #0x80000000
0069ddd4  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0069ddd8  09 10 a0 e1                                      mov r1, sb
0069dddc  e2 c3 f1 eb                                      bl #0x30ed6c
0069dde0  0a 10 a0 e1                                      mov r1, sl
0069dde4  00 80 a0 e1                                      mov r8, r0
0069dde8  07 00 a0 e1                                      mov r0, r7
0069ddec  de c3 f1 eb                                      bl #0x30ed6c
0069ddf0  00 10 a0 e1                                      mov r1, r0
0069ddf4  08 00 a0 e1                                      mov r0, r8
0069ddf8  69 c3 f1 eb                                      bl #0x30eba4
0069ddfc  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
0069de00  02 71 87 e2                                      add r7, r7, #0x80000000
0069de04  28 00 84 e5                                      str r0, [r4, #0x28]
0069de08  08 10 a0 e1                                      mov r1, r8
0069de0c  07 00 a0 e1                                      mov r0, r7
0069de10  d5 c3 f1 eb                                      bl #0x30ed6c
0069de14  09 10 a0 e1                                      mov r1, sb
0069de18  00 70 a0 e1                                      mov r7, r0
0069de1c  06 00 a0 e1                                      mov r0, r6
0069de20  d1 c3 f1 eb                                      bl #0x30ed6c
0069de24  00 10 a0 e1                                      mov r1, r0
0069de28  07 00 a0 e1                                      mov r0, r7
0069de2c  5c c3 f1 eb                                      bl #0x30eba4
0069de30  02 11 86 e2                                      add r1, r6, #0x80000000
0069de34  2c 00 84 e5                                      str r0, [r4, #0x2c]
0069de38  0a 00 a0 e1                                      mov r0, sl
0069de3c  ca c3 f1 eb                                      bl #0x30ed6c
0069de40  08 10 a0 e1                                      mov r1, r8
0069de44  00 60 a0 e1                                      mov r6, r0
0069de48  05 00 a0 e1                                      mov r0, r5
0069de4c  c6 c3 f1 eb                                      bl #0x30ed6c
0069de50  00 10 a0 e1                                      mov r1, r0
0069de54  06 00 a0 e1                                      mov r0, r6
0069de58  51 c3 f1 eb                                      bl #0x30eba4
0069de5c  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
0069de60  30 00 84 e5                                      str r0, [r4, #0x30]
0069de64  40 50 94 e5                                      ldr r5, [r4, #0x40]
0069de68  00 00 53 e3                                      cmp r3, #0
0069de6c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0069de70  1b 00 00 1a                                      bne #0x69dee4
0069de74  8a c2 f1 eb                                      bl #0x30e8a4
0069de78  18 2d 02 e3                                      movw r2, #0x2d18
0069de7c  fb 31 02 e3                                      movw r3, #0x21fb
0069de80  44 24 45 e3                                      movt r2, #0x5444
0069de84  09 30 44 e3                                      movt r3, #0x4009
0069de88  09 c3 f1 eb                                      bl #0x30eab4
0069de8c  00 60 a0 e1                                      mov r6, r0
0069de90  05 00 a0 e1                                      mov r0, r5
0069de94  01 70 a0 e1                                      mov r7, r1
0069de98  81 c2 f1 eb                                      bl #0x30e8a4
0069de9c  18 2d 02 e3                                      movw r2, #0x2d18
0069dea0  fb 31 02 e3                                      movw r3, #0x21fb
0069dea4  44 24 45 e3                                      movt r2, #0x5444
0069dea8  09 30 4c e3                                      movt r3, #0xc009
0069deac  00 c3 f1 eb                                      bl #0x30eab4
0069deb0  00 20 a0 e1                                      mov r2, r0
0069deb4  01 30 a0 e1                                      mov r3, r1
0069deb8  06 00 a0 e1                                      mov r0, r6
0069debc  07 10 a0 e1                                      mov r1, r7
0069dec0  1f c3 f1 eb                                      bl #0x30eb44
0069dec4  f5 c1 f1 eb                                      bl #0x30e6a0
0069dec8  00 10 a0 e1                                      mov r1, r0
0069decc  04 00 9d e5                                      ldr r0, [sp, #4]
0069ded0  a5 c3 f1 eb                                      bl #0x30ed6c
0069ded4  4c 00 84 e5                                      str r0, [r4, #0x4c]
0069ded8  04 00 a0 e1                                      mov r0, r4
0069dedc  0c d0 8d e2                                      add sp, sp, #0xc
0069dee0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0069dee4  04 00 9d e5                                      ldr r0, [sp, #4]
0069dee8  00 10 a0 e1                                      mov r1, r0
0069deec  2c c3 f1 eb                                      bl #0x30eba4
0069def0  6b c2 f1 eb                                      bl #0x30e8a4
0069def4  18 2d 02 e3                                      movw r2, #0x2d18
0069def8  fb 31 02 e3                                      movw r3, #0x21fb
0069defc  44 24 45 e3                                      movt r2, #0x5444
0069df00  09 30 44 e3                                      movt r3, #0x4009
0069df04  ea c2 f1 eb                                      bl #0x30eab4
0069df08  00 60 a0 e1                                      mov r6, r0
0069df0c  34 00 94 e5                                      ldr r0, [r4, #0x34]
0069df10  01 70 a0 e1                                      mov r7, r1
0069df14  62 c2 f1 eb                                      bl #0x30e8a4
0069df18  00 20 a0 e1                                      mov r2, r0
0069df1c  01 30 a0 e1                                      mov r3, r1
0069df20  06 00 a0 e1                                      mov r0, r6
0069df24  07 10 a0 e1                                      mov r1, r7
0069df28  e1 c2 f1 eb                                      bl #0x30eab4
0069df2c  db c1 f1 eb                                      bl #0x30e6a0
0069df30  4c 00 84 e5                                      str r0, [r4, #0x4c]
0069df34  e7 ff ff ea                                      b #0x69ded8
; mapping-symbol data/literal pool
0069df38  7c 6f 2f 00 bc 2e 00 00                          .byte 0x7c, 0x6f, 0x2f, 0x00, 0xbc, 0x2e, 0x00, 0x00

; FUNCTION 0x0069e1bc, declared_size=404, range_size=404, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZNK6glitch2ps10PDCylinder8generateERNS0_8PSRandomE
; demangled: glitch::ps::PDCylinder::generate(glitch::ps::PSRandom&) const
; decoder-mode: arm
0069e1bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0069e1c0  00 50 a0 e1                                      mov r5, r0
0069e1c4  02 00 a0 e1                                      mov r0, r2
0069e1c8  02 60 a0 e1                                      mov r6, r2
0069e1cc  01 40 a0 e1                                      mov r4, r1
0069e1d0  28 47 fe eb                                      bl #0x62fe78
0069e1d4  31 c1 f1 eb                                      bl #0x30e6a0
0069e1d8  00 80 a0 e1                                      mov r8, r0
0069e1dc  06 00 a0 e1                                      mov r0, r6
0069e1e0  24 47 fe eb                                      bl #0x62fe78
0069e1e4  2d c1 f1 eb                                      bl #0x30e6a0
0069e1e8  00 10 a0 e1                                      mov r1, r0
0069e1ec  6c c2 f1 eb                                      bl #0x30eba4
0069e1f0  db 1f 00 e3                                      movw r1, #0xfdb
0069e1f4  49 10 44 e3                                      movt r1, #0x4049
0069e1f8  db c2 f1 eb                                      bl #0x30ed6c
0069e1fc  00 a0 a0 e1                                      mov sl, r0
0069e200  06 00 a0 e1                                      mov r0, r6
0069e204  38 60 94 e5                                      ldr r6, [r4, #0x38]
0069e208  1a 47 fe eb                                      bl #0x62fe78
0069e20c  23 c1 f1 eb                                      bl #0x30e6a0
0069e210  44 10 94 e5                                      ldr r1, [r4, #0x44]
0069e214  d4 c2 f1 eb                                      bl #0x30ed6c
0069e218  00 10 a0 e1                                      mov r1, r0
0069e21c  06 00 a0 e1                                      mov r0, r6
0069e220  5f c2 f1 eb                                      bl #0x30eba4
0069e224  00 60 a0 e1                                      mov r6, r0
0069e228  0a 00 a0 e1                                      mov r0, sl
0069e22c  48 c1 f1 eb                                      bl #0x30e754
0069e230  06 10 a0 e1                                      mov r1, r6
0069e234  cc c2 f1 eb                                      bl #0x30ed6c
0069e238  00 70 a0 e1                                      mov r7, r0
0069e23c  0a 00 a0 e1                                      mov r0, sl
0069e240  30 c2 f1 eb                                      bl #0x30eb08
0069e244  06 10 a0 e1                                      mov r1, r6
0069e248  c7 c2 f1 eb                                      bl #0x30ed6c
0069e24c  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069e250  00 60 a0 e1                                      mov r6, r0
0069e254  08 00 a0 e1                                      mov r0, r8
0069e258  c3 c2 f1 eb                                      bl #0x30ed6c
0069e25c  08 10 94 e5                                      ldr r1, [r4, #8]
0069e260  4f c2 f1 eb                                      bl #0x30eba4
0069e264  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069e268  00 a0 a0 e1                                      mov sl, r0
0069e26c  07 00 a0 e1                                      mov r0, r7
0069e270  bd c2 f1 eb                                      bl #0x30ed6c
0069e274  00 10 a0 e1                                      mov r1, r0
0069e278  0a 00 a0 e1                                      mov r0, sl
0069e27c  48 c2 f1 eb                                      bl #0x30eba4
0069e280  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0069e284  00 a0 a0 e1                                      mov sl, r0
0069e288  06 00 a0 e1                                      mov r0, r6
0069e28c  b6 c2 f1 eb                                      bl #0x30ed6c
0069e290  00 10 a0 e1                                      mov r1, r0
0069e294  0a 00 a0 e1                                      mov r0, sl
0069e298  41 c2 f1 eb                                      bl #0x30eba4
0069e29c  18 10 94 e5                                      ldr r1, [r4, #0x18]
0069e2a0  00 90 a0 e1                                      mov sb, r0
0069e2a4  08 00 a0 e1                                      mov r0, r8
0069e2a8  af c2 f1 eb                                      bl #0x30ed6c
0069e2ac  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0069e2b0  3b c2 f1 eb                                      bl #0x30eba4
0069e2b4  24 10 94 e5                                      ldr r1, [r4, #0x24]
0069e2b8  00 a0 a0 e1                                      mov sl, r0
0069e2bc  07 00 a0 e1                                      mov r0, r7
0069e2c0  a9 c2 f1 eb                                      bl #0x30ed6c
0069e2c4  00 10 a0 e1                                      mov r1, r0
0069e2c8  0a 00 a0 e1                                      mov r0, sl
0069e2cc  34 c2 f1 eb                                      bl #0x30eba4
0069e2d0  30 10 94 e5                                      ldr r1, [r4, #0x30]
0069e2d4  00 a0 a0 e1                                      mov sl, r0
0069e2d8  06 00 a0 e1                                      mov r0, r6
0069e2dc  a2 c2 f1 eb                                      bl #0x30ed6c
0069e2e0  00 10 a0 e1                                      mov r1, r0
0069e2e4  0a 00 a0 e1                                      mov r0, sl
0069e2e8  2d c2 f1 eb                                      bl #0x30eba4
0069e2ec  10 10 94 e5                                      ldr r1, [r4, #0x10]
0069e2f0  00 a0 a0 e1                                      mov sl, r0
0069e2f4  08 00 a0 e1                                      mov r0, r8
0069e2f8  9b c2 f1 eb                                      bl #0x30ed6c
0069e2fc  04 10 94 e5                                      ldr r1, [r4, #4]
0069e300  27 c2 f1 eb                                      bl #0x30eba4
0069e304  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0069e308  00 80 a0 e1                                      mov r8, r0
0069e30c  07 00 a0 e1                                      mov r0, r7
0069e310  95 c2 f1 eb                                      bl #0x30ed6c
0069e314  00 10 a0 e1                                      mov r1, r0
0069e318  08 00 a0 e1                                      mov r0, r8
0069e31c  20 c2 f1 eb                                      bl #0x30eba4
0069e320  28 10 94 e5                                      ldr r1, [r4, #0x28]
0069e324  00 70 a0 e1                                      mov r7, r0
0069e328  06 00 a0 e1                                      mov r0, r6
0069e32c  8e c2 f1 eb                                      bl #0x30ed6c
0069e330  00 10 a0 e1                                      mov r1, r0
0069e334  07 00 a0 e1                                      mov r0, r7
0069e338  19 c2 f1 eb                                      bl #0x30eba4
0069e33c  00 00 85 e5                                      str r0, [r5]
0069e340  04 90 85 e5                                      str sb, [r5, #4]
0069e344  08 a0 85 e5                                      str sl, [r5, #8]
0069e348  05 00 a0 e1                                      mov r0, r5
0069e34c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0069e69c, declared_size=1524, range_size=1524, mode=arm
; class-group: glitch::ps::PDCylinder
; alias: _ZN6glitch2ps10PDCylinder9transformERKNS_4core8CMatrix4IfEE
; demangled: glitch::ps::PDCylinder::transform(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0069e69c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069e6a0  00 40 a0 e1                                      mov r4, r0
0069e6a4  14 d0 4d e2                                      sub sp, sp, #0x14
0069e6a8  50 00 90 e5                                      ldr r0, [r0, #0x50]
0069e6ac  01 50 a0 e1                                      mov r5, r1
0069e6b0  bf 14 a0 e3                                      mov r1, #0xbf000000
0069e6b4  ac c1 f1 eb                                      bl #0x30ed6c
0069e6b8  50 70 94 e5                                      ldr r7, [r4, #0x50]
0069e6bc  00 60 a0 e3                                      mov r6, #0
0069e6c0  08 00 84 e5                                      str r0, [r4, #8]
0069e6c4  07 10 a0 e1                                      mov r1, r7
0069e6c8  04 60 84 e5                                      str r6, [r4, #4]
0069e6cc  0c 60 84 e5                                      str r6, [r4, #0xc]
0069e6d0  10 60 84 e5                                      str r6, [r4, #0x10]
0069e6d4  14 70 84 e5                                      str r7, [r4, #0x14]
0069e6d8  18 60 84 e5                                      str r6, [r4, #0x18]
0069e6dc  07 00 a0 e1                                      mov r0, r7
0069e6e0  a1 c1 f1 eb                                      bl #0x30ed6c
0069e6e4  06 10 a0 e1                                      mov r1, r6
0069e6e8  2d c1 f1 eb                                      bl #0x30eba4
0069e6ec  06 10 a0 e1                                      mov r1, r6
0069e6f0  2b c1 f1 eb                                      bl #0x30eba4
0069e6f4  06 10 a0 e1                                      mov r1, r6
0069e6f8  00 80 a0 e1                                      mov r8, r0
0069e6fc  22 be f1 eb                                      bl #0x30df8c
0069e700  00 00 50 e3                                      cmp r0, #0
0069e704  06 00 a0 11                                      movne r0, r6
0069e708  02 00 00 1a                                      bne #0x69e718
0069e70c  08 10 a0 e1                                      mov r1, r8
0069e710  fe 05 a0 e3                                      mov r0, #0x3f800000
0069e714  5e c1 f1 eb                                      bl #0x30ec94
0069e718  48 00 84 e5                                      str r0, [r4, #0x48]
0069e71c  80 be f1 eb                                      bl #0x30e124
0069e720  00 10 a0 e3                                      mov r1, #0
0069e724  00 60 a0 e1                                      mov r6, r0
0069e728  8f c1 f1 eb                                      bl #0x30ed6c
0069e72c  06 10 a0 e1                                      mov r1, r6
0069e730  00 90 a0 e1                                      mov sb, r0
0069e734  07 00 a0 e1                                      mov r0, r7
0069e738  8b c1 f1 eb                                      bl #0x30ed6c
0069e73c  00 10 a0 e3                                      mov r1, #0
0069e740  00 a0 a0 e1                                      mov sl, r0
0069e744  09 00 a0 e1                                      mov r0, sb
0069e748  87 c1 f1 eb                                      bl #0x30ed6c
0069e74c  00 10 a0 e3                                      mov r1, #0
0069e750  00 60 a0 e1                                      mov r6, r0
0069e754  0a 00 a0 e1                                      mov r0, sl
0069e758  83 c1 f1 eb                                      bl #0x30ed6c
0069e75c  00 10 a0 e1                                      mov r1, r0
0069e760  09 00 a0 e1                                      mov r0, sb
0069e764  0e c1 f1 eb                                      bl #0x30eba4
0069e768  06 10 a0 e1                                      mov r1, r6
0069e76c  0c c1 f1 eb                                      bl #0x30eba4
0069e770  77 1e 0b e3                                      movw r1, #0xbe77
0069e774  7f 1f 43 e3                                      movt r1, #0x3f7f
0069e778  02 01 c0 e3                                      bic r0, r0, #0x80000000
0069e77c  dd be f1 eb                                      bl #0x30e2f8
0069e780  00 00 50 e3                                      cmp r0, #0
0069e784  00 b0 a0 13                                      movne fp, #0
0069e788  fe b5 a0 03                                      moveq fp, #0x3f800000
0069e78c  09 10 a0 e1                                      mov r1, sb
0069e790  0b 00 a0 e1                                      mov r0, fp
0069e794  fe 75 a0 13                                      movne r7, #0x3f800000
0069e798  00 70 a0 03                                      moveq r7, #0
0069e79c  72 c1 f1 eb                                      bl #0x30ed6c
0069e7a0  0a 10 a0 e1                                      mov r1, sl
0069e7a4  00 80 a0 e1                                      mov r8, r0
0069e7a8  07 00 a0 e1                                      mov r0, r7
0069e7ac  6e c1 f1 eb                                      bl #0x30ed6c
0069e7b0  00 10 a0 e1                                      mov r1, r0
0069e7b4  08 00 a0 e1                                      mov r0, r8
0069e7b8  f9 c0 f1 eb                                      bl #0x30eba4
0069e7bc  00 10 a0 e1                                      mov r1, r0
0069e7c0  06 00 a0 e1                                      mov r0, r6
0069e7c4  f6 c0 f1 eb                                      bl #0x30eba4
0069e7c8  00 80 a0 e1                                      mov r8, r0
0069e7cc  08 10 a0 e1                                      mov r1, r8
0069e7d0  09 00 a0 e1                                      mov r0, sb
0069e7d4  64 c1 f1 eb                                      bl #0x30ed6c
0069e7d8  00 60 a0 e1                                      mov r6, r0
0069e7dc  06 10 a0 e1                                      mov r1, r6
0069e7e0  0b 00 a0 e1                                      mov r0, fp
0069e7e4  f0 be f1 eb                                      bl #0x30e3ac
0069e7e8  08 10 a0 e1                                      mov r1, r8
0069e7ec  1c 00 84 e5                                      str r0, [r4, #0x1c]
0069e7f0  0a 00 a0 e1                                      mov r0, sl
0069e7f4  5c c1 f1 eb                                      bl #0x30ed6c
0069e7f8  00 10 a0 e1                                      mov r1, r0
0069e7fc  07 00 a0 e1                                      mov r0, r7
0069e800  e9 be f1 eb                                      bl #0x30e3ac
0069e804  06 10 a0 e1                                      mov r1, r6
0069e808  20 00 84 e5                                      str r0, [r4, #0x20]
0069e80c  00 00 a0 e3                                      mov r0, #0
0069e810  e5 be f1 eb                                      bl #0x30e3ac
0069e814  24 00 84 e5                                      str r0, [r4, #0x24]
0069e818  1c 00 84 e2                                      add r0, r4, #0x1c
0069e81c  2f 00 f3 eb                                      bl #0x35e8e0
0069e820  24 60 94 e5                                      ldr r6, [r4, #0x24]
0069e824  02 01 8a e2                                      add r0, sl, #0x80000000
0069e828  20 70 94 e5                                      ldr r7, [r4, #0x20]
0069e82c  06 10 a0 e1                                      mov r1, r6
0069e830  4d c1 f1 eb                                      bl #0x30ed6c
0069e834  07 10 a0 e1                                      mov r1, r7
0069e838  00 80 a0 e1                                      mov r8, r0
0069e83c  09 00 a0 e1                                      mov r0, sb
0069e840  49 c1 f1 eb                                      bl #0x30ed6c
0069e844  00 10 a0 e1                                      mov r1, r0
0069e848  08 00 a0 e1                                      mov r0, r8
0069e84c  d4 c0 f1 eb                                      bl #0x30eba4
0069e850  0c 00 8d e5                                      str r0, [sp, #0xc]
0069e854  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
0069e858  02 31 89 e2                                      add r3, sb, #0x80000000
0069e85c  03 00 a0 e1                                      mov r0, r3
0069e860  08 10 a0 e1                                      mov r1, r8
0069e864  03 b0 a0 e1                                      mov fp, r3
0069e868  3f c1 f1 eb                                      bl #0x30ed6c
0069e86c  06 10 a0 e1                                      mov r1, r6
0069e870  00 30 a0 e1                                      mov r3, r0
0069e874  09 00 a0 e1                                      mov r0, sb
0069e878  04 30 8d e5                                      str r3, [sp, #4]
0069e87c  3a c1 f1 eb                                      bl #0x30ed6c
0069e880  04 30 9d e5                                      ldr r3, [sp, #4]
0069e884  00 10 a0 e1                                      mov r1, r0
0069e888  03 00 a0 e1                                      mov r0, r3
0069e88c  c4 c0 f1 eb                                      bl #0x30eba4
0069e890  0b 10 a0 e1                                      mov r1, fp
0069e894  00 90 a0 e1                                      mov sb, r0
0069e898  07 00 a0 e1                                      mov r0, r7
0069e89c  32 c1 f1 eb                                      bl #0x30ed6c
0069e8a0  08 10 a0 e1                                      mov r1, r8
0069e8a4  00 b0 a0 e1                                      mov fp, r0
0069e8a8  0a 00 a0 e1                                      mov r0, sl
0069e8ac  2e c1 f1 eb                                      bl #0x30ed6c
0069e8b0  00 10 a0 e1                                      mov r1, r0
0069e8b4  0b 00 a0 e1                                      mov r0, fp
0069e8b8  b9 c0 f1 eb                                      bl #0x30eba4
0069e8bc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0069e8c0  04 b0 94 e5                                      ldr fp, [r4, #4]
0069e8c4  30 00 84 e5                                      str r0, [r4, #0x30]
0069e8c8  28 30 84 e5                                      str r3, [r4, #0x28]
0069e8cc  08 30 94 e5                                      ldr r3, [r4, #8]
0069e8d0  2c 90 84 e5                                      str sb, [r4, #0x2c]
0069e8d4  00 a0 a0 e1                                      mov sl, r0
0069e8d8  08 30 8d e5                                      str r3, [sp, #8]
0069e8dc  00 10 95 e5                                      ldr r1, [r5]
0069e8e0  0b 00 a0 e1                                      mov r0, fp
0069e8e4  20 c1 f1 eb                                      bl #0x30ed6c
0069e8e8  10 10 95 e5                                      ldr r1, [r5, #0x10]
0069e8ec  00 30 a0 e1                                      mov r3, r0
0069e8f0  08 00 9d e5                                      ldr r0, [sp, #8]
0069e8f4  04 30 8d e5                                      str r3, [sp, #4]
0069e8f8  1b c1 f1 eb                                      bl #0x30ed6c
0069e8fc  04 30 9d e5                                      ldr r3, [sp, #4]
0069e900  00 10 a0 e1                                      mov r1, r0
0069e904  03 00 a0 e1                                      mov r0, r3
0069e908  a5 c0 f1 eb                                      bl #0x30eba4
0069e90c  20 10 95 e5                                      ldr r1, [r5, #0x20]
0069e910  00 30 a0 e1                                      mov r3, r0
0069e914  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0069e918  04 30 8d e5                                      str r3, [sp, #4]
0069e91c  12 c1 f1 eb                                      bl #0x30ed6c
0069e920  04 30 9d e5                                      ldr r3, [sp, #4]
0069e924  00 10 a0 e1                                      mov r1, r0
0069e928  03 00 a0 e1                                      mov r0, r3
0069e92c  9c c0 f1 eb                                      bl #0x30eba4
0069e930  04 00 84 e5                                      str r0, [r4, #4]
0069e934  04 10 95 e5                                      ldr r1, [r5, #4]
0069e938  0b 00 a0 e1                                      mov r0, fp
0069e93c  0a c1 f1 eb                                      bl #0x30ed6c
0069e940  14 10 95 e5                                      ldr r1, [r5, #0x14]
0069e944  00 30 a0 e1                                      mov r3, r0
0069e948  08 00 9d e5                                      ldr r0, [sp, #8]
0069e94c  04 30 8d e5                                      str r3, [sp, #4]
0069e950  05 c1 f1 eb                                      bl #0x30ed6c
0069e954  04 30 9d e5                                      ldr r3, [sp, #4]
0069e958  00 10 a0 e1                                      mov r1, r0
0069e95c  03 00 a0 e1                                      mov r0, r3
0069e960  8f c0 f1 eb                                      bl #0x30eba4
0069e964  24 10 95 e5                                      ldr r1, [r5, #0x24]
0069e968  00 30 a0 e1                                      mov r3, r0
0069e96c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0069e970  04 30 8d e5                                      str r3, [sp, #4]
0069e974  fc c0 f1 eb                                      bl #0x30ed6c
0069e978  04 30 9d e5                                      ldr r3, [sp, #4]
0069e97c  00 10 a0 e1                                      mov r1, r0
0069e980  03 00 a0 e1                                      mov r0, r3
0069e984  86 c0 f1 eb                                      bl #0x30eba4
0069e988  08 00 84 e5                                      str r0, [r4, #8]
0069e98c  08 10 95 e5                                      ldr r1, [r5, #8]
0069e990  0b 00 a0 e1                                      mov r0, fp
0069e994  f4 c0 f1 eb                                      bl #0x30ed6c
0069e998  18 10 95 e5                                      ldr r1, [r5, #0x18]
0069e99c  00 b0 a0 e1                                      mov fp, r0
0069e9a0  08 00 9d e5                                      ldr r0, [sp, #8]
0069e9a4  f0 c0 f1 eb                                      bl #0x30ed6c
0069e9a8  00 10 a0 e1                                      mov r1, r0
0069e9ac  0b 00 a0 e1                                      mov r0, fp
0069e9b0  7b c0 f1 eb                                      bl #0x30eba4
0069e9b4  28 10 95 e5                                      ldr r1, [r5, #0x28]
0069e9b8  00 b0 a0 e1                                      mov fp, r0
0069e9bc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0069e9c0  e9 c0 f1 eb                                      bl #0x30ed6c
0069e9c4  00 10 a0 e1                                      mov r1, r0
0069e9c8  0b 00 a0 e1                                      mov r0, fp
0069e9cc  74 c0 f1 eb                                      bl #0x30eba4
0069e9d0  10 b0 94 e5                                      ldr fp, [r4, #0x10]
0069e9d4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0069e9d8  0c 00 84 e5                                      str r0, [r4, #0xc]
0069e9dc  00 10 95 e5                                      ldr r1, [r5]
0069e9e0  0b 00 a0 e1                                      mov r0, fp
0069e9e4  08 30 8d e5                                      str r3, [sp, #8]
0069e9e8  df c0 f1 eb                                      bl #0x30ed6c
0069e9ec  10 10 95 e5                                      ldr r1, [r5, #0x10]
0069e9f0  00 30 a0 e1                                      mov r3, r0
0069e9f4  08 00 9d e5                                      ldr r0, [sp, #8]
0069e9f8  04 30 8d e5                                      str r3, [sp, #4]
0069e9fc  da c0 f1 eb                                      bl #0x30ed6c
0069ea00  04 30 9d e5                                      ldr r3, [sp, #4]
0069ea04  00 10 a0 e1                                      mov r1, r0
0069ea08  03 00 a0 e1                                      mov r0, r3
0069ea0c  64 c0 f1 eb                                      bl #0x30eba4
0069ea10  20 10 95 e5                                      ldr r1, [r5, #0x20]
0069ea14  00 30 a0 e1                                      mov r3, r0
0069ea18  18 00 94 e5                                      ldr r0, [r4, #0x18]
0069ea1c  04 30 8d e5                                      str r3, [sp, #4]
0069ea20  d1 c0 f1 eb                                      bl #0x30ed6c
0069ea24  04 30 9d e5                                      ldr r3, [sp, #4]
0069ea28  00 10 a0 e1                                      mov r1, r0
0069ea2c  03 00 a0 e1                                      mov r0, r3
0069ea30  5b c0 f1 eb                                      bl #0x30eba4
0069ea34  10 00 84 e5                                      str r0, [r4, #0x10]
0069ea38  04 10 95 e5                                      ldr r1, [r5, #4]
0069ea3c  0b 00 a0 e1                                      mov r0, fp
0069ea40  c9 c0 f1 eb                                      bl #0x30ed6c
0069ea44  14 10 95 e5                                      ldr r1, [r5, #0x14]
0069ea48  00 30 a0 e1                                      mov r3, r0
0069ea4c  08 00 9d e5                                      ldr r0, [sp, #8]
0069ea50  04 30 8d e5                                      str r3, [sp, #4]
0069ea54  c4 c0 f1 eb                                      bl #0x30ed6c
0069ea58  04 30 9d e5                                      ldr r3, [sp, #4]
0069ea5c  00 10 a0 e1                                      mov r1, r0
0069ea60  03 00 a0 e1                                      mov r0, r3
0069ea64  4e c0 f1 eb                                      bl #0x30eba4
0069ea68  24 10 95 e5                                      ldr r1, [r5, #0x24]
0069ea6c  00 30 a0 e1                                      mov r3, r0
0069ea70  18 00 94 e5                                      ldr r0, [r4, #0x18]
0069ea74  04 30 8d e5                                      str r3, [sp, #4]
0069ea78  bb c0 f1 eb                                      bl #0x30ed6c
0069ea7c  04 30 9d e5                                      ldr r3, [sp, #4]
0069ea80  00 10 a0 e1                                      mov r1, r0
0069ea84  03 00 a0 e1                                      mov r0, r3
0069ea88  45 c0 f1 eb                                      bl #0x30eba4
0069ea8c  14 00 84 e5                                      str r0, [r4, #0x14]
0069ea90  08 10 95 e5                                      ldr r1, [r5, #8]
0069ea94  0b 00 a0 e1                                      mov r0, fp
0069ea98  b3 c0 f1 eb                                      bl #0x30ed6c
0069ea9c  18 10 95 e5                                      ldr r1, [r5, #0x18]
0069eaa0  00 b0 a0 e1                                      mov fp, r0
0069eaa4  08 00 9d e5                                      ldr r0, [sp, #8]
0069eaa8  af c0 f1 eb                                      bl #0x30ed6c
0069eaac  00 10 a0 e1                                      mov r1, r0
0069eab0  0b 00 a0 e1                                      mov r0, fp
0069eab4  3a c0 f1 eb                                      bl #0x30eba4
0069eab8  28 10 95 e5                                      ldr r1, [r5, #0x28]
0069eabc  00 b0 a0 e1                                      mov fp, r0
0069eac0  18 00 94 e5                                      ldr r0, [r4, #0x18]
0069eac4  a8 c0 f1 eb                                      bl #0x30ed6c
0069eac8  00 10 a0 e1                                      mov r1, r0
0069eacc  0b 00 a0 e1                                      mov r0, fp
0069ead0  33 c0 f1 eb                                      bl #0x30eba4
0069ead4  18 00 84 e5                                      str r0, [r4, #0x18]
0069ead8  00 10 95 e5                                      ldr r1, [r5]
0069eadc  08 00 a0 e1                                      mov r0, r8
0069eae0  a1 c0 f1 eb                                      bl #0x30ed6c
0069eae4  10 10 95 e5                                      ldr r1, [r5, #0x10]
0069eae8  00 b0 a0 e1                                      mov fp, r0
0069eaec  07 00 a0 e1                                      mov r0, r7
0069eaf0  9d c0 f1 eb                                      bl #0x30ed6c
0069eaf4  00 10 a0 e1                                      mov r1, r0
0069eaf8  0b 00 a0 e1                                      mov r0, fp
0069eafc  28 c0 f1 eb                                      bl #0x30eba4
0069eb00  20 10 95 e5                                      ldr r1, [r5, #0x20]
0069eb04  00 b0 a0 e1                                      mov fp, r0
0069eb08  06 00 a0 e1                                      mov r0, r6
0069eb0c  96 c0 f1 eb                                      bl #0x30ed6c
0069eb10  00 10 a0 e1                                      mov r1, r0
0069eb14  0b 00 a0 e1                                      mov r0, fp
0069eb18  21 c0 f1 eb                                      bl #0x30eba4
0069eb1c  1c 00 84 e5                                      str r0, [r4, #0x1c]
0069eb20  04 10 95 e5                                      ldr r1, [r5, #4]
0069eb24  08 00 a0 e1                                      mov r0, r8
0069eb28  8f c0 f1 eb                                      bl #0x30ed6c
0069eb2c  14 10 95 e5                                      ldr r1, [r5, #0x14]
0069eb30  00 b0 a0 e1                                      mov fp, r0
0069eb34  07 00 a0 e1                                      mov r0, r7
0069eb38  8b c0 f1 eb                                      bl #0x30ed6c
0069eb3c  00 10 a0 e1                                      mov r1, r0
0069eb40  0b 00 a0 e1                                      mov r0, fp
0069eb44  16 c0 f1 eb                                      bl #0x30eba4
0069eb48  24 10 95 e5                                      ldr r1, [r5, #0x24]
0069eb4c  00 b0 a0 e1                                      mov fp, r0
0069eb50  06 00 a0 e1                                      mov r0, r6
0069eb54  84 c0 f1 eb                                      bl #0x30ed6c
0069eb58  00 10 a0 e1                                      mov r1, r0
0069eb5c  0b 00 a0 e1                                      mov r0, fp
0069eb60  0f c0 f1 eb                                      bl #0x30eba4
0069eb64  20 00 84 e5                                      str r0, [r4, #0x20]
0069eb68  08 10 95 e5                                      ldr r1, [r5, #8]
0069eb6c  08 00 a0 e1                                      mov r0, r8
0069eb70  7d c0 f1 eb                                      bl #0x30ed6c
0069eb74  18 10 95 e5                                      ldr r1, [r5, #0x18]
0069eb78  00 80 a0 e1                                      mov r8, r0
0069eb7c  07 00 a0 e1                                      mov r0, r7
0069eb80  79 c0 f1 eb                                      bl #0x30ed6c
0069eb84  00 10 a0 e1                                      mov r1, r0
0069eb88  08 00 a0 e1                                      mov r0, r8
0069eb8c  04 c0 f1 eb                                      bl #0x30eba4
0069eb90  28 10 95 e5                                      ldr r1, [r5, #0x28]
0069eb94  00 70 a0 e1                                      mov r7, r0
0069eb98  06 00 a0 e1                                      mov r0, r6
0069eb9c  72 c0 f1 eb                                      bl #0x30ed6c
0069eba0  00 10 a0 e1                                      mov r1, r0
0069eba4  07 00 a0 e1                                      mov r0, r7
0069eba8  fd bf f1 eb                                      bl #0x30eba4
0069ebac  24 00 84 e5                                      str r0, [r4, #0x24]
0069ebb0  00 10 95 e5                                      ldr r1, [r5]
0069ebb4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0069ebb8  6b c0 f1 eb                                      bl #0x30ed6c
0069ebbc  10 10 95 e5                                      ldr r1, [r5, #0x10]
0069ebc0  00 60 a0 e1                                      mov r6, r0
0069ebc4  09 00 a0 e1                                      mov r0, sb
0069ebc8  67 c0 f1 eb                                      bl #0x30ed6c
0069ebcc  00 10 a0 e1                                      mov r1, r0
0069ebd0  06 00 a0 e1                                      mov r0, r6
0069ebd4  f2 bf f1 eb                                      bl #0x30eba4
0069ebd8  20 10 95 e5                                      ldr r1, [r5, #0x20]
0069ebdc  00 60 a0 e1                                      mov r6, r0
0069ebe0  0a 00 a0 e1                                      mov r0, sl
0069ebe4  60 c0 f1 eb                                      bl #0x30ed6c
0069ebe8  00 10 a0 e1                                      mov r1, r0
0069ebec  06 00 a0 e1                                      mov r0, r6
0069ebf0  eb bf f1 eb                                      bl #0x30eba4
0069ebf4  28 00 84 e5                                      str r0, [r4, #0x28]
0069ebf8  04 10 95 e5                                      ldr r1, [r5, #4]
0069ebfc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0069ec00  59 c0 f1 eb                                      bl #0x30ed6c
0069ec04  14 10 95 e5                                      ldr r1, [r5, #0x14]
0069ec08  00 60 a0 e1                                      mov r6, r0
0069ec0c  09 00 a0 e1                                      mov r0, sb
0069ec10  55 c0 f1 eb                                      bl #0x30ed6c
0069ec14  00 10 a0 e1                                      mov r1, r0
0069ec18  06 00 a0 e1                                      mov r0, r6
0069ec1c  e0 bf f1 eb                                      bl #0x30eba4
0069ec20  24 10 95 e5                                      ldr r1, [r5, #0x24]
0069ec24  00 60 a0 e1                                      mov r6, r0
0069ec28  0a 00 a0 e1                                      mov r0, sl
0069ec2c  4e c0 f1 eb                                      bl #0x30ed6c
0069ec30  00 10 a0 e1                                      mov r1, r0
0069ec34  06 00 a0 e1                                      mov r0, r6
0069ec38  d9 bf f1 eb                                      bl #0x30eba4
0069ec3c  2c 00 84 e5                                      str r0, [r4, #0x2c]
0069ec40  08 10 95 e5                                      ldr r1, [r5, #8]
0069ec44  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0069ec48  47 c0 f1 eb                                      bl #0x30ed6c
0069ec4c  18 10 95 e5                                      ldr r1, [r5, #0x18]
0069ec50  00 60 a0 e1                                      mov r6, r0
0069ec54  09 00 a0 e1                                      mov r0, sb
0069ec58  43 c0 f1 eb                                      bl #0x30ed6c
0069ec5c  00 10 a0 e1                                      mov r1, r0
0069ec60  06 00 a0 e1                                      mov r0, r6
0069ec64  ce bf f1 eb                                      bl #0x30eba4
0069ec68  28 10 95 e5                                      ldr r1, [r5, #0x28]
0069ec6c  00 60 a0 e1                                      mov r6, r0
0069ec70  0a 00 a0 e1                                      mov r0, sl
0069ec74  3c c0 f1 eb                                      bl #0x30ed6c
0069ec78  00 10 a0 e1                                      mov r1, r0
0069ec7c  06 00 a0 e1                                      mov r0, r6
0069ec80  c7 bf f1 eb                                      bl #0x30eba4
0069ec84  30 00 84 e5                                      str r0, [r4, #0x30]
0069ec88  14 d0 8d e2                                      add sp, sp, #0x14
0069ec8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
