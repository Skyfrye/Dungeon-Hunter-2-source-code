; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e4db4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx12getValueSizeEv
; demangled: glitch::collada::animation_track::CWeightEx::getValueSize() const
; decoder-mode: arm
006e4db4  04 00 a0 e3                                      mov r0, #4
006e4db8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e4dbc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CWeightEx::getIdentityValue(void*) const
; decoder-mode: arm
006e4dbc  00 30 a0 e3                                      mov r3, #0
006e4dc0  00 30 81 e5                                      str r3, [r1]
006e4dc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e4dc8, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx15getBlendedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CWeightEx::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e4dc8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e4dcc  20 40 9d e5                                      ldr r4, [sp, #0x20]
006e4dd0  00 00 a0 e3                                      mov r0, #0
006e4dd4  00 60 53 e2                                      subs r6, r3, #0
006e4dd8  01 50 a0 e1                                      mov r5, r1
006e4ddc  02 90 a0 e1                                      mov sb, r2
006e4de0  00 00 84 e5                                      str r0, [r4]
006e4de4  0e 00 00 da                                      ble #0x6e4e24
006e4de8  00 70 a0 e3                                      mov r7, #0
006e4dec  00 a0 a0 e1                                      mov sl, r0
006e4df0  07 80 a0 e1                                      mov r8, r7
006e4df4  07 10 99 e7                                      ldr r1, [sb, r7]
006e4df8  07 00 95 e7                                      ldr r0, [r5, r7]
006e4dfc  da a7 f0 eb                                      bl #0x30ed6c
006e4e00  00 10 a0 e1                                      mov r1, r0
006e4e04  0a 00 a0 e1                                      mov r0, sl
006e4e08  65 a7 f0 eb                                      bl #0x30eba4
006e4e0c  01 80 88 e2                                      add r8, r8, #1
006e4e10  06 00 58 e1                                      cmp r8, r6
006e4e14  00 a0 a0 e1                                      mov sl, r0
006e4e18  00 00 84 e5                                      str r0, [r4]
006e4e1c  04 70 87 e2                                      add r7, r7, #4
006e4e20  f3 ff ff 1a                                      bne #0x6e4df4
006e4e24  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006e4e28, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx13getAddedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CWeightEx::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e4e28  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e4e2c  20 40 9d e5                                      ldr r4, [sp, #0x20]
006e4e30  00 00 a0 e3                                      mov r0, #0
006e4e34  00 60 53 e2                                      subs r6, r3, #0
006e4e38  01 50 a0 e1                                      mov r5, r1
006e4e3c  02 90 a0 e1                                      mov sb, r2
006e4e40  00 00 84 e5                                      str r0, [r4]
006e4e44  0e 00 00 da                                      ble #0x6e4e84
006e4e48  00 70 a0 e3                                      mov r7, #0
006e4e4c  00 a0 a0 e1                                      mov sl, r0
006e4e50  07 80 a0 e1                                      mov r8, r7
006e4e54  07 10 99 e7                                      ldr r1, [sb, r7]
006e4e58  07 00 95 e7                                      ldr r0, [r5, r7]
006e4e5c  c2 a7 f0 eb                                      bl #0x30ed6c
006e4e60  00 10 a0 e1                                      mov r1, r0
006e4e64  0a 00 a0 e1                                      mov r0, sl
006e4e68  4d a7 f0 eb                                      bl #0x30eba4
006e4e6c  01 80 88 e2                                      add r8, r8, #1
006e4e70  06 00 58 e1                                      cmp r8, r6
006e4e74  00 a0 a0 e1                                      mov sl, r0
006e4e78  00 00 84 e5                                      str r0, [r4]
006e4e7c  04 70 87 e2                                      add r7, r7, #4
006e4e80  f3 ff ff 1a                                      bne #0x6e4e54
006e4e84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006e4e88, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx17applyBlendedValueEPvPfiS3_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CWeightEx::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e4e88  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e4e8c  20 40 9d e5                                      ldr r4, [sp, #0x20]
006e4e90  00 00 a0 e3                                      mov r0, #0
006e4e94  00 60 53 e2                                      subs r6, r3, #0
006e4e98  01 50 a0 e1                                      mov r5, r1
006e4e9c  02 90 a0 e1                                      mov sb, r2
006e4ea0  00 00 84 e5                                      str r0, [r4]
006e4ea4  0e 00 00 da                                      ble #0x6e4ee4
006e4ea8  00 70 a0 e3                                      mov r7, #0
006e4eac  00 a0 a0 e1                                      mov sl, r0
006e4eb0  07 80 a0 e1                                      mov r8, r7
006e4eb4  07 10 99 e7                                      ldr r1, [sb, r7]
006e4eb8  07 00 95 e7                                      ldr r0, [r5, r7]
006e4ebc  aa a7 f0 eb                                      bl #0x30ed6c
006e4ec0  00 10 a0 e1                                      mov r1, r0
006e4ec4  0a 00 a0 e1                                      mov r0, sl
006e4ec8  35 a7 f0 eb                                      bl #0x30eba4
006e4ecc  01 80 88 e2                                      add r8, r8, #1
006e4ed0  06 00 58 e1                                      cmp r8, r6
006e4ed4  00 a0 a0 e1                                      mov sl, r0
006e4ed8  00 00 84 e5                                      str r0, [r4]
006e4edc  04 70 87 e2                                      add r7, r7, #4
006e4ee0  f3 ff ff 1a                                      bne #0x6e4eb4
006e4ee4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006e4ee8, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx15applyAddedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CWeightEx::applyAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e4ee8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e4eec  20 40 9d e5                                      ldr r4, [sp, #0x20]
006e4ef0  00 00 a0 e3                                      mov r0, #0
006e4ef4  00 60 53 e2                                      subs r6, r3, #0
006e4ef8  01 50 a0 e1                                      mov r5, r1
006e4efc  02 90 a0 e1                                      mov sb, r2
006e4f00  00 00 84 e5                                      str r0, [r4]
006e4f04  0e 00 00 da                                      ble #0x6e4f44
006e4f08  00 70 a0 e3                                      mov r7, #0
006e4f0c  00 a0 a0 e1                                      mov sl, r0
006e4f10  07 80 a0 e1                                      mov r8, r7
006e4f14  07 10 99 e7                                      ldr r1, [sb, r7]
006e4f18  07 00 95 e7                                      ldr r0, [r5, r7]
006e4f1c  92 a7 f0 eb                                      bl #0x30ed6c
006e4f20  00 10 a0 e1                                      mov r1, r0
006e4f24  0a 00 a0 e1                                      mov r0, sl
006e4f28  1d a7 f0 eb                                      bl #0x30eba4
006e4f2c  01 80 88 e2                                      add r8, r8, #1
006e4f30  06 00 58 e1                                      cmp r8, r6
006e4f34  00 a0 a0 e1                                      mov sl, r0
006e4f38  00 00 84 e5                                      str r0, [r4]
006e4f3c  04 70 87 e2                                      add r7, r7, #4
006e4f40  f3 ff ff 1a                                      bne #0x6e4f14
006e4f44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006e4f48, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZN6glitch7collada15animation_track9CWeightExD1Ev
; demangled: glitch::collada::animation_track::CWeightEx::~CWeightEx()
; decoder-mode: arm
006e4f48  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e4fbc, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZN6glitch7collada15animation_track9CWeightEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CWeightEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
006e4fbc  70 40 2d e9                                      push {r4, r5, r6, lr}
006e4fc0  01 40 a0 e1                                      mov r4, r1
006e4fc4  00 10 a0 e3                                      mov r1, #0
006e4fc8  02 50 a0 e1                                      mov r5, r2
006e4fcc  03 60 a0 e1                                      mov r6, r3
006e4fd0  93 13 fe eb                                      bl #0x669e24
006e4fd4  04 30 90 e5                                      ldr r3, [r0, #4]
006e4fd8  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
006e4fdc  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
006e4fe0  f1 a4 f0 eb                                      bl #0x30e3ac
006e4fe4  00 00 86 e5                                      str r0, [r6]
006e4fe8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e4fec, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CWeightEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e4fec  01 00 a0 e1                                      mov r0, r1
006e4ff0  02 10 a0 e1                                      mov r1, r2
006e4ff4  03 20 a0 e1                                      mov r2, r3
006e4ff8  00 30 9d e5                                      ldr r3, [sp]
006e4ffc  ee ff ff ea                                      b #0x6e4fbc

; FUNCTION 0x006e5000, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CWeightEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006e5000  10 40 2d e9                                      push {r4, lr}
006e5004  01 00 a0 e1                                      mov r0, r1
006e5008  00 10 a0 e3                                      mov r1, #0
006e500c  03 40 a0 e1                                      mov r4, r3
006e5010  83 13 fe eb                                      bl #0x669e24
006e5014  04 30 90 e5                                      ldr r3, [r0, #4]
006e5018  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
006e501c  08 30 9d e5                                      ldr r3, [sp, #8]
006e5020  00 20 83 e5                                      str r2, [r3]
006e5024  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e5028, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZN6glitch7collada15animation_track9CWeightEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CWeightEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006e5028  70 40 2d e9                                      push {r4, r5, r6, lr}
006e502c  01 40 a0 e1                                      mov r4, r1
006e5030  00 10 a0 e3                                      mov r1, #0
006e5034  02 50 a0 e1                                      mov r5, r2
006e5038  03 60 a0 e1                                      mov r6, r3
006e503c  78 13 fe eb                                      bl #0x669e24
006e5040  04 30 90 e5                                      ldr r3, [r0, #4]
006e5044  04 41 93 e7                                      ldr r4, [r3, r4, lsl #2]
006e5048  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
006e504c  04 10 a0 e1                                      mov r1, r4
006e5050  d5 a4 f0 eb                                      bl #0x30e3ac
006e5054  00 10 a0 e1                                      mov r1, r0
006e5058  06 00 a0 e1                                      mov r0, r6
006e505c  42 a7 f0 eb                                      bl #0x30ed6c
006e5060  00 10 a0 e1                                      mov r1, r0
006e5064  04 00 a0 e1                                      mov r0, r4
006e5068  cd a6 f0 eb                                      bl #0x30eba4
006e506c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e5070  00 00 83 e5                                      str r0, [r3]
006e5074  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e5078, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CWeightEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e5078  01 00 a0 e1                                      mov r0, r1
006e507c  04 c0 9d e5                                      ldr ip, [sp, #4]
006e5080  02 10 a0 e1                                      mov r1, r2
006e5084  03 20 a0 e1                                      mov r2, r3
006e5088  00 30 9d e5                                      ldr r3, [sp]
006e508c  00 c0 8d e5                                      str ip, [sp]
006e5090  e4 ff ff ea                                      b #0x6e5028

; FUNCTION 0x006e5094, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CWeightEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
006e5094  01 00 a0 e1                                      mov r0, r1
006e5098  00 20 9d e5                                      ldr r2, [sp]
006e509c  03 10 a0 e1                                      mov r1, r3
006e50a0  08 c0 9d e5                                      ldr ip, [sp, #8]
006e50a4  04 30 9d e5                                      ldr r3, [sp, #4]
006e50a8  00 c0 8d e5                                      str ip, [sp]
006e50ac  dd ff ff ea                                      b #0x6e5028

; FUNCTION 0x006e50b0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CWeightEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006e50b0  01 00 a0 e1                                      mov r0, r1
006e50b4  04 c0 9d e5                                      ldr ip, [sp, #4]
006e50b8  02 10 a0 e1                                      mov r1, r2
006e50bc  03 20 a0 e1                                      mov r2, r3
006e50c0  00 30 9d e5                                      ldr r3, [sp]
006e50c4  00 c0 8d e5                                      str ip, [sp]
006e50c8  d6 ff ff ea                                      b #0x6e5028

; FUNCTION 0x006e50cc, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx10applyValueEPvS3_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CWeightEx::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e50cc  70 40 2d e9                                      push {r4, r5, r6, lr}
006e50d0  00 30 90 e5                                      ldr r3, [r0]
006e50d4  02 50 a0 e1                                      mov r5, r2
006e50d8  01 40 a0 e1                                      mov r4, r1
006e50dc  0f e0 a0 e1                                      mov lr, pc
006e50e0  08 f0 93 e5                                      ldr pc, [r3, #8]
006e50e4  00 30 a0 e1                                      mov r3, r0
006e50e8  04 10 a0 e1                                      mov r1, r4
006e50ec  05 00 a0 e1                                      mov r0, r5
006e50f0  03 20 a0 e1                                      mov r2, r3
006e50f4  70 40 bd e8                                      pop {r4, r5, r6, lr}
006e50f8  da a5 f0 ea                                      b #0x30e868

; FUNCTION 0x006e50fc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZN6glitch7collada15animation_track9CWeightExD0Ev
; demangled: glitch::collada::animation_track::CWeightEx::~CWeightEx()
; decoder-mode: arm
006e50fc  10 40 2d e9                                      push {r4, lr}
006e5100  00 40 a0 e1                                      mov r4, r0
006e5104  69 a4 f0 eb                                      bl #0x30e2b0
006e5108  04 00 a0 e1                                      mov r0, r4
006e510c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e5110, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CWeightEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006e5110  70 40 2d e9                                      push {r4, r5, r6, lr}
006e5114  01 00 a0 e1                                      mov r0, r1
006e5118  00 10 a0 e3                                      mov r1, #0
006e511c  03 50 a0 e1                                      mov r5, r3
006e5120  02 40 a0 e1                                      mov r4, r2
006e5124  3e 13 fe eb                                      bl #0x669e24
006e5128  04 30 90 e5                                      ldr r3, [r0, #4]
006e512c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
006e5130  00 30 85 e5                                      str r3, [r5]
006e5134  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e5138, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::animation_track::CWeightEx
; alias: _ZNK6glitch7collada15animation_track9CWeightEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CWeightEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e5138  70 40 2d e9                                      push {r4, r5, r6, lr}
006e513c  01 00 a0 e1                                      mov r0, r1
006e5140  00 10 a0 e3                                      mov r1, #0
006e5144  03 50 a0 e1                                      mov r5, r3
006e5148  02 40 a0 e1                                      mov r4, r2
006e514c  34 13 fe eb                                      bl #0x669e24
006e5150  04 30 90 e5                                      ldr r3, [r0, #4]
006e5154  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
006e5158  00 30 85 e5                                      str r3, [r5]
006e515c  70 80 bd e8                                      pop {r4, r5, r6, pc}
