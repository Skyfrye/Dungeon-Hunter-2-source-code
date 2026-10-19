; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033cc58, declared_size=12, range_size=12, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZNK17TouchScreenIPhone12getLeftBoundEv
; demangled: TouchScreenIPhone::getLeftBound() const
; decoder-mode: arm
0033cc58  6d 3f a0 e3                                      mov r3, #0x1b4
0033cc5c  f3 00 90 e1                                      ldrsh r0, [r0, r3]
0033cc60  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033cc64, declared_size=12, range_size=12, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZNK17TouchScreenIPhone13getRightBoundEv
; demangled: TouchScreenIPhone::getRightBound() const
; decoder-mode: arm
0033cc64  b6 31 00 e3                                      movw r3, #0x1b6
0033cc68  f3 00 90 e1                                      ldrsh r0, [r0, r3]
0033cc6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033cc70, declared_size=12, range_size=12, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZNK17TouchScreenIPhone11getTopBoundEv
; demangled: TouchScreenIPhone::getTopBound() const
; decoder-mode: arm
0033cc70  6e 3f a0 e3                                      mov r3, #0x1b8
0033cc74  f3 00 90 e1                                      ldrsh r0, [r0, r3]
0033cc78  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033cc7c, declared_size=12, range_size=12, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZNK17TouchScreenIPhone14getBottomBoundEv
; demangled: TouchScreenIPhone::getBottomBound() const
; decoder-mode: arm
0033cc7c  ba 31 00 e3                                      movw r3, #0x1ba
0033cc80  f3 00 90 e1                                      ldrsh r0, [r0, r3]
0033cc84  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033cca8, declared_size=4, range_size=4, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZNK17TouchScreenIPhone18getTouchIDInRegionERKN6glitch4core4rectIfEE
; demangled: TouchScreenIPhone::getTouchIDInRegion(glitch::core::rect<float> const&) const
; decoder-mode: arm
0033cca8  0e f9 ff ea                                      b #0x33b0e8

; FUNCTION 0x0033ccac, declared_size=4, range_size=4, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZNK17TouchScreenIPhone15isRegionPressedERKN6glitch4core4rectIfEE
; demangled: TouchScreenIPhone::isRegionPressed(glitch::core::rect<float> const&) const
; decoder-mode: arm
0033ccac  82 f8 ff ea                                      b #0x33aebc

; FUNCTION 0x0033ccb0, declared_size=52, range_size=52, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZN17TouchScreenIPhoneD1Ev
; demangled: TouchScreenIPhone::~TouchScreenIPhone()
; decoder-mode: arm
0033ccb0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0033ccb4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0033ccb8  10 40 2d e9                                      push {r4, lr}
0033ccbc  03 30 8f e0                                      add r3, pc, r3
0033ccc0  02 20 93 e7                                      ldr r2, [r3, r2]
0033ccc4  00 40 a0 e1                                      mov r4, r0
0033ccc8  08 20 82 e2                                      add r2, r2, #8
0033cccc  00 20 80 e5                                      str r2, [r0]
0033ccd0  63 fc ff eb                                      bl #0x33be64
0033ccd4  04 00 a0 e1                                      mov r0, r4
0033ccd8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033ccdc  d4 7d 65 00 c8 1c 00 00                          .byte 0xd4, 0x7d, 0x65, 0x00, 0xc8, 0x1c, 0x00, 0x00

; FUNCTION 0x0033cce4, declared_size=28, range_size=28, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZN17TouchScreenIPhoneD0Ev
; demangled: TouchScreenIPhone::~TouchScreenIPhone()
; decoder-mode: arm
0033cce4  10 40 2d e9                                      push {r4, lr}
0033cce8  00 40 a0 e1                                      mov r4, r0
0033ccec  ef ff ff eb                                      bl #0x33ccb0
0033ccf0  04 00 a0 e1                                      mov r0, r4
0033ccf4  d1 4d ff eb                                      bl #0x310440
0033ccf8  04 00 a0 e1                                      mov r0, r4
0033ccfc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033cd00, declared_size=52, range_size=52, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZN17TouchScreenIPhoneD2Ev
; demangled: TouchScreenIPhone::~TouchScreenIPhone()
; decoder-mode: arm
0033cd00  24 30 9f e5                                      ldr r3, [pc, #0x24]
0033cd04  24 20 9f e5                                      ldr r2, [pc, #0x24]
0033cd08  10 40 2d e9                                      push {r4, lr}
0033cd0c  03 30 8f e0                                      add r3, pc, r3
0033cd10  02 20 93 e7                                      ldr r2, [r3, r2]
0033cd14  00 40 a0 e1                                      mov r4, r0
0033cd18  08 20 82 e2                                      add r2, r2, #8
0033cd1c  00 20 80 e5                                      str r2, [r0]
0033cd20  4f fc ff eb                                      bl #0x33be64
0033cd24  04 00 a0 e1                                      mov r0, r4
0033cd28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033cd2c  84 7d 65 00 c8 1c 00 00                          .byte 0x84, 0x7d, 0x65, 0x00, 0xc8, 0x1c, 0x00, 0x00

; FUNCTION 0x0033cd34, declared_size=152, range_size=152, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZN17TouchScreenIPhoneC1Efffff
; demangled: TouchScreenIPhone::TouchScreenIPhone(float, float, float, float, float)
; decoder-mode: arm
0033cd34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033cd38  00 40 a0 e1                                      mov r4, r0
0033cd3c  03 00 a0 e1                                      mov r0, r3
0033cd40  01 a0 a0 e1                                      mov sl, r1
0033cd44  02 80 a0 e1                                      mov r8, r2
0033cd48  df 45 ff eb                                      bl #0x30e4cc
0033cd4c  70 70 ff e6                                      uxth r7, r0
0033cd50  20 00 9d e5                                      ldr r0, [sp, #0x20]
0033cd54  dc 45 ff eb                                      bl #0x30e4cc
0033cd58  70 60 ff e6                                      uxth r6, r0
0033cd5c  77 10 bf e6                                      sxth r1, r7
0033cd60  76 20 bf e6                                      sxth r2, r6
0033cd64  04 00 a0 e1                                      mov r0, r4
0033cd68  54 50 9f e5                                      ldr r5, [pc, #0x54]
0033cd6c  49 fd ff eb                                      bl #0x33c298
0033cd70  50 30 9f e5                                      ldr r3, [pc, #0x50]
0033cd74  05 50 8f e0                                      add r5, pc, r5
0033cd78  0a 00 a0 e1                                      mov r0, sl
0033cd7c  03 30 95 e7                                      ldr r3, [r5, r3]
0033cd80  08 30 83 e2                                      add r3, r3, #8
0033cd84  00 30 84 e5                                      str r3, [r4]
0033cd88  cf 45 ff eb                                      bl #0x30e4cc
0033cd8c  6d 3f a0 e3                                      mov r3, #0x1b4
0033cd90  b3 00 84 e1                                      strh r0, [r4, r3]
0033cd94  b6 31 00 e3                                      movw r3, #0x1b6
0033cd98  b3 70 84 e1                                      strh r7, [r4, r3]
0033cd9c  08 00 a0 e1                                      mov r0, r8
0033cda0  c9 45 ff eb                                      bl #0x30e4cc
0033cda4  6e 3f a0 e3                                      mov r3, #0x1b8
0033cda8  b3 00 84 e1                                      strh r0, [r4, r3]
0033cdac  ba 31 00 e3                                      movw r3, #0x1ba
0033cdb0  b3 60 84 e1                                      strh r6, [r4, r3]
0033cdb4  24 30 9d e5                                      ldr r3, [sp, #0x24]
0033cdb8  04 00 a0 e1                                      mov r0, r4
0033cdbc  b0 31 84 e5                                      str r3, [r4, #0x1b0]
0033cdc0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0033cdc4  1c 7d 65 00 c8 1c 00 00                          .byte 0x1c, 0x7d, 0x65, 0x00, 0xc8, 0x1c, 0x00, 0x00

; FUNCTION 0x0033cdcc, declared_size=152, range_size=152, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZN17TouchScreenIPhoneC2Efffff
; demangled: TouchScreenIPhone::TouchScreenIPhone(float, float, float, float, float)
; decoder-mode: arm
0033cdcc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033cdd0  00 40 a0 e1                                      mov r4, r0
0033cdd4  03 00 a0 e1                                      mov r0, r3
0033cdd8  01 a0 a0 e1                                      mov sl, r1
0033cddc  02 80 a0 e1                                      mov r8, r2
0033cde0  b9 45 ff eb                                      bl #0x30e4cc
0033cde4  70 70 ff e6                                      uxth r7, r0
0033cde8  20 00 9d e5                                      ldr r0, [sp, #0x20]
0033cdec  b6 45 ff eb                                      bl #0x30e4cc
0033cdf0  70 60 ff e6                                      uxth r6, r0
0033cdf4  77 10 bf e6                                      sxth r1, r7
0033cdf8  76 20 bf e6                                      sxth r2, r6
0033cdfc  04 00 a0 e1                                      mov r0, r4
0033ce00  54 50 9f e5                                      ldr r5, [pc, #0x54]
0033ce04  23 fd ff eb                                      bl #0x33c298
0033ce08  50 30 9f e5                                      ldr r3, [pc, #0x50]
0033ce0c  05 50 8f e0                                      add r5, pc, r5
0033ce10  0a 00 a0 e1                                      mov r0, sl
0033ce14  03 30 95 e7                                      ldr r3, [r5, r3]
0033ce18  08 30 83 e2                                      add r3, r3, #8
0033ce1c  00 30 84 e5                                      str r3, [r4]
0033ce20  a9 45 ff eb                                      bl #0x30e4cc
0033ce24  6d 3f a0 e3                                      mov r3, #0x1b4
0033ce28  b3 00 84 e1                                      strh r0, [r4, r3]
0033ce2c  b6 31 00 e3                                      movw r3, #0x1b6
0033ce30  b3 70 84 e1                                      strh r7, [r4, r3]
0033ce34  08 00 a0 e1                                      mov r0, r8
0033ce38  a3 45 ff eb                                      bl #0x30e4cc
0033ce3c  6e 3f a0 e3                                      mov r3, #0x1b8
0033ce40  b3 00 84 e1                                      strh r0, [r4, r3]
0033ce44  ba 31 00 e3                                      movw r3, #0x1ba
0033ce48  b3 60 84 e1                                      strh r6, [r4, r3]
0033ce4c  24 30 9d e5                                      ldr r3, [sp, #0x24]
0033ce50  04 00 a0 e1                                      mov r0, r4
0033ce54  b0 31 84 e5                                      str r3, [r4, #0x1b0]
0033ce58  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0033ce5c  84 7c 65 00 c8 1c 00 00                          .byte 0x84, 0x7c, 0x65, 0x00, 0xc8, 0x1c, 0x00, 0x00

; FUNCTION 0x0033ceb4, declared_size=208, range_size=208, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZN17TouchScreenIPhone10touchEndedEffdiffl
; demangled: TouchScreenIPhone::touchEnded(float, float, double, int, float, float, long)
; decoder-mode: arm
0033ceb4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033ceb8  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
0033cebc  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
0033cec0  20 d0 4d e2                                      sub sp, sp, #0x20
0033cec4  04 40 8f e0                                      add r4, pc, r4
0033cec8  03 50 94 e7                                      ldr r5, [r4, r3]
0033cecc  01 70 a0 e1                                      mov r7, r1
0033ced0  54 10 9d e5                                      ldr r1, [sp, #0x54]
0033ced4  00 30 95 e5                                      ldr r3, [r5]
0033ced8  02 90 a0 e1                                      mov sb, r2
0033cedc  00 60 a0 e1                                      mov r6, r0
0033cee0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0033cee4  3c f9 ff eb                                      bl #0x33b3dc
0033cee8  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0033ceec  00 a0 a0 e1                                      mov sl, r0
0033cef0  04 80 8d e2                                      add r8, sp, #4
0033cef4  03 40 94 e7                                      ldr r4, [r4, r3]
0033cef8  04 00 a0 e1                                      mov r0, r4
0033cefc  61 ea ff eb                                      bl #0x337888
0033cf00  78 10 9f e5                                      ldr r1, [pc, #0x78]
0033cf04  08 00 a0 e1                                      mov r0, r8
0033cf08  14 80 8d e5                                      str r8, [sp, #0x14]
0033cf0c  01 10 8f e0                                      add r1, pc, r1
0033cf10  12 10 81 e2                                      add r1, r1, #0x12
0033cf14  18 80 8d e5                                      str r8, [sp, #0x18]
0033cf18  d1 ff ff eb                                      bl #0x33ce64
0033cf1c  08 10 a0 e1                                      mov r1, r8
0033cf20  04 00 a0 e1                                      mov r0, r4
0033cf24  d7 ea ff eb                                      bl #0x337a88
0033cf28  08 00 a0 e1                                      mov r0, r8
0033cf2c  9e 5a ff eb                                      bl #0x3139ac
0033cf30  07 00 a0 e1                                      mov r0, r7
0033cf34  64 45 ff eb                                      bl #0x30e4cc
0033cf38  b0 00 cd e1                                      strh r0, [sp]
0033cf3c  09 00 a0 e1                                      mov r0, sb
0033cf40  61 45 ff eb                                      bl #0x30e4cc
0033cf44  0a 20 a0 e1                                      mov r2, sl
0033cf48  b2 00 cd e1                                      strh r0, [sp, #2]
0033cf4c  0d 10 a0 e1                                      mov r1, sp
0033cf50  06 00 a0 e1                                      mov r0, r6
0033cf54  d7 f7 ff eb                                      bl #0x33aeb8
0033cf58  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0033cf5c  00 30 95 e5                                      ldr r3, [r5]
0033cf60  03 00 52 e1                                      cmp r2, r3
0033cf64  01 00 00 1a                                      bne #0x33cf70
0033cf68  20 d0 8d e2                                      add sp, sp, #0x20
0033cf6c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033cf70  e6 44 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033cf74  cc 7b 65 00 ac 40 00 00 84 08 00 00 d4 31 58 00  .byte 0xcc, 0x7b, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd4, 0x31, 0x58, 0x00

; FUNCTION 0x0033cf84, declared_size=208, range_size=208, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZN17TouchScreenIPhone14touchCancelledEffdiffl
; demangled: TouchScreenIPhone::touchCancelled(float, float, double, int, float, float, long)
; decoder-mode: arm
0033cf84  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033cf88  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
0033cf8c  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
0033cf90  20 d0 4d e2                                      sub sp, sp, #0x20
0033cf94  04 40 8f e0                                      add r4, pc, r4
0033cf98  03 50 94 e7                                      ldr r5, [r4, r3]
0033cf9c  01 70 a0 e1                                      mov r7, r1
0033cfa0  54 10 9d e5                                      ldr r1, [sp, #0x54]
0033cfa4  00 30 95 e5                                      ldr r3, [r5]
0033cfa8  02 90 a0 e1                                      mov sb, r2
0033cfac  00 60 a0 e1                                      mov r6, r0
0033cfb0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0033cfb4  08 f9 ff eb                                      bl #0x33b3dc
0033cfb8  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0033cfbc  00 a0 a0 e1                                      mov sl, r0
0033cfc0  04 80 8d e2                                      add r8, sp, #4
0033cfc4  03 40 94 e7                                      ldr r4, [r4, r3]
0033cfc8  04 00 a0 e1                                      mov r0, r4
0033cfcc  2d ea ff eb                                      bl #0x337888
0033cfd0  78 10 9f e5                                      ldr r1, [pc, #0x78]
0033cfd4  08 00 a0 e1                                      mov r0, r8
0033cfd8  14 80 8d e5                                      str r8, [sp, #0x14]
0033cfdc  01 10 8f e0                                      add r1, pc, r1
0033cfe0  12 10 81 e2                                      add r1, r1, #0x12
0033cfe4  18 80 8d e5                                      str r8, [sp, #0x18]
0033cfe8  9d ff ff eb                                      bl #0x33ce64
0033cfec  08 10 a0 e1                                      mov r1, r8
0033cff0  04 00 a0 e1                                      mov r0, r4
0033cff4  a3 ea ff eb                                      bl #0x337a88
0033cff8  08 00 a0 e1                                      mov r0, r8
0033cffc  6a 5a ff eb                                      bl #0x3139ac
0033d000  07 00 a0 e1                                      mov r0, r7
0033d004  30 45 ff eb                                      bl #0x30e4cc
0033d008  b0 00 cd e1                                      strh r0, [sp]
0033d00c  09 00 a0 e1                                      mov r0, sb
0033d010  2d 45 ff eb                                      bl #0x30e4cc
0033d014  0a 20 a0 e1                                      mov r2, sl
0033d018  b2 00 cd e1                                      strh r0, [sp, #2]
0033d01c  0d 10 a0 e1                                      mov r1, sp
0033d020  06 00 a0 e1                                      mov r0, r6
0033d024  84 f7 ff eb                                      bl #0x33ae3c
0033d028  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0033d02c  00 30 95 e5                                      ldr r3, [r5]
0033d030  03 00 52 e1                                      cmp r2, r3
0033d034  01 00 00 1a                                      bne #0x33d040
0033d038  20 d0 8d e2                                      add sp, sp, #0x20
0033d03c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033d040  b2 44 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033d044  fc 7a 65 00 ac 40 00 00 84 08 00 00 04 31 58 00  .byte 0xfc, 0x7a, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x04, 0x31, 0x58, 0x00

; FUNCTION 0x0033d054, declared_size=208, range_size=208, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZN17TouchScreenIPhone10touchBeganEffdiffl
; demangled: TouchScreenIPhone::touchBegan(float, float, double, int, float, float, long)
; decoder-mode: arm
0033d054  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033d058  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
0033d05c  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
0033d060  20 d0 4d e2                                      sub sp, sp, #0x20
0033d064  04 40 8f e0                                      add r4, pc, r4
0033d068  03 50 94 e7                                      ldr r5, [r4, r3]
0033d06c  01 70 a0 e1                                      mov r7, r1
0033d070  54 10 9d e5                                      ldr r1, [sp, #0x54]
0033d074  00 30 95 e5                                      ldr r3, [r5]
0033d078  02 90 a0 e1                                      mov sb, r2
0033d07c  00 60 a0 e1                                      mov r6, r0
0033d080  1c 30 8d e5                                      str r3, [sp, #0x1c]
0033d084  d4 f8 ff eb                                      bl #0x33b3dc
0033d088  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0033d08c  00 a0 a0 e1                                      mov sl, r0
0033d090  04 80 8d e2                                      add r8, sp, #4
0033d094  03 40 94 e7                                      ldr r4, [r4, r3]
0033d098  04 00 a0 e1                                      mov r0, r4
0033d09c  f9 e9 ff eb                                      bl #0x337888
0033d0a0  78 10 9f e5                                      ldr r1, [pc, #0x78]
0033d0a4  08 00 a0 e1                                      mov r0, r8
0033d0a8  14 80 8d e5                                      str r8, [sp, #0x14]
0033d0ac  01 10 8f e0                                      add r1, pc, r1
0033d0b0  12 10 81 e2                                      add r1, r1, #0x12
0033d0b4  18 80 8d e5                                      str r8, [sp, #0x18]
0033d0b8  69 ff ff eb                                      bl #0x33ce64
0033d0bc  08 10 a0 e1                                      mov r1, r8
0033d0c0  04 00 a0 e1                                      mov r0, r4
0033d0c4  6f ea ff eb                                      bl #0x337a88
0033d0c8  08 00 a0 e1                                      mov r0, r8
0033d0cc  36 5a ff eb                                      bl #0x3139ac
0033d0d0  07 00 a0 e1                                      mov r0, r7
0033d0d4  fc 44 ff eb                                      bl #0x30e4cc
0033d0d8  b0 00 cd e1                                      strh r0, [sp]
0033d0dc  09 00 a0 e1                                      mov r0, sb
0033d0e0  f9 44 ff eb                                      bl #0x30e4cc
0033d0e4  0a 20 a0 e1                                      mov r2, sl
0033d0e8  b2 00 cd e1                                      strh r0, [sp, #2]
0033d0ec  0d 10 a0 e1                                      mov r1, sp
0033d0f0  06 00 a0 e1                                      mov r0, r6
0033d0f4  ca f6 ff eb                                      bl #0x33ac24
0033d0f8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0033d0fc  00 30 95 e5                                      ldr r3, [r5]
0033d100  03 00 52 e1                                      cmp r2, r3
0033d104  01 00 00 1a                                      bne #0x33d110
0033d108  20 d0 8d e2                                      add sp, sp, #0x20
0033d10c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033d110  7e 44 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033d114  2c 7a 65 00 ac 40 00 00 84 08 00 00 34 30 58 00  .byte 0x2c, 0x7a, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x34, 0x30, 0x58, 0x00

; FUNCTION 0x0033d124, declared_size=208, range_size=208, mode=arm
; class-group: TouchScreenIPhone
; alias: _ZN17TouchScreenIPhone10touchMovedEffdiffl
; demangled: TouchScreenIPhone::touchMoved(float, float, double, int, float, float, long)
; decoder-mode: arm
0033d124  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033d128  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
0033d12c  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
0033d130  20 d0 4d e2                                      sub sp, sp, #0x20
0033d134  04 40 8f e0                                      add r4, pc, r4
0033d138  03 50 94 e7                                      ldr r5, [r4, r3]
0033d13c  01 70 a0 e1                                      mov r7, r1
0033d140  54 10 9d e5                                      ldr r1, [sp, #0x54]
0033d144  00 30 95 e5                                      ldr r3, [r5]
0033d148  02 90 a0 e1                                      mov sb, r2
0033d14c  00 60 a0 e1                                      mov r6, r0
0033d150  1c 30 8d e5                                      str r3, [sp, #0x1c]
0033d154  a0 f8 ff eb                                      bl #0x33b3dc
0033d158  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0033d15c  00 a0 a0 e1                                      mov sl, r0
0033d160  04 80 8d e2                                      add r8, sp, #4
0033d164  03 40 94 e7                                      ldr r4, [r4, r3]
0033d168  04 00 a0 e1                                      mov r0, r4
0033d16c  c5 e9 ff eb                                      bl #0x337888
0033d170  78 10 9f e5                                      ldr r1, [pc, #0x78]
0033d174  08 00 a0 e1                                      mov r0, r8
0033d178  14 80 8d e5                                      str r8, [sp, #0x14]
0033d17c  01 10 8f e0                                      add r1, pc, r1
0033d180  12 10 81 e2                                      add r1, r1, #0x12
0033d184  18 80 8d e5                                      str r8, [sp, #0x18]
0033d188  35 ff ff eb                                      bl #0x33ce64
0033d18c  08 10 a0 e1                                      mov r1, r8
0033d190  04 00 a0 e1                                      mov r0, r4
0033d194  3b ea ff eb                                      bl #0x337a88
0033d198  08 00 a0 e1                                      mov r0, r8
0033d19c  02 5a ff eb                                      bl #0x3139ac
0033d1a0  07 00 a0 e1                                      mov r0, r7
0033d1a4  c8 44 ff eb                                      bl #0x30e4cc
0033d1a8  b0 00 cd e1                                      strh r0, [sp]
0033d1ac  09 00 a0 e1                                      mov r0, sb
0033d1b0  c5 44 ff eb                                      bl #0x30e4cc
0033d1b4  0a 20 a0 e1                                      mov r2, sl
0033d1b8  b2 00 cd e1                                      strh r0, [sp, #2]
0033d1bc  0d 10 a0 e1                                      mov r1, sp
0033d1c0  06 00 a0 e1                                      mov r0, r6
0033d1c4  d7 f6 ff eb                                      bl #0x33ad28
0033d1c8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0033d1cc  00 30 95 e5                                      ldr r3, [r5]
0033d1d0  03 00 52 e1                                      cmp r2, r3
0033d1d4  01 00 00 1a                                      bne #0x33d1e0
0033d1d8  20 d0 8d e2                                      add sp, sp, #0x20
0033d1dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033d1e0  4a 44 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033d1e4  5c 79 65 00 ac 40 00 00 84 08 00 00 64 2f 58 00  .byte 0x5c, 0x79, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x64, 0x2f, 0x58, 0x00
