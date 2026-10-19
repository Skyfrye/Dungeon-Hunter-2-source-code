; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000ade68, declared_size=48, range_size=48, mode=thumb
; class-group: std::underflow_error
; alias: _ZNSt15underflow_errorD0Ev
; demangled: std::underflow_error::~underflow_error()
; decoder-mode: thumb
000ade68  d0 b5                                            push {r4, r6, r7, lr}
000ade6a  02 af                                            add r7, sp, #8
000ade6c  04 46                                            mov r4, r0
000ade6e  09 48                                            ldr r0, [pc, #0x24]
000ade70  78 44                                            add r0, pc
000ade72  01 68                                            ldr r1, [r0]
000ade74  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000ade78  08 31                                            adds r1, #8
000ade7a  21 60                                            str r1, [r4]
000ade7c  21 1d                                            adds r1, r4, #4
000ade7e  88 42                                            cmp r0, r1
000ade80  18 bf                                            it ne
000ade82  84 f7 dc e8                                      blxne #0x3203c
000ade86  20 46                                            mov r0, r4
000ade88  00 f0 4a ff                                      bl #0xaed20
000ade8c  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000ade90  02 f0 62 bf                                      b.w #0xb0d58
000ade94  04 ec                                            .byte 0x04, 0xec
000ade96  02 00                                            movs r2, r0
