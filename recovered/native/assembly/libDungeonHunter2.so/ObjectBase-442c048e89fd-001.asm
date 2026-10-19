; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033dcc8, declared_size=8, range_size=8, mode=arm
; class-group: ObjectBase
; alias: _ZNK10ObjectBase12IsGameObjectEv
; demangled: ObjectBase::IsGameObject() const
; decoder-mode: arm
0033dcc8  00 00 a0 e3                                      mov r0, #0
0033dccc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dcd0, declared_size=8, range_size=8, mode=arm
; class-group: ObjectBase
; alias: _ZNK10ObjectBase11IsCharacterEv
; demangled: ObjectBase::IsCharacter() const
; decoder-mode: arm
0033dcd0  00 00 a0 e3                                      mov r0, #0
0033dcd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dcd8, declared_size=8, range_size=8, mode=arm
; class-group: ObjectBase
; alias: _ZNK10ObjectBase8IsPlayerEv
; demangled: ObjectBase::IsPlayer() const
; decoder-mode: arm
0033dcd8  00 00 a0 e3                                      mov r0, #0
0033dcdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dce0, declared_size=8, range_size=8, mode=arm
; class-group: ObjectBase
; alias: _ZNK10ObjectBase6IsDeadEv
; demangled: ObjectBase::IsDead() const
; decoder-mode: arm
0033dce0  00 00 a0 e3                                      mov r0, #0
0033dce4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dce8, declared_size=8, range_size=8, mode=arm
; class-group: ObjectBase
; alias: _ZNK10ObjectBase11IsUpdatableEv
; demangled: ObjectBase::IsUpdatable() const
; decoder-mode: arm
0033dce8  00 00 a0 e3                                      mov r0, #0
0033dcec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dcf0, declared_size=8, range_size=8, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase11setUpdatingEb
; demangled: ObjectBase::setUpdating(bool)
; decoder-mode: arm
0033dcf0  85 10 c0 e5                                      strb r1, [r0, #0x85]
0033dcf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dcf8, declared_size=16, range_size=16, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase10SetVisibleEb
; demangled: ObjectBase::SetVisible(bool)
; decoder-mode: arm
0033dcf8  00 00 51 e3                                      cmp r1, #0
0033dcfc  8a 10 d0 15                                      ldrbne r1, [r0, #0x8a]
0033dd00  80 10 c0 e5                                      strb r1, [r0, #0x80]
0033dd04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dd08, declared_size=4, range_size=4, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase25PopulateOutgoingNetStructEb
; demangled: ObjectBase::PopulateOutgoingNetStruct(bool)
; decoder-mode: arm
0033dd08  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dd0c, declared_size=4, range_size=4, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase26InterpretIncomingNetStructEb
; demangled: ObjectBase::InterpretIncomingNetStruct(bool)
; decoder-mode: arm
0033dd0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dd10, declared_size=20, range_size=20, mode=arm
; class-group: ObjectBase
; alias: _ZNK10ObjectBase17IsRemotelyUpdatedEv
; demangled: ObjectBase::IsRemotelyUpdated() const
; decoder-mode: arm
0033dd10  10 31 90 e5                                      ldr r3, [r0, #0x110]
0033dd14  01 00 73 e3                                      cmn r3, #1
0033dd18  01 00 a0 13                                      movne r0, #1
0033dd1c  18 01 d0 05                                      ldrbeq r0, [r0, #0x118]
0033dd20  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033dd2c, declared_size=68, range_size=68, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase9GetHandleEv
; demangled: ObjectBase::GetHandle()
; decoder-mode: arm
0033dd2c  34 30 9f e5                                      ldr r3, [pc, #0x34]
0033dd30  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033dd34  10 40 2d e9                                      push {r4, lr}
0033dd38  03 30 8f e0                                      add r3, pc, r3
0033dd3c  02 20 93 e7                                      ldr r2, [r3, r2]
0033dd40  2c c0 91 e5                                      ldr ip, [r1, #0x2c]
0033dd44  00 40 a0 e1                                      mov r4, r0
0033dd48  38 e0 92 e5                                      ldr lr, [r2, #0x38]
0033dd4c  0c 20 a0 e3                                      mov r2, #0xc
0033dd50  78 30 9e e5                                      ldr r3, [lr, #0x78]
0033dd54  08 30 8c e5                                      str r3, [ip, #8]
0033dd58  2c 10 91 e5                                      ldr r1, [r1, #0x2c]
0033dd5c  75 40 ff eb                                      bl #0x30df38
0033dd60  04 00 a0 e1                                      mov r0, r4
0033dd64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033dd68  58 6d 65 00 f4 37 00 00                          .byte 0x58, 0x6d, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0033dd70, declared_size=68, range_size=68, mode=arm
; class-group: ObjectBase
; alias: _ZNK10ObjectBase9GetHandleEv
; demangled: ObjectBase::GetHandle() const
; decoder-mode: arm
0033dd70  34 30 9f e5                                      ldr r3, [pc, #0x34]
0033dd74  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033dd78  10 40 2d e9                                      push {r4, lr}
0033dd7c  03 30 8f e0                                      add r3, pc, r3
0033dd80  02 20 93 e7                                      ldr r2, [r3, r2]
0033dd84  2c c0 91 e5                                      ldr ip, [r1, #0x2c]
0033dd88  00 40 a0 e1                                      mov r4, r0
0033dd8c  38 e0 92 e5                                      ldr lr, [r2, #0x38]
0033dd90  0c 20 a0 e3                                      mov r2, #0xc
0033dd94  78 30 9e e5                                      ldr r3, [lr, #0x78]
0033dd98  08 30 8c e5                                      str r3, [ip, #8]
0033dd9c  2c 10 91 e5                                      ldr r1, [r1, #0x2c]
0033dda0  64 40 ff eb                                      bl #0x30df38
0033dda4  04 00 a0 e1                                      mov r0, r4
0033dda8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033ddac  14 6d 65 00 f4 37 00 00                          .byte 0x14, 0x6d, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0033ddb4, declared_size=20, range_size=20, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase6DeleteEv
; demangled: ObjectBase::Delete()
; decoder-mode: arm
0033ddb4  02 30 a0 e3                                      mov r3, #2
0033ddb8  82 30 c0 e5                                      strb r3, [r0, #0x82]
0033ddbc  01 30 a0 e3                                      mov r3, #1
0033ddc0  81 30 c0 e5                                      strb r3, [r0, #0x81]
0033ddc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033ddc8, declared_size=60, range_size=60, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase9SetEnableEb
; demangled: ObjectBase::SetEnable(bool)
; decoder-mode: arm
0033ddc8  8a 20 d0 e5                                      ldrb r2, [r0, #0x8a]
0033ddcc  10 40 2d e9                                      push {r4, lr}
0033ddd0  01 00 52 e1                                      cmp r2, r1
0033ddd4  05 00 00 0a                                      beq #0x33ddf0
0033ddd8  00 00 51 e3                                      cmp r1, #0
0033dddc  8a 10 c0 e5                                      strb r1, [r0, #0x8a]
0033dde0  03 00 00 1a                                      bne #0x33ddf4
0033dde4  00 30 90 e5                                      ldr r3, [r0]
0033dde8  0f e0 a0 e1                                      mov lr, pc
0033ddec  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0033ddf0  10 80 bd e8                                      pop {r4, pc}
0033ddf4  00 30 90 e5                                      ldr r3, [r0]
0033ddf8  0f e0 a0 e1                                      mov lr, pc
0033ddfc  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0033de00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033de04, declared_size=48, range_size=48, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase7EnabledEv
; demangled: ObjectBase::Enabled()
; decoder-mode: arm
0033de04  10 40 2d e9                                      push {r4, lr}
0033de08  01 10 a0 e3                                      mov r1, #1
0033de0c  00 40 a0 e1                                      mov r4, r0
0033de10  00 30 90 e5                                      ldr r3, [r0]
0033de14  0f e0 a0 e1                                      mov lr, pc
0033de18  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0033de1c  04 00 a0 e1                                      mov r0, r4
0033de20  00 30 94 e5                                      ldr r3, [r4]
0033de24  01 10 a0 e3                                      mov r1, #1
0033de28  0f e0 a0 e1                                      mov lr, pc
0033de2c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0033de30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033de34, declared_size=48, range_size=48, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase8DisabledEv
; demangled: ObjectBase::Disabled()
; decoder-mode: arm
0033de34  10 40 2d e9                                      push {r4, lr}
0033de38  00 10 a0 e3                                      mov r1, #0
0033de3c  00 40 a0 e1                                      mov r4, r0
0033de40  00 30 90 e5                                      ldr r3, [r0]
0033de44  0f e0 a0 e1                                      mov lr, pc
0033de48  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0033de4c  04 00 a0 e1                                      mov r0, r4
0033de50  00 30 94 e5                                      ldr r3, [r4]
0033de54  00 10 a0 e3                                      mov r1, #0
0033de58  0f e0 a0 e1                                      mov lr, pc
0033de5c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0033de60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033de90, declared_size=432, range_size=432, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase23TestCullingBeforeUpdateERK4aabbIfE
; demangled: ObjectBase::TestCullingBeforeUpdate(aabb<float> const&)
; decoder-mode: arm
0033de90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0033de94  24 d0 4d e2                                      sub sp, sp, #0x24
0033de98  00 50 a0 e1                                      mov r5, r0
0033de9c  01 60 a0 e1                                      mov r6, r1
0033dea0  3b fe 12 eb                                      bl #0x7fd794
0033dea4  05 30 d0 e5                                      ldrb r3, [r0, #5]
0033dea8  88 41 9f e5                                      ldr r4, [pc, #0x188]
0033deac  00 00 53 e3                                      cmp r3, #0
0033deb0  04 40 8f e0                                      add r4, pc, r4
0033deb4  52 00 00 1a                                      bne #0x33e004
0033deb8  86 30 d5 e5                                      ldrb r3, [r5, #0x86]
0033debc  00 00 53 e3                                      cmp r3, #0
0033dec0  01 00 a0 03                                      moveq r0, #1
0033dec4  86 00 c5 05                                      strbeq r0, [r5, #0x86]
0033dec8  02 00 00 0a                                      beq #0x33ded8
0033decc  01 00 53 e3                                      cmp r3, #1
0033ded0  02 00 00 0a                                      beq #0x33dee0
0033ded4  01 00 a0 e3                                      mov r0, #1
0033ded8  24 d0 8d e2                                      add sp, sp, #0x24
0033dedc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0033dee0  14 30 96 e5                                      ldr r3, [r6, #0x14]
0033dee4  04 30 8d e5                                      str r3, [sp, #4]
0033dee8  00 30 96 e5                                      ldr r3, [r6]
0033deec  18 30 8d e5                                      str r3, [sp, #0x18]
0033def0  44 31 9f e5                                      ldr r3, [pc, #0x144]
0033def4  03 00 94 e7                                      ldr r0, [r4, r3]
0033def8  04 30 96 e5                                      ldr r3, [r6, #4]
0033defc  14 30 8d e5                                      str r3, [sp, #0x14]
0033df00  08 30 96 e5                                      ldr r3, [r6, #8]
0033df04  10 30 8d e5                                      str r3, [sp, #0x10]
0033df08  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0033df0c  0c 30 8d e5                                      str r3, [sp, #0xc]
0033df10  10 60 96 e5                                      ldr r6, [r6, #0x10]
0033df14  08 60 8d e5                                      str r6, [sp, #8]
0033df18  9d 85 ff eb                                      bl #0x31f594
0033df1c  00 00 50 e3                                      cmp r0, #0
0033df20  41 00 00 0a                                      beq #0x33e02c
0033df24  28 31 90 e5                                      ldr r3, [r0, #0x128]
0033df28  00 60 a0 e3                                      mov r6, #0
0033df2c  06 b0 a0 e1                                      mov fp, r6
0033df30  08 30 93 e5                                      ldr r3, [r3, #8]
0033df34  03 00 a0 e1                                      mov r0, r3
0033df38  00 30 93 e5                                      ldr r3, [r3]
0033df3c  0f e0 a0 e1                                      mov lr, pc
0033df40  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0033df44  1c 50 8d e5                                      str r5, [sp, #0x1c]
0033df48  00 40 a0 e1                                      mov r4, r0
0033df4c  0c 70 94 e5                                      ldr r7, [r4, #0xc]
0033df50  00 10 a0 e3                                      mov r1, #0
0033df54  07 00 a0 e1                                      mov r0, r7
0033df58  55 41 ff eb                                      bl #0x30e4b4
0033df5c  10 60 94 e5                                      ldr r6, [r4, #0x10]
0033df60  00 00 50 e3                                      cmp r0, #0
0033df64  00 10 a0 e3                                      mov r1, #0
0033df68  06 00 a0 e1                                      mov r0, r6
0033df6c  0c 90 9d 05                                      ldreq sb, [sp, #0xc]
0033df70  18 90 9d 15                                      ldrne sb, [sp, #0x18]
0033df74  4e 41 ff eb                                      bl #0x30e4b4
0033df78  14 50 94 e5                                      ldr r5, [r4, #0x14]
0033df7c  00 00 50 e3                                      cmp r0, #0
0033df80  00 10 a0 e3                                      mov r1, #0
0033df84  05 00 a0 e1                                      mov r0, r5
0033df88  08 a0 9d 05                                      ldreq sl, [sp, #8]
0033df8c  14 a0 9d 15                                      ldrne sl, [sp, #0x14]
0033df90  47 41 ff eb                                      bl #0x30e4b4
0033df94  09 10 a0 e1                                      mov r1, sb
0033df98  00 00 50 e3                                      cmp r0, #0
0033df9c  07 00 a0 e1                                      mov r0, r7
0033dfa0  04 80 9d 05                                      ldreq r8, [sp, #4]
0033dfa4  10 80 9d 15                                      ldrne r8, [sp, #0x10]
0033dfa8  6f 43 ff eb                                      bl #0x30ed6c
0033dfac  0a 10 a0 e1                                      mov r1, sl
0033dfb0  00 70 a0 e1                                      mov r7, r0
0033dfb4  06 00 a0 e1                                      mov r0, r6
0033dfb8  6b 43 ff eb                                      bl #0x30ed6c
0033dfbc  00 10 a0 e1                                      mov r1, r0
0033dfc0  07 00 a0 e1                                      mov r0, r7
0033dfc4  f6 42 ff eb                                      bl #0x30eba4
0033dfc8  08 10 a0 e1                                      mov r1, r8
0033dfcc  00 60 a0 e1                                      mov r6, r0
0033dfd0  05 00 a0 e1                                      mov r0, r5
0033dfd4  64 43 ff eb                                      bl #0x30ed6c
0033dfd8  00 10 a0 e1                                      mov r1, r0
0033dfdc  06 00 a0 e1                                      mov r0, r6
0033dfe0  ef 42 ff eb                                      bl #0x30eba4
0033dfe4  18 10 94 e5                                      ldr r1, [r4, #0x18]
0033dfe8  ed 42 ff eb                                      bl #0x30eba4
0033dfec  00 10 a0 e3                                      mov r1, #0
0033dff0  c0 40 ff eb                                      bl #0x30e2f8
0033dff4  00 00 50 e3                                      cmp r0, #0
0033dff8  06 00 00 0a                                      beq #0x33e018
0033dffc  00 00 a0 e3                                      mov r0, #0
0033e000  b4 ff ff ea                                      b #0x33ded8
0033e004  00 30 95 e5                                      ldr r3, [r5]
0033e008  05 00 a0 e1                                      mov r0, r5
0033e00c  0f e0 a0 e1                                      mov lr, pc
0033e010  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0033e014  a7 ff ff ea                                      b #0x33deb8
0033e018  01 b0 8b e2                                      add fp, fp, #1
0033e01c  06 00 5b e3                                      cmp fp, #6
0033e020  10 40 84 e2                                      add r4, r4, #0x10
0033e024  c8 ff ff 1a                                      bne #0x33df4c
0033e028  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
0033e02c  02 30 a0 e3                                      mov r3, #2
0033e030  86 30 c5 e5                                      strb r3, [r5, #0x86]
0033e034  a6 ff ff ea                                      b #0x33ded4
; mapping-symbol data/literal pool
0033e038  e0 6b 65 00 f4 37 00 00                          .byte 0xe0, 0x6b, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0033e0f0, declared_size=8, range_size=8, mode=arm
; class-group: ObjectBase
; alias: _ZThn36_N10ObjectBase11DeserializeEP11IStreamBase
; demangled: non-virtual thunk to ObjectBase::Deserialize(IStreamBase*)
; decoder-mode: arm
0033e0f0  24 00 40 e2                                      sub r0, r0, #0x24
0033e0f4  ff ff ff ea                                      b #0x33e0f8

; FUNCTION 0x0033e0f8, declared_size=64, range_size=64, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase11DeserializeEP11IStreamBase
; demangled: ObjectBase::Deserialize(IStreamBase*)
; decoder-mode: arm
0033e0f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0033e0fc  00 40 a0 e1                                      mov r4, r0
0033e100  01 50 a0 e1                                      mov r5, r1
0033e104  01 00 a0 e1                                      mov r0, r1
0033e108  80 10 84 e2                                      add r1, r4, #0x80
0033e10c  cb ff ff eb                                      bl #0x33e040
0033e110  05 00 a0 e1                                      mov r0, r5
0033e114  8a 10 84 e2                                      add r1, r4, #0x8a
0033e118  c8 ff ff eb                                      bl #0x33e040
0033e11c  8c 00 84 e2                                      add r0, r4, #0x8c
0033e120  00 10 a0 e3                                      mov r1, #0
0033e124  fe fe ff eb                                      bl #0x33dd24
0033e128  b0 00 84 e2                                      add r0, r4, #0xb0
0033e12c  00 10 a0 e3                                      mov r1, #0
0033e130  70 40 bd e8                                      pop {r4, r5, r6, lr}
0033e134  fa fe ff ea                                      b #0x33dd24

; FUNCTION 0x0033e1e8, declared_size=8, range_size=8, mode=arm
; class-group: ObjectBase
; alias: _ZThn36_N10ObjectBase9SerializeEP11IStreamBase
; demangled: non-virtual thunk to ObjectBase::Serialize(IStreamBase*)
; decoder-mode: arm
0033e1e8  24 00 40 e2                                      sub r0, r0, #0x24
0033e1ec  ff ff ff ea                                      b #0x33e1f0

; FUNCTION 0x0033e1f0, declared_size=40, range_size=40, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase9SerializeEP11IStreamBase
; demangled: ObjectBase::Serialize(IStreamBase*)
; decoder-mode: arm
0033e1f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0033e1f4  00 40 a0 e1                                      mov r4, r0
0033e1f8  01 50 a0 e1                                      mov r5, r1
0033e1fc  01 00 a0 e1                                      mov r0, r1
0033e200  80 10 84 e2                                      add r1, r4, #0x80
0033e204  cb ff ff eb                                      bl #0x33e138
0033e208  05 00 a0 e1                                      mov r0, r5
0033e20c  8a 10 84 e2                                      add r1, r4, #0x8a
0033e210  70 40 bd e8                                      pop {r4, r5, r6, lr}
0033e214  c7 ff ff ea                                      b #0x33e138

; FUNCTION 0x0033e61c, declared_size=184, range_size=184, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase20TestDisableConditionEb
; demangled: ObjectBase::TestDisableCondition(bool)
; decoder-mode: arm
0033e61c  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0033e620  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0033e624  70 40 2d e9                                      push {r4, r5, r6, lr}
0033e628  03 30 8f e0                                      add r3, pc, r3
0033e62c  00 40 a0 e1                                      mov r4, r0
0033e630  02 00 93 e7                                      ldr r0, [r3, r2]
0033e634  01 50 a0 e1                                      mov r5, r1
0033e638  01 20 a0 e3                                      mov r2, #1
0033e63c  40 00 90 e5                                      ldr r0, [r0, #0x40]
0033e640  00 10 a0 e3                                      mov r1, #0
0033e644  8b bf 00 eb                                      bl #0x36e478
0033e648  60 36 90 e5                                      ldr r3, [r0, #0x660]
0033e64c  00 00 53 e3                                      cmp r3, #0
0033e650  06 00 00 0a                                      beq #0x33e670
0033e654  e8 24 01 e3                                      movw r2, #0x14e8
0033e658  02 30 93 e7                                      ldr r3, [r3, r2]
0033e65c  00 00 53 e3                                      cmp r3, #0
0033e660  0f 00 00 0a                                      beq #0x33e6a4
0033e664  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
0033e668  00 00 53 e3                                      cmp r3, #0
0033e66c  0c 00 00 0a                                      beq #0x33e6a4
0033e670  d0 30 d4 e5                                      ldrb r3, [r4, #0xd0]
0033e674  00 00 53 e3                                      cmp r3, #0
0033e678  09 00 00 1a                                      bne #0x33e6a4
0033e67c  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
0033e680  00 00 53 e3                                      cmp r3, #0
0033e684  06 00 00 0a                                      beq #0x33e6a4
0033e688  b0 60 84 e2                                      add r6, r4, #0xb0
0033e68c  06 00 a0 e1                                      mov r0, r6
0033e690  d8 ff ff eb                                      bl #0x33e5f8
0033e694  00 10 50 e2                                      subs r1, r0, #0
0033e698  03 00 00 0a                                      beq #0x33e6ac
0033e69c  8a 00 d4 e5                                      ldrb r0, [r4, #0x8a]
0033e6a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033e6a4  8a 00 d4 e5                                      ldrb r0, [r4, #0x8a]
0033e6a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033e6ac  04 00 a0 e1                                      mov r0, r4
0033e6b0  c4 fd ff eb                                      bl #0x33ddc8
0033e6b4  00 00 55 e3                                      cmp r5, #0
0033e6b8  f7 ff ff 0a                                      beq #0x33e69c
0033e6bc  06 00 a0 e1                                      mov r0, r6
0033e6c0  01 10 a0 e3                                      mov r1, #1
0033e6c4  96 fd ff eb                                      bl #0x33dd24
0033e6c8  f3 ff ff ea                                      b #0x33e69c
; mapping-symbol data/literal pool
0033e6cc  68 64 65 00 f4 37 00 00                          .byte 0x68, 0x64, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0033e6d4, declared_size=244, range_size=244, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase19TestEnableConditionEb
; demangled: ObjectBase::TestEnableCondition(bool)
; decoder-mode: arm
0033e6d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033e6d8  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
0033e6dc  e0 60 9f e5                                      ldr r6, [pc, #0xe0]
0033e6e0  00 50 a0 e1                                      mov r5, r0
0033e6e4  04 40 8f e0                                      add r4, pc, r4
0033e6e8  06 30 94 e7                                      ldr r3, [r4, r6]
0033e6ec  01 70 a0 e1                                      mov r7, r1
0033e6f0  01 20 a0 e3                                      mov r2, #1
0033e6f4  40 00 93 e5                                      ldr r0, [r3, #0x40]
0033e6f8  00 10 a0 e3                                      mov r1, #0
0033e6fc  5d bf 00 eb                                      bl #0x36e478
0033e700  60 36 90 e5                                      ldr r3, [r0, #0x660]
0033e704  00 00 53 e3                                      cmp r3, #0
0033e708  06 00 00 0a                                      beq #0x33e728
0033e70c  e8 24 01 e3                                      movw r2, #0x14e8
0033e710  02 30 93 e7                                      ldr r3, [r3, r2]
0033e714  00 00 53 e3                                      cmp r3, #0
0033e718  12 00 00 0a                                      beq #0x33e768
0033e71c  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
0033e720  00 00 53 e3                                      cmp r3, #0
0033e724  0f 00 00 0a                                      beq #0x33e768
0033e728  06 00 94 e7                                      ldr r0, [r4, r6]
0033e72c  98 83 ff eb                                      bl #0x31f594
0033e730  00 00 50 e3                                      cmp r0, #0
0033e734  0d 00 00 0a                                      beq #0x33e770
0033e738  ec 30 95 e5                                      ldr r3, [r5, #0xec]
0033e73c  18 21 90 e5                                      ldr r2, [r0, #0x118]
0033e740  f1 10 d5 e5                                      ldrb r1, [r5, #0xf1]
0033e744  01 00 73 e3                                      cmn r3, #1
0033e748  00 30 a0 03                                      moveq r3, #0
0033e74c  02 00 53 e1                                      cmp r3, r2
0033e750  18 00 00 da                                      ble #0x33e7b8
0033e754  05 00 a0 e1                                      mov r0, r5
0033e758  00 10 a0 e3                                      mov r1, #0
0033e75c  99 fd ff eb                                      bl #0x33ddc8
0033e760  8a 00 d5 e5                                      ldrb r0, [r5, #0x8a]
0033e764  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0033e768  8a 00 d5 e5                                      ldrb r0, [r5, #0x8a]
0033e76c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0033e770  f1 10 d5 e5                                      ldrb r1, [r5, #0xf1]
0033e774  01 10 21 e2                                      eor r1, r1, #1
0033e778  00 00 51 e3                                      cmp r1, #0
0033e77c  f4 ff ff 0a                                      beq #0x33e754
0033e780  8c 40 85 e2                                      add r4, r5, #0x8c
0033e784  04 00 a0 e1                                      mov r0, r4
0033e788  9a ff ff eb                                      bl #0x33e5f8
0033e78c  00 00 50 e3                                      cmp r0, #0
0033e790  ef ff ff 0a                                      beq #0x33e754
0033e794  05 00 a0 e1                                      mov r0, r5
0033e798  01 10 a0 e3                                      mov r1, #1
0033e79c  89 fd ff eb                                      bl #0x33ddc8
0033e7a0  00 00 57 e3                                      cmp r7, #0
0033e7a4  ed ff ff 0a                                      beq #0x33e760
0033e7a8  04 00 a0 e1                                      mov r0, r4
0033e7ac  01 10 a0 e3                                      mov r1, #1
0033e7b0  5b fd ff eb                                      bl #0x33dd24
0033e7b4  e9 ff ff ea                                      b #0x33e760
0033e7b8  01 10 21 e2                                      eor r1, r1, #1
0033e7bc  ed ff ff ea                                      b #0x33e778
; mapping-symbol data/literal pool
0033e7c0  ac 63 65 00 f4 37 00 00                          .byte 0xac, 0x63, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0033e838, declared_size=8, range_size=8, mode=arm
; class-group: ObjectBase
; alias: _ZThn36_N10ObjectBaseD1Ev
; demangled: non-virtual thunk to ObjectBase::~ObjectBase()
; decoder-mode: arm
0033e838  24 00 40 e2                                      sub r0, r0, #0x24
0033e83c  ff ff ff ea                                      b #0x33e840

; FUNCTION 0x0033e840, declared_size=308, range_size=308, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBaseD1Ev
; demangled: ObjectBase::~ObjectBase()
; decoder-mode: arm
0033e840  30 40 2d e9                                      push {r4, r5, lr}
0033e844  04 51 9f e5                                      ldr r5, [pc, #0x104]
0033e848  04 31 9f e5                                      ldr r3, [pc, #0x104]
0033e84c  29 10 d0 e5                                      ldrb r1, [r0, #0x29]
0033e850  05 50 8f e0                                      add r5, pc, r5
0033e854  03 30 95 e7                                      ldr r3, [r5, r3]
0033e858  00 00 51 e3                                      cmp r1, #0
0033e85c  0c d0 4d e2                                      sub sp, sp, #0xc
0033e860  74 20 83 e2                                      add r2, r3, #0x74
0033e864  08 10 83 e2                                      add r1, r3, #8
0033e868  68 30 83 e2                                      add r3, r3, #0x68
0033e86c  00 40 a0 e1                                      mov r4, r0
0033e870  0a 00 80 e8                                      stm r0, {r1, r3}
0033e874  24 20 80 e5                                      str r2, [r0, #0x24]
0033e878  08 00 00 0a                                      beq #0x33e8a0
0033e87c  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
0033e880  03 30 95 e7                                      ldr r3, [r5, r3]
0033e884  00 30 93 e5                                      ldr r3, [r3]
0033e888  02 00 53 e3                                      cmp r3, #2
0033e88c  00 30 a0 03                                      moveq r3, #0
0033e890  00 30 83 05                                      streq r3, [r3]
0033e894  01 00 00 0a                                      beq #0x33e8a0
0033e898  01 00 53 e3                                      cmp r3, #1
0033e89c  1e 00 00 0a                                      beq #0x33e91c
0033e8a0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0033e8a4  00 00 50 e3                                      cmp r0, #0
0033e8a8  02 00 00 0a                                      beq #0x33e8b8
0033e8ac  e3 46 ff eb                                      bl #0x310440
0033e8b0  00 30 a0 e3                                      mov r3, #0
0033e8b4  2c 30 84 e5                                      str r3, [r4, #0x2c]
0033e8b8  d4 00 84 e2                                      add r0, r4, #0xd4
0033e8bc  3a 54 ff eb                                      bl #0x3139ac
0033e8c0  b0 00 84 e2                                      add r0, r4, #0xb0
0033e8c4  cb ff ff eb                                      bl #0x33e7f8
0033e8c8  8c 00 84 e2                                      add r0, r4, #0x8c
0033e8cc  c9 ff ff eb                                      bl #0x33e7f8
0033e8d0  68 00 84 e2                                      add r0, r4, #0x68
0033e8d4  34 54 ff eb                                      bl #0x3139ac
0033e8d8  48 00 84 e2                                      add r0, r4, #0x48
0033e8dc  32 54 ff eb                                      bl #0x3139ac
0033e8e0  30 00 84 e2                                      add r0, r4, #0x30
0033e8e4  30 54 ff eb                                      bl #0x3139ac
0033e8e8  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0033e8ec  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0033e8f0  08 00 84 e2                                      add r0, r4, #8
0033e8f4  02 20 95 e7                                      ldr r2, [r5, r2]
0033e8f8  03 30 95 e7                                      ldr r3, [r5, r3]
0033e8fc  08 20 82 e2                                      add r2, r2, #8
0033e900  08 30 83 e2                                      add r3, r3, #8
0033e904  24 20 84 e5                                      str r2, [r4, #0x24]
0033e908  04 30 84 e5                                      str r3, [r4, #4]
0033e90c  26 54 ff eb                                      bl #0x3139ac
0033e910  04 00 a0 e1                                      mov r0, r4
0033e914  0c d0 8d e2                                      add sp, sp, #0xc
0033e918  30 80 bd e8                                      pop {r4, r5, pc}
0033e91c  40 00 9f e5                                      ldr r0, [pc, #0x40]
0033e920  40 10 9f e5                                      ldr r1, [pc, #0x40]
0033e924  40 20 9f e5                                      ldr r2, [pc, #0x40]
0033e928  00 00 95 e7                                      ldr r0, [r5, r0]
0033e92c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0033e930  71 c0 a0 e3                                      mov ip, #0x71
0033e934  01 10 8f e0                                      add r1, pc, r1
0033e938  02 20 8f e0                                      add r2, pc, r2
0033e93c  03 30 8f e0                                      add r3, pc, r3
0033e940  a8 00 80 e2                                      add r0, r0, #0xa8
0033e944  00 c0 8d e5                                      str ip, [sp]
0033e948  ad 3d ff eb                                      bl #0x30e004
0033e94c  d3 ff ff ea                                      b #0x33e8a0
; mapping-symbol data/literal pool
0033e950  40 62 65 00 84 3b 00 00 c0 39 00 00 40 14 00 00  .byte 0x40, 0x62, 0x65, 0x00, 0x84, 0x3b, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x40, 0x14, 0x00, 0x00
0033e960  dc 3b 00 00 c0 19 00 00 a4 fa 57 00 d0 17 58 00  .byte 0xdc, 0x3b, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xa4, 0xfa, 0x57, 0x00, 0xd0, 0x17, 0x58, 0x00
0033e970  dc 17 58 00                                      .byte 0xdc, 0x17, 0x58, 0x00

; FUNCTION 0x0033e974, declared_size=8, range_size=8, mode=arm
; class-group: ObjectBase
; alias: _ZThn36_N10ObjectBaseD0Ev
; demangled: non-virtual thunk to ObjectBase::~ObjectBase()
; decoder-mode: arm
0033e974  24 00 40 e2                                      sub r0, r0, #0x24
0033e978  ff ff ff ea                                      b #0x33e97c

; FUNCTION 0x0033e97c, declared_size=28, range_size=28, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBaseD0Ev
; demangled: ObjectBase::~ObjectBase()
; decoder-mode: arm
0033e97c  10 40 2d e9                                      push {r4, lr}
0033e980  00 40 a0 e1                                      mov r4, r0
0033e984  ad ff ff eb                                      bl #0x33e840
0033e988  04 00 a0 e1                                      mov r0, r4
0033e98c  ab 46 ff eb                                      bl #0x310440
0033e990  04 00 a0 e1                                      mov r0, r4
0033e994  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033e998, declared_size=308, range_size=308, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBaseD2Ev
; demangled: ObjectBase::~ObjectBase()
; decoder-mode: arm
0033e998  30 40 2d e9                                      push {r4, r5, lr}
0033e99c  04 51 9f e5                                      ldr r5, [pc, #0x104]
0033e9a0  04 31 9f e5                                      ldr r3, [pc, #0x104]
0033e9a4  29 10 d0 e5                                      ldrb r1, [r0, #0x29]
0033e9a8  05 50 8f e0                                      add r5, pc, r5
0033e9ac  03 30 95 e7                                      ldr r3, [r5, r3]
0033e9b0  00 00 51 e3                                      cmp r1, #0
0033e9b4  0c d0 4d e2                                      sub sp, sp, #0xc
0033e9b8  74 20 83 e2                                      add r2, r3, #0x74
0033e9bc  08 10 83 e2                                      add r1, r3, #8
0033e9c0  68 30 83 e2                                      add r3, r3, #0x68
0033e9c4  00 40 a0 e1                                      mov r4, r0
0033e9c8  0a 00 80 e8                                      stm r0, {r1, r3}
0033e9cc  24 20 80 e5                                      str r2, [r0, #0x24]
0033e9d0  08 00 00 0a                                      beq #0x33e9f8
0033e9d4  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
0033e9d8  03 30 95 e7                                      ldr r3, [r5, r3]
0033e9dc  00 30 93 e5                                      ldr r3, [r3]
0033e9e0  02 00 53 e3                                      cmp r3, #2
0033e9e4  00 30 a0 03                                      moveq r3, #0
0033e9e8  00 30 83 05                                      streq r3, [r3]
0033e9ec  01 00 00 0a                                      beq #0x33e9f8
0033e9f0  01 00 53 e3                                      cmp r3, #1
0033e9f4  1e 00 00 0a                                      beq #0x33ea74
0033e9f8  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0033e9fc  00 00 50 e3                                      cmp r0, #0
0033ea00  02 00 00 0a                                      beq #0x33ea10
0033ea04  8d 46 ff eb                                      bl #0x310440
0033ea08  00 30 a0 e3                                      mov r3, #0
0033ea0c  2c 30 84 e5                                      str r3, [r4, #0x2c]
0033ea10  d4 00 84 e2                                      add r0, r4, #0xd4
0033ea14  e4 53 ff eb                                      bl #0x3139ac
0033ea18  b0 00 84 e2                                      add r0, r4, #0xb0
0033ea1c  75 ff ff eb                                      bl #0x33e7f8
0033ea20  8c 00 84 e2                                      add r0, r4, #0x8c
0033ea24  73 ff ff eb                                      bl #0x33e7f8
0033ea28  68 00 84 e2                                      add r0, r4, #0x68
0033ea2c  de 53 ff eb                                      bl #0x3139ac
0033ea30  48 00 84 e2                                      add r0, r4, #0x48
0033ea34  dc 53 ff eb                                      bl #0x3139ac
0033ea38  30 00 84 e2                                      add r0, r4, #0x30
0033ea3c  da 53 ff eb                                      bl #0x3139ac
0033ea40  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0033ea44  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0033ea48  08 00 84 e2                                      add r0, r4, #8
0033ea4c  02 20 95 e7                                      ldr r2, [r5, r2]
0033ea50  03 30 95 e7                                      ldr r3, [r5, r3]
0033ea54  08 20 82 e2                                      add r2, r2, #8
0033ea58  08 30 83 e2                                      add r3, r3, #8
0033ea5c  24 20 84 e5                                      str r2, [r4, #0x24]
0033ea60  04 30 84 e5                                      str r3, [r4, #4]
0033ea64  d0 53 ff eb                                      bl #0x3139ac
0033ea68  04 00 a0 e1                                      mov r0, r4
0033ea6c  0c d0 8d e2                                      add sp, sp, #0xc
0033ea70  30 80 bd e8                                      pop {r4, r5, pc}
0033ea74  40 00 9f e5                                      ldr r0, [pc, #0x40]
0033ea78  40 10 9f e5                                      ldr r1, [pc, #0x40]
0033ea7c  40 20 9f e5                                      ldr r2, [pc, #0x40]
0033ea80  00 00 95 e7                                      ldr r0, [r5, r0]
0033ea84  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0033ea88  71 c0 a0 e3                                      mov ip, #0x71
0033ea8c  01 10 8f e0                                      add r1, pc, r1
0033ea90  02 20 8f e0                                      add r2, pc, r2
0033ea94  03 30 8f e0                                      add r3, pc, r3
0033ea98  a8 00 80 e2                                      add r0, r0, #0xa8
0033ea9c  00 c0 8d e5                                      str ip, [sp]
0033eaa0  57 3d ff eb                                      bl #0x30e004
0033eaa4  d3 ff ff ea                                      b #0x33e9f8
; mapping-symbol data/literal pool
0033eaa8  e8 60 65 00 84 3b 00 00 c0 39 00 00 40 14 00 00  .byte 0xe8, 0x60, 0x65, 0x00, 0x84, 0x3b, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x40, 0x14, 0x00, 0x00
0033eab8  dc 3b 00 00 c0 19 00 00 4c f9 57 00 78 16 58 00  .byte 0xdc, 0x3b, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x4c, 0xf9, 0x57, 0x00, 0x78, 0x16, 0x58, 0x00
0033eac8  84 16 58 00                                      .byte 0x84, 0x16, 0x58, 0x00

; FUNCTION 0x0033ec0c, declared_size=148, range_size=148, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase8InitPostEv
; demangled: ObjectBase::InitPost()
; decoder-mode: arm
0033ec0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033ec10  00 80 a0 e1                                      mov r8, r0
0033ec14  8c 00 80 e2                                      add r0, r0, #0x8c
0033ec18  c2 ff ff eb                                      bl #0x33eb28
0033ec1c  b0 00 88 e2                                      add r0, r8, #0xb0
0033ec20  c0 ff ff eb                                      bl #0x33eb28
0033ec24  e8 50 98 e5                                      ldr r5, [r8, #0xe8]
0033ec28  e4 20 98 e5                                      ldr r2, [r8, #0xe4]
0033ec2c  60 30 9f e5                                      ldr r3, [pc, #0x60]
0033ec30  02 00 55 e1                                      cmp r5, r2
0033ec34  03 30 8f e0                                      add r3, pc, r3
0033ec38  12 00 00 0a                                      beq #0x33ec88
0033ec3c  54 20 9f e5                                      ldr r2, [pc, #0x54]
0033ec40  02 20 93 e7                                      ldr r2, [r3, r2]
0033ec44  00 60 92 e5                                      ldr r6, [r2]
0033ec48  00 00 56 e3                                      cmp r6, #0
0033ec4c  0e 00 00 0a                                      beq #0x33ec8c
0033ec50  44 20 9f e5                                      ldr r2, [pc, #0x44]
0033ec54  00 40 a0 e3                                      mov r4, #0
0033ec58  02 30 93 e7                                      ldr r3, [r3, r2]
0033ec5c  00 70 93 e5                                      ldr r7, [r3]
0033ec60  02 00 00 ea                                      b #0x33ec70
0033ec64  01 40 84 e2                                      add r4, r4, #1
0033ec68  06 00 54 e1                                      cmp r4, r6
0033ec6c  06 00 00 0a                                      beq #0x33ec8c
0033ec70  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
0033ec74  05 00 a0 e1                                      mov r0, r5
0033ec78  a7 3d ff eb                                      bl #0x30e31c
0033ec7c  00 00 50 e3                                      cmp r0, #0
0033ec80  f7 ff ff 1a                                      bne #0x33ec64
0033ec84  ec 40 88 e5                                      str r4, [r8, #0xec]
0033ec88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0033ec8c  00 40 e0 e3                                      mvn r4, #0
0033ec90  fb ff ff ea                                      b #0x33ec84
; mapping-symbol data/literal pool
0033ec94  5c 5e 65 00 30 35 00 00 80 48 00 00              .byte 0x5c, 0x5e, 0x65, 0x00, 0x30, 0x35, 0x00, 0x00, 0x80, 0x48, 0x00, 0x00

; FUNCTION 0x0033f00c, declared_size=8, range_size=8, mode=arm
; class-group: ObjectBase
; alias: _ZThn4_N10ObjectBase17DeclarePropertiesEv
; demangled: non-virtual thunk to ObjectBase::DeclareProperties()
; decoder-mode: arm
0033f00c  04 00 40 e2                                      sub r0, r0, #4
0033f010  ff ff ff ea                                      b #0x33f014

; FUNCTION 0x0033f014, declared_size=328, range_size=328, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase17DeclarePropertiesEv
; demangled: ObjectBase::DeclareProperties()
; decoder-mode: arm
0033f014  70 40 2d e9                                      push {r4, r5, r6, lr}
0033f018  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
0033f01c  00 40 a0 e1                                      mov r4, r0
0033f020  04 50 80 e2                                      add r5, r0, #4
0033f024  05 00 a0 e1                                      mov r0, r5
0033f028  84 20 84 e2                                      add r2, r4, #0x84
0033f02c  84 30 d4 e5                                      ldrb r3, [r4, #0x84]
0033f030  01 10 8f e0                                      add r1, pc, r1
0033f034  1c fd ff eb                                      bl #0x33e4ac
0033f038  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0033f03c  01 30 a0 e3                                      mov r3, #1
0033f040  05 00 a0 e1                                      mov r0, r5
0033f044  80 20 84 e2                                      add r2, r4, #0x80
0033f048  01 10 8f e0                                      add r1, pc, r1
0033f04c  16 fd ff eb                                      bl #0x33e4ac
0033f050  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0033f054  05 00 a0 e1                                      mov r0, r5
0033f058  30 20 84 e2                                      add r2, r4, #0x30
0033f05c  01 10 8f e0                                      add r1, pc, r1
0033f060  c5 ff ff eb                                      bl #0x33ef7c
0033f064  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0033f068  05 00 a0 e1                                      mov r0, r5
0033f06c  48 20 84 e2                                      add r2, r4, #0x48
0033f070  01 10 8f e0                                      add r1, pc, r1
0033f074  c0 ff ff eb                                      bl #0x33ef7c
0033f078  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0033f07c  05 00 a0 e1                                      mov r0, r5
0033f080  68 20 84 e2                                      add r2, r4, #0x68
0033f084  01 10 8f e0                                      add r1, pc, r1
0033f088  bb ff ff eb                                      bl #0x33ef7c
0033f08c  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0033f090  05 00 a0 e1                                      mov r0, r5
0033f094  83 20 84 e2                                      add r2, r4, #0x83
0033f098  01 10 8f e0                                      add r1, pc, r1
0033f09c  00 30 a0 e3                                      mov r3, #0
0033f0a0  01 fd ff eb                                      bl #0x33e4ac
0033f0a4  98 10 9f e5                                      ldr r1, [pc, #0x98]
0033f0a8  00 30 a0 e3                                      mov r3, #0
0033f0ac  05 00 a0 e1                                      mov r0, r5
0033f0b0  87 20 84 e2                                      add r2, r4, #0x87
0033f0b4  01 10 8f e0                                      add r1, pc, r1
0033f0b8  fb fc ff eb                                      bl #0x33e4ac
0033f0bc  84 10 9f e5                                      ldr r1, [pc, #0x84]
0033f0c0  05 00 a0 e1                                      mov r0, r5
0033f0c4  90 20 84 e2                                      add r2, r4, #0x90
0033f0c8  01 10 8f e0                                      add r1, pc, r1
0033f0cc  aa ff ff eb                                      bl #0x33ef7c
0033f0d0  74 10 9f e5                                      ldr r1, [pc, #0x74]
0033f0d4  05 00 a0 e1                                      mov r0, r5
0033f0d8  b4 20 84 e2                                      add r2, r4, #0xb4
0033f0dc  01 10 8f e0                                      add r1, pc, r1
0033f0e0  a5 ff ff eb                                      bl #0x33ef7c
0033f0e4  64 10 9f e5                                      ldr r1, [pc, #0x64]
0033f0e8  05 00 a0 e1                                      mov r0, r5
0033f0ec  d4 20 84 e2                                      add r2, r4, #0xd4
0033f0f0  01 10 8f e0                                      add r1, pc, r1
0033f0f4  a0 ff ff eb                                      bl #0x33ef7c
0033f0f8  54 10 9f e5                                      ldr r1, [pc, #0x54]
0033f0fc  05 00 a0 e1                                      mov r0, r5
0033f100  f0 20 84 e2                                      add r2, r4, #0xf0
0033f104  01 10 8f e0                                      add r1, pc, r1
0033f108  00 30 a0 e3                                      mov r3, #0
0033f10c  e6 fc ff eb                                      bl #0x33e4ac
0033f110  40 10 9f e5                                      ldr r1, [pc, #0x40]
0033f114  05 00 a0 e1                                      mov r0, r5
0033f118  f1 20 84 e2                                      add r2, r4, #0xf1
0033f11c  01 10 8f e0                                      add r1, pc, r1
0033f120  00 30 a0 e3                                      mov r3, #0
0033f124  70 40 bd e8                                      pop {r4, r5, r6, lr}
0033f128  df fc ff ea                                      b #0x33e4ac
; mapping-symbol data/literal pool
0033f12c  38 11 58 00 28 11 58 00 8c 20 5a 00 08 11 58 00  .byte 0x38, 0x11, 0x58, 0x00, 0x28, 0x11, 0x58, 0x00, 0x8c, 0x20, 0x5a, 0x00, 0x08, 0x11, 0x58, 0x00
0033f13c  04 11 58 00 00 11 58 00 f4 10 58 00 f0 10 58 00  .byte 0x04, 0x11, 0x58, 0x00, 0x00, 0x11, 0x58, 0x00, 0xf4, 0x10, 0x58, 0x00, 0xf0, 0x10, 0x58, 0x00
0033f14c  ec 10 58 00 e8 10 58 00 e4 10 58 00 e4 10 58 00  .byte 0xec, 0x10, 0x58, 0x00, 0xe8, 0x10, 0x58, 0x00, 0xe4, 0x10, 0x58, 0x00, 0xe4, 0x10, 0x58, 0x00

; FUNCTION 0x0033f15c, declared_size=436, range_size=436, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBaseC1ENS_6GO_IDSE
; demangled: ObjectBase::ObjectBase(ObjectBase::GO_IDS)
; decoder-mode: arm
0033f15c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033f160  98 61 9f e5                                      ldr r6, [pc, #0x198]
0033f164  98 21 9f e5                                      ldr r2, [pc, #0x198]
0033f168  98 31 9f e5                                      ldr r3, [pc, #0x198]
0033f16c  06 60 8f e0                                      add r6, pc, r6
0033f170  02 20 96 e7                                      ldr r2, [r6, r2]
0033f174  03 30 96 e7                                      ldr r3, [r6, r3]
0033f178  00 40 a0 e1                                      mov r4, r0
0033f17c  08 20 82 e2                                      add r2, r2, #8
0033f180  08 00 83 e2                                      add r0, r3, #8
0033f184  08 30 84 e2                                      add r3, r4, #8
0033f188  00 20 84 e5                                      str r2, [r4]
0033f18c  04 00 84 e5                                      str r0, [r4, #4]
0033f190  01 70 a0 e1                                      mov r7, r1
0033f194  03 00 a0 e1                                      mov r0, r3
0033f198  18 30 84 e5                                      str r3, [r4, #0x18]
0033f19c  1c 30 84 e5                                      str r3, [r4, #0x1c]
0033f1a0  10 10 a0 e3                                      mov r1, #0x10
0033f1a4  34 49 ff eb                                      bl #0x31167c
0033f1a8  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0033f1ac  18 10 94 e5                                      ldr r1, [r4, #0x18]
0033f1b0  00 50 a0 e3                                      mov r5, #0
0033f1b4  02 20 96 e7                                      ldr r2, [r6, r2]
0033f1b8  00 50 c1 e5                                      strb r5, [r1]
0033f1bc  30 30 84 e2                                      add r3, r4, #0x30
0033f1c0  74 10 82 e2                                      add r1, r2, #0x74
0033f1c4  08 00 82 e2                                      add r0, r2, #8
0033f1c8  68 20 82 e2                                      add r2, r2, #0x68
0033f1cc  05 00 84 e8                                      stm r4, {r0, r2}
0033f1d0  24 10 84 e5                                      str r1, [r4, #0x24]
0033f1d4  03 00 a0 e1                                      mov r0, r3
0033f1d8  20 50 84 e5                                      str r5, [r4, #0x20]
0033f1dc  28 50 c4 e5                                      strb r5, [r4, #0x28]
0033f1e0  29 50 c4 e5                                      strb r5, [r4, #0x29]
0033f1e4  2c 50 84 e5                                      str r5, [r4, #0x2c]
0033f1e8  40 30 84 e5                                      str r3, [r4, #0x40]
0033f1ec  44 30 84 e5                                      str r3, [r4, #0x44]
0033f1f0  10 10 a0 e3                                      mov r1, #0x10
0033f1f4  20 49 ff eb                                      bl #0x31167c
0033f1f8  40 20 94 e5                                      ldr r2, [r4, #0x40]
0033f1fc  48 30 84 e2                                      add r3, r4, #0x48
0033f200  03 00 a0 e1                                      mov r0, r3
0033f204  00 50 c2 e5                                      strb r5, [r2]
0033f208  10 10 a0 e3                                      mov r1, #0x10
0033f20c  58 30 84 e5                                      str r3, [r4, #0x58]
0033f210  5c 30 84 e5                                      str r3, [r4, #0x5c]
0033f214  18 49 ff eb                                      bl #0x31167c
0033f218  58 20 94 e5                                      ldr r2, [r4, #0x58]
0033f21c  68 30 84 e2                                      add r3, r4, #0x68
0033f220  00 60 e0 e3                                      mvn r6, #0
0033f224  00 50 c2 e5                                      strb r5, [r2]
0033f228  10 10 a0 e3                                      mov r1, #0x10
0033f22c  03 00 a0 e1                                      mov r0, r3
0033f230  60 50 c4 e5                                      strb r5, [r4, #0x60]
0033f234  78 30 84 e5                                      str r3, [r4, #0x78]
0033f238  7c 30 84 e5                                      str r3, [r4, #0x7c]
0033f23c  64 60 84 e5                                      str r6, [r4, #0x64]
0033f240  0d 49 ff eb                                      bl #0x31167c
0033f244  78 30 94 e5                                      ldr r3, [r4, #0x78]
0033f248  8c 00 84 e2                                      add r0, r4, #0x8c
0033f24c  00 50 c3 e5                                      strb r5, [r3]
0033f250  01 30 a0 e3                                      mov r3, #1
0033f254  8a 30 c4 e5                                      strb r3, [r4, #0x8a]
0033f258  81 50 c4 e5                                      strb r5, [r4, #0x81]
0033f25c  84 50 c4 e5                                      strb r5, [r4, #0x84]
0033f260  85 50 c4 e5                                      strb r5, [r4, #0x85]
0033f264  86 50 c4 e5                                      strb r5, [r4, #0x86]
0033f268  88 50 c4 e5                                      strb r5, [r4, #0x88]
0033f26c  89 50 c4 e5                                      strb r5, [r4, #0x89]
0033f270  c1 fe ff eb                                      bl #0x33ed7c
0033f274  b0 00 84 e2                                      add r0, r4, #0xb0
0033f278  bf fe ff eb                                      bl #0x33ed7c
0033f27c  d4 30 84 e2                                      add r3, r4, #0xd4
0033f280  03 00 a0 e1                                      mov r0, r3
0033f284  e4 30 84 e5                                      str r3, [r4, #0xe4]
0033f288  e8 30 84 e5                                      str r3, [r4, #0xe8]
0033f28c  10 10 a0 e3                                      mov r1, #0x10
0033f290  f9 48 ff eb                                      bl #0x31167c
0033f294  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
0033f298  05 10 a0 e1                                      mov r1, r5
0033f29c  0c 00 a0 e3                                      mov r0, #0xc
0033f2a0  00 50 c3 e5                                      strb r5, [r3]
0033f2a4  00 30 a0 e3                                      mov r3, #0
0033f2a8  14 31 84 e5                                      str r3, [r4, #0x114]
0033f2ac  f0 50 c4 e5                                      strb r5, [r4, #0xf0]
0033f2b0  f1 50 c4 e5                                      strb r5, [r4, #0xf1]
0033f2b4  f8 50 c4 e5                                      strb r5, [r4, #0xf8]
0033f2b8  fc 50 84 e5                                      str r5, [r4, #0xfc]
0033f2bc  00 51 84 e5                                      str r5, [r4, #0x100]
0033f2c0  04 51 84 e5                                      str r5, [r4, #0x104]
0033f2c4  0c 51 c4 e5                                      strb r5, [r4, #0x10c]
0033f2c8  18 51 c4 e5                                      strb r5, [r4, #0x118]
0033f2cc  19 51 c4 e5                                      strb r5, [r4, #0x119]
0033f2d0  1c 51 84 e5                                      str r5, [r4, #0x11c]
0033f2d4  f4 70 84 e5                                      str r7, [r4, #0xf4]
0033f2d8  10 61 84 e5                                      str r6, [r4, #0x110]
0033f2dc  ec 60 84 e5                                      str r6, [r4, #0xec]
0033f2e0  08 61 84 e5                                      str r6, [r4, #0x108]
0033f2e4  a1 44 ff eb                                      bl #0x310570
0033f2e8  00 50 a0 e1                                      mov r5, r0
0033f2ec  86 00 00 eb                                      bl #0x33f50c
0033f2f0  2c 50 84 e5                                      str r5, [r4, #0x2c]
0033f2f4  04 00 a0 e1                                      mov r0, r4
0033f2f8  04 40 85 e5                                      str r4, [r5, #4]
0033f2fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0033f300  24 59 65 00 8c 10 00 00 dc 3b 00 00 84 3b 00 00  .byte 0x24, 0x59, 0x65, 0x00, 0x8c, 0x10, 0x00, 0x00, 0xdc, 0x3b, 0x00, 0x00, 0x84, 0x3b, 0x00, 0x00

; FUNCTION 0x0033f310, declared_size=436, range_size=436, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBaseC2ENS_6GO_IDSE
; demangled: ObjectBase::ObjectBase(ObjectBase::GO_IDS)
; decoder-mode: arm
0033f310  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033f314  98 61 9f e5                                      ldr r6, [pc, #0x198]
0033f318  98 21 9f e5                                      ldr r2, [pc, #0x198]
0033f31c  98 31 9f e5                                      ldr r3, [pc, #0x198]
0033f320  06 60 8f e0                                      add r6, pc, r6
0033f324  02 20 96 e7                                      ldr r2, [r6, r2]
0033f328  03 30 96 e7                                      ldr r3, [r6, r3]
0033f32c  00 40 a0 e1                                      mov r4, r0
0033f330  08 20 82 e2                                      add r2, r2, #8
0033f334  08 00 83 e2                                      add r0, r3, #8
0033f338  08 30 84 e2                                      add r3, r4, #8
0033f33c  00 20 84 e5                                      str r2, [r4]
0033f340  04 00 84 e5                                      str r0, [r4, #4]
0033f344  01 70 a0 e1                                      mov r7, r1
0033f348  03 00 a0 e1                                      mov r0, r3
0033f34c  18 30 84 e5                                      str r3, [r4, #0x18]
0033f350  1c 30 84 e5                                      str r3, [r4, #0x1c]
0033f354  10 10 a0 e3                                      mov r1, #0x10
0033f358  c7 48 ff eb                                      bl #0x31167c
0033f35c  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0033f360  18 10 94 e5                                      ldr r1, [r4, #0x18]
0033f364  00 50 a0 e3                                      mov r5, #0
0033f368  02 20 96 e7                                      ldr r2, [r6, r2]
0033f36c  00 50 c1 e5                                      strb r5, [r1]
0033f370  30 30 84 e2                                      add r3, r4, #0x30
0033f374  74 10 82 e2                                      add r1, r2, #0x74
0033f378  08 00 82 e2                                      add r0, r2, #8
0033f37c  68 20 82 e2                                      add r2, r2, #0x68
0033f380  05 00 84 e8                                      stm r4, {r0, r2}
0033f384  24 10 84 e5                                      str r1, [r4, #0x24]
0033f388  03 00 a0 e1                                      mov r0, r3
0033f38c  20 50 84 e5                                      str r5, [r4, #0x20]
0033f390  28 50 c4 e5                                      strb r5, [r4, #0x28]
0033f394  29 50 c4 e5                                      strb r5, [r4, #0x29]
0033f398  2c 50 84 e5                                      str r5, [r4, #0x2c]
0033f39c  40 30 84 e5                                      str r3, [r4, #0x40]
0033f3a0  44 30 84 e5                                      str r3, [r4, #0x44]
0033f3a4  10 10 a0 e3                                      mov r1, #0x10
0033f3a8  b3 48 ff eb                                      bl #0x31167c
0033f3ac  40 20 94 e5                                      ldr r2, [r4, #0x40]
0033f3b0  48 30 84 e2                                      add r3, r4, #0x48
0033f3b4  03 00 a0 e1                                      mov r0, r3
0033f3b8  00 50 c2 e5                                      strb r5, [r2]
0033f3bc  10 10 a0 e3                                      mov r1, #0x10
0033f3c0  58 30 84 e5                                      str r3, [r4, #0x58]
0033f3c4  5c 30 84 e5                                      str r3, [r4, #0x5c]
0033f3c8  ab 48 ff eb                                      bl #0x31167c
0033f3cc  58 20 94 e5                                      ldr r2, [r4, #0x58]
0033f3d0  68 30 84 e2                                      add r3, r4, #0x68
0033f3d4  00 60 e0 e3                                      mvn r6, #0
0033f3d8  00 50 c2 e5                                      strb r5, [r2]
0033f3dc  10 10 a0 e3                                      mov r1, #0x10
0033f3e0  03 00 a0 e1                                      mov r0, r3
0033f3e4  60 50 c4 e5                                      strb r5, [r4, #0x60]
0033f3e8  78 30 84 e5                                      str r3, [r4, #0x78]
0033f3ec  7c 30 84 e5                                      str r3, [r4, #0x7c]
0033f3f0  64 60 84 e5                                      str r6, [r4, #0x64]
0033f3f4  a0 48 ff eb                                      bl #0x31167c
0033f3f8  78 30 94 e5                                      ldr r3, [r4, #0x78]
0033f3fc  8c 00 84 e2                                      add r0, r4, #0x8c
0033f400  00 50 c3 e5                                      strb r5, [r3]
0033f404  01 30 a0 e3                                      mov r3, #1
0033f408  8a 30 c4 e5                                      strb r3, [r4, #0x8a]
0033f40c  81 50 c4 e5                                      strb r5, [r4, #0x81]
0033f410  84 50 c4 e5                                      strb r5, [r4, #0x84]
0033f414  85 50 c4 e5                                      strb r5, [r4, #0x85]
0033f418  86 50 c4 e5                                      strb r5, [r4, #0x86]
0033f41c  88 50 c4 e5                                      strb r5, [r4, #0x88]
0033f420  89 50 c4 e5                                      strb r5, [r4, #0x89]
0033f424  54 fe ff eb                                      bl #0x33ed7c
0033f428  b0 00 84 e2                                      add r0, r4, #0xb0
0033f42c  52 fe ff eb                                      bl #0x33ed7c
0033f430  d4 30 84 e2                                      add r3, r4, #0xd4
0033f434  03 00 a0 e1                                      mov r0, r3
0033f438  e4 30 84 e5                                      str r3, [r4, #0xe4]
0033f43c  e8 30 84 e5                                      str r3, [r4, #0xe8]
0033f440  10 10 a0 e3                                      mov r1, #0x10
0033f444  8c 48 ff eb                                      bl #0x31167c
0033f448  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
0033f44c  05 10 a0 e1                                      mov r1, r5
0033f450  0c 00 a0 e3                                      mov r0, #0xc
0033f454  00 50 c3 e5                                      strb r5, [r3]
0033f458  00 30 a0 e3                                      mov r3, #0
0033f45c  14 31 84 e5                                      str r3, [r4, #0x114]
0033f460  f0 50 c4 e5                                      strb r5, [r4, #0xf0]
0033f464  f1 50 c4 e5                                      strb r5, [r4, #0xf1]
0033f468  f8 50 c4 e5                                      strb r5, [r4, #0xf8]
0033f46c  fc 50 84 e5                                      str r5, [r4, #0xfc]
0033f470  00 51 84 e5                                      str r5, [r4, #0x100]
0033f474  04 51 84 e5                                      str r5, [r4, #0x104]
0033f478  0c 51 c4 e5                                      strb r5, [r4, #0x10c]
0033f47c  18 51 c4 e5                                      strb r5, [r4, #0x118]
0033f480  19 51 c4 e5                                      strb r5, [r4, #0x119]
0033f484  1c 51 84 e5                                      str r5, [r4, #0x11c]
0033f488  f4 70 84 e5                                      str r7, [r4, #0xf4]
0033f48c  10 61 84 e5                                      str r6, [r4, #0x110]
0033f490  ec 60 84 e5                                      str r6, [r4, #0xec]
0033f494  08 61 84 e5                                      str r6, [r4, #0x108]
0033f498  34 44 ff eb                                      bl #0x310570
0033f49c  00 50 a0 e1                                      mov r5, r0
0033f4a0  19 00 00 eb                                      bl #0x33f50c
0033f4a4  2c 50 84 e5                                      str r5, [r4, #0x2c]
0033f4a8  04 00 a0 e1                                      mov r0, r4
0033f4ac  04 40 85 e5                                      str r4, [r5, #4]
0033f4b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0033f4b4  70 57 65 00 8c 10 00 00 dc 3b 00 00 84 3b 00 00  .byte 0x70, 0x57, 0x65, 0x00, 0x8c, 0x10, 0x00, 0x00, 0xdc, 0x3b, 0x00, 0x00, 0x84, 0x3b, 0x00, 0x00

; FUNCTION 0x0034ac18, declared_size=136, range_size=136, mode=arm
; class-group: ObjectBase
; alias: _ZN10ObjectBase7SetNameEPKc
; demangled: ObjectBase::SetName(char const*)
; decoder-mode: arm
0034ac18  70 40 2d e9                                      push {r4, r5, r6, lr}
0034ac1c  00 60 a0 e1                                      mov r6, r0
0034ac20  01 00 a0 e1                                      mov r0, r1
0034ac24  01 40 a0 e1                                      mov r4, r1
0034ac28  89 0c ff eb                                      bl #0x30de54
0034ac2c  60 50 9f e5                                      ldr r5, [pc, #0x60]
0034ac30  00 20 84 e0                                      add r2, r4, r0
0034ac34  04 10 a0 e1                                      mov r1, r4
0034ac38  30 00 86 e2                                      add r0, r6, #0x30
0034ac3c  67 17 ff eb                                      bl #0x3109e0
0034ac40  50 30 9f e5                                      ldr r3, [pc, #0x50]
0034ac44  05 50 8f e0                                      add r5, pc, r5
0034ac48  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
0034ac4c  03 30 95 e7                                      ldr r3, [r5, r3]
0034ac50  38 00 93 e5                                      ldr r0, [r3, #0x38]
0034ac54  0c 00 80 e2                                      add r0, r0, #0xc
0034ac58  0a d4 ff eb                                      bl #0x33fc88
0034ac5c  00 00 54 e3                                      cmp r4, #0
0034ac60  00 50 a0 e1                                      mov r5, r0
0034ac64  06 00 00 0a                                      beq #0x34ac84
0034ac68  04 00 a0 e1                                      mov r0, r4
0034ac6c  78 0c ff eb                                      bl #0x30de54
0034ac70  00 20 84 e0                                      add r2, r4, r0
0034ac74  05 00 a0 e1                                      mov r0, r5
0034ac78  04 10 a0 e1                                      mov r1, r4
0034ac7c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0034ac80  56 17 ff ea                                      b #0x3109e0
0034ac84  10 20 9f e5                                      ldr r2, [pc, #0x10]
0034ac88  02 20 8f e0                                      add r2, pc, r2
0034ac8c  02 40 a0 e1                                      mov r4, r2
0034ac90  f7 ff ff ea                                      b #0x34ac74
; mapping-symbol data/literal pool
0034ac94  4c 9e 64 00 f4 37 00 00 80 0b 58 00              .byte 0x4c, 0x9e, 0x64, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x80, 0x0b, 0x58, 0x00
