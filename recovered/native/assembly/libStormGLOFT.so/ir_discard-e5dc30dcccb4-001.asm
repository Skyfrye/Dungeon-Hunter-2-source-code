; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00082c70, declared_size=76, range_size=76, mode=thumb
; class-group: ir_discard
; alias: _ZNK10ir_discard5cloneEPvP10hash_table
; demangled: ir_discard::clone(void*, hash_table*) const
; decoder-mode: thumb
00082c70  b0 b5                                            push {r4, r5, r7, lr}
00082c72  02 af                                            add r7, sp, #8
00082c74  00 69                                            ldr r0, [r0, #0x10]
00082c76  0d 46                                            mov r5, r1
00082c78  28 b1                                            cbz r0, #0x82c86
00082c7a  01 68                                            ldr r1, [r0]
00082c7c  0b 69                                            ldr r3, [r1, #0x10]
00082c7e  29 46                                            mov r1, r5
00082c80  98 47                                            blx r3
00082c82  04 46                                            mov r4, r0
00082c84  00 e0                                            b #0x82c88
00082c86  00 24                                            movs r4, #0
00082c88  28 46                                            mov r0, r5
00082c8a  14 21                                            movs r1, #0x14
00082c8c  af f7 48 ed                                      blx #0x32720
00082c90  05 46                                            mov r5, r0
00082c92  08 48                                            ldr r0, [pc, #0x20]
00082c94  78 44                                            add r0, pc
00082c96  01 68                                            ldr r1, [r0]
00082c98  28 46                                            mov r0, r5
00082c9a  af f7 32 ee                                      blx #0x32900
00082c9e  06 48                                            ldr r0, [pc, #0x18]
00082ca0  78 44                                            add r0, pc
00082ca2  00 68                                            ldr r0, [r0]
00082ca4  08 30                                            adds r0, #8
00082ca6  28 60                                            str r0, [r5]
00082ca8  12 20                                            movs r0, #0x12
00082caa  c5 e9 03 04                                      strd r0, r4, [r5, #0xc]
00082cae  28 46                                            mov r0, r5
00082cb0  b0 bd                                            pop {r4, r5, r7, pc}
00082cb2  00 bf                                            nop
00082cb4  a4 98                                            ldr r0, [sp, #0x290]
00082cb6  05 00                                            movs r5, r0
00082cb8  c0 98                                            ldr r0, [sp, #0x300]
00082cba  05 00                                            movs r5, r0

; FUNCTION 0x0008364c, declared_size=22, range_size=22, mode=thumb
; class-group: ir_discard
; alias: _ZN10ir_discardD0Ev
; demangled: ir_discard::~ir_discard()
; decoder-mode: thumb
0008364c  d0 b5                                            push {r4, r6, r7, lr}
0008364e  02 af                                            add r7, sp, #8
00083650  00 21                                            movs r1, #0
00083652  04 46                                            mov r4, r0
00083654  af f7 54 e9                                      blx #0x32900
00083658  20 46                                            mov r0, r4
0008365a  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008365e  2d f0 03 ba                                      b.w #0xb0a68

; FUNCTION 0x00083662, declared_size=12, range_size=12, mode=thumb
; class-group: ir_discard
; alias: _ZN10ir_discard6acceptEP10ir_visitor
; demangled: ir_discard::accept(ir_visitor*)
; decoder-mode: thumb
00083662  02 46                                            mov r2, r0
00083664  08 68                                            ldr r0, [r1]
00083666  03 6c                                            ldr r3, [r0, #0x40]
00083668  08 46                                            mov r0, r1
0008366a  11 46                                            mov r1, r2
0008366c  18 47                                            bx r3

; FUNCTION 0x000877f8, declared_size=58, range_size=58, mode=thumb
; class-group: ir_discard
; alias: _ZN10ir_discard6acceptEP23ir_hierarchical_visitor
; demangled: ir_discard::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
000877f8  b0 b5                                            push {r4, r5, r7, lr}
000877fa  02 af                                            add r7, sp, #8
000877fc  0d 46                                            mov r5, r1
000877fe  04 46                                            mov r4, r0
00087800  28 68                                            ldr r0, [r5]
00087802  21 46                                            mov r1, r4
00087804  42 6f                                            ldr r2, [r0, #0x74]
00087806  28 46                                            mov r0, r5
00087808  90 47                                            blx r2
0008780a  18 b1                                            cbz r0, #0x87814
0008780c  01 28                                            cmp r0, #1
0008780e  08 bf                                            it eq
00087810  00 20                                            moveq r0, #0
00087812  b0 bd                                            pop {r4, r5, r7, pc}
00087814  20 69                                            ldr r0, [r4, #0x10]
00087816  28 b1                                            cbz r0, #0x87824
00087818  01 68                                            ldr r1, [r0]
0008781a  ca 68                                            ldr r2, [r1, #0xc]
0008781c  29 46                                            mov r1, r5
0008781e  90 47                                            blx r2
00087820  00 28                                            cmp r0, #0
00087822  f3 d1                                            bne #0x8780c
00087824  28 68                                            ldr r0, [r5]
00087826  21 46                                            mov r1, r4
00087828  82 6f                                            ldr r2, [r0, #0x78]
0008782a  28 46                                            mov r0, r5
0008782c  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
00087830  10 47                                            bx r2
