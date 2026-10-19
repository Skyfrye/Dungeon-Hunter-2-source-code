; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0043667c, declared_size=316, range_size=316, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_Select1st<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKlN12MenuWorldMap12InputHandler9TouchDataEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS8_SG_SG_
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_Select1st<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<long const, MenuWorldMap::InputHandler::TouchData> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0043667c  02 00 51 e1                                      cmp r1, r2
00436680  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00436684  01 40 a0 e1                                      mov r4, r1
00436688  02 70 a0 e1                                      mov r7, r2
0043668c  00 50 a0 e1                                      mov r5, r0
00436690  03 80 a0 e1                                      mov r8, r3
00436694  32 00 00 0a                                      beq #0x436764
00436698  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0043669c  00 00 53 e3                                      cmp r3, #0
004366a0  19 00 00 0a                                      beq #0x43670c
004366a4  04 00 a0 e1                                      mov r0, r4
004366a8  eb ff ff eb                                      bl #0x43665c
004366ac  00 20 98 e5                                      ldr r2, [r8]
004366b0  00 30 a0 e3                                      mov r3, #0
004366b4  00 60 a0 e1                                      mov r6, r0
004366b8  10 20 80 e5                                      str r2, [r0, #0x10]
004366bc  04 20 98 e5                                      ldr r2, [r8, #4]
004366c0  14 20 80 e5                                      str r2, [r0, #0x14]
004366c4  08 20 98 e5                                      ldr r2, [r8, #8]
004366c8  0c 30 80 e5                                      str r3, [r0, #0xc]
004366cc  08 30 80 e5                                      str r3, [r0, #8]
004366d0  18 20 80 e5                                      str r2, [r0, #0x18]
004366d4  0c 00 87 e5                                      str r0, [r7, #0xc]
004366d8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004366dc  03 00 57 e1                                      cmp r7, r3
004366e0  1d 00 00 0a                                      beq #0x43675c
004366e4  06 00 a0 e1                                      mov r0, r6
004366e8  04 70 86 e5                                      str r7, [r6, #4]
004366ec  04 10 84 e2                                      add r1, r4, #4
004366f0  1a 74 fb eb                                      bl #0x313760
004366f4  10 30 94 e5                                      ldr r3, [r4, #0x10]
004366f8  05 00 a0 e1                                      mov r0, r5
004366fc  01 30 83 e2                                      add r3, r3, #1
00436700  10 30 84 e5                                      str r3, [r4, #0x10]
00436704  00 60 85 e5                                      str r6, [r5]
00436708  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0043670c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00436710  00 00 53 e3                                      cmp r3, #0
00436714  22 00 00 0a                                      beq #0x4367a4
00436718  04 00 a0 e1                                      mov r0, r4
0043671c  ce ff ff eb                                      bl #0x43665c
00436720  00 20 98 e5                                      ldr r2, [r8]
00436724  00 30 a0 e3                                      mov r3, #0
00436728  00 60 a0 e1                                      mov r6, r0
0043672c  10 20 80 e5                                      str r2, [r0, #0x10]
00436730  04 20 98 e5                                      ldr r2, [r8, #4]
00436734  14 20 80 e5                                      str r2, [r0, #0x14]
00436738  08 20 98 e5                                      ldr r2, [r8, #8]
0043673c  0c 30 80 e5                                      str r3, [r0, #0xc]
00436740  08 30 80 e5                                      str r3, [r0, #8]
00436744  18 20 80 e5                                      str r2, [r0, #0x18]
00436748  08 00 87 e5                                      str r0, [r7, #8]
0043674c  08 30 94 e5                                      ldr r3, [r4, #8]
00436750  03 00 57 e1                                      cmp r7, r3
00436754  08 00 84 05                                      streq r0, [r4, #8]
00436758  e1 ff ff ea                                      b #0x4366e4
0043675c  0c 60 84 e5                                      str r6, [r4, #0xc]
00436760  df ff ff ea                                      b #0x4366e4
00436764  01 00 a0 e1                                      mov r0, r1
00436768  bb ff ff eb                                      bl #0x43665c
0043676c  00 20 98 e5                                      ldr r2, [r8]
00436770  00 30 a0 e3                                      mov r3, #0
00436774  00 60 a0 e1                                      mov r6, r0
00436778  10 20 80 e5                                      str r2, [r0, #0x10]
0043677c  04 20 98 e5                                      ldr r2, [r8, #4]
00436780  14 20 80 e5                                      str r2, [r0, #0x14]
00436784  08 20 98 e5                                      ldr r2, [r8, #8]
00436788  0c 30 80 e5                                      str r3, [r0, #0xc]
0043678c  08 30 80 e5                                      str r3, [r0, #8]
00436790  18 20 80 e5                                      str r2, [r0, #0x18]
00436794  08 00 84 e5                                      str r0, [r4, #8]
00436798  04 00 84 e5                                      str r0, [r4, #4]
0043679c  0c 00 84 e5                                      str r0, [r4, #0xc]
004367a0  cf ff ff ea                                      b #0x4366e4
004367a4  00 20 98 e5                                      ldr r2, [r8]
004367a8  10 30 97 e5                                      ldr r3, [r7, #0x10]
004367ac  03 00 52 e1                                      cmp r2, r3
004367b0  bb ff ff aa                                      bge #0x4366a4
004367b4  d7 ff ff ea                                      b #0x436718

; FUNCTION 0x004367b8, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_Select1st<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKlN12MenuWorldMap12InputHandler9TouchDataEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueERKS8_
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_Select1st<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >::insert_unique(std::pair<long const, MenuWorldMap::InputHandler::TouchData> const&)
; decoder-mode: arm
004367b8  70 40 2d e9                                      push {r4, r5, r6, lr}
004367bc  04 c0 91 e5                                      ldr ip, [r1, #4]
004367c0  10 d0 4d e2                                      sub sp, sp, #0x10
004367c4  00 40 a0 e1                                      mov r4, r0
004367c8  00 00 5c e3                                      cmp ip, #0
004367cc  02 30 a0 e1                                      mov r3, r2
004367d0  01 c0 a0 01                                      moveq ip, r1
004367d4  15 00 00 0a                                      beq #0x436830
004367d8  00 60 92 e5                                      ldr r6, [r2]
004367dc  00 00 00 ea                                      b #0x4367e4
004367e0  02 c0 a0 e1                                      mov ip, r2
004367e4  10 00 9c e5                                      ldr r0, [ip, #0x10]
004367e8  01 50 a0 e3                                      mov r5, #1
004367ec  06 00 50 e1                                      cmp r0, r6
004367f0  08 20 9c c5                                      ldrgt r2, [ip, #8]
004367f4  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
004367f8  00 50 a0 d3                                      movle r5, #0
004367fc  00 00 52 e3                                      cmp r2, #0
00436800  f6 ff ff 1a                                      bne #0x4367e0
00436804  00 00 55 e3                                      cmp r5, #0
00436808  0c 50 a0 01                                      moveq r5, ip
0043680c  07 00 00 1a                                      bne #0x436830
00436810  00 00 56 e1                                      cmp r6, r0
00436814  00 30 a0 d3                                      movle r3, #0
00436818  00 50 84 d5                                      strle r5, [r4]
0043681c  04 30 c4 d5                                      strble r3, [r4, #4]
00436820  1c 00 00 ca                                      bgt #0x436898
00436824  04 00 a0 e1                                      mov r0, r4
00436828  10 d0 8d e2                                      add sp, sp, #0x10
0043682c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00436830  08 20 91 e5                                      ldr r2, [r1, #8]
00436834  02 00 5c e1                                      cmp ip, r2
00436838  36 00 00 0a                                      beq #0x436918
0043683c  00 20 dc e5                                      ldrb r2, [ip]
00436840  00 00 52 e3                                      cmp r2, #0
00436844  03 00 00 1a                                      bne #0x436858
00436848  04 20 9c e5                                      ldr r2, [ip, #4]
0043684c  04 20 92 e5                                      ldr r2, [r2, #4]
00436850  02 00 5c e1                                      cmp ip, r2
00436854  2a 00 00 0a                                      beq #0x436904
00436858  08 00 9c e5                                      ldr r0, [ip, #8]
0043685c  00 00 50 e3                                      cmp r0, #0
00436860  01 00 00 1a                                      bne #0x43686c
00436864  16 00 00 ea                                      b #0x4368c4
00436868  02 00 a0 e1                                      mov r0, r2
0043686c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00436870  00 00 52 e3                                      cmp r2, #0
00436874  fb ff ff 1a                                      bne #0x436868
00436878  00 60 93 e5                                      ldr r6, [r3]
0043687c  00 50 a0 e1                                      mov r5, r0
00436880  10 00 90 e5                                      ldr r0, [r0, #0x10]
00436884  00 00 56 e1                                      cmp r6, r0
00436888  00 30 a0 d3                                      movle r3, #0
0043688c  00 50 84 d5                                      strle r5, [r4]
00436890  04 30 c4 d5                                      strble r3, [r4, #4]
00436894  e2 ff ff da                                      ble #0x436824
00436898  0c 20 a0 e1                                      mov r2, ip
0043689c  08 00 8d e2                                      add r0, sp, #8
004368a0  00 c0 a0 e3                                      mov ip, #0
004368a4  04 c0 8d e5                                      str ip, [sp, #4]
004368a8  00 c0 8d e5                                      str ip, [sp]
004368ac  72 ff ff eb                                      bl #0x43667c
004368b0  08 30 9d e5                                      ldr r3, [sp, #8]
004368b4  01 20 a0 e3                                      mov r2, #1
004368b8  04 20 c4 e5                                      strb r2, [r4, #4]
004368bc  00 30 84 e5                                      str r3, [r4]
004368c0  d7 ff ff ea                                      b #0x436824
004368c4  04 20 9c e5                                      ldr r2, [ip, #4]
004368c8  08 00 92 e5                                      ldr r0, [r2, #8]
004368cc  00 00 5c e1                                      cmp ip, r0
004368d0  02 50 a0 11                                      movne r5, r2
004368d4  00 60 93 15                                      ldrne r6, [r3]
004368d8  10 00 92 15                                      ldrne r0, [r2, #0x10]
004368dc  01 00 00 0a                                      beq #0x4368e8
004368e0  ca ff ff ea                                      b #0x436810
004368e4  05 20 a0 e1                                      mov r2, r5
004368e8  04 50 92 e5                                      ldr r5, [r2, #4]
004368ec  08 00 95 e5                                      ldr r0, [r5, #8]
004368f0  02 00 50 e1                                      cmp r0, r2
004368f4  fa ff ff 0a                                      beq #0x4368e4
004368f8  00 60 93 e5                                      ldr r6, [r3]
004368fc  10 00 95 e5                                      ldr r0, [r5, #0x10]
00436900  c2 ff ff ea                                      b #0x436810
00436904  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00436908  00 60 93 e5                                      ldr r6, [r3]
0043690c  02 50 a0 e1                                      mov r5, r2
00436910  10 00 92 e5                                      ldr r0, [r2, #0x10]
00436914  bd ff ff ea                                      b #0x436810
00436918  0c 20 a0 e1                                      mov r2, ip
0043691c  00 e0 a0 e3                                      mov lr, #0
00436920  0c 00 8d e2                                      add r0, sp, #0xc
00436924  00 50 8d e8                                      stm sp, {ip, lr}
00436928  53 ff ff eb                                      bl #0x43667c
0043692c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00436930  01 20 a0 e3                                      mov r2, #1
00436934  04 20 c4 e5                                      strb r2, [r4, #4]
00436938  00 30 84 e5                                      str r3, [r4]
0043693c  b8 ff ff ea                                      b #0x436824

; FUNCTION 0x00436940, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_Select1st<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKlN12MenuWorldMap12InputHandler9TouchDataEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueENS_17_Rb_tree_iteratorIS8_SC_EERKS8_
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_Select1st<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >, std::pair<long const, MenuWorldMap::InputHandler::TouchData> const&)
; decoder-mode: arm
00436940  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00436944  00 40 92 e5                                      ldr r4, [r2]
00436948  08 20 91 e5                                      ldr r2, [r1, #8]
0043694c  2c d0 4d e2                                      sub sp, sp, #0x2c
00436950  01 50 a0 e1                                      mov r5, r1
00436954  02 00 54 e1                                      cmp r4, r2
00436958  00 70 a0 e1                                      mov r7, r0
0043695c  03 60 a0 e1                                      mov r6, r3
00436960  5a 00 00 0a                                      beq #0x436ad0
00436964  01 00 54 e1                                      cmp r4, r1
00436968  78 00 00 0a                                      beq #0x436b50
0043696c  00 30 d4 e5                                      ldrb r3, [r4]
00436970  00 00 53 e3                                      cmp r3, #0
00436974  3a 00 00 0a                                      beq #0x436a64
00436978  08 c0 94 e5                                      ldr ip, [r4, #8]
0043697c  00 00 5c e3                                      cmp ip, #0
00436980  01 00 00 1a                                      bne #0x43698c
00436984  3e 00 00 ea                                      b #0x436a84
00436988  03 c0 a0 e1                                      mov ip, r3
0043698c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00436990  00 00 53 e3                                      cmp r3, #0
00436994  fb ff ff 1a                                      bne #0x436988
00436998  00 20 96 e5                                      ldr r2, [r6]
0043699c  10 00 94 e5                                      ldr r0, [r4, #0x10]
004369a0  00 00 52 e1                                      cmp r2, r0
004369a4  00 10 a0 a3                                      movge r1, #0
004369a8  01 10 a0 b3                                      movlt r1, #1
004369ac  00 00 51 e3                                      cmp r1, #0
004369b0  1b 00 00 1a                                      bne #0x436a24
004369b4  0c 80 94 e5                                      ldr r8, [r4, #0xc]
004369b8  00 00 58 e3                                      cmp r8, #0
004369bc  7d 00 00 0a                                      beq #0x436bb8
004369c0  08 c0 a0 e1                                      mov ip, r8
004369c4  00 00 00 ea                                      b #0x4369cc
004369c8  03 c0 a0 e1                                      mov ip, r3
004369cc  08 30 9c e5                                      ldr r3, [ip, #8]
004369d0  00 00 53 e3                                      cmp r3, #0
004369d4  fb ff ff 1a                                      bne #0x4369c8
004369d8  00 00 51 e3                                      cmp r1, #0
004369dc  34 00 00 1a                                      bne #0x436ab4
004369e0  00 00 52 e1                                      cmp r2, r0
004369e4  63 00 00 da                                      ble #0x436b78
004369e8  0c 00 55 e1                                      cmp r5, ip
004369ec  02 00 00 0a                                      beq #0x4369fc
004369f0  10 30 9c e5                                      ldr r3, [ip, #0x10]
004369f4  03 00 52 e1                                      cmp r2, r3
004369f8  2d 00 00 aa                                      bge #0x436ab4
004369fc  00 00 58 e3                                      cmp r8, #0
00436a00  4a 00 00 1a                                      bne #0x436b30
00436a04  05 10 a0 e1                                      mov r1, r5
00436a08  04 20 a0 e1                                      mov r2, r4
00436a0c  06 30 a0 e1                                      mov r3, r6
00436a10  07 00 a0 e1                                      mov r0, r7
00436a14  00 80 8d e5                                      str r8, [sp]
00436a18  04 40 8d e5                                      str r4, [sp, #4]
00436a1c  16 ff ff eb                                      bl #0x43667c
00436a20  0c 00 00 ea                                      b #0x436a58
00436a24  10 30 9c e5                                      ldr r3, [ip, #0x10]
00436a28  03 00 52 e1                                      cmp r2, r3
00436a2c  e0 ff ff da                                      ble #0x4369b4
00436a30  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00436a34  00 00 5e e3                                      cmp lr, #0
00436a38  56 00 00 0a                                      beq #0x436b98
00436a3c  00 c0 a0 e3                                      mov ip, #0
00436a40  05 10 a0 e1                                      mov r1, r5
00436a44  04 20 a0 e1                                      mov r2, r4
00436a48  06 30 a0 e1                                      mov r3, r6
00436a4c  07 00 a0 e1                                      mov r0, r7
00436a50  10 10 8d e8                                      stm sp, {r4, ip}
00436a54  08 ff ff eb                                      bl #0x43667c
00436a58  07 00 a0 e1                                      mov r0, r7
00436a5c  2c d0 8d e2                                      add sp, sp, #0x2c
00436a60  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00436a64  04 30 94 e5                                      ldr r3, [r4, #4]
00436a68  04 30 93 e5                                      ldr r3, [r3, #4]
00436a6c  03 00 54 e1                                      cmp r4, r3
00436a70  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00436a74  c7 ff ff 0a                                      beq #0x436998
00436a78  08 c0 94 e5                                      ldr ip, [r4, #8]
00436a7c  00 00 5c e3                                      cmp ip, #0
00436a80  c1 ff ff 1a                                      bne #0x43698c
00436a84  04 c0 94 e5                                      ldr ip, [r4, #4]
00436a88  08 30 9c e5                                      ldr r3, [ip, #8]
00436a8c  03 00 54 e1                                      cmp r4, r3
00436a90  01 00 00 0a                                      beq #0x436a9c
00436a94  bf ff ff ea                                      b #0x436998
00436a98  03 c0 a0 e1                                      mov ip, r3
00436a9c  04 30 9c e5                                      ldr r3, [ip, #4]
00436aa0  08 20 93 e5                                      ldr r2, [r3, #8]
00436aa4  0c 00 52 e1                                      cmp r2, ip
00436aa8  fa ff ff 0a                                      beq #0x436a98
00436aac  03 c0 a0 e1                                      mov ip, r3
00436ab0  b8 ff ff ea                                      b #0x436998
00436ab4  05 10 a0 e1                                      mov r1, r5
00436ab8  06 20 a0 e1                                      mov r2, r6
00436abc  08 00 8d e2                                      add r0, sp, #8
00436ac0  3c ff ff eb                                      bl #0x4367b8
00436ac4  08 30 9d e5                                      ldr r3, [sp, #8]
00436ac8  00 30 87 e5                                      str r3, [r7]
00436acc  e1 ff ff ea                                      b #0x436a58
00436ad0  10 20 91 e5                                      ldr r2, [r1, #0x10]
00436ad4  00 00 52 e3                                      cmp r2, #0
00436ad8  52 00 00 0a                                      beq #0x436c28
00436adc  00 20 93 e5                                      ldr r2, [r3]
00436ae0  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00436ae4  0c 00 52 e1                                      cmp r2, ip
00436ae8  54 00 00 ba                                      blt #0x436c40
00436aec  21 00 00 da                                      ble #0x436b78
00436af0  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00436af4  00 00 5e e3                                      cmp lr, #0
00436af8  3c 00 00 0a                                      beq #0x436bf0
00436afc  0e c0 a0 e1                                      mov ip, lr
00436b00  00 00 00 ea                                      b #0x436b08
00436b04  03 c0 a0 e1                                      mov ip, r3
00436b08  08 30 9c e5                                      ldr r3, [ip, #8]
00436b0c  00 00 53 e3                                      cmp r3, #0
00436b10  fb ff ff 1a                                      bne #0x436b04
00436b14  0c 00 55 e1                                      cmp r5, ip
00436b18  5c 00 00 0a                                      beq #0x436c90
00436b1c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00436b20  03 00 52 e1                                      cmp r2, r3
00436b24  4a 00 00 aa                                      bge #0x436c54
00436b28  00 00 5e e3                                      cmp lr, #0
00436b2c  4f 00 00 0a                                      beq #0x436c70
00436b30  00 e0 a0 e3                                      mov lr, #0
00436b34  05 10 a0 e1                                      mov r1, r5
00436b38  0c 20 a0 e1                                      mov r2, ip
00436b3c  06 30 a0 e1                                      mov r3, r6
00436b40  07 00 a0 e1                                      mov r0, r7
00436b44  00 50 8d e8                                      stm sp, {ip, lr}
00436b48  cb fe ff eb                                      bl #0x43667c
00436b4c  c1 ff ff ea                                      b #0x436a58
00436b50  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00436b54  00 c0 93 e5                                      ldr ip, [r3]
00436b58  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00436b5c  0c 00 5e e1                                      cmp lr, ip
00436b60  06 00 00 aa                                      bge #0x436b80
00436b64  00 c0 a0 e3                                      mov ip, #0
00436b68  00 c0 8d e5                                      str ip, [sp]
00436b6c  04 40 8d e5                                      str r4, [sp, #4]
00436b70  c1 fe ff eb                                      bl #0x43667c
00436b74  b7 ff ff ea                                      b #0x436a58
00436b78  00 40 87 e5                                      str r4, [r7]
00436b7c  b5 ff ff ea                                      b #0x436a58
00436b80  03 20 a0 e1                                      mov r2, r3
00436b84  10 00 8d e2                                      add r0, sp, #0x10
00436b88  0a ff ff eb                                      bl #0x4367b8
00436b8c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00436b90  00 30 87 e5                                      str r3, [r7]
00436b94  af ff ff ea                                      b #0x436a58
00436b98  05 10 a0 e1                                      mov r1, r5
00436b9c  0c 20 a0 e1                                      mov r2, ip
00436ba0  06 30 a0 e1                                      mov r3, r6
00436ba4  07 00 a0 e1                                      mov r0, r7
00436ba8  00 e0 8d e5                                      str lr, [sp]
00436bac  04 c0 8d e5                                      str ip, [sp, #4]
00436bb0  b1 fe ff eb                                      bl #0x43667c
00436bb4  a7 ff ff ea                                      b #0x436a58
00436bb8  04 30 94 e5                                      ldr r3, [r4, #4]
00436bbc  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00436bc0  0c 00 54 e1                                      cmp r4, ip
00436bc4  04 c0 a0 11                                      movne ip, r4
00436bc8  04 00 00 1a                                      bne #0x436be0
00436bcc  03 c0 a0 e1                                      mov ip, r3
00436bd0  04 30 93 e5                                      ldr r3, [r3, #4]
00436bd4  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00436bd8  0a 00 5c e1                                      cmp ip, sl
00436bdc  fa ff ff 0a                                      beq #0x436bcc
00436be0  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00436be4  0a 00 53 e1                                      cmp r3, sl
00436be8  03 c0 a0 11                                      movne ip, r3
00436bec  79 ff ff ea                                      b #0x4369d8
00436bf0  04 30 94 e5                                      ldr r3, [r4, #4]
00436bf4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00436bf8  01 00 54 e1                                      cmp r4, r1
00436bfc  04 c0 a0 11                                      movne ip, r4
00436c00  04 00 00 1a                                      bne #0x436c18
00436c04  03 c0 a0 e1                                      mov ip, r3
00436c08  04 30 93 e5                                      ldr r3, [r3, #4]
00436c0c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00436c10  0c 00 51 e1                                      cmp r1, ip
00436c14  fa ff ff 0a                                      beq #0x436c04
00436c18  0c 10 9c e5                                      ldr r1, [ip, #0xc]
00436c1c  01 00 53 e1                                      cmp r3, r1
00436c20  03 c0 a0 11                                      movne ip, r3
00436c24  ba ff ff ea                                      b #0x436b14
00436c28  03 20 a0 e1                                      mov r2, r3
00436c2c  20 00 8d e2                                      add r0, sp, #0x20
00436c30  e0 fe ff eb                                      bl #0x4367b8
00436c34  20 30 9d e5                                      ldr r3, [sp, #0x20]
00436c38  00 30 87 e5                                      str r3, [r7]
00436c3c  85 ff ff ea                                      b #0x436a58
00436c40  00 c0 a0 e3                                      mov ip, #0
00436c44  04 20 a0 e1                                      mov r2, r4
00436c48  10 10 8d e8                                      stm sp, {r4, ip}
00436c4c  8a fe ff eb                                      bl #0x43667c
00436c50  80 ff ff ea                                      b #0x436a58
00436c54  05 10 a0 e1                                      mov r1, r5
00436c58  06 20 a0 e1                                      mov r2, r6
00436c5c  18 00 8d e2                                      add r0, sp, #0x18
00436c60  d4 fe ff eb                                      bl #0x4367b8
00436c64  18 30 9d e5                                      ldr r3, [sp, #0x18]
00436c68  00 30 87 e5                                      str r3, [r7]
00436c6c  79 ff ff ea                                      b #0x436a58
00436c70  05 10 a0 e1                                      mov r1, r5
00436c74  04 20 a0 e1                                      mov r2, r4
00436c78  06 30 a0 e1                                      mov r3, r6
00436c7c  07 00 a0 e1                                      mov r0, r7
00436c80  00 e0 8d e5                                      str lr, [sp]
00436c84  04 40 8d e5                                      str r4, [sp, #4]
00436c88  7b fe ff eb                                      bl #0x43667c
00436c8c  71 ff ff ea                                      b #0x436a58
00436c90  00 c0 a0 e3                                      mov ip, #0
00436c94  05 10 a0 e1                                      mov r1, r5
00436c98  04 20 a0 e1                                      mov r2, r4
00436c9c  06 30 a0 e1                                      mov r3, r6
00436ca0  07 00 a0 e1                                      mov r0, r7
00436ca4  00 c0 8d e5                                      str ip, [sp]
00436ca8  04 40 8d e5                                      str r4, [sp, #4]
00436cac  72 fe ff eb                                      bl #0x43667c
00436cb0  68 ff ff ea                                      b #0x436a58

; FUNCTION 0x00436d5c, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_Select1st<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKlN12MenuWorldMap12InputHandler9TouchDataEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_Select1st<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00436d5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00436d60  00 40 51 e2                                      subs r4, r1, #0
00436d64  00 60 a0 e1                                      mov r6, r0
00436d68  08 00 00 0a                                      beq #0x436d90
00436d6c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00436d70  06 00 a0 e1                                      mov r0, r6
00436d74  f8 ff ff eb                                      bl #0x436d5c
00436d78  08 50 94 e5                                      ldr r5, [r4, #8]
00436d7c  04 00 a0 e1                                      mov r0, r4
00436d80  1c 10 a0 e3                                      mov r1, #0x1c
00436d84  5d 48 0b eb                                      bl #0x708f00
00436d88  00 40 55 e2                                      subs r4, r5, #0
00436d8c  f6 ff ff 1a                                      bne #0x436d6c
00436d90  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00436e04, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_Select1st<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKlN12MenuWorldMap12InputHandler9TouchDataEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE5eraseENS_17_Rb_tree_iteratorIS8_SC_EE
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_Select1st<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> >, std::allocator<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >::erase(std::priv::_Rb_tree_iterator<std::pair<long const, MenuWorldMap::InputHandler::TouchData>, std::priv::_MapTraitsT<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >)
; decoder-mode: arm
00436e04  10 40 2d e9                                      push {r4, lr}
00436e08  00 40 a0 e1                                      mov r4, r0
00436e0c  08 20 84 e2                                      add r2, r4, #8
00436e10  00 00 91 e5                                      ldr r0, [r1]
00436e14  0c 30 84 e2                                      add r3, r4, #0xc
00436e18  04 10 84 e2                                      add r1, r4, #4
00436e1c  78 fc fb eb                                      bl #0x336004
00436e20  00 00 50 e3                                      cmp r0, #0
00436e24  01 00 00 0a                                      beq #0x436e30
00436e28  1c 10 a0 e3                                      mov r1, #0x1c
00436e2c  33 48 0b eb                                      bl #0x708f00
00436e30  10 30 94 e5                                      ldr r3, [r4, #0x10]
00436e34  01 30 43 e2                                      sub r3, r3, #1
00436e38  10 30 84 e5                                      str r3, [r4, #0x10]
00436e3c  10 80 bd e8                                      pop {r4, pc}
