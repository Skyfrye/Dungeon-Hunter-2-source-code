; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00802338, declared_size=52, range_size=52, mode=arm
; class-group: std::map<unsigned int, unsigned int, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, unsigned int> > >
; alias: _ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEED1Ev
; demangled: std::map<unsigned int, unsigned int, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, unsigned int> > >::~map()
; decoder-mode: arm
00802338  10 40 2d e9                                      push {r4, lr}
0080233c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00802340  00 40 a0 e1                                      mov r4, r0
00802344  00 00 53 e3                                      cmp r3, #0
00802348  05 00 00 0a                                      beq #0x802364
0080234c  04 10 90 e5                                      ldr r1, [r0, #4]
00802350  ea ff ff eb                                      bl #0x802300
00802354  00 30 a0 e3                                      mov r3, #0
00802358  10 30 84 e5                                      str r3, [r4, #0x10]
0080235c  18 00 84 e9                                      stmib r4, {r3, r4}
00802360  0c 40 84 e5                                      str r4, [r4, #0xc]
00802364  04 00 a0 e1                                      mov r0, r4
00802368  10 80 bd e8                                      pop {r4, pc}
