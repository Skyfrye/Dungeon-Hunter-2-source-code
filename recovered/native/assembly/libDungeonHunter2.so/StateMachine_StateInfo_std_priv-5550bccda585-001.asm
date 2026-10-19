; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033a1f4, declared_size=84, range_size=84, mode=arm
; class-group: StateMachine::StateInfo* std::priv
; alias: _ZNSt4priv6__copyIPN12StateMachine9StateInfoES3_iEET0_T_S5_S4_RKSt26random_access_iterator_tagPT1_
; demangled: StateMachine::StateInfo* std::priv::__copy<StateMachine::StateInfo*, StateMachine::StateInfo*, int>(StateMachine::StateInfo*, StateMachine::StateInfo*, StateMachine::StateInfo*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0033a1f4  01 10 60 e0                                      rsb r1, r0, r1
0033a1f8  c1 11 a0 e1                                      asr r1, r1, #3
0033a1fc  00 00 51 e3                                      cmp r1, #0
0033a200  30 00 2d e9                                      push {r4, r5}
0033a204  00 30 a0 e1                                      mov r3, r0
0033a208  0b 00 00 da                                      ble #0x33a23c
0033a20c  01 40 a0 e1                                      mov r4, r1
0033a210  00 c0 a0 e3                                      mov ip, #0
0033a214  0c 50 93 e7                                      ldr r5, [r3, ip]
0033a218  0c 00 83 e0                                      add r0, r3, ip
0033a21c  01 40 54 e2                                      subs r4, r4, #1
0033a220  0c 50 82 e7                                      str r5, [r2, ip]
0033a224  04 50 d0 e5                                      ldrb r5, [r0, #4]
0033a228  0c 00 82 e0                                      add r0, r2, ip
0033a22c  08 c0 8c e2                                      add ip, ip, #8
0033a230  04 50 c0 e5                                      strb r5, [r0, #4]
0033a234  f6 ff ff 1a                                      bne #0x33a214
0033a238  81 21 82 e0                                      add r2, r2, r1, lsl #3
0033a23c  02 00 a0 e1                                      mov r0, r2
0033a240  30 00 bd e8                                      pop {r4, r5}
0033a244  1e ff 2f e1                                      bx lr
