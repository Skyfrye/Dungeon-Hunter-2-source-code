; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00082cf8, declared_size=220, range_size=220, mode=thumb
; class-group: ir_if
; alias: _ZNK5ir_if5cloneEPvP10hash_table
; demangled: ir_if::clone(void*, hash_table*) const
; decoder-mode: thumb
00082cf8  f0 b5                                            push {r4, r5, r6, r7, lr}
00082cfa  03 af                                            add r7, sp, #0xc
00082cfc  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00082d00  81 b0                                            sub sp, #4
00082d02  8b 46                                            mov fp, r1
00082d04  80 46                                            mov r8, r0
00082d06  58 46                                            mov r0, fp
00082d08  2c 21                                            movs r1, #0x2c
00082d0a  92 46                                            mov sl, r2
00082d0c  af f7 08 ed                                      blx #0x32720
00082d10  06 46                                            mov r6, r0
00082d12  2e 48                                            ldr r0, [pc, #0xb8]
00082d14  78 44                                            add r0, pc
00082d16  01 68                                            ldr r1, [r0]
00082d18  30 46                                            mov r0, r6
00082d1a  af f7 f2 ed                                      blx #0x32900
00082d1e  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
00082d22  52 46                                            mov r2, sl
00082d24  01 68                                            ldr r1, [r0]
00082d26  0b 69                                            ldr r3, [r1, #0x10]
00082d28  59 46                                            mov r1, fp
00082d2a  98 47                                            blx r3
00082d2c  28 49                                            ldr r1, [pc, #0xa0]
00082d2e  0c 22                                            movs r2, #0xc
00082d30  34 46                                            mov r4, r6
00082d32  b1 46                                            mov sb, r6
00082d34  79 44                                            add r1, pc
00082d36  09 68                                            ldr r1, [r1]
00082d38  08 31                                            adds r1, #8
00082d3a  31 60                                            str r1, [r6]
00082d3c  c6 e9 03 20                                      strd r2, r0, [r6, #0xc]
00082d40  00 20                                            movs r0, #0
00082d42  44 f8 18 0f                                      str r0, [r4, #0x18]!
00082d46  06 f1 14 01                                      add.w r1, r6, #0x14
00082d4a  74 61                                            str r4, [r6, #0x14]
00082d4c  f1 61                                            str r1, [r6, #0x1c]
00082d4e  49 f8 24 0f                                      str r0, [sb, #0x24]!
00082d52  06 f1 20 00                                      add.w r0, r6, #0x20
00082d56  c6 f8 20 90                                      str.w sb, [r6, #0x20]
00082d5a  b0 62                                            str r0, [r6, #0x28]
00082d5c  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
00082d60  0d e0                                            b #0x82d7e
00082d62  01 68                                            ldr r1, [r0]
00082d64  52 46                                            mov r2, sl
00082d66  0b 69                                            ldr r3, [r1, #0x10]
00082d68  59 46                                            mov r1, fp
00082d6a  98 47                                            blx r3
00082d6c  00 28                                            cmp r0, #0
00082d6e  18 bf                                            it ne
00082d70  04 30                                            addne r0, #4
00082d72  04 60                                            str r4, [r0]
00082d74  f1 69                                            ldr r1, [r6, #0x1c]
00082d76  41 60                                            str r1, [r0, #4]
00082d78  08 60                                            str r0, [r1]
00082d7a  f0 61                                            str r0, [r6, #0x1c]
00082d7c  28 68                                            ldr r0, [r5]
00082d7e  00 28                                            cmp r0, #0
00082d80  18 bf                                            it ne
00082d82  04 38                                            subne r0, #4
00082d84  05 46                                            mov r5, r0
00082d86  55 f8 04 1f                                      ldr r1, [r5, #4]!
00082d8a  00 29                                            cmp r1, #0
00082d8c  e9 d1                                            bne #0x82d62
00082d8e  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
00082d92  0e e0                                            b #0x82db2
00082d94  01 68                                            ldr r1, [r0]
00082d96  52 46                                            mov r2, sl
00082d98  0b 69                                            ldr r3, [r1, #0x10]
00082d9a  59 46                                            mov r1, fp
00082d9c  98 47                                            blx r3
00082d9e  00 28                                            cmp r0, #0
00082da0  18 bf                                            it ne
00082da2  04 30                                            addne r0, #4
00082da4  c0 f8 00 90                                      str.w sb, [r0]
00082da8  b1 6a                                            ldr r1, [r6, #0x28]
00082daa  41 60                                            str r1, [r0, #4]
00082dac  08 60                                            str r0, [r1]
00082dae  b0 62                                            str r0, [r6, #0x28]
00082db0  20 68                                            ldr r0, [r4]
00082db2  00 28                                            cmp r0, #0
00082db4  18 bf                                            it ne
00082db6  04 38                                            subne r0, #4
00082db8  04 46                                            mov r4, r0
00082dba  54 f8 04 1f                                      ldr r1, [r4, #4]!
00082dbe  00 29                                            cmp r1, #0
00082dc0  e8 d1                                            bne #0x82d94
00082dc2  30 46                                            mov r0, r6
00082dc4  01 b0                                            add sp, #4
00082dc6  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00082dca  f0 bd                                            pop {r4, r5, r6, r7, pc}
00082dcc  24 98                                            ldr r0, [sp, #0x90]
00082dce  05 00                                            movs r5, r0
00082dd0  24 98                                            ldr r0, [sp, #0x90]
00082dd2  05 00                                            movs r5, r0

; FUNCTION 0x000835c4, declared_size=22, range_size=22, mode=thumb
; class-group: ir_if
; alias: _ZN5ir_ifD0Ev
; demangled: ir_if::~ir_if()
; decoder-mode: thumb
000835c4  d0 b5                                            push {r4, r6, r7, lr}
000835c6  02 af                                            add r7, sp, #8
000835c8  00 21                                            movs r1, #0
000835ca  04 46                                            mov r4, r0
000835cc  af f7 98 e9                                      blx #0x32900
000835d0  20 46                                            mov r0, r4
000835d2  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000835d6  2d f0 47 ba                                      b.w #0xb0a68

; FUNCTION 0x000835da, declared_size=12, range_size=12, mode=thumb
; class-group: ir_if
; alias: _ZN5ir_if6acceptEP10ir_visitor
; demangled: ir_if::accept(ir_visitor*)
; decoder-mode: thumb
000835da  02 46                                            mov r2, r0
000835dc  08 68                                            ldr r0, [r1]
000835de  43 6c                                            ldr r3, [r0, #0x44]
000835e0  08 46                                            mov r0, r1
000835e2  11 46                                            mov r1, r2
000835e4  18 47                                            bx r3

; FUNCTION 0x00087832, declared_size=174, range_size=174, mode=thumb
; class-group: ir_if
; alias: _ZN5ir_if6acceptEP23ir_hierarchical_visitor
; demangled: ir_if::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
00087832  f0 b5                                            push {r4, r5, r6, r7, lr}
00087834  03 af                                            add r7, sp, #0xc
00087836  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008783a  0d 46                                            mov r5, r1
0008783c  04 46                                            mov r4, r0
0008783e  28 68                                            ldr r0, [r5]
00087840  21 46                                            mov r1, r4
00087842  c2 6f                                            ldr r2, [r0, #0x7c]
00087844  28 46                                            mov r0, r5
00087846  90 47                                            blx r2
00087848  28 b9                                            cbnz r0, #0x87856
0008784a  20 69                                            ldr r0, [r4, #0x10]
0008784c  01 68                                            ldr r1, [r0]
0008784e  ca 68                                            ldr r2, [r1, #0xc]
00087850  29 46                                            mov r1, r5
00087852  90 47                                            blx r2
00087854  28 b1                                            cbz r0, #0x87862
00087856  01 28                                            cmp r0, #1
00087858  08 bf                                            it eq
0008785a  00 20                                            moveq r0, #0
0008785c  5d f8 04 8b                                      ldr r8, [sp], #4
00087860  f0 bd                                            pop {r4, r5, r6, r7, pc}
00087862  60 69                                            ldr r0, [r4, #0x14]
00087864  d5 f8 04 80                                      ldr.w r8, [r5, #4]
00087868  00 28                                            cmp r0, #0
0008786a  18 bf                                            it ne
0008786c  04 38                                            subne r0, #4
0008786e  46 68                                            ldr r6, [r0, #4]
00087870  00 2e                                            cmp r6, #0
00087872  18 bf                                            it ne
00087874  04 3e                                            subne r6, #4
00087876  7e b1                                            cbz r6, #0x87898
00087878  68 60                                            str r0, [r5, #4]
0008787a  01 68                                            ldr r1, [r0]
0008787c  ca 68                                            ldr r2, [r1, #0xc]
0008787e  29 46                                            mov r1, r5
00087880  90 47                                            blx r2
00087882  01 46                                            mov r1, r0
00087884  00 29                                            cmp r1, #0
00087886  30 46                                            mov r0, r6
00087888  f1 d0                                            beq #0x8786e
0008788a  01 29                                            cmp r1, #1
0008788c  1e d0                                            beq #0x878cc
0008788e  02 29                                            cmp r1, #2
00087890  18 d0                                            beq #0x878c4
00087892  d5 f8 04 80                                      ldr.w r8, [r5, #4]
00087896  01 e0                                            b #0x8789c
00087898  c5 f8 04 80                                      str.w r8, [r5, #4]
0008789c  20 6a                                            ldr r0, [r4, #0x20]
0008789e  00 28                                            cmp r0, #0
000878a0  18 bf                                            it ne
000878a2  04 38                                            subne r0, #4
000878a4  46 68                                            ldr r6, [r0, #4]
000878a6  00 2e                                            cmp r6, #0
000878a8  18 bf                                            it ne
000878aa  04 3e                                            subne r6, #4
000878ac  66 b1                                            cbz r6, #0x878c8
000878ae  68 60                                            str r0, [r5, #4]
000878b0  01 68                                            ldr r1, [r0]
000878b2  ca 68                                            ldr r2, [r1, #0xc]
000878b4  29 46                                            mov r1, r5
000878b6  90 47                                            blx r2
000878b8  01 46                                            mov r1, r0
000878ba  00 29                                            cmp r1, #0
000878bc  30 46                                            mov r0, r6
000878be  f1 d0                                            beq #0x878a4
000878c0  02 29                                            cmp r1, #2
000878c2  03 d1                                            bne #0x878cc
000878c4  02 20                                            movs r0, #2
000878c6  c9 e7                                            b #0x8785c
000878c8  c5 f8 04 80                                      str.w r8, [r5, #4]
000878cc  28 68                                            ldr r0, [r5]
000878ce  21 46                                            mov r1, r4
000878d0  d0 f8 80 20                                      ldr.w r2, [r0, #0x80]
000878d4  28 46                                            mov r0, r5
000878d6  5d f8 04 8b                                      ldr r8, [sp], #4
000878da  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000878de  10 47                                            bx r2
