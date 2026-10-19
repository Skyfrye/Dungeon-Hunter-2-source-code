; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00311300, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<glitch::video::SColor, std::allocator<glitch::video::SColor> >
; alias: _ZNSt6vectorIN6glitch5video6SColorESaIS2_EED1Ev
; demangled: std::vector<glitch::video::SColor, std::allocator<glitch::video::SColor> >::~vector()
; decoder-mode: arm
00311300  10 40 2d e9                                      push {r4, lr}
00311304  00 40 a0 e1                                      mov r4, r0
00311308  00 00 90 e5                                      ldr r0, [r0]
0031130c  00 00 50 e3                                      cmp r0, #0
00311310  05 00 00 0a                                      beq #0x31132c
00311314  08 10 94 e5                                      ldr r1, [r4, #8]
00311318  01 10 60 e0                                      rsb r1, r0, r1
0031131c  03 10 c1 e3                                      bic r1, r1, #3
00311320  80 00 51 e3                                      cmp r1, #0x80
00311324  02 00 00 8a                                      bhi #0x311334
00311328  f4 de 0f eb                                      bl #0x708f00
0031132c  04 00 a0 e1                                      mov r0, r4
00311330  10 80 bd e8                                      pop {r4, pc}
00311334  41 fc ff eb                                      bl #0x310440
00311338  04 00 a0 e1                                      mov r0, r4
0031133c  10 80 bd e8                                      pop {r4, pc}
