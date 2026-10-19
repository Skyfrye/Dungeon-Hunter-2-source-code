; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003710e0, declared_size=60, range_size=60, mode=arm
; class-group: int* std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPKiEEPiRjT_S7_
; demangled: int* std::vector<int, std::allocator<int> >::_M_allocate_and_copy<int const*>(unsigned int&, int const*, int const*)
; decoder-mode: arm
003710e0  70 40 2d e9                                      push {r4, r5, r6, lr}
003710e4  08 00 80 e2                                      add r0, r0, #8
003710e8  02 40 a0 e1                                      mov r4, r2
003710ec  01 20 a0 e1                                      mov r2, r1
003710f0  00 10 91 e5                                      ldr r1, [r1]
003710f4  03 50 a0 e1                                      mov r5, r3
003710f8  17 bb ff eb                                      bl #0x35fd5c
003710fc  05 00 54 e1                                      cmp r4, r5
00371100  00 60 a0 e1                                      mov r6, r0
00371104  02 00 00 0a                                      beq #0x371114
00371108  04 10 a0 e1                                      mov r1, r4
0037110c  05 20 64 e0                                      rsb r2, r4, r5
00371110  d4 75 fe eb                                      bl #0x30e868
00371114  06 00 a0 e1                                      mov r0, r6
00371118  70 80 bd e8                                      pop {r4, r5, r6, pc}
