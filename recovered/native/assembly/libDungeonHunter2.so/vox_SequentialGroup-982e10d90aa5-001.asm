; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00881c28, declared_size=76, range_size=76, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroupC2EPNS_10GroupInfosEi
; demangled: vox::SequentialGroup::SequentialGroup(vox::GroupInfos*, int)
; decoder-mode: arm
00881c28  70 40 2d e9                                      push {r4, r5, r6, lr}
00881c2c  38 50 9f e5                                      ldr r5, [pc, #0x38]
00881c30  00 40 a0 e1                                      mov r4, r0
00881c34  26 ff ff eb                                      bl #0x8818d4
00881c38  30 20 9f e5                                      ldr r2, [pc, #0x30]
00881c3c  05 50 8f e0                                      add r5, pc, r5
00881c40  00 30 a0 e3                                      mov r3, #0
00881c44  02 20 95 e7                                      ldr r2, [r5, r2]
00881c48  34 30 84 e5                                      str r3, [r4, #0x34]
00881c4c  24 30 84 e5                                      str r3, [r4, #0x24]
00881c50  08 20 82 e2                                      add r2, r2, #8
00881c54  00 20 84 e5                                      str r2, [r4]
00881c58  28 30 84 e5                                      str r3, [r4, #0x28]
00881c5c  2c 30 84 e5                                      str r3, [r4, #0x2c]
00881c60  30 30 84 e5                                      str r3, [r4, #0x30]
00881c64  04 00 a0 e1                                      mov r0, r4
00881c68  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00881c6c  54 2e 11 00 30 1a 00 00                          .byte 0x54, 0x2e, 0x11, 0x00, 0x30, 0x1a, 0x00, 0x00

; FUNCTION 0x00881c74, declared_size=76, range_size=76, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroupC1EPNS_10GroupInfosEi
; demangled: vox::SequentialGroup::SequentialGroup(vox::GroupInfos*, int)
; decoder-mode: arm
00881c74  70 40 2d e9                                      push {r4, r5, r6, lr}
00881c78  38 50 9f e5                                      ldr r5, [pc, #0x38]
00881c7c  00 40 a0 e1                                      mov r4, r0
00881c80  13 ff ff eb                                      bl #0x8818d4
00881c84  30 20 9f e5                                      ldr r2, [pc, #0x30]
00881c88  05 50 8f e0                                      add r5, pc, r5
00881c8c  00 30 a0 e3                                      mov r3, #0
00881c90  02 20 95 e7                                      ldr r2, [r5, r2]
00881c94  34 30 84 e5                                      str r3, [r4, #0x34]
00881c98  24 30 84 e5                                      str r3, [r4, #0x24]
00881c9c  08 20 82 e2                                      add r2, r2, #8
00881ca0  00 20 84 e5                                      str r2, [r4]
00881ca4  28 30 84 e5                                      str r3, [r4, #0x28]
00881ca8  2c 30 84 e5                                      str r3, [r4, #0x2c]
00881cac  30 30 84 e5                                      str r3, [r4, #0x30]
00881cb0  04 00 a0 e1                                      mov r0, r4
00881cb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00881cb8  08 2e 11 00 30 1a 00 00                          .byte 0x08, 0x2e, 0x11, 0x00, 0x30, 0x1a, 0x00, 0x00

; FUNCTION 0x00881cc0, declared_size=112, range_size=112, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroup23GetGroupElementPositionEv
; demangled: vox::SequentialGroup::GetGroupElementPosition()
; decoder-mode: arm
00881cc0  30 00 2d e9                                      push {r4, r5}
00881cc4  18 30 90 e5                                      ldr r3, [r0, #0x18]
00881cc8  00 00 53 e3                                      cmp r3, #0
00881ccc  02 00 00 1a                                      bne #0x881cdc
00881cd0  00 00 e0 e3                                      mvn r0, #0
00881cd4  30 00 bd e8                                      pop {r4, r5}
00881cd8  1e ff 2f e1                                      bx lr
00881cdc  14 20 90 e5                                      ldr r2, [r0, #0x14]
00881ce0  00 00 52 e3                                      cmp r2, #0
00881ce4  f9 ff ff 0a                                      beq #0x881cd0
00881ce8  30 10 90 e5                                      ldr r1, [r0, #0x30]
00881cec  28 50 90 e5                                      ldr r5, [r0, #0x28]
00881cf0  24 c0 90 e5                                      ldr ip, [r0, #0x24]
00881cf4  01 40 81 e2                                      add r4, r1, #1
00881cf8  30 40 80 e5                                      str r4, [r0, #0x30]
00881cfc  05 50 6c e0                                      rsb r5, ip, r5
00881d00  45 01 54 e1                                      cmp r4, r5, asr #2
00881d04  01 40 42 a2                                      subge r4, r2, #1
00881d08  1c 20 80 a5                                      strge r2, [r0, #0x1c]
00881d0c  00 50 a0 a3                                      movge r5, #0
00881d10  01 20 43 e2                                      sub r2, r3, #1
00881d14  34 10 80 e5                                      str r1, [r0, #0x34]
00881d18  30 50 80 a5                                      strge r5, [r0, #0x30]
00881d1c  14 40 80 a5                                      strge r4, [r0, #0x14]
00881d20  18 20 80 e5                                      str r2, [r0, #0x18]
00881d24  20 30 80 e5                                      str r3, [r0, #0x20]
00881d28  01 01 9c e7                                      ldr r0, [ip, r1, lsl #2]
00881d2c  e8 ff ff ea                                      b #0x881cd4

; FUNCTION 0x00881d30, declared_size=52, range_size=52, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroup8GetStateEPNS_20SequentialGroupStateE
; demangled: vox::SequentialGroup::GetState(vox::SequentialGroupState*)
; decoder-mode: arm
00881d30  14 30 90 e5                                      ldr r3, [r0, #0x14]
00881d34  00 30 81 e5                                      str r3, [r1]
00881d38  18 30 90 e5                                      ldr r3, [r0, #0x18]
00881d3c  04 30 81 e5                                      str r3, [r1, #4]
00881d40  30 30 90 e5                                      ldr r3, [r0, #0x30]
00881d44  08 30 81 e5                                      str r3, [r1, #8]
00881d48  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00881d4c  0c 30 81 e5                                      str r3, [r1, #0xc]
00881d50  20 30 90 e5                                      ldr r3, [r0, #0x20]
00881d54  10 30 81 e5                                      str r3, [r1, #0x10]
00881d58  34 30 90 e5                                      ldr r3, [r0, #0x34]
00881d5c  14 30 81 e5                                      str r3, [r1, #0x14]
00881d60  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881d64, declared_size=60, range_size=60, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroup22PeekAtNextGroupElementENS_13GroupPeekModeE
; demangled: vox::SequentialGroup::PeekAtNextGroupElement(vox::GroupPeekMode)
; decoder-mode: arm
00881d64  00 00 51 e3                                      cmp r1, #0
00881d68  03 00 00 0a                                      beq #0x881d7c
00881d6c  24 30 90 e5                                      ldr r3, [r0, #0x24]
00881d70  30 20 90 e5                                      ldr r2, [r0, #0x30]
00881d74  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00881d78  1e ff 2f e1                                      bx lr
00881d7c  18 30 90 e5                                      ldr r3, [r0, #0x18]
00881d80  00 00 53 e3                                      cmp r3, #0
00881d84  01 00 00 1a                                      bne #0x881d90
00881d88  00 00 e0 e3                                      mvn r0, #0
00881d8c  1e ff 2f e1                                      bx lr
00881d90  14 30 90 e5                                      ldr r3, [r0, #0x14]
00881d94  00 00 53 e3                                      cmp r3, #0
00881d98  fa ff ff 0a                                      beq #0x881d88
00881d9c  f2 ff ff ea                                      b #0x881d6c

; FUNCTION 0x00881da0, declared_size=56, range_size=56, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroup5ResetEi
; demangled: vox::SequentialGroup::Reset(int)
; decoder-mode: arm
00881da0  14 20 90 e5                                      ldr r2, [r0, #0x14]
00881da4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00881da8  00 00 51 e3                                      cmp r1, #0
00881dac  30 c0 90 e5                                      ldr ip, [r0, #0x30]
00881db0  1c 20 80 e5                                      str r2, [r0, #0x1c]
00881db4  14 30 80 e5                                      str r3, [r0, #0x14]
00881db8  18 20 90 05                                      ldreq r2, [r0, #0x18]
00881dbc  10 30 90 05                                      ldreq r3, [r0, #0x10]
00881dc0  00 10 a0 e3                                      mov r1, #0
00881dc4  34 c0 80 e5                                      str ip, [r0, #0x34]
00881dc8  30 10 80 e5                                      str r1, [r0, #0x30]
00881dcc  20 20 80 05                                      streq r2, [r0, #0x20]
00881dd0  18 30 80 05                                      streq r3, [r0, #0x18]
00881dd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881dd8, declared_size=36, range_size=36, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroup8SetStateERS0_
; demangled: vox::SequentialGroup::SetState(vox::SequentialGroup&)
; decoder-mode: arm
00881dd8  70 40 2d e9                                      push {r4, r5, r6, lr}
00881ddc  01 50 a0 e1                                      mov r5, r1
00881de0  00 40 a0 e1                                      mov r4, r0
00881de4  28 ff ff eb                                      bl #0x881a8c
00881de8  30 30 95 e5                                      ldr r3, [r5, #0x30]
00881dec  30 30 84 e5                                      str r3, [r4, #0x30]
00881df0  34 30 95 e5                                      ldr r3, [r5, #0x34]
00881df4  34 30 84 e5                                      str r3, [r4, #0x34]
00881df8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00881dfc, declared_size=52, range_size=52, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroup8SetStateEPNS_20SequentialGroupStateE
; demangled: vox::SequentialGroup::SetState(vox::SequentialGroupState*)
; decoder-mode: arm
00881dfc  00 30 91 e5                                      ldr r3, [r1]
00881e00  14 30 80 e5                                      str r3, [r0, #0x14]
00881e04  04 30 91 e5                                      ldr r3, [r1, #4]
00881e08  18 30 80 e5                                      str r3, [r0, #0x18]
00881e0c  08 30 91 e5                                      ldr r3, [r1, #8]
00881e10  30 30 80 e5                                      str r3, [r0, #0x30]
00881e14  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00881e18  1c 30 80 e5                                      str r3, [r0, #0x1c]
00881e1c  10 30 91 e5                                      ldr r3, [r1, #0x10]
00881e20  20 30 80 e5                                      str r3, [r0, #0x20]
00881e24  14 30 91 e5                                      ldr r3, [r1, #0x14]
00881e28  34 30 80 e5                                      str r3, [r0, #0x34]
00881e2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881e30, declared_size=28, range_size=28, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroup18SetToPreviousStateEv
; demangled: vox::SequentialGroup::SetToPreviousState()
; decoder-mode: arm
00881e30  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
00881e34  20 20 90 e5                                      ldr r2, [r0, #0x20]
00881e38  34 30 90 e5                                      ldr r3, [r0, #0x34]
00881e3c  14 10 80 e5                                      str r1, [r0, #0x14]
00881e40  18 20 80 e5                                      str r2, [r0, #0x18]
00881e44  30 30 80 e5                                      str r3, [r0, #0x30]
00881e48  1e ff 2f e1                                      bx lr

; FUNCTION 0x00882888, declared_size=72, range_size=72, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroupD1Ev
; demangled: vox::SequentialGroup::~SequentialGroup()
; decoder-mode: arm
00882888  10 40 2d e9                                      push {r4, lr}
0088288c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00882890  34 20 9f e5                                      ldr r2, [pc, #0x34]
00882894  00 40 a0 e1                                      mov r4, r0
00882898  03 30 8f e0                                      add r3, pc, r3
0088289c  24 00 90 e5                                      ldr r0, [r0, #0x24]
008828a0  02 20 93 e7                                      ldr r2, [r3, r2]
008828a4  00 00 50 e3                                      cmp r0, #0
008828a8  08 20 82 e2                                      add r2, r2, #8
008828ac  00 20 84 e5                                      str r2, [r4]
008828b0  00 00 00 0a                                      beq #0x8828b8
008828b4  e2 36 ea eb                                      bl #0x310444
008828b8  04 00 a0 e1                                      mov r0, r4
008828bc  6c fc ff eb                                      bl #0x881a74
008828c0  04 00 a0 e1                                      mov r0, r4
008828c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008828c8  f8 21 11 00 30 1a 00 00                          .byte 0xf8, 0x21, 0x11, 0x00, 0x30, 0x1a, 0x00, 0x00

; FUNCTION 0x008828d0, declared_size=72, range_size=72, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroupD2Ev
; demangled: vox::SequentialGroup::~SequentialGroup()
; decoder-mode: arm
008828d0  10 40 2d e9                                      push {r4, lr}
008828d4  34 30 9f e5                                      ldr r3, [pc, #0x34]
008828d8  34 20 9f e5                                      ldr r2, [pc, #0x34]
008828dc  00 40 a0 e1                                      mov r4, r0
008828e0  03 30 8f e0                                      add r3, pc, r3
008828e4  24 00 90 e5                                      ldr r0, [r0, #0x24]
008828e8  02 20 93 e7                                      ldr r2, [r3, r2]
008828ec  00 00 50 e3                                      cmp r0, #0
008828f0  08 20 82 e2                                      add r2, r2, #8
008828f4  00 20 84 e5                                      str r2, [r4]
008828f8  00 00 00 0a                                      beq #0x882900
008828fc  d0 36 ea eb                                      bl #0x310444
00882900  04 00 a0 e1                                      mov r0, r4
00882904  5a fc ff eb                                      bl #0x881a74
00882908  04 00 a0 e1                                      mov r0, r4
0088290c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00882910  b0 21 11 00 30 1a 00 00                          .byte 0xb0, 0x21, 0x11, 0x00, 0x30, 0x1a, 0x00, 0x00

; FUNCTION 0x00882c68, declared_size=28, range_size=28, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroupD0Ev
; demangled: vox::SequentialGroup::~SequentialGroup()
; decoder-mode: arm
00882c68  10 40 2d e9                                      push {r4, lr}
00882c6c  00 40 a0 e1                                      mov r4, r0
00882c70  04 ff ff eb                                      bl #0x882888
00882c74  04 00 a0 e1                                      mov r0, r4
00882c78  8c 2d ea eb                                      bl #0x30e2b0
00882c7c  04 00 a0 e1                                      mov r0, r4
00882c80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0088387c, declared_size=72, range_size=72, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroup10AddElementEi
; demangled: vox::SequentialGroup::AddElement(int)
; decoder-mode: arm
0088387c  04 e0 2d e5                                      str lr, [sp, #-4]!
00883880  28 30 90 e5                                      ldr r3, [r0, #0x28]
00883884  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
00883888  0c d0 4d e2                                      sub sp, sp, #0xc
0088388c  04 10 8d e5                                      str r1, [sp, #4]
00883890  02 00 53 e1                                      cmp r3, r2
00883894  05 00 00 0a                                      beq #0x8838b0
00883898  00 10 83 e5                                      str r1, [r3]
0088389c  28 30 90 e5                                      ldr r3, [r0, #0x28]
008838a0  04 30 83 e2                                      add r3, r3, #4
008838a4  28 30 80 e5                                      str r3, [r0, #0x28]
008838a8  0c d0 8d e2                                      add sp, sp, #0xc
008838ac  00 80 bd e8                                      ldm sp!, {pc}
008838b0  24 00 80 e2                                      add r0, r0, #0x24
008838b4  03 10 a0 e1                                      mov r1, r3
008838b8  04 20 8d e2                                      add r2, sp, #4
008838bc  ca ff ff eb                                      bl #0x8837ec
008838c0  f8 ff ff ea                                      b #0x8838a8

; FUNCTION 0x008839fc, declared_size=188, range_size=188, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroupC1ERS0_
; demangled: vox::SequentialGroup::SequentialGroup(vox::SequentialGroup&)
; decoder-mode: arm
008839fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00883a00  a8 60 9f e5                                      ldr r6, [pc, #0xa8]
00883a04  00 40 a0 e1                                      mov r4, r0
00883a08  01 50 a0 e1                                      mov r5, r1
00883a0c  e2 f7 ff eb                                      bl #0x88199c
00883a10  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00883a14  06 60 8f e0                                      add r6, pc, r6
00883a18  00 10 a0 e3                                      mov r1, #0
00883a1c  03 30 96 e7                                      ldr r3, [r6, r3]
00883a20  24 10 84 e5                                      str r1, [r4, #0x24]
00883a24  28 10 84 e5                                      str r1, [r4, #0x28]
00883a28  08 30 83 e2                                      add r3, r3, #8
00883a2c  00 30 84 e5                                      str r3, [r4]
00883a30  2c 10 84 e5                                      str r1, [r4, #0x2c]
00883a34  30 30 95 e5                                      ldr r3, [r5, #0x30]
00883a38  30 30 84 e5                                      str r3, [r4, #0x30]
00883a3c  34 30 95 e5                                      ldr r3, [r5, #0x34]
00883a40  34 30 84 e5                                      str r3, [r4, #0x34]
00883a44  28 60 95 e5                                      ldr r6, [r5, #0x28]
00883a48  24 50 95 e5                                      ldr r5, [r5, #0x24]
00883a4c  06 00 55 e1                                      cmp r5, r6
00883a50  14 00 00 0a                                      beq #0x883aa8
00883a54  24 70 84 e2                                      add r7, r4, #0x24
00883a58  01 30 a0 e1                                      mov r3, r1
00883a5c  09 00 00 ea                                      b #0x883a88
00883a60  00 20 95 e5                                      ldr r2, [r5]
00883a64  04 50 85 e2                                      add r5, r5, #4
00883a68  06 00 55 e1                                      cmp r5, r6
00883a6c  00 20 83 e5                                      str r2, [r3]
00883a70  28 30 94 e5                                      ldr r3, [r4, #0x28]
00883a74  04 30 83 e2                                      add r3, r3, #4
00883a78  28 30 84 e5                                      str r3, [r4, #0x28]
00883a7c  09 00 00 0a                                      beq #0x883aa8
00883a80  28 30 94 e5                                      ldr r3, [r4, #0x28]
00883a84  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00883a88  03 00 51 e1                                      cmp r1, r3
00883a8c  f3 ff ff 1a                                      bne #0x883a60
00883a90  05 20 a0 e1                                      mov r2, r5
00883a94  07 00 a0 e1                                      mov r0, r7
00883a98  04 50 85 e2                                      add r5, r5, #4
00883a9c  52 ff ff eb                                      bl #0x8837ec
00883aa0  06 00 55 e1                                      cmp r5, r6
00883aa4  f5 ff ff 1a                                      bne #0x883a80
00883aa8  04 00 a0 e1                                      mov r0, r4
00883aac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00883ab0  7c 10 11 00 30 1a 00 00                          .byte 0x7c, 0x10, 0x11, 0x00, 0x30, 0x1a, 0x00, 0x00

; FUNCTION 0x00883ab8, declared_size=188, range_size=188, mode=arm
; class-group: vox::SequentialGroup
; alias: _ZN3vox15SequentialGroupC2ERS0_
; demangled: vox::SequentialGroup::SequentialGroup(vox::SequentialGroup&)
; decoder-mode: arm
00883ab8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00883abc  a8 60 9f e5                                      ldr r6, [pc, #0xa8]
00883ac0  00 40 a0 e1                                      mov r4, r0
00883ac4  01 50 a0 e1                                      mov r5, r1
00883ac8  b3 f7 ff eb                                      bl #0x88199c
00883acc  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00883ad0  06 60 8f e0                                      add r6, pc, r6
00883ad4  00 10 a0 e3                                      mov r1, #0
00883ad8  03 30 96 e7                                      ldr r3, [r6, r3]
00883adc  24 10 84 e5                                      str r1, [r4, #0x24]
00883ae0  28 10 84 e5                                      str r1, [r4, #0x28]
00883ae4  08 30 83 e2                                      add r3, r3, #8
00883ae8  00 30 84 e5                                      str r3, [r4]
00883aec  2c 10 84 e5                                      str r1, [r4, #0x2c]
00883af0  30 30 95 e5                                      ldr r3, [r5, #0x30]
00883af4  30 30 84 e5                                      str r3, [r4, #0x30]
00883af8  34 30 95 e5                                      ldr r3, [r5, #0x34]
00883afc  34 30 84 e5                                      str r3, [r4, #0x34]
00883b00  28 60 95 e5                                      ldr r6, [r5, #0x28]
00883b04  24 50 95 e5                                      ldr r5, [r5, #0x24]
00883b08  06 00 55 e1                                      cmp r5, r6
00883b0c  14 00 00 0a                                      beq #0x883b64
00883b10  24 70 84 e2                                      add r7, r4, #0x24
00883b14  01 30 a0 e1                                      mov r3, r1
00883b18  09 00 00 ea                                      b #0x883b44
00883b1c  00 20 95 e5                                      ldr r2, [r5]
00883b20  04 50 85 e2                                      add r5, r5, #4
00883b24  06 00 55 e1                                      cmp r5, r6
00883b28  00 20 83 e5                                      str r2, [r3]
00883b2c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00883b30  04 30 83 e2                                      add r3, r3, #4
00883b34  28 30 84 e5                                      str r3, [r4, #0x28]
00883b38  09 00 00 0a                                      beq #0x883b64
00883b3c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00883b40  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00883b44  03 00 51 e1                                      cmp r1, r3
00883b48  f3 ff ff 1a                                      bne #0x883b1c
00883b4c  05 20 a0 e1                                      mov r2, r5
00883b50  07 00 a0 e1                                      mov r0, r7
00883b54  04 50 85 e2                                      add r5, r5, #4
00883b58  23 ff ff eb                                      bl #0x8837ec
00883b5c  06 00 55 e1                                      cmp r5, r6
00883b60  f5 ff ff 1a                                      bne #0x883b3c
00883b64  04 00 a0 e1                                      mov r0, r4
00883b68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00883b6c  c0 0f 11 00 30 1a 00 00                          .byte 0xc0, 0x0f, 0x11, 0x00, 0x30, 0x1a, 0x00, 0x00
