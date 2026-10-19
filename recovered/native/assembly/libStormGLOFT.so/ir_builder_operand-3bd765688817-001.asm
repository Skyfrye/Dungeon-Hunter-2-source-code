; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00063708, declared_size=60, range_size=60, mode=thumb
; class-group: ir_builder::operand
; alias: _ZN10ir_builder7operandC2EP11ir_variable
; demangled: ir_builder::operand::operand(ir_variable*)
; decoder-mode: thumb
00063708  f0 b5                                            push {r4, r5, r6, r7, lr}
0006370a  03 af                                            add r7, sp, #0xc
0006370c  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00063710  0c 46                                            mov r4, r1
00063712  05 46                                            mov r5, r0
00063714  20 46                                            mov r0, r4
00063716  cf f7 08 ea                                      blx #0x32b28
0006371a  1c 21                                            movs r1, #0x1c
0006371c  cf f7 00 e8                                      blx #0x32720
00063720  06 46                                            mov r6, r0
00063722  07 48                                            ldr r0, [pc, #0x1c]
00063724  78 44                                            add r0, pc
00063726  01 68                                            ldr r1, [r0]
00063728  30 46                                            mov r0, r6
0006372a  cf f7 ea e8                                      blx #0x32900
0006372e  30 46                                            mov r0, r6
00063730  21 46                                            mov r1, r4
00063732  cf f7 40 e9                                      blx #0x329b4
00063736  2e 60                                            str r6, [r5]
00063738  28 46                                            mov r0, r5
0006373a  5d f8 04 bb                                      ldr fp, [sp], #4
0006373e  f0 bd                                            pop {r4, r5, r6, r7, pc}
00063740  14 8e                                            ldrh r4, [r2, #0x30]
00063742  07 00                                            movs r7, r0
