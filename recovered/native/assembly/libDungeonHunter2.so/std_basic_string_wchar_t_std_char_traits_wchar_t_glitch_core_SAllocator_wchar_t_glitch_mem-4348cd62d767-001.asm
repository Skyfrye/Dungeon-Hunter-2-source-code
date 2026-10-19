; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00558c8c, declared_size=284, range_size=284, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >& std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE10_M_appendTIPKwEERS7_T_SC_RKSt20forward_iterator_tag
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >& std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_appendT<wchar_t const*>(wchar_t const*, wchar_t const*, std::forward_iterator_tag const&)
; decoder-mode: arm
00558c8c  02 00 51 e1                                      cmp r1, r2
00558c90  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00558c94  01 50 a0 e1                                      mov r5, r1
00558c98  00 40 a0 e1                                      mov r4, r0
00558c9c  1c 00 00 0a                                      beq #0x558d14
00558ca0  44 30 90 e5                                      ldr r3, [r0, #0x44]
00558ca4  02 70 61 e0                                      rsb r7, r1, r2
00558ca8  47 61 a0 e1                                      asr r6, r7, #2
00558cac  00 00 53 e1                                      cmp r3, r0
00558cb0  40 30 90 05                                      ldreq r3, [r0, #0x40]
00558cb4  00 10 90 15                                      ldrne r1, [r0]
00558cb8  40 30 90 15                                      ldrne r3, [r0, #0x40]
00558cbc  03 10 60 00                                      rsbeq r1, r0, r3
00558cc0  41 11 a0 01                                      asreq r1, r1, #2
00558cc4  01 10 63 10                                      rsbne r1, r3, r1
00558cc8  10 10 61 02                                      rsbeq r1, r1, #0x10
00558ccc  41 11 a0 11                                      asrne r1, r1, #2
00558cd0  01 00 56 e1                                      cmp r6, r1
00558cd4  10 00 00 2a                                      bhs #0x558d1c
00558cd8  00 00 95 e5                                      ldr r0, [r5]
00558cdc  04 10 85 e2                                      add r1, r5, #4
00558ce0  01 00 52 e1                                      cmp r2, r1
00558ce4  00 00 83 e5                                      str r0, [r3]
00558ce8  40 00 94 e5                                      ldr r0, [r4, #0x40]
00558cec  03 00 00 0a                                      beq #0x558d00
00558cf0  04 00 80 e2                                      add r0, r0, #4
00558cf4  02 20 61 e0                                      rsb r2, r1, r2
00558cf8  da d6 f6 eb                                      bl #0x30e868
00558cfc  40 00 94 e5                                      ldr r0, [r4, #0x40]
00558d00  00 30 a0 e3                                      mov r3, #0
00558d04  06 31 80 e7                                      str r3, [r0, r6, lsl #2]
00558d08  40 30 94 e5                                      ldr r3, [r4, #0x40]
00558d0c  06 61 83 e0                                      add r6, r3, r6, lsl #2
00558d10  40 60 84 e5                                      str r6, [r4, #0x40]
00558d14  04 00 a0 e1                                      mov r0, r4
00558d18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00558d1c  06 10 a0 e1                                      mov r1, r6
00558d20  72 1d f7 eb                                      bl #0x3202f0
00558d24  00 81 a0 e1                                      lsl r8, r0, #2
00558d28  00 10 a0 e3                                      mov r1, #0
00558d2c  08 00 a0 e1                                      mov r0, r8
00558d30  0c de f6 eb                                      bl #0x310568
00558d34  44 10 94 e5                                      ldr r1, [r4, #0x44]
00558d38  40 a0 94 e5                                      ldr sl, [r4, #0x40]
00558d3c  00 60 a0 e1                                      mov r6, r0
00558d40  0a 00 51 e1                                      cmp r1, sl
00558d44  00 00 a0 01                                      moveq r0, r0
00558d48  03 00 00 0a                                      beq #0x558d5c
00558d4c  0a a0 61 e0                                      rsb sl, r1, sl
00558d50  0a 20 a0 e1                                      mov r2, sl
00558d54  c3 d6 f6 eb                                      bl #0x30e868
00558d58  0a 00 80 e0                                      add r0, r0, sl
00558d5c  07 20 a0 e1                                      mov r2, r7
00558d60  05 10 a0 e1                                      mov r1, r5
00558d64  bf d6 f6 eb                                      bl #0x30e868
00558d68  00 30 a0 e3                                      mov r3, #0
00558d6c  07 30 80 e7                                      str r3, [r0, r7]
00558d70  44 30 94 e5                                      ldr r3, [r4, #0x44]
00558d74  07 70 80 e0                                      add r7, r0, r7
00558d78  03 00 54 e1                                      cmp r4, r3
00558d7c  03 00 00 0a                                      beq #0x558d90
00558d80  00 00 53 e3                                      cmp r3, #0
00558d84  01 00 00 0a                                      beq #0x558d90
00558d88  03 00 a0 e1                                      mov r0, r3
00558d8c  af dd f6 eb                                      bl #0x310450
00558d90  08 80 86 e0                                      add r8, r6, r8
00558d94  00 80 84 e5                                      str r8, [r4]
00558d98  40 70 84 e5                                      str r7, [r4, #0x40]
00558d9c  44 60 84 e5                                      str r6, [r4, #0x44]
00558da0  04 00 a0 e1                                      mov r0, r4
00558da4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
