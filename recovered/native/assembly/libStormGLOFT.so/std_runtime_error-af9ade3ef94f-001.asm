; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000add18, declared_size=48, range_size=48, mode=thumb
; class-group: std::runtime_error
; alias: _ZNSt13runtime_errorD0Ev
; demangled: std::runtime_error::~runtime_error()
; decoder-mode: thumb
000add18  d0 b5                                            push {r4, r6, r7, lr}
000add1a  02 af                                            add r7, sp, #8
000add1c  04 46                                            mov r4, r0
000add1e  09 48                                            ldr r0, [pc, #0x24]
000add20  78 44                                            add r0, pc
000add22  01 68                                            ldr r1, [r0]
000add24  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000add28  08 31                                            adds r1, #8
000add2a  21 60                                            str r1, [r4]
000add2c  21 1d                                            adds r1, r4, #4
000add2e  88 42                                            cmp r0, r1
000add30  18 bf                                            it ne
000add32  84 f7 84 e9                                      blxne #0x3203c
000add36  20 46                                            mov r0, r4
000add38  00 f0 f2 ff                                      bl #0xaed20
000add3c  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000add40  03 f0 0a b8                                      b.w #0xb0d58
000add44  54 ed 02 00                                      ldcl p0, c0, [r4, #-8]
