; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033a850, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<StateMachine::StateInfo, std::allocator<StateMachine::StateInfo> >
; alias: _ZNSt6vectorIN12StateMachine9StateInfoESaIS1_EED1Ev
; demangled: std::vector<StateMachine::StateInfo, std::allocator<StateMachine::StateInfo> >::~vector()
; decoder-mode: arm
0033a850  10 40 2d e9                                      push {r4, lr}
0033a854  00 40 a0 e1                                      mov r4, r0
0033a858  00 00 90 e5                                      ldr r0, [r0]
0033a85c  00 00 50 e3                                      cmp r0, #0
0033a860  05 00 00 0a                                      beq #0x33a87c
0033a864  08 10 94 e5                                      ldr r1, [r4, #8]
0033a868  01 10 60 e0                                      rsb r1, r0, r1
0033a86c  07 10 c1 e3                                      bic r1, r1, #7
0033a870  80 00 51 e3                                      cmp r1, #0x80
0033a874  02 00 00 8a                                      bhi #0x33a884
0033a878  a0 39 0f eb                                      bl #0x708f00
0033a87c  04 00 a0 e1                                      mov r0, r4
0033a880  10 80 bd e8                                      pop {r4, pc}
0033a884  ed 56 ff eb                                      bl #0x310440
0033a888  04 00 a0 e1                                      mov r0, r4
0033a88c  10 80 bd e8                                      pop {r4, pc}
