; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00816218, declared_size=84, range_size=84, mode=arm
; class-group: std::priv::_List_base<NetBitStream, std::allocator<NetBitStream> >
; alias: _ZNSt4priv10_List_baseI12NetBitStreamSaIS1_EE5clearEv
; demangled: std::priv::_List_base<NetBitStream, std::allocator<NetBitStream> >::clear()
; decoder-mode: arm
00816218  70 40 2d e9                                      push {r4, r5, r6, lr}
0081621c  00 60 90 e5                                      ldr r6, [r0]
00816220  00 50 a0 e1                                      mov r5, r0
00816224  00 00 56 e1                                      cmp r6, r0
00816228  01 00 00 1a                                      bne #0x816234
0081622c  0b 00 00 ea                                      b #0x816260
00816230  04 60 a0 e1                                      mov r6, r4
00816234  06 00 a0 e1                                      mov r0, r6
00816238  08 40 90 e4                                      ldr r4, [r0], #8
0081623c  08 30 96 e5                                      ldr r3, [r6, #8]
00816240  0f e0 a0 e1                                      mov lr, pc
00816244  00 f0 93 e5                                      ldr pc, [r3]
00816248  06 00 a0 e1                                      mov r0, r6
0081624c  28 10 a0 e3                                      mov r1, #0x28
00816250  38 a0 02 eb                                      bl #0x8be338
00816254  05 00 54 e1                                      cmp r4, r5
00816258  f4 ff ff 1a                                      bne #0x816230
0081625c  05 60 a0 e1                                      mov r6, r5
00816260  04 60 85 e5                                      str r6, [r5, #4]
00816264  00 60 85 e5                                      str r6, [r5]
00816268  70 80 bd e8                                      pop {r4, r5, r6, pc}
