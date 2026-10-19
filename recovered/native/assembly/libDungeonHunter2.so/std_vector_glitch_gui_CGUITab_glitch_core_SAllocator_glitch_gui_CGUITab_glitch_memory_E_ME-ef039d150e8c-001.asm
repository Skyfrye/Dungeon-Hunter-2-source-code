; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00552b70, declared_size=176, range_size=176, mode=arm
; class-group: std::vector<glitch::gui::CGUITab*, glitch::core::SAllocator<glitch::gui::CGUITab*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch3gui7CGUITabENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb.clone.1
; demangled: std::vector<glitch::gui::CGUITab*, glitch::core::SAllocator<glitch::gui::CGUITab*, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(glitch::gui::CGUITab**, glitch::gui::CGUITab* const&, std::__true_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
00552b70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00552b74  00 40 a0 e1                                      mov r4, r0
00552b78  00 30 94 e5                                      ldr r3, [r4]
00552b7c  04 00 90 e5                                      ldr r0, [r0, #4]
00552b80  01 60 a0 e1                                      mov r6, r1
00552b84  02 80 a0 e1                                      mov r8, r2
00552b88  00 30 63 e0                                      rsb r3, r3, r0
00552b8c  43 31 a0 e1                                      asr r3, r3, #2
00552b90  01 00 53 e3                                      cmp r3, #1
00552b94  03 70 83 20                                      addhs r7, r3, r3
00552b98  01 70 83 32                                      addlo r7, r3, #1
00552b9c  07 01 77 e3                                      cmn r7, #0xc0000001
00552ba0  11 00 00 8a                                      bhi #0x552bec
00552ba4  07 00 53 e1                                      cmp r3, r7
00552ba8  07 71 a0 91                                      lslls r7, r7, #2
00552bac  0e 00 00 8a                                      bhi #0x552bec
00552bb0  00 10 a0 e3                                      mov r1, #0
00552bb4  07 00 a0 e1                                      mov r0, r7
00552bb8  6a f6 f6 eb                                      bl #0x310568
00552bbc  00 10 94 e5                                      ldr r1, [r4]
00552bc0  00 50 a0 e1                                      mov r5, r0
00552bc4  01 60 56 e0                                      subs r6, r6, r1
00552bc8  00 60 a0 01                                      moveq r6, r0
00552bcc  0f 00 00 1a                                      bne #0x552c10
00552bd0  00 30 98 e5                                      ldr r3, [r8]
00552bd4  07 70 85 e0                                      add r7, r5, r7
00552bd8  04 30 86 e4                                      str r3, [r6], #4
00552bdc  00 00 94 e5                                      ldr r0, [r4]
00552be0  1a f6 f6 eb                                      bl #0x310450
00552be4  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00552be8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00552bec  03 70 e0 e3                                      mvn r7, #3
00552bf0  00 10 a0 e3                                      mov r1, #0
00552bf4  07 00 a0 e1                                      mov r0, r7
00552bf8  5a f6 f6 eb                                      bl #0x310568
00552bfc  00 10 94 e5                                      ldr r1, [r4]
00552c00  00 50 a0 e1                                      mov r5, r0
00552c04  01 60 56 e0                                      subs r6, r6, r1
00552c08  00 60 a0 01                                      moveq r6, r0
00552c0c  ef ff ff 0a                                      beq #0x552bd0
00552c10  06 20 a0 e1                                      mov r2, r6
00552c14  c7 ec f6 eb                                      bl #0x30df38
00552c18  06 60 80 e0                                      add r6, r0, r6
00552c1c  eb ff ff ea                                      b #0x552bd0
