; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d7cd4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZNK6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState10getIDCountENS0_28IMaterialTechniqueMapsReader11E_MAP_GROUPE
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::getIDCount(glitch::video::IMaterialTechniqueMapsReader::E_MAP_GROUP) const
; decoder-mode: arm
005d7cd4  04 30 90 e5                                      ldr r3, [r0, #4]
005d7cd8  18 20 a0 e3                                      mov r2, #0x18
005d7cdc  92 31 23 e0                                      mla r3, r2, r1, r3
005d7ce0  60 00 93 e5                                      ldr r0, [r3, #0x60]
005d7ce4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7ce8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState11endMapGroupENS0_28IMaterialTechniqueMapsReader11E_MAP_GROUPE
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::endMapGroup(glitch::video::IMaterialTechniqueMapsReader::E_MAP_GROUP)
; decoder-mode: arm
005d7ce8  1c 30 80 e2                                      add r3, r0, #0x1c
005d7cec  34 30 80 e5                                      str r3, [r0, #0x34]
005d7cf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7f90, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadStateD1Ev
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::~CMaterialTechniqueMapLoadState()
; decoder-mode: arm
005d7f90  70 40 2d e9                                      push {r4, r5, r6, lr}
005d7f94  54 30 9f e5                                      ldr r3, [pc, #0x54]
005d7f98  54 20 9f e5                                      ldr r2, [pc, #0x54]
005d7f9c  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005d7fa0  03 30 8f e0                                      add r3, pc, r3
005d7fa4  02 20 93 e7                                      ldr r2, [r3, r2]
005d7fa8  00 00 51 e3                                      cmp r1, #0
005d7fac  00 40 a0 e1                                      mov r4, r0
005d7fb0  08 20 82 e2                                      add r2, r2, #8
005d7fb4  00 20 80 e5                                      str r2, [r0]
005d7fb8  08 00 00 0a                                      beq #0x5d7fe0
005d7fbc  1c 50 80 e2                                      add r5, r0, #0x1c
005d7fc0  05 00 a0 e1                                      mov r0, r5
005d7fc4  20 10 94 e5                                      ldr r1, [r4, #0x20]
005d7fc8  d4 ff ff eb                                      bl #0x5d7f20
005d7fcc  00 30 a0 e3                                      mov r3, #0
005d7fd0  28 50 84 e5                                      str r5, [r4, #0x28]
005d7fd4  2c 30 84 e5                                      str r3, [r4, #0x2c]
005d7fd8  24 50 84 e5                                      str r5, [r4, #0x24]
005d7fdc  20 30 84 e5                                      str r3, [r4, #0x20]
005d7fe0  04 00 a0 e1                                      mov r0, r4
005d7fe4  70 1e 00 eb                                      bl #0x5df9ac
005d7fe8  04 00 a0 e1                                      mov r0, r4
005d7fec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d7ff0  f0 ca 3b 00 d0 42 00 00                          .byte 0xf0, 0xca, 0x3b, 0x00, 0xd0, 0x42, 0x00, 0x00

; FUNCTION 0x005d7ff8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadStateD0Ev
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::~CMaterialTechniqueMapLoadState()
; decoder-mode: arm
005d7ff8  10 40 2d e9                                      push {r4, lr}
005d7ffc  00 40 a0 e1                                      mov r4, r0
005d8000  e2 ff ff eb                                      bl #0x5d7f90
005d8004  04 00 a0 e1                                      mov r0, r4
005d8008  a8 d8 f4 eb                                      bl #0x30e2b0
005d800c  04 00 a0 e1                                      mov r0, r4
005d8010  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d901c, declared_size=476, range_size=476, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState8postLoadEv
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::postLoad()
; decoder-mode: arm
005d901c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d9020  04 60 90 e5                                      ldr r6, [r0, #4]
005d9024  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
005d9028  00 40 a0 e1                                      mov r4, r0
005d902c  60 90 96 e5                                      ldr sb, [r6, #0x60]
005d9030  78 00 96 e5                                      ldr r0, [r6, #0x78]
005d9034  88 b0 96 e5                                      ldr fp, [r6, #0x88]
005d9038  00 10 a0 e3                                      mov r1, #0
005d903c  90 09 05 e0                                      mul r5, r0, sb
005d9040  9b 03 0b e0                                      mul fp, fp, r3
005d9044  05 51 a0 e1                                      lsl r5, r5, #2
005d9048  03 b0 8b e2                                      add fp, fp, #3
005d904c  05 b0 8b e0                                      add fp, fp, r5
005d9050  03 b0 cb e3                                      bic fp, fp, #3
005d9054  09 91 8b e0                                      add sb, fp, sb, lsl #2
005d9058  00 01 89 e0                                      add r0, sb, r0, lsl #2
005d905c  51 6c fd eb                                      bl #0x5341a8
005d9060  8c 30 96 e5                                      ldr r3, [r6, #0x8c]
005d9064  8c 00 86 e5                                      str r0, [r6, #0x8c]
005d9068  00 00 53 e3                                      cmp r3, #0
005d906c  02 00 00 0a                                      beq #0x5d907c
005d9070  03 00 a0 e1                                      mov r0, r3
005d9074  0f d4 f4 eb                                      bl #0x30e0b8
005d9078  8c 00 96 e5                                      ldr r0, [r6, #0x8c]
005d907c  05 20 a0 e1                                      mov r2, r5
005d9080  00 10 a0 e3                                      mov r1, #0
005d9084  f5 d4 f4 eb                                      bl #0x30e460
005d9088  8c 80 96 e5                                      ldr r8, [r6, #0x8c]
005d908c  1c 70 84 e2                                      add r7, r4, #0x1c
005d9090  78 a0 96 e5                                      ldr sl, [r6, #0x78]
005d9094  24 40 94 e5                                      ldr r4, [r4, #0x24]
005d9098  05 50 88 e0                                      add r5, r8, r5
005d909c  07 00 54 e1                                      cmp r4, r7
005d90a0  15 00 00 0a                                      beq #0x5d90fc
005d90a4  10 20 94 e5                                      ldr r2, [r4, #0x10]
005d90a8  14 30 94 e5                                      ldr r3, [r4, #0x14]
005d90ac  05 00 a0 e1                                      mov r0, r5
005d90b0  92 3a 23 e0                                      mla r3, r2, sl, r3
005d90b4  03 51 88 e7                                      str r5, [r8, r3, lsl #2]
005d90b8  18 10 94 e5                                      ldr r1, [r4, #0x18]
005d90bc  88 20 96 e5                                      ldr r2, [r6, #0x88]
005d90c0  e8 d5 f4 eb                                      bl #0x30e868
005d90c4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d90c8  88 30 96 e5                                      ldr r3, [r6, #0x88]
005d90cc  00 00 51 e3                                      cmp r1, #0
005d90d0  03 50 85 e0                                      add r5, r5, r3
005d90d4  01 20 a0 e1                                      mov r2, r1
005d90d8  01 00 00 1a                                      bne #0x5d90e4
005d90dc  24 00 00 ea                                      b #0x5d9174
005d90e0  03 20 a0 e1                                      mov r2, r3
005d90e4  08 30 92 e5                                      ldr r3, [r2, #8]
005d90e8  00 00 53 e3                                      cmp r3, #0
005d90ec  fb ff ff 1a                                      bne #0x5d90e0
005d90f0  02 40 a0 e1                                      mov r4, r2
005d90f4  07 00 54 e1                                      cmp r4, r7
005d90f8  e9 ff ff 1a                                      bne #0x5d90a4
005d90fc  8c 30 96 e5                                      ldr r3, [r6, #0x8c]
005d9100  06 00 a0 e1                                      mov r0, r6
005d9104  06 40 a0 e1                                      mov r4, r6
005d9108  09 90 83 e0                                      add sb, r3, sb
005d910c  0b 30 83 e0                                      add r3, r3, fp
005d9110  80 30 86 e5                                      str r3, [r6, #0x80]
005d9114  84 90 86 e5                                      str sb, [r6, #0x84]
005d9118  00 50 a0 e3                                      mov r5, #0
005d911c  18 70 a0 e3                                      mov r7, #0x18
005d9120  97 05 0c e0                                      mul ip, r7, r5
005d9124  58 20 94 e5                                      ldr r2, [r4, #0x58]
005d9128  50 c0 8c e2                                      add ip, ip, #0x50
005d912c  0c c0 86 e0                                      add ip, r6, ip
005d9130  02 00 5c e1                                      cmp ip, r2
005d9134  29 00 00 0a                                      beq #0x5d91e0
005d9138  10 30 92 e5                                      ldr r3, [r2, #0x10]
005d913c  80 10 90 e5                                      ldr r1, [r0, #0x80]
005d9140  14 80 92 e5                                      ldr r8, [r2, #0x14]
005d9144  00 00 53 e3                                      cmp r3, #0
005d9148  04 30 83 12                                      addne r3, r3, #4
005d914c  08 31 81 e7                                      str r3, [r1, r8, lsl #2]
005d9150  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005d9154  00 00 51 e3                                      cmp r1, #0
005d9158  12 00 00 0a                                      beq #0x5d91a8
005d915c  01 20 a0 e1                                      mov r2, r1
005d9160  08 30 92 e5                                      ldr r3, [r2, #8]
005d9164  00 00 53 e3                                      cmp r3, #0
005d9168  f0 ff ff 0a                                      beq #0x5d9130
005d916c  03 20 a0 e1                                      mov r2, r3
005d9170  fa ff ff ea                                      b #0x5d9160
005d9174  04 30 94 e5                                      ldr r3, [r4, #4]
005d9178  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005d917c  02 00 54 e1                                      cmp r4, r2
005d9180  05 00 00 1a                                      bne #0x5d919c
005d9184  03 40 a0 e1                                      mov r4, r3
005d9188  04 30 93 e5                                      ldr r3, [r3, #4]
005d918c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005d9190  04 00 52 e1                                      cmp r2, r4
005d9194  fa ff ff 0a                                      beq #0x5d9184
005d9198  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d919c  01 00 53 e1                                      cmp r3, r1
005d91a0  03 40 a0 11                                      movne r4, r3
005d91a4  bc ff ff ea                                      b #0x5d909c
005d91a8  04 30 92 e5                                      ldr r3, [r2, #4]
005d91ac  0c 80 93 e5                                      ldr r8, [r3, #0xc]
005d91b0  08 00 52 e1                                      cmp r2, r8
005d91b4  05 00 00 1a                                      bne #0x5d91d0
005d91b8  03 20 a0 e1                                      mov r2, r3
005d91bc  04 30 93 e5                                      ldr r3, [r3, #4]
005d91c0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005d91c4  02 00 51 e1                                      cmp r1, r2
005d91c8  fa ff ff 0a                                      beq #0x5d91b8
005d91cc  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005d91d0  01 00 53 e1                                      cmp r3, r1
005d91d4  03 20 a0 11                                      movne r2, r3
005d91d8  02 00 5c e1                                      cmp ip, r2
005d91dc  d5 ff ff 1a                                      bne #0x5d9138
005d91e0  01 50 85 e2                                      add r5, r5, #1
005d91e4  02 00 55 e3                                      cmp r5, #2
005d91e8  18 40 84 e2                                      add r4, r4, #0x18
005d91ec  04 00 80 e2                                      add r0, r0, #4
005d91f0  ca ff ff 1a                                      bne #0x5d9120
005d91f4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005d9918, declared_size=320, range_size=320, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState5clearEv
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::clear()
; decoder-mode: arm
005d9918  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d991c  04 50 90 e5                                      ldr r5, [r0, #4]
005d9920  00 20 a0 e3                                      mov r2, #0
005d9924  24 71 9f e5                                      ldr r7, [pc, #0x124]
005d9928  28 30 95 e5                                      ldr r3, [r5, #0x28]
005d992c  08 d0 4d e2                                      sub sp, sp, #8
005d9930  07 70 8f e0                                      add r7, pc, r7
005d9934  dc 10 93 e5                                      ldr r1, [r3, #0xdc]
005d9938  08 21 83 e5                                      str r2, [r3, #0x108]
005d993c  04 11 83 e5                                      str r1, [r3, #0x104]
005d9940  8c 00 95 e5                                      ldr r0, [r5, #0x8c]
005d9944  8c 20 85 e5                                      str r2, [r5, #0x8c]
005d9948  02 00 50 e1                                      cmp r0, r2
005d994c  00 00 00 0a                                      beq #0x5d9954
005d9950  d8 d1 f4 eb                                      bl #0x30e0b8
005d9954  08 40 95 e5                                      ldr r4, [r5, #8]
005d9958  00 30 a0 e3                                      mov r3, #0
005d995c  84 30 85 e5                                      str r3, [r5, #0x84]
005d9960  05 00 54 e1                                      cmp r4, r5
005d9964  80 30 85 e5                                      str r3, [r5, #0x80]
005d9968  88 30 85 e5                                      str r3, [r5, #0x88]
005d996c  35 00 00 0a                                      beq #0x5d9a48
005d9970  dc 80 9f e5                                      ldr r8, [pc, #0xdc]
005d9974  04 60 8d e2                                      add r6, sp, #4
005d9978  b2 12 d4 e1                                      ldrh r1, [r4, #0x22]
005d997c  18 20 95 e5                                      ldr r2, [r5, #0x18]
005d9980  81 21 82 e0                                      add r2, r2, r1, lsl #3
005d9984  04 20 92 e5                                      ldr r2, [r2, #4]
005d9988  1c 30 82 e5                                      str r3, [r2, #0x1c]
005d998c  18 20 95 e5                                      ldr r2, [r5, #0x18]
005d9990  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
005d9994  b2 12 d4 e1                                      ldrh r1, [r4, #0x22]
005d9998  88 30 95 e5                                      ldr r3, [r5, #0x88]
005d999c  00 00 62 e0                                      rsb r0, r2, r0
005d99a0  c0 01 51 e1                                      cmp r1, r0, asr #3
005d99a4  08 20 97 27                                      ldrhs r2, [r7, r8]
005d99a8  81 21 82 30                                      addlo r2, r2, r1, lsl #3
005d99ac  06 00 a0 e1                                      mov r0, r6
005d99b0  00 20 92 e5                                      ldr r2, [r2]
005d99b4  00 00 52 e3                                      cmp r2, #0
005d99b8  04 20 8d e5                                      str r2, [sp, #4]
005d99bc  00 10 92 15                                      ldrne r1, [r2]
005d99c0  01 10 81 12                                      addne r1, r1, #1
005d99c4  00 10 82 15                                      strne r1, [r2]
005d99c8  04 20 9d 15                                      ldrne r2, [sp, #4]
005d99cc  10 20 d2 e5                                      ldrb r2, [r2, #0x10]
005d99d0  03 30 82 e0                                      add r3, r2, r3
005d99d4  88 30 85 e5                                      str r3, [r5, #0x88]
005d99d8  36 e2 f5 eb                                      bl #0x3522b8
005d99dc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005d99e0  00 00 52 e3                                      cmp r2, #0
005d99e4  01 00 00 1a                                      bne #0x5d99f0
005d99e8  08 00 00 ea                                      b #0x5d9a10
005d99ec  03 20 a0 e1                                      mov r2, r3
005d99f0  08 30 92 e5                                      ldr r3, [r2, #8]
005d99f4  00 00 53 e3                                      cmp r3, #0
005d99f8  fb ff ff 1a                                      bne #0x5d99ec
005d99fc  02 40 a0 e1                                      mov r4, r2
005d9a00  04 00 55 e1                                      cmp r5, r4
005d9a04  0f 00 00 0a                                      beq #0x5d9a48
005d9a08  88 30 95 e5                                      ldr r3, [r5, #0x88]
005d9a0c  d9 ff ff ea                                      b #0x5d9978
005d9a10  04 30 94 e5                                      ldr r3, [r4, #4]
005d9a14  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005d9a18  04 00 51 e1                                      cmp r1, r4
005d9a1c  05 00 00 1a                                      bne #0x5d9a38
005d9a20  03 40 a0 e1                                      mov r4, r3
005d9a24  04 30 93 e5                                      ldr r3, [r3, #4]
005d9a28  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005d9a2c  04 00 52 e1                                      cmp r2, r4
005d9a30  fa ff ff 0a                                      beq #0x5d9a20
005d9a34  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005d9a38  02 00 53 e1                                      cmp r3, r2
005d9a3c  03 40 a0 11                                      movne r4, r3
005d9a40  04 00 55 e1                                      cmp r5, r4
005d9a44  ef ff ff 1a                                      bne #0x5d9a08
005d9a48  08 d0 8d e2                                      add sp, sp, #8
005d9a4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005d9a50  60 b1 3b 00 dc 30 00 00                          .byte 0x60, 0xb1, 0x3b, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x005dacd4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState8clearIDsENS0_28IMaterialTechniqueMapsReader11E_MAP_GROUPE
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::clearIDs(glitch::video::IMaterialTechniqueMapsReader::E_MAP_GROUP)
; decoder-mode: arm
005dacd4  70 40 2d e9                                      push {r4, r5, r6, lr}
005dacd8  18 30 a0 e3                                      mov r3, #0x18
005dacdc  93 01 03 e0                                      mul r3, r3, r1
005dace0  04 20 90 e5                                      ldr r2, [r0, #4]
005dace4  03 40 82 e0                                      add r4, r2, r3
005dace8  60 10 94 e5                                      ldr r1, [r4, #0x60]
005dacec  00 00 51 e3                                      cmp r1, #0
005dacf0  09 00 00 0a                                      beq #0x5dad1c
005dacf4  50 30 83 e2                                      add r3, r3, #0x50
005dacf8  03 50 82 e0                                      add r5, r2, r3
005dacfc  05 00 a0 e1                                      mov r0, r5
005dad00  54 10 94 e5                                      ldr r1, [r4, #0x54]
005dad04  dc ff ff eb                                      bl #0x5dac7c
005dad08  00 30 a0 e3                                      mov r3, #0
005dad0c  60 30 84 e5                                      str r3, [r4, #0x60]
005dad10  5c 50 84 e5                                      str r5, [r4, #0x5c]
005dad14  58 50 84 e5                                      str r5, [r4, #0x58]
005dad18  54 30 84 e5                                      str r3, [r4, #0x54]
005dad1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005db8e0, declared_size=480, range_size=480, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState6insertERKNS0_28IMaterialTechniqueMapsReader12SMapGroupKeyE
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::insert(glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const&)
; decoder-mode: arm
005db8e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005db8e4  04 30 91 e5                                      ldr r3, [r1, #4]
005db8e8  00 c0 91 e5                                      ldr ip, [r1]
005db8ec  24 d0 4d e2                                      sub sp, sp, #0x24
005db8f0  00 50 a0 e1                                      mov r5, r0
005db8f4  0c 30 8d e5                                      str r3, [sp, #0xc]
005db8f8  01 40 a0 e1                                      mov r4, r1
005db8fc  00 30 a0 e3                                      mov r3, #0
005db900  14 00 8d e2                                      add r0, sp, #0x14
005db904  1c 10 85 e2                                      add r1, r5, #0x1c
005db908  08 20 8d e2                                      add r2, sp, #8
005db90c  10 30 8d e5                                      str r3, [sp, #0x10]
005db910  08 c0 8d e5                                      str ip, [sp, #8]
005db914  7b ff ff eb                                      bl #0x5db708
005db918  10 30 9d e5                                      ldr r3, [sp, #0x10]
005db91c  94 71 9f e5                                      ldr r7, [pc, #0x194]
005db920  00 00 53 e3                                      cmp r3, #0
005db924  07 70 8f e0                                      add r7, pc, r7
005db928  06 00 00 0a                                      beq #0x5db948
005db92c  04 20 13 e5                                      ldr r2, [r3, #-4]
005db930  01 20 42 e2                                      sub r2, r2, #1
005db934  00 00 52 e3                                      cmp r2, #0
005db938  04 20 03 e5                                      str r2, [r3, #-4]
005db93c  59 00 00 0a                                      beq #0x5dbaa8
005db940  00 30 a0 e3                                      mov r3, #0
005db944  10 30 8d e5                                      str r3, [sp, #0x10]
005db948  18 30 dd e5                                      ldrb r3, [sp, #0x18]
005db94c  00 00 53 e3                                      cmp r3, #0
005db950  05 00 00 1a                                      bne #0x5db96c
005db954  00 20 94 e5                                      ldr r2, [r4]
005db958  08 30 95 e5                                      ldr r3, [r5, #8]
005db95c  03 00 52 e1                                      cmp r2, r3
005db960  3d 00 00 0a                                      beq #0x5dba5c
005db964  24 d0 8d e2                                      add sp, sp, #0x24
005db968  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005db96c  04 60 95 e5                                      ldr r6, [r5, #4]
005db970  14 00 9d e5                                      ldr r0, [sp, #0x14]
005db974  88 10 96 e5                                      ldr r1, [r6, #0x88]
005db978  18 00 80 e2                                      add r0, r0, #0x18
005db97c  50 f4 ff eb                                      bl #0x5d8ac4
005db980  14 30 9d e5                                      ldr r3, [sp, #0x14]
005db984  08 a0 96 e5                                      ldr sl, [r6, #8]
005db988  18 30 93 e5                                      ldr r3, [r3, #0x18]
005db98c  06 00 5a e1                                      cmp sl, r6
005db990  00 30 8d e5                                      str r3, [sp]
005db994  ee ff ff 0a                                      beq #0x5db954
005db998  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
005db99c  1c b0 8d e2                                      add fp, sp, #0x1c
005db9a0  04 30 8d e5                                      str r3, [sp, #4]
005db9a4  b2 32 da e1                                      ldrh r3, [sl, #0x22]
005db9a8  18 20 96 e5                                      ldr r2, [r6, #0x18]
005db9ac  1c c0 96 e5                                      ldr ip, [r6, #0x1c]
005db9b0  83 11 82 e0                                      add r1, r2, r3, lsl #3
005db9b4  04 00 91 e5                                      ldr r0, [r1, #4]
005db9b8  0c 20 62 e0                                      rsb r2, r2, ip
005db9bc  c2 01 53 e1                                      cmp r3, r2, asr #3
005db9c0  1c 80 90 e5                                      ldr r8, [r0, #0x1c]
005db9c4  00 30 9d e5                                      ldr r3, [sp]
005db9c8  0b 00 a0 e1                                      mov r0, fp
005db9cc  08 80 83 e0                                      add r8, r3, r8
005db9d0  04 30 9d 25                                      ldrhs r3, [sp, #4]
005db9d4  03 10 97 27                                      ldrhs r1, [r7, r3]
005db9d8  00 30 91 e5                                      ldr r3, [r1]
005db9dc  00 00 53 e3                                      cmp r3, #0
005db9e0  1c 30 8d e5                                      str r3, [sp, #0x1c]
005db9e4  00 20 93 15                                      ldrne r2, [r3]
005db9e8  01 20 82 12                                      addne r2, r2, #1
005db9ec  00 20 83 15                                      strne r2, [r3]
005db9f0  1c 30 9d 15                                      ldrne r3, [sp, #0x1c]
005db9f4  10 90 d3 e5                                      ldrb sb, [r3, #0x10]
005db9f8  2e da f5 eb                                      bl #0x3522b8
005db9fc  09 90 88 e0                                      add sb, r8, sb
005dba00  09 00 58 e1                                      cmp r8, sb
005dba04  05 00 00 0a                                      beq #0x5dba20
005dba08  09 90 68 e0                                      rsb sb, r8, sb
005dba0c  00 30 a0 e3                                      mov r3, #0
005dba10  03 30 c8 e7                                      strb r3, [r8, r3]
005dba14  01 30 83 e2                                      add r3, r3, #1
005dba18  09 00 53 e1                                      cmp r3, sb
005dba1c  fb ff ff 1a                                      bne #0x5dba10
005dba20  0c 20 9a e5                                      ldr r2, [sl, #0xc]
005dba24  00 00 52 e3                                      cmp r2, #0
005dba28  01 00 00 1a                                      bne #0x5dba34
005dba2c  10 00 00 ea                                      b #0x5dba74
005dba30  03 20 a0 e1                                      mov r2, r3
005dba34  08 30 92 e5                                      ldr r3, [r2, #8]
005dba38  00 00 53 e3                                      cmp r3, #0
005dba3c  fb ff ff 1a                                      bne #0x5dba30
005dba40  02 a0 a0 e1                                      mov sl, r2
005dba44  0a 00 56 e1                                      cmp r6, sl
005dba48  d5 ff ff 1a                                      bne #0x5db9a4
005dba4c  00 20 94 e5                                      ldr r2, [r4]
005dba50  08 30 95 e5                                      ldr r3, [r5, #8]
005dba54  03 00 52 e1                                      cmp r2, r3
005dba58  c1 ff ff 1a                                      bne #0x5db964
005dba5c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005dba60  04 20 94 e5                                      ldr r2, [r4, #4]
005dba64  03 00 52 e1                                      cmp r2, r3
005dba68  14 30 9d 05                                      ldreq r3, [sp, #0x14]
005dba6c  34 30 85 05                                      streq r3, [r5, #0x34]
005dba70  bb ff ff ea                                      b #0x5db964
005dba74  04 30 9a e5                                      ldr r3, [sl, #4]
005dba78  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005dba7c  01 00 5a e1                                      cmp sl, r1
005dba80  05 00 00 1a                                      bne #0x5dba9c
005dba84  03 a0 a0 e1                                      mov sl, r3
005dba88  04 30 93 e5                                      ldr r3, [r3, #4]
005dba8c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005dba90  02 00 5a e1                                      cmp sl, r2
005dba94  fa ff ff 0a                                      beq #0x5dba84
005dba98  0c 20 9a e5                                      ldr r2, [sl, #0xc]
005dba9c  03 00 52 e1                                      cmp r2, r3
005dbaa0  03 a0 a0 11                                      movne sl, r3
005dbaa4  e6 ff ff ea                                      b #0x5dba44
005dbaa8  10 00 9d e5                                      ldr r0, [sp, #0x10]
005dbaac  04 00 40 e2                                      sub r0, r0, #4
005dbab0  f4 62 fd eb                                      bl #0x534688
005dbab4  a1 ff ff ea                                      b #0x5db940
; mapping-symbol data/literal pool
005dbab8  6c 91 3b 00 dc 30 00 00                          .byte 0x6c, 0x91, 0x3b, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x005dbc44, declared_size=168, range_size=168, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState9assignMapENSt4priv17_Rb_tree_iteratorISt4pairIKNS0_28IMaterialTechniqueMapsReader12SMapGroupKeyENS_4core19SSharedProcessArrayIhEEENS3_11_MapTraitsTISC_EEEEthh
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::assignMap(std::priv::_Rb_tree_iterator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> >, std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > > >, unsigned short, unsigned char, unsigned char)
; decoder-mode: arm
005dbc44  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005dbc48  04 00 90 e5                                      ldr r0, [r0, #4]
005dbc4c  00 40 91 e5                                      ldr r4, [r1]
005dbc50  0c d0 4d e2                                      sub sp, sp, #0xc
005dbc54  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005dbc58  18 50 94 e5                                      ldr r5, [r4, #0x18]
005dbc5c  80 10 9f e5                                      ldr r1, [pc, #0x80]
005dbc60  82 61 8c e0                                      add r6, ip, r2, lsl #3
005dbc64  04 40 96 e5                                      ldr r4, [r6, #4]
005dbc68  ff 00 53 e3                                      cmp r3, #0xff
005dbc6c  01 10 8f e0                                      add r1, pc, r1
005dbc70  1c 70 94 e5                                      ldr r7, [r4, #0x1c]
005dbc74  20 40 dd e5                                      ldrb r4, [sp, #0x20]
005dbc78  07 50 85 e0                                      add r5, r5, r7
005dbc7c  03 40 c5 17                                      strbne r4, [r5, r3]
005dbc80  01 00 00 0a                                      beq #0x5dbc8c
005dbc84  0c d0 8d e2                                      add sp, sp, #0xc
005dbc88  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005dbc8c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
005dbc90  03 c0 6c e0                                      rsb ip, ip, r3
005dbc94  cc 01 52 e1                                      cmp r2, ip, asr #3
005dbc98  48 30 9f 25                                      ldrhs r3, [pc, #0x48]
005dbc9c  03 60 91 27                                      ldrhs r6, [r1, r3]
005dbca0  00 30 96 e5                                      ldr r3, [r6]
005dbca4  04 00 8d e2                                      add r0, sp, #4
005dbca8  00 00 53 e3                                      cmp r3, #0
005dbcac  04 30 8d e5                                      str r3, [sp, #4]
005dbcb0  00 20 93 15                                      ldrne r2, [r3]
005dbcb4  01 20 82 12                                      addne r2, r2, #1
005dbcb8  00 20 83 15                                      strne r2, [r3]
005dbcbc  04 30 9d 15                                      ldrne r3, [sp, #4]
005dbcc0  10 60 d3 e5                                      ldrb r6, [r3, #0x10]
005dbcc4  7b d9 f5 eb                                      bl #0x3522b8
005dbcc8  06 60 85 e0                                      add r6, r5, r6
005dbccc  06 00 55 e1                                      cmp r5, r6
005dbcd0  eb ff ff 0a                                      beq #0x5dbc84
005dbcd4  01 40 c5 e4                                      strb r4, [r5], #1
005dbcd8  06 00 55 e1                                      cmp r5, r6
005dbcdc  fc ff ff 1a                                      bne #0x5dbcd4
005dbce0  e7 ff ff ea                                      b #0x5dbc84
; mapping-symbol data/literal pool
005dbce4  24 8e 3b 00 dc 30 00 00                          .byte 0x24, 0x8e, 0x3b, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x005dbcec, declared_size=280, range_size=280, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState13processAssignENSt4priv17_Rb_tree_iteratorISt4pairIKNS0_28IMaterialTechniqueMapsReader12SMapGroupKeyENS_4core19SSharedProcessArrayIhEEENS3_11_MapTraitsTISC_EEEEPKchSH_h
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::processAssign(std::priv::_Rb_tree_iterator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> >, std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > > >, char const*, unsigned char, char const*, unsigned char)
; decoder-mode: arm
005dbcec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005dbcf0  b0 c1 d0 e1                                      ldrh ip, [r0, #0x10]
005dbcf4  01 70 a0 e1                                      mov r7, r1
005dbcf8  ff 1f 0f e3                                      movw r1, #0xffff
005dbcfc  24 d0 4d e2                                      sub sp, sp, #0x24
005dbd00  01 00 5c e1                                      cmp ip, r1
005dbd04  00 50 a0 e1                                      mov r5, r0
005dbd08  02 60 a0 e1                                      mov r6, r2
005dbd0c  48 b0 9d e5                                      ldr fp, [sp, #0x48]
005dbd10  4c 40 dd e5                                      ldrb r4, [sp, #0x4c]
005dbd14  07 00 00 0a                                      beq #0x5dbd38
005dbd18  00 e0 97 e5                                      ldr lr, [r7]
005dbd1c  20 10 8d e2                                      add r1, sp, #0x20
005dbd20  0c 20 a0 e1                                      mov r2, ip
005dbd24  0c e0 21 e5                                      str lr, [r1, #-0xc]!
005dbd28  00 40 8d e5                                      str r4, [sp]
005dbd2c  c4 ff ff eb                                      bl #0x5dbc44
005dbd30  24 d0 8d e2                                      add sp, sp, #0x24
005dbd34  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005dbd38  04 80 90 e5                                      ldr r8, [r0, #4]
005dbd3c  08 40 98 e5                                      ldr r4, [r8, #8]
005dbd40  08 00 54 e1                                      cmp r4, r8
005dbd44  f9 ff ff 0a                                      beq #0x5dbd30
005dbd48  18 30 8d e2                                      add r3, sp, #0x18
005dbd4c  1f a0 8d e2                                      add sl, sp, #0x1f
005dbd50  1e 90 8d e2                                      add sb, sp, #0x1e
005dbd54  0c 30 8d e5                                      str r3, [sp, #0xc]
005dbd58  b2 12 d4 e1                                      ldrh r1, [r4, #0x22]
005dbd5c  05 00 a0 e1                                      mov r0, r5
005dbd60  06 20 a0 e1                                      mov r2, r6
005dbd64  0a 30 a0 e1                                      mov r3, sl
005dbd68  00 b0 8d e5                                      str fp, [sp]
005dbd6c  04 90 8d e5                                      str sb, [sp, #4]
005dbd70  a8 10 00 eb                                      bl #0x5e0018
005dbd74  00 00 50 e3                                      cmp r0, #0
005dbd78  08 00 00 0a                                      beq #0x5dbda0
005dbd7c  00 20 97 e5                                      ldr r2, [r7]
005dbd80  1e c0 dd e5                                      ldrb ip, [sp, #0x1e]
005dbd84  1f 30 dd e5                                      ldrb r3, [sp, #0x1f]
005dbd88  18 20 8d e5                                      str r2, [sp, #0x18]
005dbd8c  b2 22 d4 e1                                      ldrh r2, [r4, #0x22]
005dbd90  05 00 a0 e1                                      mov r0, r5
005dbd94  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005dbd98  00 c0 8d e5                                      str ip, [sp]
005dbd9c  a8 ff ff eb                                      bl #0x5dbc44
005dbda0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005dbda4  00 00 52 e3                                      cmp r2, #0
005dbda8  01 00 00 1a                                      bne #0x5dbdb4
005dbdac  07 00 00 ea                                      b #0x5dbdd0
005dbdb0  03 20 a0 e1                                      mov r2, r3
005dbdb4  08 30 92 e5                                      ldr r3, [r2, #8]
005dbdb8  00 00 53 e3                                      cmp r3, #0
005dbdbc  fb ff ff 1a                                      bne #0x5dbdb0
005dbdc0  02 40 a0 e1                                      mov r4, r2
005dbdc4  04 00 58 e1                                      cmp r8, r4
005dbdc8  e2 ff ff 1a                                      bne #0x5dbd58
005dbdcc  d7 ff ff ea                                      b #0x5dbd30
005dbdd0  04 30 94 e5                                      ldr r3, [r4, #4]
005dbdd4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005dbdd8  04 00 51 e1                                      cmp r1, r4
005dbddc  05 00 00 1a                                      bne #0x5dbdf8
005dbde0  03 40 a0 e1                                      mov r4, r3
005dbde4  04 30 93 e5                                      ldr r3, [r3, #4]
005dbde8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005dbdec  04 00 52 e1                                      cmp r2, r4
005dbdf0  fa ff ff 0a                                      beq #0x5dbde0
005dbdf4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005dbdf8  02 00 53 e1                                      cmp r3, r2
005dbdfc  03 40 a0 11                                      movne r4, r3
005dbe00  ef ff ff ea                                      b #0x5dbdc4

; FUNCTION 0x005dbe04, declared_size=596, range_size=596, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState11processRuleEPKchS4_h
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::processRule(char const*, unsigned char, char const*, unsigned char)
; decoder-mode: arm
005dbe04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005dbe08  34 c0 90 e5                                      ldr ip, [r0, #0x34]
005dbe0c  1c 60 80 e2                                      add r6, r0, #0x1c
005dbe10  2c d0 4d e2                                      sub sp, sp, #0x2c
005dbe14  0c 00 56 e1                                      cmp r6, ip
005dbe18  00 50 a0 e1                                      mov r5, r0
005dbe1c  01 90 a0 e1                                      mov sb, r1
005dbe20  02 a0 a0 e1                                      mov sl, r2
005dbe24  03 80 a0 e1                                      mov r8, r3
005dbe28  50 70 dd e5                                      ldrb r7, [sp, #0x50]
005dbe2c  08 00 00 0a                                      beq #0x5dbe54
005dbe30  28 10 8d e2                                      add r1, sp, #0x28
005dbe34  0c c0 21 e5                                      str ip, [r1, #-0xc]!
005dbe38  09 20 a0 e1                                      mov r2, sb
005dbe3c  0a 30 a0 e1                                      mov r3, sl
005dbe40  00 80 8d e5                                      str r8, [sp]
005dbe44  04 70 8d e5                                      str r7, [sp, #4]
005dbe48  a7 ff ff eb                                      bl #0x5dbcec
005dbe4c  2c d0 8d e2                                      add sp, sp, #0x2c
005dbe50  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005dbe54  12 30 d0 e5                                      ldrb r3, [r0, #0x12]
005dbe58  00 00 53 e3                                      cmp r3, #0
005dbe5c  02 00 00 0a                                      beq #0x5dbe6c
005dbe60  13 20 d0 e5                                      ldrb r2, [r0, #0x13]
005dbe64  00 00 52 e3                                      cmp r2, #0
005dbe68  57 00 00 1a                                      bne #0x5dbfcc
005dbe6c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005dbe70  01 30 23 e2                                      eor r3, r3, #1
005dbe74  18 10 a0 e3                                      mov r1, #0x18
005dbe78  91 03 01 e0                                      mul r1, r1, r3
005dbe7c  04 10 95 e9                                      ldmib r5, {r2, ip}
005dbe80  18 00 8d e5                                      str r0, [sp, #0x18]
005dbe84  28 00 8d e2                                      add r0, sp, #0x28
005dbe88  50 b0 81 e2                                      add fp, r1, #0x50
005dbe8c  03 31 80 e0                                      add r3, r0, r3, lsl #2
005dbe90  01 10 82 e0                                      add r1, r2, r1
005dbe94  14 c0 8d e5                                      str ip, [sp, #0x14]
005dbe98  0b b0 82 e0                                      add fp, r2, fp
005dbe9c  14 30 43 e2                                      sub r3, r3, #0x14
005dbea0  20 20 8d e2                                      add r2, sp, #0x20
005dbea4  58 40 91 e5                                      ldr r4, [r1, #0x58]
005dbea8  08 30 8d e5                                      str r3, [sp, #8]
005dbeac  0c 20 8d e5                                      str r2, [sp, #0xc]
005dbeb0  04 00 5b e1                                      cmp fp, r4
005dbeb4  e4 ff ff 0a                                      beq #0x5dbe4c
005dbeb8  20 c0 95 e5                                      ldr ip, [r5, #0x20]
005dbebc  14 30 94 e5                                      ldr r3, [r4, #0x14]
005dbec0  08 00 9d e5                                      ldr r0, [sp, #8]
005dbec4  00 00 5c e3                                      cmp ip, #0
005dbec8  00 30 80 e5                                      str r3, [r0]
005dbecc  2f 00 00 0a                                      beq #0x5dbf90
005dbed0  14 10 9d e5                                      ldr r1, [sp, #0x14]
005dbed4  18 00 9d e5                                      ldr r0, [sp, #0x18]
005dbed8  06 20 a0 e1                                      mov r2, r6
005dbedc  10 30 9c e5                                      ldr r3, [ip, #0x10]
005dbee0  03 00 51 e1                                      cmp r1, r3
005dbee4  09 00 00 8a                                      bhi #0x5dbf10
005dbee8  05 00 00 0a                                      beq #0x5dbf04
005dbeec  08 30 9c e5                                      ldr r3, [ip, #8]
005dbef0  0c 20 a0 e1                                      mov r2, ip
005dbef4  00 00 53 e3                                      cmp r3, #0
005dbef8  09 00 00 0a                                      beq #0x5dbf24
005dbefc  03 c0 a0 e1                                      mov ip, r3
005dbf00  f5 ff ff ea                                      b #0x5dbedc
005dbf04  14 30 9c e5                                      ldr r3, [ip, #0x14]
005dbf08  00 00 53 e1                                      cmp r3, r0
005dbf0c  f6 ff ff 2a                                      bhs #0x5dbeec
005dbf10  0c 30 9c e5                                      ldr r3, [ip, #0xc]
005dbf14  02 c0 a0 e1                                      mov ip, r2
005dbf18  0c 20 a0 e1                                      mov r2, ip
005dbf1c  00 00 53 e3                                      cmp r3, #0
005dbf20  f5 ff ff 1a                                      bne #0x5dbefc
005dbf24  06 00 5c e1                                      cmp ip, r6
005dbf28  18 00 00 0a                                      beq #0x5dbf90
005dbf2c  10 30 9c e5                                      ldr r3, [ip, #0x10]
005dbf30  03 00 51 e1                                      cmp r1, r3
005dbf34  15 00 00 3a                                      blo #0x5dbf90
005dbf38  11 00 00 0a                                      beq #0x5dbf84
005dbf3c  09 20 a0 e1                                      mov r2, sb
005dbf40  05 00 a0 e1                                      mov r0, r5
005dbf44  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005dbf48  0a 30 a0 e1                                      mov r3, sl
005dbf4c  20 c0 8d e5                                      str ip, [sp, #0x20]
005dbf50  00 80 8d e5                                      str r8, [sp]
005dbf54  04 70 8d e5                                      str r7, [sp, #4]
005dbf58  63 ff ff eb                                      bl #0x5dbcec
005dbf5c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005dbf60  00 00 52 e3                                      cmp r2, #0
005dbf64  0b 00 00 0a                                      beq #0x5dbf98
005dbf68  02 40 a0 e1                                      mov r4, r2
005dbf6c  00 00 00 ea                                      b #0x5dbf74
005dbf70  03 40 a0 e1                                      mov r4, r3
005dbf74  08 30 94 e5                                      ldr r3, [r4, #8]
005dbf78  00 00 53 e3                                      cmp r3, #0
005dbf7c  fb ff ff 1a                                      bne #0x5dbf70
005dbf80  ca ff ff ea                                      b #0x5dbeb0
005dbf84  14 30 9c e5                                      ldr r3, [ip, #0x14]
005dbf88  03 00 50 e1                                      cmp r0, r3
005dbf8c  ea ff ff 2a                                      bhs #0x5dbf3c
005dbf90  06 c0 a0 e1                                      mov ip, r6
005dbf94  e8 ff ff ea                                      b #0x5dbf3c
005dbf98  04 30 94 e5                                      ldr r3, [r4, #4]
005dbf9c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005dbfa0  01 00 54 e1                                      cmp r4, r1
005dbfa4  05 00 00 1a                                      bne #0x5dbfc0
005dbfa8  03 40 a0 e1                                      mov r4, r3
005dbfac  04 30 93 e5                                      ldr r3, [r3, #4]
005dbfb0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005dbfb4  04 00 52 e1                                      cmp r2, r4
005dbfb8  fa ff ff 0a                                      beq #0x5dbfa8
005dbfbc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005dbfc0  03 00 52 e1                                      cmp r2, r3
005dbfc4  03 40 a0 11                                      movne r4, r3
005dbfc8  b8 ff ff ea                                      b #0x5dbeb0
005dbfcc  24 40 90 e5                                      ldr r4, [r0, #0x24]
005dbfd0  24 b0 8d e2                                      add fp, sp, #0x24
005dbfd4  06 00 54 e1                                      cmp r4, r6
005dbfd8  9b ff ff 0a                                      beq #0x5dbe4c
005dbfdc  09 20 a0 e1                                      mov r2, sb
005dbfe0  05 00 a0 e1                                      mov r0, r5
005dbfe4  0b 10 a0 e1                                      mov r1, fp
005dbfe8  0a 30 a0 e1                                      mov r3, sl
005dbfec  24 40 8d e5                                      str r4, [sp, #0x24]
005dbff0  00 80 8d e5                                      str r8, [sp]
005dbff4  04 70 8d e5                                      str r7, [sp, #4]
005dbff8  3b ff ff eb                                      bl #0x5dbcec
005dbffc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005dc000  00 00 52 e3                                      cmp r2, #0
005dc004  01 00 00 1a                                      bne #0x5dc010
005dc008  05 00 00 ea                                      b #0x5dc024
005dc00c  03 20 a0 e1                                      mov r2, r3
005dc010  08 30 92 e5                                      ldr r3, [r2, #8]
005dc014  00 00 53 e3                                      cmp r3, #0
005dc018  fb ff ff 1a                                      bne #0x5dc00c
005dc01c  02 40 a0 e1                                      mov r4, r2
005dc020  eb ff ff ea                                      b #0x5dbfd4
005dc024  04 30 94 e5                                      ldr r3, [r4, #4]
005dc028  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005dc02c  04 00 51 e1                                      cmp r1, r4
005dc030  05 00 00 1a                                      bne #0x5dc04c
005dc034  03 40 a0 e1                                      mov r4, r3
005dc038  04 30 93 e5                                      ldr r3, [r3, #4]
005dc03c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005dc040  04 00 52 e1                                      cmp r2, r4
005dc044  fa ff ff 0a                                      beq #0x5dc034
005dc048  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005dc04c  02 00 53 e1                                      cmp r3, r2
005dc050  03 40 a0 11                                      movne r4, r3
005dc054  de ff ff ea                                      b #0x5dbfd4

; FUNCTION 0x005df180, declared_size=228, range_size=228, mode=arm
; class-group: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState
; alias: _ZN6glitch5video24CMaterialRendererManager30CMaterialTechniqueMapLoadState5getIDENS0_28IMaterialTechniqueMapsReader11E_MAP_GROUPEPKc
; demangled: glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::getID(glitch::video::IMaterialTechniqueMapsReader::E_MAP_GROUP, char const*)
; decoder-mode: arm
005df180  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005df184  00 60 a0 e1                                      mov r6, r0
005df188  14 d0 4d e2                                      sub sp, sp, #0x14
005df18c  01 50 a0 e1                                      mov r5, r1
005df190  02 00 a0 e1                                      mov r0, r2
005df194  01 10 a0 e3                                      mov r1, #1
005df198  04 70 96 e5                                      ldr r7, [r6, #4]
005df19c  b4 17 03 eb                                      bl #0x6a5074
005df1a0  00 40 50 e2                                      subs r4, r0, #0
005df1a4  28 00 00 0a                                      beq #0x5df24c
005df1a8  00 30 94 e5                                      ldr r3, [r4]
005df1ac  18 20 a0 e3                                      mov r2, #0x18
005df1b0  01 30 83 e2                                      add r3, r3, #1
005df1b4  00 30 84 e5                                      str r3, [r4]
005df1b8  04 30 96 e5                                      ldr r3, [r6, #4]
005df1bc  92 35 23 e0                                      mla r3, r2, r5, r3
005df1c0  60 30 93 e5                                      ldr r3, [r3, #0x60]
005df1c4  00 40 8d e5                                      str r4, [sp]
005df1c8  00 20 94 e5                                      ldr r2, [r4]
005df1cc  01 20 82 e2                                      add r2, r2, #1
005df1d0  00 20 84 e5                                      str r2, [r4]
005df1d4  18 10 a0 e3                                      mov r1, #0x18
005df1d8  91 05 05 e0                                      mul r5, r1, r5
005df1dc  08 00 8d e2                                      add r0, sp, #8
005df1e0  50 10 85 e2                                      add r1, r5, #0x50
005df1e4  01 10 87 e0                                      add r1, r7, r1
005df1e8  0d 20 a0 e1                                      mov r2, sp
005df1ec  04 30 8d e5                                      str r3, [sp, #4]
005df1f0  72 ff ff eb                                      bl #0x5defc0
005df1f4  00 00 9d e5                                      ldr r0, [sp]
005df1f8  00 00 50 e3                                      cmp r0, #0
005df1fc  05 00 00 0a                                      beq #0x5df218
005df200  00 30 90 e5                                      ldr r3, [r0]
005df204  01 30 43 e2                                      sub r3, r3, #1
005df208  00 00 53 e3                                      cmp r3, #0
005df20c  00 30 80 e5                                      str r3, [r0]
005df210  00 00 00 1a                                      bne #0x5df218
005df214  e0 16 03 eb                                      bl #0x6a4d9c
005df218  00 00 54 e3                                      cmp r4, #0
005df21c  06 00 00 0a                                      beq #0x5df23c
005df220  00 30 94 e5                                      ldr r3, [r4]
005df224  01 30 43 e2                                      sub r3, r3, #1
005df228  00 00 53 e3                                      cmp r3, #0
005df22c  00 30 84 e5                                      str r3, [r4]
005df230  01 00 00 1a                                      bne #0x5df23c
005df234  04 00 a0 e1                                      mov r0, r4
005df238  d7 16 03 eb                                      bl #0x6a4d9c
005df23c  08 30 9d e5                                      ldr r3, [sp, #8]
005df240  14 00 93 e5                                      ldr r0, [r3, #0x14]
005df244  14 d0 8d e2                                      add sp, sp, #0x14
005df248  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005df24c  04 30 96 e5                                      ldr r3, [r6, #4]
005df250  18 20 a0 e3                                      mov r2, #0x18
005df254  92 35 23 e0                                      mla r3, r2, r5, r3
005df258  60 30 93 e5                                      ldr r3, [r3, #0x60]
005df25c  00 40 8d e5                                      str r4, [sp]
005df260  db ff ff ea                                      b #0x5df1d4
