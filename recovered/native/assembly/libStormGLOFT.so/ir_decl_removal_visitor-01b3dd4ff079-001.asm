; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008e664, declared_size=46, range_size=46, mode=thumb
; class-group: ir_decl_removal_visitor
; alias: _ZN23ir_decl_removal_visitor5visitEP21ir_typedecl_statement
; demangled: ir_decl_removal_visitor::visit(ir_typedecl_statement*)
; decoder-mode: thumb
0008e664  c0 69                                            ldr r0, [r0, #0x1c]
0008e666  d0 f8 19 00                                      ldr.w r0, [r0, #0x19]
0008e66a  02 68                                            ldr r2, [r0]
0008e66c  3a b1                                            cbz r2, #0x8e67e
0008e66e  0a 69                                            ldr r2, [r1, #0x10]
0008e670  83 68                                            ldr r3, [r0, #8]
0008e672  93 42                                            cmp r3, r2
0008e674  0b d0                                            beq #0x8e68e
0008e676  00 68                                            ldr r0, [r0]
0008e678  03 68                                            ldr r3, [r0]
0008e67a  00 2b                                            cmp r3, #0
0008e67c  f8 d1                                            bne #0x8e670
0008e67e  48 68                                            ldr r0, [r1, #4]
0008e680  8a 68                                            ldr r2, [r1, #8]
0008e682  42 60                                            str r2, [r0, #4]
0008e684  8a 68                                            ldr r2, [r1, #8]
0008e686  10 60                                            str r0, [r2]
0008e688  00 20                                            movs r0, #0
0008e68a  88 60                                            str r0, [r1, #8]
0008e68c  48 60                                            str r0, [r1, #4]
0008e68e  00 20                                            movs r0, #0
0008e690  70 47                                            bx lr
