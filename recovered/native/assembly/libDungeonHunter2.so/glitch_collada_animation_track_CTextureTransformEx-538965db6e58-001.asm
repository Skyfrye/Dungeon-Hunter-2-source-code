; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e33f4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx13retrieveValueEPvS3_
; demangled: glitch::collada::animation_track::CTextureTransformEx::retrieveValue(void*, void*) const
; decoder-mode: arm
006e33f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e33f8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx12getValueSizeEv
; demangled: glitch::collada::animation_track::CTextureTransformEx::getValueSize() const
; decoder-mode: arm
006e33f8  14 00 a0 e3                                      mov r0, #0x14
006e33fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e3400, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CTextureTransformEx::getIdentityValue(void*) const
; decoder-mode: arm
006e3400  00 30 a0 e3                                      mov r3, #0
006e3404  fe 25 a0 e3                                      mov r2, #0x3f800000
006e3408  00 30 81 e5                                      str r3, [r1]
006e340c  0c 20 81 e5                                      str r2, [r1, #0xc]
006e3410  10 20 81 e5                                      str r2, [r1, #0x10]
006e3414  08 30 81 e5                                      str r3, [r1, #8]
006e3418  04 30 81 e5                                      str r3, [r1, #4]
006e341c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e3420, declared_size=364, range_size=364, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx15getBlendedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CTextureTransformEx::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e3420  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e3424  00 00 53 e3                                      cmp r3, #0
006e3428  24 d0 4d e2                                      sub sp, sp, #0x24
006e342c  1c 30 8d e5                                      str r3, [sp, #0x1c]
006e3430  04 10 8d e5                                      str r1, [sp, #4]
006e3434  18 20 8d e5                                      str r2, [sp, #0x18]
006e3438  4c 00 00 da                                      ble #0x6e3570
006e343c  00 20 a0 e3                                      mov r2, #0
006e3440  fe 35 a0 e3                                      mov r3, #0x3f800000
006e3444  00 60 a0 e3                                      mov r6, #0
006e3448  08 20 8d e5                                      str r2, [sp, #8]
006e344c  10 20 8d e5                                      str r2, [sp, #0x10]
006e3450  0c 30 8d e5                                      str r3, [sp, #0xc]
006e3454  14 20 8d e5                                      str r2, [sp, #0x14]
006e3458  06 70 a0 e1                                      mov r7, r6
006e345c  18 10 9d e5                                      ldr r1, [sp, #0x18]
006e3460  04 20 9d e5                                      ldr r2, [sp, #4]
006e3464  07 51 91 e7                                      ldr r5, [r1, r7, lsl #2]
006e3468  06 10 92 e7                                      ldr r1, [r2, r6]
006e346c  06 40 82 e0                                      add r4, r2, r6
006e3470  05 00 a0 e1                                      mov r0, r5
006e3474  00 30 8d e5                                      str r3, [sp]
006e3478  3b ae f0 eb                                      bl #0x30ed6c
006e347c  04 10 9d e5                                      ldr r1, [sp, #4]
006e3480  00 b0 a0 e1                                      mov fp, r0
006e3484  01 70 87 e2                                      add r7, r7, #1
006e3488  06 00 81 e7                                      str r0, [r1, r6]
006e348c  04 10 94 e5                                      ldr r1, [r4, #4]
006e3490  05 00 a0 e1                                      mov r0, r5
006e3494  34 ae f0 eb                                      bl #0x30ed6c
006e3498  08 10 94 e5                                      ldr r1, [r4, #8]
006e349c  00 90 a0 e1                                      mov sb, r0
006e34a0  04 00 84 e5                                      str r0, [r4, #4]
006e34a4  05 00 a0 e1                                      mov r0, r5
006e34a8  2f ae f0 eb                                      bl #0x30ed6c
006e34ac  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006e34b0  00 a0 a0 e1                                      mov sl, r0
006e34b4  08 00 84 e5                                      str r0, [r4, #8]
006e34b8  05 00 a0 e1                                      mov r0, r5
006e34bc  2a ae f0 eb                                      bl #0x30ed6c
006e34c0  10 10 94 e5                                      ldr r1, [r4, #0x10]
006e34c4  00 80 a0 e1                                      mov r8, r0
006e34c8  0c 00 84 e5                                      str r0, [r4, #0xc]
006e34cc  05 00 a0 e1                                      mov r0, r5
006e34d0  25 ae f0 eb                                      bl #0x30ed6c
006e34d4  10 00 84 e5                                      str r0, [r4, #0x10]
006e34d8  00 50 a0 e1                                      mov r5, r0
006e34dc  0b 10 a0 e1                                      mov r1, fp
006e34e0  14 00 9d e5                                      ldr r0, [sp, #0x14]
006e34e4  ae ad f0 eb                                      bl #0x30eba4
006e34e8  09 10 a0 e1                                      mov r1, sb
006e34ec  14 00 8d e5                                      str r0, [sp, #0x14]
006e34f0  10 00 9d e5                                      ldr r0, [sp, #0x10]
006e34f4  aa ad f0 eb                                      bl #0x30eba4
006e34f8  0a 10 a0 e1                                      mov r1, sl
006e34fc  10 00 8d e5                                      str r0, [sp, #0x10]
006e3500  08 00 9d e5                                      ldr r0, [sp, #8]
006e3504  a6 ad f0 eb                                      bl #0x30eba4
006e3508  08 10 a0 e1                                      mov r1, r8
006e350c  08 00 8d e5                                      str r0, [sp, #8]
006e3510  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006e3514  a2 ad f0 eb                                      bl #0x30eba4
006e3518  00 30 9d e5                                      ldr r3, [sp]
006e351c  0c 00 8d e5                                      str r0, [sp, #0xc]
006e3520  05 10 a0 e1                                      mov r1, r5
006e3524  03 00 a0 e1                                      mov r0, r3
006e3528  9d ad f0 eb                                      bl #0x30eba4
006e352c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006e3530  00 30 a0 e1                                      mov r3, r0
006e3534  14 60 86 e2                                      add r6, r6, #0x14
006e3538  02 00 57 e1                                      cmp r7, r2
006e353c  c6 ff ff 1a                                      bne #0x6e345c
006e3540  14 10 9d e5                                      ldr r1, [sp, #0x14]
006e3544  48 20 9d e5                                      ldr r2, [sp, #0x48]
006e3548  00 10 82 e5                                      str r1, [r2]
006e354c  10 30 82 e5                                      str r3, [r2, #0x10]
006e3550  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006e3554  0c 30 82 e5                                      str r3, [r2, #0xc]
006e3558  08 10 9d e5                                      ldr r1, [sp, #8]
006e355c  08 10 82 e5                                      str r1, [r2, #8]
006e3560  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e3564  04 30 82 e5                                      str r3, [r2, #4]
006e3568  24 d0 8d e2                                      add sp, sp, #0x24
006e356c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006e3570  00 10 a0 e3                                      mov r1, #0
006e3574  fe 35 a0 e3                                      mov r3, #0x3f800000
006e3578  08 10 8d e5                                      str r1, [sp, #8]
006e357c  10 10 8d e5                                      str r1, [sp, #0x10]
006e3580  0c 30 8d e5                                      str r3, [sp, #0xc]
006e3584  14 10 8d e5                                      str r1, [sp, #0x14]
006e3588  ec ff ff ea                                      b #0x6e3540

; FUNCTION 0x006e358c, declared_size=364, range_size=364, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx13getAddedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CTextureTransformEx::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e358c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e3590  00 00 53 e3                                      cmp r3, #0
006e3594  24 d0 4d e2                                      sub sp, sp, #0x24
006e3598  1c 30 8d e5                                      str r3, [sp, #0x1c]
006e359c  04 10 8d e5                                      str r1, [sp, #4]
006e35a0  18 20 8d e5                                      str r2, [sp, #0x18]
006e35a4  4c 00 00 da                                      ble #0x6e36dc
006e35a8  00 20 a0 e3                                      mov r2, #0
006e35ac  fe 35 a0 e3                                      mov r3, #0x3f800000
006e35b0  00 60 a0 e3                                      mov r6, #0
006e35b4  08 20 8d e5                                      str r2, [sp, #8]
006e35b8  10 20 8d e5                                      str r2, [sp, #0x10]
006e35bc  14 30 8d e5                                      str r3, [sp, #0x14]
006e35c0  0c 20 8d e5                                      str r2, [sp, #0xc]
006e35c4  06 70 a0 e1                                      mov r7, r6
006e35c8  18 10 9d e5                                      ldr r1, [sp, #0x18]
006e35cc  04 20 9d e5                                      ldr r2, [sp, #4]
006e35d0  07 51 91 e7                                      ldr r5, [r1, r7, lsl #2]
006e35d4  06 10 92 e7                                      ldr r1, [r2, r6]
006e35d8  06 40 82 e0                                      add r4, r2, r6
006e35dc  05 00 a0 e1                                      mov r0, r5
006e35e0  00 30 8d e5                                      str r3, [sp]
006e35e4  e0 ad f0 eb                                      bl #0x30ed6c
006e35e8  04 10 9d e5                                      ldr r1, [sp, #4]
006e35ec  00 b0 a0 e1                                      mov fp, r0
006e35f0  01 70 87 e2                                      add r7, r7, #1
006e35f4  06 00 81 e7                                      str r0, [r1, r6]
006e35f8  04 10 94 e5                                      ldr r1, [r4, #4]
006e35fc  05 00 a0 e1                                      mov r0, r5
006e3600  d9 ad f0 eb                                      bl #0x30ed6c
006e3604  08 10 94 e5                                      ldr r1, [r4, #8]
006e3608  00 90 a0 e1                                      mov sb, r0
006e360c  04 00 84 e5                                      str r0, [r4, #4]
006e3610  05 00 a0 e1                                      mov r0, r5
006e3614  d4 ad f0 eb                                      bl #0x30ed6c
006e3618  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006e361c  00 a0 a0 e1                                      mov sl, r0
006e3620  08 00 84 e5                                      str r0, [r4, #8]
006e3624  05 00 a0 e1                                      mov r0, r5
006e3628  cf ad f0 eb                                      bl #0x30ed6c
006e362c  10 10 94 e5                                      ldr r1, [r4, #0x10]
006e3630  00 80 a0 e1                                      mov r8, r0
006e3634  0c 00 84 e5                                      str r0, [r4, #0xc]
006e3638  05 00 a0 e1                                      mov r0, r5
006e363c  ca ad f0 eb                                      bl #0x30ed6c
006e3640  10 00 84 e5                                      str r0, [r4, #0x10]
006e3644  00 50 a0 e1                                      mov r5, r0
006e3648  0b 10 a0 e1                                      mov r1, fp
006e364c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006e3650  53 ad f0 eb                                      bl #0x30eba4
006e3654  09 10 a0 e1                                      mov r1, sb
006e3658  0c 00 8d e5                                      str r0, [sp, #0xc]
006e365c  10 00 9d e5                                      ldr r0, [sp, #0x10]
006e3660  4f ad f0 eb                                      bl #0x30eba4
006e3664  0a 10 a0 e1                                      mov r1, sl
006e3668  10 00 8d e5                                      str r0, [sp, #0x10]
006e366c  08 00 9d e5                                      ldr r0, [sp, #8]
006e3670  4b ad f0 eb                                      bl #0x30eba4
006e3674  08 10 a0 e1                                      mov r1, r8
006e3678  08 00 8d e5                                      str r0, [sp, #8]
006e367c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006e3680  47 ad f0 eb                                      bl #0x30eba4
006e3684  00 30 9d e5                                      ldr r3, [sp]
006e3688  14 00 8d e5                                      str r0, [sp, #0x14]
006e368c  05 10 a0 e1                                      mov r1, r5
006e3690  03 00 a0 e1                                      mov r0, r3
006e3694  42 ad f0 eb                                      bl #0x30eba4
006e3698  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006e369c  00 30 a0 e1                                      mov r3, r0
006e36a0  14 60 86 e2                                      add r6, r6, #0x14
006e36a4  02 00 57 e1                                      cmp r7, r2
006e36a8  c6 ff ff 1a                                      bne #0x6e35c8
006e36ac  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006e36b0  48 20 9d e5                                      ldr r2, [sp, #0x48]
006e36b4  00 10 82 e5                                      str r1, [r2]
006e36b8  10 30 82 e5                                      str r3, [r2, #0x10]
006e36bc  14 30 9d e5                                      ldr r3, [sp, #0x14]
006e36c0  0c 30 82 e5                                      str r3, [r2, #0xc]
006e36c4  08 10 9d e5                                      ldr r1, [sp, #8]
006e36c8  08 10 82 e5                                      str r1, [r2, #8]
006e36cc  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e36d0  04 30 82 e5                                      str r3, [r2, #4]
006e36d4  24 d0 8d e2                                      add sp, sp, #0x24
006e36d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006e36dc  00 10 a0 e3                                      mov r1, #0
006e36e0  fe 35 a0 e3                                      mov r3, #0x3f800000
006e36e4  08 10 8d e5                                      str r1, [sp, #8]
006e36e8  10 10 8d e5                                      str r1, [sp, #0x10]
006e36ec  14 30 8d e5                                      str r3, [sp, #0x14]
006e36f0  0c 10 8d e5                                      str r1, [sp, #0xc]
006e36f4  ec ff ff ea                                      b #0x6e36ac

; FUNCTION 0x006e36f8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006e36f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e36fc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006e36fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e3700, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
006e3700  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e3704, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006e3704  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e3708, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZN6glitch7collada15animation_track19CTextureTransformExD1Ev
; demangled: glitch::collada::animation_track::CTextureTransformEx::~CTextureTransformEx()
; decoder-mode: arm
006e3708  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e38c4, declared_size=152, range_size=152, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZN6glitch7collada15animation_track19CTextureTransformEx12applyValueExEPvRNS2_5SDataEPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CTextureTransformEx::applyValueEx(void*, glitch::collada::animation_track::CTextureTransformEx::SData&, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006e38c4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006e38c8  01 40 a0 e1                                      mov r4, r1
006e38cc  43 14 a0 e3                                      mov r1, #0x43000000
006e38d0  6c d0 4d e2                                      sub sp, sp, #0x6c
006e38d4  00 50 a0 e1                                      mov r5, r0
006e38d8  0d 17 81 e2                                      add r1, r1, #0x340000
006e38dc  08 00 94 e5                                      ldr r0, [r4, #8]
006e38e0  02 80 a0 e1                                      mov r8, r2
006e38e4  ea ac f0 eb                                      bl #0x30ec94
006e38e8  e9 1f 00 e3                                      movw r1, #0xfe9
006e38ec  49 10 44 e3                                      movt r1, #0x4049
006e38f0  1d ad f0 eb                                      bl #0x30ed6c
006e38f4  0c e0 94 e5                                      ldr lr, [r4, #0xc]
006e38f8  04 60 94 e5                                      ldr r6, [r4, #4]
006e38fc  00 70 94 e5                                      ldr r7, [r4]
006e3900  10 a0 94 e5                                      ldr sl, [r4, #0x10]
006e3904  0c 40 8d e2                                      add r4, sp, #0xc
006e3908  3f c4 a0 e3                                      mov ip, #0x3f000000
006e390c  00 10 a0 e1                                      mov r1, r0
006e3910  60 20 8d e2                                      add r2, sp, #0x60
006e3914  58 30 8d e2                                      add r3, sp, #0x58
006e3918  04 00 a0 e1                                      mov r0, r4
006e391c  50 e0 8d e5                                      str lr, [sp, #0x50]
006e3920  50 e0 8d e2                                      add lr, sp, #0x50
006e3924  64 c0 8d e5                                      str ip, [sp, #0x64]
006e3928  58 70 8d e5                                      str r7, [sp, #0x58]
006e392c  5c 60 8d e5                                      str r6, [sp, #0x5c]
006e3930  54 a0 8d e5                                      str sl, [sp, #0x54]
006e3934  00 e0 8d e5                                      str lr, [sp]
006e3938  60 c0 8d e5                                      str ip, [sp, #0x60]
006e393c  8e ff ff eb                                      bl #0x6e377c
006e3940  05 00 a0 e1                                      mov r0, r5
006e3944  b8 10 d8 e1                                      ldrh r1, [r8, #8]
006e3948  04 30 a0 e1                                      mov r3, r4
006e394c  00 20 a0 e3                                      mov r2, #0
006e3950  e1 9e fb eb                                      bl #0x5cb4dc
006e3954  6c d0 8d e2                                      add sp, sp, #0x6c
006e3958  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x006e395c, declared_size=308, range_size=308, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZN6glitch7collada15animation_track19CTextureTransformEx19applyBlendedValueExEPvPfiS3_
; demangled: glitch::collada::animation_track::CTextureTransformEx::applyBlendedValueEx(void*, float*, int, void*)
; decoder-mode: arm
006e395c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e3960  00 c0 a0 e3                                      mov ip, #0
006e3964  2c d0 4d e2                                      sub sp, sp, #0x2c
006e3968  fe e5 a0 e3                                      mov lr, #0x3f800000
006e396c  00 00 52 e3                                      cmp r2, #0
006e3970  08 20 8d e5                                      str r2, [sp, #8]
006e3974  1c c0 8d e5                                      str ip, [sp, #0x1c]
006e3978  24 e0 8d e5                                      str lr, [sp, #0x24]
006e397c  03 00 8d e8                                      stm sp, {r0, r1}
006e3980  0c 30 8d e5                                      str r3, [sp, #0xc]
006e3984  14 c0 8d e5                                      str ip, [sp, #0x14]
006e3988  18 c0 8d e5                                      str ip, [sp, #0x18]
006e398c  20 e0 8d e5                                      str lr, [sp, #0x20]
006e3990  38 00 00 da                                      ble #0x6e3a78
006e3994  00 60 a0 e3                                      mov r6, #0
006e3998  06 70 a0 e1                                      mov r7, r6
006e399c  04 30 9d e5                                      ldr r3, [sp, #4]
006e39a0  07 51 93 e7                                      ldr r5, [r3, r7, lsl #2]
006e39a4  00 30 9d e5                                      ldr r3, [sp]
006e39a8  01 70 87 e2                                      add r7, r7, #1
006e39ac  05 00 a0 e1                                      mov r0, r5
006e39b0  06 10 93 e7                                      ldr r1, [r3, r6]
006e39b4  06 40 83 e0                                      add r4, r3, r6
006e39b8  eb ac f0 eb                                      bl #0x30ed6c
006e39bc  00 30 9d e5                                      ldr r3, [sp]
006e39c0  05 10 a0 e1                                      mov r1, r5
006e39c4  00 b0 a0 e1                                      mov fp, r0
006e39c8  06 00 83 e7                                      str r0, [r3, r6]
006e39cc  04 00 94 e5                                      ldr r0, [r4, #4]
006e39d0  e5 ac f0 eb                                      bl #0x30ed6c
006e39d4  05 10 a0 e1                                      mov r1, r5
006e39d8  00 90 a0 e1                                      mov sb, r0
006e39dc  04 00 84 e5                                      str r0, [r4, #4]
006e39e0  08 00 94 e5                                      ldr r0, [r4, #8]
006e39e4  e0 ac f0 eb                                      bl #0x30ed6c
006e39e8  05 10 a0 e1                                      mov r1, r5
006e39ec  00 a0 a0 e1                                      mov sl, r0
006e39f0  08 00 84 e5                                      str r0, [r4, #8]
006e39f4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006e39f8  db ac f0 eb                                      bl #0x30ed6c
006e39fc  05 10 a0 e1                                      mov r1, r5
006e3a00  00 80 a0 e1                                      mov r8, r0
006e3a04  0c 00 84 e5                                      str r0, [r4, #0xc]
006e3a08  10 00 94 e5                                      ldr r0, [r4, #0x10]
006e3a0c  d6 ac f0 eb                                      bl #0x30ed6c
006e3a10  10 00 84 e5                                      str r0, [r4, #0x10]
006e3a14  00 50 a0 e1                                      mov r5, r0
006e3a18  0b 10 a0 e1                                      mov r1, fp
006e3a1c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006e3a20  5f ac f0 eb                                      bl #0x30eba4
006e3a24  09 10 a0 e1                                      mov r1, sb
006e3a28  14 00 8d e5                                      str r0, [sp, #0x14]
006e3a2c  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e3a30  5b ac f0 eb                                      bl #0x30eba4
006e3a34  0a 10 a0 e1                                      mov r1, sl
006e3a38  18 00 8d e5                                      str r0, [sp, #0x18]
006e3a3c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006e3a40  57 ac f0 eb                                      bl #0x30eba4
006e3a44  08 10 a0 e1                                      mov r1, r8
006e3a48  1c 00 8d e5                                      str r0, [sp, #0x1c]
006e3a4c  20 00 9d e5                                      ldr r0, [sp, #0x20]
006e3a50  53 ac f0 eb                                      bl #0x30eba4
006e3a54  05 10 a0 e1                                      mov r1, r5
006e3a58  20 00 8d e5                                      str r0, [sp, #0x20]
006e3a5c  24 00 9d e5                                      ldr r0, [sp, #0x24]
006e3a60  4f ac f0 eb                                      bl #0x30eba4
006e3a64  08 30 9d e5                                      ldr r3, [sp, #8]
006e3a68  24 00 8d e5                                      str r0, [sp, #0x24]
006e3a6c  14 60 86 e2                                      add r6, r6, #0x14
006e3a70  03 00 57 e1                                      cmp r7, r3
006e3a74  c8 ff ff 1a                                      bne #0x6e399c
006e3a78  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006e3a7c  14 10 8d e2                                      add r1, sp, #0x14
006e3a80  00 20 a0 e3                                      mov r2, #0
006e3a84  8e ff ff eb                                      bl #0x6e38c4
006e3a88  2c d0 8d e2                                      add sp, sp, #0x2c
006e3a8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006e3a90, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx15applyAddedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CTextureTransformEx::applyAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e3a90  01 00 a0 e1                                      mov r0, r1
006e3a94  02 10 a0 e1                                      mov r1, r2
006e3a98  03 20 a0 e1                                      mov r2, r3
006e3a9c  00 30 9d e5                                      ldr r3, [sp]
006e3aa0  ad ff ff ea                                      b #0x6e395c

; FUNCTION 0x006e3aa4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx17applyBlendedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CTextureTransformEx::applyBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e3aa4  01 00 a0 e1                                      mov r0, r1
006e3aa8  02 10 a0 e1                                      mov r1, r2
006e3aac  03 20 a0 e1                                      mov r2, r3
006e3ab0  00 30 9d e5                                      ldr r3, [sp]
006e3ab4  a8 ff ff ea                                      b #0x6e395c

; FUNCTION 0x006e3ab8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx10applyValueEPvS3_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CTextureTransformEx::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e3ab8  02 00 a0 e1                                      mov r0, r2
006e3abc  00 20 a0 e3                                      mov r2, #0
006e3ac0  7f ff ff ea                                      b #0x6e38c4

; FUNCTION 0x006e3ac4, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZN6glitch7collada15animation_track19CTextureTransformEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiiifPv
; demangled: glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, int, float, void*)
; decoder-mode: arm
006e3ac4  70 40 2d e9                                      push {r4, r5, r6, lr}
006e3ac8  02 40 a0 e1                                      mov r4, r2
006e3acc  03 60 a0 e1                                      mov r6, r3
006e3ad0  d3 18 fe eb                                      bl #0x669e24
006e3ad4  04 50 90 e5                                      ldr r5, [r0, #4]
006e3ad8  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e3adc  04 41 a0 e1                                      lsl r4, r4, #2
006e3ae0  06 61 95 e7                                      ldr r6, [r5, r6, lsl #2]
006e3ae4  03 01 95 e7                                      ldr r0, [r5, r3, lsl #2]
006e3ae8  06 10 a0 e1                                      mov r1, r6
006e3aec  2e aa f0 eb                                      bl #0x30e3ac
006e3af0  00 10 a0 e1                                      mov r1, r0
006e3af4  14 00 9d e5                                      ldr r0, [sp, #0x14]
006e3af8  9b ac f0 eb                                      bl #0x30ed6c
006e3afc  00 10 a0 e1                                      mov r1, r0
006e3b00  06 00 a0 e1                                      mov r0, r6
006e3b04  26 ac f0 eb                                      bl #0x30eba4
006e3b08  04 10 95 e7                                      ldr r1, [r5, r4]
006e3b0c  26 aa f0 eb                                      bl #0x30e3ac
006e3b10  18 30 9d e5                                      ldr r3, [sp, #0x18]
006e3b14  00 00 83 e5                                      str r0, [r3]
006e3b18  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e3b1c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZN6glitch7collada15animation_track19CTextureTransformEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiiPv
; demangled: glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, void*)
; decoder-mode: arm
006e3b1c  70 40 2d e9                                      push {r4, r5, r6, lr}
006e3b20  02 40 a0 e1                                      mov r4, r2
006e3b24  03 50 a0 e1                                      mov r5, r3
006e3b28  bd 18 fe eb                                      bl #0x669e24
006e3b2c  04 30 90 e5                                      ldr r3, [r0, #4]
006e3b30  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
006e3b34  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
006e3b38  1b aa f0 eb                                      bl #0x30e3ac
006e3b3c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e3b40  00 00 83 e5                                      str r0, [r3]
006e3b44  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e3b48, declared_size=448, range_size=448, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZN6glitch7collada15animation_track19CTextureTransformEx10getValueExERKNS0_18SAnimationAccessorEiiPvRib
; demangled: glitch::collada::animation_track::CTextureTransformEx::getValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*, int&, bool)
; decoder-mode: arm
006e3b48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e3b4c  34 d0 4d e2                                      sub sp, sp, #0x34
006e3b50  10 30 8d e5                                      str r3, [sp, #0x10]
006e3b54  01 a0 a0 e1                                      mov sl, r1
006e3b58  02 80 a0 e1                                      mov r8, r2
006e3b5c  00 50 a0 e1                                      mov r5, r0
006e3b60  5c 60 dd e5                                      ldrb r6, [sp, #0x5c]
006e3b64  bf 18 fe eb                                      bl #0x669e68
006e3b68  10 e0 9d e5                                      ldr lr, [sp, #0x10]
006e3b6c  00 c0 a0 e1                                      mov ip, r0
006e3b70  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
006e3b74  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
006e3b78  00 20 9c e5                                      ldr r2, [ip]
006e3b7c  05 00 a0 e1                                      mov r0, r5
006e3b80  00 20 8e e5                                      str r2, [lr]
006e3b84  bb 18 fe eb                                      bl #0x669e78
006e3b88  00 90 50 e2                                      subs sb, r0, #0
006e3b8c  39 00 00 da                                      ble #0x6e3c78
006e3b90  00 40 a0 e3                                      mov r4, #0
006e3b94  24 20 8d e2                                      add r2, sp, #0x24
006e3b98  20 30 8d e2                                      add r3, sp, #0x20
006e3b9c  2c c0 8d e2                                      add ip, sp, #0x2c
006e3ba0  28 b0 8d e2                                      add fp, sp, #0x28
006e3ba4  14 20 8d e5                                      str r2, [sp, #0x14]
006e3ba8  1c 30 8d e5                                      str r3, [sp, #0x1c]
006e3bac  18 c0 8d e5                                      str ip, [sp, #0x18]
006e3bb0  04 70 a0 e1                                      mov r7, r4
006e3bb4  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006e3bb8  04 10 a0 e1                                      mov r1, r4
006e3bbc  08 20 a0 e1                                      mov r2, r8
006e3bc0  0b 30 a0 e1                                      mov r3, fp
006e3bc4  05 00 a0 e1                                      mov r0, r5
006e3bc8  00 e0 8d e5                                      str lr, [sp]
006e3bcc  28 70 8d e5                                      str r7, [sp, #0x28]
006e3bd0  d7 1c fe eb                                      bl #0x66af34
006e3bd4  06 00 10 e1                                      tst r0, r6
006e3bd8  00 60 a0 03                                      moveq r6, #0
006e3bdc  01 60 a0 13                                      movne r6, #1
006e3be0  04 10 a0 e1                                      mov r1, r4
006e3be4  0a 20 a0 e1                                      mov r2, sl
006e3be8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e3bec  05 00 a0 e1                                      mov r0, r5
006e3bf0  20 70 8d e5                                      str r7, [sp, #0x20]
006e3bf4  3e 1d fe eb                                      bl #0x66b0f4
006e3bf8  00 00 56 e3                                      cmp r6, #0
006e3bfc  04 10 a0 e1                                      mov r1, r4
006e3c00  05 00 a0 e1                                      mov r0, r5
006e3c04  39 00 00 0a                                      beq #0x6e3cf0
006e3c08  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006e3c0c  20 20 9d e5                                      ldr r2, [sp, #0x20]
006e3c10  0c 30 a0 e1                                      mov r3, ip
006e3c14  01 c0 8c e2                                      add ip, ip, #1
006e3c18  00 c0 8d e5                                      str ip, [sp]
006e3c1c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006e3c20  04 c0 8d e5                                      str ip, [sp, #4]
006e3c24  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006e3c28  08 c0 8d e5                                      str ip, [sp, #8]
006e3c2c  a4 ff ff eb                                      bl #0x6e3ac4
006e3c30  04 10 a0 e1                                      mov r1, r4
006e3c34  05 00 a0 e1                                      mov r0, r5
006e3c38  74 18 fe eb                                      bl #0x669e10
006e3c3c  57 00 40 e2                                      sub r0, r0, #0x57
006e3c40  04 00 50 e3                                      cmp r0, #4
006e3c44  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
006e3c48  07 00 00 ea                                      b #0x6e3c6c
006e3c4c  20 00 00 ea                                      b #0x6e3cd4
006e3c50  18 00 00 ea                                      b #0x6e3cb8
006e3c54  01 00 00 ea                                      b #0x6e3c60
006e3c58  0f 00 00 ea                                      b #0x6e3c9c
006e3c5c  07 00 00 ea                                      b #0x6e3c80
006e3c60  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006e3c64  10 20 9d e5                                      ldr r2, [sp, #0x10]
006e3c68  08 30 82 e5                                      str r3, [r2, #8]
006e3c6c  01 40 84 e2                                      add r4, r4, #1
006e3c70  09 00 54 e1                                      cmp r4, sb
006e3c74  ce ff ff 1a                                      bne #0x6e3bb4
006e3c78  34 d0 8d e2                                      add sp, sp, #0x34
006e3c7c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006e3c80  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006e3c84  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006e3c88  01 40 84 e2                                      add r4, r4, #1
006e3c8c  09 00 54 e1                                      cmp r4, sb
006e3c90  10 30 8c e5                                      str r3, [ip, #0x10]
006e3c94  c6 ff ff 1a                                      bne #0x6e3bb4
006e3c98  f6 ff ff ea                                      b #0x6e3c78
006e3c9c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006e3ca0  10 20 9d e5                                      ldr r2, [sp, #0x10]
006e3ca4  01 40 84 e2                                      add r4, r4, #1
006e3ca8  09 00 54 e1                                      cmp r4, sb
006e3cac  0c 30 82 e5                                      str r3, [r2, #0xc]
006e3cb0  bf ff ff 1a                                      bne #0x6e3bb4
006e3cb4  ef ff ff ea                                      b #0x6e3c78
006e3cb8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006e3cbc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006e3cc0  01 40 84 e2                                      add r4, r4, #1
006e3cc4  09 00 54 e1                                      cmp r4, sb
006e3cc8  04 30 8c e5                                      str r3, [ip, #4]
006e3ccc  b8 ff ff 1a                                      bne #0x6e3bb4
006e3cd0  e8 ff ff ea                                      b #0x6e3c78
006e3cd4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006e3cd8  10 20 9d e5                                      ldr r2, [sp, #0x10]
006e3cdc  01 40 84 e2                                      add r4, r4, #1
006e3ce0  09 00 54 e1                                      cmp r4, sb
006e3ce4  00 30 82 e5                                      str r3, [r2]
006e3ce8  b1 ff ff 1a                                      bne #0x6e3bb4
006e3cec  e1 ff ff ea                                      b #0x6e3c78
006e3cf0  18 e0 9d e5                                      ldr lr, [sp, #0x18]
006e3cf4  20 20 9d e5                                      ldr r2, [sp, #0x20]
006e3cf8  28 30 9d e5                                      ldr r3, [sp, #0x28]
006e3cfc  00 e0 8d e5                                      str lr, [sp]
006e3d00  85 ff ff eb                                      bl #0x6e3b1c
006e3d04  c9 ff ff ea                                      b #0x6e3c30

; FUNCTION 0x006e3d08, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx8getValueERKNS0_18SAnimationAccessorEiiPvRib
; demangled: glitch::collada::animation_track::CTextureTransformEx::getValue(glitch::collada::SAnimationAccessor const&, int, int, void*, int&, bool) const
; decoder-mode: arm
006e3d08  04 40 2d e5                                      str r4, [sp, #-4]!
006e3d0c  08 40 9d e5                                      ldr r4, [sp, #8]
006e3d10  0c c0 dd e5                                      ldrb ip, [sp, #0xc]
006e3d14  01 00 a0 e1                                      mov r0, r1
006e3d18  02 10 a0 e1                                      mov r1, r2
006e3d1c  03 20 a0 e1                                      mov r2, r3
006e3d20  04 30 9d e5                                      ldr r3, [sp, #4]
006e3d24  10 10 8d e9                                      stmib sp, {r4, ip}
006e3d28  10 00 bd e8                                      ldm sp!, {r4}
006e3d2c  85 ff ff ea                                      b #0x6e3b48

; FUNCTION 0x006e3d30, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZN6glitch7collada15animation_track19CTextureTransformEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006e3d30  70 40 2d e9                                      push {r4, r5, r6, lr}
006e3d34  02 40 a0 e1                                      mov r4, r2
006e3d38  03 50 a0 e1                                      mov r5, r3
006e3d3c  38 18 fe eb                                      bl #0x669e24
006e3d40  04 30 90 e5                                      ldr r3, [r0, #4]
006e3d44  04 41 93 e7                                      ldr r4, [r3, r4, lsl #2]
006e3d48  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
006e3d4c  04 10 a0 e1                                      mov r1, r4
006e3d50  95 a9 f0 eb                                      bl #0x30e3ac
006e3d54  00 10 a0 e1                                      mov r1, r0
006e3d58  10 00 9d e5                                      ldr r0, [sp, #0x10]
006e3d5c  02 ac f0 eb                                      bl #0x30ed6c
006e3d60  00 10 a0 e1                                      mov r1, r0
006e3d64  04 00 a0 e1                                      mov r0, r4
006e3d68  8d ab f0 eb                                      bl #0x30eba4
006e3d6c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006e3d70  00 00 83 e5                                      str r0, [r3]
006e3d74  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e3d78, declared_size=388, range_size=388, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZN6glitch7collada15animation_track19CTextureTransformEx10getValueExERKNS0_18SAnimationAccessorEiPvRib
; demangled: glitch::collada::animation_track::CTextureTransformEx::getValueEx(glitch::collada::SAnimationAccessor const&, int, void*, int&, bool)
; decoder-mode: arm
006e3d78  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e3d7c  24 d0 4d e2                                      sub sp, sp, #0x24
006e3d80  08 20 8d e5                                      str r2, [sp, #8]
006e3d84  01 70 a0 e1                                      mov r7, r1
006e3d88  00 50 a0 e1                                      mov r5, r0
006e3d8c  48 60 dd e5                                      ldrb r6, [sp, #0x48]
006e3d90  34 18 fe eb                                      bl #0x669e68
006e3d94  08 e0 9d e5                                      ldr lr, [sp, #8]
006e3d98  00 c0 a0 e1                                      mov ip, r0
006e3d9c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
006e3da0  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
006e3da4  00 20 9c e5                                      ldr r2, [ip]
006e3da8  05 00 a0 e1                                      mov r0, r5
006e3dac  00 20 8e e5                                      str r2, [lr]
006e3db0  30 18 fe eb                                      bl #0x669e78
006e3db4  00 80 50 e2                                      subs r8, r0, #0
006e3db8  2b 00 00 da                                      ble #0x6e3e6c
006e3dbc  1c 20 8d e2                                      add r2, sp, #0x1c
006e3dc0  00 40 a0 e3                                      mov r4, #0
006e3dc4  18 a0 8d e2                                      add sl, sp, #0x18
006e3dc8  14 90 8d e2                                      add sb, sp, #0x14
006e3dcc  0c 20 8d e5                                      str r2, [sp, #0xc]
006e3dd0  04 10 a0 e1                                      mov r1, r4
006e3dd4  00 c0 a0 e3                                      mov ip, #0
006e3dd8  07 20 a0 e1                                      mov r2, r7
006e3ddc  0a 30 a0 e1                                      mov r3, sl
006e3de0  05 00 a0 e1                                      mov r0, r5
006e3de4  18 c0 8d e5                                      str ip, [sp, #0x18]
006e3de8  00 90 8d e5                                      str sb, [sp]
006e3dec  50 1c fe eb                                      bl #0x66af34
006e3df0  06 00 10 e1                                      tst r0, r6
006e3df4  04 10 a0 e1                                      mov r1, r4
006e3df8  05 00 a0 e1                                      mov r0, r5
006e3dfc  00 60 a0 03                                      moveq r6, #0
006e3e00  01 60 a0 13                                      movne r6, #1
006e3e04  36 00 00 0a                                      beq #0x6e3ee4
006e3e08  18 20 9d e5                                      ldr r2, [sp, #0x18]
006e3e0c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006e3e10  0c e0 9d e5                                      ldr lr, [sp, #0xc]
006e3e14  01 30 82 e2                                      add r3, r2, #1
006e3e18  00 c0 8d e5                                      str ip, [sp]
006e3e1c  04 e0 8d e5                                      str lr, [sp, #4]
006e3e20  c2 ff ff eb                                      bl #0x6e3d30
006e3e24  04 10 a0 e1                                      mov r1, r4
006e3e28  05 00 a0 e1                                      mov r0, r5
006e3e2c  f7 17 fe eb                                      bl #0x669e10
006e3e30  57 00 40 e2                                      sub r0, r0, #0x57
006e3e34  04 00 50 e3                                      cmp r0, #4
006e3e38  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
006e3e3c  07 00 00 ea                                      b #0x6e3e60
006e3e40  20 00 00 ea                                      b #0x6e3ec8
006e3e44  18 00 00 ea                                      b #0x6e3eac
006e3e48  01 00 00 ea                                      b #0x6e3e54
006e3e4c  0f 00 00 ea                                      b #0x6e3e90
006e3e50  07 00 00 ea                                      b #0x6e3e74
006e3e54  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e3e58  08 20 9d e5                                      ldr r2, [sp, #8]
006e3e5c  08 30 82 e5                                      str r3, [r2, #8]
006e3e60  01 40 84 e2                                      add r4, r4, #1
006e3e64  08 00 54 e1                                      cmp r4, r8
006e3e68  d8 ff ff 1a                                      bne #0x6e3dd0
006e3e6c  24 d0 8d e2                                      add sp, sp, #0x24
006e3e70  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006e3e74  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e3e78  08 c0 9d e5                                      ldr ip, [sp, #8]
006e3e7c  01 40 84 e2                                      add r4, r4, #1
006e3e80  08 00 54 e1                                      cmp r4, r8
006e3e84  10 30 8c e5                                      str r3, [ip, #0x10]
006e3e88  d0 ff ff 1a                                      bne #0x6e3dd0
006e3e8c  f6 ff ff ea                                      b #0x6e3e6c
006e3e90  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e3e94  08 20 9d e5                                      ldr r2, [sp, #8]
006e3e98  01 40 84 e2                                      add r4, r4, #1
006e3e9c  08 00 54 e1                                      cmp r4, r8
006e3ea0  0c 30 82 e5                                      str r3, [r2, #0xc]
006e3ea4  c9 ff ff 1a                                      bne #0x6e3dd0
006e3ea8  ef ff ff ea                                      b #0x6e3e6c
006e3eac  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e3eb0  08 c0 9d e5                                      ldr ip, [sp, #8]
006e3eb4  01 40 84 e2                                      add r4, r4, #1
006e3eb8  08 00 54 e1                                      cmp r4, r8
006e3ebc  04 30 8c e5                                      str r3, [ip, #4]
006e3ec0  c2 ff ff 1a                                      bne #0x6e3dd0
006e3ec4  e8 ff ff ea                                      b #0x6e3e6c
006e3ec8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e3ecc  08 20 9d e5                                      ldr r2, [sp, #8]
006e3ed0  01 40 84 e2                                      add r4, r4, #1
006e3ed4  08 00 54 e1                                      cmp r4, r8
006e3ed8  00 30 82 e5                                      str r3, [r2]
006e3edc  bb ff ff 1a                                      bne #0x6e3dd0
006e3ee0  e1 ff ff ea                                      b #0x6e3e6c
006e3ee4  18 b0 9d e5                                      ldr fp, [sp, #0x18]
006e3ee8  cd 17 fe eb                                      bl #0x669e24
006e3eec  04 30 90 e5                                      ldr r3, [r0, #4]
006e3ef0  0b 31 93 e7                                      ldr r3, [r3, fp, lsl #2]
006e3ef4  1c 30 8d e5                                      str r3, [sp, #0x1c]
006e3ef8  c9 ff ff ea                                      b #0x6e3e24

; FUNCTION 0x006e3efc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZN6glitch7collada15animation_track19CTextureTransformEx12applyValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoERib
; demangled: glitch::collada::animation_track::CTextureTransformEx::applyValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, bool)
; decoder-mode: arm
006e3efc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006e3f00  24 d0 4d e2                                      sub sp, sp, #0x24
006e3f04  3c 70 dd e5                                      ldrb r7, [sp, #0x3c]
006e3f08  0c 40 8d e2                                      add r4, sp, #0xc
006e3f0c  00 c0 a0 e3                                      mov ip, #0
006e3f10  fe e5 a0 e3                                      mov lr, #0x3f800000
006e3f14  02 60 a0 e1                                      mov r6, r2
006e3f18  03 50 a0 e1                                      mov r5, r3
006e3f1c  04 20 a0 e1                                      mov r2, r4
006e3f20  38 30 9d e5                                      ldr r3, [sp, #0x38]
006e3f24  14 c0 8d e5                                      str ip, [sp, #0x14]
006e3f28  1c e0 8d e5                                      str lr, [sp, #0x1c]
006e3f2c  00 70 8d e5                                      str r7, [sp]
006e3f30  0c c0 8d e5                                      str ip, [sp, #0xc]
006e3f34  10 c0 8d e5                                      str ip, [sp, #0x10]
006e3f38  18 e0 8d e5                                      str lr, [sp, #0x18]
006e3f3c  8d ff ff eb                                      bl #0x6e3d78
006e3f40  06 00 a0 e1                                      mov r0, r6
006e3f44  04 10 a0 e1                                      mov r1, r4
006e3f48  05 20 a0 e1                                      mov r2, r5
006e3f4c  5c fe ff eb                                      bl #0x6e38c4
006e3f50  24 d0 8d e2                                      add sp, sp, #0x24
006e3f54  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006e3f58, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoERib
; demangled: glitch::collada::animation_track::CTextureTransformEx::applyValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, bool) const
; decoder-mode: arm
006e3f58  04 40 2d e5                                      str r4, [sp, #-4]!
006e3f5c  08 40 9d e5                                      ldr r4, [sp, #8]
006e3f60  0c c0 dd e5                                      ldrb ip, [sp, #0xc]
006e3f64  01 00 a0 e1                                      mov r0, r1
006e3f68  02 10 a0 e1                                      mov r1, r2
006e3f6c  03 20 a0 e1                                      mov r2, r3
006e3f70  04 30 9d e5                                      ldr r3, [sp, #4]
006e3f74  10 10 8d e9                                      stmib sp, {r4, ip}
006e3f78  10 00 bd e8                                      ldm sp!, {r4}
006e3f7c  de ff ff ea                                      b #0x6e3efc

; FUNCTION 0x006e3f80, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZNK6glitch7collada15animation_track19CTextureTransformEx8getValueERKNS0_18SAnimationAccessorEiPvRib
; demangled: glitch::collada::animation_track::CTextureTransformEx::getValue(glitch::collada::SAnimationAccessor const&, int, void*, int&, bool) const
; decoder-mode: arm
006e3f80  04 c0 dd e5                                      ldrb ip, [sp, #4]
006e3f84  01 00 a0 e1                                      mov r0, r1
006e3f88  02 10 a0 e1                                      mov r1, r2
006e3f8c  03 20 a0 e1                                      mov r2, r3
006e3f90  00 30 9d e5                                      ldr r3, [sp]
006e3f94  00 c0 8d e5                                      str ip, [sp]
006e3f98  76 ff ff ea                                      b #0x6e3d78

; FUNCTION 0x006e3f9c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CTextureTransformEx
; alias: _ZN6glitch7collada15animation_track19CTextureTransformExD0Ev
; demangled: glitch::collada::animation_track::CTextureTransformEx::~CTextureTransformEx()
; decoder-mode: arm
006e3f9c  10 40 2d e9                                      push {r4, lr}
006e3fa0  00 40 a0 e1                                      mov r4, r0
006e3fa4  c1 a8 f0 eb                                      bl #0x30e2b0
006e3fa8  04 00 a0 e1                                      mov r0, r4
006e3fac  10 80 bd e8                                      pop {r4, pc}
