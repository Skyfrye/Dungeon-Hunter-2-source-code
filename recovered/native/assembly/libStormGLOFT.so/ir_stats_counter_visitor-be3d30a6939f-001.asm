; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008e440, declared_size=10, range_size=10, mode=thumb
; class-group: ir_stats_counter_visitor
; alias: _ZN24ir_stats_counter_visitor11visit_leaveEP7ir_loop
; demangled: ir_stats_counter_visitor::visit_leave(ir_loop*)
; decoder-mode: thumb
0008e440  41 6a                                            ldr r1, [r0, #0x24]
0008e442  01 31                                            adds r1, #1
0008e444  41 62                                            str r1, [r0, #0x24]
0008e446  00 20                                            movs r0, #0
0008e448  70 47                                            bx lr

; FUNCTION 0x0008e44a, declared_size=10, range_size=10, mode=thumb
; class-group: ir_stats_counter_visitor
; alias: _ZN24ir_stats_counter_visitor11visit_leaveEP13ir_expression
; demangled: ir_stats_counter_visitor::visit_leave(ir_expression*)
; decoder-mode: thumb
0008e44a  c1 69                                            ldr r1, [r0, #0x1c]
0008e44c  01 31                                            adds r1, #1
0008e44e  c1 61                                            str r1, [r0, #0x1c]
0008e450  00 20                                            movs r0, #0
0008e452  70 47                                            bx lr

; FUNCTION 0x0008e454, declared_size=10, range_size=10, mode=thumb
; class-group: ir_stats_counter_visitor
; alias: _ZN24ir_stats_counter_visitor11visit_leaveEP10ir_texture
; demangled: ir_stats_counter_visitor::visit_leave(ir_texture*)
; decoder-mode: thumb
0008e454  01 6a                                            ldr r1, [r0, #0x20]
0008e456  01 31                                            adds r1, #1
0008e458  01 62                                            str r1, [r0, #0x20]
0008e45a  00 20                                            movs r0, #0
0008e45c  70 47                                            bx lr

; FUNCTION 0x0008e45e, declared_size=22, range_size=22, mode=thumb
; class-group: ir_stats_counter_visitor
; alias: _ZN24ir_stats_counter_visitor11visit_leaveEP13ir_assignment
; demangled: ir_stats_counter_visitor::visit_leave(ir_assignment*)
; decoder-mode: thumb
0008e45e  39 b1                                            cbz r1, #0x8e470
0008e460  49 69                                            ldr r1, [r1, #0x14]
0008e462  29 b1                                            cbz r1, #0x8e470
0008e464  c9 68                                            ldr r1, [r1, #0xc]
0008e466  03 29                                            cmp r1, #3
0008e468  02 bf                                            ittt eq
0008e46a  c1 69                                            ldreq r1, [r0, #0x1c]
0008e46c  01 31                                            addeq r1, #1
0008e46e  c1 61                                            streq r1, [r0, #0x1c]
0008e470  00 20                                            movs r0, #0
0008e472  70 47                                            bx lr

; FUNCTION 0x0008e474, declared_size=10, range_size=10, mode=thumb
; class-group: ir_stats_counter_visitor
; alias: _ZN24ir_stats_counter_visitor11visit_leaveEP9ir_return
; demangled: ir_stats_counter_visitor::visit_leave(ir_return*)
; decoder-mode: thumb
0008e474  41 6a                                            ldr r1, [r0, #0x24]
0008e476  01 31                                            adds r1, #1
0008e478  41 62                                            str r1, [r0, #0x24]
0008e47a  00 20                                            movs r0, #0
0008e47c  70 47                                            bx lr

; FUNCTION 0x0008e47e, declared_size=10, range_size=10, mode=thumb
; class-group: ir_stats_counter_visitor
; alias: _ZN24ir_stats_counter_visitor11visit_leaveEP10ir_discard
; demangled: ir_stats_counter_visitor::visit_leave(ir_discard*)
; decoder-mode: thumb
0008e47e  01 6a                                            ldr r1, [r0, #0x20]
0008e480  01 31                                            adds r1, #1
0008e482  01 62                                            str r1, [r0, #0x20]
0008e484  00 20                                            movs r0, #0
0008e486  70 47                                            bx lr

; FUNCTION 0x0008e488, declared_size=10, range_size=10, mode=thumb
; class-group: ir_stats_counter_visitor
; alias: _ZN24ir_stats_counter_visitor11visit_leaveEP5ir_if
; demangled: ir_stats_counter_visitor::visit_leave(ir_if*)
; decoder-mode: thumb
0008e488  41 6a                                            ldr r1, [r0, #0x24]
0008e48a  01 31                                            adds r1, #1
0008e48c  41 62                                            str r1, [r0, #0x24]
0008e48e  00 20                                            movs r0, #0
0008e490  70 47                                            bx lr
