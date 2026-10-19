; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060b7cc, declared_size=188, range_size=188, mode=arm
; class-group: glitch::collada::CAnimationStreamingManager::SegmentCacheEntry* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch7collada26CAnimationStreamingManager17SegmentCacheEntryES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::collada::CAnimationStreamingManager::SegmentCacheEntry* std::priv::__copy<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry*, glitch::collada::CAnimationStreamingManager::SegmentCacheEntry*, int>(glitch::collada::CAnimationStreamingManager::SegmentCacheEntry*, glitch::collada::CAnimationStreamingManager::SegmentCacheEntry*, glitch::collada::CAnimationStreamingManager::SegmentCacheEntry*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0060b7cc  01 10 60 e0                                      rsb r1, r0, r1
0060b7d0  41 11 a0 e1                                      asr r1, r1, #2
0060b7d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0060b7d8  01 91 81 e0                                      add sb, r1, r1, lsl #2
0060b7dc  02 a0 a0 e1                                      mov sl, r2
0060b7e0  09 92 89 e0                                      add sb, sb, sb, lsl #4
0060b7e4  09 94 89 e0                                      add sb, sb, sb, lsl #8
0060b7e8  09 98 89 e0                                      add sb, sb, sb, lsl #16
0060b7ec  89 90 81 e0                                      add sb, r1, sb, lsl #1
0060b7f0  00 00 59 e3                                      cmp sb, #0
0060b7f4  21 00 00 da                                      ble #0x60b880
0060b7f8  0c 50 80 e2                                      add r5, r0, #0xc
0060b7fc  0c 40 82 e2                                      add r4, r2, #0xc
0060b800  09 70 a0 e1                                      mov r7, sb
0060b804  00 80 a0 e3                                      mov r8, #0
0060b808  0c 30 15 e5                                      ldr r3, [r5, #-0xc]
0060b80c  0c 30 04 e5                                      str r3, [r4, #-0xc]
0060b810  08 30 15 e5                                      ldr r3, [r5, #-8]
0060b814  00 00 53 e3                                      cmp r3, #0
0060b818  00 20 93 15                                      ldrne r2, [r3]
0060b81c  01 20 82 12                                      addne r2, r2, #1
0060b820  00 20 83 15                                      strne r2, [r3]
0060b824  08 60 14 e5                                      ldr r6, [r4, #-8]
0060b828  00 00 56 e3                                      cmp r6, #0
0060b82c  09 00 00 0a                                      beq #0x60b858
0060b830  00 30 96 e5                                      ldr r3, [r6]
0060b834  01 30 43 e2                                      sub r3, r3, #1
0060b838  00 00 53 e3                                      cmp r3, #0
0060b83c  00 30 86 e5                                      str r3, [r6]
0060b840  04 00 00 1a                                      bne #0x60b858
0060b844  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0060b848  00 00 50 e3                                      cmp r0, #0
0060b84c  00 00 00 0a                                      beq #0x60b854
0060b850  18 0a f4 eb                                      bl #0x30e0b8
0060b854  0c 80 86 e5                                      str r8, [r6, #0xc]
0060b858  08 30 15 e5                                      ldr r3, [r5, #-8]
0060b85c  01 70 57 e2                                      subs r7, r7, #1
0060b860  08 30 04 e5                                      str r3, [r4, #-8]
0060b864  04 30 15 e5                                      ldr r3, [r5, #-4]
0060b868  0c 50 85 e2                                      add r5, r5, #0xc
0060b86c  04 30 04 e5                                      str r3, [r4, #-4]
0060b870  0c 40 84 e2                                      add r4, r4, #0xc
0060b874  e3 ff ff 1a                                      bne #0x60b808
0060b878  0c 30 a0 e3                                      mov r3, #0xc
0060b87c  93 a9 2a e0                                      mla sl, r3, sb, sl
0060b880  0a 00 a0 e1                                      mov r0, sl
0060b884  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
