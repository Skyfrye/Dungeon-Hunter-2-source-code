; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031150c, declared_size=184, range_size=184, mode=arm
; class-group: std::priv::_List_base<PerfCounters::CounterEntry, std::allocator<PerfCounters::CounterEntry> >
; alias: _ZNSt4priv10_List_baseIN12PerfCounters12CounterEntryESaIS2_EE5clearEv
; demangled: std::priv::_List_base<PerfCounters::CounterEntry, std::allocator<PerfCounters::CounterEntry> >::clear()
; decoder-mode: arm
0031150c  70 40 2d e9                                      push {r4, r5, r6, lr}
00311510  00 40 90 e5                                      ldr r4, [r0]
00311514  00 60 a0 e1                                      mov r6, r0
00311518  00 00 54 e1                                      cmp r4, r0
0031151c  12 00 00 1a                                      bne #0x31156c
00311520  24 00 00 ea                                      b #0x3115b8
00311524  75 de 0f eb                                      bl #0x708f00
00311528  08 30 84 e2                                      add r3, r4, #8
0031152c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00311530  03 00 50 e1                                      cmp r0, r3
00311534  06 00 00 0a                                      beq #0x311554
00311538  00 00 50 e3                                      cmp r0, #0
0031153c  04 00 00 0a                                      beq #0x311554
00311540  00 10 93 e5                                      ldr r1, [r3]
00311544  01 10 60 e0                                      rsb r1, r0, r1
00311548  80 00 51 e3                                      cmp r1, #0x80
0031154c  12 00 00 8a                                      bhi #0x31159c
00311550  6a de 0f eb                                      bl #0x708f00
00311554  04 00 a0 e1                                      mov r0, r4
00311558  38 10 a0 e3                                      mov r1, #0x38
0031155c  67 de 0f eb                                      bl #0x708f00
00311560  06 00 55 e1                                      cmp r5, r6
00311564  12 00 00 0a                                      beq #0x3115b4
00311568  05 40 a0 e1                                      mov r4, r5
0031156c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00311570  04 30 a0 e1                                      mov r3, r4
00311574  2c 50 93 e4                                      ldr r5, [r3], #0x2c
00311578  00 00 50 e3                                      cmp r0, #0
0031157c  e9 ff ff 0a                                      beq #0x311528
00311580  08 10 93 e5                                      ldr r1, [r3, #8]
00311584  01 10 60 e0                                      rsb r1, r0, r1
00311588  03 10 c1 e3                                      bic r1, r1, #3
0031158c  80 00 51 e3                                      cmp r1, #0x80
00311590  e3 ff ff 9a                                      bls #0x311524
00311594  a9 fb ff eb                                      bl #0x310440
00311598  e2 ff ff ea                                      b #0x311528
0031159c  a7 fb ff eb                                      bl #0x310440
003115a0  04 00 a0 e1                                      mov r0, r4
003115a4  38 10 a0 e3                                      mov r1, #0x38
003115a8  54 de 0f eb                                      bl #0x708f00
003115ac  06 00 55 e1                                      cmp r5, r6
003115b0  ec ff ff 1a                                      bne #0x311568
003115b4  06 40 a0 e1                                      mov r4, r6
003115b8  04 40 86 e5                                      str r4, [r6, #4]
003115bc  00 40 86 e5                                      str r4, [r6]
003115c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
