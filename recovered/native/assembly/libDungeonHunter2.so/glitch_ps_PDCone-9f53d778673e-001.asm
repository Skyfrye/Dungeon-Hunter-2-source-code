; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0069acc0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PDCone
; alias: _ZN6glitch2ps6PDConeD1Ev
; demangled: glitch::ps::PDCone::~PDCone()
; decoder-mode: arm
0069acc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069acc4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDCone
; alias: _ZNK6glitch2ps6PDCone7getTypeEv
; demangled: glitch::ps::PDCone::getType() const
; decoder-mode: arm
0069acc4  05 00 a0 e3                                      mov r0, #5
0069acc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069b804, declared_size=444, range_size=444, mode=arm
; class-group: glitch::ps::PDCone
; alias: _ZNK6glitch2ps6PDCone6withinERKNS_4core8vector3dIfEE
; demangled: glitch::ps::PDCone::within(glitch::core::vector3d<float> const&) const
; decoder-mode: arm
0069b804  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069b808  00 40 a0 e1                                      mov r4, r0
0069b80c  01 50 a0 e1                                      mov r5, r1
0069b810  00 00 91 e5                                      ldr r0, [r1]
0069b814  04 10 94 e5                                      ldr r1, [r4, #4]
0069b818  e3 ca f1 eb                                      bl #0x30e3ac
0069b81c  08 10 94 e5                                      ldr r1, [r4, #8]
0069b820  00 90 a0 e1                                      mov sb, r0
0069b824  04 00 95 e5                                      ldr r0, [r5, #4]
0069b828  df ca f1 eb                                      bl #0x30e3ac
0069b82c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0069b830  00 80 a0 e1                                      mov r8, r0
0069b834  08 00 95 e5                                      ldr r0, [r5, #8]
0069b838  db ca f1 eb                                      bl #0x30e3ac
0069b83c  10 b0 94 e5                                      ldr fp, [r4, #0x10]
0069b840  00 60 a0 e1                                      mov r6, r0
0069b844  09 00 a0 e1                                      mov r0, sb
0069b848  0b 10 a0 e1                                      mov r1, fp
0069b84c  46 cd f1 eb                                      bl #0x30ed6c
0069b850  14 a0 94 e5                                      ldr sl, [r4, #0x14]
0069b854  00 50 a0 e1                                      mov r5, r0
0069b858  08 00 a0 e1                                      mov r0, r8
0069b85c  0a 10 a0 e1                                      mov r1, sl
0069b860  41 cd f1 eb                                      bl #0x30ed6c
0069b864  00 10 a0 e1                                      mov r1, r0
0069b868  05 00 a0 e1                                      mov r0, r5
0069b86c  cc cc f1 eb                                      bl #0x30eba4
0069b870  18 70 94 e5                                      ldr r7, [r4, #0x18]
0069b874  00 50 a0 e1                                      mov r5, r0
0069b878  06 00 a0 e1                                      mov r0, r6
0069b87c  07 10 a0 e1                                      mov r1, r7
0069b880  39 cd f1 eb                                      bl #0x30ed6c
0069b884  00 10 a0 e1                                      mov r1, r0
0069b888  05 00 a0 e1                                      mov r0, r5
0069b88c  c4 cc f1 eb                                      bl #0x30eba4
0069b890  48 10 94 e5                                      ldr r1, [r4, #0x48]
0069b894  34 cd f1 eb                                      bl #0x30ed6c
0069b898  00 10 a0 e3                                      mov r1, #0
0069b89c  00 50 a0 e1                                      mov r5, r0
0069b8a0  99 cb f1 eb                                      bl #0x30e70c
0069b8a4  00 00 50 e3                                      cmp r0, #0
0069b8a8  42 00 00 1a                                      bne #0x69b9b8
0069b8ac  05 00 a0 e1                                      mov r0, r5
0069b8b0  fe 15 a0 e3                                      mov r1, #0x3f800000
0069b8b4  8f ca f1 eb                                      bl #0x30e2f8
0069b8b8  00 00 50 e3                                      cmp r0, #0
0069b8bc  3d 00 00 1a                                      bne #0x69b9b8
0069b8c0  0b 10 a0 e1                                      mov r1, fp
0069b8c4  05 00 a0 e1                                      mov r0, r5
0069b8c8  27 cd f1 eb                                      bl #0x30ed6c
0069b8cc  00 10 a0 e1                                      mov r1, r0
0069b8d0  09 00 a0 e1                                      mov r0, sb
0069b8d4  b4 ca f1 eb                                      bl #0x30e3ac
0069b8d8  0a 10 a0 e1                                      mov r1, sl
0069b8dc  00 90 a0 e1                                      mov sb, r0
0069b8e0  05 00 a0 e1                                      mov r0, r5
0069b8e4  20 cd f1 eb                                      bl #0x30ed6c
0069b8e8  00 10 a0 e1                                      mov r1, r0
0069b8ec  08 00 a0 e1                                      mov r0, r8
0069b8f0  ad ca f1 eb                                      bl #0x30e3ac
0069b8f4  07 10 a0 e1                                      mov r1, r7
0069b8f8  00 80 a0 e1                                      mov r8, r0
0069b8fc  05 00 a0 e1                                      mov r0, r5
0069b900  19 cd f1 eb                                      bl #0x30ed6c
0069b904  00 10 a0 e1                                      mov r1, r0
0069b908  06 00 a0 e1                                      mov r0, r6
0069b90c  a6 ca f1 eb                                      bl #0x30e3ac
0069b910  09 10 a0 e1                                      mov r1, sb
0069b914  00 70 a0 e1                                      mov r7, r0
0069b918  09 00 a0 e1                                      mov r0, sb
0069b91c  12 cd f1 eb                                      bl #0x30ed6c
0069b920  08 10 a0 e1                                      mov r1, r8
0069b924  00 60 a0 e1                                      mov r6, r0
0069b928  08 00 a0 e1                                      mov r0, r8
0069b92c  0e cd f1 eb                                      bl #0x30ed6c
0069b930  00 10 a0 e1                                      mov r1, r0
0069b934  06 00 a0 e1                                      mov r0, r6
0069b938  99 cc f1 eb                                      bl #0x30eba4
0069b93c  07 10 a0 e1                                      mov r1, r7
0069b940  00 60 a0 e1                                      mov r6, r0
0069b944  07 00 a0 e1                                      mov r0, r7
0069b948  07 cd f1 eb                                      bl #0x30ed6c
0069b94c  00 10 a0 e1                                      mov r1, r0
0069b950  06 00 a0 e1                                      mov r0, r6
0069b954  92 cc f1 eb                                      bl #0x30eba4
0069b958  38 10 94 e5                                      ldr r1, [r4, #0x38]
0069b95c  00 60 a0 e1                                      mov r6, r0
0069b960  05 00 a0 e1                                      mov r0, r5
0069b964  00 cd f1 eb                                      bl #0x30ed6c
0069b968  00 10 a0 e1                                      mov r1, r0
0069b96c  fe cc f1 eb                                      bl #0x30ed6c
0069b970  00 10 a0 e1                                      mov r1, r0
0069b974  06 00 a0 e1                                      mov r0, r6
0069b978  cd ca f1 eb                                      bl #0x30e4b4
0069b97c  00 00 50 e3                                      cmp r0, #0
0069b980  0c 00 00 0a                                      beq #0x69b9b8
0069b984  34 10 94 e5                                      ldr r1, [r4, #0x34]
0069b988  05 00 a0 e1                                      mov r0, r5
0069b98c  f6 cc f1 eb                                      bl #0x30ed6c
0069b990  00 10 a0 e1                                      mov r1, r0
0069b994  f4 cc f1 eb                                      bl #0x30ed6c
0069b998  00 10 a0 e1                                      mov r1, r0
0069b99c  06 00 a0 e1                                      mov r0, r6
0069b9a0  01 cc f1 eb                                      bl #0x30e9ac
0069b9a4  00 00 50 e3                                      cmp r0, #0
0069b9a8  00 00 a0 e3                                      mov r0, #0
0069b9ac  01 00 a0 13                                      movne r0, #1
0069b9b0  70 00 ef e6                                      uxtb r0, r0
0069b9b4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0069b9b8  00 00 a0 e3                                      mov r0, #0
0069b9bc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0069b9c0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PDCone
; alias: _ZN6glitch2ps6PDCone9transformERKNS_4core8CMatrix4IfEE
; demangled: glitch::ps::PDCone::transform(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0069b9c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069b9c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDCone
; alias: _ZNK6glitch2ps6PDCone4sizeEv
; demangled: glitch::ps::PDCone::size() const
; decoder-mode: arm
0069b9c4  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0069b9c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069c008, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PDCone
; alias: _ZN6glitch2ps6PDConeD0Ev
; demangled: glitch::ps::PDCone::~PDCone()
; decoder-mode: arm
0069c008  10 40 2d e9                                      push {r4, lr}
0069c00c  00 40 a0 e1                                      mov r4, r0
0069c010  a6 c8 f1 eb                                      bl #0x30e2b0
0069c014  04 00 a0 e1                                      mov r0, r4
0069c018  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0069c134, declared_size=216, range_size=216, mode=arm
; class-group: glitch::ps::PDCone
; alias: _ZNK6glitch2ps6PDCone4copyEv
; demangled: glitch::ps::PDCone::copy() const
; decoder-mode: arm
0069c134  70 40 2d e9                                      push {r4, r5, r6, lr}
0069c138  00 10 a0 e3                                      mov r1, #0
0069c13c  00 40 a0 e1                                      mov r4, r0
0069c140  54 00 a0 e3                                      mov r0, #0x54
0069c144  18 60 fa eb                                      bl #0x5341ac
0069c148  b4 50 9f e5                                      ldr r5, [pc, #0xb4]
0069c14c  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0069c150  05 50 8f e0                                      add r5, pc, r5
0069c154  02 20 95 e7                                      ldr r2, [r5, r2]
0069c158  08 20 82 e2                                      add r2, r2, #8
0069c15c  00 20 80 e5                                      str r2, [r0]
0069c160  04 20 94 e5                                      ldr r2, [r4, #4]
0069c164  04 20 80 e5                                      str r2, [r0, #4]
0069c168  08 20 94 e5                                      ldr r2, [r4, #8]
0069c16c  08 20 80 e5                                      str r2, [r0, #8]
0069c170  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0069c174  0c 20 80 e5                                      str r2, [r0, #0xc]
0069c178  10 20 94 e5                                      ldr r2, [r4, #0x10]
0069c17c  10 20 80 e5                                      str r2, [r0, #0x10]
0069c180  14 20 94 e5                                      ldr r2, [r4, #0x14]
0069c184  14 20 80 e5                                      str r2, [r0, #0x14]
0069c188  18 20 94 e5                                      ldr r2, [r4, #0x18]
0069c18c  18 20 80 e5                                      str r2, [r0, #0x18]
0069c190  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0069c194  1c 20 80 e5                                      str r2, [r0, #0x1c]
0069c198  20 20 94 e5                                      ldr r2, [r4, #0x20]
0069c19c  20 20 80 e5                                      str r2, [r0, #0x20]
0069c1a0  24 20 94 e5                                      ldr r2, [r4, #0x24]
0069c1a4  24 20 80 e5                                      str r2, [r0, #0x24]
0069c1a8  28 20 94 e5                                      ldr r2, [r4, #0x28]
0069c1ac  28 20 80 e5                                      str r2, [r0, #0x28]
0069c1b0  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0069c1b4  2c 20 80 e5                                      str r2, [r0, #0x2c]
0069c1b8  30 20 94 e5                                      ldr r2, [r4, #0x30]
0069c1bc  30 20 80 e5                                      str r2, [r0, #0x30]
0069c1c0  34 20 94 e5                                      ldr r2, [r4, #0x34]
0069c1c4  34 20 80 e5                                      str r2, [r0, #0x34]
0069c1c8  38 20 94 e5                                      ldr r2, [r4, #0x38]
0069c1cc  38 20 80 e5                                      str r2, [r0, #0x38]
0069c1d0  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0069c1d4  3c 20 80 e5                                      str r2, [r0, #0x3c]
0069c1d8  40 20 94 e5                                      ldr r2, [r4, #0x40]
0069c1dc  40 20 80 e5                                      str r2, [r0, #0x40]
0069c1e0  44 20 94 e5                                      ldr r2, [r4, #0x44]
0069c1e4  44 20 80 e5                                      str r2, [r0, #0x44]
0069c1e8  48 20 94 e5                                      ldr r2, [r4, #0x48]
0069c1ec  48 20 80 e5                                      str r2, [r0, #0x48]
0069c1f0  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0069c1f4  4c 20 80 e5                                      str r2, [r0, #0x4c]
0069c1f8  50 20 d4 e5                                      ldrb r2, [r4, #0x50]
0069c1fc  50 20 c0 e5                                      strb r2, [r0, #0x50]
0069c200  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0069c204  40 89 2f 00 c4 31 00 00                          .byte 0x40, 0x89, 0x2f, 0x00, 0xc4, 0x31, 0x00, 0x00

; FUNCTION 0x0069c860, declared_size=1120, range_size=1120, mode=arm
; class-group: glitch::ps::PDCone
; alias: _ZN6glitch2ps6PDConeC1ERKNS_4core8vector3dIfEES6_ff
; demangled: glitch::ps::PDCone::PDCone(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, float, float)
; decoder-mode: arm
0069c860  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069c864  4c e4 9f e5                                      ldr lr, [pc, #0x44c]
0069c868  4c 54 9f e5                                      ldr r5, [pc, #0x44c]
0069c86c  00 c0 a0 e3                                      mov ip, #0
0069c870  0e e0 8f e0                                      add lr, pc, lr
0069c874  05 50 9e e7                                      ldr r5, [lr, r5]
0069c878  04 c0 80 e5                                      str ip, [r0, #4]
0069c87c  08 c0 80 e5                                      str ip, [r0, #8]
0069c880  08 50 85 e2                                      add r5, r5, #8
0069c884  0c c0 80 e5                                      str ip, [r0, #0xc]
0069c888  30 c0 80 e5                                      str ip, [r0, #0x30]
0069c88c  10 c0 80 e5                                      str ip, [r0, #0x10]
0069c890  14 c0 80 e5                                      str ip, [r0, #0x14]
0069c894  18 c0 80 e5                                      str ip, [r0, #0x18]
0069c898  1c c0 80 e5                                      str ip, [r0, #0x1c]
0069c89c  20 c0 80 e5                                      str ip, [r0, #0x20]
0069c8a0  24 c0 80 e5                                      str ip, [r0, #0x24]
0069c8a4  28 c0 80 e5                                      str ip, [r0, #0x28]
0069c8a8  2c c0 80 e5                                      str ip, [r0, #0x2c]
0069c8ac  00 50 80 e5                                      str r5, [r0]
0069c8b0  01 50 a0 e1                                      mov r5, r1
0069c8b4  00 10 91 e5                                      ldr r1, [r1]
0069c8b8  03 80 a0 e1                                      mov r8, r3
0069c8bc  0c d0 4d e2                                      sub sp, sp, #0xc
0069c8c0  04 10 80 e5                                      str r1, [r0, #4]
0069c8c4  04 30 95 e5                                      ldr r3, [r5, #4]
0069c8c8  30 70 9d e5                                      ldr r7, [sp, #0x30]
0069c8cc  00 40 a0 e1                                      mov r4, r0
0069c8d0  08 30 80 e5                                      str r3, [r0, #8]
0069c8d4  08 30 95 e5                                      ldr r3, [r5, #8]
0069c8d8  02 60 a0 e1                                      mov r6, r2
0069c8dc  0c 30 80 e5                                      str r3, [r0, #0xc]
0069c8e0  04 00 92 e5                                      ldr r0, [r2, #4]
0069c8e4  04 10 95 e5                                      ldr r1, [r5, #4]
0069c8e8  af c6 f1 eb                                      bl #0x30e3ac
0069c8ec  08 10 95 e5                                      ldr r1, [r5, #8]
0069c8f0  00 90 a0 e1                                      mov sb, r0
0069c8f4  08 00 96 e5                                      ldr r0, [r6, #8]
0069c8f8  ab c6 f1 eb                                      bl #0x30e3ac
0069c8fc  00 10 95 e5                                      ldr r1, [r5]
0069c900  00 a0 a0 e1                                      mov sl, r0
0069c904  00 00 96 e5                                      ldr r0, [r6]
0069c908  a7 c6 f1 eb                                      bl #0x30e3ac
0069c90c  07 10 a0 e1                                      mov r1, r7
0069c910  10 00 84 e5                                      str r0, [r4, #0x10]
0069c914  14 90 84 e5                                      str sb, [r4, #0x14]
0069c918  08 00 a0 e1                                      mov r0, r8
0069c91c  18 a0 84 e5                                      str sl, [r4, #0x18]
0069c920  79 c7 f1 eb                                      bl #0x30e70c
0069c924  00 00 50 e3                                      cmp r0, #0
0069c928  38 70 84 05                                      streq r7, [r4, #0x38]
0069c92c  08 70 a0 01                                      moveq r7, r8
0069c930  38 80 84 15                                      strne r8, [r4, #0x38]
0069c934  34 70 84 15                                      strne r7, [r4, #0x34]
0069c938  34 80 84 05                                      streq r8, [r4, #0x34]
0069c93c  07 10 a0 e1                                      mov r1, r7
0069c940  07 00 a0 e1                                      mov r0, r7
0069c944  08 c9 f1 eb                                      bl #0x30ed6c
0069c948  38 50 94 e5                                      ldr r5, [r4, #0x38]
0069c94c  3c 00 84 e5                                      str r0, [r4, #0x3c]
0069c950  00 60 a0 e3                                      mov r6, #0
0069c954  05 10 a0 e1                                      mov r1, r5
0069c958  05 00 a0 e1                                      mov r0, r5
0069c95c  02 c9 f1 eb                                      bl #0x30ed6c
0069c960  34 10 94 e5                                      ldr r1, [r4, #0x34]
0069c964  40 00 84 e5                                      str r0, [r4, #0x40]
0069c968  05 00 a0 e1                                      mov r0, r5
0069c96c  86 c5 f1 eb                                      bl #0x30df8c
0069c970  00 00 50 e3                                      cmp r0, #0
0069c974  01 60 a0 13                                      movne r6, #1
0069c978  38 10 94 e5                                      ldr r1, [r4, #0x38]
0069c97c  50 60 c4 e5                                      strb r6, [r4, #0x50]
0069c980  34 00 94 e5                                      ldr r0, [r4, #0x34]
0069c984  88 c6 f1 eb                                      bl #0x30e3ac
0069c988  10 60 94 e5                                      ldr r6, [r4, #0x10]
0069c98c  44 00 84 e5                                      str r0, [r4, #0x44]
0069c990  14 50 94 e5                                      ldr r5, [r4, #0x14]
0069c994  06 10 a0 e1                                      mov r1, r6
0069c998  06 00 a0 e1                                      mov r0, r6
0069c99c  f2 c8 f1 eb                                      bl #0x30ed6c
0069c9a0  05 10 a0 e1                                      mov r1, r5
0069c9a4  00 70 a0 e1                                      mov r7, r0
0069c9a8  05 00 a0 e1                                      mov r0, r5
0069c9ac  ee c8 f1 eb                                      bl #0x30ed6c
0069c9b0  00 10 a0 e1                                      mov r1, r0
0069c9b4  07 00 a0 e1                                      mov r0, r7
0069c9b8  79 c8 f1 eb                                      bl #0x30eba4
0069c9bc  18 70 94 e5                                      ldr r7, [r4, #0x18]
0069c9c0  00 80 a0 e1                                      mov r8, r0
0069c9c4  07 10 a0 e1                                      mov r1, r7
0069c9c8  07 00 a0 e1                                      mov r0, r7
0069c9cc  e6 c8 f1 eb                                      bl #0x30ed6c
0069c9d0  00 10 a0 e1                                      mov r1, r0
0069c9d4  08 00 a0 e1                                      mov r0, r8
0069c9d8  71 c8 f1 eb                                      bl #0x30eba4
0069c9dc  00 b0 a0 e1                                      mov fp, r0
0069c9e0  cf c5 f1 eb                                      bl #0x30e124
0069c9e4  00 10 a0 e3                                      mov r1, #0
0069c9e8  04 00 8d e5                                      str r0, [sp, #4]
0069c9ec  0b 00 a0 e1                                      mov r0, fp
0069c9f0  65 c5 f1 eb                                      bl #0x30df8c
0069c9f4  00 00 50 e3                                      cmp r0, #0
0069c9f8  00 00 a0 13                                      movne r0, #0
0069c9fc  02 00 00 1a                                      bne #0x69ca0c
0069ca00  fe 05 a0 e3                                      mov r0, #0x3f800000
0069ca04  0b 10 a0 e1                                      mov r1, fp
0069ca08  a1 c8 f1 eb                                      bl #0x30ec94
0069ca0c  48 00 84 e5                                      str r0, [r4, #0x48]
0069ca10  c3 c5 f1 eb                                      bl #0x30e124
0069ca14  06 10 a0 e1                                      mov r1, r6
0069ca18  00 80 a0 e1                                      mov r8, r0
0069ca1c  d2 c8 f1 eb                                      bl #0x30ed6c
0069ca20  05 10 a0 e1                                      mov r1, r5
0069ca24  00 60 a0 e1                                      mov r6, r0
0069ca28  08 00 a0 e1                                      mov r0, r8
0069ca2c  ce c8 f1 eb                                      bl #0x30ed6c
0069ca30  07 10 a0 e1                                      mov r1, r7
0069ca34  00 50 a0 e1                                      mov r5, r0
0069ca38  08 00 a0 e1                                      mov r0, r8
0069ca3c  ca c8 f1 eb                                      bl #0x30ed6c
0069ca40  00 10 a0 e3                                      mov r1, #0
0069ca44  00 70 a0 e1                                      mov r7, r0
0069ca48  c7 c8 f1 eb                                      bl #0x30ed6c
0069ca4c  00 10 a0 e3                                      mov r1, #0
0069ca50  00 90 a0 e1                                      mov sb, r0
0069ca54  05 00 a0 e1                                      mov r0, r5
0069ca58  c3 c8 f1 eb                                      bl #0x30ed6c
0069ca5c  00 10 a0 e1                                      mov r1, r0
0069ca60  06 00 a0 e1                                      mov r0, r6
0069ca64  4e c8 f1 eb                                      bl #0x30eba4
0069ca68  09 10 a0 e1                                      mov r1, sb
0069ca6c  4c c8 f1 eb                                      bl #0x30eba4
0069ca70  77 1e 0b e3                                      movw r1, #0xbe77
0069ca74  7f 1f 43 e3                                      movt r1, #0x3f7f
0069ca78  02 01 c0 e3                                      bic r0, r0, #0x80000000
0069ca7c  1d c6 f1 eb                                      bl #0x30e2f8
0069ca80  00 00 50 e3                                      cmp r0, #0
0069ca84  00 a0 a0 13                                      movne sl, #0
0069ca88  fe a5 a0 03                                      moveq sl, #0x3f800000
0069ca8c  06 10 a0 e1                                      mov r1, r6
0069ca90  0a 00 a0 e1                                      mov r0, sl
0069ca94  fe 85 a0 13                                      movne r8, #0x3f800000
0069ca98  00 80 a0 03                                      moveq r8, #0
0069ca9c  b2 c8 f1 eb                                      bl #0x30ed6c
0069caa0  05 10 a0 e1                                      mov r1, r5
0069caa4  00 30 a0 e1                                      mov r3, r0
0069caa8  08 00 a0 e1                                      mov r0, r8
0069caac  00 30 8d e5                                      str r3, [sp]
0069cab0  ad c8 f1 eb                                      bl #0x30ed6c
0069cab4  00 30 9d e5                                      ldr r3, [sp]
0069cab8  00 10 a0 e1                                      mov r1, r0
0069cabc  03 00 a0 e1                                      mov r0, r3
0069cac0  37 c8 f1 eb                                      bl #0x30eba4
0069cac4  00 10 a0 e1                                      mov r1, r0
0069cac8  09 00 a0 e1                                      mov r0, sb
0069cacc  34 c8 f1 eb                                      bl #0x30eba4
0069cad0  00 90 a0 e1                                      mov sb, r0
0069cad4  09 10 a0 e1                                      mov r1, sb
0069cad8  06 00 a0 e1                                      mov r0, r6
0069cadc  a2 c8 f1 eb                                      bl #0x30ed6c
0069cae0  00 10 a0 e1                                      mov r1, r0
0069cae4  0a 00 a0 e1                                      mov r0, sl
0069cae8  2f c6 f1 eb                                      bl #0x30e3ac
0069caec  09 10 a0 e1                                      mov r1, sb
0069caf0  1c 00 84 e5                                      str r0, [r4, #0x1c]
0069caf4  05 00 a0 e1                                      mov r0, r5
0069caf8  9b c8 f1 eb                                      bl #0x30ed6c
0069cafc  00 10 a0 e1                                      mov r1, r0
0069cb00  08 00 a0 e1                                      mov r0, r8
0069cb04  28 c6 f1 eb                                      bl #0x30e3ac
0069cb08  09 10 a0 e1                                      mov r1, sb
0069cb0c  20 00 84 e5                                      str r0, [r4, #0x20]
0069cb10  07 00 a0 e1                                      mov r0, r7
0069cb14  94 c8 f1 eb                                      bl #0x30ed6c
0069cb18  00 10 a0 e1                                      mov r1, r0
0069cb1c  00 00 a0 e3                                      mov r0, #0
0069cb20  21 c6 f1 eb                                      bl #0x30e3ac
0069cb24  24 00 84 e5                                      str r0, [r4, #0x24]
0069cb28  1c 00 84 e2                                      add r0, r4, #0x1c
0069cb2c  6b 07 f3 eb                                      bl #0x35e8e0
0069cb30  24 90 94 e5                                      ldr sb, [r4, #0x24]
0069cb34  02 01 85 e2                                      add r0, r5, #0x80000000
0069cb38  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0069cb3c  09 10 a0 e1                                      mov r1, sb
0069cb40  89 c8 f1 eb                                      bl #0x30ed6c
0069cb44  0a 10 a0 e1                                      mov r1, sl
0069cb48  00 80 a0 e1                                      mov r8, r0
0069cb4c  07 00 a0 e1                                      mov r0, r7
0069cb50  85 c8 f1 eb                                      bl #0x30ed6c
0069cb54  00 10 a0 e1                                      mov r1, r0
0069cb58  08 00 a0 e1                                      mov r0, r8
0069cb5c  10 c8 f1 eb                                      bl #0x30eba4
0069cb60  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
0069cb64  02 71 87 e2                                      add r7, r7, #0x80000000
0069cb68  28 00 84 e5                                      str r0, [r4, #0x28]
0069cb6c  08 10 a0 e1                                      mov r1, r8
0069cb70  07 00 a0 e1                                      mov r0, r7
0069cb74  7c c8 f1 eb                                      bl #0x30ed6c
0069cb78  09 10 a0 e1                                      mov r1, sb
0069cb7c  00 70 a0 e1                                      mov r7, r0
0069cb80  06 00 a0 e1                                      mov r0, r6
0069cb84  78 c8 f1 eb                                      bl #0x30ed6c
0069cb88  00 10 a0 e1                                      mov r1, r0
0069cb8c  07 00 a0 e1                                      mov r0, r7
0069cb90  03 c8 f1 eb                                      bl #0x30eba4
0069cb94  02 11 86 e2                                      add r1, r6, #0x80000000
0069cb98  2c 00 84 e5                                      str r0, [r4, #0x2c]
0069cb9c  0a 00 a0 e1                                      mov r0, sl
0069cba0  71 c8 f1 eb                                      bl #0x30ed6c
0069cba4  08 10 a0 e1                                      mov r1, r8
0069cba8  00 60 a0 e1                                      mov r6, r0
0069cbac  05 00 a0 e1                                      mov r0, r5
0069cbb0  6d c8 f1 eb                                      bl #0x30ed6c
0069cbb4  00 10 a0 e1                                      mov r1, r0
0069cbb8  06 00 a0 e1                                      mov r0, r6
0069cbbc  f8 c7 f1 eb                                      bl #0x30eba4
0069cbc0  50 30 d4 e5                                      ldrb r3, [r4, #0x50]
0069cbc4  30 00 84 e5                                      str r0, [r4, #0x30]
0069cbc8  00 00 53 e3                                      cmp r3, #0
0069cbcc  23 00 00 1a                                      bne #0x69cc60
0069cbd0  04 00 9d e5                                      ldr r0, [sp, #4]
0069cbd4  32 c7 f1 eb                                      bl #0x30e8a4
0069cbd8  00 60 a0 e1                                      mov r6, r0
0069cbdc  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0069cbe0  01 70 a0 e1                                      mov r7, r1
0069cbe4  2e c7 f1 eb                                      bl #0x30e8a4
0069cbe8  81 2c 01 e3                                      movw r2, #0x1c81
0069cbec  52 31 0c e3                                      movw r3, #0xc152
0069cbf0  8e 20 44 e3                                      movt r2, #0x408e
0069cbf4  f0 3f 43 e3                                      movt r3, #0x3ff0
0069cbf8  ad c7 f1 eb                                      bl #0x30eab4
0069cbfc  06 20 a0 e1                                      mov r2, r6
0069cc00  07 30 a0 e1                                      mov r3, r7
0069cc04  aa c7 f1 eb                                      bl #0x30eab4
0069cc08  a4 c6 f1 eb                                      bl #0x30e6a0
0069cc0c  00 50 a0 e1                                      mov r5, r0
0069cc10  40 00 94 e5                                      ldr r0, [r4, #0x40]
0069cc14  22 c7 f1 eb                                      bl #0x30e8a4
0069cc18  81 2c 01 e3                                      movw r2, #0x1c81
0069cc1c  52 31 0c e3                                      movw r3, #0xc152
0069cc20  8e 20 44 e3                                      movt r2, #0x408e
0069cc24  f0 3f 43 e3                                      movt r3, #0x3ff0
0069cc28  a1 c7 f1 eb                                      bl #0x30eab4
0069cc2c  00 20 a0 e1                                      mov r2, r0
0069cc30  01 30 a0 e1                                      mov r3, r1
0069cc34  06 00 a0 e1                                      mov r0, r6
0069cc38  07 10 a0 e1                                      mov r1, r7
0069cc3c  9c c7 f1 eb                                      bl #0x30eab4
0069cc40  96 c6 f1 eb                                      bl #0x30e6a0
0069cc44  00 10 a0 e1                                      mov r1, r0
0069cc48  05 00 a0 e1                                      mov r0, r5
0069cc4c  d6 c5 f1 eb                                      bl #0x30e3ac
0069cc50  4c 00 84 e5                                      str r0, [r4, #0x4c]
0069cc54  04 00 a0 e1                                      mov r0, r4
0069cc58  0c d0 8d e2                                      add sp, sp, #0xc
0069cc5c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0069cc60  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0069cc64  0b 00 a0 e1                                      mov r0, fp
0069cc68  cd c7 f1 eb                                      bl #0x30eba4
0069cc6c  2c c5 f1 eb                                      bl #0x30e124
0069cc70  0b c7 f1 eb                                      bl #0x30e8a4
0069cc74  18 2d 02 e3                                      movw r2, #0x2d18
0069cc78  fb 31 02 e3                                      movw r3, #0x21fb
0069cc7c  44 24 45 e3                                      movt r2, #0x5444
0069cc80  09 30 44 e3                                      movt r3, #0x4009
0069cc84  8a c7 f1 eb                                      bl #0x30eab4
0069cc88  00 60 a0 e1                                      mov r6, r0
0069cc8c  34 00 94 e5                                      ldr r0, [r4, #0x34]
0069cc90  01 70 a0 e1                                      mov r7, r1
0069cc94  02 c7 f1 eb                                      bl #0x30e8a4
0069cc98  00 20 a0 e1                                      mov r2, r0
0069cc9c  01 30 a0 e1                                      mov r3, r1
0069cca0  06 00 a0 e1                                      mov r0, r6
0069cca4  07 10 a0 e1                                      mov r1, r7
0069cca8  81 c7 f1 eb                                      bl #0x30eab4
0069ccac  7b c6 f1 eb                                      bl #0x30e6a0
0069ccb0  4c 00 84 e5                                      str r0, [r4, #0x4c]
0069ccb4  e6 ff ff ea                                      b #0x69cc54
; mapping-symbol data/literal pool
0069ccb8  20 82 2f 00 c4 31 00 00                          .byte 0x20, 0x82, 0x2f, 0x00, 0xc4, 0x31, 0x00, 0x00

; FUNCTION 0x0069ccc0, declared_size=1120, range_size=1120, mode=arm
; class-group: glitch::ps::PDCone
; alias: _ZN6glitch2ps6PDConeC2ERKNS_4core8vector3dIfEES6_ff
; demangled: glitch::ps::PDCone::PDCone(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, float, float)
; decoder-mode: arm
0069ccc0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069ccc4  4c e4 9f e5                                      ldr lr, [pc, #0x44c]
0069ccc8  4c 54 9f e5                                      ldr r5, [pc, #0x44c]
0069cccc  00 c0 a0 e3                                      mov ip, #0
0069ccd0  0e e0 8f e0                                      add lr, pc, lr
0069ccd4  05 50 9e e7                                      ldr r5, [lr, r5]
0069ccd8  04 c0 80 e5                                      str ip, [r0, #4]
0069ccdc  08 c0 80 e5                                      str ip, [r0, #8]
0069cce0  08 50 85 e2                                      add r5, r5, #8
0069cce4  0c c0 80 e5                                      str ip, [r0, #0xc]
0069cce8  30 c0 80 e5                                      str ip, [r0, #0x30]
0069ccec  10 c0 80 e5                                      str ip, [r0, #0x10]
0069ccf0  14 c0 80 e5                                      str ip, [r0, #0x14]
0069ccf4  18 c0 80 e5                                      str ip, [r0, #0x18]
0069ccf8  1c c0 80 e5                                      str ip, [r0, #0x1c]
0069ccfc  20 c0 80 e5                                      str ip, [r0, #0x20]
0069cd00  24 c0 80 e5                                      str ip, [r0, #0x24]
0069cd04  28 c0 80 e5                                      str ip, [r0, #0x28]
0069cd08  2c c0 80 e5                                      str ip, [r0, #0x2c]
0069cd0c  00 50 80 e5                                      str r5, [r0]
0069cd10  01 50 a0 e1                                      mov r5, r1
0069cd14  00 10 91 e5                                      ldr r1, [r1]
0069cd18  03 80 a0 e1                                      mov r8, r3
0069cd1c  0c d0 4d e2                                      sub sp, sp, #0xc
0069cd20  04 10 80 e5                                      str r1, [r0, #4]
0069cd24  04 30 95 e5                                      ldr r3, [r5, #4]
0069cd28  30 70 9d e5                                      ldr r7, [sp, #0x30]
0069cd2c  00 40 a0 e1                                      mov r4, r0
0069cd30  08 30 80 e5                                      str r3, [r0, #8]
0069cd34  08 30 95 e5                                      ldr r3, [r5, #8]
0069cd38  02 60 a0 e1                                      mov r6, r2
0069cd3c  0c 30 80 e5                                      str r3, [r0, #0xc]
0069cd40  04 00 92 e5                                      ldr r0, [r2, #4]
0069cd44  04 10 95 e5                                      ldr r1, [r5, #4]
0069cd48  97 c5 f1 eb                                      bl #0x30e3ac
0069cd4c  08 10 95 e5                                      ldr r1, [r5, #8]
0069cd50  00 90 a0 e1                                      mov sb, r0
0069cd54  08 00 96 e5                                      ldr r0, [r6, #8]
0069cd58  93 c5 f1 eb                                      bl #0x30e3ac
0069cd5c  00 10 95 e5                                      ldr r1, [r5]
0069cd60  00 a0 a0 e1                                      mov sl, r0
0069cd64  00 00 96 e5                                      ldr r0, [r6]
0069cd68  8f c5 f1 eb                                      bl #0x30e3ac
0069cd6c  07 10 a0 e1                                      mov r1, r7
0069cd70  10 00 84 e5                                      str r0, [r4, #0x10]
0069cd74  14 90 84 e5                                      str sb, [r4, #0x14]
0069cd78  08 00 a0 e1                                      mov r0, r8
0069cd7c  18 a0 84 e5                                      str sl, [r4, #0x18]
0069cd80  61 c6 f1 eb                                      bl #0x30e70c
0069cd84  00 00 50 e3                                      cmp r0, #0
0069cd88  38 70 84 05                                      streq r7, [r4, #0x38]
0069cd8c  08 70 a0 01                                      moveq r7, r8
0069cd90  38 80 84 15                                      strne r8, [r4, #0x38]
0069cd94  34 70 84 15                                      strne r7, [r4, #0x34]
0069cd98  34 80 84 05                                      streq r8, [r4, #0x34]
0069cd9c  07 10 a0 e1                                      mov r1, r7
0069cda0  07 00 a0 e1                                      mov r0, r7
0069cda4  f0 c7 f1 eb                                      bl #0x30ed6c
0069cda8  38 50 94 e5                                      ldr r5, [r4, #0x38]
0069cdac  3c 00 84 e5                                      str r0, [r4, #0x3c]
0069cdb0  00 60 a0 e3                                      mov r6, #0
0069cdb4  05 10 a0 e1                                      mov r1, r5
0069cdb8  05 00 a0 e1                                      mov r0, r5
0069cdbc  ea c7 f1 eb                                      bl #0x30ed6c
0069cdc0  34 10 94 e5                                      ldr r1, [r4, #0x34]
0069cdc4  40 00 84 e5                                      str r0, [r4, #0x40]
0069cdc8  05 00 a0 e1                                      mov r0, r5
0069cdcc  6e c4 f1 eb                                      bl #0x30df8c
0069cdd0  00 00 50 e3                                      cmp r0, #0
0069cdd4  01 60 a0 13                                      movne r6, #1
0069cdd8  38 10 94 e5                                      ldr r1, [r4, #0x38]
0069cddc  50 60 c4 e5                                      strb r6, [r4, #0x50]
0069cde0  34 00 94 e5                                      ldr r0, [r4, #0x34]
0069cde4  70 c5 f1 eb                                      bl #0x30e3ac
0069cde8  10 60 94 e5                                      ldr r6, [r4, #0x10]
0069cdec  44 00 84 e5                                      str r0, [r4, #0x44]
0069cdf0  14 50 94 e5                                      ldr r5, [r4, #0x14]
0069cdf4  06 10 a0 e1                                      mov r1, r6
0069cdf8  06 00 a0 e1                                      mov r0, r6
0069cdfc  da c7 f1 eb                                      bl #0x30ed6c
0069ce00  05 10 a0 e1                                      mov r1, r5
0069ce04  00 70 a0 e1                                      mov r7, r0
0069ce08  05 00 a0 e1                                      mov r0, r5
0069ce0c  d6 c7 f1 eb                                      bl #0x30ed6c
0069ce10  00 10 a0 e1                                      mov r1, r0
0069ce14  07 00 a0 e1                                      mov r0, r7
0069ce18  61 c7 f1 eb                                      bl #0x30eba4
0069ce1c  18 70 94 e5                                      ldr r7, [r4, #0x18]
0069ce20  00 80 a0 e1                                      mov r8, r0
0069ce24  07 10 a0 e1                                      mov r1, r7
0069ce28  07 00 a0 e1                                      mov r0, r7
0069ce2c  ce c7 f1 eb                                      bl #0x30ed6c
0069ce30  00 10 a0 e1                                      mov r1, r0
0069ce34  08 00 a0 e1                                      mov r0, r8
0069ce38  59 c7 f1 eb                                      bl #0x30eba4
0069ce3c  00 b0 a0 e1                                      mov fp, r0
0069ce40  b7 c4 f1 eb                                      bl #0x30e124
0069ce44  00 10 a0 e3                                      mov r1, #0
0069ce48  04 00 8d e5                                      str r0, [sp, #4]
0069ce4c  0b 00 a0 e1                                      mov r0, fp
0069ce50  4d c4 f1 eb                                      bl #0x30df8c
0069ce54  00 00 50 e3                                      cmp r0, #0
0069ce58  00 00 a0 13                                      movne r0, #0
0069ce5c  02 00 00 1a                                      bne #0x69ce6c
0069ce60  fe 05 a0 e3                                      mov r0, #0x3f800000
0069ce64  0b 10 a0 e1                                      mov r1, fp
0069ce68  89 c7 f1 eb                                      bl #0x30ec94
0069ce6c  48 00 84 e5                                      str r0, [r4, #0x48]
0069ce70  ab c4 f1 eb                                      bl #0x30e124
0069ce74  06 10 a0 e1                                      mov r1, r6
0069ce78  00 80 a0 e1                                      mov r8, r0
0069ce7c  ba c7 f1 eb                                      bl #0x30ed6c
0069ce80  05 10 a0 e1                                      mov r1, r5
0069ce84  00 60 a0 e1                                      mov r6, r0
0069ce88  08 00 a0 e1                                      mov r0, r8
0069ce8c  b6 c7 f1 eb                                      bl #0x30ed6c
0069ce90  07 10 a0 e1                                      mov r1, r7
0069ce94  00 50 a0 e1                                      mov r5, r0
0069ce98  08 00 a0 e1                                      mov r0, r8
0069ce9c  b2 c7 f1 eb                                      bl #0x30ed6c
0069cea0  00 10 a0 e3                                      mov r1, #0
0069cea4  00 70 a0 e1                                      mov r7, r0
0069cea8  af c7 f1 eb                                      bl #0x30ed6c
0069ceac  00 10 a0 e3                                      mov r1, #0
0069ceb0  00 90 a0 e1                                      mov sb, r0
0069ceb4  05 00 a0 e1                                      mov r0, r5
0069ceb8  ab c7 f1 eb                                      bl #0x30ed6c
0069cebc  00 10 a0 e1                                      mov r1, r0
0069cec0  06 00 a0 e1                                      mov r0, r6
0069cec4  36 c7 f1 eb                                      bl #0x30eba4
0069cec8  09 10 a0 e1                                      mov r1, sb
0069cecc  34 c7 f1 eb                                      bl #0x30eba4
0069ced0  77 1e 0b e3                                      movw r1, #0xbe77
0069ced4  7f 1f 43 e3                                      movt r1, #0x3f7f
0069ced8  02 01 c0 e3                                      bic r0, r0, #0x80000000
0069cedc  05 c5 f1 eb                                      bl #0x30e2f8
0069cee0  00 00 50 e3                                      cmp r0, #0
0069cee4  00 a0 a0 13                                      movne sl, #0
0069cee8  fe a5 a0 03                                      moveq sl, #0x3f800000
0069ceec  06 10 a0 e1                                      mov r1, r6
0069cef0  0a 00 a0 e1                                      mov r0, sl
0069cef4  fe 85 a0 13                                      movne r8, #0x3f800000
0069cef8  00 80 a0 03                                      moveq r8, #0
0069cefc  9a c7 f1 eb                                      bl #0x30ed6c
0069cf00  05 10 a0 e1                                      mov r1, r5
0069cf04  00 30 a0 e1                                      mov r3, r0
0069cf08  08 00 a0 e1                                      mov r0, r8
0069cf0c  00 30 8d e5                                      str r3, [sp]
0069cf10  95 c7 f1 eb                                      bl #0x30ed6c
0069cf14  00 30 9d e5                                      ldr r3, [sp]
0069cf18  00 10 a0 e1                                      mov r1, r0
0069cf1c  03 00 a0 e1                                      mov r0, r3
0069cf20  1f c7 f1 eb                                      bl #0x30eba4
0069cf24  00 10 a0 e1                                      mov r1, r0
0069cf28  09 00 a0 e1                                      mov r0, sb
0069cf2c  1c c7 f1 eb                                      bl #0x30eba4
0069cf30  00 90 a0 e1                                      mov sb, r0
0069cf34  09 10 a0 e1                                      mov r1, sb
0069cf38  06 00 a0 e1                                      mov r0, r6
0069cf3c  8a c7 f1 eb                                      bl #0x30ed6c
0069cf40  00 10 a0 e1                                      mov r1, r0
0069cf44  0a 00 a0 e1                                      mov r0, sl
0069cf48  17 c5 f1 eb                                      bl #0x30e3ac
0069cf4c  09 10 a0 e1                                      mov r1, sb
0069cf50  1c 00 84 e5                                      str r0, [r4, #0x1c]
0069cf54  05 00 a0 e1                                      mov r0, r5
0069cf58  83 c7 f1 eb                                      bl #0x30ed6c
0069cf5c  00 10 a0 e1                                      mov r1, r0
0069cf60  08 00 a0 e1                                      mov r0, r8
0069cf64  10 c5 f1 eb                                      bl #0x30e3ac
0069cf68  09 10 a0 e1                                      mov r1, sb
0069cf6c  20 00 84 e5                                      str r0, [r4, #0x20]
0069cf70  07 00 a0 e1                                      mov r0, r7
0069cf74  7c c7 f1 eb                                      bl #0x30ed6c
0069cf78  00 10 a0 e1                                      mov r1, r0
0069cf7c  00 00 a0 e3                                      mov r0, #0
0069cf80  09 c5 f1 eb                                      bl #0x30e3ac
0069cf84  24 00 84 e5                                      str r0, [r4, #0x24]
0069cf88  1c 00 84 e2                                      add r0, r4, #0x1c
0069cf8c  53 06 f3 eb                                      bl #0x35e8e0
0069cf90  24 90 94 e5                                      ldr sb, [r4, #0x24]
0069cf94  02 01 85 e2                                      add r0, r5, #0x80000000
0069cf98  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0069cf9c  09 10 a0 e1                                      mov r1, sb
0069cfa0  71 c7 f1 eb                                      bl #0x30ed6c
0069cfa4  0a 10 a0 e1                                      mov r1, sl
0069cfa8  00 80 a0 e1                                      mov r8, r0
0069cfac  07 00 a0 e1                                      mov r0, r7
0069cfb0  6d c7 f1 eb                                      bl #0x30ed6c
0069cfb4  00 10 a0 e1                                      mov r1, r0
0069cfb8  08 00 a0 e1                                      mov r0, r8
0069cfbc  f8 c6 f1 eb                                      bl #0x30eba4
0069cfc0  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
0069cfc4  02 71 87 e2                                      add r7, r7, #0x80000000
0069cfc8  28 00 84 e5                                      str r0, [r4, #0x28]
0069cfcc  08 10 a0 e1                                      mov r1, r8
0069cfd0  07 00 a0 e1                                      mov r0, r7
0069cfd4  64 c7 f1 eb                                      bl #0x30ed6c
0069cfd8  09 10 a0 e1                                      mov r1, sb
0069cfdc  00 70 a0 e1                                      mov r7, r0
0069cfe0  06 00 a0 e1                                      mov r0, r6
0069cfe4  60 c7 f1 eb                                      bl #0x30ed6c
0069cfe8  00 10 a0 e1                                      mov r1, r0
0069cfec  07 00 a0 e1                                      mov r0, r7
0069cff0  eb c6 f1 eb                                      bl #0x30eba4
0069cff4  02 11 86 e2                                      add r1, r6, #0x80000000
0069cff8  2c 00 84 e5                                      str r0, [r4, #0x2c]
0069cffc  0a 00 a0 e1                                      mov r0, sl
0069d000  59 c7 f1 eb                                      bl #0x30ed6c
0069d004  08 10 a0 e1                                      mov r1, r8
0069d008  00 60 a0 e1                                      mov r6, r0
0069d00c  05 00 a0 e1                                      mov r0, r5
0069d010  55 c7 f1 eb                                      bl #0x30ed6c
0069d014  00 10 a0 e1                                      mov r1, r0
0069d018  06 00 a0 e1                                      mov r0, r6
0069d01c  e0 c6 f1 eb                                      bl #0x30eba4
0069d020  50 30 d4 e5                                      ldrb r3, [r4, #0x50]
0069d024  30 00 84 e5                                      str r0, [r4, #0x30]
0069d028  00 00 53 e3                                      cmp r3, #0
0069d02c  23 00 00 1a                                      bne #0x69d0c0
0069d030  04 00 9d e5                                      ldr r0, [sp, #4]
0069d034  1a c6 f1 eb                                      bl #0x30e8a4
0069d038  00 60 a0 e1                                      mov r6, r0
0069d03c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0069d040  01 70 a0 e1                                      mov r7, r1
0069d044  16 c6 f1 eb                                      bl #0x30e8a4
0069d048  81 2c 01 e3                                      movw r2, #0x1c81
0069d04c  52 31 0c e3                                      movw r3, #0xc152
0069d050  8e 20 44 e3                                      movt r2, #0x408e
0069d054  f0 3f 43 e3                                      movt r3, #0x3ff0
0069d058  95 c6 f1 eb                                      bl #0x30eab4
0069d05c  06 20 a0 e1                                      mov r2, r6
0069d060  07 30 a0 e1                                      mov r3, r7
0069d064  92 c6 f1 eb                                      bl #0x30eab4
0069d068  8c c5 f1 eb                                      bl #0x30e6a0
0069d06c  00 50 a0 e1                                      mov r5, r0
0069d070  40 00 94 e5                                      ldr r0, [r4, #0x40]
0069d074  0a c6 f1 eb                                      bl #0x30e8a4
0069d078  81 2c 01 e3                                      movw r2, #0x1c81
0069d07c  52 31 0c e3                                      movw r3, #0xc152
0069d080  8e 20 44 e3                                      movt r2, #0x408e
0069d084  f0 3f 43 e3                                      movt r3, #0x3ff0
0069d088  89 c6 f1 eb                                      bl #0x30eab4
0069d08c  00 20 a0 e1                                      mov r2, r0
0069d090  01 30 a0 e1                                      mov r3, r1
0069d094  06 00 a0 e1                                      mov r0, r6
0069d098  07 10 a0 e1                                      mov r1, r7
0069d09c  84 c6 f1 eb                                      bl #0x30eab4
0069d0a0  7e c5 f1 eb                                      bl #0x30e6a0
0069d0a4  00 10 a0 e1                                      mov r1, r0
0069d0a8  05 00 a0 e1                                      mov r0, r5
0069d0ac  be c4 f1 eb                                      bl #0x30e3ac
0069d0b0  4c 00 84 e5                                      str r0, [r4, #0x4c]
0069d0b4  04 00 a0 e1                                      mov r0, r4
0069d0b8  0c d0 8d e2                                      add sp, sp, #0xc
0069d0bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0069d0c0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0069d0c4  0b 00 a0 e1                                      mov r0, fp
0069d0c8  b5 c6 f1 eb                                      bl #0x30eba4
0069d0cc  14 c4 f1 eb                                      bl #0x30e124
0069d0d0  f3 c5 f1 eb                                      bl #0x30e8a4
0069d0d4  18 2d 02 e3                                      movw r2, #0x2d18
0069d0d8  fb 31 02 e3                                      movw r3, #0x21fb
0069d0dc  44 24 45 e3                                      movt r2, #0x5444
0069d0e0  09 30 44 e3                                      movt r3, #0x4009
0069d0e4  72 c6 f1 eb                                      bl #0x30eab4
0069d0e8  00 60 a0 e1                                      mov r6, r0
0069d0ec  34 00 94 e5                                      ldr r0, [r4, #0x34]
0069d0f0  01 70 a0 e1                                      mov r7, r1
0069d0f4  ea c5 f1 eb                                      bl #0x30e8a4
0069d0f8  00 20 a0 e1                                      mov r2, r0
0069d0fc  01 30 a0 e1                                      mov r3, r1
0069d100  06 00 a0 e1                                      mov r0, r6
0069d104  07 10 a0 e1                                      mov r1, r7
0069d108  69 c6 f1 eb                                      bl #0x30eab4
0069d10c  63 c5 f1 eb                                      bl #0x30e6a0
0069d110  4c 00 84 e5                                      str r0, [r4, #0x4c]
0069d114  e6 ff ff ea                                      b #0x69d0b4
; mapping-symbol data/literal pool
0069d118  c0 7d 2f 00 c4 31 00 00                          .byte 0xc0, 0x7d, 0x2f, 0x00, 0xc4, 0x31, 0x00, 0x00

; FUNCTION 0x0069e008, declared_size=436, range_size=436, mode=arm
; class-group: glitch::ps::PDCone
; alias: _ZNK6glitch2ps6PDCone8generateERNS0_8PSRandomE
; demangled: glitch::ps::PDCone::generate(glitch::ps::PSRandom&) const
; decoder-mode: arm
0069e008  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0069e00c  00 60 a0 e1                                      mov r6, r0
0069e010  02 00 a0 e1                                      mov r0, r2
0069e014  02 70 a0 e1                                      mov r7, r2
0069e018  01 40 a0 e1                                      mov r4, r1
0069e01c  95 47 fe eb                                      bl #0x62fe78
0069e020  9e c1 f1 eb                                      bl #0x30e6a0
0069e024  00 50 a0 e1                                      mov r5, r0
0069e028  07 00 a0 e1                                      mov r0, r7
0069e02c  91 47 fe eb                                      bl #0x62fe78
0069e030  9a c1 f1 eb                                      bl #0x30e6a0
0069e034  00 10 a0 e1                                      mov r1, r0
0069e038  d9 c2 f1 eb                                      bl #0x30eba4
0069e03c  db 1f 00 e3                                      movw r1, #0xfdb
0069e040  49 10 44 e3                                      movt r1, #0x4049
0069e044  48 c3 f1 eb                                      bl #0x30ed6c
0069e048  00 80 a0 e1                                      mov r8, r0
0069e04c  07 00 a0 e1                                      mov r0, r7
0069e050  38 70 94 e5                                      ldr r7, [r4, #0x38]
0069e054  87 47 fe eb                                      bl #0x62fe78
0069e058  90 c1 f1 eb                                      bl #0x30e6a0
0069e05c  44 10 94 e5                                      ldr r1, [r4, #0x44]
0069e060  41 c3 f1 eb                                      bl #0x30ed6c
0069e064  00 10 a0 e1                                      mov r1, r0
0069e068  07 00 a0 e1                                      mov r0, r7
0069e06c  cc c2 f1 eb                                      bl #0x30eba4
0069e070  00 70 a0 e1                                      mov r7, r0
0069e074  08 00 a0 e1                                      mov r0, r8
0069e078  b5 c1 f1 eb                                      bl #0x30e754
0069e07c  07 10 a0 e1                                      mov r1, r7
0069e080  39 c3 f1 eb                                      bl #0x30ed6c
0069e084  00 a0 a0 e1                                      mov sl, r0
0069e088  08 00 a0 e1                                      mov r0, r8
0069e08c  9d c2 f1 eb                                      bl #0x30eb08
0069e090  07 10 a0 e1                                      mov r1, r7
0069e094  34 c3 f1 eb                                      bl #0x30ed6c
0069e098  05 10 a0 e1                                      mov r1, r5
0069e09c  00 70 a0 e1                                      mov r7, r0
0069e0a0  0a 00 a0 e1                                      mov r0, sl
0069e0a4  30 c3 f1 eb                                      bl #0x30ed6c
0069e0a8  05 10 a0 e1                                      mov r1, r5
0069e0ac  00 80 a0 e1                                      mov r8, r0
0069e0b0  07 00 a0 e1                                      mov r0, r7
0069e0b4  2c c3 f1 eb                                      bl #0x30ed6c
0069e0b8  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069e0bc  00 70 a0 e1                                      mov r7, r0
0069e0c0  05 00 a0 e1                                      mov r0, r5
0069e0c4  28 c3 f1 eb                                      bl #0x30ed6c
0069e0c8  08 10 94 e5                                      ldr r1, [r4, #8]
0069e0cc  b4 c2 f1 eb                                      bl #0x30eba4
0069e0d0  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069e0d4  00 a0 a0 e1                                      mov sl, r0
0069e0d8  08 00 a0 e1                                      mov r0, r8
0069e0dc  22 c3 f1 eb                                      bl #0x30ed6c
0069e0e0  00 10 a0 e1                                      mov r1, r0
0069e0e4  0a 00 a0 e1                                      mov r0, sl
0069e0e8  ad c2 f1 eb                                      bl #0x30eba4
0069e0ec  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0069e0f0  00 a0 a0 e1                                      mov sl, r0
0069e0f4  07 00 a0 e1                                      mov r0, r7
0069e0f8  1b c3 f1 eb                                      bl #0x30ed6c
0069e0fc  00 10 a0 e1                                      mov r1, r0
0069e100  0a 00 a0 e1                                      mov r0, sl
0069e104  a6 c2 f1 eb                                      bl #0x30eba4
0069e108  18 10 94 e5                                      ldr r1, [r4, #0x18]
0069e10c  00 90 a0 e1                                      mov sb, r0
0069e110  05 00 a0 e1                                      mov r0, r5
0069e114  14 c3 f1 eb                                      bl #0x30ed6c
0069e118  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0069e11c  a0 c2 f1 eb                                      bl #0x30eba4
0069e120  24 10 94 e5                                      ldr r1, [r4, #0x24]
0069e124  00 a0 a0 e1                                      mov sl, r0
0069e128  08 00 a0 e1                                      mov r0, r8
0069e12c  0e c3 f1 eb                                      bl #0x30ed6c
0069e130  00 10 a0 e1                                      mov r1, r0
0069e134  0a 00 a0 e1                                      mov r0, sl
0069e138  99 c2 f1 eb                                      bl #0x30eba4
0069e13c  30 10 94 e5                                      ldr r1, [r4, #0x30]
0069e140  00 a0 a0 e1                                      mov sl, r0
0069e144  07 00 a0 e1                                      mov r0, r7
0069e148  07 c3 f1 eb                                      bl #0x30ed6c
0069e14c  00 10 a0 e1                                      mov r1, r0
0069e150  0a 00 a0 e1                                      mov r0, sl
0069e154  92 c2 f1 eb                                      bl #0x30eba4
0069e158  10 10 94 e5                                      ldr r1, [r4, #0x10]
0069e15c  00 a0 a0 e1                                      mov sl, r0
0069e160  05 00 a0 e1                                      mov r0, r5
0069e164  00 c3 f1 eb                                      bl #0x30ed6c
0069e168  04 10 94 e5                                      ldr r1, [r4, #4]
0069e16c  8c c2 f1 eb                                      bl #0x30eba4
0069e170  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0069e174  00 50 a0 e1                                      mov r5, r0
0069e178  08 00 a0 e1                                      mov r0, r8
0069e17c  fa c2 f1 eb                                      bl #0x30ed6c
0069e180  00 10 a0 e1                                      mov r1, r0
0069e184  05 00 a0 e1                                      mov r0, r5
0069e188  85 c2 f1 eb                                      bl #0x30eba4
0069e18c  28 10 94 e5                                      ldr r1, [r4, #0x28]
0069e190  00 50 a0 e1                                      mov r5, r0
0069e194  07 00 a0 e1                                      mov r0, r7
0069e198  f3 c2 f1 eb                                      bl #0x30ed6c
0069e19c  00 10 a0 e1                                      mov r1, r0
0069e1a0  05 00 a0 e1                                      mov r0, r5
0069e1a4  7e c2 f1 eb                                      bl #0x30eba4
0069e1a8  00 00 86 e5                                      str r0, [r6]
0069e1ac  04 90 86 e5                                      str sb, [r6, #4]
0069e1b0  08 a0 86 e5                                      str sl, [r6, #8]
0069e1b4  06 00 a0 e1                                      mov r0, r6
0069e1b8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
