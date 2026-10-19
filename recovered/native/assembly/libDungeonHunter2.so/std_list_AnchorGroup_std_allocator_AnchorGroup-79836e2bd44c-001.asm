; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004785f0, declared_size=68, range_size=68, mode=arm
; class-group: std::list<AnchorGroup*, std::allocator<AnchorGroup*> >
; alias: _ZNSt4listIP11AnchorGroupSaIS1_EED1Ev
; demangled: std::list<AnchorGroup*, std::allocator<AnchorGroup*> >::~list()
; decoder-mode: arm
004785f0  70 40 2d e9                                      push {r4, r5, r6, lr}
004785f4  00 50 a0 e1                                      mov r5, r0
004785f8  00 00 90 e5                                      ldr r0, [r0]
004785fc  05 00 50 e1                                      cmp r0, r5
00478600  01 00 00 1a                                      bne #0x47860c
00478604  06 00 00 ea                                      b #0x478624
00478608  04 00 a0 e1                                      mov r0, r4
0047860c  00 40 90 e5                                      ldr r4, [r0]
00478610  0c 10 a0 e3                                      mov r1, #0xc
00478614  39 42 0a eb                                      bl #0x708f00
00478618  05 00 54 e1                                      cmp r4, r5
0047861c  f9 ff ff 1a                                      bne #0x478608
00478620  05 00 a0 e1                                      mov r0, r5
00478624  04 00 85 e5                                      str r0, [r5, #4]
00478628  00 00 85 e5                                      str r0, [r5]
0047862c  05 00 a0 e1                                      mov r0, r5
00478630  70 80 bd e8                                      pop {r4, r5, r6, pc}
