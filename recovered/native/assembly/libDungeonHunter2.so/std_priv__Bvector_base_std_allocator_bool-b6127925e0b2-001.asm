; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003b450c, declared_size=48, range_size=48, mode=arm
; class-group: std::priv::_Bvector_base<std::allocator<bool> >
; alias: _ZNSt4priv13_Bvector_baseISaIbEE13_M_deallocateEv
; demangled: std::priv::_Bvector_base<std::allocator<bool> >::_M_deallocate()
; decoder-mode: arm
003b450c  00 30 90 e5                                      ldr r3, [r0]
003b4510  00 00 53 e3                                      cmp r3, #0
003b4514  1e ff 2f 01                                      bxeq lr
003b4518  10 10 90 e5                                      ldr r1, [r0, #0x10]
003b451c  01 10 63 e0                                      rsb r1, r3, r1
003b4520  03 10 c1 e3                                      bic r1, r1, #3
003b4524  80 00 51 e3                                      cmp r1, #0x80
003b4528  01 00 00 8a                                      bhi #0x3b4534
003b452c  03 00 a0 e1                                      mov r0, r3
003b4530  72 52 0d ea                                      b #0x708f00
003b4534  03 00 a0 e1                                      mov r0, r3
003b4538  c0 6f fd ea                                      b #0x310440
