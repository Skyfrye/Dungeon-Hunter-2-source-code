; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000adda8, declared_size=48, range_size=48, mode=thumb
; class-group: std::length_error
; alias: _ZNSt12length_errorD0Ev
; demangled: std::length_error::~length_error()
; decoder-mode: thumb
000adda8  d0 b5                                            push {r4, r6, r7, lr}
000addaa  02 af                                            add r7, sp, #8
000addac  04 46                                            mov r4, r0
000addae  09 48                                            ldr r0, [pc, #0x24]
000addb0  78 44                                            add r0, pc
000addb2  01 68                                            ldr r1, [r0]
000addb4  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000addb8  08 31                                            adds r1, #8
000addba  21 60                                            str r1, [r4]
000addbc  21 1d                                            adds r1, r4, #4
000addbe  88 42                                            cmp r0, r1
000addc0  18 bf                                            it ne
000addc2  84 f7 3c e9                                      blxne #0x3203c
000addc6  20 46                                            mov r0, r4
000addc8  00 f0 aa ff                                      bl #0xaed20
000addcc  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000addd0  02 f0 c2 bf                                      b.w #0xb0d58
000addd4  c4 ec 02 00                                      stcl p0, c0, [r4], {2}
