; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00388808, declared_size=8, range_size=8, mode=arm
; class-group: std::basic_iostream<char, std::char_traits<char> >
; alias: _ZThn8_NSdD1Ev
; demangled: non-virtual thunk to std::basic_iostream<char, std::char_traits<char> >::~basic_iostream()
; decoder-mode: arm
00388808  08 00 40 e2                                      sub r0, r0, #8
0038880c  ff ff ff ea                                      b #0x388810

; FUNCTION 0x00388810, declared_size=136, range_size=136, mode=arm
; class-group: std::basic_iostream<char, std::char_traits<char> >
; alias: _ZNSdD1Ev
; demangled: std::basic_iostream<char, std::char_traits<char> >::~basic_iostream()
; decoder-mode: arm
00388810  70 30 9f e5                                      ldr r3, [pc, #0x70]
00388814  70 20 9f e5                                      ldr r2, [pc, #0x70]
00388818  70 10 9f e5                                      ldr r1, [pc, #0x70]
0038881c  03 30 8f e0                                      add r3, pc, r3
00388820  02 20 93 e7                                      ldr r2, [r3, r2]
00388824  70 40 2d e9                                      push {r4, r5, r6, lr}
00388828  01 10 93 e7                                      ldr r1, [r3, r1]
0038882c  0c c0 92 e5                                      ldr ip, [r2, #0xc]
00388830  00 40 a0 e1                                      mov r4, r0
00388834  34 e0 81 e2                                      add lr, r1, #0x34
00388838  0c 10 81 e2                                      add r1, r1, #0xc
0038883c  0c 10 80 e4                                      str r1, [r0], #0xc
00388840  0c e0 84 e5                                      str lr, [r4, #0xc]
00388844  08 c0 84 e5                                      str ip, [r4, #8]
00388848  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0038884c  04 10 92 e5                                      ldr r1, [r2, #4]
00388850  10 60 92 e5                                      ldr r6, [r2, #0x10]
00388854  38 e0 9f e5                                      ldr lr, [pc, #0x38]
00388858  08 50 84 e2                                      add r5, r4, #8
0038885c  0c 60 85 e7                                      str r6, [r5, ip]
00388860  0e e0 93 e7                                      ldr lr, [r3, lr]
00388864  00 10 84 e5                                      str r1, [r4]
00388868  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0038886c  08 c0 92 e5                                      ldr ip, [r2, #8]
00388870  08 20 8e e2                                      add r2, lr, #8
00388874  01 c0 84 e7                                      str ip, [r4, r1]
00388878  0c 20 84 e5                                      str r2, [r4, #0xc]
0038887c  7b 01 0e eb                                      bl #0x708e70
00388880  04 00 a0 e1                                      mov r0, r4
00388884  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00388888  74 c2 60 00 dc 15 00 00 10 33 00 00 30 37 00 00  .byte 0x74, 0xc2, 0x60, 0x00, 0xdc, 0x15, 0x00, 0x00, 0x10, 0x33, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00

; FUNCTION 0x00388898, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_iostream<char, std::char_traits<char> >
; alias: _ZTv0_n12_NSdD1Ev
; demangled: virtual thunk to std::basic_iostream<char, std::char_traits<char> >::~basic_iostream()
; decoder-mode: arm
00388898  00 30 90 e5                                      ldr r3, [r0]
0038889c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003888a0  03 00 80 e0                                      add r0, r0, r3
003888a4  d9 ff ff ea                                      b #0x388810

; FUNCTION 0x003888a8, declared_size=8, range_size=8, mode=arm
; class-group: std::basic_iostream<char, std::char_traits<char> >
; alias: _ZThn8_NSdD0Ev
; demangled: non-virtual thunk to std::basic_iostream<char, std::char_traits<char> >::~basic_iostream()
; decoder-mode: arm
003888a8  08 00 40 e2                                      sub r0, r0, #8
003888ac  ff ff ff ea                                      b #0x3888b0

; FUNCTION 0x003888b0, declared_size=28, range_size=28, mode=arm
; class-group: std::basic_iostream<char, std::char_traits<char> >
; alias: _ZNSdD0Ev
; demangled: std::basic_iostream<char, std::char_traits<char> >::~basic_iostream()
; decoder-mode: arm
003888b0  10 40 2d e9                                      push {r4, lr}
003888b4  00 40 a0 e1                                      mov r4, r0
003888b8  d4 ff ff eb                                      bl #0x388810
003888bc  04 00 a0 e1                                      mov r0, r4
003888c0  de 1e fe eb                                      bl #0x310440
003888c4  04 00 a0 e1                                      mov r0, r4
003888c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003888cc, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_iostream<char, std::char_traits<char> >
; alias: _ZTv0_n12_NSdD0Ev
; demangled: virtual thunk to std::basic_iostream<char, std::char_traits<char> >::~basic_iostream()
; decoder-mode: arm
003888cc  00 30 90 e5                                      ldr r3, [r0]
003888d0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003888d4  03 00 80 e0                                      add r0, r0, r3
003888d8  f4 ff ff ea                                      b #0x3888b0
