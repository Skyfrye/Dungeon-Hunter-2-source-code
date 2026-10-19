; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00316838, declared_size=60, range_size=60, mode=arm
; class-group: unsigned char** std::vector<unsigned char*, std::allocator<unsigned char*> >
; alias: _ZNSt6vectorIPhSaIS0_EE20_M_allocate_and_copyIPS0_EES4_RjT_S6_
; demangled: unsigned char** std::vector<unsigned char*, std::allocator<unsigned char*> >::_M_allocate_and_copy<unsigned char**>(unsigned int&, unsigned char**, unsigned char**)
; decoder-mode: arm
00316838  70 40 2d e9                                      push {r4, r5, r6, lr}
0031683c  08 00 80 e2                                      add r0, r0, #8
00316840  02 40 a0 e1                                      mov r4, r2
00316844  01 20 a0 e1                                      mov r2, r1
00316848  00 10 91 e5                                      ldr r1, [r1]
0031684c  03 50 a0 e1                                      mov r5, r3
00316850  dd ff ff eb                                      bl #0x3167cc
00316854  05 00 54 e1                                      cmp r4, r5
00316858  00 60 a0 e1                                      mov r6, r0
0031685c  02 00 00 0a                                      beq #0x31686c
00316860  04 10 a0 e1                                      mov r1, r4
00316864  05 20 64 e0                                      rsb r2, r4, r5
00316868  fe df ff eb                                      bl #0x30e868
0031686c  06 00 a0 e1                                      mov r0, r6
00316870  70 80 bd e8                                      pop {r4, r5, r6, pc}
