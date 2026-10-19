; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00083490, declared_size=60, range_size=60, mode=thumb
; class-group: ir_precision_statement
; alias: _ZNK22ir_precision_statement5cloneEPvP10hash_table
; demangled: ir_precision_statement::clone(void*, hash_table*) const
; decoder-mode: thumb
00083490  b0 b5                                            push {r4, r5, r7, lr}
00083492  02 af                                            add r7, sp, #8
00083494  04 46                                            mov r4, r0
00083496  08 46                                            mov r0, r1
00083498  14 21                                            movs r1, #0x14
0008349a  af f7 42 e9                                      blx #0x32720
0008349e  05 46                                            mov r5, r0
000834a0  08 48                                            ldr r0, [pc, #0x20]
000834a2  78 44                                            add r0, pc
000834a4  01 68                                            ldr r1, [r0]
000834a6  28 46                                            mov r0, r5
000834a8  af f7 2a ea                                      blx #0x32900
000834ac  06 48                                            ldr r0, [pc, #0x18]
000834ae  10 22                                            movs r2, #0x10
000834b0  21 69                                            ldr r1, [r4, #0x10]
000834b2  78 44                                            add r0, pc
000834b4  00 68                                            ldr r0, [r0]
000834b6  08 30                                            adds r0, #8
000834b8  28 60                                            str r0, [r5]
000834ba  28 46                                            mov r0, r5
000834bc  c5 e9 03 21                                      strd r2, r1, [r5, #0xc]
000834c0  b0 bd                                            pop {r4, r5, r7, pc}
000834c2  00 bf                                            nop
000834c4  96 90                                            str r0, [sp, #0x258]
000834c6  05 00                                            movs r5, r0
000834c8  ca 90                                            str r0, [sp, #0x328]
000834ca  05 00                                            movs r5, r0

; FUNCTION 0x000836ae, declared_size=22, range_size=22, mode=thumb
; class-group: ir_precision_statement
; alias: _ZN22ir_precision_statementD0Ev
; demangled: ir_precision_statement::~ir_precision_statement()
; decoder-mode: thumb
000836ae  d0 b5                                            push {r4, r6, r7, lr}
000836b0  02 af                                            add r7, sp, #8
000836b2  00 21                                            movs r1, #0
000836b4  04 46                                            mov r4, r0
000836b6  af f7 24 e9                                      blx #0x32900
000836ba  20 46                                            mov r0, r4
000836bc  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000836c0  2d f0 d2 b9                                      b.w #0xb0a68

; FUNCTION 0x000836c4, declared_size=12, range_size=12, mode=thumb
; class-group: ir_precision_statement
; alias: _ZN22ir_precision_statement6acceptEP10ir_visitor
; demangled: ir_precision_statement::accept(ir_visitor*)
; decoder-mode: thumb
000836c4  02 46                                            mov r2, r0
000836c6  08 68                                            ldr r0, [r1]
000836c8  03 6d                                            ldr r3, [r0, #0x50]
000836ca  08 46                                            mov r0, r1
000836cc  11 46                                            mov r1, r2
000836ce  18 47                                            bx r3

; FUNCTION 0x000878e0, declared_size=12, range_size=12, mode=thumb
; class-group: ir_precision_statement
; alias: _ZN22ir_precision_statement6acceptEP23ir_hierarchical_visitor
; demangled: ir_precision_statement::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
000878e0  02 46                                            mov r2, r0
000878e2  08 68                                            ldr r0, [r1]
000878e4  03 69                                            ldr r3, [r0, #0x10]
000878e6  08 46                                            mov r0, r1
000878e8  11 46                                            mov r1, r2
000878ea  18 47                                            bx r3
