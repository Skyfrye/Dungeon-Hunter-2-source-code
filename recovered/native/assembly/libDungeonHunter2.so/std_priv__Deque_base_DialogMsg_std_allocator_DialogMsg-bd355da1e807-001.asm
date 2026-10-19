; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329f18, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<DialogMsg, std::allocator<DialogMsg> >
; alias: _ZNSt4priv11_Deque_baseI9DialogMsgSaIS1_EED2Ev
; demangled: std::priv::_Deque_base<DialogMsg, std::allocator<DialogMsg> >::~_Deque_base()
; decoder-mode: arm
00329f18  70 40 2d e9                                      push {r4, r5, r6, lr}
00329f1c  00 60 a0 e1                                      mov r6, r0
00329f20  20 00 90 e5                                      ldr r0, [r0, #0x20]
00329f24  00 00 50 e3                                      cmp r0, #0
00329f28  14 00 00 0a                                      beq #0x329f80
00329f2c  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
00329f30  0c 40 96 e5                                      ldr r4, [r6, #0xc]
00329f34  04 50 85 e2                                      add r5, r5, #4
00329f38  05 00 54 e1                                      cmp r4, r5
00329f3c  14 00 00 2a                                      bhs #0x329f94
00329f40  00 00 94 e5                                      ldr r0, [r4]
00329f44  4c 10 a0 e3                                      mov r1, #0x4c
00329f48  04 40 84 e2                                      add r4, r4, #4
00329f4c  00 00 50 e3                                      cmp r0, #0
00329f50  00 00 00 0a                                      beq #0x329f58
00329f54  e9 7b 0f eb                                      bl #0x708f00
00329f58  04 00 55 e1                                      cmp r5, r4
00329f5c  f7 ff ff 8a                                      bhi #0x329f40
00329f60  20 00 96 e5                                      ldr r0, [r6, #0x20]
00329f64  24 10 96 e5                                      ldr r1, [r6, #0x24]
00329f68  00 00 50 e3                                      cmp r0, #0
00329f6c  03 00 00 0a                                      beq #0x329f80
00329f70  01 11 a0 e1                                      lsl r1, r1, #2
00329f74  80 00 51 e3                                      cmp r1, #0x80
00329f78  02 00 00 8a                                      bhi #0x329f88
00329f7c  df 7b 0f eb                                      bl #0x708f00
00329f80  06 00 a0 e1                                      mov r0, r6
00329f84  70 80 bd e8                                      pop {r4, r5, r6, pc}
00329f88  2c 99 ff eb                                      bl #0x310440
00329f8c  06 00 a0 e1                                      mov r0, r6
00329f90  70 80 bd e8                                      pop {r4, r5, r6, pc}
00329f94  24 10 96 e5                                      ldr r1, [r6, #0x24]
00329f98  f4 ff ff ea                                      b #0x329f70
