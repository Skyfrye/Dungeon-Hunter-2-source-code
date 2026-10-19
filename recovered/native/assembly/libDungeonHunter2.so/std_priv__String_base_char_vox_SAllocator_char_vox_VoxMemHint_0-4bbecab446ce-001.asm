; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0086f2a0, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_String_base<char, vox::SAllocator<char, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv12_String_baseIcN3vox10SAllocatorIcLNS1_10VoxMemHintE0EEEE17_M_allocate_blockEj
; demangled: std::priv::_String_base<char, vox::SAllocator<char, (vox::VoxMemHint)0> >::_M_allocate_block(unsigned int)
; decoder-mode: arm
0086f2a0  70 40 2d e9                                      push {r4, r5, r6, lr}
0086f2a4  00 40 51 e2                                      subs r4, r1, #0
0086f2a8  00 50 a0 e1                                      mov r5, r0
0086f2ac  02 00 00 0a                                      beq #0x86f2bc
0086f2b0  10 00 54 e3                                      cmp r4, #0x10
0086f2b4  04 00 00 8a                                      bhi #0x86f2cc
0086f2b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0086f2bc  28 00 9f e5                                      ldr r0, [pc, #0x28]
0086f2c0  00 00 8f e0                                      add r0, pc, r0
0086f2c4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0086f2c8  0e 3c 01 ea                                      b #0x8be308
0086f2cc  04 00 a0 e1                                      mov r0, r4
0086f2d0  00 10 a0 e3                                      mov r1, #0
0086f2d4  db 84 ea eb                                      bl #0x310648
0086f2d8  04 40 80 e0                                      add r4, r0, r4
0086f2dc  00 40 85 e5                                      str r4, [r5]
0086f2e0  14 00 85 e5                                      str r0, [r5, #0x14]
0086f2e4  10 00 85 e5                                      str r0, [r5, #0x10]
0086f2e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0086f2ec  98 f1 04 00                                      .byte 0x98, 0xf1, 0x04, 0x00

; FUNCTION 0x00888c30, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, vox::SAllocator<char, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv12_String_baseIcN3vox10SAllocatorIcLNS1_10VoxMemHintE0EEEE17_M_allocate_blockEj.clone.0
; demangled: std::priv::_String_base<char, vox::SAllocator<char, (vox::VoxMemHint)0> >::_M_allocate_block(unsigned int) [clone .clone.0]
; decoder-mode: arm
00888c30  1e ff 2f e1                                      bx lr
