; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060b350, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlock8getBlockERNS0_24SAnimationBlockSearchKeyE
; demangled: glitch::collada::CAnimationBlock::getBlock(glitch::collada::SAnimationBlockSearchKey&)
; decoder-mode: arm
0060b350  00 30 a0 e1                                      mov r3, r0
0060b354  04 20 93 e5                                      ldr r2, [r3, #4]
0060b358  00 00 91 e5                                      ldr r0, [r1]
0060b35c  00 20 52 e2                                      subs r2, r2, #0
0060b360  01 20 a0 13                                      movne r2, #1
0060b364  00 00 50 e2                                      subs r0, r0, #0
0060b368  01 00 a0 13                                      movne r0, #1
0060b36c  02 00 50 e1                                      cmp r0, r2
0060b370  01 00 00 0a                                      beq #0x60b37c
0060b374  00 00 a0 e3                                      mov r0, #0
0060b378  1e ff 2f e1                                      bx lr
0060b37c  08 00 91 e5                                      ldr r0, [r1, #8]
0060b380  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0060b384  02 00 50 e1                                      cmp r0, r2
0060b388  f9 ff ff 1a                                      bne #0x60b374
0060b38c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
0060b390  03 00 a0 e1                                      mov r0, r3
0060b394  10 20 90 e5                                      ldr r2, [r0, #0x10]
0060b398  00 10 92 e5                                      ldr r1, [r2]
0060b39c  0c 00 51 e1                                      cmp r1, ip
0060b3a0  1c 00 90 c5                                      ldrgt r0, [r0, #0x1c]
0060b3a4  03 00 00 ca                                      bgt #0x60b3b8
0060b3a8  04 20 92 e5                                      ldr r2, [r2, #4]
0060b3ac  0c 00 52 e1                                      cmp r2, ip
0060b3b0  1e ff 2f a1                                      bxge lr
0060b3b4  18 00 90 e5                                      ldr r0, [r0, #0x18]
0060b3b8  03 00 50 e1                                      cmp r0, r3
0060b3bc  00 00 50 13                                      cmpne r0, #0
0060b3c0  f3 ff ff 1a                                      bne #0x60b394
0060b3c4  00 00 a0 e3                                      mov r0, #0
0060b3c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ba2c, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlockD1Ev
; demangled: glitch::collada::CAnimationBlock::~CAnimationBlock()
; decoder-mode: arm
0060ba2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0060ba30  18 30 90 e5                                      ldr r3, [r0, #0x18]
0060ba34  00 40 a0 e1                                      mov r4, r0
0060ba38  00 00 53 e3                                      cmp r3, #0
0060ba3c  07 00 00 0a                                      beq #0x60ba60
0060ba40  03 00 50 e1                                      cmp r0, r3
0060ba44  05 00 00 0a                                      beq #0x60ba60
0060ba48  00 20 a0 e3                                      mov r2, #0
0060ba4c  1c 20 83 e5                                      str r2, [r3, #0x1c]
0060ba50  18 00 90 e5                                      ldr r0, [r0, #0x18]
0060ba54  00 30 90 e5                                      ldr r3, [r0]
0060ba58  01 00 53 e3                                      cmp r3, #1
0060ba5c  19 00 00 0a                                      beq #0x60bac8
0060ba60  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0060ba64  00 00 53 e3                                      cmp r3, #0
0060ba68  02 00 00 0a                                      beq #0x60ba78
0060ba6c  03 00 54 e1                                      cmp r4, r3
0060ba70  00 20 a0 13                                      movne r2, #0
0060ba74  18 20 83 15                                      strne r2, [r3, #0x18]
0060ba78  14 50 94 e5                                      ldr r5, [r4, #0x14]
0060ba7c  00 00 55 e3                                      cmp r5, #0
0060ba80  0c 00 00 0a                                      beq #0x60bab8
0060ba84  00 30 95 e5                                      ldr r3, [r5]
0060ba88  01 30 43 e2                                      sub r3, r3, #1
0060ba8c  00 00 53 e3                                      cmp r3, #0
0060ba90  00 30 85 e5                                      str r3, [r5]
0060ba94  05 00 00 1a                                      bne #0x60bab0
0060ba98  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060ba9c  00 00 50 e3                                      cmp r0, #0
0060baa0  00 00 00 0a                                      beq #0x60baa8
0060baa4  83 09 f4 eb                                      bl #0x30e0b8
0060baa8  00 30 a0 e3                                      mov r3, #0
0060baac  0c 30 85 e5                                      str r3, [r5, #0xc]
0060bab0  00 30 a0 e3                                      mov r3, #0
0060bab4  14 30 84 e5                                      str r3, [r4, #0x14]
0060bab8  04 00 84 e2                                      add r0, r4, #4
0060babc  6c 36 00 eb                                      bl #0x619474
0060bac0  04 00 a0 e1                                      mov r0, r4
0060bac4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060bac8  00 00 00 eb                                      bl #0x60bad0
0060bacc  e3 ff ff ea                                      b #0x60ba60

; FUNCTION 0x0060bad0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlock4freeEv
; demangled: glitch::collada::CAnimationBlock::free()
; decoder-mode: arm
0060bad0  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0060bad4  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0060bad8  10 40 2d e9                                      push {r4, lr}
0060badc  03 30 8f e0                                      add r3, pc, r3
0060bae0  02 20 93 e7                                      ldr r2, [r3, r2]
0060bae4  00 40 a0 e1                                      mov r4, r0
0060bae8  00 10 a0 e1                                      mov r1, r0
0060baec  00 00 92 e5                                      ldr r0, [r2]
0060baf0  1b 00 00 eb                                      bl #0x60bb64
0060baf4  00 00 54 e3                                      cmp r4, #0
0060baf8  04 00 00 0a                                      beq #0x60bb10
0060bafc  04 00 a0 e1                                      mov r0, r4
0060bb00  c9 ff ff eb                                      bl #0x60ba2c
0060bb04  04 00 a0 e1                                      mov r0, r4
0060bb08  10 40 bd e8                                      pop {r4, lr}
0060bb0c  e7 09 f4 ea                                      b #0x30e2b0
0060bb10  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060bb14  b4 8f 38 00 74 09 00 00                          .byte 0xb4, 0x8f, 0x38, 0x00, 0x74, 0x09, 0x00, 0x00

; FUNCTION 0x0060bb1c, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlock4dropEv
; demangled: glitch::collada::CAnimationBlock::drop()
; decoder-mode: arm
0060bb1c  00 30 90 e5                                      ldr r3, [r0]
0060bb20  01 30 43 e2                                      sub r3, r3, #1
0060bb24  01 00 53 e3                                      cmp r3, #1
0060bb28  00 30 80 e5                                      str r3, [r0]
0060bb2c  1e ff 2f 11                                      bxne lr
0060bb30  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0060bb34  00 00 53 e3                                      cmp r3, #0
0060bb38  08 00 00 0a                                      beq #0x60bb60
0060bb3c  00 30 93 e5                                      ldr r3, [r3]
0060bb40  01 00 53 e3                                      cmp r3, #1
0060bb44  05 00 00 0a                                      beq #0x60bb60
0060bb48  18 00 90 e5                                      ldr r0, [r0, #0x18]
0060bb4c  00 00 50 e3                                      cmp r0, #0
0060bb50  1e ff 2f 01                                      bxeq lr
0060bb54  00 30 90 e5                                      ldr r3, [r0]
0060bb58  01 00 53 e3                                      cmp r3, #1
0060bb5c  1e ff 2f 11                                      bxne lr
0060bb60  da ff ff ea                                      b #0x60bad0

; FUNCTION 0x0060bbd8, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlockD2Ev
; demangled: glitch::collada::CAnimationBlock::~CAnimationBlock()
; decoder-mode: arm
0060bbd8  70 40 2d e9                                      push {r4, r5, r6, lr}
0060bbdc  18 30 90 e5                                      ldr r3, [r0, #0x18]
0060bbe0  00 40 a0 e1                                      mov r4, r0
0060bbe4  00 00 53 e3                                      cmp r3, #0
0060bbe8  07 00 00 0a                                      beq #0x60bc0c
0060bbec  03 00 50 e1                                      cmp r0, r3
0060bbf0  05 00 00 0a                                      beq #0x60bc0c
0060bbf4  00 20 a0 e3                                      mov r2, #0
0060bbf8  1c 20 83 e5                                      str r2, [r3, #0x1c]
0060bbfc  18 00 90 e5                                      ldr r0, [r0, #0x18]
0060bc00  00 30 90 e5                                      ldr r3, [r0]
0060bc04  01 00 53 e3                                      cmp r3, #1
0060bc08  19 00 00 0a                                      beq #0x60bc74
0060bc0c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0060bc10  00 00 53 e3                                      cmp r3, #0
0060bc14  02 00 00 0a                                      beq #0x60bc24
0060bc18  03 00 54 e1                                      cmp r4, r3
0060bc1c  00 20 a0 13                                      movne r2, #0
0060bc20  18 20 83 15                                      strne r2, [r3, #0x18]
0060bc24  14 50 94 e5                                      ldr r5, [r4, #0x14]
0060bc28  00 00 55 e3                                      cmp r5, #0
0060bc2c  0c 00 00 0a                                      beq #0x60bc64
0060bc30  00 30 95 e5                                      ldr r3, [r5]
0060bc34  01 30 43 e2                                      sub r3, r3, #1
0060bc38  00 00 53 e3                                      cmp r3, #0
0060bc3c  00 30 85 e5                                      str r3, [r5]
0060bc40  05 00 00 1a                                      bne #0x60bc5c
0060bc44  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060bc48  00 00 50 e3                                      cmp r0, #0
0060bc4c  00 00 00 0a                                      beq #0x60bc54
0060bc50  18 09 f4 eb                                      bl #0x30e0b8
0060bc54  00 30 a0 e3                                      mov r3, #0
0060bc58  0c 30 85 e5                                      str r3, [r5, #0xc]
0060bc5c  00 30 a0 e3                                      mov r3, #0
0060bc60  14 30 84 e5                                      str r3, [r4, #0x14]
0060bc64  04 00 84 e2                                      add r0, r4, #4
0060bc68  01 36 00 eb                                      bl #0x619474
0060bc6c  04 00 a0 e1                                      mov r0, r4
0060bc70  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060bc74  95 ff ff eb                                      bl #0x60bad0
0060bc78  e3 ff ff ea                                      b #0x60bc0c

; FUNCTION 0x0060c05c, declared_size=452, range_size=452, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlockC1ERKNS0_16CColladaDatabaseEPKNS0_14SAnimationClipEi
; demangled: glitch::collada::CAnimationBlock::CAnimationBlock(glitch::collada::CColladaDatabase const&, glitch::collada::SAnimationClip const*, int)
; decoder-mode: arm
0060c05c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060c060  00 40 a0 e1                                      mov r4, r0
0060c064  00 00 a0 e3                                      mov r0, #0
0060c068  00 00 84 e5                                      str r0, [r4]
0060c06c  00 00 91 e5                                      ldr r0, [r1]
0060c070  01 60 a0 e1                                      mov r6, r1
0060c074  94 51 9f e5                                      ldr r5, [pc, #0x194]
0060c078  04 00 84 e5                                      str r0, [r4, #4]
0060c07c  04 10 91 e5                                      ldr r1, [r1, #4]
0060c080  00 00 50 e3                                      cmp r0, #0
0060c084  10 d0 4d e2                                      sub sp, sp, #0x10
0060c088  08 10 84 e5                                      str r1, [r4, #8]
0060c08c  05 50 8f e0                                      add r5, pc, r5
0060c090  03 00 00 0a                                      beq #0x60c0a4
0060c094  04 c0 90 e5                                      ldr ip, [r0, #4]
0060c098  00 00 5c e3                                      cmp ip, #0
0060c09c  01 c0 8c 12                                      addne ip, ip, #1
0060c0a0  04 c0 80 15                                      strne ip, [r0, #4]
0060c0a4  00 00 a0 e3                                      mov r0, #0
0060c0a8  1c 00 84 e5                                      str r0, [r4, #0x1c]
0060c0ac  14 00 84 e5                                      str r0, [r4, #0x14]
0060c0b0  18 00 84 e5                                      str r0, [r4, #0x18]
0060c0b4  03 10 a0 e1                                      mov r1, r3
0060c0b8  0c 20 84 e5                                      str r2, [r4, #0xc]
0060c0bc  06 00 a0 e1                                      mov r0, r6
0060c0c0  7d 08 00 eb                                      bl #0x60e2bc
0060c0c4  10 00 84 e5                                      str r0, [r4, #0x10]
0060c0c8  00 30 96 e5                                      ldr r3, [r6]
0060c0cc  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060c0d0  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060c0d4  04 70 93 e5                                      ldr r7, [r3, #4]
0060c0d8  00 00 57 e3                                      cmp r7, #0
0060c0dc  0a 00 00 0a                                      beq #0x60c10c
0060c0e0  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
0060c0e4  14 10 97 e5                                      ldr r1, [r7, #0x14]
0060c0e8  03 30 95 e7                                      ldr r3, [r5, r3]
0060c0ec  00 30 93 e5                                      ldr r3, [r3]
0060c0f0  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060c0f4  34 30 93 e5                                      ldr r3, [r3, #0x34]
0060c0f8  03 00 a0 e1                                      mov r0, r3
0060c0fc  00 30 93 e5                                      ldr r3, [r3]
0060c100  0f e0 a0 e1                                      mov lr, pc
0060c104  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060c108  00 70 a0 e1                                      mov r7, r0
0060c10c  04 31 9f e5                                      ldr r3, [pc, #0x104]
0060c110  04 20 8d e2                                      add r2, sp, #4
0060c114  10 10 94 e5                                      ldr r1, [r4, #0x10]
0060c118  03 30 95 e7                                      ldr r3, [r5, r3]
0060c11c  0c 00 8d e2                                      add r0, sp, #0xc
0060c120  08 70 8d e5                                      str r7, [sp, #8]
0060c124  08 30 83 e2                                      add r3, r3, #8
0060c128  04 30 8d e5                                      str r3, [sp, #4]
0060c12c  6c ff ff eb                                      bl #0x60bee4
0060c130  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0060c134  00 00 53 e3                                      cmp r3, #0
0060c138  00 20 93 15                                      ldrne r2, [r3]
0060c13c  01 20 82 12                                      addne r2, r2, #1
0060c140  00 20 83 15                                      strne r2, [r3]
0060c144  14 80 94 e5                                      ldr r8, [r4, #0x14]
0060c148  00 00 58 e3                                      cmp r8, #0
0060c14c  0a 00 00 0a                                      beq #0x60c17c
0060c150  00 30 98 e5                                      ldr r3, [r8]
0060c154  01 30 43 e2                                      sub r3, r3, #1
0060c158  00 00 53 e3                                      cmp r3, #0
0060c15c  00 30 88 e5                                      str r3, [r8]
0060c160  05 00 00 1a                                      bne #0x60c17c
0060c164  0c 00 98 e5                                      ldr r0, [r8, #0xc]
0060c168  00 00 50 e3                                      cmp r0, #0
0060c16c  00 00 00 0a                                      beq #0x60c174
0060c170  d0 07 f4 eb                                      bl #0x30e0b8
0060c174  00 30 a0 e3                                      mov r3, #0
0060c178  0c 30 88 e5                                      str r3, [r8, #0xc]
0060c17c  0c 80 9d e5                                      ldr r8, [sp, #0xc]
0060c180  00 00 58 e3                                      cmp r8, #0
0060c184  14 80 84 e5                                      str r8, [r4, #0x14]
0060c188  06 00 00 0a                                      beq #0x60c1a8
0060c18c  00 30 98 e5                                      ldr r3, [r8]
0060c190  01 30 43 e2                                      sub r3, r3, #1
0060c194  00 00 53 e3                                      cmp r3, #0
0060c198  00 30 88 e5                                      str r3, [r8]
0060c19c  14 00 00 0a                                      beq #0x60c1f4
0060c1a0  00 30 a0 e3                                      mov r3, #0
0060c1a4  0c 30 8d e5                                      str r3, [sp, #0xc]
0060c1a8  00 00 57 e3                                      cmp r7, #0
0060c1ac  01 00 00 0a                                      beq #0x60c1b8
0060c1b0  07 00 a0 e1                                      mov r0, r7
0060c1b4  f2 44 f4 eb                                      bl #0x31d584
0060c1b8  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0060c1bc  04 10 a0 e1                                      mov r1, r4
0060c1c0  03 30 95 e7                                      ldr r3, [r5, r3]
0060c1c4  00 00 93 e5                                      ldr r0, [r3]
0060c1c8  91 00 00 eb                                      bl #0x60c414
0060c1cc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0060c1d0  04 00 a0 e1                                      mov r0, r4
0060c1d4  00 00 53 e3                                      cmp r3, #0
0060c1d8  00 30 96 05                                      ldreq r3, [r6]
0060c1dc  24 30 93 05                                      ldreq r3, [r3, #0x24]
0060c1e0  20 30 93 05                                      ldreq r3, [r3, #0x20]
0060c1e4  18 30 83 02                                      addeq r3, r3, #0x18
0060c1e8  0c 30 84 05                                      streq r3, [r4, #0xc]
0060c1ec  10 d0 8d e2                                      add sp, sp, #0x10
0060c1f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060c1f4  0c 00 98 e5                                      ldr r0, [r8, #0xc]
0060c1f8  00 00 50 e3                                      cmp r0, #0
0060c1fc  00 00 00 0a                                      beq #0x60c204
0060c200  ac 07 f4 eb                                      bl #0x30e0b8
0060c204  00 30 a0 e3                                      mov r3, #0
0060c208  0c 30 88 e5                                      str r3, [r8, #0xc]
0060c20c  e3 ff ff ea                                      b #0x60c1a0
; mapping-symbol data/literal pool
0060c210  04 8a 38 00 48 44 00 00 fc 46 00 00 74 09 00 00  .byte 0x04, 0x8a, 0x38, 0x00, 0x48, 0x44, 0x00, 0x00, 0xfc, 0x46, 0x00, 0x00, 0x74, 0x09, 0x00, 0x00

; FUNCTION 0x0060c31c, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlock16prepareNextBlockEv
; demangled: glitch::collada::CAnimationBlock::prepareNextBlock()
; decoder-mode: arm
0060c31c  30 40 2d e9                                      push {r4, r5, lr}
0060c320  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0060c324  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0060c328  14 d0 4d e2                                      sub sp, sp, #0x14
0060c32c  00 00 53 e3                                      cmp r3, #0
0060c330  00 40 a0 e1                                      mov r4, r0
0060c334  01 10 8f e0                                      add r1, pc, r1
0060c338  27 00 00 0a                                      beq #0x60c3dc
0060c33c  10 00 90 e5                                      ldr r0, [r0, #0x10]
0060c340  08 c0 93 e5                                      ldr ip, [r3, #8]
0060c344  04 20 90 e5                                      ldr r2, [r0, #4]
0060c348  02 00 5c e1                                      cmp ip, r2
0060c34c  1c 00 00 da                                      ble #0x60c3c4
0060c350  01 20 82 e2                                      add r2, r2, #1
0060c354  01 10 94 e9                                      ldmib r4, {r0, ip}
0060c358  00 00 50 e3                                      cmp r0, #0
0060c35c  01 10 8d e8                                      stm sp, {r0, ip}
0060c360  03 00 00 0a                                      beq #0x60c374
0060c364  04 c0 90 e5                                      ldr ip, [r0, #4]
0060c368  00 00 5c e3                                      cmp ip, #0
0060c36c  01 c0 8c 12                                      addne ip, ip, #1
0060c370  04 c0 80 15                                      strne ip, [r0, #4]
0060c374  70 c0 9f e5                                      ldr ip, [pc, #0x70]
0060c378  08 30 8d e5                                      str r3, [sp, #8]
0060c37c  04 00 93 e5                                      ldr r0, [r3, #4]
0060c380  0c 10 91 e7                                      ldr r1, [r1, ip]
0060c384  08 30 93 e5                                      ldr r3, [r3, #8]
0060c388  00 00 52 e1                                      cmp r2, r0
0060c38c  00 20 a0 b1                                      movlt r2, r0
0060c390  00 00 91 e5                                      ldr r0, [r1]
0060c394  0d 10 a0 e1                                      mov r1, sp
0060c398  03 00 52 e1                                      cmp r2, r3
0060c39c  0c 20 8d d5                                      strle r2, [sp, #0xc]
0060c3a0  0c 30 8d c5                                      strgt r3, [sp, #0xc]
0060c3a4  9d ff ff eb                                      bl #0x60c220
0060c3a8  18 00 84 e5                                      str r0, [r4, #0x18]
0060c3ac  1c 40 80 e5                                      str r4, [r0, #0x1c]
0060c3b0  0d 00 a0 e1                                      mov r0, sp
0060c3b4  0d 50 a0 e1                                      mov r5, sp
0060c3b8  2d 34 00 eb                                      bl #0x619474
0060c3bc  14 d0 8d e2                                      add sp, sp, #0x14
0060c3c0  30 80 bd e8                                      pop {r4, r5, pc}
0060c3c4  00 00 90 e5                                      ldr r0, [r0]
0060c3c8  04 20 93 e5                                      ldr r2, [r3, #4]
0060c3cc  02 00 50 e1                                      cmp r0, r2
0060c3d0  18 40 84 d5                                      strle r4, [r4, #0x18]
0060c3d4  de ff ff ca                                      bgt #0x60c354
0060c3d8  f7 ff ff ea                                      b #0x60c3bc
0060c3dc  10 20 90 e5                                      ldr r2, [r0, #0x10]
0060c3e0  04 20 92 e5                                      ldr r2, [r2, #4]
0060c3e4  d9 ff ff ea                                      b #0x60c350
; mapping-symbol data/literal pool
0060c3e8  5c 87 38 00 74 09 00 00                          .byte 0x5c, 0x87, 0x38, 0x00, 0x74, 0x09, 0x00, 0x00

; FUNCTION 0x0060c3f0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlock4grabEv
; demangled: glitch::collada::CAnimationBlock::grab()
; decoder-mode: arm
0060c3f0  00 20 90 e5                                      ldr r2, [r0]
0060c3f4  01 20 82 e2                                      add r2, r2, #1
0060c3f8  02 00 52 e3                                      cmp r2, #2
0060c3fc  00 20 80 e5                                      str r2, [r0]
0060c400  1e ff 2f 11                                      bxne lr
0060c404  18 30 90 e5                                      ldr r3, [r0, #0x18]
0060c408  00 00 53 e3                                      cmp r3, #0
0060c40c  1e ff 2f 11                                      bxne lr
0060c410  c1 ff ff ea                                      b #0x60c31c

; FUNCTION 0x0060c610, declared_size=408, range_size=408, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlockC1ERKNS0_16CColladaDatabaseEPKNS0_14SAnimationClipEPNS0_17SAnimationSegmentE
; demangled: glitch::collada::CAnimationBlock::CAnimationBlock(glitch::collada::CColladaDatabase const&, glitch::collada::SAnimationClip const*, glitch::collada::SAnimationSegment*)
; decoder-mode: arm
0060c610  70 40 2d e9                                      push {r4, r5, r6, lr}
0060c614  00 40 a0 e1                                      mov r4, r0
0060c618  00 00 a0 e3                                      mov r0, #0
0060c61c  00 00 84 e5                                      str r0, [r4]
0060c620  01 60 a0 e1                                      mov r6, r1
0060c624  00 10 91 e5                                      ldr r1, [r1]
0060c628  68 51 9f e5                                      ldr r5, [pc, #0x168]
0060c62c  10 d0 4d e2                                      sub sp, sp, #0x10
0060c630  04 10 84 e5                                      str r1, [r4, #4]
0060c634  04 00 96 e5                                      ldr r0, [r6, #4]
0060c638  00 00 51 e3                                      cmp r1, #0
0060c63c  05 50 8f e0                                      add r5, pc, r5
0060c640  08 00 84 e5                                      str r0, [r4, #8]
0060c644  03 00 00 0a                                      beq #0x60c658
0060c648  04 00 91 e5                                      ldr r0, [r1, #4]
0060c64c  00 00 50 e3                                      cmp r0, #0
0060c650  01 00 80 12                                      addne r0, r0, #1
0060c654  04 00 81 15                                      strne r0, [r1, #4]
0060c658  0c 20 84 e5                                      str r2, [r4, #0xc]
0060c65c  38 21 9f e5                                      ldr r2, [pc, #0x138]
0060c660  00 10 a0 e3                                      mov r1, #0
0060c664  10 30 84 e5                                      str r3, [r4, #0x10]
0060c668  02 20 95 e7                                      ldr r2, [r5, r2]
0060c66c  1c 10 84 e5                                      str r1, [r4, #0x1c]
0060c670  14 10 84 e5                                      str r1, [r4, #0x14]
0060c674  18 10 84 e5                                      str r1, [r4, #0x18]
0060c678  00 00 92 e5                                      ldr r0, [r2]
0060c67c  04 10 a0 e1                                      mov r1, r4
0060c680  63 ff ff eb                                      bl #0x60c414
0060c684  14 31 9f e5                                      ldr r3, [pc, #0x114]
0060c688  00 20 96 e5                                      ldr r2, [r6]
0060c68c  03 30 95 e7                                      ldr r3, [r5, r3]
0060c690  24 20 92 e5                                      ldr r2, [r2, #0x24]
0060c694  00 30 93 e5                                      ldr r3, [r3]
0060c698  20 20 92 e5                                      ldr r2, [r2, #0x20]
0060c69c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060c6a0  04 20 92 e5                                      ldr r2, [r2, #4]
0060c6a4  34 30 93 e5                                      ldr r3, [r3, #0x34]
0060c6a8  14 10 92 e5                                      ldr r1, [r2, #0x14]
0060c6ac  03 00 a0 e1                                      mov r0, r3
0060c6b0  00 30 93 e5                                      ldr r3, [r3]
0060c6b4  0f e0 a0 e1                                      mov lr, pc
0060c6b8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060c6bc  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
0060c6c0  08 00 8d e5                                      str r0, [sp, #8]
0060c6c4  04 20 8d e2                                      add r2, sp, #4
0060c6c8  03 30 95 e7                                      ldr r3, [r5, r3]
0060c6cc  10 10 94 e5                                      ldr r1, [r4, #0x10]
0060c6d0  0c 00 8d e2                                      add r0, sp, #0xc
0060c6d4  08 30 83 e2                                      add r3, r3, #8
0060c6d8  04 30 8d e5                                      str r3, [sp, #4]
0060c6dc  00 fe ff eb                                      bl #0x60bee4
0060c6e0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0060c6e4  00 00 53 e3                                      cmp r3, #0
0060c6e8  00 20 93 15                                      ldrne r2, [r3]
0060c6ec  01 20 82 12                                      addne r2, r2, #1
0060c6f0  00 20 83 15                                      strne r2, [r3]
0060c6f4  14 50 94 e5                                      ldr r5, [r4, #0x14]
0060c6f8  00 00 55 e3                                      cmp r5, #0
0060c6fc  0a 00 00 0a                                      beq #0x60c72c
0060c700  00 30 95 e5                                      ldr r3, [r5]
0060c704  01 30 43 e2                                      sub r3, r3, #1
0060c708  00 00 53 e3                                      cmp r3, #0
0060c70c  00 30 85 e5                                      str r3, [r5]
0060c710  05 00 00 1a                                      bne #0x60c72c
0060c714  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060c718  00 00 50 e3                                      cmp r0, #0
0060c71c  00 00 00 0a                                      beq #0x60c724
0060c720  64 06 f4 eb                                      bl #0x30e0b8
0060c724  00 30 a0 e3                                      mov r3, #0
0060c728  0c 30 85 e5                                      str r3, [r5, #0xc]
0060c72c  0c 50 9d e5                                      ldr r5, [sp, #0xc]
0060c730  00 00 55 e3                                      cmp r5, #0
0060c734  14 50 84 e5                                      str r5, [r4, #0x14]
0060c738  0c 00 00 0a                                      beq #0x60c770
0060c73c  00 30 95 e5                                      ldr r3, [r5]
0060c740  01 30 43 e2                                      sub r3, r3, #1
0060c744  00 00 53 e3                                      cmp r3, #0
0060c748  00 30 85 e5                                      str r3, [r5]
0060c74c  05 00 00 1a                                      bne #0x60c768
0060c750  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060c754  00 00 50 e3                                      cmp r0, #0
0060c758  00 00 00 0a                                      beq #0x60c760
0060c75c  55 06 f4 eb                                      bl #0x30e0b8
0060c760  00 30 a0 e3                                      mov r3, #0
0060c764  0c 30 85 e5                                      str r3, [r5, #0xc]
0060c768  00 30 a0 e3                                      mov r3, #0
0060c76c  0c 30 8d e5                                      str r3, [sp, #0xc]
0060c770  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0060c774  04 00 a0 e1                                      mov r0, r4
0060c778  00 00 53 e3                                      cmp r3, #0
0060c77c  00 30 96 05                                      ldreq r3, [r6]
0060c780  24 30 93 05                                      ldreq r3, [r3, #0x24]
0060c784  20 30 93 05                                      ldreq r3, [r3, #0x20]
0060c788  18 30 83 02                                      addeq r3, r3, #0x18
0060c78c  0c 30 84 05                                      streq r3, [r4, #0xc]
0060c790  10 d0 8d e2                                      add sp, sp, #0x10
0060c794  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060c798  54 84 38 00 74 09 00 00 48 44 00 00 fc 46 00 00  .byte 0x54, 0x84, 0x38, 0x00, 0x74, 0x09, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00, 0xfc, 0x46, 0x00, 0x00

; FUNCTION 0x0060c7a8, declared_size=408, range_size=408, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlockC2ERKNS0_16CColladaDatabaseEPKNS0_14SAnimationClipEPNS0_17SAnimationSegmentE
; demangled: glitch::collada::CAnimationBlock::CAnimationBlock(glitch::collada::CColladaDatabase const&, glitch::collada::SAnimationClip const*, glitch::collada::SAnimationSegment*)
; decoder-mode: arm
0060c7a8  70 40 2d e9                                      push {r4, r5, r6, lr}
0060c7ac  00 40 a0 e1                                      mov r4, r0
0060c7b0  00 00 a0 e3                                      mov r0, #0
0060c7b4  00 00 84 e5                                      str r0, [r4]
0060c7b8  01 60 a0 e1                                      mov r6, r1
0060c7bc  00 10 91 e5                                      ldr r1, [r1]
0060c7c0  68 51 9f e5                                      ldr r5, [pc, #0x168]
0060c7c4  10 d0 4d e2                                      sub sp, sp, #0x10
0060c7c8  04 10 84 e5                                      str r1, [r4, #4]
0060c7cc  04 00 96 e5                                      ldr r0, [r6, #4]
0060c7d0  00 00 51 e3                                      cmp r1, #0
0060c7d4  05 50 8f e0                                      add r5, pc, r5
0060c7d8  08 00 84 e5                                      str r0, [r4, #8]
0060c7dc  03 00 00 0a                                      beq #0x60c7f0
0060c7e0  04 00 91 e5                                      ldr r0, [r1, #4]
0060c7e4  00 00 50 e3                                      cmp r0, #0
0060c7e8  01 00 80 12                                      addne r0, r0, #1
0060c7ec  04 00 81 15                                      strne r0, [r1, #4]
0060c7f0  0c 20 84 e5                                      str r2, [r4, #0xc]
0060c7f4  38 21 9f e5                                      ldr r2, [pc, #0x138]
0060c7f8  00 10 a0 e3                                      mov r1, #0
0060c7fc  10 30 84 e5                                      str r3, [r4, #0x10]
0060c800  02 20 95 e7                                      ldr r2, [r5, r2]
0060c804  1c 10 84 e5                                      str r1, [r4, #0x1c]
0060c808  14 10 84 e5                                      str r1, [r4, #0x14]
0060c80c  18 10 84 e5                                      str r1, [r4, #0x18]
0060c810  00 00 92 e5                                      ldr r0, [r2]
0060c814  04 10 a0 e1                                      mov r1, r4
0060c818  fd fe ff eb                                      bl #0x60c414
0060c81c  14 31 9f e5                                      ldr r3, [pc, #0x114]
0060c820  00 20 96 e5                                      ldr r2, [r6]
0060c824  03 30 95 e7                                      ldr r3, [r5, r3]
0060c828  24 20 92 e5                                      ldr r2, [r2, #0x24]
0060c82c  00 30 93 e5                                      ldr r3, [r3]
0060c830  20 20 92 e5                                      ldr r2, [r2, #0x20]
0060c834  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060c838  04 20 92 e5                                      ldr r2, [r2, #4]
0060c83c  34 30 93 e5                                      ldr r3, [r3, #0x34]
0060c840  14 10 92 e5                                      ldr r1, [r2, #0x14]
0060c844  03 00 a0 e1                                      mov r0, r3
0060c848  00 30 93 e5                                      ldr r3, [r3]
0060c84c  0f e0 a0 e1                                      mov lr, pc
0060c850  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060c854  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
0060c858  08 00 8d e5                                      str r0, [sp, #8]
0060c85c  04 20 8d e2                                      add r2, sp, #4
0060c860  03 30 95 e7                                      ldr r3, [r5, r3]
0060c864  10 10 94 e5                                      ldr r1, [r4, #0x10]
0060c868  0c 00 8d e2                                      add r0, sp, #0xc
0060c86c  08 30 83 e2                                      add r3, r3, #8
0060c870  04 30 8d e5                                      str r3, [sp, #4]
0060c874  9a fd ff eb                                      bl #0x60bee4
0060c878  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0060c87c  00 00 53 e3                                      cmp r3, #0
0060c880  00 20 93 15                                      ldrne r2, [r3]
0060c884  01 20 82 12                                      addne r2, r2, #1
0060c888  00 20 83 15                                      strne r2, [r3]
0060c88c  14 50 94 e5                                      ldr r5, [r4, #0x14]
0060c890  00 00 55 e3                                      cmp r5, #0
0060c894  0a 00 00 0a                                      beq #0x60c8c4
0060c898  00 30 95 e5                                      ldr r3, [r5]
0060c89c  01 30 43 e2                                      sub r3, r3, #1
0060c8a0  00 00 53 e3                                      cmp r3, #0
0060c8a4  00 30 85 e5                                      str r3, [r5]
0060c8a8  05 00 00 1a                                      bne #0x60c8c4
0060c8ac  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060c8b0  00 00 50 e3                                      cmp r0, #0
0060c8b4  00 00 00 0a                                      beq #0x60c8bc
0060c8b8  fe 05 f4 eb                                      bl #0x30e0b8
0060c8bc  00 30 a0 e3                                      mov r3, #0
0060c8c0  0c 30 85 e5                                      str r3, [r5, #0xc]
0060c8c4  0c 50 9d e5                                      ldr r5, [sp, #0xc]
0060c8c8  00 00 55 e3                                      cmp r5, #0
0060c8cc  14 50 84 e5                                      str r5, [r4, #0x14]
0060c8d0  0c 00 00 0a                                      beq #0x60c908
0060c8d4  00 30 95 e5                                      ldr r3, [r5]
0060c8d8  01 30 43 e2                                      sub r3, r3, #1
0060c8dc  00 00 53 e3                                      cmp r3, #0
0060c8e0  00 30 85 e5                                      str r3, [r5]
0060c8e4  05 00 00 1a                                      bne #0x60c900
0060c8e8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060c8ec  00 00 50 e3                                      cmp r0, #0
0060c8f0  00 00 00 0a                                      beq #0x60c8f8
0060c8f4  ef 05 f4 eb                                      bl #0x30e0b8
0060c8f8  00 30 a0 e3                                      mov r3, #0
0060c8fc  0c 30 85 e5                                      str r3, [r5, #0xc]
0060c900  00 30 a0 e3                                      mov r3, #0
0060c904  0c 30 8d e5                                      str r3, [sp, #0xc]
0060c908  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0060c90c  04 00 a0 e1                                      mov r0, r4
0060c910  00 00 53 e3                                      cmp r3, #0
0060c914  00 30 96 05                                      ldreq r3, [r6]
0060c918  24 30 93 05                                      ldreq r3, [r3, #0x24]
0060c91c  20 30 93 05                                      ldreq r3, [r3, #0x20]
0060c920  18 30 83 02                                      addeq r3, r3, #0x18
0060c924  0c 30 84 05                                      streq r3, [r4, #0xc]
0060c928  10 d0 8d e2                                      add sp, sp, #0x10
0060c92c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060c930  bc 82 38 00 74 09 00 00 48 44 00 00 fc 46 00 00  .byte 0xbc, 0x82, 0x38, 0x00, 0x74, 0x09, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00, 0xfc, 0x46, 0x00, 0x00

; FUNCTION 0x0060c940, declared_size=452, range_size=452, mode=arm
; class-group: glitch::collada::CAnimationBlock
; alias: _ZN6glitch7collada15CAnimationBlockC2ERKNS0_16CColladaDatabaseEPKNS0_14SAnimationClipEi
; demangled: glitch::collada::CAnimationBlock::CAnimationBlock(glitch::collada::CColladaDatabase const&, glitch::collada::SAnimationClip const*, int)
; decoder-mode: arm
0060c940  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060c944  00 40 a0 e1                                      mov r4, r0
0060c948  00 00 a0 e3                                      mov r0, #0
0060c94c  00 00 84 e5                                      str r0, [r4]
0060c950  00 00 91 e5                                      ldr r0, [r1]
0060c954  01 60 a0 e1                                      mov r6, r1
0060c958  94 51 9f e5                                      ldr r5, [pc, #0x194]
0060c95c  04 00 84 e5                                      str r0, [r4, #4]
0060c960  04 10 91 e5                                      ldr r1, [r1, #4]
0060c964  00 00 50 e3                                      cmp r0, #0
0060c968  10 d0 4d e2                                      sub sp, sp, #0x10
0060c96c  08 10 84 e5                                      str r1, [r4, #8]
0060c970  05 50 8f e0                                      add r5, pc, r5
0060c974  03 00 00 0a                                      beq #0x60c988
0060c978  04 c0 90 e5                                      ldr ip, [r0, #4]
0060c97c  00 00 5c e3                                      cmp ip, #0
0060c980  01 c0 8c 12                                      addne ip, ip, #1
0060c984  04 c0 80 15                                      strne ip, [r0, #4]
0060c988  00 00 a0 e3                                      mov r0, #0
0060c98c  1c 00 84 e5                                      str r0, [r4, #0x1c]
0060c990  14 00 84 e5                                      str r0, [r4, #0x14]
0060c994  18 00 84 e5                                      str r0, [r4, #0x18]
0060c998  03 10 a0 e1                                      mov r1, r3
0060c99c  0c 20 84 e5                                      str r2, [r4, #0xc]
0060c9a0  06 00 a0 e1                                      mov r0, r6
0060c9a4  44 06 00 eb                                      bl #0x60e2bc
0060c9a8  10 00 84 e5                                      str r0, [r4, #0x10]
0060c9ac  00 30 96 e5                                      ldr r3, [r6]
0060c9b0  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060c9b4  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060c9b8  04 70 93 e5                                      ldr r7, [r3, #4]
0060c9bc  00 00 57 e3                                      cmp r7, #0
0060c9c0  0a 00 00 0a                                      beq #0x60c9f0
0060c9c4  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
0060c9c8  14 10 97 e5                                      ldr r1, [r7, #0x14]
0060c9cc  03 30 95 e7                                      ldr r3, [r5, r3]
0060c9d0  00 30 93 e5                                      ldr r3, [r3]
0060c9d4  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060c9d8  34 30 93 e5                                      ldr r3, [r3, #0x34]
0060c9dc  03 00 a0 e1                                      mov r0, r3
0060c9e0  00 30 93 e5                                      ldr r3, [r3]
0060c9e4  0f e0 a0 e1                                      mov lr, pc
0060c9e8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060c9ec  00 70 a0 e1                                      mov r7, r0
0060c9f0  04 31 9f e5                                      ldr r3, [pc, #0x104]
0060c9f4  04 20 8d e2                                      add r2, sp, #4
0060c9f8  10 10 94 e5                                      ldr r1, [r4, #0x10]
0060c9fc  03 30 95 e7                                      ldr r3, [r5, r3]
0060ca00  0c 00 8d e2                                      add r0, sp, #0xc
0060ca04  08 70 8d e5                                      str r7, [sp, #8]
0060ca08  08 30 83 e2                                      add r3, r3, #8
0060ca0c  04 30 8d e5                                      str r3, [sp, #4]
0060ca10  33 fd ff eb                                      bl #0x60bee4
0060ca14  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0060ca18  00 00 53 e3                                      cmp r3, #0
0060ca1c  00 20 93 15                                      ldrne r2, [r3]
0060ca20  01 20 82 12                                      addne r2, r2, #1
0060ca24  00 20 83 15                                      strne r2, [r3]
0060ca28  14 80 94 e5                                      ldr r8, [r4, #0x14]
0060ca2c  00 00 58 e3                                      cmp r8, #0
0060ca30  0a 00 00 0a                                      beq #0x60ca60
0060ca34  00 30 98 e5                                      ldr r3, [r8]
0060ca38  01 30 43 e2                                      sub r3, r3, #1
0060ca3c  00 00 53 e3                                      cmp r3, #0
0060ca40  00 30 88 e5                                      str r3, [r8]
0060ca44  05 00 00 1a                                      bne #0x60ca60
0060ca48  0c 00 98 e5                                      ldr r0, [r8, #0xc]
0060ca4c  00 00 50 e3                                      cmp r0, #0
0060ca50  00 00 00 0a                                      beq #0x60ca58
0060ca54  97 05 f4 eb                                      bl #0x30e0b8
0060ca58  00 30 a0 e3                                      mov r3, #0
0060ca5c  0c 30 88 e5                                      str r3, [r8, #0xc]
0060ca60  0c 80 9d e5                                      ldr r8, [sp, #0xc]
0060ca64  00 00 58 e3                                      cmp r8, #0
0060ca68  14 80 84 e5                                      str r8, [r4, #0x14]
0060ca6c  06 00 00 0a                                      beq #0x60ca8c
0060ca70  00 30 98 e5                                      ldr r3, [r8]
0060ca74  01 30 43 e2                                      sub r3, r3, #1
0060ca78  00 00 53 e3                                      cmp r3, #0
0060ca7c  00 30 88 e5                                      str r3, [r8]
0060ca80  14 00 00 0a                                      beq #0x60cad8
0060ca84  00 30 a0 e3                                      mov r3, #0
0060ca88  0c 30 8d e5                                      str r3, [sp, #0xc]
0060ca8c  00 00 57 e3                                      cmp r7, #0
0060ca90  01 00 00 0a                                      beq #0x60ca9c
0060ca94  07 00 a0 e1                                      mov r0, r7
0060ca98  b9 42 f4 eb                                      bl #0x31d584
0060ca9c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0060caa0  04 10 a0 e1                                      mov r1, r4
0060caa4  03 30 95 e7                                      ldr r3, [r5, r3]
0060caa8  00 00 93 e5                                      ldr r0, [r3]
0060caac  58 fe ff eb                                      bl #0x60c414
0060cab0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0060cab4  04 00 a0 e1                                      mov r0, r4
0060cab8  00 00 53 e3                                      cmp r3, #0
0060cabc  00 30 96 05                                      ldreq r3, [r6]
0060cac0  24 30 93 05                                      ldreq r3, [r3, #0x24]
0060cac4  20 30 93 05                                      ldreq r3, [r3, #0x20]
0060cac8  18 30 83 02                                      addeq r3, r3, #0x18
0060cacc  0c 30 84 05                                      streq r3, [r4, #0xc]
0060cad0  10 d0 8d e2                                      add sp, sp, #0x10
0060cad4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060cad8  0c 00 98 e5                                      ldr r0, [r8, #0xc]
0060cadc  00 00 50 e3                                      cmp r0, #0
0060cae0  00 00 00 0a                                      beq #0x60cae8
0060cae4  73 05 f4 eb                                      bl #0x30e0b8
0060cae8  00 30 a0 e3                                      mov r3, #0
0060caec  0c 30 88 e5                                      str r3, [r8, #0xc]
0060caf0  e3 ff ff ea                                      b #0x60ca84
; mapping-symbol data/literal pool
0060caf4  20 81 38 00 48 44 00 00 fc 46 00 00 74 09 00 00  .byte 0x20, 0x81, 0x38, 0x00, 0x48, 0x44, 0x00, 0x00, 0xfc, 0x46, 0x00, 0x00, 0x74, 0x09, 0x00, 0x00
