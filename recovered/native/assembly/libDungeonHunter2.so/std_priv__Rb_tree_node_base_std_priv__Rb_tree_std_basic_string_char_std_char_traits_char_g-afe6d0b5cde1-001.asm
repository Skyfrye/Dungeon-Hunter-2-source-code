; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056d3d4, declared_size=268, range_size=268, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_S9_ENS_10_Select1stISE_EENS_11_MapTraitsTISE_EENS5_ISE_LS7_0EEEE14_M_lower_boundIPcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::_M_lower_bound<char*>(char* const&) const
; decoder-mode: arm
0056d3d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056d3d8  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
0056d3dc  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0056d3e0  34 d0 4d e2                                      sub sp, sp, #0x34
0056d3e4  02 20 8f e0                                      add r2, pc, r2
0056d3e8  0c 30 8d e5                                      str r3, [sp, #0xc]
0056d3ec  03 30 92 e7                                      ldr r3, [r2, r3]
0056d3f0  08 20 8d e5                                      str r2, [sp, #8]
0056d3f4  00 b0 a0 e1                                      mov fp, r0
0056d3f8  00 30 93 e5                                      ldr r3, [r3]
0056d3fc  01 a0 a0 e1                                      mov sl, r1
0056d400  2c 30 8d e5                                      str r3, [sp, #0x2c]
0056d404  04 50 90 e5                                      ldr r5, [r0, #4]
0056d408  00 00 55 e3                                      cmp r5, #0
0056d40c  26 00 00 0a                                      beq #0x56d4ac
0056d410  14 80 8d e2                                      add r8, sp, #0x14
0056d414  10 90 8d e2                                      add sb, sp, #0x10
0056d418  00 10 9a e5                                      ldr r1, [sl]
0056d41c  09 20 a0 e1                                      mov r2, sb
0056d420  08 00 a0 e1                                      mov r0, r8
0056d424  04 e3 f6 eb                                      bl #0x32603c
0056d428  24 30 95 e5                                      ldr r3, [r5, #0x24]
0056d42c  28 40 9d e5                                      ldr r4, [sp, #0x28]
0056d430  20 70 95 e5                                      ldr r7, [r5, #0x20]
0056d434  24 60 9d e5                                      ldr r6, [sp, #0x24]
0056d438  03 00 a0 e1                                      mov r0, r3
0056d43c  07 70 63 e0                                      rsb r7, r3, r7
0056d440  06 60 64 e0                                      rsb r6, r4, r6
0056d444  07 00 56 e1                                      cmp r6, r7
0056d448  06 20 a0 b1                                      movlt r2, r6
0056d44c  07 20 a0 a1                                      movge r2, r7
0056d450  04 10 a0 e1                                      mov r1, r4
0056d454  61 84 f6 eb                                      bl #0x30e5e0
0056d458  00 30 50 e2                                      subs r3, r0, #0
0056d45c  04 00 00 1a                                      bne #0x56d474
0056d460  06 00 57 e1                                      cmp r7, r6
0056d464  00 30 e0 b3                                      mvnlt r3, #0
0056d468  01 00 00 ba                                      blt #0x56d474
0056d46c  00 30 a0 d3                                      movle r3, #0
0056d470  01 30 a0 c3                                      movgt r3, #1
0056d474  08 00 54 e1                                      cmp r4, r8
0056d478  05 00 00 0a                                      beq #0x56d494
0056d47c  00 00 54 e3                                      cmp r4, #0
0056d480  03 00 00 0a                                      beq #0x56d494
0056d484  04 00 a0 e1                                      mov r0, r4
0056d488  04 30 8d e5                                      str r3, [sp, #4]
0056d48c  ef 8b f6 eb                                      bl #0x310450
0056d490  04 30 9d e5                                      ldr r3, [sp, #4]
0056d494  00 00 53 e3                                      cmp r3, #0
0056d498  05 b0 a0 a1                                      movge fp, r5
0056d49c  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
0056d4a0  08 50 95 a5                                      ldrge r5, [r5, #8]
0056d4a4  00 00 55 e3                                      cmp r5, #0
0056d4a8  da ff ff 1a                                      bne #0x56d418
0056d4ac  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0056d4b0  08 10 9d e5                                      ldr r1, [sp, #8]
0056d4b4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0056d4b8  00 30 91 e7                                      ldr r3, [r1, r0]
0056d4bc  0b 00 a0 e1                                      mov r0, fp
0056d4c0  00 30 93 e5                                      ldr r3, [r3]
0056d4c4  03 00 52 e1                                      cmp r2, r3
0056d4c8  01 00 00 1a                                      bne #0x56d4d4
0056d4cc  34 d0 8d e2                                      add sp, sp, #0x34
0056d4d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056d4d4  8d 83 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056d4d8  ac 76 42 00 ac 40 00 00                          .byte 0xac, 0x76, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0056db48, declared_size=248, range_size=248, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_S9_ENS_10_Select1stISE_EENS_11_MapTraitsTISE_EENS5_ISE_LS7_0EEEE7_M_findIS9_EEPNS_18_Rb_tree_node_baseERKT_.clone.13
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::_M_find<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&) const [clone .clone.13]
; decoder-mode: arm
0056db48  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056db4c  e4 a0 9f e5                                      ldr sl, [pc, #0xe4]
0056db50  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
0056db54  0a a0 8f e0                                      add sl, pc, sl
0056db58  09 70 9a e7                                      ldr r7, [sl, sb]
0056db5c  04 40 97 e5                                      ldr r4, [r7, #4]
0056db60  00 00 54 e3                                      cmp r4, #0
0056db64  31 00 00 0a                                      beq #0x56dc30
0056db68  10 60 90 e5                                      ldr r6, [r0, #0x10]
0056db6c  14 80 90 e5                                      ldr r8, [r0, #0x14]
0056db70  06 60 68 e0                                      rsb r6, r8, r6
0056db74  24 30 94 e5                                      ldr r3, [r4, #0x24]
0056db78  20 50 94 e5                                      ldr r5, [r4, #0x20]
0056db7c  08 10 a0 e1                                      mov r1, r8
0056db80  03 00 a0 e1                                      mov r0, r3
0056db84  05 50 63 e0                                      rsb r5, r3, r5
0056db88  05 00 56 e1                                      cmp r6, r5
0056db8c  06 20 a0 b1                                      movlt r2, r6
0056db90  05 20 a0 a1                                      movge r2, r5
0056db94  91 82 f6 eb                                      bl #0x30e5e0
0056db98  00 00 50 e3                                      cmp r0, #0
0056db9c  07 00 00 1a                                      bne #0x56dbc0
0056dba0  06 00 55 e1                                      cmp r5, r6
0056dba4  06 00 00 ba                                      blt #0x56dbc4
0056dba8  08 30 94 e5                                      ldr r3, [r4, #8]
0056dbac  04 70 a0 e1                                      mov r7, r4
0056dbb0  00 00 53 e3                                      cmp r3, #0
0056dbb4  07 00 00 0a                                      beq #0x56dbd8
0056dbb8  03 40 a0 e1                                      mov r4, r3
0056dbbc  ec ff ff ea                                      b #0x56db74
0056dbc0  f8 ff ff aa                                      bge #0x56dba8
0056dbc4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0056dbc8  07 40 a0 e1                                      mov r4, r7
0056dbcc  04 70 a0 e1                                      mov r7, r4
0056dbd0  00 00 53 e3                                      cmp r3, #0
0056dbd4  f7 ff ff 1a                                      bne #0x56dbb8
0056dbd8  09 30 9a e7                                      ldr r3, [sl, sb]
0056dbdc  04 00 a0 e1                                      mov r0, r4
0056dbe0  03 00 54 e1                                      cmp r4, r3
0056dbe4  10 00 00 0a                                      beq #0x56dc2c
0056dbe8  24 30 94 e5                                      ldr r3, [r4, #0x24]
0056dbec  20 50 94 e5                                      ldr r5, [r4, #0x20]
0056dbf0  08 00 a0 e1                                      mov r0, r8
0056dbf4  03 10 a0 e1                                      mov r1, r3
0056dbf8  05 50 63 e0                                      rsb r5, r3, r5
0056dbfc  06 00 55 e1                                      cmp r5, r6
0056dc00  05 20 a0 b1                                      movlt r2, r5
0056dc04  06 20 a0 a1                                      movge r2, r6
0056dc08  74 82 f6 eb                                      bl #0x30e5e0
0056dc0c  00 00 50 e3                                      cmp r0, #0
0056dc10  03 00 00 1a                                      bne #0x56dc24
0056dc14  05 00 56 e1                                      cmp r6, r5
0056dc18  02 00 00 ba                                      blt #0x56dc28
0056dc1c  04 00 a0 e1                                      mov r0, r4
0056dc20  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056dc24  fc ff ff aa                                      bge #0x56dc1c
0056dc28  09 00 9a e7                                      ldr r0, [sl, sb]
0056dc2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056dc30  07 00 a0 e1                                      mov r0, r7
0056dc34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0056dc38  3c 6f 42 00 b4 47 00 00                          .byte 0x3c, 0x6f, 0x42, 0x00, 0xb4, 0x47, 0x00, 0x00
