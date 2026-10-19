; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00320920, declared_size=92, range_size=92, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int)
; decoder-mode: arm
00320920  07 01 71 e3                                      cmn r1, #0xc0000001
00320924  70 40 2d e9                                      push {r4, r5, r6, lr}
00320928  00 40 a0 e1                                      mov r4, r0
0032092c  04 00 00 8a                                      bhi #0x320944
00320930  00 00 51 e3                                      cmp r1, #0
00320934  02 00 00 0a                                      beq #0x320944
00320938  10 00 51 e3                                      cmp r1, #0x10
0032093c  04 00 00 8a                                      bhi #0x320954
00320940  70 80 bd e8                                      pop {r4, r5, r6, pc}
00320944  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
00320948  00 00 8f e0                                      add r0, pc, r0
0032094c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00320950  3a a1 0f ea                                      b #0x708e40
00320954  01 51 a0 e1                                      lsl r5, r1, #2
00320958  05 00 a0 e1                                      mov r0, r5
0032095c  00 10 a0 e3                                      mov r1, #0
00320960  00 bf ff eb                                      bl #0x310568
00320964  05 50 80 e0                                      add r5, r0, r5
00320968  00 50 84 e5                                      str r5, [r4]
0032096c  44 00 84 e5                                      str r0, [r4, #0x44]
00320970  40 00 84 e5                                      str r0, [r4, #0x40]
00320974  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00320978  10 db 59 00                                      .byte 0x10, 0xdb, 0x59, 0x00

; FUNCTION 0x00540628, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
00540628  1e ff 2f e1                                      bx lr

; FUNCTION 0x005413e8, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
005413e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054638c, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.3
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.3]
; decoder-mode: arm
0054638c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00548328, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.3
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.3]
; decoder-mode: arm
00548328  1e ff 2f e1                                      bx lr

; FUNCTION 0x00549a38, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.4
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.4]
; decoder-mode: arm
00549a38  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054d100, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.0
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.0]
; decoder-mode: arm
0054d100  1e ff 2f e1                                      bx lr

; FUNCTION 0x00552c20, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
00552c20  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055b18c, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
0055b18c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055ed7c, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.4
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.4]
; decoder-mode: arm
0055ed7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a613c, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.4
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.4]
; decoder-mode: arm
006a613c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a7914, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIwN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.4
; demangled: std::priv::_String_base<wchar_t, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.4]
; decoder-mode: arm
006a7914  1e ff 2f e1                                      bx lr
