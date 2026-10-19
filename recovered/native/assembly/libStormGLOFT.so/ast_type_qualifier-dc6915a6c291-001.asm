; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0005994c, declared_size=12, range_size=12, mode=thumb
; class-group: ast_type_qualifier
; alias: _ZNK18ast_type_qualifier17has_interpolationEv
; demangled: ast_type_qualifier::has_interpolation() const
; decoder-mode: thumb
0005994c  40 78                                            ldrb r0, [r0, #1]
0005994e  10 f0 1c 00                                      ands r0, r0, #0x1c
00059952  18 bf                                            it ne
00059954  01 20                                            movne r0, #1
00059956  70 47                                            bx lr

; FUNCTION 0x00059958, declared_size=18, range_size=18, mode=thumb
; class-group: ast_type_qualifier
; alias: _ZNK18ast_type_qualifier10has_layoutEv
; demangled: ast_type_qualifier::has_layout() const
; decoder-mode: thumb
00059958  00 68                                            ldr r0, [r0]
0005995a  4e f2 00 01                                      movw r1, #0xe000
0005995e  c0 f6 ff 71                                      movt r1, #0xfff
00059962  08 40                                            ands r0, r1
00059964  18 bf                                            it ne
00059966  01 20                                            movne r0, #1
00059968  70 47                                            bx lr

; FUNCTION 0x0005996a, declared_size=12, range_size=12, mode=thumb
; class-group: ast_type_qualifier
; alias: _ZNK18ast_type_qualifier11has_storageEv
; demangled: ast_type_qualifier::has_storage() const
; decoder-mode: thumb
0005996a  00 88                                            ldrh r0, [r0]
0005996c  10 f4 1f 70                                      ands r0, r0, #0x27c
00059970  18 bf                                            it ne
00059972  01 20                                            movne r0, #1
00059974  70 47                                            bx lr

; FUNCTION 0x00059976, declared_size=12, range_size=12, mode=thumb
; class-group: ast_type_qualifier
; alias: _ZNK18ast_type_qualifier21has_auxiliary_storageEv
; demangled: ast_type_qualifier::has_auxiliary_storage() const
; decoder-mode: thumb
00059976  00 88                                            ldrh r0, [r0]
00059978  10 f4 c0 70                                      ands r0, r0, #0x180
0005997c  18 bf                                            it ne
0005997e  01 20                                            movne r0, #1
00059980  70 47                                            bx lr

; FUNCTION 0x00059984, declared_size=60, range_size=60, mode=thumb
; class-group: ast_type_qualifier
; alias: _ZNK18ast_type_qualifier20interpolation_stringEv
; demangled: ast_type_qualifier::interpolation_string() const
; decoder-mode: thumb
00059984  00 68                                            ldr r0, [r0]
00059986  10 f4 80 6f                                      tst.w r0, #0x400
0005998a  07 d1                                            bne #0x5999c
0005998c  01 05                                            lsls r1, r0, #0x14
0005998e  4f bf                                            iteee mi
00059990  05 a0                                            adrmi r0, #0x14
00059992  c0 04                                            lslpl r0, r0, #0x13
00059994  06 a1                                            adrpl r1, #0x18
00059996  01 ea e0 70                                      andpl.w r0, r1, r0, asr #31
0005999a  70 47                                            bx lr
0005999c  00 a0                                            adr r0, #0
0005999e  70 47                                            bx lr
000599a0  73 6d                                            ldr r3, [r6, #0x54]
000599a2  6f 6f                                            ldr r7, [r5, #0x74]
000599a4  74 68                                            ldr r4, [r6, #4]
000599a6  00 00                                            movs r0, r0
000599a8  66 6c                                            ldr r6, [r4, #0x44]
000599aa  61 74                                            strb r1, [r4, #0x11]
000599ac  00 00                                            movs r0, r0
000599ae  00 00                                            movs r0, r0
000599b0  6e 6f                                            ldr r6, [r5, #0x74]
000599b2  70 65                                            str r0, [r6, #0x54]
000599b4  72 73                                            strb r2, [r6, #0xd]
000599b6  70 65                                            str r0, [r6, #0x54]
000599b8  63 74                                            strb r3, [r4, #0x11]
000599ba  69 76                                            strb r1, [r5, #0x19]
000599bc  65 00                                            lsls r5, r4, #1
000599be  00 00                                            movs r0, r0

; FUNCTION 0x000599c0, declared_size=892, range_size=892, mode=thumb
; class-group: ast_type_qualifier
; alias: _ZN18ast_type_qualifier15merge_qualifierEP7YYLTYPEP22_mesa_glsl_parse_stateS_
; demangled: ast_type_qualifier::merge_qualifier(YYLTYPE*, _mesa_glsl_parse_state*, ast_type_qualifier)
; decoder-mode: thumb
000599c0  f0 b5                                            push {r4, r5, r6, r7, lr}
000599c2  03 af                                            add r7, sp, #0xc
000599c4  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
000599c8  95 b0                                            sub sp, #0x54
000599ca  83 46                                            mov fp, r0
000599cc  b2 48                                            ldr r0, [pc, #0x2c8]
000599ce  03 91                                            str r1, [sp, #0xc]
000599d0  07 f1 28 0e                                      add.w lr, r7, #0x28
000599d4  78 44                                            add r0, pc
000599d6  fb 6b                                            ldr r3, [r7, #0x3c]
000599d8  d7 f8 20 c0                                      ldr.w ip, [r7, #0x20]
000599dc  00 68                                            ldr r0, [r0]
000599de  fd 68                                            ldr r5, [r7, #0xc]
000599e0  d7 f8 24 90                                      ldr.w sb, [r7, #0x24]
000599e4  01 68                                            ldr r1, [r0]
000599e6  d7 e9 0d 46                                      ldrd r4, r6, [r7, #0x34]
000599ea  14 91                                            str r1, [sp, #0x50]
000599ec  0f 94                                            str r4, [sp, #0x3c]
000599ee  11 93                                            str r3, [sp, #0x44]
000599f0  10 96                                            str r6, [sp, #0x40]
000599f2  78 69                                            ldr r0, [r7, #0x14]
000599f4  9e e8 48 40                                      ldm.w lr, {r3, r6, lr}
000599f8  d7 e9 10 48                                      ldrd r4, r8, [r7, #0x40]
000599fc  07 90                                            str r0, [sp, #0x1c]
000599fe  38 69                                            ldr r0, [r7, #0x10]
00059a00  b9 69                                            ldr r1, [r7, #0x18]
00059a02  d7 f8 08 a0                                      ldr.w sl, [r7, #8]
00059a06  cd e9 05 50                                      strd r5, r0, [sp, #0x14]
00059a0a  f8 69                                            ldr r0, [r7, #0x1c]
00059a0c  09 90                                            str r0, [sp, #0x24]
00059a0e  28 46                                            mov r0, r5
00059a10  08 91                                            str r1, [sp, #0x20]
00059a12  61 46                                            mov r1, ip
00059a14  0d f1 30 0c                                      add.w ip, sp, #0x30
00059a18  cd e9 0a 19                                      strd r1, sb, [sp, #0x28]
00059a1c  8c e8 48 40                                      stm.w ip, {r3, r6, lr}
00059a20  6f f4 00 66                                      mvn r6, #0x800
00059a24  cd e9 12 48                                      strd r4, r8, [sp, #0x48]
00059a28  06 f5 00 64                                      add.w r4, r6, #0x800
00059a2c  cd f8 10 a0                                      str.w sl, [sp, #0x10]
00059a30  d2 f8 88 e0                                      ldr.w lr, [r2, #0x88]
00059a34  be f1 01 0f                                      cmp.w lr, #1
00059a38  08 bf                                            it eq
00059a3a  6f f4 00 64                                      mvneq r4, #0x800
00059a3e  db e9 00 65                                      ldrd r6, r5, [fp]
00059a42  05 40                                            ands r5, r0
00059a44  4f f6 ff 70                                      movw r0, #0xffff
00059a48  25 40                                            ands r5, r4
00059a4a  0a ea 06 04                                      and.w r4, sl, r6
00059a4e  cf f2 79 00                                      movt r0, #0xf079
00059a52  20 40                                            ands r0, r4
00059a54  28 43                                            orrs r0, r5
00059a56  13 d0                                            beq #0x59a80
00059a58  90 a3                                            adr r3, #0x240
00059a5a  11 46                                            mov r1, r2
00059a5c  03 98                                            ldr r0, [sp, #0xc]
00059a5e  1a 46                                            mov r2, r3
00059a60  d8 f7 2a ef                                      blx #0x328b8
00059a64  00 20                                            movs r0, #0
00059a66  b4 49                                            ldr r1, [pc, #0x2d0]
00059a68  14 9a                                            ldr r2, [sp, #0x50]
00059a6a  79 44                                            add r1, pc
00059a6c  09 68                                            ldr r1, [r1]
00059a6e  09 68                                            ldr r1, [r1]
00059a70  89 1a                                            subs r1, r1, r2
00059a72  02 bf                                            ittt eq
00059a74  15 b0                                            addeq sp, #0x54
00059a76  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00059a7a  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00059a7c  d8 f7 f0 ea                                      blx #0x32060
00059a80  9c 46                                            mov ip, r3
00059a82  0b 46                                            mov r3, r1
00059a84  7c 6a                                            ldr r4, [r7, #0x24]
00059a86  5f ea ca 00                                      lsls.w r0, sl, #3
00059a8a  d7 e9 05 15                                      ldrd r1, r5, [r7, #0x14]
00059a8e  90 46                                            mov r8, r2
00059a90  07 d5                                            bpl #0x59aa2
00059a92  f0 00                                            lsls r0, r6, #3
00059a94  03 d5                                            bpl #0x59a9e
00059a96  db f8 20 00                                      ldr.w r0, [fp, #0x20]
00059a9a  60 45                                            cmp r0, ip
00059a9c  69 d1                                            bne #0x59b72
00059a9e  cb f8 20 c0                                      str.w ip, [fp, #0x20]
00059aa2  5f ea 8a 00                                      lsls.w r0, sl, #2
00059aa6  08 d5                                            bpl #0x59aba
00059aa8  b0 00                                            lsls r0, r6, #2
00059aaa  18 46                                            mov r0, r3
00059aac  03 d5                                            bpl #0x59ab6
00059aae  db f8 18 30                                      ldr.w r3, [fp, #0x18]
00059ab2  83 42                                            cmp r3, r0
00059ab4  6c d1                                            bne #0x59b90
00059ab6  cb f8 18 00                                      str.w r0, [fp, #0x18]
00059aba  f8 68                                            ldr r0, [r7, #0xc]
00059abc  40 05                                            lsls r0, r0, #0x15
00059abe  09 d5                                            bpl #0x59ad4
00059ac0  9b f8 05 00                                      ldrb.w r0, [fp, #5]
00059ac4  40 07                                            lsls r0, r0, #0x1d
00059ac6  03 d5                                            bpl #0x59ad0
00059ac8  db f8 0c 30                                      ldr.w r3, [fp, #0xc]
00059acc  8b 42                                            cmp r3, r1
00059ace  63 d1                                            bne #0x59b98
00059ad0  cb f8 0c 10                                      str.w r1, [fp, #0xc]
00059ad4  be f1 01 0f                                      cmp.w lr, #1
00059ad8  ac 46                                            mov ip, r5
00059ada  66 d1                                            bne #0x59baa
00059adc  98 f8 a4 01                                      ldrb.w r0, [r8, #0x1a4]
00059ae0  f0 b3                                            cbz r0, #0x59b60
00059ae2  f8 68                                            ldr r0, [r7, #0xc]
00059ae4  10 f4 00 66                                      ands r6, r0, #0x800
00059ae8  0f d0                                            beq #0x59b0a
00059aea  d8 f8 00 00                                      ldr.w r0, [r8]
00059aee  d0 f8 e4 02                                      ldr.w r0, [r0, #0x2e4]
00059af2  a0 42                                            cmp r0, r4
00059af4  09 d8                                            bhi #0x59b0a
00059af6  8c 4a                                            ldr r2, [pc, #0x230]
00059af8  01 38                                            subs r0, #1
00059afa  00 90                                            str r0, [sp]
00059afc  41 46                                            mov r1, r8
00059afe  03 98                                            ldr r0, [sp, #0xc]
00059b00  7a 44                                            add r2, pc
00059b02  23 46                                            mov r3, r4
00059b04  d8 f7 d8 ee                                      blx #0x328b8
00059b08  ac 46                                            mov ip, r5
00059b0a  bb f8 04 00                                      ldrh.w r0, [fp, #4]
00059b0e  10 f4 80 5f                                      tst.w r0, #0x1000
00059b12  12 d0                                            beq #0x59b3a
00059b14  d8 f8 00 10                                      ldr.w r1, [r8]
00059b18  db f8 1c 30                                      ldr.w r3, [fp, #0x1c]
00059b1c  d1 f8 e4 12                                      ldr.w r1, [r1, #0x2e4]
00059b20  8b 42                                            cmp r3, r1
00059b22  0a d3                                            blo #0x59b3a
00059b24  81 4a                                            ldr r2, [pc, #0x204]
00059b26  48 1e                                            subs r0, r1, #1
00059b28  00 90                                            str r0, [sp]
00059b2a  41 46                                            mov r1, r8
00059b2c  03 98                                            ldr r0, [sp, #0xc]
00059b2e  7a 44                                            add r2, pc
00059b30  d8 f7 c2 ee                                      blx #0x328b8
00059b34  bb f8 04 00                                      ldrh.w r0, [fp, #4]
00059b38  ac 46                                            mov ip, r5
00059b3a  c1 04                                            lsls r1, r0, #0x13
00059b3c  1d d4                                            bmi #0x59b7a
00059b3e  76 bb                                            cbnz r6, #0x59b9e
00059b40  01 05                                            lsls r1, r0, #0x14
00059b42  32 d4                                            bmi #0x59baa
00059b44  9b f8 00 10                                      ldrb.w r1, [fp]
00059b48  49 06                                            lsls r1, r1, #0x19
00059b4a  2e d5                                            bpl #0x59baa
00059b4c  40 f4 00 60                                      orr r0, r0, #0x800
00059b50  ab f8 04 00                                      strh.w r0, [fp, #4]
00059b54  d8 f8 b0 00                                      ldr.w r0, [r8, #0xb0]
00059b58  c0 69                                            ldr r0, [r0, #0x1c]
00059b5a  cb f8 1c 00                                      str.w r0, [fp, #0x1c]
00059b5e  24 e0                                            b #0x59baa
00059b60  98 f8 7c 00                                      ldrb.w r0, [r8, #0x7c]
00059b64  08 bb                                            cbnz r0, #0x59baa
00059b66  d8 f8 80 00                                      ldr.w r0, [r8, #0x80]
00059b6a  b0 f5 c8 7f                                      cmp.w r0, #0x190
00059b6e  b8 d2                                            bhs #0x59ae2
00059b70  1b e0                                            b #0x59baa
00059b72  03 98                                            ldr r0, [sp, #0xc]
00059b74  52 a2                                            adr r2, #0x148
00059b76  41 46                                            mov r1, r8
00059b78  72 e7                                            b #0x59a60
00059b7a  f8 68                                            ldr r0, [r7, #0xc]
00059b7c  c0 04                                            lsls r0, r0, #0x13
00059b7e  14 d5                                            bpl #0x59baa
00059b80  6b 4a                                            ldr r2, [pc, #0x1ac]
00059b82  41 46                                            mov r1, r8
00059b84  03 98                                            ldr r0, [sp, #0xc]
00059b86  7a 44                                            add r2, pc
00059b88  d8 f7 96 ee                                      blx #0x328b8
00059b8c  ac 46                                            mov ip, r5
00059b8e  0c e0                                            b #0x59baa
00059b90  56 4a                                            ldr r2, [pc, #0x158]
00059b92  00 90                                            str r0, [sp]
00059b94  7a 44                                            add r2, pc
00059b96  79 e0                                            b #0x59c8c
00059b98  55 a2                                            adr r2, #0x154
00059b9a  00 91                                            str r1, [sp]
00059b9c  76 e0                                            b #0x59c8c
00059b9e  cb f8 1c 40                                      str.w r4, [fp, #0x1c]
00059ba2  40 f4 00 60                                      orr r0, r0, #0x800
00059ba6  ab f8 04 00                                      strh.w r0, [fp, #4]
00059baa  1a f0 40 6f                                      tst.w sl, #0xc000000
00059bae  1e bf                                            ittt ne
00059bb0  db f8 00 00                                      ldrne.w r0, [fp]
00059bb4  20 f0 40 60                                      bicne r0, r0, #0xc000000
00059bb8  cb f8 00 00                                      strne.w r0, [fp]
00059bbc  1a f0 60 7f                                      tst.w sl, #0x3800000
00059bc0  1e bf                                            ittt ne
00059bc2  db f8 00 00                                      ldrne.w r0, [fp]
00059bc6  20 f0 60 70                                      bicne r0, r0, #0x3800000
00059bca  cb f8 00 00                                      strne.w r0, [fp]
00059bce  04 a8                                            add r0, sp, #0x10
00059bd0  0b f1 2c 02                                      add.w r2, fp, #0x2c
00059bd4  00 f1 2c 01                                      add.w r1, r0, #0x2c
00059bd8  f8 68                                            ldr r0, [r7, #0xc]
00059bda  01 26                                            movs r6, #1
00059bdc  00 f0 07 03                                      and r3, r0, #7
00059be0  00 20                                            movs r0, #0
00059be2  06 fa 00 f5                                      lsl.w r5, r6, r0
00059be6  1d 42                                            tst r5, r3
00059be8  11 d0                                            beq #0x59c0e
00059bea  bb f8 04 40                                      ldrh.w r4, [fp, #4]
00059bee  25 40                                            ands r5, r4
00059bf0  6d 07                                            lsls r5, r5, #0x1d
00059bf2  08 d0                                            beq #0x59c06
00059bf4  51 f8 20 40                                      ldr.w r4, [r1, r0, lsl #2]
00059bf8  15 68                                            ldr r5, [r2]
00059bfa  a5 42                                            cmp r5, r4
00059bfc  40 d1                                            bne #0x59c80
00059bfe  0b eb 80 04                                      add.w r4, fp, r0, lsl #2
00059c02  2c 34                                            adds r4, #0x2c
00059c04  02 e0                                            b #0x59c0c
00059c06  51 f8 20 50                                      ldr.w r5, [r1, r0, lsl #2]
00059c0a  14 46                                            mov r4, r2
00059c0c  25 60                                            str r5, [r4]
00059c0e  45 1c                                            adds r5, r0, #1
00059c10  04 32                                            adds r2, #4
00059c12  02 28                                            cmp r0, #2
00059c14  28 46                                            mov r0, r5
00059c16  e4 db                                            blt #0x59be2
00059c18  fa 68                                            ldr r2, [r7, #0xc]
00059c1a  db e9 00 01                                      ldrd r0, r1, [fp]
00059c1e  11 43                                            orrs r1, r2
00059c20  3e 6b                                            ldr r6, [r7, #0x30]
00059c22  40 ea 0a 00                                      orr.w r0, r0, sl
00059c26  cb e9 00 01                                      strd r0, r1, [fp]
00059c2a  5f ea 0a 40                                      lsls.w r0, sl, #0x10
00059c2e  48 bf                                            it mi
00059c30  cb f8 10 c0                                      strmi.w ip, [fp, #0x10]
00059c34  5f ea ca 30                                      lsls.w r0, sl, #0xf
00059c38  f8 69                                            ldr r0, [r7, #0x1c]
00059c3a  d7 e9 10 32                                      ldrd r3, r2, [r7, #0x40]
00059c3e  48 bf                                            it mi
00059c40  cb f8 14 00                                      strmi.w r0, [fp, #0x14]
00059c44  5f ea 8a 30                                      lsls.w r0, sl, #0xe
00059c48  39 69                                            ldr r1, [r7, #0x10]
00059c4a  44 bf                                            itt mi
00059c4c  f8 6a                                            ldrmi r0, [r7, #0x2c]
00059c4e  cb f8 24 00                                      strmi.w r0, [fp, #0x24]
00059c52  5f ea 4a 30                                      lsls.w r0, sl, #0xd
00059c56  01 f0 03 00                                      and r0, r1, #3
00059c5a  48 bf                                            it mi
00059c5c  cb f8 28 60                                      strmi.w r6, [fp, #0x28]
00059c60  03 28                                            cmp r0, #3
00059c62  1f bf                                            itttt ne
00059c64  9b f8 08 10                                      ldrbne.w r1, [fp, #8]
00059c68  01 f0 fc 01                                      andne r1, r1, #0xfc
00059c6c  08 43                                            orrne r0, r1
00059c6e  8b f8 08 00                                      strbne.w r0, [fp, #8]
00059c72  f8 68                                            ldr r0, [r7, #0xc]
00059c74  c0 06                                            lsls r0, r0, #0x1b
00059c76  48 bf                                            it mi
00059c78  cb e9 0e 32                                      strdmi r3, r2, [fp, #0x38]
00059c7c  01 20                                            movs r0, #1
00059c7e  f2 e6                                            b #0x59a66
00059c80  2c 4a                                            ldr r2, [pc, #0xb0]
00059c82  00 f1 78 03                                      add.w r3, r0, #0x78
00059c86  cd e9 00 54                                      strd r5, r4, [sp]
00059c8a  7a 44                                            add r2, pc
00059c8c  03 98                                            ldr r0, [sp, #0xc]
00059c8e  41 46                                            mov r1, r8
00059c90  d8 f7 12 ee                                      blx #0x328b8
00059c94  e6 e6                                            b #0x59a64
00059c96  00 bf                                            nop
00059c98  e0 2a                                            cmp r2, #0xe0
00059c9a  08 00                                            movs r0, r1
00059c9c  64 75                                            strb r4, [r4, #0x15]
00059c9e  70 6c                                            ldr r0, [r6, #0x44]
00059ca0  69 63                                            str r1, [r5, #0x34]
00059ca2  61 74                                            strb r1, [r4, #0x11]
00059ca4  65 20                                            movs r0, #0x65
00059ca6  6c 61                                            str r4, [r5, #0x14]
00059ca8  79 6f                                            ldr r1, [r7, #0x74]
00059caa  75 74                                            strb r5, [r6, #0x11]
00059cac  20 71                                            strb r0, [r4, #4]
00059cae  75 61                                            str r5, [r6, #0x14]
00059cb0  6c 69                                            ldr r4, [r5, #0x14]
00059cb2  66 69                                            ldr r6, [r4, #0x14]
00059cb4  65 72                                            strb r5, [r4, #9]
00059cb6  73 20                                            movs r0, #0x73
00059cb8  75 73                                            strb r5, [r6, #0xd]
00059cba  65 64                                            str r5, [r4, #0x44]
00059cbc  00 00                                            movs r0, r0
00059cbe  00 00                                            movs r0, r0
00059cc0  63 6f                                            ldr r3, [r4, #0x74]
00059cc2  6e 66                                            str r6, [r5, #0x64]
00059cc4  6c 69                                            ldr r4, [r5, #0x14]
00059cc6  63 74                                            strb r3, [r4, #0x11]
00059cc8  69 6e                                            ldr r1, [r5, #0x64]
00059cca  67 20                                            movs r0, #0x67
00059ccc  70 72                                            strb r0, [r6, #9]
00059cce  69 6d                                            ldr r1, [r5, #0x54]
00059cd0  69 74                                            strb r1, [r5, #0x11]
00059cd2  69 76                                            strb r1, [r5, #0x19]
00059cd4  65 20                                            movs r0, #0x65
00059cd6  74 79                                            ldrb r4, [r6, #5]
00059cd8  70 65                                            str r0, [r6, #0x54]
00059cda  20 71                                            strb r0, [r4, #4]
00059cdc  75 61                                            str r5, [r6, #0x14]
00059cde  6c 69                                            ldr r4, [r5, #0x14]
00059ce0  66 69                                            ldr r6, [r4, #0x14]
00059ce2  65 72                                            strb r5, [r4, #9]
00059ce4  73 20                                            movs r0, #0x73
00059ce6  75 73                                            strb r5, [r6, #0xd]
00059ce8  65 64                                            str r5, [r4, #0x44]
00059cea  00 00                                            movs r0, r0
00059cec  ba 2c                                            cmp r4, #0xba
00059cee  06 00                                            movs r6, r0
00059cf0  67 65                                            str r7, [r4, #0x54]
00059cf2  6f 6d                                            ldr r7, [r5, #0x54]
00059cf4  65 74                                            strb r5, [r4, #0x11]
00059cf6  72 79                                            ldrb r2, [r6, #5]
00059cf8  20 73                                            strb r0, [r4, #0xc]
00059cfa  68 61                                            str r0, [r5, #0x14]
00059cfc  64 65                                            str r4, [r4, #0x54]
00059cfe  72 20                                            movs r0, #0x72
00059d00  73 65                                            str r3, [r6, #0x54]
00059d02  74 20                                            movs r0, #0x74
00059d04  63 6f                                            ldr r3, [r4, #0x74]
00059d06  6e 66                                            str r6, [r5, #0x64]
00059d08  6c 69                                            ldr r4, [r5, #0x14]
00059d0a  63 74                                            strb r3, [r4, #0x11]
00059d0c  69 6e                                            ldr r1, [r5, #0x64]
00059d0e  67 20                                            movs r0, #0x67
00059d10  69 6e                                            ldr r1, [r5, #0x64]
00059d12  76 6f                                            ldr r6, [r6, #0x74]
00059d14  63 61                                            str r3, [r4, #0x14]
00059d16  74 69                                            ldr r4, [r6, #0x14]
00059d18  6f 6e                                            ldr r7, [r5, #0x64]
00059d1a  73 20                                            movs r0, #0x73
00059d1c  28 25                                            movs r5, #0x28
00059d1e  64 20                                            movs r0, #0x64
00059d20  61 6e                                            ldr r1, [r4, #0x64]
00059d22  64 20                                            movs r0, #0x64
00059d24  25 64                                            str r5, [r4, #0x40]
00059d26  29 00                                            movs r1, r5
00059d28  87 2d                                            cmp r5, #0x87
00059d2a  06 00                                            movs r6, r0
00059d2c  59 2d                                            cmp r5, #0x59
00059d2e  06 00                                            movs r6, r0
00059d30  40 2d                                            cmp r5, #0x40
00059d32  06 00                                            movs r6, r0
00059d34  60 2c                                            cmp r4, #0x60
00059d36  06 00                                            movs r6, r0
00059d38  4a 2a                                            cmp r2, #0x4a
00059d3a  08 00                                            movs r0, r1

; FUNCTION 0x00059d3c, declared_size=832, range_size=832, mode=thumb
; class-group: ast_type_qualifier
; alias: _ZN18ast_type_qualifier18merge_in_qualifierEP7YYLTYPEP22_mesa_glsl_parse_stateS_RP8ast_node
; demangled: ast_type_qualifier::merge_in_qualifier(YYLTYPE*, _mesa_glsl_parse_state*, ast_type_qualifier, ast_node*&)
; decoder-mode: thumb
00059d3c  f0 b5                                            push {r4, r5, r6, r7, lr}
00059d3e  03 af                                            add r7, sp, #0xc
00059d40  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00059d44  97 b0                                            sub sp, #0x5c
00059d46  86 46                                            mov lr, r0
00059d48  a5 48                                            ldr r0, [pc, #0x294]
00059d4a  93 46                                            mov fp, r2
00059d4c  8a 46                                            mov sl, r1
00059d4e  78 44                                            add r0, pc
00059d50  39 69                                            ldr r1, [r7, #0x10]
00059d52  fc 68                                            ldr r4, [r7, #0xc]
00059d54  00 68                                            ldr r0, [r0]
00059d56  d7 f8 2c 80                                      ldr.w r8, [r7, #0x2c]
00059d5a  d7 f8 34 c0                                      ldr.w ip, [r7, #0x34]
00059d5e  00 68                                            ldr r0, [r0]
00059d60  d7 e9 06 32                                      ldrd r3, r2, [r7, #0x18]
00059d64  d7 e9 08 56                                      ldrd r5, r6, [r7, #0x20]
00059d68  16 90                                            str r0, [sp, #0x58]
00059d6a  08 91                                            str r1, [sp, #0x20]
00059d6c  0b 92                                            str r2, [sp, #0x2c]
00059d6e  0a 93                                            str r3, [sp, #0x28]
00059d70  f9 6b                                            ldr r1, [r7, #0x3c]
00059d72  7b 6c                                            ldr r3, [r7, #0x44]
00059d74  0d 96                                            str r6, [sp, #0x34]
00059d76  0c 95                                            str r5, [sp, #0x30]
00059d78  cd f8 3c 80                                      str.w r8, [sp, #0x3c]
00059d7c  cd f8 44 c0                                      str.w ip, [sp, #0x44]
00059d80  38 6b                                            ldr r0, [r7, #0x30]
00059d82  d7 f8 14 90                                      ldr.w sb, [r7, #0x14]
00059d86  be 6a                                            ldr r6, [r7, #0x28]
00059d88  ba 6b                                            ldr r2, [r7, #0x38]
00059d8a  3d 6c                                            ldr r5, [r7, #0x40]
00059d8c  d7 f8 08 c0                                      ldr.w ip, [r7, #8]
00059d90  10 90                                            str r0, [sp, #0x40]
00059d92  cd f8 24 90                                      str.w sb, [sp, #0x24]
00059d96  0e 96                                            str r6, [sp, #0x38]
00059d98  cd e9 12 21                                      strd r2, r1, [sp, #0x48]
00059d9c  cd e9 14 53                                      strd r5, r3, [sp, #0x50]
00059da0  cd e9 06 c4                                      strd ip, r4, [sp, #0x18]
00059da4  db f8 88 00                                      ldr.w r0, [fp, #0x88]
00059da8  cd f8 04 a0                                      str.w sl, [sp, #4]
00059dac  03 28                                            cmp r0, #3
00059dae  14 d0                                            beq #0x59dda
00059db0  02 28                                            cmp r0, #2
00059db2  0e d0                                            beq #0x59dd2
00059db4  01 28                                            cmp r0, #1
00059db6  21 d1                                            bne #0x59dfc
00059db8  5f ea cc 00                                      lsls.w r0, ip, #3
00059dbc  33 d4                                            bmi #0x59e26
00059dbe  4f f0 00 0a                                      mov.w sl, #0
00059dc2  4f f0 80 51                                      mov.w r1, #0x10000000
00059dc6  4f f4 80 60                                      mov.w r0, #0x400
00059dca  4f f0 00 08                                      mov.w r8, #0
00059dce  00 22                                            movs r2, #0
00059dd0  49 e0                                            b #0x59e66
00059dd2  20 07                                            lsls r0, r4, #0x1c
00059dd4  1d d4                                            bmi #0x59e12
00059dd6  83 a2                                            adr r2, #0x20c
00059dd8  12 e0                                            b #0x59e00
00059dda  60 07                                            lsls r0, r4, #0x1d
00059ddc  4f f0 00 0a                                      mov.w sl, #0
00059de0  3c d0                                            beq #0x59e5c
00059de2  db f8 9c 00                                      ldr.w r0, [fp, #0x9c]
00059de6  4f f0 00 0a                                      mov.w sl, #0
00059dea  4f f0 00 08                                      mov.w r8, #0
00059dee  00 79                                            ldrb r0, [r0, #4]
00059df0  40 07                                            lsls r0, r0, #0x1d
00059df2  08 bf                                            it eq
00059df4  4f f0 01 0a                                      moveq.w sl, #1
00059df8  07 20                                            movs r0, #7
00059dfa  32 e0                                            b #0x59e62
00059dfc  8d 4a                                            ldr r2, [pc, #0x234]
00059dfe  7a 44                                            add r2, pc
00059e00  50 46                                            mov r0, sl
00059e02  59 46                                            mov r1, fp
00059e04  75 46                                            mov r5, lr
00059e06  e0 46                                            mov r8, ip
00059e08  d8 f7 56 ed                                      blx #0x328b8
00059e0c  c4 46                                            mov ip, r8
00059e0e  ae 46                                            mov lr, r5
00059e10  02 e0                                            b #0x59e18
00059e12  01 20                                            movs r0, #1
00059e14  8b f8 f8 01                                      strb.w r0, [fp, #0x1f8]
00059e18  4f f0 00 0a                                      mov.w sl, #0
00059e1c  4f f0 00 08                                      mov.w r8, #0
00059e20  00 22                                            movs r2, #0
00059e22  00 20                                            movs r0, #0
00059e24  1e e0                                            b #0x59e64
00059e26  0c 2e                                            cmp r6, #0xc
00059e28  00 f2 cf 80                                      bhi.w #0x59fca
00059e2c  01 20                                            movs r0, #1
00059e2e  41 f2 13 41                                      movw r1, #0x1413
00059e32  b0 40                                            lsls r0, r6
00059e34  08 42                                            tst r0, r1
00059e36  00 f0 c8 80                                      beq.w #0x59fca
00059e3a  db f8 9c 00                                      ldr.w r0, [fp, #0x9c]
00059e3e  4f f0 00 08                                      mov.w r8, #0
00059e42  4f f0 00 0a                                      mov.w sl, #0
00059e46  4f f0 80 51                                      mov.w r1, #0x10000000
00059e4a  00 22                                            movs r2, #0
00059e4c  c0 78                                            ldrb r0, [r0, #3]
00059e4e  c0 06                                            lsls r0, r0, #0x1b
00059e50  58 bf                                            it pl
00059e52  4f f0 01 08                                      movpl.w r8, #1
00059e56  4f f4 80 60                                      mov.w r0, #0x400
00059e5a  04 e0                                            b #0x59e66
00059e5c  07 20                                            movs r0, #7
00059e5e  4f f0 00 08                                      mov.w r8, #0
00059e62  00 22                                            movs r2, #0
00059e64  00 21                                            movs r1, #0
00059e66  11 43                                            orrs r1, r2
00059e68  10 43                                            orrs r0, r2
00059e6a  2c ea 01 01                                      bic.w r1, ip, r1
00059e6e  24 ea 00 00                                      bic.w r0, r4, r0
00059e72  08 43                                            orrs r0, r1
00059e74  06 d0                                            beq #0x59e84
00059e76  70 a2                                            adr r2, #0x1c0
00059e78  01 98                                            ldr r0, [sp, #4]
00059e7a  59 46                                            mov r1, fp
00059e7c  d8 f7 1c ed                                      blx #0x328b8
00059e80  00 20                                            movs r0, #0
00059e82  92 e0                                            b #0x59faa
00059e84  9e f8 03 10                                      ldrb.w r1, [lr, #3]
00059e88  0c f0 80 50                                      and r0, ip, #0x10000000
00059e8c  c9 06                                            lsls r1, r1, #0x1b
00059e8e  0a d4                                            bmi #0x59ea6
00059e90  b0 b1                                            cbz r0, #0x59ec0
00059e92  db f8 9c 00                                      ldr.w r0, [fp, #0x9c]
00059e96  01 68                                            ldr r1, [r0]
00059e98  41 f0 80 51                                      orr r1, r1, #0x10000000
00059e9c  01 60                                            str r1, [r0]
00059e9e  db f8 9c 00                                      ldr.w r0, [fp, #0x9c]
00059ea2  06 62                                            str r6, [r0, #0x20]
00059ea4  0c e0                                            b #0x59ec0
00059ea6  58 b1                                            cbz r0, #0x59ec0
00059ea8  de f8 20 00                                      ldr.w r0, [lr, #0x20]
00059eac  b0 42                                            cmp r0, r6
00059eae  07 d0                                            beq #0x59ec0
00059eb0  6b 4a                                            ldr r2, [pc, #0x1ac]
00059eb2  59 46                                            mov r1, fp
00059eb4  01 98                                            ldr r0, [sp, #4]
00059eb6  75 46                                            mov r5, lr
00059eb8  7a 44                                            add r2, pc
00059eba  d8 f7 fe ec                                      blx #0x328b8
00059ebe  ae 46                                            mov lr, r5
00059ec0  be f8 04 00                                      ldrh.w r0, [lr, #4]
00059ec4  04 f4 80 61                                      and r1, r4, #0x400
00059ec8  10 f4 80 6f                                      tst.w r0, #0x400
00059ecc  01 d1                                            bne #0x59ed2
00059ece  31 b9                                            cbnz r1, #0x59ede
00059ed0  0c e0                                            b #0x59eec
00059ed2  59 b1                                            cbz r1, #0x59eec
00059ed4  de f8 0c 10                                      ldr.w r1, [lr, #0xc]
00059ed8  7a 69                                            ldr r2, [r7, #0x14]
00059eda  91 42                                            cmp r1, r2
00059edc  72 d1                                            bne #0x59fc4
00059ede  79 69                                            ldr r1, [r7, #0x14]
00059ee0  40 f4 80 60                                      orr r0, r0, #0x400
00059ee4  ce f8 0c 10                                      str.w r1, [lr, #0xc]
00059ee8  ae f8 04 00                                      strh.w r0, [lr, #4]
00059eec  d7 f8 48 90                                      ldr.w sb, [r7, #0x48]
00059ef0  b8 f1 01 0f                                      cmp.w r8, #1
00059ef4  1e d1                                            bne #0x59f34
00059ef6  58 46                                            mov r0, fp
00059ef8  24 21                                            movs r1, #0x24
00059efa  d8 f7 12 ec                                      blx #0x32720
00059efe  05 46                                            mov r5, r0
00059f00  5b 48                                            ldr r0, [pc, #0x16c]
00059f02  78 44                                            add r0, pc
00059f04  01 68                                            ldr r1, [r0]
00059f06  28 46                                            mov r0, r5
00059f08  d8 f7 fa ec                                      blx #0x32900
00059f0c  28 46                                            mov r0, r5
00059f0e  d9 f7 dc e8                                      blx #0x330c8
00059f12  58 48                                            ldr r0, [pc, #0x160]
00059f14  2e 62                                            str r6, [r5, #0x20]
00059f16  78 44                                            add r0, pc
00059f18  00 68                                            ldr r0, [r0]
00059f1a  08 30                                            adds r0, #8
00059f1c  28 60                                            str r0, [r5]
00059f1e  01 99                                            ldr r1, [sp, #4]
00059f20  08 69                                            ldr r0, [r1, #0x10]
00059f22  68 60                                            str r0, [r5, #4]
00059f24  08 68                                            ldr r0, [r1]
00059f26  a8 60                                            str r0, [r5, #8]
00059f28  48 68                                            ldr r0, [r1, #4]
00059f2a  e8 60                                            str r0, [r5, #0xc]
00059f2c  88 68                                            ldr r0, [r1, #8]
00059f2e  28 61                                            str r0, [r5, #0x10]
00059f30  c8 68                                            ldr r0, [r1, #0xc]
00059f32  36 e0                                            b #0x59fa2
00059f34  ba f1 01 0f                                      cmp.w sl, #1
00059f38  36 d1                                            bne #0x59fa8
00059f3a  06 a8                                            add r0, sp, #0x18
00059f3c  04 f0 07 01                                      and r1, r4, #7
00059f40  01 9c                                            ldr r4, [sp, #4]
00059f42  2c 30                                            adds r0, #0x2c
00059f44  02 ae                                            add r6, sp, #8
00059f46  00 22                                            movs r2, #0
00059f48  01 23                                            movs r3, #1
00059f4a  03 fa 02 f5                                      lsl.w r5, r3, r2
00059f4e  0d 42                                            tst r5, r1
00059f50  18 bf                                            it ne
00059f52  50 f8 22 30                                      ldrne.w r3, [r0, r2, lsl #2]
00059f56  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
00059f5a  01 32                                            adds r2, #1
00059f5c  03 2a                                            cmp r2, #3
00059f5e  f3 d1                                            bne #0x59f48
00059f60  58 46                                            mov r0, fp
00059f62  2c 21                                            movs r1, #0x2c
00059f64  d8 f7 dc eb                                      blx #0x32720
00059f68  05 46                                            mov r5, r0
00059f6a  3f 48                                            ldr r0, [pc, #0xfc]
00059f6c  78 44                                            add r0, pc
00059f6e  01 68                                            ldr r1, [r0]
00059f70  28 46                                            mov r0, r5
00059f72  d8 f7 c6 ec                                      blx #0x32900
00059f76  28 46                                            mov r0, r5
00059f78  d9 f7 a6 e8                                      blx #0x330c8
00059f7c  3b 48                                            ldr r0, [pc, #0xec]
00059f7e  78 44                                            add r0, pc
00059f80  00 68                                            ldr r0, [r0]
00059f82  08 30                                            adds r0, #8
00059f84  28 60                                            str r0, [r5]
00059f86  05 f1 20 00                                      add.w r0, r5, #0x20
00059f8a  96 e8 0e 00                                      ldm.w r6, {r1, r2, r3}
00059f8e  0e c0                                            stm r0!, {r1, r2, r3}
00059f90  20 69                                            ldr r0, [r4, #0x10]
00059f92  68 60                                            str r0, [r5, #4]
00059f94  20 68                                            ldr r0, [r4]
00059f96  a8 60                                            str r0, [r5, #8]
00059f98  60 68                                            ldr r0, [r4, #4]
00059f9a  e8 60                                            str r0, [r5, #0xc]
00059f9c  a0 68                                            ldr r0, [r4, #8]
00059f9e  28 61                                            str r0, [r5, #0x10]
00059fa0  e0 68                                            ldr r0, [r4, #0xc]
00059fa2  68 61                                            str r0, [r5, #0x14]
00059fa4  c9 f8 00 50                                      str.w r5, [sb]
00059fa8  01 20                                            movs r0, #1
00059faa  33 49                                            ldr r1, [pc, #0xcc]
00059fac  16 9a                                            ldr r2, [sp, #0x58]
00059fae  79 44                                            add r1, pc
00059fb0  09 68                                            ldr r1, [r1]
00059fb2  09 68                                            ldr r1, [r1]
00059fb4  89 1a                                            subs r1, r1, r2
00059fb6  02 bf                                            ittt eq
00059fb8  17 b0                                            addeq sp, #0x5c
00059fba  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00059fbe  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00059fc0  d8 f7 4e e8                                      blx #0x32060
00059fc4  27 4a                                            ldr r2, [pc, #0x9c]
00059fc6  7a 44                                            add r2, pc
00059fc8  56 e7                                            b #0x59e78
00059fca  0e a2                                            adr r2, #0x38
00059fcc  50 46                                            mov r0, sl
00059fce  59 46                                            mov r1, fp
00059fd0  75 46                                            mov r5, lr
00059fd2  e0 46                                            mov r8, ip
00059fd4  d8 f7 70 ec                                      blx #0x328b8
00059fd8  c4 46                                            mov ip, r8
00059fda  ae 46                                            mov lr, r5
00059fdc  2d e7                                            b #0x59e3a
00059fde  00 bf                                            nop
00059fe0  66 27                                            movs r7, #0x66
00059fe2  08 00                                            movs r0, r1
00059fe4  69 6e                                            ldr r1, [r5, #0x64]
00059fe6  76 61                                            str r6, [r6, #0x14]
00059fe8  6c 69                                            ldr r4, [r5, #0x14]
00059fea  64 20                                            movs r0, #0x64
00059fec  69 6e                                            ldr r1, [r5, #0x64]
00059fee  70 75                                            strb r0, [r6, #0x15]
00059ff0  74 20                                            movs r0, #0x74
00059ff2  6c 61                                            str r4, [r5, #0x14]
00059ff4  79 6f                                            ldr r1, [r7, #0x74]
00059ff6  75 74                                            strb r5, [r6, #0x11]
00059ff8  20 71                                            strb r0, [r4, #4]
00059ffa  75 61                                            str r5, [r6, #0x14]
00059ffc  6c 69                                            ldr r4, [r5, #0x14]
00059ffe  66 69                                            ldr r6, [r4, #0x14]
0005a000  65 72                                            strb r5, [r4, #9]
0005a002  00 00                                            movs r0, r0
0005a004  69 6e                                            ldr r1, [r5, #0x64]
0005a006  76 61                                            str r6, [r6, #0x14]
0005a008  6c 69                                            ldr r4, [r5, #0x14]
0005a00a  64 20                                            movs r0, #0x64
0005a00c  67 65                                            str r7, [r4, #0x54]
0005a00e  6f 6d                                            ldr r7, [r5, #0x54]
0005a010  65 74                                            strb r5, [r4, #0x11]
0005a012  72 79                                            ldrb r2, [r6, #5]
0005a014  20 73                                            strb r0, [r4, #0xc]
0005a016  68 61                                            str r0, [r5, #0x14]
0005a018  64 65                                            str r4, [r4, #0x54]
0005a01a  72 20                                            movs r0, #0x72
0005a01c  69 6e                                            ldr r1, [r5, #0x64]
0005a01e  70 75                                            strb r0, [r6, #0x15]
0005a020  74 20                                            movs r0, #0x74
0005a022  70 72                                            strb r0, [r6, #9]
0005a024  69 6d                                            ldr r1, [r5, #0x54]
0005a026  69 74                                            strb r1, [r5, #0x11]
0005a028  69 76                                            strb r1, [r5, #0x19]
0005a02a  65 20                                            movs r0, #0x65
0005a02c  74 79                                            ldrb r4, [r6, #5]
0005a02e  70 65                                            str r0, [r6, #0x54]
0005a030  00 00                                            movs r0, r0
0005a032  00 00                                            movs r0, r0
0005a034  30 2b                                            cmp r3, #0x30
0005a036  06 00                                            movs r6, r0
0005a038  69 6e                                            ldr r1, [r5, #0x64]
0005a03a  76 61                                            str r6, [r6, #0x14]
0005a03c  6c 69                                            ldr r4, [r5, #0x14]
0005a03e  64 20                                            movs r0, #0x64
0005a040  69 6e                                            ldr r1, [r5, #0x64]
0005a042  70 75                                            strb r0, [r6, #0x15]
0005a044  74 20                                            movs r0, #0x74
0005a046  6c 61                                            str r4, [r5, #0x14]
0005a048  79 6f                                            ldr r1, [r7, #0x74]
0005a04a  75 74                                            strb r5, [r6, #0x11]
0005a04c  20 71                                            strb r0, [r4, #4]
0005a04e  75 61                                            str r5, [r6, #0x14]
0005a050  6c 69                                            ldr r4, [r5, #0x14]
0005a052  66 69                                            ldr r6, [r4, #0x14]
0005a054  65 72                                            strb r5, [r4, #9]
0005a056  73 20                                            movs r0, #0x73
0005a058  75 73                                            strb r5, [r6, #0xd]
0005a05a  65 64                                            str r5, [r4, #0x44]
0005a05c  00 00                                            movs r0, r0
0005a05e  00 00                                            movs r0, r0
0005a060  c3 2a                                            cmp r2, #0xc3
0005a062  06 00                                            movs r6, r0
0005a064  e1 29                                            cmp r1, #0xe1
0005a066  06 00                                            movs r6, r0
0005a068  1c 26                                            movs r6, #0x1c
0005a06a  08 00                                            movs r0, r1
0005a06c  0e 26                                            movs r6, #0xe
0005a06e  08 00                                            movs r0, r1
0005a070  86 26                                            movs r6, #0x86
0005a072  08 00                                            movs r0, r1
0005a074  7a 26                                            movs r6, #0x7a
0005a076  08 00                                            movs r0, r1
0005a078  06 25                                            movs r5, #6
0005a07a  08 00                                            movs r0, r1

; FUNCTION 0x0007e8ae, declared_size=2, range_size=2, mode=thumb
; class-group: ast_type_qualifier
; alias: _ZN18ast_type_qualifier18_ralloc_destructorEPv
; demangled: ast_type_qualifier::_ralloc_destructor(void*)
; decoder-mode: thumb
0007e8ae  70 47                                            bx lr
