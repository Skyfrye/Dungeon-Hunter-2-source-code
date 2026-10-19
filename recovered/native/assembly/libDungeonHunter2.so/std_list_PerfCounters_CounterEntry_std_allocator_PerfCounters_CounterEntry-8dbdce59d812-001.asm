; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00312524, declared_size=96, range_size=96, mode=arm
; class-group: std::list<PerfCounters::CounterEntry, std::allocator<PerfCounters::CounterEntry> >
; alias: _ZNSt4listIN12PerfCounters12CounterEntryESaIS1_EE6insertENSt4priv14_List_iteratorIS1_St16_Nonconst_traitsIS1_EEERKS1_
; demangled: std::list<PerfCounters::CounterEntry, std::allocator<PerfCounters::CounterEntry> >::insert(std::priv::_List_iterator<PerfCounters::CounterEntry, std::_Nonconst_traits<PerfCounters::CounterEntry> >, PerfCounters::CounterEntry const&)
; decoder-mode: arm
00312524  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00312528  0c d0 4d e2                                      sub sp, sp, #0xc
0031252c  08 10 8d e2                                      add r1, sp, #8
00312530  38 c0 a0 e3                                      mov ip, #0x38
00312534  04 c0 21 e5                                      str ip, [r1, #-4]!
00312538  00 40 a0 e1                                      mov r4, r0
0031253c  01 00 a0 e1                                      mov r0, r1
00312540  02 50 a0 e1                                      mov r5, r2
00312544  03 70 a0 e1                                      mov r7, r3
00312548  5c da 0f eb                                      bl #0x708ec0
0031254c  07 10 a0 e1                                      mov r1, r7
00312550  00 60 a0 e1                                      mov r6, r0
00312554  08 00 80 e2                                      add r0, r0, #8
00312558  74 fc ff eb                                      bl #0x311730
0031255c  00 30 95 e5                                      ldr r3, [r5]
00312560  04 00 a0 e1                                      mov r0, r4
00312564  04 20 93 e5                                      ldr r2, [r3, #4]
00312568  00 30 86 e5                                      str r3, [r6]
0031256c  04 20 86 e5                                      str r2, [r6, #4]
00312570  00 60 82 e5                                      str r6, [r2]
00312574  04 60 83 e5                                      str r6, [r3, #4]
00312578  00 60 84 e5                                      str r6, [r4]
0031257c  0c d0 8d e2                                      add sp, sp, #0xc
00312580  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
