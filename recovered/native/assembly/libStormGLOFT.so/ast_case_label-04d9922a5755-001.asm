; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00057de0, declared_size=980, range_size=980, mode=thumb
; class-group: ast_case_label
; alias: _ZN14ast_case_label3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_case_label::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00057de0  f0 b5                                            push {r4, r5, r6, r7, lr}
00057de2  03 af                                            add r7, sp, #0xc
00057de4  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00057de8  8b b0                                            sub sp, #0x2c
00057dea  83 46                                            mov fp, r0
00057dec  c6 48                                            ldr r0, [pc, #0x318]
00057dee  16 46                                            mov r6, r2
00057df0  8a 46                                            mov sl, r1
00057df2  78 44                                            add r0, pc
00057df4  1c 21                                            movs r1, #0x1c
00057df6  00 68                                            ldr r0, [r0]
00057df8  00 68                                            ldr r0, [r0]
00057dfa  0a 90                                            str r0, [sp, #0x28]
00057dfc  30 46                                            mov r0, r6
00057dfe  da f7 90 ec                                      blx #0x32720
00057e02  05 46                                            mov r5, r0
00057e04  c1 48                                            ldr r0, [pc, #0x304]
00057e06  78 44                                            add r0, pc
00057e08  04 68                                            ldr r4, [r0]
00057e0a  28 46                                            mov r0, r5
00057e0c  21 46                                            mov r1, r4
00057e0e  da f7 78 ed                                      blx #0x32900
00057e12  d6 f8 68 11                                      ldr.w r1, [r6, #0x168]
00057e16  28 46                                            mov r0, r5
00057e18  04 95                                            str r5, [sp, #0x10]
00057e1a  da f7 cc ed                                      blx #0x329b4
00057e1e  30 46                                            mov r0, r6
00057e20  68 21                                            movs r1, #0x68
00057e22  da f7 7e ec                                      blx #0x32720
00057e26  21 46                                            mov r1, r4
00057e28  05 46                                            mov r5, r0
00057e2a  da f7 6a ed                                      blx #0x32900
00057e2e  28 46                                            mov r0, r5
00057e30  01 21                                            movs r1, #1
00057e32  01 22                                            movs r2, #1
00057e34  03 95                                            str r5, [sp, #0xc]
00057e36  da f7 0e ef                                      blx #0x32c54
00057e3a  db f8 20 00                                      ldr.w r0, [fp, #0x20]
00057e3e  b8 b3                                            cbz r0, #0x57eb0
00057e40  01 68                                            ldr r1, [r0]
00057e42  32 46                                            mov r2, r6
00057e44  4b 68                                            ldr r3, [r1, #4]
00057e46  51 46                                            mov r1, sl
00057e48  98 47                                            blx r3
00057e4a  01 68                                            ldr r1, [r0]
00057e4c  8a 69                                            ldr r2, [r1, #0x18]
00057e4e  00 21                                            movs r1, #0
00057e50  90 47                                            blx r2
00057e52  05 46                                            mov r5, r0
00057e54  00 2d                                            cmp r5, #0
00057e56  cd f8 08 a0                                      str.w sl, [sp, #8]
00057e5a  00 f0 96 80                                      beq.w #0x57f8a
00057e5e  a9 69                                            ldr r1, [r5, #0x18]
00057e60  d6 f8 78 01                                      ldr.w r0, [r6, #0x178]
00057e64  da f7 44 ec                                      blx #0x326f0
00057e68  04 46                                            mov r4, r0
00057e6a  00 2c                                            cmp r4, #0
00057e6c  00 f0 af 80                                      beq.w #0x57fce
00057e70  db f8 20 00                                      ldr.w r0, [fp, #0x20]
00057e74  0d f1 14 08                                      add.w r8, sp, #0x14
00057e78  a5 a2                                            adr r2, #0x294
00057e7a  41 68                                            ldr r1, [r0, #4]
00057e7c  09 91                                            str r1, [sp, #0x24]
00057e7e  81 68                                            ldr r1, [r0, #8]
00057e80  05 91                                            str r1, [sp, #0x14]
00057e82  c1 68                                            ldr r1, [r0, #0xc]
00057e84  06 91                                            str r1, [sp, #0x18]
00057e86  01 69                                            ldr r1, [r0, #0x10]
00057e88  07 91                                            str r1, [sp, #0x1c]
00057e8a  31 46                                            mov r1, r6
00057e8c  40 69                                            ldr r0, [r0, #0x14]
00057e8e  08 90                                            str r0, [sp, #0x20]
00057e90  40 46                                            mov r0, r8
00057e92  da f7 12 ed                                      blx #0x328b8
00057e96  04 34                                            adds r4, #4
00057e98  0d f1 14 0c                                      add.w ip, sp, #0x14
00057e9c  1f cc                                            ldm r4, {r0, r1, r2, r3, r4}
00057e9e  8c e8 1e 00                                      stm.w ip, {r1, r2, r3, r4}
00057ea2  a1 a2                                            adr r2, #0x284
00057ea4  31 46                                            mov r1, r6
00057ea6  09 90                                            str r0, [sp, #0x24]
00057ea8  40 46                                            mov r0, r8
00057eaa  da f7 06 ed                                      blx #0x328b8
00057eae  95 e0                                            b #0x57fdc
00057eb0  d6 f8 7c 01                                      ldr.w r0, [r6, #0x17c]
00057eb4  f8 b1                                            cbz r0, #0x57ef6
00057eb6  0b f1 04 05                                      add.w r5, fp, #4
00057eba  0d f1 14 08                                      add.w r8, sp, #0x14
00057ebe  2f cd                                            ldm r5, {r0, r1, r2, r3, r5}
00057ec0  09 90                                            str r0, [sp, #0x24]
00057ec2  05 a8                                            add r0, sp, #0x14
00057ec4  0e c0                                            stm r0!, {r1, r2, r3}
00057ec6  40 46                                            mov r0, r8
00057ec8  31 46                                            mov r1, r6
00057eca  b6 4a                                            ldr r2, [pc, #0x2d8]
00057ecc  08 95                                            str r5, [sp, #0x20]
00057ece  7a 44                                            add r2, pc
00057ed0  da f7 f2 ec                                      blx #0x328b8
00057ed4  d6 f8 7c 01                                      ldr.w r0, [r6, #0x17c]
00057ed8  b3 4a                                            ldr r2, [pc, #0x2cc]
00057eda  05 1d                                            adds r5, r0, #4
00057edc  7a 44                                            add r2, pc
00057ede  2a cd                                            ldm r5, {r1, r3, r5}
00057ee0  d0 e9 04 40                                      ldrd r4, r0, [r0, #0x10]
00057ee4  cd e9 05 35                                      strd r3, r5, [sp, #0x14]
00057ee8  cd e9 07 40                                      strd r4, r0, [sp, #0x1c]
00057eec  40 46                                            mov r0, r8
00057eee  09 91                                            str r1, [sp, #0x24]
00057ef0  31 46                                            mov r1, r6
00057ef2  da f7 e2 ec                                      blx #0x328b8
00057ef6  30 46                                            mov r0, r6
00057ef8  1c 21                                            movs r1, #0x1c
00057efa  c6 f8 7c b1                                      str.w fp, [r6, #0x17c]
00057efe  da f7 10 ec                                      blx #0x32720
00057f02  80 46                                            mov r8, r0
00057f04  a9 48                                            ldr r0, [pc, #0x2a4]
00057f06  78 44                                            add r0, pc
00057f08  d0 f8 00 90                                      ldr.w sb, [r0]
00057f0c  40 46                                            mov r0, r8
00057f0e  49 46                                            mov r1, sb
00057f10  da f7 f6 ec                                      blx #0x32900
00057f14  d6 f8 74 11                                      ldr.w r1, [r6, #0x174]
00057f18  40 46                                            mov r0, r8
00057f1a  da f7 4c ed                                      blx #0x329b4
00057f1e  30 46                                            mov r0, r6
00057f20  68 21                                            movs r1, #0x68
00057f22  da f7 fe eb                                      blx #0x32720
00057f26  49 46                                            mov r1, sb
00057f28  05 46                                            mov r5, r0
00057f2a  da f7 ea ec                                      blx #0x32900
00057f2e  28 46                                            mov r0, r5
00057f30  01 21                                            movs r1, #1
00057f32  01 22                                            movs r2, #1
00057f34  da f7 8e ee                                      blx #0x32c54
00057f38  30 46                                            mov r0, r6
00057f3a  2c 21                                            movs r1, #0x2c
00057f3c  da f7 f0 eb                                      blx #0x32720
00057f40  49 46                                            mov r1, sb
00057f42  04 46                                            mov r4, r0
00057f44  da f7 dc ec                                      blx #0x32900
00057f48  20 46                                            mov r0, r4
00057f4a  4c 21                                            movs r1, #0x4c
00057f4c  2a 46                                            mov r2, r5
00057f4e  43 46                                            mov r3, r8
00057f50  da f7 e2 ec                                      blx #0x32918
00057f54  30 46                                            mov r0, r6
00057f56  20 21                                            movs r1, #0x20
00057f58  da f7 e2 eb                                      blx #0x32720
00057f5c  49 46                                            mov r1, sb
00057f5e  05 46                                            mov r5, r0
00057f60  da f7 ce ec                                      blx #0x32900
00057f64  dd e9 03 21                                      ldrd r2, r1, [sp, #0xc]
00057f68  28 46                                            mov r0, r5
00057f6a  23 46                                            mov r3, r4
00057f6c  da f7 4c ed                                      blx #0x32a08
00057f70  00 2d                                            cmp r5, #0
00057f72  18 bf                                            it ne
00057f74  04 35                                            addne r5, #4
00057f76  0a f1 04 00                                      add.w r0, sl, #4
00057f7a  28 60                                            str r0, [r5]
00057f7c  da f8 08 00                                      ldr.w r0, [sl, #8]
00057f80  68 60                                            str r0, [r5, #4]
00057f82  05 60                                            str r5, [r0]
00057f84  ca f8 08 50                                      str.w r5, [sl, #8]
00057f88  a1 e0                                            b #0x580ce
00057f8a  db f8 20 00                                      ldr.w r0, [fp, #0x20]
00057f8e  6e a2                                            adr r2, #0x1b8
00057f90  41 68                                            ldr r1, [r0, #4]
00057f92  09 91                                            str r1, [sp, #0x24]
00057f94  81 68                                            ldr r1, [r0, #8]
00057f96  05 91                                            str r1, [sp, #0x14]
00057f98  c1 68                                            ldr r1, [r0, #0xc]
00057f9a  06 91                                            str r1, [sp, #0x18]
00057f9c  01 69                                            ldr r1, [r0, #0x10]
00057f9e  07 91                                            str r1, [sp, #0x1c]
00057fa0  31 46                                            mov r1, r6
00057fa2  40 69                                            ldr r0, [r0, #0x14]
00057fa4  08 90                                            str r0, [sp, #0x20]
00057fa6  05 a8                                            add r0, sp, #0x14
00057fa8  da f7 86 ec                                      blx #0x328b8
00057fac  30 46                                            mov r0, r6
00057fae  68 21                                            movs r1, #0x68
00057fb0  da f7 b6 eb                                      blx #0x32720
00057fb4  05 46                                            mov r5, r0
00057fb6  73 48                                            ldr r0, [pc, #0x1cc]
00057fb8  78 44                                            add r0, pc
00057fba  01 68                                            ldr r1, [r0]
00057fbc  28 46                                            mov r0, r5
00057fbe  da f7 a0 ec                                      blx #0x32900
00057fc2  28 46                                            mov r0, r5
00057fc4  00 21                                            movs r1, #0
00057fc6  01 22                                            movs r2, #1
00057fc8  da f7 a2 ed                                      blx #0x32b10
00057fcc  06 e0                                            b #0x57fdc
00057fce  aa 69                                            ldr r2, [r5, #0x18]
00057fd0  db f8 20 10                                      ldr.w r1, [fp, #0x20]
00057fd4  d6 f8 78 01                                      ldr.w r0, [r6, #0x178]
00057fd8  da f7 c0 eb                                      blx #0x3275c
00057fdc  30 46                                            mov r0, r6
00057fde  1c 21                                            movs r1, #0x1c
00057fe0  da f7 9e eb                                      blx #0x32720
00057fe4  80 46                                            mov r8, r0
00057fe6  68 48                                            ldr r0, [pc, #0x1a0]
00057fe8  78 44                                            add r0, pc
00057fea  d0 f8 00 90                                      ldr.w sb, [r0]
00057fee  40 46                                            mov r0, r8
00057ff0  49 46                                            mov r1, sb
00057ff2  da f7 86 ec                                      blx #0x32900
00057ff6  d6 f8 64 11                                      ldr.w r1, [r6, #0x164]
00057ffa  40 46                                            mov r0, r8
00057ffc  da f7 da ec                                      blx #0x329b4
00058000  30 46                                            mov r0, r6
00058002  2c 21                                            movs r1, #0x2c
00058004  da f7 8c eb                                      blx #0x32720
00058008  49 46                                            mov r1, sb
0005800a  82 46                                            mov sl, r0
0005800c  da f7 78 ec                                      blx #0x32900
00058010  50 46                                            mov r0, sl
00058012  4c 21                                            movs r1, #0x4c
00058014  2a 46                                            mov r2, r5
00058016  43 46                                            mov r3, r8
00058018  da f7 7e ec                                      blx #0x32918
0005801c  d6 f8 64 01                                      ldr.w r0, [r6, #0x164]
00058020  2d 69                                            ldr r5, [r5, #0x10]
00058022  04 69                                            ldr r4, [r0, #0x10]
00058024  a5 42                                            cmp r5, r4
00058026  37 d0                                            beq #0x58098
00058028  db f8 20 00                                      ldr.w r0, [fp, #0x20]
0005802c  58 4b                                            ldr r3, [pc, #0x160]
0005802e  57 4a                                            ldr r2, [pc, #0x15c]
00058030  41 68                                            ldr r1, [r0, #4]
00058032  7b 44                                            add r3, pc
00058034  09 91                                            str r1, [sp, #0x24]
00058036  7a 44                                            add r2, pc
00058038  81 68                                            ldr r1, [r0, #8]
0005803a  05 91                                            str r1, [sp, #0x14]
0005803c  c1 68                                            ldr r1, [r0, #0xc]
0005803e  1b 68                                            ldr r3, [r3]
00058040  06 91                                            str r1, [sp, #0x18]
00058042  12 68                                            ldr r2, [r2]
00058044  01 69                                            ldr r1, [r0, #0x10]
00058046  07 91                                            str r1, [sp, #0x1c]
00058048  d3 f8 00 80                                      ldr.w r8, [r3]
0005804c  41 69                                            ldr r1, [r0, #0x14]
0005804e  10 68                                            ldr r0, [r2]
00058050  32 46                                            mov r2, r6
00058052  08 91                                            str r1, [sp, #0x20]
00058054  41 46                                            mov r1, r8
00058056  da f7 8c ed                                      blx #0x32b70
0005805a  69 68                                            ldr r1, [r5, #4]
0005805c  01 29                                            cmp r1, #1
0005805e  9c bf                                            itt ls
00058060  62 68                                            ldrls r2, [r4, #4]
00058062  01 2a                                            cmpls r2, #1
00058064  0f d8                                            bhi #0x58086
00058066  80 f0 01 00                                      eor r0, r0, #1
0005806a  01 28                                            cmp r0, #1
0005806c  0b d0                                            beq #0x58086
0005806e  01 29                                            cmp r1, #1
00058070  3b d1                                            bne #0x580ea
00058072  0a f1 1c 01                                      add.w r1, sl, #0x1c
00058076  40 46                                            mov r0, r8
00058078  32 46                                            mov r2, r6
0005807a  da f7 80 ed                                      blx #0x32b7c
0005807e  58 b9                                            cbnz r0, #0x58098
00058080  45 4a                                            ldr r2, [pc, #0x114]
00058082  7a 44                                            add r2, pc
00058084  3b e0                                            b #0x580fe
00058086  45 4a                                            ldr r2, [pc, #0x114]
00058088  31 46                                            mov r1, r6
0005808a  eb 68                                            ldr r3, [r5, #0xc]
0005808c  e0 68                                            ldr r0, [r4, #0xc]
0005808e  7a 44                                            add r2, pc
00058090  00 90                                            str r0, [sp]
00058092  05 a8                                            add r0, sp, #0x14
00058094  da f7 10 ec                                      blx #0x328b8
00058098  30 46                                            mov r0, r6
0005809a  20 21                                            movs r1, #0x20
0005809c  da f7 40 eb                                      blx #0x32720
000580a0  05 46                                            mov r5, r0
000580a2  3f 48                                            ldr r0, [pc, #0xfc]
000580a4  78 44                                            add r0, pc
000580a6  01 68                                            ldr r1, [r0]
000580a8  28 46                                            mov r0, r5
000580aa  da f7 2a ec                                      blx #0x32900
000580ae  dd e9 03 21                                      ldrd r2, r1, [sp, #0xc]
000580b2  28 46                                            mov r0, r5
000580b4  53 46                                            mov r3, sl
000580b6  da f7 a8 ec                                      blx #0x32a08
000580ba  00 2d                                            cmp r5, #0
000580bc  18 bf                                            it ne
000580be  04 35                                            addne r5, #4
000580c0  02 99                                            ldr r1, [sp, #8]
000580c2  08 1d                                            adds r0, r1, #4
000580c4  28 60                                            str r0, [r5]
000580c6  88 68                                            ldr r0, [r1, #8]
000580c8  68 60                                            str r0, [r5, #4]
000580ca  05 60                                            str r5, [r0]
000580cc  8d 60                                            str r5, [r1, #8]
000580ce  38 48                                            ldr r0, [pc, #0xe0]
000580d0  0a 99                                            ldr r1, [sp, #0x28]
000580d2  78 44                                            add r0, pc
000580d4  00 68                                            ldr r0, [r0]
000580d6  00 68                                            ldr r0, [r0]
000580d8  40 1a                                            subs r0, r0, r1
000580da  01 bf                                            itttt eq
000580dc  00 20                                            moveq r0, #0
000580de  0b b0                                            addeq sp, #0x2c
000580e0  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
000580e4  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000580e6  d9 f7 bc ef                                      blx #0x32060
000580ea  0a f1 20 01                                      add.w r1, sl, #0x20
000580ee  40 46                                            mov r0, r8
000580f0  32 46                                            mov r2, r6
000580f2  da f7 44 ed                                      blx #0x32b7c
000580f6  00 28                                            cmp r0, #0
000580f8  ce d1                                            bne #0x58098
000580fa  26 4a                                            ldr r2, [pc, #0x98]
000580fc  7a 44                                            add r2, pc
000580fe  05 a8                                            add r0, sp, #0x14
00058100  31 46                                            mov r1, r6
00058102  da f7 da eb                                      blx #0x328b8
00058106  c7 e7                                            b #0x58098
00058108  c2 46                                            mov sl, r8
0005810a  08 00                                            movs r0, r1
0005810c  32 47                                            bx r6
0005810e  08 00                                            movs r0, r1
00058110  64 75                                            strb r4, [r4, #0x15]
00058112  70 6c                                            ldr r0, [r6, #0x44]
00058114  69 63                                            str r1, [r5, #0x34]
00058116  61 74                                            strb r1, [r4, #0x11]
00058118  65 20                                            movs r0, #0x65
0005811a  63 61                                            str r3, [r4, #0x14]
0005811c  73 65                                            str r3, [r6, #0x54]
0005811e  20 76                                            strb r0, [r4, #0x18]
00058120  61 6c                                            ldr r1, [r4, #0x44]
00058122  75 65                                            str r5, [r6, #0x54]
00058124  00 00                                            movs r0, r0
00058126  00 00                                            movs r0, r0
00058128  74 68                                            ldr r4, [r6, #4]
0005812a  69 73                                            strb r1, [r5, #0xd]
0005812c  20 69                                            ldr r0, [r4, #0x10]
0005812e  73 20                                            movs r0, #0x73
00058130  74 68                                            ldr r4, [r6, #4]
00058132  65 20                                            movs r0, #0x65
00058134  70 72                                            strb r0, [r6, #9]
00058136  65 76                                            strb r5, [r4, #0x19]
00058138  69 6f                                            ldr r1, [r5, #0x74]
0005813a  75 73                                            strb r5, [r6, #0xd]
0005813c  20 63                                            str r0, [r4, #0x30]
0005813e  61 73                                            strb r1, [r4, #0xd]
00058140  65 20                                            movs r0, #0x65
00058142  6c 61                                            str r4, [r5, #0x14]
00058144  62 65                                            str r2, [r4, #0x54]
00058146  6c 00                                            lsls r4, r5, #1
00058148  73 77                                            strb r3, [r6, #0x1d]
0005814a  69 74                                            strb r1, [r5, #0x11]
0005814c  63 68                                            ldr r3, [r4, #4]
0005814e  20 73                                            strb r0, [r4, #0xc]
00058150  74 61                                            str r4, [r6, #0x14]
00058152  74 65                                            str r4, [r6, #0x54]
00058154  6d 65                                            str r5, [r5, #0x54]
00058156  6e 74                                            strb r6, [r5, #0x11]
00058158  20 63                                            str r0, [r4, #0x30]
0005815a  61 73                                            strb r1, [r4, #0xd]
0005815c  65 20                                            movs r0, #0x65
0005815e  6c 61                                            str r4, [r5, #0x14]
00058160  62 65                                            str r2, [r4, #0x54]
00058162  6c 20                                            movs r0, #0x6c
00058164  6d 75                                            strb r5, [r5, #0x15]
00058166  73 74                                            strb r3, [r6, #0x11]
00058168  20 62                                            str r0, [r4, #0x20]
0005816a  65 20                                            movs r0, #0x65
0005816c  61 20                                            movs r0, #0x61
0005816e  63 6f                                            ldr r3, [r4, #0x74]
00058170  6e 73                                            strb r6, [r5, #0xd]
00058172  74 61                                            str r4, [r6, #0x14]
00058174  6e 74                                            strb r6, [r5, #0x11]
00058176  20 65                                            str r0, [r4, #0x50]
00058178  78 70                                            strb r0, [r7, #1]
0005817a  72 65                                            str r2, [r6, #0x54]
0005817c  73 73                                            strb r3, [r6, #0xd]
0005817e  69 6f                                            ldr r1, [r5, #0x74]
00058180  6e 00                                            lsls r6, r5, #1
00058182  00 00                                            movs r0, r0
00058184  80 45                                            cmp r8, r0
00058186  08 00                                            movs r0, r1
00058188  50 45                                            cmp r0, sl
0005818a  08 00                                            movs r0, r1
0005818c  3e 45                                            cmp r6, r7
0005818e  08 00                                            movs r0, r1
00058190  46 45                                            cmp r6, r8
00058192  08 00                                            movs r0, r1
00058194  b0 2f                                            cmp r7, #0xb0
00058196  06 00                                            movs r6, r0
00058198  2a 30                                            adds r0, #0x2a
0005819a  06 00                                            movs r6, r0
0005819c  da 2f                                            cmp r7, #0xda
0005819e  06 00                                            movs r6, r0
000581a0  94 44                                            add ip, r2
000581a2  08 00                                            movs r0, r1
000581a4  fd 31                                            adds r1, #0xfd
000581a6  06 00                                            movs r6, r0
000581a8  15 32                                            adds r2, #0x15
000581aa  06 00                                            movs r6, r0
000581ac  32 46                                            mov r2, r6
000581ae  08 00                                            movs r0, r1
000581b0  e2 43                                            mvns r2, r4
000581b2  08 00                                            movs r0, r1

; FUNCTION 0x0007e0a4, declared_size=68, range_size=68, mode=thumb
; class-group: ast_case_label
; alias: _ZNK14ast_case_label5printEv
; demangled: ast_case_label::print() const
; decoder-mode: thumb
0007e0a4  d0 b5                                            push {r4, r6, r7, lr}
0007e0a6  02 af                                            add r7, sp, #8
0007e0a8  04 46                                            mov r4, r0
0007e0aa  20 6a                                            ldr r0, [r4, #0x20]
0007e0ac  58 b1                                            cbz r0, #0x7e0c6
0007e0ae  08 a0                                            adr r0, #0x20
0007e0b0  b4 f7 1a e9                                      blx #0x322e8
0007e0b4  20 6a                                            ldr r0, [r4, #0x20]
0007e0b6  01 68                                            ldr r1, [r0]
0007e0b8  09 68                                            ldr r1, [r1]
0007e0ba  88 47                                            blx r1
0007e0bc  06 a0                                            adr r0, #0x18
0007e0be  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007e0c2  32 f0 71 bd                                      b.w #0xb0ba8
0007e0c6  05 a0                                            adr r0, #0x14
0007e0c8  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007e0cc  32 f0 6c bd                                      b.w #0xb0ba8
0007e0d0  63 61                                            str r3, [r4, #0x14]
0007e0d2  73 65                                            str r3, [r6, #0x54]
0007e0d4  20 00                                            movs r0, r4
0007e0d6  00 00                                            movs r0, r0
0007e0d8  3a 20                                            movs r0, #0x3a
0007e0da  00 00                                            movs r0, r0
0007e0dc  64 65                                            str r4, [r4, #0x54]
0007e0de  66 61                                            str r6, [r4, #0x14]
0007e0e0  75 6c                                            ldr r5, [r6, #0x44]
0007e0e2  74 3a                                            subs r2, #0x74
0007e0e4  20 00                                            movs r0, r4
0007e0e6  00 00                                            movs r0, r0

; FUNCTION 0x0007e0e8, declared_size=36, range_size=36, mode=thumb
; class-group: ast_case_label
; alias: _ZN14ast_case_labelC1EP14ast_expression
; demangled: ast_case_label::ast_case_label(ast_expression*)
; alias: _ZN14ast_case_labelC2EP14ast_expression
; demangled: ast_case_label::ast_case_label(ast_expression*)
; decoder-mode: thumb
0007e0e8  b0 b5                                            push {r4, r5, r7, lr}
0007e0ea  02 af                                            add r7, sp, #8
0007e0ec  05 46                                            mov r5, r0
0007e0ee  28 1d                                            adds r0, r5, #4
0007e0f0  0c 46                                            mov r4, r1
0007e0f2  14 21                                            movs r1, #0x14
0007e0f4  b4 f7 b4 ea                                      blx #0x32660
0007e0f8  03 48                                            ldr r0, [pc, #0xc]
0007e0fa  2c 62                                            str r4, [r5, #0x20]
0007e0fc  78 44                                            add r0, pc
0007e0fe  00 68                                            ldr r0, [r0]
0007e100  08 30                                            adds r0, #8
0007e102  28 60                                            str r0, [r5]
0007e104  28 46                                            mov r0, r5
0007e106  b0 bd                                            pop {r4, r5, r7, pc}
0007e108  38 e8                                            .byte 0x38, 0xe8
0007e10a  05 00                                            movs r5, r0
