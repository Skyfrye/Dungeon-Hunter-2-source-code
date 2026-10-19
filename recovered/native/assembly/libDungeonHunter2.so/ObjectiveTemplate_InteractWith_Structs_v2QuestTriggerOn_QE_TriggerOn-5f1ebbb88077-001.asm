; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a89c, declared_size=4, range_size=4, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnE12GetPositionsER13Vector3DFList
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047a89c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047d3cc, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d3cc  18 00 40 e2                                      sub r0, r0, #0x18
0047d3d0  ff ff ff ea                                      b #0x47d3d4

; FUNCTION 0x0047d3d4, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnED1Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d3d4  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d3d8  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d3dc  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d3e0  03 30 8f e0                                      add r3, pc, r3
0047d3e4  01 10 93 e7                                      ldr r1, [r3, r1]
0047d3e8  02 20 93 e7                                      ldr r2, [r3, r2]
0047d3ec  10 40 2d e9                                      push {r4, lr}
0047d3f0  08 10 81 e2                                      add r1, r1, #8
0047d3f4  08 20 82 e2                                      add r2, r2, #8
0047d3f8  00 40 a0 e1                                      mov r4, r0
0047d3fc  00 10 80 e5                                      str r1, [r0]
0047d400  18 20 80 e5                                      str r2, [r0, #0x18]
0047d404  76 f3 ff eb                                      bl #0x47a1e4
0047d408  04 00 a0 e1                                      mov r0, r4
0047d40c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d410  b0 76 51 00 90 3a 00 00 40 0b 00 00              .byte 0xb0, 0x76, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047d788, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d788  18 00 40 e2                                      sub r0, r0, #0x18
0047d78c  ff ff ff ea                                      b #0x47d790

; FUNCTION 0x0047d790, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnED0Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d790  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047d794  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047d798  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047d79c  03 30 8f e0                                      add r3, pc, r3
0047d7a0  01 10 93 e7                                      ldr r1, [r3, r1]
0047d7a4  02 20 93 e7                                      ldr r2, [r3, r2]
0047d7a8  10 40 2d e9                                      push {r4, lr}
0047d7ac  08 10 81 e2                                      add r1, r1, #8
0047d7b0  08 20 82 e2                                      add r2, r2, #8
0047d7b4  00 40 a0 e1                                      mov r4, r0
0047d7b8  00 10 80 e5                                      str r1, [r0]
0047d7bc  18 20 80 e5                                      str r2, [r0, #0x18]
0047d7c0  87 f2 ff eb                                      bl #0x47a1e4
0047d7c4  04 00 a0 e1                                      mov r0, r4
0047d7c8  1c 4b fa eb                                      bl #0x310440
0047d7cc  04 00 a0 e1                                      mov r0, r4
0047d7d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d7d4  f4 72 51 00 90 3a 00 00 40 0b 00 00              .byte 0xf4, 0x72, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047dd5c, declared_size=520, range_size=520, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047dd5c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047dd60  00 70 a0 e1                                      mov r7, r0
0047dd64  b8 01 9f e5                                      ldr r0, [pc, #0x1b8]
0047dd68  0c d0 4d e2                                      sub sp, sp, #0xc
0047dd6c  01 30 a0 e1                                      mov r3, r1
0047dd70  01 50 a0 e1                                      mov r5, r1
0047dd74  1a 20 a0 e3                                      mov r2, #0x1a
0047dd78  01 10 a0 e3                                      mov r1, #1
0047dd7c  00 00 8f e0                                      add r0, pc, r0
0047dd80  a0 41 9f e5                                      ldr r4, [pc, #0x1a0]
0047dd84  0c 60 97 e5                                      ldr r6, [r7, #0xc]
0047dd88  02 42 fa eb                                      bl #0x30e598
0047dd8c  98 31 9f e5                                      ldr r3, [pc, #0x198]
0047dd90  04 40 8f e0                                      add r4, pc, r4
0047dd94  94 11 9f e5                                      ldr r1, [pc, #0x194]
0047dd98  03 80 94 e7                                      ldr r8, [r4, r3]
0047dd9c  04 20 96 e5                                      ldr r2, [r6, #4]
0047dda0  01 10 8f e0                                      add r1, pc, r1
0047dda4  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
0047dda8  56 1b 01 eb                                      bl #0x4c4b08
0047ddac  80 11 9f e5                                      ldr r1, [pc, #0x180]
0047ddb0  00 20 a0 e1                                      mov r2, r0
0047ddb4  05 00 a0 e1                                      mov r0, r5
0047ddb8  01 10 8f e0                                      add r1, pc, r1
0047ddbc  90 40 fa eb                                      bl #0x30e004
0047ddc0  04 30 96 e5                                      ldr r3, [r6, #4]
0047ddc4  05 00 53 e3                                      cmp r3, #5
0047ddc8  1c 00 00 0a                                      beq #0x47de40
0047ddcc  64 11 9f e5                                      ldr r1, [pc, #0x164]
0047ddd0  05 00 a0 e1                                      mov r0, r5
0047ddd4  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047ddd8  01 10 8f e0                                      add r1, pc, r1
0047dddc  88 40 fa eb                                      bl #0x30e004
0047dde0  24 30 96 e5                                      ldr r3, [r6, #0x24]
0047dde4  00 00 53 e3                                      cmp r3, #0
0047dde8  09 00 00 ba                                      blt #0x47de14
0047ddec  48 21 9f e5                                      ldr r2, [pc, #0x148]
0047ddf0  02 20 94 e7                                      ldr r2, [r4, r2]
0047ddf4  00 20 92 e5                                      ldr r2, [r2]
0047ddf8  02 00 53 e1                                      cmp r3, r2
0047ddfc  04 00 00 2a                                      bhs #0x47de14
0047de00  38 21 9f e5                                      ldr r2, [pc, #0x138]
0047de04  02 20 94 e7                                      ldr r2, [r4, r2]
0047de08  00 20 92 e5                                      ldr r2, [r2]
0047de0c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047de10  01 00 00 ea                                      b #0x47de1c
0047de14  28 21 9f e5                                      ldr r2, [pc, #0x128]
0047de18  02 20 8f e0                                      add r2, pc, r2
0047de1c  24 11 9f e5                                      ldr r1, [pc, #0x124]
0047de20  05 00 a0 e1                                      mov r0, r5
0047de24  01 10 8f e0                                      add r1, pc, r1
0047de28  75 40 fa eb                                      bl #0x30e004
0047de2c  07 00 a0 e1                                      mov r0, r7
0047de30  05 10 a0 e1                                      mov r1, r5
0047de34  0c d0 8d e2                                      add sp, sp, #0xc
0047de38  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047de3c  1c f3 ff ea                                      b #0x47aab4
0047de40  38 90 98 e5                                      ldr sb, [r8, #0x38]
0047de44  20 b0 96 e5                                      ldr fp, [r6, #0x20]
0047de48  60 80 b9 e5                                      ldr r8, [sb, #0x60]!
0047de4c  08 00 59 e1                                      cmp sb, r8
0047de50  07 00 00 0a                                      beq #0x47de74
0047de54  08 a0 98 e5                                      ldr sl, [r8, #8]
0047de58  0a 00 a0 e1                                      mov r0, sl
0047de5c  b5 d7 fc eb                                      bl #0x3b3d38
0047de60  00 00 5b e1                                      cmp fp, r0
0047de64  13 00 00 0a                                      beq #0x47deb8
0047de68  00 80 98 e5                                      ldr r8, [r8]
0047de6c  08 00 59 e1                                      cmp sb, r8
0047de70  f7 ff ff 1a                                      bne #0x47de54
0047de74  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047de78  00 00 53 e3                                      cmp r3, #0
0047de7c  25 00 00 ba                                      blt #0x47df18
0047de80  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0047de84  02 20 94 e7                                      ldr r2, [r4, r2]
0047de88  00 20 92 e5                                      ldr r2, [r2]
0047de8c  02 00 53 e1                                      cmp r3, r2
0047de90  20 00 00 2a                                      bhs #0x47df18
0047de94  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0047de98  02 20 94 e7                                      ldr r2, [r4, r2]
0047de9c  00 20 92 e5                                      ldr r2, [r2]
0047dea0  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047dea4  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0047dea8  05 00 a0 e1                                      mov r0, r5
0047deac  01 10 8f e0                                      add r1, pc, r1
0047deb0  53 40 fa eb                                      bl #0x30e004
0047deb4  c9 ff ff ea                                      b #0x47dde0
0047deb8  00 00 5a e3                                      cmp sl, #0
0047debc  ec ff ff 0a                                      beq #0x47de74
0047dec0  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047dec4  00 00 53 e3                                      cmp r3, #0
0047dec8  0f 00 00 ba                                      blt #0x47df0c
0047decc  78 20 9f e5                                      ldr r2, [pc, #0x78]
0047ded0  02 20 94 e7                                      ldr r2, [r4, r2]
0047ded4  00 20 92 e5                                      ldr r2, [r2]
0047ded8  02 00 53 e1                                      cmp r3, r2
0047dedc  0a 00 00 2a                                      bhs #0x47df0c
0047dee0  68 20 9f e5                                      ldr r2, [pc, #0x68]
0047dee4  02 20 94 e7                                      ldr r2, [r4, r2]
0047dee8  00 20 92 e5                                      ldr r2, [r2]
0047deec  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047def0  60 10 9f e5                                      ldr r1, [pc, #0x60]
0047def4  44 c0 9a e5                                      ldr ip, [sl, #0x44]
0047def8  05 00 a0 e1                                      mov r0, r5
0047defc  01 10 8f e0                                      add r1, pc, r1
0047df00  00 c0 8d e5                                      str ip, [sp]
0047df04  3e 40 fa eb                                      bl #0x30e004
0047df08  b4 ff ff ea                                      b #0x47dde0
0047df0c  48 20 9f e5                                      ldr r2, [pc, #0x48]
0047df10  02 20 8f e0                                      add r2, pc, r2
0047df14  f5 ff ff ea                                      b #0x47def0
0047df18  40 20 9f e5                                      ldr r2, [pc, #0x40]
0047df1c  02 20 8f e0                                      add r2, pc, r2
0047df20  df ff ff ea                                      b #0x47dea4
; mapping-symbol data/literal pool
0047df24  bc 00 45 00 00 6d 51 00 f4 37 00 00 c8 4b 44 00  .byte 0xbc, 0x00, 0x45, 0x00, 0x00, 0x6d, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc8, 0x4b, 0x44, 0x00
0047df34  d0 ff 44 00 c8 ff 44 00 c0 18 00 00 5c 3b 00 00  .byte 0xd0, 0xff, 0x44, 0x00, 0xc8, 0xff, 0x44, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00
0047df44  f8 19 44 00 94 ff 44 00 04 42 00 00 08 3c 00 00  .byte 0xf8, 0x19, 0x44, 0x00, 0x94, 0xff, 0x44, 0x00, 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00
0047df54  d4 ff 44 00 5c ff 44 00 00 19 44 00 f4 18 44 00  .byte 0xd4, 0xff, 0x44, 0x00, 0x5c, 0xff, 0x44, 0x00, 0x00, 0x19, 0x44, 0x00, 0xf4, 0x18, 0x44, 0x00

; FUNCTION 0x0047ebe0, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnE7CompileEv
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::Compile()
; decoder-mode: arm
0047ebe0  10 40 2d e9                                      push {r4, lr}
0047ebe4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0047ebe8  00 40 a0 e1                                      mov r4, r0
0047ebec  20 30 92 e5                                      ldr r3, [r2, #0x20]
0047ebf0  01 00 73 e3                                      cmn r3, #1
0047ebf4  24 30 80 e5                                      str r3, [r0, #0x24]
0047ebf8  05 00 00 0a                                      beq #0x47ec14
0047ebfc  01 30 a0 e3                                      mov r3, #1
0047ec00  08 30 c0 e5                                      strb r3, [r0, #8]
0047ec04  28 30 92 e5                                      ldr r3, [r2, #0x28]
0047ec08  20 20 90 e5                                      ldr r2, [r0, #0x20]
0047ec0c  03 00 52 e1                                      cmp r2, r3
0047ec10  00 00 00 aa                                      bge #0x47ec18
0047ec14  10 80 bd e8                                      pop {r4, pc}
0047ec18  7c f3 ff eb                                      bl #0x47ba10
0047ec1c  04 00 a0 e1                                      mov r0, r4
0047ec20  00 30 94 e5                                      ldr r3, [r4]
0047ec24  0f e0 a0 e1                                      mov lr, pc
0047ec28  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047ec2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047f634, declared_size=148, range_size=148, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnE11handleEventEPK6IEventPK12EventManager
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047f634  10 40 2d e9                                      push {r4, lr}
0047f638  18 30 91 e5                                      ldr r3, [r1, #0x18]
0047f63c  24 20 90 e5                                      ldr r2, [r0, #0x24]
0047f640  00 40 a0 e1                                      mov r4, r0
0047f644  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0047f648  03 00 52 e1                                      cmp r2, r3
0047f64c  01 00 00 0a                                      beq #0x47f658
0047f650  00 00 a0 e3                                      mov r0, #0
0047f654  10 80 bd e8                                      pop {r4, pc}
0047f658  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047f65c  00 00 53 e3                                      cmp r3, #0
0047f660  12 00 00 1a                                      bne #0x47f6b0
0047f664  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f668  01 30 83 e2                                      add r3, r3, #1
0047f66c  20 30 84 e5                                      str r3, [r4, #0x20]
0047f670  01 30 a0 e3                                      mov r3, #1
0047f674  10 30 c1 e5                                      strb r3, [r1, #0x10]
0047f678  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f67c  14 30 81 e5                                      str r3, [r1, #0x14]
0047f680  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f684  28 20 90 e5                                      ldr r2, [r0, #0x28]
0047f688  03 00 52 e1                                      cmp r2, r3
0047f68c  ef ff ff ca                                      bgt #0x47f650
0047f690  04 00 a0 e1                                      mov r0, r4
0047f694  dd f0 ff eb                                      bl #0x47ba10
0047f698  04 00 a0 e1                                      mov r0, r4
0047f69c  00 30 94 e5                                      ldr r3, [r4]
0047f6a0  0f e0 a0 e1                                      mov lr, pc
0047f6a4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f6a8  00 00 a0 e3                                      mov r0, #0
0047f6ac  10 80 bd e8                                      pop {r4, pc}
0047f6b0  14 30 91 e5                                      ldr r3, [r1, #0x14]
0047f6b4  20 20 94 e5                                      ldr r2, [r4, #0x20]
0047f6b8  03 00 52 e1                                      cmp r2, r3
0047f6bc  20 30 84 b5                                      strlt r3, [r4, #0x20]
0047f6c0  ef ff ff ba                                      blt #0x47f684
0047f6c4  e1 ff ff ea                                      b #0x47f650
