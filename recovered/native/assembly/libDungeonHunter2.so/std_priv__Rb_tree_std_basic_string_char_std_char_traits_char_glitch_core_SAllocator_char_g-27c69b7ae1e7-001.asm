; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00657a94, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_PNS3_7collada8CResFileEENS_10_Select1stISH_EENS_11_MapTraitsTISH_EENS5_ISH_LS7_0EEEE14_M_create_nodeERKSH_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> const&)
; decoder-mode: arm
00657a94  70 40 2d e9                                      push {r4, r5, r6, lr}
00657a98  2c 00 a0 e3                                      mov r0, #0x2c
00657a9c  01 50 a0 e1                                      mov r5, r1
00657aa0  00 10 a0 e3                                      mov r1, #0
00657aa4  af e2 f2 eb                                      bl #0x310568
00657aa8  00 40 a0 e1                                      mov r4, r0
00657aac  10 00 80 e2                                      add r0, r0, #0x10
00657ab0  20 00 84 e5                                      str r0, [r4, #0x20]
00657ab4  24 00 84 e5                                      str r0, [r4, #0x24]
00657ab8  10 20 95 e5                                      ldr r2, [r5, #0x10]
00657abc  14 10 95 e5                                      ldr r1, [r5, #0x14]
00657ac0  4b 39 f3 eb                                      bl #0x325ff4
00657ac4  18 20 95 e5                                      ldr r2, [r5, #0x18]
00657ac8  00 30 a0 e3                                      mov r3, #0
00657acc  0c 30 84 e5                                      str r3, [r4, #0xc]
00657ad0  28 20 84 e5                                      str r2, [r4, #0x28]
00657ad4  08 30 84 e5                                      str r3, [r4, #8]
00657ad8  04 00 a0 e1                                      mov r0, r4
00657adc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00657ae0, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_PNS3_7collada8CResFileEENS_10_Select1stISH_EENS_11_MapTraitsTISH_EENS5_ISH_LS7_0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSH_SP_SP_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00657ae0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00657ae4  02 00 51 e1                                      cmp r1, r2
00657ae8  0c d0 4d e2                                      sub sp, sp, #0xc
00657aec  01 40 a0 e1                                      mov r4, r1
00657af0  02 50 a0 e1                                      mov r5, r2
00657af4  00 60 a0 e1                                      mov r6, r0
00657af8  23 00 00 0a                                      beq #0x657b8c
00657afc  24 20 9d e5                                      ldr r2, [sp, #0x24]
00657b00  00 00 52 e3                                      cmp r2, #0
00657b04  12 00 00 0a                                      beq #0x657b54
00657b08  03 10 a0 e1                                      mov r1, r3
00657b0c  04 00 a0 e1                                      mov r0, r4
00657b10  df ff ff eb                                      bl #0x657a94
00657b14  0c 00 85 e5                                      str r0, [r5, #0xc]
00657b18  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00657b1c  00 70 a0 e1                                      mov r7, r0
00657b20  03 00 55 e1                                      cmp r5, r3
00657b24  16 00 00 0a                                      beq #0x657b84
00657b28  07 00 a0 e1                                      mov r0, r7
00657b2c  04 50 87 e5                                      str r5, [r7, #4]
00657b30  04 10 84 e2                                      add r1, r4, #4
00657b34  09 ef f2 eb                                      bl #0x313760
00657b38  10 30 94 e5                                      ldr r3, [r4, #0x10]
00657b3c  06 00 a0 e1                                      mov r0, r6
00657b40  01 30 83 e2                                      add r3, r3, #1
00657b44  10 30 84 e5                                      str r3, [r4, #0x10]
00657b48  00 70 86 e5                                      str r7, [r6]
00657b4c  0c d0 8d e2                                      add sp, sp, #0xc
00657b50  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00657b54  20 20 9d e5                                      ldr r2, [sp, #0x20]
00657b58  00 00 52 e3                                      cmp r2, #0
00657b5c  12 00 00 0a                                      beq #0x657bac
00657b60  03 10 a0 e1                                      mov r1, r3
00657b64  04 00 a0 e1                                      mov r0, r4
00657b68  c9 ff ff eb                                      bl #0x657a94
00657b6c  08 00 85 e5                                      str r0, [r5, #8]
00657b70  08 30 94 e5                                      ldr r3, [r4, #8]
00657b74  00 70 a0 e1                                      mov r7, r0
00657b78  03 00 55 e1                                      cmp r5, r3
00657b7c  08 00 84 05                                      streq r0, [r4, #8]
00657b80  e8 ff ff ea                                      b #0x657b28
00657b84  0c 70 84 e5                                      str r7, [r4, #0xc]
00657b88  e6 ff ff ea                                      b #0x657b28
00657b8c  03 10 a0 e1                                      mov r1, r3
00657b90  04 00 a0 e1                                      mov r0, r4
00657b94  be ff ff eb                                      bl #0x657a94
00657b98  00 70 a0 e1                                      mov r7, r0
00657b9c  08 00 84 e5                                      str r0, [r4, #8]
00657ba0  04 00 84 e5                                      str r0, [r4, #4]
00657ba4  0c 00 84 e5                                      str r0, [r4, #0xc]
00657ba8  de ff ff ea                                      b #0x657b28
00657bac  14 00 81 e2                                      add r0, r1, #0x14
00657bb0  10 20 85 e2                                      add r2, r5, #0x10
00657bb4  03 10 a0 e1                                      mov r1, r3
00657bb8  04 30 8d e5                                      str r3, [sp, #4]
00657bbc  cd 51 fc eb                                      bl #0x56c2f8
00657bc0  00 00 50 e3                                      cmp r0, #0
00657bc4  04 30 9d e5                                      ldr r3, [sp, #4]
00657bc8  ce ff ff 0a                                      beq #0x657b08
00657bcc  e3 ff ff ea                                      b #0x657b60

; FUNCTION 0x00658270, declared_size=84, range_size=84, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_PNS3_7collada8CResFileEENS_10_Select1stISH_EENS_11_MapTraitsTISH_EENS5_ISH_LS7_0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00658270  70 40 2d e9                                      push {r4, r5, r6, lr}
00658274  00 40 51 e2                                      subs r4, r1, #0
00658278  00 50 a0 e1                                      mov r5, r0
0065827c  0f 00 00 0a                                      beq #0x6582c0
00658280  05 00 a0 e1                                      mov r0, r5
00658284  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00658288  f8 ff ff eb                                      bl #0x658270
0065828c  10 20 84 e2                                      add r2, r4, #0x10
00658290  14 30 92 e5                                      ldr r3, [r2, #0x14]
00658294  08 60 94 e5                                      ldr r6, [r4, #8]
00658298  02 00 53 e1                                      cmp r3, r2
0065829c  03 00 a0 e1                                      mov r0, r3
006582a0  02 00 00 0a                                      beq #0x6582b0
006582a4  00 00 53 e3                                      cmp r3, #0
006582a8  00 00 00 0a                                      beq #0x6582b0
006582ac  67 e0 f2 eb                                      bl #0x310450
006582b0  04 00 a0 e1                                      mov r0, r4
006582b4  65 e0 f2 eb                                      bl #0x310450
006582b8  00 40 56 e2                                      subs r4, r6, #0
006582bc  ef ff ff 1a                                      bne #0x658280
006582c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006584a8, declared_size=84, range_size=84, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_PNS3_7collada8CResFileEENS_10_Select1stISH_EENS_11_MapTraitsTISH_EENS5_ISH_LS7_0EEEE5eraseENS_17_Rb_tree_iteratorISH_SL_EE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::erase(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> > >)
; decoder-mode: arm
006584a8  70 40 2d e9                                      push {r4, r5, r6, lr}
006584ac  00 40 a0 e1                                      mov r4, r0
006584b0  0c 30 84 e2                                      add r3, r4, #0xc
006584b4  00 00 91 e5                                      ldr r0, [r1]
006584b8  08 20 84 e2                                      add r2, r4, #8
006584bc  04 10 84 e2                                      add r1, r4, #4
006584c0  cf 76 f3 eb                                      bl #0x336004
006584c4  10 30 80 e2                                      add r3, r0, #0x10
006584c8  00 50 a0 e1                                      mov r5, r0
006584cc  14 00 93 e5                                      ldr r0, [r3, #0x14]
006584d0  03 00 50 e1                                      cmp r0, r3
006584d4  02 00 00 0a                                      beq #0x6584e4
006584d8  00 00 50 e3                                      cmp r0, #0
006584dc  00 00 00 0a                                      beq #0x6584e4
006584e0  da df f2 eb                                      bl #0x310450
006584e4  05 00 a0 e1                                      mov r0, r5
006584e8  d8 df f2 eb                                      bl #0x310450
006584ec  10 30 94 e5                                      ldr r3, [r4, #0x10]
006584f0  01 30 43 e2                                      sub r3, r3, #1
006584f4  10 30 84 e5                                      str r3, [r4, #0x10]
006584f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00659874, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_PNS3_7collada8CResFileEENS_10_Select1stISH_EENS_11_MapTraitsTISH_EENS5_ISH_LS7_0EEEE13insert_uniqueERKSH_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> const&)
; decoder-mode: arm
00659874  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00659878  04 50 91 e5                                      ldr r5, [r1, #4]
0065987c  14 d0 4d e2                                      sub sp, sp, #0x14
00659880  01 90 a0 e1                                      mov sb, r1
00659884  00 00 55 e3                                      cmp r5, #0
00659888  00 40 a0 e1                                      mov r4, r0
0065988c  02 80 a0 e1                                      mov r8, r2
00659890  38 00 00 0a                                      beq #0x659978
00659894  14 70 92 e5                                      ldr r7, [r2, #0x14]
00659898  10 b0 92 e5                                      ldr fp, [r2, #0x10]
0065989c  0b a0 67 e0                                      rsb sl, r7, fp
006598a0  04 00 00 ea                                      b #0x6598b8
006598a4  08 30 95 e5                                      ldr r3, [r5, #8]
006598a8  01 10 a0 e3                                      mov r1, #1
006598ac  00 00 53 e3                                      cmp r3, #0
006598b0  16 00 00 0a                                      beq #0x659910
006598b4  03 50 a0 e1                                      mov r5, r3
006598b8  24 30 95 e5                                      ldr r3, [r5, #0x24]
006598bc  20 60 95 e5                                      ldr r6, [r5, #0x20]
006598c0  07 00 a0 e1                                      mov r0, r7
006598c4  03 10 a0 e1                                      mov r1, r3
006598c8  06 60 63 e0                                      rsb r6, r3, r6
006598cc  0a 00 56 e1                                      cmp r6, sl
006598d0  06 20 a0 b1                                      movlt r2, r6
006598d4  0a 20 a0 a1                                      movge r2, sl
006598d8  40 d3 f2 eb                                      bl #0x30e5e0
006598dc  00 00 50 e3                                      cmp r0, #0
006598e0  05 20 a0 e1                                      mov r2, r5
006598e4  03 00 00 1a                                      bne #0x6598f8
006598e8  06 00 5a e1                                      cmp sl, r6
006598ec  ec ff ff ba                                      blt #0x6598a4
006598f0  00 00 a0 d3                                      movle r0, #0
006598f4  01 00 a0 c3                                      movgt r0, #1
006598f8  00 00 50 e3                                      cmp r0, #0
006598fc  e8 ff ff ba                                      blt #0x6598a4
00659900  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00659904  00 10 a0 e3                                      mov r1, #0
00659908  00 00 53 e3                                      cmp r3, #0
0065990c  e8 ff ff 1a                                      bne #0x6598b4
00659910  00 00 51 e3                                      cmp r1, #0
00659914  05 a0 a0 01                                      moveq sl, r5
00659918  17 00 00 1a                                      bne #0x65997c
0065991c  24 00 92 e5                                      ldr r0, [r2, #0x24]
00659920  20 60 92 e5                                      ldr r6, [r2, #0x20]
00659924  0b b0 67 e0                                      rsb fp, r7, fp
00659928  07 10 a0 e1                                      mov r1, r7
0065992c  06 60 60 e0                                      rsb r6, r0, r6
00659930  06 00 5b e1                                      cmp fp, r6
00659934  0b 20 a0 b1                                      movlt r2, fp
00659938  06 20 a0 a1                                      movge r2, r6
0065993c  27 d3 f2 eb                                      bl #0x30e5e0
00659940  00 00 50 e3                                      cmp r0, #0
00659944  03 00 00 1a                                      bne #0x659958
00659948  0b 00 56 e1                                      cmp r6, fp
0065994c  20 00 00 ba                                      blt #0x6599d4
00659950  00 00 a0 d3                                      movle r0, #0
00659954  01 00 a0 c3                                      movgt r0, #1
00659958  00 00 50 e3                                      cmp r0, #0
0065995c  00 30 a0 a3                                      movge r3, #0
00659960  00 a0 84 a5                                      strge sl, [r4]
00659964  04 30 c4 a5                                      strbge r3, [r4, #4]
00659968  19 00 00 ba                                      blt #0x6599d4
0065996c  04 00 a0 e1                                      mov r0, r4
00659970  14 d0 8d e2                                      add sp, sp, #0x14
00659974  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00659978  01 50 a0 e1                                      mov r5, r1
0065997c  08 30 99 e5                                      ldr r3, [sb, #8]
00659980  03 00 55 e1                                      cmp r5, r3
00659984  32 00 00 0a                                      beq #0x659a54
00659988  00 30 d5 e5                                      ldrb r3, [r5]
0065998c  00 00 53 e3                                      cmp r3, #0
00659990  03 00 00 1a                                      bne #0x6599a4
00659994  04 30 95 e5                                      ldr r3, [r5, #4]
00659998  04 30 93 e5                                      ldr r3, [r3, #4]
0065999c  03 00 55 e1                                      cmp r5, r3
006599a0  26 00 00 0a                                      beq #0x659a40
006599a4  08 20 95 e5                                      ldr r2, [r5, #8]
006599a8  00 00 52 e3                                      cmp r2, #0
006599ac  01 00 00 1a                                      bne #0x6599b8
006599b0  14 00 00 ea                                      b #0x659a08
006599b4  03 20 a0 e1                                      mov r2, r3
006599b8  0c 30 92 e5                                      ldr r3, [r2, #0xc]
006599bc  00 00 53 e3                                      cmp r3, #0
006599c0  fb ff ff 1a                                      bne #0x6599b4
006599c4  02 a0 a0 e1                                      mov sl, r2
006599c8  14 70 98 e5                                      ldr r7, [r8, #0x14]
006599cc  10 b0 98 e5                                      ldr fp, [r8, #0x10]
006599d0  d1 ff ff ea                                      b #0x65991c
006599d4  00 c0 a0 e3                                      mov ip, #0
006599d8  05 20 a0 e1                                      mov r2, r5
006599dc  08 30 a0 e1                                      mov r3, r8
006599e0  09 10 a0 e1                                      mov r1, sb
006599e4  08 00 8d e2                                      add r0, sp, #8
006599e8  04 c0 8d e5                                      str ip, [sp, #4]
006599ec  00 c0 8d e5                                      str ip, [sp]
006599f0  3a f8 ff eb                                      bl #0x657ae0
006599f4  08 30 9d e5                                      ldr r3, [sp, #8]
006599f8  01 20 a0 e3                                      mov r2, #1
006599fc  04 20 c4 e5                                      strb r2, [r4, #4]
00659a00  00 30 84 e5                                      str r3, [r4]
00659a04  d8 ff ff ea                                      b #0x65996c
00659a08  04 30 95 e5                                      ldr r3, [r5, #4]
00659a0c  08 20 93 e5                                      ldr r2, [r3, #8]
00659a10  02 00 55 e1                                      cmp r5, r2
00659a14  01 00 00 0a                                      beq #0x659a20
00659a18  19 00 00 ea                                      b #0x659a84
00659a1c  02 30 a0 e1                                      mov r3, r2
00659a20  04 20 93 e5                                      ldr r2, [r3, #4]
00659a24  08 10 92 e5                                      ldr r1, [r2, #8]
00659a28  03 00 51 e1                                      cmp r1, r3
00659a2c  fa ff ff 0a                                      beq #0x659a1c
00659a30  14 70 98 e5                                      ldr r7, [r8, #0x14]
00659a34  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00659a38  02 a0 a0 e1                                      mov sl, r2
00659a3c  b6 ff ff ea                                      b #0x65991c
00659a40  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00659a44  14 70 98 e5                                      ldr r7, [r8, #0x14]
00659a48  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00659a4c  02 a0 a0 e1                                      mov sl, r2
00659a50  b1 ff ff ea                                      b #0x65991c
00659a54  05 20 a0 e1                                      mov r2, r5
00659a58  08 30 a0 e1                                      mov r3, r8
00659a5c  00 c0 a0 e3                                      mov ip, #0
00659a60  09 10 a0 e1                                      mov r1, sb
00659a64  0c 00 8d e2                                      add r0, sp, #0xc
00659a68  20 10 8d e8                                      stm sp, {r5, ip}
00659a6c  1b f8 ff eb                                      bl #0x657ae0
00659a70  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00659a74  01 20 a0 e3                                      mov r2, #1
00659a78  04 20 c4 e5                                      strb r2, [r4, #4]
00659a7c  00 30 84 e5                                      str r3, [r4]
00659a80  b9 ff ff ea                                      b #0x65996c
00659a84  03 20 a0 e1                                      mov r2, r3
00659a88  cd ff ff ea                                      b #0x6599c4

; FUNCTION 0x00659f3c, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_PNS3_7collada8CResFileEENS_10_Select1stISH_EENS_11_MapTraitsTISH_EENS5_ISH_LS7_0EEEE13insert_uniqueENS_17_Rb_tree_iteratorISH_SL_EERKSH_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> const&)
; decoder-mode: arm
00659f3c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00659f40  44 d0 4d e2                                      sub sp, sp, #0x44
00659f44  14 20 8d e5                                      str r2, [sp, #0x14]
00659f48  00 50 92 e5                                      ldr r5, [r2]
00659f4c  08 20 91 e5                                      ldr r2, [r1, #8]
00659f50  01 60 a0 e1                                      mov r6, r1
00659f54  00 70 a0 e1                                      mov r7, r0
00659f58  02 00 55 e1                                      cmp r5, r2
00659f5c  03 80 a0 e1                                      mov r8, r3
00659f60  7c 00 00 0a                                      beq #0x65a158
00659f64  01 00 55 e1                                      cmp r5, r1
00659f68  d0 00 00 0a                                      beq #0x65a2b0
00659f6c  00 30 d5 e5                                      ldrb r3, [r5]
00659f70  00 00 53 e3                                      cmp r3, #0
00659f74  35 00 00 0a                                      beq #0x65a050
00659f78  08 40 95 e5                                      ldr r4, [r5, #8]
00659f7c  00 00 54 e3                                      cmp r4, #0
00659f80  01 00 00 1a                                      bne #0x659f8c
00659f84  39 00 00 ea                                      b #0x65a070
00659f88  03 40 a0 e1                                      mov r4, r3
00659f8c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00659f90  00 00 53 e3                                      cmp r3, #0
00659f94  fb ff ff 1a                                      bne #0x659f88
00659f98  24 30 95 e5                                      ldr r3, [r5, #0x24]
00659f9c  14 90 98 e5                                      ldr sb, [r8, #0x14]
00659fa0  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00659fa4  20 20 95 e5                                      ldr r2, [r5, #0x20]
00659fa8  03 10 a0 e1                                      mov r1, r3
00659fac  0b b0 69 e0                                      rsb fp, sb, fp
00659fb0  02 20 63 e0                                      rsb r2, r3, r2
00659fb4  18 20 8d e5                                      str r2, [sp, #0x18]
00659fb8  09 00 a0 e1                                      mov r0, sb
00659fbc  0b 00 52 e1                                      cmp r2, fp
00659fc0  0b 20 a0 a1                                      movge r2, fp
00659fc4  0c 30 8d e5                                      str r3, [sp, #0xc]
00659fc8  1c 20 8d e5                                      str r2, [sp, #0x1c]
00659fcc  83 d1 f2 eb                                      bl #0x30e5e0
00659fd0  00 00 50 e3                                      cmp r0, #0
00659fd4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00659fd8  05 00 00 1a                                      bne #0x659ff4
00659fdc  18 20 9d e5                                      ldr r2, [sp, #0x18]
00659fe0  02 00 5b e1                                      cmp fp, r2
00659fe4  00 00 e0 b3                                      mvnlt r0, #0
00659fe8  01 00 00 ba                                      blt #0x659ff4
00659fec  00 00 a0 d3                                      movle r0, #0
00659ff0  01 00 a0 c3                                      movgt r0, #1
00659ff4  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
00659ff8  28 00 00 1a                                      bne #0x65a0a0
00659ffc  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0065a000  00 00 54 e3                                      cmp r4, #0
0065a004  01 00 00 1a                                      bne #0x65a010
0065a008  cc 00 00 ea                                      b #0x65a340
0065a00c  02 40 a0 e1                                      mov r4, r2
0065a010  08 20 94 e5                                      ldr r2, [r4, #8]
0065a014  00 00 52 e3                                      cmp r2, #0
0065a018  fb ff ff 1a                                      bne #0x65a00c
0065a01c  00 00 5c e3                                      cmp ip, #0
0065a020  43 00 00 1a                                      bne #0x65a134
0065a024  03 00 a0 e1                                      mov r0, r3
0065a028  09 10 a0 e1                                      mov r1, sb
0065a02c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0065a030  6a d1 f2 eb                                      bl #0x30e5e0
0065a034  00 00 50 e3                                      cmp r0, #0
0065a038  34 00 00 1a                                      bne #0x65a110
0065a03c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0065a040  03 00 5b e1                                      cmp fp, r3
0065a044  32 00 00 ca                                      bgt #0x65a114
0065a048  00 50 87 e5                                      str r5, [r7]
0065a04c  3e 00 00 ea                                      b #0x65a14c
0065a050  04 30 95 e5                                      ldr r3, [r5, #4]
0065a054  04 30 93 e5                                      ldr r3, [r3, #4]
0065a058  03 00 55 e1                                      cmp r5, r3
0065a05c  0c 40 95 05                                      ldreq r4, [r5, #0xc]
0065a060  cc ff ff 0a                                      beq #0x659f98
0065a064  08 40 95 e5                                      ldr r4, [r5, #8]
0065a068  00 00 54 e3                                      cmp r4, #0
0065a06c  c6 ff ff 1a                                      bne #0x659f8c
0065a070  04 40 95 e5                                      ldr r4, [r5, #4]
0065a074  08 30 94 e5                                      ldr r3, [r4, #8]
0065a078  03 00 55 e1                                      cmp r5, r3
0065a07c  01 00 00 0a                                      beq #0x65a088
0065a080  c4 ff ff ea                                      b #0x659f98
0065a084  03 40 a0 e1                                      mov r4, r3
0065a088  04 30 94 e5                                      ldr r3, [r4, #4]
0065a08c  08 20 93 e5                                      ldr r2, [r3, #8]
0065a090  04 00 52 e1                                      cmp r2, r4
0065a094  fa ff ff 0a                                      beq #0x65a084
0065a098  03 40 a0 e1                                      mov r4, r3
0065a09c  bd ff ff ea                                      b #0x659f98
0065a0a0  24 20 94 e5                                      ldr r2, [r4, #0x24]
0065a0a4  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0065a0a8  09 10 a0 e1                                      mov r1, sb
0065a0ac  02 00 a0 e1                                      mov r0, r2
0065a0b0  0a a0 62 e0                                      rsb sl, r2, sl
0065a0b4  0a 00 5b e1                                      cmp fp, sl
0065a0b8  0b 20 a0 b1                                      movlt r2, fp
0065a0bc  0a 20 a0 a1                                      movge r2, sl
0065a0c0  0c 30 8d e5                                      str r3, [sp, #0xc]
0065a0c4  10 c0 8d e5                                      str ip, [sp, #0x10]
0065a0c8  44 d1 f2 eb                                      bl #0x30e5e0
0065a0cc  00 00 50 e3                                      cmp r0, #0
0065a0d0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0065a0d4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0065a0d8  6f 00 00 1a                                      bne #0x65a29c
0065a0dc  0a 00 5b e1                                      cmp fp, sl
0065a0e0  c5 ff ff da                                      ble #0x659ffc
0065a0e4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0065a0e8  00 00 5c e3                                      cmp ip, #0
0065a0ec  62 00 00 0a                                      beq #0x65a27c
0065a0f0  00 c0 a0 e3                                      mov ip, #0
0065a0f4  06 10 a0 e1                                      mov r1, r6
0065a0f8  05 20 a0 e1                                      mov r2, r5
0065a0fc  08 30 a0 e1                                      mov r3, r8
0065a100  07 00 a0 e1                                      mov r0, r7
0065a104  20 10 8d e8                                      stm sp, {r5, ip}
0065a108  74 f6 ff eb                                      bl #0x657ae0
0065a10c  0e 00 00 ea                                      b #0x65a14c
0065a110  cc ff ff aa                                      bge #0x65a048
0065a114  04 00 56 e1                                      cmp r6, r4
0065a118  9b 00 00 0a                                      beq #0x65a38c
0065a11c  14 00 86 e2                                      add r0, r6, #0x14
0065a120  08 10 a0 e1                                      mov r1, r8
0065a124  10 20 84 e2                                      add r2, r4, #0x10
0065a128  72 48 fc eb                                      bl #0x56c2f8
0065a12c  00 00 50 e3                                      cmp r0, #0
0065a130  93 00 00 1a                                      bne #0x65a384
0065a134  06 10 a0 e1                                      mov r1, r6
0065a138  08 20 a0 e1                                      mov r2, r8
0065a13c  20 00 8d e2                                      add r0, sp, #0x20
0065a140  cb fd ff eb                                      bl #0x659874
0065a144  20 30 9d e5                                      ldr r3, [sp, #0x20]
0065a148  00 30 87 e5                                      str r3, [r7]
0065a14c  07 00 a0 e1                                      mov r0, r7
0065a150  44 d0 8d e2                                      add sp, sp, #0x44
0065a154  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065a158  10 30 91 e5                                      ldr r3, [r1, #0x10]
0065a15c  00 00 53 e3                                      cmp r3, #0
0065a160  9f 00 00 0a                                      beq #0x65a3e4
0065a164  14 30 98 e5                                      ldr r3, [r8, #0x14]
0065a168  24 10 95 e5                                      ldr r1, [r5, #0x24]
0065a16c  10 40 98 e5                                      ldr r4, [r8, #0x10]
0065a170  20 a0 95 e5                                      ldr sl, [r5, #0x20]
0065a174  03 00 a0 e1                                      mov r0, r3
0065a178  04 40 63 e0                                      rsb r4, r3, r4
0065a17c  0a a0 61 e0                                      rsb sl, r1, sl
0065a180  04 00 5a e1                                      cmp sl, r4
0065a184  0a 20 a0 b1                                      movlt r2, sl
0065a188  04 20 a0 a1                                      movge r2, r4
0065a18c  13 d1 f2 eb                                      bl #0x30e5e0
0065a190  00 00 50 e3                                      cmp r0, #0
0065a194  03 00 00 1a                                      bne #0x65a1a8
0065a198  0a 00 54 e1                                      cmp r4, sl
0065a19c  d3 ff ff ba                                      blt #0x65a0f0
0065a1a0  00 00 a0 d3                                      movle r0, #0
0065a1a4  01 00 a0 c3                                      movgt r0, #1
0065a1a8  00 00 50 e3                                      cmp r0, #0
0065a1ac  cf ff ff ba                                      blt #0x65a0f0
0065a1b0  14 a0 86 e2                                      add sl, r6, #0x14
0065a1b4  10 10 85 e2                                      add r1, r5, #0x10
0065a1b8  0a 00 a0 e1                                      mov r0, sl
0065a1bc  08 20 a0 e1                                      mov r2, r8
0065a1c0  4c 48 fc eb                                      bl #0x56c2f8
0065a1c4  00 00 50 e3                                      cmp r0, #0
0065a1c8  81 00 00 0a                                      beq #0x65a3d4
0065a1cc  14 30 9d e5                                      ldr r3, [sp, #0x14]
0065a1d0  00 c0 93 e5                                      ldr ip, [r3]
0065a1d4  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0065a1d8  00 00 54 e3                                      cmp r4, #0
0065a1dc  22 00 00 1a                                      bne #0x65a26c
0065a1e0  04 30 9c e5                                      ldr r3, [ip, #4]
0065a1e4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0065a1e8  02 00 5c e1                                      cmp ip, r2
0065a1ec  0c 40 a0 11                                      movne r4, ip
0065a1f0  04 00 00 1a                                      bne #0x65a208
0065a1f4  03 40 a0 e1                                      mov r4, r3
0065a1f8  04 30 93 e5                                      ldr r3, [r3, #4]
0065a1fc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0065a200  04 00 52 e1                                      cmp r2, r4
0065a204  fa ff ff 0a                                      beq #0x65a1f4
0065a208  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0065a20c  02 00 53 e1                                      cmp r3, r2
0065a210  03 40 a0 11                                      movne r4, r3
0065a214  04 00 56 e1                                      cmp r6, r4
0065a218  7f 00 00 0a                                      beq #0x65a41c
0065a21c  0a 00 a0 e1                                      mov r0, sl
0065a220  08 10 a0 e1                                      mov r1, r8
0065a224  10 20 84 e2                                      add r2, r4, #0x10
0065a228  32 48 fc eb                                      bl #0x56c2f8
0065a22c  00 00 50 e3                                      cmp r0, #0
0065a230  60 00 00 0a                                      beq #0x65a3b8
0065a234  14 20 9d e5                                      ldr r2, [sp, #0x14]
0065a238  00 c0 92 e5                                      ldr ip, [r2]
0065a23c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0065a240  00 00 5e e3                                      cmp lr, #0
0065a244  6c 00 00 0a                                      beq #0x65a3fc
0065a248  00 c0 a0 e3                                      mov ip, #0
0065a24c  06 10 a0 e1                                      mov r1, r6
0065a250  04 20 a0 e1                                      mov r2, r4
0065a254  08 30 a0 e1                                      mov r3, r8
0065a258  07 00 a0 e1                                      mov r0, r7
0065a25c  10 10 8d e8                                      stm sp, {r4, ip}
0065a260  1e f6 ff eb                                      bl #0x657ae0
0065a264  b8 ff ff ea                                      b #0x65a14c
0065a268  03 40 a0 e1                                      mov r4, r3
0065a26c  08 30 94 e5                                      ldr r3, [r4, #8]
0065a270  00 00 53 e3                                      cmp r3, #0
0065a274  fb ff ff 1a                                      bne #0x65a268
0065a278  e5 ff ff ea                                      b #0x65a214
0065a27c  06 10 a0 e1                                      mov r1, r6
0065a280  04 20 a0 e1                                      mov r2, r4
0065a284  08 30 a0 e1                                      mov r3, r8
0065a288  07 00 a0 e1                                      mov r0, r7
0065a28c  00 c0 8d e5                                      str ip, [sp]
0065a290  04 40 8d e5                                      str r4, [sp, #4]
0065a294  11 f6 ff eb                                      bl #0x657ae0
0065a298  ab ff ff ea                                      b #0x65a14c
0065a29c  56 ff ff aa                                      bge #0x659ffc
0065a2a0  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0065a2a4  00 00 5c e3                                      cmp ip, #0
0065a2a8  90 ff ff 1a                                      bne #0x65a0f0
0065a2ac  f2 ff ff ea                                      b #0x65a27c
0065a2b0  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0065a2b4  14 10 93 e5                                      ldr r1, [r3, #0x14]
0065a2b8  10 90 93 e5                                      ldr sb, [r3, #0x10]
0065a2bc  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0065a2c0  24 30 94 e5                                      ldr r3, [r4, #0x24]
0065a2c4  09 90 61 e0                                      rsb sb, r1, sb
0065a2c8  0a a0 63 e0                                      rsb sl, r3, sl
0065a2cc  0a 00 59 e1                                      cmp sb, sl
0065a2d0  09 20 a0 b1                                      movlt r2, sb
0065a2d4  0a 20 a0 a1                                      movge r2, sl
0065a2d8  03 00 a0 e1                                      mov r0, r3
0065a2dc  bf d0 f2 eb                                      bl #0x30e5e0
0065a2e0  00 00 50 e3                                      cmp r0, #0
0065a2e4  03 00 00 1a                                      bne #0x65a2f8
0065a2e8  09 00 5a e1                                      cmp sl, sb
0065a2ec  03 00 00 ba                                      blt #0x65a300
0065a2f0  00 00 a0 d3                                      movle r0, #0
0065a2f4  01 00 a0 c3                                      movgt r0, #1
0065a2f8  00 00 50 e3                                      cmp r0, #0
0065a2fc  08 00 00 aa                                      bge #0x65a324
0065a300  00 c0 a0 e3                                      mov ip, #0
0065a304  06 10 a0 e1                                      mov r1, r6
0065a308  04 20 a0 e1                                      mov r2, r4
0065a30c  08 30 a0 e1                                      mov r3, r8
0065a310  07 00 a0 e1                                      mov r0, r7
0065a314  00 c0 8d e5                                      str ip, [sp]
0065a318  04 50 8d e5                                      str r5, [sp, #4]
0065a31c  ef f5 ff eb                                      bl #0x657ae0
0065a320  89 ff ff ea                                      b #0x65a14c
0065a324  06 10 a0 e1                                      mov r1, r6
0065a328  08 20 a0 e1                                      mov r2, r8
0065a32c  28 00 8d e2                                      add r0, sp, #0x28
0065a330  4f fd ff eb                                      bl #0x659874
0065a334  28 30 9d e5                                      ldr r3, [sp, #0x28]
0065a338  00 30 87 e5                                      str r3, [r7]
0065a33c  82 ff ff ea                                      b #0x65a14c
0065a340  04 20 95 e5                                      ldr r2, [r5, #4]
0065a344  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0065a348  01 00 55 e1                                      cmp r5, r1
0065a34c  05 40 a0 11                                      movne r4, r5
0065a350  04 00 00 0a                                      beq #0x65a368
0065a354  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0065a358  01 00 52 e1                                      cmp r2, r1
0065a35c  02 40 a0 11                                      movne r4, r2
0065a360  2d ff ff ea                                      b #0x65a01c
0065a364  01 20 a0 e1                                      mov r2, r1
0065a368  04 10 92 e5                                      ldr r1, [r2, #4]
0065a36c  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0065a370  02 00 50 e1                                      cmp r0, r2
0065a374  fa ff ff 0a                                      beq #0x65a364
0065a378  02 40 a0 e1                                      mov r4, r2
0065a37c  01 20 a0 e1                                      mov r2, r1
0065a380  f3 ff ff ea                                      b #0x65a354
0065a384  14 20 9d e5                                      ldr r2, [sp, #0x14]
0065a388  00 50 92 e5                                      ldr r5, [r2]
0065a38c  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0065a390  00 00 5c e3                                      cmp ip, #0
0065a394  ab ff ff 1a                                      bne #0x65a248
0065a398  06 10 a0 e1                                      mov r1, r6
0065a39c  05 20 a0 e1                                      mov r2, r5
0065a3a0  08 30 a0 e1                                      mov r3, r8
0065a3a4  07 00 a0 e1                                      mov r0, r7
0065a3a8  00 c0 8d e5                                      str ip, [sp]
0065a3ac  04 50 8d e5                                      str r5, [sp, #4]
0065a3b0  ca f5 ff eb                                      bl #0x657ae0
0065a3b4  64 ff ff ea                                      b #0x65a14c
0065a3b8  06 10 a0 e1                                      mov r1, r6
0065a3bc  08 20 a0 e1                                      mov r2, r8
0065a3c0  30 00 8d e2                                      add r0, sp, #0x30
0065a3c4  2a fd ff eb                                      bl #0x659874
0065a3c8  30 30 9d e5                                      ldr r3, [sp, #0x30]
0065a3cc  00 30 87 e5                                      str r3, [r7]
0065a3d0  5d ff ff ea                                      b #0x65a14c
0065a3d4  14 20 9d e5                                      ldr r2, [sp, #0x14]
0065a3d8  00 30 92 e5                                      ldr r3, [r2]
0065a3dc  00 30 87 e5                                      str r3, [r7]
0065a3e0  59 ff ff ea                                      b #0x65a14c
0065a3e4  08 20 a0 e1                                      mov r2, r8
0065a3e8  38 00 8d e2                                      add r0, sp, #0x38
0065a3ec  20 fd ff eb                                      bl #0x659874
0065a3f0  38 30 9d e5                                      ldr r3, [sp, #0x38]
0065a3f4  00 30 87 e5                                      str r3, [r7]
0065a3f8  53 ff ff ea                                      b #0x65a14c
0065a3fc  06 10 a0 e1                                      mov r1, r6
0065a400  0c 20 a0 e1                                      mov r2, ip
0065a404  08 30 a0 e1                                      mov r3, r8
0065a408  07 00 a0 e1                                      mov r0, r7
0065a40c  00 e0 8d e5                                      str lr, [sp]
0065a410  04 c0 8d e5                                      str ip, [sp, #4]
0065a414  b1 f5 ff eb                                      bl #0x657ae0
0065a418  4b ff ff ea                                      b #0x65a14c
0065a41c  00 e0 a0 e3                                      mov lr, #0
0065a420  06 10 a0 e1                                      mov r1, r6
0065a424  0c 20 a0 e1                                      mov r2, ip
0065a428  08 30 a0 e1                                      mov r3, r8
0065a42c  07 00 a0 e1                                      mov r0, r7
0065a430  00 e0 8d e5                                      str lr, [sp]
0065a434  04 c0 8d e5                                      str ip, [sp, #4]
0065a438  a8 f5 ff eb                                      bl #0x657ae0
0065a43c  42 ff ff ea                                      b #0x65a14c
