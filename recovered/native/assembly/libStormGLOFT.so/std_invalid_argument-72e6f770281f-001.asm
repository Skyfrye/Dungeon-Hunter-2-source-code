; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000add78, declared_size=48, range_size=48, mode=thumb
; class-group: std::invalid_argument
; alias: _ZNSt16invalid_argumentD0Ev
; demangled: std::invalid_argument::~invalid_argument()
; decoder-mode: thumb
000add78  d0 b5                                            push {r4, r6, r7, lr}
000add7a  02 af                                            add r7, sp, #8
000add7c  04 46                                            mov r4, r0
000add7e  09 48                                            ldr r0, [pc, #0x24]
000add80  78 44                                            add r0, pc
000add82  01 68                                            ldr r1, [r0]
000add84  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000add88  08 31                                            adds r1, #8
000add8a  21 60                                            str r1, [r4]
000add8c  21 1d                                            adds r1, r4, #4
000add8e  88 42                                            cmp r0, r1
000add90  18 bf                                            it ne
000add92  84 f7 54 e9                                      blxne #0x3203c
000add96  20 46                                            mov r0, r4
000add98  00 f0 c2 ff                                      bl #0xaed20
000add9c  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000adda0  02 f0 da bf                                      b.w #0xb0d58
000adda4  f4 ec 02 00                                      ldcl p0, c0, [r4], #8
