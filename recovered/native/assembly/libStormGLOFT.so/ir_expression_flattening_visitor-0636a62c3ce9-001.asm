; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000865b0, declared_size=2, range_size=2, mode=thumb
; class-group: ir_expression_flattening_visitor
; alias: _ZN32ir_expression_flattening_visitorD2Ev
; demangled: ir_expression_flattening_visitor::~ir_expression_flattening_visitor()
; decoder-mode: thumb
000865b0  70 47                                            bx lr

; FUNCTION 0x000865b4, declared_size=252, range_size=252, mode=thumb
; class-group: ir_expression_flattening_visitor
; alias: _ZN32ir_expression_flattening_visitor13handle_rvalueEPP9ir_rvalue
; demangled: ir_expression_flattening_visitor::handle_rvalue(ir_rvalue**)
; decoder-mode: thumb
000865b4  f0 b5                                            push {r4, r5, r6, r7, lr}
000865b6  03 af                                            add r7, sp, #0xc
000865b8  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
000865bc  83 b0                                            sub sp, #0xc
000865be  0d 46                                            mov r5, r1
000865c0  83 46                                            mov fp, r0
000865c2  2c 68                                            ldr r4, [r5]
000865c4  00 2c                                            cmp r4, #0
000865c6  64 d0                                            beq #0x86692
000865c8  db f8 1c 10                                      ldr.w r1, [fp, #0x1c]
000865cc  20 46                                            mov r0, r4
000865ce  88 47                                            blx r1
000865d0  01 28                                            cmp r0, #1
000865d2  5e d1                                            bne #0x86692
000865d4  20 46                                            mov r0, r4
000865d6  ac f7 a8 ea                                      blx #0x32b28
000865da  44 21                                            movs r1, #0x44
000865dc  06 46                                            mov r6, r0
000865de  ac f7 a0 e8                                      blx #0x32720
000865e2  82 46                                            mov sl, r0
000865e4  2d 48                                            ldr r0, [pc, #0xb4]
000865e6  78 44                                            add r0, pc
000865e8  d0 f8 00 80                                      ldr.w r8, [r0]
000865ec  50 46                                            mov r0, sl
000865ee  41 46                                            mov r1, r8
000865f0  ac f7 86 e9                                      blx #0x32900
000865f4  02 95                                            str r5, [sp, #8]
000865f6  20 46                                            mov r0, r4
000865f8  25 69                                            ldr r5, [r4, #0x10]
000865fa  ac f7 56 eb                                      blx #0x32ca8
000865fe  28 a2                                            adr r2, #0xa0
00086600  00 90                                            str r0, [sp]
00086602  50 46                                            mov r0, sl
00086604  29 46                                            mov r1, r5
00086606  0a 23                                            movs r3, #0xa
00086608  ac f7 b6 e9                                      blx #0x32978
0008660c  db f8 04 00                                      ldr.w r0, [fp, #4]
00086610  51 46                                            mov r1, sl
00086612  ba f1 00 0f                                      cmp.w sl, #0
00086616  18 bf                                            it ne
00086618  04 31                                            addne r1, #4
0008661a  02 1d                                            adds r2, r0, #4
0008661c  0a 60                                            str r2, [r1]
0008661e  82 68                                            ldr r2, [r0, #8]
00086620  4a 60                                            str r2, [r1, #4]
00086622  82 68                                            ldr r2, [r0, #8]
00086624  11 60                                            str r1, [r2]
00086626  81 60                                            str r1, [r0, #8]
00086628  30 46                                            mov r0, r6
0008662a  20 21                                            movs r1, #0x20
0008662c  01 96                                            str r6, [sp, #4]
0008662e  ac f7 78 e8                                      blx #0x32720
00086632  41 46                                            mov r1, r8
00086634  05 46                                            mov r5, r0
00086636  ac f7 64 e9                                      blx #0x32900
0008663a  30 46                                            mov r0, r6
0008663c  1c 21                                            movs r1, #0x1c
0008663e  ac f7 70 e8                                      blx #0x32720
00086642  41 46                                            mov r1, r8
00086644  81 46                                            mov sb, r0
00086646  ac f7 5c e9                                      blx #0x32900
0008664a  48 46                                            mov r0, sb
0008664c  51 46                                            mov r1, sl
0008664e  ac f7 b2 e9                                      blx #0x329b4
00086652  28 46                                            mov r0, r5
00086654  49 46                                            mov r1, sb
00086656  22 46                                            mov r2, r4
00086658  00 23                                            movs r3, #0
0008665a  ac f7 d6 e9                                      blx #0x32a08
0008665e  db f8 04 00                                      ldr.w r0, [fp, #4]
00086662  00 2d                                            cmp r5, #0
00086664  18 bf                                            it ne
00086666  04 35                                            addne r5, #4
00086668  01 1d                                            adds r1, r0, #4
0008666a  29 60                                            str r1, [r5]
0008666c  81 68                                            ldr r1, [r0, #8]
0008666e  69 60                                            str r1, [r5, #4]
00086670  81 68                                            ldr r1, [r0, #8]
00086672  0d 60                                            str r5, [r1]
00086674  1c 21                                            movs r1, #0x1c
00086676  85 60                                            str r5, [r0, #8]
00086678  01 98                                            ldr r0, [sp, #4]
0008667a  ac f7 52 e8                                      blx #0x32720
0008667e  41 46                                            mov r1, r8
00086680  04 46                                            mov r4, r0
00086682  ac f7 3e e9                                      blx #0x32900
00086686  20 46                                            mov r0, r4
00086688  51 46                                            mov r1, sl
0008668a  ac f7 94 e9                                      blx #0x329b4
0008668e  02 98                                            ldr r0, [sp, #8]
00086690  04 60                                            str r4, [r0]
00086692  03 b0                                            add sp, #0xc
00086694  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00086698  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008669a  00 bf                                            nop
0008669c  52 5f                                            ldrsh r2, [r2, r5]
0008669e  05 00                                            movs r5, r0
000866a0  66 6c                                            ldr r6, [r4, #0x44]
000866a2  61 74                                            strb r1, [r4, #0x11]
000866a4  74 65                                            str r4, [r6, #0x54]
000866a6  6e 69                                            ldr r6, [r5, #0x14]
000866a8  6e 67                                            str r6, [r5, #0x74]
000866aa  5f 74                                            strb r7, [r3, #0x11]
000866ac  6d 70                                            strb r5, [r5, #1]
000866ae  00 00                                            movs r0, r0

; FUNCTION 0x000866b0, declared_size=4, range_size=4, mode=thumb
; class-group: ir_expression_flattening_visitor
; alias: _ZN32ir_expression_flattening_visitorD0Ev
; demangled: ir_expression_flattening_visitor::~ir_expression_flattening_visitor()
; decoder-mode: thumb
000866b0  2a f0 52 bb                                      b.w #0xb0d58
