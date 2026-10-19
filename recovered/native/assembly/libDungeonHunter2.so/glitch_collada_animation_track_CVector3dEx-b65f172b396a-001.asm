; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e3fb0, declared_size=572, range_size=572, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZN6glitch7collada15animation_track11CVector3dEx17getBlendedValueExEPvPfiS3_
; demangled: glitch::collada::animation_track::CVector3dEx::getBlendedValueEx(void*, float*, int, void*)
; decoder-mode: arm
006e3fb0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e3fb4  02 00 52 e3                                      cmp r2, #2
006e3fb8  1c d0 4d e2                                      sub sp, sp, #0x1c
006e3fbc  10 20 8d e5                                      str r2, [sp, #0x10]
006e3fc0  0c 00 8d e5                                      str r0, [sp, #0xc]
006e3fc4  01 20 a0 e1                                      mov r2, r1
006e3fc8  14 30 8d e5                                      str r3, [sp, #0x14]
006e3fcc  43 00 00 da                                      ble #0x6e40e0
006e3fd0  00 80 90 e5                                      ldr r8, [r0]
006e3fd4  04 70 90 e5                                      ldr r7, [r0, #4]
006e3fd8  08 a0 90 e5                                      ldr sl, [r0, #8]
006e3fdc  00 90 91 e5                                      ldr sb, [r1]
006e3fe0  0c 50 a0 e3                                      mov r5, #0xc
006e3fe4  01 40 a0 e3                                      mov r4, #1
006e3fe8  04 61 92 e7                                      ldr r6, [r2, r4, lsl #2]
006e3fec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006e3ff0  09 00 a0 e1                                      mov r0, sb
006e3ff4  06 10 a0 e1                                      mov r1, r6
006e3ff8  00 20 8d e5                                      str r2, [sp]
006e3ffc  05 b0 83 e0                                      add fp, r3, r5
006e4000  e7 aa f0 eb                                      bl #0x30eba4
006e4004  00 90 a0 e1                                      mov sb, r0
006e4008  09 10 a0 e1                                      mov r1, sb
006e400c  06 00 a0 e1                                      mov r0, r6
006e4010  1f ab f0 eb                                      bl #0x30ec94
006e4014  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006e4018  00 60 a0 e1                                      mov r6, r0
006e401c  08 10 a0 e1                                      mov r1, r8
006e4020  05 00 93 e7                                      ldr r0, [r3, r5]
006e4024  e0 a8 f0 eb                                      bl #0x30e3ac
006e4028  00 10 a0 e1                                      mov r1, r0
006e402c  06 00 a0 e1                                      mov r0, r6
006e4030  4d ab f0 eb                                      bl #0x30ed6c
006e4034  07 10 a0 e1                                      mov r1, r7
006e4038  00 30 a0 e1                                      mov r3, r0
006e403c  04 00 9b e5                                      ldr r0, [fp, #4]
006e4040  04 30 8d e5                                      str r3, [sp, #4]
006e4044  d8 a8 f0 eb                                      bl #0x30e3ac
006e4048  00 10 a0 e1                                      mov r1, r0
006e404c  06 00 a0 e1                                      mov r0, r6
006e4050  45 ab f0 eb                                      bl #0x30ed6c
006e4054  0a 10 a0 e1                                      mov r1, sl
006e4058  00 c0 a0 e1                                      mov ip, r0
006e405c  08 00 9b e5                                      ldr r0, [fp, #8]
006e4060  08 c0 8d e5                                      str ip, [sp, #8]
006e4064  d0 a8 f0 eb                                      bl #0x30e3ac
006e4068  00 10 a0 e1                                      mov r1, r0
006e406c  06 00 a0 e1                                      mov r0, r6
006e4070  3d ab f0 eb                                      bl #0x30ed6c
006e4074  04 30 9d e5                                      ldr r3, [sp, #4]
006e4078  00 60 a0 e1                                      mov r6, r0
006e407c  08 00 a0 e1                                      mov r0, r8
006e4080  03 10 a0 e1                                      mov r1, r3
006e4084  c6 aa f0 eb                                      bl #0x30eba4
006e4088  08 c0 9d e5                                      ldr ip, [sp, #8]
006e408c  00 80 a0 e1                                      mov r8, r0
006e4090  07 00 a0 e1                                      mov r0, r7
006e4094  0c 10 a0 e1                                      mov r1, ip
006e4098  c1 aa f0 eb                                      bl #0x30eba4
006e409c  06 10 a0 e1                                      mov r1, r6
006e40a0  00 70 a0 e1                                      mov r7, r0
006e40a4  0a 00 a0 e1                                      mov r0, sl
006e40a8  bd aa f0 eb                                      bl #0x30eba4
006e40ac  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e40b0  01 40 84 e2                                      add r4, r4, #1
006e40b4  00 a0 a0 e1                                      mov sl, r0
006e40b8  03 00 54 e1                                      cmp r4, r3
006e40bc  0c 50 85 e2                                      add r5, r5, #0xc
006e40c0  00 20 9d e5                                      ldr r2, [sp]
006e40c4  c7 ff ff 1a                                      bne #0x6e3fe8
006e40c8  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e40cc  08 00 82 e5                                      str r0, [r2, #8]
006e40d0  00 80 82 e5                                      str r8, [r2]
006e40d4  04 70 82 e5                                      str r7, [r2, #4]
006e40d8  1c d0 8d e2                                      add sp, sp, #0x1c
006e40dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006e40e0  0f 00 00 0a                                      beq #0x6e4124
006e40e4  10 20 9d e5                                      ldr r2, [sp, #0x10]
006e40e8  01 00 52 e3                                      cmp r2, #1
006e40ec  f9 ff ff 1a                                      bne #0x6e40d8
006e40f0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e40f4  00 30 92 e5                                      ldr r3, [r2]
006e40f8  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e40fc  00 30 82 e5                                      str r3, [r2]
006e4100  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e4104  04 30 92 e5                                      ldr r3, [r2, #4]
006e4108  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e410c  04 30 82 e5                                      str r3, [r2, #4]
006e4110  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e4114  08 30 92 e5                                      ldr r3, [r2, #8]
006e4118  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e411c  08 30 82 e5                                      str r3, [r2, #8]
006e4120  ec ff ff ea                                      b #0x6e40d8
006e4124  04 40 91 e5                                      ldr r4, [r1, #4]
006e4128  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006e412c  00 10 91 e5                                      ldr r1, [r1]
006e4130  04 00 a0 e1                                      mov r0, r4
006e4134  0c 50 83 e2                                      add r5, r3, #0xc
006e4138  99 aa f0 eb                                      bl #0x30eba4
006e413c  00 10 a0 e1                                      mov r1, r0
006e4140  04 00 a0 e1                                      mov r0, r4
006e4144  d2 aa f0 eb                                      bl #0x30ec94
006e4148  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e414c  00 40 a0 e1                                      mov r4, r0
006e4150  04 00 95 e5                                      ldr r0, [r5, #4]
006e4154  04 70 92 e5                                      ldr r7, [r2, #4]
006e4158  08 60 92 e5                                      ldr r6, [r2, #8]
006e415c  07 10 a0 e1                                      mov r1, r7
006e4160  91 a8 f0 eb                                      bl #0x30e3ac
006e4164  00 10 a0 e1                                      mov r1, r0
006e4168  04 00 a0 e1                                      mov r0, r4
006e416c  fe aa f0 eb                                      bl #0x30ed6c
006e4170  00 10 a0 e1                                      mov r1, r0
006e4174  07 00 a0 e1                                      mov r0, r7
006e4178  89 aa f0 eb                                      bl #0x30eba4
006e417c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006e4180  06 10 a0 e1                                      mov r1, r6
006e4184  00 70 a0 e1                                      mov r7, r0
006e4188  08 00 95 e5                                      ldr r0, [r5, #8]
006e418c  00 50 93 e5                                      ldr r5, [r3]
006e4190  85 a8 f0 eb                                      bl #0x30e3ac
006e4194  00 10 a0 e1                                      mov r1, r0
006e4198  04 00 a0 e1                                      mov r0, r4
006e419c  f2 aa f0 eb                                      bl #0x30ed6c
006e41a0  00 10 a0 e1                                      mov r1, r0
006e41a4  06 00 a0 e1                                      mov r0, r6
006e41a8  7d aa f0 eb                                      bl #0x30eba4
006e41ac  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e41b0  00 60 a0 e1                                      mov r6, r0
006e41b4  05 10 a0 e1                                      mov r1, r5
006e41b8  0c 00 92 e5                                      ldr r0, [r2, #0xc]
006e41bc  7a a8 f0 eb                                      bl #0x30e3ac
006e41c0  00 10 a0 e1                                      mov r1, r0
006e41c4  04 00 a0 e1                                      mov r0, r4
006e41c8  e7 aa f0 eb                                      bl #0x30ed6c
006e41cc  00 10 a0 e1                                      mov r1, r0
006e41d0  05 00 a0 e1                                      mov r0, r5
006e41d4  72 aa f0 eb                                      bl #0x30eba4
006e41d8  14 30 9d e5                                      ldr r3, [sp, #0x14]
006e41dc  08 60 83 e5                                      str r6, [r3, #8]
006e41e0  00 00 83 e5                                      str r0, [r3]
006e41e4  04 70 83 e5                                      str r7, [r3, #4]
006e41e8  ba ff ff ea                                      b #0x6e40d8

; FUNCTION 0x006e41ec, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZN6glitch7collada15animation_track11CVector3dEx17getBlendedValueExEPvPfiS3_f
; demangled: glitch::collada::animation_track::CVector3dEx::getBlendedValueEx(void*, float*, int, void*, float)
; decoder-mode: arm
006e41ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e41f0  10 d0 4d e2                                      sub sp, sp, #0x10
006e41f4  28 50 9d e5                                      ldr r5, [sp, #0x28]
006e41f8  00 c0 a0 e3                                      mov ip, #0
006e41fc  03 40 a0 e1                                      mov r4, r3
006e4200  04 30 8d e2                                      add r3, sp, #4
006e4204  0c c0 8d e5                                      str ip, [sp, #0xc]
006e4208  04 c0 8d e5                                      str ip, [sp, #4]
006e420c  08 c0 8d e5                                      str ip, [sp, #8]
006e4210  66 ff ff eb                                      bl #0x6e3fb0
006e4214  05 10 a0 e1                                      mov r1, r5
006e4218  fe 05 a0 e3                                      mov r0, #0x3f800000
006e421c  62 a8 f0 eb                                      bl #0x30e3ac
006e4220  04 10 94 e5                                      ldr r1, [r4, #4]
006e4224  00 60 a0 e1                                      mov r6, r0
006e4228  cf aa f0 eb                                      bl #0x30ed6c
006e422c  08 10 9d e5                                      ldr r1, [sp, #8]
006e4230  00 70 a0 e1                                      mov r7, r0
006e4234  05 00 a0 e1                                      mov r0, r5
006e4238  cb aa f0 eb                                      bl #0x30ed6c
006e423c  00 10 a0 e1                                      mov r1, r0
006e4240  07 00 a0 e1                                      mov r0, r7
006e4244  56 aa f0 eb                                      bl #0x30eba4
006e4248  08 10 94 e5                                      ldr r1, [r4, #8]
006e424c  00 70 a0 e1                                      mov r7, r0
006e4250  06 00 a0 e1                                      mov r0, r6
006e4254  c4 aa f0 eb                                      bl #0x30ed6c
006e4258  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006e425c  00 80 a0 e1                                      mov r8, r0
006e4260  05 00 a0 e1                                      mov r0, r5
006e4264  c0 aa f0 eb                                      bl #0x30ed6c
006e4268  00 10 a0 e1                                      mov r1, r0
006e426c  08 00 a0 e1                                      mov r0, r8
006e4270  4b aa f0 eb                                      bl #0x30eba4
006e4274  00 10 94 e5                                      ldr r1, [r4]
006e4278  00 80 a0 e1                                      mov r8, r0
006e427c  06 00 a0 e1                                      mov r0, r6
006e4280  b9 aa f0 eb                                      bl #0x30ed6c
006e4284  04 10 9d e5                                      ldr r1, [sp, #4]
006e4288  00 60 a0 e1                                      mov r6, r0
006e428c  05 00 a0 e1                                      mov r0, r5
006e4290  b5 aa f0 eb                                      bl #0x30ed6c
006e4294  00 10 a0 e1                                      mov r1, r0
006e4298  06 00 a0 e1                                      mov r0, r6
006e429c  40 aa f0 eb                                      bl #0x30eba4
006e42a0  08 80 84 e5                                      str r8, [r4, #8]
006e42a4  00 00 84 e5                                      str r0, [r4]
006e42a8  04 70 84 e5                                      str r7, [r4, #4]
006e42ac  10 d0 8d e2                                      add sp, sp, #0x10
006e42b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006e42b4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx12getValueSizeEv
; demangled: glitch::collada::animation_track::CVector3dEx::getValueSize() const
; decoder-mode: arm
006e42b4  0c 00 a0 e3                                      mov r0, #0xc
006e42b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e42bc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVector3dEx::getIdentityValue(void*) const
; decoder-mode: arm
006e42bc  00 30 a0 e3                                      mov r3, #0
006e42c0  08 30 81 e5                                      str r3, [r1, #8]
006e42c4  00 30 81 e5                                      str r3, [r1]
006e42c8  04 30 81 e5                                      str r3, [r1, #4]
006e42cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e42d0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx15getBlendedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CVector3dEx::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e42d0  01 00 a0 e1                                      mov r0, r1
006e42d4  02 10 a0 e1                                      mov r1, r2
006e42d8  03 20 a0 e1                                      mov r2, r3
006e42dc  00 30 9d e5                                      ldr r3, [sp]
006e42e0  32 ff ff ea                                      b #0x6e3fb0

; FUNCTION 0x006e42e4, declared_size=172, range_size=172, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx13getAddedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CVector3dEx::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e42e4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e42e8  00 40 53 e2                                      subs r4, r3, #0
006e42ec  00 80 a0 d3                                      movle r8, #0
006e42f0  02 b0 a0 e1                                      mov fp, r2
006e42f4  08 a0 a0 d1                                      movle sl, r8
006e42f8  08 90 a0 d1                                      movle sb, r8
006e42fc  1e 00 00 da                                      ble #0x6e437c
006e4300  00 80 a0 e3                                      mov r8, #0
006e4304  01 50 a0 e1                                      mov r5, r1
006e4308  00 60 a0 e3                                      mov r6, #0
006e430c  08 a0 a0 e1                                      mov sl, r8
006e4310  08 90 a0 e1                                      mov sb, r8
006e4314  06 71 9b e7                                      ldr r7, [fp, r6, lsl #2]
006e4318  00 10 95 e5                                      ldr r1, [r5]
006e431c  01 60 86 e2                                      add r6, r6, #1
006e4320  07 00 a0 e1                                      mov r0, r7
006e4324  90 aa f0 eb                                      bl #0x30ed6c
006e4328  00 10 a0 e1                                      mov r1, r0
006e432c  09 00 a0 e1                                      mov r0, sb
006e4330  1b aa f0 eb                                      bl #0x30eba4
006e4334  04 10 95 e5                                      ldr r1, [r5, #4]
006e4338  00 90 a0 e1                                      mov sb, r0
006e433c  07 00 a0 e1                                      mov r0, r7
006e4340  89 aa f0 eb                                      bl #0x30ed6c
006e4344  00 10 a0 e1                                      mov r1, r0
006e4348  0a 00 a0 e1                                      mov r0, sl
006e434c  14 aa f0 eb                                      bl #0x30eba4
006e4350  08 10 95 e5                                      ldr r1, [r5, #8]
006e4354  00 a0 a0 e1                                      mov sl, r0
006e4358  07 00 a0 e1                                      mov r0, r7
006e435c  82 aa f0 eb                                      bl #0x30ed6c
006e4360  00 10 a0 e1                                      mov r1, r0
006e4364  08 00 a0 e1                                      mov r0, r8
006e4368  0d aa f0 eb                                      bl #0x30eba4
006e436c  04 00 56 e1                                      cmp r6, r4
006e4370  00 80 a0 e1                                      mov r8, r0
006e4374  0c 50 85 e2                                      add r5, r5, #0xc
006e4378  e5 ff ff 1a                                      bne #0x6e4314
006e437c  28 30 9d e5                                      ldr r3, [sp, #0x28]
006e4380  08 80 83 e5                                      str r8, [r3, #8]
006e4384  00 90 83 e5                                      str sb, [r3]
006e4388  04 a0 83 e5                                      str sl, [r3, #4]
006e438c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006e4390, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx15getBlendedValueEPvPfiS3_f
; demangled: glitch::collada::animation_track::CVector3dEx::getBlendedValue(void*, float*, int, void*, float) const
; decoder-mode: arm
006e4390  01 00 a0 e1                                      mov r0, r1
006e4394  04 c0 9d e5                                      ldr ip, [sp, #4]
006e4398  02 10 a0 e1                                      mov r1, r2
006e439c  03 20 a0 e1                                      mov r2, r3
006e43a0  00 30 9d e5                                      ldr r3, [sp]
006e43a4  00 c0 8d e5                                      str ip, [sp]
006e43a8  8f ff ff ea                                      b #0x6e41ec

; FUNCTION 0x006e43ac, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZN6glitch7collada15animation_track11CVector3dExD1Ev
; demangled: glitch::collada::animation_track::CVector3dEx::~CVector3dEx()
; decoder-mode: arm
006e43ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e4420, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx10applyValueEPvS3_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVector3dEx::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e4420  70 40 2d e9                                      push {r4, r5, r6, lr}
006e4424  00 30 90 e5                                      ldr r3, [r0]
006e4428  02 50 a0 e1                                      mov r5, r2
006e442c  01 40 a0 e1                                      mov r4, r1
006e4430  0f e0 a0 e1                                      mov lr, pc
006e4434  08 f0 93 e5                                      ldr pc, [r3, #8]
006e4438  00 30 a0 e1                                      mov r3, r0
006e443c  04 10 a0 e1                                      mov r1, r4
006e4440  05 00 a0 e1                                      mov r0, r5
006e4444  03 20 a0 e1                                      mov r2, r3
006e4448  70 40 bd e8                                      pop {r4, r5, r6, lr}
006e444c  05 a9 f0 ea                                      b #0x30e868

; FUNCTION 0x006e4450, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZN6glitch7collada15animation_track11CVector3dEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
006e4450  70 40 2d e9                                      push {r4, r5, r6, lr}
006e4454  01 40 a0 e1                                      mov r4, r1
006e4458  00 10 a0 e3                                      mov r1, #0
006e445c  02 50 a0 e1                                      mov r5, r2
006e4460  6f 16 fe eb                                      bl #0x669e24
006e4464  0c 30 a0 e3                                      mov r3, #0xc
006e4468  04 20 90 e5                                      ldr r2, [r0, #4]
006e446c  93 04 04 e0                                      mul r4, r3, r4
006e4470  03 30 04 e2                                      and r3, r4, #3
006e4474  04 40 82 e0                                      add r4, r2, r4
006e4478  03 20 94 e7                                      ldr r2, [r4, r3]
006e447c  03 40 84 e0                                      add r4, r4, r3
006e4480  00 20 85 e5                                      str r2, [r5]
006e4484  04 30 94 e5                                      ldr r3, [r4, #4]
006e4488  04 30 85 e5                                      str r3, [r5, #4]
006e448c  08 30 94 e5                                      ldr r3, [r4, #8]
006e4490  08 30 85 e5                                      str r3, [r5, #8]
006e4494  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e4498, declared_size=208, range_size=208, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPvf
; demangled: glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, float) const
; decoder-mode: arm
006e4498  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e449c  10 d0 4d e2                                      sub sp, sp, #0x10
006e44a0  28 40 9d e5                                      ldr r4, [sp, #0x28]
006e44a4  00 c0 a0 e3                                      mov ip, #0
006e44a8  01 00 a0 e1                                      mov r0, r1
006e44ac  02 10 a0 e1                                      mov r1, r2
006e44b0  04 20 8d e2                                      add r2, sp, #4
006e44b4  03 50 a0 e1                                      mov r5, r3
006e44b8  0c c0 8d e5                                      str ip, [sp, #0xc]
006e44bc  04 c0 8d e5                                      str ip, [sp, #4]
006e44c0  08 c0 8d e5                                      str ip, [sp, #8]
006e44c4  e1 ff ff eb                                      bl #0x6e4450
006e44c8  04 10 a0 e1                                      mov r1, r4
006e44cc  fe 05 a0 e3                                      mov r0, #0x3f800000
006e44d0  b5 a7 f0 eb                                      bl #0x30e3ac
006e44d4  04 10 95 e5                                      ldr r1, [r5, #4]
006e44d8  00 60 a0 e1                                      mov r6, r0
006e44dc  22 aa f0 eb                                      bl #0x30ed6c
006e44e0  08 10 9d e5                                      ldr r1, [sp, #8]
006e44e4  00 70 a0 e1                                      mov r7, r0
006e44e8  04 00 a0 e1                                      mov r0, r4
006e44ec  1e aa f0 eb                                      bl #0x30ed6c
006e44f0  00 10 a0 e1                                      mov r1, r0
006e44f4  07 00 a0 e1                                      mov r0, r7
006e44f8  a9 a9 f0 eb                                      bl #0x30eba4
006e44fc  08 10 95 e5                                      ldr r1, [r5, #8]
006e4500  00 70 a0 e1                                      mov r7, r0
006e4504  06 00 a0 e1                                      mov r0, r6
006e4508  17 aa f0 eb                                      bl #0x30ed6c
006e450c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006e4510  00 80 a0 e1                                      mov r8, r0
006e4514  04 00 a0 e1                                      mov r0, r4
006e4518  13 aa f0 eb                                      bl #0x30ed6c
006e451c  00 10 a0 e1                                      mov r1, r0
006e4520  08 00 a0 e1                                      mov r0, r8
006e4524  9e a9 f0 eb                                      bl #0x30eba4
006e4528  00 10 95 e5                                      ldr r1, [r5]
006e452c  00 80 a0 e1                                      mov r8, r0
006e4530  06 00 a0 e1                                      mov r0, r6
006e4534  0c aa f0 eb                                      bl #0x30ed6c
006e4538  04 10 9d e5                                      ldr r1, [sp, #4]
006e453c  00 60 a0 e1                                      mov r6, r0
006e4540  04 00 a0 e1                                      mov r0, r4
006e4544  08 aa f0 eb                                      bl #0x30ed6c
006e4548  00 10 a0 e1                                      mov r1, r0
006e454c  06 00 a0 e1                                      mov r0, r6
006e4550  93 a9 f0 eb                                      bl #0x30eba4
006e4554  08 80 85 e5                                      str r8, [r5, #8]
006e4558  00 00 85 e5                                      str r0, [r5]
006e455c  04 70 85 e5                                      str r7, [r5, #4]
006e4560  10 d0 8d e2                                      add sp, sp, #0x10
006e4564  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006e4568, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006e4568  01 00 a0 e1                                      mov r0, r1
006e456c  02 10 a0 e1                                      mov r1, r2
006e4570  03 20 a0 e1                                      mov r2, r3
006e4574  b5 ff ff ea                                      b #0x6e4450

; FUNCTION 0x006e4578, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZN6glitch7collada15animation_track11CVector3dEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006e4578  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e457c  01 40 a0 e1                                      mov r4, r1
006e4580  00 10 a0 e3                                      mov r1, #0
006e4584  03 70 a0 e1                                      mov r7, r3
006e4588  28 60 9d e5                                      ldr r6, [sp, #0x28]
006e458c  02 50 a0 e1                                      mov r5, r2
006e4590  23 16 fe eb                                      bl #0x669e24
006e4594  0c 30 a0 e3                                      mov r3, #0xc
006e4598  04 80 90 e5                                      ldr r8, [r0, #4]
006e459c  93 04 04 e0                                      mul r4, r3, r4
006e45a0  93 05 05 e0                                      mul r5, r3, r5
006e45a4  03 30 04 e2                                      and r3, r4, #3
006e45a8  04 40 88 e0                                      add r4, r8, r4
006e45ac  03 20 84 e0                                      add r2, r4, r3
006e45b0  04 b0 92 e5                                      ldr fp, [r2, #4]
006e45b4  05 80 88 e0                                      add r8, r8, r5
006e45b8  03 50 05 e2                                      and r5, r5, #3
006e45bc  05 90 88 e0                                      add sb, r8, r5
006e45c0  04 00 99 e5                                      ldr r0, [sb, #4]
006e45c4  0b 10 a0 e1                                      mov r1, fp
006e45c8  08 a0 92 e5                                      ldr sl, [r2, #8]
006e45cc  03 40 94 e7                                      ldr r4, [r4, r3]
006e45d0  75 a7 f0 eb                                      bl #0x30e3ac
006e45d4  00 10 a0 e1                                      mov r1, r0
006e45d8  07 00 a0 e1                                      mov r0, r7
006e45dc  e2 a9 f0 eb                                      bl #0x30ed6c
006e45e0  00 10 a0 e1                                      mov r1, r0
006e45e4  0b 00 a0 e1                                      mov r0, fp
006e45e8  6d a9 f0 eb                                      bl #0x30eba4
006e45ec  0a 10 a0 e1                                      mov r1, sl
006e45f0  00 b0 a0 e1                                      mov fp, r0
006e45f4  08 00 99 e5                                      ldr r0, [sb, #8]
006e45f8  6b a7 f0 eb                                      bl #0x30e3ac
006e45fc  00 10 a0 e1                                      mov r1, r0
006e4600  07 00 a0 e1                                      mov r0, r7
006e4604  d8 a9 f0 eb                                      bl #0x30ed6c
006e4608  00 10 a0 e1                                      mov r1, r0
006e460c  0a 00 a0 e1                                      mov r0, sl
006e4610  63 a9 f0 eb                                      bl #0x30eba4
006e4614  04 10 a0 e1                                      mov r1, r4
006e4618  00 a0 a0 e1                                      mov sl, r0
006e461c  05 00 98 e7                                      ldr r0, [r8, r5]
006e4620  61 a7 f0 eb                                      bl #0x30e3ac
006e4624  00 10 a0 e1                                      mov r1, r0
006e4628  07 00 a0 e1                                      mov r0, r7
006e462c  ce a9 f0 eb                                      bl #0x30ed6c
006e4630  00 10 a0 e1                                      mov r1, r0
006e4634  04 00 a0 e1                                      mov r0, r4
006e4638  59 a9 f0 eb                                      bl #0x30eba4
006e463c  08 a0 86 e5                                      str sl, [r6, #8]
006e4640  00 00 86 e5                                      str r0, [r6]
006e4644  04 b0 86 e5                                      str fp, [r6, #4]
006e4648  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006e464c, declared_size=204, range_size=204, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZN6glitch7collada15animation_track11CVector3dEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvf
; demangled: glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, float)
; decoder-mode: arm
006e464c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e4650  18 d0 4d e2                                      sub sp, sp, #0x18
006e4654  34 50 9d e5                                      ldr r5, [sp, #0x34]
006e4658  00 c0 a0 e3                                      mov ip, #0
006e465c  0c e0 8d e2                                      add lr, sp, #0xc
006e4660  14 c0 8d e5                                      str ip, [sp, #0x14]
006e4664  00 e0 8d e5                                      str lr, [sp]
006e4668  0c c0 8d e5                                      str ip, [sp, #0xc]
006e466c  10 c0 8d e5                                      str ip, [sp, #0x10]
006e4670  30 40 9d e5                                      ldr r4, [sp, #0x30]
006e4674  bf ff ff eb                                      bl #0x6e4578
006e4678  05 10 a0 e1                                      mov r1, r5
006e467c  fe 05 a0 e3                                      mov r0, #0x3f800000
006e4680  49 a7 f0 eb                                      bl #0x30e3ac
006e4684  04 10 94 e5                                      ldr r1, [r4, #4]
006e4688  00 60 a0 e1                                      mov r6, r0
006e468c  b6 a9 f0 eb                                      bl #0x30ed6c
006e4690  10 10 9d e5                                      ldr r1, [sp, #0x10]
006e4694  00 70 a0 e1                                      mov r7, r0
006e4698  05 00 a0 e1                                      mov r0, r5
006e469c  b2 a9 f0 eb                                      bl #0x30ed6c
006e46a0  00 10 a0 e1                                      mov r1, r0
006e46a4  07 00 a0 e1                                      mov r0, r7
006e46a8  3d a9 f0 eb                                      bl #0x30eba4
006e46ac  08 10 94 e5                                      ldr r1, [r4, #8]
006e46b0  00 70 a0 e1                                      mov r7, r0
006e46b4  06 00 a0 e1                                      mov r0, r6
006e46b8  ab a9 f0 eb                                      bl #0x30ed6c
006e46bc  14 10 9d e5                                      ldr r1, [sp, #0x14]
006e46c0  00 80 a0 e1                                      mov r8, r0
006e46c4  05 00 a0 e1                                      mov r0, r5
006e46c8  a7 a9 f0 eb                                      bl #0x30ed6c
006e46cc  00 10 a0 e1                                      mov r1, r0
006e46d0  08 00 a0 e1                                      mov r0, r8
006e46d4  32 a9 f0 eb                                      bl #0x30eba4
006e46d8  00 10 94 e5                                      ldr r1, [r4]
006e46dc  00 80 a0 e1                                      mov r8, r0
006e46e0  06 00 a0 e1                                      mov r0, r6
006e46e4  a0 a9 f0 eb                                      bl #0x30ed6c
006e46e8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006e46ec  00 60 a0 e1                                      mov r6, r0
006e46f0  05 00 a0 e1                                      mov r0, r5
006e46f4  9c a9 f0 eb                                      bl #0x30ed6c
006e46f8  00 10 a0 e1                                      mov r1, r0
006e46fc  06 00 a0 e1                                      mov r0, r6
006e4700  27 a9 f0 eb                                      bl #0x30eba4
006e4704  08 80 84 e5                                      str r8, [r4, #8]
006e4708  00 00 84 e5                                      str r0, [r4]
006e470c  04 70 84 e5                                      str r7, [r4, #4]
006e4710  18 d0 8d e2                                      add sp, sp, #0x18
006e4714  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006e4718, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPvf
; demangled: glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, float) const
; decoder-mode: arm
006e4718  04 c0 9d e5                                      ldr ip, [sp, #4]
006e471c  01 00 a0 e1                                      mov r0, r1
006e4720  02 10 a0 e1                                      mov r1, r2
006e4724  03 20 a0 e1                                      mov r2, r3
006e4728  00 30 9d e5                                      ldr r3, [sp]
006e472c  00 c0 8d e5                                      str ip, [sp]
006e4730  08 c0 9d e5                                      ldr ip, [sp, #8]
006e4734  04 c0 8d e5                                      str ip, [sp, #4]
006e4738  c3 ff ff ea                                      b #0x6e464c

; FUNCTION 0x006e473c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006e473c  01 00 a0 e1                                      mov r0, r1
006e4740  04 c0 9d e5                                      ldr ip, [sp, #4]
006e4744  02 10 a0 e1                                      mov r1, r2
006e4748  03 20 a0 e1                                      mov r2, r3
006e474c  00 30 9d e5                                      ldr r3, [sp]
006e4750  00 c0 8d e5                                      str ip, [sp]
006e4754  87 ff ff ea                                      b #0x6e4578

; FUNCTION 0x006e4758, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZN6glitch7collada15animation_track11CVector3dEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
006e4758  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e475c  01 40 a0 e1                                      mov r4, r1
006e4760  00 10 a0 e3                                      mov r1, #0
006e4764  02 60 a0 e1                                      mov r6, r2
006e4768  03 50 a0 e1                                      mov r5, r3
006e476c  ac 15 fe eb                                      bl #0x669e24
006e4770  0c 30 a0 e3                                      mov r3, #0xc
006e4774  04 70 90 e5                                      ldr r7, [r0, #4]
006e4778  93 04 04 e0                                      mul r4, r3, r4
006e477c  93 06 03 e0                                      mul r3, r3, r6
006e4780  04 80 87 e0                                      add r8, r7, r4
006e4784  03 60 03 e2                                      and r6, r3, #3
006e4788  03 70 87 e0                                      add r7, r7, r3
006e478c  03 40 04 e2                                      and r4, r4, #3
006e4790  06 a0 87 e0                                      add sl, r7, r6
006e4794  04 90 88 e0                                      add sb, r8, r4
006e4798  04 10 99 e5                                      ldr r1, [sb, #4]
006e479c  04 00 9a e5                                      ldr r0, [sl, #4]
006e47a0  01 a7 f0 eb                                      bl #0x30e3ac
006e47a4  08 10 99 e5                                      ldr r1, [sb, #8]
006e47a8  00 b0 a0 e1                                      mov fp, r0
006e47ac  08 00 9a e5                                      ldr r0, [sl, #8]
006e47b0  fd a6 f0 eb                                      bl #0x30e3ac
006e47b4  04 10 98 e7                                      ldr r1, [r8, r4]
006e47b8  00 a0 a0 e1                                      mov sl, r0
006e47bc  06 00 97 e7                                      ldr r0, [r7, r6]
006e47c0  f9 a6 f0 eb                                      bl #0x30e3ac
006e47c4  08 a0 85 e5                                      str sl, [r5, #8]
006e47c8  00 00 85 e5                                      str r0, [r5]
006e47cc  04 b0 85 e5                                      str fp, [r5, #4]
006e47d0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006e47d4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006e47d4  01 00 a0 e1                                      mov r0, r1
006e47d8  02 10 a0 e1                                      mov r1, r2
006e47dc  03 20 a0 e1                                      mov r2, r3
006e47e0  00 30 9d e5                                      ldr r3, [sp]
006e47e4  db ff ff ea                                      b #0x6e4758

; FUNCTION 0x006e47e8, declared_size=284, range_size=284, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZN6glitch7collada15animation_track11CVector3dEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006e47e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e47ec  01 70 a0 e1                                      mov r7, r1
006e47f0  0c d0 4d e2                                      sub sp, sp, #0xc
006e47f4  00 10 a0 e3                                      mov r1, #0
006e47f8  30 40 9d e5                                      ldr r4, [sp, #0x30]
006e47fc  34 90 9d e5                                      ldr sb, [sp, #0x34]
006e4800  02 50 a0 e1                                      mov r5, r2
006e4804  03 60 a0 e1                                      mov r6, r3
006e4808  85 15 fe eb                                      bl #0x669e24
006e480c  0c e0 a0 e3                                      mov lr, #0xc
006e4810  04 c0 90 e5                                      ldr ip, [r0, #4]
006e4814  9e 05 02 e0                                      mul r2, lr, r5
006e4818  9e 06 03 e0                                      mul r3, lr, r6
006e481c  03 60 02 e2                                      and r6, r2, #3
006e4820  02 20 8c e0                                      add r2, ip, r2
006e4824  9e 07 0e e0                                      mul lr, lr, r7
006e4828  06 50 82 e0                                      add r5, r2, r6
006e482c  03 70 8c e0                                      add r7, ip, r3
006e4830  03 30 03 e2                                      and r3, r3, #3
006e4834  04 80 95 e5                                      ldr r8, [r5, #4]
006e4838  03 a0 87 e0                                      add sl, r7, r3
006e483c  06 60 92 e7                                      ldr r6, [r2, r6]
006e4840  03 20 97 e7                                      ldr r2, [r7, r3]
006e4844  08 30 9a e5                                      ldr r3, [sl, #8]
006e4848  04 00 9a e5                                      ldr r0, [sl, #4]
006e484c  08 10 a0 e1                                      mov r1, r8
006e4850  0e a0 8c e0                                      add sl, ip, lr
006e4854  08 70 95 e5                                      ldr r7, [r5, #8]
006e4858  03 50 0e e2                                      and r5, lr, #3
006e485c  0c 00 8d e8                                      stm sp, {r2, r3}
006e4860  d1 a6 f0 eb                                      bl #0x30e3ac
006e4864  00 10 a0 e1                                      mov r1, r0
006e4868  04 00 a0 e1                                      mov r0, r4
006e486c  3e a9 f0 eb                                      bl #0x30ed6c
006e4870  00 10 a0 e1                                      mov r1, r0
006e4874  08 00 a0 e1                                      mov r0, r8
006e4878  05 80 8a e0                                      add r8, sl, r5
006e487c  c8 a8 f0 eb                                      bl #0x30eba4
006e4880  04 10 98 e5                                      ldr r1, [r8, #4]
006e4884  c8 a6 f0 eb                                      bl #0x30e3ac
006e4888  04 30 9d e5                                      ldr r3, [sp, #4]
006e488c  07 10 a0 e1                                      mov r1, r7
006e4890  00 b0 a0 e1                                      mov fp, r0
006e4894  03 00 a0 e1                                      mov r0, r3
006e4898  c3 a6 f0 eb                                      bl #0x30e3ac
006e489c  00 10 a0 e1                                      mov r1, r0
006e48a0  04 00 a0 e1                                      mov r0, r4
006e48a4  30 a9 f0 eb                                      bl #0x30ed6c
006e48a8  00 10 a0 e1                                      mov r1, r0
006e48ac  07 00 a0 e1                                      mov r0, r7
006e48b0  bb a8 f0 eb                                      bl #0x30eba4
006e48b4  08 10 98 e5                                      ldr r1, [r8, #8]
006e48b8  bb a6 f0 eb                                      bl #0x30e3ac
006e48bc  00 20 9d e5                                      ldr r2, [sp]
006e48c0  00 70 a0 e1                                      mov r7, r0
006e48c4  06 10 a0 e1                                      mov r1, r6
006e48c8  02 00 a0 e1                                      mov r0, r2
006e48cc  b6 a6 f0 eb                                      bl #0x30e3ac
006e48d0  00 10 a0 e1                                      mov r1, r0
006e48d4  04 00 a0 e1                                      mov r0, r4
006e48d8  23 a9 f0 eb                                      bl #0x30ed6c
006e48dc  00 10 a0 e1                                      mov r1, r0
006e48e0  06 00 a0 e1                                      mov r0, r6
006e48e4  ae a8 f0 eb                                      bl #0x30eba4
006e48e8  05 10 9a e7                                      ldr r1, [sl, r5]
006e48ec  ae a6 f0 eb                                      bl #0x30e3ac
006e48f0  08 70 89 e5                                      str r7, [sb, #8]
006e48f4  00 00 89 e5                                      str r0, [sb]
006e48f8  04 b0 89 e5                                      str fp, [sb, #4]
006e48fc  0c d0 8d e2                                      add sp, sp, #0xc
006e4900  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006e4904, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
006e4904  04 c0 9d e5                                      ldr ip, [sp, #4]
006e4908  01 00 a0 e1                                      mov r0, r1
006e490c  02 10 a0 e1                                      mov r1, r2
006e4910  03 20 a0 e1                                      mov r2, r3
006e4914  00 30 9d e5                                      ldr r3, [sp]
006e4918  00 c0 8d e5                                      str ip, [sp]
006e491c  08 c0 9d e5                                      ldr ip, [sp, #8]
006e4920  04 c0 8d e5                                      str ip, [sp, #4]
006e4924  af ff ff ea                                      b #0x6e47e8

; FUNCTION 0x006e4928, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVector3dEx
; alias: _ZN6glitch7collada15animation_track11CVector3dExD0Ev
; demangled: glitch::collada::animation_track::CVector3dEx::~CVector3dEx()
; decoder-mode: arm
006e4928  10 40 2d e9                                      push {r4, lr}
006e492c  00 40 a0 e1                                      mov r4, r0
006e4930  5e a6 f0 eb                                      bl #0x30e2b0
006e4934  04 00 a0 e1                                      mov r0, r4
006e4938  10 80 bd e8                                      pop {r4, pc}
