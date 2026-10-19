; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d2f7c, declared_size=52, range_size=52, mode=arm
; class-group: std::map<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, CharAI::GroupInfo, std::less<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >, std::allocator<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >
; alias: _ZNSt3mapISt4pairISsiEN6CharAI9GroupInfoESt4lessIS1_ESaIS0_IKS1_S3_EEED1Ev
; demangled: std::map<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, CharAI::GroupInfo, std::less<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >, std::allocator<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >::~map()
; decoder-mode: arm
003d2f7c  10 40 2d e9                                      push {r4, lr}
003d2f80  10 30 90 e5                                      ldr r3, [r0, #0x10]
003d2f84  00 40 a0 e1                                      mov r4, r0
003d2f88  00 00 53 e3                                      cmp r3, #0
003d2f8c  05 00 00 0a                                      beq #0x3d2fa8
003d2f90  04 10 90 e5                                      ldr r1, [r0, #4]
003d2f94  e8 ff ff eb                                      bl #0x3d2f3c
003d2f98  00 30 a0 e3                                      mov r3, #0
003d2f9c  10 30 84 e5                                      str r3, [r4, #0x10]
003d2fa0  18 00 84 e9                                      stmib r4, {r3, r4}
003d2fa4  0c 40 84 e5                                      str r4, [r4, #0xc]
003d2fa8  04 00 a0 e1                                      mov r0, r4
003d2fac  10 80 bd e8                                      pop {r4, pc}
