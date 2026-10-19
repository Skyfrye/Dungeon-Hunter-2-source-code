; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e8b3c, declared_size=72, range_size=72, mode=arm
; class-group: SpawnGroupManager
; alias: _ZN17SpawnGroupManagerC2Ev
; demangled: SpawnGroupManager::SpawnGroupManager()
; decoder-mode: arm
003e8b3c  38 10 9f e5                                      ldr r1, [pc, #0x38]
003e8b40  04 40 2d e5                                      str r4, [sp, #-4]!
003e8b44  34 40 9f e5                                      ldr r4, [pc, #0x34]
003e8b48  01 10 8f e0                                      add r1, pc, r1
003e8b4c  00 c0 a0 e3                                      mov ip, #0
003e8b50  04 40 91 e7                                      ldr r4, [r1, r4]
003e8b54  00 20 a0 e1                                      mov r2, r0
003e8b58  08 c0 80 e5                                      str ip, [r0, #8]
003e8b5c  08 40 84 e2                                      add r4, r4, #8
003e8b60  00 40 80 e5                                      str r4, [r0]
003e8b64  04 c0 e2 e5                                      strb ip, [r2, #4]!
003e8b68  10 20 80 e5                                      str r2, [r0, #0x10]
003e8b6c  14 c0 80 e5                                      str ip, [r0, #0x14]
003e8b70  0c 20 80 e5                                      str r2, [r0, #0xc]
003e8b74  10 00 bd e8                                      ldm sp!, {r4}
003e8b78  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003e8b7c  48 bf 5a 00 44 17 00 00                          .byte 0x48, 0xbf, 0x5a, 0x00, 0x44, 0x17, 0x00, 0x00

; FUNCTION 0x003e8b84, declared_size=72, range_size=72, mode=arm
; class-group: SpawnGroupManager
; alias: _ZN17SpawnGroupManagerC1Ev
; demangled: SpawnGroupManager::SpawnGroupManager()
; decoder-mode: arm
003e8b84  38 10 9f e5                                      ldr r1, [pc, #0x38]
003e8b88  04 40 2d e5                                      str r4, [sp, #-4]!
003e8b8c  34 40 9f e5                                      ldr r4, [pc, #0x34]
003e8b90  01 10 8f e0                                      add r1, pc, r1
003e8b94  00 c0 a0 e3                                      mov ip, #0
003e8b98  04 40 91 e7                                      ldr r4, [r1, r4]
003e8b9c  00 20 a0 e1                                      mov r2, r0
003e8ba0  08 c0 80 e5                                      str ip, [r0, #8]
003e8ba4  08 40 84 e2                                      add r4, r4, #8
003e8ba8  00 40 80 e5                                      str r4, [r0]
003e8bac  04 c0 e2 e5                                      strb ip, [r2, #4]!
003e8bb0  10 20 80 e5                                      str r2, [r0, #0x10]
003e8bb4  14 c0 80 e5                                      str ip, [r0, #0x14]
003e8bb8  0c 20 80 e5                                      str r2, [r0, #0xc]
003e8bbc  10 00 bd e8                                      ldm sp!, {r4}
003e8bc0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003e8bc4  00 bf 5a 00 44 17 00 00                          .byte 0x00, 0xbf, 0x5a, 0x00, 0x44, 0x17, 0x00, 0x00

; FUNCTION 0x003e8c40, declared_size=144, range_size=144, mode=arm
; class-group: SpawnGroupManager
; alias: _ZN17SpawnGroupManager8GetGroupEPKc
; demangled: SpawnGroupManager::GetGroup(char const*)
; decoder-mode: arm
003e8c40  70 40 2d e9                                      push {r4, r5, r6, lr}
003e8c44  01 50 a0 e1                                      mov r5, r1
003e8c48  00 40 a0 e1                                      mov r4, r0
003e8c4c  02 00 a0 e1                                      mov r0, r2
003e8c50  dd ff ff eb                                      bl #0x3e8bcc
003e8c54  08 30 95 e5                                      ldr r3, [r5, #8]
003e8c58  00 00 53 e3                                      cmp r3, #0
003e8c5c  04 30 85 02                                      addeq r3, r5, #4
003e8c60  17 00 00 0a                                      beq #0x3e8cc4
003e8c64  03 20 a0 e1                                      mov r2, r3
003e8c68  10 10 92 e5                                      ldr r1, [r2, #0x10]
003e8c6c  01 00 50 e1                                      cmp r0, r1
003e8c70  08 20 92 d5                                      ldrle r2, [r2, #8]
003e8c74  0c 20 92 c5                                      ldrgt r2, [r2, #0xc]
003e8c78  00 00 52 e3                                      cmp r2, #0
003e8c7c  f9 ff ff 1a                                      bne #0x3e8c68
003e8c80  04 50 85 e2                                      add r5, r5, #4
003e8c84  05 10 a0 e1                                      mov r1, r5
003e8c88  00 00 00 ea                                      b #0x3e8c90
003e8c8c  02 30 a0 e1                                      mov r3, r2
003e8c90  10 20 93 e5                                      ldr r2, [r3, #0x10]
003e8c94  02 00 50 e1                                      cmp r0, r2
003e8c98  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
003e8c9c  08 20 93 d5                                      ldrle r2, [r3, #8]
003e8ca0  01 30 a0 c1                                      movgt r3, r1
003e8ca4  03 10 a0 e1                                      mov r1, r3
003e8ca8  00 00 52 e3                                      cmp r2, #0
003e8cac  f6 ff ff 1a                                      bne #0x3e8c8c
003e8cb0  03 00 55 e1                                      cmp r5, r3
003e8cb4  02 00 00 0a                                      beq #0x3e8cc4
003e8cb8  10 20 93 e5                                      ldr r2, [r3, #0x10]
003e8cbc  02 00 50 e1                                      cmp r0, r2
003e8cc0  05 30 a0 b1                                      movlt r3, r5
003e8cc4  00 30 84 e5                                      str r3, [r4]
003e8cc8  04 00 a0 e1                                      mov r0, r4
003e8ccc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003e8f24, declared_size=96, range_size=96, mode=arm
; class-group: SpawnGroupManager
; alias: _ZN17SpawnGroupManagerD1Ev
; demangled: SpawnGroupManager::~SpawnGroupManager()
; decoder-mode: arm
003e8f24  70 40 2d e9                                      push {r4, r5, r6, lr}
003e8f28  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003e8f2c  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
003e8f30  14 10 90 e5                                      ldr r1, [r0, #0x14]
003e8f34  03 30 8f e0                                      add r3, pc, r3
003e8f38  02 20 93 e7                                      ldr r2, [r3, r2]
003e8f3c  00 00 51 e3                                      cmp r1, #0
003e8f40  00 40 a0 e1                                      mov r4, r0
003e8f44  08 20 82 e2                                      add r2, r2, #8
003e8f48  00 20 80 e5                                      str r2, [r0]
003e8f4c  08 00 00 0a                                      beq #0x3e8f74
003e8f50  04 50 80 e2                                      add r5, r0, #4
003e8f54  05 00 a0 e1                                      mov r0, r5
003e8f58  08 10 94 e5                                      ldr r1, [r4, #8]
003e8f5c  d3 ff ff eb                                      bl #0x3e8eb0
003e8f60  00 30 a0 e3                                      mov r3, #0
003e8f64  10 50 84 e5                                      str r5, [r4, #0x10]
003e8f68  14 30 84 e5                                      str r3, [r4, #0x14]
003e8f6c  0c 50 84 e5                                      str r5, [r4, #0xc]
003e8f70  08 30 84 e5                                      str r3, [r4, #8]
003e8f74  04 00 a0 e1                                      mov r0, r4
003e8f78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003e8f7c  5c bb 5a 00 44 17 00 00                          .byte 0x5c, 0xbb, 0x5a, 0x00, 0x44, 0x17, 0x00, 0x00

; FUNCTION 0x003e8f84, declared_size=28, range_size=28, mode=arm
; class-group: SpawnGroupManager
; alias: _ZN17SpawnGroupManagerD0Ev
; demangled: SpawnGroupManager::~SpawnGroupManager()
; decoder-mode: arm
003e8f84  10 40 2d e9                                      push {r4, lr}
003e8f88  00 40 a0 e1                                      mov r4, r0
003e8f8c  e4 ff ff eb                                      bl #0x3e8f24
003e8f90  04 00 a0 e1                                      mov r0, r4
003e8f94  29 9d fc eb                                      bl #0x310440
003e8f98  04 00 a0 e1                                      mov r0, r4
003e8f9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003e8fa0, declared_size=96, range_size=96, mode=arm
; class-group: SpawnGroupManager
; alias: _ZN17SpawnGroupManagerD2Ev
; demangled: SpawnGroupManager::~SpawnGroupManager()
; decoder-mode: arm
003e8fa0  70 40 2d e9                                      push {r4, r5, r6, lr}
003e8fa4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003e8fa8  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
003e8fac  14 10 90 e5                                      ldr r1, [r0, #0x14]
003e8fb0  03 30 8f e0                                      add r3, pc, r3
003e8fb4  02 20 93 e7                                      ldr r2, [r3, r2]
003e8fb8  00 00 51 e3                                      cmp r1, #0
003e8fbc  00 40 a0 e1                                      mov r4, r0
003e8fc0  08 20 82 e2                                      add r2, r2, #8
003e8fc4  00 20 80 e5                                      str r2, [r0]
003e8fc8  08 00 00 0a                                      beq #0x3e8ff0
003e8fcc  04 50 80 e2                                      add r5, r0, #4
003e8fd0  05 00 a0 e1                                      mov r0, r5
003e8fd4  08 10 94 e5                                      ldr r1, [r4, #8]
003e8fd8  b4 ff ff eb                                      bl #0x3e8eb0
003e8fdc  00 30 a0 e3                                      mov r3, #0
003e8fe0  10 50 84 e5                                      str r5, [r4, #0x10]
003e8fe4  14 30 84 e5                                      str r3, [r4, #0x14]
003e8fe8  0c 50 84 e5                                      str r5, [r4, #0xc]
003e8fec  08 30 84 e5                                      str r3, [r4, #8]
003e8ff0  04 00 a0 e1                                      mov r0, r4
003e8ff4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003e8ff8  e0 ba 5a 00 44 17 00 00                          .byte 0xe0, 0xba, 0x5a, 0x00, 0x44, 0x17, 0x00, 0x00

; FUNCTION 0x003e907c, declared_size=372, range_size=372, mode=arm
; class-group: SpawnGroupManager
; alias: _ZN17SpawnGroupManager8DelSpawnEP9SpawnSpot
; demangled: SpawnGroupManager::DelSpawn(SpawnSpot*)
; decoder-mode: arm
003e907c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e9080  50 31 9f e5                                      ldr r3, [pc, #0x150]
003e9084  00 40 51 e2                                      subs r4, r1, #0
003e9088  10 d0 4d e2                                      sub sp, sp, #0x10
003e908c  00 50 a0 e1                                      mov r5, r0
003e9090  03 30 8f e0                                      add r3, pc, r3
003e9094  3a 00 00 0a                                      beq #0x3e9184
003e9098  88 03 94 e5                                      ldr r0, [r4, #0x388]
003e909c  ca fe ff eb                                      bl #0x3e8bcc
003e90a0  01 00 70 e3                                      cmn r0, #1
003e90a4  26 00 00 0a                                      beq #0x3e9144
003e90a8  08 60 95 e5                                      ldr r6, [r5, #8]
003e90ac  04 50 85 e2                                      add r5, r5, #4
003e90b0  00 00 56 e3                                      cmp r6, #0
003e90b4  2b 00 00 0a                                      beq #0x3e9168
003e90b8  05 20 a0 e1                                      mov r2, r5
003e90bc  00 00 00 ea                                      b #0x3e90c4
003e90c0  03 60 a0 e1                                      mov r6, r3
003e90c4  10 30 96 e5                                      ldr r3, [r6, #0x10]
003e90c8  03 00 50 e1                                      cmp r0, r3
003e90cc  0c 30 96 c5                                      ldrgt r3, [r6, #0xc]
003e90d0  08 30 96 d5                                      ldrle r3, [r6, #8]
003e90d4  02 60 a0 c1                                      movgt r6, r2
003e90d8  06 20 a0 e1                                      mov r2, r6
003e90dc  00 00 53 e3                                      cmp r3, #0
003e90e0  f6 ff ff 1a                                      bne #0x3e90c0
003e90e4  06 00 55 e1                                      cmp r5, r6
003e90e8  15 00 00 0a                                      beq #0x3e9144
003e90ec  10 30 96 e5                                      ldr r3, [r6, #0x10]
003e90f0  03 00 50 e1                                      cmp r0, r3
003e90f4  1b 00 00 ba                                      blt #0x3e9168
003e90f8  06 00 55 e1                                      cmp r5, r6
003e90fc  10 00 00 0a                                      beq #0x3e9144
003e9100  06 70 a0 e1                                      mov r7, r6
003e9104  14 00 b7 e5                                      ldr r0, [r7, #0x14]!
003e9108  00 00 57 e1                                      cmp r7, r0
003e910c  06 00 00 0a                                      beq #0x3e912c
003e9110  08 30 90 e5                                      ldr r3, [r0, #8]
003e9114  00 80 90 e5                                      ldr r8, [r0]
003e9118  04 00 53 e1                                      cmp r3, r4
003e911c  0a 00 00 0a                                      beq #0x3e914c
003e9120  08 00 a0 e1                                      mov r0, r8
003e9124  00 00 57 e1                                      cmp r7, r0
003e9128  f8 ff ff 1a                                      bne #0x3e9110
003e912c  14 30 96 e5                                      ldr r3, [r6, #0x14]
003e9130  03 00 57 e1                                      cmp r7, r3
003e9134  0d 00 00 0a                                      beq #0x3e9170
003e9138  00 30 93 e5                                      ldr r3, [r3]
003e913c  03 00 57 e1                                      cmp r7, r3
003e9140  fc ff ff 1a                                      bne #0x3e9138
003e9144  10 d0 8d e2                                      add sp, sp, #0x10
003e9148  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003e914c  04 30 90 e5                                      ldr r3, [r0, #4]
003e9150  0c 10 a0 e3                                      mov r1, #0xc
003e9154  00 80 83 e5                                      str r8, [r3]
003e9158  04 30 88 e5                                      str r3, [r8, #4]
003e915c  67 7f 0c eb                                      bl #0x708f00
003e9160  08 00 a0 e1                                      mov r0, r8
003e9164  ee ff ff ea                                      b #0x3e9124
003e9168  05 60 a0 e1                                      mov r6, r5
003e916c  e1 ff ff ea                                      b #0x3e90f8
003e9170  10 10 8d e2                                      add r1, sp, #0x10
003e9174  04 60 21 e5                                      str r6, [r1, #-4]!
003e9178  05 00 a0 e1                                      mov r0, r5
003e917c  9f ff ff eb                                      bl #0x3e9000
003e9180  ef ff ff ea                                      b #0x3e9144
003e9184  50 20 9f e5                                      ldr r2, [pc, #0x50]
003e9188  02 20 93 e7                                      ldr r2, [r3, r2]
003e918c  00 20 92 e5                                      ldr r2, [r2]
003e9190  02 00 52 e3                                      cmp r2, #2
003e9194  00 40 84 05                                      streq r4, [r4]
003e9198  be ff ff 0a                                      beq #0x3e9098
003e919c  01 00 52 e3                                      cmp r2, #1
003e91a0  bc ff ff 1a                                      bne #0x3e9098
003e91a4  34 00 9f e5                                      ldr r0, [pc, #0x34]
003e91a8  34 10 9f e5                                      ldr r1, [pc, #0x34]
003e91ac  34 20 9f e5                                      ldr r2, [pc, #0x34]
003e91b0  00 00 93 e7                                      ldr r0, [r3, r0]
003e91b4  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e91b8  07 c1 00 e3                                      movw ip, #0x107
003e91bc  01 10 8f e0                                      add r1, pc, r1
003e91c0  02 20 8f e0                                      add r2, pc, r2
003e91c4  03 30 8f e0                                      add r3, pc, r3
003e91c8  a8 00 80 e2                                      add r0, r0, #0xa8
003e91cc  00 c0 8d e5                                      str ip, [sp]
003e91d0  8b 93 fc eb                                      bl #0x30e004
003e91d4  af ff ff ea                                      b #0x3e9098
; mapping-symbol data/literal pool
003e91d8  00 ba 5a 00 c0 39 00 00 c0 19 00 00 1c 52 4d 00  .byte 0x00, 0xba, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x1c, 0x52, 0x4d, 0x00
003e91e8  90 65 4f 00 44 cf 4d 00                          .byte 0x90, 0x65, 0x4f, 0x00, 0x44, 0xcf, 0x4d, 0x00

; FUNCTION 0x003e9238, declared_size=1732, range_size=1732, mode=arm
; class-group: SpawnGroupManager
; alias: _ZN17SpawnGroupManager6updateEd
; demangled: SpawnGroupManager::update(double)
; decoder-mode: arm
003e9238  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e923c  98 66 9f e5                                      ldr r6, [pc, #0x698]
003e9240  98 16 9f e5                                      ldr r1, [pc, #0x698]
003e9244  98 26 9f e5                                      ldr r2, [pc, #0x698]
003e9248  49 df 4d e2                                      sub sp, sp, #0x124
003e924c  06 60 8f e0                                      add r6, pc, r6
003e9250  14 20 8d e5                                      str r2, [sp, #0x14]
003e9254  01 20 96 e7                                      ldr r2, [r6, r1]
003e9258  14 c0 9d e5                                      ldr ip, [sp, #0x14]
003e925c  00 30 a0 e1                                      mov r3, r0
003e9260  00 20 92 e5                                      ldr r2, [r2]
003e9264  18 10 8d e5                                      str r1, [sp, #0x18]
003e9268  0c 00 96 e7                                      ldr r0, [r6, ip]
003e926c  0c 40 93 e5                                      ldr r4, [r3, #0xc]
003e9270  04 70 83 e2                                      add r7, r3, #4
003e9274  1c 21 8d e5                                      str r2, [sp, #0x11c]
003e9278  fb d8 fc eb                                      bl #0x31f66c
003e927c  00 30 a0 e3                                      mov r3, #0
003e9280  4c 30 8d e5                                      str r3, [sp, #0x4c]
003e9284  44 30 8d e5                                      str r3, [sp, #0x44]
003e9288  48 30 8d e5                                      str r3, [sp, #0x48]
003e928c  54 36 9f e5                                      ldr r3, [pc, #0x654]
003e9290  00 90 a0 e1                                      mov sb, r0
003e9294  03 30 8f e0                                      add r3, pc, r3
003e9298  28 30 8d e5                                      str r3, [sp, #0x28]
003e929c  48 36 9f e5                                      ldr r3, [pc, #0x648]
003e92a0  03 30 8f e0                                      add r3, pc, r3
003e92a4  1c 30 8d e5                                      str r3, [sp, #0x1c]
003e92a8  40 36 9f e5                                      ldr r3, [pc, #0x640]
003e92ac  03 30 8f e0                                      add r3, pc, r3
003e92b0  20 30 8d e5                                      str r3, [sp, #0x20]
003e92b4  04 00 57 e1                                      cmp r7, r4
003e92b8  0f 00 00 0a                                      beq #0x3e92fc
003e92bc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003e92c0  03 30 69 e0                                      rsb r3, sb, r3
003e92c4  00 00 53 e3                                      cmp r3, #0
003e92c8  1c 30 84 e5                                      str r3, [r4, #0x1c]
003e92cc  28 00 00 da                                      ble #0x3e9374
003e92d0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003e92d4  00 00 52 e3                                      cmp r2, #0
003e92d8  01 00 00 1a                                      bne #0x3e92e4
003e92dc  17 00 00 ea                                      b #0x3e9340
003e92e0  03 20 a0 e1                                      mov r2, r3
003e92e4  08 30 92 e5                                      ldr r3, [r2, #8]
003e92e8  00 00 53 e3                                      cmp r3, #0
003e92ec  fb ff ff 1a                                      bne #0x3e92e0
003e92f0  02 40 a0 e1                                      mov r4, r2
003e92f4  04 00 57 e1                                      cmp r7, r4
003e92f8  ef ff ff 1a                                      bne #0x3e92bc
003e92fc  44 00 9d e5                                      ldr r0, [sp, #0x44]
003e9300  00 00 50 e3                                      cmp r0, #0
003e9304  05 00 00 0a                                      beq #0x3e9320
003e9308  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
003e930c  01 10 60 e0                                      rsb r1, r0, r1
003e9310  03 10 c1 e3                                      bic r1, r1, #3
003e9314  80 00 51 e3                                      cmp r1, #0x80
003e9318  cb 00 00 8a                                      bhi #0x3e964c
003e931c  f7 7e 0c eb                                      bl #0x708f00
003e9320  18 20 9d e5                                      ldr r2, [sp, #0x18]
003e9324  02 30 96 e7                                      ldr r3, [r6, r2]
003e9328  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
003e932c  00 30 93 e5                                      ldr r3, [r3]
003e9330  03 00 52 e1                                      cmp r2, r3
003e9334  67 01 00 1a                                      bne #0x3e98d8
003e9338  49 df 8d e2                                      add sp, sp, #0x124
003e933c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e9340  04 30 94 e5                                      ldr r3, [r4, #4]
003e9344  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003e9348  01 00 54 e1                                      cmp r4, r1
003e934c  05 00 00 1a                                      bne #0x3e9368
003e9350  03 40 a0 e1                                      mov r4, r3
003e9354  04 30 93 e5                                      ldr r3, [r3, #4]
003e9358  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003e935c  02 00 54 e1                                      cmp r4, r2
003e9360  fa ff ff 0a                                      beq #0x3e9350
003e9364  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003e9368  02 00 53 e1                                      cmp r3, r2
003e936c  03 40 a0 11                                      movne r4, r3
003e9370  cf ff ff ea                                      b #0x3e92b4
003e9374  78 15 9f e5                                      ldr r1, [pc, #0x578]
003e9378  41 5f 8d e2                                      add r5, sp, #0x104
003e937c  01 80 96 e7                                      ldr r8, [r6, r1]
003e9380  10 10 8d e5                                      str r1, [sp, #0x10]
003e9384  08 00 a0 e1                                      mov r0, r8
003e9388  3e 39 fd eb                                      bl #0x337888
003e938c  68 10 8d e2                                      add r1, sp, #0x68
003e9390  05 00 a0 e1                                      mov r0, r5
003e9394  95 ff ff eb                                      bl #0x3e91f0
003e9398  08 00 a0 e1                                      mov r0, r8
003e939c  05 10 a0 e1                                      mov r1, r5
003e93a0  b8 39 fd eb                                      bl #0x337a88
003e93a4  18 01 9d e5                                      ldr r0, [sp, #0x118]
003e93a8  05 00 50 e1                                      cmp r0, r5
003e93ac  06 00 00 0a                                      beq #0x3e93cc
003e93b0  00 00 50 e3                                      cmp r0, #0
003e93b4  04 00 00 0a                                      beq #0x3e93cc
003e93b8  04 11 9d e5                                      ldr r1, [sp, #0x104]
003e93bc  01 10 60 e0                                      rsb r1, r0, r1
003e93c0  80 00 51 e3                                      cmp r1, #0x80
003e93c4  a2 00 00 8a                                      bhi #0x3e9654
003e93c8  cc 7e 0c eb                                      bl #0x708f00
003e93cc  24 35 9f e5                                      ldr r3, [pc, #0x524]
003e93d0  10 20 94 e5                                      ldr r2, [r4, #0x10]
003e93d4  14 a0 a0 e3                                      mov sl, #0x14
003e93d8  03 30 96 e7                                      ldr r3, [r6, r3]
003e93dc  00 30 93 e5                                      ldr r3, [r3]
003e93e0  9a 32 2a e0                                      mla sl, sl, r2, r3
003e93e4  08 30 9a e5                                      ldr r3, [sl, #8]
003e93e8  1c 30 84 e5                                      str r3, [r4, #0x1c]
003e93ec  0c c0 9a e5                                      ldr ip, [sl, #0xc]
003e93f0  00 00 5c e3                                      cmp ip, #0
003e93f4  b5 ff ff 0a                                      beq #0x3e92d0
003e93f8  10 20 9a e5                                      ldr r2, [sl, #0x10]
003e93fc  00 30 a0 e3                                      mov r3, #0
003e9400  03 00 a0 e1                                      mov r0, r3
003e9404  08 10 92 e5                                      ldr r1, [r2, #8]
003e9408  01 30 83 e2                                      add r3, r3, #1
003e940c  0c 00 53 e1                                      cmp r3, ip
003e9410  01 00 80 e0                                      add r0, r0, r1
003e9414  10 20 82 e2                                      add r2, r2, #0x10
003e9418  f9 ff ff 1a                                      bne #0x3e9404
003e941c  00 00 50 e3                                      cmp r0, #0
003e9420  aa ff ff da                                      ble #0x3e92d0
003e9424  60 fe ff eb                                      bl #0x3e8dac
003e9428  0c 10 9a e5                                      ldr r1, [sl, #0xc]
003e942c  00 00 51 e3                                      cmp r1, #0
003e9430  a6 ff ff 0a                                      beq #0x3e92d0
003e9434  10 b0 9a e5                                      ldr fp, [sl, #0x10]
003e9438  08 30 9b e5                                      ldr r3, [fp, #8]
003e943c  03 20 50 e0                                      subs r2, r0, r3
003e9440  10 b0 8b 52                                      addpl fp, fp, #0x10
003e9444  00 30 a0 53                                      movpl r3, #0
003e9448  07 00 00 4a                                      bmi #0x3e946c
003e944c  01 30 83 e2                                      add r3, r3, #1
003e9450  01 00 53 e1                                      cmp r3, r1
003e9454  9d ff ff 0a                                      beq #0x3e92d0
003e9458  08 00 9b e5                                      ldr r0, [fp, #8]
003e945c  10 b0 8b e2                                      add fp, fp, #0x10
003e9460  00 20 52 e0                                      subs r2, r2, r0
003e9464  f8 ff ff 5a                                      bpl #0x3e944c
003e9468  10 b0 4b e2                                      sub fp, fp, #0x10
003e946c  00 00 5b e3                                      cmp fp, #0
003e9470  96 ff ff 0a                                      beq #0x3e92d0
003e9474  0c 30 9b e5                                      ldr r3, [fp, #0xc]
003e9478  00 00 53 e3                                      cmp r3, #0
003e947c  05 01 00 0a                                      beq #0x3e9898
003e9480  44 30 9d e5                                      ldr r3, [sp, #0x44]
003e9484  48 20 9d e5                                      ldr r2, [sp, #0x48]
003e9488  04 c0 a0 e1                                      mov ip, r4
003e948c  07 80 a0 e1                                      mov r8, r7
003e9490  02 00 53 e1                                      cmp r3, r2
003e9494  48 30 8d 15                                      strne r3, [sp, #0x48]
003e9498  14 50 bc e5                                      ldr r5, [ip, #0x14]!
003e949c  4c 30 8d e2                                      add r3, sp, #0x4c
003e94a0  50 10 8d e2                                      add r1, sp, #0x50
003e94a4  0c 70 a0 e1                                      mov r7, ip
003e94a8  05 00 57 e1                                      cmp r7, r5
003e94ac  24 30 8d e5                                      str r3, [sp, #0x24]
003e94b0  2c 10 8d e5                                      str r1, [sp, #0x2c]
003e94b4  0c 40 8d e5                                      str r4, [sp, #0xc]
003e94b8  0e 00 00 0a                                      beq #0x3e94f8
003e94bc  04 30 da e5                                      ldrb r3, [sl, #4]
003e94c0  00 00 53 e3                                      cmp r3, #0
003e94c4  28 00 00 1a                                      bne #0x3e956c
003e94c8  48 40 9d e5                                      ldr r4, [sp, #0x48]
003e94cc  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
003e94d0  03 00 54 e1                                      cmp r4, r3
003e94d4  35 00 00 0a                                      beq #0x3e95b0
003e94d8  08 30 95 e5                                      ldr r3, [r5, #8]
003e94dc  00 30 84 e5                                      str r3, [r4]
003e94e0  48 30 9d e5                                      ldr r3, [sp, #0x48]
003e94e4  04 30 83 e2                                      add r3, r3, #4
003e94e8  48 30 8d e5                                      str r3, [sp, #0x48]
003e94ec  00 50 95 e5                                      ldr r5, [r5]
003e94f0  05 00 57 e1                                      cmp r7, r5
003e94f4  f0 ff ff 1a                                      bne #0x3e94bc
003e94f8  44 30 9d e5                                      ldr r3, [sp, #0x44]
003e94fc  48 20 9d e5                                      ldr r2, [sp, #0x48]
003e9500  0c 40 9d e5                                      ldr r4, [sp, #0xc]
003e9504  08 70 a0 e1                                      mov r7, r8
003e9508  02 30 63 e0                                      rsb r3, r3, r2
003e950c  23 31 b0 e1                                      lsrs r3, r3, #2
003e9510  51 00 00 1a                                      bne #0x3e965c
003e9514  10 30 9d e5                                      ldr r3, [sp, #0x10]
003e9518  d4 50 8d e2                                      add r5, sp, #0xd4
003e951c  03 80 96 e7                                      ldr r8, [r6, r3]
003e9520  08 00 a0 e1                                      mov r0, r8
003e9524  d7 38 fd eb                                      bl #0x337888
003e9528  60 10 8d e2                                      add r1, sp, #0x60
003e952c  05 00 a0 e1                                      mov r0, r5
003e9530  2e ff ff eb                                      bl #0x3e91f0
003e9534  08 00 a0 e1                                      mov r0, r8
003e9538  05 10 a0 e1                                      mov r1, r5
003e953c  51 39 fd eb                                      bl #0x337a88
003e9540  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
003e9544  05 00 50 e1                                      cmp r0, r5
003e9548  04 00 00 0a                                      beq #0x3e9560
003e954c  00 00 50 e3                                      cmp r0, #0
003e9550  02 00 00 0a                                      beq #0x3e9560
003e9554  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
003e9558  01 10 60 e0                                      rsb r1, r0, r1
003e955c  78 c9 fc eb                                      bl #0x31bb44
003e9560  fa 3f a0 e3                                      mov r3, #0x3e8
003e9564  1c 30 84 e5                                      str r3, [r4, #0x1c]
003e9568  58 ff ff ea                                      b #0x3e92d0
003e956c  08 40 95 e5                                      ldr r4, [r5, #8]
003e9570  00 30 94 e5                                      ldr r3, [r4]
003e9574  04 00 a0 e1                                      mov r0, r4
003e9578  0f e0 a0 e1                                      mov lr, pc
003e957c  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
003e9580  00 00 50 e3                                      cmp r0, #0
003e9584  cf ff ff 0a                                      beq #0x3e94c8
003e9588  ee 32 d4 e5                                      ldrb r3, [r4, #0x2ee]
003e958c  00 00 53 e3                                      cmp r3, #0
003e9590  cc ff ff 0a                                      beq #0x3e94c8
003e9594  f0 32 d4 e5                                      ldrb r3, [r4, #0x2f0]
003e9598  00 00 53 e3                                      cmp r3, #0
003e959c  d2 ff ff 0a                                      beq #0x3e94ec
003e95a0  48 40 9d e5                                      ldr r4, [sp, #0x48]
003e95a4  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
003e95a8  03 00 54 e1                                      cmp r4, r3
003e95ac  c9 ff ff 1a                                      bne #0x3e94d8
003e95b0  44 20 9d e5                                      ldr r2, [sp, #0x44]
003e95b4  04 20 62 e0                                      rsb r2, r2, r4
003e95b8  42 21 a0 e1                                      asr r2, r2, #2
003e95bc  01 00 52 e3                                      cmp r2, #1
003e95c0  02 30 82 20                                      addhs r3, r2, r2
003e95c4  01 30 82 32                                      addlo r3, r2, #1
003e95c8  07 01 73 e3                                      cmn r3, #0xc0000001
003e95cc  b9 00 00 8a                                      bhi #0x3e98b8
003e95d0  03 00 52 e1                                      cmp r2, r3
003e95d4  b7 00 00 8a                                      bhi #0x3e98b8
003e95d8  03 10 a0 e1                                      mov r1, r3
003e95dc  24 00 9d e5                                      ldr r0, [sp, #0x24]
003e95e0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003e95e4  50 30 8d e5                                      str r3, [sp, #0x50]
003e95e8  14 fe ff eb                                      bl #0x3e8e40
003e95ec  44 10 9d e5                                      ldr r1, [sp, #0x44]
003e95f0  30 00 8d e5                                      str r0, [sp, #0x30]
003e95f4  01 40 54 e0                                      subs r4, r4, r1
003e95f8  00 40 a0 01                                      moveq r4, r0
003e95fc  b1 00 00 1a                                      bne #0x3e98c8
003e9600  08 30 95 e5                                      ldr r3, [r5, #8]
003e9604  04 30 84 e4                                      str r3, [r4], #4
003e9608  44 00 9d e5                                      ldr r0, [sp, #0x44]
003e960c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
003e9610  00 00 50 e3                                      cmp r0, #0
003e9614  04 00 00 0a                                      beq #0x3e962c
003e9618  01 10 60 e0                                      rsb r1, r0, r1
003e961c  03 10 c1 e3                                      bic r1, r1, #3
003e9620  80 00 51 e3                                      cmp r1, #0x80
003e9624  a5 00 00 8a                                      bhi #0x3e98c0
003e9628  34 7e 0c eb                                      bl #0x708f00
003e962c  30 20 9d e5                                      ldr r2, [sp, #0x30]
003e9630  50 30 9d e5                                      ldr r3, [sp, #0x50]
003e9634  48 40 8d e5                                      str r4, [sp, #0x48]
003e9638  44 20 8d e5                                      str r2, [sp, #0x44]
003e963c  03 31 82 e0                                      add r3, r2, r3, lsl #2
003e9640  4c 30 8d e5                                      str r3, [sp, #0x4c]
003e9644  00 50 95 e5                                      ldr r5, [r5]
003e9648  a8 ff ff ea                                      b #0x3e94f0
003e964c  7b 9b fc eb                                      bl #0x310440
003e9650  32 ff ff ea                                      b #0x3e9320
003e9654  79 9b fc eb                                      bl #0x310440
003e9658  5b ff ff ea                                      b #0x3e93cc
003e965c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
003e9660  bc 50 8d e2                                      add r5, sp, #0xbc
003e9664  0c 80 96 e7                                      ldr r8, [r6, ip]
003e9668  08 00 a0 e1                                      mov r0, r8
003e966c  85 38 fd eb                                      bl #0x337888
003e9670  5c 10 8d e2                                      add r1, sp, #0x5c
003e9674  05 00 a0 e1                                      mov r0, r5
003e9678  dc fe ff eb                                      bl #0x3e91f0
003e967c  08 00 a0 e1                                      mov r0, r8
003e9680  05 10 a0 e1                                      mov r1, r5
003e9684  ff 38 fd eb                                      bl #0x337a88
003e9688  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
003e968c  05 00 50 e1                                      cmp r0, r5
003e9690  04 00 00 0a                                      beq #0x3e96a8
003e9694  00 00 50 e3                                      cmp r0, #0
003e9698  02 00 00 0a                                      beq #0x3e96a8
003e969c  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
003e96a0  01 10 60 e0                                      rsb r1, r0, r1
003e96a4  26 c9 fc eb                                      bl #0x31bb44
003e96a8  0c 30 9b e5                                      ldr r3, [fp, #0xc]
003e96ac  00 00 53 e3                                      cmp r3, #0
003e96b0  06 ff ff da                                      ble #0x3e92d0
003e96b4  44 30 9d e5                                      ldr r3, [sp, #0x44]
003e96b8  48 00 9d e5                                      ldr r0, [sp, #0x48]
003e96bc  00 00 63 e0                                      rsb r0, r3, r0
003e96c0  40 01 b0 e1                                      asrs r0, r0, #2
003e96c4  59 00 00 0a                                      beq #0x3e9830
003e96c8  28 50 9d e5                                      ldr r5, [sp, #0x28]
003e96cc  6c 20 8d e2                                      add r2, sp, #0x6c
003e96d0  38 30 8d e2                                      add r3, sp, #0x38
003e96d4  54 c0 8d e2                                      add ip, sp, #0x54
003e96d8  34 90 8d e5                                      str sb, [sp, #0x34]
003e96dc  00 a0 a0 e3                                      mov sl, #0
003e96e0  0c 20 8d e5                                      str r2, [sp, #0xc]
003e96e4  8c 80 8d e2                                      add r8, sp, #0x8c
003e96e8  24 c0 8d e5                                      str ip, [sp, #0x24]
003e96ec  2c 40 8d e5                                      str r4, [sp, #0x2c]
003e96f0  30 70 8d e5                                      str r7, [sp, #0x30]
003e96f4  03 90 a0 e1                                      mov sb, r3
003e96f8  ab fd ff eb                                      bl #0x3e8dac
003e96fc  44 30 9d e5                                      ldr r3, [sp, #0x44]
003e9700  48 c0 9d e5                                      ldr ip, [sp, #0x48]
003e9704  00 41 93 e7                                      ldr r4, [r3, r0, lsl #2]
003e9708  03 00 5c e1                                      cmp ip, r3
003e970c  03 00 00 1a                                      bne #0x3e9720
003e9710  0c 00 00 ea                                      b #0x3e9748
003e9714  04 30 83 e2                                      add r3, r3, #4
003e9718  0c 00 53 e1                                      cmp r3, ip
003e971c  09 00 00 0a                                      beq #0x3e9748
003e9720  00 20 93 e5                                      ldr r2, [r3]
003e9724  04 00 52 e1                                      cmp r2, r4
003e9728  f9 ff ff 1a                                      bne #0x3e9714
003e972c  04 10 83 e2                                      add r1, r3, #4
003e9730  01 00 5c e1                                      cmp ip, r1
003e9734  01 00 00 0a                                      beq #0x3e9740
003e9738  01 20 5c e0                                      subs r2, ip, r1
003e973c  51 00 00 1a                                      bne #0x3e9888
003e9740  04 c0 4c e2                                      sub ip, ip, #4
003e9744  48 c0 8d e5                                      str ip, [sp, #0x48]
003e9748  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003e974c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003e9750  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003e9754  01 30 83 e2                                      add r3, r3, #1
003e9758  03 20 a0 e1                                      mov r2, r3
003e975c  0c 30 85 e5                                      str r3, [r5, #0xc]
003e9760  df 94 fc eb                                      bl #0x30eae4
003e9764  14 20 9d e5                                      ldr r2, [sp, #0x14]
003e9768  01 c0 a0 e3                                      mov ip, #1
003e976c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003e9770  02 10 96 e7                                      ldr r1, [r6, r2]
003e9774  09 00 a0 e1                                      mov r0, sb
003e9778  20 20 9d e5                                      ldr r2, [sp, #0x20]
003e977c  38 10 91 e5                                      ldr r1, [r1, #0x38]
003e9780  00 c0 8d e5                                      str ip, [sp]
003e9784  04 c0 8d e5                                      str ip, [sp, #4]
003e9788  e5 87 fd eb                                      bl #0x34b724
003e978c  09 00 a0 e1                                      mov r0, sb
003e9790  ef 59 fd eb                                      bl #0x33ff54
003e9794  00 70 50 e2                                      subs r7, r0, #0
003e9798  19 00 00 0a                                      beq #0x3e9804
003e979c  16 2e 84 e2                                      add r2, r4, #0x160
003e97a0  04 10 9b e5                                      ldr r1, [fp, #4]
003e97a4  fc 27 ff eb                                      bl #0x3b379c
003e97a8  04 00 a0 e1                                      mov r0, r4
003e97ac  07 10 a0 e1                                      mov r1, r7
003e97b0  d3 03 00 eb                                      bl #0x3ea704
003e97b4  10 10 9d e5                                      ldr r1, [sp, #0x10]
003e97b8  01 40 96 e7                                      ldr r4, [r6, r1]
003e97bc  04 00 a0 e1                                      mov r0, r4
003e97c0  30 38 fd eb                                      bl #0x337888
003e97c4  24 10 9d e5                                      ldr r1, [sp, #0x24]
003e97c8  08 00 a0 e1                                      mov r0, r8
003e97cc  87 fe ff eb                                      bl #0x3e91f0
003e97d0  04 00 a0 e1                                      mov r0, r4
003e97d4  08 10 a0 e1                                      mov r1, r8
003e97d8  aa 38 fd eb                                      bl #0x337a88
003e97dc  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
003e97e0  08 00 50 e1                                      cmp r0, r8
003e97e4  06 00 00 0a                                      beq #0x3e9804
003e97e8  00 00 50 e3                                      cmp r0, #0
003e97ec  04 00 00 0a                                      beq #0x3e9804
003e97f0  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
003e97f4  01 10 60 e0                                      rsb r1, r0, r1
003e97f8  80 00 51 e3                                      cmp r1, #0x80
003e97fc  19 00 00 8a                                      bhi #0x3e9868
003e9800  be 7d 0c eb                                      bl #0x708f00
003e9804  0c 30 9b e5                                      ldr r3, [fp, #0xc]
003e9808  01 a0 8a e2                                      add sl, sl, #1
003e980c  0a 00 53 e1                                      cmp r3, sl
003e9810  19 00 00 da                                      ble #0x3e987c
003e9814  44 30 9d e5                                      ldr r3, [sp, #0x44]
003e9818  48 20 9d e5                                      ldr r2, [sp, #0x48]
003e981c  02 30 63 e0                                      rsb r3, r3, r2
003e9820  43 01 b0 e1                                      asrs r0, r3, #2
003e9824  b3 ff ff 1a                                      bne #0x3e96f8
003e9828  2c 40 8d e2                                      add r4, sp, #0x2c
003e982c  90 02 94 e8                                      ldm r4, {r4, r7, sb}
003e9830  10 10 9d e5                                      ldr r1, [sp, #0x10]
003e9834  a4 50 8d e2                                      add r5, sp, #0xa4
003e9838  01 80 96 e7                                      ldr r8, [r6, r1]
003e983c  08 00 a0 e1                                      mov r0, r8
003e9840  10 38 fd eb                                      bl #0x337888
003e9844  05 00 a0 e1                                      mov r0, r5
003e9848  58 10 8d e2                                      add r1, sp, #0x58
003e984c  67 fe ff eb                                      bl #0x3e91f0
003e9850  08 00 a0 e1                                      mov r0, r8
003e9854  05 10 a0 e1                                      mov r1, r5
003e9858  8a 38 fd eb                                      bl #0x337a88
003e985c  05 00 a0 e1                                      mov r0, r5
003e9860  7b ba fc eb                                      bl #0x318254
003e9864  99 fe ff ea                                      b #0x3e92d0
003e9868  f4 9a fc eb                                      bl #0x310440
003e986c  0c 30 9b e5                                      ldr r3, [fp, #0xc]
003e9870  01 a0 8a e2                                      add sl, sl, #1
003e9874  0a 00 53 e1                                      cmp r3, sl
003e9878  e5 ff ff ca                                      bgt #0x3e9814
003e987c  2c 40 8d e2                                      add r4, sp, #0x2c
003e9880  90 02 94 e8                                      ldm r4, {r4, r7, sb}
003e9884  91 fe ff ea                                      b #0x3e92d0
003e9888  03 00 a0 e1                                      mov r0, r3
003e988c  a9 91 fc eb                                      bl #0x30df38
003e9890  48 c0 9d e5                                      ldr ip, [sp, #0x48]
003e9894  a9 ff ff ea                                      b #0x3e9740
003e9898  10 20 9d e5                                      ldr r2, [sp, #0x10]
003e989c  ec 50 8d e2                                      add r5, sp, #0xec
003e98a0  02 80 96 e7                                      ldr r8, [r6, r2]
003e98a4  08 00 a0 e1                                      mov r0, r8
003e98a8  f6 37 fd eb                                      bl #0x337888
003e98ac  05 00 a0 e1                                      mov r0, r5
003e98b0  64 10 8d e2                                      add r1, sp, #0x64
003e98b4  e4 ff ff ea                                      b #0x3e984c
003e98b8  03 31 e0 e3                                      mvn r3, #0xc0000000
003e98bc  45 ff ff ea                                      b #0x3e95d8
003e98c0  de 9a fc eb                                      bl #0x310440
003e98c4  58 ff ff ea                                      b #0x3e962c
003e98c8  04 20 a0 e1                                      mov r2, r4
003e98cc  99 91 fc eb                                      bl #0x30df38
003e98d0  04 40 80 e0                                      add r4, r0, r4
003e98d4  49 ff ff ea                                      b #0x3e9600
003e98d8  8c 92 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003e98dc  44 b8 5a 00 ac 40 00 00 f4 37 00 00 a8 9d 5b 00  .byte 0x44, 0xb8, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa8, 0x9d, 0x5b, 0x00
003e98ec  e0 ce 4d 00 0c 72 4d 00 84 08 00 00 b0 2c 00 00  .byte 0xe0, 0xce, 0x4d, 0x00, 0x0c, 0x72, 0x4d, 0x00, 0x84, 0x08, 0x00, 0x00, 0xb0, 0x2c, 0x00, 0x00

; FUNCTION 0x003ea098, declared_size=372, range_size=372, mode=arm
; class-group: SpawnGroupManager
; alias: _ZN17SpawnGroupManager8InsSpawnEP9SpawnSpot
; demangled: SpawnGroupManager::InsSpawn(SpawnSpot*)
; decoder-mode: arm
003ea098  70 40 2d e9                                      push {r4, r5, r6, lr}
003ea09c  50 31 9f e5                                      ldr r3, [pc, #0x150]
003ea0a0  00 40 51 e2                                      subs r4, r1, #0
003ea0a4  10 d0 4d e2                                      sub sp, sp, #0x10
003ea0a8  00 50 a0 e1                                      mov r5, r0
003ea0ac  03 30 8f e0                                      add r3, pc, r3
003ea0b0  3a 00 00 0a                                      beq #0x3ea1a0
003ea0b4  88 03 94 e5                                      ldr r0, [r4, #0x388]
003ea0b8  c3 fa ff eb                                      bl #0x3e8bcc
003ea0bc  01 00 70 e3                                      cmn r0, #1
003ea0c0  1f 00 00 0a                                      beq #0x3ea144
003ea0c4  08 60 95 e5                                      ldr r6, [r5, #8]
003ea0c8  0c 00 8d e5                                      str r0, [sp, #0xc]
003ea0cc  04 50 85 e2                                      add r5, r5, #4
003ea0d0  00 00 56 e3                                      cmp r6, #0
003ea0d4  1c 00 00 0a                                      beq #0x3ea14c
003ea0d8  05 20 a0 e1                                      mov r2, r5
003ea0dc  00 00 00 ea                                      b #0x3ea0e4
003ea0e0  03 60 a0 e1                                      mov r6, r3
003ea0e4  10 30 96 e5                                      ldr r3, [r6, #0x10]
003ea0e8  03 00 50 e1                                      cmp r0, r3
003ea0ec  0c 30 96 c5                                      ldrgt r3, [r6, #0xc]
003ea0f0  08 30 96 d5                                      ldrle r3, [r6, #8]
003ea0f4  02 60 a0 c1                                      movgt r6, r2
003ea0f8  06 20 a0 e1                                      mov r2, r6
003ea0fc  00 00 53 e3                                      cmp r3, #0
003ea100  f6 ff ff 1a                                      bne #0x3ea0e0
003ea104  06 00 55 e1                                      cmp r5, r6
003ea108  12 00 00 0a                                      beq #0x3ea158
003ea10c  10 30 96 e5                                      ldr r3, [r6, #0x10]
003ea110  03 00 50 e1                                      cmp r0, r3
003ea114  0c 00 00 ba                                      blt #0x3ea14c
003ea118  06 00 55 e1                                      cmp r5, r6
003ea11c  0d 00 00 0a                                      beq #0x3ea158
003ea120  14 50 86 e2                                      add r5, r6, #0x14
003ea124  05 00 a0 e1                                      mov r0, r5
003ea128  f3 fd ff eb                                      bl #0x3e98fc
003ea12c  08 40 80 e5                                      str r4, [r0, #8]
003ea130  18 30 96 e5                                      ldr r3, [r6, #0x18]
003ea134  00 50 80 e5                                      str r5, [r0]
003ea138  04 30 80 e5                                      str r3, [r0, #4]
003ea13c  00 00 83 e5                                      str r0, [r3]
003ea140  18 00 86 e5                                      str r0, [r6, #0x18]
003ea144  10 d0 8d e2                                      add sp, sp, #0x10
003ea148  70 80 bd e8                                      pop {r4, r5, r6, pc}
003ea14c  05 60 a0 e1                                      mov r6, r5
003ea150  06 00 55 e1                                      cmp r5, r6
003ea154  f1 ff ff 1a                                      bne #0x3ea120
003ea158  0c 60 8d e2                                      add r6, sp, #0xc
003ea15c  06 10 a0 e1                                      mov r1, r6
003ea160  05 00 a0 e1                                      mov r0, r5
003ea164  86 ff ff eb                                      bl #0x3e9f84
003ea168  00 30 a0 e3                                      mov r3, #0
003ea16c  08 30 80 e5                                      str r3, [r0, #8]
003ea170  06 10 a0 e1                                      mov r1, r6
003ea174  05 00 a0 e1                                      mov r0, r5
003ea178  81 ff ff eb                                      bl #0x3e9f84
003ea17c  00 50 a0 e1                                      mov r5, r0
003ea180  dd fd ff eb                                      bl #0x3e98fc
003ea184  08 40 80 e5                                      str r4, [r0, #8]
003ea188  04 30 95 e5                                      ldr r3, [r5, #4]
003ea18c  00 50 80 e5                                      str r5, [r0]
003ea190  04 30 80 e5                                      str r3, [r0, #4]
003ea194  00 00 83 e5                                      str r0, [r3]
003ea198  04 00 85 e5                                      str r0, [r5, #4]
003ea19c  e8 ff ff ea                                      b #0x3ea144
003ea1a0  50 20 9f e5                                      ldr r2, [pc, #0x50]
003ea1a4  02 20 93 e7                                      ldr r2, [r3, r2]
003ea1a8  00 20 92 e5                                      ldr r2, [r2]
003ea1ac  02 00 52 e3                                      cmp r2, #2
003ea1b0  00 40 84 05                                      streq r4, [r4]
003ea1b4  be ff ff 0a                                      beq #0x3ea0b4
003ea1b8  01 00 52 e3                                      cmp r2, #1
003ea1bc  bc ff ff 1a                                      bne #0x3ea0b4
003ea1c0  34 00 9f e5                                      ldr r0, [pc, #0x34]
003ea1c4  34 10 9f e5                                      ldr r1, [pc, #0x34]
003ea1c8  34 20 9f e5                                      ldr r2, [pc, #0x34]
003ea1cc  00 00 93 e7                                      ldr r0, [r3, r0]
003ea1d0  30 30 9f e5                                      ldr r3, [pc, #0x30]
003ea1d4  e5 c0 a0 e3                                      mov ip, #0xe5
003ea1d8  01 10 8f e0                                      add r1, pc, r1
003ea1dc  02 20 8f e0                                      add r2, pc, r2
003ea1e0  03 30 8f e0                                      add r3, pc, r3
003ea1e4  a8 00 80 e2                                      add r0, r0, #0xa8
003ea1e8  00 c0 8d e5                                      str ip, [sp]
003ea1ec  84 8f fc eb                                      bl #0x30e004
003ea1f0  af ff ff ea                                      b #0x3ea0b4
; mapping-symbol data/literal pool
003ea1f4  e4 a9 5a 00 c0 39 00 00 c0 19 00 00 00 42 4d 00  .byte 0xe4, 0xa9, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x00, 0x42, 0x4d, 0x00
003ea204  74 55 4f 00 28 bf 4d 00                          .byte 0x74, 0x55, 0x4f, 0x00, 0x28, 0xbf, 0x4d, 0x00

; FUNCTION 0x003ea730, declared_size=136, range_size=136, mode=arm
; class-group: SpawnGroupManager
; alias: _ZN17SpawnGroupManager11GetInstanceEv
; demangled: SpawnGroupManager::GetInstance()
; decoder-mode: arm
003ea730  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ea734  68 40 9f e5                                      ldr r4, [pc, #0x68]
003ea738  68 30 9f e5                                      ldr r3, [pc, #0x68]
003ea73c  04 40 8f e0                                      add r4, pc, r4
003ea740  03 60 94 e7                                      ldr r6, [r4, r3]
003ea744  00 30 96 e5                                      ldr r3, [r6]
003ea748  01 00 13 e3                                      tst r3, #1
003ea74c  02 00 00 0a                                      beq #0x3ea75c
003ea750  54 50 9f e5                                      ldr r5, [pc, #0x54]
003ea754  05 00 94 e7                                      ldr r0, [r4, r5]
003ea758  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003ea75c  06 00 a0 e1                                      mov r0, r6
003ea760  01 90 fc eb                                      bl #0x30e76c
003ea764  00 00 50 e3                                      cmp r0, #0
003ea768  f8 ff ff 0a                                      beq #0x3ea750
003ea76c  38 50 9f e5                                      ldr r5, [pc, #0x38]
003ea770  05 70 94 e7                                      ldr r7, [r4, r5]
003ea774  07 00 a0 e1                                      mov r0, r7
003ea778  01 f9 ff eb                                      bl #0x3e8b84
003ea77c  06 00 a0 e1                                      mov r0, r6
003ea780  ad 90 fc eb                                      bl #0x30ea3c
003ea784  24 30 9f e5                                      ldr r3, [pc, #0x24]
003ea788  07 00 a0 e1                                      mov r0, r7
003ea78c  03 10 94 e7                                      ldr r1, [r4, r3]
003ea790  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
003ea794  03 20 94 e7                                      ldr r2, [r4, r3]
003ea798  d9 8e fc eb                                      bl #0x30e304
003ea79c  05 00 94 e7                                      ldr r0, [r4, r5]
003ea7a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003ea7a4  54 a3 5a 00 18 3b 00 00 3c 29 00 00 00 0d 00 00  .byte 0x54, 0xa3, 0x5a, 0x00, 0x18, 0x3b, 0x00, 0x00, 0x3c, 0x29, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00
003ea7b4  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00
