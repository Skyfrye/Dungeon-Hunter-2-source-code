; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e3df4, declared_size=8, range_size=8, mode=arm
; class-group: Projectile
; alias: _ZNK10Projectile6IsDeadEv
; demangled: Projectile::IsDead() const
; decoder-mode: arm
003e3df4  d0 03 d0 e5                                      ldrb r0, [r0, #0x3d0]
003e3df8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e3dfc, declared_size=8, range_size=8, mode=arm
; class-group: Projectile
; alias: _ZNK10Projectile25IsValidatingFloorPositionEv
; demangled: Projectile::IsValidatingFloorPosition() const
; decoder-mode: arm
003e3dfc  02 00 a0 e3                                      mov r0, #2
003e3e00  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e3e04, declared_size=8, range_size=8, mode=arm
; class-group: Projectile
; alias: _ZNK10Projectile9IsZonableEv
; demangled: Projectile::IsZonable() const
; decoder-mode: arm
003e3e04  00 00 a0 e3                                      mov r0, #0
003e3e08  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e3e0c, declared_size=8, range_size=8, mode=arm
; class-group: Projectile
; alias: _ZNK10Projectile11IsUpdatableEv
; demangled: Projectile::IsUpdatable() const
; decoder-mode: arm
003e3e0c  01 00 a0 e3                                      mov r0, #1
003e3e10  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e3e14, declared_size=8, range_size=8, mode=arm
; class-group: Projectile
; alias: _ZNK10Projectile10IsAnimatedEv
; demangled: Projectile::IsAnimated() const
; decoder-mode: arm
003e3e14  01 00 a0 e3                                      mov r0, #1
003e3e18  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e3e1c, declared_size=8, range_size=8, mode=arm
; class-group: Projectile
; alias: _ZNK10Projectile13IsInteractiveEP10GameObject
; demangled: Projectile::IsInteractive(GameObject*) const
; decoder-mode: arm
003e3e1c  00 00 a0 e3                                      mov r0, #0
003e3e20  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e4da8, declared_size=8, range_size=8, mode=arm
; class-group: Projectile
; alias: _ZNK10Projectile8GetSpeedEv
; demangled: Projectile::GetSpeed() const
; decoder-mode: arm
003e4da8  ac 03 90 e5                                      ldr r0, [r0, #0x3ac]
003e4dac  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e4db0, declared_size=316, range_size=316, mode=arm
; class-group: Projectile
; alias: _ZN10Projectile14HandleImpactFXENS_10ImpactTypeERK7Point3DIfE
; demangled: Projectile::HandleImpactFX(Projectile::ImpactType, Point3D<float> const&)
; decoder-mode: arm
003e4db0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003e4db4  20 41 9f e5                                      ldr r4, [pc, #0x120]
003e4db8  24 d0 4d e2                                      sub sp, sp, #0x24
003e4dbc  02 50 a0 e1                                      mov r5, r2
003e4dc0  04 40 8f e0                                      add r4, pc, r4
003e4dc4  03 00 51 e3                                      cmp r1, #3
003e4dc8  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
003e4dcc  39 00 00 ea                                      b #0x3e4eb8
003e4dd0  28 00 00 ea                                      b #0x3e4e78
003e4dd4  01 00 00 ea                                      b #0x3e4de0
003e4dd8  28 00 00 ea                                      b #0x3e4e80
003e4ddc  27 00 00 ea                                      b #0x3e4e80
003e4de0  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
003e4de4  74 33 90 e5                                      ldr r3, [r0, #0x374]
003e4de8  48 10 a0 e3                                      mov r1, #0x48
003e4dec  02 20 94 e7                                      ldr r2, [r4, r2]
003e4df0  00 20 92 e5                                      ldr r2, [r2]
003e4df4  91 23 23 e0                                      mla r3, r1, r3, r2
003e4df8  0c 60 93 e5                                      ldr r6, [r3, #0xc]
003e4dfc  08 10 93 e5                                      ldr r1, [r3, #8]
003e4e00  01 00 71 e3                                      cmn r1, #1
003e4e04  06 00 00 0a                                      beq #0x3e4e24
003e4e08  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
003e4e0c  00 c0 a0 e3                                      mov ip, #0
003e4e10  05 20 a0 e1                                      mov r2, r5
003e4e14  03 00 94 e7                                      ldr r0, [r4, r3]
003e4e18  0c 30 a0 e1                                      mov r3, ip
003e4e1c  00 c0 8d e5                                      str ip, [sp]
003e4e20  bb c3 02 eb                                      bl #0x495d14
003e4e24  01 00 76 e3                                      cmn r6, #1
003e4e28  12 00 00 0a                                      beq #0x3e4e78
003e4e2c  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
003e4e30  08 e0 95 e5                                      ldr lr, [r5, #8]
003e4e34  00 70 95 e5                                      ldr r7, [r5]
003e4e38  03 30 94 e7                                      ldr r3, [r4, r3]
003e4e3c  04 40 95 e5                                      ldr r4, [r5, #4]
003e4e40  bf c4 a0 e3                                      mov ip, #0xbf000000
003e4e44  00 00 93 e5                                      ldr r0, [r3]
003e4e48  02 c5 8c e2                                      add ip, ip, #0x800000
003e4e4c  1c e0 8d e5                                      str lr, [sp, #0x1c]
003e4e50  06 10 a0 e1                                      mov r1, r6
003e4e54  01 e0 a0 e3                                      mov lr, #1
003e4e58  14 20 8d e2                                      add r2, sp, #0x14
003e4e5c  00 30 a0 e3                                      mov r3, #0
003e4e60  14 70 8d e5                                      str r7, [sp, #0x14]
003e4e64  18 40 8d e5                                      str r4, [sp, #0x18]
003e4e68  00 e0 8d e5                                      str lr, [sp]
003e4e6c  08 c0 8d e5                                      str ip, [sp, #8]
003e4e70  04 c0 8d e5                                      str ip, [sp, #4]
003e4e74  d7 19 fe eb                                      bl #0x36b5d8
003e4e78  24 d0 8d e2                                      add sp, sp, #0x24
003e4e7c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003e4e80  58 20 9f e5                                      ldr r2, [pc, #0x58]
003e4e84  74 33 90 e5                                      ldr r3, [r0, #0x374]
003e4e88  48 10 a0 e3                                      mov r1, #0x48
003e4e8c  02 20 94 e7                                      ldr r2, [r4, r2]
003e4e90  00 20 92 e5                                      ldr r2, [r2]
003e4e94  91 23 23 e0                                      mla r3, r1, r3, r2
003e4e98  30 60 93 e5                                      ldr r6, [r3, #0x30]
003e4e9c  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
003e4ea0  01 00 76 e3                                      cmn r6, #1
003e4ea4  09 00 00 0a                                      beq #0x3e4ed0
003e4ea8  01 00 71 e3                                      cmn r1, #1
003e4eac  d5 ff ff 1a                                      bne #0x3e4e08
003e4eb0  14 10 93 e5                                      ldr r1, [r3, #0x14]
003e4eb4  d1 ff ff ea                                      b #0x3e4e00
003e4eb8  20 20 9f e5                                      ldr r2, [pc, #0x20]
003e4ebc  74 33 90 e5                                      ldr r3, [r0, #0x374]
003e4ec0  48 10 a0 e3                                      mov r1, #0x48
003e4ec4  02 20 94 e7                                      ldr r2, [r4, r2]
003e4ec8  00 20 92 e5                                      ldr r2, [r2]
003e4ecc  91 23 23 e0                                      mla r3, r1, r3, r2
003e4ed0  18 60 93 e5                                      ldr r6, [r3, #0x18]
003e4ed4  14 10 93 e5                                      ldr r1, [r3, #0x14]
003e4ed8  c8 ff ff ea                                      b #0x3e4e00
; mapping-symbol data/literal pool
003e4edc  d0 fc 5a 00 40 23 00 00 08 1b 00 00 a4 0d 00 00  .byte 0xd0, 0xfc, 0x5a, 0x00, 0x40, 0x23, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x003e4eec, declared_size=248, range_size=248, mode=arm
; class-group: Projectile
; alias: _ZN10Projectile14HandleImpactFXEP10GameObjectRK7Point2DIfE
; demangled: Projectile::HandleImpactFX(GameObject*, Point2D<float> const&)
; decoder-mode: arm
003e4eec  70 40 2d e9                                      push {r4, r5, r6, lr}
003e4ef0  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
003e4ef4  00 40 51 e2                                      subs r4, r1, #0
003e4ef8  18 d0 4d e2                                      sub sp, sp, #0x18
003e4efc  00 60 a0 e1                                      mov r6, r0
003e4f00  03 30 8f e0                                      add r3, pc, r3
003e4f04  02 50 a0 e1                                      mov r5, r2
003e4f08  1a 00 00 0a                                      beq #0x3e4f78
003e4f0c  00 30 94 e5                                      ldr r3, [r4]
003e4f10  04 00 a0 e1                                      mov r0, r4
003e4f14  0f e0 a0 e1                                      mov lr, pc
003e4f18  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003e4f1c  00 00 50 e3                                      cmp r0, #0
003e4f20  0d 00 00 1a                                      bne #0x3e4f5c
003e4f24  04 00 a0 e1                                      mov r0, r4
003e4f28  04 40 95 e5                                      ldr r4, [r5, #4]
003e4f2c  00 50 95 e5                                      ldr r5, [r5]
003e4f30  a9 b9 fe eb                                      bl #0x3935dc
003e4f34  08 30 90 e5                                      ldr r3, [r0, #8]
003e4f38  03 10 a0 e3                                      mov r1, #3
003e4f3c  06 00 a0 e1                                      mov r0, r6
003e4f40  0c 20 8d e2                                      add r2, sp, #0xc
003e4f44  0c 50 8d e5                                      str r5, [sp, #0xc]
003e4f48  10 40 8d e5                                      str r4, [sp, #0x10]
003e4f4c  14 30 8d e5                                      str r3, [sp, #0x14]
003e4f50  96 ff ff eb                                      bl #0x3e4db0
003e4f54  18 d0 8d e2                                      add sp, sp, #0x18
003e4f58  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e4f5c  04 00 a0 e1                                      mov r0, r4
003e4f60  9d b9 fe eb                                      bl #0x3935dc
003e4f64  04 10 a0 e3                                      mov r1, #4
003e4f68  00 20 a0 e1                                      mov r2, r0
003e4f6c  06 00 a0 e1                                      mov r0, r6
003e4f70  8e ff ff eb                                      bl #0x3e4db0
003e4f74  f6 ff ff ea                                      b #0x3e4f54
003e4f78  50 20 9f e5                                      ldr r2, [pc, #0x50]
003e4f7c  02 20 93 e7                                      ldr r2, [r3, r2]
003e4f80  00 20 92 e5                                      ldr r2, [r2]
003e4f84  02 00 52 e3                                      cmp r2, #2
003e4f88  00 40 84 05                                      streq r4, [r4]
003e4f8c  de ff ff 0a                                      beq #0x3e4f0c
003e4f90  01 00 52 e3                                      cmp r2, #1
003e4f94  dc ff ff 1a                                      bne #0x3e4f0c
003e4f98  34 00 9f e5                                      ldr r0, [pc, #0x34]
003e4f9c  34 10 9f e5                                      ldr r1, [pc, #0x34]
003e4fa0  34 20 9f e5                                      ldr r2, [pc, #0x34]
003e4fa4  00 00 93 e7                                      ldr r0, [r3, r0]
003e4fa8  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e4fac  52 c1 00 e3                                      movw ip, #0x152
003e4fb0  01 10 8f e0                                      add r1, pc, r1
003e4fb4  02 20 8f e0                                      add r2, pc, r2
003e4fb8  03 30 8f e0                                      add r3, pc, r3
003e4fbc  a8 00 80 e2                                      add r0, r0, #0xa8
003e4fc0  00 c0 8d e5                                      str ip, [sp]
003e4fc4  0e a4 fc eb                                      bl #0x30e004
003e4fc8  cf ff ff ea                                      b #0x3e4f0c
; mapping-symbol data/literal pool
003e4fcc  90 fb 5a 00 c0 39 00 00 c0 19 00 00 28 94 4d 00  .byte 0x90, 0xfb, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x28, 0x94, 0x4d, 0x00
003e4fdc  e4 d3 4d 00 10 10 4e 00                          .byte 0xe4, 0xd3, 0x4d, 0x00, 0x10, 0x10, 0x4e, 0x00

; FUNCTION 0x003e4fe4, declared_size=148, range_size=148, mode=arm
; class-group: Projectile
; alias: _ZN10Projectile10SetManagerEP17ProjectileManager
; demangled: Projectile::SetManager(ProjectileManager*)
; decoder-mode: arm
003e4fe4  30 40 2d e9                                      push {r4, r5, lr}
003e4fe8  70 30 9f e5                                      ldr r3, [pc, #0x70]
003e4fec  00 40 51 e2                                      subs r4, r1, #0
003e4ff0  0c d0 4d e2                                      sub sp, sp, #0xc
003e4ff4  00 50 a0 e1                                      mov r5, r0
003e4ff8  03 30 8f e0                                      add r3, pc, r3
003e4ffc  02 00 00 0a                                      beq #0x3e500c
003e5000  78 43 85 e5                                      str r4, [r5, #0x378]
003e5004  0c d0 8d e2                                      add sp, sp, #0xc
003e5008  30 80 bd e8                                      pop {r4, r5, pc}
003e500c  50 20 9f e5                                      ldr r2, [pc, #0x50]
003e5010  02 20 93 e7                                      ldr r2, [r3, r2]
003e5014  00 20 92 e5                                      ldr r2, [r2]
003e5018  02 00 52 e3                                      cmp r2, #2
003e501c  00 40 84 05                                      streq r4, [r4]
003e5020  f6 ff ff 0a                                      beq #0x3e5000
003e5024  01 00 52 e3                                      cmp r2, #1
003e5028  f4 ff ff 1a                                      bne #0x3e5000
003e502c  34 00 9f e5                                      ldr r0, [pc, #0x34]
003e5030  34 10 9f e5                                      ldr r1, [pc, #0x34]
003e5034  34 20 9f e5                                      ldr r2, [pc, #0x34]
003e5038  00 00 93 e7                                      ldr r0, [r3, r0]
003e503c  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e5040  44 c0 a0 e3                                      mov ip, #0x44
003e5044  01 10 8f e0                                      add r1, pc, r1
003e5048  02 20 8f e0                                      add r2, pc, r2
003e504c  03 30 8f e0                                      add r3, pc, r3
003e5050  a8 00 80 e2                                      add r0, r0, #0xa8
003e5054  00 c0 8d e5                                      str ip, [sp]
003e5058  e9 a3 fc eb                                      bl #0x30e004
003e505c  e7 ff ff ea                                      b #0x3e5000
; mapping-symbol data/literal pool
003e5060  98 fa 5a 00 c0 39 00 00 c0 19 00 00 94 93 4d 00  .byte 0x98, 0xfa, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x94, 0x93, 0x4d, 0x00
003e5070  d0 0f 4e 00 7c 0f 4e 00                          .byte 0xd0, 0x0f, 0x4e, 0x00, 0x7c, 0x0f, 0x4e, 0x00

; FUNCTION 0x003e5078, declared_size=312, range_size=312, mode=arm
; class-group: Projectile
; alias: _ZN10Projectile8OnExpireENS_10ImpactTypeE
; demangled: Projectile::OnExpire(Projectile::ImpactType)
; decoder-mode: arm
003e5078  24 31 9f e5                                      ldr r3, [pc, #0x124]
003e507c  24 21 9f e5                                      ldr r2, [pc, #0x124]
003e5080  30 40 2d e9                                      push {r4, r5, lr}
003e5084  03 30 8f e0                                      add r3, pc, r3
003e5088  02 20 93 e7                                      ldr r2, [r3, r2]
003e508c  00 40 a0 e1                                      mov r4, r0
003e5090  74 03 90 e5                                      ldr r0, [r0, #0x374]
003e5094  00 20 92 e5                                      ldr r2, [r2]
003e5098  01 50 a0 e1                                      mov r5, r1
003e509c  48 10 a0 e3                                      mov r1, #0x48
003e50a0  91 20 22 e0                                      mla r2, r1, r0, r2
003e50a4  3c d0 4d e2                                      sub sp, sp, #0x3c
003e50a8  34 20 d2 e5                                      ldrb r2, [r2, #0x34]
003e50ac  00 00 52 e3                                      cmp r2, #0
003e50b0  19 00 00 0a                                      beq #0x3e511c
003e50b4  d8 c1 94 e5                                      ldr ip, [r4, #0x1d8]
003e50b8  d4 e1 94 e5                                      ldr lr, [r4, #0x1d4]
003e50bc  00 20 a0 e3                                      mov r2, #0
003e50c0  00 00 5c e3                                      cmp ip, #0
003e50c4  28 20 8d e5                                      str r2, [sp, #0x28]
003e50c8  34 20 8d e5                                      str r2, [sp, #0x34]
003e50cc  20 20 8d e5                                      str r2, [sp, #0x20]
003e50d0  24 20 8d e5                                      str r2, [sp, #0x24]
003e50d4  30 c0 8d e5                                      str ip, [sp, #0x30]
003e50d8  2c e0 8d e5                                      str lr, [sp, #0x2c]
003e50dc  1a 00 00 0a                                      beq #0x3e514c
003e50e0  0c 00 a0 e1                                      mov r0, ip
003e50e4  e5 1f 84 e2                                      add r1, r4, #0x394
003e50e8  34 20 8d e2                                      add r2, sp, #0x34
003e50ec  20 30 8d e2                                      add r3, sp, #0x20
003e50f0  79 da 04 eb                                      bl #0x51badc
003e50f4  98 33 94 e5                                      ldr r3, [r4, #0x398]
003e50f8  94 c3 94 e5                                      ldr ip, [r4, #0x394]
003e50fc  04 00 a0 e1                                      mov r0, r4
003e5100  18 30 8d e5                                      str r3, [sp, #0x18]
003e5104  34 30 9d e5                                      ldr r3, [sp, #0x34]
003e5108  14 10 8d e2                                      add r1, sp, #0x14
003e510c  01 20 a0 e3                                      mov r2, #1
003e5110  14 c0 8d e5                                      str ip, [sp, #0x14]
003e5114  1c 30 8d e5                                      str r3, [sp, #0x1c]
003e5118  25 bb fe eb                                      bl #0x393db4
003e511c  00 30 a0 e3                                      mov r3, #0
003e5120  cc 33 84 e5                                      str r3, [r4, #0x3cc]
003e5124  01 30 a0 e3                                      mov r3, #1
003e5128  d1 33 c4 e5                                      strb r3, [r4, #0x3d1]
003e512c  04 00 a0 e1                                      mov r0, r4
003e5130  29 b9 fe eb                                      bl #0x3935dc
003e5134  05 10 a0 e1                                      mov r1, r5
003e5138  00 20 a0 e1                                      mov r2, r0
003e513c  04 00 a0 e1                                      mov r0, r4
003e5140  1a ff ff eb                                      bl #0x3e4db0
003e5144  3c d0 8d e2                                      add sp, sp, #0x3c
003e5148  30 80 bd e8                                      pop {r4, r5, pc}
003e514c  00 00 5e e3                                      cmp lr, #0
003e5150  08 00 00 0a                                      beq #0x3e5178
003e5154  0e 00 a0 e1                                      mov r0, lr
003e5158  e5 1f 84 e2                                      add r1, r4, #0x394
003e515c  30 e0 8d e2                                      add lr, sp, #0x30
003e5160  34 20 8d e2                                      add r2, sp, #0x34
003e5164  20 30 8d e2                                      add r3, sp, #0x20
003e5168  00 e0 8d e5                                      str lr, [sp]
003e516c  04 c0 8d e5                                      str ip, [sp, #4]
003e5170  88 ef 04 eb                                      bl #0x520f98
003e5174  de ff ff ea                                      b #0x3e50f4
003e5178  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003e517c  2c c0 8d e2                                      add ip, sp, #0x2c
003e5180  00 c0 8d e5                                      str ip, [sp]
003e5184  02 00 93 e7                                      ldr r0, [r3, r2]
003e5188  30 c0 8d e2                                      add ip, sp, #0x30
003e518c  e5 1f 84 e2                                      add r1, r4, #0x394
003e5190  34 20 8d e2                                      add r2, sp, #0x34
003e5194  20 30 8d e2                                      add r3, sp, #0x20
003e5198  00 50 8d e9                                      stmib sp, {ip, lr}
003e519c  d9 00 05 eb                                      bl #0x525508
003e51a0  d3 ff ff ea                                      b #0x3e50f4
; mapping-symbol data/literal pool
003e51a4  0c fa 5a 00 40 23 00 00 04 12 00 00              .byte 0x0c, 0xfa, 0x5a, 0x00, 0x40, 0x23, 0x00, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x003e51b0, declared_size=1028, range_size=1028, mode=arm
; class-group: Projectile
; alias: _ZN10Projectile6UpdateEv
; demangled: Projectile::Update()
; decoder-mode: arm
003e51b0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003e51b4  d1 33 d0 e5                                      ldrb r3, [r0, #0x3d1]
003e51b8  e4 53 9f e5                                      ldr r5, [pc, #0x3e4]
003e51bc  34 d0 4d e2                                      sub sp, sp, #0x34
003e51c0  00 00 53 e3                                      cmp r3, #0
003e51c4  00 40 a0 e1                                      mov r4, r0
003e51c8  05 50 8f e0                                      add r5, pc, r5
003e51cc  1a 00 00 0a                                      beq #0x3e523c
003e51d0  bc 33 90 e5                                      ldr r3, [r0, #0x3bc]
003e51d4  00 00 53 e3                                      cmp r3, #0
003e51d8  03 00 a0 01                                      moveq r0, r3
003e51dc  01 00 00 0a                                      beq #0x3e51e8
003e51e0  c0 13 94 e5                                      ldr r1, [r4, #0x3c0]
003e51e4  33 ff 2f e1                                      blx r3
003e51e8  cc 13 94 e5                                      ldr r1, [r4, #0x3cc]
003e51ec  00 00 51 e3                                      cmp r1, #0
003e51f0  04 00 00 0a                                      beq #0x3e5208
003e51f4  00 00 50 e3                                      cmp r0, #0
003e51f8  0a 00 00 1a                                      bne #0x3e5228
003e51fc  04 00 a0 e1                                      mov r0, r4
003e5200  f1 2f 84 e2                                      add r2, r4, #0x3c4
003e5204  38 ff ff eb                                      bl #0x3e4eec
003e5208  00 20 a0 e3                                      mov r2, #0
003e520c  01 30 a0 e3                                      mov r3, #1
003e5210  d0 33 c4 e5                                      strb r3, [r4, #0x3d0]
003e5214  d1 23 c4 e5                                      strb r2, [r4, #0x3d1]
003e5218  04 10 a0 e1                                      mov r1, r4
003e521c  78 03 94 e5                                      ldr r0, [r4, #0x378]
003e5220  e3 03 00 eb                                      bl #0x3e61b4
003e5224  11 00 00 ea                                      b #0x3e5270
003e5228  01 00 50 e3                                      cmp r0, #1
003e522c  02 00 00 1a                                      bne #0x3e523c
003e5230  00 30 a0 e3                                      mov r3, #0
003e5234  d1 33 c4 e5                                      strb r3, [r4, #0x3d1]
003e5238  d0 33 c4 e5                                      strb r3, [r4, #0x3d0]
003e523c  84 33 94 e5                                      ldr r3, [r4, #0x384]
003e5240  00 00 53 e3                                      cmp r3, #0
003e5244  06 00 00 0a                                      beq #0x3e5264
003e5248  03 00 a0 e1                                      mov r0, r3
003e524c  00 30 93 e5                                      ldr r3, [r3]
003e5250  0f e0 a0 e1                                      mov lr, pc
003e5254  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003e5258  00 00 50 e3                                      cmp r0, #0
003e525c  00 30 a0 13                                      movne r3, #0
003e5260  84 33 84 15                                      strne r3, [r4, #0x384]
003e5264  d0 33 d4 e5                                      ldrb r3, [r4, #0x3d0]
003e5268  00 00 53 e3                                      cmp r3, #0
003e526c  01 00 00 0a                                      beq #0x3e5278
003e5270  34 d0 8d e2                                      add sp, sp, #0x34
003e5274  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003e5278  04 00 a0 e1                                      mov r0, r4
003e527c  d6 b8 fe eb                                      bl #0x3935dc
003e5280  00 20 90 e5                                      ldr r2, [r0]
003e5284  74 33 94 e5                                      ldr r3, [r4, #0x374]
003e5288  94 23 84 e5                                      str r2, [r4, #0x394]
003e528c  04 10 90 e5                                      ldr r1, [r0, #4]
003e5290  10 23 9f e5                                      ldr r2, [pc, #0x310]
003e5294  98 13 84 e5                                      str r1, [r4, #0x398]
003e5298  08 10 90 e5                                      ldr r1, [r0, #8]
003e529c  02 20 95 e7                                      ldr r2, [r5, r2]
003e52a0  9c 13 84 e5                                      str r1, [r4, #0x39c]
003e52a4  00 20 92 e5                                      ldr r2, [r2]
003e52a8  48 10 a0 e3                                      mov r1, #0x48
003e52ac  91 23 23 e0                                      mla r3, r1, r3, r2
003e52b0  35 30 d3 e5                                      ldrb r3, [r3, #0x35]
003e52b4  00 00 53 e3                                      cmp r3, #0
003e52b8  50 00 00 0a                                      beq #0x3e5400
003e52bc  84 03 94 e5                                      ldr r0, [r4, #0x384]
003e52c0  00 00 50 e3                                      cmp r0, #0
003e52c4  4d 00 00 0a                                      beq #0x3e5400
003e52c8  c3 b8 fe eb                                      bl #0x3935dc
003e52cc  00 10 a0 e1                                      mov r1, r0
003e52d0  04 00 a0 e1                                      mov r0, r4
003e52d4  c9 b8 fe eb                                      bl #0x393600
003e52d8  04 00 a0 e1                                      mov r0, r4
003e52dc  41 9e fe eb                                      bl #0x38cbe8
003e52e0  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
003e52e4  ac 73 94 e5                                      ldr r7, [r4, #0x3ac]
003e52e8  b0 83 94 e5                                      ldr r8, [r4, #0x3b0]
003e52ec  03 60 95 e7                                      ldr r6, [r5, r3]
003e52f0  06 00 a0 e1                                      mov r0, r6
003e52f4  dc e8 fc eb                                      bl #0x31f66c
003e52f8  f8 a3 fc eb                                      bl #0x30e2e0
003e52fc  00 10 a0 e1                                      mov r1, r0
003e5300  08 00 a0 e1                                      mov r0, r8
003e5304  98 a6 fc eb                                      bl #0x30ed6c
003e5308  31 13 a0 e3                                      mov r1, #0xc4000000
003e530c  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e5310  5f a6 fc eb                                      bl #0x30ec94
003e5314  00 10 a0 e1                                      mov r1, r0
003e5318  07 00 a0 e1                                      mov r0, r7
003e531c  20 a6 fc eb                                      bl #0x30eba4
003e5320  ac 03 84 e5                                      str r0, [r4, #0x3ac]
003e5324  06 00 a0 e1                                      mov r0, r6
003e5328  b4 63 94 e5                                      ldr r6, [r4, #0x3b4]
003e532c  ce e8 fc eb                                      bl #0x31f66c
003e5330  06 00 60 e0                                      rsb r0, r0, r6
003e5334  00 00 50 e3                                      cmp r0, #0
003e5338  b4 03 84 e5                                      str r0, [r4, #0x3b4]
003e533c  88 00 00 da                                      ble #0x3e5564
003e5340  ac 03 94 e5                                      ldr r0, [r4, #0x3ac]
003e5344  00 10 a0 e3                                      mov r1, #0
003e5348  97 a5 fc eb                                      bl #0x30e9ac
003e534c  00 00 50 e3                                      cmp r0, #0
003e5350  83 00 00 1a                                      bne #0x3e5564
003e5354  a8 03 94 e5                                      ldr r0, [r4, #0x3a8]
003e5358  00 10 a0 e3                                      mov r1, #0
003e535c  54 a4 fc eb                                      bl #0x30e4b4
003e5360  00 00 50 e3                                      cmp r0, #0
003e5364  59 00 00 1a                                      bne #0x3e54d0
003e5368  40 72 9f e5                                      ldr r7, [pc, #0x240]
003e536c  00 c0 a0 e3                                      mov ip, #0
003e5370  28 e0 8d e2                                      add lr, sp, #0x28
003e5374  16 6e 84 e2                                      add r6, r4, #0x160
003e5378  04 e0 8d e5                                      str lr, [sp, #4]
003e537c  07 00 95 e7                                      ldr r0, [r5, r7]
003e5380  01 e0 a0 e3                                      mov lr, #1
003e5384  0c 30 a0 e1                                      mov r3, ip
003e5388  06 10 a0 e1                                      mov r1, r6
003e538c  2c 20 8d e2                                      add r2, sp, #0x2c
003e5390  08 e0 8d e5                                      str lr, [sp, #8]
003e5394  00 c0 8d e5                                      str ip, [sp]
003e5398  5a 00 05 eb                                      bl #0x525508
003e539c  00 00 50 e3                                      cmp r0, #0
003e53a0  73 00 00 0a                                      beq #0x3e5574
003e53a4  28 10 9d e5                                      ldr r1, [sp, #0x28]
003e53a8  00 00 51 e3                                      cmp r1, #0
003e53ac  70 00 00 0a                                      beq #0x3e5574
003e53b0  72 0f 84 e2                                      add r0, r4, #0x1c8
003e53b4  9d fb 04 eb                                      bl #0x524230
003e53b8  00 00 50 e3                                      cmp r0, #0
003e53bc  03 00 00 1a                                      bne #0x3e53d0
003e53c0  28 30 9d e5                                      ldr r3, [sp, #0x28]
003e53c4  24 30 93 e5                                      ldr r3, [r3, #0x24]
003e53c8  02 04 13 e3                                      tst r3, #0x2000000
003e53cc  07 00 00 0a                                      beq #0x3e53f0
003e53d0  a4 33 94 e5                                      ldr r3, [r4, #0x3a4]
003e53d4  00 00 53 e3                                      cmp r3, #0
003e53d8  a4 ff ff 0a                                      beq #0x3e5270
003e53dc  a0 03 94 e5                                      ldr r0, [r4, #0x3a0]
003e53e0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
003e53e4  70 a5 fc eb                                      bl #0x30e9ac
003e53e8  00 00 50 e3                                      cmp r0, #0
003e53ec  9f ff ff 0a                                      beq #0x3e5270
003e53f0  04 00 a0 e1                                      mov r0, r4
003e53f4  02 10 a0 e3                                      mov r1, #2
003e53f8  1e ff ff eb                                      bl #0x3e5078
003e53fc  9b ff ff ea                                      b #0x3e5270
003e5400  04 00 a0 e1                                      mov r0, r4
003e5404  74 b8 fe eb                                      bl #0x3935dc
003e5408  04 10 90 e5                                      ldr r1, [r0, #4]
003e540c  00 60 a0 e1                                      mov r6, r0
003e5410  ac 01 94 e5                                      ldr r0, [r4, #0x1ac]
003e5414  e4 a3 fc eb                                      bl #0x30e3ac
003e5418  00 10 96 e5                                      ldr r1, [r6]
003e541c  00 70 a0 e1                                      mov r7, r0
003e5420  a8 01 94 e5                                      ldr r0, [r4, #0x1a8]
003e5424  e0 a3 fc eb                                      bl #0x30e3ac
003e5428  00 30 a0 e3                                      mov r3, #0
003e542c  1c 00 8d e5                                      str r0, [sp, #0x1c]
003e5430  1c 00 8d e2                                      add r0, sp, #0x1c
003e5434  24 30 8d e5                                      str r3, [sp, #0x24]
003e5438  20 70 8d e5                                      str r7, [sp, #0x20]
003e543c  1b 9f fd eb                                      bl #0x34d0b0
003e5440  11 13 a0 e3                                      mov r1, #0x44000000
003e5444  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003e5448  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e544c  46 a6 fc eb                                      bl #0x30ed6c
003e5450  11 13 a0 e3                                      mov r1, #0x44000000
003e5454  1c 00 8d e5                                      str r0, [sp, #0x1c]
003e5458  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e545c  20 00 9d e5                                      ldr r0, [sp, #0x20]
003e5460  41 a6 fc eb                                      bl #0x30ed6c
003e5464  11 13 a0 e3                                      mov r1, #0x44000000
003e5468  20 00 8d e5                                      str r0, [sp, #0x20]
003e546c  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e5470  24 00 9d e5                                      ldr r0, [sp, #0x24]
003e5474  3c a6 fc eb                                      bl #0x30ed6c
003e5478  24 00 8d e5                                      str r0, [sp, #0x24]
003e547c  04 00 a0 e1                                      mov r0, r4
003e5480  55 b8 fe eb                                      bl #0x3935dc
003e5484  04 10 90 e5                                      ldr r1, [r0, #4]
003e5488  00 60 a0 e1                                      mov r6, r0
003e548c  20 00 9d e5                                      ldr r0, [sp, #0x20]
003e5490  c3 a5 fc eb                                      bl #0x30eba4
003e5494  08 10 96 e5                                      ldr r1, [r6, #8]
003e5498  00 80 a0 e1                                      mov r8, r0
003e549c  24 00 9d e5                                      ldr r0, [sp, #0x24]
003e54a0  bf a5 fc eb                                      bl #0x30eba4
003e54a4  00 10 96 e5                                      ldr r1, [r6]
003e54a8  00 70 a0 e1                                      mov r7, r0
003e54ac  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003e54b0  bb a5 fc eb                                      bl #0x30eba4
003e54b4  10 10 8d e2                                      add r1, sp, #0x10
003e54b8  10 00 8d e5                                      str r0, [sp, #0x10]
003e54bc  04 00 a0 e1                                      mov r0, r4
003e54c0  14 80 8d e5                                      str r8, [sp, #0x14]
003e54c4  18 70 8d e5                                      str r7, [sp, #0x18]
003e54c8  4c b8 fe eb                                      bl #0x393600
003e54cc  81 ff ff ea                                      b #0x3e52d8
003e54d0  04 00 a0 e1                                      mov r0, r4
003e54d4  40 b8 fe eb                                      bl #0x3935dc
003e54d8  88 13 94 e5                                      ldr r1, [r4, #0x388]
003e54dc  00 60 a0 e1                                      mov r6, r0
003e54e0  00 00 90 e5                                      ldr r0, [r0]
003e54e4  b0 a3 fc eb                                      bl #0x30e3ac
003e54e8  8c 13 94 e5                                      ldr r1, [r4, #0x38c]
003e54ec  00 a0 a0 e1                                      mov sl, r0
003e54f0  04 00 96 e5                                      ldr r0, [r6, #4]
003e54f4  ac a3 fc eb                                      bl #0x30e3ac
003e54f8  90 13 94 e5                                      ldr r1, [r4, #0x390]
003e54fc  00 80 a0 e1                                      mov r8, r0
003e5500  08 00 96 e5                                      ldr r0, [r6, #8]
003e5504  a8 a3 fc eb                                      bl #0x30e3ac
003e5508  0a 10 a0 e1                                      mov r1, sl
003e550c  00 70 a0 e1                                      mov r7, r0
003e5510  0a 00 a0 e1                                      mov r0, sl
003e5514  14 a6 fc eb                                      bl #0x30ed6c
003e5518  08 10 a0 e1                                      mov r1, r8
003e551c  00 60 a0 e1                                      mov r6, r0
003e5520  08 00 a0 e1                                      mov r0, r8
003e5524  10 a6 fc eb                                      bl #0x30ed6c
003e5528  00 10 a0 e1                                      mov r1, r0
003e552c  06 00 a0 e1                                      mov r0, r6
003e5530  9b a5 fc eb                                      bl #0x30eba4
003e5534  07 10 a0 e1                                      mov r1, r7
003e5538  00 60 a0 e1                                      mov r6, r0
003e553c  07 00 a0 e1                                      mov r0, r7
003e5540  09 a6 fc eb                                      bl #0x30ed6c
003e5544  00 10 a0 e1                                      mov r1, r0
003e5548  06 00 a0 e1                                      mov r0, r6
003e554c  94 a5 fc eb                                      bl #0x30eba4
003e5550  00 10 a0 e1                                      mov r1, r0
003e5554  a8 03 94 e5                                      ldr r0, [r4, #0x3a8]
003e5558  13 a5 fc eb                                      bl #0x30e9ac
003e555c  00 00 50 e3                                      cmp r0, #0
003e5560  80 ff ff 0a                                      beq #0x3e5368
003e5564  04 00 a0 e1                                      mov r0, r4
003e5568  01 10 a0 e3                                      mov r1, #1
003e556c  c1 fe ff eb                                      bl #0x3e5078
003e5570  3e ff ff ea                                      b #0x3e5270
003e5574  06 10 a0 e1                                      mov r1, r6
003e5578  07 00 95 e7                                      ldr r0, [r5, r7]
003e557c  01 ff 04 eb                                      bl #0x525188
003e5580  00 10 50 e2                                      subs r1, r0, #0
003e5584  03 00 00 0a                                      beq #0x3e5598
003e5588  24 30 91 e5                                      ldr r3, [r1, #0x24]
003e558c  01 00 13 e3                                      tst r3, #1
003e5590  36 ff ff 0a                                      beq #0x3e5270
003e5594  95 ff ff ea                                      b #0x3e53f0
003e5598  04 00 a0 e1                                      mov r0, r4
003e559c  b5 fe ff eb                                      bl #0x3e5078
003e55a0  32 ff ff ea                                      b #0x3e5270
; mapping-symbol data/literal pool
003e55a4  c8 f8 5a 00 40 23 00 00 f4 37 00 00 04 12 00 00  .byte 0xc8, 0xf8, 0x5a, 0x00, 0x40, 0x23, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x003e55b4, declared_size=396, range_size=396, mode=arm
; class-group: Projectile
; alias: _ZN10Projectile11OnCollisionEP10GameObjectRK7Point2DIfE
; demangled: Projectile::OnCollision(GameObject*, Point2D<float> const&)
; decoder-mode: arm
003e55b4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003e55b8  00 40 a0 e1                                      mov r4, r0
003e55bc  d0 03 d0 e5                                      ldrb r0, [r0, #0x3d0]
003e55c0  70 31 9f e5                                      ldr r3, [pc, #0x170]
003e55c4  1c d0 4d e2                                      sub sp, sp, #0x1c
003e55c8  00 00 50 e3                                      cmp r0, #0
003e55cc  03 30 8f e0                                      add r3, pc, r3
003e55d0  02 60 a0 e1                                      mov r6, r2
003e55d4  01 50 a0 e1                                      mov r5, r1
003e55d8  31 00 00 1a                                      bne #0x3e56a4
003e55dc  d1 23 d4 e5                                      ldrb r2, [r4, #0x3d1]
003e55e0  00 00 52 e3                                      cmp r2, #0
003e55e4  2e 00 00 1a                                      bne #0x3e56a4
003e55e8  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
003e55ec  00 00 51 e3                                      cmp r1, #0
003e55f0  74 a3 94 e5                                      ldr sl, [r4, #0x374]
003e55f4  02 30 93 e7                                      ldr r3, [r3, r2]
003e55f8  00 80 93 e5                                      ldr r8, [r3]
003e55fc  28 00 00 0a                                      beq #0x3e56a4
003e5600  80 33 94 e5                                      ldr r3, [r4, #0x380]
003e5604  01 00 53 e1                                      cmp r3, r1
003e5608  25 00 00 0a                                      beq #0x3e56a4
003e560c  0c 70 8d e2                                      add r7, sp, #0xc
003e5610  07 00 a0 e1                                      mov r0, r7
003e5614  c4 61 fd eb                                      bl #0x33dd2c
003e5618  07 00 a0 e1                                      mov r0, r7
003e561c  4c 6a fd eb                                      bl #0x33ff54
003e5620  00 00 50 e3                                      cmp r0, #0
003e5624  33 00 00 0a                                      beq #0x3e56f8
003e5628  48 30 a0 e3                                      mov r3, #0x48
003e562c  93 8a 28 e0                                      mla r8, r3, sl, r8
003e5630  04 30 d8 e5                                      ldrb r3, [r8, #4]
003e5634  00 00 53 e3                                      cmp r3, #0
003e5638  16 00 00 1a                                      bne #0x3e5698
003e563c  10 30 d8 e5                                      ldrb r3, [r8, #0x10]
003e5640  00 00 53 e3                                      cmp r3, #0
003e5644  1d 00 00 0a                                      beq #0x3e56c0
003e5648  cc 53 84 e5                                      str r5, [r4, #0x3cc]
003e564c  00 20 96 e5                                      ldr r2, [r6]
003e5650  b8 33 94 e5                                      ldr r3, [r4, #0x3b8]
003e5654  c4 23 84 e5                                      str r2, [r4, #0x3c4]
003e5658  04 20 96 e5                                      ldr r2, [r6, #4]
003e565c  00 00 53 e3                                      cmp r3, #0
003e5660  c8 23 84 e5                                      str r2, [r4, #0x3c8]
003e5664  08 00 00 0a                                      beq #0x3e568c
003e5668  04 00 a0 e1                                      mov r0, r4
003e566c  c0 13 94 e5                                      ldr r1, [r4, #0x3c0]
003e5670  33 ff 2f e1                                      blx r3
003e5674  02 00 50 e3                                      cmp r0, #2
003e5678  22 00 00 0a                                      beq #0x3e5708
003e567c  03 00 50 e3                                      cmp r0, #3
003e5680  0a 00 00 0a                                      beq #0x3e56b0
003e5684  01 00 50 e3                                      cmp r0, #1
003e5688  05 00 00 0a                                      beq #0x3e56a4
003e568c  01 00 a0 e3                                      mov r0, #1
003e5690  d1 03 c4 e5                                      strb r0, [r4, #0x3d1]
003e5694  03 00 00 ea                                      b #0x3e56a8
003e5698  84 33 94 e5                                      ldr r3, [r4, #0x384]
003e569c  05 00 53 e1                                      cmp r3, r5
003e56a0  e5 ff ff 0a                                      beq #0x3e563c
003e56a4  00 00 a0 e3                                      mov r0, #0
003e56a8  1c d0 8d e2                                      add sp, sp, #0x1c
003e56ac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003e56b0  04 00 a0 e1                                      mov r0, r4
003e56b4  01 10 a0 e3                                      mov r1, #1
003e56b8  6e fe ff eb                                      bl #0x3e5078
003e56bc  f2 ff ff ea                                      b #0x3e568c
003e56c0  80 13 94 e5                                      ldr r1, [r4, #0x380]
003e56c4  0d 00 a0 e1                                      mov r0, sp
003e56c8  97 61 fd eb                                      bl #0x33dd2c
003e56cc  0d 00 a0 e1                                      mov r0, sp
003e56d0  1f 6a fd eb                                      bl #0x33ff54
003e56d4  00 00 50 e3                                      cmp r0, #0
003e56d8  0d 70 a0 e1                                      mov r7, sp
003e56dc  d9 ff ff 0a                                      beq #0x3e5648
003e56e0  f2 0f 80 e2                                      add r0, r0, #0x3c8
003e56e4  05 10 a0 e1                                      mov r1, r5
003e56e8  17 c0 ff eb                                      bl #0x3d574c
003e56ec  00 00 50 e3                                      cmp r0, #0
003e56f0  eb ff ff 0a                                      beq #0x3e56a4
003e56f4  d3 ff ff ea                                      b #0x3e5648
003e56f8  84 33 94 e5                                      ldr r3, [r4, #0x384]
003e56fc  00 00 53 e3                                      cmp r3, #0
003e5700  e7 ff ff 1a                                      bne #0x3e56a4
003e5704  cf ff ff ea                                      b #0x3e5648
003e5708  bc 33 94 e5                                      ldr r3, [r4, #0x3bc]
003e570c  00 00 53 e3                                      cmp r3, #0
003e5710  02 00 00 0a                                      beq #0x3e5720
003e5714  04 00 a0 e1                                      mov r0, r4
003e5718  c0 13 94 e5                                      ldr r1, [r4, #0x3c0]
003e571c  33 ff 2f e1                                      blx r3
003e5720  04 00 a0 e1                                      mov r0, r4
003e5724  cc 13 94 e5                                      ldr r1, [r4, #0x3cc]
003e5728  f1 2f 84 e2                                      add r2, r4, #0x3c4
003e572c  ee fd ff eb                                      bl #0x3e4eec
003e5730  00 00 a0 e3                                      mov r0, #0
003e5734  db ff ff ea                                      b #0x3e56a8
; mapping-symbol data/literal pool
003e5738  c4 f4 5a 00 40 23 00 00                          .byte 0xc4, 0xf4, 0x5a, 0x00, 0x40, 0x23, 0x00, 0x00

; FUNCTION 0x003e57cc, declared_size=256, range_size=256, mode=arm
; class-group: Projectile
; alias: _ZN10Projectile7SetInfoEiP10GameObjectS1_PFiPS_PvES5_S3_f
; demangled: Projectile::SetInfo(int, GameObject*, GameObject*, int (*)(Projectile*, void*), int (*)(Projectile*, void*), void*, float)
; decoder-mode: arm
003e57cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003e57d0  2c d0 4d e2                                      sub sp, sp, #0x2c
003e57d4  40 c0 9d e5                                      ldr ip, [sp, #0x40]
003e57d8  00 40 a0 e1                                      mov r4, r0
003e57dc  1c 50 8d e2                                      add r5, sp, #0x1c
003e57e0  00 c0 8d e5                                      str ip, [sp]
003e57e4  44 c0 9d e5                                      ldr ip, [sp, #0x44]
003e57e8  04 c0 8d e5                                      str ip, [sp, #4]
003e57ec  48 c0 9d e5                                      ldr ip, [sp, #0x48]
003e57f0  08 c0 8d e5                                      str ip, [sp, #8]
003e57f4  00 c0 a0 e3                                      mov ip, #0
003e57f8  0c c0 8d e5                                      str ip, [sp, #0xc]
003e57fc  00 c0 90 e5                                      ldr ip, [r0]
003e5800  0f e0 a0 e1                                      mov lr, pc
003e5804  c8 f0 9c e5                                      ldr pc, [ip, #0xc8]
003e5808  00 30 a0 e3                                      mov r3, #0
003e580c  80 03 94 e5                                      ldr r0, [r4, #0x380]
003e5810  05 10 a0 e1                                      mov r1, r5
003e5814  24 30 8d e5                                      str r3, [sp, #0x24]
003e5818  1c 30 8d e5                                      str r3, [sp, #0x1c]
003e581c  20 30 8d e5                                      str r3, [sp, #0x20]
003e5820  af b8 fe eb                                      bl #0x393ae4
003e5824  35 1a 0f e3                                      movw r1, #0xfa35
003e5828  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
003e582c  8e 1c 43 e3                                      movt r1, #0x3c8e
003e5830  4d a5 fc eb                                      bl #0x30ed6c
003e5834  00 10 a0 e1                                      mov r1, r0
003e5838  05 00 a0 e1                                      mov r0, r5
003e583c  bf ff ff eb                                      bl #0x3e5740
003e5840  80 03 94 e5                                      ldr r0, [r4, #0x380]
003e5844  64 b7 fe eb                                      bl #0x3935dc
003e5848  11 13 a0 e3                                      mov r1, #0x44000000
003e584c  00 50 a0 e1                                      mov r5, r0
003e5850  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e5854  20 00 9d e5                                      ldr r0, [sp, #0x20]
003e5858  43 a5 fc eb                                      bl #0x30ed6c
003e585c  04 10 95 e5                                      ldr r1, [r5, #4]
003e5860  cf a4 fc eb                                      bl #0x30eba4
003e5864  11 13 a0 e3                                      mov r1, #0x44000000
003e5868  00 70 a0 e1                                      mov r7, r0
003e586c  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e5870  24 00 9d e5                                      ldr r0, [sp, #0x24]
003e5874  3c a5 fc eb                                      bl #0x30ed6c
003e5878  08 10 95 e5                                      ldr r1, [r5, #8]
003e587c  c8 a4 fc eb                                      bl #0x30eba4
003e5880  11 13 a0 e3                                      mov r1, #0x44000000
003e5884  00 60 a0 e1                                      mov r6, r0
003e5888  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e588c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003e5890  35 a5 fc eb                                      bl #0x30ed6c
003e5894  00 10 95 e5                                      ldr r1, [r5]
003e5898  c1 a4 fc eb                                      bl #0x30eba4
003e589c  10 10 8d e2                                      add r1, sp, #0x10
003e58a0  10 00 8d e5                                      str r0, [sp, #0x10]
003e58a4  04 00 a0 e1                                      mov r0, r4
003e58a8  14 70 8d e5                                      str r7, [sp, #0x14]
003e58ac  18 60 8d e5                                      str r6, [sp, #0x18]
003e58b0  52 b7 fe eb                                      bl #0x393600
003e58b4  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003e58b8  00 00 50 e3                                      cmp r0, #0
003e58bc  00 00 00 0a                                      beq #0x3e58c4
003e58c0  20 34 02 eb                                      bl #0x472948
003e58c4  2c d0 8d e2                                      add sp, sp, #0x2c
003e58c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x003e58cc, declared_size=1224, range_size=1224, mode=arm
; class-group: Projectile
; alias: _ZN10Projectile7SetInfoEiP10GameObjectS1_PFiPS_PvES5_S3_b
; demangled: Projectile::SetInfo(int, GameObject*, GameObject*, int (*)(Projectile*, void*), int (*)(Projectile*, void*), void*, bool)
; decoder-mode: arm
003e58cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e58d0  5c d0 4d e2                                      sub sp, sp, #0x5c
003e58d4  7c 54 9f e5                                      ldr r5, [pc, #0x47c]
003e58d8  03 80 a0 e1                                      mov r8, r3
003e58dc  8c 30 dd e5                                      ldrb r3, [sp, #0x8c]
003e58e0  00 70 51 e2                                      subs r7, r1, #0
003e58e4  05 50 8f e0                                      add r5, pc, r5
003e58e8  00 40 a0 e1                                      mov r4, r0
003e58ec  02 60 a0 e1                                      mov r6, r2
003e58f0  24 30 8d e5                                      str r3, [sp, #0x24]
003e58f4  a8 00 00 ba                                      blt #0x3e5b9c
003e58f8  5c 34 9f e5                                      ldr r3, [pc, #0x45c]
003e58fc  03 30 95 e7                                      ldr r3, [r5, r3]
003e5900  00 30 93 e5                                      ldr r3, [r3]
003e5904  03 00 57 e1                                      cmp r7, r3
003e5908  a3 00 00 aa                                      bge #0x3e5b9c
003e590c  00 00 56 e3                                      cmp r6, #0
003e5910  fb 00 00 0a                                      beq #0x3e5d04
003e5914  44 34 9f e5                                      ldr r3, [pc, #0x444]
003e5918  48 20 a0 e3                                      mov r2, #0x48
003e591c  00 b0 a0 e3                                      mov fp, #0
003e5920  03 30 95 e7                                      ldr r3, [r5, r3]
003e5924  4c a0 8d e2                                      add sl, sp, #0x4c
003e5928  00 90 a0 e3                                      mov sb, #0
003e592c  00 30 93 e5                                      ldr r3, [r3]
003e5930  74 73 84 e5                                      str r7, [r4, #0x374]
003e5934  06 00 a0 e1                                      mov r0, r6
003e5938  92 37 27 e0                                      mla r7, r2, r7, r3
003e593c  0a 10 a0 e1                                      mov r1, sl
003e5940  1d 30 d7 e5                                      ldrb r3, [r7, #0x1d]
003e5944  84 83 84 e5                                      str r8, [r4, #0x384]
003e5948  80 20 9d e5                                      ldr r2, [sp, #0x80]
003e594c  7c 33 c4 e5                                      strb r3, [r4, #0x37c]
003e5950  b8 23 84 e5                                      str r2, [r4, #0x3b8]
003e5954  84 30 9d e5                                      ldr r3, [sp, #0x84]
003e5958  bc 33 84 e5                                      str r3, [r4, #0x3bc]
003e595c  88 30 9d e5                                      ldr r3, [sp, #0x88]
003e5960  80 63 84 e5                                      str r6, [r4, #0x380]
003e5964  d0 b3 c4 e5                                      strb fp, [r4, #0x3d0]
003e5968  c0 33 84 e5                                      str r3, [r4, #0x3c0]
003e596c  d1 b3 c4 e5                                      strb fp, [r4, #0x3d1]
003e5970  4c 90 8d e5                                      str sb, [sp, #0x4c]
003e5974  50 90 8d e5                                      str sb, [sp, #0x50]
003e5978  54 90 8d e5                                      str sb, [sp, #0x54]
003e597c  58 b8 fe eb                                      bl #0x393ae4
003e5980  80 03 94 e5                                      ldr r0, [r4, #0x380]
003e5984  14 b7 fe eb                                      bl #0x3935dc
003e5988  00 30 90 e5                                      ldr r3, [r0]
003e598c  09 10 a0 e1                                      mov r1, sb
003e5990  88 33 84 e5                                      str r3, [r4, #0x388]
003e5994  04 30 90 e5                                      ldr r3, [r0, #4]
003e5998  8c 33 84 e5                                      str r3, [r4, #0x38c]
003e599c  08 30 90 e5                                      ldr r3, [r0, #8]
003e59a0  a4 b3 84 e5                                      str fp, [r4, #0x3a4]
003e59a4  a0 33 84 e5                                      str r3, [r4, #0x3a0]
003e59a8  90 33 84 e5                                      str r3, [r4, #0x390]
003e59ac  20 60 97 e5                                      ldr r6, [r7, #0x20]
003e59b0  06 00 a0 e1                                      mov r0, r6
003e59b4  be a2 fc eb                                      bl #0x30e4b4
003e59b8  0b 00 50 e1                                      cmp r0, fp
003e59bc  bf 04 a0 03                                      moveq r0, #0xbf000000
003e59c0  02 05 80 02                                      addeq r0, r0, #0x800000
003e59c4  02 00 00 0a                                      beq #0x3e59d4
003e59c8  06 00 a0 e1                                      mov r0, r6
003e59cc  06 10 a0 e1                                      mov r1, r6
003e59d0  e5 a4 fc eb                                      bl #0x30ed6c
003e59d4  80 33 94 e5                                      ldr r3, [r4, #0x380]
003e59d8  a8 03 84 e5                                      str r0, [r4, #0x3a8]
003e59dc  d8 02 93 e5                                      ldr r0, [r3, #0x2d8]
003e59e0  00 00 50 e3                                      cmp r0, #0
003e59e4  0f 00 00 0a                                      beq #0x3e5a28
003e59e8  74 13 9f e5                                      ldr r1, [pc, #0x374]
003e59ec  01 10 8f e0                                      add r1, pc, r1
003e59f0  08 2c 02 eb                                      bl #0x470a18
003e59f4  00 00 50 e3                                      cmp r0, #0
003e59f8  00 10 a0 e1                                      mov r1, r0
003e59fc  a4 03 84 e5                                      str r0, [r4, #0x3a4]
003e5a00  08 00 00 0a                                      beq #0x3e5a28
003e5a04  40 00 8d e2                                      add r0, sp, #0x40
003e5a08  dc c5 06 eb                                      bl #0x597180
003e5a0c  48 30 9d e5                                      ldr r3, [sp, #0x48]
003e5a10  40 10 9d e5                                      ldr r1, [sp, #0x40]
003e5a14  44 20 9d e5                                      ldr r2, [sp, #0x44]
003e5a18  a0 33 84 e5                                      str r3, [r4, #0x3a0]
003e5a1c  88 13 84 e5                                      str r1, [r4, #0x388]
003e5a20  8c 23 84 e5                                      str r2, [r4, #0x38c]
003e5a24  90 33 84 e5                                      str r3, [r4, #0x390]
003e5a28  40 30 97 e5                                      ldr r3, [r7, #0x40]
003e5a2c  ac 33 84 e5                                      str r3, [r4, #0x3ac]
003e5a30  44 30 97 e5                                      ldr r3, [r7, #0x44]
003e5a34  b0 33 84 e5                                      str r3, [r4, #0x3b0]
003e5a38  3c 30 97 e5                                      ldr r3, [r7, #0x3c]
003e5a3c  b4 33 84 e5                                      str r3, [r4, #0x3b4]
003e5a40  28 10 97 e5                                      ldr r1, [r7, #0x28]
003e5a44  00 00 51 e3                                      cmp r1, #0
003e5a48  8d 00 00 ba                                      blt #0x3e5c84
003e5a4c  14 33 9f e5                                      ldr r3, [pc, #0x314]
003e5a50  0c e0 a0 e3                                      mov lr, #0xc
003e5a54  00 20 a0 e3                                      mov r2, #0
003e5a58  03 c0 95 e7                                      ldr ip, [r5, r3]
003e5a5c  04 00 a0 e1                                      mov r0, r4
003e5a60  02 30 a0 e1                                      mov r3, r2
003e5a64  00 c0 9c e5                                      ldr ip, [ip]
003e5a68  9e c1 21 e0                                      mla r1, lr, r1, ip
003e5a6c  08 10 91 e5                                      ldr r1, [r1, #8]
003e5a70  af bc fe eb                                      bl #0x394d34
003e5a74  f0 32 9f e5                                      ldr r3, [pc, #0x2f0]
003e5a78  00 70 a0 e3                                      mov r7, #0
003e5a7c  07 10 a0 e1                                      mov r1, r7
003e5a80  03 30 95 e7                                      ldr r3, [r5, r3]
003e5a84  28 00 a0 e3                                      mov r0, #0x28
003e5a88  01 60 a0 e3                                      mov r6, #1
003e5a8c  44 90 93 e5                                      ldr sb, [r3, #0x44]
003e5a90  b6 aa fc eb                                      bl #0x310570
003e5a94  20 c0 a0 e3                                      mov ip, #0x20
003e5a98  09 10 a0 e1                                      mov r1, sb
003e5a9c  07 30 a0 e1                                      mov r3, r7
003e5aa0  04 20 a0 e1                                      mov r2, r4
003e5aa4  10 c0 8d e5                                      str ip, [sp, #0x10]
003e5aa8  1f c5 00 e3                                      movw ip, #0x51f
003e5aac  14 c0 8d e5                                      str ip, [sp, #0x14]
003e5ab0  00 80 a0 e1                                      mov r8, r0
003e5ab4  00 60 8d e5                                      str r6, [sp]
003e5ab8  04 60 8d e5                                      str r6, [sp, #4]
003e5abc  08 60 8d e5                                      str r6, [sp, #8]
003e5ac0  0c 70 8d e5                                      str r7, [sp, #0xc]
003e5ac4  18 70 8d e5                                      str r7, [sp, #0x18]
003e5ac8  08 26 02 eb                                      bl #0x46f2f0
003e5acc  9c 32 9f e5                                      ldr r3, [pc, #0x29c]
003e5ad0  08 10 a0 e1                                      mov r1, r8
003e5ad4  07 20 a0 e1                                      mov r2, r7
003e5ad8  03 30 95 e7                                      ldr r3, [r5, r3]
003e5adc  04 00 a0 e1                                      mov r0, r4
003e5ae0  08 30 83 e2                                      add r3, r3, #8
003e5ae4  00 30 88 e5                                      str r3, [r8]
003e5ae8  42 bc fe eb                                      bl #0x394bf8
003e5aec  04 00 a0 e1                                      mov r0, r4
003e5af0  06 20 a0 e1                                      mov r2, r6
003e5af4  e2 1f 84 e2                                      add r1, r4, #0x388
003e5af8  ad b8 fe eb                                      bl #0x393db4
003e5afc  80 13 94 e5                                      ldr r1, [r4, #0x380]
003e5b00  04 00 a0 e1                                      mov r0, r4
003e5b04  5b 1f 81 e2                                      add r1, r1, #0x16c
003e5b08  64 b7 fe eb                                      bl #0x3938a0
003e5b0c  84 03 94 e5                                      ldr r0, [r4, #0x384]
003e5b10  07 00 50 e1                                      cmp r0, r7
003e5b14  36 00 00 0a                                      beq #0x3e5bf4
003e5b18  af b6 fe eb                                      bl #0x3935dc
003e5b1c  00 10 a0 e1                                      mov r1, r0
003e5b20  04 00 a0 e1                                      mov r0, r4
003e5b24  b5 b6 fe eb                                      bl #0x393600
003e5b28  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
003e5b2c  00 00 53 e3                                      cmp r3, #0
003e5b30  10 00 00 0a                                      beq #0x3e5b78
003e5b34  38 30 93 e5                                      ldr r3, [r3, #0x38]
003e5b38  00 50 a0 e3                                      mov r5, #0
003e5b3c  01 20 a0 e3                                      mov r2, #1
003e5b40  00 c0 93 e5                                      ldr ip, [r3]
003e5b44  05 10 a0 e1                                      mov r1, r5
003e5b48  03 00 a0 e1                                      mov r0, r3
003e5b4c  00 50 8d e5                                      str r5, [sp]
003e5b50  05 30 a0 e1                                      mov r3, r5
003e5b54  0f e0 a0 e1                                      mov lr, pc
003e5b58  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003e5b5c  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003e5b60  c3 97 fe eb                                      bl #0x38ba74
003e5b64  b4 23 94 e5                                      ldr r2, [r4, #0x3b4]
003e5b68  a6 3f e0 e3                                      mvn r3, #0x298
003e5b6c  01 30 43 e2                                      sub r3, r3, #1
003e5b70  03 00 52 e1                                      cmp r2, r3
003e5b74  59 00 00 0a                                      beq #0x3e5ce0
003e5b78  72 4f 84 e2                                      add r4, r4, #0x1c8
003e5b7c  04 00 a0 e1                                      mov r0, r4
003e5b80  01 10 a0 e3                                      mov r1, #1
003e5b84  9a f9 04 eb                                      bl #0x5241f4
003e5b88  04 00 a0 e1                                      mov r0, r4
003e5b8c  01 10 a0 e3                                      mov r1, #1
003e5b90  a0 f9 04 eb                                      bl #0x524218
003e5b94  5c d0 8d e2                                      add sp, sp, #0x5c
003e5b98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e5b9c  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
003e5ba0  03 30 95 e7                                      ldr r3, [r5, r3]
003e5ba4  00 30 93 e5                                      ldr r3, [r3]
003e5ba8  02 00 53 e3                                      cmp r3, #2
003e5bac  00 30 a0 03                                      moveq r3, #0
003e5bb0  00 30 83 05                                      streq r3, [r3]
003e5bb4  54 ff ff 0a                                      beq #0x3e590c
003e5bb8  01 00 53 e3                                      cmp r3, #1
003e5bbc  52 ff ff 1a                                      bne #0x3e590c
003e5bc0  b0 01 9f e5                                      ldr r0, [pc, #0x1b0]
003e5bc4  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
003e5bc8  b0 21 9f e5                                      ldr r2, [pc, #0x1b0]
003e5bcc  00 00 95 e7                                      ldr r0, [r5, r0]
003e5bd0  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
003e5bd4  4e c0 a0 e3                                      mov ip, #0x4e
003e5bd8  01 10 8f e0                                      add r1, pc, r1
003e5bdc  02 20 8f e0                                      add r2, pc, r2
003e5be0  03 30 8f e0                                      add r3, pc, r3
003e5be4  a8 00 80 e2                                      add r0, r0, #0xa8
003e5be8  00 c0 8d e5                                      str ip, [sp]
003e5bec  04 a1 fc eb                                      bl #0x30e004
003e5bf0  45 ff ff ea                                      b #0x3e590c
003e5bf4  a4 13 94 e5                                      ldr r1, [r4, #0x3a4]
003e5bf8  00 00 51 e3                                      cmp r1, #0
003e5bfc  02 00 00 0a                                      beq #0x3e5c0c
003e5c00  24 30 9d e5                                      ldr r3, [sp, #0x24]
003e5c04  00 00 53 e3                                      cmp r3, #0
003e5c08  21 00 00 1a                                      bne #0x3e5c94
003e5c0c  80 03 94 e5                                      ldr r0, [r4, #0x380]
003e5c10  71 b6 fe eb                                      bl #0x3935dc
003e5c14  11 13 a0 e3                                      mov r1, #0x44000000
003e5c18  00 50 a0 e1                                      mov r5, r0
003e5c1c  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e5c20  50 00 9d e5                                      ldr r0, [sp, #0x50]
003e5c24  50 a4 fc eb                                      bl #0x30ed6c
003e5c28  04 10 95 e5                                      ldr r1, [r5, #4]
003e5c2c  dc a3 fc eb                                      bl #0x30eba4
003e5c30  11 13 a0 e3                                      mov r1, #0x44000000
003e5c34  00 70 a0 e1                                      mov r7, r0
003e5c38  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e5c3c  54 00 9d e5                                      ldr r0, [sp, #0x54]
003e5c40  49 a4 fc eb                                      bl #0x30ed6c
003e5c44  08 10 95 e5                                      ldr r1, [r5, #8]
003e5c48  d5 a3 fc eb                                      bl #0x30eba4
003e5c4c  11 13 a0 e3                                      mov r1, #0x44000000
003e5c50  00 60 a0 e1                                      mov r6, r0
003e5c54  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e5c58  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
003e5c5c  42 a4 fc eb                                      bl #0x30ed6c
003e5c60  00 10 95 e5                                      ldr r1, [r5]
003e5c64  ce a3 fc eb                                      bl #0x30eba4
003e5c68  28 10 8d e2                                      add r1, sp, #0x28
003e5c6c  28 00 8d e5                                      str r0, [sp, #0x28]
003e5c70  04 00 a0 e1                                      mov r0, r4
003e5c74  2c 70 8d e5                                      str r7, [sp, #0x2c]
003e5c78  30 60 8d e5                                      str r6, [sp, #0x30]
003e5c7c  5f b6 fe eb                                      bl #0x393600
003e5c80  a8 ff ff ea                                      b #0x3e5b28
003e5c84  04 00 a0 e1                                      mov r0, r4
003e5c88  00 10 a0 e3                                      mov r1, #0
003e5c8c  a9 b9 fe eb                                      bl #0x394338
003e5c90  77 ff ff ea                                      b #0x3e5a74
003e5c94  34 00 8d e2                                      add r0, sp, #0x34
003e5c98  38 c5 06 eb                                      bl #0x597180
003e5c9c  80 03 94 e5                                      ldr r0, [r4, #0x380]
003e5ca0  4d b6 fe eb                                      bl #0x3935dc
003e5ca4  04 10 90 e5                                      ldr r1, [r0, #4]
003e5ca8  00 50 a0 e1                                      mov r5, r0
003e5cac  38 00 9d e5                                      ldr r0, [sp, #0x38]
003e5cb0  bd a1 fc eb                                      bl #0x30e3ac
003e5cb4  00 10 95 e5                                      ldr r1, [r5]
003e5cb8  00 60 a0 e1                                      mov r6, r0
003e5cbc  34 00 9d e5                                      ldr r0, [sp, #0x34]
003e5cc0  b9 a1 fc eb                                      bl #0x30e3ac
003e5cc4  00 30 a0 e3                                      mov r3, #0
003e5cc8  4c 00 8d e5                                      str r0, [sp, #0x4c]
003e5ccc  0a 00 a0 e1                                      mov r0, sl
003e5cd0  50 60 8d e5                                      str r6, [sp, #0x50]
003e5cd4  54 30 8d e5                                      str r3, [sp, #0x54]
003e5cd8  f4 9c fd eb                                      bl #0x34d0b0
003e5cdc  ca ff ff ea                                      b #0x3e5c0c
003e5ce0  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
003e5ce4  05 10 a0 e1                                      mov r1, r5
003e5ce8  38 30 93 e5                                      ldr r3, [r3, #0x38]
003e5cec  03 00 a0 e1                                      mov r0, r3
003e5cf0  00 30 93 e5                                      ldr r3, [r3]
003e5cf4  0f e0 a0 e1                                      mov lr, pc
003e5cf8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
003e5cfc  b4 03 84 e5                                      str r0, [r4, #0x3b4]
003e5d00  9c ff ff ea                                      b #0x3e5b78
003e5d04  68 30 9f e5                                      ldr r3, [pc, #0x68]
003e5d08  03 30 95 e7                                      ldr r3, [r5, r3]
003e5d0c  00 30 93 e5                                      ldr r3, [r3]
003e5d10  02 00 53 e3                                      cmp r3, #2
003e5d14  00 60 86 05                                      streq r6, [r6]
003e5d18  fd fe ff 0a                                      beq #0x3e5914
003e5d1c  01 00 53 e3                                      cmp r3, #1
003e5d20  fb fe ff 1a                                      bne #0x3e5914
003e5d24  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
003e5d28  58 10 9f e5                                      ldr r1, [pc, #0x58]
003e5d2c  58 20 9f e5                                      ldr r2, [pc, #0x58]
003e5d30  00 00 95 e7                                      ldr r0, [r5, r0]
003e5d34  54 30 9f e5                                      ldr r3, [pc, #0x54]
003e5d38  4f c0 a0 e3                                      mov ip, #0x4f
003e5d3c  01 10 8f e0                                      add r1, pc, r1
003e5d40  02 20 8f e0                                      add r2, pc, r2
003e5d44  03 30 8f e0                                      add r3, pc, r3
003e5d48  a8 00 80 e2                                      add r0, r0, #0xa8
003e5d4c  00 c0 8d e5                                      str ip, [sp]
003e5d50  ab a0 fc eb                                      bl #0x30e004
003e5d54  ee fe ff ea                                      b #0x3e5914
; mapping-symbol data/literal pool
003e5d58  ac f1 5a 00 70 09 00 00 40 23 00 00 ac 05 4e 00  .byte 0xac, 0xf1, 0x5a, 0x00, 0x70, 0x09, 0x00, 0x00, 0x40, 0x23, 0x00, 0x00, 0xac, 0x05, 0x4e, 0x00
003e5d68  e0 19 00 00 f4 37 00 00 bc 26 00 00 c0 39 00 00  .byte 0xe0, 0x19, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xbc, 0x26, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003e5d78  c0 19 00 00 00 88 4d 00 74 03 4e 00 e8 03 4e 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x00, 0x88, 0x4d, 0x00, 0x74, 0x03, 0x4e, 0x00, 0xe8, 0x03, 0x4e, 0x00
003e5d88  9c 86 4d 00 b8 d0 4d 00 84 02 4e 00              .byte 0x9c, 0x86, 0x4d, 0x00, 0xb8, 0xd0, 0x4d, 0x00, 0x84, 0x02, 0x4e, 0x00

; FUNCTION 0x003e5d94, declared_size=8, range_size=8, mode=arm
; class-group: Projectile
; alias: _ZThn36_N10ProjectileD1Ev
; demangled: non-virtual thunk to Projectile::~Projectile()
; decoder-mode: arm
003e5d94  24 00 40 e2                                      sub r0, r0, #0x24
003e5d98  ff ff ff ea                                      b #0x3e5d9c

; FUNCTION 0x003e5d9c, declared_size=64, range_size=64, mode=arm
; class-group: Projectile
; alias: _ZN10ProjectileD1Ev
; demangled: Projectile::~Projectile()
; decoder-mode: arm
003e5d9c  30 20 9f e5                                      ldr r2, [pc, #0x30]
003e5da0  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e5da4  10 40 2d e9                                      push {r4, lr}
003e5da8  02 20 8f e0                                      add r2, pc, r2
003e5dac  03 30 92 e7                                      ldr r3, [r2, r3]
003e5db0  00 40 a0 e1                                      mov r4, r0
003e5db4  f0 20 83 e2                                      add r2, r3, #0xf0
003e5db8  08 10 83 e2                                      add r1, r3, #8
003e5dbc  e4 30 83 e2                                      add r3, r3, #0xe4
003e5dc0  0a 00 80 e8                                      stm r0, {r1, r3}
003e5dc4  24 20 80 e5                                      str r2, [r0, #0x24]
003e5dc8  6a 9d fe eb                                      bl #0x38d378
003e5dcc  04 00 a0 e1                                      mov r0, r4
003e5dd0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003e5dd4  e8 ec 5a 00 24 35 00 00                          .byte 0xe8, 0xec, 0x5a, 0x00, 0x24, 0x35, 0x00, 0x00

; FUNCTION 0x003e5ddc, declared_size=8, range_size=8, mode=arm
; class-group: Projectile
; alias: _ZThn36_N10ProjectileD0Ev
; demangled: non-virtual thunk to Projectile::~Projectile()
; decoder-mode: arm
003e5ddc  24 00 40 e2                                      sub r0, r0, #0x24
003e5de0  ff ff ff ea                                      b #0x3e5de4

; FUNCTION 0x003e5de4, declared_size=28, range_size=28, mode=arm
; class-group: Projectile
; alias: _ZN10ProjectileD0Ev
; demangled: Projectile::~Projectile()
; decoder-mode: arm
003e5de4  10 40 2d e9                                      push {r4, lr}
003e5de8  00 40 a0 e1                                      mov r4, r0
003e5dec  ea ff ff eb                                      bl #0x3e5d9c
003e5df0  04 00 a0 e1                                      mov r0, r4
003e5df4  91 a9 fc eb                                      bl #0x310440
003e5df8  04 00 a0 e1                                      mov r0, r4
003e5dfc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003e5e00, declared_size=64, range_size=64, mode=arm
; class-group: Projectile
; alias: _ZN10ProjectileD2Ev
; demangled: Projectile::~Projectile()
; decoder-mode: arm
003e5e00  30 20 9f e5                                      ldr r2, [pc, #0x30]
003e5e04  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e5e08  10 40 2d e9                                      push {r4, lr}
003e5e0c  02 20 8f e0                                      add r2, pc, r2
003e5e10  03 30 92 e7                                      ldr r3, [r2, r3]
003e5e14  00 40 a0 e1                                      mov r4, r0
003e5e18  f0 20 83 e2                                      add r2, r3, #0xf0
003e5e1c  08 10 83 e2                                      add r1, r3, #8
003e5e20  e4 30 83 e2                                      add r3, r3, #0xe4
003e5e24  0a 00 80 e8                                      stm r0, {r1, r3}
003e5e28  24 20 80 e5                                      str r2, [r0, #0x24]
003e5e2c  51 9d fe eb                                      bl #0x38d378
003e5e30  04 00 a0 e1                                      mov r0, r4
003e5e34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003e5e38  84 ec 5a 00 24 35 00 00                          .byte 0x84, 0xec, 0x5a, 0x00, 0x24, 0x35, 0x00, 0x00

; FUNCTION 0x003e5e40, declared_size=156, range_size=156, mode=arm
; class-group: Projectile
; alias: _ZN10ProjectileC1EN10ObjectBase6GO_IDSE
; demangled: Projectile::Projectile(ObjectBase::GO_IDS)
; decoder-mode: arm
003e5e40  70 40 2d e9                                      push {r4, r5, r6, lr}
003e5e44  88 50 9f e5                                      ldr r5, [pc, #0x88]
003e5e48  00 40 a0 e1                                      mov r4, r0
003e5e4c  51 99 fe eb                                      bl #0x38c398
003e5e50  80 10 9f e5                                      ldr r1, [pc, #0x80]
003e5e54  05 50 8f e0                                      add r5, pc, r5
003e5e58  00 20 a0 e3                                      mov r2, #0
003e5e5c  01 10 95 e7                                      ldr r1, [r5, r1]
003e5e60  00 30 a0 e3                                      mov r3, #0
003e5e64  c8 23 84 e5                                      str r2, [r4, #0x3c8]
003e5e68  f0 00 81 e2                                      add r0, r1, #0xf0
003e5e6c  08 c0 81 e2                                      add ip, r1, #8
003e5e70  e4 10 81 e2                                      add r1, r1, #0xe4
003e5e74  04 10 84 e5                                      str r1, [r4, #4]
003e5e78  00 10 e0 e3                                      mvn r1, #0
003e5e7c  74 13 84 e5                                      str r1, [r4, #0x374]
003e5e80  01 10 a0 e3                                      mov r1, #1
003e5e84  24 00 84 e5                                      str r0, [r4, #0x24]
003e5e88  00 c0 84 e5                                      str ip, [r4]
003e5e8c  d1 33 c4 e5                                      strb r3, [r4, #0x3d1]
003e5e90  85 10 c4 e5                                      strb r1, [r4, #0x85]
003e5e94  78 33 84 e5                                      str r3, [r4, #0x378]
003e5e98  80 33 84 e5                                      str r3, [r4, #0x380]
003e5e9c  84 33 84 e5                                      str r3, [r4, #0x384]
003e5ea0  88 23 84 e5                                      str r2, [r4, #0x388]
003e5ea4  8c 23 84 e5                                      str r2, [r4, #0x38c]
003e5ea8  90 23 84 e5                                      str r2, [r4, #0x390]
003e5eac  94 23 84 e5                                      str r2, [r4, #0x394]
003e5eb0  98 23 84 e5                                      str r2, [r4, #0x398]
003e5eb4  9c 23 84 e5                                      str r2, [r4, #0x39c]
003e5eb8  a4 33 84 e5                                      str r3, [r4, #0x3a4]
003e5ebc  b8 33 84 e5                                      str r3, [r4, #0x3b8]
003e5ec0  c4 23 84 e5                                      str r2, [r4, #0x3c4]
003e5ec4  cc 33 84 e5                                      str r3, [r4, #0x3cc]
003e5ec8  d0 33 c4 e5                                      strb r3, [r4, #0x3d0]
003e5ecc  04 00 a0 e1                                      mov r0, r4
003e5ed0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003e5ed4  3c ec 5a 00 24 35 00 00                          .byte 0x3c, 0xec, 0x5a, 0x00, 0x24, 0x35, 0x00, 0x00

; FUNCTION 0x003e5edc, declared_size=156, range_size=156, mode=arm
; class-group: Projectile
; alias: _ZN10ProjectileC2EN10ObjectBase6GO_IDSE
; demangled: Projectile::Projectile(ObjectBase::GO_IDS)
; decoder-mode: arm
003e5edc  70 40 2d e9                                      push {r4, r5, r6, lr}
003e5ee0  88 50 9f e5                                      ldr r5, [pc, #0x88]
003e5ee4  00 40 a0 e1                                      mov r4, r0
003e5ee8  2a 99 fe eb                                      bl #0x38c398
003e5eec  80 10 9f e5                                      ldr r1, [pc, #0x80]
003e5ef0  05 50 8f e0                                      add r5, pc, r5
003e5ef4  00 20 a0 e3                                      mov r2, #0
003e5ef8  01 10 95 e7                                      ldr r1, [r5, r1]
003e5efc  00 30 a0 e3                                      mov r3, #0
003e5f00  c8 23 84 e5                                      str r2, [r4, #0x3c8]
003e5f04  f0 00 81 e2                                      add r0, r1, #0xf0
003e5f08  08 c0 81 e2                                      add ip, r1, #8
003e5f0c  e4 10 81 e2                                      add r1, r1, #0xe4
003e5f10  04 10 84 e5                                      str r1, [r4, #4]
003e5f14  00 10 e0 e3                                      mvn r1, #0
003e5f18  74 13 84 e5                                      str r1, [r4, #0x374]
003e5f1c  01 10 a0 e3                                      mov r1, #1
003e5f20  24 00 84 e5                                      str r0, [r4, #0x24]
003e5f24  00 c0 84 e5                                      str ip, [r4]
003e5f28  d1 33 c4 e5                                      strb r3, [r4, #0x3d1]
003e5f2c  85 10 c4 e5                                      strb r1, [r4, #0x85]
003e5f30  78 33 84 e5                                      str r3, [r4, #0x378]
003e5f34  80 33 84 e5                                      str r3, [r4, #0x380]
003e5f38  84 33 84 e5                                      str r3, [r4, #0x384]
003e5f3c  88 23 84 e5                                      str r2, [r4, #0x388]
003e5f40  8c 23 84 e5                                      str r2, [r4, #0x38c]
003e5f44  90 23 84 e5                                      str r2, [r4, #0x390]
003e5f48  94 23 84 e5                                      str r2, [r4, #0x394]
003e5f4c  98 23 84 e5                                      str r2, [r4, #0x398]
003e5f50  9c 23 84 e5                                      str r2, [r4, #0x39c]
003e5f54  a4 33 84 e5                                      str r3, [r4, #0x3a4]
003e5f58  b8 33 84 e5                                      str r3, [r4, #0x3b8]
003e5f5c  c4 23 84 e5                                      str r2, [r4, #0x3c4]
003e5f60  cc 33 84 e5                                      str r3, [r4, #0x3cc]
003e5f64  d0 33 c4 e5                                      strb r3, [r4, #0x3d0]
003e5f68  04 00 a0 e1                                      mov r0, r4
003e5f6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003e5f70  a0 eb 5a 00 24 35 00 00                          .byte 0xa0, 0xeb, 0x5a, 0x00, 0x24, 0x35, 0x00, 0x00
