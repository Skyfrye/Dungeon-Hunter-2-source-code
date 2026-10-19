; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003112c0, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<unsigned short, std::allocator<unsigned short> >
; alias: _ZNSt6vectorItSaItEED1Ev
; demangled: std::vector<unsigned short, std::allocator<unsigned short> >::~vector()
; decoder-mode: arm
003112c0  10 40 2d e9                                      push {r4, lr}
003112c4  00 40 a0 e1                                      mov r4, r0
003112c8  00 00 90 e5                                      ldr r0, [r0]
003112cc  00 00 50 e3                                      cmp r0, #0
003112d0  05 00 00 0a                                      beq #0x3112ec
003112d4  08 10 94 e5                                      ldr r1, [r4, #8]
003112d8  01 10 60 e0                                      rsb r1, r0, r1
003112dc  01 10 c1 e3                                      bic r1, r1, #1
003112e0  80 00 51 e3                                      cmp r1, #0x80
003112e4  02 00 00 8a                                      bhi #0x3112f4
003112e8  04 df 0f eb                                      bl #0x708f00
003112ec  04 00 a0 e1                                      mov r0, r4
003112f0  10 80 bd e8                                      pop {r4, pc}
003112f4  51 fc ff eb                                      bl #0x310440
003112f8  04 00 a0 e1                                      mov r0, r4
003112fc  10 80 bd e8                                      pop {r4, pc}
