; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329844, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<AchievementMsg, std::allocator<AchievementMsg> >
; alias: _ZNSt4priv11_Deque_baseI14AchievementMsgSaIS1_EED2Ev
; demangled: std::priv::_Deque_base<AchievementMsg, std::allocator<AchievementMsg> >::~_Deque_base()
; decoder-mode: arm
00329844  70 40 2d e9                                      push {r4, r5, r6, lr}
00329848  00 60 a0 e1                                      mov r6, r0
0032984c  20 00 90 e5                                      ldr r0, [r0, #0x20]
00329850  00 00 50 e3                                      cmp r0, #0
00329854  14 00 00 0a                                      beq #0x3298ac
00329858  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
0032985c  0c 40 96 e5                                      ldr r4, [r6, #0xc]
00329860  04 50 85 e2                                      add r5, r5, #4
00329864  05 00 54 e1                                      cmp r4, r5
00329868  14 00 00 2a                                      bhs #0x3298c0
0032986c  00 00 94 e5                                      ldr r0, [r4]
00329870  78 10 a0 e3                                      mov r1, #0x78
00329874  04 40 84 e2                                      add r4, r4, #4
00329878  00 00 50 e3                                      cmp r0, #0
0032987c  00 00 00 0a                                      beq #0x329884
00329880  9e 7d 0f eb                                      bl #0x708f00
00329884  04 00 55 e1                                      cmp r5, r4
00329888  f7 ff ff 8a                                      bhi #0x32986c
0032988c  20 00 96 e5                                      ldr r0, [r6, #0x20]
00329890  24 10 96 e5                                      ldr r1, [r6, #0x24]
00329894  00 00 50 e3                                      cmp r0, #0
00329898  03 00 00 0a                                      beq #0x3298ac
0032989c  01 11 a0 e1                                      lsl r1, r1, #2
003298a0  80 00 51 e3                                      cmp r1, #0x80
003298a4  02 00 00 8a                                      bhi #0x3298b4
003298a8  94 7d 0f eb                                      bl #0x708f00
003298ac  06 00 a0 e1                                      mov r0, r6
003298b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003298b4  e1 9a ff eb                                      bl #0x310440
003298b8  06 00 a0 e1                                      mov r0, r6
003298bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
003298c0  24 10 96 e5                                      ldr r1, [r6, #0x24]
003298c4  f4 ff ff ea                                      b #0x32989c
