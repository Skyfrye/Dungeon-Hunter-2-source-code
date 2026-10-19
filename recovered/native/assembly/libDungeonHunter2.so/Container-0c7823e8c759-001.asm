; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039f324, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZNK9Container11IsUpdatableEv
; demangled: Container::IsUpdatable() const
; decoder-mode: arm
0039f324  00 00 a0 e3                                      mov r0, #0
0039f328  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f32c, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZNK9Container9GetScriptEv
; demangled: Container::GetScript() const
; decoder-mode: arm
0039f32c  00 00 a0 e3                                      mov r0, #0
0039f330  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f334, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZNK9Container9GetVisualEv
; demangled: Container::GetVisual() const
; decoder-mode: arm
0039f334  00 00 e0 e3                                      mvn r0, #0
0039f338  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f33c, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZNK9Container9GetDataIdEv
; demangled: Container::GetDataId() const
; decoder-mode: arm
0039f33c  00 00 e0 e3                                      mvn r0, #0
0039f340  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f344, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZNK9Container7GetLootEv
; demangled: Container::GetLoot() const
; decoder-mode: arm
0039f344  00 00 e0 e3                                      mvn r0, #0
0039f348  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f34c, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZNK9Container8GetSoundEv
; demangled: Container::GetSound() const
; decoder-mode: arm
0039f34c  00 00 e0 e3                                      mvn r0, #0
0039f350  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f354, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZNK9Container11KeepPhysicsEv
; demangled: Container::KeepPhysics() const
; decoder-mode: arm
0039f354  00 00 a0 e3                                      mov r0, #0
0039f358  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f35c, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZNK9Container21GetLootFixedNumPowersEv
; demangled: Container::GetLootFixedNumPowers() const
; decoder-mode: arm
0039f35c  00 00 e0 e3                                      mvn r0, #0
0039f360  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f364, declared_size=24, range_size=24, mode=arm
; class-group: Container
; alias: _ZNK9Container6IsDeadEv
; demangled: Container::IsDead() const
; decoder-mode: arm
0039f364  94 03 90 e5                                      ldr r0, [r0, #0x394]
0039f368  03 00 40 e2                                      sub r0, r0, #3
0039f36c  01 00 50 e3                                      cmp r0, #1
0039f370  00 00 a0 83                                      movhi r0, #0
0039f374  01 00 a0 93                                      movls r0, #1
0039f378  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f37c, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZNK9Container10IsAnimatedEv
; demangled: Container::IsAnimated() const
; decoder-mode: arm
0039f37c  01 00 a0 e3                                      mov r0, #1
0039f380  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f384, declared_size=36, range_size=36, mode=arm
; class-group: Container
; alias: _ZNK9Container13IsInteractiveEP10GameObject
; demangled: Container::IsInteractive(GameObject*) const
; decoder-mode: arm
0039f384  81 30 d0 e5                                      ldrb r3, [r0, #0x81]
0039f388  00 00 53 e3                                      cmp r3, #0
0039f38c  00 00 a0 13                                      movne r0, #0
0039f390  1e ff 2f 11                                      bxne lr
0039f394  94 03 90 e5                                      ldr r0, [r0, #0x394]
0039f398  02 00 50 e3                                      cmp r0, #2
0039f39c  00 00 a0 13                                      movne r0, #0
0039f3a0  01 00 a0 03                                      moveq r0, #1
0039f3a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f3a8, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZNK9Container10IsObstacleEv
; demangled: Container::IsObstacle() const
; decoder-mode: arm
0039f3a8  01 00 a0 e3                                      mov r0, #1
0039f3ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f3b0, declared_size=12, range_size=12, mode=arm
; class-group: Container
; alias: _ZNK9Container17GetObstacleRadiusEv
; demangled: Container::GetObstacleRadius() const
; decoder-mode: arm
0039f3b0  43 04 a0 e3                                      mov r0, #0x43000000
0039f3b4  16 08 80 e2                                      add r0, r0, #0x160000
0039f3b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f3bc, declared_size=12, range_size=12, mode=arm
; class-group: Container
; alias: _ZNK9Container19GetObstacleStrengthEv
; demangled: Container::GetObstacleStrength() const
; decoder-mode: arm
0039f3bc  41 04 a0 e3                                      mov r0, #0x41000000
0039f3c0  02 06 80 e2                                      add r0, r0, #0x200000
0039f3c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f3cc, declared_size=36, range_size=36, mode=arm
; class-group: Container
; alias: _ZN9Container8SetStateENS_5StateE
; demangled: Container::SetState(Container::State)
; decoder-mode: arm
0039f3cc  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
0039f3d0  03 00 51 e3                                      cmp r1, #3
0039f3d4  08 30 93 e5                                      ldr r3, [r3, #8]
0039f3d8  1c 21 93 e5                                      ldr r2, [r3, #0x11c]
0039f3dc  01 2b c2 03                                      biceq r2, r2, #0x400
0039f3e0  01 2b 82 13                                      orrne r2, r2, #0x400
0039f3e4  1c 21 83 e5                                      str r2, [r3, #0x11c]
0039f3e8  94 13 80 e5                                      str r1, [r0, #0x394]
0039f3ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f3f0, declared_size=92, range_size=92, mode=arm
; class-group: Container
; alias: _ZN9Container5SpawnEv
; demangled: Container::Spawn()
; decoder-mode: arm
0039f3f0  30 40 2d e9                                      push {r4, r5, lr}
0039f3f4  d8 52 90 e5                                      ldr r5, [r0, #0x2d8]
0039f3f8  0c d0 4d e2                                      sub sp, sp, #0xc
0039f3fc  00 00 55 e3                                      cmp r5, #0
0039f400  0e 00 00 0a                                      beq #0x39f440
0039f404  94 43 90 e5                                      ldr r4, [r0, #0x394]
0039f408  00 00 54 e3                                      cmp r4, #0
0039f40c  0b 00 00 1a                                      bne #0x39f440
0039f410  01 10 a0 e3                                      mov r1, #1
0039f414  ec ff ff eb                                      bl #0x39f3cc
0039f418  38 30 95 e5                                      ldr r3, [r5, #0x38]
0039f41c  24 10 9f e5                                      ldr r1, [pc, #0x24]
0039f420  04 20 a0 e1                                      mov r2, r4
0039f424  00 c0 93 e5                                      ldr ip, [r3]
0039f428  03 00 a0 e1                                      mov r0, r3
0039f42c  01 10 8f e0                                      add r1, pc, r1
0039f430  00 40 8d e5                                      str r4, [sp]
0039f434  04 30 a0 e1                                      mov r3, r4
0039f438  0f e0 a0 e1                                      mov lr, pc
0039f43c  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039f440  0c d0 8d e2                                      add sp, sp, #0xc
0039f444  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0039f448  7c 3a 52 00                                      .byte 0x7c, 0x3a, 0x52, 0x00

; FUNCTION 0x0039f44c, declared_size=204, range_size=204, mode=arm
; class-group: Container
; alias: _ZN9Container10__CallbackEPN6glitch5scene19ITimelineControllerEPv
; demangled: Container::__Callback(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
0039f44c  10 40 2d e9                                      push {r4, lr}
0039f450  94 33 91 e5                                      ldr r3, [r1, #0x394]
0039f454  08 d0 4d e2                                      sub sp, sp, #8
0039f458  01 40 a0 e1                                      mov r4, r1
0039f45c  01 00 53 e3                                      cmp r3, #1
0039f460  1b 00 00 0a                                      beq #0x39f4d4
0039f464  03 00 53 e3                                      cmp r3, #3
0039f468  0a 00 00 0a                                      beq #0x39f498
0039f46c  00 30 90 e5                                      ldr r3, [r0]
0039f470  0f e0 a0 e1                                      mov lr, pc
0039f474  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0039f478  00 00 50 e3                                      cmp r0, #0
0039f47c  d8 32 94 05                                      ldreq r3, [r4, #0x2d8]
0039f480  08 30 93 05                                      ldreq r3, [r3, #8]
0039f484  1c 21 93 05                                      ldreq r2, [r3, #0x11c]
0039f488  02 2c c2 03                                      biceq r2, r2, #0x200
0039f48c  1c 21 83 05                                      streq r2, [r3, #0x11c]
0039f490  08 d0 8d e2                                      add sp, sp, #8
0039f494  10 80 bd e8                                      pop {r4, pc}
0039f498  01 00 a0 e1                                      mov r0, r1
0039f49c  04 10 a0 e3                                      mov r1, #4
0039f4a0  c9 ff ff eb                                      bl #0x39f3cc
0039f4a4  d8 22 94 e5                                      ldr r2, [r4, #0x2d8]
0039f4a8  60 10 9f e5                                      ldr r1, [pc, #0x60]
0039f4ac  00 30 a0 e3                                      mov r3, #0
0039f4b0  38 c0 92 e5                                      ldr ip, [r2, #0x38]
0039f4b4  01 10 8f e0                                      add r1, pc, r1
0039f4b8  03 20 a0 e1                                      mov r2, r3
0039f4bc  0c 00 a0 e1                                      mov r0, ip
0039f4c0  00 c0 9c e5                                      ldr ip, [ip]
0039f4c4  00 30 8d e5                                      str r3, [sp]
0039f4c8  0f e0 a0 e1                                      mov lr, pc
0039f4cc  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039f4d0  ee ff ff ea                                      b #0x39f490
0039f4d4  01 00 a0 e1                                      mov r0, r1
0039f4d8  02 10 a0 e3                                      mov r1, #2
0039f4dc  ba ff ff eb                                      bl #0x39f3cc
0039f4e0  d8 22 94 e5                                      ldr r2, [r4, #0x2d8]
0039f4e4  28 10 9f e5                                      ldr r1, [pc, #0x28]
0039f4e8  00 30 a0 e3                                      mov r3, #0
0039f4ec  38 c0 92 e5                                      ldr ip, [r2, #0x38]
0039f4f0  01 10 8f e0                                      add r1, pc, r1
0039f4f4  03 20 a0 e1                                      mov r2, r3
0039f4f8  0c 00 a0 e1                                      mov r0, ip
0039f4fc  00 c0 9c e5                                      ldr ip, [ip]
0039f500  00 30 8d e5                                      str r3, [sp]
0039f504  0f e0 a0 e1                                      mov lr, pc
0039f508  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039f50c  df ff ff ea                                      b #0x39f490
; mapping-symbol data/literal pool
0039f510  14 36 52 00 c0 2d 52 00                          .byte 0x14, 0x36, 0x52, 0x00, 0xc0, 0x2d, 0x52, 0x00

; FUNCTION 0x0039f534, declared_size=4, range_size=4, mode=arm
; class-group: Container
; alias: _ZNK9Container9IsZonableEv
; demangled: Container::IsZonable() const
; decoder-mode: arm
0039f534  89 ad ff ea                                      b #0x38ab60

; FUNCTION 0x0039f6e8, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZThn36_N9Container11DeserializeEP11IStreamBase
; demangled: non-virtual thunk to Container::Deserialize(IStreamBase*)
; decoder-mode: arm
0039f6e8  24 00 40 e2                                      sub r0, r0, #0x24
0039f6ec  ff ff ff ea                                      b #0x39f6f0

; FUNCTION 0x0039f6f0, declared_size=312, range_size=312, mode=arm
; class-group: Container
; alias: _ZN9Container11DeserializeEP11IStreamBase
; demangled: Container::Deserialize(IStreamBase*)
; decoder-mode: arm
0039f6f0  30 40 2d e9                                      push {r4, r5, lr}
0039f6f4  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0039f6f8  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
0039f6fc  00 50 a0 e1                                      mov r5, r0
0039f700  03 30 8f e0                                      add r3, pc, r3
0039f704  02 00 93 e7                                      ldr r0, [r3, r2]
0039f708  14 d0 4d e2                                      sub sp, sp, #0x14
0039f70c  01 40 a0 e1                                      mov r4, r1
0039f710  9f ff fd eb                                      bl #0x31f594
0039f714  90 33 d5 e5                                      ldrb r3, [r5, #0x390]
0039f718  00 00 53 e3                                      cmp r3, #0
0039f71c  07 00 00 1a                                      bne #0x39f740
0039f720  f3 30 d0 e5                                      ldrb r3, [r0, #0xf3]
0039f724  00 00 53 e3                                      cmp r3, #0
0039f728  01 00 00 0a                                      beq #0x39f734
0039f72c  14 d0 8d e2                                      add sp, sp, #0x14
0039f730  30 80 bd e8                                      pop {r4, r5, pc}
0039f734  f4 30 d0 e5                                      ldrb r3, [r0, #0xf4]
0039f738  00 00 53 e3                                      cmp r3, #0
0039f73c  fa ff ff 1a                                      bne #0x39f72c
0039f740  04 10 a0 e1                                      mov r1, r4
0039f744  05 00 a0 e1                                      mov r0, r5
0039f748  73 b0 ff eb                                      bl #0x38b91c
0039f74c  04 00 a0 e1                                      mov r0, r4
0039f750  0f 10 8d e2                                      add r1, sp, #0xf
0039f754  b7 ff ff eb                                      bl #0x39f638
0039f758  d8 32 95 e5                                      ldr r3, [r5, #0x2d8]
0039f75c  00 00 53 e3                                      cmp r3, #0
0039f760  f1 ff ff 0a                                      beq #0x39f72c
0039f764  05 00 a0 e1                                      mov r0, r5
0039f768  0f 10 dd e5                                      ldrb r1, [sp, #0xf]
0039f76c  16 ff ff eb                                      bl #0x39f3cc
0039f770  94 33 95 e5                                      ldr r3, [r5, #0x394]
0039f774  d8 42 95 e5                                      ldr r4, [r5, #0x2d8]
0039f778  04 00 53 e3                                      cmp r3, #4
0039f77c  0e 00 00 0a                                      beq #0x39f7bc
0039f780  02 00 53 e3                                      cmp r3, #2
0039f784  e8 ff ff 1a                                      bne #0x39f72c
0039f788  00 00 54 e3                                      cmp r4, #0
0039f78c  e6 ff ff 0a                                      beq #0x39f72c
0039f790  38 c0 94 e5                                      ldr ip, [r4, #0x38]
0039f794  84 10 9f e5                                      ldr r1, [pc, #0x84]
0039f798  00 30 a0 e3                                      mov r3, #0
0039f79c  03 20 a0 e1                                      mov r2, r3
0039f7a0  0c 00 a0 e1                                      mov r0, ip
0039f7a4  01 10 8f e0                                      add r1, pc, r1
0039f7a8  00 c0 9c e5                                      ldr ip, [ip]
0039f7ac  00 30 8d e5                                      str r3, [sp]
0039f7b0  0f e0 a0 e1                                      mov lr, pc
0039f7b4  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039f7b8  db ff ff ea                                      b #0x39f72c
0039f7bc  00 30 95 e5                                      ldr r3, [r5]
0039f7c0  05 00 a0 e1                                      mov r0, r5
0039f7c4  0f e0 a0 e1                                      mov lr, pc
0039f7c8  dc f0 93 e5                                      ldr pc, [r3, #0xdc]
0039f7cc  00 10 50 e2                                      subs r1, r0, #0
0039f7d0  0c 00 00 0a                                      beq #0x39f808
0039f7d4  00 00 54 e3                                      cmp r4, #0
0039f7d8  d3 ff ff 0a                                      beq #0x39f72c
0039f7dc  38 c0 94 e5                                      ldr ip, [r4, #0x38]
0039f7e0  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0039f7e4  00 30 a0 e3                                      mov r3, #0
0039f7e8  03 20 a0 e1                                      mov r2, r3
0039f7ec  0c 00 a0 e1                                      mov r0, ip
0039f7f0  01 10 8f e0                                      add r1, pc, r1
0039f7f4  00 c0 9c e5                                      ldr ip, [ip]
0039f7f8  00 30 8d e5                                      str r3, [sp]
0039f7fc  0f e0 a0 e1                                      mov lr, pc
0039f800  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039f804  c8 ff ff ea                                      b #0x39f72c
0039f808  05 00 a0 e1                                      mov r0, r5
0039f80c  01 20 a0 e1                                      mov r2, r1
0039f810  f8 d4 ff eb                                      bl #0x394bf8
0039f814  ee ff ff ea                                      b #0x39f7d4
; mapping-symbol data/literal pool
0039f818  90 53 5f 00 f4 37 00 00 0c 2b 52 00 d8 32 52 00  .byte 0x90, 0x53, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x0c, 0x2b, 0x52, 0x00, 0xd8, 0x32, 0x52, 0x00

; FUNCTION 0x0039f8d8, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZThn36_N9Container9SerializeEP11IStreamBase
; demangled: non-virtual thunk to Container::Serialize(IStreamBase*)
; decoder-mode: arm
0039f8d8  24 00 40 e2                                      sub r0, r0, #0x24
0039f8dc  ff ff ff ea                                      b #0x39f8e0

; FUNCTION 0x0039f8e0, declared_size=48, range_size=48, mode=arm
; class-group: Container
; alias: _ZN9Container9SerializeEP11IStreamBase
; demangled: Container::Serialize(IStreamBase*)
; decoder-mode: arm
0039f8e0  30 40 2d e9                                      push {r4, r5, lr}
0039f8e4  00 50 a0 e1                                      mov r5, r0
0039f8e8  0c d0 4d e2                                      sub sp, sp, #0xc
0039f8ec  01 40 a0 e1                                      mov r4, r1
0039f8f0  3b b0 ff eb                                      bl #0x38b9e4
0039f8f4  94 33 95 e5                                      ldr r3, [r5, #0x394]
0039f8f8  08 10 8d e2                                      add r1, sp, #8
0039f8fc  04 00 a0 e1                                      mov r0, r4
0039f900  01 30 61 e5                                      strb r3, [r1, #-1]!
0039f904  c7 ff ff eb                                      bl #0x39f828
0039f908  0c d0 8d e2                                      add sp, sp, #0xc
0039f90c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0039f910, declared_size=576, range_size=576, mode=arm
; class-group: Container
; alias: _ZN9Container8InitPostEv
; demangled: Container::InitPost()
; decoder-mode: arm
0039f910  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039f914  08 d0 4d e2                                      sub sp, sp, #8
0039f918  00 40 a0 e1                                      mov r4, r0
0039f91c  10 b1 ff eb                                      bl #0x38bd64
0039f920  74 32 94 e5                                      ldr r3, [r4, #0x274]
0039f924  00 52 9f e5                                      ldr r5, [pc, #0x200]
0039f928  03 00 50 e1                                      cmp r0, r3
0039f92c  05 50 8f e0                                      add r5, pc, r5
0039f930  01 00 00 ba                                      blt #0x39f93c
0039f934  08 d0 8d e2                                      add sp, sp, #8
0039f938  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0039f93c  00 30 94 e5                                      ldr r3, [r4]
0039f940  04 00 a0 e1                                      mov r0, r4
0039f944  0f e0 a0 e1                                      mov lr, pc
0039f948  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
0039f94c  00 30 94 e5                                      ldr r3, [r4]
0039f950  74 03 84 e5                                      str r0, [r4, #0x374]
0039f954  04 00 a0 e1                                      mov r0, r4
0039f958  0f e0 a0 e1                                      mov lr, pc
0039f95c  cc f0 93 e5                                      ldr pc, [r3, #0xcc]
0039f960  01 00 70 e3                                      cmn r0, #1
0039f964  0e 00 00 0a                                      beq #0x39f9a4
0039f968  74 33 94 e5                                      ldr r3, [r4, #0x374]
0039f96c  01 00 73 e3                                      cmn r3, #1
0039f970  0b 00 00 0a                                      beq #0x39f9a4
0039f974  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
0039f978  0c 20 a0 e3                                      mov r2, #0xc
0039f97c  03 30 95 e7                                      ldr r3, [r5, r3]
0039f980  00 30 93 e5                                      ldr r3, [r3]
0039f984  92 30 20 e0                                      mla r0, r2, r0, r3
0039f988  08 60 90 e5                                      ldr r6, [r0, #8]
0039f98c  06 00 a0 e1                                      mov r0, r6
0039f990  2f b9 fd eb                                      bl #0x30de54
0039f994  06 10 a0 e1                                      mov r1, r6
0039f998  00 20 86 e0                                      add r2, r6, r0
0039f99c  29 0e 84 e2                                      add r0, r4, #0x290
0039f9a0  0e c4 fd eb                                      bl #0x3109e0
0039f9a4  04 00 a0 e1                                      mov r0, r4
0039f9a8  2b b1 ff eb                                      bl #0x38be5c
0039f9ac  04 00 a0 e1                                      mov r0, r4
0039f9b0  6a ac ff eb                                      bl #0x38ab60
0039f9b4  00 10 50 e2                                      subs r1, r0, #0
0039f9b8  4e 00 00 0a                                      beq #0x39faf8
0039f9bc  d8 82 94 e5                                      ldr r8, [r4, #0x2d8]
0039f9c0  00 00 58 e3                                      cmp r8, #0
0039f9c4  1b 00 00 0a                                      beq #0x39fa38
0039f9c8  64 31 9f e5                                      ldr r3, [pc, #0x164]
0039f9cc  38 60 98 e5                                      ldr r6, [r8, #0x38]
0039f9d0  04 20 a0 e1                                      mov r2, r4
0039f9d4  03 10 95 e7                                      ldr r1, [r5, r3]
0039f9d8  58 31 9f e5                                      ldr r3, [pc, #0x158]
0039f9dc  00 c0 96 e5                                      ldr ip, [r6]
0039f9e0  06 00 a0 e1                                      mov r0, r6
0039f9e4  03 30 95 e7                                      ldr r3, [r5, r3]
0039f9e8  00 40 8d e5                                      str r4, [sp]
0039f9ec  0f e0 a0 e1                                      mov lr, pc
0039f9f0  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
0039f9f4  40 11 9f e5                                      ldr r1, [pc, #0x140]
0039f9f8  00 70 a0 e3                                      mov r7, #0
0039f9fc  00 c0 96 e5                                      ldr ip, [r6]
0039fa00  01 10 8f e0                                      add r1, pc, r1
0039fa04  00 70 8d e5                                      str r7, [sp]
0039fa08  06 00 a0 e1                                      mov r0, r6
0039fa0c  07 20 a0 e1                                      mov r2, r7
0039fa10  07 30 a0 e1                                      mov r3, r7
0039fa14  0f e0 a0 e1                                      mov lr, pc
0039fa18  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039fa1c  00 00 50 e3                                      cmp r0, #0
0039fa20  1b 00 00 0a                                      beq #0x39fa94
0039fa24  07 10 a0 e1                                      mov r1, r7
0039fa28  04 00 a0 e1                                      mov r0, r4
0039fa2c  66 fe ff eb                                      bl #0x39f3cc
0039fa30  08 00 a0 e1                                      mov r0, r8
0039fa34  06 44 03 eb                                      bl #0x470a54
0039fa38  00 31 9f e5                                      ldr r3, [pc, #0x100]
0039fa3c  03 30 95 e7                                      ldr r3, [r5, r3]
0039fa40  00 50 93 e5                                      ldr r5, [r3]
0039fa44  00 00 55 e3                                      cmp r5, #0
0039fa48  06 00 00 0a                                      beq #0x39fa68
0039fa4c  00 30 94 e5                                      ldr r3, [r4]
0039fa50  04 00 a0 e1                                      mov r0, r4
0039fa54  0f e0 a0 e1                                      mov lr, pc
0039fa58  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
0039fa5c  00 10 a0 e1                                      mov r1, r0
0039fa60  05 00 a0 e1                                      mov r0, r5
0039fa64  e4 27 ff eb                                      bl #0x3699fc
0039fa68  00 30 94 e5                                      ldr r3, [r4]
0039fa6c  04 00 a0 e1                                      mov r0, r4
0039fa70  0f e0 a0 e1                                      mov lr, pc
0039fa74  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
0039fa78  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0039fa7c  00 10 a0 e1                                      mov r1, r0
0039fa80  04 00 a0 e1                                      mov r0, r4
0039fa84  02 20 8f e0                                      add r2, pc, r2
0039fa88  08 d0 8d e2                                      add sp, sp, #8
0039fa8c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0039fa90  32 bd ff ea                                      b #0x38ef60
0039fa94  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0039fa98  00 20 a0 e1                                      mov r2, r0
0039fa9c  00 c0 96 e5                                      ldr ip, [r6]
0039faa0  02 30 a0 e1                                      mov r3, r2
0039faa4  00 00 8d e5                                      str r0, [sp]
0039faa8  01 10 8f e0                                      add r1, pc, r1
0039faac  06 00 a0 e1                                      mov r0, r6
0039fab0  0f e0 a0 e1                                      mov lr, pc
0039fab4  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039fab8  00 30 50 e2                                      subs r3, r0, #0
0039fabc  16 00 00 1a                                      bne #0x39fb1c
0039fac0  84 10 9f e5                                      ldr r1, [pc, #0x84]
0039fac4  00 c0 96 e5                                      ldr ip, [r6]
0039fac8  03 20 a0 e1                                      mov r2, r3
0039facc  06 00 a0 e1                                      mov r0, r6
0039fad0  01 10 8f e0                                      add r1, pc, r1
0039fad4  00 30 8d e5                                      str r3, [sp]
0039fad8  0f e0 a0 e1                                      mov lr, pc
0039fadc  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039fae0  00 00 50 e3                                      cmp r0, #0
0039fae4  d1 ff ff 0a                                      beq #0x39fa30
0039fae8  04 00 a0 e1                                      mov r0, r4
0039faec  02 10 a0 e3                                      mov r1, #2
0039faf0  35 fe ff eb                                      bl #0x39f3cc
0039faf4  cd ff ff ea                                      b #0x39fa30
0039faf8  04 00 a0 e1                                      mov r0, r4
0039fafc  00 30 94 e5                                      ldr r3, [r4]
0039fb00  0f e0 a0 e1                                      mov lr, pc
0039fb04  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0039fb08  04 00 a0 e1                                      mov r0, r4
0039fb0c  04 10 a0 e3                                      mov r1, #4
0039fb10  08 d0 8d e2                                      add sp, sp, #8
0039fb14  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0039fb18  2b fe ff ea                                      b #0x39f3cc
0039fb1c  04 00 a0 e1                                      mov r0, r4
0039fb20  01 10 a0 e3                                      mov r1, #1
0039fb24  28 fe ff eb                                      bl #0x39f3cc
0039fb28  c0 ff ff ea                                      b #0x39fa30
; mapping-symbol data/literal pool
0039fb2c  64 51 5f 00 a8 1c 00 00 00 4c 00 00 6c 1f 00 00  .byte 0x64, 0x51, 0x5f, 0x00, 0xa8, 0x1c, 0x00, 0x00, 0x00, 0x4c, 0x00, 0x00, 0x6c, 0x1f, 0x00, 0x00
0039fb3c  50 35 52 00 a4 0d 00 00 fc 30 52 00 00 34 52 00  .byte 0x50, 0x35, 0x52, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xfc, 0x30, 0x52, 0x00, 0x00, 0x34, 0x52, 0x00
0039fb4c  e0 27 52 00                                      .byte 0xe0, 0x27, 0x52, 0x00

; FUNCTION 0x0039fc98, declared_size=160, range_size=160, mode=arm
; class-group: Container
; alias: _ZN9Container9InitFinalEv
; demangled: Container::InitFinal()
; decoder-mode: arm
0039fc98  70 40 2d e9                                      push {r4, r5, r6, lr}
0039fc9c  00 40 a0 e1                                      mov r4, r0
0039fca0  2f b0 ff eb                                      bl #0x38bd64
0039fca4  74 32 94 e5                                      ldr r3, [r4, #0x274]
0039fca8  80 50 9f e5                                      ldr r5, [pc, #0x80]
0039fcac  03 00 50 e1                                      cmp r0, r3
0039fcb0  05 50 8f e0                                      add r5, pc, r5
0039fcb4  00 00 00 ba                                      blt #0x39fcbc
0039fcb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0039fcbc  04 00 a0 e1                                      mov r0, r4
0039fcc0  20 b4 ff eb                                      bl #0x38cd48
0039fcc4  94 33 94 e5                                      ldr r3, [r4, #0x394]
0039fcc8  03 30 43 e2                                      sub r3, r3, #3
0039fccc  01 00 53 e3                                      cmp r3, #1
0039fcd0  03 00 00 9a                                      bls #0x39fce4
0039fcd4  00 30 94 e5                                      ldr r3, [r4]
0039fcd8  04 00 a0 e1                                      mov r0, r4
0039fcdc  0f e0 a0 e1                                      mov lr, pc
0039fce0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0039fce4  04 00 a0 e1                                      mov r0, r4
0039fce8  9c ab ff eb                                      bl #0x38ab60
0039fcec  00 00 50 e3                                      cmp r0, #0
0039fcf0  f0 ff ff 0a                                      beq #0x39fcb8
0039fcf4  38 30 9f e5                                      ldr r3, [pc, #0x38]
0039fcf8  00 10 a0 e3                                      mov r1, #0
0039fcfc  28 00 a0 e3                                      mov r0, #0x28
0039fd00  03 30 95 e7                                      ldr r3, [r5, r3]
0039fd04  44 60 93 e5                                      ldr r6, [r3, #0x44]
0039fd08  18 c2 fd eb                                      bl #0x310570
0039fd0c  06 10 a0 e1                                      mov r1, r6
0039fd10  04 20 a0 e1                                      mov r2, r4
0039fd14  00 50 a0 e1                                      mov r5, r0
0039fd18  c3 ff ff eb                                      bl #0x39fc2c
0039fd1c  04 00 a0 e1                                      mov r0, r4
0039fd20  05 10 a0 e1                                      mov r1, r5
0039fd24  00 20 a0 e3                                      mov r2, #0
0039fd28  70 40 bd e8                                      pop {r4, r5, r6, lr}
0039fd2c  b1 d3 ff ea                                      b #0x394bf8
; mapping-symbol data/literal pool
0039fd30  e0 4d 5f 00 f4 37 00 00                          .byte 0xe0, 0x4d, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0039fd38, declared_size=544, range_size=544, mode=arm
; class-group: Container
; alias: _ZN9Container26InterpretIncomingNetStructEb
; demangled: Container::InterpretIncomingNetStruct(bool)
; decoder-mode: arm
0039fd38  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0039fd3c  98 66 90 e5                                      ldr r6, [r0, #0x698]
0039fd40  fc 71 9f e5                                      ldr r7, [pc, #0x1fc]
0039fd44  1c d0 4d e2                                      sub sp, sp, #0x1c
0039fd48  01 00 56 e3                                      cmp r6, #1
0039fd4c  00 40 a0 e1                                      mov r4, r0
0039fd50  01 50 a0 e1                                      mov r5, r1
0039fd54  07 70 8f e0                                      add r7, pc, r7
0039fd58  09 00 00 0a                                      beq #0x39fd84
0039fd5c  00 00 55 e3                                      cmp r5, #0
0039fd60  05 00 00 0a                                      beq #0x39fd7c
0039fd64  94 33 94 e5                                      ldr r3, [r4, #0x394]
0039fd68  03 30 43 e2                                      sub r3, r3, #3
0039fd6c  01 00 53 e3                                      cmp r3, #1
0039fd70  3e 00 00 9a                                      bls #0x39fe70
0039fd74  e8 36 94 e5                                      ldr r3, [r4, #0x6e8]
0039fd78  fc 30 84 e5                                      str r3, [r4, #0xfc]
0039fd7c  1c d0 8d e2                                      add sp, sp, #0x1c
0039fd80  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0039fd84  94 33 90 e5                                      ldr r3, [r0, #0x394]
0039fd88  03 30 43 e2                                      sub r3, r3, #3
0039fd8c  01 00 53 e3                                      cmp r3, #1
0039fd90  f1 ff ff 9a                                      bls #0x39fd5c
0039fd94  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
0039fd98  0c 60 8d e2                                      add r6, sp, #0xc
0039fd9c  c0 26 90 e5                                      ldr r2, [r0, #0x6c0]
0039fda0  03 30 97 e7                                      ldr r3, [r7, r3]
0039fda4  06 00 a0 e1                                      mov r0, r6
0039fda8  38 10 93 e5                                      ldr r1, [r3, #0x38]
0039fdac  7b 82 fe eb                                      bl #0x3407a0
0039fdb0  06 00 a0 e1                                      mov r0, r6
0039fdb4  4a 80 fe eb                                      bl #0x33fee4
0039fdb8  00 10 50 e2                                      subs r1, r0, #0
0039fdbc  01 00 00 0a                                      beq #0x39fdc8
0039fdc0  00 00 55 e3                                      cmp r5, #0
0039fdc4  24 00 00 0a                                      beq #0x39fe5c
0039fdc8  94 33 94 e5                                      ldr r3, [r4, #0x394]
0039fdcc  03 30 43 e2                                      sub r3, r3, #3
0039fdd0  01 00 53 e3                                      cmp r3, #1
0039fdd4  1d 00 00 9a                                      bls #0x39fe50
0039fdd8  98 13 84 e5                                      str r1, [r4, #0x398]
0039fddc  04 00 a0 e1                                      mov r0, r4
0039fde0  04 10 a0 e3                                      mov r1, #4
0039fde4  78 fd ff eb                                      bl #0x39f3cc
0039fde8  00 30 94 e5                                      ldr r3, [r4]
0039fdec  04 00 a0 e1                                      mov r0, r4
0039fdf0  0f e0 a0 e1                                      mov lr, pc
0039fdf4  dc f0 93 e5                                      ldr pc, [r3, #0xdc]
0039fdf8  00 10 50 e2                                      subs r1, r0, #0
0039fdfc  4c 00 00 0a                                      beq #0x39ff34
0039fe00  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
0039fe04  00 00 53 e3                                      cmp r3, #0
0039fe08  10 00 00 0a                                      beq #0x39fe50
0039fe0c  00 00 55 e3                                      cmp r5, #0
0039fe10  38 00 00 0a                                      beq #0x39fef8
0039fe14  04 00 a0 e1                                      mov r0, r4
0039fe18  04 10 a0 e3                                      mov r1, #4
0039fe1c  6a fd ff eb                                      bl #0x39f3cc
0039fe20  d8 22 94 e5                                      ldr r2, [r4, #0x2d8]
0039fe24  20 11 9f e5                                      ldr r1, [pc, #0x120]
0039fe28  00 30 a0 e3                                      mov r3, #0
0039fe2c  38 c0 92 e5                                      ldr ip, [r2, #0x38]
0039fe30  01 10 8f e0                                      add r1, pc, r1
0039fe34  03 20 a0 e1                                      mov r2, r3
0039fe38  0c 00 a0 e1                                      mov r0, ip
0039fe3c  00 c0 9c e5                                      ldr ip, [ip]
0039fe40  00 30 8d e5                                      str r3, [sp]
0039fe44  0f e0 a0 e1                                      mov lr, pc
0039fe48  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039fe4c  c8 ff ff ea                                      b #0x39fd74
0039fe50  00 00 55 e3                                      cmp r5, #0
0039fe54  c6 ff ff 1a                                      bne #0x39fd74
0039fe58  c7 ff ff ea                                      b #0x39fd7c
0039fe5c  04 00 a0 e1                                      mov r0, r4
0039fe60  00 30 94 e5                                      ldr r3, [r4]
0039fe64  0f e0 a0 e1                                      mov lr, pc
0039fe68  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0039fe6c  c2 ff ff ea                                      b #0x39fd7c
0039fe70  00 00 56 e3                                      cmp r6, #0
0039fe74  be ff ff 1a                                      bne #0x39fd74
0039fe78  04 00 a0 e1                                      mov r0, r4
0039fe7c  02 10 a0 e3                                      mov r1, #2
0039fe80  51 fd ff eb                                      bl #0x39f3cc
0039fe84  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
0039fe88  06 10 a0 e1                                      mov r1, r6
0039fe8c  28 00 a0 e3                                      mov r0, #0x28
0039fe90  03 30 97 e7                                      ldr r3, [r7, r3]
0039fe94  44 70 93 e5                                      ldr r7, [r3, #0x44]
0039fe98  b4 c1 fd eb                                      bl #0x310570
0039fe9c  07 10 a0 e1                                      mov r1, r7
0039fea0  00 50 a0 e1                                      mov r5, r0
0039fea4  04 20 a0 e1                                      mov r2, r4
0039fea8  5f ff ff eb                                      bl #0x39fc2c
0039feac  06 20 a0 e1                                      mov r2, r6
0039feb0  04 00 a0 e1                                      mov r0, r4
0039feb4  05 10 a0 e1                                      mov r1, r5
0039feb8  4e d3 ff eb                                      bl #0x394bf8
0039febc  04 00 a0 e1                                      mov r0, r4
0039fec0  02 10 a0 e3                                      mov r1, #2
0039fec4  40 fd ff eb                                      bl #0x39f3cc
0039fec8  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
0039fecc  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0039fed0  06 20 a0 e1                                      mov r2, r6
0039fed4  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0039fed8  01 10 8f e0                                      add r1, pc, r1
0039fedc  06 30 a0 e1                                      mov r3, r6
0039fee0  0c 00 a0 e1                                      mov r0, ip
0039fee4  00 c0 9c e5                                      ldr ip, [ip]
0039fee8  00 60 8d e5                                      str r6, [sp]
0039feec  0f e0 a0 e1                                      mov lr, pc
0039fef0  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039fef4  9e ff ff ea                                      b #0x39fd74
0039fef8  04 00 a0 e1                                      mov r0, r4
0039fefc  03 10 a0 e3                                      mov r1, #3
0039ff00  31 fd ff eb                                      bl #0x39f3cc
0039ff04  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
0039ff08  44 10 9f e5                                      ldr r1, [pc, #0x44]
0039ff0c  05 20 a0 e1                                      mov r2, r5
0039ff10  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0039ff14  01 10 8f e0                                      add r1, pc, r1
0039ff18  05 30 a0 e1                                      mov r3, r5
0039ff1c  0c 00 a0 e1                                      mov r0, ip
0039ff20  00 c0 9c e5                                      ldr ip, [ip]
0039ff24  00 50 8d e5                                      str r5, [sp]
0039ff28  0f e0 a0 e1                                      mov lr, pc
0039ff2c  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039ff30  91 ff ff ea                                      b #0x39fd7c
0039ff34  04 00 a0 e1                                      mov r0, r4
0039ff38  01 20 a0 e1                                      mov r2, r1
0039ff3c  2d d3 ff eb                                      bl #0x394bf8
0039ff40  ae ff ff ea                                      b #0x39fe00
; mapping-symbol data/literal pool
0039ff44  3c 4d 5f 00 f4 37 00 00 98 2c 52 00 d8 23 52 00  .byte 0x3c, 0x4d, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x98, 0x2c, 0x52, 0x00, 0xd8, 0x23, 0x52, 0x00
0039ff54  c4 2b 52 00                                      .byte 0xc4, 0x2b, 0x52, 0x00

; FUNCTION 0x003a0110, declared_size=532, range_size=532, mode=arm
; class-group: Container
; alias: _ZN9Container25PopulateOutgoingNetStructEb
; demangled: Container::PopulateOutgoingNetStruct(bool)
; decoder-mode: arm
003a0110  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003a0114  e8 41 9f e5                                      ldr r4, [pc, #0x1e8]
003a0118  e8 61 9f e5                                      ldr r6, [pc, #0x1e8]
003a011c  94 33 90 e5                                      ldr r3, [r0, #0x394]
003a0120  7c d0 4d e2                                      sub sp, sp, #0x7c
003a0124  04 40 8f e0                                      add r4, pc, r4
003a0128  70 20 9d e5                                      ldr r2, [sp, #0x70]
003a012c  06 c0 94 e7                                      ldr ip, [r4, r6]
003a0130  03 30 43 e2                                      sub r3, r3, #3
003a0134  01 00 53 e3                                      cmp r3, #1
003a0138  00 30 a0 83                                      movhi r3, #0
003a013c  01 30 a0 93                                      movls r3, #1
003a0140  03 00 52 e1                                      cmp r2, r3
003a0144  00 80 a0 e3                                      mov r8, #0
003a0148  00 20 a0 e3                                      mov r2, #0
003a014c  00 50 a0 e1                                      mov r5, r0
003a0150  08 c0 8c e2                                      add ip, ip, #8
003a0154  00 00 e0 e3                                      mvn r0, #0
003a0158  01 e0 a0 e3                                      mov lr, #1
003a015c  00 90 a0 e3                                      mov sb, #0
003a0160  f8 85 cd e1                                      strd r8, sb, [sp, #0x58]
003a0164  54 e0 8d e5                                      str lr, [sp, #0x54]
003a0168  64 00 8d e5                                      str r0, [sp, #0x64]
003a016c  6c 20 cd e5                                      strb r2, [sp, #0x6c]
003a0170  50 c0 8d e5                                      str ip, [sp, #0x50]
003a0174  01 80 a0 e1                                      mov r8, r1
003a0178  60 00 8d e5                                      str r0, [sp, #0x60]
003a017c  68 20 8d e5                                      str r2, [sp, #0x68]
003a0180  50 70 8d 02                                      addeq r7, sp, #0x50
003a0184  03 00 00 0a                                      beq #0x3a0198
003a0188  50 70 8d e2                                      add r7, sp, #0x50
003a018c  07 00 a0 e1                                      mov r0, r7
003a0190  70 30 8d e5                                      str r3, [sp, #0x70]
003a0194  7a d3 11 eb                                      bl #0x814f84
003a0198  6c 21 9f e5                                      ldr r2, [pc, #0x16c]
003a019c  20 10 87 e2                                      add r1, r7, #0x20
003a01a0  d0 34 95 e5                                      ldr r3, [r5, #0x4d0]
003a01a4  02 20 94 e7                                      ldr r2, [r4, r2]
003a01a8  4d 0e 85 e2                                      add r0, r5, #0x4d0
003a01ac  5c 71 9f e5                                      ldr r7, [pc, #0x15c]
003a01b0  08 20 82 e2                                      add r2, r2, #8
003a01b4  50 20 8d e5                                      str r2, [sp, #0x50]
003a01b8  0f e0 a0 e1                                      mov lr, pc
003a01bc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003a01c0  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
003a01c4  07 20 94 e7                                      ldr r2, [r4, r7]
003a01c8  98 13 95 e5                                      ldr r1, [r5, #0x398]
003a01cc  03 30 94 e7                                      ldr r3, [r4, r3]
003a01d0  08 20 82 e2                                      add r2, r2, #8
003a01d4  50 20 8d e5                                      str r2, [sp, #0x50]
003a01d8  38 00 93 e5                                      ldr r0, [r3, #0x38]
003a01dc  44 80 fe eb                                      bl #0x3402f4
003a01e0  30 21 9f e5                                      ldr r2, [pc, #0x130]
003a01e4  48 10 9d e5                                      ldr r1, [sp, #0x48]
003a01e8  00 30 a0 e1                                      mov r3, r0
003a01ec  02 20 94 e7                                      ldr r2, [r4, r2]
003a01f0  00 00 e0 e3                                      mvn r0, #0
003a01f4  01 00 53 e1                                      cmp r3, r1
003a01f8  00 a0 a0 e3                                      mov sl, #0
003a01fc  00 10 a0 e3                                      mov r1, #0
003a0200  08 20 82 e2                                      add r2, r2, #8
003a0204  10 c0 a0 e3                                      mov ip, #0x10
003a0208  00 b0 a0 e3                                      mov fp, #0
003a020c  f0 a3 cd e1                                      strd sl, fp, [sp, #0x30]
003a0210  2c c0 8d e5                                      str ip, [sp, #0x2c]
003a0214  3c 00 8d e5                                      str r0, [sp, #0x3c]
003a0218  44 10 cd e5                                      strb r1, [sp, #0x44]
003a021c  28 20 8d e5                                      str r2, [sp, #0x28]
003a0220  38 00 8d e5                                      str r0, [sp, #0x38]
003a0224  40 10 8d e5                                      str r1, [sp, #0x40]
003a0228  28 a0 8d 02                                      addeq sl, sp, #0x28
003a022c  03 00 00 0a                                      beq #0x3a0240
003a0230  28 a0 8d e2                                      add sl, sp, #0x28
003a0234  0a 00 a0 e1                                      mov r0, sl
003a0238  48 30 8d e5                                      str r3, [sp, #0x48]
003a023c  50 d3 11 eb                                      bl #0x814f84
003a0240  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
003a0244  4f 0e 85 e2                                      add r0, r5, #0x4f0
003a0248  f8 34 95 e5                                      ldr r3, [r5, #0x4f8]
003a024c  02 20 94 e7                                      ldr r2, [r4, r2]
003a0250  08 00 80 e2                                      add r0, r0, #8
003a0254  20 10 8a e2                                      add r1, sl, #0x20
003a0258  08 20 82 e2                                      add r2, r2, #8
003a025c  28 20 8d e5                                      str r2, [sp, #0x28]
003a0260  0f e0 a0 e1                                      mov lr, pc
003a0264  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003a0268  00 00 58 e3                                      cmp r8, #0
003a026c  22 00 00 0a                                      beq #0x3a02fc
003a0270  07 c0 94 e7                                      ldr ip, [r4, r7]
003a0274  fc 30 95 e5                                      ldr r3, [r5, #0xfc]
003a0278  06 00 94 e7                                      ldr r0, [r4, r6]
003a027c  20 20 9d e5                                      ldr r2, [sp, #0x20]
003a0280  08 c0 8c e2                                      add ip, ip, #8
003a0284  00 10 e0 e3                                      mvn r1, #0
003a0288  02 00 53 e1                                      cmp r3, r2
003a028c  00 60 a0 e3                                      mov r6, #0
003a0290  00 20 a0 e3                                      mov r2, #0
003a0294  08 00 80 e2                                      add r0, r0, #8
003a0298  28 c0 8d e5                                      str ip, [sp, #0x28]
003a029c  00 70 a0 e3                                      mov r7, #0
003a02a0  20 c0 a0 e3                                      mov ip, #0x20
003a02a4  f8 60 cd e1                                      strd r6, r7, [sp, #8]
003a02a8  04 c0 8d e5                                      str ip, [sp, #4]
003a02ac  14 10 8d e5                                      str r1, [sp, #0x14]
003a02b0  1c 20 cd e5                                      strb r2, [sp, #0x1c]
003a02b4  00 00 8d e5                                      str r0, [sp]
003a02b8  10 10 8d e5                                      str r1, [sp, #0x10]
003a02bc  18 20 8d e5                                      str r2, [sp, #0x18]
003a02c0  0d 60 a0 01                                      moveq r6, sp
003a02c4  03 00 00 0a                                      beq #0x3a02d8
003a02c8  0d 00 a0 e1                                      mov r0, sp
003a02cc  0d 60 a0 e1                                      mov r6, sp
003a02d0  20 30 8d e5                                      str r3, [sp, #0x20]
003a02d4  2a d3 11 eb                                      bl #0x814f84
003a02d8  40 20 9f e5                                      ldr r2, [pc, #0x40]
003a02dc  20 35 95 e5                                      ldr r3, [r5, #0x520]
003a02e0  52 0e 85 e2                                      add r0, r5, #0x520
003a02e4  02 20 94 e7                                      ldr r2, [r4, r2]
003a02e8  20 10 86 e2                                      add r1, r6, #0x20
003a02ec  08 20 82 e2                                      add r2, r2, #8
003a02f0  00 20 8d e5                                      str r2, [sp]
003a02f4  0f e0 a0 e1                                      mov lr, pc
003a02f8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003a02fc  7c d0 8d e2                                      add sp, sp, #0x7c
003a0300  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003a0304  6c 49 5f 00 68 40 00 00 f4 3a 00 00 a8 10 00 00  .byte 0x6c, 0x49, 0x5f, 0x00, 0x68, 0x40, 0x00, 0x00, 0xf4, 0x3a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
003a0314  f4 37 00 00 84 29 00 00 3c 35 00 00 f0 39 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00, 0xf0, 0x39, 0x00, 0x00

; FUNCTION 0x003a0428, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZThn36_N9ContainerD1Ev
; demangled: non-virtual thunk to Container::~Container()
; decoder-mode: arm
003a0428  24 00 40 e2                                      sub r0, r0, #0x24
003a042c  ff ff ff ea                                      b #0x3a0430

; FUNCTION 0x003a0430, declared_size=324, range_size=324, mode=arm
; class-group: Container
; alias: _ZN9ContainerD1Ev
; demangled: Container::~Container()
; decoder-mode: arm
003a0430  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003a0434  28 51 9f e5                                      ldr r5, [pc, #0x128]
003a0438  28 31 9f e5                                      ldr r3, [pc, #0x128]
003a043c  28 71 9f e5                                      ldr r7, [pc, #0x128]
003a0440  28 81 9f e5                                      ldr r8, [pc, #0x128]
003a0444  05 50 8f e0                                      add r5, pc, r5
003a0448  03 30 95 e7                                      ldr r3, [r5, r3]
003a044c  07 10 95 e7                                      ldr r1, [r5, r7]
003a0450  08 20 95 e7                                      ldr r2, [r5, r8]
003a0454  00 40 a0 e1                                      mov r4, r0
003a0458  08 10 81 e2                                      add r1, r1, #8
003a045c  01 0c 83 e2                                      add r0, r3, #0x100
003a0460  08 c0 83 e2                                      add ip, r3, #8
003a0464  08 20 82 e2                                      add r2, r2, #8
003a0468  f4 30 83 e2                                      add r3, r3, #0xf4
003a046c  15 ad 84 e2                                      add sl, r4, #0x540
003a0470  00 c0 84 e5                                      str ip, [r4]
003a0474  04 30 84 e5                                      str r3, [r4, #4]
003a0478  24 00 84 e5                                      str r0, [r4, #0x24]
003a047c  78 16 84 e5                                      str r1, [r4, #0x678]
003a0480  48 25 84 e5                                      str r2, [r4, #0x548]
003a0484  c8 16 84 e5                                      str r1, [r4, #0x6c8]
003a0488  a0 16 84 e5                                      str r1, [r4, #0x6a0]
003a048c  08 60 8a e2                                      add r6, sl, #8
003a0490  1c 31 96 e5                                      ldr r3, [r6, #0x11c]
003a0494  00 00 53 e3                                      cmp r3, #0
003a0498  08 00 00 0a                                      beq #0x3a04c0
003a049c  45 af 8a e2                                      add sl, sl, #0x114
003a04a0  0a 00 a0 e1                                      mov r0, sl
003a04a4  10 11 96 e5                                      ldr r1, [r6, #0x110]
003a04a8  c8 42 ff eb                                      bl #0x370fd0
003a04ac  00 30 a0 e3                                      mov r3, #0
003a04b0  1c 31 86 e5                                      str r3, [r6, #0x11c]
003a04b4  18 a1 86 e5                                      str sl, [r6, #0x118]
003a04b8  14 a1 86 e5                                      str sl, [r6, #0x114]
003a04bc  10 31 86 e5                                      str r3, [r6, #0x110]
003a04c0  08 20 95 e7                                      ldr r2, [r5, r8]
003a04c4  07 30 95 e7                                      ldr r3, [r5, r7]
003a04c8  bc 14 94 e5                                      ldr r1, [r4, #0x4bc]
003a04cc  08 20 82 e2                                      add r2, r2, #8
003a04d0  08 30 83 e2                                      add r3, r3, #8
003a04d4  00 00 51 e3                                      cmp r1, #0
003a04d8  d0 34 84 e5                                      str r3, [r4, #0x4d0]
003a04dc  a0 23 84 e5                                      str r2, [r4, #0x3a0]
003a04e0  20 35 84 e5                                      str r3, [r4, #0x520]
003a04e4  f8 34 84 e5                                      str r3, [r4, #0x4f8]
003a04e8  3a 5e 84 e2                                      add r5, r4, #0x3a0
003a04ec  08 00 00 0a                                      beq #0x3a0514
003a04f0  43 6f 85 e2                                      add r6, r5, #0x10c
003a04f4  06 00 a0 e1                                      mov r0, r6
003a04f8  10 11 95 e5                                      ldr r1, [r5, #0x110]
003a04fc  b3 42 ff eb                                      bl #0x370fd0
003a0500  00 30 a0 e3                                      mov r3, #0
003a0504  b4 64 84 e5                                      str r6, [r4, #0x4b4]
003a0508  10 31 85 e5                                      str r3, [r5, #0x110]
003a050c  b8 64 84 e5                                      str r6, [r4, #0x4b8]
003a0510  bc 34 84 e5                                      str r3, [r4, #0x4bc]
003a0514  de 3f 84 e2                                      add r3, r4, #0x378
003a0518  14 00 93 e5                                      ldr r0, [r3, #0x14]
003a051c  03 00 50 e1                                      cmp r0, r3
003a0520  06 00 00 0a                                      beq #0x3a0540
003a0524  00 00 50 e3                                      cmp r0, #0
003a0528  04 00 00 0a                                      beq #0x3a0540
003a052c  78 13 94 e5                                      ldr r1, [r4, #0x378]
003a0530  01 10 60 e0                                      rsb r1, r0, r1
003a0534  80 00 51 e3                                      cmp r1, #0x80
003a0538  04 00 00 8a                                      bhi #0x3a0550
003a053c  6f a2 0d eb                                      bl #0x708f00
003a0540  04 00 a0 e1                                      mov r0, r4
003a0544  8b b3 ff eb                                      bl #0x38d378
003a0548  04 00 a0 e1                                      mov r0, r4
003a054c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003a0550  ba bf fd eb                                      bl #0x310440
003a0554  04 00 a0 e1                                      mov r0, r4
003a0558  86 b3 ff eb                                      bl #0x38d378
003a055c  04 00 a0 e1                                      mov r0, r4
003a0560  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
003a0564  4c 46 5f 00 d4 2c 00 00 a8 10 00 00 c4 43 00 00  .byte 0x4c, 0x46, 0x5f, 0x00, 0xd4, 0x2c, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x003a0574, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZThn36_N9ContainerD0Ev
; demangled: non-virtual thunk to Container::~Container()
; decoder-mode: arm
003a0574  24 00 40 e2                                      sub r0, r0, #0x24
003a0578  ff ff ff ea                                      b #0x3a057c

; FUNCTION 0x003a057c, declared_size=28, range_size=28, mode=arm
; class-group: Container
; alias: _ZN9ContainerD0Ev
; demangled: Container::~Container()
; decoder-mode: arm
003a057c  10 40 2d e9                                      push {r4, lr}
003a0580  00 40 a0 e1                                      mov r4, r0
003a0584  a9 ff ff eb                                      bl #0x3a0430
003a0588  04 00 a0 e1                                      mov r0, r4
003a058c  ab bf fd eb                                      bl #0x310440
003a0590  04 00 a0 e1                                      mov r0, r4
003a0594  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003a0598, declared_size=324, range_size=324, mode=arm
; class-group: Container
; alias: _ZN9ContainerD2Ev
; demangled: Container::~Container()
; decoder-mode: arm
003a0598  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003a059c  28 51 9f e5                                      ldr r5, [pc, #0x128]
003a05a0  28 31 9f e5                                      ldr r3, [pc, #0x128]
003a05a4  28 71 9f e5                                      ldr r7, [pc, #0x128]
003a05a8  28 81 9f e5                                      ldr r8, [pc, #0x128]
003a05ac  05 50 8f e0                                      add r5, pc, r5
003a05b0  03 30 95 e7                                      ldr r3, [r5, r3]
003a05b4  07 10 95 e7                                      ldr r1, [r5, r7]
003a05b8  08 20 95 e7                                      ldr r2, [r5, r8]
003a05bc  00 40 a0 e1                                      mov r4, r0
003a05c0  08 10 81 e2                                      add r1, r1, #8
003a05c4  01 0c 83 e2                                      add r0, r3, #0x100
003a05c8  08 c0 83 e2                                      add ip, r3, #8
003a05cc  08 20 82 e2                                      add r2, r2, #8
003a05d0  f4 30 83 e2                                      add r3, r3, #0xf4
003a05d4  15 ad 84 e2                                      add sl, r4, #0x540
003a05d8  00 c0 84 e5                                      str ip, [r4]
003a05dc  04 30 84 e5                                      str r3, [r4, #4]
003a05e0  24 00 84 e5                                      str r0, [r4, #0x24]
003a05e4  78 16 84 e5                                      str r1, [r4, #0x678]
003a05e8  48 25 84 e5                                      str r2, [r4, #0x548]
003a05ec  c8 16 84 e5                                      str r1, [r4, #0x6c8]
003a05f0  a0 16 84 e5                                      str r1, [r4, #0x6a0]
003a05f4  08 60 8a e2                                      add r6, sl, #8
003a05f8  1c 31 96 e5                                      ldr r3, [r6, #0x11c]
003a05fc  00 00 53 e3                                      cmp r3, #0
003a0600  08 00 00 0a                                      beq #0x3a0628
003a0604  45 af 8a e2                                      add sl, sl, #0x114
003a0608  0a 00 a0 e1                                      mov r0, sl
003a060c  10 11 96 e5                                      ldr r1, [r6, #0x110]
003a0610  6e 42 ff eb                                      bl #0x370fd0
003a0614  00 30 a0 e3                                      mov r3, #0
003a0618  1c 31 86 e5                                      str r3, [r6, #0x11c]
003a061c  18 a1 86 e5                                      str sl, [r6, #0x118]
003a0620  14 a1 86 e5                                      str sl, [r6, #0x114]
003a0624  10 31 86 e5                                      str r3, [r6, #0x110]
003a0628  08 20 95 e7                                      ldr r2, [r5, r8]
003a062c  07 30 95 e7                                      ldr r3, [r5, r7]
003a0630  bc 14 94 e5                                      ldr r1, [r4, #0x4bc]
003a0634  08 20 82 e2                                      add r2, r2, #8
003a0638  08 30 83 e2                                      add r3, r3, #8
003a063c  00 00 51 e3                                      cmp r1, #0
003a0640  d0 34 84 e5                                      str r3, [r4, #0x4d0]
003a0644  a0 23 84 e5                                      str r2, [r4, #0x3a0]
003a0648  20 35 84 e5                                      str r3, [r4, #0x520]
003a064c  f8 34 84 e5                                      str r3, [r4, #0x4f8]
003a0650  3a 5e 84 e2                                      add r5, r4, #0x3a0
003a0654  08 00 00 0a                                      beq #0x3a067c
003a0658  43 6f 85 e2                                      add r6, r5, #0x10c
003a065c  06 00 a0 e1                                      mov r0, r6
003a0660  10 11 95 e5                                      ldr r1, [r5, #0x110]
003a0664  59 42 ff eb                                      bl #0x370fd0
003a0668  00 30 a0 e3                                      mov r3, #0
003a066c  b4 64 84 e5                                      str r6, [r4, #0x4b4]
003a0670  10 31 85 e5                                      str r3, [r5, #0x110]
003a0674  b8 64 84 e5                                      str r6, [r4, #0x4b8]
003a0678  bc 34 84 e5                                      str r3, [r4, #0x4bc]
003a067c  de 3f 84 e2                                      add r3, r4, #0x378
003a0680  14 00 93 e5                                      ldr r0, [r3, #0x14]
003a0684  03 00 50 e1                                      cmp r0, r3
003a0688  06 00 00 0a                                      beq #0x3a06a8
003a068c  00 00 50 e3                                      cmp r0, #0
003a0690  04 00 00 0a                                      beq #0x3a06a8
003a0694  78 13 94 e5                                      ldr r1, [r4, #0x378]
003a0698  01 10 60 e0                                      rsb r1, r0, r1
003a069c  80 00 51 e3                                      cmp r1, #0x80
003a06a0  04 00 00 8a                                      bhi #0x3a06b8
003a06a4  15 a2 0d eb                                      bl #0x708f00
003a06a8  04 00 a0 e1                                      mov r0, r4
003a06ac  31 b3 ff eb                                      bl #0x38d378
003a06b0  04 00 a0 e1                                      mov r0, r4
003a06b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003a06b8  60 bf fd eb                                      bl #0x310440
003a06bc  04 00 a0 e1                                      mov r0, r4
003a06c0  2c b3 ff eb                                      bl #0x38d378
003a06c4  04 00 a0 e1                                      mov r0, r4
003a06c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
003a06cc  e4 44 5f 00 d4 2c 00 00 a8 10 00 00 c4 43 00 00  .byte 0xe4, 0x44, 0x5f, 0x00, 0xd4, 0x2c, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x003a06dc, declared_size=172, range_size=172, mode=arm
; class-group: Container
; alias: _ZN9ContainerC1EN10ObjectBase6GO_IDSE
; demangled: Container::Container(ObjectBase::GO_IDS)
; decoder-mode: arm
003a06dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003a06e0  98 50 9f e5                                      ldr r5, [pc, #0x98]
003a06e4  00 40 a0 e1                                      mov r4, r0
003a06e8  2a af ff eb                                      bl #0x38c398
003a06ec  90 30 9f e5                                      ldr r3, [pc, #0x90]
003a06f0  05 50 8f e0                                      add r5, pc, r5
003a06f4  de 2f 84 e2                                      add r2, r4, #0x378
003a06f8  03 30 95 e7                                      ldr r3, [r5, r3]
003a06fc  02 00 a0 e1                                      mov r0, r2
003a0700  88 23 84 e5                                      str r2, [r4, #0x388]
003a0704  08 c0 83 e2                                      add ip, r3, #8
003a0708  01 1c 83 e2                                      add r1, r3, #0x100
003a070c  f4 30 83 e2                                      add r3, r3, #0xf4
003a0710  00 c0 84 e5                                      str ip, [r4]
003a0714  8c 23 84 e5                                      str r2, [r4, #0x38c]
003a0718  04 30 84 e5                                      str r3, [r4, #4]
003a071c  24 10 84 e5                                      str r1, [r4, #0x24]
003a0720  10 10 a0 e3                                      mov r1, #0x10
003a0724  d4 c3 fd eb                                      bl #0x31167c
003a0728  88 33 94 e5                                      ldr r3, [r4, #0x388]
003a072c  00 60 a0 e3                                      mov r6, #0
003a0730  02 70 a0 e3                                      mov r7, #2
003a0734  3a 8e 84 e2                                      add r8, r4, #0x3a0
003a0738  15 5d 84 e2                                      add r5, r4, #0x540
003a073c  00 60 c3 e5                                      strb r6, [r3]
003a0740  08 50 85 e2                                      add r5, r5, #8
003a0744  90 63 c4 e5                                      strb r6, [r4, #0x390]
003a0748  94 73 84 e5                                      str r7, [r4, #0x394]
003a074c  98 63 84 e5                                      str r6, [r4, #0x398]
003a0750  08 00 a0 e1                                      mov r0, r8
003a0754  ff fd ff eb                                      bl #0x39ff58
003a0758  05 00 a0 e1                                      mov r0, r5
003a075c  fd fd ff eb                                      bl #0x39ff58
003a0760  01 30 a0 e3                                      mov r3, #1
003a0764  28 30 c4 e5                                      strb r3, [r4, #0x28]
003a0768  84 60 c4 e5                                      strb r6, [r4, #0x84]
003a076c  00 81 84 e5                                      str r8, [r4, #0x100]
003a0770  04 51 84 e5                                      str r5, [r4, #0x104]
003a0774  f8 70 c4 e5                                      strb r7, [r4, #0xf8]
003a0778  04 00 a0 e1                                      mov r0, r4
003a077c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003a0780  a0 43 5f 00 d4 2c 00 00                          .byte 0xa0, 0x43, 0x5f, 0x00, 0xd4, 0x2c, 0x00, 0x00

; FUNCTION 0x003a0788, declared_size=172, range_size=172, mode=arm
; class-group: Container
; alias: _ZN9ContainerC2EN10ObjectBase6GO_IDSE
; demangled: Container::Container(ObjectBase::GO_IDS)
; decoder-mode: arm
003a0788  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003a078c  98 50 9f e5                                      ldr r5, [pc, #0x98]
003a0790  00 40 a0 e1                                      mov r4, r0
003a0794  ff ae ff eb                                      bl #0x38c398
003a0798  90 30 9f e5                                      ldr r3, [pc, #0x90]
003a079c  05 50 8f e0                                      add r5, pc, r5
003a07a0  de 2f 84 e2                                      add r2, r4, #0x378
003a07a4  03 30 95 e7                                      ldr r3, [r5, r3]
003a07a8  02 00 a0 e1                                      mov r0, r2
003a07ac  88 23 84 e5                                      str r2, [r4, #0x388]
003a07b0  08 c0 83 e2                                      add ip, r3, #8
003a07b4  01 1c 83 e2                                      add r1, r3, #0x100
003a07b8  f4 30 83 e2                                      add r3, r3, #0xf4
003a07bc  00 c0 84 e5                                      str ip, [r4]
003a07c0  8c 23 84 e5                                      str r2, [r4, #0x38c]
003a07c4  04 30 84 e5                                      str r3, [r4, #4]
003a07c8  24 10 84 e5                                      str r1, [r4, #0x24]
003a07cc  10 10 a0 e3                                      mov r1, #0x10
003a07d0  a9 c3 fd eb                                      bl #0x31167c
003a07d4  88 33 94 e5                                      ldr r3, [r4, #0x388]
003a07d8  00 60 a0 e3                                      mov r6, #0
003a07dc  02 70 a0 e3                                      mov r7, #2
003a07e0  3a 8e 84 e2                                      add r8, r4, #0x3a0
003a07e4  15 5d 84 e2                                      add r5, r4, #0x540
003a07e8  00 60 c3 e5                                      strb r6, [r3]
003a07ec  08 50 85 e2                                      add r5, r5, #8
003a07f0  90 63 c4 e5                                      strb r6, [r4, #0x390]
003a07f4  94 73 84 e5                                      str r7, [r4, #0x394]
003a07f8  98 63 84 e5                                      str r6, [r4, #0x398]
003a07fc  08 00 a0 e1                                      mov r0, r8
003a0800  d4 fd ff eb                                      bl #0x39ff58
003a0804  05 00 a0 e1                                      mov r0, r5
003a0808  d2 fd ff eb                                      bl #0x39ff58
003a080c  01 30 a0 e3                                      mov r3, #1
003a0810  28 30 c4 e5                                      strb r3, [r4, #0x28]
003a0814  84 60 c4 e5                                      strb r6, [r4, #0x84]
003a0818  00 81 84 e5                                      str r8, [r4, #0x100]
003a081c  04 51 84 e5                                      str r5, [r4, #0x104]
003a0820  f8 70 c4 e5                                      strb r7, [r4, #0xf8]
003a0824  04 00 a0 e1                                      mov r0, r4
003a0828  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003a082c  f4 42 5f 00 d4 2c 00 00                          .byte 0xf4, 0x42, 0x5f, 0x00, 0xd4, 0x2c, 0x00, 0x00

; FUNCTION 0x003a0834, declared_size=8, range_size=8, mode=arm
; class-group: Container
; alias: _ZThn4_N9Container17DeclarePropertiesEv
; demangled: non-virtual thunk to Container::DeclareProperties()
; decoder-mode: arm
003a0834  04 00 40 e2                                      sub r0, r0, #4
003a0838  ff ff ff ea                                      b #0x3a083c

; FUNCTION 0x003a083c, declared_size=604, range_size=604, mode=arm
; class-group: Container
; alias: _ZN9Container17DeclarePropertiesEv
; demangled: Container::DeclareProperties()
; decoder-mode: arm
003a083c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003a0840  2c 42 9f e5                                      ldr r4, [pc, #0x22c]
003a0844  2c 22 9f e5                                      ldr r2, [pc, #0x22c]
003a0848  2c 32 9f e5                                      ldr r3, [pc, #0x22c]
003a084c  4c d0 4d e2                                      sub sp, sp, #0x4c
003a0850  04 40 8f e0                                      add r4, pc, r4
003a0854  00 30 8d e5                                      str r3, [sp]
003a0858  02 30 94 e7                                      ldr r3, [r4, r2]
003a085c  04 50 80 e2                                      add r5, r0, #4
003a0860  00 90 a0 e1                                      mov sb, r0
003a0864  00 30 93 e5                                      ldr r3, [r3]
003a0868  04 20 8d e5                                      str r2, [sp, #4]
003a086c  0c 72 9f e5                                      ldr r7, [pc, #0x20c]
003a0870  44 30 8d e5                                      str r3, [sp, #0x44]
003a0874  9b b1 ff eb                                      bl #0x38cee8
003a0878  00 10 a0 e3                                      mov r1, #0
003a087c  24 00 a0 e3                                      mov r0, #0x24
003a0880  3a bf fd eb                                      bl #0x310570
003a0884  00 20 9d e5                                      ldr r2, [sp]
003a0888  07 70 8f e0                                      add r7, pc, r7
003a088c  00 60 a0 e1                                      mov r6, r0
003a0890  02 b0 94 e7                                      ldr fp, [r4, r2]
003a0894  07 10 a0 e1                                      mov r1, r7
003a0898  10 20 8d e2                                      add r2, sp, #0x10
003a089c  08 b0 8b e2                                      add fp, fp, #8
003a08a0  08 b0 80 e4                                      str fp, [r0], #8
003a08a4  10 ce fd eb                                      bl #0x3140ec
003a08a8  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
003a08ac  dd 2f 89 e2                                      add r2, sb, #0x374
003a08b0  02 20 65 e0                                      rsb r2, r5, r2
003a08b4  03 30 94 e7                                      ldr r3, [r4, r3]
003a08b8  04 20 86 e5                                      str r2, [r6, #4]
003a08bc  07 10 a0 e1                                      mov r1, r7
003a08c0  08 30 83 e2                                      add r3, r3, #8
003a08c4  00 30 86 e5                                      str r3, [r6]
003a08c8  00 30 e0 e3                                      mvn r3, #0
003a08cc  20 30 86 e5                                      str r3, [r6, #0x20]
003a08d0  06 20 a0 e1                                      mov r2, r6
003a08d4  2c 70 8d e2                                      add r7, sp, #0x2c
003a08d8  05 00 a0 e1                                      mov r0, r5
003a08dc  00 cd 05 eb                                      bl #0x513ce4
003a08e0  07 00 a0 e1                                      mov r0, r7
003a08e4  10 10 a0 e3                                      mov r1, #0x10
003a08e8  3c 70 8d e5                                      str r7, [sp, #0x3c]
003a08ec  40 70 8d e5                                      str r7, [sp, #0x40]
003a08f0  61 c3 fd eb                                      bl #0x31167c
003a08f4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
003a08f8  00 60 a0 e3                                      mov r6, #0
003a08fc  14 80 8d e2                                      add r8, sp, #0x14
003a0900  00 60 c3 e5                                      strb r6, [r3]
003a0904  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003a0908  08 00 a0 e1                                      mov r0, r8
003a090c  40 10 9d e5                                      ldr r1, [sp, #0x40]
003a0910  24 80 8d e5                                      str r8, [sp, #0x24]
003a0914  28 80 8d e5                                      str r8, [sp, #0x28]
003a0918  72 c3 fd eb                                      bl #0x3116e8
003a091c  06 10 a0 e1                                      mov r1, r6
003a0920  38 00 a0 e3                                      mov r0, #0x38
003a0924  11 bf fd eb                                      bl #0x310570
003a0928  58 a1 9f e5                                      ldr sl, [pc, #0x158]
003a092c  00 60 a0 e1                                      mov r6, r0
003a0930  0c 20 8d e2                                      add r2, sp, #0xc
003a0934  0a a0 8f e0                                      add sl, pc, sl
003a0938  0a 10 a0 e1                                      mov r1, sl
003a093c  08 b0 80 e4                                      str fp, [r0], #8
003a0940  e9 cd fd eb                                      bl #0x3140ec
003a0944  40 31 9f e5                                      ldr r3, [pc, #0x140]
003a0948  de 2f 89 e2                                      add r2, sb, #0x378
003a094c  06 00 a0 e1                                      mov r0, r6
003a0950  03 30 94 e7                                      ldr r3, [r4, r3]
003a0954  02 20 65 e0                                      rsb r2, r5, r2
003a0958  04 20 86 e5                                      str r2, [r6, #4]
003a095c  08 30 83 e2                                      add r3, r3, #8
003a0960  20 30 80 e4                                      str r3, [r0], #0x20
003a0964  30 00 86 e5                                      str r0, [r6, #0x30]
003a0968  34 00 86 e5                                      str r0, [r6, #0x34]
003a096c  28 10 9d e5                                      ldr r1, [sp, #0x28]
003a0970  24 20 9d e5                                      ldr r2, [sp, #0x24]
003a0974  5b c3 fd eb                                      bl #0x3116e8
003a0978  05 00 a0 e1                                      mov r0, r5
003a097c  0a 10 a0 e1                                      mov r1, sl
003a0980  06 20 a0 e1                                      mov r2, r6
003a0984  d6 cc 05 eb                                      bl #0x513ce4
003a0988  28 00 9d e5                                      ldr r0, [sp, #0x28]
003a098c  08 00 50 e1                                      cmp r0, r8
003a0990  06 00 00 0a                                      beq #0x3a09b0
003a0994  00 00 50 e3                                      cmp r0, #0
003a0998  04 00 00 0a                                      beq #0x3a09b0
003a099c  14 10 9d e5                                      ldr r1, [sp, #0x14]
003a09a0  01 10 60 e0                                      rsb r1, r0, r1
003a09a4  80 00 51 e3                                      cmp r1, #0x80
003a09a8  2e 00 00 8a                                      bhi #0x3a0a68
003a09ac  53 a1 0d eb                                      bl #0x708f00
003a09b0  40 00 9d e5                                      ldr r0, [sp, #0x40]
003a09b4  07 00 50 e1                                      cmp r0, r7
003a09b8  06 00 00 0a                                      beq #0x3a09d8
003a09bc  00 00 50 e3                                      cmp r0, #0
003a09c0  04 00 00 0a                                      beq #0x3a09d8
003a09c4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
003a09c8  01 10 60 e0                                      rsb r1, r0, r1
003a09cc  80 00 51 e3                                      cmp r1, #0x80
003a09d0  22 00 00 8a                                      bhi #0x3a0a60
003a09d4  49 a1 0d eb                                      bl #0x708f00
003a09d8  00 10 a0 e3                                      mov r1, #0
003a09dc  24 00 a0 e3                                      mov r0, #0x24
003a09e0  e2 be fd eb                                      bl #0x310570
003a09e4  00 20 9d e5                                      ldr r2, [sp]
003a09e8  a0 70 9f e5                                      ldr r7, [pc, #0xa0]
003a09ec  00 60 a0 e1                                      mov r6, r0
003a09f0  02 30 94 e7                                      ldr r3, [r4, r2]
003a09f4  07 70 8f e0                                      add r7, pc, r7
003a09f8  07 10 a0 e1                                      mov r1, r7
003a09fc  08 30 83 e2                                      add r3, r3, #8
003a0a00  08 30 80 e4                                      str r3, [r0], #8
003a0a04  08 20 8d e2                                      add r2, sp, #8
003a0a08  b7 cd fd eb                                      bl #0x3140ec
003a0a0c  80 30 9f e5                                      ldr r3, [pc, #0x80]
003a0a10  39 9e 89 e2                                      add sb, sb, #0x390
003a0a14  09 90 65 e0                                      rsb sb, r5, sb
003a0a18  03 30 94 e7                                      ldr r3, [r4, r3]
003a0a1c  06 20 a0 e1                                      mov r2, r6
003a0a20  04 90 86 e5                                      str sb, [r6, #4]
003a0a24  08 30 83 e2                                      add r3, r3, #8
003a0a28  00 30 86 e5                                      str r3, [r6]
003a0a2c  00 30 a0 e3                                      mov r3, #0
003a0a30  20 30 c6 e5                                      strb r3, [r6, #0x20]
003a0a34  05 00 a0 e1                                      mov r0, r5
003a0a38  07 10 a0 e1                                      mov r1, r7
003a0a3c  a8 cc 05 eb                                      bl #0x513ce4
003a0a40  04 20 9d e5                                      ldr r2, [sp, #4]
003a0a44  02 30 94 e7                                      ldr r3, [r4, r2]
003a0a48  44 20 9d e5                                      ldr r2, [sp, #0x44]
003a0a4c  00 30 93 e5                                      ldr r3, [r3]
003a0a50  03 00 52 e1                                      cmp r2, r3
003a0a54  05 00 00 1a                                      bne #0x3a0a70
003a0a58  4c d0 8d e2                                      add sp, sp, #0x4c
003a0a5c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003a0a60  76 be fd eb                                      bl #0x310440
003a0a64  db ff ff ea                                      b #0x3a09d8
003a0a68  74 be fd eb                                      bl #0x310440
003a0a6c  cf ff ff ea                                      b #0x3a09b0
003a0a70  26 b6 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003a0a74  40 42 5f 00 ac 40 00 00 30 23 00 00 d0 22 52 00  .byte 0x40, 0x42, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x23, 0x00, 0x00, 0xd0, 0x22, 0x52, 0x00
003a0a84  90 25 00 00 2c 26 52 00 94 34 00 00 7c 25 52 00  .byte 0x90, 0x25, 0x00, 0x00, 0x2c, 0x26, 0x52, 0x00, 0x94, 0x34, 0x00, 0x00, 0x7c, 0x25, 0x52, 0x00
003a0a94  4c 3e 00 00                                      .byte 0x4c, 0x3e, 0x00, 0x00

; FUNCTION 0x003a0a98, declared_size=160, range_size=160, mode=arm
; class-group: Container
; alias: _ZN9Container6DoOpenEv
; demangled: Container::DoOpen()
; decoder-mode: arm
003a0a98  70 40 2d e9                                      push {r4, r5, r6, lr}
003a0a9c  10 d0 4d e2                                      sub sp, sp, #0x10
003a0aa0  00 30 90 e5                                      ldr r3, [r0]
003a0aa4  00 40 a0 e1                                      mov r4, r0
003a0aa8  0f e0 a0 e1                                      mov lr, pc
003a0aac  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
003a0ab0  00 30 94 e5                                      ldr r3, [r4]
003a0ab4  00 50 a0 e1                                      mov r5, r0
003a0ab8  04 00 a0 e1                                      mov r0, r4
003a0abc  98 63 94 e5                                      ldr r6, [r4, #0x398]
003a0ac0  0f e0 a0 e1                                      mov lr, pc
003a0ac4  e0 f0 93 e5                                      ldr pc, [r3, #0xe0]
003a0ac8  00 c0 a0 e3                                      mov ip, #0
003a0acc  00 30 a0 e1                                      mov r3, r0
003a0ad0  06 20 a0 e1                                      mov r2, r6
003a0ad4  05 00 a0 e1                                      mov r0, r5
003a0ad8  04 10 a0 e1                                      mov r1, r4
003a0adc  00 c0 8d e5                                      str ip, [sp]
003a0ae0  2e 30 01 eb                                      bl #0x3ecba0
003a0ae4  00 33 94 e5                                      ldr r3, [r4, #0x300]
003a0ae8  00 00 53 e3                                      cmp r3, #0
003a0aec  0e 00 00 0a                                      beq #0x3a0b2c
003a0af0  08 50 8d e2                                      add r5, sp, #8
003a0af4  05 00 a0 e1                                      mov r0, r5
003a0af8  ed e1 fd eb                                      bl #0x3192b4
003a0afc  98 13 94 e5                                      ldr r1, [r4, #0x398]
003a0b00  00 00 51 e3                                      cmp r1, #0
003a0b04  01 00 00 0a                                      beq #0x3a0b10
003a0b08  05 00 a0 e1                                      mov r0, r5
003a0b0c  05 99 ff eb                                      bl #0x386f28
003a0b10  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
003a0b14  00 03 94 e5                                      ldr r0, [r4, #0x300]
003a0b18  05 20 a0 e1                                      mov r2, r5
003a0b1c  01 10 8f e0                                      add r1, pc, r1
003a0b20  3d 6e ff eb                                      bl #0x37c41c
003a0b24  05 00 a0 e1                                      mov r0, r5
003a0b28  be e1 fd eb                                      bl #0x319228
003a0b2c  10 d0 8d e2                                      add sp, sp, #0x10
003a0b30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003a0b34  64 24 52 00                                      .byte 0x64, 0x24, 0x52, 0x00

; FUNCTION 0x003a0b38, declared_size=300, range_size=300, mode=arm
; class-group: Container
; alias: _ZN9Container8InteractEP10GameObject
; demangled: Container::Interact(GameObject*)
; decoder-mode: arm
003a0b38  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003a0b3c  94 33 90 e5                                      ldr r3, [r0, #0x394]
003a0b40  10 51 9f e5                                      ldr r5, [pc, #0x110]
003a0b44  24 d0 4d e2                                      sub sp, sp, #0x24
003a0b48  03 30 43 e2                                      sub r3, r3, #3
003a0b4c  01 00 53 e3                                      cmp r3, #1
003a0b50  00 40 a0 e1                                      mov r4, r0
003a0b54  05 50 8f e0                                      add r5, pc, r5
003a0b58  35 00 00 9a                                      bls #0x3a0c34
003a0b5c  98 13 80 e5                                      str r1, [r0, #0x398]
003a0b60  04 10 a0 e3                                      mov r1, #4
003a0b64  18 fa ff eb                                      bl #0x39f3cc
003a0b68  00 30 94 e5                                      ldr r3, [r4]
003a0b6c  04 00 a0 e1                                      mov r0, r4
003a0b70  0f e0 a0 e1                                      mov lr, pc
003a0b74  dc f0 93 e5                                      ldr pc, [r3, #0xdc]
003a0b78  00 10 50 e2                                      subs r1, r0, #0
003a0b7c  2e 00 00 0a                                      beq #0x3a0c3c
003a0b80  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
003a0b84  00 00 53 e3                                      cmp r3, #0
003a0b88  2f 00 00 0a                                      beq #0x3a0c4c
003a0b8c  04 00 a0 e1                                      mov r0, r4
003a0b90  03 10 a0 e3                                      mov r1, #3
003a0b94  0c fa ff eb                                      bl #0x39f3cc
003a0b98  d8 22 94 e5                                      ldr r2, [r4, #0x2d8]
003a0b9c  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
003a0ba0  00 30 a0 e3                                      mov r3, #0
003a0ba4  38 c0 92 e5                                      ldr ip, [r2, #0x38]
003a0ba8  01 10 8f e0                                      add r1, pc, r1
003a0bac  03 20 a0 e1                                      mov r2, r3
003a0bb0  0c 00 a0 e1                                      mov r0, ip
003a0bb4  00 c0 9c e5                                      ldr ip, [ip]
003a0bb8  00 30 8d e5                                      str r3, [sp]
003a0bbc  0f e0 a0 e1                                      mov lr, pc
003a0bc0  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003a0bc4  94 20 9f e5                                      ldr r2, [pc, #0x94]
003a0bc8  00 30 94 e5                                      ldr r3, [r4]
003a0bcc  04 00 a0 e1                                      mov r0, r4
003a0bd0  02 20 95 e7                                      ldr r2, [r5, r2]
003a0bd4  00 70 92 e5                                      ldr r7, [r2]
003a0bd8  0f e0 a0 e1                                      mov lr, pc
003a0bdc  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
003a0be0  68 e1 94 e5                                      ldr lr, [r4, #0x168]
003a0be4  64 51 94 e5                                      ldr r5, [r4, #0x164]
003a0be8  60 61 94 e5                                      ldr r6, [r4, #0x160]
003a0bec  bf c4 a0 e3                                      mov ip, #0xbf000000
003a0bf0  02 c5 8c e2                                      add ip, ip, #0x800000
003a0bf4  00 10 a0 e1                                      mov r1, r0
003a0bf8  00 30 a0 e3                                      mov r3, #0
003a0bfc  1c e0 8d e5                                      str lr, [sp, #0x1c]
003a0c00  07 00 a0 e1                                      mov r0, r7
003a0c04  01 e0 a0 e3                                      mov lr, #1
003a0c08  14 20 8d e2                                      add r2, sp, #0x14
003a0c0c  14 60 8d e5                                      str r6, [sp, #0x14]
003a0c10  18 50 8d e5                                      str r5, [sp, #0x18]
003a0c14  00 e0 8d e5                                      str lr, [sp]
003a0c18  08 c0 8d e5                                      str ip, [sp, #8]
003a0c1c  04 c0 8d e5                                      str ip, [sp, #4]
003a0c20  6c 2a ff eb                                      bl #0x36b5d8
003a0c24  04 00 a0 e1                                      mov r0, r4
003a0c28  00 30 94 e5                                      ldr r3, [r4]
003a0c2c  0f e0 a0 e1                                      mov lr, pc
003a0c30  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
003a0c34  24 d0 8d e2                                      add sp, sp, #0x24
003a0c38  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003a0c3c  04 00 a0 e1                                      mov r0, r4
003a0c40  01 20 a0 e1                                      mov r2, r1
003a0c44  eb cf ff eb                                      bl #0x394bf8
003a0c48  cc ff ff ea                                      b #0x3a0b80
003a0c4c  04 00 a0 e1                                      mov r0, r4
003a0c50  90 ff ff eb                                      bl #0x3a0a98
003a0c54  da ff ff ea                                      b #0x3a0bc4
; mapping-symbol data/literal pool
003a0c58  3c 3f 5f 00 30 1f 52 00 a4 0d 00 00              .byte 0x3c, 0x3f, 0x5f, 0x00, 0x30, 0x1f, 0x52, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x003a0c64, declared_size=132, range_size=132, mode=arm
; class-group: Container
; alias: _ZN9Container15__EventCallbackERKN6glitch7collada15STriggeredEventEPv
; demangled: Container::__EventCallback(glitch::collada::STriggeredEvent const&, void*)
; decoder-mode: arm
003a0c64  70 40 2d e9                                      push {r4, r5, r6, lr}
003a0c68  01 60 a0 e1                                      mov r6, r1
003a0c6c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003a0c70  08 d0 4d e2                                      sub sp, sp, #8
003a0c74  00 50 a0 e1                                      mov r5, r0
003a0c78  01 10 8f e0                                      add r1, pc, r1
003a0c7c  04 00 90 e5                                      ldr r0, [r0, #4]
003a0c80  a5 b5 fd eb                                      bl #0x30e31c
003a0c84  00 00 50 e3                                      cmp r0, #0
003a0c88  11 00 00 0a                                      beq #0x3a0cd4
003a0c8c  00 33 96 e5                                      ldr r3, [r6, #0x300]
003a0c90  00 00 53 e3                                      cmp r3, #0
003a0c94  0c 00 00 0a                                      beq #0x3a0ccc
003a0c98  0d 00 a0 e1                                      mov r0, sp
003a0c9c  84 e1 fd eb                                      bl #0x3192b4
003a0ca0  0d 00 a0 e1                                      mov r0, sp
003a0ca4  04 10 95 e5                                      ldr r1, [r5, #4]
003a0ca8  d8 f7 ff eb                                      bl #0x39ec10
003a0cac  30 10 9f e5                                      ldr r1, [pc, #0x30]
003a0cb0  00 03 96 e5                                      ldr r0, [r6, #0x300]
003a0cb4  0d 20 a0 e1                                      mov r2, sp
003a0cb8  01 10 8f e0                                      add r1, pc, r1
003a0cbc  d6 6d ff eb                                      bl #0x37c41c
003a0cc0  0d 00 a0 e1                                      mov r0, sp
003a0cc4  0d 40 a0 e1                                      mov r4, sp
003a0cc8  56 e1 fd eb                                      bl #0x319228
003a0ccc  08 d0 8d e2                                      add sp, sp, #8
003a0cd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003a0cd4  06 00 a0 e1                                      mov r0, r6
003a0cd8  6e ff ff eb                                      bl #0x3a0a98
003a0cdc  fa ff ff ea                                      b #0x3a0ccc
; mapping-symbol data/literal pool
003a0ce0  10 23 52 00 78 22 52 00                          .byte 0x10, 0x23, 0x52, 0x00, 0x78, 0x22, 0x52, 0x00
