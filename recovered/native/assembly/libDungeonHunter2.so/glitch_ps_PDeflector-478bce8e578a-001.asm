; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00630abc, declared_size=320, range_size=320, mode=arm
; class-group: glitch::ps::PDeflector
; alias: _ZN6glitch2ps10PDeflector22GetFrictionCoefficientEffff
; demangled: glitch::ps::PDeflector::GetFrictionCoefficient(float, float, float, float)
; decoder-mode: arm
00630abc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00630ac0  01 00 a0 e1                                      mov r0, r1
00630ac4  01 40 a0 e1                                      mov r4, r1
00630ac8  00 10 a0 e3                                      mov r1, #0
00630acc  02 50 a0 e1                                      mov r5, r2
00630ad0  03 60 a0 e1                                      mov r6, r3
00630ad4  2c 75 f3 eb                                      bl #0x30df8c
00630ad8  00 00 50 e3                                      cmp r0, #0
00630adc  18 70 9d e5                                      ldr r7, [sp, #0x18]
00630ae0  36 00 00 1a                                      bne #0x630bc0
00630ae4  04 00 a0 e1                                      mov r0, r4
00630ae8  fe 15 a0 e3                                      mov r1, #0x3f800000
00630aec  26 75 f3 eb                                      bl #0x30df8c
00630af0  00 00 50 e3                                      cmp r0, #0
00630af4  2f 00 00 1a                                      bne #0x630bb8
00630af8  29 1c 05 e3                                      movw r1, #0x5c29
00630afc  8f 1d 43 e3                                      movt r1, #0x3d8f
00630b00  06 00 a0 e1                                      mov r0, r6
00630b04  98 78 f3 eb                                      bl #0x30ed6c
00630b08  05 10 a0 e1                                      mov r1, r5
00630b0c  a6 77 f3 eb                                      bl #0x30e9ac
00630b10  00 00 50 e3                                      cmp r0, #0
00630b14  34 00 00 1a                                      bne #0x630bec
00630b18  29 1c 05 e3                                      movw r1, #0x5c29
00630b1c  0f 1d 43 e3                                      movt r1, #0x3d0f
00630b20  06 00 a0 e1                                      mov r0, r6
00630b24  90 78 f3 eb                                      bl #0x30ed6c
00630b28  05 10 a0 e1                                      mov r1, r5
00630b2c  f1 75 f3 eb                                      bl #0x30e2f8
00630b30  00 00 50 e3                                      cmp r0, #0
00630b34  23 00 00 1a                                      bne #0x630bc8
00630b38  06 10 a0 e1                                      mov r1, r6
00630b3c  05 00 a0 e1                                      mov r0, r5
00630b40  53 78 f3 eb                                      bl #0x30ec94
00630b44  29 1c 05 e3                                      movw r1, #0x5c29
00630b48  0f 1d 43 e3                                      movt r1, #0x3d0f
00630b4c  50 78 f3 eb                                      bl #0x30ec94
00630b50  fe 15 a0 e3                                      mov r1, #0x3f800000
00630b54  14 76 f3 eb                                      bl #0x30e3ac
00630b58  04 10 a0 e1                                      mov r1, r4
00630b5c  00 50 a0 e1                                      mov r5, r0
00630b60  fe 05 a0 e3                                      mov r0, #0x3f800000
00630b64  10 76 f3 eb                                      bl #0x30e3ac
00630b68  00 40 a0 e1                                      mov r4, r0
00630b6c  d0 74 f3 eb                                      bl #0x30deb4
00630b70  00 10 a0 e1                                      mov r1, r0
00630b74  07 00 a0 e1                                      mov r0, r7
00630b78  7b 78 f3 eb                                      bl #0x30ed6c
00630b7c  38 78 f3 eb                                      bl #0x30ec64
00630b80  05 10 a0 e1                                      mov r1, r5
00630b84  00 60 a0 e1                                      mov r6, r0
00630b88  04 00 a0 e1                                      mov r0, r4
00630b8c  76 78 f3 eb                                      bl #0x30ed6c
00630b90  05 10 a0 e1                                      mov r1, r5
00630b94  00 40 a0 e1                                      mov r4, r0
00630b98  fe 05 a0 e3                                      mov r0, #0x3f800000
00630b9c  02 76 f3 eb                                      bl #0x30e3ac
00630ba0  06 10 a0 e1                                      mov r1, r6
00630ba4  70 78 f3 eb                                      bl #0x30ed6c
00630ba8  00 10 a0 e1                                      mov r1, r0
00630bac  04 00 a0 e1                                      mov r0, r4
00630bb0  fb 77 f3 eb                                      bl #0x30eba4
00630bb4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00630bb8  00 00 a0 e3                                      mov r0, #0
00630bbc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00630bc0  fe 05 a0 e3                                      mov r0, #0x3f800000
00630bc4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00630bc8  04 10 a0 e1                                      mov r1, r4
00630bcc  fe 05 a0 e3                                      mov r0, #0x3f800000
00630bd0  f5 75 f3 eb                                      bl #0x30e3ac
00630bd4  b6 74 f3 eb                                      bl #0x30deb4
00630bd8  00 10 a0 e1                                      mov r1, r0
00630bdc  07 00 a0 e1                                      mov r0, r7
00630be0  61 78 f3 eb                                      bl #0x30ed6c
00630be4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00630be8  1d 78 f3 ea                                      b #0x30ec64
00630bec  04 10 a0 e1                                      mov r1, r4
00630bf0  fe 05 a0 e3                                      mov r0, #0x3f800000
00630bf4  ec 75 f3 eb                                      bl #0x30e3ac
00630bf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006349a0, declared_size=96, range_size=96, mode=arm
; class-group: glitch::ps::PDeflector
; alias: _ZN6glitch2ps10PDeflectorC2ERNS1_10ParametersE
; demangled: glitch::ps::PDeflector::PDeflector(glitch::ps::PDeflector::Parameters&)
; decoder-mode: arm
006349a0  70 40 2d e9                                      push {r4, r5, r6, lr}
006349a4  00 30 a0 e3                                      mov r3, #0
006349a8  04 50 80 e2                                      add r5, r0, #4
006349ac  00 40 a0 e1                                      mov r4, r0
006349b0  00 10 80 e5                                      str r1, [r0]
006349b4  44 30 c0 e5                                      strb r3, [r0, #0x44]
006349b8  03 10 a0 e1                                      mov r1, r3
006349bc  40 20 a0 e3                                      mov r2, #0x40
006349c0  05 00 a0 e1                                      mov r0, r5
006349c4  a5 66 f3 eb                                      bl #0x30e460
006349c8  00 30 94 e5                                      ldr r3, [r4]
006349cc  fe 25 a0 e3                                      mov r2, #0x3f800000
006349d0  01 10 a0 e3                                      mov r1, #1
006349d4  40 20 84 e5                                      str r2, [r4, #0x40]
006349d8  04 20 84 e5                                      str r2, [r4, #4]
006349dc  18 20 84 e5                                      str r2, [r4, #0x18]
006349e0  2c 20 84 e5                                      str r2, [r4, #0x2c]
006349e4  44 10 c4 e5                                      strb r1, [r4, #0x44]
006349e8  05 00 a0 e1                                      mov r0, r5
006349ec  00 10 93 e5                                      ldr r1, [r3]
006349f0  41 20 a0 e3                                      mov r2, #0x41
006349f4  9b 67 f3 eb                                      bl #0x30e868
006349f8  04 00 a0 e1                                      mov r0, r4
006349fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
