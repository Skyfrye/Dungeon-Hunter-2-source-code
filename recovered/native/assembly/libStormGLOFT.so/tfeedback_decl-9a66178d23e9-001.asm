; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0009179c, declared_size=352, range_size=352, mode=thumb
; class-group: tfeedback_decl
; alias: _ZN14tfeedback_decl4initEP10gl_contextPKvPKc
; demangled: tfeedback_decl::init(gl_context*, void const*, char const*)
; decoder-mode: thumb
0009179c  f0 b5                                            push {r4, r5, r6, r7, lr}
0009179e  03 af                                            add r7, sp, #0xc
000917a0  2d e9 00 0b                                      push.w {r8, sb, fp}
000917a4  82 b0                                            sub sp, #8
000917a6  04 46                                            mov r4, r0
000917a8  34 48                                            ldr r0, [pc, #0xd0]
000917aa  1e 46                                            mov r6, r3
000917ac  89 46                                            mov sb, r1
000917ae  78 44                                            add r0, pc
000917b0  90 46                                            mov r8, r2
000917b2  00 68                                            ldr r0, [r0]
000917b4  00 68                                            ldr r0, [r0]
000917b6  01 90                                            str r0, [sp, #4]
000917b8  4f f0 ff 30                                      mov.w r0, #-1
000917bc  26 60                                            str r6, [r4]
000917be  60 61                                            str r0, [r4, #0x14]
000917c0  00 20                                            movs r0, #0
000917c2  20 74                                            strb r0, [r4, #0x10]
000917c4  e0 62                                            str r0, [r4, #0x2c]
000917c6  84 f8 30 00                                      strb.w r0, [r4, #0x30]
000917ca  c4 e9 0d 00                                      strd r0, r0, [r4, #0x34]
000917ce  99 f8 3f 04                                      ldrb.w r0, [sb, #0x43f]
000917d2  c0 b1                                            cbz r0, #0x91806
000917d4  2a a1                                            adr r1, #0xa8
000917d6  30 46                                            mov r0, r6
000917d8  a0 f7 b2 eb                                      blx #0x31f40
000917dc  88 b3                                            cbz r0, #0x91842
000917de  2c a1                                            adr r1, #0xb0
000917e0  30 46                                            mov r0, r6
000917e2  a0 f7 ae eb                                      blx #0x31f40
000917e6  a0 b3                                            cbz r0, #0x91852
000917e8  2e a1                                            adr r1, #0xb8
000917ea  30 46                                            mov r0, r6
000917ec  a0 f7 a8 eb                                      blx #0x31f40
000917f0  88 b3                                            cbz r0, #0x91856
000917f2  31 a1                                            adr r1, #0xc4
000917f4  30 46                                            mov r0, r6
000917f6  a0 f7 a4 eb                                      blx #0x31f40
000917fa  70 b3                                            cbz r0, #0x9185a
000917fc  33 a1                                            adr r1, #0xcc
000917fe  30 46                                            mov r0, r6
00091800  a0 f7 9e eb                                      blx #0x31f40
00091804  58 b3                                            cbz r0, #0x9185e
00091806  69 46                                            mov r1, sp
00091808  30 46                                            mov r0, r6
0009180a  a3 f7 d2 e9                                      blx #0x34bb0
0009180e  05 46                                            mov r5, r0
00091810  00 98                                            ldr r0, [sp]
00091812  31 46                                            mov r1, r6
00091814  82 1b                                            subs r2, r0, r6
00091816  40 46                                            mov r0, r8
00091818  a3 f7 d0 e9                                      blx #0x34bbc
0009181c  00 28                                            cmp r0, #0
0009181e  60 60                                            str r0, [r4, #4]
00091820  13 d0                                            beq #0x9184a
00091822  00 2d                                            cmp r5, #0
00091824  a6 bf                                            itte ge
00091826  e5 60                                            strge r5, [r4, #0xc]
00091828  01 21                                            movge r1, #1
0009182a  00 21                                            movlt r1, #0
0009182c  21 72                                            strb r1, [r4, #8]
0009182e  99 f8 83 13                                      ldrb.w r1, [sb, #0x383]
00091832  b1 b1                                            cbz r1, #0x91862
00091834  2a a1                                            adr r1, #0xa8
00091836  a0 f7 84 eb                                      blx #0x31f40
0009183a  90 b9                                            cbnz r0, #0x91862
0009183c  01 20                                            movs r0, #1
0009183e  20 74                                            strb r0, [r4, #0x10]
00091840  0f e0                                            b #0x91862
00091842  01 20                                            movs r0, #1
00091844  84 f8 30 00                                      strb.w r0, [r4, #0x30]
00091848  0b e0                                            b #0x91862
0009184a  29 a0                                            adr r0, #0xa4
0009184c  a0 f7 fe ef                                      blx #0x3284c
00091850  07 e0                                            b #0x91862
00091852  01 20                                            movs r0, #1
00091854  04 e0                                            b #0x91860
00091856  02 20                                            movs r0, #2
00091858  02 e0                                            b #0x91860
0009185a  03 20                                            movs r0, #3
0009185c  00 e0                                            b #0x91860
0009185e  04 20                                            movs r0, #4
00091860  e0 62                                            str r0, [r4, #0x2c]
00091862  25 48                                            ldr r0, [pc, #0x94]
00091864  01 99                                            ldr r1, [sp, #4]
00091866  78 44                                            add r0, pc
00091868  00 68                                            ldr r0, [r0]
0009186a  00 68                                            ldr r0, [r0]
0009186c  40 1a                                            subs r0, r0, r1
0009186e  02 bf                                            ittt eq
00091870  02 b0                                            addeq sp, #8
00091872  bd e8 00 0b                                      popeq.w {r8, sb, fp}
00091876  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00091878  a0 f7 f2 eb                                      blx #0x32060
0009187c  06 ad                                            add r5, sp, #0x18
0009187e  04 00                                            movs r4, r0
00091880  67 6c                                            ldr r7, [r4, #0x44]
00091882  5f 4e                                            ldr r6, [pc, #0x17c]
00091884  65 78                                            ldrb r5, [r4, #1]
00091886  74 42                                            rsbs r4, r6, #0
00091888  75 66                                            str r5, [r6, #0x64]
0009188a  66 65                                            str r6, [r4, #0x54]
0009188c  72 00                                            lsls r2, r6, #1
0009188e  00 00                                            movs r0, r0
00091890  67 6c                                            ldr r7, [r4, #0x44]
00091892  5f 53                                            strh r7, [r3, r5]
00091894  6b 69                                            ldr r3, [r5, #0x14]
00091896  70 43                                            muls r0, r6, r0
00091898  6f 6d                                            ldr r7, [r5, #0x54]
0009189a  70 6f                                            ldr r0, [r6, #0x74]
0009189c  6e 65                                            str r6, [r5, #0x54]
0009189e  6e 74                                            strb r6, [r5, #0x11]
000918a0  73 31                                            adds r1, #0x73
000918a2  00 00                                            movs r0, r0
000918a4  67 6c                                            ldr r7, [r4, #0x44]
000918a6  5f 53                                            strh r7, [r3, r5]
000918a8  6b 69                                            ldr r3, [r5, #0x14]
000918aa  70 43                                            muls r0, r6, r0
000918ac  6f 6d                                            ldr r7, [r5, #0x54]
000918ae  70 6f                                            ldr r0, [r6, #0x74]
000918b0  6e 65                                            str r6, [r5, #0x54]
000918b2  6e 74                                            strb r6, [r5, #0x11]
000918b4  73 32                                            adds r2, #0x73
000918b6  00 00                                            movs r0, r0
000918b8  67 6c                                            ldr r7, [r4, #0x44]
000918ba  5f 53                                            strh r7, [r3, r5]
000918bc  6b 69                                            ldr r3, [r5, #0x14]
000918be  70 43                                            muls r0, r6, r0
000918c0  6f 6d                                            ldr r7, [r5, #0x54]
000918c2  70 6f                                            ldr r0, [r6, #0x74]
000918c4  6e 65                                            str r6, [r5, #0x54]
000918c6  6e 74                                            strb r6, [r5, #0x11]
000918c8  73 33                                            adds r3, #0x73
000918ca  00 00                                            movs r0, r0
000918cc  67 6c                                            ldr r7, [r4, #0x44]
000918ce  5f 53                                            strh r7, [r3, r5]
000918d0  6b 69                                            ldr r3, [r5, #0x14]
000918d2  70 43                                            muls r0, r6, r0
000918d4  6f 6d                                            ldr r7, [r5, #0x54]
000918d6  70 6f                                            ldr r0, [r6, #0x74]
000918d8  6e 65                                            str r6, [r5, #0x54]
000918da  6e 74                                            strb r6, [r5, #0x11]
000918dc  73 34                                            adds r4, #0x73
000918de  00 00                                            movs r0, r0
000918e0  67 6c                                            ldr r7, [r4, #0x44]
000918e2  5f 43                                            muls r7, r3, r7
000918e4  6c 69                                            ldr r4, [r5, #0x14]
000918e6  70 44                                            add r0, lr
000918e8  69 73                                            strb r1, [r5, #0xd]
000918ea  74 61                                            str r4, [r6, #0x14]
000918ec  6e 63                                            str r6, [r5, #0x34]
000918ee  65 00                                            lsls r5, r4, #1
000918f0  69 6e                                            ldr r1, [r5, #0x64]
000918f2  69 74                                            strb r1, [r5, #0x11]
000918f4  00 00                                            movs r0, r0
000918f6  00 00                                            movs r0, r0
000918f8  4e ac                                            add r4, sp, #0x138
000918fa  04 00                                            movs r4, r0

; FUNCTION 0x000918fc, declared_size=44, range_size=44, mode=thumb
; class-group: tfeedback_decl
; alias: _ZN14tfeedback_decl7is_sameERKS_S1_
; demangled: tfeedback_decl::is_same(tfeedback_decl const&, tfeedback_decl const&)
; decoder-mode: thumb
000918fc  b0 b5                                            push {r4, r5, r7, lr}
000918fe  02 af                                            add r7, sp, #8
00091900  0d 46                                            mov r5, r1
00091902  04 46                                            mov r4, r0
00091904  69 68                                            ldr r1, [r5, #4]
00091906  60 68                                            ldr r0, [r4, #4]
00091908  a0 f7 1a eb                                      blx #0x31f40
0009190c  50 b9                                            cbnz r0, #0x91924
0009190e  20 7a                                            ldrb r0, [r4, #8]
00091910  29 7a                                            ldrb r1, [r5, #8]
00091912  88 42                                            cmp r0, r1
00091914  06 d1                                            bne #0x91924
00091916  18 b1                                            cbz r0, #0x91920
00091918  e8 68                                            ldr r0, [r5, #0xc]
0009191a  e1 68                                            ldr r1, [r4, #0xc]
0009191c  81 42                                            cmp r1, r0
0009191e  01 d1                                            bne #0x91924
00091920  01 20                                            movs r0, #1
00091922  b0 bd                                            pop {r4, r5, r7, pc}
00091924  00 20                                            movs r0, #0
00091926  b0 bd                                            pop {r4, r5, r7, pc}

; FUNCTION 0x00091928, declared_size=288, range_size=288, mode=thumb
; class-group: tfeedback_decl
; alias: _ZN14tfeedback_decl15assign_locationEP10gl_contextP17gl_shader_program
; demangled: tfeedback_decl::assign_location(gl_context*, gl_shader_program*)
; decoder-mode: thumb
00091928  f0 b5                                            push {r4, r5, r6, r7, lr}
0009192a  03 af                                            add r7, sp, #0xc
0009192c  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00091930  81 b0                                            sub sp, #4
00091932  46 6b                                            ldr r6, [r0, #0x34]
00091934  d6 e9 00 ca                                      ldrd ip, sl, [r6]
00091938  b6 68                                            ldr r6, [r6, #8]
0009193a  da f8 04 30                                      ldr.w r3, [sl, #4]
0009193e  9c f8 1b 40                                      ldrb.w r4, [ip, #0x1b]
00091942  dc f8 24 50                                      ldr.w r5, [ip, #0x24]
00091946  09 2b                                            cmp r3, #9
00091948  04 f0 03 04                                      and r4, r4, #3
0009194c  44 ea 85 05                                      orr.w r5, r4, r5, lsl #2
00091950  05 eb 06 0e                                      add.w lr, r5, r6
00091954  25 d1                                            bne #0x919a2
00091956  da f8 14 b0                                      ldr.w fp, [sl, #0x14]
0009195a  02 f1 a0 04                                      add.w r4, r2, #0xa0
0009195e  06 7c                                            ldrb r6, [r0, #0x10]
00091960  03 7a                                            ldrb r3, [r0, #8]
00091962  bb f8 08 50                                      ldrh.w r5, [fp, #8]
00091966  00 2e                                            cmp r6, #0
00091968  08 bf                                            it eq
0009196a  0a f1 10 04                                      addeq.w r4, sl, #0x10
0009196e  00 2b                                            cmp r3, #0
00091970  24 68                                            ldr r4, [r4]
00091972  c5 f3 42 28                                      ubfx r8, r5, #9, #3
00091976  c5 f3 02 39                                      ubfx sb, r5, #0xc, #3
0009197a  0a d0                                            beq #0x91992
0009197c  c3 68                                            ldr r3, [r0, #0xc]
0009197e  a3 42                                            cmp r3, r4
00091980  25 d2                                            bhs #0x919ce
00091982  01 25                                            movs r5, #1
00091984  00 2e                                            cmp r6, #0
00091986  08 bf                                            it eq
00091988  18 fb 09 f5                                      smulbbeq r5, r8, sb
0009198c  01 24                                            movs r4, #1
0009198e  05 fb 03 ee                                      mla lr, r5, r3, lr
00091992  00 2e                                            cmp r6, #0
00091994  84 62                                            str r4, [r0, #0x28]
00091996  c0 e9 07 89                                      strd r8, sb, [r0, #0x1c]
0009199a  23 d0                                            beq #0x919e4
0009199c  41 f2 06 43                                      movw r3, #0x1406
000919a0  23 e0                                            b #0x919ea
000919a2  03 7a                                            ldrb r3, [r0, #8]
000919a4  23 b1                                            cbz r3, #0x919b0
000919a6  25 49                                            ldr r1, [pc, #0x94]
000919a8  d0 e9 00 c3                                      ldrd ip, r3, [r0]
000919ac  79 44                                            add r1, pc
000919ae  13 e0                                            b #0x919d8
000919b0  01 24                                            movs r4, #1
000919b2  84 62                                            str r4, [r0, #0x28]
000919b4  ba f8 08 30                                      ldrh.w r3, [sl, #8]
000919b8  c3 f3 42 28                                      ubfx r8, r3, #9, #3
000919bc  c0 f8 1c 80                                      str.w r8, [r0, #0x1c]
000919c0  ba f8 08 30                                      ldrh.w r3, [sl, #8]
000919c4  c3 f3 02 39                                      ubfx sb, r3, #0xc, #3
000919c8  c0 f8 20 90                                      str.w sb, [r0, #0x20]
000919cc  0b e0                                            b #0x919e6
000919ce  1c 49                                            ldr r1, [pc, #0x70]
000919d0  d0 f8 00 c0                                      ldr.w ip, [r0]
000919d4  79 44                                            add r1, pc
000919d6  00 94                                            str r4, [sp]
000919d8  10 46                                            mov r0, r2
000919da  62 46                                            mov r2, ip
000919dc  a2 f7 e6 ec                                      blx #0x343ac
000919e0  00 20                                            movs r0, #0
000919e2  27 e0                                            b #0x91a34
000919e4  da 46                                            mov sl, fp
000919e6  da f8 00 30                                      ldr.w r3, [sl]
000919ea  43 62                                            str r3, [r0, #0x24]
000919ec  0e f0 03 03                                      and r3, lr, #3
000919f0  4f ea 9e 06                                      lsr.w r6, lr, #2
000919f4  c0 e9 05 63                                      strd r6, r3, [r0, #0x14]
000919f8  48 f6 8d 46                                      movw r6, #0x8c8d
000919fc  93 6a                                            ldr r3, [r2, #0x28]
000919fe  b3 42                                            cmp r3, r6
00091a00  14 d1                                            bne #0x91a2c
00091a02  03 7c                                            ldrb r3, [r0, #0x10]
00091a04  01 26                                            movs r6, #1
00091a06  00 2b                                            cmp r3, #0
00091a08  08 bf                                            it eq
00091a0a  19 fb 08 f6                                      smulbbeq r6, sb, r8
00091a0e  04 fb 06 f3                                      mul r3, r4, r6
00091a12  d1 f8 dc 12                                      ldr.w r1, [r1, #0x2dc]
00091a16  8b 42                                            cmp r3, r1
00091a18  08 d9                                            bls #0x91a2c
00091a1a  0a 49                                            ldr r1, [pc, #0x28]
00091a1c  03 68                                            ldr r3, [r0]
00091a1e  10 46                                            mov r0, r2
00091a20  79 44                                            add r1, pc
00091a22  1a 46                                            mov r2, r3
00091a24  a2 f7 c2 ec                                      blx #0x343ac
00091a28  00 20                                            movs r0, #0
00091a2a  03 e0                                            b #0x91a34
00091a2c  dc f8 28 10                                      ldr.w r1, [ip, #0x28]
00091a30  81 63                                            str r1, [r0, #0x38]
00091a32  01 20                                            movs r0, #1
00091a34  01 b0                                            add sp, #4
00091a36  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00091a3a  f0 bd                                            pop {r4, r5, r6, r7, pc}
00091a3c  9c ff 02 00                                      vaddl.u16 q0, d12, d2
00091a40  2e ff 02 00                                      vhadd.u32 d0, d14, d2
00091a44  69 ff 02 00                                      vhadd.u32 d16, d9, d2

; FUNCTION 0x00091a48, declared_size=42, range_size=42, mode=thumb
; class-group: tfeedback_decl
; alias: _ZNK14tfeedback_decl15get_num_outputsEv
; demangled: tfeedback_decl::get_num_outputs() const
; decoder-mode: thumb
00091a48  90 f8 30 10                                      ldrb.w r1, [r0, #0x30]
00091a4c  09 b9                                            cbnz r1, #0x91a52
00091a4e  c1 6a                                            ldr r1, [r0, #0x2c]
00091a50  09 b1                                            cbz r1, #0x91a56
00091a52  00 20                                            movs r0, #0
00091a54  70 47                                            bx lr
00091a56  01 7c                                            ldrb r1, [r0, #0x10]
00091a58  09 b1                                            cbz r1, #0x91a5e
00091a5a  81 6a                                            ldr r1, [r0, #0x28]
00091a5c  04 e0                                            b #0x91a68
00091a5e  d0 e9 07 12                                      ldrd r1, r2, [r0, #0x1c]
00091a62  83 6a                                            ldr r3, [r0, #0x28]
00091a64  51 43                                            muls r1, r2, r1
00091a66  59 43                                            muls r1, r3, r1
00091a68  80 69                                            ldr r0, [r0, #0x18]
00091a6a  08 44                                            add r0, r1
00091a6c  03 30                                            adds r0, #3
00091a6e  80 08                                            lsrs r0, r0, #2
00091a70  70 47                                            bx lr

; FUNCTION 0x00091a74, declared_size=280, range_size=280, mode=thumb
; class-group: tfeedback_decl
; alias: _ZNK14tfeedback_decl5storeEP10gl_contextP17gl_shader_programP26gl_transform_feedback_infojj
; demangled: tfeedback_decl::store(gl_context*, gl_shader_program*, gl_transform_feedback_info*, unsigned int, unsigned int) const
; decoder-mode: thumb
00091a74  f0 b5                                            push {r4, r5, r6, r7, lr}
00091a76  03 af                                            add r7, sp, #0xc
00091a78  2d e9 00 07                                      push.w {r8, sb, sl}
00091a7c  81 46                                            mov sb, r0
00091a7e  d7 f8 08 c0                                      ldr.w ip, [r7, #8]
00091a82  d9 f8 2c 00                                      ldr.w r0, [sb, #0x2c]
00091a86  9a 46                                            mov sl, r3
00091a88  28 b1                                            cbz r0, #0x91a96
00091a8a  0a eb 8c 01                                      add.w r1, sl, ip, lsl #2
00091a8e  4a 69                                            ldr r2, [r1, #0x14]
00091a90  10 44                                            add r0, r2
00091a92  48 61                                            str r0, [r1, #0x14]
00091a94  73 e0                                            b #0x91b7e
00091a96  90 6a                                            ldr r0, [r2, #0x28]
00091a98  48 f6 8c 43                                      movw r3, #0x8c8c
00091a9c  98 42                                            cmp r0, r3
00091a9e  08 d1                                            bne #0x91ab2
00091aa0  0a eb 8c 00                                      add.w r0, sl, ip, lsl #2
00091aa4  99 f8 10 30                                      ldrb.w r3, [sb, #0x10]
00091aa8  40 69                                            ldr r0, [r0, #0x14]
00091aaa  2b b1                                            cbz r3, #0x91ab8
00091aac  d9 f8 28 50                                      ldr.w r5, [sb, #0x28]
00091ab0  0a e0                                            b #0x91ac8
00091ab2  99 f8 10 30                                      ldrb.w r3, [sb, #0x10]
00091ab6  13 e0                                            b #0x91ae0
00091ab8  d9 e9 07 e5                                      ldrd lr, r5, [sb, #0x1c]
00091abc  d9 f8 28 80                                      ldr.w r8, [sb, #0x28]
00091ac0  05 fb 0e f5                                      mul r5, r5, lr
00091ac4  05 fb 08 f5                                      mul r5, r5, r8
00091ac8  d1 f8 e0 12                                      ldr.w r1, [r1, #0x2e0]
00091acc  28 44                                            add r0, r5
00091ace  88 42                                            cmp r0, r1
00091ad0  06 d9                                            bls #0x91ae0
00091ad2  2d 49                                            ldr r1, [pc, #0xb4]
00091ad4  10 46                                            mov r0, r2
00091ad6  79 44                                            add r1, pc
00091ad8  a2 f7 68 ec                                      blx #0x343ac
00091adc  00 20                                            movs r0, #0
00091ade  4f e0                                            b #0x91b80
00091ae0  d9 e9 05 10                                      ldrd r1, r0, [sb, #0x14]
00091ae4  13 b1                                            cbz r3, #0x91aec
00091ae6  d9 f8 28 30                                      ldr.w r3, [sb, #0x28]
00091aea  06 e0                                            b #0x91afa
00091aec  d9 e9 07 e5                                      ldrd lr, r5, [sb, #0x1c]
00091af0  d9 f8 28 30                                      ldr.w r3, [sb, #0x28]
00091af4  05 fb 0e f5                                      mul r5, r5, lr
00091af8  6b 43                                            muls r3, r5, r3
00091afa  53 b3                                            cbz r3, #0x91b52
00091afc  0a eb 8c 05                                      add.w r5, sl, ip, lsl #2
00091b00  05 f1 14 0e                                      add.w lr, r5, #0x14
00091b04  da f8 00 60                                      ldr.w r6, [sl]
00091b08  da f8 08 40                                      ldr.w r4, [sl, #8]
00091b0c  06 eb 46 05                                      add.w r5, r6, r6, lsl #1
00091b10  44 f8 35 10                                      str.w r1, [r4, r5, lsl #3]
00091b14  04 eb c5 04                                      add.w r4, r4, r5, lsl #3
00091b18  01 31                                            adds r1, #1
00091b1a  60 61                                            str r0, [r4, #0x14]
00091b1c  c0 f1 04 00                                      rsb.w r0, r0, #4
00091b20  83 42                                            cmp r3, r0
00091b22  38 bf                                            it lo
00091b24  18 46                                            movlo r0, r3
00091b26  a0 60                                            str r0, [r4, #8]
00091b28  1b 1a                                            subs r3, r3, r0
00091b2a  d9 f8 38 50                                      ldr.w r5, [sb, #0x38]
00091b2e  c4 f8 04 c0                                      str.w ip, [r4, #4]
00091b32  e5 60                                            str r5, [r4, #0xc]
00091b34  de f8 00 50                                      ldr.w r5, [lr]
00091b38  25 61                                            str r5, [r4, #0x10]
00091b3a  06 f1 01 04                                      add.w r4, r6, #1
00091b3e  ca f8 00 40                                      str.w r4, [sl]
00091b42  de f8 00 40                                      ldr.w r4, [lr]
00091b46  04 44                                            add r4, r0
00091b48  4f f0 00 00                                      mov.w r0, #0
00091b4c  ce f8 00 40                                      str.w r4, [lr]
00091b50  d8 d1                                            bne #0x91b04
00091b52  d9 f8 00 10                                      ldr.w r1, [sb]
00091b56  10 46                                            mov r0, r2
00091b58  a0 f7 7c ed                                      blx #0x32654
00091b5c  da e9 03 12                                      ldrd r1, r2, [sl, #0xc]
00091b60  02 eb 42 03                                      add.w r3, r2, r2, lsl #1
00091b64  41 f8 23 00                                      str.w r0, [r1, r3, lsl #2]
00091b68  01 eb 83 01                                      add.w r1, r1, r3, lsl #2
00091b6c  d9 f8 24 00                                      ldr.w r0, [sb, #0x24]
00091b70  48 60                                            str r0, [r1, #4]
00091b72  d9 f8 28 00                                      ldr.w r0, [sb, #0x28]
00091b76  88 60                                            str r0, [r1, #8]
00091b78  50 1c                                            adds r0, r2, #1
00091b7a  ca f8 10 00                                      str.w r0, [sl, #0x10]
00091b7e  01 20                                            movs r0, #1
00091b80  bd e8 00 07                                      pop.w {r8, sb, sl}
00091b84  f0 bd                                            pop {r4, r5, r6, r7, pc}
00091b86  00 bf                                            nop
00091b88  05 ff 02 00                                      vhadd.u8 d0, d5, d2

; FUNCTION 0x00091b8c, declared_size=112, range_size=112, mode=thumb
; class-group: tfeedback_decl
; alias: _ZN14tfeedback_decl14find_candidateEP17gl_shader_programP10hash_table
; demangled: tfeedback_decl::find_candidate(gl_shader_program*, hash_table*)
; decoder-mode: thumb
00091b8c  b0 b5                                            push {r4, r5, r7, lr}
00091b8e  02 af                                            add r7, sp, #8
00091b90  04 46                                            mov r4, r0
00091b92  0d 46                                            mov r5, r1
00091b94  20 7c                                            ldrb r0, [r4, #0x10]
00091b96  00 28                                            cmp r0, #0
00091b98  0c bf                                            ite eq
00091b9a  61 68                                            ldreq r1, [r4, #4]
00091b9c  07 a1                                            adrne r1, #0x1c
00091b9e  10 46                                            mov r0, r2
00091ba0  a0 f7 a6 ed                                      blx #0x326f0
00091ba4  00 28                                            cmp r0, #0
00091ba6  60 63                                            str r0, [r4, #0x34]
00091ba8  00 d0                                            beq #0x91bac
00091baa  b0 bd                                            pop {r4, r5, r7, pc}
00091bac  22 68                                            ldr r2, [r4]
00091bae  08 a1                                            adr r1, #0x20
00091bb0  28 46                                            mov r0, r5
00091bb2  a2 f7 fc eb                                      blx #0x343ac
00091bb6  60 6b                                            ldr r0, [r4, #0x34]
00091bb8  b0 bd                                            pop {r4, r5, r7, pc}
00091bba  00 bf                                            nop
00091bbc  67 6c                                            ldr r7, [r4, #0x44]
00091bbe  5f 43                                            muls r7, r3, r7
00091bc0  6c 69                                            ldr r4, [r5, #0x14]
00091bc2  70 44                                            add r0, lr
00091bc4  69 73                                            strb r1, [r5, #0xd]
00091bc6  74 61                                            str r4, [r6, #0x14]
00091bc8  6e 63                                            str r6, [r5, #0x34]
00091bca  65 4d                                            ldr r5, [pc, #0x194]
00091bcc  45 53                                            strh r5, [r0, r5]
00091bce  41 00                                            lsls r1, r0, #1
00091bd0  54 72                                            strb r4, [r2, #9]
00091bd2  61 6e                                            ldr r1, [r4, #0x64]
00091bd4  73 66                                            str r3, [r6, #0x64]
00091bd6  6f 72                                            strb r7, [r5, #9]
00091bd8  6d 20                                            movs r0, #0x6d
00091bda  66 65                                            str r6, [r4, #0x54]
00091bdc  65 64                                            str r5, [r4, #0x44]
00091bde  62 61                                            str r2, [r4, #0x14]
00091be0  63 6b                                            ldr r3, [r4, #0x34]
00091be2  20 76                                            strb r0, [r4, #0x18]
00091be4  61 72                                            strb r1, [r4, #9]
00091be6  79 69                                            ldr r1, [r7, #0x14]
00091be8  6e 67                                            str r6, [r5, #0x74]
00091bea  20 25                                            movs r5, #0x20
00091bec  73 20                                            movs r0, #0x73
00091bee  75 6e                                            ldr r5, [r6, #0x64]
00091bf0  64 65                                            str r4, [r4, #0x54]
00091bf2  63 6c                                            ldr r3, [r4, #0x44]
00091bf4  61 72                                            strb r1, [r4, #9]
00091bf6  65 64                                            str r5, [r4, #0x44]
00091bf8  2e 00                                            movs r6, r5
00091bfa  00 00                                            movs r0, r0
