; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fe1a4, declared_size=96, range_size=96, mode=arm
; class-group: std::list<CEvent, std::allocator<CEvent> >
; alias: _ZNSt4listI6CEventSaIS0_EE6insertENSt4priv14_List_iteratorIS0_St16_Nonconst_traitsIS0_EEERKS0_
; demangled: std::list<CEvent, std::allocator<CEvent> >::insert(std::priv::_List_iterator<CEvent, std::_Nonconst_traits<CEvent> >, CEvent const&)
; decoder-mode: arm
007fe1a4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007fe1a8  0c d0 4d e2                                      sub sp, sp, #0xc
007fe1ac  08 10 8d e2                                      add r1, sp, #8
007fe1b0  1c c0 a0 e3                                      mov ip, #0x1c
007fe1b4  04 c0 21 e5                                      str ip, [r1, #-4]!
007fe1b8  00 40 a0 e1                                      mov r4, r0
007fe1bc  01 00 a0 e1                                      mov r0, r1
007fe1c0  02 50 a0 e1                                      mov r5, r2
007fe1c4  03 70 a0 e1                                      mov r7, r3
007fe1c8  52 00 03 eb                                      bl #0x8be318
007fe1cc  07 10 a0 e1                                      mov r1, r7
007fe1d0  00 60 a0 e1                                      mov r6, r0
007fe1d4  08 00 80 e2                                      add r0, r0, #8
007fe1d8  a9 ff ff eb                                      bl #0x7fe084
007fe1dc  00 30 95 e5                                      ldr r3, [r5]
007fe1e0  04 00 a0 e1                                      mov r0, r4
007fe1e4  04 20 93 e5                                      ldr r2, [r3, #4]
007fe1e8  00 30 86 e5                                      str r3, [r6]
007fe1ec  04 20 86 e5                                      str r2, [r6, #4]
007fe1f0  00 60 82 e5                                      str r6, [r2]
007fe1f4  04 60 83 e5                                      str r6, [r3, #4]
007fe1f8  00 60 84 e5                                      str r6, [r4]
007fe1fc  0c d0 8d e2                                      add sp, sp, #0xc
007fe200  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x007fe274, declared_size=68, range_size=68, mode=arm
; class-group: std::list<CEvent, std::allocator<CEvent> >
; alias: _ZNSt4listI6CEventSaIS0_EE5eraseENSt4priv14_List_iteratorIS0_St16_Nonconst_traitsIS0_EEE
; demangled: std::list<CEvent, std::allocator<CEvent> >::erase(std::priv::_List_iterator<CEvent, std::_Nonconst_traits<CEvent> >)
; decoder-mode: arm
007fe274  70 40 2d e9                                      push {r4, r5, r6, lr}
007fe278  00 60 92 e5                                      ldr r6, [r2]
007fe27c  00 50 a0 e1                                      mov r5, r0
007fe280  00 40 96 e5                                      ldr r4, [r6]
007fe284  04 30 96 e5                                      ldr r3, [r6, #4]
007fe288  08 00 86 e2                                      add r0, r6, #8
007fe28c  00 40 83 e5                                      str r4, [r3]
007fe290  04 30 84 e5                                      str r3, [r4, #4]
007fe294  08 30 96 e5                                      ldr r3, [r6, #8]
007fe298  0f e0 a0 e1                                      mov lr, pc
007fe29c  00 f0 93 e5                                      ldr pc, [r3]
007fe2a0  06 00 a0 e1                                      mov r0, r6
007fe2a4  1c 10 a0 e3                                      mov r1, #0x1c
007fe2a8  22 00 03 eb                                      bl #0x8be338
007fe2ac  00 40 85 e5                                      str r4, [r5]
007fe2b0  05 00 a0 e1                                      mov r0, r5
007fe2b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
