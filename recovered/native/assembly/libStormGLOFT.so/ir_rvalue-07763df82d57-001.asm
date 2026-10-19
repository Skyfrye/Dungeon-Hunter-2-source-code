; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00080244, declared_size=40, range_size=40, mode=thumb
; class-group: ir_rvalue
; alias: _ZN9ir_rvalueC1E12ir_node_type14glsl_precision
; demangled: ir_rvalue::ir_rvalue(ir_node_type, glsl_precision)
; alias: _ZN9ir_rvalueC2E12ir_node_type14glsl_precision
; demangled: ir_rvalue::ir_rvalue(ir_node_type, glsl_precision)
; decoder-mode: thumb
00080244  07 4b                                            ldr r3, [pc, #0x1c]
00080246  df f8 20 c0                                      ldr.w ip, [pc, #0x20]
0008024a  7b 44                                            add r3, pc
0008024c  c1 60                                            str r1, [r0, #0xc]
0008024e  fc 44                                            add ip, pc
00080250  42 61                                            str r2, [r0, #0x14]
00080252  1b 68                                            ldr r3, [r3]
00080254  dc f8 00 10                                      ldr.w r1, [ip]
00080258  1a 68                                            ldr r2, [r3]
0008025a  08 31                                            adds r1, #8
0008025c  01 60                                            str r1, [r0]
0008025e  02 61                                            str r2, [r0, #0x10]
00080260  70 47                                            bx lr
00080262  00 bf                                            nop
00080264  f2 c2                                            stm r2!, {r1, r4, r5, r6, r7}
00080266  05 00                                            movs r5, r0
00080268  1a c7                                            stm r7!, {r1, r3, r4}
0008026a  05 00                                            movs r5, r0

; FUNCTION 0x0008026c, declared_size=4, range_size=4, mode=thumb
; class-group: ir_rvalue
; alias: _ZNK9ir_rvalue7is_zeroEv
; demangled: ir_rvalue::is_zero() const
; decoder-mode: thumb
0008026c  00 20                                            movs r0, #0
0008026e  70 47                                            bx lr

; FUNCTION 0x00080270, declared_size=4, range_size=4, mode=thumb
; class-group: ir_rvalue
; alias: _ZNK9ir_rvalue6is_oneEv
; demangled: ir_rvalue::is_one() const
; decoder-mode: thumb
00080270  00 20                                            movs r0, #0
00080272  70 47                                            bx lr

; FUNCTION 0x00080274, declared_size=4, range_size=4, mode=thumb
; class-group: ir_rvalue
; alias: _ZNK9ir_rvalue15is_negative_oneEv
; demangled: ir_rvalue::is_negative_one() const
; decoder-mode: thumb
00080274  00 20                                            movs r0, #0
00080276  70 47                                            bx lr

; FUNCTION 0x00080278, declared_size=4, range_size=4, mode=thumb
; class-group: ir_rvalue
; alias: _ZNK9ir_rvalue8is_basisEv
; demangled: ir_rvalue::is_basis() const
; decoder-mode: thumb
00080278  00 20                                            movs r0, #0
0008027a  70 47                                            bx lr

; FUNCTION 0x00081fa8, declared_size=68, range_size=68, mode=thumb
; class-group: ir_rvalue
; alias: _ZN9ir_rvalue11error_valueEPv
; demangled: ir_rvalue::error_value(void*)
; decoder-mode: thumb
00081fa8  d0 b5                                            push {r4, r6, r7, lr}
00081faa  02 af                                            add r7, sp, #8
00081fac  18 21                                            movs r1, #0x18
00081fae  b0 f7 b8 eb                                      blx #0x32720
00081fb2  04 46                                            mov r4, r0
00081fb4  0a 48                                            ldr r0, [pc, #0x28]
00081fb6  78 44                                            add r0, pc
00081fb8  01 68                                            ldr r1, [r0]
00081fba  20 46                                            mov r0, r4
00081fbc  b0 f7 a0 ec                                      blx #0x32900
00081fc0  08 48                                            ldr r0, [pc, #0x20]
00081fc2  03 22                                            movs r2, #3
00081fc4  08 49                                            ldr r1, [pc, #0x20]
00081fc6  04 f1 0c 03                                      add.w r3, r4, #0xc
00081fca  78 44                                            add r0, pc
00081fcc  79 44                                            add r1, pc
00081fce  00 68                                            ldr r0, [r0]
00081fd0  09 68                                            ldr r1, [r1]
00081fd2  08 30                                            adds r0, #8
00081fd4  20 60                                            str r0, [r4]
00081fd6  15 20                                            movs r0, #0x15
00081fd8  09 68                                            ldr r1, [r1]
00081fda  07 c3                                            stm r3!, {r0, r1, r2}
00081fdc  20 46                                            mov r0, r4
00081fde  d0 bd                                            pop {r4, r6, r7, pc}
00081fe0  82 a5                                            adr r5, #0x208
00081fe2  05 00                                            movs r5, r0
00081fe4  9e a9                                            add r1, sp, #0x278
00081fe6  05 00                                            movs r5, r0
00081fe8  70 a5                                            adr r5, #0x1c0
00081fea  05 00                                            movs r5, r0

; FUNCTION 0x000820f4, declared_size=50, range_size=50, mode=thumb
; class-group: ir_rvalue
; alias: _ZN9ir_rvalue21as_rvalue_to_saturateEv
; demangled: ir_rvalue::as_rvalue_to_saturate()
; decoder-mode: thumb
000820f4  d0 b5                                            push {r4, r6, r7, lr}
000820f6  02 af                                            add r7, sp, #8
000820f8  04 46                                            mov r4, r0
000820fa  94 b1                                            cbz r4, #0x82122
000820fc  e0 68                                            ldr r0, [r4, #0xc]
000820fe  04 28                                            cmp r0, #4
00082100  0f d1                                            bne #0x82122
00082102  20 46                                            mov r0, r4
00082104  00 f0 0f f8                                      bl #0x82126
00082108  18 b1                                            cbz r0, #0x82112
0008210a  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008210e  00 f0 27 b8                                      b.w #0x82160
00082112  20 46                                            mov r0, r4
00082114  00 f0 24 f8                                      bl #0x82160
00082118  18 b1                                            cbz r0, #0x82122
0008211a  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008211e  00 f0 02 b8                                      b.w #0x82126
00082122  00 20                                            movs r0, #0
00082124  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x000822b8, declared_size=12, range_size=12, mode=thumb
; class-group: ir_rvalue
; alias: _ZN9ir_rvalue6acceptEP10ir_visitor
; demangled: ir_rvalue::accept(ir_visitor*)
; decoder-mode: thumb
000822b8  02 46                                            mov r2, r0
000822ba  08 68                                            ldr r0, [r1]
000822bc  83 68                                            ldr r3, [r0, #8]
000822be  08 46                                            mov r0, r1
000822c0  11 46                                            mov r1, r2
000822c2  18 47                                            bx r3

; FUNCTION 0x000822c4, declared_size=4, range_size=4, mode=thumb
; class-group: ir_rvalue
; alias: _ZN9ir_rvalue25whole_variable_referencedEv
; demangled: ir_rvalue::whole_variable_referenced()
; decoder-mode: thumb
000822c4  00 20                                            movs r0, #0
000822c6  70 47                                            bx lr

; FUNCTION 0x000822c8, declared_size=4, range_size=4, mode=thumb
; class-group: ir_rvalue
; alias: _ZNK9ir_rvalue18is_uint16_constantEv
; demangled: ir_rvalue::is_uint16_constant() const
; decoder-mode: thumb
000822c8  00 20                                            movs r0, #0
000822ca  70 47                                            bx lr

; FUNCTION 0x00082aa8, declared_size=6, range_size=6, mode=thumb
; class-group: ir_rvalue
; alias: _ZNK9ir_rvalue5cloneEPvP10hash_table
; demangled: ir_rvalue::clone(void*, hash_table*) const
; decoder-mode: thumb
00082aa8  08 46                                            mov r0, r1
00082aaa  2e f0 2d b9                                      b.w #0xb0d08

; FUNCTION 0x0008366e, declared_size=22, range_size=22, mode=thumb
; class-group: ir_rvalue
; alias: _ZN9ir_rvalueD0Ev
; demangled: ir_rvalue::~ir_rvalue()
; decoder-mode: thumb
0008366e  d0 b5                                            push {r4, r6, r7, lr}
00083670  02 af                                            add r7, sp, #8
00083672  00 21                                            movs r1, #0
00083674  04 46                                            mov r4, r0
00083676  af f7 44 e9                                      blx #0x32900
0008367a  20 46                                            mov r0, r4
0008367c  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
00083680  2d f0 f2 b9                                      b.w #0xb0a68

; FUNCTION 0x00083684, declared_size=4, range_size=4, mode=thumb
; class-group: ir_rvalue
; alias: _ZNK9ir_rvalue9is_lvalueEv
; demangled: ir_rvalue::is_lvalue() const
; decoder-mode: thumb
00083684  00 20                                            movs r0, #0
00083686  70 47                                            bx lr

; FUNCTION 0x00083688, declared_size=4, range_size=4, mode=thumb
; class-group: ir_rvalue
; alias: _ZNK9ir_rvalue19variable_referencedEv
; demangled: ir_rvalue::variable_referenced() const
; decoder-mode: thumb
00083688  00 20                                            movs r0, #0
0008368a  70 47                                            bx lr

; FUNCTION 0x00083896, declared_size=4, range_size=4, mode=thumb
; class-group: ir_rvalue
; alias: _ZN9ir_rvalue25constant_expression_valueEP10hash_table
; demangled: ir_rvalue::constant_expression_value(hash_table*)
; decoder-mode: thumb
00083896  00 20                                            movs r0, #0
00083898  70 47                                            bx lr

; FUNCTION 0x00087370, declared_size=12, range_size=12, mode=thumb
; class-group: ir_rvalue
; alias: _ZN9ir_rvalue6acceptEP23ir_hierarchical_visitor
; demangled: ir_rvalue::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
00087370  02 46                                            mov r2, r0
00087372  08 68                                            ldr r0, [r1]
00087374  03 68                                            ldr r3, [r0]
00087376  08 46                                            mov r0, r1
00087378  11 46                                            mov r1, r2
0008737a  18 47                                            bx r3
