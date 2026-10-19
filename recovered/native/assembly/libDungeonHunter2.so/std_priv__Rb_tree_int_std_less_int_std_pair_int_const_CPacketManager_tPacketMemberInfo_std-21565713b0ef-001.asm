; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008155b8, declared_size=328, range_size=328, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_Select1st<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN14CPacketManager17tPacketMemberInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_Select1st<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, CPacketManager::tPacketMemberInfo> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
008155b8  02 00 51 e1                                      cmp r1, r2
008155bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008155c0  01 40 a0 e1                                      mov r4, r1
008155c4  02 60 a0 e1                                      mov r6, r2
008155c8  00 70 a0 e1                                      mov r7, r0
008155cc  03 50 a0 e1                                      mov r5, r3
008155d0  34 00 00 0a                                      beq #0x8156a8
008155d4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
008155d8  00 00 53 e3                                      cmp r3, #0
008155dc  1a 00 00 0a                                      beq #0x81564c
008155e0  04 00 a0 e1                                      mov r0, r4
008155e4  be ff ff eb                                      bl #0x8154e4
008155e8  05 30 a0 e1                                      mov r3, r5
008155ec  04 20 93 e4                                      ldr r2, [r3], #4
008155f0  14 c0 80 e2                                      add ip, r0, #0x14
008155f4  00 50 a0 e1                                      mov r5, r0
008155f8  10 20 80 e5                                      str r2, [r0, #0x10]
008155fc  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00815600  07 00 ac e8                                      stm ip!, {r0, r1, r2}
00815604  00 20 a0 e3                                      mov r2, #0
00815608  b0 30 cc e1                                      strh r3, [ip]
0081560c  0c 20 85 e5                                      str r2, [r5, #0xc]
00815610  08 20 85 e5                                      str r2, [r5, #8]
00815614  0c 50 86 e5                                      str r5, [r6, #0xc]
00815618  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081561c  03 00 56 e1                                      cmp r6, r3
00815620  1e 00 00 0a                                      beq #0x8156a0
00815624  05 00 a0 e1                                      mov r0, r5
00815628  04 60 85 e5                                      str r6, [r5, #4]
0081562c  04 10 84 e2                                      add r1, r4, #4
00815630  4a f8 eb eb                                      bl #0x313760
00815634  10 30 94 e5                                      ldr r3, [r4, #0x10]
00815638  07 00 a0 e1                                      mov r0, r7
0081563c  01 30 83 e2                                      add r3, r3, #1
00815640  10 30 84 e5                                      str r3, [r4, #0x10]
00815644  00 50 87 e5                                      str r5, [r7]
00815648  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081564c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00815650  00 00 53 e3                                      cmp r3, #0
00815654  24 00 00 0a                                      beq #0x8156ec
00815658  04 00 a0 e1                                      mov r0, r4
0081565c  a0 ff ff eb                                      bl #0x8154e4
00815660  05 30 a0 e1                                      mov r3, r5
00815664  04 20 93 e4                                      ldr r2, [r3], #4
00815668  14 c0 80 e2                                      add ip, r0, #0x14
0081566c  00 50 a0 e1                                      mov r5, r0
00815670  10 20 80 e5                                      str r2, [r0, #0x10]
00815674  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00815678  07 00 ac e8                                      stm ip!, {r0, r1, r2}
0081567c  00 20 a0 e3                                      mov r2, #0
00815680  b0 30 cc e1                                      strh r3, [ip]
00815684  0c 20 85 e5                                      str r2, [r5, #0xc]
00815688  08 20 85 e5                                      str r2, [r5, #8]
0081568c  08 50 86 e5                                      str r5, [r6, #8]
00815690  08 30 94 e5                                      ldr r3, [r4, #8]
00815694  03 00 56 e1                                      cmp r6, r3
00815698  08 50 84 05                                      streq r5, [r4, #8]
0081569c  e0 ff ff ea                                      b #0x815624
008156a0  0c 50 84 e5                                      str r5, [r4, #0xc]
008156a4  de ff ff ea                                      b #0x815624
008156a8  01 00 a0 e1                                      mov r0, r1
008156ac  8c ff ff eb                                      bl #0x8154e4
008156b0  05 30 a0 e1                                      mov r3, r5
008156b4  04 20 93 e4                                      ldr r2, [r3], #4
008156b8  14 c0 80 e2                                      add ip, r0, #0x14
008156bc  00 50 a0 e1                                      mov r5, r0
008156c0  10 20 80 e5                                      str r2, [r0, #0x10]
008156c4  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
008156c8  07 00 ac e8                                      stm ip!, {r0, r1, r2}
008156cc  00 20 a0 e3                                      mov r2, #0
008156d0  b0 30 cc e1                                      strh r3, [ip]
008156d4  0c 20 85 e5                                      str r2, [r5, #0xc]
008156d8  08 20 85 e5                                      str r2, [r5, #8]
008156dc  08 50 84 e5                                      str r5, [r4, #8]
008156e0  04 50 84 e5                                      str r5, [r4, #4]
008156e4  0c 50 84 e5                                      str r5, [r4, #0xc]
008156e8  cd ff ff ea                                      b #0x815624
008156ec  00 20 95 e5                                      ldr r2, [r5]
008156f0  10 30 96 e5                                      ldr r3, [r6, #0x10]
008156f4  03 00 52 e1                                      cmp r2, r3
008156f8  b8 ff ff aa                                      bge #0x8155e0
008156fc  d5 ff ff ea                                      b #0x815658

; FUNCTION 0x00815700, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_Select1st<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN14CPacketManager17tPacketMemberInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_Select1st<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >::insert_unique(std::pair<int const, CPacketManager::tPacketMemberInfo> const&)
; decoder-mode: arm
00815700  70 40 2d e9                                      push {r4, r5, r6, lr}
00815704  04 c0 91 e5                                      ldr ip, [r1, #4]
00815708  10 d0 4d e2                                      sub sp, sp, #0x10
0081570c  00 40 a0 e1                                      mov r4, r0
00815710  00 00 5c e3                                      cmp ip, #0
00815714  02 30 a0 e1                                      mov r3, r2
00815718  01 c0 a0 01                                      moveq ip, r1
0081571c  15 00 00 0a                                      beq #0x815778
00815720  00 60 92 e5                                      ldr r6, [r2]
00815724  00 00 00 ea                                      b #0x81572c
00815728  02 c0 a0 e1                                      mov ip, r2
0081572c  10 00 9c e5                                      ldr r0, [ip, #0x10]
00815730  01 50 a0 e3                                      mov r5, #1
00815734  06 00 50 e1                                      cmp r0, r6
00815738  08 20 9c c5                                      ldrgt r2, [ip, #8]
0081573c  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00815740  00 50 a0 d3                                      movle r5, #0
00815744  00 00 52 e3                                      cmp r2, #0
00815748  f6 ff ff 1a                                      bne #0x815728
0081574c  00 00 55 e3                                      cmp r5, #0
00815750  0c 50 a0 01                                      moveq r5, ip
00815754  07 00 00 1a                                      bne #0x815778
00815758  00 00 56 e1                                      cmp r6, r0
0081575c  00 30 a0 d3                                      movle r3, #0
00815760  00 50 84 d5                                      strle r5, [r4]
00815764  04 30 c4 d5                                      strble r3, [r4, #4]
00815768  1c 00 00 ca                                      bgt #0x8157e0
0081576c  04 00 a0 e1                                      mov r0, r4
00815770  10 d0 8d e2                                      add sp, sp, #0x10
00815774  70 80 bd e8                                      pop {r4, r5, r6, pc}
00815778  08 20 91 e5                                      ldr r2, [r1, #8]
0081577c  02 00 5c e1                                      cmp ip, r2
00815780  36 00 00 0a                                      beq #0x815860
00815784  00 20 dc e5                                      ldrb r2, [ip]
00815788  00 00 52 e3                                      cmp r2, #0
0081578c  03 00 00 1a                                      bne #0x8157a0
00815790  04 20 9c e5                                      ldr r2, [ip, #4]
00815794  04 20 92 e5                                      ldr r2, [r2, #4]
00815798  02 00 5c e1                                      cmp ip, r2
0081579c  2a 00 00 0a                                      beq #0x81584c
008157a0  08 00 9c e5                                      ldr r0, [ip, #8]
008157a4  00 00 50 e3                                      cmp r0, #0
008157a8  01 00 00 1a                                      bne #0x8157b4
008157ac  16 00 00 ea                                      b #0x81580c
008157b0  02 00 a0 e1                                      mov r0, r2
008157b4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
008157b8  00 00 52 e3                                      cmp r2, #0
008157bc  fb ff ff 1a                                      bne #0x8157b0
008157c0  00 60 93 e5                                      ldr r6, [r3]
008157c4  00 50 a0 e1                                      mov r5, r0
008157c8  10 00 90 e5                                      ldr r0, [r0, #0x10]
008157cc  00 00 56 e1                                      cmp r6, r0
008157d0  00 30 a0 d3                                      movle r3, #0
008157d4  00 50 84 d5                                      strle r5, [r4]
008157d8  04 30 c4 d5                                      strble r3, [r4, #4]
008157dc  e2 ff ff da                                      ble #0x81576c
008157e0  0c 20 a0 e1                                      mov r2, ip
008157e4  08 00 8d e2                                      add r0, sp, #8
008157e8  00 c0 a0 e3                                      mov ip, #0
008157ec  04 c0 8d e5                                      str ip, [sp, #4]
008157f0  00 c0 8d e5                                      str ip, [sp]
008157f4  6f ff ff eb                                      bl #0x8155b8
008157f8  08 30 9d e5                                      ldr r3, [sp, #8]
008157fc  01 20 a0 e3                                      mov r2, #1
00815800  04 20 c4 e5                                      strb r2, [r4, #4]
00815804  00 30 84 e5                                      str r3, [r4]
00815808  d7 ff ff ea                                      b #0x81576c
0081580c  04 20 9c e5                                      ldr r2, [ip, #4]
00815810  08 00 92 e5                                      ldr r0, [r2, #8]
00815814  00 00 5c e1                                      cmp ip, r0
00815818  02 50 a0 11                                      movne r5, r2
0081581c  00 60 93 15                                      ldrne r6, [r3]
00815820  10 00 92 15                                      ldrne r0, [r2, #0x10]
00815824  01 00 00 0a                                      beq #0x815830
00815828  ca ff ff ea                                      b #0x815758
0081582c  05 20 a0 e1                                      mov r2, r5
00815830  04 50 92 e5                                      ldr r5, [r2, #4]
00815834  08 00 95 e5                                      ldr r0, [r5, #8]
00815838  02 00 50 e1                                      cmp r0, r2
0081583c  fa ff ff 0a                                      beq #0x81582c
00815840  00 60 93 e5                                      ldr r6, [r3]
00815844  10 00 95 e5                                      ldr r0, [r5, #0x10]
00815848  c2 ff ff ea                                      b #0x815758
0081584c  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00815850  00 60 93 e5                                      ldr r6, [r3]
00815854  02 50 a0 e1                                      mov r5, r2
00815858  10 00 92 e5                                      ldr r0, [r2, #0x10]
0081585c  bd ff ff ea                                      b #0x815758
00815860  0c 20 a0 e1                                      mov r2, ip
00815864  00 e0 a0 e3                                      mov lr, #0
00815868  0c 00 8d e2                                      add r0, sp, #0xc
0081586c  00 50 8d e8                                      stm sp, {ip, lr}
00815870  50 ff ff eb                                      bl #0x8155b8
00815874  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00815878  01 20 a0 e3                                      mov r2, #1
0081587c  04 20 c4 e5                                      strb r2, [r4, #4]
00815880  00 30 84 e5                                      str r3, [r4]
00815884  b8 ff ff ea                                      b #0x81576c

; FUNCTION 0x00815888, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_Select1st<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN14CPacketManager17tPacketMemberInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_Select1st<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> > >, std::pair<int const, CPacketManager::tPacketMemberInfo> const&)
; decoder-mode: arm
00815888  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0081588c  00 40 92 e5                                      ldr r4, [r2]
00815890  08 20 91 e5                                      ldr r2, [r1, #8]
00815894  2c d0 4d e2                                      sub sp, sp, #0x2c
00815898  01 50 a0 e1                                      mov r5, r1
0081589c  02 00 54 e1                                      cmp r4, r2
008158a0  00 70 a0 e1                                      mov r7, r0
008158a4  03 60 a0 e1                                      mov r6, r3
008158a8  5a 00 00 0a                                      beq #0x815a18
008158ac  01 00 54 e1                                      cmp r4, r1
008158b0  78 00 00 0a                                      beq #0x815a98
008158b4  00 30 d4 e5                                      ldrb r3, [r4]
008158b8  00 00 53 e3                                      cmp r3, #0
008158bc  3a 00 00 0a                                      beq #0x8159ac
008158c0  08 c0 94 e5                                      ldr ip, [r4, #8]
008158c4  00 00 5c e3                                      cmp ip, #0
008158c8  01 00 00 1a                                      bne #0x8158d4
008158cc  3e 00 00 ea                                      b #0x8159cc
008158d0  03 c0 a0 e1                                      mov ip, r3
008158d4  0c 30 9c e5                                      ldr r3, [ip, #0xc]
008158d8  00 00 53 e3                                      cmp r3, #0
008158dc  fb ff ff 1a                                      bne #0x8158d0
008158e0  00 20 96 e5                                      ldr r2, [r6]
008158e4  10 00 94 e5                                      ldr r0, [r4, #0x10]
008158e8  00 00 52 e1                                      cmp r2, r0
008158ec  00 10 a0 a3                                      movge r1, #0
008158f0  01 10 a0 b3                                      movlt r1, #1
008158f4  00 00 51 e3                                      cmp r1, #0
008158f8  1b 00 00 1a                                      bne #0x81596c
008158fc  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00815900  00 00 58 e3                                      cmp r8, #0
00815904  7d 00 00 0a                                      beq #0x815b00
00815908  08 c0 a0 e1                                      mov ip, r8
0081590c  00 00 00 ea                                      b #0x815914
00815910  03 c0 a0 e1                                      mov ip, r3
00815914  08 30 9c e5                                      ldr r3, [ip, #8]
00815918  00 00 53 e3                                      cmp r3, #0
0081591c  fb ff ff 1a                                      bne #0x815910
00815920  00 00 51 e3                                      cmp r1, #0
00815924  34 00 00 1a                                      bne #0x8159fc
00815928  00 00 52 e1                                      cmp r2, r0
0081592c  63 00 00 da                                      ble #0x815ac0
00815930  0c 00 55 e1                                      cmp r5, ip
00815934  02 00 00 0a                                      beq #0x815944
00815938  10 30 9c e5                                      ldr r3, [ip, #0x10]
0081593c  03 00 52 e1                                      cmp r2, r3
00815940  2d 00 00 aa                                      bge #0x8159fc
00815944  00 00 58 e3                                      cmp r8, #0
00815948  4a 00 00 1a                                      bne #0x815a78
0081594c  05 10 a0 e1                                      mov r1, r5
00815950  04 20 a0 e1                                      mov r2, r4
00815954  06 30 a0 e1                                      mov r3, r6
00815958  07 00 a0 e1                                      mov r0, r7
0081595c  00 80 8d e5                                      str r8, [sp]
00815960  04 40 8d e5                                      str r4, [sp, #4]
00815964  13 ff ff eb                                      bl #0x8155b8
00815968  0c 00 00 ea                                      b #0x8159a0
0081596c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00815970  03 00 52 e1                                      cmp r2, r3
00815974  e0 ff ff da                                      ble #0x8158fc
00815978  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0081597c  00 00 5e e3                                      cmp lr, #0
00815980  56 00 00 0a                                      beq #0x815ae0
00815984  00 c0 a0 e3                                      mov ip, #0
00815988  05 10 a0 e1                                      mov r1, r5
0081598c  04 20 a0 e1                                      mov r2, r4
00815990  06 30 a0 e1                                      mov r3, r6
00815994  07 00 a0 e1                                      mov r0, r7
00815998  10 10 8d e8                                      stm sp, {r4, ip}
0081599c  05 ff ff eb                                      bl #0x8155b8
008159a0  07 00 a0 e1                                      mov r0, r7
008159a4  2c d0 8d e2                                      add sp, sp, #0x2c
008159a8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008159ac  04 30 94 e5                                      ldr r3, [r4, #4]
008159b0  04 30 93 e5                                      ldr r3, [r3, #4]
008159b4  03 00 54 e1                                      cmp r4, r3
008159b8  0c c0 94 05                                      ldreq ip, [r4, #0xc]
008159bc  c7 ff ff 0a                                      beq #0x8158e0
008159c0  08 c0 94 e5                                      ldr ip, [r4, #8]
008159c4  00 00 5c e3                                      cmp ip, #0
008159c8  c1 ff ff 1a                                      bne #0x8158d4
008159cc  04 c0 94 e5                                      ldr ip, [r4, #4]
008159d0  08 30 9c e5                                      ldr r3, [ip, #8]
008159d4  03 00 54 e1                                      cmp r4, r3
008159d8  01 00 00 0a                                      beq #0x8159e4
008159dc  bf ff ff ea                                      b #0x8158e0
008159e0  03 c0 a0 e1                                      mov ip, r3
008159e4  04 30 9c e5                                      ldr r3, [ip, #4]
008159e8  08 20 93 e5                                      ldr r2, [r3, #8]
008159ec  0c 00 52 e1                                      cmp r2, ip
008159f0  fa ff ff 0a                                      beq #0x8159e0
008159f4  03 c0 a0 e1                                      mov ip, r3
008159f8  b8 ff ff ea                                      b #0x8158e0
008159fc  05 10 a0 e1                                      mov r1, r5
00815a00  06 20 a0 e1                                      mov r2, r6
00815a04  08 00 8d e2                                      add r0, sp, #8
00815a08  3c ff ff eb                                      bl #0x815700
00815a0c  08 30 9d e5                                      ldr r3, [sp, #8]
00815a10  00 30 87 e5                                      str r3, [r7]
00815a14  e1 ff ff ea                                      b #0x8159a0
00815a18  10 20 91 e5                                      ldr r2, [r1, #0x10]
00815a1c  00 00 52 e3                                      cmp r2, #0
00815a20  52 00 00 0a                                      beq #0x815b70
00815a24  00 20 93 e5                                      ldr r2, [r3]
00815a28  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00815a2c  0c 00 52 e1                                      cmp r2, ip
00815a30  54 00 00 ba                                      blt #0x815b88
00815a34  21 00 00 da                                      ble #0x815ac0
00815a38  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00815a3c  00 00 5e e3                                      cmp lr, #0
00815a40  3c 00 00 0a                                      beq #0x815b38
00815a44  0e c0 a0 e1                                      mov ip, lr
00815a48  00 00 00 ea                                      b #0x815a50
00815a4c  03 c0 a0 e1                                      mov ip, r3
00815a50  08 30 9c e5                                      ldr r3, [ip, #8]
00815a54  00 00 53 e3                                      cmp r3, #0
00815a58  fb ff ff 1a                                      bne #0x815a4c
00815a5c  0c 00 55 e1                                      cmp r5, ip
00815a60  5c 00 00 0a                                      beq #0x815bd8
00815a64  10 30 9c e5                                      ldr r3, [ip, #0x10]
00815a68  03 00 52 e1                                      cmp r2, r3
00815a6c  4a 00 00 aa                                      bge #0x815b9c
00815a70  00 00 5e e3                                      cmp lr, #0
00815a74  4f 00 00 0a                                      beq #0x815bb8
00815a78  00 e0 a0 e3                                      mov lr, #0
00815a7c  05 10 a0 e1                                      mov r1, r5
00815a80  0c 20 a0 e1                                      mov r2, ip
00815a84  06 30 a0 e1                                      mov r3, r6
00815a88  07 00 a0 e1                                      mov r0, r7
00815a8c  00 50 8d e8                                      stm sp, {ip, lr}
00815a90  c8 fe ff eb                                      bl #0x8155b8
00815a94  c1 ff ff ea                                      b #0x8159a0
00815a98  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00815a9c  00 c0 93 e5                                      ldr ip, [r3]
00815aa0  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00815aa4  0c 00 5e e1                                      cmp lr, ip
00815aa8  06 00 00 aa                                      bge #0x815ac8
00815aac  00 c0 a0 e3                                      mov ip, #0
00815ab0  00 c0 8d e5                                      str ip, [sp]
00815ab4  04 40 8d e5                                      str r4, [sp, #4]
00815ab8  be fe ff eb                                      bl #0x8155b8
00815abc  b7 ff ff ea                                      b #0x8159a0
00815ac0  00 40 87 e5                                      str r4, [r7]
00815ac4  b5 ff ff ea                                      b #0x8159a0
00815ac8  03 20 a0 e1                                      mov r2, r3
00815acc  10 00 8d e2                                      add r0, sp, #0x10
00815ad0  0a ff ff eb                                      bl #0x815700
00815ad4  10 30 9d e5                                      ldr r3, [sp, #0x10]
00815ad8  00 30 87 e5                                      str r3, [r7]
00815adc  af ff ff ea                                      b #0x8159a0
00815ae0  05 10 a0 e1                                      mov r1, r5
00815ae4  0c 20 a0 e1                                      mov r2, ip
00815ae8  06 30 a0 e1                                      mov r3, r6
00815aec  07 00 a0 e1                                      mov r0, r7
00815af0  00 e0 8d e5                                      str lr, [sp]
00815af4  04 c0 8d e5                                      str ip, [sp, #4]
00815af8  ae fe ff eb                                      bl #0x8155b8
00815afc  a7 ff ff ea                                      b #0x8159a0
00815b00  04 30 94 e5                                      ldr r3, [r4, #4]
00815b04  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00815b08  0c 00 54 e1                                      cmp r4, ip
00815b0c  04 c0 a0 11                                      movne ip, r4
00815b10  04 00 00 1a                                      bne #0x815b28
00815b14  03 c0 a0 e1                                      mov ip, r3
00815b18  04 30 93 e5                                      ldr r3, [r3, #4]
00815b1c  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00815b20  0a 00 5c e1                                      cmp ip, sl
00815b24  fa ff ff 0a                                      beq #0x815b14
00815b28  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00815b2c  0a 00 53 e1                                      cmp r3, sl
00815b30  03 c0 a0 11                                      movne ip, r3
00815b34  79 ff ff ea                                      b #0x815920
00815b38  04 30 94 e5                                      ldr r3, [r4, #4]
00815b3c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00815b40  01 00 54 e1                                      cmp r4, r1
00815b44  04 c0 a0 11                                      movne ip, r4
00815b48  04 00 00 1a                                      bne #0x815b60
00815b4c  03 c0 a0 e1                                      mov ip, r3
00815b50  04 30 93 e5                                      ldr r3, [r3, #4]
00815b54  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00815b58  0c 00 51 e1                                      cmp r1, ip
00815b5c  fa ff ff 0a                                      beq #0x815b4c
00815b60  0c 10 9c e5                                      ldr r1, [ip, #0xc]
00815b64  01 00 53 e1                                      cmp r3, r1
00815b68  03 c0 a0 11                                      movne ip, r3
00815b6c  ba ff ff ea                                      b #0x815a5c
00815b70  03 20 a0 e1                                      mov r2, r3
00815b74  20 00 8d e2                                      add r0, sp, #0x20
00815b78  e0 fe ff eb                                      bl #0x815700
00815b7c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00815b80  00 30 87 e5                                      str r3, [r7]
00815b84  85 ff ff ea                                      b #0x8159a0
00815b88  00 c0 a0 e3                                      mov ip, #0
00815b8c  04 20 a0 e1                                      mov r2, r4
00815b90  10 10 8d e8                                      stm sp, {r4, ip}
00815b94  87 fe ff eb                                      bl #0x8155b8
00815b98  80 ff ff ea                                      b #0x8159a0
00815b9c  05 10 a0 e1                                      mov r1, r5
00815ba0  06 20 a0 e1                                      mov r2, r6
00815ba4  18 00 8d e2                                      add r0, sp, #0x18
00815ba8  d4 fe ff eb                                      bl #0x815700
00815bac  18 30 9d e5                                      ldr r3, [sp, #0x18]
00815bb0  00 30 87 e5                                      str r3, [r7]
00815bb4  79 ff ff ea                                      b #0x8159a0
00815bb8  05 10 a0 e1                                      mov r1, r5
00815bbc  04 20 a0 e1                                      mov r2, r4
00815bc0  06 30 a0 e1                                      mov r3, r6
00815bc4  07 00 a0 e1                                      mov r0, r7
00815bc8  00 e0 8d e5                                      str lr, [sp]
00815bcc  04 40 8d e5                                      str r4, [sp, #4]
00815bd0  78 fe ff eb                                      bl #0x8155b8
00815bd4  71 ff ff ea                                      b #0x8159a0
00815bd8  00 c0 a0 e3                                      mov ip, #0
00815bdc  05 10 a0 e1                                      mov r1, r5
00815be0  04 20 a0 e1                                      mov r2, r4
00815be4  06 30 a0 e1                                      mov r3, r6
00815be8  07 00 a0 e1                                      mov r0, r7
00815bec  00 c0 8d e5                                      str ip, [sp]
00815bf0  04 40 8d e5                                      str r4, [sp, #4]
00815bf4  6f fe ff eb                                      bl #0x8155b8
00815bf8  68 ff ff ea                                      b #0x8159a0

; FUNCTION 0x0081626c, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_Select1st<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN14CPacketManager17tPacketMemberInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_Select1st<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0081626c  70 40 2d e9                                      push {r4, r5, r6, lr}
00816270  00 40 51 e2                                      subs r4, r1, #0
00816274  00 60 a0 e1                                      mov r6, r0
00816278  08 00 00 0a                                      beq #0x8162a0
0081627c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00816280  06 00 a0 e1                                      mov r0, r6
00816284  f8 ff ff eb                                      bl #0x81626c
00816288  08 50 94 e5                                      ldr r5, [r4, #8]
0081628c  04 00 a0 e1                                      mov r0, r4
00816290  24 10 a0 e3                                      mov r1, #0x24
00816294  27 a0 02 eb                                      bl #0x8be338
00816298  00 40 55 e2                                      subs r4, r5, #0
0081629c  f6 ff ff 1a                                      bne #0x81627c
008162a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008167c4, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_Select1st<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN14CPacketManager17tPacketMemberInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE5eraseENS_17_Rb_tree_iteratorIS7_SB_EE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_Select1st<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> >, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >::erase(std::priv::_Rb_tree_iterator<std::pair<int const, CPacketManager::tPacketMemberInfo>, std::priv::_MapTraitsT<std::pair<int const, CPacketManager::tPacketMemberInfo> > >)
; decoder-mode: arm
008167c4  10 40 2d e9                                      push {r4, lr}
008167c8  00 40 a0 e1                                      mov r4, r0
008167cc  08 20 84 e2                                      add r2, r4, #8
008167d0  00 00 91 e5                                      ldr r0, [r1]
008167d4  0c 30 84 e2                                      add r3, r4, #0xc
008167d8  04 10 84 e2                                      add r1, r4, #4
008167dc  08 7e ec eb                                      bl #0x336004
008167e0  00 00 50 e3                                      cmp r0, #0
008167e4  01 00 00 0a                                      beq #0x8167f0
008167e8  24 10 a0 e3                                      mov r1, #0x24
008167ec  d1 9e 02 eb                                      bl #0x8be338
008167f0  10 30 94 e5                                      ldr r3, [r4, #0x10]
008167f4  01 30 43 e2                                      sub r3, r3, #1
008167f8  10 30 84 e5                                      str r3, [r4, #0x10]
008167fc  10 80 bd e8                                      pop {r4, pc}
