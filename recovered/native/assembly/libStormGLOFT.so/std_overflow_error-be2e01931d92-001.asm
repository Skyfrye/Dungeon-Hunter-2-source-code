; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000ade38, declared_size=48, range_size=48, mode=thumb
; class-group: std::overflow_error
; alias: _ZNSt14overflow_errorD0Ev
; demangled: std::overflow_error::~overflow_error()
; decoder-mode: thumb
000ade38  d0 b5                                            push {r4, r6, r7, lr}
000ade3a  02 af                                            add r7, sp, #8
000ade3c  04 46                                            mov r4, r0
000ade3e  09 48                                            ldr r0, [pc, #0x24]
000ade40  78 44                                            add r0, pc
000ade42  01 68                                            ldr r1, [r0]
000ade44  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000ade48  08 31                                            adds r1, #8
000ade4a  21 60                                            str r1, [r4]
000ade4c  21 1d                                            adds r1, r4, #4
000ade4e  88 42                                            cmp r0, r1
000ade50  18 bf                                            it ne
000ade52  84 f7 f4 e8                                      blxne #0x3203c
000ade56  20 46                                            mov r0, r4
000ade58  00 f0 62 ff                                      bl #0xaed20
000ade5c  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000ade60  02 f0 7a bf                                      b.w #0xb0d58
000ade64  34 ec 02 00                                      ldc p0, c0, [r4], #-8
