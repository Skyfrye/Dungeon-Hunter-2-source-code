; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003296d4, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<StatusMsg, std::allocator<StatusMsg> >
; alias: _ZNSt4priv11_Deque_baseI9StatusMsgSaIS1_EED2Ev
; demangled: std::priv::_Deque_base<StatusMsg, std::allocator<StatusMsg> >::~_Deque_base()
; decoder-mode: arm
003296d4  70 40 2d e9                                      push {r4, r5, r6, lr}
003296d8  00 60 a0 e1                                      mov r6, r0
003296dc  20 00 90 e5                                      ldr r0, [r0, #0x20]
003296e0  00 00 50 e3                                      cmp r0, #0
003296e4  14 00 00 0a                                      beq #0x32973c
003296e8  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
003296ec  0c 40 96 e5                                      ldr r4, [r6, #0xc]
003296f0  04 50 85 e2                                      add r5, r5, #4
003296f4  05 00 54 e1                                      cmp r4, r5
003296f8  14 00 00 2a                                      bhs #0x329750
003296fc  00 00 94 e5                                      ldr r0, [r4]
00329700  70 10 a0 e3                                      mov r1, #0x70
00329704  04 40 84 e2                                      add r4, r4, #4
00329708  00 00 50 e3                                      cmp r0, #0
0032970c  00 00 00 0a                                      beq #0x329714
00329710  fa 7d 0f eb                                      bl #0x708f00
00329714  04 00 55 e1                                      cmp r5, r4
00329718  f7 ff ff 8a                                      bhi #0x3296fc
0032971c  20 00 96 e5                                      ldr r0, [r6, #0x20]
00329720  24 10 96 e5                                      ldr r1, [r6, #0x24]
00329724  00 00 50 e3                                      cmp r0, #0
00329728  03 00 00 0a                                      beq #0x32973c
0032972c  01 11 a0 e1                                      lsl r1, r1, #2
00329730  80 00 51 e3                                      cmp r1, #0x80
00329734  02 00 00 8a                                      bhi #0x329744
00329738  f0 7d 0f eb                                      bl #0x708f00
0032973c  06 00 a0 e1                                      mov r0, r6
00329740  70 80 bd e8                                      pop {r4, r5, r6, pc}
00329744  3d 9b ff eb                                      bl #0x310440
00329748  06 00 a0 e1                                      mov r0, r6
0032974c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00329750  24 10 96 e5                                      ldr r1, [r6, #0x24]
00329754  f4 ff ff ea                                      b #0x32972c
