; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313994, declared_size=24, range_size=24, mode=arm
; class-group: std::__node_alloc
; alias: _ZNSt12__node_alloc8allocateERj
; demangled: std::__node_alloc::allocate(unsigned int&)
; decoder-mode: arm
00313994  00 30 90 e5                                      ldr r3, [r0]
00313998  80 00 53 e3                                      cmp r3, #0x80
0031399c  00 00 00 8a                                      bhi #0x3139a4
003139a0  46 d5 0f ea                                      b #0x708ec0
003139a4  03 00 a0 e1                                      mov r0, r3
003139a8  a9 f2 ff ea                                      b #0x310454

; FUNCTION 0x0031bb44, declared_size=16, range_size=16, mode=arm
; class-group: std::__node_alloc
; alias: _ZNSt12__node_alloc10deallocateEPvj
; demangled: std::__node_alloc::deallocate(void*, unsigned int)
; decoder-mode: arm
0031bb44  80 00 51 e3                                      cmp r1, #0x80
0031bb48  00 00 00 8a                                      bhi #0x31bb50
0031bb4c  eb b4 0f ea                                      b #0x708f00
0031bb50  3a d2 ff ea                                      b #0x310440

; FUNCTION 0x008b625c, declared_size=8, range_size=8, mode=thumb
; class-group: std::__node_alloc
; alias: _ZNSt12__node_alloc13_M_deallocateEPvj
; demangled: std::__node_alloc::_M_deallocate(void*, unsigned int)
; decoder-mode: thumb
008b625c  10 b5                                            push {r4, lr}
008b625e  ff f7 e1 ff                                      bl #0x8b6224
008b6262  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b63f4, declared_size=8, range_size=8, mode=thumb
; class-group: std::__node_alloc
; alias: _ZNSt12__node_alloc11_M_allocateERj
; demangled: std::__node_alloc::_M_allocate(unsigned int&)
; decoder-mode: thumb
008b63f4  10 b5                                            push {r4, lr}
008b63f6  ff f7 cf ff                                      bl #0x8b6398
008b63fa  10 bd                                            pop {r4, pc}
