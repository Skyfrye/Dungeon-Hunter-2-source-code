; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033a9a4, declared_size=24, range_size=24, mode=arm
; class-group: TouchScreenBase
; alias: _ZNK15TouchScreenBase13_IsQueueEmptyEv
; demangled: TouchScreenBase::_IsQueueEmpty() const
; decoder-mode: arm
0033a9a4  a4 31 90 e5                                      ldr r3, [r0, #0x1a4]
0033a9a8  a0 01 90 e5                                      ldr r0, [r0, #0x1a0]
0033a9ac  03 00 50 e1                                      cmp r0, r3
0033a9b0  00 00 a0 13                                      movne r0, #0
0033a9b4  01 00 a0 03                                      moveq r0, #1
0033a9b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033a9bc, declared_size=284, range_size=284, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase11_AddToQueueENS_10TouchEventERK7Point2DIfEl
; demangled: TouchScreenBase::_AddToQueue(TouchScreenBase::TouchEvent, Point2D<float> const&, long)
; decoder-mode: arm
0033a9bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033a9c0  a4 51 90 e5                                      ldr r5, [r0, #0x1a4]
0033a9c4  02 70 a0 e1                                      mov r7, r2
0033a9c8  03 80 a0 e1                                      mov r8, r3
0033a9cc  01 20 85 e2                                      add r2, r5, #1
0033a9d0  0f 00 52 e3                                      cmp r2, #0xf
0033a9d4  00 30 a0 83                                      movhi r3, #0
0033a9d8  a4 21 80 e5                                      str r2, [r0, #0x1a4]
0033a9dc  a4 31 80 85                                      strhi r3, [r0, #0x1a4]
0033a9e0  00 40 a0 e1                                      mov r4, r0
0033a9e4  01 60 a0 e1                                      mov r6, r1
0033a9e8  ed ff ff eb                                      bl #0x33a9a4
0033a9ec  00 00 50 e3                                      cmp r0, #0
0033a9f0  36 00 00 1a                                      bne #0x33aad0
0033a9f4  a0 c1 94 e5                                      ldr ip, [r4, #0x1a0]
0033a9f8  05 00 5c e1                                      cmp ip, r5
0033a9fc  94 e1 94 05                                      ldreq lr, [r4, #0x194]
0033aa00  22 00 00 0a                                      beq #0x33aa90
0033aa04  94 01 94 e5                                      ldr r0, [r4, #0x194]
0033aa08  05 20 a0 e1                                      mov r2, r5
0033aa0c  0c a0 a0 e3                                      mov sl, #0xc
0033aa10  00 e0 a0 e1                                      mov lr, r0
0033aa14  01 00 00 ea                                      b #0x33aa20
0033aa18  0c 00 52 e1                                      cmp r2, ip
0033aa1c  1b 00 00 0a                                      beq #0x33aa90
0033aa20  00 00 52 e3                                      cmp r2, #0
0033aa24  01 20 42 12                                      subne r2, r2, #1
0033aa28  9a 02 03 10                                      mulne r3, sl, r2
0033aa2c  b4 30 a0 03                                      moveq r3, #0xb4
0033aa30  03 10 80 e0                                      add r1, r0, r3
0033aa34  08 10 91 e5                                      ldr r1, [r1, #8]
0033aa38  0f 20 a0 03                                      moveq r2, #0xf
0033aa3c  08 00 51 e1                                      cmp r1, r8
0033aa40  f4 ff ff 1a                                      bne #0x33aa18
0033aa44  03 10 90 e7                                      ldr r1, [r0, r3]
0033aa48  02 00 51 e3                                      cmp r1, #2
0033aa4c  0f 00 00 0a                                      beq #0x33aa90
0033aa50  00 00 51 e3                                      cmp r1, #0
0033aa54  0d 00 00 0a                                      beq #0x33aa90
0033aa58  01 00 51 e3                                      cmp r1, #1
0033aa5c  ed ff ff 1a                                      bne #0x33aa18
0033aa60  a4 51 84 e5                                      str r5, [r4, #0x1a4]
0033aa64  03 60 80 e7                                      str r6, [r0, r3]
0033aa68  94 41 94 e5                                      ldr r4, [r4, #0x194]
0033aa6c  00 00 97 e5                                      ldr r0, [r7]
0033aa70  03 40 84 e0                                      add r4, r4, r3
0033aa74  94 4e ff eb                                      bl #0x30e4cc
0033aa78  70 50 ff e6                                      uxth r5, r0
0033aa7c  04 00 97 e5                                      ldr r0, [r7, #4]
0033aa80  91 4e ff eb                                      bl #0x30e4cc
0033aa84  b4 50 c4 e1                                      strh r5, [r4, #4]
0033aa88  b6 00 c4 e1                                      strh r0, [r4, #6]
0033aa8c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033aa90  0c 30 a0 e3                                      mov r3, #0xc
0033aa94  93 05 05 e0                                      mul r5, r3, r5
0033aa98  05 60 8e e7                                      str r6, [lr, r5]
0033aa9c  00 00 97 e5                                      ldr r0, [r7]
0033aaa0  89 4e ff eb                                      bl #0x30e4cc
0033aaa4  70 a0 ff e6                                      uxth sl, r0
0033aaa8  04 00 97 e5                                      ldr r0, [r7, #4]
0033aaac  86 4e ff eb                                      bl #0x30e4cc
0033aab0  94 61 94 e5                                      ldr r6, [r4, #0x194]
0033aab4  05 60 86 e0                                      add r6, r6, r5
0033aab8  b6 00 c6 e1                                      strh r0, [r6, #6]
0033aabc  b4 a0 c6 e1                                      strh sl, [r6, #4]
0033aac0  94 31 94 e5                                      ldr r3, [r4, #0x194]
0033aac4  05 50 83 e0                                      add r5, r3, r5
0033aac8  08 80 85 e5                                      str r8, [r5, #8]
0033aacc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033aad0  a4 51 84 e5                                      str r5, [r4, #0x1a4]
0033aad4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0033aad8, declared_size=228, range_size=228, mode=arm
; class-group: TouchScreenBase
; alias: _ZNK15TouchScreenBase12getDimensionEv
; demangled: TouchScreenBase::getDimension() const
; decoder-mode: arm
0033aad8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033aadc  00 40 a0 e1                                      mov r4, r0
0033aae0  00 30 91 e5                                      ldr r3, [r1]
0033aae4  01 00 a0 e1                                      mov r0, r1
0033aae8  01 50 a0 e1                                      mov r5, r1
0033aaec  0f e0 a0 e1                                      mov lr, pc
0033aaf0  08 f0 93 e5                                      ldr pc, [r3, #8]
0033aaf4  00 30 95 e5                                      ldr r3, [r5]
0033aaf8  70 70 ff e6                                      uxth r7, r0
0033aafc  05 00 a0 e1                                      mov r0, r5
0033ab00  0f e0 a0 e1                                      mov lr, pc
0033ab04  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0033ab08  00 30 95 e5                                      ldr r3, [r5]
0033ab0c  70 60 ff e6                                      uxth r6, r0
0033ab10  05 00 a0 e1                                      mov r0, r5
0033ab14  0f e0 a0 e1                                      mov lr, pc
0033ab18  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0033ab1c  00 30 95 e5                                      ldr r3, [r5]
0033ab20  70 80 ff e6                                      uxth r8, r0
0033ab24  05 00 a0 e1                                      mov r0, r5
0033ab28  0f e0 a0 e1                                      mov lr, pc
0033ab2c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0033ab30  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0033ab34  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0033ab38  77 c0 bf e6                                      sxth ip, r7
0033ab3c  03 30 8f e0                                      add r3, pc, r3
0033ab40  02 20 93 e7                                      ldr r2, [r3, r2]
0033ab44  78 10 bf e6                                      sxth r1, r8
0033ab48  70 00 ff e6                                      uxth r0, r0
0033ab4c  08 20 82 e2                                      add r2, r2, #8
0033ab50  01 00 5c e1                                      cmp ip, r1
0033ab54  00 20 84 e5                                      str r2, [r4]
0033ab58  b4 70 c4 e1                                      strh r7, [r4, #4]
0033ab5c  b6 60 c4 e1                                      strh r6, [r4, #6]
0033ab60  b8 80 c4 e1                                      strh r8, [r4, #8]
0033ab64  ba 00 c4 e1                                      strh r0, [r4, #0xa]
0033ab68  03 00 00 ca                                      bgt #0x33ab7c
0033ab6c  77 30 ff b6                                      uxthlt r3, r7
0033ab70  77 80 ff a6                                      uxthge r8, r7
0033ab74  78 70 ff b6                                      uxthlt r7, r8
0033ab78  73 80 ff b6                                      uxthlt r8, r3
0033ab7c  76 20 bf e6                                      sxth r2, r6
0033ab80  70 30 bf e6                                      sxth r3, r0
0033ab84  03 00 52 e1                                      cmp r2, r3
0033ab88  03 00 00 ca                                      bgt #0x33ab9c
0033ab8c  76 30 ff b6                                      uxthlt r3, r6
0033ab90  76 00 ff a6                                      uxthge r0, r6
0033ab94  70 60 ff b6                                      uxthlt r6, r0
0033ab98  73 00 ff b6                                      uxthlt r0, r3
0033ab9c  b6 00 c4 e1                                      strh r0, [r4, #6]
0033aba0  b4 80 c4 e1                                      strh r8, [r4, #4]
0033aba4  b8 70 c4 e1                                      strh r7, [r4, #8]
0033aba8  ba 60 c4 e1                                      strh r6, [r4, #0xa]
0033abac  04 00 a0 e1                                      mov r0, r4
0033abb0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0033abb4  54 9f 65 00 84 3d 00 00                          .byte 0x54, 0x9f, 0x65, 0x00, 0x84, 0x3d, 0x00, 0x00

; FUNCTION 0x0033abbc, declared_size=104, range_size=104, mode=arm
; class-group: TouchScreenBase
; alias: _ZNK15TouchScreenBase12getDimensionER3RctIsE
; demangled: TouchScreenBase::getDimension(Rct<short>&) const
; decoder-mode: arm
0033abbc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033abc0  00 30 90 e5                                      ldr r3, [r0]
0033abc4  01 50 a0 e1                                      mov r5, r1
0033abc8  00 40 a0 e1                                      mov r4, r0
0033abcc  0f e0 a0 e1                                      mov lr, pc
0033abd0  08 f0 93 e5                                      ldr pc, [r3, #8]
0033abd4  00 30 94 e5                                      ldr r3, [r4]
0033abd8  70 80 ff e6                                      uxth r8, r0
0033abdc  04 00 a0 e1                                      mov r0, r4
0033abe0  0f e0 a0 e1                                      mov lr, pc
0033abe4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0033abe8  00 30 94 e5                                      ldr r3, [r4]
0033abec  70 70 ff e6                                      uxth r7, r0
0033abf0  04 00 a0 e1                                      mov r0, r4
0033abf4  0f e0 a0 e1                                      mov lr, pc
0033abf8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0033abfc  00 30 94 e5                                      ldr r3, [r4]
0033ac00  70 60 ff e6                                      uxth r6, r0
0033ac04  04 00 a0 e1                                      mov r0, r4
0033ac08  0f e0 a0 e1                                      mov lr, pc
0033ac0c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0033ac10  b4 80 c5 e1                                      strh r8, [r5, #4]
0033ac14  ba 00 c5 e1                                      strh r0, [r5, #0xa]
0033ac18  b6 70 c5 e1                                      strh r7, [r5, #6]
0033ac1c  b8 60 c5 e1                                      strh r6, [r5, #8]
0033ac20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0033ac24, declared_size=260, range_size=260, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase10touchBeganERK7Point2DIsEl
; demangled: TouchScreenBase::touchBegan(Point2D<short> const&, long)
; decoder-mode: arm
0033ac24  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0033ac28  90 31 90 e5                                      ldr r3, [r0, #0x190]
0033ac2c  01 e0 82 e2                                      add lr, r2, #1
0033ac30  02 50 a0 e1                                      mov r5, r2
0033ac34  02 00 53 e1                                      cmp r3, r2
0033ac38  30 30 a0 e3                                      mov r3, #0x30
0033ac3c  93 02 23 e0                                      mla r3, r3, r2, r0
0033ac40  90 e1 80 b5                                      strlt lr, [r0, #0x190]
0033ac44  28 20 d3 e5                                      ldrb r2, [r3, #0x28]
0033ac48  0c d0 4d e2                                      sub sp, sp, #0xc
0033ac4c  00 40 a0 e1                                      mov r4, r0
0033ac50  00 00 52 e3                                      cmp r2, #0
0033ac54  01 60 a0 e1                                      mov r6, r1
0033ac58  09 00 00 1a                                      bne #0x33ac84
0033ac5c  06 10 a0 e3                                      mov r1, #6
0033ac60  91 05 01 e0                                      mul r1, r1, r5
0033ac64  b2 c0 d6 e1                                      ldrh ip, [r6, #2]
0033ac68  b0 70 d6 e1                                      ldrh r7, [r6]
0033ac6c  01 10 81 e2                                      add r1, r1, #1
0033ac70  81 11 a0 e1                                      lsl r1, r1, #3
0033ac74  01 00 80 e0                                      add r0, r0, r1
0033ac78  b1 70 84 e1                                      strh r7, [r4, r1]
0033ac7c  b2 c0 c0 e1                                      strh ip, [r0, #2]
0033ac80  24 20 83 e5                                      str r2, [r3, #0x24]
0033ac84  06 30 a0 e3                                      mov r3, #6
0033ac88  93 05 03 e0                                      mul r3, r3, r5
0033ac8c  85 20 85 e0                                      add r2, r5, r5, lsl #1
0033ac90  01 30 83 e2                                      add r3, r3, #1
0033ac94  83 31 84 e0                                      add r3, r4, r3, lsl #3
0033ac98  b4 10 d3 e1                                      ldrh r1, [r3, #4]
0033ac9c  01 20 82 e2                                      add r2, r2, #1
0033aca0  02 02 a0 e1                                      lsl r0, r2, #4
0033aca4  b0 10 84 e1                                      strh r1, [r4, r0]
0033aca8  b6 70 d3 e1                                      ldrh r7, [r3, #6]
0033acac  00 00 84 e0                                      add r0, r4, r0
0033acb0  30 c0 a0 e3                                      mov ip, #0x30
0033acb4  b2 70 c0 e1                                      strh r7, [r0, #2]
0033acb8  b0 00 d6 e1                                      ldrh r0, [r6]
0033acbc  9c 45 21 e0                                      mla r1, ip, r5, r4
0033acc0  b4 00 c3 e1                                      strh r0, [r3, #4]
0033acc4  b2 70 d6 e1                                      ldrh r7, [r6, #2]
0033acc8  01 00 a0 e3                                      mov r0, #1
0033accc  02 22 84 e0                                      add r2, r4, r2, lsl #4
0033acd0  b6 70 c3 e1                                      strh r7, [r3, #6]
0033acd4  9c 0e 0c e0                                      mul ip, ip, lr
0033acd8  28 00 c1 e5                                      strb r0, [r1, #0x28]
0033acdc  20 00 c1 e5                                      strb r0, [r1, #0x20]
0033ace0  62 3f a0 e3                                      mov r3, #0x188
0033ace4  d3 00 84 e1                                      ldrd r0, r1, [r4, r3]
0033ace8  f8 00 c2 e1                                      strd r0, r1, [r2, #8]
0033acec  00 70 a0 e3                                      mov r7, #0
0033acf0  0c 70 84 e7                                      str r7, [r4, ip]
0033acf4  f0 00 d6 e1                                      ldrsh r0, [r6]
0033acf8  19 4f ff eb                                      bl #0x30e964
0033acfc  00 00 8d e5                                      str r0, [sp]
0033ad00  f2 00 d6 e1                                      ldrsh r0, [r6, #2]
0033ad04  16 4f ff eb                                      bl #0x30e964
0033ad08  07 10 a0 e1                                      mov r1, r7
0033ad0c  04 00 8d e5                                      str r0, [sp, #4]
0033ad10  05 30 a0 e1                                      mov r3, r5
0033ad14  04 00 a0 e1                                      mov r0, r4
0033ad18  0d 20 a0 e1                                      mov r2, sp
0033ad1c  26 ff ff eb                                      bl #0x33a9bc
0033ad20  0c d0 8d e2                                      add sp, sp, #0xc
0033ad24  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0033ad28, declared_size=276, range_size=276, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase10touchMovedERK7Point2DIsEl
; demangled: TouchScreenBase::touchMoved(Point2D<short> const&, long)
; decoder-mode: arm
0033ad28  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
0033ad2c  30 30 a0 e3                                      mov r3, #0x30
0033ad30  02 50 a0 e1                                      mov r5, r2
0033ad34  93 02 22 e0                                      mla r2, r3, r2, r0
0033ad38  01 60 a0 e1                                      mov r6, r1
0033ad3c  28 10 d2 e5                                      ldrb r1, [r2, #0x28]
0033ad40  0c d0 4d e2                                      sub sp, sp, #0xc
0033ad44  00 40 a0 e1                                      mov r4, r0
0033ad48  00 00 51 e3                                      cmp r1, #0
0033ad4c  2d 00 00 0a                                      beq #0x33ae08
0033ad50  06 00 a0 e3                                      mov r0, #6
0033ad54  90 05 00 e0                                      mul r0, r0, r5
0033ad58  85 c0 85 e0                                      add ip, r5, r5, lsl #1
0033ad5c  01 00 80 e2                                      add r0, r0, #1
0033ad60  80 01 a0 e1                                      lsl r0, r0, #3
0033ad64  00 10 84 e0                                      add r1, r4, r0
0033ad68  b4 70 d1 e1                                      ldrh r7, [r1, #4]
0033ad6c  01 c0 8c e2                                      add ip, ip, #1
0033ad70  0c e2 a0 e1                                      lsl lr, ip, #4
0033ad74  be 70 84 e1                                      strh r7, [r4, lr]
0033ad78  b6 70 d1 e1                                      ldrh r7, [r1, #6]
0033ad7c  0e e0 84 e0                                      add lr, r4, lr
0033ad80  0c c2 84 e0                                      add ip, r4, ip, lsl #4
0033ad84  b2 70 ce e1                                      strh r7, [lr, #2]
0033ad88  b0 e0 d6 e1                                      ldrh lr, [r6]
0033ad8c  95 33 23 e0                                      mla r3, r5, r3, r3
0033ad90  b4 e0 c1 e1                                      strh lr, [r1, #4]
0033ad94  b2 70 d6 e1                                      ldrh r7, [r6, #2]
0033ad98  62 ef a0 e3                                      mov lr, #0x188
0033ad9c  b6 70 c1 e1                                      strh r7, [r1, #6]
0033ada0  de 80 84 e1                                      ldrd r8, sb, [r4, lr]
0033ada4  f8 80 cc e1                                      strd r8, sb, [ip, #8]
0033ada8  01 c0 a0 e3                                      mov ip, #1
0033adac  03 c0 84 e7                                      str ip, [r4, r3]
0033adb0  f0 00 94 e1                                      ldrsh r0, [r4, r0]
0033adb4  f4 30 d1 e1                                      ldrsh r3, [r1, #4]
0033adb8  00 e0 63 e0                                      rsb lr, r3, r0
0033adbc  ce cf 2e e0                                      eor ip, lr, lr, asr #31
0033adc0  ce cf 4c e0                                      sub ip, ip, lr, asr #31
0033adc4  0b 00 5c e3                                      cmp ip, #0xb
0033adc8  0e 00 00 da                                      ble #0x33ae08
0033adcc  f6 c0 d1 e1                                      ldrsh ip, [r1, #6]
0033add0  f2 10 d1 e1                                      ldrsh r1, [r1, #2]
0033add4  01 c0 6c e0                                      rsb ip, ip, r1
0033add8  cc 1f 2c e0                                      eor r1, ip, ip, asr #31
0033addc  cc 1f 41 e0                                      sub r1, r1, ip, asr #31
0033ade0  04 00 51 e3                                      cmp r1, #4
0033ade4  07 00 00 ca                                      bgt #0x33ae08
0033ade8  20 20 82 e2                                      add r2, r2, #0x20
0033adec  04 10 92 e5                                      ldr r1, [r2, #4]
0033adf0  00 00 51 e3                                      cmp r1, #0
0033adf4  03 00 00 1a                                      bne #0x33ae08
0033adf8  03 00 50 e1                                      cmp r0, r3
0033adfc  01 30 a0 a3                                      movge r3, #1
0033ae00  02 30 a0 b3                                      movlt r3, #2
0033ae04  04 30 82 e5                                      str r3, [r2, #4]
0033ae08  f0 00 d6 e1                                      ldrsh r0, [r6]
0033ae0c  d4 4e ff eb                                      bl #0x30e964
0033ae10  00 00 8d e5                                      str r0, [sp]
0033ae14  f2 00 d6 e1                                      ldrsh r0, [r6, #2]
0033ae18  d1 4e ff eb                                      bl #0x30e964
0033ae1c  05 30 a0 e1                                      mov r3, r5
0033ae20  04 00 8d e5                                      str r0, [sp, #4]
0033ae24  01 10 a0 e3                                      mov r1, #1
0033ae28  04 00 a0 e1                                      mov r0, r4
0033ae2c  0d 20 a0 e1                                      mov r2, sp
0033ae30  e1 fe ff eb                                      bl #0x33a9bc
0033ae34  0c d0 8d e2                                      add sp, sp, #0xc
0033ae38  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}

; FUNCTION 0x0033ae3c, declared_size=124, range_size=124, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase14touchCancelledERK7Point2DIsEl
; demangled: TouchScreenBase::touchCancelled(Point2D<short> const&, long)
; decoder-mode: arm
0033ae3c  70 40 2d e9                                      push {r4, r5, r6, lr}
0033ae40  30 30 a0 e3                                      mov r3, #0x30
0033ae44  02 50 a0 e1                                      mov r5, r2
0033ae48  92 33 22 e0                                      mla r2, r2, r3, r3
0033ae4c  93 05 23 e0                                      mla r3, r3, r5, r0
0033ae50  00 40 a0 e1                                      mov r4, r0
0033ae54  00 00 e0 e3                                      mvn r0, #0
0033ae58  2c 00 83 e5                                      str r0, [r3, #0x2c]
0033ae5c  00 00 a0 e3                                      mov r0, #0
0033ae60  28 00 c3 e5                                      strb r0, [r3, #0x28]
0033ae64  02 30 a0 e3                                      mov r3, #2
0033ae68  02 30 84 e7                                      str r3, [r4, r2]
0033ae6c  90 31 94 e5                                      ldr r3, [r4, #0x190]
0033ae70  08 d0 4d e2                                      sub sp, sp, #8
0033ae74  01 60 a0 e1                                      mov r6, r1
0033ae78  01 30 43 e2                                      sub r3, r3, #1
0033ae7c  05 00 53 e1                                      cmp r3, r5
0033ae80  90 51 84 05                                      streq r5, [r4, #0x190]
0033ae84  f0 00 d1 e1                                      ldrsh r0, [r1]
0033ae88  b5 4e ff eb                                      bl #0x30e964
0033ae8c  00 00 8d e5                                      str r0, [sp]
0033ae90  f2 00 d6 e1                                      ldrsh r0, [r6, #2]
0033ae94  b2 4e ff eb                                      bl #0x30e964
0033ae98  05 30 a0 e1                                      mov r3, r5
0033ae9c  04 00 8d e5                                      str r0, [sp, #4]
0033aea0  02 10 a0 e3                                      mov r1, #2
0033aea4  04 00 a0 e1                                      mov r0, r4
0033aea8  0d 20 a0 e1                                      mov r2, sp
0033aeac  c2 fe ff eb                                      bl #0x33a9bc
0033aeb0  08 d0 8d e2                                      add sp, sp, #8
0033aeb4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0033aeb8, declared_size=4, range_size=4, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase10touchEndedERK7Point2DIsEl
; demangled: TouchScreenBase::touchEnded(Point2D<short> const&, long)
; decoder-mode: arm
0033aeb8  df ff ff ea                                      b #0x33ae3c

; FUNCTION 0x0033aebc, declared_size=368, range_size=368, mode=arm
; class-group: TouchScreenBase
; alias: _ZNK15TouchScreenBase15isRegionPressedERKN6glitch4core4rectIfEE
; demangled: TouchScreenBase::isRegionPressed(glitch::core::rect<float> const&) const
; decoder-mode: arm
0033aebc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0033aec0  90 31 90 e5                                      ldr r3, [r0, #0x190]
0033aec4  0c d0 4d e2                                      sub sp, sp, #0xc
0033aec8  00 80 a0 e1                                      mov r8, r0
0033aecc  00 00 53 e3                                      cmp r3, #0
0033aed0  01 90 a0 e1                                      mov sb, r1
0033aed4  44 00 00 da                                      ble #0x33afec
0033aed8  30 20 a0 e3                                      mov r2, #0x30
0033aedc  92 03 22 e0                                      mla r2, r2, r3, r0
0033aee0  00 40 a0 e1                                      mov r4, r0
0033aee4  04 20 8d e5                                      str r2, [sp, #4]
0033aee8  a8 61 90 e5                                      ldr r6, [r0, #0x1a8]
0033aeec  b0 71 90 e5                                      ldr r7, [r0, #0x1b0]
0033aef0  00 b0 91 e5                                      ldr fp, [r1]
0033aef4  02 00 56 e3                                      cmp r6, #2
0033aef8  bc 00 d4 e1                                      ldrh r0, [r4, #0xc]
0033aefc  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
0033af00  40 00 00 0a                                      beq #0x33b008
0033af04  03 00 56 e3                                      cmp r6, #3
0033af08  39 00 00 0a                                      beq #0x33aff4
0033af0c  01 00 56 e3                                      cmp r6, #1
0033af10  03 00 00 1a                                      bne #0x33af24
0033af14  ae 11 00 e3                                      movw r1, #0x1ae
0033af18  b1 30 98 e1                                      ldrh r3, [r8, r1]
0033af1c  03 50 65 e0                                      rsb r5, r5, r3
0033af20  75 50 ff e6                                      uxth r5, r5
0033af24  70 00 bf e6                                      sxth r0, r0
0033af28  8d 4e ff eb                                      bl #0x30e964
0033af2c  07 10 a0 e1                                      mov r1, r7
0033af30  8d 4f ff eb                                      bl #0x30ed6c
0033af34  64 4d ff eb                                      bl #0x30e4cc
0033af38  70 00 bf e6                                      sxth r0, r0
0033af3c  88 4e ff eb                                      bl #0x30e964
0033af40  0b 10 a0 e1                                      mov r1, fp
0033af44  00 a0 a0 e1                                      mov sl, r0
0033af48  59 4d ff eb                                      bl #0x30e4b4
0033af4c  00 00 50 e3                                      cmp r0, #0
0033af50  21 00 00 0a                                      beq #0x33afdc
0033af54  75 00 bf e6                                      sxth r0, r5
0033af58  81 4e ff eb                                      bl #0x30e964
0033af5c  07 10 a0 e1                                      mov r1, r7
0033af60  81 4f ff eb                                      bl #0x30ed6c
0033af64  58 4d ff eb                                      bl #0x30e4cc
0033af68  70 00 bf e6                                      sxth r0, r0
0033af6c  7c 4e ff eb                                      bl #0x30e964
0033af70  04 10 99 e5                                      ldr r1, [sb, #4]
0033af74  00 50 a0 e1                                      mov r5, r0
0033af78  4d 4d ff eb                                      bl #0x30e4b4
0033af7c  00 00 50 e3                                      cmp r0, #0
0033af80  15 00 00 0a                                      beq #0x33afdc
0033af84  0a 00 a0 e1                                      mov r0, sl
0033af88  08 10 99 e5                                      ldr r1, [sb, #8]
0033af8c  86 4e ff eb                                      bl #0x30e9ac
0033af90  00 00 50 e3                                      cmp r0, #0
0033af94  10 00 00 0a                                      beq #0x33afdc
0033af98  05 00 a0 e1                                      mov r0, r5
0033af9c  0c 10 99 e5                                      ldr r1, [sb, #0xc]
0033afa0  81 4e ff eb                                      bl #0x30e9ac
0033afa4  00 00 50 e3                                      cmp r0, #0
0033afa8  0b 00 00 0a                                      beq #0x33afdc
0033afac  20 30 d4 e5                                      ldrb r3, [r4, #0x20]
0033afb0  00 00 53 e3                                      cmp r3, #0
0033afb4  08 00 00 0a                                      beq #0x33afdc
0033afb8  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
0033afbc  00 00 53 e3                                      cmp r3, #0
0033afc0  05 00 00 0a                                      beq #0x33afdc
0033afc4  30 30 94 e5                                      ldr r3, [r4, #0x30]
0033afc8  00 00 53 e3                                      cmp r3, #0
0033afcc  02 00 00 1a                                      bne #0x33afdc
0033afd0  01 00 a0 e3                                      mov r0, #1
0033afd4  0c d0 8d e2                                      add sp, sp, #0xc
0033afd8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0033afdc  04 30 9d e5                                      ldr r3, [sp, #4]
0033afe0  30 40 84 e2                                      add r4, r4, #0x30
0033afe4  03 00 54 e1                                      cmp r4, r3
0033afe8  c1 ff ff 1a                                      bne #0x33aef4
0033afec  00 00 a0 e3                                      mov r0, #0
0033aff0  f7 ff ff ea                                      b #0x33afd4
0033aff4  6b 2f a0 e3                                      mov r2, #0x1ac
0033aff8  b2 30 98 e1                                      ldrh r3, [r8, r2]
0033affc  03 00 60 e0                                      rsb r0, r0, r3
0033b000  70 00 ff e6                                      uxth r0, r0
0033b004  c6 ff ff ea                                      b #0x33af24
0033b008  6b 3f a0 e3                                      mov r3, #0x1ac
0033b00c  ae 11 00 e3                                      movw r1, #0x1ae
0033b010  b3 20 98 e1                                      ldrh r2, [r8, r3]
0033b014  b1 30 98 e1                                      ldrh r3, [r8, r1]
0033b018  02 00 60 e0                                      rsb r0, r0, r2
0033b01c  03 50 65 e0                                      rsb r5, r5, r3
0033b020  70 00 ff e6                                      uxth r0, r0
0033b024  75 50 ff e6                                      uxth r5, r5
0033b028  bd ff ff ea                                      b #0x33af24

; FUNCTION 0x0033b02c, declared_size=188, range_size=188, mode=arm
; class-group: TouchScreenBase
; alias: _ZNK15TouchScreenBase27getTouchIDInitiatedInRegionERKN6glitch4core4rectIfEE
; demangled: TouchScreenBase::getTouchIDInitiatedInRegion(glitch::core::rect<float> const&) const
; decoder-mode: arm
0033b02c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033b030  90 a1 90 e5                                      ldr sl, [r0, #0x190]
0033b034  01 70 a0 e1                                      mov r7, r1
0033b038  00 00 5a e3                                      cmp sl, #0
0033b03c  27 00 00 da                                      ble #0x33b0e0
0033b040  00 80 91 e5                                      ldr r8, [r1]
0033b044  00 40 a0 e1                                      mov r4, r0
0033b048  00 50 a0 e3                                      mov r5, #0
0033b04c  f8 00 d4 e1                                      ldrsh r0, [r4, #8]
0033b050  43 4e ff eb                                      bl #0x30e964
0033b054  08 10 a0 e1                                      mov r1, r8
0033b058  00 60 a0 e1                                      mov r6, r0
0033b05c  14 4d ff eb                                      bl #0x30e4b4
0033b060  00 00 50 e3                                      cmp r0, #0
0033b064  ba 00 d4 e1                                      ldrh r0, [r4, #0xa]
0033b068  18 00 00 0a                                      beq #0x33b0d0
0033b06c  70 00 bf e6                                      sxth r0, r0
0033b070  3b 4e ff eb                                      bl #0x30e964
0033b074  04 10 97 e5                                      ldr r1, [r7, #4]
0033b078  00 90 a0 e1                                      mov sb, r0
0033b07c  0c 4d ff eb                                      bl #0x30e4b4
0033b080  00 00 50 e3                                      cmp r0, #0
0033b084  06 00 a0 e1                                      mov r0, r6
0033b088  10 00 00 0a                                      beq #0x33b0d0
0033b08c  08 10 97 e5                                      ldr r1, [r7, #8]
0033b090  45 4e ff eb                                      bl #0x30e9ac
0033b094  00 00 50 e3                                      cmp r0, #0
0033b098  09 00 a0 e1                                      mov r0, sb
0033b09c  0b 00 00 0a                                      beq #0x33b0d0
0033b0a0  0c 10 97 e5                                      ldr r1, [r7, #0xc]
0033b0a4  40 4e ff eb                                      bl #0x30e9ac
0033b0a8  00 00 50 e3                                      cmp r0, #0
0033b0ac  07 00 00 0a                                      beq #0x33b0d0
0033b0b0  20 30 d4 e5                                      ldrb r3, [r4, #0x20]
0033b0b4  00 00 53 e3                                      cmp r3, #0
0033b0b8  04 00 00 0a                                      beq #0x33b0d0
0033b0bc  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
0033b0c0  00 00 53 e3                                      cmp r3, #0
0033b0c4  01 00 00 0a                                      beq #0x33b0d0
0033b0c8  05 00 a0 e1                                      mov r0, r5
0033b0cc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033b0d0  01 50 85 e2                                      add r5, r5, #1
0033b0d4  0a 00 55 e1                                      cmp r5, sl
0033b0d8  30 40 84 e2                                      add r4, r4, #0x30
0033b0dc  da ff ff 1a                                      bne #0x33b04c
0033b0e0  00 50 e0 e3                                      mvn r5, #0
0033b0e4  f7 ff ff ea                                      b #0x33b0c8

; FUNCTION 0x0033b0e8, declared_size=188, range_size=188, mode=arm
; class-group: TouchScreenBase
; alias: _ZNK15TouchScreenBase18getTouchIDInRegionERKN6glitch4core4rectIfEE
; demangled: TouchScreenBase::getTouchIDInRegion(glitch::core::rect<float> const&) const
; decoder-mode: arm
0033b0e8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033b0ec  90 a1 90 e5                                      ldr sl, [r0, #0x190]
0033b0f0  01 70 a0 e1                                      mov r7, r1
0033b0f4  00 00 5a e3                                      cmp sl, #0
0033b0f8  27 00 00 da                                      ble #0x33b19c
0033b0fc  00 80 91 e5                                      ldr r8, [r1]
0033b100  00 40 a0 e1                                      mov r4, r0
0033b104  00 50 a0 e3                                      mov r5, #0
0033b108  fc 00 d4 e1                                      ldrsh r0, [r4, #0xc]
0033b10c  14 4e ff eb                                      bl #0x30e964
0033b110  08 10 a0 e1                                      mov r1, r8
0033b114  00 60 a0 e1                                      mov r6, r0
0033b118  e5 4c ff eb                                      bl #0x30e4b4
0033b11c  00 00 50 e3                                      cmp r0, #0
0033b120  be 00 d4 e1                                      ldrh r0, [r4, #0xe]
0033b124  18 00 00 0a                                      beq #0x33b18c
0033b128  70 00 bf e6                                      sxth r0, r0
0033b12c  0c 4e ff eb                                      bl #0x30e964
0033b130  04 10 97 e5                                      ldr r1, [r7, #4]
0033b134  00 90 a0 e1                                      mov sb, r0
0033b138  dd 4c ff eb                                      bl #0x30e4b4
0033b13c  00 00 50 e3                                      cmp r0, #0
0033b140  06 00 a0 e1                                      mov r0, r6
0033b144  10 00 00 0a                                      beq #0x33b18c
0033b148  08 10 97 e5                                      ldr r1, [r7, #8]
0033b14c  16 4e ff eb                                      bl #0x30e9ac
0033b150  00 00 50 e3                                      cmp r0, #0
0033b154  09 00 a0 e1                                      mov r0, sb
0033b158  0b 00 00 0a                                      beq #0x33b18c
0033b15c  0c 10 97 e5                                      ldr r1, [r7, #0xc]
0033b160  11 4e ff eb                                      bl #0x30e9ac
0033b164  00 00 50 e3                                      cmp r0, #0
0033b168  07 00 00 0a                                      beq #0x33b18c
0033b16c  20 30 d4 e5                                      ldrb r3, [r4, #0x20]
0033b170  00 00 53 e3                                      cmp r3, #0
0033b174  04 00 00 0a                                      beq #0x33b18c
0033b178  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
0033b17c  00 00 53 e3                                      cmp r3, #0
0033b180  01 00 00 0a                                      beq #0x33b18c
0033b184  05 00 a0 e1                                      mov r0, r5
0033b188  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033b18c  01 50 85 e2                                      add r5, r5, #1
0033b190  0a 00 55 e1                                      cmp r5, sl
0033b194  30 40 84 e2                                      add r4, r4, #0x30
0033b198  da ff ff 1a                                      bne #0x33b108
0033b19c  00 50 e0 e3                                      mvn r5, #0
0033b1a0  f7 ff ff ea                                      b #0x33b184

; FUNCTION 0x0033b1a4, declared_size=60, range_size=60, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase13getTouchPointEl
; demangled: TouchScreenBase::getTouchPoint(long)
; decoder-mode: arm
0033b1a4  30 30 a0 e3                                      mov r3, #0x30
0033b1a8  93 01 23 e0                                      mla r3, r3, r1, r0
0033b1ac  28 20 d3 e5                                      ldrb r2, [r3, #0x28]
0033b1b0  00 00 52 e3                                      cmp r2, #0
0033b1b4  01 00 00 1a                                      bne #0x33b1c0
0033b1b8  00 00 a0 e3                                      mov r0, #0
0033b1bc  1e ff 2f e1                                      bx lr
0033b1c0  20 30 d3 e5                                      ldrb r3, [r3, #0x20]
0033b1c4  00 00 53 e3                                      cmp r3, #0
0033b1c8  fa ff ff 0a                                      beq #0x33b1b8
0033b1cc  06 30 a0 e3                                      mov r3, #6
0033b1d0  93 01 01 e0                                      mul r1, r3, r1
0033b1d4  81 01 80 e0                                      add r0, r0, r1, lsl #3
0033b1d8  0c 00 80 e2                                      add r0, r0, #0xc
0033b1dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033b1e0, declared_size=60, range_size=60, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase18getFirstTouchPointEl
; demangled: TouchScreenBase::getFirstTouchPoint(long)
; decoder-mode: arm
0033b1e0  30 30 a0 e3                                      mov r3, #0x30
0033b1e4  93 01 23 e0                                      mla r3, r3, r1, r0
0033b1e8  28 20 d3 e5                                      ldrb r2, [r3, #0x28]
0033b1ec  00 00 52 e3                                      cmp r2, #0
0033b1f0  01 00 00 1a                                      bne #0x33b1fc
0033b1f4  00 00 a0 e3                                      mov r0, #0
0033b1f8  1e ff 2f e1                                      bx lr
0033b1fc  20 30 d3 e5                                      ldrb r3, [r3, #0x20]
0033b200  00 00 53 e3                                      cmp r3, #0
0033b204  fa ff ff 0a                                      beq #0x33b1f4
0033b208  06 30 a0 e3                                      mov r3, #6
0033b20c  93 01 01 e0                                      mul r1, r3, r1
0033b210  01 10 81 e2                                      add r1, r1, #1
0033b214  81 01 80 e0                                      add r0, r0, r1, lsl #3
0033b218  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033b21c, declared_size=160, range_size=160, mode=arm
; class-group: TouchScreenBase
; alias: _ZNK15TouchScreenBase20getTouchDisplacementEl
; demangled: TouchScreenBase::getTouchDisplacement(long) const
; decoder-mode: arm
0033b21c  04 40 2d e5                                      str r4, [sp, #-4]!
0033b220  30 30 a0 e3                                      mov r3, #0x30
0033b224  93 12 23 e0                                      mla r3, r3, r2, r1
0033b228  28 c0 d3 e5                                      ldrb ip, [r3, #0x28]
0033b22c  00 00 5c e3                                      cmp ip, #0
0033b230  02 00 00 0a                                      beq #0x33b240
0033b234  20 30 d3 e5                                      ldrb r3, [r3, #0x20]
0033b238  00 00 53 e3                                      cmp r3, #0
0033b23c  04 00 00 1a                                      bne #0x33b254
0033b240  00 30 a0 e3                                      mov r3, #0
0033b244  b0 30 c0 e1                                      strh r3, [r0]
0033b248  b2 30 c0 e1                                      strh r3, [r0, #2]
0033b24c  10 00 bd e8                                      ldm sp!, {r4}
0033b250  1e ff 2f e1                                      bx lr
0033b254  06 c0 a0 e3                                      mov ip, #6
0033b258  9c 02 0c e0                                      mul ip, ip, r2
0033b25c  01 c0 8c e2                                      add ip, ip, #1
0033b260  8c c1 a0 e1                                      lsl ip, ip, #3
0033b264  0c 30 81 e0                                      add r3, r1, ip
0033b268  bc 40 91 e1                                      ldrh r4, [r1, ip]
0033b26c  b4 c0 d3 e1                                      ldrh ip, [r3, #4]
0033b270  04 00 5c e1                                      cmp ip, r4
0033b274  b6 30 d3 11                                      ldrhne r3, [r3, #6]
0033b278  0a 00 00 0a                                      beq #0x33b2a8
0033b27c  82 20 82 e0                                      add r2, r2, r2, lsl #1
0033b280  01 20 82 e2                                      add r2, r2, #1
0033b284  02 22 a0 e1                                      lsl r2, r2, #4
0033b288  02 40 81 e0                                      add r4, r1, r2
0033b28c  b2 10 91 e1                                      ldrh r1, [r1, r2]
0033b290  b2 20 d4 e1                                      ldrh r2, [r4, #2]
0033b294  0c c0 61 e0                                      rsb ip, r1, ip
0033b298  03 30 62 e0                                      rsb r3, r2, r3
0033b29c  b0 c0 c0 e1                                      strh ip, [r0]
0033b2a0  b2 30 c0 e1                                      strh r3, [r0, #2]
0033b2a4  e8 ff ff ea                                      b #0x33b24c
0033b2a8  b2 40 d3 e1                                      ldrh r4, [r3, #2]
0033b2ac  b6 30 d3 e1                                      ldrh r3, [r3, #6]
0033b2b0  04 00 53 e1                                      cmp r3, r4
0033b2b4  f0 ff ff 1a                                      bne #0x33b27c
0033b2b8  e0 ff ff ea                                      b #0x33b240

; FUNCTION 0x0033b2bc, declared_size=48, range_size=48, mode=arm
; class-group: TouchScreenBase
; alias: _ZNK15TouchScreenBase17getSwipeDirectionEl
; demangled: TouchScreenBase::getSwipeDirection(long) const
; decoder-mode: arm
0033b2bc  30 30 a0 e3                                      mov r3, #0x30
0033b2c0  93 01 23 e0                                      mla r3, r3, r1, r0
0033b2c4  28 20 d3 e5                                      ldrb r2, [r3, #0x28]
0033b2c8  00 00 52 e3                                      cmp r2, #0
0033b2cc  04 00 00 0a                                      beq #0x33b2e4
0033b2d0  20 20 d3 e5                                      ldrb r2, [r3, #0x20]
0033b2d4  20 30 83 e2                                      add r3, r3, #0x20
0033b2d8  00 00 52 e3                                      cmp r2, #0
0033b2dc  04 00 93 15                                      ldrne r0, [r3, #4]
0033b2e0  1e ff 2f 11                                      bxne lr
0033b2e4  00 00 a0 e3                                      mov r0, #0
0033b2e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033b2ec, declared_size=72, range_size=72, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase8hasTouchEv
; demangled: TouchScreenBase::hasTouch()
; decoder-mode: arm
0033b2ec  00 30 a0 e3                                      mov r3, #0
0033b2f0  28 20 d0 e5                                      ldrb r2, [r0, #0x28]
0033b2f4  01 30 83 e2                                      add r3, r3, #1
0033b2f8  00 00 52 e3                                      cmp r2, #0
0033b2fc  05 00 00 0a                                      beq #0x33b318
0033b300  30 20 90 e5                                      ldr r2, [r0, #0x30]
0033b304  00 00 52 e3                                      cmp r2, #0
0033b308  02 00 00 1a                                      bne #0x33b318
0033b30c  20 20 d0 e5                                      ldrb r2, [r0, #0x20]
0033b310  00 00 52 e3                                      cmp r2, #0
0033b314  04 00 00 1a                                      bne #0x33b32c
0033b318  08 00 53 e3                                      cmp r3, #8
0033b31c  30 00 80 e2                                      add r0, r0, #0x30
0033b320  f2 ff ff 1a                                      bne #0x33b2f0
0033b324  00 00 a0 e3                                      mov r0, #0
0033b328  1e ff 2f e1                                      bx lr
0033b32c  01 00 a0 e3                                      mov r0, #1
0033b330  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033b334, declared_size=168, range_size=168, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase6updateEd
; demangled: TouchScreenBase::update(double)
; decoder-mode: arm
0033b334  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033b338  62 af a0 e3                                      mov sl, #0x188
0033b33c  00 70 a0 e1                                      mov r7, r0
0033b340  fa 20 80 e1                                      strd r2, r3, [r0, sl]
0033b344  00 40 a0 e1                                      mov r4, r0
0033b348  01 50 a0 e3                                      mov r5, #1
0033b34c  00 90 e0 e3                                      mvn sb, #0
0033b350  12 00 00 ea                                      b #0x33b3a0
0033b354  d8 01 c4 e1                                      ldrd r0, r1, [r4, #0x18]
0033b358  f9 4d ff eb                                      bl #0x30eb44
0033b35c  da 20 87 e1                                      ldrd r2, r3, [r7, sl]
0033b360  fe 4c ff eb                                      bl #0x30e760
0033b364  00 00 50 e3                                      cmp r0, #0
0033b368  13 00 00 0a                                      beq #0x33b3bc
0033b36c  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
0033b370  00 00 53 e3                                      cmp r3, #0
0033b374  05 00 00 0a                                      beq #0x33b390
0033b378  28 60 c4 e5                                      strb r6, [r4, #0x28]
0033b37c  2c 90 84 e5                                      str sb, [r4, #0x2c]
0033b380  90 31 97 e5                                      ldr r3, [r7, #0x190]
0033b384  08 00 53 e1                                      cmp r3, r8
0033b388  01 30 43 02                                      subeq r3, r3, #1
0033b38c  90 31 87 05                                      streq r3, [r7, #0x190]
0033b390  01 50 85 e2                                      add r5, r5, #1
0033b394  09 00 55 e3                                      cmp r5, #9
0033b398  30 40 84 e2                                      add r4, r4, #0x30
0033b39c  0d 00 00 0a                                      beq #0x33b3d8
0033b3a0  20 60 d4 e5                                      ldrb r6, [r4, #0x20]
0033b3a4  ff 35 a0 e3                                      mov r3, #0x3fc00000
0033b3a8  00 20 a0 e3                                      mov r2, #0
0033b3ac  00 00 56 e3                                      cmp r6, #0
0033b3b0  02 36 83 e2                                      add r3, r3, #0x200000
0033b3b4  01 80 45 e2                                      sub r8, r5, #1
0033b3b8  e5 ff ff 0a                                      beq #0x33b354
0033b3bc  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
0033b3c0  30 40 84 e2                                      add r4, r4, #0x30
0033b3c4  00 00 53 e3                                      cmp r3, #0
0033b3c8  90 51 87 15                                      strne r5, [r7, #0x190]
0033b3cc  01 50 85 e2                                      add r5, r5, #1
0033b3d0  09 00 55 e3                                      cmp r5, #9
0033b3d4  f1 ff ff 1a                                      bne #0x33b3a0
0033b3d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0033b3dc, declared_size=92, range_size=92, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase5getIDEl
; demangled: TouchScreenBase::getID(long)
; decoder-mode: arm
0033b3dc  04 40 2d e5                                      str r4, [sp, #-4]!
0033b3e0  00 30 a0 e1                                      mov r3, r0
0033b3e4  00 20 a0 e1                                      mov r2, r0
0033b3e8  00 40 e0 e3                                      mvn r4, #0
0033b3ec  00 00 a0 e3                                      mov r0, #0
0033b3f0  2c c0 92 e5                                      ldr ip, [r2, #0x2c]
0033b3f4  01 00 5c e1                                      cmp ip, r1
0033b3f8  0c 00 00 0a                                      beq #0x33b430
0033b3fc  28 c0 d2 e5                                      ldrb ip, [r2, #0x28]
0033b400  30 20 82 e2                                      add r2, r2, #0x30
0033b404  00 00 5c e3                                      cmp ip, #0
0033b408  01 00 00 1a                                      bne #0x33b414
0033b40c  01 00 74 e3                                      cmn r4, #1
0033b410  00 40 a0 01                                      moveq r4, r0
0033b414  01 00 80 e2                                      add r0, r0, #1
0033b418  08 00 50 e3                                      cmp r0, #8
0033b41c  f3 ff ff 1a                                      bne #0x33b3f0
0033b420  30 20 a0 e3                                      mov r2, #0x30
0033b424  92 34 23 e0                                      mla r3, r2, r4, r3
0033b428  04 00 a0 e1                                      mov r0, r4
0033b42c  2c 10 83 e5                                      str r1, [r3, #0x2c]
0033b430  10 00 bd e8                                      ldm sp!, {r4}
0033b434  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033b4d8, declared_size=56, range_size=56, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase5clearEv
; demangled: TouchScreenBase::clear()
; decoder-mode: arm
0033b4d8  10 40 2d e9                                      push {r4, lr}
0033b4dc  00 40 a0 e1                                      mov r4, r0
0033b4e0  24 00 9f e5                                      ldr r0, [pc, #0x24]
0033b4e4  00 00 8f e0                                      add r0, pc, r0
0033b4e8  09 a3 ff eb                                      bl #0x324114
0033b4ec  00 30 a0 e3                                      mov r3, #0
0033b4f0  03 20 a0 e1                                      mov r2, r3
0033b4f4  01 30 83 e2                                      add r3, r3, #1
0033b4f8  08 00 53 e3                                      cmp r3, #8
0033b4fc  28 20 c4 e5                                      strb r2, [r4, #0x28]
0033b500  30 40 84 e2                                      add r4, r4, #0x30
0033b504  fa ff ff 1a                                      bne #0x33b4f4
0033b508  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033b50c  2c 4b 58 00                                      .byte 0x2c, 0x4b, 0x58, 0x00

; FUNCTION 0x0033b510, declared_size=176, range_size=176, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase13_PopFromQueueEv
; demangled: TouchScreenBase::_PopFromQueue()
; decoder-mode: arm
0033b510  10 40 2d e9                                      push {r4, lr}
0033b514  08 d0 4d e2                                      sub sp, sp, #8
0033b518  00 40 a0 e1                                      mov r4, r0
0033b51c  20 fd ff eb                                      bl #0x33a9a4
0033b520  80 30 9f e5                                      ldr r3, [pc, #0x80]
0033b524  00 00 50 e3                                      cmp r0, #0
0033b528  03 30 8f e0                                      add r3, pc, r3
0033b52c  08 00 00 0a                                      beq #0x33b554
0033b530  74 20 9f e5                                      ldr r2, [pc, #0x74]
0033b534  02 20 93 e7                                      ldr r2, [r3, r2]
0033b538  00 20 92 e5                                      ldr r2, [r2]
0033b53c  02 00 52 e3                                      cmp r2, #2
0033b540  00 30 a0 03                                      moveq r3, #0
0033b544  00 30 83 05                                      streq r3, [r3]
0033b548  01 00 00 0a                                      beq #0x33b554
0033b54c  01 00 52 e3                                      cmp r2, #1
0033b550  07 00 00 0a                                      beq #0x33b574
0033b554  a0 31 94 e5                                      ldr r3, [r4, #0x1a0]
0033b558  01 30 83 e2                                      add r3, r3, #1
0033b55c  0f 00 53 e3                                      cmp r3, #0xf
0033b560  a0 31 84 e5                                      str r3, [r4, #0x1a0]
0033b564  00 30 a0 83                                      movhi r3, #0
0033b568  a0 31 84 85                                      strhi r3, [r4, #0x1a0]
0033b56c  08 d0 8d e2                                      add sp, sp, #8
0033b570  10 80 bd e8                                      pop {r4, pc}
0033b574  34 00 9f e5                                      ldr r0, [pc, #0x34]
0033b578  34 10 9f e5                                      ldr r1, [pc, #0x34]
0033b57c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033b580  00 00 93 e7                                      ldr r0, [r3, r0]
0033b584  30 30 9f e5                                      ldr r3, [pc, #0x30]
0033b588  6c c0 a0 e3                                      mov ip, #0x6c
0033b58c  01 10 8f e0                                      add r1, pc, r1
0033b590  02 20 8f e0                                      add r2, pc, r2
0033b594  03 30 8f e0                                      add r3, pc, r3
0033b598  a8 00 80 e2                                      add r0, r0, #0xa8
0033b59c  00 c0 8d e5                                      str ip, [sp]
0033b5a0  97 4a ff eb                                      bl #0x30e004
0033b5a4  ea ff ff ea                                      b #0x33b554
; mapping-symbol data/literal pool
0033b5a8  68 95 65 00 c0 39 00 00 c0 19 00 00 4c 2e 58 00  .byte 0x68, 0x95, 0x65, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x4c, 0x2e, 0x58, 0x00
0033b5b8  b8 4a 58 00 cc 4a 58 00                          .byte 0xb8, 0x4a, 0x58, 0x00, 0xcc, 0x4a, 0x58, 0x00

; FUNCTION 0x0033b5c0, declared_size=168, range_size=168, mode=arm
; class-group: TouchScreenBase
; alias: _ZNK15TouchScreenBase20_GetNextEventInQueueEv
; demangled: TouchScreenBase::_GetNextEventInQueue() const
; decoder-mode: arm
0033b5c0  10 40 2d e9                                      push {r4, lr}
0033b5c4  08 d0 4d e2                                      sub sp, sp, #8
0033b5c8  00 40 a0 e1                                      mov r4, r0
0033b5cc  f4 fc ff eb                                      bl #0x33a9a4
0033b5d0  78 30 9f e5                                      ldr r3, [pc, #0x78]
0033b5d4  00 00 50 e3                                      cmp r0, #0
0033b5d8  03 30 8f e0                                      add r3, pc, r3
0033b5dc  08 00 00 0a                                      beq #0x33b604
0033b5e0  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0033b5e4  02 20 93 e7                                      ldr r2, [r3, r2]
0033b5e8  00 20 92 e5                                      ldr r2, [r2]
0033b5ec  02 00 52 e3                                      cmp r2, #2
0033b5f0  00 30 a0 03                                      moveq r3, #0
0033b5f4  00 30 83 05                                      streq r3, [r3]
0033b5f8  01 00 00 0a                                      beq #0x33b604
0033b5fc  01 00 52 e3                                      cmp r2, #1
0033b600  05 00 00 0a                                      beq #0x33b61c
0033b604  94 31 94 e5                                      ldr r3, [r4, #0x194]
0033b608  a0 21 94 e5                                      ldr r2, [r4, #0x1a0]
0033b60c  0c 00 a0 e3                                      mov r0, #0xc
0033b610  90 32 20 e0                                      mla r0, r0, r2, r3
0033b614  08 d0 8d e2                                      add sp, sp, #8
0033b618  10 80 bd e8                                      pop {r4, pc}
0033b61c  34 00 9f e5                                      ldr r0, [pc, #0x34]
0033b620  34 10 9f e5                                      ldr r1, [pc, #0x34]
0033b624  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033b628  00 00 93 e7                                      ldr r0, [r3, r0]
0033b62c  30 30 9f e5                                      ldr r3, [pc, #0x30]
0033b630  35 c0 a0 e3                                      mov ip, #0x35
0033b634  01 10 8f e0                                      add r1, pc, r1
0033b638  02 20 8f e0                                      add r2, pc, r2
0033b63c  03 30 8f e0                                      add r3, pc, r3
0033b640  a8 00 80 e2                                      add r0, r0, #0xa8
0033b644  00 c0 8d e5                                      str ip, [sp]
0033b648  6d 4a ff eb                                      bl #0x30e004
0033b64c  ec ff ff ea                                      b #0x33b604
; mapping-symbol data/literal pool
0033b650  b8 94 65 00 c0 39 00 00 c0 19 00 00 a4 2d 58 00  .byte 0xb8, 0x94, 0x65, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xa4, 0x2d, 0x58, 0x00
0033b660  10 4a 58 00 24 4a 58 00                          .byte 0x10, 0x4a, 0x58, 0x00, 0x24, 0x4a, 0x58, 0x00

; FUNCTION 0x0033bd2c, declared_size=128, range_size=128, mode=arm
; class-group: TouchScreenBase
; alias: _ZNK15TouchScreenBase14getTouchIDListEv
; demangled: TouchScreenBase::getTouchIDList() const
; decoder-mode: arm
0033bd2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0033bd30  00 40 a0 e1                                      mov r4, r0
0033bd34  08 d0 4d e2                                      sub sp, sp, #8
0033bd38  00 00 84 e5                                      str r0, [r4]
0033bd3c  04 00 84 e5                                      str r0, [r4, #4]
0033bd40  01 60 a0 e1                                      mov r6, r1
0033bd44  00 50 a0 e3                                      mov r5, #0
0033bd48  02 00 00 ea                                      b #0x33bd58
0033bd4c  01 50 85 e2                                      add r5, r5, #1
0033bd50  08 00 55 e3                                      cmp r5, #8
0033bd54  0e 00 00 0a                                      beq #0x33bd94
0033bd58  28 30 d6 e5                                      ldrb r3, [r6, #0x28]
0033bd5c  30 60 86 e2                                      add r6, r6, #0x30
0033bd60  00 00 53 e3                                      cmp r3, #0
0033bd64  f8 ff ff 0a                                      beq #0x33bd4c
0033bd68  04 00 a0 e1                                      mov r0, r4
0033bd6c  5f fe ff eb                                      bl #0x33b6f0
0033bd70  08 50 80 e5                                      str r5, [r0, #8]
0033bd74  04 30 94 e5                                      ldr r3, [r4, #4]
0033bd78  01 50 85 e2                                      add r5, r5, #1
0033bd7c  08 00 55 e3                                      cmp r5, #8
0033bd80  00 40 80 e5                                      str r4, [r0]
0033bd84  04 30 80 e5                                      str r3, [r0, #4]
0033bd88  00 00 83 e5                                      str r0, [r3]
0033bd8c  04 00 84 e5                                      str r0, [r4, #4]
0033bd90  f0 ff ff 1a                                      bne #0x33bd58
0033bd94  04 00 a0 e1                                      mov r0, r4
0033bd98  04 10 8d e2                                      add r1, sp, #4
0033bd9c  5b fe ff eb                                      bl #0x33b710
0033bda0  04 00 a0 e1                                      mov r0, r4
0033bda4  08 d0 8d e2                                      add sp, sp, #8
0033bda8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0033be08, declared_size=64, range_size=64, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBaseD1Ev
; demangled: TouchScreenBase::~TouchScreenBase()
; decoder-mode: arm
0033be08  30 30 9f e5                                      ldr r3, [pc, #0x30]
0033be0c  30 20 9f e5                                      ldr r2, [pc, #0x30]
0033be10  70 40 2d e9                                      push {r4, r5, r6, lr}
0033be14  03 30 8f e0                                      add r3, pc, r3
0033be18  02 20 93 e7                                      ldr r2, [r3, r2]
0033be1c  00 40 a0 e1                                      mov r4, r0
0033be20  00 50 a0 e1                                      mov r5, r0
0033be24  08 20 82 e2                                      add r2, r2, #8
0033be28  94 21 84 e4                                      str r2, [r4], #0x194
0033be2c  a9 fd ff eb                                      bl #0x33b4d8
0033be30  04 00 a0 e1                                      mov r0, r4
0033be34  dc ff ff eb                                      bl #0x33bdac
0033be38  05 00 a0 e1                                      mov r0, r5
0033be3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033be40  7c 8c 65 00 18 3a 00 00                          .byte 0x7c, 0x8c, 0x65, 0x00, 0x18, 0x3a, 0x00, 0x00

; FUNCTION 0x0033be48, declared_size=28, range_size=28, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBaseD0Ev
; demangled: TouchScreenBase::~TouchScreenBase()
; decoder-mode: arm
0033be48  10 40 2d e9                                      push {r4, lr}
0033be4c  00 40 a0 e1                                      mov r4, r0
0033be50  ec ff ff eb                                      bl #0x33be08
0033be54  04 00 a0 e1                                      mov r0, r4
0033be58  78 51 ff eb                                      bl #0x310440
0033be5c  04 00 a0 e1                                      mov r0, r4
0033be60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033be64, declared_size=64, range_size=64, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBaseD2Ev
; demangled: TouchScreenBase::~TouchScreenBase()
; decoder-mode: arm
0033be64  30 30 9f e5                                      ldr r3, [pc, #0x30]
0033be68  30 20 9f e5                                      ldr r2, [pc, #0x30]
0033be6c  70 40 2d e9                                      push {r4, r5, r6, lr}
0033be70  03 30 8f e0                                      add r3, pc, r3
0033be74  02 20 93 e7                                      ldr r2, [r3, r2]
0033be78  00 40 a0 e1                                      mov r4, r0
0033be7c  00 50 a0 e1                                      mov r5, r0
0033be80  08 20 82 e2                                      add r2, r2, #8
0033be84  94 21 84 e4                                      str r2, [r4], #0x194
0033be88  92 fd ff eb                                      bl #0x33b4d8
0033be8c  04 00 a0 e1                                      mov r0, r4
0033be90  c5 ff ff eb                                      bl #0x33bdac
0033be94  05 00 a0 e1                                      mov r0, r5
0033be98  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033be9c  20 8c 65 00 18 3a 00 00                          .byte 0x20, 0x8c, 0x65, 0x00, 0x18, 0x3a, 0x00, 0x00

; FUNCTION 0x0033c298, declared_size=320, range_size=320, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBaseC2Ess
; demangled: TouchScreenBase::TouchScreenBase(short, short)
; decoder-mode: arm
0033c298  30 31 9f e5                                      ldr r3, [pc, #0x130]
0033c29c  30 c1 9f e5                                      ldr ip, [pc, #0x130]
0033c2a0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0033c2a4  03 30 8f e0                                      add r3, pc, r3
0033c2a8  0c c0 93 e7                                      ldr ip, [r3, ip]
0033c2ac  00 40 a0 e1                                      mov r4, r0
0033c2b0  14 d0 4d e2                                      sub sp, sp, #0x14
0033c2b4  08 c0 8c e2                                      add ip, ip, #8
0033c2b8  38 c0 80 e4                                      str ip, [r0], #0x38
0033c2bc  6e ef 84 e2                                      add lr, r4, #0x1b8
0033c2c0  00 c0 a0 e3                                      mov ip, #0
0033c2c4  00 60 a0 e3                                      mov r6, #0
0033c2c8  b0 63 40 e1                                      strh r6, [r0, #-0x30]
0033c2cc  be 62 40 e1                                      strh r6, [r0, #-0x2e]
0033c2d0  bc 62 40 e1                                      strh r6, [r0, #-0x2c]
0033c2d4  ba 62 40 e1                                      strh r6, [r0, #-0x2a]
0033c2d8  b8 62 40 e1                                      strh r6, [r0, #-0x28]
0033c2dc  b6 62 40 e1                                      strh r6, [r0, #-0x26]
0033c2e0  18 c0 40 e5                                      strb ip, [r0, #-0x18]
0033c2e4  10 60 40 e5                                      strb r6, [r0, #-0x10]
0033c2e8  30 00 80 e2                                      add r0, r0, #0x30
0033c2ec  0e 00 50 e1                                      cmp r0, lr
0033c2f0  f3 ff ff 1a                                      bne #0x33c2c4
0033c2f4  6b 3f a0 e3                                      mov r3, #0x1ac
0033c2f8  b3 10 84 e1                                      strh r1, [r4, r3]
0033c2fc  ae 31 00 e3                                      movw r3, #0x1ae
0033c300  b3 20 84 e1                                      strh r2, [r4, r3]
0033c304  00 00 a0 e3                                      mov r0, #0
0033c308  00 10 a0 e3                                      mov r1, #0
0033c30c  62 3f a0 e3                                      mov r3, #0x188
0033c310  f3 00 84 e1                                      strd r0, r1, [r4, r3]
0033c314  65 af 84 e2                                      add sl, r4, #0x194
0033c318  fe 35 a0 e3                                      mov r3, #0x3f800000
0033c31c  b0 31 84 e5                                      str r3, [r4, #0x1b0]
0033c320  90 61 84 e5                                      str r6, [r4, #0x190]
0033c324  94 61 84 e5                                      str r6, [r4, #0x194]
0033c328  98 61 84 e5                                      str r6, [r4, #0x198]
0033c32c  9c 61 84 e5                                      str r6, [r4, #0x19c]
0033c330  a0 61 84 e5                                      str r6, [r4, #0x1a0]
0033c334  a4 61 84 e5                                      str r6, [r4, #0x1a4]
0033c338  a8 61 84 e5                                      str r6, [r4, #0x1a8]
0033c33c  0a 00 a0 e1                                      mov r0, sl
0033c340  04 70 8d e2                                      add r7, sp, #4
0033c344  17 ff ff eb                                      bl #0x33bfa8
0033c348  06 50 a0 e1                                      mov r5, r6
0033c34c  08 80 87 e2                                      add r8, r7, #8
0033c350  0d 00 00 ea                                      b #0x33c38c
0033c354  04 30 9d e5                                      ldr r3, [sp, #4]
0033c358  01 60 86 e2                                      add r6, r6, #1
0033c35c  10 00 56 e3                                      cmp r6, #0x10
0033c360  00 30 81 e5                                      str r3, [r1]
0033c364  b8 30 dd e1                                      ldrh r3, [sp, #8]
0033c368  b4 30 c1 e1                                      strh r3, [r1, #4]
0033c36c  ba 30 dd e1                                      ldrh r3, [sp, #0xa]
0033c370  b6 30 c1 e1                                      strh r3, [r1, #6]
0033c374  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0033c378  08 30 81 e5                                      str r3, [r1, #8]
0033c37c  98 31 94 e5                                      ldr r3, [r4, #0x198]
0033c380  0c 30 83 e2                                      add r3, r3, #0xc
0033c384  98 31 84 e5                                      str r3, [r4, #0x198]
0033c388  0d 00 00 0a                                      beq #0x33c3c4
0033c38c  98 11 94 e5                                      ldr r1, [r4, #0x198]
0033c390  9c 31 94 e5                                      ldr r3, [r4, #0x19c]
0033c394  00 50 87 e5                                      str r5, [r7]
0033c398  00 50 88 e5                                      str r5, [r8]
0033c39c  03 00 51 e1                                      cmp r1, r3
0033c3a0  b8 50 cd e1                                      strh r5, [sp, #8]
0033c3a4  ba 50 cd e1                                      strh r5, [sp, #0xa]
0033c3a8  e9 ff ff 1a                                      bne #0x33c354
0033c3ac  0a 00 a0 e1                                      mov r0, sl
0033c3b0  07 20 a0 e1                                      mov r2, r7
0033c3b4  01 60 86 e2                                      add r6, r6, #1
0033c3b8  49 ff ff eb                                      bl #0x33c0e4
0033c3bc  10 00 56 e3                                      cmp r6, #0x10
0033c3c0  f1 ff ff 1a                                      bne #0x33c38c
0033c3c4  04 00 a0 e1                                      mov r0, r4
0033c3c8  14 d0 8d e2                                      add sp, sp, #0x14
0033c3cc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0033c3d0  ec 87 65 00 18 3a 00 00                          .byte 0xec, 0x87, 0x65, 0x00, 0x18, 0x3a, 0x00, 0x00

; FUNCTION 0x0033c3d8, declared_size=320, range_size=320, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBaseC1Ess
; demangled: TouchScreenBase::TouchScreenBase(short, short)
; decoder-mode: arm
0033c3d8  30 31 9f e5                                      ldr r3, [pc, #0x130]
0033c3dc  30 c1 9f e5                                      ldr ip, [pc, #0x130]
0033c3e0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0033c3e4  03 30 8f e0                                      add r3, pc, r3
0033c3e8  0c c0 93 e7                                      ldr ip, [r3, ip]
0033c3ec  00 40 a0 e1                                      mov r4, r0
0033c3f0  14 d0 4d e2                                      sub sp, sp, #0x14
0033c3f4  08 c0 8c e2                                      add ip, ip, #8
0033c3f8  38 c0 80 e4                                      str ip, [r0], #0x38
0033c3fc  6e ef 84 e2                                      add lr, r4, #0x1b8
0033c400  00 c0 a0 e3                                      mov ip, #0
0033c404  00 60 a0 e3                                      mov r6, #0
0033c408  b0 63 40 e1                                      strh r6, [r0, #-0x30]
0033c40c  be 62 40 e1                                      strh r6, [r0, #-0x2e]
0033c410  bc 62 40 e1                                      strh r6, [r0, #-0x2c]
0033c414  ba 62 40 e1                                      strh r6, [r0, #-0x2a]
0033c418  b8 62 40 e1                                      strh r6, [r0, #-0x28]
0033c41c  b6 62 40 e1                                      strh r6, [r0, #-0x26]
0033c420  18 c0 40 e5                                      strb ip, [r0, #-0x18]
0033c424  10 60 40 e5                                      strb r6, [r0, #-0x10]
0033c428  30 00 80 e2                                      add r0, r0, #0x30
0033c42c  0e 00 50 e1                                      cmp r0, lr
0033c430  f3 ff ff 1a                                      bne #0x33c404
0033c434  6b 3f a0 e3                                      mov r3, #0x1ac
0033c438  b3 10 84 e1                                      strh r1, [r4, r3]
0033c43c  ae 31 00 e3                                      movw r3, #0x1ae
0033c440  b3 20 84 e1                                      strh r2, [r4, r3]
0033c444  00 00 a0 e3                                      mov r0, #0
0033c448  00 10 a0 e3                                      mov r1, #0
0033c44c  62 3f a0 e3                                      mov r3, #0x188
0033c450  f3 00 84 e1                                      strd r0, r1, [r4, r3]
0033c454  65 af 84 e2                                      add sl, r4, #0x194
0033c458  fe 35 a0 e3                                      mov r3, #0x3f800000
0033c45c  b0 31 84 e5                                      str r3, [r4, #0x1b0]
0033c460  90 61 84 e5                                      str r6, [r4, #0x190]
0033c464  94 61 84 e5                                      str r6, [r4, #0x194]
0033c468  98 61 84 e5                                      str r6, [r4, #0x198]
0033c46c  9c 61 84 e5                                      str r6, [r4, #0x19c]
0033c470  a0 61 84 e5                                      str r6, [r4, #0x1a0]
0033c474  a4 61 84 e5                                      str r6, [r4, #0x1a4]
0033c478  a8 61 84 e5                                      str r6, [r4, #0x1a8]
0033c47c  0a 00 a0 e1                                      mov r0, sl
0033c480  04 70 8d e2                                      add r7, sp, #4
0033c484  c7 fe ff eb                                      bl #0x33bfa8
0033c488  06 50 a0 e1                                      mov r5, r6
0033c48c  08 80 87 e2                                      add r8, r7, #8
0033c490  0d 00 00 ea                                      b #0x33c4cc
0033c494  04 30 9d e5                                      ldr r3, [sp, #4]
0033c498  01 60 86 e2                                      add r6, r6, #1
0033c49c  10 00 56 e3                                      cmp r6, #0x10
0033c4a0  00 30 81 e5                                      str r3, [r1]
0033c4a4  b8 30 dd e1                                      ldrh r3, [sp, #8]
0033c4a8  b4 30 c1 e1                                      strh r3, [r1, #4]
0033c4ac  ba 30 dd e1                                      ldrh r3, [sp, #0xa]
0033c4b0  b6 30 c1 e1                                      strh r3, [r1, #6]
0033c4b4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0033c4b8  08 30 81 e5                                      str r3, [r1, #8]
0033c4bc  98 31 94 e5                                      ldr r3, [r4, #0x198]
0033c4c0  0c 30 83 e2                                      add r3, r3, #0xc
0033c4c4  98 31 84 e5                                      str r3, [r4, #0x198]
0033c4c8  0d 00 00 0a                                      beq #0x33c504
0033c4cc  98 11 94 e5                                      ldr r1, [r4, #0x198]
0033c4d0  9c 31 94 e5                                      ldr r3, [r4, #0x19c]
0033c4d4  00 50 87 e5                                      str r5, [r7]
0033c4d8  00 50 88 e5                                      str r5, [r8]
0033c4dc  03 00 51 e1                                      cmp r1, r3
0033c4e0  b8 50 cd e1                                      strh r5, [sp, #8]
0033c4e4  ba 50 cd e1                                      strh r5, [sp, #0xa]
0033c4e8  e9 ff ff 1a                                      bne #0x33c494
0033c4ec  0a 00 a0 e1                                      mov r0, sl
0033c4f0  07 20 a0 e1                                      mov r2, r7
0033c4f4  01 60 86 e2                                      add r6, r6, #1
0033c4f8  f9 fe ff eb                                      bl #0x33c0e4
0033c4fc  10 00 56 e3                                      cmp r6, #0x10
0033c500  f1 ff ff 1a                                      bne #0x33c4cc
0033c504  04 00 a0 e1                                      mov r0, r4
0033c508  14 d0 8d e2                                      add sp, sp, #0x14
0033c50c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0033c510  ac 86 65 00 18 3a 00 00                          .byte 0xac, 0x86, 0x65, 0x00, 0x18, 0x3a, 0x00, 0x00

; FUNCTION 0x0033c568, declared_size=1776, range_size=1776, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase13ProcessEventsEv
; demangled: TouchScreenBase::ProcessEvents()
; decoder-mode: arm
0033c568  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0033c56c  c0 56 9f e5                                      ldr r5, [pc, #0x6c0]
0033c570  c0 26 9f e5                                      ldr r2, [pc, #0x6c0]
0033c574  47 df 4d e2                                      sub sp, sp, #0x11c
0033c578  05 50 8f e0                                      add r5, pc, r5
0033c57c  02 30 95 e7                                      ldr r3, [r5, r2]
0033c580  2c 20 8d e5                                      str r2, [sp, #0x2c]
0033c584  b0 26 9f e5                                      ldr r2, [pc, #0x6b0]
0033c588  00 c0 93 e5                                      ldr ip, [r3]
0033c58c  ac 36 9f e5                                      ldr r3, [pc, #0x6ac]
0033c590  00 80 a0 e1                                      mov r8, r0
0033c594  a8 06 9f e5                                      ldr r0, [pc, #0x6a8]
0033c598  03 10 95 e7                                      ldr r1, [r5, r3]
0033c59c  a4 36 9f e5                                      ldr r3, [pc, #0x6a4]
0033c5a0  02 20 8f e0                                      add r2, pc, r2
0033c5a4  14 70 91 e5                                      ldr r7, [r1, #0x14]
0033c5a8  03 30 8f e0                                      add r3, pc, r3
0033c5ac  1d 30 83 e2                                      add r3, r3, #0x1d
0033c5b0  28 30 8d e5                                      str r3, [sp, #0x28]
0033c5b4  90 36 9f e5                                      ldr r3, [pc, #0x690]
0033c5b8  90 66 9f e5                                      ldr r6, [pc, #0x690]
0033c5bc  1d 20 82 e2                                      add r2, r2, #0x1d
0033c5c0  14 c1 8d e5                                      str ip, [sp, #0x114]
0033c5c4  24 20 8d e5                                      str r2, [sp, #0x24]
0033c5c8  20 30 8d e5                                      str r3, [sp, #0x20]
0033c5cc  18 00 8d e5                                      str r0, [sp, #0x18]
0033c5d0  08 00 a0 e1                                      mov r0, r8
0033c5d4  f2 f8 ff eb                                      bl #0x33a9a4
0033c5d8  00 00 50 e3                                      cmp r0, #0
0033c5dc  5a 00 00 1a                                      bne #0x33c74c
0033c5e0  08 00 a0 e1                                      mov r0, r8
0033c5e4  f5 fb ff eb                                      bl #0x33b5c0
0033c5e8  00 a0 a0 e1                                      mov sl, r0
0033c5ec  08 00 a0 e1                                      mov r0, r8
0033c5f0  c6 fb ff eb                                      bl #0x33b510
0033c5f4  a8 31 98 e5                                      ldr r3, [r8, #0x1a8]
0033c5f8  b4 00 da e1                                      ldrh r0, [sl, #4]
0033c5fc  b6 b0 da e1                                      ldrh fp, [sl, #6]
0033c600  02 00 53 e3                                      cmp r3, #2
0033c604  58 00 00 0a                                      beq #0x33c76c
0033c608  03 00 53 e3                                      cmp r3, #3
0033c60c  a1 00 00 0a                                      beq #0x33c898
0033c610  01 00 53 e3                                      cmp r3, #1
0033c614  03 00 00 1a                                      bne #0x33c628
0033c618  ae 31 00 e3                                      movw r3, #0x1ae
0033c61c  b3 30 98 e1                                      ldrh r3, [r8, r3]
0033c620  03 b0 6b e0                                      rsb fp, fp, r3
0033c624  7b b0 ff e6                                      uxth fp, fp
0033c628  b0 41 98 e5                                      ldr r4, [r8, #0x1b0]
0033c62c  70 00 bf e6                                      sxth r0, r0
0033c630  cb 48 ff eb                                      bl #0x30e964
0033c634  04 10 a0 e1                                      mov r1, r4
0033c638  cb 49 ff eb                                      bl #0x30ed6c
0033c63c  a2 47 ff eb                                      bl #0x30e4cc
0033c640  70 90 ff e6                                      uxth sb, r0
0033c644  7b 00 bf e6                                      sxth r0, fp
0033c648  c5 48 ff eb                                      bl #0x30e964
0033c64c  00 10 a0 e1                                      mov r1, r0
0033c650  04 00 a0 e1                                      mov r0, r4
0033c654  c4 49 ff eb                                      bl #0x30ed6c
0033c658  9b 47 ff eb                                      bl #0x30e4cc
0033c65c  00 30 9a e5                                      ldr r3, [sl]
0033c660  70 00 ff e6                                      uxth r0, r0
0033c664  04 00 8d e5                                      str r0, [sp, #4]
0033c668  01 00 53 e3                                      cmp r3, #1
0033c66c  77 00 00 0a                                      beq #0x33c850
0033c670  02 00 53 e3                                      cmp r3, #2
0033c674  45 00 00 0a                                      beq #0x33c790
0033c678  00 00 53 e3                                      cmp r3, #0
0033c67c  d3 ff ff 1a                                      bne #0x33c5d0
0033c680  18 20 9d e5                                      ldr r2, [sp, #0x18]
0033c684  fc 40 8d e2                                      add r4, sp, #0xfc
0033c688  02 b0 95 e7                                      ldr fp, [r5, r2]
0033c68c  0b 00 a0 e1                                      mov r0, fp
0033c690  7c ec ff eb                                      bl #0x337888
0033c694  04 00 a0 e1                                      mov r0, r4
0033c698  28 10 9d e5                                      ldr r1, [sp, #0x28]
0033c69c  0c 41 8d e5                                      str r4, [sp, #0x10c]
0033c6a0  10 41 8d e5                                      str r4, [sp, #0x110]
0033c6a4  9b ff ff eb                                      bl #0x33c518
0033c6a8  0b 00 a0 e1                                      mov r0, fp
0033c6ac  04 10 a0 e1                                      mov r1, r4
0033c6b0  f4 ec ff eb                                      bl #0x337a88
0033c6b4  00 b0 a0 e1                                      mov fp, r0
0033c6b8  10 01 9d e5                                      ldr r0, [sp, #0x110]
0033c6bc  04 00 50 e1                                      cmp r0, r4
0033c6c0  06 00 00 0a                                      beq #0x33c6e0
0033c6c4  00 00 50 e3                                      cmp r0, #0
0033c6c8  04 00 00 0a                                      beq #0x33c6e0
0033c6cc  fc 10 9d e5                                      ldr r1, [sp, #0xfc]
0033c6d0  01 10 60 e0                                      rsb r1, r0, r1
0033c6d4  80 00 51 e3                                      cmp r1, #0x80
0033c6d8  4c 01 00 8a                                      bhi #0x33cc10
0033c6dc  07 32 0f eb                                      bl #0x708f00
0033c6e0  00 00 5b e3                                      cmp fp, #0
0033c6e4  70 00 00 1a                                      bne #0x33c8ac
0033c6e8  64 35 9f e5                                      ldr r3, [pc, #0x564]
0033c6ec  0c 30 8d e5                                      str r3, [sp, #0xc]
0033c6f0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0033c6f4  08 30 9a e5                                      ldr r3, [sl, #8]
0033c6f8  04 c0 a0 e3                                      mov ip, #4
0033c6fc  00 20 95 e7                                      ldr r2, [r5, r0]
0033c700  84 10 8d e2                                      add r1, sp, #0x84
0033c704  07 00 a0 e1                                      mov r0, r7
0033c708  08 20 82 e2                                      add r2, r2, #8
0033c70c  84 20 8d e5                                      str r2, [sp, #0x84]
0033c710  04 20 9d e5                                      ldr r2, [sp, #4]
0033c714  90 30 8d e5                                      str r3, [sp, #0x90]
0033c718  01 30 a0 e3                                      mov r3, #1
0033c71c  88 c0 8d e5                                      str ip, [sp, #0x88]
0033c720  be 28 cd e1                                      strh r2, [sp, #0x8e]
0033c724  94 30 cd e5                                      strb r3, [sp, #0x94]
0033c728  bc 98 cd e1                                      strh sb, [sp, #0x8c]
0033c72c  e2 f1 ff eb                                      bl #0x338ebc
0033c730  06 30 95 e7                                      ldr r3, [r5, r6]
0033c734  08 00 a0 e1                                      mov r0, r8
0033c738  08 30 83 e2                                      add r3, r3, #8
0033c73c  84 30 8d e5                                      str r3, [sp, #0x84]
0033c740  97 f8 ff eb                                      bl #0x33a9a4
0033c744  00 00 50 e3                                      cmp r0, #0
0033c748  a4 ff ff 0a                                      beq #0x33c5e0
0033c74c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0033c750  14 21 9d e5                                      ldr r2, [sp, #0x114]
0033c754  00 30 95 e7                                      ldr r3, [r5, r0]
0033c758  00 30 93 e5                                      ldr r3, [r3]
0033c75c  03 00 52 e1                                      cmp r2, r3
0033c760  32 01 00 1a                                      bne #0x33cc30
0033c764  47 df 8d e2                                      add sp, sp, #0x11c
0033c768  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0033c76c  6b 3f a0 e3                                      mov r3, #0x1ac
0033c770  b3 20 98 e1                                      ldrh r2, [r8, r3]
0033c774  ae 31 00 e3                                      movw r3, #0x1ae
0033c778  b3 30 98 e1                                      ldrh r3, [r8, r3]
0033c77c  02 00 60 e0                                      rsb r0, r0, r2
0033c780  70 00 ff e6                                      uxth r0, r0
0033c784  03 b0 6b e0                                      rsb fp, fp, r3
0033c788  7b b0 ff e6                                      uxth fp, fp
0033c78c  a5 ff ff ea                                      b #0x33c628
0033c790  18 30 9d e5                                      ldr r3, [sp, #0x18]
0033c794  e4 40 8d e2                                      add r4, sp, #0xe4
0033c798  03 b0 95 e7                                      ldr fp, [r5, r3]
0033c79c  0b 00 a0 e1                                      mov r0, fp
0033c7a0  38 ec ff eb                                      bl #0x337888
0033c7a4  04 00 a0 e1                                      mov r0, r4
0033c7a8  24 10 9d e5                                      ldr r1, [sp, #0x24]
0033c7ac  f4 40 8d e5                                      str r4, [sp, #0xf4]
0033c7b0  f8 40 8d e5                                      str r4, [sp, #0xf8]
0033c7b4  57 ff ff eb                                      bl #0x33c518
0033c7b8  0b 00 a0 e1                                      mov r0, fp
0033c7bc  04 10 a0 e1                                      mov r1, r4
0033c7c0  b0 ec ff eb                                      bl #0x337a88
0033c7c4  00 b0 a0 e1                                      mov fp, r0
0033c7c8  f8 00 9d e5                                      ldr r0, [sp, #0xf8]
0033c7cc  04 00 50 e1                                      cmp r0, r4
0033c7d0  06 00 00 0a                                      beq #0x33c7f0
0033c7d4  00 00 50 e3                                      cmp r0, #0
0033c7d8  04 00 00 0a                                      beq #0x33c7f0
0033c7dc  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
0033c7e0  01 10 60 e0                                      rsb r1, r0, r1
0033c7e4  80 00 51 e3                                      cmp r1, #0x80
0033c7e8  06 01 00 8a                                      bhi #0x33cc08
0033c7ec  c3 31 0f eb                                      bl #0x708f00
0033c7f0  00 00 5b e3                                      cmp fp, #0
0033c7f4  98 00 00 1a                                      bne #0x33ca5c
0033c7f8  54 04 9f e5                                      ldr r0, [pc, #0x454]
0033c7fc  0c 00 8d e5                                      str r0, [sp, #0xc]
0033c800  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0033c804  04 c0 a0 e3                                      mov ip, #4
0033c808  07 00 a0 e1                                      mov r0, r7
0033c80c  03 20 95 e7                                      ldr r2, [r5, r3]
0033c810  08 30 9a e5                                      ldr r3, [sl, #8]
0033c814  34 10 8d e2                                      add r1, sp, #0x34
0033c818  08 20 82 e2                                      add r2, r2, #8
0033c81c  34 20 8d e5                                      str r2, [sp, #0x34]
0033c820  04 20 9d e5                                      ldr r2, [sp, #4]
0033c824  40 30 8d e5                                      str r3, [sp, #0x40]
0033c828  00 30 a0 e3                                      mov r3, #0
0033c82c  44 30 cd e5                                      strb r3, [sp, #0x44]
0033c830  38 c0 8d e5                                      str ip, [sp, #0x38]
0033c834  bc 93 cd e1                                      strh sb, [sp, #0x3c]
0033c838  be 23 cd e1                                      strh r2, [sp, #0x3e]
0033c83c  9e f1 ff eb                                      bl #0x338ebc
0033c840  06 30 95 e7                                      ldr r3, [r5, r6]
0033c844  08 30 83 e2                                      add r3, r3, #8
0033c848  34 30 8d e5                                      str r3, [sp, #0x34]
0033c84c  5f ff ff ea                                      b #0x33c5d0
0033c850  20 30 9d e5                                      ldr r3, [sp, #0x20]
0033c854  05 c0 a0 e3                                      mov ip, #5
0033c858  07 00 a0 e1                                      mov r0, r7
0033c85c  03 20 95 e7                                      ldr r2, [r5, r3]
0033c860  08 30 9a e5                                      ldr r3, [sl, #8]
0033c864  d4 10 8d e2                                      add r1, sp, #0xd4
0033c868  08 20 82 e2                                      add r2, r2, #8
0033c86c  d4 20 8d e5                                      str r2, [sp, #0xd4]
0033c870  04 20 9d e5                                      ldr r2, [sp, #4]
0033c874  e0 30 8d e5                                      str r3, [sp, #0xe0]
0033c878  d8 c0 8d e5                                      str ip, [sp, #0xd8]
0033c87c  bc 9d cd e1                                      strh sb, [sp, #0xdc]
0033c880  be 2d cd e1                                      strh r2, [sp, #0xde]
0033c884  8c f1 ff eb                                      bl #0x338ebc
0033c888  06 30 95 e7                                      ldr r3, [r5, r6]
0033c88c  08 30 83 e2                                      add r3, r3, #8
0033c890  d4 30 8d e5                                      str r3, [sp, #0xd4]
0033c894  4d ff ff ea                                      b #0x33c5d0
0033c898  6b 3f a0 e3                                      mov r3, #0x1ac
0033c89c  b3 30 98 e1                                      ldrh r3, [r8, r3]
0033c8a0  03 00 60 e0                                      rsb r0, r0, r3
0033c8a4  70 00 ff e6                                      uxth r0, r0
0033c8a8  5e ff ff ea                                      b #0x33c628
0033c8ac  04 00 9d e5                                      ldr r0, [sp, #4]
0033c8b0  79 b0 bf e6                                      sxth fp, sb
0033c8b4  63 10 8b e2                                      add r1, fp, #0x63
0033c8b8  64 b0 4b e2                                      sub fp, fp, #0x64
0033c8bc  70 00 bf e6                                      sxth r0, r0
0033c8c0  01 00 5b e1                                      cmp fp, r1
0033c8c4  08 40 9a e5                                      ldr r4, [sl, #8]
0033c8c8  10 00 8d e5                                      str r0, [sp, #0x10]
0033c8cc  d1 00 00 ca                                      bgt #0x33cc18
0033c8d0  7c 33 9f e5                                      ldr r3, [pc, #0x37c]
0033c8d4  c0 20 8d e2                                      add r2, sp, #0xc0
0033c8d8  08 90 8d e5                                      str sb, [sp, #8]
0033c8dc  0c 30 8d e5                                      str r3, [sp, #0xc]
0033c8e0  03 30 95 e7                                      ldr r3, [r5, r3]
0033c8e4  14 a0 8d e5                                      str sl, [sp, #0x14]
0033c8e8  1c 80 8d e5                                      str r8, [sp, #0x1c]
0033c8ec  08 30 83 e2                                      add r3, r3, #8
0033c8f0  01 80 a0 e1                                      mov r8, r1
0033c8f4  02 a0 a0 e1                                      mov sl, r2
0033c8f8  03 90 a0 e1                                      mov sb, r3
0033c8fc  c4 2f a0 e1                                      asr r2, r4, #0x1f
0033c900  07 00 a0 e1                                      mov r0, r7
0033c904  a2 2e a0 e1                                      lsr r2, r2, #0x1d
0033c908  02 30 84 e0                                      add r3, r4, r2
0033c90c  07 30 03 e2                                      and r3, r3, #7
0033c910  03 30 62 e0                                      rsb r3, r2, r3
0033c914  04 20 9d e5                                      ldr r2, [sp, #4]
0033c918  cc 30 8d e5                                      str r3, [sp, #0xcc]
0033c91c  04 30 a0 e3                                      mov r3, #4
0033c920  c4 30 8d e5                                      str r3, [sp, #0xc4]
0033c924  0a 10 a0 e1                                      mov r1, sl
0033c928  01 30 a0 e3                                      mov r3, #1
0033c92c  b8 bc cd e1                                      strh fp, [sp, #0xc8]
0033c930  d0 30 cd e5                                      strb r3, [sp, #0xd0]
0033c934  c0 90 8d e5                                      str sb, [sp, #0xc0]
0033c938  ba 2c cd e1                                      strh r2, [sp, #0xca]
0033c93c  5e f1 ff eb                                      bl #0x338ebc
0033c940  06 30 95 e7                                      ldr r3, [r5, r6]
0033c944  32 b0 8b e2                                      add fp, fp, #0x32
0033c948  08 00 5b e1                                      cmp fp, r8
0033c94c  08 30 83 e2                                      add r3, r3, #8
0033c950  c0 30 8d e5                                      str r3, [sp, #0xc0]
0033c954  01 40 84 e2                                      add r4, r4, #1
0033c958  e7 ff ff da                                      ble #0x33c8fc
0033c95c  08 90 9d e5                                      ldr sb, [sp, #8]
0033c960  14 a0 9d e5                                      ldr sl, [sp, #0x14]
0033c964  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
0033c968  10 00 9d e5                                      ldr r0, [sp, #0x10]
0033c96c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0033c970  63 00 80 e2                                      add r0, r0, #0x63
0033c974  64 b0 42 e2                                      sub fp, r2, #0x64
0033c978  00 00 5b e1                                      cmp fp, r0
0033c97c  08 00 8d e5                                      str r0, [sp, #8]
0033c980  21 00 00 ca                                      bgt #0x33ca0c
0033c984  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0033c988  ac 20 8d e2                                      add r2, sp, #0xac
0033c98c  10 a0 8d e5                                      str sl, [sp, #0x10]
0033c990  00 30 95 e7                                      ldr r3, [r5, r0]
0033c994  14 80 8d e5                                      str r8, [sp, #0x14]
0033c998  02 80 a0 e1                                      mov r8, r2
0033c99c  08 30 83 e2                                      add r3, r3, #8
0033c9a0  03 a0 a0 e1                                      mov sl, r3
0033c9a4  c4 2f a0 e1                                      asr r2, r4, #0x1f
0033c9a8  07 00 a0 e1                                      mov r0, r7
0033c9ac  a2 2e a0 e1                                      lsr r2, r2, #0x1d
0033c9b0  02 30 84 e0                                      add r3, r4, r2
0033c9b4  07 30 03 e2                                      and r3, r3, #7
0033c9b8  03 30 62 e0                                      rsb r3, r2, r3
0033c9bc  b8 30 8d e5                                      str r3, [sp, #0xb8]
0033c9c0  01 20 a0 e3                                      mov r2, #1
0033c9c4  04 30 a0 e3                                      mov r3, #4
0033c9c8  08 10 a0 e1                                      mov r1, r8
0033c9cc  b6 bb cd e1                                      strh fp, [sp, #0xb6]
0033c9d0  b0 30 8d e5                                      str r3, [sp, #0xb0]
0033c9d4  ac a0 8d e5                                      str sl, [sp, #0xac]
0033c9d8  b4 9b cd e1                                      strh sb, [sp, #0xb4]
0033c9dc  bc 20 cd e5                                      strb r2, [sp, #0xbc]
0033c9e0  35 f1 ff eb                                      bl #0x338ebc
0033c9e4  06 30 95 e7                                      ldr r3, [r5, r6]
0033c9e8  08 00 9d e5                                      ldr r0, [sp, #8]
0033c9ec  32 b0 8b e2                                      add fp, fp, #0x32
0033c9f0  08 30 83 e2                                      add r3, r3, #8
0033c9f4  00 00 5b e1                                      cmp fp, r0
0033c9f8  ac 30 8d e5                                      str r3, [sp, #0xac]
0033c9fc  01 40 84 e2                                      add r4, r4, #1
0033ca00  e7 ff ff da                                      ble #0x33c9a4
0033ca04  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0033ca08  14 80 9d e5                                      ldr r8, [sp, #0x14]
0033ca0c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0033ca10  07 00 a0 e1                                      mov r0, r7
0033ca14  98 10 8d e2                                      add r1, sp, #0x98
0033ca18  02 30 95 e7                                      ldr r3, [r5, r2]
0033ca1c  04 20 a0 e3                                      mov r2, #4
0033ca20  9c 20 8d e5                                      str r2, [sp, #0x9c]
0033ca24  08 30 83 e2                                      add r3, r3, #8
0033ca28  98 30 8d e5                                      str r3, [sp, #0x98]
0033ca2c  00 30 a0 e3                                      mov r3, #0
0033ca30  a4 30 8d e5                                      str r3, [sp, #0xa4]
0033ca34  01 30 a0 e3                                      mov r3, #1
0033ca38  a8 30 cd e5                                      strb r3, [sp, #0xa8]
0033ca3c  19 30 a0 e3                                      mov r3, #0x19
0033ca40  b0 3a cd e1                                      strh r3, [sp, #0xa0]
0033ca44  b2 3a cd e1                                      strh r3, [sp, #0xa2]
0033ca48  1b f1 ff eb                                      bl #0x338ebc
0033ca4c  06 30 95 e7                                      ldr r3, [r5, r6]
0033ca50  08 30 83 e2                                      add r3, r3, #8
0033ca54  98 30 8d e5                                      str r3, [sp, #0x98]
0033ca58  24 ff ff ea                                      b #0x33c6f0
0033ca5c  04 20 9d e5                                      ldr r2, [sp, #4]
0033ca60  79 b0 bf e6                                      sxth fp, sb
0033ca64  63 10 8b e2                                      add r1, fp, #0x63
0033ca68  64 b0 4b e2                                      sub fp, fp, #0x64
0033ca6c  72 20 bf e6                                      sxth r2, r2
0033ca70  01 00 5b e1                                      cmp fp, r1
0033ca74  08 40 9a e5                                      ldr r4, [sl, #8]
0033ca78  10 20 8d e5                                      str r2, [sp, #0x10]
0033ca7c  68 00 00 ca                                      bgt #0x33cc24
0033ca80  cc 01 9f e5                                      ldr r0, [pc, #0x1cc]
0033ca84  70 20 8d e2                                      add r2, sp, #0x70
0033ca88  08 90 8d e5                                      str sb, [sp, #8]
0033ca8c  00 30 95 e7                                      ldr r3, [r5, r0]
0033ca90  14 a0 8d e5                                      str sl, [sp, #0x14]
0033ca94  1c 80 8d e5                                      str r8, [sp, #0x1c]
0033ca98  08 30 83 e2                                      add r3, r3, #8
0033ca9c  0c 00 8d e5                                      str r0, [sp, #0xc]
0033caa0  01 80 a0 e1                                      mov r8, r1
0033caa4  02 a0 a0 e1                                      mov sl, r2
0033caa8  03 90 a0 e1                                      mov sb, r3
0033caac  c4 2f a0 e1                                      asr r2, r4, #0x1f
0033cab0  07 00 a0 e1                                      mov r0, r7
0033cab4  a2 2e a0 e1                                      lsr r2, r2, #0x1d
0033cab8  02 30 84 e0                                      add r3, r4, r2
0033cabc  07 30 03 e2                                      and r3, r3, #7
0033cac0  03 30 62 e0                                      rsb r3, r2, r3
0033cac4  04 20 9d e5                                      ldr r2, [sp, #4]
0033cac8  7c 30 8d e5                                      str r3, [sp, #0x7c]
0033cacc  04 30 a0 e3                                      mov r3, #4
0033cad0  74 30 8d e5                                      str r3, [sp, #0x74]
0033cad4  0a 10 a0 e1                                      mov r1, sl
0033cad8  00 30 a0 e3                                      mov r3, #0
0033cadc  b8 b7 cd e1                                      strh fp, [sp, #0x78]
0033cae0  80 30 cd e5                                      strb r3, [sp, #0x80]
0033cae4  70 90 8d e5                                      str sb, [sp, #0x70]
0033cae8  ba 27 cd e1                                      strh r2, [sp, #0x7a]
0033caec  f2 f0 ff eb                                      bl #0x338ebc
0033caf0  06 30 95 e7                                      ldr r3, [r5, r6]
0033caf4  32 b0 8b e2                                      add fp, fp, #0x32
0033caf8  08 00 5b e1                                      cmp fp, r8
0033cafc  08 30 83 e2                                      add r3, r3, #8
0033cb00  70 30 8d e5                                      str r3, [sp, #0x70]
0033cb04  01 40 84 e2                                      add r4, r4, #1
0033cb08  e7 ff ff da                                      ble #0x33caac
0033cb0c  08 90 9d e5                                      ldr sb, [sp, #8]
0033cb10  14 a0 9d e5                                      ldr sl, [sp, #0x14]
0033cb14  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
0033cb18  10 00 9d e5                                      ldr r0, [sp, #0x10]
0033cb1c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0033cb20  63 00 80 e2                                      add r0, r0, #0x63
0033cb24  64 b0 42 e2                                      sub fp, r2, #0x64
0033cb28  00 00 5b e1                                      cmp fp, r0
0033cb2c  08 00 8d e5                                      str r0, [sp, #8]
0033cb30  21 00 00 ca                                      bgt #0x33cbbc
0033cb34  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0033cb38  5c 20 8d e2                                      add r2, sp, #0x5c
0033cb3c  10 a0 8d e5                                      str sl, [sp, #0x10]
0033cb40  00 30 95 e7                                      ldr r3, [r5, r0]
0033cb44  14 80 8d e5                                      str r8, [sp, #0x14]
0033cb48  02 80 a0 e1                                      mov r8, r2
0033cb4c  08 30 83 e2                                      add r3, r3, #8
0033cb50  03 a0 a0 e1                                      mov sl, r3
0033cb54  c4 2f a0 e1                                      asr r2, r4, #0x1f
0033cb58  07 00 a0 e1                                      mov r0, r7
0033cb5c  a2 2e a0 e1                                      lsr r2, r2, #0x1d
0033cb60  02 30 84 e0                                      add r3, r4, r2
0033cb64  07 30 03 e2                                      and r3, r3, #7
0033cb68  03 30 62 e0                                      rsb r3, r2, r3
0033cb6c  68 30 8d e5                                      str r3, [sp, #0x68]
0033cb70  00 20 a0 e3                                      mov r2, #0
0033cb74  04 30 a0 e3                                      mov r3, #4
0033cb78  08 10 a0 e1                                      mov r1, r8
0033cb7c  b6 b6 cd e1                                      strh fp, [sp, #0x66]
0033cb80  60 30 8d e5                                      str r3, [sp, #0x60]
0033cb84  5c a0 8d e5                                      str sl, [sp, #0x5c]
0033cb88  b4 96 cd e1                                      strh sb, [sp, #0x64]
0033cb8c  6c 20 cd e5                                      strb r2, [sp, #0x6c]
0033cb90  c9 f0 ff eb                                      bl #0x338ebc
0033cb94  06 30 95 e7                                      ldr r3, [r5, r6]
0033cb98  08 00 9d e5                                      ldr r0, [sp, #8]
0033cb9c  32 b0 8b e2                                      add fp, fp, #0x32
0033cba0  08 30 83 e2                                      add r3, r3, #8
0033cba4  00 00 5b e1                                      cmp fp, r0
0033cba8  5c 30 8d e5                                      str r3, [sp, #0x5c]
0033cbac  01 40 84 e2                                      add r4, r4, #1
0033cbb0  e7 ff ff da                                      ble #0x33cb54
0033cbb4  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0033cbb8  14 80 9d e5                                      ldr r8, [sp, #0x14]
0033cbbc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0033cbc0  00 30 a0 e3                                      mov r3, #0
0033cbc4  07 00 a0 e1                                      mov r0, r7
0033cbc8  02 c0 95 e7                                      ldr ip, [r5, r2]
0033cbcc  04 20 a0 e3                                      mov r2, #4
0033cbd0  4c 20 8d e5                                      str r2, [sp, #0x4c]
0033cbd4  08 c0 8c e2                                      add ip, ip, #8
0033cbd8  19 20 a0 e3                                      mov r2, #0x19
0033cbdc  48 10 8d e2                                      add r1, sp, #0x48
0033cbe0  58 30 cd e5                                      strb r3, [sp, #0x58]
0033cbe4  54 30 8d e5                                      str r3, [sp, #0x54]
0033cbe8  48 c0 8d e5                                      str ip, [sp, #0x48]
0033cbec  b0 25 cd e1                                      strh r2, [sp, #0x50]
0033cbf0  b2 25 cd e1                                      strh r2, [sp, #0x52]
0033cbf4  b0 f0 ff eb                                      bl #0x338ebc
0033cbf8  06 30 95 e7                                      ldr r3, [r5, r6]
0033cbfc  08 30 83 e2                                      add r3, r3, #8
0033cc00  48 30 8d e5                                      str r3, [sp, #0x48]
0033cc04  fd fe ff ea                                      b #0x33c800
0033cc08  0c 4e ff eb                                      bl #0x310440
0033cc0c  f7 fe ff ea                                      b #0x33c7f0
0033cc10  0a 4e ff eb                                      bl #0x310440
0033cc14  b1 fe ff ea                                      b #0x33c6e0
0033cc18  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033cc1c  0c 20 8d e5                                      str r2, [sp, #0xc]
0033cc20  50 ff ff ea                                      b #0x33c968
0033cc24  28 30 9f e5                                      ldr r3, [pc, #0x28]
0033cc28  0c 30 8d e5                                      str r3, [sp, #0xc]
0033cc2c  b9 ff ff ea                                      b #0x33cb18
0033cc30  b6 45 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033cc34  18 85 65 00 ac 40 00 00 20 3b 58 00 f4 37 00 00  .byte 0x18, 0x85, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x3b, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00
0033cc44  84 08 00 00 18 3b 58 00 e8 0b 00 00 b0 0b 00 00  .byte 0x84, 0x08, 0x00, 0x00, 0x18, 0x3b, 0x58, 0x00, 0xe8, 0x0b, 0x00, 0x00, 0xb0, 0x0b, 0x00, 0x00
0033cc54  2c 33 00 00                                      .byte 0x2c, 0x33, 0x00, 0x00
