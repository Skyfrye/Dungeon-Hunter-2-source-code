; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00345b8c, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_List_base<Character*, std::allocator<Character*> >
; alias: _ZNSt4priv10_List_baseIP9CharacterSaIS2_EE5clearEv
; demangled: std::priv::_List_base<Character*, std::allocator<Character*> >::clear()
; decoder-mode: arm
00345b8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00345b90  00 50 a0 e1                                      mov r5, r0
00345b94  00 00 90 e5                                      ldr r0, [r0]
00345b98  05 00 50 e1                                      cmp r0, r5
00345b9c  01 00 00 1a                                      bne #0x345ba8
00345ba0  06 00 00 ea                                      b #0x345bc0
00345ba4  04 00 a0 e1                                      mov r0, r4
00345ba8  00 40 90 e5                                      ldr r4, [r0]
00345bac  0c 10 a0 e3                                      mov r1, #0xc
00345bb0  d2 0c 0f eb                                      bl #0x708f00
00345bb4  05 00 54 e1                                      cmp r4, r5
00345bb8  f9 ff ff 1a                                      bne #0x345ba4
00345bbc  05 00 a0 e1                                      mov r0, r5
00345bc0  04 00 85 e5                                      str r0, [r5, #4]
00345bc4  00 00 85 e5                                      str r0, [r5]
00345bc8  70 80 bd e8                                      pop {r4, r5, r6, pc}
