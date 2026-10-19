; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d7cf4, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZNK6glitch5video24CMaterialRendererManager12getTechniqueENS1_12STemporaryIDE
; demangled: glitch::video::CMaterialRendererManager::getTechnique(glitch::video::CMaterialRendererManager::STemporaryID) const
; decoder-mode: arm
005d7cf4  90 30 90 e5                                      ldr r3, [r0, #0x90]
005d7cf8  00 00 53 e3                                      cmp r3, #0
005d7cfc  02 00 00 0a                                      beq #0x5d7d0c
005d7d00  00 00 51 e3                                      cmp r1, #0
005d7d04  01 00 a0 11                                      movne r0, r1
005d7d08  1e ff 2f 11                                      bxne lr
005d7d0c  00 00 a0 e3                                      mov r0, #0
005d7d10  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7d14, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZNK6glitch5video24CMaterialRendererManager15getParameterDefENS1_12STemporaryIDE
; demangled: glitch::video::CMaterialRendererManager::getParameterDef(glitch::video::CMaterialRendererManager::STemporaryID) const
; decoder-mode: arm
005d7d14  90 30 90 e5                                      ldr r3, [r0, #0x90]
005d7d18  00 00 53 e3                                      cmp r3, #0
005d7d1c  02 00 00 0a                                      beq #0x5d7d2c
005d7d20  00 00 51 e3                                      cmp r1, #0
005d7d24  01 00 a0 11                                      movne r0, r1
005d7d28  1e ff 2f 11                                      bxne lr
005d7d2c  00 00 a0 e3                                      mov r0, #0
005d7d30  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d8b28, declared_size=296, range_size=296, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager22createMaterialRendererENS0_15E_MATERIAL_TYPEE
; demangled: glitch::video::CMaterialRendererManager::createMaterialRenderer(glitch::video::E_MATERIAL_TYPE)
; decoder-mode: arm
005d8b28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d8b2c  14 80 81 e2                                      add r8, r1, #0x14
005d8b30  88 30 80 e0                                      add r3, r0, r8, lsl #1
005d8b34  b4 60 d3 e1                                      ldrh r6, [r3, #4]
005d8b38  00 31 9f e5                                      ldr r3, [pc, #0x100]
005d8b3c  ff 2f 0f e3                                      movw r2, #0xffff
005d8b40  02 00 56 e1                                      cmp r6, r2
005d8b44  24 d0 4d e2                                      sub sp, sp, #0x24
005d8b48  00 70 a0 e1                                      mov r7, r0
005d8b4c  03 30 8f e0                                      add r3, pc, r3
005d8b50  02 00 00 0a                                      beq #0x5d8b60
005d8b54  06 00 a0 e1                                      mov r0, r6
005d8b58  24 d0 8d e2                                      add sp, sp, #0x24
005d8b5c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d8b60  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
005d8b64  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
005d8b68  dc a0 9f e5                                      ldr sl, [pc, #0xdc]
005d8b6c  14 b0 8d e2                                      add fp, sp, #0x14
005d8b70  01 10 8f e0                                      add r1, pc, r1
005d8b74  02 20 93 e7                                      ldr r2, [r3, r2]
005d8b78  0b 00 a0 e1                                      mov r0, fp
005d8b7c  b6 d9 00 eb                                      bl #0x60f25c
005d8b80  00 40 a0 e3                                      mov r4, #0
005d8b84  0a a0 8f e0                                      add sl, pc, sl
005d8b88  07 50 a0 e1                                      mov r5, r7
005d8b8c  1c 90 8d e2                                      add sb, sp, #0x1c
005d8b90  03 00 00 ea                                      b #0x5d8ba4
005d8b94  01 40 84 e2                                      add r4, r4, #1
005d8b98  11 00 54 e3                                      cmp r4, #0x11
005d8b9c  02 50 85 e2                                      add r5, r5, #2
005d8ba0  21 00 00 0a                                      beq #0x5d8c2c
005d8ba4  bc 32 d5 e1                                      ldrh r3, [r5, #0x2c]
005d8ba8  06 00 53 e1                                      cmp r3, r6
005d8bac  f8 ff ff 1a                                      bne #0x5d8b94
005d8bb0  00 00 a0 e3                                      mov r0, #0
005d8bb4  37 1b 00 eb                                      bl #0x5df898
005d8bb8  04 11 90 e7                                      ldr r1, [r0, r4, lsl #2]
005d8bbc  0a 00 a0 e1                                      mov r0, sl
005d8bc0  d5 d5 f4 eb                                      bl #0x30e31c
005d8bc4  00 00 50 e3                                      cmp r0, #0
005d8bc8  f1 ff ff 0a                                      beq #0x5d8b94
005d8bcc  28 20 97 e5                                      ldr r2, [r7, #0x28]
005d8bd0  00 00 a0 e3                                      mov r0, #0
005d8bd4  0c 20 8d e5                                      str r2, [sp, #0xc]
005d8bd8  2e 1b 00 eb                                      bl #0x5df898
005d8bdc  00 c0 a0 e3                                      mov ip, #0
005d8be0  04 31 90 e7                                      ldr r3, [r0, r4, lsl #2]
005d8be4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005d8be8  09 00 a0 e1                                      mov r0, sb
005d8bec  0b 10 a0 e1                                      mov r1, fp
005d8bf0  00 c0 8d e5                                      str ip, [sp]
005d8bf4  44 09 01 eb                                      bl #0x61b10c
005d8bf8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005d8bfc  09 00 a0 e1                                      mov r0, sb
005d8c00  bc 30 d3 e1                                      ldrh r3, [r3, #0xc]
005d8c04  bc 32 c5 e1                                      strh r3, [r5, #0x2c]
005d8c08  18 20 97 e5                                      ldr r2, [r7, #0x18]
005d8c0c  02 50 85 e2                                      add r5, r5, #2
005d8c10  83 31 82 e0                                      add r3, r2, r3, lsl #3
005d8c14  04 30 93 e5                                      ldr r3, [r3, #4]
005d8c18  b0 42 c3 e1                                      strh r4, [r3, #0x20]
005d8c1c  01 40 84 e2                                      add r4, r4, #1
005d8c20  a4 e5 f5 eb                                      bl #0x3522b8
005d8c24  11 00 54 e3                                      cmp r4, #0x11
005d8c28  dd ff ff 1a                                      bne #0x5d8ba4
005d8c2c  0b 00 a0 e1                                      mov r0, fp
005d8c30  88 70 87 e0                                      add r7, r7, r8, lsl #1
005d8c34  0e 02 01 eb                                      bl #0x619474
005d8c38  b4 60 d7 e1                                      ldrh r6, [r7, #4]
005d8c3c  c4 ff ff ea                                      b #0x5d8b54
; mapping-symbol data/literal pool
005d8c40  44 bf 3b 00 80 7f 30 00 10 47 00 00 84 7f 30 00  .byte 0x44, 0xbf, 0x3b, 0x00, 0x80, 0x7f, 0x30, 0x00, 0x10, 0x47, 0x00, 0x00, 0x84, 0x7f, 0x30, 0x00

; FUNCTION 0x005d8f24, declared_size=124, range_size=124, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManagerC1EPNS0_12IVideoDriverE
; demangled: glitch::video::CMaterialRendererManager::CMaterialRendererManager(glitch::video::IVideoDriver*)
; decoder-mode: arm
005d8f24  70 40 2d e9                                      push {r4, r5, r6, lr}
005d8f28  00 40 a0 e1                                      mov r4, r0
005d8f2c  00 50 a0 e3                                      mov r5, #0
005d8f30  01 60 a0 e1                                      mov r6, r1
005d8f34  9d fb ff eb                                      bl #0x5d7db0
005d8f38  68 30 84 e2                                      add r3, r4, #0x68
005d8f3c  50 10 84 e2                                      add r1, r4, #0x50
005d8f40  00 20 e0 e3                                      mvn r2, #0
005d8f44  5c 10 84 e5                                      str r1, [r4, #0x5c]
005d8f48  58 10 84 e5                                      str r1, [r4, #0x58]
005d8f4c  28 60 84 e5                                      str r6, [r4, #0x28]
005d8f50  54 50 84 e5                                      str r5, [r4, #0x54]
005d8f54  50 50 c4 e5                                      strb r5, [r4, #0x50]
005d8f58  60 50 84 e5                                      str r5, [r4, #0x60]
005d8f5c  02 10 a0 e1                                      mov r1, r2
005d8f60  04 50 83 e5                                      str r5, [r3, #4]
005d8f64  2c 00 84 e2                                      add r0, r4, #0x2c
005d8f68  68 50 c4 e5                                      strb r5, [r4, #0x68]
005d8f6c  10 50 83 e5                                      str r5, [r3, #0x10]
005d8f70  08 30 83 e5                                      str r3, [r3, #8]
005d8f74  0c 30 83 e5                                      str r3, [r3, #0xc]
005d8f78  b4 29 c4 e1                                      strh r2, [r4, #0x94]
005d8f7c  88 50 84 e5                                      str r5, [r4, #0x88]
005d8f80  8c 50 84 e5                                      str r5, [r4, #0x8c]
005d8f84  90 50 84 e5                                      str r5, [r4, #0x90]
005d8f88  22 20 a0 e3                                      mov r2, #0x22
005d8f8c  33 d5 f4 eb                                      bl #0x30e460
005d8f90  80 50 84 e5                                      str r5, [r4, #0x80]
005d8f94  84 50 84 e5                                      str r5, [r4, #0x84]
005d8f98  04 00 a0 e1                                      mov r0, r4
005d8f9c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d8fa0, declared_size=124, range_size=124, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManagerC2EPNS0_12IVideoDriverE
; demangled: glitch::video::CMaterialRendererManager::CMaterialRendererManager(glitch::video::IVideoDriver*)
; decoder-mode: arm
005d8fa0  70 40 2d e9                                      push {r4, r5, r6, lr}
005d8fa4  00 40 a0 e1                                      mov r4, r0
005d8fa8  00 50 a0 e3                                      mov r5, #0
005d8fac  01 60 a0 e1                                      mov r6, r1
005d8fb0  7e fb ff eb                                      bl #0x5d7db0
005d8fb4  68 30 84 e2                                      add r3, r4, #0x68
005d8fb8  50 10 84 e2                                      add r1, r4, #0x50
005d8fbc  00 20 e0 e3                                      mvn r2, #0
005d8fc0  5c 10 84 e5                                      str r1, [r4, #0x5c]
005d8fc4  58 10 84 e5                                      str r1, [r4, #0x58]
005d8fc8  28 60 84 e5                                      str r6, [r4, #0x28]
005d8fcc  54 50 84 e5                                      str r5, [r4, #0x54]
005d8fd0  50 50 c4 e5                                      strb r5, [r4, #0x50]
005d8fd4  60 50 84 e5                                      str r5, [r4, #0x60]
005d8fd8  02 10 a0 e1                                      mov r1, r2
005d8fdc  04 50 83 e5                                      str r5, [r3, #4]
005d8fe0  2c 00 84 e2                                      add r0, r4, #0x2c
005d8fe4  68 50 c4 e5                                      strb r5, [r4, #0x68]
005d8fe8  10 50 83 e5                                      str r5, [r3, #0x10]
005d8fec  08 30 83 e5                                      str r3, [r3, #8]
005d8ff0  0c 30 83 e5                                      str r3, [r3, #0xc]
005d8ff4  b4 29 c4 e1                                      strh r2, [r4, #0x94]
005d8ff8  88 50 84 e5                                      str r5, [r4, #0x88]
005d8ffc  8c 50 84 e5                                      str r5, [r4, #0x8c]
005d9000  90 50 84 e5                                      str r5, [r4, #0x90]
005d9004  22 20 a0 e3                                      mov r2, #0x22
005d9008  14 d5 f4 eb                                      bl #0x30e460
005d900c  80 50 84 e5                                      str r5, [r4, #0x80]
005d9010  84 50 84 e5                                      str r5, [r4, #0x84]
005d9014  04 00 a0 e1                                      mov r0, r4
005d9018  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d9af0, declared_size=232, range_size=232, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager22createMaterialInstanceENS0_15E_MATERIAL_TYPEE
; demangled: glitch::video::CMaterialRendererManager::createMaterialInstance(glitch::video::E_MATERIAL_TYPE)
; decoder-mode: arm
005d9af0  70 40 2d e9                                      push {r4, r5, r6, lr}
005d9af4  00 30 a0 e3                                      mov r3, #0
005d9af8  01 50 a0 e1                                      mov r5, r1
005d9afc  00 30 80 e5                                      str r3, [r0]
005d9b00  02 10 a0 e1                                      mov r1, r2
005d9b04  10 d0 4d e2                                      sub sp, sp, #0x10
005d9b08  00 40 a0 e1                                      mov r4, r0
005d9b0c  05 00 a0 e1                                      mov r0, r5
005d9b10  04 fc ff eb                                      bl #0x5d8b28
005d9b14  18 20 95 e5                                      ldr r2, [r5, #0x18]
005d9b18  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
005d9b1c  ac 30 9f e5                                      ldr r3, [pc, #0xac]
005d9b20  01 10 62 e0                                      rsb r1, r2, r1
005d9b24  c1 01 50 e1                                      cmp r0, r1, asr #3
005d9b28  03 30 8f e0                                      add r3, pc, r3
005d9b2c  80 21 82 30                                      addlo r2, r2, r0, lsl #3
005d9b30  9c 20 9f 25                                      ldrhs r2, [pc, #0x9c]
005d9b34  02 20 93 27                                      ldrhs r2, [r3, r2]
005d9b38  00 30 92 e5                                      ldr r3, [r2]
005d9b3c  00 00 53 e3                                      cmp r3, #0
005d9b40  0c 30 8d e5                                      str r3, [sp, #0xc]
005d9b44  1f 00 00 0a                                      beq #0x5d9bc8
005d9b48  00 20 93 e5                                      ldr r2, [r3]
005d9b4c  01 20 82 e2                                      add r2, r2, #1
005d9b50  00 20 83 e5                                      str r2, [r3]
005d9b54  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005d9b58  00 00 53 e3                                      cmp r3, #0
005d9b5c  19 00 00 0a                                      beq #0x5d9bc8
005d9b60  00 20 a0 e3                                      mov r2, #0
005d9b64  08 60 8d e2                                      add r6, sp, #8
005d9b68  0c 50 8d e2                                      add r5, sp, #0xc
005d9b6c  02 30 a0 e1                                      mov r3, r2
005d9b70  06 00 a0 e1                                      mov r0, r6
005d9b74  05 10 a0 e1                                      mov r1, r5
005d9b78  48 c9 ff eb                                      bl #0x5cc0a0
005d9b7c  08 30 9d e5                                      ldr r3, [sp, #8]
005d9b80  10 00 8d e2                                      add r0, sp, #0x10
005d9b84  04 30 8d e5                                      str r3, [sp, #4]
005d9b88  00 00 53 e3                                      cmp r3, #0
005d9b8c  00 20 93 15                                      ldrne r2, [r3]
005d9b90  01 20 82 12                                      addne r2, r2, #1
005d9b94  00 20 83 15                                      strne r2, [r3]
005d9b98  04 30 9d 15                                      ldrne r3, [sp, #4]
005d9b9c  00 20 94 e5                                      ldr r2, [r4]
005d9ba0  00 30 84 e5                                      str r3, [r4]
005d9ba4  0c 20 20 e5                                      str r2, [r0, #-0xc]!
005d9ba8  0e dc f4 eb                                      bl #0x310be8
005d9bac  06 00 a0 e1                                      mov r0, r6
005d9bb0  0c dc f4 eb                                      bl #0x310be8
005d9bb4  05 00 a0 e1                                      mov r0, r5
005d9bb8  be e1 f5 eb                                      bl #0x3522b8
005d9bbc  04 00 a0 e1                                      mov r0, r4
005d9bc0  10 d0 8d e2                                      add sp, sp, #0x10
005d9bc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d9bc8  0c 50 8d e2                                      add r5, sp, #0xc
005d9bcc  f8 ff ff ea                                      b #0x5d9bb4
; mapping-symbol data/literal pool
005d9bd0  68 af 3b 00 dc 30 00 00                          .byte 0x68, 0xaf, 0x3b, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x005d9bd8, declared_size=480, range_size=480, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager25createPinkWireFrameShaderEv
; demangled: glitch::video::CMaterialRendererManager::createPinkWireFrameShader()
; decoder-mode: arm
005d9bd8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d9bdc  b0 41 9f e5                                      ldr r4, [pc, #0x1b0]
005d9be0  b0 61 9f e5                                      ldr r6, [pc, #0x1b0]
005d9be4  28 30 91 e5                                      ldr r3, [r1, #0x28]
005d9be8  04 40 8f e0                                      add r4, pc, r4
005d9bec  06 20 94 e7                                      ldr r2, [r4, r6]
005d9bf0  a4 d0 4d e2                                      sub sp, sp, #0xa4
005d9bf4  00 50 a0 e1                                      mov r5, r0
005d9bf8  00 20 92 e5                                      ldr r2, [r2]
005d9bfc  03 00 a0 e1                                      mov r0, r3
005d9c00  01 a0 a0 e1                                      mov sl, r1
005d9c04  9c 20 8d e5                                      str r2, [sp, #0x9c]
005d9c08  00 30 93 e5                                      ldr r3, [r3]
005d9c0c  0f e0 a0 e1                                      mov lr, pc
005d9c10  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
005d9c14  00 30 a0 e3                                      mov r3, #0
005d9c18  07 70 10 e2                                      ands r7, r0, #7
005d9c1c  00 30 85 e5                                      str r3, [r5]
005d9c20  1c 00 00 1a                                      bne #0x5d9c98
005d9c24  18 00 10 e3                                      tst r0, #0x18
005d9c28  22 00 00 1a                                      bne #0x5d9cb8
005d9c2c  36 0e 10 e3                                      tst r0, #0x360
005d9c30  18 00 00 1a                                      bne #0x5d9c98
005d9c34  02 0b 50 e3                                      cmp r0, #0x800
005d9c38  16 00 00 0a                                      beq #0x5d9c98
005d9c3c  00 00 50 e3                                      cmp r0, #0
005d9c40  14 00 00 1a                                      bne #0x5d9c98
005d9c44  28 30 9a e5                                      ldr r3, [sl, #0x28]
005d9c48  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
005d9c4c  24 70 8d e2                                      add r7, sp, #0x24
005d9c50  d8 10 93 e5                                      ldr r1, [r3, #0xd8]
005d9c54  02 20 8f e0                                      add r2, pc, r2
005d9c58  07 00 a0 e1                                      mov r0, r7
005d9c5c  e4 7f ff eb                                      bl #0x5b9bf4
005d9c60  24 30 9d e5                                      ldr r3, [sp, #0x24]
005d9c64  a0 00 8d e2                                      add r0, sp, #0xa0
005d9c68  20 30 8d e5                                      str r3, [sp, #0x20]
005d9c6c  00 00 53 e3                                      cmp r3, #0
005d9c70  04 20 93 15                                      ldrne r2, [r3, #4]
005d9c74  01 20 82 12                                      addne r2, r2, #1
005d9c78  04 20 83 15                                      strne r2, [r3, #4]
005d9c7c  20 30 9d 15                                      ldrne r3, [sp, #0x20]
005d9c80  00 20 95 e5                                      ldr r2, [r5]
005d9c84  00 30 85 e5                                      str r3, [r5]
005d9c88  80 20 20 e5                                      str r2, [r0, #-0x80]!
005d9c8c  36 80 ff eb                                      bl #0x5b9d6c
005d9c90  07 00 a0 e1                                      mov r0, r7
005d9c94  34 80 ff eb                                      bl #0x5b9d6c
005d9c98  06 30 94 e7                                      ldr r3, [r4, r6]
005d9c9c  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
005d9ca0  05 00 a0 e1                                      mov r0, r5
005d9ca4  00 30 93 e5                                      ldr r3, [r3]
005d9ca8  03 00 52 e1                                      cmp r2, r3
005d9cac  37 00 00 1a                                      bne #0x5d9d90
005d9cb0  a4 d0 8d e2                                      add sp, sp, #0xa4
005d9cb4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d9cb8  28 c0 9a e5                                      ldr ip, [sl, #0x28]
005d9cbc  dc 80 9f e5                                      ldr r8, [pc, #0xdc]
005d9cc0  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
005d9cc4  d8 c0 9c e5                                      ldr ip, [ip, #0xd8]
005d9cc8  08 80 8f e0                                      add r8, pc, r8
005d9ccc  64 b0 8d e2                                      add fp, sp, #0x64
005d9cd0  01 10 8f e0                                      add r1, pc, r1
005d9cd4  9b 20 a0 e3                                      mov r2, #0x9b
005d9cd8  08 30 a0 e1                                      mov r3, r8
005d9cdc  0b 00 a0 e1                                      mov r0, fp
005d9ce0  c0 a0 9f e5                                      ldr sl, [pc, #0xc0]
005d9ce4  1c c0 8d e5                                      str ip, [sp, #0x1c]
005d9ce8  00 70 8d e5                                      str r7, [sp]
005d9cec  7e 55 fe eb                                      bl #0x56f2ec
005d9cf0  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
005d9cf4  0a a0 8f e0                                      add sl, pc, sl
005d9cf8  2c 90 8d e2                                      add sb, sp, #0x2c
005d9cfc  01 10 8f e0                                      add r1, pc, r1
005d9d00  41 20 a0 e3                                      mov r2, #0x41
005d9d04  0a 30 a0 e1                                      mov r3, sl
005d9d08  09 00 a0 e1                                      mov r0, sb
005d9d0c  00 70 8d e5                                      str r7, [sp]
005d9d10  75 55 fe eb                                      bl #0x56f2ec
005d9d14  94 c0 9f e5                                      ldr ip, [pc, #0x94]
005d9d18  94 20 9f e5                                      ldr r2, [pc, #0x94]
005d9d1c  08 30 a0 e1                                      mov r3, r8
005d9d20  0c c0 8f e0                                      add ip, pc, ip
005d9d24  02 20 8f e0                                      add r2, pc, r2
005d9d28  28 00 8d e2                                      add r0, sp, #0x28
005d9d2c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005d9d30  00 14 8d e9                                      stmib sp, {sl, ip}
005d9d34  00 c0 8d e5                                      str ip, [sp]
005d9d38  0c b0 8d e5                                      str fp, [sp, #0xc]
005d9d3c  10 90 8d e5                                      str sb, [sp, #0x10]
005d9d40  1b 19 04 eb                                      bl #0x6e01b4
005d9d44  28 30 9d e5                                      ldr r3, [sp, #0x28]
005d9d48  00 00 53 e3                                      cmp r3, #0
005d9d4c  04 20 93 15                                      ldrne r2, [r3, #4]
005d9d50  01 20 82 12                                      addne r2, r2, #1
005d9d54  04 20 83 15                                      strne r2, [r3, #4]
005d9d58  00 00 95 e5                                      ldr r0, [r5]
005d9d5c  00 30 85 e5                                      str r3, [r5]
005d9d60  00 00 50 e3                                      cmp r0, #0
005d9d64  00 00 00 0a                                      beq #0x5d9d6c
005d9d68  05 0e f5 eb                                      bl #0x31d584
005d9d6c  28 00 9d e5                                      ldr r0, [sp, #0x28]
005d9d70  00 00 50 e3                                      cmp r0, #0
005d9d74  00 00 00 0a                                      beq #0x5d9d7c
005d9d78  01 0e f5 eb                                      bl #0x31d584
005d9d7c  09 00 a0 e1                                      mov r0, sb
005d9d80  0b 55 fe eb                                      bl #0x56f1b4
005d9d84  0b 00 a0 e1                                      mov r0, fp
005d9d88  09 55 fe eb                                      bl #0x56f1b4
005d9d8c  c1 ff ff ea                                      b #0x5d9c98
005d9d90  5e d1 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005d9d94  a8 ae 3b 00 ac 40 00 00 dc 6f 30 00 f0 6e 30 00  .byte 0xa8, 0xae, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x6f, 0x30, 0x00, 0xf0, 0x6e, 0x30, 0x00
005d9da4  48 6e 30 00 24 6f 30 00 d4 6e 30 00 e8 1a 2f 00  .byte 0x48, 0x6e, 0x30, 0x00, 0x24, 0x6f, 0x30, 0x00, 0xd4, 0x6e, 0x30, 0x00, 0xe8, 0x1a, 0x2f, 0x00
005d9db4  0c 6f 30 00                                      .byte 0x0c, 0x6f, 0x30, 0x00

; FUNCTION 0x005d9db8, declared_size=220, range_size=220, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager19clearUnusedInstanceEt
; demangled: glitch::video::CMaterialRendererManager::clearUnusedInstance(unsigned short)
; decoder-mode: arm
005d9db8  70 40 2d e9                                      push {r4, r5, r6, lr}
005d9dbc  00 40 a0 e1                                      mov r4, r0
005d9dc0  18 20 90 e5                                      ldr r2, [r0, #0x18]
005d9dc4  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
005d9dc8  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
005d9dcc  10 d0 4d e2                                      sub sp, sp, #0x10
005d9dd0  00 00 62 e0                                      rsb r0, r2, r0
005d9dd4  c0 01 51 e1                                      cmp r1, r0, asr #3
005d9dd8  03 30 8f e0                                      add r3, pc, r3
005d9ddc  01 50 a0 e1                                      mov r5, r1
005d9de0  81 21 82 30                                      addlo r2, r2, r1, lsl #3
005d9de4  a4 20 9f 25                                      ldrhs r2, [pc, #0xa4]
005d9de8  02 20 93 27                                      ldrhs r2, [r3, r2]
005d9dec  00 30 92 e5                                      ldr r3, [r2]
005d9df0  00 00 53 e3                                      cmp r3, #0
005d9df4  0c 30 8d e5                                      str r3, [sp, #0xc]
005d9df8  20 00 00 0a                                      beq #0x5d9e80
005d9dfc  00 20 93 e5                                      ldr r2, [r3]
005d9e00  10 00 8d e2                                      add r0, sp, #0x10
005d9e04  01 20 82 e2                                      add r2, r2, #1
005d9e08  00 20 83 e5                                      str r2, [r3]
005d9e0c  04 60 30 e5                                      ldr r6, [r0, #-4]!
005d9e10  28 e1 f5 eb                                      bl #0x3522b8
005d9e14  00 00 56 e3                                      cmp r6, #0
005d9e18  02 00 00 0a                                      beq #0x5d9e28
005d9e1c  00 30 96 e5                                      ldr r3, [r6]
005d9e20  02 00 53 e3                                      cmp r3, #2
005d9e24  01 00 00 0a                                      beq #0x5d9e30
005d9e28  10 d0 8d e2                                      add sp, sp, #0x10
005d9e2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d9e30  18 30 94 e5                                      ldr r3, [r4, #0x18]
005d9e34  85 51 83 e0                                      add r5, r3, r5, lsl #3
005d9e38  04 20 95 e5                                      ldr r2, [r5, #4]
005d9e3c  18 30 92 e5                                      ldr r3, [r2, #0x18]
005d9e40  00 00 53 e3                                      cmp r3, #0
005d9e44  f7 ff ff 0a                                      beq #0x5d9e28
005d9e48  00 30 93 e5                                      ldr r3, [r3]
005d9e4c  01 00 53 e3                                      cmp r3, #1
005d9e50  f4 ff ff 1a                                      bne #0x5d9e28
005d9e54  00 30 a0 e3                                      mov r3, #0
005d9e58  04 30 8d e5                                      str r3, [sp, #4]
005d9e5c  08 30 8d e5                                      str r3, [sp, #8]
005d9e60  18 10 92 e5                                      ldr r1, [r2, #0x18]
005d9e64  10 00 8d e2                                      add r0, sp, #0x10
005d9e68  0c 10 20 e5                                      str r1, [r0, #-0xc]!
005d9e6c  18 30 82 e5                                      str r3, [r2, #0x18]
005d9e70  5c db f4 eb                                      bl #0x310be8
005d9e74  08 00 8d e2                                      add r0, sp, #8
005d9e78  5a db f4 eb                                      bl #0x310be8
005d9e7c  e9 ff ff ea                                      b #0x5d9e28
005d9e80  0c 00 8d e2                                      add r0, sp, #0xc
005d9e84  0b e1 f5 eb                                      bl #0x3522b8
005d9e88  e6 ff ff ea                                      b #0x5d9e28
; mapping-symbol data/literal pool
005d9e8c  b8 ac 3b 00 dc 30 00 00                          .byte 0xb8, 0xac, 0x3b, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x005d9e94, declared_size=132, range_size=132, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager20clearUnusedInstancesEv
; demangled: glitch::video::CMaterialRendererManager::clearUnusedInstances()
; decoder-mode: arm
005d9e94  70 40 2d e9                                      push {r4, r5, r6, lr}
005d9e98  08 40 90 e5                                      ldr r4, [r0, #8]
005d9e9c  00 50 a0 e1                                      mov r5, r0
005d9ea0  00 00 54 e1                                      cmp r4, r0
005d9ea4  0d 00 00 0a                                      beq #0x5d9ee0
005d9ea8  05 00 a0 e1                                      mov r0, r5
005d9eac  b2 12 d4 e1                                      ldrh r1, [r4, #0x22]
005d9eb0  c0 ff ff eb                                      bl #0x5d9db8
005d9eb4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005d9eb8  00 00 52 e3                                      cmp r2, #0
005d9ebc  01 00 00 1a                                      bne #0x5d9ec8
005d9ec0  07 00 00 ea                                      b #0x5d9ee4
005d9ec4  03 20 a0 e1                                      mov r2, r3
005d9ec8  08 30 92 e5                                      ldr r3, [r2, #8]
005d9ecc  00 00 53 e3                                      cmp r3, #0
005d9ed0  fb ff ff 1a                                      bne #0x5d9ec4
005d9ed4  02 40 a0 e1                                      mov r4, r2
005d9ed8  04 00 55 e1                                      cmp r5, r4
005d9edc  f1 ff ff 1a                                      bne #0x5d9ea8
005d9ee0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d9ee4  04 30 94 e5                                      ldr r3, [r4, #4]
005d9ee8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005d9eec  04 00 51 e1                                      cmp r1, r4
005d9ef0  05 00 00 1a                                      bne #0x5d9f0c
005d9ef4  03 40 a0 e1                                      mov r4, r3
005d9ef8  04 30 93 e5                                      ldr r3, [r3, #4]
005d9efc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005d9f00  04 00 52 e1                                      cmp r2, r4
005d9f04  fa ff ff 0a                                      beq #0x5d9ef4
005d9f08  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005d9f0c  03 00 52 e1                                      cmp r2, r3
005d9f10  03 40 a0 11                                      movne r4, r3
005d9f14  ef ff ff ea                                      b #0x5d9ed8

; FUNCTION 0x005da160, declared_size=1088, range_size=1088, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager13bindParameterEPKNS0_19SShaderParameterDefEtNS0_23E_SHADER_PARAMETER_TYPEERNS0_11SRenderPassEtNS0_14E_SHADER_STAGEE
; demangled: glitch::video::CMaterialRendererManager::bindParameter(glitch::video::SShaderParameterDef const*, unsigned short, glitch::video::E_SHADER_PARAMETER_TYPE, glitch::video::SRenderPass&, unsigned short, glitch::video::E_SHADER_STAGE)
; decoder-mode: arm
005da160  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005da164  24 d0 4d e2                                      sub sp, sp, #0x24
005da168  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005da16c  50 70 9d e5                                      ldr r7, [sp, #0x50]
005da170  bc 54 dd e1                                      ldrh r5, [sp, #0x4c]
005da174  20 60 9c e5                                      ldr r6, [ip, #0x20]
005da178  05 80 87 e2                                      add r8, r7, #5
005da17c  f4 43 9f e5                                      ldr r4, [pc, #0x3f4]
005da180  88 c1 86 e0                                      add ip, r6, r8, lsl #3
005da184  b6 c0 dc e1                                      ldrh ip, [ip, #6]
005da188  04 40 8f e0                                      add r4, pc, r4
005da18c  08 00 8d e5                                      str r0, [sp, #8]
005da190  05 00 5c e1                                      cmp ip, r5
005da194  01 a0 a0 e1                                      mov sl, r1
005da198  0c 20 8d e5                                      str r2, [sp, #0xc]
005da19c  2e 00 00 9a                                      bls #0x5da25c
005da1a0  88 01 96 e7                                      ldr r0, [r6, r8, lsl #3]
005da1a4  05 b2 a0 e1                                      lsl fp, r5, #4
005da1a8  0b 90 80 e0                                      add sb, r0, fp
005da1ac  b4 10 d9 e1                                      ldrh r1, [sb, #4]
005da1b0  02 00 51 e3                                      cmp r1, #2
005da1b4  1d 00 00 0a                                      beq #0x5da230
005da1b8  b4 20 da e1                                      ldrh r2, [sl, #4]
005da1bc  12 00 53 e3                                      cmp r3, #0x12
005da1c0  00 c0 a0 d3                                      movle ip, #0
005da1c4  01 c0 a0 c3                                      movgt ip, #1
005da1c8  12 00 52 e3                                      cmp r2, #0x12
005da1cc  00 c0 a0 13                                      movne ip, #0
005da1d0  00 00 5c e3                                      cmp ip, #0
005da1d4  0c 00 00 0a                                      beq #0x5da20c
005da1d8  1b 00 53 e3                                      cmp r3, #0x1b
005da1dc  12 20 a0 d3                                      movle r2, #0x12
005da1e0  08 00 00 ca                                      bgt #0x5da208
005da1e4  22 c0 43 e2                                      sub ip, r3, #0x22
005da1e8  1c 00 5c e3                                      cmp ip, #0x1c
005da1ec  20 00 00 8a                                      bhi #0x5da274
005da1f0  84 03 9f e5                                      ldr r0, [pc, #0x384]
005da1f4  03 10 a0 e3                                      mov r1, #3
005da1f8  00 00 8f e0                                      add r0, pc, r0
005da1fc  a7 c2 00 eb                                      bl #0x60aca0
005da200  00 00 a0 e3                                      mov r0, #0
005da204  07 00 00 ea                                      b #0x5da228
005da208  12 20 a0 e3                                      mov r2, #0x12
005da20c  02 00 53 e1                                      cmp r3, r2
005da210  f3 ff ff 0a                                      beq #0x5da1e4
005da214  64 03 9f e5                                      ldr r0, [pc, #0x364]
005da218  03 10 a0 e3                                      mov r1, #3
005da21c  00 00 8f e0                                      add r0, pc, r0
005da220  9e c2 00 eb                                      bl #0x60aca0
005da224  00 00 a0 e3                                      mov r0, #0
005da228  24 d0 8d e2                                      add sp, sp, #0x24
005da22c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005da230  b4 20 da e1                                      ldrh r2, [sl, #4]
005da234  02 00 52 e3                                      cmp r2, #2
005da238  f3 ff ff 0a                                      beq #0x5da20c
005da23c  ff 00 52 e3                                      cmp r2, #0xff
005da240  f1 ff ff 0a                                      beq #0x5da20c
005da244  38 03 9f e5                                      ldr r0, [pc, #0x338]
005da248  03 10 a0 e3                                      mov r1, #3
005da24c  00 00 8f e0                                      add r0, pc, r0
005da250  92 c2 00 eb                                      bl #0x60aca0
005da254  00 00 a0 e3                                      mov r0, #0
005da258  f2 ff ff ea                                      b #0x5da228
005da25c  24 03 9f e5                                      ldr r0, [pc, #0x324]
005da260  03 10 a0 e3                                      mov r1, #3
005da264  00 00 8f e0                                      add r0, pc, r0
005da268  8c c2 00 eb                                      bl #0x60aca0
005da26c  00 00 a0 e3                                      mov r0, #0
005da270  ec ff ff ea                                      b #0x5da228
005da274  21 00 53 e3                                      cmp r3, #0x21
005da278  dc ff ff 0a                                      beq #0x5da1f0
005da27c  ff 00 52 e3                                      cmp r2, #0xff
005da280  b2 00 00 0a                                      beq #0x5da550
005da284  ff 00 53 e3                                      cmp r3, #0xff
005da288  4f 00 00 0a                                      beq #0x5da3cc
005da28c  01 00 53 e1                                      cmp r3, r1
005da290  4d 00 00 0a                                      beq #0x5da3cc
005da294  05 02 90 e7                                      ldr r0, [r0, r5, lsl #4]
005da298  04 30 8d e5                                      str r3, [sp, #4]
005da29c  00 00 50 e3                                      cmp r0, #0
005da2a0  04 00 80 12                                      addne r0, r0, #4
005da2a4  f6 1f 00 eb                                      bl #0x5e2284
005da2a8  b4 20 d9 e1                                      ldrh r2, [sb, #4]
005da2ac  04 30 9d e5                                      ldr r3, [sp, #4]
005da2b0  02 00 50 e1                                      cmp r0, r2
005da2b4  9f 00 00 1a                                      bne #0x5da538
005da2b8  08 00 9d e5                                      ldr r0, [sp, #8]
005da2bc  b0 14 d6 e1                                      ldrh r1, [r6, #0x40]
005da2c0  28 20 90 e5                                      ldr r2, [r0, #0x28]
005da2c4  d8 20 92 e5                                      ldr r2, [r2, #0xd8]
005da2c8  20 00 92 e5                                      ldr r0, [r2, #0x20]
005da2cc  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
005da2d0  00 00 62 e0                                      rsb r0, r2, r0
005da2d4  c0 01 51 e1                                      cmp r1, r0, asr #3
005da2d8  81 21 82 30                                      addlo r2, r2, r1, lsl #3
005da2dc  a8 22 9f 25                                      ldrhs r2, [pc, #0x2a8]
005da2e0  02 20 94 27                                      ldrhs r2, [r4, r2]
005da2e4  00 10 92 e5                                      ldr r1, [r2]
005da2e8  73 30 ff e6                                      uxth r3, r3
005da2ec  00 00 51 e3                                      cmp r1, #0
005da2f0  04 20 91 15                                      ldrne r2, [r1, #4]
005da2f4  01 20 82 12                                      addne r2, r2, #1
005da2f8  04 20 81 15                                      strne r2, [r1, #4]
005da2fc  88 c1 91 e7                                      ldr ip, [r1, r8, lsl #3]
005da300  0b b0 8c e0                                      add fp, ip, fp
005da304  06 00 db e5                                      ldrb r0, [fp, #6]
005da308  05 22 9c e7                                      ldr r2, [ip, r5, lsl #4]
005da30c  1c 00 8d e5                                      str r0, [sp, #0x1c]
005da310  08 00 9b e5                                      ldr r0, [fp, #8]
005da314  00 00 52 e3                                      cmp r2, #0
005da318  18 00 8d e5                                      str r0, [sp, #0x18]
005da31c  0c 00 9b e5                                      ldr r0, [fp, #0xc]
005da320  14 00 8d e5                                      str r0, [sp, #0x14]
005da324  07 00 db e5                                      ldrb r0, [fp, #7]
005da328  10 00 8d e5                                      str r0, [sp, #0x10]
005da32c  00 00 92 15                                      ldrne r0, [r2]
005da330  01 00 80 12                                      addne r0, r0, #1
005da334  00 00 82 15                                      strne r0, [r2]
005da338  08 30 8d e5                                      str r3, [sp, #8]
005da33c  00 00 52 e3                                      cmp r2, #0
005da340  00 30 92 15                                      ldrne r3, [r2]
005da344  01 30 83 12                                      addne r3, r3, #1
005da348  00 30 82 15                                      strne r3, [r2]
005da34c  05 02 9c e7                                      ldr r0, [ip, r5, lsl #4]
005da350  05 22 8c e7                                      str r2, [ip, r5, lsl #4]
005da354  00 00 50 e3                                      cmp r0, #0
005da358  04 00 00 0a                                      beq #0x5da370
005da35c  00 30 90 e5                                      ldr r3, [r0]
005da360  01 30 43 e2                                      sub r3, r3, #1
005da364  00 00 53 e3                                      cmp r3, #0
005da368  00 30 80 e5                                      str r3, [r0]
005da36c  7d 00 00 0a                                      beq #0x5da568
005da370  14 30 9d e5                                      ldr r3, [sp, #0x14]
005da374  00 00 52 e3                                      cmp r2, #0
005da378  0c 30 8b e5                                      str r3, [fp, #0xc]
005da37c  08 c0 9d e5                                      ldr ip, [sp, #8]
005da380  b4 c0 cb e1                                      strh ip, [fp, #4]
005da384  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005da388  06 00 cb e5                                      strb r0, [fp, #6]
005da38c  10 30 9d e5                                      ldr r3, [sp, #0x10]
005da390  07 30 cb e5                                      strb r3, [fp, #7]
005da394  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005da398  08 c0 8b e5                                      str ip, [fp, #8]
005da39c  08 00 00 0a                                      beq #0x5da3c4
005da3a0  00 30 92 e5                                      ldr r3, [r2]
005da3a4  01 30 43 e2                                      sub r3, r3, #1
005da3a8  00 00 53 e3                                      cmp r3, #0
005da3ac  00 30 82 e5                                      str r3, [r2]
005da3b0  03 00 00 1a                                      bne #0x5da3c4
005da3b4  02 00 a0 e1                                      mov r0, r2
005da3b8  00 10 8d e5                                      str r1, [sp]
005da3bc  76 2a 03 eb                                      bl #0x6a4d9c
005da3c0  00 10 9d e5                                      ldr r1, [sp]
005da3c4  01 00 a0 e1                                      mov r0, r1
005da3c8  6d 0c f5 eb                                      bl #0x31d584
005da3cc  06 30 da e5                                      ldrb r3, [sl, #6]
005da3d0  ff 00 53 e3                                      cmp r3, #0xff
005da3d4  13 00 00 0a                                      beq #0x5da428
005da3d8  b4 20 d9 e1                                      ldrh r2, [sb, #4]
005da3dc  12 00 52 e3                                      cmp r2, #0x12
005da3e0  51 00 00 da                                      ble #0x5da52c
005da3e4  1b 00 52 e3                                      cmp r2, #0x1b
005da3e8  4f 00 00 ca                                      bgt #0x5da52c
005da3ec  12 00 53 e3                                      cmp r3, #0x12
005da3f0  0c 00 00 0a                                      beq #0x5da428
005da3f4  94 11 9f e5                                      ldr r1, [pc, #0x194]
005da3f8  06 20 d9 e5                                      ldrb r2, [sb, #6]
005da3fc  01 00 a0 e3                                      mov r0, #1
005da400  01 10 94 e7                                      ldr r1, [r4, r1]
005da404  02 41 91 e7                                      ldr r4, [r1, r2, lsl #2]
005da408  10 43 14 e0                                      ands r4, r4, r0, lsl r3
005da40c  05 00 00 1a                                      bne #0x5da428
005da410  7c 01 9f e5                                      ldr r0, [pc, #0x17c]
005da414  03 10 a0 e3                                      mov r1, #3
005da418  00 00 8f e0                                      add r0, pc, r0
005da41c  1f c2 00 eb                                      bl #0x60aca0
005da420  04 00 a0 e1                                      mov r0, r4
005da424  7f ff ff ea                                      b #0x5da228
005da428  08 30 9a e5                                      ldr r3, [sl, #8]
005da42c  01 00 73 e3                                      cmn r3, #1
005da430  08 00 00 0a                                      beq #0x5da458
005da434  08 20 99 e5                                      ldr r2, [sb, #8]
005da438  02 00 53 e1                                      cmp r3, r2
005da43c  05 00 00 0a                                      beq #0x5da458
005da440  50 01 9f e5                                      ldr r0, [pc, #0x150]
005da444  03 10 a0 e3                                      mov r1, #3
005da448  00 00 8f e0                                      add r0, pc, r0
005da44c  13 c2 00 eb                                      bl #0x60aca0
005da450  00 00 a0 e3                                      mov r0, #0
005da454  73 ff ff ea                                      b #0x5da228
005da458  00 00 57 e3                                      cmp r7, #0
005da45c  00 20 a0 c3                                      movgt r2, #0
005da460  00 10 a0 d3                                      movle r1, #0
005da464  06 30 a0 c1                                      movgt r3, r6
005da468  02 10 a0 c1                                      movgt r1, r2
005da46c  08 00 00 da                                      ble #0x5da494
005da470  be c2 d3 e1                                      ldrh ip, [r3, #0x2e]
005da474  bc 02 d3 e1                                      ldrh r0, [r3, #0x2c]
005da478  01 20 82 e2                                      add r2, r2, #1
005da47c  07 00 52 e1                                      cmp r2, r7
005da480  0c 00 60 e0                                      rsb r0, r0, ip
005da484  00 10 81 e0                                      add r1, r1, r0
005da488  71 10 ff e6                                      uxth r1, r1
005da48c  08 30 83 e2                                      add r3, r3, #8
005da490  f6 ff ff 1a                                      bne #0x5da470
005da494  88 61 86 e0                                      add r6, r6, r8, lsl #3
005da498  b4 20 d6 e1                                      ldrh r2, [r6, #4]
005da49c  48 00 9d e5                                      ldr r0, [sp, #0x48]
005da4a0  05 50 62 e0                                      rsb r5, r2, r5
005da4a4  24 30 90 e5                                      ldr r3, [r0, #0x24]
005da4a8  05 10 81 e0                                      add r1, r1, r5
005da4ac  71 10 ff e6                                      uxth r1, r1
005da4b0  81 21 d3 e7                                      ldrb r2, [r3, r1, lsl #3]
005da4b4  81 01 83 e0                                      add r0, r3, r1, lsl #3
005da4b8  00 00 52 e3                                      cmp r2, #0
005da4bc  0a 00 00 1a                                      bne #0x5da4ec
005da4c0  04 20 90 e5                                      ldr r2, [r0, #4]
005da4c4  00 00 52 e3                                      cmp r2, #0
005da4c8  07 00 00 0a                                      beq #0x5da4ec
005da4cc  18 c0 92 e5                                      ldr ip, [r2, #0x18]
005da4d0  01 c0 4c e2                                      sub ip, ip, #1
005da4d4  00 00 5c e3                                      cmp ip, #0
005da4d8  18 c0 82 e5                                      str ip, [r2, #0x18]
005da4dc  00 c0 e0 03                                      mvneq ip, #0
005da4e0  07 c0 c2 05                                      strbeq ip, [r2, #7]
005da4e4  00 20 a0 e3                                      mov r2, #0
005da4e8  04 20 80 e5                                      str r2, [r0, #4]
005da4ec  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005da4f0  ff 2f 0f e3                                      movw r2, #0xffff
005da4f4  02 20 5c e0                                      subs r2, ip, r2
005da4f8  01 20 a0 13                                      movne r2, #1
005da4fc  00 00 52 e3                                      cmp r2, #0
005da500  81 21 c3 e7                                      strb r2, [r3, r1, lsl #3]
005da504  04 a0 80 05                                      streq sl, [r0, #4]
005da508  18 30 9a 05                                      ldreq r3, [sl, #0x18]
005da50c  01 00 a0 03                                      moveq r0, #1
005da510  b4 c0 c0 11                                      strhne ip, [r0, #4]
005da514  00 30 83 00                                      addeq r3, r3, r0
005da518  18 30 8a 05                                      streq r3, [sl, #0x18]
005da51c  07 30 d9 05                                      ldrbeq r3, [sb, #7]
005da520  01 00 a0 13                                      movne r0, #1
005da524  07 30 ca 05                                      strbeq r3, [sl, #7]
005da528  3e ff ff ea                                      b #0x5da228
005da52c  12 00 52 e3                                      cmp r2, #0x12
005da530  af ff ff 1a                                      bne #0x5da3f4
005da534  ac ff ff ea                                      b #0x5da3ec
005da538  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
005da53c  03 10 a0 e3                                      mov r1, #3
005da540  00 00 8f e0                                      add r0, pc, r0
005da544  d5 c1 00 eb                                      bl #0x60aca0
005da548  00 00 a0 e3                                      mov r0, #0
005da54c  35 ff ff ea                                      b #0x5da228
005da550  22 20 41 e2                                      sub r2, r1, #0x22
005da554  1c 00 52 e3                                      cmp r2, #0x1c
005da558  24 ff ff 9a                                      bls #0x5da1f0
005da55c  21 00 51 e3                                      cmp r1, #0x21
005da560  47 ff ff 1a                                      bne #0x5da284
005da564  21 ff ff ea                                      b #0x5da1f0
005da568  06 00 8d e8                                      stm sp, {r1, r2}
005da56c  0a 2a 03 eb                                      bl #0x6a4d9c
005da570  06 00 9d e8                                      ldm sp, {r1, r2}
005da574  7d ff ff ea                                      b #0x5da370
; mapping-symbol data/literal pool
005da578  08 a9 3b 00 88 6a 30 00 f4 6a 30 00 14 6a 30 00  .byte 0x08, 0xa9, 0x3b, 0x00, 0x88, 0x6a, 0x30, 0x00, 0xf4, 0x6a, 0x30, 0x00, 0x14, 0x6a, 0x30, 0x00
005da588  dc 69 30 00 fc 49 00 00 a4 2c 00 00 b8 68 30 00  .byte 0xdc, 0x69, 0x30, 0x00, 0xfc, 0x49, 0x00, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0xb8, 0x68, 0x30, 0x00
005da598  a8 68 30 00 60 67 30 00                          .byte 0xa8, 0x68, 0x30, 0x00, 0x60, 0x67, 0x30, 0x00

; FUNCTION 0x005da5a0, declared_size=336, range_size=336, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager19bindGlobalParameterEtNS0_23E_SHADER_PARAMETER_TYPEENS1_12STemporaryIDEhtNS0_14E_SHADER_STAGEE
; demangled: glitch::video::CMaterialRendererManager::bindGlobalParameter(unsigned short, glitch::video::E_SHADER_PARAMETER_TYPE, glitch::video::CMaterialRendererManager::STemporaryID, unsigned char, unsigned short, glitch::video::E_SHADER_STAGE)
; decoder-mode: arm
005da5a0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005da5a4  28 40 90 e5                                      ldr r4, [r0, #0x28]
005da5a8  01 c0 a0 e1                                      mov ip, r1
005da5ac  02 60 a0 e1                                      mov r6, r2
005da5b0  e4 10 94 e5                                      ldr r1, [r4, #0xe4]
005da5b4  1c 81 9f e5                                      ldr r8, [pc, #0x11c]
005da5b8  0c d0 4d e2                                      sub sp, sp, #0xc
005da5bc  1c 40 91 e5                                      ldr r4, [r1, #0x1c]
005da5c0  18 20 91 e5                                      ldr r2, [r1, #0x18]
005da5c4  08 80 8f e0                                      add r8, pc, r8
005da5c8  30 70 9d e5                                      ldr r7, [sp, #0x30]
005da5cc  04 40 62 e0                                      rsb r4, r2, r4
005da5d0  44 11 a0 e1                                      asr r1, r4, #2
005da5d4  28 a0 dd e5                                      ldrb sl, [sp, #0x28]
005da5d8  81 40 81 e0                                      add r4, r1, r1, lsl #1
005da5dc  bc 52 dd e1                                      ldrh r5, [sp, #0x2c]
005da5e0  04 42 84 e0                                      add r4, r4, r4, lsl #4
005da5e4  04 44 84 e0                                      add r4, r4, r4, lsl #8
005da5e8  04 48 84 e0                                      add r4, r4, r4, lsl #16
005da5ec  04 11 81 e0                                      add r1, r1, r4, lsl #2
005da5f0  01 00 5c e1                                      cmp ip, r1
005da5f4  17 00 00 3a                                      blo #0x5da658
005da5f8  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
005da5fc  02 10 98 e7                                      ldr r1, [r8, r2]
005da600  00 80 91 e5                                      ldr r8, [r1]
005da604  00 00 58 e3                                      cmp r8, #0
005da608  17 00 00 0a                                      beq #0x5da66c
005da60c  00 00 53 e3                                      cmp r3, #0
005da610  28 00 00 0a                                      beq #0x5da6b8
005da614  04 20 d3 e5                                      ldrb r2, [r3, #4]
005da618  0a 00 52 e1                                      cmp r2, sl
005da61c  18 00 00 9a                                      bls #0x5da684
005da620  08 30 93 e5                                      ldr r3, [r3, #8]
005da624  34 40 a0 e3                                      mov r4, #0x34
005da628  94 3a 24 e0                                      mla r4, r4, sl, r3
005da62c  20 80 94 e5                                      ldr r8, [r4, #0x20]
005da630  00 00 58 e3                                      cmp r8, #0
005da634  19 00 00 0a                                      beq #0x5da6a0
005da638  0c 20 a0 e1                                      mov r2, ip
005da63c  06 30 a0 e1                                      mov r3, r6
005da640  28 40 8d e5                                      str r4, [sp, #0x28]
005da644  2c 50 8d e5                                      str r5, [sp, #0x2c]
005da648  30 70 8d e5                                      str r7, [sp, #0x30]
005da64c  0c d0 8d e2                                      add sp, sp, #0xc
005da650  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
005da654  c1 fe ff ea                                      b #0x5da160
005da658  14 10 a0 e3                                      mov r1, #0x14
005da65c  91 2c 21 e0                                      mla r1, r1, ip, r2
005da660  00 80 91 e5                                      ldr r8, [r1]
005da664  00 00 58 e3                                      cmp r8, #0
005da668  e7 ff ff 1a                                      bne #0x5da60c
005da66c  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
005da670  03 10 a0 e3                                      mov r1, #3
005da674  00 00 8f e0                                      add r0, pc, r0
005da678  88 c1 00 eb                                      bl #0x60aca0
005da67c  08 00 a0 e1                                      mov r0, r8
005da680  04 00 00 ea                                      b #0x5da698
005da684  58 00 9f e5                                      ldr r0, [pc, #0x58]
005da688  03 10 a0 e3                                      mov r1, #3
005da68c  00 00 8f e0                                      add r0, pc, r0
005da690  82 c1 00 eb                                      bl #0x60aca0
005da694  00 00 a0 e3                                      mov r0, #0
005da698  0c d0 8d e2                                      add sp, sp, #0xc
005da69c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005da6a0  40 00 9f e5                                      ldr r0, [pc, #0x40]
005da6a4  03 10 a0 e3                                      mov r1, #3
005da6a8  00 00 8f e0                                      add r0, pc, r0
005da6ac  7b c1 00 eb                                      bl #0x60aca0
005da6b0  08 00 a0 e1                                      mov r0, r8
005da6b4  f7 ff ff ea                                      b #0x5da698
005da6b8  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
005da6bc  03 10 a0 e3                                      mov r1, #3
005da6c0  04 30 8d e5                                      str r3, [sp, #4]
005da6c4  00 00 8f e0                                      add r0, pc, r0
005da6c8  74 c1 00 eb                                      bl #0x60aca0
005da6cc  04 30 9d e5                                      ldr r3, [sp, #4]
005da6d0  03 00 a0 e1                                      mov r0, r3
005da6d4  ef ff ff ea                                      b #0x5da698
; mapping-symbol data/literal pool
005da6d8  cc a4 3b 00 14 28 00 00 ac 66 30 00 cc 66 30 00  .byte 0xcc, 0xa4, 0x3b, 0x00, 0x14, 0x28, 0x00, 0x00, 0xac, 0x66, 0x30, 0x00, 0xcc, 0x66, 0x30, 0x00
005da6e8  c0 66 30 00 7c 66 30 00                          .byte 0xc0, 0x66, 0x30, 0x00, 0x7c, 0x66, 0x30, 0x00

; FUNCTION 0x005da6f0, declared_size=332, range_size=332, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager19bindGlobalParameterEtNS1_12STemporaryIDEhtNS0_14E_SHADER_STAGEE
; demangled: glitch::video::CMaterialRendererManager::bindGlobalParameter(unsigned short, glitch::video::CMaterialRendererManager::STemporaryID, unsigned char, unsigned short, glitch::video::E_SHADER_STAGE)
; decoder-mode: arm
005da6f0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005da6f4  28 c0 90 e5                                      ldr ip, [r0, #0x28]
005da6f8  02 40 a0 e1                                      mov r4, r2
005da6fc  24 61 9f e5                                      ldr r6, [pc, #0x124]
005da700  e4 c0 9c e5                                      ldr ip, [ip, #0xe4]
005da704  14 d0 4d e2                                      sub sp, sp, #0x14
005da708  06 60 8f e0                                      add r6, pc, r6
005da70c  1c e0 9c e5                                      ldr lr, [ip, #0x1c]
005da710  18 20 9c e5                                      ldr r2, [ip, #0x18]
005da714  03 c0 a0 e1                                      mov ip, r3
005da718  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005da71c  0e e0 62 e0                                      rsb lr, r2, lr
005da720  4e 31 a0 e1                                      asr r3, lr, #2
005da724  b8 e2 dd e1                                      ldrh lr, [sp, #0x28]
005da728  83 70 83 e0                                      add r7, r3, r3, lsl #1
005da72c  07 72 87 e0                                      add r7, r7, r7, lsl #4
005da730  07 74 87 e0                                      add r7, r7, r7, lsl #8
005da734  07 78 87 e0                                      add r7, r7, r7, lsl #16
005da738  07 31 83 e0                                      add r3, r3, r7, lsl #2
005da73c  03 00 51 e1                                      cmp r1, r3
005da740  0d 00 00 3a                                      blo #0x5da77c
005da744  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
005da748  03 20 96 e7                                      ldr r2, [r6, r3]
005da74c  00 60 92 e5                                      ldr r6, [r2]
005da750  00 00 56 e3                                      cmp r6, #0
005da754  0d 00 00 0a                                      beq #0x5da790
005da758  b4 20 d2 e1                                      ldrh r2, [r2, #4]
005da75c  12 00 52 e3                                      cmp r2, #0x12
005da760  10 00 00 0a                                      beq #0x5da7a8
005da764  04 30 a0 e1                                      mov r3, r4
005da768  00 50 8d e8                                      stm sp, {ip, lr}
005da76c  08 50 8d e5                                      str r5, [sp, #8]
005da770  8a ff ff eb                                      bl #0x5da5a0
005da774  14 d0 8d e2                                      add sp, sp, #0x14
005da778  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005da77c  14 30 a0 e3                                      mov r3, #0x14
005da780  93 21 22 e0                                      mla r2, r3, r1, r2
005da784  00 60 92 e5                                      ldr r6, [r2]
005da788  00 00 56 e3                                      cmp r6, #0
005da78c  f1 ff ff 1a                                      bne #0x5da758
005da790  98 00 9f e5                                      ldr r0, [pc, #0x98]
005da794  03 10 a0 e3                                      mov r1, #3
005da798  00 00 8f e0                                      add r0, pc, r0
005da79c  3f c1 00 eb                                      bl #0x60aca0
005da7a0  06 00 a0 e1                                      mov r0, r6
005da7a4  f2 ff ff ea                                      b #0x5da774
005da7a8  00 00 54 e3                                      cmp r4, #0
005da7ac  17 00 00 0a                                      beq #0x5da810
005da7b0  04 30 d4 e5                                      ldrb r3, [r4, #4]
005da7b4  0c 00 53 e1                                      cmp r3, ip
005da7b8  0e 00 00 9a                                      bls #0x5da7f8
005da7bc  08 30 94 e5                                      ldr r3, [r4, #8]
005da7c0  34 20 a0 e3                                      mov r2, #0x34
005da7c4  92 3c 23 e0                                      mla r3, r2, ip, r3
005da7c8  20 30 93 e5                                      ldr r3, [r3, #0x20]
005da7cc  00 00 53 e3                                      cmp r3, #0
005da7d0  08 00 00 0a                                      beq #0x5da7f8
005da7d4  05 20 85 e2                                      add r2, r5, #5
005da7d8  82 61 83 e0                                      add r6, r3, r2, lsl #3
005da7dc  b6 60 d6 e1                                      ldrh r6, [r6, #6]
005da7e0  0e 00 56 e1                                      cmp r6, lr
005da7e4  03 00 00 9a                                      bls #0x5da7f8
005da7e8  82 31 93 e7                                      ldr r3, [r3, r2, lsl #3]
005da7ec  0e 32 83 e0                                      add r3, r3, lr, lsl #4
005da7f0  b4 20 d3 e1                                      ldrh r2, [r3, #4]
005da7f4  da ff ff ea                                      b #0x5da764
005da7f8  34 00 9f e5                                      ldr r0, [pc, #0x34]
005da7fc  03 10 a0 e3                                      mov r1, #3
005da800  00 00 8f e0                                      add r0, pc, r0
005da804  25 c1 00 eb                                      bl #0x60aca0
005da808  00 00 a0 e3                                      mov r0, #0
005da80c  d8 ff ff ea                                      b #0x5da774
005da810  20 00 9f e5                                      ldr r0, [pc, #0x20]
005da814  03 10 a0 e3                                      mov r1, #3
005da818  00 00 8f e0                                      add r0, pc, r0
005da81c  1f c1 00 eb                                      bl #0x60aca0
005da820  04 00 a0 e1                                      mov r0, r4
005da824  d2 ff ff ea                                      b #0x5da774
; mapping-symbol data/literal pool
005da828  88 a3 3b 00 14 28 00 00 88 65 30 00 88 65 30 00  .byte 0x88, 0xa3, 0x3b, 0x00, 0x14, 0x28, 0x00, 0x00, 0x88, 0x65, 0x30, 0x00, 0x88, 0x65, 0x30, 0x00
005da838  28 65 30 00                                      .byte 0x28, 0x65, 0x30, 0x00

; FUNCTION 0x005da83c, declared_size=128, range_size=128, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager13bindParameterENS1_12STemporaryIDENS0_23E_SHADER_PARAMETER_TYPEES2_htNS0_14E_SHADER_STAGEE
; demangled: glitch::video::CMaterialRendererManager::bindParameter(glitch::video::CMaterialRendererManager::STemporaryID, glitch::video::E_SHADER_PARAMETER_TYPE, glitch::video::CMaterialRendererManager::STemporaryID, unsigned char, unsigned short, glitch::video::E_SHADER_STAGE)
; decoder-mode: arm
005da83c  70 40 2d e9                                      push {r4, r5, r6, lr}
005da840  90 c0 90 e5                                      ldr ip, [r0, #0x90]
005da844  01 50 a0 e1                                      mov r5, r1
005da848  10 60 dd e5                                      ldrb r6, [sp, #0x10]
005da84c  00 00 5c e3                                      cmp ip, #0
005da850  b4 41 dd e1                                      ldrh r4, [sp, #0x14]
005da854  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005da858  0a 00 00 0a                                      beq #0x5da888
005da85c  00 00 51 e3                                      cmp r1, #0
005da860  08 00 00 0a                                      beq #0x5da888
005da864  00 00 53 e3                                      cmp r3, #0
005da868  06 00 00 0a                                      beq #0x5da888
005da86c  04 50 d3 e5                                      ldrb r5, [r3, #4]
005da870  06 00 55 e1                                      cmp r5, r6
005da874  05 00 00 8a                                      bhi #0x5da890
005da878  38 00 9f e5                                      ldr r0, [pc, #0x38]
005da87c  03 10 a0 e3                                      mov r1, #3
005da880  00 00 8f e0                                      add r0, pc, r0
005da884  05 c1 00 eb                                      bl #0x60aca0
005da888  00 00 a0 e3                                      mov r0, #0
005da88c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005da890  08 50 93 e5                                      ldr r5, [r3, #8]
005da894  02 30 a0 e1                                      mov r3, r2
005da898  34 20 a0 e3                                      mov r2, #0x34
005da89c  92 56 25 e0                                      mla r5, r2, r6, r5
005da8a0  ff 2f 0f e3                                      movw r2, #0xffff
005da8a4  10 50 8d e5                                      str r5, [sp, #0x10]
005da8a8  14 40 8d e5                                      str r4, [sp, #0x14]
005da8ac  18 c0 8d e5                                      str ip, [sp, #0x18]
005da8b0  70 40 bd e8                                      pop {r4, r5, r6, lr}
005da8b4  29 fe ff ea                                      b #0x5da160
; mapping-symbol data/literal pool
005da8b8  d8 64 30 00                                      .byte 0xd8, 0x64, 0x30, 0x00

; FUNCTION 0x005dad20, declared_size=628, range_size=628, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager19removeAllBatchBakerEv
; demangled: glitch::video::CMaterialRendererManager::removeAllBatchBaker()
; decoder-mode: arm
005dad20  60 12 9f e5                                      ldr r1, [pc, #0x260]
005dad24  60 32 9f e5                                      ldr r3, [pc, #0x260]
005dad28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005dad2c  01 10 8f e0                                      add r1, pc, r1
005dad30  03 30 91 e7                                      ldr r3, [r1, r3]
005dad34  1c d0 4d e2                                      sub sp, sp, #0x1c
005dad38  00 00 8d e5                                      str r0, [sp]
005dad3c  08 40 93 e5                                      ldr r4, [r3, #8]
005dad40  03 50 a0 e1                                      mov r5, r3
005dad44  08 10 8d e5                                      str r1, [sp, #8]
005dad48  05 00 54 e1                                      cmp r4, r5
005dad4c  0d 00 00 0a                                      beq #0x5dad88
005dad50  14 00 94 e5                                      ldr r0, [r4, #0x14]
005dad54  0a 0a f5 eb                                      bl #0x31d584
005dad58  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005dad5c  00 00 51 e3                                      cmp r1, #0
005dad60  01 20 a0 e1                                      mov r2, r1
005dad64  01 00 00 1a                                      bne #0x5dad70
005dad68  66 00 00 ea                                      b #0x5daf08
005dad6c  03 20 a0 e1                                      mov r2, r3
005dad70  08 30 92 e5                                      ldr r3, [r2, #8]
005dad74  00 00 53 e3                                      cmp r3, #0
005dad78  fb ff ff 1a                                      bne #0x5dad6c
005dad7c  02 40 a0 e1                                      mov r4, r2
005dad80  05 00 54 e1                                      cmp r4, r5
005dad84  f1 ff ff 1a                                      bne #0x5dad50
005dad88  10 30 94 e5                                      ldr r3, [r4, #0x10]
005dad8c  00 00 53 e3                                      cmp r3, #0
005dad90  05 00 00 0a                                      beq #0x5dadac
005dad94  04 00 94 e5                                      ldr r0, [r4, #4]
005dad98  65 fa ff eb                                      bl #0x5d9734
005dad9c  00 30 a0 e3                                      mov r3, #0
005dada0  10 30 84 e5                                      str r3, [r4, #0x10]
005dada4  18 00 84 e9                                      stmib r4, {r3, r4}
005dada8  0c 40 84 e5                                      str r4, [r4, #0xc]
005dadac  00 20 9d e5                                      ldr r2, [sp]
005dadb0  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
005dadb4  14 10 8d e2                                      add r1, sp, #0x14
005dadb8  08 a0 92 e5                                      ldr sl, [r2, #8]
005dadbc  0c b0 a0 e3                                      mov fp, #0xc
005dadc0  0c 30 8d e5                                      str r3, [sp, #0xc]
005dadc4  34 90 a0 e3                                      mov sb, #0x34
005dadc8  04 10 8d e5                                      str r1, [sp, #4]
005dadcc  00 30 9d e5                                      ldr r3, [sp]
005dadd0  0a 00 53 e1                                      cmp r3, sl
005dadd4  47 00 00 0a                                      beq #0x5daef8
005dadd8  00 20 9d e5                                      ldr r2, [sp]
005daddc  18 30 92 e5                                      ldr r3, [r2, #0x18]
005dade0  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
005dade4  b2 22 da e1                                      ldrh r2, [sl, #0x22]
005dade8  01 10 63 e0                                      rsb r1, r3, r1
005dadec  c1 01 52 e1                                      cmp r2, r1, asr #3
005dadf0  08 20 9d 25                                      ldrhs r2, [sp, #8]
005dadf4  0c 10 9d 25                                      ldrhs r1, [sp, #0xc]
005dadf8  82 31 83 30                                      addlo r3, r3, r2, lsl #3
005dadfc  01 30 92 27                                      ldrhs r3, [r2, r1]
005dae00  00 30 93 e5                                      ldr r3, [r3]
005dae04  00 00 53 e3                                      cmp r3, #0
005dae08  14 30 8d e5                                      str r3, [sp, #0x14]
005dae0c  00 20 93 15                                      ldrne r2, [r3]
005dae10  01 20 82 12                                      addne r2, r2, #1
005dae14  00 20 83 15                                      strne r2, [r3]
005dae18  14 30 9d 15                                      ldrne r3, [sp, #0x14]
005dae1c  10 20 d3 e5                                      ldrb r2, [r3, #0x10]
005dae20  00 00 52 e3                                      cmp r2, #0
005dae24  25 00 00 0a                                      beq #0x5daec0
005dae28  00 80 a0 e3                                      mov r8, #0
005dae2c  18 20 93 e5                                      ldr r2, [r3, #0x18]
005dae30  9b 08 03 e0                                      mul r3, fp, r8
005dae34  03 70 92 e7                                      ldr r7, [r2, r3]
005dae38  03 30 82 e0                                      add r3, r2, r3
005dae3c  00 00 57 e3                                      cmp r7, #0
005dae40  00 20 97 15                                      ldrne r2, [r7]
005dae44  01 20 82 12                                      addne r2, r2, #1
005dae48  00 20 87 15                                      strne r2, [r7]
005dae4c  04 60 d3 e5                                      ldrb r6, [r3, #4]
005dae50  08 50 93 e5                                      ldr r5, [r3, #8]
005dae54  00 00 56 e3                                      cmp r6, #0
005dae58  09 00 00 0a                                      beq #0x5dae84
005dae5c  01 60 46 e2                                      sub r6, r6, #1
005dae60  76 60 ef e6                                      uxtb r6, r6
005dae64  96 99 26 e0                                      mla r6, r6, sb, sb
005dae68  00 40 a0 e3                                      mov r4, #0
005dae6c  04 30 85 e0                                      add r3, r5, r4
005dae70  20 00 93 e5                                      ldr r0, [r3, #0x20]
005dae74  34 40 84 e2                                      add r4, r4, #0x34
005dae78  ce 26 00 eb                                      bl #0x5e49b8
005dae7c  06 00 54 e1                                      cmp r4, r6
005dae80  f9 ff ff 1a                                      bne #0x5dae6c
005dae84  00 00 57 e3                                      cmp r7, #0
005dae88  06 00 00 0a                                      beq #0x5daea8
005dae8c  00 30 97 e5                                      ldr r3, [r7]
005dae90  01 30 43 e2                                      sub r3, r3, #1
005dae94  00 00 53 e3                                      cmp r3, #0
005dae98  00 30 87 e5                                      str r3, [r7]
005dae9c  01 00 00 1a                                      bne #0x5daea8
005daea0  07 00 a0 e1                                      mov r0, r7
005daea4  bc 27 03 eb                                      bl #0x6a4d9c
005daea8  14 30 9d e5                                      ldr r3, [sp, #0x14]
005daeac  01 80 88 e2                                      add r8, r8, #1
005daeb0  78 80 ef e6                                      uxtb r8, r8
005daeb4  10 20 d3 e5                                      ldrb r2, [r3, #0x10]
005daeb8  08 00 52 e1                                      cmp r2, r8
005daebc  da ff ff 8a                                      bhi #0x5dae2c
005daec0  04 00 9d e5                                      ldr r0, [sp, #4]
005daec4  fb dc f5 eb                                      bl #0x3522b8
005daec8  0c 10 9a e5                                      ldr r1, [sl, #0xc]
005daecc  00 00 51 e3                                      cmp r1, #0
005daed0  1c 00 00 0a                                      beq #0x5daf48
005daed4  01 a0 a0 e1                                      mov sl, r1
005daed8  00 00 00 ea                                      b #0x5daee0
005daedc  03 a0 a0 e1                                      mov sl, r3
005daee0  08 30 9a e5                                      ldr r3, [sl, #8]
005daee4  00 00 53 e3                                      cmp r3, #0
005daee8  fb ff ff 1a                                      bne #0x5daedc
005daeec  00 30 9d e5                                      ldr r3, [sp]
005daef0  0a 00 53 e1                                      cmp r3, sl
005daef4  b7 ff ff 1a                                      bne #0x5dadd8
005daef8  28 00 93 e5                                      ldr r0, [r3, #0x28]
005daefc  c8 f5 ff eb                                      bl #0x5d8624
005daf00  1c d0 8d e2                                      add sp, sp, #0x1c
005daf04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005daf08  04 30 94 e5                                      ldr r3, [r4, #4]
005daf0c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005daf10  02 00 54 e1                                      cmp r4, r2
005daf14  01 00 00 0a                                      beq #0x5daf20
005daf18  07 00 00 ea                                      b #0x5daf3c
005daf1c  02 30 a0 e1                                      mov r3, r2
005daf20  04 20 93 e5                                      ldr r2, [r3, #4]
005daf24  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005daf28  03 00 51 e1                                      cmp r1, r3
005daf2c  fa ff ff 0a                                      beq #0x5daf1c
005daf30  03 40 a0 e1                                      mov r4, r3
005daf34  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005daf38  02 30 a0 e1                                      mov r3, r2
005daf3c  01 00 53 e1                                      cmp r3, r1
005daf40  03 40 a0 11                                      movne r4, r3
005daf44  7f ff ff ea                                      b #0x5dad48
005daf48  04 30 9a e5                                      ldr r3, [sl, #4]
005daf4c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005daf50  02 00 5a e1                                      cmp sl, r2
005daf54  01 00 00 0a                                      beq #0x5daf60
005daf58  07 00 00 ea                                      b #0x5daf7c
005daf5c  02 30 a0 e1                                      mov r3, r2
005daf60  04 20 93 e5                                      ldr r2, [r3, #4]
005daf64  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005daf68  03 00 51 e1                                      cmp r1, r3
005daf6c  fa ff ff 0a                                      beq #0x5daf5c
005daf70  03 a0 a0 e1                                      mov sl, r3
005daf74  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005daf78  02 30 a0 e1                                      mov r3, r2
005daf7c  01 00 53 e1                                      cmp r3, r1
005daf80  03 a0 a0 11                                      movne sl, r3
005daf84  90 ff ff ea                                      b #0x5dadcc
; mapping-symbol data/literal pool
005daf88  64 9d 3b 00 64 2c 00 00 dc 30 00 00              .byte 0x64, 0x9d, 0x3b, 0x00, 0x64, 0x2c, 0x00, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x005db15c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager18clearCreationStateEv
; demangled: glitch::video::CMaterialRendererManager::clearCreationState()
; decoder-mode: arm
005db15c  10 40 2d e9                                      push {r4, lr}
005db160  00 40 a0 e1                                      mov r4, r0
005db164  90 00 90 e5                                      ldr r0, [r0, #0x90]
005db168  9e ff ff eb                                      bl #0x5dafe8
005db16c  90 00 94 e5                                      ldr r0, [r4, #0x90]
005db170  44 65 fd eb                                      bl #0x534688
005db174  00 30 a0 e3                                      mov r3, #0
005db178  90 30 84 e5                                      str r3, [r4, #0x90]
005db17c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005db180, declared_size=500, range_size=500, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManagerD1Ev
; demangled: glitch::video::CMaterialRendererManager::~CMaterialRendererManager()
; decoder-mode: arm
005db180  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005db184  90 a0 90 e5                                      ldr sl, [r0, #0x90]
005db188  dc 91 9f e5                                      ldr sb, [pc, #0x1dc]
005db18c  08 d0 4d e2                                      sub sp, sp, #8
005db190  00 00 5a e3                                      cmp sl, #0
005db194  00 40 a0 e1                                      mov r4, r0
005db198  09 90 8f e0                                      add sb, pc, sb
005db19c  18 00 00 0a                                      beq #0x5db204
005db1a0  08 60 ba e5                                      ldr r6, [sl, #8]!
005db1a4  34 80 a0 e3                                      mov r8, #0x34
005db1a8  0a 00 56 e1                                      cmp r6, sl
005db1ac  12 00 00 0a                                      beq #0x5db1fc
005db1b0  0c 70 d6 e5                                      ldrb r7, [r6, #0xc]
005db1b4  00 00 57 e3                                      cmp r7, #0
005db1b8  0c 00 00 0a                                      beq #0x5db1f0
005db1bc  01 70 47 e2                                      sub r7, r7, #1
005db1c0  77 70 ef e6                                      uxtb r7, r7
005db1c4  97 88 27 e0                                      mla r7, r7, r8, r8
005db1c8  00 50 a0 e3                                      mov r5, #0
005db1cc  10 30 96 e5                                      ldr r3, [r6, #0x10]
005db1d0  05 30 83 e0                                      add r3, r3, r5
005db1d4  24 00 93 e5                                      ldr r0, [r3, #0x24]
005db1d8  34 50 85 e2                                      add r5, r5, #0x34
005db1dc  00 00 50 e3                                      cmp r0, #0
005db1e0  00 00 00 0a                                      beq #0x5db1e8
005db1e4  27 65 fd eb                                      bl #0x534688
005db1e8  07 00 55 e1                                      cmp r5, r7
005db1ec  f6 ff ff 1a                                      bne #0x5db1cc
005db1f0  00 60 96 e5                                      ldr r6, [r6]
005db1f4  0a 00 56 e1                                      cmp r6, sl
005db1f8  ec ff ff 1a                                      bne #0x5db1b0
005db1fc  04 00 a0 e1                                      mov r0, r4
005db200  d5 ff ff eb                                      bl #0x5db15c
005db204  08 50 94 e5                                      ldr r5, [r4, #8]
005db208  04 00 55 e1                                      cmp r5, r4
005db20c  20 00 00 0a                                      beq #0x5db294
005db210  58 a1 9f e5                                      ldr sl, [pc, #0x158]
005db214  04 70 8d e2                                      add r7, sp, #4
005db218  00 80 a0 e3                                      mov r8, #0
005db21c  18 30 94 e5                                      ldr r3, [r4, #0x18]
005db220  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005db224  b2 22 d5 e1                                      ldrh r2, [r5, #0x22]
005db228  01 10 63 e0                                      rsb r1, r3, r1
005db22c  c1 01 52 e1                                      cmp r2, r1, asr #3
005db230  0a 30 99 27                                      ldrhs r3, [sb, sl]
005db234  82 31 83 30                                      addlo r3, r3, r2, lsl #3
005db238  00 30 93 e5                                      ldr r3, [r3]
005db23c  00 00 53 e3                                      cmp r3, #0
005db240  04 30 8d e5                                      str r3, [sp, #4]
005db244  32 00 00 0a                                      beq #0x5db314
005db248  00 20 93 e5                                      ldr r2, [r3]
005db24c  07 00 a0 e1                                      mov r0, r7
005db250  01 20 82 e2                                      add r2, r2, #1
005db254  00 20 83 e5                                      str r2, [r3]
005db258  04 60 9d e5                                      ldr r6, [sp, #4]
005db25c  15 dc f5 eb                                      bl #0x3522b8
005db260  00 00 56 e3                                      cmp r6, #0
005db264  04 80 86 15                                      strne r8, [r6, #4]
005db268  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005db26c  00 00 52 e3                                      cmp r2, #0
005db270  18 00 00 0a                                      beq #0x5db2d8
005db274  02 50 a0 e1                                      mov r5, r2
005db278  00 00 00 ea                                      b #0x5db280
005db27c  03 50 a0 e1                                      mov r5, r3
005db280  08 30 95 e5                                      ldr r3, [r5, #8]
005db284  00 00 53 e3                                      cmp r3, #0
005db288  fb ff ff 1a                                      bne #0x5db27c
005db28c  04 00 55 e1                                      cmp r5, r4
005db290  e1 ff ff 1a                                      bne #0x5db21c
005db294  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
005db298  00 00 50 e3                                      cmp r0, #0
005db29c  00 00 00 0a                                      beq #0x5db2a4
005db2a0  84 cb f4 eb                                      bl #0x30e0b8
005db2a4  68 50 84 e2                                      add r5, r4, #0x68
005db2a8  10 30 95 e5                                      ldr r3, [r5, #0x10]
005db2ac  00 00 53 e3                                      cmp r3, #0
005db2b0  1a 00 00 1a                                      bne #0x5db320
005db2b4  18 50 45 e2                                      sub r5, r5, #0x18
005db2b8  10 30 95 e5                                      ldr r3, [r5, #0x10]
005db2bc  00 00 53 e3                                      cmp r3, #0
005db2c0  21 00 00 1a                                      bne #0x5db34c
005db2c4  04 00 a0 e1                                      mov r0, r4
005db2c8  f8 f9 ff eb                                      bl #0x5d9ab0
005db2cc  04 00 a0 e1                                      mov r0, r4
005db2d0  08 d0 8d e2                                      add sp, sp, #8
005db2d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005db2d8  04 30 95 e5                                      ldr r3, [r5, #4]
005db2dc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005db2e0  05 00 51 e1                                      cmp r1, r5
005db2e4  05 00 00 1a                                      bne #0x5db300
005db2e8  03 50 a0 e1                                      mov r5, r3
005db2ec  04 30 93 e5                                      ldr r3, [r3, #4]
005db2f0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005db2f4  05 00 52 e1                                      cmp r2, r5
005db2f8  fa ff ff 0a                                      beq #0x5db2e8
005db2fc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005db300  03 00 52 e1                                      cmp r2, r3
005db304  03 50 a0 11                                      movne r5, r3
005db308  04 00 55 e1                                      cmp r5, r4
005db30c  c2 ff ff 1a                                      bne #0x5db21c
005db310  df ff ff ea                                      b #0x5db294
005db314  07 00 a0 e1                                      mov r0, r7
005db318  e6 db f5 eb                                      bl #0x3522b8
005db31c  d1 ff ff ea                                      b #0x5db268
005db320  05 00 a0 e1                                      mov r0, r5
005db324  04 10 95 e5                                      ldr r1, [r5, #4]
005db328  53 fe ff eb                                      bl #0x5dac7c
005db32c  00 30 a0 e3                                      mov r3, #0
005db330  10 30 85 e5                                      str r3, [r5, #0x10]
005db334  28 00 85 e9                                      stmib r5, {r3, r5}
005db338  0c 50 85 e5                                      str r5, [r5, #0xc]
005db33c  18 50 45 e2                                      sub r5, r5, #0x18
005db340  10 30 95 e5                                      ldr r3, [r5, #0x10]
005db344  00 00 53 e3                                      cmp r3, #0
005db348  dd ff ff 0a                                      beq #0x5db2c4
005db34c  05 00 a0 e1                                      mov r0, r5
005db350  04 10 95 e5                                      ldr r1, [r5, #4]
005db354  48 fe ff eb                                      bl #0x5dac7c
005db358  00 30 a0 e3                                      mov r3, #0
005db35c  10 30 85 e5                                      str r3, [r5, #0x10]
005db360  28 00 85 e9                                      stmib r5, {r3, r5}
005db364  0c 50 85 e5                                      str r5, [r5, #0xc]
005db368  d5 ff ff ea                                      b #0x5db2c4
; mapping-symbol data/literal pool
005db36c  f8 98 3b 00 dc 30 00 00                          .byte 0xf8, 0x98, 0x3b, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x005db374, declared_size=500, range_size=500, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManagerD2Ev
; demangled: glitch::video::CMaterialRendererManager::~CMaterialRendererManager()
; decoder-mode: arm
005db374  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005db378  90 a0 90 e5                                      ldr sl, [r0, #0x90]
005db37c  dc 91 9f e5                                      ldr sb, [pc, #0x1dc]
005db380  08 d0 4d e2                                      sub sp, sp, #8
005db384  00 00 5a e3                                      cmp sl, #0
005db388  00 40 a0 e1                                      mov r4, r0
005db38c  09 90 8f e0                                      add sb, pc, sb
005db390  18 00 00 0a                                      beq #0x5db3f8
005db394  08 60 ba e5                                      ldr r6, [sl, #8]!
005db398  34 80 a0 e3                                      mov r8, #0x34
005db39c  0a 00 56 e1                                      cmp r6, sl
005db3a0  12 00 00 0a                                      beq #0x5db3f0
005db3a4  0c 70 d6 e5                                      ldrb r7, [r6, #0xc]
005db3a8  00 00 57 e3                                      cmp r7, #0
005db3ac  0c 00 00 0a                                      beq #0x5db3e4
005db3b0  01 70 47 e2                                      sub r7, r7, #1
005db3b4  77 70 ef e6                                      uxtb r7, r7
005db3b8  97 88 27 e0                                      mla r7, r7, r8, r8
005db3bc  00 50 a0 e3                                      mov r5, #0
005db3c0  10 30 96 e5                                      ldr r3, [r6, #0x10]
005db3c4  05 30 83 e0                                      add r3, r3, r5
005db3c8  24 00 93 e5                                      ldr r0, [r3, #0x24]
005db3cc  34 50 85 e2                                      add r5, r5, #0x34
005db3d0  00 00 50 e3                                      cmp r0, #0
005db3d4  00 00 00 0a                                      beq #0x5db3dc
005db3d8  aa 64 fd eb                                      bl #0x534688
005db3dc  07 00 55 e1                                      cmp r5, r7
005db3e0  f6 ff ff 1a                                      bne #0x5db3c0
005db3e4  00 60 96 e5                                      ldr r6, [r6]
005db3e8  0a 00 56 e1                                      cmp r6, sl
005db3ec  ec ff ff 1a                                      bne #0x5db3a4
005db3f0  04 00 a0 e1                                      mov r0, r4
005db3f4  58 ff ff eb                                      bl #0x5db15c
005db3f8  08 50 94 e5                                      ldr r5, [r4, #8]
005db3fc  04 00 55 e1                                      cmp r5, r4
005db400  20 00 00 0a                                      beq #0x5db488
005db404  58 a1 9f e5                                      ldr sl, [pc, #0x158]
005db408  04 70 8d e2                                      add r7, sp, #4
005db40c  00 80 a0 e3                                      mov r8, #0
005db410  18 30 94 e5                                      ldr r3, [r4, #0x18]
005db414  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005db418  b2 22 d5 e1                                      ldrh r2, [r5, #0x22]
005db41c  01 10 63 e0                                      rsb r1, r3, r1
005db420  c1 01 52 e1                                      cmp r2, r1, asr #3
005db424  0a 30 99 27                                      ldrhs r3, [sb, sl]
005db428  82 31 83 30                                      addlo r3, r3, r2, lsl #3
005db42c  00 30 93 e5                                      ldr r3, [r3]
005db430  00 00 53 e3                                      cmp r3, #0
005db434  04 30 8d e5                                      str r3, [sp, #4]
005db438  32 00 00 0a                                      beq #0x5db508
005db43c  00 20 93 e5                                      ldr r2, [r3]
005db440  07 00 a0 e1                                      mov r0, r7
005db444  01 20 82 e2                                      add r2, r2, #1
005db448  00 20 83 e5                                      str r2, [r3]
005db44c  04 60 9d e5                                      ldr r6, [sp, #4]
005db450  98 db f5 eb                                      bl #0x3522b8
005db454  00 00 56 e3                                      cmp r6, #0
005db458  04 80 86 15                                      strne r8, [r6, #4]
005db45c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005db460  00 00 52 e3                                      cmp r2, #0
005db464  18 00 00 0a                                      beq #0x5db4cc
005db468  02 50 a0 e1                                      mov r5, r2
005db46c  00 00 00 ea                                      b #0x5db474
005db470  03 50 a0 e1                                      mov r5, r3
005db474  08 30 95 e5                                      ldr r3, [r5, #8]
005db478  00 00 53 e3                                      cmp r3, #0
005db47c  fb ff ff 1a                                      bne #0x5db470
005db480  04 00 55 e1                                      cmp r5, r4
005db484  e1 ff ff 1a                                      bne #0x5db410
005db488  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
005db48c  00 00 50 e3                                      cmp r0, #0
005db490  00 00 00 0a                                      beq #0x5db498
005db494  07 cb f4 eb                                      bl #0x30e0b8
005db498  68 50 84 e2                                      add r5, r4, #0x68
005db49c  10 30 95 e5                                      ldr r3, [r5, #0x10]
005db4a0  00 00 53 e3                                      cmp r3, #0
005db4a4  1a 00 00 1a                                      bne #0x5db514
005db4a8  18 50 45 e2                                      sub r5, r5, #0x18
005db4ac  10 30 95 e5                                      ldr r3, [r5, #0x10]
005db4b0  00 00 53 e3                                      cmp r3, #0
005db4b4  21 00 00 1a                                      bne #0x5db540
005db4b8  04 00 a0 e1                                      mov r0, r4
005db4bc  7b f9 ff eb                                      bl #0x5d9ab0
005db4c0  04 00 a0 e1                                      mov r0, r4
005db4c4  08 d0 8d e2                                      add sp, sp, #8
005db4c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005db4cc  04 30 95 e5                                      ldr r3, [r5, #4]
005db4d0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005db4d4  05 00 51 e1                                      cmp r1, r5
005db4d8  05 00 00 1a                                      bne #0x5db4f4
005db4dc  03 50 a0 e1                                      mov r5, r3
005db4e0  04 30 93 e5                                      ldr r3, [r3, #4]
005db4e4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005db4e8  05 00 52 e1                                      cmp r2, r5
005db4ec  fa ff ff 0a                                      beq #0x5db4dc
005db4f0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005db4f4  03 00 52 e1                                      cmp r2, r3
005db4f8  03 50 a0 11                                      movne r5, r3
005db4fc  04 00 55 e1                                      cmp r5, r4
005db500  c2 ff ff 1a                                      bne #0x5db410
005db504  df ff ff ea                                      b #0x5db488
005db508  07 00 a0 e1                                      mov r0, r7
005db50c  69 db f5 eb                                      bl #0x3522b8
005db510  d1 ff ff ea                                      b #0x5db45c
005db514  05 00 a0 e1                                      mov r0, r5
005db518  04 10 95 e5                                      ldr r1, [r5, #4]
005db51c  d6 fd ff eb                                      bl #0x5dac7c
005db520  00 30 a0 e3                                      mov r3, #0
005db524  10 30 85 e5                                      str r3, [r5, #0x10]
005db528  28 00 85 e9                                      stmib r5, {r3, r5}
005db52c  0c 50 85 e5                                      str r5, [r5, #0xc]
005db530  18 50 45 e2                                      sub r5, r5, #0x18
005db534  10 30 95 e5                                      ldr r3, [r5, #0x10]
005db538  00 00 53 e3                                      cmp r3, #0
005db53c  dd ff ff 0a                                      beq #0x5db4b8
005db540  05 00 a0 e1                                      mov r0, r5
005db544  04 10 95 e5                                      ldr r1, [r5, #4]
005db548  cb fd ff eb                                      bl #0x5dac7c
005db54c  00 30 a0 e3                                      mov r3, #0
005db550  10 30 85 e5                                      str r3, [r5, #0x10]
005db554  28 00 85 e9                                      stmib r5, {r3, r5}
005db558  0c 50 85 e5                                      str r5, [r5, #0xc]
005db55c  d5 ff ff ea                                      b #0x5db4b8
; mapping-symbol data/literal pool
005db560  04 97 3b 00 dc 30 00 00                          .byte 0x04, 0x97, 0x3b, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x005dbb48, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZNK6glitch5video24CMaterialRendererManager14getTechniqueIDEPKc
; demangled: glitch::video::CMaterialRendererManager::getTechniqueID(char const*) const
; decoder-mode: arm
005dbb48  10 40 2d e9                                      push {r4, lr}
005dbb4c  90 00 90 e5                                      ldr r0, [r0, #0x90]
005dbb50  00 00 50 e3                                      cmp r0, #0
005dbb54  00 00 00 0a                                      beq #0x5dbb5c
005dbb58  d8 ff ff eb                                      bl #0x5dbac0
005dbb5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005dbb60, declared_size=164, range_size=164, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZNK6glitch5video24CMaterialRendererManager9getNameIDEPKci
; demangled: glitch::video::CMaterialRendererManager::getNameID(char const*, int) const
; decoder-mode: arm
005dbb60  30 40 2d e9                                      push {r4, r5, lr}
005dbb64  00 40 a0 e1                                      mov r4, r0
005dbb68  0c d0 4d e2                                      sub sp, sp, #0xc
005dbb6c  01 00 a0 e1                                      mov r0, r1
005dbb70  00 10 a0 e3                                      mov r1, #0
005dbb74  02 50 a0 e1                                      mov r5, r2
005dbb78  3d 25 03 eb                                      bl #0x6a5074
005dbb7c  00 00 50 e3                                      cmp r0, #0
005dbb80  04 00 8d e5                                      str r0, [sp, #4]
005dbb84  1c 00 00 0a                                      beq #0x5dbbfc
005dbb88  00 30 90 e5                                      ldr r3, [r0]
005dbb8c  01 30 83 e2                                      add r3, r3, #1
005dbb90  00 30 80 e5                                      str r3, [r0]
005dbb94  04 30 9d e5                                      ldr r3, [sp, #4]
005dbb98  00 00 53 e3                                      cmp r3, #0
005dbb9c  16 00 00 0a                                      beq #0x5dbbfc
005dbba0  18 30 a0 e3                                      mov r3, #0x18
005dbba4  93 05 05 e0                                      mul r5, r3, r5
005dbba8  04 10 8d e2                                      add r1, sp, #4
005dbbac  50 50 85 e2                                      add r5, r5, #0x50
005dbbb0  05 40 84 e0                                      add r4, r4, r5
005dbbb4  04 00 a0 e1                                      mov r0, r4
005dbbb8  af fb ff eb                                      bl #0x5daa7c
005dbbbc  04 00 50 e1                                      cmp r0, r4
005dbbc0  14 40 90 15                                      ldrne r4, [r0, #0x14]
005dbbc4  04 00 9d 05                                      ldreq r0, [sp, #4]
005dbbc8  04 00 9d 15                                      ldrne r0, [sp, #4]
005dbbcc  00 40 e0 03                                      mvneq r4, #0
005dbbd0  00 00 50 e3                                      cmp r0, #0
005dbbd4  05 00 00 0a                                      beq #0x5dbbf0
005dbbd8  00 30 90 e5                                      ldr r3, [r0]
005dbbdc  01 30 43 e2                                      sub r3, r3, #1
005dbbe0  00 00 53 e3                                      cmp r3, #0
005dbbe4  00 30 80 e5                                      str r3, [r0]
005dbbe8  00 00 00 1a                                      bne #0x5dbbf0
005dbbec  6a 24 03 eb                                      bl #0x6a4d9c
005dbbf0  04 00 a0 e1                                      mov r0, r4
005dbbf4  0c d0 8d e2                                      add sp, sp, #0xc
005dbbf8  30 80 bd e8                                      pop {r4, r5, pc}
005dbbfc  00 40 e0 e3                                      mvn r4, #0
005dbc00  fa ff ff ea                                      b #0x5dbbf0

; FUNCTION 0x005dbc04, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZNK6glitch5video24CMaterialRendererManager22getParameterIDInternalERKNS_4core13SSharedStringE
; demangled: glitch::video::CMaterialRendererManager::getParameterIDInternal(glitch::core::SSharedString const&) const
; decoder-mode: arm
005dbc04  00 30 91 e5                                      ldr r3, [r1]
005dbc08  10 40 2d e9                                      push {r4, lr}
005dbc0c  00 00 53 e3                                      cmp r3, #0
005dbc10  00 40 a0 e1                                      mov r4, r0
005dbc14  08 00 00 0a                                      beq #0x5dbc3c
005dbc18  90 00 90 e5                                      ldr r0, [r0, #0x90]
005dbc1c  34 00 80 e2                                      add r0, r0, #0x34
005dbc20  b9 fb ff eb                                      bl #0x5dab0c
005dbc24  90 30 94 e5                                      ldr r3, [r4, #0x90]
005dbc28  34 30 83 e2                                      add r3, r3, #0x34
005dbc2c  03 00 50 e1                                      cmp r0, r3
005dbc30  01 00 00 0a                                      beq #0x5dbc3c
005dbc34  14 00 80 e2                                      add r0, r0, #0x14
005dbc38  10 80 bd e8                                      pop {r4, pc}
005dbc3c  00 00 a0 e3                                      mov r0, #0
005dbc40  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005dc058, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZNK6glitch5video24CMaterialRendererManager19isCreatingTechniqueEPKc
; demangled: glitch::video::CMaterialRendererManager::isCreatingTechnique(char const*) const
; decoder-mode: arm
005dc058  10 40 2d e9                                      push {r4, lr}
005dc05c  90 30 90 e5                                      ldr r3, [r0, #0x90]
005dc060  00 00 53 e3                                      cmp r3, #0
005dc064  0b 00 00 0a                                      beq #0x5dc098
005dc068  04 40 93 e5                                      ldr r4, [r3, #4]
005dc06c  00 00 54 e3                                      cmp r4, #0
005dc070  01 00 00 0a                                      beq #0x5dc07c
005dc074  01 00 a0 e3                                      mov r0, #1
005dc078  10 80 bd e8                                      pop {r4, pc}
005dc07c  00 00 51 e3                                      cmp r1, #0
005dc080  04 00 00 0a                                      beq #0x5dc098
005dc084  01 00 a0 e1                                      mov r0, r1
005dc088  03 10 a0 e3                                      mov r1, #3
005dc08c  03 bb 00 eb                                      bl #0x60aca0
005dc090  04 00 a0 e1                                      mov r0, r4
005dc094  10 80 bd e8                                      pop {r4, pc}
005dc098  00 00 a0 e3                                      mov r0, #0
005dc09c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005dc71c, declared_size=176, range_size=176, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager25loadMaterialTechniqueMapsEPNS_2io9IReadFileEPNS_7collada15CColladaFactoryE
; demangled: glitch::video::CMaterialRendererManager::loadMaterialTechniqueMaps(glitch::io::IReadFile*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
005dc71c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005dc720  02 70 a0 e1                                      mov r7, r2
005dc724  01 80 a0 e1                                      mov r8, r1
005dc728  00 a0 a0 e1                                      mov sl, r0
005dc72c  c8 5e fd eb                                      bl #0x534254
005dc730  00 60 a0 e1                                      mov r6, r0
005dc734  01 00 a0 e3                                      mov r0, #1
005dc738  ca 5e fd eb                                      bl #0x534268
005dc73c  38 00 a0 e3                                      mov r0, #0x38
005dc740  ab 5f fd eb                                      bl #0x5345f4
005dc744  78 50 9f e5                                      ldr r5, [pc, #0x78]
005dc748  0a 10 a0 e1                                      mov r1, sl
005dc74c  00 40 a0 e1                                      mov r4, r0
005dc750  65 0c 00 eb                                      bl #0x5df8ec
005dc754  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
005dc758  05 50 8f e0                                      add r5, pc, r5
005dc75c  04 30 a0 e1                                      mov r3, r4
005dc760  01 10 95 e7                                      ldr r1, [r5, r1]
005dc764  00 20 a0 e3                                      mov r2, #0
005dc768  20 20 84 e5                                      str r2, [r4, #0x20]
005dc76c  08 10 81 e2                                      add r1, r1, #8
005dc770  00 10 84 e5                                      str r1, [r4]
005dc774  1c 20 e3 e5                                      strb r2, [r3, #0x1c]!
005dc778  08 10 a0 e1                                      mov r1, r8
005dc77c  34 30 84 e5                                      str r3, [r4, #0x34]
005dc780  2c 20 84 e5                                      str r2, [r4, #0x2c]
005dc784  24 30 84 e5                                      str r3, [r4, #0x24]
005dc788  07 20 a0 e1                                      mov r2, r7
005dc78c  28 30 84 e5                                      str r3, [r4, #0x28]
005dc790  04 00 a0 e1                                      mov r0, r4
005dc794  37 0f 00 eb                                      bl #0x5e0478
005dc798  00 30 94 e5                                      ldr r3, [r4]
005dc79c  00 70 a0 e1                                      mov r7, r0
005dc7a0  04 00 a0 e1                                      mov r0, r4
005dc7a4  0f e0 a0 e1                                      mov lr, pc
005dc7a8  00 f0 93 e5                                      ldr pc, [r3]
005dc7ac  04 00 a0 e1                                      mov r0, r4
005dc7b0  b4 5f fd eb                                      bl #0x534688
005dc7b4  06 00 a0 e1                                      mov r0, r6
005dc7b8  aa 5e fd eb                                      bl #0x534268
005dc7bc  07 00 a0 e1                                      mov r0, r7
005dc7c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005dc7c4  38 83 3b 00 d0 42 00 00                          .byte 0x38, 0x83, 0x3b, 0x00, 0xd0, 0x42, 0x00, 0x00

; FUNCTION 0x005dc7cc, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager25loadMaterialTechniqueMapsEPKcPNS_7collada15CColladaFactoryE
; demangled: glitch::video::CMaterialRendererManager::loadMaterialTechniqueMaps(char const*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
005dc7cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005dc7d0  28 30 90 e5                                      ldr r3, [r0, #0x28]
005dc7d4  00 40 a0 e1                                      mov r4, r0
005dc7d8  02 60 a0 e1                                      mov r6, r2
005dc7dc  d4 30 93 e5                                      ldr r3, [r3, #0xd4]
005dc7e0  34 30 93 e5                                      ldr r3, [r3, #0x34]
005dc7e4  03 00 a0 e1                                      mov r0, r3
005dc7e8  00 30 93 e5                                      ldr r3, [r3]
005dc7ec  0f e0 a0 e1                                      mov lr, pc
005dc7f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005dc7f4  00 50 50 e2                                      subs r5, r0, #0
005dc7f8  05 40 a0 01                                      moveq r4, r5
005dc7fc  06 00 00 0a                                      beq #0x5dc81c
005dc800  04 00 a0 e1                                      mov r0, r4
005dc804  06 20 a0 e1                                      mov r2, r6
005dc808  05 10 a0 e1                                      mov r1, r5
005dc80c  c2 ff ff eb                                      bl #0x5dc71c
005dc810  00 40 a0 e1                                      mov r4, r0
005dc814  05 00 a0 e1                                      mov r0, r5
005dc818  59 03 f5 eb                                      bl #0x31d584
005dc81c  04 00 a0 e1                                      mov r0, r4
005dc820  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005dcd64, declared_size=112, range_size=112, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager20addParameterInternalERKNS_4core13SSharedStringENS0_23E_SHADER_PARAMETER_TYPEENS0_29E_SHADER_PARAMETER_VALUE_TYPEEjb
; demangled: glitch::video::CMaterialRendererManager::addParameterInternal(glitch::core::SSharedString const&, glitch::video::E_SHADER_PARAMETER_TYPE, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, unsigned int, bool)
; decoder-mode: arm
005dcd64  04 e0 2d e5                                      str lr, [sp, #-4]!
005dcd68  90 00 90 e5                                      ldr r0, [r0, #0x90]
005dcd6c  0c d0 4d e2                                      sub sp, sp, #0xc
005dcd70  14 c0 dd e5                                      ldrb ip, [sp, #0x14]
005dcd74  00 00 50 e3                                      cmp r0, #0
005dcd78  0b 00 00 0a                                      beq #0x5dcdac
005dcd7c  ff 00 53 e3                                      cmp r3, #0xff
005dcd80  0d 00 00 0a                                      beq #0x5dcdbc
005dcd84  0c e0 43 e2                                      sub lr, r3, #0xc
005dcd88  03 00 5e e3                                      cmp lr, #3
005dcd8c  08 00 00 8a                                      bhi #0x5dcdb4
005dcd90  02 00 52 e3                                      cmp r2, #2
005dcd94  08 00 00 0a                                      beq #0x5dcdbc
005dcd98  30 00 9f e5                                      ldr r0, [pc, #0x30]
005dcd9c  03 10 a0 e3                                      mov r1, #3
005dcda0  00 00 8f e0                                      add r0, pc, r0
005dcda4  bd b7 00 eb                                      bl #0x60aca0
005dcda8  00 00 a0 e3                                      mov r0, #0
005dcdac  0c d0 8d e2                                      add sp, sp, #0xc
005dcdb0  00 80 bd e8                                      ldm sp!, {pc}
005dcdb4  02 00 52 e3                                      cmp r2, #2
005dcdb8  f6 ff ff 0a                                      beq #0x5dcd98
005dcdbc  10 e0 9d e5                                      ldr lr, [sp, #0x10]
005dcdc0  04 c0 8d e5                                      str ip, [sp, #4]
005dcdc4  00 e0 8d e5                                      str lr, [sp]
005dcdc8  1c ff ff eb                                      bl #0x5dca40
005dcdcc  f6 ff ff ea                                      b #0x5dcdac
; mapping-symbol data/literal pool
005dcdd0  10 41 30 00                                      .byte 0x10, 0x41, 0x30, 0x00

; FUNCTION 0x005dcdd4, declared_size=344, range_size=344, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager29createPinkWireFrameRenderPassEv
; demangled: glitch::video::CMaterialRendererManager::createPinkWireFrameRenderPass()
; decoder-mode: arm
005dcdd4  70 40 2d e9                                      push {r4, r5, r6, lr}
005dcdd8  88 d0 4d e2                                      sub sp, sp, #0x88
005dcddc  00 10 a0 e1                                      mov r1, r0
005dcde0  00 40 a0 e1                                      mov r4, r0
005dcde4  0c 60 8d e2                                      add r6, sp, #0xc
005dcde8  80 00 8d e2                                      add r0, sp, #0x80
005dcdec  79 f3 ff eb                                      bl #0x5d9bd8
005dcdf0  06 00 a0 e1                                      mov r0, r6
005dcdf4  e0 ea ff eb                                      bl #0x5d797c
005dcdf8  18 20 9d e5                                      ldr r2, [sp, #0x18]
005dcdfc  80 30 9d e5                                      ldr r3, [sp, #0x80]
005dce00  58 50 8d e2                                      add r5, sp, #0x58
005dce04  1e 29 c2 e3                                      bic r2, r2, #0x78000
005dce08  0a 29 82 e3                                      orr r2, r2, #0x28000
005dce0c  00 00 53 e3                                      cmp r3, #0
005dce10  18 20 8d e5                                      str r2, [sp, #0x18]
005dce14  7c 30 8d e5                                      str r3, [sp, #0x7c]
005dce18  04 20 93 15                                      ldrne r2, [r3, #4]
005dce1c  06 10 a0 e1                                      mov r1, r6
005dce20  05 00 a0 e1                                      mov r0, r5
005dce24  01 20 82 12                                      addne r2, r2, #1
005dce28  04 20 83 15                                      strne r2, [r3, #4]
005dce2c  f7 ea ff eb                                      bl #0x5d7a10
005dce30  04 00 a0 e1                                      mov r0, r4
005dce34  05 20 a0 e1                                      mov r2, r5
005dce38  7c 10 8d e2                                      add r1, sp, #0x7c
005dce3c  84 30 8d e2                                      add r3, sp, #0x84
005dce40  39 00 00 eb                                      bl #0x5dcf2c
005dce44  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
005dce48  00 00 50 e3                                      cmp r0, #0
005dce4c  00 00 00 0a                                      beq #0x5dce54
005dce50  cb 01 f5 eb                                      bl #0x31d584
005dce54  00 20 a0 e3                                      mov r2, #0
005dce58  02 30 a0 e1                                      mov r3, r2
005dce5c  80 00 9d e5                                      ldr r0, [sp, #0x80]
005dce60  06 10 a0 e3                                      mov r1, #6
005dce64  9e 1e 00 eb                                      bl #0x5e48e4
005dce68  ff 3f 0f e3                                      movw r3, #0xffff
005dce6c  03 00 50 e1                                      cmp r0, r3
005dce70  00 50 a0 e1                                      mov r5, r0
005dce74  22 00 00 0a                                      beq #0x5dcf04
005dce78  90 00 94 e5                                      ldr r0, [r4, #0x90]
005dce7c  00 00 50 e3                                      cmp r0, #0
005dce80  00 60 a0 01                                      moveq r6, r0
005dce84  1b 00 00 0a                                      beq #0x5dcef8
005dce88  98 00 9f e5                                      ldr r0, [pc, #0x98]
005dce8c  01 10 a0 e3                                      mov r1, #1
005dce90  00 00 8f e0                                      add r0, pc, r0
005dce94  76 20 03 eb                                      bl #0x6a5074
005dce98  00 00 50 e3                                      cmp r0, #0
005dce9c  78 00 8d e5                                      str r0, [sp, #0x78]
005dcea0  00 30 90 15                                      ldrne r3, [r0]
005dcea4  ff 20 a0 e3                                      mov r2, #0xff
005dcea8  00 c0 e0 e3                                      mvn ip, #0
005dceac  01 30 83 12                                      addne r3, r3, #1
005dceb0  00 30 80 15                                      strne r3, [r0]
005dceb4  78 10 8d e2                                      add r1, sp, #0x78
005dceb8  00 c0 8d e5                                      str ip, [sp]
005dcebc  04 00 a0 e1                                      mov r0, r4
005dcec0  01 c0 a0 e3                                      mov ip, #1
005dcec4  02 30 a0 e1                                      mov r3, r2
005dcec8  04 c0 8d e5                                      str ip, [sp, #4]
005dcecc  a4 ff ff eb                                      bl #0x5dcd64
005dced0  00 60 a0 e1                                      mov r6, r0
005dced4  78 00 9d e5                                      ldr r0, [sp, #0x78]
005dced8  00 00 50 e3                                      cmp r0, #0
005dcedc  04 00 00 0a                                      beq #0x5dcef4
005dcee0  00 30 90 e5                                      ldr r3, [r0]
005dcee4  01 30 43 e2                                      sub r3, r3, #1
005dcee8  00 00 53 e3                                      cmp r3, #0
005dceec  00 30 80 e5                                      str r3, [r0]
005dcef0  09 00 00 0a                                      beq #0x5dcf1c
005dcef4  90 00 94 e5                                      ldr r0, [r4, #0x90]
005dcef8  06 10 a0 e1                                      mov r1, r6
005dcefc  05 20 a0 e1                                      mov r2, r5
005dcf00  20 f2 ff eb                                      bl #0x5d9788
005dcf04  80 00 9d e5                                      ldr r0, [sp, #0x80]
005dcf08  00 00 50 e3                                      cmp r0, #0
005dcf0c  00 00 00 0a                                      beq #0x5dcf14
005dcf10  9b 01 f5 eb                                      bl #0x31d584
005dcf14  88 d0 8d e2                                      add sp, sp, #0x88
005dcf18  70 80 bd e8                                      pop {r4, r5, r6, pc}
005dcf1c  9e 1f 03 eb                                      bl #0x6a4d9c
005dcf20  90 00 94 e5                                      ldr r0, [r4, #0x90]
005dcf24  f3 ff ff ea                                      b #0x5dcef8
; mapping-symbol data/literal pool
005dcf28  50 40 30 00                                      .byte 0x50, 0x40, 0x30, 0x00

; FUNCTION 0x005dcf2c, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager13addRenderPassERKN5boost13intrusive_ptrIKNS0_7IShaderEEERKNS0_6detail10renderpass12SRenderStateERKNS9_8material12SRenderStateE
; demangled: glitch::video::CMaterialRendererManager::addRenderPass(boost::intrusive_ptr<glitch::video::IShader const> const&, glitch::video::detail::renderpass::SRenderState const&, glitch::video::detail::material::SRenderState const&)
; decoder-mode: arm
005dcf2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005dcf30  01 40 a0 e1                                      mov r4, r1
005dcf34  50 10 9f e5                                      ldr r1, [pc, #0x50]
005dcf38  02 60 a0 e1                                      mov r6, r2
005dcf3c  03 50 a0 e1                                      mov r5, r3
005dcf40  01 10 8f e0                                      add r1, pc, r1
005dcf44  00 70 a0 e1                                      mov r7, r0
005dcf48  42 fc ff eb                                      bl #0x5dc058
005dcf4c  00 00 50 e3                                      cmp r0, #0
005dcf50  08 00 00 0a                                      beq #0x5dcf78
005dcf54  00 80 94 e5                                      ldr r8, [r4]
005dcf58  00 00 58 e3                                      cmp r8, #0
005dcf5c  06 00 00 0a                                      beq #0x5dcf7c
005dcf60  90 00 97 e5                                      ldr r0, [r7, #0x90]
005dcf64  04 10 a0 e1                                      mov r1, r4
005dcf68  06 20 a0 e1                                      mov r2, r6
005dcf6c  05 30 a0 e1                                      mov r3, r5
005dcf70  1c f1 ff eb                                      bl #0x5d93e8
005dcf74  01 00 a0 e3                                      mov r0, #1
005dcf78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005dcf7c  07 00 a0 e1                                      mov r0, r7
005dcf80  93 ff ff eb                                      bl #0x5dcdd4
005dcf84  08 00 a0 e1                                      mov r0, r8
005dcf88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005dcf8c  b8 3f 30 00                                      .byte 0xb8, 0x3f, 0x30, 0x00

; FUNCTION 0x005dcf90, declared_size=248, range_size=248, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager13addRenderPassEtRKNS0_6detail10renderpass12SRenderStateERKNS2_8material12SRenderStateE
; demangled: glitch::video::CMaterialRendererManager::addRenderPass(unsigned short, glitch::video::detail::renderpass::SRenderState const&, glitch::video::detail::material::SRenderState const&)
; decoder-mode: arm
005dcf90  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005dcf94  01 40 a0 e1                                      mov r4, r1
005dcf98  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
005dcf9c  0c d0 4d e2                                      sub sp, sp, #0xc
005dcfa0  03 50 a0 e1                                      mov r5, r3
005dcfa4  01 10 8f e0                                      add r1, pc, r1
005dcfa8  02 60 a0 e1                                      mov r6, r2
005dcfac  00 70 a0 e1                                      mov r7, r0
005dcfb0  28 fc ff eb                                      bl #0x5dc058
005dcfb4  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
005dcfb8  00 00 50 e3                                      cmp r0, #0
005dcfbc  00 50 a0 01                                      moveq r5, r0
005dcfc0  03 30 8f e0                                      add r3, pc, r3
005dcfc4  1f 00 00 0a                                      beq #0x5dd048
005dcfc8  28 20 97 e5                                      ldr r2, [r7, #0x28]
005dcfcc  d8 20 92 e5                                      ldr r2, [r2, #0xd8]
005dcfd0  20 10 92 e5                                      ldr r1, [r2, #0x20]
005dcfd4  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
005dcfd8  01 10 62 e0                                      rsb r1, r2, r1
005dcfdc  c1 01 54 e1                                      cmp r4, r1, asr #3
005dcfe0  84 41 82 30                                      addlo r4, r2, r4, lsl #3
005dcfe4  1a 00 00 2a                                      bhs #0x5dd054
005dcfe8  00 40 94 e5                                      ldr r4, [r4]
005dcfec  00 00 54 e3                                      cmp r4, #0
005dcff0  1a 00 00 0a                                      beq #0x5dd060
005dcff4  04 30 94 e5                                      ldr r3, [r4, #4]
005dcff8  01 30 83 e2                                      add r3, r3, #1
005dcffc  04 30 84 e5                                      str r3, [r4, #4]
005dd000  04 40 8d e5                                      str r4, [sp, #4]
005dd004  04 30 94 e5                                      ldr r3, [r4, #4]
005dd008  01 30 83 e2                                      add r3, r3, #1
005dd00c  04 30 84 e5                                      str r3, [r4, #4]
005dd010  05 30 a0 e1                                      mov r3, r5
005dd014  07 00 a0 e1                                      mov r0, r7
005dd018  06 20 a0 e1                                      mov r2, r6
005dd01c  04 10 8d e2                                      add r1, sp, #4
005dd020  c1 ff ff eb                                      bl #0x5dcf2c
005dd024  00 50 a0 e1                                      mov r5, r0
005dd028  04 00 9d e5                                      ldr r0, [sp, #4]
005dd02c  00 00 50 e3                                      cmp r0, #0
005dd030  00 00 00 0a                                      beq #0x5dd038
005dd034  52 01 f5 eb                                      bl #0x31d584
005dd038  00 00 54 e3                                      cmp r4, #0
005dd03c  01 00 00 0a                                      beq #0x5dd048
005dd040  04 00 a0 e1                                      mov r0, r4
005dd044  4e 01 f5 eb                                      bl #0x31d584
005dd048  05 00 a0 e1                                      mov r0, r5
005dd04c  0c d0 8d e2                                      add sp, sp, #0xc
005dd050  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005dd054  24 20 9f e5                                      ldr r2, [pc, #0x24]
005dd058  02 40 93 e7                                      ldr r4, [r3, r2]
005dd05c  e1 ff ff ea                                      b #0x5dcfe8
005dd060  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
005dd064  03 10 a0 e3                                      mov r1, #3
005dd068  00 00 8f e0                                      add r0, pc, r0
005dd06c  0b b7 00 eb                                      bl #0x60aca0
005dd070  04 40 8d e5                                      str r4, [sp, #4]
005dd074  e5 ff ff ea                                      b #0x5dd010
; mapping-symbol data/literal pool
005dd078  54 3f 30 00 d0 7a 3b 00 fc 49 00 00 c8 3e 30 00  .byte 0x54, 0x3f, 0x30, 0x00, 0xd0, 0x7a, 0x3b, 0x00, 0xfc, 0x49, 0x00, 0x00, 0xc8, 0x3e, 0x30, 0x00

; FUNCTION 0x005dd088, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager13addRenderPassEPKcRKNS0_6detail10renderpass12SRenderStateERKNS4_8material12SRenderStateE
; demangled: glitch::video::CMaterialRendererManager::addRenderPass(char const*, glitch::video::detail::renderpass::SRenderState const&, glitch::video::detail::material::SRenderState const&)
; decoder-mode: arm
005dd088  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005dd08c  01 40 a0 e1                                      mov r4, r1
005dd090  48 10 9f e5                                      ldr r1, [pc, #0x48]
005dd094  02 60 a0 e1                                      mov r6, r2
005dd098  03 50 a0 e1                                      mov r5, r3
005dd09c  01 10 8f e0                                      add r1, pc, r1
005dd0a0  00 70 a0 e1                                      mov r7, r0
005dd0a4  eb fb ff eb                                      bl #0x5dc058
005dd0a8  00 00 50 e3                                      cmp r0, #0
005dd0ac  00 00 00 1a                                      bne #0x5dd0b4
005dd0b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005dd0b4  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd0b8  04 10 a0 e1                                      mov r1, r4
005dd0bc  d8 00 93 e5                                      ldr r0, [r3, #0xd8]
005dd0c0  04 00 80 e2                                      add r0, r0, #4
005dd0c4  41 ed ff eb                                      bl #0x5d85d0
005dd0c8  06 20 a0 e1                                      mov r2, r6
005dd0cc  00 10 a0 e1                                      mov r1, r0
005dd0d0  05 30 a0 e1                                      mov r3, r5
005dd0d4  07 00 a0 e1                                      mov r0, r7
005dd0d8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
005dd0dc  ab ff ff ea                                      b #0x5dcf90
; mapping-symbol data/literal pool
005dd0e0  5c 3e 30 00                                      .byte 0x5c, 0x3e, 0x30, 0x00

; FUNCTION 0x005dd0e4, declared_size=364, range_size=364, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager19getMaterialInstanceEtb
; demangled: glitch::video::CMaterialRendererManager::getMaterialInstance(unsigned short, bool)
; decoder-mode: arm
005dd0e4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005dd0e8  58 51 9f e5                                      ldr r5, [pc, #0x158]
005dd0ec  02 70 a0 e1                                      mov r7, r2
005dd0f0  ff 2f 0f e3                                      movw r2, #0xffff
005dd0f4  02 00 57 e1                                      cmp r7, r2
005dd0f8  00 20 a0 e3                                      mov r2, #0
005dd0fc  05 50 8f e0                                      add r5, pc, r5
005dd100  18 d0 4d e2                                      sub sp, sp, #0x18
005dd104  00 40 a0 e1                                      mov r4, r0
005dd108  00 20 80 e5                                      str r2, [r0]
005dd10c  01 80 a0 e1                                      mov r8, r1
005dd110  03 a0 a0 e1                                      mov sl, r3
005dd114  14 00 00 0a                                      beq #0x5dd16c
005dd118  18 30 91 e5                                      ldr r3, [r1, #0x18]
005dd11c  87 91 a0 e1                                      lsl sb, r7, #3
005dd120  09 30 83 e0                                      add r3, r3, sb
005dd124  04 60 93 e5                                      ldr r6, [r3, #4]
005dd128  18 30 96 e5                                      ldr r3, [r6, #0x18]
005dd12c  02 00 53 e1                                      cmp r3, r2
005dd130  0c 30 8d e5                                      str r3, [sp, #0xc]
005dd134  00 20 93 15                                      ldrne r2, [r3]
005dd138  01 20 82 12                                      addne r2, r2, #1
005dd13c  00 20 83 15                                      strne r2, [r3]
005dd140  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
005dd144  00 20 90 e5                                      ldr r2, [r0]
005dd148  18 00 8d e2                                      add r0, sp, #0x18
005dd14c  00 30 84 e5                                      str r3, [r4]
005dd150  0c 20 20 e5                                      str r2, [r0, #-0xc]!
005dd154  a3 ce f4 eb                                      bl #0x310be8
005dd158  00 00 94 e5                                      ldr r0, [r4]
005dd15c  00 00 50 e3                                      cmp r0, #0
005dd160  07 00 00 0a                                      beq #0x5dd184
005dd164  00 00 5a e3                                      cmp sl, #0
005dd168  02 00 00 1a                                      bne #0x5dd178
005dd16c  04 00 a0 e1                                      mov r0, r4
005dd170  18 d0 8d e2                                      add sp, sp, #0x18
005dd174  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005dd178  00 10 a0 e3                                      mov r1, #0
005dd17c  ae ba ff eb                                      bl #0x5cbc3c
005dd180  f9 ff ff ea                                      b #0x5dd16c
005dd184  18 30 98 e5                                      ldr r3, [r8, #0x18]
005dd188  1c 20 98 e5                                      ldr r2, [r8, #0x1c]
005dd18c  02 20 63 e0                                      rsb r2, r3, r2
005dd190  c2 01 57 e1                                      cmp r7, r2, asr #3
005dd194  09 30 83 30                                      addlo r3, r3, sb
005dd198  ac 30 9f 25                                      ldrhs r3, [pc, #0xac]
005dd19c  03 30 95 27                                      ldrhs r3, [r5, r3]
005dd1a0  00 30 93 e5                                      ldr r3, [r3]
005dd1a4  10 70 8d e2                                      add r7, sp, #0x10
005dd1a8  14 50 8d e2                                      add r5, sp, #0x14
005dd1ac  00 00 53 e3                                      cmp r3, #0
005dd1b0  14 30 8d e5                                      str r3, [sp, #0x14]
005dd1b4  00 20 93 15                                      ldrne r2, [r3]
005dd1b8  05 10 a0 e1                                      mov r1, r5
005dd1bc  07 00 a0 e1                                      mov r0, r7
005dd1c0  01 20 82 12                                      addne r2, r2, #1
005dd1c4  00 20 83 15                                      strne r2, [r3]
005dd1c8  00 20 a0 e3                                      mov r2, #0
005dd1cc  02 30 a0 e1                                      mov r3, r2
005dd1d0  b2 bb ff eb                                      bl #0x5cc0a0
005dd1d4  10 30 9d e5                                      ldr r3, [sp, #0x10]
005dd1d8  18 00 8d e2                                      add r0, sp, #0x18
005dd1dc  08 30 8d e5                                      str r3, [sp, #8]
005dd1e0  00 00 53 e3                                      cmp r3, #0
005dd1e4  00 20 93 15                                      ldrne r2, [r3]
005dd1e8  01 20 82 12                                      addne r2, r2, #1
005dd1ec  00 20 83 15                                      strne r2, [r3]
005dd1f0  00 20 94 e5                                      ldr r2, [r4]
005dd1f4  08 30 9d 15                                      ldrne r3, [sp, #8]
005dd1f8  00 30 84 e5                                      str r3, [r4]
005dd1fc  10 20 20 e5                                      str r2, [r0, #-0x10]!
005dd200  78 ce f4 eb                                      bl #0x310be8
005dd204  07 00 a0 e1                                      mov r0, r7
005dd208  76 ce f4 eb                                      bl #0x310be8
005dd20c  05 00 a0 e1                                      mov r0, r5
005dd210  28 d4 f5 eb                                      bl #0x3522b8
005dd214  00 30 94 e5                                      ldr r3, [r4]
005dd218  18 00 8d e2                                      add r0, sp, #0x18
005dd21c  04 30 8d e5                                      str r3, [sp, #4]
005dd220  00 00 53 e3                                      cmp r3, #0
005dd224  00 20 93 15                                      ldrne r2, [r3]
005dd228  01 20 82 12                                      addne r2, r2, #1
005dd22c  00 20 83 15                                      strne r2, [r3]
005dd230  04 30 9d 15                                      ldrne r3, [sp, #4]
005dd234  18 20 96 e5                                      ldr r2, [r6, #0x18]
005dd238  14 20 20 e5                                      str r2, [r0, #-0x14]!
005dd23c  18 30 86 e5                                      str r3, [r6, #0x18]
005dd240  68 ce f4 eb                                      bl #0x310be8
005dd244  c8 ff ff ea                                      b #0x5dd16c
; mapping-symbol data/literal pool
005dd248  94 79 3b 00 dc 30 00 00                          .byte 0x94, 0x79, 0x3b, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x005dd250, declared_size=1044, range_size=1044, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager23autoAddAndBindParameterERNS0_11SRenderPassEtNS0_14E_SHADER_STAGEEtt
; demangled: glitch::video::CMaterialRendererManager::autoAddAndBindParameter(glitch::video::SRenderPass&, unsigned short, glitch::video::E_SHADER_STAGE, unsigned short, unsigned short)
; decoder-mode: arm
005dd250  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005dd254  ec 43 9f e5                                      ldr r4, [pc, #0x3ec]
005dd258  ec 83 9f e5                                      ldr r8, [pc, #0x3ec]
005dd25c  01 90 a0 e1                                      mov sb, r1
005dd260  04 40 8f e0                                      add r4, pc, r4
005dd264  08 10 94 e7                                      ldr r1, [r4, r8]
005dd268  20 c0 99 e5                                      ldr ip, [sb, #0x20]
005dd26c  4c d0 4d e2                                      sub sp, sp, #0x4c
005dd270  00 10 91 e5                                      ldr r1, [r1]
005dd274  03 a0 a0 e1                                      mov sl, r3
005dd278  05 30 83 e2                                      add r3, r3, #5
005dd27c  44 10 8d e5                                      str r1, [sp, #0x44]
005dd280  83 b1 9c e7                                      ldr fp, [ip, r3, lsl #3]
005dd284  02 60 a0 e1                                      mov r6, r2
005dd288  b0 27 dd e1                                      ldrh r2, [sp, #0x70]
005dd28c  06 12 8b e0                                      add r1, fp, r6, lsl #4
005dd290  00 70 a0 e1                                      mov r7, r0
005dd294  18 20 8d e5                                      str r2, [sp, #0x18]
005dd298  b4 50 d1 e1                                      ldrh r5, [r1, #4]
005dd29c  b4 37 dd e1                                      ldrh r3, [sp, #0x74]
005dd2a0  12 00 55 e3                                      cmp r5, #0x12
005dd2a4  01 00 00 da                                      ble #0x5dd2b0
005dd2a8  1b 00 55 e3                                      cmp r5, #0x1b
005dd2ac  30 00 00 da                                      ble #0x5dd374
005dd2b0  12 00 55 e3                                      cmp r5, #0x12
005dd2b4  2e 00 00 0a                                      beq #0x5dd374
005dd2b8  1c 00 55 e3                                      cmp r5, #0x1c
005dd2bc  0c 00 00 ca                                      bgt #0x5dd2f4
005dd2c0  1c 00 55 e3                                      cmp r5, #0x1c
005dd2c4  9f 00 00 0a                                      beq #0x5dd548
005dd2c8  12 50 45 e2                                      sub r5, r5, #0x12
005dd2cc  0e 00 55 e3                                      cmp r5, #0xe
005dd2d0  90 00 00 8a                                      bhi #0x5dd518
005dd2d4  08 30 94 e7                                      ldr r3, [r4, r8]
005dd2d8  44 20 9d e5                                      ldr r2, [sp, #0x44]
005dd2dc  18 00 9d e5                                      ldr r0, [sp, #0x18]
005dd2e0  00 30 93 e5                                      ldr r3, [r3]
005dd2e4  03 00 52 e1                                      cmp r2, r3
005dd2e8  d5 00 00 1a                                      bne #0x5dd644
005dd2ec  4c d0 8d e2                                      add sp, sp, #0x4c
005dd2f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005dd2f4  1f 00 55 e3                                      cmp r5, #0x1f
005dd2f8  f0 ff ff ca                                      bgt #0x5dd2c0
005dd2fc  1e 00 55 e3                                      cmp r5, #0x1e
005dd300  07 20 d1 e5                                      ldrb r2, [r1, #7]
005dd304  ba 00 00 0a                                      beq #0x5dd5f4
005dd308  1f 00 55 e3                                      cmp r5, #0x1f
005dd30c  b4 00 00 0a                                      beq #0x5dd5e4
005dd310  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd314  82 20 83 e0                                      add r2, r3, r2, lsl #1
005dd318  ba 2f d2 e1                                      ldrh r2, [r2, #0xfa]
005dd31c  01 20 82 e2                                      add r2, r2, #1
005dd320  72 20 ff e6                                      uxth r2, r2
005dd324  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
005dd328  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
005dd32c  18 30 93 e5                                      ldr r3, [r3, #0x18]
005dd330  01 10 63 e0                                      rsb r1, r3, r1
005dd334  41 11 a0 e1                                      asr r1, r1, #2
005dd338  81 00 81 e0                                      add r0, r1, r1, lsl #1
005dd33c  00 02 80 e0                                      add r0, r0, r0, lsl #4
005dd340  00 04 80 e0                                      add r0, r0, r0, lsl #8
005dd344  00 08 80 e0                                      add r0, r0, r0, lsl #16
005dd348  00 11 81 e0                                      add r1, r1, r0, lsl #2
005dd34c  02 00 51 e1                                      cmp r1, r2
005dd350  8b 00 00 9a                                      bls #0x5dd584
005dd354  14 10 a0 e3                                      mov r1, #0x14
005dd358  91 32 23 e0                                      mla r3, r1, r2, r3
005dd35c  00 10 93 e5                                      ldr r1, [r3]
005dd360  00 00 51 e3                                      cmp r1, #0
005dd364  00 30 a0 03                                      moveq r3, #0
005dd368  03 10 a0 e1                                      mov r1, r3
005dd36c  b4 50 d3 e1                                      ldrh r5, [r3, #4]
005dd370  1b 00 00 ea                                      b #0x5dd3e4
005dd374  18 20 9d e5                                      ldr r2, [sp, #0x18]
005dd378  03 00 52 e1                                      cmp r2, r3
005dd37c  20 00 00 2a                                      bhs #0x5dd404
005dd380  06 12 9b e7                                      ldr r1, [fp, r6, lsl #4]
005dd384  20 30 8d e2                                      add r3, sp, #0x20
005dd388  03 00 a0 e1                                      mov r0, r3
005dd38c  00 00 51 e3                                      cmp r1, #0
005dd390  04 10 81 12                                      addne r1, r1, #4
005dd394  1c 30 8d e5                                      str r3, [sp, #0x1c]
005dd398  75 29 00 eb                                      bl #0x5e7974
005dd39c  20 30 9d e5                                      ldr r3, [sp, #0x20]
005dd3a0  00 00 53 e3                                      cmp r3, #0
005dd3a4  79 00 00 0a                                      beq #0x5dd590
005dd3a8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005dd3ac  07 00 a0 e1                                      mov r0, r7
005dd3b0  13 fa ff eb                                      bl #0x5dbc04
005dd3b4  00 c0 50 e2                                      subs ip, r0, #0
005dd3b8  0c 10 a0 11                                      movne r1, ip
005dd3bc  92 00 00 0a                                      beq #0x5dd60c
005dd3c0  20 00 9d e5                                      ldr r0, [sp, #0x20]
005dd3c4  00 00 50 e3                                      cmp r0, #0
005dd3c8  04 00 00 0a                                      beq #0x5dd3e0
005dd3cc  00 30 90 e5                                      ldr r3, [r0]
005dd3d0  01 30 43 e2                                      sub r3, r3, #1
005dd3d4  00 00 53 e3                                      cmp r3, #0
005dd3d8  00 30 80 e5                                      str r3, [r0]
005dd3dc  48 00 00 0a                                      beq #0x5dd504
005dd3e0  ff 2f 0f e3                                      movw r2, #0xffff
005dd3e4  00 00 51 e3                                      cmp r1, #0
005dd3e8  b9 ff ff 0a                                      beq #0x5dd2d4
005dd3ec  07 00 a0 e1                                      mov r0, r7
005dd3f0  05 30 a0 e1                                      mov r3, r5
005dd3f4  00 90 8d e5                                      str sb, [sp]
005dd3f8  40 04 8d e9                                      stmib sp, {r6, sl}
005dd3fc  57 f3 ff eb                                      bl #0x5da160
005dd400  b3 ff ff ea                                      b #0x5dd2d4
005dd404  07 10 d1 e5                                      ldrb r1, [r1, #7]
005dd408  3d 20 dc e5                                      ldrb r2, [ip, #0x3d]
005dd40c  01 20 62 e0                                      rsb r2, r2, r1
005dd410  72 20 ef e6                                      uxtb r2, r2
005dd414  02 00 53 e1                                      cmp r3, r2
005dd418  30 00 00 8a                                      bhi #0x5dd4e0
005dd41c  28 10 97 e5                                      ldr r1, [r7, #0x28]
005dd420  02 30 63 e0                                      rsb r3, r3, r2
005dd424  73 30 ef e6                                      uxtb r3, r3
005dd428  bc 23 d1 e1                                      ldrh r2, [r1, #0x3c]
005dd42c  03 00 52 e1                                      cmp r2, r3
005dd430  0a 00 00 2a                                      bhs #0x5dd460
005dd434  06 02 9b e7                                      ldr r0, [fp, r6, lsl #4]
005dd438  10 12 9f e5                                      ldr r1, [pc, #0x210]
005dd43c  02 20 a0 e3                                      mov r2, #2
005dd440  00 00 50 e3                                      cmp r0, #0
005dd444  04 00 80 12                                      addne r0, r0, #4
005dd448  01 10 8f e0                                      add r1, pc, r1
005dd44c  25 b6 00 eb                                      bl #0x60ace8
005dd450  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd454  3c 30 d3 e5                                      ldrb r3, [r3, #0x3c]
005dd458  01 30 43 e2                                      sub r3, r3, #1
005dd45c  73 30 ef e6                                      uxtb r3, r3
005dd460  ec 21 9f e5                                      ldr r2, [pc, #0x1ec]
005dd464  ec 11 9f e5                                      ldr r1, [pc, #0x1ec]
005dd468  24 b0 8d e2                                      add fp, sp, #0x24
005dd46c  02 20 94 e7                                      ldr r2, [r4, r2]
005dd470  01 10 8f e0                                      add r1, pc, r1
005dd474  0b 00 a0 e1                                      mov r0, fp
005dd478  00 20 92 e5                                      ldr r2, [r2]
005dd47c  98 c5 f4 eb                                      bl #0x30eae4
005dd480  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd484  0b 10 a0 e1                                      mov r1, fp
005dd488  e4 00 93 e5                                      ldr r0, [r3, #0xe4]
005dd48c  b9 77 ff eb                                      bl #0x5bb378
005dd490  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd494  00 20 a0 e1                                      mov r2, r0
005dd498  e4 10 93 e5                                      ldr r1, [r3, #0xe4]
005dd49c  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
005dd4a0  18 10 91 e5                                      ldr r1, [r1, #0x18]
005dd4a4  03 30 61 e0                                      rsb r3, r1, r3
005dd4a8  43 31 a0 e1                                      asr r3, r3, #2
005dd4ac  83 00 83 e0                                      add r0, r3, r3, lsl #1
005dd4b0  00 02 80 e0                                      add r0, r0, r0, lsl #4
005dd4b4  00 04 80 e0                                      add r0, r0, r0, lsl #8
005dd4b8  00 08 80 e0                                      add r0, r0, r0, lsl #16
005dd4bc  00 31 83 e0                                      add r3, r3, r0, lsl #2
005dd4c0  03 00 52 e1                                      cmp r2, r3
005dd4c4  43 00 00 3a                                      blo #0x5dd5d8
005dd4c8  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
005dd4cc  03 10 94 e7                                      ldr r1, [r4, r3]
005dd4d0  00 30 91 e5                                      ldr r3, [r1]
005dd4d4  00 00 53 e3                                      cmp r3, #0
005dd4d8  00 10 a0 03                                      moveq r1, #0
005dd4dc  c0 ff ff ea                                      b #0x5dd3e4
005dd4e0  06 02 9b e7                                      ldr r0, [fp, r6, lsl #4]
005dd4e4  74 11 9f e5                                      ldr r1, [pc, #0x174]
005dd4e8  02 20 a0 e3                                      mov r2, #2
005dd4ec  00 00 50 e3                                      cmp r0, #0
005dd4f0  04 00 80 12                                      addne r0, r0, #4
005dd4f4  01 10 8f e0                                      add r1, pc, r1
005dd4f8  fa b5 00 eb                                      bl #0x60ace8
005dd4fc  00 30 a0 e3                                      mov r3, #0
005dd500  d6 ff ff ea                                      b #0x5dd460
005dd504  14 10 8d e5                                      str r1, [sp, #0x14]
005dd508  23 1e 03 eb                                      bl #0x6a4d9c
005dd50c  ff 2f 0f e3                                      movw r2, #0xffff
005dd510  14 10 9d e5                                      ldr r1, [sp, #0x14]
005dd514  b2 ff ff ea                                      b #0x5dd3e4
005dd518  ff 20 a0 e3                                      mov r2, #0xff
005dd51c  00 c0 e0 e3                                      mvn ip, #0
005dd520  02 30 a0 e1                                      mov r3, r2
005dd524  00 c0 8d e5                                      str ip, [sp]
005dd528  07 00 a0 e1                                      mov r0, r7
005dd52c  00 c0 a0 e3                                      mov ip, #0
005dd530  04 c0 8d e5                                      str ip, [sp, #4]
005dd534  0a fe ff eb                                      bl #0x5dcd64
005dd538  ff 2f 0f e3                                      movw r2, #0xffff
005dd53c  00 10 a0 e1                                      mov r1, r0
005dd540  b4 50 d0 e1                                      ldrh r5, [r0, #4]
005dd544  a6 ff ff ea                                      b #0x5dd3e4
005dd548  28 20 97 e5                                      ldr r2, [r7, #0x28]
005dd54c  36 11 00 e3                                      movw r1, #0x136
005dd550  e4 30 92 e5                                      ldr r3, [r2, #0xe4]
005dd554  b1 20 92 e1                                      ldrh r2, [r2, r1]
005dd558  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
005dd55c  18 30 93 e5                                      ldr r3, [r3, #0x18]
005dd560  01 10 63 e0                                      rsb r1, r3, r1
005dd564  41 11 a0 e1                                      asr r1, r1, #2
005dd568  81 00 81 e0                                      add r0, r1, r1, lsl #1
005dd56c  00 02 80 e0                                      add r0, r0, r0, lsl #4
005dd570  00 04 80 e0                                      add r0, r0, r0, lsl #8
005dd574  00 08 80 e0                                      add r0, r0, r0, lsl #16
005dd578  00 11 81 e0                                      add r1, r1, r0, lsl #2
005dd57c  01 00 52 e1                                      cmp r2, r1
005dd580  73 ff ff 3a                                      blo #0x5dd354
005dd584  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
005dd588  03 30 94 e7                                      ldr r3, [r4, r3]
005dd58c  72 ff ff ea                                      b #0x5dd35c
005dd590  06 32 9b e7                                      ldr r3, [fp, r6, lsl #4]
005dd594  00 00 53 e3                                      cmp r3, #0
005dd598  20 30 8d 05                                      streq r3, [sp, #0x20]
005dd59c  81 ff ff 0a                                      beq #0x5dd3a8
005dd5a0  00 20 93 e5                                      ldr r2, [r3]
005dd5a4  01 20 82 e2                                      add r2, r2, #1
005dd5a8  00 20 83 e5                                      str r2, [r3]
005dd5ac  20 00 9d e5                                      ldr r0, [sp, #0x20]
005dd5b0  20 30 8d e5                                      str r3, [sp, #0x20]
005dd5b4  00 00 50 e3                                      cmp r0, #0
005dd5b8  7a ff ff 0a                                      beq #0x5dd3a8
005dd5bc  00 30 90 e5                                      ldr r3, [r0]
005dd5c0  01 30 43 e2                                      sub r3, r3, #1
005dd5c4  00 00 53 e3                                      cmp r3, #0
005dd5c8  00 30 80 e5                                      str r3, [r0]
005dd5cc  75 ff ff 1a                                      bne #0x5dd3a8
005dd5d0  f1 1d 03 eb                                      bl #0x6a4d9c
005dd5d4  73 ff ff ea                                      b #0x5dd3a8
005dd5d8  14 30 a0 e3                                      mov r3, #0x14
005dd5dc  93 12 21 e0                                      mla r1, r3, r2, r1
005dd5e0  ba ff ff ea                                      b #0x5dd4d0
005dd5e4  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd5e8  82 20 83 e0                                      add r2, r3, r2, lsl #1
005dd5ec  ba 2f d2 e1                                      ldrh r2, [r2, #0xfa]
005dd5f0  4b ff ff ea                                      b #0x5dd324
005dd5f4  28 30 97 e5                                      ldr r3, [r7, #0x28]
005dd5f8  82 20 83 e0                                      add r2, r3, r2, lsl #1
005dd5fc  ba 2f d2 e1                                      ldrh r2, [r2, #0xfa]
005dd600  02 20 82 e2                                      add r2, r2, #2
005dd604  72 20 ff e6                                      uxth r2, r2
005dd608  45 ff ff ea                                      b #0x5dd324
005dd60c  18 30 9d e5                                      ldr r3, [sp, #0x18]
005dd610  12 20 a0 e3                                      mov r2, #0x12
005dd614  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005dd618  01 b0 83 e2                                      add fp, r3, #1
005dd61c  00 e0 e0 e3                                      mvn lr, #0
005dd620  07 00 a0 e1                                      mov r0, r7
005dd624  02 30 a0 e1                                      mov r3, r2
005dd628  7b b0 ff e6                                      uxth fp, fp
005dd62c  00 e0 8d e5                                      str lr, [sp]
005dd630  04 c0 8d e5                                      str ip, [sp, #4]
005dd634  18 b0 8d e5                                      str fp, [sp, #0x18]
005dd638  c9 fd ff eb                                      bl #0x5dcd64
005dd63c  00 10 a0 e1                                      mov r1, r0
005dd640  5e ff ff ea                                      b #0x5dd3c0
005dd644  31 c3 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005dd648  30 78 3b 00 ac 40 00 00 58 3b 30 00 c0 34 00 00  .byte 0x30, 0x78, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0x3b, 0x30, 0x00, 0xc0, 0x34, 0x00, 0x00
005dd658  20 2b 30 00 14 28 00 00 54 3a 30 00              .byte 0x20, 0x2b, 0x30, 0x00, 0x14, 0x28, 0x00, 0x00, 0x54, 0x3a, 0x30, 0x00

; FUNCTION 0x005dd664, declared_size=424, range_size=424, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager12endTechniqueEbt
; demangled: glitch::video::CMaterialRendererManager::endTechnique(bool, unsigned short)
; decoder-mode: arm
005dd664  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005dd668  01 40 a0 e1                                      mov r4, r1
005dd66c  94 11 9f e5                                      ldr r1, [pc, #0x194]
005dd670  24 d0 4d e2                                      sub sp, sp, #0x24
005dd674  02 90 a0 e1                                      mov sb, r2
005dd678  01 10 8f e0                                      add r1, pc, r1
005dd67c  00 70 a0 e1                                      mov r7, r0
005dd680  74 fa ff eb                                      bl #0x5dc058
005dd684  00 00 50 e3                                      cmp r0, #0
005dd688  02 00 00 1a                                      bne #0x5dd698
005dd68c  00 00 a0 e3                                      mov r0, #0
005dd690  24 d0 8d e2                                      add sp, sp, #0x24
005dd694  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005dd698  90 00 97 e5                                      ldr r0, [r7, #0x90]
005dd69c  60 fc ff eb                                      bl #0x5dc824
005dd6a0  00 00 50 e3                                      cmp r0, #0
005dd6a4  18 00 8d e5                                      str r0, [sp, #0x18]
005dd6a8  f7 ff ff 0a                                      beq #0x5dd68c
005dd6ac  00 00 54 e3                                      cmp r4, #0
005dd6b0  34 00 00 0a                                      beq #0x5dd788
005dd6b4  04 30 d0 e5                                      ldrb r3, [r0, #4]
005dd6b8  00 00 53 e3                                      cmp r3, #0
005dd6bc  31 00 00 0a                                      beq #0x5dd788
005dd6c0  01 30 43 e2                                      sub r3, r3, #1
005dd6c4  73 20 ef e6                                      uxtb r2, r3
005dd6c8  34 30 a0 e3                                      mov r3, #0x34
005dd6cc  92 33 23 e0                                      mla r3, r2, r3, r3
005dd6d0  00 b0 a0 e3                                      mov fp, #0
005dd6d4  1c 30 8d e5                                      str r3, [sp, #0x1c]
005dd6d8  0b c0 a0 e1                                      mov ip, fp
005dd6dc  07 a0 a0 e1                                      mov sl, r7
005dd6e0  18 20 9d e5                                      ldr r2, [sp, #0x18]
005dd6e4  08 80 92 e5                                      ldr r8, [r2, #8]
005dd6e8  0b 80 88 e0                                      add r8, r8, fp
005dd6ec  20 50 98 e5                                      ldr r5, [r8, #0x20]
005dd6f0  00 00 55 e3                                      cmp r5, #0
005dd6f4  1e 00 00 0a                                      beq #0x5dd774
005dd6f8  00 70 a0 e3                                      mov r7, #0
005dd6fc  14 70 8d e5                                      str r7, [sp, #0x14]
005dd700  be 62 d5 e1                                      ldrh r6, [r5, #0x2e]
005dd704  00 00 56 e3                                      cmp r6, #0
005dd708  14 00 00 0a                                      beq #0x5dd760
005dd70c  00 40 a0 e3                                      mov r4, #0
005dd710  04 20 a0 e1                                      mov r2, r4
005dd714  28 30 95 e5                                      ldr r3, [r5, #0x28]
005dd718  04 32 83 e0                                      add r3, r3, r4, lsl #4
005dd71c  b4 30 d3 e1                                      ldrh r3, [r3, #4]
005dd720  01 40 84 e2                                      add r4, r4, #1
005dd724  22 10 43 e2                                      sub r1, r3, #0x22
005dd728  1c 00 51 e3                                      cmp r1, #0x1c
005dd72c  08 00 00 9a                                      bls #0x5dd754
005dd730  21 00 53 e3                                      cmp r3, #0x21
005dd734  06 00 00 0a                                      beq #0x5dd754
005dd738  0a 00 a0 e1                                      mov r0, sl
005dd73c  08 10 a0 e1                                      mov r1, r8
005dd740  07 30 a0 e1                                      mov r3, r7
005dd744  00 c0 8d e5                                      str ip, [sp]
005dd748  04 90 8d e5                                      str sb, [sp, #4]
005dd74c  bf fe ff eb                                      bl #0x5dd250
005dd750  00 c0 a0 e1                                      mov ip, r0
005dd754  74 20 ff e6                                      uxth r2, r4
005dd758  02 00 56 e1                                      cmp r6, r2
005dd75c  ec ff ff 8a                                      bhi #0x5dd714
005dd760  14 30 9d e5                                      ldr r3, [sp, #0x14]
005dd764  08 50 85 e2                                      add r5, r5, #8
005dd768  01 70 a0 e3                                      mov r7, #1
005dd76c  01 00 53 e3                                      cmp r3, #1
005dd770  e1 ff ff 1a                                      bne #0x5dd6fc
005dd774  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005dd778  34 b0 8b e2                                      add fp, fp, #0x34
005dd77c  02 00 5b e1                                      cmp fp, r2
005dd780  d6 ff ff 1a                                      bne #0x5dd6e0
005dd784  0a 70 a0 e1                                      mov r7, sl
005dd788  90 30 97 e5                                      ldr r3, [r7, #0x90]
005dd78c  30 50 93 e5                                      ldr r5, [r3, #0x30]
005dd790  28 40 93 e5                                      ldr r4, [r3, #0x28]
005dd794  05 00 54 e1                                      cmp r4, r5
005dd798  18 00 9d 05                                      ldreq r0, [sp, #0x18]
005dd79c  bb ff ff 0a                                      beq #0x5dd690
005dd7a0  18 b0 9d e5                                      ldr fp, [sp, #0x18]
005dd7a4  00 90 a0 e3                                      mov sb, #0
005dd7a8  05 80 a0 e1                                      mov r8, r5
005dd7ac  08 a0 94 e5                                      ldr sl, [r4, #8]
005dd7b0  07 00 a0 e1                                      mov r0, r7
005dd7b4  0c 60 d4 e5                                      ldrb r6, [r4, #0xc]
005dd7b8  0a 10 a0 e1                                      mov r1, sl
005dd7bc  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005dd7c0  53 e9 ff eb                                      bl #0x5d7d14
005dd7c4  00 20 50 e2                                      subs r2, r0, #0
005dd7c8  0a 10 a0 e1                                      mov r1, sl
005dd7cc  07 00 a0 e1                                      mov r0, r7
005dd7d0  0b 30 a0 e1                                      mov r3, fp
005dd7d4  03 00 00 0a                                      beq #0x5dd7e8
005dd7d8  b4 20 d2 e1                                      ldrh r2, [r2, #4]
005dd7dc  00 60 8d e5                                      str r6, [sp]
005dd7e0  20 02 8d e9                                      stmib sp, {r5, sb}
005dd7e4  14 f4 ff eb                                      bl #0x5da83c
005dd7e8  00 40 94 e5                                      ldr r4, [r4]
005dd7ec  08 00 54 e1                                      cmp r4, r8
005dd7f0  ed ff ff 1a                                      bne #0x5dd7ac
005dd7f4  90 30 97 e5                                      ldr r3, [r7, #0x90]
005dd7f8  18 00 9d e5                                      ldr r0, [sp, #0x18]
005dd7fc  28 20 93 e5                                      ldr r2, [r3, #0x28]
005dd800  30 20 83 e5                                      str r2, [r3, #0x30]
005dd804  a1 ff ff ea                                      b #0x5dd690
; mapping-symbol data/literal pool
005dd808  58 39 30 00                                      .byte 0x58, 0x39, 0x30, 0x00

; FUNCTION 0x005dd80c, declared_size=692, range_size=692, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager14beginTechniqueEPKcb
; demangled: glitch::video::CMaterialRendererManager::beginTechnique(char const*, bool)
; decoder-mode: arm
005dd80c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005dd810  90 50 90 e5                                      ldr r5, [r0, #0x90]
005dd814  08 d0 4d e2                                      sub sp, sp, #8
005dd818  00 60 a0 e1                                      mov r6, r0
005dd81c  00 00 55 e3                                      cmp r5, #0
005dd820  01 70 a0 e1                                      mov r7, r1
005dd824  85 00 00 0a                                      beq #0x5dda40
005dd828  04 40 95 e5                                      ldr r4, [r5, #4]
005dd82c  00 00 54 e3                                      cmp r4, #0
005dd830  06 00 00 0a                                      beq #0x5dd850
005dd834  68 02 9f e5                                      ldr r0, [pc, #0x268]
005dd838  03 10 a0 e3                                      mov r1, #3
005dd83c  00 00 8f e0                                      add r0, pc, r0
005dd840  16 b5 00 eb                                      bl #0x60aca0
005dd844  00 00 a0 e3                                      mov r0, #0
005dd848  08 d0 8d e2                                      add sp, sp, #8
005dd84c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005dd850  25 c0 d5 e5                                      ldrb ip, [r5, #0x25]
005dd854  1f 00 5c e3                                      cmp ip, #0x1f
005dd858  5c 00 00 8a                                      bhi #0x5dd9d0
005dd85c  00 00 51 e3                                      cmp r1, #0
005dd860  02 00 00 0a                                      beq #0x5dd870
005dd864  d0 40 d1 e1                                      ldrsb r4, [r1]
005dd868  00 00 54 e3                                      cmp r4, #0
005dd86c  80 00 00 0a                                      beq #0x5dda74
005dd870  00 00 52 e3                                      cmp r2, #0
005dd874  5e 00 00 1a                                      bne #0x5dd9f4
005dd878  00 00 57 e3                                      cmp r7, #0
005dd87c  79 00 00 0a                                      beq #0x5dda68
005dd880  73 5a fd eb                                      bl #0x534254
005dd884  00 80 a0 e1                                      mov r8, r0
005dd888  01 00 a0 e3                                      mov r0, #1
005dd88c  75 5a fd eb                                      bl #0x534268
005dd890  fe 0f a0 e3                                      mov r0, #0x3f8
005dd894  56 5b fd eb                                      bl #0x5345f4
005dd898  07 10 a0 e1                                      mov r1, r7
005dd89c  00 40 a0 e1                                      mov r4, r0
005dd8a0  1e c3 f4 eb                                      bl #0x30e520
005dd8a4  06 00 a0 e1                                      mov r0, r6
005dd8a8  04 10 a0 e1                                      mov r1, r4
005dd8ac  a5 f8 ff eb                                      bl #0x5dbb48
005dd8b0  00 00 50 e3                                      cmp r0, #0
005dd8b4  1e 00 00 0a                                      beq #0x5dd934
005dd8b8  07 00 a0 e1                                      mov r0, r7
005dd8bc  64 c1 f4 eb                                      bl #0x30de54
005dd8c0  00 50 a0 e1                                      mov r5, r0
005dd8c4  fd 2f 60 e2                                      rsb r2, r0, #0x3f4
005dd8c8  01 00 80 e2                                      add r0, r0, #1
005dd8cc  03 20 82 e2                                      add r2, r2, #3
005dd8d0  00 10 a0 e3                                      mov r1, #0
005dd8d4  00 00 84 e0                                      add r0, r4, r0
005dd8d8  41 a0 a0 e3                                      mov sl, #0x41
005dd8dc  df c2 f4 eb                                      bl #0x30e460
005dd8e0  05 a0 c4 e7                                      strb sl, [r4, r5]
005dd8e4  06 00 a0 e1                                      mov r0, r6
005dd8e8  04 10 a0 e1                                      mov r1, r4
005dd8ec  95 f8 ff eb                                      bl #0x5dbb48
005dd8f0  00 00 50 e3                                      cmp r0, #0
005dd8f4  05 70 a0 e1                                      mov r7, r5
005dd8f8  f6 93 00 e3                                      movw sb, #0x3f6
005dd8fc  0c 00 00 0a                                      beq #0x5dd934
005dd900  07 30 d4 e7                                      ldrb r3, [r4, r7]
005dd904  07 20 84 e0                                      add r2, r4, r7
005dd908  5a 00 53 e3                                      cmp r3, #0x5a
005dd90c  01 30 83 12                                      addne r3, r3, #1
005dd910  07 30 c4 17                                      strbne r3, [r4, r7]
005dd914  07 00 a0 11                                      movne r0, r7
005dd918  13 00 00 0a                                      beq #0x5dd96c
005dd91c  00 70 a0 e1                                      mov r7, r0
005dd920  06 00 a0 e1                                      mov r0, r6
005dd924  04 10 a0 e1                                      mov r1, r4
005dd928  86 f8 ff eb                                      bl #0x5dbb48
005dd92c  00 00 50 e3                                      cmp r0, #0
005dd930  f2 ff ff 1a                                      bne #0x5dd900
005dd934  90 00 96 e5                                      ldr r0, [r6, #0x90]
005dd938  04 10 a0 e1                                      mov r1, r4
005dd93c  04 00 80 e2                                      add r0, r0, #4
005dd940  93 f5 ff eb                                      bl #0x5daf94
005dd944  04 00 a0 e1                                      mov r0, r4
005dd948  4e 5b fd eb                                      bl #0x534688
005dd94c  90 30 96 e5                                      ldr r3, [r6, #0x90]
005dd950  04 40 93 e5                                      ldr r4, [r3, #4]
005dd954  00 00 54 e3                                      cmp r4, #0
005dd958  30 00 00 0a                                      beq #0x5dda20
005dd95c  08 00 a0 e1                                      mov r0, r8
005dd960  40 5a fd eb                                      bl #0x534268
005dd964  01 00 a0 e3                                      mov r0, #1
005dd968  b6 ff ff ea                                      b #0x5dd848
005dd96c  01 00 87 e2                                      add r0, r7, #1
005dd970  09 00 50 e1                                      cmp r0, sb
005dd974  37 00 00 8a                                      bhi #0x5dda58
005dd978  00 00 55 e1                                      cmp r5, r0
005dd97c  00 a0 c4 e7                                      strb sl, [r4, r0]
005dd980  e5 ff ff 2a                                      bhs #0x5dd91c
005dd984  00 10 d2 e5                                      ldrb r1, [r2]
005dd988  5a 00 51 e3                                      cmp r1, #0x5a
005dd98c  01 30 47 02                                      subeq r3, r7, #1
005dd990  03 30 84 00                                      addeq r3, r4, r3
005dd994  04 00 00 0a                                      beq #0x5dd9ac
005dd998  08 00 00 ea                                      b #0x5dd9c0
005dd99c  01 10 53 e4                                      ldrb r1, [r3], #-1
005dd9a0  01 70 47 e2                                      sub r7, r7, #1
005dd9a4  5a 00 51 e3                                      cmp r1, #0x5a
005dd9a8  04 00 00 1a                                      bne #0x5dd9c0
005dd9ac  07 00 55 e1                                      cmp r5, r7
005dd9b0  00 a0 c2 e5                                      strb sl, [r2]
005dd9b4  03 20 a0 e1                                      mov r2, r3
005dd9b8  f7 ff ff 3a                                      blo #0x5dd99c
005dd9bc  d6 ff ff ea                                      b #0x5dd91c
005dd9c0  01 10 81 e2                                      add r1, r1, #1
005dd9c4  00 10 c2 e5                                      strb r1, [r2]
005dd9c8  00 70 a0 e1                                      mov r7, r0
005dd9cc  d3 ff ff ea                                      b #0x5dd920
005dd9d0  01 30 a0 e1                                      mov r3, r1
005dd9d4  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
005dd9d8  00 20 95 e5                                      ldr r2, [r5]
005dd9dc  05 00 a0 e3                                      mov r0, #5
005dd9e0  01 10 8f e0                                      add r1, pc, r1
005dd9e4  00 c0 8d e5                                      str ip, [sp]
005dd9e8  91 b5 00 eb                                      bl #0x60b034
005dd9ec  04 00 a0 e1                                      mov r0, r4
005dd9f0  94 ff ff ea                                      b #0x5dd848
005dd9f4  06 00 a0 e1                                      mov r0, r6
005dd9f8  07 10 a0 e1                                      mov r1, r7
005dd9fc  51 f8 ff eb                                      bl #0x5dbb48
005dda00  00 00 50 e3                                      cmp r0, #0
005dda04  20 00 00 0a                                      beq #0x5dda8c
005dda08  9c 00 9f e5                                      ldr r0, [pc, #0x9c]
005dda0c  03 10 a0 e3                                      mov r1, #3
005dda10  00 00 8f e0                                      add r0, pc, r0
005dda14  a1 b4 00 eb                                      bl #0x60aca0
005dda18  00 00 a0 e3                                      mov r0, #0
005dda1c  89 ff ff ea                                      b #0x5dd848
005dda20  88 00 9f e5                                      ldr r0, [pc, #0x88]
005dda24  03 10 a0 e3                                      mov r1, #3
005dda28  00 00 8f e0                                      add r0, pc, r0
005dda2c  9b b4 00 eb                                      bl #0x60aca0
005dda30  08 00 a0 e1                                      mov r0, r8
005dda34  0b 5a fd eb                                      bl #0x534268
005dda38  04 00 a0 e1                                      mov r0, r4
005dda3c  81 ff ff ea                                      b #0x5dd848
005dda40  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
005dda44  03 10 a0 e3                                      mov r1, #3
005dda48  00 00 8f e0                                      add r0, pc, r0
005dda4c  93 b4 00 eb                                      bl #0x60aca0
005dda50  05 00 a0 e1                                      mov r0, r5
005dda54  7b ff ff ea                                      b #0x5dd848
005dda58  04 00 a0 e1                                      mov r0, r4
005dda5c  09 5b fd eb                                      bl #0x534688
005dda60  00 40 a0 e3                                      mov r4, #0
005dda64  b2 ff ff ea                                      b #0x5dd934
005dda68  48 70 9f e5                                      ldr r7, [pc, #0x48]
005dda6c  07 70 8f e0                                      add r7, pc, r7
005dda70  82 ff ff ea                                      b #0x5dd880
005dda74  40 00 9f e5                                      ldr r0, [pc, #0x40]
005dda78  03 10 a0 e3                                      mov r1, #3
005dda7c  00 00 8f e0                                      add r0, pc, r0
005dda80  86 b4 00 eb                                      bl #0x60aca0
005dda84  04 00 a0 e1                                      mov r0, r4
005dda88  6e ff ff ea                                      b #0x5dd848
005dda8c  90 00 96 e5                                      ldr r0, [r6, #0x90]
005dda90  07 10 a0 e1                                      mov r1, r7
005dda94  04 00 80 e2                                      add r0, r0, #4
005dda98  3d f5 ff eb                                      bl #0x5daf94
005dda9c  01 00 a0 e3                                      mov r0, #1
005ddaa0  68 ff ff ea                                      b #0x5dd848
; mapping-symbol data/literal pool
005ddaa4  fc 37 30 00 90 36 30 00 e0 36 30 00 20 37 30 00  .byte 0xfc, 0x37, 0x30, 0x00, 0x90, 0x36, 0x30, 0x00, 0xe0, 0x36, 0x30, 0x00, 0x20, 0x37, 0x30, 0x00
005ddab4  b0 35 30 00 cc 36 30 00 5c 36 30 00              .byte 0xb0, 0x35, 0x30, 0x00, 0xcc, 0x36, 0x30, 0x00, 0x5c, 0x36, 0x30, 0x00

; FUNCTION 0x005ddac0, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager28createPinkWireFrameTechniqueEPKc
; demangled: glitch::video::CMaterialRendererManager::createPinkWireFrameTechnique(char const*)
; decoder-mode: arm
005ddac0  10 40 2d e9                                      push {r4, lr}
005ddac4  01 20 a0 e3                                      mov r2, #1
005ddac8  00 40 a0 e1                                      mov r4, r0
005ddacc  4e ff ff eb                                      bl #0x5dd80c
005ddad0  04 00 a0 e1                                      mov r0, r4
005ddad4  be fc ff eb                                      bl #0x5dcdd4
005ddad8  00 10 a0 e3                                      mov r1, #0
005ddadc  04 00 a0 e1                                      mov r0, r4
005ddae0  01 20 a0 e1                                      mov r2, r1
005ddae4  de fe ff eb                                      bl #0x5dd664
005ddae8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005ddaec, declared_size=572, range_size=572, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager21beginMaterialRendererEPKcb
; demangled: glitch::video::CMaterialRendererManager::beginMaterialRenderer(char const*, bool)
; decoder-mode: arm
005ddaec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ddaf0  90 40 90 e5                                      ldr r4, [r0, #0x90]
005ddaf4  00 30 e0 e3                                      mvn r3, #0
005ddaf8  0c d0 4d e2                                      sub sp, sp, #0xc
005ddafc  00 00 54 e3                                      cmp r4, #0
005ddb00  00 60 a0 e1                                      mov r6, r0
005ddb04  b4 39 c0 e1                                      strh r3, [r0, #0x94]
005ddb08  01 50 a0 e1                                      mov r5, r1
005ddb0c  06 00 00 0a                                      beq #0x5ddb2c
005ddb10  00 02 9f e5                                      ldr r0, [pc, #0x200]
005ddb14  03 10 a0 e3                                      mov r1, #3
005ddb18  00 00 8f e0                                      add r0, pc, r0
005ddb1c  5f b4 00 eb                                      bl #0x60aca0
005ddb20  00 00 a0 e3                                      mov r0, #0
005ddb24  0c d0 8d e2                                      add sp, sp, #0xc
005ddb28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ddb2c  00 00 52 e3                                      cmp r2, #0
005ddb30  53 00 00 1a                                      bne #0x5ddc84
005ddb34  00 00 51 e3                                      cmp r1, #0
005ddb38  69 00 00 0a                                      beq #0x5ddce4
005ddb3c  c4 59 fd eb                                      bl #0x534254
005ddb40  00 80 a0 e1                                      mov r8, r0
005ddb44  01 00 a0 e3                                      mov r0, #1
005ddb48  c6 59 fd eb                                      bl #0x534268
005ddb4c  fe 0f a0 e3                                      mov r0, #0x3f8
005ddb50  a7 5a fd eb                                      bl #0x5345f4
005ddb54  05 10 a0 e1                                      mov r1, r5
005ddb58  00 40 a0 e1                                      mov r4, r0
005ddb5c  6f c2 f4 eb                                      bl #0x30e520
005ddb60  06 00 a0 e1                                      mov r0, r6
005ddb64  04 10 a0 e1                                      mov r1, r4
005ddb68  55 ef ff eb                                      bl #0x5d98c4
005ddb6c  ff 7f 0f e3                                      movw r7, #0xffff
005ddb70  07 00 50 e1                                      cmp r0, r7
005ddb74  1e 00 00 0a                                      beq #0x5ddbf4
005ddb78  05 00 a0 e1                                      mov r0, r5
005ddb7c  b4 c0 f4 eb                                      bl #0x30de54
005ddb80  00 50 a0 e1                                      mov r5, r0
005ddb84  fd 2f 60 e2                                      rsb r2, r0, #0x3f4
005ddb88  01 00 80 e2                                      add r0, r0, #1
005ddb8c  03 20 82 e2                                      add r2, r2, #3
005ddb90  00 10 a0 e3                                      mov r1, #0
005ddb94  00 00 84 e0                                      add r0, r4, r0
005ddb98  41 90 a0 e3                                      mov sb, #0x41
005ddb9c  2f c2 f4 eb                                      bl #0x30e460
005ddba0  05 90 c4 e7                                      strb sb, [r4, r5]
005ddba4  06 00 a0 e1                                      mov r0, r6
005ddba8  04 10 a0 e1                                      mov r1, r4
005ddbac  44 ef ff eb                                      bl #0x5d98c4
005ddbb0  07 00 50 e1                                      cmp r0, r7
005ddbb4  05 a0 a0 e1                                      mov sl, r5
005ddbb8  f6 b3 00 e3                                      movw fp, #0x3f6
005ddbbc  0c 00 00 0a                                      beq #0x5ddbf4
005ddbc0  0a 30 d4 e7                                      ldrb r3, [r4, sl]
005ddbc4  0a 20 84 e0                                      add r2, r4, sl
005ddbc8  5a 00 53 e3                                      cmp r3, #0x5a
005ddbcc  01 30 83 12                                      addne r3, r3, #1
005ddbd0  0a 30 c4 17                                      strbne r3, [r4, sl]
005ddbd4  0a 00 a0 11                                      movne r0, sl
005ddbd8  10 00 00 0a                                      beq #0x5ddc20
005ddbdc  00 a0 a0 e1                                      mov sl, r0
005ddbe0  06 00 a0 e1                                      mov r0, r6
005ddbe4  04 10 a0 e1                                      mov r1, r4
005ddbe8  35 ef ff eb                                      bl #0x5d98c4
005ddbec  07 00 50 e1                                      cmp r0, r7
005ddbf0  f2 ff ff 1a                                      bne #0x5ddbc0
005ddbf4  00 00 54 e3                                      cmp r4, #0
005ddbf8  3e 00 00 0a                                      beq #0x5ddcf8
005ddbfc  08 00 a0 e1                                      mov r0, r8
005ddc00  98 59 fd eb                                      bl #0x534268
005ddc04  58 00 a0 e3                                      mov r0, #0x58
005ddc08  79 5a fd eb                                      bl #0x5345f4
005ddc0c  04 10 a0 e1                                      mov r1, r4
005ddc10  90 00 86 e5                                      str r0, [r6, #0x90]
005ddc14  10 e8 ff eb                                      bl #0x5d7c5c
005ddc18  01 00 a0 e3                                      mov r0, #1
005ddc1c  c0 ff ff ea                                      b #0x5ddb24
005ddc20  01 00 8a e2                                      add r0, sl, #1
005ddc24  0b 00 50 e1                                      cmp r0, fp
005ddc28  30 00 00 8a                                      bhi #0x5ddcf0
005ddc2c  00 00 55 e1                                      cmp r5, r0
005ddc30  00 90 c4 e7                                      strb sb, [r4, r0]
005ddc34  e8 ff ff 2a                                      bhs #0x5ddbdc
005ddc38  00 10 d2 e5                                      ldrb r1, [r2]
005ddc3c  5a 00 51 e3                                      cmp r1, #0x5a
005ddc40  01 30 4a 02                                      subeq r3, sl, #1
005ddc44  03 30 84 00                                      addeq r3, r4, r3
005ddc48  04 00 00 0a                                      beq #0x5ddc60
005ddc4c  08 00 00 ea                                      b #0x5ddc74
005ddc50  01 10 53 e4                                      ldrb r1, [r3], #-1
005ddc54  01 a0 4a e2                                      sub sl, sl, #1
005ddc58  5a 00 51 e3                                      cmp r1, #0x5a
005ddc5c  04 00 00 1a                                      bne #0x5ddc74
005ddc60  0a 00 55 e1                                      cmp r5, sl
005ddc64  00 90 c2 e5                                      strb sb, [r2]
005ddc68  03 20 a0 e1                                      mov r2, r3
005ddc6c  f7 ff ff 3a                                      blo #0x5ddc50
005ddc70  d9 ff ff ea                                      b #0x5ddbdc
005ddc74  01 10 81 e2                                      add r1, r1, #1
005ddc78  00 10 c2 e5                                      strb r1, [r2]
005ddc7c  00 a0 a0 e1                                      mov sl, r0
005ddc80  d6 ff ff ea                                      b #0x5ddbe0
005ddc84  0e ef ff eb                                      bl #0x5d98c4
005ddc88  ff 3f 0f e3                                      movw r3, #0xffff
005ddc8c  03 00 50 e1                                      cmp r0, r3
005ddc90  b4 09 c6 e1                                      strh r0, [r6, #0x94]
005ddc94  06 00 00 0a                                      beq #0x5ddcb4
005ddc98  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
005ddc9c  05 10 a0 e1                                      mov r1, r5
005ddca0  01 20 a0 e3                                      mov r2, #1
005ddca4  00 00 8f e0                                      add r0, pc, r0
005ddca8  0e b4 00 eb                                      bl #0x60ace8
005ddcac  04 00 a0 e1                                      mov r0, r4
005ddcb0  9b ff ff ea                                      b #0x5ddb24
005ddcb4  04 00 8d e2                                      add r0, sp, #4
005ddcb8  c2 ed ff eb                                      bl #0x5d93c8
005ddcbc  05 00 a0 e1                                      mov r0, r5
005ddcc0  63 c0 f4 eb                                      bl #0x30de54
005ddcc4  01 00 80 e2                                      add r0, r0, #1
005ddcc8  49 5a fd eb                                      bl #0x5345f4
005ddccc  05 10 a0 e1                                      mov r1, r5
005ddcd0  00 40 a0 e1                                      mov r4, r0
005ddcd4  11 c2 f4 eb                                      bl #0x30e520
005ddcd8  04 00 dd e5                                      ldrb r0, [sp, #4]
005ddcdc  61 59 fd eb                                      bl #0x534268
005ddce0  c7 ff ff ea                                      b #0x5ddc04
005ddce4  34 50 9f e5                                      ldr r5, [pc, #0x34]
005ddce8  05 50 8f e0                                      add r5, pc, r5
005ddcec  92 ff ff ea                                      b #0x5ddb3c
005ddcf0  04 00 a0 e1                                      mov r0, r4
005ddcf4  63 5a fd eb                                      bl #0x534688
005ddcf8  24 00 9f e5                                      ldr r0, [pc, #0x24]
005ddcfc  03 10 a0 e3                                      mov r1, #3
005ddd00  00 00 8f e0                                      add r0, pc, r0
005ddd04  e5 b3 00 eb                                      bl #0x60aca0
005ddd08  08 00 a0 e1                                      mov r0, r8
005ddd0c  55 59 fd eb                                      bl #0x534268
005ddd10  00 00 a0 e3                                      mov r0, #0
005ddd14  82 ff ff ea                                      b #0x5ddb24
; mapping-symbol data/literal pool
005ddd18  88 36 30 00 44 35 30 00 28 35 30 00 28 35 30 00  .byte 0x88, 0x36, 0x30, 0x00, 0x44, 0x35, 0x30, 0x00, 0x28, 0x35, 0x30, 0x00, 0x28, 0x35, 0x30, 0x00

; FUNCTION 0x005ddd28, declared_size=140, range_size=140, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager35createPinkWireFrameMaterialRendererEPKc
; demangled: glitch::video::CMaterialRendererManager::createPinkWireFrameMaterialRenderer(char const*)
; decoder-mode: arm
005ddd28  70 40 2d e9                                      push {r4, r5, r6, lr}
005ddd2c  01 40 a0 e1                                      mov r4, r1
005ddd30  00 50 a0 e1                                      mov r5, r0
005ddd34  02 10 a0 e1                                      mov r1, r2
005ddd38  04 00 a0 e1                                      mov r0, r4
005ddd3c  01 20 a0 e3                                      mov r2, #1
005ddd40  69 ff ff eb                                      bl #0x5ddaec
005ddd44  5c 60 9f e5                                      ldr r6, [pc, #0x5c]
005ddd48  00 00 50 e3                                      cmp r0, #0
005ddd4c  06 60 8f e0                                      add r6, pc, r6
005ddd50  03 00 00 0a                                      beq #0x5ddd64
005ddd54  50 10 9f e5                                      ldr r1, [pc, #0x50]
005ddd58  04 00 a0 e1                                      mov r0, r4
005ddd5c  01 10 8f e0                                      add r1, pc, r1
005ddd60  56 ff ff eb                                      bl #0x5ddac0
005ddd64  04 00 a0 e1                                      mov r0, r4
005ddd68  11 00 00 eb                                      bl #0x5dddb4
005ddd6c  18 30 94 e5                                      ldr r3, [r4, #0x18]
005ddd70  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005ddd74  02 20 63 e0                                      rsb r2, r3, r2
005ddd78  c2 01 50 e1                                      cmp r0, r2, asr #3
005ddd7c  80 31 83 30                                      addlo r3, r3, r0, lsl #3
005ddd80  28 30 9f 25                                      ldrhs r3, [pc, #0x28]
005ddd84  03 30 96 27                                      ldrhs r3, [r6, r3]
005ddd88  00 30 93 e5                                      ldr r3, [r3]
005ddd8c  05 00 a0 e1                                      mov r0, r5
005ddd90  00 00 53 e3                                      cmp r3, #0
005ddd94  00 30 85 e5                                      str r3, [r5]
005ddd98  00 20 93 15                                      ldrne r2, [r3]
005ddd9c  01 20 82 12                                      addne r2, r2, #1
005ddda0  00 20 83 15                                      strne r2, [r3]
005ddda4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005ddda8  44 6d 3b 00 74 ee 2e 00 dc 30 00 00              .byte 0x44, 0x6d, 0x3b, 0x00, 0x74, 0xee, 0x2e, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x005dddb4, declared_size=4204, range_size=4204, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager19endMaterialRendererEv
; demangled: glitch::video::CMaterialRendererManager::endMaterialRenderer()
; decoder-mode: arm
005dddb4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005dddb8  80 1f 9f e5                                      ldr r1, [pc, #0xf80]
005dddbc  5d df 4d e2                                      sub sp, sp, #0x174
005dddc0  7c 2f 9f e5                                      ldr r2, [pc, #0xf7c]
005dddc4  44 00 8d e5                                      str r0, [sp, #0x44]
005dddc8  01 10 8f e0                                      add r1, pc, r1
005dddcc  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005dddd0  70 10 8d e5                                      str r1, [sp, #0x70]
005dddd4  88 20 8d e5                                      str r2, [sp, #0x88]
005dddd8  02 10 91 e7                                      ldr r1, [r1, r2]
005ddddc  18 30 90 e5                                      ldr r3, [r0, #0x18]
005ddde0  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
005ddde4  b4 29 dc e1                                      ldrh r2, [ip, #0x94]
005ddde8  00 10 91 e5                                      ldr r1, [r1]
005dddec  00 00 63 e0                                      rsb r0, r3, r0
005dddf0  c0 01 52 e1                                      cmp r2, r0, asr #3
005dddf4  6c 11 8d e5                                      str r1, [sp, #0x16c]
005dddf8  82 31 83 30                                      addlo r3, r3, r2, lsl #3
005dddfc  02 00 00 3a                                      blo #0x5dde0c
005dde00  40 3f 9f e5                                      ldr r3, [pc, #0xf40]
005dde04  70 e0 9d e5                                      ldr lr, [sp, #0x70]
005dde08  03 30 9e e7                                      ldr r3, [lr, r3]
005dde0c  00 30 93 e5                                      ldr r3, [r3]
005dde10  00 00 53 e3                                      cmp r3, #0
005dde14  ec 30 8d e5                                      str r3, [sp, #0xec]
005dde18  14 00 00 0a                                      beq #0x5dde70
005dde1c  00 20 93 e5                                      ldr r2, [r3]
005dde20  01 20 82 e2                                      add r2, r2, #1
005dde24  00 20 83 e5                                      str r2, [r3]
005dde28  ec 30 9d e5                                      ldr r3, [sp, #0xec]
005dde2c  00 00 53 e3                                      cmp r3, #0
005dde30  0e 00 00 0a                                      beq #0x5dde70
005dde34  ec 00 8d e2                                      add r0, sp, #0xec
005dde38  1e d1 f5 eb                                      bl #0x3522b8
005dde3c  44 10 9d e5                                      ldr r1, [sp, #0x44]
005dde40  00 20 e0 e3                                      mvn r2, #0
005dde44  b4 09 d1 e1                                      ldrh r0, [r1, #0x94]
005dde48  b4 29 c1 e1                                      strh r2, [r1, #0x94]
005dde4c  70 20 9d e5                                      ldr r2, [sp, #0x70]
005dde50  88 10 9d e5                                      ldr r1, [sp, #0x88]
005dde54  01 30 92 e7                                      ldr r3, [r2, r1]
005dde58  6c 21 9d e5                                      ldr r2, [sp, #0x16c]
005dde5c  00 30 93 e5                                      ldr r3, [r3]
005dde60  03 00 52 e1                                      cmp r2, r3
005dde64  ec 03 00 1a                                      bne #0x5dee1c
005dde68  5d df 8d e2                                      add sp, sp, #0x174
005dde6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005dde70  ec 00 8d e2                                      add r0, sp, #0xec
005dde74  0f d1 f5 eb                                      bl #0x3522b8
005dde78  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005dde7c  90 30 9c e5                                      ldr r3, [ip, #0x90]
005dde80  08 20 93 e5                                      ldr r2, [r3, #8]
005dde84  08 30 83 e2                                      add r3, r3, #8
005dde88  03 00 52 e1                                      cmp r2, r3
005dde8c  dd 03 00 0a                                      beq #0x5dee08
005dde90  ef 58 fd eb                                      bl #0x534254
005dde94  8c 00 8d e5                                      str r0, [sp, #0x8c]
005dde98  01 00 a0 e3                                      mov r0, #1
005dde9c  f1 58 fd eb                                      bl #0x534268
005ddea0  44 30 9d e5                                      ldr r3, [sp, #0x44]
005ddea4  90 30 93 e5                                      ldr r3, [r3, #0x90]
005ddea8  68 30 8d e5                                      str r3, [sp, #0x68]
005ddeac  98 3e 9f e5                                      ldr r3, [pc, #0xe98]
005ddeb0  68 e0 9d e5                                      ldr lr, [sp, #0x68]
005ddeb4  03 30 8f e0                                      add r3, pc, r3
005ddeb8  40 30 8d e5                                      str r3, [sp, #0x40]
005ddebc  8c 3e 9f e5                                      ldr r3, [pc, #0xe8c]
005ddec0  03 30 8f e0                                      add r3, pc, r3
005ddec4  5c 30 8d e5                                      str r3, [sp, #0x5c]
005ddec8  84 3e 9f e5                                      ldr r3, [pc, #0xe84]
005ddecc  03 30 8f e0                                      add r3, pc, r3
005dded0  64 30 8d e5                                      str r3, [sp, #0x64]
005dded4  08 c0 be e5                                      ldr ip, [lr, #8]!
005dded8  68 e0 8d e5                                      str lr, [sp, #0x68]
005ddedc  50 c0 8d e5                                      str ip, [sp, #0x50]
005ddee0  68 e0 9d e5                                      ldr lr, [sp, #0x68]
005ddee4  50 00 9d e5                                      ldr r0, [sp, #0x50]
005ddee8  00 00 5e e1                                      cmp lr, r0
005ddeec  a9 00 00 0a                                      beq #0x5de198
005ddef0  50 00 9d e5                                      ldr r0, [sp, #0x50]
005ddef4  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
005ddef8  00 00 53 e3                                      cmp r3, #0
005ddefc  9e 00 00 0a                                      beq #0x5de17c
005ddf00  01 30 43 e2                                      sub r3, r3, #1
005ddf04  73 20 ef e6                                      uxtb r2, r3
005ddf08  34 30 a0 e3                                      mov r3, #0x34
005ddf0c  92 33 23 e0                                      mla r3, r2, r3, r3
005ddf10  40 1e 9f e5                                      ldr r1, [pc, #0xe40]
005ddf14  00 20 a0 e3                                      mov r2, #0
005ddf18  58 30 8d e5                                      str r3, [sp, #0x58]
005ddf1c  60 10 8d e5                                      str r1, [sp, #0x60]
005ddf20  34 20 8d e5                                      str r2, [sp, #0x34]
005ddf24  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005ddf28  34 e0 9d e5                                      ldr lr, [sp, #0x34]
005ddf2c  10 30 9c e5                                      ldr r3, [ip, #0x10]
005ddf30  0e 30 83 e0                                      add r3, r3, lr
005ddf34  2c 30 8d e5                                      str r3, [sp, #0x2c]
005ddf38  20 00 93 e5                                      ldr r0, [r3, #0x20]
005ddf3c  00 00 50 e3                                      cmp r0, #0
005ddf40  38 00 8d e5                                      str r0, [sp, #0x38]
005ddf44  86 00 00 0a                                      beq #0x5de164
005ddf48  24 90 93 e5                                      ldr sb, [r3, #0x24]
005ddf4c  60 30 9d e5                                      ldr r3, [sp, #0x60]
005ddf50  00 10 a0 e3                                      mov r1, #0
005ddf54  01 20 a0 e3                                      mov r2, #1
005ddf58  03 30 8f e0                                      add r3, pc, r3
005ddf5c  30 10 8d e5                                      str r1, [sp, #0x30]
005ddf60  00 70 a0 e1                                      mov r7, r0
005ddf64  20 20 8d e5                                      str r2, [sp, #0x20]
005ddf68  24 10 8d e5                                      str r1, [sp, #0x24]
005ddf6c  3c 30 8d e5                                      str r3, [sp, #0x3c]
005ddf70  be c2 d7 e1                                      ldrh ip, [r7, #0x2e]
005ddf74  bc e2 d7 e1                                      ldrh lr, [r7, #0x2c]
005ddf78  0e 00 5c e1                                      cmp ip, lr
005ddf7c  28 e0 8d e5                                      str lr, [sp, #0x28]
005ddf80  5b 00 00 9a                                      bls #0x5de0f4
005ddf84  d0 0d 9f e5                                      ldr r0, [pc, #0xdd0]
005ddf88  0e 40 a0 e1                                      mov r4, lr
005ddf8c  00 50 a0 e3                                      mov r5, #0
005ddf90  48 00 8d e5                                      str r0, [sp, #0x48]
005ddf94  07 a0 a0 e1                                      mov sl, r7
005ddf98  28 80 9a e5                                      ldr r8, [sl, #0x28]
005ddf9c  04 72 a0 e1                                      lsl r7, r4, #4
005ddfa0  07 60 88 e0                                      add r6, r8, r7
005ddfa4  b4 30 d6 e1                                      ldrh r3, [r6, #4]
005ddfa8  21 00 53 e3                                      cmp r3, #0x21
005ddfac  44 00 00 0a                                      beq #0x5de0c4
005ddfb0  05 20 d9 e7                                      ldrb r2, [sb, r5]
005ddfb4  00 00 52 e3                                      cmp r2, #0
005ddfb8  41 00 00 1a                                      bne #0x5de0c4
005ddfbc  05 10 89 e0                                      add r1, sb, r5
005ddfc0  1c 10 8d e5                                      str r1, [sp, #0x1c]
005ddfc4  04 b0 91 e5                                      ldr fp, [r1, #4]
005ddfc8  00 00 5b e3                                      cmp fp, #0
005ddfcc  50 00 00 0a                                      beq #0x5de114
005ddfd0  1c 30 db e5                                      ldrb r3, [fp, #0x1c]
005ddfd4  00 00 53 e3                                      cmp r3, #0
005ddfd8  b4 30 db 01                                      ldrheq r3, [fp, #4]
005ddfdc  0c 00 00 0a                                      beq #0x5de014
005ddfe0  b4 20 db e1                                      ldrh r2, [fp, #4]
005ddfe4  b4 30 d6 e1                                      ldrh r3, [r6, #4]
005ddfe8  ff 00 52 e3                                      cmp r2, #0xff
005ddfec  b4 30 cb 01                                      strheq r3, [fp, #4]
005ddff0  07 00 00 0a                                      beq #0x5de014
005ddff4  02 00 53 e1                                      cmp r3, r2
005ddff8  05 00 00 0a                                      beq #0x5de014
005ddffc  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005de000  02 10 a0 e3                                      mov r1, #2
005de004  18 c0 8d e5                                      str ip, [sp, #0x18]
005de008  24 b3 00 eb                                      bl #0x60aca0
005de00c  b4 30 db e1                                      ldrh r3, [fp, #4]
005de010  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de014  12 00 53 e3                                      cmp r3, #0x12
005de018  24 10 9d 05                                      ldreq r1, [sp, #0x24]
005de01c  01 20 81 02                                      addeq r2, r1, #1
005de020  72 20 ff 06                                      uxtheq r2, r2
005de024  24 20 8d 05                                      streq r2, [sp, #0x24]
005de028  1d 20 db e5                                      ldrb r2, [fp, #0x1d]
005de02c  00 00 52 e3                                      cmp r2, #0
005de030  0e 00 00 0a                                      beq #0x5de070
005de034  12 00 53 e3                                      cmp r3, #0x12
005de038  06 30 cb 05                                      strbeq r3, [fp, #6]
005de03c  0b 00 00 0a                                      beq #0x5de070
005de040  06 30 db e5                                      ldrb r3, [fp, #6]
005de044  06 20 d6 e5                                      ldrb r2, [r6, #6]
005de048  ff 00 53 e3                                      cmp r3, #0xff
005de04c  06 20 cb 05                                      strbeq r2, [fp, #6]
005de050  06 00 00 0a                                      beq #0x5de070
005de054  03 00 52 e1                                      cmp r2, r3
005de058  04 00 00 0a                                      beq #0x5de070
005de05c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005de060  02 10 a0 e3                                      mov r1, #2
005de064  18 c0 8d e5                                      str ip, [sp, #0x18]
005de068  0c b3 00 eb                                      bl #0x60aca0
005de06c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de070  1e 30 db e5                                      ldrb r3, [fp, #0x1e]
005de074  00 00 53 e3                                      cmp r3, #0
005de078  11 00 00 0a                                      beq #0x5de0c4
005de07c  08 30 9b e5                                      ldr r3, [fp, #8]
005de080  08 20 96 e5                                      ldr r2, [r6, #8]
005de084  01 00 73 e3                                      cmn r3, #1
005de088  08 20 8b 05                                      streq r2, [fp, #8]
005de08c  0c 00 00 0a                                      beq #0x5de0c4
005de090  03 00 52 e1                                      cmp r2, r3
005de094  0a 00 00 0a                                      beq #0x5de0c4
005de098  44 e0 9d e5                                      ldr lr, [sp, #0x44]
005de09c  00 30 9b e5                                      ldr r3, [fp]
005de0a0  02 00 a0 e3                                      mov r0, #2
005de0a4  90 20 9e e5                                      ldr r2, [lr, #0x90]
005de0a8  00 00 53 e3                                      cmp r3, #0
005de0ac  04 30 83 12                                      addne r3, r3, #4
005de0b0  00 20 92 e5                                      ldr r2, [r2]
005de0b4  40 10 9d e5                                      ldr r1, [sp, #0x40]
005de0b8  18 c0 8d e5                                      str ip, [sp, #0x18]
005de0bc  dc b3 00 eb                                      bl #0x60b034
005de0c0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de0c4  01 40 84 e2                                      add r4, r4, #1
005de0c8  74 40 ff e6                                      uxth r4, r4
005de0cc  0c 00 54 e1                                      cmp r4, ip
005de0d0  08 50 85 e2                                      add r5, r5, #8
005de0d4  af ff ff 3a                                      blo #0x5ddf98
005de0d8  28 00 9d e5                                      ldr r0, [sp, #0x28]
005de0dc  0a 70 a0 e1                                      mov r7, sl
005de0e0  00 30 e0 e1                                      mvn r3, r0
005de0e4  03 30 8c e0                                      add r3, ip, r3
005de0e8  73 30 ff e6                                      uxth r3, r3
005de0ec  01 30 83 e2                                      add r3, r3, #1
005de0f0  83 91 89 e0                                      add sb, sb, r3, lsl #3
005de0f4  20 30 9d e5                                      ldr r3, [sp, #0x20]
005de0f8  08 70 87 e2                                      add r7, r7, #8
005de0fc  01 10 83 e2                                      add r1, r3, #1
005de100  03 00 51 e3                                      cmp r1, #3
005de104  20 10 8d e5                                      str r1, [sp, #0x20]
005de108  15 00 00 0a                                      beq #0x5de164
005de10c  30 30 8d e5                                      str r3, [sp, #0x30]
005de110  96 ff ff ea                                      b #0x5ddf70
005de114  12 30 43 e2                                      sub r3, r3, #0x12
005de118  0e 00 53 e3                                      cmp r3, #0xe
005de11c  7c 01 00 8a                                      bhi #0x5de714
005de120  00 e0 a0 e3                                      mov lr, #0
005de124  04 e0 8d e5                                      str lr, [sp, #4]
005de128  24 e0 9d e5                                      ldr lr, [sp, #0x24]
005de12c  30 30 9d e5                                      ldr r3, [sp, #0x30]
005de130  44 00 9d e5                                      ldr r0, [sp, #0x44]
005de134  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005de138  04 20 a0 e1                                      mov r2, r4
005de13c  18 c0 8d e5                                      str ip, [sp, #0x18]
005de140  00 e0 8d e5                                      str lr, [sp]
005de144  41 fc ff eb                                      bl #0x5dd250
005de148  05 30 d9 e7                                      ldrb r3, [sb, r5]
005de14c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de150  00 00 53 e3                                      cmp r3, #0
005de154  da ff ff 1a                                      bne #0x5de0c4
005de158  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005de15c  04 b0 90 e5                                      ldr fp, [r0, #4]
005de160  9a ff ff ea                                      b #0x5ddfd0
005de164  34 20 9d e5                                      ldr r2, [sp, #0x34]
005de168  58 30 9d e5                                      ldr r3, [sp, #0x58]
005de16c  34 20 82 e2                                      add r2, r2, #0x34
005de170  03 00 52 e1                                      cmp r2, r3
005de174  34 20 8d e5                                      str r2, [sp, #0x34]
005de178  69 ff ff 1a                                      bne #0x5ddf24
005de17c  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005de180  68 e0 9d e5                                      ldr lr, [sp, #0x68]
005de184  00 c0 9c e5                                      ldr ip, [ip]
005de188  50 c0 8d e5                                      str ip, [sp, #0x50]
005de18c  50 00 9d e5                                      ldr r0, [sp, #0x50]
005de190  00 00 5e e1                                      cmp lr, r0
005de194  55 ff ff 1a                                      bne #0x5ddef0
005de198  44 10 9d e5                                      ldr r1, [sp, #0x44]
005de19c  90 20 91 e5                                      ldr r2, [r1, #0x90]
005de1a0  4c 40 92 e5                                      ldr r4, [r2, #0x4c]
005de1a4  00 00 54 e3                                      cmp r4, #0
005de1a8  78 40 8d 05                                      streq r4, [sp, #0x78]
005de1ac  6c 40 8d 05                                      streq r4, [sp, #0x6c]
005de1b0  74 40 8d 05                                      streq r4, [sp, #0x74]
005de1b4  1b 00 00 0a                                      beq #0x5de228
005de1b8  a0 6b 9f e5                                      ldr r6, [pc, #0xba0]
005de1bc  44 70 9d e5                                      ldr r7, [sp, #0x44]
005de1c0  00 50 a0 e3                                      mov r5, #0
005de1c4  06 60 8f e0                                      add r6, pc, r6
005de1c8  18 30 94 e5                                      ldr r3, [r4, #0x18]
005de1cc  00 00 53 e3                                      cmp r3, #0
005de1d0  01 30 85 12                                      addne r3, r5, #1
005de1d4  14 50 84 15                                      strne r5, [r4, #0x14]
005de1d8  73 50 ff 16                                      uxthne r5, r3
005de1dc  07 00 00 1a                                      bne #0x5de200
005de1e0  00 30 94 e5                                      ldr r3, [r4]
005de1e4  90 20 97 e5                                      ldr r2, [r7, #0x90]
005de1e8  02 00 a0 e3                                      mov r0, #2
005de1ec  00 00 53 e3                                      cmp r3, #0
005de1f0  00 20 92 e5                                      ldr r2, [r2]
005de1f4  04 30 83 12                                      addne r3, r3, #4
005de1f8  06 10 a0 e1                                      mov r1, r6
005de1fc  8c b3 00 eb                                      bl #0x60b034
005de200  10 40 94 e5                                      ldr r4, [r4, #0x10]
005de204  00 00 54 e3                                      cmp r4, #0
005de208  ee ff ff 1a                                      bne #0x5de1c8
005de20c  00 20 55 e2                                      subs r2, r5, #0
005de210  78 20 8d e5                                      str r2, [sp, #0x78]
005de214  a7 02 00 1a                                      bne #0x5decb8
005de218  44 30 9d e5                                      ldr r3, [sp, #0x44]
005de21c  6c 40 8d e5                                      str r4, [sp, #0x6c]
005de220  74 40 8d e5                                      str r4, [sp, #0x74]
005de224  90 20 93 e5                                      ldr r2, [r3, #0x90]
005de228  00 40 a0 e3                                      mov r4, #0
005de22c  17 3e 8d e2                                      add r3, sp, #0x170
005de230  e0 40 63 e5                                      strb r4, [r3, #-0xe0]!
005de234  c8 c0 8d e2                                      add ip, sp, #0xc8
005de238  20 30 8d e5                                      str r3, [sp, #0x20]
005de23c  48 c0 8d e5                                      str ip, [sp, #0x48]
005de240  94 40 8d e5                                      str r4, [sp, #0x94]
005de244  98 30 8d e5                                      str r3, [sp, #0x98]
005de248  9c 30 8d e5                                      str r3, [sp, #0x9c]
005de24c  a0 40 8d e5                                      str r4, [sp, #0xa0]
005de250  c8 c0 8d e5                                      str ip, [sp, #0xc8]
005de254  cc c0 8d e5                                      str ip, [sp, #0xcc]
005de258  54 00 92 e5                                      ldr r0, [r2, #0x54]
005de25c  04 00 50 e1                                      cmp r0, r4
005de260  00 80 a0 01                                      moveq r8, r0
005de264  b0 00 00 0a                                      beq #0x5de52c
005de268  80 00 a0 e1                                      lsl r0, r0, #1
005de26c  e0 58 fd eb                                      bl #0x5345f4
005de270  44 e0 9d e5                                      ldr lr, [sp, #0x44]
005de274  84 00 8d e5                                      str r0, [sp, #0x84]
005de278  d8 30 8d e2                                      add r3, sp, #0xd8
005de27c  90 e0 9e e5                                      ldr lr, [lr, #0x90]
005de280  2c 40 8d e5                                      str r4, [sp, #0x2c]
005de284  38 00 8d e5                                      str r0, [sp, #0x38]
005de288  80 e0 8d e5                                      str lr, [sp, #0x80]
005de28c  08 00 be e5                                      ldr r0, [lr, #8]!
005de290  54 30 8d e5                                      str r3, [sp, #0x54]
005de294  d0 10 8d e2                                      add r1, sp, #0xd0
005de298  80 e0 8d e5                                      str lr, [sp, #0x80]
005de29c  5c 00 8d e5                                      str r0, [sp, #0x5c]
005de2a0  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005de2a4  80 c0 9d e5                                      ldr ip, [sp, #0x80]
005de2a8  c0 20 8d e2                                      add r2, sp, #0xc0
005de2ac  28 10 8d e5                                      str r1, [sp, #0x28]
005de2b0  0c 00 53 e1                                      cmp r3, ip
005de2b4  7c 20 8d e5                                      str r2, [sp, #0x7c]
005de2b8  9a 00 00 0a                                      beq #0x5de528
005de2bc  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005de2c0  0c c0 dc e5                                      ldrb ip, [ip, #0xc]
005de2c4  00 00 5c e3                                      cmp ip, #0
005de2c8  60 c0 8d e5                                      str ip, [sp, #0x60]
005de2cc  8b 00 00 0a                                      beq #0x5de500
005de2d0  00 e0 a0 e3                                      mov lr, #0
005de2d4  50 e0 8d e5                                      str lr, [sp, #0x50]
005de2d8  24 e0 8d e5                                      str lr, [sp, #0x24]
005de2dc  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005de2e0  50 10 9d e5                                      ldr r1, [sp, #0x50]
005de2e4  10 30 90 e5                                      ldr r3, [r0, #0x10]
005de2e8  01 30 83 e0                                      add r3, r3, r1
005de2ec  24 20 93 e5                                      ldr r2, [r3, #0x24]
005de2f0  4c 20 8d e5                                      str r2, [sp, #0x4c]
005de2f4  00 00 52 e3                                      cmp r2, #0
005de2f8  20 90 93 e5                                      ldr sb, [r3, #0x20]
005de2fc  75 00 00 0a                                      beq #0x5de4d8
005de300  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005de304  00 e0 a0 e3                                      mov lr, #0
005de308  b8 00 8d e2                                      add r0, sp, #0xb8
005de30c  24 c0 83 e5                                      str ip, [r3, #0x24]
005de310  4c b0 9d e5                                      ldr fp, [sp, #0x4c]
005de314  b0 10 8d e2                                      add r1, sp, #0xb0
005de318  34 e0 8d e5                                      str lr, [sp, #0x34]
005de31c  64 00 8d e5                                      str r0, [sp, #0x64]
005de320  68 10 8d e5                                      str r1, [sp, #0x68]
005de324  be 22 d9 e1                                      ldrh r2, [sb, #0x2e]
005de328  1c 20 8d e5                                      str r2, [sp, #0x1c]
005de32c  bc 32 d9 e1                                      ldrh r3, [sb, #0x2c]
005de330  03 00 52 e1                                      cmp r2, r3
005de334  30 30 8d e5                                      str r3, [sp, #0x30]
005de338  5e 00 00 9a                                      bls #0x5de4b8
005de33c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005de340  a8 e0 8d e2                                      add lr, sp, #0xa8
005de344  00 50 a0 e3                                      mov r5, #0
005de348  7c c0 ef e6                                      uxtb ip, ip
005de34c  03 60 a0 e1                                      mov r6, r3
005de350  38 70 9d e5                                      ldr r7, [sp, #0x38]
005de354  3c c0 8d e5                                      str ip, [sp, #0x3c]
005de358  58 e0 8d e5                                      str lr, [sp, #0x58]
005de35c  e0 80 8d e2                                      add r8, sp, #0xe0
005de360  12 00 00 ea                                      b #0x5de3b0
005de364  05 30 8b e0                                      add r3, fp, r5
005de368  b4 30 d3 e1                                      ldrh r3, [r3, #4]
005de36c  83 38 e0 e1                                      mvn r3, r3, lsl #17
005de370  a3 38 e0 e1                                      mvn r3, r3, lsr #17
005de374  b0 30 c7 e1                                      strh r3, [r7]
005de378  28 30 99 e5                                      ldr r3, [sb, #0x28]
005de37c  06 32 83 e0                                      add r3, r3, r6, lsl #4
005de380  b4 20 d3 e1                                      ldrh r2, [r3, #4]
005de384  02 00 52 e3                                      cmp r2, #2
005de388  15 00 00 0a                                      beq #0x5de3e4
005de38c  21 00 52 e3                                      cmp r2, #0x21
005de390  31 01 00 0a                                      beq #0x5de85c
005de394  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
005de398  01 60 86 e2                                      add r6, r6, #1
005de39c  76 60 ff e6                                      uxth r6, r6
005de3a0  0e 00 56 e1                                      cmp r6, lr
005de3a4  02 70 87 e2                                      add r7, r7, #2
005de3a8  08 50 85 e2                                      add r5, r5, #8
005de3ac  38 00 00 2a                                      bhs #0x5de494
005de3b0  05 30 db e7                                      ldrb r3, [fp, r5]
005de3b4  00 00 53 e3                                      cmp r3, #0
005de3b8  e9 ff ff 1a                                      bne #0x5de364
005de3bc  05 30 8b e0                                      add r3, fp, r5
005de3c0  04 30 93 e5                                      ldr r3, [r3, #4]
005de3c4  00 00 53 e3                                      cmp r3, #0
005de3c8  b4 31 d3 11                                      ldrhne r3, [r3, #0x14]
005de3cc  b0 30 c7 11                                      strhne r3, [r7]
005de3d0  28 30 99 e5                                      ldr r3, [sb, #0x28]
005de3d4  06 32 83 e0                                      add r3, r3, r6, lsl #4
005de3d8  b4 20 d3 e1                                      ldrh r2, [r3, #4]
005de3dc  02 00 52 e3                                      cmp r2, #2
005de3e0  e9 ff ff 1a                                      bne #0x5de38c
005de3e4  94 40 9d e5                                      ldr r4, [sp, #0x94]
005de3e8  07 30 d3 e5                                      ldrb r3, [r3, #7]
005de3ec  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005de3f0  24 10 9d e5                                      ldr r1, [sp, #0x24]
005de3f4  00 00 54 e3                                      cmp r4, #0
005de3f8  00 20 a0 e3                                      mov r2, #0
005de3fc  e0 00 cd e5                                      strb r0, [sp, #0xe0]
005de400  e2 30 cd e5                                      strb r3, [sp, #0xe2]
005de404  e1 10 cd e5                                      strb r1, [sp, #0xe1]
005de408  e3 20 cd e5                                      strb r2, [sp, #0xe3]
005de40c  20 40 9d 05                                      ldreq r4, [sp, #0x20]
005de410  23 01 00 0a                                      beq #0x5de8a4
005de414  20 a0 9d e5                                      ldr sl, [sp, #0x20]
005de418  01 00 00 ea                                      b #0x5de424
005de41c  04 a0 a0 e1                                      mov sl, r4
005de420  03 40 a0 e1                                      mov r4, r3
005de424  10 00 84 e2                                      add r0, r4, #0x10
005de428  08 10 a0 e1                                      mov r1, r8
005de42c  04 20 a0 e3                                      mov r2, #4
005de430  6a c0 f4 eb                                      bl #0x30e5e0
005de434  00 00 50 e3                                      cmp r0, #0
005de438  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
005de43c  08 30 94 a5                                      ldrge r3, [r4, #8]
005de440  0a 40 a0 b1                                      movlt r4, sl
005de444  00 00 53 e3                                      cmp r3, #0
005de448  f3 ff ff 1a                                      bne #0x5de41c
005de44c  20 30 9d e5                                      ldr r3, [sp, #0x20]
005de450  03 00 54 e1                                      cmp r4, r3
005de454  12 01 00 0a                                      beq #0x5de8a4
005de458  08 00 a0 e1                                      mov r0, r8
005de45c  10 10 84 e2                                      add r1, r4, #0x10
005de460  04 20 a0 e3                                      mov r2, #4
005de464  5d c0 f4 eb                                      bl #0x30e5e0
005de468  00 00 50 e3                                      cmp r0, #0
005de46c  0c 01 00 ba                                      blt #0x5de8a4
005de470  b0 e0 d7 e1                                      ldrh lr, [r7]
005de474  01 60 86 e2                                      add r6, r6, #1
005de478  76 60 ff e6                                      uxth r6, r6
005de47c  b4 e1 c4 e1                                      strh lr, [r4, #0x14]
005de480  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
005de484  02 70 87 e2                                      add r7, r7, #2
005de488  08 50 85 e2                                      add r5, r5, #8
005de48c  0e 00 56 e1                                      cmp r6, lr
005de490  c6 ff ff 3a                                      blo #0x5de3b0
005de494  30 00 9d e5                                      ldr r0, [sp, #0x30]
005de498  38 10 9d e5                                      ldr r1, [sp, #0x38]
005de49c  00 30 e0 e1                                      mvn r3, r0
005de4a0  03 30 8e e0                                      add r3, lr, r3
005de4a4  73 30 ff e6                                      uxth r3, r3
005de4a8  01 30 83 e2                                      add r3, r3, #1
005de4ac  83 10 81 e0                                      add r1, r1, r3, lsl #1
005de4b0  83 b1 8b e0                                      add fp, fp, r3, lsl #3
005de4b4  38 10 8d e5                                      str r1, [sp, #0x38]
005de4b8  34 20 9d e5                                      ldr r2, [sp, #0x34]
005de4bc  08 90 89 e2                                      add sb, sb, #8
005de4c0  08 20 82 e2                                      add r2, r2, #8
005de4c4  10 00 52 e3                                      cmp r2, #0x10
005de4c8  34 20 8d e5                                      str r2, [sp, #0x34]
005de4cc  94 ff ff 1a                                      bne #0x5de324
005de4d0  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
005de4d4  6b 58 fd eb                                      bl #0x534688
005de4d8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005de4dc  50 00 9d e5                                      ldr r0, [sp, #0x50]
005de4e0  60 e0 9d e5                                      ldr lr, [sp, #0x60]
005de4e4  01 30 8c e2                                      add r3, ip, #1
005de4e8  73 30 ef e6                                      uxtb r3, r3
005de4ec  34 00 80 e2                                      add r0, r0, #0x34
005de4f0  0e 00 53 e1                                      cmp r3, lr
005de4f4  24 30 8d e5                                      str r3, [sp, #0x24]
005de4f8  50 00 8d e5                                      str r0, [sp, #0x50]
005de4fc  76 ff ff 1a                                      bne #0x5de2dc
005de500  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
005de504  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005de508  80 c0 9d e5                                      ldr ip, [sp, #0x80]
005de50c  00 10 91 e5                                      ldr r1, [r1]
005de510  01 20 82 e2                                      add r2, r2, #1
005de514  2c 20 8d e5                                      str r2, [sp, #0x2c]
005de518  5c 10 8d e5                                      str r1, [sp, #0x5c]
005de51c  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005de520  0c 00 53 e1                                      cmp r3, ip
005de524  64 ff ff 1a                                      bne #0x5de2bc
005de528  84 80 9d e5                                      ldr r8, [sp, #0x84]
005de52c  c8 70 9d e5                                      ldr r7, [sp, #0xc8]
005de530  48 90 9d e5                                      ldr sb, [sp, #0x48]
005de534  20 a0 9d e5                                      ldr sl, [sp, #0x20]
005de538  09 00 57 e1                                      cmp r7, sb
005de53c  20 00 00 0a                                      beq #0x5de5c4
005de540  94 40 9d e5                                      ldr r4, [sp, #0x94]
005de544  08 60 87 e2                                      add r6, r7, #8
005de548  00 00 54 e3                                      cmp r4, #0
005de54c  0a 50 a0 11                                      movne r5, sl
005de550  02 00 00 1a                                      bne #0x5de560
005de554  c7 01 00 ea                                      b #0x5dec78
005de558  04 50 a0 e1                                      mov r5, r4
005de55c  03 40 a0 e1                                      mov r4, r3
005de560  10 00 84 e2                                      add r0, r4, #0x10
005de564  06 10 a0 e1                                      mov r1, r6
005de568  04 20 a0 e3                                      mov r2, #4
005de56c  1b c0 f4 eb                                      bl #0x30e5e0
005de570  00 00 50 e3                                      cmp r0, #0
005de574  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
005de578  08 30 94 a5                                      ldrge r3, [r4, #8]
005de57c  05 40 a0 b1                                      movlt r4, r5
005de580  00 00 53 e3                                      cmp r3, #0
005de584  f3 ff ff 1a                                      bne #0x5de558
005de588  0a 00 54 e1                                      cmp r4, sl
005de58c  b9 01 00 0a                                      beq #0x5dec78
005de590  06 00 a0 e1                                      mov r0, r6
005de594  10 10 84 e2                                      add r1, r4, #0x10
005de598  04 20 a0 e3                                      mov r2, #4
005de59c  0f c0 f4 eb                                      bl #0x30e5e0
005de5a0  00 00 50 e3                                      cmp r0, #0
005de5a4  04 00 a0 a1                                      movge r0, r4
005de5a8  0a 00 a0 b1                                      movlt r0, sl
005de5ac  0c 30 97 e5                                      ldr r3, [r7, #0xc]
005de5b0  b4 01 d0 e1                                      ldrh r0, [r0, #0x14]
005de5b4  b0 00 c3 e1                                      strh r0, [r3]
005de5b8  00 70 97 e5                                      ldr r7, [r7]
005de5bc  09 00 57 e1                                      cmp r7, sb
005de5c0  de ff ff 1a                                      bne #0x5de540
005de5c4  44 e0 9d e5                                      ldr lr, [sp, #0x44]
005de5c8  78 00 9d e5                                      ldr r0, [sp, #0x78]
005de5cc  74 10 9d e5                                      ldr r1, [sp, #0x74]
005de5d0  90 30 9e e5                                      ldr r3, [lr, #0x90]
005de5d4  04 00 8d e5                                      str r0, [sp, #4]
005de5d8  0c 10 8d e5                                      str r1, [sp, #0xc]
005de5dc  08 20 83 e2                                      add r2, r3, #8
005de5e0  00 20 8d e5                                      str r2, [sp]
005de5e4  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
005de5e8  e8 50 8d e2                                      add r5, sp, #0xe8
005de5ec  05 00 a0 e1                                      mov r0, r5
005de5f0  08 20 8d e5                                      str r2, [sp, #8]
005de5f4  b4 15 d3 e1                                      ldrh r1, [r3, #0x54]
005de5f8  b4 22 de e1                                      ldrh r2, [lr, #0x24]
005de5fc  14 80 8d e5                                      str r8, [sp, #0x14]
005de600  10 10 8d e5                                      str r1, [sp, #0x10]
005de604  28 10 9e e5                                      ldr r1, [lr, #0x28]
005de608  00 30 93 e5                                      ldr r3, [r3]
005de60c  8d d9 ff eb                                      bl #0x5d4c48
005de610  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005de614  00 30 a0 e3                                      mov r3, #0
005de618  05 20 a0 e1                                      mov r2, r5
005de61c  08 10 91 e5                                      ldr r1, [r1, #8]
005de620  44 00 9d e5                                      ldr r0, [sp, #0x44]
005de624  c7 f7 ff eb                                      bl #0x5dc548
005de628  00 40 a0 e1                                      mov r4, r0
005de62c  44 00 9d e5                                      ldr r0, [sp, #0x44]
005de630  c9 f2 ff eb                                      bl #0x5db15c
005de634  28 17 9f e5                                      ldr r1, [pc, #0x728]
005de638  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
005de63c  00 20 a0 e3                                      mov r2, #0
005de640  01 10 8f e0                                      add r1, pc, r1
005de644  90 d2 ff eb                                      bl #0x5d308c
005de648  ff 3f 0f e3                                      movw r3, #0xffff
005de64c  03 00 50 e1                                      cmp r0, r3
005de650  00 10 a0 e1                                      mov r1, r0
005de654  0b 00 00 0a                                      beq #0x5de688
005de658  33 c0 e0 e3                                      mvn ip, #0x33
005de65c  e4 c0 cd e5                                      strb ip, [sp, #0xe4]
005de660  80 c0 8c e2                                      add ip, ip, #0x80
005de664  e5 c0 cd e5                                      strb ip, [sp, #0xe5]
005de668  33 c0 8c e2                                      add ip, ip, #0x33
005de66c  e6 c0 cd e5                                      strb ip, [sp, #0xe6]
005de670  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
005de674  00 c0 e0 e3                                      mvn ip, #0
005de678  00 20 a0 e3                                      mov r2, #0
005de67c  e4 30 8d e2                                      add r3, sp, #0xe4
005de680  e7 c0 cd e5                                      strb ip, [sp, #0xe7]
005de684  c3 c4 ff eb                                      bl #0x5cf998
005de688  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
005de68c  10 70 d3 e5                                      ldrb r7, [r3, #0x10]
005de690  00 00 57 e3                                      cmp r7, #0
005de694  b6 01 00 0a                                      beq #0x5ded74
005de698  05 00 a0 e1                                      mov r0, r5
005de69c  05 cf f5 eb                                      bl #0x3522b8
005de6a0  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
005de6a4  48 30 9d e5                                      ldr r3, [sp, #0x48]
005de6a8  03 00 50 e1                                      cmp r0, r3
005de6ac  06 00 00 0a                                      beq #0x5de6cc
005de6b0  03 60 a0 e1                                      mov r6, r3
005de6b4  00 00 00 ea                                      b #0x5de6bc
005de6b8  05 00 a0 e1                                      mov r0, r5
005de6bc  00 50 90 e5                                      ldr r5, [r0]
005de6c0  f0 57 fd eb                                      bl #0x534688
005de6c4  06 00 55 e1                                      cmp r5, r6
005de6c8  fa ff ff 1a                                      bne #0x5de6b8
005de6cc  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
005de6d0  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005de6d4  00 00 53 e3                                      cmp r3, #0
005de6d8  cc c0 8d e5                                      str ip, [sp, #0xcc]
005de6dc  c8 c0 8d e5                                      str ip, [sp, #0xc8]
005de6e0  be 01 00 1a                                      bne #0x5dede0
005de6e4  00 00 58 e3                                      cmp r8, #0
005de6e8  01 00 00 0a                                      beq #0x5de6f4
005de6ec  08 00 a0 e1                                      mov r0, r8
005de6f0  e4 57 fd eb                                      bl #0x534688
005de6f4  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
005de6f8  00 00 50 e3                                      cmp r0, #0
005de6fc  00 00 00 0a                                      beq #0x5de704
005de700  e0 57 fd eb                                      bl #0x534688
005de704  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
005de708  d6 56 fd eb                                      bl #0x534268
005de70c  04 00 a0 e1                                      mov r0, r4
005de710  cd fd ff ea                                      b #0x5dde4c
005de714  55 2f 8d e2                                      add r2, sp, #0x154
005de718  4c 20 8d e5                                      str r2, [sp, #0x4c]
005de71c  02 00 a0 e1                                      mov r0, r2
005de720  64 10 9d e5                                      ldr r1, [sp, #0x64]
005de724  f0 20 8d e2                                      add r2, sp, #0xf0
005de728  18 c0 8d e5                                      str ip, [sp, #0x18]
005de72c  42 1e f5 eb                                      bl #0x32603c
005de730  07 20 98 e7                                      ldr r2, [r8, r7]
005de734  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de738  4f bf 8d e2                                      add fp, sp, #0x13c
005de73c  00 00 52 e3                                      cmp r2, #0
005de740  04 20 82 12                                      addne r2, r2, #4
005de744  0b 00 a0 e1                                      mov r0, fp
005de748  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005de74c  18 c0 8d e5                                      str ip, [sp, #0x18]
005de750  56 3c fe eb                                      bl #0x56d8b0
005de754  48 30 9d e5                                      ldr r3, [sp, #0x48]
005de758  49 8f 8d e2                                      add r8, sp, #0x124
005de75c  08 00 a0 e1                                      mov r0, r8
005de760  03 20 8f e0                                      add r2, pc, r3
005de764  0b 10 a0 e1                                      mov r1, fp
005de768  50 3c fe eb                                      bl #0x56d8b0
005de76c  38 e0 9d e5                                      ldr lr, [sp, #0x38]
005de770  43 7f 8d e2                                      add r7, sp, #0x10c
005de774  1c 71 8d e5                                      str r7, [sp, #0x11c]
005de778  20 71 8d e5                                      str r7, [sp, #0x120]
005de77c  20 10 9e e5                                      ldr r1, [lr, #0x20]
005de780  1c 20 9e e5                                      ldr r2, [lr, #0x1c]
005de784  f4 30 8d e2                                      add r3, sp, #0xf4
005de788  07 00 a0 e1                                      mov r0, r7
005de78c  54 30 8d e5                                      str r3, [sp, #0x54]
005de790  17 1e f5 eb                                      bl #0x325ff4
005de794  54 00 9d e5                                      ldr r0, [sp, #0x54]
005de798  08 10 a0 e1                                      mov r1, r8
005de79c  07 20 a0 e1                                      mov r2, r7
005de7a0  df be f5 eb                                      bl #0x34e324
005de7a4  08 01 9d e5                                      ldr r0, [sp, #0x108]
005de7a8  02 10 a0 e3                                      mov r1, #2
005de7ac  3b b1 00 eb                                      bl #0x60aca0
005de7b0  08 01 9d e5                                      ldr r0, [sp, #0x108]
005de7b4  54 e0 9d e5                                      ldr lr, [sp, #0x54]
005de7b8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de7bc  0e 00 50 e1                                      cmp r0, lr
005de7c0  03 00 00 0a                                      beq #0x5de7d4
005de7c4  00 00 50 e3                                      cmp r0, #0
005de7c8  01 00 00 0a                                      beq #0x5de7d4
005de7cc  1f c7 f4 eb                                      bl #0x310450
005de7d0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de7d4  20 01 9d e5                                      ldr r0, [sp, #0x120]
005de7d8  07 00 50 e1                                      cmp r0, r7
005de7dc  04 00 00 0a                                      beq #0x5de7f4
005de7e0  00 00 50 e3                                      cmp r0, #0
005de7e4  02 00 00 0a                                      beq #0x5de7f4
005de7e8  18 c0 8d e5                                      str ip, [sp, #0x18]
005de7ec  17 c7 f4 eb                                      bl #0x310450
005de7f0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de7f4  38 01 9d e5                                      ldr r0, [sp, #0x138]
005de7f8  08 00 50 e1                                      cmp r0, r8
005de7fc  04 00 00 0a                                      beq #0x5de814
005de800  00 00 50 e3                                      cmp r0, #0
005de804  02 00 00 0a                                      beq #0x5de814
005de808  18 c0 8d e5                                      str ip, [sp, #0x18]
005de80c  0f c7 f4 eb                                      bl #0x310450
005de810  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de814  50 01 9d e5                                      ldr r0, [sp, #0x150]
005de818  0b 00 50 e1                                      cmp r0, fp
005de81c  04 00 00 0a                                      beq #0x5de834
005de820  00 00 50 e3                                      cmp r0, #0
005de824  02 00 00 0a                                      beq #0x5de834
005de828  18 c0 8d e5                                      str ip, [sp, #0x18]
005de82c  07 c7 f4 eb                                      bl #0x310450
005de830  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de834  68 01 9d e5                                      ldr r0, [sp, #0x168]
005de838  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005de83c  01 00 50 e1                                      cmp r0, r1
005de840  36 fe ff 0a                                      beq #0x5de120
005de844  00 00 50 e3                                      cmp r0, #0
005de848  34 fe ff 0a                                      beq #0x5de120
005de84c  18 c0 8d e5                                      str ip, [sp, #0x18]
005de850  fe c6 f4 eb                                      bl #0x310450
005de854  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de858  30 fe ff ea                                      b #0x5de120
005de85c  10 00 a0 e3                                      mov r0, #0x10
005de860  07 40 d3 e5                                      ldrb r4, [r3, #7]
005de864  62 57 fd eb                                      bl #0x5345f4
005de868  0a 40 c0 e5                                      strb r4, [r0, #0xa]
005de86c  0c 70 80 e5                                      str r7, [r0, #0xc]
005de870  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
005de874  00 30 a0 e3                                      mov r3, #0
005de878  08 10 c0 e5                                      strb r1, [r0, #8]
005de87c  24 20 9d e5                                      ldr r2, [sp, #0x24]
005de880  0b 30 c0 e5                                      strb r3, [r0, #0xb]
005de884  09 20 c0 e5                                      strb r2, [r0, #9]
005de888  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
005de88c  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005de890  04 30 80 e5                                      str r3, [r0, #4]
005de894  00 c0 80 e5                                      str ip, [r0]
005de898  00 00 83 e5                                      str r0, [r3]
005de89c  cc 00 8d e5                                      str r0, [sp, #0xcc]
005de8a0  bb fe ff ea                                      b #0x5de394
005de8a4  98 30 9d e5                                      ldr r3, [sp, #0x98]
005de8a8  00 c0 a0 e3                                      mov ip, #0
005de8ac  b4 cd cd e1                                      strh ip, [sp, #0xd4]
005de8b0  03 00 54 e1                                      cmp r4, r3
005de8b4  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005de8b8  d0 30 8d e5                                      str r3, [sp, #0xd0]
005de8bc  51 00 00 0a                                      beq #0x5dea08
005de8c0  20 00 9d e5                                      ldr r0, [sp, #0x20]
005de8c4  00 00 54 e1                                      cmp r4, r0
005de8c8  80 00 00 0a                                      beq #0x5dead0
005de8cc  00 30 d4 e5                                      ldrb r3, [r4]
005de8d0  00 00 53 e3                                      cmp r3, #0
005de8d4  04 00 00 1a                                      bne #0x5de8ec
005de8d8  04 30 94 e5                                      ldr r3, [r4, #4]
005de8dc  04 30 93 e5                                      ldr r3, [r3, #4]
005de8e0  03 00 54 e1                                      cmp r4, r3
005de8e4  0c a0 94 05                                      ldreq sl, [r4, #0xc]
005de8e8  07 00 00 0a                                      beq #0x5de90c
005de8ec  08 a0 94 e5                                      ldr sl, [r4, #8]
005de8f0  00 00 5a e3                                      cmp sl, #0
005de8f4  01 00 00 1a                                      bne #0x5de900
005de8f8  82 00 00 ea                                      b #0x5deb08
005de8fc  03 a0 a0 e1                                      mov sl, r3
005de900  0c 30 9a e5                                      ldr r3, [sl, #0xc]
005de904  00 00 53 e3                                      cmp r3, #0
005de908  fb ff ff 1a                                      bne #0x5de8fc
005de90c  10 e0 84 e2                                      add lr, r4, #0x10
005de910  28 00 9d e5                                      ldr r0, [sp, #0x28]
005de914  0e 10 a0 e1                                      mov r1, lr
005de918  04 20 a0 e3                                      mov r2, #4
005de91c  40 e0 8d e5                                      str lr, [sp, #0x40]
005de920  2e bf f4 eb                                      bl #0x30e5e0
005de924  a0 3f b0 e1                                      lsrs r3, r0, #0x1f
005de928  07 00 00 0a                                      beq #0x5de94c
005de92c  10 00 8a e2                                      add r0, sl, #0x10
005de930  28 10 9d e5                                      ldr r1, [sp, #0x28]
005de934  04 20 a0 e3                                      mov r2, #4
005de938  18 30 8d e5                                      str r3, [sp, #0x18]
005de93c  27 bf f4 eb                                      bl #0x30e5e0
005de940  00 00 50 e3                                      cmp r0, #0
005de944  18 30 9d e5                                      ldr r3, [sp, #0x18]
005de948  7a 00 00 ba                                      blt #0x5deb38
005de94c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005de950  00 00 5c e3                                      cmp ip, #0
005de954  83 00 00 0a                                      beq #0x5deb68
005de958  0c a0 a0 e1                                      mov sl, ip
005de95c  00 00 00 ea                                      b #0x5de964
005de960  02 a0 a0 e1                                      mov sl, r2
005de964  08 20 9a e5                                      ldr r2, [sl, #8]
005de968  00 00 52 e3                                      cmp r2, #0
005de96c  fb ff ff 1a                                      bne #0x5de960
005de970  00 00 53 e3                                      cmp r3, #0
005de974  06 00 00 0a                                      beq #0x5de994
005de978  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
005de97c  20 10 9d e5                                      ldr r1, [sp, #0x20]
005de980  28 20 9d e5                                      ldr r2, [sp, #0x28]
005de984  02 e9 ff eb                                      bl #0x5d8d94
005de988  c0 40 9d e5                                      ldr r4, [sp, #0xc0]
005de98c  d8 40 8d e5                                      str r4, [sp, #0xd8]
005de990  b6 fe ff ea                                      b #0x5de470
005de994  40 00 9d e5                                      ldr r0, [sp, #0x40]
005de998  28 10 9d e5                                      ldr r1, [sp, #0x28]
005de99c  04 20 a0 e3                                      mov r2, #4
005de9a0  18 c0 8d e5                                      str ip, [sp, #0x18]
005de9a4  0d bf f4 eb                                      bl #0x30e5e0
005de9a8  00 00 50 e3                                      cmp r0, #0
005de9ac  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de9b0  f5 ff ff aa                                      bge #0x5de98c
005de9b4  20 e0 9d e5                                      ldr lr, [sp, #0x20]
005de9b8  0e 00 5a e1                                      cmp sl, lr
005de9bc  06 00 00 0a                                      beq #0x5de9dc
005de9c0  28 00 9d e5                                      ldr r0, [sp, #0x28]
005de9c4  10 10 8a e2                                      add r1, sl, #0x10
005de9c8  04 20 a0 e3                                      mov r2, #4
005de9cc  03 bf f4 eb                                      bl #0x30e5e0
005de9d0  00 00 50 e3                                      cmp r0, #0
005de9d4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005de9d8  e6 ff ff aa                                      bge #0x5de978
005de9dc  00 00 5c e3                                      cmp ip, #0
005de9e0  84 00 00 0a                                      beq #0x5debf8
005de9e4  00 c0 a0 e3                                      mov ip, #0
005de9e8  0a 20 a0 e1                                      mov r2, sl
005de9ec  54 00 9d e5                                      ldr r0, [sp, #0x54]
005de9f0  20 10 9d e5                                      ldr r1, [sp, #0x20]
005de9f4  28 30 9d e5                                      ldr r3, [sp, #0x28]
005de9f8  00 14 8d e8                                      stm sp, {sl, ip}
005de9fc  93 e8 ff eb                                      bl #0x5d8c50
005dea00  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
005dea04  99 fe ff ea                                      b #0x5de470
005dea08  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
005dea0c  00 00 53 e3                                      cmp r3, #0
005dea10  81 00 00 0a                                      beq #0x5dec1c
005dea14  10 a0 84 e2                                      add sl, r4, #0x10
005dea18  28 00 9d e5                                      ldr r0, [sp, #0x28]
005dea1c  0a 10 a0 e1                                      mov r1, sl
005dea20  04 20 a0 e3                                      mov r2, #4
005dea24  ed be f4 eb                                      bl #0x30e5e0
005dea28  00 00 50 e3                                      cmp r0, #0
005dea2c  88 00 00 ba                                      blt #0x5dec54
005dea30  0a 00 a0 e1                                      mov r0, sl
005dea34  28 10 9d e5                                      ldr r1, [sp, #0x28]
005dea38  04 20 a0 e3                                      mov r2, #4
005dea3c  e7 be f4 eb                                      bl #0x30e5e0
005dea40  00 00 50 e3                                      cmp r0, #0
005dea44  d0 ff ff aa                                      bge #0x5de98c
005dea48  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005dea4c  00 00 5c e3                                      cmp ip, #0
005dea50  8a 00 00 0a                                      beq #0x5dec80
005dea54  0c a0 a0 e1                                      mov sl, ip
005dea58  00 00 00 ea                                      b #0x5dea60
005dea5c  03 a0 a0 e1                                      mov sl, r3
005dea60  08 30 9a e5                                      ldr r3, [sl, #8]
005dea64  00 00 53 e3                                      cmp r3, #0
005dea68  fb ff ff 1a                                      bne #0x5dea5c
005dea6c  20 00 9d e5                                      ldr r0, [sp, #0x20]
005dea70  00 00 5a e1                                      cmp sl, r0
005dea74  04 20 a0 01                                      moveq r2, r4
005dea78  54 00 9d 05                                      ldreq r0, [sp, #0x54]
005dea7c  20 10 9d 05                                      ldreq r1, [sp, #0x20]
005dea80  55 00 00 0a                                      beq #0x5debdc
005dea84  28 00 9d e5                                      ldr r0, [sp, #0x28]
005dea88  10 10 8a e2                                      add r1, sl, #0x10
005dea8c  04 20 a0 e3                                      mov r2, #4
005dea90  18 c0 8d e5                                      str ip, [sp, #0x18]
005dea94  d1 be f4 eb                                      bl #0x30e5e0
005dea98  00 00 50 e3                                      cmp r0, #0
005dea9c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005deaa0  64 00 00 aa                                      bge #0x5dec38
005deaa4  00 00 5c e3                                      cmp ip, #0
005deaa8  52 00 00 0a                                      beq #0x5debf8
005deaac  00 e0 a0 e3                                      mov lr, #0
005deab0  0a 20 a0 e1                                      mov r2, sl
005deab4  54 00 9d e5                                      ldr r0, [sp, #0x54]
005deab8  20 10 9d e5                                      ldr r1, [sp, #0x20]
005deabc  28 30 9d e5                                      ldr r3, [sp, #0x28]
005deac0  00 44 8d e8                                      stm sp, {sl, lr}
005deac4  61 e8 ff eb                                      bl #0x5d8c50
005deac8  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
005deacc  67 fe ff ea                                      b #0x5de470
005dead0  9c a0 9d e5                                      ldr sl, [sp, #0x9c]
005dead4  28 10 9d e5                                      ldr r1, [sp, #0x28]
005dead8  04 20 a0 e3                                      mov r2, #4
005deadc  10 00 8a e2                                      add r0, sl, #0x10
005deae0  be be f4 eb                                      bl #0x30e5e0
005deae4  00 00 50 e3                                      cmp r0, #0
005deae8  38 00 00 ba                                      blt #0x5debd0
005deaec  04 10 a0 e1                                      mov r1, r4
005deaf0  64 00 9d e5                                      ldr r0, [sp, #0x64]
005deaf4  28 20 9d e5                                      ldr r2, [sp, #0x28]
005deaf8  a5 e8 ff eb                                      bl #0x5d8d94
005deafc  b8 40 9d e5                                      ldr r4, [sp, #0xb8]
005deb00  d8 40 8d e5                                      str r4, [sp, #0xd8]
005deb04  59 fe ff ea                                      b #0x5de470
005deb08  04 a0 94 e5                                      ldr sl, [r4, #4]
005deb0c  08 30 9a e5                                      ldr r3, [sl, #8]
005deb10  03 00 54 e1                                      cmp r4, r3
005deb14  01 00 00 0a                                      beq #0x5deb20
005deb18  7b ff ff ea                                      b #0x5de90c
005deb1c  03 a0 a0 e1                                      mov sl, r3
005deb20  04 30 9a e5                                      ldr r3, [sl, #4]
005deb24  08 20 93 e5                                      ldr r2, [r3, #8]
005deb28  0a 00 52 e1                                      cmp r2, sl
005deb2c  fa ff ff 0a                                      beq #0x5deb1c
005deb30  03 a0 a0 e1                                      mov sl, r3
005deb34  74 ff ff ea                                      b #0x5de90c
005deb38  0c c0 9a e5                                      ldr ip, [sl, #0xc]
005deb3c  00 00 5c e3                                      cmp ip, #0
005deb40  19 00 00 0a                                      beq #0x5debac
005deb44  04 20 a0 e1                                      mov r2, r4
005deb48  00 c0 a0 e3                                      mov ip, #0
005deb4c  54 00 9d e5                                      ldr r0, [sp, #0x54]
005deb50  20 10 9d e5                                      ldr r1, [sp, #0x20]
005deb54  28 30 9d e5                                      ldr r3, [sp, #0x28]
005deb58  10 10 8d e8                                      stm sp, {r4, ip}
005deb5c  3b e8 ff eb                                      bl #0x5d8c50
005deb60  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
005deb64  41 fe ff ea                                      b #0x5de470
005deb68  04 20 94 e5                                      ldr r2, [r4, #4]
005deb6c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005deb70  01 00 54 e1                                      cmp r4, r1
005deb74  04 a0 a0 11                                      movne sl, r4
005deb78  01 00 00 0a                                      beq #0x5deb84
005deb7c  06 00 00 ea                                      b #0x5deb9c
005deb80  01 20 a0 e1                                      mov r2, r1
005deb84  04 10 92 e5                                      ldr r1, [r2, #4]
005deb88  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005deb8c  02 00 50 e1                                      cmp r0, r2
005deb90  fa ff ff 0a                                      beq #0x5deb80
005deb94  02 a0 a0 e1                                      mov sl, r2
005deb98  01 20 a0 e1                                      mov r2, r1
005deb9c  0c 10 9a e5                                      ldr r1, [sl, #0xc]
005deba0  01 00 52 e1                                      cmp r2, r1
005deba4  02 a0 a0 11                                      movne sl, r2
005deba8  70 ff ff ea                                      b #0x5de970
005debac  0a 20 a0 e1                                      mov r2, sl
005debb0  54 00 9d e5                                      ldr r0, [sp, #0x54]
005debb4  20 10 9d e5                                      ldr r1, [sp, #0x20]
005debb8  28 30 9d e5                                      ldr r3, [sp, #0x28]
005debbc  00 c0 8d e5                                      str ip, [sp]
005debc0  04 a0 8d e5                                      str sl, [sp, #4]
005debc4  21 e8 ff eb                                      bl #0x5d8c50
005debc8  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
005debcc  27 fe ff ea                                      b #0x5de470
005debd0  54 00 9d e5                                      ldr r0, [sp, #0x54]
005debd4  04 10 a0 e1                                      mov r1, r4
005debd8  0a 20 a0 e1                                      mov r2, sl
005debdc  00 c0 a0 e3                                      mov ip, #0
005debe0  28 30 9d e5                                      ldr r3, [sp, #0x28]
005debe4  04 40 8d e5                                      str r4, [sp, #4]
005debe8  00 c0 8d e5                                      str ip, [sp]
005debec  17 e8 ff eb                                      bl #0x5d8c50
005debf0  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
005debf4  1d fe ff ea                                      b #0x5de470
005debf8  04 20 a0 e1                                      mov r2, r4
005debfc  54 00 9d e5                                      ldr r0, [sp, #0x54]
005dec00  20 10 9d e5                                      ldr r1, [sp, #0x20]
005dec04  28 30 9d e5                                      ldr r3, [sp, #0x28]
005dec08  04 40 8d e5                                      str r4, [sp, #4]
005dec0c  00 c0 8d e5                                      str ip, [sp]
005dec10  0e e8 ff eb                                      bl #0x5d8c50
005dec14  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
005dec18  14 fe ff ea                                      b #0x5de470
005dec1c  58 00 9d e5                                      ldr r0, [sp, #0x58]
005dec20  20 10 9d e5                                      ldr r1, [sp, #0x20]
005dec24  28 20 9d e5                                      ldr r2, [sp, #0x28]
005dec28  59 e8 ff eb                                      bl #0x5d8d94
005dec2c  a8 40 9d e5                                      ldr r4, [sp, #0xa8]
005dec30  d8 40 8d e5                                      str r4, [sp, #0xd8]
005dec34  0d fe ff ea                                      b #0x5de470
005dec38  68 00 9d e5                                      ldr r0, [sp, #0x68]
005dec3c  20 10 9d e5                                      ldr r1, [sp, #0x20]
005dec40  28 20 9d e5                                      ldr r2, [sp, #0x28]
005dec44  52 e8 ff eb                                      bl #0x5d8d94
005dec48  b0 40 9d e5                                      ldr r4, [sp, #0xb0]
005dec4c  d8 40 8d e5                                      str r4, [sp, #0xd8]
005dec50  06 fe ff ea                                      b #0x5de470
005dec54  04 20 a0 e1                                      mov r2, r4
005dec58  00 e0 a0 e3                                      mov lr, #0
005dec5c  54 00 9d e5                                      ldr r0, [sp, #0x54]
005dec60  20 10 9d e5                                      ldr r1, [sp, #0x20]
005dec64  28 30 9d e5                                      ldr r3, [sp, #0x28]
005dec68  10 40 8d e8                                      stm sp, {r4, lr}
005dec6c  f7 e7 ff eb                                      bl #0x5d8c50
005dec70  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
005dec74  fd fd ff ea                                      b #0x5de470
005dec78  0a 00 a0 e1                                      mov r0, sl
005dec7c  4a fe ff ea                                      b #0x5de5ac
005dec80  04 30 94 e5                                      ldr r3, [r4, #4]
005dec84  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005dec88  02 00 54 e1                                      cmp r4, r2
005dec8c  04 a0 a0 11                                      movne sl, r4
005dec90  04 00 00 1a                                      bne #0x5deca8
005dec94  03 a0 a0 e1                                      mov sl, r3
005dec98  04 30 93 e5                                      ldr r3, [r3, #4]
005dec9c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005deca0  0a 00 52 e1                                      cmp r2, sl
005deca4  fa ff ff 0a                                      beq #0x5dec94
005deca8  0c 20 9a e5                                      ldr r2, [sl, #0xc]
005decac  02 00 53 e1                                      cmp r3, r2
005decb0  03 a0 a0 11                                      movne sl, r3
005decb4  6c ff ff ea                                      b #0x5dea6c
005decb8  78 c0 9d e5                                      ldr ip, [sp, #0x78]
005decbc  0c 01 a0 e1                                      lsl r0, ip, #2
005decc0  4b 56 fd eb                                      bl #0x5345f4
005decc4  44 e0 9d e5                                      ldr lr, [sp, #0x44]
005decc8  90 20 9e e5                                      ldr r2, [lr, #0x90]
005deccc  4c 30 92 e5                                      ldr r3, [r2, #0x4c]
005decd0  00 00 53 e3                                      cmp r3, #0
005decd4  6c 00 8d 05                                      streq r0, [sp, #0x6c]
005decd8  74 40 8d 05                                      streq r4, [sp, #0x74]
005decdc  51 fd ff 0a                                      beq #0x5de228
005dece0  80 10 9f e5                                      ldr r1, [pc, #0x80]
005dece4  74 40 8d e5                                      str r4, [sp, #0x74]
005dece8  00 20 a0 e1                                      mov r2, r0
005decec  04 c0 a0 e1                                      mov ip, r4
005decf0  18 e0 93 e5                                      ldr lr, [r3, #0x18]
005decf4  00 00 5e e3                                      cmp lr, #0
005decf8  07 00 00 0a                                      beq #0x5ded1c
005decfc  04 30 82 e4                                      str r3, [r2], #4
005ded00  70 e0 9d e5                                      ldr lr, [sp, #0x70]
005ded04  0c c0 83 e5                                      str ip, [r3, #0xc]
005ded08  08 40 93 e5                                      ldr r4, [r3, #8]
005ded0c  01 60 9e e7                                      ldr r6, [lr, r1]
005ded10  06 e0 d3 e5                                      ldrb lr, [r3, #6]
005ded14  0e e0 d6 e7                                      ldrb lr, [r6, lr]
005ded18  94 ce 2c e0                                      mla ip, r4, lr, ip
005ded1c  10 30 93 e5                                      ldr r3, [r3, #0x10]
005ded20  00 00 53 e3                                      cmp r3, #0
005ded24  f1 ff ff 1a                                      bne #0x5decf0
005ded28  44 10 9d e5                                      ldr r1, [sp, #0x44]
005ded2c  74 c0 8d e5                                      str ip, [sp, #0x74]
005ded30  90 20 91 e5                                      ldr r2, [r1, #0x90]
005ded34  78 50 8d e5                                      str r5, [sp, #0x78]
005ded38  6c 00 8d e5                                      str r0, [sp, #0x6c]
005ded3c  39 fd ff ea                                      b #0x5de228
; mapping-symbol data/literal pool
005ded40  c8 6c 3b 00 ac 40 00 00 dc 30 00 00 34 34 30 00  .byte 0xc8, 0x6c, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x30, 0x00, 0x00, 0x34, 0x34, 0x30, 0x00
005ded50  f8 33 30 00 9c 33 30 00 38 33 30 00 20 2b 30 00  .byte 0xf8, 0x33, 0x30, 0x00, 0x9c, 0x33, 0x30, 0x00, 0x38, 0x33, 0x30, 0x00, 0x20, 0x2b, 0x30, 0x00
005ded60  6c 31 30 00 a0 28 30 00 c0 15 00 00 e0 25 30 00  .byte 0x6c, 0x31, 0x30, 0x00, 0xa0, 0x28, 0x30, 0x00, 0xc0, 0x15, 0x00, 0x00, 0xe0, 0x25, 0x30, 0x00
005ded70  48 24 30 00                                      .byte 0x48, 0x24, 0x30, 0x00
; decoder-mode: arm
005ded74  10 10 1f e5                                      ldr r1, [pc, #-0x10]
005ded78  03 00 a0 e3                                      mov r0, #3
005ded7c  e0 60 8d e2                                      add r6, sp, #0xe0
005ded80  01 10 8f e0                                      add r1, pc, r1
005ded84  aa b0 00 eb                                      bl #0x60b034
005ded88  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
005ded8c  dc 00 8d e2                                      add r0, sp, #0xdc
005ded90  e8 70 8d e5                                      str r7, [sp, #0xe8]
005ded94  dc 30 8d e5                                      str r3, [sp, #0xdc]
005ded98  46 cd f5 eb                                      bl #0x3522b8
005ded9c  44 00 9d e5                                      ldr r0, [sp, #0x44]
005deda0  04 10 a0 e1                                      mov r1, r4
005deda4  03 ec ff eb                                      bl #0x5d9db8
005deda8  04 10 a0 e1                                      mov r1, r4
005dedac  07 20 a0 e1                                      mov r2, r7
005dedb0  44 00 9d e5                                      ldr r0, [sp, #0x44]
005dedb4  6e ec ff eb                                      bl #0x5d9f74
005dedb8  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
005dedbc  06 00 a0 e1                                      mov r0, r6
005dedc0  44 10 9d e5                                      ldr r1, [sp, #0x44]
005dedc4  08 20 93 e5                                      ldr r2, [r3, #8]
005dedc8  d6 fb ff eb                                      bl #0x5ddd28
005dedcc  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005dedd0  06 00 a0 e1                                      mov r0, r6
005dedd4  bc 40 d3 e1                                      ldrh r4, [r3, #0xc]
005dedd8  36 cd f5 eb                                      bl #0x3522b8
005deddc  2d fe ff ea                                      b #0x5de698
005dede0  20 00 9d e5                                      ldr r0, [sp, #0x20]
005dede4  94 10 9d e5                                      ldr r1, [sp, #0x94]
005dede8  89 e4 ff eb                                      bl #0x5d8014
005dedec  20 e0 9d e5                                      ldr lr, [sp, #0x20]
005dedf0  00 30 a0 e3                                      mov r3, #0
005dedf4  a0 30 8d e5                                      str r3, [sp, #0xa0]
005dedf8  9c e0 8d e5                                      str lr, [sp, #0x9c]
005dedfc  98 e0 8d e5                                      str lr, [sp, #0x98]
005dee00  94 30 8d e5                                      str r3, [sp, #0x94]
005dee04  36 fe ff ea                                      b #0x5de6e4
005dee08  a0 10 1f e5                                      ldr r1, [pc, #-0xa0]
005dee0c  44 00 9d e5                                      ldr r0, [sp, #0x44]
005dee10  01 10 8f e0                                      add r1, pc, r1
005dee14  29 fb ff eb                                      bl #0x5ddac0
005dee18  1c fc ff ea                                      b #0x5dde90
005dee1c  3b bd f4 eb                                      bl #0x30e310

; FUNCTION 0x00631b58, declared_size=108, range_size=108, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZNK6glitch5video24CMaterialRendererManager14getParameterIDEPKc
; demangled: glitch::video::CMaterialRendererManager::getParameterID(char const*) const
; decoder-mode: arm
00631b58  10 40 2d e9                                      push {r4, lr}
00631b5c  00 40 a0 e1                                      mov r4, r0
00631b60  08 d0 4d e2                                      sub sp, sp, #8
00631b64  01 00 a0 e1                                      mov r0, r1
00631b68  00 10 a0 e3                                      mov r1, #0
00631b6c  40 cd 01 eb                                      bl #0x6a5074
00631b70  00 00 50 e3                                      cmp r0, #0
00631b74  04 00 8d e5                                      str r0, [sp, #4]
00631b78  00 30 90 15                                      ldrne r3, [r0]
00631b7c  04 10 8d e2                                      add r1, sp, #4
00631b80  01 30 83 12                                      addne r3, r3, #1
00631b84  00 30 80 15                                      strne r3, [r0]
00631b88  04 00 a0 e1                                      mov r0, r4
00631b8c  1c a8 fe eb                                      bl #0x5dbc04
00631b90  00 40 a0 e1                                      mov r4, r0
00631b94  04 00 9d e5                                      ldr r0, [sp, #4]
00631b98  00 00 50 e3                                      cmp r0, #0
00631b9c  05 00 00 0a                                      beq #0x631bb8
00631ba0  00 30 90 e5                                      ldr r3, [r0]
00631ba4  01 30 43 e2                                      sub r3, r3, #1
00631ba8  00 00 53 e3                                      cmp r3, #0
00631bac  00 30 80 e5                                      str r3, [r0]
00631bb0  00 00 00 1a                                      bne #0x631bb8
00631bb4  78 cc 01 eb                                      bl #0x6a4d9c
00631bb8  04 00 a0 e1                                      mov r0, r4
00631bbc  08 d0 8d e2                                      add sp, sp, #8
00631bc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00631bc4, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager13bindParameterENS1_12STemporaryIDES2_htNS0_14E_SHADER_STAGEE
; demangled: glitch::video::CMaterialRendererManager::bindParameter(glitch::video::CMaterialRendererManager::STemporaryID, glitch::video::CMaterialRendererManager::STemporaryID, unsigned char, unsigned short, glitch::video::E_SHADER_STAGE)
; decoder-mode: arm
00631bc4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00631bc8  10 d0 4d e2                                      sub sp, sp, #0x10
00631bcc  02 60 a0 e1                                      mov r6, r2
00631bd0  03 50 a0 e1                                      mov r5, r3
00631bd4  00 80 a0 e1                                      mov r8, r0
00631bd8  01 70 a0 e1                                      mov r7, r1
00631bdc  b8 42 dd e1                                      ldrh r4, [sp, #0x28]
00631be0  4b 98 fe eb                                      bl #0x5d7d14
00631be4  00 00 50 e3                                      cmp r0, #0
00631be8  07 00 00 0a                                      beq #0x631c0c
00631bec  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00631bf0  b4 20 d0 e1                                      ldrh r2, [r0, #4]
00631bf4  07 10 a0 e1                                      mov r1, r7
00631bf8  08 00 a0 e1                                      mov r0, r8
00631bfc  06 30 a0 e1                                      mov r3, r6
00631c00  00 50 8d e5                                      str r5, [sp]
00631c04  10 10 8d e9                                      stmib sp, {r4, ip}
00631c08  0b a3 fe eb                                      bl #0x5da83c
00631c0c  10 d0 8d e2                                      add sp, sp, #0x10
00631c10  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00631c50, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::CMaterialRendererManager
; alias: _ZN6glitch5video24CMaterialRendererManager20addParameterInternalEPKcNS0_23E_SHADER_PARAMETER_TYPEENS0_29E_SHADER_PARAMETER_VALUE_TYPEEjb.clone.3
; demangled: glitch::video::CMaterialRendererManager::addParameterInternal(char const*, glitch::video::E_SHADER_PARAMETER_TYPE, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
00631c50  70 40 2d e9                                      push {r4, r5, r6, lr}
00631c54  90 c0 90 e5                                      ldr ip, [r0, #0x90]
00631c58  00 40 a0 e1                                      mov r4, r0
00631c5c  10 d0 4d e2                                      sub sp, sp, #0x10
00631c60  00 00 5c e3                                      cmp ip, #0
00631c64  02 60 a0 e1                                      mov r6, r2
00631c68  03 50 a0 e1                                      mov r5, r3
00631c6c  0c 40 a0 01                                      moveq r4, ip
00631c70  17 00 00 0a                                      beq #0x631cd4
00631c74  01 00 a0 e1                                      mov r0, r1
00631c78  01 10 a0 e3                                      mov r1, #1
00631c7c  fc cc 01 eb                                      bl #0x6a5074
00631c80  00 00 50 e3                                      cmp r0, #0
00631c84  0c 00 8d e5                                      str r0, [sp, #0xc]
00631c88  00 30 90 15                                      ldrne r3, [r0]
00631c8c  01 c0 a0 e3                                      mov ip, #1
00631c90  06 20 a0 e1                                      mov r2, r6
00631c94  01 30 83 12                                      addne r3, r3, #1
00631c98  00 30 80 15                                      strne r3, [r0]
00631c9c  0c 10 8d e2                                      add r1, sp, #0xc
00631ca0  04 00 a0 e1                                      mov r0, r4
00631ca4  ff 30 a0 e3                                      mov r3, #0xff
00631ca8  20 10 8d e8                                      stm sp, {r5, ip}
00631cac  2c ac fe eb                                      bl #0x5dcd64
00631cb0  00 40 a0 e1                                      mov r4, r0
00631cb4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00631cb8  00 00 50 e3                                      cmp r0, #0
00631cbc  04 00 00 0a                                      beq #0x631cd4
00631cc0  00 30 90 e5                                      ldr r3, [r0]
00631cc4  01 30 43 e2                                      sub r3, r3, #1
00631cc8  00 00 53 e3                                      cmp r3, #0
00631ccc  00 30 80 e5                                      str r3, [r0]
00631cd0  02 00 00 0a                                      beq #0x631ce0
00631cd4  04 00 a0 e1                                      mov r0, r4
00631cd8  10 d0 8d e2                                      add sp, sp, #0x10
00631cdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00631ce0  2d cc 01 eb                                      bl #0x6a4d9c
00631ce4  fa ff ff ea                                      b #0x631cd4
