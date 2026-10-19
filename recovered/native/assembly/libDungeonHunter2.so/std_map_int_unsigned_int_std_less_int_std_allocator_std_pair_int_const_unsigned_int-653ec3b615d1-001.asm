; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a7a1c, declared_size=52, range_size=52, mode=arm
; class-group: std::map<int, unsigned int, std::less<int>, std::allocator<std::pair<int const, unsigned int> > >
; alias: _ZNSt3mapIijSt4lessIiESaISt4pairIKijEEED1Ev
; demangled: std::map<int, unsigned int, std::less<int>, std::allocator<std::pair<int const, unsigned int> > >::~map()
; decoder-mode: arm
003a7a1c  10 40 2d e9                                      push {r4, lr}
003a7a20  10 30 90 e5                                      ldr r3, [r0, #0x10]
003a7a24  00 40 a0 e1                                      mov r4, r0
003a7a28  00 00 53 e3                                      cmp r3, #0
003a7a2c  05 00 00 0a                                      beq #0x3a7a48
003a7a30  04 10 90 e5                                      ldr r1, [r0, #4]
003a7a34  ea ff ff eb                                      bl #0x3a79e4
003a7a38  00 30 a0 e3                                      mov r3, #0
003a7a3c  10 30 84 e5                                      str r3, [r4, #0x10]
003a7a40  18 00 84 e9                                      stmib r4, {r3, r4}
003a7a44  0c 40 84 e5                                      str r4, [r4, #0xc]
003a7a48  04 00 a0 e1                                      mov r0, r4
003a7a4c  10 80 bd e8                                      pop {r4, pc}
