; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329d8c, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<CharMenuTutorialMsg, std::allocator<CharMenuTutorialMsg> >
; alias: _ZNSt4priv11_Deque_baseI19CharMenuTutorialMsgSaIS1_EED2Ev
; demangled: std::priv::_Deque_base<CharMenuTutorialMsg, std::allocator<CharMenuTutorialMsg> >::~_Deque_base()
; decoder-mode: arm
00329d8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00329d90  00 60 a0 e1                                      mov r6, r0
00329d94  20 00 90 e5                                      ldr r0, [r0, #0x20]
00329d98  00 00 50 e3                                      cmp r0, #0
00329d9c  14 00 00 0a                                      beq #0x329df4
00329da0  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
00329da4  0c 40 96 e5                                      ldr r4, [r6, #0xc]
00329da8  04 50 85 e2                                      add r5, r5, #4
00329dac  05 00 54 e1                                      cmp r4, r5
00329db0  14 00 00 2a                                      bhs #0x329e08
00329db4  00 00 94 e5                                      ldr r0, [r4]
00329db8  68 10 a0 e3                                      mov r1, #0x68
00329dbc  04 40 84 e2                                      add r4, r4, #4
00329dc0  00 00 50 e3                                      cmp r0, #0
00329dc4  00 00 00 0a                                      beq #0x329dcc
00329dc8  4c 7c 0f eb                                      bl #0x708f00
00329dcc  04 00 55 e1                                      cmp r5, r4
00329dd0  f7 ff ff 8a                                      bhi #0x329db4
00329dd4  20 00 96 e5                                      ldr r0, [r6, #0x20]
00329dd8  24 10 96 e5                                      ldr r1, [r6, #0x24]
00329ddc  00 00 50 e3                                      cmp r0, #0
00329de0  03 00 00 0a                                      beq #0x329df4
00329de4  01 11 a0 e1                                      lsl r1, r1, #2
00329de8  80 00 51 e3                                      cmp r1, #0x80
00329dec  02 00 00 8a                                      bhi #0x329dfc
00329df0  42 7c 0f eb                                      bl #0x708f00
00329df4  06 00 a0 e1                                      mov r0, r6
00329df8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00329dfc  8f 99 ff eb                                      bl #0x310440
00329e00  06 00 a0 e1                                      mov r0, r6
00329e04  70 80 bd e8                                      pop {r4, r5, r6, pc}
00329e08  24 10 96 e5                                      ldr r1, [r6, #0x24]
00329e0c  f4 ff ff ea                                      b #0x329de4
