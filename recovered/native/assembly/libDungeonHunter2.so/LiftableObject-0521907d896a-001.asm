; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ee3b0, declared_size=8, range_size=8, mode=arm
; class-group: LiftableObject
; alias: _ZNK14LiftableObject11IsUpdatableEv
; demangled: LiftableObject::IsUpdatable() const
; decoder-mode: arm
003ee3b0  01 00 a0 e3                                      mov r0, #1
003ee3b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee3b8, declared_size=8, range_size=8, mode=arm
; class-group: LiftableObject
; alias: _ZNK14LiftableObject10IsAnimatedEv
; demangled: LiftableObject::IsAnimated() const
; decoder-mode: arm
003ee3b8  01 00 a0 e3                                      mov r0, #1
003ee3bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee3c0, declared_size=16, range_size=16, mode=arm
; class-group: LiftableObject
; alias: _ZNK14LiftableObject28IsUpdatingPositionFromVisualEv
; demangled: LiftableObject::IsUpdatingPositionFromVisual() const
; decoder-mode: arm
003ee3c0  90 03 90 e5                                      ldr r0, [r0, #0x390]
003ee3c4  00 00 50 e2                                      subs r0, r0, #0
003ee3c8  01 00 a0 13                                      movne r0, #1
003ee3cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee3d0, declared_size=16, range_size=16, mode=arm
; class-group: LiftableObject
; alias: _ZNK14LiftableObject29IsUpdatingPositionFromPhysicsEv
; demangled: LiftableObject::IsUpdatingPositionFromPhysics() const
; decoder-mode: arm
003ee3d0  90 03 90 e5                                      ldr r0, [r0, #0x390]
003ee3d4  01 00 70 e2                                      rsbs r0, r0, #1
003ee3d8  00 00 a0 33                                      movlo r0, #0
003ee3dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee3e0, declared_size=44, range_size=44, mode=arm
; class-group: LiftableObject
; alias: _ZNK14LiftableObject13IsInteractiveEP10GameObject
; demangled: LiftableObject::IsInteractive(GameObject*) const
; decoder-mode: arm
003ee3e0  81 30 d0 e5                                      ldrb r3, [r0, #0x81]
003ee3e4  00 00 53 e3                                      cmp r3, #0
003ee3e8  02 00 00 1a                                      bne #0x3ee3f8
003ee3ec  90 33 90 e5                                      ldr r3, [r0, #0x390]
003ee3f0  00 00 53 e3                                      cmp r3, #0
003ee3f4  01 00 00 0a                                      beq #0x3ee400
003ee3f8  00 00 a0 e3                                      mov r0, #0
003ee3fc  1e ff 2f e1                                      bx lr
003ee400  94 03 d0 e5                                      ldrb r0, [r0, #0x394]
003ee404  01 00 20 e2                                      eor r0, r0, #1
003ee408  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee40c, declared_size=8, range_size=8, mode=arm
; class-group: LiftableObject
; alias: _ZNK14LiftableObject10IsObstacleEv
; demangled: LiftableObject::IsObstacle() const
; decoder-mode: arm
003ee40c  01 00 a0 e3                                      mov r0, #1
003ee410  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee414, declared_size=12, range_size=12, mode=arm
; class-group: LiftableObject
; alias: _ZNK14LiftableObject17GetObstacleRadiusEv
; demangled: LiftableObject::GetObstacleRadius() const
; decoder-mode: arm
003ee414  43 04 a0 e3                                      mov r0, #0x43000000
003ee418  16 08 80 e2                                      add r0, r0, #0x160000
003ee41c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee420, declared_size=12, range_size=12, mode=arm
; class-group: LiftableObject
; alias: _ZNK14LiftableObject19GetObstacleStrengthEv
; demangled: LiftableObject::GetObstacleStrength() const
; decoder-mode: arm
003ee420  41 04 a0 e3                                      mov r0, #0x41000000
003ee424  02 06 80 e2                                      add r0, r0, #0x200000
003ee428  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee42c, declared_size=8, range_size=8, mode=arm
; class-group: LiftableObject
; alias: _ZNK14LiftableObject9GetDataIdEv
; demangled: LiftableObject::GetDataId() const
; decoder-mode: arm
003ee42c  74 03 90 e5                                      ldr r0, [r0, #0x374]
003ee430  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee434, declared_size=12, range_size=12, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObject10__CallbackEPN6glitch5scene19ITimelineControllerEPv
; demangled: LiftableObject::__Callback(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
003ee434  00 30 a0 e3                                      mov r3, #0
003ee438  94 33 c1 e5                                      strb r3, [r1, #0x394]
003ee43c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee440, declared_size=32, range_size=32, mode=arm
; class-group: LiftableObject
; alias: _ZNK14LiftableObject18GetInteractionTypeEP10GameObject
; demangled: LiftableObject::GetInteractionType(GameObject*) const
; decoder-mode: arm
003ee440  90 33 90 e5                                      ldr r3, [r0, #0x390]
003ee444  00 00 53 e3                                      cmp r3, #0
003ee448  04 00 a0 03                                      moveq r0, #4
003ee44c  1e ff 2f 01                                      bxeq lr
003ee450  01 00 53 e1                                      cmp r3, r1
003ee454  05 00 a0 03                                      moveq r0, #5
003ee458  00 00 e0 13                                      mvnne r0, #0
003ee45c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee460, declared_size=4, range_size=4, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObject8InteractEP10GameObject
; demangled: LiftableObject::Interact(GameObject*)
; decoder-mode: arm
003ee460  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ee464, declared_size=4, range_size=4, mode=arm
; class-group: LiftableObject
; alias: _ZNK14LiftableObject9IsZonableEv
; demangled: LiftableObject::IsZonable() const
; decoder-mode: arm
003ee464  bd 71 fe ea                                      b #0x38ab60

; FUNCTION 0x003ee468, declared_size=320, range_size=320, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObject7ReleaseEv
; demangled: LiftableObject::Release()
; decoder-mode: arm
003ee468  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003ee46c  90 33 90 e5                                      ldr r3, [r0, #0x390]
003ee470  10 51 9f e5                                      ldr r5, [pc, #0x110]
003ee474  24 d0 4d e2                                      sub sp, sp, #0x24
003ee478  00 00 53 e3                                      cmp r3, #0
003ee47c  00 40 a0 e1                                      mov r4, r0
003ee480  05 50 8f e0                                      add r5, pc, r5
003ee484  2a 00 00 0a                                      beq #0x3ee534
003ee488  d8 72 94 e5                                      ldr r7, [r4, #0x2d8]
003ee48c  14 00 8d e2                                      add r0, sp, #0x14
003ee490  08 60 97 e5                                      ldr r6, [r7, #8]
003ee494  06 10 a0 e1                                      mov r1, r6
003ee498  38 a3 06 eb                                      bl #0x597180
003ee49c  14 30 9d e5                                      ldr r3, [sp, #0x14]
003ee4a0  01 20 a0 e3                                      mov r2, #1
003ee4a4  08 10 8d e2                                      add r1, sp, #8
003ee4a8  08 30 8d e5                                      str r3, [sp, #8]
003ee4ac  18 30 9d e5                                      ldr r3, [sp, #0x18]
003ee4b0  04 00 a0 e1                                      mov r0, r4
003ee4b4  0c 30 8d e5                                      str r3, [sp, #0xc]
003ee4b8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003ee4bc  10 30 8d e5                                      str r3, [sp, #0x10]
003ee4c0  3b 96 fe eb                                      bl #0x393db4
003ee4c4  04 00 a0 e1                                      mov r0, r4
003ee4c8  e6 1f 84 e2                                      add r1, r4, #0x398
003ee4cc  3d 72 fe eb                                      bl #0x38adc8
003ee4d0  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
003ee4d4  72 2f 84 e2                                      add r2, r4, #0x1c8
003ee4d8  16 1e 84 e2                                      add r1, r4, #0x160
003ee4dc  03 00 95 e7                                      ldr r0, [r5, r3]
003ee4e0  27 de 04 eb                                      bl #0x525d84
003ee4e4  07 00 a0 e1                                      mov r0, r7
003ee4e8  61 75 fe eb                                      bl #0x38ba74
003ee4ec  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003ee4f0  06 10 a0 e1                                      mov r1, r6
003ee4f4  03 30 95 e7                                      ldr r3, [r5, r3]
003ee4f8  10 30 93 e5                                      ldr r3, [r3, #0x10]
003ee4fc  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003ee500  04 30 93 e5                                      ldr r3, [r3, #4]
003ee504  03 00 a0 e1                                      mov r0, r3
003ee508  00 30 93 e5                                      ldr r3, [r3]
003ee50c  0f e0 a0 e1                                      mov lr, pc
003ee510  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
003ee514  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
003ee518  b1 01 02 eb                                      bl #0x46ebe4
003ee51c  00 30 a0 e3                                      mov r3, #0
003ee520  90 33 84 e5                                      str r3, [r4, #0x390]
003ee524  01 30 a0 e3                                      mov r3, #1
003ee528  a4 33 c4 e5                                      strb r3, [r4, #0x3a4]
003ee52c  24 d0 8d e2                                      add sp, sp, #0x24
003ee530  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003ee534  58 20 9f e5                                      ldr r2, [pc, #0x58]
003ee538  02 20 95 e7                                      ldr r2, [r5, r2]
003ee53c  00 20 92 e5                                      ldr r2, [r2]
003ee540  02 00 52 e3                                      cmp r2, #2
003ee544  00 30 83 05                                      streq r3, [r3]
003ee548  ce ff ff 0a                                      beq #0x3ee488
003ee54c  01 00 52 e3                                      cmp r2, #1
003ee550  cc ff ff 1a                                      bne #0x3ee488
003ee554  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003ee558  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003ee55c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003ee560  00 00 95 e7                                      ldr r0, [r5, r0]
003ee564  38 30 9f e5                                      ldr r3, [pc, #0x38]
003ee568  e9 c0 a0 e3                                      mov ip, #0xe9
003ee56c  01 10 8f e0                                      add r1, pc, r1
003ee570  02 20 8f e0                                      add r2, pc, r2
003ee574  03 30 8f e0                                      add r3, pc, r3
003ee578  a8 00 80 e2                                      add r0, r0, #0xa8
003ee57c  00 c0 8d e5                                      str ip, [sp]
003ee580  9f 7e fc eb                                      bl #0x30e004
003ee584  bf ff ff ea                                      b #0x3ee488
; mapping-symbol data/literal pool
003ee588  10 66 5a 00 04 12 00 00 f4 37 00 00 c0 39 00 00  .byte 0x10, 0x66, 0x5a, 0x00, 0x04, 0x12, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003ee598  c0 19 00 00 6c fe 4c 00 48 7e 4d 00 4c 7e 4d 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x6c, 0xfe, 0x4c, 0x00, 0x48, 0x7e, 0x4d, 0x00, 0x4c, 0x7e, 0x4d, 0x00

; FUNCTION 0x003ee5a8, declared_size=84, range_size=84, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObject4DropEv
; demangled: LiftableObject::Drop()
; decoder-mode: arm
003ee5a8  10 40 2d e9                                      push {r4, lr}
003ee5ac  00 40 a0 e1                                      mov r4, r0
003ee5b0  08 d0 4d e2                                      sub sp, sp, #8
003ee5b4  ab ff ff eb                                      bl #0x3ee468
003ee5b8  d8 22 94 e5                                      ldr r2, [r4, #0x2d8]
003ee5bc  34 10 9f e5                                      ldr r1, [pc, #0x34]
003ee5c0  00 30 a0 e3                                      mov r3, #0
003ee5c4  38 c0 92 e5                                      ldr ip, [r2, #0x38]
003ee5c8  01 10 8f e0                                      add r1, pc, r1
003ee5cc  03 20 a0 e1                                      mov r2, r3
003ee5d0  0c 00 a0 e1                                      mov r0, ip
003ee5d4  00 c0 9c e5                                      ldr ip, [ip]
003ee5d8  00 30 8d e5                                      str r3, [sp]
003ee5dc  0f e0 a0 e1                                      mov lr, pc
003ee5e0  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003ee5e4  00 00 50 e3                                      cmp r0, #0
003ee5e8  01 30 a0 13                                      movne r3, #1
003ee5ec  94 33 c4 15                                      strbne r3, [r4, #0x394]
003ee5f0  08 d0 8d e2                                      add sp, sp, #8
003ee5f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003ee5f8  48 7e 4d 00                                      .byte 0x48, 0x7e, 0x4d, 0x00

; FUNCTION 0x003ee5fc, declared_size=884, range_size=884, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObject6PickUpEP10GameObject
; demangled: LiftableObject::PickUp(GameObject*)
; decoder-mode: arm
003ee5fc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003ee600  90 33 90 e5                                      ldr r3, [r0, #0x390]
003ee604  04 43 9f e5                                      ldr r4, [pc, #0x304]
003ee608  34 d0 4d e2                                      sub sp, sp, #0x34
003ee60c  00 00 53 e3                                      cmp r3, #0
003ee610  00 50 a0 e1                                      mov r5, r0
003ee614  01 60 a0 e1                                      mov r6, r1
003ee618  04 40 8f e0                                      add r4, pc, r4
003ee61c  08 00 00 0a                                      beq #0x3ee644
003ee620  ec 32 9f e5                                      ldr r3, [pc, #0x2ec]
003ee624  03 30 94 e7                                      ldr r3, [r4, r3]
003ee628  00 30 93 e5                                      ldr r3, [r3]
003ee62c  02 00 53 e3                                      cmp r3, #2
003ee630  00 30 a0 03                                      moveq r3, #0
003ee634  00 30 83 05                                      streq r3, [r3]
003ee638  01 00 00 0a                                      beq #0x3ee644
003ee63c  01 00 53 e3                                      cmp r3, #1
003ee640  66 00 00 0a                                      beq #0x3ee7e0
003ee644  00 00 56 e3                                      cmp r6, #0
003ee648  4f 00 00 0a                                      beq #0x3ee78c
003ee64c  90 33 95 e5                                      ldr r3, [r5, #0x390]
003ee650  00 00 53 e3                                      cmp r3, #0
003ee654  02 00 00 0a                                      beq #0x3ee664
003ee658  00 00 a0 e3                                      mov r0, #0
003ee65c  34 d0 8d e2                                      add sp, sp, #0x34
003ee660  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003ee664  00 00 56 e3                                      cmp r6, #0
003ee668  fa ff ff 0a                                      beq #0x3ee658
003ee66c  d8 82 96 e5                                      ldr r8, [r6, #0x2d8]
003ee670  d8 72 95 e5                                      ldr r7, [r5, #0x2d8]
003ee674  00 00 58 e3                                      cmp r8, #0
003ee678  7a 00 00 0a                                      beq #0x3ee868
003ee67c  00 00 57 e3                                      cmp r7, #0
003ee680  63 00 00 0a                                      beq #0x3ee814
003ee684  00 00 58 e3                                      cmp r8, #0
003ee688  00 00 57 13                                      cmpne r7, #0
003ee68c  f1 ff ff 0a                                      beq #0x3ee658
003ee690  80 12 9f e5                                      ldr r1, [pc, #0x280]
003ee694  08 00 a0 e1                                      mov r0, r8
003ee698  01 10 8f e0                                      add r1, pc, r1
003ee69c  dd 08 02 eb                                      bl #0x470a18
003ee6a0  74 32 9f e5                                      ldr r3, [pc, #0x274]
003ee6a4  00 a0 50 e2                                      subs sl, r0, #0
003ee6a8  08 a0 98 05                                      ldreq sl, [r8, #8]
003ee6ac  03 10 94 e7                                      ldr r1, [r4, r3]
003ee6b0  07 00 a0 e1                                      mov r0, r7
003ee6b4  5a 09 02 eb                                      bl #0x470c24
003ee6b8  fe 35 a0 e3                                      mov r3, #0x3f800000
003ee6bc  07 00 a0 e1                                      mov r0, r7
003ee6c0  24 10 8d e2                                      add r1, sp, #0x24
003ee6c4  2c 30 8d e5                                      str r3, [sp, #0x2c]
003ee6c8  24 30 8d e5                                      str r3, [sp, #0x24]
003ee6cc  28 30 8d e5                                      str r3, [sp, #0x28]
003ee6d0  48 82 9f e5                                      ldr r8, [pc, #0x248]
003ee6d4  34 10 02 eb                                      bl #0x4727ac
003ee6d8  08 10 97 e5                                      ldr r1, [r7, #8]
003ee6dc  00 30 9a e5                                      ldr r3, [sl]
003ee6e0  0a 00 a0 e1                                      mov r0, sl
003ee6e4  0f e0 a0 e1                                      mov lr, pc
003ee6e8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
003ee6ec  dc 02 95 e5                                      ldr r0, [r5, #0x2dc]
003ee6f0  1e 01 02 eb                                      bl #0x46eb70
003ee6f4  dc 02 95 e5                                      ldr r0, [r5, #0x2dc]
003ee6f8  f8 00 02 eb                                      bl #0x46eae0
003ee6fc  90 63 85 e5                                      str r6, [r5, #0x390]
003ee700  08 00 94 e7                                      ldr r0, [r4, r8]
003ee704  a2 c3 fc eb                                      bl #0x31f594
003ee708  00 60 50 e2                                      subs r6, r0, #0
003ee70c  6a 00 00 0a                                      beq #0x3ee8bc
003ee710  00 30 95 e5                                      ldr r3, [r5]
003ee714  05 00 a0 e1                                      mov r0, r5
003ee718  0f e0 a0 e1                                      mov lr, pc
003ee71c  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
003ee720  08 30 94 e7                                      ldr r3, [r4, r8]
003ee724  f8 11 9f e5                                      ldr r1, [pc, #0x1f8]
003ee728  f8 21 9f e5                                      ldr r2, [pc, #0x1f8]
003ee72c  00 70 a0 e1                                      mov r7, r0
003ee730  01 10 8f e0                                      add r1, pc, r1
003ee734  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003ee738  02 20 8f e0                                      add r2, pc, r2
003ee73c  64 50 95 e5                                      ldr r5, [r5, #0x64]
003ee740  25 59 03 eb                                      bl #0x4c4bdc
003ee744  e0 21 9f e5                                      ldr r2, [pc, #0x1e0]
003ee748  30 10 8d e2                                      add r1, sp, #0x30
003ee74c  00 30 a0 e3                                      mov r3, #0
003ee750  02 20 94 e7                                      ldr r2, [r4, r2]
003ee754  0c 00 8d e5                                      str r0, [sp, #0xc]
003ee758  06 00 a0 e1                                      mov r0, r6
003ee75c  08 20 82 e2                                      add r2, r2, #8
003ee760  28 20 21 e5                                      str r2, [r1, #-0x28]!
003ee764  00 20 e0 e3                                      mvn r2, #0
003ee768  14 50 8d e5                                      str r5, [sp, #0x14]
003ee76c  19 30 cd e5                                      strb r3, [sp, #0x19]
003ee770  1c 20 8d e5                                      str r2, [sp, #0x1c]
003ee774  20 70 8d e5                                      str r7, [sp, #0x20]
003ee778  10 30 8d e5                                      str r3, [sp, #0x10]
003ee77c  18 30 cd e5                                      strb r3, [sp, #0x18]
003ee780  42 2a fd eb                                      bl #0x339090
003ee784  01 00 a0 e3                                      mov r0, #1
003ee788  b3 ff ff ea                                      b #0x3ee65c
003ee78c  80 31 9f e5                                      ldr r3, [pc, #0x180]
003ee790  03 30 94 e7                                      ldr r3, [r4, r3]
003ee794  00 30 93 e5                                      ldr r3, [r3]
003ee798  02 00 53 e3                                      cmp r3, #2
003ee79c  00 60 86 05                                      streq r6, [r6]
003ee7a0  a9 ff ff 0a                                      beq #0x3ee64c
003ee7a4  01 00 53 e3                                      cmp r3, #1
003ee7a8  a7 ff ff 1a                                      bne #0x3ee64c
003ee7ac  7c 01 9f e5                                      ldr r0, [pc, #0x17c]
003ee7b0  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
003ee7b4  7c 21 9f e5                                      ldr r2, [pc, #0x17c]
003ee7b8  00 00 94 e7                                      ldr r0, [r4, r0]
003ee7bc  78 31 9f e5                                      ldr r3, [pc, #0x178]
003ee7c0  bb c0 a0 e3                                      mov ip, #0xbb
003ee7c4  01 10 8f e0                                      add r1, pc, r1
003ee7c8  02 20 8f e0                                      add r2, pc, r2
003ee7cc  03 30 8f e0                                      add r3, pc, r3
003ee7d0  a8 00 80 e2                                      add r0, r0, #0xa8
003ee7d4  00 c0 8d e5                                      str ip, [sp]
003ee7d8  09 7e fc eb                                      bl #0x30e004
003ee7dc  9a ff ff ea                                      b #0x3ee64c
003ee7e0  48 01 9f e5                                      ldr r0, [pc, #0x148]
003ee7e4  54 11 9f e5                                      ldr r1, [pc, #0x154]
003ee7e8  54 21 9f e5                                      ldr r2, [pc, #0x154]
003ee7ec  00 00 94 e7                                      ldr r0, [r4, r0]
003ee7f0  50 31 9f e5                                      ldr r3, [pc, #0x150]
003ee7f4  ba c0 a0 e3                                      mov ip, #0xba
003ee7f8  01 10 8f e0                                      add r1, pc, r1
003ee7fc  02 20 8f e0                                      add r2, pc, r2
003ee800  03 30 8f e0                                      add r3, pc, r3
003ee804  a8 00 80 e2                                      add r0, r0, #0xa8
003ee808  00 c0 8d e5                                      str ip, [sp]
003ee80c  fc 7d fc eb                                      bl #0x30e004
003ee810  8b ff ff ea                                      b #0x3ee644
003ee814  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
003ee818  03 30 94 e7                                      ldr r3, [r4, r3]
003ee81c  00 30 93 e5                                      ldr r3, [r3]
003ee820  02 00 53 e3                                      cmp r3, #2
003ee824  00 70 87 05                                      streq r7, [r7]
003ee828  95 ff ff 0a                                      beq #0x3ee684
003ee82c  01 00 53 e3                                      cmp r3, #1
003ee830  93 ff ff 1a                                      bne #0x3ee684
003ee834  f4 00 9f e5                                      ldr r0, [pc, #0xf4]
003ee838  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
003ee83c  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
003ee840  00 00 94 e7                                      ldr r0, [r4, r0]
003ee844  08 31 9f e5                                      ldr r3, [pc, #0x108]
003ee848  c8 c0 a0 e3                                      mov ip, #0xc8
003ee84c  01 10 8f e0                                      add r1, pc, r1
003ee850  02 20 8f e0                                      add r2, pc, r2
003ee854  03 30 8f e0                                      add r3, pc, r3
003ee858  a8 00 80 e2                                      add r0, r0, #0xa8
003ee85c  00 c0 8d e5                                      str ip, [sp]
003ee860  e7 7d fc eb                                      bl #0x30e004
003ee864  86 ff ff ea                                      b #0x3ee684
003ee868  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
003ee86c  03 30 94 e7                                      ldr r3, [r4, r3]
003ee870  00 30 93 e5                                      ldr r3, [r3]
003ee874  02 00 53 e3                                      cmp r3, #2
003ee878  00 80 88 05                                      streq r8, [r8]
003ee87c  7e ff ff 0a                                      beq #0x3ee67c
003ee880  01 00 53 e3                                      cmp r3, #1
003ee884  7c ff ff 1a                                      bne #0x3ee67c
003ee888  a0 00 9f e5                                      ldr r0, [pc, #0xa0]
003ee88c  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
003ee890  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
003ee894  00 00 94 e7                                      ldr r0, [r4, r0]
003ee898  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
003ee89c  c7 c0 a0 e3                                      mov ip, #0xc7
003ee8a0  01 10 8f e0                                      add r1, pc, r1
003ee8a4  02 20 8f e0                                      add r2, pc, r2
003ee8a8  03 30 8f e0                                      add r3, pc, r3
003ee8ac  a8 00 80 e2                                      add r0, r0, #0xa8
003ee8b0  00 c0 8d e5                                      str ip, [sp]
003ee8b4  d2 7d fc eb                                      bl #0x30e004
003ee8b8  6f ff ff ea                                      b #0x3ee67c
003ee8bc  50 30 9f e5                                      ldr r3, [pc, #0x50]
003ee8c0  03 30 94 e7                                      ldr r3, [r4, r3]
003ee8c4  00 30 93 e5                                      ldr r3, [r3]
003ee8c8  02 00 53 e3                                      cmp r3, #2
003ee8cc  00 60 86 05                                      streq r6, [r6]
003ee8d0  8e ff ff 0a                                      beq #0x3ee710
003ee8d4  01 00 53 e3                                      cmp r3, #1
003ee8d8  8c ff ff 1a                                      bne #0x3ee710
003ee8dc  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
003ee8e0  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
003ee8e4  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
003ee8e8  00 00 94 e7                                      ldr r0, [r4, r0]
003ee8ec  78 30 9f e5                                      ldr r3, [pc, #0x78]
003ee8f0  df c0 a0 e3                                      mov ip, #0xdf
003ee8f4  01 10 8f e0                                      add r1, pc, r1
003ee8f8  02 20 8f e0                                      add r2, pc, r2
003ee8fc  03 30 8f e0                                      add r3, pc, r3
003ee900  a8 00 80 e2                                      add r0, r0, #0xa8
003ee904  00 c0 8d e5                                      str ip, [sp]
003ee908  bd 7d fc eb                                      bl #0x30e004
003ee90c  7f ff ff ea                                      b #0x3ee710
; mapping-symbol data/literal pool
003ee910  78 64 5a 00 c0 39 00 00 00 79 4d 00 2c 3f 00 00  .byte 0x78, 0x64, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x00, 0x79, 0x4d, 0x00, 0x2c, 0x3f, 0x00, 0x00
003ee920  f4 37 00 00 38 42 4d 00 10 7d 4d 00 1c 17 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x38, 0x42, 0x4d, 0x00, 0x10, 0x7d, 0x4d, 0x00, 0x1c, 0x17, 0x00, 0x00
003ee930  c0 19 00 00 14 fc 4c 00 60 7c 4d 00 f4 7b 4d 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x14, 0xfc, 0x4c, 0x00, 0x60, 0x7c, 0x4d, 0x00, 0xf4, 0x7b, 0x4d, 0x00
003ee940  e0 fb 4c 00 1c 7c 4d 00 c0 7b 4d 00 8c fb 4c 00  .byte 0xe0, 0xfb, 0x4c, 0x00, 0x1c, 0x7c, 0x4d, 0x00, 0xc0, 0x7b, 0x4d, 0x00, 0x8c, 0xfb, 0x4c, 0x00
003ee950  f0 7b 4d 00 6c 7b 4d 00 38 fb 4c 00 94 7b 4d 00  .byte 0xf0, 0x7b, 0x4d, 0x00, 0x6c, 0x7b, 0x4d, 0x00, 0x38, 0xfb, 0x4c, 0x00, 0x94, 0x7b, 0x4d, 0x00
003ee960  18 7b 4d 00 e4 fa 4c 00 60 10 52 00 c4 7a 4d 00  .byte 0x18, 0x7b, 0x4d, 0x00, 0xe4, 0xfa, 0x4c, 0x00, 0x60, 0x10, 0x52, 0x00, 0xc4, 0x7a, 0x4d, 0x00

; FUNCTION 0x003ee9a4, declared_size=108, range_size=108, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObject6UpdateEv
; demangled: LiftableObject::Update()
; decoder-mode: arm
003ee9a4  30 40 2d e9                                      push {r4, r5, lr}
003ee9a8  a4 33 d0 e5                                      ldrb r3, [r0, #0x3a4]
003ee9ac  14 d0 4d e2                                      sub sp, sp, #0x14
003ee9b0  00 40 a0 e1                                      mov r4, r0
003ee9b4  00 00 53 e3                                      cmp r3, #0
003ee9b8  0f 00 00 1a                                      bne #0x3ee9fc
003ee9bc  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003ee9c0  00 00 50 e3                                      cmp r0, #0
003ee9c4  0a 00 00 0a                                      beq #0x3ee9f4
003ee9c8  04 50 8d e2                                      add r5, sp, #4
003ee9cc  00 30 a0 e3                                      mov r3, #0
003ee9d0  05 10 a0 e1                                      mov r1, r5
003ee9d4  0c 30 8d e5                                      str r3, [sp, #0xc]
003ee9d8  04 30 8d e5                                      str r3, [sp, #4]
003ee9dc  08 30 8d e5                                      str r3, [sp, #8]
003ee9e0  7f 08 02 eb                                      bl #0x470be4
003ee9e4  04 00 a0 e1                                      mov r0, r4
003ee9e8  05 10 a0 e1                                      mov r1, r5
003ee9ec  01 20 a0 e3                                      mov r2, #1
003ee9f0  ef 94 fe eb                                      bl #0x393db4
003ee9f4  14 d0 8d e2                                      add sp, sp, #0x14
003ee9f8  30 80 bd e8                                      pop {r4, r5, pc}
003ee9fc  dc 02 90 e5                                      ldr r0, [r0, #0x2dc]
003eea00  46 00 02 eb                                      bl #0x46eb20
003eea04  00 30 a0 e3                                      mov r3, #0
003eea08  a4 33 c4 e5                                      strb r3, [r4, #0x3a4]
003eea0c  ea ff ff ea                                      b #0x3ee9bc

; FUNCTION 0x003eea10, declared_size=436, range_size=436, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObject8InitPostEv
; demangled: LiftableObject::InitPost()
; decoder-mode: arm
003eea10  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003eea14  0c d0 4d e2                                      sub sp, sp, #0xc
003eea18  00 60 a0 e1                                      mov r6, r0
003eea1c  d0 74 fe eb                                      bl #0x38bd64
003eea20  74 32 96 e5                                      ldr r3, [r6, #0x274]
003eea24  7c 71 9f e5                                      ldr r7, [pc, #0x17c]
003eea28  03 00 50 e1                                      cmp r0, r3
003eea2c  07 70 8f e0                                      add r7, pc, r7
003eea30  51 00 00 aa                                      bge #0x3eeb7c
003eea34  8c 53 96 e5                                      ldr r5, [r6, #0x38c]
003eea38  88 33 96 e5                                      ldr r3, [r6, #0x388]
003eea3c  05 00 53 e1                                      cmp r3, r5
003eea40  27 00 00 0a                                      beq #0x3eeae4
003eea44  60 31 9f e5                                      ldr r3, [pc, #0x160]
003eea48  03 30 97 e7                                      ldr r3, [r7, r3]
003eea4c  00 80 93 e5                                      ldr r8, [r3]
003eea50  00 00 58 e3                                      cmp r8, #0
003eea54  4a 00 00 0a                                      beq #0x3eeb84
003eea58  50 31 9f e5                                      ldr r3, [pc, #0x150]
003eea5c  00 40 a0 e3                                      mov r4, #0
003eea60  03 30 97 e7                                      ldr r3, [r7, r3]
003eea64  00 a0 93 e5                                      ldr sl, [r3]
003eea68  02 00 00 ea                                      b #0x3eea78
003eea6c  01 40 84 e2                                      add r4, r4, #1
003eea70  08 00 54 e1                                      cmp r4, r8
003eea74  42 00 00 0a                                      beq #0x3eeb84
003eea78  04 11 9a e7                                      ldr r1, [sl, r4, lsl #2]
003eea7c  05 00 a0 e1                                      mov r0, r5
003eea80  25 7e fc eb                                      bl #0x30e31c
003eea84  00 00 50 e3                                      cmp r0, #0
003eea88  f7 ff ff 1a                                      bne #0x3eea6c
003eea8c  01 00 74 e3                                      cmn r4, #1
003eea90  74 43 86 e5                                      str r4, [r6, #0x374]
003eea94  12 00 00 0a                                      beq #0x3eeae4
003eea98  14 31 9f e5                                      ldr r3, [pc, #0x114]
003eea9c  03 30 97 e7                                      ldr r3, [r7, r3]
003eeaa0  00 30 93 e5                                      ldr r3, [r3]
003eeaa4  84 41 83 e0                                      add r4, r3, r4, lsl #3
003eeaa8  04 30 94 e5                                      ldr r3, [r4, #4]
003eeaac  01 00 73 e3                                      cmn r3, #1
003eeab0  0b 00 00 0a                                      beq #0x3eeae4
003eeab4  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
003eeab8  0c 10 a0 e3                                      mov r1, #0xc
003eeabc  02 20 97 e7                                      ldr r2, [r7, r2]
003eeac0  00 20 92 e5                                      ldr r2, [r2]
003eeac4  91 23 23 e0                                      mla r3, r1, r3, r2
003eeac8  08 40 93 e5                                      ldr r4, [r3, #8]
003eeacc  04 00 a0 e1                                      mov r0, r4
003eead0  df 7c fc eb                                      bl #0x30de54
003eead4  04 10 a0 e1                                      mov r1, r4
003eead8  00 20 84 e0                                      add r2, r4, r0
003eeadc  29 0e 86 e2                                      add r0, r6, #0x290
003eeae0  be 87 fc eb                                      bl #0x3109e0
003eeae4  06 00 a0 e1                                      mov r0, r6
003eeae8  db 74 fe eb                                      bl #0x38be5c
003eeaec  06 00 a0 e1                                      mov r0, r6
003eeaf0  1a 70 fe eb                                      bl #0x38ab60
003eeaf4  00 10 50 e2                                      subs r1, r0, #0
003eeaf8  1b 00 00 0a                                      beq #0x3eeb6c
003eeafc  d8 42 96 e5                                      ldr r4, [r6, #0x2d8]
003eeb00  00 00 54 e3                                      cmp r4, #0
003eeb04  1c 00 00 0a                                      beq #0x3eeb7c
003eeb08  38 30 94 e5                                      ldr r3, [r4, #0x38]
003eeb0c  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
003eeb10  00 50 a0 e3                                      mov r5, #0
003eeb14  00 c0 93 e5                                      ldr ip, [r3]
003eeb18  02 10 97 e7                                      ldr r1, [r7, r2]
003eeb1c  03 00 a0 e1                                      mov r0, r3
003eeb20  06 20 a0 e1                                      mov r2, r6
003eeb24  05 30 a0 e1                                      mov r3, r5
003eeb28  00 50 8d e5                                      str r5, [sp]
003eeb2c  0f e0 a0 e1                                      mov lr, pc
003eeb30  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
003eeb34  38 20 94 e5                                      ldr r2, [r4, #0x38]
003eeb38  80 10 9f e5                                      ldr r1, [pc, #0x80]
003eeb3c  05 30 a0 e1                                      mov r3, r5
003eeb40  00 c0 92 e5                                      ldr ip, [r2]
003eeb44  02 00 a0 e1                                      mov r0, r2
003eeb48  01 10 8f e0                                      add r1, pc, r1
003eeb4c  00 50 8d e5                                      str r5, [sp]
003eeb50  01 20 a0 e3                                      mov r2, #1
003eeb54  0f e0 a0 e1                                      mov lr, pc
003eeb58  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003eeb5c  04 00 a0 e1                                      mov r0, r4
003eeb60  0c d0 8d e2                                      add sp, sp, #0xc
003eeb64  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
003eeb68  b9 07 02 ea                                      b #0x470a54
003eeb6c  06 00 a0 e1                                      mov r0, r6
003eeb70  00 30 96 e5                                      ldr r3, [r6]
003eeb74  0f e0 a0 e1                                      mov lr, pc
003eeb78  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003eeb7c  0c d0 8d e2                                      add sp, sp, #0xc
003eeb80  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003eeb84  00 30 e0 e3                                      mvn r3, #0
003eeb88  74 33 86 e5                                      str r3, [r6, #0x374]
003eeb8c  06 00 a0 e1                                      mov r0, r6
003eeb90  b1 74 fe eb                                      bl #0x38be5c
003eeb94  06 00 a0 e1                                      mov r0, r6
003eeb98  f0 6f fe eb                                      bl #0x38ab60
003eeb9c  00 10 50 e2                                      subs r1, r0, #0
003eeba0  d5 ff ff 1a                                      bne #0x3eeafc
003eeba4  f0 ff ff ea                                      b #0x3eeb6c
; mapping-symbol data/literal pool
003eeba8  64 60 5a 00 38 20 00 00 6c 3b 00 00 f8 1a 00 00  .byte 0x64, 0x60, 0x5a, 0x00, 0x38, 0x20, 0x00, 0x00, 0x6c, 0x3b, 0x00, 0x00, 0xf8, 0x1a, 0x00, 0x00
003eebb8  a8 1c 00 00 60 14 00 00 68 37 4d 00              .byte 0xa8, 0x1c, 0x00, 0x00, 0x60, 0x14, 0x00, 0x00, 0x68, 0x37, 0x4d, 0x00

; FUNCTION 0x003eebc4, declared_size=8, range_size=8, mode=arm
; class-group: LiftableObject
; alias: _ZThn36_N14LiftableObjectD1Ev
; demangled: non-virtual thunk to LiftableObject::~LiftableObject()
; decoder-mode: arm
003eebc4  24 00 40 e2                                      sub r0, r0, #0x24
003eebc8  ff ff ff ea                                      b #0x3eebcc

; FUNCTION 0x003eebcc, declared_size=76, range_size=76, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObjectD1Ev
; demangled: LiftableObject::~LiftableObject()
; decoder-mode: arm
003eebcc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003eebd0  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003eebd4  10 40 2d e9                                      push {r4, lr}
003eebd8  02 20 8f e0                                      add r2, pc, r2
003eebdc  03 30 92 e7                                      ldr r3, [r2, r3]
003eebe0  00 40 a0 e1                                      mov r4, r0
003eebe4  de 0f 80 e2                                      add r0, r0, #0x378
003eebe8  e8 20 83 e2                                      add r2, r3, #0xe8
003eebec  08 10 83 e2                                      add r1, r3, #8
003eebf0  dc 30 83 e2                                      add r3, r3, #0xdc
003eebf4  0a 00 84 e8                                      stm r4, {r1, r3}
003eebf8  24 20 84 e5                                      str r2, [r4, #0x24]
003eebfc  6a 93 fc eb                                      bl #0x3139ac
003eec00  04 00 a0 e1                                      mov r0, r4
003eec04  db 79 fe eb                                      bl #0x38d378
003eec08  04 00 a0 e1                                      mov r0, r4
003eec0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003eec10  b8 5e 5a 00 a4 23 00 00                          .byte 0xb8, 0x5e, 0x5a, 0x00, 0xa4, 0x23, 0x00, 0x00

; FUNCTION 0x003eec18, declared_size=8, range_size=8, mode=arm
; class-group: LiftableObject
; alias: _ZThn36_N14LiftableObjectD0Ev
; demangled: non-virtual thunk to LiftableObject::~LiftableObject()
; decoder-mode: arm
003eec18  24 00 40 e2                                      sub r0, r0, #0x24
003eec1c  ff ff ff ea                                      b #0x3eec20

; FUNCTION 0x003eec20, declared_size=28, range_size=28, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObjectD0Ev
; demangled: LiftableObject::~LiftableObject()
; decoder-mode: arm
003eec20  10 40 2d e9                                      push {r4, lr}
003eec24  00 40 a0 e1                                      mov r4, r0
003eec28  e7 ff ff eb                                      bl #0x3eebcc
003eec2c  04 00 a0 e1                                      mov r0, r4
003eec30  02 86 fc eb                                      bl #0x310440
003eec34  04 00 a0 e1                                      mov r0, r4
003eec38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003eec3c, declared_size=76, range_size=76, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObjectD2Ev
; demangled: LiftableObject::~LiftableObject()
; decoder-mode: arm
003eec3c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003eec40  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003eec44  10 40 2d e9                                      push {r4, lr}
003eec48  02 20 8f e0                                      add r2, pc, r2
003eec4c  03 30 92 e7                                      ldr r3, [r2, r3]
003eec50  00 40 a0 e1                                      mov r4, r0
003eec54  de 0f 80 e2                                      add r0, r0, #0x378
003eec58  e8 20 83 e2                                      add r2, r3, #0xe8
003eec5c  08 10 83 e2                                      add r1, r3, #8
003eec60  dc 30 83 e2                                      add r3, r3, #0xdc
003eec64  0a 00 84 e8                                      stm r4, {r1, r3}
003eec68  24 20 84 e5                                      str r2, [r4, #0x24]
003eec6c  4e 93 fc eb                                      bl #0x3139ac
003eec70  04 00 a0 e1                                      mov r0, r4
003eec74  bf 79 fe eb                                      bl #0x38d378
003eec78  04 00 a0 e1                                      mov r0, r4
003eec7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003eec80  48 5e 5a 00 a4 23 00 00                          .byte 0x48, 0x5e, 0x5a, 0x00, 0xa4, 0x23, 0x00, 0x00

; FUNCTION 0x003eec88, declared_size=136, range_size=136, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObjectC1EN10ObjectBase6GO_IDSE
; demangled: LiftableObject::LiftableObject(ObjectBase::GO_IDS)
; decoder-mode: arm
003eec88  70 40 2d e9                                      push {r4, r5, r6, lr}
003eec8c  74 50 9f e5                                      ldr r5, [pc, #0x74]
003eec90  00 40 a0 e1                                      mov r4, r0
003eec94  bf 75 fe eb                                      bl #0x38c398
003eec98  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003eec9c  05 50 8f e0                                      add r5, pc, r5
003eeca0  de 2f 84 e2                                      add r2, r4, #0x378
003eeca4  03 30 95 e7                                      ldr r3, [r5, r3]
003eeca8  02 00 a0 e1                                      mov r0, r2
003eecac  88 23 84 e5                                      str r2, [r4, #0x388]
003eecb0  08 c0 83 e2                                      add ip, r3, #8
003eecb4  e8 10 83 e2                                      add r1, r3, #0xe8
003eecb8  dc 30 83 e2                                      add r3, r3, #0xdc
003eecbc  04 30 84 e5                                      str r3, [r4, #4]
003eecc0  24 10 84 e5                                      str r1, [r4, #0x24]
003eecc4  8c 23 84 e5                                      str r2, [r4, #0x38c]
003eecc8  00 c0 84 e5                                      str ip, [r4]
003eeccc  10 10 a0 e3                                      mov r1, #0x10
003eecd0  69 8a fc eb                                      bl #0x31167c
003eecd4  88 13 94 e5                                      ldr r1, [r4, #0x388]
003eecd8  00 30 a0 e3                                      mov r3, #0
003eecdc  00 20 a0 e3                                      mov r2, #0
003eece0  00 30 c1 e5                                      strb r3, [r1]
003eece4  04 00 a0 e1                                      mov r0, r4
003eece8  a0 23 84 e5                                      str r2, [r4, #0x3a0]
003eecec  84 30 c4 e5                                      strb r3, [r4, #0x84]
003eecf0  90 33 84 e5                                      str r3, [r4, #0x390]
003eecf4  94 33 c4 e5                                      strb r3, [r4, #0x394]
003eecf8  98 23 84 e5                                      str r2, [r4, #0x398]
003eecfc  9c 23 84 e5                                      str r2, [r4, #0x39c]
003eed00  a4 33 c4 e5                                      strb r3, [r4, #0x3a4]
003eed04  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003eed08  f4 5d 5a 00 a4 23 00 00                          .byte 0xf4, 0x5d, 0x5a, 0x00, 0xa4, 0x23, 0x00, 0x00

; FUNCTION 0x003eed10, declared_size=136, range_size=136, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObjectC2EN10ObjectBase6GO_IDSE
; demangled: LiftableObject::LiftableObject(ObjectBase::GO_IDS)
; decoder-mode: arm
003eed10  70 40 2d e9                                      push {r4, r5, r6, lr}
003eed14  74 50 9f e5                                      ldr r5, [pc, #0x74]
003eed18  00 40 a0 e1                                      mov r4, r0
003eed1c  9d 75 fe eb                                      bl #0x38c398
003eed20  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003eed24  05 50 8f e0                                      add r5, pc, r5
003eed28  de 2f 84 e2                                      add r2, r4, #0x378
003eed2c  03 30 95 e7                                      ldr r3, [r5, r3]
003eed30  02 00 a0 e1                                      mov r0, r2
003eed34  88 23 84 e5                                      str r2, [r4, #0x388]
003eed38  08 c0 83 e2                                      add ip, r3, #8
003eed3c  e8 10 83 e2                                      add r1, r3, #0xe8
003eed40  dc 30 83 e2                                      add r3, r3, #0xdc
003eed44  04 30 84 e5                                      str r3, [r4, #4]
003eed48  24 10 84 e5                                      str r1, [r4, #0x24]
003eed4c  8c 23 84 e5                                      str r2, [r4, #0x38c]
003eed50  00 c0 84 e5                                      str ip, [r4]
003eed54  10 10 a0 e3                                      mov r1, #0x10
003eed58  47 8a fc eb                                      bl #0x31167c
003eed5c  88 13 94 e5                                      ldr r1, [r4, #0x388]
003eed60  00 30 a0 e3                                      mov r3, #0
003eed64  00 20 a0 e3                                      mov r2, #0
003eed68  00 30 c1 e5                                      strb r3, [r1]
003eed6c  04 00 a0 e1                                      mov r0, r4
003eed70  a0 23 84 e5                                      str r2, [r4, #0x3a0]
003eed74  84 30 c4 e5                                      strb r3, [r4, #0x84]
003eed78  90 33 84 e5                                      str r3, [r4, #0x390]
003eed7c  94 33 c4 e5                                      strb r3, [r4, #0x394]
003eed80  98 23 84 e5                                      str r2, [r4, #0x398]
003eed84  9c 23 84 e5                                      str r2, [r4, #0x39c]
003eed88  a4 33 c4 e5                                      strb r3, [r4, #0x3a4]
003eed8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003eed90  6c 5d 5a 00 a4 23 00 00                          .byte 0x6c, 0x5d, 0x5a, 0x00, 0xa4, 0x23, 0x00, 0x00

; FUNCTION 0x003eeec8, declared_size=284, range_size=284, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObject9InitFinalEv
; demangled: LiftableObject::InitFinal()
; decoder-mode: arm
003eeec8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003eeecc  20 d0 4d e2                                      sub sp, sp, #0x20
003eeed0  00 50 a0 e1                                      mov r5, r0
003eeed4  a2 73 fe eb                                      bl #0x38bd64
003eeed8  74 32 95 e5                                      ldr r3, [r5, #0x274]
003eeedc  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
003eeee0  03 00 50 e1                                      cmp r0, r3
003eeee4  04 40 8f e0                                      add r4, pc, r4
003eeee8  01 00 00 ba                                      blt #0x3eeef4
003eeeec  20 d0 8d e2                                      add sp, sp, #0x20
003eeef0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003eeef4  05 00 a0 e1                                      mov r0, r5
003eeef8  92 77 fe eb                                      bl #0x38cd48
003eeefc  05 00 a0 e1                                      mov r0, r5
003eef00  16 6f fe eb                                      bl #0x38ab60
003eef04  00 00 50 e3                                      cmp r0, #0
003eef08  f7 ff ff 0a                                      beq #0x3eeeec
003eef0c  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003eef10  00 10 a0 e3                                      mov r1, #0
003eef14  01 20 a0 e3                                      mov r2, #1
003eef18  03 70 94 e7                                      ldr r7, [r4, r3]
003eef1c  01 60 a0 e1                                      mov r6, r1
003eef20  40 00 97 e5                                      ldr r0, [r7, #0x40]
003eef24  53 fd fd eb                                      bl #0x36e478
003eef28  60 36 90 e5                                      ldr r3, [r0, #0x660]
003eef2c  e6 1f 85 e2                                      add r1, r5, #0x398
003eef30  05 00 a0 e1                                      mov r0, r5
003eef34  20 21 93 e5                                      ldr r2, [r3, #0x120]
003eef38  98 23 85 e5                                      str r2, [r5, #0x398]
003eef3c  24 21 93 e5                                      ldr r2, [r3, #0x124]
003eef40  9c 23 85 e5                                      str r2, [r5, #0x39c]
003eef44  28 31 93 e5                                      ldr r3, [r3, #0x128]
003eef48  a0 33 85 e5                                      str r3, [r5, #0x3a0]
003eef4c  9d 6f fe eb                                      bl #0x38adc8
003eef50  06 10 a0 e1                                      mov r1, r6
003eef54  28 00 a0 e3                                      mov r0, #0x28
003eef58  44 80 97 e5                                      ldr r8, [r7, #0x44]
003eef5c  83 85 fc eb                                      bl #0x310570
003eef60  02 c0 a0 e3                                      mov ip, #2
003eef64  10 c0 8d e5                                      str ip, [sp, #0x10]
003eef68  ff cf 0f e3                                      movw ip, #0xffff
003eef6c  08 10 a0 e1                                      mov r1, r8
003eef70  05 20 a0 e1                                      mov r2, r5
003eef74  06 30 a0 e1                                      mov r3, r6
003eef78  14 c0 8d e5                                      str ip, [sp, #0x14]
003eef7c  01 c0 a0 e3                                      mov ip, #1
003eef80  00 70 a0 e1                                      mov r7, r0
003eef84  18 c0 8d e5                                      str ip, [sp, #0x18]
003eef88  00 60 8d e5                                      str r6, [sp]
003eef8c  04 60 8d e5                                      str r6, [sp, #4]
003eef90  08 60 8d e5                                      str r6, [sp, #8]
003eef94  0c 60 8d e5                                      str r6, [sp, #0xc]
003eef98  d4 00 02 eb                                      bl #0x46f2f0
003eef9c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003eefa0  07 00 a0 e1                                      mov r0, r7
003eefa4  03 30 94 e7                                      ldr r3, [r4, r3]
003eefa8  08 30 83 e2                                      add r3, r3, #8
003eefac  00 30 87 e5                                      str r3, [r7]
003eefb0  da fe 01 eb                                      bl #0x46eb20
003eefb4  05 00 a0 e1                                      mov r0, r5
003eefb8  07 10 a0 e1                                      mov r1, r7
003eefbc  06 20 a0 e1                                      mov r2, r6
003eefc0  0c 97 fe eb                                      bl #0x394bf8
003eefc4  05 00 a0 e1                                      mov r0, r5
003eefc8  00 30 95 e5                                      ldr r3, [r5]
003eefcc  0f e0 a0 e1                                      mov lr, pc
003eefd0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
003eefd4  c4 ff ff ea                                      b #0x3eeeec
; mapping-symbol data/literal pool
003eefd8  ac 5b 5a 00 f4 37 00 00 18 24 00 00              .byte 0xac, 0x5b, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x18, 0x24, 0x00, 0x00

; FUNCTION 0x003eefe4, declared_size=8, range_size=8, mode=arm
; class-group: LiftableObject
; alias: _ZThn4_N14LiftableObject17DeclarePropertiesEv
; demangled: non-virtual thunk to LiftableObject::DeclareProperties()
; decoder-mode: arm
003eefe4  04 00 40 e2                                      sub r0, r0, #4
003eefe8  ff ff ff ea                                      b #0x3eefec

; FUNCTION 0x003eefec, declared_size=400, range_size=400, mode=arm
; class-group: LiftableObject
; alias: _ZN14LiftableObject17DeclarePropertiesEv
; demangled: LiftableObject::DeclareProperties()
; decoder-mode: arm
003eefec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003eeff0  68 41 9f e5                                      ldr r4, [pc, #0x168]
003eeff4  68 31 9f e5                                      ldr r3, [pc, #0x168]
003eeff8  4c d0 4d e2                                      sub sp, sp, #0x4c
003eeffc  04 40 8f e0                                      add r4, pc, r4
003ef000  03 30 94 e7                                      ldr r3, [r4, r3]
003ef004  04 a0 80 e2                                      add sl, r0, #4
003ef008  00 90 a0 e1                                      mov sb, r0
003ef00c  00 20 93 e5                                      ldr r2, [r3]
003ef010  dd 8f 80 e2                                      add r8, r0, #0x374
003ef014  04 30 8d e5                                      str r3, [sp, #4]
003ef018  44 20 8d e5                                      str r2, [sp, #0x44]
003ef01c  b1 77 fe eb                                      bl #0x38cee8
003ef020  00 10 a0 e3                                      mov r1, #0
003ef024  24 00 a0 e3                                      mov r0, #0x24
003ef028  50 85 fc eb                                      bl #0x310570
003ef02c  34 b1 9f e5                                      ldr fp, [pc, #0x134]
003ef030  34 71 9f e5                                      ldr r7, [pc, #0x134]
003ef034  00 50 a0 e1                                      mov r5, r0
003ef038  0b b0 94 e7                                      ldr fp, [r4, fp]
003ef03c  07 70 8f e0                                      add r7, pc, r7
003ef040  07 10 a0 e1                                      mov r1, r7
003ef044  08 b0 8b e2                                      add fp, fp, #8
003ef048  10 20 8d e2                                      add r2, sp, #0x10
003ef04c  08 b0 80 e4                                      str fp, [r0], #8
003ef050  25 94 fc eb                                      bl #0x3140ec
003ef054  14 21 9f e5                                      ldr r2, [pc, #0x114]
003ef058  08 80 6a e0                                      rsb r8, sl, r8
003ef05c  00 10 e0 e3                                      mvn r1, #0
003ef060  02 20 94 e7                                      ldr r2, [r4, r2]
003ef064  2c 60 8d e2                                      add r6, sp, #0x2c
003ef068  04 80 85 e5                                      str r8, [r5, #4]
003ef06c  08 20 82 e2                                      add r2, r2, #8
003ef070  20 10 85 e5                                      str r1, [r5, #0x20]
003ef074  00 20 85 e5                                      str r2, [r5]
003ef078  07 10 a0 e1                                      mov r1, r7
003ef07c  05 20 a0 e1                                      mov r2, r5
003ef080  0a 00 a0 e1                                      mov r0, sl
003ef084  16 93 04 eb                                      bl #0x513ce4
003ef088  06 00 a0 e1                                      mov r0, r6
003ef08c  10 10 a0 e3                                      mov r1, #0x10
003ef090  3c 60 8d e5                                      str r6, [sp, #0x3c]
003ef094  40 60 8d e5                                      str r6, [sp, #0x40]
003ef098  77 89 fc eb                                      bl #0x31167c
003ef09c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003ef0a0  00 50 a0 e3                                      mov r5, #0
003ef0a4  14 70 8d e2                                      add r7, sp, #0x14
003ef0a8  00 50 c2 e5                                      strb r5, [r2]
003ef0ac  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003ef0b0  07 00 a0 e1                                      mov r0, r7
003ef0b4  40 10 9d e5                                      ldr r1, [sp, #0x40]
003ef0b8  24 70 8d e5                                      str r7, [sp, #0x24]
003ef0bc  28 70 8d e5                                      str r7, [sp, #0x28]
003ef0c0  88 89 fc eb                                      bl #0x3116e8
003ef0c4  05 10 a0 e1                                      mov r1, r5
003ef0c8  38 00 a0 e3                                      mov r0, #0x38
003ef0cc  27 85 fc eb                                      bl #0x310570
003ef0d0  9c 80 9f e5                                      ldr r8, [pc, #0x9c]
003ef0d4  00 50 a0 e1                                      mov r5, r0
003ef0d8  0c 20 8d e2                                      add r2, sp, #0xc
003ef0dc  08 80 8f e0                                      add r8, pc, r8
003ef0e0  08 10 a0 e1                                      mov r1, r8
003ef0e4  08 b0 80 e4                                      str fp, [r0], #8
003ef0e8  ff 93 fc eb                                      bl #0x3140ec
003ef0ec  84 20 9f e5                                      ldr r2, [pc, #0x84]
003ef0f0  de 9f 89 e2                                      add sb, sb, #0x378
003ef0f4  05 00 a0 e1                                      mov r0, r5
003ef0f8  02 20 94 e7                                      ldr r2, [r4, r2]
003ef0fc  09 90 6a e0                                      rsb sb, sl, sb
003ef100  04 90 85 e5                                      str sb, [r5, #4]
003ef104  08 20 82 e2                                      add r2, r2, #8
003ef108  20 20 80 e4                                      str r2, [r0], #0x20
003ef10c  30 00 85 e5                                      str r0, [r5, #0x30]
003ef110  34 00 85 e5                                      str r0, [r5, #0x34]
003ef114  28 10 9d e5                                      ldr r1, [sp, #0x28]
003ef118  24 20 9d e5                                      ldr r2, [sp, #0x24]
003ef11c  71 89 fc eb                                      bl #0x3116e8
003ef120  05 20 a0 e1                                      mov r2, r5
003ef124  08 10 a0 e1                                      mov r1, r8
003ef128  0a 00 a0 e1                                      mov r0, sl
003ef12c  ec 92 04 eb                                      bl #0x513ce4
003ef130  07 00 a0 e1                                      mov r0, r7
003ef134  1c 92 fc eb                                      bl #0x3139ac
003ef138  06 00 a0 e1                                      mov r0, r6
003ef13c  1a 92 fc eb                                      bl #0x3139ac
003ef140  04 30 9d e5                                      ldr r3, [sp, #4]
003ef144  44 20 9d e5                                      ldr r2, [sp, #0x44]
003ef148  00 30 93 e5                                      ldr r3, [r3]
003ef14c  03 00 52 e1                                      cmp r2, r3
003ef150  01 00 00 1a                                      bne #0x3ef15c
003ef154  4c d0 8d e2                                      add sp, sp, #0x4c
003ef158  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003ef15c  6b 7c fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003ef160  94 5a 5a 00 ac 40 00 00 30 23 00 00 1c 3b 4d 00  .byte 0x94, 0x5a, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x23, 0x00, 0x00, 0x1c, 0x3b, 0x4d, 0x00
003ef170  90 25 00 00 84 3e 4d 00 94 34 00 00              .byte 0x90, 0x25, 0x00, 0x00, 0x84, 0x3e, 0x4d, 0x00, 0x94, 0x34, 0x00, 0x00
