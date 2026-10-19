; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003394e0, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<SubtitleEntry*, std::allocator<SubtitleEntry*> >
; alias: _ZNSt4priv11_Deque_baseIP13SubtitleEntrySaIS2_EED2Ev
; demangled: std::priv::_Deque_base<SubtitleEntry*, std::allocator<SubtitleEntry*> >::~_Deque_base()
; decoder-mode: arm
003394e0  70 40 2d e9                                      push {r4, r5, r6, lr}
003394e4  00 60 a0 e1                                      mov r6, r0
003394e8  20 00 90 e5                                      ldr r0, [r0, #0x20]
003394ec  00 00 50 e3                                      cmp r0, #0
003394f0  14 00 00 0a                                      beq #0x339548
003394f4  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
003394f8  0c 40 96 e5                                      ldr r4, [r6, #0xc]
003394fc  04 50 85 e2                                      add r5, r5, #4
00339500  05 00 54 e1                                      cmp r4, r5
00339504  14 00 00 2a                                      bhs #0x33955c
00339508  00 00 94 e5                                      ldr r0, [r4]
0033950c  80 10 a0 e3                                      mov r1, #0x80
00339510  04 40 84 e2                                      add r4, r4, #4
00339514  00 00 50 e3                                      cmp r0, #0
00339518  00 00 00 0a                                      beq #0x339520
0033951c  77 3e 0f eb                                      bl #0x708f00
00339520  04 00 55 e1                                      cmp r5, r4
00339524  f7 ff ff 8a                                      bhi #0x339508
00339528  20 00 96 e5                                      ldr r0, [r6, #0x20]
0033952c  24 10 96 e5                                      ldr r1, [r6, #0x24]
00339530  00 00 50 e3                                      cmp r0, #0
00339534  03 00 00 0a                                      beq #0x339548
00339538  01 11 a0 e1                                      lsl r1, r1, #2
0033953c  80 00 51 e3                                      cmp r1, #0x80
00339540  02 00 00 8a                                      bhi #0x339550
00339544  6d 3e 0f eb                                      bl #0x708f00
00339548  06 00 a0 e1                                      mov r0, r6
0033954c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00339550  ba 5b ff eb                                      bl #0x310440
00339554  06 00 a0 e1                                      mov r0, r6
00339558  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033955c  24 10 96 e5                                      ldr r1, [r6, #0x24]
00339560  f4 ff ff ea                                      b #0x339538
