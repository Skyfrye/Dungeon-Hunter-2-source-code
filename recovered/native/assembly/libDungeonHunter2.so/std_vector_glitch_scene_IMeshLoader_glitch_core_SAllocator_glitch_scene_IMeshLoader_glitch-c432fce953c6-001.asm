; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0058d81c, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<glitch::scene::IMeshLoader*, glitch::core::SAllocator<glitch::scene::IMeshLoader*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch5scene11IMeshLoaderENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb.clone.21
; demangled: std::vector<glitch::scene::IMeshLoader*, glitch::core::SAllocator<glitch::scene::IMeshLoader*, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(glitch::scene::IMeshLoader**, glitch::scene::IMeshLoader* const&, std::__true_type const&, unsigned int, bool) [clone .clone.21]
; decoder-mode: arm
0058d81c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058d820  00 40 a0 e1                                      mov r4, r0
0058d824  00 30 94 e5                                      ldr r3, [r4]
0058d828  04 00 90 e5                                      ldr r0, [r0, #4]
0058d82c  01 60 a0 e1                                      mov r6, r1
0058d830  02 80 a0 e1                                      mov r8, r2
0058d834  00 30 63 e0                                      rsb r3, r3, r0
0058d838  43 31 a0 e1                                      asr r3, r3, #2
0058d83c  01 00 53 e3                                      cmp r3, #1
0058d840  03 70 83 20                                      addhs r7, r3, r3
0058d844  01 70 83 32                                      addlo r7, r3, #1
0058d848  07 01 77 e3                                      cmn r7, #0xc0000001
0058d84c  14 00 00 8a                                      bhi #0x58d8a4
0058d850  07 00 53 e1                                      cmp r3, r7
0058d854  07 71 a0 91                                      lslls r7, r7, #2
0058d858  11 00 00 8a                                      bhi #0x58d8a4
0058d85c  00 10 a0 e3                                      mov r1, #0
0058d860  07 00 a0 e1                                      mov r0, r7
0058d864  3f 0b f6 eb                                      bl #0x310568
0058d868  00 10 94 e5                                      ldr r1, [r4]
0058d86c  00 50 a0 e1                                      mov r5, r0
0058d870  01 60 56 e0                                      subs r6, r6, r1
0058d874  00 60 a0 01                                      moveq r6, r0
0058d878  02 00 00 0a                                      beq #0x58d888
0058d87c  06 20 a0 e1                                      mov r2, r6
0058d880  ac 01 f6 eb                                      bl #0x30df38
0058d884  06 60 80 e0                                      add r6, r0, r6
0058d888  00 30 98 e5                                      ldr r3, [r8]
0058d88c  07 70 85 e0                                      add r7, r5, r7
0058d890  04 30 86 e4                                      str r3, [r6], #4
0058d894  00 00 94 e5                                      ldr r0, [r4]
0058d898  ec 0a f6 eb                                      bl #0x310450
0058d89c  e0 00 84 e8                                      stm r4, {r5, r6, r7}
0058d8a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058d8a4  03 70 e0 e3                                      mvn r7, #3
0058d8a8  eb ff ff ea                                      b #0x58d85c
