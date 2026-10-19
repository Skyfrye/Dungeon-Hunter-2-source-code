; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005ea990, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<glitch::video::IImageWriter*, glitch::core::SAllocator<glitch::video::IImageWriter*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch5video12IImageWriterENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb.clone.4
; demangled: std::vector<glitch::video::IImageWriter*, glitch::core::SAllocator<glitch::video::IImageWriter*, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(glitch::video::IImageWriter**, glitch::video::IImageWriter* const&, std::__true_type const&, unsigned int, bool) [clone .clone.4]
; decoder-mode: arm
005ea990  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ea994  00 40 a0 e1                                      mov r4, r0
005ea998  00 30 94 e5                                      ldr r3, [r4]
005ea99c  04 00 90 e5                                      ldr r0, [r0, #4]
005ea9a0  01 60 a0 e1                                      mov r6, r1
005ea9a4  02 80 a0 e1                                      mov r8, r2
005ea9a8  00 30 63 e0                                      rsb r3, r3, r0
005ea9ac  43 31 a0 e1                                      asr r3, r3, #2
005ea9b0  01 00 53 e3                                      cmp r3, #1
005ea9b4  03 70 83 20                                      addhs r7, r3, r3
005ea9b8  01 70 83 32                                      addlo r7, r3, #1
005ea9bc  07 01 77 e3                                      cmn r7, #0xc0000001
005ea9c0  14 00 00 8a                                      bhi #0x5eaa18
005ea9c4  07 00 53 e1                                      cmp r3, r7
005ea9c8  07 71 a0 91                                      lslls r7, r7, #2
005ea9cc  11 00 00 8a                                      bhi #0x5eaa18
005ea9d0  00 10 a0 e3                                      mov r1, #0
005ea9d4  07 00 a0 e1                                      mov r0, r7
005ea9d8  e2 96 f4 eb                                      bl #0x310568
005ea9dc  00 10 94 e5                                      ldr r1, [r4]
005ea9e0  00 50 a0 e1                                      mov r5, r0
005ea9e4  01 60 56 e0                                      subs r6, r6, r1
005ea9e8  00 60 a0 01                                      moveq r6, r0
005ea9ec  02 00 00 0a                                      beq #0x5ea9fc
005ea9f0  06 20 a0 e1                                      mov r2, r6
005ea9f4  4f 8d f4 eb                                      bl #0x30df38
005ea9f8  06 60 80 e0                                      add r6, r0, r6
005ea9fc  00 30 98 e5                                      ldr r3, [r8]
005eaa00  07 70 85 e0                                      add r7, r5, r7
005eaa04  04 30 86 e4                                      str r3, [r6], #4
005eaa08  00 00 94 e5                                      ldr r0, [r4]
005eaa0c  8f 96 f4 eb                                      bl #0x310450
005eaa10  e0 00 84 e8                                      stm r4, {r5, r6, r7}
005eaa14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005eaa18  03 70 e0 e3                                      mvn r7, #3
005eaa1c  eb ff ff ea                                      b #0x5ea9d0
