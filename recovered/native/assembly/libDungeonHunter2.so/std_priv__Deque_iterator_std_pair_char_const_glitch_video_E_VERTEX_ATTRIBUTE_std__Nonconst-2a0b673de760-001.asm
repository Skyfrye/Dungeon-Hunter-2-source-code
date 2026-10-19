; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006db240, declared_size=248, range_size=248, mode=arm
; class-group: std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::_Nonconst_traits<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > > std::priv
; alias: _ZNSt4priv7__ucopyINS_15_Deque_iteratorISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEESt13_Const_traitsIS8_EEENS1_IS8_St16_Nonconst_traitsIS8_EEEiEET0_T_SG_SF_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::_Nonconst_traits<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > > std::priv::__ucopy<std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::_Const_traits<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >, std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::_Nonconst_traits<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >, int>(std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::_Const_traits<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >, std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::_Const_traits<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >, std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::_Nonconst_traits<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006db240  10 d0 4d e2                                      sub sp, sp, #0x10
006db244  10 40 2d e9                                      push {r4, lr}
006db248  0c c0 8d e2                                      add ip, sp, #0xc
006db24c  0e 00 8c e8                                      stm ip, {r1, r2, r3}
006db250  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
006db254  00 40 a0 e1                                      mov r4, r0
006db258  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
006db25c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
006db260  0c 10 a0 e1                                      mov r1, ip
006db264  1c 00 8d e2                                      add r0, sp, #0x1c
006db268  e3 ff ff eb                                      bl #0x6db1fc
006db26c  00 00 50 e3                                      cmp r0, #0
006db270  08 00 00 ca                                      bgt #0x6db298
006db274  2b 00 00 ea                                      b #0x6db328
006db278  00 30 94 e5                                      ldr r3, [r4]
006db27c  08 20 94 e5                                      ldr r2, [r4, #8]
006db280  08 30 83 e2                                      add r3, r3, #8
006db284  02 00 53 e1                                      cmp r3, r2
006db288  00 30 84 e5                                      str r3, [r4]
006db28c  1b 00 00 0a                                      beq #0x6db300
006db290  01 00 50 e2                                      subs r0, r0, #1
006db294  23 00 00 0a                                      beq #0x6db328
006db298  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006db29c  00 30 94 e5                                      ldr r3, [r4]
006db2a0  00 10 92 e5                                      ldr r1, [r2]
006db2a4  00 10 83 e5                                      str r1, [r3]
006db2a8  04 20 92 e5                                      ldr r2, [r2, #4]
006db2ac  04 20 83 e5                                      str r2, [r3, #4]
006db2b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006db2b4  14 20 9d e5                                      ldr r2, [sp, #0x14]
006db2b8  08 30 83 e2                                      add r3, r3, #8
006db2bc  02 00 53 e1                                      cmp r3, r2
006db2c0  0c 30 8d e5                                      str r3, [sp, #0xc]
006db2c4  eb ff ff 1a                                      bne #0x6db278
006db2c8  18 30 9d e5                                      ldr r3, [sp, #0x18]
006db2cc  04 20 83 e2                                      add r2, r3, #4
006db2d0  18 20 8d e5                                      str r2, [sp, #0x18]
006db2d4  04 30 93 e5                                      ldr r3, [r3, #4]
006db2d8  80 20 83 e2                                      add r2, r3, #0x80
006db2dc  14 20 8d e5                                      str r2, [sp, #0x14]
006db2e0  0c 30 8d e5                                      str r3, [sp, #0xc]
006db2e4  10 30 8d e5                                      str r3, [sp, #0x10]
006db2e8  00 30 94 e5                                      ldr r3, [r4]
006db2ec  08 20 94 e5                                      ldr r2, [r4, #8]
006db2f0  08 30 83 e2                                      add r3, r3, #8
006db2f4  02 00 53 e1                                      cmp r3, r2
006db2f8  00 30 84 e5                                      str r3, [r4]
006db2fc  e3 ff ff 1a                                      bne #0x6db290
006db300  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006db304  01 00 50 e2                                      subs r0, r0, #1
006db308  04 20 83 e2                                      add r2, r3, #4
006db30c  0c 20 84 e5                                      str r2, [r4, #0xc]
006db310  04 30 93 e5                                      ldr r3, [r3, #4]
006db314  80 20 83 e2                                      add r2, r3, #0x80
006db318  08 20 84 e5                                      str r2, [r4, #8]
006db31c  00 30 84 e5                                      str r3, [r4]
006db320  04 30 84 e5                                      str r3, [r4, #4]
006db324  db ff ff 1a                                      bne #0x6db298
006db328  04 00 a0 e1                                      mov r0, r4
006db32c  10 40 bd e8                                      pop {r4, lr}
006db330  10 d0 8d e2                                      add sp, sp, #0x10
006db334  1e ff 2f e1                                      bx lr
