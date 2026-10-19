; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006495fc, declared_size=176, range_size=176, mode=arm
; class-group: std::vector<char const*, glitch::core::SAllocator<char const*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPKcN6glitch4core10SAllocatorIS1_LNS2_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS1_RKS1_RKSt11__true_typejb.clone.1
; demangled: std::vector<char const*, glitch::core::SAllocator<char const*, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(char const**, char const* const&, std::__true_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
006495fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00649600  00 40 a0 e1                                      mov r4, r0
00649604  00 30 94 e5                                      ldr r3, [r4]
00649608  04 00 90 e5                                      ldr r0, [r0, #4]
0064960c  01 60 a0 e1                                      mov r6, r1
00649610  02 80 a0 e1                                      mov r8, r2
00649614  00 30 63 e0                                      rsb r3, r3, r0
00649618  43 31 a0 e1                                      asr r3, r3, #2
0064961c  01 00 53 e3                                      cmp r3, #1
00649620  03 70 83 20                                      addhs r7, r3, r3
00649624  01 70 83 32                                      addlo r7, r3, #1
00649628  07 01 77 e3                                      cmn r7, #0xc0000001
0064962c  11 00 00 8a                                      bhi #0x649678
00649630  07 00 53 e1                                      cmp r3, r7
00649634  07 71 a0 91                                      lslls r7, r7, #2
00649638  0e 00 00 8a                                      bhi #0x649678
0064963c  00 10 a0 e3                                      mov r1, #0
00649640  07 00 a0 e1                                      mov r0, r7
00649644  c7 1b f3 eb                                      bl #0x310568
00649648  00 10 94 e5                                      ldr r1, [r4]
0064964c  00 50 a0 e1                                      mov r5, r0
00649650  01 60 56 e0                                      subs r6, r6, r1
00649654  00 60 a0 01                                      moveq r6, r0
00649658  0f 00 00 1a                                      bne #0x64969c
0064965c  00 30 98 e5                                      ldr r3, [r8]
00649660  07 70 85 e0                                      add r7, r5, r7
00649664  04 30 86 e4                                      str r3, [r6], #4
00649668  00 00 94 e5                                      ldr r0, [r4]
0064966c  77 1b f3 eb                                      bl #0x310450
00649670  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00649674  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00649678  03 70 e0 e3                                      mvn r7, #3
0064967c  00 10 a0 e3                                      mov r1, #0
00649680  07 00 a0 e1                                      mov r0, r7
00649684  b7 1b f3 eb                                      bl #0x310568
00649688  00 10 94 e5                                      ldr r1, [r4]
0064968c  00 50 a0 e1                                      mov r5, r0
00649690  01 60 56 e0                                      subs r6, r6, r1
00649694  00 60 a0 01                                      moveq r6, r0
00649698  ef ff ff 0a                                      beq #0x64965c
0064969c  06 20 a0 e1                                      mov r2, r6
006496a0  24 12 f3 eb                                      bl #0x30df38
006496a4  06 60 80 e0                                      add r6, r0, r6
006496a8  eb ff ff ea                                      b #0x64965c
