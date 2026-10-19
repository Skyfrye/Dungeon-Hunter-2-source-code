; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e3110, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZNK6glitch7collada15animation_track8CFloatEx12getValueSizeEv
; demangled: glitch::collada::animation_track::CFloatEx::getValueSize() const
; decoder-mode: arm
006e3110  04 00 a0 e3                                      mov r0, #4
006e3114  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e3118, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZNK6glitch7collada15animation_track8CFloatEx16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CFloatEx::getIdentityValue(void*) const
; decoder-mode: arm
006e3118  00 30 a0 e3                                      mov r3, #0
006e311c  00 30 81 e5                                      str r3, [r1]
006e3120  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e3124, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZNK6glitch7collada15animation_track8CFloatEx15getBlendedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CFloatEx::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e3124  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e3128  20 40 9d e5                                      ldr r4, [sp, #0x20]
006e312c  00 00 a0 e3                                      mov r0, #0
006e3130  00 60 53 e2                                      subs r6, r3, #0
006e3134  01 50 a0 e1                                      mov r5, r1
006e3138  02 90 a0 e1                                      mov sb, r2
006e313c  00 00 84 e5                                      str r0, [r4]
006e3140  0e 00 00 da                                      ble #0x6e3180
006e3144  00 70 a0 e3                                      mov r7, #0
006e3148  00 a0 a0 e1                                      mov sl, r0
006e314c  07 80 a0 e1                                      mov r8, r7
006e3150  07 10 99 e7                                      ldr r1, [sb, r7]
006e3154  07 00 95 e7                                      ldr r0, [r5, r7]
006e3158  03 af f0 eb                                      bl #0x30ed6c
006e315c  00 10 a0 e1                                      mov r1, r0
006e3160  0a 00 a0 e1                                      mov r0, sl
006e3164  8e ae f0 eb                                      bl #0x30eba4
006e3168  01 80 88 e2                                      add r8, r8, #1
006e316c  06 00 58 e1                                      cmp r8, r6
006e3170  00 a0 a0 e1                                      mov sl, r0
006e3174  00 00 84 e5                                      str r0, [r4]
006e3178  04 70 87 e2                                      add r7, r7, #4
006e317c  f3 ff ff 1a                                      bne #0x6e3150
006e3180  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006e3184, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZNK6glitch7collada15animation_track8CFloatEx13getAddedValueEPvPfiS3_
; demangled: glitch::collada::animation_track::CFloatEx::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006e3184  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e3188  20 40 9d e5                                      ldr r4, [sp, #0x20]
006e318c  00 00 a0 e3                                      mov r0, #0
006e3190  00 60 53 e2                                      subs r6, r3, #0
006e3194  01 50 a0 e1                                      mov r5, r1
006e3198  02 90 a0 e1                                      mov sb, r2
006e319c  00 00 84 e5                                      str r0, [r4]
006e31a0  0e 00 00 da                                      ble #0x6e31e0
006e31a4  00 70 a0 e3                                      mov r7, #0
006e31a8  00 a0 a0 e1                                      mov sl, r0
006e31ac  07 80 a0 e1                                      mov r8, r7
006e31b0  07 10 99 e7                                      ldr r1, [sb, r7]
006e31b4  07 00 95 e7                                      ldr r0, [r5, r7]
006e31b8  eb ae f0 eb                                      bl #0x30ed6c
006e31bc  00 10 a0 e1                                      mov r1, r0
006e31c0  0a 00 a0 e1                                      mov r0, sl
006e31c4  76 ae f0 eb                                      bl #0x30eba4
006e31c8  01 80 88 e2                                      add r8, r8, #1
006e31cc  06 00 58 e1                                      cmp r8, r6
006e31d0  00 a0 a0 e1                                      mov sl, r0
006e31d4  00 00 84 e5                                      str r0, [r4]
006e31d8  04 70 87 e2                                      add r7, r7, #4
006e31dc  f3 ff ff 1a                                      bne #0x6e31b0
006e31e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006e31e4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZN6glitch7collada15animation_track8CFloatExD1Ev
; demangled: glitch::collada::animation_track::CFloatEx::~CFloatEx()
; decoder-mode: arm
006e31e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e3258, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZNK6glitch7collada15animation_track8CFloatEx10applyValueEPvS3_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CFloatEx::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006e3258  70 40 2d e9                                      push {r4, r5, r6, lr}
006e325c  00 30 90 e5                                      ldr r3, [r0]
006e3260  02 50 a0 e1                                      mov r5, r2
006e3264  01 40 a0 e1                                      mov r4, r1
006e3268  0f e0 a0 e1                                      mov lr, pc
006e326c  08 f0 93 e5                                      ldr pc, [r3, #8]
006e3270  00 30 a0 e1                                      mov r3, r0
006e3274  04 10 a0 e1                                      mov r1, r4
006e3278  05 00 a0 e1                                      mov r0, r5
006e327c  03 20 a0 e1                                      mov r2, r3
006e3280  70 40 bd e8                                      pop {r4, r5, r6, lr}
006e3284  77 ad f0 ea                                      b #0x30e868

; FUNCTION 0x006e3288, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZN6glitch7collada15animation_track8CFloatEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
006e3288  70 40 2d e9                                      push {r4, r5, r6, lr}
006e328c  01 40 a0 e1                                      mov r4, r1
006e3290  00 10 a0 e3                                      mov r1, #0
006e3294  02 50 a0 e1                                      mov r5, r2
006e3298  03 60 a0 e1                                      mov r6, r3
006e329c  e0 1a fe eb                                      bl #0x669e24
006e32a0  04 30 90 e5                                      ldr r3, [r0, #4]
006e32a4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
006e32a8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
006e32ac  3e ac f0 eb                                      bl #0x30e3ac
006e32b0  00 00 86 e5                                      str r0, [r6]
006e32b4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e32b8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZNK6glitch7collada15animation_track8CFloatEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CFloatEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006e32b8  01 00 a0 e1                                      mov r0, r1
006e32bc  02 10 a0 e1                                      mov r1, r2
006e32c0  03 20 a0 e1                                      mov r2, r3
006e32c4  00 30 9d e5                                      ldr r3, [sp]
006e32c8  ee ff ff ea                                      b #0x6e3288

; FUNCTION 0x006e32cc, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZNK6glitch7collada15animation_track8CFloatEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CFloatEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006e32cc  70 40 2d e9                                      push {r4, r5, r6, lr}
006e32d0  01 00 a0 e1                                      mov r0, r1
006e32d4  00 10 a0 e3                                      mov r1, #0
006e32d8  03 50 a0 e1                                      mov r5, r3
006e32dc  02 40 a0 e1                                      mov r4, r2
006e32e0  cf 1a fe eb                                      bl #0x669e24
006e32e4  04 30 90 e5                                      ldr r3, [r0, #4]
006e32e8  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
006e32ec  00 30 85 e5                                      str r3, [r5]
006e32f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e32f4, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZN6glitch7collada15animation_track8CFloatEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006e32f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e32f8  01 40 a0 e1                                      mov r4, r1
006e32fc  00 10 a0 e3                                      mov r1, #0
006e3300  03 70 a0 e1                                      mov r7, r3
006e3304  02 50 a0 e1                                      mov r5, r2
006e3308  c5 1a fe eb                                      bl #0x669e24
006e330c  04 60 90 e5                                      ldr r6, [r0, #4]
006e3310  04 41 a0 e1                                      lsl r4, r4, #2
006e3314  05 51 96 e7                                      ldr r5, [r6, r5, lsl #2]
006e3318  07 01 96 e7                                      ldr r0, [r6, r7, lsl #2]
006e331c  05 10 a0 e1                                      mov r1, r5
006e3320  21 ac f0 eb                                      bl #0x30e3ac
006e3324  00 10 a0 e1                                      mov r1, r0
006e3328  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e332c  8e ae f0 eb                                      bl #0x30ed6c
006e3330  00 10 a0 e1                                      mov r1, r0
006e3334  05 00 a0 e1                                      mov r0, r5
006e3338  19 ae f0 eb                                      bl #0x30eba4
006e333c  04 10 96 e7                                      ldr r1, [r6, r4]
006e3340  19 ac f0 eb                                      bl #0x30e3ac
006e3344  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e3348  00 00 83 e5                                      str r0, [r3]
006e334c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006e3350, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZNK6glitch7collada15animation_track8CFloatEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CFloatEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
006e3350  04 c0 9d e5                                      ldr ip, [sp, #4]
006e3354  01 00 a0 e1                                      mov r0, r1
006e3358  02 10 a0 e1                                      mov r1, r2
006e335c  03 20 a0 e1                                      mov r2, r3
006e3360  00 30 9d e5                                      ldr r3, [sp]
006e3364  00 c0 8d e5                                      str ip, [sp]
006e3368  08 c0 9d e5                                      ldr ip, [sp, #8]
006e336c  04 c0 8d e5                                      str ip, [sp, #4]
006e3370  df ff ff ea                                      b #0x6e32f4

; FUNCTION 0x006e3374, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZN6glitch7collada15animation_track8CFloatEx18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006e3374  70 40 2d e9                                      push {r4, r5, r6, lr}
006e3378  01 40 a0 e1                                      mov r4, r1
006e337c  00 10 a0 e3                                      mov r1, #0
006e3380  02 50 a0 e1                                      mov r5, r2
006e3384  03 60 a0 e1                                      mov r6, r3
006e3388  a5 1a fe eb                                      bl #0x669e24
006e338c  04 30 90 e5                                      ldr r3, [r0, #4]
006e3390  04 41 93 e7                                      ldr r4, [r3, r4, lsl #2]
006e3394  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
006e3398  04 10 a0 e1                                      mov r1, r4
006e339c  02 ac f0 eb                                      bl #0x30e3ac
006e33a0  00 10 a0 e1                                      mov r1, r0
006e33a4  06 00 a0 e1                                      mov r0, r6
006e33a8  6f ae f0 eb                                      bl #0x30ed6c
006e33ac  00 10 a0 e1                                      mov r1, r0
006e33b0  04 00 a0 e1                                      mov r0, r4
006e33b4  fa ad f0 eb                                      bl #0x30eba4
006e33b8  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e33bc  00 00 83 e5                                      str r0, [r3]
006e33c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e33c4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZNK6glitch7collada15animation_track8CFloatEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CFloatEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006e33c4  01 00 a0 e1                                      mov r0, r1
006e33c8  04 c0 9d e5                                      ldr ip, [sp, #4]
006e33cc  02 10 a0 e1                                      mov r1, r2
006e33d0  03 20 a0 e1                                      mov r2, r3
006e33d4  00 30 9d e5                                      ldr r3, [sp]
006e33d8  00 c0 8d e5                                      str ip, [sp]
006e33dc  e4 ff ff ea                                      b #0x6e3374

; FUNCTION 0x006e33e0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CFloatEx
; alias: _ZN6glitch7collada15animation_track8CFloatExD0Ev
; demangled: glitch::collada::animation_track::CFloatEx::~CFloatEx()
; decoder-mode: arm
006e33e0  10 40 2d e9                                      push {r4, lr}
006e33e4  00 40 a0 e1                                      mov r4, r0
006e33e8  b0 ab f0 eb                                      bl #0x30e2b0
006e33ec  04 00 a0 e1                                      mov r0, r4
006e33f0  10 80 bd e8                                      pop {r4, pc}
