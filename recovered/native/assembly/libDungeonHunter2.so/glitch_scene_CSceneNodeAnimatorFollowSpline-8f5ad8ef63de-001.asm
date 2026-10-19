; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006cc754, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZNK6glitch5scene30CSceneNodeAnimatorFollowSpline7getTypeEv
; demangled: glitch::scene::CSceneNodeAnimatorFollowSpline::getType() const
; decoder-mode: arm
006cc754  02 00 a0 e3                                      mov r0, #2
006cc758  1e ff 2f e1                                      bx lr

; FUNCTION 0x006cc77c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZThn4_N6glitch5scene30CSceneNodeAnimatorFollowSplineD1Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline()
; decoder-mode: arm
006cc77c  04 00 40 e2                                      sub r0, r0, #4
006cc780  ff ff ff ea                                      b #0x6cc784

; FUNCTION 0x006cc784, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZN6glitch5scene30CSceneNodeAnimatorFollowSplineD1Ev
; demangled: glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline()
; decoder-mode: arm
006cc784  70 40 2d e9                                      push {r4, r5, r6, lr}
006cc788  50 50 9f e5                                      ldr r5, [pc, #0x50]
006cc78c  50 30 9f e5                                      ldr r3, [pc, #0x50]
006cc790  00 40 a0 e1                                      mov r4, r0
006cc794  05 50 8f e0                                      add r5, pc, r5
006cc798  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006cc79c  03 30 95 e7                                      ldr r3, [r5, r3]
006cc7a0  00 00 50 e3                                      cmp r0, #0
006cc7a4  68 20 83 e2                                      add r2, r3, #0x68
006cc7a8  0c 10 83 e2                                      add r1, r3, #0xc
006cc7ac  84 30 83 e2                                      add r3, r3, #0x84
006cc7b0  00 10 84 e5                                      str r1, [r4]
006cc7b4  24 30 84 e5                                      str r3, [r4, #0x24]
006cc7b8  04 20 84 e5                                      str r2, [r4, #4]
006cc7bc  00 00 00 0a                                      beq #0x6cc7c4
006cc7c0  22 0f f1 eb                                      bl #0x310450
006cc7c4  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
006cc7c8  04 00 a0 e1                                      mov r0, r4
006cc7cc  01 10 95 e7                                      ldr r1, [r5, r1]
006cc7d0  04 10 81 e2                                      add r1, r1, #4
006cc7d4  57 34 fb eb                                      bl #0x599938
006cc7d8  04 00 a0 e1                                      mov r0, r4
006cc7dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006cc7e0  fc 82 2c 00 c0 48 00 00 44 42 00 00              .byte 0xfc, 0x82, 0x2c, 0x00, 0xc0, 0x48, 0x00, 0x00, 0x44, 0x42, 0x00, 0x00

; FUNCTION 0x006cc7ec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZTv0_n12_N6glitch5scene30CSceneNodeAnimatorFollowSplineD1Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline()
; decoder-mode: arm
006cc7ec  00 30 90 e5                                      ldr r3, [r0]
006cc7f0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cc7f4  03 00 80 e0                                      add r0, r0, r3
006cc7f8  e1 ff ff ea                                      b #0x6cc784

; FUNCTION 0x006cc7fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZThn4_N6glitch5scene30CSceneNodeAnimatorFollowSplineD0Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline()
; decoder-mode: arm
006cc7fc  04 00 40 e2                                      sub r0, r0, #4
006cc800  ff ff ff ea                                      b #0x6cc804

; FUNCTION 0x006cc804, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZN6glitch5scene30CSceneNodeAnimatorFollowSplineD0Ev
; demangled: glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline()
; decoder-mode: arm
006cc804  10 40 2d e9                                      push {r4, lr}
006cc808  00 40 a0 e1                                      mov r4, r0
006cc80c  dc ff ff eb                                      bl #0x6cc784
006cc810  04 00 a0 e1                                      mov r0, r4
006cc814  a5 06 f1 eb                                      bl #0x30e2b0
006cc818  04 00 a0 e1                                      mov r0, r4
006cc81c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006cc820, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZTv0_n12_N6glitch5scene30CSceneNodeAnimatorFollowSplineD0Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline()
; decoder-mode: arm
006cc820  00 30 90 e5                                      ldr r3, [r0]
006cc824  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cc828  03 00 80 e0                                      add r0, r0, r3
006cc82c  f4 ff ff ea                                      b #0x6cc804

; FUNCTION 0x006cc830, declared_size=1168, range_size=1168, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZN6glitch5scene30CSceneNodeAnimatorFollowSpline11animateNodeEPNS0_10ISceneNodeEj
; demangled: glitch::scene::CSceneNodeAnimatorFollowSpline::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
006cc830  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006cc834  0c 40 90 e5                                      ldr r4, [r0, #0xc]
006cc838  10 80 90 e5                                      ldr r8, [r0, #0x10]
006cc83c  3c d0 4d e2                                      sub sp, sp, #0x3c
006cc840  00 50 a0 e1                                      mov r5, r0
006cc844  08 80 64 e0                                      rsb r8, r4, r8
006cc848  48 31 a0 e1                                      asr r3, r8, #2
006cc84c  01 60 a0 e1                                      mov r6, r1
006cc850  03 81 83 e0                                      add r8, r3, r3, lsl #2
006cc854  08 82 88 e0                                      add r8, r8, r8, lsl #4
006cc858  08 84 88 e0                                      add r8, r8, r8, lsl #8
006cc85c  08 88 88 e0                                      add r8, r8, r8, lsl #16
006cc860  88 80 93 e0                                      adds r8, r3, r8, lsl #1
006cc864  0d 01 00 0a                                      beq #0x6ccca0
006cc868  01 00 58 e3                                      cmp r8, #1
006cc86c  0d 01 00 0a                                      beq #0x6ccca8
006cc870  20 00 90 e5                                      ldr r0, [r0, #0x20]
006cc874  02 00 60 e0                                      rsb r0, r0, r2
006cc878  98 06 f1 eb                                      bl #0x30e2e0
006cc87c  18 10 95 e5                                      ldr r1, [r5, #0x18]
006cc880  39 09 f1 eb                                      bl #0x30ed6c
006cc884  6f 12 01 e3                                      movw r1, #0x126f
006cc888  83 1a 43 e3                                      movt r1, #0x3a83
006cc88c  36 09 f1 eb                                      bl #0x30ed6c
006cc890  00 70 a0 e1                                      mov r7, r0
006cc894  07 09 f1 eb                                      bl #0x30ecb8
006cc898  00 a0 a0 e1                                      mov sl, r0
006cc89c  0a 10 a0 e1                                      mov r1, sl
006cc8a0  07 00 a0 e1                                      mov r0, r7
006cc8a4  c0 06 f1 eb                                      bl #0x30e3ac
006cc8a8  00 70 a0 e1                                      mov r7, r0
006cc8ac  0a 00 a0 e1                                      mov r0, sl
006cc8b0  05 07 f1 eb                                      bl #0x30e4cc
006cc8b4  08 10 a0 e1                                      mov r1, r8
006cc8b8  9b 08 f1 eb                                      bl #0x30eb2c
006cc8bc  01 30 51 e2                                      subs r3, r1, #1
006cc8c0  08 30 83 40                                      addmi r3, r3, r8
006cc8c4  01 00 00 4a                                      bmi #0x6cc8d0
006cc8c8  08 00 53 e1                                      cmp r3, r8
006cc8cc  03 30 68 a0                                      rsbge r3, r8, r3
006cc8d0  0c 20 a0 e3                                      mov r2, #0xc
006cc8d4  92 03 02 e0                                      mul r2, r2, r3
006cc8d8  00 00 51 e3                                      cmp r1, #0
006cc8dc  18 20 8d e5                                      str r2, [sp, #0x18]
006cc8e0  02 20 84 e0                                      add r2, r4, r2
006cc8e4  14 20 8d e5                                      str r2, [sp, #0x14]
006cc8e8  08 30 81 b0                                      addlt r3, r1, r8
006cc8ec  02 00 00 ba                                      blt #0x6cc8fc
006cc8f0  08 00 51 e1                                      cmp r1, r8
006cc8f4  01 30 a0 b1                                      movlt r3, r1
006cc8f8  01 30 68 a0                                      rsbge r3, r8, r1
006cc8fc  0c c0 a0 e3                                      mov ip, #0xc
006cc900  9c 03 0c e0                                      mul ip, ip, r3
006cc904  01 30 91 e2                                      adds r3, r1, #1
006cc908  0c 90 84 e0                                      add sb, r4, ip
006cc90c  08 30 83 40                                      addmi r3, r3, r8
006cc910  01 00 00 4a                                      bmi #0x6cc91c
006cc914  08 00 53 e1                                      cmp r3, r8
006cc918  03 30 68 a0                                      rsbge r3, r8, r3
006cc91c  0c 20 a0 e3                                      mov r2, #0xc
006cc920  92 03 02 e0                                      mul r2, r2, r3
006cc924  02 30 91 e2                                      adds r3, r1, #2
006cc928  1c 20 8d e5                                      str r2, [sp, #0x1c]
006cc92c  02 a0 84 e0                                      add sl, r4, r2
006cc930  08 30 83 40                                      addmi r3, r3, r8
006cc934  01 00 00 4a                                      bmi #0x6cc940
006cc938  08 00 53 e1                                      cmp r3, r8
006cc93c  03 30 68 a0                                      rsbge r3, r8, r3
006cc940  0c 20 a0 e3                                      mov r2, #0xc
006cc944  92 03 02 e0                                      mul r2, r2, r3
006cc948  07 10 a0 e1                                      mov r1, r7
006cc94c  07 00 a0 e1                                      mov r0, r7
006cc950  00 c0 8d e5                                      str ip, [sp]
006cc954  20 20 8d e5                                      str r2, [sp, #0x20]
006cc958  91 08 f1 eb                                      bl #0x30eba4
006cc95c  07 10 a0 e1                                      mov r1, r7
006cc960  01 09 f1 eb                                      bl #0x30ed6c
006cc964  07 10 a0 e1                                      mov r1, r7
006cc968  ff 08 f1 eb                                      bl #0x30ed6c
006cc96c  03 11 a0 e3                                      mov r1, #0xc0000000
006cc970  00 80 a0 e1                                      mov r8, r0
006cc974  01 15 81 e2                                      add r1, r1, #0x400000
006cc978  07 00 a0 e1                                      mov r0, r7
006cc97c  fa 08 f1 eb                                      bl #0x30ed6c
006cc980  07 10 a0 e1                                      mov r1, r7
006cc984  f8 08 f1 eb                                      bl #0x30ed6c
006cc988  00 10 a0 e1                                      mov r1, r0
006cc98c  08 00 a0 e1                                      mov r0, r8
006cc990  83 08 f1 eb                                      bl #0x30eba4
006cc994  fe 15 a0 e3                                      mov r1, #0x3f800000
006cc998  81 08 f1 eb                                      bl #0x30eba4
006cc99c  03 11 a0 e3                                      mov r1, #0xc0000000
006cc9a0  00 80 a0 e1                                      mov r8, r0
006cc9a4  07 00 a0 e1                                      mov r0, r7
006cc9a8  ef 08 f1 eb                                      bl #0x30ed6c
006cc9ac  07 10 a0 e1                                      mov r1, r7
006cc9b0  ed 08 f1 eb                                      bl #0x30ed6c
006cc9b4  07 10 a0 e1                                      mov r1, r7
006cc9b8  08 00 8d e5                                      str r0, [sp, #8]
006cc9bc  ea 08 f1 eb                                      bl #0x30ed6c
006cc9c0  01 11 a0 e3                                      mov r1, #0x40000000
006cc9c4  00 b0 a0 e1                                      mov fp, r0
006cc9c8  01 15 81 e2                                      add r1, r1, #0x400000
006cc9cc  07 00 a0 e1                                      mov r0, r7
006cc9d0  e5 08 f1 eb                                      bl #0x30ed6c
006cc9d4  07 10 a0 e1                                      mov r1, r7
006cc9d8  e3 08 f1 eb                                      bl #0x30ed6c
006cc9dc  00 10 a0 e1                                      mov r1, r0
006cc9e0  0b 00 a0 e1                                      mov r0, fp
006cc9e4  6e 08 f1 eb                                      bl #0x30eba4
006cc9e8  07 10 a0 e1                                      mov r1, r7
006cc9ec  10 00 8d e5                                      str r0, [sp, #0x10]
006cc9f0  07 00 a0 e1                                      mov r0, r7
006cc9f4  dc 08 f1 eb                                      bl #0x30ed6c
006cc9f8  07 10 a0 e1                                      mov r1, r7
006cc9fc  04 00 8d e5                                      str r0, [sp, #4]
006cca00  d9 08 f1 eb                                      bl #0x30ed6c
006cca04  08 30 9d e5                                      ldr r3, [sp, #8]
006cca08  00 b0 a0 e1                                      mov fp, r0
006cca0c  0b 10 a0 e1                                      mov r1, fp
006cca10  03 00 a0 e1                                      mov r0, r3
006cca14  62 08 f1 eb                                      bl #0x30eba4
006cca18  07 10 a0 e1                                      mov r1, r7
006cca1c  60 08 f1 eb                                      bl #0x30eba4
006cca20  04 20 9d e5                                      ldr r2, [sp, #4]
006cca24  00 70 a0 e1                                      mov r7, r0
006cca28  0b 00 a0 e1                                      mov r0, fp
006cca2c  02 10 a0 e1                                      mov r1, r2
006cca30  5d 06 f1 eb                                      bl #0x30e3ac
006cca34  00 30 96 e5                                      ldr r3, [r6]
006cca38  04 20 99 e5                                      ldr r2, [sb, #4]
006cca3c  00 b0 a0 e1                                      mov fp, r0
006cca40  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
006cca44  02 10 a0 e1                                      mov r1, r2
006cca48  08 00 a0 e1                                      mov r0, r8
006cca4c  04 20 8d e5                                      str r2, [sp, #4]
006cca50  24 30 8d e5                                      str r3, [sp, #0x24]
006cca54  c4 08 f1 eb                                      bl #0x30ed6c
006cca58  04 10 9a e5                                      ldr r1, [sl, #4]
006cca5c  00 30 a0 e1                                      mov r3, r0
006cca60  10 00 9d e5                                      ldr r0, [sp, #0x10]
006cca64  08 30 8d e5                                      str r3, [sp, #8]
006cca68  bf 08 f1 eb                                      bl #0x30ed6c
006cca6c  08 30 9d e5                                      ldr r3, [sp, #8]
006cca70  00 10 a0 e1                                      mov r1, r0
006cca74  1c 50 95 e5                                      ldr r5, [r5, #0x1c]
006cca78  03 00 a0 e1                                      mov r0, r3
006cca7c  48 08 f1 eb                                      bl #0x30eba4
006cca80  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006cca84  00 30 a0 e1                                      mov r3, r0
006cca88  04 00 9a e5                                      ldr r0, [sl, #4]
006cca8c  04 10 9e e5                                      ldr r1, [lr, #4]
006cca90  08 30 8d e5                                      str r3, [sp, #8]
006cca94  44 06 f1 eb                                      bl #0x30e3ac
006cca98  00 10 a0 e1                                      mov r1, r0
006cca9c  05 00 a0 e1                                      mov r0, r5
006ccaa0  b1 08 f1 eb                                      bl #0x30ed6c
006ccaa4  00 10 a0 e1                                      mov r1, r0
006ccaa8  07 00 a0 e1                                      mov r0, r7
006ccaac  ae 08 f1 eb                                      bl #0x30ed6c
006ccab0  08 30 9d e5                                      ldr r3, [sp, #8]
006ccab4  00 10 a0 e1                                      mov r1, r0
006ccab8  03 00 a0 e1                                      mov r0, r3
006ccabc  20 30 9d e5                                      ldr r3, [sp, #0x20]
006ccac0  03 30 84 e0                                      add r3, r4, r3
006ccac4  0c 30 8d e5                                      str r3, [sp, #0xc]
006ccac8  35 08 f1 eb                                      bl #0x30eba4
006ccacc  0c e0 9d e5                                      ldr lr, [sp, #0xc]
006ccad0  04 20 9d e5                                      ldr r2, [sp, #4]
006ccad4  00 30 a0 e1                                      mov r3, r0
006ccad8  04 00 9e e5                                      ldr r0, [lr, #4]
006ccadc  02 10 a0 e1                                      mov r1, r2
006ccae0  08 30 8d e5                                      str r3, [sp, #8]
006ccae4  30 06 f1 eb                                      bl #0x30e3ac
006ccae8  00 10 a0 e1                                      mov r1, r0
006ccaec  05 00 a0 e1                                      mov r0, r5
006ccaf0  9d 08 f1 eb                                      bl #0x30ed6c
006ccaf4  00 10 a0 e1                                      mov r1, r0
006ccaf8  0b 00 a0 e1                                      mov r0, fp
006ccafc  9a 08 f1 eb                                      bl #0x30ed6c
006ccb00  08 30 9d e5                                      ldr r3, [sp, #8]
006ccb04  00 10 a0 e1                                      mov r1, r0
006ccb08  08 90 99 e5                                      ldr sb, [sb, #8]
006ccb0c  03 00 a0 e1                                      mov r0, r3
006ccb10  23 08 f1 eb                                      bl #0x30eba4
006ccb14  09 10 a0 e1                                      mov r1, sb
006ccb18  00 20 a0 e1                                      mov r2, r0
006ccb1c  08 00 a0 e1                                      mov r0, r8
006ccb20  08 a0 9a e5                                      ldr sl, [sl, #8]
006ccb24  04 20 8d e5                                      str r2, [sp, #4]
006ccb28  8f 08 f1 eb                                      bl #0x30ed6c
006ccb2c  0a 10 a0 e1                                      mov r1, sl
006ccb30  00 30 a0 e1                                      mov r3, r0
006ccb34  10 00 9d e5                                      ldr r0, [sp, #0x10]
006ccb38  08 30 8d e5                                      str r3, [sp, #8]
006ccb3c  8a 08 f1 eb                                      bl #0x30ed6c
006ccb40  08 30 9d e5                                      ldr r3, [sp, #8]
006ccb44  00 10 a0 e1                                      mov r1, r0
006ccb48  03 00 a0 e1                                      mov r0, r3
006ccb4c  14 08 f1 eb                                      bl #0x30eba4
006ccb50  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006ccb54  00 30 a0 e1                                      mov r3, r0
006ccb58  0a 00 a0 e1                                      mov r0, sl
006ccb5c  08 10 9e e5                                      ldr r1, [lr, #8]
006ccb60  08 30 8d e5                                      str r3, [sp, #8]
006ccb64  10 06 f1 eb                                      bl #0x30e3ac
006ccb68  00 10 a0 e1                                      mov r1, r0
006ccb6c  05 00 a0 e1                                      mov r0, r5
006ccb70  7d 08 f1 eb                                      bl #0x30ed6c
006ccb74  00 10 a0 e1                                      mov r1, r0
006ccb78  07 00 a0 e1                                      mov r0, r7
006ccb7c  7a 08 f1 eb                                      bl #0x30ed6c
006ccb80  08 30 9d e5                                      ldr r3, [sp, #8]
006ccb84  00 10 a0 e1                                      mov r1, r0
006ccb88  03 00 a0 e1                                      mov r0, r3
006ccb8c  04 08 f1 eb                                      bl #0x30eba4
006ccb90  0c e0 9d e5                                      ldr lr, [sp, #0xc]
006ccb94  00 30 a0 e1                                      mov r3, r0
006ccb98  09 10 a0 e1                                      mov r1, sb
006ccb9c  08 00 9e e5                                      ldr r0, [lr, #8]
006ccba0  08 30 8d e5                                      str r3, [sp, #8]
006ccba4  00 06 f1 eb                                      bl #0x30e3ac
006ccba8  00 10 a0 e1                                      mov r1, r0
006ccbac  05 00 a0 e1                                      mov r0, r5
006ccbb0  6d 08 f1 eb                                      bl #0x30ed6c
006ccbb4  00 c0 9d e5                                      ldr ip, [sp]
006ccbb8  00 10 a0 e1                                      mov r1, r0
006ccbbc  0b 00 a0 e1                                      mov r0, fp
006ccbc0  0c a0 94 e7                                      ldr sl, [r4, ip]
006ccbc4  68 08 f1 eb                                      bl #0x30ed6c
006ccbc8  08 30 9d e5                                      ldr r3, [sp, #8]
006ccbcc  00 10 a0 e1                                      mov r1, r0
006ccbd0  03 00 a0 e1                                      mov r0, r3
006ccbd4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006ccbd8  03 90 94 e7                                      ldr sb, [r4, r3]
006ccbdc  f0 07 f1 eb                                      bl #0x30eba4
006ccbe0  0a 10 a0 e1                                      mov r1, sl
006ccbe4  00 30 a0 e1                                      mov r3, r0
006ccbe8  08 00 a0 e1                                      mov r0, r8
006ccbec  08 30 8d e5                                      str r3, [sp, #8]
006ccbf0  5d 08 f1 eb                                      bl #0x30ed6c
006ccbf4  09 10 a0 e1                                      mov r1, sb
006ccbf8  00 80 a0 e1                                      mov r8, r0
006ccbfc  10 00 9d e5                                      ldr r0, [sp, #0x10]
006ccc00  59 08 f1 eb                                      bl #0x30ed6c
006ccc04  00 10 a0 e1                                      mov r1, r0
006ccc08  08 00 a0 e1                                      mov r0, r8
006ccc0c  e4 07 f1 eb                                      bl #0x30eba4
006ccc10  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006ccc14  00 80 a0 e1                                      mov r8, r0
006ccc18  09 00 a0 e1                                      mov r0, sb
006ccc1c  0c 10 94 e7                                      ldr r1, [r4, ip]
006ccc20  e1 05 f1 eb                                      bl #0x30e3ac
006ccc24  00 10 a0 e1                                      mov r1, r0
006ccc28  05 00 a0 e1                                      mov r0, r5
006ccc2c  4e 08 f1 eb                                      bl #0x30ed6c
006ccc30  00 10 a0 e1                                      mov r1, r0
006ccc34  07 00 a0 e1                                      mov r0, r7
006ccc38  4b 08 f1 eb                                      bl #0x30ed6c
006ccc3c  00 10 a0 e1                                      mov r1, r0
006ccc40  08 00 a0 e1                                      mov r0, r8
006ccc44  d6 07 f1 eb                                      bl #0x30eba4
006ccc48  20 e0 9d e5                                      ldr lr, [sp, #0x20]
006ccc4c  00 70 a0 e1                                      mov r7, r0
006ccc50  0a 10 a0 e1                                      mov r1, sl
006ccc54  0e 00 94 e7                                      ldr r0, [r4, lr]
006ccc58  d3 05 f1 eb                                      bl #0x30e3ac
006ccc5c  00 10 a0 e1                                      mov r1, r0
006ccc60  05 00 a0 e1                                      mov r0, r5
006ccc64  40 08 f1 eb                                      bl #0x30ed6c
006ccc68  00 10 a0 e1                                      mov r1, r0
006ccc6c  0b 00 a0 e1                                      mov r0, fp
006ccc70  3d 08 f1 eb                                      bl #0x30ed6c
006ccc74  00 10 a0 e1                                      mov r1, r0
006ccc78  07 00 a0 e1                                      mov r0, r7
006ccc7c  c8 07 f1 eb                                      bl #0x30eba4
006ccc80  0c 00 9d e9                                      ldmib sp, {r2, r3}
006ccc84  2c 00 8d e5                                      str r0, [sp, #0x2c]
006ccc88  30 20 8d e5                                      str r2, [sp, #0x30]
006ccc8c  34 30 8d e5                                      str r3, [sp, #0x34]
006ccc90  06 00 a0 e1                                      mov r0, r6
006ccc94  2c 10 8d e2                                      add r1, sp, #0x2c
006ccc98  24 20 9d e5                                      ldr r2, [sp, #0x24]
006ccc9c  32 ff 2f e1                                      blx r2
006ccca0  3c d0 8d e2                                      add sp, sp, #0x3c
006ccca4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006ccca8  01 00 a0 e1                                      mov r0, r1
006cccac  00 30 96 e5                                      ldr r3, [r6]
006cccb0  04 10 a0 e1                                      mov r1, r4
006cccb4  0f e0 a0 e1                                      mov lr, pc
006cccb8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
006cccbc  f7 ff ff ea                                      b #0x6ccca0

; FUNCTION 0x006cccc0, declared_size=216, range_size=216, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZN6glitch5scene30CSceneNodeAnimatorFollowSplineC1EjRKSt6vectorINS_4core8vector3dIfEENS3_10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEEff
; demangled: glitch::scene::CSceneNodeAnimatorFollowSpline::CSceneNodeAnimatorFollowSpline(unsigned int, std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> > const&, float, float)
; decoder-mode: arm
006cccc0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006cccc4  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
006cccc8  b8 c0 9f e5                                      ldr ip, [pc, #0xb8]
006ccccc  b8 e0 9f e5                                      ldr lr, [pc, #0xb8]
006cccd0  05 50 8f e0                                      add r5, pc, r5
006cccd4  0c 60 95 e7                                      ldr r6, [r5, ip]
006cccd8  0e e0 95 e7                                      ldr lr, [r5, lr]
006cccdc  ac c0 9f e5                                      ldr ip, [pc, #0xac]
006ccce0  08 80 96 e5                                      ldr r8, [r6, #8]
006ccce4  08 e0 8e e2                                      add lr, lr, #8
006ccce8  01 70 a0 e3                                      mov r7, #1
006cccec  28 70 80 e5                                      str r7, [r0, #0x28]
006cccf0  00 80 80 e5                                      str r8, [r0]
006cccf4  24 e0 80 e5                                      str lr, [r0, #0x24]
006cccf8  0c c0 95 e7                                      ldr ip, [r5, ip]
006cccfc  0c e0 18 e5                                      ldr lr, [r8, #-0xc]
006ccd00  0c 80 96 e5                                      ldr r8, [r6, #0xc]
006ccd04  08 c0 8c e2                                      add ip, ip, #8
006ccd08  00 40 a0 e1                                      mov r4, r0
006ccd0c  0e 80 80 e7                                      str r8, [r0, lr]
006ccd10  04 c0 80 e5                                      str ip, [r0, #4]
006ccd14  01 70 a0 e1                                      mov r7, r1
006ccd18  02 a0 a0 e1                                      mov sl, r2
006ccd1c  03 80 a0 e1                                      mov r8, r3
006ccd20  19 51 ff eb                                      bl #0x6a118c
006ccd24  04 20 96 e5                                      ldr r2, [r6, #4]
006ccd28  64 30 9f e5                                      ldr r3, [pc, #0x64]
006ccd2c  10 c0 96 e5                                      ldr ip, [r6, #0x10]
006ccd30  00 20 84 e5                                      str r2, [r4]
006ccd34  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006ccd38  03 30 95 e7                                      ldr r3, [r5, r3]
006ccd3c  00 c0 84 e7                                      str ip, [r4, r0]
006ccd40  68 20 83 e2                                      add r2, r3, #0x68
006ccd44  0c 10 83 e2                                      add r1, r3, #0xc
006ccd48  00 00 a0 e3                                      mov r0, #0
006ccd4c  84 30 83 e2                                      add r3, r3, #0x84
006ccd50  08 00 84 e5                                      str r0, [r4, #8]
006ccd54  00 10 84 e5                                      str r1, [r4]
006ccd58  24 30 84 e5                                      str r3, [r4, #0x24]
006ccd5c  04 20 84 e5                                      str r2, [r4, #4]
006ccd60  0a 10 a0 e1                                      mov r1, sl
006ccd64  0c 00 84 e2                                      add r0, r4, #0xc
006ccd68  8c 56 fb eb                                      bl #0x5a27a0
006ccd6c  18 80 84 e5                                      str r8, [r4, #0x18]
006ccd70  20 30 9d e5                                      ldr r3, [sp, #0x20]
006ccd74  04 00 a0 e1                                      mov r0, r4
006ccd78  20 70 84 e5                                      str r7, [r4, #0x20]
006ccd7c  1c 30 84 e5                                      str r3, [r4, #0x1c]
006ccd80  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006ccd84  c0 7d 2c 00 44 42 00 00 44 2b 00 00 4c 27 00 00  .byte 0xc0, 0x7d, 0x2c, 0x00, 0x44, 0x42, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00
006ccd94  c0 48 00 00                                      .byte 0xc0, 0x48, 0x00, 0x00

; FUNCTION 0x006ccd98, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZN6glitch5scene30CSceneNodeAnimatorFollowSpline11createCloneEv
; demangled: glitch::scene::CSceneNodeAnimatorFollowSpline::createClone()
; decoder-mode: arm
006ccd98  30 40 2d e9                                      push {r4, r5, lr}
006ccd9c  00 10 a0 e3                                      mov r1, #0
006ccda0  00 50 a0 e1                                      mov r5, r0
006ccda4  0c d0 4d e2                                      sub sp, sp, #0xc
006ccda8  2c 00 a0 e3                                      mov r0, #0x2c
006ccdac  fe 9c f9 eb                                      bl #0x5341ac
006ccdb0  1c c0 95 e5                                      ldr ip, [r5, #0x1c]
006ccdb4  00 40 a0 e1                                      mov r4, r0
006ccdb8  20 10 95 e5                                      ldr r1, [r5, #0x20]
006ccdbc  18 30 95 e5                                      ldr r3, [r5, #0x18]
006ccdc0  0c 20 85 e2                                      add r2, r5, #0xc
006ccdc4  00 c0 8d e5                                      str ip, [sp]
006ccdc8  bc ff ff eb                                      bl #0x6cccc0
006ccdcc  04 00 a0 e1                                      mov r0, r4
006ccdd0  0c d0 8d e2                                      add sp, sp, #0xc
006ccdd4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006ccdd8, declared_size=208, range_size=208, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZN6glitch5scene30CSceneNodeAnimatorFollowSplineC2EjRKSt6vectorINS_4core8vector3dIfEENS3_10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEEff
; demangled: glitch::scene::CSceneNodeAnimatorFollowSpline::CSceneNodeAnimatorFollowSpline(unsigned int, std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> > const&, float, float)
; decoder-mode: arm
006ccdd8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006ccddc  04 70 81 e2                                      add r7, r1, #4
006ccde0  b0 60 9f e5                                      ldr r6, [pc, #0xb0]
006ccde4  04 c0 97 e5                                      ldr ip, [r7, #4]
006ccde8  01 50 a0 e1                                      mov r5, r1
006ccdec  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
006ccdf0  06 60 8f e0                                      add r6, pc, r6
006ccdf4  00 c0 80 e5                                      str ip, [r0]
006ccdf8  01 10 96 e7                                      ldr r1, [r6, r1]
006ccdfc  08 e0 97 e5                                      ldr lr, [r7, #8]
006cce00  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006cce04  08 10 81 e2                                      add r1, r1, #8
006cce08  00 40 a0 e1                                      mov r4, r0
006cce0c  0c e0 80 e7                                      str lr, [r0, ip]
006cce10  04 10 80 e5                                      str r1, [r0, #4]
006cce14  02 80 a0 e1                                      mov r8, r2
006cce18  03 a0 a0 e1                                      mov sl, r3
006cce1c  da 50 ff eb                                      bl #0x6a118c
006cce20  04 20 95 e5                                      ldr r2, [r5, #4]
006cce24  74 30 9f e5                                      ldr r3, [pc, #0x74]
006cce28  00 20 84 e5                                      str r2, [r4]
006cce2c  03 30 96 e7                                      ldr r3, [r6, r3]
006cce30  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
006cce34  0c 00 97 e5                                      ldr r0, [r7, #0xc]
006cce38  68 20 83 e2                                      add r2, r3, #0x68
006cce3c  60 30 9f e5                                      ldr r3, [pc, #0x60]
006cce40  01 00 84 e7                                      str r0, [r4, r1]
006cce44  04 20 84 e5                                      str r2, [r4, #4]
006cce48  00 20 a0 e3                                      mov r2, #0
006cce4c  08 20 84 e5                                      str r2, [r4, #8]
006cce50  00 20 95 e5                                      ldr r2, [r5]
006cce54  03 30 96 e7                                      ldr r3, [r6, r3]
006cce58  0a 10 a0 e1                                      mov r1, sl
006cce5c  00 20 84 e5                                      str r2, [r4]
006cce60  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006cce64  14 c0 95 e5                                      ldr ip, [r5, #0x14]
006cce68  68 30 83 e2                                      add r3, r3, #0x68
006cce6c  0c 00 84 e2                                      add r0, r4, #0xc
006cce70  02 c0 84 e7                                      str ip, [r4, r2]
006cce74  04 30 84 e5                                      str r3, [r4, #4]
006cce78  48 56 fb eb                                      bl #0x5a27a0
006cce7c  20 30 9d e5                                      ldr r3, [sp, #0x20]
006cce80  04 00 a0 e1                                      mov r0, r4
006cce84  18 30 84 e5                                      str r3, [r4, #0x18]
006cce88  24 30 9d e5                                      ldr r3, [sp, #0x24]
006cce8c  20 80 84 e5                                      str r8, [r4, #0x20]
006cce90  1c 30 84 e5                                      str r3, [r4, #0x1c]
006cce94  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006cce98  a0 7c 2c 00 4c 27 00 00 08 23 00 00 c0 48 00 00  .byte 0xa0, 0x7c, 0x2c, 0x00, 0x4c, 0x27, 0x00, 0x00, 0x08, 0x23, 0x00, 0x00, 0xc0, 0x48, 0x00, 0x00

; FUNCTION 0x006ccef8, declared_size=468, range_size=468, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZNK6glitch5scene30CSceneNodeAnimatorFollowSpline19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorFollowSpline::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006ccef8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ccefc  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
006ccf00  b4 c1 9f e5                                      ldr ip, [pc, #0x1b4]
006ccf04  3c d0 4d e2                                      sub sp, sp, #0x3c
006ccf08  03 30 8f e0                                      add r3, pc, r3
006ccf0c  08 30 8d e5                                      str r3, [sp, #8]
006ccf10  0c 30 93 e7                                      ldr r3, [r3, ip]
006ccf14  01 70 a0 e1                                      mov r7, r1
006ccf18  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
006ccf1c  00 30 93 e5                                      ldr r3, [r3]
006ccf20  00 60 a0 e1                                      mov r6, r0
006ccf24  0c c0 8d e5                                      str ip, [sp, #0xc]
006ccf28  34 30 8d e5                                      str r3, [sp, #0x34]
006ccf2c  02 40 a0 e1                                      mov r4, r2
006ccf30  01 10 8f e0                                      add r1, pc, r1
006ccf34  07 00 a0 e1                                      mov r0, r7
006ccf38  18 20 96 e5                                      ldr r2, [r6, #0x18]
006ccf3c  00 30 a0 e3                                      mov r3, #0
006ccf40  00 c0 97 e5                                      ldr ip, [r7]
006ccf44  0f e0 a0 e1                                      mov lr, pc
006ccf48  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006ccf4c  70 11 9f e5                                      ldr r1, [pc, #0x170]
006ccf50  00 30 a0 e3                                      mov r3, #0
006ccf54  00 c0 97 e5                                      ldr ip, [r7]
006ccf58  07 00 a0 e1                                      mov r0, r7
006ccf5c  01 10 8f e0                                      add r1, pc, r1
006ccf60  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
006ccf64  0f e0 a0 e1                                      mov lr, pc
006ccf68  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006ccf6c  10 b0 96 e5                                      ldr fp, [r6, #0x10]
006ccf70  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006ccf74  00 00 54 e3                                      cmp r4, #0
006ccf78  0b 30 63 e0                                      rsb r3, r3, fp
006ccf7c  43 31 a0 e1                                      asr r3, r3, #2
006ccf80  03 b1 83 e0                                      add fp, r3, r3, lsl #2
006ccf84  0b b2 8b e0                                      add fp, fp, fp, lsl #4
006ccf88  0b b4 8b e0                                      add fp, fp, fp, lsl #8
006ccf8c  0b b8 8b e0                                      add fp, fp, fp, lsl #16
006ccf90  8b b0 83 e0                                      add fp, r3, fp, lsl #1
006ccf94  02 00 00 0a                                      beq #0x6ccfa4
006ccf98  00 30 94 e5                                      ldr r3, [r4]
006ccf9c  02 00 13 e3                                      tst r3, #2
006ccfa0  01 b0 8b 12                                      addne fp, fp, #1
006ccfa4  00 00 5b e3                                      cmp fp, #0
006ccfa8  38 00 00 0a                                      beq #0x6cd090
006ccfac  14 31 9f e5                                      ldr r3, [pc, #0x114]
006ccfb0  00 80 a0 e3                                      mov r8, #0
006ccfb4  10 e0 8d e2                                      add lr, sp, #0x10
006ccfb8  03 30 8f e0                                      add r3, pc, r3
006ccfbc  05 30 83 e2                                      add r3, r3, #5
006ccfc0  00 90 a0 e3                                      mov sb, #0
006ccfc4  04 30 8d e5                                      str r3, [sp, #4]
006ccfc8  01 a0 a0 e3                                      mov sl, #1
006ccfcc  08 50 a0 e1                                      mov r5, r8
006ccfd0  1c 40 8d e2                                      add r4, sp, #0x1c
006ccfd4  00 e0 8d e5                                      str lr, [sp]
006ccfd8  04 10 9d e5                                      ldr r1, [sp, #4]
006ccfdc  04 00 a0 e1                                      mov r0, r4
006ccfe0  2c 40 8d e5                                      str r4, [sp, #0x2c]
006ccfe4  30 40 8d e5                                      str r4, [sp, #0x30]
006ccfe8  ae ff ff eb                                      bl #0x6ccea8
006ccfec  04 00 a0 e1                                      mov r0, r4
006ccff0  7a 10 af e6                                      sxtb r1, sl
006ccff4  eb a3 f5 eb                                      bl #0x435fa8
006ccff8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
006ccffc  10 30 96 e5                                      ldr r3, [r6, #0x10]
006cd000  00 00 97 e5                                      ldr r0, [r7]
006cd004  30 10 9d e5                                      ldr r1, [sp, #0x30]
006cd008  03 30 62 e0                                      rsb r3, r2, r3
006cd00c  43 31 a0 e1                                      asr r3, r3, #2
006cd010  a8 c1 90 e5                                      ldr ip, [r0, #0x1a8]
006cd014  03 01 83 e0                                      add r0, r3, r3, lsl #2
006cd018  00 02 80 e0                                      add r0, r0, r0, lsl #4
006cd01c  00 04 80 e0                                      add r0, r0, r0, lsl #8
006cd020  00 08 80 e0                                      add r0, r0, r0, lsl #16
006cd024  80 00 83 e0                                      add r0, r3, r0, lsl #1
006cd028  05 00 50 e1                                      cmp r0, r5
006cd02c  08 30 92 87                                      ldrhi r3, [r2, r8]
006cd030  08 20 82 80                                      addhi r2, r2, r8
006cd034  10 90 8d 95                                      strls sb, [sp, #0x10]
006cd038  10 30 8d 85                                      strhi r3, [sp, #0x10]
006cd03c  04 30 92 85                                      ldrhi r3, [r2, #4]
006cd040  14 90 8d 95                                      strls sb, [sp, #0x14]
006cd044  18 90 8d 95                                      strls sb, [sp, #0x18]
006cd048  14 30 8d 85                                      strhi r3, [sp, #0x14]
006cd04c  08 30 92 85                                      ldrhi r3, [r2, #8]
006cd050  07 00 a0 e1                                      mov r0, r7
006cd054  00 20 9d e5                                      ldr r2, [sp]
006cd058  18 30 8d 85                                      strhi r3, [sp, #0x18]
006cd05c  00 30 a0 e3                                      mov r3, #0
006cd060  3c ff 2f e1                                      blx ip
006cd064  30 00 9d e5                                      ldr r0, [sp, #0x30]
006cd068  04 00 50 e1                                      cmp r0, r4
006cd06c  02 00 00 0a                                      beq #0x6cd07c
006cd070  00 00 50 e3                                      cmp r0, #0
006cd074  00 00 00 0a                                      beq #0x6cd07c
006cd078  f4 0c f1 eb                                      bl #0x310450
006cd07c  01 50 85 e2                                      add r5, r5, #1
006cd080  0b 00 55 e1                                      cmp r5, fp
006cd084  01 a0 8a e2                                      add sl, sl, #1
006cd088  0c 80 88 e2                                      add r8, r8, #0xc
006cd08c  d1 ff ff 1a                                      bne #0x6ccfd8
006cd090  08 20 9d e5                                      ldr r2, [sp, #8]
006cd094  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006cd098  01 30 92 e7                                      ldr r3, [r2, r1]
006cd09c  34 20 9d e5                                      ldr r2, [sp, #0x34]
006cd0a0  00 30 93 e5                                      ldr r3, [r3]
006cd0a4  03 00 52 e1                                      cmp r2, r3
006cd0a8  01 00 00 1a                                      bne #0x6cd0b4
006cd0ac  3c d0 8d e2                                      add sp, sp, #0x3c
006cd0b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006cd0b4  95 04 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006cd0b8  88 7b 2c 00 ac 40 00 00 c0 c4 20 00 d4 e4 21 00  .byte 0x88, 0x7b, 0x2c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0xc4, 0x20, 0x00, 0xd4, 0xe4, 0x21, 0x00
006cd0c8  c8 57 1f 00                                      .byte 0xc8, 0x57, 0x1f, 0x00

; FUNCTION 0x006cd0cc, declared_size=1216, range_size=1216, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFollowSpline
; alias: _ZN6glitch5scene30CSceneNodeAnimatorFollowSpline21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorFollowSpline::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006cd0cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006cd0d0  a0 94 9f e5                                      ldr sb, [pc, #0x4a0]
006cd0d4  a0 34 9f e5                                      ldr r3, [pc, #0x4a0]
006cd0d8  44 d0 4d e2                                      sub sp, sp, #0x44
006cd0dc  09 90 8f e0                                      add sb, pc, sb
006cd0e0  0c 30 8d e5                                      str r3, [sp, #0xc]
006cd0e4  03 30 99 e7                                      ldr r3, [sb, r3]
006cd0e8  00 50 a0 e1                                      mov r5, r0
006cd0ec  01 60 a0 e1                                      mov r6, r1
006cd0f0  00 00 93 e5                                      ldr r0, [r3]
006cd0f4  84 14 9f e5                                      ldr r1, [pc, #0x484]
006cd0f8  00 30 96 e5                                      ldr r3, [r6]
006cd0fc  10 20 8d e5                                      str r2, [sp, #0x10]
006cd100  01 10 8f e0                                      add r1, pc, r1
006cd104  3c 00 8d e5                                      str r0, [sp, #0x3c]
006cd108  06 00 a0 e1                                      mov r0, r6
006cd10c  0f e0 a0 e1                                      mov lr, pc
006cd110  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006cd114  68 14 9f e5                                      ldr r1, [pc, #0x468]
006cd118  18 00 85 e5                                      str r0, [r5, #0x18]
006cd11c  00 30 96 e5                                      ldr r3, [r6]
006cd120  01 10 8f e0                                      add r1, pc, r1
006cd124  06 00 a0 e1                                      mov r0, r6
006cd128  0f e0 a0 e1                                      mov lr, pc
006cd12c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006cd130  50 84 9f e5                                      ldr r8, [pc, #0x450]
006cd134  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006cd138  10 20 95 e5                                      ldr r2, [r5, #0x10]
006cd13c  55 c5 05 e3                                      movw ip, #0x5555
006cd140  0c c7 8c e1                                      orr ip, ip, ip, lsl #14
006cd144  02 00 53 e1                                      cmp r3, r2
006cd148  08 80 8f e0                                      add r8, pc, r8
006cd14c  1c 00 85 e5                                      str r0, [r5, #0x1c]
006cd150  10 30 85 15                                      strne r3, [r5, #0x10]
006cd154  05 80 88 e2                                      add r8, r8, #5
006cd158  08 c0 8d e5                                      str ip, [sp, #8]
006cd15c  01 70 a0 e3                                      mov r7, #1
006cd160  24 40 8d e2                                      add r4, sp, #0x24
006cd164  18 a0 8d e2                                      add sl, sp, #0x18
006cd168  08 10 a0 e1                                      mov r1, r8
006cd16c  04 00 a0 e1                                      mov r0, r4
006cd170  34 40 8d e5                                      str r4, [sp, #0x34]
006cd174  38 40 8d e5                                      str r4, [sp, #0x38]
006cd178  4a ff ff eb                                      bl #0x6ccea8
006cd17c  04 00 a0 e1                                      mov r0, r4
006cd180  77 10 af e6                                      sxtb r1, r7
006cd184  87 a3 f5 eb                                      bl #0x435fa8
006cd188  00 30 96 e5                                      ldr r3, [r6]
006cd18c  06 00 a0 e1                                      mov r0, r6
006cd190  38 10 9d e5                                      ldr r1, [sp, #0x38]
006cd194  0f e0 a0 e1                                      mov lr, pc
006cd198  24 f0 93 e5                                      ldr pc, [r3, #0x24]
006cd19c  00 00 50 e3                                      cmp r0, #0
006cd1a0  1a 00 00 0a                                      beq #0x6cd210
006cd1a4  00 30 96 e5                                      ldr r3, [r6]
006cd1a8  0a 00 a0 e1                                      mov r0, sl
006cd1ac  06 10 a0 e1                                      mov r1, r6
006cd1b0  38 20 9d e5                                      ldr r2, [sp, #0x38]
006cd1b4  0f e0 a0 e1                                      mov lr, pc
006cd1b8  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
006cd1bc  10 30 95 e5                                      ldr r3, [r5, #0x10]
006cd1c0  14 b0 95 e5                                      ldr fp, [r5, #0x14]
006cd1c4  0b 00 53 e1                                      cmp r3, fp
006cd1c8  93 00 00 0a                                      beq #0x6cd41c
006cd1cc  18 20 9d e5                                      ldr r2, [sp, #0x18]
006cd1d0  00 20 83 e5                                      str r2, [r3]
006cd1d4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006cd1d8  04 20 83 e5                                      str r2, [r3, #4]
006cd1dc  20 20 9d e5                                      ldr r2, [sp, #0x20]
006cd1e0  08 20 83 e5                                      str r2, [r3, #8]
006cd1e4  10 30 95 e5                                      ldr r3, [r5, #0x10]
006cd1e8  0c 30 83 e2                                      add r3, r3, #0xc
006cd1ec  10 30 85 e5                                      str r3, [r5, #0x10]
006cd1f0  38 00 9d e5                                      ldr r0, [sp, #0x38]
006cd1f4  04 00 50 e1                                      cmp r0, r4
006cd1f8  02 00 00 0a                                      beq #0x6cd208
006cd1fc  00 00 50 e3                                      cmp r0, #0
006cd200  00 00 00 0a                                      beq #0x6cd208
006cd204  91 0c f1 eb                                      bl #0x310450
006cd208  01 70 87 e2                                      add r7, r7, #1
006cd20c  d5 ff ff ea                                      b #0x6cd168
006cd210  38 00 9d e5                                      ldr r0, [sp, #0x38]
006cd214  04 00 50 e1                                      cmp r0, r4
006cd218  02 00 00 0a                                      beq #0x6cd228
006cd21c  00 00 50 e3                                      cmp r0, #0
006cd220  00 00 00 0a                                      beq #0x6cd228
006cd224  89 0c f1 eb                                      bl #0x310450
006cd228  10 10 9d e5                                      ldr r1, [sp, #0x10]
006cd22c  00 00 51 e3                                      cmp r1, #0
006cd230  71 00 00 0a                                      beq #0x6cd3fc
006cd234  00 30 91 e5                                      ldr r3, [r1]
006cd238  02 00 13 e3                                      tst r3, #2
006cd23c  6e 00 00 0a                                      beq #0x6cd3fc
006cd240  10 70 95 e5                                      ldr r7, [r5, #0x10]
006cd244  0c 60 95 e5                                      ldr r6, [r5, #0xc]
006cd248  07 30 66 e0                                      rsb r3, r6, r7
006cd24c  43 31 a0 e1                                      asr r3, r3, #2
006cd250  03 81 83 e0                                      add r8, r3, r3, lsl #2
006cd254  08 82 88 e0                                      add r8, r8, r8, lsl #4
006cd258  08 84 88 e0                                      add r8, r8, r8, lsl #8
006cd25c  08 88 88 e0                                      add r8, r8, r8, lsl #16
006cd260  88 80 83 e0                                      add r8, r3, r8, lsl #1
006cd264  02 00 58 e3                                      cmp r8, #2
006cd268  63 00 00 9a                                      bls #0x6cd3fc
006cd26c  0c 00 17 e5                                      ldr r0, [r7, #-0xc]
006cd270  00 10 a0 e3                                      mov r1, #0
006cd274  44 03 f1 eb                                      bl #0x30df8c
006cd278  00 00 50 e3                                      cmp r0, #0
006cd27c  0c 40 47 e2                                      sub r4, r7, #0xc
006cd280  5d 00 00 0a                                      beq #0x6cd3fc
006cd284  04 00 94 e5                                      ldr r0, [r4, #4]
006cd288  00 10 a0 e3                                      mov r1, #0
006cd28c  3e 03 f1 eb                                      bl #0x30df8c
006cd290  00 00 50 e3                                      cmp r0, #0
006cd294  58 00 00 0a                                      beq #0x6cd3fc
006cd298  08 00 94 e5                                      ldr r0, [r4, #8]
006cd29c  00 10 a0 e3                                      mov r1, #0
006cd2a0  39 03 f1 eb                                      bl #0x30df8c
006cd2a4  00 00 50 e3                                      cmp r0, #0
006cd2a8  53 00 00 0a                                      beq #0x6cd3fc
006cd2ac  01 80 48 e2                                      sub r8, r8, #1
006cd2b0  0c 30 a0 e3                                      mov r3, #0xc
006cd2b4  93 68 23 e0                                      mla r3, r3, r8, r6
006cd2b8  0c 10 83 e2                                      add r1, r3, #0xc
006cd2bc  01 00 57 e1                                      cmp r7, r1
006cd2c0  16 00 00 0a                                      beq #0x6cd320
006cd2c4  07 70 61 e0                                      rsb r7, r1, r7
006cd2c8  47 71 a0 e1                                      asr r7, r7, #2
006cd2cc  07 21 87 e0                                      add r2, r7, r7, lsl #2
006cd2d0  02 22 82 e0                                      add r2, r2, r2, lsl #4
006cd2d4  02 24 82 e0                                      add r2, r2, r2, lsl #8
006cd2d8  02 28 82 e0                                      add r2, r2, r2, lsl #16
006cd2dc  82 20 87 e0                                      add r2, r7, r2, lsl #1
006cd2e0  00 00 52 e3                                      cmp r2, #0
006cd2e4  01 00 00 ca                                      bgt #0x6cd2f0
006cd2e8  0c 00 00 ea                                      b #0x6cd320
006cd2ec  0c 10 81 e2                                      add r1, r1, #0xc
006cd2f0  0c 40 93 e5                                      ldr r4, [r3, #0xc]
006cd2f4  10 00 93 e5                                      ldr r0, [r3, #0x10]
006cd2f8  14 c0 93 e5                                      ldr ip, [r3, #0x14]
006cd2fc  01 20 52 e2                                      subs r2, r2, #1
006cd300  00 40 83 e5                                      str r4, [r3]
006cd304  08 c0 83 e5                                      str ip, [r3, #8]
006cd308  04 00 83 e5                                      str r0, [r3, #4]
006cd30c  01 30 a0 e1                                      mov r3, r1
006cd310  f5 ff ff 1a                                      bne #0x6cd2ec
006cd314  10 40 95 e5                                      ldr r4, [r5, #0x10]
006cd318  0c 60 95 e5                                      ldr r6, [r5, #0xc]
006cd31c  0c 40 44 e2                                      sub r4, r4, #0xc
006cd320  04 30 66 e0                                      rsb r3, r6, r4
006cd324  43 31 a0 e1                                      asr r3, r3, #2
006cd328  10 40 85 e5                                      str r4, [r5, #0x10]
006cd32c  03 71 83 e0                                      add r7, r3, r3, lsl #2
006cd330  07 72 87 e0                                      add r7, r7, r7, lsl #4
006cd334  07 74 87 e0                                      add r7, r7, r7, lsl #8
006cd338  07 78 87 e0                                      add r7, r7, r7, lsl #16
006cd33c  87 70 83 e0                                      add r7, r3, r7, lsl #1
006cd340  02 00 57 e3                                      cmp r7, #2
006cd344  2c 00 00 9a                                      bls #0x6cd3fc
006cd348  0c 00 14 e5                                      ldr r0, [r4, #-0xc]
006cd34c  00 10 a0 e3                                      mov r1, #0
006cd350  0d 03 f1 eb                                      bl #0x30df8c
006cd354  00 00 50 e3                                      cmp r0, #0
006cd358  0c 80 44 e2                                      sub r8, r4, #0xc
006cd35c  26 00 00 0a                                      beq #0x6cd3fc
006cd360  04 00 98 e5                                      ldr r0, [r8, #4]
006cd364  00 10 a0 e3                                      mov r1, #0
006cd368  07 03 f1 eb                                      bl #0x30df8c
006cd36c  00 00 50 e3                                      cmp r0, #0
006cd370  21 00 00 0a                                      beq #0x6cd3fc
006cd374  08 00 98 e5                                      ldr r0, [r8, #8]
006cd378  00 10 a0 e3                                      mov r1, #0
006cd37c  02 03 f1 eb                                      bl #0x30df8c
006cd380  00 00 50 e3                                      cmp r0, #0
006cd384  1c 00 00 0a                                      beq #0x6cd3fc
006cd388  0c 30 a0 e3                                      mov r3, #0xc
006cd38c  01 70 47 e2                                      sub r7, r7, #1
006cd390  93 67 26 e0                                      mla r6, r3, r7, r6
006cd394  03 20 86 e0                                      add r2, r6, r3
006cd398  02 00 54 e1                                      cmp r4, r2
006cd39c  15 00 00 0a                                      beq #0x6cd3f8
006cd3a0  04 40 62 e0                                      rsb r4, r2, r4
006cd3a4  44 41 a0 e1                                      asr r4, r4, #2
006cd3a8  04 31 84 e0                                      add r3, r4, r4, lsl #2
006cd3ac  03 32 83 e0                                      add r3, r3, r3, lsl #4
006cd3b0  03 34 83 e0                                      add r3, r3, r3, lsl #8
006cd3b4  03 38 83 e0                                      add r3, r3, r3, lsl #16
006cd3b8  83 30 84 e0                                      add r3, r4, r3, lsl #1
006cd3bc  00 00 53 e3                                      cmp r3, #0
006cd3c0  01 00 00 ca                                      bgt #0x6cd3cc
006cd3c4  0b 00 00 ea                                      b #0x6cd3f8
006cd3c8  0c 20 82 e2                                      add r2, r2, #0xc
006cd3cc  0c c0 96 e5                                      ldr ip, [r6, #0xc]
006cd3d0  10 10 96 e5                                      ldr r1, [r6, #0x10]
006cd3d4  14 00 96 e5                                      ldr r0, [r6, #0x14]
006cd3d8  01 30 53 e2                                      subs r3, r3, #1
006cd3dc  00 c0 86 e5                                      str ip, [r6]
006cd3e0  08 00 86 e5                                      str r0, [r6, #8]
006cd3e4  04 10 86 e5                                      str r1, [r6, #4]
006cd3e8  02 60 a0 e1                                      mov r6, r2
006cd3ec  f5 ff ff 1a                                      bne #0x6cd3c8
006cd3f0  10 80 95 e5                                      ldr r8, [r5, #0x10]
006cd3f4  0c 80 48 e2                                      sub r8, r8, #0xc
006cd3f8  10 80 85 e5                                      str r8, [r5, #0x10]
006cd3fc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006cd400  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006cd404  0c 30 99 e7                                      ldr r3, [sb, ip]
006cd408  00 30 93 e5                                      ldr r3, [r3]
006cd40c  03 00 52 e1                                      cmp r2, r3
006cd410  57 00 00 1a                                      bne #0x6cd574
006cd414  44 d0 8d e2                                      add sp, sp, #0x44
006cd418  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006cd41c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006cd420  08 10 9d e5                                      ldr r1, [sp, #8]
006cd424  0b 30 63 e0                                      rsb r3, r3, fp
006cd428  43 31 a0 e1                                      asr r3, r3, #2
006cd42c  03 21 83 e0                                      add r2, r3, r3, lsl #2
006cd430  02 22 82 e0                                      add r2, r2, r2, lsl #4
006cd434  02 24 82 e0                                      add r2, r2, r2, lsl #8
006cd438  02 28 82 e0                                      add r2, r2, r2, lsl #16
006cd43c  82 30 83 e0                                      add r3, r3, r2, lsl #1
006cd440  01 00 53 e3                                      cmp r3, #1
006cd444  03 20 83 20                                      addhs r2, r3, r3
006cd448  01 20 83 32                                      addlo r2, r3, #1
006cd44c  01 00 52 e1                                      cmp r2, r1
006cd450  41 00 00 9a                                      bls #0x6cd55c
006cd454  03 20 e0 e3                                      mvn r2, #3
006cd458  14 20 8d e5                                      str r2, [sp, #0x14]
006cd45c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006cd460  00 10 a0 e3                                      mov r1, #0
006cd464  3f 0c f1 eb                                      bl #0x310568
006cd468  0c 20 95 e5                                      ldr r2, [r5, #0xc]
006cd46c  00 30 a0 e1                                      mov r3, r0
006cd470  0b b0 62 e0                                      rsb fp, r2, fp
006cd474  4b b1 a0 e1                                      asr fp, fp, #2
006cd478  0b e1 8b e0                                      add lr, fp, fp, lsl #2
006cd47c  0e e2 8e e0                                      add lr, lr, lr, lsl #4
006cd480  0e e4 8e e0                                      add lr, lr, lr, lsl #8
006cd484  0e e8 8e e0                                      add lr, lr, lr, lsl #16
006cd488  8e e0 8b e0                                      add lr, fp, lr, lsl #1
006cd48c  00 00 5e e3                                      cmp lr, #0
006cd490  00 e0 a0 d1                                      movle lr, r0
006cd494  0d 00 00 da                                      ble #0x6cd4d0
006cd498  0e 00 a0 e1                                      mov r0, lr
006cd49c  03 10 a0 e1                                      mov r1, r3
006cd4a0  00 c0 92 e5                                      ldr ip, [r2]
006cd4a4  01 00 50 e2                                      subs r0, r0, #1
006cd4a8  00 c0 81 e5                                      str ip, [r1]
006cd4ac  04 c0 92 e5                                      ldr ip, [r2, #4]
006cd4b0  04 c0 81 e5                                      str ip, [r1, #4]
006cd4b4  08 c0 92 e5                                      ldr ip, [r2, #8]
006cd4b8  0c 20 82 e2                                      add r2, r2, #0xc
006cd4bc  08 c0 81 e5                                      str ip, [r1, #8]
006cd4c0  0c 10 81 e2                                      add r1, r1, #0xc
006cd4c4  f5 ff ff 1a                                      bne #0x6cd4a0
006cd4c8  0c c0 a0 e3                                      mov ip, #0xc
006cd4cc  9c 3e 2e e0                                      mla lr, ip, lr, r3
006cd4d0  18 20 9d e5                                      ldr r2, [sp, #0x18]
006cd4d4  0c b0 8e e2                                      add fp, lr, #0xc
006cd4d8  00 20 8e e5                                      str r2, [lr]
006cd4dc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006cd4e0  04 20 8e e5                                      str r2, [lr, #4]
006cd4e4  20 20 9d e5                                      ldr r2, [sp, #0x20]
006cd4e8  08 20 8e e5                                      str r2, [lr, #8]
006cd4ec  10 00 95 e5                                      ldr r0, [r5, #0x10]
006cd4f0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
006cd4f4  02 00 50 e1                                      cmp r0, r2
006cd4f8  0e 00 00 0a                                      beq #0x6cd538
006cd4fc  0c 10 40 e2                                      sub r1, r0, #0xc
006cd500  01 20 62 e0                                      rsb r2, r2, r1
006cd504  22 21 a0 e1                                      lsr r2, r2, #2
006cd508  02 11 82 e0                                      add r1, r2, r2, lsl #2
006cd50c  81 12 81 e0                                      add r1, r1, r1, lsl #5
006cd510  81 10 82 e0                                      add r1, r2, r1, lsl #1
006cd514  81 12 81 e0                                      add r1, r1, r1, lsl #5
006cd518  81 c7 a0 e1                                      lsl ip, r1, #0xf
006cd51c  0c 10 61 e0                                      rsb r1, r1, ip
006cd520  81 20 82 e0                                      add r2, r2, r1, lsl #1
006cd524  03 21 c2 e3                                      bic r2, r2, #0xc0000000
006cd528  0b 10 e0 e3                                      mvn r1, #0xb
006cd52c  91 02 02 e0                                      mul r2, r1, r2
006cd530  01 20 82 e0                                      add r2, r2, r1
006cd534  02 00 80 e0                                      add r0, r0, r2
006cd538  04 30 8d e5                                      str r3, [sp, #4]
006cd53c  c3 0b f1 eb                                      bl #0x310450
006cd540  04 30 9d e5                                      ldr r3, [sp, #4]
006cd544  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006cd548  10 b0 85 e5                                      str fp, [r5, #0x10]
006cd54c  0c 30 85 e5                                      str r3, [r5, #0xc]
006cd550  0c 20 83 e0                                      add r2, r3, ip
006cd554  14 20 85 e5                                      str r2, [r5, #0x14]
006cd558  24 ff ff ea                                      b #0x6cd1f0
006cd55c  02 00 53 e1                                      cmp r3, r2
006cd560  bb ff ff 8a                                      bhi #0x6cd454
006cd564  0c 30 a0 e3                                      mov r3, #0xc
006cd568  93 02 02 e0                                      mul r2, r3, r2
006cd56c  14 20 8d e5                                      str r2, [sp, #0x14]
006cd570  b9 ff ff ea                                      b #0x6cd45c
006cd574  65 03 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006cd578  b4 79 2c 00 ac 40 00 00 f0 c2 20 00 10 e3 21 00  .byte 0xb4, 0x79, 0x2c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0xc2, 0x20, 0x00, 0x10, 0xe3, 0x21, 0x00
006cd588  38 56 1f 00                                      .byte 0x38, 0x56, 0x1f, 0x00
