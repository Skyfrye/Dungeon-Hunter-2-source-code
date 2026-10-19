; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034526c, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_List_base<ObjectBase*, std::allocator<ObjectBase*> >
; alias: _ZNSt4priv10_List_baseIP10ObjectBaseSaIS2_EE5clearEv
; demangled: std::priv::_List_base<ObjectBase*, std::allocator<ObjectBase*> >::clear()
; decoder-mode: arm
0034526c  70 40 2d e9                                      push {r4, r5, r6, lr}
00345270  00 50 a0 e1                                      mov r5, r0
00345274  00 00 90 e5                                      ldr r0, [r0]
00345278  05 00 50 e1                                      cmp r0, r5
0034527c  01 00 00 1a                                      bne #0x345288
00345280  06 00 00 ea                                      b #0x3452a0
00345284  04 00 a0 e1                                      mov r0, r4
00345288  00 40 90 e5                                      ldr r4, [r0]
0034528c  0c 10 a0 e3                                      mov r1, #0xc
00345290  1a 0f 0f eb                                      bl #0x708f00
00345294  05 00 54 e1                                      cmp r4, r5
00345298  f9 ff ff 1a                                      bne #0x345284
0034529c  05 00 a0 e1                                      mov r0, r5
003452a0  04 00 85 e5                                      str r0, [r5, #4]
003452a4  00 00 85 e5                                      str r0, [r5]
003452a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
