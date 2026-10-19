; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006beb2c, declared_size=224, range_size=224, mode=arm
; class-group: glitch::scene::CMeshCache::MeshEntry const* std::priv
; alias: _ZNSt4priv13__lower_boundIPKN6glitch5scene10CMeshCache9MeshEntryES4_NS_8__less_2IS4_S4_EES8_iEET_S9_S9_RKT0_T1_T2_PT3_
; demangled: glitch::scene::CMeshCache::MeshEntry const* std::priv::__lower_bound<glitch::scene::CMeshCache::MeshEntry const*, glitch::scene::CMeshCache::MeshEntry, std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry, glitch::scene::CMeshCache::MeshEntry>, std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry, glitch::scene::CMeshCache::MeshEntry>, int>(glitch::scene::CMeshCache::MeshEntry const*, glitch::scene::CMeshCache::MeshEntry const*, glitch::scene::CMeshCache::MeshEntry const&, std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry, glitch::scene::CMeshCache::MeshEntry>, std::priv::__less_2<glitch::scene::CMeshCache::MeshEntry, glitch::scene::CMeshCache::MeshEntry>, int*)
; decoder-mode: arm
006beb2c  01 30 60 e0                                      rsb r3, r0, r1
006beb30  43 31 a0 e1                                      asr r3, r3, #2
006beb34  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
006beb38  02 b0 a0 e1                                      mov fp, r2
006beb3c  83 21 83 e0                                      add r2, r3, r3, lsl #3
006beb40  1c 90 a0 e3                                      mov sb, #0x1c
006beb44  02 23 82 e0                                      add r2, r2, r2, lsl #6
006beb48  82 21 83 e0                                      add r2, r3, r2, lsl #3
006beb4c  82 27 82 e0                                      add r2, r2, r2, lsl #15
006beb50  82 31 83 e0                                      add r3, r3, r2, lsl #3
006beb54  00 a0 63 e2                                      rsb sl, r3, #0
006beb58  00 00 5a e3                                      cmp sl, #0
006beb5c  28 00 00 da                                      ble #0x6bec04
006beb60  14 70 9b e5                                      ldr r7, [fp, #0x14]
006beb64  10 40 9b e5                                      ldr r4, [fp, #0x10]
006beb68  04 40 67 e0                                      rsb r4, r7, r4
006beb6c  06 00 00 ea                                      b #0x6beb8c
006beb70  04 00 52 e1                                      cmp r2, r4
006beb74  00 10 a0 23                                      movhs r1, #0
006beb78  01 10 a0 33                                      movlo r1, #1
006beb7c  00 00 51 e3                                      cmp r1, #0
006beb80  1a 00 00 1a                                      bne #0x6bebf0
006beb84  00 a0 56 e2                                      subs sl, r6, #0
006beb88  1d 00 00 0a                                      beq #0x6bec04
006beb8c  ca 60 a0 e1                                      asr r6, sl, #1
006beb90  99 06 28 e0                                      mla r8, sb, r6, r0
006beb94  14 50 98 e5                                      ldr r5, [r8, #0x14]
006beb98  10 20 98 e5                                      ldr r2, [r8, #0x10]
006beb9c  05 20 52 e0                                      subs r2, r2, r5
006beba0  f2 ff ff 0a                                      beq #0x6beb70
006beba4  00 00 54 e3                                      cmp r4, #0
006beba8  f0 ff ff 0a                                      beq #0x6beb70
006bebac  d0 30 d7 e1                                      ldrsb r3, [r7]
006bebb0  d0 10 d5 e1                                      ldrsb r1, [r5]
006bebb4  03 10 51 e0                                      subs r1, r1, r3
006bebb8  01 30 a0 01                                      moveq r3, r1
006bebbc  08 00 00 1a                                      bne #0x6bebe4
006bebc0  01 30 83 e2                                      add r3, r3, #1
006bebc4  02 00 53 e1                                      cmp r3, r2
006bebc8  e8 ff ff 0a                                      beq #0x6beb70
006bebcc  04 00 53 e1                                      cmp r3, r4
006bebd0  e6 ff ff 0a                                      beq #0x6beb70
006bebd4  d3 c0 95 e1                                      ldrsb ip, [r5, r3]
006bebd8  d3 10 97 e1                                      ldrsb r1, [r7, r3]
006bebdc  01 10 5c e0                                      subs r1, ip, r1
006bebe0  f6 ff ff 0a                                      beq #0x6bebc0
006bebe4  a1 1f a0 e1                                      lsr r1, r1, #0x1f
006bebe8  00 00 51 e3                                      cmp r1, #0
006bebec  e4 ff ff 0a                                      beq #0x6beb84
006bebf0  01 a0 4a e2                                      sub sl, sl, #1
006bebf4  0a a0 66 e0                                      rsb sl, r6, sl
006bebf8  00 00 5a e3                                      cmp sl, #0
006bebfc  1c 00 88 e2                                      add r0, r8, #0x1c
006bec00  d6 ff ff ca                                      bgt #0x6beb60
006bec04  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
006bec08  1e ff 2f e1                                      bx lr
