; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003209a8, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj
; demangled: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int)
; decoder-mode: arm
003209a8  70 40 2d e9                                      push {r4, r5, r6, lr}
003209ac  00 40 51 e2                                      subs r4, r1, #0
003209b0  00 50 a0 e1                                      mov r5, r0
003209b4  02 00 00 0a                                      beq #0x3209c4
003209b8  10 00 54 e3                                      cmp r4, #0x10
003209bc  04 00 00 8a                                      bhi #0x3209d4
003209c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003209c4  28 00 9f e5                                      ldr r0, [pc, #0x28]
003209c8  00 00 8f e0                                      add r0, pc, r0
003209cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
003209d0  1a a1 0f ea                                      b #0x708e40
003209d4  04 00 a0 e1                                      mov r0, r4
003209d8  00 10 a0 e3                                      mov r1, #0
003209dc  e1 be ff eb                                      bl #0x310568
003209e0  04 40 80 e0                                      add r4, r0, r4
003209e4  00 40 85 e5                                      str r4, [r5]
003209e8  14 00 85 e5                                      str r0, [r5, #0x14]
003209ec  10 00 85 e5                                      str r0, [r5, #0x10]
003209f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003209f4  90 da 59 00                                      .byte 0x90, 0xda, 0x59, 0x00

; FUNCTION 0x00556130, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.3
; demangled: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.3]
; decoder-mode: arm
00556130  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056c2bc, declared_size=28, range_size=28, mode=arm
; class-group: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE19_M_deallocate_blockEv
; demangled: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_deallocate_block()
; decoder-mode: arm
0056c2bc  14 30 90 e5                                      ldr r3, [r0, #0x14]
0056c2c0  00 00 53 e1                                      cmp r3, r0
0056c2c4  1e ff 2f 01                                      bxeq lr
0056c2c8  00 00 53 e3                                      cmp r3, #0
0056c2cc  1e ff 2f 01                                      bxeq lr
0056c2d0  03 00 a0 e1                                      mov r0, r3
0056c2d4  5d 90 f6 ea                                      b #0x310450

; FUNCTION 0x00570b64, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.0
; demangled: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.0]
; decoder-mode: arm
00570b64  1e ff 2f e1                                      bx lr

; FUNCTION 0x00598ee0, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
00598ee0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005aaf18, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.7
; demangled: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.7]
; decoder-mode: arm
005aaf18  1e ff 2f e1                                      bx lr

; FUNCTION 0x006adcec, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.3
; demangled: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.3]
; decoder-mode: arm
006adcec  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d1278, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj.clone.7
; demangled: std::priv::_String_base<char, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_block(unsigned int) [clone .clone.7]
; decoder-mode: arm
006d1278  1e ff 2f e1                                      bx lr
