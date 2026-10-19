; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00703638, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<glitch::scene::CMeshConnectivity::SEdge, glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene17CMeshConnectivity5SEdgeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::scene::CMeshConnectivity::SEdge, glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
00703638  70 40 2d e9                                      push {r4, r5, r6, lr}
0070363c  00 40 a0 e1                                      mov r4, r0
00703640  00 20 90 e5                                      ldr r2, [r0]
00703644  08 00 90 e5                                      ldr r0, [r0, #8]
00703648  08 d0 4d e2                                      sub sp, sp, #8
0070364c  04 10 8d e5                                      str r1, [sp, #4]
00703650  00 00 62 e0                                      rsb r0, r2, r0
00703654  40 02 51 e1                                      cmp r1, r0, asr #4
00703658  18 00 00 9a                                      bls #0x7036c0
0070365c  1f 02 71 e3                                      cmn r1, #0xf0000001
00703660  18 00 00 8a                                      bhi #0x7036c8
00703664  04 30 94 e5                                      ldr r3, [r4, #4]
00703668  00 00 52 e3                                      cmp r2, #0
0070366c  03 50 62 e0                                      rsb r5, r2, r3
00703670  45 52 a0 e1                                      asr r5, r5, #4
00703674  18 00 00 0a                                      beq #0x7036dc
00703678  04 00 a0 e1                                      mov r0, r4
0070367c  04 10 8d e2                                      add r1, sp, #4
00703680  d5 ff ff eb                                      bl #0x7035dc
00703684  00 30 94 e5                                      ldr r3, [r4]
00703688  00 60 a0 e1                                      mov r6, r0
0070368c  04 00 94 e5                                      ldr r0, [r4, #4]
00703690  03 00 50 e1                                      cmp r0, r3
00703694  10 20 40 12                                      subne r2, r0, #0x10
00703698  02 30 63 10                                      rsbne r3, r3, r2
0070369c  23 32 e0 11                                      mvnne r3, r3, lsr #4
007036a0  03 02 80 10                                      addne r0, r0, r3, lsl #4
007036a4  69 33 f0 eb                                      bl #0x310450
007036a8  04 30 9d e5                                      ldr r3, [sp, #4]
007036ac  05 52 86 e0                                      add r5, r6, r5, lsl #4
007036b0  04 50 84 e5                                      str r5, [r4, #4]
007036b4  03 32 86 e0                                      add r3, r6, r3, lsl #4
007036b8  08 30 84 e5                                      str r3, [r4, #8]
007036bc  00 60 84 e5                                      str r6, [r4]
007036c0  08 d0 8d e2                                      add sp, sp, #8
007036c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007036c8  24 00 9f e5                                      ldr r0, [pc, #0x24]
007036cc  00 00 8f e0                                      add r0, pc, r0
007036d0  da 15 00 eb                                      bl #0x708e40
007036d4  00 20 94 e5                                      ldr r2, [r4]
007036d8  e1 ff ff ea                                      b #0x703664
007036dc  04 00 9d e5                                      ldr r0, [sp, #4]
007036e0  02 10 a0 e1                                      mov r1, r2
007036e4  00 02 a0 e1                                      lsl r0, r0, #4
007036e8  9e 33 f0 eb                                      bl #0x310568
007036ec  00 60 a0 e1                                      mov r6, r0
007036f0  ec ff ff ea                                      b #0x7036a8
; mapping-symbol data/literal pool
007036f4  9c ad 1b 00                                      .byte 0x9c, 0xad, 0x1b, 0x00

; FUNCTION 0x007036f8, declared_size=220, range_size=220, mode=arm
; class-group: std::vector<glitch::scene::CMeshConnectivity::SEdge, glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene17CMeshConnectivity5SEdgeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.1
; demangled: std::vector<glitch::scene::CMeshConnectivity::SEdge, glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::scene::CMeshConnectivity::SEdge*, glitch::scene::CMeshConnectivity::SEdge const&, std::__false_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
007036f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007036fc  00 50 a0 e1                                      mov r5, r0
00703700  00 30 95 e5                                      ldr r3, [r5]
00703704  04 00 90 e5                                      ldr r0, [r0, #4]
00703708  01 80 a0 e1                                      mov r8, r1
0070370c  02 90 a0 e1                                      mov sb, r2
00703710  00 30 63 e0                                      rsb r3, r3, r0
00703714  43 32 a0 e1                                      asr r3, r3, #4
00703718  01 00 53 e3                                      cmp r3, #1
0070371c  03 a0 83 20                                      addhs sl, r3, r3
00703720  01 a0 83 32                                      addlo sl, r3, #1
00703724  1f 02 7a e3                                      cmn sl, #0xf0000001
00703728  27 00 00 8a                                      bhi #0x7037cc
0070372c  0a 00 53 e1                                      cmp r3, sl
00703730  0a a2 a0 91                                      lslls sl, sl, #4
00703734  24 00 00 8a                                      bhi #0x7037cc
00703738  0a 00 a0 e1                                      mov r0, sl
0070373c  00 10 a0 e3                                      mov r1, #0
00703740  88 33 f0 eb                                      bl #0x310568
00703744  00 70 95 e5                                      ldr r7, [r5]
00703748  00 40 a0 e1                                      mov r4, r0
0070374c  08 80 67 e0                                      rsb r8, r7, r8
00703750  48 82 a0 e1                                      asr r8, r8, #4
00703754  00 00 58 e3                                      cmp r8, #0
00703758  00 80 a0 d1                                      movle r8, r0
0070375c  0a 00 00 da                                      ble #0x70378c
00703760  08 60 a0 e1                                      mov r6, r8
00703764  00 e0 a0 e3                                      mov lr, #0
00703768  0e c0 84 e0                                      add ip, r4, lr
0070376c  0e 30 87 e0                                      add r3, r7, lr
00703770  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00703774  07 00 ac e8                                      stm ip!, {r0, r1, r2}
00703778  01 60 56 e2                                      subs r6, r6, #1
0070377c  b0 30 cc e1                                      strh r3, [ip]
00703780  10 e0 8e e2                                      add lr, lr, #0x10
00703784  f7 ff ff 1a                                      bne #0x703768
00703788  08 82 84 e0                                      add r8, r4, r8, lsl #4
0070378c  08 c0 a0 e1                                      mov ip, r8
00703790  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
00703794  07 00 ac e8                                      stm ip!, {r0, r1, r2}
00703798  b0 30 cc e1                                      strh r3, [ip]
0070379c  04 00 95 e5                                      ldr r0, [r5, #4]
007037a0  00 20 95 e5                                      ldr r2, [r5]
007037a4  10 80 88 e2                                      add r8, r8, #0x10
007037a8  0a a0 84 e0                                      add sl, r4, sl
007037ac  02 00 50 e1                                      cmp r0, r2
007037b0  10 30 40 12                                      subne r3, r0, #0x10
007037b4  03 30 62 10                                      rsbne r3, r2, r3
007037b8  23 32 e0 11                                      mvnne r3, r3, lsr #4
007037bc  03 02 80 10                                      addne r0, r0, r3, lsl #4
007037c0  22 33 f0 eb                                      bl #0x310450
007037c4  10 05 85 e8                                      stm r5, {r4, r8, sl}
007037c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007037cc  0f a0 e0 e3                                      mvn sl, #0xf
007037d0  d8 ff ff ea                                      b #0x703738
