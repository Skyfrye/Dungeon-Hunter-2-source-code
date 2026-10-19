; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0030f970, declared_size=72, range_size=72, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >::sentry
; alias: _ZNSi6sentryC1ERSib.clone.2
; demangled: std::basic_istream<char, std::char_traits<char> >::sentry::sentry(std::basic_istream<char, std::char_traits<char> >&, bool) [clone .clone.2]
; decoder-mode: arm
0030f970  10 40 2d e9                                      push {r4, lr}
0030f974  00 30 91 e5                                      ldr r3, [r1]
0030f978  00 40 a0 e1                                      mov r4, r0
0030f97c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f980  03 30 81 e0                                      add r3, r1, r3
0030f984  04 30 93 e5                                      ldr r3, [r3, #4]
0030f988  01 0a 13 e3                                      tst r3, #0x1000
0030f98c  04 00 00 1a                                      bne #0x30f9a4
0030f990  01 00 a0 e1                                      mov r0, r1
0030f994  53 ff ff eb                                      bl #0x30f6e8
0030f998  00 00 c4 e5                                      strb r0, [r4]
0030f99c  04 00 a0 e1                                      mov r0, r4
0030f9a0  10 80 bd e8                                      pop {r4, pc}
0030f9a4  01 00 a0 e1                                      mov r0, r1
0030f9a8  80 ff ff eb                                      bl #0x30f7b0
0030f9ac  00 00 c4 e5                                      strb r0, [r4]
0030f9b0  04 00 a0 e1                                      mov r0, r4
0030f9b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00313150, declared_size=72, range_size=72, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >::sentry
; alias: _ZNSi6sentryC1ERSib.clone.2
; demangled: std::basic_istream<char, std::char_traits<char> >::sentry::sentry(std::basic_istream<char, std::char_traits<char> >&, bool) [clone .clone.2]
; decoder-mode: arm
00313150  10 40 2d e9                                      push {r4, lr}
00313154  00 30 91 e5                                      ldr r3, [r1]
00313158  00 40 a0 e1                                      mov r4, r0
0031315c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00313160  03 30 81 e0                                      add r3, r1, r3
00313164  04 30 93 e5                                      ldr r3, [r3, #4]
00313168  01 0a 13 e3                                      tst r3, #0x1000
0031316c  04 00 00 1a                                      bne #0x313184
00313170  01 00 a0 e1                                      mov r0, r1
00313174  5b f1 ff eb                                      bl #0x30f6e8
00313178  00 00 c4 e5                                      strb r0, [r4]
0031317c  04 00 a0 e1                                      mov r0, r4
00313180  10 80 bd e8                                      pop {r4, pc}
00313184  01 00 a0 e1                                      mov r0, r1
00313188  88 f1 ff eb                                      bl #0x30f7b0
0031318c  00 00 c4 e5                                      strb r0, [r4]
00313190  04 00 a0 e1                                      mov r0, r4
00313194  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003a25f8, declared_size=72, range_size=72, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >::sentry
; alias: _ZNSi6sentryC1ERSib.clone.10
; demangled: std::basic_istream<char, std::char_traits<char> >::sentry::sentry(std::basic_istream<char, std::char_traits<char> >&, bool) [clone .clone.10]
; decoder-mode: arm
003a25f8  10 40 2d e9                                      push {r4, lr}
003a25fc  00 30 91 e5                                      ldr r3, [r1]
003a2600  00 40 a0 e1                                      mov r4, r0
003a2604  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003a2608  03 30 81 e0                                      add r3, r1, r3
003a260c  04 30 93 e5                                      ldr r3, [r3, #4]
003a2610  01 0a 13 e3                                      tst r3, #0x1000
003a2614  04 00 00 1a                                      bne #0x3a262c
003a2618  01 00 a0 e1                                      mov r0, r1
003a261c  31 b4 fd eb                                      bl #0x30f6e8
003a2620  00 00 c4 e5                                      strb r0, [r4]
003a2624  04 00 a0 e1                                      mov r0, r4
003a2628  10 80 bd e8                                      pop {r4, pc}
003a262c  01 00 a0 e1                                      mov r0, r1
003a2630  5e b4 fd eb                                      bl #0x30f7b0
003a2634  00 00 c4 e5                                      strb r0, [r4]
003a2638  04 00 a0 e1                                      mov r0, r4
003a263c  10 80 bd e8                                      pop {r4, pc}
