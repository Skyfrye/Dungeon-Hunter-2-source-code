; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0009a538, declared_size=368, range_size=368, mode=thumb
; class-group: brw_lower_offset_array_visitor
; alias: _ZN30brw_lower_offset_array_visitor13handle_rvalueEPP9ir_rvalue
; demangled: brw_lower_offset_array_visitor::handle_rvalue(ir_rvalue**)
; decoder-mode: thumb
0009a538  f0 b5                                            push {r4, r5, r6, r7, lr}
0009a53a  03 af                                            add r7, sp, #0xc
0009a53c  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0009a540  89 b0                                            sub sp, #0x24
0009a542  05 90                                            str r0, [sp, #0x14]
0009a544  51 48                                            ldr r0, [pc, #0x144]
0009a546  78 44                                            add r0, pc
0009a548  00 68                                            ldr r0, [r0]
0009a54a  00 68                                            ldr r0, [r0]
0009a54c  08 90                                            str r0, [sp, #0x20]
0009a54e  0e 68                                            ldr r6, [r1]
0009a550  2e b1                                            cbz r6, #0x9a55e
0009a552  f0 68                                            ldr r0, [r6, #0xc]
0009a554  06 28                                            cmp r0, #6
0009a556  04 bf                                            itt eq
0009a558  b0 69                                            ldreq r0, [r6, #0x18]
0009a55a  08 28                                            cmpeq r0, #8
0009a55c  0c d0                                            beq #0x9a578
0009a55e  51 48                                            ldr r0, [pc, #0x144]
0009a560  08 99                                            ldr r1, [sp, #0x20]
0009a562  78 44                                            add r0, pc
0009a564  00 68                                            ldr r0, [r0]
0009a566  00 68                                            ldr r0, [r0]
0009a568  40 1a                                            subs r0, r0, r1
0009a56a  02 bf                                            ittt eq
0009a56c  09 b0                                            addeq sp, #0x24
0009a56e  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
0009a572  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0009a574  97 f7 74 ed                                      blx #0x32060
0009a578  70 6a                                            ldr r0, [r6, #0x24]
0009a57a  00 28                                            cmp r0, #0
0009a57c  ef d0                                            beq #0x9a55e
0009a57e  00 69                                            ldr r0, [r0, #0x10]
0009a580  40 68                                            ldr r0, [r0, #4]
0009a582  09 28                                            cmp r0, #9
0009a584  eb d1                                            bne #0x9a55e
0009a586  30 46                                            mov r0, r6
0009a588  01 91                                            str r1, [sp, #4]
0009a58a  98 f7 ce ea                                      blx #0x32b28
0009a58e  44 21                                            movs r1, #0x44
0009a590  03 90                                            str r0, [sp, #0xc]
0009a592  98 f7 c6 e8                                      blx #0x32720
0009a596  04 46                                            mov r4, r0
0009a598  3d 48                                            ldr r0, [pc, #0xf4]
0009a59a  78 44                                            add r0, pc
0009a59c  01 68                                            ldr r1, [r0]
0009a59e  20 46                                            mov r0, r4
0009a5a0  98 f7 ae e9                                      blx #0x32900
0009a5a4  d6 e9 04 10                                      ldrd r1, r0, [r6, #0x10]
0009a5a8  3a a2                                            adr r2, #0xe8
0009a5aa  0a 23                                            movs r3, #0xa
0009a5ac  00 90                                            str r0, [sp]
0009a5ae  20 46                                            mov r0, r4
0009a5b0  98 f7 e2 e9                                      blx #0x32978
0009a5b4  05 98                                            ldr r0, [sp, #0x14]
0009a5b6  00 2c                                            cmp r4, #0
0009a5b8  40 68                                            ldr r0, [r0, #4]
0009a5ba  04 94                                            str r4, [sp, #0x10]
0009a5bc  18 bf                                            it ne
0009a5be  04 34                                            addne r4, #4
0009a5c0  02 1d                                            adds r2, r0, #4
0009a5c2  22 60                                            str r2, [r4]
0009a5c4  82 68                                            ldr r2, [r0, #8]
0009a5c6  62 60                                            str r2, [r4, #4]
0009a5c8  82 68                                            ldr r2, [r0, #8]
0009a5ca  14 60                                            str r4, [r2]
0009a5cc  84 60                                            str r4, [r0, #8]
0009a5ce  00 24                                            movs r4, #0
0009a5d0  32 48                                            ldr r0, [pc, #0xc8]
0009a5d2  78 44                                            add r0, pc
0009a5d4  00 68                                            ldr r0, [r0]
0009a5d6  02 90                                            str r0, [sp, #8]
0009a5d8  dd f8 08 a0                                      ldr.w sl, [sp, #8]
0009a5dc  30 68                                            ldr r0, [r6]
0009a5de  00 22                                            movs r2, #0
0009a5e0  03 9d                                            ldr r5, [sp, #0xc]
0009a5e2  03 69                                            ldr r3, [r0, #0x10]
0009a5e4  30 46                                            mov r0, r6
0009a5e6  29 46                                            mov r1, r5
0009a5e8  98 47                                            blx r3
0009a5ea  80 46                                            mov r8, r0
0009a5ec  28 46                                            mov r0, r5
0009a5ee  20 21                                            movs r1, #0x20
0009a5f0  98 f7 96 e8                                      blx #0x32720
0009a5f4  51 46                                            mov r1, sl
0009a5f6  81 46                                            mov sb, r0
0009a5f8  98 f7 82 e9                                      blx #0x32900
0009a5fc  d8 f8 24 00                                      ldr.w r0, [r8, #0x24]
0009a600  68 21                                            movs r1, #0x68
0009a602  06 90                                            str r0, [sp, #0x18]
0009a604  28 46                                            mov r0, r5
0009a606  98 f7 8c e8                                      blx #0x32720
0009a60a  51 46                                            mov r1, sl
0009a60c  83 46                                            mov fp, r0
0009a60e  98 f7 78 e9                                      blx #0x32900
0009a612  58 46                                            mov r0, fp
0009a614  21 46                                            mov r1, r4
0009a616  01 22                                            movs r2, #1
0009a618  98 f7 7a ea                                      blx #0x32b10
0009a61c  06 99                                            ldr r1, [sp, #0x18]
0009a61e  48 46                                            mov r0, sb
0009a620  5a 46                                            mov r2, fp
0009a622  98 f7 74 e9                                      blx #0x3290c
0009a626  c8 f8 24 90                                      str.w sb, [r8, #0x24]
0009a62a  05 98                                            ldr r0, [sp, #0x14]
0009a62c  04 99                                            ldr r1, [sp, #0x10]
0009a62e  45 68                                            ldr r5, [r0, #4]
0009a630  07 a8                                            add r0, sp, #0x1c
0009a632  98 f7 4c eb                                      blx #0x32ccc
0009a636  40 46                                            mov r0, r8
0009a638  98 f7 84 ee                                      blx #0x33344
0009a63c  01 46                                            mov r1, r0
0009a63e  07 98                                            ldr r0, [sp, #0x1c]
0009a640  01 22                                            movs r2, #1
0009a642  a2 40                                            lsls r2, r4
0009a644  98 f7 a0 ed                                      blx #0x33188
0009a648  00 28                                            cmp r0, #0
0009a64a  18 bf                                            it ne
0009a64c  04 30                                            addne r0, #4
0009a64e  29 1d                                            adds r1, r5, #4
0009a650  01 60                                            str r1, [r0]
0009a652  a9 68                                            ldr r1, [r5, #8]
0009a654  01 34                                            adds r4, #1
0009a656  41 60                                            str r1, [r0, #4]
0009a658  04 2c                                            cmp r4, #4
0009a65a  a9 68                                            ldr r1, [r5, #8]
0009a65c  08 60                                            str r0, [r1]
0009a65e  a8 60                                            str r0, [r5, #8]
0009a660  bc d1                                            bne #0x9a5dc
0009a662  03 98                                            ldr r0, [sp, #0xc]
0009a664  1c 21                                            movs r1, #0x1c
0009a666  98 f7 5c e8                                      blx #0x32720
0009a66a  04 46                                            mov r4, r0
0009a66c  0c 48                                            ldr r0, [pc, #0x30]
0009a66e  78 44                                            add r0, pc
0009a670  01 68                                            ldr r1, [r0]
0009a672  20 46                                            mov r0, r4
0009a674  98 f7 44 e9                                      blx #0x32900
0009a678  04 99                                            ldr r1, [sp, #0x10]
0009a67a  20 46                                            mov r0, r4
0009a67c  98 f7 9a e9                                      blx #0x329b4
0009a680  01 98                                            ldr r0, [sp, #4]
0009a682  04 60                                            str r4, [r0]
0009a684  01 20                                            movs r0, #1
0009a686  05 99                                            ldr r1, [sp, #0x14]
0009a688  48 76                                            strb r0, [r1, #0x19]
0009a68a  68 e7                                            b #0x9a55e
0009a68c  6e 1f                                            subs r6, r5, #5
0009a68e  04 00                                            movs r4, r0
0009a690  9e 1f                                            subs r6, r3, #6
0009a692  04 00                                            movs r4, r0
0009a694  72 65                                            str r2, [r6, #0x54]
0009a696  73 75                                            strb r3, [r6, #0x15]
0009a698  6c 74                                            strb r4, [r5, #0x11]
0009a69a  00 00                                            movs r0, r0
0009a69c  66 1f                                            subs r6, r4, #5
0009a69e  04 00                                            movs r4, r0
0009a6a0  ca 1e                                            subs r2, r1, #3
0009a6a2  04 00                                            movs r4, r0
0009a6a4  52 1f                                            subs r2, r2, #5
0009a6a6  04 00                                            movs r4, r0
