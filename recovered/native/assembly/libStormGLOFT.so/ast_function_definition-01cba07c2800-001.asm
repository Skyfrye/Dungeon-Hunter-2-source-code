; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00056e14, declared_size=324, range_size=324, mode=thumb
; class-group: ast_function_definition
; alias: _ZN23ast_function_definition3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_function_definition::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00056e14  f0 b5                                            push {r4, r5, r6, r7, lr}
00056e16  03 af                                            add r7, sp, #0xc
00056e18  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00056e1c  89 b0                                            sub sp, #0x24
00056e1e  05 46                                            mov r5, r0
00056e20  43 48                                            ldr r0, [pc, #0x10c]
00056e22  92 46                                            mov sl, r2
00056e24  01 23                                            movs r3, #1
00056e26  78 44                                            add r0, pc
00056e28  00 68                                            ldr r0, [r0]
00056e2a  00 68                                            ldr r0, [r0]
00056e2c  08 90                                            str r0, [sp, #0x20]
00056e2e  28 6a                                            ldr r0, [r5, #0x20]
00056e30  02 68                                            ldr r2, [r0]
00056e32  80 f8 34 30                                      strb.w r3, [r0, #0x34]
00056e36  53 68                                            ldr r3, [r2, #4]
00056e38  52 46                                            mov r2, sl
00056e3a  98 47                                            blx r3
00056e3c  28 6a                                            ldr r0, [r5, #0x20]
00056e3e  84 6b                                            ldr r4, [r0, #0x38]
00056e40  00 2c                                            cmp r4, #0
00056e42  66 d0                                            beq #0x56f12
00056e44  00 20                                            movs r0, #0
00056e46  8a f8 5c 01                                      strb.w r0, [sl, #0x15c]
00056e4a  da f8 14 00                                      ldr.w r0, [sl, #0x14]
00056e4e  ca f8 54 41                                      str.w r4, [sl, #0x154]
00056e52  db f7 dc ee                                      blx #0x32c0c
00056e56  02 94                                            str r4, [sp, #8]
00056e58  a6 69                                            ldr r6, [r4, #0x18]
00056e5a  00 2e                                            cmp r6, #0
00056e5c  18 bf                                            it ne
00056e5e  04 3e                                            subne r6, #4
00056e60  b3 46                                            mov fp, r6
00056e62  5b f8 04 0f                                      ldr r0, [fp, #4]!
00056e66  28 b3                                            cbz r0, #0x56eb4
00056e68  0d f1 0c 08                                      add.w r8, sp, #0xc
00056e6c  0f f2 c4 09                                      addw sb, pc, #0xc4
00056e70  71 69                                            ldr r1, [r6, #0x14]
00056e72  da f8 14 00                                      ldr.w r0, [sl, #0x14]
00056e76  db f7 4e ef                                      blx #0x32d14
00056e7a  01 28                                            cmp r0, #1
00056e7c  0b d1                                            bne #0x56e96
00056e7e  2c 1d                                            adds r4, r5, #4
00056e80  1f cc                                            ldm r4, {r0, r1, r2, r3, r4}
00056e82  07 90                                            str r0, [sp, #0x1c]
00056e84  03 a8                                            add r0, sp, #0xc
00056e86  1e c0                                            stm r0!, {r1, r2, r3, r4}
00056e88  40 46                                            mov r0, r8
00056e8a  51 46                                            mov r1, sl
00056e8c  73 69                                            ldr r3, [r6, #0x14]
00056e8e  4a 46                                            mov r2, sb
00056e90  db f7 12 ed                                      blx #0x328b8
00056e94  04 e0                                            b #0x56ea0
00056e96  da f8 14 00                                      ldr.w r0, [sl, #0x14]
00056e9a  31 46                                            mov r1, r6
00056e9c  db f7 64 ef                                      blx #0x32d68
00056ea0  db f8 00 60                                      ldr.w r6, [fp]
00056ea4  00 2e                                            cmp r6, #0
00056ea6  18 bf                                            it ne
00056ea8  04 3e                                            subne r6, #4
00056eaa  b3 46                                            mov fp, r6
00056eac  5b f8 04 0f                                      ldr r0, [fp, #4]!
00056eb0  00 28                                            cmp r0, #0
00056eb2  dd d1                                            bne #0x56e70
00056eb4  68 6a                                            ldr r0, [r5, #0x24]
00056eb6  52 46                                            mov r2, sl
00056eb8  02 9c                                            ldr r4, [sp, #8]
00056eba  01 68                                            ldr r1, [r0]
00056ebc  4b 68                                            ldr r3, [r1, #4]
00056ebe  04 f1 26 01                                      add.w r1, r4, #0x26
00056ec2  98 47                                            blx r3
00056ec4  94 f8 24 00                                      ldrb.w r0, [r4, #0x24]
00056ec8  40 f0 01 00                                      orr r0, r0, #1
00056ecc  84 f8 24 00                                      strb.w r0, [r4, #0x24]
00056ed0  da f8 14 00                                      ldr.w r0, [sl, #0x14]
00056ed4  db f7 06 ef                                      blx #0x32ce4
00056ed8  00 20                                            movs r0, #0
00056eda  ca f8 54 01                                      str.w r0, [sl, #0x154]
00056ede  20 69                                            ldr r0, [r4, #0x10]
00056ee0  41 68                                            ldr r1, [r0, #4]
00056ee2  0a 29                                            cmp r1, #0xa
00056ee4  15 d0                                            beq #0x56f12
00056ee6  9a f8 5c 11                                      ldrb.w r1, [sl, #0x15c]
00056eea  91 b9                                            cbnz r1, #0x56f12
00056eec  2e 1d                                            adds r6, r5, #4
00056eee  0d f1 0c 0c                                      add.w ip, sp, #0xc
00056ef2  4e ce                                            ldm r6, {r1, r2, r3, r6}
00056ef4  6d 69                                            ldr r5, [r5, #0x14]
00056ef6  8c e8 4c 00                                      stm.w ip, {r2, r3, r6}
00056efa  cd e9 06 51                                      strd r5, r1, [sp, #0x18]
00056efe  a1 6b                                            ldr r1, [r4, #0x38]
00056f00  13 4a                                            ldr r2, [pc, #0x4c]
00056f02  c0 68                                            ldr r0, [r0, #0xc]
00056f04  0b 69                                            ldr r3, [r1, #0x10]
00056f06  7a 44                                            add r2, pc
00056f08  00 90                                            str r0, [sp]
00056f0a  03 a8                                            add r0, sp, #0xc
00056f0c  51 46                                            mov r1, sl
00056f0e  db f7 d4 ec                                      blx #0x328b8
00056f12  10 48                                            ldr r0, [pc, #0x40]
00056f14  08 99                                            ldr r1, [sp, #0x20]
00056f16  78 44                                            add r0, pc
00056f18  00 68                                            ldr r0, [r0]
00056f1a  00 68                                            ldr r0, [r0]
00056f1c  40 1a                                            subs r0, r0, r1
00056f1e  01 bf                                            itttt eq
00056f20  00 20                                            moveq r0, #0
00056f22  09 b0                                            addeq sp, #0x24
00056f24  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00056f28  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00056f2a  db f7 9a e8                                      blx #0x32060
00056f2e  00 bf                                            nop
00056f30  8e 56                                            ldrsb r6, [r1, r2]
00056f32  08 00                                            movs r0, r1
00056f34  70 61                                            str r0, [r6, #0x14]
00056f36  72 61                                            str r2, [r6, #0x14]
00056f38  6d 65                                            str r5, [r5, #0x54]
00056f3a  74 65                                            str r4, [r6, #0x54]
00056f3c  72 20                                            movs r0, #0x72
00056f3e  60 25                                            movs r5, #0x60
00056f40  73 27                                            movs r7, #0x73
00056f42  20 72                                            strb r0, [r4, #8]
00056f44  65 64                                            str r5, [r4, #0x44]
00056f46  65 63                                            str r5, [r4, #0x34]
00056f48  6c 61                                            str r4, [r5, #0x14]
00056f4a  72 65                                            str r2, [r6, #0x54]
00056f4c  64 00                                            lsls r4, r4, #1
00056f4e  00 00                                            movs r0, r0
00056f50  29 40                                            ands r1, r5
00056f52  06 00                                            movs r6, r0
00056f54  9e 55                                            strb r6, [r3, r6]
00056f56  08 00                                            movs r0, r1

; FUNCTION 0x0007dd5c, declared_size=26, range_size=26, mode=thumb
; class-group: ast_function_definition
; alias: _ZNK23ast_function_definition5printEv
; demangled: ast_function_definition::print() const
; decoder-mode: thumb
0007dd5c  d0 b5                                            push {r4, r6, r7, lr}
0007dd5e  02 af                                            add r7, sp, #8
0007dd60  04 46                                            mov r4, r0
0007dd62  20 6a                                            ldr r0, [r4, #0x20]
0007dd64  01 68                                            ldr r1, [r0]
0007dd66  09 68                                            ldr r1, [r1]
0007dd68  88 47                                            blx r1
0007dd6a  60 6a                                            ldr r0, [r4, #0x24]
0007dd6c  01 68                                            ldr r1, [r0]
0007dd6e  09 68                                            ldr r1, [r1]
0007dd70  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007dd74  08 47                                            bx r1
