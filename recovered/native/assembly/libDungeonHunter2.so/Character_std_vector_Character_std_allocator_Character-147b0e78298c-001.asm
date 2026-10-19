; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d5dd8, declared_size=60, range_size=60, mode=arm
; class-group: Character** std::vector<Character*, std::allocator<Character*> >
; alias: _ZNSt6vectorIP9CharacterSaIS1_EE20_M_allocate_and_copyIPS1_EES5_RjT_S7_
; demangled: Character** std::vector<Character*, std::allocator<Character*> >::_M_allocate_and_copy<Character**>(unsigned int&, Character**, Character**)
; decoder-mode: arm
003d5dd8  70 40 2d e9                                      push {r4, r5, r6, lr}
003d5ddc  08 00 80 e2                                      add r0, r0, #8
003d5de0  02 40 a0 e1                                      mov r4, r2
003d5de4  01 20 a0 e1                                      mov r2, r1
003d5de8  00 10 91 e5                                      ldr r1, [r1]
003d5dec  03 50 a0 e1                                      mov r5, r3
003d5df0  4d dc ff eb                                      bl #0x3ccf2c
003d5df4  05 00 54 e1                                      cmp r4, r5
003d5df8  00 60 a0 e1                                      mov r6, r0
003d5dfc  02 00 00 0a                                      beq #0x3d5e0c
003d5e00  04 10 a0 e1                                      mov r1, r4
003d5e04  05 20 64 e0                                      rsb r2, r4, r5
003d5e08  96 e2 fc eb                                      bl #0x30e868
003d5e0c  06 00 a0 e1                                      mov r0, r6
003d5e10  70 80 bd e8                                      pop {r4, r5, r6, pc}
