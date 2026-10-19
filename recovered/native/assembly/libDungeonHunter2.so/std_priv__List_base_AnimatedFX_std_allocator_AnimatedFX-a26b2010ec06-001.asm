; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493c04, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_List_base<AnimatedFX*, std::allocator<AnimatedFX*> >
; alias: _ZNSt4priv10_List_baseIP10AnimatedFXSaIS2_EE5clearEv
; demangled: std::priv::_List_base<AnimatedFX*, std::allocator<AnimatedFX*> >::clear()
; decoder-mode: arm
00493c04  70 40 2d e9                                      push {r4, r5, r6, lr}
00493c08  00 50 a0 e1                                      mov r5, r0
00493c0c  00 00 90 e5                                      ldr r0, [r0]
00493c10  05 00 50 e1                                      cmp r0, r5
00493c14  01 00 00 1a                                      bne #0x493c20
00493c18  06 00 00 ea                                      b #0x493c38
00493c1c  04 00 a0 e1                                      mov r0, r4
00493c20  00 40 90 e5                                      ldr r4, [r0]
00493c24  0c 10 a0 e3                                      mov r1, #0xc
00493c28  b4 d4 09 eb                                      bl #0x708f00
00493c2c  05 00 54 e1                                      cmp r4, r5
00493c30  f9 ff ff 1a                                      bne #0x493c1c
00493c34  05 00 a0 e1                                      mov r0, r5
00493c38  04 00 85 e5                                      str r0, [r5, #4]
00493c3c  00 00 85 e5                                      str r0, [r5]
00493c40  70 80 bd e8                                      pop {r4, r5, r6, pc}
