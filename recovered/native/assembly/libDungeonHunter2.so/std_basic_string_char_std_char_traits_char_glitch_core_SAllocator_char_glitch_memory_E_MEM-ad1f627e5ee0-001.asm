; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034e21c, declared_size=264, range_size=264, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >& std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE10_M_appendTIPKcEERS7_T_SC_RKSt20forward_iterator_tag
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >& std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_appendT<char const*>(char const*, char const*, std::forward_iterator_tag const&)
; decoder-mode: arm
0034e21c  02 00 51 e1                                      cmp r1, r2
0034e220  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0034e224  01 50 a0 e1                                      mov r5, r1
0034e228  00 40 a0 e1                                      mov r4, r0
0034e22c  18 00 00 0a                                      beq #0x34e294
0034e230  14 30 90 e5                                      ldr r3, [r0, #0x14]
0034e234  02 60 61 e0                                      rsb r6, r1, r2
0034e238  00 00 53 e1                                      cmp r3, r0
0034e23c  10 30 90 05                                      ldreq r3, [r0, #0x10]
0034e240  00 10 90 15                                      ldrne r1, [r0]
0034e244  10 30 90 15                                      ldrne r3, [r0, #0x10]
0034e248  10 10 80 02                                      addeq r1, r0, #0x10
0034e24c  01 10 63 e0                                      rsb r1, r3, r1
0034e250  01 00 56 e1                                      cmp r6, r1
0034e254  10 00 00 2a                                      bhs #0x34e29c
0034e258  00 00 d5 e5                                      ldrb r0, [r5]
0034e25c  01 10 85 e2                                      add r1, r5, #1
0034e260  01 00 52 e1                                      cmp r2, r1
0034e264  00 00 c3 e5                                      strb r0, [r3]
0034e268  10 00 94 e5                                      ldr r0, [r4, #0x10]
0034e26c  03 00 00 0a                                      beq #0x34e280
0034e270  01 00 80 e2                                      add r0, r0, #1
0034e274  02 20 61 e0                                      rsb r2, r1, r2
0034e278  7a 01 ff eb                                      bl #0x30e868
0034e27c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0034e280  00 30 a0 e3                                      mov r3, #0
0034e284  06 30 c0 e7                                      strb r3, [r0, r6]
0034e288  10 30 94 e5                                      ldr r3, [r4, #0x10]
0034e28c  06 60 83 e0                                      add r6, r3, r6
0034e290  10 60 84 e5                                      str r6, [r4, #0x10]
0034e294  04 00 a0 e1                                      mov r0, r4
0034e298  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0034e29c  06 10 a0 e1                                      mov r1, r6
0034e2a0  2c 48 ff eb                                      bl #0x320358
0034e2a4  00 10 a0 e3                                      mov r1, #0
0034e2a8  00 a0 a0 e1                                      mov sl, r0
0034e2ac  ad 08 ff eb                                      bl #0x310568
0034e2b0  14 10 94 e5                                      ldr r1, [r4, #0x14]
0034e2b4  10 80 94 e5                                      ldr r8, [r4, #0x10]
0034e2b8  00 70 a0 e1                                      mov r7, r0
0034e2bc  08 00 51 e1                                      cmp r1, r8
0034e2c0  00 00 a0 01                                      moveq r0, r0
0034e2c4  03 00 00 0a                                      beq #0x34e2d8
0034e2c8  08 80 61 e0                                      rsb r8, r1, r8
0034e2cc  08 20 a0 e1                                      mov r2, r8
0034e2d0  64 01 ff eb                                      bl #0x30e868
0034e2d4  08 00 80 e0                                      add r0, r0, r8
0034e2d8  06 20 a0 e1                                      mov r2, r6
0034e2dc  05 10 a0 e1                                      mov r1, r5
0034e2e0  60 01 ff eb                                      bl #0x30e868
0034e2e4  00 30 a0 e3                                      mov r3, #0
0034e2e8  06 30 c0 e7                                      strb r3, [r0, r6]
0034e2ec  14 30 94 e5                                      ldr r3, [r4, #0x14]
0034e2f0  06 60 80 e0                                      add r6, r0, r6
0034e2f4  03 00 54 e1                                      cmp r4, r3
0034e2f8  03 00 00 0a                                      beq #0x34e30c
0034e2fc  00 00 53 e3                                      cmp r3, #0
0034e300  01 00 00 0a                                      beq #0x34e30c
0034e304  03 00 a0 e1                                      mov r0, r3
0034e308  50 08 ff eb                                      bl #0x310450
0034e30c  0a a0 87 e0                                      add sl, r7, sl
0034e310  00 a0 84 e5                                      str sl, [r4]
0034e314  10 60 84 e5                                      str r6, [r4, #0x10]
0034e318  14 70 84 e5                                      str r7, [r4, #0x14]
0034e31c  04 00 a0 e1                                      mov r0, r4
0034e320  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
