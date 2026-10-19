; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000a4260, declared_size=56, range_size=56, mode=thumb
; class-group: ir_variable_replacement_visitor
; alias: _ZN31ir_variable_replacement_visitor13replace_derefEPP14ir_dereference
; demangled: ir_variable_replacement_visitor::replace_deref(ir_dereference**)
; decoder-mode: thumb
000a4260  f0 b5                                            push {r4, r5, r6, r7, lr}
000a4262  03 af                                            add r7, sp, #0xc
000a4264  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000a4268  0c 46                                            mov r4, r1
000a426a  01 46                                            mov r1, r0
000a426c  20 68                                            ldr r0, [r4]
000a426e  80 b1                                            cbz r0, #0xa4292
000a4270  c2 68                                            ldr r2, [r0, #0xc]
000a4272  02 2a                                            cmp r2, #2
000a4274  02 bf                                            ittt eq
000a4276  ca 69                                            ldreq r2, [r1, #0x1c]
000a4278  83 69                                            ldreq r3, [r0, #0x18]
000a427a  93 42                                            cmpeq r3, r2
000a427c  09 d1                                            bne #0xa4292
000a427e  0d 6a                                            ldr r5, [r1, #0x20]
000a4280  29 68                                            ldr r1, [r5]
000a4282  0e 69                                            ldr r6, [r1, #0x10]
000a4284  8e f7 50 ec                                      blx #0x32b28
000a4288  01 46                                            mov r1, r0
000a428a  28 46                                            mov r0, r5
000a428c  00 22                                            movs r2, #0
000a428e  b0 47                                            blx r6
000a4290  20 60                                            str r0, [r4]
000a4292  5d f8 04 bb                                      ldr fp, [sp], #4
000a4296  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x000a4298, declared_size=76, range_size=76, mode=thumb
; class-group: ir_variable_replacement_visitor
; alias: _ZN31ir_variable_replacement_visitor14replace_rvalueEPP9ir_rvalue
; demangled: ir_variable_replacement_visitor::replace_rvalue(ir_rvalue**)
; decoder-mode: thumb
000a4298  d0 b5                                            push {r4, r6, r7, lr}
000a429a  02 af                                            add r7, sp, #8
000a429c  82 b0                                            sub sp, #8
000a429e  0c 46                                            mov r4, r1
000a42a0  0e 49                                            ldr r1, [pc, #0x38]
000a42a2  79 44                                            add r1, pc
000a42a4  09 68                                            ldr r1, [r1]
000a42a6  09 68                                            ldr r1, [r1]
000a42a8  01 91                                            str r1, [sp, #4]
000a42aa  21 68                                            ldr r1, [r4]
000a42ac  59 b1                                            cbz r1, #0xa42c6
000a42ae  ca 68                                            ldr r2, [r1, #0xc]
000a42b0  03 2a                                            cmp r2, #3
000a42b2  28 bf                                            it hs
000a42b4  00 21                                            movhs r1, #0
000a42b6  00 29                                            cmp r1, #0
000a42b8  00 91                                            str r1, [sp]
000a42ba  04 d0                                            beq #0xa42c6
000a42bc  69 46                                            mov r1, sp
000a42be  90 f7 3c ef                                      blx #0x35138
000a42c2  00 98                                            ldr r0, [sp]
000a42c4  20 60                                            str r0, [r4]
000a42c6  06 48                                            ldr r0, [pc, #0x18]
000a42c8  01 99                                            ldr r1, [sp, #4]
000a42ca  78 44                                            add r0, pc
000a42cc  00 68                                            ldr r0, [r0]
000a42ce  00 68                                            ldr r0, [r0]
000a42d0  40 1a                                            subs r0, r0, r1
000a42d2  04 bf                                            itt eq
000a42d4  02 b0                                            addeq sp, #8
000a42d6  d0 bd                                            popeq {r4, r6, r7, pc}
000a42d8  8d f7 c2 ee                                      blx #0x32060
000a42dc  12 82                                            strh r2, [r2, #0x10]
000a42de  03 00                                            movs r3, r0
000a42e0  ea 81                                            strh r2, [r5, #0xe]
000a42e2  03 00                                            movs r3, r0

; FUNCTION 0x000a42e4, declared_size=14, range_size=14, mode=thumb
; class-group: ir_variable_replacement_visitor
; alias: _ZN31ir_variable_replacement_visitor11visit_leaveEP10ir_texture
; demangled: ir_variable_replacement_visitor::visit_leave(ir_texture*)
; decoder-mode: thumb
000a42e4  80 b5                                            push {r7, lr}
000a42e6  6f 46                                            mov r7, sp
000a42e8  1c 31                                            adds r1, #0x1c
000a42ea  90 f7 26 ef                                      blx #0x35138
000a42ee  00 20                                            movs r0, #0
000a42f0  80 bd                                            pop {r7, pc}

; FUNCTION 0x000a42f2, declared_size=14, range_size=14, mode=thumb
; class-group: ir_variable_replacement_visitor
; alias: _ZN31ir_variable_replacement_visitor11visit_leaveEP20ir_dereference_array
; demangled: ir_variable_replacement_visitor::visit_leave(ir_dereference_array*)
; decoder-mode: thumb
000a42f2  80 b5                                            push {r7, lr}
000a42f4  6f 46                                            mov r7, sp
000a42f6  18 31                                            adds r1, #0x18
000a42f8  90 f7 24 ef                                      blx #0x35144
000a42fc  00 20                                            movs r0, #0
000a42fe  80 bd                                            pop {r7, pc}

; FUNCTION 0x000a4300, declared_size=14, range_size=14, mode=thumb
; class-group: ir_variable_replacement_visitor
; alias: _ZN31ir_variable_replacement_visitor11visit_leaveEP21ir_dereference_record
; demangled: ir_variable_replacement_visitor::visit_leave(ir_dereference_record*)
; decoder-mode: thumb
000a4300  80 b5                                            push {r7, lr}
000a4302  6f 46                                            mov r7, sp
000a4304  18 31                                            adds r1, #0x18
000a4306  90 f7 1e ef                                      blx #0x35144
000a430a  00 20                                            movs r0, #0
000a430c  80 bd                                            pop {r7, pc}

; FUNCTION 0x000a4310, declared_size=132, range_size=132, mode=thumb
; class-group: ir_variable_replacement_visitor
; alias: _ZN31ir_variable_replacement_visitor11visit_leaveEP7ir_call
; demangled: ir_variable_replacement_visitor::visit_leave(ir_call*)
; decoder-mode: thumb
000a4310  f0 b5                                            push {r4, r5, r6, r7, lr}
000a4312  03 af                                            add r7, sp, #0xc
000a4314  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000a4318  82 b0                                            sub sp, #8
000a431a  04 46                                            mov r4, r0
000a431c  1b 48                                            ldr r0, [pc, #0x6c]
000a431e  78 44                                            add r0, pc
000a4320  00 68                                            ldr r0, [r0]
000a4322  00 68                                            ldr r0, [r0]
000a4324  01 90                                            str r0, [sp, #4]
000a4326  8e 69                                            ldr r6, [r1, #0x18]
000a4328  00 2e                                            cmp r6, #0
000a432a  18 bf                                            it ne
000a432c  04 3e                                            subne r6, #4
000a432e  70 68                                            ldr r0, [r6, #4]
000a4330  e8 b1                                            cbz r0, #0xa436e
000a4332  04 38                                            subs r0, #4
000a4334  1b d0                                            beq #0xa436e
000a4336  e8 46                                            mov r8, sp
000a4338  05 46                                            mov r5, r0
000a433a  20 46                                            mov r0, r4
000a433c  41 46                                            mov r1, r8
000a433e  00 96                                            str r6, [sp]
000a4340  90 f7 00 ef                                      blx #0x35144
000a4344  00 98                                            ldr r0, [sp]
000a4346  b0 42                                            cmp r0, r6
000a4348  0a d0                                            beq #0xa4360
000a434a  b1 68                                            ldr r1, [r6, #8]
000a434c  00 28                                            cmp r0, #0
000a434e  18 bf                                            it ne
000a4350  04 30                                            addne r0, #4
000a4352  41 60                                            str r1, [r0, #4]
000a4354  71 68                                            ldr r1, [r6, #4]
000a4356  01 60                                            str r1, [r0]
000a4358  b1 68                                            ldr r1, [r6, #8]
000a435a  08 60                                            str r0, [r1]
000a435c  71 68                                            ldr r1, [r6, #4]
000a435e  48 60                                            str r0, [r1, #4]
000a4360  68 68                                            ldr r0, [r5, #4]
000a4362  2e 46                                            mov r6, r5
000a4364  00 28                                            cmp r0, #0
000a4366  18 bf                                            it ne
000a4368  04 38                                            subne r0, #4
000a436a  00 28                                            cmp r0, #0
000a436c  e4 d1                                            bne #0xa4338
000a436e  08 48                                            ldr r0, [pc, #0x20]
000a4370  01 99                                            ldr r1, [sp, #4]
000a4372  78 44                                            add r0, pc
000a4374  00 68                                            ldr r0, [r0]
000a4376  00 68                                            ldr r0, [r0]
000a4378  40 1a                                            subs r0, r0, r1
000a437a  01 bf                                            itttt eq
000a437c  00 20                                            moveq r0, #0
000a437e  02 b0                                            addeq sp, #8
000a4380  5d f8 04 8b                                      ldreq r8, [sp], #4
000a4384  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000a4386  8d f7 6c ee                                      blx #0x32060
000a438a  00 bf                                            nop
000a438c  96 81                                            strh r6, [r2, #0xc]
000a438e  03 00                                            movs r3, r0
000a4390  42 81                                            strh r2, [r0, #0xa]
000a4392  03 00                                            movs r3, r0

; FUNCTION 0x000a4394, declared_size=2, range_size=2, mode=thumb
; class-group: ir_variable_replacement_visitor
; alias: _ZN31ir_variable_replacement_visitorD2Ev
; demangled: ir_variable_replacement_visitor::~ir_variable_replacement_visitor()
; decoder-mode: thumb
000a4394  70 47                                            bx lr

; FUNCTION 0x000a4396, declared_size=4, range_size=4, mode=thumb
; class-group: ir_variable_replacement_visitor
; alias: _ZN31ir_variable_replacement_visitorD0Ev
; demangled: ir_variable_replacement_visitor::~ir_variable_replacement_visitor()
; decoder-mode: thumb
000a4396  0c f0 df bc                                      b.w #0xb0d58
