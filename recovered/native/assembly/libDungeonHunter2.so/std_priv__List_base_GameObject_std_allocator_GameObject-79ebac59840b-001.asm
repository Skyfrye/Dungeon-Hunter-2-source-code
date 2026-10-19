; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00345914, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_List_base<GameObject*, std::allocator<GameObject*> >
; alias: _ZNSt4priv10_List_baseIP10GameObjectSaIS2_EE5clearEv
; demangled: std::priv::_List_base<GameObject*, std::allocator<GameObject*> >::clear()
; decoder-mode: arm
00345914  70 40 2d e9                                      push {r4, r5, r6, lr}
00345918  00 50 a0 e1                                      mov r5, r0
0034591c  00 00 90 e5                                      ldr r0, [r0]
00345920  05 00 50 e1                                      cmp r0, r5
00345924  01 00 00 1a                                      bne #0x345930
00345928  06 00 00 ea                                      b #0x345948
0034592c  04 00 a0 e1                                      mov r0, r4
00345930  00 40 90 e5                                      ldr r4, [r0]
00345934  0c 10 a0 e3                                      mov r1, #0xc
00345938  70 0d 0f eb                                      bl #0x708f00
0034593c  05 00 54 e1                                      cmp r4, r5
00345940  f9 ff ff 1a                                      bne #0x34592c
00345944  05 00 a0 e1                                      mov r0, r5
00345948  04 00 85 e5                                      str r0, [r5, #4]
0034594c  00 00 85 e5                                      str r0, [r5]
00345950  70 80 bd e8                                      pop {r4, r5, r6, pc}
