; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313da8, declared_size=20, range_size=20, mode=arm
; class-group: std::list<Savegame::Job, std::allocator<Savegame::Job> >
; alias: _ZNSt4listIN8Savegame3JobESaIS1_EED1Ev
; demangled: std::list<Savegame::Job, std::allocator<Savegame::Job> >::~list()
; decoder-mode: arm
00313da8  10 40 2d e9                                      push {r4, lr}
00313dac  00 40 a0 e1                                      mov r4, r0
00313db0  e9 ff ff eb                                      bl #0x313d5c
00313db4  04 00 a0 e1                                      mov r0, r4
00313db8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003140b0, declared_size=60, range_size=60, mode=arm
; class-group: std::list<Savegame::Job, std::allocator<Savegame::Job> >
; alias: _ZNSt4listIN8Savegame3JobESaIS1_EE5eraseENSt4priv14_List_iteratorIS1_St16_Nonconst_traitsIS1_EEE.clone.4
; demangled: std::list<Savegame::Job, std::allocator<Savegame::Job> >::erase(std::priv::_List_iterator<Savegame::Job, std::_Nonconst_traits<Savegame::Job> >) [clone .clone.4]
; decoder-mode: arm
003140b0  70 40 2d e9                                      push {r4, r5, r6, lr}
003140b4  00 60 91 e5                                      ldr r6, [r1]
003140b8  00 50 a0 e1                                      mov r5, r0
003140bc  00 40 96 e5                                      ldr r4, [r6]
003140c0  04 30 96 e5                                      ldr r3, [r6, #4]
003140c4  08 00 86 e2                                      add r0, r6, #8
003140c8  00 40 83 e5                                      str r4, [r3]
003140cc  04 30 84 e5                                      str r3, [r4, #4]
003140d0  ee fe ff eb                                      bl #0x313c90
003140d4  06 00 a0 e1                                      mov r0, r6
003140d8  28 10 a0 e3                                      mov r1, #0x28
003140dc  87 d3 0f eb                                      bl #0x708f00
003140e0  00 40 85 e5                                      str r4, [r5]
003140e4  05 00 a0 e1                                      mov r0, r5
003140e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
