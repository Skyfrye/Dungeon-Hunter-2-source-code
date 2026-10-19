; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000ade08, declared_size=48, range_size=48, mode=thumb
; class-group: std::range_error
; alias: _ZNSt11range_errorD0Ev
; demangled: std::range_error::~range_error()
; decoder-mode: thumb
000ade08  d0 b5                                            push {r4, r6, r7, lr}
000ade0a  02 af                                            add r7, sp, #8
000ade0c  04 46                                            mov r4, r0
000ade0e  09 48                                            ldr r0, [pc, #0x24]
000ade10  78 44                                            add r0, pc
000ade12  01 68                                            ldr r1, [r0]
000ade14  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000ade18  08 31                                            adds r1, #8
000ade1a  21 60                                            str r1, [r4]
000ade1c  21 1d                                            adds r1, r4, #4
000ade1e  88 42                                            cmp r0, r1
000ade20  18 bf                                            it ne
000ade22  84 f7 0c e9                                      blxne #0x3203c
000ade26  20 46                                            mov r0, r4
000ade28  00 f0 7a ff                                      bl #0xaed20
000ade2c  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000ade30  02 f0 92 bf                                      b.w #0xb0d58
000ade34  64 ec 02 00                                      stcl p0, c0, [r4], #-8
