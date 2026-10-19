; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008167c, declared_size=36, range_size=36, mode=thumb
; class-group: ir_loop
; alias: _ZN7ir_loopC1Ev
; demangled: ir_loop::ir_loop()
; alias: _ZN7ir_loopC2Ev
; demangled: ir_loop::ir_loop()
; decoder-mode: thumb
0008167c  07 49                                            ldr r1, [pc, #0x1c]
0008167e  0d 22                                            movs r2, #0xd
00081680  c2 60                                            str r2, [r0, #0xc]
00081682  00 22                                            movs r2, #0
00081684  79 44                                            add r1, pc
00081686  03 46                                            mov r3, r0
00081688  43 f8 14 2f                                      str r2, [r3, #0x14]!
0008168c  00 f1 10 02                                      add.w r2, r0, #0x10
00081690  09 68                                            ldr r1, [r1]
00081692  03 61                                            str r3, [r0, #0x10]
00081694  82 61                                            str r2, [r0, #0x18]
00081696  08 31                                            adds r1, #8
00081698  01 60                                            str r1, [r0]
0008169a  70 47                                            bx lr
0008169c  f4 b2                                            uxtb r4, r6
0008169e  05 00                                            movs r5, r0

; FUNCTION 0x00082dd4, declared_size=120, range_size=120, mode=thumb
; class-group: ir_loop
; alias: _ZNK7ir_loop5cloneEPvP10hash_table
; demangled: ir_loop::clone(void*, hash_table*) const
; decoder-mode: thumb
00082dd4  f0 b5                                            push {r4, r5, r6, r7, lr}
00082dd6  03 af                                            add r7, sp, #0xc
00082dd8  2d e9 00 07                                      push.w {r8, sb, sl}
00082ddc  8a 46                                            mov sl, r1
00082dde  80 46                                            mov r8, r0
00082de0  50 46                                            mov r0, sl
00082de2  1c 21                                            movs r1, #0x1c
00082de4  91 46                                            mov sb, r2
00082de6  af f7 9c ec                                      blx #0x32720
00082dea  06 46                                            mov r6, r0
00082dec  16 48                                            ldr r0, [pc, #0x58]
00082dee  78 44                                            add r0, pc
00082df0  01 68                                            ldr r1, [r0]
00082df2  30 46                                            mov r0, r6
00082df4  af f7 84 ed                                      blx #0x32900
00082df8  30 46                                            mov r0, r6
00082dfa  b0 f7 28 e8                                      blx #0x32e4c
00082dfe  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
00082e02  00 28                                            cmp r0, #0
00082e04  18 bf                                            it ne
00082e06  04 38                                            subne r0, #4
00082e08  04 46                                            mov r4, r0
00082e0a  54 f8 04 1f                                      ldr r1, [r4, #4]!
00082e0e  b9 b1                                            cbz r1, #0x82e40
00082e10  06 f1 14 05                                      add.w r5, r6, #0x14
00082e14  01 68                                            ldr r1, [r0]
00082e16  4a 46                                            mov r2, sb
00082e18  0b 69                                            ldr r3, [r1, #0x10]
00082e1a  51 46                                            mov r1, sl
00082e1c  98 47                                            blx r3
00082e1e  00 28                                            cmp r0, #0
00082e20  18 bf                                            it ne
00082e22  04 30                                            addne r0, #4
00082e24  05 60                                            str r5, [r0]
00082e26  b1 69                                            ldr r1, [r6, #0x18]
00082e28  41 60                                            str r1, [r0, #4]
00082e2a  08 60                                            str r0, [r1]
00082e2c  b0 61                                            str r0, [r6, #0x18]
00082e2e  20 68                                            ldr r0, [r4]
00082e30  00 28                                            cmp r0, #0
00082e32  18 bf                                            it ne
00082e34  04 38                                            subne r0, #4
00082e36  04 46                                            mov r4, r0
00082e38  54 f8 04 1f                                      ldr r1, [r4, #4]!
00082e3c  00 29                                            cmp r1, #0
00082e3e  e9 d1                                            bne #0x82e14
00082e40  30 46                                            mov r0, r6
00082e42  bd e8 00 07                                      pop.w {r8, sb, sl}
00082e46  f0 bd                                            pop {r4, r5, r6, r7, pc}
00082e48  4a 97                                            str r7, [sp, #0x128]
00082e4a  05 00                                            movs r5, r0

; FUNCTION 0x00083758, declared_size=22, range_size=22, mode=thumb
; class-group: ir_loop
; alias: _ZN7ir_loopD0Ev
; demangled: ir_loop::~ir_loop()
; decoder-mode: thumb
00083758  d0 b5                                            push {r4, r6, r7, lr}
0008375a  02 af                                            add r7, sp, #8
0008375c  00 21                                            movs r1, #0
0008375e  04 46                                            mov r4, r0
00083760  af f7 ce e8                                      blx #0x32900
00083764  20 46                                            mov r0, r4
00083766  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008376a  2d f0 7d b9                                      b.w #0xb0a68

; FUNCTION 0x0008376e, declared_size=12, range_size=12, mode=thumb
; class-group: ir_loop
; alias: _ZN7ir_loop6acceptEP10ir_visitor
; demangled: ir_loop::accept(ir_visitor*)
; decoder-mode: thumb
0008376e  02 46                                            mov r2, r0
00083770  08 68                                            ldr r0, [r1]
00083772  83 6c                                            ldr r3, [r0, #0x48]
00083774  08 46                                            mov r0, r1
00083776  11 46                                            mov r1, r2
00083778  18 47                                            bx r3

; FUNCTION 0x00087388, declared_size=106, range_size=106, mode=thumb
; class-group: ir_loop
; alias: _ZN7ir_loop6acceptEP23ir_hierarchical_visitor
; demangled: ir_loop::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
00087388  f0 b5                                            push {r4, r5, r6, r7, lr}
0008738a  03 af                                            add r7, sp, #0xc
0008738c  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00087390  0d 46                                            mov r5, r1
00087392  04 46                                            mov r4, r0
00087394  28 68                                            ldr r0, [r5]
00087396  21 46                                            mov r1, r4
00087398  c2 69                                            ldr r2, [r0, #0x1c]
0008739a  28 46                                            mov r0, r5
0008739c  90 47                                            blx r2
0008739e  28 b1                                            cbz r0, #0x873ac
000873a0  01 28                                            cmp r0, #1
000873a2  08 bf                                            it eq
000873a4  00 20                                            moveq r0, #0
000873a6  5d f8 04 8b                                      ldr r8, [sp], #4
000873aa  f0 bd                                            pop {r4, r5, r6, r7, pc}
000873ac  20 69                                            ldr r0, [r4, #0x10]
000873ae  d5 f8 04 80                                      ldr.w r8, [r5, #4]
000873b2  00 28                                            cmp r0, #0
000873b4  18 bf                                            it ne
000873b6  04 38                                            subne r0, #4
000873b8  46 68                                            ldr r6, [r0, #4]
000873ba  00 2e                                            cmp r6, #0
000873bc  18 bf                                            it ne
000873be  04 3e                                            subne r6, #4
000873c0  66 b1                                            cbz r6, #0x873dc
000873c2  68 60                                            str r0, [r5, #4]
000873c4  01 68                                            ldr r1, [r0]
000873c6  ca 68                                            ldr r2, [r1, #0xc]
000873c8  29 46                                            mov r1, r5
000873ca  90 47                                            blx r2
000873cc  01 46                                            mov r1, r0
000873ce  00 29                                            cmp r1, #0
000873d0  30 46                                            mov r0, r6
000873d2  f1 d0                                            beq #0x873b8
000873d4  02 29                                            cmp r1, #2
000873d6  03 d1                                            bne #0x873e0
000873d8  02 20                                            movs r0, #2
000873da  e4 e7                                            b #0x873a6
000873dc  c5 f8 04 80                                      str.w r8, [r5, #4]
000873e0  28 68                                            ldr r0, [r5]
000873e2  21 46                                            mov r1, r4
000873e4  02 6a                                            ldr r2, [r0, #0x20]
000873e6  28 46                                            mov r0, r5
000873e8  5d f8 04 8b                                      ldr r8, [sp], #4
000873ec  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000873f0  10 47                                            bx r2
