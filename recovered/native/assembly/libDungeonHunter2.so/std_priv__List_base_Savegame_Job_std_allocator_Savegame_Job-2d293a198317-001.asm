; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313d5c, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_List_base<Savegame::Job, std::allocator<Savegame::Job> >
; alias: _ZNSt4priv10_List_baseIN8Savegame3JobESaIS2_EE5clearEv
; demangled: std::priv::_List_base<Savegame::Job, std::allocator<Savegame::Job> >::clear()
; decoder-mode: arm
00313d5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00313d60  00 60 90 e5                                      ldr r6, [r0]
00313d64  00 50 a0 e1                                      mov r5, r0
00313d68  00 00 56 e1                                      cmp r6, r0
00313d6c  01 00 00 1a                                      bne #0x313d78
00313d70  09 00 00 ea                                      b #0x313d9c
00313d74  04 60 a0 e1                                      mov r6, r4
00313d78  06 00 a0 e1                                      mov r0, r6
00313d7c  08 40 90 e4                                      ldr r4, [r0], #8
00313d80  c2 ff ff eb                                      bl #0x313c90
00313d84  06 00 a0 e1                                      mov r0, r6
00313d88  28 10 a0 e3                                      mov r1, #0x28
00313d8c  5b d4 0f eb                                      bl #0x708f00
00313d90  05 00 54 e1                                      cmp r4, r5
00313d94  f6 ff ff 1a                                      bne #0x313d74
00313d98  05 60 a0 e1                                      mov r6, r5
00313d9c  04 60 85 e5                                      str r6, [r5, #4]
00313da0  00 60 85 e5                                      str r6, [r5]
00313da4  70 80 bd e8                                      pop {r4, r5, r6, pc}
