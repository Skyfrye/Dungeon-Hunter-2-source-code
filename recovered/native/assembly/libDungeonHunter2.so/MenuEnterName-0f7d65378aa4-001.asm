; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042ae9c, declared_size=4, range_size=4, mode=arm
; class-group: MenuEnterName
; alias: _ZN13MenuEnterName9LostFocusEv
; demangled: MenuEnterName::LostFocus()
; decoder-mode: arm
0042ae9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042aec0, declared_size=4, range_size=4, mode=arm
; class-group: MenuEnterName
; alias: _ZN13MenuEnterName8GotFocusEv
; demangled: MenuEnterName::GotFocus()
; decoder-mode: arm
0042aec0  93 6a fd ea                                      b #0x385914

; FUNCTION 0x0042aec4, declared_size=44, range_size=44, mode=arm
; class-group: MenuEnterName
; alias: _ZN13MenuEnterName4HideEv
; demangled: MenuEnterName::Hide()
; decoder-mode: arm
0042aec4  10 40 2d e9                                      push {r4, lr}
0042aec8  00 30 90 e5                                      ldr r3, [r0]
0042aecc  00 40 a0 e1                                      mov r4, r0
0042aed0  0f e0 a0 e1                                      mov lr, pc
0042aed4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0042aed8  00 00 50 e3                                      cmp r0, #0
0042aedc  00 00 00 1a                                      bne #0x42aee4
0042aee0  10 80 bd e8                                      pop {r4, pc}
0042aee4  04 00 a0 e1                                      mov r0, r4
0042aee8  10 40 bd e8                                      pop {r4, lr}
0042aeec  00 e7 ff ea                                      b #0x424af4

; FUNCTION 0x0042aef0, declared_size=44, range_size=44, mode=arm
; class-group: MenuEnterName
; alias: _ZN13MenuEnterName4ShowEv
; demangled: MenuEnterName::Show()
; decoder-mode: arm
0042aef0  10 40 2d e9                                      push {r4, lr}
0042aef4  00 30 90 e5                                      ldr r3, [r0]
0042aef8  00 40 a0 e1                                      mov r4, r0
0042aefc  0f e0 a0 e1                                      mov lr, pc
0042af00  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0042af04  00 00 50 e3                                      cmp r0, #0
0042af08  00 00 00 1a                                      bne #0x42af10
0042af0c  10 80 bd e8                                      pop {r4, pc}
0042af10  04 00 a0 e1                                      mov r0, r4
0042af14  10 40 bd e8                                      pop {r4, lr}
0042af18  4c e9 ff ea                                      b #0x425450

; FUNCTION 0x0042af1c, declared_size=52, range_size=52, mode=arm
; class-group: MenuEnterName
; alias: _ZN13MenuEnterNameD1Ev
; demangled: MenuEnterName::~MenuEnterName()
; decoder-mode: arm
0042af1c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042af20  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042af24  10 40 2d e9                                      push {r4, lr}
0042af28  03 30 8f e0                                      add r3, pc, r3
0042af2c  02 20 93 e7                                      ldr r2, [r3, r2]
0042af30  00 40 a0 e1                                      mov r4, r0
0042af34  08 20 82 e2                                      add r2, r2, #8
0042af38  00 20 80 e5                                      str r2, [r0]
0042af3c  8c de ff eb                                      bl #0x422974
0042af40  04 00 a0 e1                                      mov r0, r4
0042af44  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042af48  68 9b 56 00 8c 1f 00 00                          .byte 0x68, 0x9b, 0x56, 0x00, 0x8c, 0x1f, 0x00, 0x00

; FUNCTION 0x0042af50, declared_size=28, range_size=28, mode=arm
; class-group: MenuEnterName
; alias: _ZN13MenuEnterNameD0Ev
; demangled: MenuEnterName::~MenuEnterName()
; decoder-mode: arm
0042af50  10 40 2d e9                                      push {r4, lr}
0042af54  00 40 a0 e1                                      mov r4, r0
0042af58  ef ff ff eb                                      bl #0x42af1c
0042af5c  04 00 a0 e1                                      mov r0, r4
0042af60  36 95 fb eb                                      bl #0x310440
0042af64  04 00 a0 e1                                      mov r0, r4
0042af68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0042af6c, declared_size=52, range_size=52, mode=arm
; class-group: MenuEnterName
; alias: _ZN13MenuEnterNameD2Ev
; demangled: MenuEnterName::~MenuEnterName()
; decoder-mode: arm
0042af6c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042af70  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042af74  10 40 2d e9                                      push {r4, lr}
0042af78  03 30 8f e0                                      add r3, pc, r3
0042af7c  02 20 93 e7                                      ldr r2, [r3, r2]
0042af80  00 40 a0 e1                                      mov r4, r0
0042af84  08 20 82 e2                                      add r2, r2, #8
0042af88  00 20 80 e5                                      str r2, [r0]
0042af8c  78 de ff eb                                      bl #0x422974
0042af90  04 00 a0 e1                                      mov r0, r4
0042af94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042af98  18 9b 56 00 8c 1f 00 00                          .byte 0x18, 0x9b, 0x56, 0x00, 0x8c, 0x1f, 0x00, 0x00

; FUNCTION 0x0042afa0, declared_size=76, range_size=76, mode=arm
; class-group: MenuEnterName
; alias: _ZN13MenuEnterNameC1Ev
; demangled: MenuEnterName::MenuEnterName()
; decoder-mode: arm
0042afa0  38 10 9f e5                                      ldr r1, [pc, #0x38]
0042afa4  70 40 2d e9                                      push {r4, r5, r6, lr}
0042afa8  01 10 8f e0                                      add r1, pc, r1
0042afac  30 40 9f e5                                      ldr r4, [pc, #0x30]
0042afb0  00 50 a0 e1                                      mov r5, r0
0042afb4  91 f0 ff eb                                      bl #0x427200
0042afb8  28 30 9f e5                                      ldr r3, [pc, #0x28]
0042afbc  04 40 8f e0                                      add r4, pc, r4
0042afc0  03 30 94 e7                                      ldr r3, [r4, r3]
0042afc4  08 30 83 e2                                      add r3, r3, #8
0042afc8  00 30 85 e5                                      str r3, [r5]
0042afcc  ae 06 00 eb                                      bl #0x42ca8c
0042afd0  05 10 a0 e1                                      mov r1, r5
0042afd4  ae 0f 00 eb                                      bl #0x42ee94
0042afd8  05 00 a0 e1                                      mov r0, r5
0042afdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042afe0  c8 eb 49 00 d4 9a 56 00 8c 1f 00 00              .byte 0xc8, 0xeb, 0x49, 0x00, 0xd4, 0x9a, 0x56, 0x00, 0x8c, 0x1f, 0x00, 0x00

; FUNCTION 0x0042afec, declared_size=76, range_size=76, mode=arm
; class-group: MenuEnterName
; alias: _ZN13MenuEnterNameC2Ev
; demangled: MenuEnterName::MenuEnterName()
; decoder-mode: arm
0042afec  38 10 9f e5                                      ldr r1, [pc, #0x38]
0042aff0  70 40 2d e9                                      push {r4, r5, r6, lr}
0042aff4  01 10 8f e0                                      add r1, pc, r1
0042aff8  30 40 9f e5                                      ldr r4, [pc, #0x30]
0042affc  00 50 a0 e1                                      mov r5, r0
0042b000  7e f0 ff eb                                      bl #0x427200
0042b004  28 30 9f e5                                      ldr r3, [pc, #0x28]
0042b008  04 40 8f e0                                      add r4, pc, r4
0042b00c  03 30 94 e7                                      ldr r3, [r4, r3]
0042b010  08 30 83 e2                                      add r3, r3, #8
0042b014  00 30 85 e5                                      str r3, [r5]
0042b018  9b 06 00 eb                                      bl #0x42ca8c
0042b01c  05 10 a0 e1                                      mov r1, r5
0042b020  9b 0f 00 eb                                      bl #0x42ee94
0042b024  05 00 a0 e1                                      mov r0, r5
0042b028  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042b02c  7c eb 49 00 88 9a 56 00 8c 1f 00 00              .byte 0x7c, 0xeb, 0x49, 0x00, 0x88, 0x9a, 0x56, 0x00, 0x8c, 0x1f, 0x00, 0x00

; FUNCTION 0x0042b038, declared_size=136, range_size=136, mode=arm
; class-group: MenuEnterName
; alias: _ZN13MenuEnterName11GetInstanceEv
; demangled: MenuEnterName::GetInstance()
; decoder-mode: arm
0042b038  70 40 2d e9                                      push {r4, r5, r6, lr}
0042b03c  68 50 9f e5                                      ldr r5, [pc, #0x68]
0042b040  68 40 9f e5                                      ldr r4, [pc, #0x68]
0042b044  05 50 8f e0                                      add r5, pc, r5
0042b048  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0042b04c  04 40 8f e0                                      add r4, pc, r4
0042b050  01 00 13 e3                                      tst r3, #1
0042b054  03 00 00 0a                                      beq #0x42b068
0042b058  54 00 9f e5                                      ldr r0, [pc, #0x54]
0042b05c  00 00 8f e0                                      add r0, pc, r0
0042b060  10 00 80 e2                                      add r0, r0, #0x10
0042b064  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042b068  0c 60 85 e2                                      add r6, r5, #0xc
0042b06c  06 00 a0 e1                                      mov r0, r6
0042b070  bd 8d fb eb                                      bl #0x30e76c
0042b074  00 00 50 e3                                      cmp r0, #0
0042b078  f6 ff ff 0a                                      beq #0x42b058
0042b07c  10 50 85 e2                                      add r5, r5, #0x10
0042b080  05 00 a0 e1                                      mov r0, r5
0042b084  c5 ff ff eb                                      bl #0x42afa0
0042b088  06 00 a0 e1                                      mov r0, r6
0042b08c  6a 8e fb eb                                      bl #0x30ea3c
0042b090  20 30 9f e5                                      ldr r3, [pc, #0x20]
0042b094  05 00 a0 e1                                      mov r0, r5
0042b098  03 10 94 e7                                      ldr r1, [r4, r3]
0042b09c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0042b0a0  03 20 94 e7                                      ldr r2, [r4, r3]
0042b0a4  96 8c fb eb                                      bl #0x30e304
0042b0a8  ea ff ff ea                                      b #0x42b058
; mapping-symbol data/literal pool
0042b0ac  c0 9e 57 00 44 9a 56 00 a8 9e 57 00 d0 18 00 00  .byte 0xc0, 0x9e, 0x57, 0x00, 0x44, 0x9a, 0x56, 0x00, 0xa8, 0x9e, 0x57, 0x00, 0xd0, 0x18, 0x00, 0x00
0042b0bc  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00
