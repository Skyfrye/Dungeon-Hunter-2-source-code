; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00613ab4, declared_size=188, range_size=188, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>, char>
; alias: _ZN6glitch7collada15animation_track22CInterpreterQuaternionINS1_25CSceneNodeQuaternionMixinIcEEcE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>, char>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00613ab4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00613ab8  30 d0 4d e2                                      sub sp, sp, #0x30
00613abc  20 40 8d e2                                      add r4, sp, #0x20
00613ac0  00 c0 a0 e3                                      mov ip, #0
00613ac4  fe e5 a0 e3                                      mov lr, #0x3f800000
00613ac8  01 80 a0 e1                                      mov r8, r1
00613acc  00 60 a0 e1                                      mov r6, r0
00613ad0  02 10 a0 e1                                      mov r1, r2
00613ad4  10 50 8d e2                                      add r5, sp, #0x10
00613ad8  04 20 a0 e1                                      mov r2, r4
00613adc  03 70 a0 e1                                      mov r7, r3
00613ae0  18 c0 8d e5                                      str ip, [sp, #0x18]
00613ae4  1c e0 8d e5                                      str lr, [sp, #0x1c]
00613ae8  20 c0 8d e5                                      str ip, [sp, #0x20]
00613aec  24 c0 8d e5                                      str ip, [sp, #0x24]
00613af0  28 c0 8d e5                                      str ip, [sp, #0x28]
00613af4  2c e0 8d e5                                      str lr, [sp, #0x2c]
00613af8  10 c0 8d e5                                      str ip, [sp, #0x10]
00613afc  14 c0 8d e5                                      str ip, [sp, #0x14]
00613b00  c2 ff ff eb                                      bl #0x613a10
00613b04  06 00 a0 e1                                      mov r0, r6
00613b08  08 10 a0 e1                                      mov r1, r8
00613b0c  05 20 a0 e1                                      mov r2, r5
00613b10  be ff ff eb                                      bl #0x613a10
00613b14  10 e0 9d e5                                      ldr lr, [sp, #0x10]
00613b18  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00613b1c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00613b20  02 e1 8e e2                                      add lr, lr, #0x80000000
00613b24  02 c1 8c e2                                      add ip, ip, #0x80000000
00613b28  02 31 83 e2                                      add r3, r3, #0x80000000
00613b2c  05 10 a0 e1                                      mov r1, r5
00613b30  04 20 a0 e1                                      mov r2, r4
00613b34  0d 00 a0 e1                                      mov r0, sp
00613b38  18 30 8d e5                                      str r3, [sp, #0x18]
00613b3c  10 e0 8d e5                                      str lr, [sp, #0x10]
00613b40  14 c0 8d e5                                      str ip, [sp, #0x14]
00613b44  7a e8 ff eb                                      bl #0x60dd34
00613b48  04 10 9d e5                                      ldr r1, [sp, #4]
00613b4c  08 30 9d e5                                      ldr r3, [sp, #8]
00613b50  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00613b54  00 00 9d e5                                      ldr r0, [sp]
00613b58  04 10 87 e5                                      str r1, [r7, #4]
00613b5c  0c 20 87 e5                                      str r2, [r7, #0xc]
00613b60  00 00 87 e5                                      str r0, [r7]
00613b64  08 30 87 e5                                      str r3, [r7, #8]
00613b68  30 d0 8d e2                                      add sp, sp, #0x30
00613b6c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00613b84, declared_size=288, range_size=288, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>, char>
; alias: _ZN6glitch7collada15animation_track22CInterpreterQuaternionINS1_25CSceneNodeQuaternionMixinIcEEcE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>, char>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00613b84  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00613b88  6c d0 4d e2                                      sub sp, sp, #0x6c
00613b8c  58 50 8d e2                                      add r5, sp, #0x58
00613b90  00 c0 a0 e3                                      mov ip, #0
00613b94  fe e5 a0 e3                                      mov lr, #0x3f800000
00613b98  03 60 a0 e1                                      mov r6, r3
00613b9c  00 80 a0 e1                                      mov r8, r0
00613ba0  48 70 8d e2                                      add r7, sp, #0x48
00613ba4  01 a0 a0 e1                                      mov sl, r1
00613ba8  02 10 a0 e1                                      mov r1, r2
00613bac  05 20 a0 e1                                      mov r2, r5
00613bb0  34 e0 8d e5                                      str lr, [sp, #0x34]
00613bb4  64 e0 8d e5                                      str lr, [sp, #0x64]
00613bb8  54 e0 8d e5                                      str lr, [sp, #0x54]
00613bbc  44 e0 8d e5                                      str lr, [sp, #0x44]
00613bc0  8c 40 9d e5                                      ldr r4, [sp, #0x8c]
00613bc4  30 c0 8d e5                                      str ip, [sp, #0x30]
00613bc8  58 c0 8d e5                                      str ip, [sp, #0x58]
00613bcc  5c c0 8d e5                                      str ip, [sp, #0x5c]
00613bd0  60 c0 8d e5                                      str ip, [sp, #0x60]
00613bd4  48 c0 8d e5                                      str ip, [sp, #0x48]
00613bd8  4c c0 8d e5                                      str ip, [sp, #0x4c]
00613bdc  50 c0 8d e5                                      str ip, [sp, #0x50]
00613be0  38 c0 8d e5                                      str ip, [sp, #0x38]
00613be4  3c c0 8d e5                                      str ip, [sp, #0x3c]
00613be8  40 c0 8d e5                                      str ip, [sp, #0x40]
00613bec  28 c0 8d e5                                      str ip, [sp, #0x28]
00613bf0  2c c0 8d e5                                      str ip, [sp, #0x2c]
00613bf4  85 ff ff eb                                      bl #0x613a10
00613bf8  06 10 a0 e1                                      mov r1, r6
00613bfc  07 20 a0 e1                                      mov r2, r7
00613c00  08 00 a0 e1                                      mov r0, r8
00613c04  28 60 8d e2                                      add r6, sp, #0x28
00613c08  80 ff ff eb                                      bl #0x613a10
00613c0c  08 00 a0 e1                                      mov r0, r8
00613c10  0a 10 a0 e1                                      mov r1, sl
00613c14  06 20 a0 e1                                      mov r2, r6
00613c18  7c ff ff eb                                      bl #0x613a10
00613c1c  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
00613c20  04 c0 8d e2                                      add ip, sp, #4
00613c24  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00613c28  88 c0 9d e5                                      ldr ip, [sp, #0x88]
00613c2c  0e 00 95 e8                                      ldm r5, {r1, r2, r3}
00613c30  38 70 8d e2                                      add r7, sp, #0x38
00613c34  14 c0 8d e5                                      str ip, [sp, #0x14]
00613c38  64 c0 9d e5                                      ldr ip, [sp, #0x64]
00613c3c  07 00 a0 e1                                      mov r0, r7
00613c40  00 c0 8d e5                                      str ip, [sp]
00613c44  2d fc ff eb                                      bl #0x612d00
00613c48  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00613c4c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00613c50  30 30 9d e5                                      ldr r3, [sp, #0x30]
00613c54  02 e1 8e e2                                      add lr, lr, #0x80000000
00613c58  02 c1 8c e2                                      add ip, ip, #0x80000000
00613c5c  02 31 83 e2                                      add r3, r3, #0x80000000
00613c60  06 10 a0 e1                                      mov r1, r6
00613c64  07 20 a0 e1                                      mov r2, r7
00613c68  18 00 8d e2                                      add r0, sp, #0x18
00613c6c  30 30 8d e5                                      str r3, [sp, #0x30]
00613c70  28 e0 8d e5                                      str lr, [sp, #0x28]
00613c74  2c c0 8d e5                                      str ip, [sp, #0x2c]
00613c78  2d e8 ff eb                                      bl #0x60dd34
00613c7c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00613c80  20 30 9d e5                                      ldr r3, [sp, #0x20]
00613c84  24 20 9d e5                                      ldr r2, [sp, #0x24]
00613c88  18 00 9d e5                                      ldr r0, [sp, #0x18]
00613c8c  04 10 84 e5                                      str r1, [r4, #4]
00613c90  0c 20 84 e5                                      str r2, [r4, #0xc]
00613c94  00 00 84 e5                                      str r0, [r4]
00613c98  08 30 84 e5                                      str r3, [r4, #8]
00613c9c  6c d0 8d e2                                      add sp, sp, #0x6c
00613ca0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
