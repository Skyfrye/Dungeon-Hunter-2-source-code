; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035e9f0, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video9CMaterialEEESaIS5_EE20_M_compute_next_sizeEj
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0035e9f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0035e9f4  14 00 90 e8                                      ldm r0, {r2, r4}
0035e9f8  ff 3f 0f e3                                      movw r3, #0xffff
0035e9fc  ff 3f 43 e3                                      movt r3, #0x3fff
0035ea00  04 40 62 e0                                      rsb r4, r2, r4
0035ea04  44 41 a0 e1                                      asr r4, r4, #2
0035ea08  03 30 64 e0                                      rsb r3, r4, r3
0035ea0c  01 00 53 e1                                      cmp r3, r1
0035ea10  01 50 a0 e1                                      mov r5, r1
0035ea14  08 00 00 3a                                      blo #0x35ea3c
0035ea18  05 00 54 e1                                      cmp r4, r5
0035ea1c  04 00 84 20                                      addhs r0, r4, r4
0035ea20  05 00 84 30                                      addlo r0, r4, r5
0035ea24  07 01 70 e3                                      cmn r0, #0xc0000001
0035ea28  01 00 00 8a                                      bhi #0x35ea34
0035ea2c  04 00 50 e1                                      cmp r0, r4
0035ea30  00 00 00 2a                                      bhs #0x35ea38
0035ea34  03 01 e0 e3                                      mvn r0, #0xc0000000
0035ea38  70 80 bd e8                                      pop {r4, r5, r6, pc}
0035ea3c  08 00 9f e5                                      ldr r0, [pc, #8]
0035ea40  00 00 8f e0                                      add r0, pc, r0
0035ea44  fd a8 0e eb                                      bl #0x708e40
0035ea48  f2 ff ff ea                                      b #0x35ea18
; mapping-symbol data/literal pool
0035ea4c  28 fa 55 00                                      .byte 0x28, 0xfa, 0x55, 0x00

; FUNCTION 0x0035eea4, declared_size=172, range_size=172, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video9CMaterialEEESaIS5_EE8_M_eraseEPS5_S8_RKSt12__false_type
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >::_M_erase(boost::intrusive_ptr<glitch::video::CMaterial>*, boost::intrusive_ptr<glitch::video::CMaterial>*, std::__false_type const&)
; decoder-mode: arm
0035eea4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0035eea8  04 40 90 e5                                      ldr r4, [r0, #4]
0035eeac  08 d0 4d e2                                      sub sp, sp, #8
0035eeb0  00 50 a0 e1                                      mov r5, r0
0035eeb4  04 90 62 e0                                      rsb sb, r2, r4
0035eeb8  49 91 a0 e1                                      asr sb, sb, #2
0035eebc  00 00 59 e3                                      cmp sb, #0
0035eec0  02 60 a0 e1                                      mov r6, r2
0035eec4  01 80 a0 e1                                      mov r8, r1
0035eec8  01 70 a0 d1                                      movle r7, r1
0035eecc  13 00 00 da                                      ble #0x35ef20
0035eed0  09 70 a0 e1                                      mov r7, sb
0035eed4  00 40 a0 e3                                      mov r4, #0
0035eed8  04 a0 8d e2                                      add sl, sp, #4
0035eedc  04 20 96 e7                                      ldr r2, [r6, r4]
0035eee0  0a 00 a0 e1                                      mov r0, sl
0035eee4  04 20 8d e5                                      str r2, [sp, #4]
0035eee8  00 00 52 e3                                      cmp r2, #0
0035eeec  00 30 92 15                                      ldrne r3, [r2]
0035eef0  01 30 83 12                                      addne r3, r3, #1
0035eef4  00 30 82 15                                      strne r3, [r2]
0035eef8  04 20 9d 15                                      ldrne r2, [sp, #4]
0035eefc  04 30 98 e7                                      ldr r3, [r8, r4]
0035ef00  04 20 88 e7                                      str r2, [r8, r4]
0035ef04  04 30 8d e5                                      str r3, [sp, #4]
0035ef08  36 c7 fe eb                                      bl #0x310be8
0035ef0c  01 70 57 e2                                      subs r7, r7, #1
0035ef10  04 40 84 e2                                      add r4, r4, #4
0035ef14  f0 ff ff 1a                                      bne #0x35eedc
0035ef18  04 40 95 e5                                      ldr r4, [r5, #4]
0035ef1c  09 71 88 e0                                      add r7, r8, sb, lsl #2
0035ef20  04 00 57 e1                                      cmp r7, r4
0035ef24  05 00 00 0a                                      beq #0x35ef40
0035ef28  07 60 a0 e1                                      mov r6, r7
0035ef2c  06 00 a0 e1                                      mov r0, r6
0035ef30  04 60 86 e2                                      add r6, r6, #4
0035ef34  2b c7 fe eb                                      bl #0x310be8
0035ef38  04 00 56 e1                                      cmp r6, r4
0035ef3c  fa ff ff 1a                                      bne #0x35ef2c
0035ef40  04 70 85 e5                                      str r7, [r5, #4]
0035ef44  08 00 a0 e1                                      mov r0, r8
0035ef48  08 d0 8d e2                                      add sp, sp, #8
0035ef4c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0035ef50, declared_size=568, range_size=568, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video9CMaterialEEESaIS5_EE18_M_fill_insert_auxEPS5_jRKS5_RKSt12__false_type
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >::_M_fill_insert_aux(boost::intrusive_ptr<glitch::video::CMaterial>*, unsigned int, boost::intrusive_ptr<glitch::video::CMaterial> const&, std::__false_type const&)
; decoder-mode: arm
0035ef50  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0035ef54  00 c0 90 e5                                      ldr ip, [r0]
0035ef58  20 d0 4d e2                                      sub sp, sp, #0x20
0035ef5c  03 40 a0 e1                                      mov r4, r3
0035ef60  0c 00 53 e1                                      cmp r3, ip
0035ef64  01 50 a0 e1                                      mov r5, r1
0035ef68  04 a0 90 35                                      ldrlo sl, [r0, #4]
0035ef6c  12 00 00 3a                                      blo #0x35efbc
0035ef70  04 a0 90 e5                                      ldr sl, [r0, #4]
0035ef74  0a 00 53 e1                                      cmp r3, sl
0035ef78  0f 00 00 2a                                      bhs #0x35efbc
0035ef7c  00 30 93 e5                                      ldr r3, [r3]
0035ef80  18 40 8d e2                                      add r4, sp, #0x18
0035ef84  1c c0 8d e2                                      add ip, sp, #0x1c
0035ef88  00 00 53 e3                                      cmp r3, #0
0035ef8c  18 30 8d e5                                      str r3, [sp, #0x18]
0035ef90  00 10 93 15                                      ldrne r1, [r3]
0035ef94  01 10 81 12                                      addne r1, r1, #1
0035ef98  00 10 83 15                                      strne r1, [r3]
0035ef9c  05 10 a0 e1                                      mov r1, r5
0035efa0  04 30 a0 e1                                      mov r3, r4
0035efa4  00 c0 8d e5                                      str ip, [sp]
0035efa8  e8 ff ff eb                                      bl #0x35ef50
0035efac  04 00 a0 e1                                      mov r0, r4
0035efb0  0c c7 fe eb                                      bl #0x310be8
0035efb4  20 d0 8d e2                                      add sp, sp, #0x20
0035efb8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0035efbc  0a 70 65 e0                                      rsb r7, r5, sl
0035efc0  47 71 a0 e1                                      asr r7, r7, #2
0035efc4  07 00 52 e1                                      cmp r2, r7
0035efc8  3b 00 00 2a                                      bhs #0x35f0bc
0035efcc  02 71 a0 e1                                      lsl r7, r2, #2
0035efd0  0a 80 67 e0                                      rsb r8, r7, sl
0035efd4  47 11 a0 e1                                      asr r1, r7, #2
0035efd8  00 00 51 e3                                      cmp r1, #0
0035efdc  0a 30 a0 d1                                      movle r3, sl
0035efe0  0a 00 00 da                                      ble #0x35f010
0035efe4  00 20 a0 e3                                      mov r2, #0
0035efe8  02 30 98 e7                                      ldr r3, [r8, r2]
0035efec  00 00 53 e3                                      cmp r3, #0
0035eff0  02 30 8a e7                                      str r3, [sl, r2]
0035eff4  00 c0 93 15                                      ldrne ip, [r3]
0035eff8  04 20 82 e2                                      add r2, r2, #4
0035effc  01 c0 8c 12                                      addne ip, ip, #1
0035f000  00 c0 83 15                                      strne ip, [r3]
0035f004  01 10 51 e2                                      subs r1, r1, #1
0035f008  f6 ff ff 1a                                      bne #0x35efe8
0035f00c  04 30 90 e5                                      ldr r3, [r0, #4]
0035f010  08 60 65 e0                                      rsb r6, r5, r8
0035f014  46 61 a0 e1                                      asr r6, r6, #2
0035f018  07 30 83 e0                                      add r3, r3, r7
0035f01c  00 00 56 e3                                      cmp r6, #0
0035f020  04 30 80 e5                                      str r3, [r0, #4]
0035f024  0f 00 00 da                                      ble #0x35f068
0035f028  14 90 8d e2                                      add sb, sp, #0x14
0035f02c  04 20 18 e5                                      ldr r2, [r8, #-4]
0035f030  09 00 a0 e1                                      mov r0, sb
0035f034  04 80 48 e2                                      sub r8, r8, #4
0035f038  14 20 8d e5                                      str r2, [sp, #0x14]
0035f03c  00 00 52 e3                                      cmp r2, #0
0035f040  00 30 92 15                                      ldrne r3, [r2]
0035f044  01 30 83 12                                      addne r3, r3, #1
0035f048  00 30 82 15                                      strne r3, [r2]
0035f04c  14 20 9d 15                                      ldrne r2, [sp, #0x14]
0035f050  04 30 1a e5                                      ldr r3, [sl, #-4]
0035f054  14 30 8d e5                                      str r3, [sp, #0x14]
0035f058  04 20 2a e5                                      str r2, [sl, #-4]!
0035f05c  e1 c6 fe eb                                      bl #0x310be8
0035f060  01 60 56 e2                                      subs r6, r6, #1
0035f064  f0 ff ff 1a                                      bne #0x35f02c
0035f068  47 71 a0 e1                                      asr r7, r7, #2
0035f06c  00 00 57 e3                                      cmp r7, #0
0035f070  cf ff ff da                                      ble #0x35efb4
0035f074  00 60 a0 e3                                      mov r6, #0
0035f078  10 80 8d e2                                      add r8, sp, #0x10
0035f07c  00 20 94 e5                                      ldr r2, [r4]
0035f080  08 00 a0 e1                                      mov r0, r8
0035f084  10 20 8d e5                                      str r2, [sp, #0x10]
0035f088  00 00 52 e3                                      cmp r2, #0
0035f08c  00 30 92 15                                      ldrne r3, [r2]
0035f090  01 30 83 12                                      addne r3, r3, #1
0035f094  00 30 82 15                                      strne r3, [r2]
0035f098  10 20 9d 15                                      ldrne r2, [sp, #0x10]
0035f09c  06 30 95 e7                                      ldr r3, [r5, r6]
0035f0a0  06 20 85 e7                                      str r2, [r5, r6]
0035f0a4  10 30 8d e5                                      str r3, [sp, #0x10]
0035f0a8  ce c6 fe eb                                      bl #0x310be8
0035f0ac  01 70 57 e2                                      subs r7, r7, #1
0035f0b0  04 60 86 e2                                      add r6, r6, #4
0035f0b4  f0 ff ff 1a                                      bne #0x35f07c
0035f0b8  bd ff ff ea                                      b #0x35efb4
0035f0bc  02 20 67 e0                                      rsb r2, r7, r2
0035f0c0  52 60 bd e7                                      sbfx r6, r2, #0, #0x1e
0035f0c4  00 00 56 e3                                      cmp r6, #0
0035f0c8  02 21 8a e0                                      add r2, sl, r2, lsl #2
0035f0cc  09 00 00 da                                      ble #0x35f0f8
0035f0d0  00 10 a0 e3                                      mov r1, #0
0035f0d4  00 30 94 e5                                      ldr r3, [r4]
0035f0d8  00 00 53 e3                                      cmp r3, #0
0035f0dc  01 31 8a e7                                      str r3, [sl, r1, lsl #2]
0035f0e0  00 c0 93 15                                      ldrne ip, [r3]
0035f0e4  01 10 81 e2                                      add r1, r1, #1
0035f0e8  01 c0 8c 12                                      addne ip, ip, #1
0035f0ec  00 c0 83 15                                      strne ip, [r3]
0035f0f0  06 00 51 e1                                      cmp r1, r6
0035f0f4  f6 ff ff 1a                                      bne #0x35f0d4
0035f0f8  00 00 57 e3                                      cmp r7, #0
0035f0fc  04 20 80 e5                                      str r2, [r0, #4]
0035f100  07 21 82 d0                                      addle r2, r2, r7, lsl #2
0035f104  04 20 80 d5                                      strle r2, [r0, #4]
0035f108  a9 ff ff da                                      ble #0x35efb4
0035f10c  07 60 a0 e1                                      mov r6, r7
0035f110  00 10 a0 e3                                      mov r1, #0
0035f114  01 30 95 e7                                      ldr r3, [r5, r1]
0035f118  00 00 53 e3                                      cmp r3, #0
0035f11c  01 30 82 e7                                      str r3, [r2, r1]
0035f120  00 c0 93 15                                      ldrne ip, [r3]
0035f124  04 10 81 e2                                      add r1, r1, #4
0035f128  01 c0 8c 12                                      addne ip, ip, #1
0035f12c  00 c0 83 15                                      strne ip, [r3]
0035f130  01 60 56 e2                                      subs r6, r6, #1
0035f134  f6 ff ff 1a                                      bne #0x35f114
0035f138  04 30 90 e5                                      ldr r3, [r0, #4]
0035f13c  0c 80 8d e2                                      add r8, sp, #0xc
0035f140  07 31 83 e0                                      add r3, r3, r7, lsl #2
0035f144  04 30 80 e5                                      str r3, [r0, #4]
0035f148  00 20 94 e5                                      ldr r2, [r4]
0035f14c  08 00 a0 e1                                      mov r0, r8
0035f150  0c 20 8d e5                                      str r2, [sp, #0xc]
0035f154  00 00 52 e3                                      cmp r2, #0
0035f158  00 30 92 15                                      ldrne r3, [r2]
0035f15c  01 30 83 12                                      addne r3, r3, #1
0035f160  00 30 82 15                                      strne r3, [r2]
0035f164  0c 20 9d 15                                      ldrne r2, [sp, #0xc]
0035f168  06 30 95 e7                                      ldr r3, [r5, r6]
0035f16c  06 20 85 e7                                      str r2, [r5, r6]
0035f170  0c 30 8d e5                                      str r3, [sp, #0xc]
0035f174  9b c6 fe eb                                      bl #0x310be8
0035f178  01 70 57 e2                                      subs r7, r7, #1
0035f17c  04 60 86 e2                                      add r6, r6, #4
0035f180  f0 ff ff 1a                                      bne #0x35f148
0035f184  8a ff ff ea                                      b #0x35efb4

; FUNCTION 0x0035f968, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video9CMaterialEEESaIS5_EE19_M_clear_after_moveEv
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >::_M_clear_after_move()
; decoder-mode: arm
0035f968  70 40 2d e9                                      push {r4, r5, r6, lr}
0035f96c  04 40 90 e5                                      ldr r4, [r0, #4]
0035f970  00 50 90 e5                                      ldr r5, [r0]
0035f974  00 60 a0 e1                                      mov r6, r0
0035f978  05 00 54 e1                                      cmp r4, r5
0035f97c  05 00 00 0a                                      beq #0x35f998
0035f980  04 40 44 e2                                      sub r4, r4, #4
0035f984  04 00 a0 e1                                      mov r0, r4
0035f988  96 c4 fe eb                                      bl #0x310be8
0035f98c  04 00 55 e1                                      cmp r5, r4
0035f990  fa ff ff 1a                                      bne #0x35f980
0035f994  00 40 96 e5                                      ldr r4, [r6]
0035f998  00 00 54 e3                                      cmp r4, #0
0035f99c  08 10 96 e5                                      ldr r1, [r6, #8]
0035f9a0  09 00 00 0a                                      beq #0x35f9cc
0035f9a4  01 10 64 e0                                      rsb r1, r4, r1
0035f9a8  03 10 c1 e3                                      bic r1, r1, #3
0035f9ac  80 00 51 e3                                      cmp r1, #0x80
0035f9b0  02 00 00 8a                                      bhi #0x35f9c0
0035f9b4  04 00 a0 e1                                      mov r0, r4
0035f9b8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0035f9bc  4f a5 0e ea                                      b #0x708f00
0035f9c0  04 00 a0 e1                                      mov r0, r4
0035f9c4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0035f9c8  9c c2 fe ea                                      b #0x310440
0035f9cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0035fa5c, declared_size=100, range_size=100, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video9CMaterialEEESaIS5_EED1Ev
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >::~vector()
; decoder-mode: arm
0035fa5c  70 40 2d e9                                      push {r4, r5, r6, lr}
0035fa60  04 50 90 e5                                      ldr r5, [r0, #4]
0035fa64  00 60 90 e5                                      ldr r6, [r0]
0035fa68  00 40 a0 e1                                      mov r4, r0
0035fa6c  06 00 55 e1                                      cmp r5, r6
0035fa70  04 00 00 0a                                      beq #0x35fa88
0035fa74  04 50 45 e2                                      sub r5, r5, #4
0035fa78  05 00 a0 e1                                      mov r0, r5
0035fa7c  59 c4 fe eb                                      bl #0x310be8
0035fa80  05 00 56 e1                                      cmp r6, r5
0035fa84  fa ff ff 1a                                      bne #0x35fa74
0035fa88  00 00 94 e5                                      ldr r0, [r4]
0035fa8c  00 00 50 e3                                      cmp r0, #0
0035fa90  05 00 00 0a                                      beq #0x35faac
0035fa94  08 10 94 e5                                      ldr r1, [r4, #8]
0035fa98  01 10 60 e0                                      rsb r1, r0, r1
0035fa9c  03 10 c1 e3                                      bic r1, r1, #3
0035faa0  80 00 51 e3                                      cmp r1, #0x80
0035faa4  02 00 00 8a                                      bhi #0x35fab4
0035faa8  14 a5 0e eb                                      bl #0x708f00
0035faac  04 00 a0 e1                                      mov r0, r4
0035fab0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0035fab4  61 c2 fe eb                                      bl #0x310440
0035fab8  04 00 a0 e1                                      mov r0, r4
0035fabc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0035fb30, declared_size=364, range_size=364, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video9CMaterialEEESaIS5_EE14_M_fill_insertEPS5_jRKS5_
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >::_M_fill_insert(boost::intrusive_ptr<glitch::video::CMaterial>*, unsigned int, boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
0035fb30  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0035fb34  00 70 52 e2                                      subs r7, r2, #0
0035fb38  10 d0 4d e2                                      sub sp, sp, #0x10
0035fb3c  00 50 a0 e1                                      mov r5, r0
0035fb40  01 40 a0 e1                                      mov r4, r1
0035fb44  03 60 a0 e1                                      mov r6, r3
0035fb48  45 00 00 0a                                      beq #0x35fc64
0035fb4c  00 50 90 e9                                      ldmib r0, {ip, lr}
0035fb50  0e c0 6c e0                                      rsb ip, ip, lr
0035fb54  4c 01 57 e1                                      cmp r7, ip, asr #2
0035fb58  43 00 00 9a                                      bls #0x35fc6c
0035fb5c  07 10 a0 e1                                      mov r1, r7
0035fb60  a2 fb ff eb                                      bl #0x35e9f0
0035fb64  10 20 8d e2                                      add r2, sp, #0x10
0035fb68  00 10 a0 e1                                      mov r1, r0
0035fb6c  08 00 22 e5                                      str r0, [r2, #-8]!
0035fb70  08 00 85 e2                                      add r0, r5, #8
0035fb74  d1 ff ff eb                                      bl #0x35fac0
0035fb78  00 c0 95 e5                                      ldr ip, [r5]
0035fb7c  00 80 a0 e1                                      mov r8, r0
0035fb80  04 e0 6c e0                                      rsb lr, ip, r4
0035fb84  4e e1 a0 e1                                      asr lr, lr, #2
0035fb88  00 00 5e e3                                      cmp lr, #0
0035fb8c  00 00 a0 d1                                      movle r0, r0
0035fb90  0b 00 00 da                                      ble #0x35fbc4
0035fb94  0e 10 a0 e1                                      mov r1, lr
0035fb98  00 20 a0 e3                                      mov r2, #0
0035fb9c  02 30 9c e7                                      ldr r3, [ip, r2]
0035fba0  00 00 53 e3                                      cmp r3, #0
0035fba4  02 30 88 e7                                      str r3, [r8, r2]
0035fba8  00 00 93 15                                      ldrne r0, [r3]
0035fbac  04 20 82 e2                                      add r2, r2, #4
0035fbb0  01 00 80 12                                      addne r0, r0, #1
0035fbb4  00 00 83 15                                      strne r0, [r3]
0035fbb8  01 10 51 e2                                      subs r1, r1, #1
0035fbbc  f6 ff ff 1a                                      bne #0x35fb9c
0035fbc0  0e 01 88 e0                                      add r0, r8, lr, lsl #2
0035fbc4  01 00 57 e3                                      cmp r7, #1
0035fbc8  2b 00 00 0a                                      beq #0x35fc7c
0035fbcc  57 c0 bd e7                                      sbfx ip, r7, #0, #0x1e
0035fbd0  00 00 5c e3                                      cmp ip, #0
0035fbd4  07 71 80 e0                                      add r7, r0, r7, lsl #2
0035fbd8  09 00 00 da                                      ble #0x35fc04
0035fbdc  00 20 a0 e3                                      mov r2, #0
0035fbe0  00 30 96 e5                                      ldr r3, [r6]
0035fbe4  00 00 53 e3                                      cmp r3, #0
0035fbe8  02 31 80 e7                                      str r3, [r0, r2, lsl #2]
0035fbec  00 10 93 15                                      ldrne r1, [r3]
0035fbf0  01 20 82 e2                                      add r2, r2, #1
0035fbf4  01 10 81 12                                      addne r1, r1, #1
0035fbf8  00 10 83 15                                      strne r1, [r3]
0035fbfc  0c 00 52 e1                                      cmp r2, ip
0035fc00  f6 ff ff 1a                                      bne #0x35fbe0
0035fc04  04 c0 95 e5                                      ldr ip, [r5, #4]
0035fc08  0c c0 64 e0                                      rsb ip, r4, ip
0035fc0c  4c c1 a0 e1                                      asr ip, ip, #2
0035fc10  00 00 5c e3                                      cmp ip, #0
0035fc14  0b 00 00 da                                      ble #0x35fc48
0035fc18  0c 10 a0 e1                                      mov r1, ip
0035fc1c  00 20 a0 e3                                      mov r2, #0
0035fc20  02 30 94 e7                                      ldr r3, [r4, r2]
0035fc24  00 00 53 e3                                      cmp r3, #0
0035fc28  02 30 87 e7                                      str r3, [r7, r2]
0035fc2c  00 00 93 15                                      ldrne r0, [r3]
0035fc30  04 20 82 e2                                      add r2, r2, #4
0035fc34  01 00 80 12                                      addne r0, r0, #1
0035fc38  00 00 83 15                                      strne r0, [r3]
0035fc3c  01 10 51 e2                                      subs r1, r1, #1
0035fc40  f6 ff ff 1a                                      bne #0x35fc20
0035fc44  0c 71 87 e0                                      add r7, r7, ip, lsl #2
0035fc48  05 00 a0 e1                                      mov r0, r5
0035fc4c  45 ff ff eb                                      bl #0x35f968
0035fc50  08 30 9d e5                                      ldr r3, [sp, #8]
0035fc54  00 80 85 e5                                      str r8, [r5]
0035fc58  04 70 85 e5                                      str r7, [r5, #4]
0035fc5c  03 81 88 e0                                      add r8, r8, r3, lsl #2
0035fc60  08 80 85 e5                                      str r8, [r5, #8]
0035fc64  10 d0 8d e2                                      add sp, sp, #0x10
0035fc68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0035fc6c  0c c0 8d e2                                      add ip, sp, #0xc
0035fc70  00 c0 8d e5                                      str ip, [sp]
0035fc74  b5 fc ff eb                                      bl #0x35ef50
0035fc78  f9 ff ff ea                                      b #0x35fc64
0035fc7c  00 30 96 e5                                      ldr r3, [r6]
0035fc80  04 70 80 e2                                      add r7, r0, #4
0035fc84  00 00 53 e3                                      cmp r3, #0
0035fc88  00 30 80 e5                                      str r3, [r0]
0035fc8c  00 20 93 15                                      ldrne r2, [r3]
0035fc90  01 20 82 12                                      addne r2, r2, #1
0035fc94  00 20 83 15                                      strne r2, [r3]
0035fc98  d9 ff ff ea                                      b #0x35fc04

; FUNCTION 0x0035fc9c, declared_size=80, range_size=80, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video9CMaterialEEESaIS5_EE6resizeEjRKS5_
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> > >::resize(unsigned int, boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
0035fc9c  10 40 2d e9                                      push {r4, lr}
0035fca0  10 10 90 e8                                      ldm r0, {r4, ip}
0035fca4  02 30 a0 e1                                      mov r3, r2
0035fca8  08 d0 4d e2                                      sub sp, sp, #8
0035fcac  0c 20 64 e0                                      rsb r2, r4, ip
0035fcb0  42 21 a0 e1                                      asr r2, r2, #2
0035fcb4  02 00 51 e1                                      cmp r1, r2
0035fcb8  07 00 00 2a                                      bhs #0x35fcdc
0035fcbc  01 11 84 e0                                      add r1, r4, r1, lsl #2
0035fcc0  0c 00 51 e1                                      cmp r1, ip
0035fcc4  02 00 00 0a                                      beq #0x35fcd4
0035fcc8  0c 20 a0 e1                                      mov r2, ip
0035fccc  04 30 8d e2                                      add r3, sp, #4
0035fcd0  73 fc ff eb                                      bl #0x35eea4
0035fcd4  08 d0 8d e2                                      add sp, sp, #8
0035fcd8  10 80 bd e8                                      pop {r4, pc}
0035fcdc  01 20 62 e0                                      rsb r2, r2, r1
0035fce0  0c 10 a0 e1                                      mov r1, ip
0035fce4  91 ff ff eb                                      bl #0x35fb30
0035fce8  f9 ff ff ea                                      b #0x35fcd4
