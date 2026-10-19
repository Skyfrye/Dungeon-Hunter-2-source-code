; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b9b80, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CNullShaderManager
; alias: _ZN6glitch5video18CNullShaderManagerD1Ev
; demangled: glitch::video::CNullShaderManager::~CNullShaderManager()
; decoder-mode: arm
005b9b80  24 30 9f e5                                      ldr r3, [pc, #0x24]
005b9b84  24 20 9f e5                                      ldr r2, [pc, #0x24]
005b9b88  10 40 2d e9                                      push {r4, lr}
005b9b8c  03 30 8f e0                                      add r3, pc, r3
005b9b90  02 20 93 e7                                      ldr r2, [r3, r2]
005b9b94  00 40 a0 e1                                      mov r4, r0
005b9b98  08 20 82 e2                                      add r2, r2, #8
005b9b9c  00 20 80 e5                                      str r2, [r0]
005b9ba0  25 b3 00 eb                                      bl #0x5e683c
005b9ba4  04 00 a0 e1                                      mov r0, r4
005b9ba8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b9bac  04 af 3d 00 80 38 00 00                          .byte 0x04, 0xaf, 0x3d, 0x00, 0x80, 0x38, 0x00, 0x00

; FUNCTION 0x005b9bb4, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CNullShaderManager
; alias: _ZN6glitch5video18CNullShaderManager17createEmptyShaderEPKc
; demangled: glitch::video::CNullShaderManager::createEmptyShader(char const*)
; decoder-mode: arm
005b9bb4  70 40 2d e9                                      push {r4, r5, r6, lr}
005b9bb8  00 50 a0 e1                                      mov r5, r0
005b9bbc  01 60 a0 e1                                      mov r6, r1
005b9bc0  50 00 a0 e3                                      mov r0, #0x50
005b9bc4  00 10 a0 e3                                      mov r1, #0
005b9bc8  77 e9 fd eb                                      bl #0x5341ac
005b9bcc  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
005b9bd0  00 40 a0 e1                                      mov r4, r0
005b9bd4  a5 9a 04 eb                                      bl #0x6e0670
005b9bd8  00 00 54 e3                                      cmp r4, #0
005b9bdc  00 40 85 e5                                      str r4, [r5]
005b9be0  04 30 94 15                                      ldrne r3, [r4, #4]
005b9be4  05 00 a0 e1                                      mov r0, r5
005b9be8  01 30 83 12                                      addne r3, r3, #1
005b9bec  04 30 84 15                                      strne r3, [r4, #4]
005b9bf0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005b9bf4, declared_size=248, range_size=248, mode=arm
; class-group: glitch::video::CNullShaderManager
; alias: _ZN6glitch5video18CNullShaderManager12createShaderEPKc
; demangled: glitch::video::CNullShaderManager::createShader(char const*)
; decoder-mode: arm
005b9bf4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b9bf8  01 40 a0 e1                                      mov r4, r1
005b9bfc  08 d0 4d e2                                      sub sp, sp, #8
005b9c00  00 50 a0 e1                                      mov r5, r0
005b9c04  04 00 81 e2                                      add r0, r1, #4
005b9c08  02 10 a0 e1                                      mov r1, r2
005b9c0c  02 70 a0 e1                                      mov r7, r2
005b9c10  6e 7a 00 eb                                      bl #0x5d85d0
005b9c14  c8 60 9f e5                                      ldr r6, [pc, #0xc8]
005b9c18  ff 3f 0f e3                                      movw r3, #0xffff
005b9c1c  03 00 50 e1                                      cmp r0, r3
005b9c20  06 60 8f e0                                      add r6, pc, r6
005b9c24  12 00 00 0a                                      beq #0x5b9c74
005b9c28  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005b9c2c  20 20 94 e5                                      ldr r2, [r4, #0x20]
005b9c30  02 20 63 e0                                      rsb r2, r3, r2
005b9c34  c2 01 50 e1                                      cmp r0, r2, asr #3
005b9c38  80 01 83 30                                      addlo r0, r3, r0, lsl #3
005b9c3c  09 00 00 2a                                      bhs #0x5b9c68
005b9c40  00 30 90 e5                                      ldr r3, [r0]
005b9c44  00 00 53 e3                                      cmp r3, #0
005b9c48  00 30 85 e5                                      str r3, [r5]
005b9c4c  02 00 00 0a                                      beq #0x5b9c5c
005b9c50  04 20 93 e5                                      ldr r2, [r3, #4]
005b9c54  01 20 82 e2                                      add r2, r2, #1
005b9c58  04 20 83 e5                                      str r2, [r3, #4]
005b9c5c  05 00 a0 e1                                      mov r0, r5
005b9c60  08 d0 8d e2                                      add sp, sp, #8
005b9c64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b9c68  78 30 9f e5                                      ldr r3, [pc, #0x78]
005b9c6c  03 00 96 e7                                      ldr r0, [r6, r3]
005b9c70  f2 ff ff ea                                      b #0x5b9c40
005b9c74  00 10 a0 e3                                      mov r1, #0
005b9c78  50 00 a0 e3                                      mov r0, #0x50
005b9c7c  b8 82 d4 e1                                      ldrh r8, [r4, #0x28]
005b9c80  49 e9 fd eb                                      bl #0x5341ac
005b9c84  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005b9c88  08 10 a0 e1                                      mov r1, r8
005b9c8c  07 20 a0 e1                                      mov r2, r7
005b9c90  00 60 a0 e1                                      mov r6, r0
005b9c94  99 9a 04 eb                                      bl #0x6e0700
005b9c98  00 00 56 e3                                      cmp r6, #0
005b9c9c  04 60 8d e5                                      str r6, [sp, #4]
005b9ca0  04 30 96 15                                      ldrne r3, [r6, #4]
005b9ca4  04 00 a0 e1                                      mov r0, r4
005b9ca8  04 10 8d e2                                      add r1, sp, #4
005b9cac  01 30 83 12                                      addne r3, r3, #1
005b9cb0  04 30 86 15                                      strne r3, [r6, #4]
005b9cb4  77 b5 00 eb                                      bl #0x5e7298
005b9cb8  04 00 9d e5                                      ldr r0, [sp, #4]
005b9cbc  00 00 50 e3                                      cmp r0, #0
005b9cc0  00 00 85 e5                                      str r0, [r5]
005b9cc4  04 30 90 15                                      ldrne r3, [r0, #4]
005b9cc8  01 30 83 12                                      addne r3, r3, #1
005b9ccc  04 30 80 15                                      strne r3, [r0, #4]
005b9cd0  04 00 9d 15                                      ldrne r0, [sp, #4]
005b9cd4  00 00 50 e3                                      cmp r0, #0
005b9cd8  df ff ff 0a                                      beq #0x5b9c5c
005b9cdc  28 8e f5 eb                                      bl #0x31d584
005b9ce0  dd ff ff ea                                      b #0x5b9c5c
; mapping-symbol data/literal pool
005b9ce4  70 ae 3d 00 fc 49 00 00                          .byte 0x70, 0xae, 0x3d, 0x00, 0xfc, 0x49, 0x00, 0x00

; FUNCTION 0x005b9cec, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullShaderManager
; alias: _ZN6glitch5video18CNullShaderManager19removeUnusedShadersEv
; demangled: glitch::video::CNullShaderManager::removeUnusedShaders()
; decoder-mode: arm
005b9cec  af b2 00 ea                                      b #0x5e67b0

; FUNCTION 0x005b9cf0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CNullShaderManager
; alias: _ZN6glitch5video18CNullShaderManagerD0Ev
; demangled: glitch::video::CNullShaderManager::~CNullShaderManager()
; decoder-mode: arm
005b9cf0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005b9cf4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005b9cf8  10 40 2d e9                                      push {r4, lr}
005b9cfc  03 30 8f e0                                      add r3, pc, r3
005b9d00  02 20 93 e7                                      ldr r2, [r3, r2]
005b9d04  00 40 a0 e1                                      mov r4, r0
005b9d08  08 20 82 e2                                      add r2, r2, #8
005b9d0c  00 20 80 e5                                      str r2, [r0]
005b9d10  c9 b2 00 eb                                      bl #0x5e683c
005b9d14  04 00 a0 e1                                      mov r0, r4
005b9d18  64 51 f5 eb                                      bl #0x30e2b0
005b9d1c  04 00 a0 e1                                      mov r0, r4
005b9d20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b9d24  94 ad 3d 00 80 38 00 00                          .byte 0x94, 0xad, 0x3d, 0x00, 0x80, 0x38, 0x00, 0x00
