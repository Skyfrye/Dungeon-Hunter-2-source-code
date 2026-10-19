; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e493c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx13retrieveValueEPvS3_
; demangled: glitch::collada::animation_track::CVisibilityEx::retrieveValue(void*, void*) const
; decoder-mode: arm
006e493c  1c 31 91 e5                                      ldr r3, [r1, #0x11c]
006e4940  01 30 03 e2                                      and r3, r3, #1
006e4944  00 30 c2 e5                                      strb r3, [r2]
006e4948  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e494c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx12getValueSizeEv
; demangled: glitch::collada::animation_track::CVisibilityEx::getValueSize() const
; decoder-mode: arm
006e494c  04 00 a0 e3                                      mov r0, #4
006e4950  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e4954, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVisibilityEx::getIdentityValue(void*) const
; decoder-mode: arm
006e4954  01 30 a0 e3                                      mov r3, #1
006e4958  00 30 81 e5                                      str r3, [r1]
006e495c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e4960, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx15getBlendedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CVisibilityEx::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e4960  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e4964  20 40 9d e5                                      ldr r4, [sp, #0x20]
006e4968  00 50 53 e2                                      subs r5, r3, #0
006e496c  01 30 a0 e3                                      mov r3, #1
006e4970  00 30 84 e5                                      str r3, [r4]
006e4974  01 60 a0 e1                                      mov r6, r1
006e4978  02 a0 a0 e1                                      mov sl, r2
006e497c  0d 00 00 da                                      ble #0x6e49b8
006e4980  00 70 a0 e3                                      mov r7, #0
006e4984  07 80 a0 e1                                      mov r8, r7
006e4988  07 00 9a e7                                      ldr r0, [sl, r7]
006e498c  00 10 a0 e3                                      mov r1, #0
006e4990  7d a5 f0 eb                                      bl #0x30df8c
006e4994  00 00 50 e3                                      cmp r0, #0
006e4998  01 80 88 e2                                      add r8, r8, #1
006e499c  02 00 00 1a                                      bne #0x6e49ac
006e49a0  07 30 96 e7                                      ldr r3, [r6, r7]
006e49a4  00 00 53 e3                                      cmp r3, #0
006e49a8  03 00 00 0a                                      beq #0x6e49bc
006e49ac  05 00 58 e1                                      cmp r8, r5
006e49b0  04 70 87 e2                                      add r7, r7, #4
006e49b4  f3 ff ff 1a                                      bne #0x6e4988
006e49b8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006e49bc  00 30 84 e5                                      str r3, [r4]
006e49c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006e49c4, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx13getAddedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CVisibilityEx::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e49c4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e49c8  20 40 9d e5                                      ldr r4, [sp, #0x20]
006e49cc  00 70 a0 e3                                      mov r7, #0
006e49d0  00 50 53 e2                                      subs r5, r3, #0
006e49d4  01 60 a0 e1                                      mov r6, r1
006e49d8  02 a0 a0 e1                                      mov sl, r2
006e49dc  00 70 84 e5                                      str r7, [r4]
006e49e0  0c 00 00 da                                      ble #0x6e4a18
006e49e4  07 80 a0 e1                                      mov r8, r7
006e49e8  07 00 9a e7                                      ldr r0, [sl, r7]
006e49ec  00 10 a0 e3                                      mov r1, #0
006e49f0  65 a5 f0 eb                                      bl #0x30df8c
006e49f4  00 00 50 e3                                      cmp r0, #0
006e49f8  01 80 88 e2                                      add r8, r8, #1
006e49fc  02 00 00 1a                                      bne #0x6e4a0c
006e4a00  07 30 96 e7                                      ldr r3, [r6, r7]
006e4a04  01 00 53 e3                                      cmp r3, #1
006e4a08  03 00 00 0a                                      beq #0x6e4a1c
006e4a0c  05 00 58 e1                                      cmp r8, r5
006e4a10  04 70 87 e2                                      add r7, r7, #4
006e4a14  f3 ff ff 1a                                      bne #0x6e49e8
006e4a18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006e4a1c  00 30 84 e5                                      str r3, [r4]
006e4a20  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006e4a24, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZN6glitch7collada15animation_track13CVisibilityExD1Ev
; demangled: glitch::collada::animation_track::CVisibilityEx::~CVisibilityEx()
; decoder-mode: arm
006e4a24  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e4a98, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZN6glitch7collada15animation_track13CVisibilityEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVisibilityEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
006e4a98  70 40 2d e9                                      push {r4, r5, r6, lr}
006e4a9c  01 40 a0 e1                                      mov r4, r1
006e4aa0  00 10 a0 e3                                      mov r1, #0
006e4aa4  02 50 a0 e1                                      mov r5, r2
006e4aa8  dd 14 fe eb                                      bl #0x669e24
006e4aac  04 30 90 e5                                      ldr r3, [r0, #4]
006e4ab0  fe 15 a0 e3                                      mov r1, #0x3f800000
006e4ab4  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
006e4ab8  7d a6 f0 eb                                      bl #0x30e4b4
006e4abc  00 00 50 e2                                      subs r0, r0, #0
006e4ac0  01 00 a0 13                                      movne r0, #1
006e4ac4  00 00 85 e5                                      str r0, [r5]
006e4ac8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e4acc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006e4acc  00 20 9d e5                                      ldr r2, [sp]
006e4ad0  01 00 a0 e1                                      mov r0, r1
006e4ad4  03 10 a0 e1                                      mov r1, r3
006e4ad8  ee ff ff ea                                      b #0x6e4a98

; FUNCTION 0x006e4adc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006e4adc  01 00 a0 e1                                      mov r0, r1
006e4ae0  02 10 a0 e1                                      mov r1, r2
006e4ae4  03 20 a0 e1                                      mov r2, r3
006e4ae8  ea ff ff ea                                      b #0x6e4a98

; FUNCTION 0x006e4aec, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZN6glitch7collada15animation_track13CVisibilityEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVisibilityEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006e4aec  10 40 2d e9                                      push {r4, lr}
006e4af0  01 40 a0 e1                                      mov r4, r1
006e4af4  00 10 a0 e3                                      mov r1, #0
006e4af8  c9 14 fe eb                                      bl #0x669e24
006e4afc  04 30 90 e5                                      ldr r3, [r0, #4]
006e4b00  fe 15 a0 e3                                      mov r1, #0x3f800000
006e4b04  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
006e4b08  69 a6 f0 eb                                      bl #0x30e4b4
006e4b0c  08 30 9d e5                                      ldr r3, [sp, #8]
006e4b10  00 00 50 e2                                      subs r0, r0, #0
006e4b14  01 00 a0 13                                      movne r0, #1
006e4b18  00 00 83 e5                                      str r0, [r3]
006e4b1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e4b20, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
006e4b20  01 00 a0 e1                                      mov r0, r1
006e4b24  00 20 9d e5                                      ldr r2, [sp]
006e4b28  03 10 a0 e1                                      mov r1, r3
006e4b2c  08 c0 9d e5                                      ldr ip, [sp, #8]
006e4b30  04 30 9d e5                                      ldr r3, [sp, #4]
006e4b34  00 c0 8d e5                                      str ip, [sp]
006e4b38  eb ff ff ea                                      b #0x6e4aec

; FUNCTION 0x006e4b3c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006e4b3c  01 00 a0 e1                                      mov r0, r1
006e4b40  04 c0 9d e5                                      ldr ip, [sp, #4]
006e4b44  02 10 a0 e1                                      mov r1, r2
006e4b48  03 20 a0 e1                                      mov r2, r3
006e4b4c  00 30 9d e5                                      ldr r3, [sp]
006e4b50  00 c0 8d e5                                      str ip, [sp]
006e4b54  e4 ff ff ea                                      b #0x6e4aec

; FUNCTION 0x006e4b58, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZN6glitch7collada15animation_track13CVisibilityExD0Ev
; demangled: glitch::collada::animation_track::CVisibilityEx::~CVisibilityEx()
; decoder-mode: arm
006e4b58  10 40 2d e9                                      push {r4, lr}
006e4b5c  00 40 a0 e1                                      mov r4, r0
006e4b60  d2 a5 f0 eb                                      bl #0x30e2b0
006e4b64  04 00 a0 e1                                      mov r0, r4
006e4b68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e4b6c, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZN6glitch7collada15animation_track13CVisibilityEx20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006e4b6c  70 40 2d e9                                      push {r4, r5, r6, lr}
006e4b70  01 60 a0 e1                                      mov r6, r1
006e4b74  00 10 a0 e3                                      mov r1, #0
006e4b78  10 40 9d e5                                      ldr r4, [sp, #0x10]
006e4b7c  a8 14 fe eb                                      bl #0x669e24
006e4b80  04 30 90 e5                                      ldr r3, [r0, #4]
006e4b84  fe 15 a0 e3                                      mov r1, #0x3f800000
006e4b88  00 50 94 e5                                      ldr r5, [r4]
006e4b8c  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
006e4b90  47 a6 f0 eb                                      bl #0x30e4b4
006e4b94  00 00 50 e3                                      cmp r0, #0
006e4b98  00 10 a0 e3                                      mov r1, #0
006e4b9c  01 10 a0 13                                      movne r1, #1
006e4ba0  04 00 a0 e1                                      mov r0, r4
006e4ba4  01 10 01 e2                                      and r1, r1, #1
006e4ba8  0f e0 a0 e1                                      mov lr, pc
006e4bac  48 f0 95 e5                                      ldr pc, [r5, #0x48]
006e4bb0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e4bb4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e4bb4  08 c0 9d e5                                      ldr ip, [sp, #8]
006e4bb8  01 00 a0 e1                                      mov r0, r1
006e4bbc  00 20 9d e5                                      ldr r2, [sp]
006e4bc0  03 10 a0 e1                                      mov r1, r3
006e4bc4  00 c0 8d e5                                      str ip, [sp]
006e4bc8  04 30 9d e5                                      ldr r3, [sp, #4]
006e4bcc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006e4bd0  04 c0 8d e5                                      str ip, [sp, #4]
006e4bd4  e4 ff ff ea                                      b #0x6e4b6c

; FUNCTION 0x006e4bd8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e4bd8  04 c0 9d e5                                      ldr ip, [sp, #4]
006e4bdc  01 00 a0 e1                                      mov r0, r1
006e4be0  02 10 a0 e1                                      mov r1, r2
006e4be4  03 20 a0 e1                                      mov r2, r3
006e4be8  00 30 9d e5                                      ldr r3, [sp]
006e4bec  00 c0 8d e5                                      str ip, [sp]
006e4bf0  08 c0 9d e5                                      ldr ip, [sp, #8]
006e4bf4  04 c0 8d e5                                      str ip, [sp, #4]
006e4bf8  db ff ff ea                                      b #0x6e4b6c

; FUNCTION 0x006e4bfc, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZN6glitch7collada15animation_track13CVisibilityEx19applyBlendedValueExEPvPfiS3_
; demangled: glitch::collada::animation_track::CVisibilityEx::applyBlendedValueEx(void*, float*, int, void*)
; decoder-mode: arm
006e4bfc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e4c00  03 40 a0 e1                                      mov r4, r3
006e4c04  02 70 a0 e1                                      mov r7, r2
006e4c08  00 a0 a0 e1                                      mov sl, r0
006e4c0c  01 80 a0 e1                                      mov r8, r1
006e4c10  00 30 93 e5                                      ldr r3, [r3]
006e4c14  04 00 a0 e1                                      mov r0, r4
006e4c18  01 10 a0 e3                                      mov r1, #1
006e4c1c  0f e0 a0 e1                                      mov lr, pc
006e4c20  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006e4c24  00 00 57 e3                                      cmp r7, #0
006e4c28  0d 00 00 da                                      ble #0x6e4c64
006e4c2c  00 50 a0 e3                                      mov r5, #0
006e4c30  05 60 a0 e1                                      mov r6, r5
006e4c34  05 00 98 e7                                      ldr r0, [r8, r5]
006e4c38  00 10 a0 e3                                      mov r1, #0
006e4c3c  d2 a4 f0 eb                                      bl #0x30df8c
006e4c40  00 00 50 e3                                      cmp r0, #0
006e4c44  01 60 86 e2                                      add r6, r6, #1
006e4c48  02 00 00 1a                                      bne #0x6e4c58
006e4c4c  05 10 9a e7                                      ldr r1, [sl, r5]
006e4c50  00 00 51 e3                                      cmp r1, #0
006e4c54  03 00 00 0a                                      beq #0x6e4c68
006e4c58  07 00 56 e1                                      cmp r6, r7
006e4c5c  04 50 85 e2                                      add r5, r5, #4
006e4c60  f3 ff ff 1a                                      bne #0x6e4c34
006e4c64  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006e4c68  04 00 a0 e1                                      mov r0, r4
006e4c6c  00 30 94 e5                                      ldr r3, [r4]
006e4c70  0f e0 a0 e1                                      mov lr, pc
006e4c74  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006e4c78  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006e4c7c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx17applyBlendedValueEPvPfiS3_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVisibilityEx::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e4c7c  01 00 a0 e1                                      mov r0, r1
006e4c80  02 10 a0 e1                                      mov r1, r2
006e4c84  03 20 a0 e1                                      mov r2, r3
006e4c88  00 30 9d e5                                      ldr r3, [sp]
006e4c8c  da ff ff ea                                      b #0x6e4bfc

; FUNCTION 0x006e4c90, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx10applyValueEPvS3_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVisibilityEx::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e4c90  10 40 2d e9                                      push {r4, lr}
006e4c94  02 00 a0 e1                                      mov r0, r2
006e4c98  00 10 d1 e5                                      ldrb r1, [r1]
006e4c9c  00 30 92 e5                                      ldr r3, [r2]
006e4ca0  0f e0 a0 e1                                      mov lr, pc
006e4ca4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006e4ca8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e4cac, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZN6glitch7collada15animation_track13CVisibilityEx20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006e4cac  70 40 2d e9                                      push {r4, r5, r6, lr}
006e4cb0  01 40 a0 e1                                      mov r4, r1
006e4cb4  00 10 a0 e3                                      mov r1, #0
006e4cb8  02 50 a0 e1                                      mov r5, r2
006e4cbc  58 14 fe eb                                      bl #0x669e24
006e4cc0  04 30 90 e5                                      ldr r3, [r0, #4]
006e4cc4  fe 15 a0 e3                                      mov r1, #0x3f800000
006e4cc8  00 60 95 e5                                      ldr r6, [r5]
006e4ccc  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
006e4cd0  f7 a5 f0 eb                                      bl #0x30e4b4
006e4cd4  00 00 50 e3                                      cmp r0, #0
006e4cd8  00 10 a0 e3                                      mov r1, #0
006e4cdc  01 10 a0 13                                      movne r1, #1
006e4ce0  05 00 a0 e1                                      mov r0, r5
006e4ce4  01 10 01 e2                                      and r1, r1, #1
006e4ce8  0f e0 a0 e1                                      mov lr, pc
006e4cec  48 f0 96 e5                                      ldr pc, [r6, #0x48]
006e4cf0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e4cf4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e4cf4  01 00 a0 e1                                      mov r0, r1
006e4cf8  00 20 9d e5                                      ldr r2, [sp]
006e4cfc  03 10 a0 e1                                      mov r1, r3
006e4d00  04 30 9d e5                                      ldr r3, [sp, #4]
006e4d04  e8 ff ff ea                                      b #0x6e4cac

; FUNCTION 0x006e4d08, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e4d08  01 00 a0 e1                                      mov r0, r1
006e4d0c  02 10 a0 e1                                      mov r1, r2
006e4d10  03 20 a0 e1                                      mov r2, r3
006e4d14  00 30 9d e5                                      ldr r3, [sp]
006e4d18  e3 ff ff ea                                      b #0x6e4cac

; FUNCTION 0x006e4d1c, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZN6glitch7collada15animation_track13CVisibilityEx17applyAddedValueExEPvPfiS3_
; demangled: glitch::collada::animation_track::CVisibilityEx::applyAddedValueEx(void*, float*, int, void*)
; decoder-mode: arm
006e4d1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e4d20  03 40 a0 e1                                      mov r4, r3
006e4d24  02 70 a0 e1                                      mov r7, r2
006e4d28  00 a0 a0 e1                                      mov sl, r0
006e4d2c  01 80 a0 e1                                      mov r8, r1
006e4d30  00 30 93 e5                                      ldr r3, [r3]
006e4d34  04 00 a0 e1                                      mov r0, r4
006e4d38  00 10 a0 e3                                      mov r1, #0
006e4d3c  0f e0 a0 e1                                      mov lr, pc
006e4d40  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006e4d44  00 00 57 e3                                      cmp r7, #0
006e4d48  0d 00 00 da                                      ble #0x6e4d84
006e4d4c  00 50 a0 e3                                      mov r5, #0
006e4d50  05 60 a0 e1                                      mov r6, r5
006e4d54  05 00 98 e7                                      ldr r0, [r8, r5]
006e4d58  00 10 a0 e3                                      mov r1, #0
006e4d5c  8a a4 f0 eb                                      bl #0x30df8c
006e4d60  00 00 50 e3                                      cmp r0, #0
006e4d64  01 60 86 e2                                      add r6, r6, #1
006e4d68  02 00 00 1a                                      bne #0x6e4d78
006e4d6c  05 30 9a e7                                      ldr r3, [sl, r5]
006e4d70  00 00 53 e3                                      cmp r3, #0
006e4d74  03 00 00 0a                                      beq #0x6e4d88
006e4d78  07 00 56 e1                                      cmp r6, r7
006e4d7c  04 50 85 e2                                      add r5, r5, #4
006e4d80  f3 ff ff 1a                                      bne #0x6e4d54
006e4d84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006e4d88  04 00 a0 e1                                      mov r0, r4
006e4d8c  00 30 94 e5                                      ldr r3, [r4]
006e4d90  01 10 a0 e3                                      mov r1, #1
006e4d94  0f e0 a0 e1                                      mov lr, pc
006e4d98  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006e4d9c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006e4da0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVisibilityEx
; alias: _ZNK6glitch7collada15animation_track13CVisibilityEx15applyAddedValueEPvPfiS3_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVisibilityEx::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e4da0  01 00 a0 e1                                      mov r0, r1
006e4da4  02 10 a0 e1                                      mov r1, r2
006e4da8  03 20 a0 e1                                      mov r2, r3
006e4dac  00 30 9d e5                                      ldr r3, [sp]
006e4db0  d9 ff ff ea                                      b #0x6e4d1c
