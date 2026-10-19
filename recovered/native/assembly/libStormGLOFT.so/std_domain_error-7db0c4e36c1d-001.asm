; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000add48, declared_size=48, range_size=48, mode=thumb
; class-group: std::domain_error
; alias: _ZNSt12domain_errorD0Ev
; demangled: std::domain_error::~domain_error()
; decoder-mode: thumb
000add48  d0 b5                                            push {r4, r6, r7, lr}
000add4a  02 af                                            add r7, sp, #8
000add4c  04 46                                            mov r4, r0
000add4e  09 48                                            ldr r0, [pc, #0x24]
000add50  78 44                                            add r0, pc
000add52  01 68                                            ldr r1, [r0]
000add54  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000add58  08 31                                            adds r1, #8
000add5a  21 60                                            str r1, [r4]
000add5c  21 1d                                            adds r1, r4, #4
000add5e  88 42                                            cmp r0, r1
000add60  18 bf                                            it ne
000add62  84 f7 6c e9                                      blxne #0x3203c
000add66  20 46                                            mov r0, r4
000add68  00 f0 da ff                                      bl #0xaed20
000add6c  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000add70  02 f0 f2 bf                                      b.w #0xb0d58
000add74  24 ed 02 00                                      stc p0, c0, [r4, #-8]!
