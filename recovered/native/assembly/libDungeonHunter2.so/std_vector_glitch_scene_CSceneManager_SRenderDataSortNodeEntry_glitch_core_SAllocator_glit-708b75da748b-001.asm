; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035150c, declared_size=448, range_size=448, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager24SRenderDataSortNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::scene::CSceneManager::SRenderDataSortNodeEntry*, unsigned int, glitch::scene::CSceneManager::SRenderDataSortNodeEntry const&, std::__false_type const&)
; decoder-mode: arm
0035150c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00351510  00 40 90 e5                                      ldr r4, [r0]
00351514  1c d0 4d e2                                      sub sp, sp, #0x1c
00351518  00 c0 a0 e1                                      mov ip, r0
0035151c  04 00 53 e1                                      cmp r3, r4
00351520  01 50 a0 e1                                      mov r5, r1
00351524  02 40 a0 e1                                      mov r4, r2
00351528  04 60 90 35                                      ldrlo r6, [r0, #4]
0035152c  0c 00 00 3a                                      blo #0x351564
00351530  04 60 90 e5                                      ldr r6, [r0, #4]
00351534  06 00 53 e1                                      cmp r3, r6
00351538  09 00 00 2a                                      bhs #0x351564
0035153c  04 c0 93 e5                                      ldr ip, [r3, #4]
00351540  00 e0 93 e5                                      ldr lr, [r3]
00351544  0c 30 8d e2                                      add r3, sp, #0xc
00351548  10 c0 8d e5                                      str ip, [sp, #0x10]
0035154c  14 c0 8d e2                                      add ip, sp, #0x14
00351550  0c e0 8d e5                                      str lr, [sp, #0xc]
00351554  00 c0 8d e5                                      str ip, [sp]
00351558  eb ff ff eb                                      bl #0x35150c
0035155c  1c d0 8d e2                                      add sp, sp, #0x1c
00351560  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00351564  06 20 65 e0                                      rsb r2, r5, r6
00351568  c2 21 a0 e1                                      asr r2, r2, #3
0035156c  02 00 54 e1                                      cmp r4, r2
00351570  02 70 a0 e1                                      mov r7, r2
00351574  2b 00 00 2a                                      bhs #0x351628
00351578  84 41 a0 e1                                      lsl r4, r4, #3
0035157c  06 20 64 e0                                      rsb r2, r4, r6
00351580  c4 71 a0 e1                                      asr r7, r4, #3
00351584  00 00 57 e3                                      cmp r7, #0
00351588  06 00 a0 d1                                      movle r0, r6
0035158c  0a 00 00 da                                      ble #0x3515bc
00351590  00 80 a0 e3                                      mov r8, #0
00351594  02 00 a0 e1                                      mov r0, r2
00351598  08 a0 b0 e7                                      ldr sl, [r0, r8]!
0035159c  06 10 a0 e1                                      mov r1, r6
003515a0  01 70 57 e2                                      subs r7, r7, #1
003515a4  08 a0 a1 e7                                      str sl, [r1, r8]!
003515a8  04 00 90 e5                                      ldr r0, [r0, #4]
003515ac  08 80 88 e2                                      add r8, r8, #8
003515b0  04 00 81 e5                                      str r0, [r1, #4]
003515b4  f6 ff ff 1a                                      bne #0x351594
003515b8  04 00 9c e5                                      ldr r0, [ip, #4]
003515bc  02 10 65 e0                                      rsb r1, r5, r2
003515c0  c1 11 a0 e1                                      asr r1, r1, #3
003515c4  04 00 80 e0                                      add r0, r0, r4
003515c8  00 00 51 e3                                      cmp r1, #0
003515cc  04 00 8c e5                                      str r0, [ip, #4]
003515d0  07 00 00 da                                      ble #0x3515f4
003515d4  08 00 12 e5                                      ldr r0, [r2, #-8]
003515d8  01 10 51 e2                                      subs r1, r1, #1
003515dc  08 00 06 e5                                      str r0, [r6, #-8]
003515e0  04 00 12 e5                                      ldr r0, [r2, #-4]
003515e4  08 20 42 e2                                      sub r2, r2, #8
003515e8  04 00 06 e5                                      str r0, [r6, #-4]
003515ec  08 60 46 e2                                      sub r6, r6, #8
003515f0  f7 ff ff 1a                                      bne #0x3515d4
003515f4  c4 41 a0 e1                                      asr r4, r4, #3
003515f8  00 00 54 e3                                      cmp r4, #0
003515fc  d6 ff ff da                                      ble #0x35155c
00351600  00 20 a0 e3                                      mov r2, #0
00351604  00 00 93 e5                                      ldr r0, [r3]
00351608  82 11 85 e0                                      add r1, r5, r2, lsl #3
0035160c  82 01 85 e7                                      str r0, [r5, r2, lsl #3]
00351610  04 00 93 e5                                      ldr r0, [r3, #4]
00351614  01 20 82 e2                                      add r2, r2, #1
00351618  04 00 52 e1                                      cmp r2, r4
0035161c  04 00 81 e5                                      str r0, [r1, #4]
00351620  f7 ff ff 1a                                      bne #0x351604
00351624  cc ff ff ea                                      b #0x35155c
00351628  04 40 62 e0                                      rsb r4, r2, r4
0035162c  54 a0 bc e7                                      sbfx sl, r4, #0, #0x1d
00351630  00 00 5a e3                                      cmp sl, #0
00351634  84 41 86 e0                                      add r4, r6, r4, lsl #3
00351638  08 00 00 da                                      ble #0x351660
0035163c  00 10 a0 e3                                      mov r1, #0
00351640  00 80 93 e5                                      ldr r8, [r3]
00351644  81 01 86 e0                                      add r0, r6, r1, lsl #3
00351648  81 81 86 e7                                      str r8, [r6, r1, lsl #3]
0035164c  04 80 93 e5                                      ldr r8, [r3, #4]
00351650  01 10 81 e2                                      add r1, r1, #1
00351654  0a 00 51 e1                                      cmp r1, sl
00351658  04 80 80 e5                                      str r8, [r0, #4]
0035165c  f7 ff ff 1a                                      bne #0x351640
00351660  00 00 52 e3                                      cmp r2, #0
00351664  82 21 84 d0                                      addle r2, r4, r2, lsl #3
00351668  04 40 8c e5                                      str r4, [ip, #4]
0035166c  04 20 8c d5                                      strle r2, [ip, #4]
00351670  b9 ff ff da                                      ble #0x35155c
00351674  00 60 a0 e3                                      mov r6, #0
00351678  05 00 a0 e1                                      mov r0, r5
0035167c  06 80 b0 e7                                      ldr r8, [r0, r6]!
00351680  04 10 a0 e1                                      mov r1, r4
00351684  01 20 52 e2                                      subs r2, r2, #1
00351688  06 80 a1 e7                                      str r8, [r1, r6]!
0035168c  04 00 90 e5                                      ldr r0, [r0, #4]
00351690  08 60 86 e2                                      add r6, r6, #8
00351694  04 00 81 e5                                      str r0, [r1, #4]
00351698  f6 ff ff 1a                                      bne #0x351678
0035169c  04 10 9c e5                                      ldr r1, [ip, #4]
003516a0  87 11 81 e0                                      add r1, r1, r7, lsl #3
003516a4  04 10 8c e5                                      str r1, [ip, #4]
003516a8  00 00 93 e5                                      ldr r0, [r3]
003516ac  82 11 85 e0                                      add r1, r5, r2, lsl #3
003516b0  82 01 85 e7                                      str r0, [r5, r2, lsl #3]
003516b4  04 00 93 e5                                      ldr r0, [r3, #4]
003516b8  01 20 82 e2                                      add r2, r2, #1
003516bc  02 00 57 e1                                      cmp r7, r2
003516c0  04 00 81 e5                                      str r0, [r1, #4]
003516c4  f7 ff ff 1a                                      bne #0x3516a8
003516c8  a3 ff ff ea                                      b #0x35155c

; FUNCTION 0x003517e0, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager24SRenderDataSortNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
003517e0  70 40 2d e9                                      push {r4, r5, r6, lr}
003517e4  14 00 90 e8                                      ldm r0, {r2, r4}
003517e8  ff 3f 0f e3                                      movw r3, #0xffff
003517ec  ff 3f 41 e3                                      movt r3, #0x1fff
003517f0  04 40 62 e0                                      rsb r4, r2, r4
003517f4  c4 41 a0 e1                                      asr r4, r4, #3
003517f8  03 30 64 e0                                      rsb r3, r4, r3
003517fc  01 00 53 e1                                      cmp r3, r1
00351800  01 50 a0 e1                                      mov r5, r1
00351804  08 00 00 3a                                      blo #0x35182c
00351808  05 00 54 e1                                      cmp r4, r5
0035180c  04 00 84 20                                      addhs r0, r4, r4
00351810  05 00 84 30                                      addlo r0, r4, r5
00351814  1e 02 70 e3                                      cmn r0, #0xe0000001
00351818  01 00 00 8a                                      bhi #0x351824
0035181c  04 00 50 e1                                      cmp r0, r4
00351820  00 00 00 2a                                      bhs #0x351828
00351824  0e 02 e0 e3                                      mvn r0, #0xe0000000
00351828  70 80 bd e8                                      pop {r4, r5, r6, pc}
0035182c  08 00 9f e5                                      ldr r0, [pc, #8]
00351830  00 00 8f e0                                      add r0, pc, r0
00351834  81 dd 0e eb                                      bl #0x708e40
00351838  f2 ff ff ea                                      b #0x351808
; mapping-symbol data/literal pool
0035183c  38 cc 56 00                                      .byte 0x38, 0xcc, 0x56, 0x00

; FUNCTION 0x00351c9c, declared_size=332, range_size=332, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager24SRenderDataSortNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb
; demangled: std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::scene::CSceneManager::SRenderDataSortNodeEntry*, glitch::scene::CSceneManager::SRenderDataSortNodeEntry const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
00351c9c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00351ca0  28 50 9d e5                                      ldr r5, [sp, #0x28]
00351ca4  01 40 a0 e1                                      mov r4, r1
00351ca8  02 60 a0 e1                                      mov r6, r2
00351cac  05 10 a0 e1                                      mov r1, r5
00351cb0  00 70 a0 e1                                      mov r7, r0
00351cb4  2c a0 dd e5                                      ldrb sl, [sp, #0x2c]
00351cb8  c8 fe ff eb                                      bl #0x3517e0
00351cbc  80 81 a0 e1                                      lsl r8, r0, #3
00351cc0  08 00 a0 e1                                      mov r0, r8
00351cc4  00 10 a0 e3                                      mov r1, #0
00351cc8  26 fa fe eb                                      bl #0x310568
00351ccc  00 c0 97 e5                                      ldr ip, [r7]
00351cd0  00 90 a0 e1                                      mov sb, r0
00351cd4  04 e0 6c e0                                      rsb lr, ip, r4
00351cd8  ce e1 a0 e1                                      asr lr, lr, #3
00351cdc  00 00 5e e3                                      cmp lr, #0
00351ce0  00 e0 a0 d1                                      movle lr, r0
00351ce4  0b 00 00 da                                      ble #0x351d18
00351ce8  0e 10 a0 e1                                      mov r1, lr
00351cec  00 00 a0 e3                                      mov r0, #0
00351cf0  0c 20 a0 e1                                      mov r2, ip
00351cf4  00 b0 b2 e7                                      ldr fp, [r2, r0]!
00351cf8  09 30 a0 e1                                      mov r3, sb
00351cfc  01 10 51 e2                                      subs r1, r1, #1
00351d00  00 b0 a3 e7                                      str fp, [r3, r0]!
00351d04  04 20 92 e5                                      ldr r2, [r2, #4]
00351d08  08 00 80 e2                                      add r0, r0, #8
00351d0c  04 20 83 e5                                      str r2, [r3, #4]
00351d10  f6 ff ff 1a                                      bne #0x351cf0
00351d14  8e e1 89 e0                                      add lr, sb, lr, lsl #3
00351d18  01 00 55 e3                                      cmp r5, #1
00351d1c  2b 00 00 0a                                      beq #0x351dd0
00351d20  55 00 bc e7                                      sbfx r0, r5, #0, #0x1d
00351d24  00 00 50 e3                                      cmp r0, #0
00351d28  85 51 8e e0                                      add r5, lr, r5, lsl #3
00351d2c  08 00 00 da                                      ble #0x351d54
00351d30  00 30 a0 e3                                      mov r3, #0
00351d34  00 10 96 e5                                      ldr r1, [r6]
00351d38  83 21 8e e0                                      add r2, lr, r3, lsl #3
00351d3c  83 11 8e e7                                      str r1, [lr, r3, lsl #3]
00351d40  04 10 96 e5                                      ldr r1, [r6, #4]
00351d44  01 30 83 e2                                      add r3, r3, #1
00351d48  00 00 53 e1                                      cmp r3, r0
00351d4c  04 10 82 e5                                      str r1, [r2, #4]
00351d50  f7 ff ff 1a                                      bne #0x351d34
00351d54  00 00 5a e3                                      cmp sl, #0
00351d58  04 00 97 15                                      ldrne r0, [r7, #4]
00351d5c  10 00 00 1a                                      bne #0x351da4
00351d60  04 00 97 e5                                      ldr r0, [r7, #4]
00351d64  00 c0 64 e0                                      rsb ip, r4, r0
00351d68  cc c1 a0 e1                                      asr ip, ip, #3
00351d6c  00 00 5c e3                                      cmp ip, #0
00351d70  0b 00 00 da                                      ble #0x351da4
00351d74  0c 10 a0 e1                                      mov r1, ip
00351d78  04 20 a0 e1                                      mov r2, r4
00351d7c  0a 00 b2 e7                                      ldr r0, [r2, sl]!
00351d80  05 30 a0 e1                                      mov r3, r5
00351d84  01 10 51 e2                                      subs r1, r1, #1
00351d88  0a 00 a3 e7                                      str r0, [r3, sl]!
00351d8c  04 20 92 e5                                      ldr r2, [r2, #4]
00351d90  08 a0 8a e2                                      add sl, sl, #8
00351d94  04 20 83 e5                                      str r2, [r3, #4]
00351d98  f6 ff ff 1a                                      bne #0x351d78
00351d9c  04 00 97 e5                                      ldr r0, [r7, #4]
00351da0  8c 51 85 e0                                      add r5, r5, ip, lsl #3
00351da4  00 30 97 e5                                      ldr r3, [r7]
00351da8  08 80 89 e0                                      add r8, sb, r8
00351dac  00 00 53 e1                                      cmp r3, r0
00351db0  08 20 40 12                                      subne r2, r0, #8
00351db4  02 30 63 10                                      rsbne r3, r3, r2
00351db8  a3 31 e0 11                                      mvnne r3, r3, lsr #3
00351dbc  83 01 80 10                                      addne r0, r0, r3, lsl #3
00351dc0  a2 f9 fe eb                                      bl #0x310450
00351dc4  20 01 87 e9                                      stmib r7, {r5, r8}
00351dc8  00 90 87 e5                                      str sb, [r7]
00351dcc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00351dd0  00 30 96 e5                                      ldr r3, [r6]
00351dd4  08 50 8e e2                                      add r5, lr, #8
00351dd8  00 30 8e e5                                      str r3, [lr]
00351ddc  04 30 96 e5                                      ldr r3, [r6, #4]
00351de0  04 30 8e e5                                      str r3, [lr, #4]
00351de4  da ff ff ea                                      b #0x351d54

; FUNCTION 0x00351de8, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager24SRenderDataSortNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::scene::CSceneManager::SRenderDataSortNodeEntry*, unsigned int, glitch::scene::CSceneManager::SRenderDataSortNodeEntry const&)
; decoder-mode: arm
00351de8  30 40 2d e9                                      push {r4, r5, lr}
00351dec  00 40 52 e2                                      subs r4, r2, #0
00351df0  14 d0 4d e2                                      sub sp, sp, #0x14
00351df4  03 50 a0 e1                                      mov r5, r3
00351df8  09 00 00 0a                                      beq #0x351e24
00351dfc  04 e0 90 e5                                      ldr lr, [r0, #4]
00351e00  08 c0 90 e5                                      ldr ip, [r0, #8]
00351e04  0c c0 6e e0                                      rsb ip, lr, ip
00351e08  cc 01 54 e1                                      cmp r4, ip, asr #3
00351e0c  06 00 00 9a                                      bls #0x351e2c
00351e10  03 20 a0 e1                                      mov r2, r3
00351e14  00 c0 a0 e3                                      mov ip, #0
00351e18  08 30 8d e2                                      add r3, sp, #8
00351e1c  10 10 8d e8                                      stm sp, {r4, ip}
00351e20  9d ff ff eb                                      bl #0x351c9c
00351e24  14 d0 8d e2                                      add sp, sp, #0x14
00351e28  30 80 bd e8                                      pop {r4, r5, pc}
00351e2c  0c c0 8d e2                                      add ip, sp, #0xc
00351e30  00 c0 8d e5                                      str ip, [sp]
00351e34  b4 fd ff eb                                      bl #0x35150c
00351e38  f9 ff ff ea                                      b #0x351e24

; FUNCTION 0x0035359c, declared_size=52, range_size=52, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager24SRenderDataSortNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_.clone.13
; demangled: std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::scene::CSceneManager::SRenderDataSortNodeEntry const&) [clone .clone.13]
; decoder-mode: arm
0035359c  30 00 2d e9                                      push {r4, r5}
003535a0  30 00 90 e8                                      ldm r0, {r4, r5}
003535a4  01 30 a0 e1                                      mov r3, r1
003535a8  05 20 64 e0                                      rsb r2, r4, r5
003535ac  c2 21 b0 e1                                      asrs r2, r2, #3
003535b0  03 00 00 0a                                      beq #0x3535c4
003535b4  04 00 55 e1                                      cmp r5, r4
003535b8  04 40 80 15                                      strne r4, [r0, #4]
003535bc  30 00 bd e8                                      pop {r4, r5}
003535c0  1e ff 2f e1                                      bx lr
003535c4  05 10 a0 e1                                      mov r1, r5
003535c8  30 00 bd e8                                      pop {r4, r5}
003535cc  05 fa ff ea                                      b #0x351de8
