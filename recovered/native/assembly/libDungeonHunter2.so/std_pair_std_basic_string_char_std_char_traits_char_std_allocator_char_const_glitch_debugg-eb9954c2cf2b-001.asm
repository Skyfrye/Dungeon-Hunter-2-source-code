; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040486c, declared_size=40, range_size=40, mode=arm
; class-group: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>
; alias: _ZNSt4pairIKSsN6glitch8debugger10CTweakable8SMappingEED1Ev
; demangled: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>::~pair()
; decoder-mode: arm
0040486c  10 40 2d e9                                      push {r4, lr}
00404870  00 40 a0 e1                                      mov r4, r0
00404874  38 00 80 e2                                      add r0, r0, #0x38
00404878  4b 3c fc eb                                      bl #0x3139ac
0040487c  20 00 84 e2                                      add r0, r4, #0x20
00404880  49 3c fc eb                                      bl #0x3139ac
00404884  04 00 a0 e1                                      mov r0, r4
00404888  47 3c fc eb                                      bl #0x3139ac
0040488c  04 00 a0 e1                                      mov r0, r4
00404890  10 80 bd e8                                      pop {r4, pc}
