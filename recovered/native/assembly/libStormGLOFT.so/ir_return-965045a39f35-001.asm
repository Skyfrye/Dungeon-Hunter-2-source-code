; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00082c24, declared_size=76, range_size=76, mode=thumb
; class-group: ir_return
; alias: _ZNK9ir_return5cloneEPvP10hash_table
; demangled: ir_return::clone(void*, hash_table*) const
; decoder-mode: thumb
00082c24  b0 b5                                            push {r4, r5, r7, lr}
00082c26  02 af                                            add r7, sp, #8
00082c28  00 69                                            ldr r0, [r0, #0x10]
00082c2a  0d 46                                            mov r5, r1
00082c2c  28 b1                                            cbz r0, #0x82c3a
00082c2e  01 68                                            ldr r1, [r0]
00082c30  0b 69                                            ldr r3, [r1, #0x10]
00082c32  29 46                                            mov r1, r5
00082c34  98 47                                            blx r3
00082c36  04 46                                            mov r4, r0
00082c38  00 e0                                            b #0x82c3c
00082c3a  00 24                                            movs r4, #0
00082c3c  28 46                                            mov r0, r5
00082c3e  14 21                                            movs r1, #0x14
00082c40  af f7 6e ed                                      blx #0x32720
00082c44  05 46                                            mov r5, r0
00082c46  08 48                                            ldr r0, [pc, #0x20]
00082c48  78 44                                            add r0, pc
00082c4a  01 68                                            ldr r1, [r0]
00082c4c  28 46                                            mov r0, r5
00082c4e  af f7 58 ee                                      blx #0x32900
00082c52  06 48                                            ldr r0, [pc, #0x18]
00082c54  78 44                                            add r0, pc
00082c56  00 68                                            ldr r0, [r0]
00082c58  08 30                                            adds r0, #8
00082c5a  28 60                                            str r0, [r5]
00082c5c  0f 20                                            movs r0, #0xf
00082c5e  c5 e9 03 04                                      strd r0, r4, [r5, #0xc]
00082c62  28 46                                            mov r0, r5
00082c64  b0 bd                                            pop {r4, r5, r7, pc}
00082c66  00 bf                                            nop
00082c68  f0 98                                            ldr r0, [sp, #0x3c0]
00082c6a  05 00                                            movs r5, r0
00082c6c  14 99                                            ldr r1, [sp, #0x50]
00082c6e  05 00                                            movs r5, r0

; FUNCTION 0x00083608, declared_size=22, range_size=22, mode=thumb
; class-group: ir_return
; alias: _ZN9ir_returnD0Ev
; demangled: ir_return::~ir_return()
; decoder-mode: thumb
00083608  d0 b5                                            push {r4, r6, r7, lr}
0008360a  02 af                                            add r7, sp, #8
0008360c  00 21                                            movs r1, #0
0008360e  04 46                                            mov r4, r0
00083610  af f7 76 e9                                      blx #0x32900
00083614  20 46                                            mov r0, r4
00083616  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008361a  2d f0 25 ba                                      b.w #0xb0a68

; FUNCTION 0x0008361e, declared_size=12, range_size=12, mode=thumb
; class-group: ir_return
; alias: _ZN9ir_return6acceptEP10ir_visitor
; demangled: ir_return::accept(ir_visitor*)
; decoder-mode: thumb
0008361e  02 46                                            mov r2, r0
00083620  08 68                                            ldr r0, [r1]
00083622  c3 6b                                            ldr r3, [r0, #0x3c]
00083624  08 46                                            mov r0, r1
00083626  11 46                                            mov r1, r2
00083628  18 47                                            bx r3

; FUNCTION 0x000877be, declared_size=58, range_size=58, mode=thumb
; class-group: ir_return
; alias: _ZN9ir_return6acceptEP23ir_hierarchical_visitor
; demangled: ir_return::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
000877be  b0 b5                                            push {r4, r5, r7, lr}
000877c0  02 af                                            add r7, sp, #8
000877c2  0d 46                                            mov r5, r1
000877c4  04 46                                            mov r4, r0
000877c6  28 68                                            ldr r0, [r5]
000877c8  21 46                                            mov r1, r4
000877ca  c2 6e                                            ldr r2, [r0, #0x6c]
000877cc  28 46                                            mov r0, r5
000877ce  90 47                                            blx r2
000877d0  18 b1                                            cbz r0, #0x877da
000877d2  01 28                                            cmp r0, #1
000877d4  08 bf                                            it eq
000877d6  00 20                                            moveq r0, #0
000877d8  b0 bd                                            pop {r4, r5, r7, pc}
000877da  20 69                                            ldr r0, [r4, #0x10]
000877dc  28 b1                                            cbz r0, #0x877ea
000877de  01 68                                            ldr r1, [r0]
000877e0  ca 68                                            ldr r2, [r1, #0xc]
000877e2  29 46                                            mov r1, r5
000877e4  90 47                                            blx r2
000877e6  00 28                                            cmp r0, #0
000877e8  f3 d1                                            bne #0x877d2
000877ea  28 68                                            ldr r0, [r5]
000877ec  21 46                                            mov r1, r4
000877ee  02 6f                                            ldr r2, [r0, #0x70]
000877f0  28 46                                            mov r0, r5
000877f2  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
000877f6  10 47                                            bx r2
