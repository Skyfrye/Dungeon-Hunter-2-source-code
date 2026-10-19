; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0014, declared_size=4, range_size=4, mode=arm
; class-group: CSSkill
; alias: _ZN7CSSkillD1Ev
; demangled: CSSkill::~CSSkill()
; decoder-mode: arm
003c0014  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0018, declared_size=4, range_size=4, mode=arm
; class-group: CSSkill
; alias: _ZN7CSSkill8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSSkill::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0018  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c095c, declared_size=52, range_size=52, mode=arm
; class-group: CSSkill
; alias: _ZN7CSSkillD0Ev
; demangled: CSSkill::~CSSkill()
; decoder-mode: arm
003c095c  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c0960  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c0964  10 40 2d e9                                      push {r4, lr}
003c0968  03 30 8f e0                                      add r3, pc, r3
003c096c  02 20 93 e7                                      ldr r2, [r3, r2]
003c0970  00 40 a0 e1                                      mov r4, r0
003c0974  08 20 82 e2                                      add r2, r2, #8
003c0978  00 20 80 e5                                      str r2, [r0]
003c097c  af 3e fd eb                                      bl #0x310440
003c0980  04 00 a0 e1                                      mov r0, r4
003c0984  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0988  28 41 5d 00 08 2a 00 00                          .byte 0x28, 0x41, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c0ac8, declared_size=60, range_size=60, mode=arm
; class-group: CSSkill
; alias: _ZN7CSSkill7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSSkill::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c0ac8  10 40 2d e9                                      push {r4, lr}
003c0acc  08 30 9d e5                                      ldr r3, [sp, #8]
003c0ad0  02 40 a0 e1                                      mov r4, r2
003c0ad4  28 00 53 e3                                      cmp r3, #0x28
003c0ad8  07 00 00 1a                                      bne #0x3c0afc
003c0adc  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
003c0ae0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003c0ae4  01 10 8f e0                                      add r1, pc, r1
003c0ae8  0b 36 fd eb                                      bl #0x30e31c
003c0aec  00 00 50 e3                                      cmp r0, #0
003c0af0  20 35 94 05                                      ldreq r3, [r4, #0x520]
003c0af4  02 39 83 03                                      orreq r3, r3, #0x8000
003c0af8  20 35 84 05                                      streq r3, [r4, #0x520]
003c0afc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0b00  74 40 50 00                                      .byte 0x74, 0x40, 0x50, 0x00

; FUNCTION 0x003c434c, declared_size=308, range_size=308, mode=arm
; class-group: CSSkill
; alias: _ZN7CSSkill6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSSkill::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c434c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c4350  18 51 9f e5                                      ldr r5, [pc, #0x118]
003c4354  18 61 9f e5                                      ldr r6, [pc, #0x118]
003c4358  18 11 9f e5                                      ldr r1, [pc, #0x118]
003c435c  05 50 8f e0                                      add r5, pc, r5
003c4360  06 30 95 e7                                      ldr r3, [r5, r6]
003c4364  01 80 95 e7                                      ldr r8, [r5, r1]
003c4368  28 d0 4d e2                                      sub sp, sp, #0x28
003c436c  00 30 93 e5                                      ldr r3, [r3]
003c4370  08 00 a0 e1                                      mov r0, r8
003c4374  02 40 a0 e1                                      mov r4, r2
003c4378  24 30 8d e5                                      str r3, [sp, #0x24]
003c437c  41 cd fd eb                                      bl #0x337888
003c4380  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
003c4384  0c 70 8d e2                                      add r7, sp, #0xc
003c4388  08 20 8d e2                                      add r2, sp, #8
003c438c  01 10 8f e0                                      add r1, pc, r1
003c4390  07 00 a0 e1                                      mov r0, r7
003c4394  54 3f fd eb                                      bl #0x3140ec
003c4398  07 10 a0 e1                                      mov r1, r7
003c439c  08 00 a0 e1                                      mov r0, r8
003c43a0  b8 cd fd eb                                      bl #0x337a88
003c43a4  07 00 a0 e1                                      mov r0, r7
003c43a8  a9 4f fd eb                                      bl #0x318254
003c43ac  f2 0f 84 e2                                      add r0, r4, #0x3c8
003c43b0  83 41 00 eb                                      bl #0x3d49c4
003c43b4  04 00 a0 e1                                      mov r0, r4
003c43b8  4e 3d ff eb                                      bl #0x3938f8
003c43bc  04 00 a0 e1                                      mov r0, r4
003c43c0  1f 10 a0 e3                                      mov r1, #0x1f
003c43c4  00 20 a0 e3                                      mov r2, #0
003c43c8  63 82 ff eb                                      bl #0x3a4d5c
003c43cc  28 35 94 e5                                      ldr r3, [r4, #0x528]
003c43d0  01 0c 13 e3                                      tst r3, #0x100
003c43d4  0e 00 00 1a                                      bne #0x3c4414
003c43d8  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
003c43dc  00 00 50 e3                                      cmp r0, #0
003c43e0  00 00 00 0a                                      beq #0x3c43e8
003c43e4  cd a9 02 eb                                      bl #0x46eb20
003c43e8  04 00 a0 e1                                      mov r0, r4
003c43ec  1c 7b ff eb                                      bl #0x3a3064
003c43f0  00 00 50 e3                                      cmp r0, #0
003c43f4  11 00 00 1a                                      bne #0x3c4440
003c43f8  06 30 95 e7                                      ldr r3, [r5, r6]
003c43fc  24 20 9d e5                                      ldr r2, [sp, #0x24]
003c4400  00 30 93 e5                                      ldr r3, [r3]
003c4404  03 00 52 e1                                      cmp r2, r3
003c4408  17 00 00 1a                                      bne #0x3c446c
003c440c  28 d0 8d e2                                      add sp, sp, #0x28
003c4410  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c4414  00 c0 a0 e3                                      mov ip, #0
003c4418  0c 20 a0 e1                                      mov r2, ip
003c441c  0a 10 a0 e3                                      mov r1, #0xa
003c4420  30 30 a0 e3                                      mov r3, #0x30
003c4424  ed 0f 84 e2                                      add r0, r4, #0x3b4
003c4428  00 c0 8d e5                                      str ip, [sp]
003c442c  7c 5e 00 eb                                      bl #0x3dbe24
003c4430  04 00 a0 e1                                      mov r0, r4
003c4434  0a 7b ff eb                                      bl #0x3a3064
003c4438  00 00 50 e3                                      cmp r0, #0
003c443c  ed ff ff 0a                                      beq #0x3c43f8
003c4440  04 00 a0 e1                                      mov r0, r4
003c4444  3e 7b ff eb                                      bl #0x3a3144
003c4448  00 00 50 e3                                      cmp r0, #0
003c444c  e9 ff ff 1a                                      bne #0x3c43f8
003c4450  04 00 a0 e1                                      mov r0, r4
003c4454  3f 7b ff eb                                      bl #0x3a3158
003c4458  00 00 50 e3                                      cmp r0, #0
003c445c  20 35 94 05                                      ldreq r3, [r4, #0x520]
003c4460  01 38 c3 03                                      biceq r3, r3, #0x10000
003c4464  20 35 84 05                                      streq r3, [r4, #0x520]
003c4468  e2 ff ff ea                                      b #0x3c43f8
003c446c  a7 27 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c4470  34 07 5d 00 ac 40 00 00 84 08 00 00 c4 0a 50 00  .byte 0x34, 0x07, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0x0a, 0x50, 0x00

; FUNCTION 0x003c4480, declared_size=324, range_size=324, mode=arm
; class-group: CSSkill
; alias: _ZN7CSSkill7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSSkill::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c4480  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c4484  28 51 9f e5                                      ldr r5, [pc, #0x128]
003c4488  28 71 9f e5                                      ldr r7, [pc, #0x128]
003c448c  28 11 9f e5                                      ldr r1, [pc, #0x128]
003c4490  05 50 8f e0                                      add r5, pc, r5
003c4494  07 30 95 e7                                      ldr r3, [r5, r7]
003c4498  01 80 95 e7                                      ldr r8, [r5, r1]
003c449c  20 d0 4d e2                                      sub sp, sp, #0x20
003c44a0  00 30 93 e5                                      ldr r3, [r3]
003c44a4  08 00 a0 e1                                      mov r0, r8
003c44a8  02 40 a0 e1                                      mov r4, r2
003c44ac  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c44b0  f4 cc fd eb                                      bl #0x337888
003c44b4  04 11 9f e5                                      ldr r1, [pc, #0x104]
003c44b8  04 60 8d e2                                      add r6, sp, #4
003c44bc  0d 20 a0 e1                                      mov r2, sp
003c44c0  01 10 8f e0                                      add r1, pc, r1
003c44c4  06 00 a0 e1                                      mov r0, r6
003c44c8  07 3f fd eb                                      bl #0x3140ec
003c44cc  06 10 a0 e1                                      mov r1, r6
003c44d0  08 00 a0 e1                                      mov r0, r8
003c44d4  6b cd fd eb                                      bl #0x337a88
003c44d8  06 00 a0 e1                                      mov r0, r6
003c44dc  5c 4f fd eb                                      bl #0x318254
003c44e0  28 35 94 e5                                      ldr r3, [r4, #0x528]
003c44e4  41 23 06 e3                                      movw r2, #0x6341
003c44e8  20 25 84 e5                                      str r2, [r4, #0x520]
003c44ec  05 3d c3 e3                                      bic r3, r3, #0x140
003c44f0  28 35 84 e5                                      str r3, [r4, #0x528]
003c44f4  00 20 a0 e3                                      mov r2, #0
003c44f8  04 00 a0 e1                                      mov r0, r4
003c44fc  1e 10 a0 e3                                      mov r1, #0x1e
003c4500  15 82 ff eb                                      bl #0x3a4d5c
003c4504  4f 0e 84 e2                                      add r0, r4, #0x4f0
003c4508  0c 00 80 e2                                      add r0, r0, #0xc
003c450c  00 10 e0 e3                                      mvn r1, #0
003c4510  8e f1 ff eb                                      bl #0x3c0b50
003c4514  49 0e 84 e2                                      add r0, r4, #0x490
003c4518  0c 00 80 e2                                      add r0, r0, #0xc
003c451c  fe 15 a0 e3                                      mov r1, #0x3f800000
003c4520  b5 13 00 eb                                      bl #0x3c93fc
003c4524  00 30 a0 e3                                      mov r3, #0
003c4528  12 34 c4 e5                                      strb r3, [r4, #0x412]
003c452c  04 00 a0 e1                                      mov r0, r4
003c4530  60 e0 ff eb                                      bl #0x3bc6b8
003c4534  54 35 d4 e5                                      ldrb r3, [r4, #0x554]
003c4538  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
003c453c  00 00 53 e3                                      cmp r3, #0
003c4540  28 35 94 15                                      ldrne r3, [r4, #0x528]
003c4544  01 3c 83 13                                      orrne r3, r3, #0x100
003c4548  28 35 84 15                                      strne r3, [r4, #0x528]
003c454c  00 00 50 e3                                      cmp r0, #0
003c4550  00 00 00 0a                                      beq #0x3c4558
003c4554  61 a9 02 eb                                      bl #0x46eae0
003c4558  04 00 a0 e1                                      mov r0, r4
003c455c  c0 7a ff eb                                      bl #0x3a3064
003c4560  00 00 50 e3                                      cmp r0, #0
003c4564  06 00 00 1a                                      bne #0x3c4584
003c4568  07 30 95 e7                                      ldr r3, [r5, r7]
003c456c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c4570  00 30 93 e5                                      ldr r3, [r3]
003c4574  03 00 52 e1                                      cmp r2, r3
003c4578  0c 00 00 1a                                      bne #0x3c45b0
003c457c  20 d0 8d e2                                      add sp, sp, #0x20
003c4580  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c4584  04 00 a0 e1                                      mov r0, r4
003c4588  ed 7a ff eb                                      bl #0x3a3144
003c458c  00 00 50 e3                                      cmp r0, #0
003c4590  f4 ff ff 1a                                      bne #0x3c4568
003c4594  04 00 a0 e1                                      mov r0, r4
003c4598  ee 7a ff eb                                      bl #0x3a3158
003c459c  00 00 50 e3                                      cmp r0, #0
003c45a0  20 35 94 05                                      ldreq r3, [r4, #0x520]
003c45a4  01 38 83 03                                      orreq r3, r3, #0x10000
003c45a8  20 35 84 05                                      streq r3, [r4, #0x520]
003c45ac  ed ff ff ea                                      b #0x3c4568
003c45b0  56 27 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c45b4  00 06 5d 00 ac 40 00 00 84 08 00 00 90 09 50 00  .byte 0x00, 0x06, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x90, 0x09, 0x50, 0x00

; FUNCTION 0x003c8438, declared_size=384, range_size=384, mode=arm
; class-group: CSSkill
; alias: _ZN7CSSkill6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSSkill::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8438  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c843c  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c8440  0c 50 85 e2                                      add r5, r5, #0xc
003c8444  50 d0 4d e2                                      sub sp, sp, #0x50
003c8448  00 40 a0 e3                                      mov r4, #0
003c844c  01 60 a0 e1                                      mov r6, r1
003c8450  05 00 a0 e1                                      mov r0, r5
003c8454  22 20 a0 e3                                      mov r2, #0x22
003c8458  03 30 a0 e3                                      mov r3, #3
003c845c  48 40 8d e5                                      str r4, [sp, #0x48]
003c8460  4c 40 8d e5                                      str r4, [sp, #0x4c]
003c8464  00 40 8d e5                                      str r4, [sp]
003c8468  04 40 8d e5                                      str r4, [sp, #4]
003c846c  38 81 9f e5                                      ldr r8, [pc, #0x138]
003c8470  a8 fd ff eb                                      bl #0x3c7b18
003c8474  05 00 a0 e1                                      mov r0, r5
003c8478  06 10 a0 e1                                      mov r1, r6
003c847c  58 23 0c e3                                      movw r2, #0xc358
003c8480  0c 30 a0 e3                                      mov r3, #0xc
003c8484  40 40 8d e5                                      str r4, [sp, #0x40]
003c8488  44 40 8d e5                                      str r4, [sp, #0x44]
003c848c  00 40 8d e5                                      str r4, [sp]
003c8490  04 40 8d e5                                      str r4, [sp, #4]
003c8494  9f fd ff eb                                      bl #0x3c7b18
003c8498  10 31 9f e5                                      ldr r3, [pc, #0x110]
003c849c  08 80 8f e0                                      add r8, pc, r8
003c84a0  05 00 a0 e1                                      mov r0, r5
003c84a4  03 70 98 e7                                      ldr r7, [r8, r3]
003c84a8  06 10 a0 e1                                      mov r1, r6
003c84ac  51 23 0c e3                                      movw r2, #0xc351
003c84b0  04 30 a0 e3                                      mov r3, #4
003c84b4  38 70 8d e5                                      str r7, [sp, #0x38]
003c84b8  00 70 8d e5                                      str r7, [sp]
003c84bc  3c 40 8d e5                                      str r4, [sp, #0x3c]
003c84c0  04 40 8d e5                                      str r4, [sp, #4]
003c84c4  93 fd ff eb                                      bl #0x3c7b18
003c84c8  05 00 a0 e1                                      mov r0, r5
003c84cc  06 10 a0 e1                                      mov r1, r6
003c84d0  54 23 0c e3                                      movw r2, #0xc354
003c84d4  05 30 a0 e3                                      mov r3, #5
003c84d8  30 70 8d e5                                      str r7, [sp, #0x30]
003c84dc  00 70 8d e5                                      str r7, [sp]
003c84e0  34 40 8d e5                                      str r4, [sp, #0x34]
003c84e4  04 40 8d e5                                      str r4, [sp, #4]
003c84e8  8a fd ff eb                                      bl #0x3c7b18
003c84ec  05 00 a0 e1                                      mov r0, r5
003c84f0  06 10 a0 e1                                      mov r1, r6
003c84f4  55 23 0c e3                                      movw r2, #0xc355
003c84f8  06 30 a0 e3                                      mov r3, #6
003c84fc  00 70 8d e5                                      str r7, [sp]
003c8500  28 70 8d e5                                      str r7, [sp, #0x28]
003c8504  2c 40 8d e5                                      str r4, [sp, #0x2c]
003c8508  04 40 8d e5                                      str r4, [sp, #4]
003c850c  81 fd ff eb                                      bl #0x3c7b18
003c8510  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003c8514  05 00 a0 e1                                      mov r0, r5
003c8518  06 10 a0 e1                                      mov r1, r6
003c851c  03 70 98 e7                                      ldr r7, [r8, r3]
003c8520  5a 23 0c e3                                      movw r2, #0xc35a
003c8524  0b 30 a0 e3                                      mov r3, #0xb
003c8528  20 70 8d e5                                      str r7, [sp, #0x20]
003c852c  24 40 8d e5                                      str r4, [sp, #0x24]
003c8530  00 70 8d e5                                      str r7, [sp]
003c8534  04 40 8d e5                                      str r4, [sp, #4]
003c8538  76 fd ff eb                                      bl #0x3c7b18
003c853c  05 00 a0 e1                                      mov r0, r5
003c8540  06 10 a0 e1                                      mov r1, r6
003c8544  5c 23 0c e3                                      movw r2, #0xc35c
003c8548  09 30 a0 e3                                      mov r3, #9
003c854c  18 70 8d e5                                      str r7, [sp, #0x18]
003c8550  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c8554  00 70 8d e5                                      str r7, [sp]
003c8558  04 40 8d e5                                      str r4, [sp, #4]
003c855c  6d fd ff eb                                      bl #0x3c7b18
003c8560  05 00 a0 e1                                      mov r0, r5
003c8564  06 10 a0 e1                                      mov r1, r6
003c8568  5d 23 0c e3                                      movw r2, #0xc35d
003c856c  08 30 a0 e3                                      mov r3, #8
003c8570  10 70 8d e5                                      str r7, [sp, #0x10]
003c8574  14 40 8d e5                                      str r4, [sp, #0x14]
003c8578  00 70 8d e5                                      str r7, [sp]
003c857c  04 40 8d e5                                      str r4, [sp, #4]
003c8580  64 fd ff eb                                      bl #0x3c7b18
003c8584  05 00 a0 e1                                      mov r0, r5
003c8588  06 10 a0 e1                                      mov r1, r6
003c858c  5b 23 0c e3                                      movw r2, #0xc35b
003c8590  0a 30 a0 e3                                      mov r3, #0xa
003c8594  00 70 8d e5                                      str r7, [sp]
003c8598  90 00 8d e9                                      stmib sp, {r4, r7}
003c859c  0c 40 8d e5                                      str r4, [sp, #0xc]
003c85a0  5c fd ff eb                                      bl #0x3c7b18
003c85a4  50 d0 8d e2                                      add sp, sp, #0x50
003c85a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003c85ac  f4 c5 5c 00 bc 43 00 00 cc 34 00 00              .byte 0xf4, 0xc5, 0x5c, 0x00, 0xbc, 0x43, 0x00, 0x00, 0xcc, 0x34, 0x00, 0x00
