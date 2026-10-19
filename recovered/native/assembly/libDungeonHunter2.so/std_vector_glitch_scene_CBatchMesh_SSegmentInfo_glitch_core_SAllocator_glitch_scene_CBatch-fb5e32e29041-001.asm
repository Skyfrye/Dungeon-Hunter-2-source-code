; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00579520, declared_size=448, range_size=448, mode=arm
; class-group: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh12SSegmentInfoENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::scene::CBatchMesh::SSegmentInfo*, unsigned int, glitch::scene::CBatchMesh::SSegmentInfo const&, std::__false_type const&)
; decoder-mode: arm
00579520  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00579524  00 40 90 e5                                      ldr r4, [r0]
00579528  1c d0 4d e2                                      sub sp, sp, #0x1c
0057952c  00 c0 a0 e1                                      mov ip, r0
00579530  04 00 53 e1                                      cmp r3, r4
00579534  01 50 a0 e1                                      mov r5, r1
00579538  02 40 a0 e1                                      mov r4, r2
0057953c  04 60 90 35                                      ldrlo r6, [r0, #4]
00579540  0c 00 00 3a                                      blo #0x579578
00579544  04 60 90 e5                                      ldr r6, [r0, #4]
00579548  06 00 53 e1                                      cmp r3, r6
0057954c  09 00 00 2a                                      bhs #0x579578
00579550  04 c0 93 e5                                      ldr ip, [r3, #4]
00579554  00 e0 93 e5                                      ldr lr, [r3]
00579558  0c 30 8d e2                                      add r3, sp, #0xc
0057955c  10 c0 8d e5                                      str ip, [sp, #0x10]
00579560  14 c0 8d e2                                      add ip, sp, #0x14
00579564  0c e0 8d e5                                      str lr, [sp, #0xc]
00579568  00 c0 8d e5                                      str ip, [sp]
0057956c  eb ff ff eb                                      bl #0x579520
00579570  1c d0 8d e2                                      add sp, sp, #0x1c
00579574  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00579578  06 20 65 e0                                      rsb r2, r5, r6
0057957c  c2 21 a0 e1                                      asr r2, r2, #3
00579580  02 00 54 e1                                      cmp r4, r2
00579584  02 70 a0 e1                                      mov r7, r2
00579588  2b 00 00 2a                                      bhs #0x57963c
0057958c  84 41 a0 e1                                      lsl r4, r4, #3
00579590  06 20 64 e0                                      rsb r2, r4, r6
00579594  c4 71 a0 e1                                      asr r7, r4, #3
00579598  00 00 57 e3                                      cmp r7, #0
0057959c  06 00 a0 d1                                      movle r0, r6
005795a0  0a 00 00 da                                      ble #0x5795d0
005795a4  00 80 a0 e3                                      mov r8, #0
005795a8  02 00 a0 e1                                      mov r0, r2
005795ac  08 a0 b0 e7                                      ldr sl, [r0, r8]!
005795b0  06 10 a0 e1                                      mov r1, r6
005795b4  01 70 57 e2                                      subs r7, r7, #1
005795b8  08 a0 a1 e7                                      str sl, [r1, r8]!
005795bc  04 00 90 e5                                      ldr r0, [r0, #4]
005795c0  08 80 88 e2                                      add r8, r8, #8
005795c4  04 00 81 e5                                      str r0, [r1, #4]
005795c8  f6 ff ff 1a                                      bne #0x5795a8
005795cc  04 00 9c e5                                      ldr r0, [ip, #4]
005795d0  02 10 65 e0                                      rsb r1, r5, r2
005795d4  c1 11 a0 e1                                      asr r1, r1, #3
005795d8  04 00 80 e0                                      add r0, r0, r4
005795dc  00 00 51 e3                                      cmp r1, #0
005795e0  04 00 8c e5                                      str r0, [ip, #4]
005795e4  07 00 00 da                                      ble #0x579608
005795e8  08 00 12 e5                                      ldr r0, [r2, #-8]
005795ec  01 10 51 e2                                      subs r1, r1, #1
005795f0  08 00 06 e5                                      str r0, [r6, #-8]
005795f4  04 00 12 e5                                      ldr r0, [r2, #-4]
005795f8  08 20 42 e2                                      sub r2, r2, #8
005795fc  04 00 06 e5                                      str r0, [r6, #-4]
00579600  08 60 46 e2                                      sub r6, r6, #8
00579604  f7 ff ff 1a                                      bne #0x5795e8
00579608  c4 41 a0 e1                                      asr r4, r4, #3
0057960c  00 00 54 e3                                      cmp r4, #0
00579610  d6 ff ff da                                      ble #0x579570
00579614  00 20 a0 e3                                      mov r2, #0
00579618  00 00 93 e5                                      ldr r0, [r3]
0057961c  82 11 85 e0                                      add r1, r5, r2, lsl #3
00579620  82 01 85 e7                                      str r0, [r5, r2, lsl #3]
00579624  04 00 93 e5                                      ldr r0, [r3, #4]
00579628  01 20 82 e2                                      add r2, r2, #1
0057962c  04 00 52 e1                                      cmp r2, r4
00579630  04 00 81 e5                                      str r0, [r1, #4]
00579634  f7 ff ff 1a                                      bne #0x579618
00579638  cc ff ff ea                                      b #0x579570
0057963c  04 40 62 e0                                      rsb r4, r2, r4
00579640  54 a0 bc e7                                      sbfx sl, r4, #0, #0x1d
00579644  00 00 5a e3                                      cmp sl, #0
00579648  84 41 86 e0                                      add r4, r6, r4, lsl #3
0057964c  08 00 00 da                                      ble #0x579674
00579650  00 10 a0 e3                                      mov r1, #0
00579654  00 80 93 e5                                      ldr r8, [r3]
00579658  81 01 86 e0                                      add r0, r6, r1, lsl #3
0057965c  81 81 86 e7                                      str r8, [r6, r1, lsl #3]
00579660  04 80 93 e5                                      ldr r8, [r3, #4]
00579664  01 10 81 e2                                      add r1, r1, #1
00579668  0a 00 51 e1                                      cmp r1, sl
0057966c  04 80 80 e5                                      str r8, [r0, #4]
00579670  f7 ff ff 1a                                      bne #0x579654
00579674  00 00 52 e3                                      cmp r2, #0
00579678  82 21 84 d0                                      addle r2, r4, r2, lsl #3
0057967c  04 40 8c e5                                      str r4, [ip, #4]
00579680  04 20 8c d5                                      strle r2, [ip, #4]
00579684  b9 ff ff da                                      ble #0x579570
00579688  00 60 a0 e3                                      mov r6, #0
0057968c  05 00 a0 e1                                      mov r0, r5
00579690  06 80 b0 e7                                      ldr r8, [r0, r6]!
00579694  04 10 a0 e1                                      mov r1, r4
00579698  01 20 52 e2                                      subs r2, r2, #1
0057969c  06 80 a1 e7                                      str r8, [r1, r6]!
005796a0  04 00 90 e5                                      ldr r0, [r0, #4]
005796a4  08 60 86 e2                                      add r6, r6, #8
005796a8  04 00 81 e5                                      str r0, [r1, #4]
005796ac  f6 ff ff 1a                                      bne #0x57968c
005796b0  04 10 9c e5                                      ldr r1, [ip, #4]
005796b4  87 11 81 e0                                      add r1, r1, r7, lsl #3
005796b8  04 10 8c e5                                      str r1, [ip, #4]
005796bc  00 00 93 e5                                      ldr r0, [r3]
005796c0  82 11 85 e0                                      add r1, r5, r2, lsl #3
005796c4  82 01 85 e7                                      str r0, [r5, r2, lsl #3]
005796c8  04 00 93 e5                                      ldr r0, [r3, #4]
005796cc  01 20 82 e2                                      add r2, r2, #1
005796d0  02 00 57 e1                                      cmp r7, r2
005796d4  04 00 81 e5                                      str r0, [r1, #4]
005796d8  f7 ff ff 1a                                      bne #0x5796bc
005796dc  a3 ff ff ea                                      b #0x579570

; FUNCTION 0x0057984c, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh12SSegmentInfoENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0057984c  70 40 2d e9                                      push {r4, r5, r6, lr}
00579850  14 00 90 e8                                      ldm r0, {r2, r4}
00579854  ff 3f 0f e3                                      movw r3, #0xffff
00579858  ff 3f 41 e3                                      movt r3, #0x1fff
0057985c  04 40 62 e0                                      rsb r4, r2, r4
00579860  c4 41 a0 e1                                      asr r4, r4, #3
00579864  03 30 64 e0                                      rsb r3, r4, r3
00579868  01 00 53 e1                                      cmp r3, r1
0057986c  01 50 a0 e1                                      mov r5, r1
00579870  08 00 00 3a                                      blo #0x579898
00579874  05 00 54 e1                                      cmp r4, r5
00579878  04 00 84 20                                      addhs r0, r4, r4
0057987c  05 00 84 30                                      addlo r0, r4, r5
00579880  1e 02 70 e3                                      cmn r0, #0xe0000001
00579884  01 00 00 8a                                      bhi #0x579890
00579888  04 00 50 e1                                      cmp r0, r4
0057988c  00 00 00 2a                                      bhs #0x579894
00579890  0e 02 e0 e3                                      mvn r0, #0xe0000000
00579894  70 80 bd e8                                      pop {r4, r5, r6, pc}
00579898  08 00 9f e5                                      ldr r0, [pc, #8]
0057989c  00 00 8f e0                                      add r0, pc, r0
005798a0  66 3d 06 eb                                      bl #0x708e40
005798a4  f2 ff ff ea                                      b #0x579874
; mapping-symbol data/literal pool
005798a8  cc 4b 34 00                                      .byte 0xcc, 0x4b, 0x34, 0x00

; FUNCTION 0x00579bc8, declared_size=332, range_size=332, mode=arm
; class-group: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh12SSegmentInfoENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb
; demangled: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::scene::CBatchMesh::SSegmentInfo*, glitch::scene::CBatchMesh::SSegmentInfo const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
00579bc8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00579bcc  28 50 9d e5                                      ldr r5, [sp, #0x28]
00579bd0  01 40 a0 e1                                      mov r4, r1
00579bd4  02 60 a0 e1                                      mov r6, r2
00579bd8  05 10 a0 e1                                      mov r1, r5
00579bdc  00 70 a0 e1                                      mov r7, r0
00579be0  2c a0 dd e5                                      ldrb sl, [sp, #0x2c]
00579be4  18 ff ff eb                                      bl #0x57984c
00579be8  80 81 a0 e1                                      lsl r8, r0, #3
00579bec  08 00 a0 e1                                      mov r0, r8
00579bf0  00 10 a0 e3                                      mov r1, #0
00579bf4  5b 5a f6 eb                                      bl #0x310568
00579bf8  00 c0 97 e5                                      ldr ip, [r7]
00579bfc  00 90 a0 e1                                      mov sb, r0
00579c00  04 e0 6c e0                                      rsb lr, ip, r4
00579c04  ce e1 a0 e1                                      asr lr, lr, #3
00579c08  00 00 5e e3                                      cmp lr, #0
00579c0c  00 e0 a0 d1                                      movle lr, r0
00579c10  0b 00 00 da                                      ble #0x579c44
00579c14  0e 10 a0 e1                                      mov r1, lr
00579c18  00 00 a0 e3                                      mov r0, #0
00579c1c  0c 20 a0 e1                                      mov r2, ip
00579c20  00 b0 b2 e7                                      ldr fp, [r2, r0]!
00579c24  09 30 a0 e1                                      mov r3, sb
00579c28  01 10 51 e2                                      subs r1, r1, #1
00579c2c  00 b0 a3 e7                                      str fp, [r3, r0]!
00579c30  04 20 92 e5                                      ldr r2, [r2, #4]
00579c34  08 00 80 e2                                      add r0, r0, #8
00579c38  04 20 83 e5                                      str r2, [r3, #4]
00579c3c  f6 ff ff 1a                                      bne #0x579c1c
00579c40  8e e1 89 e0                                      add lr, sb, lr, lsl #3
00579c44  01 00 55 e3                                      cmp r5, #1
00579c48  2b 00 00 0a                                      beq #0x579cfc
00579c4c  55 00 bc e7                                      sbfx r0, r5, #0, #0x1d
00579c50  00 00 50 e3                                      cmp r0, #0
00579c54  85 51 8e e0                                      add r5, lr, r5, lsl #3
00579c58  08 00 00 da                                      ble #0x579c80
00579c5c  00 30 a0 e3                                      mov r3, #0
00579c60  00 10 96 e5                                      ldr r1, [r6]
00579c64  83 21 8e e0                                      add r2, lr, r3, lsl #3
00579c68  83 11 8e e7                                      str r1, [lr, r3, lsl #3]
00579c6c  04 10 96 e5                                      ldr r1, [r6, #4]
00579c70  01 30 83 e2                                      add r3, r3, #1
00579c74  00 00 53 e1                                      cmp r3, r0
00579c78  04 10 82 e5                                      str r1, [r2, #4]
00579c7c  f7 ff ff 1a                                      bne #0x579c60
00579c80  00 00 5a e3                                      cmp sl, #0
00579c84  04 00 97 15                                      ldrne r0, [r7, #4]
00579c88  10 00 00 1a                                      bne #0x579cd0
00579c8c  04 00 97 e5                                      ldr r0, [r7, #4]
00579c90  00 c0 64 e0                                      rsb ip, r4, r0
00579c94  cc c1 a0 e1                                      asr ip, ip, #3
00579c98  00 00 5c e3                                      cmp ip, #0
00579c9c  0b 00 00 da                                      ble #0x579cd0
00579ca0  0c 10 a0 e1                                      mov r1, ip
00579ca4  04 20 a0 e1                                      mov r2, r4
00579ca8  0a 00 b2 e7                                      ldr r0, [r2, sl]!
00579cac  05 30 a0 e1                                      mov r3, r5
00579cb0  01 10 51 e2                                      subs r1, r1, #1
00579cb4  0a 00 a3 e7                                      str r0, [r3, sl]!
00579cb8  04 20 92 e5                                      ldr r2, [r2, #4]
00579cbc  08 a0 8a e2                                      add sl, sl, #8
00579cc0  04 20 83 e5                                      str r2, [r3, #4]
00579cc4  f6 ff ff 1a                                      bne #0x579ca4
00579cc8  04 00 97 e5                                      ldr r0, [r7, #4]
00579ccc  8c 51 85 e0                                      add r5, r5, ip, lsl #3
00579cd0  00 30 97 e5                                      ldr r3, [r7]
00579cd4  08 80 89 e0                                      add r8, sb, r8
00579cd8  00 00 53 e1                                      cmp r3, r0
00579cdc  08 20 40 12                                      subne r2, r0, #8
00579ce0  02 30 63 10                                      rsbne r3, r3, r2
00579ce4  a3 31 e0 11                                      mvnne r3, r3, lsr #3
00579ce8  83 01 80 10                                      addne r0, r0, r3, lsl #3
00579cec  d7 59 f6 eb                                      bl #0x310450
00579cf0  20 01 87 e9                                      stmib r7, {r5, r8}
00579cf4  00 90 87 e5                                      str sb, [r7]
00579cf8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00579cfc  00 30 96 e5                                      ldr r3, [r6]
00579d00  08 50 8e e2                                      add r5, lr, #8
00579d04  00 30 8e e5                                      str r3, [lr]
00579d08  04 30 96 e5                                      ldr r3, [r6, #4]
00579d0c  04 30 8e e5                                      str r3, [lr, #4]
00579d10  da ff ff ea                                      b #0x579c80

; FUNCTION 0x00579d14, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh12SSegmentInfoENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::scene::CBatchMesh::SSegmentInfo*, unsigned int, glitch::scene::CBatchMesh::SSegmentInfo const&)
; decoder-mode: arm
00579d14  30 40 2d e9                                      push {r4, r5, lr}
00579d18  00 40 52 e2                                      subs r4, r2, #0
00579d1c  14 d0 4d e2                                      sub sp, sp, #0x14
00579d20  03 50 a0 e1                                      mov r5, r3
00579d24  09 00 00 0a                                      beq #0x579d50
00579d28  04 e0 90 e5                                      ldr lr, [r0, #4]
00579d2c  08 c0 90 e5                                      ldr ip, [r0, #8]
00579d30  0c c0 6e e0                                      rsb ip, lr, ip
00579d34  cc 01 54 e1                                      cmp r4, ip, asr #3
00579d38  06 00 00 9a                                      bls #0x579d58
00579d3c  03 20 a0 e1                                      mov r2, r3
00579d40  00 c0 a0 e3                                      mov ip, #0
00579d44  08 30 8d e2                                      add r3, sp, #8
00579d48  10 10 8d e8                                      stm sp, {r4, ip}
00579d4c  9d ff ff eb                                      bl #0x579bc8
00579d50  14 d0 8d e2                                      add sp, sp, #0x14
00579d54  30 80 bd e8                                      pop {r4, r5, pc}
00579d58  0c c0 8d e2                                      add ip, sp, #0xc
00579d5c  00 c0 8d e5                                      str ip, [sp]
00579d60  ee fd ff eb                                      bl #0x579520
00579d64  f9 ff ff ea                                      b #0x579d50

; FUNCTION 0x00579d68, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh12SSegmentInfoENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_
; demangled: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::scene::CBatchMesh::SSegmentInfo const&)
; decoder-mode: arm
00579d68  30 00 2d e9                                      push {r4, r5}
00579d6c  04 40 90 e5                                      ldr r4, [r0, #4]
00579d70  00 50 90 e5                                      ldr r5, [r0]
00579d74  02 30 a0 e1                                      mov r3, r2
00579d78  04 20 65 e0                                      rsb r2, r5, r4
00579d7c  c2 21 a0 e1                                      asr r2, r2, #3
00579d80  02 00 51 e1                                      cmp r1, r2
00579d84  04 00 00 2a                                      bhs #0x579d9c
00579d88  81 51 85 e0                                      add r5, r5, r1, lsl #3
00579d8c  04 00 55 e1                                      cmp r5, r4
00579d90  04 50 80 15                                      strne r5, [r0, #4]
00579d94  30 00 bd e8                                      pop {r4, r5}
00579d98  1e ff 2f e1                                      bx lr
00579d9c  01 20 62 e0                                      rsb r2, r2, r1
00579da0  04 10 a0 e1                                      mov r1, r4
00579da4  30 00 bd e8                                      pop {r4, r5}
00579da8  d9 ff ff ea                                      b #0x579d14

; FUNCTION 0x00579dac, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh12SSegmentInfoENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
00579dac  70 40 2d e9                                      push {r4, r5, r6, lr}
00579db0  00 40 a0 e1                                      mov r4, r0
00579db4  00 20 90 e5                                      ldr r2, [r0]
00579db8  08 00 90 e5                                      ldr r0, [r0, #8]
00579dbc  08 d0 4d e2                                      sub sp, sp, #8
00579dc0  04 10 8d e5                                      str r1, [sp, #4]
00579dc4  00 00 62 e0                                      rsb r0, r2, r0
00579dc8  c0 01 51 e1                                      cmp r1, r0, asr #3
00579dcc  18 00 00 9a                                      bls #0x579e34
00579dd0  1e 02 71 e3                                      cmn r1, #0xe0000001
00579dd4  18 00 00 8a                                      bhi #0x579e3c
00579dd8  04 30 94 e5                                      ldr r3, [r4, #4]
00579ddc  00 00 52 e3                                      cmp r2, #0
00579de0  03 50 62 e0                                      rsb r5, r2, r3
00579de4  c5 51 a0 e1                                      asr r5, r5, #3
00579de8  18 00 00 0a                                      beq #0x579e50
00579dec  04 00 a0 e1                                      mov r0, r4
00579df0  04 10 8d e2                                      add r1, sp, #4
00579df4  e4 fe ff eb                                      bl #0x57998c
00579df8  00 30 94 e5                                      ldr r3, [r4]
00579dfc  00 60 a0 e1                                      mov r6, r0
00579e00  04 00 94 e5                                      ldr r0, [r4, #4]
00579e04  03 00 50 e1                                      cmp r0, r3
00579e08  08 20 40 12                                      subne r2, r0, #8
00579e0c  02 30 63 10                                      rsbne r3, r3, r2
00579e10  a3 31 e0 11                                      mvnne r3, r3, lsr #3
00579e14  83 01 80 10                                      addne r0, r0, r3, lsl #3
00579e18  8c 59 f6 eb                                      bl #0x310450
00579e1c  04 30 9d e5                                      ldr r3, [sp, #4]
00579e20  85 51 86 e0                                      add r5, r6, r5, lsl #3
00579e24  04 50 84 e5                                      str r5, [r4, #4]
00579e28  83 31 86 e0                                      add r3, r6, r3, lsl #3
00579e2c  08 30 84 e5                                      str r3, [r4, #8]
00579e30  00 60 84 e5                                      str r6, [r4]
00579e34  08 d0 8d e2                                      add sp, sp, #8
00579e38  70 80 bd e8                                      pop {r4, r5, r6, pc}
00579e3c  24 00 9f e5                                      ldr r0, [pc, #0x24]
00579e40  00 00 8f e0                                      add r0, pc, r0
00579e44  fd 3b 06 eb                                      bl #0x708e40
00579e48  00 20 94 e5                                      ldr r2, [r4]
00579e4c  e1 ff ff ea                                      b #0x579dd8
00579e50  04 00 9d e5                                      ldr r0, [sp, #4]
00579e54  02 10 a0 e1                                      mov r1, r2
00579e58  80 01 a0 e1                                      lsl r0, r0, #3
00579e5c  c1 59 f6 eb                                      bl #0x310568
00579e60  00 60 a0 e1                                      mov r6, r0
00579e64  ec ff ff ea                                      b #0x579e1c
; mapping-symbol data/literal pool
00579e68  28 46 34 00                                      .byte 0x28, 0x46, 0x34, 0x00
