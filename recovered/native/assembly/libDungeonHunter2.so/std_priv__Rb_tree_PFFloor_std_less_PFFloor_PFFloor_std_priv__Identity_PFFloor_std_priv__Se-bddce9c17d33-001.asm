; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051c634, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, PFFloor*, std::priv::_Identity<PFFloor*>, std::priv::_SetTraitsT<PFFloor*>, std::allocator<PFFloor*> >
; alias: _ZNSt4priv8_Rb_treeIP7PFFloorSt4lessIS2_ES2_NS_9_IdentityIS2_EENS_11_SetTraitsTIS2_EESaIS2_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, PFFloor*, std::priv::_Identity<PFFloor*>, std::priv::_SetTraitsT<PFFloor*>, std::allocator<PFFloor*> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0051c634  70 40 2d e9                                      push {r4, r5, r6, lr}
0051c638  00 40 51 e2                                      subs r4, r1, #0
0051c63c  00 60 a0 e1                                      mov r6, r0
0051c640  08 00 00 0a                                      beq #0x51c668
0051c644  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0051c648  06 00 a0 e1                                      mov r0, r6
0051c64c  f8 ff ff eb                                      bl #0x51c634
0051c650  08 50 94 e5                                      ldr r5, [r4, #8]
0051c654  04 00 a0 e1                                      mov r0, r4
0051c658  14 10 a0 e3                                      mov r1, #0x14
0051c65c  27 b2 07 eb                                      bl #0x708f00
0051c660  00 40 55 e2                                      subs r4, r5, #0
0051c664  f6 ff ff 1a                                      bne #0x51c644
0051c668  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0051de78, declared_size=288, range_size=288, mode=arm
; class-group: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, PFFloor*, std::priv::_Identity<PFFloor*>, std::priv::_SetTraitsT<PFFloor*>, std::allocator<PFFloor*> >
; alias: _ZNSt4priv8_Rb_treeIP7PFFloorSt4lessIS2_ES2_NS_9_IdentityIS2_EENS_11_SetTraitsTIS2_EESaIS2_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS2_SC_SC_.clone.7
; demangled: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, PFFloor*, std::priv::_Identity<PFFloor*>, std::priv::_SetTraitsT<PFFloor*>, std::allocator<PFFloor*> >::_M_insert(std::priv::_Rb_tree_node_base*, PFFloor* const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.7]
; decoder-mode: arm
0051de78  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0051de7c  02 00 51 e1                                      cmp r1, r2
0051de80  0c d0 4d e2                                      sub sp, sp, #0xc
0051de84  01 40 a0 e1                                      mov r4, r1
0051de88  00 50 a0 e1                                      mov r5, r0
0051de8c  20 70 9d e5                                      ldr r7, [sp, #0x20]
0051de90  12 00 00 0a                                      beq #0x51dee0
0051de94  00 00 57 e3                                      cmp r7, #0
0051de98  2a 00 00 0a                                      beq #0x51df48
0051de9c  04 00 a0 e1                                      mov r0, r4
0051dea0  04 20 8d e5                                      str r2, [sp, #4]
0051dea4  00 30 8d e5                                      str r3, [sp]
0051dea8  ea ff ff eb                                      bl #0x51de58
0051deac  00 30 9d e5                                      ldr r3, [sp]
0051deb0  00 60 a0 e1                                      mov r6, r0
0051deb4  00 10 93 e5                                      ldr r1, [r3]
0051deb8  00 30 a0 e3                                      mov r3, #0
0051debc  0c 30 80 e5                                      str r3, [r0, #0xc]
0051dec0  10 10 80 e5                                      str r1, [r0, #0x10]
0051dec4  08 30 80 e5                                      str r3, [r0, #8]
0051dec8  04 20 9d e5                                      ldr r2, [sp, #4]
0051decc  08 00 82 e5                                      str r0, [r2, #8]
0051ded0  08 30 94 e5                                      ldr r3, [r4, #8]
0051ded4  03 00 52 e1                                      cmp r2, r3
0051ded8  08 00 84 05                                      streq r0, [r4, #8]
0051dedc  0e 00 00 ea                                      b #0x51df1c
0051dee0  01 00 a0 e1                                      mov r0, r1
0051dee4  04 20 8d e5                                      str r2, [sp, #4]
0051dee8  00 30 8d e5                                      str r3, [sp]
0051deec  d9 ff ff eb                                      bl #0x51de58
0051def0  00 30 9d e5                                      ldr r3, [sp]
0051def4  00 60 a0 e1                                      mov r6, r0
0051def8  00 10 93 e5                                      ldr r1, [r3]
0051defc  00 30 a0 e3                                      mov r3, #0
0051df00  0c 30 80 e5                                      str r3, [r0, #0xc]
0051df04  10 10 80 e5                                      str r1, [r0, #0x10]
0051df08  08 30 80 e5                                      str r3, [r0, #8]
0051df0c  08 00 84 e5                                      str r0, [r4, #8]
0051df10  04 00 84 e5                                      str r0, [r4, #4]
0051df14  0c 00 84 e5                                      str r0, [r4, #0xc]
0051df18  04 20 9d e5                                      ldr r2, [sp, #4]
0051df1c  06 00 a0 e1                                      mov r0, r6
0051df20  04 20 86 e5                                      str r2, [r6, #4]
0051df24  04 10 84 e2                                      add r1, r4, #4
0051df28  0c d6 f7 eb                                      bl #0x313760
0051df2c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0051df30  05 00 a0 e1                                      mov r0, r5
0051df34  01 30 83 e2                                      add r3, r3, #1
0051df38  10 30 84 e5                                      str r3, [r4, #0x10]
0051df3c  00 60 85 e5                                      str r6, [r5]
0051df40  0c d0 8d e2                                      add sp, sp, #0xc
0051df44  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0051df48  00 00 93 e5                                      ldr r0, [r3]
0051df4c  10 10 92 e5                                      ldr r1, [r2, #0x10]
0051df50  01 00 50 e1                                      cmp r0, r1
0051df54  d0 ff ff 3a                                      blo #0x51de9c
0051df58  04 00 a0 e1                                      mov r0, r4
0051df5c  04 20 8d e5                                      str r2, [sp, #4]
0051df60  00 30 8d e5                                      str r3, [sp]
0051df64  bb ff ff eb                                      bl #0x51de58
0051df68  00 30 9d e5                                      ldr r3, [sp]
0051df6c  00 60 a0 e1                                      mov r6, r0
0051df70  00 30 93 e5                                      ldr r3, [r3]
0051df74  0c 70 80 e5                                      str r7, [r0, #0xc]
0051df78  08 70 80 e5                                      str r7, [r0, #8]
0051df7c  10 30 80 e5                                      str r3, [r0, #0x10]
0051df80  04 20 9d e5                                      ldr r2, [sp, #4]
0051df84  0c 00 82 e5                                      str r0, [r2, #0xc]
0051df88  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0051df8c  03 00 52 e1                                      cmp r2, r3
0051df90  0c 00 84 05                                      streq r0, [r4, #0xc]
0051df94  e0 ff ff ea                                      b #0x51df1c

; FUNCTION 0x0051df98, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, PFFloor*, std::priv::_Identity<PFFloor*>, std::priv::_SetTraitsT<PFFloor*>, std::allocator<PFFloor*> >
; alias: _ZNSt4priv8_Rb_treeIP7PFFloorSt4lessIS2_ES2_NS_9_IdentityIS2_EENS_11_SetTraitsTIS2_EESaIS2_EE13insert_uniqueERKS2_
; demangled: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, PFFloor*, std::priv::_Identity<PFFloor*>, std::priv::_SetTraitsT<PFFloor*>, std::allocator<PFFloor*> >::insert_unique(PFFloor* const&)
; decoder-mode: arm
0051df98  70 40 2d e9                                      push {r4, r5, r6, lr}
0051df9c  04 c0 91 e5                                      ldr ip, [r1, #4]
0051dfa0  10 d0 4d e2                                      sub sp, sp, #0x10
0051dfa4  00 40 a0 e1                                      mov r4, r0
0051dfa8  00 00 5c e3                                      cmp ip, #0
0051dfac  02 30 a0 e1                                      mov r3, r2
0051dfb0  01 c0 a0 01                                      moveq ip, r1
0051dfb4  15 00 00 0a                                      beq #0x51e010
0051dfb8  00 60 92 e5                                      ldr r6, [r2]
0051dfbc  00 00 00 ea                                      b #0x51dfc4
0051dfc0  02 c0 a0 e1                                      mov ip, r2
0051dfc4  10 00 9c e5                                      ldr r0, [ip, #0x10]
0051dfc8  01 50 a0 e3                                      mov r5, #1
0051dfcc  06 00 50 e1                                      cmp r0, r6
0051dfd0  08 20 9c 85                                      ldrhi r2, [ip, #8]
0051dfd4  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0051dfd8  00 50 a0 93                                      movls r5, #0
0051dfdc  00 00 52 e3                                      cmp r2, #0
0051dfe0  f6 ff ff 1a                                      bne #0x51dfc0
0051dfe4  00 00 55 e3                                      cmp r5, #0
0051dfe8  0c 50 a0 01                                      moveq r5, ip
0051dfec  07 00 00 1a                                      bne #0x51e010
0051dff0  00 00 56 e1                                      cmp r6, r0
0051dff4  00 30 a0 93                                      movls r3, #0
0051dff8  00 50 84 95                                      strls r5, [r4]
0051dffc  04 30 c4 95                                      strbls r3, [r4, #4]
0051e000  1c 00 00 8a                                      bhi #0x51e078
0051e004  04 00 a0 e1                                      mov r0, r4
0051e008  10 d0 8d e2                                      add sp, sp, #0x10
0051e00c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051e010  08 20 91 e5                                      ldr r2, [r1, #8]
0051e014  02 00 5c e1                                      cmp ip, r2
0051e018  35 00 00 0a                                      beq #0x51e0f4
0051e01c  00 20 dc e5                                      ldrb r2, [ip]
0051e020  00 00 52 e3                                      cmp r2, #0
0051e024  03 00 00 1a                                      bne #0x51e038
0051e028  04 20 9c e5                                      ldr r2, [ip, #4]
0051e02c  04 20 92 e5                                      ldr r2, [r2, #4]
0051e030  02 00 5c e1                                      cmp ip, r2
0051e034  29 00 00 0a                                      beq #0x51e0e0
0051e038  08 00 9c e5                                      ldr r0, [ip, #8]
0051e03c  00 00 50 e3                                      cmp r0, #0
0051e040  01 00 00 1a                                      bne #0x51e04c
0051e044  15 00 00 ea                                      b #0x51e0a0
0051e048  02 00 a0 e1                                      mov r0, r2
0051e04c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0051e050  00 00 52 e3                                      cmp r2, #0
0051e054  fb ff ff 1a                                      bne #0x51e048
0051e058  00 60 93 e5                                      ldr r6, [r3]
0051e05c  00 50 a0 e1                                      mov r5, r0
0051e060  10 00 90 e5                                      ldr r0, [r0, #0x10]
0051e064  00 00 56 e1                                      cmp r6, r0
0051e068  00 30 a0 93                                      movls r3, #0
0051e06c  00 50 84 95                                      strls r5, [r4]
0051e070  04 30 c4 95                                      strbls r3, [r4, #4]
0051e074  e2 ff ff 9a                                      bls #0x51e004
0051e078  0c 20 a0 e1                                      mov r2, ip
0051e07c  08 00 8d e2                                      add r0, sp, #8
0051e080  00 c0 a0 e3                                      mov ip, #0
0051e084  00 c0 8d e5                                      str ip, [sp]
0051e088  7a ff ff eb                                      bl #0x51de78
0051e08c  08 30 9d e5                                      ldr r3, [sp, #8]
0051e090  01 20 a0 e3                                      mov r2, #1
0051e094  04 20 c4 e5                                      strb r2, [r4, #4]
0051e098  00 30 84 e5                                      str r3, [r4]
0051e09c  d8 ff ff ea                                      b #0x51e004
0051e0a0  04 20 9c e5                                      ldr r2, [ip, #4]
0051e0a4  08 00 92 e5                                      ldr r0, [r2, #8]
0051e0a8  00 00 5c e1                                      cmp ip, r0
0051e0ac  02 50 a0 11                                      movne r5, r2
0051e0b0  00 60 93 15                                      ldrne r6, [r3]
0051e0b4  10 00 92 15                                      ldrne r0, [r2, #0x10]
0051e0b8  01 00 00 0a                                      beq #0x51e0c4
0051e0bc  cb ff ff ea                                      b #0x51dff0
0051e0c0  05 20 a0 e1                                      mov r2, r5
0051e0c4  04 50 92 e5                                      ldr r5, [r2, #4]
0051e0c8  08 00 95 e5                                      ldr r0, [r5, #8]
0051e0cc  02 00 50 e1                                      cmp r0, r2
0051e0d0  fa ff ff 0a                                      beq #0x51e0c0
0051e0d4  00 60 93 e5                                      ldr r6, [r3]
0051e0d8  10 00 95 e5                                      ldr r0, [r5, #0x10]
0051e0dc  c3 ff ff ea                                      b #0x51dff0
0051e0e0  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0051e0e4  00 60 93 e5                                      ldr r6, [r3]
0051e0e8  02 50 a0 e1                                      mov r5, r2
0051e0ec  10 00 92 e5                                      ldr r0, [r2, #0x10]
0051e0f0  be ff ff ea                                      b #0x51dff0
0051e0f4  0c 20 a0 e1                                      mov r2, ip
0051e0f8  0c 00 8d e2                                      add r0, sp, #0xc
0051e0fc  00 c0 8d e5                                      str ip, [sp]
0051e100  5c ff ff eb                                      bl #0x51de78
0051e104  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0051e108  01 20 a0 e3                                      mov r2, #1
0051e10c  04 20 c4 e5                                      strb r2, [r4, #4]
0051e110  00 30 84 e5                                      str r3, [r4]
0051e114  ba ff ff ea                                      b #0x51e004
