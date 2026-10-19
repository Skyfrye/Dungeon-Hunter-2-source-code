; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003540c0, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<LightBase*, glitch::core::SAllocator<LightBase*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIP9LightBaseN6glitch4core10SAllocatorIS1_LNS2_6memory13E_MEMORY_HINTE0EEEEaSERKS8_
; demangled: std::vector<LightBase*, glitch::core::SAllocator<LightBase*, (glitch::memory::E_MEMORY_HINT)0> >::operator=(std::vector<LightBase*, glitch::core::SAllocator<LightBase*, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
003540c0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003540c4  00 00 51 e1                                      cmp r1, r0
003540c8  0c d0 4d e2                                      sub sp, sp, #0xc
003540cc  01 60 a0 e1                                      mov r6, r1
003540d0  00 40 a0 e1                                      mov r4, r0
003540d4  10 00 00 0a                                      beq #0x35411c
003540d8  0c 00 91 e8                                      ldm r1, {r2, r3}
003540dc  00 70 90 e5                                      ldr r7, [r0]
003540e0  08 10 90 e5                                      ldr r1, [r0, #8]
003540e4  03 c0 62 e0                                      rsb ip, r2, r3
003540e8  4c 51 a0 e1                                      asr r5, ip, #2
003540ec  01 10 67 e0                                      rsb r1, r7, r1
003540f0  41 01 55 e1                                      cmp r5, r1, asr #2
003540f4  16 00 00 8a                                      bhi #0x354154
003540f8  04 00 90 e5                                      ldr r0, [r0, #4]
003540fc  00 10 67 e0                                      rsb r1, r7, r0
00354100  41 11 a0 e1                                      asr r1, r1, #2
00354104  01 00 55 e1                                      cmp r5, r1
00354108  06 00 00 8a                                      bhi #0x354128
0035410c  00 00 5c e3                                      cmp ip, #0
00354110  1c 00 00 1a                                      bne #0x354188
00354114  05 51 87 e0                                      add r5, r7, r5, lsl #2
00354118  04 50 84 e5                                      str r5, [r4, #4]
0035411c  04 00 a0 e1                                      mov r0, r4
00354120  0c d0 8d e2                                      add sp, sp, #0xc
00354124  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00354128  01 11 82 e0                                      add r1, r2, r1, lsl #2
0035412c  02 c0 51 e0                                      subs ip, r1, r2
00354130  1c 00 00 1a                                      bne #0x3541a8
00354134  03 00 51 e1                                      cmp r1, r3
00354138  f5 ff ff 0a                                      beq #0x354114
0035413c  03 20 61 e0                                      rsb r2, r1, r3
00354140  c8 e9 fe eb                                      bl #0x30e868
00354144  00 70 94 e5                                      ldr r7, [r4]
00354148  05 51 87 e0                                      add r5, r7, r5, lsl #2
0035414c  04 50 84 e5                                      str r5, [r4, #4]
00354150  f1 ff ff ea                                      b #0x35411c
00354154  08 10 8d e2                                      add r1, sp, #8
00354158  04 50 21 e5                                      str r5, [r1, #-4]!
0035415c  ed f7 ff eb                                      bl #0x352118
00354160  00 70 a0 e1                                      mov r7, r0
00354164  00 00 94 e5                                      ldr r0, [r4]
00354168  b8 f0 fe eb                                      bl #0x310450
0035416c  04 30 9d e5                                      ldr r3, [sp, #4]
00354170  05 51 87 e0                                      add r5, r7, r5, lsl #2
00354174  00 70 84 e5                                      str r7, [r4]
00354178  03 31 87 e0                                      add r3, r7, r3, lsl #2
0035417c  08 30 84 e5                                      str r3, [r4, #8]
00354180  04 50 84 e5                                      str r5, [r4, #4]
00354184  e4 ff ff ea                                      b #0x35411c
00354188  07 00 a0 e1                                      mov r0, r7
0035418c  02 10 a0 e1                                      mov r1, r2
00354190  0c 20 a0 e1                                      mov r2, ip
00354194  67 e7 fe eb                                      bl #0x30df38
00354198  00 70 94 e5                                      ldr r7, [r4]
0035419c  05 51 87 e0                                      add r5, r7, r5, lsl #2
003541a0  04 50 84 e5                                      str r5, [r4, #4]
003541a4  dc ff ff ea                                      b #0x35411c
003541a8  02 10 a0 e1                                      mov r1, r2
003541ac  07 00 a0 e1                                      mov r0, r7
003541b0  0c 20 a0 e1                                      mov r2, ip
003541b4  5f e7 fe eb                                      bl #0x30df38
003541b8  04 00 94 e5                                      ldr r0, [r4, #4]
003541bc  00 70 94 e5                                      ldr r7, [r4]
003541c0  0c 00 96 e8                                      ldm r6, {r2, r3}
003541c4  00 10 67 e0                                      rsb r1, r7, r0
003541c8  03 10 c1 e3                                      bic r1, r1, #3
003541cc  01 10 82 e0                                      add r1, r2, r1
003541d0  d7 ff ff ea                                      b #0x354134
