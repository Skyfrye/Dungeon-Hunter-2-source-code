; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00893f00, declared_size=76, range_size=76, mode=arm
; class-group: std::list<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::SAllocator<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt4listISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS2_10VoxMemHintE0EEEENS3_IS6_LS4_0EEEE5eraseENSt4priv14_List_iteratorIS6_St16_Nonconst_traitsIS6_EEE
; demangled: std::list<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::SAllocator<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::erase(std::priv::_List_iterator<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, std::_Nonconst_traits<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > > >)
; decoder-mode: arm
00893f00  70 40 2d e9                                      push {r4, r5, r6, lr}
00893f04  00 40 92 e5                                      ldr r4, [r2]
00893f08  00 60 a0 e1                                      mov r6, r0
00893f0c  00 50 94 e5                                      ldr r5, [r4]
00893f10  04 20 94 e5                                      ldr r2, [r4, #4]
00893f14  08 30 84 e2                                      add r3, r4, #8
00893f18  00 50 82 e5                                      str r5, [r2]
00893f1c  04 20 85 e5                                      str r2, [r5, #4]
00893f20  14 00 93 e5                                      ldr r0, [r3, #0x14]
00893f24  03 00 50 e1                                      cmp r0, r3
00893f28  02 00 00 0a                                      beq #0x893f38
00893f2c  00 00 50 e3                                      cmp r0, #0
00893f30  00 00 00 0a                                      beq #0x893f38
00893f34  42 f1 e9 eb                                      bl #0x310444
00893f38  04 00 a0 e1                                      mov r0, r4
00893f3c  40 f1 e9 eb                                      bl #0x310444
00893f40  00 50 86 e5                                      str r5, [r6]
00893f44  06 00 a0 e1                                      mov r0, r6
00893f48  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00894190, declared_size=92, range_size=92, mode=arm
; class-group: std::list<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::SAllocator<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt4listISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS2_10VoxMemHintE0EEEENS3_IS6_LS4_0EEEE6insertENSt4priv14_List_iteratorIS6_St16_Nonconst_traitsIS6_EEERKS6_
; demangled: std::list<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::SAllocator<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::insert(std::priv::_List_iterator<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, std::_Nonconst_traits<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > > >, std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
00894190  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00894194  00 10 a0 e3                                      mov r1, #0
00894198  00 40 a0 e1                                      mov r4, r0
0089419c  20 00 a0 e3                                      mov r0, #0x20
008941a0  03 60 a0 e1                                      mov r6, r3
008941a4  02 70 a0 e1                                      mov r7, r2
008941a8  26 f1 e9 eb                                      bl #0x310648
008941ac  00 50 a0 e1                                      mov r5, r0
008941b0  08 00 80 e2                                      add r0, r0, #8
008941b4  18 00 85 e5                                      str r0, [r5, #0x18]
008941b8  1c 00 85 e5                                      str r0, [r5, #0x1c]
008941bc  10 20 96 e5                                      ldr r2, [r6, #0x10]
008941c0  14 10 96 e5                                      ldr r1, [r6, #0x14]
008941c4  49 6c ff eb                                      bl #0x86f2f0
008941c8  00 30 97 e5                                      ldr r3, [r7]
008941cc  04 00 a0 e1                                      mov r0, r4
008941d0  04 20 93 e5                                      ldr r2, [r3, #4]
008941d4  00 30 85 e5                                      str r3, [r5]
008941d8  04 20 85 e5                                      str r2, [r5, #4]
008941dc  00 50 82 e5                                      str r5, [r2]
008941e0  04 50 83 e5                                      str r5, [r3, #4]
008941e4  00 50 84 e5                                      str r5, [r4]
008941e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
