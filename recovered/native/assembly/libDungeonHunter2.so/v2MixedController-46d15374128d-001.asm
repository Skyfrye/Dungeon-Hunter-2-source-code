; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00408ad8, declared_size=76, range_size=76, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController6UpdateEv
; demangled: v2MixedController::Update()
; decoder-mode: arm
00408ad8  70 40 2d e9                                      push {r4, r5, r6, lr}
00408adc  18 30 90 e5                                      ldr r3, [r0, #0x18]
00408ae0  1c 60 90 e5                                      ldr r6, [r0, #0x1c]
00408ae4  00 50 a0 e1                                      mov r5, r0
00408ae8  06 60 63 e0                                      rsb r6, r3, r6
00408aec  46 61 b0 e1                                      asrs r6, r6, #2
00408af0  0a 00 00 0a                                      beq #0x408b20
00408af4  00 40 a0 e3                                      mov r4, #0
00408af8  00 00 00 ea                                      b #0x408b00
00408afc  18 30 95 e5                                      ldr r3, [r5, #0x18]
00408b00  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00408b04  01 40 84 e2                                      add r4, r4, #1
00408b08  03 00 a0 e1                                      mov r0, r3
00408b0c  00 30 93 e5                                      ldr r3, [r3]
00408b10  0f e0 a0 e1                                      mov lr, pc
00408b14  08 f0 93 e5                                      ldr pc, [r3, #8]
00408b18  06 00 54 e1                                      cmp r4, r6
00408b1c  f6 ff ff 1a                                      bne #0x408afc
00408b20  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00408b44, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController14Ctrl_ResetZoomEv
; demangled: non-virtual thunk to v2MixedController::Ctrl_ResetZoom()
; decoder-mode: arm
00408b44  10 00 40 e2                                      sub r0, r0, #0x10
00408b48  ff ff ff ea                                      b #0x408b4c

; FUNCTION 0x00408b4c, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController14Ctrl_ResetZoomEv
; demangled: v2MixedController::Ctrl_ResetZoom()
; decoder-mode: arm
00408b4c  03 f3 ff ea                                      b #0x405760

; FUNCTION 0x00408b50, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController9Ctrl_ZoomEf
; demangled: non-virtual thunk to v2MixedController::Ctrl_Zoom(float)
; decoder-mode: arm
00408b50  10 00 40 e2                                      sub r0, r0, #0x10
00408b54  ff ff ff ea                                      b #0x408b58

; FUNCTION 0x00408b58, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController9Ctrl_ZoomEf
; demangled: v2MixedController::Ctrl_Zoom(float)
; decoder-mode: arm
00408b58  f9 f2 ff ea                                      b #0x405744

; FUNCTION 0x00408b5c, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController12Ctrl_OpenIGMEv
; demangled: non-virtual thunk to v2MixedController::Ctrl_OpenIGM()
; decoder-mode: arm
00408b5c  10 00 40 e2                                      sub r0, r0, #0x10
00408b60  ff ff ff ea                                      b #0x408b64

; FUNCTION 0x00408b64, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController12Ctrl_OpenIGMEv
; demangled: v2MixedController::Ctrl_OpenIGM()
; decoder-mode: arm
00408b64  ef f2 ff ea                                      b #0x405728

; FUNCTION 0x00408b68, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController9Ctrl_KillEP10GameObjectb
; demangled: non-virtual thunk to v2MixedController::Ctrl_Kill(GameObject*, bool)
; decoder-mode: arm
00408b68  10 00 40 e2                                      sub r0, r0, #0x10
00408b6c  ff ff ff ea                                      b #0x408b70

; FUNCTION 0x00408b70, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController9Ctrl_KillEP10GameObjectb
; demangled: v2MixedController::Ctrl_Kill(GameObject*, bool)
; decoder-mode: arm
00408b70  e5 f2 ff ea                                      b #0x40570c

; FUNCTION 0x00408b74, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController15Ctrl_DropObjectEv
; demangled: non-virtual thunk to v2MixedController::Ctrl_DropObject()
; decoder-mode: arm
00408b74  10 00 40 e2                                      sub r0, r0, #0x10
00408b78  ff ff ff ea                                      b #0x408b7c

; FUNCTION 0x00408b7c, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController15Ctrl_DropObjectEv
; demangled: v2MixedController::Ctrl_DropObject()
; decoder-mode: arm
00408b7c  05 f3 ff ea                                      b #0x405798

; FUNCTION 0x00408b80, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController11Ctrl_UseOOIEP10GameObject
; demangled: non-virtual thunk to v2MixedController::Ctrl_UseOOI(GameObject*)
; decoder-mode: arm
00408b80  10 00 40 e2                                      sub r0, r0, #0x10
00408b84  ff ff ff ea                                      b #0x408b88

; FUNCTION 0x00408b88, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController11Ctrl_UseOOIEP10GameObject
; demangled: v2MixedController::Ctrl_UseOOI(GameObject*)
; decoder-mode: arm
00408b88  1b f3 ff ea                                      b #0x4057fc

; FUNCTION 0x00408b8c, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController14Ctrl_UsePotionEv
; demangled: non-virtual thunk to v2MixedController::Ctrl_UsePotion()
; decoder-mode: arm
00408b8c  10 00 40 e2                                      sub r0, r0, #0x10
00408b90  ff ff ff ea                                      b #0x408b94

; FUNCTION 0x00408b94, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController14Ctrl_UsePotionEv
; demangled: v2MixedController::Ctrl_UsePotion()
; decoder-mode: arm
00408b94  c5 f2 ff ea                                      b #0x4056b0

; FUNCTION 0x00408b98, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController12Ctrl_EndCastEb
; demangled: non-virtual thunk to v2MixedController::Ctrl_EndCast(bool)
; decoder-mode: arm
00408b98  10 00 40 e2                                      sub r0, r0, #0x10
00408b9c  ff ff ff ea                                      b #0x408ba0

; FUNCTION 0x00408ba0, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController12Ctrl_EndCastEb
; demangled: v2MixedController::Ctrl_EndCast(bool)
; decoder-mode: arm
00408ba0  00 10 a0 e3                                      mov r1, #0
00408ba4  aa f2 ff ea                                      b #0x405654

; FUNCTION 0x00408ba8, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController14Ctrl_BeginCastEb
; demangled: non-virtual thunk to v2MixedController::Ctrl_BeginCast(bool)
; decoder-mode: arm
00408ba8  10 00 40 e2                                      sub r0, r0, #0x10
00408bac  ff ff ff ea                                      b #0x408bb0

; FUNCTION 0x00408bb0, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController14Ctrl_BeginCastEb
; demangled: v2MixedController::Ctrl_BeginCast(bool)
; decoder-mode: arm
00408bb0  00 10 a0 e3                                      mov r1, #0
00408bb4  8f f2 ff ea                                      b #0x4055f8

; FUNCTION 0x00408bb8, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController13Ctrl_EndSkillEj
; demangled: non-virtual thunk to v2MixedController::Ctrl_EndSkill(unsigned int)
; decoder-mode: arm
00408bb8  10 00 40 e2                                      sub r0, r0, #0x10
00408bbc  ff ff ff ea                                      b #0x408bc0

; FUNCTION 0x00408bc0, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController13Ctrl_EndSkillEj
; demangled: v2MixedController::Ctrl_EndSkill(unsigned int)
; decoder-mode: arm
00408bc0  63 f3 ff ea                                      b #0x405954

; FUNCTION 0x00408bc4, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController15Ctrl_BeginSkillEj
; demangled: non-virtual thunk to v2MixedController::Ctrl_BeginSkill(unsigned int)
; decoder-mode: arm
00408bc4  10 00 40 e2                                      sub r0, r0, #0x10
00408bc8  ff ff ff ea                                      b #0x408bcc

; FUNCTION 0x00408bcc, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController15Ctrl_BeginSkillEj
; demangled: v2MixedController::Ctrl_BeginSkill(unsigned int)
; decoder-mode: arm
00408bcc  93 f3 ff ea                                      b #0x405a20

; FUNCTION 0x00408bd0, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController11Ctrl_AttackEP10GameObject
; demangled: non-virtual thunk to v2MixedController::Ctrl_Attack(GameObject*)
; decoder-mode: arm
00408bd0  10 00 40 e2                                      sub r0, r0, #0x10
00408bd4  ff ff ff ea                                      b #0x408bd8

; FUNCTION 0x00408bd8, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController11Ctrl_AttackEP10GameObject
; demangled: v2MixedController::Ctrl_Attack(GameObject*)
; decoder-mode: arm
00408bd8  c9 f3 ff ea                                      b #0x405b04

; FUNCTION 0x00408bdc, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController9Ctrl_StopEv
; demangled: non-virtual thunk to v2MixedController::Ctrl_Stop()
; decoder-mode: arm
00408bdc  10 00 40 e2                                      sub r0, r0, #0x10
00408be0  ff ff ff ea                                      b #0x408be4

; FUNCTION 0x00408be4, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController9Ctrl_StopEv
; demangled: v2MixedController::Ctrl_Stop()
; decoder-mode: arm
00408be4  6c f2 ff ea                                      b #0x40559c

; FUNCTION 0x00408be8, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController11Ctrl_MoveToEP10GameObject
; demangled: non-virtual thunk to v2MixedController::Ctrl_MoveTo(GameObject*)
; decoder-mode: arm
00408be8  10 00 40 e2                                      sub r0, r0, #0x10
00408bec  ff ff ff ea                                      b #0x408bf0

; FUNCTION 0x00408bf0, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController11Ctrl_MoveToEP10GameObject
; demangled: v2MixedController::Ctrl_MoveTo(GameObject*)
; decoder-mode: arm
00408bf0  52 f2 ff ea                                      b #0x405540

; FUNCTION 0x00408bf4, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController11Ctrl_MoveToERK7Point3DIfE
; demangled: non-virtual thunk to v2MixedController::Ctrl_MoveTo(Point3D<float> const&)
; decoder-mode: arm
00408bf4  10 00 40 e2                                      sub r0, r0, #0x10
00408bf8  ff ff ff ea                                      b #0x408bfc

; FUNCTION 0x00408bfc, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController11Ctrl_MoveToERK7Point3DIfE
; demangled: v2MixedController::Ctrl_MoveTo(Point3D<float> const&)
; decoder-mode: arm
00408bfc  38 f2 ff ea                                      b #0x4054e4

; FUNCTION 0x00408c00, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController11Ctrl_HeadToEP10GameObject
; demangled: non-virtual thunk to v2MixedController::Ctrl_HeadTo(GameObject*)
; decoder-mode: arm
00408c00  10 00 40 e2                                      sub r0, r0, #0x10
00408c04  ff ff ff ea                                      b #0x408c08

; FUNCTION 0x00408c08, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController11Ctrl_HeadToEP10GameObject
; demangled: v2MixedController::Ctrl_HeadTo(GameObject*)
; decoder-mode: arm
00408c08  1e f2 ff ea                                      b #0x405488

; FUNCTION 0x00408c0c, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController11Ctrl_HeadToERK7Point3DIfE
; demangled: non-virtual thunk to v2MixedController::Ctrl_HeadTo(Point3D<float> const&)
; decoder-mode: arm
00408c0c  10 00 40 e2                                      sub r0, r0, #0x10
00408c10  ff ff ff ea                                      b #0x408c14

; FUNCTION 0x00408c14, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController11Ctrl_HeadToERK7Point3DIfE
; demangled: v2MixedController::Ctrl_HeadTo(Point3D<float> const&)
; decoder-mode: arm
00408c14  04 f2 ff ea                                      b #0x40542c

; FUNCTION 0x00408c18, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController16Ctrl_HeadTowardsEP10GameObject
; demangled: non-virtual thunk to v2MixedController::Ctrl_HeadTowards(GameObject*)
; decoder-mode: arm
00408c18  10 00 40 e2                                      sub r0, r0, #0x10
00408c1c  ff ff ff ea                                      b #0x408c20

; FUNCTION 0x00408c20, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController16Ctrl_HeadTowardsEP10GameObject
; demangled: v2MixedController::Ctrl_HeadTowards(GameObject*)
; decoder-mode: arm
00408c20  ea f1 ff ea                                      b #0x4053d0

; FUNCTION 0x00408c24, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController16Ctrl_HeadTowardsERK7Point3DIfE
; demangled: non-virtual thunk to v2MixedController::Ctrl_HeadTowards(Point3D<float> const&)
; decoder-mode: arm
00408c24  10 00 40 e2                                      sub r0, r0, #0x10
00408c28  ff ff ff ea                                      b #0x408c2c

; FUNCTION 0x00408c2c, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController16Ctrl_HeadTowardsERK7Point3DIfE
; demangled: v2MixedController::Ctrl_HeadTowards(Point3D<float> const&)
; decoder-mode: arm
00408c2c  d0 f1 ff ea                                      b #0x405374

; FUNCTION 0x00408c30, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController11Ctrl_WarpToERK7Point3DIfE
; demangled: non-virtual thunk to v2MixedController::Ctrl_WarpTo(Point3D<float> const&)
; decoder-mode: arm
00408c30  10 00 40 e2                                      sub r0, r0, #0x10
00408c34  ff ff ff ea                                      b #0x408c38

; FUNCTION 0x00408c38, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController11Ctrl_WarpToERK7Point3DIfE
; demangled: v2MixedController::Ctrl_WarpTo(Point3D<float> const&)
; decoder-mode: arm
00408c38  b6 f1 ff ea                                      b #0x405318

; FUNCTION 0x00408c3c, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController11Ctrl_LookAtEP10GameObject
; demangled: non-virtual thunk to v2MixedController::Ctrl_LookAt(GameObject*)
; decoder-mode: arm
00408c3c  10 00 40 e2                                      sub r0, r0, #0x10
00408c40  ff ff ff ea                                      b #0x408c44

; FUNCTION 0x00408c44, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController11Ctrl_LookAtEP10GameObject
; demangled: v2MixedController::Ctrl_LookAt(GameObject*)
; decoder-mode: arm
00408c44  9c f1 ff ea                                      b #0x4052bc

; FUNCTION 0x00408c48, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController11Ctrl_LookAtERK7Point3DIfE
; demangled: non-virtual thunk to v2MixedController::Ctrl_LookAt(Point3D<float> const&)
; decoder-mode: arm
00408c48  10 00 40 e2                                      sub r0, r0, #0x10
00408c4c  ff ff ff ea                                      b #0x408c50

; FUNCTION 0x00408c50, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController11Ctrl_LookAtERK7Point3DIfE
; demangled: v2MixedController::Ctrl_LookAt(Point3D<float> const&)
; decoder-mode: arm
00408c50  82 f1 ff ea                                      b #0x405260

; FUNCTION 0x00408c54, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController13Ctrl_RotateByEf
; demangled: non-virtual thunk to v2MixedController::Ctrl_RotateBy(float)
; decoder-mode: arm
00408c54  10 00 40 e2                                      sub r0, r0, #0x10
00408c58  ff ff ff ea                                      b #0x408c5c

; FUNCTION 0x00408c5c, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController13Ctrl_RotateByEf
; demangled: v2MixedController::Ctrl_RotateBy(float)
; decoder-mode: arm
00408c5c  68 f1 ff ea                                      b #0x405204

; FUNCTION 0x00408c60, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedController10Ctrl_ClickERK7Point3DIfEb
; demangled: non-virtual thunk to v2MixedController::Ctrl_Click(Point3D<float> const&, bool)
; decoder-mode: arm
00408c60  10 00 40 e2                                      sub r0, r0, #0x10
00408c64  ff ff ff ea                                      b #0x408c68

; FUNCTION 0x00408c68, declared_size=4, range_size=4, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController10Ctrl_ClickERK7Point3DIfEb
; demangled: v2MixedController::Ctrl_Click(Point3D<float> const&, bool)
; decoder-mode: arm
00408c68  4e f1 ff ea                                      b #0x4051a8

; FUNCTION 0x00408cf4, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedControllerD1Ev
; demangled: non-virtual thunk to v2MixedController::~v2MixedController()
; decoder-mode: arm
00408cf4  10 00 40 e2                                      sub r0, r0, #0x10
00408cf8  ff ff ff ea                                      b #0x408cfc

; FUNCTION 0x00408cfc, declared_size=184, range_size=184, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedControllerD1Ev
; demangled: v2MixedController::~v2MixedController()
; decoder-mode: arm
00408cfc  70 40 2d e9                                      push {r4, r5, r6, lr}
00408d00  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
00408d04  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00408d08  00 40 a0 e1                                      mov r4, r0
00408d0c  02 20 8f e0                                      add r2, pc, r2
00408d10  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00408d14  18 10 94 e5                                      ldr r1, [r4, #0x18]
00408d18  03 30 92 e7                                      ldr r3, [r2, r3]
00408d1c  00 60 61 e0                                      rsb r6, r1, r0
00408d20  7c 20 83 e2                                      add r2, r3, #0x7c
00408d24  46 61 b0 e1                                      asrs r6, r6, #2
00408d28  08 30 83 e2                                      add r3, r3, #8
00408d2c  00 30 84 e5                                      str r3, [r4]
00408d30  10 20 84 e5                                      str r2, [r4, #0x10]
00408d34  0c 00 00 0a                                      beq #0x408d6c
00408d38  00 50 a0 e3                                      mov r5, #0
00408d3c  05 31 91 e7                                      ldr r3, [r1, r5, lsl #2]
00408d40  01 50 85 e2                                      add r5, r5, #1
00408d44  00 00 53 e3                                      cmp r3, #0
00408d48  04 00 00 0a                                      beq #0x408d60
00408d4c  03 00 a0 e1                                      mov r0, r3
00408d50  00 30 93 e5                                      ldr r3, [r3]
00408d54  0f e0 a0 e1                                      mov lr, pc
00408d58  04 f0 93 e5                                      ldr pc, [r3, #4]
00408d5c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00408d60  06 00 55 e1                                      cmp r5, r6
00408d64  f4 ff ff 1a                                      bne #0x408d3c
00408d68  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00408d6c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00408d70  00 00 51 e1                                      cmp r1, r0
00408d74  1c 10 84 15                                      strne r1, [r4, #0x1c]
00408d78  00 00 53 e3                                      cmp r3, #0
00408d7c  18 20 84 e2                                      add r2, r4, #0x18
00408d80  05 00 00 0a                                      beq #0x408d9c
00408d84  08 20 92 e5                                      ldr r2, [r2, #8]
00408d88  03 10 a0 e1                                      mov r1, r3
00408d8c  20 00 84 e2                                      add r0, r4, #0x20
00408d90  02 30 63 e0                                      rsb r3, r3, r2
00408d94  43 21 a0 e1                                      asr r2, r3, #2
00408d98  ce ff ff eb                                      bl #0x408cd8
00408d9c  10 00 84 e2                                      add r0, r4, #0x10
00408da0  cf f0 ff eb                                      bl #0x4050e4
00408da4  04 00 a0 e1                                      mov r0, r4
00408da8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00408dac  84 bd 58 00 64 1b 00 00                          .byte 0x84, 0xbd, 0x58, 0x00, 0x64, 0x1b, 0x00, 0x00

; FUNCTION 0x00408db4, declared_size=8, range_size=8, mode=arm
; class-group: v2MixedController
; alias: _ZThn16_N17v2MixedControllerD0Ev
; demangled: non-virtual thunk to v2MixedController::~v2MixedController()
; decoder-mode: arm
00408db4  10 00 40 e2                                      sub r0, r0, #0x10
00408db8  ff ff ff ea                                      b #0x408dbc

; FUNCTION 0x00408dbc, declared_size=28, range_size=28, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedControllerD0Ev
; demangled: v2MixedController::~v2MixedController()
; decoder-mode: arm
00408dbc  10 40 2d e9                                      push {r4, lr}
00408dc0  00 40 a0 e1                                      mov r4, r0
00408dc4  cc ff ff eb                                      bl #0x408cfc
00408dc8  04 00 a0 e1                                      mov r0, r4
00408dcc  9b 1d fc eb                                      bl #0x310440
00408dd0  04 00 a0 e1                                      mov r0, r4
00408dd4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00408dd8, declared_size=244, range_size=244, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedControllerC1EP14v2Controllable
; demangled: v2MixedController::v2MixedController(v2Controllable*)
; decoder-mode: arm
00408dd8  30 40 2d e9                                      push {r4, r5, lr}
00408ddc  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
00408de0  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00408de4  00 20 a0 e3                                      mov r2, #0
00408de8  05 50 8f e0                                      add r5, pc, r5
00408dec  03 30 95 e7                                      ldr r3, [r5, r3]
00408df0  00 00 51 e3                                      cmp r1, #0
00408df4  0c d0 4d e2                                      sub sp, sp, #0xc
00408df8  08 30 83 e2                                      add r3, r3, #8
00408dfc  00 40 a0 e1                                      mov r4, r0
00408e00  00 30 80 e5                                      str r3, [r0]
00408e04  0c 20 80 e5                                      str r2, [r0, #0xc]
00408e08  04 10 80 e5                                      str r1, [r0, #4]
00408e0c  08 20 c0 e5                                      strb r2, [r0, #8]
00408e10  09 20 c0 e5                                      strb r2, [r0, #9]
00408e14  0a 20 c0 e5                                      strb r2, [r0, #0xa]
00408e18  0e 00 00 0a                                      beq #0x408e58
00408e1c  10 00 84 e2                                      add r0, r4, #0x10
00408e20  e4 ef ff eb                                      bl #0x404db8
00408e24  88 30 9f e5                                      ldr r3, [pc, #0x88]
00408e28  00 20 a0 e3                                      mov r2, #0
00408e2c  20 20 84 e5                                      str r2, [r4, #0x20]
00408e30  03 30 95 e7                                      ldr r3, [r5, r3]
00408e34  18 20 84 e5                                      str r2, [r4, #0x18]
00408e38  1c 20 84 e5                                      str r2, [r4, #0x1c]
00408e3c  7c 20 83 e2                                      add r2, r3, #0x7c
00408e40  08 30 83 e2                                      add r3, r3, #8
00408e44  00 30 84 e5                                      str r3, [r4]
00408e48  10 20 84 e5                                      str r2, [r4, #0x10]
00408e4c  04 00 a0 e1                                      mov r0, r4
00408e50  0c d0 8d e2                                      add sp, sp, #0xc
00408e54  30 80 bd e8                                      pop {r4, r5, pc}
00408e58  58 30 9f e5                                      ldr r3, [pc, #0x58]
00408e5c  03 30 95 e7                                      ldr r3, [r5, r3]
00408e60  00 30 93 e5                                      ldr r3, [r3]
00408e64  02 00 53 e3                                      cmp r3, #2
00408e68  00 10 81 05                                      streq r1, [r1]
00408e6c  ea ff ff 0a                                      beq #0x408e1c
00408e70  01 00 53 e3                                      cmp r3, #1
00408e74  e8 ff ff 1a                                      bne #0x408e1c
00408e78  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00408e7c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00408e80  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00408e84  00 00 95 e7                                      ldr r0, [r5, r0]
00408e88  38 30 9f e5                                      ldr r3, [pc, #0x38]
00408e8c  44 c0 a0 e3                                      mov ip, #0x44
00408e90  01 10 8f e0                                      add r1, pc, r1
00408e94  02 20 8f e0                                      add r2, pc, r2
00408e98  03 30 8f e0                                      add r3, pc, r3
00408e9c  a8 00 80 e2                                      add r0, r0, #0xa8
00408ea0  00 c0 8d e5                                      str ip, [sp]
00408ea4  56 14 fc eb                                      bl #0x30e004
00408ea8  db ff ff ea                                      b #0x408e1c
; mapping-symbol data/literal pool
00408eac  a8 bc 58 00 a4 2a 00 00 64 1b 00 00 c0 39 00 00  .byte 0xa8, 0xbc, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0x64, 0x1b, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00408ebc  c0 19 00 00 48 55 4b 00 2c a6 4b 00 40 eb 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x48, 0x55, 0x4b, 0x00, 0x2c, 0xa6, 0x4b, 0x00, 0x40, 0xeb, 0x4b, 0x00

; FUNCTION 0x00408ecc, declared_size=244, range_size=244, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedControllerC2EP14v2Controllable
; demangled: v2MixedController::v2MixedController(v2Controllable*)
; decoder-mode: arm
00408ecc  30 40 2d e9                                      push {r4, r5, lr}
00408ed0  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
00408ed4  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00408ed8  00 20 a0 e3                                      mov r2, #0
00408edc  05 50 8f e0                                      add r5, pc, r5
00408ee0  03 30 95 e7                                      ldr r3, [r5, r3]
00408ee4  00 00 51 e3                                      cmp r1, #0
00408ee8  0c d0 4d e2                                      sub sp, sp, #0xc
00408eec  08 30 83 e2                                      add r3, r3, #8
00408ef0  00 40 a0 e1                                      mov r4, r0
00408ef4  00 30 80 e5                                      str r3, [r0]
00408ef8  0c 20 80 e5                                      str r2, [r0, #0xc]
00408efc  04 10 80 e5                                      str r1, [r0, #4]
00408f00  08 20 c0 e5                                      strb r2, [r0, #8]
00408f04  09 20 c0 e5                                      strb r2, [r0, #9]
00408f08  0a 20 c0 e5                                      strb r2, [r0, #0xa]
00408f0c  0e 00 00 0a                                      beq #0x408f4c
00408f10  10 00 84 e2                                      add r0, r4, #0x10
00408f14  a7 ef ff eb                                      bl #0x404db8
00408f18  88 30 9f e5                                      ldr r3, [pc, #0x88]
00408f1c  00 20 a0 e3                                      mov r2, #0
00408f20  20 20 84 e5                                      str r2, [r4, #0x20]
00408f24  03 30 95 e7                                      ldr r3, [r5, r3]
00408f28  18 20 84 e5                                      str r2, [r4, #0x18]
00408f2c  1c 20 84 e5                                      str r2, [r4, #0x1c]
00408f30  7c 20 83 e2                                      add r2, r3, #0x7c
00408f34  08 30 83 e2                                      add r3, r3, #8
00408f38  00 30 84 e5                                      str r3, [r4]
00408f3c  10 20 84 e5                                      str r2, [r4, #0x10]
00408f40  04 00 a0 e1                                      mov r0, r4
00408f44  0c d0 8d e2                                      add sp, sp, #0xc
00408f48  30 80 bd e8                                      pop {r4, r5, pc}
00408f4c  58 30 9f e5                                      ldr r3, [pc, #0x58]
00408f50  03 30 95 e7                                      ldr r3, [r5, r3]
00408f54  00 30 93 e5                                      ldr r3, [r3]
00408f58  02 00 53 e3                                      cmp r3, #2
00408f5c  00 10 81 05                                      streq r1, [r1]
00408f60  ea ff ff 0a                                      beq #0x408f10
00408f64  01 00 53 e3                                      cmp r3, #1
00408f68  e8 ff ff 1a                                      bne #0x408f10
00408f6c  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00408f70  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00408f74  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00408f78  00 00 95 e7                                      ldr r0, [r5, r0]
00408f7c  38 30 9f e5                                      ldr r3, [pc, #0x38]
00408f80  44 c0 a0 e3                                      mov ip, #0x44
00408f84  01 10 8f e0                                      add r1, pc, r1
00408f88  02 20 8f e0                                      add r2, pc, r2
00408f8c  03 30 8f e0                                      add r3, pc, r3
00408f90  a8 00 80 e2                                      add r0, r0, #0xa8
00408f94  00 c0 8d e5                                      str ip, [sp]
00408f98  19 14 fc eb                                      bl #0x30e004
00408f9c  db ff ff ea                                      b #0x408f10
; mapping-symbol data/literal pool
00408fa0  b4 bb 58 00 a4 2a 00 00 64 1b 00 00 c0 39 00 00  .byte 0xb4, 0xbb, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0x64, 0x1b, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00408fb0  c0 19 00 00 54 54 4b 00 38 a5 4b 00 4c ea 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x54, 0x54, 0x4b, 0x00, 0x38, 0xa5, 0x4b, 0x00, 0x4c, 0xea, 0x4b, 0x00

; FUNCTION 0x00408fc0, declared_size=344, range_size=344, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedController13AddControllerEP12v2Controller
; demangled: v2MixedController::AddController(v2Controller*)
; decoder-mode: arm
00408fc0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00408fc4  34 31 9f e5                                      ldr r3, [pc, #0x134]
00408fc8  00 50 51 e2                                      subs r5, r1, #0
00408fcc  10 d0 4d e2                                      sub sp, sp, #0x10
00408fd0  00 40 a0 e1                                      mov r4, r0
00408fd4  03 30 8f e0                                      add r3, pc, r3
00408fd8  0b 00 00 0a                                      beq #0x40900c
00408fdc  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00408fe0  0c 30 85 e5                                      str r3, [r5, #0xc]
00408fe4  1c 60 90 e5                                      ldr r6, [r0, #0x1c]
00408fe8  20 30 90 e5                                      ldr r3, [r0, #0x20]
00408fec  03 00 56 e1                                      cmp r6, r3
00408ff0  1a 00 00 0a                                      beq #0x409060
00408ff4  00 50 86 e5                                      str r5, [r6]
00408ff8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00408ffc  04 30 83 e2                                      add r3, r3, #4
00409000  1c 30 80 e5                                      str r3, [r0, #0x1c]
00409004  10 d0 8d e2                                      add sp, sp, #0x10
00409008  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0040900c  f0 20 9f e5                                      ldr r2, [pc, #0xf0]
00409010  02 20 93 e7                                      ldr r2, [r3, r2]
00409014  00 20 92 e5                                      ldr r2, [r2]
00409018  02 00 52 e3                                      cmp r2, #2
0040901c  00 50 85 05                                      streq r5, [r5]
00409020  f7 ff ff 0a                                      beq #0x409004
00409024  01 00 52 e3                                      cmp r2, #1
00409028  f5 ff ff 1a                                      bne #0x409004
0040902c  d4 00 9f e5                                      ldr r0, [pc, #0xd4]
00409030  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
00409034  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
00409038  00 00 93 e7                                      ldr r0, [r3, r0]
0040903c  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
00409040  2e c0 a0 e3                                      mov ip, #0x2e
00409044  01 10 8f e0                                      add r1, pc, r1
00409048  02 20 8f e0                                      add r2, pc, r2
0040904c  03 30 8f e0                                      add r3, pc, r3
00409050  a8 00 80 e2                                      add r0, r0, #0xa8
00409054  00 c0 8d e5                                      str ip, [sp]
00409058  e9 13 fc eb                                      bl #0x30e004
0040905c  e8 ff ff ea                                      b #0x409004
00409060  18 30 90 e5                                      ldr r3, [r0, #0x18]
00409064  06 30 63 e0                                      rsb r3, r3, r6
00409068  43 31 a0 e1                                      asr r3, r3, #2
0040906c  01 00 53 e3                                      cmp r3, #1
00409070  03 10 83 20                                      addhs r1, r3, r3
00409074  01 10 83 32                                      addlo r1, r3, #1
00409078  07 01 71 e3                                      cmn r1, #0xc0000001
0040907c  18 00 00 9a                                      bls #0x4090e4
00409080  03 11 e0 e3                                      mvn r1, #0xc0000000
00409084  10 20 8d e2                                      add r2, sp, #0x10
00409088  20 80 84 e2                                      add r8, r4, #0x20
0040908c  04 10 22 e5                                      str r1, [r2, #-4]!
00409090  08 00 a0 e1                                      mov r0, r8
00409094  f4 fe ff eb                                      bl #0x408c6c
00409098  18 10 94 e5                                      ldr r1, [r4, #0x18]
0040909c  00 70 a0 e1                                      mov r7, r0
004090a0  01 60 56 e0                                      subs r6, r6, r1
004090a4  00 60 a0 01                                      moveq r6, r0
004090a8  10 00 00 1a                                      bne #0x4090f0
004090ac  04 50 86 e4                                      str r5, [r6], #4
004090b0  18 30 94 e5                                      ldr r3, [r4, #0x18]
004090b4  20 20 94 e5                                      ldr r2, [r4, #0x20]
004090b8  08 00 a0 e1                                      mov r0, r8
004090bc  03 10 a0 e1                                      mov r1, r3
004090c0  02 30 63 e0                                      rsb r3, r3, r2
004090c4  43 21 a0 e1                                      asr r2, r3, #2
004090c8  02 ff ff eb                                      bl #0x408cd8
004090cc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004090d0  18 70 84 e5                                      str r7, [r4, #0x18]
004090d4  1c 60 84 e5                                      str r6, [r4, #0x1c]
004090d8  03 71 87 e0                                      add r7, r7, r3, lsl #2
004090dc  20 70 84 e5                                      str r7, [r4, #0x20]
004090e0  c7 ff ff ea                                      b #0x409004
004090e4  01 00 53 e1                                      cmp r3, r1
004090e8  e5 ff ff 9a                                      bls #0x409084
004090ec  e3 ff ff ea                                      b #0x409080
004090f0  06 20 a0 e1                                      mov r2, r6
004090f4  8f 13 fc eb                                      bl #0x30df38
004090f8  06 60 80 e0                                      add r6, r0, r6
004090fc  ea ff ff ea                                      b #0x4090ac
; mapping-symbol data/literal pool
00409100  bc ba 58 00 c0 39 00 00 c0 19 00 00 94 53 4b 00  .byte 0xbc, 0xba, 0x58, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x94, 0x53, 0x4b, 0x00
00409110  00 ea 4b 00 04 ea 4b 00                          .byte 0x00, 0xea, 0x4b, 0x00, 0x04, 0xea, 0x4b, 0x00

; FUNCTION 0x00409118, declared_size=184, range_size=184, mode=arm
; class-group: v2MixedController
; alias: _ZN17v2MixedControllerD2Ev
; demangled: v2MixedController::~v2MixedController()
; decoder-mode: arm
00409118  70 40 2d e9                                      push {r4, r5, r6, lr}
0040911c  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
00409120  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00409124  00 40 a0 e1                                      mov r4, r0
00409128  02 20 8f e0                                      add r2, pc, r2
0040912c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00409130  18 10 94 e5                                      ldr r1, [r4, #0x18]
00409134  03 30 92 e7                                      ldr r3, [r2, r3]
00409138  00 60 61 e0                                      rsb r6, r1, r0
0040913c  7c 20 83 e2                                      add r2, r3, #0x7c
00409140  46 61 b0 e1                                      asrs r6, r6, #2
00409144  08 30 83 e2                                      add r3, r3, #8
00409148  00 30 84 e5                                      str r3, [r4]
0040914c  10 20 84 e5                                      str r2, [r4, #0x10]
00409150  0c 00 00 0a                                      beq #0x409188
00409154  00 50 a0 e3                                      mov r5, #0
00409158  05 31 91 e7                                      ldr r3, [r1, r5, lsl #2]
0040915c  01 50 85 e2                                      add r5, r5, #1
00409160  00 00 53 e3                                      cmp r3, #0
00409164  04 00 00 0a                                      beq #0x40917c
00409168  03 00 a0 e1                                      mov r0, r3
0040916c  00 30 93 e5                                      ldr r3, [r3]
00409170  0f e0 a0 e1                                      mov lr, pc
00409174  04 f0 93 e5                                      ldr pc, [r3, #4]
00409178  18 10 94 e5                                      ldr r1, [r4, #0x18]
0040917c  06 00 55 e1                                      cmp r5, r6
00409180  f4 ff ff 1a                                      bne #0x409158
00409184  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00409188  18 30 94 e5                                      ldr r3, [r4, #0x18]
0040918c  00 00 51 e1                                      cmp r1, r0
00409190  1c 10 84 15                                      strne r1, [r4, #0x1c]
00409194  00 00 53 e3                                      cmp r3, #0
00409198  18 20 84 e2                                      add r2, r4, #0x18
0040919c  05 00 00 0a                                      beq #0x4091b8
004091a0  08 20 92 e5                                      ldr r2, [r2, #8]
004091a4  03 10 a0 e1                                      mov r1, r3
004091a8  20 00 84 e2                                      add r0, r4, #0x20
004091ac  02 30 63 e0                                      rsb r3, r3, r2
004091b0  43 21 a0 e1                                      asr r2, r3, #2
004091b4  c7 fe ff eb                                      bl #0x408cd8
004091b8  10 00 84 e2                                      add r0, r4, #0x10
004091bc  c8 ef ff eb                                      bl #0x4050e4
004091c0  04 00 a0 e1                                      mov r0, r4
004091c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004091c8  68 b9 58 00 64 1b 00 00                          .byte 0x68, 0xb9, 0x58, 0x00, 0x64, 0x1b, 0x00, 0x00
