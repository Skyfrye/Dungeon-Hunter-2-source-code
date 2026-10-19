; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035364c, declared_size=56, range_size=56, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterial11getHashCodeEv
; demangled: glitch::video::CMaterial::getHashCode() const
; decoder-mode: arm
0035364c  70 40 2d e9                                      push {r4, r5, r6, lr}
00353650  00 50 a0 e1                                      mov r5, r0
00353654  b6 c9 09 eb                                      bl #0x5c5d34
00353658  10 30 95 e5                                      ldr r3, [r5, #0x10]
0035365c  00 40 a0 e1                                      mov r4, r0
00353660  33 30 a0 e1                                      lsr r3, r3, r0
00353664  01 00 13 e3                                      tst r3, #1
00353668  02 00 00 0a                                      beq #0x353678
0035366c  05 00 a0 e1                                      mov r0, r5
00353670  04 10 a0 e1                                      mov r1, r4
00353674  57 ca 09 eb                                      bl #0x5c5fd8
00353678  18 30 95 e5                                      ldr r3, [r5, #0x18]
0035367c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00353680  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00353684, declared_size=300, range_size=300, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterial6equalsEhRKS1_h
; demangled: glitch::video::CMaterial::equals(unsigned char, glitch::video::CMaterial const&, unsigned char) const
; decoder-mode: arm
00353684  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00353688  10 c0 90 e5                                      ldr ip, [r0, #0x10]
0035368c  14 d0 4d e2                                      sub sp, sp, #0x14
00353690  00 60 a0 e1                                      mov r6, r0
00353694  3c c1 a0 e1                                      lsr ip, ip, r1
00353698  01 00 1c e3                                      tst ip, #1
0035369c  01 70 a0 e1                                      mov r7, r1
003536a0  02 40 a0 e1                                      mov r4, r2
003536a4  03 50 a0 e1                                      mov r5, r3
003536a8  00 00 00 0a                                      beq #0x3536b0
003536ac  49 ca 09 eb                                      bl #0x5c5fd8
003536b0  10 20 94 e5                                      ldr r2, [r4, #0x10]
003536b4  18 30 96 e5                                      ldr r3, [r6, #0x18]
003536b8  32 25 a0 e1                                      lsr r2, r2, r5
003536bc  01 00 12 e3                                      tst r2, #1
003536c0  07 81 93 e7                                      ldr r8, [r3, r7, lsl #2]
003536c4  02 00 00 0a                                      beq #0x3536d4
003536c8  04 00 a0 e1                                      mov r0, r4
003536cc  05 10 a0 e1                                      mov r1, r5
003536d0  40 ca 09 eb                                      bl #0x5c5fd8
003536d4  18 30 94 e5                                      ldr r3, [r4, #0x18]
003536d8  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
003536dc  03 00 58 e1                                      cmp r8, r3
003536e0  02 00 00 0a                                      beq #0x3536f0
003536e4  00 00 a0 e3                                      mov r0, #0
003536e8  14 d0 8d e2                                      add sp, sp, #0x14
003536ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003536f0  04 20 96 e5                                      ldr r2, [r6, #4]
003536f4  04 10 94 e5                                      ldr r1, [r4, #4]
003536f8  0c 30 a0 e3                                      mov r3, #0xc
003536fc  18 20 92 e5                                      ldr r2, [r2, #0x18]
00353700  18 10 91 e5                                      ldr r1, [r1, #0x18]
00353704  93 27 22 e0                                      mla r2, r3, r7, r2
00353708  93 15 23 e0                                      mla r3, r3, r5, r1
0035370c  04 90 d2 e5                                      ldrb sb, [r2, #4]
00353710  04 10 d3 e5                                      ldrb r1, [r3, #4]
00353714  09 00 51 e1                                      cmp r1, sb
00353718  f1 ff ff 1a                                      bne #0x3536e4
0035371c  00 00 59 e3                                      cmp sb, #0
00353720  1b 00 00 0a                                      beq #0x353794
00353724  08 80 92 e5                                      ldr r8, [r2, #8]
00353728  08 a0 93 e5                                      ldr sl, [r3, #8]
0035372c  20 20 98 e5                                      ldr r2, [r8, #0x20]
00353730  20 30 9a e5                                      ldr r3, [sl, #0x20]
00353734  03 00 52 e1                                      cmp r2, r3
00353738  e9 ff ff 1a                                      bne #0x3536e4
0035373c  01 30 49 e2                                      sub r3, sb, #1
00353740  73 30 ef e6                                      uxtb r3, r3
00353744  34 b0 a0 e3                                      mov fp, #0x34
00353748  93 bb 23 e0                                      mla r3, r3, fp, fp
0035374c  0a 10 a0 e1                                      mov r1, sl
00353750  0c 30 8d e5                                      str r3, [sp, #0xc]
00353754  08 00 a0 e1                                      mov r0, r8
00353758  20 20 a0 e3                                      mov r2, #0x20
0035375c  9f eb fe eb                                      bl #0x30e5e0
00353760  00 00 50 e3                                      cmp r0, #0
00353764  de ff ff 1a                                      bne #0x3536e4
00353768  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0035376c  0b 00 88 e0                                      add r0, r8, fp
00353770  0b 10 8a e0                                      add r1, sl, fp
00353774  03 00 5b e1                                      cmp fp, r3
00353778  05 00 00 0a                                      beq #0x353794
0035377c  20 20 90 e5                                      ldr r2, [r0, #0x20]
00353780  20 30 91 e5                                      ldr r3, [r1, #0x20]
00353784  34 b0 8b e2                                      add fp, fp, #0x34
00353788  03 00 52 e1                                      cmp r2, r3
0035378c  d4 ff ff 1a                                      bne #0x3536e4
00353790  f0 ff ff ea                                      b #0x353758
00353794  06 00 a0 e1                                      mov r0, r6
00353798  07 10 a0 e1                                      mov r1, r7
0035379c  09 20 a0 e1                                      mov r2, sb
003537a0  04 30 a0 e1                                      mov r3, r4
003537a4  00 50 8d e5                                      str r5, [sp]
003537a8  df db 09 eb                                      bl #0x5ca72c
003537ac  cd ff ff ea                                      b #0x3536e8

; FUNCTION 0x003537b0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterialeqERKS1_
; demangled: glitch::video::CMaterial::operator==(glitch::video::CMaterial const&) const
; decoder-mode: arm
003537b0  70 40 2d e9                                      push {r4, r5, r6, lr}
003537b4  01 40 a0 e1                                      mov r4, r1
003537b8  00 60 a0 e1                                      mov r6, r0
003537bc  5c c9 09 eb                                      bl #0x5c5d34
003537c0  00 50 a0 e1                                      mov r5, r0
003537c4  04 00 a0 e1                                      mov r0, r4
003537c8  59 c9 09 eb                                      bl #0x5c5d34
003537cc  05 10 a0 e1                                      mov r1, r5
003537d0  00 30 a0 e1                                      mov r3, r0
003537d4  04 20 a0 e1                                      mov r2, r4
003537d8  06 00 a0 e1                                      mov r0, r6
003537dc  70 40 bd e8                                      pop {r4, r5, r6, lr}
003537e0  a7 ff ff ea                                      b #0x353684

; FUNCTION 0x003537e4, declared_size=200, range_size=200, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterialltERKS1_
; demangled: glitch::video::CMaterial::operator<(glitch::video::CMaterial const&) const
; decoder-mode: arm
003537e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003537e8  08 d0 4d e2                                      sub sp, sp, #8
003537ec  01 50 a0 e1                                      mov r5, r1
003537f0  00 70 a0 e1                                      mov r7, r0
003537f4  4e c9 09 eb                                      bl #0x5c5d34
003537f8  00 60 a0 e1                                      mov r6, r0
003537fc  05 00 a0 e1                                      mov r0, r5
00353800  4b c9 09 eb                                      bl #0x5c5d34
00353804  10 30 97 e5                                      ldr r3, [r7, #0x10]
00353808  00 40 a0 e1                                      mov r4, r0
0035380c  33 36 a0 e1                                      lsr r3, r3, r6
00353810  01 00 13 e3                                      tst r3, #1
00353814  02 00 00 0a                                      beq #0x353824
00353818  07 00 a0 e1                                      mov r0, r7
0035381c  06 10 a0 e1                                      mov r1, r6
00353820  ec c9 09 eb                                      bl #0x5c5fd8
00353824  10 20 95 e5                                      ldr r2, [r5, #0x10]
00353828  18 30 97 e5                                      ldr r3, [r7, #0x18]
0035382c  32 24 a0 e1                                      lsr r2, r2, r4
00353830  01 00 12 e3                                      tst r2, #1
00353834  06 81 93 e7                                      ldr r8, [r3, r6, lsl #2]
00353838  02 00 00 0a                                      beq #0x353848
0035383c  05 00 a0 e1                                      mov r0, r5
00353840  04 10 a0 e1                                      mov r1, r4
00353844  e3 c9 09 eb                                      bl #0x5c5fd8
00353848  18 30 95 e5                                      ldr r3, [r5, #0x18]
0035384c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00353850  03 00 58 e1                                      cmp r8, r3
00353854  03 00 00 0a                                      beq #0x353868
00353858  00 00 a0 23                                      movhs r0, #0
0035385c  01 00 a0 33                                      movlo r0, #1
00353860  08 d0 8d e2                                      add sp, sp, #8
00353864  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00353868  04 20 97 e5                                      ldr r2, [r7, #4]
0035386c  04 10 95 e5                                      ldr r1, [r5, #4]
00353870  0c 30 a0 e3                                      mov r3, #0xc
00353874  18 20 92 e5                                      ldr r2, [r2, #0x18]
00353878  18 10 91 e5                                      ldr r1, [r1, #0x18]
0035387c  93 26 22 e0                                      mla r2, r3, r6, r2
00353880  93 14 23 e0                                      mla r3, r3, r4, r1
00353884  04 20 d2 e5                                      ldrb r2, [r2, #4]
00353888  04 30 d3 e5                                      ldrb r3, [r3, #4]
0035388c  03 00 52 e1                                      cmp r2, r3
00353890  f0 ff ff 1a                                      bne #0x353858
00353894  07 00 a0 e1                                      mov r0, r7
00353898  06 10 a0 e1                                      mov r1, r6
0035389c  05 30 a0 e1                                      mov r3, r5
003538a0  00 40 8d e5                                      str r4, [sp]
003538a4  d4 da 09 eb                                      bl #0x5ca3fc
003538a8  ec ff ff ea                                      b #0x353860

; FUNCTION 0x005aa4a8, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterial20unsetParametersDirtyEh
; demangled: glitch::video::CMaterial::unsetParametersDirty(unsigned char)
; decoder-mode: arm
005aa4a8  01 30 a0 e3                                      mov r3, #1
005aa4ac  13 31 a0 e1                                      lsl r3, r3, r1
005aa4b0  10 40 2d e9                                      push {r4, lr}
005aa4b4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
005aa4b8  08 d0 4d e2                                      sub sp, sp, #8
005aa4bc  00 40 a0 e1                                      mov r4, r0
005aa4c0  02 00 13 e1                                      tst r3, r2
005aa4c4  04 00 00 0a                                      beq #0x5aa4dc
005aa4c8  10 c0 90 e5                                      ldr ip, [r0, #0x10]
005aa4cc  03 20 c2 e1                                      bic r2, r2, r3
005aa4d0  0c 20 80 e5                                      str r2, [r0, #0xc]
005aa4d4  0c 00 13 e1                                      tst r3, ip
005aa4d8  01 00 00 1a                                      bne #0x5aa4e4
005aa4dc  08 d0 8d e2                                      add sp, sp, #8
005aa4e0  10 80 bd e8                                      pop {r4, pc}
005aa4e4  04 10 8d e5                                      str r1, [sp, #4]
005aa4e8  11 6e 00 eb                                      bl #0x5c5d34
005aa4ec  04 30 94 e5                                      ldr r3, [r4, #4]
005aa4f0  0c 20 a0 e3                                      mov r2, #0xc
005aa4f4  04 10 9d e5                                      ldr r1, [sp, #4]
005aa4f8  18 30 93 e5                                      ldr r3, [r3, #0x18]
005aa4fc  92 30 23 e0                                      mla r3, r2, r0, r3
005aa500  04 30 d3 e5                                      ldrb r3, [r3, #4]
005aa504  01 00 53 e3                                      cmp r3, #1
005aa508  f3 ff ff 1a                                      bne #0x5aa4dc
005aa50c  04 00 a0 e1                                      mov r0, r4
005aa510  08 d0 8d e2                                      add sp, sp, #8
005aa514  10 40 bd e8                                      pop {r4, lr}
005aa518  1a 6e 00 ea                                      b #0x5c5d88

; FUNCTION 0x005c5d34, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterial12getTechniqueEv
; demangled: glitch::video::CMaterial::getTechnique() const
; decoder-mode: arm
005c5d34  04 20 90 e5                                      ldr r2, [r0, #4]
005c5d38  14 c0 d0 e5                                      ldrb ip, [r0, #0x14]
005c5d3c  08 00 d0 e5                                      ldrb r0, [r0, #8]
005c5d40  04 30 92 e5                                      ldr r3, [r2, #4]
005c5d44  bc 10 d2 e1                                      ldrh r1, [r2, #0xc]
005c5d48  08 21 93 e5                                      ldr r2, [r3, #0x108]
005c5d4c  04 31 93 e5                                      ldr r3, [r3, #0x104]
005c5d50  00 00 52 e3                                      cmp r2, #0
005c5d54  1e ff 2f 01                                      bxeq lr
005c5d58  18 30 93 e5                                      ldr r3, [r3, #0x18]
005c5d5c  81 11 83 e0                                      add r1, r3, r1, lsl #3
005c5d60  04 30 91 e5                                      ldr r3, [r1, #4]
005c5d64  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
005c5d68  01 00 73 e3                                      cmn r3, #1
005c5d6c  0c 21 92 17                                      ldrne r2, [r2, ip, lsl #2]
005c5d70  03 00 80 10                                      addne r0, r0, r3
005c5d74  00 00 d2 17                                      ldrbne r0, [r2, r0]
005c5d78  1e ff 2f e1                                      bx lr

; FUNCTION 0x005c5d7c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterial23getRenderStateBlockSizeERKNS0_17CMaterialRendererE
; demangled: glitch::video::CMaterial::getRenderStateBlockSize(glitch::video::CMaterialRenderer const&)
; decoder-mode: arm
005c5d7c  00 00 a0 e3                                      mov r0, #0
005c5d80  1e ff 2f e1                                      bx lr

; FUNCTION 0x005c5d84, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterial22setRenderStateInternalEhhRKNS0_6detail8material12SRenderStateE
; demangled: glitch::video::CMaterial::setRenderStateInternal(unsigned char, unsigned char, glitch::video::detail::material::SRenderState const&)
; decoder-mode: arm
005c5d84  1e ff 2f e1                                      bx lr

; FUNCTION 0x005c5d88, declared_size=540, range_size=540, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterial24updateParametersHashCodeEh
; demangled: glitch::video::CMaterial::updateParametersHashCode(unsigned char) const
; decoder-mode: arm
005c5d88  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005c5d8c  10 d0 4d e2                                      sub sp, sp, #0x10
005c5d90  00 00 8d e5                                      str r0, [sp]
005c5d94  04 30 90 e5                                      ldr r3, [r0, #4]
005c5d98  04 10 8d e5                                      str r1, [sp, #4]
005c5d9c  20 b0 80 e2                                      add fp, r0, #0x20
005c5da0  18 20 93 e5                                      ldr r2, [r3, #0x18]
005c5da4  04 00 9d e5                                      ldr r0, [sp, #4]
005c5da8  0c 10 a0 e3                                      mov r1, #0xc
005c5dac  e4 91 9f e5                                      ldr sb, [pc, #0x1e4]
005c5db0  91 20 22 e0                                      mla r2, r1, r0, r2
005c5db4  09 90 8f e0                                      add sb, pc, sb
005c5db8  08 10 92 e5                                      ldr r1, [r2, #8]
005c5dbc  20 20 91 e5                                      ldr r2, [r1, #0x20]
005c5dc0  24 60 91 e5                                      ldr r6, [r1, #0x24]
005c5dc4  b6 83 d2 e1                                      ldrh r8, [r2, #0x36]
005c5dc8  be 02 d2 e1                                      ldrh r0, [r2, #0x2e]
005c5dcc  bc 12 d2 e1                                      ldrh r1, [r2, #0x2c]
005c5dd0  b4 23 d2 e1                                      ldrh r2, [r2, #0x34]
005c5dd4  00 80 88 e0                                      add r8, r8, r0
005c5dd8  78 80 ff e6                                      uxth r8, r8
005c5ddc  08 80 61 e0                                      rsb r8, r1, r8
005c5de0  08 80 62 e0                                      rsb r8, r2, r8
005c5de4  78 80 ff e6                                      uxth r8, r8
005c5de8  88 80 86 e0                                      add r8, r6, r8, lsl #1
005c5dec  06 00 58 e1                                      cmp r8, r6
005c5df0  00 10 a0 03                                      moveq r1, #0
005c5df4  01 50 a0 01                                      moveq r5, r1
005c5df8  28 00 00 0a                                      beq #0x5c5ea0
005c5dfc  98 11 9f e5                                      ldr r1, [pc, #0x198]
005c5e00  98 21 9f e5                                      ldr r2, [pc, #0x198]
005c5e04  0d c0 a0 e3                                      mov ip, #0xd
005c5e08  08 10 8d e5                                      str r1, [sp, #8]
005c5e0c  00 10 a0 e3                                      mov r1, #0
005c5e10  0c 20 8d e5                                      str r2, [sp, #0xc]
005c5e14  01 50 a0 e1                                      mov r5, r1
005c5e18  b0 20 d6 e1                                      ldrh r2, [r6]
005c5e1c  02 09 12 e3                                      tst r2, #0x8000
005c5e20  1b 00 00 1a                                      bne #0x5c5e94
005c5e24  be 00 d3 e1                                      ldrh r0, [r3, #0xe]
005c5e28  02 00 50 e1                                      cmp r0, r2
005c5e2c  20 00 93 85                                      ldrhi r0, [r3, #0x20]
005c5e30  00 20 a0 93                                      movls r2, #0
005c5e34  02 22 80 80                                      addhi r2, r0, r2, lsl #4
005c5e38  b4 00 d2 e1                                      ldrh r0, [r2, #4]
005c5e3c  08 a0 92 e5                                      ldr sl, [r2, #8]
005c5e40  02 00 50 e3                                      cmp r0, #2
005c5e44  24 00 00 0a                                      beq #0x5c5edc
005c5e48  0b 00 50 e3                                      cmp r0, #0xb
005c5e4c  10 00 00 0a                                      beq #0x5c5e94
005c5e50  0f 00 50 e3                                      cmp r0, #0xf
005c5e54  0e 00 00 0a                                      beq #0x5c5e94
005c5e58  06 00 d2 e5                                      ldrb r0, [r2, #6]
005c5e5c  0b 00 50 e3                                      cmp r0, #0xb
005c5e60  2a 00 00 0a                                      beq #0x5c5f10
005c5e64  08 70 9d e5                                      ldr r7, [sp, #8]
005c5e68  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005c5e6c  07 40 99 e7                                      ldr r4, [sb, r7]
005c5e70  02 20 8b e0                                      add r2, fp, r2
005c5e74  00 00 d4 e7                                      ldrb r0, [r4, r0]
005c5e78  9a 20 20 e0                                      mla r0, sl, r0, r2
005c5e7c  00 00 52 e1                                      cmp r2, r0
005c5e80  03 00 00 0a                                      beq #0x5c5e94
005c5e84  01 40 d2 e4                                      ldrb r4, [r2], #1
005c5e88  00 00 52 e1                                      cmp r2, r0
005c5e8c  9c 41 21 e0                                      mla r1, ip, r1, r4
005c5e90  fb ff ff 1a                                      bne #0x5c5e84
005c5e94  02 60 86 e2                                      add r6, r6, #2
005c5e98  06 00 58 e1                                      cmp r8, r6
005c5e9c  dd ff ff 1a                                      bne #0x5c5e18
005c5ea0  81 00 9d e8                                      ldm sp, {r0, r7}
005c5ea4  05 5a a0 e1                                      lsl r5, r5, #0x14
005c5ea8  18 20 90 e5                                      ldr r2, [r0, #0x18]
005c5eac  ff 10 01 e2                                      and r1, r1, #0xff
005c5eb0  25 5a a0 e1                                      lsr r5, r5, #0x14
005c5eb4  07 31 92 e7                                      ldr r3, [r2, r7, lsl #2]
005c5eb8  ff 38 c3 e3                                      bic r3, r3, #0xff0000
005c5ebc  0f 3a c3 e3                                      bic r3, r3, #0xf000
005c5ec0  ff 30 c3 e3                                      bic r3, r3, #0xff
005c5ec4  03 30 81 e1                                      orr r3, r1, r3
005c5ec8  05 56 83 e1                                      orr r5, r3, r5, lsl #12
005c5ecc  07 51 82 e7                                      str r5, [r2, r7, lsl #2]
005c5ed0  10 d0 8d e2                                      add sp, sp, #0x10
005c5ed4  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
005c5ed8  1e ff 2f e1                                      bx lr
005c5edc  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005c5ee0  02 20 8b e0                                      add r2, fp, r2
005c5ee4  0a a1 82 e0                                      add sl, r2, sl, lsl #2
005c5ee8  0a 00 52 e1                                      cmp r2, sl
005c5eec  e8 ff ff 0a                                      beq #0x5c5e94
005c5ef0  01 00 d2 e4                                      ldrb r0, [r2], #1
005c5ef4  0a 00 52 e1                                      cmp r2, sl
005c5ef8  9c 05 25 e0                                      mla r5, ip, r5, r0
005c5efc  fb ff ff 1a                                      bne #0x5c5ef0
005c5f00  02 60 86 e2                                      add r6, r6, #2
005c5f04  06 00 58 e1                                      cmp r8, r6
005c5f08  c2 ff ff 1a                                      bne #0x5c5e18
005c5f0c  e3 ff ff ea                                      b #0x5c5ea0
005c5f10  0c 70 92 e5                                      ldr r7, [r2, #0xc]
005c5f14  07 70 8b e0                                      add r7, fp, r7
005c5f18  0a a1 87 e0                                      add sl, r7, sl, lsl #2
005c5f1c  0a 00 57 e1                                      cmp r7, sl
005c5f20  db ff ff 0a                                      beq #0x5c5e94
005c5f24  03 40 a0 e1                                      mov r4, r3
005c5f28  00 00 97 e5                                      ldr r0, [r7]
005c5f2c  00 00 50 e3                                      cmp r0, #0
005c5f30  0d 00 00 0a                                      beq #0x5c5f6c
005c5f34  00 30 a0 e3                                      mov r3, #0
005c5f38  03 20 d0 e7                                      ldrb r2, [r0, r3]
005c5f3c  01 30 83 e2                                      add r3, r3, #1
005c5f40  44 00 53 e3                                      cmp r3, #0x44
005c5f44  9c 21 21 e0                                      mla r1, ip, r1, r2
005c5f48  fa ff ff 1a                                      bne #0x5c5f38
005c5f4c  04 70 87 e2                                      add r7, r7, #4
005c5f50  07 00 5a e1                                      cmp sl, r7
005c5f54  f3 ff ff 1a                                      bne #0x5c5f28
005c5f58  02 60 86 e2                                      add r6, r6, #2
005c5f5c  06 00 58 e1                                      cmp r8, r6
005c5f60  04 30 a0 e1                                      mov r3, r4
005c5f64  ab ff ff 1a                                      bne #0x5c5e18
005c5f68  cc ff ff ea                                      b #0x5c5ea0
005c5f6c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005c5f70  02 30 99 e7                                      ldr r3, [sb, r2]
005c5f74  03 20 d0 e7                                      ldrb r2, [r0, r3]
005c5f78  01 00 80 e2                                      add r0, r0, #1
005c5f7c  44 00 50 e3                                      cmp r0, #0x44
005c5f80  9c 21 21 e0                                      mla r1, ip, r1, r2
005c5f84  fa ff ff 1a                                      bne #0x5c5f74
005c5f88  04 70 87 e2                                      add r7, r7, #4
005c5f8c  07 00 5a e1                                      cmp sl, r7
005c5f90  e4 ff ff 1a                                      bne #0x5c5f28
005c5f94  ef ff ff ea                                      b #0x5c5f58
; mapping-symbol data/literal pool
005c5f98  dc ec 3c 00 c0 15 00 00 30 28 00 00              .byte 0xdc, 0xec, 0x3c, 0x00, 0xc0, 0x15, 0x00, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x005c5fa4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterial25updateRenderStateHashCodeEh
; demangled: glitch::video::CMaterial::updateRenderStateHashCode(unsigned char) const
; decoder-mode: arm
005c5fa4  04 30 90 e5                                      ldr r3, [r0, #4]
005c5fa8  18 20 93 e5                                      ldr r2, [r3, #0x18]
005c5fac  18 30 90 e5                                      ldr r3, [r0, #0x18]
005c5fb0  0c 00 a0 e3                                      mov r0, #0xc
005c5fb4  90 21 22 e0                                      mla r2, r0, r1, r2
005c5fb8  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
005c5fbc  08 c0 92 e5                                      ldr ip, [r2, #8]
005c5fc0  0f 0c c0 e3                                      bic r0, r0, #0xf00
005c5fc4  00 20 dc e5                                      ldrb r2, [ip]
005c5fc8  0f 20 02 e2                                      and r2, r2, #0xf
005c5fcc  02 24 80 e1                                      orr r2, r0, r2, lsl #8
005c5fd0  01 21 83 e7                                      str r2, [r3, r1, lsl #2]
005c5fd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005c5fd8, declared_size=188, range_size=188, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterial14updateHashCodeEh
; demangled: glitch::video::CMaterial::updateHashCode(unsigned char) const
; decoder-mode: arm
005c5fd8  70 40 2d e9                                      push {r4, r5, r6, lr}
005c5fdc  00 40 a0 e1                                      mov r4, r0
005c5fe0  01 50 a0 e1                                      mov r5, r1
005c5fe4  52 ff ff eb                                      bl #0x5c5d34
005c5fe8  04 30 94 e5                                      ldr r3, [r4, #4]
005c5fec  0c 20 a0 e3                                      mov r2, #0xc
005c5ff0  18 30 93 e5                                      ldr r3, [r3, #0x18]
005c5ff4  92 30 22 e0                                      mla r2, r2, r0, r3
005c5ff8  04 20 d2 e5                                      ldrb r2, [r2, #4]
005c5ffc  01 00 52 e3                                      cmp r2, #1
005c6000  07 00 00 9a                                      bls #0x5c6024
005c6004  18 30 94 e5                                      ldr r3, [r4, #0x18]
005c6008  00 20 e0 e3                                      mvn r2, #0
005c600c  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
005c6010  10 30 94 e5                                      ldr r3, [r4, #0x10]
005c6014  01 20 a0 e3                                      mov r2, #1
005c6018  12 55 c3 e1                                      bic r5, r3, r2, lsl r5
005c601c  10 50 84 e5                                      str r5, [r4, #0x10]
005c6020  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c6024  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c6028  32 25 a0 e1                                      lsr r2, r2, r5
005c602c  01 00 12 e3                                      tst r2, #1
005c6030  0c 00 00 1a                                      bne #0x5c6068
005c6034  0c 20 a0 e3                                      mov r2, #0xc
005c6038  92 35 23 e0                                      mla r3, r2, r5, r3
005c603c  04 20 d3 e5                                      ldrb r2, [r3, #4]
005c6040  01 00 52 e3                                      cmp r2, #1
005c6044  0d 00 00 9a                                      bls #0x5c6080
005c6048  05 10 a0 e1                                      mov r1, r5
005c604c  04 00 a0 e1                                      mov r0, r4
005c6050  d3 ff ff eb                                      bl #0x5c5fa4
005c6054  10 30 94 e5                                      ldr r3, [r4, #0x10]
005c6058  01 20 a0 e3                                      mov r2, #1
005c605c  12 55 c3 e1                                      bic r5, r3, r2, lsl r5
005c6060  10 50 84 e5                                      str r5, [r4, #0x10]
005c6064  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c6068  04 00 a0 e1                                      mov r0, r4
005c606c  05 10 a0 e1                                      mov r1, r5
005c6070  44 ff ff eb                                      bl #0x5c5d88
005c6074  04 30 94 e5                                      ldr r3, [r4, #4]
005c6078  18 30 93 e5                                      ldr r3, [r3, #0x18]
005c607c  ec ff ff ea                                      b #0x5c6034
005c6080  08 30 93 e5                                      ldr r3, [r3, #8]
005c6084  30 30 d3 e5                                      ldrb r3, [r3, #0x30]
005c6088  00 00 53 e3                                      cmp r3, #0
005c608c  df ff ff 0a                                      beq #0x5c6010
005c6090  ec ff ff ea                                      b #0x5c6048

; FUNCTION 0x005ca3fc, declared_size=816, range_size=816, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterial7compareEhhRKS1_h
; demangled: glitch::video::CMaterial::compare(unsigned char, unsigned char, glitch::video::CMaterial const&, unsigned char) const
; decoder-mode: arm
005ca3fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ca400  18 53 9f e5                                      ldr r5, [pc, #0x318]
005ca404  3c d0 4d e2                                      sub sp, sp, #0x3c
005ca408  00 00 52 e3                                      cmp r2, #0
005ca40c  05 50 8f e0                                      add r5, pc, r5
005ca410  04 50 8d e5                                      str r5, [sp, #4]
005ca414  60 40 dd e5                                      ldrb r4, [sp, #0x60]
005ca418  04 a0 90 e5                                      ldr sl, [r0, #4]
005ca41c  04 80 93 e5                                      ldr r8, [r3, #4]
005ca420  95 00 00 0a                                      beq #0x5ca67c
005ca424  18 60 9a e5                                      ldr r6, [sl, #0x18]
005ca428  0c c0 a0 e3                                      mov ip, #0xc
005ca42c  18 50 98 e5                                      ldr r5, [r8, #0x18]
005ca430  9c 61 21 e0                                      mla r1, ip, r1, r6
005ca434  9c 54 2c e0                                      mla ip, ip, r4, r5
005ca438  08 10 91 e5                                      ldr r1, [r1, #8]
005ca43c  14 10 8d e5                                      str r1, [sp, #0x14]
005ca440  08 c0 9c e5                                      ldr ip, [ip, #8]
005ca444  10 c0 8d e5                                      str ip, [sp, #0x10]
005ca448  20 40 9c e5                                      ldr r4, [ip, #0x20]
005ca44c  20 10 91 e5                                      ldr r1, [r1, #0x20]
005ca450  b0 44 d4 e1                                      ldrh r4, [r4, #0x40]
005ca454  b0 c4 d1 e1                                      ldrh ip, [r1, #0x40]
005ca458  0c 00 54 e1                                      cmp r4, ip
005ca45c  65 00 00 8a                                      bhi #0x5ca5f8
005ca460  85 00 00 3a                                      blo #0x5ca67c
005ca464  01 20 42 e2                                      sub r2, r2, #1
005ca468  34 c0 a0 e3                                      mov ip, #0x34
005ca46c  72 20 ef e6                                      uxtb r2, r2
005ca470  92 cc 22 e0                                      mla r2, r2, ip, ip
005ca474  20 00 80 e2                                      add r0, r0, #0x20
005ca478  08 00 8d e5                                      str r0, [sp, #8]
005ca47c  2c 20 8d e5                                      str r2, [sp, #0x2c]
005ca480  24 c0 8d e5                                      str ip, [sp, #0x24]
005ca484  10 b0 9d e5                                      ldr fp, [sp, #0x10]
005ca488  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ca48c  90 02 9f e5                                      ldr r0, [pc, #0x290]
005ca490  90 22 9f e5                                      ldr r2, [pc, #0x290]
005ca494  20 30 83 e2                                      add r3, r3, #0x20
005ca498  0c 30 8d e5                                      str r3, [sp, #0xc]
005ca49c  18 b0 8d e5                                      str fp, [sp, #0x18]
005ca4a0  1c c0 8d e5                                      str ip, [sp, #0x1c]
005ca4a4  28 00 8d e5                                      str r0, [sp, #0x28]
005ca4a8  20 20 8d e5                                      str r2, [sp, #0x20]
005ca4ac  b6 03 d1 e1                                      ldrh r0, [r1, #0x36]
005ca4b0  be 22 d1 e1                                      ldrh r2, [r1, #0x2e]
005ca4b4  b4 33 d1 e1                                      ldrh r3, [r1, #0x34]
005ca4b8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
005ca4bc  02 20 80 e0                                      add r2, r0, r2
005ca4c0  bc 12 d1 e1                                      ldrh r1, [r1, #0x2c]
005ca4c4  72 20 ff e6                                      uxth r2, r2
005ca4c8  02 70 63 e0                                      rsb r7, r3, r2
005ca4cc  24 60 9c e5                                      ldr r6, [ip, #0x24]
005ca4d0  07 70 61 e0                                      rsb r7, r1, r7
005ca4d4  77 70 ff e6                                      uxth r7, r7
005ca4d8  18 00 9d e5                                      ldr r0, [sp, #0x18]
005ca4dc  87 70 86 e0                                      add r7, r6, r7, lsl #1
005ca4e0  06 00 57 e1                                      cmp r7, r6
005ca4e4  24 90 90 e5                                      ldr sb, [r0, #0x24]
005ca4e8  00 00 a0 03                                      moveq r0, #0
005ca4ec  43 00 00 0a                                      beq #0x5ca600
005ca4f0  00 40 a0 e3                                      mov r4, #0
005ca4f4  04 00 a0 e1                                      mov r0, r4
005ca4f8  14 00 00 ea                                      b #0x5ca550
005ca4fc  00 00 50 e3                                      cmp r0, #0
005ca500  0e 00 00 1a                                      bne #0x5ca540
005ca504  06 c0 d2 e5                                      ldrb ip, [r2, #6]
005ca508  0b 00 5c e3                                      cmp ip, #0xb
005ca50c  5d 00 00 0a                                      beq #0x5ca688
005ca510  28 00 9d e5                                      ldr r0, [sp, #0x28]
005ca514  04 50 9d e5                                      ldr r5, [sp, #4]
005ca518  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005ca51c  08 b0 9d e5                                      ldr fp, [sp, #8]
005ca520  00 e0 95 e7                                      ldr lr, [r5, r0]
005ca524  0c 00 92 e5                                      ldr r0, [r2, #0xc]
005ca528  0c 20 de e7                                      ldrb r2, [lr, ip]
005ca52c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005ca530  00 00 8b e0                                      add r0, fp, r0
005ca534  93 02 02 e0                                      mul r2, r3, r2
005ca538  01 10 8c e0                                      add r1, ip, r1
005ca53c  27 10 f5 eb                                      bl #0x30e5e0
005ca540  02 40 84 e2                                      add r4, r4, #2
005ca544  04 30 86 e0                                      add r3, r6, r4
005ca548  03 00 57 e1                                      cmp r7, r3
005ca54c  2b 00 00 0a                                      beq #0x5ca600
005ca550  b4 30 96 e1                                      ldrh r3, [r6, r4]
005ca554  02 09 13 e3                                      tst r3, #0x8000
005ca558  f8 ff ff 1a                                      bne #0x5ca540
005ca55c  b4 10 99 e1                                      ldrh r1, [sb, r4]
005ca560  02 09 11 e3                                      tst r1, #0x8000
005ca564  f5 ff ff 1a                                      bne #0x5ca540
005ca568  be 20 da e1                                      ldrh r2, [sl, #0xe]
005ca56c  03 00 52 e1                                      cmp r2, r3
005ca570  20 20 9a 85                                      ldrhi r2, [sl, #0x20]
005ca574  00 20 a0 93                                      movls r2, #0
005ca578  03 22 82 80                                      addhi r2, r2, r3, lsl #4
005ca57c  be 30 d8 e1                                      ldrh r3, [r8, #0xe]
005ca580  b4 c0 d2 e1                                      ldrh ip, [r2, #4]
005ca584  01 00 53 e1                                      cmp r3, r1
005ca588  20 30 98 85                                      ldrhi r3, [r8, #0x20]
005ca58c  00 10 a0 93                                      movls r1, #0
005ca590  01 12 83 80                                      addhi r1, r3, r1, lsl #4
005ca594  02 00 5c e3                                      cmp ip, #2
005ca598  08 30 92 e5                                      ldr r3, [r2, #8]
005ca59c  d6 ff ff 1a                                      bne #0x5ca4fc
005ca5a0  0c c0 92 e5                                      ldr ip, [r2, #0xc]
005ca5a4  08 50 9d e5                                      ldr r5, [sp, #8]
005ca5a8  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005ca5ac  0c 20 85 e0                                      add r2, r5, ip
005ca5b0  03 31 82 e0                                      add r3, r2, r3, lsl #2
005ca5b4  03 00 52 e1                                      cmp r2, r3
005ca5b8  e0 ff ff 0a                                      beq #0x5ca540
005ca5bc  0c b0 9d e5                                      ldr fp, [sp, #0xc]
005ca5c0  0c 50 95 e7                                      ldr r5, [r5, ip]
005ca5c4  01 c0 9b e7                                      ldr ip, [fp, r1]
005ca5c8  01 10 8b e0                                      add r1, fp, r1
005ca5cc  0c 00 55 e1                                      cmp r5, ip
005ca5d0  08 00 00 3a                                      blo #0x5ca5f8
005ca5d4  28 00 00 8a                                      bhi #0x5ca67c
005ca5d8  04 20 82 e2                                      add r2, r2, #4
005ca5dc  02 00 53 e1                                      cmp r3, r2
005ca5e0  d6 ff ff 0a                                      beq #0x5ca540
005ca5e4  04 c0 91 e5                                      ldr ip, [r1, #4]
005ca5e8  00 50 92 e5                                      ldr r5, [r2]
005ca5ec  04 10 81 e2                                      add r1, r1, #4
005ca5f0  0c 00 55 e1                                      cmp r5, ip
005ca5f4  f6 ff ff 2a                                      bhs #0x5ca5d4
005ca5f8  01 00 a0 e3                                      mov r0, #1
005ca5fc  1f 00 00 ea                                      b #0x5ca680
005ca600  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005ca604  18 50 9d e5                                      ldr r5, [sp, #0x18]
005ca608  00 30 d1 e5                                      ldrb r3, [r1]
005ca60c  00 20 d5 e5                                      ldrb r2, [r5]
005ca610  03 30 62 e0                                      rsb r3, r2, r3
005ca614  00 00 53 e3                                      cmp r3, #0
005ca618  f6 ff ff ba                                      blt #0x5ca5f8
005ca61c  16 00 00 1a                                      bne #0x5ca67c
005ca620  00 00 50 e3                                      cmp r0, #0
005ca624  f3 ff ff ba                                      blt #0x5ca5f8
005ca628  13 00 00 1a                                      bne #0x5ca67c
005ca62c  24 b0 9d e5                                      ldr fp, [sp, #0x24]
005ca630  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005ca634  0c 00 5b e1                                      cmp fp, ip
005ca638  0f 00 00 0a                                      beq #0x5ca67c
005ca63c  24 50 9d e5                                      ldr r5, [sp, #0x24]
005ca640  14 30 9d e5                                      ldr r3, [sp, #0x14]
005ca644  10 b0 9d e5                                      ldr fp, [sp, #0x10]
005ca648  05 30 83 e0                                      add r3, r3, r5
005ca64c  05 b0 8b e0                                      add fp, fp, r5
005ca650  1c 30 8d e5                                      str r3, [sp, #0x1c]
005ca654  18 b0 8d e5                                      str fp, [sp, #0x18]
005ca658  20 10 93 e5                                      ldr r1, [r3, #0x20]
005ca65c  20 30 9b e5                                      ldr r3, [fp, #0x20]
005ca660  b0 24 d1 e1                                      ldrh r2, [r1, #0x40]
005ca664  b0 34 d3 e1                                      ldrh r3, [r3, #0x40]
005ca668  03 00 52 e1                                      cmp r2, r3
005ca66c  e1 ff ff 3a                                      blo #0x5ca5f8
005ca670  34 50 85 e2                                      add r5, r5, #0x34
005ca674  24 50 8d e5                                      str r5, [sp, #0x24]
005ca678  8b ff ff 9a                                      bls #0x5ca4ac
005ca67c  00 00 a0 e3                                      mov r0, #0
005ca680  3c d0 8d e2                                      add sp, sp, #0x3c
005ca684  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ca688  0c b0 92 e5                                      ldr fp, [r2, #0xc]
005ca68c  08 c0 9d e5                                      ldr ip, [sp, #8]
005ca690  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005ca694  0b b0 8c e0                                      add fp, ip, fp
005ca698  03 31 8b e0                                      add r3, fp, r3, lsl #2
005ca69c  03 00 5b e1                                      cmp fp, r3
005ca6a0  a6 ff ff 0a                                      beq #0x5ca540
005ca6a4  04 10 8b e2                                      add r1, fp, #4
005ca6a8  03 30 61 e0                                      rsb r3, r1, r3
005ca6ac  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005ca6b0  03 30 c3 e3                                      bic r3, r3, #3
005ca6b4  04 30 83 e2                                      add r3, r3, #4
005ca6b8  02 20 81 e0                                      add r2, r1, r2
005ca6bc  30 40 8d e5                                      str r4, [sp, #0x30]
005ca6c0  34 70 8d e5                                      str r7, [sp, #0x34]
005ca6c4  00 50 a0 e1                                      mov r5, r0
005ca6c8  06 70 a0 e1                                      mov r7, r6
005ca6cc  03 40 a0 e1                                      mov r4, r3
005ca6d0  02 60 a0 e1                                      mov r6, r2
005ca6d4  05 00 9b e7                                      ldr r0, [fp, r5]
005ca6d8  05 10 96 e7                                      ldr r1, [r6, r5]
005ca6dc  44 20 a0 e3                                      mov r2, #0x44
005ca6e0  00 00 50 e3                                      cmp r0, #0
005ca6e4  04 c0 9d 05                                      ldreq ip, [sp, #4]
005ca6e8  20 30 9d 05                                      ldreq r3, [sp, #0x20]
005ca6ec  04 50 85 e2                                      add r5, r5, #4
005ca6f0  03 00 9c 07                                      ldreq r0, [ip, r3]
005ca6f4  00 00 51 e3                                      cmp r1, #0
005ca6f8  04 c0 9d 05                                      ldreq ip, [sp, #4]
005ca6fc  20 30 9d 05                                      ldreq r3, [sp, #0x20]
005ca700  03 10 9c 07                                      ldreq r1, [ip, r3]
005ca704  b5 0f f5 eb                                      bl #0x30e5e0
005ca708  04 00 55 e1                                      cmp r5, r4
005ca70c  f0 ff ff 1a                                      bne #0x5ca6d4
005ca710  07 60 a0 e1                                      mov r6, r7
005ca714  30 40 9d e5                                      ldr r4, [sp, #0x30]
005ca718  34 70 9d e5                                      ldr r7, [sp, #0x34]
005ca71c  87 ff ff ea                                      b #0x5ca540
; mapping-symbol data/literal pool
005ca720  84 a6 3c 00 c0 15 00 00 30 28 00 00              .byte 0x84, 0xa6, 0x3c, 0x00, 0xc0, 0x15, 0x00, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x005ca72c, declared_size=876, range_size=876, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterial18areParametersEqualEhhRKS1_h
; demangled: glitch::video::CMaterial::areParametersEqual(unsigned char, unsigned char, glitch::video::CMaterial const&, unsigned char) const
; decoder-mode: arm
005ca72c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ca730  54 53 9f e5                                      ldr r5, [pc, #0x354]
005ca734  44 d0 4d e2                                      sub sp, sp, #0x44
005ca738  00 00 52 e3                                      cmp r2, #0
005ca73c  05 50 8f e0                                      add r5, pc, r5
005ca740  08 50 8d e5                                      str r5, [sp, #8]
005ca744  68 40 dd e5                                      ldrb r4, [sp, #0x68]
005ca748  cd 00 00 0a                                      beq #0x5caa84
005ca74c  04 70 90 e5                                      ldr r7, [r0, #4]
005ca750  01 20 42 e2                                      sub r2, r2, #1
005ca754  20 00 80 e2                                      add r0, r0, #0x20
005ca758  14 70 8d e5                                      str r7, [sp, #0x14]
005ca75c  04 c0 93 e5                                      ldr ip, [r3, #4]
005ca760  20 30 83 e2                                      add r3, r3, #0x20
005ca764  10 c0 8d e5                                      str ip, [sp, #0x10]
005ca768  18 60 97 e5                                      ldr r6, [r7, #0x18]
005ca76c  10 70 9d e5                                      ldr r7, [sp, #0x10]
005ca770  0c c0 a0 e3                                      mov ip, #0xc
005ca774  9c 61 21 e0                                      mla r1, ip, r1, r6
005ca778  18 50 97 e5                                      ldr r5, [r7, #0x18]
005ca77c  9c 54 2c e0                                      mla ip, ip, r4, r5
005ca780  72 40 ef e6                                      uxtb r4, r2
005ca784  34 20 a0 e3                                      mov r2, #0x34
005ca788  94 22 22 e0                                      mla r2, r4, r2, r2
005ca78c  3c 20 8d e5                                      str r2, [sp, #0x3c]
005ca790  08 10 91 e5                                      ldr r1, [r1, #8]
005ca794  00 20 a0 e3                                      mov r2, #0
005ca798  38 10 8d e5                                      str r1, [sp, #0x38]
005ca79c  08 c0 9c e5                                      ldr ip, [ip, #8]
005ca7a0  e8 12 9f e5                                      ldr r1, [pc, #0x2e8]
005ca7a4  24 00 8d e5                                      str r0, [sp, #0x24]
005ca7a8  34 c0 8d e5                                      str ip, [sp, #0x34]
005ca7ac  e0 c2 9f e5                                      ldr ip, [pc, #0x2e0]
005ca7b0  1c 10 8d e5                                      str r1, [sp, #0x1c]
005ca7b4  20 30 8d e5                                      str r3, [sp, #0x20]
005ca7b8  2c c0 8d e5                                      str ip, [sp, #0x2c]
005ca7bc  30 20 8d e5                                      str r2, [sp, #0x30]
005ca7c0  38 30 9d e5                                      ldr r3, [sp, #0x38]
005ca7c4  30 50 9d e5                                      ldr r5, [sp, #0x30]
005ca7c8  34 70 9d e5                                      ldr r7, [sp, #0x34]
005ca7cc  05 20 83 e0                                      add r2, r3, r5
005ca7d0  20 30 92 e5                                      ldr r3, [r2, #0x20]
005ca7d4  24 20 92 e5                                      ldr r2, [r2, #0x24]
005ca7d8  04 20 8d e5                                      str r2, [sp, #4]
005ca7dc  b6 c3 d3 e1                                      ldrh ip, [r3, #0x36]
005ca7e0  be 02 d3 e1                                      ldrh r0, [r3, #0x2e]
005ca7e4  bc 12 d3 e1                                      ldrh r1, [r3, #0x2c]
005ca7e8  b4 33 d3 e1                                      ldrh r3, [r3, #0x34]
005ca7ec  00 00 8c e0                                      add r0, ip, r0
005ca7f0  70 00 ff e6                                      uxth r0, r0
005ca7f4  00 10 61 e0                                      rsb r1, r1, r0
005ca7f8  04 c0 9d e5                                      ldr ip, [sp, #4]
005ca7fc  01 30 63 e0                                      rsb r3, r3, r1
005ca800  05 20 87 e0                                      add r2, r7, r5
005ca804  73 30 ff e6                                      uxth r3, r3
005ca808  24 20 92 e5                                      ldr r2, [r2, #0x24]
005ca80c  83 30 8c e0                                      add r3, ip, r3, lsl #1
005ca810  0c 00 53 e1                                      cmp r3, ip
005ca814  18 20 8d e5                                      str r2, [sp, #0x18]
005ca818  0c 30 8d e5                                      str r3, [sp, #0xc]
005ca81c  92 00 00 0a                                      beq #0x5caa6c
005ca820  00 40 a0 e3                                      mov r4, #0
005ca824  13 00 00 ea                                      b #0x5ca878
005ca828  08 70 9d e5                                      ldr r7, [sp, #8]
005ca82c  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005ca830  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005ca834  20 e0 9d e5                                      ldr lr, [sp, #0x20]
005ca838  05 c0 97 e7                                      ldr ip, [r7, r5]
005ca83c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005ca840  02 20 dc e7                                      ldrb r2, [ip, r2]
005ca844  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005ca848  01 10 8e e0                                      add r1, lr, r1
005ca84c  9a 02 02 e0                                      mul r2, sl, r2
005ca850  00 00 8c e0                                      add r0, ip, r0
005ca854  61 0f f5 eb                                      bl #0x30e5e0
005ca858  00 00 50 e3                                      cmp r0, #0
005ca85c  68 00 00 1a                                      bne #0x5caa04
005ca860  04 00 9d e5                                      ldr r0, [sp, #4]
005ca864  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005ca868  02 40 84 e2                                      add r4, r4, #2
005ca86c  04 30 80 e0                                      add r3, r0, r4
005ca870  03 00 51 e1                                      cmp r1, r3
005ca874  7c 00 00 0a                                      beq #0x5caa6c
005ca878  04 00 9d e5                                      ldr r0, [sp, #4]
005ca87c  b4 30 90 e1                                      ldrh r3, [r0, r4]
005ca880  02 09 13 e3                                      tst r3, #0x8000
005ca884  f5 ff ff 1a                                      bne #0x5ca860
005ca888  18 10 9d e5                                      ldr r1, [sp, #0x18]
005ca88c  b4 20 91 e1                                      ldrh r2, [r1, r4]
005ca890  02 09 12 e3                                      tst r2, #0x8000
005ca894  f1 ff ff 1a                                      bne #0x5ca860
005ca898  14 50 9d e5                                      ldr r5, [sp, #0x14]
005ca89c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005ca8a0  be 10 d5 e1                                      ldrh r1, [r5, #0xe]
005ca8a4  03 00 51 e1                                      cmp r1, r3
005ca8a8  14 70 9d 85                                      ldrhi r7, [sp, #0x14]
005ca8ac  00 30 a0 93                                      movls r3, #0
005ca8b0  20 10 97 85                                      ldrhi r1, [r7, #0x20]
005ca8b4  03 32 81 80                                      addhi r3, r1, r3, lsl #4
005ca8b8  be 10 dc e1                                      ldrh r1, [ip, #0xe]
005ca8bc  02 00 51 e1                                      cmp r1, r2
005ca8c0  10 00 9d 85                                      ldrhi r0, [sp, #0x10]
005ca8c4  00 10 a0 93                                      movls r1, #0
005ca8c8  20 10 90 85                                      ldrhi r1, [r0, #0x20]
005ca8cc  02 12 81 80                                      addhi r1, r1, r2, lsl #4
005ca8d0  06 00 d1 e5                                      ldrb r0, [r1, #6]
005ca8d4  06 20 d3 e5                                      ldrb r2, [r3, #6]
005ca8d8  00 00 52 e1                                      cmp r2, r0
005ca8dc  48 00 00 1a                                      bne #0x5caa04
005ca8e0  0b 00 52 e3                                      cmp r2, #0xb
005ca8e4  08 a0 93 e5                                      ldr sl, [r3, #8]
005ca8e8  ce ff ff 1a                                      bne #0x5ca828
005ca8ec  0c 80 93 e5                                      ldr r8, [r3, #0xc]
005ca8f0  0c 90 91 e5                                      ldr sb, [r1, #0xc]
005ca8f4  24 10 9d e5                                      ldr r1, [sp, #0x24]
005ca8f8  08 80 81 e0                                      add r8, r1, r8
005ca8fc  0a a1 88 e0                                      add sl, r8, sl, lsl #2
005ca900  0a 00 58 e1                                      cmp r8, sl
005ca904  d5 ff ff 0a                                      beq #0x5ca860
005ca908  08 50 9d e5                                      ldr r5, [sp, #8]
005ca90c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005ca910  20 70 9d e5                                      ldr r7, [sp, #0x20]
005ca914  02 30 95 e7                                      ldr r3, [r5, r2]
005ca918  09 90 87 e0                                      add sb, r7, sb
005ca91c  00 70 a0 e3                                      mov r7, #0
005ca920  40 30 d3 e5                                      ldrb r3, [r3, #0x40]
005ca924  28 30 8d e5                                      str r3, [sp, #0x28]
005ca928  07 60 98 e7                                      ldr r6, [r8, r7]
005ca92c  00 00 56 e3                                      cmp r6, #0
005ca930  18 00 00 0a                                      beq #0x5ca998
005ca934  07 b0 99 e7                                      ldr fp, [sb, r7]
005ca938  00 00 5b e3                                      cmp fp, #0
005ca93c  33 00 00 0a                                      beq #0x5caa10
005ca940  40 30 d6 e5                                      ldrb r3, [r6, #0x40]
005ca944  00 00 53 e3                                      cmp r3, #0
005ca948  02 00 00 0a                                      beq #0x5ca958
005ca94c  40 30 db e5                                      ldrb r3, [fp, #0x40]
005ca950  00 00 53 e3                                      cmp r3, #0
005ca954  08 00 00 1a                                      bne #0x5ca97c
005ca958  00 50 a0 e3                                      mov r5, #0
005ca95c  05 00 96 e7                                      ldr r0, [r6, r5]
005ca960  05 10 9b e7                                      ldr r1, [fp, r5]
005ca964  88 0d f5 eb                                      bl #0x30df8c
005ca968  00 00 50 e3                                      cmp r0, #0
005ca96c  04 50 85 e2                                      add r5, r5, #4
005ca970  23 00 00 0a                                      beq #0x5caa04
005ca974  40 00 55 e3                                      cmp r5, #0x40
005ca978  f7 ff ff 1a                                      bne #0x5ca95c
005ca97c  04 70 87 e2                                      add r7, r7, #4
005ca980  07 30 88 e0                                      add r3, r8, r7
005ca984  03 00 5a e1                                      cmp sl, r3
005ca988  b4 ff ff 0a                                      beq #0x5ca860
005ca98c  07 60 98 e7                                      ldr r6, [r8, r7]
005ca990  00 00 56 e3                                      cmp r6, #0
005ca994  e6 ff ff 1a                                      bne #0x5ca934
005ca998  07 60 99 e7                                      ldr r6, [sb, r7]
005ca99c  00 00 56 e3                                      cmp r6, #0
005ca9a0  f5 ff ff 0a                                      beq #0x5ca97c
005ca9a4  40 30 d6 e5                                      ldrb r3, [r6, #0x40]
005ca9a8  00 00 53 e3                                      cmp r3, #0
005ca9ac  02 00 00 0a                                      beq #0x5ca9bc
005ca9b0  28 10 9d e5                                      ldr r1, [sp, #0x28]
005ca9b4  00 00 51 e3                                      cmp r1, #0
005ca9b8  ef ff ff 1a                                      bne #0x5ca97c
005ca9bc  08 30 9d e5                                      ldr r3, [sp, #8]
005ca9c0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005ca9c4  00 50 a0 e3                                      mov r5, #0
005ca9c8  05 00 96 e7                                      ldr r0, [r6, r5]
005ca9cc  02 b0 93 e7                                      ldr fp, [r3, r2]
005ca9d0  0b 10 95 e7                                      ldr r1, [r5, fp]
005ca9d4  6c 0d f5 eb                                      bl #0x30df8c
005ca9d8  00 00 50 e3                                      cmp r0, #0
005ca9dc  04 50 85 e2                                      add r5, r5, #4
005ca9e0  07 00 00 0a                                      beq #0x5caa04
005ca9e4  40 00 55 e3                                      cmp r5, #0x40
005ca9e8  e3 ff ff 0a                                      beq #0x5ca97c
005ca9ec  05 00 96 e7                                      ldr r0, [r6, r5]
005ca9f0  0b 10 95 e7                                      ldr r1, [r5, fp]
005ca9f4  64 0d f5 eb                                      bl #0x30df8c
005ca9f8  00 00 50 e3                                      cmp r0, #0
005ca9fc  04 50 85 e2                                      add r5, r5, #4
005caa00  f7 ff ff 1a                                      bne #0x5ca9e4
005caa04  00 00 a0 e3                                      mov r0, #0
005caa08  44 d0 8d e2                                      add sp, sp, #0x44
005caa0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005caa10  40 30 d6 e5                                      ldrb r3, [r6, #0x40]
005caa14  00 00 53 e3                                      cmp r3, #0
005caa18  02 00 00 0a                                      beq #0x5caa28
005caa1c  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005caa20  00 00 5c e3                                      cmp ip, #0
005caa24  d4 ff ff 1a                                      bne #0x5ca97c
005caa28  08 00 9d e5                                      ldr r0, [sp, #8]
005caa2c  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
005caa30  00 50 a0 e3                                      mov r5, #0
005caa34  0e b0 90 e7                                      ldr fp, [r0, lr]
005caa38  05 00 96 e7                                      ldr r0, [r6, r5]
005caa3c  0b 10 95 e7                                      ldr r1, [r5, fp]
005caa40  51 0d f5 eb                                      bl #0x30df8c
005caa44  00 00 50 e3                                      cmp r0, #0
005caa48  04 50 85 e2                                      add r5, r5, #4
005caa4c  ec ff ff 0a                                      beq #0x5caa04
005caa50  40 00 55 e3                                      cmp r5, #0x40
005caa54  f7 ff ff 1a                                      bne #0x5caa38
005caa58  04 70 87 e2                                      add r7, r7, #4
005caa5c  07 30 88 e0                                      add r3, r8, r7
005caa60  03 00 5a e1                                      cmp sl, r3
005caa64  c8 ff ff 1a                                      bne #0x5ca98c
005caa68  7c ff ff ea                                      b #0x5ca860
005caa6c  30 20 9d e5                                      ldr r2, [sp, #0x30]
005caa70  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005caa74  34 20 82 e2                                      add r2, r2, #0x34
005caa78  03 00 52 e1                                      cmp r2, r3
005caa7c  30 20 8d e5                                      str r2, [sp, #0x30]
005caa80  4e ff ff 1a                                      bne #0x5ca7c0
005caa84  01 00 a0 e3                                      mov r0, #1
005caa88  de ff ff ea                                      b #0x5caa08
; mapping-symbol data/literal pool
005caa8c  54 a3 3c 00 30 28 00 00 c0 15 00 00              .byte 0x54, 0xa3, 0x3c, 0x00, 0x30, 0x28, 0x00, 0x00, 0xc0, 0x15, 0x00, 0x00

; FUNCTION 0x005cbbe0, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterial4initEPKhPKNS0_6detail8material12SRenderStateEb
; demangled: glitch::video::CMaterial::init(unsigned char const*, glitch::video::detail::material::SRenderState const*, bool)
; decoder-mode: arm
005cbbe0  10 40 2d e9                                      push {r4, lr}
005cbbe4  04 20 90 e5                                      ldr r2, [r0, #4]
005cbbe8  08 d0 4d e2                                      sub sp, sp, #8
005cbbec  00 40 a0 e1                                      mov r4, r0
005cbbf0  be c0 d2 e1                                      ldrh ip, [r2, #0xe]
005cbbf4  00 00 5c e3                                      cmp ip, #0
005cbbf8  08 00 00 0a                                      beq #0x5cbc20
005cbbfc  00 00 53 e3                                      cmp r3, #0
005cbc00  08 00 00 1a                                      bne #0x5cbc28
005cbc04  14 20 92 e5                                      ldr r2, [r2, #0x14]
005cbc08  20 00 84 e2                                      add r0, r4, #0x20
005cbc0c  15 0b f5 eb                                      bl #0x30e868
005cbc10  04 00 a0 e1                                      mov r0, r4
005cbc14  08 d0 8d e2                                      add sp, sp, #8
005cbc18  10 40 bd e8                                      pop {r4, lr}
005cbc1c  2e ff ff ea                                      b #0x5cb8dc
005cbc20  08 d0 8d e2                                      add sp, sp, #8
005cbc24  10 80 bd e8                                      pop {r4, pc}
005cbc28  04 10 8d e5                                      str r1, [sp, #4]
005cbc2c  dc ff ff eb                                      bl #0x5cbba4
005cbc30  04 20 94 e5                                      ldr r2, [r4, #4]
005cbc34  04 10 9d e5                                      ldr r1, [sp, #4]
005cbc38  f1 ff ff ea                                      b #0x5cbc04

; FUNCTION 0x005cbc3c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterial5resetEPKNS0_6detail8material12SRenderStateE
; demangled: glitch::video::CMaterial::reset(glitch::video::detail::material::SRenderState const*)
; decoder-mode: arm
005cbc3c  30 00 2d e9                                      push {r4, r5}
005cbc40  04 50 90 e5                                      ldr r5, [r0, #4]
005cbc44  00 40 a0 e3                                      mov r4, #0
005cbc48  00 c0 e0 e3                                      mvn ip, #0
005cbc4c  14 40 c0 e5                                      strb r4, [r0, #0x14]
005cbc50  0c c0 80 e5                                      str ip, [r0, #0xc]
005cbc54  08 40 c0 e5                                      strb r4, [r0, #8]
005cbc58  10 c0 80 e5                                      str ip, [r0, #0x10]
005cbc5c  01 20 a0 e1                                      mov r2, r1
005cbc60  24 10 95 e5                                      ldr r1, [r5, #0x24]
005cbc64  01 30 a0 e3                                      mov r3, #1
005cbc68  30 00 bd e8                                      pop {r4, r5}
005cbc6c  db ff ff ea                                      b #0x5cbbe0

; FUNCTION 0x005cbc70, declared_size=288, range_size=288, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterialC1ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKcRKNS1_24SStateWithoutRenderStateEPKhPKNS0_6detail8material12SRenderStateE
; demangled: glitch::video::CMaterial::CMaterial(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, char const*, glitch::video::CMaterial::SStateWithoutRenderState const&, unsigned char const*, glitch::video::detail::material::SRenderState const*)
; decoder-mode: arm
005cbc70  70 40 2d e9                                      push {r4, r5, r6, lr}
005cbc74  00 40 a0 e1                                      mov r4, r0
005cbc78  00 00 a0 e3                                      mov r0, #0
005cbc7c  00 00 84 e5                                      str r0, [r4]
005cbc80  01 50 a0 e1                                      mov r5, r1
005cbc84  00 10 91 e5                                      ldr r1, [r1]
005cbc88  00 00 51 e1                                      cmp r1, r0
005cbc8c  04 10 84 e5                                      str r1, [r4, #4]
005cbc90  00 00 91 15                                      ldrne r0, [r1]
005cbc94  01 00 80 12                                      addne r0, r0, #1
005cbc98  00 00 81 15                                      strne r0, [r1]
005cbc9c  00 10 d3 e5                                      ldrb r1, [r3]
005cbca0  02 00 a0 e1                                      mov r0, r2
005cbca4  08 10 c4 e5                                      strb r1, [r4, #8]
005cbca8  04 20 93 e5                                      ldr r2, [r3, #4]
005cbcac  01 10 a0 e3                                      mov r1, #1
005cbcb0  0c 20 84 e5                                      str r2, [r4, #0xc]
005cbcb4  08 20 93 e5                                      ldr r2, [r3, #8]
005cbcb8  10 20 84 e5                                      str r2, [r4, #0x10]
005cbcbc  0c 30 d3 e5                                      ldrb r3, [r3, #0xc]
005cbcc0  00 20 a0 e3                                      mov r2, #0
005cbcc4  18 20 84 e5                                      str r2, [r4, #0x18]
005cbcc8  14 30 c4 e5                                      strb r3, [r4, #0x14]
005cbccc  e8 64 03 eb                                      bl #0x6a5074
005cbcd0  00 00 50 e3                                      cmp r0, #0
005cbcd4  1c 00 84 e5                                      str r0, [r4, #0x1c]
005cbcd8  00 30 90 15                                      ldrne r3, [r0]
005cbcdc  01 30 83 12                                      addne r3, r3, #1
005cbce0  00 30 80 15                                      strne r3, [r0]
005cbce4  00 30 95 e5                                      ldr r3, [r5]
005cbce8  03 00 a0 e1                                      mov r0, r3
005cbcec  14 50 93 e5                                      ldr r5, [r3, #0x14]
005cbcf0  21 e8 ff eb                                      bl #0x5c5d7c
005cbcf4  20 50 85 e2                                      add r5, r5, #0x20
005cbcf8  00 50 85 e0                                      add r5, r5, r0
005cbcfc  05 50 84 e0                                      add r5, r4, r5
005cbd00  18 50 84 e5                                      str r5, [r4, #0x18]
005cbd04  10 10 9d e5                                      ldr r1, [sp, #0x10]
005cbd08  14 20 9d e5                                      ldr r2, [sp, #0x14]
005cbd0c  04 00 a0 e1                                      mov r0, r4
005cbd10  00 30 a0 e3                                      mov r3, #0
005cbd14  b1 ff ff eb                                      bl #0x5cbbe0
005cbd18  04 10 94 e5                                      ldr r1, [r4, #4]
005cbd1c  10 60 d1 e5                                      ldrb r6, [r1, #0x10]
005cbd20  00 00 56 e3                                      cmp r6, #0
005cbd24  17 00 00 0a                                      beq #0x5cbd88
005cbd28  01 60 46 e2                                      sub r6, r6, #1
005cbd2c  76 30 ef e6                                      uxtb r3, r6
005cbd30  0c 60 a0 e3                                      mov r6, #0xc
005cbd34  93 66 26 e0                                      mla r6, r3, r6, r6
005cbd38  00 30 a0 e3                                      mov r3, #0
005cbd3c  03 20 a0 e1                                      mov r2, r3
005cbd40  00 00 00 ea                                      b #0x5cbd48
005cbd44  04 10 94 e5                                      ldr r1, [r4, #4]
005cbd48  18 00 91 e5                                      ldr r0, [r1, #0x18]
005cbd4c  18 10 94 e5                                      ldr r1, [r4, #0x18]
005cbd50  02 00 80 e0                                      add r0, r0, r2
005cbd54  08 00 90 e5                                      ldr r0, [r0, #8]
005cbd58  03 c0 91 e7                                      ldr ip, [r1, r3]
005cbd5c  0c 20 82 e2                                      add r2, r2, #0xc
005cbd60  20 50 90 e5                                      ldr r5, [r0, #0x20]
005cbd64  ff c4 cc e3                                      bic ip, ip, #0xff000000
005cbd68  06 00 52 e1                                      cmp r2, r6
005cbd6c  b0 04 d5 e1                                      ldrh r0, [r5, #0x40]
005cbd70  ff 50 00 e2                                      and r5, r0, #0xff
005cbd74  20 04 25 e0                                      eor r0, r5, r0, lsr #8
005cbd78  00 0c 8c e1                                      orr r0, ip, r0, lsl #24
005cbd7c  03 00 81 e7                                      str r0, [r1, r3]
005cbd80  04 30 83 e2                                      add r3, r3, #4
005cbd84  ee ff ff 1a                                      bne #0x5cbd44
005cbd88  04 00 a0 e1                                      mov r0, r4
005cbd8c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005cbd90, declared_size=124, range_size=124, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterial25allocateProcessBufferHeapERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKcRKNS1_24SStateWithoutRenderStateEPKhPKNS0_6detail8material12SRenderStateE
; demangled: glitch::video::CMaterial::allocateProcessBufferHeap(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, char const*, glitch::video::CMaterial::SStateWithoutRenderState const&, unsigned char const*, glitch::video::detail::material::SRenderState const*)
; decoder-mode: arm
005cbd90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005cbd94  00 c0 90 e5                                      ldr ip, [r0]
005cbd98  08 d0 4d e2                                      sub sp, sp, #8
005cbd9c  00 40 a0 e1                                      mov r4, r0
005cbda0  0c 00 a0 e1                                      mov r0, ip
005cbda4  14 60 9c e5                                      ldr r6, [ip, #0x14]
005cbda8  01 70 a0 e1                                      mov r7, r1
005cbdac  02 80 a0 e1                                      mov r8, r2
005cbdb0  03 50 a0 e1                                      mov r5, r3
005cbdb4  f0 e7 ff eb                                      bl #0x5c5d7c
005cbdb8  00 30 94 e5                                      ldr r3, [r4]
005cbdbc  24 60 86 e2                                      add r6, r6, #0x24
005cbdc0  10 30 d3 e5                                      ldrb r3, [r3, #0x10]
005cbdc4  03 61 86 e0                                      add r6, r6, r3, lsl #2
005cbdc8  00 00 86 e0                                      add r0, r6, r0
005cbdcc  08 a2 fd eb                                      bl #0x5345f4
005cbdd0  00 60 50 e2                                      subs r6, r0, #0
005cbdd4  09 00 00 0a                                      beq #0x5cbe00
005cbdd8  00 00 55 e3                                      cmp r5, #0
005cbddc  00 30 94 05                                      ldreq r3, [r4]
005cbde0  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005cbde4  04 10 a0 e1                                      mov r1, r4
005cbde8  24 50 93 05                                      ldreq r5, [r3, #0x24]
005cbdec  07 20 a0 e1                                      mov r2, r7
005cbdf0  08 30 a0 e1                                      mov r3, r8
005cbdf4  06 00 a0 e1                                      mov r0, r6
005cbdf8  20 10 8d e8                                      stm sp, {r5, ip}
005cbdfc  9b ff ff eb                                      bl #0x5cbc70
005cbe00  06 00 a0 e1                                      mov r0, r6
005cbe04  08 d0 8d e2                                      add sp, sp, #8
005cbe08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005cbe0c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterial9cloneHeapEPKc
; demangled: glitch::video::CMaterial::cloneHeap(char const*) const
; decoder-mode: arm
005cbe0c  04 e0 2d e5                                      str lr, [sp, #-4]!
005cbe10  00 00 51 e3                                      cmp r1, #0
005cbe14  00 20 a0 e1                                      mov r2, r0
005cbe18  0c d0 4d e2                                      sub sp, sp, #0xc
005cbe1c  04 00 80 e2                                      add r0, r0, #4
005cbe20  08 00 00 0a                                      beq #0x5cbe48
005cbe24  04 c0 92 e5                                      ldr ip, [r2, #4]
005cbe28  20 30 82 e2                                      add r3, r2, #0x20
005cbe2c  08 20 82 e2                                      add r2, r2, #8
005cbe30  14 c0 9c e5                                      ldr ip, [ip, #0x14]
005cbe34  0c c0 83 e0                                      add ip, r3, ip
005cbe38  00 c0 8d e5                                      str ip, [sp]
005cbe3c  d3 ff ff eb                                      bl #0x5cbd90
005cbe40  0c d0 8d e2                                      add sp, sp, #0xc
005cbe44  00 80 bd e8                                      ldm sp!, {pc}
005cbe48  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
005cbe4c  00 00 53 e3                                      cmp r3, #0
005cbe50  04 10 83 12                                      addne r1, r3, #4
005cbe54  f2 ff ff ea                                      b #0x5cbe24

; FUNCTION 0x005cbe58, declared_size=288, range_size=288, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterialC2ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKcRKNS1_24SStateWithoutRenderStateEPKhPKNS0_6detail8material12SRenderStateE
; demangled: glitch::video::CMaterial::CMaterial(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, char const*, glitch::video::CMaterial::SStateWithoutRenderState const&, unsigned char const*, glitch::video::detail::material::SRenderState const*)
; decoder-mode: arm
005cbe58  70 40 2d e9                                      push {r4, r5, r6, lr}
005cbe5c  00 40 a0 e1                                      mov r4, r0
005cbe60  00 00 a0 e3                                      mov r0, #0
005cbe64  00 00 84 e5                                      str r0, [r4]
005cbe68  01 50 a0 e1                                      mov r5, r1
005cbe6c  00 10 91 e5                                      ldr r1, [r1]
005cbe70  00 00 51 e1                                      cmp r1, r0
005cbe74  04 10 84 e5                                      str r1, [r4, #4]
005cbe78  00 00 91 15                                      ldrne r0, [r1]
005cbe7c  01 00 80 12                                      addne r0, r0, #1
005cbe80  00 00 81 15                                      strne r0, [r1]
005cbe84  00 10 d3 e5                                      ldrb r1, [r3]
005cbe88  02 00 a0 e1                                      mov r0, r2
005cbe8c  08 10 c4 e5                                      strb r1, [r4, #8]
005cbe90  04 20 93 e5                                      ldr r2, [r3, #4]
005cbe94  01 10 a0 e3                                      mov r1, #1
005cbe98  0c 20 84 e5                                      str r2, [r4, #0xc]
005cbe9c  08 20 93 e5                                      ldr r2, [r3, #8]
005cbea0  10 20 84 e5                                      str r2, [r4, #0x10]
005cbea4  0c 30 d3 e5                                      ldrb r3, [r3, #0xc]
005cbea8  00 20 a0 e3                                      mov r2, #0
005cbeac  18 20 84 e5                                      str r2, [r4, #0x18]
005cbeb0  14 30 c4 e5                                      strb r3, [r4, #0x14]
005cbeb4  6e 64 03 eb                                      bl #0x6a5074
005cbeb8  00 00 50 e3                                      cmp r0, #0
005cbebc  1c 00 84 e5                                      str r0, [r4, #0x1c]
005cbec0  00 30 90 15                                      ldrne r3, [r0]
005cbec4  01 30 83 12                                      addne r3, r3, #1
005cbec8  00 30 80 15                                      strne r3, [r0]
005cbecc  00 30 95 e5                                      ldr r3, [r5]
005cbed0  03 00 a0 e1                                      mov r0, r3
005cbed4  14 50 93 e5                                      ldr r5, [r3, #0x14]
005cbed8  a7 e7 ff eb                                      bl #0x5c5d7c
005cbedc  20 50 85 e2                                      add r5, r5, #0x20
005cbee0  00 50 85 e0                                      add r5, r5, r0
005cbee4  05 50 84 e0                                      add r5, r4, r5
005cbee8  18 50 84 e5                                      str r5, [r4, #0x18]
005cbeec  10 10 9d e5                                      ldr r1, [sp, #0x10]
005cbef0  14 20 9d e5                                      ldr r2, [sp, #0x14]
005cbef4  04 00 a0 e1                                      mov r0, r4
005cbef8  00 30 a0 e3                                      mov r3, #0
005cbefc  37 ff ff eb                                      bl #0x5cbbe0
005cbf00  04 10 94 e5                                      ldr r1, [r4, #4]
005cbf04  10 60 d1 e5                                      ldrb r6, [r1, #0x10]
005cbf08  00 00 56 e3                                      cmp r6, #0
005cbf0c  17 00 00 0a                                      beq #0x5cbf70
005cbf10  01 60 46 e2                                      sub r6, r6, #1
005cbf14  76 30 ef e6                                      uxtb r3, r6
005cbf18  0c 60 a0 e3                                      mov r6, #0xc
005cbf1c  93 66 26 e0                                      mla r6, r3, r6, r6
005cbf20  00 30 a0 e3                                      mov r3, #0
005cbf24  03 20 a0 e1                                      mov r2, r3
005cbf28  00 00 00 ea                                      b #0x5cbf30
005cbf2c  04 10 94 e5                                      ldr r1, [r4, #4]
005cbf30  18 00 91 e5                                      ldr r0, [r1, #0x18]
005cbf34  18 10 94 e5                                      ldr r1, [r4, #0x18]
005cbf38  02 00 80 e0                                      add r0, r0, r2
005cbf3c  08 00 90 e5                                      ldr r0, [r0, #8]
005cbf40  03 c0 91 e7                                      ldr ip, [r1, r3]
005cbf44  0c 20 82 e2                                      add r2, r2, #0xc
005cbf48  20 50 90 e5                                      ldr r5, [r0, #0x20]
005cbf4c  ff c4 cc e3                                      bic ip, ip, #0xff000000
005cbf50  06 00 52 e1                                      cmp r2, r6
005cbf54  b0 04 d5 e1                                      ldrh r0, [r5, #0x40]
005cbf58  ff 50 00 e2                                      and r5, r0, #0xff
005cbf5c  20 04 25 e0                                      eor r0, r5, r0, lsr #8
005cbf60  00 0c 8c e1                                      orr r0, ip, r0, lsl #24
005cbf64  03 00 81 e7                                      str r0, [r1, r3]
005cbf68  04 30 83 e2                                      add r3, r3, #4
005cbf6c  ee ff ff 1a                                      bne #0x5cbf2c
005cbf70  04 00 a0 e1                                      mov r0, r4
005cbf74  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005cbf78, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterialD1Ev
; demangled: glitch::video::CMaterial::~CMaterial()
; decoder-mode: arm
005cbf78  10 40 2d e9                                      push {r4, lr}
005cbf7c  00 40 a0 e1                                      mov r4, r0
005cbf80  07 ff ff eb                                      bl #0x5cbba4
005cbf84  04 30 94 e5                                      ldr r3, [r4, #4]
005cbf88  04 30 93 e5                                      ldr r3, [r3, #4]
005cbf8c  00 00 53 e3                                      cmp r3, #0
005cbf90  04 00 00 0a                                      beq #0x5cbfa8
005cbf94  03 00 a0 e1                                      mov r0, r3
005cbf98  04 10 a0 e1                                      mov r1, r4
005cbf9c  00 30 93 e5                                      ldr r3, [r3]
005cbfa0  0f e0 a0 e1                                      mov lr, pc
005cbfa4  10 f2 93 e5                                      ldr pc, [r3, #0x210]
005cbfa8  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005cbfac  00 00 50 e3                                      cmp r0, #0
005cbfb0  04 00 00 0a                                      beq #0x5cbfc8
005cbfb4  00 30 90 e5                                      ldr r3, [r0]
005cbfb8  01 30 43 e2                                      sub r3, r3, #1
005cbfbc  00 00 53 e3                                      cmp r3, #0
005cbfc0  00 30 80 e5                                      str r3, [r0]
005cbfc4  03 00 00 0a                                      beq #0x5cbfd8
005cbfc8  04 00 84 e2                                      add r0, r4, #4
005cbfcc  b9 18 f6 eb                                      bl #0x3522b8
005cbfd0  04 00 a0 e1                                      mov r0, r4
005cbfd4  10 80 bd e8                                      pop {r4, pc}
005cbfd8  6f 63 03 eb                                      bl #0x6a4d9c
005cbfdc  04 00 84 e2                                      add r0, r4, #4
005cbfe0  b4 18 f6 eb                                      bl #0x3522b8
005cbfe4  04 00 a0 e1                                      mov r0, r4
005cbfe8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cbfec, declared_size=180, range_size=180, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterial8allocateERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKcRKNS1_24SStateWithoutRenderStateEPKhPKNS0_6detail8material12SRenderStateE
; demangled: glitch::video::CMaterial::allocate(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, char const*, glitch::video::CMaterial::SStateWithoutRenderState const&, unsigned char const*, glitch::video::detail::material::SRenderState const*)
; decoder-mode: arm
005cbfec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005cbff0  00 50 a0 e3                                      mov r5, #0
005cbff4  00 50 80 e5                                      str r5, [r0]
005cbff8  01 60 a0 e1                                      mov r6, r1
005cbffc  00 10 91 e5                                      ldr r1, [r1]
005cc000  10 d0 4d e2                                      sub sp, sp, #0x10
005cc004  00 40 a0 e1                                      mov r4, r0
005cc008  01 00 a0 e1                                      mov r0, r1
005cc00c  14 90 91 e5                                      ldr sb, [r1, #0x14]
005cc010  02 80 a0 e1                                      mov r8, r2
005cc014  03 70 a0 e1                                      mov r7, r3
005cc018  30 a0 9d e5                                      ldr sl, [sp, #0x30]
005cc01c  56 e7 ff eb                                      bl #0x5c5d7c
005cc020  00 20 96 e5                                      ldr r2, [r6]
005cc024  24 30 89 e2                                      add r3, sb, #0x24
005cc028  05 10 a0 e1                                      mov r1, r5
005cc02c  10 20 d2 e5                                      ldrb r2, [r2, #0x10]
005cc030  02 31 83 e0                                      add r3, r3, r2, lsl #2
005cc034  00 00 83 e0                                      add r0, r3, r0
005cc038  5a a0 fd eb                                      bl #0x5341a8
005cc03c  00 50 50 e2                                      subs r5, r0, #0
005cc040  13 00 00 0a                                      beq #0x5cc094
005cc044  00 00 5a e3                                      cmp sl, #0
005cc048  00 30 96 05                                      ldreq r3, [r6]
005cc04c  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005cc050  08 20 a0 e1                                      mov r2, r8
005cc054  24 a0 93 05                                      ldreq sl, [r3, #0x24]
005cc058  06 10 a0 e1                                      mov r1, r6
005cc05c  07 30 a0 e1                                      mov r3, r7
005cc060  05 00 a0 e1                                      mov r0, r5
005cc064  00 14 8d e8                                      stm sp, {sl, ip}
005cc068  00 ff ff eb                                      bl #0x5cbc70
005cc06c  0c 50 8d e5                                      str r5, [sp, #0xc]
005cc070  00 30 95 e5                                      ldr r3, [r5]
005cc074  10 00 8d e2                                      add r0, sp, #0x10
005cc078  01 30 83 e2                                      add r3, r3, #1
005cc07c  00 30 85 e5                                      str r3, [r5]
005cc080  00 20 94 e5                                      ldr r2, [r4]
005cc084  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005cc088  04 20 20 e5                                      str r2, [r0, #-4]!
005cc08c  00 30 84 e5                                      str r3, [r4]
005cc090  d4 12 f5 eb                                      bl #0x310be8
005cc094  04 00 a0 e1                                      mov r0, r4
005cc098  10 d0 8d e2                                      add sp, sp, #0x10
005cc09c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005cc0a0, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterial8allocateERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKch
; demangled: glitch::video::CMaterial::allocate(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, char const*, unsigned char)
; decoder-mode: arm
005cc0a0  10 40 2d e9                                      push {r4, lr}
005cc0a4  00 e0 91 e5                                      ldr lr, [r1]
005cc0a8  18 d0 4d e2                                      sub sp, sp, #0x18
005cc0ac  00 c0 a0 e3                                      mov ip, #0
005cc0b0  00 30 e0 e3                                      mvn r3, #0
005cc0b4  10 30 8d e5                                      str r3, [sp, #0x10]
005cc0b8  0c 30 8d e5                                      str r3, [sp, #0xc]
005cc0bc  08 c0 cd e5                                      strb ip, [sp, #8]
005cc0c0  14 c0 cd e5                                      strb ip, [sp, #0x14]
005cc0c4  24 e0 9e e5                                      ldr lr, [lr, #0x24]
005cc0c8  00 40 a0 e1                                      mov r4, r0
005cc0cc  08 30 8d e2                                      add r3, sp, #8
005cc0d0  00 e0 8d e5                                      str lr, [sp]
005cc0d4  04 c0 8d e5                                      str ip, [sp, #4]
005cc0d8  c3 ff ff eb                                      bl #0x5cbfec
005cc0dc  04 00 a0 e1                                      mov r0, r4
005cc0e0  18 d0 8d e2                                      add sp, sp, #0x18
005cc0e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cc0e8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterial5cloneEPKc
; demangled: glitch::video::CMaterial::clone(char const*) const
; decoder-mode: arm
005cc0e8  10 40 2d e9                                      push {r4, lr}
005cc0ec  00 00 52 e3                                      cmp r2, #0
005cc0f0  01 30 a0 e1                                      mov r3, r1
005cc0f4  08 d0 4d e2                                      sub sp, sp, #8
005cc0f8  00 40 a0 e1                                      mov r4, r0
005cc0fc  04 10 81 e2                                      add r1, r1, #4
005cc100  0b 00 00 0a                                      beq #0x5cc134
005cc104  04 c0 93 e5                                      ldr ip, [r3, #4]
005cc108  20 00 83 e2                                      add r0, r3, #0x20
005cc10c  00 00 8d e5                                      str r0, [sp]
005cc110  14 c0 9c e5                                      ldr ip, [ip, #0x14]
005cc114  08 30 83 e2                                      add r3, r3, #8
005cc118  0c c0 80 e0                                      add ip, r0, ip
005cc11c  04 00 a0 e1                                      mov r0, r4
005cc120  04 c0 8d e5                                      str ip, [sp, #4]
005cc124  b0 ff ff eb                                      bl #0x5cbfec
005cc128  04 00 a0 e1                                      mov r0, r4
005cc12c  08 d0 8d e2                                      add sp, sp, #8
005cc130  10 80 bd e8                                      pop {r4, pc}
005cc134  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
005cc138  00 00 50 e3                                      cmp r0, #0
005cc13c  04 20 80 12                                      addne r2, r0, #4
005cc140  ef ff ff ea                                      b #0x5cc104

; FUNCTION 0x005cc144, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterialD2Ev
; demangled: glitch::video::CMaterial::~CMaterial()
; decoder-mode: arm
005cc144  10 40 2d e9                                      push {r4, lr}
005cc148  00 40 a0 e1                                      mov r4, r0
005cc14c  94 fe ff eb                                      bl #0x5cbba4
005cc150  04 30 94 e5                                      ldr r3, [r4, #4]
005cc154  04 30 93 e5                                      ldr r3, [r3, #4]
005cc158  00 00 53 e3                                      cmp r3, #0
005cc15c  04 00 00 0a                                      beq #0x5cc174
005cc160  03 00 a0 e1                                      mov r0, r3
005cc164  04 10 a0 e1                                      mov r1, r4
005cc168  00 30 93 e5                                      ldr r3, [r3]
005cc16c  0f e0 a0 e1                                      mov lr, pc
005cc170  10 f2 93 e5                                      ldr pc, [r3, #0x210]
005cc174  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005cc178  00 00 50 e3                                      cmp r0, #0
005cc17c  04 00 00 0a                                      beq #0x5cc194
005cc180  00 30 90 e5                                      ldr r3, [r0]
005cc184  01 30 43 e2                                      sub r3, r3, #1
005cc188  00 00 53 e3                                      cmp r3, #0
005cc18c  00 30 80 e5                                      str r3, [r0]
005cc190  03 00 00 0a                                      beq #0x5cc1a4
005cc194  04 00 84 e2                                      add r0, r4, #4
005cc198  46 18 f6 eb                                      bl #0x3522b8
005cc19c  04 00 a0 e1                                      mov r0, r4
005cc1a0  10 80 bd e8                                      pop {r4, pc}
005cc1a4  fc 62 03 eb                                      bl #0x6a4d9c
005cc1a8  04 00 84 e2                                      add r0, r4, #4
005cc1ac  41 18 f6 eb                                      bl #0x3522b8
005cc1b0  04 00 a0 e1                                      mov r0, r4
005cc1b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cda48, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZN6glitch5video9CMaterial21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::CMaterial::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
005cda48  70 40 2d e9                                      push {r4, r5, r6, lr}
005cda4c  01 40 a0 e1                                      mov r4, r1
005cda50  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
005cda54  00 50 a0 e1                                      mov r5, r0
005cda58  00 30 94 e5                                      ldr r3, [r4]
005cda5c  01 10 8f e0                                      add r1, pc, r1
005cda60  04 00 a0 e1                                      mov r0, r4
005cda64  0f e0 a0 e1                                      mov lr, pc
005cda68  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
005cda6c  00 10 a0 e1                                      mov r1, r0
005cda70  04 00 95 e5                                      ldr r0, [r5, #4]
005cda74  26 1b 00 eb                                      bl #0x5d4714
005cda78  38 10 9f e5                                      ldr r1, [pc, #0x38]
005cda7c  08 00 c5 e5                                      strb r0, [r5, #8]
005cda80  00 30 94 e5                                      ldr r3, [r4]
005cda84  04 00 a0 e1                                      mov r0, r4
005cda88  01 10 8f e0                                      add r1, pc, r1
005cda8c  0f e0 a0 e1                                      mov lr, pc
005cda90  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005cda94  05 00 a0 e1                                      mov r0, r5
005cda98  04 10 a0 e1                                      mov r1, r4
005cda9c  52 fe ff eb                                      bl #0x5cd3ec
005cdaa0  04 00 a0 e1                                      mov r0, r4
005cdaa4  00 30 94 e5                                      ldr r3, [r4]
005cdaa8  0f e0 a0 e1                                      mov lr, pc
005cdaac  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005cdab0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005cdab4  1c 30 31 00 00 30 31 00                          .byte 0x1c, 0x30, 0x31, 0x00, 0x00, 0x30, 0x31, 0x00

; FUNCTION 0x005ce460, declared_size=776, range_size=776, mode=arm
; class-group: glitch::video::CMaterial
; alias: _ZNK6glitch5video9CMaterial19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::CMaterial::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005ce460  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ce464  d4 72 9f e5                                      ldr r7, [pc, #0x2d4]
005ce468  d4 22 9f e5                                      ldr r2, [pc, #0x2d4]
005ce46c  3c d0 4d e2                                      sub sp, sp, #0x3c
005ce470  07 70 8f e0                                      add r7, pc, r7
005ce474  02 30 97 e7                                      ldr r3, [r7, r2]
005ce478  01 60 a0 e1                                      mov r6, r1
005ce47c  0c 20 8d e5                                      str r2, [sp, #0xc]
005ce480  00 10 93 e5                                      ldr r1, [r3]
005ce484  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
005ce488  00 30 96 e5                                      ldr r3, [r6]
005ce48c  34 10 8d e5                                      str r1, [sp, #0x34]
005ce490  b0 12 9f e5                                      ldr r1, [pc, #0x2b0]
005ce494  00 00 52 e3                                      cmp r2, #0
005ce498  04 20 82 12                                      addne r2, r2, #4
005ce49c  7c c0 93 e5                                      ldr ip, [r3, #0x7c]
005ce4a0  00 40 a0 e1                                      mov r4, r0
005ce4a4  01 10 8f e0                                      add r1, pc, r1
005ce4a8  06 00 a0 e1                                      mov r0, r6
005ce4ac  01 30 a0 e3                                      mov r3, #1
005ce4b0  3c ff 2f e1                                      blx ip
005ce4b4  04 30 94 e5                                      ldr r3, [r4, #4]
005ce4b8  8c 12 9f e5                                      ldr r1, [pc, #0x28c]
005ce4bc  06 00 a0 e1                                      mov r0, r6
005ce4c0  08 50 93 e5                                      ldr r5, [r3, #8]
005ce4c4  01 10 8f e0                                      add r1, pc, r1
005ce4c8  01 30 a0 e3                                      mov r3, #1
005ce4cc  05 20 a0 e1                                      mov r2, r5
005ce4d0  00 c0 96 e5                                      ldr ip, [r6]
005ce4d4  0f e0 a0 e1                                      mov lr, pc
005ce4d8  7c f0 9c e5                                      ldr pc, [ip, #0x7c]
005ce4dc  6c 12 9f e5                                      ldr r1, [pc, #0x26c]
005ce4e0  1c 30 8d e2                                      add r3, sp, #0x1c
005ce4e4  03 00 a0 e1                                      mov r0, r3
005ce4e8  01 10 8f e0                                      add r1, pc, r1
005ce4ec  01 20 a0 e1                                      mov r2, r1
005ce4f0  08 30 8d e5                                      str r3, [sp, #8]
005ce4f4  2c 30 8d e5                                      str r3, [sp, #0x2c]
005ce4f8  30 30 8d e5                                      str r3, [sp, #0x30]
005ce4fc  bc 5e f5 eb                                      bl #0x325ff4
005ce500  4c 32 9f e5                                      ldr r3, [pc, #0x24c]
005ce504  03 30 97 e7                                      ldr r3, [r7, r3]
005ce508  00 90 93 e5                                      ldr sb, [r3]
005ce50c  10 80 99 e5                                      ldr r8, [sb, #0x10]
005ce510  08 90 89 e2                                      add sb, sb, #8
005ce514  09 00 58 e1                                      cmp r8, sb
005ce518  1d 00 00 0a                                      beq #0x5ce594
005ce51c  34 32 9f e5                                      ldr r3, [pc, #0x234]
005ce520  14 a0 8d e2                                      add sl, sp, #0x14
005ce524  03 b0 97 e7                                      ldr fp, [r7, r3]
005ce528  28 30 98 e5                                      ldr r3, [r8, #0x28]
005ce52c  18 b0 8d e5                                      str fp, [sp, #0x18]
005ce530  00 00 53 e3                                      cmp r3, #0
005ce534  14 30 8d e5                                      str r3, [sp, #0x14]
005ce538  03 00 00 0a                                      beq #0x5ce54c
005ce53c  04 20 93 e5                                      ldr r2, [r3, #4]
005ce540  00 00 52 e3                                      cmp r2, #0
005ce544  01 20 82 12                                      addne r2, r2, #1
005ce548  04 20 83 15                                      strne r2, [r3, #4]
005ce54c  0a 00 a0 e1                                      mov r0, sl
005ce550  05 10 a0 e1                                      mov r1, r5
005ce554  d4 32 01 eb                                      bl #0x61b0ac
005ce558  00 00 50 e3                                      cmp r0, #0
005ce55c  6b 00 00 1a                                      bne #0x5ce710
005ce560  0c 20 98 e5                                      ldr r2, [r8, #0xc]
005ce564  00 00 52 e3                                      cmp r2, #0
005ce568  01 00 00 1a                                      bne #0x5ce574
005ce56c  5a 00 00 ea                                      b #0x5ce6dc
005ce570  03 20 a0 e1                                      mov r2, r3
005ce574  08 30 92 e5                                      ldr r3, [r2, #8]
005ce578  00 00 53 e3                                      cmp r3, #0
005ce57c  fb ff ff 1a                                      bne #0x5ce570
005ce580  02 80 a0 e1                                      mov r8, r2
005ce584  0a 00 a0 e1                                      mov r0, sl
005ce588  b9 2b 01 eb                                      bl #0x619474
005ce58c  08 00 59 e1                                      cmp sb, r8
005ce590  e4 ff ff 1a                                      bne #0x5ce528
005ce594  c0 11 9f e5                                      ldr r1, [pc, #0x1c0]
005ce598  30 20 9d e5                                      ldr r2, [sp, #0x30]
005ce59c  06 00 a0 e1                                      mov r0, r6
005ce5a0  01 10 8f e0                                      add r1, pc, r1
005ce5a4  01 30 a0 e3                                      mov r3, #1
005ce5a8  00 c0 96 e5                                      ldr ip, [r6]
005ce5ac  0f e0 a0 e1                                      mov lr, pc
005ce5b0  7c f0 9c e5                                      ldr pc, [ip, #0x7c]
005ce5b4  04 30 94 e5                                      ldr r3, [r4, #4]
005ce5b8  10 00 d3 e5                                      ldrb r0, [r3, #0x10]
005ce5bc  01 00 80 e2                                      add r0, r0, #1
005ce5c0  00 01 a0 e1                                      lsl r0, r0, #2
005ce5c4  0a 98 fd eb                                      bl #0x5345f4
005ce5c8  04 10 94 e5                                      ldr r1, [r4, #4]
005ce5cc  00 50 a0 e1                                      mov r5, r0
005ce5d0  10 20 d1 e5                                      ldrb r2, [r1, #0x10]
005ce5d4  01 30 a0 e1                                      mov r3, r1
005ce5d8  00 00 52 e3                                      cmp r2, #0
005ce5dc  12 00 00 0a                                      beq #0x5ce62c
005ce5e0  01 20 42 e2                                      sub r2, r2, #1
005ce5e4  72 c0 ef e6                                      uxtb ip, r2
005ce5e8  01 c0 8c e2                                      add ip, ip, #1
005ce5ec  00 20 a0 e3                                      mov r2, #0
005ce5f0  0c c1 a0 e1                                      lsl ip, ip, #2
005ce5f4  02 30 a0 e1                                      mov r3, r2
005ce5f8  00 00 00 ea                                      b #0x5ce600
005ce5fc  04 10 94 e5                                      ldr r1, [r4, #4]
005ce600  18 10 91 e5                                      ldr r1, [r1, #0x18]
005ce604  03 00 85 e0                                      add r0, r5, r3
005ce608  04 30 83 e2                                      add r3, r3, #4
005ce60c  02 10 91 e7                                      ldr r1, [r1, r2]
005ce610  0c 20 82 e2                                      add r2, r2, #0xc
005ce614  00 00 51 e3                                      cmp r1, #0
005ce618  04 10 81 12                                      addne r1, r1, #4
005ce61c  0c 00 53 e1                                      cmp r3, ip
005ce620  00 10 80 e5                                      str r1, [r0]
005ce624  f4 ff ff 1a                                      bne #0x5ce5fc
005ce628  04 30 94 e5                                      ldr r3, [r4, #4]
005ce62c  10 20 d3 e5                                      ldrb r2, [r3, #0x10]
005ce630  28 11 9f e5                                      ldr r1, [pc, #0x128]
005ce634  00 30 a0 e3                                      mov r3, #0
005ce638  02 31 85 e7                                      str r3, [r5, r2, lsl #2]
005ce63c  08 20 d4 e5                                      ldrb r2, [r4, #8]
005ce640  00 30 8d e5                                      str r3, [sp]
005ce644  00 c0 96 e5                                      ldr ip, [r6]
005ce648  01 10 8f e0                                      add r1, pc, r1
005ce64c  05 30 a0 e1                                      mov r3, r5
005ce650  06 00 a0 e1                                      mov r0, r6
005ce654  0f e0 a0 e1                                      mov lr, pc
005ce658  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005ce65c  00 11 9f e5                                      ldr r1, [pc, #0x100]
005ce660  00 30 96 e5                                      ldr r3, [r6]
005ce664  06 00 a0 e1                                      mov r0, r6
005ce668  01 10 8f e0                                      add r1, pc, r1
005ce66c  0f e0 a0 e1                                      mov lr, pc
005ce670  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005ce674  04 00 a0 e1                                      mov r0, r4
005ce678  06 10 a0 e1                                      mov r1, r6
005ce67c  2e fd ff eb                                      bl #0x5cdb3c
005ce680  06 00 a0 e1                                      mov r0, r6
005ce684  00 30 96 e5                                      ldr r3, [r6]
005ce688  0f e0 a0 e1                                      mov lr, pc
005ce68c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005ce690  00 00 55 e3                                      cmp r5, #0
005ce694  01 00 00 0a                                      beq #0x5ce6a0
005ce698  05 00 a0 e1                                      mov r0, r5
005ce69c  f9 97 fd eb                                      bl #0x534688
005ce6a0  30 00 9d e5                                      ldr r0, [sp, #0x30]
005ce6a4  08 30 9d e5                                      ldr r3, [sp, #8]
005ce6a8  03 00 50 e1                                      cmp r0, r3
005ce6ac  02 00 00 0a                                      beq #0x5ce6bc
005ce6b0  00 00 50 e3                                      cmp r0, #0
005ce6b4  00 00 00 0a                                      beq #0x5ce6bc
005ce6b8  64 07 f5 eb                                      bl #0x310450
005ce6bc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005ce6c0  02 30 97 e7                                      ldr r3, [r7, r2]
005ce6c4  34 20 9d e5                                      ldr r2, [sp, #0x34]
005ce6c8  00 30 93 e5                                      ldr r3, [r3]
005ce6cc  03 00 52 e1                                      cmp r2, r3
005ce6d0  19 00 00 1a                                      bne #0x5ce73c
005ce6d4  3c d0 8d e2                                      add sp, sp, #0x3c
005ce6d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ce6dc  04 30 98 e5                                      ldr r3, [r8, #4]
005ce6e0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005ce6e4  08 00 51 e1                                      cmp r1, r8
005ce6e8  05 00 00 1a                                      bne #0x5ce704
005ce6ec  03 80 a0 e1                                      mov r8, r3
005ce6f0  04 30 93 e5                                      ldr r3, [r3, #4]
005ce6f4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005ce6f8  08 00 52 e1                                      cmp r2, r8
005ce6fc  fa ff ff 0a                                      beq #0x5ce6ec
005ce700  0c 20 98 e5                                      ldr r2, [r8, #0xc]
005ce704  03 00 52 e1                                      cmp r2, r3
005ce708  03 80 a0 11                                      movne r8, r3
005ce70c  9c ff ff ea                                      b #0x5ce584
005ce710  08 20 9d e5                                      ldr r2, [sp, #8]
005ce714  10 30 88 e2                                      add r3, r8, #0x10
005ce718  03 00 52 e1                                      cmp r2, r3
005ce71c  03 00 00 0a                                      beq #0x5ce730
005ce720  20 20 98 e5                                      ldr r2, [r8, #0x20]
005ce724  08 00 9d e5                                      ldr r0, [sp, #8]
005ce728  24 10 98 e5                                      ldr r1, [r8, #0x24]
005ce72c  15 49 f5 eb                                      bl #0x320b88
005ce730  0a 00 a0 e1                                      mov r0, sl
005ce734  4e 2b 01 eb                                      bl #0x619474
005ce738  95 ff ff ea                                      b #0x5ce594
005ce73c  f3 fe f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005ce740  20 66 3c 00 ac 40 00 00 dc d8 2f 00 d4 25 31 00  .byte 0x20, 0x66, 0x3c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0xd8, 0x2f, 0x00, 0xd4, 0x25, 0x31, 0x00
005ce750  20 d3 2f 00 48 44 00 00 10 47 00 00 10 25 31 00  .byte 0x20, 0xd3, 0x2f, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00, 0x10, 0x25, 0x31, 0x00
005ce760  30 24 31 00 20 24 31 00                          .byte 0x30, 0x24, 0x31, 0x00, 0x20, 0x24, 0x31, 0x00
