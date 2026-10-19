; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b9cf0, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory
; alias: _ZNK6glitch5scene24CDefaultSceneNodeFactory30getCreatableSceneNodeTypeCountEv
; demangled: glitch::scene::CDefaultSceneNodeFactory::getCreatableSceneNodeTypeCount() const
; decoder-mode: arm
006b9cf0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006b9cf4  08 30 90 e5                                      ldr r3, [r0, #8]
006b9cf8  02 30 63 e0                                      rsb r3, r3, r2
006b9cfc  43 31 a0 e1                                      asr r3, r3, #2
006b9d00  83 21 83 e0                                      add r2, r3, r3, lsl #3
006b9d04  02 23 82 e0                                      add r2, r2, r2, lsl #6
006b9d08  82 21 83 e0                                      add r2, r3, r2, lsl #3
006b9d0c  82 27 82 e0                                      add r2, r2, r2, lsl #15
006b9d10  82 31 83 e0                                      add r3, r3, r2, lsl #3
006b9d14  00 00 63 e2                                      rsb r0, r3, #0
006b9d18  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b9d1c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory
; alias: _ZNK6glitch5scene24CDefaultSceneNodeFactory26getCreateableSceneNodeTypeEj
; demangled: glitch::scene::CDefaultSceneNodeFactory::getCreateableSceneNodeType(unsigned int) const
; decoder-mode: arm
006b9d1c  08 30 90 e5                                      ldr r3, [r0, #8]
006b9d20  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006b9d24  02 20 63 e0                                      rsb r2, r3, r2
006b9d28  42 21 a0 e1                                      asr r2, r2, #2
006b9d2c  82 01 82 e0                                      add r0, r2, r2, lsl #3
006b9d30  00 03 80 e0                                      add r0, r0, r0, lsl #6
006b9d34  80 01 82 e0                                      add r0, r2, r0, lsl #3
006b9d38  80 07 80 e0                                      add r0, r0, r0, lsl #15
006b9d3c  80 21 82 e0                                      add r2, r2, r0, lsl #3
006b9d40  00 20 62 e2                                      rsb r2, r2, #0
006b9d44  02 00 51 e1                                      cmp r1, r2
006b9d48  1c 20 a0 33                                      movlo r2, #0x1c
006b9d4c  92 01 01 30                                      mullo r1, r2, r1
006b9d50  75 0e 06 23                                      movwhs r0, #0x6e75
006b9d54  6b 0e 46 23                                      movths r0, #0x6e6b
006b9d58  01 00 93 37                                      ldrlo r0, [r3, r1]
006b9d5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b9d60, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory
; alias: _ZNK6glitch5scene24CDefaultSceneNodeFactory30getCreateableSceneNodeTypeNameEj
; demangled: glitch::scene::CDefaultSceneNodeFactory::getCreateableSceneNodeTypeName(unsigned int) const
; decoder-mode: arm
006b9d60  08 30 90 e5                                      ldr r3, [r0, #8]
006b9d64  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006b9d68  02 20 63 e0                                      rsb r2, r3, r2
006b9d6c  42 21 a0 e1                                      asr r2, r2, #2
006b9d70  82 01 82 e0                                      add r0, r2, r2, lsl #3
006b9d74  00 03 80 e0                                      add r0, r0, r0, lsl #6
006b9d78  80 01 82 e0                                      add r0, r2, r0, lsl #3
006b9d7c  80 07 80 e0                                      add r0, r0, r0, lsl #15
006b9d80  80 21 82 e0                                      add r2, r2, r0, lsl #3
006b9d84  00 20 62 e2                                      rsb r2, r2, #0
006b9d88  02 00 51 e1                                      cmp r1, r2
006b9d8c  1c 20 a0 33                                      movlo r2, #0x1c
006b9d90  92 31 23 30                                      mlalo r3, r2, r1, r3
006b9d94  00 00 a0 23                                      movhs r0, #0
006b9d98  18 00 93 35                                      ldrlo r0, [r3, #0x18]
006b9d9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b9da0, declared_size=132, range_size=132, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory
; alias: _ZNK6glitch5scene24CDefaultSceneNodeFactory30getCreateableSceneNodeTypeNameENS0_17E_SCENE_NODE_TYPEE
; demangled: glitch::scene::CDefaultSceneNodeFactory::getCreateableSceneNodeTypeName(glitch::scene::E_SCENE_NODE_TYPE) const
; decoder-mode: arm
006b9da0  30 00 2d e9                                      push {r4, r5}
006b9da4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006b9da8  08 30 90 e5                                      ldr r3, [r0, #8]
006b9dac  02 20 63 e0                                      rsb r2, r3, r2
006b9db0  42 21 a0 e1                                      asr r2, r2, #2
006b9db4  82 51 82 e0                                      add r5, r2, r2, lsl #3
006b9db8  05 53 85 e0                                      add r5, r5, r5, lsl #6
006b9dbc  85 51 82 e0                                      add r5, r2, r5, lsl #3
006b9dc0  85 57 85 e0                                      add r5, r5, r5, lsl #15
006b9dc4  85 51 82 e0                                      add r5, r2, r5, lsl #3
006b9dc8  00 50 65 e2                                      rsb r5, r5, #0
006b9dcc  00 00 55 e3                                      cmp r5, #0
006b9dd0  0d 00 00 0a                                      beq #0x6b9e0c
006b9dd4  00 20 93 e5                                      ldr r2, [r3]
006b9dd8  01 00 52 e1                                      cmp r2, r1
006b9ddc  1c 00 a0 13                                      movne r0, #0x1c
006b9de0  00 20 a0 13                                      movne r2, #0
006b9de4  04 00 00 1a                                      bne #0x6b9dfc
006b9de8  0b 00 00 ea                                      b #0x6b9e1c
006b9dec  00 40 9c e5                                      ldr r4, [ip]
006b9df0  1c 00 80 e2                                      add r0, r0, #0x1c
006b9df4  01 00 54 e1                                      cmp r4, r1
006b9df8  06 00 00 0a                                      beq #0x6b9e18
006b9dfc  01 20 82 e2                                      add r2, r2, #1
006b9e00  05 00 52 e1                                      cmp r2, r5
006b9e04  00 c0 83 e0                                      add ip, r3, r0
006b9e08  f7 ff ff 1a                                      bne #0x6b9dec
006b9e0c  00 00 a0 e3                                      mov r0, #0
006b9e10  30 00 bd e8                                      pop {r4, r5}
006b9e14  1e ff 2f e1                                      bx lr
006b9e18  0c 30 a0 e1                                      mov r3, ip
006b9e1c  18 00 93 e5                                      ldr r0, [r3, #0x18]
006b9e20  fa ff ff ea                                      b #0x6b9e10

; FUNCTION 0x006b9e58, declared_size=172, range_size=172, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory
; alias: _ZNK6glitch5scene24CDefaultSceneNodeFactory15getTypeFromNameEPKc
; demangled: glitch::scene::CDefaultSceneNodeFactory::getTypeFromName(char const*) const
; decoder-mode: arm
006b9e58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006b9e5c  00 60 a0 e1                                      mov r6, r0
006b9e60  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006b9e64  08 00 90 e5                                      ldr r0, [r0, #8]
006b9e68  01 70 a0 e1                                      mov r7, r1
006b9e6c  03 30 60 e0                                      rsb r3, r0, r3
006b9e70  43 31 a0 e1                                      asr r3, r3, #2
006b9e74  83 21 83 e0                                      add r2, r3, r3, lsl #3
006b9e78  02 23 82 e0                                      add r2, r2, r2, lsl #6
006b9e7c  82 21 83 e0                                      add r2, r3, r2, lsl #3
006b9e80  82 27 82 e0                                      add r2, r2, r2, lsl #15
006b9e84  82 31 83 e0                                      add r3, r3, r2, lsl #3
006b9e88  00 00 53 e3                                      cmp r3, #0
006b9e8c  19 00 00 0a                                      beq #0x6b9ef8
006b9e90  00 40 a0 e3                                      mov r4, #0
006b9e94  04 50 a0 e1                                      mov r5, r4
006b9e98  0c 00 00 ea                                      b #0x6b9ed0
006b9e9c  08 00 96 e5                                      ldr r0, [r6, #8]
006b9ea0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006b9ea4  1c 40 84 e2                                      add r4, r4, #0x1c
006b9ea8  03 30 60 e0                                      rsb r3, r0, r3
006b9eac  43 31 a0 e1                                      asr r3, r3, #2
006b9eb0  83 21 83 e0                                      add r2, r3, r3, lsl #3
006b9eb4  02 23 82 e0                                      add r2, r2, r2, lsl #6
006b9eb8  82 21 83 e0                                      add r2, r3, r2, lsl #3
006b9ebc  82 27 82 e0                                      add r2, r2, r2, lsl #15
006b9ec0  82 31 83 e0                                      add r3, r3, r2, lsl #3
006b9ec4  00 30 63 e2                                      rsb r3, r3, #0
006b9ec8  03 00 55 e1                                      cmp r5, r3
006b9ecc  09 00 00 2a                                      bhs #0x6b9ef8
006b9ed0  04 00 80 e0                                      add r0, r0, r4
006b9ed4  04 00 80 e2                                      add r0, r0, #4
006b9ed8  07 10 a0 e1                                      mov r1, r7
006b9edc  17 f1 f9 eb                                      bl #0x536340
006b9ee0  00 00 50 e3                                      cmp r0, #0
006b9ee4  01 50 85 e2                                      add r5, r5, #1
006b9ee8  eb ff ff 0a                                      beq #0x6b9e9c
006b9eec  08 30 96 e5                                      ldr r3, [r6, #8]
006b9ef0  04 00 93 e7                                      ldr r0, [r3, r4]
006b9ef4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006b9ef8  75 0e 06 e3                                      movw r0, #0x6e75
006b9efc  6b 0e 46 e3                                      movt r0, #0x6e6b
006b9f00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006b9f04, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory
; alias: _ZN6glitch5scene24CDefaultSceneNodeFactory12addSceneNodeEPKcPNS0_10ISceneNodeE
; demangled: glitch::scene::CDefaultSceneNodeFactory::addSceneNode(char const*, glitch::scene::ISceneNode*)
; decoder-mode: arm
006b9f04  70 40 2d e9                                      push {r4, r5, r6, lr}
006b9f08  00 30 90 e5                                      ldr r3, [r0]
006b9f0c  00 40 a0 e1                                      mov r4, r0
006b9f10  02 60 a0 e1                                      mov r6, r2
006b9f14  0c 50 93 e5                                      ldr r5, [r3, #0xc]
006b9f18  ce ff ff eb                                      bl #0x6b9e58
006b9f1c  06 20 a0 e1                                      mov r2, r6
006b9f20  00 10 a0 e1                                      mov r1, r0
006b9f24  04 00 a0 e1                                      mov r0, r4
006b9f28  35 ff 2f e1                                      blx r5
006b9f2c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006b9f30, declared_size=2116, range_size=2116, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory
; alias: _ZN6glitch5scene24CDefaultSceneNodeFactory12addSceneNodeENS0_17E_SCENE_NODE_TYPEEPNS0_10ISceneNodeE
; demangled: glitch::scene::CDefaultSceneNodeFactory::addSceneNode(glitch::scene::E_SCENE_NODE_TYPE, glitch::scene::ISceneNode*)
; decoder-mode: arm
006b9f30  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006b9f34  70 34 07 e3                                      movw r3, #0x7470
006b9f38  63 3c 46 e3                                      movt r3, #0x6c63
006b9f3c  03 00 51 e1                                      cmp r1, r3
006b9f40  1a de 4d e2                                      sub sp, sp, #0x1a0
006b9f44  00 60 a0 e1                                      mov r6, r0
006b9f48  02 50 a0 e1                                      mov r5, r2
006b9f4c  56 01 00 0a                                      beq #0x6ba4ac
006b9f50  14 00 00 da                                      ble #0x6b9fa8
006b9f54  6c 37 06 e3                                      movw r3, #0x676c
006b9f58  68 34 47 e3                                      movt r3, #0x7468
006b9f5c  03 00 51 e1                                      cmp r1, r3
006b9f60  d8 00 00 0a                                      beq #0x6ba2c8
006b9f64  45 00 00 da                                      ble #0x6ba080
006b9f68  64 3d 06 e3                                      movw r3, #0x6d64
006b9f6c  6d 39 47 e3                                      movt r3, #0x796d
006b9f70  03 00 51 e1                                      cmp r1, r3
006b9f74  6b 01 00 0a                                      beq #0x6ba528
006b9f78  65 3d 06 e3                                      movw r3, #0x6d65
006b9f7c  74 39 47 e3                                      movt r3, #0x7974
006b9f80  03 00 51 e1                                      cmp r1, r3
006b9f84  60 01 00 0a                                      beq #0x6ba50c
006b9f88  74 35 06 e3                                      movw r3, #0x6574
006b9f8c  78 34 47 e3                                      movt r3, #0x7478
006b9f90  03 00 51 e1                                      cmp r1, r3
006b9f94  ad 00 00 0a                                      beq #0x6ba250
006b9f98  00 40 a0 e3                                      mov r4, #0
006b9f9c  04 00 a0 e1                                      mov r0, r4
006b9fa0  1a de 8d e2                                      add sp, sp, #0x1a0
006b9fa4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006b9fa8  73 3b 06 e3                                      movw r3, #0x6b73
006b9fac  79 3f 45 e3                                      movt r3, #0x5f79
006b9fb0  03 00 51 e1                                      cmp r1, r3
006b9fb4  08 01 00 0a                                      beq #0x6ba3dc
006b9fb8  6b 00 00 da                                      ble #0x6ba16c
006b9fbc  6d 35 06 e3                                      movw r3, #0x656d
006b9fc0  73 38 46 e3                                      movt r3, #0x6873
006b9fc4  03 00 51 e1                                      cmp r1, r3
006b9fc8  e4 00 00 0a                                      beq #0x6ba360
006b9fcc  61 3d 06 e3                                      movw r3, #0x6d61
006b9fd0  73 38 46 e3                                      movt r3, #0x6873
006b9fd4  03 00 51 e1                                      cmp r1, r3
006b9fd8  c1 00 00 0a                                      beq #0x6ba2e4
006b9fdc  63 35 07 e3                                      movw r3, #0x7563
006b9fe0  62 35 46 e3                                      movt r3, #0x6562
006b9fe4  03 00 51 e1                                      cmp r1, r3
006b9fe8  ea ff ff 1a                                      bne #0x6b9f98
006b9fec  14 30 90 e5                                      ldr r3, [r0, #0x14]
006b9ff0  fe 45 a0 e3                                      mov r4, #0x3f800000
006b9ff4  67 6f 8d e2                                      add r6, sp, #0x19c
006b9ff8  06 18 a0 e3                                      mov r1, #0x60000
006b9ffc  14 20 93 e5                                      ldr r2, [r3, #0x14]
006ba000  03 10 81 e2                                      add r1, r1, #3
006ba004  04 30 a0 e1                                      mov r3, r4
006ba008  06 00 a0 e1                                      mov r0, r6
006ba00c  28 7b 00 eb                                      bl #0x6d8cb4
006ba010  00 30 a0 e3                                      mov r3, #0
006ba014  00 10 a0 e3                                      mov r1, #0
006ba018  05 0d a0 e3                                      mov r0, #0x140
006ba01c  60 30 8d e5                                      str r3, [sp, #0x60]
006ba020  54 41 8d e5                                      str r4, [sp, #0x154]
006ba024  58 31 8d e5                                      str r3, [sp, #0x158]
006ba028  5c 31 8d e5                                      str r3, [sp, #0x15c]
006ba02c  60 31 8d e5                                      str r3, [sp, #0x160]
006ba030  58 30 8d e5                                      str r3, [sp, #0x58]
006ba034  5c 30 8d e5                                      str r3, [sp, #0x5c]
006ba038  64 40 8d e5                                      str r4, [sp, #0x64]
006ba03c  4c 41 8d e5                                      str r4, [sp, #0x14c]
006ba040  50 41 8d e5                                      str r4, [sp, #0x150]
006ba044  58 e8 f9 eb                                      bl #0x5341ac
006ba048  58 c0 8d e2                                      add ip, sp, #0x58
006ba04c  00 c0 8d e5                                      str ip, [sp]
006ba050  06 10 a0 e1                                      mov r1, r6
006ba054  53 cf 8d e2                                      add ip, sp, #0x14c
006ba058  00 20 e0 e3                                      mvn r2, #0
006ba05c  56 3f 8d e2                                      add r3, sp, #0x158
006ba060  00 40 a0 e1                                      mov r4, r0
006ba064  04 c0 8d e5                                      str ip, [sp, #4]
006ba068  2a 2c fb eb                                      bl #0x585118
006ba06c  9c 01 9d e5                                      ldr r0, [sp, #0x19c]
006ba070  00 00 50 e3                                      cmp r0, #0
006ba074  2f 00 00 0a                                      beq #0x6ba138
006ba078  41 8d f1 eb                                      bl #0x31d584
006ba07c  2d 00 00 ea                                      b #0x6ba138
006ba080  73 30 07 e3                                      movw r3, #0x7073
006ba084  68 32 47 e3                                      movt r3, #0x7268
006ba088  03 00 51 e1                                      cmp r1, r3
006ba08c  4a 01 00 0a                                      beq #0x6ba5bc
006ba090  74 35 06 e3                                      movw r3, #0x6574
006ba094  72 32 47 e3                                      movt r3, #0x7272
006ba098  03 00 51 e1                                      cmp r1, r3
006ba09c  28 01 00 0a                                      beq #0x6ba544
006ba0a0  62 39 06 e3                                      movw r3, #0x6962
006ba0a4  6c 3c 46 e3                                      movt r3, #0x6c6c
006ba0a8  03 00 51 e1                                      cmp r1, r3
006ba0ac  b9 ff ff 1a                                      bne #0x6b9f98
006ba0b0  14 20 90 e5                                      ldr r2, [r0, #0x14]
006ba0b4  00 60 e0 e3                                      mvn r6, #0
006ba0b8  00 30 a0 e3                                      mov r3, #0
006ba0bc  00 10 a0 e3                                      mov r1, #0
006ba0c0  7d 0f a0 e3                                      mov r0, #0x1f4
006ba0c4  14 70 92 e5                                      ldr r7, [r2, #0x14]
006ba0c8  68 31 8d e5                                      str r3, [sp, #0x168]
006ba0cc  a4 30 8d e5                                      str r3, [sp, #0xa4]
006ba0d0  a8 30 8d e5                                      str r3, [sp, #0xa8]
006ba0d4  ac 30 8d e5                                      str r3, [sp, #0xac]
006ba0d8  64 31 8d e5                                      str r3, [sp, #0x164]
006ba0dc  74 61 cd e5                                      strb r6, [sp, #0x174]
006ba0e0  75 61 cd e5                                      strb r6, [sp, #0x175]
006ba0e4  76 61 cd e5                                      strb r6, [sp, #0x176]
006ba0e8  77 61 cd e5                                      strb r6, [sp, #0x177]
006ba0ec  70 61 cd e5                                      strb r6, [sp, #0x170]
006ba0f0  71 61 cd e5                                      strb r6, [sp, #0x171]
006ba0f4  72 61 cd e5                                      strb r6, [sp, #0x172]
006ba0f8  73 61 cd e5                                      strb r6, [sp, #0x173]
006ba0fc  2a e8 f9 eb                                      bl #0x5341ac
006ba100  59 cf 8d e2                                      add ip, sp, #0x164
006ba104  00 c0 8d e5                                      str ip, [sp]
006ba108  74 c1 9d e5                                      ldr ip, [sp, #0x174]
006ba10c  00 40 a0 e1                                      mov r4, r0
006ba110  07 10 a0 e1                                      mov r1, r7
006ba114  04 c0 8d e5                                      str ip, [sp, #4]
006ba118  70 c1 9d e5                                      ldr ip, [sp, #0x170]
006ba11c  06 20 a0 e1                                      mov r2, r6
006ba120  a4 30 8d e2                                      add r3, sp, #0xa4
006ba124  08 c0 8d e5                                      str ip, [sp, #8]
006ba128  f3 1d fb eb                                      bl #0x5818fc
006ba12c  00 00 54 e3                                      cmp r4, #0
006ba130  98 ff ff 0a                                      beq #0x6b9f98
006ba134  04 40 84 e2                                      add r4, r4, #4
006ba138  00 00 54 e3                                      cmp r4, #0
006ba13c  00 00 55 13                                      cmpne r5, #0
006ba140  95 ff ff 0a                                      beq #0x6b9f9c
006ba144  05 00 a0 e1                                      mov r0, r5
006ba148  00 30 95 e5                                      ldr r3, [r5]
006ba14c  04 10 a0 e1                                      mov r1, r4
006ba150  0f e0 a0 e1                                      mov lr, pc
006ba154  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
006ba158  00 30 94 e5                                      ldr r3, [r4]
006ba15c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006ba160  00 00 84 e0                                      add r0, r4, r0
006ba164  06 8d f1 eb                                      bl #0x31d584
006ba168  8b ff ff ea                                      b #0x6b9f9c
006ba16c  63 31 06 e3                                      movw r3, #0x6163
006ba170  6d 3d 44 e3                                      movt r3, #0x4d6d
006ba174  03 00 51 e1                                      cmp r1, r3
006ba178  4f 01 00 0a                                      beq #0x6ba6bc
006ba17c  63 31 06 e3                                      movw r3, #0x6163
006ba180  6d 3f 45 e3                                      movt r3, #0x5f6d
006ba184  03 00 51 e1                                      cmp r1, r3
006ba188  34 01 00 0a                                      beq #0x6ba660
006ba18c  63 31 06 e3                                      movw r3, #0x6163
006ba190  6d 36 44 e3                                      movt r3, #0x466d
006ba194  03 00 51 e1                                      cmp r1, r3
006ba198  7e ff ff 1a                                      bne #0x6b9f98
006ba19c  42 94 a0 e3                                      mov sb, #0x42000000
006ba1a0  00 70 a0 e3                                      mov r7, #0
006ba1a4  32 97 89 e2                                      add sb, sb, #0xc80000
006ba1a8  00 10 a0 e3                                      mov r1, #0
006ba1ac  e3 0f a0 e3                                      mov r0, #0x38c
006ba1b0  01 80 a0 e1                                      mov r8, r1
006ba1b4  bc 70 8d e5                                      str r7, [sp, #0xbc]
006ba1b8  c0 70 8d e5                                      str r7, [sp, #0xc0]
006ba1bc  c4 70 8d e5                                      str r7, [sp, #0xc4]
006ba1c0  b0 70 8d e5                                      str r7, [sp, #0xb0]
006ba1c4  b4 70 8d e5                                      str r7, [sp, #0xb4]
006ba1c8  b8 90 8d e5                                      str sb, [sp, #0xb8]
006ba1cc  f6 e7 f9 eb                                      bl #0x5341ac
006ba1d0  bc 20 8d e2                                      add r2, sp, #0xbc
006ba1d4  b0 30 8d e2                                      add r3, sp, #0xb0
006ba1d8  00 10 e0 e3                                      mvn r1, #0
006ba1dc  00 40 a0 e1                                      mov r4, r0
006ba1e0  00 80 8d e5                                      str r8, [sp]
006ba1e4  52 25 fb eb                                      bl #0x583734
006ba1e8  08 10 a0 e1                                      mov r1, r8
006ba1ec  64 00 a0 e3                                      mov r0, #0x64
006ba1f0  ed e7 f9 eb                                      bl #0x5341ac
006ba1f4  43 34 a0 e3                                      mov r3, #0x43000000
006ba1f8  18 10 96 e5                                      ldr r1, [r6, #0x18]
006ba1fc  00 a0 a0 e1                                      mov sl, r0
006ba200  09 20 a0 e1                                      mov r2, sb
006ba204  fa 38 83 e2                                      add r3, r3, #0xfa0000
006ba208  00 70 8d e5                                      str r7, [sp]
006ba20c  0c 80 8d e5                                      str r8, [sp, #0xc]
006ba210  04 80 8d e5                                      str r8, [sp, #4]
006ba214  08 80 8d e5                                      str r8, [sp, #8]
006ba218  3c 3b 00 eb                                      bl #0x6c8f10
006ba21c  0a 10 a0 e1                                      mov r1, sl
006ba220  04 00 a0 e1                                      mov r0, r4
006ba224  00 30 94 e5                                      ldr r3, [r4]
006ba228  0f e0 a0 e1                                      mov lr, pc
006ba22c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006ba230  00 30 9a e5                                      ldr r3, [sl]
006ba234  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006ba238  00 00 8a e0                                      add r0, sl, r0
006ba23c  d0 8c f1 eb                                      bl #0x31d584
006ba240  14 00 96 e5                                      ldr r0, [r6, #0x14]
006ba244  04 10 a0 e1                                      mov r1, r4
006ba248  9c 3b fb eb                                      bl #0x5890c0
006ba24c  b9 ff ff ea                                      b #0x6ba138
006ba250  14 20 90 e5                                      ldr r2, [r0, #0x14]
006ba254  00 30 a0 e3                                      mov r3, #0
006ba258  00 60 e0 e3                                      mvn r6, #0
006ba25c  2c 70 92 e5                                      ldr r7, [r2, #0x2c]
006ba260  00 10 a0 e3                                      mov r1, #0
006ba264  64 20 a0 e3                                      mov r2, #0x64
006ba268  6a 0f a0 e3                                      mov r0, #0x1a8
006ba26c  30 31 8d e5                                      str r3, [sp, #0x130]
006ba270  97 21 cd e5                                      strb r2, [sp, #0x197]
006ba274  28 31 8d e5                                      str r3, [sp, #0x128]
006ba278  2c 31 8d e5                                      str r3, [sp, #0x12c]
006ba27c  94 61 cd e5                                      strb r6, [sp, #0x194]
006ba280  95 61 cd e5                                      strb r6, [sp, #0x195]
006ba284  96 61 cd e5                                      strb r6, [sp, #0x196]
006ba288  c7 e7 f9 eb                                      bl #0x5341ac
006ba28c  dc c4 9f e5                                      ldr ip, [pc, #0x4dc]
006ba290  00 40 a0 e1                                      mov r4, r0
006ba294  4a ef 8d e2                                      add lr, sp, #0x128
006ba298  0c c0 8f e0                                      add ip, pc, ip
006ba29c  04 c0 8d e5                                      str ip, [sp, #4]
006ba2a0  94 c1 9d e5                                      ldr ip, [sp, #0x194]
006ba2a4  06 10 a0 e1                                      mov r1, r6
006ba2a8  07 30 a0 e1                                      mov r3, r7
006ba2ac  00 20 a0 e3                                      mov r2, #0
006ba2b0  00 e0 8d e5                                      str lr, [sp]
006ba2b4  08 c0 8d e5                                      str ip, [sp, #8]
006ba2b8  88 6e 00 eb                                      bl #0x6d5ce0
006ba2bc  00 00 54 e3                                      cmp r4, #0
006ba2c0  9b ff ff 1a                                      bne #0x6ba134
006ba2c4  33 ff ff ea                                      b #0x6b9f98
006ba2c8  00 10 a0 e3                                      mov r1, #0
006ba2cc  57 0f a0 e3                                      mov r0, #0x15c
006ba2d0  b5 e7 f9 eb                                      bl #0x5341ac
006ba2d4  01 10 a0 e3                                      mov r1, #1
006ba2d8  00 40 a0 e1                                      mov r4, r0
006ba2dc  83 27 fb eb                                      bl #0x5840f0
006ba2e0  94 ff ff ea                                      b #0x6ba138
006ba2e4  00 c0 a0 e3                                      mov ip, #0
006ba2e8  00 30 a0 e3                                      mov r3, #0
006ba2ec  fe 25 a0 e3                                      mov r2, #0x3f800000
006ba2f0  0c 10 a0 e1                                      mov r1, ip
006ba2f4  5f 0f a0 e3                                      mov r0, #0x17c
006ba2f8  20 30 8d e5                                      str r3, [sp, #0x20]
006ba2fc  94 20 8d e5                                      str r2, [sp, #0x94]
006ba300  6c c1 8d e5                                      str ip, [sp, #0x16c]
006ba304  98 30 8d e5                                      str r3, [sp, #0x98]
006ba308  9c 30 8d e5                                      str r3, [sp, #0x9c]
006ba30c  a0 30 8d e5                                      str r3, [sp, #0xa0]
006ba310  18 30 8d e5                                      str r3, [sp, #0x18]
006ba314  1c 30 8d e5                                      str r3, [sp, #0x1c]
006ba318  24 20 8d e5                                      str r2, [sp, #0x24]
006ba31c  8c 20 8d e5                                      str r2, [sp, #0x8c]
006ba320  90 20 8d e5                                      str r2, [sp, #0x90]
006ba324  a0 e7 f9 eb                                      bl #0x5341ac
006ba328  18 c0 8d e2                                      add ip, sp, #0x18
006ba32c  00 c0 8d e5                                      str ip, [sp]
006ba330  5b 1f 8d e2                                      add r1, sp, #0x16c
006ba334  8c c0 8d e2                                      add ip, sp, #0x8c
006ba338  00 20 e0 e3                                      mvn r2, #0
006ba33c  98 30 8d e2                                      add r3, sp, #0x98
006ba340  00 40 a0 e1                                      mov r4, r0
006ba344  04 c0 8d e5                                      str ip, [sp, #4]
006ba348  0b f2 00 eb                                      bl #0x6f6b7c
006ba34c  6c 01 9d e5                                      ldr r0, [sp, #0x16c]
006ba350  00 00 50 e3                                      cmp r0, #0
006ba354  77 ff ff 0a                                      beq #0x6ba138
006ba358  89 8c f1 eb                                      bl #0x31d584
006ba35c  75 ff ff ea                                      b #0x6ba138
006ba360  00 c0 a0 e3                                      mov ip, #0
006ba364  00 30 a0 e3                                      mov r3, #0
006ba368  fe 25 a0 e3                                      mov r2, #0x3f800000
006ba36c  0c 10 a0 e1                                      mov r1, ip
006ba370  05 0d a0 e3                                      mov r0, #0x140
006ba374  30 30 8d e5                                      str r3, [sp, #0x30]
006ba378  00 21 8d e5                                      str r2, [sp, #0x100]
006ba37c  78 c1 8d e5                                      str ip, [sp, #0x178]
006ba380  04 31 8d e5                                      str r3, [sp, #0x104]
006ba384  08 31 8d e5                                      str r3, [sp, #0x108]
006ba388  0c 31 8d e5                                      str r3, [sp, #0x10c]
006ba38c  28 30 8d e5                                      str r3, [sp, #0x28]
006ba390  2c 30 8d e5                                      str r3, [sp, #0x2c]
006ba394  34 20 8d e5                                      str r2, [sp, #0x34]
006ba398  f8 20 8d e5                                      str r2, [sp, #0xf8]
006ba39c  fc 20 8d e5                                      str r2, [sp, #0xfc]
006ba3a0  81 e7 f9 eb                                      bl #0x5341ac
006ba3a4  28 c0 8d e2                                      add ip, sp, #0x28
006ba3a8  00 c0 8d e5                                      str ip, [sp]
006ba3ac  5e 1f 8d e2                                      add r1, sp, #0x178
006ba3b0  f8 c0 8d e2                                      add ip, sp, #0xf8
006ba3b4  00 20 e0 e3                                      mvn r2, #0
006ba3b8  41 3f 8d e2                                      add r3, sp, #0x104
006ba3bc  00 40 a0 e1                                      mov r4, r0
006ba3c0  04 c0 8d e5                                      str ip, [sp, #4]
006ba3c4  53 2b fb eb                                      bl #0x585118
006ba3c8  78 01 9d e5                                      ldr r0, [sp, #0x178]
006ba3cc  00 00 50 e3                                      cmp r0, #0
006ba3d0  58 ff ff 0a                                      beq #0x6ba138
006ba3d4  6a 8c f1 eb                                      bl #0x31d584
006ba3d8  56 ff ff ea                                      b #0x6ba138
006ba3dc  14 20 90 e5                                      ldr r2, [r0, #0x14]
006ba3e0  00 30 a0 e3                                      mov r3, #0
006ba3e4  03 10 a0 e1                                      mov r1, r3
006ba3e8  5d 0f a0 e3                                      mov r0, #0x174
006ba3ec  14 60 92 e5                                      ldr r6, [r2, #0x14]
006ba3f0  90 31 8d e5                                      str r3, [sp, #0x190]
006ba3f4  8c 31 8d e5                                      str r3, [sp, #0x18c]
006ba3f8  88 31 8d e5                                      str r3, [sp, #0x188]
006ba3fc  84 31 8d e5                                      str r3, [sp, #0x184]
006ba400  80 31 8d e5                                      str r3, [sp, #0x180]
006ba404  7c 31 8d e5                                      str r3, [sp, #0x17c]
006ba408  67 e7 f9 eb                                      bl #0x5341ac
006ba40c  62 cf 8d e2                                      add ip, sp, #0x188
006ba410  00 c0 8d e5                                      str ip, [sp]
006ba414  61 cf 8d e2                                      add ip, sp, #0x184
006ba418  04 c0 8d e5                                      str ip, [sp, #4]
006ba41c  06 cd 8d e2                                      add ip, sp, #0x180
006ba420  08 c0 8d e5                                      str ip, [sp, #8]
006ba424  5f cf 8d e2                                      add ip, sp, #0x17c
006ba428  0c c0 8d e5                                      str ip, [sp, #0xc]
006ba42c  06 10 a0 e1                                      mov r1, r6
006ba430  00 c0 e0 e3                                      mvn ip, #0
006ba434  19 2e 8d e2                                      add r2, sp, #0x190
006ba438  63 3f 8d e2                                      add r3, sp, #0x18c
006ba43c  00 40 a0 e1                                      mov r4, r0
006ba440  10 c0 8d e5                                      str ip, [sp, #0x10]
006ba444  46 54 00 eb                                      bl #0x6cf564
006ba448  7c 01 9d e5                                      ldr r0, [sp, #0x17c]
006ba44c  00 00 50 e3                                      cmp r0, #0
006ba450  00 00 00 0a                                      beq #0x6ba458
006ba454  4a 8c f1 eb                                      bl #0x31d584
006ba458  80 01 9d e5                                      ldr r0, [sp, #0x180]
006ba45c  00 00 50 e3                                      cmp r0, #0
006ba460  00 00 00 0a                                      beq #0x6ba468
006ba464  46 8c f1 eb                                      bl #0x31d584
006ba468  84 01 9d e5                                      ldr r0, [sp, #0x184]
006ba46c  00 00 50 e3                                      cmp r0, #0
006ba470  00 00 00 0a                                      beq #0x6ba478
006ba474  42 8c f1 eb                                      bl #0x31d584
006ba478  88 01 9d e5                                      ldr r0, [sp, #0x188]
006ba47c  00 00 50 e3                                      cmp r0, #0
006ba480  00 00 00 0a                                      beq #0x6ba488
006ba484  3e 8c f1 eb                                      bl #0x31d584
006ba488  8c 01 9d e5                                      ldr r0, [sp, #0x18c]
006ba48c  00 00 50 e3                                      cmp r0, #0
006ba490  00 00 00 0a                                      beq #0x6ba498
006ba494  3a 8c f1 eb                                      bl #0x31d584
006ba498  90 01 9d e5                                      ldr r0, [sp, #0x190]
006ba49c  00 00 50 e3                                      cmp r0, #0
006ba4a0  24 ff ff 0a                                      beq #0x6ba138
006ba4a4  36 8c f1 eb                                      bl #0x31d584
006ba4a8  22 ff ff ea                                      b #0x6ba138
006ba4ac  00 30 a0 e3                                      mov r3, #0
006ba4b0  fe 25 a0 e3                                      mov r2, #0x3f800000
006ba4b4  00 10 a0 e3                                      mov r1, #0
006ba4b8  19 0e a0 e3                                      mov r0, #0x190
006ba4bc  7c 30 8d e5                                      str r3, [sp, #0x7c]
006ba4c0  70 20 8d e5                                      str r2, [sp, #0x70]
006ba4c4  80 30 8d e5                                      str r3, [sp, #0x80]
006ba4c8  84 30 8d e5                                      str r3, [sp, #0x84]
006ba4cc  88 30 8d e5                                      str r3, [sp, #0x88]
006ba4d0  74 30 8d e5                                      str r3, [sp, #0x74]
006ba4d4  78 30 8d e5                                      str r3, [sp, #0x78]
006ba4d8  68 20 8d e5                                      str r2, [sp, #0x68]
006ba4dc  6c 20 8d e5                                      str r2, [sp, #0x6c]
006ba4e0  31 e7 f9 eb                                      bl #0x5341ac
006ba4e4  74 c0 8d e2                                      add ip, sp, #0x74
006ba4e8  00 c0 8d e5                                      str ip, [sp]
006ba4ec  01 10 a0 e3                                      mov r1, #1
006ba4f0  68 c0 8d e2                                      add ip, sp, #0x68
006ba4f4  00 20 e0 e3                                      mvn r2, #0
006ba4f8  80 30 8d e2                                      add r3, sp, #0x80
006ba4fc  00 40 a0 e1                                      mov r4, r0
006ba500  04 c0 8d e5                                      str ip, [sp, #4]
006ba504  db 1f 00 eb                                      bl #0x6c2478
006ba508  0a ff ff ea                                      b #0x6ba138
006ba50c  00 10 a0 e3                                      mov r1, #0
006ba510  15 0e a0 e3                                      mov r0, #0x150
006ba514  24 e7 f9 eb                                      bl #0x5341ac
006ba518  00 10 e0 e3                                      mvn r1, #0
006ba51c  00 40 a0 e1                                      mov r4, r0
006ba520  2c 25 fb eb                                      bl #0x5839d8
006ba524  03 ff ff ea                                      b #0x6ba138
006ba528  00 10 a0 e3                                      mov r1, #0
006ba52c  65 0f a0 e3                                      mov r0, #0x194
006ba530  1d e7 f9 eb                                      bl #0x5341ac
006ba534  00 10 e0 e3                                      mvn r1, #0
006ba538  00 40 a0 e1                                      mov r4, r0
006ba53c  8e 04 00 eb                                      bl #0x6bb77c
006ba540  fc fe ff ea                                      b #0x6ba138
006ba544  00 30 a0 e3                                      mov r3, #0
006ba548  fe 25 a0 e3                                      mov r2, #0x3f800000
006ba54c  00 10 a0 e3                                      mov r1, #0
006ba550  85 0f a0 e3                                      mov r0, #0x214
006ba554  40 30 8d e5                                      str r3, [sp, #0x40]
006ba558  18 21 8d e5                                      str r2, [sp, #0x118]
006ba55c  1c 31 8d e5                                      str r3, [sp, #0x11c]
006ba560  20 31 8d e5                                      str r3, [sp, #0x120]
006ba564  24 31 8d e5                                      str r3, [sp, #0x124]
006ba568  38 30 8d e5                                      str r3, [sp, #0x38]
006ba56c  3c 30 8d e5                                      str r3, [sp, #0x3c]
006ba570  44 20 8d e5                                      str r2, [sp, #0x44]
006ba574  10 21 8d e5                                      str r2, [sp, #0x110]
006ba578  14 21 8d e5                                      str r2, [sp, #0x114]
006ba57c  0a e7 f9 eb                                      bl #0x5341ac
006ba580  47 ef 8d e2                                      add lr, sp, #0x11c
006ba584  08 e0 8d e5                                      str lr, [sp, #8]
006ba588  38 e0 8d e2                                      add lr, sp, #0x38
006ba58c  11 c0 a0 e3                                      mov ip, #0x11
006ba590  0c e0 8d e5                                      str lr, [sp, #0xc]
006ba594  1c 10 86 e2                                      add r1, r6, #0x1c
006ba598  11 ee 8d e2                                      add lr, sp, #0x110
006ba59c  00 20 e0 e3                                      mvn r2, #0
006ba5a0  04 30 a0 e3                                      mov r3, #4
006ba5a4  00 40 a0 e1                                      mov r4, r0
006ba5a8  04 c0 8d e5                                      str ip, [sp, #4]
006ba5ac  10 e0 8d e5                                      str lr, [sp, #0x10]
006ba5b0  00 c0 8d e5                                      str ip, [sp]
006ba5b4  68 5d 00 eb                                      bl #0x6d1b5c
006ba5b8  de fe ff ea                                      b #0x6ba138
006ba5bc  14 30 90 e5                                      ldr r3, [r0, #0x14]
006ba5c0  66 6f 8d e2                                      add r6, sp, #0x198
006ba5c4  06 18 a0 e3                                      mov r1, #0x60000
006ba5c8  14 20 93 e5                                      ldr r2, [r3, #0x14]
006ba5cc  01 31 a0 e3                                      mov r3, #0x40000000
006ba5d0  10 c0 a0 e3                                      mov ip, #0x10
006ba5d4  03 10 81 e2                                      add r1, r1, #3
006ba5d8  0a 36 83 e2                                      add r3, r3, #0xa00000
006ba5dc  06 00 a0 e1                                      mov r0, r6
006ba5e0  04 c0 8d e5                                      str ip, [sp, #4]
006ba5e4  00 c0 8d e5                                      str ip, [sp]
006ba5e8  86 74 00 eb                                      bl #0x6d7808
006ba5ec  00 30 a0 e3                                      mov r3, #0
006ba5f0  fe 25 a0 e3                                      mov r2, #0x3f800000
006ba5f4  00 10 a0 e3                                      mov r1, #0
006ba5f8  05 0d a0 e3                                      mov r0, #0x140
006ba5fc  50 30 8d e5                                      str r3, [sp, #0x50]
006ba600  3c 21 8d e5                                      str r2, [sp, #0x13c]
006ba604  40 31 8d e5                                      str r3, [sp, #0x140]
006ba608  44 31 8d e5                                      str r3, [sp, #0x144]
006ba60c  48 31 8d e5                                      str r3, [sp, #0x148]
006ba610  48 30 8d e5                                      str r3, [sp, #0x48]
006ba614  4c 30 8d e5                                      str r3, [sp, #0x4c]
006ba618  54 20 8d e5                                      str r2, [sp, #0x54]
006ba61c  34 21 8d e5                                      str r2, [sp, #0x134]
006ba620  38 21 8d e5                                      str r2, [sp, #0x138]
006ba624  e0 e6 f9 eb                                      bl #0x5341ac
006ba628  48 c0 8d e2                                      add ip, sp, #0x48
006ba62c  00 c0 8d e5                                      str ip, [sp]
006ba630  06 10 a0 e1                                      mov r1, r6
006ba634  4d cf 8d e2                                      add ip, sp, #0x134
006ba638  00 20 e0 e3                                      mvn r2, #0
006ba63c  05 3d 8d e2                                      add r3, sp, #0x140
006ba640  00 40 a0 e1                                      mov r4, r0
006ba644  04 c0 8d e5                                      str ip, [sp, #4]
006ba648  b2 2a fb eb                                      bl #0x585118
006ba64c  98 01 9d e5                                      ldr r0, [sp, #0x198]
006ba650  00 00 50 e3                                      cmp r0, #0
006ba654  b7 fe ff 0a                                      beq #0x6ba138
006ba658  c9 8b f1 eb                                      bl #0x31d584
006ba65c  b5 fe ff ea                                      b #0x6ba138
006ba660  42 24 a0 e3                                      mov r2, #0x42000000
006ba664  00 30 a0 e3                                      mov r3, #0
006ba668  32 27 82 e2                                      add r2, r2, #0xc80000
006ba66c  00 10 a0 e3                                      mov r1, #0
006ba670  e3 0f a0 e3                                      mov r0, #0x38c
006ba674  e4 30 8d e5                                      str r3, [sp, #0xe4]
006ba678  e8 20 8d e5                                      str r2, [sp, #0xe8]
006ba67c  ec 30 8d e5                                      str r3, [sp, #0xec]
006ba680  f0 30 8d e5                                      str r3, [sp, #0xf0]
006ba684  f4 30 8d e5                                      str r3, [sp, #0xf4]
006ba688  e0 30 8d e5                                      str r3, [sp, #0xe0]
006ba68c  c6 e6 f9 eb                                      bl #0x5341ac
006ba690  00 c0 a0 e3                                      mov ip, #0
006ba694  00 40 a0 e1                                      mov r4, r0
006ba698  00 10 e0 e3                                      mvn r1, #0
006ba69c  ec 20 8d e2                                      add r2, sp, #0xec
006ba6a0  e0 30 8d e2                                      add r3, sp, #0xe0
006ba6a4  00 c0 8d e5                                      str ip, [sp]
006ba6a8  21 24 fb eb                                      bl #0x583734
006ba6ac  14 00 96 e5                                      ldr r0, [r6, #0x14]
006ba6b0  04 10 a0 e1                                      mov r1, r4
006ba6b4  81 3a fb eb                                      bl #0x5890c0
006ba6b8  9e fe ff ea                                      b #0x6ba138
006ba6bc  42 24 a0 e3                                      mov r2, #0x42000000
006ba6c0  00 30 a0 e3                                      mov r3, #0
006ba6c4  00 10 a0 e3                                      mov r1, #0
006ba6c8  32 27 82 e2                                      add r2, r2, #0xc80000
006ba6cc  e3 0f a0 e3                                      mov r0, #0x38c
006ba6d0  01 70 a0 e1                                      mov r7, r1
006ba6d4  cc 30 8d e5                                      str r3, [sp, #0xcc]
006ba6d8  d0 20 8d e5                                      str r2, [sp, #0xd0]
006ba6dc  d4 30 8d e5                                      str r3, [sp, #0xd4]
006ba6e0  d8 30 8d e5                                      str r3, [sp, #0xd8]
006ba6e4  dc 30 8d e5                                      str r3, [sp, #0xdc]
006ba6e8  c8 30 8d e5                                      str r3, [sp, #0xc8]
006ba6ec  ae e6 f9 eb                                      bl #0x5341ac
006ba6f0  d4 20 8d e2                                      add r2, sp, #0xd4
006ba6f4  c8 30 8d e2                                      add r3, sp, #0xc8
006ba6f8  00 10 e0 e3                                      mvn r1, #0
006ba6fc  00 40 a0 e1                                      mov r4, r0
006ba700  00 70 8d e5                                      str r7, [sp]
006ba704  0a 24 fb eb                                      bl #0x583734
006ba708  07 10 a0 e1                                      mov r1, r7
006ba70c  80 00 a0 e3                                      mov r0, #0x80
006ba710  a5 e6 f9 eb                                      bl #0x5341ac
006ba714  00 20 08 e3                                      movw r2, #0x8000
006ba718  43 34 a0 e3                                      mov r3, #0x43000000
006ba71c  00 c0 08 e3                                      movw ip, #0x8000
006ba720  00 70 a0 e1                                      mov r7, r0
006ba724  bb c4 44 e3                                      movt ip, #0x44bb
006ba728  18 10 96 e5                                      ldr r1, [r6, #0x18]
006ba72c  bb 24 4c e3                                      movt r2, #0xc4bb
006ba730  12 37 83 e2                                      add r3, r3, #0x480000
006ba734  00 c0 8d e5                                      str ip, [sp]
006ba738  fe 3e 00 eb                                      bl #0x6ca338
006ba73c  07 10 a0 e1                                      mov r1, r7
006ba740  04 00 a0 e1                                      mov r0, r4
006ba744  00 30 94 e5                                      ldr r3, [r4]
006ba748  0f e0 a0 e1                                      mov lr, pc
006ba74c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006ba750  00 30 97 e5                                      ldr r3, [r7]
006ba754  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006ba758  00 00 87 e0                                      add r0, r7, r0
006ba75c  88 8b f1 eb                                      bl #0x31d584
006ba760  14 00 96 e5                                      ldr r0, [r6, #0x14]
006ba764  04 10 a0 e1                                      mov r1, r4
006ba768  54 3a fb eb                                      bl #0x5890c0
006ba76c  71 fe ff ea                                      b #0x6ba138
; mapping-symbol data/literal pool
006ba770  08 10 23 00                                      .byte 0x08, 0x10, 0x23, 0x00

; FUNCTION 0x006ba8f8, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory
; alias: _ZN6glitch5scene24CDefaultSceneNodeFactoryD1Ev
; demangled: glitch::scene::CDefaultSceneNodeFactory::~CDefaultSceneNodeFactory()
; decoder-mode: arm
006ba8f8  10 40 2d e9                                      push {r4, lr}
006ba8fc  34 30 9f e5                                      ldr r3, [pc, #0x34]
006ba900  34 20 9f e5                                      ldr r2, [pc, #0x34]
006ba904  00 40 a0 e1                                      mov r4, r0
006ba908  03 30 8f e0                                      add r3, pc, r3
006ba90c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
006ba910  02 20 93 e7                                      ldr r2, [r3, r2]
006ba914  00 00 50 e3                                      cmp r0, #0
006ba918  08 20 82 e2                                      add r2, r2, #8
006ba91c  00 20 84 e5                                      str r2, [r4]
006ba920  00 00 00 0a                                      beq #0x6ba928
006ba924  16 8b f1 eb                                      bl #0x31d584
006ba928  08 00 84 e2                                      add r0, r4, #8
006ba92c  da ff ff eb                                      bl #0x6ba89c
006ba930  04 00 a0 e1                                      mov r0, r4
006ba934  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006ba938  88 a1 2d 00 d8 45 00 00                          .byte 0x88, 0xa1, 0x2d, 0x00, 0xd8, 0x45, 0x00, 0x00

; FUNCTION 0x006ba940, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory
; alias: _ZN6glitch5scene24CDefaultSceneNodeFactoryD0Ev
; demangled: glitch::scene::CDefaultSceneNodeFactory::~CDefaultSceneNodeFactory()
; decoder-mode: arm
006ba940  10 40 2d e9                                      push {r4, lr}
006ba944  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006ba948  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006ba94c  00 40 a0 e1                                      mov r4, r0
006ba950  03 30 8f e0                                      add r3, pc, r3
006ba954  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
006ba958  02 20 93 e7                                      ldr r2, [r3, r2]
006ba95c  00 00 50 e3                                      cmp r0, #0
006ba960  08 20 82 e2                                      add r2, r2, #8
006ba964  00 20 84 e5                                      str r2, [r4]
006ba968  00 00 00 0a                                      beq #0x6ba970
006ba96c  04 8b f1 eb                                      bl #0x31d584
006ba970  08 00 84 e2                                      add r0, r4, #8
006ba974  c8 ff ff eb                                      bl #0x6ba89c
006ba978  04 00 a0 e1                                      mov r0, r4
006ba97c  4b 4e f1 eb                                      bl #0x30e2b0
006ba980  04 00 a0 e1                                      mov r0, r4
006ba984  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006ba988  40 a1 2d 00 d8 45 00 00                          .byte 0x40, 0xa1, 0x2d, 0x00, 0xd8, 0x45, 0x00, 0x00

; FUNCTION 0x006baae8, declared_size=1312, range_size=1312, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory
; alias: _ZN6glitch5scene24CDefaultSceneNodeFactoryC2EPNS0_13CSceneManagerEPNS_3gui14ICursorControlERKN5boost13intrusive_ptrINS_2io11IFileSystemEEE
; demangled: glitch::scene::CDefaultSceneNodeFactory::CDefaultSceneNodeFactory(glitch::scene::CSceneManager*, glitch::gui::ICursorControl*, boost::intrusive_ptr<glitch::io::IFileSystem> const&)
; decoder-mode: arm
006baae8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006baaec  c8 54 9f e5                                      ldr r5, [pc, #0x4c8]
006baaf0  c8 c4 9f e5                                      ldr ip, [pc, #0x4c8]
006baaf4  c8 64 9f e5                                      ldr r6, [pc, #0x4c8]
006baaf8  05 50 8f e0                                      add r5, pc, r5
006baafc  0c c0 95 e7                                      ldr ip, [r5, ip]
006bab00  06 e0 95 e7                                      ldr lr, [r5, r6]
006bab04  00 40 a0 e1                                      mov r4, r0
006bab08  08 c0 8c e2                                      add ip, ip, #8
006bab0c  00 00 a0 e3                                      mov r0, #0
006bab10  01 70 a0 e3                                      mov r7, #1
006bab14  00 e0 9e e5                                      ldr lr, [lr]
006bab18  18 20 84 e5                                      str r2, [r4, #0x18]
006bab1c  04 70 84 e5                                      str r7, [r4, #4]
006bab20  00 c0 84 e5                                      str ip, [r4]
006bab24  10 00 84 e5                                      str r0, [r4, #0x10]
006bab28  14 10 84 e5                                      str r1, [r4, #0x14]
006bab2c  08 00 84 e5                                      str r0, [r4, #8]
006bab30  0c 00 84 e5                                      str r0, [r4, #0xc]
006bab34  00 30 93 e5                                      ldr r3, [r3]
006bab38  72 df 4d e2                                      sub sp, sp, #0x1c8
006bab3c  c4 e1 8d e5                                      str lr, [sp, #0x1c4]
006bab40  00 00 53 e1                                      cmp r3, r0
006bab44  1c 30 84 e5                                      str r3, [r4, #0x1c]
006bab48  04 20 93 15                                      ldrne r2, [r3, #4]
006bab4c  6a 8f 8d e2                                      add r8, sp, #0x1a8
006bab50  63 15 07 e3                                      movw r1, #0x7563
006bab54  07 20 82 10                                      addne r2, r2, r7
006bab58  04 20 83 15                                      strne r2, [r3, #4]
006bab5c  64 24 9f e5                                      ldr r2, [pc, #0x464]
006bab60  62 15 46 e3                                      movt r1, #0x6562
006bab64  08 00 a0 e1                                      mov r0, r8
006bab68  02 20 8f e0                                      add r2, pc, r2
006bab6c  08 70 84 e2                                      add r7, r4, #8
006bab70  ff fe ff eb                                      bl #0x6ba774
006bab74  07 00 a0 e1                                      mov r0, r7
006bab78  08 10 a0 e1                                      mov r1, r8
006bab7c  83 ff ff eb                                      bl #0x6ba990
006bab80  c0 01 9d e5                                      ldr r0, [sp, #0x1c0]
006bab84  04 80 88 e2                                      add r8, r8, #4
006bab88  08 00 50 e1                                      cmp r0, r8
006bab8c  02 00 00 0a                                      beq #0x6bab9c
006bab90  00 00 50 e3                                      cmp r0, #0
006bab94  00 00 00 0a                                      beq #0x6bab9c
006bab98  2c 56 f1 eb                                      bl #0x310450
006bab9c  28 24 9f e5                                      ldr r2, [pc, #0x428]
006baba0  63 8f 8d e2                                      add r8, sp, #0x18c
006baba4  73 10 07 e3                                      movw r1, #0x7073
006baba8  02 20 8f e0                                      add r2, pc, r2
006babac  68 12 47 e3                                      movt r1, #0x7268
006babb0  08 00 a0 e1                                      mov r0, r8
006babb4  ee fe ff eb                                      bl #0x6ba774
006babb8  07 00 a0 e1                                      mov r0, r7
006babbc  08 10 a0 e1                                      mov r1, r8
006babc0  72 ff ff eb                                      bl #0x6ba990
006babc4  a4 01 9d e5                                      ldr r0, [sp, #0x1a4]
006babc8  04 80 88 e2                                      add r8, r8, #4
006babcc  08 00 50 e1                                      cmp r0, r8
006babd0  02 00 00 0a                                      beq #0x6babe0
006babd4  00 00 50 e3                                      cmp r0, #0
006babd8  00 00 00 0a                                      beq #0x6babe0
006babdc  1b 56 f1 eb                                      bl #0x310450
006babe0  e8 23 9f e5                                      ldr r2, [pc, #0x3e8]
006babe4  17 8e 8d e2                                      add r8, sp, #0x170
006babe8  74 15 06 e3                                      movw r1, #0x6574
006babec  02 20 8f e0                                      add r2, pc, r2
006babf0  78 14 47 e3                                      movt r1, #0x7478
006babf4  08 00 a0 e1                                      mov r0, r8
006babf8  dd fe ff eb                                      bl #0x6ba774
006babfc  07 00 a0 e1                                      mov r0, r7
006bac00  08 10 a0 e1                                      mov r1, r8
006bac04  61 ff ff eb                                      bl #0x6ba990
006bac08  88 01 9d e5                                      ldr r0, [sp, #0x188]
006bac0c  04 80 88 e2                                      add r8, r8, #4
006bac10  08 00 50 e1                                      cmp r0, r8
006bac14  02 00 00 0a                                      beq #0x6bac24
006bac18  00 00 50 e3                                      cmp r0, #0
006bac1c  00 00 00 0a                                      beq #0x6bac24
006bac20  0a 56 f1 eb                                      bl #0x310450
006bac24  a8 23 9f e5                                      ldr r2, [pc, #0x3a8]
006bac28  55 8f 8d e2                                      add r8, sp, #0x154
006bac2c  74 15 06 e3                                      movw r1, #0x6574
006bac30  02 20 8f e0                                      add r2, pc, r2
006bac34  72 12 47 e3                                      movt r1, #0x7272
006bac38  08 00 a0 e1                                      mov r0, r8
006bac3c  cc fe ff eb                                      bl #0x6ba774
006bac40  07 00 a0 e1                                      mov r0, r7
006bac44  08 10 a0 e1                                      mov r1, r8
006bac48  50 ff ff eb                                      bl #0x6ba990
006bac4c  6c 01 9d e5                                      ldr r0, [sp, #0x16c]
006bac50  04 80 88 e2                                      add r8, r8, #4
006bac54  08 00 50 e1                                      cmp r0, r8
006bac58  02 00 00 0a                                      beq #0x6bac68
006bac5c  00 00 50 e3                                      cmp r0, #0
006bac60  00 00 00 0a                                      beq #0x6bac68
006bac64  f9 55 f1 eb                                      bl #0x310450
006bac68  68 23 9f e5                                      ldr r2, [pc, #0x368]
006bac6c  4e 8f 8d e2                                      add r8, sp, #0x138
006bac70  73 1b 06 e3                                      movw r1, #0x6b73
006bac74  02 20 8f e0                                      add r2, pc, r2
006bac78  79 1f 45 e3                                      movt r1, #0x5f79
006bac7c  08 00 a0 e1                                      mov r0, r8
006bac80  bb fe ff eb                                      bl #0x6ba774
006bac84  07 00 a0 e1                                      mov r0, r7
006bac88  08 10 a0 e1                                      mov r1, r8
006bac8c  3f ff ff eb                                      bl #0x6ba990
006bac90  50 01 9d e5                                      ldr r0, [sp, #0x150]
006bac94  04 80 88 e2                                      add r8, r8, #4
006bac98  08 00 50 e1                                      cmp r0, r8
006bac9c  02 00 00 0a                                      beq #0x6bacac
006baca0  00 00 50 e3                                      cmp r0, #0
006baca4  00 00 00 0a                                      beq #0x6bacac
006baca8  e8 55 f1 eb                                      bl #0x310450
006bacac  28 23 9f e5                                      ldr r2, [pc, #0x328]
006bacb0  47 8f 8d e2                                      add r8, sp, #0x11c
006bacb4  73 18 06 e3                                      movw r1, #0x6873
006bacb8  02 20 8f e0                                      add r2, pc, r2
006bacbc  64 17 47 e3                                      movt r1, #0x7764
006bacc0  08 00 a0 e1                                      mov r0, r8
006bacc4  aa fe ff eb                                      bl #0x6ba774
006bacc8  07 00 a0 e1                                      mov r0, r7
006baccc  08 10 a0 e1                                      mov r1, r8
006bacd0  2e ff ff eb                                      bl #0x6ba990
006bacd4  34 01 9d e5                                      ldr r0, [sp, #0x134]
006bacd8  04 80 88 e2                                      add r8, r8, #4
006bacdc  08 00 50 e1                                      cmp r0, r8
006bace0  02 00 00 0a                                      beq #0x6bacf0
006bace4  00 00 50 e3                                      cmp r0, #0
006bace8  00 00 00 0a                                      beq #0x6bacf0
006bacec  d7 55 f1 eb                                      bl #0x310450
006bacf0  e8 22 9f e5                                      ldr r2, [pc, #0x2e8]
006bacf4  01 8c 8d e2                                      add r8, sp, #0x100
006bacf8  6d 15 06 e3                                      movw r1, #0x656d
006bacfc  02 20 8f e0                                      add r2, pc, r2
006bad00  73 18 46 e3                                      movt r1, #0x6873
006bad04  08 00 a0 e1                                      mov r0, r8
006bad08  99 fe ff eb                                      bl #0x6ba774
006bad0c  07 00 a0 e1                                      mov r0, r7
006bad10  08 10 a0 e1                                      mov r1, r8
006bad14  1d ff ff eb                                      bl #0x6ba990
006bad18  18 01 9d e5                                      ldr r0, [sp, #0x118]
006bad1c  04 80 88 e2                                      add r8, r8, #4
006bad20  08 00 50 e1                                      cmp r0, r8
006bad24  02 00 00 0a                                      beq #0x6bad34
006bad28  00 00 50 e3                                      cmp r0, #0
006bad2c  00 00 00 0a                                      beq #0x6bad34
006bad30  c6 55 f1 eb                                      bl #0x310450
006bad34  a8 22 9f e5                                      ldr r2, [pc, #0x2a8]
006bad38  e4 80 8d e2                                      add r8, sp, #0xe4
006bad3c  6c 17 06 e3                                      movw r1, #0x676c
006bad40  02 20 8f e0                                      add r2, pc, r2
006bad44  68 14 47 e3                                      movt r1, #0x7468
006bad48  08 00 a0 e1                                      mov r0, r8
006bad4c  88 fe ff eb                                      bl #0x6ba774
006bad50  07 00 a0 e1                                      mov r0, r7
006bad54  08 10 a0 e1                                      mov r1, r8
006bad58  0c ff ff eb                                      bl #0x6ba990
006bad5c  fc 00 9d e5                                      ldr r0, [sp, #0xfc]
006bad60  04 80 88 e2                                      add r8, r8, #4
006bad64  08 00 50 e1                                      cmp r0, r8
006bad68  02 00 00 0a                                      beq #0x6bad78
006bad6c  00 00 50 e3                                      cmp r0, #0
006bad70  00 00 00 0a                                      beq #0x6bad78
006bad74  b5 55 f1 eb                                      bl #0x310450
006bad78  68 22 9f e5                                      ldr r2, [pc, #0x268]
006bad7c  c8 80 8d e2                                      add r8, sp, #0xc8
006bad80  65 1d 06 e3                                      movw r1, #0x6d65
006bad84  02 20 8f e0                                      add r2, pc, r2
006bad88  74 19 47 e3                                      movt r1, #0x7974
006bad8c  08 00 a0 e1                                      mov r0, r8
006bad90  77 fe ff eb                                      bl #0x6ba774
006bad94  07 00 a0 e1                                      mov r0, r7
006bad98  08 10 a0 e1                                      mov r1, r8
006bad9c  fb fe ff eb                                      bl #0x6ba990
006bada0  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
006bada4  04 80 88 e2                                      add r8, r8, #4
006bada8  08 00 50 e1                                      cmp r0, r8
006badac  02 00 00 0a                                      beq #0x6badbc
006badb0  00 00 50 e3                                      cmp r0, #0
006badb4  00 00 00 0a                                      beq #0x6badbc
006badb8  a4 55 f1 eb                                      bl #0x310450
006badbc  28 22 9f e5                                      ldr r2, [pc, #0x228]
006badc0  ac 80 8d e2                                      add r8, sp, #0xac
006badc4  64 1d 06 e3                                      movw r1, #0x6d64
006badc8  02 20 8f e0                                      add r2, pc, r2
006badcc  6d 19 47 e3                                      movt r1, #0x796d
006badd0  08 00 a0 e1                                      mov r0, r8
006badd4  66 fe ff eb                                      bl #0x6ba774
006badd8  07 00 a0 e1                                      mov r0, r7
006baddc  08 10 a0 e1                                      mov r1, r8
006bade0  ea fe ff eb                                      bl #0x6ba990
006bade4  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
006bade8  04 80 88 e2                                      add r8, r8, #4
006badec  08 00 50 e1                                      cmp r0, r8
006badf0  02 00 00 0a                                      beq #0x6bae00
006badf4  00 00 50 e3                                      cmp r0, #0
006badf8  00 00 00 0a                                      beq #0x6bae00
006badfc  93 55 f1 eb                                      bl #0x310450
006bae00  e8 21 9f e5                                      ldr r2, [pc, #0x1e8]
006bae04  90 80 8d e2                                      add r8, sp, #0x90
006bae08  63 11 06 e3                                      movw r1, #0x6163
006bae0c  02 20 8f e0                                      add r2, pc, r2
006bae10  6d 1f 45 e3                                      movt r1, #0x5f6d
006bae14  08 00 a0 e1                                      mov r0, r8
006bae18  55 fe ff eb                                      bl #0x6ba774
006bae1c  07 00 a0 e1                                      mov r0, r7
006bae20  08 10 a0 e1                                      mov r1, r8
006bae24  d9 fe ff eb                                      bl #0x6ba990
006bae28  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
006bae2c  04 80 88 e2                                      add r8, r8, #4
006bae30  08 00 50 e1                                      cmp r0, r8
006bae34  02 00 00 0a                                      beq #0x6bae44
006bae38  00 00 50 e3                                      cmp r0, #0
006bae3c  00 00 00 0a                                      beq #0x6bae44
006bae40  82 55 f1 eb                                      bl #0x310450
006bae44  a8 21 9f e5                                      ldr r2, [pc, #0x1a8]
006bae48  74 80 8d e2                                      add r8, sp, #0x74
006bae4c  62 19 06 e3                                      movw r1, #0x6962
006bae50  02 20 8f e0                                      add r2, pc, r2
006bae54  6c 1c 46 e3                                      movt r1, #0x6c6c
006bae58  08 00 a0 e1                                      mov r0, r8
006bae5c  44 fe ff eb                                      bl #0x6ba774
006bae60  07 00 a0 e1                                      mov r0, r7
006bae64  08 10 a0 e1                                      mov r1, r8
006bae68  c8 fe ff eb                                      bl #0x6ba990
006bae6c  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
006bae70  04 80 88 e2                                      add r8, r8, #4
006bae74  08 00 50 e1                                      cmp r0, r8
006bae78  02 00 00 0a                                      beq #0x6bae88
006bae7c  00 00 50 e3                                      cmp r0, #0
006bae80  00 00 00 0a                                      beq #0x6bae88
006bae84  71 55 f1 eb                                      bl #0x310450
006bae88  68 21 9f e5                                      ldr r2, [pc, #0x168]
006bae8c  58 80 8d e2                                      add r8, sp, #0x58
006bae90  61 1d 06 e3                                      movw r1, #0x6d61
006bae94  02 20 8f e0                                      add r2, pc, r2
006bae98  73 18 46 e3                                      movt r1, #0x6873
006bae9c  08 00 a0 e1                                      mov r0, r8
006baea0  33 fe ff eb                                      bl #0x6ba774
006baea4  07 00 a0 e1                                      mov r0, r7
006baea8  08 10 a0 e1                                      mov r1, r8
006baeac  b7 fe ff eb                                      bl #0x6ba990
006baeb0  70 00 9d e5                                      ldr r0, [sp, #0x70]
006baeb4  04 80 88 e2                                      add r8, r8, #4
006baeb8  08 00 50 e1                                      cmp r0, r8
006baebc  02 00 00 0a                                      beq #0x6baecc
006baec0  00 00 50 e3                                      cmp r0, #0
006baec4  00 00 00 0a                                      beq #0x6baecc
006baec8  60 55 f1 eb                                      bl #0x310450
006baecc  28 21 9f e5                                      ldr r2, [pc, #0x128]
006baed0  3c 80 8d e2                                      add r8, sp, #0x3c
006baed4  70 14 07 e3                                      movw r1, #0x7470
006baed8  02 20 8f e0                                      add r2, pc, r2
006baedc  63 1c 46 e3                                      movt r1, #0x6c63
006baee0  08 00 a0 e1                                      mov r0, r8
006baee4  22 fe ff eb                                      bl #0x6ba774
006baee8  07 00 a0 e1                                      mov r0, r7
006baeec  08 10 a0 e1                                      mov r1, r8
006baef0  a6 fe ff eb                                      bl #0x6ba990
006baef4  54 00 9d e5                                      ldr r0, [sp, #0x54]
006baef8  04 80 88 e2                                      add r8, r8, #4
006baefc  08 00 50 e1                                      cmp r0, r8
006baf00  02 00 00 0a                                      beq #0x6baf10
006baf04  00 00 50 e3                                      cmp r0, #0
006baf08  00 00 00 0a                                      beq #0x6baf10
006baf0c  4f 55 f1 eb                                      bl #0x310450
006baf10  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
006baf14  20 80 8d e2                                      add r8, sp, #0x20
006baf18  63 11 06 e3                                      movw r1, #0x6163
006baf1c  02 20 8f e0                                      add r2, pc, r2
006baf20  6d 1d 44 e3                                      movt r1, #0x4d6d
006baf24  08 00 a0 e1                                      mov r0, r8
006baf28  11 fe ff eb                                      bl #0x6ba774
006baf2c  07 00 a0 e1                                      mov r0, r7
006baf30  08 10 a0 e1                                      mov r1, r8
006baf34  95 fe ff eb                                      bl #0x6ba990
006baf38  38 00 9d e5                                      ldr r0, [sp, #0x38]
006baf3c  04 80 88 e2                                      add r8, r8, #4
006baf40  08 00 50 e1                                      cmp r0, r8
006baf44  02 00 00 0a                                      beq #0x6baf54
006baf48  00 00 50 e3                                      cmp r0, #0
006baf4c  00 00 00 0a                                      beq #0x6baf54
006baf50  3e 55 f1 eb                                      bl #0x310450
006baf54  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
006baf58  04 80 8d e2                                      add r8, sp, #4
006baf5c  63 11 06 e3                                      movw r1, #0x6163
006baf60  02 20 8f e0                                      add r2, pc, r2
006baf64  6d 16 44 e3                                      movt r1, #0x466d
006baf68  08 00 a0 e1                                      mov r0, r8
006baf6c  00 fe ff eb                                      bl #0x6ba774
006baf70  07 00 a0 e1                                      mov r0, r7
006baf74  08 10 a0 e1                                      mov r1, r8
006baf78  84 fe ff eb                                      bl #0x6ba990
006baf7c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006baf80  04 80 88 e2                                      add r8, r8, #4
006baf84  08 00 50 e1                                      cmp r0, r8
006baf88  02 00 00 0a                                      beq #0x6baf98
006baf8c  00 00 50 e3                                      cmp r0, #0
006baf90  00 00 00 0a                                      beq #0x6baf98
006baf94  2d 55 f1 eb                                      bl #0x310450
006baf98  06 30 95 e7                                      ldr r3, [r5, r6]
006baf9c  c4 21 9d e5                                      ldr r2, [sp, #0x1c4]
006bafa0  04 00 a0 e1                                      mov r0, r4
006bafa4  00 30 93 e5                                      ldr r3, [r3]
006bafa8  03 00 52 e1                                      cmp r2, r3
006bafac  01 00 00 1a                                      bne #0x6bafb8
006bafb0  72 df 8d e2                                      add sp, sp, #0x1c8
006bafb4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006bafb8  d4 4c f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006bafbc  98 9f 2d 00 d8 45 00 00 ac 40 00 00 58 07 23 00  .byte 0x98, 0x9f, 0x2d, 0x00, 0xd8, 0x45, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0x07, 0x23, 0x00
006bafcc  90 47 22 00 24 e1 20 00 98 06 23 00 5c 06 23 00  .byte 0x90, 0x47, 0x22, 0x00, 0x24, 0xe1, 0x20, 0x00, 0x98, 0x06, 0x23, 0x00, 0x5c, 0x06, 0x23, 0x00
006bafdc  20 06 23 00 ec 05 23 00 f0 7d 22 00 6c 05 23 00  .byte 0x20, 0x06, 0x23, 0x00, 0xec, 0x05, 0x23, 0x00, 0xf0, 0x7d, 0x22, 0x00, 0x6c, 0x05, 0x23, 0x00
006bafec  30 05 23 00 0c a7 20 00 a8 73 20 00 7c 04 23 00  .byte 0x30, 0x05, 0x23, 0x00, 0x0c, 0xa7, 0x20, 0x00, 0xa8, 0x73, 0x20, 0x00, 0x7c, 0x04, 0x23, 0x00
006baffc  48 04 23 00 74 03 23 00 b8 49 20 00              .byte 0x48, 0x04, 0x23, 0x00, 0x74, 0x03, 0x23, 0x00, 0xb8, 0x49, 0x20, 0x00

; FUNCTION 0x006bb008, declared_size=1312, range_size=1312, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory
; alias: _ZN6glitch5scene24CDefaultSceneNodeFactoryC1EPNS0_13CSceneManagerEPNS_3gui14ICursorControlERKN5boost13intrusive_ptrINS_2io11IFileSystemEEE
; demangled: glitch::scene::CDefaultSceneNodeFactory::CDefaultSceneNodeFactory(glitch::scene::CSceneManager*, glitch::gui::ICursorControl*, boost::intrusive_ptr<glitch::io::IFileSystem> const&)
; decoder-mode: arm
006bb008  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006bb00c  c8 54 9f e5                                      ldr r5, [pc, #0x4c8]
006bb010  c8 c4 9f e5                                      ldr ip, [pc, #0x4c8]
006bb014  c8 64 9f e5                                      ldr r6, [pc, #0x4c8]
006bb018  05 50 8f e0                                      add r5, pc, r5
006bb01c  0c c0 95 e7                                      ldr ip, [r5, ip]
006bb020  06 e0 95 e7                                      ldr lr, [r5, r6]
006bb024  00 40 a0 e1                                      mov r4, r0
006bb028  08 c0 8c e2                                      add ip, ip, #8
006bb02c  00 00 a0 e3                                      mov r0, #0
006bb030  01 70 a0 e3                                      mov r7, #1
006bb034  00 e0 9e e5                                      ldr lr, [lr]
006bb038  18 20 84 e5                                      str r2, [r4, #0x18]
006bb03c  04 70 84 e5                                      str r7, [r4, #4]
006bb040  00 c0 84 e5                                      str ip, [r4]
006bb044  10 00 84 e5                                      str r0, [r4, #0x10]
006bb048  14 10 84 e5                                      str r1, [r4, #0x14]
006bb04c  08 00 84 e5                                      str r0, [r4, #8]
006bb050  0c 00 84 e5                                      str r0, [r4, #0xc]
006bb054  00 30 93 e5                                      ldr r3, [r3]
006bb058  72 df 4d e2                                      sub sp, sp, #0x1c8
006bb05c  c4 e1 8d e5                                      str lr, [sp, #0x1c4]
006bb060  00 00 53 e1                                      cmp r3, r0
006bb064  1c 30 84 e5                                      str r3, [r4, #0x1c]
006bb068  04 20 93 15                                      ldrne r2, [r3, #4]
006bb06c  6a 8f 8d e2                                      add r8, sp, #0x1a8
006bb070  63 15 07 e3                                      movw r1, #0x7563
006bb074  07 20 82 10                                      addne r2, r2, r7
006bb078  04 20 83 15                                      strne r2, [r3, #4]
006bb07c  64 24 9f e5                                      ldr r2, [pc, #0x464]
006bb080  62 15 46 e3                                      movt r1, #0x6562
006bb084  08 00 a0 e1                                      mov r0, r8
006bb088  02 20 8f e0                                      add r2, pc, r2
006bb08c  08 70 84 e2                                      add r7, r4, #8
006bb090  b7 fd ff eb                                      bl #0x6ba774
006bb094  07 00 a0 e1                                      mov r0, r7
006bb098  08 10 a0 e1                                      mov r1, r8
006bb09c  3b fe ff eb                                      bl #0x6ba990
006bb0a0  c0 01 9d e5                                      ldr r0, [sp, #0x1c0]
006bb0a4  04 80 88 e2                                      add r8, r8, #4
006bb0a8  08 00 50 e1                                      cmp r0, r8
006bb0ac  02 00 00 0a                                      beq #0x6bb0bc
006bb0b0  00 00 50 e3                                      cmp r0, #0
006bb0b4  00 00 00 0a                                      beq #0x6bb0bc
006bb0b8  e4 54 f1 eb                                      bl #0x310450
006bb0bc  28 24 9f e5                                      ldr r2, [pc, #0x428]
006bb0c0  63 8f 8d e2                                      add r8, sp, #0x18c
006bb0c4  73 10 07 e3                                      movw r1, #0x7073
006bb0c8  02 20 8f e0                                      add r2, pc, r2
006bb0cc  68 12 47 e3                                      movt r1, #0x7268
006bb0d0  08 00 a0 e1                                      mov r0, r8
006bb0d4  a6 fd ff eb                                      bl #0x6ba774
006bb0d8  07 00 a0 e1                                      mov r0, r7
006bb0dc  08 10 a0 e1                                      mov r1, r8
006bb0e0  2a fe ff eb                                      bl #0x6ba990
006bb0e4  a4 01 9d e5                                      ldr r0, [sp, #0x1a4]
006bb0e8  04 80 88 e2                                      add r8, r8, #4
006bb0ec  08 00 50 e1                                      cmp r0, r8
006bb0f0  02 00 00 0a                                      beq #0x6bb100
006bb0f4  00 00 50 e3                                      cmp r0, #0
006bb0f8  00 00 00 0a                                      beq #0x6bb100
006bb0fc  d3 54 f1 eb                                      bl #0x310450
006bb100  e8 23 9f e5                                      ldr r2, [pc, #0x3e8]
006bb104  17 8e 8d e2                                      add r8, sp, #0x170
006bb108  74 15 06 e3                                      movw r1, #0x6574
006bb10c  02 20 8f e0                                      add r2, pc, r2
006bb110  78 14 47 e3                                      movt r1, #0x7478
006bb114  08 00 a0 e1                                      mov r0, r8
006bb118  95 fd ff eb                                      bl #0x6ba774
006bb11c  07 00 a0 e1                                      mov r0, r7
006bb120  08 10 a0 e1                                      mov r1, r8
006bb124  19 fe ff eb                                      bl #0x6ba990
006bb128  88 01 9d e5                                      ldr r0, [sp, #0x188]
006bb12c  04 80 88 e2                                      add r8, r8, #4
006bb130  08 00 50 e1                                      cmp r0, r8
006bb134  02 00 00 0a                                      beq #0x6bb144
006bb138  00 00 50 e3                                      cmp r0, #0
006bb13c  00 00 00 0a                                      beq #0x6bb144
006bb140  c2 54 f1 eb                                      bl #0x310450
006bb144  a8 23 9f e5                                      ldr r2, [pc, #0x3a8]
006bb148  55 8f 8d e2                                      add r8, sp, #0x154
006bb14c  74 15 06 e3                                      movw r1, #0x6574
006bb150  02 20 8f e0                                      add r2, pc, r2
006bb154  72 12 47 e3                                      movt r1, #0x7272
006bb158  08 00 a0 e1                                      mov r0, r8
006bb15c  84 fd ff eb                                      bl #0x6ba774
006bb160  07 00 a0 e1                                      mov r0, r7
006bb164  08 10 a0 e1                                      mov r1, r8
006bb168  08 fe ff eb                                      bl #0x6ba990
006bb16c  6c 01 9d e5                                      ldr r0, [sp, #0x16c]
006bb170  04 80 88 e2                                      add r8, r8, #4
006bb174  08 00 50 e1                                      cmp r0, r8
006bb178  02 00 00 0a                                      beq #0x6bb188
006bb17c  00 00 50 e3                                      cmp r0, #0
006bb180  00 00 00 0a                                      beq #0x6bb188
006bb184  b1 54 f1 eb                                      bl #0x310450
006bb188  68 23 9f e5                                      ldr r2, [pc, #0x368]
006bb18c  4e 8f 8d e2                                      add r8, sp, #0x138
006bb190  73 1b 06 e3                                      movw r1, #0x6b73
006bb194  02 20 8f e0                                      add r2, pc, r2
006bb198  79 1f 45 e3                                      movt r1, #0x5f79
006bb19c  08 00 a0 e1                                      mov r0, r8
006bb1a0  73 fd ff eb                                      bl #0x6ba774
006bb1a4  07 00 a0 e1                                      mov r0, r7
006bb1a8  08 10 a0 e1                                      mov r1, r8
006bb1ac  f7 fd ff eb                                      bl #0x6ba990
006bb1b0  50 01 9d e5                                      ldr r0, [sp, #0x150]
006bb1b4  04 80 88 e2                                      add r8, r8, #4
006bb1b8  08 00 50 e1                                      cmp r0, r8
006bb1bc  02 00 00 0a                                      beq #0x6bb1cc
006bb1c0  00 00 50 e3                                      cmp r0, #0
006bb1c4  00 00 00 0a                                      beq #0x6bb1cc
006bb1c8  a0 54 f1 eb                                      bl #0x310450
006bb1cc  28 23 9f e5                                      ldr r2, [pc, #0x328]
006bb1d0  47 8f 8d e2                                      add r8, sp, #0x11c
006bb1d4  73 18 06 e3                                      movw r1, #0x6873
006bb1d8  02 20 8f e0                                      add r2, pc, r2
006bb1dc  64 17 47 e3                                      movt r1, #0x7764
006bb1e0  08 00 a0 e1                                      mov r0, r8
006bb1e4  62 fd ff eb                                      bl #0x6ba774
006bb1e8  07 00 a0 e1                                      mov r0, r7
006bb1ec  08 10 a0 e1                                      mov r1, r8
006bb1f0  e6 fd ff eb                                      bl #0x6ba990
006bb1f4  34 01 9d e5                                      ldr r0, [sp, #0x134]
006bb1f8  04 80 88 e2                                      add r8, r8, #4
006bb1fc  08 00 50 e1                                      cmp r0, r8
006bb200  02 00 00 0a                                      beq #0x6bb210
006bb204  00 00 50 e3                                      cmp r0, #0
006bb208  00 00 00 0a                                      beq #0x6bb210
006bb20c  8f 54 f1 eb                                      bl #0x310450
006bb210  e8 22 9f e5                                      ldr r2, [pc, #0x2e8]
006bb214  01 8c 8d e2                                      add r8, sp, #0x100
006bb218  6d 15 06 e3                                      movw r1, #0x656d
006bb21c  02 20 8f e0                                      add r2, pc, r2
006bb220  73 18 46 e3                                      movt r1, #0x6873
006bb224  08 00 a0 e1                                      mov r0, r8
006bb228  51 fd ff eb                                      bl #0x6ba774
006bb22c  07 00 a0 e1                                      mov r0, r7
006bb230  08 10 a0 e1                                      mov r1, r8
006bb234  d5 fd ff eb                                      bl #0x6ba990
006bb238  18 01 9d e5                                      ldr r0, [sp, #0x118]
006bb23c  04 80 88 e2                                      add r8, r8, #4
006bb240  08 00 50 e1                                      cmp r0, r8
006bb244  02 00 00 0a                                      beq #0x6bb254
006bb248  00 00 50 e3                                      cmp r0, #0
006bb24c  00 00 00 0a                                      beq #0x6bb254
006bb250  7e 54 f1 eb                                      bl #0x310450
006bb254  a8 22 9f e5                                      ldr r2, [pc, #0x2a8]
006bb258  e4 80 8d e2                                      add r8, sp, #0xe4
006bb25c  6c 17 06 e3                                      movw r1, #0x676c
006bb260  02 20 8f e0                                      add r2, pc, r2
006bb264  68 14 47 e3                                      movt r1, #0x7468
006bb268  08 00 a0 e1                                      mov r0, r8
006bb26c  40 fd ff eb                                      bl #0x6ba774
006bb270  07 00 a0 e1                                      mov r0, r7
006bb274  08 10 a0 e1                                      mov r1, r8
006bb278  c4 fd ff eb                                      bl #0x6ba990
006bb27c  fc 00 9d e5                                      ldr r0, [sp, #0xfc]
006bb280  04 80 88 e2                                      add r8, r8, #4
006bb284  08 00 50 e1                                      cmp r0, r8
006bb288  02 00 00 0a                                      beq #0x6bb298
006bb28c  00 00 50 e3                                      cmp r0, #0
006bb290  00 00 00 0a                                      beq #0x6bb298
006bb294  6d 54 f1 eb                                      bl #0x310450
006bb298  68 22 9f e5                                      ldr r2, [pc, #0x268]
006bb29c  c8 80 8d e2                                      add r8, sp, #0xc8
006bb2a0  65 1d 06 e3                                      movw r1, #0x6d65
006bb2a4  02 20 8f e0                                      add r2, pc, r2
006bb2a8  74 19 47 e3                                      movt r1, #0x7974
006bb2ac  08 00 a0 e1                                      mov r0, r8
006bb2b0  2f fd ff eb                                      bl #0x6ba774
006bb2b4  07 00 a0 e1                                      mov r0, r7
006bb2b8  08 10 a0 e1                                      mov r1, r8
006bb2bc  b3 fd ff eb                                      bl #0x6ba990
006bb2c0  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
006bb2c4  04 80 88 e2                                      add r8, r8, #4
006bb2c8  08 00 50 e1                                      cmp r0, r8
006bb2cc  02 00 00 0a                                      beq #0x6bb2dc
006bb2d0  00 00 50 e3                                      cmp r0, #0
006bb2d4  00 00 00 0a                                      beq #0x6bb2dc
006bb2d8  5c 54 f1 eb                                      bl #0x310450
006bb2dc  28 22 9f e5                                      ldr r2, [pc, #0x228]
006bb2e0  ac 80 8d e2                                      add r8, sp, #0xac
006bb2e4  64 1d 06 e3                                      movw r1, #0x6d64
006bb2e8  02 20 8f e0                                      add r2, pc, r2
006bb2ec  6d 19 47 e3                                      movt r1, #0x796d
006bb2f0  08 00 a0 e1                                      mov r0, r8
006bb2f4  1e fd ff eb                                      bl #0x6ba774
006bb2f8  07 00 a0 e1                                      mov r0, r7
006bb2fc  08 10 a0 e1                                      mov r1, r8
006bb300  a2 fd ff eb                                      bl #0x6ba990
006bb304  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
006bb308  04 80 88 e2                                      add r8, r8, #4
006bb30c  08 00 50 e1                                      cmp r0, r8
006bb310  02 00 00 0a                                      beq #0x6bb320
006bb314  00 00 50 e3                                      cmp r0, #0
006bb318  00 00 00 0a                                      beq #0x6bb320
006bb31c  4b 54 f1 eb                                      bl #0x310450
006bb320  e8 21 9f e5                                      ldr r2, [pc, #0x1e8]
006bb324  90 80 8d e2                                      add r8, sp, #0x90
006bb328  63 11 06 e3                                      movw r1, #0x6163
006bb32c  02 20 8f e0                                      add r2, pc, r2
006bb330  6d 1f 45 e3                                      movt r1, #0x5f6d
006bb334  08 00 a0 e1                                      mov r0, r8
006bb338  0d fd ff eb                                      bl #0x6ba774
006bb33c  07 00 a0 e1                                      mov r0, r7
006bb340  08 10 a0 e1                                      mov r1, r8
006bb344  91 fd ff eb                                      bl #0x6ba990
006bb348  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
006bb34c  04 80 88 e2                                      add r8, r8, #4
006bb350  08 00 50 e1                                      cmp r0, r8
006bb354  02 00 00 0a                                      beq #0x6bb364
006bb358  00 00 50 e3                                      cmp r0, #0
006bb35c  00 00 00 0a                                      beq #0x6bb364
006bb360  3a 54 f1 eb                                      bl #0x310450
006bb364  a8 21 9f e5                                      ldr r2, [pc, #0x1a8]
006bb368  74 80 8d e2                                      add r8, sp, #0x74
006bb36c  62 19 06 e3                                      movw r1, #0x6962
006bb370  02 20 8f e0                                      add r2, pc, r2
006bb374  6c 1c 46 e3                                      movt r1, #0x6c6c
006bb378  08 00 a0 e1                                      mov r0, r8
006bb37c  fc fc ff eb                                      bl #0x6ba774
006bb380  07 00 a0 e1                                      mov r0, r7
006bb384  08 10 a0 e1                                      mov r1, r8
006bb388  80 fd ff eb                                      bl #0x6ba990
006bb38c  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
006bb390  04 80 88 e2                                      add r8, r8, #4
006bb394  08 00 50 e1                                      cmp r0, r8
006bb398  02 00 00 0a                                      beq #0x6bb3a8
006bb39c  00 00 50 e3                                      cmp r0, #0
006bb3a0  00 00 00 0a                                      beq #0x6bb3a8
006bb3a4  29 54 f1 eb                                      bl #0x310450
006bb3a8  68 21 9f e5                                      ldr r2, [pc, #0x168]
006bb3ac  58 80 8d e2                                      add r8, sp, #0x58
006bb3b0  61 1d 06 e3                                      movw r1, #0x6d61
006bb3b4  02 20 8f e0                                      add r2, pc, r2
006bb3b8  73 18 46 e3                                      movt r1, #0x6873
006bb3bc  08 00 a0 e1                                      mov r0, r8
006bb3c0  eb fc ff eb                                      bl #0x6ba774
006bb3c4  07 00 a0 e1                                      mov r0, r7
006bb3c8  08 10 a0 e1                                      mov r1, r8
006bb3cc  6f fd ff eb                                      bl #0x6ba990
006bb3d0  70 00 9d e5                                      ldr r0, [sp, #0x70]
006bb3d4  04 80 88 e2                                      add r8, r8, #4
006bb3d8  08 00 50 e1                                      cmp r0, r8
006bb3dc  02 00 00 0a                                      beq #0x6bb3ec
006bb3e0  00 00 50 e3                                      cmp r0, #0
006bb3e4  00 00 00 0a                                      beq #0x6bb3ec
006bb3e8  18 54 f1 eb                                      bl #0x310450
006bb3ec  28 21 9f e5                                      ldr r2, [pc, #0x128]
006bb3f0  3c 80 8d e2                                      add r8, sp, #0x3c
006bb3f4  70 14 07 e3                                      movw r1, #0x7470
006bb3f8  02 20 8f e0                                      add r2, pc, r2
006bb3fc  63 1c 46 e3                                      movt r1, #0x6c63
006bb400  08 00 a0 e1                                      mov r0, r8
006bb404  da fc ff eb                                      bl #0x6ba774
006bb408  07 00 a0 e1                                      mov r0, r7
006bb40c  08 10 a0 e1                                      mov r1, r8
006bb410  5e fd ff eb                                      bl #0x6ba990
006bb414  54 00 9d e5                                      ldr r0, [sp, #0x54]
006bb418  04 80 88 e2                                      add r8, r8, #4
006bb41c  08 00 50 e1                                      cmp r0, r8
006bb420  02 00 00 0a                                      beq #0x6bb430
006bb424  00 00 50 e3                                      cmp r0, #0
006bb428  00 00 00 0a                                      beq #0x6bb430
006bb42c  07 54 f1 eb                                      bl #0x310450
006bb430  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
006bb434  20 80 8d e2                                      add r8, sp, #0x20
006bb438  63 11 06 e3                                      movw r1, #0x6163
006bb43c  02 20 8f e0                                      add r2, pc, r2
006bb440  6d 1d 44 e3                                      movt r1, #0x4d6d
006bb444  08 00 a0 e1                                      mov r0, r8
006bb448  c9 fc ff eb                                      bl #0x6ba774
006bb44c  07 00 a0 e1                                      mov r0, r7
006bb450  08 10 a0 e1                                      mov r1, r8
006bb454  4d fd ff eb                                      bl #0x6ba990
006bb458  38 00 9d e5                                      ldr r0, [sp, #0x38]
006bb45c  04 80 88 e2                                      add r8, r8, #4
006bb460  08 00 50 e1                                      cmp r0, r8
006bb464  02 00 00 0a                                      beq #0x6bb474
006bb468  00 00 50 e3                                      cmp r0, #0
006bb46c  00 00 00 0a                                      beq #0x6bb474
006bb470  f6 53 f1 eb                                      bl #0x310450
006bb474  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
006bb478  04 80 8d e2                                      add r8, sp, #4
006bb47c  63 11 06 e3                                      movw r1, #0x6163
006bb480  02 20 8f e0                                      add r2, pc, r2
006bb484  6d 16 44 e3                                      movt r1, #0x466d
006bb488  08 00 a0 e1                                      mov r0, r8
006bb48c  b8 fc ff eb                                      bl #0x6ba774
006bb490  07 00 a0 e1                                      mov r0, r7
006bb494  08 10 a0 e1                                      mov r1, r8
006bb498  3c fd ff eb                                      bl #0x6ba990
006bb49c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006bb4a0  04 80 88 e2                                      add r8, r8, #4
006bb4a4  08 00 50 e1                                      cmp r0, r8
006bb4a8  02 00 00 0a                                      beq #0x6bb4b8
006bb4ac  00 00 50 e3                                      cmp r0, #0
006bb4b0  00 00 00 0a                                      beq #0x6bb4b8
006bb4b4  e5 53 f1 eb                                      bl #0x310450
006bb4b8  06 30 95 e7                                      ldr r3, [r5, r6]
006bb4bc  c4 21 9d e5                                      ldr r2, [sp, #0x1c4]
006bb4c0  04 00 a0 e1                                      mov r0, r4
006bb4c4  00 30 93 e5                                      ldr r3, [r3]
006bb4c8  03 00 52 e1                                      cmp r2, r3
006bb4cc  01 00 00 1a                                      bne #0x6bb4d8
006bb4d0  72 df 8d e2                                      add sp, sp, #0x1c8
006bb4d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006bb4d8  8c 4b f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006bb4dc  78 9a 2d 00 d8 45 00 00 ac 40 00 00 38 02 23 00  .byte 0x78, 0x9a, 0x2d, 0x00, 0xd8, 0x45, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x38, 0x02, 0x23, 0x00
006bb4ec  70 42 22 00 04 dc 20 00 78 01 23 00 3c 01 23 00  .byte 0x70, 0x42, 0x22, 0x00, 0x04, 0xdc, 0x20, 0x00, 0x78, 0x01, 0x23, 0x00, 0x3c, 0x01, 0x23, 0x00
006bb4fc  00 01 23 00 cc 00 23 00 d0 78 22 00 4c 00 23 00  .byte 0x00, 0x01, 0x23, 0x00, 0xcc, 0x00, 0x23, 0x00, 0xd0, 0x78, 0x22, 0x00, 0x4c, 0x00, 0x23, 0x00
006bb50c  10 00 23 00 ec a1 20 00 88 6e 20 00 5c ff 22 00  .byte 0x10, 0x00, 0x23, 0x00, 0xec, 0xa1, 0x20, 0x00, 0x88, 0x6e, 0x20, 0x00, 0x5c, 0xff, 0x22, 0x00
006bb51c  28 ff 22 00 54 fe 22 00 98 44 20 00              .byte 0x28, 0xff, 0x22, 0x00, 0x54, 0xfe, 0x22, 0x00, 0x98, 0x44, 0x20, 0x00
