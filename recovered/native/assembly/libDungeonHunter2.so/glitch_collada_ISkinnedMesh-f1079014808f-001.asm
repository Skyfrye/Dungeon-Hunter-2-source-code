; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00669b64, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::ISkinnedMesh
; alias: _ZN6glitch7collada12ISkinnedMesh20setIsSkinningEnabledEb
; demangled: glitch::collada::ISkinnedMesh::setIsSkinningEnabled(bool)
; decoder-mode: arm
00669b64  18 10 c0 e5                                      strb r1, [r0, #0x18]
00669b68  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669b6c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::ISkinnedMesh
; alias: _ZN6glitch7collada12ISkinnedMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE
; demangled: glitch::collada::ISkinnedMesh::setBoundingBox(glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
00669b6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669b70, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::ISkinnedMesh
; alias: _ZN6glitch7collada12ISkinnedMesh12setTransformEPNS_5video12IVideoDriverERKNS_4core8CMatrix4IfEE
; demangled: glitch::collada::ISkinnedMesh::setTransform(glitch::video::IVideoDriver*, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
00669b70  10 40 2d e9                                      push {r4, lr}
00669b74  18 30 d0 e5                                      ldrb r3, [r0, #0x18]
00669b78  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
00669b7c  00 00 53 e3                                      cmp r3, #0
00669b80  0c c0 8f e0                                      add ip, pc, ip
00669b84  07 00 00 0a                                      beq #0x669ba8
00669b88  40 20 9f e5                                      ldr r2, [pc, #0x40]
00669b8c  01 00 a0 e1                                      mov r0, r1
00669b90  00 30 91 e5                                      ldr r3, [r1]
00669b94  02 20 9c e7                                      ldr r2, [ip, r2]
00669b98  01 10 a0 e3                                      mov r1, #1
00669b9c  0f e0 a0 e1                                      mov lr, pc
00669ba0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00669ba4  10 80 bd e8                                      pop {r4, pc}
00669ba8  14 30 90 e5                                      ldr r3, [r0, #0x14]
00669bac  01 00 13 e3                                      tst r3, #1
00669bb0  f4 ff ff 1a                                      bne #0x669b88
00669bb4  01 00 a0 e1                                      mov r0, r1
00669bb8  00 30 91 e5                                      ldr r3, [r1]
00669bbc  01 10 a0 e3                                      mov r1, #1
00669bc0  0f e0 a0 e1                                      mov lr, pc
00669bc4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00669bc8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00669bcc  10 af 32 00 30 28 00 00                          .byte 0x10, 0xaf, 0x32, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x00669bf4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::ISkinnedMesh
; alias: _ZN6glitch7collada12ISkinnedMeshD1Ev
; demangled: glitch::collada::ISkinnedMesh::~ISkinnedMesh()
; decoder-mode: arm
00669bf4  24 30 9f e5                                      ldr r3, [pc, #0x24]
00669bf8  24 20 9f e5                                      ldr r2, [pc, #0x24]
00669bfc  10 40 2d e9                                      push {r4, lr}
00669c00  03 30 8f e0                                      add r3, pc, r3
00669c04  02 20 93 e7                                      ldr r2, [r3, r2]
00669c08  00 40 a0 e1                                      mov r4, r0
00669c0c  08 20 82 e2                                      add r2, r2, #8
00669c10  0c 20 80 e4                                      str r2, [r0], #0xc
00669c14  16 be fe eb                                      bl #0x619474
00669c18  04 00 a0 e1                                      mov r0, r4
00669c1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00669c20  90 ae 32 00 04 37 00 00                          .byte 0x90, 0xae, 0x32, 0x00, 0x04, 0x37, 0x00, 0x00

; FUNCTION 0x00669c28, declared_size=292, range_size=292, mode=arm
; class-group: glitch::collada::ISkinnedMesh
; alias: _ZN6glitch7collada12ISkinnedMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj
; demangled: glitch::collada::ISkinnedMesh::releaseProcessBuffer(glitch::video::IVideoDriver*, unsigned int)
; decoder-mode: arm
00669c28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00669c2c  18 80 d0 e5                                      ldrb r8, [r0, #0x18]
00669c30  1c d0 4d e2                                      sub sp, sp, #0x1c
00669c34  00 40 a0 e1                                      mov r4, r0
00669c38  00 00 58 e3                                      cmp r8, #0
00669c3c  01 60 a0 e1                                      mov r6, r1
00669c40  02 50 a0 e1                                      mov r5, r2
00669c44  3b 00 00 0a                                      beq #0x669d38
00669c48  00 30 94 e5                                      ldr r3, [r4]
00669c4c  14 00 8d e2                                      add r0, sp, #0x14
00669c50  04 10 a0 e1                                      mov r1, r4
00669c54  05 20 a0 e1                                      mov r2, r5
00669c58  0f e0 a0 e1                                      mov lr, pc
00669c5c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00669c60  14 70 9d e5                                      ldr r7, [sp, #0x14]
00669c64  00 00 57 e3                                      cmp r7, #0
00669c68  01 00 00 0a                                      beq #0x669c74
00669c6c  07 00 a0 e1                                      mov r0, r7
00669c70  43 ce f2 eb                                      bl #0x31d584
00669c74  00 c0 96 e5                                      ldr ip, [r6]
00669c78  10 a0 8d e2                                      add sl, sp, #0x10
00669c7c  05 20 a0 e1                                      mov r2, r5
00669c80  04 10 a0 e1                                      mov r1, r4
00669c84  0a 00 a0 e1                                      mov r0, sl
00669c88  00 30 94 e5                                      ldr r3, [r4]
00669c8c  f4 b1 9c e5                                      ldr fp, [ip, #0x1f4]
00669c90  24 90 97 e5                                      ldr sb, [r7, #0x24]
00669c94  0f e0 a0 e1                                      mov lr, pc
00669c98  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00669c9c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00669ca0  1f 50 05 e2                                      and r5, r5, #0x1f
00669ca4  03 00 a0 e1                                      mov r0, r3
00669ca8  04 30 93 e5                                      ldr r3, [r3, #4]
00669cac  0c 30 8d e5                                      str r3, [sp, #0xc]
00669cb0  1f 70 fd eb                                      bl #0x5c5d34
00669cb4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00669cb8  0c 20 a0 e3                                      mov r2, #0xc
00669cbc  01 c0 00 e3                                      movw ip, #1
00669cc0  18 30 93 e5                                      ldr r3, [r3, #0x18]
00669cc4  02 c0 40 e3                                      movt ip, #2
00669cc8  00 e0 a0 e3                                      mov lr, #0
00669ccc  92 30 23 e0                                      mla r3, r2, r0, r3
00669cd0  14 20 87 e2                                      add r2, r7, #0x14
00669cd4  08 30 93 e5                                      ldr r3, [r3, #8]
00669cd8  0e 10 a0 e1                                      mov r1, lr
00669cdc  20 00 93 e5                                      ldr r0, [r3, #0x20]
00669ce0  09 30 a0 e1                                      mov r3, sb
00669ce4  38 70 90 e5                                      ldr r7, [r0, #0x38]
00669ce8  06 00 a0 e1                                      mov r0, r6
00669cec  04 e0 8d e5                                      str lr, [sp, #4]
00669cf0  0c c0 07 e0                                      and ip, r7, ip
00669cf4  00 c0 8d e5                                      str ip, [sp]
00669cf8  3b ff 2f e1                                      blx fp
00669cfc  0a 00 a0 e1                                      mov r0, sl
00669d00  b8 9b f2 eb                                      bl #0x310be8
00669d04  14 30 94 e5                                      ldr r3, [r4, #0x14]
00669d08  01 20 a0 e3                                      mov r2, #1
00669d0c  00 00 58 e3                                      cmp r8, #0
00669d10  12 55 c3 e1                                      bic r5, r3, r2, lsl r5
00669d14  14 50 84 e5                                      str r5, [r4, #0x14]
00669d18  04 00 00 1a                                      bne #0x669d30
00669d1c  04 00 a0 e1                                      mov r0, r4
00669d20  08 10 a0 e1                                      mov r1, r8
00669d24  00 30 94 e5                                      ldr r3, [r4]
00669d28  0f e0 a0 e1                                      mov lr, pc
00669d2c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00669d30  1c d0 8d e2                                      add sp, sp, #0x1c
00669d34  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00669d38  00 30 90 e5                                      ldr r3, [r0]
00669d3c  01 10 a0 e3                                      mov r1, #1
00669d40  0f e0 a0 e1                                      mov lr, pc
00669d44  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00669d48  be ff ff ea                                      b #0x669c48

; FUNCTION 0x00669d6c, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::ISkinnedMesh
; alias: _ZNK6glitch7collada12ISkinnedMesh12getTransformERKNS_4core8CMatrix4IfEE
; demangled: glitch::collada::ISkinnedMesh::getTransform(glitch::core::CMatrix4<float> const&) const
; decoder-mode: arm
00669d6c  10 40 2d e9                                      push {r4, lr}
00669d70  18 c0 d1 e5                                      ldrb ip, [r1, #0x18]
00669d74  40 30 9f e5                                      ldr r3, [pc, #0x40]
00669d78  00 40 a0 e1                                      mov r4, r0
00669d7c  00 00 5c e3                                      cmp ip, #0
00669d80  03 30 8f e0                                      add r3, pc, r3
00669d84  05 00 00 0a                                      beq #0x669da0
00669d88  30 20 9f e5                                      ldr r2, [pc, #0x30]
00669d8c  04 00 a0 e1                                      mov r0, r4
00669d90  02 10 93 e7                                      ldr r1, [r3, r2]
00669d94  ec ff ff eb                                      bl #0x669d4c
00669d98  04 00 a0 e1                                      mov r0, r4
00669d9c  10 80 bd e8                                      pop {r4, pc}
00669da0  14 10 91 e5                                      ldr r1, [r1, #0x14]
00669da4  01 00 11 e3                                      tst r1, #1
00669da8  f6 ff ff 1a                                      bne #0x669d88
00669dac  02 10 a0 e1                                      mov r1, r2
00669db0  e5 ff ff eb                                      bl #0x669d4c
00669db4  04 00 a0 e1                                      mov r0, r4
00669db8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00669dbc  10 ad 32 00 30 28 00 00                          .byte 0x10, 0xad, 0x32, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x00669dc4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::ISkinnedMesh
; alias: _ZN6glitch7collada12ISkinnedMeshD0Ev
; demangled: glitch::collada::ISkinnedMesh::~ISkinnedMesh()
; decoder-mode: arm
00669dc4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00669dc8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00669dcc  10 40 2d e9                                      push {r4, lr}
00669dd0  03 30 8f e0                                      add r3, pc, r3
00669dd4  02 20 93 e7                                      ldr r2, [r3, r2]
00669dd8  00 40 a0 e1                                      mov r4, r0
00669ddc  08 20 82 e2                                      add r2, r2, #8
00669de0  0c 20 80 e4                                      str r2, [r0], #0xc
00669de4  a2 bd fe eb                                      bl #0x619474
00669de8  04 00 a0 e1                                      mov r0, r4
00669dec  2f 91 f2 eb                                      bl #0x30e2b0
00669df0  04 00 a0 e1                                      mov r0, r4
00669df4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00669df8  c0 ac 32 00 04 37 00 00                          .byte 0xc0, 0xac, 0x32, 0x00, 0x04, 0x37, 0x00, 0x00
