; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d5d64, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<float, std::less<float>, std::pair<float const, Character*>, std::priv::_Select1st<std::pair<float const, Character*> >, std::priv::_MapTraitsT<std::pair<float const, Character*> >, std::allocator<std::pair<float const, Character*> > >
; alias: _ZNSt4priv8_Rb_treeIfSt4lessIfESt4pairIKfP9CharacterENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<float, std::less<float>, std::pair<float const, Character*>, std::priv::_Select1st<std::pair<float const, Character*> >, std::priv::_MapTraitsT<std::pair<float const, Character*> >, std::allocator<std::pair<float const, Character*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003d5d64  70 40 2d e9                                      push {r4, r5, r6, lr}
003d5d68  00 40 51 e2                                      subs r4, r1, #0
003d5d6c  00 60 a0 e1                                      mov r6, r0
003d5d70  08 00 00 0a                                      beq #0x3d5d98
003d5d74  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003d5d78  06 00 a0 e1                                      mov r0, r6
003d5d7c  f8 ff ff eb                                      bl #0x3d5d64
003d5d80  08 50 94 e5                                      ldr r5, [r4, #8]
003d5d84  04 00 a0 e1                                      mov r0, r4
003d5d88  18 10 a0 e3                                      mov r1, #0x18
003d5d8c  5b cc 0c eb                                      bl #0x708f00
003d5d90  00 40 55 e2                                      subs r4, r5, #0
003d5d94  f6 ff ff 1a                                      bne #0x3d5d74
003d5d98  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d6f0c, declared_size=332, range_size=332, mode=arm
; class-group: std::priv::_Rb_tree<float, std::less<float>, std::pair<float const, Character*>, std::priv::_Select1st<std::pair<float const, Character*> >, std::priv::_MapTraitsT<std::pair<float const, Character*> >, std::allocator<std::pair<float const, Character*> > >
; alias: _ZNSt4priv8_Rb_treeIfSt4lessIfESt4pairIKfP9CharacterENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_.clone.2
; demangled: std::priv::_Rb_tree<float, std::less<float>, std::pair<float const, Character*>, std::priv::_Select1st<std::pair<float const, Character*> >, std::priv::_MapTraitsT<std::pair<float const, Character*> >, std::allocator<std::pair<float const, Character*> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<float const, Character*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.2]
; decoder-mode: arm
003d6f0c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d6f10  02 00 51 e1                                      cmp r1, r2
003d6f14  0c d0 4d e2                                      sub sp, sp, #0xc
003d6f18  01 40 a0 e1                                      mov r4, r1
003d6f1c  00 50 a0 e1                                      mov r5, r0
003d6f20  20 70 9d e5                                      ldr r7, [sp, #0x20]
003d6f24  14 00 00 0a                                      beq #0x3d6f7c
003d6f28  00 00 57 e3                                      cmp r7, #0
003d6f2c  2e 00 00 0a                                      beq #0x3d6fec
003d6f30  04 00 a0 e1                                      mov r0, r4
003d6f34  04 20 8d e5                                      str r2, [sp, #4]
003d6f38  00 30 8d e5                                      str r3, [sp]
003d6f3c  ea ff ff eb                                      bl #0x3d6eec
003d6f40  00 30 9d e5                                      ldr r3, [sp]
003d6f44  00 10 a0 e3                                      mov r1, #0
003d6f48  00 60 a0 e1                                      mov r6, r0
003d6f4c  00 c0 93 e5                                      ldr ip, [r3]
003d6f50  10 c0 80 e5                                      str ip, [r0, #0x10]
003d6f54  04 30 93 e5                                      ldr r3, [r3, #4]
003d6f58  0c 10 80 e5                                      str r1, [r0, #0xc]
003d6f5c  08 10 80 e5                                      str r1, [r0, #8]
003d6f60  14 30 80 e5                                      str r3, [r0, #0x14]
003d6f64  04 20 9d e5                                      ldr r2, [sp, #4]
003d6f68  08 00 82 e5                                      str r0, [r2, #8]
003d6f6c  08 30 94 e5                                      ldr r3, [r4, #8]
003d6f70  03 00 52 e1                                      cmp r2, r3
003d6f74  08 00 84 05                                      streq r0, [r4, #8]
003d6f78  10 00 00 ea                                      b #0x3d6fc0
003d6f7c  01 00 a0 e1                                      mov r0, r1
003d6f80  04 20 8d e5                                      str r2, [sp, #4]
003d6f84  00 30 8d e5                                      str r3, [sp]
003d6f88  d7 ff ff eb                                      bl #0x3d6eec
003d6f8c  00 30 9d e5                                      ldr r3, [sp]
003d6f90  00 10 a0 e3                                      mov r1, #0
003d6f94  00 60 a0 e1                                      mov r6, r0
003d6f98  00 c0 93 e5                                      ldr ip, [r3]
003d6f9c  10 c0 80 e5                                      str ip, [r0, #0x10]
003d6fa0  04 30 93 e5                                      ldr r3, [r3, #4]
003d6fa4  0c 10 80 e5                                      str r1, [r0, #0xc]
003d6fa8  08 10 80 e5                                      str r1, [r0, #8]
003d6fac  14 30 80 e5                                      str r3, [r0, #0x14]
003d6fb0  08 00 84 e5                                      str r0, [r4, #8]
003d6fb4  04 00 84 e5                                      str r0, [r4, #4]
003d6fb8  0c 00 84 e5                                      str r0, [r4, #0xc]
003d6fbc  04 20 9d e5                                      ldr r2, [sp, #4]
003d6fc0  06 00 a0 e1                                      mov r0, r6
003d6fc4  04 20 86 e5                                      str r2, [r6, #4]
003d6fc8  04 10 84 e2                                      add r1, r4, #4
003d6fcc  e3 f1 fc eb                                      bl #0x313760
003d6fd0  10 30 94 e5                                      ldr r3, [r4, #0x10]
003d6fd4  05 00 a0 e1                                      mov r0, r5
003d6fd8  01 30 83 e2                                      add r3, r3, #1
003d6fdc  10 30 84 e5                                      str r3, [r4, #0x10]
003d6fe0  00 60 85 e5                                      str r6, [r5]
003d6fe4  0c d0 8d e2                                      add sp, sp, #0xc
003d6fe8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d6fec  00 00 93 e5                                      ldr r0, [r3]
003d6ff0  10 10 92 e5                                      ldr r1, [r2, #0x10]
003d6ff4  04 20 8d e5                                      str r2, [sp, #4]
003d6ff8  00 30 8d e5                                      str r3, [sp]
003d6ffc  c2 dd fc eb                                      bl #0x30e70c
003d7000  00 00 50 e3                                      cmp r0, #0
003d7004  04 20 9d e5                                      ldr r2, [sp, #4]
003d7008  00 30 9d e5                                      ldr r3, [sp]
003d700c  c7 ff ff 1a                                      bne #0x3d6f30
003d7010  04 00 a0 e1                                      mov r0, r4
003d7014  04 20 8d e5                                      str r2, [sp, #4]
003d7018  00 30 8d e5                                      str r3, [sp]
003d701c  b2 ff ff eb                                      bl #0x3d6eec
003d7020  00 30 9d e5                                      ldr r3, [sp]
003d7024  00 60 a0 e1                                      mov r6, r0
003d7028  00 10 93 e5                                      ldr r1, [r3]
003d702c  10 10 80 e5                                      str r1, [r0, #0x10]
003d7030  04 30 93 e5                                      ldr r3, [r3, #4]
003d7034  0c 70 80 e5                                      str r7, [r0, #0xc]
003d7038  08 70 80 e5                                      str r7, [r0, #8]
003d703c  14 30 80 e5                                      str r3, [r0, #0x14]
003d7040  04 20 9d e5                                      ldr r2, [sp, #4]
003d7044  0c 00 82 e5                                      str r0, [r2, #0xc]
003d7048  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003d704c  03 00 52 e1                                      cmp r2, r3
003d7050  0c 00 84 05                                      streq r0, [r4, #0xc]
003d7054  d9 ff ff ea                                      b #0x3d6fc0

; FUNCTION 0x003d7058, declared_size=432, range_size=432, mode=arm
; class-group: std::priv::_Rb_tree<float, std::less<float>, std::pair<float const, Character*>, std::priv::_Select1st<std::pair<float const, Character*> >, std::priv::_MapTraitsT<std::pair<float const, Character*> >, std::allocator<std::pair<float const, Character*> > >
; alias: _ZNSt4priv8_Rb_treeIfSt4lessIfESt4pairIKfP9CharacterENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<float, std::less<float>, std::pair<float const, Character*>, std::priv::_Select1st<std::pair<float const, Character*> >, std::priv::_MapTraitsT<std::pair<float const, Character*> >, std::allocator<std::pair<float const, Character*> > >::insert_unique(std::pair<float const, Character*> const&)
; decoder-mode: arm
003d7058  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003d705c  04 50 91 e5                                      ldr r5, [r1, #4]
003d7060  10 d0 4d e2                                      sub sp, sp, #0x10
003d7064  01 60 a0 e1                                      mov r6, r1
003d7068  00 00 55 e3                                      cmp r5, #0
003d706c  00 40 a0 e1                                      mov r4, r0
003d7070  02 70 a0 e1                                      mov r7, r2
003d7074  01 50 a0 01                                      moveq r5, r1
003d7078  20 00 00 0a                                      beq #0x3d7100
003d707c  00 90 92 e5                                      ldr sb, [r2]
003d7080  00 00 00 ea                                      b #0x3d7088
003d7084  03 50 a0 e1                                      mov r5, r3
003d7088  10 a0 95 e5                                      ldr sl, [r5, #0x10]
003d708c  09 10 a0 e1                                      mov r1, sb
003d7090  00 80 a0 e3                                      mov r8, #0
003d7094  0a 00 a0 e1                                      mov r0, sl
003d7098  96 dc fc eb                                      bl #0x30e2f8
003d709c  00 00 50 e3                                      cmp r0, #0
003d70a0  01 80 a0 13                                      movne r8, #1
003d70a4  78 80 ef e6                                      uxtb r8, r8
003d70a8  00 00 58 e3                                      cmp r8, #0
003d70ac  08 30 95 15                                      ldrne r3, [r5, #8]
003d70b0  0c 30 95 05                                      ldreq r3, [r5, #0xc]
003d70b4  00 00 53 e3                                      cmp r3, #0
003d70b8  f1 ff ff 1a                                      bne #0x3d7084
003d70bc  00 00 58 e3                                      cmp r8, #0
003d70c0  05 80 a0 01                                      moveq r8, r5
003d70c4  0d 00 00 1a                                      bne #0x3d7100
003d70c8  09 00 a0 e1                                      mov r0, sb
003d70cc  0a 10 a0 e1                                      mov r1, sl
003d70d0  88 dc fc eb                                      bl #0x30e2f8
003d70d4  00 00 50 e3                                      cmp r0, #0
003d70d8  00 30 a0 e3                                      mov r3, #0
003d70dc  01 30 a0 13                                      movne r3, #1
003d70e0  73 30 ef e6                                      uxtb r3, r3
003d70e4  00 00 53 e3                                      cmp r3, #0
003d70e8  00 80 84 05                                      streq r8, [r4]
003d70ec  04 30 c4 05                                      strbeq r3, [r4, #4]
003d70f0  18 00 00 1a                                      bne #0x3d7158
003d70f4  04 00 a0 e1                                      mov r0, r4
003d70f8  10 d0 8d e2                                      add sp, sp, #0x10
003d70fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003d7100  08 30 96 e5                                      ldr r3, [r6, #8]
003d7104  03 00 55 e1                                      cmp r5, r3
003d7108  33 00 00 0a                                      beq #0x3d71dc
003d710c  00 30 d5 e5                                      ldrb r3, [r5]
003d7110  00 00 53 e3                                      cmp r3, #0
003d7114  03 00 00 1a                                      bne #0x3d7128
003d7118  04 30 95 e5                                      ldr r3, [r5, #4]
003d711c  04 30 93 e5                                      ldr r3, [r3, #4]
003d7120  03 00 55 e1                                      cmp r5, r3
003d7124  27 00 00 0a                                      beq #0x3d71c8
003d7128  08 20 95 e5                                      ldr r2, [r5, #8]
003d712c  00 00 52 e3                                      cmp r2, #0
003d7130  01 00 00 1a                                      bne #0x3d713c
003d7134  13 00 00 ea                                      b #0x3d7188
003d7138  03 20 a0 e1                                      mov r2, r3
003d713c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
003d7140  00 00 53 e3                                      cmp r3, #0
003d7144  fb ff ff 1a                                      bne #0x3d7138
003d7148  02 80 a0 e1                                      mov r8, r2
003d714c  00 90 97 e5                                      ldr sb, [r7]
003d7150  10 a0 92 e5                                      ldr sl, [r2, #0x10]
003d7154  db ff ff ea                                      b #0x3d70c8
003d7158  05 20 a0 e1                                      mov r2, r5
003d715c  07 30 a0 e1                                      mov r3, r7
003d7160  00 c0 a0 e3                                      mov ip, #0
003d7164  06 10 a0 e1                                      mov r1, r6
003d7168  08 00 8d e2                                      add r0, sp, #8
003d716c  00 c0 8d e5                                      str ip, [sp]
003d7170  65 ff ff eb                                      bl #0x3d6f0c
003d7174  08 30 9d e5                                      ldr r3, [sp, #8]
003d7178  01 20 a0 e3                                      mov r2, #1
003d717c  04 20 c4 e5                                      strb r2, [r4, #4]
003d7180  00 30 84 e5                                      str r3, [r4]
003d7184  da ff ff ea                                      b #0x3d70f4
003d7188  04 30 95 e5                                      ldr r3, [r5, #4]
003d718c  08 20 93 e5                                      ldr r2, [r3, #8]
003d7190  02 00 55 e1                                      cmp r5, r2
003d7194  03 80 a0 11                                      movne r8, r3
003d7198  00 90 97 15                                      ldrne sb, [r7]
003d719c  10 a0 93 15                                      ldrne sl, [r3, #0x10]
003d71a0  01 00 00 0a                                      beq #0x3d71ac
003d71a4  c7 ff ff ea                                      b #0x3d70c8
003d71a8  08 30 a0 e1                                      mov r3, r8
003d71ac  04 80 93 e5                                      ldr r8, [r3, #4]
003d71b0  08 20 98 e5                                      ldr r2, [r8, #8]
003d71b4  03 00 52 e1                                      cmp r2, r3
003d71b8  fa ff ff 0a                                      beq #0x3d71a8
003d71bc  00 90 97 e5                                      ldr sb, [r7]
003d71c0  10 a0 98 e5                                      ldr sl, [r8, #0x10]
003d71c4  bf ff ff ea                                      b #0x3d70c8
003d71c8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003d71cc  00 90 97 e5                                      ldr sb, [r7]
003d71d0  03 80 a0 e1                                      mov r8, r3
003d71d4  10 a0 93 e5                                      ldr sl, [r3, #0x10]
003d71d8  ba ff ff ea                                      b #0x3d70c8
003d71dc  05 20 a0 e1                                      mov r2, r5
003d71e0  07 30 a0 e1                                      mov r3, r7
003d71e4  06 10 a0 e1                                      mov r1, r6
003d71e8  0c 00 8d e2                                      add r0, sp, #0xc
003d71ec  00 50 8d e5                                      str r5, [sp]
003d71f0  45 ff ff eb                                      bl #0x3d6f0c
003d71f4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003d71f8  01 20 a0 e3                                      mov r2, #1
003d71fc  04 20 c4 e5                                      strb r2, [r4, #4]
003d7200  00 30 84 e5                                      str r3, [r4]
003d7204  ba ff ff ea                                      b #0x3d70f4
