; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e2434, declared_size=180, range_size=180, mode=arm
; class-group: std::vector<glitch::collada::SAnimationTemplate*, glitch::core::SProcessBufferAllocator<glitch::collada::SAnimationTemplate*> >
; alias: _ZNSt6vectorIPN6glitch7collada18SAnimationTemplateENS0_4core23SProcessBufferAllocatorIS3_EEE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb.clone.1
; demangled: std::vector<glitch::collada::SAnimationTemplate*, glitch::core::SProcessBufferAllocator<glitch::collada::SAnimationTemplate*> >::_M_insert_overflow(glitch::collada::SAnimationTemplate**, glitch::collada::SAnimationTemplate* const&, std::__true_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
006e2434  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e2438  00 40 a0 e1                                      mov r4, r0
006e243c  00 30 94 e5                                      ldr r3, [r4]
006e2440  04 00 90 e5                                      ldr r0, [r0, #4]
006e2444  01 80 a0 e1                                      mov r8, r1
006e2448  02 70 a0 e1                                      mov r7, r2
006e244c  00 30 63 e0                                      rsb r3, r3, r0
006e2450  43 31 a0 e1                                      asr r3, r3, #2
006e2454  01 00 53 e3                                      cmp r3, #1
006e2458  03 60 83 20                                      addhs r6, r3, r3
006e245c  01 60 83 32                                      addlo r6, r3, #1
006e2460  07 01 76 e3                                      cmn r6, #0xc0000001
006e2464  13 00 00 8a                                      bhi #0x6e24b8
006e2468  06 00 53 e1                                      cmp r3, r6
006e246c  06 61 a0 91                                      lslls r6, r6, #2
006e2470  06 00 a0 91                                      movls r0, r6
006e2474  0f 00 00 8a                                      bhi #0x6e24b8
006e2478  5d 48 f9 eb                                      bl #0x5345f4
006e247c  00 10 94 e5                                      ldr r1, [r4]
006e2480  00 50 a0 e1                                      mov r5, r0
006e2484  01 80 58 e0                                      subs r8, r8, r1
006e2488  00 80 a0 01                                      moveq r8, r0
006e248c  11 00 00 1a                                      bne #0x6e24d8
006e2490  00 30 97 e5                                      ldr r3, [r7]
006e2494  04 30 88 e4                                      str r3, [r8], #4
006e2498  00 00 94 e5                                      ldr r0, [r4]
006e249c  00 00 50 e3                                      cmp r0, #0
006e24a0  00 00 00 0a                                      beq #0x6e24a8
006e24a4  77 48 f9 eb                                      bl #0x534688
006e24a8  06 60 85 e0                                      add r6, r5, r6
006e24ac  08 60 84 e5                                      str r6, [r4, #8]
006e24b0  20 01 84 e8                                      stm r4, {r5, r8}
006e24b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e24b8  03 00 e0 e3                                      mvn r0, #3
006e24bc  00 60 a0 e1                                      mov r6, r0
006e24c0  4b 48 f9 eb                                      bl #0x5345f4
006e24c4  00 10 94 e5                                      ldr r1, [r4]
006e24c8  00 50 a0 e1                                      mov r5, r0
006e24cc  01 80 58 e0                                      subs r8, r8, r1
006e24d0  00 80 a0 01                                      moveq r8, r0
006e24d4  ed ff ff 0a                                      beq #0x6e2490
006e24d8  08 20 a0 e1                                      mov r2, r8
006e24dc  95 ae f0 eb                                      bl #0x30df38
006e24e0  08 80 80 e0                                      add r8, r0, r8
006e24e4  e9 ff ff ea                                      b #0x6e2490
