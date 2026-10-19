; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0009a504, declared_size=52, range_size=52, mode=thumb
; class-group: lower_noise_visitor
; alias: _ZN19lower_noise_visitor13handle_rvalueEPP9ir_rvalue
; demangled: lower_noise_visitor::handle_rvalue(ir_rvalue**)
; decoder-mode: thumb
0009a504  f0 b5                                            push {r4, r5, r6, r7, lr}
0009a506  03 af                                            add r7, sp, #0xc
0009a508  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0009a50c  0d 46                                            mov r5, r1
0009a50e  04 46                                            mov r4, r0
0009a510  2e 68                                            ldr r6, [r5]
0009a512  76 b1                                            cbz r6, #0x9a532
0009a514  f0 68                                            ldr r0, [r6, #0xc]
0009a516  04 28                                            cmp r0, #4
0009a518  04 bf                                            itt eq
0009a51a  b0 69                                            ldreq r0, [r6, #0x18]
0009a51c  3c 28                                            cmpeq r0, #0x3c
0009a51e  08 d1                                            bne #0x9a532
0009a520  30 46                                            mov r0, r6
0009a522  98 f7 02 eb                                      blx #0x32b28
0009a526  31 69                                            ldr r1, [r6, #0x10]
0009a528  98 f7 ee eb                                      blx #0x32d08
0009a52c  28 60                                            str r0, [r5]
0009a52e  01 20                                            movs r0, #1
0009a530  60 76                                            strb r0, [r4, #0x19]
0009a532  5d f8 04 bb                                      ldr fp, [sp], #4
0009a536  f0 bd                                            pop {r4, r5, r6, r7, pc}
