; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004225e0, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<gameswf::rect, std::allocator<gameswf::rect> >
; alias: _ZNSt6vectorIN7gameswf4rectESaIS1_EED1Ev
; demangled: std::vector<gameswf::rect, std::allocator<gameswf::rect> >::~vector()
; decoder-mode: arm
004225e0  10 40 2d e9                                      push {r4, lr}
004225e4  00 40 a0 e1                                      mov r4, r0
004225e8  00 00 90 e5                                      ldr r0, [r0]
004225ec  00 00 50 e3                                      cmp r0, #0
004225f0  05 00 00 0a                                      beq #0x42260c
004225f4  08 10 94 e5                                      ldr r1, [r4, #8]
004225f8  01 10 60 e0                                      rsb r1, r0, r1
004225fc  0f 10 c1 e3                                      bic r1, r1, #0xf
00422600  80 00 51 e3                                      cmp r1, #0x80
00422604  02 00 00 8a                                      bhi #0x422614
00422608  3c 9a 0b eb                                      bl #0x708f00
0042260c  04 00 a0 e1                                      mov r0, r4
00422610  10 80 bd e8                                      pop {r4, pc}
00422614  89 b7 fb eb                                      bl #0x310440
00422618  04 00 a0 e1                                      mov r0, r4
0042261c  10 80 bd e8                                      pop {r4, pc}
