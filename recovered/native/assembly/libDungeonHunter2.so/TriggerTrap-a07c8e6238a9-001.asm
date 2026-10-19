; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039cadc, declared_size=8, range_size=8, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap11IsUpdatableEv
; demangled: TriggerTrap::IsUpdatable() const
; decoder-mode: arm
0039cadc  01 00 a0 e3                                      mov r0, #1
0039cae0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039cae4, declared_size=8, range_size=8, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap10IsAnimatedEv
; demangled: TriggerTrap::IsAnimated() const
; decoder-mode: arm
0039cae4  01 00 a0 e3                                      mov r0, #1
0039cae8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039caec, declared_size=8, range_size=8, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap13IsInteractiveEP10GameObject
; demangled: TriggerTrap::IsInteractive(GameObject*) const
; decoder-mode: arm
0039caec  00 00 a0 e3                                      mov r0, #0
0039caf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039caf4, declared_size=8, range_size=8, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap9IsZonableEv
; demangled: TriggerTrap::IsZonable() const
; decoder-mode: arm
0039caf4  01 00 a0 e3                                      mov r0, #1
0039caf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039cafc, declared_size=8, range_size=8, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap10IsObstacleEv
; demangled: TriggerTrap::IsObstacle() const
; decoder-mode: arm
0039cafc  01 00 a0 e3                                      mov r0, #1
0039cb00  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039cb04, declared_size=12, range_size=12, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap17GetObstacleRadiusEv
; demangled: TriggerTrap::GetObstacleRadius() const
; decoder-mode: arm
0039cb04  43 04 a0 e3                                      mov r0, #0x43000000
0039cb08  16 08 80 e2                                      add r0, r0, #0x160000
0039cb0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039cb10, declared_size=12, range_size=12, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap19GetObstacleStrengthEv
; demangled: TriggerTrap::GetObstacleStrength() const
; decoder-mode: arm
0039cb10  41 04 a0 e3                                      mov r0, #0x41000000
0039cb14  02 06 80 e2                                      add r0, r0, #0x200000
0039cb18  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039cb1c, declared_size=16, range_size=16, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap13getUDTypeNameEv
; demangled: TriggerTrap::getUDTypeName() const
; decoder-mode: arm
0039cb1c  04 00 9f e5                                      ldr r0, [pc, #4]
0039cb20  00 00 8f e0                                      add r0, pc, r0
0039cb24  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039cb28  10 3a 52 00                                      .byte 0x10, 0x3a, 0x52, 0x00

; FUNCTION 0x0039dbc0, declared_size=72, range_size=72, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap9GetScriptEv
; demangled: TriggerTrap::GetScript() const
; decoder-mode: arm
0039dbc0  c0 23 90 e5                                      ldr r2, [r0, #0x3c0]
0039dbc4  30 30 9f e5                                      ldr r3, [pc, #0x30]
0039dbc8  01 00 72 e3                                      cmn r2, #1
0039dbcc  03 30 8f e0                                      add r3, pc, r3
0039dbd0  06 00 00 0a                                      beq #0x39dbf0
0039dbd4  24 10 9f e5                                      ldr r1, [pc, #0x24]
0039dbd8  01 30 93 e7                                      ldr r3, [r3, r1]
0039dbdc  1c 10 a0 e3                                      mov r1, #0x1c
0039dbe0  00 30 93 e5                                      ldr r3, [r3]
0039dbe4  91 32 22 e0                                      mla r2, r1, r2, r3
0039dbe8  10 00 92 e5                                      ldr r0, [r2, #0x10]
0039dbec  1e ff 2f e1                                      bx lr
0039dbf0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0039dbf4  00 00 8f e0                                      add r0, pc, r0
0039dbf8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039dbfc  c4 6e 5f 00 d0 1e 00 00 14 dc 52 00              .byte 0xc4, 0x6e, 0x5f, 0x00, 0xd0, 0x1e, 0x00, 0x00, 0x14, 0xdc, 0x52, 0x00

; FUNCTION 0x0039dc08, declared_size=56, range_size=56, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap9GetVisualEv
; demangled: TriggerTrap::GetVisual() const
; decoder-mode: arm
0039dc08  c0 03 90 e5                                      ldr r0, [r0, #0x3c0]
0039dc0c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039dc10  01 00 70 e3                                      cmn r0, #1
0039dc14  03 30 8f e0                                      add r3, pc, r3
0039dc18  1e ff 2f 01                                      bxeq lr
0039dc1c  18 20 9f e5                                      ldr r2, [pc, #0x18]
0039dc20  02 30 93 e7                                      ldr r3, [r3, r2]
0039dc24  1c 20 a0 e3                                      mov r2, #0x1c
0039dc28  00 30 93 e5                                      ldr r3, [r3]
0039dc2c  92 30 20 e0                                      mla r0, r2, r0, r3
0039dc30  18 00 90 e5                                      ldr r0, [r0, #0x18]
0039dc34  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039dc38  7c 6e 5f 00 d0 1e 00 00                          .byte 0x7c, 0x6e, 0x5f, 0x00, 0xd0, 0x1e, 0x00, 0x00

; FUNCTION 0x0039dc40, declared_size=80, range_size=80, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap12GetDamagerIdEv
; demangled: TriggerTrap::GetDamagerId() const
; decoder-mode: arm
0039dc40  fc 23 90 e5                                      ldr r2, [r0, #0x3fc]
0039dc44  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0039dc48  01 00 72 e3                                      cmn r2, #1
0039dc4c  03 30 8f e0                                      add r3, pc, r3
0039dc50  01 00 00 0a                                      beq #0x39dc5c
0039dc54  02 00 a0 e1                                      mov r0, r2
0039dc58  1e ff 2f e1                                      bx lr
0039dc5c  c0 13 90 e5                                      ldr r1, [r0, #0x3c0]
0039dc60  01 00 71 e3                                      cmn r1, #1
0039dc64  fa ff ff 0a                                      beq #0x39dc54
0039dc68  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0039dc6c  02 30 93 e7                                      ldr r3, [r3, r2]
0039dc70  1c 20 a0 e3                                      mov r2, #0x1c
0039dc74  00 30 93 e5                                      ldr r3, [r3]
0039dc78  92 31 21 e0                                      mla r1, r2, r1, r3
0039dc7c  04 20 91 e5                                      ldr r2, [r1, #4]
0039dc80  02 00 a0 e1                                      mov r0, r2
0039dc84  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039dc88  44 6e 5f 00 d0 1e 00 00                          .byte 0x44, 0x6e, 0x5f, 0x00, 0xd0, 0x1e, 0x00, 0x00

; FUNCTION 0x0039dc90, declared_size=80, range_size=80, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap13GetHurtChanceEv
; demangled: TriggerTrap::GetHurtChance() const
; decoder-mode: arm
0039dc90  fc 23 90 e5                                      ldr r2, [r0, #0x3fc]
0039dc94  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0039dc98  01 00 72 e3                                      cmn r2, #1
0039dc9c  03 30 8f e0                                      add r3, pc, r3
0039dca0  01 00 00 0a                                      beq #0x39dcac
0039dca4  02 00 a0 e1                                      mov r0, r2
0039dca8  1e ff 2f e1                                      bx lr
0039dcac  c0 13 90 e5                                      ldr r1, [r0, #0x3c0]
0039dcb0  01 00 71 e3                                      cmn r1, #1
0039dcb4  fa ff ff 0a                                      beq #0x39dca4
0039dcb8  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0039dcbc  02 30 93 e7                                      ldr r3, [r3, r2]
0039dcc0  1c 20 a0 e3                                      mov r2, #0x1c
0039dcc4  00 30 93 e5                                      ldr r3, [r3]
0039dcc8  92 31 21 e0                                      mla r1, r2, r1, r3
0039dccc  08 20 91 e5                                      ldr r2, [r1, #8]
0039dcd0  02 00 a0 e1                                      mov r0, r2
0039dcd4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039dcd8  f4 6d 5f 00 d0 1e 00 00                          .byte 0xf4, 0x6d, 0x5f, 0x00, 0xd0, 0x1e, 0x00, 0x00

; FUNCTION 0x0039dce0, declared_size=56, range_size=56, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap8GetSoundEv
; demangled: TriggerTrap::GetSound() const
; decoder-mode: arm
0039dce0  c0 03 90 e5                                      ldr r0, [r0, #0x3c0]
0039dce4  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039dce8  01 00 70 e3                                      cmn r0, #1
0039dcec  03 30 8f e0                                      add r3, pc, r3
0039dcf0  1e ff 2f 01                                      bxeq lr
0039dcf4  18 20 9f e5                                      ldr r2, [pc, #0x18]
0039dcf8  02 30 93 e7                                      ldr r3, [r3, r2]
0039dcfc  1c 20 a0 e3                                      mov r2, #0x1c
0039dd00  00 30 93 e5                                      ldr r3, [r3]
0039dd04  92 30 20 e0                                      mla r0, r2, r0, r3
0039dd08  14 00 90 e5                                      ldr r0, [r0, #0x14]
0039dd0c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039dd10  a4 6d 5f 00 d0 1e 00 00                          .byte 0xa4, 0x6d, 0x5f, 0x00, 0xd0, 0x1e, 0x00, 0x00

; FUNCTION 0x0039dd18, declared_size=128, range_size=128, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap7_RemoveERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: TriggerTrap::_Remove(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0039dd18  10 40 2d e9                                      push {r4, lr}
0039dd1c  d8 32 92 e5                                      ldr r3, [r2, #0x2d8]
0039dd20  02 40 a0 e1                                      mov r4, r2
0039dd24  01 20 a0 e3                                      mov r2, #1
0039dd28  00 00 53 e3                                      cmp r3, #0
0039dd2c  08 d0 4d e2                                      sub sp, sp, #8
0039dd30  00 24 c4 e5                                      strb r2, [r4, #0x400]
0039dd34  0b 00 00 0a                                      beq #0x39dd68
0039dd38  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0039dd3c  50 10 9f e5                                      ldr r1, [pc, #0x50]
0039dd40  00 30 a0 e3                                      mov r3, #0
0039dd44  0c 00 a0 e1                                      mov r0, ip
0039dd48  03 20 a0 e1                                      mov r2, r3
0039dd4c  00 c0 9c e5                                      ldr ip, [ip]
0039dd50  01 10 8f e0                                      add r1, pc, r1
0039dd54  00 30 8d e5                                      str r3, [sp]
0039dd58  0f e0 a0 e1                                      mov lr, pc
0039dd5c  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039dd60  00 00 50 e3                                      cmp r0, #0
0039dd64  08 00 00 1a                                      bne #0x39dd8c
0039dd68  04 00 a0 e1                                      mov r0, r4
0039dd6c  00 30 94 e5                                      ldr r3, [r4]
0039dd70  00 10 a0 e3                                      mov r1, #0
0039dd74  0f e0 a0 e1                                      mov lr, pc
0039dd78  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0039dd7c  04 00 a0 e1                                      mov r0, r4
0039dd80  08 d0 8d e2                                      add sp, sp, #8
0039dd84  10 40 bd e8                                      pop {r4, lr}
0039dd88  09 80 fe ea                                      b #0x33ddb4
0039dd8c  08 d0 8d e2                                      add sp, sp, #8
0039dd90  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039dd94  28 51 52 00                                      .byte 0x28, 0x51, 0x52, 0x00

; FUNCTION 0x0039dd98, declared_size=212, range_size=212, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap14createBindingsERN3sfc6script3lua6BinderE
; demangled: TriggerTrap::createBindings(sfc::script::lua::Binder&)
; decoder-mode: arm
0039dd98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039dd9c  ac 50 9f e5                                      ldr r5, [pc, #0xac]
0039dda0  01 40 a0 e1                                      mov r4, r1
0039dda4  00 70 a0 e1                                      mov r7, r0
0039dda8  8f be ff eb                                      bl #0x38d7ec
0039ddac  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0039ddb0  05 50 8f e0                                      add r5, pc, r5
0039ddb4  9c 60 9f e5                                      ldr r6, [pc, #0x9c]
0039ddb8  03 80 95 e7                                      ldr r8, [r5, r3]
0039ddbc  04 00 a0 e1                                      mov r0, r4
0039ddc0  06 60 8f e0                                      add r6, pc, r6
0039ddc4  07 30 a0 e1                                      mov r3, r7
0039ddc8  06 10 a0 e1                                      mov r1, r6
0039ddcc  08 20 a0 e1                                      mov r2, r8
0039ddd0  bf f1 fd eb                                      bl #0x31a4d4
0039ddd4  04 00 a0 e1                                      mov r0, r4
0039ddd8  06 10 a0 e1                                      mov r1, r6
0039dddc  08 20 a0 e1                                      mov r2, r8
0039dde0  43 ef fd eb                                      bl #0x319af4
0039dde4  70 20 9f e5                                      ldr r2, [pc, #0x70]
0039dde8  70 60 9f e5                                      ldr r6, [pc, #0x70]
0039ddec  07 30 a0 e1                                      mov r3, r7
0039ddf0  02 80 95 e7                                      ldr r8, [r5, r2]
0039ddf4  06 60 8f e0                                      add r6, pc, r6
0039ddf8  04 00 a0 e1                                      mov r0, r4
0039ddfc  06 10 a0 e1                                      mov r1, r6
0039de00  08 20 a0 e1                                      mov r2, r8
0039de04  b2 f1 fd eb                                      bl #0x31a4d4
0039de08  04 00 a0 e1                                      mov r0, r4
0039de0c  06 10 a0 e1                                      mov r1, r6
0039de10  08 20 a0 e1                                      mov r2, r8
0039de14  36 ef fd eb                                      bl #0x319af4
0039de18  44 20 9f e5                                      ldr r2, [pc, #0x44]
0039de1c  44 60 9f e5                                      ldr r6, [pc, #0x44]
0039de20  04 00 a0 e1                                      mov r0, r4
0039de24  02 50 95 e7                                      ldr r5, [r5, r2]
0039de28  06 60 8f e0                                      add r6, pc, r6
0039de2c  06 10 a0 e1                                      mov r1, r6
0039de30  05 20 a0 e1                                      mov r2, r5
0039de34  07 30 a0 e1                                      mov r3, r7
0039de38  a5 f1 fd eb                                      bl #0x31a4d4
0039de3c  04 00 a0 e1                                      mov r0, r4
0039de40  06 10 a0 e1                                      mov r1, r6
0039de44  05 20 a0 e1                                      mov r2, r5
0039de48  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0039de4c  28 ef fd ea                                      b #0x319af4
; mapping-symbol data/literal pool
0039de50  e0 6c 5f 00 70 4b 00 00 c0 50 52 00 28 47 00 00  .byte 0xe0, 0x6c, 0x5f, 0x00, 0x70, 0x4b, 0x00, 0x00, 0xc0, 0x50, 0x52, 0x00, 0x28, 0x47, 0x00, 0x00
0039de60  9c 50 52 00 94 27 00 00 78 50 52 00              .byte 0x9c, 0x50, 0x52, 0x00, 0x94, 0x27, 0x00, 0x00, 0x78, 0x50, 0x52, 0x00

; FUNCTION 0x0039de6c, declared_size=116, range_size=116, mode=arm
; class-group: TriggerTrap
; alias: _ZNK11TriggerTrap9GetDataIdEv
; demangled: TriggerTrap::GetDataId() const
; decoder-mode: arm
0039de6c  60 30 9f e5                                      ldr r3, [pc, #0x60]
0039de70  60 20 9f e5                                      ldr r2, [pc, #0x60]
0039de74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039de78  03 30 8f e0                                      add r3, pc, r3
0039de7c  02 20 93 e7                                      ldr r2, [r3, r2]
0039de80  bc 63 90 e5                                      ldr r6, [r0, #0x3bc]
0039de84  00 50 92 e5                                      ldr r5, [r2]
0039de88  00 00 55 e3                                      cmp r5, #0
0039de8c  0e 00 00 0a                                      beq #0x39decc
0039de90  44 20 9f e5                                      ldr r2, [pc, #0x44]
0039de94  00 40 a0 e3                                      mov r4, #0
0039de98  02 30 93 e7                                      ldr r3, [r3, r2]
0039de9c  00 70 93 e5                                      ldr r7, [r3]
0039dea0  02 00 00 ea                                      b #0x39deb0
0039dea4  01 40 84 e2                                      add r4, r4, #1
0039dea8  05 00 54 e1                                      cmp r4, r5
0039deac  06 00 00 0a                                      beq #0x39decc
0039deb0  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
0039deb4  06 00 a0 e1                                      mov r0, r6
0039deb8  17 c1 fd eb                                      bl #0x30e31c
0039debc  00 00 50 e3                                      cmp r0, #0
0039dec0  f7 ff ff 1a                                      bne #0x39dea4
0039dec4  04 00 a0 e1                                      mov r0, r4
0039dec8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0039decc  00 00 e0 e3                                      mvn r0, #0
0039ded0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0039ded4  18 6c 5f 00 8c 0d 00 00 2c 06 00 00              .byte 0x18, 0x6c, 0x5f, 0x00, 0x8c, 0x0d, 0x00, 0x00, 0x2c, 0x06, 0x00, 0x00

; FUNCTION 0x0039dee0, declared_size=476, range_size=476, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap8InitPostEv
; demangled: TriggerTrap::InitPost()
; decoder-mode: arm
0039dee0  70 40 2d e9                                      push {r4, r5, r6, lr}
0039dee4  08 d0 4d e2                                      sub sp, sp, #8
0039dee8  00 40 a0 e1                                      mov r4, r0
0039deec  9c b7 ff eb                                      bl #0x38bd64
0039def0  74 32 94 e5                                      ldr r3, [r4, #0x274]
0039def4  a0 51 9f e5                                      ldr r5, [pc, #0x1a0]
0039def8  03 00 50 e1                                      cmp r0, r3
0039defc  05 50 8f e0                                      add r5, pc, r5
0039df00  01 00 00 ba                                      blt #0x39df0c
0039df04  08 d0 8d e2                                      add sp, sp, #8
0039df08  70 80 bd e8                                      pop {r4, r5, r6, pc}
0039df0c  00 30 94 e5                                      ldr r3, [r4]
0039df10  04 00 a0 e1                                      mov r0, r4
0039df14  0f e0 a0 e1                                      mov lr, pc
0039df18  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
0039df1c  01 00 70 e3                                      cmn r0, #1
0039df20  c0 03 84 e5                                      str r0, [r4, #0x3c0]
0039df24  15 00 00 0a                                      beq #0x39df80
0039df28  00 30 94 e5                                      ldr r3, [r4]
0039df2c  04 00 a0 e1                                      mov r0, r4
0039df30  0f e0 a0 e1                                      mov lr, pc
0039df34  e0 f0 93 e5                                      ldr pc, [r3, #0xe0]
0039df38  01 00 70 e3                                      cmn r0, #1
0039df3c  0f 00 00 0a                                      beq #0x39df80
0039df40  58 21 9f e5                                      ldr r2, [pc, #0x158]
0039df44  00 30 94 e5                                      ldr r3, [r4]
0039df48  04 00 a0 e1                                      mov r0, r4
0039df4c  02 20 95 e7                                      ldr r2, [r5, r2]
0039df50  00 60 92 e5                                      ldr r6, [r2]
0039df54  0f e0 a0 e1                                      mov lr, pc
0039df58  e0 f0 93 e5                                      ldr pc, [r3, #0xe0]
0039df5c  0c 30 a0 e3                                      mov r3, #0xc
0039df60  93 60 26 e0                                      mla r6, r3, r0, r6
0039df64  08 60 96 e5                                      ldr r6, [r6, #8]
0039df68  06 00 a0 e1                                      mov r0, r6
0039df6c  b8 bf fd eb                                      bl #0x30de54
0039df70  06 10 a0 e1                                      mov r1, r6
0039df74  00 20 86 e0                                      add r2, r6, r0
0039df78  29 0e 84 e2                                      add r0, r4, #0x290
0039df7c  97 ca fd eb                                      bl #0x3109e0
0039df80  04 00 a0 e1                                      mov r0, r4
0039df84  e4 e5 ff eb                                      bl #0x39771c
0039df88  04 00 a0 e1                                      mov r0, r4
0039df8c  f3 b2 ff eb                                      bl #0x38ab60
0039df90  00 10 50 e2                                      subs r1, r0, #0
0039df94  3b 00 00 0a                                      beq #0x39e088
0039df98  d8 62 94 e5                                      ldr r6, [r4, #0x2d8]
0039df9c  00 00 56 e3                                      cmp r6, #0
0039dfa0  21 00 00 0a                                      beq #0x39e02c
0039dfa4  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0039dfa8  38 20 96 e5                                      ldr r2, [r6, #0x38]
0039dfac  03 10 95 e7                                      ldr r1, [r5, r3]
0039dfb0  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
0039dfb4  00 c0 92 e5                                      ldr ip, [r2]
0039dfb8  02 00 a0 e1                                      mov r0, r2
0039dfbc  03 30 95 e7                                      ldr r3, [r5, r3]
0039dfc0  04 20 a0 e1                                      mov r2, r4
0039dfc4  00 40 8d e5                                      str r4, [sp]
0039dfc8  0f e0 a0 e1                                      mov lr, pc
0039dfcc  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
0039dfd0  38 c0 96 e5                                      ldr ip, [r6, #0x38]
0039dfd4  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
0039dfd8  00 30 a0 e3                                      mov r3, #0
0039dfdc  0c 00 a0 e1                                      mov r0, ip
0039dfe0  03 20 a0 e1                                      mov r2, r3
0039dfe4  00 c0 9c e5                                      ldr ip, [ip]
0039dfe8  01 10 8f e0                                      add r1, pc, r1
0039dfec  00 30 8d e5                                      str r3, [sp]
0039dff0  0f e0 a0 e1                                      mov lr, pc
0039dff4  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039dff8  00 e0 50 e2                                      subs lr, r0, #0
0039dffc  0a 00 00 1a                                      bne #0x39e02c
0039e000  01 20 a0 e3                                      mov r2, #1
0039e004  01 24 c4 e5                                      strb r2, [r4, #0x401]
0039e008  38 c0 96 e5                                      ldr ip, [r6, #0x38]
0039e00c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0039e010  0e 30 a0 e1                                      mov r3, lr
0039e014  0c 00 a0 e1                                      mov r0, ip
0039e018  01 10 8f e0                                      add r1, pc, r1
0039e01c  00 c0 9c e5                                      ldr ip, [ip]
0039e020  00 e0 8d e5                                      str lr, [sp]
0039e024  0f e0 a0 e1                                      mov lr, pc
0039e028  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039e02c  80 30 9f e5                                      ldr r3, [pc, #0x80]
0039e030  03 30 95 e7                                      ldr r3, [r5, r3]
0039e034  00 50 93 e5                                      ldr r5, [r3]
0039e038  00 00 55 e3                                      cmp r5, #0
0039e03c  06 00 00 0a                                      beq #0x39e05c
0039e040  00 30 94 e5                                      ldr r3, [r4]
0039e044  04 00 a0 e1                                      mov r0, r4
0039e048  0f e0 a0 e1                                      mov lr, pc
0039e04c  ec f0 93 e5                                      ldr pc, [r3, #0xec]
0039e050  00 10 a0 e1                                      mov r1, r0
0039e054  05 00 a0 e1                                      mov r0, r5
0039e058  67 2e ff eb                                      bl #0x3699fc
0039e05c  00 30 94 e5                                      ldr r3, [r4]
0039e060  04 00 a0 e1                                      mov r0, r4
0039e064  0f e0 a0 e1                                      mov lr, pc
0039e068  dc f0 93 e5                                      ldr pc, [r3, #0xdc]
0039e06c  44 20 9f e5                                      ldr r2, [pc, #0x44]
0039e070  00 10 a0 e1                                      mov r1, r0
0039e074  04 00 a0 e1                                      mov r0, r4
0039e078  02 20 8f e0                                      add r2, pc, r2
0039e07c  08 d0 8d e2                                      add sp, sp, #8
0039e080  70 40 bd e8                                      pop {r4, r5, r6, lr}
0039e084  b5 c3 ff ea                                      b #0x38ef60
0039e088  04 00 a0 e1                                      mov r0, r4
0039e08c  00 30 94 e5                                      ldr r3, [r4]
0039e090  0f e0 a0 e1                                      mov lr, pc
0039e094  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0039e098  99 ff ff ea                                      b #0x39df04
; mapping-symbol data/literal pool
0039e09c  94 6b 5f 00 a8 1c 00 00 60 48 00 00 34 2a 00 00  .byte 0x94, 0x6b, 0x5f, 0x00, 0xa8, 0x1c, 0x00, 0x00, 0x60, 0x48, 0x00, 0x00, 0x34, 0x2a, 0x00, 0x00
0039e0ac  c0 4e 52 00 98 42 52 00 a4 0d 00 00 08 4b 52 00  .byte 0xc0, 0x4e, 0x52, 0x00, 0x98, 0x42, 0x52, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0x08, 0x4b, 0x52, 0x00

; FUNCTION 0x0039e198, declared_size=256, range_size=256, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap8ActivateEv
; demangled: TriggerTrap::Activate()
; decoder-mode: arm
0039e198  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0039e19c  d8 62 90 e5                                      ldr r6, [r0, #0x2d8]
0039e1a0  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
0039e1a4  24 d0 4d e2                                      sub sp, sp, #0x24
0039e1a8  00 00 56 e3                                      cmp r6, #0
0039e1ac  00 40 a0 e1                                      mov r4, r0
0039e1b0  05 50 8f e0                                      add r5, pc, r5
0039e1b4  28 00 00 0a                                      beq #0x39e25c
0039e1b8  01 30 a0 e3                                      mov r3, #1
0039e1bc  c4 33 c0 e5                                      strb r3, [r0, #0x3c4]
0039e1c0  38 c0 96 e5                                      ldr ip, [r6, #0x38]
0039e1c4  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0039e1c8  00 30 a0 e3                                      mov r3, #0
0039e1cc  0c 00 a0 e1                                      mov r0, ip
0039e1d0  03 20 a0 e1                                      mov r2, r3
0039e1d4  00 c0 9c e5                                      ldr ip, [ip]
0039e1d8  01 10 8f e0                                      add r1, pc, r1
0039e1dc  00 30 8d e5                                      str r3, [sp]
0039e1e0  0f e0 a0 e1                                      mov lr, pc
0039e1e4  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039e1e8  c0 33 94 e5                                      ldr r3, [r4, #0x3c0]
0039e1ec  00 00 53 e3                                      cmp r3, #0
0039e1f0  17 00 00 ba                                      blt #0x39e254
0039e1f4  98 20 9f e5                                      ldr r2, [pc, #0x98]
0039e1f8  00 30 94 e5                                      ldr r3, [r4]
0039e1fc  04 00 a0 e1                                      mov r0, r4
0039e200  02 20 95 e7                                      ldr r2, [r5, r2]
0039e204  00 70 92 e5                                      ldr r7, [r2]
0039e208  0f e0 a0 e1                                      mov lr, pc
0039e20c  ec f0 93 e5                                      ldr pc, [r3, #0xec]
0039e210  68 e1 94 e5                                      ldr lr, [r4, #0x168]
0039e214  60 61 94 e5                                      ldr r6, [r4, #0x160]
0039e218  64 51 94 e5                                      ldr r5, [r4, #0x164]
0039e21c  bf c4 a0 e3                                      mov ip, #0xbf000000
0039e220  02 c5 8c e2                                      add ip, ip, #0x800000
0039e224  00 10 a0 e1                                      mov r1, r0
0039e228  1c e0 8d e5                                      str lr, [sp, #0x1c]
0039e22c  07 00 a0 e1                                      mov r0, r7
0039e230  01 e0 a0 e3                                      mov lr, #1
0039e234  14 20 8d e2                                      add r2, sp, #0x14
0039e238  00 30 a0 e3                                      mov r3, #0
0039e23c  14 60 8d e5                                      str r6, [sp, #0x14]
0039e240  18 50 8d e5                                      str r5, [sp, #0x18]
0039e244  00 e0 8d e5                                      str lr, [sp]
0039e248  08 c0 8d e5                                      str ip, [sp, #8]
0039e24c  04 c0 8d e5                                      str ip, [sp, #4]
0039e250  e0 34 ff eb                                      bl #0x36b5d8
0039e254  24 d0 8d e2                                      add sp, sp, #0x24
0039e258  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0039e25c  f0 33 90 e5                                      ldr r3, [r0, #0x3f0]
0039e260  00 00 53 e3                                      cmp r3, #0
0039e264  df ff ff 0a                                      beq #0x39e1e8
0039e268  3e 7e 80 e2                                      add r7, r0, #0x3e0
0039e26c  07 00 a0 e1                                      mov r0, r7
0039e270  e4 13 94 e5                                      ldr r1, [r4, #0x3e4]
0039e274  e8 e8 ff eb                                      bl #0x39861c
0039e278  ec 73 84 e5                                      str r7, [r4, #0x3ec]
0039e27c  f0 63 84 e5                                      str r6, [r4, #0x3f0]
0039e280  e8 73 84 e5                                      str r7, [r4, #0x3e8]
0039e284  e4 63 84 e5                                      str r6, [r4, #0x3e4]
0039e288  d6 ff ff ea                                      b #0x39e1e8
; mapping-symbol data/literal pool
0039e28c  e0 68 5f 00 00 49 52 00 a4 0d 00 00              .byte 0xe0, 0x68, 0x5f, 0x00, 0x00, 0x49, 0x52, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x0039e298, declared_size=480, range_size=480, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap6CreateEP10GameObjectii
; demangled: TriggerTrap::Create(GameObject*, int, int)
; decoder-mode: arm
0039e298  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0039e29c  a4 41 9f e5                                      ldr r4, [pc, #0x1a4]
0039e2a0  a4 51 9f e5                                      ldr r5, [pc, #0x1a4]
0039e2a4  30 d0 4d e2                                      sub sp, sp, #0x30
0039e2a8  04 40 8f e0                                      add r4, pc, r4
0039e2ac  05 30 94 e7                                      ldr r3, [r4, r5]
0039e2b0  00 70 50 e2                                      subs r7, r0, #0
0039e2b4  01 80 a0 e1                                      mov r8, r1
0039e2b8  00 30 93 e5                                      ldr r3, [r3]
0039e2bc  02 90 a0 e1                                      mov sb, r2
0039e2c0  2c 30 8d e5                                      str r3, [sp, #0x2c]
0039e2c4  47 00 00 0a                                      beq #0x39e3e8
0039e2c8  80 31 9f e5                                      ldr r3, [pc, #0x180]
0039e2cc  80 11 9f e5                                      ldr r1, [pc, #0x180]
0039e2d0  18 a0 8d e2                                      add sl, sp, #0x18
0039e2d4  03 30 8f e0                                      add r3, pc, r3
0039e2d8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0039e2dc  01 10 8f e0                                      add r1, pc, r1
0039e2e0  0a 00 a0 e1                                      mov r0, sl
0039e2e4  01 20 82 e2                                      add r2, r2, #1
0039e2e8  0c 20 83 e5                                      str r2, [r3, #0xc]
0039e2ec  fc c1 fd eb                                      bl #0x30eae4
0039e2f0  60 31 9f e5                                      ldr r3, [pc, #0x160]
0039e2f4  60 21 9f e5                                      ldr r2, [pc, #0x160]
0039e2f8  0c 60 8d e2                                      add r6, sp, #0xc
0039e2fc  03 10 94 e7                                      ldr r1, [r4, r3]
0039e300  01 c0 a0 e3                                      mov ip, #1
0039e304  06 00 a0 e1                                      mov r0, r6
0039e308  38 10 91 e5                                      ldr r1, [r1, #0x38]
0039e30c  02 20 8f e0                                      add r2, pc, r2
0039e310  0a 30 a0 e1                                      mov r3, sl
0039e314  04 c0 8d e5                                      str ip, [sp, #4]
0039e318  00 c0 8d e5                                      str ip, [sp]
0039e31c  00 b5 fe eb                                      bl #0x34b724
0039e320  06 00 a0 e1                                      mov r0, r6
0039e324  00 10 a0 e3                                      mov r1, #0
0039e328  a4 86 fe eb                                      bl #0x33fdc0
0039e32c  00 60 50 e2                                      subs r6, r0, #0
0039e330  02 00 00 0a                                      beq #0x39e340
0039e334  f4 30 96 e5                                      ldr r3, [r6, #0xf4]
0039e338  0f 00 53 e3                                      cmp r3, #0xf
0039e33c  08 00 00 0a                                      beq #0x39e364
0039e340  00 60 a0 e3                                      mov r6, #0
0039e344  05 30 94 e7                                      ldr r3, [r4, r5]
0039e348  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0039e34c  06 00 a0 e1                                      mov r0, r6
0039e350  00 30 93 e5                                      ldr r3, [r3]
0039e354  03 00 52 e1                                      cmp r2, r3
0039e358  39 00 00 1a                                      bne #0x39e444
0039e35c  30 d0 8d e2                                      add sp, sp, #0x30
0039e360  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0039e364  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0039e368  f8 73 86 e5                                      str r7, [r6, #0x3f8]
0039e36c  c0 83 86 e5                                      str r8, [r6, #0x3c0]
0039e370  03 30 94 e7                                      ldr r3, [r4, r3]
0039e374  00 30 93 e5                                      ldr r3, [r3]
0039e378  08 81 93 e7                                      ldr r8, [r3, r8, lsl #2]
0039e37c  08 00 a0 e1                                      mov r0, r8
0039e380  b3 be fd eb                                      bl #0x30de54
0039e384  08 10 a0 e1                                      mov r1, r8
0039e388  00 20 88 e0                                      add r2, r8, r0
0039e38c  ea 0f 86 e2                                      add r0, r6, #0x3a8
0039e390  92 c9 fd eb                                      bl #0x3109e0
0039e394  fc 93 86 e5                                      str sb, [r6, #0x3fc]
0039e398  60 21 97 e5                                      ldr r2, [r7, #0x160]
0039e39c  06 00 a0 e1                                      mov r0, r6
0039e3a0  00 30 96 e5                                      ldr r3, [r6]
0039e3a4  60 21 86 e5                                      str r2, [r6, #0x160]
0039e3a8  64 21 97 e5                                      ldr r2, [r7, #0x164]
0039e3ac  64 21 86 e5                                      str r2, [r6, #0x164]
0039e3b0  68 21 97 e5                                      ldr r2, [r7, #0x168]
0039e3b4  68 21 86 e5                                      str r2, [r6, #0x168]
0039e3b8  0f e0 a0 e1                                      mov lr, pc
0039e3bc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0039e3c0  06 00 a0 e1                                      mov r0, r6
0039e3c4  00 30 96 e5                                      ldr r3, [r6]
0039e3c8  0f e0 a0 e1                                      mov lr, pc
0039e3cc  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0039e3d0  f4 02 97 e5                                      ldr r0, [r7, #0x2f4]
0039e3d4  00 00 50 e3                                      cmp r0, #0
0039e3d8  d9 ff ff 0a                                      beq #0x39e344
0039e3dc  06 10 a0 e1                                      mov r1, r6
0039e3e0  aa e1 ff eb                                      bl #0x396a90
0039e3e4  d6 ff ff ea                                      b #0x39e344
0039e3e8  74 30 9f e5                                      ldr r3, [pc, #0x74]
0039e3ec  03 30 94 e7                                      ldr r3, [r4, r3]
0039e3f0  00 30 93 e5                                      ldr r3, [r3]
0039e3f4  02 00 53 e3                                      cmp r3, #2
0039e3f8  00 70 87 05                                      streq r7, [r7]
0039e3fc  07 60 a0 01                                      moveq r6, r7
0039e400  cf ff ff 0a                                      beq #0x39e344
0039e404  01 00 53 e3                                      cmp r3, #1
0039e408  cc ff ff 1a                                      bne #0x39e340
0039e40c  54 00 9f e5                                      ldr r0, [pc, #0x54]
0039e410  54 10 9f e5                                      ldr r1, [pc, #0x54]
0039e414  54 20 9f e5                                      ldr r2, [pc, #0x54]
0039e418  00 00 94 e7                                      ldr r0, [r4, r0]
0039e41c  50 30 9f e5                                      ldr r3, [pc, #0x50]
0039e420  e5 c0 a0 e3                                      mov ip, #0xe5
0039e424  01 10 8f e0                                      add r1, pc, r1
0039e428  a8 00 80 e2                                      add r0, r0, #0xa8
0039e42c  02 20 8f e0                                      add r2, pc, r2
0039e430  03 30 8f e0                                      add r3, pc, r3
0039e434  00 c0 8d e5                                      str ip, [sp]
0039e438  07 60 a0 e1                                      mov r6, r7
0039e43c  f0 be fd eb                                      bl #0x30e004
0039e440  bf ff ff ea                                      b #0x39e344
0039e444  b1 bf fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0039e448  e8 67 5f 00 ac 40 00 00 e4 45 60 00 24 4c 52 00  .byte 0xe8, 0x67, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x45, 0x60, 0x00, 0x24, 0x4c, 0x52, 0x00
0039e458  f4 37 00 00 24 22 52 00 2c 06 00 00 c0 39 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x24, 0x22, 0x52, 0x00, 0x2c, 0x06, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0039e468  c0 19 00 00 b4 ff 51 00 cc 49 52 00 80 4a 52 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xb4, 0xff, 0x51, 0x00, 0xcc, 0x49, 0x52, 0x00, 0x80, 0x4a, 0x52, 0x00

; FUNCTION 0x0039e478, declared_size=8, range_size=8, mode=arm
; class-group: TriggerTrap
; alias: _ZThn36_N11TriggerTrapD1Ev
; demangled: non-virtual thunk to TriggerTrap::~TriggerTrap()
; decoder-mode: arm
0039e478  24 00 40 e2                                      sub r0, r0, #0x24
0039e47c  ff ff ff ea                                      b #0x39e480

; FUNCTION 0x0039e480, declared_size=228, range_size=228, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrapD1Ev
; demangled: TriggerTrap::~TriggerTrap()
; decoder-mode: arm
0039e480  70 40 2d e9                                      push {r4, r5, r6, lr}
0039e484  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
0039e488  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
0039e48c  f0 13 90 e5                                      ldr r1, [r0, #0x3f0]
0039e490  02 20 8f e0                                      add r2, pc, r2
0039e494  03 30 92 e7                                      ldr r3, [r2, r3]
0039e498  00 00 51 e3                                      cmp r1, #0
0039e49c  00 40 a0 e1                                      mov r4, r0
0039e4a0  45 2f 83 e2                                      add r2, r3, #0x114
0039e4a4  08 10 83 e2                                      add r1, r3, #8
0039e4a8  42 3f 83 e2                                      add r3, r3, #0x108
0039e4ac  0a 00 80 e8                                      stm r0, {r1, r3}
0039e4b0  24 20 80 e5                                      str r2, [r0, #0x24]
0039e4b4  08 00 00 0a                                      beq #0x39e4dc
0039e4b8  3e 5e 80 e2                                      add r5, r0, #0x3e0
0039e4bc  05 00 a0 e1                                      mov r0, r5
0039e4c0  e4 13 94 e5                                      ldr r1, [r4, #0x3e4]
0039e4c4  54 e8 ff eb                                      bl #0x39861c
0039e4c8  00 30 a0 e3                                      mov r3, #0
0039e4cc  ec 53 84 e5                                      str r5, [r4, #0x3ec]
0039e4d0  f0 33 84 e5                                      str r3, [r4, #0x3f0]
0039e4d4  e8 53 84 e5                                      str r5, [r4, #0x3e8]
0039e4d8  e4 33 84 e5                                      str r3, [r4, #0x3e4]
0039e4dc  d8 33 94 e5                                      ldr r3, [r4, #0x3d8]
0039e4e0  00 00 53 e3                                      cmp r3, #0
0039e4e4  08 00 00 0a                                      beq #0x39e50c
0039e4e8  f2 5f 84 e2                                      add r5, r4, #0x3c8
0039e4ec  05 00 a0 e1                                      mov r0, r5
0039e4f0  cc 13 94 e5                                      ldr r1, [r4, #0x3cc]
0039e4f4  48 e8 ff eb                                      bl #0x39861c
0039e4f8  00 30 a0 e3                                      mov r3, #0
0039e4fc  d4 53 84 e5                                      str r5, [r4, #0x3d4]
0039e500  d8 33 84 e5                                      str r3, [r4, #0x3d8]
0039e504  d0 53 84 e5                                      str r5, [r4, #0x3d0]
0039e508  cc 33 84 e5                                      str r3, [r4, #0x3cc]
0039e50c  ea 3f 84 e2                                      add r3, r4, #0x3a8
0039e510  14 00 93 e5                                      ldr r0, [r3, #0x14]
0039e514  03 00 50 e1                                      cmp r0, r3
0039e518  06 00 00 0a                                      beq #0x39e538
0039e51c  00 00 50 e3                                      cmp r0, #0
0039e520  04 00 00 0a                                      beq #0x39e538
0039e524  a8 13 94 e5                                      ldr r1, [r4, #0x3a8]
0039e528  01 10 60 e0                                      rsb r1, r0, r1
0039e52c  80 00 51 e3                                      cmp r1, #0x80
0039e530  04 00 00 8a                                      bhi #0x39e548
0039e534  71 aa 0d eb                                      bl #0x708f00
0039e538  04 00 a0 e1                                      mov r0, r4
0039e53c  6c e8 ff eb                                      bl #0x3986f4
0039e540  04 00 a0 e1                                      mov r0, r4
0039e544  70 80 bd e8                                      pop {r4, r5, r6, pc}
0039e548  bc c7 fd eb                                      bl #0x310440
0039e54c  04 00 a0 e1                                      mov r0, r4
0039e550  67 e8 ff eb                                      bl #0x3986f4
0039e554  04 00 a0 e1                                      mov r0, r4
0039e558  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039e55c  00 66 5f 00 c8 1d 00 00                          .byte 0x00, 0x66, 0x5f, 0x00, 0xc8, 0x1d, 0x00, 0x00

; FUNCTION 0x0039e564, declared_size=8, range_size=8, mode=arm
; class-group: TriggerTrap
; alias: _ZThn36_N11TriggerTrapD0Ev
; demangled: non-virtual thunk to TriggerTrap::~TriggerTrap()
; decoder-mode: arm
0039e564  24 00 40 e2                                      sub r0, r0, #0x24
0039e568  ff ff ff ea                                      b #0x39e56c

; FUNCTION 0x0039e56c, declared_size=28, range_size=28, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrapD0Ev
; demangled: TriggerTrap::~TriggerTrap()
; decoder-mode: arm
0039e56c  10 40 2d e9                                      push {r4, lr}
0039e570  00 40 a0 e1                                      mov r4, r0
0039e574  c1 ff ff eb                                      bl #0x39e480
0039e578  04 00 a0 e1                                      mov r0, r4
0039e57c  af c7 fd eb                                      bl #0x310440
0039e580  04 00 a0 e1                                      mov r0, r4
0039e584  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0039e58c, declared_size=228, range_size=228, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrapD2Ev
; demangled: TriggerTrap::~TriggerTrap()
; decoder-mode: arm
0039e58c  70 40 2d e9                                      push {r4, r5, r6, lr}
0039e590  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
0039e594  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
0039e598  f0 13 90 e5                                      ldr r1, [r0, #0x3f0]
0039e59c  02 20 8f e0                                      add r2, pc, r2
0039e5a0  03 30 92 e7                                      ldr r3, [r2, r3]
0039e5a4  00 00 51 e3                                      cmp r1, #0
0039e5a8  00 40 a0 e1                                      mov r4, r0
0039e5ac  45 2f 83 e2                                      add r2, r3, #0x114
0039e5b0  08 10 83 e2                                      add r1, r3, #8
0039e5b4  42 3f 83 e2                                      add r3, r3, #0x108
0039e5b8  0a 00 80 e8                                      stm r0, {r1, r3}
0039e5bc  24 20 80 e5                                      str r2, [r0, #0x24]
0039e5c0  08 00 00 0a                                      beq #0x39e5e8
0039e5c4  3e 5e 80 e2                                      add r5, r0, #0x3e0
0039e5c8  05 00 a0 e1                                      mov r0, r5
0039e5cc  e4 13 94 e5                                      ldr r1, [r4, #0x3e4]
0039e5d0  11 e8 ff eb                                      bl #0x39861c
0039e5d4  00 30 a0 e3                                      mov r3, #0
0039e5d8  ec 53 84 e5                                      str r5, [r4, #0x3ec]
0039e5dc  f0 33 84 e5                                      str r3, [r4, #0x3f0]
0039e5e0  e8 53 84 e5                                      str r5, [r4, #0x3e8]
0039e5e4  e4 33 84 e5                                      str r3, [r4, #0x3e4]
0039e5e8  d8 33 94 e5                                      ldr r3, [r4, #0x3d8]
0039e5ec  00 00 53 e3                                      cmp r3, #0
0039e5f0  08 00 00 0a                                      beq #0x39e618
0039e5f4  f2 5f 84 e2                                      add r5, r4, #0x3c8
0039e5f8  05 00 a0 e1                                      mov r0, r5
0039e5fc  cc 13 94 e5                                      ldr r1, [r4, #0x3cc]
0039e600  05 e8 ff eb                                      bl #0x39861c
0039e604  00 30 a0 e3                                      mov r3, #0
0039e608  d4 53 84 e5                                      str r5, [r4, #0x3d4]
0039e60c  d8 33 84 e5                                      str r3, [r4, #0x3d8]
0039e610  d0 53 84 e5                                      str r5, [r4, #0x3d0]
0039e614  cc 33 84 e5                                      str r3, [r4, #0x3cc]
0039e618  ea 3f 84 e2                                      add r3, r4, #0x3a8
0039e61c  14 00 93 e5                                      ldr r0, [r3, #0x14]
0039e620  03 00 50 e1                                      cmp r0, r3
0039e624  06 00 00 0a                                      beq #0x39e644
0039e628  00 00 50 e3                                      cmp r0, #0
0039e62c  04 00 00 0a                                      beq #0x39e644
0039e630  a8 13 94 e5                                      ldr r1, [r4, #0x3a8]
0039e634  01 10 60 e0                                      rsb r1, r0, r1
0039e638  80 00 51 e3                                      cmp r1, #0x80
0039e63c  04 00 00 8a                                      bhi #0x39e654
0039e640  2e aa 0d eb                                      bl #0x708f00
0039e644  04 00 a0 e1                                      mov r0, r4
0039e648  29 e8 ff eb                                      bl #0x3986f4
0039e64c  04 00 a0 e1                                      mov r0, r4
0039e650  70 80 bd e8                                      pop {r4, r5, r6, pc}
0039e654  79 c7 fd eb                                      bl #0x310440
0039e658  04 00 a0 e1                                      mov r0, r4
0039e65c  24 e8 ff eb                                      bl #0x3986f4
0039e660  04 00 a0 e1                                      mov r0, r4
0039e664  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039e668  f4 64 5f 00 c8 1d 00 00                          .byte 0xf4, 0x64, 0x5f, 0x00, 0xc8, 0x1d, 0x00, 0x00

; FUNCTION 0x0039e670, declared_size=200, range_size=200, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrapC2EN10ObjectBase6GO_IDSE
; demangled: TriggerTrap::TriggerTrap(ObjectBase::GO_IDS)
; decoder-mode: arm
0039e670  70 40 2d e9                                      push {r4, r5, r6, lr}
0039e674  01 20 a0 e3                                      mov r2, #1
0039e678  00 30 a0 e3                                      mov r3, #0
0039e67c  ac 50 9f e5                                      ldr r5, [pc, #0xac]
0039e680  00 40 a0 e1                                      mov r4, r0
0039e684  27 e6 ff eb                                      bl #0x397f28
0039e688  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0039e68c  05 50 8f e0                                      add r5, pc, r5
0039e690  ea 2f 84 e2                                      add r2, r4, #0x3a8
0039e694  03 30 95 e7                                      ldr r3, [r5, r3]
0039e698  02 00 a0 e1                                      mov r0, r2
0039e69c  b8 23 84 e5                                      str r2, [r4, #0x3b8]
0039e6a0  08 c0 83 e2                                      add ip, r3, #8
0039e6a4  45 1f 83 e2                                      add r1, r3, #0x114
0039e6a8  42 3f 83 e2                                      add r3, r3, #0x108
0039e6ac  04 30 84 e5                                      str r3, [r4, #4]
0039e6b0  24 10 84 e5                                      str r1, [r4, #0x24]
0039e6b4  bc 23 84 e5                                      str r2, [r4, #0x3bc]
0039e6b8  00 c0 84 e5                                      str ip, [r4]
0039e6bc  10 10 a0 e3                                      mov r1, #0x10
0039e6c0  ed cb fd eb                                      bl #0x31167c
0039e6c4  b8 23 94 e5                                      ldr r2, [r4, #0x3b8]
0039e6c8  00 30 a0 e3                                      mov r3, #0
0039e6cc  04 10 a0 e1                                      mov r1, r4
0039e6d0  00 00 e0 e3                                      mvn r0, #0
0039e6d4  00 30 c2 e5                                      strb r3, [r2]
0039e6d8  c0 03 84 e5                                      str r0, [r4, #0x3c0]
0039e6dc  04 20 a0 e1                                      mov r2, r4
0039e6e0  c4 33 c4 e5                                      strb r3, [r4, #0x3c4]
0039e6e4  cc 33 84 e5                                      str r3, [r4, #0x3cc]
0039e6e8  c8 33 e1 e5                                      strb r3, [r1, #0x3c8]!
0039e6ec  d4 13 84 e5                                      str r1, [r4, #0x3d4]
0039e6f0  d0 13 84 e5                                      str r1, [r4, #0x3d0]
0039e6f4  d8 33 84 e5                                      str r3, [r4, #0x3d8]
0039e6f8  01 10 a0 e3                                      mov r1, #1
0039e6fc  e4 33 84 e5                                      str r3, [r4, #0x3e4]
0039e700  e0 33 e2 e5                                      strb r3, [r2, #0x3e0]!
0039e704  ec 23 84 e5                                      str r2, [r4, #0x3ec]
0039e708  fc 03 84 e5                                      str r0, [r4, #0x3fc]
0039e70c  01 34 c4 e5                                      strb r3, [r4, #0x401]
0039e710  85 10 c4 e5                                      strb r1, [r4, #0x85]
0039e714  e8 23 84 e5                                      str r2, [r4, #0x3e8]
0039e718  f0 33 84 e5                                      str r3, [r4, #0x3f0]
0039e71c  f8 33 84 e5                                      str r3, [r4, #0x3f8]
0039e720  00 34 c4 e5                                      strb r3, [r4, #0x400]
0039e724  84 10 c4 e5                                      strb r1, [r4, #0x84]
0039e728  04 00 a0 e1                                      mov r0, r4
0039e72c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039e730  04 64 5f 00 c8 1d 00 00                          .byte 0x04, 0x64, 0x5f, 0x00, 0xc8, 0x1d, 0x00, 0x00

; FUNCTION 0x0039e738, declared_size=428, range_size=428, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap10__CallbackEPN6glitch5scene19ITimelineControllerEPv
; demangled: TriggerTrap::__Callback(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
0039e738  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039e73c  88 41 9f e5                                      ldr r4, [pc, #0x188]
0039e740  88 51 9f e5                                      ldr r5, [pc, #0x188]
0039e744  88 21 9f e5                                      ldr r2, [pc, #0x188]
0039e748  04 40 8f e0                                      add r4, pc, r4
0039e74c  05 30 94 e7                                      ldr r3, [r4, r5]
0039e750  02 80 94 e7                                      ldr r8, [r4, r2]
0039e754  28 d0 4d e2                                      sub sp, sp, #0x28
0039e758  00 30 93 e5                                      ldr r3, [r3]
0039e75c  08 00 a0 e1                                      mov r0, r8
0039e760  01 60 a0 e1                                      mov r6, r1
0039e764  24 30 8d e5                                      str r3, [sp, #0x24]
0039e768  46 64 fe eb                                      bl #0x337888
0039e76c  64 11 9f e5                                      ldr r1, [pc, #0x164]
0039e770  0c 70 8d e2                                      add r7, sp, #0xc
0039e774  08 20 8d e2                                      add r2, sp, #8
0039e778  01 10 8f e0                                      add r1, pc, r1
0039e77c  07 00 a0 e1                                      mov r0, r7
0039e780  59 d6 fd eb                                      bl #0x3140ec
0039e784  08 00 a0 e1                                      mov r0, r8
0039e788  07 10 a0 e1                                      mov r1, r7
0039e78c  bd 64 fe eb                                      bl #0x337a88
0039e790  20 00 9d e5                                      ldr r0, [sp, #0x20]
0039e794  07 00 50 e1                                      cmp r0, r7
0039e798  06 00 00 0a                                      beq #0x39e7b8
0039e79c  00 00 50 e3                                      cmp r0, #0
0039e7a0  04 00 00 0a                                      beq #0x39e7b8
0039e7a4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0039e7a8  01 10 60 e0                                      rsb r1, r0, r1
0039e7ac  80 00 51 e3                                      cmp r1, #0x80
0039e7b0  39 00 00 8a                                      bhi #0x39e89c
0039e7b4  d1 a9 0d eb                                      bl #0x708f00
0039e7b8  00 74 d6 e5                                      ldrb r7, [r6, #0x400]
0039e7bc  00 00 57 e3                                      cmp r7, #0
0039e7c0  2d 00 00 1a                                      bne #0x39e87c
0039e7c4  c4 33 d6 e5                                      ldrb r3, [r6, #0x3c4]
0039e7c8  00 00 53 e3                                      cmp r3, #0
0039e7cc  17 00 00 1a                                      bne #0x39e830
0039e7d0  01 c4 d6 e5                                      ldrb ip, [r6, #0x401]
0039e7d4  00 00 5c e3                                      cmp ip, #0
0039e7d8  0d 00 00 1a                                      bne #0x39e814
0039e7dc  d8 32 96 e5                                      ldr r3, [r6, #0x2d8]
0039e7e0  01 20 a0 e3                                      mov r2, #1
0039e7e4  01 24 c6 e5                                      strb r2, [r6, #0x401]
0039e7e8  00 00 53 e3                                      cmp r3, #0
0039e7ec  08 00 00 0a                                      beq #0x39e814
0039e7f0  38 e0 93 e5                                      ldr lr, [r3, #0x38]
0039e7f4  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
0039e7f8  0c 30 a0 e1                                      mov r3, ip
0039e7fc  00 60 9e e5                                      ldr r6, [lr]
0039e800  0e 00 a0 e1                                      mov r0, lr
0039e804  01 10 8f e0                                      add r1, pc, r1
0039e808  00 c0 8d e5                                      str ip, [sp]
0039e80c  0f e0 a0 e1                                      mov lr, pc
0039e810  20 f0 96 e5                                      ldr pc, [r6, #0x20]
0039e814  05 30 94 e7                                      ldr r3, [r4, r5]
0039e818  24 20 9d e5                                      ldr r2, [sp, #0x24]
0039e81c  00 30 93 e5                                      ldr r3, [r3]
0039e820  03 00 52 e1                                      cmp r2, r3
0039e824  27 00 00 1a                                      bne #0x39e8c8
0039e828  28 d0 8d e2                                      add sp, sp, #0x28
0039e82c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0039e830  f0 33 96 e5                                      ldr r3, [r6, #0x3f0]
0039e834  c4 73 c6 e5                                      strb r7, [r6, #0x3c4]
0039e838  00 00 53 e3                                      cmp r3, #0
0039e83c  18 00 00 1a                                      bne #0x39e8a4
0039e840  d8 32 96 e5                                      ldr r3, [r6, #0x2d8]
0039e844  00 00 53 e3                                      cmp r3, #0
0039e848  f1 ff ff 0a                                      beq #0x39e814
0039e84c  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0039e850  88 10 9f e5                                      ldr r1, [pc, #0x88]
0039e854  00 20 a0 e3                                      mov r2, #0
0039e858  02 30 a0 e1                                      mov r3, r2
0039e85c  0c 00 a0 e1                                      mov r0, ip
0039e860  01 10 8f e0                                      add r1, pc, r1
0039e864  00 c0 9c e5                                      ldr ip, [ip]
0039e868  00 20 8d e5                                      str r2, [sp]
0039e86c  01 20 a0 e3                                      mov r2, #1
0039e870  0f e0 a0 e1                                      mov lr, pc
0039e874  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039e878  e5 ff ff ea                                      b #0x39e814
0039e87c  06 00 a0 e1                                      mov r0, r6
0039e880  00 30 96 e5                                      ldr r3, [r6]
0039e884  00 10 a0 e3                                      mov r1, #0
0039e888  0f e0 a0 e1                                      mov lr, pc
0039e88c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0039e890  06 00 a0 e1                                      mov r0, r6
0039e894  46 7d fe eb                                      bl #0x33ddb4
0039e898  dd ff ff ea                                      b #0x39e814
0039e89c  e7 c6 fd eb                                      bl #0x310440
0039e8a0  c4 ff ff ea                                      b #0x39e7b8
0039e8a4  3e 8e 86 e2                                      add r8, r6, #0x3e0
0039e8a8  08 00 a0 e1                                      mov r0, r8
0039e8ac  e4 13 96 e5                                      ldr r1, [r6, #0x3e4]
0039e8b0  59 e7 ff eb                                      bl #0x39861c
0039e8b4  ec 83 86 e5                                      str r8, [r6, #0x3ec]
0039e8b8  f0 73 86 e5                                      str r7, [r6, #0x3f0]
0039e8bc  e8 83 86 e5                                      str r8, [r6, #0x3e8]
0039e8c0  e4 73 86 e5                                      str r7, [r6, #0x3e4]
0039e8c4  dd ff ff ea                                      b #0x39e840
0039e8c8  90 be fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0039e8cc  48 63 5f 00 ac 40 00 00 84 08 00 00 a0 47 52 00  .byte 0x48, 0x63, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xa0, 0x47, 0x52, 0x00
0039e8dc  ac 3a 52 00 50 3a 52 00                          .byte 0xac, 0x3a, 0x52, 0x00, 0x50, 0x3a, 0x52, 0x00

; FUNCTION 0x0039e8e4, declared_size=8, range_size=8, mode=arm
; class-group: TriggerTrap
; alias: _ZThn4_N11TriggerTrap17DeclarePropertiesEv
; demangled: non-virtual thunk to TriggerTrap::DeclareProperties()
; decoder-mode: arm
0039e8e4  04 00 40 e2                                      sub r0, r0, #4
0039e8e8  ff ff ff ea                                      b #0x39e8ec

; FUNCTION 0x0039e8ec, declared_size=376, range_size=376, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap17DeclarePropertiesEv
; demangled: TriggerTrap::DeclareProperties()
; decoder-mode: arm
0039e8ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0039e8f0  58 41 9f e5                                      ldr r4, [pc, #0x158]
0039e8f4  58 91 9f e5                                      ldr sb, [pc, #0x158]
0039e8f8  3c d0 4d e2                                      sub sp, sp, #0x3c
0039e8fc  04 40 8f e0                                      add r4, pc, r4
0039e900  09 30 94 e7                                      ldr r3, [r4, sb]
0039e904  1c 60 8d e2                                      add r6, sp, #0x1c
0039e908  00 a0 a0 e1                                      mov sl, r0
0039e90c  00 30 93 e5                                      ldr r3, [r3]
0039e910  00 50 a0 e3                                      mov r5, #0
0039e914  04 70 8d e2                                      add r7, sp, #4
0039e918  34 30 8d e5                                      str r3, [sp, #0x34]
0039e91c  35 e5 ff eb                                      bl #0x397df8
0039e920  06 00 a0 e1                                      mov r0, r6
0039e924  10 10 a0 e3                                      mov r1, #0x10
0039e928  2c 60 8d e5                                      str r6, [sp, #0x2c]
0039e92c  30 60 8d e5                                      str r6, [sp, #0x30]
0039e930  51 cb fd eb                                      bl #0x31167c
0039e934  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0039e938  07 00 a0 e1                                      mov r0, r7
0039e93c  14 81 9f e5                                      ldr r8, [pc, #0x114]
0039e940  00 50 c3 e5                                      strb r5, [r3]
0039e944  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0039e948  30 10 9d e5                                      ldr r1, [sp, #0x30]
0039e94c  14 70 8d e5                                      str r7, [sp, #0x14]
0039e950  18 70 8d e5                                      str r7, [sp, #0x18]
0039e954  63 cb fd eb                                      bl #0x3116e8
0039e958  05 10 a0 e1                                      mov r1, r5
0039e95c  38 00 a0 e3                                      mov r0, #0x38
0039e960  02 c7 fd eb                                      bl #0x310570
0039e964  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
0039e968  08 80 8f e0                                      add r8, pc, r8
0039e96c  00 50 a0 e1                                      mov r5, r0
0039e970  03 30 94 e7                                      ldr r3, [r4, r3]
0039e974  08 10 a0 e1                                      mov r1, r8
0039e978  0d 20 a0 e1                                      mov r2, sp
0039e97c  08 30 83 e2                                      add r3, r3, #8
0039e980  08 30 80 e4                                      str r3, [r0], #8
0039e984  d8 d5 fd eb                                      bl #0x3140ec
0039e988  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
0039e98c  ea bf 8a e2                                      add fp, sl, #0x3a8
0039e990  04 a0 8a e2                                      add sl, sl, #4
0039e994  03 30 94 e7                                      ldr r3, [r4, r3]
0039e998  05 00 a0 e1                                      mov r0, r5
0039e99c  0b b0 6a e0                                      rsb fp, sl, fp
0039e9a0  08 30 83 e2                                      add r3, r3, #8
0039e9a4  04 b0 85 e5                                      str fp, [r5, #4]
0039e9a8  20 30 80 e4                                      str r3, [r0], #0x20
0039e9ac  30 00 85 e5                                      str r0, [r5, #0x30]
0039e9b0  34 00 85 e5                                      str r0, [r5, #0x34]
0039e9b4  18 10 9d e5                                      ldr r1, [sp, #0x18]
0039e9b8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0039e9bc  49 cb fd eb                                      bl #0x3116e8
0039e9c0  0a 00 a0 e1                                      mov r0, sl
0039e9c4  08 10 a0 e1                                      mov r1, r8
0039e9c8  05 20 a0 e1                                      mov r2, r5
0039e9cc  c4 d4 05 eb                                      bl #0x513ce4
0039e9d0  18 00 9d e5                                      ldr r0, [sp, #0x18]
0039e9d4  07 00 50 e1                                      cmp r0, r7
0039e9d8  06 00 00 0a                                      beq #0x39e9f8
0039e9dc  00 00 50 e3                                      cmp r0, #0
0039e9e0  04 00 00 0a                                      beq #0x39e9f8
0039e9e4  04 10 9d e5                                      ldr r1, [sp, #4]
0039e9e8  01 10 60 e0                                      rsb r1, r0, r1
0039e9ec  80 00 51 e3                                      cmp r1, #0x80
0039e9f0  13 00 00 8a                                      bhi #0x39ea44
0039e9f4  41 a9 0d eb                                      bl #0x708f00
0039e9f8  30 00 9d e5                                      ldr r0, [sp, #0x30]
0039e9fc  06 00 50 e1                                      cmp r0, r6
0039ea00  06 00 00 0a                                      beq #0x39ea20
0039ea04  00 00 50 e3                                      cmp r0, #0
0039ea08  04 00 00 0a                                      beq #0x39ea20
0039ea0c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0039ea10  01 10 60 e0                                      rsb r1, r0, r1
0039ea14  80 00 51 e3                                      cmp r1, #0x80
0039ea18  07 00 00 8a                                      bhi #0x39ea3c
0039ea1c  37 a9 0d eb                                      bl #0x708f00
0039ea20  09 30 94 e7                                      ldr r3, [r4, sb]
0039ea24  34 20 9d e5                                      ldr r2, [sp, #0x34]
0039ea28  00 30 93 e5                                      ldr r3, [r3]
0039ea2c  03 00 52 e1                                      cmp r2, r3
0039ea30  05 00 00 1a                                      bne #0x39ea4c
0039ea34  3c d0 8d e2                                      add sp, sp, #0x3c
0039ea38  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0039ea3c  7f c6 fd eb                                      bl #0x310440
0039ea40  f6 ff ff ea                                      b #0x39ea20
0039ea44  7d c6 fd eb                                      bl #0x310440
0039ea48  ea ff ff ea                                      b #0x39e9f8
0039ea4c  2f be fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0039ea50  94 61 5f 00 ac 40 00 00 f0 41 52 00 30 23 00 00  .byte 0x94, 0x61, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0x41, 0x52, 0x00, 0x30, 0x23, 0x00, 0x00
0039ea60  94 34 00 00                                      .byte 0x94, 0x34, 0x00, 0x00

; FUNCTION 0x0039ea64, declared_size=44, range_size=44, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap11_GetDamagerERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: TriggerTrap::_GetDamager(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0039ea64  10 40 2d e9                                      push {r4, lr}
0039ea68  00 30 92 e5                                      ldr r3, [r2]
0039ea6c  02 00 a0 e1                                      mov r0, r2
0039ea70  01 40 a0 e1                                      mov r4, r1
0039ea74  0f e0 a0 e1                                      mov lr, pc
0039ea78  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0039ea7c  00 30 a0 e1                                      mov r3, r0
0039ea80  03 10 a0 e1                                      mov r1, r3
0039ea84  04 00 a0 e1                                      mov r0, r4
0039ea88  10 40 bd e8                                      pop {r4, lr}
0039ea8c  24 78 ff ea                                      b #0x37cb24

; FUNCTION 0x0039ea90, declared_size=12, range_size=12, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap9_GetOwnerERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: TriggerTrap::_GetOwner(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0039ea90  01 00 a0 e1                                      mov r0, r1
0039ea94  f8 13 92 e5                                      ldr r1, [r2, #0x3f8]
0039ea98  d6 77 ff ea                                      b #0x37c9f8

; FUNCTION 0x0039ea9c, declared_size=268, range_size=268, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap10CanTriggerEP10GameObject
; demangled: TriggerTrap::CanTrigger(GameObject*)
; decoder-mode: arm
0039ea9c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0039eaa0  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
0039eaa4  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
0039eaa8  00 33 90 e5                                      ldr r3, [r0, #0x300]
0039eaac  04 40 8f e0                                      add r4, pc, r4
0039eab0  07 20 94 e7                                      ldr r2, [r4, r7]
0039eab4  3c d0 4d e2                                      sub sp, sp, #0x3c
0039eab8  00 00 53 e3                                      cmp r3, #0
0039eabc  00 20 92 e5                                      ldr r2, [r2]
0039eac0  00 80 a0 e1                                      mov r8, r0
0039eac4  01 a0 a0 e1                                      mov sl, r1
0039eac8  34 20 8d e5                                      str r2, [sp, #0x34]
0039eacc  20 00 00 0a                                      beq #0x39eb54
0039ead0  04 50 8d e2                                      add r5, sp, #4
0039ead4  0c 60 8d e2                                      add r6, sp, #0xc
0039ead8  05 00 a0 e1                                      mov r0, r5
0039eadc  f4 e9 fd eb                                      bl #0x3192b4
0039eae0  06 00 a0 e1                                      mov r0, r6
0039eae4  52 f2 fd eb                                      bl #0x31b434
0039eae8  05 00 a0 e1                                      mov r0, r5
0039eaec  0a 10 a0 e1                                      mov r1, sl
0039eaf0  0c a1 ff eb                                      bl #0x386f28
0039eaf4  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0039eaf8  00 03 98 e5                                      ldr r0, [r8, #0x300]
0039eafc  05 20 a0 e1                                      mov r2, r5
0039eb00  06 30 a0 e1                                      mov r3, r6
0039eb04  01 10 8f e0                                      add r1, pc, r1
0039eb08  20 76 ff eb                                      bl #0x37c390
0039eb0c  30 20 9d e5                                      ldr r2, [sp, #0x30]
0039eb10  09 00 92 e8                                      ldm r2, {r0, r3}
0039eb14  03 30 60 e0                                      rsb r3, r0, r3
0039eb18  43 32 a0 e1                                      asr r3, r3, #4
0039eb1c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0039eb20  02 23 82 e0                                      add r2, r2, r2, lsl #6
0039eb24  82 21 83 e0                                      add r2, r3, r2, lsl #3
0039eb28  82 27 82 e0                                      add r2, r2, r2, lsl #15
0039eb2c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0039eb30  00 00 53 e3                                      cmp r3, #0
0039eb34  02 00 00 0a                                      beq #0x39eb44
0039eb38  04 30 90 e5                                      ldr r3, [r0, #4]
0039eb3c  01 00 53 e3                                      cmp r3, #1
0039eb40  0b 00 00 0a                                      beq #0x39eb74
0039eb44  06 00 a0 e1                                      mov r0, r6
0039eb48  12 f2 fd eb                                      bl #0x31b398
0039eb4c  05 00 a0 e1                                      mov r0, r5
0039eb50  b4 e9 fd eb                                      bl #0x319228
0039eb54  01 00 a0 e3                                      mov r0, #1
0039eb58  07 30 94 e7                                      ldr r3, [r4, r7]
0039eb5c  34 20 9d e5                                      ldr r2, [sp, #0x34]
0039eb60  00 30 93 e5                                      ldr r3, [r3]
0039eb64  03 00 52 e1                                      cmp r2, r3
0039eb68  0a 00 00 1a                                      bne #0x39eb98
0039eb6c  3c d0 8d e2                                      add sp, sp, #0x3c
0039eb70  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0039eb74  41 f4 fd eb                                      bl #0x31bc80
0039eb78  00 80 50 e2                                      subs r8, r0, #0
0039eb7c  f0 ff ff 1a                                      bne #0x39eb44
0039eb80  06 00 a0 e1                                      mov r0, r6
0039eb84  03 f2 fd eb                                      bl #0x31b398
0039eb88  05 00 a0 e1                                      mov r0, r5
0039eb8c  a5 e9 fd eb                                      bl #0x319228
0039eb90  08 00 a0 e1                                      mov r0, r8
0039eb94  ef ff ff ea                                      b #0x39eb58
0039eb98  dc bd fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0039eb9c  e4 5f 5f 00 ac 40 00 00 e4 3f 52 00              .byte 0xe4, 0x5f, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x3f, 0x52, 0x00

; FUNCTION 0x0039ec78, declared_size=92, range_size=92, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap15__EventCallbackERKN6glitch7collada15STriggeredEventEPv
; demangled: TriggerTrap::__EventCallback(glitch::collada::STriggeredEvent const&, void*)
; decoder-mode: arm
0039ec78  70 40 2d e9                                      push {r4, r5, r6, lr}
0039ec7c  00 33 91 e5                                      ldr r3, [r1, #0x300]
0039ec80  08 d0 4d e2                                      sub sp, sp, #8
0039ec84  01 50 a0 e1                                      mov r5, r1
0039ec88  00 00 53 e3                                      cmp r3, #0
0039ec8c  00 60 a0 e1                                      mov r6, r0
0039ec90  0c 00 00 0a                                      beq #0x39ecc8
0039ec94  0d 00 a0 e1                                      mov r0, sp
0039ec98  85 e9 fd eb                                      bl #0x3192b4
0039ec9c  0d 00 a0 e1                                      mov r0, sp
0039eca0  04 10 96 e5                                      ldr r1, [r6, #4]
0039eca4  d9 ff ff eb                                      bl #0x39ec10
0039eca8  20 10 9f e5                                      ldr r1, [pc, #0x20]
0039ecac  00 03 95 e5                                      ldr r0, [r5, #0x300]
0039ecb0  0d 20 a0 e1                                      mov r2, sp
0039ecb4  01 10 8f e0                                      add r1, pc, r1
0039ecb8  d7 75 ff eb                                      bl #0x37c41c
0039ecbc  0d 00 a0 e1                                      mov r0, sp
0039ecc0  0d 40 a0 e1                                      mov r4, sp
0039ecc4  57 e9 fd eb                                      bl #0x319228
0039ecc8  08 d0 8d e2                                      add sp, sp, #8
0039eccc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039ecd0  7c 42 52 00                                      .byte 0x7c, 0x42, 0x52, 0x00

; FUNCTION 0x0039ecd4, declared_size=200, range_size=200, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrapC1EN10ObjectBase6GO_IDSE
; demangled: TriggerTrap::TriggerTrap(ObjectBase::GO_IDS)
; decoder-mode: arm
0039ecd4  70 40 2d e9                                      push {r4, r5, r6, lr}
0039ecd8  01 20 a0 e3                                      mov r2, #1
0039ecdc  00 30 a0 e3                                      mov r3, #0
0039ece0  ac 50 9f e5                                      ldr r5, [pc, #0xac]
0039ece4  00 40 a0 e1                                      mov r4, r0
0039ece8  8e e4 ff eb                                      bl #0x397f28
0039ecec  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0039ecf0  05 50 8f e0                                      add r5, pc, r5
0039ecf4  ea 2f 84 e2                                      add r2, r4, #0x3a8
0039ecf8  03 30 95 e7                                      ldr r3, [r5, r3]
0039ecfc  02 00 a0 e1                                      mov r0, r2
0039ed00  b8 23 84 e5                                      str r2, [r4, #0x3b8]
0039ed04  08 c0 83 e2                                      add ip, r3, #8
0039ed08  45 1f 83 e2                                      add r1, r3, #0x114
0039ed0c  42 3f 83 e2                                      add r3, r3, #0x108
0039ed10  04 30 84 e5                                      str r3, [r4, #4]
0039ed14  24 10 84 e5                                      str r1, [r4, #0x24]
0039ed18  bc 23 84 e5                                      str r2, [r4, #0x3bc]
0039ed1c  00 c0 84 e5                                      str ip, [r4]
0039ed20  10 10 a0 e3                                      mov r1, #0x10
0039ed24  54 ca fd eb                                      bl #0x31167c
0039ed28  b8 23 94 e5                                      ldr r2, [r4, #0x3b8]
0039ed2c  00 30 a0 e3                                      mov r3, #0
0039ed30  04 10 a0 e1                                      mov r1, r4
0039ed34  00 00 e0 e3                                      mvn r0, #0
0039ed38  00 30 c2 e5                                      strb r3, [r2]
0039ed3c  c0 03 84 e5                                      str r0, [r4, #0x3c0]
0039ed40  04 20 a0 e1                                      mov r2, r4
0039ed44  c4 33 c4 e5                                      strb r3, [r4, #0x3c4]
0039ed48  cc 33 84 e5                                      str r3, [r4, #0x3cc]
0039ed4c  c8 33 e1 e5                                      strb r3, [r1, #0x3c8]!
0039ed50  d4 13 84 e5                                      str r1, [r4, #0x3d4]
0039ed54  d0 13 84 e5                                      str r1, [r4, #0x3d0]
0039ed58  d8 33 84 e5                                      str r3, [r4, #0x3d8]
0039ed5c  01 10 a0 e3                                      mov r1, #1
0039ed60  e4 33 84 e5                                      str r3, [r4, #0x3e4]
0039ed64  e0 33 e2 e5                                      strb r3, [r2, #0x3e0]!
0039ed68  ec 23 84 e5                                      str r2, [r4, #0x3ec]
0039ed6c  fc 03 84 e5                                      str r0, [r4, #0x3fc]
0039ed70  01 34 c4 e5                                      strb r3, [r4, #0x401]
0039ed74  85 10 c4 e5                                      strb r1, [r4, #0x85]
0039ed78  e8 23 84 e5                                      str r2, [r4, #0x3e8]
0039ed7c  f0 33 84 e5                                      str r3, [r4, #0x3f0]
0039ed80  f8 33 84 e5                                      str r3, [r4, #0x3f8]
0039ed84  00 34 c4 e5                                      strb r3, [r4, #0x400]
0039ed88  84 10 c4 e5                                      strb r1, [r4, #0x84]
0039ed8c  04 00 a0 e1                                      mov r0, r4
0039ed90  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039ed94  a0 5d 5f 00 c8 1d 00 00                          .byte 0xa0, 0x5d, 0x5f, 0x00, 0xc8, 0x1d, 0x00, 0x00

; FUNCTION 0x0039eedc, declared_size=652, range_size=652, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap6UpdateEv
; demangled: TriggerTrap::Update()
; decoder-mode: arm
0039eedc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0039eee0  00 50 a0 e1                                      mov r5, r0
0039eee4  64 d0 4d e2                                      sub sp, sp, #0x64
0039eee8  6e e4 ff eb                                      bl #0x3980a8
0039eeec  d8 02 95 e5                                      ldr r0, [r5, #0x2d8]
0039eef0  00 00 50 e3                                      cmp r0, #0
0039eef4  00 00 00 0a                                      beq #0x39eefc
0039eef8  dd b2 ff eb                                      bl #0x38ba74
0039eefc  00 30 95 e5                                      ldr r3, [r5]
0039ef00  05 00 a0 e1                                      mov r0, r5
0039ef04  0f e0 a0 e1                                      mov lr, pc
0039ef08  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
0039ef0c  c0 33 95 e5                                      ldr r3, [r5, #0x3c0]
0039ef10  00 00 53 e3                                      cmp r3, #0
0039ef14  f2 6f 85 b2                                      addlt r6, r5, #0x3c8
0039ef18  3a 00 00 ba                                      blt #0x39f008
0039ef1c  58 90 8d e2                                      add sb, sp, #0x58
0039ef20  09 00 a0 e1                                      mov r0, sb
0039ef24  d0 43 95 e5                                      ldr r4, [r5, #0x3d0]
0039ef28  e1 e8 fd eb                                      bl #0x3192b4
0039ef2c  09 00 a0 e1                                      mov r0, sb
0039ef30  1c ff ff eb                                      bl #0x39eba8
0039ef34  24 32 9f e5                                      ldr r3, [pc, #0x224]
0039ef38  24 b2 9f e5                                      ldr fp, [pc, #0x224]
0039ef3c  f2 6f 85 e2                                      add r6, r5, #0x3c8
0039ef40  03 30 8f e0                                      add r3, pc, r3
0039ef44  10 30 8d e5                                      str r3, [sp, #0x10]
0039ef48  24 30 8d e2                                      add r3, sp, #0x24
0039ef4c  0b b0 8f e0                                      add fp, pc, fp
0039ef50  4c 70 8d e2                                      add r7, sp, #0x4c
0039ef54  14 30 8d e5                                      str r3, [sp, #0x14]
0039ef58  04 00 56 e1                                      cmp r6, r4
0039ef5c  27 00 00 0a                                      beq #0x39f000
0039ef60  10 10 94 e5                                      ldr r1, [r4, #0x10]
0039ef64  07 00 a0 e1                                      mov r0, r7
0039ef68  6f 7b fe eb                                      bl #0x33dd2c
0039ef6c  07 00 a0 e1                                      mov r0, r7
0039ef70  f7 83 fe eb                                      bl #0x33ff54
0039ef74  00 80 50 e2                                      subs r8, r0, #0
0039ef78  13 00 00 0a                                      beq #0x39efcc
0039ef7c  00 a3 95 e5                                      ldr sl, [r5, #0x300]
0039ef80  00 00 5a e3                                      cmp sl, #0
0039ef84  5f 00 00 0a                                      beq #0x39f108
0039ef88  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
0039ef8c  09 00 9a e8                                      ldm sl, {r0, r3}
0039ef90  03 30 60 e0                                      rsb r3, r0, r3
0039ef94  43 32 a0 e1                                      asr r3, r3, #4
0039ef98  83 21 83 e0                                      add r2, r3, r3, lsl #3
0039ef9c  02 23 82 e0                                      add r2, r2, r2, lsl #6
0039efa0  82 21 83 e0                                      add r2, r3, r2, lsl #3
0039efa4  82 27 82 e0                                      add r2, r2, r2, lsl #15
0039efa8  82 31 83 e0                                      add r3, r3, r2, lsl #3
0039efac  00 00 53 e3                                      cmp r3, #0
0039efb0  0e 00 00 0a                                      beq #0x39eff0
0039efb4  08 10 a0 e1                                      mov r1, r8
0039efb8  92 f1 fd eb                                      bl #0x31b608
0039efbc  00 03 95 e5                                      ldr r0, [r5, #0x300]
0039efc0  0b 10 a0 e1                                      mov r1, fp
0039efc4  09 20 a0 e1                                      mov r2, sb
0039efc8  13 75 ff eb                                      bl #0x37c41c
0039efcc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0039efd0  00 00 51 e3                                      cmp r1, #0
0039efd4  3b 00 00 0a                                      beq #0x39f0c8
0039efd8  01 40 a0 e1                                      mov r4, r1
0039efdc  08 30 94 e5                                      ldr r3, [r4, #8]
0039efe0  00 00 53 e3                                      cmp r3, #0
0039efe4  db ff ff 0a                                      beq #0x39ef58
0039efe8  03 40 a0 e1                                      mov r4, r3
0039efec  fa ff ff ea                                      b #0x39efdc
0039eff0  10 00 9d e5                                      ldr r0, [sp, #0x10]
0039eff4  ad a7 0d eb                                      bl #0x708eb0
0039eff8  00 00 9a e5                                      ldr r0, [sl]
0039effc  ec ff ff ea                                      b #0x39efb4
0039f000  09 00 a0 e1                                      mov r0, sb
0039f004  87 e8 fd eb                                      bl #0x319228
0039f008  d0 43 95 e5                                      ldr r4, [r5, #0x3d0]
0039f00c  3e 7e 85 e2                                      add r7, r5, #0x3e0
0039f010  06 00 54 e1                                      cmp r4, r6
0039f014  0f 00 00 0a                                      beq #0x39f058
0039f018  18 80 8d e2                                      add r8, sp, #0x18
0039f01c  10 20 84 e2                                      add r2, r4, #0x10
0039f020  08 00 a0 e1                                      mov r0, r8
0039f024  07 10 a0 e1                                      mov r1, r7
0039f028  f7 e4 ff eb                                      bl #0x39840c
0039f02c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0039f030  00 00 52 e3                                      cmp r2, #0
0039f034  14 00 00 0a                                      beq #0x39f08c
0039f038  02 40 a0 e1                                      mov r4, r2
0039f03c  00 00 00 ea                                      b #0x39f044
0039f040  03 40 a0 e1                                      mov r4, r3
0039f044  08 30 94 e5                                      ldr r3, [r4, #8]
0039f048  00 00 53 e3                                      cmp r3, #0
0039f04c  fb ff ff 1a                                      bne #0x39f040
0039f050  06 00 54 e1                                      cmp r4, r6
0039f054  f0 ff ff 1a                                      bne #0x39f01c
0039f058  d8 33 95 e5                                      ldr r3, [r5, #0x3d8]
0039f05c  00 00 53 e3                                      cmp r3, #0
0039f060  07 00 00 0a                                      beq #0x39f084
0039f064  06 00 a0 e1                                      mov r0, r6
0039f068  cc 13 95 e5                                      ldr r1, [r5, #0x3cc]
0039f06c  6a e5 ff eb                                      bl #0x39861c
0039f070  00 30 a0 e3                                      mov r3, #0
0039f074  d8 33 85 e5                                      str r3, [r5, #0x3d8]
0039f078  d4 43 85 e5                                      str r4, [r5, #0x3d4]
0039f07c  d0 43 85 e5                                      str r4, [r5, #0x3d0]
0039f080  cc 33 85 e5                                      str r3, [r5, #0x3cc]
0039f084  64 d0 8d e2                                      add sp, sp, #0x64
0039f088  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0039f08c  04 30 94 e5                                      ldr r3, [r4, #4]
0039f090  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0039f094  04 00 51 e1                                      cmp r1, r4
0039f098  05 00 00 1a                                      bne #0x39f0b4
0039f09c  03 40 a0 e1                                      mov r4, r3
0039f0a0  04 30 93 e5                                      ldr r3, [r3, #4]
0039f0a4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0039f0a8  04 00 52 e1                                      cmp r2, r4
0039f0ac  fa ff ff 0a                                      beq #0x39f09c
0039f0b0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0039f0b4  02 00 53 e1                                      cmp r3, r2
0039f0b8  03 40 a0 11                                      movne r4, r3
0039f0bc  06 00 54 e1                                      cmp r4, r6
0039f0c0  d5 ff ff 1a                                      bne #0x39f01c
0039f0c4  e3 ff ff ea                                      b #0x39f058
0039f0c8  04 30 94 e5                                      ldr r3, [r4, #4]
0039f0cc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0039f0d0  02 00 54 e1                                      cmp r4, r2
0039f0d4  01 00 00 0a                                      beq #0x39f0e0
0039f0d8  07 00 00 ea                                      b #0x39f0fc
0039f0dc  02 30 a0 e1                                      mov r3, r2
0039f0e0  04 20 93 e5                                      ldr r2, [r3, #4]
0039f0e4  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0039f0e8  03 00 51 e1                                      cmp r1, r3
0039f0ec  fa ff ff 0a                                      beq #0x39f0dc
0039f0f0  03 40 a0 e1                                      mov r4, r3
0039f0f4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0039f0f8  02 30 a0 e1                                      mov r3, r2
0039f0fc  01 00 53 e1                                      cmp r3, r1
0039f100  03 40 a0 11                                      movne r4, r3
0039f104  93 ff ff ea                                      b #0x39ef58
0039f108  00 30 95 e5                                      ldr r3, [r5]
0039f10c  05 00 a0 e1                                      mov r0, r5
0039f110  0f e0 a0 e1                                      mov lr, pc
0039f114  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0039f118  00 30 a0 e1                                      mov r3, r0
0039f11c  00 20 95 e5                                      ldr r2, [r5]
0039f120  05 00 a0 e1                                      mov r0, r5
0039f124  0c 30 8d e5                                      str r3, [sp, #0xc]
0039f128  0f e0 a0 e1                                      mov lr, pc
0039f12c  e8 f0 92 e5                                      ldr pc, [r2, #0xe8]
0039f130  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0039f134  00 00 8d e5                                      str r0, [sp]
0039f138  05 10 a0 e1                                      mov r1, r5
0039f13c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0039f140  08 20 a0 e1                                      mov r2, r8
0039f144  34 45 00 eb                                      bl #0x3b061c
0039f148  14 00 9d e5                                      ldr r0, [sp, #0x14]
0039f14c  05 10 a0 e1                                      mov r1, r5
0039f150  08 20 a0 e1                                      mov r2, r8
0039f154  0a 30 a0 e1                                      mov r3, sl
0039f158  16 44 00 eb                                      bl #0x3b01b8
0039f15c  9a ff ff ea                                      b #0x39efcc
; mapping-symbol data/literal pool
0039f160  28 f5 51 00 f4 3f 52 00                          .byte 0x28, 0xf5, 0x51, 0x00, 0xf4, 0x3f, 0x52, 0x00

; FUNCTION 0x0039f168, declared_size=384, range_size=384, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap15TransferVictimsEv
; demangled: TriggerTrap::TransferVictims()
; decoder-mode: arm
0039f168  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0039f16c  90 43 90 e5                                      ldr r4, [r0, #0x390]
0039f170  10 d0 4d e2                                      sub sp, sp, #0x10
0039f174  00 60 a0 e1                                      mov r6, r0
0039f178  e2 7f 80 e2                                      add r7, r0, #0x388
0039f17c  3e 5e 80 e2                                      add r5, r0, #0x3e0
0039f180  f2 8f 80 e2                                      add r8, r0, #0x3c8
0039f184  04 a0 8d e2                                      add sl, sp, #4
0039f188  0c 90 8d e2                                      add sb, sp, #0xc
0039f18c  04 00 57 e1                                      cmp r7, r4
0039f190  21 00 00 0a                                      beq #0x39f21c
0039f194  e4 33 96 e5                                      ldr r3, [r6, #0x3e4]
0039f198  10 10 94 e5                                      ldr r1, [r4, #0x10]
0039f19c  00 00 53 e3                                      cmp r3, #0
0039f1a0  0c 10 8d e5                                      str r1, [sp, #0xc]
0039f1a4  1e 00 00 0a                                      beq #0x39f224
0039f1a8  05 00 a0 e1                                      mov r0, r5
0039f1ac  00 00 00 ea                                      b #0x39f1b4
0039f1b0  02 30 a0 e1                                      mov r3, r2
0039f1b4  10 20 93 e5                                      ldr r2, [r3, #0x10]
0039f1b8  02 00 51 e1                                      cmp r1, r2
0039f1bc  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0039f1c0  08 20 93 95                                      ldrls r2, [r3, #8]
0039f1c4  00 30 a0 81                                      movhi r3, r0
0039f1c8  03 00 a0 e1                                      mov r0, r3
0039f1cc  00 00 52 e3                                      cmp r2, #0
0039f1d0  f6 ff ff 1a                                      bne #0x39f1b0
0039f1d4  03 00 55 e1                                      cmp r5, r3
0039f1d8  14 00 00 0a                                      beq #0x39f230
0039f1dc  10 20 93 e5                                      ldr r2, [r3, #0x10]
0039f1e0  02 00 51 e1                                      cmp r1, r2
0039f1e4  0e 00 00 3a                                      blo #0x39f224
0039f1e8  03 00 55 e1                                      cmp r5, r3
0039f1ec  0f 00 00 0a                                      beq #0x39f230
0039f1f0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0039f1f4  00 00 52 e3                                      cmp r2, #0
0039f1f8  2d 00 00 0a                                      beq #0x39f2b4
0039f1fc  02 40 a0 e1                                      mov r4, r2
0039f200  00 00 00 ea                                      b #0x39f208
0039f204  03 40 a0 e1                                      mov r4, r3
0039f208  08 30 94 e5                                      ldr r3, [r4, #8]
0039f20c  00 00 53 e3                                      cmp r3, #0
0039f210  fb ff ff 1a                                      bne #0x39f204
0039f214  04 00 57 e1                                      cmp r7, r4
0039f218  dd ff ff 1a                                      bne #0x39f194
0039f21c  10 d0 8d e2                                      add sp, sp, #0x10
0039f220  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0039f224  05 30 a0 e1                                      mov r3, r5
0039f228  03 00 55 e1                                      cmp r5, r3
0039f22c  ef ff ff 1a                                      bne #0x39f1f0
0039f230  cc 33 96 e5                                      ldr r3, [r6, #0x3cc]
0039f234  00 00 53 e3                                      cmp r3, #0
0039f238  0f 00 00 0a                                      beq #0x39f27c
0039f23c  08 00 a0 e1                                      mov r0, r8
0039f240  00 00 00 ea                                      b #0x39f248
0039f244  02 30 a0 e1                                      mov r3, r2
0039f248  10 20 93 e5                                      ldr r2, [r3, #0x10]
0039f24c  02 00 51 e1                                      cmp r1, r2
0039f250  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0039f254  08 20 93 95                                      ldrls r2, [r3, #8]
0039f258  00 30 a0 81                                      movhi r3, r0
0039f25c  03 00 a0 e1                                      mov r0, r3
0039f260  00 00 52 e3                                      cmp r2, #0
0039f264  f6 ff ff 1a                                      bne #0x39f244
0039f268  03 00 58 e1                                      cmp r8, r3
0039f26c  05 00 00 0a                                      beq #0x39f288
0039f270  10 20 93 e5                                      ldr r2, [r3, #0x10]
0039f274  02 00 51 e1                                      cmp r1, r2
0039f278  00 00 00 2a                                      bhs #0x39f280
0039f27c  08 30 a0 e1                                      mov r3, r8
0039f280  03 00 58 e1                                      cmp r8, r3
0039f284  d9 ff ff 1a                                      bne #0x39f1f0
0039f288  06 00 a0 e1                                      mov r0, r6
0039f28c  02 fe ff eb                                      bl #0x39ea9c
0039f290  00 00 50 e3                                      cmp r0, #0
0039f294  d5 ff ff 0a                                      beq #0x39f1f0
0039f298  09 20 a0 e1                                      mov r2, sb
0039f29c  0a 00 a0 e1                                      mov r0, sl
0039f2a0  08 10 a0 e1                                      mov r1, r8
0039f2a4  58 e4 ff eb                                      bl #0x39840c
0039f2a8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0039f2ac  00 00 52 e3                                      cmp r2, #0
0039f2b0  d1 ff ff 1a                                      bne #0x39f1fc
0039f2b4  04 30 94 e5                                      ldr r3, [r4, #4]
0039f2b8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0039f2bc  01 00 54 e1                                      cmp r4, r1
0039f2c0  05 00 00 1a                                      bne #0x39f2dc
0039f2c4  03 40 a0 e1                                      mov r4, r3
0039f2c8  04 30 93 e5                                      ldr r3, [r3, #4]
0039f2cc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0039f2d0  04 00 52 e1                                      cmp r2, r4
0039f2d4  fa ff ff 0a                                      beq #0x39f2c4
0039f2d8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0039f2dc  03 00 52 e1                                      cmp r2, r3
0039f2e0  03 40 a0 11                                      movne r4, r3
0039f2e4  a8 ff ff ea                                      b #0x39f18c

; FUNCTION 0x0039f2e8, declared_size=56, range_size=56, mode=arm
; class-group: TriggerTrap
; alias: _ZN11TriggerTrap14SpecificUpdateEv
; demangled: TriggerTrap::SpecificUpdate()
; decoder-mode: arm
0039f2e8  10 40 2d e9                                      push {r4, lr}
0039f2ec  00 40 a0 e1                                      mov r4, r0
0039f2f0  9c ff ff eb                                      bl #0x39f168
0039f2f4  d8 33 94 e5                                      ldr r3, [r4, #0x3d8]
0039f2f8  00 00 53 e3                                      cmp r3, #0
0039f2fc  06 00 00 0a                                      beq #0x39f31c
0039f300  c4 33 d4 e5                                      ldrb r3, [r4, #0x3c4]
0039f304  00 00 53 e3                                      cmp r3, #0
0039f308  03 00 00 1a                                      bne #0x39f31c
0039f30c  04 00 a0 e1                                      mov r0, r4
0039f310  00 30 94 e5                                      ldr r3, [r4]
0039f314  0f e0 a0 e1                                      mov lr, pc
0039f318  f0 f0 93 e5                                      ldr pc, [r3, #0xf0]
0039f31c  10 80 bd e8                                      pop {r4, pc}
