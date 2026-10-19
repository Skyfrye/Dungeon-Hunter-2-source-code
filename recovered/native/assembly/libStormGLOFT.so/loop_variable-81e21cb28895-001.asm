; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00094fd0, declared_size=40, range_size=40, mode=thumb
; class-group: loop_variable
; alias: _ZN13loop_variable16record_referenceEbbP13ir_assignment
; demangled: loop_variable::record_reference(bool, bool, ir_assignment*)
; decoder-mode: thumb
00094fd0  01 29                                            cmp r1, #1
00094fd2  0b d1                                            bne #0x94fec
00094fd4  0a b9                                            cbnz r2, #0x94fda
00094fd6  99 69                                            ldr r1, [r3, #0x18]
00094fd8  09 b1                                            cbz r1, #0x94fde
00094fda  01 21                                            movs r1, #1
00094fdc  81 73                                            strb r1, [r0, #0xe]
00094fde  01 69                                            ldr r1, [r0, #0x10]
00094fe0  01 b9                                            cbnz r1, #0x94fe4
00094fe2  03 61                                            str r3, [r0, #0x10]
00094fe4  c1 69                                            ldr r1, [r0, #0x1c]
00094fe6  01 31                                            adds r1, #1
00094fe8  c1 61                                            str r1, [r0, #0x1c]
00094fea  70 47                                            bx lr
00094fec  01 69                                            ldr r1, [r0, #0x10]
00094fee  99 42                                            cmp r1, r3
00094ff0  04 bf                                            itt eq
00094ff2  01 21                                            moveq r1, #1
00094ff4  01 73                                            strbeq r1, [r0, #0xc]
00094ff6  70 47                                            bx lr
