; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e3e24, declared_size=8, range_size=8, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZNK19LaserTypeProjectile8GetSpeedEv
; demangled: LaserTypeProjectile::GetSpeed() const
; decoder-mode: arm
003e3e24  ac 03 90 e5                                      ldr r0, [r0, #0x3ac]
003e3e28  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e3e2c, declared_size=416, range_size=416, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZN19LaserTypeProjectile11OnCollisionEP10GameObjectRK7Point2DIfE
; demangled: LaserTypeProjectile::OnCollision(GameObject*, Point2D<float> const&)
; decoder-mode: arm
003e3e2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e3e30  d0 33 d0 e5                                      ldrb r3, [r0, #0x3d0]
003e3e34  84 51 9f e5                                      ldr r5, [pc, #0x184]
003e3e38  3c d0 4d e2                                      sub sp, sp, #0x3c
003e3e3c  00 00 53 e3                                      cmp r3, #0
003e3e40  05 50 8f e0                                      add r5, pc, r5
003e3e44  00 40 a0 e1                                      mov r4, r0
003e3e48  02 70 a0 e1                                      mov r7, r2
003e3e4c  01 60 a0 e1                                      mov r6, r1
003e3e50  30 00 00 1a                                      bne #0x3e3f18
003e3e54  d1 33 d0 e5                                      ldrb r3, [r0, #0x3d1]
003e3e58  00 00 53 e3                                      cmp r3, #0
003e3e5c  2d 00 00 1a                                      bne #0x3e3f18
003e3e60  5c a1 9f e5                                      ldr sl, [pc, #0x15c]
003e3e64  00 00 51 e3                                      cmp r1, #0
003e3e68  74 b3 90 e5                                      ldr fp, [r0, #0x374]
003e3e6c  0a 90 95 e7                                      ldr sb, [r5, sl]
003e3e70  00 30 99 e5                                      ldr r3, [sb]
003e3e74  27 00 00 0a                                      beq #0x3e3f18
003e3e78  80 23 90 e5                                      ldr r2, [r0, #0x380]
003e3e7c  01 00 52 e1                                      cmp r2, r1
003e3e80  24 00 00 0a                                      beq #0x3e3f18
003e3e84  2c 80 8d e2                                      add r8, sp, #0x2c
003e3e88  08 00 a0 e1                                      mov r0, r8
003e3e8c  0c 30 8d e5                                      str r3, [sp, #0xc]
003e3e90  a5 67 fd eb                                      bl #0x33dd2c
003e3e94  08 00 a0 e1                                      mov r0, r8
003e3e98  2d 70 fd eb                                      bl #0x33ff54
003e3e9c  00 00 50 e3                                      cmp r0, #0
003e3ea0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003e3ea4  2c 00 00 0a                                      beq #0x3e3f5c
003e3ea8  48 20 a0 e3                                      mov r2, #0x48
003e3eac  92 3b 2b e0                                      mla fp, r2, fp, r3
003e3eb0  04 30 db e5                                      ldrb r3, [fp, #4]
003e3eb4  00 00 53 e3                                      cmp r3, #0
003e3eb8  13 00 00 1a                                      bne #0x3e3f0c
003e3ebc  10 30 db e5                                      ldrb r3, [fp, #0x10]
003e3ec0  00 00 53 e3                                      cmp r3, #0
003e3ec4  16 00 00 0a                                      beq #0x3e3f24
003e3ec8  0a 20 95 e7                                      ldr r2, [r5, sl]
003e3ecc  84 63 84 e5                                      str r6, [r4, #0x384]
003e3ed0  74 33 94 e5                                      ldr r3, [r4, #0x374]
003e3ed4  00 20 92 e5                                      ldr r2, [r2]
003e3ed8  48 10 a0 e3                                      mov r1, #0x48
003e3edc  00 c0 a0 e3                                      mov ip, #0
003e3ee0  91 23 23 e0                                      mla r3, r1, r3, r2
003e3ee4  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
003e3ee8  14 10 93 e5                                      ldr r1, [r3, #0x14]
003e3eec  0c 30 a0 e1                                      mov r3, ip
003e3ef0  02 00 95 e7                                      ldr r0, [r5, r2]
003e3ef4  16 2e 86 e2                                      add r2, r6, #0x160
003e3ef8  00 c0 8d e5                                      str ip, [sp]
003e3efc  84 c7 02 eb                                      bl #0x495d14
003e3f00  01 00 a0 e3                                      mov r0, #1
003e3f04  d1 03 c4 e5                                      strb r0, [r4, #0x3d1]
003e3f08  03 00 00 ea                                      b #0x3e3f1c
003e3f0c  84 33 94 e5                                      ldr r3, [r4, #0x384]
003e3f10  06 00 53 e1                                      cmp r3, r6
003e3f14  e8 ff ff 0a                                      beq #0x3e3ebc
003e3f18  00 00 a0 e3                                      mov r0, #0
003e3f1c  3c d0 8d e2                                      add sp, sp, #0x3c
003e3f20  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e3f24  20 70 8d e2                                      add r7, sp, #0x20
003e3f28  80 13 94 e5                                      ldr r1, [r4, #0x380]
003e3f2c  07 00 a0 e1                                      mov r0, r7
003e3f30  7d 67 fd eb                                      bl #0x33dd2c
003e3f34  07 00 a0 e1                                      mov r0, r7
003e3f38  05 70 fd eb                                      bl #0x33ff54
003e3f3c  00 00 50 e3                                      cmp r0, #0
003e3f40  e0 ff ff 0a                                      beq #0x3e3ec8
003e3f44  f2 0f 80 e2                                      add r0, r0, #0x3c8
003e3f48  06 10 a0 e1                                      mov r1, r6
003e3f4c  fe c5 ff eb                                      bl #0x3d574c
003e3f50  00 00 50 e3                                      cmp r0, #0
003e3f54  ef ff ff 0a                                      beq #0x3e3f18
003e3f58  da ff ff ea                                      b #0x3e3ec8
003e3f5c  84 83 94 e5                                      ldr r8, [r4, #0x384]
003e3f60  00 00 58 e3                                      cmp r8, #0
003e3f64  eb ff ff 1a                                      bne #0x3e3f18
003e3f68  84 63 84 e5                                      str r6, [r4, #0x384]
003e3f6c  00 20 99 e5                                      ldr r2, [sb]
003e3f70  74 33 94 e5                                      ldr r3, [r4, #0x374]
003e3f74  48 10 a0 e3                                      mov r1, #0x48
003e3f78  06 00 a0 e1                                      mov r0, r6
003e3f7c  91 23 23 e0                                      mla r3, r1, r3, r2
003e3f80  04 a0 97 e5                                      ldr sl, [r7, #4]
003e3f84  14 90 93 e5                                      ldr sb, [r3, #0x14]
003e3f88  00 60 97 e5                                      ldr r6, [r7]
003e3f8c  92 bd fe eb                                      bl #0x3935dc
003e3f90  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e3f94  08 c0 90 e5                                      ldr ip, [r0, #8]
003e3f98  09 10 a0 e1                                      mov r1, sb
003e3f9c  03 00 95 e7                                      ldr r0, [r5, r3]
003e3fa0  14 20 8d e2                                      add r2, sp, #0x14
003e3fa4  08 30 a0 e1                                      mov r3, r8
003e3fa8  14 60 8d e5                                      str r6, [sp, #0x14]
003e3fac  18 a0 8d e5                                      str sl, [sp, #0x18]
003e3fb0  1c c0 8d e5                                      str ip, [sp, #0x1c]
003e3fb4  00 80 8d e5                                      str r8, [sp]
003e3fb8  55 c7 02 eb                                      bl #0x495d14
003e3fbc  cf ff ff ea                                      b #0x3e3f00
; mapping-symbol data/literal pool
003e3fc0  50 0c 5b 00 40 23 00 00 08 1b 00 00              .byte 0x50, 0x0c, 0x5b, 0x00, 0x40, 0x23, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x003e3fcc, declared_size=1232, range_size=1232, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZN19LaserTypeProjectile6UpdateEv
; demangled: LaserTypeProjectile::Update()
; decoder-mode: arm
003e3fcc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003e3fd0  e0 63 90 e5                                      ldr r6, [r0, #0x3e0]
003e3fd4  b0 54 9f e5                                      ldr r5, [pc, #0x4b0]
003e3fd8  4c d0 4d e2                                      sub sp, sp, #0x4c
003e3fdc  00 00 56 e3                                      cmp r6, #0
003e3fe0  00 40 a0 e1                                      mov r4, r0
003e3fe4  05 50 8f e0                                      add r5, pc, r5
003e3fe8  04 00 00 da                                      ble #0x3e4000
003e3fec  9c 34 9f e5                                      ldr r3, [pc, #0x49c]
003e3ff0  03 00 95 e7                                      ldr r0, [r5, r3]
003e3ff4  9c ed fc eb                                      bl #0x31f66c
003e3ff8  06 00 60 e0                                      rsb r0, r0, r6
003e3ffc  e0 03 84 e5                                      str r0, [r4, #0x3e0]
003e4000  d1 63 d4 e5                                      ldrb r6, [r4, #0x3d1]
003e4004  00 00 56 e3                                      cmp r6, #0
003e4008  14 00 00 0a                                      beq #0x3e4060
003e400c  bc 33 94 e5                                      ldr r3, [r4, #0x3bc]
003e4010  00 00 53 e3                                      cmp r3, #0
003e4014  02 00 00 0a                                      beq #0x3e4024
003e4018  e0 23 94 e5                                      ldr r2, [r4, #0x3e0]
003e401c  00 00 52 e3                                      cmp r2, #0
003e4020  08 01 00 ba                                      blt #0x3e4448
003e4024  74 33 94 e5                                      ldr r3, [r4, #0x374]
003e4028  64 24 9f e5                                      ldr r2, [pc, #0x464]
003e402c  02 20 95 e7                                      ldr r2, [r5, r2]
003e4030  48 10 a0 e3                                      mov r1, #0x48
003e4034  00 20 92 e5                                      ldr r2, [r2]
003e4038  91 23 23 e0                                      mla r3, r1, r3, r2
003e403c  05 30 d3 e5                                      ldrb r3, [r3, #5]
003e4040  00 00 53 e3                                      cmp r3, #0
003e4044  89 00 00 1a                                      bne #0x3e4270
003e4048  b4 23 94 e5                                      ldr r2, [r4, #0x3b4]
003e404c  00 00 52 e3                                      cmp r2, #0
003e4050  d1 33 c4 c5                                      strbgt r3, [r4, #0x3d1]
003e4054  85 00 00 da                                      ble #0x3e4270
003e4058  4c d0 8d e2                                      add sp, sp, #0x4c
003e405c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003e4060  84 33 94 e5                                      ldr r3, [r4, #0x384]
003e4064  00 00 53 e3                                      cmp r3, #0
003e4068  05 00 00 0a                                      beq #0x3e4084
003e406c  03 00 a0 e1                                      mov r0, r3
003e4070  00 30 93 e5                                      ldr r3, [r3]
003e4074  0f e0 a0 e1                                      mov lr, pc
003e4078  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003e407c  00 00 50 e3                                      cmp r0, #0
003e4080  84 63 84 15                                      strne r6, [r4, #0x384]
003e4084  d0 33 d4 e5                                      ldrb r3, [r4, #0x3d0]
003e4088  00 00 53 e3                                      cmp r3, #0
003e408c  f1 ff ff 1a                                      bne #0x3e4058
003e4090  fc 23 9f e5                                      ldr r2, [pc, #0x3fc]
003e4094  74 33 94 e5                                      ldr r3, [r4, #0x374]
003e4098  48 10 a0 e3                                      mov r1, #0x48
003e409c  02 20 95 e7                                      ldr r2, [r5, r2]
003e40a0  00 20 92 e5                                      ldr r2, [r2]
003e40a4  91 23 23 e0                                      mla r3, r1, r3, r2
003e40a8  35 30 d3 e5                                      ldrb r3, [r3, #0x35]
003e40ac  00 00 53 e3                                      cmp r3, #0
003e40b0  79 00 00 0a                                      beq #0x3e429c
003e40b4  84 03 94 e5                                      ldr r0, [r4, #0x384]
003e40b8  00 00 50 e3                                      cmp r0, #0
003e40bc  76 00 00 0a                                      beq #0x3e429c
003e40c0  45 bd fe eb                                      bl #0x3935dc
003e40c4  00 10 a0 e1                                      mov r1, r0
003e40c8  04 00 a0 e1                                      mov r0, r4
003e40cc  4b bd fe eb                                      bl #0x393600
003e40d0  d4 73 94 e5                                      ldr r7, [r4, #0x3d4]
003e40d4  dc 03 94 e5                                      ldr r0, [r4, #0x3dc]
003e40d8  00 30 97 e5                                      ldr r3, [r7]
003e40dc  a4 60 93 e5                                      ldr r6, [r3, #0xa4]
003e40e0  3d bd fe eb                                      bl #0x3935dc
003e40e4  04 20 90 e5                                      ldr r2, [r0, #4]
003e40e8  00 10 90 e5                                      ldr r1, [r0]
003e40ec  08 30 90 e5                                      ldr r3, [r0, #8]
003e40f0  20 20 8d e5                                      str r2, [sp, #0x20]
003e40f4  07 00 a0 e1                                      mov r0, r7
003e40f8  1c 10 8d e5                                      str r1, [sp, #0x1c]
003e40fc  24 30 8d e5                                      str r3, [sp, #0x24]
003e4100  1c 10 8d e2                                      add r1, sp, #0x1c
003e4104  36 ff 2f e1                                      blx r6
003e4108  d8 73 94 e5                                      ldr r7, [r4, #0x3d8]
003e410c  04 00 a0 e1                                      mov r0, r4
003e4110  00 30 97 e5                                      ldr r3, [r7]
003e4114  a4 60 93 e5                                      ldr r6, [r3, #0xa4]
003e4118  2f bd fe eb                                      bl #0x3935dc
003e411c  04 20 90 e5                                      ldr r2, [r0, #4]
003e4120  08 30 90 e5                                      ldr r3, [r0, #8]
003e4124  00 10 90 e5                                      ldr r1, [r0]
003e4128  14 20 8d e5                                      str r2, [sp, #0x14]
003e412c  18 30 8d e5                                      str r3, [sp, #0x18]
003e4130  07 00 a0 e1                                      mov r0, r7
003e4134  10 10 8d e5                                      str r1, [sp, #0x10]
003e4138  10 10 8d e2                                      add r1, sp, #0x10
003e413c  36 ff 2f e1                                      blx r6
003e4140  04 00 a0 e1                                      mov r0, r4
003e4144  a7 a2 fe eb                                      bl #0x38cbe8
003e4148  40 33 9f e5                                      ldr r3, [pc, #0x340]
003e414c  ac 73 94 e5                                      ldr r7, [r4, #0x3ac]
003e4150  b0 83 94 e5                                      ldr r8, [r4, #0x3b0]
003e4154  03 60 95 e7                                      ldr r6, [r5, r3]
003e4158  06 00 a0 e1                                      mov r0, r6
003e415c  42 ed fc eb                                      bl #0x31f66c
003e4160  5e a8 fc eb                                      bl #0x30e2e0
003e4164  00 10 a0 e1                                      mov r1, r0
003e4168  08 00 a0 e1                                      mov r0, r8
003e416c  fe aa fc eb                                      bl #0x30ed6c
003e4170  31 13 a0 e3                                      mov r1, #0xc4000000
003e4174  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e4178  c5 aa fc eb                                      bl #0x30ec94
003e417c  00 10 a0 e1                                      mov r1, r0
003e4180  07 00 a0 e1                                      mov r0, r7
003e4184  86 aa fc eb                                      bl #0x30eba4
003e4188  ac 03 84 e5                                      str r0, [r4, #0x3ac]
003e418c  06 00 a0 e1                                      mov r0, r6
003e4190  b4 63 94 e5                                      ldr r6, [r4, #0x3b4]
003e4194  34 ed fc eb                                      bl #0x31f66c
003e4198  06 00 60 e0                                      rsb r0, r0, r6
003e419c  00 00 50 e3                                      cmp r0, #0
003e41a0  b4 03 84 e5                                      str r0, [r4, #0x3b4]
003e41a4  98 00 00 da                                      ble #0x3e440c
003e41a8  ac 03 94 e5                                      ldr r0, [r4, #0x3ac]
003e41ac  00 10 a0 e3                                      mov r1, #0
003e41b0  fd a9 fc eb                                      bl #0x30e9ac
003e41b4  00 00 50 e3                                      cmp r0, #0
003e41b8  93 00 00 1a                                      bne #0x3e440c
003e41bc  a8 03 94 e5                                      ldr r0, [r4, #0x3a8]
003e41c0  00 10 a0 e3                                      mov r1, #0
003e41c4  ba a8 fc eb                                      bl #0x30e4b4
003e41c8  00 00 50 e3                                      cmp r0, #0
003e41cc  69 00 00 1a                                      bne #0x3e4378
003e41d0  c0 72 9f e5                                      ldr r7, [pc, #0x2c0]
003e41d4  00 c0 a0 e3                                      mov ip, #0
003e41d8  40 e0 8d e2                                      add lr, sp, #0x40
003e41dc  16 6e 84 e2                                      add r6, r4, #0x160
003e41e0  04 e0 8d e5                                      str lr, [sp, #4]
003e41e4  07 00 95 e7                                      ldr r0, [r5, r7]
003e41e8  01 e0 a0 e3                                      mov lr, #1
003e41ec  0c 30 a0 e1                                      mov r3, ip
003e41f0  06 10 a0 e1                                      mov r1, r6
003e41f4  44 20 8d e2                                      add r2, sp, #0x44
003e41f8  08 e0 8d e5                                      str lr, [sp, #8]
003e41fc  00 c0 8d e5                                      str ip, [sp]
003e4200  c0 04 05 eb                                      bl #0x525508
003e4204  00 00 50 e3                                      cmp r0, #0
003e4208  85 00 00 0a                                      beq #0x3e4424
003e420c  40 10 9d e5                                      ldr r1, [sp, #0x40]
003e4210  00 00 51 e3                                      cmp r1, #0
003e4214  82 00 00 0a                                      beq #0x3e4424
003e4218  72 0f 84 e2                                      add r0, r4, #0x1c8
003e421c  03 00 05 eb                                      bl #0x524230
003e4220  00 00 50 e3                                      cmp r0, #0
003e4224  03 00 00 1a                                      bne #0x3e4238
003e4228  40 30 9d e5                                      ldr r3, [sp, #0x40]
003e422c  24 30 93 e5                                      ldr r3, [r3, #0x24]
003e4230  02 04 13 e3                                      tst r3, #0x2000000
003e4234  07 00 00 0a                                      beq #0x3e4258
003e4238  a4 33 94 e5                                      ldr r3, [r4, #0x3a4]
003e423c  00 00 53 e3                                      cmp r3, #0
003e4240  84 ff ff 0a                                      beq #0x3e4058
003e4244  a0 03 94 e5                                      ldr r0, [r4, #0x3a0]
003e4248  44 10 9d e5                                      ldr r1, [sp, #0x44]
003e424c  d6 a9 fc eb                                      bl #0x30e9ac
003e4250  00 00 50 e3                                      cmp r0, #0
003e4254  7f ff ff 0a                                      beq #0x3e4058
003e4258  04 00 a0 e1                                      mov r0, r4
003e425c  02 10 a0 e3                                      mov r1, #2
003e4260  84 03 00 eb                                      bl #0x3e5078
003e4264  00 30 e0 e3                                      mvn r3, #0
003e4268  b4 33 84 e5                                      str r3, [r4, #0x3b4]
003e426c  79 ff ff ea                                      b #0x3e4058
003e4270  01 20 a0 e3                                      mov r2, #1
003e4274  00 50 a0 e3                                      mov r5, #0
003e4278  78 03 94 e5                                      ldr r0, [r4, #0x378]
003e427c  04 10 a0 e1                                      mov r1, r4
003e4280  d0 23 c4 e5                                      strb r2, [r4, #0x3d0]
003e4284  d1 53 c4 e5                                      strb r5, [r4, #0x3d1]
003e4288  c9 07 00 eb                                      bl #0x3e61b4
003e428c  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003e4290  05 10 a0 e1                                      mov r1, r5
003e4294  33 34 02 eb                                      bl #0x471368
003e4298  6e ff ff ea                                      b #0x3e4058
003e429c  04 00 a0 e1                                      mov r0, r4
003e42a0  cd bc fe eb                                      bl #0x3935dc
003e42a4  04 10 90 e5                                      ldr r1, [r0, #4]
003e42a8  00 60 a0 e1                                      mov r6, r0
003e42ac  ac 01 94 e5                                      ldr r0, [r4, #0x1ac]
003e42b0  3d a8 fc eb                                      bl #0x30e3ac
003e42b4  08 10 96 e5                                      ldr r1, [r6, #8]
003e42b8  00 80 a0 e1                                      mov r8, r0
003e42bc  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
003e42c0  39 a8 fc eb                                      bl #0x30e3ac
003e42c4  00 10 96 e5                                      ldr r1, [r6]
003e42c8  00 70 a0 e1                                      mov r7, r0
003e42cc  a8 01 94 e5                                      ldr r0, [r4, #0x1a8]
003e42d0  35 a8 fc eb                                      bl #0x30e3ac
003e42d4  34 00 8d e5                                      str r0, [sp, #0x34]
003e42d8  34 00 8d e2                                      add r0, sp, #0x34
003e42dc  38 80 8d e5                                      str r8, [sp, #0x38]
003e42e0  3c 70 8d e5                                      str r7, [sp, #0x3c]
003e42e4  71 a3 fd eb                                      bl #0x34d0b0
003e42e8  11 13 a0 e3                                      mov r1, #0x44000000
003e42ec  34 00 9d e5                                      ldr r0, [sp, #0x34]
003e42f0  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e42f4  9c aa fc eb                                      bl #0x30ed6c
003e42f8  11 13 a0 e3                                      mov r1, #0x44000000
003e42fc  34 00 8d e5                                      str r0, [sp, #0x34]
003e4300  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e4304  38 00 9d e5                                      ldr r0, [sp, #0x38]
003e4308  97 aa fc eb                                      bl #0x30ed6c
003e430c  11 13 a0 e3                                      mov r1, #0x44000000
003e4310  38 00 8d e5                                      str r0, [sp, #0x38]
003e4314  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e4318  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
003e431c  92 aa fc eb                                      bl #0x30ed6c
003e4320  3c 00 8d e5                                      str r0, [sp, #0x3c]
003e4324  04 00 a0 e1                                      mov r0, r4
003e4328  ab bc fe eb                                      bl #0x3935dc
003e432c  04 10 90 e5                                      ldr r1, [r0, #4]
003e4330  00 60 a0 e1                                      mov r6, r0
003e4334  38 00 9d e5                                      ldr r0, [sp, #0x38]
003e4338  19 aa fc eb                                      bl #0x30eba4
003e433c  08 10 96 e5                                      ldr r1, [r6, #8]
003e4340  00 80 a0 e1                                      mov r8, r0
003e4344  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
003e4348  15 aa fc eb                                      bl #0x30eba4
003e434c  00 10 96 e5                                      ldr r1, [r6]
003e4350  00 70 a0 e1                                      mov r7, r0
003e4354  34 00 9d e5                                      ldr r0, [sp, #0x34]
003e4358  11 aa fc eb                                      bl #0x30eba4
003e435c  28 10 8d e2                                      add r1, sp, #0x28
003e4360  28 00 8d e5                                      str r0, [sp, #0x28]
003e4364  04 00 a0 e1                                      mov r0, r4
003e4368  2c 80 8d e5                                      str r8, [sp, #0x2c]
003e436c  30 70 8d e5                                      str r7, [sp, #0x30]
003e4370  a2 bc fe eb                                      bl #0x393600
003e4374  55 ff ff ea                                      b #0x3e40d0
003e4378  04 00 a0 e1                                      mov r0, r4
003e437c  96 bc fe eb                                      bl #0x3935dc
003e4380  88 13 94 e5                                      ldr r1, [r4, #0x388]
003e4384  00 60 a0 e1                                      mov r6, r0
003e4388  00 00 90 e5                                      ldr r0, [r0]
003e438c  06 a8 fc eb                                      bl #0x30e3ac
003e4390  8c 13 94 e5                                      ldr r1, [r4, #0x38c]
003e4394  00 a0 a0 e1                                      mov sl, r0
003e4398  04 00 96 e5                                      ldr r0, [r6, #4]
003e439c  02 a8 fc eb                                      bl #0x30e3ac
003e43a0  90 13 94 e5                                      ldr r1, [r4, #0x390]
003e43a4  00 80 a0 e1                                      mov r8, r0
003e43a8  08 00 96 e5                                      ldr r0, [r6, #8]
003e43ac  fe a7 fc eb                                      bl #0x30e3ac
003e43b0  0a 10 a0 e1                                      mov r1, sl
003e43b4  00 70 a0 e1                                      mov r7, r0
003e43b8  0a 00 a0 e1                                      mov r0, sl
003e43bc  6a aa fc eb                                      bl #0x30ed6c
003e43c0  08 10 a0 e1                                      mov r1, r8
003e43c4  00 60 a0 e1                                      mov r6, r0
003e43c8  08 00 a0 e1                                      mov r0, r8
003e43cc  66 aa fc eb                                      bl #0x30ed6c
003e43d0  00 10 a0 e1                                      mov r1, r0
003e43d4  06 00 a0 e1                                      mov r0, r6
003e43d8  f1 a9 fc eb                                      bl #0x30eba4
003e43dc  07 10 a0 e1                                      mov r1, r7
003e43e0  00 60 a0 e1                                      mov r6, r0
003e43e4  07 00 a0 e1                                      mov r0, r7
003e43e8  5f aa fc eb                                      bl #0x30ed6c
003e43ec  00 10 a0 e1                                      mov r1, r0
003e43f0  06 00 a0 e1                                      mov r0, r6
003e43f4  ea a9 fc eb                                      bl #0x30eba4
003e43f8  00 10 a0 e1                                      mov r1, r0
003e43fc  a8 03 94 e5                                      ldr r0, [r4, #0x3a8]
003e4400  69 a9 fc eb                                      bl #0x30e9ac
003e4404  00 00 50 e3                                      cmp r0, #0
003e4408  70 ff ff 0a                                      beq #0x3e41d0
003e440c  04 00 a0 e1                                      mov r0, r4
003e4410  01 10 a0 e3                                      mov r1, #1
003e4414  17 03 00 eb                                      bl #0x3e5078
003e4418  00 30 e0 e3                                      mvn r3, #0
003e441c  b4 33 84 e5                                      str r3, [r4, #0x3b4]
003e4420  0c ff ff ea                                      b #0x3e4058
003e4424  06 10 a0 e1                                      mov r1, r6
003e4428  07 00 95 e7                                      ldr r0, [r5, r7]
003e442c  55 03 05 eb                                      bl #0x525188
003e4430  00 10 50 e2                                      subs r1, r0, #0
003e4434  0f 00 00 0a                                      beq #0x3e4478
003e4438  24 30 91 e5                                      ldr r3, [r1, #0x24]
003e443c  01 00 13 e3                                      tst r3, #1
003e4440  04 ff ff 0a                                      beq #0x3e4058
003e4444  83 ff ff ea                                      b #0x3e4258
003e4448  c0 13 94 e5                                      ldr r1, [r4, #0x3c0]
003e444c  04 00 a0 e1                                      mov r0, r4
003e4450  33 ff 2f e1                                      blx r3
003e4454  38 20 9f e5                                      ldr r2, [pc, #0x38]
003e4458  74 33 94 e5                                      ldr r3, [r4, #0x374]
003e445c  48 00 a0 e3                                      mov r0, #0x48
003e4460  02 10 95 e7                                      ldr r1, [r5, r2]
003e4464  00 10 91 e5                                      ldr r1, [r1]
003e4468  90 13 21 e0                                      mla r1, r0, r3, r1
003e446c  38 10 91 e5                                      ldr r1, [r1, #0x38]
003e4470  e0 13 84 e5                                      str r1, [r4, #0x3e0]
003e4474  ec fe ff ea                                      b #0x3e402c
003e4478  04 00 a0 e1                                      mov r0, r4
003e447c  fd 02 00 eb                                      bl #0x3e5078
003e4480  00 30 e0 e3                                      mvn r3, #0
003e4484  b4 33 84 e5                                      str r3, [r4, #0x3b4]
003e4488  f2 fe ff ea                                      b #0x3e4058
; mapping-symbol data/literal pool
003e448c  ac 0a 5b 00 f4 37 00 00 40 23 00 00 04 12 00 00  .byte 0xac, 0x0a, 0x5b, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x40, 0x23, 0x00, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x003e449c, declared_size=212, range_size=212, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZN19LaserTypeProjectile7SetInfoEiP10GameObjectS1_PFiP10ProjectilePvES6_S4_f
; demangled: LaserTypeProjectile::SetInfo(int, GameObject*, GameObject*, int (*)(Projectile*, void*), int (*)(Projectile*, void*), void*, float)
; decoder-mode: arm
003e449c  b4 c0 9f e5                                      ldr ip, [pc, #0xb4]
003e44a0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003e44a4  00 40 a0 e1                                      mov r4, r0
003e44a8  ac 00 9f e5                                      ldr r0, [pc, #0xac]
003e44ac  0c c0 8f e0                                      add ip, pc, ip
003e44b0  02 60 a0 e1                                      mov r6, r2
003e44b4  00 00 9c e7                                      ldr r0, [ip, r0]
003e44b8  03 50 a0 e1                                      mov r5, r3
003e44bc  14 d0 4d e2                                      sub sp, sp, #0x14
003e44c0  00 20 90 e5                                      ldr r2, [r0]
003e44c4  01 70 a0 e1                                      mov r7, r1
003e44c8  02 00 52 e3                                      cmp r2, #2
003e44cc  00 30 a0 03                                      moveq r3, #0
003e44d0  00 30 83 05                                      streq r3, [r3]
003e44d4  01 00 00 0a                                      beq #0x3e44e0
003e44d8  01 00 52 e3                                      cmp r2, #1
003e44dc  10 00 00 0a                                      beq #0x3e4524
003e44e0  28 30 9d e5                                      ldr r3, [sp, #0x28]
003e44e4  04 00 a0 e1                                      mov r0, r4
003e44e8  07 10 a0 e1                                      mov r1, r7
003e44ec  00 30 8d e5                                      str r3, [sp]
003e44f0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
003e44f4  06 20 a0 e1                                      mov r2, r6
003e44f8  04 30 8d e5                                      str r3, [sp, #4]
003e44fc  30 30 9d e5                                      ldr r3, [sp, #0x30]
003e4500  08 30 8d e5                                      str r3, [sp, #8]
003e4504  00 30 a0 e3                                      mov r3, #0
003e4508  0c 30 8d e5                                      str r3, [sp, #0xc]
003e450c  00 c0 94 e5                                      ldr ip, [r4]
003e4510  05 30 a0 e1                                      mov r3, r5
003e4514  0f e0 a0 e1                                      mov lr, pc
003e4518  c8 f0 9c e5                                      ldr pc, [ip, #0xc8]
003e451c  14 d0 8d e2                                      add sp, sp, #0x14
003e4520  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003e4524  34 00 9f e5                                      ldr r0, [pc, #0x34]
003e4528  34 10 9f e5                                      ldr r1, [pc, #0x34]
003e452c  34 20 9f e5                                      ldr r2, [pc, #0x34]
003e4530  00 00 9c e7                                      ldr r0, [ip, r0]
003e4534  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e4538  b2 c0 a0 e3                                      mov ip, #0xb2
003e453c  01 10 8f e0                                      add r1, pc, r1
003e4540  02 20 8f e0                                      add r2, pc, r2
003e4544  03 30 8f e0                                      add r3, pc, r3
003e4548  a8 00 80 e2                                      add r0, r0, #0xa8
003e454c  00 c0 8d e5                                      str ip, [sp]
003e4550  ab a6 fc eb                                      bl #0x30e004
003e4554  e1 ff ff ea                                      b #0x3e44e0
; mapping-symbol data/literal pool
003e4558  e4 05 5b 00 c0 39 00 00 c0 19 00 00 9c 9e 4d 00  .byte 0xe4, 0x05, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x9c, 0x9e, 0x4d, 0x00
003e4568  68 19 4e 00 ac 19 4e 00                          .byte 0x68, 0x19, 0x4e, 0x00, 0xac, 0x19, 0x4e, 0x00

; FUNCTION 0x003e4570, declared_size=1360, range_size=1360, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZN19LaserTypeProjectile7SetInfoEiP10GameObjectS1_PFiP10ProjectilePvES6_S4_b
; demangled: LaserTypeProjectile::SetInfo(int, GameObject*, GameObject*, int (*)(Projectile*, void*), int (*)(Projectile*, void*), void*, bool)
; decoder-mode: arm
003e4570  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e4574  00 55 9f e5                                      ldr r5, [pc, #0x500]
003e4578  6c d0 4d e2                                      sub sp, sp, #0x6c
003e457c  00 70 51 e2                                      subs r7, r1, #0
003e4580  05 50 8f e0                                      add r5, pc, r5
003e4584  00 40 a0 e1                                      mov r4, r0
003e4588  02 60 a0 e1                                      mov r6, r2
003e458c  03 80 a0 e1                                      mov r8, r3
003e4590  9c 90 dd e5                                      ldrb sb, [sp, #0x9c]
003e4594  b8 00 00 ba                                      blt #0x3e487c
003e4598  e0 34 9f e5                                      ldr r3, [pc, #0x4e0]
003e459c  03 30 95 e7                                      ldr r3, [r5, r3]
003e45a0  00 30 93 e5                                      ldr r3, [r3]
003e45a4  03 00 57 e1                                      cmp r7, r3
003e45a8  b3 00 00 aa                                      bge #0x3e487c
003e45ac  00 00 56 e3                                      cmp r6, #0
003e45b0  eb 00 00 0a                                      beq #0x3e4964
003e45b4  c8 34 9f e5                                      ldr r3, [pc, #0x4c8]
003e45b8  00 20 a0 e3                                      mov r2, #0
003e45bc  5c a0 8d e2                                      add sl, sp, #0x5c
003e45c0  03 30 95 e7                                      ldr r3, [r5, r3]
003e45c4  00 b0 a0 e3                                      mov fp, #0
003e45c8  06 00 a0 e1                                      mov r0, r6
003e45cc  00 30 93 e5                                      ldr r3, [r3]
003e45d0  74 73 84 e5                                      str r7, [r4, #0x374]
003e45d4  84 83 84 e5                                      str r8, [r4, #0x384]
003e45d8  94 10 9d e5                                      ldr r1, [sp, #0x94]
003e45dc  bc 13 84 e5                                      str r1, [r4, #0x3bc]
003e45e0  98 10 9d e5                                      ldr r1, [sp, #0x98]
003e45e4  d1 23 c4 e5                                      strb r2, [r4, #0x3d1]
003e45e8  dc 63 84 e5                                      str r6, [r4, #0x3dc]
003e45ec  c0 13 84 e5                                      str r1, [r4, #0x3c0]
003e45f0  80 23 84 e5                                      str r2, [r4, #0x380]
003e45f4  d0 23 c4 e5                                      strb r2, [r4, #0x3d0]
003e45f8  0a 10 a0 e1                                      mov r1, sl
003e45fc  48 20 a0 e3                                      mov r2, #0x48
003e4600  92 37 27 e0                                      mla r7, r2, r7, r3
003e4604  5c b0 8d e5                                      str fp, [sp, #0x5c]
003e4608  60 b0 8d e5                                      str fp, [sp, #0x60]
003e460c  64 b0 8d e5                                      str fp, [sp, #0x64]
003e4610  33 bd fe eb                                      bl #0x393ae4
003e4614  dc 03 94 e5                                      ldr r0, [r4, #0x3dc]
003e4618  ef bb fe eb                                      bl #0x3935dc
003e461c  00 30 90 e5                                      ldr r3, [r0]
003e4620  0b 10 a0 e1                                      mov r1, fp
003e4624  88 33 84 e5                                      str r3, [r4, #0x388]
003e4628  04 30 90 e5                                      ldr r3, [r0, #4]
003e462c  8c 33 84 e5                                      str r3, [r4, #0x38c]
003e4630  08 30 90 e5                                      ldr r3, [r0, #8]
003e4634  a0 33 84 e5                                      str r3, [r4, #0x3a0]
003e4638  90 33 84 e5                                      str r3, [r4, #0x390]
003e463c  20 60 97 e5                                      ldr r6, [r7, #0x20]
003e4640  06 00 a0 e1                                      mov r0, r6
003e4644  9a a7 fc eb                                      bl #0x30e4b4
003e4648  00 00 50 e3                                      cmp r0, #0
003e464c  bf 04 a0 03                                      moveq r0, #0xbf000000
003e4650  02 05 80 02                                      addeq r0, r0, #0x800000
003e4654  02 00 00 0a                                      beq #0x3e4664
003e4658  06 00 a0 e1                                      mov r0, r6
003e465c  06 10 a0 e1                                      mov r1, r6
003e4660  c1 a9 fc eb                                      bl #0x30ed6c
003e4664  dc 33 94 e5                                      ldr r3, [r4, #0x3dc]
003e4668  a8 03 84 e5                                      str r0, [r4, #0x3a8]
003e466c  d8 02 93 e5                                      ldr r0, [r3, #0x2d8]
003e4670  00 00 50 e3                                      cmp r0, #0
003e4674  a4 03 84 05                                      streq r0, [r4, #0x3a4]
003e4678  0f 00 00 0a                                      beq #0x3e46bc
003e467c  04 14 9f e5                                      ldr r1, [pc, #0x404]
003e4680  01 10 8f e0                                      add r1, pc, r1
003e4684  e3 30 02 eb                                      bl #0x470a18
003e4688  00 00 50 e3                                      cmp r0, #0
003e468c  00 10 a0 e1                                      mov r1, r0
003e4690  a4 03 84 e5                                      str r0, [r4, #0x3a4]
003e4694  08 00 00 0a                                      beq #0x3e46bc
003e4698  50 00 8d e2                                      add r0, sp, #0x50
003e469c  b7 ca 06 eb                                      bl #0x597180
003e46a0  58 30 9d e5                                      ldr r3, [sp, #0x58]
003e46a4  50 10 9d e5                                      ldr r1, [sp, #0x50]
003e46a8  54 20 9d e5                                      ldr r2, [sp, #0x54]
003e46ac  a0 33 84 e5                                      str r3, [r4, #0x3a0]
003e46b0  88 13 84 e5                                      str r1, [r4, #0x388]
003e46b4  8c 23 84 e5                                      str r2, [r4, #0x38c]
003e46b8  90 33 84 e5                                      str r3, [r4, #0x390]
003e46bc  40 30 97 e5                                      ldr r3, [r7, #0x40]
003e46c0  00 20 e0 e3                                      mvn r2, #0
003e46c4  ac 33 84 e5                                      str r3, [r4, #0x3ac]
003e46c8  44 30 97 e5                                      ldr r3, [r7, #0x44]
003e46cc  b0 33 84 e5                                      str r3, [r4, #0x3b0]
003e46d0  3c 30 97 e5                                      ldr r3, [r7, #0x3c]
003e46d4  e0 23 84 e5                                      str r2, [r4, #0x3e0]
003e46d8  b4 33 84 e5                                      str r3, [r4, #0x3b4]
003e46dc  28 10 97 e5                                      ldr r1, [r7, #0x28]
003e46e0  00 00 51 e3                                      cmp r1, #0
003e46e4  9a 00 00 ba                                      blt #0x3e4954
003e46e8  9c 33 9f e5                                      ldr r3, [pc, #0x39c]
003e46ec  0c e0 a0 e3                                      mov lr, #0xc
003e46f0  00 20 a0 e3                                      mov r2, #0
003e46f4  03 c0 95 e7                                      ldr ip, [r5, r3]
003e46f8  04 00 a0 e1                                      mov r0, r4
003e46fc  02 30 a0 e1                                      mov r3, r2
003e4700  00 c0 9c e5                                      ldr ip, [ip]
003e4704  9e c1 21 e0                                      mla r1, lr, r1, ip
003e4708  08 10 91 e5                                      ldr r1, [r1, #8]
003e470c  88 c1 fe eb                                      bl #0x394d34
003e4710  d8 62 94 e5                                      ldr r6, [r4, #0x2d8]
003e4714  00 00 56 e3                                      cmp r6, #0
003e4718  d4 63 84 05                                      streq r6, [r4, #0x3d4]
003e471c  06 00 a0 01                                      moveq r0, r6
003e4720  08 00 00 0a                                      beq #0x3e4748
003e4724  64 13 9f e5                                      ldr r1, [pc, #0x364]
003e4728  06 00 a0 e1                                      mov r0, r6
003e472c  01 10 8f e0                                      add r1, pc, r1
003e4730  b8 30 02 eb                                      bl #0x470a18
003e4734  58 13 9f e5                                      ldr r1, [pc, #0x358]
003e4738  d4 03 84 e5                                      str r0, [r4, #0x3d4]
003e473c  06 00 a0 e1                                      mov r0, r6
003e4740  01 10 8f e0                                      add r1, pc, r1
003e4744  b3 30 02 eb                                      bl #0x470a18
003e4748  d8 03 84 e5                                      str r0, [r4, #0x3d8]
003e474c  dc 62 94 e5                                      ldr r6, [r4, #0x2dc]
003e4750  00 00 56 e3                                      cmp r6, #0
003e4754  aa 00 00 0a                                      beq #0x3e4a04
003e4758  00 50 a0 e3                                      mov r5, #0
003e475c  04 00 a0 e1                                      mov r0, r4
003e4760  44 10 8d e2                                      add r1, sp, #0x44
003e4764  01 20 a0 e3                                      mov r2, #1
003e4768  44 50 8d e5                                      str r5, [sp, #0x44]
003e476c  48 50 8d e5                                      str r5, [sp, #0x48]
003e4770  4c 50 8d e5                                      str r5, [sp, #0x4c]
003e4774  8e bd fe eb                                      bl #0x393db4
003e4778  d4 03 94 e5                                      ldr r0, [r4, #0x3d4]
003e477c  88 13 94 e5                                      ldr r1, [r4, #0x388]
003e4780  8c 23 94 e5                                      ldr r2, [r4, #0x38c]
003e4784  a0 33 94 e5                                      ldr r3, [r4, #0x3a0]
003e4788  71 ca 06 eb                                      bl #0x597154
003e478c  d8 03 94 e5                                      ldr r0, [r4, #0x3d8]
003e4790  88 13 94 e5                                      ldr r1, [r4, #0x388]
003e4794  8c 23 94 e5                                      ldr r2, [r4, #0x38c]
003e4798  a0 33 94 e5                                      ldr r3, [r4, #0x3a0]
003e479c  6c ca 06 eb                                      bl #0x597154
003e47a0  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003e47a4  00 00 50 e3                                      cmp r0, #0
003e47a8  1f 00 00 0a                                      beq #0x3e482c
003e47ac  01 10 a0 e3                                      mov r1, #1
003e47b0  ec 32 02 eb                                      bl #0x471368
003e47b4  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003e47b8  00 10 a0 e3                                      mov r1, #0
003e47bc  66 38 02 eb                                      bl #0x47295c
003e47c0  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
003e47c4  00 60 a0 e3                                      mov r6, #0
003e47c8  06 10 a0 e1                                      mov r1, r6
003e47cc  38 c0 93 e5                                      ldr ip, [r3, #0x38]
003e47d0  01 20 a0 e3                                      mov r2, #1
003e47d4  06 30 a0 e1                                      mov r3, r6
003e47d8  0c 00 a0 e1                                      mov r0, ip
003e47dc  00 c0 9c e5                                      ldr ip, [ip]
003e47e0  00 60 8d e5                                      str r6, [sp]
003e47e4  0f e0 a0 e1                                      mov lr, pc
003e47e8  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003e47ec  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003e47f0  08 30 90 e5                                      ldr r3, [r0, #8]
003e47f4  06 00 53 e1                                      cmp r3, r6
003e47f8  0b 00 00 0a                                      beq #0x3e482c
003e47fc  38 10 8d e2                                      add r1, sp, #0x38
003e4800  40 50 8d e5                                      str r5, [sp, #0x40]
003e4804  38 50 8d e5                                      str r5, [sp, #0x38]
003e4808  3c 50 8d e5                                      str r5, [sp, #0x3c]
003e480c  04 31 02 eb                                      bl #0x470c24
003e4810  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
003e4814  06 10 a0 e1                                      mov r1, r6
003e4818  08 30 93 e5                                      ldr r3, [r3, #8]
003e481c  03 00 a0 e1                                      mov r0, r3
003e4820  00 30 93 e5                                      ldr r3, [r3]
003e4824  0f e0 a0 e1                                      mov lr, pc
003e4828  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003e482c  04 00 a0 e1                                      mov r0, r4
003e4830  e2 1f 84 e2                                      add r1, r4, #0x388
003e4834  01 20 a0 e3                                      mov r2, #1
003e4838  5d bd fe eb                                      bl #0x393db4
003e483c  84 03 94 e5                                      ldr r0, [r4, #0x384]
003e4840  00 00 50 e3                                      cmp r0, #0
003e4844  22 00 00 0a                                      beq #0x3e48d4
003e4848  63 bb fe eb                                      bl #0x3935dc
003e484c  00 10 a0 e1                                      mov r1, r0
003e4850  04 00 a0 e1                                      mov r0, r4
003e4854  69 bb fe eb                                      bl #0x393600
003e4858  72 4f 84 e2                                      add r4, r4, #0x1c8
003e485c  04 00 a0 e1                                      mov r0, r4
003e4860  01 10 a0 e3                                      mov r1, #1
003e4864  62 fe 04 eb                                      bl #0x5241f4
003e4868  04 00 a0 e1                                      mov r0, r4
003e486c  01 10 a0 e3                                      mov r1, #1
003e4870  68 fe 04 eb                                      bl #0x524218
003e4874  6c d0 8d e2                                      add sp, sp, #0x6c
003e4878  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e487c  14 32 9f e5                                      ldr r3, [pc, #0x214]
003e4880  03 30 95 e7                                      ldr r3, [r5, r3]
003e4884  00 30 93 e5                                      ldr r3, [r3]
003e4888  02 00 53 e3                                      cmp r3, #2
003e488c  00 30 a0 03                                      moveq r3, #0
003e4890  00 30 83 05                                      streq r3, [r3]
003e4894  44 ff ff 0a                                      beq #0x3e45ac
003e4898  01 00 53 e3                                      cmp r3, #1
003e489c  42 ff ff 1a                                      bne #0x3e45ac
003e48a0  f4 01 9f e5                                      ldr r0, [pc, #0x1f4]
003e48a4  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
003e48a8  f4 21 9f e5                                      ldr r2, [pc, #0x1f4]
003e48ac  00 00 95 e7                                      ldr r0, [r5, r0]
003e48b0  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
003e48b4  3f c0 a0 e3                                      mov ip, #0x3f
003e48b8  01 10 8f e0                                      add r1, pc, r1
003e48bc  02 20 8f e0                                      add r2, pc, r2
003e48c0  03 30 8f e0                                      add r3, pc, r3
003e48c4  a8 00 80 e2                                      add r0, r0, #0xa8
003e48c8  00 c0 8d e5                                      str ip, [sp]
003e48cc  cc a5 fc eb                                      bl #0x30e004
003e48d0  35 ff ff ea                                      b #0x3e45ac
003e48d4  a4 13 94 e5                                      ldr r1, [r4, #0x3a4]
003e48d8  00 00 51 e3                                      cmp r1, #0
003e48dc  01 00 00 0a                                      beq #0x3e48e8
003e48e0  00 00 59 e3                                      cmp sb, #0
003e48e4  33 00 00 1a                                      bne #0x3e49b8
003e48e8  11 13 a0 e3                                      mov r1, #0x44000000
003e48ec  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e48f0  60 00 9d e5                                      ldr r0, [sp, #0x60]
003e48f4  1c a9 fc eb                                      bl #0x30ed6c
003e48f8  8c 13 94 e5                                      ldr r1, [r4, #0x38c]
003e48fc  a8 a8 fc eb                                      bl #0x30eba4
003e4900  11 13 a0 e3                                      mov r1, #0x44000000
003e4904  00 60 a0 e1                                      mov r6, r0
003e4908  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e490c  64 00 9d e5                                      ldr r0, [sp, #0x64]
003e4910  15 a9 fc eb                                      bl #0x30ed6c
003e4914  90 13 94 e5                                      ldr r1, [r4, #0x390]
003e4918  a1 a8 fc eb                                      bl #0x30eba4
003e491c  11 13 a0 e3                                      mov r1, #0x44000000
003e4920  00 50 a0 e1                                      mov r5, r0
003e4924  7a 18 81 e2                                      add r1, r1, #0x7a0000
003e4928  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
003e492c  0e a9 fc eb                                      bl #0x30ed6c
003e4930  88 13 94 e5                                      ldr r1, [r4, #0x388]
003e4934  9a a8 fc eb                                      bl #0x30eba4
003e4938  20 10 8d e2                                      add r1, sp, #0x20
003e493c  20 00 8d e5                                      str r0, [sp, #0x20]
003e4940  04 00 a0 e1                                      mov r0, r4
003e4944  24 60 8d e5                                      str r6, [sp, #0x24]
003e4948  28 50 8d e5                                      str r5, [sp, #0x28]
003e494c  2b bb fe eb                                      bl #0x393600
003e4950  c0 ff ff ea                                      b #0x3e4858
003e4954  04 00 a0 e1                                      mov r0, r4
003e4958  00 10 a0 e3                                      mov r1, #0
003e495c  75 be fe eb                                      bl #0x394338
003e4960  79 ff ff ea                                      b #0x3e474c
003e4964  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
003e4968  03 30 95 e7                                      ldr r3, [r5, r3]
003e496c  00 30 93 e5                                      ldr r3, [r3]
003e4970  02 00 53 e3                                      cmp r3, #2
003e4974  00 60 86 05                                      streq r6, [r6]
003e4978  0d ff ff 0a                                      beq #0x3e45b4
003e497c  01 00 53 e3                                      cmp r3, #1
003e4980  0b ff ff 1a                                      bne #0x3e45b4
003e4984  10 01 9f e5                                      ldr r0, [pc, #0x110]
003e4988  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
003e498c  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
003e4990  00 00 95 e7                                      ldr r0, [r5, r0]
003e4994  18 31 9f e5                                      ldr r3, [pc, #0x118]
003e4998  40 c0 a0 e3                                      mov ip, #0x40
003e499c  01 10 8f e0                                      add r1, pc, r1
003e49a0  02 20 8f e0                                      add r2, pc, r2
003e49a4  03 30 8f e0                                      add r3, pc, r3
003e49a8  a8 00 80 e2                                      add r0, r0, #0xa8
003e49ac  00 c0 8d e5                                      str ip, [sp]
003e49b0  93 a5 fc eb                                      bl #0x30e004
003e49b4  fe fe ff ea                                      b #0x3e45b4
003e49b8  2c 00 8d e2                                      add r0, sp, #0x2c
003e49bc  ef c9 06 eb                                      bl #0x597180
003e49c0  8c 13 94 e5                                      ldr r1, [r4, #0x38c]
003e49c4  30 00 9d e5                                      ldr r0, [sp, #0x30]
003e49c8  77 a6 fc eb                                      bl #0x30e3ac
003e49cc  90 13 94 e5                                      ldr r1, [r4, #0x390]
003e49d0  00 60 a0 e1                                      mov r6, r0
003e49d4  34 00 9d e5                                      ldr r0, [sp, #0x34]
003e49d8  73 a6 fc eb                                      bl #0x30e3ac
003e49dc  88 13 94 e5                                      ldr r1, [r4, #0x388]
003e49e0  00 50 a0 e1                                      mov r5, r0
003e49e4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
003e49e8  6f a6 fc eb                                      bl #0x30e3ac
003e49ec  5c 00 8d e5                                      str r0, [sp, #0x5c]
003e49f0  0a 00 a0 e1                                      mov r0, sl
003e49f4  60 60 8d e5                                      str r6, [sp, #0x60]
003e49f8  64 50 8d e5                                      str r5, [sp, #0x64]
003e49fc  ab a1 fd eb                                      bl #0x34d0b0
003e4a00  b8 ff ff ea                                      b #0x3e48e8
003e4a04  ac 30 9f e5                                      ldr r3, [pc, #0xac]
003e4a08  06 10 a0 e1                                      mov r1, r6
003e4a0c  28 00 a0 e3                                      mov r0, #0x28
003e4a10  03 30 95 e7                                      ldr r3, [r5, r3]
003e4a14  44 80 93 e5                                      ldr r8, [r3, #0x44]
003e4a18  d4 ae fc eb                                      bl #0x310570
003e4a1c  20 e0 a0 e3                                      mov lr, #0x20
003e4a20  01 c0 a0 e3                                      mov ip, #1
003e4a24  08 10 a0 e1                                      mov r1, r8
003e4a28  04 20 a0 e1                                      mov r2, r4
003e4a2c  06 30 a0 e1                                      mov r3, r6
003e4a30  10 e0 8d e5                                      str lr, [sp, #0x10]
003e4a34  1f e5 00 e3                                      movw lr, #0x51f
003e4a38  00 70 a0 e1                                      mov r7, r0
003e4a3c  08 c0 8d e5                                      str ip, [sp, #8]
003e4a40  14 e0 8d e5                                      str lr, [sp, #0x14]
003e4a44  00 c0 8d e5                                      str ip, [sp]
003e4a48  04 c0 8d e5                                      str ip, [sp, #4]
003e4a4c  0c 60 8d e5                                      str r6, [sp, #0xc]
003e4a50  18 60 8d e5                                      str r6, [sp, #0x18]
003e4a54  25 2a 02 eb                                      bl #0x46f2f0
003e4a58  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003e4a5c  07 10 a0 e1                                      mov r1, r7
003e4a60  06 20 a0 e1                                      mov r2, r6
003e4a64  03 30 95 e7                                      ldr r3, [r5, r3]
003e4a68  04 00 a0 e1                                      mov r0, r4
003e4a6c  08 30 83 e2                                      add r3, r3, #8
003e4a70  00 30 87 e5                                      str r3, [r7]
003e4a74  5f c0 fe eb                                      bl #0x394bf8
003e4a78  36 ff ff ea                                      b #0x3e4758
; mapping-symbol data/literal pool
003e4a7c  10 05 5b 00 70 09 00 00 40 23 00 00 18 19 4e 00  .byte 0x10, 0x05, 0x5b, 0x00, 0x70, 0x09, 0x00, 0x00, 0x40, 0x23, 0x00, 0x00, 0x18, 0x19, 0x4e, 0x00
003e4a8c  e0 19 00 00 7c 18 4e 00 78 18 4e 00 c0 39 00 00  .byte 0xe0, 0x19, 0x00, 0x00, 0x7c, 0x18, 0x4e, 0x00, 0x78, 0x18, 0x4e, 0x00, 0xc0, 0x39, 0x00, 0x00
003e4a9c  c0 19 00 00 20 9b 4d 00 94 16 4e 00 30 16 4e 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x20, 0x9b, 0x4d, 0x00, 0x94, 0x16, 0x4e, 0x00, 0x30, 0x16, 0x4e, 0x00
003e4aac  3c 9a 4d 00 58 e4 4d 00 4c 15 4e 00 f4 37 00 00  .byte 0x3c, 0x9a, 0x4d, 0x00, 0x58, 0xe4, 0x4d, 0x00, 0x4c, 0x15, 0x4e, 0x00, 0xf4, 0x37, 0x00, 0x00
003e4abc  bc 26 00 00                                      .byte 0xbc, 0x26, 0x00, 0x00

; FUNCTION 0x003e4ac0, declared_size=8, range_size=8, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZThn36_N19LaserTypeProjectileD1Ev
; demangled: non-virtual thunk to LaserTypeProjectile::~LaserTypeProjectile()
; decoder-mode: arm
003e4ac0  24 00 40 e2                                      sub r0, r0, #0x24
003e4ac4  ff ff ff ea                                      b #0x3e4ac8

; FUNCTION 0x003e4ac8, declared_size=64, range_size=64, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZN19LaserTypeProjectileD1Ev
; demangled: LaserTypeProjectile::~LaserTypeProjectile()
; decoder-mode: arm
003e4ac8  30 20 9f e5                                      ldr r2, [pc, #0x30]
003e4acc  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e4ad0  10 40 2d e9                                      push {r4, lr}
003e4ad4  02 20 8f e0                                      add r2, pc, r2
003e4ad8  03 30 92 e7                                      ldr r3, [r2, r3]
003e4adc  00 40 a0 e1                                      mov r4, r0
003e4ae0  f0 20 83 e2                                      add r2, r3, #0xf0
003e4ae4  08 10 83 e2                                      add r1, r3, #8
003e4ae8  e4 30 83 e2                                      add r3, r3, #0xe4
003e4aec  0a 00 80 e8                                      stm r0, {r1, r3}
003e4af0  24 20 80 e5                                      str r2, [r0, #0x24]
003e4af4  c1 04 00 eb                                      bl #0x3e5e00
003e4af8  04 00 a0 e1                                      mov r0, r4
003e4afc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003e4b00  bc ff 5a 00 e4 2a 00 00                          .byte 0xbc, 0xff, 0x5a, 0x00, 0xe4, 0x2a, 0x00, 0x00

; FUNCTION 0x003e4b08, declared_size=8, range_size=8, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZThn36_N19LaserTypeProjectileD0Ev
; demangled: non-virtual thunk to LaserTypeProjectile::~LaserTypeProjectile()
; decoder-mode: arm
003e4b08  24 00 40 e2                                      sub r0, r0, #0x24
003e4b0c  ff ff ff ea                                      b #0x3e4b10

; FUNCTION 0x003e4b10, declared_size=28, range_size=28, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZN19LaserTypeProjectileD0Ev
; demangled: LaserTypeProjectile::~LaserTypeProjectile()
; decoder-mode: arm
003e4b10  10 40 2d e9                                      push {r4, lr}
003e4b14  00 40 a0 e1                                      mov r4, r0
003e4b18  ea ff ff eb                                      bl #0x3e4ac8
003e4b1c  04 00 a0 e1                                      mov r0, r4
003e4b20  46 ae fc eb                                      bl #0x310440
003e4b24  04 00 a0 e1                                      mov r0, r4
003e4b28  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003e4b2c, declared_size=64, range_size=64, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZN19LaserTypeProjectileD2Ev
; demangled: LaserTypeProjectile::~LaserTypeProjectile()
; decoder-mode: arm
003e4b2c  30 20 9f e5                                      ldr r2, [pc, #0x30]
003e4b30  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e4b34  10 40 2d e9                                      push {r4, lr}
003e4b38  02 20 8f e0                                      add r2, pc, r2
003e4b3c  03 30 92 e7                                      ldr r3, [r2, r3]
003e4b40  00 40 a0 e1                                      mov r4, r0
003e4b44  f0 20 83 e2                                      add r2, r3, #0xf0
003e4b48  08 10 83 e2                                      add r1, r3, #8
003e4b4c  e4 30 83 e2                                      add r3, r3, #0xe4
003e4b50  0a 00 80 e8                                      stm r0, {r1, r3}
003e4b54  24 20 80 e5                                      str r2, [r0, #0x24]
003e4b58  a8 04 00 eb                                      bl #0x3e5e00
003e4b5c  04 00 a0 e1                                      mov r0, r4
003e4b60  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003e4b64  58 ff 5a 00 e4 2a 00 00                          .byte 0x58, 0xff, 0x5a, 0x00, 0xe4, 0x2a, 0x00, 0x00

; FUNCTION 0x003e4b6c, declared_size=92, range_size=92, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZN19LaserTypeProjectileC1EN10ObjectBase6GO_IDSE
; demangled: LaserTypeProjectile::LaserTypeProjectile(ObjectBase::GO_IDS)
; decoder-mode: arm
003e4b6c  70 40 2d e9                                      push {r4, r5, r6, lr}
003e4b70  48 50 9f e5                                      ldr r5, [pc, #0x48]
003e4b74  00 40 a0 e1                                      mov r4, r0
003e4b78  d7 04 00 eb                                      bl #0x3e5edc
003e4b7c  40 30 9f e5                                      ldr r3, [pc, #0x40]
003e4b80  05 50 8f e0                                      add r5, pc, r5
003e4b84  00 20 a0 e3                                      mov r2, #0
003e4b88  03 30 95 e7                                      ldr r3, [r5, r3]
003e4b8c  dc 23 84 e5                                      str r2, [r4, #0x3dc]
003e4b90  d4 23 84 e5                                      str r2, [r4, #0x3d4]
003e4b94  f0 10 83 e2                                      add r1, r3, #0xf0
003e4b98  08 00 83 e2                                      add r0, r3, #8
003e4b9c  e4 30 83 e2                                      add r3, r3, #0xe4
003e4ba0  04 30 84 e5                                      str r3, [r4, #4]
003e4ba4  00 30 e0 e3                                      mvn r3, #0
003e4ba8  00 00 84 e5                                      str r0, [r4]
003e4bac  24 10 84 e5                                      str r1, [r4, #0x24]
003e4bb0  e0 33 84 e5                                      str r3, [r4, #0x3e0]
003e4bb4  d8 23 84 e5                                      str r2, [r4, #0x3d8]
003e4bb8  04 00 a0 e1                                      mov r0, r4
003e4bbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003e4bc0  10 ff 5a 00 e4 2a 00 00                          .byte 0x10, 0xff, 0x5a, 0x00, 0xe4, 0x2a, 0x00, 0x00

; FUNCTION 0x003e4bc8, declared_size=92, range_size=92, mode=arm
; class-group: LaserTypeProjectile
; alias: _ZN19LaserTypeProjectileC2EN10ObjectBase6GO_IDSE
; demangled: LaserTypeProjectile::LaserTypeProjectile(ObjectBase::GO_IDS)
; decoder-mode: arm
003e4bc8  70 40 2d e9                                      push {r4, r5, r6, lr}
003e4bcc  48 50 9f e5                                      ldr r5, [pc, #0x48]
003e4bd0  00 40 a0 e1                                      mov r4, r0
003e4bd4  c0 04 00 eb                                      bl #0x3e5edc
003e4bd8  40 30 9f e5                                      ldr r3, [pc, #0x40]
003e4bdc  05 50 8f e0                                      add r5, pc, r5
003e4be0  00 20 a0 e3                                      mov r2, #0
003e4be4  03 30 95 e7                                      ldr r3, [r5, r3]
003e4be8  dc 23 84 e5                                      str r2, [r4, #0x3dc]
003e4bec  d4 23 84 e5                                      str r2, [r4, #0x3d4]
003e4bf0  f0 10 83 e2                                      add r1, r3, #0xf0
003e4bf4  08 00 83 e2                                      add r0, r3, #8
003e4bf8  e4 30 83 e2                                      add r3, r3, #0xe4
003e4bfc  04 30 84 e5                                      str r3, [r4, #4]
003e4c00  00 30 e0 e3                                      mvn r3, #0
003e4c04  00 00 84 e5                                      str r0, [r4]
003e4c08  24 10 84 e5                                      str r1, [r4, #0x24]
003e4c0c  e0 33 84 e5                                      str r3, [r4, #0x3e0]
003e4c10  d8 23 84 e5                                      str r2, [r4, #0x3d8]
003e4c14  04 00 a0 e1                                      mov r0, r4
003e4c18  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003e4c1c  b4 fe 5a 00 e4 2a 00 00                          .byte 0xb4, 0xfe, 0x5a, 0x00, 0xe4, 0x2a, 0x00, 0x00
