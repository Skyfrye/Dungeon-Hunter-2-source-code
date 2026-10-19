; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000816a0, declared_size=48, range_size=48, mode=thumb
; class-group: ir_dereference_variable
; alias: _ZN23ir_dereference_variableC1EP11ir_variable
; demangled: ir_dereference_variable::ir_dereference_variable(ir_variable*)
; alias: _ZN23ir_dereference_variableC2EP11ir_variable
; demangled: ir_dereference_variable::ir_dereference_variable(ir_variable*)
; decoder-mode: thumb
000816a0  b0 b5                                            push {r4, r5, r7, lr}
000816a2  02 af                                            add r7, sp, #8
000816a4  0c 46                                            mov r4, r1
000816a6  05 46                                            mov r5, r0
000816a8  20 46                                            mov r0, r4
000816aa  b1 f7 fe ea                                      blx #0x32ca8
000816ae  07 49                                            ldr r1, [pc, #0x1c]
000816b0  02 22                                            movs r2, #2
000816b2  ea 60                                            str r2, [r5, #0xc]
000816b4  79 44                                            add r1, pc
000816b6  c5 e9 05 04                                      strd r0, r4, [r5, #0x14]
000816ba  09 68                                            ldr r1, [r1]
000816bc  01 f1 08 00                                      add.w r0, r1, #8
000816c0  28 60                                            str r0, [r5]
000816c2  20 69                                            ldr r0, [r4, #0x10]
000816c4  28 61                                            str r0, [r5, #0x10]
000816c6  28 46                                            mov r0, r5
000816c8  b0 bd                                            pop {r4, r5, r7, pc}
000816ca  00 bf                                            nop
000816cc  c8 b2                                            uxtb r0, r1
000816ce  05 00                                            movs r5, r0

; FUNCTION 0x00082fbc, declared_size=76, range_size=76, mode=thumb
; class-group: ir_dereference_variable
; alias: _ZNK23ir_dereference_variable5cloneEPvP10hash_table
; demangled: ir_dereference_variable::clone(void*, hash_table*) const
; decoder-mode: thumb
00082fbc  f0 b5                                            push {r4, r5, r6, r7, lr}
00082fbe  03 af                                            add r7, sp, #0xc
00082fc0  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00082fc4  0e 46                                            mov r6, r1
00082fc6  04 46                                            mov r4, r0
00082fc8  2a b1                                            cbz r2, #0x82fd6
00082fca  a1 69                                            ldr r1, [r4, #0x18]
00082fcc  10 46                                            mov r0, r2
00082fce  af f7 90 eb                                      blx #0x326f0
00082fd2  05 46                                            mov r5, r0
00082fd4  05 b9                                            cbnz r5, #0x82fd8
00082fd6  a5 69                                            ldr r5, [r4, #0x18]
00082fd8  30 46                                            mov r0, r6
00082fda  1c 21                                            movs r1, #0x1c
00082fdc  af f7 a0 eb                                      blx #0x32720
00082fe0  06 46                                            mov r6, r0
00082fe2  08 48                                            ldr r0, [pc, #0x20]
00082fe4  78 44                                            add r0, pc
00082fe6  01 68                                            ldr r1, [r0]
00082fe8  30 46                                            mov r0, r6
00082fea  af f7 8a ec                                      blx #0x32900
00082fee  30 46                                            mov r0, r6
00082ff0  29 46                                            mov r1, r5
00082ff2  af f7 e0 ec                                      blx #0x329b4
00082ff6  60 69                                            ldr r0, [r4, #0x14]
00082ff8  70 61                                            str r0, [r6, #0x14]
00082ffa  30 46                                            mov r0, r6
00082ffc  5d f8 04 bb                                      ldr fp, [sp], #4
00083000  f0 bd                                            pop {r4, r5, r6, r7, pc}
00083002  00 bf                                            nop
00083004  54 95                                            str r5, [sp, #0x150]
00083006  05 00                                            movs r5, r0

; FUNCTION 0x0008377a, declared_size=22, range_size=22, mode=thumb
; class-group: ir_dereference_variable
; alias: _ZN23ir_dereference_variableD0Ev
; demangled: ir_dereference_variable::~ir_dereference_variable()
; decoder-mode: thumb
0008377a  d0 b5                                            push {r4, r6, r7, lr}
0008377c  02 af                                            add r7, sp, #8
0008377e  00 21                                            movs r1, #0
00083780  04 46                                            mov r4, r0
00083782  af f7 be e8                                      blx #0x32900
00083786  20 46                                            mov r0, r4
00083788  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008378c  2d f0 6c b9                                      b.w #0xb0a68

; FUNCTION 0x00083790, declared_size=12, range_size=12, mode=thumb
; class-group: ir_dereference_variable
; alias: _ZN23ir_dereference_variable6acceptEP10ir_visitor
; demangled: ir_dereference_variable::accept(ir_visitor*)
; decoder-mode: thumb
00083790  02 46                                            mov r2, r0
00083792  08 68                                            ldr r0, [r1]
00083794  43 6a                                            ldr r3, [r0, #0x24]
00083796  08 46                                            mov r0, r1
00083798  11 46                                            mov r1, r2
0008379a  18 47                                            bx r3

; FUNCTION 0x0008379c, declared_size=4, range_size=4, mode=thumb
; class-group: ir_dereference_variable
; alias: _ZNK23ir_dereference_variable19variable_referencedEv
; demangled: ir_dereference_variable::variable_referenced() const
; decoder-mode: thumb
0008379c  80 69                                            ldr r0, [r0, #0x18]
0008379e  70 47                                            bx lr

; FUNCTION 0x000837a0, declared_size=4, range_size=4, mode=thumb
; class-group: ir_dereference_variable
; alias: _ZN23ir_dereference_variable25whole_variable_referencedEv
; demangled: ir_dereference_variable::whole_variable_referenced()
; decoder-mode: thumb
000837a0  80 69                                            ldr r0, [r0, #0x18]
000837a2  70 47                                            bx lr

; FUNCTION 0x00085d34, declared_size=72, range_size=72, mode=thumb
; class-group: ir_dereference_variable
; alias: _ZN23ir_dereference_variable25constant_expression_valueEP10hash_table
; demangled: ir_dereference_variable::constant_expression_value(hash_table*)
; decoder-mode: thumb
00085d34  b0 b5                                            push {r4, r5, r7, lr}
00085d36  02 af                                            add r7, sp, #8
00085d38  04 46                                            mov r4, r0
00085d3a  0a 46                                            mov r2, r1
00085d3c  a1 69                                            ldr r1, [r4, #0x18]
00085d3e  79 b1                                            cbz r1, #0x85d60
00085d40  2a b1                                            cbz r2, #0x85d4e
00085d42  10 46                                            mov r0, r2
00085d44  ac f7 d4 ec                                      blx #0x326f0
00085d48  00 b1                                            cbz r0, #0x85d4c
00085d4a  b0 bd                                            pop {r4, r5, r7, pc}
00085d4c  a1 69                                            ldr r1, [r4, #0x18]
00085d4e  88 69                                            ldr r0, [r1, #0x18]
00085d50  00 f4 f0 50                                      and r0, r0, #0x1e00
00085d54  90 f4 00 7f                                      teq.w r0, #0x200
00085d58  1c bf                                            itt ne
00085d5a  4c 6b                                            ldrne r4, [r1, #0x34]
00085d5c  00 2c                                            cmpne r4, #0
00085d5e  01 d1                                            bne #0x85d64
00085d60  00 20                                            movs r0, #0
00085d62  b0 bd                                            pop {r4, r5, r7, pc}
00085d64  20 68                                            ldr r0, [r4]
00085d66  05 69                                            ldr r5, [r0, #0x10]
00085d68  08 46                                            mov r0, r1
00085d6a  ac f7 de ee                                      blx #0x32b28
00085d6e  01 46                                            mov r1, r0
00085d70  20 46                                            mov r0, r4
00085d72  00 22                                            movs r2, #0
00085d74  2b 46                                            mov r3, r5
00085d76  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
00085d7a  18 47                                            bx r3

; FUNCTION 0x00086352, declared_size=28, range_size=28, mode=thumb
; class-group: ir_dereference_variable
; alias: _ZN23ir_dereference_variable6equalsEP14ir_instruction12ir_node_type
; demangled: ir_dereference_variable::equals(ir_instruction*, ir_node_type)
; decoder-mode: thumb
00086352  02 46                                            mov r2, r0
00086354  00 20                                            movs r0, #0
00086356  49 b1                                            cbz r1, #0x8636c
00086358  cb 68                                            ldr r3, [r1, #0xc]
0008635a  02 2b                                            cmp r3, #2
0008635c  18 bf                                            it ne
0008635e  70 47                                            bxne lr
00086360  89 69                                            ldr r1, [r1, #0x18]
00086362  00 20                                            movs r0, #0
00086364  92 69                                            ldr r2, [r2, #0x18]
00086366  8a 42                                            cmp r2, r1
00086368  08 bf                                            it eq
0008636a  01 20                                            moveq r0, #1
0008636c  70 47                                            bx lr

; FUNCTION 0x00087634, declared_size=12, range_size=12, mode=thumb
; class-group: ir_dereference_variable
; alias: _ZN23ir_dereference_variable6acceptEP23ir_hierarchical_visitor
; demangled: ir_dereference_variable::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
00087634  02 46                                            mov r2, r0
00087636  08 68                                            ldr r0, [r1]
00087638  83 69                                            ldr r3, [r0, #0x18]
0008763a  08 46                                            mov r0, r1
0008763c  11 46                                            mov r1, r2
0008763e  18 47                                            bx r3
