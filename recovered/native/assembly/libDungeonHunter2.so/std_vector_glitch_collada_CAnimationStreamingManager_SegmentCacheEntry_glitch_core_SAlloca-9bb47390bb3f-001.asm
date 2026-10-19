; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060b888, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry, glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada26CAnimationStreamingManager17SegmentCacheEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_RKSt12__false_type
; demangled: std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry, glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::collada::CAnimationStreamingManager::SegmentCacheEntry*, std::__false_type const&)
; decoder-mode: arm
0060b888  70 40 2d e9                                      push {r4, r5, r6, lr}
0060b88c  04 30 90 e5                                      ldr r3, [r0, #4]
0060b890  00 50 a0 e1                                      mov r5, r0
0060b894  0c 00 81 e2                                      add r0, r1, #0xc
0060b898  03 00 50 e1                                      cmp r0, r3
0060b89c  10 d0 4d e2                                      sub sp, sp, #0x10
0060b8a0  01 40 a0 e1                                      mov r4, r1
0060b8a4  06 00 00 0a                                      beq #0x60b8c4
0060b8a8  03 10 a0 e1                                      mov r1, r3
0060b8ac  00 c0 a0 e3                                      mov ip, #0
0060b8b0  04 20 a0 e1                                      mov r2, r4
0060b8b4  0c 30 8d e2                                      add r3, sp, #0xc
0060b8b8  00 c0 8d e5                                      str ip, [sp]
0060b8bc  c2 ff ff eb                                      bl #0x60b7cc
0060b8c0  04 00 95 e5                                      ldr r0, [r5, #4]
0060b8c4  0c 60 40 e2                                      sub r6, r0, #0xc
0060b8c8  04 60 85 e5                                      str r6, [r5, #4]
0060b8cc  04 50 96 e5                                      ldr r5, [r6, #4]
0060b8d0  00 00 55 e3                                      cmp r5, #0
0060b8d4  0c 00 00 0a                                      beq #0x60b90c
0060b8d8  00 30 95 e5                                      ldr r3, [r5]
0060b8dc  01 30 43 e2                                      sub r3, r3, #1
0060b8e0  00 00 53 e3                                      cmp r3, #0
0060b8e4  00 30 85 e5                                      str r3, [r5]
0060b8e8  05 00 00 1a                                      bne #0x60b904
0060b8ec  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0060b8f0  00 00 50 e3                                      cmp r0, #0
0060b8f4  00 00 00 0a                                      beq #0x60b8fc
0060b8f8  ee 09 f4 eb                                      bl #0x30e0b8
0060b8fc  00 30 a0 e3                                      mov r3, #0
0060b900  0c 30 85 e5                                      str r3, [r5, #0xc]
0060b904  00 30 a0 e3                                      mov r3, #0
0060b908  04 30 86 e5                                      str r3, [r6, #4]
0060b90c  04 00 a0 e1                                      mov r0, r4
0060b910  10 d0 8d e2                                      add sp, sp, #0x10
0060b914  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00671624, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry, glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada26CAnimationStreamingManager17SegmentCacheEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry, glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00671624  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00671628  04 40 90 e5                                      ldr r4, [r0, #4]
0067162c  00 70 90 e5                                      ldr r7, [r0]
00671630  00 80 a0 e1                                      mov r8, r0
00671634  07 00 54 e1                                      cmp r4, r7
00671638  11 00 00 0a                                      beq #0x671684
0067163c  00 60 a0 e3                                      mov r6, #0
00671640  08 50 14 e5                                      ldr r5, [r4, #-8]
00671644  00 00 55 e3                                      cmp r5, #0
00671648  0a 00 00 0a                                      beq #0x671678
0067164c  00 30 95 e5                                      ldr r3, [r5]
00671650  01 30 43 e2                                      sub r3, r3, #1
00671654  00 00 53 e3                                      cmp r3, #0
00671658  00 30 85 e5                                      str r3, [r5]
0067165c  04 00 00 1a                                      bne #0x671674
00671660  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00671664  00 00 50 e3                                      cmp r0, #0
00671668  00 00 00 0a                                      beq #0x671670
0067166c  91 72 f2 eb                                      bl #0x30e0b8
00671670  0c 60 85 e5                                      str r6, [r5, #0xc]
00671674  08 60 04 e5                                      str r6, [r4, #-8]
00671678  0c 40 44 e2                                      sub r4, r4, #0xc
0067167c  04 00 57 e1                                      cmp r7, r4
00671680  ee ff ff 1a                                      bne #0x671640
00671684  00 00 98 e5                                      ldr r0, [r8]
00671688  00 00 50 e3                                      cmp r0, #0
0067168c  00 00 00 0a                                      beq #0x671694
00671690  6e 7b f2 eb                                      bl #0x310450
00671694  08 00 a0 e1                                      mov r0, r8
00671698  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
