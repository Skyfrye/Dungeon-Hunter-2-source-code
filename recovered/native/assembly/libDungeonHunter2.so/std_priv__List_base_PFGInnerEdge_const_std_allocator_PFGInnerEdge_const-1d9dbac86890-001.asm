; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00529f4c, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_List_base<PFGInnerEdge const*, std::allocator<PFGInnerEdge const*> >
; alias: _ZNSt4priv10_List_baseIPK12PFGInnerEdgeSaIS3_EE5clearEv
; demangled: std::priv::_List_base<PFGInnerEdge const*, std::allocator<PFGInnerEdge const*> >::clear()
; decoder-mode: arm
00529f4c  70 40 2d e9                                      push {r4, r5, r6, lr}
00529f50  00 50 a0 e1                                      mov r5, r0
00529f54  00 00 90 e5                                      ldr r0, [r0]
00529f58  05 00 50 e1                                      cmp r0, r5
00529f5c  01 00 00 1a                                      bne #0x529f68
00529f60  06 00 00 ea                                      b #0x529f80
00529f64  04 00 a0 e1                                      mov r0, r4
00529f68  00 40 90 e5                                      ldr r4, [r0]
00529f6c  0c 10 a0 e3                                      mov r1, #0xc
00529f70  e2 7b 07 eb                                      bl #0x708f00
00529f74  05 00 54 e1                                      cmp r4, r5
00529f78  f9 ff ff 1a                                      bne #0x529f64
00529f7c  05 00 a0 e1                                      mov r0, r5
00529f80  04 00 85 e5                                      str r0, [r5, #4]
00529f84  00 00 85 e5                                      str r0, [r5]
00529f88  70 80 bd e8                                      pop {r4, r5, r6, pc}
