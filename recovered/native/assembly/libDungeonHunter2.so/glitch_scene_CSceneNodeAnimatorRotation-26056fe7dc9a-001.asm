; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006cd58c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZNK6glitch5scene26CSceneNodeAnimatorRotation7getTypeEv
; demangled: glitch::scene::CSceneNodeAnimatorRotation::getType() const
; decoder-mode: arm
006cd58c  03 00 a0 e3                                      mov r0, #3
006cd590  1e ff 2f e1                                      bx lr

; FUNCTION 0x006cd594, declared_size=228, range_size=228, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZN6glitch5scene26CSceneNodeAnimatorRotation11animateNodeEPNS0_10ISceneNodeEj
; demangled: glitch::scene::CSceneNodeAnimatorRotation::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
006cd594  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006cd598  00 60 51 e2                                      subs r6, r1, #0
006cd59c  14 d0 4d e2                                      sub sp, sp, #0x14
006cd5a0  00 40 a0 e1                                      mov r4, r0
006cd5a4  02 50 a0 e1                                      mov r5, r2
006cd5a8  30 00 00 0a                                      beq #0x6cd670
006cd5ac  1c 70 90 e5                                      ldr r7, [r0, #0x1c]
006cd5b0  07 70 52 e0                                      subs r7, r2, r7
006cd5b4  2d 00 00 0a                                      beq #0x6cd670
006cd5b8  00 30 96 e5                                      ldr r3, [r6]
006cd5bc  06 00 a0 e1                                      mov r0, r6
006cd5c0  0f e0 a0 e1                                      mov lr, pc
006cd5c4  98 f0 93 e5                                      ldr pc, [r3, #0x98]
006cd5c8  0d 80 a0 e1                                      mov r8, sp
006cd5cc  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
006cd5d0  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
006cd5d4  07 00 a0 e1                                      mov r0, r7
006cd5d8  40 03 f1 eb                                      bl #0x30e2e0
006cd5dc  41 14 a0 e3                                      mov r1, #0x41000000
006cd5e0  02 16 81 e2                                      add r1, r1, #0x200000
006cd5e4  aa 05 f1 eb                                      bl #0x30ec94
006cd5e8  10 10 94 e5                                      ldr r1, [r4, #0x10]
006cd5ec  00 70 a0 e1                                      mov r7, r0
006cd5f0  dd 05 f1 eb                                      bl #0x30ed6c
006cd5f4  04 10 9d e5                                      ldr r1, [sp, #4]
006cd5f8  69 05 f1 eb                                      bl #0x30eba4
006cd5fc  14 10 94 e5                                      ldr r1, [r4, #0x14]
006cd600  00 b0 a0 e1                                      mov fp, r0
006cd604  07 00 a0 e1                                      mov r0, r7
006cd608  d7 05 f1 eb                                      bl #0x30ed6c
006cd60c  08 10 9d e5                                      ldr r1, [sp, #8]
006cd610  63 05 f1 eb                                      bl #0x30eba4
006cd614  18 10 94 e5                                      ldr r1, [r4, #0x18]
006cd618  00 90 a0 e1                                      mov sb, r0
006cd61c  07 00 a0 e1                                      mov r0, r7
006cd620  d1 05 f1 eb                                      bl #0x30ed6c
006cd624  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006cd628  5d 05 f1 eb                                      bl #0x30eba4
006cd62c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006cd630  00 a0 a0 e1                                      mov sl, r0
006cd634  07 00 a0 e1                                      mov r0, r7
006cd638  cb 05 f1 eb                                      bl #0x30ed6c
006cd63c  00 10 a0 e1                                      mov r1, r0
006cd640  00 00 9d e5                                      ldr r0, [sp]
006cd644  56 05 f1 eb                                      bl #0x30eba4
006cd648  04 b0 8d e5                                      str fp, [sp, #4]
006cd64c  00 00 8d e5                                      str r0, [sp]
006cd650  08 90 8d e5                                      str sb, [sp, #8]
006cd654  0c a0 8d e5                                      str sl, [sp, #0xc]
006cd658  06 00 a0 e1                                      mov r0, r6
006cd65c  0d 10 a0 e1                                      mov r1, sp
006cd660  00 30 96 e5                                      ldr r3, [r6]
006cd664  0f e0 a0 e1                                      mov lr, pc
006cd668  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006cd66c  1c 50 84 e5                                      str r5, [r4, #0x1c]
006cd670  14 d0 8d e2                                      add sp, sp, #0x14
006cd674  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006cd678, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZNK6glitch5scene26CSceneNodeAnimatorRotation19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorRotation::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006cd678  04 e0 2d e5                                      str lr, [sp, #-4]!
006cd67c  00 20 a0 e1                                      mov r2, r0
006cd680  18 30 92 e5                                      ldr r3, [r2, #0x18]
006cd684  14 d0 4d e2                                      sub sp, sp, #0x14
006cd688  14 00 90 e5                                      ldr r0, [r0, #0x14]
006cd68c  01 c0 a0 e1                                      mov ip, r1
006cd690  00 10 a0 e3                                      mov r1, #0
006cd694  08 10 8d e5                                      str r1, [sp, #8]
006cd698  24 10 9f e5                                      ldr r1, [pc, #0x24]
006cd69c  09 00 8d e8                                      stm sp, {r0, r3}
006cd6a0  10 30 92 e5                                      ldr r3, [r2, #0x10]
006cd6a4  0c 00 a0 e1                                      mov r0, ip
006cd6a8  01 10 8f e0                                      add r1, pc, r1
006cd6ac  00 c0 9c e5                                      ldr ip, [ip]
006cd6b0  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006cd6b4  0f e0 a0 e1                                      mov lr, pc
006cd6b8  20 f2 9c e5                                      ldr pc, [ip, #0x220]
006cd6bc  14 d0 8d e2                                      add sp, sp, #0x14
006cd6c0  00 80 bd e8                                      ldm sp!, {pc}
; mapping-symbol data/literal pool
006cd6c4  b8 1f 21 00                                      .byte 0xb8, 0x1f, 0x21, 0x00

; FUNCTION 0x006cd6c8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZN6glitch5scene26CSceneNodeAnimatorRotation21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorRotation::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006cd6c8  10 40 2d e9                                      push {r4, lr}
006cd6cc  40 20 9f e5                                      ldr r2, [pc, #0x40]
006cd6d0  10 d0 4d e2                                      sub sp, sp, #0x10
006cd6d4  00 40 a0 e1                                      mov r4, r0
006cd6d8  00 30 91 e5                                      ldr r3, [r1]
006cd6dc  02 20 8f e0                                      add r2, pc, r2
006cd6e0  0d 00 a0 e1                                      mov r0, sp
006cd6e4  0f e0 a0 e1                                      mov lr, pc
006cd6e8  2c f2 93 e5                                      ldr pc, [r3, #0x22c]
006cd6ec  04 10 9d e5                                      ldr r1, [sp, #4]
006cd6f0  08 30 9d e5                                      ldr r3, [sp, #8]
006cd6f4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006cd6f8  00 00 9d e5                                      ldr r0, [sp]
006cd6fc  10 10 84 e5                                      str r1, [r4, #0x10]
006cd700  18 20 84 e5                                      str r2, [r4, #0x18]
006cd704  0c 00 84 e5                                      str r0, [r4, #0xc]
006cd708  14 30 84 e5                                      str r3, [r4, #0x14]
006cd70c  10 d0 8d e2                                      add sp, sp, #0x10
006cd710  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006cd714  84 1f 21 00                                      .byte 0x84, 0x1f, 0x21, 0x00

; FUNCTION 0x006cd738, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZThn4_N6glitch5scene26CSceneNodeAnimatorRotationD1Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation()
; decoder-mode: arm
006cd738  04 00 40 e2                                      sub r0, r0, #4
006cd73c  ff ff ff ea                                      b #0x6cd740

; FUNCTION 0x006cd740, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZN6glitch5scene26CSceneNodeAnimatorRotationD1Ev
; demangled: glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation()
; decoder-mode: arm
006cd740  40 30 9f e5                                      ldr r3, [pc, #0x40]
006cd744  40 20 9f e5                                      ldr r2, [pc, #0x40]
006cd748  40 10 9f e5                                      ldr r1, [pc, #0x40]
006cd74c  03 30 8f e0                                      add r3, pc, r3
006cd750  02 20 93 e7                                      ldr r2, [r3, r2]
006cd754  01 10 93 e7                                      ldr r1, [r3, r1]
006cd758  10 40 2d e9                                      push {r4, lr}
006cd75c  68 c0 82 e2                                      add ip, r2, #0x68
006cd760  0c e0 82 e2                                      add lr, r2, #0xc
006cd764  84 20 82 e2                                      add r2, r2, #0x84
006cd768  00 40 a0 e1                                      mov r4, r0
006cd76c  00 e0 80 e5                                      str lr, [r0]
006cd770  20 20 80 e5                                      str r2, [r0, #0x20]
006cd774  04 c0 80 e5                                      str ip, [r0, #4]
006cd778  04 10 81 e2                                      add r1, r1, #4
006cd77c  6d 30 fb eb                                      bl #0x599938
006cd780  04 00 a0 e1                                      mov r0, r4
006cd784  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006cd788  44 73 2c 00 a0 45 00 00 88 4a 00 00              .byte 0x44, 0x73, 0x2c, 0x00, 0xa0, 0x45, 0x00, 0x00, 0x88, 0x4a, 0x00, 0x00

; FUNCTION 0x006cd794, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZThn4_N6glitch5scene26CSceneNodeAnimatorRotationD0Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation()
; decoder-mode: arm
006cd794  04 00 40 e2                                      sub r0, r0, #4
006cd798  ff ff ff ea                                      b #0x6cd79c

; FUNCTION 0x006cd79c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZN6glitch5scene26CSceneNodeAnimatorRotationD0Ev
; demangled: glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation()
; decoder-mode: arm
006cd79c  10 40 2d e9                                      push {r4, lr}
006cd7a0  00 40 a0 e1                                      mov r4, r0
006cd7a4  e5 ff ff eb                                      bl #0x6cd740
006cd7a8  04 00 a0 e1                                      mov r0, r4
006cd7ac  bf 02 f1 eb                                      bl #0x30e2b0
006cd7b0  04 00 a0 e1                                      mov r0, r4
006cd7b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006cd7b8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZN6glitch5scene26CSceneNodeAnimatorRotationD2Ev
; demangled: glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation()
; decoder-mode: arm
006cd7b8  10 40 2d e9                                      push {r4, lr}
006cd7bc  38 30 9f e5                                      ldr r3, [pc, #0x38]
006cd7c0  00 c0 91 e5                                      ldr ip, [r1]
006cd7c4  34 20 9f e5                                      ldr r2, [pc, #0x34]
006cd7c8  03 30 8f e0                                      add r3, pc, r3
006cd7cc  00 c0 80 e5                                      str ip, [r0]
006cd7d0  02 20 93 e7                                      ldr r2, [r3, r2]
006cd7d4  14 e0 91 e5                                      ldr lr, [r1, #0x14]
006cd7d8  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006cd7dc  68 20 82 e2                                      add r2, r2, #0x68
006cd7e0  00 40 a0 e1                                      mov r4, r0
006cd7e4  0c e0 80 e7                                      str lr, [r0, ip]
006cd7e8  04 10 81 e2                                      add r1, r1, #4
006cd7ec  04 20 80 e5                                      str r2, [r0, #4]
006cd7f0  50 30 fb eb                                      bl #0x599938
006cd7f4  04 00 a0 e1                                      mov r0, r4
006cd7f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006cd7fc  c8 72 2c 00 a0 45 00 00                          .byte 0xc8, 0x72, 0x2c, 0x00, 0xa0, 0x45, 0x00, 0x00

; FUNCTION 0x006cd804, declared_size=200, range_size=200, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZN6glitch5scene26CSceneNodeAnimatorRotationC1EjRKNS_4core10quaternionE
; demangled: glitch::scene::CSceneNodeAnimatorRotation::CSceneNodeAnimatorRotation(unsigned int, glitch::core::quaternion const&)
; decoder-mode: arm
006cd804  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006cd808  a8 60 9f e5                                      ldr r6, [pc, #0xa8]
006cd80c  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
006cd810  a8 c0 9f e5                                      ldr ip, [pc, #0xa8]
006cd814  06 60 8f e0                                      add r6, pc, r6
006cd818  03 70 96 e7                                      ldr r7, [r6, r3]
006cd81c  0c c0 96 e7                                      ldr ip, [r6, ip]
006cd820  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
006cd824  08 e0 97 e5                                      ldr lr, [r7, #8]
006cd828  08 c0 8c e2                                      add ip, ip, #8
006cd82c  01 50 a0 e3                                      mov r5, #1
006cd830  24 50 80 e5                                      str r5, [r0, #0x24]
006cd834  00 e0 80 e5                                      str lr, [r0]
006cd838  20 c0 80 e5                                      str ip, [r0, #0x20]
006cd83c  03 30 96 e7                                      ldr r3, [r6, r3]
006cd840  0c c0 1e e5                                      ldr ip, [lr, #-0xc]
006cd844  0c e0 97 e5                                      ldr lr, [r7, #0xc]
006cd848  08 30 83 e2                                      add r3, r3, #8
006cd84c  00 40 a0 e1                                      mov r4, r0
006cd850  0c e0 80 e7                                      str lr, [r0, ip]
006cd854  04 30 80 e5                                      str r3, [r0, #4]
006cd858  01 50 a0 e1                                      mov r5, r1
006cd85c  02 80 a0 e1                                      mov r8, r2
006cd860  49 4e ff eb                                      bl #0x6a118c
006cd864  04 20 97 e5                                      ldr r2, [r7, #4]
006cd868  58 30 9f e5                                      ldr r3, [pc, #0x58]
006cd86c  10 c0 97 e5                                      ldr ip, [r7, #0x10]
006cd870  00 20 84 e5                                      str r2, [r4]
006cd874  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006cd878  03 30 96 e7                                      ldr r3, [r6, r3]
006cd87c  00 c0 84 e7                                      str ip, [r4, r0]
006cd880  68 20 83 e2                                      add r2, r3, #0x68
006cd884  0c 10 83 e2                                      add r1, r3, #0xc
006cd888  00 00 a0 e3                                      mov r0, #0
006cd88c  84 30 83 e2                                      add r3, r3, #0x84
006cd890  08 00 84 e5                                      str r0, [r4, #8]
006cd894  00 10 84 e5                                      str r1, [r4]
006cd898  20 30 84 e5                                      str r3, [r4, #0x20]
006cd89c  04 20 84 e5                                      str r2, [r4, #4]
006cd8a0  0c c0 84 e2                                      add ip, r4, #0xc
006cd8a4  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
006cd8a8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
006cd8ac  1c 50 84 e5                                      str r5, [r4, #0x1c]
006cd8b0  04 00 a0 e1                                      mov r0, r4
006cd8b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006cd8b8  7c 72 2c 00 88 4a 00 00 44 2b 00 00 4c 27 00 00  .byte 0x7c, 0x72, 0x2c, 0x00, 0x88, 0x4a, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00
006cd8c8  a0 45 00 00                                      .byte 0xa0, 0x45, 0x00, 0x00

; FUNCTION 0x006cd8cc, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZN6glitch5scene26CSceneNodeAnimatorRotation11createCloneEv
; demangled: glitch::scene::CSceneNodeAnimatorRotation::createClone()
; decoder-mode: arm
006cd8cc  70 40 2d e9                                      push {r4, r5, r6, lr}
006cd8d0  00 10 a0 e3                                      mov r1, #0
006cd8d4  00 40 a0 e1                                      mov r4, r0
006cd8d8  28 00 a0 e3                                      mov r0, #0x28
006cd8dc  32 9a f9 eb                                      bl #0x5341ac
006cd8e0  0c 20 84 e2                                      add r2, r4, #0xc
006cd8e4  00 50 a0 e1                                      mov r5, r0
006cd8e8  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006cd8ec  c4 ff ff eb                                      bl #0x6cd804
006cd8f0  05 00 a0 e1                                      mov r0, r5
006cd8f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006cd8f8, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZN6glitch5scene26CSceneNodeAnimatorRotationC2EjRKNS_4core10quaternionE
; demangled: glitch::scene::CSceneNodeAnimatorRotation::CSceneNodeAnimatorRotation(unsigned int, glitch::core::quaternion const&)
; decoder-mode: arm
006cd8f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006cd8fc  04 80 81 e2                                      add r8, r1, #4
006cd900  a0 60 9f e5                                      ldr r6, [pc, #0xa0]
006cd904  04 c0 98 e5                                      ldr ip, [r8, #4]
006cd908  01 70 a0 e1                                      mov r7, r1
006cd90c  98 10 9f e5                                      ldr r1, [pc, #0x98]
006cd910  06 60 8f e0                                      add r6, pc, r6
006cd914  00 c0 80 e5                                      str ip, [r0]
006cd918  01 10 96 e7                                      ldr r1, [r6, r1]
006cd91c  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006cd920  08 e0 98 e5                                      ldr lr, [r8, #8]
006cd924  08 10 81 e2                                      add r1, r1, #8
006cd928  00 40 a0 e1                                      mov r4, r0
006cd92c  0c e0 80 e7                                      str lr, [r0, ip]
006cd930  04 10 80 e5                                      str r1, [r0, #4]
006cd934  02 50 a0 e1                                      mov r5, r2
006cd938  03 a0 a0 e1                                      mov sl, r3
006cd93c  12 4e ff eb                                      bl #0x6a118c
006cd940  04 20 97 e5                                      ldr r2, [r7, #4]
006cd944  64 30 9f e5                                      ldr r3, [pc, #0x64]
006cd948  0c c0 84 e2                                      add ip, r4, #0xc
006cd94c  00 20 84 e5                                      str r2, [r4]
006cd950  03 30 96 e7                                      ldr r3, [r6, r3]
006cd954  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
006cd958  0c 00 98 e5                                      ldr r0, [r8, #0xc]
006cd95c  68 20 83 e2                                      add r2, r3, #0x68
006cd960  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
006cd964  01 00 84 e7                                      str r0, [r4, r1]
006cd968  04 20 84 e5                                      str r2, [r4, #4]
006cd96c  00 20 a0 e3                                      mov r2, #0
006cd970  08 20 84 e5                                      str r2, [r4, #8]
006cd974  00 20 97 e5                                      ldr r2, [r7]
006cd978  03 30 96 e7                                      ldr r3, [r6, r3]
006cd97c  00 20 84 e5                                      str r2, [r4]
006cd980  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006cd984  14 10 97 e5                                      ldr r1, [r7, #0x14]
006cd988  68 30 83 e2                                      add r3, r3, #0x68
006cd98c  02 10 84 e7                                      str r1, [r4, r2]
006cd990  04 30 84 e5                                      str r3, [r4, #4]
006cd994  0f 00 9a e8                                      ldm sl, {r0, r1, r2, r3}
006cd998  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
006cd99c  1c 50 84 e5                                      str r5, [r4, #0x1c]
006cd9a0  04 00 a0 e1                                      mov r0, r4
006cd9a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006cd9a8  80 71 2c 00 4c 27 00 00 08 23 00 00 a0 45 00 00  .byte 0x80, 0x71, 0x2c, 0x00, 0x4c, 0x27, 0x00, 0x00, 0x08, 0x23, 0x00, 0x00, 0xa0, 0x45, 0x00, 0x00

; FUNCTION 0x006cd9b8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZTv0_n12_N6glitch5scene26CSceneNodeAnimatorRotationD0Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation()
; decoder-mode: arm
006cd9b8  00 30 90 e5                                      ldr r3, [r0]
006cd9bc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cd9c0  03 00 80 e0                                      add r0, r0, r3
006cd9c4  74 ff ff ea                                      b #0x6cd79c

; FUNCTION 0x006cd9c8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorRotation
; alias: _ZTv0_n12_N6glitch5scene26CSceneNodeAnimatorRotationD1Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation()
; decoder-mode: arm
006cd9c8  00 30 90 e5                                      ldr r3, [r0]
006cd9cc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cd9d0  03 00 80 e0                                      add r0, r0, r3
006cd9d4  59 ff ff ea                                      b #0x6cd740
