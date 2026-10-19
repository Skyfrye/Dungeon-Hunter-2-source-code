; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008e2e0, declared_size=12, range_size=12, mode=thumb
; class-group: ir_rvalue_enter_visitor
; alias: _ZN23ir_rvalue_enter_visitor11visit_enterEP13ir_expression
; demangled: ir_rvalue_enter_visitor::visit_enter(ir_expression*)
; decoder-mode: thumb
0008e2e0  80 b5                                            push {r7, lr}
0008e2e2  6f 46                                            mov r7, sp
0008e2e4  a6 f7 f6 ea                                      blx #0x348d4
0008e2e8  00 20                                            movs r0, #0
0008e2ea  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e2ec, declared_size=12, range_size=12, mode=thumb
; class-group: ir_rvalue_enter_visitor
; alias: _ZN23ir_rvalue_enter_visitor11visit_enterEP10ir_texture
; demangled: ir_rvalue_enter_visitor::visit_enter(ir_texture*)
; decoder-mode: thumb
0008e2ec  80 b5                                            push {r7, lr}
0008e2ee  6f 46                                            mov r7, sp
0008e2f0  a6 f7 f6 ea                                      blx #0x348e0
0008e2f4  00 20                                            movs r0, #0
0008e2f6  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e2f8, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_enter_visitor
; alias: _ZN23ir_rvalue_enter_visitor11visit_enterEP10ir_swizzle
; demangled: ir_rvalue_enter_visitor::visit_enter(ir_swizzle*)
; decoder-mode: thumb
0008e2f8  80 b5                                            push {r7, lr}
0008e2fa  6f 46                                            mov r7, sp
0008e2fc  02 68                                            ldr r2, [r0]
0008e2fe  18 31                                            adds r1, #0x18
0008e300  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e304  90 47                                            blx r2
0008e306  00 20                                            movs r0, #0
0008e308  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e30a, declared_size=56, range_size=56, mode=thumb
; class-group: ir_rvalue_enter_visitor
; alias: _ZN23ir_rvalue_enter_visitor11visit_enterEP20ir_dereference_array
; demangled: ir_rvalue_enter_visitor::visit_enter(ir_dereference_array*)
; decoder-mode: thumb
0008e30a  f0 b5                                            push {r4, r5, r6, r7, lr}
0008e30c  03 af                                            add r7, sp, #0xc
0008e30e  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008e312  05 46                                            mov r5, r0
0008e314  0c 46                                            mov r4, r1
0008e316  28 68                                            ldr r0, [r5]
0008e318  00 21                                            movs r1, #0
0008e31a  2e 7e                                            ldrb r6, [r5, #0x18]
0008e31c  29 76                                            strb r1, [r5, #0x18]
0008e31e  04 f1 1c 01                                      add.w r1, r4, #0x1c
0008e322  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e326  28 46                                            mov r0, r5
0008e328  90 47                                            blx r2
0008e32a  28 68                                            ldr r0, [r5]
0008e32c  04 f1 18 01                                      add.w r1, r4, #0x18
0008e330  2e 76                                            strb r6, [r5, #0x18]
0008e332  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e336  28 46                                            mov r0, r5
0008e338  90 47                                            blx r2
0008e33a  00 20                                            movs r0, #0
0008e33c  5d f8 04 bb                                      ldr fp, [sp], #4
0008e340  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0008e342, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_enter_visitor
; alias: _ZN23ir_rvalue_enter_visitor11visit_enterEP21ir_dereference_record
; demangled: ir_rvalue_enter_visitor::visit_enter(ir_dereference_record*)
; decoder-mode: thumb
0008e342  80 b5                                            push {r7, lr}
0008e344  6f 46                                            mov r7, sp
0008e346  02 68                                            ldr r2, [r0]
0008e348  18 31                                            adds r1, #0x18
0008e34a  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e34e  90 47                                            blx r2
0008e350  00 20                                            movs r0, #0
0008e352  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e354, declared_size=40, range_size=40, mode=thumb
; class-group: ir_rvalue_enter_visitor
; alias: _ZN23ir_rvalue_enter_visitor11visit_enterEP13ir_assignment
; demangled: ir_rvalue_enter_visitor::visit_enter(ir_assignment*)
; decoder-mode: thumb
0008e354  b0 b5                                            push {r4, r5, r7, lr}
0008e356  02 af                                            add r7, sp, #8
0008e358  05 46                                            mov r5, r0
0008e35a  0c 46                                            mov r4, r1
0008e35c  28 68                                            ldr r0, [r5]
0008e35e  04 f1 14 01                                      add.w r1, r4, #0x14
0008e362  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e366  28 46                                            mov r0, r5
0008e368  90 47                                            blx r2
0008e36a  28 68                                            ldr r0, [r5]
0008e36c  04 f1 18 01                                      add.w r1, r4, #0x18
0008e370  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e374  28 46                                            mov r0, r5
0008e376  90 47                                            blx r2
0008e378  00 20                                            movs r0, #0
0008e37a  b0 bd                                            pop {r4, r5, r7, pc}

; FUNCTION 0x0008e37c, declared_size=12, range_size=12, mode=thumb
; class-group: ir_rvalue_enter_visitor
; alias: _ZN23ir_rvalue_enter_visitor11visit_enterEP7ir_call
; demangled: ir_rvalue_enter_visitor::visit_enter(ir_call*)
; decoder-mode: thumb
0008e37c  80 b5                                            push {r7, lr}
0008e37e  6f 46                                            mov r7, sp
0008e380  a6 f7 b4 ea                                      blx #0x348ec
0008e384  00 20                                            movs r0, #0
0008e386  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e388, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_enter_visitor
; alias: _ZN23ir_rvalue_enter_visitor11visit_enterEP9ir_return
; demangled: ir_rvalue_enter_visitor::visit_enter(ir_return*)
; decoder-mode: thumb
0008e388  80 b5                                            push {r7, lr}
0008e38a  6f 46                                            mov r7, sp
0008e38c  02 68                                            ldr r2, [r0]
0008e38e  10 31                                            adds r1, #0x10
0008e390  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e394  90 47                                            blx r2
0008e396  00 20                                            movs r0, #0
0008e398  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e39a, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_enter_visitor
; alias: _ZN23ir_rvalue_enter_visitor11visit_enterEP5ir_if
; demangled: ir_rvalue_enter_visitor::visit_enter(ir_if*)
; decoder-mode: thumb
0008e39a  80 b5                                            push {r7, lr}
0008e39c  6f 46                                            mov r7, sp
0008e39e  02 68                                            ldr r2, [r0]
0008e3a0  10 31                                            adds r1, #0x10
0008e3a2  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e3a6  90 47                                            blx r2
0008e3a8  00 20                                            movs r0, #0
0008e3aa  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e3ac, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_enter_visitor
; alias: _ZN23ir_rvalue_enter_visitor11visit_enterEP14ir_emit_vertex
; demangled: ir_rvalue_enter_visitor::visit_enter(ir_emit_vertex*)
; decoder-mode: thumb
0008e3ac  80 b5                                            push {r7, lr}
0008e3ae  6f 46                                            mov r7, sp
0008e3b0  02 68                                            ldr r2, [r0]
0008e3b2  10 31                                            adds r1, #0x10
0008e3b4  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e3b8  90 47                                            blx r2
0008e3ba  00 20                                            movs r0, #0
0008e3bc  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e3be, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_enter_visitor
; alias: _ZN23ir_rvalue_enter_visitor11visit_enterEP16ir_end_primitive
; demangled: ir_rvalue_enter_visitor::visit_enter(ir_end_primitive*)
; decoder-mode: thumb
0008e3be  80 b5                                            push {r7, lr}
0008e3c0  6f 46                                            mov r7, sp
0008e3c2  02 68                                            ldr r2, [r0]
0008e3c4  10 31                                            adds r1, #0x10
0008e3c6  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e3ca  90 47                                            blx r2
0008e3cc  00 20                                            movs r0, #0
0008e3ce  80 bd                                            pop {r7, pc}
