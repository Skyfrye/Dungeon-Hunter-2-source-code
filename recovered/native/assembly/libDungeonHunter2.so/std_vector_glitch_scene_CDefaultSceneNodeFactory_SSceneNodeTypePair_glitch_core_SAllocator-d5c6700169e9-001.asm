; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ba89c, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair, glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene24CDefaultSceneNodeFactory18SSceneNodeTypePairENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair, glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
006ba89c  70 40 2d e9                                      push {r4, r5, r6, lr}
006ba8a0  04 40 90 e5                                      ldr r4, [r0, #4]
006ba8a4  00 50 90 e5                                      ldr r5, [r0]
006ba8a8  00 60 a0 e1                                      mov r6, r0
006ba8ac  05 00 54 e1                                      cmp r4, r5
006ba8b0  0a 00 00 0a                                      beq #0x6ba8e0
006ba8b4  1c 40 44 e2                                      sub r4, r4, #0x1c
006ba8b8  04 20 84 e2                                      add r2, r4, #4
006ba8bc  14 30 92 e5                                      ldr r3, [r2, #0x14]
006ba8c0  02 00 53 e1                                      cmp r3, r2
006ba8c4  03 00 a0 e1                                      mov r0, r3
006ba8c8  02 00 00 0a                                      beq #0x6ba8d8
006ba8cc  00 00 53 e3                                      cmp r3, #0
006ba8d0  00 00 00 0a                                      beq #0x6ba8d8
006ba8d4  dd 56 f1 eb                                      bl #0x310450
006ba8d8  04 00 55 e1                                      cmp r5, r4
006ba8dc  f4 ff ff 1a                                      bne #0x6ba8b4
006ba8e0  00 00 96 e5                                      ldr r0, [r6]
006ba8e4  00 00 50 e3                                      cmp r0, #0
006ba8e8  00 00 00 0a                                      beq #0x6ba8f0
006ba8ec  d7 56 f1 eb                                      bl #0x310450
006ba8f0  06 00 a0 e1                                      mov r0, r6
006ba8f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006ba990, declared_size=344, range_size=344, mode=arm
; class-group: std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair, glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene24CDefaultSceneNodeFactory18SSceneNodeTypePairENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair, glitch::core::SAllocator<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair const&)
; decoder-mode: arm
006ba990  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006ba994  04 80 90 e5                                      ldr r8, [r0, #4]
006ba998  08 30 90 e5                                      ldr r3, [r0, #8]
006ba99c  14 d0 4d e2                                      sub sp, sp, #0x14
006ba9a0  00 40 a0 e1                                      mov r4, r0
006ba9a4  03 00 58 e1                                      cmp r8, r3
006ba9a8  01 50 a0 e1                                      mov r5, r1
006ba9ac  0c 00 00 0a                                      beq #0x6ba9e4
006ba9b0  00 30 91 e5                                      ldr r3, [r1]
006ba9b4  08 00 a0 e1                                      mov r0, r8
006ba9b8  04 30 80 e4                                      str r3, [r0], #4
006ba9bc  18 00 88 e5                                      str r0, [r8, #0x18]
006ba9c0  14 00 88 e5                                      str r0, [r8, #0x14]
006ba9c4  14 20 91 e5                                      ldr r2, [r1, #0x14]
006ba9c8  18 10 91 e5                                      ldr r1, [r1, #0x18]
006ba9cc  88 ad f1 eb                                      bl #0x325ff4
006ba9d0  04 30 94 e5                                      ldr r3, [r4, #4]
006ba9d4  1c 30 83 e2                                      add r3, r3, #0x1c
006ba9d8  04 30 84 e5                                      str r3, [r4, #4]
006ba9dc  14 d0 8d e2                                      add sp, sp, #0x14
006ba9e0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006ba9e4  00 20 90 e5                                      ldr r2, [r0]
006ba9e8  49 32 09 e3                                      movw r3, #0x9249
006ba9ec  03 36 83 e1                                      orr r3, r3, r3, lsl #12
006ba9f0  08 20 62 e0                                      rsb r2, r2, r8
006ba9f4  42 21 a0 e1                                      asr r2, r2, #2
006ba9f8  82 11 82 e0                                      add r1, r2, r2, lsl #3
006ba9fc  01 13 81 e0                                      add r1, r1, r1, lsl #6
006baa00  81 11 82 e0                                      add r1, r2, r1, lsl #3
006baa04  81 17 81 e0                                      add r1, r1, r1, lsl #15
006baa08  81 21 82 e0                                      add r2, r2, r1, lsl #3
006baa0c  00 20 62 e2                                      rsb r2, r2, #0
006baa10  01 00 52 e3                                      cmp r2, #1
006baa14  02 10 82 20                                      addhs r1, r2, r2
006baa18  01 10 82 32                                      addlo r1, r2, #1
006baa1c  03 00 51 e1                                      cmp r1, r3
006baa20  2b 00 00 9a                                      bls #0x6baad4
006baa24  03 70 e0 e3                                      mvn r7, #3
006baa28  00 10 a0 e3                                      mov r1, #0
006baa2c  07 00 a0 e1                                      mov r0, r7
006baa30  cc 56 f1 eb                                      bl #0x310568
006baa34  00 60 a0 e1                                      mov r6, r0
006baa38  08 10 a0 e1                                      mov r1, r8
006baa3c  00 c0 a0 e3                                      mov ip, #0
006baa40  00 00 94 e5                                      ldr r0, [r4]
006baa44  06 20 a0 e1                                      mov r2, r6
006baa48  0c 30 8d e2                                      add r3, sp, #0xc
006baa4c  00 c0 8d e5                                      str ip, [sp]
006baa50  70 ff ff eb                                      bl #0x6ba818
006baa54  00 20 95 e5                                      ldr r2, [r5]
006baa58  00 30 a0 e1                                      mov r3, r0
006baa5c  1c 80 80 e2                                      add r8, r0, #0x1c
006baa60  04 20 83 e4                                      str r2, [r3], #4
006baa64  14 30 80 e5                                      str r3, [r0, #0x14]
006baa68  18 30 80 e5                                      str r3, [r0, #0x18]
006baa6c  14 20 95 e5                                      ldr r2, [r5, #0x14]
006baa70  18 10 95 e5                                      ldr r1, [r5, #0x18]
006baa74  03 00 a0 e1                                      mov r0, r3
006baa78  5d ad f1 eb                                      bl #0x325ff4
006baa7c  04 50 94 e5                                      ldr r5, [r4, #4]
006baa80  00 a0 94 e5                                      ldr sl, [r4]
006baa84  0a 00 55 e1                                      cmp r5, sl
006baa88  0b 00 00 0a                                      beq #0x6baabc
006baa8c  1c 50 45 e2                                      sub r5, r5, #0x1c
006baa90  04 20 85 e2                                      add r2, r5, #4
006baa94  14 30 92 e5                                      ldr r3, [r2, #0x14]
006baa98  02 00 53 e1                                      cmp r3, r2
006baa9c  03 00 a0 e1                                      mov r0, r3
006baaa0  02 00 00 0a                                      beq #0x6baab0
006baaa4  00 00 53 e3                                      cmp r3, #0
006baaa8  00 00 00 0a                                      beq #0x6baab0
006baaac  67 56 f1 eb                                      bl #0x310450
006baab0  05 00 5a e1                                      cmp sl, r5
006baab4  f4 ff ff 1a                                      bne #0x6baa8c
006baab8  00 a0 94 e5                                      ldr sl, [r4]
006baabc  0a 00 a0 e1                                      mov r0, sl
006baac0  07 70 86 e0                                      add r7, r6, r7
006baac4  61 56 f1 eb                                      bl #0x310450
006baac8  08 70 84 e5                                      str r7, [r4, #8]
006baacc  40 01 84 e8                                      stm r4, {r6, r8}
006baad0  c1 ff ff ea                                      b #0x6ba9dc
006baad4  01 00 52 e1                                      cmp r2, r1
006baad8  d1 ff ff 8a                                      bhi #0x6baa24
006baadc  1c 70 a0 e3                                      mov r7, #0x1c
006baae0  97 01 07 e0                                      mul r7, r7, r1
006baae4  cf ff ff ea                                      b #0x6baa28
