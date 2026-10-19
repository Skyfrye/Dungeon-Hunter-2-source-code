; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b1f20, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::BufferInfo>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::allocator<std::pair<unsigned int const, glitch::video::BufferInfo> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch5video10BufferInfoEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE5eraseENS_17_Rb_tree_iteratorIS8_SC_EE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::BufferInfo>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::allocator<std::pair<unsigned int const, glitch::video::BufferInfo> > >::erase(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, glitch::video::BufferInfo>, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::BufferInfo> > >)
; decoder-mode: arm
005b1f20  10 40 2d e9                                      push {r4, lr}
005b1f24  00 40 a0 e1                                      mov r4, r0
005b1f28  08 20 84 e2                                      add r2, r4, #8
005b1f2c  00 00 91 e5                                      ldr r0, [r1]
005b1f30  0c 30 84 e2                                      add r3, r4, #0xc
005b1f34  04 10 84 e2                                      add r1, r4, #4
005b1f38  31 10 f6 eb                                      bl #0x336004
005b1f3c  00 00 50 e3                                      cmp r0, #0
005b1f40  01 00 00 0a                                      beq #0x5b1f4c
005b1f44  28 10 a0 e3                                      mov r1, #0x28
005b1f48  ec 5b 05 eb                                      bl #0x708f00
005b1f4c  10 30 94 e5                                      ldr r3, [r4, #0x10]
005b1f50  01 30 43 e2                                      sub r3, r3, #1
005b1f54  10 30 84 e5                                      str r3, [r4, #0x10]
005b1f58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b35a0, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::BufferInfo>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::allocator<std::pair<unsigned int const, glitch::video::BufferInfo> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch5video10BufferInfoEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::BufferInfo>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::allocator<std::pair<unsigned int const, glitch::video::BufferInfo> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005b35a0  70 40 2d e9                                      push {r4, r5, r6, lr}
005b35a4  00 40 51 e2                                      subs r4, r1, #0
005b35a8  00 60 a0 e1                                      mov r6, r0
005b35ac  08 00 00 0a                                      beq #0x5b35d4
005b35b0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005b35b4  06 00 a0 e1                                      mov r0, r6
005b35b8  f8 ff ff eb                                      bl #0x5b35a0
005b35bc  08 50 94 e5                                      ldr r5, [r4, #8]
005b35c0  04 00 a0 e1                                      mov r0, r4
005b35c4  28 10 a0 e3                                      mov r1, #0x28
005b35c8  4c 56 05 eb                                      bl #0x708f00
005b35cc  00 40 55 e2                                      subs r4, r5, #0
005b35d0  f6 ff ff 1a                                      bne #0x5b35b0
005b35d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005b5910, declared_size=340, range_size=340, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::BufferInfo>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::allocator<std::pair<unsigned int const, glitch::video::BufferInfo> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch5video10BufferInfoEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS8_SG_SG_.clone.8
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::BufferInfo>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::allocator<std::pair<unsigned int const, glitch::video::BufferInfo> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, glitch::video::BufferInfo> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.8]
; decoder-mode: arm
005b5910  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b5914  02 00 51 e1                                      cmp r1, r2
005b5918  08 d0 4d e2                                      sub sp, sp, #8
005b591c  01 40 a0 e1                                      mov r4, r1
005b5920  02 60 a0 e1                                      mov r6, r2
005b5924  00 70 a0 e1                                      mov r7, r0
005b5928  20 80 9d e5                                      ldr r8, [sp, #0x20]
005b592c  16 00 00 0a                                      beq #0x5b598c
005b5930  00 00 58 e3                                      cmp r8, #0
005b5934  32 00 00 0a                                      beq #0x5b5a04
005b5938  04 00 a0 e1                                      mov r0, r4
005b593c  04 30 8d e5                                      str r3, [sp, #4]
005b5940  b8 f0 ff eb                                      bl #0x5b1c28
005b5944  04 30 9d e5                                      ldr r3, [sp, #4]
005b5948  14 e0 80 e2                                      add lr, r0, #0x14
005b594c  00 50 a0 e1                                      mov r5, r0
005b5950  03 c0 a0 e1                                      mov ip, r3
005b5954  04 30 9c e4                                      ldr r3, [ip], #4
005b5958  10 30 80 e5                                      str r3, [r0, #0x10]
005b595c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
005b5960  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
005b5964  00 20 9c e5                                      ldr r2, [ip]
005b5968  00 30 a0 e3                                      mov r3, #0
005b596c  00 20 8e e5                                      str r2, [lr]
005b5970  0c 30 85 e5                                      str r3, [r5, #0xc]
005b5974  08 30 85 e5                                      str r3, [r5, #8]
005b5978  08 50 86 e5                                      str r5, [r6, #8]
005b597c  08 30 94 e5                                      ldr r3, [r4, #8]
005b5980  03 00 56 e1                                      cmp r6, r3
005b5984  08 50 84 05                                      streq r5, [r4, #8]
005b5988  12 00 00 ea                                      b #0x5b59d8
005b598c  01 00 a0 e1                                      mov r0, r1
005b5990  04 30 8d e5                                      str r3, [sp, #4]
005b5994  a3 f0 ff eb                                      bl #0x5b1c28
005b5998  04 30 9d e5                                      ldr r3, [sp, #4]
005b599c  14 e0 80 e2                                      add lr, r0, #0x14
005b59a0  00 50 a0 e1                                      mov r5, r0
005b59a4  03 c0 a0 e1                                      mov ip, r3
005b59a8  04 30 9c e4                                      ldr r3, [ip], #4
005b59ac  10 30 80 e5                                      str r3, [r0, #0x10]
005b59b0  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
005b59b4  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
005b59b8  00 20 9c e5                                      ldr r2, [ip]
005b59bc  00 30 a0 e3                                      mov r3, #0
005b59c0  00 20 8e e5                                      str r2, [lr]
005b59c4  0c 30 85 e5                                      str r3, [r5, #0xc]
005b59c8  08 30 85 e5                                      str r3, [r5, #8]
005b59cc  08 50 84 e5                                      str r5, [r4, #8]
005b59d0  04 50 84 e5                                      str r5, [r4, #4]
005b59d4  0c 50 84 e5                                      str r5, [r4, #0xc]
005b59d8  05 00 a0 e1                                      mov r0, r5
005b59dc  04 60 85 e5                                      str r6, [r5, #4]
005b59e0  04 10 84 e2                                      add r1, r4, #4
005b59e4  5d 77 f5 eb                                      bl #0x313760
005b59e8  10 30 94 e5                                      ldr r3, [r4, #0x10]
005b59ec  07 00 a0 e1                                      mov r0, r7
005b59f0  01 30 83 e2                                      add r3, r3, #1
005b59f4  10 30 84 e5                                      str r3, [r4, #0x10]
005b59f8  00 50 87 e5                                      str r5, [r7]
005b59fc  08 d0 8d e2                                      add sp, sp, #8
005b5a00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b5a04  00 10 93 e5                                      ldr r1, [r3]
005b5a08  10 20 92 e5                                      ldr r2, [r2, #0x10]
005b5a0c  02 00 51 e1                                      cmp r1, r2
005b5a10  c8 ff ff 3a                                      blo #0x5b5938
005b5a14  04 00 a0 e1                                      mov r0, r4
005b5a18  04 30 8d e5                                      str r3, [sp, #4]
005b5a1c  81 f0 ff eb                                      bl #0x5b1c28
005b5a20  04 30 9d e5                                      ldr r3, [sp, #4]
005b5a24  14 e0 80 e2                                      add lr, r0, #0x14
005b5a28  00 50 a0 e1                                      mov r5, r0
005b5a2c  03 c0 a0 e1                                      mov ip, r3
005b5a30  04 30 9c e4                                      ldr r3, [ip], #4
005b5a34  10 30 80 e5                                      str r3, [r0, #0x10]
005b5a38  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
005b5a3c  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
005b5a40  00 30 9c e5                                      ldr r3, [ip]
005b5a44  00 30 8e e5                                      str r3, [lr]
005b5a48  0c 80 85 e5                                      str r8, [r5, #0xc]
005b5a4c  08 80 85 e5                                      str r8, [r5, #8]
005b5a50  0c 50 86 e5                                      str r5, [r6, #0xc]
005b5a54  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005b5a58  03 00 56 e1                                      cmp r6, r3
005b5a5c  0c 50 84 05                                      streq r5, [r4, #0xc]
005b5a60  dc ff ff ea                                      b #0x5b59d8

; FUNCTION 0x005b5a64, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::BufferInfo>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::allocator<std::pair<unsigned int const, glitch::video::BufferInfo> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch5video10BufferInfoEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueERKS8_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::BufferInfo>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::BufferInfo> >, std::allocator<std::pair<unsigned int const, glitch::video::BufferInfo> > >::insert_unique(std::pair<unsigned int const, glitch::video::BufferInfo> const&)
; decoder-mode: arm
005b5a64  70 40 2d e9                                      push {r4, r5, r6, lr}
005b5a68  04 c0 91 e5                                      ldr ip, [r1, #4]
005b5a6c  10 d0 4d e2                                      sub sp, sp, #0x10
005b5a70  00 40 a0 e1                                      mov r4, r0
005b5a74  00 00 5c e3                                      cmp ip, #0
005b5a78  02 30 a0 e1                                      mov r3, r2
005b5a7c  01 c0 a0 01                                      moveq ip, r1
005b5a80  15 00 00 0a                                      beq #0x5b5adc
005b5a84  00 60 92 e5                                      ldr r6, [r2]
005b5a88  00 00 00 ea                                      b #0x5b5a90
005b5a8c  02 c0 a0 e1                                      mov ip, r2
005b5a90  10 00 9c e5                                      ldr r0, [ip, #0x10]
005b5a94  01 50 a0 e3                                      mov r5, #1
005b5a98  06 00 50 e1                                      cmp r0, r6
005b5a9c  08 20 9c 85                                      ldrhi r2, [ip, #8]
005b5aa0  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
005b5aa4  00 50 a0 93                                      movls r5, #0
005b5aa8  00 00 52 e3                                      cmp r2, #0
005b5aac  f6 ff ff 1a                                      bne #0x5b5a8c
005b5ab0  00 00 55 e3                                      cmp r5, #0
005b5ab4  0c 50 a0 01                                      moveq r5, ip
005b5ab8  07 00 00 1a                                      bne #0x5b5adc
005b5abc  00 00 56 e1                                      cmp r6, r0
005b5ac0  00 30 a0 93                                      movls r3, #0
005b5ac4  00 50 84 95                                      strls r5, [r4]
005b5ac8  04 30 c4 95                                      strbls r3, [r4, #4]
005b5acc  1c 00 00 8a                                      bhi #0x5b5b44
005b5ad0  04 00 a0 e1                                      mov r0, r4
005b5ad4  10 d0 8d e2                                      add sp, sp, #0x10
005b5ad8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b5adc  08 20 91 e5                                      ldr r2, [r1, #8]
005b5ae0  02 00 5c e1                                      cmp ip, r2
005b5ae4  35 00 00 0a                                      beq #0x5b5bc0
005b5ae8  00 20 dc e5                                      ldrb r2, [ip]
005b5aec  00 00 52 e3                                      cmp r2, #0
005b5af0  03 00 00 1a                                      bne #0x5b5b04
005b5af4  04 20 9c e5                                      ldr r2, [ip, #4]
005b5af8  04 20 92 e5                                      ldr r2, [r2, #4]
005b5afc  02 00 5c e1                                      cmp ip, r2
005b5b00  29 00 00 0a                                      beq #0x5b5bac
005b5b04  08 00 9c e5                                      ldr r0, [ip, #8]
005b5b08  00 00 50 e3                                      cmp r0, #0
005b5b0c  01 00 00 1a                                      bne #0x5b5b18
005b5b10  15 00 00 ea                                      b #0x5b5b6c
005b5b14  02 00 a0 e1                                      mov r0, r2
005b5b18  0c 20 90 e5                                      ldr r2, [r0, #0xc]
005b5b1c  00 00 52 e3                                      cmp r2, #0
005b5b20  fb ff ff 1a                                      bne #0x5b5b14
005b5b24  00 60 93 e5                                      ldr r6, [r3]
005b5b28  00 50 a0 e1                                      mov r5, r0
005b5b2c  10 00 90 e5                                      ldr r0, [r0, #0x10]
005b5b30  00 00 56 e1                                      cmp r6, r0
005b5b34  00 30 a0 93                                      movls r3, #0
005b5b38  00 50 84 95                                      strls r5, [r4]
005b5b3c  04 30 c4 95                                      strbls r3, [r4, #4]
005b5b40  e2 ff ff 9a                                      bls #0x5b5ad0
005b5b44  0c 20 a0 e1                                      mov r2, ip
005b5b48  08 00 8d e2                                      add r0, sp, #8
005b5b4c  00 c0 a0 e3                                      mov ip, #0
005b5b50  00 c0 8d e5                                      str ip, [sp]
005b5b54  6d ff ff eb                                      bl #0x5b5910
005b5b58  08 30 9d e5                                      ldr r3, [sp, #8]
005b5b5c  01 20 a0 e3                                      mov r2, #1
005b5b60  04 20 c4 e5                                      strb r2, [r4, #4]
005b5b64  00 30 84 e5                                      str r3, [r4]
005b5b68  d8 ff ff ea                                      b #0x5b5ad0
005b5b6c  04 20 9c e5                                      ldr r2, [ip, #4]
005b5b70  08 00 92 e5                                      ldr r0, [r2, #8]
005b5b74  00 00 5c e1                                      cmp ip, r0
005b5b78  02 50 a0 11                                      movne r5, r2
005b5b7c  00 60 93 15                                      ldrne r6, [r3]
005b5b80  10 00 92 15                                      ldrne r0, [r2, #0x10]
005b5b84  01 00 00 0a                                      beq #0x5b5b90
005b5b88  cb ff ff ea                                      b #0x5b5abc
005b5b8c  05 20 a0 e1                                      mov r2, r5
005b5b90  04 50 92 e5                                      ldr r5, [r2, #4]
005b5b94  08 00 95 e5                                      ldr r0, [r5, #8]
005b5b98  02 00 50 e1                                      cmp r0, r2
005b5b9c  fa ff ff 0a                                      beq #0x5b5b8c
005b5ba0  00 60 93 e5                                      ldr r6, [r3]
005b5ba4  10 00 95 e5                                      ldr r0, [r5, #0x10]
005b5ba8  c3 ff ff ea                                      b #0x5b5abc
005b5bac  0c 20 9c e5                                      ldr r2, [ip, #0xc]
005b5bb0  00 60 93 e5                                      ldr r6, [r3]
005b5bb4  02 50 a0 e1                                      mov r5, r2
005b5bb8  10 00 92 e5                                      ldr r0, [r2, #0x10]
005b5bbc  be ff ff ea                                      b #0x5b5abc
005b5bc0  0c 20 a0 e1                                      mov r2, ip
005b5bc4  0c 00 8d e2                                      add r0, sp, #0xc
005b5bc8  00 c0 8d e5                                      str ip, [sp]
005b5bcc  4f ff ff eb                                      bl #0x5b5910
005b5bd0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005b5bd4  01 20 a0 e3                                      mov r2, #1
005b5bd8  04 20 c4 e5                                      strb r2, [r4, #4]
005b5bdc  00 30 84 e5                                      str r3, [r4]
005b5be0  ba ff ff ea                                      b #0x5b5ad0
