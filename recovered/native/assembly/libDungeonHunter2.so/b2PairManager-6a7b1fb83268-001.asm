; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e3dbc, declared_size=152, range_size=152, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManagerC2Ev
; demangled: b2PairManager::b2PairManager()
; decoder-mode: arm
007e3dbc  04 40 2d e5                                      str r4, [sp, #-4]!
007e3dc0  00 30 a0 e3                                      mov r3, #0
007e3dc4  03 20 80 e0                                      add r2, r0, r3
007e3dc8  02 30 83 e2                                      add r3, r3, #2
007e3dcc  01 27 82 e2                                      add r2, r2, #0x40000
007e3dd0  00 10 e0 e3                                      mvn r1, #0
007e3dd4  02 09 53 e3                                      cmp r3, #0x8000
007e3dd8  b4 11 c2 e1                                      strh r1, [r2, #0x14]
007e3ddc  f8 ff ff 1a                                      bne #0x7e3dc4
007e3de0  03 38 a0 e3                                      mov r3, #0x30000
007e3de4  08 30 83 e2                                      add r3, r3, #8
007e3de8  00 20 a0 e3                                      mov r2, #0
007e3dec  b3 20 80 e1                                      strh r2, [r0, r3]
007e3df0  00 10 a0 e3                                      mov r1, #0
007e3df4  00 30 a0 e1                                      mov r3, r0
007e3df8  01 20 a0 e3                                      mov r2, #1
007e3dfc  01 c0 04 e3                                      movw ip, #0x4001
007e3e00  b0 21 c3 e1                                      strh r2, [r3, #0x10]
007e3e04  01 20 82 e2                                      add r2, r2, #1
007e3e08  00 40 e0 e3                                      mvn r4, #0
007e3e0c  0c 00 52 e1                                      cmp r2, ip
007e3e10  bc 40 c3 e1                                      strh r4, [r3, #0xc]
007e3e14  be 40 c3 e1                                      strh r4, [r3, #0xe]
007e3e18  08 10 83 e5                                      str r1, [r3, #8]
007e3e1c  b2 11 c3 e1                                      strh r1, [r3, #0x12]
007e3e20  0c 30 83 e2                                      add r3, r3, #0xc
007e3e24  f5 ff ff 1a                                      bne #0x7e3e00
007e3e28  03 c8 a0 e3                                      mov ip, #0x30000
007e3e2c  0c 20 a0 e1                                      mov r2, ip
007e3e30  01 37 a0 e3                                      mov r3, #0x40000
007e3e34  04 c0 8c e2                                      add ip, ip, #4
007e3e38  0c 20 82 e2                                      add r2, r2, #0xc
007e3e3c  10 30 83 e2                                      add r3, r3, #0x10
007e3e40  bc 40 80 e1                                      strh r4, [r0, ip]
007e3e44  02 10 80 e7                                      str r1, [r0, r2]
007e3e48  03 10 80 e7                                      str r1, [r0, r3]
007e3e4c  10 00 bd e8                                      ldm sp!, {r4}
007e3e50  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e3e54, declared_size=152, range_size=152, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManagerC1Ev
; demangled: b2PairManager::b2PairManager()
; decoder-mode: arm
007e3e54  04 40 2d e5                                      str r4, [sp, #-4]!
007e3e58  00 30 a0 e3                                      mov r3, #0
007e3e5c  03 20 80 e0                                      add r2, r0, r3
007e3e60  02 30 83 e2                                      add r3, r3, #2
007e3e64  01 27 82 e2                                      add r2, r2, #0x40000
007e3e68  00 10 e0 e3                                      mvn r1, #0
007e3e6c  02 09 53 e3                                      cmp r3, #0x8000
007e3e70  b4 11 c2 e1                                      strh r1, [r2, #0x14]
007e3e74  f8 ff ff 1a                                      bne #0x7e3e5c
007e3e78  03 38 a0 e3                                      mov r3, #0x30000
007e3e7c  08 30 83 e2                                      add r3, r3, #8
007e3e80  00 20 a0 e3                                      mov r2, #0
007e3e84  b3 20 80 e1                                      strh r2, [r0, r3]
007e3e88  00 10 a0 e3                                      mov r1, #0
007e3e8c  00 30 a0 e1                                      mov r3, r0
007e3e90  01 20 a0 e3                                      mov r2, #1
007e3e94  01 c0 04 e3                                      movw ip, #0x4001
007e3e98  b0 21 c3 e1                                      strh r2, [r3, #0x10]
007e3e9c  01 20 82 e2                                      add r2, r2, #1
007e3ea0  00 40 e0 e3                                      mvn r4, #0
007e3ea4  0c 00 52 e1                                      cmp r2, ip
007e3ea8  bc 40 c3 e1                                      strh r4, [r3, #0xc]
007e3eac  be 40 c3 e1                                      strh r4, [r3, #0xe]
007e3eb0  08 10 83 e5                                      str r1, [r3, #8]
007e3eb4  b2 11 c3 e1                                      strh r1, [r3, #0x12]
007e3eb8  0c 30 83 e2                                      add r3, r3, #0xc
007e3ebc  f5 ff ff 1a                                      bne #0x7e3e98
007e3ec0  03 c8 a0 e3                                      mov ip, #0x30000
007e3ec4  0c 20 a0 e1                                      mov r2, ip
007e3ec8  01 37 a0 e3                                      mov r3, #0x40000
007e3ecc  04 c0 8c e2                                      add ip, ip, #4
007e3ed0  0c 20 82 e2                                      add r2, r2, #0xc
007e3ed4  10 30 83 e2                                      add r3, r3, #0x10
007e3ed8  bc 40 80 e1                                      strh r4, [r0, ip]
007e3edc  02 10 80 e7                                      str r1, [r0, r2]
007e3ee0  03 10 80 e7                                      str r1, [r0, r3]
007e3ee4  10 00 bd e8                                      ldm sp!, {r4}
007e3ee8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e3eec, declared_size=8, range_size=8, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManager10InitializeEP12b2BroadPhaseP14b2PairCallback
; demangled: b2PairManager::Initialize(b2BroadPhase*, b2PairCallback*)
; decoder-mode: arm
007e3eec  06 00 80 e8                                      stm r0, {r1, r2}
007e3ef0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e3ef4, declared_size=116, range_size=116, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManager4FindEiij
; demangled: b2PairManager::Find(int, int, unsigned int)
; decoder-mode: arm
007e3ef4  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
007e3ef8  02 38 83 e2                                      add r3, r3, #0x20000
007e3efc  83 30 80 e0                                      add r3, r0, r3, lsl #1
007e3f00  b4 31 d3 e1                                      ldrh r3, [r3, #0x14]
007e3f04  ff cf 0f e3                                      movw ip, #0xffff
007e3f08  0c 00 53 e1                                      cmp r3, ip
007e3f0c  09 00 00 0a                                      beq #0x7e3f38
007e3f10  0c 40 a0 e3                                      mov r4, #0xc
007e3f14  94 03 28 e0                                      mla r8, r4, r3, r0
007e3f18  94 03 06 e0                                      mul r6, r4, r3
007e3f1c  08 50 88 e2                                      add r5, r8, #8
007e3f20  b4 70 d5 e1                                      ldrh r7, [r5, #4]
007e3f24  07 00 51 e1                                      cmp r1, r7
007e3f28  05 00 00 0a                                      beq #0x7e3f44
007e3f2c  b0 31 d8 e1                                      ldrh r3, [r8, #0x10]
007e3f30  0c 00 53 e1                                      cmp r3, ip
007e3f34  f6 ff ff 1a                                      bne #0x7e3f14
007e3f38  00 00 a0 e3                                      mov r0, #0
007e3f3c  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
007e3f40  1e ff 2f e1                                      bx lr
007e3f44  b6 50 d5 e1                                      ldrh r5, [r5, #6]
007e3f48  05 00 52 e1                                      cmp r2, r5
007e3f4c  f6 ff ff 1a                                      bne #0x7e3f2c
007e3f50  ff 2f 0f e3                                      movw r2, #0xffff
007e3f54  02 00 53 e1                                      cmp r3, r2
007e3f58  08 60 86 12                                      addne r6, r6, #8
007e3f5c  06 00 80 10                                      addne r0, r0, r6
007e3f60  f5 ff ff 1a                                      bne #0x7e3f3c
007e3f64  f3 ff ff ea                                      b #0x7e3f38

; FUNCTION 0x007e3f68, declared_size=64, range_size=64, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManager4FindEii
; demangled: b2PairManager::Find(int, int)
; decoder-mode: arm
007e3f68  02 00 51 e1                                      cmp r1, r2
007e3f6c  01 30 a0 c1                                      movgt r3, r1
007e3f70  02 10 a0 c1                                      movgt r1, r2
007e3f74  03 20 a0 c1                                      movgt r2, r3
007e3f78  02 38 81 e1                                      orr r3, r1, r2, lsl #16
007e3f7c  03 c0 e0 e1                                      mvn ip, r3
007e3f80  83 37 8c e0                                      add r3, ip, r3, lsl #15
007e3f84  09 c8 00 e3                                      movw ip, #0x809
007e3f88  23 36 23 e0                                      eor r3, r3, r3, lsr #12
007e3f8c  03 31 83 e0                                      add r3, r3, r3, lsl #2
007e3f90  23 32 23 e0                                      eor r3, r3, r3, lsr #4
007e3f94  9c 03 03 e0                                      mul r3, ip, r3
007e3f98  23 38 23 e0                                      eor r3, r3, r3, lsr #16
007e3f9c  03 39 a0 e1                                      lsl r3, r3, #0x12
007e3fa0  23 39 a0 e1                                      lsr r3, r3, #0x12
007e3fa4  d2 ff ff ea                                      b #0x7e3ef4

; FUNCTION 0x007e3fa8, declared_size=220, range_size=220, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManager7AddPairEii
; demangled: b2PairManager::AddPair(int, int)
; decoder-mode: arm
007e3fa8  02 00 51 e1                                      cmp r1, r2
007e3fac  01 30 a0 c1                                      movgt r3, r1
007e3fb0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e3fb4  01 40 a0 e1                                      mov r4, r1
007e3fb8  02 50 a0 e1                                      mov r5, r2
007e3fbc  02 40 a0 c1                                      movgt r4, r2
007e3fc0  03 50 a0 c1                                      movgt r5, r3
007e3fc4  05 38 84 e1                                      orr r3, r4, r5, lsl #16
007e3fc8  03 60 e0 e1                                      mvn r6, r3
007e3fcc  83 67 86 e0                                      add r6, r6, r3, lsl #15
007e3fd0  09 38 00 e3                                      movw r3, #0x809
007e3fd4  26 66 26 e0                                      eor r6, r6, r6, lsr #12
007e3fd8  04 10 a0 e1                                      mov r1, r4
007e3fdc  06 61 86 e0                                      add r6, r6, r6, lsl #2
007e3fe0  05 20 a0 e1                                      mov r2, r5
007e3fe4  26 62 26 e0                                      eor r6, r6, r6, lsr #4
007e3fe8  93 06 06 e0                                      mul r6, r3, r6
007e3fec  00 70 a0 e1                                      mov r7, r0
007e3ff0  26 68 26 e0                                      eor r6, r6, r6, lsr #16
007e3ff4  06 69 a0 e1                                      lsl r6, r6, #0x12
007e3ff8  26 69 a0 e1                                      lsr r6, r6, #0x12
007e3ffc  06 30 a0 e1                                      mov r3, r6
007e4000  bb ff ff eb                                      bl #0x7e3ef4
007e4004  00 30 50 e2                                      subs r3, r0, #0
007e4008  01 00 00 0a                                      beq #0x7e4014
007e400c  03 00 a0 e1                                      mov r0, r3
007e4010  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007e4014  03 28 a0 e3                                      mov r2, #0x30000
007e4018  08 20 82 e2                                      add r2, r2, #8
007e401c  b2 10 97 e1                                      ldrh r1, [r7, r2]
007e4020  0c 30 a0 e3                                      mov r3, #0xc
007e4024  02 68 86 e2                                      add r6, r6, #0x20000
007e4028  93 01 03 e0                                      mul r3, r3, r1
007e402c  08 60 86 e2                                      add r6, r6, #8
007e4030  03 c0 87 e0                                      add ip, r7, r3
007e4034  b0 a1 dc e1                                      ldrh sl, [ip, #0x10]
007e4038  08 80 8c e2                                      add r8, ip, #8
007e403c  86 60 87 e0                                      add r6, r7, r6, lsl #1
007e4040  b2 a0 87 e1                                      strh sl, [r7, r2]
007e4044  b6 50 c8 e1                                      strh r5, [r8, #6]
007e4048  b4 40 c8 e1                                      strh r4, [r8, #4]
007e404c  08 00 8c e5                                      str r0, [ip, #8]
007e4050  b2 01 cc e1                                      strh r0, [ip, #0x12]
007e4054  b4 00 d6 e1                                      ldrh r0, [r6, #4]
007e4058  03 28 a0 e3                                      mov r2, #0x30000
007e405c  0c 20 82 e2                                      add r2, r2, #0xc
007e4060  b0 01 cc e1                                      strh r0, [ip, #0x10]
007e4064  b4 10 c6 e1                                      strh r1, [r6, #4]
007e4068  02 10 97 e7                                      ldr r1, [r7, r2]
007e406c  08 30 83 e2                                      add r3, r3, #8
007e4070  03 30 87 e0                                      add r3, r7, r3
007e4074  01 10 81 e2                                      add r1, r1, #1
007e4078  02 10 87 e7                                      str r1, [r7, r2]
007e407c  03 00 a0 e1                                      mov r0, r3
007e4080  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007e4084, declared_size=264, range_size=264, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManager10RemovePairEii
; demangled: b2PairManager::RemovePair(int, int)
; decoder-mode: arm
007e4084  02 00 51 e1                                      cmp r1, r2
007e4088  01 30 a0 c1                                      movgt r3, r1
007e408c  02 10 a0 c1                                      movgt r1, r2
007e4090  03 20 a0 c1                                      movgt r2, r3
007e4094  02 38 81 e1                                      orr r3, r1, r2, lsl #16
007e4098  03 c0 e0 e1                                      mvn ip, r3
007e409c  83 37 8c e0                                      add r3, ip, r3, lsl #15
007e40a0  09 c8 00 e3                                      movw ip, #0x809
007e40a4  23 36 23 e0                                      eor r3, r3, r3, lsr #12
007e40a8  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
007e40ac  03 31 83 e0                                      add r3, r3, r3, lsl #2
007e40b0  ff 9f 0f e3                                      movw sb, #0xffff
007e40b4  23 32 23 e0                                      eor r3, r3, r3, lsr #4
007e40b8  9c 03 03 e0                                      mul r3, ip, r3
007e40bc  23 38 23 e0                                      eor r3, r3, r3, lsr #16
007e40c0  03 39 a0 e1                                      lsl r3, r3, #0x12
007e40c4  23 39 a0 e1                                      lsr r3, r3, #0x12
007e40c8  02 a8 83 e2                                      add sl, r3, #0x20000
007e40cc  08 a0 8a e2                                      add sl, sl, #8
007e40d0  8a a0 80 e0                                      add sl, r0, sl, lsl #1
007e40d4  b4 30 da e1                                      ldrh r3, [sl, #4]
007e40d8  09 00 53 e1                                      cmp r3, sb
007e40dc  26 00 00 0a                                      beq #0x7e417c
007e40e0  04 a0 8a e2                                      add sl, sl, #4
007e40e4  0c 60 a0 e3                                      mov r6, #0xc
007e40e8  03 00 00 ea                                      b #0x7e40fc
007e40ec  b0 31 d8 e1                                      ldrh r3, [r8, #0x10]
007e40f0  0c a0 80 e0                                      add sl, r0, ip
007e40f4  09 00 53 e1                                      cmp r3, sb
007e40f8  1f 00 00 0a                                      beq #0x7e417c
007e40fc  96 03 25 e0                                      mla r5, r6, r3, r0
007e4100  96 03 0c e0                                      mul ip, r6, r3
007e4104  08 40 85 e2                                      add r4, r5, #8
007e4108  b4 70 d4 e1                                      ldrh r7, [r4, #4]
007e410c  05 80 a0 e1                                      mov r8, r5
007e4110  10 c0 8c e2                                      add ip, ip, #0x10
007e4114  07 00 51 e1                                      cmp r1, r7
007e4118  f3 ff ff 1a                                      bne #0x7e40ec
007e411c  b6 70 d4 e1                                      ldrh r7, [r4, #6]
007e4120  07 00 52 e1                                      cmp r2, r7
007e4124  f0 ff ff 1a                                      bne #0x7e40ec
007e4128  b0 21 d5 e1                                      ldrh r2, [r5, #0x10]
007e412c  03 18 a0 e3                                      mov r1, #0x30000
007e4130  08 10 81 e2                                      add r1, r1, #8
007e4134  b0 20 ca e1                                      strh r2, [sl]
007e4138  b1 60 90 e1                                      ldrh r6, [r0, r1]
007e413c  00 c0 94 e5                                      ldr ip, [r4]
007e4140  03 28 a0 e3                                      mov r2, #0x30000
007e4144  b0 61 c5 e1                                      strh r6, [r5, #0x10]
007e4148  00 60 a0 e3                                      mov r6, #0
007e414c  00 60 84 e5                                      str r6, [r4]
007e4150  00 60 e0 e3                                      mvn r6, #0
007e4154  b4 60 c4 e1                                      strh r6, [r4, #4]
007e4158  b6 60 c4 e1                                      strh r6, [r4, #6]
007e415c  00 40 a0 e3                                      mov r4, #0
007e4160  b2 41 c5 e1                                      strh r4, [r5, #0x12]
007e4164  0c 20 82 e2                                      add r2, r2, #0xc
007e4168  b1 30 80 e1                                      strh r3, [r0, r1]
007e416c  02 30 90 e7                                      ldr r3, [r0, r2]
007e4170  01 30 43 e2                                      sub r3, r3, #1
007e4174  02 30 80 e7                                      str r3, [r0, r2]
007e4178  00 00 00 ea                                      b #0x7e4180
007e417c  00 c0 a0 e3                                      mov ip, #0
007e4180  0c 00 a0 e1                                      mov r0, ip
007e4184  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
007e4188  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e418c, declared_size=4, range_size=4, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManager14ValidateBufferEv
; demangled: b2PairManager::ValidateBuffer()
; decoder-mode: arm
007e418c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e4190, declared_size=148, range_size=148, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManager15AddBufferedPairEii
; demangled: b2PairManager::AddBufferedPair(int, int)
; decoder-mode: arm
007e4190  70 40 2d e9                                      push {r4, r5, r6, lr}
007e4194  00 40 a0 e1                                      mov r4, r0
007e4198  82 ff ff eb                                      bl #0x7e3fa8
007e419c  ba 20 d0 e1                                      ldrh r2, [r0, #0xa]
007e41a0  74 30 9f e5                                      ldr r3, [pc, #0x74]
007e41a4  01 00 12 e3                                      tst r2, #1
007e41a8  03 30 8f e0                                      add r3, pc, r3
007e41ac  0f 00 00 1a                                      bne #0x7e41f0
007e41b0  01 20 82 e3                                      orr r2, r2, #1
007e41b4  01 17 a0 e3                                      mov r1, #0x40000
007e41b8  ba 20 c0 e1                                      strh r2, [r0, #0xa]
007e41bc  10 10 81 e2                                      add r1, r1, #0x10
007e41c0  01 c0 94 e7                                      ldr ip, [r4, r1]
007e41c4  b4 50 d0 e1                                      ldrh r5, [r0, #4]
007e41c8  03 29 8c e2                                      add r2, ip, #0xc000
007e41cc  04 20 82 e2                                      add r2, r2, #4
007e41d0  02 21 a0 e1                                      lsl r2, r2, #2
007e41d4  b2 50 84 e1                                      strh r5, [r4, r2]
007e41d8  b6 50 d0 e1                                      ldrh r5, [r0, #6]
007e41dc  02 20 84 e0                                      add r2, r4, r2
007e41e0  01 c0 8c e2                                      add ip, ip, #1
007e41e4  b2 50 c2 e1                                      strh r5, [r2, #2]
007e41e8  01 c0 84 e7                                      str ip, [r4, r1]
007e41ec  ba 20 d0 e1                                      ldrh r2, [r0, #0xa]
007e41f0  02 20 c2 e3                                      bic r2, r2, #2
007e41f4  ba 20 c0 e1                                      strh r2, [r0, #0xa]
007e41f8  20 20 9f e5                                      ldr r2, [pc, #0x20]
007e41fc  02 30 93 e7                                      ldr r3, [r3, r2]
007e4200  00 30 d3 e5                                      ldrb r3, [r3]
007e4204  00 00 53 e3                                      cmp r3, #0
007e4208  00 00 00 1a                                      bne #0x7e4210
007e420c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007e4210  04 00 a0 e1                                      mov r0, r4
007e4214  70 40 bd e8                                      pop {r4, r5, r6, lr}
007e4218  db ff ff ea                                      b #0x7e418c
; mapping-symbol data/literal pool
007e421c  e8 08 1b 00 68 2d 00 00                          .byte 0xe8, 0x08, 0x1b, 0x00, 0x68, 0x2d, 0x00, 0x00

; FUNCTION 0x007e4224, declared_size=184, range_size=184, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManager18RemoveBufferedPairEii
; demangled: b2PairManager::RemoveBufferedPair(int, int)
; decoder-mode: arm
007e4224  70 40 2d e9                                      push {r4, r5, r6, lr}
007e4228  00 40 a0 e1                                      mov r4, r0
007e422c  4d ff ff eb                                      bl #0x7e3f68
007e4230  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
007e4234  00 00 50 e3                                      cmp r0, #0
007e4238  03 30 8f e0                                      add r3, pc, r3
007e423c  09 00 00 0a                                      beq #0x7e4268
007e4240  ba 20 d0 e1                                      ldrh r2, [r0, #0xa]
007e4244  01 00 12 e3                                      tst r2, #1
007e4248  07 00 00 0a                                      beq #0x7e426c
007e424c  02 20 82 e3                                      orr r2, r2, #2
007e4250  ba 20 c0 e1                                      strh r2, [r0, #0xa]
007e4254  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
007e4258  02 30 93 e7                                      ldr r3, [r3, r2]
007e425c  00 30 d3 e5                                      ldrb r3, [r3]
007e4260  00 00 53 e3                                      cmp r3, #0
007e4264  17 00 00 1a                                      bne #0x7e42c8
007e4268  70 80 bd e8                                      pop {r4, r5, r6, pc}
007e426c  01 20 82 e3                                      orr r2, r2, #1
007e4270  01 17 a0 e3                                      mov r1, #0x40000
007e4274  ba 20 c0 e1                                      strh r2, [r0, #0xa]
007e4278  10 10 81 e2                                      add r1, r1, #0x10
007e427c  01 c0 94 e7                                      ldr ip, [r4, r1]
007e4280  b4 50 d0 e1                                      ldrh r5, [r0, #4]
007e4284  03 29 8c e2                                      add r2, ip, #0xc000
007e4288  04 20 82 e2                                      add r2, r2, #4
007e428c  02 21 a0 e1                                      lsl r2, r2, #2
007e4290  b2 50 84 e1                                      strh r5, [r4, r2]
007e4294  b6 50 d0 e1                                      ldrh r5, [r0, #6]
007e4298  02 20 84 e0                                      add r2, r4, r2
007e429c  01 c0 8c e2                                      add ip, ip, #1
007e42a0  b2 50 c2 e1                                      strh r5, [r2, #2]
007e42a4  01 c0 84 e7                                      str ip, [r4, r1]
007e42a8  ba 20 d0 e1                                      ldrh r2, [r0, #0xa]
007e42ac  02 20 82 e3                                      orr r2, r2, #2
007e42b0  ba 20 c0 e1                                      strh r2, [r0, #0xa]
007e42b4  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
007e42b8  02 30 93 e7                                      ldr r3, [r3, r2]
007e42bc  00 30 d3 e5                                      ldrb r3, [r3]
007e42c0  00 00 53 e3                                      cmp r3, #0
007e42c4  e7 ff ff 0a                                      beq #0x7e4268
007e42c8  04 00 a0 e1                                      mov r0, r4
007e42cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
007e42d0  ad ff ff ea                                      b #0x7e418c
; mapping-symbol data/literal pool
007e42d4  58 08 1b 00 68 2d 00 00                          .byte 0x58, 0x08, 0x1b, 0x00, 0x68, 0x2d, 0x00, 0x00

; FUNCTION 0x007e42dc, declared_size=4, range_size=4, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManager13ValidateTableEv
; demangled: b2PairManager::ValidateTable()
; decoder-mode: arm
007e42dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e42e0, declared_size=472, range_size=472, mode=arm
; class-group: b2PairManager
; alias: _ZN13b2PairManager6CommitEv
; demangled: b2PairManager::Commit()
; decoder-mode: arm
007e42e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e42e4  01 a7 a0 e3                                      mov sl, #0x40000
007e42e8  10 a0 8a e2                                      add sl, sl, #0x10
007e42ec  0a 30 90 e7                                      ldr r3, [r0, sl]
007e42f0  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
007e42f4  0c d0 4d e2                                      sub sp, sp, #0xc
007e42f8  00 00 53 e3                                      cmp r3, #0
007e42fc  01 10 8f e0                                      add r1, pc, r1
007e4300  00 b0 90 e5                                      ldr fp, [r0]
007e4304  00 60 a0 e1                                      mov r6, r0
007e4308  00 10 8d e5                                      str r1, [sp]
007e430c  47 00 00 da                                      ble #0x7e4430
007e4310  03 38 80 e2                                      add r3, r0, #0x30000
007e4314  10 30 83 e2                                      add r3, r3, #0x10
007e4318  00 80 a0 e3                                      mov r8, #0
007e431c  04 30 8d e5                                      str r3, [sp, #4]
007e4320  03 50 a0 e1                                      mov r5, r3
007e4324  03 70 a0 e1                                      mov r7, r3
007e4328  08 90 a0 e1                                      mov sb, r8
007e432c  0e 00 00 ea                                      b #0x7e436c
007e4330  04 00 11 e3                                      tst r1, #4
007e4334  49 00 00 1a                                      bne #0x7e4460
007e4338  03 39 89 e2                                      add r3, sb, #0xc000
007e433c  04 30 83 e2                                      add r3, r3, #4
007e4340  03 31 a0 e1                                      lsl r3, r3, #2
007e4344  b3 00 86 e1                                      strh r0, [r6, r3]
007e4348  b6 40 d4 e1                                      ldrh r4, [r4, #6]
007e434c  03 30 86 e0                                      add r3, r6, r3
007e4350  01 90 89 e2                                      add sb, sb, #1
007e4354  b2 40 c3 e1                                      strh r4, [r3, #2]
007e4358  0a 30 96 e7                                      ldr r3, [r6, sl]
007e435c  01 80 88 e2                                      add r8, r8, #1
007e4360  04 70 87 e2                                      add r7, r7, #4
007e4364  08 00 53 e1                                      cmp r3, r8
007e4368  25 00 00 da                                      ble #0x7e4404
007e436c  b0 10 d7 e1                                      ldrh r1, [r7]
007e4370  b2 20 d7 e1                                      ldrh r2, [r7, #2]
007e4374  06 00 a0 e1                                      mov r0, r6
007e4378  fa fe ff eb                                      bl #0x7e3f68
007e437c  ba 10 d0 e1                                      ldrh r1, [r0, #0xa]
007e4380  00 40 a0 e1                                      mov r4, r0
007e4384  b6 20 d4 e1                                      ldrh r2, [r4, #6]
007e4388  01 30 c1 e3                                      bic r3, r1, #1
007e438c  03 38 a0 e1                                      lsl r3, r3, #0x10
007e4390  02 00 11 e3                                      tst r1, #2
007e4394  23 38 a0 e1                                      lsr r3, r3, #0x10
007e4398  b4 00 d0 e1                                      ldrh r0, [r0, #4]
007e439c  ba 30 c4 e1                                      strh r3, [r4, #0xa]
007e43a0  e2 ff ff 1a                                      bne #0x7e4330
007e43a4  04 00 11 e3                                      tst r1, #4
007e43a8  ea ff ff 1a                                      bne #0x7e4358
007e43ac  04 30 96 e5                                      ldr r3, [r6, #4]
007e43b0  00 02 8b e0                                      add r0, fp, r0, lsl #4
007e43b4  02 22 8b e0                                      add r2, fp, r2, lsl #4
007e43b8  12 19 80 e2                                      add r1, r0, #0x48000
007e43bc  12 29 82 e2                                      add r2, r2, #0x48000
007e43c0  20 10 81 e2                                      add r1, r1, #0x20
007e43c4  20 20 82 e2                                      add r2, r2, #0x20
007e43c8  03 00 a0 e1                                      mov r0, r3
007e43cc  00 10 91 e5                                      ldr r1, [r1]
007e43d0  00 30 93 e5                                      ldr r3, [r3]
007e43d4  00 20 92 e5                                      ldr r2, [r2]
007e43d8  0f e0 a0 e1                                      mov lr, pc
007e43dc  08 f0 93 e5                                      ldr pc, [r3, #8]
007e43e0  ba 30 d4 e1                                      ldrh r3, [r4, #0xa]
007e43e4  00 00 84 e5                                      str r0, [r4]
007e43e8  01 80 88 e2                                      add r8, r8, #1
007e43ec  04 30 83 e3                                      orr r3, r3, #4
007e43f0  ba 30 c4 e1                                      strh r3, [r4, #0xa]
007e43f4  0a 30 96 e7                                      ldr r3, [r6, sl]
007e43f8  04 70 87 e2                                      add r7, r7, #4
007e43fc  08 00 53 e1                                      cmp r3, r8
007e4400  d9 ff ff ca                                      bgt #0x7e436c
007e4404  00 00 59 e3                                      cmp sb, #0
007e4408  08 00 00 0a                                      beq #0x7e4430
007e440c  04 20 9d e5                                      ldr r2, [sp, #4]
007e4410  09 91 82 e0                                      add sb, r2, sb, lsl #2
007e4414  b0 10 d5 e1                                      ldrh r1, [r5]
007e4418  b2 20 d5 e1                                      ldrh r2, [r5, #2]
007e441c  06 00 a0 e1                                      mov r0, r6
007e4420  04 50 85 e2                                      add r5, r5, #4
007e4424  16 ff ff eb                                      bl #0x7e4084
007e4428  09 00 55 e1                                      cmp r5, sb
007e442c  f8 ff ff 1a                                      bne #0x7e4414
007e4430  00 10 9d e5                                      ldr r1, [sp]
007e4434  78 20 9f e5                                      ldr r2, [pc, #0x78]
007e4438  01 37 a0 e3                                      mov r3, #0x40000
007e443c  10 30 83 e2                                      add r3, r3, #0x10
007e4440  02 20 91 e7                                      ldr r2, [r1, r2]
007e4444  00 10 a0 e3                                      mov r1, #0
007e4448  03 10 86 e7                                      str r1, [r6, r3]
007e444c  00 30 d2 e5                                      ldrb r3, [r2]
007e4450  01 00 53 e1                                      cmp r3, r1
007e4454  11 00 00 1a                                      bne #0x7e44a0
007e4458  0c d0 8d e2                                      add sp, sp, #0xc
007e445c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e4460  04 30 96 e5                                      ldr r3, [r6, #4]
007e4464  00 02 8b e0                                      add r0, fp, r0, lsl #4
007e4468  02 22 8b e0                                      add r2, fp, r2, lsl #4
007e446c  12 19 80 e2                                      add r1, r0, #0x48000
007e4470  12 29 82 e2                                      add r2, r2, #0x48000
007e4474  20 10 81 e2                                      add r1, r1, #0x20
007e4478  20 20 82 e2                                      add r2, r2, #0x20
007e447c  03 00 a0 e1                                      mov r0, r3
007e4480  00 c0 93 e5                                      ldr ip, [r3]
007e4484  00 10 91 e5                                      ldr r1, [r1]
007e4488  00 20 92 e5                                      ldr r2, [r2]
007e448c  00 30 94 e5                                      ldr r3, [r4]
007e4490  0f e0 a0 e1                                      mov lr, pc
007e4494  0c f0 9c e5                                      ldr pc, [ip, #0xc]
007e4498  b4 00 d4 e1                                      ldrh r0, [r4, #4]
007e449c  a5 ff ff ea                                      b #0x7e4338
007e44a0  06 00 a0 e1                                      mov r0, r6
007e44a4  0c d0 8d e2                                      add sp, sp, #0xc
007e44a8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e44ac  8a ff ff ea                                      b #0x7e42dc
; mapping-symbol data/literal pool
007e44b0  94 07 1b 00 68 2d 00 00                          .byte 0x94, 0x07, 0x1b, 0x00, 0x68, 0x2d, 0x00, 0x00
