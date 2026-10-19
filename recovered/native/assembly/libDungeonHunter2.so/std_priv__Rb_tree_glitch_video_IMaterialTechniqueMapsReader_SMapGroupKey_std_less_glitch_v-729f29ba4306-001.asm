; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d7f20, declared_size=112, range_size=112, mode=arm
; class-group: std::priv::_Rb_tree<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey, std::less<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey>, std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> >, std::priv::_Select1st<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > > >
; alias: _ZNSt4priv8_Rb_treeIN6glitch5video28IMaterialTechniqueMapsReader12SMapGroupKeyESt4lessIS4_ESt4pairIKS4_NS1_4core19SSharedProcessArrayIhEEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS9_23SProcessBufferAllocatorISC_EEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey, std::less<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey>, std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> >, std::priv::_Select1st<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005d7f20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d7f24  00 40 51 e2                                      subs r4, r1, #0
005d7f28  00 50 a0 e1                                      mov r5, r0
005d7f2c  12 00 00 0a                                      beq #0x5d7f7c
005d7f30  00 60 a0 e3                                      mov r6, #0
005d7f34  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d7f38  05 00 a0 e1                                      mov r0, r5
005d7f3c  f7 ff ff eb                                      bl #0x5d7f20
005d7f40  18 30 94 e5                                      ldr r3, [r4, #0x18]
005d7f44  08 70 94 e5                                      ldr r7, [r4, #8]
005d7f48  18 80 84 e2                                      add r8, r4, #0x18
005d7f4c  00 00 53 e3                                      cmp r3, #0
005d7f50  05 00 00 0a                                      beq #0x5d7f6c
005d7f54  04 20 13 e5                                      ldr r2, [r3, #-4]
005d7f58  01 20 42 e2                                      sub r2, r2, #1
005d7f5c  00 00 52 e3                                      cmp r2, #0
005d7f60  04 20 03 e5                                      str r2, [r3, #-4]
005d7f64  05 00 00 0a                                      beq #0x5d7f80
005d7f68  00 60 88 e5                                      str r6, [r8]
005d7f6c  04 00 a0 e1                                      mov r0, r4
005d7f70  c4 71 fd eb                                      bl #0x534688
005d7f74  00 40 57 e2                                      subs r4, r7, #0
005d7f78  ed ff ff 1a                                      bne #0x5d7f34
005d7f7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d7f80  00 00 98 e5                                      ldr r0, [r8]
005d7f84  04 00 40 e2                                      sub r0, r0, #4
005d7f88  be 71 fd eb                                      bl #0x534688
005d7f8c  f5 ff ff ea                                      b #0x5d7f68

; FUNCTION 0x005db568, declared_size=416, range_size=416, mode=arm
; class-group: std::priv::_Rb_tree<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey, std::less<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey>, std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> >, std::priv::_Select1st<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > > >
; alias: _ZNSt4priv8_Rb_treeIN6glitch5video28IMaterialTechniqueMapsReader12SMapGroupKeyESt4lessIS4_ESt4pairIKS4_NS1_4core19SSharedProcessArrayIhEEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS9_23SProcessBufferAllocatorISC_EEE9_M_insertEPNS_18_Rb_tree_node_baseERKSC_SL_SL_.clone.9
; demangled: std::priv::_Rb_tree<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey, std::less<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey>, std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> >, std::priv::_Select1st<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.9]
; decoder-mode: arm
005db568  70 40 2d e9                                      push {r4, r5, r6, lr}
005db56c  02 00 51 e1                                      cmp r1, r2
005db570  08 d0 4d e2                                      sub sp, sp, #8
005db574  01 40 a0 e1                                      mov r4, r1
005db578  00 50 a0 e1                                      mov r5, r0
005db57c  1b 00 00 0a                                      beq #0x5db5f0
005db580  18 10 9d e5                                      ldr r1, [sp, #0x18]
005db584  00 00 51 e3                                      cmp r1, #0
005db588  3a 00 00 0a                                      beq #0x5db678
005db58c  1c 00 a0 e3                                      mov r0, #0x1c
005db590  04 20 8d e5                                      str r2, [sp, #4]
005db594  00 30 8d e5                                      str r3, [sp]
005db598  15 64 fd eb                                      bl #0x5345f4
005db59c  00 30 9d e5                                      ldr r3, [sp]
005db5a0  00 60 a0 e1                                      mov r6, r0
005db5a4  00 10 93 e5                                      ldr r1, [r3]
005db5a8  10 10 80 e5                                      str r1, [r0, #0x10]
005db5ac  04 10 93 e5                                      ldr r1, [r3, #4]
005db5b0  14 10 80 e5                                      str r1, [r0, #0x14]
005db5b4  08 30 93 e5                                      ldr r3, [r3, #8]
005db5b8  18 30 80 e5                                      str r3, [r0, #0x18]
005db5bc  00 00 53 e3                                      cmp r3, #0
005db5c0  04 10 13 15                                      ldrne r1, [r3, #-4]
005db5c4  04 20 9d e5                                      ldr r2, [sp, #4]
005db5c8  01 10 81 12                                      addne r1, r1, #1
005db5cc  04 10 03 15                                      strne r1, [r3, #-4]
005db5d0  00 30 a0 e3                                      mov r3, #0
005db5d4  0c 30 80 e5                                      str r3, [r0, #0xc]
005db5d8  08 30 80 e5                                      str r3, [r0, #8]
005db5dc  08 00 82 e5                                      str r0, [r2, #8]
005db5e0  08 30 94 e5                                      ldr r3, [r4, #8]
005db5e4  03 00 52 e1                                      cmp r2, r3
005db5e8  08 00 84 05                                      streq r0, [r4, #8]
005db5ec  16 00 00 ea                                      b #0x5db64c
005db5f0  1c 00 a0 e3                                      mov r0, #0x1c
005db5f4  04 20 8d e5                                      str r2, [sp, #4]
005db5f8  00 30 8d e5                                      str r3, [sp]
005db5fc  fc 63 fd eb                                      bl #0x5345f4
005db600  00 30 9d e5                                      ldr r3, [sp]
005db604  00 60 a0 e1                                      mov r6, r0
005db608  00 10 93 e5                                      ldr r1, [r3]
005db60c  10 10 80 e5                                      str r1, [r0, #0x10]
005db610  04 10 93 e5                                      ldr r1, [r3, #4]
005db614  14 10 80 e5                                      str r1, [r0, #0x14]
005db618  08 30 93 e5                                      ldr r3, [r3, #8]
005db61c  18 30 80 e5                                      str r3, [r0, #0x18]
005db620  00 00 53 e3                                      cmp r3, #0
005db624  04 10 13 15                                      ldrne r1, [r3, #-4]
005db628  04 20 9d e5                                      ldr r2, [sp, #4]
005db62c  01 10 81 12                                      addne r1, r1, #1
005db630  04 10 03 15                                      strne r1, [r3, #-4]
005db634  00 30 a0 e3                                      mov r3, #0
005db638  0c 30 80 e5                                      str r3, [r0, #0xc]
005db63c  08 30 80 e5                                      str r3, [r0, #8]
005db640  08 00 84 e5                                      str r0, [r4, #8]
005db644  04 00 84 e5                                      str r0, [r4, #4]
005db648  0c 00 84 e5                                      str r0, [r4, #0xc]
005db64c  06 00 a0 e1                                      mov r0, r6
005db650  04 20 86 e5                                      str r2, [r6, #4]
005db654  04 10 84 e2                                      add r1, r4, #4
005db658  40 e0 f4 eb                                      bl #0x313760
005db65c  10 30 94 e5                                      ldr r3, [r4, #0x10]
005db660  05 00 a0 e1                                      mov r0, r5
005db664  01 30 83 e2                                      add r3, r3, #1
005db668  10 30 84 e5                                      str r3, [r4, #0x10]
005db66c  00 60 85 e5                                      str r6, [r5]
005db670  08 d0 8d e2                                      add sp, sp, #8
005db674  70 80 bd e8                                      pop {r4, r5, r6, pc}
005db678  00 00 93 e5                                      ldr r0, [r3]
005db67c  10 10 92 e5                                      ldr r1, [r2, #0x10]
005db680  01 00 50 e1                                      cmp r0, r1
005db684  c0 ff ff 3a                                      blo #0x5db58c
005db688  19 00 00 0a                                      beq #0x5db6f4
005db68c  1c 00 a0 e3                                      mov r0, #0x1c
005db690  04 20 8d e5                                      str r2, [sp, #4]
005db694  00 30 8d e5                                      str r3, [sp]
005db698  d5 63 fd eb                                      bl #0x5345f4
005db69c  00 30 9d e5                                      ldr r3, [sp]
005db6a0  00 60 a0 e1                                      mov r6, r0
005db6a4  00 10 93 e5                                      ldr r1, [r3]
005db6a8  10 10 80 e5                                      str r1, [r0, #0x10]
005db6ac  04 10 93 e5                                      ldr r1, [r3, #4]
005db6b0  14 10 80 e5                                      str r1, [r0, #0x14]
005db6b4  08 30 93 e5                                      ldr r3, [r3, #8]
005db6b8  18 30 80 e5                                      str r3, [r0, #0x18]
005db6bc  00 00 53 e3                                      cmp r3, #0
005db6c0  04 20 9d e5                                      ldr r2, [sp, #4]
005db6c4  02 00 00 0a                                      beq #0x5db6d4
005db6c8  04 10 13 e5                                      ldr r1, [r3, #-4]
005db6cc  01 10 81 e2                                      add r1, r1, #1
005db6d0  04 10 03 e5                                      str r1, [r3, #-4]
005db6d4  00 30 a0 e3                                      mov r3, #0
005db6d8  0c 30 86 e5                                      str r3, [r6, #0xc]
005db6dc  08 30 86 e5                                      str r3, [r6, #8]
005db6e0  0c 60 82 e5                                      str r6, [r2, #0xc]
005db6e4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005db6e8  03 00 52 e1                                      cmp r2, r3
005db6ec  0c 60 84 05                                      streq r6, [r4, #0xc]
005db6f0  d5 ff ff ea                                      b #0x5db64c
005db6f4  04 00 93 e5                                      ldr r0, [r3, #4]
005db6f8  14 10 92 e5                                      ldr r1, [r2, #0x14]
005db6fc  01 00 50 e1                                      cmp r0, r1
005db700  e1 ff ff 2a                                      bhs #0x5db68c
005db704  a0 ff ff ea                                      b #0x5db58c

; FUNCTION 0x005db708, declared_size=472, range_size=472, mode=arm
; class-group: std::priv::_Rb_tree<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey, std::less<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey>, std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> >, std::priv::_Select1st<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > > >
; alias: _ZNSt4priv8_Rb_treeIN6glitch5video28IMaterialTechniqueMapsReader12SMapGroupKeyESt4lessIS4_ESt4pairIKS4_NS1_4core19SSharedProcessArrayIhEEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS9_23SProcessBufferAllocatorISC_EEE13insert_uniqueERKSC_
; demangled: std::priv::_Rb_tree<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey, std::less<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey>, std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> >, std::priv::_Select1st<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > > >::insert_unique(std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const, glitch::core::SSharedProcessArray<unsigned char> > const&)
; decoder-mode: arm
005db708  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005db70c  04 c0 91 e5                                      ldr ip, [r1, #4]
005db710  14 d0 4d e2                                      sub sp, sp, #0x14
005db714  00 40 a0 e1                                      mov r4, r0
005db718  00 00 5c e3                                      cmp ip, #0
005db71c  02 30 a0 e1                                      mov r3, r2
005db720  01 c0 a0 01                                      moveq ip, r1
005db724  28 00 00 0a                                      beq #0x5db7cc
005db728  00 60 92 e5                                      ldr r6, [r2]
005db72c  10 00 9c e5                                      ldr r0, [ip, #0x10]
005db730  0c 70 a0 e1                                      mov r7, ip
005db734  01 50 a0 e3                                      mov r5, #1
005db738  06 00 50 e1                                      cmp r0, r6
005db73c  0a 00 00 8a                                      bhi #0x5db76c
005db740  00 50 a0 13                                      movne r5, #0
005db744  17 00 00 0a                                      beq #0x5db7a8
005db748  0c 20 9c e5                                      ldr r2, [ip, #0xc]
005db74c  00 00 52 e3                                      cmp r2, #0
005db750  08 00 00 0a                                      beq #0x5db778
005db754  02 c0 a0 e1                                      mov ip, r2
005db758  10 00 9c e5                                      ldr r0, [ip, #0x10]
005db75c  0c 70 a0 e1                                      mov r7, ip
005db760  01 50 a0 e3                                      mov r5, #1
005db764  06 00 50 e1                                      cmp r0, r6
005db768  f4 ff ff 9a                                      bls #0x5db740
005db76c  08 20 9c e5                                      ldr r2, [ip, #8]
005db770  00 00 52 e3                                      cmp r2, #0
005db774  f6 ff ff 1a                                      bne #0x5db754
005db778  00 00 55 e3                                      cmp r5, #0
005db77c  0c 20 a0 01                                      moveq r2, ip
005db780  11 00 00 1a                                      bne #0x5db7cc
005db784  06 00 50 e1                                      cmp r0, r6
005db788  26 00 00 3a                                      blo #0x5db828
005db78c  00 00 a0 13                                      movne r0, #0
005db790  2e 00 00 0a                                      beq #0x5db850
005db794  00 20 84 e5                                      str r2, [r4]
005db798  04 00 c4 e5                                      strb r0, [r4, #4]
005db79c  04 00 a0 e1                                      mov r0, r4
005db7a0  14 d0 8d e2                                      add sp, sp, #0x14
005db7a4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005db7a8  14 20 9c e5                                      ldr r2, [ip, #0x14]
005db7ac  04 50 93 e5                                      ldr r5, [r3, #4]
005db7b0  02 00 55 e1                                      cmp r5, r2
005db7b4  00 50 a0 23                                      movhs r5, #0
005db7b8  01 50 a0 33                                      movlo r5, #1
005db7bc  00 00 55 e3                                      cmp r5, #0
005db7c0  e0 ff ff 0a                                      beq #0x5db748
005db7c4  08 20 9c e5                                      ldr r2, [ip, #8]
005db7c8  e8 ff ff ea                                      b #0x5db770
005db7cc  08 20 91 e5                                      ldr r2, [r1, #8]
005db7d0  02 00 5c e1                                      cmp ip, r2
005db7d4  38 00 00 0a                                      beq #0x5db8bc
005db7d8  00 20 dc e5                                      ldrb r2, [ip]
005db7dc  00 00 52 e3                                      cmp r2, #0
005db7e0  03 00 00 1a                                      bne #0x5db7f4
005db7e4  04 20 9c e5                                      ldr r2, [ip, #4]
005db7e8  04 20 92 e5                                      ldr r2, [r2, #4]
005db7ec  02 00 5c e1                                      cmp ip, r2
005db7f0  2c 00 00 0a                                      beq #0x5db8a8
005db7f4  08 70 9c e5                                      ldr r7, [ip, #8]
005db7f8  00 00 57 e3                                      cmp r7, #0
005db7fc  01 00 00 1a                                      bne #0x5db808
005db800  1a 00 00 ea                                      b #0x5db870
005db804  02 70 a0 e1                                      mov r7, r2
005db808  0c 20 97 e5                                      ldr r2, [r7, #0xc]
005db80c  00 00 52 e3                                      cmp r2, #0
005db810  fb ff ff 1a                                      bne #0x5db804
005db814  00 60 93 e5                                      ldr r6, [r3]
005db818  10 00 97 e5                                      ldr r0, [r7, #0x10]
005db81c  07 20 a0 e1                                      mov r2, r7
005db820  06 00 50 e1                                      cmp r0, r6
005db824  d8 ff ff 2a                                      bhs #0x5db78c
005db828  0c 20 a0 e1                                      mov r2, ip
005db82c  08 00 8d e2                                      add r0, sp, #8
005db830  00 c0 a0 e3                                      mov ip, #0
005db834  00 c0 8d e5                                      str ip, [sp]
005db838  4a ff ff eb                                      bl #0x5db568
005db83c  08 30 9d e5                                      ldr r3, [sp, #8]
005db840  01 20 a0 e3                                      mov r2, #1
005db844  04 20 c4 e5                                      strb r2, [r4, #4]
005db848  00 30 84 e5                                      str r3, [r4]
005db84c  d2 ff ff ea                                      b #0x5db79c
005db850  14 50 97 e5                                      ldr r5, [r7, #0x14]
005db854  04 00 93 e5                                      ldr r0, [r3, #4]
005db858  00 00 55 e1                                      cmp r5, r0
005db85c  00 00 a0 23                                      movhs r0, #0
005db860  01 00 a0 33                                      movlo r0, #1
005db864  00 00 50 e3                                      cmp r0, #0
005db868  c9 ff ff 0a                                      beq #0x5db794
005db86c  ed ff ff ea                                      b #0x5db828
005db870  04 20 9c e5                                      ldr r2, [ip, #4]
005db874  08 00 92 e5                                      ldr r0, [r2, #8]
005db878  00 00 5c e1                                      cmp ip, r0
005db87c  02 70 a0 11                                      movne r7, r2
005db880  00 60 93 15                                      ldrne r6, [r3]
005db884  10 00 97 15                                      ldrne r0, [r7, #0x10]
005db888  01 00 00 0a                                      beq #0x5db894
005db88c  bc ff ff ea                                      b #0x5db784
005db890  07 20 a0 e1                                      mov r2, r7
005db894  04 70 92 e5                                      ldr r7, [r2, #4]
005db898  08 00 97 e5                                      ldr r0, [r7, #8]
005db89c  02 00 50 e1                                      cmp r0, r2
005db8a0  fa ff ff 0a                                      beq #0x5db890
005db8a4  da ff ff ea                                      b #0x5db814
005db8a8  0c 70 9c e5                                      ldr r7, [ip, #0xc]
005db8ac  00 60 93 e5                                      ldr r6, [r3]
005db8b0  10 00 97 e5                                      ldr r0, [r7, #0x10]
005db8b4  07 20 a0 e1                                      mov r2, r7
005db8b8  b1 ff ff ea                                      b #0x5db784
005db8bc  0c 20 a0 e1                                      mov r2, ip
005db8c0  0c 00 8d e2                                      add r0, sp, #0xc
005db8c4  00 c0 8d e5                                      str ip, [sp]
005db8c8  26 ff ff eb                                      bl #0x5db568
005db8cc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005db8d0  01 20 a0 e3                                      mov r2, #1
005db8d4  04 20 c4 e5                                      strb r2, [r4, #4]
005db8d8  00 30 84 e5                                      str r3, [r4]
005db8dc  ae ff ff ea                                      b #0x5db79c
