; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00816c24, declared_size=68, range_size=68, mode=arm
; class-group: std::list<NetBitStream, std::allocator<NetBitStream> >
; alias: _ZNSt4listI12NetBitStreamSaIS0_EE5eraseENSt4priv14_List_iteratorIS0_St16_Nonconst_traitsIS0_EEE
; demangled: std::list<NetBitStream, std::allocator<NetBitStream> >::erase(std::priv::_List_iterator<NetBitStream, std::_Nonconst_traits<NetBitStream> >)
; decoder-mode: arm
00816c24  70 40 2d e9                                      push {r4, r5, r6, lr}
00816c28  00 60 92 e5                                      ldr r6, [r2]
00816c2c  00 50 a0 e1                                      mov r5, r0
00816c30  00 40 96 e5                                      ldr r4, [r6]
00816c34  04 30 96 e5                                      ldr r3, [r6, #4]
00816c38  08 00 86 e2                                      add r0, r6, #8
00816c3c  00 40 83 e5                                      str r4, [r3]
00816c40  04 30 84 e5                                      str r3, [r4, #4]
00816c44  08 30 96 e5                                      ldr r3, [r6, #8]
00816c48  0f e0 a0 e1                                      mov lr, pc
00816c4c  00 f0 93 e5                                      ldr pc, [r3]
00816c50  06 00 a0 e1                                      mov r0, r6
00816c54  28 10 a0 e3                                      mov r1, #0x28
00816c58  b6 9d 02 eb                                      bl #0x8be338
00816c5c  00 40 85 e5                                      str r4, [r5]
00816c60  05 00 a0 e1                                      mov r0, r5
00816c64  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00817c3c, declared_size=96, range_size=96, mode=arm
; class-group: std::list<NetBitStream, std::allocator<NetBitStream> >
; alias: _ZNSt4listI12NetBitStreamSaIS0_EE6insertENSt4priv14_List_iteratorIS0_St16_Nonconst_traitsIS0_EEERKS0_
; demangled: std::list<NetBitStream, std::allocator<NetBitStream> >::insert(std::priv::_List_iterator<NetBitStream, std::_Nonconst_traits<NetBitStream> >, NetBitStream const&)
; decoder-mode: arm
00817c3c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00817c40  0c d0 4d e2                                      sub sp, sp, #0xc
00817c44  08 10 8d e2                                      add r1, sp, #8
00817c48  28 c0 a0 e3                                      mov ip, #0x28
00817c4c  04 c0 21 e5                                      str ip, [r1, #-4]!
00817c50  00 40 a0 e1                                      mov r4, r0
00817c54  01 00 a0 e1                                      mov r0, r1
00817c58  02 50 a0 e1                                      mov r5, r2
00817c5c  03 70 a0 e1                                      mov r7, r3
00817c60  ac 99 02 eb                                      bl #0x8be318
00817c64  07 10 a0 e1                                      mov r1, r7
00817c68  00 60 a0 e1                                      mov r6, r0
00817c6c  08 00 80 e2                                      add r0, r0, #8
00817c70  9f dc ff eb                                      bl #0x80eef4
00817c74  00 30 95 e5                                      ldr r3, [r5]
00817c78  04 00 a0 e1                                      mov r0, r4
00817c7c  04 20 93 e5                                      ldr r2, [r3, #4]
00817c80  00 30 86 e5                                      str r3, [r6]
00817c84  04 20 86 e5                                      str r2, [r6, #4]
00817c88  00 60 82 e5                                      str r6, [r2]
00817c8c  04 60 83 e5                                      str r6, [r3, #4]
00817c90  00 60 84 e5                                      str r6, [r4]
00817c94  0c d0 8d e2                                      add sp, sp, #0xc
00817c98  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
