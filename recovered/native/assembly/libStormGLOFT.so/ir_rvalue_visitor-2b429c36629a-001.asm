; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008e1f0, declared_size=12, range_size=12, mode=thumb
; class-group: ir_rvalue_visitor
; alias: _ZN17ir_rvalue_visitor11visit_leaveEP13ir_expression
; demangled: ir_rvalue_visitor::visit_leave(ir_expression*)
; decoder-mode: thumb
0008e1f0  80 b5                                            push {r7, lr}
0008e1f2  6f 46                                            mov r7, sp
0008e1f4  a6 f7 6e eb                                      blx #0x348d4
0008e1f8  00 20                                            movs r0, #0
0008e1fa  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e1fc, declared_size=12, range_size=12, mode=thumb
; class-group: ir_rvalue_visitor
; alias: _ZN17ir_rvalue_visitor11visit_leaveEP10ir_texture
; demangled: ir_rvalue_visitor::visit_leave(ir_texture*)
; decoder-mode: thumb
0008e1fc  80 b5                                            push {r7, lr}
0008e1fe  6f 46                                            mov r7, sp
0008e200  a6 f7 6e eb                                      blx #0x348e0
0008e204  00 20                                            movs r0, #0
0008e206  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e208, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_visitor
; alias: _ZN17ir_rvalue_visitor11visit_leaveEP10ir_swizzle
; demangled: ir_rvalue_visitor::visit_leave(ir_swizzle*)
; decoder-mode: thumb
0008e208  80 b5                                            push {r7, lr}
0008e20a  6f 46                                            mov r7, sp
0008e20c  02 68                                            ldr r2, [r0]
0008e20e  18 31                                            adds r1, #0x18
0008e210  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e214  90 47                                            blx r2
0008e216  00 20                                            movs r0, #0
0008e218  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e21a, declared_size=56, range_size=56, mode=thumb
; class-group: ir_rvalue_visitor
; alias: _ZN17ir_rvalue_visitor11visit_leaveEP20ir_dereference_array
; demangled: ir_rvalue_visitor::visit_leave(ir_dereference_array*)
; decoder-mode: thumb
0008e21a  f0 b5                                            push {r4, r5, r6, r7, lr}
0008e21c  03 af                                            add r7, sp, #0xc
0008e21e  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008e222  05 46                                            mov r5, r0
0008e224  0c 46                                            mov r4, r1
0008e226  28 68                                            ldr r0, [r5]
0008e228  00 21                                            movs r1, #0
0008e22a  2e 7e                                            ldrb r6, [r5, #0x18]
0008e22c  29 76                                            strb r1, [r5, #0x18]
0008e22e  04 f1 1c 01                                      add.w r1, r4, #0x1c
0008e232  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e236  28 46                                            mov r0, r5
0008e238  90 47                                            blx r2
0008e23a  28 68                                            ldr r0, [r5]
0008e23c  04 f1 18 01                                      add.w r1, r4, #0x18
0008e240  2e 76                                            strb r6, [r5, #0x18]
0008e242  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e246  28 46                                            mov r0, r5
0008e248  90 47                                            blx r2
0008e24a  00 20                                            movs r0, #0
0008e24c  5d f8 04 bb                                      ldr fp, [sp], #4
0008e250  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0008e252, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_visitor
; alias: _ZN17ir_rvalue_visitor11visit_leaveEP21ir_dereference_record
; demangled: ir_rvalue_visitor::visit_leave(ir_dereference_record*)
; decoder-mode: thumb
0008e252  80 b5                                            push {r7, lr}
0008e254  6f 46                                            mov r7, sp
0008e256  02 68                                            ldr r2, [r0]
0008e258  18 31                                            adds r1, #0x18
0008e25a  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e25e  90 47                                            blx r2
0008e260  00 20                                            movs r0, #0
0008e262  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e264, declared_size=40, range_size=40, mode=thumb
; class-group: ir_rvalue_visitor
; alias: _ZN17ir_rvalue_visitor11visit_leaveEP13ir_assignment
; demangled: ir_rvalue_visitor::visit_leave(ir_assignment*)
; decoder-mode: thumb
0008e264  b0 b5                                            push {r4, r5, r7, lr}
0008e266  02 af                                            add r7, sp, #8
0008e268  05 46                                            mov r5, r0
0008e26a  0c 46                                            mov r4, r1
0008e26c  28 68                                            ldr r0, [r5]
0008e26e  04 f1 14 01                                      add.w r1, r4, #0x14
0008e272  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e276  28 46                                            mov r0, r5
0008e278  90 47                                            blx r2
0008e27a  28 68                                            ldr r0, [r5]
0008e27c  04 f1 18 01                                      add.w r1, r4, #0x18
0008e280  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e284  28 46                                            mov r0, r5
0008e286  90 47                                            blx r2
0008e288  00 20                                            movs r0, #0
0008e28a  b0 bd                                            pop {r4, r5, r7, pc}

; FUNCTION 0x0008e28c, declared_size=12, range_size=12, mode=thumb
; class-group: ir_rvalue_visitor
; alias: _ZN17ir_rvalue_visitor11visit_leaveEP7ir_call
; demangled: ir_rvalue_visitor::visit_leave(ir_call*)
; decoder-mode: thumb
0008e28c  80 b5                                            push {r7, lr}
0008e28e  6f 46                                            mov r7, sp
0008e290  a6 f7 2c eb                                      blx #0x348ec
0008e294  00 20                                            movs r0, #0
0008e296  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e298, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_visitor
; alias: _ZN17ir_rvalue_visitor11visit_leaveEP9ir_return
; demangled: ir_rvalue_visitor::visit_leave(ir_return*)
; decoder-mode: thumb
0008e298  80 b5                                            push {r7, lr}
0008e29a  6f 46                                            mov r7, sp
0008e29c  02 68                                            ldr r2, [r0]
0008e29e  10 31                                            adds r1, #0x10
0008e2a0  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e2a4  90 47                                            blx r2
0008e2a6  00 20                                            movs r0, #0
0008e2a8  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e2aa, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_visitor
; alias: _ZN17ir_rvalue_visitor11visit_leaveEP5ir_if
; demangled: ir_rvalue_visitor::visit_leave(ir_if*)
; decoder-mode: thumb
0008e2aa  80 b5                                            push {r7, lr}
0008e2ac  6f 46                                            mov r7, sp
0008e2ae  02 68                                            ldr r2, [r0]
0008e2b0  10 31                                            adds r1, #0x10
0008e2b2  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e2b6  90 47                                            blx r2
0008e2b8  00 20                                            movs r0, #0
0008e2ba  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e2bc, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_visitor
; alias: _ZN17ir_rvalue_visitor11visit_leaveEP14ir_emit_vertex
; demangled: ir_rvalue_visitor::visit_leave(ir_emit_vertex*)
; decoder-mode: thumb
0008e2bc  80 b5                                            push {r7, lr}
0008e2be  6f 46                                            mov r7, sp
0008e2c0  02 68                                            ldr r2, [r0]
0008e2c2  10 31                                            adds r1, #0x10
0008e2c4  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e2c8  90 47                                            blx r2
0008e2ca  00 20                                            movs r0, #0
0008e2cc  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e2ce, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_visitor
; alias: _ZN17ir_rvalue_visitor11visit_leaveEP16ir_end_primitive
; demangled: ir_rvalue_visitor::visit_leave(ir_end_primitive*)
; decoder-mode: thumb
0008e2ce  80 b5                                            push {r7, lr}
0008e2d0  6f 46                                            mov r7, sp
0008e2d2  02 68                                            ldr r2, [r0]
0008e2d4  10 31                                            adds r1, #0x10
0008e2d6  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e2da  90 47                                            blx r2
0008e2dc  00 20                                            movs r0, #0
0008e2de  80 bd                                            pop {r7, pc}
