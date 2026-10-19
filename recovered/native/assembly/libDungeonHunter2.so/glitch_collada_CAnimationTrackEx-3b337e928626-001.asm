; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e29b0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZN6glitch7collada17CAnimationTrackExD1Ev
; demangled: glitch::collada::CAnimationTrackEx::~CAnimationTrackEx()
; decoder-mode: arm
006e29b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e29d4, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx13retrieveValueEPvS2_
; demangled: glitch::collada::CAnimationTrackEx::retrieveValue(void*, void*) const
; decoder-mode: arm
006e29d4  70 40 2d e9                                      push {r4, r5, r6, lr}
006e29d8  00 30 90 e5                                      ldr r3, [r0]
006e29dc  02 50 a0 e1                                      mov r5, r2
006e29e0  01 40 a0 e1                                      mov r4, r1
006e29e4  0f e0 a0 e1                                      mov lr, pc
006e29e8  08 f0 93 e5                                      ldr pc, [r3, #8]
006e29ec  00 30 a0 e1                                      mov r3, r0
006e29f0  04 10 a0 e1                                      mov r1, r4
006e29f4  05 00 a0 e1                                      mov r0, r5
006e29f8  03 20 a0 e1                                      mov r2, r3
006e29fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
006e2a00  98 af f0 ea                                      b #0x30e868

; FUNCTION 0x006e2a04, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZN6glitch7collada17CAnimationTrackExD0Ev
; demangled: glitch::collada::CAnimationTrackEx::~CAnimationTrackEx()
; decoder-mode: arm
006e2a04  10 40 2d e9                                      push {r4, lr}
006e2a08  00 40 a0 e1                                      mov r4, r0
006e2a0c  27 ae f0 eb                                      bl #0x30e2b0
006e2a10  04 00 a0 e1                                      mov r0, r4
006e2a14  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e2a18, declared_size=192, range_size=192, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoERifb
; demangled: glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, float, bool) const
; decoder-mode: arm
006e2a18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e2a1c  18 d0 4d e2                                      sub sp, sp, #0x18
006e2a20  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
006e2a24  00 e0 a0 e3                                      mov lr, #0
006e2a28  18 c0 8d e2                                      add ip, sp, #0x18
006e2a2c  00 70 94 e5                                      ldr r7, [r4]
006e2a30  01 60 a0 e1                                      mov r6, r1
006e2a34  04 e0 2c e5                                      str lr, [ip, #-4]!
006e2a38  00 50 a0 e1                                      mov r5, r0
006e2a3c  03 80 a0 e1                                      mov r8, r3
006e2a40  0e 10 a0 e1                                      mov r1, lr
006e2a44  0c 30 a0 e1                                      mov r3, ip
006e2a48  06 00 a0 e1                                      mov r0, r6
006e2a4c  10 c0 8d e2                                      add ip, sp, #0x10
006e2a50  04 70 8d e5                                      str r7, [sp, #4]
006e2a54  00 c0 8d e5                                      str ip, [sp]
006e2a58  44 70 dd e5                                      ldrb r7, [sp, #0x44]
006e2a5c  38 a0 9d e5                                      ldr sl, [sp, #0x38]
006e2a60  40 90 9d e5                                      ldr sb, [sp, #0x40]
006e2a64  6a 23 fe eb                                      bl #0x66b814
006e2a68  07 00 10 e1                                      tst r0, r7
006e2a6c  0c 00 00 1a                                      bne #0x6e2aa4
006e2a70  00 a0 8d e5                                      str sl, [sp]
006e2a74  04 90 8d e5                                      str sb, [sp, #4]
006e2a78  05 00 a0 e1                                      mov r0, r5
006e2a7c  06 10 a0 e1                                      mov r1, r6
006e2a80  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2a84  08 30 a0 e1                                      mov r3, r8
006e2a88  00 c0 95 e5                                      ldr ip, [r5]
006e2a8c  0f e0 a0 e1                                      mov lr, pc
006e2a90  5c f0 9c e5                                      ldr pc, [ip, #0x5c]
006e2a94  14 30 9d e5                                      ldr r3, [sp, #0x14]
006e2a98  00 30 84 e5                                      str r3, [r4]
006e2a9c  18 d0 8d e2                                      add sp, sp, #0x18
006e2aa0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006e2aa4  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e2aa8  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2aac  04 80 8d e5                                      str r8, [sp, #4]
006e2ab0  00 30 8d e5                                      str r3, [sp]
006e2ab4  08 a0 8d e5                                      str sl, [sp, #8]
006e2ab8  0c 90 8d e5                                      str sb, [sp, #0xc]
006e2abc  05 00 a0 e1                                      mov r0, r5
006e2ac0  06 10 a0 e1                                      mov r1, r6
006e2ac4  00 c0 95 e5                                      ldr ip, [r5]
006e2ac8  01 30 82 e2                                      add r3, r2, #1
006e2acc  0f e0 a0 e1                                      mov lr, pc
006e2ad0  58 f0 9c e5                                      ldr pc, [ip, #0x58]
006e2ad4  ee ff ff ea                                      b #0x6e2a94

; FUNCTION 0x006e2ad8, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoERib
; demangled: glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, bool) const
; decoder-mode: arm
006e2ad8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006e2adc  1c d0 4d e2                                      sub sp, sp, #0x1c
006e2ae0  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
006e2ae4  00 e0 a0 e3                                      mov lr, #0
006e2ae8  18 c0 8d e2                                      add ip, sp, #0x18
006e2aec  00 70 94 e5                                      ldr r7, [r4]
006e2af0  01 60 a0 e1                                      mov r6, r1
006e2af4  04 e0 2c e5                                      str lr, [ip, #-4]!
006e2af8  00 50 a0 e1                                      mov r5, r0
006e2afc  03 80 a0 e1                                      mov r8, r3
006e2b00  0e 10 a0 e1                                      mov r1, lr
006e2b04  0c 30 a0 e1                                      mov r3, ip
006e2b08  06 00 a0 e1                                      mov r0, r6
006e2b0c  10 c0 8d e2                                      add ip, sp, #0x10
006e2b10  04 70 8d e5                                      str r7, [sp, #4]
006e2b14  00 c0 8d e5                                      str ip, [sp]
006e2b18  40 70 dd e5                                      ldrb r7, [sp, #0x40]
006e2b1c  38 a0 9d e5                                      ldr sl, [sp, #0x38]
006e2b20  3b 23 fe eb                                      bl #0x66b814
006e2b24  07 00 10 e1                                      tst r0, r7
006e2b28  0b 00 00 1a                                      bne #0x6e2b5c
006e2b2c  00 a0 8d e5                                      str sl, [sp]
006e2b30  05 00 a0 e1                                      mov r0, r5
006e2b34  06 10 a0 e1                                      mov r1, r6
006e2b38  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2b3c  08 30 a0 e1                                      mov r3, r8
006e2b40  00 c0 95 e5                                      ldr ip, [r5]
006e2b44  0f e0 a0 e1                                      mov lr, pc
006e2b48  48 f0 9c e5                                      ldr pc, [ip, #0x48]
006e2b4c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006e2b50  00 30 84 e5                                      str r3, [r4]
006e2b54  1c d0 8d e2                                      add sp, sp, #0x1c
006e2b58  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006e2b5c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e2b60  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2b64  04 80 8d e5                                      str r8, [sp, #4]
006e2b68  00 30 8d e5                                      str r3, [sp]
006e2b6c  08 a0 8d e5                                      str sl, [sp, #8]
006e2b70  05 00 a0 e1                                      mov r0, r5
006e2b74  06 10 a0 e1                                      mov r1, r6
006e2b78  00 c0 95 e5                                      ldr ip, [r5]
006e2b7c  01 30 82 e2                                      add r3, r2, #1
006e2b80  0f e0 a0 e1                                      mov lr, pc
006e2b84  40 f0 9c e5                                      ldr pc, [ip, #0x40]
006e2b88  ef ff ff ea                                      b #0x6e2b4c

; FUNCTION 0x006e2b8c, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiPvRifb
; demangled: glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&, int, void*, int&, float, bool) const
; decoder-mode: arm
006e2b8c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006e2b90  1c d0 4d e2                                      sub sp, sp, #0x1c
006e2b94  38 40 9d e5                                      ldr r4, [sp, #0x38]
006e2b98  00 e0 a0 e3                                      mov lr, #0
006e2b9c  18 c0 8d e2                                      add ip, sp, #0x18
006e2ba0  00 70 94 e5                                      ldr r7, [r4]
006e2ba4  01 60 a0 e1                                      mov r6, r1
006e2ba8  04 e0 2c e5                                      str lr, [ip, #-4]!
006e2bac  00 50 a0 e1                                      mov r5, r0
006e2bb0  03 80 a0 e1                                      mov r8, r3
006e2bb4  0e 10 a0 e1                                      mov r1, lr
006e2bb8  0c 30 a0 e1                                      mov r3, ip
006e2bbc  06 00 a0 e1                                      mov r0, r6
006e2bc0  10 c0 8d e2                                      add ip, sp, #0x10
006e2bc4  04 70 8d e5                                      str r7, [sp, #4]
006e2bc8  00 c0 8d e5                                      str ip, [sp]
006e2bcc  40 70 dd e5                                      ldrb r7, [sp, #0x40]
006e2bd0  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
006e2bd4  0e 23 fe eb                                      bl #0x66b814
006e2bd8  07 00 10 e1                                      tst r0, r7
006e2bdc  0b 00 00 1a                                      bne #0x6e2c10
006e2be0  00 a0 8d e5                                      str sl, [sp]
006e2be4  05 00 a0 e1                                      mov r0, r5
006e2be8  06 10 a0 e1                                      mov r1, r6
006e2bec  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2bf0  08 30 a0 e1                                      mov r3, r8
006e2bf4  00 c0 95 e5                                      ldr ip, [r5]
006e2bf8  0f e0 a0 e1                                      mov lr, pc
006e2bfc  3c f0 9c e5                                      ldr pc, [ip, #0x3c]
006e2c00  14 30 9d e5                                      ldr r3, [sp, #0x14]
006e2c04  00 30 84 e5                                      str r3, [r4]
006e2c08  1c d0 8d e2                                      add sp, sp, #0x1c
006e2c0c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006e2c10  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e2c14  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2c18  04 80 8d e5                                      str r8, [sp, #4]
006e2c1c  00 30 8d e5                                      str r3, [sp]
006e2c20  08 a0 8d e5                                      str sl, [sp, #8]
006e2c24  05 00 a0 e1                                      mov r0, r5
006e2c28  06 10 a0 e1                                      mov r1, r6
006e2c2c  00 c0 95 e5                                      ldr ip, [r5]
006e2c30  01 30 82 e2                                      add r3, r2, #1
006e2c34  0f e0 a0 e1                                      mov lr, pc
006e2c38  38 f0 9c e5                                      ldr pc, [ip, #0x38]
006e2c3c  ef ff ff ea                                      b #0x6e2c00

; FUNCTION 0x006e2c40, declared_size=168, range_size=168, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiPvRib
; demangled: glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&, int, void*, int&, bool) const
; decoder-mode: arm
006e2c40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e2c44  10 d0 4d e2                                      sub sp, sp, #0x10
006e2c48  28 40 9d e5                                      ldr r4, [sp, #0x28]
006e2c4c  00 e0 a0 e3                                      mov lr, #0
006e2c50  10 c0 8d e2                                      add ip, sp, #0x10
006e2c54  00 70 94 e5                                      ldr r7, [r4]
006e2c58  01 60 a0 e1                                      mov r6, r1
006e2c5c  04 e0 2c e5                                      str lr, [ip, #-4]!
006e2c60  00 50 a0 e1                                      mov r5, r0
006e2c64  03 80 a0 e1                                      mov r8, r3
006e2c68  0e 10 a0 e1                                      mov r1, lr
006e2c6c  0c 30 a0 e1                                      mov r3, ip
006e2c70  06 00 a0 e1                                      mov r0, r6
006e2c74  08 c0 8d e2                                      add ip, sp, #8
006e2c78  04 70 8d e5                                      str r7, [sp, #4]
006e2c7c  00 c0 8d e5                                      str ip, [sp]
006e2c80  2c 70 dd e5                                      ldrb r7, [sp, #0x2c]
006e2c84  e2 22 fe eb                                      bl #0x66b814
006e2c88  07 00 10 e1                                      tst r0, r7
006e2c8c  0a 00 00 1a                                      bne #0x6e2cbc
006e2c90  05 00 a0 e1                                      mov r0, r5
006e2c94  06 10 a0 e1                                      mov r1, r6
006e2c98  08 30 a0 e1                                      mov r3, r8
006e2c9c  00 c0 95 e5                                      ldr ip, [r5]
006e2ca0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e2ca4  0f e0 a0 e1                                      mov lr, pc
006e2ca8  28 f0 9c e5                                      ldr pc, [ip, #0x28]
006e2cac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006e2cb0  00 30 84 e5                                      str r3, [r4]
006e2cb4  10 d0 8d e2                                      add sp, sp, #0x10
006e2cb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e2cbc  08 30 9d e5                                      ldr r3, [sp, #8]
006e2cc0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e2cc4  04 80 8d e5                                      str r8, [sp, #4]
006e2cc8  00 30 8d e5                                      str r3, [sp]
006e2ccc  05 00 a0 e1                                      mov r0, r5
006e2cd0  06 10 a0 e1                                      mov r1, r6
006e2cd4  00 c0 95 e5                                      ldr ip, [r5]
006e2cd8  01 30 82 e2                                      add r3, r2, #1
006e2cdc  0f e0 a0 e1                                      mov lr, pc
006e2ce0  20 f0 9c e5                                      ldr pc, [ip, #0x20]
006e2ce4  f0 ff ff ea                                      b #0x6e2cac

; FUNCTION 0x006e2ce8, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiiPvPNS0_15animation_track15CApplicatorInfoERib
; demangled: glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&, int, int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, bool) const
; decoder-mode: arm
006e2ce8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e2cec  24 d0 4d e2                                      sub sp, sp, #0x24
006e2cf0  50 60 9d e5                                      ldr r6, [sp, #0x50]
006e2cf4  00 40 a0 e3                                      mov r4, #0
006e2cf8  20 c0 8d e2                                      add ip, sp, #0x20
006e2cfc  00 e0 96 e5                                      ldr lr, [r6]
006e2d00  01 50 a0 e1                                      mov r5, r1
006e2d04  04 40 2c e5                                      str r4, [ip, #-4]!
006e2d08  02 80 a0 e1                                      mov r8, r2
006e2d0c  04 10 a0 e1                                      mov r1, r4
006e2d10  03 20 a0 e1                                      mov r2, r3
006e2d14  00 70 a0 e1                                      mov r7, r0
006e2d18  0c 30 a0 e1                                      mov r3, ip
006e2d1c  05 00 a0 e1                                      mov r0, r5
006e2d20  18 c0 8d e2                                      add ip, sp, #0x18
006e2d24  00 50 8d e8                                      stm sp, {ip, lr}
006e2d28  54 90 dd e5                                      ldrb sb, [sp, #0x54]
006e2d2c  48 b0 9d e5                                      ldr fp, [sp, #0x48]
006e2d30  b7 22 fe eb                                      bl #0x66b814
006e2d34  20 30 8d e2                                      add r3, sp, #0x20
006e2d38  00 a0 a0 e1                                      mov sl, r0
006e2d3c  0c 40 23 e5                                      str r4, [r3, #-0xc]!
006e2d40  04 10 a0 e1                                      mov r1, r4
006e2d44  08 20 a0 e1                                      mov r2, r8
006e2d48  05 00 a0 e1                                      mov r0, r5
006e2d4c  e8 20 fe eb                                      bl #0x66b0f4
006e2d50  09 00 1a e1                                      tst sl, sb
006e2d54  0b 00 00 1a                                      bne #0x6e2d88
006e2d58  00 b0 8d e5                                      str fp, [sp]
006e2d5c  07 00 a0 e1                                      mov r0, r7
006e2d60  05 10 a0 e1                                      mov r1, r5
006e2d64  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2d68  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e2d6c  00 c0 97 e5                                      ldr ip, [r7]
006e2d70  0f e0 a0 e1                                      mov lr, pc
006e2d74  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006e2d78  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e2d7c  00 30 86 e5                                      str r3, [r6]
006e2d80  24 d0 8d e2                                      add sp, sp, #0x24
006e2d84  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006e2d88  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e2d8c  08 b0 8d e5                                      str fp, [sp, #8]
006e2d90  07 00 a0 e1                                      mov r0, r7
006e2d94  01 20 83 e2                                      add r2, r3, #1
006e2d98  00 20 8d e5                                      str r2, [sp]
006e2d9c  18 20 9d e5                                      ldr r2, [sp, #0x18]
006e2da0  05 10 a0 e1                                      mov r1, r5
006e2da4  04 20 8d e5                                      str r2, [sp, #4]
006e2da8  00 c0 97 e5                                      ldr ip, [r7]
006e2dac  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2db0  0f e0 a0 e1                                      mov lr, pc
006e2db4  44 f0 9c e5                                      ldr pc, [ip, #0x44]
006e2db8  ee ff ff ea                                      b #0x6e2d78

; FUNCTION 0x006e2dbc, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiiPvRib
; demangled: glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&, int, int, void*, int&, bool) const
; decoder-mode: arm
006e2dbc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e2dc0  24 d0 4d e2                                      sub sp, sp, #0x24
006e2dc4  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
006e2dc8  00 40 a0 e3                                      mov r4, #0
006e2dcc  20 c0 8d e2                                      add ip, sp, #0x20
006e2dd0  00 e0 96 e5                                      ldr lr, [r6]
006e2dd4  01 50 a0 e1                                      mov r5, r1
006e2dd8  04 40 2c e5                                      str r4, [ip, #-4]!
006e2ddc  02 80 a0 e1                                      mov r8, r2
006e2de0  04 10 a0 e1                                      mov r1, r4
006e2de4  03 20 a0 e1                                      mov r2, r3
006e2de8  00 70 a0 e1                                      mov r7, r0
006e2dec  0c 30 a0 e1                                      mov r3, ip
006e2df0  05 00 a0 e1                                      mov r0, r5
006e2df4  18 c0 8d e2                                      add ip, sp, #0x18
006e2df8  00 50 8d e8                                      stm sp, {ip, lr}
006e2dfc  50 90 dd e5                                      ldrb sb, [sp, #0x50]
006e2e00  48 b0 9d e5                                      ldr fp, [sp, #0x48]
006e2e04  82 22 fe eb                                      bl #0x66b814
006e2e08  20 30 8d e2                                      add r3, sp, #0x20
006e2e0c  00 a0 a0 e1                                      mov sl, r0
006e2e10  0c 40 23 e5                                      str r4, [r3, #-0xc]!
006e2e14  04 10 a0 e1                                      mov r1, r4
006e2e18  08 20 a0 e1                                      mov r2, r8
006e2e1c  05 00 a0 e1                                      mov r0, r5
006e2e20  b3 20 fe eb                                      bl #0x66b0f4
006e2e24  09 00 1a e1                                      tst sl, sb
006e2e28  0b 00 00 1a                                      bne #0x6e2e5c
006e2e2c  00 b0 8d e5                                      str fp, [sp]
006e2e30  07 00 a0 e1                                      mov r0, r7
006e2e34  05 10 a0 e1                                      mov r1, r5
006e2e38  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2e3c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e2e40  00 c0 97 e5                                      ldr ip, [r7]
006e2e44  0f e0 a0 e1                                      mov lr, pc
006e2e48  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
006e2e4c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e2e50  00 30 86 e5                                      str r3, [r6]
006e2e54  24 d0 8d e2                                      add sp, sp, #0x24
006e2e58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006e2e5c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e2e60  08 b0 8d e5                                      str fp, [sp, #8]
006e2e64  07 00 a0 e1                                      mov r0, r7
006e2e68  01 20 83 e2                                      add r2, r3, #1
006e2e6c  00 20 8d e5                                      str r2, [sp]
006e2e70  18 20 9d e5                                      ldr r2, [sp, #0x18]
006e2e74  05 10 a0 e1                                      mov r1, r5
006e2e78  04 20 8d e5                                      str r2, [sp, #4]
006e2e7c  00 c0 97 e5                                      ldr ip, [r7]
006e2e80  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2e84  0f e0 a0 e1                                      mov lr, pc
006e2e88  24 f0 9c e5                                      ldr pc, [ip, #0x24]
006e2e8c  ee ff ff ea                                      b #0x6e2e4c

; FUNCTION 0x006e2e90, declared_size=172, range_size=172, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoEfb
; demangled: glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*, float, bool) const
; decoder-mode: arm
006e2e90  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006e2e94  1c d0 4d e2                                      sub sp, sp, #0x1c
006e2e98  00 e0 a0 e3                                      mov lr, #0
006e2e9c  18 c0 8d e2                                      add ip, sp, #0x18
006e2ea0  04 e0 2c e5                                      str lr, [ip, #-4]!
006e2ea4  01 50 a0 e1                                      mov r5, r1
006e2ea8  00 40 a0 e1                                      mov r4, r0
006e2eac  03 60 a0 e1                                      mov r6, r3
006e2eb0  0e 10 a0 e1                                      mov r1, lr
006e2eb4  0c 30 a0 e1                                      mov r3, ip
006e2eb8  05 00 a0 e1                                      mov r0, r5
006e2ebc  10 c0 8d e2                                      add ip, sp, #0x10
006e2ec0  40 70 dd e5                                      ldrb r7, [sp, #0x40]
006e2ec4  00 c0 8d e5                                      str ip, [sp]
006e2ec8  38 80 9d e5                                      ldr r8, [sp, #0x38]
006e2ecc  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
006e2ed0  17 20 fe eb                                      bl #0x66af34
006e2ed4  07 00 10 e1                                      tst r0, r7
006e2ed8  0a 00 00 1a                                      bne #0x6e2f08
006e2edc  00 80 8d e5                                      str r8, [sp]
006e2ee0  04 a0 8d e5                                      str sl, [sp, #4]
006e2ee4  04 00 a0 e1                                      mov r0, r4
006e2ee8  05 10 a0 e1                                      mov r1, r5
006e2eec  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2ef0  06 30 a0 e1                                      mov r3, r6
006e2ef4  00 c0 94 e5                                      ldr ip, [r4]
006e2ef8  0f e0 a0 e1                                      mov lr, pc
006e2efc  5c f0 9c e5                                      ldr pc, [ip, #0x5c]
006e2f00  1c d0 8d e2                                      add sp, sp, #0x1c
006e2f04  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006e2f08  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e2f0c  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2f10  04 60 8d e5                                      str r6, [sp, #4]
006e2f14  00 30 8d e5                                      str r3, [sp]
006e2f18  08 80 8d e5                                      str r8, [sp, #8]
006e2f1c  0c a0 8d e5                                      str sl, [sp, #0xc]
006e2f20  04 00 a0 e1                                      mov r0, r4
006e2f24  05 10 a0 e1                                      mov r1, r5
006e2f28  00 c0 94 e5                                      ldr ip, [r4]
006e2f2c  01 30 82 e2                                      add r3, r2, #1
006e2f30  0f e0 a0 e1                                      mov lr, pc
006e2f34  58 f0 9c e5                                      ldr pc, [ip, #0x58]
006e2f38  f0 ff ff ea                                      b #0x6e2f00

; FUNCTION 0x006e2f3c, declared_size=160, range_size=160, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoEb
; demangled: glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*, bool) const
; decoder-mode: arm
006e2f3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e2f40  18 d0 4d e2                                      sub sp, sp, #0x18
006e2f44  00 e0 a0 e3                                      mov lr, #0
006e2f48  18 c0 8d e2                                      add ip, sp, #0x18
006e2f4c  04 e0 2c e5                                      str lr, [ip, #-4]!
006e2f50  01 50 a0 e1                                      mov r5, r1
006e2f54  00 40 a0 e1                                      mov r4, r0
006e2f58  03 60 a0 e1                                      mov r6, r3
006e2f5c  0e 10 a0 e1                                      mov r1, lr
006e2f60  0c 30 a0 e1                                      mov r3, ip
006e2f64  05 00 a0 e1                                      mov r0, r5
006e2f68  10 c0 8d e2                                      add ip, sp, #0x10
006e2f6c  34 70 dd e5                                      ldrb r7, [sp, #0x34]
006e2f70  00 c0 8d e5                                      str ip, [sp]
006e2f74  30 80 9d e5                                      ldr r8, [sp, #0x30]
006e2f78  ed 1f fe eb                                      bl #0x66af34
006e2f7c  07 00 10 e1                                      tst r0, r7
006e2f80  09 00 00 1a                                      bne #0x6e2fac
006e2f84  00 80 8d e5                                      str r8, [sp]
006e2f88  04 00 a0 e1                                      mov r0, r4
006e2f8c  05 10 a0 e1                                      mov r1, r5
006e2f90  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2f94  06 30 a0 e1                                      mov r3, r6
006e2f98  00 c0 94 e5                                      ldr ip, [r4]
006e2f9c  0f e0 a0 e1                                      mov lr, pc
006e2fa0  48 f0 9c e5                                      ldr pc, [ip, #0x48]
006e2fa4  18 d0 8d e2                                      add sp, sp, #0x18
006e2fa8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e2fac  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e2fb0  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e2fb4  04 60 8d e5                                      str r6, [sp, #4]
006e2fb8  00 30 8d e5                                      str r3, [sp]
006e2fbc  08 80 8d e5                                      str r8, [sp, #8]
006e2fc0  04 00 a0 e1                                      mov r0, r4
006e2fc4  05 10 a0 e1                                      mov r1, r5
006e2fc8  00 c0 94 e5                                      ldr ip, [r4]
006e2fcc  01 30 82 e2                                      add r3, r2, #1
006e2fd0  0f e0 a0 e1                                      mov lr, pc
006e2fd4  40 f0 9c e5                                      ldr pc, [ip, #0x40]
006e2fd8  f1 ff ff ea                                      b #0x6e2fa4

; FUNCTION 0x006e2fdc, declared_size=160, range_size=160, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiPvfb
; demangled: glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&, int, void*, float, bool) const
; decoder-mode: arm
006e2fdc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e2fe0  18 d0 4d e2                                      sub sp, sp, #0x18
006e2fe4  00 e0 a0 e3                                      mov lr, #0
006e2fe8  18 c0 8d e2                                      add ip, sp, #0x18
006e2fec  04 e0 2c e5                                      str lr, [ip, #-4]!
006e2ff0  01 50 a0 e1                                      mov r5, r1
006e2ff4  00 40 a0 e1                                      mov r4, r0
006e2ff8  03 60 a0 e1                                      mov r6, r3
006e2ffc  0e 10 a0 e1                                      mov r1, lr
006e3000  0c 30 a0 e1                                      mov r3, ip
006e3004  05 00 a0 e1                                      mov r0, r5
006e3008  10 c0 8d e2                                      add ip, sp, #0x10
006e300c  34 70 dd e5                                      ldrb r7, [sp, #0x34]
006e3010  00 c0 8d e5                                      str ip, [sp]
006e3014  30 80 9d e5                                      ldr r8, [sp, #0x30]
006e3018  c5 1f fe eb                                      bl #0x66af34
006e301c  07 00 10 e1                                      tst r0, r7
006e3020  09 00 00 1a                                      bne #0x6e304c
006e3024  00 80 8d e5                                      str r8, [sp]
006e3028  04 00 a0 e1                                      mov r0, r4
006e302c  05 10 a0 e1                                      mov r1, r5
006e3030  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e3034  06 30 a0 e1                                      mov r3, r6
006e3038  00 c0 94 e5                                      ldr ip, [r4]
006e303c  0f e0 a0 e1                                      mov lr, pc
006e3040  3c f0 9c e5                                      ldr pc, [ip, #0x3c]
006e3044  18 d0 8d e2                                      add sp, sp, #0x18
006e3048  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e304c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e3050  14 20 9d e5                                      ldr r2, [sp, #0x14]
006e3054  04 60 8d e5                                      str r6, [sp, #4]
006e3058  00 30 8d e5                                      str r3, [sp]
006e305c  08 80 8d e5                                      str r8, [sp, #8]
006e3060  04 00 a0 e1                                      mov r0, r4
006e3064  05 10 a0 e1                                      mov r1, r5
006e3068  00 c0 94 e5                                      ldr ip, [r4]
006e306c  01 30 82 e2                                      add r3, r2, #1
006e3070  0f e0 a0 e1                                      mov lr, pc
006e3074  38 f0 9c e5                                      ldr pc, [ip, #0x38]
006e3078  f1 ff ff ea                                      b #0x6e3044

; FUNCTION 0x006e307c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::CAnimationTrackEx
; alias: _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiPvb
; demangled: glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&, int, void*, bool) const
; decoder-mode: arm
006e307c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006e3080  14 d0 4d e2                                      sub sp, sp, #0x14
006e3084  00 e0 a0 e3                                      mov lr, #0
006e3088  10 c0 8d e2                                      add ip, sp, #0x10
006e308c  04 e0 2c e5                                      str lr, [ip, #-4]!
006e3090  01 50 a0 e1                                      mov r5, r1
006e3094  00 40 a0 e1                                      mov r4, r0
006e3098  03 60 a0 e1                                      mov r6, r3
006e309c  0e 10 a0 e1                                      mov r1, lr
006e30a0  0c 30 a0 e1                                      mov r3, ip
006e30a4  05 00 a0 e1                                      mov r0, r5
006e30a8  08 c0 8d e2                                      add ip, sp, #8
006e30ac  28 70 dd e5                                      ldrb r7, [sp, #0x28]
006e30b0  00 c0 8d e5                                      str ip, [sp]
006e30b4  9e 1f fe eb                                      bl #0x66af34
006e30b8  07 00 10 e1                                      tst r0, r7
006e30bc  08 00 00 1a                                      bne #0x6e30e4
006e30c0  04 00 a0 e1                                      mov r0, r4
006e30c4  05 10 a0 e1                                      mov r1, r5
006e30c8  06 30 a0 e1                                      mov r3, r6
006e30cc  00 c0 94 e5                                      ldr ip, [r4]
006e30d0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e30d4  0f e0 a0 e1                                      mov lr, pc
006e30d8  28 f0 9c e5                                      ldr pc, [ip, #0x28]
006e30dc  14 d0 8d e2                                      add sp, sp, #0x14
006e30e0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006e30e4  08 30 9d e5                                      ldr r3, [sp, #8]
006e30e8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e30ec  04 60 8d e5                                      str r6, [sp, #4]
006e30f0  00 30 8d e5                                      str r3, [sp]
006e30f4  04 00 a0 e1                                      mov r0, r4
006e30f8  05 10 a0 e1                                      mov r1, r5
006e30fc  00 c0 94 e5                                      ldr ip, [r4]
006e3100  01 30 82 e2                                      add r3, r2, #1
006e3104  0f e0 a0 e1                                      mov lr, pc
006e3108  20 f0 9c e5                                      ldr pc, [ip, #0x20]
006e310c  f2 ff ff ea                                      b #0x6e30dc
