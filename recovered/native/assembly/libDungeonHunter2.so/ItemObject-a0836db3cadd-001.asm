; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ebbf4, declared_size=8, range_size=8, mode=arm
; class-group: ItemObject
; alias: _ZNK10ItemObject11IsUpdatableEv
; demangled: ItemObject::IsUpdatable() const
; decoder-mode: arm
003ebbf4  01 00 a0 e3                                      mov r0, #1
003ebbf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ebbfc, declared_size=8, range_size=8, mode=arm
; class-group: ItemObject
; alias: _ZNK10ItemObject10IsAnimatedEv
; demangled: ItemObject::IsAnimated() const
; decoder-mode: arm
003ebbfc  01 00 a0 e3                                      mov r0, #1
003ebc00  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ebc04, declared_size=8, range_size=8, mode=arm
; class-group: ItemObject
; alias: _ZNK10ItemObject8GetSpeedEv
; demangled: ItemObject::GetSpeed() const
; decoder-mode: arm
003ebc04  b0 03 90 e5                                      ldr r0, [r0, #0x3b0]
003ebc08  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ebc0c, declared_size=40, range_size=40, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject16_OnItemCollectedEP10ProjectilePv
; demangled: ItemObject::_OnItemCollected(Projectile*, void*)
; decoder-mode: arm
003ebc0c  18 30 9f e5                                      ldr r3, [pc, #0x18]
003ebc10  18 20 9f e5                                      ldr r2, [pc, #0x18]
003ebc14  03 30 8f e0                                      add r3, pc, r3
003ebc18  02 20 93 e7                                      ldr r2, [r3, r2]
003ebc1c  00 30 92 e5                                      ldr r3, [r2]
003ebc20  01 30 43 e2                                      sub r3, r3, #1
003ebc24  00 30 82 e5                                      str r3, [r2]
003ebc28  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003ebc2c  7c 8e 5a 00 58 16 00 00                          .byte 0x7c, 0x8e, 0x5a, 0x00, 0x58, 0x16, 0x00, 0x00

; FUNCTION 0x003ebc34, declared_size=32, range_size=32, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject21_GetCurrentPlayerRRIdEv
; demangled: ItemObject::_GetCurrentPlayerRRId()
; decoder-mode: arm
003ebc34  10 30 9f e5                                      ldr r3, [pc, #0x10]
003ebc38  10 20 9f e5                                      ldr r2, [pc, #0x10]
003ebc3c  03 30 8f e0                                      add r3, pc, r3
003ebc40  02 20 93 e7                                      ldr r2, [r3, r2]
003ebc44  00 00 92 e5                                      ldr r0, [r2]
003ebc48  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003ebc4c  54 8e 5a 00 48 34 00 00                          .byte 0x54, 0x8e, 0x5a, 0x00, 0x48, 0x34, 0x00, 0x00

; FUNCTION 0x003ebc54, declared_size=76, range_size=76, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject18_GetNextPlayerRRIdEv
; demangled: ItemObject::_GetNextPlayerRRId()
; decoder-mode: arm
003ebc54  38 30 9f e5                                      ldr r3, [pc, #0x38]
003ebc58  38 20 9f e5                                      ldr r2, [pc, #0x38]
003ebc5c  70 40 2d e9                                      push {r4, r5, r6, lr}
003ebc60  03 30 8f e0                                      add r3, pc, r3
003ebc64  02 40 93 e7                                      ldr r4, [r3, r2]
003ebc68  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003ebc6c  00 50 94 e5                                      ldr r5, [r4]
003ebc70  02 20 93 e7                                      ldr r2, [r3, r2]
003ebc74  01 00 85 e2                                      add r0, r5, #1
003ebc78  40 30 92 e5                                      ldr r3, [r2, #0x40]
003ebc7c  00 00 84 e5                                      str r0, [r4]
003ebc80  c4 16 93 e5                                      ldr r1, [r3, #0x6c4]
003ebc84  a8 8b fc eb                                      bl #0x30eb2c
003ebc88  05 00 a0 e1                                      mov r0, r5
003ebc8c  00 10 84 e5                                      str r1, [r4]
003ebc90  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ebc94  30 8e 5a 00 48 34 00 00 f4 37 00 00              .byte 0x30, 0x8e, 0x5a, 0x00, 0x48, 0x34, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003ebca0, declared_size=4, range_size=4, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject8InitPostEv
; demangled: ItemObject::InitPost()
; decoder-mode: arm
003ebca0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ebca4, declared_size=4, range_size=4, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject8ShowGlowEv
; demangled: ItemObject::ShowGlow()
; decoder-mode: arm
003ebca4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ebca8, declared_size=36, range_size=36, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject18UpdateLocalizationEv
; demangled: ItemObject::UpdateLocalization()
; decoder-mode: arm
003ebca8  10 40 2d e9                                      push {r4, lr}
003ebcac  dd 0f 80 e2                                      add r0, r0, #0x374
003ebcb0  00 10 a0 e3                                      mov r1, #0
003ebcb4  58 42 00 eb                                      bl #0x3fc61c
003ebcb8  00 00 50 e3                                      cmp r0, #0
003ebcbc  01 00 00 0a                                      beq #0x3ebcc8
003ebcc0  10 40 bd e8                                      pop {r4, lr}
003ebcc4  3a 41 00 ea                                      b #0x3fc1b4
003ebcc8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ebccc, declared_size=44, range_size=44, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject8HideGlowEv
; demangled: ItemObject::HideGlow()
; decoder-mode: arm
003ebccc  cc 23 90 e5                                      ldr r2, [r0, #0x3cc]
003ebcd0  18 30 9f e5                                      ldr r3, [pc, #0x18]
003ebcd4  00 00 52 e3                                      cmp r2, #0
003ebcd8  03 30 8f e0                                      add r3, pc, r3
003ebcdc  1e ff 2f 01                                      bxeq lr
003ebce0  0c 20 9f e5                                      ldr r2, [pc, #0xc]
003ebce4  f3 1f 80 e2                                      add r1, r0, #0x3cc
003ebce8  02 00 93 e7                                      ldr r0, [r3, r2]
003ebcec  21 a3 02 ea                                      b #0x494978
; mapping-symbol data/literal pool
003ebcf0  b8 8d 5a 00 08 1b 00 00                          .byte 0xb8, 0x8d, 0x5a, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x003ebcf8, declared_size=52, range_size=52, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject11HideTooltipEv
; demangled: ItemObject::HideTooltip()
; decoder-mode: arm
003ebcf8  10 40 2d e9                                      push {r4, lr}
003ebcfc  00 40 a0 e1                                      mov r4, r0
003ebd00  c8 03 90 e5                                      ldr r0, [r0, #0x3c8]
003ebd04  00 00 50 e3                                      cmp r0, #0
003ebd08  02 00 00 0a                                      beq #0x3ebd18
003ebd0c  f2 b3 02 eb                                      bl #0x498cdc
003ebd10  00 00 50 e3                                      cmp r0, #0
003ebd14  00 00 00 1a                                      bne #0x3ebd1c
003ebd18  10 80 bd e8                                      pop {r4, pc}
003ebd1c  c8 03 94 e5                                      ldr r0, [r4, #0x3c8]
003ebd20  64 10 a0 e3                                      mov r1, #0x64
003ebd24  10 40 bd e8                                      pop {r4, lr}
003ebd28  02 b4 02 ea                                      b #0x498d38

; FUNCTION 0x003ebd2c, declared_size=48, range_size=48, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject15OnCollisionEndsEP9Character
; demangled: ItemObject::OnCollisionEnds(Character*)
; decoder-mode: arm
003ebd2c  00 00 51 e3                                      cmp r1, #0
003ebd30  10 40 2d e9                                      push {r4, lr}
003ebd34  00 40 a0 e1                                      mov r4, r0
003ebd38  06 00 00 0a                                      beq #0x3ebd58
003ebd3c  a4 34 01 e3                                      movw r3, #0x14a4
003ebd40  03 30 91 e7                                      ldr r3, [r1, r3]
003ebd44  03 00 50 e1                                      cmp r0, r3
003ebd48  02 00 00 0a                                      beq #0x3ebd58
003ebd4c  e9 ff ff eb                                      bl #0x3ebcf8
003ebd50  00 30 a0 e3                                      mov r3, #0
003ebd54  c4 33 84 e5                                      str r3, [r4, #0x3c4]
003ebd58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ebd5c, declared_size=344, range_size=344, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject11ShowTooltipEv
; demangled: ItemObject::ShowTooltip()
; decoder-mode: arm
003ebd5c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ebd60  00 10 a0 e3                                      mov r1, #0
003ebd64  00 50 a0 e1                                      mov r5, r0
003ebd68  20 d0 4d e2                                      sub sp, sp, #0x20
003ebd6c  dd 0f 80 e2                                      add r0, r0, #0x374
003ebd70  29 42 00 eb                                      bl #0x3fc61c
003ebd74  c8 43 95 e5                                      ldr r4, [r5, #0x3c8]
003ebd78  24 61 9f e5                                      ldr r6, [pc, #0x124]
003ebd7c  00 80 a0 e1                                      mov r8, r0
003ebd80  00 00 54 e3                                      cmp r4, #0
003ebd84  06 60 8f e0                                      add r6, pc, r6
003ebd88  3e 00 00 0a                                      beq #0x3ebe88
003ebd8c  04 00 a0 e1                                      mov r0, r4
003ebd90  d1 b3 02 eb                                      bl #0x498cdc
003ebd94  00 70 50 e2                                      subs r7, r0, #0
003ebd98  38 00 00 1a                                      bne #0x3ebe80
003ebd9c  c8 03 95 e5                                      ldr r0, [r5, #0x3c8]
003ebda0  ef b3 02 eb                                      bl #0x498d64
003ebda4  c8 33 95 e5                                      ldr r3, [r5, #0x3c8]
003ebda8  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
003ebdac  0c 40 8d e2                                      add r4, sp, #0xc
003ebdb0  08 00 93 e5                                      ldr r0, [r3, #8]
003ebdb4  01 10 8f e0                                      add r1, pc, r1
003ebdb8  6f ac 02 eb                                      bl #0x496f7c
003ebdbc  c8 33 95 e5                                      ldr r3, [r5, #0x3c8]
003ebdc0  1c 10 98 e5                                      ldr r1, [r8, #0x1c]
003ebdc4  08 00 93 e5                                      ldr r0, [r3, #8]
003ebdc8  4b ac 02 eb                                      bl #0x496efc
003ebdcc  c8 33 95 e5                                      ldr r3, [r5, #0x3c8]
003ebdd0  08 00 a0 e1                                      mov r0, r8
003ebdd4  08 80 93 e5                                      ldr r8, [r3, #8]
003ebdd8  4c 3a 00 eb                                      bl #0x3fa710
003ebddc  ff 24 a0 e3                                      mov r2, #0xff000000
003ebde0  00 10 a0 e1                                      mov r1, r0
003ebde4  08 00 a0 e1                                      mov r0, r8
003ebde8  81 ac 02 eb                                      bl #0x496ff4
003ebdec  c8 33 95 e5                                      ldr r3, [r5, #0x3c8]
003ebdf0  16 1e 85 e2                                      add r1, r5, #0x160
003ebdf4  08 00 93 e5                                      ldr r0, [r3, #8]
003ebdf8  e7 ab 02 eb                                      bl #0x496d9c
003ebdfc  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
003ebe00  07 20 a0 e1                                      mov r2, r7
003ebe04  bc 13 95 e5                                      ldr r1, [r5, #0x3bc]
003ebe08  03 30 96 e7                                      ldr r3, [r6, r3]
003ebe0c  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ebe10  24 0c fe eb                                      bl #0x36eea8
003ebe14  c8 33 95 e5                                      ldr r3, [r5, #0x3c8]
003ebe18  78 86 90 e5                                      ldr r8, [r0, #0x678]
003ebe1c  08 30 93 e5                                      ldr r3, [r3, #8]
003ebe20  0c 00 83 e2                                      add r0, r3, #0xc
003ebe24  08 60 93 e5                                      ldr r6, [r3, #8]
003ebe28  c8 ef 00 eb                                      bl #0x427d50
003ebe2c  02 30 a0 e3                                      mov r3, #2
003ebe30  00 50 a0 e1                                      mov r5, r0
003ebe34  08 00 a0 e1                                      mov r0, r8
003ebe38  0d 30 cd e5                                      strb r3, [sp, #0xd]
003ebe3c  0c 70 cd e5                                      strb r7, [sp, #0xc]
003ebe40  ba 8b fc eb                                      bl #0x30ed30
003ebe44  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
003ebe48  18 c0 9d e5                                      ldr ip, [sp, #0x18]
003ebe4c  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
003ebe50  06 00 a0 e1                                      mov r0, r6
003ebe54  10 c0 8d e5                                      str ip, [sp, #0x10]
003ebe58  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
003ebe5c  05 10 a0 e1                                      mov r1, r5
003ebe60  02 20 8f e0                                      add r2, pc, r2
003ebe64  08 c0 84 e5                                      str ip, [r4, #8]
003ebe68  04 30 a0 e1                                      mov r3, r4
003ebe6c  01 c0 a0 e3                                      mov ip, #1
003ebe70  00 c0 8d e5                                      str ip, [sp]
003ebe74  e4 ff 0e eb                                      bl #0x7abe0c
003ebe78  04 00 a0 e1                                      mov r0, r4
003ebe7c  a8 ac 0e eb                                      bl #0x797124
003ebe80  20 d0 8d e2                                      add sp, sp, #0x20
003ebe84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003ebe88  04 10 a0 e1                                      mov r1, r4
003ebe8c  0c 00 a0 e3                                      mov r0, #0xc
003ebe90  b6 91 fc eb                                      bl #0x310570
003ebe94  00 40 a0 e1                                      mov r4, r0
003ebe98  24 b4 02 eb                                      bl #0x498f30
003ebe9c  c8 43 85 e5                                      str r4, [r5, #0x3c8]
003ebea0  b9 ff ff ea                                      b #0x3ebd8c
; mapping-symbol data/literal pool
003ebea4  0c 8d 5a 00 4c a4 4d 00 f4 37 00 00 b8 a3 4d 00  .byte 0x0c, 0x8d, 0x5a, 0x00, 0x4c, 0xa4, 0x4d, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb8, 0xa3, 0x4d, 0x00

; FUNCTION 0x003ebeb4, declared_size=48, range_size=48, mode=arm
; class-group: ItemObject
; alias: _ZNK10ItemObject18GetInteractionTypeEP10GameObject
; demangled: ItemObject::GetInteractionType(GameObject*) const
; decoder-mode: arm
003ebeb4  10 40 2d e9                                      push {r4, lr}
003ebeb8  00 30 90 e5                                      ldr r3, [r0]
003ebebc  00 40 a0 e1                                      mov r4, r0
003ebec0  0f e0 a0 e1                                      mov lr, pc
003ebec4  88 f0 93 e5                                      ldr pc, [r3, #0x88]
003ebec8  00 00 50 e3                                      cmp r0, #0
003ebecc  02 00 00 0a                                      beq #0x3ebedc
003ebed0  dd 0f 84 e2                                      add r0, r4, #0x374
003ebed4  00 10 a0 e3                                      mov r1, #0
003ebed8  46 47 00 eb                                      bl #0x3fdbf8
003ebedc  00 00 e0 e3                                      mvn r0, #0
003ebee0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ebee4, declared_size=188, range_size=188, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject6UpdateEv
; demangled: ItemObject::Update()
; decoder-mode: arm
003ebee4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ebee8  00 40 a0 e1                                      mov r4, r0
003ebeec  ca 9d fe eb                                      bl #0x39361c
003ebef0  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
003ebef4  00 00 50 e3                                      cmp r0, #0
003ebef8  05 50 8f e0                                      add r5, pc, r5
003ebefc  22 00 00 1a                                      bne #0x3ebf8c
003ebf00  04 00 a0 e1                                      mov r0, r4
003ebf04  37 83 fe eb                                      bl #0x38cbe8
003ebf08  c8 03 94 e5                                      ldr r0, [r4, #0x3c8]
003ebf0c  00 00 50 e3                                      cmp r0, #0
003ebf10  04 00 00 0a                                      beq #0x3ebf28
003ebf14  70 b3 02 eb                                      bl #0x498cdc
003ebf18  00 00 50 e3                                      cmp r0, #0
003ebf1c  0c 00 00 1a                                      bne #0x3ebf54
003ebf20  c8 03 94 e5                                      ldr r0, [r4, #0x3c8]
003ebf24  cc b3 02 eb                                      bl #0x498e5c
003ebf28  ee 6f a0 e3                                      mov r6, #0x3b8
003ebf2c  b6 70 94 e1                                      ldrh r7, [r4, r6]
003ebf30  77 30 bf e6                                      sxth r3, r7
003ebf34  00 00 53 e3                                      cmp r3, #0
003ebf38  04 00 00 da                                      ble #0x3ebf50
003ebf3c  58 30 9f e5                                      ldr r3, [pc, #0x58]
003ebf40  03 00 95 e7                                      ldr r0, [r5, r3]
003ebf44  c8 cd fc eb                                      bl #0x31f66c
003ebf48  07 00 60 e0                                      rsb r0, r0, r7
003ebf4c  b6 00 84 e1                                      strh r0, [r4, r6]
003ebf50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003ebf54  c8 33 94 e5                                      ldr r3, [r4, #0x3c8]
003ebf58  16 1e 84 e2                                      add r1, r4, #0x160
003ebf5c  08 00 93 e5                                      ldr r0, [r3, #8]
003ebf60  8d ab 02 eb                                      bl #0x496d9c
003ebf64  c4 33 94 e5                                      ldr r3, [r4, #0x3c4]
003ebf68  00 00 53 e3                                      cmp r3, #0
003ebf6c  eb ff ff 0a                                      beq #0x3ebf20
003ebf70  a4 24 01 e3                                      movw r2, #0x14a4
003ebf74  02 30 93 e7                                      ldr r3, [r3, r2]
003ebf78  03 00 54 e1                                      cmp r4, r3
003ebf7c  e7 ff ff 0a                                      beq #0x3ebf20
003ebf80  04 00 a0 e1                                      mov r0, r4
003ebf84  5b ff ff eb                                      bl #0x3ebcf8
003ebf88  e4 ff ff ea                                      b #0x3ebf20
003ebf8c  04 00 a0 e1                                      mov r0, r4
003ebf90  58 9e fe eb                                      bl #0x3938f8
003ebf94  d9 ff ff ea                                      b #0x3ebf00
; mapping-symbol data/literal pool
003ebf98  98 8b 5a 00 f4 37 00 00                          .byte 0x98, 0x8b, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003ebfa0, declared_size=92, range_size=92, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject15SetRelativeAABBERK4aabbIfEb
; demangled: ItemObject::SetRelativeAABB(aabb<float> const&, bool)
; decoder-mode: arm
003ebfa0  00 00 52 e3                                      cmp r2, #0
003ebfa4  10 40 2d e9                                      push {r4, lr}
003ebfa8  00 40 a0 e1                                      mov r4, r0
003ebfac  0f 00 00 1a                                      bne #0x3ebff0
003ebfb0  44 01 90 e5                                      ldr r0, [r0, #0x144]
003ebfb4  ff 15 a0 e3                                      mov r1, #0x3fc00000
003ebfb8  6b 8b fc eb                                      bl #0x30ed6c
003ebfbc  ff 15 a0 e3                                      mov r1, #0x3fc00000
003ebfc0  44 01 84 e5                                      str r0, [r4, #0x144]
003ebfc4  48 01 94 e5                                      ldr r0, [r4, #0x148]
003ebfc8  67 8b fc eb                                      bl #0x30ed6c
003ebfcc  ff 15 a0 e3                                      mov r1, #0x3fc00000
003ebfd0  48 01 84 e5                                      str r0, [r4, #0x148]
003ebfd4  50 01 94 e5                                      ldr r0, [r4, #0x150]
003ebfd8  63 8b fc eb                                      bl #0x30ed6c
003ebfdc  ff 15 a0 e3                                      mov r1, #0x3fc00000
003ebfe0  50 01 84 e5                                      str r0, [r4, #0x150]
003ebfe4  54 01 94 e5                                      ldr r0, [r4, #0x154]
003ebfe8  5f 8b fc eb                                      bl #0x30ed6c
003ebfec  54 01 84 e5                                      str r0, [r4, #0x154]
003ebff0  04 00 a0 e1                                      mov r0, r4
003ebff4  10 40 bd e8                                      pop {r4, lr}
003ebff8  b2 7a fe ea                                      b #0x38aac8

; FUNCTION 0x003ebffc, declared_size=24, range_size=24, mode=arm
; class-group: ItemObject
; alias: _ZNK10ItemObject13HasBeenLootedEv
; demangled: ItemObject::HasBeenLooted() const
; decoder-mode: arm
003ebffc  10 40 2d e9                                      push {r4, lr}
003ec000  dd 0f 80 e2                                      add r0, r0, #0x374
003ec004  7f 41 00 eb                                      bl #0x3fc608
003ec008  01 00 70 e2                                      rsbs r0, r0, #1
003ec00c  00 00 a0 33                                      movlo r0, #0
003ec010  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ec014, declared_size=52, range_size=52, mode=arm
; class-group: ItemObject
; alias: _ZNK10ItemObject13IsInteractiveEP10GameObject
; demangled: ItemObject::IsInteractive(GameObject*) const
; decoder-mode: arm
003ec014  10 40 2d e9                                      push {r4, lr}
003ec018  81 20 d0 e5                                      ldrb r2, [r0, #0x81]
003ec01c  00 00 52 e3                                      cmp r2, #0
003ec020  02 00 00 1a                                      bne #0x3ec030
003ec024  80 30 d0 e5                                      ldrb r3, [r0, #0x80]
003ec028  00 00 53 e3                                      cmp r3, #0
003ec02c  01 00 00 1a                                      bne #0x3ec038
003ec030  00 00 a0 e3                                      mov r0, #0
003ec034  10 80 bd e8                                      pop {r4, pc}
003ec038  ef ff ff eb                                      bl #0x3ebffc
003ec03c  01 00 20 e2                                      eor r0, r0, #1
003ec040  70 00 ef e6                                      uxtb r0, r0
003ec044  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ec048, declared_size=168, range_size=168, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject17OnCollisionBeginsEP9Character
; demangled: ItemObject::OnCollisionBegins(Character*)
; decoder-mode: arm
003ec048  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ec04c  94 40 9f e5                                      ldr r4, [pc, #0x94]
003ec050  00 60 51 e2                                      subs r6, r1, #0
003ec054  00 50 a0 e1                                      mov r5, r0
003ec058  04 40 8f e0                                      add r4, pc, r4
003ec05c  02 00 00 0a                                      beq #0x3ec06c
003ec060  e5 ff ff eb                                      bl #0x3ebffc
003ec064  00 70 50 e2                                      subs r7, r0, #0
003ec068  00 00 00 0a                                      beq #0x3ec070
003ec06c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003ec070  00 30 95 e5                                      ldr r3, [r5]
003ec074  05 00 a0 e1                                      mov r0, r5
003ec078  06 10 a0 e1                                      mov r1, r6
003ec07c  0f e0 a0 e1                                      mov lr, pc
003ec080  90 f0 93 e5                                      ldr pc, [r3, #0x90]
003ec084  01 00 70 e3                                      cmn r0, #1
003ec088  0e 00 00 0a                                      beq #0x3ec0c8
003ec08c  a4 34 01 e3                                      movw r3, #0x14a4
003ec090  03 30 96 e7                                      ldr r3, [r6, r3]
003ec094  03 00 55 e1                                      cmp r5, r3
003ec098  f3 ff ff 1a                                      bne #0x3ec06c
003ec09c  48 30 9f e5                                      ldr r3, [pc, #0x48]
003ec0a0  06 10 a0 e1                                      mov r1, r6
003ec0a4  03 30 94 e7                                      ldr r3, [r4, r3]
003ec0a8  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ec0ac  d2 0b fe eb                                      bl #0x36effc
003ec0b0  00 00 50 e3                                      cmp r0, #0
003ec0b4  ec ff ff 0a                                      beq #0x3ec06c
003ec0b8  05 00 a0 e1                                      mov r0, r5
003ec0bc  c4 63 85 e5                                      str r6, [r5, #0x3c4]
003ec0c0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003ec0c4  24 ff ff ea                                      b #0x3ebd5c
003ec0c8  4f 0e 86 e2                                      add r0, r6, #0x4f0
003ec0cc  0c 00 80 e2                                      add r0, r0, #0xc
003ec0d0  07 10 a0 e1                                      mov r1, r7
003ec0d4  70 50 ff eb                                      bl #0x3c029c
003ec0d8  00 00 50 e3                                      cmp r0, #0
003ec0dc  e2 ff ff 0a                                      beq #0x3ec06c
003ec0e0  e4 62 85 e5                                      str r6, [r5, #0x2e4]
003ec0e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003ec0e8  38 8a 5a 00 f4 37 00 00                          .byte 0x38, 0x8a, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003ec0f0, declared_size=552, range_size=552, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject9InitAgainER13ItemInventoryjPK9Character
; demangled: ItemObject::InitAgain(ItemInventory&, unsigned int, Character const*)
; decoder-mode: arm
003ec0f0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003ec0f4  dd 7f 80 e2                                      add r7, r0, #0x374
003ec0f8  34 d0 4d e2                                      sub sp, sp, #0x34
003ec0fc  00 50 a0 e3                                      mov r5, #0
003ec100  00 40 a0 e1                                      mov r4, r0
003ec104  03 60 a0 e1                                      mov r6, r3
003ec108  01 00 a0 e1                                      mov r0, r1
003ec10c  01 30 a0 e3                                      mov r3, #1
003ec110  02 10 a0 e1                                      mov r1, r2
003ec114  07 20 a0 e1                                      mov r2, r7
003ec118  00 50 8d e5                                      str r5, [sp]
003ec11c  48 4e 00 eb                                      bl #0x3ffa44
003ec120  07 00 a0 e1                                      mov r0, r7
003ec124  05 10 a0 e1                                      mov r1, r5
003ec128  3b 41 00 eb                                      bl #0x3fc61c
003ec12c  bc 51 9f e5                                      ldr r5, [pc, #0x1bc]
003ec130  00 70 50 e2                                      subs r7, r0, #0
003ec134  05 50 8f e0                                      add r5, pc, r5
003ec138  57 00 00 0a                                      beq #0x3ec29c
003ec13c  31 37 00 eb                                      bl #0x3f9e08
003ec140  54 30 90 e5                                      ldr r3, [r0, #0x54]
003ec144  01 00 73 e3                                      cmn r3, #1
003ec148  0d 00 00 0a                                      beq #0x3ec184
003ec14c  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
003ec150  07 00 a0 e1                                      mov r0, r7
003ec154  03 30 95 e7                                      ldr r3, [r5, r3]
003ec158  00 80 93 e5                                      ldr r8, [r3]
003ec15c  29 37 00 eb                                      bl #0x3f9e08
003ec160  54 30 90 e5                                      ldr r3, [r0, #0x54]
003ec164  14 20 a0 e3                                      mov r2, #0x14
003ec168  92 83 28 e0                                      mla r8, r2, r3, r8
003ec16c  ed 3f a0 e3                                      mov r3, #0x3b4
003ec170  b4 20 d8 e1                                      ldrh r2, [r8, #4]
003ec174  b3 20 84 e1                                      strh r2, [r4, r3]
003ec178  b8 80 d8 e1                                      ldrh r8, [r8, #8]
003ec17c  b6 33 00 e3                                      movw r3, #0x3b6
003ec180  b3 80 84 e1                                      strh r8, [r4, r3]
003ec184  d8 82 94 e5                                      ldr r8, [r4, #0x2d8]
003ec188  00 00 58 e3                                      cmp r8, #0
003ec18c  0a 00 00 0a                                      beq #0x3ec1bc
003ec190  07 00 a0 e1                                      mov r0, r7
003ec194  5d 39 00 eb                                      bl #0x3fa710
003ec198  38 20 98 e5                                      ldr r2, [r8, #0x38]
003ec19c  00 30 a0 e3                                      mov r3, #0
003ec1a0  03 10 a0 e1                                      mov r1, r3
003ec1a4  00 c0 92 e5                                      ldr ip, [r2]
003ec1a8  02 00 a0 e1                                      mov r0, r2
003ec1ac  00 30 8d e5                                      str r3, [sp]
003ec1b0  03 20 a0 e1                                      mov r2, r3
003ec1b4  0f e0 a0 e1                                      mov lr, pc
003ec1b8  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003ec1bc  00 00 56 e3                                      cmp r6, #0
003ec1c0  bc 63 84 15                                      strne r6, [r4, #0x3bc]
003ec1c4  ed 3f a0 e3                                      mov r3, #0x3b4
003ec1c8  f3 10 94 e1                                      ldrsh r1, [r4, r3]
003ec1cc  24 31 9f e5                                      ldr r3, [pc, #0x124]
003ec1d0  b0 e1 94 e5                                      ldr lr, [r4, #0x1b0]
003ec1d4  ac 61 94 e5                                      ldr r6, [r4, #0x1ac]
003ec1d8  03 30 95 e7                                      ldr r3, [r5, r3]
003ec1dc  a8 81 94 e5                                      ldr r8, [r4, #0x1a8]
003ec1e0  bf c4 a0 e3                                      mov ip, #0xbf000000
003ec1e4  00 00 93 e5                                      ldr r0, [r3]
003ec1e8  02 c5 8c e2                                      add ip, ip, #0x800000
003ec1ec  01 70 a0 e3                                      mov r7, #1
003ec1f0  24 20 8d e2                                      add r2, sp, #0x24
003ec1f4  00 30 a0 e3                                      mov r3, #0
003ec1f8  2c e0 8d e5                                      str lr, [sp, #0x2c]
003ec1fc  08 c0 8d e5                                      str ip, [sp, #8]
003ec200  04 c0 8d e5                                      str ip, [sp, #4]
003ec204  24 80 8d e5                                      str r8, [sp, #0x24]
003ec208  28 60 8d e5                                      str r6, [sp, #0x28]
003ec20c  00 70 8d e5                                      str r7, [sp]
003ec210  f0 fc fd eb                                      bl #0x36b5d8
003ec214  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
003ec218  00 60 a0 e3                                      mov r6, #0
003ec21c  06 10 a0 e1                                      mov r1, r6
003ec220  03 30 95 e7                                      ldr r3, [r5, r3]
003ec224  28 00 a0 e3                                      mov r0, #0x28
003ec228  44 a0 93 e5                                      ldr sl, [r3, #0x44]
003ec22c  cf 90 fc eb                                      bl #0x310570
003ec230  02 c0 e0 e3                                      mvn ip, #2
003ec234  0c c0 8d e5                                      str ip, [sp, #0xc]
003ec238  40 c0 a0 e3                                      mov ip, #0x40
003ec23c  0a 10 a0 e1                                      mov r1, sl
003ec240  04 20 a0 e1                                      mov r2, r4
003ec244  06 30 a0 e1                                      mov r3, r6
003ec248  10 c0 8d e5                                      str ip, [sp, #0x10]
003ec24c  04 c0 a0 e3                                      mov ip, #4
003ec250  00 80 a0 e1                                      mov r8, r0
003ec254  14 c0 8d e5                                      str ip, [sp, #0x14]
003ec258  04 70 8d e5                                      str r7, [sp, #4]
003ec25c  00 70 8d e5                                      str r7, [sp]
003ec260  08 60 8d e5                                      str r6, [sp, #8]
003ec264  18 60 8d e5                                      str r6, [sp, #0x18]
003ec268  20 0c 02 eb                                      bl #0x46f2f0
003ec26c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003ec270  04 00 a0 e1                                      mov r0, r4
003ec274  08 10 a0 e1                                      mov r1, r8
003ec278  03 30 95 e7                                      ldr r3, [r5, r3]
003ec27c  06 20 a0 e1                                      mov r2, r6
003ec280  08 30 83 e2                                      add r3, r3, #8
003ec284  00 30 88 e5                                      str r3, [r8]
003ec288  5a a2 fe eb                                      bl #0x394bf8
003ec28c  04 00 a0 e1                                      mov r0, r4
003ec290  83 fe ff eb                                      bl #0x3ebca4
003ec294  34 d0 8d e2                                      add sp, sp, #0x34
003ec298  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003ec29c  60 30 9f e5                                      ldr r3, [pc, #0x60]
003ec2a0  03 30 95 e7                                      ldr r3, [r5, r3]
003ec2a4  00 30 93 e5                                      ldr r3, [r3]
003ec2a8  02 00 53 e3                                      cmp r3, #2
003ec2ac  00 70 87 05                                      streq r7, [r7]
003ec2b0  c3 ff ff 0a                                      beq #0x3ec1c4
003ec2b4  01 00 53 e3                                      cmp r3, #1
003ec2b8  c1 ff ff 1a                                      bne #0x3ec1c4
003ec2bc  44 00 9f e5                                      ldr r0, [pc, #0x44]
003ec2c0  44 10 9f e5                                      ldr r1, [pc, #0x44]
003ec2c4  44 20 9f e5                                      ldr r2, [pc, #0x44]
003ec2c8  00 00 95 e7                                      ldr r0, [r5, r0]
003ec2cc  40 30 9f e5                                      ldr r3, [pc, #0x40]
003ec2d0  c7 c1 00 e3                                      movw ip, #0x1c7
003ec2d4  01 10 8f e0                                      add r1, pc, r1
003ec2d8  02 20 8f e0                                      add r2, pc, r2
003ec2dc  03 30 8f e0                                      add r3, pc, r3
003ec2e0  a8 00 80 e2                                      add r0, r0, #0xa8
003ec2e4  00 c0 8d e5                                      str ip, [sp]
003ec2e8  45 87 fc eb                                      bl #0x30e004
003ec2ec  b4 ff ff ea                                      b #0x3ec1c4
; mapping-symbol data/literal pool
003ec2f0  5c 89 5a 00 3c 09 00 00 a4 0d 00 00 f4 37 00 00  .byte 0x5c, 0x89, 0x5a, 0x00, 0x3c, 0x09, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003ec300  90 06 00 00 c0 39 00 00 c0 19 00 00 04 21 4d 00  .byte 0x90, 0x06, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x04, 0x21, 0x4d, 0x00
003ec310  50 9f 4d 00 54 9f 4d 00                          .byte 0x50, 0x9f, 0x4d, 0x00, 0x54, 0x9f, 0x4d, 0x00

; FUNCTION 0x003ec318, declared_size=8, range_size=8, mode=arm
; class-group: ItemObject
; alias: _ZThn4_N10ItemObject17DeclarePropertiesEv
; demangled: non-virtual thunk to ItemObject::DeclareProperties()
; decoder-mode: arm
003ec318  04 00 40 e2                                      sub r0, r0, #4
003ec31c  ff ff ff ea                                      b #0x3ec320

; FUNCTION 0x003ec320, declared_size=4, range_size=4, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject17DeclarePropertiesEv
; demangled: ItemObject::DeclareProperties()
; decoder-mode: arm
003ec320  f0 82 fe ea                                      b #0x38cee8

; FUNCTION 0x003ec324, declared_size=168, range_size=168, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObjectC1EN10ObjectBase6GO_IDSE
; demangled: ItemObject::ItemObject(ObjectBase::GO_IDS)
; decoder-mode: arm
003ec324  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ec328  00 40 a0 e1                                      mov r4, r0
003ec32c  90 50 9f e5                                      ldr r5, [pc, #0x90]
003ec330  18 80 fe eb                                      bl #0x38c398
003ec334  dd 0f 84 e2                                      add r0, r4, #0x374
003ec338  fc 4b 00 eb                                      bl #0x3ff330
003ec33c  84 30 9f e5                                      ldr r3, [pc, #0x84]
003ec340  05 50 8f e0                                      add r5, pc, r5
003ec344  00 10 e0 e3                                      mvn r1, #0
003ec348  03 30 95 e7                                      ldr r3, [r5, r3]
003ec34c  0f 7d a0 e3                                      mov r7, #0x3c0
003ec350  b7 10 84 e1                                      strh r1, [r4, r7]
003ec354  fc 00 83 e2                                      add r0, r3, #0xfc
003ec358  08 60 83 e2                                      add r6, r3, #8
003ec35c  d8 c0 83 e2                                      add ip, r3, #0xd8
003ec360  e4 30 83 e2                                      add r3, r3, #0xe4
003ec364  24 30 84 e5                                      str r3, [r4, #0x24]
003ec368  eb 3f a0 e3                                      mov r3, #0x3ac
003ec36c  74 03 84 e5                                      str r0, [r4, #0x374]
003ec370  40 10 84 e8                                      stm r4, {r6, ip}
003ec374  b3 10 84 e1                                      strh r1, [r4, r3]
003ec378  01 31 a0 e3                                      mov r3, #0x40000000
003ec37c  02 36 83 e2                                      add r3, r3, #0x200000
003ec380  b0 33 84 e5                                      str r3, [r4, #0x3b0]
003ec384  ed 3f a0 e3                                      mov r3, #0x3b4
003ec388  b3 10 84 e1                                      strh r1, [r4, r3]
003ec38c  b6 33 00 e3                                      movw r3, #0x3b6
003ec390  b3 10 84 e1                                      strh r1, [r4, r3]
003ec394  ee 3f a0 e3                                      mov r3, #0x3b8
003ec398  b3 10 84 e1                                      strh r1, [r4, r3]
003ec39c  00 20 a0 e3                                      mov r2, #0
003ec3a0  01 30 a0 e3                                      mov r3, #1
003ec3a4  85 30 c4 e5                                      strb r3, [r4, #0x85]
003ec3a8  ee 22 c4 e5                                      strb r2, [r4, #0x2ee]
003ec3ac  bc 23 84 e5                                      str r2, [r4, #0x3bc]
003ec3b0  c4 23 84 e5                                      str r2, [r4, #0x3c4]
003ec3b4  c8 23 84 e5                                      str r2, [r4, #0x3c8]
003ec3b8  cc 23 84 e5                                      str r2, [r4, #0x3cc]
003ec3bc  04 00 a0 e1                                      mov r0, r4
003ec3c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003ec3c4  50 87 5a 00 28 26 00 00                          .byte 0x50, 0x87, 0x5a, 0x00, 0x28, 0x26, 0x00, 0x00

; FUNCTION 0x003ec3cc, declared_size=168, range_size=168, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObjectC2EN10ObjectBase6GO_IDSE
; demangled: ItemObject::ItemObject(ObjectBase::GO_IDS)
; decoder-mode: arm
003ec3cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ec3d0  00 40 a0 e1                                      mov r4, r0
003ec3d4  90 50 9f e5                                      ldr r5, [pc, #0x90]
003ec3d8  ee 7f fe eb                                      bl #0x38c398
003ec3dc  dd 0f 84 e2                                      add r0, r4, #0x374
003ec3e0  d2 4b 00 eb                                      bl #0x3ff330
003ec3e4  84 30 9f e5                                      ldr r3, [pc, #0x84]
003ec3e8  05 50 8f e0                                      add r5, pc, r5
003ec3ec  00 10 e0 e3                                      mvn r1, #0
003ec3f0  03 30 95 e7                                      ldr r3, [r5, r3]
003ec3f4  0f 7d a0 e3                                      mov r7, #0x3c0
003ec3f8  b7 10 84 e1                                      strh r1, [r4, r7]
003ec3fc  fc 00 83 e2                                      add r0, r3, #0xfc
003ec400  08 60 83 e2                                      add r6, r3, #8
003ec404  d8 c0 83 e2                                      add ip, r3, #0xd8
003ec408  e4 30 83 e2                                      add r3, r3, #0xe4
003ec40c  24 30 84 e5                                      str r3, [r4, #0x24]
003ec410  eb 3f a0 e3                                      mov r3, #0x3ac
003ec414  74 03 84 e5                                      str r0, [r4, #0x374]
003ec418  40 10 84 e8                                      stm r4, {r6, ip}
003ec41c  b3 10 84 e1                                      strh r1, [r4, r3]
003ec420  01 31 a0 e3                                      mov r3, #0x40000000
003ec424  02 36 83 e2                                      add r3, r3, #0x200000
003ec428  b0 33 84 e5                                      str r3, [r4, #0x3b0]
003ec42c  ed 3f a0 e3                                      mov r3, #0x3b4
003ec430  b3 10 84 e1                                      strh r1, [r4, r3]
003ec434  b6 33 00 e3                                      movw r3, #0x3b6
003ec438  b3 10 84 e1                                      strh r1, [r4, r3]
003ec43c  ee 3f a0 e3                                      mov r3, #0x3b8
003ec440  b3 10 84 e1                                      strh r1, [r4, r3]
003ec444  00 20 a0 e3                                      mov r2, #0
003ec448  01 30 a0 e3                                      mov r3, #1
003ec44c  85 30 c4 e5                                      strb r3, [r4, #0x85]
003ec450  ee 22 c4 e5                                      strb r2, [r4, #0x2ee]
003ec454  bc 23 84 e5                                      str r2, [r4, #0x3bc]
003ec458  c4 23 84 e5                                      str r2, [r4, #0x3c4]
003ec45c  c8 23 84 e5                                      str r2, [r4, #0x3c8]
003ec460  cc 23 84 e5                                      str r2, [r4, #0x3cc]
003ec464  04 00 a0 e1                                      mov r0, r4
003ec468  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003ec46c  a8 86 5a 00 28 26 00 00                          .byte 0xa8, 0x86, 0x5a, 0x00, 0x28, 0x26, 0x00, 0x00

; FUNCTION 0x003ec474, declared_size=144, range_size=144, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject17_DoAutoPickupHackEPS_PK10GameObjectS3_
; demangled: ItemObject::_DoAutoPickupHack(ItemObject*, GameObject const*, GameObject const*)
; decoder-mode: arm
003ec474  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ec478  00 10 a0 e3                                      mov r1, #0
003ec47c  00 40 a0 e1                                      mov r4, r0
003ec480  dd 0f 80 e2                                      add r0, r0, #0x374
003ec484  02 50 a0 e1                                      mov r5, r2
003ec488  63 40 00 eb                                      bl #0x3fc61c
003ec48c  60 70 9f e5                                      ldr r7, [pc, #0x60]
003ec490  00 00 50 e3                                      cmp r0, #0
003ec494  00 00 54 13                                      cmpne r4, #0
003ec498  07 70 8f e0                                      add r7, pc, r7
003ec49c  00 00 00 1a                                      bne #0x3ec4a4
003ec4a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003ec4a4  62 36 00 eb                                      bl #0x3f9e34
003ec4a8  48 30 9f e5                                      ldr r3, [pc, #0x48]
003ec4ac  48 10 9f e5                                      ldr r1, [pc, #0x48]
003ec4b0  48 20 9f e5                                      ldr r2, [pc, #0x48]
003ec4b4  03 30 97 e7                                      ldr r3, [r7, r3]
003ec4b8  00 60 a0 e1                                      mov r6, r0
003ec4bc  01 10 8f e0                                      add r1, pc, r1
003ec4c0  02 20 8f e0                                      add r2, pc, r2
003ec4c4  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003ec4c8  c3 61 03 eb                                      bl #0x4c4bdc
003ec4cc  00 00 56 e1                                      cmp r6, r0
003ec4d0  f2 ff ff 1a                                      bne #0x3ec4a0
003ec4d4  00 00 55 e3                                      cmp r5, #0
003ec4d8  f0 ff ff 0a                                      beq #0x3ec4a0
003ec4dc  04 00 a0 e1                                      mov r0, r4
003ec4e0  05 10 a0 e1                                      mov r1, r5
003ec4e4  00 30 94 e5                                      ldr r3, [r4]
003ec4e8  0f e0 a0 e1                                      mov lr, pc
003ec4ec  98 f0 93 e5                                      ldr pc, [r3, #0x98]
003ec4f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003ec4f4  f8 85 5a 00 f4 37 00 00 c4 9d 4d 00 d0 9d 4d 00  .byte 0xf8, 0x85, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc4, 0x9d, 0x4d, 0x00, 0xd0, 0x9d, 0x4d, 0x00

; FUNCTION 0x003ec504, declared_size=208, range_size=208, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject23_GetNextPlayerQuestRRIdEi
; demangled: ItemObject::_GetNextPlayerQuestRRId(int)
; decoder-mode: arm
003ec504  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003ec508  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
003ec50c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
003ec510  b8 a0 9f e5                                      ldr sl, [pc, #0xb8]
003ec514  08 80 8f e0                                      add r8, pc, r8
003ec518  03 20 98 e7                                      ldr r2, [r8, r3]
003ec51c  0a 30 98 e7                                      ldr r3, [r8, sl]
003ec520  00 40 a0 e1                                      mov r4, r0
003ec524  40 60 92 e5                                      ldr r6, [r2, #0x40]
003ec528  00 50 93 e5                                      ldr r5, [r3]
003ec52c  c4 76 96 e5                                      ldr r7, [r6, #0x6c4]
003ec530  05 10 a0 e1                                      mov r1, r5
003ec534  06 00 a0 e1                                      mov r0, r6
003ec538  01 20 a0 e3                                      mov r2, #1
003ec53c  80 08 fe eb                                      bl #0x36e744
003ec540  60 96 90 e5                                      ldr sb, [r0, #0x660]
003ec544  09 10 a0 e1                                      mov r1, sb
003ec548  ac 33 b1 e5                                      ldr r3, [r1, #0x3ac]!
003ec54c  01 00 53 e1                                      cmp r3, r1
003ec550  06 00 00 0a                                      beq #0x3ec570
003ec554  08 20 93 e5                                      ldr r2, [r3, #8]
003ec558  02 00 54 e1                                      cmp r4, r2
003ec55c  03 00 00 0a                                      beq #0x3ec570
003ec560  00 30 93 e5                                      ldr r3, [r3]
003ec564  03 00 51 e1                                      cmp r1, r3
003ec568  f9 ff ff 1a                                      bne #0x3ec554
003ec56c  01 30 a0 e1                                      mov r3, r1
003ec570  03 00 51 e1                                      cmp r1, r3
003ec574  06 00 00 0a                                      beq #0x3ec594
003ec578  01 00 85 e2                                      add r0, r5, #1
003ec57c  07 10 a0 e1                                      mov r1, r7
003ec580  df 88 fc eb                                      bl #0x30e904
003ec584  0a 30 98 e7                                      ldr r3, [r8, sl]
003ec588  09 00 a0 e1                                      mov r0, sb
003ec58c  00 10 83 e5                                      str r1, [r3]
003ec590  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003ec594  01 00 85 e2                                      add r0, r5, #1
003ec598  07 10 a0 e1                                      mov r1, r7
003ec59c  d8 88 fc eb                                      bl #0x30e904
003ec5a0  0a 30 98 e7                                      ldr r3, [r8, sl]
003ec5a4  00 30 93 e5                                      ldr r3, [r3]
003ec5a8  03 00 55 e1                                      cmp r5, r3
003ec5ac  01 50 a0 11                                      movne r5, r1
003ec5b0  de ff ff 1a                                      bne #0x3ec530
003ec5b4  0a 30 98 e7                                      ldr r3, [r8, sl]
003ec5b8  00 90 a0 e3                                      mov sb, #0
003ec5bc  09 00 a0 e1                                      mov r0, sb
003ec5c0  00 10 83 e5                                      str r1, [r3]
003ec5c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
003ec5c8  7c 85 5a 00 f4 37 00 00 e0 43 00 00              .byte 0x7c, 0x85, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe0, 0x43, 0x00, 0x00

; FUNCTION 0x003ec668, declared_size=568, range_size=568, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject17_GetRandomDropPosER7Point3DIfEPK10GameObjectS5_
; demangled: ItemObject::_GetRandomDropPos(Point3D<float>&, GameObject const*, GameObject const*)
; decoder-mode: arm
003ec668  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003ec66c  24 62 9f e5                                      ldr r6, [pc, #0x224]
003ec670  00 70 52 e2                                      subs r7, r2, #0
003ec674  1c d0 4d e2                                      sub sp, sp, #0x1c
003ec678  00 50 a0 e1                                      mov r5, r0
003ec67c  06 60 8f e0                                      add r6, pc, r6
003ec680  01 40 a0 e1                                      mov r4, r1
003ec684  6c 00 00 0a                                      beq #0x3ec83c
003ec688  64 01 97 e5                                      ldr r0, [r7, #0x164]
003ec68c  64 11 91 e5                                      ldr r1, [r1, #0x164]
003ec690  45 87 fc eb                                      bl #0x30e3ac
003ec694  68 11 94 e5                                      ldr r1, [r4, #0x168]
003ec698  00 a0 a0 e1                                      mov sl, r0
003ec69c  68 01 97 e5                                      ldr r0, [r7, #0x168]
003ec6a0  41 87 fc eb                                      bl #0x30e3ac
003ec6a4  60 11 94 e5                                      ldr r1, [r4, #0x160]
003ec6a8  00 80 a0 e1                                      mov r8, r0
003ec6ac  60 01 97 e5                                      ldr r0, [r7, #0x160]
003ec6b0  3d 87 fc eb                                      bl #0x30e3ac
003ec6b4  0c 00 8d e5                                      str r0, [sp, #0xc]
003ec6b8  0c 00 8d e2                                      add r0, sp, #0xc
003ec6bc  10 a0 8d e5                                      str sl, [sp, #0x10]
003ec6c0  14 80 8d e5                                      str r8, [sp, #0x14]
003ec6c4  79 82 fd eb                                      bl #0x34d0b0
003ec6c8  cc 31 9f e5                                      ldr r3, [pc, #0x1cc]
003ec6cc  c8 00 a0 e3                                      mov r0, #0xc8
003ec6d0  0c b0 9d e5                                      ldr fp, [sp, #0xc]
003ec6d4  03 30 96 e7                                      ldr r3, [r6, r3]
003ec6d8  10 a0 9d e5                                      ldr sl, [sp, #0x10]
003ec6dc  14 70 9d e5                                      ldr r7, [sp, #0x14]
003ec6e0  00 90 93 e5                                      ldr sb, [r3]
003ec6e4  08 80 93 e5                                      ldr r8, [r3, #8]
003ec6e8  04 30 93 e5                                      ldr r3, [r3, #4]
003ec6ec  04 30 8d e5                                      str r3, [sp, #4]
003ec6f0  b7 ff ff eb                                      bl #0x3ec5d4
003ec6f4  96 00 80 e2                                      add r0, r0, #0x96
003ec6f8  99 88 fc eb                                      bl #0x30e964
003ec6fc  00 60 a0 e1                                      mov r6, r0
003ec700  00 10 a0 e1                                      mov r1, r0
003ec704  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003ec708  97 89 fc eb                                      bl #0x30ed6c
003ec70c  06 10 a0 e1                                      mov r1, r6
003ec710  0c 00 8d e5                                      str r0, [sp, #0xc]
003ec714  10 00 9d e5                                      ldr r0, [sp, #0x10]
003ec718  93 89 fc eb                                      bl #0x30ed6c
003ec71c  06 10 a0 e1                                      mov r1, r6
003ec720  10 00 8d e5                                      str r0, [sp, #0x10]
003ec724  14 00 9d e5                                      ldr r0, [sp, #0x14]
003ec728  8f 89 fc eb                                      bl #0x30ed6c
003ec72c  14 00 8d e5                                      str r0, [sp, #0x14]
003ec730  4b 0f a0 e3                                      mov r0, #0x12c
003ec734  a6 ff ff eb                                      bl #0x3ec5d4
003ec738  96 00 40 e2                                      sub r0, r0, #0x96
003ec73c  88 88 fc eb                                      bl #0x30e964
003ec740  09 10 a0 e1                                      mov r1, sb
003ec744  00 60 a0 e1                                      mov r6, r0
003ec748  07 00 a0 e1                                      mov r0, r7
003ec74c  86 89 fc eb                                      bl #0x30ed6c
003ec750  0b 10 a0 e1                                      mov r1, fp
003ec754  00 30 a0 e1                                      mov r3, r0
003ec758  08 00 a0 e1                                      mov r0, r8
003ec75c  00 30 8d e5                                      str r3, [sp]
003ec760  81 89 fc eb                                      bl #0x30ed6c
003ec764  00 30 9d e5                                      ldr r3, [sp]
003ec768  00 10 a0 e1                                      mov r1, r0
003ec76c  03 00 a0 e1                                      mov r0, r3
003ec770  0d 87 fc eb                                      bl #0x30e3ac
003ec774  00 10 a0 e1                                      mov r1, r0
003ec778  06 00 a0 e1                                      mov r0, r6
003ec77c  7a 89 fc eb                                      bl #0x30ed6c
003ec780  10 10 9d e5                                      ldr r1, [sp, #0x10]
003ec784  06 89 fc eb                                      bl #0x30eba4
003ec788  64 11 94 e5                                      ldr r1, [r4, #0x164]
003ec78c  04 89 fc eb                                      bl #0x30eba4
003ec790  0b 10 a0 e1                                      mov r1, fp
003ec794  00 30 a0 e1                                      mov r3, r0
003ec798  04 00 9d e5                                      ldr r0, [sp, #4]
003ec79c  00 30 8d e5                                      str r3, [sp]
003ec7a0  71 89 fc eb                                      bl #0x30ed6c
003ec7a4  09 10 a0 e1                                      mov r1, sb
003ec7a8  00 b0 a0 e1                                      mov fp, r0
003ec7ac  0a 00 a0 e1                                      mov r0, sl
003ec7b0  6d 89 fc eb                                      bl #0x30ed6c
003ec7b4  00 10 a0 e1                                      mov r1, r0
003ec7b8  0b 00 a0 e1                                      mov r0, fp
003ec7bc  fa 86 fc eb                                      bl #0x30e3ac
003ec7c0  00 10 a0 e1                                      mov r1, r0
003ec7c4  06 00 a0 e1                                      mov r0, r6
003ec7c8  67 89 fc eb                                      bl #0x30ed6c
003ec7cc  14 10 9d e5                                      ldr r1, [sp, #0x14]
003ec7d0  f3 88 fc eb                                      bl #0x30eba4
003ec7d4  68 11 94 e5                                      ldr r1, [r4, #0x168]
003ec7d8  f1 88 fc eb                                      bl #0x30eba4
003ec7dc  08 10 a0 e1                                      mov r1, r8
003ec7e0  00 90 a0 e1                                      mov sb, r0
003ec7e4  0a 00 a0 e1                                      mov r0, sl
003ec7e8  5f 89 fc eb                                      bl #0x30ed6c
003ec7ec  04 10 9d e5                                      ldr r1, [sp, #4]
003ec7f0  00 80 a0 e1                                      mov r8, r0
003ec7f4  07 00 a0 e1                                      mov r0, r7
003ec7f8  5b 89 fc eb                                      bl #0x30ed6c
003ec7fc  00 10 a0 e1                                      mov r1, r0
003ec800  08 00 a0 e1                                      mov r0, r8
003ec804  e8 86 fc eb                                      bl #0x30e3ac
003ec808  00 10 a0 e1                                      mov r1, r0
003ec80c  06 00 a0 e1                                      mov r0, r6
003ec810  55 89 fc eb                                      bl #0x30ed6c
003ec814  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003ec818  e1 88 fc eb                                      bl #0x30eba4
003ec81c  60 11 94 e5                                      ldr r1, [r4, #0x160]
003ec820  df 88 fc eb                                      bl #0x30eba4
003ec824  08 90 85 e5                                      str sb, [r5, #8]
003ec828  00 00 85 e5                                      str r0, [r5]
003ec82c  00 30 9d e5                                      ldr r3, [sp]
003ec830  04 30 85 e5                                      str r3, [r5, #4]
003ec834  1c d0 8d e2                                      add sp, sp, #0x1c
003ec838  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003ec83c  60 61 91 e5                                      ldr r6, [r1, #0x160]
003ec840  7d 0f a0 e3                                      mov r0, #0x1f4
003ec844  00 60 85 e5                                      str r6, [r5]
003ec848  64 31 91 e5                                      ldr r3, [r1, #0x164]
003ec84c  04 30 85 e5                                      str r3, [r5, #4]
003ec850  68 31 91 e5                                      ldr r3, [r1, #0x168]
003ec854  08 30 85 e5                                      str r3, [r5, #8]
003ec858  5d ff ff eb                                      bl #0x3ec5d4
003ec85c  fa 00 40 e2                                      sub r0, r0, #0xfa
003ec860  3f 88 fc eb                                      bl #0x30e964
003ec864  06 10 a0 e1                                      mov r1, r6
003ec868  cd 88 fc eb                                      bl #0x30eba4
003ec86c  00 00 85 e5                                      str r0, [r5]
003ec870  7d 0f a0 e3                                      mov r0, #0x1f4
003ec874  04 40 95 e5                                      ldr r4, [r5, #4]
003ec878  55 ff ff eb                                      bl #0x3ec5d4
003ec87c  fa 00 40 e2                                      sub r0, r0, #0xfa
003ec880  37 88 fc eb                                      bl #0x30e964
003ec884  00 10 a0 e1                                      mov r1, r0
003ec888  04 00 a0 e1                                      mov r0, r4
003ec88c  c4 88 fc eb                                      bl #0x30eba4
003ec890  04 00 85 e5                                      str r0, [r5, #4]
003ec894  e6 ff ff ea                                      b #0x3ec834
; mapping-symbol data/literal pool
003ec898  14 84 5a 00 40 43 00 00                          .byte 0x14, 0x84, 0x5a, 0x00, 0x40, 0x43, 0x00, 0x00

; FUNCTION 0x003ec8a0, declared_size=212, range_size=212, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject16DropAndAwardLootER13ItemInventoryPK10GameObjectS4_i
; demangled: ItemObject::DropAndAwardLoot(ItemInventory&, GameObject const*, GameObject const*, int)
; decoder-mode: arm
003ec8a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003ec8a4  24 d0 4d e2                                      sub sp, sp, #0x24
003ec8a8  01 40 a0 e1                                      mov r4, r1
003ec8ac  02 70 a0 e1                                      mov r7, r2
003ec8b0  00 50 a0 e1                                      mov r5, r0
003ec8b4  53 3f 00 eb                                      bl #0x3fc608
003ec8b8  a8 60 9f e5                                      ldr r6, [pc, #0xa8]
003ec8bc  00 00 50 e3                                      cmp r0, #0
003ec8c0  06 60 8f e0                                      add r6, pc, r6
003ec8c4  25 00 00 0a                                      beq #0x3ec960
003ec8c8  00 30 a0 e3                                      mov r3, #0
003ec8cc  16 ae 84 e2                                      add sl, r4, #0x160
003ec8d0  14 80 8d e2                                      add r8, sp, #0x14
003ec8d4  1c 30 8d e5                                      str r3, [sp, #0x1c]
003ec8d8  14 30 8d e5                                      str r3, [sp, #0x14]
003ec8dc  18 30 8d e5                                      str r3, [sp, #0x18]
003ec8e0  84 90 9f e5                                      ldr sb, [pc, #0x84]
003ec8e4  84 b0 9f e5                                      ldr fp, [pc, #0x84]
003ec8e8  15 00 00 ea                                      b #0x3ec944
003ec8ec  5d ff ff eb                                      bl #0x3ec668
003ec8f0  00 10 a0 e3                                      mov r1, #0
003ec8f4  05 00 a0 e1                                      mov r0, r5
003ec8f8  47 3f 00 eb                                      bl #0x3fc61c
003ec8fc  09 30 96 e7                                      ldr r3, [r6, sb]
003ec900  00 10 a0 e3                                      mov r1, #0
003ec904  01 20 a0 e3                                      mov r2, #1
003ec908  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ec90c  d9 06 fe eb                                      bl #0x36e478
003ec910  0b 30 96 e7                                      ldr r3, [r6, fp]
003ec914  00 a0 8d e5                                      str sl, [sp]
003ec918  04 80 8d e5                                      str r8, [sp, #4]
003ec91c  60 c6 90 e5                                      ldr ip, [r0, #0x660]
003ec920  05 10 a0 e1                                      mov r1, r5
003ec924  03 00 a0 e1                                      mov r0, r3
003ec928  00 20 a0 e3                                      mov r2, #0
003ec92c  04 30 a0 e1                                      mov r3, r4
003ec930  08 c0 8d e5                                      str ip, [sp, #8]
003ec934  e5 f8 ff eb                                      bl #0x3eacd0
003ec938  04 10 a0 e1                                      mov r1, r4
003ec93c  07 20 a0 e1                                      mov r2, r7
003ec940  cb fe ff eb                                      bl #0x3ec474
003ec944  05 00 a0 e1                                      mov r0, r5
003ec948  2e 3f 00 eb                                      bl #0x3fc608
003ec94c  00 00 50 e3                                      cmp r0, #0
003ec950  07 20 a0 e1                                      mov r2, r7
003ec954  04 10 a0 e1                                      mov r1, r4
003ec958  08 00 a0 e1                                      mov r0, r8
003ec95c  e2 ff ff 1a                                      bne #0x3ec8ec
003ec960  24 d0 8d e2                                      add sp, sp, #0x24
003ec964  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003ec968  d0 81 5a 00 f4 37 00 00 2c 0e 00 00              .byte 0xd0, 0x81, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x2c, 0x0e, 0x00, 0x00

; FUNCTION 0x003ec974, declared_size=368, range_size=368, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject13DropInventoryER13ItemInventoryPK10GameObjectS4_PK9Character
; demangled: ItemObject::DropInventory(ItemInventory&, GameObject const*, GameObject const*, Character const*)
; decoder-mode: arm
003ec974  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003ec978  44 71 9f e5                                      ldr r7, [pc, #0x144]
003ec97c  00 40 51 e2                                      subs r4, r1, #0
003ec980  2c d0 4d e2                                      sub sp, sp, #0x2c
003ec984  07 70 8f e0                                      add r7, pc, r7
003ec988  00 60 a0 e1                                      mov r6, r0
003ec98c  02 80 a0 e1                                      mov r8, r2
003ec990  03 90 a0 e1                                      mov sb, r3
003ec994  35 00 00 0a                                      beq #0x3eca70
003ec998  28 11 9f e5                                      ldr r1, [pc, #0x128]
003ec99c  28 21 9f e5                                      ldr r2, [pc, #0x128]
003ec9a0  00 30 a0 e3                                      mov r3, #0
003ec9a4  16 be 84 e2                                      add fp, r4, #0x160
003ec9a8  1c 50 8d e2                                      add r5, sp, #0x1c
003ec9ac  24 30 8d e5                                      str r3, [sp, #0x24]
003ec9b0  1c 30 8d e5                                      str r3, [sp, #0x1c]
003ec9b4  20 30 8d e5                                      str r3, [sp, #0x20]
003ec9b8  10 10 8d e5                                      str r1, [sp, #0x10]
003ec9bc  14 20 8d e5                                      str r2, [sp, #0x14]
003ec9c0  06 00 a0 e1                                      mov r0, r6
003ec9c4  0f 3f 00 eb                                      bl #0x3fc608
003ec9c8  00 00 50 e3                                      cmp r0, #0
003ec9cc  04 10 a0 e1                                      mov r1, r4
003ec9d0  08 20 a0 e1                                      mov r2, r8
003ec9d4  05 00 a0 e1                                      mov r0, r5
003ec9d8  22 00 00 0a                                      beq #0x3eca68
003ec9dc  21 ff ff eb                                      bl #0x3ec668
003ec9e0  10 30 9d e5                                      ldr r3, [sp, #0x10]
003ec9e4  06 10 a0 e1                                      mov r1, r6
003ec9e8  00 20 a0 e3                                      mov r2, #0
003ec9ec  03 00 97 e7                                      ldr r0, [r7, r3]
003ec9f0  04 30 a0 e1                                      mov r3, r4
003ec9f4  00 b0 8d e5                                      str fp, [sp]
003ec9f8  20 02 8d e9                                      stmib sp, {r5, sb}
003ec9fc  b3 f8 ff eb                                      bl #0x3eacd0
003eca00  00 30 94 e5                                      ldr r3, [r4]
003eca04  00 a0 a0 e1                                      mov sl, r0
003eca08  04 00 a0 e1                                      mov r0, r4
003eca0c  0f e0 a0 e1                                      mov lr, pc
003eca10  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003eca14  00 00 50 e3                                      cmp r0, #0
003eca18  e8 ff ff 0a                                      beq #0x3ec9c0
003eca1c  14 10 9d e5                                      ldr r1, [sp, #0x14]
003eca20  00 20 a0 e3                                      mov r2, #0
003eca24  01 30 97 e7                                      ldr r3, [r7, r1]
003eca28  04 10 a0 e1                                      mov r1, r4
003eca2c  40 00 93 e5                                      ldr r0, [r3, #0x40]
003eca30  1c 09 fe eb                                      bl #0x36eea8
003eca34  78 36 90 e5                                      ldr r3, [r0, #0x678]
003eca38  88 13 01 e3                                      movw r1, #0x1388
003eca3c  ee 2f a0 e3                                      mov r2, #0x3b8
003eca40  b2 10 8a e1                                      strh r1, [sl, r2]
003eca44  0f 2d a0 e3                                      mov r2, #0x3c0
003eca48  b2 30 8a e1                                      strh r3, [sl, r2]
003eca4c  06 00 a0 e1                                      mov r0, r6
003eca50  ec 3e 00 eb                                      bl #0x3fc608
003eca54  00 00 50 e3                                      cmp r0, #0
003eca58  04 10 a0 e1                                      mov r1, r4
003eca5c  08 20 a0 e1                                      mov r2, r8
003eca60  05 00 a0 e1                                      mov r0, r5
003eca64  dc ff ff 1a                                      bne #0x3ec9dc
003eca68  2c d0 8d e2                                      add sp, sp, #0x2c
003eca6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003eca70  58 30 9f e5                                      ldr r3, [pc, #0x58]
003eca74  03 30 97 e7                                      ldr r3, [r7, r3]
003eca78  00 30 93 e5                                      ldr r3, [r3]
003eca7c  02 00 53 e3                                      cmp r3, #2
003eca80  00 40 84 05                                      streq r4, [r4]
003eca84  c3 ff ff 0a                                      beq #0x3ec998
003eca88  01 00 53 e3                                      cmp r3, #1
003eca8c  c1 ff ff 1a                                      bne #0x3ec998
003eca90  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003eca94  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003eca98  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003eca9c  00 00 97 e7                                      ldr r0, [r7, r0]
003ecaa0  38 30 9f e5                                      ldr r3, [pc, #0x38]
003ecaa4  ff c0 a0 e3                                      mov ip, #0xff
003ecaa8  01 10 8f e0                                      add r1, pc, r1
003ecaac  02 20 8f e0                                      add r2, pc, r2
003ecab0  03 30 8f e0                                      add r3, pc, r3
003ecab4  a8 00 80 e2                                      add r0, r0, #0xa8
003ecab8  00 c0 8d e5                                      str ip, [sp]
003ecabc  50 85 fc eb                                      bl #0x30e004
003ecac0  b4 ff ff ea                                      b #0x3ec998
; mapping-symbol data/literal pool
003ecac4  0c 81 5a 00 2c 0e 00 00 f4 37 00 00 c0 39 00 00  .byte 0x0c, 0x81, 0x5a, 0x00, 0x2c, 0x0e, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003ecad4  c0 19 00 00 30 19 4d 00 e4 96 4d 00 80 97 4d 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x30, 0x19, 0x4d, 0x00, 0xe4, 0x96, 0x4d, 0x00, 0x80, 0x97, 0x4d, 0x00

; FUNCTION 0x003ecae4, declared_size=188, range_size=188, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject18GetInventoryToDropER13ItemInventoryiPK10GameObjecti
; demangled: ItemObject::GetInventoryToDrop(ItemInventory&, int, GameObject const*, int)
; decoder-mode: arm
003ecae4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003ecae8  00 00 52 e3                                      cmp r2, #0
003ecaec  18 d0 4d e2                                      sub sp, sp, #0x18
003ecaf0  00 60 a0 e1                                      mov r6, r0
003ecaf4  01 50 a0 e1                                      mov r5, r1
003ecaf8  03 40 a0 e1                                      mov r4, r3
003ecafc  08 00 00 0a                                      beq #0x3ecb24
003ecb00  0c 70 8d e2                                      add r7, sp, #0xc
003ecb04  02 10 a0 e1                                      mov r1, r2
003ecb08  07 00 a0 e1                                      mov r0, r7
003ecb0c  97 44 fd eb                                      bl #0x33dd70
003ecb10  07 00 a0 e1                                      mov r0, r7
003ecb14  00 10 a0 e3                                      mov r1, #0
003ecb18  1b 4d fd eb                                      bl #0x33ff8c
003ecb1c  00 00 50 e3                                      cmp r0, #0
003ecb20  08 00 00 1a                                      bne #0x3ecb48
003ecb24  00 c0 a0 e3                                      mov ip, #0
003ecb28  0c 20 a0 e1                                      mov r2, ip
003ecb2c  06 00 a0 e1                                      mov r0, r6
003ecb30  05 10 a0 e1                                      mov r1, r5
003ecb34  0c 30 a0 e1                                      mov r3, ip
003ecb38  10 10 8d e8                                      stm sp, {r4, ip}
003ecb3c  4e 5d 00 eb                                      bl #0x40407c
003ecb40  18 d0 8d e2                                      add sp, sp, #0x18
003ecb44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003ecb48  f4 70 90 e5                                      ldr r7, [r0, #0xf4]
003ecb4c  00 00 57 e3                                      cmp r7, #0
003ecb50  f3 ff ff 1a                                      bne #0x3ecb24
003ecb54  ff 8e 80 e2                                      add r8, r0, #0xff0
003ecb58  04 80 88 e2                                      add r8, r8, #4
003ecb5c  56 ae 80 e2                                      add sl, r0, #0x560
003ecb60  08 10 a0 e1                                      mov r1, r8
003ecb64  0a 00 a0 e1                                      mov r0, sl
003ecb68  c3 20 a0 e3                                      mov r2, #0xc3
003ecb6c  90 c8 ff eb                                      bl #0x3dedb4
003ecb70  08 10 a0 e1                                      mov r1, r8
003ecb74  00 90 a0 e1                                      mov sb, r0
003ecb78  c4 20 a0 e3                                      mov r2, #0xc4
003ecb7c  0a 00 a0 e1                                      mov r0, sl
003ecb80  8b c8 ff eb                                      bl #0x3dedb4
003ecb84  05 10 a0 e1                                      mov r1, r5
003ecb88  00 30 a0 e1                                      mov r3, r0
003ecb8c  09 20 a0 e1                                      mov r2, sb
003ecb90  06 00 a0 e1                                      mov r0, r6
003ecb94  90 00 8d e8                                      stm sp, {r4, r7}
003ecb98  37 5d 00 eb                                      bl #0x40407c
003ecb9c  e7 ff ff ea                                      b #0x3ecb40

; FUNCTION 0x003ecba0, declared_size=296, range_size=296, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject13DropLootTableEiPK10GameObjectS2_ib
; demangled: ItemObject::DropLootTable(int, GameObject const*, GameObject const*, int, bool)
; decoder-mode: arm
003ecba0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003ecba4  00 50 52 e2                                      subs r5, r2, #0
003ecba8  54 d0 4d e2                                      sub sp, sp, #0x54
003ecbac  00 80 a0 e1                                      mov r8, r0
003ecbb0  01 60 a0 e1                                      mov r6, r1
003ecbb4  03 70 a0 e1                                      mov r7, r3
003ecbb8  05 40 a0 01                                      moveq r4, r5
003ecbbc  09 00 00 0a                                      beq #0x3ecbe8
003ecbc0  44 40 8d e2                                      add r4, sp, #0x44
003ecbc4  04 00 a0 e1                                      mov r0, r4
003ecbc8  05 10 a0 e1                                      mov r1, r5
003ecbcc  67 44 fd eb                                      bl #0x33dd70
003ecbd0  04 00 a0 e1                                      mov r0, r4
003ecbd4  00 10 a0 e3                                      mov r1, #0
003ecbd8  eb 4c fd eb                                      bl #0x33ff8c
003ecbdc  00 40 50 e2                                      subs r4, r0, #0
003ecbe0  0d 00 00 1a                                      bne #0x3ecc1c
003ecbe4  00 40 a0 e3                                      mov r4, #0
003ecbe8  00 00 56 e3                                      cmp r6, #0
003ecbec  08 00 00 0a                                      beq #0x3ecc14
003ecbf0  38 a0 8d e2                                      add sl, sp, #0x38
003ecbf4  06 10 a0 e1                                      mov r1, r6
003ecbf8  0a 00 a0 e1                                      mov r0, sl
003ecbfc  5b 44 fd eb                                      bl #0x33dd70
003ecc00  0a 00 a0 e1                                      mov r0, sl
003ecc04  00 10 a0 e3                                      mov r1, #0
003ecc08  df 4c fd eb                                      bl #0x33ff8c
003ecc0c  00 30 50 e2                                      subs r3, r0, #0
003ecc10  05 00 00 1a                                      bne #0x3ecc2c
003ecc14  00 a0 a0 e3                                      mov sl, #0
003ecc18  1f 00 00 ea                                      b #0x3ecc9c
003ecc1c  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
003ecc20  00 00 53 e3                                      cmp r3, #0
003ecc24  ef ff ff 0a                                      beq #0x3ecbe8
003ecc28  ed ff ff ea                                      b #0x3ecbe4
003ecc2c  f4 20 93 e5                                      ldr r2, [r3, #0xf4]
003ecc30  00 00 52 e3                                      cmp r2, #0
003ecc34  f6 ff ff 1a                                      bne #0x3ecc14
003ecc38  03 a0 a0 e1                                      mov sl, r3
003ecc3c  45 d9 fe eb                                      bl #0x3a3158
003ecc40  00 00 50 e3                                      cmp r0, #0
003ecc44  10 00 00 0a                                      beq #0x3ecc8c
003ecc48  0d 00 a0 e1                                      mov r0, sp
003ecc4c  6b 49 00 eb                                      bl #0x3ff200
003ecc50  0d 00 a0 e1                                      mov r0, sp
003ecc54  08 10 a0 e1                                      mov r1, r8
003ecc58  05 20 a0 e1                                      mov r2, r5
003ecc5c  07 30 a0 e1                                      mov r3, r7
003ecc60  9f ff ff eb                                      bl #0x3ecae4
003ecc64  0d 00 a0 e1                                      mov r0, sp
003ecc68  06 10 a0 e1                                      mov r1, r6
003ecc6c  05 20 a0 e1                                      mov r2, r5
003ecc70  07 30 a0 e1                                      mov r3, r7
003ecc74  09 ff ff eb                                      bl #0x3ec8a0
003ecc78  0d 00 a0 e1                                      mov r0, sp
003ecc7c  0d 40 a0 e1                                      mov r4, sp
003ecc80  f6 49 00 eb                                      bl #0x3ff460
003ecc84  54 d0 8d e2                                      add sp, sp, #0x54
003ecc88  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003ecc8c  0a 00 a0 e1                                      mov r0, sl
003ecc90  2b d9 fe eb                                      bl #0x3a3144
003ecc94  00 00 50 e3                                      cmp r0, #0
003ecc98  ea ff ff 1a                                      bne #0x3ecc48
003ecc9c  00 00 54 e3                                      cmp r4, #0
003ecca0  f7 ff ff 0a                                      beq #0x3ecc84
003ecca4  00 20 94 e5                                      ldr r2, [r4]
003ecca8  04 00 a0 e1                                      mov r0, r4
003eccac  0f e0 a0 e1                                      mov lr, pc
003eccb0  28 f0 92 e5                                      ldr pc, [r2, #0x28]
003eccb4  00 00 50 e3                                      cmp r0, #0
003eccb8  e2 ff ff 1a                                      bne #0x3ecc48
003eccbc  04 00 5a e1                                      cmp sl, r4
003eccc0  ef ff ff 1a                                      bne #0x3ecc84
003eccc4  df ff ff ea                                      b #0x3ecc48

; FUNCTION 0x003eccc8, declared_size=124, range_size=124, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject13DropLootTableEiPK10GameObjectS2_PK9Characteri
; demangled: ItemObject::DropLootTable(int, GameObject const*, GameObject const*, Character const*, int)
; decoder-mode: arm
003eccc8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ecccc  00 50 52 e2                                      subs r5, r2, #0
003eccd0  48 d0 4d e2                                      sub sp, sp, #0x48
003eccd4  00 80 a0 e1                                      mov r8, r0
003eccd8  01 70 a0 e1                                      mov r7, r1
003eccdc  03 60 a0 e1                                      mov r6, r3
003ecce0  06 00 00 0a                                      beq #0x3ecd00
003ecce4  3c 40 8d e2                                      add r4, sp, #0x3c
003ecce8  05 10 a0 e1                                      mov r1, r5
003eccec  04 00 a0 e1                                      mov r0, r4
003eccf0  1e 44 fd eb                                      bl #0x33dd70
003eccf4  04 00 a0 e1                                      mov r0, r4
003eccf8  00 10 a0 e3                                      mov r1, #0
003eccfc  a2 4c fd eb                                      bl #0x33ff8c
003ecd00  04 40 8d e2                                      add r4, sp, #4
003ecd04  04 00 a0 e1                                      mov r0, r4
003ecd08  3c 49 00 eb                                      bl #0x3ff200
003ecd0c  04 00 a0 e1                                      mov r0, r4
003ecd10  08 10 a0 e1                                      mov r1, r8
003ecd14  05 20 a0 e1                                      mov r2, r5
003ecd18  60 30 9d e5                                      ldr r3, [sp, #0x60]
003ecd1c  70 ff ff eb                                      bl #0x3ecae4
003ecd20  04 00 a0 e1                                      mov r0, r4
003ecd24  07 10 a0 e1                                      mov r1, r7
003ecd28  05 20 a0 e1                                      mov r2, r5
003ecd2c  06 30 a0 e1                                      mov r3, r6
003ecd30  0f ff ff eb                                      bl #0x3ec974
003ecd34  04 00 a0 e1                                      mov r0, r4
003ecd38  c8 49 00 eb                                      bl #0x3ff460
003ecd3c  48 d0 8d e2                                      add sp, sp, #0x48
003ecd40  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003ecd44, declared_size=8, range_size=8, mode=arm
; class-group: ItemObject
; alias: _ZThn884_N10ItemObjectD1Ev
; demangled: non-virtual thunk to ItemObject::~ItemObject()
; decoder-mode: arm
003ecd44  dd 0f 40 e2                                      sub r0, r0, #0x374
003ecd48  01 00 00 ea                                      b #0x3ecd54

; FUNCTION 0x003ecd4c, declared_size=8, range_size=8, mode=arm
; class-group: ItemObject
; alias: _ZThn36_N10ItemObjectD1Ev
; demangled: non-virtual thunk to ItemObject::~ItemObject()
; decoder-mode: arm
003ecd4c  24 00 40 e2                                      sub r0, r0, #0x24
003ecd50  ff ff ff ea                                      b #0x3ecd54

; FUNCTION 0x003ecd54, declared_size=128, range_size=128, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObjectD1Ev
; demangled: ItemObject::~ItemObject()
; decoder-mode: arm
003ecd54  70 40 2d e9                                      push {r4, r5, r6, lr}
003ecd58  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003ecd5c  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003ecd60  c8 53 90 e5                                      ldr r5, [r0, #0x3c8]
003ecd64  02 20 8f e0                                      add r2, pc, r2
003ecd68  03 30 92 e7                                      ldr r3, [r2, r3]
003ecd6c  00 40 a0 e1                                      mov r4, r0
003ecd70  00 00 55 e3                                      cmp r5, #0
003ecd74  fc 20 83 e2                                      add r2, r3, #0xfc
003ecd78  08 00 83 e2                                      add r0, r3, #8
003ecd7c  d8 10 83 e2                                      add r1, r3, #0xd8
003ecd80  e4 30 83 e2                                      add r3, r3, #0xe4
003ecd84  03 00 84 e8                                      stm r4, {r0, r1}
003ecd88  24 30 84 e5                                      str r3, [r4, #0x24]
003ecd8c  74 23 84 e5                                      str r2, [r4, #0x374]
003ecd90  05 00 00 0a                                      beq #0x3ecdac
003ecd94  05 00 a0 e1                                      mov r0, r5
003ecd98  13 b0 02 eb                                      bl #0x498dec
003ecd9c  05 00 a0 e1                                      mov r0, r5
003ecda0  a6 8d fc eb                                      bl #0x310440
003ecda4  00 30 a0 e3                                      mov r3, #0
003ecda8  c8 33 84 e5                                      str r3, [r4, #0x3c8]
003ecdac  04 00 a0 e1                                      mov r0, r4
003ecdb0  c5 fb ff eb                                      bl #0x3ebccc
003ecdb4  dd 0f 84 e2                                      add r0, r4, #0x374
003ecdb8  da 49 00 eb                                      bl #0x3ff528
003ecdbc  04 00 a0 e1                                      mov r0, r4
003ecdc0  6c 81 fe eb                                      bl #0x38d378
003ecdc4  04 00 a0 e1                                      mov r0, r4
003ecdc8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ecdcc  2c 7d 5a 00 28 26 00 00                          .byte 0x2c, 0x7d, 0x5a, 0x00, 0x28, 0x26, 0x00, 0x00

; FUNCTION 0x003ecdd4, declared_size=8, range_size=8, mode=arm
; class-group: ItemObject
; alias: _ZThn884_N10ItemObjectD0Ev
; demangled: non-virtual thunk to ItemObject::~ItemObject()
; decoder-mode: arm
003ecdd4  dd 0f 40 e2                                      sub r0, r0, #0x374
003ecdd8  01 00 00 ea                                      b #0x3ecde4

; FUNCTION 0x003ecddc, declared_size=8, range_size=8, mode=arm
; class-group: ItemObject
; alias: _ZThn36_N10ItemObjectD0Ev
; demangled: non-virtual thunk to ItemObject::~ItemObject()
; decoder-mode: arm
003ecddc  24 00 40 e2                                      sub r0, r0, #0x24
003ecde0  ff ff ff ea                                      b #0x3ecde4

; FUNCTION 0x003ecde4, declared_size=28, range_size=28, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObjectD0Ev
; demangled: ItemObject::~ItemObject()
; decoder-mode: arm
003ecde4  10 40 2d e9                                      push {r4, lr}
003ecde8  00 40 a0 e1                                      mov r4, r0
003ecdec  d8 ff ff eb                                      bl #0x3ecd54
003ecdf0  04 00 a0 e1                                      mov r0, r4
003ecdf4  91 8d fc eb                                      bl #0x310440
003ecdf8  04 00 a0 e1                                      mov r0, r4
003ecdfc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ece00, declared_size=128, range_size=128, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObjectD2Ev
; demangled: ItemObject::~ItemObject()
; decoder-mode: arm
003ece00  70 40 2d e9                                      push {r4, r5, r6, lr}
003ece04  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003ece08  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003ece0c  c8 53 90 e5                                      ldr r5, [r0, #0x3c8]
003ece10  02 20 8f e0                                      add r2, pc, r2
003ece14  03 30 92 e7                                      ldr r3, [r2, r3]
003ece18  00 40 a0 e1                                      mov r4, r0
003ece1c  00 00 55 e3                                      cmp r5, #0
003ece20  fc 20 83 e2                                      add r2, r3, #0xfc
003ece24  08 00 83 e2                                      add r0, r3, #8
003ece28  d8 10 83 e2                                      add r1, r3, #0xd8
003ece2c  e4 30 83 e2                                      add r3, r3, #0xe4
003ece30  03 00 84 e8                                      stm r4, {r0, r1}
003ece34  24 30 84 e5                                      str r3, [r4, #0x24]
003ece38  74 23 84 e5                                      str r2, [r4, #0x374]
003ece3c  05 00 00 0a                                      beq #0x3ece58
003ece40  05 00 a0 e1                                      mov r0, r5
003ece44  e8 af 02 eb                                      bl #0x498dec
003ece48  05 00 a0 e1                                      mov r0, r5
003ece4c  7b 8d fc eb                                      bl #0x310440
003ece50  00 30 a0 e3                                      mov r3, #0
003ece54  c8 33 84 e5                                      str r3, [r4, #0x3c8]
003ece58  04 00 a0 e1                                      mov r0, r4
003ece5c  9a fb ff eb                                      bl #0x3ebccc
003ece60  dd 0f 84 e2                                      add r0, r4, #0x374
003ece64  af 49 00 eb                                      bl #0x3ff528
003ece68  04 00 a0 e1                                      mov r0, r4
003ece6c  41 81 fe eb                                      bl #0x38d378
003ece70  04 00 a0 e1                                      mov r0, r4
003ece74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ece78  80 7c 5a 00 28 26 00 00                          .byte 0x80, 0x7c, 0x5a, 0x00, 0x28, 0x26, 0x00, 0x00

; FUNCTION 0x003ece80, declared_size=232, range_size=232, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject8InitOnceEi
; demangled: ItemObject::InitOnce(int)
; decoder-mode: arm
003ece80  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
003ece84  70 40 2d e9                                      push {r4, r5, r6, lr}
003ece88  03 30 8f e0                                      add r3, pc, r3
003ece8c  01 50 a0 e1                                      mov r5, r1
003ece90  03 10 a0 e1                                      mov r1, r3
003ece94  eb 3f a0 e3                                      mov r3, #0x3ac
003ece98  b3 50 80 e1                                      strh r5, [r0, r3]
003ece9c  00 40 a0 e1                                      mov r4, r0
003ecea0  22 20 81 e2                                      add r2, r1, #0x22
003ecea4  29 0e 80 e2                                      add r0, r0, #0x290
003ecea8  cc 8e fc eb                                      bl #0x3109e0
003eceac  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
003eceb0  01 21 a0 e3                                      mov r2, #0x40000000
003eceb4  00 00 55 e3                                      cmp r5, #0
003eceb8  03 25 82 e2                                      add r2, r2, #0xc00000
003ecebc  b0 23 84 e5                                      str r2, [r4, #0x3b0]
003ecec0  03 30 8f e0                                      add r3, pc, r3
003ecec4  04 00 00 ba                                      blt #0x3ecedc
003ecec8  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
003ececc  02 20 93 e7                                      ldr r2, [r3, r2]
003eced0  00 20 92 e5                                      ldr r2, [r2]
003eced4  02 00 55 e1                                      cmp r5, r2
003eced8  0b 00 00 ba                                      blt #0x3ecf0c
003ecedc  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
003ecee0  aa 0f 84 e2                                      add r0, r4, #0x2a8
003ecee4  01 10 8f e0                                      add r1, pc, r1
003ecee8  12 20 81 e2                                      add r2, r1, #0x12
003eceec  bb 8e fc eb                                      bl #0x3109e0
003ecef0  04 00 a0 e1                                      mov r0, r4
003ecef4  d8 7b fe eb                                      bl #0x38be5c
003ecef8  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003ecefc  00 00 50 e3                                      cmp r0, #0
003ecf00  12 00 00 0a                                      beq #0x3ecf50
003ecf04  70 40 bd e8                                      pop {r4, r5, r6, lr}
003ecf08  d1 0e 02 ea                                      b #0x470a54
003ecf0c  50 20 9f e5                                      ldr r2, [pc, #0x50]
003ecf10  02 30 93 e7                                      ldr r3, [r3, r2]
003ecf14  14 20 a0 e3                                      mov r2, #0x14
003ecf18  00 30 93 e5                                      ldr r3, [r3]
003ecf1c  92 35 25 e0                                      mla r5, r2, r5, r3
003ecf20  10 50 95 e5                                      ldr r5, [r5, #0x10]
003ecf24  05 00 a0 e1                                      mov r0, r5
003ecf28  c9 83 fc eb                                      bl #0x30de54
003ecf2c  05 10 a0 e1                                      mov r1, r5
003ecf30  00 20 85 e0                                      add r2, r5, r0
003ecf34  aa 0f 84 e2                                      add r0, r4, #0x2a8
003ecf38  a8 8e fc eb                                      bl #0x3109e0
003ecf3c  04 00 a0 e1                                      mov r0, r4
003ecf40  c5 7b fe eb                                      bl #0x38be5c
003ecf44  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003ecf48  00 00 50 e3                                      cmp r0, #0
003ecf4c  ec ff ff 1a                                      bne #0x3ecf04
003ecf50  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ecf54  18 94 4d 00 d0 7b 5a 00 10 45 00 00 e4 93 4d 00  .byte 0x18, 0x94, 0x4d, 0x00, 0xd0, 0x7b, 0x5a, 0x00, 0x10, 0x45, 0x00, 0x00, 0xe4, 0x93, 0x4d, 0x00
003ecf64  3c 09 00 00                                      .byte 0x3c, 0x09, 0x00, 0x00

; FUNCTION 0x003ed144, declared_size=2416, range_size=2416, mode=arm
; class-group: ItemObject
; alias: _ZN10ItemObject8InteractEP10GameObject
; demangled: ItemObject::Interact(GameObject*)
; decoder-mode: arm
003ed144  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003ed148  e0 48 9f e5                                      ldr r4, [pc, #0x8e0]
003ed14c  e0 58 9f e5                                      ldr r5, [pc, #0x8e0]
003ed150  61 df 4d e2                                      sub sp, sp, #0x184
003ed154  04 40 8f e0                                      add r4, pc, r4
003ed158  05 30 94 e7                                      ldr r3, [r4, r5]
003ed15c  01 80 a0 e1                                      mov r8, r1
003ed160  00 60 a0 e1                                      mov r6, r0
003ed164  00 30 93 e5                                      ldr r3, [r3]
003ed168  7c 31 8d e5                                      str r3, [sp, #0x17c]
003ed16c  a2 fb ff eb                                      bl #0x3ebffc
003ed170  00 00 50 e3                                      cmp r0, #0
003ed174  06 00 00 0a                                      beq #0x3ed194
003ed178  05 30 94 e7                                      ldr r3, [r4, r5]
003ed17c  7c 21 9d e5                                      ldr r2, [sp, #0x17c]
003ed180  00 30 93 e5                                      ldr r3, [r3]
003ed184  03 00 52 e1                                      cmp r2, r3
003ed188  d7 01 00 1a                                      bne #0x3ed8ec
003ed18c  61 df 8d e2                                      add sp, sp, #0x184
003ed190  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003ed194  3c 70 8d e2                                      add r7, sp, #0x3c
003ed198  07 00 a0 e1                                      mov r0, r7
003ed19c  08 10 a0 e1                                      mov r1, r8
003ed1a0  e1 42 fd eb                                      bl #0x33dd2c
003ed1a4  07 00 a0 e1                                      mov r0, r7
003ed1a8  69 4b fd eb                                      bl #0x33ff54
003ed1ac  00 70 50 e2                                      subs r7, r0, #0
003ed1b0  f0 ff ff 0a                                      beq #0x3ed178
003ed1b4  bc 33 96 e5                                      ldr r3, [r6, #0x3bc]
003ed1b8  00 00 53 e3                                      cmp r3, #0
003ed1bc  01 00 00 0a                                      beq #0x3ed1c8
003ed1c0  03 00 57 e1                                      cmp r7, r3
003ed1c4  eb ff ff 1a                                      bne #0x3ed178
003ed1c8  0f 3d a0 e3                                      mov r3, #0x3c0
003ed1cc  f3 80 96 e1                                      ldrsh r8, [r6, r3]
003ed1d0  01 00 78 e3                                      cmn r8, #1
003ed1d4  08 00 00 0a                                      beq #0x3ed1fc
003ed1d8  58 38 9f e5                                      ldr r3, [pc, #0x858]
003ed1dc  07 10 a0 e1                                      mov r1, r7
003ed1e0  00 20 a0 e3                                      mov r2, #0
003ed1e4  03 30 94 e7                                      ldr r3, [r4, r3]
003ed1e8  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ed1ec  2d 07 fe eb                                      bl #0x36eea8
003ed1f0  78 36 90 e5                                      ldr r3, [r0, #0x678]
003ed1f4  03 00 58 e1                                      cmp r8, r3
003ed1f8  15 01 00 0a                                      beq #0x3ed654
003ed1fc  00 30 97 e5                                      ldr r3, [r7]
003ed200  07 00 a0 e1                                      mov r0, r7
003ed204  0f e0 a0 e1                                      mov lr, pc
003ed208  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003ed20c  00 00 50 e3                                      cmp r0, #0
003ed210  d8 ff ff 0a                                      beq #0x3ed178
003ed214  dd 1f 86 e2                                      add r1, r6, #0x374
003ed218  20 10 8d e5                                      str r1, [sp, #0x20]
003ed21c  20 00 9d e5                                      ldr r0, [sp, #0x20]
003ed220  00 10 a0 e3                                      mov r1, #0
003ed224  fc 3c 00 eb                                      bl #0x3fc61c
003ed228  08 b8 9f e5                                      ldr fp, [pc, #0x808]
003ed22c  08 18 9f e5                                      ldr r1, [pc, #0x808]
003ed230  00 80 a0 e1                                      mov r8, r0
003ed234  0b a0 94 e7                                      ldr sl, [r4, fp]
003ed238  01 10 8f e0                                      add r1, pc, r1
003ed23c  0a 00 a0 e1                                      mov r0, sl
003ed240  ff ce fc eb                                      bl #0x320e44
003ed244  1c 00 8d e5                                      str r0, [sp, #0x1c]
003ed248  08 00 a0 e1                                      mov r0, r8
003ed24c  ed 32 00 eb                                      bl #0x3f9e08
003ed250  68 90 90 e5                                      ldr sb, [r0, #0x68]
003ed254  08 00 a0 e1                                      mov r0, r8
003ed258  ea 32 00 eb                                      bl #0x3f9e08
003ed25c  01 00 79 e3                                      cmn sb, #1
003ed260  df 2f 87 02                                      addeq r2, r7, #0x37c
003ed264  58 90 90 e5                                      ldr sb, [r0, #0x58]
003ed268  1c 20 8d 05                                      streq r2, [sp, #0x1c]
003ed26c  fd 00 00 1a                                      bne #0x3ed668
003ed270  0e 00 59 e3                                      cmp sb, #0xe
003ed274  9d 01 00 0a                                      beq #0x3ed8f0
003ed278  c0 37 9f e5                                      ldr r3, [pc, #0x7c0]
003ed27c  49 1f 8d e2                                      add r1, sp, #0x124
003ed280  08 00 a0 e1                                      mov r0, r8
003ed284  03 30 94 e7                                      ldr r3, [r4, r3]
003ed288  28 10 8d e5                                      str r1, [sp, #0x28]
003ed28c  5b 9f 8d e2                                      add sb, sp, #0x16c
003ed290  00 20 93 e5                                      ldr r2, [r3]
003ed294  43 af 8d e2                                      add sl, sp, #0x10c
003ed298  18 20 8d e5                                      str r2, [sp, #0x18]
003ed29c  0a 35 00 eb                                      bl #0x3fa6cc
003ed2a0  18 20 9d e5                                      ldr r2, [sp, #0x18]
003ed2a4  0c 30 a0 e3                                      mov r3, #0xc
003ed2a8  94 17 9f e5                                      ldr r1, [pc, #0x794]
003ed2ac  93 20 23 e0                                      mla r3, r3, r0, r2
003ed2b0  01 10 8f e0                                      add r1, pc, r1
003ed2b4  08 20 93 e5                                      ldr r2, [r3, #8]
003ed2b8  09 00 a0 e1                                      mov r0, sb
003ed2bc  08 86 fc eb                                      bl #0x30eae4
003ed2c0  09 10 a0 e1                                      mov r1, sb
003ed2c4  54 20 8d e2                                      add r2, sp, #0x54
003ed2c8  28 00 9d e5                                      ldr r0, [sp, #0x28]
003ed2cc  86 9b fc eb                                      bl #0x3140ec
003ed2d0  38 31 9d e5                                      ldr r3, [sp, #0x138]
003ed2d4  34 11 9d e5                                      ldr r1, [sp, #0x134]
003ed2d8  0a 00 a0 e1                                      mov r0, sl
003ed2dc  1c a1 8d e5                                      str sl, [sp, #0x11c]
003ed2e0  01 10 63 e0                                      rsb r1, r3, r1
003ed2e4  0f 10 81 e2                                      add r1, r1, #0xf
003ed2e8  20 a1 8d e5                                      str sl, [sp, #0x120]
003ed2ec  e2 90 fc eb                                      bl #0x31167c
003ed2f0  50 17 9f e5                                      ldr r1, [pc, #0x750]
003ed2f4  1c 31 9d e5                                      ldr r3, [sp, #0x11c]
003ed2f8  00 c0 a0 e3                                      mov ip, #0
003ed2fc  01 10 8f e0                                      add r1, pc, r1
003ed300  00 c0 c3 e5                                      strb ip, [r3]
003ed304  0e 20 81 e2                                      add r2, r1, #0xe
003ed308  48 30 8d e2                                      add r3, sp, #0x48
003ed30c  0a 00 a0 e1                                      mov r0, sl
003ed310  14 c0 8d e5                                      str ip, [sp, #0x14]
003ed314  1c f5 fc eb                                      bl #0x32a78c
003ed318  0a 00 a0 e1                                      mov r0, sl
003ed31c  38 11 9d e5                                      ldr r1, [sp, #0x138]
003ed320  34 21 9d e5                                      ldr r2, [sp, #0x134]
003ed324  36 8d fc eb                                      bl #0x310804
003ed328  dc 20 8d e2                                      add r2, sp, #0xdc
003ed32c  24 20 8d e5                                      str r2, [sp, #0x24]
003ed330  14 27 9f e5                                      ldr r2, [pc, #0x714]
003ed334  f4 30 8d e2                                      add r3, sp, #0xf4
003ed338  03 00 a0 e1                                      mov r0, r3
003ed33c  0a 10 a0 e1                                      mov r1, sl
003ed340  02 20 8f e0                                      add r2, pc, r2
003ed344  18 30 8d e5                                      str r3, [sp, #0x18]
003ed348  5f 19 fd eb                                      bl #0x3338cc
003ed34c  1c 10 98 e5                                      ldr r1, [r8, #0x1c]
003ed350  50 20 8d e2                                      add r2, sp, #0x50
003ed354  24 00 9d e5                                      ldr r0, [sp, #0x24]
003ed358  63 9b fc eb                                      bl #0x3140ec
003ed35c  18 30 9d e5                                      ldr r3, [sp, #0x18]
003ed360  c4 90 8d e2                                      add sb, sp, #0xc4
003ed364  09 00 a0 e1                                      mov r0, sb
003ed368  03 10 a0 e1                                      mov r1, r3
003ed36c  24 20 9d e5                                      ldr r2, [sp, #0x24]
003ed370  fc fe ff eb                                      bl #0x3ecf68
003ed374  d4 26 9f e5                                      ldr r2, [pc, #0x6d4]
003ed378  4f 1f 8d e2                                      add r1, sp, #0x13c
003ed37c  2c 10 8d e5                                      str r1, [sp, #0x2c]
003ed380  02 20 8f e0                                      add r2, pc, r2
003ed384  09 10 a0 e1                                      mov r1, sb
003ed388  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
003ed38c  4e 19 fd eb                                      bl #0x3338cc
003ed390  09 00 a0 e1                                      mov r0, sb
003ed394  84 99 fc eb                                      bl #0x3139ac
003ed398  24 00 9d e5                                      ldr r0, [sp, #0x24]
003ed39c  82 99 fc eb                                      bl #0x3139ac
003ed3a0  18 30 9d e5                                      ldr r3, [sp, #0x18]
003ed3a4  03 00 a0 e1                                      mov r0, r3
003ed3a8  7f 99 fc eb                                      bl #0x3139ac
003ed3ac  0a 00 a0 e1                                      mov r0, sl
003ed3b0  7d 99 fc eb                                      bl #0x3139ac
003ed3b4  58 a0 8d e2                                      add sl, sp, #0x58
003ed3b8  28 00 9d e5                                      ldr r0, [sp, #0x28]
003ed3bc  7a 99 fc eb                                      bl #0x3139ac
003ed3c0  0a 00 a0 e1                                      mov r0, sl
003ed3c4  10 10 a0 e3                                      mov r1, #0x10
003ed3c8  68 a0 8d e5                                      str sl, [sp, #0x68]
003ed3cc  6c a0 8d e5                                      str sl, [sp, #0x6c]
003ed3d0  a9 90 fc eb                                      bl #0x31167c
003ed3d4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
003ed3d8  68 30 9d e5                                      ldr r3, [sp, #0x68]
003ed3dc  0a 00 a0 e1                                      mov r0, sl
003ed3e0  00 c0 c3 e5                                      strb ip, [r3]
003ed3e4  50 11 9d e5                                      ldr r1, [sp, #0x150]
003ed3e8  4c 21 9d e5                                      ldr r2, [sp, #0x14c]
003ed3ec  14 c0 8d e5                                      str ip, [sp, #0x14]
003ed3f0  7a 8d fc eb                                      bl #0x3109e0
003ed3f4  0b 30 94 e7                                      ldr r3, [r4, fp]
003ed3f8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
003ed3fc  01 20 a0 e3                                      mov r2, #1
003ed400  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ed404  0c 10 a0 e1                                      mov r1, ip
003ed408  1a 04 fe eb                                      bl #0x36e478
003ed40c  60 36 90 e5                                      ldr r3, [r0, #0x660]
003ed410  03 00 57 e1                                      cmp r7, r3
003ed414  82 01 00 0a                                      beq #0x3eda24
003ed418  08 00 a0 e1                                      mov r0, r8
003ed41c  79 32 00 eb                                      bl #0x3f9e08
003ed420  58 30 90 e5                                      ldr r3, [r0, #0x58]
003ed424  0d 00 53 e3                                      cmp r3, #0xd
003ed428  03 00 00 0a                                      beq #0x3ed43c
003ed42c  d8 40 10 eb                                      bl #0x7fd794
003ed430  05 30 d0 e5                                      ldrb r3, [r0, #5]
003ed434  00 00 53 e3                                      cmp r3, #0
003ed438  61 01 00 0a                                      beq #0x3ed9c4
003ed43c  56 3e 87 e2                                      add r3, r7, #0x560
003ed440  24 30 8d e5                                      str r3, [sp, #0x24]
003ed444  08 36 9f e5                                      ldr r3, [pc, #0x608]
003ed448  ac 80 8d e2                                      add r8, sp, #0xac
003ed44c  03 90 94 e7                                      ldr sb, [r4, r3]
003ed450  09 00 a0 e1                                      mov r0, sb
003ed454  0b 29 fd eb                                      bl #0x337888
003ed458  f8 15 9f e5                                      ldr r1, [pc, #0x5f8]
003ed45c  4c 20 8d e2                                      add r2, sp, #0x4c
003ed460  08 00 a0 e1                                      mov r0, r8
003ed464  01 10 8f e0                                      add r1, pc, r1
003ed468  1f 9b fc eb                                      bl #0x3140ec
003ed46c  08 10 a0 e1                                      mov r1, r8
003ed470  09 00 a0 e1                                      mov r0, sb
003ed474  83 29 fd eb                                      bl #0x337a88
003ed478  08 00 a0 e1                                      mov r0, r8
003ed47c  4a 99 fc eb                                      bl #0x3139ac
003ed480  01 30 a0 e3                                      mov r3, #1
003ed484  20 00 9d e5                                      ldr r0, [sp, #0x20]
003ed488  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003ed48c  00 20 a0 e3                                      mov r2, #0
003ed490  74 49 00 eb                                      bl #0x3ffa68
003ed494  24 00 9d e5                                      ldr r0, [sp, #0x24]
003ed498  df 10 a0 e3                                      mov r1, #0xdf
003ed49c  01 20 a0 e3                                      mov r2, #1
003ed4a0  bc cc ff eb                                      bl #0x3e0798
003ed4a4  b0 35 9f e5                                      ldr r3, [pc, #0x5b0]
003ed4a8  24 00 9d e5                                      ldr r0, [sp, #0x24]
003ed4ac  df 10 a0 e3                                      mov r1, #0xdf
003ed4b0  03 30 94 e7                                      ldr r3, [r4, r3]
003ed4b4  00 20 a0 e3                                      mov r2, #0
003ed4b8  00 30 93 e5                                      ldr r3, [r3]
003ed4bc  24 30 8d e5                                      str r3, [sp, #0x24]
003ed4c0  86 c8 ff eb                                      bl #0x3df6e0
003ed4c4  4b 0f 50 e3                                      cmp r0, #0x12c
003ed4c8  12 01 00 aa                                      bge #0x3ed918
003ed4cc  0a 00 a0 e1                                      mov r0, sl
003ed4d0  35 99 fc eb                                      bl #0x3139ac
003ed4d4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
003ed4d8  33 99 fc eb                                      bl #0x3139ac
003ed4dc  06 00 a0 e1                                      mov r0, r6
003ed4e0  c5 fa ff eb                                      bl #0x3ebffc
003ed4e4  00 00 50 e3                                      cmp r0, #0
003ed4e8  22 ff ff 0a                                      beq #0x3ed178
003ed4ec  a8 40 10 eb                                      bl #0x7fd794
003ed4f0  05 30 d0 e5                                      ldrb r3, [r0, #5]
003ed4f4  00 00 53 e3                                      cmp r3, #0
003ed4f8  13 00 00 0a                                      beq #0x3ed54c
003ed4fc  78 33 97 e5                                      ldr r3, [r7, #0x378]
003ed500  0a 30 d3 e5                                      ldrb r3, [r3, #0xa]
003ed504  00 00 53 e3                                      cmp r3, #0
003ed508  0f 00 00 0a                                      beq #0x3ed54c
003ed50c  2a 77 10 eb                                      bl #0x80b1bc
003ed510  00 80 a0 e1                                      mov r8, r0
003ed514  44 05 9f e5                                      ldr r0, [pc, #0x544]
003ed518  01 10 a0 e3                                      mov r1, #1
003ed51c  08 a1 96 e5                                      ldr sl, [r6, #0x108]
003ed520  00 00 8f e0                                      add r0, pc, r0
003ed524  08 91 d7 e5                                      ldrb sb, [r7, #0x108]
003ed528  45 73 10 eb                                      bl #0x80a244
003ed52c  7a a0 ff e6                                      uxth sl, sl
003ed530  05 30 a0 e3                                      mov r3, #5
003ed534  00 10 a0 e1                                      mov r1, r0
003ed538  54 90 c0 e5                                      strb sb, [r0, #0x54]
003ed53c  50 30 c0 e5                                      strb r3, [r0, #0x50]
003ed540  b2 a5 c0 e1                                      strh sl, [r0, #0x52]
003ed544  08 00 a0 e1                                      mov r0, r8
003ed548  55 83 10 eb                                      bl #0x80e2a4
003ed54c  b6 33 00 e3                                      movw r3, #0x3b6
003ed550  f3 10 96 e1                                      ldrsh r1, [r6, r3]
003ed554  08 35 9f e5                                      ldr r3, [pc, #0x508]
003ed558  64 e1 96 e5                                      ldr lr, [r6, #0x164]
003ed55c  68 81 96 e5                                      ldr r8, [r6, #0x168]
003ed560  03 30 94 e7                                      ldr r3, [r4, r3]
003ed564  60 a1 96 e5                                      ldr sl, [r6, #0x160]
003ed568  bf c4 a0 e3                                      mov ip, #0xbf000000
003ed56c  00 00 93 e5                                      ldr r0, [r3]
003ed570  02 c5 8c e2                                      add ip, ip, #0x800000
003ed574  34 e0 8d e5                                      str lr, [sp, #0x34]
003ed578  30 20 8d e2                                      add r2, sp, #0x30
003ed57c  01 e0 a0 e3                                      mov lr, #1
003ed580  00 30 a0 e3                                      mov r3, #0
003ed584  38 80 8d e5                                      str r8, [sp, #0x38]
003ed588  30 a0 8d e5                                      str sl, [sp, #0x30]
003ed58c  00 e0 8d e5                                      str lr, [sp]
003ed590  08 c0 8d e5                                      str ip, [sp, #8]
003ed594  04 c0 8d e5                                      str ip, [sp, #4]
003ed598  0e f8 fd eb                                      bl #0x36b5d8
003ed59c  c8 83 96 e5                                      ldr r8, [r6, #0x3c8]
003ed5a0  00 00 58 e3                                      cmp r8, #0
003ed5a4  05 00 00 0a                                      beq #0x3ed5c0
003ed5a8  08 00 a0 e1                                      mov r0, r8
003ed5ac  0e ae 02 eb                                      bl #0x498dec
003ed5b0  08 00 a0 e1                                      mov r0, r8
003ed5b4  a1 8b fc eb                                      bl #0x310440
003ed5b8  00 30 a0 e3                                      mov r3, #0
003ed5bc  c8 33 86 e5                                      str r3, [r6, #0x3c8]
003ed5c0  06 00 a0 e1                                      mov r0, r6
003ed5c4  c0 f9 ff eb                                      bl #0x3ebccc
003ed5c8  a4 34 01 e3                                      movw r3, #0x14a4
003ed5cc  03 20 97 e7                                      ldr r2, [r7, r3]
003ed5d0  90 04 9f e5                                      ldr r0, [pc, #0x490]
003ed5d4  02 00 56 e1                                      cmp r6, r2
003ed5d8  00 20 a0 03                                      moveq r2, #0
003ed5dc  03 20 87 07                                      streq r2, [r7, r3]
003ed5e0  00 00 8f e0                                      add r0, pc, r0
003ed5e4  00 80 90 e5                                      ldr r8, [r0]
003ed5e8  01 80 18 e2                                      ands r8, r8, #1
003ed5ec  a0 00 00 0a                                      beq #0x3ed874
003ed5f0  74 34 9f e5                                      ldr r3, [pc, #0x474]
003ed5f4  00 80 a0 e3                                      mov r8, #0
003ed5f8  16 2e 87 e2                                      add r2, r7, #0x160
003ed5fc  03 30 8f e0                                      add r3, pc, r3
003ed600  04 10 93 e5                                      ldr r1, [r3, #4]
003ed604  64 34 9f e5                                      ldr r3, [pc, #0x464]
003ed608  00 80 8d e5                                      str r8, [sp]
003ed60c  03 00 94 e7                                      ldr r0, [r4, r3]
003ed610  08 30 a0 e1                                      mov r3, r8
003ed614  be a1 02 eb                                      bl #0x495d14
003ed618  54 34 9f e5                                      ldr r3, [pc, #0x454]
003ed61c  06 10 a0 e1                                      mov r1, r6
003ed620  03 00 94 e7                                      ldr r0, [r4, r3]
003ed624  82 f5 ff eb                                      bl #0x3eac34
003ed628  0b 30 94 e7                                      ldr r3, [r4, fp]
003ed62c  07 10 a0 e1                                      mov r1, r7
003ed630  08 20 a0 e1                                      mov r2, r8
003ed634  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ed638  1a 06 fe eb                                      bl #0x36eea8
003ed63c  34 34 9f e5                                      ldr r3, [pc, #0x434]
003ed640  78 26 90 e5                                      ldr r2, [r0, #0x678]
003ed644  04 10 a0 e3                                      mov r1, #4
003ed648  03 00 94 e7                                      ldr r0, [r4, r3]
003ed64c  a6 2e fe eb                                      bl #0x3790ec
003ed650  c8 fe ff ea                                      b #0x3ed178
003ed654  ee 3f a0 e3                                      mov r3, #0x3b8
003ed658  f3 30 96 e1                                      ldrsh r3, [r6, r3]
003ed65c  00 00 53 e3                                      cmp r3, #0
003ed660  c4 fe ff ca                                      bgt #0x3ed178
003ed664  e4 fe ff ea                                      b #0x3ed1fc
003ed668  08 00 a0 e1                                      mov r0, r8
003ed66c  03 32 00 eb                                      bl #0x3f9e80
003ed670  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003ed674  03 00 50 e1                                      cmp r0, r3
003ed678  23 00 00 3a                                      blo #0x3ed70c
003ed67c  df 2f 87 e2                                      add r2, r7, #0x37c
003ed680  02 00 a0 e1                                      mov r0, r2
003ed684  1c 20 8d e5                                      str r2, [sp, #0x1c]
003ed688  28 43 00 eb                                      bl #0x3fe330
003ed68c  00 00 50 e3                                      cmp r0, #0
003ed690  f6 fe ff 0a                                      beq #0x3ed270
003ed694  74 80 8d e2                                      add r8, sp, #0x74
003ed698  08 00 a0 e1                                      mov r0, r8
003ed69c  10 10 a0 e3                                      mov r1, #0x10
003ed6a0  84 80 8d e5                                      str r8, [sp, #0x84]
003ed6a4  88 80 8d e5                                      str r8, [sp, #0x88]
003ed6a8  f3 8f fc eb                                      bl #0x31167c
003ed6ac  84 30 9d e5                                      ldr r3, [sp, #0x84]
003ed6b0  00 20 a0 e3                                      mov r2, #0
003ed6b4  c0 13 9f e5                                      ldr r1, [pc, #0x3c0]
003ed6b8  00 20 c3 e5                                      strb r2, [r3]
003ed6bc  bc 23 9f e5                                      ldr r2, [pc, #0x3bc]
003ed6c0  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
003ed6c4  01 10 8f e0                                      add r1, pc, r1
003ed6c8  02 20 8f e0                                      add r2, pc, r2
003ed6cc  34 a0 9a e5                                      ldr sl, [sl, #0x34]
003ed6d0  41 5d 03 eb                                      bl #0x4c4bdc
003ed6d4  00 10 a0 e1                                      mov r1, r0
003ed6d8  0a 00 a0 e1                                      mov r0, sl
003ed6dc  fe 6d 04 eb                                      bl #0x508edc
003ed6e0  00 a0 a0 e1                                      mov sl, r0
003ed6e4  da 81 fc eb                                      bl #0x30de54
003ed6e8  0a 10 a0 e1                                      mov r1, sl
003ed6ec  00 20 8a e0                                      add r2, sl, r0
003ed6f0  08 00 a0 e1                                      mov r0, r8
003ed6f4  b9 8c fc eb                                      bl #0x3109e0
003ed6f8  08 00 a0 e1                                      mov r0, r8
003ed6fc  3d fe ff eb                                      bl #0x3ecff8
003ed700  08 00 a0 e1                                      mov r0, r8
003ed704  a8 98 fc eb                                      bl #0x3139ac
003ed708  73 ff ff ea                                      b #0x3ed4dc
003ed70c  55 9f 8d e2                                      add sb, sp, #0x154
003ed710  09 00 a0 e1                                      mov r0, sb
003ed714  10 10 a0 e3                                      mov r1, #0x10
003ed718  64 91 8d e5                                      str sb, [sp, #0x164]
003ed71c  68 91 8d e5                                      str sb, [sp, #0x168]
003ed720  d5 8f fc eb                                      bl #0x31167c
003ed724  64 31 9d e5                                      ldr r3, [sp, #0x164]
003ed728  00 20 a0 e3                                      mov r2, #0
003ed72c  50 13 9f e5                                      ldr r1, [pc, #0x350]
003ed730  00 20 c3 e5                                      strb r2, [r3]
003ed734  4c 23 9f e5                                      ldr r2, [pc, #0x34c]
003ed738  34 30 9a e5                                      ldr r3, [sl, #0x34]
003ed73c  01 10 8f e0                                      add r1, pc, r1
003ed740  02 20 8f e0                                      add r2, pc, r2
003ed744  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
003ed748  18 30 8d e5                                      str r3, [sp, #0x18]
003ed74c  22 5d 03 eb                                      bl #0x4c4bdc
003ed750  18 30 9d e5                                      ldr r3, [sp, #0x18]
003ed754  00 10 a0 e1                                      mov r1, r0
003ed758  03 00 a0 e1                                      mov r0, r3
003ed75c  de 6d 04 eb                                      bl #0x508edc
003ed760  d8 32 9f e5                                      ldr r3, [pc, #0x2d8]
003ed764  1c 00 8d e5                                      str r0, [sp, #0x1c]
003ed768  08 00 a0 e1                                      mov r0, r8
003ed76c  03 30 94 e7                                      ldr r3, [r4, r3]
003ed770  00 30 93 e5                                      ldr r3, [r3]
003ed774  28 30 8d e5                                      str r3, [sp, #0x28]
003ed778  d3 33 00 eb                                      bl #0x3fa6cc
003ed77c  08 10 a0 e1                                      mov r1, r8
003ed780  24 00 8d e5                                      str r0, [sp, #0x24]
003ed784  01 20 a0 e3                                      mov r2, #1
003ed788  07 00 a0 e1                                      mov r0, r7
003ed78c  aa dc fe eb                                      bl #0x3a4a3c
003ed790  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003ed794  00 c0 a0 e1                                      mov ip, r0
003ed798  00 00 51 e3                                      cmp r1, #0
003ed79c  15 00 00 0a                                      beq #0x3ed7f8
003ed7a0  24 20 9d e5                                      ldr r2, [sp, #0x24]
003ed7a4  28 10 9d e5                                      ldr r1, [sp, #0x28]
003ed7a8  0c 30 a0 e3                                      mov r3, #0xc
003ed7ac  93 12 23 e0                                      mla r3, r3, r2, r1
003ed7b0  d4 12 9f e5                                      ldr r1, [pc, #0x2d4]
003ed7b4  08 20 93 e5                                      ldr r2, [r3, #8]
003ed7b8  5b 3f 8d e2                                      add r3, sp, #0x16c
003ed7bc  01 10 8f e0                                      add r1, pc, r1
003ed7c0  ff 24 c2 e3                                      bic r2, r2, #0xff000000
003ed7c4  03 00 a0 e1                                      mov r0, r3
003ed7c8  18 30 8d e5                                      str r3, [sp, #0x18]
003ed7cc  14 c0 8d e5                                      str ip, [sp, #0x14]
003ed7d0  c3 84 fc eb                                      bl #0x30eae4
003ed7d4  1c e0 98 e5                                      ldr lr, [r8, #0x1c]
003ed7d8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
003ed7dc  34 00 9a e5                                      ldr r0, [sl, #0x34]
003ed7e0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003ed7e4  18 30 9d e5                                      ldr r3, [sp, #0x18]
003ed7e8  09 10 a0 e1                                      mov r1, sb
003ed7ec  00 e0 8d e5                                      str lr, [sp]
003ed7f0  04 c0 8d e5                                      str ip, [sp, #4]
003ed7f4  be 6d 04 eb                                      bl #0x508ef4
003ed7f8  90 80 8d e2                                      add r8, sp, #0x90
003ed7fc  08 00 a0 e1                                      mov r0, r8
003ed800  10 10 a0 e3                                      mov r1, #0x10
003ed804  a0 80 8d e5                                      str r8, [sp, #0xa0]
003ed808  a4 80 8d e5                                      str r8, [sp, #0xa4]
003ed80c  9a 8f fc eb                                      bl #0x31167c
003ed810  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
003ed814  00 a0 a0 e3                                      mov sl, #0
003ed818  08 00 a0 e1                                      mov r0, r8
003ed81c  00 a0 c3 e5                                      strb sl, [r3]
003ed820  68 11 9d e5                                      ldr r1, [sp, #0x168]
003ed824  64 21 9d e5                                      ldr r2, [sp, #0x164]
003ed828  6c 8c fc eb                                      bl #0x3109e0
003ed82c  08 00 a0 e1                                      mov r0, r8
003ed830  f0 fd ff eb                                      bl #0x3ecff8
003ed834  01 c0 a0 e3                                      mov ip, #1
003ed838  0a 30 a0 e1                                      mov r3, sl
003ed83c  0a 10 a0 e1                                      mov r1, sl
003ed840  df 2f 87 e2                                      add r2, r7, #0x37c
003ed844  20 00 9d e5                                      ldr r0, [sp, #0x20]
003ed848  00 c0 8d e5                                      str ip, [sp]
003ed84c  7c 48 00 eb                                      bl #0x3ffa44
003ed850  0a 20 a0 e1                                      mov r2, sl
003ed854  00 10 a0 e1                                      mov r1, r0
003ed858  07 00 a0 e1                                      mov r0, r7
003ed85c  e2 dc fe eb                                      bl #0x3a4bec
003ed860  08 00 a0 e1                                      mov r0, r8
003ed864  50 98 fc eb                                      bl #0x3139ac
003ed868  09 00 a0 e1                                      mov r0, sb
003ed86c  4e 98 fc eb                                      bl #0x3139ac
003ed870  19 ff ff ea                                      b #0x3ed4dc
003ed874  bc 83 fc eb                                      bl #0x30e76c
003ed878  00 00 50 e3                                      cmp r0, #0
003ed87c  5b ff ff 0a                                      beq #0x3ed5f0
003ed880  08 32 9f e5                                      ldr r3, [pc, #0x208]
003ed884  03 30 94 e7                                      ldr r3, [r4, r3]
003ed888  00 a0 93 e5                                      ldr sl, [r3]
003ed88c  00 00 5a e3                                      cmp sl, #0
003ed890  1e 00 00 0a                                      beq #0x3ed910
003ed894  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
003ed898  f8 91 9f e5                                      ldr sb, [pc, #0x1f8]
003ed89c  20 70 8d e5                                      str r7, [sp, #0x20]
003ed8a0  03 30 94 e7                                      ldr r3, [r4, r3]
003ed8a4  09 90 8f e0                                      add sb, pc, sb
003ed8a8  00 30 93 e5                                      ldr r3, [r3]
003ed8ac  03 70 a0 e1                                      mov r7, r3
003ed8b0  02 00 00 ea                                      b #0x3ed8c0
003ed8b4  01 80 88 e2                                      add r8, r8, #1
003ed8b8  0a 00 58 e1                                      cmp r8, sl
003ed8bc  12 00 00 0a                                      beq #0x3ed90c
003ed8c0  09 00 a0 e1                                      mov r0, sb
003ed8c4  08 11 97 e7                                      ldr r1, [r7, r8, lsl #2]
003ed8c8  93 82 fc eb                                      bl #0x30e31c
003ed8cc  00 00 50 e3                                      cmp r0, #0
003ed8d0  f7 ff ff 1a                                      bne #0x3ed8b4
003ed8d4  20 70 9d e5                                      ldr r7, [sp, #0x20]
003ed8d8  bc 01 9f e5                                      ldr r0, [pc, #0x1bc]
003ed8dc  00 00 8f e0                                      add r0, pc, r0
003ed8e0  04 80 80 e5                                      str r8, [r0, #4]
003ed8e4  54 84 fc eb                                      bl #0x30ea3c
003ed8e8  40 ff ff ea                                      b #0x3ed5f0
003ed8ec  87 82 fc eb                                      bl #0x30e310
003ed8f0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003ed8f4  65 3b 00 eb                                      bl #0x3fc690
003ed8f8  a8 33 d7 e5                                      ldrb r3, [r7, #0x3a8]
003ed8fc  73 30 af e6                                      sxtb r3, r3
003ed900  03 00 50 e1                                      cmp r0, r3
003ed904  f4 fe ff aa                                      bge #0x3ed4dc
003ed908  5a fe ff ea                                      b #0x3ed278
003ed90c  20 70 9d e5                                      ldr r7, [sp, #0x20]
003ed910  00 80 e0 e3                                      mvn r8, #0
003ed914  ef ff ff ea                                      b #0x3ed8d8
003ed918  00 30 97 e5                                      ldr r3, [r7]
003ed91c  07 00 a0 e1                                      mov r0, r7
003ed920  0f e0 a0 e1                                      mov lr, pc
003ed924  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003ed928  00 00 50 e3                                      cmp r0, #0
003ed92c  e6 fe ff 0a                                      beq #0x3ed4cc
003ed930  0b 30 94 e7                                      ldr r3, [r4, fp]
003ed934  07 10 a0 e1                                      mov r1, r7
003ed938  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ed93c  ae 05 fe eb                                      bl #0x36effc
003ed940  00 00 50 e3                                      cmp r0, #0
003ed944  e0 fe ff 0a                                      beq #0x3ed4cc
003ed948  50 31 9f e5                                      ldr r3, [pc, #0x150]
003ed94c  03 30 94 e7                                      ldr r3, [r4, r3]
003ed950  00 90 93 e5                                      ldr sb, [r3]
003ed954  00 00 59 e3                                      cmp sb, #0
003ed958  17 00 00 0a                                      beq #0x3ed9bc
003ed95c  40 31 9f e5                                      ldr r3, [pc, #0x140]
003ed960  40 21 9f e5                                      ldr r2, [pc, #0x140]
003ed964  1c 70 8d e5                                      str r7, [sp, #0x1c]
003ed968  03 30 94 e7                                      ldr r3, [r4, r3]
003ed96c  02 20 8f e0                                      add r2, pc, r2
003ed970  00 80 a0 e3                                      mov r8, #0
003ed974  00 30 93 e5                                      ldr r3, [r3]
003ed978  20 20 8d e5                                      str r2, [sp, #0x20]
003ed97c  03 70 a0 e1                                      mov r7, r3
003ed980  02 00 00 ea                                      b #0x3ed990
003ed984  01 80 88 e2                                      add r8, r8, #1
003ed988  09 00 58 e1                                      cmp r8, sb
003ed98c  09 00 00 0a                                      beq #0x3ed9b8
003ed990  20 00 9d e5                                      ldr r0, [sp, #0x20]
003ed994  08 11 97 e7                                      ldr r1, [r7, r8, lsl #2]
003ed998  5f 82 fc eb                                      bl #0x30e31c
003ed99c  00 00 50 e3                                      cmp r0, #0
003ed9a0  f7 ff ff 1a                                      bne #0x3ed984
003ed9a4  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
003ed9a8  08 10 a0 e1                                      mov r1, r8
003ed9ac  24 00 9d e5                                      ldr r0, [sp, #0x24]
003ed9b0  80 4e fe eb                                      bl #0x3813b8
003ed9b4  c4 fe ff ea                                      b #0x3ed4cc
003ed9b8  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
003ed9bc  00 10 e0 e3                                      mvn r1, #0
003ed9c0  f9 ff ff ea                                      b #0x3ed9ac
003ed9c4  07 00 a0 e1                                      mov r0, r7
003ed9c8  c5 37 ff eb                                      bl #0x3bb8e4
003ed9cc  00 90 50 e2                                      subs sb, r0, #0
003ed9d0  99 fe ff 1a                                      bne #0x3ed43c
003ed9d4  0b 30 94 e7                                      ldr r3, [r4, fp]
003ed9d8  4c 30 93 e5                                      ldr r3, [r3, #0x4c]
003ed9dc  2a 30 d3 e5                                      ldrb r3, [r3, #0x2a]
003ed9e0  00 00 53 e3                                      cmp r3, #0
003ed9e4  94 fe ff 0a                                      beq #0x3ed43c
003ed9e8  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003ed9ec  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
003ed9f0  01 20 a0 e3                                      mov r2, #1
003ed9f4  03 80 94 e7                                      ldr r8, [r4, r3]
003ed9f8  01 10 8f e0                                      add r1, pc, r1
003ed9fc  08 00 a0 e1                                      mov r0, r8
003eda00  fa ad 01 eb                                      bl #0x4591f0
003eda04  01 00 70 e3                                      cmn r0, #1
003eda08  00 10 a0 e1                                      mov r1, r0
003eda0c  8a fe ff 0a                                      beq #0x3ed43c
003eda10  08 00 a0 e1                                      mov r0, r8
003eda14  09 30 a0 e1                                      mov r3, sb
003eda18  00 20 e0 e3                                      mvn r2, #0
003eda1c  e7 ca 01 eb                                      bl #0x4605c0
003eda20  85 fe ff ea                                      b #0x3ed43c
003eda24  0a 00 a0 e1                                      mov r0, sl
003eda28  72 fd ff eb                                      bl #0x3ecff8
003eda2c  79 fe ff ea                                      b #0x3ed418
; mapping-symbol data/literal pool
003eda30  3c 79 5a 00 ac 40 00 00 f4 37 00 00 a8 90 4d 00  .byte 0x3c, 0x79, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa8, 0x90, 0x4d, 0x00
003eda40  44 12 00 00 00 91 4d 00 34 90 4d 00 00 90 4d 00  .byte 0x44, 0x12, 0x00, 0x00, 0x00, 0x91, 0x4d, 0x00, 0x34, 0x90, 0x4d, 0x00, 0x00, 0x90, 0x4d, 0x00
003eda50  c8 8f 4d 00 84 08 00 00 0c 8f 4d 00 70 1d 00 00  .byte 0xc8, 0x8f, 0x4d, 0x00, 0x84, 0x08, 0x00, 0x00, 0x0c, 0x8f, 0x4d, 0x00, 0x70, 0x1d, 0x00, 0x00
003eda60  e8 19 4d 00 a4 0d 00 00 b0 5a 5b 00 94 5a 5b 00  .byte 0xe8, 0x19, 0x4d, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xb0, 0x5a, 0x5b, 0x00, 0x94, 0x5a, 0x5b, 0x00
003eda70  08 1b 00 00 2c 0e 00 00 14 27 00 00 64 15 4d 00  .byte 0x08, 0x1b, 0x00, 0x00, 0x2c, 0x0e, 0x00, 0x00, 0x14, 0x27, 0x00, 0x00, 0x64, 0x15, 0x4d, 0x00
003eda80  48 8c 4d 00 ec 14 4d 00 b0 8b 4d 00 4c 8b 4d 00  .byte 0x48, 0x8c, 0x4d, 0x00, 0xec, 0x14, 0x4d, 0x00, 0xb0, 0x8b, 0x4d, 0x00, 0x4c, 0x8b, 0x4d, 0x00
003eda90  c4 06 00 00 94 12 00 00 fc 8a 4d 00 b4 57 5b 00  .byte 0xc4, 0x06, 0x00, 0x00, 0x94, 0x12, 0x00, 0x00, 0xfc, 0x8a, 0x4d, 0x00, 0xb4, 0x57, 0x5b, 0x00
003edaa0  fc 0e 00 00 2c 10 00 00 1c 8a 4d 00 20 1a 00 00  .byte 0xfc, 0x0e, 0x00, 0x00, 0x2c, 0x10, 0x00, 0x00, 0x1c, 0x8a, 0x4d, 0x00, 0x20, 0x1a, 0x00, 0x00
003edab0  58 89 4d 00                                      .byte 0x58, 0x89, 0x4d, 0x00
