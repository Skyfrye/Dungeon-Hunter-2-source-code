; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00558da8, declared_size=128, range_size=128, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > std
; alias: _ZStplIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEESbIT_T0_T1_ERKSB_PKS8_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > std::operator+<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, wchar_t const*)
; decoder-mode: arm
00558da8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00558dac  00 40 a0 e1                                      mov r4, r0
00558db0  0c d0 4d e2                                      sub sp, sp, #0xc
00558db4  02 00 a0 e1                                      mov r0, r2
00558db8  02 70 a0 e1                                      mov r7, r2
00558dbc  01 50 a0 e1                                      mov r5, r1
00558dc0  b0 d7 f6 eb                                      bl #0x30ec88
00558dc4  44 30 95 e5                                      ldr r3, [r5, #0x44]
00558dc8  40 10 95 e5                                      ldr r1, [r5, #0x40]
00558dcc  00 60 a0 e1                                      mov r6, r0
00558dd0  40 40 84 e5                                      str r4, [r4, #0x40]
00558dd4  01 10 63 e0                                      rsb r1, r3, r1
00558dd8  41 11 80 e0                                      add r1, r0, r1, asr #2
00558ddc  44 40 84 e5                                      str r4, [r4, #0x44]
00558de0  04 00 a0 e1                                      mov r0, r4
00558de4  01 10 81 e2                                      add r1, r1, #1
00558de8  cc 1e f7 eb                                      bl #0x320920
00558dec  40 30 94 e5                                      ldr r3, [r4, #0x40]
00558df0  00 20 a0 e3                                      mov r2, #0
00558df4  04 00 a0 e1                                      mov r0, r4
00558df8  00 20 83 e5                                      str r2, [r3]
00558dfc  40 20 95 e5                                      ldr r2, [r5, #0x40]
00558e00  44 10 95 e5                                      ldr r1, [r5, #0x44]
00558e04  8f 1f f7 eb                                      bl #0x320c48
00558e08  04 00 a0 e1                                      mov r0, r4
00558e0c  07 10 a0 e1                                      mov r1, r7
00558e10  06 21 87 e0                                      add r2, r7, r6, lsl #2
00558e14  04 30 8d e2                                      add r3, sp, #4
00558e18  9b ff ff eb                                      bl #0x558c8c
00558e1c  04 00 a0 e1                                      mov r0, r4
00558e20  0c d0 8d e2                                      add sp, sp, #0xc
00558e24  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00570ed8, declared_size=116, range_size=116, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > std
; alias: _ZStplIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEESbIT_T0_T1_ERKSB_SD_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > std::operator+<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00570ed8  70 40 2d e9                                      push {r4, r5, r6, lr}
00570edc  01 60 a0 e1                                      mov r6, r1
00570ee0  40 c0 92 e5                                      ldr ip, [r2, #0x40]
00570ee4  44 30 92 e5                                      ldr r3, [r2, #0x44]
00570ee8  02 50 a0 e1                                      mov r5, r2
00570eec  40 10 91 e5                                      ldr r1, [r1, #0x40]
00570ef0  44 20 96 e5                                      ldr r2, [r6, #0x44]
00570ef4  0c 30 63 e0                                      rsb r3, r3, ip
00570ef8  43 31 a0 e1                                      asr r3, r3, #2
00570efc  01 10 62 e0                                      rsb r1, r2, r1
00570f00  00 40 a0 e1                                      mov r4, r0
00570f04  41 11 83 e0                                      add r1, r3, r1, asr #2
00570f08  40 00 84 e5                                      str r0, [r4, #0x40]
00570f0c  44 00 84 e5                                      str r0, [r4, #0x44]
00570f10  01 10 81 e2                                      add r1, r1, #1
00570f14  81 be f6 eb                                      bl #0x320920
00570f18  40 30 94 e5                                      ldr r3, [r4, #0x40]
00570f1c  00 20 a0 e3                                      mov r2, #0
00570f20  04 00 a0 e1                                      mov r0, r4
00570f24  00 20 83 e5                                      str r2, [r3]
00570f28  40 20 96 e5                                      ldr r2, [r6, #0x40]
00570f2c  44 10 96 e5                                      ldr r1, [r6, #0x44]
00570f30  44 bf f6 eb                                      bl #0x320c48
00570f34  04 00 a0 e1                                      mov r0, r4
00570f38  40 20 95 e5                                      ldr r2, [r5, #0x40]
00570f3c  44 10 95 e5                                      ldr r1, [r5, #0x44]
00570f40  40 bf f6 eb                                      bl #0x320c48
00570f44  04 00 a0 e1                                      mov r0, r4
00570f48  70 80 bd e8                                      pop {r4, r5, r6, pc}
