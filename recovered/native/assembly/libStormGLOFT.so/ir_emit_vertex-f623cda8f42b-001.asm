; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000878f8, declared_size=58, range_size=58, mode=thumb
; class-group: ir_emit_vertex
; alias: _ZN14ir_emit_vertex6acceptEP23ir_hierarchical_visitor
; demangled: ir_emit_vertex::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
000878f8  b0 b5                                            push {r4, r5, r7, lr}
000878fa  02 af                                            add r7, sp, #8
000878fc  0d 46                                            mov r5, r1
000878fe  04 46                                            mov r4, r0
00087900  28 68                                            ldr r0, [r5]
00087902  21 46                                            mov r1, r4
00087904  d0 f8 84 20                                      ldr.w r2, [r0, #0x84]
00087908  28 46                                            mov r0, r5
0008790a  90 47                                            blx r2
0008790c  28 b9                                            cbnz r0, #0x8791a
0008790e  20 69                                            ldr r0, [r4, #0x10]
00087910  01 68                                            ldr r1, [r0]
00087912  ca 68                                            ldr r2, [r1, #0xc]
00087914  29 46                                            mov r1, r5
00087916  90 47                                            blx r2
00087918  18 b1                                            cbz r0, #0x87922
0008791a  01 28                                            cmp r0, #1
0008791c  08 bf                                            it eq
0008791e  00 20                                            moveq r0, #0
00087920  b0 bd                                            pop {r4, r5, r7, pc}
00087922  28 68                                            ldr r0, [r5]
00087924  21 46                                            mov r1, r4
00087926  d0 f8 88 20                                      ldr.w r2, [r0, #0x88]
0008792a  28 46                                            mov r0, r5
0008792c  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
00087930  10 47                                            bx r2

; FUNCTION 0x0008796c, declared_size=22, range_size=22, mode=thumb
; class-group: ir_emit_vertex
; alias: _ZN14ir_emit_vertexD0Ev
; demangled: ir_emit_vertex::~ir_emit_vertex()
; decoder-mode: thumb
0008796c  d0 b5                                            push {r4, r6, r7, lr}
0008796e  02 af                                            add r7, sp, #8
00087970  00 21                                            movs r1, #0
00087972  04 46                                            mov r4, r0
00087974  aa f7 c4 ef                                      blx #0x32900
00087978  20 46                                            mov r0, r4
0008797a  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008797e  29 f0 73 b8                                      b.w #0xb0a68

; FUNCTION 0x00087982, declared_size=12, range_size=12, mode=thumb
; class-group: ir_emit_vertex
; alias: _ZN14ir_emit_vertex6acceptEP10ir_visitor
; demangled: ir_emit_vertex::accept(ir_visitor*)
; decoder-mode: thumb
00087982  02 46                                            mov r2, r0
00087984  08 68                                            ldr r0, [r1]
00087986  83 6d                                            ldr r3, [r0, #0x58]
00087988  08 46                                            mov r0, r1
0008798a  11 46                                            mov r1, r2
0008798c  18 47                                            bx r3

; FUNCTION 0x00087990, declared_size=80, range_size=80, mode=thumb
; class-group: ir_emit_vertex
; alias: _ZNK14ir_emit_vertex5cloneEPvP10hash_table
; demangled: ir_emit_vertex::clone(void*, hash_table*) const
; decoder-mode: thumb
00087990  f0 b5                                            push {r4, r5, r6, r7, lr}
00087992  03 af                                            add r7, sp, #0xc
00087994  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00087998  0d 46                                            mov r5, r1
0008799a  06 46                                            mov r6, r0
0008799c  28 46                                            mov r0, r5
0008799e  14 21                                            movs r1, #0x14
000879a0  90 46                                            mov r8, r2
000879a2  aa f7 be ee                                      blx #0x32720
000879a6  04 46                                            mov r4, r0
000879a8  0b 48                                            ldr r0, [pc, #0x2c]
000879aa  78 44                                            add r0, pc
000879ac  01 68                                            ldr r1, [r0]
000879ae  20 46                                            mov r0, r4
000879b0  aa f7 a6 ef                                      blx #0x32900
000879b4  30 69                                            ldr r0, [r6, #0x10]
000879b6  42 46                                            mov r2, r8
000879b8  01 68                                            ldr r1, [r0]
000879ba  0b 69                                            ldr r3, [r1, #0x10]
000879bc  29 46                                            mov r1, r5
000879be  98 47                                            blx r3
000879c0  06 49                                            ldr r1, [pc, #0x18]
000879c2  13 22                                            movs r2, #0x13
000879c4  79 44                                            add r1, pc
000879c6  09 68                                            ldr r1, [r1]
000879c8  08 31                                            adds r1, #8
000879ca  21 60                                            str r1, [r4]
000879cc  c4 e9 03 20                                      strd r2, r0, [r4, #0xc]
000879d0  20 46                                            mov r0, r4
000879d2  5d f8 04 8b                                      ldr r8, [sp], #4
000879d6  f0 bd                                            pop {r4, r5, r6, r7, pc}
000879d8  8e 4b                                            ldr r3, [pc, #0x238]
000879da  05 00                                            movs r5, r0
000879dc  c8 4c                                            ldr r4, [pc, #0x320]
000879de  05 00                                            movs r5, r0
