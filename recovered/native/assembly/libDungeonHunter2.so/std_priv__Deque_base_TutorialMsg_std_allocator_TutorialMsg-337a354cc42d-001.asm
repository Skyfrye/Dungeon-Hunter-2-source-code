; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003299d0, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<TutorialMsg, std::allocator<TutorialMsg> >
; alias: _ZNSt4priv11_Deque_baseI11TutorialMsgSaIS1_EED2Ev
; demangled: std::priv::_Deque_base<TutorialMsg, std::allocator<TutorialMsg> >::~_Deque_base()
; decoder-mode: arm
003299d0  70 40 2d e9                                      push {r4, r5, r6, lr}
003299d4  00 60 a0 e1                                      mov r6, r0
003299d8  20 00 90 e5                                      ldr r0, [r0, #0x20]
003299dc  00 00 50 e3                                      cmp r0, #0
003299e0  14 00 00 0a                                      beq #0x329a38
003299e4  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
003299e8  0c 40 96 e5                                      ldr r4, [r6, #0xc]
003299ec  04 50 85 e2                                      add r5, r5, #4
003299f0  05 00 54 e1                                      cmp r4, r5
003299f4  14 00 00 2a                                      bhs #0x329a4c
003299f8  00 00 94 e5                                      ldr r0, [r4]
003299fc  80 10 a0 e3                                      mov r1, #0x80
00329a00  04 40 84 e2                                      add r4, r4, #4
00329a04  00 00 50 e3                                      cmp r0, #0
00329a08  00 00 00 0a                                      beq #0x329a10
00329a0c  3b 7d 0f eb                                      bl #0x708f00
00329a10  04 00 55 e1                                      cmp r5, r4
00329a14  f7 ff ff 8a                                      bhi #0x3299f8
00329a18  20 00 96 e5                                      ldr r0, [r6, #0x20]
00329a1c  24 10 96 e5                                      ldr r1, [r6, #0x24]
00329a20  00 00 50 e3                                      cmp r0, #0
00329a24  03 00 00 0a                                      beq #0x329a38
00329a28  01 11 a0 e1                                      lsl r1, r1, #2
00329a2c  80 00 51 e3                                      cmp r1, #0x80
00329a30  02 00 00 8a                                      bhi #0x329a40
00329a34  31 7d 0f eb                                      bl #0x708f00
00329a38  06 00 a0 e1                                      mov r0, r6
00329a3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00329a40  7e 9a ff eb                                      bl #0x310440
00329a44  06 00 a0 e1                                      mov r0, r6
00329a48  70 80 bd e8                                      pop {r4, r5, r6, pc}
00329a4c  24 10 96 e5                                      ldr r1, [r6, #0x24]
00329a50  f4 ff ff ea                                      b #0x329a28
