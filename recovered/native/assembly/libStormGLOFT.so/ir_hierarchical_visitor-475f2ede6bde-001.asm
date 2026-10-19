; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00086f10, declared_size=36, range_size=36, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitorC1Ev
; demangled: ir_hierarchical_visitor::ir_hierarchical_visitor()
; alias: _ZN23ir_hierarchical_visitorC2Ev
; demangled: ir_hierarchical_visitor::ir_hierarchical_visitor()
; decoder-mode: thumb
00086f10  d0 b5                                            push {r4, r6, r7, lr}
00086f12  02 af                                            add r7, sp, #8
00086f14  04 46                                            mov r4, r0
00086f16  06 48                                            ldr r0, [pc, #0x18]
00086f18  78 44                                            add r0, pc
00086f1a  00 68                                            ldr r0, [r0]
00086f1c  00 f1 08 01                                      add.w r1, r0, #8
00086f20  20 46                                            mov r0, r4
00086f22  40 f8 04 1b                                      str r1, [r0], #4
00086f26  15 21                                            movs r1, #0x15
00086f28  ab f7 9a eb                                      blx #0x32660
00086f2c  20 46                                            mov r0, r4
00086f2e  d0 bd                                            pop {r4, r6, r7, pc}
00086f30  94 5a                                            ldrh r4, [r2, r2]
00086f32  05 00                                            movs r5, r0

; FUNCTION 0x00086f34, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor5visitEP9ir_rvalue
; demangled: ir_hierarchical_visitor::visit(ir_rvalue*)
; decoder-mode: thumb
00086f34  83 68                                            ldr r3, [r0, #8]
00086f36  3b b1                                            cbz r3, #0x86f48
00086f38  80 b5                                            push {r7, lr}
00086f3a  6f 46                                            mov r7, sp
00086f3c  02 69                                            ldr r2, [r0, #0x10]
00086f3e  08 46                                            mov r0, r1
00086f40  11 46                                            mov r1, r2
00086f42  98 47                                            blx r3
00086f44  bd e8 80 40                                      pop.w {r7, lr}
00086f48  00 20                                            movs r0, #0
00086f4a  70 47                                            bx lr

; FUNCTION 0x00086f4c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor5visitEP11ir_variable
; demangled: ir_hierarchical_visitor::visit(ir_variable*)
; decoder-mode: thumb
00086f4c  83 68                                            ldr r3, [r0, #8]
00086f4e  3b b1                                            cbz r3, #0x86f60
00086f50  80 b5                                            push {r7, lr}
00086f52  6f 46                                            mov r7, sp
00086f54  02 69                                            ldr r2, [r0, #0x10]
00086f56  08 46                                            mov r0, r1
00086f58  11 46                                            mov r1, r2
00086f5a  98 47                                            blx r3
00086f5c  bd e8 80 40                                      pop.w {r7, lr}
00086f60  00 20                                            movs r0, #0
00086f62  70 47                                            bx lr

; FUNCTION 0x00086f64, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor5visitEP11ir_constant
; demangled: ir_hierarchical_visitor::visit(ir_constant*)
; decoder-mode: thumb
00086f64  83 68                                            ldr r3, [r0, #8]
00086f66  3b b1                                            cbz r3, #0x86f78
00086f68  80 b5                                            push {r7, lr}
00086f6a  6f 46                                            mov r7, sp
00086f6c  02 69                                            ldr r2, [r0, #0x10]
00086f6e  08 46                                            mov r0, r1
00086f70  11 46                                            mov r1, r2
00086f72  98 47                                            blx r3
00086f74  bd e8 80 40                                      pop.w {r7, lr}
00086f78  00 20                                            movs r0, #0
00086f7a  70 47                                            bx lr

; FUNCTION 0x00086f7c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor5visitEP12ir_loop_jump
; demangled: ir_hierarchical_visitor::visit(ir_loop_jump*)
; decoder-mode: thumb
00086f7c  83 68                                            ldr r3, [r0, #8]
00086f7e  3b b1                                            cbz r3, #0x86f90
00086f80  80 b5                                            push {r7, lr}
00086f82  6f 46                                            mov r7, sp
00086f84  02 69                                            ldr r2, [r0, #0x10]
00086f86  08 46                                            mov r0, r1
00086f88  11 46                                            mov r1, r2
00086f8a  98 47                                            blx r3
00086f8c  bd e8 80 40                                      pop.w {r7, lr}
00086f90  00 20                                            movs r0, #0
00086f92  70 47                                            bx lr

; FUNCTION 0x00086f94, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor5visitEP22ir_precision_statement
; demangled: ir_hierarchical_visitor::visit(ir_precision_statement*)
; decoder-mode: thumb
00086f94  83 68                                            ldr r3, [r0, #8]
00086f96  3b b1                                            cbz r3, #0x86fa8
00086f98  80 b5                                            push {r7, lr}
00086f9a  6f 46                                            mov r7, sp
00086f9c  02 69                                            ldr r2, [r0, #0x10]
00086f9e  08 46                                            mov r0, r1
00086fa0  11 46                                            mov r1, r2
00086fa2  98 47                                            blx r3
00086fa4  bd e8 80 40                                      pop.w {r7, lr}
00086fa8  00 20                                            movs r0, #0
00086faa  70 47                                            bx lr

; FUNCTION 0x00086fac, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor5visitEP21ir_typedecl_statement
; demangled: ir_hierarchical_visitor::visit(ir_typedecl_statement*)
; decoder-mode: thumb
00086fac  83 68                                            ldr r3, [r0, #8]
00086fae  3b b1                                            cbz r3, #0x86fc0
00086fb0  80 b5                                            push {r7, lr}
00086fb2  6f 46                                            mov r7, sp
00086fb4  02 69                                            ldr r2, [r0, #0x10]
00086fb6  08 46                                            mov r0, r1
00086fb8  11 46                                            mov r1, r2
00086fba  98 47                                            blx r3
00086fbc  bd e8 80 40                                      pop.w {r7, lr}
00086fc0  00 20                                            movs r0, #0
00086fc2  70 47                                            bx lr

; FUNCTION 0x00086fc4, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor5visitEP23ir_dereference_variable
; demangled: ir_hierarchical_visitor::visit(ir_dereference_variable*)
; decoder-mode: thumb
00086fc4  83 68                                            ldr r3, [r0, #8]
00086fc6  3b b1                                            cbz r3, #0x86fd8
00086fc8  80 b5                                            push {r7, lr}
00086fca  6f 46                                            mov r7, sp
00086fcc  02 69                                            ldr r2, [r0, #0x10]
00086fce  08 46                                            mov r0, r1
00086fd0  11 46                                            mov r1, r2
00086fd2  98 47                                            blx r3
00086fd4  bd e8 80 40                                      pop.w {r7, lr}
00086fd8  00 20                                            movs r0, #0
00086fda  70 47                                            bx lr

; FUNCTION 0x00086fdc, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP7ir_loop
; demangled: ir_hierarchical_visitor::visit_enter(ir_loop*)
; decoder-mode: thumb
00086fdc  83 68                                            ldr r3, [r0, #8]
00086fde  3b b1                                            cbz r3, #0x86ff0
00086fe0  80 b5                                            push {r7, lr}
00086fe2  6f 46                                            mov r7, sp
00086fe4  02 69                                            ldr r2, [r0, #0x10]
00086fe6  08 46                                            mov r0, r1
00086fe8  11 46                                            mov r1, r2
00086fea  98 47                                            blx r3
00086fec  bd e8 80 40                                      pop.w {r7, lr}
00086ff0  00 20                                            movs r0, #0
00086ff2  70 47                                            bx lr

; FUNCTION 0x00086ff4, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP7ir_loop
; demangled: ir_hierarchical_visitor::visit_leave(ir_loop*)
; decoder-mode: thumb
00086ff4  c3 68                                            ldr r3, [r0, #0xc]
00086ff6  3b b1                                            cbz r3, #0x87008
00086ff8  80 b5                                            push {r7, lr}
00086ffa  6f 46                                            mov r7, sp
00086ffc  42 69                                            ldr r2, [r0, #0x14]
00086ffe  08 46                                            mov r0, r1
00087000  11 46                                            mov r1, r2
00087002  98 47                                            blx r3
00087004  bd e8 80 40                                      pop.w {r7, lr}
00087008  00 20                                            movs r0, #0
0008700a  70 47                                            bx lr

; FUNCTION 0x0008700c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP21ir_function_signature
; demangled: ir_hierarchical_visitor::visit_enter(ir_function_signature*)
; decoder-mode: thumb
0008700c  83 68                                            ldr r3, [r0, #8]
0008700e  3b b1                                            cbz r3, #0x87020
00087010  80 b5                                            push {r7, lr}
00087012  6f 46                                            mov r7, sp
00087014  02 69                                            ldr r2, [r0, #0x10]
00087016  08 46                                            mov r0, r1
00087018  11 46                                            mov r1, r2
0008701a  98 47                                            blx r3
0008701c  bd e8 80 40                                      pop.w {r7, lr}
00087020  00 20                                            movs r0, #0
00087022  70 47                                            bx lr

; FUNCTION 0x00087024, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP21ir_function_signature
; demangled: ir_hierarchical_visitor::visit_leave(ir_function_signature*)
; decoder-mode: thumb
00087024  c3 68                                            ldr r3, [r0, #0xc]
00087026  3b b1                                            cbz r3, #0x87038
00087028  80 b5                                            push {r7, lr}
0008702a  6f 46                                            mov r7, sp
0008702c  42 69                                            ldr r2, [r0, #0x14]
0008702e  08 46                                            mov r0, r1
00087030  11 46                                            mov r1, r2
00087032  98 47                                            blx r3
00087034  bd e8 80 40                                      pop.w {r7, lr}
00087038  00 20                                            movs r0, #0
0008703a  70 47                                            bx lr

; FUNCTION 0x0008703c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP11ir_function
; demangled: ir_hierarchical_visitor::visit_enter(ir_function*)
; decoder-mode: thumb
0008703c  83 68                                            ldr r3, [r0, #8]
0008703e  3b b1                                            cbz r3, #0x87050
00087040  80 b5                                            push {r7, lr}
00087042  6f 46                                            mov r7, sp
00087044  02 69                                            ldr r2, [r0, #0x10]
00087046  08 46                                            mov r0, r1
00087048  11 46                                            mov r1, r2
0008704a  98 47                                            blx r3
0008704c  bd e8 80 40                                      pop.w {r7, lr}
00087050  00 20                                            movs r0, #0
00087052  70 47                                            bx lr

; FUNCTION 0x00087054, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP11ir_function
; demangled: ir_hierarchical_visitor::visit_leave(ir_function*)
; decoder-mode: thumb
00087054  c3 68                                            ldr r3, [r0, #0xc]
00087056  3b b1                                            cbz r3, #0x87068
00087058  80 b5                                            push {r7, lr}
0008705a  6f 46                                            mov r7, sp
0008705c  42 69                                            ldr r2, [r0, #0x14]
0008705e  08 46                                            mov r0, r1
00087060  11 46                                            mov r1, r2
00087062  98 47                                            blx r3
00087064  bd e8 80 40                                      pop.w {r7, lr}
00087068  00 20                                            movs r0, #0
0008706a  70 47                                            bx lr

; FUNCTION 0x0008706c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP13ir_expression
; demangled: ir_hierarchical_visitor::visit_enter(ir_expression*)
; decoder-mode: thumb
0008706c  83 68                                            ldr r3, [r0, #8]
0008706e  3b b1                                            cbz r3, #0x87080
00087070  80 b5                                            push {r7, lr}
00087072  6f 46                                            mov r7, sp
00087074  02 69                                            ldr r2, [r0, #0x10]
00087076  08 46                                            mov r0, r1
00087078  11 46                                            mov r1, r2
0008707a  98 47                                            blx r3
0008707c  bd e8 80 40                                      pop.w {r7, lr}
00087080  00 20                                            movs r0, #0
00087082  70 47                                            bx lr

; FUNCTION 0x00087084, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP13ir_expression
; demangled: ir_hierarchical_visitor::visit_leave(ir_expression*)
; decoder-mode: thumb
00087084  c3 68                                            ldr r3, [r0, #0xc]
00087086  3b b1                                            cbz r3, #0x87098
00087088  80 b5                                            push {r7, lr}
0008708a  6f 46                                            mov r7, sp
0008708c  42 69                                            ldr r2, [r0, #0x14]
0008708e  08 46                                            mov r0, r1
00087090  11 46                                            mov r1, r2
00087092  98 47                                            blx r3
00087094  bd e8 80 40                                      pop.w {r7, lr}
00087098  00 20                                            movs r0, #0
0008709a  70 47                                            bx lr

; FUNCTION 0x0008709c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP10ir_texture
; demangled: ir_hierarchical_visitor::visit_enter(ir_texture*)
; decoder-mode: thumb
0008709c  83 68                                            ldr r3, [r0, #8]
0008709e  3b b1                                            cbz r3, #0x870b0
000870a0  80 b5                                            push {r7, lr}
000870a2  6f 46                                            mov r7, sp
000870a4  02 69                                            ldr r2, [r0, #0x10]
000870a6  08 46                                            mov r0, r1
000870a8  11 46                                            mov r1, r2
000870aa  98 47                                            blx r3
000870ac  bd e8 80 40                                      pop.w {r7, lr}
000870b0  00 20                                            movs r0, #0
000870b2  70 47                                            bx lr

; FUNCTION 0x000870b4, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP10ir_texture
; demangled: ir_hierarchical_visitor::visit_leave(ir_texture*)
; decoder-mode: thumb
000870b4  c3 68                                            ldr r3, [r0, #0xc]
000870b6  3b b1                                            cbz r3, #0x870c8
000870b8  80 b5                                            push {r7, lr}
000870ba  6f 46                                            mov r7, sp
000870bc  42 69                                            ldr r2, [r0, #0x14]
000870be  08 46                                            mov r0, r1
000870c0  11 46                                            mov r1, r2
000870c2  98 47                                            blx r3
000870c4  bd e8 80 40                                      pop.w {r7, lr}
000870c8  00 20                                            movs r0, #0
000870ca  70 47                                            bx lr

; FUNCTION 0x000870cc, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP10ir_swizzle
; demangled: ir_hierarchical_visitor::visit_enter(ir_swizzle*)
; decoder-mode: thumb
000870cc  83 68                                            ldr r3, [r0, #8]
000870ce  3b b1                                            cbz r3, #0x870e0
000870d0  80 b5                                            push {r7, lr}
000870d2  6f 46                                            mov r7, sp
000870d4  02 69                                            ldr r2, [r0, #0x10]
000870d6  08 46                                            mov r0, r1
000870d8  11 46                                            mov r1, r2
000870da  98 47                                            blx r3
000870dc  bd e8 80 40                                      pop.w {r7, lr}
000870e0  00 20                                            movs r0, #0
000870e2  70 47                                            bx lr

; FUNCTION 0x000870e4, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP10ir_swizzle
; demangled: ir_hierarchical_visitor::visit_leave(ir_swizzle*)
; decoder-mode: thumb
000870e4  c3 68                                            ldr r3, [r0, #0xc]
000870e6  3b b1                                            cbz r3, #0x870f8
000870e8  80 b5                                            push {r7, lr}
000870ea  6f 46                                            mov r7, sp
000870ec  42 69                                            ldr r2, [r0, #0x14]
000870ee  08 46                                            mov r0, r1
000870f0  11 46                                            mov r1, r2
000870f2  98 47                                            blx r3
000870f4  bd e8 80 40                                      pop.w {r7, lr}
000870f8  00 20                                            movs r0, #0
000870fa  70 47                                            bx lr

; FUNCTION 0x000870fc, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP20ir_dereference_array
; demangled: ir_hierarchical_visitor::visit_enter(ir_dereference_array*)
; decoder-mode: thumb
000870fc  83 68                                            ldr r3, [r0, #8]
000870fe  3b b1                                            cbz r3, #0x87110
00087100  80 b5                                            push {r7, lr}
00087102  6f 46                                            mov r7, sp
00087104  02 69                                            ldr r2, [r0, #0x10]
00087106  08 46                                            mov r0, r1
00087108  11 46                                            mov r1, r2
0008710a  98 47                                            blx r3
0008710c  bd e8 80 40                                      pop.w {r7, lr}
00087110  00 20                                            movs r0, #0
00087112  70 47                                            bx lr

; FUNCTION 0x00087114, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP20ir_dereference_array
; demangled: ir_hierarchical_visitor::visit_leave(ir_dereference_array*)
; decoder-mode: thumb
00087114  c3 68                                            ldr r3, [r0, #0xc]
00087116  3b b1                                            cbz r3, #0x87128
00087118  80 b5                                            push {r7, lr}
0008711a  6f 46                                            mov r7, sp
0008711c  42 69                                            ldr r2, [r0, #0x14]
0008711e  08 46                                            mov r0, r1
00087120  11 46                                            mov r1, r2
00087122  98 47                                            blx r3
00087124  bd e8 80 40                                      pop.w {r7, lr}
00087128  00 20                                            movs r0, #0
0008712a  70 47                                            bx lr

; FUNCTION 0x0008712c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP21ir_dereference_record
; demangled: ir_hierarchical_visitor::visit_enter(ir_dereference_record*)
; decoder-mode: thumb
0008712c  83 68                                            ldr r3, [r0, #8]
0008712e  3b b1                                            cbz r3, #0x87140
00087130  80 b5                                            push {r7, lr}
00087132  6f 46                                            mov r7, sp
00087134  02 69                                            ldr r2, [r0, #0x10]
00087136  08 46                                            mov r0, r1
00087138  11 46                                            mov r1, r2
0008713a  98 47                                            blx r3
0008713c  bd e8 80 40                                      pop.w {r7, lr}
00087140  00 20                                            movs r0, #0
00087142  70 47                                            bx lr

; FUNCTION 0x00087144, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP21ir_dereference_record
; demangled: ir_hierarchical_visitor::visit_leave(ir_dereference_record*)
; decoder-mode: thumb
00087144  c3 68                                            ldr r3, [r0, #0xc]
00087146  3b b1                                            cbz r3, #0x87158
00087148  80 b5                                            push {r7, lr}
0008714a  6f 46                                            mov r7, sp
0008714c  42 69                                            ldr r2, [r0, #0x14]
0008714e  08 46                                            mov r0, r1
00087150  11 46                                            mov r1, r2
00087152  98 47                                            blx r3
00087154  bd e8 80 40                                      pop.w {r7, lr}
00087158  00 20                                            movs r0, #0
0008715a  70 47                                            bx lr

; FUNCTION 0x0008715c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP13ir_assignment
; demangled: ir_hierarchical_visitor::visit_enter(ir_assignment*)
; decoder-mode: thumb
0008715c  83 68                                            ldr r3, [r0, #8]
0008715e  3b b1                                            cbz r3, #0x87170
00087160  80 b5                                            push {r7, lr}
00087162  6f 46                                            mov r7, sp
00087164  02 69                                            ldr r2, [r0, #0x10]
00087166  08 46                                            mov r0, r1
00087168  11 46                                            mov r1, r2
0008716a  98 47                                            blx r3
0008716c  bd e8 80 40                                      pop.w {r7, lr}
00087170  00 20                                            movs r0, #0
00087172  70 47                                            bx lr

; FUNCTION 0x00087174, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP13ir_assignment
; demangled: ir_hierarchical_visitor::visit_leave(ir_assignment*)
; decoder-mode: thumb
00087174  c3 68                                            ldr r3, [r0, #0xc]
00087176  3b b1                                            cbz r3, #0x87188
00087178  80 b5                                            push {r7, lr}
0008717a  6f 46                                            mov r7, sp
0008717c  42 69                                            ldr r2, [r0, #0x14]
0008717e  08 46                                            mov r0, r1
00087180  11 46                                            mov r1, r2
00087182  98 47                                            blx r3
00087184  bd e8 80 40                                      pop.w {r7, lr}
00087188  00 20                                            movs r0, #0
0008718a  70 47                                            bx lr

; FUNCTION 0x0008718c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP7ir_call
; demangled: ir_hierarchical_visitor::visit_enter(ir_call*)
; decoder-mode: thumb
0008718c  83 68                                            ldr r3, [r0, #8]
0008718e  3b b1                                            cbz r3, #0x871a0
00087190  80 b5                                            push {r7, lr}
00087192  6f 46                                            mov r7, sp
00087194  02 69                                            ldr r2, [r0, #0x10]
00087196  08 46                                            mov r0, r1
00087198  11 46                                            mov r1, r2
0008719a  98 47                                            blx r3
0008719c  bd e8 80 40                                      pop.w {r7, lr}
000871a0  00 20                                            movs r0, #0
000871a2  70 47                                            bx lr

; FUNCTION 0x000871a4, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP7ir_call
; demangled: ir_hierarchical_visitor::visit_leave(ir_call*)
; decoder-mode: thumb
000871a4  c3 68                                            ldr r3, [r0, #0xc]
000871a6  3b b1                                            cbz r3, #0x871b8
000871a8  80 b5                                            push {r7, lr}
000871aa  6f 46                                            mov r7, sp
000871ac  42 69                                            ldr r2, [r0, #0x14]
000871ae  08 46                                            mov r0, r1
000871b0  11 46                                            mov r1, r2
000871b2  98 47                                            blx r3
000871b4  bd e8 80 40                                      pop.w {r7, lr}
000871b8  00 20                                            movs r0, #0
000871ba  70 47                                            bx lr

; FUNCTION 0x000871bc, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP9ir_return
; demangled: ir_hierarchical_visitor::visit_enter(ir_return*)
; decoder-mode: thumb
000871bc  83 68                                            ldr r3, [r0, #8]
000871be  3b b1                                            cbz r3, #0x871d0
000871c0  80 b5                                            push {r7, lr}
000871c2  6f 46                                            mov r7, sp
000871c4  02 69                                            ldr r2, [r0, #0x10]
000871c6  08 46                                            mov r0, r1
000871c8  11 46                                            mov r1, r2
000871ca  98 47                                            blx r3
000871cc  bd e8 80 40                                      pop.w {r7, lr}
000871d0  00 20                                            movs r0, #0
000871d2  70 47                                            bx lr

; FUNCTION 0x000871d4, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP9ir_return
; demangled: ir_hierarchical_visitor::visit_leave(ir_return*)
; decoder-mode: thumb
000871d4  c3 68                                            ldr r3, [r0, #0xc]
000871d6  3b b1                                            cbz r3, #0x871e8
000871d8  80 b5                                            push {r7, lr}
000871da  6f 46                                            mov r7, sp
000871dc  42 69                                            ldr r2, [r0, #0x14]
000871de  08 46                                            mov r0, r1
000871e0  11 46                                            mov r1, r2
000871e2  98 47                                            blx r3
000871e4  bd e8 80 40                                      pop.w {r7, lr}
000871e8  00 20                                            movs r0, #0
000871ea  70 47                                            bx lr

; FUNCTION 0x000871ec, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP10ir_discard
; demangled: ir_hierarchical_visitor::visit_enter(ir_discard*)
; decoder-mode: thumb
000871ec  83 68                                            ldr r3, [r0, #8]
000871ee  3b b1                                            cbz r3, #0x87200
000871f0  80 b5                                            push {r7, lr}
000871f2  6f 46                                            mov r7, sp
000871f4  02 69                                            ldr r2, [r0, #0x10]
000871f6  08 46                                            mov r0, r1
000871f8  11 46                                            mov r1, r2
000871fa  98 47                                            blx r3
000871fc  bd e8 80 40                                      pop.w {r7, lr}
00087200  00 20                                            movs r0, #0
00087202  70 47                                            bx lr

; FUNCTION 0x00087204, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP10ir_discard
; demangled: ir_hierarchical_visitor::visit_leave(ir_discard*)
; decoder-mode: thumb
00087204  c3 68                                            ldr r3, [r0, #0xc]
00087206  3b b1                                            cbz r3, #0x87218
00087208  80 b5                                            push {r7, lr}
0008720a  6f 46                                            mov r7, sp
0008720c  42 69                                            ldr r2, [r0, #0x14]
0008720e  08 46                                            mov r0, r1
00087210  11 46                                            mov r1, r2
00087212  98 47                                            blx r3
00087214  bd e8 80 40                                      pop.w {r7, lr}
00087218  00 20                                            movs r0, #0
0008721a  70 47                                            bx lr

; FUNCTION 0x0008721c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP5ir_if
; demangled: ir_hierarchical_visitor::visit_enter(ir_if*)
; decoder-mode: thumb
0008721c  83 68                                            ldr r3, [r0, #8]
0008721e  3b b1                                            cbz r3, #0x87230
00087220  80 b5                                            push {r7, lr}
00087222  6f 46                                            mov r7, sp
00087224  02 69                                            ldr r2, [r0, #0x10]
00087226  08 46                                            mov r0, r1
00087228  11 46                                            mov r1, r2
0008722a  98 47                                            blx r3
0008722c  bd e8 80 40                                      pop.w {r7, lr}
00087230  00 20                                            movs r0, #0
00087232  70 47                                            bx lr

; FUNCTION 0x00087234, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP5ir_if
; demangled: ir_hierarchical_visitor::visit_leave(ir_if*)
; decoder-mode: thumb
00087234  c3 68                                            ldr r3, [r0, #0xc]
00087236  3b b1                                            cbz r3, #0x87248
00087238  80 b5                                            push {r7, lr}
0008723a  6f 46                                            mov r7, sp
0008723c  42 69                                            ldr r2, [r0, #0x14]
0008723e  08 46                                            mov r0, r1
00087240  11 46                                            mov r1, r2
00087242  98 47                                            blx r3
00087244  bd e8 80 40                                      pop.w {r7, lr}
00087248  00 20                                            movs r0, #0
0008724a  70 47                                            bx lr

; FUNCTION 0x0008724c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP14ir_emit_vertex
; demangled: ir_hierarchical_visitor::visit_enter(ir_emit_vertex*)
; decoder-mode: thumb
0008724c  83 68                                            ldr r3, [r0, #8]
0008724e  3b b1                                            cbz r3, #0x87260
00087250  80 b5                                            push {r7, lr}
00087252  6f 46                                            mov r7, sp
00087254  02 69                                            ldr r2, [r0, #0x10]
00087256  08 46                                            mov r0, r1
00087258  11 46                                            mov r1, r2
0008725a  98 47                                            blx r3
0008725c  bd e8 80 40                                      pop.w {r7, lr}
00087260  00 20                                            movs r0, #0
00087262  70 47                                            bx lr

; FUNCTION 0x00087264, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP14ir_emit_vertex
; demangled: ir_hierarchical_visitor::visit_leave(ir_emit_vertex*)
; decoder-mode: thumb
00087264  c3 68                                            ldr r3, [r0, #0xc]
00087266  3b b1                                            cbz r3, #0x87278
00087268  80 b5                                            push {r7, lr}
0008726a  6f 46                                            mov r7, sp
0008726c  42 69                                            ldr r2, [r0, #0x14]
0008726e  08 46                                            mov r0, r1
00087270  11 46                                            mov r1, r2
00087272  98 47                                            blx r3
00087274  bd e8 80 40                                      pop.w {r7, lr}
00087278  00 20                                            movs r0, #0
0008727a  70 47                                            bx lr

; FUNCTION 0x0008727c, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_enterEP16ir_end_primitive
; demangled: ir_hierarchical_visitor::visit_enter(ir_end_primitive*)
; decoder-mode: thumb
0008727c  83 68                                            ldr r3, [r0, #8]
0008727e  3b b1                                            cbz r3, #0x87290
00087280  80 b5                                            push {r7, lr}
00087282  6f 46                                            mov r7, sp
00087284  02 69                                            ldr r2, [r0, #0x10]
00087286  08 46                                            mov r0, r1
00087288  11 46                                            mov r1, r2
0008728a  98 47                                            blx r3
0008728c  bd e8 80 40                                      pop.w {r7, lr}
00087290  00 20                                            movs r0, #0
00087292  70 47                                            bx lr

; FUNCTION 0x00087294, declared_size=24, range_size=24, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor11visit_leaveEP16ir_end_primitive
; demangled: ir_hierarchical_visitor::visit_leave(ir_end_primitive*)
; decoder-mode: thumb
00087294  c3 68                                            ldr r3, [r0, #0xc]
00087296  3b b1                                            cbz r3, #0x872a8
00087298  80 b5                                            push {r7, lr}
0008729a  6f 46                                            mov r7, sp
0008729c  42 69                                            ldr r2, [r0, #0x14]
0008729e  08 46                                            mov r0, r1
000872a0  11 46                                            mov r1, r2
000872a2  98 47                                            blx r3
000872a4  bd e8 80 40                                      pop.w {r7, lr}
000872a8  00 20                                            movs r0, #0
000872aa  70 47                                            bx lr

; FUNCTION 0x000872ac, declared_size=6, range_size=6, mode=thumb
; class-group: ir_hierarchical_visitor
; alias: _ZN23ir_hierarchical_visitor3runEP9exec_list
; demangled: ir_hierarchical_visitor::run(exec_list*)
; decoder-mode: thumb
000872ac  01 22                                            movs r2, #1
000872ae  29 f0 5b bd                                      b.w #0xb0d68
