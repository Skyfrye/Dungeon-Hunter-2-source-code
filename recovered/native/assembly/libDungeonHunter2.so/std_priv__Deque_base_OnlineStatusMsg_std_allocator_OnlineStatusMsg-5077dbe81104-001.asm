; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329b7c, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<OnlineStatusMsg, std::allocator<OnlineStatusMsg> >
; alias: _ZNSt4priv11_Deque_baseI15OnlineStatusMsgSaIS1_EED2Ev
; demangled: std::priv::_Deque_base<OnlineStatusMsg, std::allocator<OnlineStatusMsg> >::~_Deque_base()
; decoder-mode: arm
00329b7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00329b80  00 60 a0 e1                                      mov r6, r0
00329b84  20 00 90 e5                                      ldr r0, [r0, #0x20]
00329b88  00 00 50 e3                                      cmp r0, #0
00329b8c  14 00 00 0a                                      beq #0x329be4
00329b90  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
00329b94  0c 40 96 e5                                      ldr r4, [r6, #0xc]
00329b98  04 50 85 e2                                      add r5, r5, #4
00329b9c  05 00 54 e1                                      cmp r4, r5
00329ba0  14 00 00 2a                                      bhs #0x329bf8
00329ba4  00 00 94 e5                                      ldr r0, [r4]
00329ba8  70 10 a0 e3                                      mov r1, #0x70
00329bac  04 40 84 e2                                      add r4, r4, #4
00329bb0  00 00 50 e3                                      cmp r0, #0
00329bb4  00 00 00 0a                                      beq #0x329bbc
00329bb8  d0 7c 0f eb                                      bl #0x708f00
00329bbc  04 00 55 e1                                      cmp r5, r4
00329bc0  f7 ff ff 8a                                      bhi #0x329ba4
00329bc4  20 00 96 e5                                      ldr r0, [r6, #0x20]
00329bc8  24 10 96 e5                                      ldr r1, [r6, #0x24]
00329bcc  00 00 50 e3                                      cmp r0, #0
00329bd0  03 00 00 0a                                      beq #0x329be4
00329bd4  01 11 a0 e1                                      lsl r1, r1, #2
00329bd8  80 00 51 e3                                      cmp r1, #0x80
00329bdc  02 00 00 8a                                      bhi #0x329bec
00329be0  c6 7c 0f eb                                      bl #0x708f00
00329be4  06 00 a0 e1                                      mov r0, r6
00329be8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00329bec  13 9a ff eb                                      bl #0x310440
00329bf0  06 00 a0 e1                                      mov r0, r6
00329bf4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00329bf8  24 10 96 e5                                      ldr r1, [r6, #0x24]
00329bfc  f4 ff ff ea                                      b #0x329bd4
