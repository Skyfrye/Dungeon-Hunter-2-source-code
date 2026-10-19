; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039cb2c, declared_size=72, range_size=72, mode=arm
; class-group: ProjectileTrap
; alias: _ZNK14ProjectileTrap9GetScriptEv
; demangled: ProjectileTrap::GetScript() const
; decoder-mode: arm
0039cb2c  c0 23 90 e5                                      ldr r2, [r0, #0x3c0]
0039cb30  30 30 9f e5                                      ldr r3, [pc, #0x30]
0039cb34  01 00 72 e3                                      cmn r2, #1
0039cb38  03 30 8f e0                                      add r3, pc, r3
0039cb3c  06 00 00 0a                                      beq #0x39cb5c
0039cb40  24 10 9f e5                                      ldr r1, [pc, #0x24]
0039cb44  01 30 93 e7                                      ldr r3, [r3, r1]
0039cb48  28 10 a0 e3                                      mov r1, #0x28
0039cb4c  00 30 93 e5                                      ldr r3, [r3]
0039cb50  91 32 22 e0                                      mla r2, r1, r2, r3
0039cb54  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
0039cb58  1e ff 2f e1                                      bx lr
0039cb5c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0039cb60  00 00 8f e0                                      add r0, pc, r0
0039cb64  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039cb68  58 7f 5f 00 70 33 00 00 a8 ec 52 00              .byte 0x58, 0x7f, 0x5f, 0x00, 0x70, 0x33, 0x00, 0x00, 0xa8, 0xec, 0x52, 0x00

; FUNCTION 0x0039cb74, declared_size=56, range_size=56, mode=arm
; class-group: ProjectileTrap
; alias: _ZNK14ProjectileTrap9GetVisualEv
; demangled: ProjectileTrap::GetVisual() const
; decoder-mode: arm
0039cb74  c0 03 90 e5                                      ldr r0, [r0, #0x3c0]
0039cb78  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039cb7c  01 00 70 e3                                      cmn r0, #1
0039cb80  03 30 8f e0                                      add r3, pc, r3
0039cb84  1e ff 2f 01                                      bxeq lr
0039cb88  18 20 9f e5                                      ldr r2, [pc, #0x18]
0039cb8c  02 30 93 e7                                      ldr r3, [r3, r2]
0039cb90  28 20 a0 e3                                      mov r2, #0x28
0039cb94  00 30 93 e5                                      ldr r3, [r3]
0039cb98  92 30 20 e0                                      mla r0, r2, r0, r3
0039cb9c  24 00 90 e5                                      ldr r0, [r0, #0x24]
0039cba0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039cba4  10 7f 5f 00 70 33 00 00                          .byte 0x10, 0x7f, 0x5f, 0x00, 0x70, 0x33, 0x00, 0x00

; FUNCTION 0x0039cbac, declared_size=56, range_size=56, mode=arm
; class-group: ProjectileTrap
; alias: _ZNK14ProjectileTrap12GetDamagerIdEv
; demangled: ProjectileTrap::GetDamagerId() const
; decoder-mode: arm
0039cbac  c0 03 90 e5                                      ldr r0, [r0, #0x3c0]
0039cbb0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039cbb4  01 00 70 e3                                      cmn r0, #1
0039cbb8  03 30 8f e0                                      add r3, pc, r3
0039cbbc  1e ff 2f 01                                      bxeq lr
0039cbc0  18 20 9f e5                                      ldr r2, [pc, #0x18]
0039cbc4  02 30 93 e7                                      ldr r3, [r3, r2]
0039cbc8  28 20 a0 e3                                      mov r2, #0x28
0039cbcc  00 30 93 e5                                      ldr r3, [r3]
0039cbd0  92 30 20 e0                                      mla r0, r2, r0, r3
0039cbd4  04 00 90 e5                                      ldr r0, [r0, #4]
0039cbd8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039cbdc  d8 7e 5f 00 70 33 00 00                          .byte 0xd8, 0x7e, 0x5f, 0x00, 0x70, 0x33, 0x00, 0x00

; FUNCTION 0x0039cbe4, declared_size=80, range_size=80, mode=arm
; class-group: ProjectileTrap
; alias: _ZNK14ProjectileTrap13GetHurtChanceEv
; demangled: ProjectileTrap::GetHurtChance() const
; decoder-mode: arm
0039cbe4  fc 23 90 e5                                      ldr r2, [r0, #0x3fc]
0039cbe8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0039cbec  01 00 72 e3                                      cmn r2, #1
0039cbf0  03 30 8f e0                                      add r3, pc, r3
0039cbf4  01 00 00 0a                                      beq #0x39cc00
0039cbf8  02 00 a0 e1                                      mov r0, r2
0039cbfc  1e ff 2f e1                                      bx lr
0039cc00  c0 13 90 e5                                      ldr r1, [r0, #0x3c0]
0039cc04  01 00 71 e3                                      cmn r1, #1
0039cc08  fa ff ff 0a                                      beq #0x39cbf8
0039cc0c  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0039cc10  02 30 93 e7                                      ldr r3, [r3, r2]
0039cc14  28 20 a0 e3                                      mov r2, #0x28
0039cc18  00 30 93 e5                                      ldr r3, [r3]
0039cc1c  92 31 21 e0                                      mla r1, r2, r1, r3
0039cc20  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0039cc24  02 00 a0 e1                                      mov r0, r2
0039cc28  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039cc2c  a0 7e 5f 00 70 33 00 00                          .byte 0xa0, 0x7e, 0x5f, 0x00, 0x70, 0x33, 0x00, 0x00

; FUNCTION 0x0039cc34, declared_size=56, range_size=56, mode=arm
; class-group: ProjectileTrap
; alias: _ZNK14ProjectileTrap8GetSoundEv
; demangled: ProjectileTrap::GetSound() const
; decoder-mode: arm
0039cc34  c0 03 90 e5                                      ldr r0, [r0, #0x3c0]
0039cc38  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039cc3c  01 00 70 e3                                      cmn r0, #1
0039cc40  03 30 8f e0                                      add r3, pc, r3
0039cc44  1e ff 2f 01                                      bxeq lr
0039cc48  18 20 9f e5                                      ldr r2, [pc, #0x18]
0039cc4c  02 30 93 e7                                      ldr r3, [r3, r2]
0039cc50  28 20 a0 e3                                      mov r2, #0x28
0039cc54  00 30 93 e5                                      ldr r3, [r3]
0039cc58  92 30 20 e0                                      mla r0, r2, r0, r3
0039cc5c  20 00 90 e5                                      ldr r0, [r0, #0x20]
0039cc60  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039cc64  50 7e 5f 00 70 33 00 00                          .byte 0x50, 0x7e, 0x5f, 0x00, 0x70, 0x33, 0x00, 0x00

; FUNCTION 0x0039cc6c, declared_size=60, range_size=60, mode=arm
; class-group: ProjectileTrap
; alias: _ZNK14ProjectileTrap8GetDelayEv
; demangled: ProjectileTrap::GetDelay() const
; decoder-mode: arm
0039cc6c  c0 23 90 e5                                      ldr r2, [r0, #0x3c0]
0039cc70  28 30 9f e5                                      ldr r3, [pc, #0x28]
0039cc74  01 00 72 e3                                      cmn r2, #1
0039cc78  03 30 8f e0                                      add r3, pc, r3
0039cc7c  00 00 a0 03                                      moveq r0, #0
0039cc80  1e ff 2f 01                                      bxeq lr
0039cc84  18 10 9f e5                                      ldr r1, [pc, #0x18]
0039cc88  01 30 93 e7                                      ldr r3, [r3, r1]
0039cc8c  28 10 a0 e3                                      mov r1, #0x28
0039cc90  00 30 93 e5                                      ldr r3, [r3]
0039cc94  91 32 22 e0                                      mla r2, r1, r2, r3
0039cc98  08 00 92 e5                                      ldr r0, [r2, #8]
0039cc9c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039cca0  18 7e 5f 00 70 33 00 00                          .byte 0x18, 0x7e, 0x5f, 0x00, 0x70, 0x33, 0x00, 0x00

; FUNCTION 0x0039cca8, declared_size=284, range_size=284, mode=arm
; class-group: ProjectileTrap
; alias: _ZN14ProjectileTrap17_HandleProjectileEP10ProjectilePv
; demangled: ProjectileTrap::_HandleProjectile(Projectile*, void*)
; decoder-mode: arm
0039cca8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0039ccac  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0039ccb0  00 40 50 e2                                      subs r4, r0, #0
0039ccb4  44 d0 4d e2                                      sub sp, sp, #0x44
0039ccb8  03 30 8f e0                                      add r3, pc, r3
0039ccbc  25 00 00 0a                                      beq #0x39cd58
0039ccc0  cc 13 94 e5                                      ldr r1, [r4, #0x3cc]
0039ccc4  80 43 94 e5                                      ldr r4, [r4, #0x380]
0039ccc8  00 00 51 e3                                      cmp r1, #0
0039cccc  1e 00 00 0a                                      beq #0x39cd4c
0039ccd0  34 50 8d e2                                      add r5, sp, #0x34
0039ccd4  05 00 a0 e1                                      mov r0, r5
0039ccd8  13 84 fe eb                                      bl #0x33dd2c
0039ccdc  05 00 a0 e1                                      mov r0, r5
0039cce0  9b 8c fe eb                                      bl #0x33ff54
0039cce4  00 00 50 e3                                      cmp r0, #0
0039cce8  00 50 a0 e1                                      mov r5, r0
0039ccec  16 00 00 0a                                      beq #0x39cd4c
0039ccf0  00 30 94 e5                                      ldr r3, [r4]
0039ccf4  04 00 a0 e1                                      mov r0, r4
0039ccf8  0f e0 a0 e1                                      mov lr, pc
0039ccfc  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0039cd00  00 30 94 e5                                      ldr r3, [r4]
0039cd04  00 70 a0 e1                                      mov r7, r0
0039cd08  04 00 a0 e1                                      mov r0, r4
0039cd0c  0f e0 a0 e1                                      mov lr, pc
0039cd10  e8 f0 93 e5                                      ldr pc, [r3, #0xe8]
0039cd14  0c 60 8d e2                                      add r6, sp, #0xc
0039cd18  00 00 8d e5                                      str r0, [sp]
0039cd1c  07 30 a0 e1                                      mov r3, r7
0039cd20  06 00 a0 e1                                      mov r0, r6
0039cd24  04 10 a0 e1                                      mov r1, r4
0039cd28  05 20 a0 e1                                      mov r2, r5
0039cd2c  3a 4e 00 eb                                      bl #0x3b061c
0039cd30  06 00 a0 e1                                      mov r0, r6
0039cd34  04 10 a0 e1                                      mov r1, r4
0039cd38  05 20 a0 e1                                      mov r2, r5
0039cd3c  00 30 a0 e3                                      mov r3, #0
0039cd40  1c 4d 00 eb                                      bl #0x3b01b8
0039cd44  00 00 a0 e3                                      mov r0, #0
0039cd48  00 00 00 ea                                      b #0x39cd50
0039cd4c  01 00 a0 e3                                      mov r0, #1
0039cd50  44 d0 8d e2                                      add sp, sp, #0x44
0039cd54  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0039cd58  50 20 9f e5                                      ldr r2, [pc, #0x50]
0039cd5c  02 20 93 e7                                      ldr r2, [r3, r2]
0039cd60  00 20 92 e5                                      ldr r2, [r2]
0039cd64  02 00 52 e3                                      cmp r2, #2
0039cd68  00 40 84 05                                      streq r4, [r4]
0039cd6c  d3 ff ff 0a                                      beq #0x39ccc0
0039cd70  01 00 52 e3                                      cmp r2, #1
0039cd74  d1 ff ff 1a                                      bne #0x39ccc0
0039cd78  34 00 9f e5                                      ldr r0, [pc, #0x34]
0039cd7c  34 10 9f e5                                      ldr r1, [pc, #0x34]
0039cd80  34 20 9f e5                                      ldr r2, [pc, #0x34]
0039cd84  00 00 93 e7                                      ldr r0, [r3, r0]
0039cd88  30 30 9f e5                                      ldr r3, [pc, #0x30]
0039cd8c  e9 c0 a0 e3                                      mov ip, #0xe9
0039cd90  01 10 8f e0                                      add r1, pc, r1
0039cd94  02 20 8f e0                                      add r2, pc, r2
0039cd98  03 30 8f e0                                      add r3, pc, r3
0039cd9c  a8 00 80 e2                                      add r0, r0, #0xa8
0039cda0  00 c0 8d e5                                      str ip, [sp]
0039cda4  96 c4 fd eb                                      bl #0x30e004
0039cda8  c4 ff ff ea                                      b #0x39ccc0
; mapping-symbol data/literal pool
0039cdac  d8 7d 5f 00 c0 39 00 00 c0 19 00 00 48 16 52 00  .byte 0xd8, 0x7d, 0x5f, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x48, 0x16, 0x52, 0x00
0039cdbc  b4 c3 52 00 10 60 52 00                          .byte 0xb4, 0xc3, 0x52, 0x00, 0x10, 0x60, 0x52, 0x00

; FUNCTION 0x0039cdc4, declared_size=340, range_size=340, mode=arm
; class-group: ProjectileTrap
; alias: _ZN14ProjectileTrap14SpecificUpdateEv
; demangled: ProjectileTrap::SpecificUpdate()
; decoder-mode: arm
0039cdc4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0039cdc8  0c 34 d0 e5                                      ldrb r3, [r0, #0x40c]
0039cdcc  30 51 9f e5                                      ldr r5, [pc, #0x130]
0039cdd0  24 d0 4d e2                                      sub sp, sp, #0x24
0039cdd4  00 00 53 e3                                      cmp r3, #0
0039cdd8  00 40 a0 e1                                      mov r4, r0
0039cddc  05 50 8f e0                                      add r5, pc, r5
0039cde0  0d 00 00 0a                                      beq #0x39ce1c
0039cde4  c0 33 90 e5                                      ldr r3, [r0, #0x3c0]
0039cde8  00 00 53 e3                                      cmp r3, #0
0039cdec  07 00 00 ba                                      blt #0x39ce10
0039cdf0  10 31 9f e5                                      ldr r3, [pc, #0x110]
0039cdf4  04 64 90 e5                                      ldr r6, [r0, #0x404]
0039cdf8  03 00 95 e7                                      ldr r0, [r5, r3]
0039cdfc  1a 0a fe eb                                      bl #0x31f66c
0039ce00  06 00 60 e0                                      rsb r0, r0, r6
0039ce04  00 00 50 e3                                      cmp r0, #0
0039ce08  04 04 84 e5                                      str r0, [r4, #0x404]
0039ce0c  07 00 00 da                                      ble #0x39ce30
0039ce10  c4 83 d4 e5                                      ldrb r8, [r4, #0x3c4]
0039ce14  00 00 58 e3                                      cmp r8, #0
0039ce18  01 00 00 1a                                      bne #0x39ce24
0039ce1c  24 d0 8d e2                                      add sp, sp, #0x24
0039ce20  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0039ce24  04 00 a0 e1                                      mov r0, r4
0039ce28  ce 08 00 eb                                      bl #0x39f168
0039ce2c  fa ff ff ea                                      b #0x39ce1c
0039ce30  c4 83 d4 e5                                      ldrb r8, [r4, #0x3c4]
0039ce34  00 00 58 e3                                      cmp r8, #0
0039ce38  00 30 a0 13                                      movne r3, #0
0039ce3c  04 34 84 15                                      strne r3, [r4, #0x404]
0039ce40  f3 ff ff 1a                                      bne #0x39ce14
0039ce44  c0 33 94 e5                                      ldr r3, [r4, #0x3c0]
0039ce48  00 00 53 e3                                      cmp r3, #0
0039ce4c  17 00 00 ba                                      blt #0x39ceb0
0039ce50  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0039ce54  00 30 94 e5                                      ldr r3, [r4]
0039ce58  04 00 a0 e1                                      mov r0, r4
0039ce5c  02 20 95 e7                                      ldr r2, [r5, r2]
0039ce60  00 a0 92 e5                                      ldr sl, [r2]
0039ce64  0f e0 a0 e1                                      mov lr, pc
0039ce68  ec f0 93 e5                                      ldr pc, [r3, #0xec]
0039ce6c  68 e1 94 e5                                      ldr lr, [r4, #0x168]
0039ce70  64 61 94 e5                                      ldr r6, [r4, #0x164]
0039ce74  60 71 94 e5                                      ldr r7, [r4, #0x160]
0039ce78  bf c4 a0 e3                                      mov ip, #0xbf000000
0039ce7c  02 c5 8c e2                                      add ip, ip, #0x800000
0039ce80  00 10 a0 e1                                      mov r1, r0
0039ce84  1c e0 8d e5                                      str lr, [sp, #0x1c]
0039ce88  0a 00 a0 e1                                      mov r0, sl
0039ce8c  01 e0 a0 e3                                      mov lr, #1
0039ce90  08 30 a0 e1                                      mov r3, r8
0039ce94  14 20 8d e2                                      add r2, sp, #0x14
0039ce98  14 70 8d e5                                      str r7, [sp, #0x14]
0039ce9c  18 60 8d e5                                      str r6, [sp, #0x18]
0039cea0  00 e0 8d e5                                      str lr, [sp]
0039cea4  08 c0 8d e5                                      str ip, [sp, #8]
0039cea8  04 c0 8d e5                                      str ip, [sp, #4]
0039ceac  c9 39 ff eb                                      bl #0x36b5d8
0039ceb0  00 30 94 e5                                      ldr r3, [r4]
0039ceb4  04 00 a0 e1                                      mov r0, r4
0039ceb8  0f e0 a0 e1                                      mov lr, pc
0039cebc  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
0039cec0  48 20 9f e5                                      ldr r2, [pc, #0x48]
0039cec4  48 30 9f e5                                      ldr r3, [pc, #0x48]
0039cec8  00 c0 a0 e3                                      mov ip, #0
0039cecc  02 e0 95 e7                                      ldr lr, [r5, r2]
0039ced0  03 30 95 e7                                      ldr r3, [r5, r3]
0039ced4  04 04 84 e5                                      str r0, [r4, #0x404]
0039ced8  08 14 94 e5                                      ldr r1, [r4, #0x408]
0039cedc  03 00 a0 e1                                      mov r0, r3
0039cee0  04 e0 8d e5                                      str lr, [sp, #4]
0039cee4  0c 30 a0 e1                                      mov r3, ip
0039cee8  01 e0 a0 e3                                      mov lr, #1
0039ceec  04 20 a0 e1                                      mov r2, r4
0039cef0  0c e0 8d e5                                      str lr, [sp, #0xc]
0039cef4  00 c0 8d e5                                      str ip, [sp]
0039cef8  08 c0 8d e5                                      str ip, [sp, #8]
0039cefc  46 28 01 eb                                      bl #0x3e701c
0039cf00  c2 ff ff ea                                      b #0x39ce10
; mapping-symbol data/literal pool
0039cf04  b4 7c 5f 00 f4 37 00 00 a4 0d 00 00 dc 3d 00 00  .byte 0xb4, 0x7c, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xdc, 0x3d, 0x00, 0x00
0039cf14  4c 08 00 00                                      .byte 0x4c, 0x08, 0x00, 0x00

; FUNCTION 0x0039cf18, declared_size=480, range_size=480, mode=arm
; class-group: ProjectileTrap
; alias: _ZN14ProjectileTrap6CreateEP10GameObjectii
; demangled: ProjectileTrap::Create(GameObject*, int, int)
; decoder-mode: arm
0039cf18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0039cf1c  a4 41 9f e5                                      ldr r4, [pc, #0x1a4]
0039cf20  a4 51 9f e5                                      ldr r5, [pc, #0x1a4]
0039cf24  30 d0 4d e2                                      sub sp, sp, #0x30
0039cf28  04 40 8f e0                                      add r4, pc, r4
0039cf2c  05 30 94 e7                                      ldr r3, [r4, r5]
0039cf30  00 70 50 e2                                      subs r7, r0, #0
0039cf34  01 80 a0 e1                                      mov r8, r1
0039cf38  00 30 93 e5                                      ldr r3, [r3]
0039cf3c  02 90 a0 e1                                      mov sb, r2
0039cf40  2c 30 8d e5                                      str r3, [sp, #0x2c]
0039cf44  47 00 00 0a                                      beq #0x39d068
0039cf48  80 31 9f e5                                      ldr r3, [pc, #0x180]
0039cf4c  80 11 9f e5                                      ldr r1, [pc, #0x180]
0039cf50  18 a0 8d e2                                      add sl, sp, #0x18
0039cf54  03 30 8f e0                                      add r3, pc, r3
0039cf58  00 20 93 e5                                      ldr r2, [r3]
0039cf5c  01 10 8f e0                                      add r1, pc, r1
0039cf60  0a 00 a0 e1                                      mov r0, sl
0039cf64  01 20 82 e2                                      add r2, r2, #1
0039cf68  00 20 83 e5                                      str r2, [r3]
0039cf6c  dc c6 fd eb                                      bl #0x30eae4
0039cf70  60 31 9f e5                                      ldr r3, [pc, #0x160]
0039cf74  60 21 9f e5                                      ldr r2, [pc, #0x160]
0039cf78  0c 60 8d e2                                      add r6, sp, #0xc
0039cf7c  03 10 94 e7                                      ldr r1, [r4, r3]
0039cf80  01 c0 a0 e3                                      mov ip, #1
0039cf84  06 00 a0 e1                                      mov r0, r6
0039cf88  38 10 91 e5                                      ldr r1, [r1, #0x38]
0039cf8c  02 20 8f e0                                      add r2, pc, r2
0039cf90  0a 30 a0 e1                                      mov r3, sl
0039cf94  04 c0 8d e5                                      str ip, [sp, #4]
0039cf98  00 c0 8d e5                                      str ip, [sp]
0039cf9c  e0 b9 fe eb                                      bl #0x34b724
0039cfa0  06 00 a0 e1                                      mov r0, r6
0039cfa4  00 10 a0 e3                                      mov r1, #0
0039cfa8  84 8b fe eb                                      bl #0x33fdc0
0039cfac  00 60 50 e2                                      subs r6, r0, #0
0039cfb0  02 00 00 0a                                      beq #0x39cfc0
0039cfb4  f4 30 96 e5                                      ldr r3, [r6, #0xf4]
0039cfb8  11 00 53 e3                                      cmp r3, #0x11
0039cfbc  08 00 00 0a                                      beq #0x39cfe4
0039cfc0  00 60 a0 e3                                      mov r6, #0
0039cfc4  05 30 94 e7                                      ldr r3, [r4, r5]
0039cfc8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0039cfcc  06 00 a0 e1                                      mov r0, r6
0039cfd0  00 30 93 e5                                      ldr r3, [r3]
0039cfd4  03 00 52 e1                                      cmp r2, r3
0039cfd8  39 00 00 1a                                      bne #0x39d0c4
0039cfdc  30 d0 8d e2                                      add sp, sp, #0x30
0039cfe0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0039cfe4  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0039cfe8  f8 73 86 e5                                      str r7, [r6, #0x3f8]
0039cfec  c0 83 86 e5                                      str r8, [r6, #0x3c0]
0039cff0  03 30 94 e7                                      ldr r3, [r4, r3]
0039cff4  00 30 93 e5                                      ldr r3, [r3]
0039cff8  08 81 93 e7                                      ldr r8, [r3, r8, lsl #2]
0039cffc  08 00 a0 e1                                      mov r0, r8
0039d000  93 c3 fd eb                                      bl #0x30de54
0039d004  08 10 a0 e1                                      mov r1, r8
0039d008  00 20 88 e0                                      add r2, r8, r0
0039d00c  ea 0f 86 e2                                      add r0, r6, #0x3a8
0039d010  72 ce fd eb                                      bl #0x3109e0
0039d014  fc 93 86 e5                                      str sb, [r6, #0x3fc]
0039d018  60 21 97 e5                                      ldr r2, [r7, #0x160]
0039d01c  06 00 a0 e1                                      mov r0, r6
0039d020  00 30 96 e5                                      ldr r3, [r6]
0039d024  60 21 86 e5                                      str r2, [r6, #0x160]
0039d028  64 21 97 e5                                      ldr r2, [r7, #0x164]
0039d02c  64 21 86 e5                                      str r2, [r6, #0x164]
0039d030  68 21 97 e5                                      ldr r2, [r7, #0x168]
0039d034  68 21 86 e5                                      str r2, [r6, #0x168]
0039d038  0f e0 a0 e1                                      mov lr, pc
0039d03c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0039d040  06 00 a0 e1                                      mov r0, r6
0039d044  00 30 96 e5                                      ldr r3, [r6]
0039d048  0f e0 a0 e1                                      mov lr, pc
0039d04c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0039d050  f4 02 97 e5                                      ldr r0, [r7, #0x2f4]
0039d054  00 00 50 e3                                      cmp r0, #0
0039d058  d9 ff ff 0a                                      beq #0x39cfc4
0039d05c  06 10 a0 e1                                      mov r1, r6
0039d060  8a e6 ff eb                                      bl #0x396a90
0039d064  d6 ff ff ea                                      b #0x39cfc4
0039d068  74 30 9f e5                                      ldr r3, [pc, #0x74]
0039d06c  03 30 94 e7                                      ldr r3, [r4, r3]
0039d070  00 30 93 e5                                      ldr r3, [r3]
0039d074  02 00 53 e3                                      cmp r3, #2
0039d078  00 70 87 05                                      streq r7, [r7]
0039d07c  07 60 a0 01                                      moveq r6, r7
0039d080  cf ff ff 0a                                      beq #0x39cfc4
0039d084  01 00 53 e3                                      cmp r3, #1
0039d088  cc ff ff 1a                                      bne #0x39cfc0
0039d08c  54 00 9f e5                                      ldr r0, [pc, #0x54]
0039d090  54 10 9f e5                                      ldr r1, [pc, #0x54]
0039d094  54 20 9f e5                                      ldr r2, [pc, #0x54]
0039d098  00 00 94 e7                                      ldr r0, [r4, r0]
0039d09c  50 30 9f e5                                      ldr r3, [pc, #0x50]
0039d0a0  82 c0 a0 e3                                      mov ip, #0x82
0039d0a4  01 10 8f e0                                      add r1, pc, r1
0039d0a8  a8 00 80 e2                                      add r0, r0, #0xa8
0039d0ac  02 20 8f e0                                      add r2, pc, r2
0039d0b0  03 30 8f e0                                      add r3, pc, r3
0039d0b4  00 c0 8d e5                                      str ip, [sp]
0039d0b8  07 60 a0 e1                                      mov r6, r7
0039d0bc  d0 c3 fd eb                                      bl #0x30e004
0039d0c0  bf ff ff ea                                      b #0x39cfc4
0039d0c4  91 c4 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0039d0c8  68 7b 5f 00 ac 40 00 00 08 59 60 00 a4 5e 52 00  .byte 0x68, 0x7b, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x08, 0x59, 0x60, 0x00, 0xa4, 0x5e, 0x52, 0x00
0039d0d8  f4 37 00 00 c4 35 52 00 e0 3c 00 00 c0 39 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xc4, 0x35, 0x52, 0x00, 0xe0, 0x3c, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0039d0e8  c0 19 00 00 34 13 52 00 4c 5d 52 00 f8 5c 52 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x34, 0x13, 0x52, 0x00, 0x4c, 0x5d, 0x52, 0x00, 0xf8, 0x5c, 0x52, 0x00

; FUNCTION 0x0039d0f8, declared_size=116, range_size=116, mode=arm
; class-group: ProjectileTrap
; alias: _ZNK14ProjectileTrap9GetDataIdEv
; demangled: ProjectileTrap::GetDataId() const
; decoder-mode: arm
0039d0f8  60 30 9f e5                                      ldr r3, [pc, #0x60]
0039d0fc  60 20 9f e5                                      ldr r2, [pc, #0x60]
0039d100  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039d104  03 30 8f e0                                      add r3, pc, r3
0039d108  02 20 93 e7                                      ldr r2, [r3, r2]
0039d10c  bc 63 90 e5                                      ldr r6, [r0, #0x3bc]
0039d110  00 50 92 e5                                      ldr r5, [r2]
0039d114  00 00 55 e3                                      cmp r5, #0
0039d118  0e 00 00 0a                                      beq #0x39d158
0039d11c  44 20 9f e5                                      ldr r2, [pc, #0x44]
0039d120  00 40 a0 e3                                      mov r4, #0
0039d124  02 30 93 e7                                      ldr r3, [r3, r2]
0039d128  00 70 93 e5                                      ldr r7, [r3]
0039d12c  02 00 00 ea                                      b #0x39d13c
0039d130  01 40 84 e2                                      add r4, r4, #1
0039d134  05 00 54 e1                                      cmp r4, r5
0039d138  06 00 00 0a                                      beq #0x39d158
0039d13c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
0039d140  06 00 a0 e1                                      mov r0, r6
0039d144  74 c4 fd eb                                      bl #0x30e31c
0039d148  00 00 50 e3                                      cmp r0, #0
0039d14c  f7 ff ff 1a                                      bne #0x39d130
0039d150  04 00 a0 e1                                      mov r0, r4
0039d154  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0039d158  00 00 e0 e3                                      mvn r0, #0
0039d15c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0039d160  8c 79 5f 00 a4 12 00 00 e0 3c 00 00              .byte 0x8c, 0x79, 0x5f, 0x00, 0xa4, 0x12, 0x00, 0x00, 0xe0, 0x3c, 0x00, 0x00

; FUNCTION 0x0039d16c, declared_size=92, range_size=92, mode=arm
; class-group: ProjectileTrap
; alias: _ZN14ProjectileTrap8InitPostEv
; demangled: ProjectileTrap::InitPost()
; decoder-mode: arm
0039d16c  10 40 2d e9                                      push {r4, lr}
0039d170  00 40 a0 e1                                      mov r4, r0
0039d174  ff 01 00 eb                                      bl #0x39d978
0039d178  c0 23 94 e5                                      ldr r2, [r4, #0x3c0]
0039d17c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0039d180  00 00 52 e3                                      cmp r2, #0
0039d184  03 30 8f e0                                      add r3, pc, r3
0039d188  0b 00 00 ba                                      blt #0x39d1bc
0039d18c  28 10 a0 e3                                      mov r1, #0x28
0039d190  91 02 02 e0                                      mul r2, r1, r2
0039d194  28 10 9f e5                                      ldr r1, [pc, #0x28]
0039d198  01 30 93 e7                                      ldr r3, [r3, r1]
0039d19c  00 10 93 e5                                      ldr r1, [r3]
0039d1a0  02 10 81 e0                                      add r1, r1, r2
0039d1a4  14 10 91 e5                                      ldr r1, [r1, #0x14]
0039d1a8  08 14 84 e5                                      str r1, [r4, #0x408]
0039d1ac  00 30 93 e5                                      ldr r3, [r3]
0039d1b0  02 20 83 e0                                      add r2, r3, r2
0039d1b4  10 30 d2 e5                                      ldrb r3, [r2, #0x10]
0039d1b8  0c 34 c4 e5                                      strb r3, [r4, #0x40c]
0039d1bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039d1c0  0c 79 5f 00 70 33 00 00                          .byte 0x0c, 0x79, 0x5f, 0x00, 0x70, 0x33, 0x00, 0x00

; FUNCTION 0x0039d1c8, declared_size=8, range_size=8, mode=arm
; class-group: ProjectileTrap
; alias: _ZThn4_N14ProjectileTrap17DeclarePropertiesEv
; demangled: non-virtual thunk to ProjectileTrap::DeclareProperties()
; decoder-mode: arm
0039d1c8  04 00 40 e2                                      sub r0, r0, #4
0039d1cc  ff ff ff ea                                      b #0x39d1d0

; FUNCTION 0x0039d1d0, declared_size=4, range_size=4, mode=arm
; class-group: ProjectileTrap
; alias: _ZN14ProjectileTrap17DeclarePropertiesEv
; demangled: ProjectileTrap::DeclareProperties()
; decoder-mode: arm
0039d1d0  f3 01 00 ea                                      b #0x39d9a4

; FUNCTION 0x0039d1d4, declared_size=8, range_size=8, mode=arm
; class-group: ProjectileTrap
; alias: _ZThn36_N14ProjectileTrapD1Ev
; demangled: non-virtual thunk to ProjectileTrap::~ProjectileTrap()
; decoder-mode: arm
0039d1d4  24 00 40 e2                                      sub r0, r0, #0x24
0039d1d8  ff ff ff ea                                      b #0x39d1dc

; FUNCTION 0x0039d1dc, declared_size=64, range_size=64, mode=arm
; class-group: ProjectileTrap
; alias: _ZN14ProjectileTrapD1Ev
; demangled: ProjectileTrap::~ProjectileTrap()
; decoder-mode: arm
0039d1dc  30 20 9f e5                                      ldr r2, [pc, #0x30]
0039d1e0  30 30 9f e5                                      ldr r3, [pc, #0x30]
0039d1e4  10 40 2d e9                                      push {r4, lr}
0039d1e8  02 20 8f e0                                      add r2, pc, r2
0039d1ec  03 30 92 e7                                      ldr r3, [r2, r3]
0039d1f0  00 40 a0 e1                                      mov r4, r0
0039d1f4  46 2f 83 e2                                      add r2, r3, #0x118
0039d1f8  08 10 83 e2                                      add r1, r3, #8
0039d1fc  43 3f 83 e2                                      add r3, r3, #0x10c
0039d200  0a 00 80 e8                                      stm r0, {r1, r3}
0039d204  24 20 80 e5                                      str r2, [r0, #0x24]
0039d208  01 02 00 eb                                      bl #0x39da14
0039d20c  04 00 a0 e1                                      mov r0, r4
0039d210  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039d214  a8 78 5f 00 6c 18 00 00                          .byte 0xa8, 0x78, 0x5f, 0x00, 0x6c, 0x18, 0x00, 0x00

; FUNCTION 0x0039d21c, declared_size=8, range_size=8, mode=arm
; class-group: ProjectileTrap
; alias: _ZThn36_N14ProjectileTrapD0Ev
; demangled: non-virtual thunk to ProjectileTrap::~ProjectileTrap()
; decoder-mode: arm
0039d21c  24 00 40 e2                                      sub r0, r0, #0x24
0039d220  ff ff ff ea                                      b #0x39d224

; FUNCTION 0x0039d224, declared_size=28, range_size=28, mode=arm
; class-group: ProjectileTrap
; alias: _ZN14ProjectileTrapD0Ev
; demangled: ProjectileTrap::~ProjectileTrap()
; decoder-mode: arm
0039d224  10 40 2d e9                                      push {r4, lr}
0039d228  00 40 a0 e1                                      mov r4, r0
0039d22c  ea ff ff eb                                      bl #0x39d1dc
0039d230  04 00 a0 e1                                      mov r0, r4
0039d234  81 cc fd eb                                      bl #0x310440
0039d238  04 00 a0 e1                                      mov r0, r4
0039d23c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0039d240, declared_size=64, range_size=64, mode=arm
; class-group: ProjectileTrap
; alias: _ZN14ProjectileTrapD2Ev
; demangled: ProjectileTrap::~ProjectileTrap()
; decoder-mode: arm
0039d240  30 20 9f e5                                      ldr r2, [pc, #0x30]
0039d244  30 30 9f e5                                      ldr r3, [pc, #0x30]
0039d248  10 40 2d e9                                      push {r4, lr}
0039d24c  02 20 8f e0                                      add r2, pc, r2
0039d250  03 30 92 e7                                      ldr r3, [r2, r3]
0039d254  00 40 a0 e1                                      mov r4, r0
0039d258  46 2f 83 e2                                      add r2, r3, #0x118
0039d25c  08 10 83 e2                                      add r1, r3, #8
0039d260  43 3f 83 e2                                      add r3, r3, #0x10c
0039d264  0a 00 80 e8                                      stm r0, {r1, r3}
0039d268  24 20 80 e5                                      str r2, [r0, #0x24]
0039d26c  e8 01 00 eb                                      bl #0x39da14
0039d270  04 00 a0 e1                                      mov r0, r4
0039d274  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039d278  44 78 5f 00 6c 18 00 00                          .byte 0x44, 0x78, 0x5f, 0x00, 0x6c, 0x18, 0x00, 0x00

; FUNCTION 0x0039d280, declared_size=64, range_size=64, mode=arm
; class-group: ProjectileTrap
; alias: _ZN14ProjectileTrapC1EN10ObjectBase6GO_IDSE
; demangled: ProjectileTrap::ProjectileTrap(ObjectBase::GO_IDS)
; decoder-mode: arm
0039d280  70 40 2d e9                                      push {r4, r5, r6, lr}
0039d284  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
0039d288  00 40 a0 e1                                      mov r4, r0
0039d28c  02 02 00 eb                                      bl #0x39da9c
0039d290  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039d294  05 50 8f e0                                      add r5, pc, r5
0039d298  04 00 a0 e1                                      mov r0, r4
0039d29c  03 30 95 e7                                      ldr r3, [r5, r3]
0039d2a0  46 2f 83 e2                                      add r2, r3, #0x118
0039d2a4  08 10 83 e2                                      add r1, r3, #8
0039d2a8  43 3f 83 e2                                      add r3, r3, #0x10c
0039d2ac  0a 00 84 e8                                      stm r4, {r1, r3}
0039d2b0  24 20 84 e5                                      str r2, [r4, #0x24]
0039d2b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039d2b8  fc 77 5f 00 6c 18 00 00                          .byte 0xfc, 0x77, 0x5f, 0x00, 0x6c, 0x18, 0x00, 0x00

; FUNCTION 0x0039d2c0, declared_size=64, range_size=64, mode=arm
; class-group: ProjectileTrap
; alias: _ZN14ProjectileTrapC2EN10ObjectBase6GO_IDSE
; demangled: ProjectileTrap::ProjectileTrap(ObjectBase::GO_IDS)
; decoder-mode: arm
0039d2c0  70 40 2d e9                                      push {r4, r5, r6, lr}
0039d2c4  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
0039d2c8  00 40 a0 e1                                      mov r4, r0
0039d2cc  f2 01 00 eb                                      bl #0x39da9c
0039d2d0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039d2d4  05 50 8f e0                                      add r5, pc, r5
0039d2d8  04 00 a0 e1                                      mov r0, r4
0039d2dc  03 30 95 e7                                      ldr r3, [r5, r3]
0039d2e0  46 2f 83 e2                                      add r2, r3, #0x118
0039d2e4  08 10 83 e2                                      add r1, r3, #8
0039d2e8  43 3f 83 e2                                      add r3, r3, #0x10c
0039d2ec  0a 00 84 e8                                      stm r4, {r1, r3}
0039d2f0  24 20 84 e5                                      str r2, [r4, #0x24]
0039d2f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039d2f8  bc 77 5f 00 6c 18 00 00                          .byte 0xbc, 0x77, 0x5f, 0x00, 0x6c, 0x18, 0x00, 0x00

; FUNCTION 0x0039d430, declared_size=244, range_size=244, mode=arm
; class-group: ProjectileTrap
; alias: _ZN14ProjectileTrap8ActivateEv
; demangled: ProjectileTrap::Activate()
; decoder-mode: arm
0039d430  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0039d434  d8 62 90 e5                                      ldr r6, [r0, #0x2d8]
0039d438  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
0039d43c  24 d0 4d e2                                      sub sp, sp, #0x24
0039d440  00 00 56 e3                                      cmp r6, #0
0039d444  00 40 a0 e1                                      mov r4, r0
0039d448  05 50 8f e0                                      add r5, pc, r5
0039d44c  26 00 00 0a                                      beq #0x39d4ec
0039d450  01 20 a0 e3                                      mov r2, #1
0039d454  c4 23 c0 e5                                      strb r2, [r0, #0x3c4]
0039d458  38 c0 96 e5                                      ldr ip, [r6, #0x38]
0039d45c  00 30 a0 e3                                      mov r3, #0
0039d460  03 10 a0 e1                                      mov r1, r3
0039d464  0c 00 a0 e1                                      mov r0, ip
0039d468  00 c0 9c e5                                      ldr ip, [ip]
0039d46c  00 30 8d e5                                      str r3, [sp]
0039d470  0f e0 a0 e1                                      mov lr, pc
0039d474  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0039d478  c0 33 94 e5                                      ldr r3, [r4, #0x3c0]
0039d47c  00 00 53 e3                                      cmp r3, #0
0039d480  17 00 00 ba                                      blt #0x39d4e4
0039d484  94 20 9f e5                                      ldr r2, [pc, #0x94]
0039d488  00 30 94 e5                                      ldr r3, [r4]
0039d48c  04 00 a0 e1                                      mov r0, r4
0039d490  02 20 95 e7                                      ldr r2, [r5, r2]
0039d494  00 70 92 e5                                      ldr r7, [r2]
0039d498  0f e0 a0 e1                                      mov lr, pc
0039d49c  ec f0 93 e5                                      ldr pc, [r3, #0xec]
0039d4a0  68 e1 94 e5                                      ldr lr, [r4, #0x168]
0039d4a4  60 61 94 e5                                      ldr r6, [r4, #0x160]
0039d4a8  64 51 94 e5                                      ldr r5, [r4, #0x164]
0039d4ac  bf c4 a0 e3                                      mov ip, #0xbf000000
0039d4b0  02 c5 8c e2                                      add ip, ip, #0x800000
0039d4b4  00 10 a0 e1                                      mov r1, r0
0039d4b8  1c e0 8d e5                                      str lr, [sp, #0x1c]
0039d4bc  07 00 a0 e1                                      mov r0, r7
0039d4c0  01 e0 a0 e3                                      mov lr, #1
0039d4c4  14 20 8d e2                                      add r2, sp, #0x14
0039d4c8  00 30 a0 e3                                      mov r3, #0
0039d4cc  14 60 8d e5                                      str r6, [sp, #0x14]
0039d4d0  18 50 8d e5                                      str r5, [sp, #0x18]
0039d4d4  00 e0 8d e5                                      str lr, [sp]
0039d4d8  08 c0 8d e5                                      str ip, [sp, #8]
0039d4dc  04 c0 8d e5                                      str ip, [sp, #4]
0039d4e0  3c 38 ff eb                                      bl #0x36b5d8
0039d4e4  24 d0 8d e2                                      add sp, sp, #0x24
0039d4e8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0039d4ec  f0 33 90 e5                                      ldr r3, [r0, #0x3f0]
0039d4f0  00 00 53 e3                                      cmp r3, #0
0039d4f4  df ff ff 0a                                      beq #0x39d478
0039d4f8  3e 7e 80 e2                                      add r7, r0, #0x3e0
0039d4fc  07 00 a0 e1                                      mov r0, r7
0039d500  e4 13 94 e5                                      ldr r1, [r4, #0x3e4]
0039d504  44 ec ff eb                                      bl #0x39861c
0039d508  ec 73 84 e5                                      str r7, [r4, #0x3ec]
0039d50c  f0 63 84 e5                                      str r6, [r4, #0x3f0]
0039d510  e8 73 84 e5                                      str r7, [r4, #0x3e8]
0039d514  e4 63 84 e5                                      str r6, [r4, #0x3e4]
0039d518  d6 ff ff ea                                      b #0x39d478
; mapping-symbol data/literal pool
0039d51c  48 76 5f 00 a4 0d 00 00                          .byte 0x48, 0x76, 0x5f, 0x00, 0xa4, 0x0d, 0x00, 0x00
