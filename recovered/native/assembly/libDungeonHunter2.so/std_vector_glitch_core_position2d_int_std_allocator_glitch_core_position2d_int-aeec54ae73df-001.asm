; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00311340, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<glitch::core::position2d<int>, std::allocator<glitch::core::position2d<int> > >
; alias: _ZNSt6vectorIN6glitch4core10position2dIiEESaIS3_EED1Ev
; demangled: std::vector<glitch::core::position2d<int>, std::allocator<glitch::core::position2d<int> > >::~vector()
; decoder-mode: arm
00311340  10 40 2d e9                                      push {r4, lr}
00311344  00 40 a0 e1                                      mov r4, r0
00311348  00 00 90 e5                                      ldr r0, [r0]
0031134c  00 00 50 e3                                      cmp r0, #0
00311350  05 00 00 0a                                      beq #0x31136c
00311354  08 10 94 e5                                      ldr r1, [r4, #8]
00311358  01 10 60 e0                                      rsb r1, r0, r1
0031135c  07 10 c1 e3                                      bic r1, r1, #7
00311360  80 00 51 e3                                      cmp r1, #0x80
00311364  02 00 00 8a                                      bhi #0x311374
00311368  e4 de 0f eb                                      bl #0x708f00
0031136c  04 00 a0 e1                                      mov r0, r4
00311370  10 80 bd e8                                      pop {r4, pc}
00311374  31 fc ff eb                                      bl #0x310440
00311378  04 00 a0 e1                                      mov r0, r4
0031137c  10 80 bd e8                                      pop {r4, pc}
