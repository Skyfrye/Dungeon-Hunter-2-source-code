; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061cfd8, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float>
; alias: _ZN6glitch7collada15animation_track22CInterpreterQuaternionINS1_25CSceneNodeQuaternionMixinIfEEfE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061cfd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061cfdc  00 c0 a0 e3                                      mov ip, #0
0061cfe0  30 d0 4d e2                                      sub sp, sp, #0x30
0061cfe4  fe e5 a0 e3                                      mov lr, #0x3f800000
0061cfe8  01 40 a0 e1                                      mov r4, r1
0061cfec  00 10 a0 e3                                      mov r1, #0
0061cff0  03 50 a0 e1                                      mov r5, r3
0061cff4  02 70 a0 e1                                      mov r7, r2
0061cff8  1c e0 8d e5                                      str lr, [sp, #0x1c]
0061cffc  2c e0 8d e5                                      str lr, [sp, #0x2c]
0061d000  18 c0 8d e5                                      str ip, [sp, #0x18]
0061d004  20 c0 8d e5                                      str ip, [sp, #0x20]
0061d008  24 c0 8d e5                                      str ip, [sp, #0x24]
0061d00c  28 c0 8d e5                                      str ip, [sp, #0x28]
0061d010  10 c0 8d e5                                      str ip, [sp, #0x10]
0061d014  14 c0 8d e5                                      str ip, [sp, #0x14]
0061d018  00 80 a0 e1                                      mov r8, r0
0061d01c  80 33 01 eb                                      bl #0x669e24
0061d020  04 30 90 e5                                      ldr r3, [r0, #4]
0061d024  30 60 8d e2                                      add r6, sp, #0x30
0061d028  08 00 a0 e1                                      mov r0, r8
0061d02c  07 12 93 e7                                      ldr r1, [r3, r7, lsl #4]
0061d030  07 72 83 e0                                      add r7, r3, r7, lsl #4
0061d034  04 20 87 e2                                      add r2, r7, #4
0061d038  10 10 26 e5                                      str r1, [r6, #-0x10]!
0061d03c  04 c0 97 e5                                      ldr ip, [r7, #4]
0061d040  04 30 86 e2                                      add r3, r6, #4
0061d044  00 10 a0 e3                                      mov r1, #0
0061d048  24 c0 8d e5                                      str ip, [sp, #0x24]
0061d04c  04 c0 92 e5                                      ldr ip, [r2, #4]
0061d050  04 c0 83 e5                                      str ip, [r3, #4]
0061d054  08 20 92 e5                                      ldr r2, [r2, #8]
0061d058  08 20 83 e5                                      str r2, [r3, #8]
0061d05c  70 33 01 eb                                      bl #0x669e24
0061d060  04 30 90 e5                                      ldr r3, [r0, #4]
0061d064  30 10 8d e2                                      add r1, sp, #0x30
0061d068  06 20 a0 e1                                      mov r2, r6
0061d06c  04 02 93 e7                                      ldr r0, [r3, r4, lsl #4]
0061d070  04 42 83 e0                                      add r4, r3, r4, lsl #4
0061d074  04 c0 84 e2                                      add ip, r4, #4
0061d078  20 00 21 e5                                      str r0, [r1, #-0x20]!
0061d07c  04 00 94 e5                                      ldr r0, [r4, #4]
0061d080  04 30 81 e2                                      add r3, r1, #4
0061d084  14 00 8d e5                                      str r0, [sp, #0x14]
0061d088  04 e0 9c e5                                      ldr lr, [ip, #4]
0061d08c  0d 00 a0 e1                                      mov r0, sp
0061d090  04 e0 83 e5                                      str lr, [r3, #4]
0061d094  08 c0 9c e5                                      ldr ip, [ip, #8]
0061d098  08 c0 83 e5                                      str ip, [r3, #8]
0061d09c  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0061d0a0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0061d0a4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0061d0a8  02 e1 8e e2                                      add lr, lr, #0x80000000
0061d0ac  02 c1 8c e2                                      add ip, ip, #0x80000000
0061d0b0  02 31 83 e2                                      add r3, r3, #0x80000000
0061d0b4  18 30 8d e5                                      str r3, [sp, #0x18]
0061d0b8  10 e0 8d e5                                      str lr, [sp, #0x10]
0061d0bc  14 c0 8d e5                                      str ip, [sp, #0x14]
0061d0c0  1b c3 ff eb                                      bl #0x60dd34
0061d0c4  04 10 9d e5                                      ldr r1, [sp, #4]
0061d0c8  08 30 9d e5                                      ldr r3, [sp, #8]
0061d0cc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0061d0d0  00 00 9d e5                                      ldr r0, [sp]
0061d0d4  04 10 85 e5                                      str r1, [r5, #4]
0061d0d8  0c 20 85 e5                                      str r2, [r5, #0xc]
0061d0dc  00 00 85 e5                                      str r0, [r5]
0061d0e0  08 30 85 e5                                      str r3, [r5, #8]
0061d0e4  30 d0 8d e2                                      add sp, sp, #0x30
0061d0e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061d100, declared_size=424, range_size=424, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float>
; alias: _ZN6glitch7collada15animation_track22CInterpreterQuaternionINS1_25CSceneNodeQuaternionMixinIfEEfE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061d100  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061d104  00 c0 a0 e3                                      mov ip, #0
0061d108  6c d0 4d e2                                      sub sp, sp, #0x6c
0061d10c  fe e5 a0 e3                                      mov lr, #0x3f800000
0061d110  01 70 a0 e1                                      mov r7, r1
0061d114  00 10 a0 e3                                      mov r1, #0
0061d118  34 e0 8d e5                                      str lr, [sp, #0x34]
0061d11c  64 e0 8d e5                                      str lr, [sp, #0x64]
0061d120  54 e0 8d e5                                      str lr, [sp, #0x54]
0061d124  44 e0 8d e5                                      str lr, [sp, #0x44]
0061d128  94 50 9d e5                                      ldr r5, [sp, #0x94]
0061d12c  02 60 a0 e1                                      mov r6, r2
0061d130  03 90 a0 e1                                      mov sb, r3
0061d134  00 b0 a0 e1                                      mov fp, r0
0061d138  30 c0 8d e5                                      str ip, [sp, #0x30]
0061d13c  58 c0 8d e5                                      str ip, [sp, #0x58]
0061d140  5c c0 8d e5                                      str ip, [sp, #0x5c]
0061d144  60 c0 8d e5                                      str ip, [sp, #0x60]
0061d148  48 c0 8d e5                                      str ip, [sp, #0x48]
0061d14c  4c c0 8d e5                                      str ip, [sp, #0x4c]
0061d150  50 c0 8d e5                                      str ip, [sp, #0x50]
0061d154  38 c0 8d e5                                      str ip, [sp, #0x38]
0061d158  3c c0 8d e5                                      str ip, [sp, #0x3c]
0061d15c  40 c0 8d e5                                      str ip, [sp, #0x40]
0061d160  28 c0 8d e5                                      str ip, [sp, #0x28]
0061d164  2c c0 8d e5                                      str ip, [sp, #0x2c]
0061d168  2d 33 01 eb                                      bl #0x669e24
0061d16c  04 30 90 e5                                      ldr r3, [r0, #4]
0061d170  68 40 8d e2                                      add r4, sp, #0x68
0061d174  00 10 a0 e3                                      mov r1, #0
0061d178  06 02 93 e7                                      ldr r0, [r3, r6, lsl #4]
0061d17c  06 62 83 e0                                      add r6, r3, r6, lsl #4
0061d180  04 20 86 e2                                      add r2, r6, #4
0061d184  10 00 24 e5                                      str r0, [r4, #-0x10]!
0061d188  04 c0 96 e5                                      ldr ip, [r6, #4]
0061d18c  04 30 84 e2                                      add r3, r4, #4
0061d190  0b 00 a0 e1                                      mov r0, fp
0061d194  5c c0 8d e5                                      str ip, [sp, #0x5c]
0061d198  04 c0 92 e5                                      ldr ip, [r2, #4]
0061d19c  68 a0 8d e2                                      add sl, sp, #0x68
0061d1a0  0a 60 a0 e1                                      mov r6, sl
0061d1a4  04 c0 83 e5                                      str ip, [r3, #4]
0061d1a8  08 20 92 e5                                      ldr r2, [r2, #8]
0061d1ac  38 80 8d e2                                      add r8, sp, #0x38
0061d1b0  08 20 83 e5                                      str r2, [r3, #8]
0061d1b4  1a 33 01 eb                                      bl #0x669e24
0061d1b8  04 20 90 e5                                      ldr r2, [r0, #4]
0061d1bc  00 10 a0 e3                                      mov r1, #0
0061d1c0  0b 00 a0 e1                                      mov r0, fp
0061d1c4  09 32 92 e7                                      ldr r3, [r2, sb, lsl #4]
0061d1c8  09 92 82 e0                                      add sb, r2, sb, lsl #4
0061d1cc  04 20 89 e2                                      add r2, sb, #4
0061d1d0  20 30 2a e5                                      str r3, [sl, #-0x20]!
0061d1d4  04 c0 99 e5                                      ldr ip, [sb, #4]
0061d1d8  04 30 8a e2                                      add r3, sl, #4
0061d1dc  4c c0 8d e5                                      str ip, [sp, #0x4c]
0061d1e0  04 c0 92 e5                                      ldr ip, [r2, #4]
0061d1e4  04 c0 83 e5                                      str ip, [r3, #4]
0061d1e8  08 20 92 e5                                      ldr r2, [r2, #8]
0061d1ec  08 20 83 e5                                      str r2, [r3, #8]
0061d1f0  0b 33 01 eb                                      bl #0x669e24
0061d1f4  04 30 90 e5                                      ldr r3, [r0, #4]
0061d1f8  04 c0 8d e2                                      add ip, sp, #4
0061d1fc  07 12 93 e7                                      ldr r1, [r3, r7, lsl #4]
0061d200  07 72 83 e0                                      add r7, r3, r7, lsl #4
0061d204  04 20 87 e2                                      add r2, r7, #4
0061d208  40 10 26 e5                                      str r1, [r6, #-0x40]!
0061d20c  04 10 97 e5                                      ldr r1, [r7, #4]
0061d210  04 30 86 e2                                      add r3, r6, #4
0061d214  2c 10 8d e5                                      str r1, [sp, #0x2c]
0061d218  04 10 92 e5                                      ldr r1, [r2, #4]
0061d21c  04 10 83 e5                                      str r1, [r3, #4]
0061d220  08 20 92 e5                                      ldr r2, [r2, #8]
0061d224  08 20 83 e5                                      str r2, [r3, #8]
0061d228  0f 00 9a e8                                      ldm sl, {r0, r1, r2, r3}
0061d22c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0061d230  90 c0 9d e5                                      ldr ip, [sp, #0x90]
0061d234  0e 00 94 e8                                      ldm r4, {r1, r2, r3}
0061d238  08 00 a0 e1                                      mov r0, r8
0061d23c  14 c0 8d e5                                      str ip, [sp, #0x14]
0061d240  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0061d244  00 c0 8d e5                                      str ip, [sp]
0061d248  ac d6 ff eb                                      bl #0x612d00
0061d24c  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0061d250  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0061d254  30 30 9d e5                                      ldr r3, [sp, #0x30]
0061d258  02 e1 8e e2                                      add lr, lr, #0x80000000
0061d25c  02 c1 8c e2                                      add ip, ip, #0x80000000
0061d260  02 31 83 e2                                      add r3, r3, #0x80000000
0061d264  06 10 a0 e1                                      mov r1, r6
0061d268  08 20 a0 e1                                      mov r2, r8
0061d26c  18 00 8d e2                                      add r0, sp, #0x18
0061d270  30 30 8d e5                                      str r3, [sp, #0x30]
0061d274  28 e0 8d e5                                      str lr, [sp, #0x28]
0061d278  2c c0 8d e5                                      str ip, [sp, #0x2c]
0061d27c  ac c2 ff eb                                      bl #0x60dd34
0061d280  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0061d284  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061d288  24 20 9d e5                                      ldr r2, [sp, #0x24]
0061d28c  18 00 9d e5                                      ldr r0, [sp, #0x18]
0061d290  04 10 85 e5                                      str r1, [r5, #4]
0061d294  0c 20 85 e5                                      str r2, [r5, #0xc]
0061d298  00 00 85 e5                                      str r0, [r5]
0061d29c  08 30 85 e5                                      str r3, [r5, #8]
0061d2a0  6c d0 8d e2                                      add sp, sp, #0x6c
0061d2a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
