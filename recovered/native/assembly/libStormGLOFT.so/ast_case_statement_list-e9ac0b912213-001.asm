; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000579d0, declared_size=660, range_size=660, mode=thumb
; class-group: ast_case_statement_list
; alias: _ZN23ast_case_statement_list3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_case_statement_list::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
000579d0  f0 b5                                            push {r4, r5, r6, r7, lr}
000579d2  03 af                                            add r7, sp, #0xc
000579d4  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
000579d8  8f b0                                            sub sp, #0x3c
000579da  88 46                                            mov r8, r1
000579dc  9d 49                                            ldr r1, [pc, #0x274]
000579de  4f f0 00 09                                      mov.w sb, #0
000579e2  0d f1 14 0a                                      add.w sl, sp, #0x14
000579e6  79 44                                            add r1, pc
000579e8  14 46                                            mov r4, r2
000579ea  0a f1 04 05                                      add.w r5, sl, #4
000579ee  09 68                                            ldr r1, [r1]
000579f0  09 68                                            ldr r1, [r1]
000579f2  0e 91                                            str r1, [sp, #0x38]
000579f4  0b a9                                            add r1, sp, #0x2c
000579f6  cd f8 30 90                                      str.w sb, [sp, #0x30]
000579fa  01 f1 04 0b                                      add.w fp, r1, #4
000579fe  cd f8 2c b0                                      str.w fp, [sp, #0x2c]
00057a02  0d 91                                            str r1, [sp, #0x34]
00057a04  08 a9                                            add r1, sp, #0x20
00057a06  0b 1d                                            adds r3, r1, #4
00057a08  cd f8 24 90                                      str.w sb, [sp, #0x24]
00057a0c  08 93                                            str r3, [sp, #0x20]
00057a0e  1a 46                                            mov r2, r3
00057a10  cd f8 18 90                                      str.w sb, [sp, #0x18]
00057a14  05 95                                            str r5, [sp, #0x14]
00057a16  03 92                                            str r2, [sp, #0xc]
00057a18  0a 91                                            str r1, [sp, #0x28]
00057a1a  cd f8 1c a0                                      str.w sl, [sp, #0x1c]
00057a1e  06 6a                                            ldr r6, [r0, #0x20]
00057a20  30 68                                            ldr r0, [r6]
00057a22  00 28                                            cmp r0, #0
00057a24  00 f0 08 81                                      beq.w #0x57c38
00057a28  08 f1 04 00                                      add.w r0, r8, #4
00057a2c  04 90                                            str r0, [sp, #0x10]
00057a2e  30 46                                            mov r0, r6
00057a30  22 46                                            mov r2, r4
00057a32  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
00057a36  4b 68                                            ldr r3, [r1, #4]
00057a38  51 46                                            mov r1, sl
00057a3a  98 47                                            blx r3
00057a3c  d4 f8 7c 21                                      ldr.w r2, [r4, #0x17c]
00057a40  05 98                                            ldr r0, [sp, #0x14]
00057a42  0b 99                                            ldr r1, [sp, #0x2c]
00057a44  00 2a                                            cmp r2, #0
00057a46  0c d0                                            beq #0x57a62
00057a48  59 45                                            cmp r1, fp
00057a4a  0a d1                                            bne #0x57a62
00057a4c  a8 42                                            cmp r0, r5
00057a4e  25 d0                                            beq #0x57a9c
00057a50  0d 99                                            ldr r1, [sp, #0x34]
00057a52  08 60                                            str r0, [r1]
00057a54  05 98                                            ldr r0, [sp, #0x14]
00057a56  41 60                                            str r1, [r0, #4]
00057a58  07 98                                            ldr r0, [sp, #0x1c]
00057a5a  0d 90                                            str r0, [sp, #0x34]
00057a5c  c0 f8 00 b0                                      str.w fp, [r0]
00057a60  17 e0                                            b #0x57a92
00057a62  59 45                                            cmp r1, fp
00057a64  0a d0                                            beq #0x57a7c
00057a66  a8 42                                            cmp r0, r5
00057a68  18 d0                                            beq #0x57a9c
00057a6a  0a 99                                            ldr r1, [sp, #0x28]
00057a6c  08 60                                            str r0, [r1]
00057a6e  05 98                                            ldr r0, [sp, #0x14]
00057a70  41 60                                            str r1, [r0, #4]
00057a72  07 98                                            ldr r0, [sp, #0x1c]
00057a74  03 99                                            ldr r1, [sp, #0xc]
00057a76  0a 90                                            str r0, [sp, #0x28]
00057a78  01 60                                            str r1, [r0]
00057a7a  0a e0                                            b #0x57a92
00057a7c  a8 42                                            cmp r0, r5
00057a7e  0d d0                                            beq #0x57a9c
00057a80  04 99                                            ldr r1, [sp, #0x10]
00057a82  0a 46                                            mov r2, r1
00057a84  51 68                                            ldr r1, [r2, #4]
00057a86  08 60                                            str r0, [r1]
00057a88  05 98                                            ldr r0, [sp, #0x14]
00057a8a  41 60                                            str r1, [r0, #4]
00057a8c  07 98                                            ldr r0, [sp, #0x1c]
00057a8e  50 60                                            str r0, [r2, #4]
00057a90  02 60                                            str r2, [r0]
00057a92  cd f8 18 90                                      str.w sb, [sp, #0x18]
00057a96  05 95                                            str r5, [sp, #0x14]
00057a98  cd f8 1c a0                                      str.w sl, [sp, #0x1c]
00057a9c  36 68                                            ldr r6, [r6]
00057a9e  30 68                                            ldr r0, [r6]
00057aa0  00 28                                            cmp r0, #0
00057aa2  c4 d1                                            bne #0x57a2e
00057aa4  0b 98                                            ldr r0, [sp, #0x2c]
00057aa6  58 45                                            cmp r0, fp
00057aa8  00 f0 c6 80                                      beq.w #0x57c38
00057aac  20 46                                            mov r0, r4
00057aae  68 21                                            movs r1, #0x68
00057ab0  da f7 36 ee                                      blx #0x32720
00057ab4  81 46                                            mov sb, r0
00057ab6  68 48                                            ldr r0, [pc, #0x1a0]
00057ab8  78 44                                            add r0, pc
00057aba  d0 f8 00 a0                                      ldr.w sl, [r0]
00057abe  48 46                                            mov r0, sb
00057ac0  51 46                                            mov r1, sl
00057ac2  da f7 1e ef                                      blx #0x32900
00057ac6  48 46                                            mov r0, sb
00057ac8  01 21                                            movs r1, #1
00057aca  01 22                                            movs r2, #1
00057acc  db f7 c2 e8                                      blx #0x32c54
00057ad0  20 46                                            mov r0, r4
00057ad2  1c 21                                            movs r1, #0x1c
00057ad4  da f7 24 ee                                      blx #0x32720
00057ad8  51 46                                            mov r1, sl
00057ada  05 46                                            mov r5, r0
00057adc  da f7 10 ef                                      blx #0x32900
00057ae0  d4 f8 74 11                                      ldr.w r1, [r4, #0x174]
00057ae4  28 46                                            mov r0, r5
00057ae6  da f7 66 ef                                      blx #0x329b4
00057aea  20 46                                            mov r0, r4
00057aec  20 21                                            movs r1, #0x20
00057aee  da f7 18 ee                                      blx #0x32720
00057af2  51 46                                            mov r1, sl
00057af4  06 46                                            mov r6, r0
00057af6  da f7 04 ef                                      blx #0x32900
00057afa  30 46                                            mov r0, r6
00057afc  29 46                                            mov r1, r5
00057afe  4a 46                                            mov r2, sb
00057b00  00 23                                            movs r3, #0
00057b02  da f7 82 ef                                      blx #0x32a08
00057b06  00 2e                                            cmp r6, #0
00057b08  18 bf                                            it ne
00057b0a  04 36                                            addne r6, #4
00057b0c  04 98                                            ldr r0, [sp, #0x10]
00057b0e  30 60                                            str r0, [r6]
00057b10  d8 f8 08 00                                      ldr.w r0, [r8, #8]
00057b14  70 60                                            str r0, [r6, #4]
00057b16  06 60                                            str r6, [r0]
00057b18  c8 f8 08 60                                      str.w r6, [r8, #8]
00057b1c  08 98                                            ldr r0, [sp, #0x20]
00057b1e  03 99                                            ldr r1, [sp, #0xc]
00057b20  88 42                                            cmp r0, r1
00057b22  7a d0                                            beq #0x57c1a
00057b24  00 28                                            cmp r0, #0
00057b26  18 bf                                            it ne
00057b28  04 38                                            subne r0, #4
00057b2a  80 46                                            mov r8, r0
00057b2c  58 f8 04 1f                                      ldr r1, [r8, #4]!
00057b30  00 29                                            cmp r1, #0
00057b32  51 d0                                            beq #0x57bd8
00057b34  49 4a                                            ldr r2, [pc, #0x124]
00057b36  7a 44                                            add r2, pc
00057b38  12 68                                            ldr r2, [r2]
00057b3a  01 92                                            str r2, [sp, #4]
00057b3c  dd f8 04 90                                      ldr.w sb, [sp, #4]
00057b40  02 46                                            mov r2, r0
00057b42  00 2a                                            cmp r2, #0
00057b44  3f d0                                            beq #0x57bc6
00057b46  d0 68                                            ldr r0, [r2, #0xc]
00057b48  08 28                                            cmp r0, #8
00057b4a  08 46                                            mov r0, r1
00057b4c  3c d1                                            bne #0x57bc8
00057b4e  90 69                                            ldr r0, [r2, #0x18]
00057b50  00 22                                            movs r2, #0
00057b52  01 68                                            ldr r1, [r0]
00057b54  0b 69                                            ldr r3, [r1, #0x10]
00057b56  21 46                                            mov r1, r4
00057b58  98 47                                            blx r3
00057b5a  02 90                                            str r0, [sp, #8]
00057b5c  20 46                                            mov r0, r4
00057b5e  1c 21                                            movs r1, #0x1c
00057b60  da f7 de ed                                      blx #0x32720
00057b64  49 46                                            mov r1, sb
00057b66  82 46                                            mov sl, r0
00057b68  da f7 ca ee                                      blx #0x32900
00057b6c  d4 f8 74 11                                      ldr.w r1, [r4, #0x174]
00057b70  50 46                                            mov r0, sl
00057b72  da f7 20 ef                                      blx #0x329b4
00057b76  20 46                                            mov r0, r4
00057b78  68 21                                            movs r1, #0x68
00057b7a  da f7 d2 ed                                      blx #0x32720
00057b7e  49 46                                            mov r1, sb
00057b80  05 46                                            mov r5, r0
00057b82  da f7 be ee                                      blx #0x32900
00057b86  28 46                                            mov r0, r5
00057b88  00 21                                            movs r1, #0
00057b8a  01 22                                            movs r2, #1
00057b8c  db f7 62 e8                                      blx #0x32c54
00057b90  20 46                                            mov r0, r4
00057b92  20 21                                            movs r1, #0x20
00057b94  da f7 c4 ed                                      blx #0x32720
00057b98  49 46                                            mov r1, sb
00057b9a  06 46                                            mov r6, r0
00057b9c  da f7 b0 ee                                      blx #0x32900
00057ba0  02 9b                                            ldr r3, [sp, #8]
00057ba2  30 46                                            mov r0, r6
00057ba4  51 46                                            mov r1, sl
00057ba6  2a 46                                            mov r2, r5
00057ba8  da f7 2e ef                                      blx #0x32a08
00057bac  00 2e                                            cmp r6, #0
00057bae  18 bf                                            it ne
00057bb0  04 36                                            addne r6, #4
00057bb2  04 98                                            ldr r0, [sp, #0x10]
00057bb4  01 46                                            mov r1, r0
00057bb6  31 60                                            str r1, [r6]
00057bb8  48 68                                            ldr r0, [r1, #4]
00057bba  70 60                                            str r0, [r6, #4]
00057bbc  06 60                                            str r6, [r0]
00057bbe  4e 60                                            str r6, [r1, #4]
00057bc0  d8 f8 00 00                                      ldr.w r0, [r8]
00057bc4  00 e0                                            b #0x57bc8
00057bc6  08 46                                            mov r0, r1
00057bc8  00 28                                            cmp r0, #0
00057bca  18 bf                                            it ne
00057bcc  04 38                                            subne r0, #4
00057bce  80 46                                            mov r8, r0
00057bd0  58 f8 04 1f                                      ldr r1, [r8, #4]!
00057bd4  00 29                                            cmp r1, #0
00057bd6  b3 d1                                            bne #0x57b40
00057bd8  0b 98                                            ldr r0, [sp, #0x2c]
00057bda  58 45                                            cmp r0, fp
00057bdc  0b d0                                            beq #0x57bf6
00057bde  30 60                                            str r0, [r6]
00057be0  0b 98                                            ldr r0, [sp, #0x2c]
00057be2  46 60                                            str r6, [r0, #4]
00057be4  0d 9e                                            ldr r6, [sp, #0x34]
00057be6  04 98                                            ldr r0, [sp, #0x10]
00057be8  46 60                                            str r6, [r0, #4]
00057bea  30 60                                            str r0, [r6]
00057bec  00 20                                            movs r0, #0
00057bee  cd e9 0b b0                                      strd fp, r0, [sp, #0x2c]
00057bf2  0b a8                                            add r0, sp, #0x2c
00057bf4  0d 90                                            str r0, [sp, #0x34]
00057bf6  08 98                                            ldr r0, [sp, #0x20]
00057bf8  03 99                                            ldr r1, [sp, #0xc]
00057bfa  88 42                                            cmp r0, r1
00057bfc  1c d0                                            beq #0x57c38
00057bfe  30 60                                            str r0, [r6]
00057c00  08 98                                            ldr r0, [sp, #0x20]
00057c02  46 60                                            str r6, [r0, #4]
00057c04  0a 98                                            ldr r0, [sp, #0x28]
00057c06  04 99                                            ldr r1, [sp, #0x10]
00057c08  48 60                                            str r0, [r1, #4]
00057c0a  01 60                                            str r1, [r0]
00057c0c  00 20                                            movs r0, #0
00057c0e  09 90                                            str r0, [sp, #0x24]
00057c10  03 98                                            ldr r0, [sp, #0xc]
00057c12  08 90                                            str r0, [sp, #0x20]
00057c14  08 a8                                            add r0, sp, #0x20
00057c16  0a 90                                            str r0, [sp, #0x28]
00057c18  0e e0                                            b #0x57c38
00057c1a  0b 98                                            ldr r0, [sp, #0x2c]
00057c1c  58 45                                            cmp r0, fp
00057c1e  0b d0                                            beq #0x57c38
00057c20  30 60                                            str r0, [r6]
00057c22  0b 98                                            ldr r0, [sp, #0x2c]
00057c24  46 60                                            str r6, [r0, #4]
00057c26  0d 98                                            ldr r0, [sp, #0x34]
00057c28  04 99                                            ldr r1, [sp, #0x10]
00057c2a  48 60                                            str r0, [r1, #4]
00057c2c  01 60                                            str r1, [r0]
00057c2e  00 20                                            movs r0, #0
00057c30  cd e9 0b b0                                      strd fp, r0, [sp, #0x2c]
00057c34  0b a8                                            add r0, sp, #0x2c
00057c36  0d 90                                            str r0, [sp, #0x34]
00057c38  09 48                                            ldr r0, [pc, #0x24]
00057c3a  0e 99                                            ldr r1, [sp, #0x38]
00057c3c  78 44                                            add r0, pc
00057c3e  00 68                                            ldr r0, [r0]
00057c40  00 68                                            ldr r0, [r0]
00057c42  40 1a                                            subs r0, r0, r1
00057c44  01 bf                                            itttt eq
00057c46  00 20                                            moveq r0, #0
00057c48  0f b0                                            addeq sp, #0x3c
00057c4a  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00057c4e  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00057c50  da f7 06 ea                                      blx #0x32060
00057c54  ce 4a                                            ldr r2, [pc, #0x338]
00057c56  08 00                                            movs r0, r1
00057c58  80 4a                                            ldr r2, [pc, #0x200]
00057c5a  08 00                                            movs r0, r1
00057c5c  02 4a                                            ldr r2, [pc, #8]
00057c5e  08 00                                            movs r0, r1
00057c60  78 48                                            ldr r0, [pc, #0x1e0]
00057c62  08 00                                            movs r0, r1

; FUNCTION 0x0007e1c0, declared_size=28, range_size=28, mode=thumb
; class-group: ast_case_statement_list
; alias: _ZNK23ast_case_statement_list5printEv
; demangled: ast_case_statement_list::print() const
; decoder-mode: thumb
0007e1c0  d0 b5                                            push {r4, r6, r7, lr}
0007e1c2  02 af                                            add r7, sp, #8
0007e1c4  04 6a                                            ldr r4, [r0, #0x20]
0007e1c6  20 68                                            ldr r0, [r4]
0007e1c8  00 28                                            cmp r0, #0
0007e1ca  08 bf                                            it eq
0007e1cc  d0 bd                                            popeq {r4, r6, r7, pc}
0007e1ce  20 46                                            mov r0, r4
0007e1d0  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
0007e1d4  09 68                                            ldr r1, [r1]
0007e1d6  88 47                                            blx r1
0007e1d8  24 68                                            ldr r4, [r4]
0007e1da  f4 e7                                            b #0x7e1c6

; FUNCTION 0x0007e1dc, declared_size=48, range_size=48, mode=thumb
; class-group: ast_case_statement_list
; alias: _ZN23ast_case_statement_listC1Ev
; demangled: ast_case_statement_list::ast_case_statement_list()
; alias: _ZN23ast_case_statement_listC2Ev
; demangled: ast_case_statement_list::ast_case_statement_list()
; decoder-mode: thumb
0007e1dc  d0 b5                                            push {r4, r6, r7, lr}
0007e1de  02 af                                            add r7, sp, #8
0007e1e0  04 46                                            mov r4, r0
0007e1e2  20 1d                                            adds r0, r4, #4
0007e1e4  14 21                                            movs r1, #0x14
0007e1e6  b4 f7 3c ea                                      blx #0x32660
0007e1ea  07 48                                            ldr r0, [pc, #0x1c]
0007e1ec  00 21                                            movs r1, #0
0007e1ee  22 46                                            mov r2, r4
0007e1f0  78 44                                            add r0, pc
0007e1f2  42 f8 24 1f                                      str r1, [r2, #0x24]!
0007e1f6  22 62                                            str r2, [r4, #0x20]
0007e1f8  04 f1 20 01                                      add.w r1, r4, #0x20
0007e1fc  00 68                                            ldr r0, [r0]
0007e1fe  a1 62                                            str r1, [r4, #0x28]
0007e200  08 30                                            adds r0, #8
0007e202  20 60                                            str r0, [r4]
0007e204  20 46                                            mov r0, r4
0007e206  d0 bd                                            pop {r4, r6, r7, pc}
0007e208  50 e7                                            b #0x7e0ac
0007e20a  05 00                                            movs r5, r0
