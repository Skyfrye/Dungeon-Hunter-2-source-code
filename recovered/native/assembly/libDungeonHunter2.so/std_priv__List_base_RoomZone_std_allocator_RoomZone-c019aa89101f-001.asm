; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004542e8, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_List_base<RoomZone*, std::allocator<RoomZone*> >
; alias: _ZNSt4priv10_List_baseIP8RoomZoneSaIS2_EE5clearEv
; demangled: std::priv::_List_base<RoomZone*, std::allocator<RoomZone*> >::clear()
; decoder-mode: arm
004542e8  70 40 2d e9                                      push {r4, r5, r6, lr}
004542ec  00 50 a0 e1                                      mov r5, r0
004542f0  00 00 90 e5                                      ldr r0, [r0]
004542f4  05 00 50 e1                                      cmp r0, r5
004542f8  01 00 00 1a                                      bne #0x454304
004542fc  06 00 00 ea                                      b #0x45431c
00454300  04 00 a0 e1                                      mov r0, r4
00454304  00 40 90 e5                                      ldr r4, [r0]
00454308  0c 10 a0 e3                                      mov r1, #0xc
0045430c  fb d2 0a eb                                      bl #0x708f00
00454310  05 00 54 e1                                      cmp r4, r5
00454314  f9 ff ff 1a                                      bne #0x454300
00454318  05 00 a0 e1                                      mov r0, r5
0045431c  04 00 85 e5                                      str r0, [r5, #4]
00454320  00 00 85 e5                                      str r0, [r5]
00454324  70 80 bd e8                                      pop {r4, r5, r6, pc}
