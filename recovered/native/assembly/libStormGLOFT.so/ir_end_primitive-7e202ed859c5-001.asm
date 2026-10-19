; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00087932, declared_size=58, range_size=58, mode=thumb
; class-group: ir_end_primitive
; alias: _ZN16ir_end_primitive6acceptEP23ir_hierarchical_visitor
; demangled: ir_end_primitive::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
00087932  b0 b5                                            push {r4, r5, r7, lr}
00087934  02 af                                            add r7, sp, #8
00087936  0d 46                                            mov r5, r1
00087938  04 46                                            mov r4, r0
0008793a  28 68                                            ldr r0, [r5]
0008793c  21 46                                            mov r1, r4
0008793e  d0 f8 8c 20                                      ldr.w r2, [r0, #0x8c]
00087942  28 46                                            mov r0, r5
00087944  90 47                                            blx r2
00087946  28 b9                                            cbnz r0, #0x87954
00087948  20 69                                            ldr r0, [r4, #0x10]
0008794a  01 68                                            ldr r1, [r0]
0008794c  ca 68                                            ldr r2, [r1, #0xc]
0008794e  29 46                                            mov r1, r5
00087950  90 47                                            blx r2
00087952  18 b1                                            cbz r0, #0x8795c
00087954  01 28                                            cmp r0, #1
00087956  08 bf                                            it eq
00087958  00 20                                            moveq r0, #0
0008795a  b0 bd                                            pop {r4, r5, r7, pc}
0008795c  28 68                                            ldr r0, [r5]
0008795e  21 46                                            mov r1, r4
00087960  d0 f8 90 20                                      ldr.w r2, [r0, #0x90]
00087964  28 46                                            mov r0, r5
00087966  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008796a  10 47                                            bx r2

; FUNCTION 0x000879e0, declared_size=22, range_size=22, mode=thumb
; class-group: ir_end_primitive
; alias: _ZN16ir_end_primitiveD0Ev
; demangled: ir_end_primitive::~ir_end_primitive()
; decoder-mode: thumb
000879e0  d0 b5                                            push {r4, r6, r7, lr}
000879e2  02 af                                            add r7, sp, #8
000879e4  00 21                                            movs r1, #0
000879e6  04 46                                            mov r4, r0
000879e8  aa f7 8a ef                                      blx #0x32900
000879ec  20 46                                            mov r0, r4
000879ee  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000879f2  29 f0 39 b8                                      b.w #0xb0a68

; FUNCTION 0x000879f6, declared_size=12, range_size=12, mode=thumb
; class-group: ir_end_primitive
; alias: _ZN16ir_end_primitive6acceptEP10ir_visitor
; demangled: ir_end_primitive::accept(ir_visitor*)
; decoder-mode: thumb
000879f6  02 46                                            mov r2, r0
000879f8  08 68                                            ldr r0, [r1]
000879fa  c3 6d                                            ldr r3, [r0, #0x5c]
000879fc  08 46                                            mov r0, r1
000879fe  11 46                                            mov r1, r2
00087a00  18 47                                            bx r3

; FUNCTION 0x00087a04, declared_size=84, range_size=84, mode=thumb
; class-group: ir_end_primitive
; alias: _ZNK16ir_end_primitive5cloneEPvP10hash_table
; demangled: ir_end_primitive::clone(void*, hash_table*) const
; decoder-mode: thumb
00087a04  f0 b5                                            push {r4, r5, r6, r7, lr}
00087a06  03 af                                            add r7, sp, #0xc
00087a08  2d e9 00 0b                                      push.w {r8, sb, fp}
00087a0c  0d 46                                            mov r5, r1
00087a0e  06 46                                            mov r6, r0
00087a10  28 46                                            mov r0, r5
00087a12  14 21                                            movs r1, #0x14
00087a14  90 46                                            mov r8, r2
00087a16  4f f0 14 09                                      mov.w sb, #0x14
00087a1a  aa f7 82 ee                                      blx #0x32720
00087a1e  04 46                                            mov r4, r0
00087a20  0b 48                                            ldr r0, [pc, #0x2c]
00087a22  78 44                                            add r0, pc
00087a24  01 68                                            ldr r1, [r0]
00087a26  20 46                                            mov r0, r4
00087a28  aa f7 6a ef                                      blx #0x32900
00087a2c  30 69                                            ldr r0, [r6, #0x10]
00087a2e  42 46                                            mov r2, r8
00087a30  01 68                                            ldr r1, [r0]
00087a32  0b 69                                            ldr r3, [r1, #0x10]
00087a34  29 46                                            mov r1, r5
00087a36  98 47                                            blx r3
00087a38  06 49                                            ldr r1, [pc, #0x18]
00087a3a  79 44                                            add r1, pc
00087a3c  09 68                                            ldr r1, [r1]
00087a3e  08 31                                            adds r1, #8
00087a40  21 60                                            str r1, [r4]
00087a42  c4 e9 03 90                                      strd sb, r0, [r4, #0xc]
00087a46  20 46                                            mov r0, r4
00087a48  bd e8 00 0b                                      pop.w {r8, sb, fp}
00087a4c  f0 bd                                            pop {r4, r5, r6, r7, pc}
00087a4e  00 bf                                            nop
00087a50  16 4b                                            ldr r3, [pc, #0x58]
00087a52  05 00                                            movs r5, r0
00087a54  56 4c                                            ldr r4, [pc, #0x158]
00087a56  05 00                                            movs r5, r0
