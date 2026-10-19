; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035ea50, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEEESaIS5_EE20_M_compute_next_sizeEj
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0035ea50  70 40 2d e9                                      push {r4, r5, r6, lr}
0035ea54  14 00 90 e8                                      ldm r0, {r2, r4}
0035ea58  ff 3f 0f e3                                      movw r3, #0xffff
0035ea5c  ff 3f 43 e3                                      movt r3, #0x3fff
0035ea60  04 40 62 e0                                      rsb r4, r2, r4
0035ea64  44 41 a0 e1                                      asr r4, r4, #2
0035ea68  03 30 64 e0                                      rsb r3, r4, r3
0035ea6c  01 00 53 e1                                      cmp r3, r1
0035ea70  01 50 a0 e1                                      mov r5, r1
0035ea74  08 00 00 3a                                      blo #0x35ea9c
0035ea78  05 00 54 e1                                      cmp r4, r5
0035ea7c  04 00 84 20                                      addhs r0, r4, r4
0035ea80  05 00 84 30                                      addlo r0, r4, r5
0035ea84  07 01 70 e3                                      cmn r0, #0xc0000001
0035ea88  01 00 00 8a                                      bhi #0x35ea94
0035ea8c  04 00 50 e1                                      cmp r0, r4
0035ea90  00 00 00 2a                                      bhs #0x35ea98
0035ea94  03 01 e0 e3                                      mvn r0, #0xc0000000
0035ea98  70 80 bd e8                                      pop {r4, r5, r6, pc}
0035ea9c  08 00 9f e5                                      ldr r0, [pc, #8]
0035eaa0  00 00 8f e0                                      add r0, pc, r0
0035eaa4  e5 a8 0e eb                                      bl #0x708e40
0035eaa8  f2 ff ff ea                                      b #0x35ea78
; mapping-symbol data/literal pool
0035eaac  c8 f9 55 00                                      .byte 0xc8, 0xf9, 0x55, 0x00

; FUNCTION 0x0035f9d0, declared_size=140, range_size=140, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEEESaIS5_EED1Ev
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >::~vector()
; decoder-mode: arm
0035f9d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0035f9d4  04 60 90 e5                                      ldr r6, [r0, #4]
0035f9d8  00 70 90 e5                                      ldr r7, [r0]
0035f9dc  00 40 a0 e1                                      mov r4, r0
0035f9e0  07 00 56 e1                                      cmp r6, r7
0035f9e4  0e 00 00 0a                                      beq #0x35fa24
0035f9e8  04 50 16 e5                                      ldr r5, [r6, #-4]
0035f9ec  04 60 46 e2                                      sub r6, r6, #4
0035f9f0  00 00 55 e3                                      cmp r5, #0
0035f9f4  08 00 00 0a                                      beq #0x35fa1c
0035f9f8  00 30 95 e5                                      ldr r3, [r5]
0035f9fc  01 30 43 e2                                      sub r3, r3, #1
0035fa00  00 00 53 e3                                      cmp r3, #0
0035fa04  00 30 85 e5                                      str r3, [r5]
0035fa08  03 00 00 1a                                      bne #0x35fa1c
0035fa0c  05 00 a0 e1                                      mov r0, r5
0035fa10  4f ff 09 eb                                      bl #0x5df754
0035fa14  05 00 a0 e1                                      mov r0, r5
0035fa18  88 c2 fe eb                                      bl #0x310440
0035fa1c  06 00 57 e1                                      cmp r7, r6
0035fa20  f0 ff ff 1a                                      bne #0x35f9e8
0035fa24  00 00 94 e5                                      ldr r0, [r4]
0035fa28  00 00 50 e3                                      cmp r0, #0
0035fa2c  05 00 00 0a                                      beq #0x35fa48
0035fa30  08 10 94 e5                                      ldr r1, [r4, #8]
0035fa34  01 10 60 e0                                      rsb r1, r0, r1
0035fa38  03 10 c1 e3                                      bic r1, r1, #3
0035fa3c  80 00 51 e3                                      cmp r1, #0x80
0035fa40  02 00 00 8a                                      bhi #0x35fa50
0035fa44  2d a5 0e eb                                      bl #0x708f00
0035fa48  04 00 a0 e1                                      mov r0, r4
0035fa4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0035fa50  7a c2 fe eb                                      bl #0x310440
0035fa54  04 00 a0 e1                                      mov r0, r4
0035fa58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0035ff2c, declared_size=140, range_size=140, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEEESaIS5_EE19_M_clear_after_moveEv
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >::_M_clear_after_move()
; decoder-mode: arm
0035ff2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0035ff30  00 70 a0 e1                                      mov r7, r0
0035ff34  00 60 97 e5                                      ldr r6, [r7]
0035ff38  04 00 90 e5                                      ldr r0, [r0, #4]
0035ff3c  06 00 50 e1                                      cmp r0, r6
0035ff40  10 00 00 0a                                      beq #0x35ff88
0035ff44  00 50 a0 e1                                      mov r5, r0
0035ff48  04 40 15 e5                                      ldr r4, [r5, #-4]
0035ff4c  04 50 45 e2                                      sub r5, r5, #4
0035ff50  00 00 54 e3                                      cmp r4, #0
0035ff54  08 00 00 0a                                      beq #0x35ff7c
0035ff58  00 30 94 e5                                      ldr r3, [r4]
0035ff5c  01 30 43 e2                                      sub r3, r3, #1
0035ff60  00 00 53 e3                                      cmp r3, #0
0035ff64  00 30 84 e5                                      str r3, [r4]
0035ff68  03 00 00 1a                                      bne #0x35ff7c
0035ff6c  04 00 a0 e1                                      mov r0, r4
0035ff70  f7 fd 09 eb                                      bl #0x5df754
0035ff74  04 00 a0 e1                                      mov r0, r4
0035ff78  30 c1 fe eb                                      bl #0x310440
0035ff7c  05 00 56 e1                                      cmp r6, r5
0035ff80  f0 ff ff 1a                                      bne #0x35ff48
0035ff84  00 00 97 e5                                      ldr r0, [r7]
0035ff88  00 00 50 e3                                      cmp r0, #0
0035ff8c  08 10 97 e5                                      ldr r1, [r7, #8]
0035ff90  07 00 00 0a                                      beq #0x35ffb4
0035ff94  01 10 60 e0                                      rsb r1, r0, r1
0035ff98  03 10 c1 e3                                      bic r1, r1, #3
0035ff9c  80 00 51 e3                                      cmp r1, #0x80
0035ffa0  01 00 00 8a                                      bhi #0x35ffac
0035ffa4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0035ffa8  d4 a3 0e ea                                      b #0x708f00
0035ffac  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0035ffb0  22 c1 fe ea                                      b #0x310440
0035ffb4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00360d5c, declared_size=224, range_size=224, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEEESaIS5_EE8_M_eraseEPS5_S8_RKSt12__false_type
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >::_M_erase(boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>*, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>*, std::__false_type const&)
; decoder-mode: arm
00360d5c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00360d60  04 40 90 e5                                      ldr r4, [r0, #4]
00360d64  00 50 a0 e1                                      mov r5, r0
00360d68  02 60 a0 e1                                      mov r6, r2
00360d6c  04 90 62 e0                                      rsb sb, r2, r4
00360d70  49 91 a0 e1                                      asr sb, sb, #2
00360d74  00 00 59 e3                                      cmp sb, #0
00360d78  01 a0 a0 e1                                      mov sl, r1
00360d7c  01 80 a0 d1                                      movle r8, r1
00360d80  18 00 00 da                                      ble #0x360de8
00360d84  09 80 a0 e1                                      mov r8, sb
00360d88  00 40 a0 e3                                      mov r4, #0
00360d8c  04 30 96 e7                                      ldr r3, [r6, r4]
00360d90  00 00 53 e3                                      cmp r3, #0
00360d94  00 20 93 15                                      ldrne r2, [r3]
00360d98  01 20 82 12                                      addne r2, r2, #1
00360d9c  00 20 83 15                                      strne r2, [r3]
00360da0  04 70 9a e7                                      ldr r7, [sl, r4]
00360da4  04 30 8a e7                                      str r3, [sl, r4]
00360da8  04 40 84 e2                                      add r4, r4, #4
00360dac  00 00 57 e3                                      cmp r7, #0
00360db0  08 00 00 0a                                      beq #0x360dd8
00360db4  00 30 97 e5                                      ldr r3, [r7]
00360db8  01 30 43 e2                                      sub r3, r3, #1
00360dbc  00 00 53 e3                                      cmp r3, #0
00360dc0  00 30 87 e5                                      str r3, [r7]
00360dc4  03 00 00 1a                                      bne #0x360dd8
00360dc8  07 00 a0 e1                                      mov r0, r7
00360dcc  60 fa 09 eb                                      bl #0x5df754
00360dd0  07 00 a0 e1                                      mov r0, r7
00360dd4  99 bd fe eb                                      bl #0x310440
00360dd8  01 80 58 e2                                      subs r8, r8, #1
00360ddc  ea ff ff 1a                                      bne #0x360d8c
00360de0  04 40 95 e5                                      ldr r4, [r5, #4]
00360de4  09 81 8a e0                                      add r8, sl, sb, lsl #2
00360de8  08 00 54 e1                                      cmp r4, r8
00360dec  0f 00 00 0a                                      beq #0x360e30
00360df0  08 70 a0 e1                                      mov r7, r8
00360df4  00 60 97 e5                                      ldr r6, [r7]
00360df8  04 70 87 e2                                      add r7, r7, #4
00360dfc  00 00 56 e3                                      cmp r6, #0
00360e00  08 00 00 0a                                      beq #0x360e28
00360e04  00 30 96 e5                                      ldr r3, [r6]
00360e08  01 30 43 e2                                      sub r3, r3, #1
00360e0c  00 00 53 e3                                      cmp r3, #0
00360e10  00 30 86 e5                                      str r3, [r6]
00360e14  03 00 00 1a                                      bne #0x360e28
00360e18  06 00 a0 e1                                      mov r0, r6
00360e1c  4c fa 09 eb                                      bl #0x5df754
00360e20  06 00 a0 e1                                      mov r0, r6
00360e24  85 bd fe eb                                      bl #0x310440
00360e28  07 00 54 e1                                      cmp r4, r7
00360e2c  f0 ff ff 1a                                      bne #0x360df4
00360e30  04 80 85 e5                                      str r8, [r5, #4]
00360e34  0a 00 a0 e1                                      mov r0, sl
00360e38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00360e3c, declared_size=672, range_size=672, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEEESaIS5_EE18_M_fill_insert_auxEPS5_jRKS5_RKSt12__false_type
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >::_M_fill_insert_aux(boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>*, unsigned int, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&, std::__false_type const&)
; decoder-mode: arm
00360e3c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00360e40  00 c0 90 e5                                      ldr ip, [r0]
00360e44  10 d0 4d e2                                      sub sp, sp, #0x10
00360e48  03 40 a0 e1                                      mov r4, r3
00360e4c  0c 00 53 e1                                      cmp r3, ip
00360e50  01 50 a0 e1                                      mov r5, r1
00360e54  04 70 90 35                                      ldrlo r7, [r0, #4]
00360e58  17 00 00 3a                                      blo #0x360ebc
00360e5c  04 70 90 e5                                      ldr r7, [r0, #4]
00360e60  07 00 53 e1                                      cmp r3, r7
00360e64  14 00 00 2a                                      bhs #0x360ebc
00360e68  00 30 93 e5                                      ldr r3, [r3]
00360e6c  0c c0 8d e2                                      add ip, sp, #0xc
00360e70  00 00 53 e3                                      cmp r3, #0
00360e74  08 30 8d e5                                      str r3, [sp, #8]
00360e78  00 10 93 15                                      ldrne r1, [r3]
00360e7c  01 10 81 12                                      addne r1, r1, #1
00360e80  00 10 83 15                                      strne r1, [r3]
00360e84  05 10 a0 e1                                      mov r1, r5
00360e88  08 30 8d e2                                      add r3, sp, #8
00360e8c  00 c0 8d e5                                      str ip, [sp]
00360e90  e9 ff ff eb                                      bl #0x360e3c
00360e94  08 40 9d e5                                      ldr r4, [sp, #8]
00360e98  00 00 54 e3                                      cmp r4, #0
00360e9c  04 00 00 0a                                      beq #0x360eb4
00360ea0  00 30 94 e5                                      ldr r3, [r4]
00360ea4  01 30 43 e2                                      sub r3, r3, #1
00360ea8  00 00 53 e3                                      cmp r3, #0
00360eac  00 30 84 e5                                      str r3, [r4]
00360eb0  84 00 00 0a                                      beq #0x3610c8
00360eb4  10 d0 8d e2                                      add sp, sp, #0x10
00360eb8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00360ebc  07 80 65 e0                                      rsb r8, r5, r7
00360ec0  48 81 a0 e1                                      asr r8, r8, #2
00360ec4  08 00 52 e1                                      cmp r2, r8
00360ec8  46 00 00 2a                                      bhs #0x360fe8
00360ecc  02 81 a0 e1                                      lsl r8, r2, #2
00360ed0  07 90 68 e0                                      rsb sb, r8, r7
00360ed4  48 11 a0 e1                                      asr r1, r8, #2
00360ed8  00 00 51 e3                                      cmp r1, #0
00360edc  07 30 a0 d1                                      movle r3, r7
00360ee0  0a 00 00 da                                      ble #0x360f10
00360ee4  00 20 a0 e3                                      mov r2, #0
00360ee8  02 30 99 e7                                      ldr r3, [sb, r2]
00360eec  00 00 53 e3                                      cmp r3, #0
00360ef0  02 30 87 e7                                      str r3, [r7, r2]
00360ef4  00 c0 93 15                                      ldrne ip, [r3]
00360ef8  04 20 82 e2                                      add r2, r2, #4
00360efc  01 c0 8c 12                                      addne ip, ip, #1
00360f00  00 c0 83 15                                      strne ip, [r3]
00360f04  01 10 51 e2                                      subs r1, r1, #1
00360f08  f6 ff ff 1a                                      bne #0x360ee8
00360f0c  04 30 90 e5                                      ldr r3, [r0, #4]
00360f10  09 a0 65 e0                                      rsb sl, r5, sb
00360f14  4a a1 a0 e1                                      asr sl, sl, #2
00360f18  08 30 83 e0                                      add r3, r3, r8
00360f1c  00 00 5a e3                                      cmp sl, #0
00360f20  04 30 80 e5                                      str r3, [r0, #4]
00360f24  15 00 00 da                                      ble #0x360f80
00360f28  04 30 19 e5                                      ldr r3, [sb, #-4]
00360f2c  04 90 49 e2                                      sub sb, sb, #4
00360f30  00 00 53 e3                                      cmp r3, #0
00360f34  00 20 93 15                                      ldrne r2, [r3]
00360f38  01 20 82 12                                      addne r2, r2, #1
00360f3c  00 20 83 15                                      strne r2, [r3]
00360f40  04 60 17 e5                                      ldr r6, [r7, #-4]
00360f44  04 30 07 e5                                      str r3, [r7, #-4]
00360f48  04 70 47 e2                                      sub r7, r7, #4
00360f4c  00 00 56 e3                                      cmp r6, #0
00360f50  08 00 00 0a                                      beq #0x360f78
00360f54  00 30 96 e5                                      ldr r3, [r6]
00360f58  01 30 43 e2                                      sub r3, r3, #1
00360f5c  00 00 53 e3                                      cmp r3, #0
00360f60  00 30 86 e5                                      str r3, [r6]
00360f64  03 00 00 1a                                      bne #0x360f78
00360f68  06 00 a0 e1                                      mov r0, r6
00360f6c  f8 f9 09 eb                                      bl #0x5df754
00360f70  06 00 a0 e1                                      mov r0, r6
00360f74  31 bd fe eb                                      bl #0x310440
00360f78  01 a0 5a e2                                      subs sl, sl, #1
00360f7c  e9 ff ff 1a                                      bne #0x360f28
00360f80  48 81 a0 e1                                      asr r8, r8, #2
00360f84  00 00 58 e3                                      cmp r8, #0
00360f88  c9 ff ff da                                      ble #0x360eb4
00360f8c  00 70 a0 e3                                      mov r7, #0
00360f90  00 30 94 e5                                      ldr r3, [r4]
00360f94  00 00 53 e3                                      cmp r3, #0
00360f98  00 20 93 15                                      ldrne r2, [r3]
00360f9c  01 20 82 12                                      addne r2, r2, #1
00360fa0  00 20 83 15                                      strne r2, [r3]
00360fa4  07 60 95 e7                                      ldr r6, [r5, r7]
00360fa8  07 30 85 e7                                      str r3, [r5, r7]
00360fac  04 70 87 e2                                      add r7, r7, #4
00360fb0  00 00 56 e3                                      cmp r6, #0
00360fb4  08 00 00 0a                                      beq #0x360fdc
00360fb8  00 30 96 e5                                      ldr r3, [r6]
00360fbc  01 30 43 e2                                      sub r3, r3, #1
00360fc0  00 00 53 e3                                      cmp r3, #0
00360fc4  00 30 86 e5                                      str r3, [r6]
00360fc8  03 00 00 1a                                      bne #0x360fdc
00360fcc  06 00 a0 e1                                      mov r0, r6
00360fd0  df f9 09 eb                                      bl #0x5df754
00360fd4  06 00 a0 e1                                      mov r0, r6
00360fd8  18 bd fe eb                                      bl #0x310440
00360fdc  01 80 58 e2                                      subs r8, r8, #1
00360fe0  ea ff ff 1a                                      bne #0x360f90
00360fe4  b2 ff ff ea                                      b #0x360eb4
00360fe8  02 20 68 e0                                      rsb r2, r8, r2
00360fec  52 60 bd e7                                      sbfx r6, r2, #0, #0x1e
00360ff0  00 00 56 e3                                      cmp r6, #0
00360ff4  02 21 87 e0                                      add r2, r7, r2, lsl #2
00360ff8  09 00 00 da                                      ble #0x361024
00360ffc  00 10 a0 e3                                      mov r1, #0
00361000  00 30 94 e5                                      ldr r3, [r4]
00361004  00 00 53 e3                                      cmp r3, #0
00361008  01 31 87 e7                                      str r3, [r7, r1, lsl #2]
0036100c  00 c0 93 15                                      ldrne ip, [r3]
00361010  01 10 81 e2                                      add r1, r1, #1
00361014  01 c0 8c 12                                      addne ip, ip, #1
00361018  00 c0 83 15                                      strne ip, [r3]
0036101c  06 00 51 e1                                      cmp r1, r6
00361020  f6 ff ff 1a                                      bne #0x361000
00361024  00 00 58 e3                                      cmp r8, #0
00361028  04 20 80 e5                                      str r2, [r0, #4]
0036102c  08 21 82 d0                                      addle r2, r2, r8, lsl #2
00361030  04 20 80 d5                                      strle r2, [r0, #4]
00361034  9e ff ff da                                      ble #0x360eb4
00361038  08 70 a0 e1                                      mov r7, r8
0036103c  00 10 a0 e3                                      mov r1, #0
00361040  01 30 95 e7                                      ldr r3, [r5, r1]
00361044  00 00 53 e3                                      cmp r3, #0
00361048  01 30 82 e7                                      str r3, [r2, r1]
0036104c  00 c0 93 15                                      ldrne ip, [r3]
00361050  04 10 81 e2                                      add r1, r1, #4
00361054  01 c0 8c 12                                      addne ip, ip, #1
00361058  00 c0 83 15                                      strne ip, [r3]
0036105c  01 70 57 e2                                      subs r7, r7, #1
00361060  f6 ff ff 1a                                      bne #0x361040
00361064  04 30 90 e5                                      ldr r3, [r0, #4]
00361068  08 31 83 e0                                      add r3, r3, r8, lsl #2
0036106c  04 30 80 e5                                      str r3, [r0, #4]
00361070  00 30 94 e5                                      ldr r3, [r4]
00361074  00 00 53 e3                                      cmp r3, #0
00361078  00 20 93 15                                      ldrne r2, [r3]
0036107c  01 20 82 12                                      addne r2, r2, #1
00361080  00 20 83 15                                      strne r2, [r3]
00361084  07 60 95 e7                                      ldr r6, [r5, r7]
00361088  07 30 85 e7                                      str r3, [r5, r7]
0036108c  04 70 87 e2                                      add r7, r7, #4
00361090  00 00 56 e3                                      cmp r6, #0
00361094  08 00 00 0a                                      beq #0x3610bc
00361098  00 30 96 e5                                      ldr r3, [r6]
0036109c  01 30 43 e2                                      sub r3, r3, #1
003610a0  00 00 53 e3                                      cmp r3, #0
003610a4  00 30 86 e5                                      str r3, [r6]
003610a8  03 00 00 1a                                      bne #0x3610bc
003610ac  06 00 a0 e1                                      mov r0, r6
003610b0  a7 f9 09 eb                                      bl #0x5df754
003610b4  06 00 a0 e1                                      mov r0, r6
003610b8  e0 bc fe eb                                      bl #0x310440
003610bc  01 80 58 e2                                      subs r8, r8, #1
003610c0  ea ff ff 1a                                      bne #0x361070
003610c4  7a ff ff ea                                      b #0x360eb4
003610c8  04 00 a0 e1                                      mov r0, r4
003610cc  a0 f9 09 eb                                      bl #0x5df754
003610d0  04 00 a0 e1                                      mov r0, r4
003610d4  d9 bc fe eb                                      bl #0x310440
003610d8  75 ff ff ea                                      b #0x360eb4

; FUNCTION 0x003610dc, declared_size=364, range_size=364, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEEESaIS5_EE14_M_fill_insertEPS5_jRKS5_
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >::_M_fill_insert(boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>*, unsigned int, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&)
; decoder-mode: arm
003610dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003610e0  00 70 52 e2                                      subs r7, r2, #0
003610e4  10 d0 4d e2                                      sub sp, sp, #0x10
003610e8  00 50 a0 e1                                      mov r5, r0
003610ec  01 40 a0 e1                                      mov r4, r1
003610f0  03 60 a0 e1                                      mov r6, r3
003610f4  45 00 00 0a                                      beq #0x361210
003610f8  00 50 90 e9                                      ldmib r0, {ip, lr}
003610fc  0e c0 6c e0                                      rsb ip, ip, lr
00361100  4c 01 57 e1                                      cmp r7, ip, asr #2
00361104  43 00 00 9a                                      bls #0x361218
00361108  07 10 a0 e1                                      mov r1, r7
0036110c  4f f6 ff eb                                      bl #0x35ea50
00361110  10 20 8d e2                                      add r2, sp, #0x10
00361114  00 10 a0 e1                                      mov r1, r0
00361118  08 00 22 e5                                      str r0, [r2, #-8]!
0036111c  08 00 85 e2                                      add r0, r5, #8
00361120  f1 fa ff eb                                      bl #0x35fcec
00361124  00 c0 95 e5                                      ldr ip, [r5]
00361128  00 80 a0 e1                                      mov r8, r0
0036112c  04 e0 6c e0                                      rsb lr, ip, r4
00361130  4e e1 a0 e1                                      asr lr, lr, #2
00361134  00 00 5e e3                                      cmp lr, #0
00361138  00 00 a0 d1                                      movle r0, r0
0036113c  0b 00 00 da                                      ble #0x361170
00361140  0e 10 a0 e1                                      mov r1, lr
00361144  00 20 a0 e3                                      mov r2, #0
00361148  02 30 9c e7                                      ldr r3, [ip, r2]
0036114c  00 00 53 e3                                      cmp r3, #0
00361150  02 30 88 e7                                      str r3, [r8, r2]
00361154  00 00 93 15                                      ldrne r0, [r3]
00361158  04 20 82 e2                                      add r2, r2, #4
0036115c  01 00 80 12                                      addne r0, r0, #1
00361160  00 00 83 15                                      strne r0, [r3]
00361164  01 10 51 e2                                      subs r1, r1, #1
00361168  f6 ff ff 1a                                      bne #0x361148
0036116c  0e 01 88 e0                                      add r0, r8, lr, lsl #2
00361170  01 00 57 e3                                      cmp r7, #1
00361174  2b 00 00 0a                                      beq #0x361228
00361178  57 c0 bd e7                                      sbfx ip, r7, #0, #0x1e
0036117c  00 00 5c e3                                      cmp ip, #0
00361180  07 71 80 e0                                      add r7, r0, r7, lsl #2
00361184  09 00 00 da                                      ble #0x3611b0
00361188  00 20 a0 e3                                      mov r2, #0
0036118c  00 30 96 e5                                      ldr r3, [r6]
00361190  00 00 53 e3                                      cmp r3, #0
00361194  02 31 80 e7                                      str r3, [r0, r2, lsl #2]
00361198  00 10 93 15                                      ldrne r1, [r3]
0036119c  01 20 82 e2                                      add r2, r2, #1
003611a0  01 10 81 12                                      addne r1, r1, #1
003611a4  00 10 83 15                                      strne r1, [r3]
003611a8  0c 00 52 e1                                      cmp r2, ip
003611ac  f6 ff ff 1a                                      bne #0x36118c
003611b0  04 c0 95 e5                                      ldr ip, [r5, #4]
003611b4  0c c0 64 e0                                      rsb ip, r4, ip
003611b8  4c c1 a0 e1                                      asr ip, ip, #2
003611bc  00 00 5c e3                                      cmp ip, #0
003611c0  0b 00 00 da                                      ble #0x3611f4
003611c4  0c 10 a0 e1                                      mov r1, ip
003611c8  00 20 a0 e3                                      mov r2, #0
003611cc  02 30 94 e7                                      ldr r3, [r4, r2]
003611d0  00 00 53 e3                                      cmp r3, #0
003611d4  02 30 87 e7                                      str r3, [r7, r2]
003611d8  00 00 93 15                                      ldrne r0, [r3]
003611dc  04 20 82 e2                                      add r2, r2, #4
003611e0  01 00 80 12                                      addne r0, r0, #1
003611e4  00 00 83 15                                      strne r0, [r3]
003611e8  01 10 51 e2                                      subs r1, r1, #1
003611ec  f6 ff ff 1a                                      bne #0x3611cc
003611f0  0c 71 87 e0                                      add r7, r7, ip, lsl #2
003611f4  05 00 a0 e1                                      mov r0, r5
003611f8  4b fb ff eb                                      bl #0x35ff2c
003611fc  08 30 9d e5                                      ldr r3, [sp, #8]
00361200  00 80 85 e5                                      str r8, [r5]
00361204  04 70 85 e5                                      str r7, [r5, #4]
00361208  03 81 88 e0                                      add r8, r8, r3, lsl #2
0036120c  08 80 85 e5                                      str r8, [r5, #8]
00361210  10 d0 8d e2                                      add sp, sp, #0x10
00361214  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00361218  0c c0 8d e2                                      add ip, sp, #0xc
0036121c  00 c0 8d e5                                      str ip, [sp]
00361220  05 ff ff eb                                      bl #0x360e3c
00361224  f9 ff ff ea                                      b #0x361210
00361228  00 30 96 e5                                      ldr r3, [r6]
0036122c  04 70 80 e2                                      add r7, r0, #4
00361230  00 00 53 e3                                      cmp r3, #0
00361234  00 30 80 e5                                      str r3, [r0]
00361238  00 20 93 15                                      ldrne r2, [r3]
0036123c  01 20 82 12                                      addne r2, r2, #1
00361240  00 20 83 15                                      strne r2, [r3]
00361244  d9 ff ff ea                                      b #0x3611b0

; FUNCTION 0x00361248, declared_size=80, range_size=80, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEEESaIS5_EE6resizeEjRKS5_
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> > >::resize(unsigned int, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&)
; decoder-mode: arm
00361248  10 40 2d e9                                      push {r4, lr}
0036124c  10 10 90 e8                                      ldm r0, {r4, ip}
00361250  02 30 a0 e1                                      mov r3, r2
00361254  08 d0 4d e2                                      sub sp, sp, #8
00361258  0c 20 64 e0                                      rsb r2, r4, ip
0036125c  42 21 a0 e1                                      asr r2, r2, #2
00361260  02 00 51 e1                                      cmp r1, r2
00361264  07 00 00 2a                                      bhs #0x361288
00361268  01 11 84 e0                                      add r1, r4, r1, lsl #2
0036126c  0c 00 51 e1                                      cmp r1, ip
00361270  02 00 00 0a                                      beq #0x361280
00361274  0c 20 a0 e1                                      mov r2, ip
00361278  04 30 8d e2                                      add r3, sp, #4
0036127c  b6 fe ff eb                                      bl #0x360d5c
00361280  08 d0 8d e2                                      add sp, sp, #8
00361284  10 80 bd e8                                      pop {r4, pc}
00361288  01 20 62 e0                                      rsb r2, r2, r1
0036128c  0c 10 a0 e1                                      mov r1, ip
00361290  91 ff ff eb                                      bl #0x3610dc
00361294  f9 ff ff ea                                      b #0x361280
