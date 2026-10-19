; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b6834, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<glitch::io::SStreamItrWriter, std::allocator<glitch::io::SStreamItrWriter> >
; alias: _ZNSt6vectorIN6glitch2io16SStreamItrWriterESaIS2_EED1Ev
; demangled: std::vector<glitch::io::SStreamItrWriter, std::allocator<glitch::io::SStreamItrWriter> >::~vector()
; decoder-mode: arm
006b6834  10 40 2d e9                                      push {r4, lr}
006b6838  00 40 a0 e1                                      mov r4, r0
006b683c  00 00 90 e5                                      ldr r0, [r0]
006b6840  00 00 50 e3                                      cmp r0, #0
006b6844  05 00 00 0a                                      beq #0x6b6860
006b6848  08 10 94 e5                                      ldr r1, [r4, #8]
006b684c  01 10 60 e0                                      rsb r1, r0, r1
006b6850  1f 10 c1 e3                                      bic r1, r1, #0x1f
006b6854  80 00 51 e3                                      cmp r1, #0x80
006b6858  02 00 00 8a                                      bhi #0x6b6868
006b685c  a7 49 01 eb                                      bl #0x708f00
006b6860  04 00 a0 e1                                      mov r0, r4
006b6864  10 80 bd e8                                      pop {r4, pc}
006b6868  90 5e f1 eb                                      bl #0x30e2b0
006b686c  04 00 a0 e1                                      mov r0, r4
006b6870  10 80 bd e8                                      pop {r4, pc}
