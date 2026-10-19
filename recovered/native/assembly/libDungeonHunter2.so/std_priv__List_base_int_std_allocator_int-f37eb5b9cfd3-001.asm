; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00345a4c, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_List_base<int, std::allocator<int> >
; alias: _ZNSt4priv10_List_baseIiSaIiEE5clearEv
; demangled: std::priv::_List_base<int, std::allocator<int> >::clear()
; decoder-mode: arm
00345a4c  70 40 2d e9                                      push {r4, r5, r6, lr}
00345a50  00 50 a0 e1                                      mov r5, r0
00345a54  00 00 90 e5                                      ldr r0, [r0]
00345a58  05 00 50 e1                                      cmp r0, r5
00345a5c  01 00 00 1a                                      bne #0x345a68
00345a60  06 00 00 ea                                      b #0x345a80
00345a64  04 00 a0 e1                                      mov r0, r4
00345a68  00 40 90 e5                                      ldr r4, [r0]
00345a6c  0c 10 a0 e3                                      mov r1, #0xc
00345a70  22 0d 0f eb                                      bl #0x708f00
00345a74  05 00 54 e1                                      cmp r4, r5
00345a78  f9 ff ff 1a                                      bne #0x345a64
00345a7c  05 00 a0 e1                                      mov r0, r5
00345a80  04 00 85 e5                                      str r0, [r5, #4]
00345a84  00 00 85 e5                                      str r0, [r5]
00345a88  70 80 bd e8                                      pop {r4, r5, r6, pc}
