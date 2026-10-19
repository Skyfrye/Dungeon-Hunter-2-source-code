; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a8a0, declared_size=4, range_size=4, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectE12GetPositionsER13Vector3DFList
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047a8a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047d41c, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d41c  18 00 40 e2                                      sub r0, r0, #0x18
0047d420  ff ff ff ea                                      b #0x47d424

; FUNCTION 0x0047d424, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectED1Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d424  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d428  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d42c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d430  03 30 8f e0                                      add r3, pc, r3
0047d434  01 10 93 e7                                      ldr r1, [r3, r1]
0047d438  02 20 93 e7                                      ldr r2, [r3, r2]
0047d43c  10 40 2d e9                                      push {r4, lr}
0047d440  08 10 81 e2                                      add r1, r1, #8
0047d444  08 20 82 e2                                      add r2, r2, #8
0047d448  00 40 a0 e1                                      mov r4, r0
0047d44c  00 10 80 e5                                      str r1, [r0]
0047d450  18 20 80 e5                                      str r2, [r0, #0x18]
0047d454  62 f3 ff eb                                      bl #0x47a1e4
0047d458  04 00 a0 e1                                      mov r0, r4
0047d45c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d460  60 76 51 00 90 3a 00 00 40 0b 00 00              .byte 0x60, 0x76, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047dc54, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047dc54  18 00 40 e2                                      sub r0, r0, #0x18
0047dc58  ff ff ff ea                                      b #0x47dc5c

; FUNCTION 0x0047dc5c, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectED0Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047dc5c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047dc60  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047dc64  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047dc68  03 30 8f e0                                      add r3, pc, r3
0047dc6c  01 10 93 e7                                      ldr r1, [r3, r1]
0047dc70  02 20 93 e7                                      ldr r2, [r3, r2]
0047dc74  10 40 2d e9                                      push {r4, lr}
0047dc78  08 10 81 e2                                      add r1, r1, #8
0047dc7c  08 20 82 e2                                      add r2, r2, #8
0047dc80  00 40 a0 e1                                      mov r4, r0
0047dc84  00 10 80 e5                                      str r1, [r0]
0047dc88  18 20 80 e5                                      str r2, [r0, #0x18]
0047dc8c  54 f1 ff eb                                      bl #0x47a1e4
0047dc90  04 00 a0 e1                                      mov r0, r4
0047dc94  e9 49 fa eb                                      bl #0x310440
0047dc98  04 00 a0 e1                                      mov r0, r4
0047dc9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047dca0  28 6e 51 00 90 3a 00 00 40 0b 00 00              .byte 0x28, 0x6e, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047e16c, declared_size=520, range_size=520, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047e16c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047e170  00 70 a0 e1                                      mov r7, r0
0047e174  b8 01 9f e5                                      ldr r0, [pc, #0x1b8]
0047e178  0c d0 4d e2                                      sub sp, sp, #0xc
0047e17c  01 30 a0 e1                                      mov r3, r1
0047e180  01 50 a0 e1                                      mov r5, r1
0047e184  1a 20 a0 e3                                      mov r2, #0x1a
0047e188  01 10 a0 e3                                      mov r1, #1
0047e18c  00 00 8f e0                                      add r0, pc, r0
0047e190  a0 41 9f e5                                      ldr r4, [pc, #0x1a0]
0047e194  0c 60 97 e5                                      ldr r6, [r7, #0xc]
0047e198  fe 40 fa eb                                      bl #0x30e598
0047e19c  98 31 9f e5                                      ldr r3, [pc, #0x198]
0047e1a0  04 40 8f e0                                      add r4, pc, r4
0047e1a4  94 11 9f e5                                      ldr r1, [pc, #0x194]
0047e1a8  03 80 94 e7                                      ldr r8, [r4, r3]
0047e1ac  04 20 96 e5                                      ldr r2, [r6, #4]
0047e1b0  01 10 8f e0                                      add r1, pc, r1
0047e1b4  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
0047e1b8  52 1a 01 eb                                      bl #0x4c4b08
0047e1bc  80 11 9f e5                                      ldr r1, [pc, #0x180]
0047e1c0  00 20 a0 e1                                      mov r2, r0
0047e1c4  05 00 a0 e1                                      mov r0, r5
0047e1c8  01 10 8f e0                                      add r1, pc, r1
0047e1cc  8c 3f fa eb                                      bl #0x30e004
0047e1d0  04 30 96 e5                                      ldr r3, [r6, #4]
0047e1d4  05 00 53 e3                                      cmp r3, #5
0047e1d8  1c 00 00 0a                                      beq #0x47e250
0047e1dc  64 11 9f e5                                      ldr r1, [pc, #0x164]
0047e1e0  05 00 a0 e1                                      mov r0, r5
0047e1e4  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047e1e8  01 10 8f e0                                      add r1, pc, r1
0047e1ec  84 3f fa eb                                      bl #0x30e004
0047e1f0  24 30 96 e5                                      ldr r3, [r6, #0x24]
0047e1f4  00 00 53 e3                                      cmp r3, #0
0047e1f8  09 00 00 ba                                      blt #0x47e224
0047e1fc  48 21 9f e5                                      ldr r2, [pc, #0x148]
0047e200  02 20 94 e7                                      ldr r2, [r4, r2]
0047e204  00 20 92 e5                                      ldr r2, [r2]
0047e208  02 00 53 e1                                      cmp r3, r2
0047e20c  04 00 00 2a                                      bhs #0x47e224
0047e210  38 21 9f e5                                      ldr r2, [pc, #0x138]
0047e214  02 20 94 e7                                      ldr r2, [r4, r2]
0047e218  00 20 92 e5                                      ldr r2, [r2]
0047e21c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e220  01 00 00 ea                                      b #0x47e22c
0047e224  28 21 9f e5                                      ldr r2, [pc, #0x128]
0047e228  02 20 8f e0                                      add r2, pc, r2
0047e22c  24 11 9f e5                                      ldr r1, [pc, #0x124]
0047e230  05 00 a0 e1                                      mov r0, r5
0047e234  01 10 8f e0                                      add r1, pc, r1
0047e238  71 3f fa eb                                      bl #0x30e004
0047e23c  07 00 a0 e1                                      mov r0, r7
0047e240  05 10 a0 e1                                      mov r1, r5
0047e244  0c d0 8d e2                                      add sp, sp, #0xc
0047e248  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047e24c  18 f2 ff ea                                      b #0x47aab4
0047e250  38 90 98 e5                                      ldr sb, [r8, #0x38]
0047e254  20 b0 96 e5                                      ldr fp, [r6, #0x20]
0047e258  60 80 b9 e5                                      ldr r8, [sb, #0x60]!
0047e25c  08 00 59 e1                                      cmp sb, r8
0047e260  07 00 00 0a                                      beq #0x47e284
0047e264  08 a0 98 e5                                      ldr sl, [r8, #8]
0047e268  0a 00 a0 e1                                      mov r0, sl
0047e26c  b1 d6 fc eb                                      bl #0x3b3d38
0047e270  00 00 5b e1                                      cmp fp, r0
0047e274  13 00 00 0a                                      beq #0x47e2c8
0047e278  00 80 98 e5                                      ldr r8, [r8]
0047e27c  08 00 59 e1                                      cmp sb, r8
0047e280  f7 ff ff 1a                                      bne #0x47e264
0047e284  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047e288  00 00 53 e3                                      cmp r3, #0
0047e28c  25 00 00 ba                                      blt #0x47e328
0047e290  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0047e294  02 20 94 e7                                      ldr r2, [r4, r2]
0047e298  00 20 92 e5                                      ldr r2, [r2]
0047e29c  02 00 53 e1                                      cmp r3, r2
0047e2a0  20 00 00 2a                                      bhs #0x47e328
0047e2a4  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0047e2a8  02 20 94 e7                                      ldr r2, [r4, r2]
0047e2ac  00 20 92 e5                                      ldr r2, [r2]
0047e2b0  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e2b4  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0047e2b8  05 00 a0 e1                                      mov r0, r5
0047e2bc  01 10 8f e0                                      add r1, pc, r1
0047e2c0  4f 3f fa eb                                      bl #0x30e004
0047e2c4  c9 ff ff ea                                      b #0x47e1f0
0047e2c8  00 00 5a e3                                      cmp sl, #0
0047e2cc  ec ff ff 0a                                      beq #0x47e284
0047e2d0  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047e2d4  00 00 53 e3                                      cmp r3, #0
0047e2d8  0f 00 00 ba                                      blt #0x47e31c
0047e2dc  78 20 9f e5                                      ldr r2, [pc, #0x78]
0047e2e0  02 20 94 e7                                      ldr r2, [r4, r2]
0047e2e4  00 20 92 e5                                      ldr r2, [r2]
0047e2e8  02 00 53 e1                                      cmp r3, r2
0047e2ec  0a 00 00 2a                                      bhs #0x47e31c
0047e2f0  68 20 9f e5                                      ldr r2, [pc, #0x68]
0047e2f4  02 20 94 e7                                      ldr r2, [r4, r2]
0047e2f8  00 20 92 e5                                      ldr r2, [r2]
0047e2fc  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e300  60 10 9f e5                                      ldr r1, [pc, #0x60]
0047e304  44 c0 9a e5                                      ldr ip, [sl, #0x44]
0047e308  05 00 a0 e1                                      mov r0, r5
0047e30c  01 10 8f e0                                      add r1, pc, r1
0047e310  00 c0 8d e5                                      str ip, [sp]
0047e314  3a 3f fa eb                                      bl #0x30e004
0047e318  b4 ff ff ea                                      b #0x47e1f0
0047e31c  48 20 9f e5                                      ldr r2, [pc, #0x48]
0047e320  02 20 8f e0                                      add r2, pc, r2
0047e324  f5 ff ff ea                                      b #0x47e300
0047e328  40 20 9f e5                                      ldr r2, [pc, #0x40]
0047e32c  02 20 8f e0                                      add r2, pc, r2
0047e330  df ff ff ea                                      b #0x47e2b4
; mapping-symbol data/literal pool
0047e334  ac fc 44 00 f0 68 51 00 f4 37 00 00 b8 47 44 00  .byte 0xac, 0xfc, 0x44, 0x00, 0xf0, 0x68, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb8, 0x47, 0x44, 0x00
0047e344  c0 fb 44 00 b8 fb 44 00 c0 18 00 00 5c 3b 00 00  .byte 0xc0, 0xfb, 0x44, 0x00, 0xb8, 0xfb, 0x44, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00
0047e354  e8 15 44 00 84 fb 44 00 04 42 00 00 08 3c 00 00  .byte 0xe8, 0x15, 0x44, 0x00, 0x84, 0xfb, 0x44, 0x00, 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00
0047e364  c4 fb 44 00 4c fb 44 00 f0 14 44 00 e4 14 44 00  .byte 0xc4, 0xfb, 0x44, 0x00, 0x4c, 0xfb, 0x44, 0x00, 0xf0, 0x14, 0x44, 0x00, 0xe4, 0x14, 0x44, 0x00

; FUNCTION 0x0047ec30, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectE7CompileEv
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::Compile()
; decoder-mode: arm
0047ec30  10 40 2d e9                                      push {r4, lr}
0047ec34  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0047ec38  00 40 a0 e1                                      mov r4, r0
0047ec3c  20 30 92 e5                                      ldr r3, [r2, #0x20]
0047ec40  01 00 73 e3                                      cmn r3, #1
0047ec44  24 30 80 e5                                      str r3, [r0, #0x24]
0047ec48  05 00 00 0a                                      beq #0x47ec64
0047ec4c  01 30 a0 e3                                      mov r3, #1
0047ec50  08 30 c0 e5                                      strb r3, [r0, #8]
0047ec54  28 30 92 e5                                      ldr r3, [r2, #0x28]
0047ec58  20 20 90 e5                                      ldr r2, [r0, #0x20]
0047ec5c  03 00 52 e1                                      cmp r2, r3
0047ec60  00 00 00 aa                                      bge #0x47ec68
0047ec64  10 80 bd e8                                      pop {r4, pc}
0047ec68  68 f3 ff eb                                      bl #0x47ba10
0047ec6c  04 00 a0 e1                                      mov r0, r4
0047ec70  00 30 94 e5                                      ldr r3, [r4]
0047ec74  0f e0 a0 e1                                      mov lr, pc
0047ec78  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047ec7c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047f478, declared_size=148, range_size=148, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectE11handleEventEPK6IEventPK12EventManager
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047f478  10 40 2d e9                                      push {r4, lr}
0047f47c  18 30 91 e5                                      ldr r3, [r1, #0x18]
0047f480  24 20 90 e5                                      ldr r2, [r0, #0x24]
0047f484  00 40 a0 e1                                      mov r4, r0
0047f488  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0047f48c  03 00 52 e1                                      cmp r2, r3
0047f490  01 00 00 0a                                      beq #0x47f49c
0047f494  00 00 a0 e3                                      mov r0, #0
0047f498  10 80 bd e8                                      pop {r4, pc}
0047f49c  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047f4a0  00 00 53 e3                                      cmp r3, #0
0047f4a4  12 00 00 1a                                      bne #0x47f4f4
0047f4a8  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f4ac  01 30 83 e2                                      add r3, r3, #1
0047f4b0  20 30 84 e5                                      str r3, [r4, #0x20]
0047f4b4  01 30 a0 e3                                      mov r3, #1
0047f4b8  10 30 c1 e5                                      strb r3, [r1, #0x10]
0047f4bc  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f4c0  14 30 81 e5                                      str r3, [r1, #0x14]
0047f4c4  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f4c8  28 20 90 e5                                      ldr r2, [r0, #0x28]
0047f4cc  03 00 52 e1                                      cmp r2, r3
0047f4d0  ef ff ff ca                                      bgt #0x47f494
0047f4d4  04 00 a0 e1                                      mov r0, r4
0047f4d8  4c f1 ff eb                                      bl #0x47ba10
0047f4dc  04 00 a0 e1                                      mov r0, r4
0047f4e0  00 30 94 e5                                      ldr r3, [r4]
0047f4e4  0f e0 a0 e1                                      mov lr, pc
0047f4e8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f4ec  00 00 a0 e3                                      mov r0, #0
0047f4f0  10 80 bd e8                                      pop {r4, pc}
0047f4f4  14 30 91 e5                                      ldr r3, [r1, #0x14]
0047f4f8  20 20 94 e5                                      ldr r2, [r4, #0x20]
0047f4fc  03 00 52 e1                                      cmp r2, r3
0047f500  20 30 84 b5                                      strlt r3, [r4, #0x20]
0047f504  ef ff ff ba                                      blt #0x47f4c8
0047f508  e1 ff ff ea                                      b #0x47f494
