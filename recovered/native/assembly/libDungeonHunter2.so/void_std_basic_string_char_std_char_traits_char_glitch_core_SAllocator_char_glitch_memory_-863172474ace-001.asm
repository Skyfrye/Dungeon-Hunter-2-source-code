; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003209f8, declared_size=84, range_size=84, mode=arm
; class-group: void std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE19_M_range_initializeIPKwEEvT_SB_RKSt20forward_iterator_tag
; demangled: void std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_range_initialize<wchar_t const*>(wchar_t const*, wchar_t const*, std::forward_iterator_tag const&)
; decoder-mode: arm
003209f8  02 20 61 e0                                      rsb r2, r1, r2
003209fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00320a00  42 51 a0 e1                                      asr r5, r2, #2
00320a04  01 40 a0 e1                                      mov r4, r1
00320a08  01 10 85 e2                                      add r1, r5, #1
00320a0c  00 60 a0 e1                                      mov r6, r0
00320a10  e4 ff ff eb                                      bl #0x3209a8
00320a14  00 00 55 e3                                      cmp r5, #0
00320a18  14 10 96 e5                                      ldr r1, [r6, #0x14]
00320a1c  06 00 00 da                                      ble #0x320a3c
00320a20  00 30 a0 e3                                      mov r3, #0
00320a24  03 21 94 e7                                      ldr r2, [r4, r3, lsl #2]
00320a28  03 20 c1 e7                                      strb r2, [r1, r3]
00320a2c  01 30 83 e2                                      add r3, r3, #1
00320a30  05 00 53 e1                                      cmp r3, r5
00320a34  fa ff ff 1a                                      bne #0x320a24
00320a38  03 10 81 e0                                      add r1, r1, r3
00320a3c  00 30 a0 e3                                      mov r3, #0
00320a40  10 10 86 e5                                      str r1, [r6, #0x10]
00320a44  00 30 c1 e5                                      strb r3, [r1]
00320a48  70 80 bd e8                                      pop {r4, r5, r6, pc}
