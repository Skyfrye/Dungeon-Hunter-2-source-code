; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004859b0, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<rnd::RPElem, std::allocator<rnd::RPElem> >
; alias: _ZNSt6vectorIN3rnd6RPElemESaIS1_EED1Ev
; demangled: std::vector<rnd::RPElem, std::allocator<rnd::RPElem> >::~vector()
; decoder-mode: arm
004859b0  10 40 2d e9                                      push {r4, lr}
004859b4  00 40 a0 e1                                      mov r4, r0
004859b8  00 00 90 e5                                      ldr r0, [r0]
004859bc  00 00 50 e3                                      cmp r0, #0
004859c0  0c 00 00 0a                                      beq #0x4859f8
004859c4  08 30 94 e5                                      ldr r3, [r4, #8]
004859c8  03 30 60 e0                                      rsb r3, r0, r3
004859cc  c3 31 a0 e1                                      asr r3, r3, #3
004859d0  03 11 83 e0                                      add r1, r3, r3, lsl #2
004859d4  01 12 81 e0                                      add r1, r1, r1, lsl #4
004859d8  01 14 81 e0                                      add r1, r1, r1, lsl #8
004859dc  01 18 81 e0                                      add r1, r1, r1, lsl #16
004859e0  81 30 83 e0                                      add r3, r3, r1, lsl #1
004859e4  18 10 a0 e3                                      mov r1, #0x18
004859e8  91 03 01 e0                                      mul r1, r1, r3
004859ec  80 00 51 e3                                      cmp r1, #0x80
004859f0  02 00 00 8a                                      bhi #0x485a00
004859f4  41 0d 0a eb                                      bl #0x708f00
004859f8  04 00 a0 e1                                      mov r0, r4
004859fc  10 80 bd e8                                      pop {r4, pc}
00485a00  8e 2a fa eb                                      bl #0x310440
00485a04  04 00 a0 e1                                      mov r0, r4
00485a08  10 80 bd e8                                      pop {r4, pc}
