; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00578d9c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene32getNbVertexAttributeMapsDataSizeERKN5boost13intrusive_ptrINS_5video27CMaterialVertexAttributeMapEEE
; demangled: glitch::scene::getNbVertexAttributeMapsDataSize(boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&)
; decoder-mode: arm
00578d9c  00 30 90 e5                                      ldr r3, [r0]
00578da0  04 30 93 e5                                      ldr r3, [r3, #4]
00578da4  10 00 d3 e5                                      ldrb r0, [r3, #0x10]
00578da8  00 00 50 e3                                      cmp r0, #0
00578dac  1e ff 2f 01                                      bxeq lr
00578db0  01 00 40 e2                                      sub r0, r0, #1
00578db4  70 00 ef e6                                      uxtb r0, r0
00578db8  0c c0 a0 e3                                      mov ip, #0xc
00578dbc  18 10 93 e5                                      ldr r1, [r3, #0x18]
00578dc0  00 30 a0 e3                                      mov r3, #0
00578dc4  90 cc 2c e0                                      mla ip, r0, ip, ip
00578dc8  03 00 a0 e1                                      mov r0, r3
00578dcc  03 20 81 e0                                      add r2, r1, r3
00578dd0  04 20 d2 e5                                      ldrb r2, [r2, #4]
00578dd4  0c 30 83 e2                                      add r3, r3, #0xc
00578dd8  0c 00 53 e1                                      cmp r3, ip
00578ddc  02 00 80 e0                                      add r0, r0, r2
00578de0  70 00 ff e6                                      uxth r0, r0
00578de4  f8 ff ff 1a                                      bne #0x578dcc
00578de8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0059a0a4, declared_size=140, range_size=140, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_118getTriangleIndicesENS_5video12E_INDEX_TYPEEPKvjRjS6_S6_
; demangled: glitch::scene::(anonymous namespace)::getTriangleIndices(glitch::video::E_INDEX_TYPE, void const*, unsigned int, unsigned int&, unsigned int&, unsigned int&)
; decoder-mode: arm
0059a0a4  30 00 2d e9                                      push {r4, r5}
0059a0a8  01 00 50 e3                                      cmp r0, #1
0059a0ac  08 40 9d e5                                      ldr r4, [sp, #8]
0059a0b0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0059a0b4  14 00 00 0a                                      beq #0x59a10c
0059a0b8  02 00 50 e3                                      cmp r0, #2
0059a0bc  09 00 00 0a                                      beq #0x59a0e8
0059a0c0  00 00 50 e3                                      cmp r0, #0
0059a0c4  05 00 00 1a                                      bne #0x59a0e0
0059a0c8  02 20 f1 e7                                      ldrb r2, [r1, r2]!
0059a0cc  00 20 83 e5                                      str r2, [r3]
0059a0d0  01 30 d1 e5                                      ldrb r3, [r1, #1]
0059a0d4  00 30 84 e5                                      str r3, [r4]
0059a0d8  02 30 d1 e5                                      ldrb r3, [r1, #2]
0059a0dc  00 30 8c e5                                      str r3, [ip]
0059a0e0  30 00 bd e8                                      pop {r4, r5}
0059a0e4  1e ff 2f e1                                      bx lr
0059a0e8  02 51 91 e7                                      ldr r5, [r1, r2, lsl #2]
0059a0ec  01 00 82 e2                                      add r0, r2, #1
0059a0f0  02 20 82 e2                                      add r2, r2, #2
0059a0f4  00 50 83 e5                                      str r5, [r3]
0059a0f8  00 31 91 e7                                      ldr r3, [r1, r0, lsl #2]
0059a0fc  00 30 84 e5                                      str r3, [r4]
0059a100  02 31 91 e7                                      ldr r3, [r1, r2, lsl #2]
0059a104  00 30 8c e5                                      str r3, [ip]
0059a108  f4 ff ff ea                                      b #0x59a0e0
0059a10c  82 00 a0 e1                                      lsl r0, r2, #1
0059a110  b0 50 91 e1                                      ldrh r5, [r1, r0]
0059a114  82 00 81 e0                                      add r0, r1, r2, lsl #1
0059a118  00 50 83 e5                                      str r5, [r3]
0059a11c  b2 30 d0 e1                                      ldrh r3, [r0, #2]
0059a120  00 30 84 e5                                      str r3, [r4]
0059a124  b4 30 d0 e1                                      ldrh r3, [r0, #4]
0059a128  00 30 8c e5                                      str r3, [ip]
0059a12c  eb ff ff ea                                      b #0x59a0e0

; FUNCTION 0x0059a130, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_111swapIndicesENS_5video12E_INDEX_TYPEEPvjj
; demangled: glitch::scene::(anonymous namespace)::swapIndices(glitch::video::E_INDEX_TYPE, void*, unsigned int, unsigned int)
; decoder-mode: arm
0059a130  01 00 50 e3                                      cmp r0, #1
0059a134  07 00 00 0a                                      beq #0x59a158
0059a138  02 00 50 e3                                      cmp r0, #2
0059a13c  0c 00 00 0a                                      beq #0x59a174
0059a140  00 00 50 e3                                      cmp r0, #0
0059a144  02 00 d1 07                                      ldrbeq r0, [r1, r2]
0059a148  03 c0 d1 07                                      ldrbeq ip, [r1, r3]
0059a14c  02 c0 c1 07                                      strbeq ip, [r1, r2]
0059a150  03 00 c1 07                                      strbeq r0, [r1, r3]
0059a154  1e ff 2f e1                                      bx lr
0059a158  82 20 a0 e1                                      lsl r2, r2, #1
0059a15c  83 30 a0 e1                                      lsl r3, r3, #1
0059a160  b2 00 91 e1                                      ldrh r0, [r1, r2]
0059a164  b3 c0 91 e1                                      ldrh ip, [r1, r3]
0059a168  b2 c0 81 e1                                      strh ip, [r1, r2]
0059a16c  b3 00 81 e1                                      strh r0, [r1, r3]
0059a170  1e ff 2f e1                                      bx lr
0059a174  02 01 91 e7                                      ldr r0, [r1, r2, lsl #2]
0059a178  03 c1 91 e7                                      ldr ip, [r1, r3, lsl #2]
0059a17c  02 c1 81 e7                                      str ip, [r1, r2, lsl #2]
0059a180  03 01 81 e7                                      str r0, [r1, r3, lsl #2]
0059a184  1e ff 2f e1                                      bx lr

; FUNCTION 0x0059a188, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene26createMeshUniquePrimitivesERKN5boost13intrusive_ptrINS0_5IMeshEEE
; demangled: glitch::scene::createMeshUniquePrimitives(boost::intrusive_ptr<glitch::scene::IMesh> const&)
; decoder-mode: arm
0059a188  00 30 91 e5                                      ldr r3, [r1]
0059a18c  00 00 53 e3                                      cmp r3, #0
0059a190  00 30 80 e5                                      str r3, [r0]
0059a194  04 20 93 15                                      ldrne r2, [r3, #4]
0059a198  01 20 82 12                                      addne r2, r2, #1
0059a19c  04 20 83 15                                      strne r2, [r3, #4]
0059a1a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0059a1a4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene16createMeshWeldedERKN5boost13intrusive_ptrINS0_5IMeshEEEf
; demangled: glitch::scene::createMeshWelded(boost::intrusive_ptr<glitch::scene::IMesh> const&, float)
; decoder-mode: arm
0059a1a4  00 30 91 e5                                      ldr r3, [r1]
0059a1a8  00 00 53 e3                                      cmp r3, #0
0059a1ac  00 30 80 e5                                      str r3, [r0]
0059a1b0  04 20 93 15                                      ldrne r2, [r3, #4]
0059a1b4  01 20 82 12                                      addne r2, r2, #1
0059a1b8  04 20 83 15                                      strne r2, [r3, #4]
0059a1bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0059a620, declared_size=1032, range_size=1032, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_117calculateTangentsERNS_4core8vector3dIfEES5_S5_RKS4_S7_S7_RKNS2_8vector2dIfEESB_SB_
; demangled: glitch::scene::(anonymous namespace)::calculateTangents(glitch::core::vector3d<float>&, glitch::core::vector3d<float>&, glitch::core::vector3d<float>&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector2d<float> const&, glitch::core::vector2d<float> const&, glitch::core::vector2d<float> const&)
; decoder-mode: arm
0059a620  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059a624  1c d0 4d e2                                      sub sp, sp, #0x1c
0059a628  00 90 93 e5                                      ldr sb, [r3]
0059a62c  40 80 9d e5                                      ldr r8, [sp, #0x40]
0059a630  00 50 a0 e1                                      mov r5, r0
0059a634  01 40 a0 e1                                      mov r4, r1
0059a638  09 00 a0 e1                                      mov r0, sb
0059a63c  00 10 98 e5                                      ldr r1, [r8]
0059a640  02 60 a0 e1                                      mov r6, r2
0059a644  03 70 a0 e1                                      mov r7, r3
0059a648  57 cf f5 eb                                      bl #0x30e3ac
0059a64c  04 30 97 e5                                      ldr r3, [r7, #4]
0059a650  04 10 98 e5                                      ldr r1, [r8, #4]
0059a654  00 b0 a0 e1                                      mov fp, r0
0059a658  03 00 a0 e1                                      mov r0, r3
0059a65c  00 30 8d e5                                      str r3, [sp]
0059a660  51 cf f5 eb                                      bl #0x30e3ac
0059a664  08 20 97 e5                                      ldr r2, [r7, #8]
0059a668  08 10 98 e5                                      ldr r1, [r8, #8]
0059a66c  00 a0 a0 e1                                      mov sl, r0
0059a670  02 00 a0 e1                                      mov r0, r2
0059a674  04 20 8d e5                                      str r2, [sp, #4]
0059a678  4b cf f5 eb                                      bl #0x30e3ac
0059a67c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0059a680  00 70 a0 e1                                      mov r7, r0
0059a684  09 10 a0 e1                                      mov r1, sb
0059a688  00 00 9c e5                                      ldr r0, [ip]
0059a68c  46 cf f5 eb                                      bl #0x30e3ac
0059a690  00 30 9d e5                                      ldr r3, [sp]
0059a694  00 90 a0 e1                                      mov sb, r0
0059a698  03 10 a0 e1                                      mov r1, r3
0059a69c  44 30 9d e5                                      ldr r3, [sp, #0x44]
0059a6a0  04 00 93 e5                                      ldr r0, [r3, #4]
0059a6a4  40 cf f5 eb                                      bl #0x30e3ac
0059a6a8  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0059a6ac  04 20 9d e5                                      ldr r2, [sp, #4]
0059a6b0  00 80 a0 e1                                      mov r8, r0
0059a6b4  08 00 9c e5                                      ldr r0, [ip, #8]
0059a6b8  02 10 a0 e1                                      mov r1, r2
0059a6bc  3a cf f5 eb                                      bl #0x30e3ac
0059a6c0  02 11 88 e2                                      add r1, r8, #0x80000000
0059a6c4  08 00 8d e5                                      str r0, [sp, #8]
0059a6c8  07 00 a0 e1                                      mov r0, r7
0059a6cc  a6 d1 f5 eb                                      bl #0x30ed6c
0059a6d0  08 10 9d e5                                      ldr r1, [sp, #8]
0059a6d4  00 30 a0 e1                                      mov r3, r0
0059a6d8  0a 00 a0 e1                                      mov r0, sl
0059a6dc  00 30 8d e5                                      str r3, [sp]
0059a6e0  a1 d1 f5 eb                                      bl #0x30ed6c
0059a6e4  00 30 9d e5                                      ldr r3, [sp]
0059a6e8  00 10 a0 e1                                      mov r1, r0
0059a6ec  03 00 a0 e1                                      mov r0, r3
0059a6f0  2b d1 f5 eb                                      bl #0x30eba4
0059a6f4  08 20 9d e5                                      ldr r2, [sp, #8]
0059a6f8  00 00 85 e5                                      str r0, [r5]
0059a6fc  0b 00 a0 e1                                      mov r0, fp
0059a700  02 11 82 e2                                      add r1, r2, #0x80000000
0059a704  98 d1 f5 eb                                      bl #0x30ed6c
0059a708  09 10 a0 e1                                      mov r1, sb
0059a70c  00 30 a0 e1                                      mov r3, r0
0059a710  07 00 a0 e1                                      mov r0, r7
0059a714  00 30 8d e5                                      str r3, [sp]
0059a718  93 d1 f5 eb                                      bl #0x30ed6c
0059a71c  00 30 9d e5                                      ldr r3, [sp]
0059a720  00 10 a0 e1                                      mov r1, r0
0059a724  03 00 a0 e1                                      mov r0, r3
0059a728  1d d1 f5 eb                                      bl #0x30eba4
0059a72c  02 11 89 e2                                      add r1, sb, #0x80000000
0059a730  04 00 85 e5                                      str r0, [r5, #4]
0059a734  0a 00 a0 e1                                      mov r0, sl
0059a738  8b d1 f5 eb                                      bl #0x30ed6c
0059a73c  08 10 a0 e1                                      mov r1, r8
0059a740  00 30 a0 e1                                      mov r3, r0
0059a744  0b 00 a0 e1                                      mov r0, fp
0059a748  00 30 8d e5                                      str r3, [sp]
0059a74c  86 d1 f5 eb                                      bl #0x30ed6c
0059a750  00 30 9d e5                                      ldr r3, [sp]
0059a754  00 10 a0 e1                                      mov r1, r0
0059a758  03 00 a0 e1                                      mov r0, r3
0059a75c  10 d1 f5 eb                                      bl #0x30eba4
0059a760  08 00 85 e5                                      str r0, [r5, #8]
0059a764  05 00 a0 e1                                      mov r0, r5
0059a768  5c 10 f7 eb                                      bl #0x35e8e0
0059a76c  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0059a770  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0059a774  00 30 9c e5                                      ldr r3, [ip]
0059a778  00 10 90 e5                                      ldr r1, [r0]
0059a77c  03 00 a0 e1                                      mov r0, r3
0059a780  00 30 8d e5                                      str r3, [sp]
0059a784  08 cf f5 eb                                      bl #0x30e3ac
0059a788  50 20 9d e5                                      ldr r2, [sp, #0x50]
0059a78c  00 30 9d e5                                      ldr r3, [sp]
0059a790  0c 00 8d e5                                      str r0, [sp, #0xc]
0059a794  00 00 92 e5                                      ldr r0, [r2]
0059a798  03 10 a0 e1                                      mov r1, r3
0059a79c  02 cf f5 eb                                      bl #0x30e3ac
0059a7a0  0b 10 a0 e1                                      mov r1, fp
0059a7a4  14 00 8d e5                                      str r0, [sp, #0x14]
0059a7a8  6f d1 f5 eb                                      bl #0x30ed6c
0059a7ac  09 10 a0 e1                                      mov r1, sb
0059a7b0  00 30 a0 e1                                      mov r3, r0
0059a7b4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059a7b8  00 30 8d e5                                      str r3, [sp]
0059a7bc  6a d1 f5 eb                                      bl #0x30ed6c
0059a7c0  00 30 9d e5                                      ldr r3, [sp]
0059a7c4  00 10 a0 e1                                      mov r1, r0
0059a7c8  03 00 a0 e1                                      mov r0, r3
0059a7cc  f6 ce f5 eb                                      bl #0x30e3ac
0059a7d0  00 00 86 e5                                      str r0, [r6]
0059a7d4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0059a7d8  0a 10 a0 e1                                      mov r1, sl
0059a7dc  62 d1 f5 eb                                      bl #0x30ed6c
0059a7e0  08 10 a0 e1                                      mov r1, r8
0059a7e4  00 30 a0 e1                                      mov r3, r0
0059a7e8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059a7ec  00 30 8d e5                                      str r3, [sp]
0059a7f0  5d d1 f5 eb                                      bl #0x30ed6c
0059a7f4  00 30 9d e5                                      ldr r3, [sp]
0059a7f8  00 10 a0 e1                                      mov r1, r0
0059a7fc  03 00 a0 e1                                      mov r0, r3
0059a800  e9 ce f5 eb                                      bl #0x30e3ac
0059a804  04 00 86 e5                                      str r0, [r6, #4]
0059a808  14 00 9d e5                                      ldr r0, [sp, #0x14]
0059a80c  07 10 a0 e1                                      mov r1, r7
0059a810  55 d1 f5 eb                                      bl #0x30ed6c
0059a814  08 10 9d e5                                      ldr r1, [sp, #8]
0059a818  00 30 a0 e1                                      mov r3, r0
0059a81c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059a820  00 30 8d e5                                      str r3, [sp]
0059a824  50 d1 f5 eb                                      bl #0x30ed6c
0059a828  00 30 9d e5                                      ldr r3, [sp]
0059a82c  00 10 a0 e1                                      mov r1, r0
0059a830  03 00 a0 e1                                      mov r0, r3
0059a834  dc ce f5 eb                                      bl #0x30e3ac
0059a838  08 00 86 e5                                      str r0, [r6, #8]
0059a83c  06 00 a0 e1                                      mov r0, r6
0059a840  26 10 f7 eb                                      bl #0x35e8e0
0059a844  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0059a848  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0059a84c  04 30 9c e5                                      ldr r3, [ip, #4]
0059a850  04 10 90 e5                                      ldr r1, [r0, #4]
0059a854  03 00 a0 e1                                      mov r0, r3
0059a858  00 30 8d e5                                      str r3, [sp]
0059a85c  d2 ce f5 eb                                      bl #0x30e3ac
0059a860  50 20 9d e5                                      ldr r2, [sp, #0x50]
0059a864  00 30 9d e5                                      ldr r3, [sp]
0059a868  0c 00 8d e5                                      str r0, [sp, #0xc]
0059a86c  04 00 92 e5                                      ldr r0, [r2, #4]
0059a870  03 10 a0 e1                                      mov r1, r3
0059a874  cc ce f5 eb                                      bl #0x30e3ac
0059a878  0b 10 a0 e1                                      mov r1, fp
0059a87c  10 00 8d e5                                      str r0, [sp, #0x10]
0059a880  39 d1 f5 eb                                      bl #0x30ed6c
0059a884  09 10 a0 e1                                      mov r1, sb
0059a888  00 b0 a0 e1                                      mov fp, r0
0059a88c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059a890  35 d1 f5 eb                                      bl #0x30ed6c
0059a894  00 10 a0 e1                                      mov r1, r0
0059a898  0b 00 a0 e1                                      mov r0, fp
0059a89c  c2 ce f5 eb                                      bl #0x30e3ac
0059a8a0  00 00 84 e5                                      str r0, [r4]
0059a8a4  10 00 9d e5                                      ldr r0, [sp, #0x10]
0059a8a8  0a 10 a0 e1                                      mov r1, sl
0059a8ac  2e d1 f5 eb                                      bl #0x30ed6c
0059a8b0  08 10 a0 e1                                      mov r1, r8
0059a8b4  00 a0 a0 e1                                      mov sl, r0
0059a8b8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059a8bc  2a d1 f5 eb                                      bl #0x30ed6c
0059a8c0  00 10 a0 e1                                      mov r1, r0
0059a8c4  0a 00 a0 e1                                      mov r0, sl
0059a8c8  b7 ce f5 eb                                      bl #0x30e3ac
0059a8cc  04 00 84 e5                                      str r0, [r4, #4]
0059a8d0  07 10 a0 e1                                      mov r1, r7
0059a8d4  10 00 9d e5                                      ldr r0, [sp, #0x10]
0059a8d8  23 d1 f5 eb                                      bl #0x30ed6c
0059a8dc  08 10 9d e5                                      ldr r1, [sp, #8]
0059a8e0  00 70 a0 e1                                      mov r7, r0
0059a8e4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059a8e8  1f d1 f5 eb                                      bl #0x30ed6c
0059a8ec  00 10 a0 e1                                      mov r1, r0
0059a8f0  07 00 a0 e1                                      mov r0, r7
0059a8f4  ac ce f5 eb                                      bl #0x30e3ac
0059a8f8  08 00 84 e5                                      str r0, [r4, #8]
0059a8fc  04 00 a0 e1                                      mov r0, r4
0059a900  f6 0f f7 eb                                      bl #0x35e8e0
0059a904  04 30 94 e5                                      ldr r3, [r4, #4]
0059a908  08 a0 96 e5                                      ldr sl, [r6, #8]
0059a90c  08 80 94 e5                                      ldr r8, [r4, #8]
0059a910  02 01 83 e2                                      add r0, r3, #0x80000000
0059a914  0a 10 a0 e1                                      mov r1, sl
0059a918  04 70 96 e5                                      ldr r7, [r6, #4]
0059a91c  00 30 8d e5                                      str r3, [sp]
0059a920  11 d1 f5 eb                                      bl #0x30ed6c
0059a924  07 10 a0 e1                                      mov r1, r7
0059a928  00 90 a0 e1                                      mov sb, r0
0059a92c  08 00 a0 e1                                      mov r0, r8
0059a930  0d d1 f5 eb                                      bl #0x30ed6c
0059a934  00 10 a0 e1                                      mov r1, r0
0059a938  09 00 a0 e1                                      mov r0, sb
0059a93c  98 d0 f5 eb                                      bl #0x30eba4
0059a940  00 10 95 e5                                      ldr r1, [r5]
0059a944  08 d1 f5 eb                                      bl #0x30ed6c
0059a948  00 10 96 e5                                      ldr r1, [r6]
0059a94c  00 90 a0 e1                                      mov sb, r0
0059a950  02 01 88 e2                                      add r0, r8, #0x80000000
0059a954  04 d1 f5 eb                                      bl #0x30ed6c
0059a958  00 80 94 e5                                      ldr r8, [r4]
0059a95c  00 b0 a0 e1                                      mov fp, r0
0059a960  0a 00 a0 e1                                      mov r0, sl
0059a964  08 10 a0 e1                                      mov r1, r8
0059a968  ff d0 f5 eb                                      bl #0x30ed6c
0059a96c  00 10 a0 e1                                      mov r1, r0
0059a970  0b 00 a0 e1                                      mov r0, fp
0059a974  8a d0 f5 eb                                      bl #0x30eba4
0059a978  04 10 95 e5                                      ldr r1, [r5, #4]
0059a97c  fa d0 f5 eb                                      bl #0x30ed6c
0059a980  00 10 a0 e1                                      mov r1, r0
0059a984  09 00 a0 e1                                      mov r0, sb
0059a988  85 d0 f5 eb                                      bl #0x30eba4
0059a98c  02 81 88 e2                                      add r8, r8, #0x80000000
0059a990  00 a0 a0 e1                                      mov sl, r0
0059a994  08 10 a0 e1                                      mov r1, r8
0059a998  07 00 a0 e1                                      mov r0, r7
0059a99c  f2 d0 f5 eb                                      bl #0x30ed6c
0059a9a0  00 30 9d e5                                      ldr r3, [sp]
0059a9a4  00 70 a0 e1                                      mov r7, r0
0059a9a8  00 10 96 e5                                      ldr r1, [r6]
0059a9ac  03 00 a0 e1                                      mov r0, r3
0059a9b0  ed d0 f5 eb                                      bl #0x30ed6c
0059a9b4  00 10 a0 e1                                      mov r1, r0
0059a9b8  07 00 a0 e1                                      mov r0, r7
0059a9bc  78 d0 f5 eb                                      bl #0x30eba4
0059a9c0  08 10 95 e5                                      ldr r1, [r5, #8]
0059a9c4  e8 d0 f5 eb                                      bl #0x30ed6c
0059a9c8  00 10 a0 e1                                      mov r1, r0
0059a9cc  0a 00 a0 e1                                      mov r0, sl
0059a9d0  73 d0 f5 eb                                      bl #0x30eba4
0059a9d4  00 10 a0 e3                                      mov r1, #0
0059a9d8  4b cf f5 eb                                      bl #0x30e70c
0059a9dc  00 00 50 e3                                      cmp r0, #0
0059a9e0  0e 00 00 0a                                      beq #0x59aa20
0059a9e4  04 30 94 e5                                      ldr r3, [r4, #4]
0059a9e8  08 20 94 e5                                      ldr r2, [r4, #8]
0059a9ec  00 80 84 e5                                      str r8, [r4]
0059a9f0  02 31 83 e2                                      add r3, r3, #0x80000000
0059a9f4  02 21 82 e2                                      add r2, r2, #0x80000000
0059a9f8  08 20 84 e5                                      str r2, [r4, #8]
0059a9fc  04 30 84 e5                                      str r3, [r4, #4]
0059aa00  0c 00 96 e8                                      ldm r6, {r2, r3}
0059aa04  08 10 96 e5                                      ldr r1, [r6, #8]
0059aa08  02 21 82 e2                                      add r2, r2, #0x80000000
0059aa0c  02 31 83 e2                                      add r3, r3, #0x80000000
0059aa10  02 11 81 e2                                      add r1, r1, #0x80000000
0059aa14  08 10 86 e5                                      str r1, [r6, #8]
0059aa18  00 20 86 e5                                      str r2, [r6]
0059aa1c  04 30 86 e5                                      str r3, [r6, #4]
0059aa20  1c d0 8d e2                                      add sp, sp, #0x1c
0059aa24  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0059aa28, declared_size=640, range_size=640, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_114getAngleWeightERKNS_4core8vector3dIfEES6_S6_
; demangled: glitch::scene::(anonymous namespace)::getAngleWeight(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
0059aa28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059aa2c  01 a0 a0 e1                                      mov sl, r1
0059aa30  0c d0 4d e2                                      sub sp, sp, #0xc
0059aa34  00 10 93 e5                                      ldr r1, [r3]
0059aa38  00 40 a0 e1                                      mov r4, r0
0059aa3c  00 00 92 e5                                      ldr r0, [r2]
0059aa40  02 70 a0 e1                                      mov r7, r2
0059aa44  03 80 a0 e1                                      mov r8, r3
0059aa48  57 ce f5 eb                                      bl #0x30e3ac
0059aa4c  04 10 98 e5                                      ldr r1, [r8, #4]
0059aa50  00 50 a0 e1                                      mov r5, r0
0059aa54  04 00 97 e5                                      ldr r0, [r7, #4]
0059aa58  53 ce f5 eb                                      bl #0x30e3ac
0059aa5c  08 10 98 e5                                      ldr r1, [r8, #8]
0059aa60  00 90 a0 e1                                      mov sb, r0
0059aa64  08 00 97 e5                                      ldr r0, [r7, #8]
0059aa68  4f ce f5 eb                                      bl #0x30e3ac
0059aa6c  05 10 a0 e1                                      mov r1, r5
0059aa70  00 60 a0 e1                                      mov r6, r0
0059aa74  05 00 a0 e1                                      mov r0, r5
0059aa78  bb d0 f5 eb                                      bl #0x30ed6c
0059aa7c  09 10 a0 e1                                      mov r1, sb
0059aa80  00 50 a0 e1                                      mov r5, r0
0059aa84  09 00 a0 e1                                      mov r0, sb
0059aa88  b7 d0 f5 eb                                      bl #0x30ed6c
0059aa8c  00 10 a0 e1                                      mov r1, r0
0059aa90  05 00 a0 e1                                      mov r0, r5
0059aa94  42 d0 f5 eb                                      bl #0x30eba4
0059aa98  06 10 a0 e1                                      mov r1, r6
0059aa9c  00 50 a0 e1                                      mov r5, r0
0059aaa0  06 00 a0 e1                                      mov r0, r6
0059aaa4  b0 d0 f5 eb                                      bl #0x30ed6c
0059aaa8  00 10 a0 e1                                      mov r1, r0
0059aaac  05 00 a0 e1                                      mov r0, r5
0059aab0  3b d0 f5 eb                                      bl #0x30eba4
0059aab4  00 60 a0 e1                                      mov r6, r0
0059aab8  99 cd f5 eb                                      bl #0x30e124
0059aabc  00 10 98 e5                                      ldr r1, [r8]
0059aac0  00 50 a0 e1                                      mov r5, r0
0059aac4  00 00 9a e5                                      ldr r0, [sl]
0059aac8  37 ce f5 eb                                      bl #0x30e3ac
0059aacc  04 10 98 e5                                      ldr r1, [r8, #4]
0059aad0  00 b0 a0 e1                                      mov fp, r0
0059aad4  04 00 9a e5                                      ldr r0, [sl, #4]
0059aad8  33 ce f5 eb                                      bl #0x30e3ac
0059aadc  08 10 98 e5                                      ldr r1, [r8, #8]
0059aae0  00 90 a0 e1                                      mov sb, r0
0059aae4  08 00 9a e5                                      ldr r0, [sl, #8]
0059aae8  2f ce f5 eb                                      bl #0x30e3ac
0059aaec  0b 10 a0 e1                                      mov r1, fp
0059aaf0  00 80 a0 e1                                      mov r8, r0
0059aaf4  0b 00 a0 e1                                      mov r0, fp
0059aaf8  9b d0 f5 eb                                      bl #0x30ed6c
0059aafc  09 10 a0 e1                                      mov r1, sb
0059ab00  00 b0 a0 e1                                      mov fp, r0
0059ab04  09 00 a0 e1                                      mov r0, sb
0059ab08  97 d0 f5 eb                                      bl #0x30ed6c
0059ab0c  00 10 a0 e1                                      mov r1, r0
0059ab10  0b 00 a0 e1                                      mov r0, fp
0059ab14  22 d0 f5 eb                                      bl #0x30eba4
0059ab18  08 10 a0 e1                                      mov r1, r8
0059ab1c  00 90 a0 e1                                      mov sb, r0
0059ab20  08 00 a0 e1                                      mov r0, r8
0059ab24  90 d0 f5 eb                                      bl #0x30ed6c
0059ab28  00 10 a0 e1                                      mov r1, r0
0059ab2c  09 00 a0 e1                                      mov r0, sb
0059ab30  1b d0 f5 eb                                      bl #0x30eba4
0059ab34  00 80 a0 e1                                      mov r8, r0
0059ab38  79 cd f5 eb                                      bl #0x30e124
0059ab3c  00 10 97 e5                                      ldr r1, [r7]
0059ab40  00 30 a0 e1                                      mov r3, r0
0059ab44  00 00 9a e5                                      ldr r0, [sl]
0059ab48  04 30 8d e5                                      str r3, [sp, #4]
0059ab4c  16 ce f5 eb                                      bl #0x30e3ac
0059ab50  04 10 97 e5                                      ldr r1, [r7, #4]
0059ab54  00 b0 a0 e1                                      mov fp, r0
0059ab58  04 00 9a e5                                      ldr r0, [sl, #4]
0059ab5c  12 ce f5 eb                                      bl #0x30e3ac
0059ab60  08 10 97 e5                                      ldr r1, [r7, #8]
0059ab64  00 90 a0 e1                                      mov sb, r0
0059ab68  08 00 9a e5                                      ldr r0, [sl, #8]
0059ab6c  0e ce f5 eb                                      bl #0x30e3ac
0059ab70  0b 10 a0 e1                                      mov r1, fp
0059ab74  00 70 a0 e1                                      mov r7, r0
0059ab78  0b 00 a0 e1                                      mov r0, fp
0059ab7c  7a d0 f5 eb                                      bl #0x30ed6c
0059ab80  09 10 a0 e1                                      mov r1, sb
0059ab84  00 a0 a0 e1                                      mov sl, r0
0059ab88  09 00 a0 e1                                      mov r0, sb
0059ab8c  76 d0 f5 eb                                      bl #0x30ed6c
0059ab90  00 10 a0 e1                                      mov r1, r0
0059ab94  0a 00 a0 e1                                      mov r0, sl
0059ab98  01 d0 f5 eb                                      bl #0x30eba4
0059ab9c  07 10 a0 e1                                      mov r1, r7
0059aba0  00 a0 a0 e1                                      mov sl, r0
0059aba4  07 00 a0 e1                                      mov r0, r7
0059aba8  6f d0 f5 eb                                      bl #0x30ed6c
0059abac  00 10 a0 e1                                      mov r1, r0
0059abb0  0a 00 a0 e1                                      mov r0, sl
0059abb4  fa cf f5 eb                                      bl #0x30eba4
0059abb8  00 70 a0 e1                                      mov r7, r0
0059abbc  58 cd f5 eb                                      bl #0x30e124
0059abc0  04 30 9d e5                                      ldr r3, [sp, #4]
0059abc4  00 90 a0 e1                                      mov sb, r0
0059abc8  03 10 a0 e1                                      mov r1, r3
0059abcc  03 00 a0 e1                                      mov r0, r3
0059abd0  f3 cf f5 eb                                      bl #0x30eba4
0059abd4  07 10 a0 e1                                      mov r1, r7
0059abd8  00 a0 a0 e1                                      mov sl, r0
0059abdc  08 00 a0 e1                                      mov r0, r8
0059abe0  ef cf f5 eb                                      bl #0x30eba4
0059abe4  06 10 a0 e1                                      mov r1, r6
0059abe8  ef cd f5 eb                                      bl #0x30e3ac
0059abec  0a 10 a0 e1                                      mov r1, sl
0059abf0  00 b0 a0 e1                                      mov fp, r0
0059abf4  09 00 a0 e1                                      mov r0, sb
0059abf8  5b d0 f5 eb                                      bl #0x30ed6c
0059abfc  00 10 a0 e1                                      mov r1, r0
0059ac00  0b 00 a0 e1                                      mov r0, fp
0059ac04  22 d0 f5 eb                                      bl #0x30ec94
0059ac08  f3 cd f5 eb                                      bl #0x30e3dc
0059ac0c  08 10 a0 e1                                      mov r1, r8
0059ac10  00 30 a0 e1                                      mov r3, r0
0059ac14  07 00 a0 e1                                      mov r0, r7
0059ac18  04 30 8d e5                                      str r3, [sp, #4]
0059ac1c  e2 cd f5 eb                                      bl #0x30e3ac
0059ac20  06 10 a0 e1                                      mov r1, r6
0059ac24  de cf f5 eb                                      bl #0x30eba4
0059ac28  05 10 a0 e1                                      mov r1, r5
0059ac2c  00 b0 a0 e1                                      mov fp, r0
0059ac30  05 00 a0 e1                                      mov r0, r5
0059ac34  da cf f5 eb                                      bl #0x30eba4
0059ac38  00 10 a0 e1                                      mov r1, r0
0059ac3c  09 00 a0 e1                                      mov r0, sb
0059ac40  49 d0 f5 eb                                      bl #0x30ed6c
0059ac44  00 10 a0 e1                                      mov r1, r0
0059ac48  0b 00 a0 e1                                      mov r0, fp
0059ac4c  10 d0 f5 eb                                      bl #0x30ec94
0059ac50  e1 cd f5 eb                                      bl #0x30e3dc
0059ac54  07 10 a0 e1                                      mov r1, r7
0059ac58  00 90 a0 e1                                      mov sb, r0
0059ac5c  08 00 a0 e1                                      mov r0, r8
0059ac60  d1 cd f5 eb                                      bl #0x30e3ac
0059ac64  06 10 a0 e1                                      mov r1, r6
0059ac68  cd cf f5 eb                                      bl #0x30eba4
0059ac6c  0a 10 a0 e1                                      mov r1, sl
0059ac70  00 60 a0 e1                                      mov r6, r0
0059ac74  05 00 a0 e1                                      mov r0, r5
0059ac78  3b d0 f5 eb                                      bl #0x30ed6c
0059ac7c  00 10 a0 e1                                      mov r1, r0
0059ac80  06 00 a0 e1                                      mov r0, r6
0059ac84  02 d0 f5 eb                                      bl #0x30ec94
0059ac88  d3 cd f5 eb                                      bl #0x30e3dc
0059ac8c  04 30 9d e5                                      ldr r3, [sp, #4]
0059ac90  08 00 84 e5                                      str r0, [r4, #8]
0059ac94  04 90 84 e5                                      str sb, [r4, #4]
0059ac98  00 30 84 e5                                      str r3, [r4]
0059ac9c  04 00 a0 e1                                      mov r0, r4
0059aca0  0c d0 8d e2                                      add sp, sp, #0xc
0059aca4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0059ae1c, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene18createAnimatedMeshERKN5boost13intrusive_ptrINS0_5IMeshEEENS0_20E_ANIMATED_MESH_TYPEE
; demangled: glitch::scene::createAnimatedMesh(boost::intrusive_ptr<glitch::scene::IMesh> const&, glitch::scene::E_ANIMATED_MESH_TYPE)
; decoder-mode: arm
0059ae1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059ae20  00 50 a0 e1                                      mov r5, r0
0059ae24  01 60 a0 e1                                      mov r6, r1
0059ae28  30 00 a0 e3                                      mov r0, #0x30
0059ae2c  00 10 a0 e3                                      mov r1, #0
0059ae30  02 70 a0 e1                                      mov r7, r2
0059ae34  dc 64 fe eb                                      bl #0x5341ac
0059ae38  06 10 a0 e1                                      mov r1, r6
0059ae3c  07 20 a0 e1                                      mov r2, r7
0059ae40  00 40 a0 e1                                      mov r4, r0
0059ae44  b1 ff ff eb                                      bl #0x59ad10
0059ae48  00 00 54 e3                                      cmp r4, #0
0059ae4c  00 40 85 e5                                      str r4, [r5]
0059ae50  04 30 94 15                                      ldrne r3, [r4, #4]
0059ae54  05 00 a0 e1                                      mov r0, r5
0059ae58  01 30 83 12                                      addne r3, r3, #1
0059ae5c  04 30 84 15                                      strne r3, [r4, #4]
0059ae60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0059af20, declared_size=152, range_size=152, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12getPolyCountERKN5boost13intrusive_ptrINS0_5IMeshEEE
; demangled: glitch::scene::getPolyCount(boost::intrusive_ptr<glitch::scene::IMesh> const&)
; decoder-mode: arm
0059af20  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0059af24  00 30 90 e5                                      ldr r3, [r0]
0059af28  0c d0 4d e2                                      sub sp, sp, #0xc
0059af2c  00 60 a0 e1                                      mov r6, r0
0059af30  00 00 53 e3                                      cmp r3, #0
0059af34  03 50 a0 01                                      moveq r5, r3
0059af38  1b 00 00 0a                                      beq #0x59afac
0059af3c  00 40 a0 e3                                      mov r4, #0
0059af40  04 50 a0 e1                                      mov r5, r4
0059af44  04 70 8d e2                                      add r7, sp, #4
0059af48  03 00 a0 e1                                      mov r0, r3
0059af4c  00 30 93 e5                                      ldr r3, [r3]
0059af50  0f e0 a0 e1                                      mov lr, pc
0059af54  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0059af58  00 00 54 e1                                      cmp r4, r0
0059af5c  04 20 a0 e1                                      mov r2, r4
0059af60  07 00 a0 e1                                      mov r0, r7
0059af64  10 00 00 2a                                      bhs #0x59afac
0059af68  00 30 96 e5                                      ldr r3, [r6]
0059af6c  01 40 84 e2                                      add r4, r4, #1
0059af70  03 10 a0 e1                                      mov r1, r3
0059af74  00 30 93 e5                                      ldr r3, [r3]
0059af78  0f e0 a0 e1                                      mov lr, pc
0059af7c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059af80  04 00 9d e5                                      ldr r0, [sp, #4]
0059af84  18 00 80 e2                                      add r0, r0, #0x18
0059af88  dc 14 00 eb                                      bl #0x5a0300
0059af8c  04 30 9d e5                                      ldr r3, [sp, #4]
0059af90  00 50 85 e0                                      add r5, r5, r0
0059af94  00 00 53 e3                                      cmp r3, #0
0059af98  03 00 a0 e1                                      mov r0, r3
0059af9c  00 00 00 0a                                      beq #0x59afa4
0059afa0  77 09 f6 eb                                      bl #0x31d584
0059afa4  00 30 96 e5                                      ldr r3, [r6]
0059afa8  e6 ff ff ea                                      b #0x59af48
0059afac  05 00 a0 e1                                      mov r0, r5
0059afb0  0c d0 8d e2                                      add sp, sp, #0xc
0059afb4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0059afb8, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12getPolyCountERKN5boost13intrusive_ptrINS0_13IAnimatedMeshEEE
; demangled: glitch::scene::getPolyCount(boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&)
; decoder-mode: arm
0059afb8  10 40 2d e9                                      push {r4, lr}
0059afbc  00 30 90 e5                                      ldr r3, [r0]
0059afc0  10 d0 4d e2                                      sub sp, sp, #0x10
0059afc4  00 40 a0 e1                                      mov r4, r0
0059afc8  00 00 53 e3                                      cmp r3, #0
0059afcc  19 00 00 0a                                      beq #0x59b038
0059afd0  03 00 a0 e1                                      mov r0, r3
0059afd4  00 30 93 e5                                      ldr r3, [r3]
0059afd8  0f e0 a0 e1                                      mov lr, pc
0059afdc  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0059afe0  00 00 50 e3                                      cmp r0, #0
0059afe4  13 00 00 0a                                      beq #0x59b038
0059afe8  00 20 94 e5                                      ldr r2, [r4]
0059afec  00 30 e0 e3                                      mvn r3, #0
0059aff0  0c 40 8d e2                                      add r4, sp, #0xc
0059aff4  00 c0 92 e5                                      ldr ip, [r2]
0059aff8  02 10 a0 e1                                      mov r1, r2
0059affc  04 00 a0 e1                                      mov r0, r4
0059b000  04 30 8d e5                                      str r3, [sp, #4]
0059b004  00 30 8d e5                                      str r3, [sp]
0059b008  00 20 a0 e3                                      mov r2, #0
0059b00c  ff 30 a0 e3                                      mov r3, #0xff
0059b010  0f e0 a0 e1                                      mov lr, pc
0059b014  34 f0 9c e5                                      ldr pc, [ip, #0x34]
0059b018  04 00 a0 e1                                      mov r0, r4
0059b01c  bf ff ff eb                                      bl #0x59af20
0059b020  00 40 a0 e1                                      mov r4, r0
0059b024  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059b028  00 00 50 e3                                      cmp r0, #0
0059b02c  02 00 00 0a                                      beq #0x59b03c
0059b030  53 09 f6 eb                                      bl #0x31d584
0059b034  00 00 00 ea                                      b #0x59b03c
0059b038  00 40 a0 e3                                      mov r4, #0
0059b03c  04 00 a0 e1                                      mov r0, r4
0059b040  10 d0 8d e2                                      add sp, sp, #0x10
0059b044  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059b084, declared_size=544, range_size=544, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12flipSurfacesERKN5boost13intrusive_ptrINS0_5IMeshEEE
; demangled: glitch::scene::flipSurfaces(boost::intrusive_ptr<glitch::scene::IMesh> const&)
; decoder-mode: arm
0059b084  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059b088  00 30 90 e5                                      ldr r3, [r0]
0059b08c  1c d0 4d e2                                      sub sp, sp, #0x1c
0059b090  00 b0 a0 e1                                      mov fp, r0
0059b094  00 00 53 e3                                      cmp r3, #0
0059b098  48 00 00 0a                                      beq #0x59b1c0
0059b09c  03 00 a0 e1                                      mov r0, r3
0059b0a0  00 30 93 e5                                      ldr r3, [r3]
0059b0a4  0f e0 a0 e1                                      mov lr, pc
0059b0a8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0059b0ac  00 00 50 e3                                      cmp r0, #0
0059b0b0  00 00 8d e5                                      str r0, [sp]
0059b0b4  41 00 00 0a                                      beq #0x59b1c0
0059b0b8  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
0059b0bc  00 90 a0 e3                                      mov sb, #0
0059b0c0  03 30 8f e0                                      add r3, pc, r3
0059b0c4  08 30 8d e5                                      str r3, [sp, #8]
0059b0c8  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
0059b0cc  03 30 8f e0                                      add r3, pc, r3
0059b0d0  0c 30 8d e5                                      str r3, [sp, #0xc]
0059b0d4  14 30 8d e2                                      add r3, sp, #0x14
0059b0d8  04 30 8d e5                                      str r3, [sp, #4]
0059b0dc  00 30 9b e5                                      ldr r3, [fp]
0059b0e0  04 00 9d e5                                      ldr r0, [sp, #4]
0059b0e4  00 20 a0 e3                                      mov r2, #0
0059b0e8  03 10 a0 e1                                      mov r1, r3
0059b0ec  00 30 93 e5                                      ldr r3, [r3]
0059b0f0  0f e0 a0 e1                                      mov lr, pc
0059b0f4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059b0f8  14 60 9d e5                                      ldr r6, [sp, #0x14]
0059b0fc  00 00 56 e3                                      cmp r6, #0
0059b100  01 00 00 0a                                      beq #0x59b10c
0059b104  06 00 a0 e1                                      mov r0, r6
0059b108  1d 09 f6 eb                                      bl #0x31d584
0059b10c  18 00 96 e5                                      ldr r0, [r6, #0x18]
0059b110  00 00 50 e3                                      cmp r0, #0
0059b114  56 00 00 0a                                      beq #0x59b274
0059b118  03 10 a0 e3                                      mov r1, #3
0059b11c  33 1a 00 eb                                      bl #0x5a19f0
0059b120  be 32 d6 e1                                      ldrh r3, [r6, #0x2e]
0059b124  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
0059b128  20 80 96 e5                                      ldr r8, [r6, #0x20]
0059b12c  04 30 43 e2                                      sub r3, r3, #4
0059b130  05 50 80 e0                                      add r5, r0, r5
0059b134  bc a2 d6 e1                                      ldrh sl, [r6, #0x2c]
0059b138  04 00 53 e3                                      cmp r3, #4
0059b13c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0059b140  0f 00 00 ea                                      b #0x59b184
0059b144  03 00 00 ea                                      b #0x59b158
0059b148  2a 00 00 ea                                      b #0x59b1f8
0059b14c  36 00 00 ea                                      b #0x59b22c
0059b150  00 00 00 ea                                      b #0x59b158
0059b154  1b 00 00 ea                                      b #0x59b1c8
0059b158  00 00 58 e3                                      cmp r8, #0
0059b15c  08 00 00 0a                                      beq #0x59b184
0059b160  00 40 a0 e3                                      mov r4, #0
0059b164  04 20 a0 e1                                      mov r2, r4
0059b168  01 30 84 e2                                      add r3, r4, #1
0059b16c  0a 00 a0 e1                                      mov r0, sl
0059b170  02 40 84 e2                                      add r4, r4, #2
0059b174  05 10 a0 e1                                      mov r1, r5
0059b178  ec fb ff eb                                      bl #0x59a130
0059b17c  08 00 54 e1                                      cmp r4, r8
0059b180  f7 ff ff 3a                                      blo #0x59b164
0059b184  00 00 55 e3                                      cmp r5, #0
0059b188  08 00 00 0a                                      beq #0x59b1b0
0059b18c  18 40 96 e5                                      ldr r4, [r6, #0x18]
0059b190  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059b194  1f 20 03 e2                                      and r2, r3, #0x1f
0059b198  01 00 52 e3                                      cmp r2, #1
0059b19c  2e 00 00 9a                                      bls #0x59b25c
0059b1a0  01 20 42 e2                                      sub r2, r2, #1
0059b1a4  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059b1a8  03 30 82 e1                                      orr r3, r2, r3
0059b1ac  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059b1b0  00 30 9d e5                                      ldr r3, [sp]
0059b1b4  01 90 89 e2                                      add sb, sb, #1
0059b1b8  03 00 59 e1                                      cmp sb, r3
0059b1bc  c6 ff ff 1a                                      bne #0x59b0dc
0059b1c0  1c d0 8d e2                                      add sp, sp, #0x1c
0059b1c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059b1c8  00 00 58 e3                                      cmp r8, #0
0059b1cc  00 40 a0 13                                      movne r4, #0
0059b1d0  eb ff ff 0a                                      beq #0x59b184
0059b1d4  01 20 84 e2                                      add r2, r4, #1
0059b1d8  03 30 84 e2                                      add r3, r4, #3
0059b1dc  0a 00 a0 e1                                      mov r0, sl
0059b1e0  04 40 84 e2                                      add r4, r4, #4
0059b1e4  05 10 a0 e1                                      mov r1, r5
0059b1e8  d0 fb ff eb                                      bl #0x59a130
0059b1ec  08 00 54 e1                                      cmp r4, r8
0059b1f0  f7 ff ff 3a                                      blo #0x59b1d4
0059b1f4  e2 ff ff ea                                      b #0x59b184
0059b1f8  a8 70 a0 e1                                      lsr r7, r8, #1
0059b1fc  01 00 57 e3                                      cmp r7, #1
0059b200  df ff ff 9a                                      bls #0x59b184
0059b204  01 40 a0 e3                                      mov r4, #1
0059b208  04 20 a0 e1                                      mov r2, r4
0059b20c  08 30 64 e0                                      rsb r3, r4, r8
0059b210  0a 00 a0 e1                                      mov r0, sl
0059b214  01 40 84 e2                                      add r4, r4, #1
0059b218  05 10 a0 e1                                      mov r1, r5
0059b21c  c3 fb ff eb                                      bl #0x59a130
0059b220  07 00 54 e1                                      cmp r4, r7
0059b224  f7 ff ff 1a                                      bne #0x59b208
0059b228  d5 ff ff ea                                      b #0x59b184
0059b22c  00 00 58 e3                                      cmp r8, #0
0059b230  00 40 a0 13                                      movne r4, #0
0059b234  d2 ff ff 0a                                      beq #0x59b184
0059b238  01 20 84 e2                                      add r2, r4, #1
0059b23c  02 30 84 e2                                      add r3, r4, #2
0059b240  0a 00 a0 e1                                      mov r0, sl
0059b244  03 40 84 e2                                      add r4, r4, #3
0059b248  05 10 a0 e1                                      mov r1, r5
0059b24c  b7 fb ff eb                                      bl #0x59a130
0059b250  08 00 54 e1                                      cmp r4, r8
0059b254  f7 ff ff 3a                                      blo #0x59b238
0059b258  c9 ff ff ea                                      b #0x59b184
0059b25c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059b260  20 00 13 e3                                      tst r3, #0x20
0059b264  07 00 00 1a                                      bne #0x59b288
0059b268  00 30 a0 e3                                      mov r3, #0
0059b26c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059b270  ce ff ff ea                                      b #0x59b1b0
0059b274  08 00 9d e5                                      ldr r0, [sp, #8]
0059b278  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0059b27c  01 20 a0 e3                                      mov r2, #1
0059b280  98 be 01 eb                                      bl #0x60ace8
0059b284  c9 ff ff ea                                      b #0x59b1b0
0059b288  00 30 94 e5                                      ldr r3, [r4]
0059b28c  04 00 a0 e1                                      mov r0, r4
0059b290  0f e0 a0 e1                                      mov lr, pc
0059b294  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059b298  f2 ff ff ea                                      b #0x59b268
; mapping-symbol data/literal pool
0059b29c  c0 46 34 00 4c 47 34 00                          .byte 0xc0, 0x46, 0x34, 0x00, 0x4c, 0x47, 0x34, 0x00

; FUNCTION 0x0059b2a4, declared_size=1944, range_size=1944, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene14createMeshCopyERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS_5video12IVideoDriverEjj
; demangled: glitch::scene::createMeshCopy(boost::intrusive_ptr<glitch::scene::IMesh> const&, glitch::video::IVideoDriver*, unsigned int, unsigned int)
; decoder-mode: arm
0059b2a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059b2a8  bc d0 4d e2                                      sub sp, sp, #0xbc
0059b2ac  40 10 8d e5                                      str r1, [sp, #0x40]
0059b2b0  00 10 91 e5                                      ldr r1, [r1]
0059b2b4  70 c7 9f e5                                      ldr ip, [pc, #0x770]
0059b2b8  74 00 8d e5                                      str r0, [sp, #0x74]
0059b2bc  00 00 51 e3                                      cmp r1, #0
0059b2c0  0c c0 8f e0                                      add ip, pc, ip
0059b2c4  3c c0 8d e5                                      str ip, [sp, #0x3c]
0059b2c8  54 20 8d e5                                      str r2, [sp, #0x54]
0059b2cc  44 30 8d e5                                      str r3, [sp, #0x44]
0059b2d0  00 10 80 05                                      streq r1, [r0]
0059b2d4  4f 01 00 0a                                      beq #0x59b818
0059b2d8  00 10 a0 e3                                      mov r1, #0
0059b2dc  2c 00 a0 e3                                      mov r0, #0x2c
0059b2e0  b1 63 fe eb                                      bl #0x5341ac
0059b2e4  50 00 8d e5                                      str r0, [sp, #0x50]
0059b2e8  f9 81 04 eb                                      bl #0x6bbad4
0059b2ec  50 00 9d e5                                      ldr r0, [sp, #0x50]
0059b2f0  00 00 50 e3                                      cmp r0, #0
0059b2f4  04 30 90 15                                      ldrne r3, [r0, #4]
0059b2f8  01 30 83 12                                      addne r3, r3, #1
0059b2fc  04 30 80 15                                      strne r3, [r0, #4]
0059b300  40 10 9d e5                                      ldr r1, [sp, #0x40]
0059b304  00 30 91 e5                                      ldr r3, [r1]
0059b308  03 00 a0 e1                                      mov r0, r3
0059b30c  00 30 93 e5                                      ldr r3, [r3]
0059b310  0f e0 a0 e1                                      mov lr, pc
0059b314  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0059b318  00 00 50 e3                                      cmp r0, #0
0059b31c  58 00 8d e5                                      str r0, [sp, #0x58]
0059b320  28 01 00 0a                                      beq #0x59b7c8
0059b324  04 27 9f e5                                      ldr r2, [pc, #0x704]
0059b328  04 37 9f e5                                      ldr r3, [pc, #0x704]
0059b32c  04 c7 9f e5                                      ldr ip, [pc, #0x704]
0059b330  00 00 a0 e3                                      mov r0, #0
0059b334  b4 10 8d e2                                      add r1, sp, #0xb4
0059b338  6c 20 8d e5                                      str r2, [sp, #0x6c]
0059b33c  14 30 8d e5                                      str r3, [sp, #0x14]
0059b340  9c 20 8d e2                                      add r2, sp, #0x9c
0059b344  a8 30 8d e2                                      add r3, sp, #0xa8
0059b348  24 c0 8d e5                                      str ip, [sp, #0x24]
0059b34c  a4 c0 8d e2                                      add ip, sp, #0xa4
0059b350  2c 00 8d e5                                      str r0, [sp, #0x2c]
0059b354  68 10 8d e5                                      str r1, [sp, #0x68]
0059b358  5c 20 8d e5                                      str r2, [sp, #0x5c]
0059b35c  60 30 8d e5                                      str r3, [sp, #0x60]
0059b360  4c c0 8d e5                                      str ip, [sp, #0x4c]
0059b364  a0 00 8d e2                                      add r0, sp, #0xa0
0059b368  ac 10 8d e2                                      add r1, sp, #0xac
0059b36c  b0 20 8d e2                                      add r2, sp, #0xb0
0059b370  7c 30 8d e2                                      add r3, sp, #0x7c
0059b374  8c c0 8d e2                                      add ip, sp, #0x8c
0059b378  48 00 8d e5                                      str r0, [sp, #0x48]
0059b37c  64 10 8d e5                                      str r1, [sp, #0x64]
0059b380  70 20 8d e5                                      str r2, [sp, #0x70]
0059b384  30 30 8d e5                                      str r3, [sp, #0x30]
0059b388  34 c0 8d e5                                      str ip, [sp, #0x34]
0059b38c  40 00 9d e5                                      ldr r0, [sp, #0x40]
0059b390  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0059b394  00 30 90 e5                                      ldr r3, [r0]
0059b398  68 00 9d e5                                      ldr r0, [sp, #0x68]
0059b39c  03 10 a0 e1                                      mov r1, r3
0059b3a0  00 30 93 e5                                      ldr r3, [r3]
0059b3a4  0f e0 a0 e1                                      mov lr, pc
0059b3a8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059b3ac  b4 b0 9d e5                                      ldr fp, [sp, #0xb4]
0059b3b0  00 00 5b e3                                      cmp fp, #0
0059b3b4  01 00 00 0a                                      beq #0x59b3c0
0059b3b8  0b 00 a0 e1                                      mov r0, fp
0059b3bc  70 08 f6 eb                                      bl #0x31d584
0059b3c0  14 30 9b e5                                      ldr r3, [fp, #0x14]
0059b3c4  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
0059b3c8  18 10 9b e5                                      ldr r1, [fp, #0x18]
0059b3cc  04 30 93 e5                                      ldr r3, [r3, #4]
0059b3d0  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0059b3d4  00 00 51 e3                                      cmp r1, #0
0059b3d8  03 30 82 e1                                      orr r3, r2, r3
0059b3dc  03 c0 0c e0                                      and ip, ip, r3
0059b3e0  44 c0 8d e5                                      str ip, [sp, #0x44]
0059b3e4  83 01 00 0a                                      beq #0x59b9f8
0059b3e8  70 00 9d e5                                      ldr r0, [sp, #0x70]
0059b3ec  23 1a 00 eb                                      bl #0x5a1c80
0059b3f0  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
0059b3f4  00 00 50 e3                                      cmp r0, #0
0059b3f8  20 00 8d e5                                      str r0, [sp, #0x20]
0059b3fc  85 01 00 0a                                      beq #0x59ba18
0059b400  04 30 90 e5                                      ldr r3, [r0, #4]
0059b404  01 30 83 e2                                      add r3, r3, #1
0059b408  04 30 80 e5                                      str r3, [r0, #4]
0059b40c  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
0059b410  00 00 50 e3                                      cmp r0, #0
0059b414  00 00 00 0a                                      beq #0x59b41c
0059b418  59 08 f6 eb                                      bl #0x31d584
0059b41c  20 00 9d e5                                      ldr r0, [sp, #0x20]
0059b420  fd 19 00 eb                                      bl #0x5a1c1c
0059b424  20 10 9d e5                                      ldr r1, [sp, #0x20]
0059b428  be 62 db e1                                      ldrh r6, [fp, #0x2e]
0059b42c  1c 50 9b e5                                      ldr r5, [fp, #0x1c]
0059b430  04 30 91 e5                                      ldr r3, [r1, #4]
0059b434  bc 72 db e1                                      ldrh r7, [fp, #0x2c]
0059b438  20 80 9b e5                                      ldr r8, [fp, #0x20]
0059b43c  01 30 83 e2                                      add r3, r3, #1
0059b440  24 a0 9b e5                                      ldr sl, [fp, #0x24]
0059b444  28 90 9b e5                                      ldr sb, [fp, #0x28]
0059b448  04 30 81 e5                                      str r3, [r1, #4]
0059b44c  00 10 a0 e3                                      mov r1, #0
0059b450  38 00 a0 e3                                      mov r0, #0x38
0059b454  54 63 fe eb                                      bl #0x5341ac
0059b458  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
0059b45c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0059b460  00 40 a0 e1                                      mov r4, r0
0059b464  03 20 9c e7                                      ldr r2, [ip, r3]
0059b468  00 30 a0 e3                                      mov r3, #0
0059b46c  10 30 80 e5                                      str r3, [r0, #0x10]
0059b470  08 20 82 e2                                      add r2, r2, #8
0059b474  04 30 80 e5                                      str r3, [r0, #4]
0059b478  08 30 80 e5                                      str r3, [r0, #8]
0059b47c  0c 30 80 e5                                      str r3, [r0, #0xc]
0059b480  00 20 80 e5                                      str r2, [r0]
0059b484  44 10 9d e5                                      ldr r1, [sp, #0x44]
0059b488  14 00 80 e2                                      add r0, r0, #0x14
0059b48c  b2 17 00 eb                                      bl #0x5a135c
0059b490  20 00 9d e5                                      ldr r0, [sp, #0x20]
0059b494  00 00 50 e3                                      cmp r0, #0
0059b498  18 00 84 e5                                      str r0, [r4, #0x18]
0059b49c  04 30 90 15                                      ldrne r3, [r0, #4]
0059b4a0  01 30 83 12                                      addne r3, r3, #1
0059b4a4  04 30 80 15                                      strne r3, [r0, #4]
0059b4a8  00 30 a0 e3                                      mov r3, #0
0059b4ac  34 30 c4 e5                                      strb r3, [r4, #0x34]
0059b4b0  30 30 84 e5                                      str r3, [r4, #0x30]
0059b4b4  1c 50 84 e5                                      str r5, [r4, #0x1c]
0059b4b8  20 80 84 e5                                      str r8, [r4, #0x20]
0059b4bc  24 a0 84 e5                                      str sl, [r4, #0x24]
0059b4c0  28 90 84 e5                                      str sb, [r4, #0x28]
0059b4c4  bc 72 c4 e1                                      strh r7, [r4, #0x2c]
0059b4c8  be 62 c4 e1                                      strh r6, [r4, #0x2e]
0059b4cc  ac 40 8d e5                                      str r4, [sp, #0xac]
0059b4d0  04 30 94 e5                                      ldr r3, [r4, #4]
0059b4d4  20 10 9d e5                                      ldr r1, [sp, #0x20]
0059b4d8  01 30 83 e2                                      add r3, r3, #1
0059b4dc  00 00 51 e3                                      cmp r1, #0
0059b4e0  04 30 84 e5                                      str r3, [r4, #4]
0059b4e4  01 00 00 0a                                      beq #0x59b4f0
0059b4e8  20 00 9d e5                                      ldr r0, [sp, #0x20]
0059b4ec  24 08 f6 eb                                      bl #0x31d584
0059b4f0  14 30 9b e5                                      ldr r3, [fp, #0x14]
0059b4f4  00 40 a0 e3                                      mov r4, #0
0059b4f8  00 00 53 e3                                      cmp r3, #0
0059b4fc  9c 30 8d e5                                      str r3, [sp, #0x9c]
0059b500  00 20 93 15                                      ldrne r2, [r3]
0059b504  01 20 82 12                                      addne r2, r2, #1
0059b508  00 20 83 15                                      strne r2, [r3]
0059b50c  9c 30 9d 15                                      ldrne r3, [sp, #0x9c]
0059b510  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0059b514  08 30 93 e5                                      ldr r3, [r3, #8]
0059b518  18 30 8d e5                                      str r3, [sp, #0x18]
0059b51c  9b 0d f7 eb                                      bl #0x35eb90
0059b520  ac 30 9d e5                                      ldr r3, [sp, #0xac]
0059b524  18 20 9d e5                                      ldr r2, [sp, #0x18]
0059b528  60 00 9d e5                                      ldr r0, [sp, #0x60]
0059b52c  14 60 93 e5                                      ldr r6, [r3, #0x14]
0059b530  54 10 9d e5                                      ldr r1, [sp, #0x54]
0059b534  01 30 a0 e3                                      mov r3, #1
0059b538  08 20 86 e5                                      str r2, [r6, #8]
0059b53c  08 30 8d e5                                      str r3, [sp, #8]
0059b540  54 30 9d e5                                      ldr r3, [sp, #0x54]
0059b544  00 40 8d e5                                      str r4, [sp]
0059b548  04 40 8d e5                                      str r4, [sp, #4]
0059b54c  00 c0 93 e5                                      ldr ip, [r3]
0059b550  04 20 a0 e1                                      mov r2, r4
0059b554  04 30 a0 e3                                      mov r3, #4
0059b558  0f e0 a0 e1                                      mov lr, pc
0059b55c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
0059b560  10 90 96 e5                                      ldr sb, [r6, #0x10]
0059b564  14 70 9b e5                                      ldr r7, [fp, #0x14]
0059b568  14 c0 86 e2                                      add ip, r6, #0x14
0059b56c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0059b570  09 00 5c e1                                      cmp ip, sb
0059b574  10 50 97 e5                                      ldr r5, [r7, #0x10]
0059b578  39 00 00 0a                                      beq #0x59b664
0059b57c  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
0059b580  28 b0 8d e5                                      str fp, [sp, #0x28]
0059b584  14 70 87 e2                                      add r7, r7, #0x14
0059b588  0c 80 a0 e1                                      mov r8, ip
0059b58c  09 b0 a0 e1                                      mov fp, sb
0059b590  05 00 57 e1                                      cmp r7, r5
0059b594  b8 10 d8 01                                      ldrheq r1, [r8, #8]
0059b598  a1 00 00 0a                                      beq #0x59b824
0059b59c  b8 10 d8 e1                                      ldrh r1, [r8, #8]
0059b5a0  b8 30 d7 e1                                      ldrh r3, [r7, #8]
0059b5a4  03 00 51 e1                                      cmp r1, r3
0059b5a8  05 00 00 da                                      ble #0x59b5c4
0059b5ac  10 70 87 e2                                      add r7, r7, #0x10
0059b5b0  05 00 57 e1                                      cmp r7, r5
0059b5b4  9a 00 00 0a                                      beq #0x59b824
0059b5b8  b8 30 d7 e1                                      ldrh r3, [r7, #8]
0059b5bc  01 00 53 e1                                      cmp r3, r1
0059b5c0  f9 ff ff ba                                      blt #0x59b5ac
0059b5c4  04 40 88 e5                                      str r4, [r8, #4]
0059b5c8  b8 30 d7 e1                                      ldrh r3, [r7, #8]
0059b5cc  01 00 53 e1                                      cmp r3, r1
0059b5d0  d5 00 00 0a                                      beq #0x59b92c
0059b5d4  24 00 9d e5                                      ldr r0, [sp, #0x24]
0059b5d8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0059b5dc  01 11 a0 e1                                      lsl r1, r1, #2
0059b5e0  00 c0 9a e7                                      ldr ip, [sl, r0]
0059b5e4  02 00 9a e7                                      ldr r0, [sl, r2]
0059b5e8  a8 20 9d e5                                      ldr r2, [sp, #0xa8]
0059b5ec  b1 30 9c e1                                      ldrh r3, [ip, r1]
0059b5f0  01 10 8c e0                                      add r1, ip, r1
0059b5f4  02 c0 d1 e5                                      ldrb ip, [r1, #2]
0059b5f8  03 90 d0 e7                                      ldrb sb, [r0, r3]
0059b5fc  00 00 52 e3                                      cmp r2, #0
0059b600  7c 20 8d e5                                      str r2, [sp, #0x7c]
0059b604  99 0c 09 e0                                      mul sb, sb, ip
0059b608  02 00 00 0a                                      beq #0x59b618
0059b60c  04 10 92 e5                                      ldr r1, [r2, #4]
0059b610  01 10 81 e2                                      add r1, r1, #1
0059b614  04 10 82 e5                                      str r1, [r2, #4]
0059b618  06 00 a0 e1                                      mov r0, r6
0059b61c  84 30 8d e5                                      str r3, [sp, #0x84]
0059b620  08 10 a0 e1                                      mov r1, r8
0059b624  00 30 a0 e3                                      mov r3, #0
0059b628  30 20 9d e5                                      ldr r2, [sp, #0x30]
0059b62c  b8 c8 cd e1                                      strh ip, [sp, #0x88]
0059b630  80 40 8d e5                                      str r4, [sp, #0x80]
0059b634  ba 38 cd e1                                      strh r3, [sp, #0x8a]
0059b638  9a fd ff eb                                      bl #0x59aca8
0059b63c  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0059b640  00 00 50 e3                                      cmp r0, #0
0059b644  00 00 00 0a                                      beq #0x59b64c
0059b648  cd 07 f6 eb                                      bl #0x31d584
0059b64c  09 40 84 e0                                      add r4, r4, sb
0059b650  74 40 ff e6                                      uxth r4, r4
0059b654  10 80 88 e2                                      add r8, r8, #0x10
0059b658  0b 00 58 e1                                      cmp r8, fp
0059b65c  cb ff ff 1a                                      bne #0x59b590
0059b660  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0059b664  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0059b668  00 10 a0 e3                                      mov r1, #0
0059b66c  9c 04 0c e0                                      mul ip, ip, r4
0059b670  0c 00 a0 e1                                      mov r0, ip
0059b674  28 c0 8d e5                                      str ip, [sp, #0x28]
0059b678  ca 62 fe eb                                      bl #0x5341a8
0059b67c  28 10 9d e5                                      ldr r1, [sp, #0x28]
0059b680  00 20 a0 e1                                      mov r2, r0
0059b684  00 70 a0 e1                                      mov r7, r0
0059b688  01 30 a0 e3                                      mov r3, #1
0059b68c  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
0059b690  87 19 00 eb                                      bl #0x5a1cb4
0059b694  00 10 a0 e3                                      mov r1, #0
0059b698  07 00 a0 e1                                      mov r0, r7
0059b69c  28 20 9d e5                                      ldr r2, [sp, #0x28]
0059b6a0  6e cb f5 eb                                      bl #0x30e460
0059b6a4  10 60 96 e5                                      ldr r6, [r6, #0x10]
0059b6a8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0059b6ac  18 60 8d e5                                      str r6, [sp, #0x18]
0059b6b0  18 10 9d e5                                      ldr r1, [sp, #0x18]
0059b6b4  14 60 9b e5                                      ldr r6, [fp, #0x14]
0059b6b8  01 00 50 e1                                      cmp r0, r1
0059b6bc  15 00 00 0a                                      beq #0x59b718
0059b6c0  14 60 86 e2                                      add r6, r6, #0x14
0059b6c4  00 a0 a0 e1                                      mov sl, r0
0059b6c8  04 90 a0 e1                                      mov sb, r4
0059b6cc  05 00 56 e1                                      cmp r6, r5
0059b6d0  be 90 ca e1                                      strh sb, [sl, #0xe]
0059b6d4  d2 00 00 0a                                      beq #0x59ba24
0059b6d8  b8 30 d6 e1                                      ldrh r3, [r6, #8]
0059b6dc  b8 20 da e1                                      ldrh r2, [sl, #8]
0059b6e0  02 00 53 e1                                      cmp r3, r2
0059b6e4  05 00 00 aa                                      bge #0x59b700
0059b6e8  10 60 86 e2                                      add r6, r6, #0x10
0059b6ec  05 00 56 e1                                      cmp r6, r5
0059b6f0  cb 00 00 0a                                      beq #0x59ba24
0059b6f4  b8 30 d6 e1                                      ldrh r3, [r6, #8]
0059b6f8  02 00 53 e1                                      cmp r3, r2
0059b6fc  f9 ff ff ba                                      blt #0x59b6e8
0059b700  03 00 52 e1                                      cmp r2, r3
0059b704  49 00 00 0a                                      beq #0x59b830
0059b708  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0059b70c  10 a0 8a e2                                      add sl, sl, #0x10
0059b710  0c 00 5a e1                                      cmp sl, ip
0059b714  ec ff ff 1a                                      bne #0x59b6cc
0059b718  40 00 9d e5                                      ldr r0, [sp, #0x40]
0059b71c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0059b720  00 30 90 e5                                      ldr r3, [r0]
0059b724  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0059b728  03 10 a0 e1                                      mov r1, r3
0059b72c  00 30 93 e5                                      ldr r3, [r3]
0059b730  0f e0 a0 e1                                      mov lr, pc
0059b734  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059b738  40 10 9d e5                                      ldr r1, [sp, #0x40]
0059b73c  48 00 9d e5                                      ldr r0, [sp, #0x48]
0059b740  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0059b744  00 30 91 e5                                      ldr r3, [r1]
0059b748  03 10 a0 e1                                      mov r1, r3
0059b74c  00 30 93 e5                                      ldr r3, [r3]
0059b750  0f e0 a0 e1                                      mov lr, pc
0059b754  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0059b758  64 10 9d e5                                      ldr r1, [sp, #0x64]
0059b75c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0059b760  48 30 9d e5                                      ldr r3, [sp, #0x48]
0059b764  50 00 9d e5                                      ldr r0, [sp, #0x50]
0059b768  bd 83 04 eb                                      bl #0x6bc664
0059b76c  48 00 9d e5                                      ldr r0, [sp, #0x48]
0059b770  bd 7a ff eb                                      bl #0x57a26c
0059b774  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0059b778  1a d5 f5 eb                                      bl #0x310be8
0059b77c  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
0059b780  00 00 50 e3                                      cmp r0, #0
0059b784  00 00 00 0a                                      beq #0x59b78c
0059b788  7d 07 f6 eb                                      bl #0x31d584
0059b78c  ac 00 9d e5                                      ldr r0, [sp, #0xac]
0059b790  00 00 50 e3                                      cmp r0, #0
0059b794  00 00 00 0a                                      beq #0x59b79c
0059b798  79 07 f6 eb                                      bl #0x31d584
0059b79c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0059b7a0  00 00 52 e3                                      cmp r2, #0
0059b7a4  01 00 00 0a                                      beq #0x59b7b0
0059b7a8  02 00 a0 e1                                      mov r0, r2
0059b7ac  74 07 f6 eb                                      bl #0x31d584
0059b7b0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0059b7b4  58 c0 9d e5                                      ldr ip, [sp, #0x58]
0059b7b8  01 30 83 e2                                      add r3, r3, #1
0059b7bc  0c 00 53 e1                                      cmp r3, ip
0059b7c0  2c 30 8d e5                                      str r3, [sp, #0x2c]
0059b7c4  f0 fe ff 1a                                      bne #0x59b38c
0059b7c8  40 00 9d e5                                      ldr r0, [sp, #0x40]
0059b7cc  50 10 9d e5                                      ldr r1, [sp, #0x50]
0059b7d0  00 30 90 e5                                      ldr r3, [r0]
0059b7d4  00 20 91 e5                                      ldr r2, [r1]
0059b7d8  03 00 a0 e1                                      mov r0, r3
0059b7dc  00 30 93 e5                                      ldr r3, [r3]
0059b7e0  28 40 92 e5                                      ldr r4, [r2, #0x28]
0059b7e4  0f e0 a0 e1                                      mov lr, pc
0059b7e8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0059b7ec  00 10 a0 e1                                      mov r1, r0
0059b7f0  50 00 9d e5                                      ldr r0, [sp, #0x50]
0059b7f4  34 ff 2f e1                                      blx r4
0059b7f8  50 20 9d e5                                      ldr r2, [sp, #0x50]
0059b7fc  74 30 9d e5                                      ldr r3, [sp, #0x74]
0059b800  00 20 83 e5                                      str r2, [r3]
0059b804  04 30 92 e5                                      ldr r3, [r2, #4]
0059b808  50 00 9d e5                                      ldr r0, [sp, #0x50]
0059b80c  01 30 83 e2                                      add r3, r3, #1
0059b810  04 30 82 e5                                      str r3, [r2, #4]
0059b814  5a 07 f6 eb                                      bl #0x31d584
0059b818  74 00 9d e5                                      ldr r0, [sp, #0x74]
0059b81c  bc d0 8d e2                                      add sp, sp, #0xbc
0059b820  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059b824  04 40 88 e5                                      str r4, [r8, #4]
0059b828  05 70 a0 e1                                      mov r7, r5
0059b82c  68 ff ff ea                                      b #0x59b5d4
0059b830  01 10 a0 e3                                      mov r1, #1
0059b834  00 00 96 e5                                      ldr r0, [r6]
0059b838  a7 18 00 eb                                      bl #0x5a1adc
0059b83c  04 30 96 e5                                      ldr r3, [r6, #4]
0059b840  04 10 a0 e3                                      mov r1, #4
0059b844  03 30 80 e0                                      add r3, r0, r3
0059b848  1c 30 8d e5                                      str r3, [sp, #0x1c]
0059b84c  00 00 9a e5                                      ldr r0, [sl]
0059b850  66 18 00 eb                                      bl #0x5a19f0
0059b854  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059b858  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0059b85c  04 80 9a e5                                      ldr r8, [sl, #4]
0059b860  bc 10 da e1                                      ldrh r1, [sl, #0xc]
0059b864  03 20 9c e7                                      ldr r2, [ip, r3]
0059b868  ba 30 da e1                                      ldrh r3, [sl, #0xa]
0059b86c  08 80 80 e0                                      add r8, r0, r8
0059b870  28 00 9d e5                                      ldr r0, [sp, #0x28]
0059b874  03 30 d2 e7                                      ldrb r3, [r2, r3]
0059b878  00 b0 88 e0                                      add fp, r8, r0
0059b87c  0b 00 58 e1                                      cmp r8, fp
0059b880  91 03 03 e0                                      mul r3, r1, r3
0059b884  10 00 00 0a                                      beq #0x59b8cc
0059b888  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
0059b88c  38 a0 8d e5                                      str sl, [sp, #0x38]
0059b890  00 40 a0 e3                                      mov r4, #0
0059b894  05 a0 a0 e1                                      mov sl, r5
0059b898  08 00 a0 e1                                      mov r0, r8
0059b89c  03 50 a0 e1                                      mov r5, r3
0059b8a0  07 10 a0 e1                                      mov r1, r7
0059b8a4  05 20 a0 e1                                      mov r2, r5
0059b8a8  ee cb f5 eb                                      bl #0x30e868
0059b8ac  09 40 84 e0                                      add r4, r4, sb
0059b8b0  be 30 d6 e1                                      ldrh r3, [r6, #0xe]
0059b8b4  08 00 84 e0                                      add r0, r4, r8
0059b8b8  00 00 5b e1                                      cmp fp, r0
0059b8bc  03 70 87 e0                                      add r7, r7, r3
0059b8c0  f6 ff ff 1a                                      bne #0x59b8a0
0059b8c4  0a 50 a0 e1                                      mov r5, sl
0059b8c8  38 a0 9d e5                                      ldr sl, [sp, #0x38]
0059b8cc  00 00 58 e3                                      cmp r8, #0
0059b8d0  08 00 00 0a                                      beq #0x59b8f8
0059b8d4  00 40 9a e5                                      ldr r4, [sl]
0059b8d8  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059b8dc  1f 20 03 e2                                      and r2, r3, #0x1f
0059b8e0  01 00 52 e3                                      cmp r2, #1
0059b8e4  2d 00 00 9a                                      bls #0x59b9a0
0059b8e8  01 20 42 e2                                      sub r2, r2, #1
0059b8ec  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059b8f0  03 30 82 e1                                      orr r3, r2, r3
0059b8f4  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059b8f8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0059b8fc  00 00 52 e3                                      cmp r2, #0
0059b900  80 ff ff 0a                                      beq #0x59b708
0059b904  00 40 96 e5                                      ldr r4, [r6]
0059b908  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059b90c  1f 20 03 e2                                      and r2, r3, #0x1f
0059b910  01 00 52 e3                                      cmp r2, #1
0059b914  27 00 00 9a                                      bls #0x59b9b8
0059b918  01 20 42 e2                                      sub r2, r2, #1
0059b91c  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059b920  03 30 82 e1                                      orr r3, r2, r3
0059b924  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059b928  76 ff ff ea                                      b #0x59b708
0059b92c  a8 20 9d e5                                      ldr r2, [sp, #0xa8]
0059b930  ba 30 d7 e1                                      ldrh r3, [r7, #0xa]
0059b934  bc c0 d7 e1                                      ldrh ip, [r7, #0xc]
0059b938  00 00 52 e3                                      cmp r2, #0
0059b93c  8c 20 8d e5                                      str r2, [sp, #0x8c]
0059b940  04 10 92 15                                      ldrne r1, [r2, #4]
0059b944  06 00 a0 e1                                      mov r0, r6
0059b948  01 10 81 12                                      addne r1, r1, #1
0059b94c  04 10 82 15                                      strne r1, [r2, #4]
0059b950  34 20 9d e5                                      ldr r2, [sp, #0x34]
0059b954  94 30 8d e5                                      str r3, [sp, #0x94]
0059b958  08 10 a0 e1                                      mov r1, r8
0059b95c  00 30 a0 e3                                      mov r3, #0
0059b960  b8 c9 cd e1                                      strh ip, [sp, #0x98]
0059b964  90 40 8d e5                                      str r4, [sp, #0x90]
0059b968  ba 39 cd e1                                      strh r3, [sp, #0x9a]
0059b96c  cd fc ff eb                                      bl #0x59aca8
0059b970  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
0059b974  00 00 50 e3                                      cmp r0, #0
0059b978  00 00 00 0a                                      beq #0x59b980
0059b97c  00 07 f6 eb                                      bl #0x31d584
0059b980  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0059b984  ba 20 d8 e1                                      ldrh r2, [r8, #0xa]
0059b988  bc 30 d8 e1                                      ldrh r3, [r8, #0xc]
0059b98c  0c 10 9a e7                                      ldr r1, [sl, ip]
0059b990  02 20 d1 e7                                      ldrb r2, [r1, r2]
0059b994  93 42 24 e0                                      mla r4, r3, r2, r4
0059b998  74 40 ff e6                                      uxth r4, r4
0059b99c  2c ff ff ea                                      b #0x59b654
0059b9a0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059b9a4  20 00 13 e3                                      tst r3, #0x20
0059b9a8  08 00 00 1a                                      bne #0x59b9d0
0059b9ac  00 10 a0 e3                                      mov r1, #0
0059b9b0  13 10 c4 e5                                      strb r1, [r4, #0x13]
0059b9b4  cf ff ff ea                                      b #0x59b8f8
0059b9b8  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059b9bc  20 00 13 e3                                      tst r3, #0x20
0059b9c0  07 00 00 1a                                      bne #0x59b9e4
0059b9c4  00 30 a0 e3                                      mov r3, #0
0059b9c8  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059b9cc  4d ff ff ea                                      b #0x59b708
0059b9d0  00 30 94 e5                                      ldr r3, [r4]
0059b9d4  04 00 a0 e1                                      mov r0, r4
0059b9d8  0f e0 a0 e1                                      mov lr, pc
0059b9dc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059b9e0  f1 ff ff ea                                      b #0x59b9ac
0059b9e4  00 30 94 e5                                      ldr r3, [r4]
0059b9e8  04 00 a0 e1                                      mov r0, r4
0059b9ec  0f e0 a0 e1                                      mov lr, pc
0059b9f0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059b9f4  f2 ff ff ea                                      b #0x59b9c4
0059b9f8  20 10 8d e5                                      str r1, [sp, #0x20]
0059b9fc  be 62 db e1                                      ldrh r6, [fp, #0x2e]
0059ba00  1c 50 9b e5                                      ldr r5, [fp, #0x1c]
0059ba04  bc 72 db e1                                      ldrh r7, [fp, #0x2c]
0059ba08  20 80 9b e5                                      ldr r8, [fp, #0x20]
0059ba0c  24 a0 9b e5                                      ldr sl, [fp, #0x24]
0059ba10  28 90 9b e5                                      ldr sb, [fp, #0x28]
0059ba14  8c fe ff ea                                      b #0x59b44c
0059ba18  20 00 9d e5                                      ldr r0, [sp, #0x20]
0059ba1c  7e 18 00 eb                                      bl #0x5a1c1c
0059ba20  f5 ff ff ea                                      b #0x59b9fc
0059ba24  05 60 a0 e1                                      mov r6, r5
0059ba28  36 ff ff ea                                      b #0x59b708
; mapping-symbol data/literal pool
0059ba2c  d0 97 3f 00 54 0c 00 00 08 11 00 00 f0 1d 00 00  .byte 0xd0, 0x97, 0x3f, 0x00, 0x54, 0x0c, 0x00, 0x00, 0x08, 0x11, 0x00, 0x00, 0xf0, 0x1d, 0x00, 0x00

; FUNCTION 0x0059ba3c, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene22createMeshWith2TCoordsERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS_5video12IVideoDriverE
; demangled: glitch::scene::createMeshWith2TCoords(boost::intrusive_ptr<glitch::scene::IMesh> const&, glitch::video::IVideoDriver*)
; decoder-mode: arm
0059ba3c  10 40 2d e9                                      push {r4, lr}
0059ba40  10 d0 4d e2                                      sub sp, sp, #0x10
0059ba44  00 30 e0 e3                                      mvn r3, #0
0059ba48  00 40 a0 e1                                      mov r4, r0
0059ba4c  06 c0 a0 e3                                      mov ip, #6
0059ba50  0c 00 8d e2                                      add r0, sp, #0xc
0059ba54  00 c0 8d e5                                      str ip, [sp]
0059ba58  11 fe ff eb                                      bl #0x59b2a4
0059ba5c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059ba60  00 00 50 e3                                      cmp r0, #0
0059ba64  00 00 84 e5                                      str r0, [r4]
0059ba68  04 30 90 15                                      ldrne r3, [r0, #4]
0059ba6c  01 30 83 12                                      addne r3, r3, #1
0059ba70  04 30 80 15                                      strne r3, [r0, #4]
0059ba74  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
0059ba78  00 00 50 e3                                      cmp r0, #0
0059ba7c  00 00 00 0a                                      beq #0x59ba84
0059ba80  bf 06 f6 eb                                      bl #0x31d584
0059ba84  04 00 a0 e1                                      mov r0, r4
0059ba88  10 d0 8d e2                                      add sp, sp, #0x10
0059ba8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059ba90, declared_size=464, range_size=464, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene15setVertexColorsERKN5boost13intrusive_ptrINS0_5IMeshEEENS_5video6SColorE
; demangled: glitch::scene::setVertexColors(boost::intrusive_ptr<glitch::scene::IMesh> const&, glitch::video::SColor)
; decoder-mode: arm
0059ba90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059ba94  00 30 90 e5                                      ldr r3, [r0]
0059ba98  24 d0 4d e2                                      sub sp, sp, #0x24
0059ba9c  00 70 a0 e1                                      mov r7, r0
0059baa0  00 00 53 e3                                      cmp r3, #0
0059baa4  14 10 8d e5                                      str r1, [sp, #0x14]
0059baa8  21 9c a0 e1                                      lsr sb, r1, #0x18
0059baac  71 60 ef e6                                      uxtb r6, r1
0059bab0  51 84 e7 e7                                      ubfx r8, r1, #8, #8
0059bab4  51 a8 e7 e7                                      ubfx sl, r1, #0x10, #8
0059bab8  35 00 00 0a                                      beq #0x59bb94
0059babc  03 00 a0 e1                                      mov r0, r3
0059bac0  00 30 93 e5                                      ldr r3, [r3]
0059bac4  0f e0 a0 e1                                      mov lr, pc
0059bac8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0059bacc  00 00 50 e3                                      cmp r0, #0
0059bad0  04 00 8d e5                                      str r0, [sp, #4]
0059bad4  2e 00 00 0a                                      beq #0x59bb94
0059bad8  78 31 9f e5                                      ldr r3, [pc, #0x178]
0059badc  00 40 a0 e3                                      mov r4, #0
0059bae0  03 30 8f e0                                      add r3, pc, r3
0059bae4  10 30 83 e2                                      add r3, r3, #0x10
0059bae8  0c 30 8d e5                                      str r3, [sp, #0xc]
0059baec  68 31 9f e5                                      ldr r3, [pc, #0x168]
0059baf0  03 30 8f e0                                      add r3, pc, r3
0059baf4  10 30 8d e5                                      str r3, [sp, #0x10]
0059baf8  1c 30 8d e2                                      add r3, sp, #0x1c
0059bafc  08 30 8d e5                                      str r3, [sp, #8]
0059bb00  03 00 00 ea                                      b #0x59bb14
0059bb04  04 30 9d e5                                      ldr r3, [sp, #4]
0059bb08  01 40 84 e2                                      add r4, r4, #1
0059bb0c  03 00 54 e1                                      cmp r4, r3
0059bb10  1f 00 00 0a                                      beq #0x59bb94
0059bb14  00 30 97 e5                                      ldr r3, [r7]
0059bb18  08 00 9d e5                                      ldr r0, [sp, #8]
0059bb1c  04 20 a0 e1                                      mov r2, r4
0059bb20  03 10 a0 e1                                      mov r1, r3
0059bb24  00 30 93 e5                                      ldr r3, [r3]
0059bb28  0f e0 a0 e1                                      mov lr, pc
0059bb2c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059bb30  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0059bb34  14 50 90 e5                                      ldr r5, [r0, #0x14]
0059bb38  91 06 f6 eb                                      bl #0x31d584
0059bb3c  04 30 95 e5                                      ldr r3, [r5, #4]
0059bb40  01 07 13 e3                                      tst r3, #0x40000
0059bb44  ee ff ff 0a                                      beq #0x59bb04
0059bb48  0c 20 d5 e5                                      ldrb r2, [r5, #0xc]
0059bb4c  10 30 95 e5                                      ldr r3, [r5, #0x10]
0059bb50  05 00 a0 e1                                      mov r0, r5
0059bb54  02 22 85 e0                                      add r2, r5, r2, lsl #4
0059bb58  12 10 a0 e3                                      mov r1, #0x12
0059bb5c  24 20 82 e2                                      add r2, r2, #0x24
0059bb60  e2 13 00 eb                                      bl #0x5a0af0
0059bb64  ba 30 d0 e1                                      ldrh r3, [r0, #0xa]
0059bb68  00 b0 a0 e1                                      mov fp, r0
0059bb6c  01 00 53 e3                                      cmp r3, #1
0059bb70  09 00 00 0a                                      beq #0x59bb9c
0059bb74  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059bb78  10 10 9d e5                                      ldr r1, [sp, #0x10]
0059bb7c  01 20 a0 e3                                      mov r2, #1
0059bb80  58 bc 01 eb                                      bl #0x60ace8
0059bb84  04 30 9d e5                                      ldr r3, [sp, #4]
0059bb88  01 40 84 e2                                      add r4, r4, #1
0059bb8c  03 00 54 e1                                      cmp r4, r3
0059bb90  df ff ff 1a                                      bne #0x59bb14
0059bb94  24 d0 8d e2                                      add sp, sp, #0x24
0059bb98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059bb9c  bc 30 d0 e1                                      ldrh r3, [r0, #0xc]
0059bba0  04 00 53 e3                                      cmp r3, #4
0059bba4  f2 ff ff 1a                                      bne #0x59bb74
0059bba8  00 00 90 e5                                      ldr r0, [r0]
0059bbac  05 10 a0 e3                                      mov r1, #5
0059bbb0  8e 17 00 eb                                      bl #0x5a19f0
0059bbb4  08 30 95 e5                                      ldr r3, [r5, #8]
0059bbb8  04 20 9b e5                                      ldr r2, [fp, #4]
0059bbbc  00 00 53 e3                                      cmp r3, #0
0059bbc0  02 00 80 e0                                      add r0, r0, r2
0059bbc4  0c 00 00 0a                                      beq #0x59bbfc
0059bbc8  be c0 db e1                                      ldrh ip, [fp, #0xe]
0059bbcc  00 20 a0 e3                                      mov r2, #0
0059bbd0  00 00 00 ea                                      b #0x59bbd8
0059bbd4  be c0 db e1                                      ldrh ip, [fp, #0xe]
0059bbd8  92 0c 0c e0                                      mul ip, r2, ip
0059bbdc  01 20 82 e2                                      add r2, r2, #1
0059bbe0  0c 10 80 e0                                      add r1, r0, ip
0059bbe4  03 00 52 e1                                      cmp r2, r3
0059bbe8  01 80 c1 e5                                      strb r8, [r1, #1]
0059bbec  03 90 c1 e5                                      strb sb, [r1, #3]
0059bbf0  02 a0 c1 e5                                      strb sl, [r1, #2]
0059bbf4  0c 60 c0 e7                                      strb r6, [r0, ip]
0059bbf8  f5 ff ff 1a                                      bne #0x59bbd4
0059bbfc  00 00 50 e3                                      cmp r0, #0
0059bc00  bf ff ff 0a                                      beq #0x59bb04
0059bc04  00 50 9b e5                                      ldr r5, [fp]
0059bc08  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0059bc0c  1f 20 03 e2                                      and r2, r3, #0x1f
0059bc10  01 00 52 e3                                      cmp r2, #1
0059bc14  04 00 00 9a                                      bls #0x59bc2c
0059bc18  01 20 42 e2                                      sub r2, r2, #1
0059bc1c  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059bc20  03 30 82 e1                                      orr r3, r2, r3
0059bc24  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059bc28  b5 ff ff ea                                      b #0x59bb04
0059bc2c  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0059bc30  20 00 13 e3                                      tst r3, #0x20
0059bc34  02 00 00 1a                                      bne #0x59bc44
0059bc38  00 30 a0 e3                                      mov r3, #0
0059bc3c  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059bc40  af ff ff ea                                      b #0x59bb04
0059bc44  00 30 95 e5                                      ldr r3, [r5]
0059bc48  05 00 a0 e1                                      mov r0, r5
0059bc4c  0f e0 a0 e1                                      mov lr, pc
0059bc50  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059bc54  f7 ff ff ea                                      b #0x59bc38
; mapping-symbol data/literal pool
0059bc58  a0 3c 34 00 58 3d 34 00                          .byte 0xa0, 0x3c, 0x34, 0x00, 0x58, 0x3d, 0x34, 0x00

; FUNCTION 0x0059bc60, declared_size=880, range_size=880, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene19setVertexColorAlphaERKN5boost13intrusive_ptrINS0_5IMeshEEEi
; demangled: glitch::scene::setVertexColorAlpha(boost::intrusive_ptr<glitch::scene::IMesh> const&, int)
; decoder-mode: arm
0059bc60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059bc64  00 30 90 e5                                      ldr r3, [r0]
0059bc68  14 d0 4d e2                                      sub sp, sp, #0x14
0059bc6c  00 60 a0 e1                                      mov r6, r0
0059bc70  00 00 53 e3                                      cmp r3, #0
0059bc74  01 a0 a0 e1                                      mov sl, r1
0059bc78  31 00 00 0a                                      beq #0x59bd44
0059bc7c  03 00 a0 e1                                      mov r0, r3
0059bc80  00 30 93 e5                                      ldr r3, [r3]
0059bc84  0f e0 a0 e1                                      mov lr, pc
0059bc88  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0059bc8c  00 70 50 e2                                      subs r7, r0, #0
0059bc90  2b 00 00 0a                                      beq #0x59bd44
0059bc94  7a 30 ef e6                                      uxtb r3, sl
0059bc98  00 40 a0 e3                                      mov r4, #0
0059bc9c  0c 80 8d e2                                      add r8, sp, #0xc
0059bca0  7a 90 ff e6                                      uxth sb, sl
0059bca4  04 30 8d e5                                      str r3, [sp, #4]
0059bca8  02 00 00 ea                                      b #0x59bcb8
0059bcac  01 40 84 e2                                      add r4, r4, #1
0059bcb0  07 00 54 e1                                      cmp r4, r7
0059bcb4  22 00 00 0a                                      beq #0x59bd44
0059bcb8  00 30 96 e5                                      ldr r3, [r6]
0059bcbc  08 00 a0 e1                                      mov r0, r8
0059bcc0  04 20 a0 e1                                      mov r2, r4
0059bcc4  03 10 a0 e1                                      mov r1, r3
0059bcc8  00 30 93 e5                                      ldr r3, [r3]
0059bccc  0f e0 a0 e1                                      mov lr, pc
0059bcd0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059bcd4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059bcd8  14 50 90 e5                                      ldr r5, [r0, #0x14]
0059bcdc  28 06 f6 eb                                      bl #0x31d584
0059bce0  04 30 95 e5                                      ldr r3, [r5, #4]
0059bce4  01 07 13 e3                                      tst r3, #0x40000
0059bce8  ef ff ff 0a                                      beq #0x59bcac
0059bcec  0c 20 d5 e5                                      ldrb r2, [r5, #0xc]
0059bcf0  10 30 95 e5                                      ldr r3, [r5, #0x10]
0059bcf4  05 00 a0 e1                                      mov r0, r5
0059bcf8  02 22 85 e0                                      add r2, r5, r2, lsl #4
0059bcfc  12 10 a0 e3                                      mov r1, #0x12
0059bd00  24 20 82 e2                                      add r2, r2, #0x24
0059bd04  79 13 00 eb                                      bl #0x5a0af0
0059bd08  bc 30 d0 e1                                      ldrh r3, [r0, #0xc]
0059bd0c  00 b0 a0 e1                                      mov fp, r0
0059bd10  04 00 53 e3                                      cmp r3, #4
0059bd14  e4 ff ff 1a                                      bne #0x59bcac
0059bd18  ba 30 d0 e1                                      ldrh r3, [r0, #0xa]
0059bd1c  06 00 53 e3                                      cmp r3, #6
0059bd20  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0059bd24  e0 ff ff ea                                      b #0x59bcac
0059bd28  24 00 00 ea                                      b #0x59bdc0
0059bd2c  41 00 00 ea                                      b #0x59be38
0059bd30  53 00 00 ea                                      b #0x59be84
0059bd34  64 00 00 ea                                      b #0x59becc
0059bd38  75 00 00 ea                                      b #0x59bf14
0059bd3c  86 00 00 ea                                      b #0x59bf5c
0059bd40  01 00 00 ea                                      b #0x59bd4c
0059bd44  14 d0 8d e2                                      add sp, sp, #0x14
0059bd48  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059bd4c  0a 00 a0 e1                                      mov r0, sl
0059bd50  03 cb f5 eb                                      bl #0x30e964
0059bd54  43 14 a0 e3                                      mov r1, #0x43000000
0059bd58  7f 18 81 e2                                      add r1, r1, #0x7f0000
0059bd5c  cc cb f5 eb                                      bl #0x30ec94
0059bd60  03 10 a0 e3                                      mov r1, #3
0059bd64  00 30 a0 e1                                      mov r3, r0
0059bd68  00 00 9b e5                                      ldr r0, [fp]
0059bd6c  08 50 95 e5                                      ldr r5, [r5, #8]
0059bd70  00 30 8d e5                                      str r3, [sp]
0059bd74  1d 17 00 eb                                      bl #0x5a19f0
0059bd78  04 20 9b e5                                      ldr r2, [fp, #4]
0059bd7c  00 00 55 e3                                      cmp r5, #0
0059bd80  00 30 9d e5                                      ldr r3, [sp]
0059bd84  02 20 80 e0                                      add r2, r0, r2
0059bd88  09 00 00 0a                                      beq #0x59bdb4
0059bd8c  be c0 db e1                                      ldrh ip, [fp, #0xe]
0059bd90  00 10 a0 e3                                      mov r1, #0
0059bd94  0c 00 a0 e1                                      mov r0, ip
0059bd98  00 00 00 ea                                      b #0x59bda0
0059bd9c  be 00 db e1                                      ldrh r0, [fp, #0xe]
0059bda0  91 20 20 e0                                      mla r0, r1, r0, r2
0059bda4  01 10 81 e2                                      add r1, r1, #1
0059bda8  05 00 51 e1                                      cmp r1, r5
0059bdac  0c 30 80 e5                                      str r3, [r0, #0xc]
0059bdb0  f9 ff ff 1a                                      bne #0x59bd9c
0059bdb4  00 00 52 e3                                      cmp r2, #0
0059bdb8  14 00 00 1a                                      bne #0x59be10
0059bdbc  ba ff ff ea                                      b #0x59bcac
0059bdc0  00 00 90 e5                                      ldr r0, [r0]
0059bdc4  03 10 a0 e3                                      mov r1, #3
0059bdc8  08 50 95 e5                                      ldr r5, [r5, #8]
0059bdcc  07 17 00 eb                                      bl #0x5a19f0
0059bdd0  04 30 9b e5                                      ldr r3, [fp, #4]
0059bdd4  00 00 55 e3                                      cmp r5, #0
0059bdd8  03 30 80 e0                                      add r3, r0, r3
0059bddc  09 00 00 0a                                      beq #0x59be08
0059bde0  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059bde4  00 20 a0 e3                                      mov r2, #0
0059bde8  04 00 9d e5                                      ldr r0, [sp, #4]
0059bdec  00 00 00 ea                                      b #0x59bdf4
0059bdf0  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059bdf4  92 31 21 e0                                      mla r1, r2, r1, r3
0059bdf8  01 20 82 e2                                      add r2, r2, #1
0059bdfc  05 00 52 e1                                      cmp r2, r5
0059be00  03 00 c1 e5                                      strb r0, [r1, #3]
0059be04  f9 ff ff 1a                                      bne #0x59bdf0
0059be08  00 00 53 e3                                      cmp r3, #0
0059be0c  a6 ff ff 0a                                      beq #0x59bcac
0059be10  00 50 9b e5                                      ldr r5, [fp]
0059be14  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0059be18  1f 20 03 e2                                      and r2, r3, #0x1f
0059be1c  01 00 52 e3                                      cmp r2, #1
0059be20  5f 00 00 9a                                      bls #0x59bfa4
0059be24  01 20 42 e2                                      sub r2, r2, #1
0059be28  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059be2c  03 30 82 e1                                      orr r3, r2, r3
0059be30  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059be34  9c ff ff ea                                      b #0x59bcac
0059be38  00 00 90 e5                                      ldr r0, [r0]
0059be3c  03 10 a0 e3                                      mov r1, #3
0059be40  08 50 95 e5                                      ldr r5, [r5, #8]
0059be44  e9 16 00 eb                                      bl #0x5a19f0
0059be48  04 30 9b e5                                      ldr r3, [fp, #4]
0059be4c  00 00 55 e3                                      cmp r5, #0
0059be50  03 30 80 e0                                      add r3, r0, r3
0059be54  eb ff ff 0a                                      beq #0x59be08
0059be58  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059be5c  00 20 a0 e3                                      mov r2, #0
0059be60  04 00 9d e5                                      ldr r0, [sp, #4]
0059be64  00 00 00 ea                                      b #0x59be6c
0059be68  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059be6c  92 31 21 e0                                      mla r1, r2, r1, r3
0059be70  01 20 82 e2                                      add r2, r2, #1
0059be74  05 00 52 e1                                      cmp r2, r5
0059be78  03 00 c1 e5                                      strb r0, [r1, #3]
0059be7c  f9 ff ff 1a                                      bne #0x59be68
0059be80  e0 ff ff ea                                      b #0x59be08
0059be84  00 00 90 e5                                      ldr r0, [r0]
0059be88  03 10 a0 e3                                      mov r1, #3
0059be8c  08 50 95 e5                                      ldr r5, [r5, #8]
0059be90  d6 16 00 eb                                      bl #0x5a19f0
0059be94  04 30 9b e5                                      ldr r3, [fp, #4]
0059be98  00 00 55 e3                                      cmp r5, #0
0059be9c  03 30 80 e0                                      add r3, r0, r3
0059bea0  d8 ff ff 0a                                      beq #0x59be08
0059bea4  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059bea8  00 20 a0 e3                                      mov r2, #0
0059beac  00 00 00 ea                                      b #0x59beb4
0059beb0  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059beb4  92 31 21 e0                                      mla r1, r2, r1, r3
0059beb8  01 20 82 e2                                      add r2, r2, #1
0059bebc  05 00 52 e1                                      cmp r2, r5
0059bec0  b6 90 c1 e1                                      strh sb, [r1, #6]
0059bec4  f9 ff ff 1a                                      bne #0x59beb0
0059bec8  ce ff ff ea                                      b #0x59be08
0059becc  00 00 90 e5                                      ldr r0, [r0]
0059bed0  03 10 a0 e3                                      mov r1, #3
0059bed4  08 50 95 e5                                      ldr r5, [r5, #8]
0059bed8  c4 16 00 eb                                      bl #0x5a19f0
0059bedc  04 30 9b e5                                      ldr r3, [fp, #4]
0059bee0  00 00 55 e3                                      cmp r5, #0
0059bee4  03 30 80 e0                                      add r3, r0, r3
0059bee8  c6 ff ff 0a                                      beq #0x59be08
0059beec  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059bef0  00 20 a0 e3                                      mov r2, #0
0059bef4  00 00 00 ea                                      b #0x59befc
0059bef8  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059befc  92 31 21 e0                                      mla r1, r2, r1, r3
0059bf00  01 20 82 e2                                      add r2, r2, #1
0059bf04  05 00 52 e1                                      cmp r2, r5
0059bf08  b6 90 c1 e1                                      strh sb, [r1, #6]
0059bf0c  f9 ff ff 1a                                      bne #0x59bef8
0059bf10  bc ff ff ea                                      b #0x59be08
0059bf14  00 00 90 e5                                      ldr r0, [r0]
0059bf18  03 10 a0 e3                                      mov r1, #3
0059bf1c  08 50 95 e5                                      ldr r5, [r5, #8]
0059bf20  b2 16 00 eb                                      bl #0x5a19f0
0059bf24  04 30 9b e5                                      ldr r3, [fp, #4]
0059bf28  00 00 55 e3                                      cmp r5, #0
0059bf2c  03 30 80 e0                                      add r3, r0, r3
0059bf30  b4 ff ff 0a                                      beq #0x59be08
0059bf34  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059bf38  00 20 a0 e3                                      mov r2, #0
0059bf3c  00 00 00 ea                                      b #0x59bf44
0059bf40  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059bf44  92 31 21 e0                                      mla r1, r2, r1, r3
0059bf48  01 20 82 e2                                      add r2, r2, #1
0059bf4c  05 00 52 e1                                      cmp r2, r5
0059bf50  0c a0 81 e5                                      str sl, [r1, #0xc]
0059bf54  f9 ff ff 1a                                      bne #0x59bf40
0059bf58  aa ff ff ea                                      b #0x59be08
0059bf5c  00 00 90 e5                                      ldr r0, [r0]
0059bf60  03 10 a0 e3                                      mov r1, #3
0059bf64  08 50 95 e5                                      ldr r5, [r5, #8]
0059bf68  a0 16 00 eb                                      bl #0x5a19f0
0059bf6c  04 30 9b e5                                      ldr r3, [fp, #4]
0059bf70  00 00 55 e3                                      cmp r5, #0
0059bf74  03 30 80 e0                                      add r3, r0, r3
0059bf78  a2 ff ff 0a                                      beq #0x59be08
0059bf7c  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059bf80  00 20 a0 e3                                      mov r2, #0
0059bf84  00 00 00 ea                                      b #0x59bf8c
0059bf88  be 10 db e1                                      ldrh r1, [fp, #0xe]
0059bf8c  92 31 21 e0                                      mla r1, r2, r1, r3
0059bf90  01 20 82 e2                                      add r2, r2, #1
0059bf94  05 00 52 e1                                      cmp r2, r5
0059bf98  0c a0 81 e5                                      str sl, [r1, #0xc]
0059bf9c  f9 ff ff 1a                                      bne #0x59bf88
0059bfa0  98 ff ff ea                                      b #0x59be08
0059bfa4  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0059bfa8  20 00 13 e3                                      tst r3, #0x20
0059bfac  02 00 00 1a                                      bne #0x59bfbc
0059bfb0  00 30 a0 e3                                      mov r3, #0
0059bfb4  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059bfb8  3b ff ff ea                                      b #0x59bcac
0059bfbc  00 30 95 e5                                      ldr r3, [r5]
0059bfc0  05 00 a0 e1                                      mov r0, r5
0059bfc4  0f e0 a0 e1                                      mov lr, pc
0059bfc8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059bfcc  f7 ff ff ea                                      b #0x59bfb0

; FUNCTION 0x0059c198, declared_size=1548, range_size=1548, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene24makePlanarTextureMappingERKN5boost13intrusive_ptrINS0_5IMeshEEEf
; demangled: glitch::scene::makePlanarTextureMapping(boost::intrusive_ptr<glitch::scene::IMesh> const&, float)
; decoder-mode: arm
0059c198  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059c19c  94 d0 4d e2                                      sub sp, sp, #0x94
0059c1a0  34 00 8d e5                                      str r0, [sp, #0x34]
0059c1a4  00 30 90 e5                                      ldr r3, [r0]
0059c1a8  01 60 a0 e1                                      mov r6, r1
0059c1ac  00 00 53 e3                                      cmp r3, #0
0059c1b0  6e 00 00 0a                                      beq #0x59c370
0059c1b4  03 00 a0 e1                                      mov r0, r3
0059c1b8  00 30 93 e5                                      ldr r3, [r3]
0059c1bc  0f e0 a0 e1                                      mov lr, pc
0059c1c0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0059c1c4  00 00 50 e3                                      cmp r0, #0
0059c1c8  38 00 8d e5                                      str r0, [sp, #0x38]
0059c1cc  67 00 00 0a                                      beq #0x59c370
0059c1d0  b4 15 9f e5                                      ldr r1, [pc, #0x5b4]
0059c1d4  b4 25 9f e5                                      ldr r2, [pc, #0x5b4]
0059c1d8  b4 35 9f e5                                      ldr r3, [pc, #0x5b4]
0059c1dc  01 10 8f e0                                      add r1, pc, r1
0059c1e0  02 20 8f e0                                      add r2, pc, r2
0059c1e4  20 10 81 e2                                      add r1, r1, #0x20
0059c1e8  20 20 82 e2                                      add r2, r2, #0x20
0059c1ec  03 30 8f e0                                      add r3, pc, r3
0059c1f0  4c 10 8d e5                                      str r1, [sp, #0x4c]
0059c1f4  44 20 8d e5                                      str r2, [sp, #0x44]
0059c1f8  20 30 83 e2                                      add r3, r3, #0x20
0059c1fc  00 10 a0 e3                                      mov r1, #0
0059c200  8c 20 8d e2                                      add r2, sp, #0x8c
0059c204  48 30 8d e5                                      str r3, [sp, #0x48]
0059c208  0c 10 8d e5                                      str r1, [sp, #0xc]
0059c20c  3c 20 8d e5                                      str r2, [sp, #0x3c]
0059c210  0a 00 00 ea                                      b #0x59c240
0059c214  7c 15 9f e5                                      ldr r1, [pc, #0x57c]
0059c218  44 00 9d e5                                      ldr r0, [sp, #0x44]
0059c21c  01 20 a0 e3                                      mov r2, #1
0059c220  01 10 8f e0                                      add r1, pc, r1
0059c224  af ba 01 eb                                      bl #0x60ace8
0059c228  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059c22c  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0059c230  01 30 83 e2                                      add r3, r3, #1
0059c234  0c 00 53 e1                                      cmp r3, ip
0059c238  0c 30 8d e5                                      str r3, [sp, #0xc]
0059c23c  4b 00 00 0a                                      beq #0x59c370
0059c240  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0059c244  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0059c248  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0059c24c  00 30 9c e5                                      ldr r3, [ip]
0059c250  03 10 a0 e1                                      mov r1, r3
0059c254  00 30 93 e5                                      ldr r3, [r3]
0059c258  0f e0 a0 e1                                      mov lr, pc
0059c25c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059c260  8c 70 9d e5                                      ldr r7, [sp, #0x8c]
0059c264  00 00 57 e3                                      cmp r7, #0
0059c268  01 00 00 0a                                      beq #0x59c274
0059c26c  07 00 a0 e1                                      mov r0, r7
0059c270  c3 04 f6 eb                                      bl #0x31d584
0059c274  18 30 97 e5                                      ldr r3, [r7, #0x18]
0059c278  00 00 53 e3                                      cmp r3, #0
0059c27c  3d 00 00 0a                                      beq #0x59c378
0059c280  be 32 d7 e1                                      ldrh r3, [r7, #0x2e]
0059c284  06 00 53 e3                                      cmp r3, #6
0059c288  e1 ff ff 1a                                      bne #0x59c214
0059c28c  14 10 97 e5                                      ldr r1, [r7, #0x14]
0059c290  24 10 8d e5                                      str r1, [sp, #0x24]
0059c294  04 30 91 e5                                      ldr r3, [r1, #4]
0059c298  02 00 13 e3                                      tst r3, #2
0059c29c  e1 ff ff 0a                                      beq #0x59c228
0059c2a0  00 30 a0 e3                                      mov r3, #0
0059c2a4  80 30 8d e5                                      str r3, [sp, #0x80]
0059c2a8  84 30 8d e5                                      str r3, [sp, #0x84]
0059c2ac  88 30 8d e5                                      str r3, [sp, #0x88]
0059c2b0  7c 30 8d e5                                      str r3, [sp, #0x7c]
0059c2b4  14 40 81 e2                                      add r4, r1, #0x14
0059c2b8  ba 30 d4 e1                                      ldrh r3, [r4, #0xa]
0059c2bc  06 00 53 e3                                      cmp r3, #6
0059c2c0  32 00 00 0a                                      beq #0x59c390
0059c2c4  d0 14 9f e5                                      ldr r1, [pc, #0x4d0]
0059c2c8  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0059c2cc  01 20 a0 e3                                      mov r2, #1
0059c2d0  01 10 8f e0                                      add r1, pc, r1
0059c2d4  83 ba 01 eb                                      bl #0x60ace8
0059c2d8  80 30 9d e5                                      ldr r3, [sp, #0x80]
0059c2dc  00 00 53 e3                                      cmp r3, #0
0059c2e0  0c 00 00 0a                                      beq #0x59c318
0059c2e4  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
0059c2e8  00 40 93 e5                                      ldr r4, [r3]
0059c2ec  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059c2f0  1f 20 03 e2                                      and r2, r3, #0x1f
0059c2f4  01 00 52 e3                                      cmp r2, #1
0059c2f8  a0 00 00 9a                                      bls #0x59c580
0059c2fc  01 20 42 e2                                      sub r2, r2, #1
0059c300  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059c304  03 30 82 e1                                      orr r3, r2, r3
0059c308  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059c30c  00 30 a0 e3                                      mov r3, #0
0059c310  80 30 8d e5                                      str r3, [sp, #0x80]
0059c314  7c 30 8d e5                                      str r3, [sp, #0x7c]
0059c318  88 30 9d e5                                      ldr r3, [sp, #0x88]
0059c31c  00 00 53 e3                                      cmp r3, #0
0059c320  c0 ff ff 0a                                      beq #0x59c228
0059c324  84 30 9d e5                                      ldr r3, [sp, #0x84]
0059c328  00 40 93 e5                                      ldr r4, [r3]
0059c32c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059c330  1f 20 03 e2                                      and r2, r3, #0x1f
0059c334  01 00 52 e3                                      cmp r2, #1
0059c338  8a 00 00 9a                                      bls #0x59c568
0059c33c  01 20 42 e2                                      sub r2, r2, #1
0059c340  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059c344  03 30 82 e1                                      orr r3, r2, r3
0059c348  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059c34c  00 30 a0 e3                                      mov r3, #0
0059c350  88 30 8d e5                                      str r3, [sp, #0x88]
0059c354  84 30 8d e5                                      str r3, [sp, #0x84]
0059c358  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059c35c  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0059c360  01 30 83 e2                                      add r3, r3, #1
0059c364  0c 00 53 e1                                      cmp r3, ip
0059c368  0c 30 8d e5                                      str r3, [sp, #0xc]
0059c36c  b3 ff ff 1a                                      bne #0x59c240
0059c370  94 d0 8d e2                                      add sp, sp, #0x94
0059c374  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059c378  20 14 9f e5                                      ldr r1, [pc, #0x420]
0059c37c  48 00 9d e5                                      ldr r0, [sp, #0x48]
0059c380  01 20 a0 e3                                      mov r2, #1
0059c384  01 10 8f e0                                      add r1, pc, r1
0059c388  56 ba 01 eb                                      bl #0x60ace8
0059c38c  a5 ff ff ea                                      b #0x59c228
0059c390  bc 30 d4 e1                                      ldrh r3, [r4, #0xc]
0059c394  02 00 53 e3                                      cmp r3, #2
0059c398  c9 ff ff 9a                                      bls #0x59c2c4
0059c39c  24 a0 81 e2                                      add sl, r1, #0x24
0059c3a0  ba 30 da e1                                      ldrh r3, [sl, #0xa]
0059c3a4  06 00 53 e3                                      cmp r3, #6
0059c3a8  c5 ff ff 1a                                      bne #0x59c2c4
0059c3ac  bc 30 da e1                                      ldrh r3, [sl, #0xc]
0059c3b0  02 00 53 e3                                      cmp r3, #2
0059c3b4  c2 ff ff 1a                                      bne #0x59c2c4
0059c3b8  24 10 9d e5                                      ldr r1, [sp, #0x24]
0059c3bc  24 00 91 e5                                      ldr r0, [r1, #0x24]
0059c3c0  05 10 a0 e3                                      mov r1, #5
0059c3c4  89 15 00 eb                                      bl #0x5a19f0
0059c3c8  24 20 9d e5                                      ldr r2, [sp, #0x24]
0059c3cc  04 80 9a e5                                      ldr r8, [sl, #4]
0059c3d0  14 30 92 e5                                      ldr r3, [r2, #0x14]
0059c3d4  24 20 92 e5                                      ldr r2, [r2, #0x24]
0059c3d8  08 80 80 e0                                      add r8, r0, r8
0059c3dc  02 00 53 e1                                      cmp r3, r2
0059c3e0  d9 00 00 0a                                      beq #0x59c74c
0059c3e4  7c 00 8d e2                                      add r0, sp, #0x7c
0059c3e8  04 10 a0 e1                                      mov r1, r4
0059c3ec  43 ff ff eb                                      bl #0x59c100
0059c3f0  80 30 9d e5                                      ldr r3, [sp, #0x80]
0059c3f4  14 30 8d e5                                      str r3, [sp, #0x14]
0059c3f8  18 00 97 e5                                      ldr r0, [r7, #0x18]
0059c3fc  01 10 a0 e3                                      mov r1, #1
0059c400  b5 15 00 eb                                      bl #0x5a1adc
0059c404  20 c0 97 e5                                      ldr ip, [r7, #0x20]
0059c408  1c c0 8d e5                                      str ip, [sp, #0x1c]
0059c40c  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
0059c410  be 40 d4 e1                                      ldrh r4, [r4, #0xe]
0059c414  00 00 5c e3                                      cmp ip, #0
0059c418  03 30 80 e0                                      add r3, r0, r3
0059c41c  10 40 8d e5                                      str r4, [sp, #0x10]
0059c420  18 30 8d e5                                      str r3, [sp, #0x18]
0059c424  6c 00 00 0a                                      beq #0x59c5dc
0059c428  70 50 8d e2                                      add r5, sp, #0x70
0059c42c  00 10 a0 e3                                      mov r1, #0
0059c430  08 10 8d e5                                      str r1, [sp, #8]
0059c434  64 20 8d e2                                      add r2, sp, #0x64
0059c438  54 30 8d e2                                      add r3, sp, #0x54
0059c43c  04 c0 85 e2                                      add ip, r5, #4
0059c440  08 10 85 e2                                      add r1, r5, #8
0059c444  40 20 8d e5                                      str r2, [sp, #0x40]
0059c448  28 30 8d e5                                      str r3, [sp, #0x28]
0059c44c  2c c0 8d e5                                      str ip, [sp, #0x2c]
0059c450  30 10 8d e5                                      str r1, [sp, #0x30]
0059c454  20 70 8d e5                                      str r7, [sp, #0x20]
0059c458  20 20 9d e5                                      ldr r2, [sp, #0x20]
0059c45c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0059c460  18 10 9d e5                                      ldr r1, [sp, #0x18]
0059c464  bc 02 d2 e1                                      ldrh r0, [r2, #0x2c]
0059c468  00 c0 8d e5                                      str ip, [sp]
0059c46c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0059c470  08 20 9d e5                                      ldr r2, [sp, #8]
0059c474  05 30 a0 e1                                      mov r3, r5
0059c478  04 c0 8d e5                                      str ip, [sp, #4]
0059c47c  08 f7 ff eb                                      bl #0x59a0a4
0059c480  10 10 9d e5                                      ldr r1, [sp, #0x10]
0059c484  14 20 9d e5                                      ldr r2, [sp, #0x14]
0059c488  70 40 9d e5                                      ldr r4, [sp, #0x70]
0059c48c  74 e0 9d e5                                      ldr lr, [sp, #0x74]
0059c490  78 c0 9d e5                                      ldr ip, [sp, #0x78]
0059c494  94 21 24 e0                                      mla r4, r4, r1, r2
0059c498  9e 21 2e e0                                      mla lr, lr, r1, r2
0059c49c  9c 21 2c e0                                      mla ip, ip, r1, r2
0059c4a0  28 00 9d e5                                      ldr r0, [sp, #0x28]
0059c4a4  0e 20 a0 e1                                      mov r2, lr
0059c4a8  0c 30 a0 e1                                      mov r3, ip
0059c4ac  04 10 a0 e1                                      mov r1, r4
0059c4b0  6c c0 8d e5                                      str ip, [sp, #0x6c]
0059c4b4  00 c0 a0 e3                                      mov ip, #0
0059c4b8  68 e0 8d e5                                      str lr, [sp, #0x68]
0059c4bc  54 c0 8d e5                                      str ip, [sp, #0x54]
0059c4c0  58 c0 8d e5                                      str ip, [sp, #0x58]
0059c4c4  5c c0 8d e5                                      str ip, [sp, #0x5c]
0059c4c8  64 40 8d e5                                      str r4, [sp, #0x64]
0059c4cc  c2 15 ff eb                                      bl #0x561bdc
0059c4d0  54 70 9d e5                                      ldr r7, [sp, #0x54]
0059c4d4  58 90 9d e5                                      ldr sb, [sp, #0x58]
0059c4d8  5c b0 9d e5                                      ldr fp, [sp, #0x5c]
0059c4dc  02 71 c7 e3                                      bic r7, r7, #0x80000000
0059c4e0  02 91 c9 e3                                      bic sb, sb, #0x80000000
0059c4e4  02 21 cb e3                                      bic r2, fp, #0x80000000
0059c4e8  07 00 a0 e1                                      mov r0, r7
0059c4ec  09 10 a0 e1                                      mov r1, sb
0059c4f0  02 b0 a0 e1                                      mov fp, r2
0059c4f4  7f c7 f5 eb                                      bl #0x30e2f8
0059c4f8  00 00 50 e3                                      cmp r0, #0
0059c4fc  52 00 00 0a                                      beq #0x59c64c
0059c500  07 00 a0 e1                                      mov r0, r7
0059c504  0b 10 a0 e1                                      mov r1, fp
0059c508  7a c7 f5 eb                                      bl #0x30e2f8
0059c50c  00 00 50 e3                                      cmp r0, #0
0059c510  4d 00 00 0a                                      beq #0x59c64c
0059c514  40 b0 9d e5                                      ldr fp, [sp, #0x40]
0059c518  00 70 a0 e3                                      mov r7, #0
0059c51c  be 30 da e1                                      ldrh r3, [sl, #0xe]
0059c520  07 90 95 e7                                      ldr sb, [r5, r7]
0059c524  04 00 94 e5                                      ldr r0, [r4, #4]
0059c528  06 10 a0 e1                                      mov r1, r6
0059c52c  99 03 09 e0                                      mul sb, sb, r3
0059c530  0d ca f5 eb                                      bl #0x30ed6c
0059c534  09 00 88 e7                                      str r0, [r8, sb]
0059c538  07 20 95 e7                                      ldr r2, [r5, r7]
0059c53c  be 30 da e1                                      ldrh r3, [sl, #0xe]
0059c540  08 00 94 e5                                      ldr r0, [r4, #8]
0059c544  06 10 a0 e1                                      mov r1, r6
0059c548  92 83 24 e0                                      mla r4, r2, r3, r8
0059c54c  06 ca f5 eb                                      bl #0x30ed6c
0059c550  04 70 87 e2                                      add r7, r7, #4
0059c554  0c 00 57 e3                                      cmp r7, #0xc
0059c558  04 00 84 e5                                      str r0, [r4, #4]
0059c55c  17 00 00 0a                                      beq #0x59c5c0
0059c560  07 40 9b e7                                      ldr r4, [fp, r7]
0059c564  ec ff ff ea                                      b #0x59c51c
0059c568  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059c56c  20 00 13 e3                                      tst r3, #0x20
0059c570  0d 00 00 1a                                      bne #0x59c5ac
0059c574  00 30 a0 e3                                      mov r3, #0
0059c578  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059c57c  72 ff ff ea                                      b #0x59c34c
0059c580  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059c584  20 00 13 e3                                      tst r3, #0x20
0059c588  02 00 00 1a                                      bne #0x59c598
0059c58c  00 30 a0 e3                                      mov r3, #0
0059c590  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059c594  5c ff ff ea                                      b #0x59c30c
0059c598  00 30 94 e5                                      ldr r3, [r4]
0059c59c  04 00 a0 e1                                      mov r0, r4
0059c5a0  0f e0 a0 e1                                      mov lr, pc
0059c5a4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059c5a8  f7 ff ff ea                                      b #0x59c58c
0059c5ac  00 30 94 e5                                      ldr r3, [r4]
0059c5b0  04 00 a0 e1                                      mov r0, r4
0059c5b4  0f e0 a0 e1                                      mov lr, pc
0059c5b8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059c5bc  ec ff ff ea                                      b #0x59c574
0059c5c0  08 30 9d e5                                      ldr r3, [sp, #8]
0059c5c4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0059c5c8  01 30 83 e2                                      add r3, r3, #1
0059c5cc  0c 00 53 e1                                      cmp r3, ip
0059c5d0  08 30 8d e5                                      str r3, [sp, #8]
0059c5d4  9f ff ff 1a                                      bne #0x59c458
0059c5d8  20 70 9d e5                                      ldr r7, [sp, #0x20]
0059c5dc  18 10 9d e5                                      ldr r1, [sp, #0x18]
0059c5e0  00 00 51 e3                                      cmp r1, #0
0059c5e4  08 00 00 0a                                      beq #0x59c60c
0059c5e8  18 40 97 e5                                      ldr r4, [r7, #0x18]
0059c5ec  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059c5f0  1f 20 03 e2                                      and r2, r3, #0x1f
0059c5f4  01 00 52 e3                                      cmp r2, #1
0059c5f8  4d 00 00 9a                                      bls #0x59c734
0059c5fc  01 20 42 e2                                      sub r2, r2, #1
0059c600  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059c604  03 30 82 e1                                      orr r3, r2, r3
0059c608  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059c60c  00 00 58 e3                                      cmp r8, #0
0059c610  09 00 00 0a                                      beq #0x59c63c
0059c614  24 20 9d e5                                      ldr r2, [sp, #0x24]
0059c618  24 40 92 e5                                      ldr r4, [r2, #0x24]
0059c61c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059c620  1f 20 03 e2                                      and r2, r3, #0x1f
0059c624  01 00 52 e3                                      cmp r2, #1
0059c628  3b 00 00 9a                                      bls #0x59c71c
0059c62c  01 20 42 e2                                      sub r2, r2, #1
0059c630  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059c634  03 30 82 e1                                      orr r3, r2, r3
0059c638  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059c63c  80 30 9d e5                                      ldr r3, [sp, #0x80]
0059c640  00 00 53 e3                                      cmp r3, #0
0059c644  26 ff ff 1a                                      bne #0x59c2e4
0059c648  32 ff ff ea                                      b #0x59c318
0059c64c  07 00 a0 e1                                      mov r0, r7
0059c650  09 10 a0 e1                                      mov r1, sb
0059c654  2c c8 f5 eb                                      bl #0x30e70c
0059c658  00 00 50 e3                                      cmp r0, #0
0059c65c  19 00 00 0a                                      beq #0x59c6c8
0059c660  09 00 a0 e1                                      mov r0, sb
0059c664  0b 10 a0 e1                                      mov r1, fp
0059c668  22 c7 f5 eb                                      bl #0x30e2f8
0059c66c  00 00 50 e3                                      cmp r0, #0
0059c670  14 00 00 0a                                      beq #0x59c6c8
0059c674  40 b0 9d e5                                      ldr fp, [sp, #0x40]
0059c678  00 70 a0 e3                                      mov r7, #0
0059c67c  be 30 da e1                                      ldrh r3, [sl, #0xe]
0059c680  07 90 95 e7                                      ldr sb, [r5, r7]
0059c684  00 00 94 e5                                      ldr r0, [r4]
0059c688  06 10 a0 e1                                      mov r1, r6
0059c68c  99 03 09 e0                                      mul sb, sb, r3
0059c690  b5 c9 f5 eb                                      bl #0x30ed6c
0059c694  09 00 88 e7                                      str r0, [r8, sb]
0059c698  07 20 95 e7                                      ldr r2, [r5, r7]
0059c69c  be 30 da e1                                      ldrh r3, [sl, #0xe]
0059c6a0  08 00 94 e5                                      ldr r0, [r4, #8]
0059c6a4  06 10 a0 e1                                      mov r1, r6
0059c6a8  92 83 24 e0                                      mla r4, r2, r3, r8
0059c6ac  ae c9 f5 eb                                      bl #0x30ed6c
0059c6b0  04 70 87 e2                                      add r7, r7, #4
0059c6b4  0c 00 57 e3                                      cmp r7, #0xc
0059c6b8  04 00 84 e5                                      str r0, [r4, #4]
0059c6bc  bf ff ff 0a                                      beq #0x59c5c0
0059c6c0  07 40 9b e7                                      ldr r4, [fp, r7]
0059c6c4  ec ff ff ea                                      b #0x59c67c
0059c6c8  40 b0 9d e5                                      ldr fp, [sp, #0x40]
0059c6cc  00 70 a0 e3                                      mov r7, #0
0059c6d0  be 30 da e1                                      ldrh r3, [sl, #0xe]
0059c6d4  07 90 95 e7                                      ldr sb, [r5, r7]
0059c6d8  00 00 94 e5                                      ldr r0, [r4]
0059c6dc  06 10 a0 e1                                      mov r1, r6
0059c6e0  99 03 09 e0                                      mul sb, sb, r3
0059c6e4  a0 c9 f5 eb                                      bl #0x30ed6c
0059c6e8  09 00 88 e7                                      str r0, [r8, sb]
0059c6ec  07 20 95 e7                                      ldr r2, [r5, r7]
0059c6f0  be 30 da e1                                      ldrh r3, [sl, #0xe]
0059c6f4  04 00 94 e5                                      ldr r0, [r4, #4]
0059c6f8  06 10 a0 e1                                      mov r1, r6
0059c6fc  92 83 24 e0                                      mla r4, r2, r3, r8
0059c700  99 c9 f5 eb                                      bl #0x30ed6c
0059c704  04 70 87 e2                                      add r7, r7, #4
0059c708  0c 00 57 e3                                      cmp r7, #0xc
0059c70c  04 00 84 e5                                      str r0, [r4, #4]
0059c710  aa ff ff 0a                                      beq #0x59c5c0
0059c714  07 40 9b e7                                      ldr r4, [fp, r7]
0059c718  ec ff ff ea                                      b #0x59c6d0
0059c71c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059c720  20 00 13 e3                                      tst r3, #0x20
0059c724  0e 00 00 1a                                      bne #0x59c764
0059c728  00 30 a0 e3                                      mov r3, #0
0059c72c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059c730  c1 ff ff ea                                      b #0x59c63c
0059c734  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059c738  20 00 13 e3                                      tst r3, #0x20
0059c73c  0d 00 00 1a                                      bne #0x59c778
0059c740  00 30 a0 e3                                      mov r3, #0
0059c744  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059c748  af ff ff ea                                      b #0x59c60c
0059c74c  84 00 8d e2                                      add r0, sp, #0x84
0059c750  04 10 a0 e1                                      mov r1, r4
0059c754  43 fe ff eb                                      bl #0x59c068
0059c758  88 20 9d e5                                      ldr r2, [sp, #0x88]
0059c75c  14 20 8d e5                                      str r2, [sp, #0x14]
0059c760  24 ff ff ea                                      b #0x59c3f8
0059c764  00 30 94 e5                                      ldr r3, [r4]
0059c768  04 00 a0 e1                                      mov r0, r4
0059c76c  0f e0 a0 e1                                      mov lr, pc
0059c770  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059c774  eb ff ff ea                                      b #0x59c728
0059c778  00 30 94 e5                                      ldr r3, [r4]
0059c77c  04 00 a0 e1                                      mov r0, r4
0059c780  0f e0 a0 e1                                      mov lr, pc
0059c784  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059c788  ec ff ff ea                                      b #0x59c740
; mapping-symbol data/literal pool
0059c78c  a4 35 34 00 a0 35 34 00 94 35 34 00 90 36 34 00  .byte 0xa4, 0x35, 0x34, 0x00, 0xa0, 0x35, 0x34, 0x00, 0x94, 0x35, 0x34, 0x00, 0x90, 0x36, 0x34, 0x00
0059c79c  18 36 34 00 ec 34 34 00                          .byte 0x18, 0x36, 0x34, 0x00, 0xec, 0x34, 0x34, 0x00

; FUNCTION 0x0059c7a4, declared_size=316, range_size=316, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12scaleTCoordsERKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS_4core8vector2dIfEEj
; demangled: glitch::scene::scaleTCoords(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, glitch::core::vector2d<float> const&, unsigned int)
; decoder-mode: arm
0059c7a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059c7a8  00 30 90 e5                                      ldr r3, [r0]
0059c7ac  01 70 a0 e1                                      mov r7, r1
0059c7b0  01 10 a0 e3                                      mov r1, #1
0059c7b4  14 40 93 e5                                      ldr r4, [r3, #0x14]
0059c7b8  04 d0 4d e2                                      sub sp, sp, #4
0059c7bc  04 30 94 e5                                      ldr r3, [r4, #4]
0059c7c0  11 32 13 e0                                      ands r3, r3, r1, lsl r2
0059c7c4  36 00 00 0a                                      beq #0x59c8a4
0059c7c8  01 b0 82 e0                                      add fp, r2, r1
0059c7cc  7b b0 ef e6                                      uxtb fp, fp
0059c7d0  14 90 84 e2                                      add sb, r4, #0x14
0059c7d4  0b 82 89 e0                                      add r8, sb, fp, lsl #4
0059c7d8  ba 30 d8 e1                                      ldrh r3, [r8, #0xa]
0059c7dc  06 00 53 e3                                      cmp r3, #6
0059c7e0  08 00 00 0a                                      beq #0x59c808
0059c7e4  ec 00 9f e5                                      ldr r0, [pc, #0xec]
0059c7e8  ec 10 9f e5                                      ldr r1, [pc, #0xec]
0059c7ec  01 20 a0 e3                                      mov r2, #1
0059c7f0  00 00 8f e0                                      add r0, pc, r0
0059c7f4  40 00 80 e2                                      add r0, r0, #0x40
0059c7f8  01 10 8f e0                                      add r1, pc, r1
0059c7fc  04 d0 8d e2                                      add sp, sp, #4
0059c800  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059c804  37 b9 01 ea                                      b #0x60ace8
0059c808  bc 30 d8 e1                                      ldrh r3, [r8, #0xc]
0059c80c  02 00 53 e3                                      cmp r3, #2
0059c810  f3 ff ff 1a                                      bne #0x59c7e4
0059c814  0b 02 99 e7                                      ldr r0, [sb, fp, lsl #4]
0059c818  05 10 a0 e3                                      mov r1, #5
0059c81c  73 14 00 eb                                      bl #0x5a19f0
0059c820  08 a0 94 e5                                      ldr sl, [r4, #8]
0059c824  04 60 98 e5                                      ldr r6, [r8, #4]
0059c828  00 00 5a e3                                      cmp sl, #0
0059c82c  06 60 80 e0                                      add r6, r0, r6
0059c830  10 00 00 0a                                      beq #0x59c878
0059c834  be 50 d8 e1                                      ldrh r5, [r8, #0xe]
0059c838  00 40 a0 e3                                      mov r4, #0
0059c83c  00 00 00 ea                                      b #0x59c844
0059c840  be 50 d8 e1                                      ldrh r5, [r8, #0xe]
0059c844  94 05 05 e0                                      mul r5, r4, r5
0059c848  00 10 97 e5                                      ldr r1, [r7]
0059c84c  05 00 96 e7                                      ldr r0, [r6, r5]
0059c850  45 c9 f5 eb                                      bl #0x30ed6c
0059c854  05 00 86 e7                                      str r0, [r6, r5]
0059c858  05 50 86 e0                                      add r5, r6, r5
0059c85c  04 00 95 e5                                      ldr r0, [r5, #4]
0059c860  04 10 97 e5                                      ldr r1, [r7, #4]
0059c864  40 c9 f5 eb                                      bl #0x30ed6c
0059c868  01 40 84 e2                                      add r4, r4, #1
0059c86c  0a 00 54 e1                                      cmp r4, sl
0059c870  04 00 85 e5                                      str r0, [r5, #4]
0059c874  f1 ff ff 1a                                      bne #0x59c840
0059c878  00 00 56 e3                                      cmp r6, #0
0059c87c  08 00 00 0a                                      beq #0x59c8a4
0059c880  0b 42 99 e7                                      ldr r4, [sb, fp, lsl #4]
0059c884  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059c888  1f 20 03 e2                                      and r2, r3, #0x1f
0059c88c  01 00 52 e3                                      cmp r2, #1
0059c890  05 00 00 9a                                      bls #0x59c8ac
0059c894  01 20 42 e2                                      sub r2, r2, #1
0059c898  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059c89c  03 30 82 e1                                      orr r3, r2, r3
0059c8a0  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059c8a4  04 d0 8d e2                                      add sp, sp, #4
0059c8a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059c8ac  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059c8b0  20 00 13 e3                                      tst r3, #0x20
0059c8b4  02 00 00 1a                                      bne #0x59c8c4
0059c8b8  00 30 a0 e3                                      mov r3, #0
0059c8bc  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059c8c0  f7 ff ff ea                                      b #0x59c8a4
0059c8c4  00 30 94 e5                                      ldr r3, [r4]
0059c8c8  04 00 a0 e1                                      mov r0, r4
0059c8cc  0f e0 a0 e1                                      mov lr, pc
0059c8d0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059c8d4  f7 ff ff ea                                      b #0x59c8b8
; mapping-symbol data/literal pool
0059c8d8  90 2f 34 00 40 31 34 00                          .byte 0x90, 0x2f, 0x34, 0x00, 0x40, 0x31, 0x34, 0x00

; FUNCTION 0x0059c8e0, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12scaleTCoordsERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS_4core8vector2dIfEEj
; demangled: glitch::scene::scaleTCoords(boost::intrusive_ptr<glitch::scene::IMesh> const&, glitch::core::vector2d<float> const&, unsigned int)
; decoder-mode: arm
0059c8e0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0059c8e4  00 30 90 e5                                      ldr r3, [r0]
0059c8e8  0c d0 4d e2                                      sub sp, sp, #0xc
0059c8ec  00 60 a0 e1                                      mov r6, r0
0059c8f0  00 00 53 e3                                      cmp r3, #0
0059c8f4  01 70 a0 e1                                      mov r7, r1
0059c8f8  02 80 a0 e1                                      mov r8, r2
0059c8fc  19 00 00 0a                                      beq #0x59c968
0059c900  03 00 a0 e1                                      mov r0, r3
0059c904  00 30 93 e5                                      ldr r3, [r3]
0059c908  0f e0 a0 e1                                      mov lr, pc
0059c90c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0059c910  00 a0 50 e2                                      subs sl, r0, #0
0059c914  13 00 00 0a                                      beq #0x59c968
0059c918  00 40 a0 e3                                      mov r4, #0
0059c91c  04 50 8d e2                                      add r5, sp, #4
0059c920  00 30 96 e5                                      ldr r3, [r6]
0059c924  04 20 a0 e1                                      mov r2, r4
0059c928  05 00 a0 e1                                      mov r0, r5
0059c92c  03 10 a0 e1                                      mov r1, r3
0059c930  00 30 93 e5                                      ldr r3, [r3]
0059c934  0f e0 a0 e1                                      mov lr, pc
0059c938  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059c93c  05 00 a0 e1                                      mov r0, r5
0059c940  07 10 a0 e1                                      mov r1, r7
0059c944  08 20 a0 e1                                      mov r2, r8
0059c948  95 ff ff eb                                      bl #0x59c7a4
0059c94c  04 00 9d e5                                      ldr r0, [sp, #4]
0059c950  01 40 84 e2                                      add r4, r4, #1
0059c954  00 00 50 e3                                      cmp r0, #0
0059c958  00 00 00 0a                                      beq #0x59c960
0059c95c  08 03 f6 eb                                      bl #0x31d584
0059c960  0a 00 54 e1                                      cmp r4, sl
0059c964  ed ff ff 1a                                      bne #0x59c920
0059c968  0c d0 8d e2                                      add sp, sp, #0xc
0059c96c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0059c970, declared_size=4780, range_size=4780, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene22createMeshWithTangentsERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS_5video12IVideoDriverEbbb
; demangled: glitch::scene::createMeshWithTangents(boost::intrusive_ptr<glitch::scene::IMesh> const&, glitch::video::IVideoDriver*, bool, bool, bool)
; decoder-mode: arm
0059c970  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059c974  fc d0 4d e2                                      sub sp, sp, #0xfc
0059c978  20 51 dd e5                                      ldrb r5, [sp, #0x120]
0059c97c  24 61 dd e5                                      ldrb r6, [sp, #0x124]
0059c980  84 00 8d e5                                      str r0, [sp, #0x84]
0059c984  4c 30 8d e5                                      str r3, [sp, #0x4c]
0059c988  f4 00 8d e2                                      add r0, sp, #0xf4
0059c98c  00 30 e0 e3                                      mvn r3, #0
0059c990  11 c6 a0 e3                                      mov ip, #0x1100000
0059c994  00 c0 8d e5                                      str ip, [sp]
0059c998  01 90 a0 e1                                      mov sb, r1
0059c99c  90 50 8d e5                                      str r5, [sp, #0x90]
0059c9a0  88 60 8d e5                                      str r6, [sp, #0x88]
0059c9a4  3e fa ff eb                                      bl #0x59b2a4
0059c9a8  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
0059c9ac  84 a0 9d e5                                      ldr sl, [sp, #0x84]
0059c9b0  00 00 50 e3                                      cmp r0, #0
0059c9b4  00 00 8a e5                                      str r0, [sl]
0059c9b8  04 30 90 15                                      ldrne r3, [r0, #4]
0059c9bc  01 30 83 12                                      addne r3, r3, #1
0059c9c0  04 30 80 15                                      strne r3, [r0, #4]
0059c9c4  f4 00 9d 15                                      ldrne r0, [sp, #0xf4]
0059c9c8  00 00 50 e3                                      cmp r0, #0
0059c9cc  00 00 00 0a                                      beq #0x59c9d4
0059c9d0  eb 02 f6 eb                                      bl #0x31d584
0059c9d4  00 30 99 e5                                      ldr r3, [sb]
0059c9d8  03 00 a0 e1                                      mov r0, r3
0059c9dc  00 30 93 e5                                      ldr r3, [r3]
0059c9e0  0f e0 a0 e1                                      mov lr, pc
0059c9e4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0059c9e8  00 00 50 e3                                      cmp r0, #0
0059c9ec  40 00 8d e5                                      str r0, [sp, #0x40]
0059c9f0  44 00 00 0a                                      beq #0x59cb08
0059c9f4  8c 1b 9f e5                                      ldr r1, [pc, #0xb8c]
0059c9f8  8c 2b 9f e5                                      ldr r2, [pc, #0xb8c]
0059c9fc  8c 3b 9f e5                                      ldr r3, [pc, #0xb8c]
0059ca00  01 10 8f e0                                      add r1, pc, r1
0059ca04  02 20 8f e0                                      add r2, pc, r2
0059ca08  03 30 8f e0                                      add r3, pc, r3
0059ca0c  50 10 81 e2                                      add r1, r1, #0x50
0059ca10  50 20 82 e2                                      add r2, r2, #0x50
0059ca14  50 30 83 e2                                      add r3, r3, #0x50
0059ca18  f0 c0 8d e2                                      add ip, sp, #0xf0
0059ca1c  98 10 8d e5                                      str r1, [sp, #0x98]
0059ca20  8c 20 8d e5                                      str r2, [sp, #0x8c]
0059ca24  60 30 8d e5                                      str r3, [sp, #0x60]
0059ca28  00 60 a0 e3                                      mov r6, #0
0059ca2c  44 c0 8d e5                                      str ip, [sp, #0x44]
0059ca30  08 00 00 ea                                      b #0x59ca58
0059ca34  58 1b 9f e5                                      ldr r1, [pc, #0xb58]
0059ca38  60 00 9d e5                                      ldr r0, [sp, #0x60]
0059ca3c  01 20 a0 e3                                      mov r2, #1
0059ca40  01 10 8f e0                                      add r1, pc, r1
0059ca44  a7 b8 01 eb                                      bl #0x60ace8
0059ca48  40 30 9d e5                                      ldr r3, [sp, #0x40]
0059ca4c  01 60 86 e2                                      add r6, r6, #1
0059ca50  03 00 56 e1                                      cmp r6, r3
0059ca54  2b 00 00 0a                                      beq #0x59cb08
0059ca58  00 30 99 e5                                      ldr r3, [sb]
0059ca5c  44 00 9d e5                                      ldr r0, [sp, #0x44]
0059ca60  06 20 a0 e1                                      mov r2, r6
0059ca64  03 10 a0 e1                                      mov r1, r3
0059ca68  00 30 93 e5                                      ldr r3, [r3]
0059ca6c  0f e0 a0 e1                                      mov lr, pc
0059ca70  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059ca74  f0 50 9d e5                                      ldr r5, [sp, #0xf0]
0059ca78  00 00 55 e3                                      cmp r5, #0
0059ca7c  01 00 00 0a                                      beq #0x59ca88
0059ca80  05 00 a0 e1                                      mov r0, r5
0059ca84  be 02 f6 eb                                      bl #0x31d584
0059ca88  be 32 d5 e1                                      ldrh r3, [r5, #0x2e]
0059ca8c  06 00 53 e3                                      cmp r3, #6
0059ca90  e7 ff ff 1a                                      bne #0x59ca34
0059ca94  00 30 99 e5                                      ldr r3, [sb]
0059ca98  ec 00 8d e2                                      add r0, sp, #0xec
0059ca9c  06 20 a0 e1                                      mov r2, r6
0059caa0  03 10 a0 e1                                      mov r1, r3
0059caa4  00 30 93 e5                                      ldr r3, [r3]
0059caa8  0f e0 a0 e1                                      mov lr, pc
0059caac  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059cab0  ec 00 9d e5                                      ldr r0, [sp, #0xec]
0059cab4  14 20 90 e5                                      ldr r2, [r0, #0x14]
0059cab8  34 20 8d e5                                      str r2, [sp, #0x34]
0059cabc  b0 02 f6 eb                                      bl #0x31d584
0059cac0  34 30 9d e5                                      ldr r3, [sp, #0x34]
0059cac4  11 16 a0 e3                                      mov r1, #0x1100000
0059cac8  02 10 81 e2                                      add r1, r1, #2
0059cacc  04 20 93 e5                                      ldr r2, [r3, #4]
0059cad0  02 30 00 e3                                      movw r3, #2
0059cad4  10 31 40 e3                                      movt r3, #0x110
0059cad8  03 30 02 e0                                      and r3, r2, r3
0059cadc  01 00 53 e1                                      cmp r3, r1
0059cae0  0b 00 00 0a                                      beq #0x59cb14
0059cae4  ac 1a 9f e5                                      ldr r1, [pc, #0xaac]
0059cae8  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
0059caec  01 20 a0 e3                                      mov r2, #1
0059caf0  01 10 8f e0                                      add r1, pc, r1
0059caf4  7b b8 01 eb                                      bl #0x60ace8
0059caf8  40 30 9d e5                                      ldr r3, [sp, #0x40]
0059cafc  01 60 86 e2                                      add r6, r6, #1
0059cb00  03 00 56 e1                                      cmp r6, r3
0059cb04  d3 ff ff 1a                                      bne #0x59ca58
0059cb08  84 00 9d e5                                      ldr r0, [sp, #0x84]
0059cb0c  fc d0 8d e2                                      add sp, sp, #0xfc
0059cb10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059cb14  4c a0 9d e5                                      ldr sl, [sp, #0x4c]
0059cb18  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0059cb1c  00 00 5a e3                                      cmp sl, #0
0059cb20  14 c0 8c e2                                      add ip, ip, #0x14
0059cb24  24 c0 8d e5                                      str ip, [sp, #0x24]
0059cb28  01 00 00 0a                                      beq #0x59cb34
0059cb2c  02 08 12 e3                                      tst r2, #0x20000
0059cb30  13 00 00 1a                                      bne #0x59cb84
0059cb34  00 70 a0 e3                                      mov r7, #0
0059cb38  34 30 9d e5                                      ldr r3, [sp, #0x34]
0059cb3c  24 a0 9d e5                                      ldr sl, [sp, #0x24]
0059cb40  14 10 a0 e3                                      mov r1, #0x14
0059cb44  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
0059cb48  03 00 a0 e1                                      mov r0, r3
0059cb4c  10 30 93 e5                                      ldr r3, [r3, #0x10]
0059cb50  01 20 82 e2                                      add r2, r2, #1
0059cb54  02 22 8a e0                                      add r2, sl, r2, lsl #4
0059cb58  e4 0f 00 eb                                      bl #0x5a0af0
0059cb5c  30 00 8d e5                                      str r0, [sp, #0x30]
0059cb60  ba 30 da e1                                      ldrh r3, [sl, #0xa]
0059cb64  06 00 53 e3                                      cmp r3, #6
0059cb68  0e 00 00 0a                                      beq #0x59cba8
0059cb6c  28 1a 9f e5                                      ldr r1, [pc, #0xa28]
0059cb70  98 00 9d e5                                      ldr r0, [sp, #0x98]
0059cb74  01 20 a0 e3                                      mov r2, #1
0059cb78  01 10 8f e0                                      add r1, pc, r1
0059cb7c  59 b8 01 eb                                      bl #0x60ace8
0059cb80  b0 ff ff ea                                      b #0x59ca48
0059cb84  34 00 9d e5                                      ldr r0, [sp, #0x34]
0059cb88  11 10 a0 e3                                      mov r1, #0x11
0059cb8c  0c 20 d0 e5                                      ldrb r2, [r0, #0xc]
0059cb90  10 30 90 e5                                      ldr r3, [r0, #0x10]
0059cb94  01 20 82 e2                                      add r2, r2, #1
0059cb98  02 22 8c e0                                      add r2, ip, r2, lsl #4
0059cb9c  d3 0f 00 eb                                      bl #0x5a0af0
0059cba0  00 70 a0 e1                                      mov r7, r0
0059cba4  e3 ff ff ea                                      b #0x59cb38
0059cba8  bc 30 da e1                                      ldrh r3, [sl, #0xc]
0059cbac  03 00 53 e3                                      cmp r3, #3
0059cbb0  ed ff ff 1a                                      bne #0x59cb6c
0059cbb4  10 c0 8a e2                                      add ip, sl, #0x10
0059cbb8  64 c0 8d e5                                      str ip, [sp, #0x64]
0059cbbc  ba 30 dc e1                                      ldrh r3, [ip, #0xa]
0059cbc0  06 00 53 e3                                      cmp r3, #6
0059cbc4  e8 ff ff 1a                                      bne #0x59cb6c
0059cbc8  bc 30 dc e1                                      ldrh r3, [ip, #0xc]
0059cbcc  02 00 53 e3                                      cmp r3, #2
0059cbd0  e5 ff ff 1a                                      bne #0x59cb6c
0059cbd4  ba 30 d0 e1                                      ldrh r3, [r0, #0xa]
0059cbd8  06 00 53 e3                                      cmp r3, #6
0059cbdc  e2 ff ff 1a                                      bne #0x59cb6c
0059cbe0  bc 30 d0 e1                                      ldrh r3, [r0, #0xc]
0059cbe4  03 00 53 e3                                      cmp r3, #3
0059cbe8  df ff ff 1a                                      bne #0x59cb6c
0059cbec  10 00 80 e2                                      add r0, r0, #0x10
0059cbf0  50 00 8d e5                                      str r0, [sp, #0x50]
0059cbf4  ba 30 d0 e1                                      ldrh r3, [r0, #0xa]
0059cbf8  06 00 53 e3                                      cmp r3, #6
0059cbfc  da ff ff 1a                                      bne #0x59cb6c
0059cc00  bc 30 d0 e1                                      ldrh r3, [r0, #0xc]
0059cc04  03 00 53 e3                                      cmp r3, #3
0059cc08  d7 ff ff 1a                                      bne #0x59cb6c
0059cc0c  00 00 57 e3                                      cmp r7, #0
0059cc10  05 00 00 0a                                      beq #0x59cc2c
0059cc14  ba 30 d7 e1                                      ldrh r3, [r7, #0xa]
0059cc18  06 00 53 e3                                      cmp r3, #6
0059cc1c  d2 ff ff 1a                                      bne #0x59cb6c
0059cc20  bc 30 d7 e1                                      ldrh r3, [r7, #0xc]
0059cc24  03 00 53 e3                                      cmp r3, #3
0059cc28  cf ff ff 1a                                      bne #0x59cb6c
0059cc2c  34 a0 9d e5                                      ldr sl, [sp, #0x34]
0059cc30  05 10 a0 e3                                      mov r1, #5
0059cc34  14 00 9a e5                                      ldr r0, [sl, #0x14]
0059cc38  6c 13 00 eb                                      bl #0x5a19f0
0059cc3c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0059cc40  05 10 a0 e3                                      mov r1, #5
0059cc44  04 40 9c e5                                      ldr r4, [ip, #4]
0059cc48  04 40 80 e0                                      add r4, r0, r4
0059cc4c  10 00 9c e5                                      ldr r0, [ip, #0x10]
0059cc50  66 13 00 eb                                      bl #0x5a19f0
0059cc54  64 30 9d e5                                      ldr r3, [sp, #0x64]
0059cc58  00 00 57 e3                                      cmp r7, #0
0059cc5c  04 20 93 e5                                      ldr r2, [r3, #4]
0059cc60  00 30 a0 e3                                      mov r3, #0
0059cc64  dc 30 8d e5                                      str r3, [sp, #0xdc]
0059cc68  02 20 80 e0                                      add r2, r0, r2
0059cc6c  54 20 8d e5                                      str r2, [sp, #0x54]
0059cc70  d8 30 8d e5                                      str r3, [sp, #0xd8]
0059cc74  02 00 00 0a                                      beq #0x59cc84
0059cc78  07 10 a0 e1                                      mov r1, r7
0059cc7c  d8 00 8d e2                                      add r0, sp, #0xd8
0059cc80  d2 fc ff eb                                      bl #0x59bfd0
0059cc84  30 20 9d e5                                      ldr r2, [sp, #0x30]
0059cc88  05 10 a0 e3                                      mov r1, #5
0059cc8c  00 00 92 e5                                      ldr r0, [r2]
0059cc90  56 13 00 eb                                      bl #0x5a19f0
0059cc94  30 30 9d e5                                      ldr r3, [sp, #0x30]
0059cc98  05 10 a0 e3                                      mov r1, #5
0059cc9c  04 80 93 e5                                      ldr r8, [r3, #4]
0059cca0  08 80 80 e0                                      add r8, r0, r8
0059cca4  10 00 93 e5                                      ldr r0, [r3, #0x10]
0059cca8  50 13 00 eb                                      bl #0x5a19f0
0059ccac  50 c0 9d e5                                      ldr ip, [sp, #0x50]
0059ccb0  01 10 a0 e3                                      mov r1, #1
0059ccb4  04 a0 9c e5                                      ldr sl, [ip, #4]
0059ccb8  0a a0 80 e0                                      add sl, r0, sl
0059ccbc  18 00 95 e5                                      ldr r0, [r5, #0x18]
0059ccc0  85 13 00 eb                                      bl #0x5a1adc
0059ccc4  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0059ccc8  90 30 9d e5                                      ldr r3, [sp, #0x90]
0059cccc  02 20 80 e0                                      add r2, r0, r2
0059ccd0  00 00 53 e3                                      cmp r3, #0
0059ccd4  00 30 e0 e3                                      mvn r3, #0
0059ccd8  58 20 8d e5                                      str r2, [sp, #0x58]
0059ccdc  e0 30 8d e5                                      str r3, [sp, #0xe0]
0059cce0  e8 30 8d e5                                      str r3, [sp, #0xe8]
0059cce4  e4 30 8d e5                                      str r3, [sp, #0xe4]
0059cce8  0f 02 00 0a                                      beq #0x59d52c
0059ccec  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0059ccf0  08 c0 9c e5                                      ldr ip, [ip, #8]
0059ccf4  00 00 5c e3                                      cmp ip, #0
0059ccf8  94 c0 8d e5                                      str ip, [sp, #0x94]
0059ccfc  26 00 00 0a                                      beq #0x59cd9c
0059cd00  28 50 8d e5                                      str r5, [sp, #0x28]
0059cd04  06 b0 a0 e1                                      mov fp, r6
0059cd08  50 50 9d e5                                      ldr r5, [sp, #0x50]
0059cd0c  30 60 9d e5                                      ldr r6, [sp, #0x30]
0059cd10  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
0059cd14  20 40 8d e5                                      str r4, [sp, #0x20]
0059cd18  00 30 a0 e3                                      mov r3, #0
0059cd1c  00 20 a0 e3                                      mov r2, #0
0059cd20  0c 40 a0 e1                                      mov r4, ip
0059cd24  00 00 57 e3                                      cmp r7, #0
0059cd28  09 00 00 0a                                      beq #0x59cd54
0059cd2c  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
0059cd30  00 00 51 e3                                      cmp r1, #0
0059cd34  06 00 00 0a                                      beq #0x59cd54
0059cd38  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
0059cd3c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
0059cd40  9c 02 0c e0                                      mul ip, ip, r2
0059cd44  0c 00 81 e0                                      add r0, r1, ip
0059cd48  0c 30 81 e7                                      str r3, [r1, ip]
0059cd4c  08 30 80 e5                                      str r3, [r0, #8]
0059cd50  04 30 80 e5                                      str r3, [r0, #4]
0059cd54  be 00 d6 e1                                      ldrh r0, [r6, #0xe]
0059cd58  90 02 00 e0                                      mul r0, r0, r2
0059cd5c  00 10 88 e0                                      add r1, r8, r0
0059cd60  00 30 88 e7                                      str r3, [r8, r0]
0059cd64  08 30 81 e5                                      str r3, [r1, #8]
0059cd68  04 30 81 e5                                      str r3, [r1, #4]
0059cd6c  be 00 d5 e1                                      ldrh r0, [r5, #0xe]
0059cd70  90 02 00 e0                                      mul r0, r0, r2
0059cd74  01 20 82 e2                                      add r2, r2, #1
0059cd78  00 10 8a e0                                      add r1, sl, r0
0059cd7c  04 00 52 e1                                      cmp r2, r4
0059cd80  00 30 8a e7                                      str r3, [sl, r0]
0059cd84  08 30 81 e5                                      str r3, [r1, #8]
0059cd88  04 30 81 e5                                      str r3, [r1, #4]
0059cd8c  e4 ff ff 1a                                      bne #0x59cd24
0059cd90  20 40 9d e5                                      ldr r4, [sp, #0x20]
0059cd94  28 50 9d e5                                      ldr r5, [sp, #0x28]
0059cd98  0b 60 a0 e1                                      mov r6, fp
0059cd9c  00 30 a0 e3                                      mov r3, #0
0059cda0  b0 30 8d e5                                      str r3, [sp, #0xb0]
0059cda4  cc 30 8d e5                                      str r3, [sp, #0xcc]
0059cda8  d0 30 8d e5                                      str r3, [sp, #0xd0]
0059cdac  d4 30 8d e5                                      str r3, [sp, #0xd4]
0059cdb0  c0 30 8d e5                                      str r3, [sp, #0xc0]
0059cdb4  c4 30 8d e5                                      str r3, [sp, #0xc4]
0059cdb8  c8 30 8d e5                                      str r3, [sp, #0xc8]
0059cdbc  a8 30 8d e5                                      str r3, [sp, #0xa8]
0059cdc0  ac 30 8d e5                                      str r3, [sp, #0xac]
0059cdc4  20 00 95 e5                                      ldr r0, [r5, #0x20]
0059cdc8  00 00 50 e3                                      cmp r0, #0
0059cdcc  7c 00 8d e5                                      str r0, [sp, #0x7c]
0059cdd0  1c 03 00 0a                                      beq #0x59da48
0059cdd4  00 30 a0 e3                                      mov r3, #0
0059cdd8  e8 20 8d e2                                      add r2, sp, #0xe8
0059cddc  e0 c0 8d e2                                      add ip, sp, #0xe0
0059cde0  20 30 8d e5                                      str r3, [sp, #0x20]
0059cde4  e4 30 8d e2                                      add r3, sp, #0xe4
0059cde8  70 20 8d e5                                      str r2, [sp, #0x70]
0059cdec  6c 30 8d e5                                      str r3, [sp, #0x6c]
0059cdf0  68 c0 8d e5                                      str ip, [sp, #0x68]
0059cdf4  cc 00 8d e2                                      add r0, sp, #0xcc
0059cdf8  c0 20 8d e2                                      add r2, sp, #0xc0
0059cdfc  a8 30 8d e2                                      add r3, sp, #0xa8
0059ce00  b4 c0 8d e2                                      add ip, sp, #0xb4
0059ce04  a0 60 8d e5                                      str r6, [sp, #0xa0]
0059ce08  5c 00 8d e5                                      str r0, [sp, #0x5c]
0059ce0c  74 20 8d e5                                      str r2, [sp, #0x74]
0059ce10  78 30 8d e5                                      str r3, [sp, #0x78]
0059ce14  9c c0 8d e5                                      str ip, [sp, #0x9c]
0059ce18  80 50 8d e5                                      str r5, [sp, #0x80]
0059ce1c  54 60 9d e5                                      ldr r6, [sp, #0x54]
0059ce20  a4 90 8d e5                                      str sb, [sp, #0xa4]
0059ce24  58 01 00 ea                                      b #0x59d38c
0059ce28  64 30 9d e5                                      ldr r3, [sp, #0x64]
0059ce2c  28 20 9d e5                                      ldr r2, [sp, #0x28]
0059ce30  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0059ce34  be c0 d3 e1                                      ldrh ip, [r3, #0xe]
0059ce38  09 30 a0 e1                                      mov r3, sb
0059ce3c  38 90 9d e5                                      ldr sb, [sp, #0x38]
0059ce40  9c 67 27 e0                                      mla r7, ip, r7, r6
0059ce44  9c 69 2e e0                                      mla lr, ip, sb, r6
0059ce48  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
0059ce4c  9c 62 2c e0                                      mla ip, ip, r2, r6
0059ce50  00 90 8d e5                                      str sb, [sp]
0059ce54  48 90 9d e5                                      ldr sb, [sp, #0x48]
0059ce58  74 10 9d e5                                      ldr r1, [sp, #0x74]
0059ce5c  78 20 9d e5                                      ldr r2, [sp, #0x78]
0059ce60  0c c0 8d e5                                      str ip, [sp, #0xc]
0059ce64  04 90 8d e5                                      str sb, [sp, #4]
0059ce68  08 70 8d e5                                      str r7, [sp, #8]
0059ce6c  10 e0 8d e5                                      str lr, [sp, #0x10]
0059ce70  ea f5 ff eb                                      bl #0x59a620
0059ce74  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0059ce78  00 00 5c e3                                      cmp ip, #0
0059ce7c  20 00 00 0a                                      beq #0x59cf04
0059ce80  dc 70 9d e5                                      ldr r7, [sp, #0xdc]
0059ce84  00 00 57 e3                                      cmp r7, #0
0059ce88  1d 00 00 0a                                      beq #0x59cf04
0059ce8c  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0059ce90  e8 90 9d e5                                      ldr sb, [sp, #0xe8]
0059ce94  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
0059ce98  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
0059ce9c  05 00 a0 e1                                      mov r0, r5
0059cea0  99 03 09 e0                                      mul sb, sb, r3
0059cea4  b0 c7 f5 eb                                      bl #0x30ed6c
0059cea8  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
0059ceac  00 b0 a0 e1                                      mov fp, r0
0059ceb0  05 00 a0 e1                                      mov r0, r5
0059ceb4  ac c7 f5 eb                                      bl #0x30ed6c
0059ceb8  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
0059cebc  00 30 a0 e1                                      mov r3, r0
0059cec0  05 00 a0 e1                                      mov r0, r5
0059cec4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0059cec8  a7 c7 f5 eb                                      bl #0x30ed6c
0059cecc  00 10 a0 e1                                      mov r1, r0
0059ced0  09 00 97 e7                                      ldr r0, [r7, sb]
0059ced4  32 c7 f5 eb                                      bl #0x30eba4
0059ced8  09 00 87 e7                                      str r0, [r7, sb]
0059cedc  09 70 87 e0                                      add r7, r7, sb
0059cee0  0b 10 a0 e1                                      mov r1, fp
0059cee4  04 00 97 e5                                      ldr r0, [r7, #4]
0059cee8  2d c7 f5 eb                                      bl #0x30eba4
0059ceec  04 00 87 e5                                      str r0, [r7, #4]
0059cef0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0059cef4  08 00 97 e5                                      ldr r0, [r7, #8]
0059cef8  03 10 a0 e1                                      mov r1, r3
0059cefc  28 c7 f5 eb                                      bl #0x30eba4
0059cf00  08 00 87 e5                                      str r0, [r7, #8]
0059cf04  30 00 9d e5                                      ldr r0, [sp, #0x30]
0059cf08  e8 70 9d e5                                      ldr r7, [sp, #0xe8]
0059cf0c  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
0059cf10  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
0059cf14  05 00 a0 e1                                      mov r0, r5
0059cf18  97 03 07 e0                                      mul r7, r7, r3
0059cf1c  92 c7 f5 eb                                      bl #0x30ed6c
0059cf20  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
0059cf24  00 b0 a0 e1                                      mov fp, r0
0059cf28  05 00 a0 e1                                      mov r0, r5
0059cf2c  8e c7 f5 eb                                      bl #0x30ed6c
0059cf30  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
0059cf34  00 90 a0 e1                                      mov sb, r0
0059cf38  05 00 a0 e1                                      mov r0, r5
0059cf3c  8a c7 f5 eb                                      bl #0x30ed6c
0059cf40  00 10 a0 e1                                      mov r1, r0
0059cf44  07 00 98 e7                                      ldr r0, [r8, r7]
0059cf48  15 c7 f5 eb                                      bl #0x30eba4
0059cf4c  07 00 88 e7                                      str r0, [r8, r7]
0059cf50  07 70 88 e0                                      add r7, r8, r7
0059cf54  04 00 97 e5                                      ldr r0, [r7, #4]
0059cf58  0b 10 a0 e1                                      mov r1, fp
0059cf5c  10 c7 f5 eb                                      bl #0x30eba4
0059cf60  09 10 a0 e1                                      mov r1, sb
0059cf64  04 00 87 e5                                      str r0, [r7, #4]
0059cf68  08 00 97 e5                                      ldr r0, [r7, #8]
0059cf6c  0c c7 f5 eb                                      bl #0x30eba4
0059cf70  08 00 87 e5                                      str r0, [r7, #8]
0059cf74  50 20 9d e5                                      ldr r2, [sp, #0x50]
0059cf78  e8 70 9d e5                                      ldr r7, [sp, #0xe8]
0059cf7c  ac 10 9d e5                                      ldr r1, [sp, #0xac]
0059cf80  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
0059cf84  05 00 a0 e1                                      mov r0, r5
0059cf88  97 03 07 e0                                      mul r7, r7, r3
0059cf8c  76 c7 f5 eb                                      bl #0x30ed6c
0059cf90  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
0059cf94  00 b0 a0 e1                                      mov fp, r0
0059cf98  05 00 a0 e1                                      mov r0, r5
0059cf9c  72 c7 f5 eb                                      bl #0x30ed6c
0059cfa0  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0059cfa4  00 90 a0 e1                                      mov sb, r0
0059cfa8  05 00 a0 e1                                      mov r0, r5
0059cfac  6e c7 f5 eb                                      bl #0x30ed6c
0059cfb0  00 10 a0 e1                                      mov r1, r0
0059cfb4  07 00 9a e7                                      ldr r0, [sl, r7]
0059cfb8  f9 c6 f5 eb                                      bl #0x30eba4
0059cfbc  07 00 8a e7                                      str r0, [sl, r7]
0059cfc0  07 70 8a e0                                      add r7, sl, r7
0059cfc4  04 00 97 e5                                      ldr r0, [r7, #4]
0059cfc8  0b 10 a0 e1                                      mov r1, fp
0059cfcc  f4 c6 f5 eb                                      bl #0x30eba4
0059cfd0  09 10 a0 e1                                      mov r1, sb
0059cfd4  04 00 87 e5                                      str r0, [r7, #4]
0059cfd8  08 00 97 e5                                      ldr r0, [r7, #8]
0059cfdc  f0 c6 f5 eb                                      bl #0x30eba4
0059cfe0  08 00 87 e5                                      str r0, [r7, #8]
0059cfe4  24 90 9d e5                                      ldr sb, [sp, #0x24]
0059cfe8  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0059cfec  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
0059cff0  be 30 d9 e1                                      ldrh r3, [sb, #0xe]
0059cff4  e0 e0 9d e5                                      ldr lr, [sp, #0xe0]
0059cff8  be 90 dc e1                                      ldrh sb, [ip, #0xe]
0059cffc  e8 c0 9d e5                                      ldr ip, [sp, #0xe8]
0059d000  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0059d004  92 69 27 e0                                      mla r7, r2, sb, r6
0059d008  9c 69 2b e0                                      mla fp, ip, sb, r6
0059d00c  9c 43 2c e0                                      mla ip, ip, r3, r4
0059d010  9e 69 29 e0                                      mla sb, lr, sb, r6
0059d014  9e 43 2e e0                                      mla lr, lr, r3, r4
0059d018  74 10 9d e5                                      ldr r1, [sp, #0x74]
0059d01c  92 43 23 e0                                      mla r3, r2, r3, r4
0059d020  78 20 9d e5                                      ldr r2, [sp, #0x78]
0059d024  00 e0 8d e5                                      str lr, [sp]
0059d028  04 c0 8d e5                                      str ip, [sp, #4]
0059d02c  08 70 8d e5                                      str r7, [sp, #8]
0059d030  0c 90 8d e5                                      str sb, [sp, #0xc]
0059d034  10 b0 8d e5                                      str fp, [sp, #0x10]
0059d038  78 f5 ff eb                                      bl #0x59a620
0059d03c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0059d040  00 00 50 e3                                      cmp r0, #0
0059d044  20 00 00 0a                                      beq #0x59d0cc
0059d048  dc 70 9d e5                                      ldr r7, [sp, #0xdc]
0059d04c  00 00 57 e3                                      cmp r7, #0
0059d050  1d 00 00 0a                                      beq #0x59d0cc
0059d054  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0059d058  e4 90 9d e5                                      ldr sb, [sp, #0xe4]
0059d05c  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
0059d060  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
0059d064  05 00 a0 e1                                      mov r0, r5
0059d068  99 03 09 e0                                      mul sb, sb, r3
0059d06c  3e c7 f5 eb                                      bl #0x30ed6c
0059d070  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
0059d074  00 b0 a0 e1                                      mov fp, r0
0059d078  05 00 a0 e1                                      mov r0, r5
0059d07c  3a c7 f5 eb                                      bl #0x30ed6c
0059d080  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
0059d084  00 30 a0 e1                                      mov r3, r0
0059d088  05 00 a0 e1                                      mov r0, r5
0059d08c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0059d090  35 c7 f5 eb                                      bl #0x30ed6c
0059d094  00 10 a0 e1                                      mov r1, r0
0059d098  09 00 97 e7                                      ldr r0, [r7, sb]
0059d09c  c0 c6 f5 eb                                      bl #0x30eba4
0059d0a0  09 00 87 e7                                      str r0, [r7, sb]
0059d0a4  09 70 87 e0                                      add r7, r7, sb
0059d0a8  0b 10 a0 e1                                      mov r1, fp
0059d0ac  04 00 97 e5                                      ldr r0, [r7, #4]
0059d0b0  bb c6 f5 eb                                      bl #0x30eba4
0059d0b4  04 00 87 e5                                      str r0, [r7, #4]
0059d0b8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0059d0bc  08 00 97 e5                                      ldr r0, [r7, #8]
0059d0c0  03 10 a0 e1                                      mov r1, r3
0059d0c4  b6 c6 f5 eb                                      bl #0x30eba4
0059d0c8  08 00 87 e5                                      str r0, [r7, #8]
0059d0cc  30 20 9d e5                                      ldr r2, [sp, #0x30]
0059d0d0  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
0059d0d4  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
0059d0d8  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
0059d0dc  05 00 a0 e1                                      mov r0, r5
0059d0e0  97 03 07 e0                                      mul r7, r7, r3
0059d0e4  20 c7 f5 eb                                      bl #0x30ed6c
0059d0e8  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
0059d0ec  00 b0 a0 e1                                      mov fp, r0
0059d0f0  05 00 a0 e1                                      mov r0, r5
0059d0f4  1c c7 f5 eb                                      bl #0x30ed6c
0059d0f8  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
0059d0fc  00 90 a0 e1                                      mov sb, r0
0059d100  05 00 a0 e1                                      mov r0, r5
0059d104  18 c7 f5 eb                                      bl #0x30ed6c
0059d108  00 10 a0 e1                                      mov r1, r0
0059d10c  07 00 98 e7                                      ldr r0, [r8, r7]
0059d110  a3 c6 f5 eb                                      bl #0x30eba4
0059d114  07 00 88 e7                                      str r0, [r8, r7]
0059d118  07 70 88 e0                                      add r7, r8, r7
0059d11c  04 00 97 e5                                      ldr r0, [r7, #4]
0059d120  0b 10 a0 e1                                      mov r1, fp
0059d124  9e c6 f5 eb                                      bl #0x30eba4
0059d128  09 10 a0 e1                                      mov r1, sb
0059d12c  04 00 87 e5                                      str r0, [r7, #4]
0059d130  08 00 97 e5                                      ldr r0, [r7, #8]
0059d134  9a c6 f5 eb                                      bl #0x30eba4
0059d138  08 00 87 e5                                      str r0, [r7, #8]
0059d13c  50 90 9d e5                                      ldr sb, [sp, #0x50]
0059d140  e4 70 9d e5                                      ldr r7, [sp, #0xe4]
0059d144  ac 10 9d e5                                      ldr r1, [sp, #0xac]
0059d148  be 30 d9 e1                                      ldrh r3, [sb, #0xe]
0059d14c  05 00 a0 e1                                      mov r0, r5
0059d150  97 03 07 e0                                      mul r7, r7, r3
0059d154  04 c7 f5 eb                                      bl #0x30ed6c
0059d158  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
0059d15c  00 b0 a0 e1                                      mov fp, r0
0059d160  05 00 a0 e1                                      mov r0, r5
0059d164  00 c7 f5 eb                                      bl #0x30ed6c
0059d168  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0059d16c  00 90 a0 e1                                      mov sb, r0
0059d170  05 00 a0 e1                                      mov r0, r5
0059d174  fc c6 f5 eb                                      bl #0x30ed6c
0059d178  00 10 a0 e1                                      mov r1, r0
0059d17c  07 00 9a e7                                      ldr r0, [sl, r7]
0059d180  87 c6 f5 eb                                      bl #0x30eba4
0059d184  07 00 8a e7                                      str r0, [sl, r7]
0059d188  07 70 8a e0                                      add r7, sl, r7
0059d18c  04 00 97 e5                                      ldr r0, [r7, #4]
0059d190  0b 10 a0 e1                                      mov r1, fp
0059d194  82 c6 f5 eb                                      bl #0x30eba4
0059d198  09 10 a0 e1                                      mov r1, sb
0059d19c  04 00 87 e5                                      str r0, [r7, #4]
0059d1a0  08 00 97 e5                                      ldr r0, [r7, #8]
0059d1a4  7e c6 f5 eb                                      bl #0x30eba4
0059d1a8  08 00 87 e5                                      str r0, [r7, #8]
0059d1ac  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0059d1b0  64 00 9d e5                                      ldr r0, [sp, #0x64]
0059d1b4  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
0059d1b8  be 30 dc e1                                      ldrh r3, [ip, #0xe]
0059d1bc  be 90 d0 e1                                      ldrh sb, [r0, #0xe]
0059d1c0  e8 e0 9d e5                                      ldr lr, [sp, #0xe8]
0059d1c4  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
0059d1c8  92 69 27 e0                                      mla r7, r2, sb, r6
0059d1cc  9c 69 2b e0                                      mla fp, ip, sb, r6
0059d1d0  9c 43 2c e0                                      mla ip, ip, r3, r4
0059d1d4  9e 69 29 e0                                      mla sb, lr, sb, r6
0059d1d8  9e 43 2e e0                                      mla lr, lr, r3, r4
0059d1dc  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0059d1e0  92 43 23 e0                                      mla r3, r2, r3, r4
0059d1e4  74 10 9d e5                                      ldr r1, [sp, #0x74]
0059d1e8  78 20 9d e5                                      ldr r2, [sp, #0x78]
0059d1ec  00 e0 8d e5                                      str lr, [sp]
0059d1f0  04 c0 8d e5                                      str ip, [sp, #4]
0059d1f4  08 70 8d e5                                      str r7, [sp, #8]
0059d1f8  0c 90 8d e5                                      str sb, [sp, #0xc]
0059d1fc  10 b0 8d e5                                      str fp, [sp, #0x10]
0059d200  06 f5 ff eb                                      bl #0x59a620
0059d204  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0059d208  00 00 52 e3                                      cmp r2, #0
0059d20c  20 00 00 0a                                      beq #0x59d294
0059d210  dc 70 9d e5                                      ldr r7, [sp, #0xdc]
0059d214  00 00 57 e3                                      cmp r7, #0
0059d218  1d 00 00 0a                                      beq #0x59d294
0059d21c  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0059d220  e0 90 9d e5                                      ldr sb, [sp, #0xe0]
0059d224  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
0059d228  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
0059d22c  05 00 a0 e1                                      mov r0, r5
0059d230  99 03 09 e0                                      mul sb, sb, r3
0059d234  cc c6 f5 eb                                      bl #0x30ed6c
0059d238  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
0059d23c  00 b0 a0 e1                                      mov fp, r0
0059d240  05 00 a0 e1                                      mov r0, r5
0059d244  c8 c6 f5 eb                                      bl #0x30ed6c
0059d248  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
0059d24c  00 30 a0 e1                                      mov r3, r0
0059d250  05 00 a0 e1                                      mov r0, r5
0059d254  1c 30 8d e5                                      str r3, [sp, #0x1c]
0059d258  c3 c6 f5 eb                                      bl #0x30ed6c
0059d25c  00 10 a0 e1                                      mov r1, r0
0059d260  09 00 97 e7                                      ldr r0, [r7, sb]
0059d264  4e c6 f5 eb                                      bl #0x30eba4
0059d268  09 00 87 e7                                      str r0, [r7, sb]
0059d26c  09 70 87 e0                                      add r7, r7, sb
0059d270  0b 10 a0 e1                                      mov r1, fp
0059d274  04 00 97 e5                                      ldr r0, [r7, #4]
0059d278  49 c6 f5 eb                                      bl #0x30eba4
0059d27c  04 00 87 e5                                      str r0, [r7, #4]
0059d280  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0059d284  08 00 97 e5                                      ldr r0, [r7, #8]
0059d288  03 10 a0 e1                                      mov r1, r3
0059d28c  44 c6 f5 eb                                      bl #0x30eba4
0059d290  08 00 87 e5                                      str r0, [r7, #8]
0059d294  30 90 9d e5                                      ldr sb, [sp, #0x30]
0059d298  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
0059d29c  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
0059d2a0  be 30 d9 e1                                      ldrh r3, [sb, #0xe]
0059d2a4  05 00 a0 e1                                      mov r0, r5
0059d2a8  97 03 07 e0                                      mul r7, r7, r3
0059d2ac  ae c6 f5 eb                                      bl #0x30ed6c
0059d2b0  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
0059d2b4  00 b0 a0 e1                                      mov fp, r0
0059d2b8  05 00 a0 e1                                      mov r0, r5
0059d2bc  aa c6 f5 eb                                      bl #0x30ed6c
0059d2c0  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
0059d2c4  00 90 a0 e1                                      mov sb, r0
0059d2c8  05 00 a0 e1                                      mov r0, r5
0059d2cc  a6 c6 f5 eb                                      bl #0x30ed6c
0059d2d0  00 10 a0 e1                                      mov r1, r0
0059d2d4  07 00 98 e7                                      ldr r0, [r8, r7]
0059d2d8  31 c6 f5 eb                                      bl #0x30eba4
0059d2dc  07 00 88 e7                                      str r0, [r8, r7]
0059d2e0  07 70 88 e0                                      add r7, r8, r7
0059d2e4  04 00 97 e5                                      ldr r0, [r7, #4]
0059d2e8  0b 10 a0 e1                                      mov r1, fp
0059d2ec  2c c6 f5 eb                                      bl #0x30eba4
0059d2f0  09 10 a0 e1                                      mov r1, sb
0059d2f4  04 00 87 e5                                      str r0, [r7, #4]
0059d2f8  08 00 97 e5                                      ldr r0, [r7, #8]
0059d2fc  28 c6 f5 eb                                      bl #0x30eba4
0059d300  08 00 87 e5                                      str r0, [r7, #8]
0059d304  50 c0 9d e5                                      ldr ip, [sp, #0x50]
0059d308  e0 70 9d e5                                      ldr r7, [sp, #0xe0]
0059d30c  ac 10 9d e5                                      ldr r1, [sp, #0xac]
0059d310  be 30 dc e1                                      ldrh r3, [ip, #0xe]
0059d314  05 00 a0 e1                                      mov r0, r5
0059d318  97 03 07 e0                                      mul r7, r7, r3
0059d31c  92 c6 f5 eb                                      bl #0x30ed6c
0059d320  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
0059d324  00 b0 a0 e1                                      mov fp, r0
0059d328  05 00 a0 e1                                      mov r0, r5
0059d32c  8e c6 f5 eb                                      bl #0x30ed6c
0059d330  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0059d334  00 90 a0 e1                                      mov sb, r0
0059d338  05 00 a0 e1                                      mov r0, r5
0059d33c  8a c6 f5 eb                                      bl #0x30ed6c
0059d340  00 10 a0 e1                                      mov r1, r0
0059d344  07 00 9a e7                                      ldr r0, [sl, r7]
0059d348  15 c6 f5 eb                                      bl #0x30eba4
0059d34c  07 00 8a e7                                      str r0, [sl, r7]
0059d350  07 70 8a e0                                      add r7, sl, r7
0059d354  0b 10 a0 e1                                      mov r1, fp
0059d358  04 00 97 e5                                      ldr r0, [r7, #4]
0059d35c  10 c6 f5 eb                                      bl #0x30eba4
0059d360  09 10 a0 e1                                      mov r1, sb
0059d364  04 00 87 e5                                      str r0, [r7, #4]
0059d368  08 00 97 e5                                      ldr r0, [r7, #8]
0059d36c  0c c6 f5 eb                                      bl #0x30eba4
0059d370  08 00 87 e5                                      str r0, [r7, #8]
0059d374  20 00 9d e5                                      ldr r0, [sp, #0x20]
0059d378  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
0059d37c  01 00 80 e2                                      add r0, r0, #1
0059d380  02 00 50 e1                                      cmp r0, r2
0059d384  20 00 8d e5                                      str r0, [sp, #0x20]
0059d388  ab 01 00 0a                                      beq #0x59da3c
0059d38c  80 20 9d e5                                      ldr r2, [sp, #0x80]
0059d390  6c 50 9d e5                                      ldr r5, [sp, #0x6c]
0059d394  68 90 9d e5                                      ldr sb, [sp, #0x68]
0059d398  bc 02 d2 e1                                      ldrh r0, [r2, #0x2c]
0059d39c  58 10 9d e5                                      ldr r1, [sp, #0x58]
0059d3a0  20 20 9d e5                                      ldr r2, [sp, #0x20]
0059d3a4  70 30 9d e5                                      ldr r3, [sp, #0x70]
0059d3a8  20 02 8d e8                                      stm sp, {r5, sb}
0059d3ac  3c f3 ff eb                                      bl #0x59a0a4
0059d3b0  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0059d3b4  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
0059d3b8  e8 70 9d e5                                      ldr r7, [sp, #0xe8]
0059d3bc  be 50 dc e1                                      ldrh r5, [ip, #0xe]
0059d3c0  28 00 8d e5                                      str r0, [sp, #0x28]
0059d3c4  90 05 03 e0                                      mul r3, r0, r5
0059d3c8  97 05 09 e0                                      mul sb, r7, r5
0059d3cc  03 20 94 e7                                      ldr r2, [r4, r3]
0059d3d0  09 b0 94 e7                                      ldr fp, [r4, sb]
0059d3d4  03 30 84 e0                                      add r3, r4, r3
0059d3d8  02 10 a0 e1                                      mov r1, r2
0059d3dc  0b 00 a0 e1                                      mov r0, fp
0059d3e0  3c 20 8d e5                                      str r2, [sp, #0x3c]
0059d3e4  2c 30 8d e5                                      str r3, [sp, #0x2c]
0059d3e8  e7 c2 f5 eb                                      bl #0x30df8c
0059d3ec  00 00 50 e3                                      cmp r0, #0
0059d3f0  09 90 84 e0                                      add sb, r4, sb
0059d3f4  0b 00 00 0a                                      beq #0x59d428
0059d3f8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0059d3fc  04 00 99 e5                                      ldr r0, [sb, #4]
0059d400  04 10 93 e5                                      ldr r1, [r3, #4]
0059d404  e0 c2 f5 eb                                      bl #0x30df8c
0059d408  00 00 50 e3                                      cmp r0, #0
0059d40c  05 00 00 0a                                      beq #0x59d428
0059d410  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0059d414  08 00 99 e5                                      ldr r0, [sb, #8]
0059d418  08 10 9c e5                                      ldr r1, [ip, #8]
0059d41c  da c2 f5 eb                                      bl #0x30df8c
0059d420  00 00 50 e3                                      cmp r0, #0
0059d424  d2 ff ff 1a                                      bne #0x59d374
0059d428  e0 c0 9d e5                                      ldr ip, [sp, #0xe0]
0059d42c  0b 00 a0 e1                                      mov r0, fp
0059d430  9c 05 05 e0                                      mul r5, ip, r5
0059d434  38 c0 8d e5                                      str ip, [sp, #0x38]
0059d438  05 b0 94 e7                                      ldr fp, [r4, r5]
0059d43c  05 50 84 e0                                      add r5, r4, r5
0059d440  48 50 8d e5                                      str r5, [sp, #0x48]
0059d444  0b 10 a0 e1                                      mov r1, fp
0059d448  cf c2 f5 eb                                      bl #0x30df8c
0059d44c  00 00 50 e3                                      cmp r0, #0
0059d450  0b 00 00 0a                                      beq #0x59d484
0059d454  48 20 9d e5                                      ldr r2, [sp, #0x48]
0059d458  04 00 99 e5                                      ldr r0, [sb, #4]
0059d45c  04 10 92 e5                                      ldr r1, [r2, #4]
0059d460  c9 c2 f5 eb                                      bl #0x30df8c
0059d464  00 00 50 e3                                      cmp r0, #0
0059d468  05 00 00 0a                                      beq #0x59d484
0059d46c  48 30 9d e5                                      ldr r3, [sp, #0x48]
0059d470  08 00 99 e5                                      ldr r0, [sb, #8]
0059d474  08 10 93 e5                                      ldr r1, [r3, #8]
0059d478  c3 c2 f5 eb                                      bl #0x30df8c
0059d47c  00 00 50 e3                                      cmp r0, #0
0059d480  bb ff ff 1a                                      bne #0x59d374
0059d484  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0059d488  0b 10 a0 e1                                      mov r1, fp
0059d48c  be c2 f5 eb                                      bl #0x30df8c
0059d490  00 00 50 e3                                      cmp r0, #0
0059d494  0d 00 00 0a                                      beq #0x59d4d0
0059d498  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0059d49c  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
0059d4a0  04 10 9c e5                                      ldr r1, [ip, #4]
0059d4a4  04 00 95 e5                                      ldr r0, [r5, #4]
0059d4a8  b7 c2 f5 eb                                      bl #0x30df8c
0059d4ac  00 00 50 e3                                      cmp r0, #0
0059d4b0  06 00 00 0a                                      beq #0x59d4d0
0059d4b4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0059d4b8  48 30 9d e5                                      ldr r3, [sp, #0x48]
0059d4bc  08 00 92 e5                                      ldr r0, [r2, #8]
0059d4c0  08 10 93 e5                                      ldr r1, [r3, #8]
0059d4c4  b0 c2 f5 eb                                      bl #0x30df8c
0059d4c8  00 00 50 e3                                      cmp r0, #0
0059d4cc  a8 ff ff 1a                                      bne #0x59d374
0059d4d0  88 50 9d e5                                      ldr r5, [sp, #0x88]
0059d4d4  00 00 55 e3                                      cmp r5, #0
0059d4d8  fe 55 a0 03                                      moveq r5, #0x3f800000
0059d4dc  51 fe ff 0a                                      beq #0x59ce28
0059d4e0  09 10 a0 e1                                      mov r1, sb
0059d4e4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0059d4e8  48 30 9d e5                                      ldr r3, [sp, #0x48]
0059d4ec  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
0059d4f0  4c f5 ff eb                                      bl #0x59aa28
0059d4f4  24 90 9d e5                                      ldr sb, [sp, #0x24]
0059d4f8  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
0059d4fc  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
0059d500  be 30 d9 e1                                      ldrh r3, [sb, #0xe]
0059d504  e8 70 9d e5                                      ldr r7, [sp, #0xe8]
0059d508  28 c0 8d e5                                      str ip, [sp, #0x28]
0059d50c  90 43 22 e0                                      mla r2, r0, r3, r4
0059d510  97 43 29 e0                                      mla sb, r7, r3, r4
0059d514  9c 43 23 e0                                      mla r3, ip, r3, r4
0059d518  38 00 8d e5                                      str r0, [sp, #0x38]
0059d51c  b4 50 9d e5                                      ldr r5, [sp, #0xb4]
0059d520  48 20 8d e5                                      str r2, [sp, #0x48]
0059d524  2c 30 8d e5                                      str r3, [sp, #0x2c]
0059d528  3e fe ff ea                                      b #0x59ce28
0059d52c  00 30 a0 e3                                      mov r3, #0
0059d530  b0 30 8d e5                                      str r3, [sp, #0xb0]
0059d534  a8 30 8d e5                                      str r3, [sp, #0xa8]
0059d538  ac 30 8d e5                                      str r3, [sp, #0xac]
0059d53c  20 20 95 e5                                      ldr r2, [r5, #0x20]
0059d540  00 00 52 e3                                      cmp r2, #0
0059d544  2c 20 8d e5                                      str r2, [sp, #0x2c]
0059d548  ed 00 00 0a                                      beq #0x59d904
0059d54c  e8 30 8d e2                                      add r3, sp, #0xe8
0059d550  e4 c0 8d e2                                      add ip, sp, #0xe4
0059d554  e0 00 8d e2                                      add r0, sp, #0xe0
0059d558  a8 20 8d e2                                      add r2, sp, #0xa8
0059d55c  90 70 9d e5                                      ldr r7, [sp, #0x90]
0059d560  70 30 8d e5                                      str r3, [sp, #0x70]
0059d564  6c c0 8d e5                                      str ip, [sp, #0x6c]
0059d568  68 00 8d e5                                      str r0, [sp, #0x68]
0059d56c  5c 20 8d e5                                      str r2, [sp, #0x5c]
0059d570  3c a0 8d e5                                      str sl, [sp, #0x3c]
0059d574  48 80 8d e5                                      str r8, [sp, #0x48]
0059d578  38 50 8d e5                                      str r5, [sp, #0x38]
0059d57c  74 60 8d e5                                      str r6, [sp, #0x74]
0059d580  78 90 8d e5                                      str sb, [sp, #0x78]
0059d584  8a 00 00 ea                                      b #0x59d7b4
; mapping-symbol data/literal pool
0059d588  80 2d 34 00 7c 2d 34 00 78 2d 34 00 30 2f 34 00  .byte 0x80, 0x2d, 0x34, 0x00, 0x7c, 0x2d, 0x34, 0x00, 0x78, 0x2d, 0x34, 0x00, 0x30, 0x2f, 0x34, 0x00
0059d598  b0 2e 34 00 78 2e 34 00                          .byte 0xb0, 0x2e, 0x34, 0x00, 0x78, 0x2e, 0x34, 0x00
; decoder-mode: arm
0059d5a0  64 30 9d e5                                      ldr r3, [sp, #0x64]
0059d5a4  30 90 9d e5                                      ldr sb, [sp, #0x30]
0059d5a8  50 a0 9d e5                                      ldr sl, [sp, #0x50]
0059d5ac  be c0 d3 e1                                      ldrh ip, [r3, #0xe]
0059d5b0  be 10 d9 e1                                      ldrh r1, [sb, #0xe]
0059d5b4  be 20 da e1                                      ldrh r2, [sl, #0xe]
0059d5b8  54 30 9d e5                                      ldr r3, [sp, #0x54]
0059d5bc  28 00 9d e5                                      ldr r0, [sp, #0x28]
0059d5c0  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
0059d5c4  48 a0 9d e5                                      ldr sl, [sp, #0x48]
0059d5c8  90 3c 2e e0                                      mla lr, r0, ip, r3
0059d5cc  9b 3c 2b e0                                      mla fp, fp, ip, r3
0059d5d0  95 92 22 e0                                      mla r2, r5, r2, sb
0059d5d4  95 3c 2c e0                                      mla ip, r5, ip, r3
0059d5d8  95 a1 21 e0                                      mla r1, r5, r1, sl
0059d5dc  20 50 9d e5                                      ldr r5, [sp, #0x20]
0059d5e0  06 30 a0 e1                                      mov r3, r6
0059d5e4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0059d5e8  20 11 8d e8                                      stm sp, {r5, r8, ip}
0059d5ec  0c b0 8d e5                                      str fp, [sp, #0xc]
0059d5f0  10 e0 8d e5                                      str lr, [sp, #0x10]
0059d5f4  09 f4 ff eb                                      bl #0x59a620
0059d5f8  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
0059d5fc  00 00 56 e3                                      cmp r6, #0
0059d600  0d 00 00 0a                                      beq #0x59d63c
0059d604  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
0059d608  00 00 53 e3                                      cmp r3, #0
0059d60c  0a 00 00 0a                                      beq #0x59d63c
0059d610  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
0059d614  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
0059d618  be 20 d2 e1                                      ldrh r2, [r2, #0xe]
0059d61c  91 02 02 e0                                      mul r2, r1, r2
0059d620  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0059d624  02 10 83 e7                                      str r1, [r3, r2]
0059d628  02 20 83 e0                                      add r2, r3, r2
0059d62c  ac 30 9d e5                                      ldr r3, [sp, #0xac]
0059d630  04 30 82 e5                                      str r3, [r2, #4]
0059d634  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0059d638  08 30 82 e5                                      str r3, [r2, #8]
0059d63c  24 a0 9d e5                                      ldr sl, [sp, #0x24]
0059d640  64 00 9d e5                                      ldr r0, [sp, #0x64]
0059d644  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
0059d648  be 30 da e1                                      ldrh r3, [sl, #0xe]
0059d64c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
0059d650  54 a0 9d e5                                      ldr sl, [sp, #0x54]
0059d654  e0 50 9d e5                                      ldr r5, [sp, #0xe0]
0059d658  e8 e0 9d e5                                      ldr lr, [sp, #0xe8]
0059d65c  30 60 9d e5                                      ldr r6, [sp, #0x30]
0059d660  50 90 9d e5                                      ldr sb, [sp, #0x50]
0059d664  9e ac 28 e0                                      mla r8, lr, ip, sl
0059d668  be 00 d9 e1                                      ldrh r0, [sb, #0xe]
0059d66c  be 10 d6 e1                                      ldrh r1, [r6, #0xe]
0059d670  48 90 9d e5                                      ldr sb, [sp, #0x48]
0059d674  95 ac 26 e0                                      mla r6, r5, ip, sl
0059d678  92 ac 2c e0                                      mla ip, r2, ip, sl
0059d67c  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
0059d680  9e 43 2e e0                                      mla lr, lr, r3, r4
0059d684  95 43 25 e0                                      mla r5, r5, r3, r4
0059d688  92 91 21 e0                                      mla r1, r2, r1, sb
0059d68c  92 43 23 e0                                      mla r3, r2, r3, r4
0059d690  92 a0 22 e0                                      mla r2, r2, r0, sl
0059d694  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0059d698  08 c0 8d e5                                      str ip, [sp, #8]
0059d69c  20 40 8d e8                                      stm sp, {r5, lr}
0059d6a0  0c 60 8d e5                                      str r6, [sp, #0xc]
0059d6a4  10 80 8d e5                                      str r8, [sp, #0x10]
0059d6a8  dc f3 ff eb                                      bl #0x59a620
0059d6ac  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0059d6b0  00 00 5c e3                                      cmp ip, #0
0059d6b4  0d 00 00 0a                                      beq #0x59d6f0
0059d6b8  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
0059d6bc  00 00 53 e3                                      cmp r3, #0
0059d6c0  0a 00 00 0a                                      beq #0x59d6f0
0059d6c4  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
0059d6c8  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
0059d6cc  be 20 d2 e1                                      ldrh r2, [r2, #0xe]
0059d6d0  91 02 02 e0                                      mul r2, r1, r2
0059d6d4  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0059d6d8  02 10 83 e7                                      str r1, [r3, r2]
0059d6dc  02 20 83 e0                                      add r2, r3, r2
0059d6e0  ac 30 9d e5                                      ldr r3, [sp, #0xac]
0059d6e4  04 30 82 e5                                      str r3, [r2, #4]
0059d6e8  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0059d6ec  08 30 82 e5                                      str r3, [r2, #8]
0059d6f0  64 20 9d e5                                      ldr r2, [sp, #0x64]
0059d6f4  24 00 9d e5                                      ldr r0, [sp, #0x24]
0059d6f8  54 a0 9d e5                                      ldr sl, [sp, #0x54]
0059d6fc  be c0 d2 e1                                      ldrh ip, [r2, #0xe]
0059d700  e8 50 9d e5                                      ldr r5, [sp, #0xe8]
0059d704  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
0059d708  e4 e0 9d e5                                      ldr lr, [sp, #0xe4]
0059d70c  30 60 9d e5                                      ldr r6, [sp, #0x30]
0059d710  50 90 9d e5                                      ldr sb, [sp, #0x50]
0059d714  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
0059d718  be 10 d6 e1                                      ldrh r1, [r6, #0xe]
0059d71c  be 00 d9 e1                                      ldrh r0, [sb, #0xe]
0059d720  9e ac 28 e0                                      mla r8, lr, ip, sl
0059d724  95 ac 26 e0                                      mla r6, r5, ip, sl
0059d728  48 90 9d e5                                      ldr sb, [sp, #0x48]
0059d72c  92 ac 2c e0                                      mla ip, r2, ip, sl
0059d730  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
0059d734  9e 43 2e e0                                      mla lr, lr, r3, r4
0059d738  95 43 25 e0                                      mla r5, r5, r3, r4
0059d73c  92 91 21 e0                                      mla r1, r2, r1, sb
0059d740  92 43 23 e0                                      mla r3, r2, r3, r4
0059d744  92 a0 22 e0                                      mla r2, r2, r0, sl
0059d748  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0059d74c  08 c0 8d e5                                      str ip, [sp, #8]
0059d750  20 40 8d e8                                      stm sp, {r5, lr}
0059d754  0c 60 8d e5                                      str r6, [sp, #0xc]
0059d758  10 80 8d e5                                      str r8, [sp, #0x10]
0059d75c  af f3 ff eb                                      bl #0x59a620
0059d760  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0059d764  00 00 5c e3                                      cmp ip, #0
0059d768  0d 00 00 0a                                      beq #0x59d7a4
0059d76c  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
0059d770  00 00 53 e3                                      cmp r3, #0
0059d774  0a 00 00 0a                                      beq #0x59d7a4
0059d778  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
0059d77c  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
0059d780  be 20 d2 e1                                      ldrh r2, [r2, #0xe]
0059d784  91 02 02 e0                                      mul r2, r1, r2
0059d788  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0059d78c  02 10 83 e7                                      str r1, [r3, r2]
0059d790  02 20 83 e0                                      add r2, r3, r2
0059d794  ac 30 9d e5                                      ldr r3, [sp, #0xac]
0059d798  04 30 82 e5                                      str r3, [r2, #4]
0059d79c  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0059d7a0  08 30 82 e5                                      str r3, [r2, #8]
0059d7a4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0059d7a8  01 70 87 e2                                      add r7, r7, #1
0059d7ac  00 00 57 e1                                      cmp r7, r0
0059d7b0  4e 00 00 0a                                      beq #0x59d8f0
0059d7b4  38 30 9d e5                                      ldr r3, [sp, #0x38]
0059d7b8  6c 50 9d e5                                      ldr r5, [sp, #0x6c]
0059d7bc  68 60 9d e5                                      ldr r6, [sp, #0x68]
0059d7c0  bc 02 d3 e1                                      ldrh r0, [r3, #0x2c]
0059d7c4  58 10 9d e5                                      ldr r1, [sp, #0x58]
0059d7c8  07 20 a0 e1                                      mov r2, r7
0059d7cc  70 30 9d e5                                      ldr r3, [sp, #0x70]
0059d7d0  60 00 8d e8                                      stm sp, {r5, r6}
0059d7d4  32 f2 ff eb                                      bl #0x59a0a4
0059d7d8  24 90 9d e5                                      ldr sb, [sp, #0x24]
0059d7dc  e8 50 9d e5                                      ldr r5, [sp, #0xe8]
0059d7e0  e4 b0 9d e5                                      ldr fp, [sp, #0xe4]
0059d7e4  be 80 d9 e1                                      ldrh r8, [sb, #0xe]
0059d7e8  95 08 06 e0                                      mul r6, r5, r8
0059d7ec  9b 08 03 e0                                      mul r3, fp, r8
0059d7f0  06 a0 94 e7                                      ldr sl, [r4, r6]
0059d7f4  03 90 94 e7                                      ldr sb, [r4, r3]
0059d7f8  03 30 84 e0                                      add r3, r4, r3
0059d7fc  0a 00 a0 e1                                      mov r0, sl
0059d800  09 10 a0 e1                                      mov r1, sb
0059d804  20 30 8d e5                                      str r3, [sp, #0x20]
0059d808  df c1 f5 eb                                      bl #0x30df8c
0059d80c  00 00 50 e3                                      cmp r0, #0
0059d810  06 60 84 e0                                      add r6, r4, r6
0059d814  0b 00 00 0a                                      beq #0x59d848
0059d818  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0059d81c  04 00 96 e5                                      ldr r0, [r6, #4]
0059d820  04 10 9c e5                                      ldr r1, [ip, #4]
0059d824  d8 c1 f5 eb                                      bl #0x30df8c
0059d828  00 00 50 e3                                      cmp r0, #0
0059d82c  05 00 00 0a                                      beq #0x59d848
0059d830  20 20 9d e5                                      ldr r2, [sp, #0x20]
0059d834  08 00 96 e5                                      ldr r0, [r6, #8]
0059d838  08 10 92 e5                                      ldr r1, [r2, #8]
0059d83c  d2 c1 f5 eb                                      bl #0x30df8c
0059d840  00 00 50 e3                                      cmp r0, #0
0059d844  d6 ff ff 1a                                      bne #0x59d7a4
0059d848  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
0059d84c  28 00 8d e5                                      str r0, [sp, #0x28]
0059d850  28 20 9d e5                                      ldr r2, [sp, #0x28]
0059d854  0a 00 a0 e1                                      mov r0, sl
0059d858  92 08 08 e0                                      mul r8, r2, r8
0059d85c  08 a0 94 e7                                      ldr sl, [r4, r8]
0059d860  08 80 84 e0                                      add r8, r4, r8
0059d864  0a 10 a0 e1                                      mov r1, sl
0059d868  c7 c1 f5 eb                                      bl #0x30df8c
0059d86c  00 00 50 e3                                      cmp r0, #0
0059d870  09 00 00 0a                                      beq #0x59d89c
0059d874  04 00 96 e5                                      ldr r0, [r6, #4]
0059d878  04 10 98 e5                                      ldr r1, [r8, #4]
0059d87c  c2 c1 f5 eb                                      bl #0x30df8c
0059d880  00 00 50 e3                                      cmp r0, #0
0059d884  04 00 00 0a                                      beq #0x59d89c
0059d888  08 00 96 e5                                      ldr r0, [r6, #8]
0059d88c  08 10 98 e5                                      ldr r1, [r8, #8]
0059d890  bd c1 f5 eb                                      bl #0x30df8c
0059d894  00 00 50 e3                                      cmp r0, #0
0059d898  c1 ff ff 1a                                      bne #0x59d7a4
0059d89c  09 00 a0 e1                                      mov r0, sb
0059d8a0  0a 10 a0 e1                                      mov r1, sl
0059d8a4  b8 c1 f5 eb                                      bl #0x30df8c
0059d8a8  00 00 50 e3                                      cmp r0, #0
0059d8ac  3b ff ff 0a                                      beq #0x59d5a0
0059d8b0  20 30 9d e5                                      ldr r3, [sp, #0x20]
0059d8b4  04 10 98 e5                                      ldr r1, [r8, #4]
0059d8b8  04 00 93 e5                                      ldr r0, [r3, #4]
0059d8bc  b2 c1 f5 eb                                      bl #0x30df8c
0059d8c0  00 00 50 e3                                      cmp r0, #0
0059d8c4  35 ff ff 0a                                      beq #0x59d5a0
0059d8c8  20 90 9d e5                                      ldr sb, [sp, #0x20]
0059d8cc  08 10 98 e5                                      ldr r1, [r8, #8]
0059d8d0  08 00 99 e5                                      ldr r0, [sb, #8]
0059d8d4  ac c1 f5 eb                                      bl #0x30df8c
0059d8d8  00 00 50 e3                                      cmp r0, #0
0059d8dc  2f ff ff 0a                                      beq #0x59d5a0
0059d8e0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0059d8e4  01 70 87 e2                                      add r7, r7, #1
0059d8e8  00 00 57 e1                                      cmp r7, r0
0059d8ec  b0 ff ff 1a                                      bne #0x59d7b4
0059d8f0  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
0059d8f4  48 80 9d e5                                      ldr r8, [sp, #0x48]
0059d8f8  38 50 9d e5                                      ldr r5, [sp, #0x38]
0059d8fc  74 60 9d e5                                      ldr r6, [sp, #0x74]
0059d900  78 90 9d e5                                      ldr sb, [sp, #0x78]
0059d904  58 20 9d e5                                      ldr r2, [sp, #0x58]
0059d908  00 00 52 e3                                      cmp r2, #0
0059d90c  08 00 00 0a                                      beq #0x59d934
0059d910  18 50 95 e5                                      ldr r5, [r5, #0x18]
0059d914  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0059d918  1f 20 03 e2                                      and r2, r3, #0x1f
0059d91c  01 00 52 e3                                      cmp r2, #1
0059d920  8f 00 00 9a                                      bls #0x59db64
0059d924  01 20 42 e2                                      sub r2, r2, #1
0059d928  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059d92c  03 30 82 e1                                      orr r3, r2, r3
0059d930  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059d934  00 00 5a e3                                      cmp sl, #0
0059d938  09 00 00 0a                                      beq #0x59d964
0059d93c  30 30 9d e5                                      ldr r3, [sp, #0x30]
0059d940  10 50 93 e5                                      ldr r5, [r3, #0x10]
0059d944  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0059d948  1f 20 03 e2                                      and r2, r3, #0x1f
0059d94c  01 00 52 e3                                      cmp r2, #1
0059d950  71 00 00 9a                                      bls #0x59db1c
0059d954  01 20 42 e2                                      sub r2, r2, #1
0059d958  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059d95c  03 30 82 e1                                      orr r3, r2, r3
0059d960  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059d964  00 00 58 e3                                      cmp r8, #0
0059d968  09 00 00 0a                                      beq #0x59d994
0059d96c  30 a0 9d e5                                      ldr sl, [sp, #0x30]
0059d970  00 50 9a e5                                      ldr r5, [sl]
0059d974  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0059d978  1f 20 03 e2                                      and r2, r3, #0x1f
0059d97c  01 00 52 e3                                      cmp r2, #1
0059d980  71 00 00 9a                                      bls #0x59db4c
0059d984  01 20 42 e2                                      sub r2, r2, #1
0059d988  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059d98c  03 30 82 e1                                      orr r3, r2, r3
0059d990  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059d994  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
0059d998  00 00 53 e3                                      cmp r3, #0
0059d99c  0c 00 00 0a                                      beq #0x59d9d4
0059d9a0  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0059d9a4  00 50 93 e5                                      ldr r5, [r3]
0059d9a8  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0059d9ac  1f 20 03 e2                                      and r2, r3, #0x1f
0059d9b0  01 00 52 e3                                      cmp r2, #1
0059d9b4  5e 00 00 9a                                      bls #0x59db34
0059d9b8  01 20 42 e2                                      sub r2, r2, #1
0059d9bc  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059d9c0  03 30 82 e1                                      orr r3, r2, r3
0059d9c4  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059d9c8  00 30 a0 e3                                      mov r3, #0
0059d9cc  dc 30 8d e5                                      str r3, [sp, #0xdc]
0059d9d0  d8 30 8d e5                                      str r3, [sp, #0xd8]
0059d9d4  54 c0 9d e5                                      ldr ip, [sp, #0x54]
0059d9d8  00 00 5c e3                                      cmp ip, #0
0059d9dc  09 00 00 0a                                      beq #0x59da08
0059d9e0  24 00 9d e5                                      ldr r0, [sp, #0x24]
0059d9e4  10 50 90 e5                                      ldr r5, [r0, #0x10]
0059d9e8  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0059d9ec  1f 20 03 e2                                      and r2, r3, #0x1f
0059d9f0  01 00 52 e3                                      cmp r2, #1
0059d9f4  60 00 00 9a                                      bls #0x59db7c
0059d9f8  01 20 42 e2                                      sub r2, r2, #1
0059d9fc  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059da00  03 30 82 e1                                      orr r3, r2, r3
0059da04  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059da08  00 00 54 e3                                      cmp r4, #0
0059da0c  0d fc ff 0a                                      beq #0x59ca48
0059da10  34 20 9d e5                                      ldr r2, [sp, #0x34]
0059da14  14 40 92 e5                                      ldr r4, [r2, #0x14]
0059da18  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059da1c  1f 20 03 e2                                      and r2, r3, #0x1f
0059da20  01 00 52 e3                                      cmp r2, #1
0059da24  36 00 00 9a                                      bls #0x59db04
0059da28  01 20 42 e2                                      sub r2, r2, #1
0059da2c  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059da30  03 30 82 e1                                      orr r3, r2, r3
0059da34  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059da38  02 fc ff ea                                      b #0x59ca48
0059da3c  80 50 9d e5                                      ldr r5, [sp, #0x80]
0059da40  a0 60 9d e5                                      ldr r6, [sp, #0xa0]
0059da44  a4 90 9d e5                                      ldr sb, [sp, #0xa4]
0059da48  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0059da4c  00 00 53 e3                                      cmp r3, #0
0059da50  4f 00 00 0a                                      beq #0x59db94
0059da54  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
0059da58  00 00 53 e3                                      cmp r3, #0
0059da5c  4c 00 00 0a                                      beq #0x59db94
0059da60  94 c0 9d e5                                      ldr ip, [sp, #0x94]
0059da64  00 00 5c e3                                      cmp ip, #0
0059da68  a5 ff ff 0a                                      beq #0x59d904
0059da6c  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
0059da70  00 70 a0 e3                                      mov r7, #0
0059da74  94 b0 9d e5                                      ldr fp, [sp, #0x94]
0059da78  be 00 d2 e1                                      ldrh r0, [r2, #0xe]
0059da7c  02 00 00 ea                                      b #0x59da8c
0059da80  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
0059da84  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
0059da88  be 00 d2 e1                                      ldrh r0, [r2, #0xe]
0059da8c  97 30 20 e0                                      mla r0, r7, r0, r3
0059da90  01 70 87 e2                                      add r7, r7, #1
0059da94  91 03 f7 eb                                      bl #0x35e8e0
0059da98  0b 00 57 e1                                      cmp r7, fp
0059da9c  f7 ff ff 1a                                      bne #0x59da80
0059daa0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0059daa4  00 70 a0 e3                                      mov r7, #0
0059daa8  94 b0 9d e5                                      ldr fp, [sp, #0x94]
0059daac  be 00 dc e1                                      ldrh r0, [ip, #0xe]
0059dab0  20 60 8d e5                                      str r6, [sp, #0x20]
0059dab4  28 90 8d e5                                      str sb, [sp, #0x28]
0059dab8  04 60 a0 e1                                      mov r6, r4
0059dabc  05 90 a0 e1                                      mov sb, r5
0059dac0  50 40 9d e5                                      ldr r4, [sp, #0x50]
0059dac4  0c 50 a0 e1                                      mov r5, ip
0059dac8  00 00 00 ea                                      b #0x59dad0
0059dacc  be 00 d5 e1                                      ldrh r0, [r5, #0xe]
0059dad0  97 80 20 e0                                      mla r0, r7, r0, r8
0059dad4  81 03 f7 eb                                      bl #0x35e8e0
0059dad8  be 00 d4 e1                                      ldrh r0, [r4, #0xe]
0059dadc  90 a7 20 e0                                      mla r0, r0, r7, sl
0059dae0  01 70 87 e2                                      add r7, r7, #1
0059dae4  7d 03 f7 eb                                      bl #0x35e8e0
0059dae8  0b 00 57 e1                                      cmp r7, fp
0059daec  f6 ff ff 3a                                      blo #0x59dacc
0059daf0  06 40 a0 e1                                      mov r4, r6
0059daf4  09 50 a0 e1                                      mov r5, sb
0059daf8  20 60 9d e5                                      ldr r6, [sp, #0x20]
0059dafc  28 90 9d e5                                      ldr sb, [sp, #0x28]
0059db00  7f ff ff ea                                      b #0x59d904
0059db04  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059db08  20 00 13 e3                                      tst r3, #0x20
0059db0c  29 00 00 1a                                      bne #0x59dbb8
0059db10  00 30 a0 e3                                      mov r3, #0
0059db14  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059db18  ca fb ff ea                                      b #0x59ca48
0059db1c  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0059db20  20 00 13 e3                                      tst r3, #0x20
0059db24  2d 00 00 1a                                      bne #0x59dbe0
0059db28  00 30 a0 e3                                      mov r3, #0
0059db2c  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059db30  8b ff ff ea                                      b #0x59d964
0059db34  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0059db38  20 00 13 e3                                      tst r3, #0x20
0059db3c  22 00 00 1a                                      bne #0x59dbcc
0059db40  00 30 a0 e3                                      mov r3, #0
0059db44  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059db48  9e ff ff ea                                      b #0x59d9c8
0059db4c  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0059db50  20 00 13 e3                                      tst r3, #0x20
0059db54  12 00 00 1a                                      bne #0x59dba4
0059db58  00 30 a0 e3                                      mov r3, #0
0059db5c  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059db60  8b ff ff ea                                      b #0x59d994
0059db64  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0059db68  20 00 13 e3                                      tst r3, #0x20
0059db6c  25 00 00 1a                                      bne #0x59dc08
0059db70  00 30 a0 e3                                      mov r3, #0
0059db74  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059db78  6d ff ff ea                                      b #0x59d934
0059db7c  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0059db80  20 00 13 e3                                      tst r3, #0x20
0059db84  1a 00 00 1a                                      bne #0x59dbf4
0059db88  00 30 a0 e3                                      mov r3, #0
0059db8c  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059db90  9c ff ff ea                                      b #0x59da08
0059db94  94 00 9d e5                                      ldr r0, [sp, #0x94]
0059db98  00 00 50 e3                                      cmp r0, #0
0059db9c  bf ff ff 1a                                      bne #0x59daa0
0059dba0  57 ff ff ea                                      b #0x59d904
0059dba4  00 30 95 e5                                      ldr r3, [r5]
0059dba8  05 00 a0 e1                                      mov r0, r5
0059dbac  0f e0 a0 e1                                      mov lr, pc
0059dbb0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059dbb4  e7 ff ff ea                                      b #0x59db58
0059dbb8  00 30 94 e5                                      ldr r3, [r4]
0059dbbc  04 00 a0 e1                                      mov r0, r4
0059dbc0  0f e0 a0 e1                                      mov lr, pc
0059dbc4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059dbc8  d0 ff ff ea                                      b #0x59db10
0059dbcc  00 30 95 e5                                      ldr r3, [r5]
0059dbd0  05 00 a0 e1                                      mov r0, r5
0059dbd4  0f e0 a0 e1                                      mov lr, pc
0059dbd8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059dbdc  d7 ff ff ea                                      b #0x59db40
0059dbe0  00 30 95 e5                                      ldr r3, [r5]
0059dbe4  05 00 a0 e1                                      mov r0, r5
0059dbe8  0f e0 a0 e1                                      mov lr, pc
0059dbec  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059dbf0  cc ff ff ea                                      b #0x59db28
0059dbf4  00 30 95 e5                                      ldr r3, [r5]
0059dbf8  05 00 a0 e1                                      mov r0, r5
0059dbfc  0f e0 a0 e1                                      mov lr, pc
0059dc00  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059dc04  df ff ff ea                                      b #0x59db88
0059dc08  00 30 95 e5                                      ldr r3, [r5]
0059dc0c  05 00 a0 e1                                      mov r0, r5
0059dc10  0f e0 a0 e1                                      mov lr, pc
0059dc14  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059dc18  d4 ff ff ea                                      b #0x59db70

; FUNCTION 0x0059dc1c, declared_size=648, range_size=648, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene5scaleERKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS_4core8vector3dIfEE
; demangled: glitch::scene::scale(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
0059dc1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059dc20  00 30 90 e5                                      ldr r3, [r0]
0059dc24  34 d0 4d e2                                      sub sp, sp, #0x34
0059dc28  01 40 a0 e1                                      mov r4, r1
0059dc2c  00 00 53 e3                                      cmp r3, #0
0059dc30  14 00 00 0a                                      beq #0x59dc88
0059dc34  14 30 93 e5                                      ldr r3, [r3, #0x14]
0059dc38  11 10 a0 e3                                      mov r1, #0x11
0059dc3c  04 30 8d e5                                      str r3, [sp, #4]
0059dc40  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
0059dc44  14 50 83 e2                                      add r5, r3, #0x14
0059dc48  03 00 a0 e1                                      mov r0, r3
0059dc4c  01 20 82 e2                                      add r2, r2, #1
0059dc50  10 30 93 e5                                      ldr r3, [r3, #0x10]
0059dc54  02 22 85 e0                                      add r2, r5, r2, lsl #4
0059dc58  a4 0b 00 eb                                      bl #0x5a0af0
0059dc5c  ba 30 d5 e1                                      ldrh r3, [r5, #0xa]
0059dc60  00 80 a0 e1                                      mov r8, r0
0059dc64  06 00 53 e3                                      cmp r3, #6
0059dc68  08 00 00 0a                                      beq #0x59dc90
0059dc6c  28 02 9f e5                                      ldr r0, [pc, #0x228]
0059dc70  28 12 9f e5                                      ldr r1, [pc, #0x228]
0059dc74  01 20 a0 e3                                      mov r2, #1
0059dc78  00 00 8f e0                                      add r0, pc, r0
0059dc7c  68 00 80 e2                                      add r0, r0, #0x68
0059dc80  01 10 8f e0                                      add r1, pc, r1
0059dc84  17 b4 01 eb                                      bl #0x60ace8
0059dc88  34 d0 8d e2                                      add sp, sp, #0x34
0059dc8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059dc90  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
0059dc94  03 00 53 e3                                      cmp r3, #3
0059dc98  f3 ff ff 1a                                      bne #0x59dc6c
0059dc9c  ba 30 d0 e1                                      ldrh r3, [r0, #0xa]
0059dca0  06 00 53 e3                                      cmp r3, #6
0059dca4  f0 ff ff 1a                                      bne #0x59dc6c
0059dca8  bc 30 d0 e1                                      ldrh r3, [r0, #0xc]
0059dcac  03 00 53 e3                                      cmp r3, #3
0059dcb0  ed ff ff 1a                                      bne #0x59dc6c
0059dcb4  04 c0 9d e5                                      ldr ip, [sp, #4]
0059dcb8  05 10 a0 e3                                      mov r1, #5
0059dcbc  00 70 a0 e3                                      mov r7, #0
0059dcc0  14 00 9c e5                                      ldr r0, [ip, #0x14]
0059dcc4  49 0f 00 eb                                      bl #0x5a19f0
0059dcc8  04 60 95 e5                                      ldr r6, [r5, #4]
0059dccc  fe 35 a0 e3                                      mov r3, #0x3f800000
0059dcd0  1c 10 8d e2                                      add r1, sp, #0x1c
0059dcd4  04 20 a0 e1                                      mov r2, r4
0059dcd8  06 60 80 e0                                      add r6, r0, r6
0059dcdc  10 00 8d e2                                      add r0, sp, #0x10
0059dce0  24 30 8d e5                                      str r3, [sp, #0x24]
0059dce4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0059dce8  20 30 8d e5                                      str r3, [sp, #0x20]
0059dcec  28 70 8d e5                                      str r7, [sp, #0x28]
0059dcf0  2c 70 8d e5                                      str r7, [sp, #0x2c]
0059dcf4  66 f1 ff eb                                      bl #0x59a294
0059dcf8  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059dcfc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0059dd00  08 10 a0 e1                                      mov r1, r8
0059dd04  28 00 8d e2                                      add r0, sp, #0x28
0059dd08  08 30 8d e5                                      str r3, [sp, #8]
0059dd0c  10 b0 9d e5                                      ldr fp, [sp, #0x10]
0059dd10  0c c0 8d e5                                      str ip, [sp, #0xc]
0059dd14  ad f8 ff eb                                      bl #0x59bfd0
0059dd18  04 30 9d e5                                      ldr r3, [sp, #4]
0059dd1c  08 90 93 e5                                      ldr sb, [r3, #8]
0059dd20  07 00 59 e1                                      cmp sb, r7
0059dd24  29 00 00 0a                                      beq #0x59ddd0
0059dd28  be 80 d5 e1                                      ldrh r8, [r5, #0xe]
0059dd2c  00 10 94 e5                                      ldr r1, [r4]
0059dd30  97 08 08 e0                                      mul r8, r7, r8
0059dd34  08 00 96 e7                                      ldr r0, [r6, r8]
0059dd38  0b c4 f5 eb                                      bl #0x30ed6c
0059dd3c  08 00 86 e7                                      str r0, [r6, r8]
0059dd40  08 80 86 e0                                      add r8, r6, r8
0059dd44  04 10 94 e5                                      ldr r1, [r4, #4]
0059dd48  04 00 98 e5                                      ldr r0, [r8, #4]
0059dd4c  06 c4 f5 eb                                      bl #0x30ed6c
0059dd50  04 00 88 e5                                      str r0, [r8, #4]
0059dd54  08 10 94 e5                                      ldr r1, [r4, #8]
0059dd58  08 00 98 e5                                      ldr r0, [r8, #8]
0059dd5c  02 c4 f5 eb                                      bl #0x30ed6c
0059dd60  08 00 88 e5                                      str r0, [r8, #8]
0059dd64  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
0059dd68  0b 10 a0 e1                                      mov r1, fp
0059dd6c  00 00 58 e3                                      cmp r8, #0
0059dd70  13 00 00 0a                                      beq #0x59ddc4
0059dd74  28 30 9d e5                                      ldr r3, [sp, #0x28]
0059dd78  be a0 d3 e1                                      ldrh sl, [r3, #0xe]
0059dd7c  9a 07 0a e0                                      mul sl, sl, r7
0059dd80  0a 00 98 e7                                      ldr r0, [r8, sl]
0059dd84  f8 c3 f5 eb                                      bl #0x30ed6c
0059dd88  0a 00 88 e7                                      str r0, [r8, sl]
0059dd8c  0a 80 88 e0                                      add r8, r8, sl
0059dd90  08 10 9d e5                                      ldr r1, [sp, #8]
0059dd94  04 00 98 e5                                      ldr r0, [r8, #4]
0059dd98  f3 c3 f5 eb                                      bl #0x30ed6c
0059dd9c  04 00 88 e5                                      str r0, [r8, #4]
0059dda0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0059dda4  08 00 98 e5                                      ldr r0, [r8, #8]
0059dda8  ef c3 f5 eb                                      bl #0x30ed6c
0059ddac  08 00 88 e5                                      str r0, [r8, #8]
0059ddb0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0059ddb4  be 00 d3 e1                                      ldrh r0, [r3, #0xe]
0059ddb8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0059ddbc  90 37 20 e0                                      mla r0, r0, r7, r3
0059ddc0  c6 02 f7 eb                                      bl #0x35e8e0
0059ddc4  01 70 87 e2                                      add r7, r7, #1
0059ddc8  09 00 57 e1                                      cmp r7, sb
0059ddcc  d5 ff ff 1a                                      bne #0x59dd28
0059ddd0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0059ddd4  00 00 53 e3                                      cmp r3, #0
0059ddd8  0c 00 00 0a                                      beq #0x59de10
0059dddc  28 30 9d e5                                      ldr r3, [sp, #0x28]
0059dde0  00 40 93 e5                                      ldr r4, [r3]
0059dde4  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059dde8  1f 20 03 e2                                      and r2, r3, #0x1f
0059ddec  01 00 52 e3                                      cmp r2, #1
0059ddf0  13 00 00 9a                                      bls #0x59de44
0059ddf4  01 20 42 e2                                      sub r2, r2, #1
0059ddf8  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059ddfc  03 30 82 e1                                      orr r3, r2, r3
0059de00  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059de04  00 30 a0 e3                                      mov r3, #0
0059de08  2c 30 8d e5                                      str r3, [sp, #0x2c]
0059de0c  28 30 8d e5                                      str r3, [sp, #0x28]
0059de10  00 00 56 e3                                      cmp r6, #0
0059de14  9b ff ff 0a                                      beq #0x59dc88
0059de18  04 30 9d e5                                      ldr r3, [sp, #4]
0059de1c  14 40 93 e5                                      ldr r4, [r3, #0x14]
0059de20  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059de24  1f 20 03 e2                                      and r2, r3, #0x1f
0059de28  01 00 52 e3                                      cmp r2, #1
0059de2c  0a 00 00 9a                                      bls #0x59de5c
0059de30  01 20 42 e2                                      sub r2, r2, #1
0059de34  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059de38  03 30 82 e1                                      orr r3, r2, r3
0059de3c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059de40  90 ff ff ea                                      b #0x59dc88
0059de44  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059de48  20 00 13 e3                                      tst r3, #0x20
0059de4c  08 00 00 1a                                      bne #0x59de74
0059de50  00 30 a0 e3                                      mov r3, #0
0059de54  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059de58  e9 ff ff ea                                      b #0x59de04
0059de5c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059de60  20 00 13 e3                                      tst r3, #0x20
0059de64  07 00 00 1a                                      bne #0x59de88
0059de68  00 30 a0 e3                                      mov r3, #0
0059de6c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059de70  84 ff ff ea                                      b #0x59dc88
0059de74  00 30 94 e5                                      ldr r3, [r4]
0059de78  04 00 a0 e1                                      mov r0, r4
0059de7c  0f e0 a0 e1                                      mov lr, pc
0059de80  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059de84  f1 ff ff ea                                      b #0x59de50
0059de88  00 30 94 e5                                      ldr r3, [r4]
0059de8c  04 00 a0 e1                                      mov r0, r4
0059de90  0f e0 a0 e1                                      mov lr, pc
0059de94  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059de98  f2 ff ff ea                                      b #0x59de68
; mapping-symbol data/literal pool
0059de9c  08 1b 34 00 d0 1d 34 00                          .byte 0x08, 0x1b, 0x34, 0x00, 0xd0, 0x1d, 0x34, 0x00

; FUNCTION 0x0059dea4, declared_size=320, range_size=320, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene5scaleERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS_4core8vector3dIfEE
; demangled: glitch::scene::scale(boost::intrusive_ptr<glitch::scene::IMesh> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
0059dea4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0059dea8  00 30 90 e5                                      ldr r3, [r0]
0059deac  20 d0 4d e2                                      sub sp, sp, #0x20
0059deb0  00 70 a0 e1                                      mov r7, r0
0059deb4  00 00 53 e3                                      cmp r3, #0
0059deb8  01 60 a0 e1                                      mov r6, r1
0059debc  46 00 00 0a                                      beq #0x59dfdc
0059dec0  03 00 a0 e1                                      mov r0, r3
0059dec4  00 30 93 e5                                      ldr r3, [r3]
0059dec8  0f e0 a0 e1                                      mov lr, pc
0059decc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0059ded0  00 80 50 e2                                      subs r8, r0, #0
0059ded4  12 00 00 0a                                      beq #0x59df24
0059ded8  00 40 a0 e3                                      mov r4, #0
0059dedc  1c 50 8d e2                                      add r5, sp, #0x1c
0059dee0  00 30 97 e5                                      ldr r3, [r7]
0059dee4  04 20 a0 e1                                      mov r2, r4
0059dee8  05 00 a0 e1                                      mov r0, r5
0059deec  03 10 a0 e1                                      mov r1, r3
0059def0  00 30 93 e5                                      ldr r3, [r3]
0059def4  0f e0 a0 e1                                      mov lr, pc
0059def8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059defc  05 00 a0 e1                                      mov r0, r5
0059df00  06 10 a0 e1                                      mov r1, r6
0059df04  44 ff ff eb                                      bl #0x59dc1c
0059df08  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0059df0c  01 40 84 e2                                      add r4, r4, #1
0059df10  00 00 50 e3                                      cmp r0, #0
0059df14  00 00 00 0a                                      beq #0x59df1c
0059df18  99 fd f5 eb                                      bl #0x31d584
0059df1c  08 00 54 e1                                      cmp r4, r8
0059df20  ee ff ff 1a                                      bne #0x59dee0
0059df24  00 30 97 e5                                      ldr r3, [r7]
0059df28  03 00 a0 e1                                      mov r0, r3
0059df2c  00 30 93 e5                                      ldr r3, [r3]
0059df30  0f e0 a0 e1                                      mov lr, pc
0059df34  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0059df38  00 30 a0 e1                                      mov r3, r0
0059df3c  00 00 90 e5                                      ldr r0, [r0]
0059df40  00 10 96 e5                                      ldr r1, [r6]
0059df44  04 00 8d e5                                      str r0, [sp, #4]
0059df48  04 a0 93 e5                                      ldr sl, [r3, #4]
0059df4c  08 a0 8d e5                                      str sl, [sp, #8]
0059df50  08 80 93 e5                                      ldr r8, [r3, #8]
0059df54  0c 80 8d e5                                      str r8, [sp, #0xc]
0059df58  0c 50 93 e5                                      ldr r5, [r3, #0xc]
0059df5c  10 50 8d e5                                      str r5, [sp, #0x10]
0059df60  10 40 93 e5                                      ldr r4, [r3, #0x10]
0059df64  14 40 8d e5                                      str r4, [sp, #0x14]
0059df68  14 90 93 e5                                      ldr sb, [r3, #0x14]
0059df6c  7e c3 f5 eb                                      bl #0x30ed6c
0059df70  04 00 8d e5                                      str r0, [sp, #4]
0059df74  04 10 96 e5                                      ldr r1, [r6, #4]
0059df78  0a 00 a0 e1                                      mov r0, sl
0059df7c  7a c3 f5 eb                                      bl #0x30ed6c
0059df80  08 00 8d e5                                      str r0, [sp, #8]
0059df84  08 10 96 e5                                      ldr r1, [r6, #8]
0059df88  08 00 a0 e1                                      mov r0, r8
0059df8c  76 c3 f5 eb                                      bl #0x30ed6c
0059df90  0c 00 8d e5                                      str r0, [sp, #0xc]
0059df94  00 10 96 e5                                      ldr r1, [r6]
0059df98  05 00 a0 e1                                      mov r0, r5
0059df9c  72 c3 f5 eb                                      bl #0x30ed6c
0059dfa0  10 00 8d e5                                      str r0, [sp, #0x10]
0059dfa4  04 10 96 e5                                      ldr r1, [r6, #4]
0059dfa8  04 00 a0 e1                                      mov r0, r4
0059dfac  6e c3 f5 eb                                      bl #0x30ed6c
0059dfb0  14 00 8d e5                                      str r0, [sp, #0x14]
0059dfb4  08 10 96 e5                                      ldr r1, [r6, #8]
0059dfb8  09 00 a0 e1                                      mov r0, sb
0059dfbc  6a c3 f5 eb                                      bl #0x30ed6c
0059dfc0  00 30 97 e5                                      ldr r3, [r7]
0059dfc4  18 00 8d e5                                      str r0, [sp, #0x18]
0059dfc8  04 10 8d e2                                      add r1, sp, #4
0059dfcc  03 00 a0 e1                                      mov r0, r3
0059dfd0  00 30 93 e5                                      ldr r3, [r3]
0059dfd4  0f e0 a0 e1                                      mov lr, pc
0059dfd8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0059dfdc  20 d0 8d e2                                      add sp, sp, #0x20
0059dfe0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0059dfe4, declared_size=1716, range_size=1716, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene18recalculateNormalsERKN5boost13intrusive_ptrINS0_11CMeshBufferEEEbb
; demangled: glitch::scene::recalculateNormals(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, bool, bool)
; decoder-mode: arm
0059dfe4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059dfe8  00 60 90 e5                                      ldr r6, [r0]
0059dfec  94 d0 4d e2                                      sub sp, sp, #0x94
0059dff0  01 a0 a0 e1                                      mov sl, r1
0059dff4  00 00 56 e3                                      cmp r6, #0
0059dff8  2c 20 8d e5                                      str r2, [sp, #0x2c]
0059dffc  16 00 00 0a                                      beq #0x59e05c
0059e000  18 30 96 e5                                      ldr r3, [r6, #0x18]
0059e004  00 00 53 e3                                      cmp r3, #0
0059e008  7b 01 00 0a                                      beq #0x59e5fc
0059e00c  be 32 d6 e1                                      ldrh r3, [r6, #0x2e]
0059e010  06 00 53 e3                                      cmp r3, #6
0059e014  12 00 00 1a                                      bne #0x59e064
0059e018  14 80 96 e5                                      ldr r8, [r6, #0x14]
0059e01c  04 30 98 e5                                      ldr r3, [r8, #4]
0059e020  02 08 13 e3                                      tst r3, #0x20000
0059e024  0c 00 00 0a                                      beq #0x59e05c
0059e028  14 10 88 e2                                      add r1, r8, #0x14
0059e02c  30 10 8d e5                                      str r1, [sp, #0x30]
0059e030  ba 30 d1 e1                                      ldrh r3, [r1, #0xa]
0059e034  0c 20 d8 e5                                      ldrb r2, [r8, #0xc]
0059e038  06 00 53 e3                                      cmp r3, #6
0059e03c  10 00 00 0a                                      beq #0x59e084
0059e040  38 06 9f e5                                      ldr r0, [pc, #0x638]
0059e044  38 16 9f e5                                      ldr r1, [pc, #0x638]
0059e048  01 20 a0 e3                                      mov r2, #1
0059e04c  00 00 8f e0                                      add r0, pc, r0
0059e050  70 00 80 e2                                      add r0, r0, #0x70
0059e054  01 10 8f e0                                      add r1, pc, r1
0059e058  22 b3 01 eb                                      bl #0x60ace8
0059e05c  94 d0 8d e2                                      add sp, sp, #0x94
0059e060  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059e064  1c 06 9f e5                                      ldr r0, [pc, #0x61c]
0059e068  1c 16 9f e5                                      ldr r1, [pc, #0x61c]
0059e06c  01 20 a0 e3                                      mov r2, #1
0059e070  00 00 8f e0                                      add r0, pc, r0
0059e074  70 00 80 e2                                      add r0, r0, #0x70
0059e078  01 10 8f e0                                      add r1, pc, r1
0059e07c  19 b3 01 eb                                      bl #0x60ace8
0059e080  f5 ff ff ea                                      b #0x59e05c
0059e084  bc 30 d1 e1                                      ldrh r3, [r1, #0xc]
0059e088  02 00 53 e3                                      cmp r3, #2
0059e08c  eb ff ff 9a                                      bls #0x59e040
0059e090  01 20 82 e2                                      add r2, r2, #1
0059e094  72 20 ef e6                                      uxtb r2, r2
0059e098  44 20 8d e5                                      str r2, [sp, #0x44]
0059e09c  02 52 81 e0                                      add r5, r1, r2, lsl #4
0059e0a0  ba 30 d5 e1                                      ldrh r3, [r5, #0xa]
0059e0a4  06 00 53 e3                                      cmp r3, #6
0059e0a8  e4 ff ff 1a                                      bne #0x59e040
0059e0ac  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
0059e0b0  03 00 53 e3                                      cmp r3, #3
0059e0b4  e1 ff ff 1a                                      bne #0x59e040
0059e0b8  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0059e0bc  30 e0 9d e5                                      ldr lr, [sp, #0x30]
0059e0c0  05 10 a0 e3                                      mov r1, #5
0059e0c4  0c 02 9e e7                                      ldr r0, [lr, ip, lsl #4]
0059e0c8  48 0e 00 eb                                      bl #0x5a19f0
0059e0cc  44 10 9d e5                                      ldr r1, [sp, #0x44]
0059e0d0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0059e0d4  00 30 a0 e3                                      mov r3, #0
0059e0d8  04 40 95 e5                                      ldr r4, [r5, #4]
0059e0dc  78 30 8d e5                                      str r3, [sp, #0x78]
0059e0e0  7c 30 8d e5                                      str r3, [sp, #0x7c]
0059e0e4  80 30 8d e5                                      str r3, [sp, #0x80]
0059e0e8  74 30 8d e5                                      str r3, [sp, #0x74]
0059e0ec  14 20 98 e5                                      ldr r2, [r8, #0x14]
0059e0f0  01 32 9c e7                                      ldr r3, [ip, r1, lsl #4]
0059e0f4  04 40 80 e0                                      add r4, r0, r4
0059e0f8  03 00 52 e1                                      cmp r2, r3
0059e0fc  46 01 00 0a                                      beq #0x59e61c
0059e100  74 00 8d e2                                      add r0, sp, #0x74
0059e104  30 10 9d e5                                      ldr r1, [sp, #0x30]
0059e108  fc f7 ff eb                                      bl #0x59c100
0059e10c  78 70 9d e5                                      ldr r7, [sp, #0x78]
0059e110  08 80 98 e5                                      ldr r8, [r8, #8]
0059e114  18 00 96 e5                                      ldr r0, [r6, #0x18]
0059e118  30 30 9d e5                                      ldr r3, [sp, #0x30]
0059e11c  3c 80 8d e5                                      str r8, [sp, #0x3c]
0059e120  20 20 96 e5                                      ldr r2, [r6, #0x20]
0059e124  01 10 a0 e3                                      mov r1, #1
0059e128  18 20 8d e5                                      str r2, [sp, #0x18]
0059e12c  be 80 d3 e1                                      ldrh r8, [r3, #0xe]
0059e130  69 0e 00 eb                                      bl #0x5a1adc
0059e134  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
0059e138  00 30 e0 e3                                      mvn r3, #0
0059e13c  00 00 5a e3                                      cmp sl, #0
0059e140  02 20 80 e0                                      add r2, r0, r2
0059e144  14 20 8d e5                                      str r2, [sp, #0x14]
0059e148  84 30 8d e5                                      str r3, [sp, #0x84]
0059e14c  8c 30 8d e5                                      str r3, [sp, #0x8c]
0059e150  88 30 8d e5                                      str r3, [sp, #0x88]
0059e154  73 00 00 1a                                      bne #0x59e328
0059e158  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0059e15c  00 00 5c e3                                      cmp ip, #0
0059e160  36 00 00 0a                                      beq #0x59e240
0059e164  8c c0 8d e2                                      add ip, sp, #0x8c
0059e168  88 e0 8d e2                                      add lr, sp, #0x88
0059e16c  84 10 8d e2                                      add r1, sp, #0x84
0059e170  00 90 a0 e3                                      mov sb, #0
0059e174  28 c0 8d e5                                      str ip, [sp, #0x28]
0059e178  24 e0 8d e5                                      str lr, [sp, #0x24]
0059e17c  20 10 8d e5                                      str r1, [sp, #0x20]
0059e180  48 b0 8d e2                                      add fp, sp, #0x48
0059e184  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0059e188  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0059e18c  bc 02 d6 e1                                      ldrh r0, [r6, #0x2c]
0059e190  0a 20 a0 e1                                      mov r2, sl
0059e194  14 10 9d e5                                      ldr r1, [sp, #0x14]
0059e198  28 30 9d e5                                      ldr r3, [sp, #0x28]
0059e19c  00 50 8d e8                                      stm sp, {ip, lr}
0059e1a0  bf ef ff eb                                      bl #0x59a0a4
0059e1a4  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
0059e1a8  88 20 9d e5                                      ldr r2, [sp, #0x88]
0059e1ac  84 30 9d e5                                      ldr r3, [sp, #0x84]
0059e1b0  91 78 21 e0                                      mla r1, r1, r8, r7
0059e1b4  92 78 22 e0                                      mla r2, r2, r8, r7
0059e1b8  93 78 23 e0                                      mla r3, r3, r8, r7
0059e1bc  0b 00 a0 e1                                      mov r0, fp
0059e1c0  48 90 8d e5                                      str sb, [sp, #0x48]
0059e1c4  4c 90 8d e5                                      str sb, [sp, #0x4c]
0059e1c8  50 90 8d e5                                      str sb, [sp, #0x50]
0059e1cc  82 0e ff eb                                      bl #0x561bdc
0059e1d0  be 20 d5 e1                                      ldrh r2, [r5, #0xe]
0059e1d4  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
0059e1d8  48 10 9d e5                                      ldr r1, [sp, #0x48]
0059e1dc  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0059e1e0  9c 02 0c e0                                      mul ip, ip, r2
0059e1e4  50 20 9d e5                                      ldr r2, [sp, #0x50]
0059e1e8  0c 00 84 e0                                      add r0, r4, ip
0059e1ec  0c 10 84 e7                                      str r1, [r4, ip]
0059e1f0  08 20 80 e5                                      str r2, [r0, #8]
0059e1f4  04 30 80 e5                                      str r3, [r0, #4]
0059e1f8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0059e1fc  03 a0 8a e2                                      add sl, sl, #3
0059e200  be 00 d5 e1                                      ldrh r0, [r5, #0xe]
0059e204  0c 00 5a e1                                      cmp sl, ip
0059e208  88 c0 9d e5                                      ldr ip, [sp, #0x88]
0059e20c  9c 00 0c e0                                      mul ip, ip, r0
0059e210  0c 00 84 e0                                      add r0, r4, ip
0059e214  0c 10 84 e7                                      str r1, [r4, ip]
0059e218  08 20 80 e5                                      str r2, [r0, #8]
0059e21c  04 30 80 e5                                      str r3, [r0, #4]
0059e220  be 00 d5 e1                                      ldrh r0, [r5, #0xe]
0059e224  84 c0 9d e5                                      ldr ip, [sp, #0x84]
0059e228  9c 00 0c e0                                      mul ip, ip, r0
0059e22c  0c 00 84 e0                                      add r0, r4, ip
0059e230  0c 10 84 e7                                      str r1, [r4, ip]
0059e234  08 20 80 e5                                      str r2, [r0, #8]
0059e238  04 30 80 e5                                      str r3, [r0, #4]
0059e23c  d0 ff ff 3a                                      blo #0x59e184
0059e240  14 10 9d e5                                      ldr r1, [sp, #0x14]
0059e244  00 00 51 e3                                      cmp r1, #0
0059e248  08 00 00 0a                                      beq #0x59e270
0059e24c  18 50 96 e5                                      ldr r5, [r6, #0x18]
0059e250  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0059e254  1f 20 03 e2                                      and r2, r3, #0x1f
0059e258  01 00 52 e3                                      cmp r2, #1
0059e25c  d4 00 00 9a                                      bls #0x59e5b4
0059e260  01 20 42 e2                                      sub r2, r2, #1
0059e264  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059e268  03 30 82 e1                                      orr r3, r2, r3
0059e26c  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059e270  78 30 9d e5                                      ldr r3, [sp, #0x78]
0059e274  00 00 53 e3                                      cmp r3, #0
0059e278  0c 00 00 0a                                      beq #0x59e2b0
0059e27c  74 30 9d e5                                      ldr r3, [sp, #0x74]
0059e280  00 50 93 e5                                      ldr r5, [r3]
0059e284  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0059e288  1f 20 03 e2                                      and r2, r3, #0x1f
0059e28c  01 00 52 e3                                      cmp r2, #1
0059e290  cd 00 00 9a                                      bls #0x59e5cc
0059e294  01 20 42 e2                                      sub r2, r2, #1
0059e298  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059e29c  03 30 82 e1                                      orr r3, r2, r3
0059e2a0  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059e2a4  00 30 a0 e3                                      mov r3, #0
0059e2a8  78 30 8d e5                                      str r3, [sp, #0x78]
0059e2ac  74 30 8d e5                                      str r3, [sp, #0x74]
0059e2b0  80 30 9d e5                                      ldr r3, [sp, #0x80]
0059e2b4  00 00 53 e3                                      cmp r3, #0
0059e2b8  0c 00 00 0a                                      beq #0x59e2f0
0059e2bc  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
0059e2c0  00 50 93 e5                                      ldr r5, [r3]
0059e2c4  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0059e2c8  1f 20 03 e2                                      and r2, r3, #0x1f
0059e2cc  01 00 52 e3                                      cmp r2, #1
0059e2d0  c3 00 00 9a                                      bls #0x59e5e4
0059e2d4  01 20 42 e2                                      sub r2, r2, #1
0059e2d8  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059e2dc  03 30 82 e1                                      orr r3, r2, r3
0059e2e0  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059e2e4  00 30 a0 e3                                      mov r3, #0
0059e2e8  80 30 8d e5                                      str r3, [sp, #0x80]
0059e2ec  7c 30 8d e5                                      str r3, [sp, #0x7c]
0059e2f0  00 00 54 e3                                      cmp r4, #0
0059e2f4  58 ff ff 0a                                      beq #0x59e05c
0059e2f8  44 20 9d e5                                      ldr r2, [sp, #0x44]
0059e2fc  30 30 9d e5                                      ldr r3, [sp, #0x30]
0059e300  02 42 93 e7                                      ldr r4, [r3, r2, lsl #4]
0059e304  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059e308  1f 20 03 e2                                      and r2, r3, #0x1f
0059e30c  01 00 52 e3                                      cmp r2, #1
0059e310  a1 00 00 9a                                      bls #0x59e59c
0059e314  01 20 42 e2                                      sub r2, r2, #1
0059e318  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059e31c  03 30 82 e1                                      orr r3, r2, r3
0059e320  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059e324  4c ff ff ea                                      b #0x59e05c
0059e328  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0059e32c  00 00 51 e3                                      cmp r1, #0
0059e330  0d 00 00 0a                                      beq #0x59e36c
0059e334  be 00 d5 e1                                      ldrh r0, [r5, #0xe]
0059e338  00 20 a0 e3                                      mov r2, #0
0059e33c  00 30 a0 e3                                      mov r3, #0
0059e340  01 c0 a0 e1                                      mov ip, r1
0059e344  00 00 00 ea                                      b #0x59e34c
0059e348  be 00 d5 e1                                      ldrh r0, [r5, #0xe]
0059e34c  93 00 00 e0                                      mul r0, r3, r0
0059e350  01 30 83 e2                                      add r3, r3, #1
0059e354  00 10 84 e0                                      add r1, r4, r0
0059e358  0c 00 53 e1                                      cmp r3, ip
0059e35c  00 20 84 e7                                      str r2, [r4, r0]
0059e360  08 20 81 e5                                      str r2, [r1, #8]
0059e364  04 20 81 e5                                      str r2, [r1, #4]
0059e368  f6 ff ff 1a                                      bne #0x59e348
0059e36c  18 20 9d e5                                      ldr r2, [sp, #0x18]
0059e370  00 00 52 e3                                      cmp r2, #0
0059e374  7a 00 00 0a                                      beq #0x59e564
0059e378  8c c0 8d e2                                      add ip, sp, #0x8c
0059e37c  00 30 a0 e3                                      mov r3, #0
0059e380  28 c0 8d e5                                      str ip, [sp, #0x28]
0059e384  88 e0 8d e2                                      add lr, sp, #0x88
0059e388  84 10 8d e2                                      add r1, sp, #0x84
0059e38c  58 20 8d e2                                      add r2, sp, #0x58
0059e390  68 c0 8d e2                                      add ip, sp, #0x68
0059e394  10 80 8d e5                                      str r8, [sp, #0x10]
0059e398  24 e0 8d e5                                      str lr, [sp, #0x24]
0059e39c  20 10 8d e5                                      str r1, [sp, #0x20]
0059e3a0  38 20 8d e5                                      str r2, [sp, #0x38]
0059e3a4  40 c0 8d e5                                      str ip, [sp, #0x40]
0059e3a8  34 60 8d e5                                      str r6, [sp, #0x34]
0059e3ac  03 80 a0 e1                                      mov r8, r3
0059e3b0  07 90 a0 e1                                      mov sb, r7
0059e3b4  05 a0 a0 e1                                      mov sl, r5
0059e3b8  32 00 00 ea                                      b #0x59e488
0059e3bc  be 30 da e1                                      ldrh r3, [sl, #0xe]
0059e3c0  8c b0 9d e5                                      ldr fp, [sp, #0x8c]
0059e3c4  07 10 a0 e1                                      mov r1, r7
0059e3c8  9b 03 0b e0                                      mul fp, fp, r3
0059e3cc  0b 00 94 e7                                      ldr r0, [r4, fp]
0059e3d0  f3 c1 f5 eb                                      bl #0x30eba4
0059e3d4  0b 00 84 e7                                      str r0, [r4, fp]
0059e3d8  0b b0 84 e0                                      add fp, r4, fp
0059e3dc  04 00 9b e5                                      ldr r0, [fp, #4]
0059e3e0  06 10 a0 e1                                      mov r1, r6
0059e3e4  ee c1 f5 eb                                      bl #0x30eba4
0059e3e8  05 10 a0 e1                                      mov r1, r5
0059e3ec  04 00 8b e5                                      str r0, [fp, #4]
0059e3f0  08 00 9b e5                                      ldr r0, [fp, #8]
0059e3f4  ea c1 f5 eb                                      bl #0x30eba4
0059e3f8  08 00 8b e5                                      str r0, [fp, #8]
0059e3fc  be 30 da e1                                      ldrh r3, [sl, #0xe]
0059e400  88 b0 9d e5                                      ldr fp, [sp, #0x88]
0059e404  07 10 a0 e1                                      mov r1, r7
0059e408  9b 03 0b e0                                      mul fp, fp, r3
0059e40c  0b 00 94 e7                                      ldr r0, [r4, fp]
0059e410  e3 c1 f5 eb                                      bl #0x30eba4
0059e414  0b 00 84 e7                                      str r0, [r4, fp]
0059e418  0b b0 84 e0                                      add fp, r4, fp
0059e41c  04 00 9b e5                                      ldr r0, [fp, #4]
0059e420  06 10 a0 e1                                      mov r1, r6
0059e424  de c1 f5 eb                                      bl #0x30eba4
0059e428  05 10 a0 e1                                      mov r1, r5
0059e42c  04 00 8b e5                                      str r0, [fp, #4]
0059e430  08 00 9b e5                                      ldr r0, [fp, #8]
0059e434  da c1 f5 eb                                      bl #0x30eba4
0059e438  08 00 8b e5                                      str r0, [fp, #8]
0059e43c  be 30 da e1                                      ldrh r3, [sl, #0xe]
0059e440  07 10 a0 e1                                      mov r1, r7
0059e444  84 70 9d e5                                      ldr r7, [sp, #0x84]
0059e448  97 03 07 e0                                      mul r7, r7, r3
0059e44c  07 00 94 e7                                      ldr r0, [r4, r7]
0059e450  d3 c1 f5 eb                                      bl #0x30eba4
0059e454  07 00 84 e7                                      str r0, [r4, r7]
0059e458  07 70 84 e0                                      add r7, r4, r7
0059e45c  06 10 a0 e1                                      mov r1, r6
0059e460  04 00 97 e5                                      ldr r0, [r7, #4]
0059e464  ce c1 f5 eb                                      bl #0x30eba4
0059e468  05 10 a0 e1                                      mov r1, r5
0059e46c  04 00 87 e5                                      str r0, [r7, #4]
0059e470  08 00 97 e5                                      ldr r0, [r7, #8]
0059e474  ca c1 f5 eb                                      bl #0x30eba4
0059e478  18 20 9d e5                                      ldr r2, [sp, #0x18]
0059e47c  08 00 87 e5                                      str r0, [r7, #8]
0059e480  02 00 58 e1                                      cmp r8, r2
0059e484  34 00 00 2a                                      bhs #0x59e55c
0059e488  34 e0 9d e5                                      ldr lr, [sp, #0x34]
0059e48c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0059e490  08 20 a0 e1                                      mov r2, r8
0059e494  bc 02 de e1                                      ldrh r0, [lr, #0x2c]
0059e498  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0059e49c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0059e4a0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0059e4a4  00 50 8d e8                                      stm sp, {ip, lr}
0059e4a8  fd ee ff eb                                      bl #0x59a0a4
0059e4ac  10 10 9d e5                                      ldr r1, [sp, #0x10]
0059e4b0  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
0059e4b4  88 b0 9d e5                                      ldr fp, [sp, #0x88]
0059e4b8  84 c0 9d e5                                      ldr ip, [sp, #0x84]
0059e4bc  93 91 23 e0                                      mla r3, r3, r1, sb
0059e4c0  9c 91 2c e0                                      mla ip, ip, r1, sb
0059e4c4  9b 91 2b e0                                      mla fp, fp, r1, sb
0059e4c8  1c 30 8d e5                                      str r3, [sp, #0x1c]
0059e4cc  00 e0 a0 e3                                      mov lr, #0
0059e4d0  0c 30 a0 e1                                      mov r3, ip
0059e4d4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0059e4d8  0b 20 a0 e1                                      mov r2, fp
0059e4dc  38 00 9d e5                                      ldr r0, [sp, #0x38]
0059e4e0  0c c0 8d e5                                      str ip, [sp, #0xc]
0059e4e4  58 e0 8d e5                                      str lr, [sp, #0x58]
0059e4e8  5c e0 8d e5                                      str lr, [sp, #0x5c]
0059e4ec  60 e0 8d e5                                      str lr, [sp, #0x60]
0059e4f0  b9 0d ff eb                                      bl #0x561bdc
0059e4f4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0059e4f8  03 80 88 e2                                      add r8, r8, #3
0059e4fc  5c 60 9d e5                                      ldr r6, [sp, #0x5c]
0059e500  00 00 51 e3                                      cmp r1, #0
0059e504  60 50 9d e5                                      ldr r5, [sp, #0x60]
0059e508  58 70 9d e5                                      ldr r7, [sp, #0x58]
0059e50c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0059e510  a9 ff ff 0a                                      beq #0x59e3bc
0059e514  0b 20 a0 e1                                      mov r2, fp
0059e518  0c 30 a0 e1                                      mov r3, ip
0059e51c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0059e520  40 00 9d e5                                      ldr r0, [sp, #0x40]
0059e524  3f f1 ff eb                                      bl #0x59aa28
0059e528  07 00 a0 e1                                      mov r0, r7
0059e52c  68 10 9d e5                                      ldr r1, [sp, #0x68]
0059e530  0d c2 f5 eb                                      bl #0x30ed6c
0059e534  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
0059e538  00 70 a0 e1                                      mov r7, r0
0059e53c  06 00 a0 e1                                      mov r0, r6
0059e540  09 c2 f5 eb                                      bl #0x30ed6c
0059e544  70 10 9d e5                                      ldr r1, [sp, #0x70]
0059e548  00 60 a0 e1                                      mov r6, r0
0059e54c  05 00 a0 e1                                      mov r0, r5
0059e550  05 c2 f5 eb                                      bl #0x30ed6c
0059e554  00 50 a0 e1                                      mov r5, r0
0059e558  97 ff ff ea                                      b #0x59e3bc
0059e55c  34 60 9d e5                                      ldr r6, [sp, #0x34]
0059e560  0a 50 a0 e1                                      mov r5, sl
0059e564  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0059e568  00 00 53 e3                                      cmp r3, #0
0059e56c  33 ff ff 0a                                      beq #0x59e240
0059e570  be 00 d5 e1                                      ldrh r0, [r5, #0xe]
0059e574  00 70 a0 e3                                      mov r7, #0
0059e578  03 80 a0 e1                                      mov r8, r3
0059e57c  00 00 00 ea                                      b #0x59e584
0059e580  be 00 d5 e1                                      ldrh r0, [r5, #0xe]
0059e584  97 40 20 e0                                      mla r0, r7, r0, r4
0059e588  01 70 87 e2                                      add r7, r7, #1
0059e58c  d3 00 f7 eb                                      bl #0x35e8e0
0059e590  08 00 57 e1                                      cmp r7, r8
0059e594  f9 ff ff 1a                                      bne #0x59e580
0059e598  28 ff ff ea                                      b #0x59e240
0059e59c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059e5a0  20 00 13 e3                                      tst r3, #0x20
0059e5a4  21 00 00 1a                                      bne #0x59e630
0059e5a8  00 30 a0 e3                                      mov r3, #0
0059e5ac  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059e5b0  a9 fe ff ea                                      b #0x59e05c
0059e5b4  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0059e5b8  20 00 13 e3                                      tst r3, #0x20
0059e5bc  25 00 00 1a                                      bne #0x59e658
0059e5c0  00 30 a0 e3                                      mov r3, #0
0059e5c4  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059e5c8  28 ff ff ea                                      b #0x59e270
0059e5cc  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0059e5d0  20 00 13 e3                                      tst r3, #0x20
0059e5d4  24 00 00 1a                                      bne #0x59e66c
0059e5d8  00 30 a0 e3                                      mov r3, #0
0059e5dc  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059e5e0  2f ff ff ea                                      b #0x59e2a4
0059e5e4  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0059e5e8  20 00 13 e3                                      tst r3, #0x20
0059e5ec  14 00 00 1a                                      bne #0x59e644
0059e5f0  00 30 a0 e3                                      mov r3, #0
0059e5f4  13 30 c5 e5                                      strb r3, [r5, #0x13]
0059e5f8  39 ff ff ea                                      b #0x59e2e4
0059e5fc  8c 00 9f e5                                      ldr r0, [pc, #0x8c]
0059e600  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0059e604  01 20 a0 e3                                      mov r2, #1
0059e608  00 00 8f e0                                      add r0, pc, r0
0059e60c  70 00 80 e2                                      add r0, r0, #0x70
0059e610  01 10 8f e0                                      add r1, pc, r1
0059e614  b3 b1 01 eb                                      bl #0x60ace8
0059e618  8f fe ff ea                                      b #0x59e05c
0059e61c  7c 00 8d e2                                      add r0, sp, #0x7c
0059e620  30 10 9d e5                                      ldr r1, [sp, #0x30]
0059e624  8f f6 ff eb                                      bl #0x59c068
0059e628  80 70 9d e5                                      ldr r7, [sp, #0x80]
0059e62c  b7 fe ff ea                                      b #0x59e110
0059e630  00 30 94 e5                                      ldr r3, [r4]
0059e634  04 00 a0 e1                                      mov r0, r4
0059e638  0f e0 a0 e1                                      mov lr, pc
0059e63c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059e640  d8 ff ff ea                                      b #0x59e5a8
0059e644  00 30 95 e5                                      ldr r3, [r5]
0059e648  05 00 a0 e1                                      mov r0, r5
0059e64c  0f e0 a0 e1                                      mov lr, pc
0059e650  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059e654  e5 ff ff ea                                      b #0x59e5f0
0059e658  00 30 95 e5                                      ldr r3, [r5]
0059e65c  05 00 a0 e1                                      mov r0, r5
0059e660  0f e0 a0 e1                                      mov lr, pc
0059e664  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059e668  d4 ff ff ea                                      b #0x59e5c0
0059e66c  00 30 95 e5                                      ldr r3, [r5]
0059e670  05 00 a0 e1                                      mov r0, r5
0059e674  0f e0 a0 e1                                      mov lr, pc
0059e678  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059e67c  d5 ff ff ea                                      b #0x59e5d8
; mapping-symbol data/literal pool
0059e680  34 17 34 00 bc 1a 34 00 10 17 34 00 48 1a 34 00  .byte 0x34, 0x17, 0x34, 0x00, 0xbc, 0x1a, 0x34, 0x00, 0x10, 0x17, 0x34, 0x00, 0x48, 0x1a, 0x34, 0x00
0059e690  78 11 34 00 78 14 34 00                          .byte 0x78, 0x11, 0x34, 0x00, 0x78, 0x14, 0x34, 0x00

; FUNCTION 0x0059e698, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene18recalculateNormalsERKN5boost13intrusive_ptrINS0_5IMeshEEEbb
; demangled: glitch::scene::recalculateNormals(boost::intrusive_ptr<glitch::scene::IMesh> const&, bool, bool)
; decoder-mode: arm
0059e698  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0059e69c  00 30 90 e5                                      ldr r3, [r0]
0059e6a0  0c d0 4d e2                                      sub sp, sp, #0xc
0059e6a4  00 60 a0 e1                                      mov r6, r0
0059e6a8  00 00 53 e3                                      cmp r3, #0
0059e6ac  01 70 a0 e1                                      mov r7, r1
0059e6b0  02 80 a0 e1                                      mov r8, r2
0059e6b4  19 00 00 0a                                      beq #0x59e720
0059e6b8  03 00 a0 e1                                      mov r0, r3
0059e6bc  00 30 93 e5                                      ldr r3, [r3]
0059e6c0  0f e0 a0 e1                                      mov lr, pc
0059e6c4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0059e6c8  00 a0 50 e2                                      subs sl, r0, #0
0059e6cc  13 00 00 0a                                      beq #0x59e720
0059e6d0  00 40 a0 e3                                      mov r4, #0
0059e6d4  04 50 8d e2                                      add r5, sp, #4
0059e6d8  00 30 96 e5                                      ldr r3, [r6]
0059e6dc  04 20 a0 e1                                      mov r2, r4
0059e6e0  05 00 a0 e1                                      mov r0, r5
0059e6e4  03 10 a0 e1                                      mov r1, r3
0059e6e8  00 30 93 e5                                      ldr r3, [r3]
0059e6ec  0f e0 a0 e1                                      mov lr, pc
0059e6f0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059e6f4  05 00 a0 e1                                      mov r0, r5
0059e6f8  07 10 a0 e1                                      mov r1, r7
0059e6fc  08 20 a0 e1                                      mov r2, r8
0059e700  37 fe ff eb                                      bl #0x59dfe4
0059e704  04 00 9d e5                                      ldr r0, [sp, #4]
0059e708  01 40 84 e2                                      add r4, r4, #1
0059e70c  00 00 50 e3                                      cmp r0, #0
0059e710  00 00 00 0a                                      beq #0x59e718
0059e714  9a fb f5 eb                                      bl #0x31d584
0059e718  0a 00 54 e1                                      cmp r4, sl
0059e71c  ed ff ff 1a                                      bne #0x59e6d8
0059e720  0c d0 8d e2                                      add sp, sp, #0xc
0059e724  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0059e728, declared_size=1848, range_size=1848, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_19transformERKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS_4core8CMatrix4IfEEPNS8_8aabbox3dIfEE
; demangled: glitch::scene::(anonymous namespace)::transform(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, glitch::core::CMatrix4<float> const&, glitch::core::aabbox3d<float>*)
; decoder-mode: arm
0059e728  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059e72c  00 30 90 e5                                      ldr r3, [r0]
0059e730  34 d0 4d e2                                      sub sp, sp, #0x34
0059e734  02 50 a0 e1                                      mov r5, r2
0059e738  14 30 93 e5                                      ldr r3, [r3, #0x14]
0059e73c  00 60 a0 e1                                      mov r6, r0
0059e740  2c 00 8d e2                                      add r0, sp, #0x2c
0059e744  00 00 53 e3                                      cmp r3, #0
0059e748  2c 30 8d e5                                      str r3, [sp, #0x2c]
0059e74c  00 20 93 15                                      ldrne r2, [r3]
0059e750  01 40 a0 e1                                      mov r4, r1
0059e754  01 20 82 12                                      addne r2, r2, #1
0059e758  00 20 83 15                                      strne r2, [r3]
0059e75c  2c 30 9d 15                                      ldrne r3, [sp, #0x2c]
0059e760  08 30 93 e5                                      ldr r3, [r3, #8]
0059e764  18 30 8d e5                                      str r3, [sp, #0x18]
0059e768  08 01 f7 eb                                      bl #0x35eb90
0059e76c  18 20 9d e5                                      ldr r2, [sp, #0x18]
0059e770  00 00 52 e3                                      cmp r2, #0
0059e774  01 00 00 1a                                      bne #0x59e780
0059e778  34 d0 8d e2                                      add sp, sp, #0x34
0059e77c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059e780  00 30 96 e5                                      ldr r3, [r6]
0059e784  11 10 a0 e3                                      mov r1, #0x11
0059e788  14 30 93 e5                                      ldr r3, [r3, #0x14]
0059e78c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0059e790  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
0059e794  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0059e798  14 30 83 e2                                      add r3, r3, #0x14
0059e79c  14 30 8d e5                                      str r3, [sp, #0x14]
0059e7a0  01 20 82 e2                                      add r2, r2, #1
0059e7a4  02 22 83 e0                                      add r2, r3, r2, lsl #4
0059e7a8  10 30 90 e5                                      ldr r3, [r0, #0x10]
0059e7ac  cf 08 00 eb                                      bl #0x5a0af0
0059e7b0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0059e7b4  00 60 a0 e1                                      mov r6, r0
0059e7b8  ba 30 dc e1                                      ldrh r3, [ip, #0xa]
0059e7bc  06 00 53 e3                                      cmp r3, #6
0059e7c0  07 00 00 0a                                      beq #0x59e7e4
0059e7c4  8c 06 9f e5                                      ldr r0, [pc, #0x68c]
0059e7c8  8c 16 9f e5                                      ldr r1, [pc, #0x68c]
0059e7cc  01 20 a0 e3                                      mov r2, #1
0059e7d0  00 00 8f e0                                      add r0, pc, r0
0059e7d4  88 00 80 e2                                      add r0, r0, #0x88
0059e7d8  01 10 8f e0                                      add r1, pc, r1
0059e7dc  41 b1 01 eb                                      bl #0x60ace8
0059e7e0  e4 ff ff ea                                      b #0x59e778
0059e7e4  bc 30 dc e1                                      ldrh r3, [ip, #0xc]
0059e7e8  03 00 53 e3                                      cmp r3, #3
0059e7ec  f4 ff ff 1a                                      bne #0x59e7c4
0059e7f0  ba 30 d0 e1                                      ldrh r3, [r0, #0xa]
0059e7f4  06 00 53 e3                                      cmp r3, #6
0059e7f8  f1 ff ff 1a                                      bne #0x59e7c4
0059e7fc  bc 30 d0 e1                                      ldrh r3, [r0, #0xc]
0059e800  03 00 53 e3                                      cmp r3, #3
0059e804  ee ff ff 1a                                      bne #0x59e7c4
0059e808  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0059e80c  05 10 a0 e3                                      mov r1, #5
0059e810  14 00 93 e5                                      ldr r0, [r3, #0x14]
0059e814  75 0c 00 eb                                      bl #0x5a19f0
0059e818  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0059e81c  00 30 a0 e3                                      mov r3, #0
0059e820  00 80 a0 e1                                      mov r8, r0
0059e824  04 a0 9c e5                                      ldr sl, [ip, #4]
0059e828  06 10 a0 e1                                      mov r1, r6
0059e82c  24 00 8d e2                                      add r0, sp, #0x24
0059e830  28 30 8d e5                                      str r3, [sp, #0x28]
0059e834  24 30 8d e5                                      str r3, [sp, #0x24]
0059e838  e4 f5 ff eb                                      bl #0x59bfd0
0059e83c  0a 60 98 e7                                      ldr r6, [r8, sl]
0059e840  04 10 94 e5                                      ldr r1, [r4, #4]
0059e844  0a 70 88 e0                                      add r7, r8, sl
0059e848  06 00 a0 e1                                      mov r0, r6
0059e84c  46 c1 f5 eb                                      bl #0x30ed6c
0059e850  04 90 97 e5                                      ldr sb, [r7, #4]
0059e854  14 10 94 e5                                      ldr r1, [r4, #0x14]
0059e858  00 30 a0 e1                                      mov r3, r0
0059e85c  09 00 a0 e1                                      mov r0, sb
0059e860  08 b0 97 e5                                      ldr fp, [r7, #8]
0059e864  04 30 8d e5                                      str r3, [sp, #4]
0059e868  3f c1 f5 eb                                      bl #0x30ed6c
0059e86c  04 30 9d e5                                      ldr r3, [sp, #4]
0059e870  00 10 a0 e1                                      mov r1, r0
0059e874  03 00 a0 e1                                      mov r0, r3
0059e878  c9 c0 f5 eb                                      bl #0x30eba4
0059e87c  24 10 94 e5                                      ldr r1, [r4, #0x24]
0059e880  00 30 a0 e1                                      mov r3, r0
0059e884  0b 00 a0 e1                                      mov r0, fp
0059e888  04 30 8d e5                                      str r3, [sp, #4]
0059e88c  36 c1 f5 eb                                      bl #0x30ed6c
0059e890  04 30 9d e5                                      ldr r3, [sp, #4]
0059e894  00 10 a0 e1                                      mov r1, r0
0059e898  03 00 a0 e1                                      mov r0, r3
0059e89c  c0 c0 f5 eb                                      bl #0x30eba4
0059e8a0  34 10 94 e5                                      ldr r1, [r4, #0x34]
0059e8a4  be c0 f5 eb                                      bl #0x30eba4
0059e8a8  08 10 94 e5                                      ldr r1, [r4, #8]
0059e8ac  00 20 a0 e1                                      mov r2, r0
0059e8b0  06 00 a0 e1                                      mov r0, r6
0059e8b4  08 20 8d e5                                      str r2, [sp, #8]
0059e8b8  2b c1 f5 eb                                      bl #0x30ed6c
0059e8bc  18 10 94 e5                                      ldr r1, [r4, #0x18]
0059e8c0  00 30 a0 e1                                      mov r3, r0
0059e8c4  09 00 a0 e1                                      mov r0, sb
0059e8c8  04 30 8d e5                                      str r3, [sp, #4]
0059e8cc  26 c1 f5 eb                                      bl #0x30ed6c
0059e8d0  04 30 9d e5                                      ldr r3, [sp, #4]
0059e8d4  00 10 a0 e1                                      mov r1, r0
0059e8d8  03 00 a0 e1                                      mov r0, r3
0059e8dc  b0 c0 f5 eb                                      bl #0x30eba4
0059e8e0  28 10 94 e5                                      ldr r1, [r4, #0x28]
0059e8e4  00 30 a0 e1                                      mov r3, r0
0059e8e8  0b 00 a0 e1                                      mov r0, fp
0059e8ec  04 30 8d e5                                      str r3, [sp, #4]
0059e8f0  1d c1 f5 eb                                      bl #0x30ed6c
0059e8f4  04 30 9d e5                                      ldr r3, [sp, #4]
0059e8f8  00 10 a0 e1                                      mov r1, r0
0059e8fc  03 00 a0 e1                                      mov r0, r3
0059e900  a7 c0 f5 eb                                      bl #0x30eba4
0059e904  38 10 94 e5                                      ldr r1, [r4, #0x38]
0059e908  a5 c0 f5 eb                                      bl #0x30eba4
0059e90c  00 10 94 e5                                      ldr r1, [r4]
0059e910  00 30 a0 e1                                      mov r3, r0
0059e914  06 00 a0 e1                                      mov r0, r6
0059e918  04 30 8d e5                                      str r3, [sp, #4]
0059e91c  12 c1 f5 eb                                      bl #0x30ed6c
0059e920  10 10 94 e5                                      ldr r1, [r4, #0x10]
0059e924  00 60 a0 e1                                      mov r6, r0
0059e928  09 00 a0 e1                                      mov r0, sb
0059e92c  0e c1 f5 eb                                      bl #0x30ed6c
0059e930  00 10 a0 e1                                      mov r1, r0
0059e934  06 00 a0 e1                                      mov r0, r6
0059e938  99 c0 f5 eb                                      bl #0x30eba4
0059e93c  20 10 94 e5                                      ldr r1, [r4, #0x20]
0059e940  00 60 a0 e1                                      mov r6, r0
0059e944  0b 00 a0 e1                                      mov r0, fp
0059e948  07 c1 f5 eb                                      bl #0x30ed6c
0059e94c  00 10 a0 e1                                      mov r1, r0
0059e950  06 00 a0 e1                                      mov r0, r6
0059e954  92 c0 f5 eb                                      bl #0x30eba4
0059e958  30 10 94 e5                                      ldr r1, [r4, #0x30]
0059e95c  90 c0 f5 eb                                      bl #0x30eba4
0059e960  0a 00 88 e7                                      str r0, [r8, sl]
0059e964  08 20 9d e5                                      ldr r2, [sp, #8]
0059e968  04 20 87 e5                                      str r2, [r7, #4]
0059e96c  04 30 9d e5                                      ldr r3, [sp, #4]
0059e970  08 30 87 e5                                      str r3, [r7, #8]
0059e974  28 60 9d e5                                      ldr r6, [sp, #0x28]
0059e978  00 00 56 e3                                      cmp r6, #0
0059e97c  41 00 00 0a                                      beq #0x59ea88
0059e980  00 90 96 e5                                      ldr sb, [r6]
0059e984  00 10 94 e5                                      ldr r1, [r4]
0059e988  04 b0 96 e5                                      ldr fp, [r6, #4]
0059e98c  09 00 a0 e1                                      mov r0, sb
0059e990  f5 c0 f5 eb                                      bl #0x30ed6c
0059e994  10 10 94 e5                                      ldr r1, [r4, #0x10]
0059e998  00 30 a0 e1                                      mov r3, r0
0059e99c  0b 00 a0 e1                                      mov r0, fp
0059e9a0  04 30 8d e5                                      str r3, [sp, #4]
0059e9a4  f0 c0 f5 eb                                      bl #0x30ed6c
0059e9a8  04 30 9d e5                                      ldr r3, [sp, #4]
0059e9ac  00 10 a0 e1                                      mov r1, r0
0059e9b0  03 00 a0 e1                                      mov r0, r3
0059e9b4  7a c0 f5 eb                                      bl #0x30eba4
0059e9b8  20 10 94 e5                                      ldr r1, [r4, #0x20]
0059e9bc  00 30 a0 e1                                      mov r3, r0
0059e9c0  08 00 96 e5                                      ldr r0, [r6, #8]
0059e9c4  04 30 8d e5                                      str r3, [sp, #4]
0059e9c8  e7 c0 f5 eb                                      bl #0x30ed6c
0059e9cc  04 30 9d e5                                      ldr r3, [sp, #4]
0059e9d0  00 10 a0 e1                                      mov r1, r0
0059e9d4  03 00 a0 e1                                      mov r0, r3
0059e9d8  71 c0 f5 eb                                      bl #0x30eba4
0059e9dc  00 00 86 e5                                      str r0, [r6]
0059e9e0  04 10 94 e5                                      ldr r1, [r4, #4]
0059e9e4  09 00 a0 e1                                      mov r0, sb
0059e9e8  df c0 f5 eb                                      bl #0x30ed6c
0059e9ec  14 10 94 e5                                      ldr r1, [r4, #0x14]
0059e9f0  00 30 a0 e1                                      mov r3, r0
0059e9f4  0b 00 a0 e1                                      mov r0, fp
0059e9f8  04 30 8d e5                                      str r3, [sp, #4]
0059e9fc  da c0 f5 eb                                      bl #0x30ed6c
0059ea00  04 30 9d e5                                      ldr r3, [sp, #4]
0059ea04  00 10 a0 e1                                      mov r1, r0
0059ea08  03 00 a0 e1                                      mov r0, r3
0059ea0c  64 c0 f5 eb                                      bl #0x30eba4
0059ea10  24 10 94 e5                                      ldr r1, [r4, #0x24]
0059ea14  00 30 a0 e1                                      mov r3, r0
0059ea18  08 00 96 e5                                      ldr r0, [r6, #8]
0059ea1c  04 30 8d e5                                      str r3, [sp, #4]
0059ea20  d1 c0 f5 eb                                      bl #0x30ed6c
0059ea24  04 30 9d e5                                      ldr r3, [sp, #4]
0059ea28  00 10 a0 e1                                      mov r1, r0
0059ea2c  03 00 a0 e1                                      mov r0, r3
0059ea30  5b c0 f5 eb                                      bl #0x30eba4
0059ea34  04 00 86 e5                                      str r0, [r6, #4]
0059ea38  08 10 94 e5                                      ldr r1, [r4, #8]
0059ea3c  09 00 a0 e1                                      mov r0, sb
0059ea40  c9 c0 f5 eb                                      bl #0x30ed6c
0059ea44  18 10 94 e5                                      ldr r1, [r4, #0x18]
0059ea48  00 90 a0 e1                                      mov sb, r0
0059ea4c  0b 00 a0 e1                                      mov r0, fp
0059ea50  c5 c0 f5 eb                                      bl #0x30ed6c
0059ea54  00 10 a0 e1                                      mov r1, r0
0059ea58  09 00 a0 e1                                      mov r0, sb
0059ea5c  50 c0 f5 eb                                      bl #0x30eba4
0059ea60  28 10 94 e5                                      ldr r1, [r4, #0x28]
0059ea64  00 90 a0 e1                                      mov sb, r0
0059ea68  08 00 96 e5                                      ldr r0, [r6, #8]
0059ea6c  be c0 f5 eb                                      bl #0x30ed6c
0059ea70  00 10 a0 e1                                      mov r1, r0
0059ea74  09 00 a0 e1                                      mov r0, sb
0059ea78  49 c0 f5 eb                                      bl #0x30eba4
0059ea7c  08 00 86 e5                                      str r0, [r6, #8]
0059ea80  28 00 9d e5                                      ldr r0, [sp, #0x28]
0059ea84  95 ff f6 eb                                      bl #0x35e8e0
0059ea88  00 00 55 e3                                      cmp r5, #0
0059ea8c  0b 00 00 0a                                      beq #0x59eac0
0059ea90  0a 30 98 e7                                      ldr r3, [r8, sl]
0059ea94  0c 30 85 e5                                      str r3, [r5, #0xc]
0059ea98  04 30 97 e5                                      ldr r3, [r7, #4]
0059ea9c  10 30 85 e5                                      str r3, [r5, #0x10]
0059eaa0  08 30 97 e5                                      ldr r3, [r7, #8]
0059eaa4  14 30 85 e5                                      str r3, [r5, #0x14]
0059eaa8  0a 30 98 e7                                      ldr r3, [r8, sl]
0059eaac  00 30 85 e5                                      str r3, [r5]
0059eab0  04 30 97 e5                                      ldr r3, [r7, #4]
0059eab4  04 30 85 e5                                      str r3, [r5, #4]
0059eab8  08 30 97 e5                                      ldr r3, [r7, #8]
0059eabc  08 30 85 e5                                      str r3, [r5, #8]
0059eac0  18 20 9d e5                                      ldr r2, [sp, #0x18]
0059eac4  01 00 52 e3                                      cmp r2, #1
0059eac8  b1 00 00 9a                                      bls #0x59ed94
0059eacc  01 60 a0 e3                                      mov r6, #1
0059ead0  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059ead4  04 10 94 e5                                      ldr r1, [r4, #4]
0059ead8  be a0 d3 e1                                      ldrh sl, [r3, #0xe]
0059eadc  9a 06 0a e0                                      mul sl, sl, r6
0059eae0  0a b0 97 e7                                      ldr fp, [r7, sl]
0059eae4  0a 80 87 e0                                      add r8, r7, sl
0059eae8  04 90 98 e5                                      ldr sb, [r8, #4]
0059eaec  0b 00 a0 e1                                      mov r0, fp
0059eaf0  9d c0 f5 eb                                      bl #0x30ed6c
0059eaf4  14 10 94 e5                                      ldr r1, [r4, #0x14]
0059eaf8  00 30 a0 e1                                      mov r3, r0
0059eafc  09 00 a0 e1                                      mov r0, sb
0059eb00  04 30 8d e5                                      str r3, [sp, #4]
0059eb04  98 c0 f5 eb                                      bl #0x30ed6c
0059eb08  04 30 9d e5                                      ldr r3, [sp, #4]
0059eb0c  00 10 a0 e1                                      mov r1, r0
0059eb10  03 00 a0 e1                                      mov r0, r3
0059eb14  22 c0 f5 eb                                      bl #0x30eba4
0059eb18  24 10 94 e5                                      ldr r1, [r4, #0x24]
0059eb1c  00 30 a0 e1                                      mov r3, r0
0059eb20  08 00 98 e5                                      ldr r0, [r8, #8]
0059eb24  04 30 8d e5                                      str r3, [sp, #4]
0059eb28  8f c0 f5 eb                                      bl #0x30ed6c
0059eb2c  04 30 9d e5                                      ldr r3, [sp, #4]
0059eb30  00 10 a0 e1                                      mov r1, r0
0059eb34  03 00 a0 e1                                      mov r0, r3
0059eb38  19 c0 f5 eb                                      bl #0x30eba4
0059eb3c  34 10 94 e5                                      ldr r1, [r4, #0x34]
0059eb40  17 c0 f5 eb                                      bl #0x30eba4
0059eb44  08 10 94 e5                                      ldr r1, [r4, #8]
0059eb48  00 20 a0 e1                                      mov r2, r0
0059eb4c  0b 00 a0 e1                                      mov r0, fp
0059eb50  08 20 8d e5                                      str r2, [sp, #8]
0059eb54  84 c0 f5 eb                                      bl #0x30ed6c
0059eb58  18 10 94 e5                                      ldr r1, [r4, #0x18]
0059eb5c  00 30 a0 e1                                      mov r3, r0
0059eb60  09 00 a0 e1                                      mov r0, sb
0059eb64  04 30 8d e5                                      str r3, [sp, #4]
0059eb68  7f c0 f5 eb                                      bl #0x30ed6c
0059eb6c  04 30 9d e5                                      ldr r3, [sp, #4]
0059eb70  00 10 a0 e1                                      mov r1, r0
0059eb74  03 00 a0 e1                                      mov r0, r3
0059eb78  09 c0 f5 eb                                      bl #0x30eba4
0059eb7c  28 10 94 e5                                      ldr r1, [r4, #0x28]
0059eb80  00 30 a0 e1                                      mov r3, r0
0059eb84  08 00 98 e5                                      ldr r0, [r8, #8]
0059eb88  04 30 8d e5                                      str r3, [sp, #4]
0059eb8c  76 c0 f5 eb                                      bl #0x30ed6c
0059eb90  04 30 9d e5                                      ldr r3, [sp, #4]
0059eb94  00 10 a0 e1                                      mov r1, r0
0059eb98  03 00 a0 e1                                      mov r0, r3
0059eb9c  00 c0 f5 eb                                      bl #0x30eba4
0059eba0  38 10 94 e5                                      ldr r1, [r4, #0x38]
0059eba4  fe bf f5 eb                                      bl #0x30eba4
0059eba8  00 10 94 e5                                      ldr r1, [r4]
0059ebac  00 30 a0 e1                                      mov r3, r0
0059ebb0  0b 00 a0 e1                                      mov r0, fp
0059ebb4  04 30 8d e5                                      str r3, [sp, #4]
0059ebb8  6b c0 f5 eb                                      bl #0x30ed6c
0059ebbc  10 10 94 e5                                      ldr r1, [r4, #0x10]
0059ebc0  00 b0 a0 e1                                      mov fp, r0
0059ebc4  09 00 a0 e1                                      mov r0, sb
0059ebc8  67 c0 f5 eb                                      bl #0x30ed6c
0059ebcc  00 10 a0 e1                                      mov r1, r0
0059ebd0  0b 00 a0 e1                                      mov r0, fp
0059ebd4  f2 bf f5 eb                                      bl #0x30eba4
0059ebd8  20 10 94 e5                                      ldr r1, [r4, #0x20]
0059ebdc  00 90 a0 e1                                      mov sb, r0
0059ebe0  08 00 98 e5                                      ldr r0, [r8, #8]
0059ebe4  60 c0 f5 eb                                      bl #0x30ed6c
0059ebe8  00 10 a0 e1                                      mov r1, r0
0059ebec  09 00 a0 e1                                      mov r0, sb
0059ebf0  eb bf f5 eb                                      bl #0x30eba4
0059ebf4  30 10 94 e5                                      ldr r1, [r4, #0x30]
0059ebf8  e9 bf f5 eb                                      bl #0x30eba4
0059ebfc  0a 00 87 e7                                      str r0, [r7, sl]
0059ec00  04 30 9d e5                                      ldr r3, [sp, #4]
0059ec04  08 30 88 e5                                      str r3, [r8, #8]
0059ec08  08 20 9d e5                                      ldr r2, [sp, #8]
0059ec0c  04 20 88 e5                                      str r2, [r8, #4]
0059ec10  28 80 9d e5                                      ldr r8, [sp, #0x28]
0059ec14  00 00 58 e3                                      cmp r8, #0
0059ec18  47 00 00 0a                                      beq #0x59ed3c
0059ec1c  24 30 9d e5                                      ldr r3, [sp, #0x24]
0059ec20  00 10 94 e5                                      ldr r1, [r4]
0059ec24  be b0 d3 e1                                      ldrh fp, [r3, #0xe]
0059ec28  9b 06 0b e0                                      mul fp, fp, r6
0059ec2c  0b 90 98 e7                                      ldr sb, [r8, fp]
0059ec30  0b a0 88 e0                                      add sl, r8, fp
0059ec34  04 c0 9a e5                                      ldr ip, [sl, #4]
0059ec38  09 00 a0 e1                                      mov r0, sb
0059ec3c  10 c0 8d e5                                      str ip, [sp, #0x10]
0059ec40  49 c0 f5 eb                                      bl #0x30ed6c
0059ec44  08 20 9a e5                                      ldr r2, [sl, #8]
0059ec48  10 10 94 e5                                      ldr r1, [r4, #0x10]
0059ec4c  00 30 a0 e1                                      mov r3, r0
0059ec50  10 00 9d e5                                      ldr r0, [sp, #0x10]
0059ec54  0c 20 8d e5                                      str r2, [sp, #0xc]
0059ec58  04 30 8d e5                                      str r3, [sp, #4]
0059ec5c  42 c0 f5 eb                                      bl #0x30ed6c
0059ec60  04 30 9d e5                                      ldr r3, [sp, #4]
0059ec64  00 10 a0 e1                                      mov r1, r0
0059ec68  03 00 a0 e1                                      mov r0, r3
0059ec6c  cc bf f5 eb                                      bl #0x30eba4
0059ec70  20 10 94 e5                                      ldr r1, [r4, #0x20]
0059ec74  00 30 a0 e1                                      mov r3, r0
0059ec78  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059ec7c  04 30 8d e5                                      str r3, [sp, #4]
0059ec80  39 c0 f5 eb                                      bl #0x30ed6c
0059ec84  04 30 9d e5                                      ldr r3, [sp, #4]
0059ec88  00 10 a0 e1                                      mov r1, r0
0059ec8c  03 00 a0 e1                                      mov r0, r3
0059ec90  c3 bf f5 eb                                      bl #0x30eba4
0059ec94  0b 00 88 e7                                      str r0, [r8, fp]
0059ec98  04 10 94 e5                                      ldr r1, [r4, #4]
0059ec9c  09 00 a0 e1                                      mov r0, sb
0059eca0  31 c0 f5 eb                                      bl #0x30ed6c
0059eca4  14 10 94 e5                                      ldr r1, [r4, #0x14]
0059eca8  00 80 a0 e1                                      mov r8, r0
0059ecac  10 00 9d e5                                      ldr r0, [sp, #0x10]
0059ecb0  2d c0 f5 eb                                      bl #0x30ed6c
0059ecb4  00 10 a0 e1                                      mov r1, r0
0059ecb8  08 00 a0 e1                                      mov r0, r8
0059ecbc  b8 bf f5 eb                                      bl #0x30eba4
0059ecc0  24 10 94 e5                                      ldr r1, [r4, #0x24]
0059ecc4  00 80 a0 e1                                      mov r8, r0
0059ecc8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059eccc  26 c0 f5 eb                                      bl #0x30ed6c
0059ecd0  00 10 a0 e1                                      mov r1, r0
0059ecd4  08 00 a0 e1                                      mov r0, r8
0059ecd8  b1 bf f5 eb                                      bl #0x30eba4
0059ecdc  04 00 8a e5                                      str r0, [sl, #4]
0059ece0  08 10 94 e5                                      ldr r1, [r4, #8]
0059ece4  09 00 a0 e1                                      mov r0, sb
0059ece8  1f c0 f5 eb                                      bl #0x30ed6c
0059ecec  18 10 94 e5                                      ldr r1, [r4, #0x18]
0059ecf0  00 80 a0 e1                                      mov r8, r0
0059ecf4  10 00 9d e5                                      ldr r0, [sp, #0x10]
0059ecf8  1b c0 f5 eb                                      bl #0x30ed6c
0059ecfc  00 10 a0 e1                                      mov r1, r0
0059ed00  08 00 a0 e1                                      mov r0, r8
0059ed04  a6 bf f5 eb                                      bl #0x30eba4
0059ed08  28 10 94 e5                                      ldr r1, [r4, #0x28]
0059ed0c  00 80 a0 e1                                      mov r8, r0
0059ed10  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0059ed14  14 c0 f5 eb                                      bl #0x30ed6c
0059ed18  00 10 a0 e1                                      mov r1, r0
0059ed1c  08 00 a0 e1                                      mov r0, r8
0059ed20  9f bf f5 eb                                      bl #0x30eba4
0059ed24  08 00 8a e5                                      str r0, [sl, #8]
0059ed28  24 30 9d e5                                      ldr r3, [sp, #0x24]
0059ed2c  be 00 d3 e1                                      ldrh r0, [r3, #0xe]
0059ed30  28 30 9d e5                                      ldr r3, [sp, #0x28]
0059ed34  90 36 20 e0                                      mla r0, r0, r6, r3
0059ed38  e8 fe f6 eb                                      bl #0x35e8e0
0059ed3c  00 00 55 e3                                      cmp r5, #0
0059ed40  0f 00 00 0a                                      beq #0x59ed84
0059ed44  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059ed48  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
0059ed4c  92 06 02 e0                                      mul r2, r2, r6
0059ed50  02 10 97 e7                                      ldr r1, [r7, r2]
0059ed54  02 30 87 e0                                      add r3, r7, r2
0059ed58  0c 10 85 e5                                      str r1, [r5, #0xc]
0059ed5c  04 10 93 e5                                      ldr r1, [r3, #4]
0059ed60  10 10 85 e5                                      str r1, [r5, #0x10]
0059ed64  08 10 93 e5                                      ldr r1, [r3, #8]
0059ed68  14 10 85 e5                                      str r1, [r5, #0x14]
0059ed6c  02 20 97 e7                                      ldr r2, [r7, r2]
0059ed70  00 20 85 e5                                      str r2, [r5]
0059ed74  04 20 93 e5                                      ldr r2, [r3, #4]
0059ed78  04 20 85 e5                                      str r2, [r5, #4]
0059ed7c  08 30 93 e5                                      ldr r3, [r3, #8]
0059ed80  08 30 85 e5                                      str r3, [r5, #8]
0059ed84  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0059ed88  01 60 86 e2                                      add r6, r6, #1
0059ed8c  0c 00 56 e1                                      cmp r6, ip
0059ed90  4e ff ff 1a                                      bne #0x59ead0
0059ed94  28 30 9d e5                                      ldr r3, [sp, #0x28]
0059ed98  00 00 53 e3                                      cmp r3, #0
0059ed9c  0c 00 00 0a                                      beq #0x59edd4
0059eda0  24 30 9d e5                                      ldr r3, [sp, #0x24]
0059eda4  00 40 93 e5                                      ldr r4, [r3]
0059eda8  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059edac  1f 20 03 e2                                      and r2, r3, #0x1f
0059edb0  01 00 52 e3                                      cmp r2, #1
0059edb4  11 00 00 9a                                      bls #0x59ee00
0059edb8  01 20 42 e2                                      sub r2, r2, #1
0059edbc  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059edc0  03 30 82 e1                                      orr r3, r2, r3
0059edc4  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059edc8  00 30 a0 e3                                      mov r3, #0
0059edcc  28 30 8d e5                                      str r3, [sp, #0x28]
0059edd0  24 30 8d e5                                      str r3, [sp, #0x24]
0059edd4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0059edd8  14 40 92 e5                                      ldr r4, [r2, #0x14]
0059eddc  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0059ede0  1f 20 03 e2                                      and r2, r3, #0x1f
0059ede4  01 00 52 e3                                      cmp r2, #1
0059ede8  0a 00 00 9a                                      bls #0x59ee18
0059edec  01 20 42 e2                                      sub r2, r2, #1
0059edf0  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059edf4  03 30 82 e1                                      orr r3, r2, r3
0059edf8  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059edfc  5d fe ff ea                                      b #0x59e778
0059ee00  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059ee04  20 00 13 e3                                      tst r3, #0x20
0059ee08  08 00 00 1a                                      bne #0x59ee30
0059ee0c  00 30 a0 e3                                      mov r3, #0
0059ee10  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059ee14  eb ff ff ea                                      b #0x59edc8
0059ee18  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0059ee1c  20 00 13 e3                                      tst r3, #0x20
0059ee20  07 00 00 1a                                      bne #0x59ee44
0059ee24  00 30 a0 e3                                      mov r3, #0
0059ee28  13 30 c4 e5                                      strb r3, [r4, #0x13]
0059ee2c  51 fe ff ea                                      b #0x59e778
0059ee30  00 30 94 e5                                      ldr r3, [r4]
0059ee34  04 00 a0 e1                                      mov r0, r4
0059ee38  0f e0 a0 e1                                      mov lr, pc
0059ee3c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059ee40  f1 ff ff ea                                      b #0x59ee0c
0059ee44  00 30 94 e5                                      ldr r3, [r4]
0059ee48  04 00 a0 e1                                      mov r0, r4
0059ee4c  0f e0 a0 e1                                      mov lr, pc
0059ee50  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059ee54  f2 ff ff ea                                      b #0x59ee24
; mapping-symbol data/literal pool
0059ee58  b0 0f 34 00 78 12 34 00                          .byte 0xb0, 0x0f, 0x34, 0x00, 0x78, 0x12, 0x34, 0x00

; FUNCTION 0x0059ee60, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene9transformERKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS_4core8CMatrix4IfEERNS7_8aabbox3dIfEE
; demangled: glitch::scene::transform(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, glitch::core::CMatrix4<float> const&, glitch::core::aabbox3d<float>&)
; decoder-mode: arm
0059ee60  30 fe ff ea                                      b #0x59e728

; FUNCTION 0x0059ee64, declared_size=328, range_size=328, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene9transformERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS_4core8CMatrix4IfEE
; demangled: glitch::scene::transform(boost::intrusive_ptr<glitch::scene::IMesh> const&, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0059ee64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059ee68  00 30 90 e5                                      ldr r3, [r0]
0059ee6c  44 d0 4d e2                                      sub sp, sp, #0x44
0059ee70  00 a0 a0 e1                                      mov sl, r0
0059ee74  00 00 53 e3                                      cmp r3, #0
0059ee78  01 90 a0 e1                                      mov sb, r1
0059ee7c  48 00 00 0a                                      beq #0x59efa4
0059ee80  bf 64 a0 e3                                      mov r6, #0xbf000000
0059ee84  02 65 86 e2                                      add r6, r6, #0x800000
0059ee88  fe 55 a0 e3                                      mov r5, #0x3f800000
0059ee8c  24 60 8d e5                                      str r6, [sp, #0x24]
0059ee90  28 60 8d e5                                      str r6, [sp, #0x28]
0059ee94  2c 60 8d e5                                      str r6, [sp, #0x2c]
0059ee98  30 50 8d e5                                      str r5, [sp, #0x30]
0059ee9c  34 50 8d e5                                      str r5, [sp, #0x34]
0059eea0  38 50 8d e5                                      str r5, [sp, #0x38]
0059eea4  03 00 a0 e1                                      mov r0, r3
0059eea8  00 30 93 e5                                      ldr r3, [r3]
0059eeac  0f e0 a0 e1                                      mov lr, pc
0059eeb0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0059eeb4  00 b0 50 e2                                      subs fp, r0, #0
0059eeb8  24 30 8d 02                                      addeq r3, sp, #0x24
0059eebc  04 30 8d 05                                      streq r3, [sp, #4]
0059eec0  31 00 00 0a                                      beq #0x59ef8c
0059eec4  24 30 8d e2                                      add r3, sp, #0x24
0059eec8  00 40 a0 e3                                      mov r4, #0
0059eecc  3c 70 8d e2                                      add r7, sp, #0x3c
0059eed0  0c 80 8d e2                                      add r8, sp, #0xc
0059eed4  04 30 8d e5                                      str r3, [sp, #4]
0059eed8  0e 00 00 ea                                      b #0x59ef18
0059eedc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059eee0  01 40 84 e2                                      add r4, r4, #1
0059eee4  0b 00 54 e1                                      cmp r4, fp
0059eee8  24 30 8d e5                                      str r3, [sp, #0x24]
0059eeec  10 30 9d e5                                      ldr r3, [sp, #0x10]
0059eef0  28 30 8d e5                                      str r3, [sp, #0x28]
0059eef4  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059eef8  2c 30 8d e5                                      str r3, [sp, #0x2c]
0059eefc  18 30 9d e5                                      ldr r3, [sp, #0x18]
0059ef00  30 30 8d e5                                      str r3, [sp, #0x30]
0059ef04  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0059ef08  34 30 8d e5                                      str r3, [sp, #0x34]
0059ef0c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0059ef10  38 30 8d e5                                      str r3, [sp, #0x38]
0059ef14  1c 00 00 0a                                      beq #0x59ef8c
0059ef18  00 30 9a e5                                      ldr r3, [sl]
0059ef1c  0c 60 8d e5                                      str r6, [sp, #0xc]
0059ef20  10 60 8d e5                                      str r6, [sp, #0x10]
0059ef24  14 60 8d e5                                      str r6, [sp, #0x14]
0059ef28  18 50 8d e5                                      str r5, [sp, #0x18]
0059ef2c  1c 50 8d e5                                      str r5, [sp, #0x1c]
0059ef30  20 50 8d e5                                      str r5, [sp, #0x20]
0059ef34  03 10 a0 e1                                      mov r1, r3
0059ef38  04 20 a0 e1                                      mov r2, r4
0059ef3c  00 30 93 e5                                      ldr r3, [r3]
0059ef40  07 00 a0 e1                                      mov r0, r7
0059ef44  0f e0 a0 e1                                      mov lr, pc
0059ef48  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0059ef4c  07 00 a0 e1                                      mov r0, r7
0059ef50  09 10 a0 e1                                      mov r1, sb
0059ef54  08 20 a0 e1                                      mov r2, r8
0059ef58  c0 ff ff eb                                      bl #0x59ee60
0059ef5c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0059ef60  00 00 50 e3                                      cmp r0, #0
0059ef64  00 00 00 0a                                      beq #0x59ef6c
0059ef68  85 f9 f5 eb                                      bl #0x31d584
0059ef6c  00 00 54 e3                                      cmp r4, #0
0059ef70  d9 ff ff 0a                                      beq #0x59eedc
0059ef74  04 00 9d e5                                      ldr r0, [sp, #4]
0059ef78  08 10 a0 e1                                      mov r1, r8
0059ef7c  01 40 84 e2                                      add r4, r4, #1
0059ef80  72 f4 f6 eb                                      bl #0x35c150
0059ef84  0b 00 54 e1                                      cmp r4, fp
0059ef88  e2 ff ff 1a                                      bne #0x59ef18
0059ef8c  00 30 9a e5                                      ldr r3, [sl]
0059ef90  04 10 9d e5                                      ldr r1, [sp, #4]
0059ef94  03 00 a0 e1                                      mov r0, r3
0059ef98  00 30 93 e5                                      ldr r3, [r3]
0059ef9c  0f e0 a0 e1                                      mov lr, pc
0059efa0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0059efa4  44 d0 8d e2                                      add sp, sp, #0x44
0059efa8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0059efac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene9transformERKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS_4core8CMatrix4IfEE
; demangled: glitch::scene::transform(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0059efac  00 20 a0 e3                                      mov r2, #0
0059efb0  dc fd ff ea                                      b #0x59e728

; FUNCTION 0x006bccf0, declared_size=656, range_size=656, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE
; demangled: glitch::scene::(anonymous namespace)::addStream(glitch::video::IVideoDriver*, glitch::collada::SMesh&, glitch::collada::SMeshBuffer&, char, glitch::video::SVertexStreamData*, unsigned char, glitch::collada::SBufferConfig const&)
; decoder-mode: arm
006bccf0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006bccf4  01 50 a0 e1                                      mov r5, r1
006bccf8  00 10 91 e5                                      ldr r1, [r1]
006bccfc  74 62 9f e5                                      ldr r6, [pc, #0x274]
006bcd00  24 d0 4d e2                                      sub sp, sp, #0x24
006bcd04  00 00 51 e3                                      cmp r1, #0
006bcd08  06 60 8f e0                                      add r6, pc, r6
006bcd0c  00 c0 a0 e1                                      mov ip, r0
006bcd10  03 80 a0 e1                                      mov r8, r3
006bcd14  48 a0 9d e5                                      ldr sl, [sp, #0x48]
006bcd18  4c 70 dd e5                                      ldrb r7, [sp, #0x4c]
006bcd1c  38 00 00 0a                                      beq #0x6bce04
006bcd20  08 20 95 e5                                      ldr r2, [r5, #8]
006bcd24  28 40 92 e5                                      ldr r4, [r2, #0x28]
006bcd28  00 00 54 e3                                      cmp r4, #0
006bcd2c  23 00 00 0a                                      beq #0x6bcdc0
006bcd30  04 30 94 e5                                      ldr r3, [r4, #4]
006bcd34  01 30 83 e2                                      add r3, r3, #1
006bcd38  04 30 84 e5                                      str r3, [r4, #4]
006bcd3c  00 c0 95 e5                                      ldr ip, [r5]
006bcd40  00 00 5c e3                                      cmp ip, #0
006bcd44  1c 00 00 1a                                      bne #0x6bcdbc
006bcd48  14 30 a0 e3                                      mov r3, #0x14
006bcd4c  08 20 95 e5                                      ldr r2, [r5, #8]
006bcd50  93 08 08 e0                                      mul r8, r3, r8
006bcd54  20 12 9f e5                                      ldr r1, [pc, #0x220]
006bcd58  08 30 92 e7                                      ldr r3, [r2, r8]
006bcd5c  08 80 82 e0                                      add r8, r2, r8
006bcd60  01 10 96 e7                                      ldr r1, [r6, r1]
006bcd64  04 20 98 e5                                      ldr r2, [r8, #4]
006bcd68  00 00 54 e3                                      cmp r4, #0
006bcd6c  03 00 d1 e7                                      ldrb r0, [r1, r3]
006bcd70  72 10 ff e6                                      uxth r1, r2
006bcd74  07 42 8a e7                                      str r4, [sl, r7, lsl #4]
006bcd78  92 00 02 e0                                      mul r2, r2, r0
006bcd7c  07 a2 8a e0                                      add sl, sl, r7, lsl #4
006bcd80  72 20 ff e6                                      uxth r2, r2
006bcd84  19 00 00 0a                                      beq #0x6bcdf0
006bcd88  04 e0 94 e5                                      ldr lr, [r4, #4]
006bcd8c  04 00 a0 e1                                      mov r0, r4
006bcd90  01 e0 8e e2                                      add lr, lr, #1
006bcd94  04 e0 84 e5                                      str lr, [r4, #4]
006bcd98  be 20 ca e1                                      strh r2, [sl, #0xe]
006bcd9c  04 c0 8a e5                                      str ip, [sl, #4]
006bcda0  08 30 8a e5                                      str r3, [sl, #8]
006bcda4  bc 10 ca e1                                      strh r1, [sl, #0xc]
006bcda8  f5 81 f1 eb                                      bl #0x31d584
006bcdac  01 00 87 e2                                      add r0, r7, #1
006bcdb0  70 00 ef e6                                      uxtb r0, r0
006bcdb4  24 d0 8d e2                                      add sp, sp, #0x24
006bcdb8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006bcdbc  08 20 95 e5                                      ldr r2, [r5, #8]
006bcdc0  18 10 92 e5                                      ldr r1, [r2, #0x18]
006bcdc4  08 00 92 e5                                      ldr r0, [r2, #8]
006bcdc8  10 30 92 e5                                      ldr r3, [r2, #0x10]
006bcdcc  08 11 91 e7                                      ldr r1, [r1, r8, lsl #2]
006bcdd0  00 00 54 e3                                      cmp r4, #0
006bcdd4  08 c1 90 e7                                      ldr ip, [r0, r8, lsl #2]
006bcdd8  08 31 93 e7                                      ldr r3, [r3, r8, lsl #2]
006bcddc  b0 20 d2 e1                                      ldrh r2, [r2]
006bcde0  71 10 ff e6                                      uxth r1, r1
006bcde4  07 42 8a e7                                      str r4, [sl, r7, lsl #4]
006bcde8  07 a2 8a e0                                      add sl, sl, r7, lsl #4
006bcdec  e5 ff ff 1a                                      bne #0x6bcd88
006bcdf0  be 20 ca e1                                      strh r2, [sl, #0xe]
006bcdf4  04 c0 8a e5                                      str ip, [sl, #4]
006bcdf8  08 30 8a e5                                      str r3, [sl, #8]
006bcdfc  bc 10 ca e1                                      strh r1, [sl, #0xc]
006bce00  e9 ff ff ea                                      b #0x6bcdac
006bce04  14 10 a0 e3                                      mov r1, #0x14
006bce08  08 30 95 e5                                      ldr r3, [r5, #8]
006bce0c  91 08 09 e0                                      mul sb, r1, r8
006bce10  09 b0 83 e0                                      add fp, r3, sb
006bce14  10 40 9b e5                                      ldr r4, [fp, #0x10]
006bce18  00 00 54 e3                                      cmp r4, #0
006bce1c  1a 00 00 0a                                      beq #0x6bce8c
006bce20  50 30 9d e5                                      ldr r3, [sp, #0x50]
006bce24  00 b0 93 e5                                      ldr fp, [r3]
006bce28  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
006bce2c  03 00 5b e1                                      cmp fp, r3
006bce30  0e 00 00 0a                                      beq #0x6bce70
006bce34  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006bce38  08 00 13 e3                                      tst r3, #8
006bce3c  48 00 00 1a                                      bne #0x6bcf64
006bce40  7b b0 ef e6                                      uxtb fp, fp
006bce44  04 00 5b e3                                      cmp fp, #4
006bce48  11 b0 c4 e5                                      strb fp, [r4, #0x11]
006bce4c  04 00 00 0a                                      beq #0x6bce64
006bce50  08 30 94 e5                                      ldr r3, [r4, #8]
006bce54  00 00 53 e3                                      cmp r3, #0
006bce58  12 30 d4 15                                      ldrbne r3, [r4, #0x12]
006bce5c  02 30 83 13                                      orrne r3, r3, #2
006bce60  12 30 c4 15                                      strbne r3, [r4, #0x12]
006bce64  08 30 95 e5                                      ldr r3, [r5, #8]
006bce68  09 30 83 e0                                      add r3, r3, sb
006bce6c  10 40 93 e5                                      ldr r4, [r3, #0x10]
006bce70  50 20 9d e5                                      ldr r2, [sp, #0x50]
006bce74  04 30 d2 e5                                      ldrb r3, [r2, #4]
006bce78  00 00 53 e3                                      cmp r3, #0
006bce7c  27 00 00 1a                                      bne #0x6bcf20
006bce80  00 00 54 e3                                      cmp r4, #0
006bce84  a9 ff ff 1a                                      bne #0x6bcd30
006bce88  ab ff ff ea                                      b #0x6bcd3c
006bce8c  dc 00 d2 e1                                      ldrsb r0, [r2, #0xc]
006bce90  56 25 05 e3                                      movw r2, #0x5556
006bce94  55 25 45 e3                                      movt r2, #0x5555
006bce98  91 30 21 e0                                      mla r1, r1, r0, r3
006bce9c  d8 00 9f e5                                      ldr r0, [pc, #0xd8]
006bcea0  08 10 91 e5                                      ldr r1, [r1, #8]
006bcea4  09 30 93 e7                                      ldr r3, [r3, sb]
006bcea8  00 00 96 e7                                      ldr r0, [r6, r0]
006bceac  92 e1 c2 e0                                      smull lr, r2, r2, r1
006bceb0  04 e0 9b e5                                      ldr lr, [fp, #4]
006bceb4  c1 2f 42 e0                                      sub r2, r2, r1, asr #31
006bceb8  03 00 d0 e7                                      ldrb r0, [r0, r3]
006bcebc  9e 02 0e e0                                      mul lr, lr, r2
006bcec0  50 20 9d e5                                      ldr r2, [sp, #0x50]
006bcec4  90 0e 0e e0                                      mul lr, r0, lr
006bcec8  00 30 92 e5                                      ldr r3, [r2]
006bcecc  1c 20 8d e2                                      add r2, sp, #0x1c
006bced0  14 20 8d e5                                      str r2, [sp, #0x14]
006bced4  00 e0 8d e5                                      str lr, [sp]
006bced8  0c 10 9b e5                                      ldr r1, [fp, #0xc]
006bcedc  08 40 8d e5                                      str r4, [sp, #8]
006bcee0  04 20 a0 e1                                      mov r2, r4
006bcee4  04 10 8d e5                                      str r1, [sp, #4]
006bcee8  14 00 9d e5                                      ldr r0, [sp, #0x14]
006bceec  0c 10 a0 e1                                      mov r1, ip
006bcef0  00 c0 9c e5                                      ldr ip, [ip]
006bcef4  0f e0 a0 e1                                      mov lr, pc
006bcef8  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006bcefc  14 10 9d e5                                      ldr r1, [sp, #0x14]
006bcf00  10 00 8b e2                                      add r0, fp, #0x10
006bcf04  60 fe ff eb                                      bl #0x6bc88c
006bcf08  14 00 9d e5                                      ldr r0, [sp, #0x14]
006bcf0c  1e eb fd eb                                      bl #0x637b8c
006bcf10  08 30 95 e5                                      ldr r3, [r5, #8]
006bcf14  09 30 83 e0                                      add r3, r3, sb
006bcf18  10 40 93 e5                                      ldr r4, [r3, #0x10]
006bcf1c  d3 ff ff ea                                      b #0x6bce70
006bcf20  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006bcf24  05 10 d2 e5                                      ldrb r1, [r2, #5]
006bcf28  08 00 13 e3                                      tst r3, #8
006bcf2c  01 00 00 0a                                      beq #0x6bcf38
006bcf30  02 00 13 e3                                      tst r3, #2
006bcf34  d1 ff ff 0a                                      beq #0x6bce80
006bcf38  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
006bcf3c  04 00 53 e3                                      cmp r3, #4
006bcf40  ce ff ff 0a                                      beq #0x6bce80
006bcf44  00 30 94 e5                                      ldr r3, [r4]
006bcf48  04 00 a0 e1                                      mov r0, r4
006bcf4c  0f e0 a0 e1                                      mov lr, pc
006bcf50  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006bcf54  08 30 95 e5                                      ldr r3, [r5, #8]
006bcf58  09 90 83 e0                                      add sb, r3, sb
006bcf5c  10 40 99 e5                                      ldr r4, [sb, #0x10]
006bcf60  c6 ff ff ea                                      b #0x6bce80
006bcf64  00 30 94 e5                                      ldr r3, [r4]
006bcf68  04 00 a0 e1                                      mov r0, r4
006bcf6c  0f e0 a0 e1                                      mov lr, pc
006bcf70  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006bcf74  b1 ff ff ea                                      b #0x6bce40
; mapping-symbol data/literal pool
006bcf78  88 7d 2d 00 08 11 00 00                          .byte 0x88, 0x7d, 0x2d, 0x00, 0x08, 0x11, 0x00, 0x00

; FUNCTION 0x006d6e00, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene17createTerrainMeshERKN5boost13intrusive_ptrINS_5video6CImageEEES7_RKNS_4core11dimension2dIfEEfPNS3_12IVideoDriverERKNS9_IiEEb
; demangled: glitch::scene::createTerrainMesh(boost::intrusive_ptr<glitch::video::CImage> const&, boost::intrusive_ptr<glitch::video::CImage> const&, glitch::core::dimension2d<float> const&, float, glitch::video::IVideoDriver*, glitch::core::dimension2d<int> const&, bool)
; decoder-mode: arm
006d6e00  00 20 a0 e3                                      mov r2, #0
006d6e04  00 20 80 e5                                      str r2, [r0]
006d6e08  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d6e2c, declared_size=436, range_size=436, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_116createMeshBufferEjPNS_5video12IVideoDriverEjj
; demangled: glitch::scene::(anonymous namespace)::createMeshBuffer(unsigned int, glitch::video::IVideoDriver*, unsigned int, unsigned int)
; decoder-mode: arm
006d6e2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d6e30  1c d0 4d e2                                      sub sp, sp, #0x1c
006d6e34  40 90 9d e5                                      ldr sb, [sp, #0x40]
006d6e38  02 50 a0 e1                                      mov r5, r2
006d6e3c  00 20 92 e5                                      ldr r2, [r2]
006d6e40  89 a0 a0 e1                                      lsl sl, sb, #1
006d6e44  00 60 a0 e1                                      mov r6, r0
006d6e48  01 80 a0 e1                                      mov r8, r1
006d6e4c  0a 00 a0 e1                                      mov r0, sl
006d6e50  00 10 a0 e3                                      mov r1, #0
006d6e54  78 40 92 e5                                      ldr r4, [r2, #0x78]
006d6e58  03 70 a0 e1                                      mov r7, r3
006d6e5c  d1 74 f9 eb                                      bl #0x5341a8
006d6e60  01 20 a0 e3                                      mov r2, #1
006d6e64  04 30 a0 e3                                      mov r3, #4
006d6e68  05 00 8d e9                                      stmib sp, {r0, r2}
006d6e6c  00 a0 8d e5                                      str sl, [sp]
006d6e70  14 00 8d e2                                      add r0, sp, #0x14
006d6e74  05 10 a0 e1                                      mov r1, r5
006d6e78  34 ff 2f e1                                      blx r4
006d6e7c  14 a0 9d e5                                      ldr sl, [sp, #0x14]
006d6e80  00 10 a0 e3                                      mov r1, #0
006d6e84  38 00 a0 e3                                      mov r0, #0x38
006d6e88  00 00 5a e3                                      cmp sl, #0
006d6e8c  04 30 9a 15                                      ldrne r3, [sl, #4]
006d6e90  40 b1 9f e5                                      ldr fp, [pc, #0x140]
006d6e94  01 30 83 12                                      addne r3, r3, #1
006d6e98  04 30 8a 15                                      strne r3, [sl, #4]
006d6e9c  c2 74 f9 eb                                      bl #0x5341ac
006d6ea0  34 21 9f e5                                      ldr r2, [pc, #0x134]
006d6ea4  0b b0 8f e0                                      add fp, pc, fp
006d6ea8  00 30 a0 e3                                      mov r3, #0
006d6eac  02 20 9b e7                                      ldr r2, [fp, r2]
006d6eb0  00 40 a0 e1                                      mov r4, r0
006d6eb4  10 30 80 e5                                      str r3, [r0, #0x10]
006d6eb8  08 20 82 e2                                      add r2, r2, #8
006d6ebc  04 30 80 e5                                      str r3, [r0, #4]
006d6ec0  08 30 80 e5                                      str r3, [r0, #8]
006d6ec4  0c 30 80 e5                                      str r3, [r0, #0xc]
006d6ec8  00 20 80 e5                                      str r2, [r0]
006d6ecc  08 10 a0 e1                                      mov r1, r8
006d6ed0  14 00 80 e2                                      add r0, r0, #0x14
006d6ed4  20 29 fb eb                                      bl #0x5a135c
006d6ed8  00 00 5a e3                                      cmp sl, #0
006d6edc  18 a0 84 e5                                      str sl, [r4, #0x18]
006d6ee0  04 30 9a 15                                      ldrne r3, [sl, #4]
006d6ee4  01 20 a0 e3                                      mov r2, #1
006d6ee8  01 30 83 12                                      addne r3, r3, #1
006d6eec  04 30 8a 15                                      strne r3, [sl, #4]
006d6ef0  00 30 a0 e3                                      mov r3, #0
006d6ef4  bc 22 c4 e1                                      strh r2, [r4, #0x2c]
006d6ef8  06 20 a0 e3                                      mov r2, #6
006d6efc  34 30 c4 e5                                      strb r3, [r4, #0x34]
006d6f00  1c 30 84 e5                                      str r3, [r4, #0x1c]
006d6f04  24 30 84 e5                                      str r3, [r4, #0x24]
006d6f08  30 30 84 e5                                      str r3, [r4, #0x30]
006d6f0c  20 90 84 e5                                      str sb, [r4, #0x20]
006d6f10  28 70 84 e5                                      str r7, [r4, #0x28]
006d6f14  be 22 c4 e1                                      strh r2, [r4, #0x2e]
006d6f18  00 40 86 e5                                      str r4, [r6]
006d6f1c  04 30 94 e5                                      ldr r3, [r4, #4]
006d6f20  00 00 5a e3                                      cmp sl, #0
006d6f24  01 30 83 e2                                      add r3, r3, #1
006d6f28  04 30 84 e5                                      str r3, [r4, #4]
006d6f2c  01 00 00 0a                                      beq #0x6d6f38
006d6f30  0a 00 a0 e1                                      mov r0, sl
006d6f34  92 19 f1 eb                                      bl #0x31d584
006d6f38  14 00 9d e5                                      ldr r0, [sp, #0x14]
006d6f3c  00 00 50 e3                                      cmp r0, #0
006d6f40  00 00 00 0a                                      beq #0x6d6f48
006d6f44  8e 19 f1 eb                                      bl #0x31d584
006d6f48  00 40 a0 e3                                      mov r4, #0
006d6f4c  01 a0 a0 e3                                      mov sl, #1
006d6f50  10 80 8d e2                                      add r8, sp, #0x10
006d6f54  00 40 8d e5                                      str r4, [sp]
006d6f58  10 04 8d e9                                      stmib sp, {r4, sl}
006d6f5c  00 c0 95 e5                                      ldr ip, [r5]
006d6f60  05 10 a0 e1                                      mov r1, r5
006d6f64  08 00 a0 e1                                      mov r0, r8
006d6f68  04 20 a0 e1                                      mov r2, r4
006d6f6c  04 30 a0 e3                                      mov r3, #4
006d6f70  0f e0 a0 e1                                      mov lr, pc
006d6f74  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006d6f78  00 30 96 e5                                      ldr r3, [r6]
006d6f7c  08 10 a0 e1                                      mov r1, r8
006d6f80  00 20 e0 e3                                      mvn r2, #0
006d6f84  14 50 93 e5                                      ldr r5, [r3, #0x14]
006d6f88  05 00 a0 e1                                      mov r0, r5
006d6f8c  8b 29 fb eb                                      bl #0x5a15c0
006d6f90  97 00 08 e0                                      mul r8, r7, r0
006d6f94  04 10 a0 e1                                      mov r1, r4
006d6f98  08 70 85 e5                                      str r7, [r5, #8]
006d6f9c  08 00 a0 e1                                      mov r0, r8
006d6fa0  10 40 9d e5                                      ldr r4, [sp, #0x10]
006d6fa4  7f 74 f9 eb                                      bl #0x5341a8
006d6fa8  08 10 a0 e1                                      mov r1, r8
006d6fac  00 20 a0 e1                                      mov r2, r0
006d6fb0  0a 30 a0 e1                                      mov r3, sl
006d6fb4  04 00 a0 e1                                      mov r0, r4
006d6fb8  3d 2b fb eb                                      bl #0x5a1cb4
006d6fbc  10 00 9d e5                                      ldr r0, [sp, #0x10]
006d6fc0  00 00 50 e3                                      cmp r0, #0
006d6fc4  00 00 00 0a                                      beq #0x6d6fcc
006d6fc8  6d 19 f1 eb                                      bl #0x31d584
006d6fcc  06 00 a0 e1                                      mov r0, r6
006d6fd0  1c d0 8d e2                                      add sp, sp, #0x1c
006d6fd4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006d6fd8  ec db 2b 00 54 0c 00 00                          .byte 0xec, 0xdb, 0x2b, 0x00, 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x006d71d8, declared_size=248, range_size=248, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene12_GLOBAL__N_113mapMeshBufferERKN5boost13intrusive_ptrINS0_11CMeshBufferEEEPNS_5video13SVertexStream10SMapBufferINS_4core8vector3dIfEEEEPNSA_INSB_8vector2dIfEEEESF_PNSA_INS8_6SColorEEENS8_19E_BUFFER_MAP_ACCESSE
; demangled: glitch::scene::(anonymous namespace)::mapMeshBuffer(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> >*, glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float> >*, glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> >*, glitch::video::SVertexStream::SMapBuffer<glitch::video::SColor>*, glitch::video::E_BUFFER_MAP_ACCESS)
; decoder-mode: arm
006d71d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006d71dc  00 c0 90 e5                                      ldr ip, [r0]
006d71e0  00 00 51 e2                                      subs r0, r1, #0
006d71e4  02 70 a0 e1                                      mov r7, r2
006d71e8  03 60 a0 e1                                      mov r6, r3
006d71ec  14 40 9c e5                                      ldr r4, [ip, #0x14]
006d71f0  18 80 9d e5                                      ldr r8, [sp, #0x18]
006d71f4  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
006d71f8  02 00 00 0a                                      beq #0x6d7208
006d71fc  14 10 84 e2                                      add r1, r4, #0x14
006d7200  05 20 a0 e1                                      mov r2, r5
006d7204  9f ff ff eb                                      bl #0x6d7088
006d7208  00 00 57 e3                                      cmp r7, #0
006d720c  02 00 00 0a                                      beq #0x6d721c
006d7210  04 30 94 e5                                      ldr r3, [r4, #4]
006d7214  02 00 13 e3                                      tst r3, #2
006d7218  22 00 00 1a                                      bne #0x6d72a8
006d721c  00 00 56 e3                                      cmp r6, #0
006d7220  02 00 00 0a                                      beq #0x6d7230
006d7224  04 30 94 e5                                      ldr r3, [r4, #4]
006d7228  02 08 13 e3                                      tst r3, #0x20000
006d722c  11 00 00 1a                                      bne #0x6d7278
006d7230  00 00 58 e3                                      cmp r8, #0
006d7234  0e 00 00 0a                                      beq #0x6d7274
006d7238  04 30 94 e5                                      ldr r3, [r4, #4]
006d723c  01 07 13 e3                                      tst r3, #0x40000
006d7240  0b 00 00 0a                                      beq #0x6d7274
006d7244  0c 30 d4 e5                                      ldrb r3, [r4, #0xc]
006d7248  04 00 a0 e1                                      mov r0, r4
006d724c  12 10 a0 e3                                      mov r1, #0x12
006d7250  03 42 84 e0                                      add r4, r4, r3, lsl #4
006d7254  24 20 84 e2                                      add r2, r4, #0x24
006d7258  10 30 90 e5                                      ldr r3, [r0, #0x10]
006d725c  23 26 fb eb                                      bl #0x5a0af0
006d7260  05 20 a0 e1                                      mov r2, r5
006d7264  00 10 a0 e1                                      mov r1, r0
006d7268  08 00 a0 e1                                      mov r0, r8
006d726c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
006d7270  ae ff ff ea                                      b #0x6d7130
006d7274  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006d7278  0c 20 d4 e5                                      ldrb r2, [r4, #0xc]
006d727c  04 00 a0 e1                                      mov r0, r4
006d7280  11 10 a0 e3                                      mov r1, #0x11
006d7284  02 22 84 e0                                      add r2, r4, r2, lsl #4
006d7288  24 20 82 e2                                      add r2, r2, #0x24
006d728c  10 30 94 e5                                      ldr r3, [r4, #0x10]
006d7290  16 26 fb eb                                      bl #0x5a0af0
006d7294  05 20 a0 e1                                      mov r2, r5
006d7298  00 10 a0 e1                                      mov r1, r0
006d729c  06 00 a0 e1                                      mov r0, r6
006d72a0  78 ff ff eb                                      bl #0x6d7088
006d72a4  e1 ff ff ea                                      b #0x6d7230
006d72a8  24 20 84 e2                                      add r2, r4, #0x24
006d72ac  04 00 a0 e1                                      mov r0, r4
006d72b0  01 10 a0 e3                                      mov r1, #1
006d72b4  10 30 94 e5                                      ldr r3, [r4, #0x10]
006d72b8  0c 26 fb eb                                      bl #0x5a0af0
006d72bc  05 20 a0 e1                                      mov r2, r5
006d72c0  00 10 a0 e1                                      mov r1, r0
006d72c4  07 00 a0 e1                                      mov r0, r7
006d72c8  44 ff ff eb                                      bl #0x6d6fe0
006d72cc  d2 ff ff ea                                      b #0x6d721c

; FUNCTION 0x006d72d0, declared_size=1336, range_size=1336, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene15createPlaneMeshEjPNS_5video12IVideoDriverEfRKNS1_6SColorE
; demangled: glitch::scene::createPlaneMesh(unsigned int, glitch::video::IVideoDriver*, float, glitch::video::SColor const&)
; decoder-mode: arm
006d72d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d72d4  20 45 9f e5                                      ldr r4, [pc, #0x520]
006d72d8  4c d0 4d e2                                      sub sp, sp, #0x4c
006d72dc  14 c0 8d e2                                      add ip, sp, #0x14
006d72e0  04 40 8f e0                                      add r4, pc, r4
006d72e4  04 50 a0 e1                                      mov r5, r4
006d72e8  04 e0 95 e4                                      ldr lr, [r5], #4
006d72ec  04 40 94 e5                                      ldr r4, [r4, #4]
006d72f0  44 b0 8d e2                                      add fp, sp, #0x44
006d72f4  04 50 95 e5                                      ldr r5, [r5, #4]
006d72f8  04 40 8c e4                                      str r4, [ip], #4
006d72fc  0c 00 8d e5                                      str r0, [sp, #0xc]
006d7300  00 50 8c e5                                      str r5, [ip]
006d7304  0b 00 a0 e1                                      mov r0, fp
006d7308  06 c0 a0 e3                                      mov ip, #6
006d730c  03 40 a0 e1                                      mov r4, r3
006d7310  04 30 a0 e3                                      mov r3, #4
006d7314  10 e0 8d e5                                      str lr, [sp, #0x10]
006d7318  00 c0 8d e5                                      str ip, [sp]
006d731c  70 90 9d e5                                      ldr sb, [sp, #0x70]
006d7320  c1 fe ff eb                                      bl #0x6d6e2c
006d7324  44 50 9d e5                                      ldr r5, [sp, #0x44]
006d7328  04 10 a0 e3                                      mov r1, #4
006d732c  18 00 95 e5                                      ldr r0, [r5, #0x18]
006d7330  ae 29 fb eb                                      bl #0x5a19f0
006d7334  1c 60 95 e5                                      ldr r6, [r5, #0x1c]
006d7338  10 10 8d e2                                      add r1, sp, #0x10
006d733c  0c 20 a0 e3                                      mov r2, #0xc
006d7340  06 60 80 e0                                      add r6, r0, r6
006d7344  06 00 a0 e1                                      mov r0, r6
006d7348  46 dd f0 eb                                      bl #0x30e868
006d734c  00 00 56 e3                                      cmp r6, #0
006d7350  08 00 00 0a                                      beq #0x6d7378
006d7354  18 50 95 e5                                      ldr r5, [r5, #0x18]
006d7358  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006d735c  1f 20 03 e2                                      and r2, r3, #0x1f
006d7360  01 00 52 e3                                      cmp r2, #1
006d7364  d9 00 00 9a                                      bls #0x6d76d0
006d7368  01 20 42 e2                                      sub r2, r2, #1
006d736c  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d7370  03 30 82 e1                                      orr r3, r2, r3
006d7374  13 30 c5 e5                                      strb r3, [r5, #0x13]
006d7378  80 54 9f e5                                      ldr r5, [pc, #0x480]
006d737c  05 50 8f e0                                      add r5, pc, r5
006d7380  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006d7384  01 00 13 e3                                      tst r3, #1
006d7388  d6 00 00 0a                                      beq #0x6d76e8
006d738c  1c c0 8d e2                                      add ip, sp, #0x1c
006d7390  00 60 a0 e3                                      mov r6, #0
006d7394  24 30 8d e2                                      add r3, sp, #0x24
006d7398  00 c0 8d e5                                      str ip, [sp]
006d739c  0b 00 a0 e1                                      mov r0, fp
006d73a0  04 c0 a0 e3                                      mov ip, #4
006d73a4  34 10 8d e2                                      add r1, sp, #0x34
006d73a8  2c 20 8d e2                                      add r2, sp, #0x2c
006d73ac  04 c0 8d e5                                      str ip, [sp, #4]
006d73b0  34 60 8d e5                                      str r6, [sp, #0x34]
006d73b4  38 60 8d e5                                      str r6, [sp, #0x38]
006d73b8  2c 60 8d e5                                      str r6, [sp, #0x2c]
006d73bc  30 60 8d e5                                      str r6, [sp, #0x30]
006d73c0  24 60 8d e5                                      str r6, [sp, #0x24]
006d73c4  28 60 8d e5                                      str r6, [sp, #0x28]
006d73c8  1c 60 8d e5                                      str r6, [sp, #0x1c]
006d73cc  20 60 8d e5                                      str r6, [sp, #0x20]
006d73d0  80 ff ff eb                                      bl #0x6d71d8
006d73d4  34 30 9d e5                                      ldr r3, [sp, #0x34]
006d73d8  24 54 9f e5                                      ldr r5, [pc, #0x424]
006d73dc  be 70 d3 e1                                      ldrh r7, [r3, #0xe]
006d73e0  05 50 8f e0                                      add r5, pc, r5
006d73e4  10 50 85 e2                                      add r5, r5, #0x10
006d73e8  04 10 95 e5                                      ldr r1, [r5, #4]
006d73ec  04 00 a0 e1                                      mov r0, r4
006d73f0  5d de f0 eb                                      bl #0x30ed6c
006d73f4  08 10 95 e5                                      ldr r1, [r5, #8]
006d73f8  00 80 a0 e1                                      mov r8, r0
006d73fc  04 00 a0 e1                                      mov r0, r4
006d7400  59 de f0 eb                                      bl #0x30ed6c
006d7404  00 10 95 e5                                      ldr r1, [r5]
006d7408  00 a0 a0 e1                                      mov sl, r0
006d740c  04 00 a0 e1                                      mov r0, r4
006d7410  55 de f0 eb                                      bl #0x30ed6c
006d7414  96 07 07 e0                                      mul r7, r6, r7
006d7418  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006d741c  09 10 a0 e1                                      mov r1, sb
006d7420  04 20 a0 e3                                      mov r2, #4
006d7424  07 30 8c e0                                      add r3, ip, r7
006d7428  07 00 8c e7                                      str r0, [ip, r7]
006d742c  08 a0 83 e5                                      str sl, [r3, #8]
006d7430  04 80 83 e5                                      str r8, [r3, #4]
006d7434  30 30 9d e5                                      ldr r3, [sp, #0x30]
006d7438  00 00 53 e3                                      cmp r3, #0
006d743c  07 00 00 0a                                      beq #0x6d7460
006d7440  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006d7444  18 c0 95 e5                                      ldr ip, [r5, #0x18]
006d7448  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006d744c  90 06 00 e0                                      mul r0, r0, r6
006d7450  00 c0 83 e7                                      str ip, [r3, r0]
006d7454  1c c0 95 e5                                      ldr ip, [r5, #0x1c]
006d7458  00 30 83 e0                                      add r3, r3, r0
006d745c  04 c0 83 e5                                      str ip, [r3, #4]
006d7460  28 30 9d e5                                      ldr r3, [sp, #0x28]
006d7464  00 00 53 e3                                      cmp r3, #0
006d7468  09 00 00 0a                                      beq #0x6d7494
006d746c  24 00 9d e5                                      ldr r0, [sp, #0x24]
006d7470  0c c0 95 e5                                      ldr ip, [r5, #0xc]
006d7474  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006d7478  90 06 00 e0                                      mul r0, r0, r6
006d747c  00 c0 83 e7                                      str ip, [r3, r0]
006d7480  10 c0 95 e5                                      ldr ip, [r5, #0x10]
006d7484  00 30 83 e0                                      add r3, r3, r0
006d7488  04 c0 83 e5                                      str ip, [r3, #4]
006d748c  14 00 95 e5                                      ldr r0, [r5, #0x14]
006d7490  08 00 83 e5                                      str r0, [r3, #8]
006d7494  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d7498  20 50 85 e2                                      add r5, r5, #0x20
006d749c  00 00 53 e3                                      cmp r3, #0
006d74a0  03 00 00 0a                                      beq #0x6d74b4
006d74a4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d74a8  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006d74ac  90 36 20 e0                                      mla r0, r0, r6, r3
006d74b0  ec dc f0 eb                                      bl #0x30e868
006d74b4  01 60 86 e2                                      add r6, r6, #1
006d74b8  04 00 56 e3                                      cmp r6, #4
006d74bc  02 00 00 0a                                      beq #0x6d74cc
006d74c0  34 30 9d e5                                      ldr r3, [sp, #0x34]
006d74c4  be 70 d3 e1                                      ldrh r7, [r3, #0xe]
006d74c8  c6 ff ff ea                                      b #0x6d73e8
006d74cc  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d74d0  00 00 53 e3                                      cmp r3, #0
006d74d4  0c 00 00 0a                                      beq #0x6d750c
006d74d8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006d74dc  00 40 93 e5                                      ldr r4, [r3]
006d74e0  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d74e4  1f 20 03 e2                                      and r2, r3, #0x1f
006d74e8  01 00 52 e3                                      cmp r2, #1
006d74ec  6b 00 00 9a                                      bls #0x6d76a0
006d74f0  01 20 42 e2                                      sub r2, r2, #1
006d74f4  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d74f8  03 30 82 e1                                      orr r3, r2, r3
006d74fc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d7500  00 30 a0 e3                                      mov r3, #0
006d7504  20 30 8d e5                                      str r3, [sp, #0x20]
006d7508  1c 30 8d e5                                      str r3, [sp, #0x1c]
006d750c  28 30 9d e5                                      ldr r3, [sp, #0x28]
006d7510  00 00 53 e3                                      cmp r3, #0
006d7514  0c 00 00 0a                                      beq #0x6d754c
006d7518  24 30 9d e5                                      ldr r3, [sp, #0x24]
006d751c  00 40 93 e5                                      ldr r4, [r3]
006d7520  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d7524  1f 20 03 e2                                      and r2, r3, #0x1f
006d7528  01 00 52 e3                                      cmp r2, #1
006d752c  55 00 00 9a                                      bls #0x6d7688
006d7530  01 20 42 e2                                      sub r2, r2, #1
006d7534  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d7538  03 30 82 e1                                      orr r3, r2, r3
006d753c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d7540  00 30 a0 e3                                      mov r3, #0
006d7544  28 30 8d e5                                      str r3, [sp, #0x28]
006d7548  24 30 8d e5                                      str r3, [sp, #0x24]
006d754c  30 30 9d e5                                      ldr r3, [sp, #0x30]
006d7550  00 00 53 e3                                      cmp r3, #0
006d7554  0c 00 00 0a                                      beq #0x6d758c
006d7558  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006d755c  00 40 93 e5                                      ldr r4, [r3]
006d7560  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d7564  1f 20 03 e2                                      and r2, r3, #0x1f
006d7568  01 00 52 e3                                      cmp r2, #1
006d756c  3f 00 00 9a                                      bls #0x6d7670
006d7570  01 20 42 e2                                      sub r2, r2, #1
006d7574  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d7578  03 30 82 e1                                      orr r3, r2, r3
006d757c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d7580  00 30 a0 e3                                      mov r3, #0
006d7584  30 30 8d e5                                      str r3, [sp, #0x30]
006d7588  2c 30 8d e5                                      str r3, [sp, #0x2c]
006d758c  38 30 9d e5                                      ldr r3, [sp, #0x38]
006d7590  00 00 53 e3                                      cmp r3, #0
006d7594  0c 00 00 0a                                      beq #0x6d75cc
006d7598  34 30 9d e5                                      ldr r3, [sp, #0x34]
006d759c  00 40 93 e5                                      ldr r4, [r3]
006d75a0  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d75a4  1f 20 03 e2                                      and r2, r3, #0x1f
006d75a8  01 00 52 e3                                      cmp r2, #1
006d75ac  41 00 00 9a                                      bls #0x6d76b8
006d75b0  01 20 42 e2                                      sub r2, r2, #1
006d75b4  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d75b8  03 30 82 e1                                      orr r3, r2, r3
006d75bc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d75c0  00 30 a0 e3                                      mov r3, #0
006d75c4  38 30 8d e5                                      str r3, [sp, #0x38]
006d75c8  34 30 8d e5                                      str r3, [sp, #0x34]
006d75cc  00 10 a0 e3                                      mov r1, #0
006d75d0  2c 00 a0 e3                                      mov r0, #0x2c
006d75d4  f4 72 f9 eb                                      bl #0x5341ac
006d75d8  00 40 a0 e1                                      mov r4, r0
006d75dc  3c 91 ff eb                                      bl #0x6bbad4
006d75e0  00 00 54 e3                                      cmp r4, #0
006d75e4  04 30 94 15                                      ldrne r3, [r4, #4]
006d75e8  40 50 8d e2                                      add r5, sp, #0x40
006d75ec  3c 60 8d e2                                      add r6, sp, #0x3c
006d75f0  01 30 83 12                                      addne r3, r3, #1
006d75f4  04 30 84 15                                      strne r3, [r4, #4]
006d75f8  00 c0 a0 e3                                      mov ip, #0
006d75fc  06 30 a0 e1                                      mov r3, r6
006d7600  0b 10 a0 e1                                      mov r1, fp
006d7604  05 20 a0 e1                                      mov r2, r5
006d7608  04 00 a0 e1                                      mov r0, r4
006d760c  3c c0 8d e5                                      str ip, [sp, #0x3c]
006d7610  40 c0 8d e5                                      str ip, [sp, #0x40]
006d7614  12 94 ff eb                                      bl #0x6bc664
006d7618  06 00 a0 e1                                      mov r0, r6
006d761c  12 8b fa eb                                      bl #0x57a26c
006d7620  05 00 a0 e1                                      mov r0, r5
006d7624  6f e5 f0 eb                                      bl #0x310be8
006d7628  04 00 a0 e1                                      mov r0, r4
006d762c  26 93 ff eb                                      bl #0x6bc2cc
006d7630  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d7634  00 00 54 e3                                      cmp r4, #0
006d7638  00 40 83 e5                                      str r4, [r3]
006d763c  04 00 00 0a                                      beq #0x6d7654
006d7640  04 30 94 e5                                      ldr r3, [r4, #4]
006d7644  04 00 a0 e1                                      mov r0, r4
006d7648  01 30 83 e2                                      add r3, r3, #1
006d764c  04 30 84 e5                                      str r3, [r4, #4]
006d7650  cb 17 f1 eb                                      bl #0x31d584
006d7654  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d7658  00 00 50 e3                                      cmp r0, #0
006d765c  00 00 00 0a                                      beq #0x6d7664
006d7660  c7 17 f1 eb                                      bl #0x31d584
006d7664  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006d7668  4c d0 8d e2                                      add sp, sp, #0x4c
006d766c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d7670  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d7674  20 00 13 e3                                      tst r3, #0x20
006d7678  5a 00 00 1a                                      bne #0x6d77e8
006d767c  00 30 a0 e3                                      mov r3, #0
006d7680  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d7684  bd ff ff ea                                      b #0x6d7580
006d7688  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d768c  20 00 13 e3                                      tst r3, #0x20
006d7690  4f 00 00 1a                                      bne #0x6d77d4
006d7694  00 30 a0 e3                                      mov r3, #0
006d7698  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d769c  a7 ff ff ea                                      b #0x6d7540
006d76a0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d76a4  20 00 13 e3                                      tst r3, #0x20
006d76a8  44 00 00 1a                                      bne #0x6d77c0
006d76ac  00 30 a0 e3                                      mov r3, #0
006d76b0  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d76b4  91 ff ff ea                                      b #0x6d7500
006d76b8  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d76bc  20 00 13 e3                                      tst r3, #0x20
006d76c0  39 00 00 1a                                      bne #0x6d77ac
006d76c4  00 30 a0 e3                                      mov r3, #0
006d76c8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d76cc  bb ff ff ea                                      b #0x6d75c0
006d76d0  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006d76d4  20 00 13 e3                                      tst r3, #0x20
006d76d8  2e 00 00 1a                                      bne #0x6d7798
006d76dc  00 30 a0 e3                                      mov r3, #0
006d76e0  13 30 c5 e5                                      strb r3, [r5, #0x13]
006d76e4  23 ff ff ea                                      b #0x6d7378
006d76e8  0c 60 85 e2                                      add r6, r5, #0xc
006d76ec  06 00 a0 e1                                      mov r0, r6
006d76f0  1d dc f0 eb                                      bl #0x30e76c
006d76f4  00 00 50 e3                                      cmp r0, #0
006d76f8  23 ff ff 0a                                      beq #0x6d738c
006d76fc  00 30 a0 e3                                      mov r3, #0
006d7700  fe 25 a0 e3                                      mov r2, #0x3f800000
006d7704  bf 04 a0 e3                                      mov r0, #0xbf000000
006d7708  3f 14 a0 e3                                      mov r1, #0x3f000000
006d770c  70 00 85 e5                                      str r0, [r5, #0x70]
006d7710  10 00 85 e5                                      str r0, [r5, #0x10]
006d7714  18 00 85 e5                                      str r0, [r5, #0x18]
006d7718  38 00 85 e5                                      str r0, [r5, #0x38]
006d771c  8c 20 85 e5                                      str r2, [r5, #0x8c]
006d7720  78 10 85 e5                                      str r1, [r5, #0x78]
006d7724  88 30 85 e5                                      str r3, [r5, #0x88]
006d7728  14 30 85 e5                                      str r3, [r5, #0x14]
006d772c  1c 30 85 e5                                      str r3, [r5, #0x1c]
006d7730  20 20 85 e5                                      str r2, [r5, #0x20]
006d7734  24 30 85 e5                                      str r3, [r5, #0x24]
006d7738  28 20 85 e5                                      str r2, [r5, #0x28]
006d773c  2c 20 85 e5                                      str r2, [r5, #0x2c]
006d7740  30 10 85 e5                                      str r1, [r5, #0x30]
006d7744  34 30 85 e5                                      str r3, [r5, #0x34]
006d7748  3c 30 85 e5                                      str r3, [r5, #0x3c]
006d774c  40 20 85 e5                                      str r2, [r5, #0x40]
006d7750  44 30 85 e5                                      str r3, [r5, #0x44]
006d7754  48 20 85 e5                                      str r2, [r5, #0x48]
006d7758  4c 30 85 e5                                      str r3, [r5, #0x4c]
006d775c  50 10 85 e5                                      str r1, [r5, #0x50]
006d7760  54 30 85 e5                                      str r3, [r5, #0x54]
006d7764  58 10 85 e5                                      str r1, [r5, #0x58]
006d7768  5c 30 85 e5                                      str r3, [r5, #0x5c]
006d776c  60 20 85 e5                                      str r2, [r5, #0x60]
006d7770  64 30 85 e5                                      str r3, [r5, #0x64]
006d7774  68 30 85 e5                                      str r3, [r5, #0x68]
006d7778  6c 30 85 e5                                      str r3, [r5, #0x6c]
006d777c  74 30 85 e5                                      str r3, [r5, #0x74]
006d7780  7c 30 85 e5                                      str r3, [r5, #0x7c]
006d7784  80 20 85 e5                                      str r2, [r5, #0x80]
006d7788  84 30 85 e5                                      str r3, [r5, #0x84]
006d778c  06 00 a0 e1                                      mov r0, r6
006d7790  a9 dc f0 eb                                      bl #0x30ea3c
006d7794  fc fe ff ea                                      b #0x6d738c
006d7798  00 30 95 e5                                      ldr r3, [r5]
006d779c  05 00 a0 e1                                      mov r0, r5
006d77a0  0f e0 a0 e1                                      mov lr, pc
006d77a4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d77a8  cb ff ff ea                                      b #0x6d76dc
006d77ac  00 30 94 e5                                      ldr r3, [r4]
006d77b0  04 00 a0 e1                                      mov r0, r4
006d77b4  0f e0 a0 e1                                      mov lr, pc
006d77b8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d77bc  c0 ff ff ea                                      b #0x6d76c4
006d77c0  00 30 94 e5                                      ldr r3, [r4]
006d77c4  04 00 a0 e1                                      mov r0, r4
006d77c8  0f e0 a0 e1                                      mov lr, pc
006d77cc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d77d0  b5 ff ff ea                                      b #0x6d76ac
006d77d4  00 30 94 e5                                      ldr r3, [r4]
006d77d8  04 00 a0 e1                                      mov r0, r4
006d77dc  0f e0 a0 e1                                      mov lr, pc
006d77e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d77e4  aa ff ff ea                                      b #0x6d7694
006d77e8  00 30 94 e5                                      ldr r3, [r4]
006d77ec  04 00 a0 e1                                      mov r0, r4
006d77f0  0f e0 a0 e1                                      mov lr, pc
006d77f4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d77f8  9f ff ff ea                                      b #0x6d767c
; mapping-symbol data/literal pool
006d77fc  50 42 21 00 34 0b 32 00 d0 0a 32 00              .byte 0x50, 0x42, 0x21, 0x00, 0x34, 0x0b, 0x32, 0x00, 0xd0, 0x0a, 0x32, 0x00

; FUNCTION 0x006d7808, declared_size=3092, range_size=3092, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene16createSphereMeshEjPNS_5video12IVideoDriverEfjj
; demangled: glitch::scene::createSphereMesh(unsigned int, glitch::video::IVideoDriver*, float, unsigned int, unsigned int)
; decoder-mode: arm
006d7808  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d780c  b4 d0 4d e2                                      sub sp, sp, #0xb4
006d7810  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
006d7814  dc 60 9d e5                                      ldr r6, [sp, #0xdc]
006d7818  ff ef 07 e3                                      movw lr, #0x7fff
006d781c  01 00 54 e3                                      cmp r4, #1
006d7820  02 40 a0 93                                      movls r4, #2
006d7824  01 00 56 e3                                      cmp r6, #1
006d7828  02 60 a0 93                                      movls r6, #2
006d782c  94 06 0c e0                                      mul ip, r4, r6
006d7830  dc 60 8d e5                                      str r6, [sp, #0xdc]
006d7834  0e 00 5c e1                                      cmp ip, lr
006d7838  01 a0 84 92                                      addls sl, r4, #1
006d783c  d8 40 8d e5                                      str r4, [sp, #0xd8]
006d7840  6c 00 8d e5                                      str r0, [sp, #0x6c]
006d7844  01 60 a0 e1                                      mov r6, r1
006d7848  02 50 a0 e1                                      mov r5, r2
006d784c  5c 30 8d e5                                      str r3, [sp, #0x5c]
006d7850  48 a0 8d 95                                      strls sl, [sp, #0x48]
006d7854  0b 00 00 9a                                      bls #0x6d7888
006d7858  d8 c0 9d e5                                      ldr ip, [sp, #0xd8]
006d785c  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
006d7860  00 00 5c e1                                      cmp ip, r0
006d7864  ab 02 00 9a                                      bls #0x6d8318
006d7868  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
006d786c  0e 00 a0 e1                                      mov r0, lr
006d7870  f5 dc f0 eb                                      bl #0x30ec4c
006d7874  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
006d7878  01 10 40 e2                                      sub r1, r0, #1
006d787c  d8 10 8d e5                                      str r1, [sp, #0xd8]
006d7880  92 01 0c e0                                      mul ip, r2, r1
006d7884  48 00 8d e5                                      str r0, [sp, #0x48]
006d7888  dc 70 9d e5                                      ldr r7, [sp, #0xdc]
006d788c  48 a0 9d e5                                      ldr sl, [sp, #0x48]
006d7890  06 40 a0 e3                                      mov r4, #6
006d7894  94 0c 0c e0                                      mul ip, r4, ip
006d7898  97 0a 07 e0                                      mul r7, r7, sl
006d789c  ac e0 8d e2                                      add lr, sp, #0xac
006d78a0  06 10 a0 e1                                      mov r1, r6
006d78a4  05 20 a0 e1                                      mov r2, r5
006d78a8  0e 00 a0 e1                                      mov r0, lr
006d78ac  02 30 87 e2                                      add r3, r7, #2
006d78b0  68 e0 8d e5                                      str lr, [sp, #0x68]
006d78b4  00 c0 8d e5                                      str ip, [sp]
006d78b8  4c 70 8d e5                                      str r7, [sp, #0x4c]
006d78bc  5a fd ff eb                                      bl #0x6d6e2c
006d78c0  ac 00 9d e5                                      ldr r0, [sp, #0xac]
006d78c4  02 10 a0 e3                                      mov r1, #2
006d78c8  64 00 8d e5                                      str r0, [sp, #0x64]
006d78cc  64 20 9d e5                                      ldr r2, [sp, #0x64]
006d78d0  18 00 90 e5                                      ldr r0, [r0, #0x18]
006d78d4  14 20 92 e5                                      ldr r2, [r2, #0x14]
006d78d8  74 20 8d e5                                      str r2, [sp, #0x74]
006d78dc  43 28 fb eb                                      bl #0x5a19f0
006d78e0  64 50 9d e5                                      ldr r5, [sp, #0x64]
006d78e4  dc 60 9d e5                                      ldr r6, [sp, #0xdc]
006d78e8  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
006d78ec  01 60 56 e2                                      subs r6, r6, #1
006d78f0  70 60 8d e5                                      str r6, [sp, #0x70]
006d78f4  03 30 80 e0                                      add r3, r0, r3
006d78f8  60 30 8d e5                                      str r3, [sp, #0x60]
006d78fc  5f 00 00 0a                                      beq #0x6d7a80
006d7900  d8 70 9d e5                                      ldr r7, [sp, #0xd8]
006d7904  48 c0 9d e5                                      ldr ip, [sp, #0x48]
006d7908  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
006d790c  94 07 04 e0                                      mul r4, r4, r7
006d7910  77 a0 ff e6                                      uxth sl, r7
006d7914  0c 70 8a e0                                      add r7, sl, ip
006d7918  d8 90 9d e5                                      ldr sb, [sp, #0xd8]
006d791c  01 e0 4a e2                                      sub lr, sl, #1
006d7920  00 b0 a0 e3                                      mov fp, #0
006d7924  01 70 47 e2                                      sub r7, r7, #1
006d7928  06 40 44 e2                                      sub r4, r4, #6
006d792c  01 00 40 e2                                      sub r0, r0, #1
006d7930  7c 10 ff e6                                      uxth r1, ip
006d7934  40 a0 8d e5                                      str sl, [sp, #0x40]
006d7938  0b 60 a0 e1                                      mov r6, fp
006d793c  18 b0 8d e5                                      str fp, [sp, #0x18]
006d7940  50 e0 8d e5                                      str lr, [sp, #0x50]
006d7944  77 70 ff e6                                      uxth r7, r7
006d7948  3c 40 8d e5                                      str r4, [sp, #0x3c]
006d794c  38 00 8d e5                                      str r0, [sp, #0x38]
006d7950  20 10 8d e5                                      str r1, [sp, #0x20]
006d7954  7e 80 ff e6                                      uxth r8, lr
006d7958  01 a0 a0 e3                                      mov sl, #1
006d795c  10 c0 8d e5                                      str ip, [sp, #0x10]
006d7960  03 b0 a0 e1                                      mov fp, r3
006d7964  38 20 9d e5                                      ldr r2, [sp, #0x38]
006d7968  00 00 52 e3                                      cmp r2, #0
006d796c  17 00 00 0a                                      beq #0x6d79d0
006d7970  10 30 9d e5                                      ldr r3, [sp, #0x10]
006d7974  18 40 9d e5                                      ldr r4, [sp, #0x18]
006d7978  00 00 a0 e3                                      mov r0, #0
006d797c  73 10 ff e6                                      uxth r1, r3
006d7980  74 20 ff e6                                      uxth r2, r4
006d7984  01 c0 a0 e3                                      mov ip, #1
006d7988  86 e0 8b e0                                      add lr, fp, r6, lsl #1
006d798c  00 30 8e e0                                      add r3, lr, r0
006d7990  01 50 82 e2                                      add r5, r2, #1
006d7994  01 40 81 e2                                      add r4, r1, #1
006d7998  01 c0 8c e2                                      add ip, ip, #1
006d799c  b0 10 8e e1                                      strh r1, [lr, r0]
006d79a0  09 00 5c e1                                      cmp ip, sb
006d79a4  b2 20 c3 e1                                      strh r2, [r3, #2]
006d79a8  b6 10 c3 e1                                      strh r1, [r3, #6]
006d79ac  75 20 ff e6                                      uxth r2, r5
006d79b0  74 10 ff e6                                      uxth r1, r4
006d79b4  ba 10 c3 e1                                      strh r1, [r3, #0xa]
006d79b8  b4 20 c3 e1                                      strh r2, [r3, #4]
006d79bc  b8 20 c3 e1                                      strh r2, [r3, #8]
006d79c0  0c 00 80 e2                                      add r0, r0, #0xc
006d79c4  f0 ff ff 1a                                      bne #0x6d798c
006d79c8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006d79cc  02 60 86 e0                                      add r6, r6, r2
006d79d0  20 40 9d e5                                      ldr r4, [sp, #0x20]
006d79d4  01 e0 86 e2                                      add lr, r6, #1
006d79d8  20 50 9d e5                                      ldr r5, [sp, #0x20]
006d79dc  01 c0 8e e2                                      add ip, lr, #1
006d79e0  04 40 87 e0                                      add r4, r7, r4
006d79e4  2c 40 8d e5                                      str r4, [sp, #0x2c]
006d79e8  01 00 8c e2                                      add r0, ip, #1
006d79ec  dc 40 9d e5                                      ldr r4, [sp, #0xdc]
006d79f0  01 10 80 e2                                      add r1, r0, #1
006d79f4  01 30 81 e2                                      add r3, r1, #1
006d79f8  08 50 85 e0                                      add r5, r5, r8
006d79fc  01 20 88 e2                                      add r2, r8, #1
006d7a00  01 a0 8a e2                                      add sl, sl, #1
006d7a04  30 50 8d e5                                      str r5, [sp, #0x30]
006d7a08  72 20 ff e6                                      uxth r2, r2
006d7a0c  01 50 87 e2                                      add r5, r7, #1
006d7a10  86 60 a0 e1                                      lsl r6, r6, #1
006d7a14  8e e0 a0 e1                                      lsl lr, lr, #1
006d7a18  8c c0 a0 e1                                      lsl ip, ip, #1
006d7a1c  04 00 5a e1                                      cmp sl, r4
006d7a20  80 00 a0 e1                                      lsl r0, r0, #1
006d7a24  81 10 a0 e1                                      lsl r1, r1, #1
006d7a28  83 40 a0 e1                                      lsl r4, r3, #1
006d7a2c  b6 70 8b e1                                      strh r7, [fp, r6]
006d7a30  be 80 8b e1                                      strh r8, [fp, lr]
006d7a34  bc 20 8b e1                                      strh r2, [fp, ip]
006d7a38  b0 70 8b e1                                      strh r7, [fp, r0]
006d7a3c  b1 20 8b e1                                      strh r2, [fp, r1]
006d7a40  b4 50 8b e1                                      strh r5, [fp, r4]
006d7a44  10 50 9d e5                                      ldr r5, [sp, #0x10]
006d7a48  48 70 9d e5                                      ldr r7, [sp, #0x48]
006d7a4c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006d7a50  30 e0 9d e5                                      ldr lr, [sp, #0x30]
006d7a54  07 50 85 e0                                      add r5, r5, r7
006d7a58  01 60 83 e2                                      add r6, r3, #1
006d7a5c  10 50 8d e5                                      str r5, [sp, #0x10]
006d7a60  7c 70 ff e6                                      uxth r7, ip
006d7a64  7e 80 ff e6                                      uxth r8, lr
006d7a68  0d 00 00 0a                                      beq #0x6d7aa4
006d7a6c  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d7a70  48 10 9d e5                                      ldr r1, [sp, #0x48]
006d7a74  01 00 80 e0                                      add r0, r0, r1
006d7a78  18 00 8d e5                                      str r0, [sp, #0x18]
006d7a7c  b8 ff ff ea                                      b #0x6d7964
006d7a80  d8 60 9d e5                                      ldr r6, [sp, #0xd8]
006d7a84  d8 50 9d e5                                      ldr r5, [sp, #0xd8]
006d7a88  01 60 46 e2                                      sub r6, r6, #1
006d7a8c  75 50 ff e6                                      uxth r5, r5
006d7a90  38 60 8d e5                                      str r6, [sp, #0x38]
006d7a94  70 60 9d e5                                      ldr r6, [sp, #0x70]
006d7a98  01 70 45 e2                                      sub r7, r5, #1
006d7a9c  40 50 8d e5                                      str r5, [sp, #0x40]
006d7aa0  50 70 8d e5                                      str r7, [sp, #0x50]
006d7aa4  48 c0 9d e5                                      ldr ip, [sp, #0x48]
006d7aa8  70 e0 9d e5                                      ldr lr, [sp, #0x70]
006d7aac  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006d7ab0  38 a0 9d e5                                      ldr sl, [sp, #0x38]
006d7ab4  9c 0e 08 e0                                      mul r8, ip, lr
006d7ab8  00 00 5a e3                                      cmp sl, #0
006d7abc  01 50 80 e2                                      add r5, r0, #1
006d7ac0  70 70 ff 06                                      uxtheq r7, r0
006d7ac4  78 80 ff 06                                      uxtheq r8, r8
006d7ac8  75 50 ff 06                                      uxtheq r5, r5
006d7acc  1a 00 00 0a                                      beq #0x6d7b3c
006d7ad0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
006d7ad4  60 30 9d e5                                      ldr r3, [sp, #0x60]
006d7ad8  38 a0 9d e5                                      ldr sl, [sp, #0x38]
006d7adc  78 80 ff e6                                      uxth r8, r8
006d7ae0  00 10 a0 e3                                      mov r1, #0
006d7ae4  72 70 ff e6                                      uxth r7, r2
006d7ae8  75 50 ff e6                                      uxth r5, r5
006d7aec  08 00 a0 e1                                      mov r0, r8
006d7af0  01 c0 a0 e3                                      mov ip, #1
006d7af4  01 20 a0 e1                                      mov r2, r1
006d7af8  86 e0 83 e0                                      add lr, r3, r6, lsl #1
006d7afc  01 30 8e e0                                      add r3, lr, r1
006d7b00  b1 70 8e e1                                      strh r7, [lr, r1]
006d7b04  01 40 80 e2                                      add r4, r0, #1
006d7b08  b4 20 c3 e1                                      strh r2, [r3, #4]
006d7b0c  01 20 82 e2                                      add r2, r2, #1
006d7b10  b6 00 c3 e1                                      strh r0, [r3, #6]
006d7b14  0a 00 52 e1                                      cmp r2, sl
006d7b18  74 00 ff e6                                      uxth r0, r4
006d7b1c  b2 c0 c3 e1                                      strh ip, [r3, #2]
006d7b20  ba 50 c3 e1                                      strh r5, [r3, #0xa]
006d7b24  b8 00 c3 e1                                      strh r0, [r3, #8]
006d7b28  01 c0 8c e2                                      add ip, ip, #1
006d7b2c  0c 10 81 e2                                      add r1, r1, #0xc
006d7b30  f1 ff ff 1a                                      bne #0x6d7afc
006d7b34  06 30 a0 e3                                      mov r3, #6
006d7b38  93 62 26 e0                                      mla r6, r3, r2, r6
006d7b3c  60 a0 9d e5                                      ldr sl, [sp, #0x60]
006d7b40  50 40 9d e5                                      ldr r4, [sp, #0x50]
006d7b44  01 c0 86 e2                                      add ip, r6, #1
006d7b48  86 60 a0 e1                                      lsl r6, r6, #1
006d7b4c  b6 70 8a e1                                      strh r7, [sl, r6]
006d7b50  01 00 8c e2                                      add r0, ip, #1
006d7b54  40 60 9d e5                                      ldr r6, [sp, #0x40]
006d7b58  01 10 80 e2                                      add r1, r0, #1
006d7b5c  74 30 ff e6                                      uxth r3, r4
006d7b60  01 20 81 e2                                      add r2, r1, #1
006d7b64  03 e0 88 e0                                      add lr, r8, r3
006d7b68  8c c0 a0 e1                                      lsl ip, ip, #1
006d7b6c  82 40 8a e0                                      add r4, sl, r2, lsl #1
006d7b70  81 10 a0 e1                                      lsl r1, r1, #1
006d7b74  82 20 a0 e1                                      lsl r2, r2, #1
006d7b78  80 00 a0 e1                                      lsl r0, r0, #1
006d7b7c  bc 60 8a e1                                      strh r6, [sl, ip]
006d7b80  b0 30 8a e1                                      strh r3, [sl, r0]
006d7b84  b1 e0 8a e1                                      strh lr, [sl, r1]
006d7b88  b2 80 8a e1                                      strh r8, [sl, r2]
006d7b8c  b2 50 c4 e1                                      strh r5, [r4, #2]
006d7b90  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
006d7b94  d1 d9 f0 eb                                      bl #0x30e2e0
006d7b98  00 10 a0 e1                                      mov r1, r0
006d7b9c  db 0f 00 e3                                      movw r0, #0xfdb
006d7ba0  c9 00 44 e3                                      movt r0, #0x40c9
006d7ba4  3a dc f0 eb                                      bl #0x30ec94
006d7ba8  3d db f0 eb                                      bl #0x30e8a4
006d7bac  f0 04 cd e1                                      strd r0, r1, [sp, #0x40]
006d7bb0  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
006d7bb4  c9 d9 f0 eb                                      bl #0x30e2e0
006d7bb8  00 10 a0 e1                                      mov r1, r0
006d7bbc  db 0f 00 e3                                      movw r0, #0xfdb
006d7bc0  49 00 44 e3                                      movt r0, #0x4049
006d7bc4  32 dc f0 eb                                      bl #0x30ec94
006d7bc8  35 db f0 eb                                      bl #0x30e8a4
006d7bcc  84 c0 8d e2                                      add ip, sp, #0x84
006d7bd0  00 40 a0 e3                                      mov r4, #0
006d7bd4  f0 05 cd e1                                      strd r0, r1, [sp, #0x50]
006d7bd8  00 c0 8d e5                                      str ip, [sp]
006d7bdc  68 00 9d e5                                      ldr r0, [sp, #0x68]
006d7be0  05 c0 a0 e3                                      mov ip, #5
006d7be4  9c 10 8d e2                                      add r1, sp, #0x9c
006d7be8  94 20 8d e2                                      add r2, sp, #0x94
006d7bec  8c 30 8d e2                                      add r3, sp, #0x8c
006d7bf0  9c 40 8d e5                                      str r4, [sp, #0x9c]
006d7bf4  a0 40 8d e5                                      str r4, [sp, #0xa0]
006d7bf8  94 40 8d e5                                      str r4, [sp, #0x94]
006d7bfc  98 40 8d e5                                      str r4, [sp, #0x98]
006d7c00  8c 40 8d e5                                      str r4, [sp, #0x8c]
006d7c04  90 40 8d e5                                      str r4, [sp, #0x90]
006d7c08  84 40 8d e5                                      str r4, [sp, #0x84]
006d7c0c  88 40 8d e5                                      str r4, [sp, #0x88]
006d7c10  04 c0 8d e5                                      str ip, [sp, #4]
006d7c14  6f fd ff eb                                      bl #0x6d71d8
006d7c18  dc 70 9d e5                                      ldr r7, [sp, #0xdc]
006d7c1c  04 00 57 e1                                      cmp r7, r4
006d7c20  07 40 a0 01                                      moveq r4, r7
006d7c24  e7 00 00 0a                                      beq #0x6d7fc8
006d7c28  74 a0 9d e5                                      ldr sl, [sp, #0x74]
006d7c2c  00 00 a0 e3                                      mov r0, #0
006d7c30  00 10 a0 e3                                      mov r1, #0
006d7c34  f0 03 cd e1                                      strd r0, r1, [sp, #0x30]
006d7c38  14 a0 8a e2                                      add sl, sl, #0x14
006d7c3c  2c 40 8d e5                                      str r4, [sp, #0x2c]
006d7c40  4c a0 8d e5                                      str sl, [sp, #0x4c]
006d7c44  00 70 e0 e3                                      mvn r7, #0
006d7c48  d0 03 cd e1                                      ldrd r0, r1, [sp, #0x30]
006d7c4c  d0 25 cd e1                                      ldrd r2, r3, [sp, #0x50]
006d7c50  bb db f0 eb                                      bl #0x30eb44
006d7c54  f0 03 cd e1                                      strd r0, r1, [sp, #0x30]
006d7c58  e3 d8 f0 eb                                      bl #0x30dfec
006d7c5c  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
006d7c60  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
006d7c64  00 00 51 e3                                      cmp r1, #0
006d7c68  be 00 00 0a                                      beq #0x6d7f68
006d7c6c  d0 03 cd e1                                      ldrd r0, r1, [sp, #0x30]
006d7c70  34 d9 f0 eb                                      bl #0x30e148
006d7c74  00 80 a0 e1                                      mov r8, r0
006d7c78  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d7c7c  01 90 a0 e1                                      mov sb, r1
006d7c80  07 db f0 eb                                      bl #0x30e8a4
006d7c84  08 20 a0 e1                                      mov r2, r8
006d7c88  09 30 a0 e1                                      mov r3, sb
006d7c8c  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
006d7c90  87 db f0 eb                                      bl #0x30eab4
006d7c94  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
006d7c98  48 20 9d e5                                      ldr r2, [sp, #0x48]
006d7c9c  00 a0 a0 e3                                      mov sl, #0
006d7ca0  03 30 84 e0                                      add r3, r4, r3
006d7ca4  38 30 8d e5                                      str r3, [sp, #0x38]
006d7ca8  ff 35 a0 e3                                      mov r3, #0x3fc00000
006d7cac  03 36 83 e2                                      add r3, r3, #0x300000
006d7cb0  00 b0 a0 e3                                      mov fp, #0
006d7cb4  04 80 62 e0                                      rsb r8, r2, r4
006d7cb8  78 50 8d e2                                      add r5, sp, #0x78
006d7cbc  00 20 a0 e3                                      mov r2, #0
006d7cc0  0c 20 8d e5                                      str r2, [sp, #0xc]
006d7cc4  08 30 8d e5                                      str r3, [sp, #8]
006d7cc8  f0 a1 cd e1                                      strd sl, fp, [sp, #0x10]
006d7ccc  3c 50 8d e5                                      str r5, [sp, #0x3c]
006d7cd0  72 da f0 eb                                      bl #0x30e6a0
006d7cd4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006d7cd8  00 90 a0 e1                                      mov sb, r0
006d7cdc  08 30 9d e5                                      ldr r3, [sp, #8]
006d7ce0  80 00 00 ea                                      b #0x6d7ee8
006d7ce4  7c a0 9d e5                                      ldr sl, [sp, #0x7c]
006d7ce8  bf 14 a0 e3                                      mov r1, #0xbf000000
006d7cec  02 15 81 e2                                      add r1, r1, #0x800000
006d7cf0  0a 00 a0 e1                                      mov r0, sl
006d7cf4  a4 d8 f0 eb                                      bl #0x30df8c
006d7cf8  00 00 50 e3                                      cmp r0, #0
006d7cfc  97 00 00 1a                                      bne #0x6d7f60
006d7d00  0a 00 a0 e1                                      mov r0, sl
006d7d04  fe 15 a0 e3                                      mov r1, #0x3f800000
006d7d08  9f d8 f0 eb                                      bl #0x30df8c
006d7d0c  00 00 50 e3                                      cmp r0, #0
006d7d10  92 00 00 1a                                      bne #0x6d7f60
006d7d14  78 00 9d e5                                      ldr r0, [sp, #0x78]
006d7d18  e1 da f0 eb                                      bl #0x30e8a4
006d7d1c  d8 21 cd e1                                      ldrd r2, r3, [sp, #0x18]
006d7d20  86 d9 f0 eb                                      bl #0x30e340
006d7d24  bf 34 a0 e3                                      mov r3, #0xbf000000
006d7d28  00 20 a0 e3                                      mov r2, #0
006d7d2c  0f 36 83 e2                                      add r3, r3, #0xf00000
006d7d30  01 b0 a0 e1                                      mov fp, r1
006d7d34  00 a0 a0 e1                                      mov sl, r0
006d7d38  88 da f0 eb                                      bl #0x30e760
006d7d3c  00 00 50 e3                                      cmp r0, #0
006d7d40  bf b4 a0 13                                      movne fp, #0xbf000000
006d7d44  00 a0 a0 13                                      movne sl, #0
006d7d48  0f b6 8b 12                                      addne fp, fp, #0xf00000
006d7d4c  09 00 00 1a                                      bne #0x6d7d78
006d7d50  ff 35 a0 e3                                      mov r3, #0x3fc00000
006d7d54  0b 10 a0 e1                                      mov r1, fp
006d7d58  0a 00 a0 e1                                      mov r0, sl
006d7d5c  00 20 a0 e3                                      mov r2, #0
006d7d60  03 36 83 e2                                      add r3, r3, #0x300000
006d7d64  7d da f0 eb                                      bl #0x30e760
006d7d68  00 00 50 e3                                      cmp r0, #0
006d7d6c  ff b5 a0 03                                      moveq fp, #0x3fc00000
006d7d70  00 a0 a0 03                                      moveq sl, #0
006d7d74  03 b6 8b 02                                      addeq fp, fp, #0x300000
006d7d78  0a 00 a0 e1                                      mov r0, sl
006d7d7c  0b 10 a0 e1                                      mov r1, fp
006d7d80  a0 da f0 eb                                      bl #0x30e808
006d7d84  ff 35 a0 e3                                      mov r3, #0x3fc00000
006d7d88  00 20 a0 e3                                      mov r2, #0
006d7d8c  02 36 83 e2                                      add r3, r3, #0x200000
006d7d90  47 db f0 eb                                      bl #0x30eab4
006d7d94  83 28 0c e3                                      movw r2, #0xc883
006d7d98  30 3f 05 e3                                      movw r3, #0x5f30
006d7d9c  c9 2d 46 e3                                      movt r2, #0x6dc9
006d7da0  d4 3f 43 e3                                      movt r3, #0x3fd4
006d7da4  42 db f0 eb                                      bl #0x30eab4
006d7da8  3c da f0 eb                                      bl #0x30e6a0
006d7dac  00 a0 a0 e1                                      mov sl, r0
006d7db0  80 00 9d e5                                      ldr r0, [sp, #0x80]
006d7db4  00 10 a0 e3                                      mov r1, #0
006d7db8  53 da f0 eb                                      bl #0x30e70c
006d7dbc  00 00 50 e3                                      cmp r0, #0
006d7dc0  03 00 00 0a                                      beq #0x6d7dd4
006d7dc4  0a 10 a0 e1                                      mov r1, sl
006d7dc8  fe 05 a0 e3                                      mov r0, #0x3f800000
006d7dcc  76 d9 f0 eb                                      bl #0x30e3ac
006d7dd0  00 a0 a0 e1                                      mov sl, r0
006d7dd4  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
006d7dd8  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006d7ddc  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006d7de0  92 04 02 e0                                      mul r2, r2, r4
006d7de4  02 30 81 e0                                      add r3, r1, r2
006d7de8  02 60 81 e7                                      str r6, [r1, r2]
006d7dec  08 50 83 e5                                      str r5, [r3, #8]
006d7df0  04 90 83 e5                                      str sb, [r3, #4]
006d7df4  98 c0 9d e5                                      ldr ip, [sp, #0x98]
006d7df8  00 00 5c e3                                      cmp ip, #0
006d7dfc  0c 00 00 0a                                      beq #0x6d7e34
006d7e00  94 e0 9d e5                                      ldr lr, [sp, #0x94]
006d7e04  83 28 0c e3                                      movw r2, #0xc883
006d7e08  30 3f 05 e3                                      movw r3, #0x5f30
006d7e0c  be 50 de e1                                      ldrh r5, [lr, #0xe]
006d7e10  d0 03 cd e1                                      ldrd r0, r1, [sp, #0x30]
006d7e14  c9 2d 46 e3                                      movt r2, #0x6dc9
006d7e18  95 04 05 e0                                      mul r5, r5, r4
006d7e1c  d4 3f 43 e3                                      movt r3, #0x3fd4
006d7e20  05 a0 8c e7                                      str sl, [ip, r5]
006d7e24  05 50 8c e0                                      add r5, ip, r5
006d7e28  21 db f0 eb                                      bl #0x30eab4
006d7e2c  1b da f0 eb                                      bl #0x30e6a0
006d7e30  04 00 85 e5                                      str r0, [r5, #4]
006d7e34  90 30 9d e5                                      ldr r3, [sp, #0x90]
006d7e38  00 00 53 e3                                      cmp r3, #0
006d7e3c  09 00 00 0a                                      beq #0x6d7e68
006d7e40  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
006d7e44  78 10 9d e5                                      ldr r1, [sp, #0x78]
006d7e48  be 20 d2 e1                                      ldrh r2, [r2, #0xe]
006d7e4c  92 04 02 e0                                      mul r2, r2, r4
006d7e50  02 10 83 e7                                      str r1, [r3, r2]
006d7e54  02 30 83 e0                                      add r3, r3, r2
006d7e58  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
006d7e5c  04 20 83 e5                                      str r2, [r3, #4]
006d7e60  80 20 9d e5                                      ldr r2, [sp, #0x80]
006d7e64  08 20 83 e5                                      str r2, [r3, #8]
006d7e68  88 30 9d e5                                      ldr r3, [sp, #0x88]
006d7e6c  00 00 53 e3                                      cmp r3, #0
006d7e70  08 00 00 0a                                      beq #0x6d7e98
006d7e74  84 20 9d e5                                      ldr r2, [sp, #0x84]
006d7e78  64 c0 a0 e3                                      mov ip, #0x64
006d7e7c  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
006d7e80  91 04 01 e0                                      mul r1, r1, r4
006d7e84  01 20 83 e0                                      add r2, r3, r1
006d7e88  01 70 c2 e5                                      strb r7, [r2, #1]
006d7e8c  03 c0 c2 e5                                      strb ip, [r2, #3]
006d7e90  02 70 c2 e5                                      strb r7, [r2, #2]
006d7e94  01 70 c3 e7                                      strb r7, [r3, r1]
006d7e98  38 e0 9d e5                                      ldr lr, [sp, #0x38]
006d7e9c  01 40 84 e2                                      add r4, r4, #1
006d7ea0  01 80 88 e2                                      add r8, r8, #1
006d7ea4  0e 00 54 e1                                      cmp r4, lr
006d7ea8  2e 00 00 0a                                      beq #0x6d7f68
006d7eac  d0 24 cd e1                                      ldrd r2, r3, [sp, #0x40]
006d7eb0  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
006d7eb4  22 db f0 eb                                      bl #0x30eb44
006d7eb8  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
006d7ebc  a1 d8 f0 eb                                      bl #0x30e148
006d7ec0  00 20 a0 e1                                      mov r2, r0
006d7ec4  01 30 a0 e1                                      mov r3, r1
006d7ec8  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
006d7ecc  0c 20 8d e5                                      str r2, [sp, #0xc]
006d7ed0  08 30 8d e5                                      str r3, [sp, #8]
006d7ed4  44 d8 f0 eb                                      bl #0x30dfec
006d7ed8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006d7edc  08 30 9d e5                                      ldr r3, [sp, #8]
006d7ee0  00 a0 a0 e1                                      mov sl, r0
006d7ee4  01 b0 a0 e1                                      mov fp, r1
006d7ee8  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
006d7eec  f0 da f0 eb                                      bl #0x30eab4
006d7ef0  d8 21 cd e1                                      ldrd r2, r3, [sp, #0x18]
006d7ef4  ee da f0 eb                                      bl #0x30eab4
006d7ef8  e8 d9 f0 eb                                      bl #0x30e6a0
006d7efc  0a 20 a0 e1                                      mov r2, sl
006d7f00  00 60 a0 e1                                      mov r6, r0
006d7f04  0b 30 a0 e1                                      mov r3, fp
006d7f08  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
006d7f0c  e8 da f0 eb                                      bl #0x30eab4
006d7f10  d8 21 cd e1                                      ldrd r2, r3, [sp, #0x18]
006d7f14  e6 da f0 eb                                      bl #0x30eab4
006d7f18  e0 d9 f0 eb                                      bl #0x30e6a0
006d7f1c  00 50 a0 e1                                      mov r5, r0
006d7f20  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006d7f24  78 60 8d e5                                      str r6, [sp, #0x78]
006d7f28  7c 90 8d e5                                      str sb, [sp, #0x7c]
006d7f2c  80 50 8d e5                                      str r5, [sp, #0x80]
006d7f30  6a 1a f2 eb                                      bl #0x35e8e0
006d7f34  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
006d7f38  00 00 5a e3                                      cmp sl, #0
006d7f3c  68 ff ff 0a                                      beq #0x6d7ce4
006d7f40  98 30 9d e5                                      ldr r3, [sp, #0x98]
006d7f44  00 00 53 e3                                      cmp r3, #0
006d7f48  94 20 9d 15                                      ldrne r2, [sp, #0x94]
006d7f4c  3f a4 a0 03                                      moveq sl, #0x3f000000
006d7f50  be 20 d2 11                                      ldrhne r2, [r2, #0xe]
006d7f54  92 08 02 10                                      mulne r2, r2, r8
006d7f58  02 a0 93 17                                      ldrne sl, [r3, r2]
006d7f5c  9c ff ff ea                                      b #0x6d7dd4
006d7f60  3f a4 a0 e3                                      mov sl, #0x3f000000
006d7f64  91 ff ff ea                                      b #0x6d7db0
006d7f68  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
006d7f6c  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
006d7f70  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006d7f74  04 10 60 e0                                      rsb r1, r0, r4
006d7f78  4c 50 9d e5                                      ldr r5, [sp, #0x4c]
006d7f7c  be 00 d2 e1                                      ldrh r0, [r2, #0xe]
006d7f80  be 20 d5 e1                                      ldrh r2, [r5, #0xe]
006d7f84  90 31 21 e0                                      mla r1, r0, r1, r3
006d7f88  90 34 20 e0                                      mla r0, r0, r4, r3
006d7f8c  35 da f0 eb                                      bl #0x30e868
006d7f90  98 30 9d e5                                      ldr r3, [sp, #0x98]
006d7f94  00 00 53 e3                                      cmp r3, #0
006d7f98  94 20 9d 15                                      ldrne r2, [sp, #0x94]
006d7f9c  fe 15 a0 13                                      movne r1, #0x3f800000
006d7fa0  be 20 d2 11                                      ldrhne r2, [r2, #0xe]
006d7fa4  92 04 02 10                                      mulne r2, r2, r4
006d7fa8  01 40 84 e2                                      add r4, r4, #1
006d7fac  02 10 83 17                                      strne r1, [r3, r2]
006d7fb0  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
006d7fb4  dc a0 9d e5                                      ldr sl, [sp, #0xdc]
006d7fb8  01 60 86 e2                                      add r6, r6, #1
006d7fbc  0a 00 56 e1                                      cmp r6, sl
006d7fc0  2c 60 8d e5                                      str r6, [sp, #0x2c]
006d7fc4  1f ff ff 1a                                      bne #0x6d7c48
006d7fc8  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
006d7fcc  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
006d7fd0  00 30 a0 e3                                      mov r3, #0
006d7fd4  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
006d7fd8  91 04 01 e0                                      mul r1, r1, r4
006d7fdc  01 20 80 e0                                      add r2, r0, r1
006d7fe0  01 30 80 e7                                      str r3, [r0, r1]
006d7fe4  08 30 82 e5                                      str r3, [r2, #8]
006d7fe8  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
006d7fec  04 c0 82 e5                                      str ip, [r2, #4]
006d7ff0  98 20 9d e5                                      ldr r2, [sp, #0x98]
006d7ff4  00 00 52 e3                                      cmp r2, #0
006d7ff8  06 00 00 0a                                      beq #0x6d8018
006d7ffc  94 10 9d e5                                      ldr r1, [sp, #0x94]
006d8000  3f c4 a0 e3                                      mov ip, #0x3f000000
006d8004  be 10 d1 e1                                      ldrh r1, [r1, #0xe]
006d8008  91 04 01 e0                                      mul r1, r1, r4
006d800c  01 00 82 e0                                      add r0, r2, r1
006d8010  01 c0 82 e7                                      str ip, [r2, r1]
006d8014  04 30 80 e5                                      str r3, [r0, #4]
006d8018  90 30 9d e5                                      ldr r3, [sp, #0x90]
006d801c  00 00 53 e3                                      cmp r3, #0
006d8020  08 00 00 0a                                      beq #0x6d8048
006d8024  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
006d8028  00 10 a0 e3                                      mov r1, #0
006d802c  be 00 d2 e1                                      ldrh r0, [r2, #0xe]
006d8030  90 04 00 e0                                      mul r0, r0, r4
006d8034  00 20 83 e0                                      add r2, r3, r0
006d8038  00 10 83 e7                                      str r1, [r3, r0]
006d803c  fe 35 a0 e3                                      mov r3, #0x3f800000
006d8040  08 10 82 e5                                      str r1, [r2, #8]
006d8044  04 30 82 e5                                      str r3, [r2, #4]
006d8048  88 30 9d e5                                      ldr r3, [sp, #0x88]
006d804c  00 00 53 e3                                      cmp r3, #0
006d8050  09 00 00 0a                                      beq #0x6d807c
006d8054  84 10 9d e5                                      ldr r1, [sp, #0x84]
006d8058  00 20 e0 e3                                      mvn r2, #0
006d805c  64 c0 a0 e3                                      mov ip, #0x64
006d8060  be 00 d1 e1                                      ldrh r0, [r1, #0xe]
006d8064  90 04 00 e0                                      mul r0, r0, r4
006d8068  00 10 83 e0                                      add r1, r3, r0
006d806c  03 c0 c1 e5                                      strb ip, [r1, #3]
006d8070  01 20 c1 e5                                      strb r2, [r1, #1]
006d8074  02 20 c1 e5                                      strb r2, [r1, #2]
006d8078  00 20 c3 e7                                      strb r2, [r3, r0]
006d807c  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
006d8080  01 40 84 e2                                      add r4, r4, #1
006d8084  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
006d8088  be 10 d3 e1                                      ldrh r1, [r3, #0xe]
006d808c  5c e0 9d e5                                      ldr lr, [sp, #0x5c]
006d8090  00 20 a0 e3                                      mov r2, #0
006d8094  91 04 01 e0                                      mul r1, r1, r4
006d8098  02 c1 8e e2                                      add ip, lr, #0x80000000
006d809c  01 30 80 e0                                      add r3, r0, r1
006d80a0  01 20 80 e7                                      str r2, [r0, r1]
006d80a4  08 20 83 e5                                      str r2, [r3, #8]
006d80a8  04 c0 83 e5                                      str ip, [r3, #4]
006d80ac  98 30 9d e5                                      ldr r3, [sp, #0x98]
006d80b0  00 00 53 e3                                      cmp r3, #0
006d80b4  07 00 00 0a                                      beq #0x6d80d8
006d80b8  94 20 9d e5                                      ldr r2, [sp, #0x94]
006d80bc  3f 04 a0 e3                                      mov r0, #0x3f000000
006d80c0  be 20 d2 e1                                      ldrh r2, [r2, #0xe]
006d80c4  92 04 02 e0                                      mul r2, r2, r4
006d80c8  02 10 83 e0                                      add r1, r3, r2
006d80cc  02 00 83 e7                                      str r0, [r3, r2]
006d80d0  fe 35 a0 e3                                      mov r3, #0x3f800000
006d80d4  04 30 81 e5                                      str r3, [r1, #4]
006d80d8  90 30 9d e5                                      ldr r3, [sp, #0x90]
006d80dc  00 00 53 e3                                      cmp r3, #0
006d80e0  09 00 00 0a                                      beq #0x6d810c
006d80e4  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
006d80e8  00 10 a0 e3                                      mov r1, #0
006d80ec  be 00 d2 e1                                      ldrh r0, [r2, #0xe]
006d80f0  90 04 00 e0                                      mul r0, r0, r4
006d80f4  00 20 83 e0                                      add r2, r3, r0
006d80f8  00 10 83 e7                                      str r1, [r3, r0]
006d80fc  bf 34 a0 e3                                      mov r3, #0xbf000000
006d8100  02 35 83 e2                                      add r3, r3, #0x800000
006d8104  08 10 82 e5                                      str r1, [r2, #8]
006d8108  04 30 82 e5                                      str r3, [r2, #4]
006d810c  88 30 9d e5                                      ldr r3, [sp, #0x88]
006d8110  00 00 53 e3                                      cmp r3, #0
006d8114  09 00 00 0a                                      beq #0x6d8140
006d8118  84 10 9d e5                                      ldr r1, [sp, #0x84]
006d811c  00 20 e0 e3                                      mvn r2, #0
006d8120  64 00 a0 e3                                      mov r0, #0x64
006d8124  be 10 d1 e1                                      ldrh r1, [r1, #0xe]
006d8128  91 04 04 e0                                      mul r4, r1, r4
006d812c  04 10 83 e0                                      add r1, r3, r4
006d8130  03 00 c1 e5                                      strb r0, [r1, #3]
006d8134  01 20 c1 e5                                      strb r2, [r1, #1]
006d8138  02 20 c1 e5                                      strb r2, [r1, #2]
006d813c  04 20 c3 e7                                      strb r2, [r3, r4]
006d8140  00 10 a0 e3                                      mov r1, #0
006d8144  2c 00 a0 e3                                      mov r0, #0x2c
006d8148  17 70 f9 eb                                      bl #0x5341ac
006d814c  00 40 a0 e1                                      mov r4, r0
006d8150  5f 8e ff eb                                      bl #0x6bbad4
006d8154  00 00 54 e3                                      cmp r4, #0
006d8158  04 30 94 15                                      ldrne r3, [r4, #4]
006d815c  a8 50 8d e2                                      add r5, sp, #0xa8
006d8160  a4 60 8d e2                                      add r6, sp, #0xa4
006d8164  01 30 83 12                                      addne r3, r3, #1
006d8168  04 30 84 15                                      strne r3, [r4, #4]
006d816c  00 c0 a0 e3                                      mov ip, #0
006d8170  68 10 9d e5                                      ldr r1, [sp, #0x68]
006d8174  05 20 a0 e1                                      mov r2, r5
006d8178  06 30 a0 e1                                      mov r3, r6
006d817c  04 00 a0 e1                                      mov r0, r4
006d8180  a4 c0 8d e5                                      str ip, [sp, #0xa4]
006d8184  a8 c0 8d e5                                      str ip, [sp, #0xa8]
006d8188  35 91 ff eb                                      bl #0x6bc664
006d818c  06 00 a0 e1                                      mov r0, r6
006d8190  35 88 fa eb                                      bl #0x57a26c
006d8194  05 00 a0 e1                                      mov r0, r5
006d8198  92 e2 f0 eb                                      bl #0x310be8
006d819c  04 00 a0 e1                                      mov r0, r4
006d81a0  49 90 ff eb                                      bl #0x6bc2cc
006d81a4  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006d81a8  00 00 54 e3                                      cmp r4, #0
006d81ac  00 40 80 e5                                      str r4, [r0]
006d81b0  04 00 00 0a                                      beq #0x6d81c8
006d81b4  04 30 94 e5                                      ldr r3, [r4, #4]
006d81b8  04 00 a0 e1                                      mov r0, r4
006d81bc  01 30 83 e2                                      add r3, r3, #1
006d81c0  04 30 84 e5                                      str r3, [r4, #4]
006d81c4  ee 14 f1 eb                                      bl #0x31d584
006d81c8  88 30 9d e5                                      ldr r3, [sp, #0x88]
006d81cc  00 00 53 e3                                      cmp r3, #0
006d81d0  0c 00 00 0a                                      beq #0x6d8208
006d81d4  84 30 9d e5                                      ldr r3, [sp, #0x84]
006d81d8  00 40 93 e5                                      ldr r4, [r3]
006d81dc  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d81e0  1f 20 03 e2                                      and r2, r3, #0x1f
006d81e4  01 00 52 e3                                      cmp r2, #1
006d81e8  6c 00 00 9a                                      bls #0x6d83a0
006d81ec  01 20 42 e2                                      sub r2, r2, #1
006d81f0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d81f4  03 30 82 e1                                      orr r3, r2, r3
006d81f8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d81fc  00 30 a0 e3                                      mov r3, #0
006d8200  88 30 8d e5                                      str r3, [sp, #0x88]
006d8204  84 30 8d e5                                      str r3, [sp, #0x84]
006d8208  90 30 9d e5                                      ldr r3, [sp, #0x90]
006d820c  00 00 53 e3                                      cmp r3, #0
006d8210  0c 00 00 0a                                      beq #0x6d8248
006d8214  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
006d8218  00 40 93 e5                                      ldr r4, [r3]
006d821c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d8220  1f 20 03 e2                                      and r2, r3, #0x1f
006d8224  01 00 52 e3                                      cmp r2, #1
006d8228  56 00 00 9a                                      bls #0x6d8388
006d822c  01 20 42 e2                                      sub r2, r2, #1
006d8230  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8234  03 30 82 e1                                      orr r3, r2, r3
006d8238  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d823c  00 30 a0 e3                                      mov r3, #0
006d8240  90 30 8d e5                                      str r3, [sp, #0x90]
006d8244  8c 30 8d e5                                      str r3, [sp, #0x8c]
006d8248  98 30 9d e5                                      ldr r3, [sp, #0x98]
006d824c  00 00 53 e3                                      cmp r3, #0
006d8250  0c 00 00 0a                                      beq #0x6d8288
006d8254  94 30 9d e5                                      ldr r3, [sp, #0x94]
006d8258  00 40 93 e5                                      ldr r4, [r3]
006d825c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d8260  1f 20 03 e2                                      and r2, r3, #0x1f
006d8264  01 00 52 e3                                      cmp r2, #1
006d8268  40 00 00 9a                                      bls #0x6d8370
006d826c  01 20 42 e2                                      sub r2, r2, #1
006d8270  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8274  03 30 82 e1                                      orr r3, r2, r3
006d8278  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d827c  00 30 a0 e3                                      mov r3, #0
006d8280  98 30 8d e5                                      str r3, [sp, #0x98]
006d8284  94 30 8d e5                                      str r3, [sp, #0x94]
006d8288  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006d828c  00 00 53 e3                                      cmp r3, #0
006d8290  0c 00 00 0a                                      beq #0x6d82c8
006d8294  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
006d8298  00 40 93 e5                                      ldr r4, [r3]
006d829c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d82a0  1f 20 03 e2                                      and r2, r3, #0x1f
006d82a4  01 00 52 e3                                      cmp r2, #1
006d82a8  2a 00 00 9a                                      bls #0x6d8358
006d82ac  01 20 42 e2                                      sub r2, r2, #1
006d82b0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d82b4  03 30 82 e1                                      orr r3, r2, r3
006d82b8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d82bc  00 30 a0 e3                                      mov r3, #0
006d82c0  a0 30 8d e5                                      str r3, [sp, #0xa0]
006d82c4  9c 30 8d e5                                      str r3, [sp, #0x9c]
006d82c8  60 10 9d e5                                      ldr r1, [sp, #0x60]
006d82cc  00 00 51 e3                                      cmp r1, #0
006d82d0  09 00 00 0a                                      beq #0x6d82fc
006d82d4  64 20 9d e5                                      ldr r2, [sp, #0x64]
006d82d8  18 40 92 e5                                      ldr r4, [r2, #0x18]
006d82dc  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d82e0  1f 20 03 e2                                      and r2, r3, #0x1f
006d82e4  01 00 52 e3                                      cmp r2, #1
006d82e8  14 00 00 9a                                      bls #0x6d8340
006d82ec  01 20 42 e2                                      sub r2, r2, #1
006d82f0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d82f4  03 30 82 e1                                      orr r3, r2, r3
006d82f8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d82fc  ac 00 9d e5                                      ldr r0, [sp, #0xac]
006d8300  00 00 50 e3                                      cmp r0, #0
006d8304  00 00 00 0a                                      beq #0x6d830c
006d8308  9d 14 f1 eb                                      bl #0x31d584
006d830c  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006d8310  b4 d0 8d e2                                      add sp, sp, #0xb4
006d8314  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d8318  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
006d831c  0e 00 a0 e1                                      mov r0, lr
006d8320  01 30 83 e2                                      add r3, r3, #1
006d8324  03 10 a0 e1                                      mov r1, r3
006d8328  48 30 8d e5                                      str r3, [sp, #0x48]
006d832c  46 da f0 eb                                      bl #0x30ec4c
006d8330  d8 40 9d e5                                      ldr r4, [sp, #0xd8]
006d8334  dc 00 8d e5                                      str r0, [sp, #0xdc]
006d8338  94 00 0c e0                                      mul ip, r4, r0
006d833c  51 fd ff ea                                      b #0x6d7888
006d8340  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d8344  20 00 13 e3                                      tst r3, #0x20
006d8348  2e 00 00 1a                                      bne #0x6d8408
006d834c  00 30 a0 e3                                      mov r3, #0
006d8350  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8354  e8 ff ff ea                                      b #0x6d82fc
006d8358  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d835c  20 00 13 e3                                      tst r3, #0x20
006d8360  23 00 00 1a                                      bne #0x6d83f4
006d8364  00 30 a0 e3                                      mov r3, #0
006d8368  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d836c  d2 ff ff ea                                      b #0x6d82bc
006d8370  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d8374  20 00 13 e3                                      tst r3, #0x20
006d8378  18 00 00 1a                                      bne #0x6d83e0
006d837c  00 30 a0 e3                                      mov r3, #0
006d8380  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8384  bc ff ff ea                                      b #0x6d827c
006d8388  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d838c  20 00 13 e3                                      tst r3, #0x20
006d8390  0d 00 00 1a                                      bne #0x6d83cc
006d8394  00 30 a0 e3                                      mov r3, #0
006d8398  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d839c  a6 ff ff ea                                      b #0x6d823c
006d83a0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d83a4  20 00 13 e3                                      tst r3, #0x20
006d83a8  02 00 00 1a                                      bne #0x6d83b8
006d83ac  00 30 a0 e3                                      mov r3, #0
006d83b0  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d83b4  90 ff ff ea                                      b #0x6d81fc
006d83b8  00 30 94 e5                                      ldr r3, [r4]
006d83bc  04 00 a0 e1                                      mov r0, r4
006d83c0  0f e0 a0 e1                                      mov lr, pc
006d83c4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d83c8  f7 ff ff ea                                      b #0x6d83ac
006d83cc  00 30 94 e5                                      ldr r3, [r4]
006d83d0  04 00 a0 e1                                      mov r0, r4
006d83d4  0f e0 a0 e1                                      mov lr, pc
006d83d8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d83dc  ec ff ff ea                                      b #0x6d8394
006d83e0  00 30 94 e5                                      ldr r3, [r4]
006d83e4  04 00 a0 e1                                      mov r0, r4
006d83e8  0f e0 a0 e1                                      mov lr, pc
006d83ec  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d83f0  e1 ff ff ea                                      b #0x6d837c
006d83f4  00 30 94 e5                                      ldr r3, [r4]
006d83f8  04 00 a0 e1                                      mov r0, r4
006d83fc  0f e0 a0 e1                                      mov lr, pc
006d8400  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d8404  d6 ff ff ea                                      b #0x6d8364
006d8408  00 30 94 e5                                      ldr r3, [r4]
006d840c  04 00 a0 e1                                      mov r0, r4
006d8410  0f e0 a0 e1                                      mov lr, pc
006d8414  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d8418  cb ff ff ea                                      b #0x6d834c

; FUNCTION 0x006d841c, declared_size=2200, range_size=2200, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene19createHillPlaneMeshEjPNS_5video12IVideoDriverERKNS_4core11dimension2dIfEERKNS5_IjEERKN5boost13intrusive_ptrINS1_9CMaterialEEERKNSD_INS1_27CMaterialVertexAttributeMapEEEfS8_S8_
; demangled: glitch::scene::createHillPlaneMesh(unsigned int, glitch::video::IVideoDriver*, glitch::core::dimension2d<float> const&, glitch::core::dimension2d<unsigned int> const&, boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&, float, glitch::core::dimension2d<float> const&, glitch::core::dimension2d<float> const&)
; decoder-mode: arm
006d841c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d8420  94 d0 4d e2                                      sub sp, sp, #0x94
006d8424  c8 c0 9d e5                                      ldr ip, [sp, #0xc8]
006d8428  50 00 8d e5                                      str r0, [sp, #0x50]
006d842c  b8 e0 9d e5                                      ldr lr, [sp, #0xb8]
006d8430  00 00 9c e5                                      ldr r0, [ip]
006d8434  20 30 8d e5                                      str r3, [sp, #0x20]
006d8438  02 80 a0 e1                                      mov r8, r2
006d843c  30 00 8d e5                                      str r0, [sp, #0x30]
006d8440  00 20 9e e5                                      ldr r2, [lr]
006d8444  01 70 a0 e1                                      mov r7, r1
006d8448  0a 17 0d e3                                      movw r1, #0xd70a
006d844c  3c 20 8d e5                                      str r2, [sp, #0x3c]
006d8450  04 c0 9c e5                                      ldr ip, [ip, #4]
006d8454  23 1c 43 e3                                      movt r1, #0x3c23
006d8458  04 b0 9e e5                                      ldr fp, [lr, #4]
006d845c  34 c0 8d e5                                      str ip, [sp, #0x34]
006d8460  a9 d8 f0 eb                                      bl #0x30e70c
006d8464  0a 17 0d e3                                      movw r1, #0xd70a
006d8468  00 00 50 e3                                      cmp r0, #0
006d846c  fe 35 a0 13                                      movne r3, #0x3f800000
006d8470  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d8474  23 1c 43 e3                                      movt r1, #0x3c23
006d8478  30 30 8d 15                                      strne r3, [sp, #0x30]
006d847c  a2 d8 f0 eb                                      bl #0x30e70c
006d8480  00 00 50 e3                                      cmp r0, #0
006d8484  fe c5 a0 13                                      movne ip, #0x3f800000
006d8488  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006d848c  34 c0 8d 15                                      strne ip, [sp, #0x34]
006d8490  92 d7 f0 eb                                      bl #0x30e2e0
006d8494  20 20 9d e5                                      ldr r2, [sp, #0x20]
006d8498  00 40 a0 e1                                      mov r4, r0
006d849c  cc 60 9d e5                                      ldr r6, [sp, #0xcc]
006d84a0  00 10 92 e5                                      ldr r1, [r2]
006d84a4  30 da f0 eb                                      bl #0x30ed6c
006d84a8  3f 14 a0 e3                                      mov r1, #0x3f000000
006d84ac  2e da f0 eb                                      bl #0x30ed6c
006d84b0  14 00 8d e5                                      str r0, [sp, #0x14]
006d84b4  0b 00 a0 e1                                      mov r0, fp
006d84b8  88 d7 f0 eb                                      bl #0x30e2e0
006d84bc  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d84c0  00 50 a0 e1                                      mov r5, r0
006d84c4  c4 a0 9d e5                                      ldr sl, [sp, #0xc4]
006d84c8  04 10 93 e5                                      ldr r1, [r3, #4]
006d84cc  26 da f0 eb                                      bl #0x30ed6c
006d84d0  3f 14 a0 e3                                      mov r1, #0x3f000000
006d84d4  24 da f0 eb                                      bl #0x30ed6c
006d84d8  10 00 8d e5                                      str r0, [sp, #0x10]
006d84dc  00 00 96 e5                                      ldr r0, [r6]
006d84e0  04 10 a0 e1                                      mov r1, r4
006d84e4  ea d9 f0 eb                                      bl #0x30ec94
006d84e8  44 00 8d e5                                      str r0, [sp, #0x44]
006d84ec  04 00 96 e5                                      ldr r0, [r6, #4]
006d84f0  05 10 a0 e1                                      mov r1, r5
006d84f4  e6 d9 f0 eb                                      bl #0x30ec94
006d84f8  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006d84fc  06 30 a0 e3                                      mov r3, #6
006d8500  01 20 8b e2                                      add r2, fp, #1
006d8504  01 50 8c e2                                      add r5, ip, #1
006d8508  93 05 03 e0                                      mul r3, r3, r5
006d850c  40 20 8d e5                                      str r2, [sp, #0x40]
006d8510  06 30 43 e2                                      sub r3, r3, #6
006d8514  9b 03 03 e0                                      mul r3, fp, r3
006d8518  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006d851c  4c 30 8d e5                                      str r3, [sp, #0x4c]
006d8520  2c 00 8d e5                                      str r0, [sp, #0x2c]
006d8524  9c 05 03 e0                                      mul r3, ip, r5
006d8528  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006d852c  8c 00 8d e2                                      add r0, sp, #0x8c
006d8530  07 10 a0 e1                                      mov r1, r7
006d8534  08 20 a0 e1                                      mov r2, r8
006d8538  48 00 8d e5                                      str r0, [sp, #0x48]
006d853c  00 c0 8d e5                                      str ip, [sp]
006d8540  39 fa ff eb                                      bl #0x6d6e2c
006d8544  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
006d8548  74 00 8d e2                                      add r0, sp, #0x74
006d854c  7c 20 8d e2                                      add r2, sp, #0x7c
006d8550  54 00 8d e5                                      str r0, [sp, #0x54]
006d8554  58 20 8d e5                                      str r2, [sp, #0x58]
006d8558  14 c0 9c e5                                      ldr ip, [ip, #0x14]
006d855c  00 40 a0 e3                                      mov r4, #0
006d8560  48 00 9d e5                                      ldr r0, [sp, #0x48]
006d8564  5c c0 8d e5                                      str ip, [sp, #0x5c]
006d8568  04 c0 a0 e3                                      mov ip, #4
006d856c  04 c0 8d e5                                      str ip, [sp, #4]
006d8570  58 c0 9d e5                                      ldr ip, [sp, #0x58]
006d8574  84 10 8d e2                                      add r1, sp, #0x84
006d8578  54 20 9d e5                                      ldr r2, [sp, #0x54]
006d857c  04 30 a0 e1                                      mov r3, r4
006d8580  84 40 8d e5                                      str r4, [sp, #0x84]
006d8584  88 40 8d e5                                      str r4, [sp, #0x88]
006d8588  74 40 8d e5                                      str r4, [sp, #0x74]
006d858c  78 40 8d e5                                      str r4, [sp, #0x78]
006d8590  7c 40 8d e5                                      str r4, [sp, #0x7c]
006d8594  80 40 8d e5                                      str r4, [sp, #0x80]
006d8598  00 c0 8d e5                                      str ip, [sp]
006d859c  0d fb ff eb                                      bl #0x6d71d8
006d85a0  04 00 55 e1                                      cmp r5, r4
006d85a4  7c 00 00 0a                                      beq #0x6d879c
006d85a8  00 00 a0 e3                                      mov r0, #0
006d85ac  28 b0 8d e5                                      str fp, [sp, #0x28]
006d85b0  24 00 8d e5                                      str r0, [sp, #0x24]
006d85b4  38 40 8d e5                                      str r4, [sp, #0x38]
006d85b8  18 40 8d e5                                      str r4, [sp, #0x18]
006d85bc  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d85c0  00 60 e0 e3                                      mvn r6, #0
006d85c4  0a b0 a0 e1                                      mov fp, sl
006d85c8  40 30 9d e5                                      ldr r3, [sp, #0x40]
006d85cc  00 00 53 e3                                      cmp r3, #0
006d85d0  00 80 a0 13                                      movne r8, #0
006d85d4  00 40 a0 13                                      movne r4, #0
006d85d8  08 70 a0 11                                      movne r7, r8
006d85dc  07 00 00 1a                                      bne #0x6d8600
006d85e0  5b 00 00 ea                                      b #0x6d8754
006d85e4  6e d9 f0 eb                                      bl #0x30eba4
006d85e8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006d85ec  00 70 a0 e1                                      mov r7, r0
006d85f0  08 00 a0 e1                                      mov r0, r8
006d85f4  6a d9 f0 eb                                      bl #0x30eba4
006d85f8  01 40 84 e2                                      add r4, r4, #1
006d85fc  00 80 a0 e1                                      mov r8, r0
006d8600  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d8604  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d8608  67 d7 f0 eb                                      bl #0x30e3ac
006d860c  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d8610  00 90 a0 e1                                      mov sb, r0
006d8614  07 00 a0 e1                                      mov r0, r7
006d8618  63 d7 f0 eb                                      bl #0x30e3ac
006d861c  00 10 a0 e3                                      mov r1, #0
006d8620  00 a0 a0 e1                                      mov sl, r0
006d8624  0b 00 a0 e1                                      mov r0, fp
006d8628  57 d6 f0 eb                                      bl #0x30df8c
006d862c  18 20 9d e5                                      ldr r2, [sp, #0x18]
006d8630  00 00 50 e3                                      cmp r0, #0
006d8634  00 c0 a0 13                                      movne ip, #0
006d8638  02 50 84 e0                                      add r5, r4, r2
006d863c  1a 00 00 1a                                      bne #0x6d86ac
006d8640  30 10 9d e5                                      ldr r1, [sp, #0x30]
006d8644  09 00 a0 e1                                      mov r0, sb
006d8648  c7 d9 f0 eb                                      bl #0x30ed6c
006d864c  db 1f 00 e3                                      movw r1, #0xfdb
006d8650  49 10 44 e3                                      movt r1, #0x4049
006d8654  c4 d9 f0 eb                                      bl #0x30ed6c
006d8658  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d865c  8c d9 f0 eb                                      bl #0x30ec94
006d8660  28 d9 f0 eb                                      bl #0x30eb08
006d8664  34 10 9d e5                                      ldr r1, [sp, #0x34]
006d8668  00 30 a0 e1                                      mov r3, r0
006d866c  0a 00 a0 e1                                      mov r0, sl
006d8670  0c 30 8d e5                                      str r3, [sp, #0xc]
006d8674  bc d9 f0 eb                                      bl #0x30ed6c
006d8678  db 1f 00 e3                                      movw r1, #0xfdb
006d867c  49 10 44 e3                                      movt r1, #0x4049
006d8680  b9 d9 f0 eb                                      bl #0x30ed6c
006d8684  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d8688  81 d9 f0 eb                                      bl #0x30ec94
006d868c  30 d8 f0 eb                                      bl #0x30e754
006d8690  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d8694  00 10 a0 e1                                      mov r1, r0
006d8698  03 00 a0 e1                                      mov r0, r3
006d869c  b2 d9 f0 eb                                      bl #0x30ed6c
006d86a0  0b 10 a0 e1                                      mov r1, fp
006d86a4  b0 d9 f0 eb                                      bl #0x30ed6c
006d86a8  00 c0 a0 e1                                      mov ip, r0
006d86ac  84 30 9d e5                                      ldr r3, [sp, #0x84]
006d86b0  88 e0 9d e5                                      ldr lr, [sp, #0x88]
006d86b4  08 10 a0 e1                                      mov r1, r8
006d86b8  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006d86bc  fe 05 a0 e3                                      mov r0, #0x3f800000
006d86c0  92 05 02 e0                                      mul r2, r2, r5
006d86c4  02 30 8e e0                                      add r3, lr, r2
006d86c8  02 90 8e e7                                      str sb, [lr, r2]
006d86cc  08 a0 83 e5                                      str sl, [r3, #8]
006d86d0  04 c0 83 e5                                      str ip, [r3, #4]
006d86d4  78 30 9d e5                                      ldr r3, [sp, #0x78]
006d86d8  00 00 53 e3                                      cmp r3, #0
006d86dc  07 00 00 0a                                      beq #0x6d8700
006d86e0  74 20 9d e5                                      ldr r2, [sp, #0x74]
006d86e4  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006d86e8  be a0 d2 e1                                      ldrh sl, [r2, #0xe]
006d86ec  9a 05 0a e0                                      mul sl, sl, r5
006d86f0  0a c0 83 e7                                      str ip, [r3, sl]
006d86f4  0a a0 83 e0                                      add sl, r3, sl
006d86f8  2b d7 f0 eb                                      bl #0x30e3ac
006d86fc  04 00 8a e5                                      str r0, [sl, #4]
006d8700  80 30 9d e5                                      ldr r3, [sp, #0x80]
006d8704  07 00 a0 e1                                      mov r0, r7
006d8708  00 00 53 e3                                      cmp r3, #0
006d870c  07 00 00 0a                                      beq #0x6d8730
006d8710  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
006d8714  be 20 d2 e1                                      ldrh r2, [r2, #0xe]
006d8718  92 05 05 e0                                      mul r5, r2, r5
006d871c  05 20 83 e0                                      add r2, r3, r5
006d8720  03 60 c2 e5                                      strb r6, [r2, #3]
006d8724  05 60 c3 e7                                      strb r6, [r3, r5]
006d8728  02 60 c2 e5                                      strb r6, [r2, #2]
006d872c  01 60 c2 e5                                      strb r6, [r2, #1]
006d8730  28 20 9d e5                                      ldr r2, [sp, #0x28]
006d8734  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d8738  02 00 54 e1                                      cmp r4, r2
006d873c  04 10 93 e5                                      ldr r1, [r3, #4]
006d8740  a7 ff ff 1a                                      bne #0x6d85e4
006d8744  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006d8748  40 00 9d e5                                      ldr r0, [sp, #0x40]
006d874c  00 c0 8c e0                                      add ip, ip, r0
006d8750  18 c0 8d e5                                      str ip, [sp, #0x18]
006d8754  38 20 9d e5                                      ldr r2, [sp, #0x38]
006d8758  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006d875c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006d8760  03 00 52 e1                                      cmp r2, r3
006d8764  00 10 9c e5                                      ldr r1, [ip]
006d8768  0a 00 00 0a                                      beq #0x6d8798
006d876c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d8770  0b d9 f0 eb                                      bl #0x30eba4
006d8774  38 20 9d e5                                      ldr r2, [sp, #0x38]
006d8778  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d877c  44 10 9d e5                                      ldr r1, [sp, #0x44]
006d8780  24 00 9d e5                                      ldr r0, [sp, #0x24]
006d8784  01 20 82 e2                                      add r2, r2, #1
006d8788  38 20 8d e5                                      str r2, [sp, #0x38]
006d878c  04 d9 f0 eb                                      bl #0x30eba4
006d8790  24 00 8d e5                                      str r0, [sp, #0x24]
006d8794  8b ff ff ea                                      b #0x6d85c8
006d8798  28 b0 9d e5                                      ldr fp, [sp, #0x28]
006d879c  80 30 9d e5                                      ldr r3, [sp, #0x80]
006d87a0  00 00 53 e3                                      cmp r3, #0
006d87a4  0c 00 00 0a                                      beq #0x6d87dc
006d87a8  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006d87ac  00 40 93 e5                                      ldr r4, [r3]
006d87b0  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d87b4  1f 20 03 e2                                      and r2, r3, #0x1f
006d87b8  01 00 52 e3                                      cmp r2, #1
006d87bc  02 01 00 9a                                      bls #0x6d8bcc
006d87c0  01 20 42 e2                                      sub r2, r2, #1
006d87c4  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d87c8  03 30 82 e1                                      orr r3, r2, r3
006d87cc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d87d0  00 30 a0 e3                                      mov r3, #0
006d87d4  80 30 8d e5                                      str r3, [sp, #0x80]
006d87d8  7c 30 8d e5                                      str r3, [sp, #0x7c]
006d87dc  78 30 9d e5                                      ldr r3, [sp, #0x78]
006d87e0  00 00 53 e3                                      cmp r3, #0
006d87e4  0c 00 00 0a                                      beq #0x6d881c
006d87e8  74 30 9d e5                                      ldr r3, [sp, #0x74]
006d87ec  00 40 93 e5                                      ldr r4, [r3]
006d87f0  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d87f4  1f 20 03 e2                                      and r2, r3, #0x1f
006d87f8  01 00 52 e3                                      cmp r2, #1
006d87fc  ec 00 00 9a                                      bls #0x6d8bb4
006d8800  01 20 42 e2                                      sub r2, r2, #1
006d8804  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8808  03 30 82 e1                                      orr r3, r2, r3
006d880c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8810  00 30 a0 e3                                      mov r3, #0
006d8814  78 30 8d e5                                      str r3, [sp, #0x78]
006d8818  74 30 8d e5                                      str r3, [sp, #0x74]
006d881c  88 30 9d e5                                      ldr r3, [sp, #0x88]
006d8820  00 00 53 e3                                      cmp r3, #0
006d8824  0c 00 00 0a                                      beq #0x6d885c
006d8828  84 30 9d e5                                      ldr r3, [sp, #0x84]
006d882c  00 40 93 e5                                      ldr r4, [r3]
006d8830  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d8834  1f 20 03 e2                                      and r2, r3, #0x1f
006d8838  01 00 52 e3                                      cmp r2, #1
006d883c  d6 00 00 9a                                      bls #0x6d8b9c
006d8840  01 20 42 e2                                      sub r2, r2, #1
006d8844  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8848  03 30 82 e1                                      orr r3, r2, r3
006d884c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8850  00 30 a0 e3                                      mov r3, #0
006d8854  88 30 8d e5                                      str r3, [sp, #0x88]
006d8858  84 30 8d e5                                      str r3, [sp, #0x84]
006d885c  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
006d8860  02 10 a0 e3                                      mov r1, #2
006d8864  10 c0 8d e5                                      str ip, [sp, #0x10]
006d8868  18 00 9c e5                                      ldr r0, [ip, #0x18]
006d886c  5f 24 fb eb                                      bl #0x5a19f0
006d8870  10 20 9d e5                                      ldr r2, [sp, #0x10]
006d8874  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006d8878  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
006d887c  00 00 5c e3                                      cmp ip, #0
006d8880  03 00 80 e0                                      add r0, r0, r3
006d8884  24 00 00 0a                                      beq #0x6d891c
006d8888  40 30 9d e5                                      ldr r3, [sp, #0x40]
006d888c  06 90 a0 e3                                      mov sb, #6
006d8890  99 0b 09 e0                                      mul sb, sb, fp
006d8894  00 20 a0 e3                                      mov r2, #0
006d8898  73 a0 ff e6                                      uxth sl, r3
006d889c  02 60 a0 e1                                      mov r6, r2
006d88a0  02 80 a0 e1                                      mov r8, r2
006d88a4  00 00 5b e3                                      cmp fp, #0
006d88a8  0a 70 82 00                                      addeq r7, r2, sl
006d88ac  15 00 00 0a                                      beq #0x6d8908
006d88b0  02 70 8a e0                                      add r7, sl, r2
006d88b4  00 10 a0 e3                                      mov r1, #0
006d88b8  77 c0 ff e6                                      uxth ip, r7
006d88bc  01 e0 a0 e1                                      mov lr, r1
006d88c0  88 50 80 e0                                      add r5, r0, r8, lsl #1
006d88c4  01 30 82 e2                                      add r3, r2, #1
006d88c8  01 40 8c e2                                      add r4, ip, #1
006d88cc  01 e0 8e e2                                      add lr, lr, #1
006d88d0  b1 20 85 e1                                      strh r2, [r5, r1]
006d88d4  74 40 ff e6                                      uxth r4, r4
006d88d8  73 20 ff e6                                      uxth r2, r3
006d88dc  0b 00 5e e1                                      cmp lr, fp
006d88e0  01 30 85 e0                                      add r3, r5, r1
006d88e4  ba c0 c3 e1                                      strh ip, [r3, #0xa]
006d88e8  b4 c0 c3 e1                                      strh ip, [r3, #4]
006d88ec  b2 20 c3 e1                                      strh r2, [r3, #2]
006d88f0  b6 20 c3 e1                                      strh r2, [r3, #6]
006d88f4  b8 40 c3 e1                                      strh r4, [r3, #8]
006d88f8  0c 10 81 e2                                      add r1, r1, #0xc
006d88fc  04 c0 a0 e1                                      mov ip, r4
006d8900  ef ff ff 1a                                      bne #0x6d88c4
006d8904  09 80 88 e0                                      add r8, r8, sb
006d8908  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006d890c  01 60 86 e2                                      add r6, r6, #1
006d8910  77 20 ff e6                                      uxth r2, r7
006d8914  0c 00 56 e1                                      cmp r6, ip
006d8918  e1 ff ff 1a                                      bne #0x6d88a4
006d891c  00 00 50 e3                                      cmp r0, #0
006d8920  09 00 00 0a                                      beq #0x6d894c
006d8924  10 00 9d e5                                      ldr r0, [sp, #0x10]
006d8928  18 40 90 e5                                      ldr r4, [r0, #0x18]
006d892c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d8930  1f 20 03 e2                                      and r2, r3, #0x1f
006d8934  01 00 52 e3                                      cmp r2, #1
006d8938  91 00 00 9a                                      bls #0x6d8b84
006d893c  01 20 42 e2                                      sub r2, r2, #1
006d8940  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8944  03 30 82 e1                                      orr r3, r2, r3
006d8948  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d894c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
006d8950  04 30 92 e5                                      ldr r3, [r2, #4]
006d8954  02 08 13 e3                                      tst r3, #0x20000
006d8958  6a 00 00 0a                                      beq #0x6d8b08
006d895c  00 60 a0 e3                                      mov r6, #0
006d8960  03 c0 a0 e3                                      mov ip, #3
006d8964  54 30 9d e5                                      ldr r3, [sp, #0x54]
006d8968  06 20 a0 e1                                      mov r2, r6
006d896c  58 10 9d e5                                      ldr r1, [sp, #0x58]
006d8970  48 00 9d e5                                      ldr r0, [sp, #0x48]
006d8974  04 c0 8d e5                                      str ip, [sp, #4]
006d8978  7c 60 8d e5                                      str r6, [sp, #0x7c]
006d897c  80 60 8d e5                                      str r6, [sp, #0x80]
006d8980  74 60 8d e5                                      str r6, [sp, #0x74]
006d8984  78 60 8d e5                                      str r6, [sp, #0x78]
006d8988  00 60 8d e5                                      str r6, [sp]
006d898c  11 fa ff eb                                      bl #0x6d71d8
006d8990  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
006d8994  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006d8998  18 20 93 e5                                      ldr r2, [r3, #0x18]
006d899c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
006d89a0  06 00 5c e1                                      cmp ip, r6
006d89a4  08 40 92 e5                                      ldr r4, [r2, #8]
006d89a8  03 40 84 e0                                      add r4, r4, r3
006d89ac  35 00 00 0a                                      beq #0x6d8a88
006d89b0  00 70 a0 e3                                      mov r7, #0
006d89b4  02 50 a0 e3                                      mov r5, #2
006d89b8  64 90 8d e2                                      add sb, sp, #0x64
006d89bc  0c b0 a0 e1                                      mov fp, ip
006d89c0  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006d89c4  86 80 a0 e1                                      lsl r8, r6, #1
006d89c8  02 a0 85 e2                                      add sl, r5, #2
006d89cc  be c0 d3 e1                                      ldrh ip, [r3, #0xe]
006d89d0  b5 e0 94 e1                                      ldrh lr, [r4, r5]
006d89d4  b8 10 94 e1                                      ldrh r1, [r4, r8]
006d89d8  ba 30 94 e1                                      ldrh r3, [r4, sl]
006d89dc  80 20 9d e5                                      ldr r2, [sp, #0x80]
006d89e0  09 00 a0 e1                                      mov r0, sb
006d89e4  64 70 8d e5                                      str r7, [sp, #0x64]
006d89e8  9c 23 23 e0                                      mla r3, ip, r3, r2
006d89ec  9c 21 21 e0                                      mla r1, ip, r1, r2
006d89f0  9c 2e 22 e0                                      mla r2, ip, lr, r2
006d89f4  68 70 8d e5                                      str r7, [sp, #0x68]
006d89f8  6c 70 8d e5                                      str r7, [sp, #0x6c]
006d89fc  76 24 fa eb                                      bl #0x561bdc
006d8a00  74 30 9d e5                                      ldr r3, [sp, #0x74]
006d8a04  b8 20 94 e1                                      ldrh r2, [r4, r8]
006d8a08  78 e0 9d e5                                      ldr lr, [sp, #0x78]
006d8a0c  be c0 d3 e1                                      ldrh ip, [r3, #0xe]
006d8a10  64 10 9d e5                                      ldr r1, [sp, #0x64]
006d8a14  68 30 9d e5                                      ldr r3, [sp, #0x68]
006d8a18  9c 02 0c e0                                      mul ip, ip, r2
006d8a1c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
006d8a20  0c 00 8e e0                                      add r0, lr, ip
006d8a24  0c 10 8e e7                                      str r1, [lr, ip]
006d8a28  08 20 80 e5                                      str r2, [r0, #8]
006d8a2c  04 30 80 e5                                      str r3, [r0, #4]
006d8a30  74 c0 9d e5                                      ldr ip, [sp, #0x74]
006d8a34  b5 00 94 e1                                      ldrh r0, [r4, r5]
006d8a38  78 e0 9d e5                                      ldr lr, [sp, #0x78]
006d8a3c  be c0 dc e1                                      ldrh ip, [ip, #0xe]
006d8a40  03 60 86 e2                                      add r6, r6, #3
006d8a44  06 00 5b e1                                      cmp fp, r6
006d8a48  9c 00 0c e0                                      mul ip, ip, r0
006d8a4c  06 50 85 e2                                      add r5, r5, #6
006d8a50  0c 00 8e e0                                      add r0, lr, ip
006d8a54  0c 10 8e e7                                      str r1, [lr, ip]
006d8a58  08 20 80 e5                                      str r2, [r0, #8]
006d8a5c  04 30 80 e5                                      str r3, [r0, #4]
006d8a60  74 c0 9d e5                                      ldr ip, [sp, #0x74]
006d8a64  ba 00 94 e1                                      ldrh r0, [r4, sl]
006d8a68  78 e0 9d e5                                      ldr lr, [sp, #0x78]
006d8a6c  be c0 dc e1                                      ldrh ip, [ip, #0xe]
006d8a70  9c 00 0c e0                                      mul ip, ip, r0
006d8a74  0c 00 8e e0                                      add r0, lr, ip
006d8a78  0c 10 8e e7                                      str r1, [lr, ip]
006d8a7c  08 20 80 e5                                      str r2, [r0, #8]
006d8a80  04 30 80 e5                                      str r3, [r0, #4]
006d8a84  cd ff ff 8a                                      bhi #0x6d89c0
006d8a88  78 30 9d e5                                      ldr r3, [sp, #0x78]
006d8a8c  00 00 53 e3                                      cmp r3, #0
006d8a90  0c 00 00 0a                                      beq #0x6d8ac8
006d8a94  74 30 9d e5                                      ldr r3, [sp, #0x74]
006d8a98  00 40 93 e5                                      ldr r4, [r3]
006d8a9c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d8aa0  1f 20 03 e2                                      and r2, r3, #0x1f
006d8aa4  01 00 52 e3                                      cmp r2, #1
006d8aa8  5d 00 00 9a                                      bls #0x6d8c24
006d8aac  01 20 42 e2                                      sub r2, r2, #1
006d8ab0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8ab4  03 30 82 e1                                      orr r3, r2, r3
006d8ab8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8abc  00 30 a0 e3                                      mov r3, #0
006d8ac0  78 30 8d e5                                      str r3, [sp, #0x78]
006d8ac4  74 30 8d e5                                      str r3, [sp, #0x74]
006d8ac8  80 30 9d e5                                      ldr r3, [sp, #0x80]
006d8acc  00 00 53 e3                                      cmp r3, #0
006d8ad0  0c 00 00 0a                                      beq #0x6d8b08
006d8ad4  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006d8ad8  00 40 93 e5                                      ldr r4, [r3]
006d8adc  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d8ae0  1f 20 03 e2                                      and r2, r3, #0x1f
006d8ae4  01 00 52 e3                                      cmp r2, #1
006d8ae8  3d 00 00 9a                                      bls #0x6d8be4
006d8aec  01 20 42 e2                                      sub r2, r2, #1
006d8af0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8af4  03 30 82 e1                                      orr r3, r2, r3
006d8af8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8afc  00 30 a0 e3                                      mov r3, #0
006d8b00  80 30 8d e5                                      str r3, [sp, #0x80]
006d8b04  7c 30 8d e5                                      str r3, [sp, #0x7c]
006d8b08  00 10 a0 e3                                      mov r1, #0
006d8b0c  2c 00 a0 e3                                      mov r0, #0x2c
006d8b10  a5 6d f9 eb                                      bl #0x5341ac
006d8b14  00 40 a0 e1                                      mov r4, r0
006d8b18  ed 8b ff eb                                      bl #0x6bbad4
006d8b1c  00 00 54 e3                                      cmp r4, #0
006d8b20  35 00 00 0a                                      beq #0x6d8bfc
006d8b24  04 30 94 e5                                      ldr r3, [r4, #4]
006d8b28  48 10 9d e5                                      ldr r1, [sp, #0x48]
006d8b2c  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
006d8b30  01 30 83 e2                                      add r3, r3, #1
006d8b34  04 30 84 e5                                      str r3, [r4, #4]
006d8b38  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
006d8b3c  04 00 a0 e1                                      mov r0, r4
006d8b40  c7 8e ff eb                                      bl #0x6bc664
006d8b44  04 00 a0 e1                                      mov r0, r4
006d8b48  df 8d ff eb                                      bl #0x6bc2cc
006d8b4c  50 00 9d e5                                      ldr r0, [sp, #0x50]
006d8b50  00 40 80 e5                                      str r4, [r0]
006d8b54  04 30 94 e5                                      ldr r3, [r4, #4]
006d8b58  04 00 a0 e1                                      mov r0, r4
006d8b5c  01 30 83 e2                                      add r3, r3, #1
006d8b60  04 30 84 e5                                      str r3, [r4, #4]
006d8b64  86 12 f1 eb                                      bl #0x31d584
006d8b68  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
006d8b6c  00 00 50 e3                                      cmp r0, #0
006d8b70  00 00 00 0a                                      beq #0x6d8b78
006d8b74  82 12 f1 eb                                      bl #0x31d584
006d8b78  50 00 9d e5                                      ldr r0, [sp, #0x50]
006d8b7c  94 d0 8d e2                                      add sp, sp, #0x94
006d8b80  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d8b84  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d8b88  20 00 13 e3                                      tst r3, #0x20
006d8b8c  2a 00 00 1a                                      bne #0x6d8c3c
006d8b90  00 30 a0 e3                                      mov r3, #0
006d8b94  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8b98  6b ff ff ea                                      b #0x6d894c
006d8b9c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d8ba0  20 00 13 e3                                      tst r3, #0x20
006d8ba4  33 00 00 1a                                      bne #0x6d8c78
006d8ba8  00 30 a0 e3                                      mov r3, #0
006d8bac  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8bb0  26 ff ff ea                                      b #0x6d8850
006d8bb4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d8bb8  20 00 13 e3                                      tst r3, #0x20
006d8bbc  28 00 00 1a                                      bne #0x6d8c64
006d8bc0  00 30 a0 e3                                      mov r3, #0
006d8bc4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8bc8  10 ff ff ea                                      b #0x6d8810
006d8bcc  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d8bd0  20 00 13 e3                                      tst r3, #0x20
006d8bd4  1d 00 00 1a                                      bne #0x6d8c50
006d8bd8  00 30 a0 e3                                      mov r3, #0
006d8bdc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8be0  fa fe ff ea                                      b #0x6d87d0
006d8be4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d8be8  20 00 13 e3                                      tst r3, #0x20
006d8bec  2b 00 00 1a                                      bne #0x6d8ca0
006d8bf0  00 30 a0 e3                                      mov r3, #0
006d8bf4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8bf8  bf ff ff ea                                      b #0x6d8afc
006d8bfc  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
006d8c00  48 10 9d e5                                      ldr r1, [sp, #0x48]
006d8c04  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
006d8c08  04 00 a0 e1                                      mov r0, r4
006d8c0c  94 8e ff eb                                      bl #0x6bc664
006d8c10  04 00 a0 e1                                      mov r0, r4
006d8c14  ac 8d ff eb                                      bl #0x6bc2cc
006d8c18  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d8c1c  00 40 82 e5                                      str r4, [r2]
006d8c20  d0 ff ff ea                                      b #0x6d8b68
006d8c24  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d8c28  20 00 13 e3                                      tst r3, #0x20
006d8c2c  16 00 00 1a                                      bne #0x6d8c8c
006d8c30  00 30 a0 e3                                      mov r3, #0
006d8c34  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8c38  9f ff ff ea                                      b #0x6d8abc
006d8c3c  00 30 94 e5                                      ldr r3, [r4]
006d8c40  04 00 a0 e1                                      mov r0, r4
006d8c44  0f e0 a0 e1                                      mov lr, pc
006d8c48  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d8c4c  cf ff ff ea                                      b #0x6d8b90
006d8c50  00 30 94 e5                                      ldr r3, [r4]
006d8c54  04 00 a0 e1                                      mov r0, r4
006d8c58  0f e0 a0 e1                                      mov lr, pc
006d8c5c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d8c60  dc ff ff ea                                      b #0x6d8bd8
006d8c64  00 30 94 e5                                      ldr r3, [r4]
006d8c68  04 00 a0 e1                                      mov r0, r4
006d8c6c  0f e0 a0 e1                                      mov lr, pc
006d8c70  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d8c74  d1 ff ff ea                                      b #0x6d8bc0
006d8c78  00 30 94 e5                                      ldr r3, [r4]
006d8c7c  04 00 a0 e1                                      mov r0, r4
006d8c80  0f e0 a0 e1                                      mov lr, pc
006d8c84  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d8c88  c6 ff ff ea                                      b #0x6d8ba8
006d8c8c  00 30 94 e5                                      ldr r3, [r4]
006d8c90  04 00 a0 e1                                      mov r0, r4
006d8c94  0f e0 a0 e1                                      mov lr, pc
006d8c98  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d8c9c  e3 ff ff ea                                      b #0x6d8c30
006d8ca0  00 30 94 e5                                      ldr r3, [r4]
006d8ca4  04 00 a0 e1                                      mov r0, r4
006d8ca8  0f e0 a0 e1                                      mov lr, pc
006d8cac  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d8cb0  ce ff ff ea                                      b #0x6d8bf0

; FUNCTION 0x006d8cb4, declared_size=1960, range_size=1960, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene14createCubeMeshEjPNS_5video12IVideoDriverEf
; demangled: glitch::scene::createCubeMesh(unsigned int, glitch::video::IVideoDriver*, float)
; decoder-mode: arm
006d8cb4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d8cb8  44 d0 4d e2                                      sub sp, sp, #0x44
006d8cbc  3c 50 8d e2                                      add r5, sp, #0x3c
006d8cc0  24 c0 a0 e3                                      mov ip, #0x24
006d8cc4  0c 00 8d e5                                      str r0, [sp, #0xc]
006d8cc8  03 40 a0 e1                                      mov r4, r3
006d8ccc  05 00 a0 e1                                      mov r0, r5
006d8cd0  18 30 a0 e3                                      mov r3, #0x18
006d8cd4  00 c0 8d e5                                      str ip, [sp]
006d8cd8  53 f8 ff eb                                      bl #0x6d6e2c
006d8cdc  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
006d8ce0  04 10 a0 e3                                      mov r1, #4
006d8ce4  18 00 96 e5                                      ldr r0, [r6, #0x18]
006d8ce8  40 23 fb eb                                      bl #0x5a19f0
006d8cec  1c 70 96 e5                                      ldr r7, [r6, #0x1c]
006d8cf0  58 17 9f e5                                      ldr r1, [pc, #0x758]
006d8cf4  48 20 a0 e3                                      mov r2, #0x48
006d8cf8  07 70 80 e0                                      add r7, r0, r7
006d8cfc  01 10 8f e0                                      add r1, pc, r1
006d8d00  0c 10 81 e2                                      add r1, r1, #0xc
006d8d04  07 00 a0 e1                                      mov r0, r7
006d8d08  d6 d6 f0 eb                                      bl #0x30e868
006d8d0c  00 00 57 e3                                      cmp r7, #0
006d8d10  08 00 00 0a                                      beq #0x6d8d38
006d8d14  18 60 96 e5                                      ldr r6, [r6, #0x18]
006d8d18  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
006d8d1c  1f 20 03 e2                                      and r2, r3, #0x1f
006d8d20  01 00 52 e3                                      cmp r2, #1
006d8d24  dc 00 00 9a                                      bls #0x6d909c
006d8d28  01 20 42 e2                                      sub r2, r2, #1
006d8d2c  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8d30  03 30 82 e1                                      orr r3, r2, r3
006d8d34  13 30 c6 e5                                      strb r3, [r6, #0x13]
006d8d38  14 67 9f e5                                      ldr r6, [pc, #0x714]
006d8d3c  06 60 8f e0                                      add r6, pc, r6
006d8d40  90 30 96 e5                                      ldr r3, [r6, #0x90]
006d8d44  01 00 13 e3                                      tst r3, #1
006d8d48  d9 00 00 0a                                      beq #0x6d90b4
006d8d4c  14 c0 8d e2                                      add ip, sp, #0x14
006d8d50  00 70 a0 e3                                      mov r7, #0
006d8d54  1c 30 8d e2                                      add r3, sp, #0x1c
006d8d58  00 c0 8d e5                                      str ip, [sp]
006d8d5c  05 00 a0 e1                                      mov r0, r5
006d8d60  04 c0 a0 e3                                      mov ip, #4
006d8d64  2c 10 8d e2                                      add r1, sp, #0x2c
006d8d68  24 20 8d e2                                      add r2, sp, #0x24
006d8d6c  e4 66 9f e5                                      ldr r6, [pc, #0x6e4]
006d8d70  04 c0 8d e5                                      str ip, [sp, #4]
006d8d74  2c 70 8d e5                                      str r7, [sp, #0x2c]
006d8d78  30 70 8d e5                                      str r7, [sp, #0x30]
006d8d7c  24 70 8d e5                                      str r7, [sp, #0x24]
006d8d80  28 70 8d e5                                      str r7, [sp, #0x28]
006d8d84  1c 70 8d e5                                      str r7, [sp, #0x1c]
006d8d88  20 70 8d e5                                      str r7, [sp, #0x20]
006d8d8c  14 70 8d e5                                      str r7, [sp, #0x14]
006d8d90  18 70 8d e5                                      str r7, [sp, #0x18]
006d8d94  0f f9 ff eb                                      bl #0x6d71d8
006d8d98  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006d8d9c  06 60 8f e0                                      add r6, pc, r6
006d8da0  94 60 86 e2                                      add r6, r6, #0x94
006d8da4  be a0 d3 e1                                      ldrh sl, [r3, #0xe]
006d8da8  00 80 e0 e3                                      mvn r8, #0
006d8dac  01 00 00 ea                                      b #0x6d8db8
006d8db0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006d8db4  be a0 d3 e1                                      ldrh sl, [r3, #0xe]
006d8db8  04 10 96 e5                                      ldr r1, [r6, #4]
006d8dbc  04 00 a0 e1                                      mov r0, r4
006d8dc0  e9 d7 f0 eb                                      bl #0x30ed6c
006d8dc4  08 10 96 e5                                      ldr r1, [r6, #8]
006d8dc8  00 90 a0 e1                                      mov sb, r0
006d8dcc  04 00 a0 e1                                      mov r0, r4
006d8dd0  e5 d7 f0 eb                                      bl #0x30ed6c
006d8dd4  00 10 96 e5                                      ldr r1, [r6]
006d8dd8  00 b0 a0 e1                                      mov fp, r0
006d8ddc  04 00 a0 e1                                      mov r0, r4
006d8de0  e1 d7 f0 eb                                      bl #0x30ed6c
006d8de4  97 0a 0a e0                                      mul sl, r7, sl
006d8de8  30 20 9d e5                                      ldr r2, [sp, #0x30]
006d8dec  0a 30 82 e0                                      add r3, r2, sl
006d8df0  0a 00 82 e7                                      str r0, [r2, sl]
006d8df4  08 b0 83 e5                                      str fp, [r3, #8]
006d8df8  04 90 83 e5                                      str sb, [r3, #4]
006d8dfc  28 30 9d e5                                      ldr r3, [sp, #0x28]
006d8e00  00 00 53 e3                                      cmp r3, #0
006d8e04  07 00 00 0a                                      beq #0x6d8e28
006d8e08  24 20 9d e5                                      ldr r2, [sp, #0x24]
006d8e0c  18 10 96 e5                                      ldr r1, [r6, #0x18]
006d8e10  be 20 d2 e1                                      ldrh r2, [r2, #0xe]
006d8e14  92 07 02 e0                                      mul r2, r2, r7
006d8e18  02 10 83 e7                                      str r1, [r3, r2]
006d8e1c  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
006d8e20  02 30 83 e0                                      add r3, r3, r2
006d8e24  04 10 83 e5                                      str r1, [r3, #4]
006d8e28  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d8e2c  00 00 53 e3                                      cmp r3, #0
006d8e30  09 00 00 0a                                      beq #0x6d8e5c
006d8e34  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006d8e38  0c 10 96 e5                                      ldr r1, [r6, #0xc]
006d8e3c  be 20 d2 e1                                      ldrh r2, [r2, #0xe]
006d8e40  92 07 02 e0                                      mul r2, r2, r7
006d8e44  02 10 83 e7                                      str r1, [r3, r2]
006d8e48  10 10 96 e5                                      ldr r1, [r6, #0x10]
006d8e4c  02 30 83 e0                                      add r3, r3, r2
006d8e50  04 10 83 e5                                      str r1, [r3, #4]
006d8e54  14 20 96 e5                                      ldr r2, [r6, #0x14]
006d8e58  08 20 83 e5                                      str r2, [r3, #8]
006d8e5c  18 30 9d e5                                      ldr r3, [sp, #0x18]
006d8e60  20 60 86 e2                                      add r6, r6, #0x20
006d8e64  00 00 53 e3                                      cmp r3, #0
006d8e68  07 00 00 0a                                      beq #0x6d8e8c
006d8e6c  14 20 9d e5                                      ldr r2, [sp, #0x14]
006d8e70  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
006d8e74  91 07 01 e0                                      mul r1, r1, r7
006d8e78  01 20 83 e0                                      add r2, r3, r1
006d8e7c  03 80 c2 e5                                      strb r8, [r2, #3]
006d8e80  01 80 c2 e5                                      strb r8, [r2, #1]
006d8e84  02 80 c2 e5                                      strb r8, [r2, #2]
006d8e88  01 80 c3 e7                                      strb r8, [r3, r1]
006d8e8c  01 70 87 e2                                      add r7, r7, #1
006d8e90  18 00 57 e3                                      cmp r7, #0x18
006d8e94  c5 ff ff 1a                                      bne #0x6d8db0
006d8e98  18 30 9d e5                                      ldr r3, [sp, #0x18]
006d8e9c  00 00 53 e3                                      cmp r3, #0
006d8ea0  0c 00 00 0a                                      beq #0x6d8ed8
006d8ea4  14 30 9d e5                                      ldr r3, [sp, #0x14]
006d8ea8  00 40 93 e5                                      ldr r4, [r3]
006d8eac  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d8eb0  1f 20 03 e2                                      and r2, r3, #0x1f
006d8eb4  01 00 52 e3                                      cmp r2, #1
006d8eb8  6b 00 00 9a                                      bls #0x6d906c
006d8ebc  01 20 42 e2                                      sub r2, r2, #1
006d8ec0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8ec4  03 30 82 e1                                      orr r3, r2, r3
006d8ec8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8ecc  00 30 a0 e3                                      mov r3, #0
006d8ed0  18 30 8d e5                                      str r3, [sp, #0x18]
006d8ed4  14 30 8d e5                                      str r3, [sp, #0x14]
006d8ed8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d8edc  00 00 53 e3                                      cmp r3, #0
006d8ee0  0c 00 00 0a                                      beq #0x6d8f18
006d8ee4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006d8ee8  00 40 93 e5                                      ldr r4, [r3]
006d8eec  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d8ef0  1f 20 03 e2                                      and r2, r3, #0x1f
006d8ef4  01 00 52 e3                                      cmp r2, #1
006d8ef8  55 00 00 9a                                      bls #0x6d9054
006d8efc  01 20 42 e2                                      sub r2, r2, #1
006d8f00  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8f04  03 30 82 e1                                      orr r3, r2, r3
006d8f08  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8f0c  00 30 a0 e3                                      mov r3, #0
006d8f10  20 30 8d e5                                      str r3, [sp, #0x20]
006d8f14  1c 30 8d e5                                      str r3, [sp, #0x1c]
006d8f18  28 30 9d e5                                      ldr r3, [sp, #0x28]
006d8f1c  00 00 53 e3                                      cmp r3, #0
006d8f20  0c 00 00 0a                                      beq #0x6d8f58
006d8f24  24 30 9d e5                                      ldr r3, [sp, #0x24]
006d8f28  00 40 93 e5                                      ldr r4, [r3]
006d8f2c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d8f30  1f 20 03 e2                                      and r2, r3, #0x1f
006d8f34  01 00 52 e3                                      cmp r2, #1
006d8f38  3f 00 00 9a                                      bls #0x6d903c
006d8f3c  01 20 42 e2                                      sub r2, r2, #1
006d8f40  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8f44  03 30 82 e1                                      orr r3, r2, r3
006d8f48  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8f4c  00 30 a0 e3                                      mov r3, #0
006d8f50  28 30 8d e5                                      str r3, [sp, #0x28]
006d8f54  24 30 8d e5                                      str r3, [sp, #0x24]
006d8f58  30 30 9d e5                                      ldr r3, [sp, #0x30]
006d8f5c  00 00 53 e3                                      cmp r3, #0
006d8f60  0c 00 00 0a                                      beq #0x6d8f98
006d8f64  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006d8f68  00 40 93 e5                                      ldr r4, [r3]
006d8f6c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d8f70  1f 20 03 e2                                      and r2, r3, #0x1f
006d8f74  01 00 52 e3                                      cmp r2, #1
006d8f78  41 00 00 9a                                      bls #0x6d9084
006d8f7c  01 20 42 e2                                      sub r2, r2, #1
006d8f80  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d8f84  03 30 82 e1                                      orr r3, r2, r3
006d8f88  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d8f8c  00 30 a0 e3                                      mov r3, #0
006d8f90  30 30 8d e5                                      str r3, [sp, #0x30]
006d8f94  2c 30 8d e5                                      str r3, [sp, #0x2c]
006d8f98  00 10 a0 e3                                      mov r1, #0
006d8f9c  2c 00 a0 e3                                      mov r0, #0x2c
006d8fa0  81 6c f9 eb                                      bl #0x5341ac
006d8fa4  00 40 a0 e1                                      mov r4, r0
006d8fa8  c9 8a ff eb                                      bl #0x6bbad4
006d8fac  00 00 54 e3                                      cmp r4, #0
006d8fb0  04 30 94 15                                      ldrne r3, [r4, #4]
006d8fb4  38 60 8d e2                                      add r6, sp, #0x38
006d8fb8  34 70 8d e2                                      add r7, sp, #0x34
006d8fbc  01 30 83 12                                      addne r3, r3, #1
006d8fc0  04 30 84 15                                      strne r3, [r4, #4]
006d8fc4  00 c0 a0 e3                                      mov ip, #0
006d8fc8  07 30 a0 e1                                      mov r3, r7
006d8fcc  05 10 a0 e1                                      mov r1, r5
006d8fd0  06 20 a0 e1                                      mov r2, r6
006d8fd4  04 00 a0 e1                                      mov r0, r4
006d8fd8  34 c0 8d e5                                      str ip, [sp, #0x34]
006d8fdc  38 c0 8d e5                                      str ip, [sp, #0x38]
006d8fe0  9f 8d ff eb                                      bl #0x6bc664
006d8fe4  07 00 a0 e1                                      mov r0, r7
006d8fe8  9f 84 fa eb                                      bl #0x57a26c
006d8fec  06 00 a0 e1                                      mov r0, r6
006d8ff0  fc de f0 eb                                      bl #0x310be8
006d8ff4  04 00 a0 e1                                      mov r0, r4
006d8ff8  b3 8c ff eb                                      bl #0x6bc2cc
006d8ffc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d9000  00 00 54 e3                                      cmp r4, #0
006d9004  00 40 83 e5                                      str r4, [r3]
006d9008  04 00 00 0a                                      beq #0x6d9020
006d900c  04 30 94 e5                                      ldr r3, [r4, #4]
006d9010  04 00 a0 e1                                      mov r0, r4
006d9014  01 30 83 e2                                      add r3, r3, #1
006d9018  04 30 84 e5                                      str r3, [r4, #4]
006d901c  58 11 f1 eb                                      bl #0x31d584
006d9020  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006d9024  00 00 50 e3                                      cmp r0, #0
006d9028  00 00 00 0a                                      beq #0x6d9030
006d902c  54 11 f1 eb                                      bl #0x31d584
006d9030  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006d9034  44 d0 8d e2                                      add sp, sp, #0x44
006d9038  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d903c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d9040  20 00 13 e3                                      tst r3, #0x20
006d9044  fc 00 00 1a                                      bne #0x6d943c
006d9048  00 30 a0 e3                                      mov r3, #0
006d904c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9050  bd ff ff ea                                      b #0x6d8f4c
006d9054  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d9058  20 00 13 e3                                      tst r3, #0x20
006d905c  f1 00 00 1a                                      bne #0x6d9428
006d9060  00 30 a0 e3                                      mov r3, #0
006d9064  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9068  a7 ff ff ea                                      b #0x6d8f0c
006d906c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d9070  20 00 13 e3                                      tst r3, #0x20
006d9074  e6 00 00 1a                                      bne #0x6d9414
006d9078  00 30 a0 e3                                      mov r3, #0
006d907c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9080  91 ff ff ea                                      b #0x6d8ecc
006d9084  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d9088  20 00 13 e3                                      tst r3, #0x20
006d908c  db 00 00 1a                                      bne #0x6d9400
006d9090  00 30 a0 e3                                      mov r3, #0
006d9094  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9098  bb ff ff ea                                      b #0x6d8f8c
006d909c  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006d90a0  20 00 13 e3                                      tst r3, #0x20
006d90a4  d0 00 00 1a                                      bne #0x6d93ec
006d90a8  00 30 a0 e3                                      mov r3, #0
006d90ac  13 30 c6 e5                                      strb r3, [r6, #0x13]
006d90b0  20 ff ff ea                                      b #0x6d8d38
006d90b4  90 70 86 e2                                      add r7, r6, #0x90
006d90b8  07 00 a0 e1                                      mov r0, r7
006d90bc  aa d5 f0 eb                                      bl #0x30e76c
006d90c0  00 00 50 e3                                      cmp r0, #0
006d90c4  20 ff ff 0a                                      beq #0x6d8d4c
006d90c8  bf e4 a0 e3                                      mov lr, #0xbf000000
006d90cc  00 30 a0 e3                                      mov r3, #0
006d90d0  bf 24 a0 e3                                      mov r2, #0xbf000000
006d90d4  fe c5 a0 e3                                      mov ip, #0x3f800000
006d90d8  3f 14 a0 e3                                      mov r1, #0x3f000000
006d90dc  02 e5 8e e2                                      add lr, lr, #0x800000
006d90e0  94 20 86 e5                                      str r2, [r6, #0x94]
006d90e4  98 20 86 e5                                      str r2, [r6, #0x98]
006d90e8  9c 20 86 e5                                      str r2, [r6, #0x9c]
006d90ec  a0 30 86 e5                                      str r3, [r6, #0xa0]
006d90f0  a4 30 86 e5                                      str r3, [r6, #0xa4]
006d90f4  a8 e0 86 e5                                      str lr, [r6, #0xa8]
006d90f8  ac c0 86 e5                                      str ip, [r6, #0xac]
006d90fc  b0 c0 86 e5                                      str ip, [r6, #0xb0]
006d9100  b4 20 86 e5                                      str r2, [r6, #0xb4]
006d9104  b8 10 86 e5                                      str r1, [r6, #0xb8]
006d9108  bc 20 86 e5                                      str r2, [r6, #0xbc]
006d910c  c0 30 86 e5                                      str r3, [r6, #0xc0]
006d9110  c4 30 86 e5                                      str r3, [r6, #0xc4]
006d9114  c8 e0 86 e5                                      str lr, [r6, #0xc8]
006d9118  cc c0 86 e5                                      str ip, [r6, #0xcc]
006d911c  d0 30 86 e5                                      str r3, [r6, #0xd0]
006d9120  d4 10 86 e5                                      str r1, [r6, #0xd4]
006d9124  d8 10 86 e5                                      str r1, [r6, #0xd8]
006d9128  dc 20 86 e5                                      str r2, [r6, #0xdc]
006d912c  e0 30 86 e5                                      str r3, [r6, #0xe0]
006d9130  e4 30 86 e5                                      str r3, [r6, #0xe4]
006d9134  e8 e0 86 e5                                      str lr, [r6, #0xe8]
006d9138  ec 30 86 e5                                      str r3, [r6, #0xec]
006d913c  f0 30 86 e5                                      str r3, [r6, #0xf0]
006d9140  f4 10 86 e5                                      str r1, [r6, #0xf4]
006d9144  f8 20 86 e5                                      str r2, [r6, #0xf8]
006d9148  fc 20 86 e5                                      str r2, [r6, #0xfc]
006d914c  00 31 86 e5                                      str r3, [r6, #0x100]
006d9150  04 31 86 e5                                      str r3, [r6, #0x104]
006d9154  08 e1 86 e5                                      str lr, [r6, #0x108]
006d9158  0c 31 86 e5                                      str r3, [r6, #0x10c]
006d915c  10 c1 86 e5                                      str ip, [r6, #0x110]
006d9160  14 11 86 e5                                      str r1, [r6, #0x114]
006d9164  07 00 a0 e1                                      mov r0, r7
006d9168  18 21 86 e5                                      str r2, [r6, #0x118]
006d916c  1c 21 86 e5                                      str r2, [r6, #0x11c]
006d9170  20 c1 86 e5                                      str ip, [r6, #0x120]
006d9174  24 31 86 e5                                      str r3, [r6, #0x124]
006d9178  28 31 86 e5                                      str r3, [r6, #0x128]
006d917c  2c c1 86 e5                                      str ip, [r6, #0x12c]
006d9180  30 c1 86 e5                                      str ip, [r6, #0x130]
006d9184  34 11 86 e5                                      str r1, [r6, #0x134]
006d9188  38 11 86 e5                                      str r1, [r6, #0x138]
006d918c  3c 21 86 e5                                      str r2, [r6, #0x13c]
006d9190  40 c1 86 e5                                      str ip, [r6, #0x140]
006d9194  44 31 86 e5                                      str r3, [r6, #0x144]
006d9198  48 31 86 e5                                      str r3, [r6, #0x148]
006d919c  4c c1 86 e5                                      str ip, [r6, #0x14c]
006d91a0  50 31 86 e5                                      str r3, [r6, #0x150]
006d91a4  54 11 86 e5                                      str r1, [r6, #0x154]
006d91a8  58 11 86 e5                                      str r1, [r6, #0x158]
006d91ac  5c 11 86 e5                                      str r1, [r6, #0x15c]
006d91b0  60 c1 86 e5                                      str ip, [r6, #0x160]
006d91b4  64 31 86 e5                                      str r3, [r6, #0x164]
006d91b8  68 31 86 e5                                      str r3, [r6, #0x168]
006d91bc  6c 31 86 e5                                      str r3, [r6, #0x16c]
006d91c0  70 31 86 e5                                      str r3, [r6, #0x170]
006d91c4  74 11 86 e5                                      str r1, [r6, #0x174]
006d91c8  78 21 86 e5                                      str r2, [r6, #0x178]
006d91cc  7c 11 86 e5                                      str r1, [r6, #0x17c]
006d91d0  80 c1 86 e5                                      str ip, [r6, #0x180]
006d91d4  84 31 86 e5                                      str r3, [r6, #0x184]
006d91d8  88 31 86 e5                                      str r3, [r6, #0x188]
006d91dc  8c 31 86 e5                                      str r3, [r6, #0x18c]
006d91e0  90 c1 86 e5                                      str ip, [r6, #0x190]
006d91e4  94 11 86 e5                                      str r1, [r6, #0x194]
006d91e8  98 21 86 e5                                      str r2, [r6, #0x198]
006d91ec  9c 11 86 e5                                      str r1, [r6, #0x19c]
006d91f0  a0 31 86 e5                                      str r3, [r6, #0x1a0]
006d91f4  a4 31 86 e5                                      str r3, [r6, #0x1a4]
006d91f8  a8 c1 86 e5                                      str ip, [r6, #0x1a8]
006d91fc  ac c1 86 e5                                      str ip, [r6, #0x1ac]
006d9200  b0 c1 86 e5                                      str ip, [r6, #0x1b0]
006d9204  b4 11 86 e5                                      str r1, [r6, #0x1b4]
006d9208  b8 11 86 e5                                      str r1, [r6, #0x1b8]
006d920c  bc 11 86 e5                                      str r1, [r6, #0x1bc]
006d9210  c0 31 86 e5                                      str r3, [r6, #0x1c0]
006d9214  c4 31 86 e5                                      str r3, [r6, #0x1c4]
006d9218  c8 c1 86 e5                                      str ip, [r6, #0x1c8]
006d921c  cc c1 86 e5                                      str ip, [r6, #0x1cc]
006d9220  d0 31 86 e5                                      str r3, [r6, #0x1d0]
006d9224  d4 21 86 e5                                      str r2, [r6, #0x1d4]
006d9228  d8 11 86 e5                                      str r1, [r6, #0x1d8]
006d922c  dc 11 86 e5                                      str r1, [r6, #0x1dc]
006d9230  e0 31 86 e5                                      str r3, [r6, #0x1e0]
006d9234  e4 31 86 e5                                      str r3, [r6, #0x1e4]
006d9238  e8 c1 86 e5                                      str ip, [r6, #0x1e8]
006d923c  ec 31 86 e5                                      str r3, [r6, #0x1ec]
006d9240  f0 31 86 e5                                      str r3, [r6, #0x1f0]
006d9244  f4 21 86 e5                                      str r2, [r6, #0x1f4]
006d9248  f8 21 86 e5                                      str r2, [r6, #0x1f8]
006d924c  fc 11 86 e5                                      str r1, [r6, #0x1fc]
006d9250  00 32 86 e5                                      str r3, [r6, #0x200]
006d9254  04 32 86 e5                                      str r3, [r6, #0x204]
006d9258  08 c2 86 e5                                      str ip, [r6, #0x208]
006d925c  0c 32 86 e5                                      str r3, [r6, #0x20c]
006d9260  10 c2 86 e5                                      str ip, [r6, #0x210]
006d9264  14 22 86 e5                                      str r2, [r6, #0x214]
006d9268  18 22 86 e5                                      str r2, [r6, #0x218]
006d926c  1c 12 86 e5                                      str r1, [r6, #0x21c]
006d9270  20 e2 86 e5                                      str lr, [r6, #0x220]
006d9274  24 32 86 e5                                      str r3, [r6, #0x224]
006d9278  28 32 86 e5                                      str r3, [r6, #0x228]
006d927c  2c c2 86 e5                                      str ip, [r6, #0x22c]
006d9280  30 c2 86 e5                                      str ip, [r6, #0x230]
006d9284  34 22 86 e5                                      str r2, [r6, #0x234]
006d9288  38 12 86 e5                                      str r1, [r6, #0x238]
006d928c  3c 12 86 e5                                      str r1, [r6, #0x23c]
006d9290  40 e2 86 e5                                      str lr, [r6, #0x240]
006d9294  44 32 86 e5                                      str r3, [r6, #0x244]
006d9298  48 32 86 e5                                      str r3, [r6, #0x248]
006d929c  4c c2 86 e5                                      str ip, [r6, #0x24c]
006d92a0  50 32 86 e5                                      str r3, [r6, #0x250]
006d92a4  54 22 86 e5                                      str r2, [r6, #0x254]
006d92a8  58 12 86 e5                                      str r1, [r6, #0x258]
006d92ac  5c 22 86 e5                                      str r2, [r6, #0x25c]
006d92b0  60 e2 86 e5                                      str lr, [r6, #0x260]
006d92b4  64 32 86 e5                                      str r3, [r6, #0x264]
006d92b8  68 32 86 e5                                      str r3, [r6, #0x268]
006d92bc  6c 32 86 e5                                      str r3, [r6, #0x26c]
006d92c0  70 32 86 e5                                      str r3, [r6, #0x270]
006d92c4  74 22 86 e5                                      str r2, [r6, #0x274]
006d92c8  78 22 86 e5                                      str r2, [r6, #0x278]
006d92cc  7c 22 86 e5                                      str r2, [r6, #0x27c]
006d92d0  80 e2 86 e5                                      str lr, [r6, #0x280]
006d92d4  84 32 86 e5                                      str r3, [r6, #0x284]
006d92d8  88 32 86 e5                                      str r3, [r6, #0x288]
006d92dc  8c 32 86 e5                                      str r3, [r6, #0x28c]
006d92e0  90 c2 86 e5                                      str ip, [r6, #0x290]
006d92e4  94 12 86 e5                                      str r1, [r6, #0x294]
006d92e8  98 12 86 e5                                      str r1, [r6, #0x298]
006d92ec  9c 12 86 e5                                      str r1, [r6, #0x29c]
006d92f0  a0 32 86 e5                                      str r3, [r6, #0x2a0]
006d92f4  a4 c2 86 e5                                      str ip, [r6, #0x2a4]
006d92f8  a8 32 86 e5                                      str r3, [r6, #0x2a8]
006d92fc  ac c2 86 e5                                      str ip, [r6, #0x2ac]
006d9300  b0 c2 86 e5                                      str ip, [r6, #0x2b0]
006d9304  b4 12 86 e5                                      str r1, [r6, #0x2b4]
006d9308  b8 12 86 e5                                      str r1, [r6, #0x2b8]
006d930c  bc 22 86 e5                                      str r2, [r6, #0x2bc]
006d9310  c0 32 86 e5                                      str r3, [r6, #0x2c0]
006d9314  c4 c2 86 e5                                      str ip, [r6, #0x2c4]
006d9318  c8 32 86 e5                                      str r3, [r6, #0x2c8]
006d931c  cc c2 86 e5                                      str ip, [r6, #0x2cc]
006d9320  d0 32 86 e5                                      str r3, [r6, #0x2d0]
006d9324  d4 22 86 e5                                      str r2, [r6, #0x2d4]
006d9328  d8 12 86 e5                                      str r1, [r6, #0x2d8]
006d932c  dc 22 86 e5                                      str r2, [r6, #0x2dc]
006d9330  e0 32 86 e5                                      str r3, [r6, #0x2e0]
006d9334  e4 c2 86 e5                                      str ip, [r6, #0x2e4]
006d9338  e8 32 86 e5                                      str r3, [r6, #0x2e8]
006d933c  ec 32 86 e5                                      str r3, [r6, #0x2ec]
006d9340  f0 32 86 e5                                      str r3, [r6, #0x2f0]
006d9344  f4 22 86 e5                                      str r2, [r6, #0x2f4]
006d9348  f8 12 86 e5                                      str r1, [r6, #0x2f8]
006d934c  fc 12 86 e5                                      str r1, [r6, #0x2fc]
006d9350  00 33 86 e5                                      str r3, [r6, #0x300]
006d9354  04 c3 86 e5                                      str ip, [r6, #0x304]
006d9358  08 33 86 e5                                      str r3, [r6, #0x308]
006d935c  0c 33 86 e5                                      str r3, [r6, #0x30c]
006d9360  10 c3 86 e5                                      str ip, [r6, #0x310]
006d9364  14 23 86 e5                                      str r2, [r6, #0x314]
006d9368  18 23 86 e5                                      str r2, [r6, #0x318]
006d936c  1c 23 86 e5                                      str r2, [r6, #0x31c]
006d9370  20 33 86 e5                                      str r3, [r6, #0x320]
006d9374  24 e3 86 e5                                      str lr, [r6, #0x324]
006d9378  28 33 86 e5                                      str r3, [r6, #0x328]
006d937c  2c c3 86 e5                                      str ip, [r6, #0x32c]
006d9380  30 c3 86 e5                                      str ip, [r6, #0x330]
006d9384  34 13 86 e5                                      str r1, [r6, #0x334]
006d9388  38 23 86 e5                                      str r2, [r6, #0x338]
006d938c  90 c3 86 e5                                      str ip, [r6, #0x390]
006d9390  78 23 86 e5                                      str r2, [r6, #0x378]
006d9394  7c 13 86 e5                                      str r1, [r6, #0x37c]
006d9398  84 e3 86 e5                                      str lr, [r6, #0x384]
006d939c  8c 33 86 e5                                      str r3, [r6, #0x38c]
006d93a0  3c 23 86 e5                                      str r2, [r6, #0x33c]
006d93a4  40 33 86 e5                                      str r3, [r6, #0x340]
006d93a8  44 e3 86 e5                                      str lr, [r6, #0x344]
006d93ac  48 33 86 e5                                      str r3, [r6, #0x348]
006d93b0  4c c3 86 e5                                      str ip, [r6, #0x34c]
006d93b4  50 33 86 e5                                      str r3, [r6, #0x350]
006d93b8  54 13 86 e5                                      str r1, [r6, #0x354]
006d93bc  58 23 86 e5                                      str r2, [r6, #0x358]
006d93c0  5c 13 86 e5                                      str r1, [r6, #0x35c]
006d93c4  60 33 86 e5                                      str r3, [r6, #0x360]
006d93c8  64 e3 86 e5                                      str lr, [r6, #0x364]
006d93cc  68 33 86 e5                                      str r3, [r6, #0x368]
006d93d0  6c 33 86 e5                                      str r3, [r6, #0x36c]
006d93d4  70 33 86 e5                                      str r3, [r6, #0x370]
006d93d8  74 23 86 e5                                      str r2, [r6, #0x374]
006d93dc  80 33 86 e5                                      str r3, [r6, #0x380]
006d93e0  88 33 86 e5                                      str r3, [r6, #0x388]
006d93e4  94 d5 f0 eb                                      bl #0x30ea3c
006d93e8  57 fe ff ea                                      b #0x6d8d4c
006d93ec  00 30 96 e5                                      ldr r3, [r6]
006d93f0  06 00 a0 e1                                      mov r0, r6
006d93f4  0f e0 a0 e1                                      mov lr, pc
006d93f8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d93fc  29 ff ff ea                                      b #0x6d90a8
006d9400  00 30 94 e5                                      ldr r3, [r4]
006d9404  04 00 a0 e1                                      mov r0, r4
006d9408  0f e0 a0 e1                                      mov lr, pc
006d940c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d9410  1e ff ff ea                                      b #0x6d9090
006d9414  00 30 94 e5                                      ldr r3, [r4]
006d9418  04 00 a0 e1                                      mov r0, r4
006d941c  0f e0 a0 e1                                      mov lr, pc
006d9420  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d9424  13 ff ff ea                                      b #0x6d9078
006d9428  00 30 94 e5                                      ldr r3, [r4]
006d942c  04 00 a0 e1                                      mov r0, r4
006d9430  0f e0 a0 e1                                      mov lr, pc
006d9434  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d9438  08 ff ff ea                                      b #0x6d9060
006d943c  00 30 94 e5                                      ldr r3, [r4]
006d9440  04 00 a0 e1                                      mov r0, r4
006d9444  0f e0 a0 e1                                      mov lr, pc
006d9448  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d944c  fd fe ff ea                                      b #0x6d9048
; mapping-symbol data/literal pool
006d9450  34 28 21 00 74 f1 31 00 14 f1 31 00              .byte 0x34, 0x28, 0x21, 0x00, 0x74, 0xf1, 0x31, 0x00, 0x14, 0xf1, 0x31, 0x00

; FUNCTION 0x006d945c, declared_size=2920, range_size=2920, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene18createCylinderMeshEjPNS_5video12IVideoDriverEffjRKNS1_6SColorEbf
; demangled: glitch::scene::createCylinderMesh(unsigned int, glitch::video::IVideoDriver*, float, float, unsigned int, glitch::video::SColor const&, bool, float)
; decoder-mode: arm
006d945c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d9460  74 d0 4d e2                                      sub sp, sp, #0x74
006d9464  a4 50 dd e5                                      ldrb r5, [sp, #0xa4]
006d9468  9c 70 9d e5                                      ldr r7, [sp, #0x9c]
006d946c  34 00 8d e5                                      str r0, [sp, #0x34]
006d9470  00 00 55 e3                                      cmp r5, #0
006d9474  07 71 a0 e1                                      lsl r7, r7, #2
006d9478  28 50 8d e5                                      str r5, [sp, #0x28]
006d947c  0c 30 8d e5                                      str r3, [sp, #0xc]
006d9480  24 70 8d e5                                      str r7, [sp, #0x24]
006d9484  81 02 00 0a                                      beq #0x6d9e90
006d9488  02 a0 87 e2                                      add sl, r7, #2
006d948c  30 a0 8d e5                                      str sl, [sp, #0x30]
006d9490  0c 30 a0 e3                                      mov r3, #0xc
006d9494  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
006d9498  00 40 a0 e3                                      mov r4, #0
006d949c  80 c0 a0 e1                                      lsl ip, r0, #1
006d94a0  93 0c 0c e0                                      mul ip, r3, ip
006d94a4  6c 30 8d e2                                      add r3, sp, #0x6c
006d94a8  03 00 a0 e1                                      mov r0, r3
006d94ac  2c 30 8d e5                                      str r3, [sp, #0x2c]
006d94b0  30 30 9d e5                                      ldr r3, [sp, #0x30]
006d94b4  00 c0 8d e5                                      str ip, [sp]
006d94b8  5b f6 ff eb                                      bl #0x6d6e2c
006d94bc  44 c0 8d e2                                      add ip, sp, #0x44
006d94c0  4c 30 8d e2                                      add r3, sp, #0x4c
006d94c4  54 20 8d e2                                      add r2, sp, #0x54
006d94c8  5c 10 8d e2                                      add r1, sp, #0x5c
006d94cc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006d94d0  00 c0 8d e5                                      str ip, [sp]
006d94d4  05 c0 a0 e3                                      mov ip, #5
006d94d8  04 c0 8d e5                                      str ip, [sp, #4]
006d94dc  5c 40 8d e5                                      str r4, [sp, #0x5c]
006d94e0  60 40 8d e5                                      str r4, [sp, #0x60]
006d94e4  54 40 8d e5                                      str r4, [sp, #0x54]
006d94e8  58 40 8d e5                                      str r4, [sp, #0x58]
006d94ec  4c 40 8d e5                                      str r4, [sp, #0x4c]
006d94f0  50 40 8d e5                                      str r4, [sp, #0x50]
006d94f4  44 40 8d e5                                      str r4, [sp, #0x44]
006d94f8  48 40 8d e5                                      str r4, [sp, #0x48]
006d94fc  35 f7 ff eb                                      bl #0x6d71d8
006d9500  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
006d9504  75 d3 f0 eb                                      bl #0x30e2e0
006d9508  00 10 a0 e1                                      mov r1, r0
006d950c  fe 05 a0 e3                                      mov r0, #0x3f800000
006d9510  df d5 f0 eb                                      bl #0x30ec94
006d9514  3f 14 a0 e3                                      mov r1, #0x3f000000
006d9518  18 00 8d e5                                      str r0, [sp, #0x18]
006d951c  12 d6 f0 eb                                      bl #0x30ed6c
006d9520  db 1f 00 e3                                      movw r1, #0xfdb
006d9524  14 00 8d e5                                      str r0, [sp, #0x14]
006d9528  c9 10 44 e3                                      movt r1, #0x40c9
006d952c  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d9530  0d d6 f0 eb                                      bl #0x30ed6c
006d9534  3f 14 a0 e3                                      mov r1, #0x3f000000
006d9538  20 00 8d e5                                      str r0, [sp, #0x20]
006d953c  0a d6 f0 eb                                      bl #0x30ed6c
006d9540  9c 50 9d e5                                      ldr r5, [sp, #0x9c]
006d9544  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d9548  04 00 55 e1                                      cmp r5, r4
006d954c  05 10 a0 01                                      moveq r1, r5
006d9550  01 40 a0 03                                      moveq r4, #1
006d9554  01 30 a0 01                                      moveq r3, r1
006d9558  fe 00 00 0a                                      beq #0x6d9958
006d955c  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
006d9560  00 60 a0 e3                                      mov r6, #0
006d9564  38 70 8d e2                                      add r7, sp, #0x38
006d9568  be 90 d3 e1                                      ldrh sb, [r3, #0xe]
006d956c  06 50 a0 e1                                      mov r5, r6
006d9570  08 40 8d e5                                      str r4, [sp, #8]
006d9574  10 70 8d e5                                      str r7, [sp, #0x10]
006d9578  05 00 00 ea                                      b #0x6d9594
006d957c  06 00 a0 e1                                      mov r0, r6
006d9580  18 10 9d e5                                      ldr r1, [sp, #0x18]
006d9584  86 d5 f0 eb                                      bl #0x30eba4
006d9588  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
006d958c  00 60 a0 e1                                      mov r6, r0
006d9590  be 90 d3 e1                                      ldrh sb, [r3, #0xe]
006d9594  08 00 9d e5                                      ldr r0, [sp, #8]
006d9598  50 d3 f0 eb                                      bl #0x30e2e0
006d959c  20 10 9d e5                                      ldr r1, [sp, #0x20]
006d95a0  f1 d5 f0 eb                                      bl #0x30ed6c
006d95a4  00 a0 a0 e1                                      mov sl, r0
006d95a8  69 d4 f0 eb                                      bl #0x30e754
006d95ac  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006d95b0  ed d5 f0 eb                                      bl #0x30ed6c
006d95b4  00 80 a0 e1                                      mov r8, r0
006d95b8  0a 00 a0 e1                                      mov r0, sl
006d95bc  51 d5 f0 eb                                      bl #0x30eb08
006d95c0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006d95c4  e8 d5 f0 eb                                      bl #0x30ed6c
006d95c8  94 09 09 e0                                      mul sb, r4, sb
006d95cc  60 20 9d e5                                      ldr r2, [sp, #0x60]
006d95d0  00 70 a0 e1                                      mov r7, r0
006d95d4  09 30 82 e0                                      add r3, r2, sb
006d95d8  09 80 82 e7                                      str r8, [r2, sb]
006d95dc  08 00 83 e5                                      str r0, [r3, #8]
006d95e0  04 50 83 e5                                      str r5, [r3, #4]
006d95e4  58 30 9d e5                                      ldr r3, [sp, #0x58]
006d95e8  00 00 53 e3                                      cmp r3, #0
006d95ec  05 00 00 0a                                      beq #0x6d9608
006d95f0  54 20 9d e5                                      ldr r2, [sp, #0x54]
006d95f4  be 20 d2 e1                                      ldrh r2, [r2, #0xe]
006d95f8  92 04 02 e0                                      mul r2, r2, r4
006d95fc  02 10 83 e0                                      add r1, r3, r2
006d9600  02 60 83 e7                                      str r6, [r3, r2]
006d9604  04 50 81 e5                                      str r5, [r1, #4]
006d9608  50 30 9d e5                                      ldr r3, [sp, #0x50]
006d960c  00 00 53 e3                                      cmp r3, #0
006d9610  0f 00 00 0a                                      beq #0x6d9654
006d9614  10 00 9d e5                                      ldr r0, [sp, #0x10]
006d9618  38 80 8d e5                                      str r8, [sp, #0x38]
006d961c  3c 50 8d e5                                      str r5, [sp, #0x3c]
006d9620  40 70 8d e5                                      str r7, [sp, #0x40]
006d9624  ad 14 f2 eb                                      bl #0x35e8e0
006d9628  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006d962c  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d9630  38 10 9d e5                                      ldr r1, [sp, #0x38]
006d9634  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
006d9638  93 04 03 e0                                      mul r3, r3, r4
006d963c  03 10 82 e7                                      str r1, [r2, r3]
006d9640  03 30 82 e0                                      add r3, r2, r3
006d9644  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006d9648  04 20 83 e5                                      str r2, [r3, #4]
006d964c  40 20 9d e5                                      ldr r2, [sp, #0x40]
006d9650  08 20 83 e5                                      str r2, [r3, #8]
006d9654  48 30 9d e5                                      ldr r3, [sp, #0x48]
006d9658  00 00 53 e3                                      cmp r3, #0
006d965c  05 00 00 0a                                      beq #0x6d9678
006d9660  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d9664  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006d9668  04 20 a0 e3                                      mov r2, #4
006d966c  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006d9670  90 34 20 e0                                      mla r0, r0, r4, r3
006d9674  7b d4 f0 eb                                      bl #0x30e868
006d9678  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
006d967c  08 00 a0 e1                                      mov r0, r8
006d9680  47 d5 f0 eb                                      bl #0x30eba4
006d9684  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
006d9688  01 80 84 e2                                      add r8, r4, #1
006d968c  00 30 a0 e1                                      mov r3, r0
006d9690  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
006d9694  60 00 9d e5                                      ldr r0, [sp, #0x60]
006d9698  91 08 01 e0                                      mul r1, r1, r8
006d969c  01 20 80 e0                                      add r2, r0, r1
006d96a0  01 30 80 e7                                      str r3, [r0, r1]
006d96a4  08 70 82 e5                                      str r7, [r2, #8]
006d96a8  98 c0 9d e5                                      ldr ip, [sp, #0x98]
006d96ac  04 c0 82 e5                                      str ip, [r2, #4]
006d96b0  58 20 9d e5                                      ldr r2, [sp, #0x58]
006d96b4  00 00 52 e3                                      cmp r2, #0
006d96b8  06 00 00 0a                                      beq #0x6d96d8
006d96bc  54 10 9d e5                                      ldr r1, [sp, #0x54]
006d96c0  be 10 d1 e1                                      ldrh r1, [r1, #0xe]
006d96c4  91 08 01 e0                                      mul r1, r1, r8
006d96c8  01 00 82 e0                                      add r0, r2, r1
006d96cc  01 60 82 e7                                      str r6, [r2, r1]
006d96d0  fe 15 a0 e3                                      mov r1, #0x3f800000
006d96d4  04 10 80 e5                                      str r1, [r0, #4]
006d96d8  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d96dc  00 00 52 e3                                      cmp r2, #0
006d96e0  10 00 00 0a                                      beq #0x6d9728
006d96e4  98 20 9d e5                                      ldr r2, [sp, #0x98]
006d96e8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006d96ec  38 30 8d e5                                      str r3, [sp, #0x38]
006d96f0  3c 20 8d e5                                      str r2, [sp, #0x3c]
006d96f4  40 70 8d e5                                      str r7, [sp, #0x40]
006d96f8  78 14 f2 eb                                      bl #0x35e8e0
006d96fc  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006d9700  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d9704  38 10 9d e5                                      ldr r1, [sp, #0x38]
006d9708  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
006d970c  93 08 03 e0                                      mul r3, r3, r8
006d9710  03 10 82 e7                                      str r1, [r2, r3]
006d9714  03 30 82 e0                                      add r3, r2, r3
006d9718  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006d971c  04 20 83 e5                                      str r2, [r3, #4]
006d9720  40 20 9d e5                                      ldr r2, [sp, #0x40]
006d9724  08 20 83 e5                                      str r2, [r3, #8]
006d9728  48 30 9d e5                                      ldr r3, [sp, #0x48]
006d972c  00 00 53 e3                                      cmp r3, #0
006d9730  05 00 00 0a                                      beq #0x6d974c
006d9734  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d9738  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006d973c  04 20 a0 e3                                      mov r2, #4
006d9740  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006d9744  90 38 20 e0                                      mla r0, r0, r8, r3
006d9748  46 d4 f0 eb                                      bl #0x30e868
006d974c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006d9750  0a 00 a0 e1                                      mov r0, sl
006d9754  12 d5 f0 eb                                      bl #0x30eba4
006d9758  00 70 a0 e1                                      mov r7, r0
006d975c  fc d3 f0 eb                                      bl #0x30e754
006d9760  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006d9764  80 d5 f0 eb                                      bl #0x30ed6c
006d9768  00 a0 a0 e1                                      mov sl, r0
006d976c  07 00 a0 e1                                      mov r0, r7
006d9770  e4 d4 f0 eb                                      bl #0x30eb08
006d9774  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006d9778  7b d5 f0 eb                                      bl #0x30ed6c
006d977c  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
006d9780  02 80 84 e2                                      add r8, r4, #2
006d9784  60 10 9d e5                                      ldr r1, [sp, #0x60]
006d9788  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006d978c  00 70 a0 e1                                      mov r7, r0
006d9790  92 08 02 e0                                      mul r2, r2, r8
006d9794  02 30 81 e0                                      add r3, r1, r2
006d9798  02 a0 81 e7                                      str sl, [r1, r2]
006d979c  08 00 83 e5                                      str r0, [r3, #8]
006d97a0  04 50 83 e5                                      str r5, [r3, #4]
006d97a4  58 90 9d e5                                      ldr sb, [sp, #0x58]
006d97a8  00 00 59 e3                                      cmp sb, #0
006d97ac  08 00 00 0a                                      beq #0x6d97d4
006d97b0  54 30 9d e5                                      ldr r3, [sp, #0x54]
006d97b4  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d97b8  06 00 a0 e1                                      mov r0, r6
006d97bc  be b0 d3 e1                                      ldrh fp, [r3, #0xe]
006d97c0  f7 d4 f0 eb                                      bl #0x30eba4
006d97c4  9b 08 0b e0                                      mul fp, fp, r8
006d97c8  0b 30 89 e0                                      add r3, sb, fp
006d97cc  0b 00 89 e7                                      str r0, [sb, fp]
006d97d0  04 50 83 e5                                      str r5, [r3, #4]
006d97d4  50 30 9d e5                                      ldr r3, [sp, #0x50]
006d97d8  00 00 53 e3                                      cmp r3, #0
006d97dc  0f 00 00 0a                                      beq #0x6d9820
006d97e0  10 00 9d e5                                      ldr r0, [sp, #0x10]
006d97e4  38 a0 8d e5                                      str sl, [sp, #0x38]
006d97e8  3c 50 8d e5                                      str r5, [sp, #0x3c]
006d97ec  40 70 8d e5                                      str r7, [sp, #0x40]
006d97f0  3a 14 f2 eb                                      bl #0x35e8e0
006d97f4  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006d97f8  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d97fc  38 10 9d e5                                      ldr r1, [sp, #0x38]
006d9800  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
006d9804  93 08 03 e0                                      mul r3, r3, r8
006d9808  03 10 82 e7                                      str r1, [r2, r3]
006d980c  03 30 82 e0                                      add r3, r2, r3
006d9810  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006d9814  04 20 83 e5                                      str r2, [r3, #4]
006d9818  40 20 9d e5                                      ldr r2, [sp, #0x40]
006d981c  08 20 83 e5                                      str r2, [r3, #8]
006d9820  48 30 9d e5                                      ldr r3, [sp, #0x48]
006d9824  00 00 53 e3                                      cmp r3, #0
006d9828  05 00 00 0a                                      beq #0x6d9844
006d982c  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d9830  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006d9834  04 20 a0 e3                                      mov r2, #4
006d9838  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006d983c  90 38 20 e0                                      mla r0, r0, r8, r3
006d9840  08 d4 f0 eb                                      bl #0x30e868
006d9844  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
006d9848  0a 10 a0 e1                                      mov r1, sl
006d984c  d4 d4 f0 eb                                      bl #0x30eba4
006d9850  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
006d9854  03 80 84 e2                                      add r8, r4, #3
006d9858  60 10 9d e5                                      ldr r1, [sp, #0x60]
006d985c  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006d9860  00 90 a0 e1                                      mov sb, r0
006d9864  98 02 02 e0                                      mul r2, r8, r2
006d9868  02 30 81 e0                                      add r3, r1, r2
006d986c  02 00 81 e7                                      str r0, [r1, r2]
006d9870  08 70 83 e5                                      str r7, [r3, #8]
006d9874  98 a0 9d e5                                      ldr sl, [sp, #0x98]
006d9878  04 a0 83 e5                                      str sl, [r3, #4]
006d987c  58 a0 9d e5                                      ldr sl, [sp, #0x58]
006d9880  00 00 5a e3                                      cmp sl, #0
006d9884  09 00 00 0a                                      beq #0x6d98b0
006d9888  54 30 9d e5                                      ldr r3, [sp, #0x54]
006d988c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d9890  06 00 a0 e1                                      mov r0, r6
006d9894  be b0 d3 e1                                      ldrh fp, [r3, #0xe]
006d9898  c1 d4 f0 eb                                      bl #0x30eba4
006d989c  98 0b 0b e0                                      mul fp, r8, fp
006d98a0  fe c5 a0 e3                                      mov ip, #0x3f800000
006d98a4  0b 30 8a e0                                      add r3, sl, fp
006d98a8  0b 00 8a e7                                      str r0, [sl, fp]
006d98ac  04 c0 83 e5                                      str ip, [r3, #4]
006d98b0  50 30 9d e5                                      ldr r3, [sp, #0x50]
006d98b4  00 00 53 e3                                      cmp r3, #0
006d98b8  10 00 00 0a                                      beq #0x6d9900
006d98bc  98 10 9d e5                                      ldr r1, [sp, #0x98]
006d98c0  10 00 9d e5                                      ldr r0, [sp, #0x10]
006d98c4  38 90 8d e5                                      str sb, [sp, #0x38]
006d98c8  3c 10 8d e5                                      str r1, [sp, #0x3c]
006d98cc  40 70 8d e5                                      str r7, [sp, #0x40]
006d98d0  02 14 f2 eb                                      bl #0x35e8e0
006d98d4  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006d98d8  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d98dc  38 10 9d e5                                      ldr r1, [sp, #0x38]
006d98e0  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
006d98e4  98 03 03 e0                                      mul r3, r8, r3
006d98e8  03 10 82 e7                                      str r1, [r2, r3]
006d98ec  03 30 82 e0                                      add r3, r2, r3
006d98f0  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006d98f4  04 20 83 e5                                      str r2, [r3, #4]
006d98f8  40 20 9d e5                                      ldr r2, [sp, #0x40]
006d98fc  08 20 83 e5                                      str r2, [r3, #8]
006d9900  48 30 9d e5                                      ldr r3, [sp, #0x48]
006d9904  00 00 53 e3                                      cmp r3, #0
006d9908  05 00 00 0a                                      beq #0x6d9924
006d990c  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d9910  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006d9914  04 20 a0 e3                                      mov r2, #4
006d9918  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006d991c  98 30 20 e0                                      mla r0, r8, r0, r3
006d9920  d0 d3 f0 eb                                      bl #0x30e868
006d9924  08 20 9d e5                                      ldr r2, [sp, #8]
006d9928  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
006d992c  04 40 84 e2                                      add r4, r4, #4
006d9930  01 20 82 e2                                      add r2, r2, #1
006d9934  02 00 53 e1                                      cmp r3, r2
006d9938  08 20 8d e5                                      str r2, [sp, #8]
006d993c  0e ff ff 1a                                      bne #0x6d957c
006d9940  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
006d9944  24 50 9d e5                                      ldr r5, [sp, #0x24]
006d9948  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
006d994c  01 40 85 e2                                      add r4, r5, #1
006d9950  05 30 a0 e1                                      mov r3, r5
006d9954  91 05 01 e0                                      mul r1, r1, r5
006d9958  60 c0 9d e5                                      ldr ip, [sp, #0x60]
006d995c  00 20 a0 e3                                      mov r2, #0
006d9960  01 00 8c e0                                      add r0, ip, r1
006d9964  01 20 8c e7                                      str r2, [ip, r1]
006d9968  08 20 80 e5                                      str r2, [r0, #8]
006d996c  04 20 80 e5                                      str r2, [r0, #4]
006d9970  58 20 9d e5                                      ldr r2, [sp, #0x58]
006d9974  00 00 52 e3                                      cmp r2, #0
006d9978  06 00 00 0a                                      beq #0x6d9998
006d997c  54 00 9d e5                                      ldr r0, [sp, #0x54]
006d9980  fe 15 a0 e3                                      mov r1, #0x3f800000
006d9984  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006d9988  90 03 00 e0                                      mul r0, r0, r3
006d998c  00 c0 82 e0                                      add ip, r2, r0
006d9990  00 10 82 e7                                      str r1, [r2, r0]
006d9994  04 10 8c e5                                      str r1, [ip, #4]
006d9998  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d999c  00 00 52 e3                                      cmp r2, #0
006d99a0  09 00 00 0a                                      beq #0x6d99cc
006d99a4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
006d99a8  00 00 a0 e3                                      mov r0, #0
006d99ac  be c0 d1 e1                                      ldrh ip, [r1, #0xe]
006d99b0  9c 03 0c e0                                      mul ip, ip, r3
006d99b4  0c 10 82 e0                                      add r1, r2, ip
006d99b8  0c 00 82 e7                                      str r0, [r2, ip]
006d99bc  bf 24 a0 e3                                      mov r2, #0xbf000000
006d99c0  02 25 82 e2                                      add r2, r2, #0x800000
006d99c4  08 00 81 e5                                      str r0, [r1, #8]
006d99c8  04 20 81 e5                                      str r2, [r1, #4]
006d99cc  48 00 9d e5                                      ldr r0, [sp, #0x48]
006d99d0  00 00 50 e3                                      cmp r0, #0
006d99d4  05 00 00 0a                                      beq #0x6d99f0
006d99d8  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006d99dc  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006d99e0  04 20 a0 e3                                      mov r2, #4
006d99e4  be c0 dc e1                                      ldrh ip, [ip, #0xe]
006d99e8  9c 03 20 e0                                      mla r0, ip, r3, r0
006d99ec  9d d3 f0 eb                                      bl #0x30e868
006d99f0  28 70 9d e5                                      ldr r7, [sp, #0x28]
006d99f4  00 00 57 e3                                      cmp r7, #0
006d99f8  28 00 00 0a                                      beq #0x6d9aa0
006d99fc  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
006d9a00  60 00 9d e5                                      ldr r0, [sp, #0x60]
006d9a04  a8 a0 9d e5                                      ldr sl, [sp, #0xa8]
006d9a08  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
006d9a0c  00 30 a0 e3                                      mov r3, #0
006d9a10  91 04 01 e0                                      mul r1, r1, r4
006d9a14  01 a0 80 e7                                      str sl, [r0, r1]
006d9a18  98 c0 9d e5                                      ldr ip, [sp, #0x98]
006d9a1c  01 20 80 e0                                      add r2, r0, r1
006d9a20  08 30 82 e5                                      str r3, [r2, #8]
006d9a24  04 c0 82 e5                                      str ip, [r2, #4]
006d9a28  58 20 9d e5                                      ldr r2, [sp, #0x58]
006d9a2c  00 00 52 e3                                      cmp r2, #0
006d9a30  05 00 00 0a                                      beq #0x6d9a4c
006d9a34  54 10 9d e5                                      ldr r1, [sp, #0x54]
006d9a38  be 10 d1 e1                                      ldrh r1, [r1, #0xe]
006d9a3c  91 04 01 e0                                      mul r1, r1, r4
006d9a40  01 00 82 e0                                      add r0, r2, r1
006d9a44  01 30 82 e7                                      str r3, [r2, r1]
006d9a48  04 30 80 e5                                      str r3, [r0, #4]
006d9a4c  50 30 9d e5                                      ldr r3, [sp, #0x50]
006d9a50  00 00 53 e3                                      cmp r3, #0
006d9a54  08 00 00 0a                                      beq #0x6d9a7c
006d9a58  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
006d9a5c  00 10 a0 e3                                      mov r1, #0
006d9a60  be 00 d2 e1                                      ldrh r0, [r2, #0xe]
006d9a64  90 04 00 e0                                      mul r0, r0, r4
006d9a68  00 20 83 e0                                      add r2, r3, r0
006d9a6c  00 10 83 e7                                      str r1, [r3, r0]
006d9a70  fe 35 a0 e3                                      mov r3, #0x3f800000
006d9a74  08 10 82 e5                                      str r1, [r2, #8]
006d9a78  04 30 82 e5                                      str r3, [r2, #4]
006d9a7c  48 30 9d e5                                      ldr r3, [sp, #0x48]
006d9a80  00 00 53 e3                                      cmp r3, #0
006d9a84  05 00 00 0a                                      beq #0x6d9aa0
006d9a88  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d9a8c  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006d9a90  04 20 a0 e3                                      mov r2, #4
006d9a94  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006d9a98  90 34 20 e0                                      mla r0, r0, r4, r3
006d9a9c  71 d3 f0 eb                                      bl #0x30e868
006d9aa0  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
006d9aa4  05 10 a0 e3                                      mov r1, #5
006d9aa8  18 00 96 e5                                      ldr r0, [r6, #0x18]
006d9aac  cf 1f fb eb                                      bl #0x5a19f0
006d9ab0  24 10 9d e5                                      ldr r1, [sp, #0x24]
006d9ab4  1c 40 96 e5                                      ldr r4, [r6, #0x1c]
006d9ab8  02 30 51 e2                                      subs r3, r1, #2
006d9abc  04 40 80 e0                                      add r4, r0, r4
006d9ac0  15 01 00 0a                                      beq #0x6d9f1c
006d9ac4  00 e0 a0 e3                                      mov lr, #0
006d9ac8  01 10 a0 e3                                      mov r1, #1
006d9acc  02 b0 a0 e3                                      mov fp, #2
006d9ad0  0e 00 a0 e1                                      mov r0, lr
006d9ad4  04 20 a0 e1                                      mov r2, r4
006d9ad8  7b c0 ff e6                                      uxth ip, fp
006d9adc  be c0 a2 e1                                      strh ip, [r2, lr]!
006d9ae0  b2 00 c2 e1                                      strh r0, [r2, #2]
006d9ae4  02 50 81 e2                                      add r5, r1, #2
006d9ae8  02 00 80 e2                                      add r0, r0, #2
006d9aec  b4 10 c2 e1                                      strh r1, [r2, #4]
006d9af0  b8 10 c2 e1                                      strh r1, [r2, #8]
006d9af4  00 00 53 e1                                      cmp r3, r0
006d9af8  75 10 ff e6                                      uxth r1, r5
006d9afc  b6 c0 c2 e1                                      strh ip, [r2, #6]
006d9b00  ba 10 c2 e1                                      strh r1, [r2, #0xa]
006d9b04  02 b0 8b e2                                      add fp, fp, #2
006d9b08  0c e0 8e e2                                      add lr, lr, #0xc
006d9b0c  f0 ff ff 1a                                      bne #0x6d9ad4
006d9b10  02 b0 4b e2                                      sub fp, fp, #2
006d9b14  8b b0 8b e0                                      add fp, fp, fp, lsl #1
006d9b18  01 90 8b e2                                      add sb, fp, #1
006d9b1c  01 a0 89 e2                                      add sl, sb, #1
006d9b20  01 80 8a e2                                      add r8, sl, #1
006d9b24  01 50 88 e2                                      add r5, r8, #1
006d9b28  01 c0 85 e2                                      add ip, r5, #1
006d9b2c  01 20 8c e2                                      add r2, ip, #1
006d9b30  01 e0 82 e2                                      add lr, r2, #1
006d9b34  73 70 ff e6                                      uxth r7, r3
006d9b38  01 10 8e e2                                      add r1, lr, #1
006d9b3c  85 50 a0 e1                                      lsl r5, r5, #1
006d9b40  8c c0 a0 e1                                      lsl ip, ip, #1
006d9b44  01 00 87 e2                                      add r0, r7, #1
006d9b48  8a a0 a0 e1                                      lsl sl, sl, #1
006d9b4c  0c 50 8d e5                                      str r5, [sp, #0xc]
006d9b50  08 c0 8d e5                                      str ip, [sp, #8]
006d9b54  70 00 ff e6                                      uxth r0, r0
006d9b58  81 c0 a0 e1                                      lsl ip, r1, #1
006d9b5c  8b b0 a0 e1                                      lsl fp, fp, #1
006d9b60  89 90 a0 e1                                      lsl sb, sb, #1
006d9b64  10 a0 8d e5                                      str sl, [sp, #0x10]
006d9b68  88 80 a0 e1                                      lsl r8, r8, #1
006d9b6c  8e e0 a0 e1                                      lsl lr, lr, #1
006d9b70  01 10 81 e2                                      add r1, r1, #1
006d9b74  82 50 a0 e1                                      lsl r5, r2, #1
006d9b78  00 a0 a0 e3                                      mov sl, #0
006d9b7c  bb a0 84 e1                                      strh sl, [r4, fp]
006d9b80  b9 70 84 e1                                      strh r7, [r4, sb]
006d9b84  10 70 9d e5                                      ldr r7, [sp, #0x10]
006d9b88  00 00 53 e3                                      cmp r3, #0
006d9b8c  03 20 a0 01                                      moveq r2, r3
006d9b90  b7 00 84 e1                                      strh r0, [r4, r7]
006d9b94  b8 a0 84 e1                                      strh sl, [r4, r8]
006d9b98  0c a0 9d e5                                      ldr sl, [sp, #0xc]
006d9b9c  01 70 a0 e3                                      mov r7, #1
006d9ba0  ba 00 84 e1                                      strh r0, [r4, sl]
006d9ba4  08 00 9d e5                                      ldr r0, [sp, #8]
006d9ba8  b0 70 84 e1                                      strh r7, [r4, r0]
006d9bac  30 a0 9d e5                                      ldr sl, [sp, #0x30]
006d9bb0  01 70 4a e2                                      sub r7, sl, #1
006d9bb4  77 70 ff 06                                      uxtheq r7, r7
006d9bb8  19 00 00 0a                                      beq #0x6d9c24
006d9bbc  01 50 82 e2                                      add r5, r2, #1
006d9bc0  02 e0 82 e2                                      add lr, r2, #2
006d9bc4  77 70 ff e6                                      uxth r7, r7
006d9bc8  85 50 a0 e1                                      lsl r5, r5, #1
006d9bcc  8e e0 a0 e1                                      lsl lr, lr, #1
006d9bd0  82 c0 a0 e1                                      lsl ip, r2, #1
006d9bd4  02 00 a0 e3                                      mov r0, #2
006d9bd8  00 10 a0 e3                                      mov r1, #0
006d9bdc  bc 70 84 e1                                      strh r7, [r4, ip]
006d9be0  b5 10 84 e1                                      strh r1, [r4, r5]
006d9be4  02 10 81 e2                                      add r1, r1, #2
006d9be8  01 00 53 e1                                      cmp r3, r1
006d9bec  be 00 84 e1                                      strh r0, [r4, lr]
006d9bf0  03 20 82 e2                                      add r2, r2, #3
006d9bf4  02 00 80 e2                                      add r0, r0, #2
006d9bf8  06 c0 8c e2                                      add ip, ip, #6
006d9bfc  06 50 85 e2                                      add r5, r5, #6
006d9c00  06 e0 8e e2                                      add lr, lr, #6
006d9c04  f4 ff ff 1a                                      bne #0x6d9bdc
006d9c08  01 e0 82 e2                                      add lr, r2, #1
006d9c0c  01 10 8e e2                                      add r1, lr, #1
006d9c10  82 50 a0 e1                                      lsl r5, r2, #1
006d9c14  81 c0 a0 e1                                      lsl ip, r1, #1
006d9c18  8e e0 a0 e1                                      lsl lr, lr, #1
006d9c1c  73 20 ff e6                                      uxth r2, r3
006d9c20  01 10 81 e2                                      add r1, r1, #1
006d9c24  28 00 9d e5                                      ldr r0, [sp, #0x28]
006d9c28  b5 70 84 e1                                      strh r7, [r4, r5]
006d9c2c  be 20 84 e1                                      strh r2, [r4, lr]
006d9c30  00 00 50 e3                                      cmp r0, #0
006d9c34  00 20 a0 e3                                      mov r2, #0
006d9c38  bc 20 84 e1                                      strh r2, [r4, ip]
006d9c3c  1f 00 00 0a                                      beq #0x6d9cc0
006d9c40  00 00 53 e3                                      cmp r3, #0
006d9c44  01 30 a0 03                                      moveq r3, #1
006d9c48  14 00 00 0a                                      beq #0x6d9ca0
006d9c4c  01 50 81 e2                                      add r5, r1, #1
006d9c50  02 e0 81 e2                                      add lr, r1, #2
006d9c54  85 50 a0 e1                                      lsl r5, r5, #1
006d9c58  8e e0 a0 e1                                      lsl lr, lr, #1
006d9c5c  81 c0 a0 e1                                      lsl ip, r1, #1
006d9c60  01 20 a0 e3                                      mov r2, #1
006d9c64  00 00 a0 e3                                      mov r0, #0
006d9c68  02 80 82 e2                                      add r8, r2, #2
006d9c6c  02 00 80 e2                                      add r0, r0, #2
006d9c70  bc 20 84 e1                                      strh r2, [r4, ip]
006d9c74  00 00 53 e1                                      cmp r3, r0
006d9c78  78 20 ff e6                                      uxth r2, r8
006d9c7c  b5 70 84 e1                                      strh r7, [r4, r5]
006d9c80  03 10 81 e2                                      add r1, r1, #3
006d9c84  be 20 84 e1                                      strh r2, [r4, lr]
006d9c88  06 c0 8c e2                                      add ip, ip, #6
006d9c8c  06 50 85 e2                                      add r5, r5, #6
006d9c90  06 e0 8e e2                                      add lr, lr, #6
006d9c94  f3 ff ff 1a                                      bne #0x6d9c68
006d9c98  01 30 83 e2                                      add r3, r3, #1
006d9c9c  73 30 ff e6                                      uxth r3, r3
006d9ca0  01 20 81 e2                                      add r2, r1, #1
006d9ca4  81 10 a0 e1                                      lsl r1, r1, #1
006d9ca8  b1 30 84 e1                                      strh r3, [r4, r1]
006d9cac  82 00 84 e0                                      add r0, r4, r2, lsl #1
006d9cb0  01 30 a0 e3                                      mov r3, #1
006d9cb4  82 20 a0 e1                                      lsl r2, r2, #1
006d9cb8  b2 70 84 e1                                      strh r7, [r4, r2]
006d9cbc  b2 30 c0 e1                                      strh r3, [r0, #2]
006d9cc0  00 10 a0 e3                                      mov r1, #0
006d9cc4  2c 00 a0 e3                                      mov r0, #0x2c
006d9cc8  37 69 f9 eb                                      bl #0x5341ac
006d9ccc  00 50 a0 e1                                      mov r5, r0
006d9cd0  7f 87 ff eb                                      bl #0x6bbad4
006d9cd4  00 00 55 e3                                      cmp r5, #0
006d9cd8  04 30 95 15                                      ldrne r3, [r5, #4]
006d9cdc  64 70 8d e2                                      add r7, sp, #0x64
006d9ce0  68 80 8d e2                                      add r8, sp, #0x68
006d9ce4  01 30 83 12                                      addne r3, r3, #1
006d9ce8  04 30 85 15                                      strne r3, [r5, #4]
006d9cec  00 c0 a0 e3                                      mov ip, #0
006d9cf0  07 30 a0 e1                                      mov r3, r7
006d9cf4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006d9cf8  08 20 a0 e1                                      mov r2, r8
006d9cfc  05 00 a0 e1                                      mov r0, r5
006d9d00  64 c0 8d e5                                      str ip, [sp, #0x64]
006d9d04  68 c0 8d e5                                      str ip, [sp, #0x68]
006d9d08  55 8a ff eb                                      bl #0x6bc664
006d9d0c  07 00 a0 e1                                      mov r0, r7
006d9d10  55 81 fa eb                                      bl #0x57a26c
006d9d14  08 00 a0 e1                                      mov r0, r8
006d9d18  b2 db f0 eb                                      bl #0x310be8
006d9d1c  05 00 a0 e1                                      mov r0, r5
006d9d20  69 89 ff eb                                      bl #0x6bc2cc
006d9d24  34 70 9d e5                                      ldr r7, [sp, #0x34]
006d9d28  00 00 55 e3                                      cmp r5, #0
006d9d2c  00 50 87 e5                                      str r5, [r7]
006d9d30  04 00 00 0a                                      beq #0x6d9d48
006d9d34  04 30 95 e5                                      ldr r3, [r5, #4]
006d9d38  05 00 a0 e1                                      mov r0, r5
006d9d3c  01 30 83 e2                                      add r3, r3, #1
006d9d40  04 30 85 e5                                      str r3, [r5, #4]
006d9d44  0e 0e f1 eb                                      bl #0x31d584
006d9d48  00 00 54 e3                                      cmp r4, #0
006d9d4c  08 00 00 0a                                      beq #0x6d9d74
006d9d50  18 40 96 e5                                      ldr r4, [r6, #0x18]
006d9d54  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d9d58  1f 20 03 e2                                      and r2, r3, #0x1f
006d9d5c  01 00 52 e3                                      cmp r2, #1
006d9d60  67 00 00 9a                                      bls #0x6d9f04
006d9d64  01 20 42 e2                                      sub r2, r2, #1
006d9d68  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d9d6c  03 30 82 e1                                      orr r3, r2, r3
006d9d70  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9d74  48 30 9d e5                                      ldr r3, [sp, #0x48]
006d9d78  00 00 53 e3                                      cmp r3, #0
006d9d7c  0c 00 00 0a                                      beq #0x6d9db4
006d9d80  44 30 9d e5                                      ldr r3, [sp, #0x44]
006d9d84  00 40 93 e5                                      ldr r4, [r3]
006d9d88  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d9d8c  1f 20 03 e2                                      and r2, r3, #0x1f
006d9d90  01 00 52 e3                                      cmp r2, #1
006d9d94  54 00 00 9a                                      bls #0x6d9eec
006d9d98  01 20 42 e2                                      sub r2, r2, #1
006d9d9c  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d9da0  03 30 82 e1                                      orr r3, r2, r3
006d9da4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9da8  00 30 a0 e3                                      mov r3, #0
006d9dac  48 30 8d e5                                      str r3, [sp, #0x48]
006d9db0  44 30 8d e5                                      str r3, [sp, #0x44]
006d9db4  50 30 9d e5                                      ldr r3, [sp, #0x50]
006d9db8  00 00 53 e3                                      cmp r3, #0
006d9dbc  0c 00 00 0a                                      beq #0x6d9df4
006d9dc0  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006d9dc4  00 40 93 e5                                      ldr r4, [r3]
006d9dc8  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d9dcc  1f 20 03 e2                                      and r2, r3, #0x1f
006d9dd0  01 00 52 e3                                      cmp r2, #1
006d9dd4  3e 00 00 9a                                      bls #0x6d9ed4
006d9dd8  01 20 42 e2                                      sub r2, r2, #1
006d9ddc  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d9de0  03 30 82 e1                                      orr r3, r2, r3
006d9de4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9de8  00 30 a0 e3                                      mov r3, #0
006d9dec  50 30 8d e5                                      str r3, [sp, #0x50]
006d9df0  4c 30 8d e5                                      str r3, [sp, #0x4c]
006d9df4  58 30 9d e5                                      ldr r3, [sp, #0x58]
006d9df8  00 00 53 e3                                      cmp r3, #0
006d9dfc  0c 00 00 0a                                      beq #0x6d9e34
006d9e00  54 30 9d e5                                      ldr r3, [sp, #0x54]
006d9e04  00 40 93 e5                                      ldr r4, [r3]
006d9e08  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d9e0c  1f 20 03 e2                                      and r2, r3, #0x1f
006d9e10  01 00 52 e3                                      cmp r2, #1
006d9e14  28 00 00 9a                                      bls #0x6d9ebc
006d9e18  01 20 42 e2                                      sub r2, r2, #1
006d9e1c  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d9e20  03 30 82 e1                                      orr r3, r2, r3
006d9e24  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9e28  00 30 a0 e3                                      mov r3, #0
006d9e2c  58 30 8d e5                                      str r3, [sp, #0x58]
006d9e30  54 30 8d e5                                      str r3, [sp, #0x54]
006d9e34  60 30 9d e5                                      ldr r3, [sp, #0x60]
006d9e38  00 00 53 e3                                      cmp r3, #0
006d9e3c  0c 00 00 0a                                      beq #0x6d9e74
006d9e40  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
006d9e44  00 40 93 e5                                      ldr r4, [r3]
006d9e48  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d9e4c  1f 20 03 e2                                      and r2, r3, #0x1f
006d9e50  01 00 52 e3                                      cmp r2, #1
006d9e54  12 00 00 9a                                      bls #0x6d9ea4
006d9e58  01 20 42 e2                                      sub r2, r2, #1
006d9e5c  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d9e60  03 30 82 e1                                      orr r3, r2, r3
006d9e64  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9e68  00 30 a0 e3                                      mov r3, #0
006d9e6c  60 30 8d e5                                      str r3, [sp, #0x60]
006d9e70  5c 30 8d e5                                      str r3, [sp, #0x5c]
006d9e74  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006d9e78  00 00 50 e3                                      cmp r0, #0
006d9e7c  00 00 00 0a                                      beq #0x6d9e84
006d9e80  bf 0d f1 eb                                      bl #0x31d584
006d9e84  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d9e88  74 d0 8d e2                                      add sp, sp, #0x74
006d9e8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d9e90  24 a0 9d e5                                      ldr sl, [sp, #0x24]
006d9e94  09 30 a0 e3                                      mov r3, #9
006d9e98  01 a0 8a e2                                      add sl, sl, #1
006d9e9c  30 a0 8d e5                                      str sl, [sp, #0x30]
006d9ea0  7b fd ff ea                                      b #0x6d9494
006d9ea4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d9ea8  20 00 13 e3                                      tst r3, #0x20
006d9eac  3f 00 00 1a                                      bne #0x6d9fb0
006d9eb0  00 30 a0 e3                                      mov r3, #0
006d9eb4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9eb8  ea ff ff ea                                      b #0x6d9e68
006d9ebc  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d9ec0  20 00 13 e3                                      tst r3, #0x20
006d9ec4  34 00 00 1a                                      bne #0x6d9f9c
006d9ec8  00 30 a0 e3                                      mov r3, #0
006d9ecc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9ed0  d4 ff ff ea                                      b #0x6d9e28
006d9ed4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d9ed8  20 00 13 e3                                      tst r3, #0x20
006d9edc  29 00 00 1a                                      bne #0x6d9f88
006d9ee0  00 30 a0 e3                                      mov r3, #0
006d9ee4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9ee8  be ff ff ea                                      b #0x6d9de8
006d9eec  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d9ef0  20 00 13 e3                                      tst r3, #0x20
006d9ef4  1e 00 00 1a                                      bne #0x6d9f74
006d9ef8  00 30 a0 e3                                      mov r3, #0
006d9efc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9f00  a8 ff ff ea                                      b #0x6d9da8
006d9f04  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d9f08  20 00 13 e3                                      tst r3, #0x20
006d9f0c  13 00 00 1a                                      bne #0x6d9f60
006d9f10  00 30 a0 e3                                      mov r3, #0
006d9f14  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d9f18  95 ff ff ea                                      b #0x6d9d74
006d9f1c  0a 20 a0 e3                                      mov r2, #0xa
006d9f20  08 70 a0 e3                                      mov r7, #8
006d9f24  06 80 a0 e3                                      mov r8, #6
006d9f28  04 a0 a0 e3                                      mov sl, #4
006d9f2c  08 20 8d e5                                      str r2, [sp, #8]
006d9f30  0c 70 8d e5                                      str r7, [sp, #0xc]
006d9f34  10 c0 a0 e3                                      mov ip, #0x10
006d9f38  0e e0 a0 e3                                      mov lr, #0xe
006d9f3c  0c 50 a0 e3                                      mov r5, #0xc
006d9f40  09 10 a0 e3                                      mov r1, #9
006d9f44  10 a0 8d e5                                      str sl, [sp, #0x10]
006d9f48  02 90 a0 e3                                      mov sb, #2
006d9f4c  03 b0 a0 e1                                      mov fp, r3
006d9f50  08 20 a0 e1                                      mov r2, r8
006d9f54  01 00 a0 e3                                      mov r0, #1
006d9f58  03 70 a0 e1                                      mov r7, r3
006d9f5c  05 ff ff ea                                      b #0x6d9b78
006d9f60  00 30 94 e5                                      ldr r3, [r4]
006d9f64  04 00 a0 e1                                      mov r0, r4
006d9f68  0f e0 a0 e1                                      mov lr, pc
006d9f6c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d9f70  e6 ff ff ea                                      b #0x6d9f10
006d9f74  00 30 94 e5                                      ldr r3, [r4]
006d9f78  04 00 a0 e1                                      mov r0, r4
006d9f7c  0f e0 a0 e1                                      mov lr, pc
006d9f80  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d9f84  db ff ff ea                                      b #0x6d9ef8
006d9f88  00 30 94 e5                                      ldr r3, [r4]
006d9f8c  04 00 a0 e1                                      mov r0, r4
006d9f90  0f e0 a0 e1                                      mov lr, pc
006d9f94  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d9f98  d0 ff ff ea                                      b #0x6d9ee0
006d9f9c  00 30 94 e5                                      ldr r3, [r4]
006d9fa0  04 00 a0 e1                                      mov r0, r4
006d9fa4  0f e0 a0 e1                                      mov lr, pc
006d9fa8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d9fac  c5 ff ff ea                                      b #0x6d9ec8
006d9fb0  00 30 94 e5                                      ldr r3, [r4]
006d9fb4  04 00 a0 e1                                      mov r0, r4
006d9fb8  0f e0 a0 e1                                      mov lr, pc
006d9fbc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d9fc0  ba ff ff ea                                      b #0x6d9eb0

; FUNCTION 0x006d9fc4, declared_size=1812, range_size=1812, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene14createConeMeshEjPNS_5video12IVideoDriverEffjRKNS1_6SColorES6_f
; demangled: glitch::scene::createConeMesh(unsigned int, glitch::video::IVideoDriver*, float, float, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, float)
; decoder-mode: arm
006d9fc4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d9fc8  54 d0 4d e2                                      sub sp, sp, #0x54
006d9fcc  7c e0 9d e5                                      ldr lr, [sp, #0x7c]
006d9fd0  0c c0 a0 e3                                      mov ip, #0xc
006d9fd4  4c 40 8d e2                                      add r4, sp, #0x4c
006d9fd8  9c 0e 0c e0                                      mul ip, ip, lr
006d9fdc  18 40 8d e5                                      str r4, [sp, #0x18]
006d9fe0  01 e0 8e e2                                      add lr, lr, #1
006d9fe4  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d9fe8  03 40 a0 e1                                      mov r4, r3
006d9fec  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d9ff0  8e 30 a0 e1                                      lsl r3, lr, #1
006d9ff4  00 c0 8d e5                                      str ip, [sp]
006d9ff8  8b f3 ff eb                                      bl #0x6d6e2c
006d9ffc  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006da000  b6 d0 f0 eb                                      bl #0x30e2e0
006da004  00 10 a0 e1                                      mov r1, r0
006da008  db 0f 00 e3                                      movw r0, #0xfdb
006da00c  c9 00 44 e3                                      movt r0, #0x40c9
006da010  1f d3 f0 eb                                      bl #0x30ec94
006da014  3f 14 a0 e3                                      mov r1, #0x3f000000
006da018  14 00 8d e5                                      str r0, [sp, #0x14]
006da01c  52 d3 f0 eb                                      bl #0x30ed6c
006da020  00 50 a0 e3                                      mov r5, #0
006da024  2c c0 8d e2                                      add ip, sp, #0x2c
006da028  10 00 8d e5                                      str r0, [sp, #0x10]
006da02c  34 30 8d e2                                      add r3, sp, #0x34
006da030  00 c0 8d e5                                      str ip, [sp]
006da034  18 00 9d e5                                      ldr r0, [sp, #0x18]
006da038  05 c0 a0 e3                                      mov ip, #5
006da03c  3c 10 8d e2                                      add r1, sp, #0x3c
006da040  05 20 a0 e1                                      mov r2, r5
006da044  04 c0 8d e5                                      str ip, [sp, #4]
006da048  3c 50 8d e5                                      str r5, [sp, #0x3c]
006da04c  40 50 8d e5                                      str r5, [sp, #0x40]
006da050  34 50 8d e5                                      str r5, [sp, #0x34]
006da054  38 50 8d e5                                      str r5, [sp, #0x38]
006da058  2c 50 8d e5                                      str r5, [sp, #0x2c]
006da05c  30 50 8d e5                                      str r5, [sp, #0x30]
006da060  5c f4 ff eb                                      bl #0x6d71d8
006da064  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006da068  05 00 53 e1                                      cmp r3, r5
006da06c  80 01 00 0a                                      beq #0x6da674
006da070  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006da074  20 c0 8d e2                                      add ip, sp, #0x20
006da078  00 70 a0 e3                                      mov r7, #0
006da07c  be b0 d3 e1                                      ldrh fp, [r3, #0xe]
006da080  05 60 a0 e1                                      mov r6, r5
006da084  0c c0 8d e5                                      str ip, [sp, #0xc]
006da088  01 00 00 ea                                      b #0x6da094
006da08c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006da090  be b0 d3 e1                                      ldrh fp, [r3, #0xe]
006da094  06 00 a0 e1                                      mov r0, r6
006da098  90 d0 f0 eb                                      bl #0x30e2e0
006da09c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006da0a0  31 d3 f0 eb                                      bl #0x30ed6c
006da0a4  00 a0 a0 e1                                      mov sl, r0
006da0a8  a9 d1 f0 eb                                      bl #0x30e754
006da0ac  04 10 a0 e1                                      mov r1, r4
006da0b0  2d d3 f0 eb                                      bl #0x30ed6c
006da0b4  00 90 a0 e1                                      mov sb, r0
006da0b8  0a 00 a0 e1                                      mov r0, sl
006da0bc  91 d2 f0 eb                                      bl #0x30eb08
006da0c0  04 10 a0 e1                                      mov r1, r4
006da0c4  28 d3 f0 eb                                      bl #0x30ed6c
006da0c8  95 0b 0b e0                                      mul fp, r5, fp
006da0cc  40 10 9d e5                                      ldr r1, [sp, #0x40]
006da0d0  00 20 a0 e1                                      mov r2, r0
006da0d4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006da0d8  0b 30 81 e0                                      add r3, r1, fp
006da0dc  0b 90 81 e7                                      str sb, [r1, fp]
006da0e0  08 20 83 e5                                      str r2, [r3, #8]
006da0e4  04 70 83 e5                                      str r7, [r3, #4]
006da0e8  38 30 9d e5                                      ldr r3, [sp, #0x38]
006da0ec  01 80 85 e2                                      add r8, r5, #1
006da0f0  01 60 86 e2                                      add r6, r6, #1
006da0f4  00 00 53 e3                                      cmp r3, #0
006da0f8  0e 00 00 0a                                      beq #0x6da138
006da0fc  28 20 8d e5                                      str r2, [sp, #0x28]
006da100  20 90 8d e5                                      str sb, [sp, #0x20]
006da104  24 70 8d e5                                      str r7, [sp, #0x24]
006da108  f4 11 f2 eb                                      bl #0x35e8e0
006da10c  34 30 9d e5                                      ldr r3, [sp, #0x34]
006da110  38 20 9d e5                                      ldr r2, [sp, #0x38]
006da114  20 10 9d e5                                      ldr r1, [sp, #0x20]
006da118  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
006da11c  93 05 03 e0                                      mul r3, r3, r5
006da120  03 10 82 e7                                      str r1, [r2, r3]
006da124  03 30 82 e0                                      add r3, r2, r3
006da128  24 20 9d e5                                      ldr r2, [sp, #0x24]
006da12c  04 20 83 e5                                      str r2, [r3, #4]
006da130  28 20 9d e5                                      ldr r2, [sp, #0x28]
006da134  08 20 83 e5                                      str r2, [r3, #8]
006da138  30 30 9d e5                                      ldr r3, [sp, #0x30]
006da13c  04 20 a0 e3                                      mov r2, #4
006da140  80 10 9d e5                                      ldr r1, [sp, #0x80]
006da144  00 00 53 e3                                      cmp r3, #0
006da148  03 00 00 0a                                      beq #0x6da15c
006da14c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006da150  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006da154  90 35 20 e0                                      mla r0, r0, r5, r3
006da158  c2 d1 f0 eb                                      bl #0x30e868
006da15c  10 10 9d e5                                      ldr r1, [sp, #0x10]
006da160  0a 00 a0 e1                                      mov r0, sl
006da164  8e d2 f0 eb                                      bl #0x30eba4
006da168  00 90 a0 e1                                      mov sb, r0
006da16c  78 d1 f0 eb                                      bl #0x30e754
006da170  04 10 a0 e1                                      mov r1, r4
006da174  fc d2 f0 eb                                      bl #0x30ed6c
006da178  00 a0 a0 e1                                      mov sl, r0
006da17c  09 00 a0 e1                                      mov r0, sb
006da180  60 d2 f0 eb                                      bl #0x30eb08
006da184  04 10 a0 e1                                      mov r1, r4
006da188  f7 d2 f0 eb                                      bl #0x30ed6c
006da18c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006da190  40 10 9d e5                                      ldr r1, [sp, #0x40]
006da194  00 c0 a0 e1                                      mov ip, r0
006da198  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006da19c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006da1a0  02 50 85 e2                                      add r5, r5, #2
006da1a4  98 02 02 e0                                      mul r2, r8, r2
006da1a8  02 30 81 e0                                      add r3, r1, r2
006da1ac  02 a0 81 e7                                      str sl, [r1, r2]
006da1b0  08 c0 83 e5                                      str ip, [r3, #8]
006da1b4  04 70 83 e5                                      str r7, [r3, #4]
006da1b8  38 30 9d e5                                      ldr r3, [sp, #0x38]
006da1bc  00 00 53 e3                                      cmp r3, #0
006da1c0  0e 00 00 0a                                      beq #0x6da200
006da1c4  20 a0 8d e5                                      str sl, [sp, #0x20]
006da1c8  28 c0 8d e5                                      str ip, [sp, #0x28]
006da1cc  24 70 8d e5                                      str r7, [sp, #0x24]
006da1d0  c2 11 f2 eb                                      bl #0x35e8e0
006da1d4  34 30 9d e5                                      ldr r3, [sp, #0x34]
006da1d8  38 20 9d e5                                      ldr r2, [sp, #0x38]
006da1dc  20 10 9d e5                                      ldr r1, [sp, #0x20]
006da1e0  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
006da1e4  98 03 03 e0                                      mul r3, r8, r3
006da1e8  03 10 82 e7                                      str r1, [r2, r3]
006da1ec  03 30 82 e0                                      add r3, r2, r3
006da1f0  24 20 9d e5                                      ldr r2, [sp, #0x24]
006da1f4  04 20 83 e5                                      str r2, [r3, #4]
006da1f8  28 20 9d e5                                      ldr r2, [sp, #0x28]
006da1fc  08 20 83 e5                                      str r2, [r3, #8]
006da200  30 30 9d e5                                      ldr r3, [sp, #0x30]
006da204  80 10 9d e5                                      ldr r1, [sp, #0x80]
006da208  04 20 a0 e3                                      mov r2, #4
006da20c  00 00 53 e3                                      cmp r3, #0
006da210  03 00 00 0a                                      beq #0x6da224
006da214  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006da218  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006da21c  98 30 20 e0                                      mla r0, r8, r0, r3
006da220  90 d1 f0 eb                                      bl #0x30e868
006da224  7c e0 9d e5                                      ldr lr, [sp, #0x7c]
006da228  0e 00 56 e1                                      cmp r6, lr
006da22c  96 ff ff 1a                                      bne #0x6da08c
006da230  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006da234  86 60 a0 e1                                      lsl r6, r6, #1
006da238  06 00 a0 e1                                      mov r0, r6
006da23c  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006da240  01 40 86 e2                                      add r4, r6, #1
006da244  92 06 02 e0                                      mul r2, r2, r6
006da248  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006da24c  88 e0 9d e5                                      ldr lr, [sp, #0x88]
006da250  00 30 a0 e3                                      mov r3, #0
006da254  02 10 8c e0                                      add r1, ip, r2
006da258  02 e0 8c e7                                      str lr, [ip, r2]
006da25c  78 20 9d e5                                      ldr r2, [sp, #0x78]
006da260  08 30 81 e5                                      str r3, [r1, #8]
006da264  01 50 46 e2                                      sub r5, r6, #1
006da268  04 20 81 e5                                      str r2, [r1, #4]
006da26c  38 20 9d e5                                      ldr r2, [sp, #0x38]
006da270  00 00 52 e3                                      cmp r2, #0
006da274  07 00 00 0a                                      beq #0x6da298
006da278  34 10 9d e5                                      ldr r1, [sp, #0x34]
006da27c  be c0 d1 e1                                      ldrh ip, [r1, #0xe]
006da280  9c 00 0c e0                                      mul ip, ip, r0
006da284  0c 10 82 e0                                      add r1, r2, ip
006da288  0c 30 82 e7                                      str r3, [r2, ip]
006da28c  08 30 81 e5                                      str r3, [r1, #8]
006da290  fe 35 a0 e3                                      mov r3, #0x3f800000
006da294  04 30 81 e5                                      str r3, [r1, #4]
006da298  30 30 9d e5                                      ldr r3, [sp, #0x30]
006da29c  00 00 53 e3                                      cmp r3, #0
006da2a0  05 00 00 0a                                      beq #0x6da2bc
006da2a4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006da2a8  80 10 9d e5                                      ldr r1, [sp, #0x80]
006da2ac  04 20 a0 e3                                      mov r2, #4
006da2b0  be c0 dc e1                                      ldrh ip, [ip, #0xe]
006da2b4  9c 30 20 e0                                      mla r0, ip, r0, r3
006da2b8  6a d1 f0 eb                                      bl #0x30e868
006da2bc  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006da2c0  40 00 9d e5                                      ldr r0, [sp, #0x40]
006da2c4  00 30 a0 e3                                      mov r3, #0
006da2c8  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
006da2cc  91 04 01 e0                                      mul r1, r1, r4
006da2d0  01 20 80 e0                                      add r2, r0, r1
006da2d4  01 30 80 e7                                      str r3, [r0, r1]
006da2d8  08 30 82 e5                                      str r3, [r2, #8]
006da2dc  04 30 82 e5                                      str r3, [r2, #4]
006da2e0  38 20 9d e5                                      ldr r2, [sp, #0x38]
006da2e4  00 00 52 e3                                      cmp r2, #0
006da2e8  08 00 00 0a                                      beq #0x6da310
006da2ec  34 10 9d e5                                      ldr r1, [sp, #0x34]
006da2f0  be 00 d1 e1                                      ldrh r0, [r1, #0xe]
006da2f4  90 04 00 e0                                      mul r0, r0, r4
006da2f8  00 10 82 e0                                      add r1, r2, r0
006da2fc  00 30 82 e7                                      str r3, [r2, r0]
006da300  08 30 81 e5                                      str r3, [r1, #8]
006da304  bf 34 a0 e3                                      mov r3, #0xbf000000
006da308  02 35 83 e2                                      add r3, r3, #0x800000
006da30c  04 30 81 e5                                      str r3, [r1, #4]
006da310  30 30 9d e5                                      ldr r3, [sp, #0x30]
006da314  00 00 53 e3                                      cmp r3, #0
006da318  05 00 00 0a                                      beq #0x6da334
006da31c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006da320  84 10 9d e5                                      ldr r1, [sp, #0x84]
006da324  04 20 a0 e3                                      mov r2, #4
006da328  be 00 d0 e1                                      ldrh r0, [r0, #0xe]
006da32c  90 34 20 e0                                      mla r0, r0, r4, r3
006da330  4c d1 f0 eb                                      bl #0x30e868
006da334  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
006da338  05 10 a0 e3                                      mov r1, #5
006da33c  18 00 97 e5                                      ldr r0, [r7, #0x18]
006da340  aa 1d fb eb                                      bl #0x5a19f0
006da344  1c 40 97 e5                                      ldr r4, [r7, #0x1c]
006da348  00 00 55 e3                                      cmp r5, #0
006da34c  04 40 80 e0                                      add r4, r0, r4
006da350  bd 00 00 0a                                      beq #0x6da64c
006da354  76 30 ff e6                                      uxth r3, r6
006da358  02 10 a0 e3                                      mov r1, #2
006da35c  01 20 a0 e3                                      mov r2, #1
006da360  00 00 a0 e3                                      mov r0, #0
006da364  01 c0 84 e0                                      add ip, r4, r1
006da368  b2 00 4c e1                                      strh r0, [ip, #-2]
006da36c  b1 30 84 e1                                      strh r3, [r4, r1]
006da370  b2 20 cc e1                                      strh r2, [ip, #2]
006da374  01 20 82 e2                                      add r2, r2, #1
006da378  06 00 52 e1                                      cmp r2, r6
006da37c  01 00 80 e2                                      add r0, r0, #1
006da380  06 10 81 e2                                      add r1, r1, #6
006da384  f6 ff ff 1a                                      bne #0x6da364
006da388  86 e0 86 e0                                      add lr, r6, r6, lsl #1
006da38c  01 00 8e e2                                      add r0, lr, #1
006da390  0e 20 a0 e1                                      mov r2, lr
006da394  01 10 80 e2                                      add r1, r0, #1
006da398  03 a0 4e e2                                      sub sl, lr, #3
006da39c  02 80 4e e2                                      sub r8, lr, #2
006da3a0  01 e0 4e e2                                      sub lr, lr, #1
006da3a4  8a a0 a0 e1                                      lsl sl, sl, #1
006da3a8  88 80 a0 e1                                      lsl r8, r8, #1
006da3ac  8e e0 a0 e1                                      lsl lr, lr, #1
006da3b0  81 10 a0 e1                                      lsl r1, r1, #1
006da3b4  75 90 ff e6                                      uxth sb, r5
006da3b8  82 c0 a0 e1                                      lsl ip, r2, #1
006da3bc  80 00 a0 e1                                      lsl r0, r0, #1
006da3c0  ba 90 84 e1                                      strh sb, [r4, sl]
006da3c4  b8 30 84 e1                                      strh r3, [r4, r8]
006da3c8  00 30 a0 e3                                      mov r3, #0
006da3cc  00 00 55 e3                                      cmp r5, #0
006da3d0  be 30 84 e1                                      strh r3, [r4, lr]
006da3d4  02 e0 85 e2                                      add lr, r5, #2
006da3d8  7e e0 ff 06                                      uxtheq lr, lr
006da3dc  1a 00 00 0a                                      beq #0x6da44c
006da3e0  01 80 82 e2                                      add r8, r2, #1
006da3e4  02 c0 82 e2                                      add ip, r2, #2
006da3e8  7e e0 ff e6                                      uxth lr, lr
006da3ec  88 80 a0 e1                                      lsl r8, r8, #1
006da3f0  8c c0 a0 e1                                      lsl ip, ip, #1
006da3f4  82 00 a0 e1                                      lsl r0, r2, #1
006da3f8  01 30 a0 e3                                      mov r3, #1
006da3fc  00 10 a0 e3                                      mov r1, #0
006da400  b0 e0 84 e1                                      strh lr, [r4, r0]
006da404  b8 10 84 e1                                      strh r1, [r4, r8]
006da408  bc 30 84 e1                                      strh r3, [r4, ip]
006da40c  01 30 83 e2                                      add r3, r3, #1
006da410  06 00 53 e1                                      cmp r3, r6
006da414  01 10 81 e2                                      add r1, r1, #1
006da418  06 00 80 e2                                      add r0, r0, #6
006da41c  06 80 88 e2                                      add r8, r8, #6
006da420  06 c0 8c e2                                      add ip, ip, #6
006da424  f5 ff ff 1a                                      bne #0x6da400
006da428  83 30 83 e0                                      add r3, r3, r3, lsl #1
006da42c  03 30 43 e2                                      sub r3, r3, #3
006da430  02 20 83 e0                                      add r2, r3, r2
006da434  01 00 82 e2                                      add r0, r2, #1
006da438  01 10 80 e2                                      add r1, r0, #1
006da43c  75 50 ff e6                                      uxth r5, r5
006da440  82 c0 a0 e1                                      lsl ip, r2, #1
006da444  81 10 a0 e1                                      lsl r1, r1, #1
006da448  80 00 a0 e1                                      lsl r0, r0, #1
006da44c  bc e0 84 e1                                      strh lr, [r4, ip]
006da450  00 c0 a0 e3                                      mov ip, #0
006da454  b0 50 84 e1                                      strh r5, [r4, r0]
006da458  b1 c0 84 e1                                      strh ip, [r4, r1]
006da45c  2c 00 a0 e3                                      mov r0, #0x2c
006da460  00 10 a0 e3                                      mov r1, #0
006da464  50 67 f9 eb                                      bl #0x5341ac
006da468  00 50 a0 e1                                      mov r5, r0
006da46c  98 85 ff eb                                      bl #0x6bbad4
006da470  00 00 55 e3                                      cmp r5, #0
006da474  04 30 95 15                                      ldrne r3, [r5, #4]
006da478  48 80 8d e2                                      add r8, sp, #0x48
006da47c  44 60 8d e2                                      add r6, sp, #0x44
006da480  01 30 83 12                                      addne r3, r3, #1
006da484  04 30 85 15                                      strne r3, [r5, #4]
006da488  00 c0 a0 e3                                      mov ip, #0
006da48c  06 30 a0 e1                                      mov r3, r6
006da490  18 10 9d e5                                      ldr r1, [sp, #0x18]
006da494  08 20 a0 e1                                      mov r2, r8
006da498  05 00 a0 e1                                      mov r0, r5
006da49c  44 c0 8d e5                                      str ip, [sp, #0x44]
006da4a0  48 c0 8d e5                                      str ip, [sp, #0x48]
006da4a4  6e 88 ff eb                                      bl #0x6bc664
006da4a8  06 00 a0 e1                                      mov r0, r6
006da4ac  6e 7f fa eb                                      bl #0x57a26c
006da4b0  08 00 a0 e1                                      mov r0, r8
006da4b4  cb d9 f0 eb                                      bl #0x310be8
006da4b8  05 00 a0 e1                                      mov r0, r5
006da4bc  82 87 ff eb                                      bl #0x6bc2cc
006da4c0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006da4c4  00 00 55 e3                                      cmp r5, #0
006da4c8  00 50 83 e5                                      str r5, [r3]
006da4cc  04 00 00 0a                                      beq #0x6da4e4
006da4d0  04 30 95 e5                                      ldr r3, [r5, #4]
006da4d4  05 00 a0 e1                                      mov r0, r5
006da4d8  01 30 83 e2                                      add r3, r3, #1
006da4dc  04 30 85 e5                                      str r3, [r5, #4]
006da4e0  27 0c f1 eb                                      bl #0x31d584
006da4e4  00 00 54 e3                                      cmp r4, #0
006da4e8  08 00 00 0a                                      beq #0x6da510
006da4ec  18 40 97 e5                                      ldr r4, [r7, #0x18]
006da4f0  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006da4f4  1f 20 03 e2                                      and r2, r3, #0x1f
006da4f8  01 00 52 e3                                      cmp r2, #1
006da4fc  46 00 00 9a                                      bls #0x6da61c
006da500  01 20 42 e2                                      sub r2, r2, #1
006da504  1f 30 c3 e3                                      bic r3, r3, #0x1f
006da508  03 30 82 e1                                      orr r3, r2, r3
006da50c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006da510  30 30 9d e5                                      ldr r3, [sp, #0x30]
006da514  00 00 53 e3                                      cmp r3, #0
006da518  0c 00 00 0a                                      beq #0x6da550
006da51c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006da520  00 40 93 e5                                      ldr r4, [r3]
006da524  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006da528  1f 20 03 e2                                      and r2, r3, #0x1f
006da52c  01 00 52 e3                                      cmp r2, #1
006da530  33 00 00 9a                                      bls #0x6da604
006da534  01 20 42 e2                                      sub r2, r2, #1
006da538  1f 30 c3 e3                                      bic r3, r3, #0x1f
006da53c  03 30 82 e1                                      orr r3, r2, r3
006da540  13 30 c4 e5                                      strb r3, [r4, #0x13]
006da544  00 30 a0 e3                                      mov r3, #0
006da548  30 30 8d e5                                      str r3, [sp, #0x30]
006da54c  2c 30 8d e5                                      str r3, [sp, #0x2c]
006da550  38 30 9d e5                                      ldr r3, [sp, #0x38]
006da554  00 00 53 e3                                      cmp r3, #0
006da558  0c 00 00 0a                                      beq #0x6da590
006da55c  34 30 9d e5                                      ldr r3, [sp, #0x34]
006da560  00 40 93 e5                                      ldr r4, [r3]
006da564  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006da568  1f 20 03 e2                                      and r2, r3, #0x1f
006da56c  01 00 52 e3                                      cmp r2, #1
006da570  1d 00 00 9a                                      bls #0x6da5ec
006da574  01 20 42 e2                                      sub r2, r2, #1
006da578  1f 30 c3 e3                                      bic r3, r3, #0x1f
006da57c  03 30 82 e1                                      orr r3, r2, r3
006da580  13 30 c4 e5                                      strb r3, [r4, #0x13]
006da584  00 30 a0 e3                                      mov r3, #0
006da588  38 30 8d e5                                      str r3, [sp, #0x38]
006da58c  34 30 8d e5                                      str r3, [sp, #0x34]
006da590  40 30 9d e5                                      ldr r3, [sp, #0x40]
006da594  00 00 53 e3                                      cmp r3, #0
006da598  0c 00 00 0a                                      beq #0x6da5d0
006da59c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006da5a0  00 40 93 e5                                      ldr r4, [r3]
006da5a4  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006da5a8  1f 20 03 e2                                      and r2, r3, #0x1f
006da5ac  01 00 52 e3                                      cmp r2, #1
006da5b0  1f 00 00 9a                                      bls #0x6da634
006da5b4  01 20 42 e2                                      sub r2, r2, #1
006da5b8  1f 30 c3 e3                                      bic r3, r3, #0x1f
006da5bc  03 30 82 e1                                      orr r3, r2, r3
006da5c0  13 30 c4 e5                                      strb r3, [r4, #0x13]
006da5c4  00 30 a0 e3                                      mov r3, #0
006da5c8  40 30 8d e5                                      str r3, [sp, #0x40]
006da5cc  3c 30 8d e5                                      str r3, [sp, #0x3c]
006da5d0  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006da5d4  00 00 50 e3                                      cmp r0, #0
006da5d8  00 00 00 0a                                      beq #0x6da5e0
006da5dc  e8 0b f1 eb                                      bl #0x31d584
006da5e0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006da5e4  54 d0 8d e2                                      add sp, sp, #0x54
006da5e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006da5ec  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006da5f0  20 00 13 e3                                      tst r3, #0x20
006da5f4  28 00 00 1a                                      bne #0x6da69c
006da5f8  00 30 a0 e3                                      mov r3, #0
006da5fc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006da600  df ff ff ea                                      b #0x6da584
006da604  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006da608  20 00 13 e3                                      tst r3, #0x20
006da60c  2c 00 00 1a                                      bne #0x6da6c4
006da610  00 30 a0 e3                                      mov r3, #0
006da614  13 30 c4 e5                                      strb r3, [r4, #0x13]
006da618  c9 ff ff ea                                      b #0x6da544
006da61c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006da620  20 00 13 e3                                      tst r3, #0x20
006da624  21 00 00 1a                                      bne #0x6da6b0
006da628  00 30 a0 e3                                      mov r3, #0
006da62c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006da630  b6 ff ff ea                                      b #0x6da510
006da634  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006da638  20 00 13 e3                                      tst r3, #0x20
006da63c  11 00 00 1a                                      bne #0x6da688
006da640  00 30 a0 e3                                      mov r3, #0
006da644  13 30 c4 e5                                      strb r3, [r4, #0x13]
006da648  dd ff ff ea                                      b #0x6da5c4
006da64c  76 30 ff e6                                      uxth r3, r6
006da650  0a 10 a0 e3                                      mov r1, #0xa
006da654  08 00 a0 e3                                      mov r0, #8
006da658  06 c0 a0 e3                                      mov ip, #6
006da65c  04 e0 a0 e3                                      mov lr, #4
006da660  02 80 a0 e3                                      mov r8, #2
006da664  05 a0 a0 e1                                      mov sl, r5
006da668  03 20 a0 e3                                      mov r2, #3
006da66c  05 90 a0 e1                                      mov sb, r5
006da670  52 ff ff ea                                      b #0x6da3c0
006da674  03 20 a0 e1                                      mov r2, r3
006da678  01 40 a0 e3                                      mov r4, #1
006da67c  03 00 a0 e1                                      mov r0, r3
006da680  03 60 a0 e1                                      mov r6, r3
006da684  ef fe ff ea                                      b #0x6da248
006da688  00 30 94 e5                                      ldr r3, [r4]
006da68c  04 00 a0 e1                                      mov r0, r4
006da690  0f e0 a0 e1                                      mov lr, pc
006da694  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006da698  e8 ff ff ea                                      b #0x6da640
006da69c  00 30 94 e5                                      ldr r3, [r4]
006da6a0  04 00 a0 e1                                      mov r0, r4
006da6a4  0f e0 a0 e1                                      mov lr, pc
006da6a8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006da6ac  d1 ff ff ea                                      b #0x6da5f8
006da6b0  00 30 94 e5                                      ldr r3, [r4]
006da6b4  04 00 a0 e1                                      mov r0, r4
006da6b8  0f e0 a0 e1                                      mov lr, pc
006da6bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006da6c0  d8 ff ff ea                                      b #0x6da628
006da6c4  00 30 94 e5                                      ldr r3, [r4]
006da6c8  04 00 a0 e1                                      mov r0, r4
006da6cc  0f e0 a0 e1                                      mov lr, pc
006da6d0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006da6d4  cd ff ff ea                                      b #0x6da610

; FUNCTION 0x006da6d8, declared_size=644, range_size=644, mode=arm
; class-group: glitch::scene
; alias: _ZN6glitch5scene15createArrowMeshEjPNS_5video12IVideoDriverEjjffffNS1_6SColorES4_
; demangled: glitch::scene::createArrowMesh(unsigned int, glitch::video::IVideoDriver*, unsigned int, unsigned int, float, float, float, float, glitch::video::SColor, glitch::video::SColor)
; decoder-mode: arm
006da6d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006da6dc  4c d0 4d e2                                      sub sp, sp, #0x4c
006da6e0  78 50 9d e5                                      ldr r5, [sp, #0x78]
006da6e4  00 c0 a0 e3                                      mov ip, #0
006da6e8  04 30 8d e5                                      str r3, [sp, #4]
006da6ec  2c 00 8d e5                                      str r0, [sp, #0x2c]
006da6f0  0c c0 8d e5                                      str ip, [sp, #0xc]
006da6f4  84 40 8d e2                                      add r4, sp, #0x84
006da6f8  00 c0 a0 e3                                      mov ip, #0
006da6fc  44 00 8d e2                                      add r0, sp, #0x44
006da700  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006da704  02 70 a0 e1                                      mov r7, r2
006da708  10 c0 8d e5                                      str ip, [sp, #0x10]
006da70c  00 50 8d e5                                      str r5, [sp]
006da710  08 40 8d e5                                      str r4, [sp, #8]
006da714  01 60 a0 e1                                      mov r6, r1
006da718  4f fb ff eb                                      bl #0x6d945c
006da71c  44 20 9d e5                                      ldr r2, [sp, #0x44]
006da720  00 00 52 e3                                      cmp r2, #0
006da724  28 20 8d e5                                      str r2, [sp, #0x28]
006da728  06 00 00 0a                                      beq #0x6da748
006da72c  04 30 92 e5                                      ldr r3, [r2, #4]
006da730  01 30 83 e2                                      add r3, r3, #1
006da734  04 30 82 e5                                      str r3, [r2, #4]
006da738  44 00 9d e5                                      ldr r0, [sp, #0x44]
006da73c  00 00 50 e3                                      cmp r0, #0
006da740  00 00 00 0a                                      beq #0x6da748
006da744  8e 0b f1 eb                                      bl #0x31d584
006da748  74 00 9d e5                                      ldr r0, [sp, #0x74]
006da74c  05 10 a0 e1                                      mov r1, r5
006da750  15 cf f0 eb                                      bl #0x30e3ac
006da754  70 c0 9d e5                                      ldr ip, [sp, #0x70]
006da758  06 10 a0 e1                                      mov r1, r6
006da75c  07 20 a0 e1                                      mov r2, r7
006da760  04 c0 8d e5                                      str ip, [sp, #4]
006da764  88 c0 8d e2                                      add ip, sp, #0x88
006da768  00 00 8d e5                                      str r0, [sp]
006da76c  80 30 9d e5                                      ldr r3, [sp, #0x80]
006da770  40 00 8d e2                                      add r0, sp, #0x40
006da774  08 c0 8d e5                                      str ip, [sp, #8]
006da778  00 c0 a0 e3                                      mov ip, #0
006da77c  10 c0 8d e5                                      str ip, [sp, #0x10]
006da780  0c 40 8d e5                                      str r4, [sp, #0xc]
006da784  0e fe ff eb                                      bl #0x6d9fc4
006da788  38 30 8d e2                                      add r3, sp, #0x38
006da78c  20 30 8d e5                                      str r3, [sp, #0x20]
006da790  40 30 9d e5                                      ldr r3, [sp, #0x40]
006da794  3c 20 8d e2                                      add r2, sp, #0x3c
006da798  34 c0 8d e2                                      add ip, sp, #0x34
006da79c  1c 20 8d e5                                      str r2, [sp, #0x1c]
006da7a0  24 c0 8d e5                                      str ip, [sp, #0x24]
006da7a4  03 00 a0 e1                                      mov r0, r3
006da7a8  00 30 93 e5                                      ldr r3, [r3]
006da7ac  0f e0 a0 e1                                      mov lr, pc
006da7b0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006da7b4  00 70 a0 e3                                      mov r7, #0
006da7b8  00 00 57 e1                                      cmp r7, r0
006da7bc  30 60 8d e2                                      add r6, sp, #0x30
006da7c0  46 00 00 2a                                      bhs #0x6da8e0
006da7c4  40 30 9d e5                                      ldr r3, [sp, #0x40]
006da7c8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006da7cc  07 20 a0 e1                                      mov r2, r7
006da7d0  03 10 a0 e1                                      mov r1, r3
006da7d4  00 30 93 e5                                      ldr r3, [r3]
006da7d8  0f e0 a0 e1                                      mov lr, pc
006da7dc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006da7e0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006da7e4  03 10 a0 e3                                      mov r1, #3
006da7e8  00 a0 a0 e3                                      mov sl, #0
006da7ec  14 80 93 e5                                      ldr r8, [r3, #0x14]
006da7f0  14 00 98 e5                                      ldr r0, [r8, #0x14]
006da7f4  7d 1c fb eb                                      bl #0x5a19f0
006da7f8  14 b0 88 e2                                      add fp, r8, #0x14
006da7fc  04 40 9b e5                                      ldr r4, [fp, #4]
006da800  04 40 80 e0                                      add r4, r0, r4
006da804  05 00 00 ea                                      b #0x6da820
006da808  be 90 db e1                                      ldrh sb, [fp, #0xe]
006da80c  99 4a 29 e0                                      mla sb, sb, sl, r4
006da810  01 a0 8a e2                                      add sl, sl, #1
006da814  04 00 99 e5                                      ldr r0, [sb, #4]
006da818  e1 d0 f0 eb                                      bl #0x30eba4
006da81c  04 00 89 e5                                      str r0, [sb, #4]
006da820  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006da824  06 00 a0 e1                                      mov r0, r6
006da828  14 30 93 e5                                      ldr r3, [r3, #0x14]
006da82c  00 00 53 e3                                      cmp r3, #0
006da830  30 30 8d e5                                      str r3, [sp, #0x30]
006da834  00 20 93 15                                      ldrne r2, [r3]
006da838  01 20 82 12                                      addne r2, r2, #1
006da83c  00 20 83 15                                      strne r2, [r3]
006da840  30 30 9d 15                                      ldrne r3, [sp, #0x30]
006da844  08 90 93 e5                                      ldr sb, [r3, #8]
006da848  d0 10 f2 eb                                      bl #0x35eb90
006da84c  09 00 5a e1                                      cmp sl, sb
006da850  05 10 a0 e1                                      mov r1, r5
006da854  eb ff ff 3a                                      blo #0x6da808
006da858  00 c0 a0 e3                                      mov ip, #0
006da85c  1c 10 8d e2                                      add r1, sp, #0x1c
006da860  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
006da864  28 00 9d e5                                      ldr r0, [sp, #0x28]
006da868  38 c0 8d e5                                      str ip, [sp, #0x38]
006da86c  34 c0 8d e5                                      str ip, [sp, #0x34]
006da870  7b 87 ff eb                                      bl #0x6bc664
006da874  24 00 9d e5                                      ldr r0, [sp, #0x24]
006da878  7b 7e fa eb                                      bl #0x57a26c
006da87c  20 00 9d e5                                      ldr r0, [sp, #0x20]
006da880  d8 d8 f0 eb                                      bl #0x310be8
006da884  00 00 54 e3                                      cmp r4, #0
006da888  08 00 00 0a                                      beq #0x6da8b0
006da88c  14 40 98 e5                                      ldr r4, [r8, #0x14]
006da890  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006da894  1f 20 03 e2                                      and r2, r3, #0x1f
006da898  01 00 52 e3                                      cmp r2, #1
006da89c  23 00 00 9a                                      bls #0x6da930
006da8a0  01 20 42 e2                                      sub r2, r2, #1
006da8a4  1f 30 c3 e3                                      bic r3, r3, #0x1f
006da8a8  03 30 82 e1                                      orr r3, r2, r3
006da8ac  13 30 c4 e5                                      strb r3, [r4, #0x13]
006da8b0  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006da8b4  00 00 50 e3                                      cmp r0, #0
006da8b8  00 00 00 0a                                      beq #0x6da8c0
006da8bc  30 0b f1 eb                                      bl #0x31d584
006da8c0  40 30 9d e5                                      ldr r3, [sp, #0x40]
006da8c4  01 70 87 e2                                      add r7, r7, #1
006da8c8  03 00 a0 e1                                      mov r0, r3
006da8cc  00 30 93 e5                                      ldr r3, [r3]
006da8d0  0f e0 a0 e1                                      mov lr, pc
006da8d4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006da8d8  00 00 57 e1                                      cmp r7, r0
006da8dc  b8 ff ff 3a                                      blo #0x6da7c4
006da8e0  28 30 9d e5                                      ldr r3, [sp, #0x28]
006da8e4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006da8e8  00 00 53 e3                                      cmp r3, #0
006da8ec  00 30 8c e5                                      str r3, [ip]
006da8f0  28 20 9d 15                                      ldrne r2, [sp, #0x28]
006da8f4  04 30 92 15                                      ldrne r3, [r2, #4]
006da8f8  01 30 83 12                                      addne r3, r3, #1
006da8fc  04 30 82 15                                      strne r3, [r2, #4]
006da900  40 00 9d e5                                      ldr r0, [sp, #0x40]
006da904  00 00 50 e3                                      cmp r0, #0
006da908  00 00 00 0a                                      beq #0x6da910
006da90c  1c 0b f1 eb                                      bl #0x31d584
006da910  28 30 9d e5                                      ldr r3, [sp, #0x28]
006da914  00 00 53 e3                                      cmp r3, #0
006da918  01 00 00 0a                                      beq #0x6da924
006da91c  03 00 a0 e1                                      mov r0, r3
006da920  17 0b f1 eb                                      bl #0x31d584
006da924  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006da928  4c d0 8d e2                                      add sp, sp, #0x4c
006da92c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006da930  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006da934  20 00 13 e3                                      tst r3, #0x20
006da938  02 00 00 1a                                      bne #0x6da948
006da93c  00 20 a0 e3                                      mov r2, #0
006da940  13 20 c4 e5                                      strb r2, [r4, #0x13]
006da944  d9 ff ff ea                                      b #0x6da8b0
006da948  00 30 94 e5                                      ldr r3, [r4]
006da94c  04 00 a0 e1                                      mov r0, r4
006da950  0f e0 a0 e1                                      mov lr, pc
006da954  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006da958  f7 ff ff ea                                      b #0x6da93c
