; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000834cc, declared_size=60, range_size=60, mode=thumb
; class-group: ir_typedecl_statement
; alias: _ZNK21ir_typedecl_statement5cloneEPvP10hash_table
; demangled: ir_typedecl_statement::clone(void*, hash_table*) const
; decoder-mode: thumb
000834cc  b0 b5                                            push {r4, r5, r7, lr}
000834ce  02 af                                            add r7, sp, #8
000834d0  04 46                                            mov r4, r0
000834d2  08 46                                            mov r0, r1
000834d4  14 21                                            movs r1, #0x14
000834d6  af f7 24 e9                                      blx #0x32720
000834da  05 46                                            mov r5, r0
000834dc  08 48                                            ldr r0, [pc, #0x20]
000834de  78 44                                            add r0, pc
000834e0  01 68                                            ldr r1, [r0]
000834e2  28 46                                            mov r0, r5
000834e4  af f7 0c ea                                      blx #0x32900
000834e8  06 48                                            ldr r0, [pc, #0x18]
000834ea  11 22                                            movs r2, #0x11
000834ec  21 69                                            ldr r1, [r4, #0x10]
000834ee  78 44                                            add r0, pc
000834f0  00 68                                            ldr r0, [r0]
000834f2  08 30                                            adds r0, #8
000834f4  28 60                                            str r0, [r5]
000834f6  28 46                                            mov r0, r5
000834f8  c5 e9 03 21                                      strd r2, r1, [r5, #0xc]
000834fc  b0 bd                                            pop {r4, r5, r7, pc}
000834fe  00 bf                                            nop
00083500  5a 90                                            str r0, [sp, #0x168]
00083502  05 00                                            movs r5, r0
00083504  92 90                                            str r0, [sp, #0x248]
00083506  05 00                                            movs r5, r0

; FUNCTION 0x000836d0, declared_size=22, range_size=22, mode=thumb
; class-group: ir_typedecl_statement
; alias: _ZN21ir_typedecl_statementD0Ev
; demangled: ir_typedecl_statement::~ir_typedecl_statement()
; decoder-mode: thumb
000836d0  d0 b5                                            push {r4, r6, r7, lr}
000836d2  02 af                                            add r7, sp, #8
000836d4  00 21                                            movs r1, #0
000836d6  04 46                                            mov r4, r0
000836d8  af f7 12 e9                                      blx #0x32900
000836dc  20 46                                            mov r0, r4
000836de  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000836e2  2d f0 c1 b9                                      b.w #0xb0a68

; FUNCTION 0x000836e6, declared_size=12, range_size=12, mode=thumb
; class-group: ir_typedecl_statement
; alias: _ZN21ir_typedecl_statement6acceptEP10ir_visitor
; demangled: ir_typedecl_statement::accept(ir_visitor*)
; decoder-mode: thumb
000836e6  02 46                                            mov r2, r0
000836e8  08 68                                            ldr r0, [r1]
000836ea  43 6d                                            ldr r3, [r0, #0x54]
000836ec  08 46                                            mov r0, r1
000836ee  11 46                                            mov r1, r2
000836f0  18 47                                            bx r3

; FUNCTION 0x000878ec, declared_size=12, range_size=12, mode=thumb
; class-group: ir_typedecl_statement
; alias: _ZN21ir_typedecl_statement6acceptEP23ir_hierarchical_visitor
; demangled: ir_typedecl_statement::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
000878ec  02 46                                            mov r2, r0
000878ee  08 68                                            ldr r0, [r1]
000878f0  43 69                                            ldr r3, [r0, #0x14]
000878f2  08 46                                            mov r0, r1
000878f4  11 46                                            mov r1, r2
000878f6  18 47                                            bx r3
