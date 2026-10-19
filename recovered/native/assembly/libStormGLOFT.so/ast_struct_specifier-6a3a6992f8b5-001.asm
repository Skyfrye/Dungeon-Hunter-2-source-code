; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00058980, declared_size=432, range_size=432, mode=thumb
; class-group: ast_struct_specifier
; alias: _ZN20ast_struct_specifier3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_struct_specifier::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00058980  f0 b5                                            push {r4, r5, r6, r7, lr}
00058982  03 af                                            add r7, sp, #0xc
00058984  2d e9 00 07                                      push.w {r8, sb, sl}
00058988  8c b0                                            sub sp, #0x30
0005898a  06 46                                            mov r6, r0
0005898c  50 48                                            ldr r0, [pc, #0x140]
0005898e  35 1d                                            adds r5, r6, #4
00058990  92 46                                            mov sl, r2
00058992  78 44                                            add r0, pc
00058994  88 46                                            mov r8, r1
00058996  00 68                                            ldr r0, [r0]
00058998  00 68                                            ldr r0, [r0]
0005899a  0b 90                                            str r0, [sp, #0x2c]
0005899c  2f cd                                            ldm r5, {r0, r1, r2, r3, r5}
0005899e  0a 90                                            str r0, [sp, #0x28]
000589a0  06 a8                                            add r0, sp, #0x18
000589a2  2e c0                                            stm r0!, {r1, r2, r3, r5}
000589a4  da f8 80 00                                      ldr.w r0, [sl, #0x80]
000589a8  6e 28                                            cmp r0, #0x6e
000589aa  1c bf                                            itt ne
000589ac  da f8 8c 00                                      ldrne.w r0, [sl, #0x8c]
000589b0  00 28                                            cmpne r0, #0
000589b2  04 d0                                            beq #0x589be
000589b4  06 a8                                            add r0, sp, #0x18
000589b6  47 a2                                            adr r2, #0x11c
000589b8  51 46                                            mov r1, sl
000589ba  d9 f7 7e ef                                      blx #0x328b8
000589be  da f8 8c 00                                      ldr.w r0, [sl, #0x8c]
000589c2  05 a9                                            add r1, sp, #0x14
000589c4  06 f1 24 02                                      add.w r2, r6, #0x24
000589c8  06 ab                                            add r3, sp, #0x18
000589ca  01 30                                            adds r0, #1
000589cc  ca f8 8c 00                                      str.w r0, [sl, #0x8c]
000589d0  00 20                                            movs r0, #0
000589d2  cd e9 00 10                                      strd r1, r0, [sp]
000589d6  51 46                                            mov r1, sl
000589d8  cd e9 02 00                                      strd r0, r0, [sp, #8]
000589dc  04 90                                            str r0, [sp, #0x10]
000589de  40 46                                            mov r0, r8
000589e0  da f7 4c ea                                      blx #0x32e7c
000589e4  06 ad                                            add r5, sp, #0x18
000589e6  81 46                                            mov sb, r0
000589e8  2e cd                                            ldm r5, {r1, r2, r3, r5}
000589ea  30 6a                                            ldr r0, [r6, #0x20]
000589ec  0a 9c                                            ldr r4, [sp, #0x28]
000589ee  cd e9 00 54                                      strd r5, r4, [sp]
000589f2  cd f8 08 a0                                      str.w sl, [sp, #8]
000589f6  da f7 b2 e9                                      blx #0x32d5c
000589fa  32 6a                                            ldr r2, [r6, #0x20]
000589fc  49 46                                            mov r1, sb
000589fe  05 98                                            ldr r0, [sp, #0x14]
00058a00  da f7 42 ea                                      blx #0x32e88
00058a04  05 46                                            mov r5, r0
00058a06  31 6a                                            ldr r1, [r6, #0x20]
00058a08  da f8 14 00                                      ldr.w r0, [sl, #0x14]
00058a0c  2a 46                                            mov r2, r5
00058a0e  da f7 42 ea                                      blx #0x32e94
00058a12  d0 b3                                            cbz r0, #0x58a8a
00058a14  da e9 61 10                                      ldrd r1, r0, [sl, #0x184]
00058a18  43 1c                                            adds r3, r0, #1
00058a1a  50 46                                            mov r0, sl
00058a1c  04 22                                            movs r2, #4
00058a1e  da f7 40 ea                                      blx #0x32ea0
00058a22  c0 b3                                            cbz r0, #0x58a96
00058a24  da f8 88 11                                      ldr.w r1, [sl, #0x188]
00058a28  40 f8 21 50                                      str.w r5, [r0, r1, lsl #2]
00058a2c  01 31                                            adds r1, #1
00058a2e  ca e9 61 01                                      strd r0, r1, [sl, #0x184]
00058a32  50 46                                            mov r0, sl
00058a34  14 21                                            movs r1, #0x14
00058a36  d9 f7 74 ee                                      blx #0x32720
00058a3a  06 46                                            mov r6, r0
00058a3c  39 48                                            ldr r0, [pc, #0xe4]
00058a3e  78 44                                            add r0, pc
00058a40  01 68                                            ldr r1, [r0]
00058a42  30 46                                            mov r0, r6
00058a44  d9 f7 5c ef                                      blx #0x32900
00058a48  37 48                                            ldr r0, [pc, #0xdc]
00058a4a  11 21                                            movs r1, #0x11
00058a4c  78 44                                            add r0, pc
00058a4e  00 68                                            ldr r0, [r0]
00058a50  08 30                                            adds r0, #8
00058a52  30 60                                            str r0, [r6]
00058a54  c6 e9 03 15                                      strd r1, r5, [r6, #0xc]
00058a58  d8 f8 00 00                                      ldr.w r0, [r8]
00058a5c  58 b1                                            cbz r0, #0x58a76
00058a5e  01 1f                                            subs r1, r0, #4
00058a60  09 d0                                            beq #0x58a76
00058a62  cb 68                                            ldr r3, [r1, #0xc]
00058a64  0a 1d                                            adds r2, r1, #4
00058a66  43 f0 01 03                                      orr r3, r3, #1
00058a6a  11 2b                                            cmp r3, #0x11
00058a6c  26 d1                                            bne #0x58abc
00058a6e  11 68                                            ldr r1, [r2]
00058a70  09 b1                                            cbz r1, #0x58a76
00058a72  04 39                                            subs r1, #4
00058a74  f5 d1                                            bne #0x58a62
00058a76  00 2e                                            cmp r6, #0
00058a78  18 bf                                            it ne
00058a7a  04 36                                            addne r6, #4
00058a7c  c6 f8 04 80                                      str.w r8, [r6, #4]
00058a80  30 60                                            str r0, [r6]
00058a82  46 60                                            str r6, [r0, #4]
00058a84  c8 f8 00 60                                      str.w r6, [r8]
00058a88  05 e0                                            b #0x58a96
00058a8a  33 6a                                            ldr r3, [r6, #0x20]
00058a8c  06 a8                                            add r0, sp, #0x18
00058a8e  1d a2                                            adr r2, #0x74
00058a90  51 46                                            mov r1, sl
00058a92  d9 f7 12 ef                                      blx #0x328b8
00058a96  da f8 8c 00                                      ldr.w r0, [sl, #0x8c]
00058a9a  01 38                                            subs r0, #1
00058a9c  ca f8 8c 00                                      str.w r0, [sl, #0x8c]
00058aa0  22 48                                            ldr r0, [pc, #0x88]
00058aa2  0b 99                                            ldr r1, [sp, #0x2c]
00058aa4  78 44                                            add r0, pc
00058aa6  00 68                                            ldr r0, [r0]
00058aa8  00 68                                            ldr r0, [r0]
00058aaa  40 1a                                            subs r0, r0, r1
00058aac  01 bf                                            itttt eq
00058aae  00 20                                            moveq r0, #0
00058ab0  0c b0                                            addeq sp, #0x30
00058ab2  bd e8 00 07                                      popeq.w {r8, sb, sl}
00058ab6  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00058ab8  d9 f7 d2 ea                                      blx #0x32060
00058abc  00 2e                                            cmp r6, #0
00058abe  18 bf                                            it ne
00058ac0  04 36                                            addne r6, #4
00058ac2  32 60                                            str r2, [r6]
00058ac4  88 68                                            ldr r0, [r1, #8]
00058ac6  70 60                                            str r0, [r6, #4]
00058ac8  88 68                                            ldr r0, [r1, #8]
00058aca  06 60                                            str r6, [r0]
00058acc  8e 60                                            str r6, [r1, #8]
00058ace  e2 e7                                            b #0x58a96
00058ad0  22 3b                                            subs r3, #0x22
00058ad2  08 00                                            movs r0, r1
00058ad4  65 6d                                            ldr r5, [r4, #0x54]
00058ad6  62 65                                            str r2, [r4, #0x54]
00058ad8  64 64                                            str r4, [r4, #0x44]
00058ada  65 64                                            str r5, [r4, #0x44]
00058adc  20 73                                            strb r0, [r4, #0xc]
00058ade  74 72                                            strb r4, [r6, #9]
00058ae0  75 63                                            str r5, [r6, #0x34]
00058ae2  74 75                                            strb r4, [r6, #0x15]
00058ae4  72 65                                            str r2, [r6, #0x54]
00058ae6  20 64                                            str r0, [r4, #0x40]
00058ae8  65 63                                            str r5, [r4, #0x34]
00058aea  6c 61                                            str r4, [r5, #0x14]
00058aec  72 61                                            str r2, [r6, #0x14]
00058aee  74 69                                            ldr r4, [r6, #0x14]
00058af0  6f 6e                                            ldr r7, [r5, #0x64]
00058af2  73 20                                            movs r0, #0x73
00058af4  61 72                                            strb r1, [r4, #9]
00058af6  65 20                                            movs r0, #0x65
00058af8  6e 6f                                            ldr r6, [r5, #0x74]
00058afa  74 20                                            movs r0, #0x74
00058afc  61 6c                                            ldr r1, [r4, #0x44]
00058afe  6c 6f                                            ldr r4, [r5, #0x74]
00058b00  77 65                                            str r7, [r6, #0x54]
00058b02  64 00                                            lsls r4, r4, #1
00058b04  73 74                                            strb r3, [r6, #0x11]
00058b06  72 75                                            strb r2, [r6, #0x15]
00058b08  63 74                                            strb r3, [r4, #0x11]
00058b0a  20 60                                            str r0, [r4]
00058b0c  25 73                                            strb r5, [r4, #0xc]
00058b0e  27 20                                            movs r0, #0x27
00058b10  70 72                                            strb r0, [r6, #9]
00058b12  65 76                                            strb r5, [r4, #0x19]
00058b14  69 6f                                            ldr r1, [r5, #0x74]
00058b16  75 73                                            strb r5, [r6, #0xd]
00058b18  6c 79                                            ldrb r4, [r5, #5]
00058b1a  20 64                                            str r0, [r4, #0x40]
00058b1c  65 66                                            str r5, [r4, #0x64]
00058b1e  69 6e                                            ldr r1, [r5, #0x64]
00058b20  65 64                                            str r5, [r4, #0x44]
00058b22  00 00                                            movs r0, r0
00058b24  fa 3a                                            subs r2, #0xfa
00058b26  08 00                                            movs r0, r1
00058b28  34 3b                                            subs r3, #0x34
00058b2a  08 00                                            movs r0, r1
00058b2c  10 3a                                            subs r2, #0x10
00058b2e  08 00                                            movs r0, r1

; FUNCTION 0x0007e2f4, declared_size=68, range_size=68, mode=thumb
; class-group: ast_struct_specifier
; alias: _ZNK20ast_struct_specifier5printEv
; demangled: ast_struct_specifier::print() const
; decoder-mode: thumb
0007e2f4  d0 b5                                            push {r4, r6, r7, lr}
0007e2f6  02 af                                            add r7, sp, #8
0007e2f8  04 46                                            mov r4, r0
0007e2fa  0a a0                                            adr r0, #0x28
0007e2fc  21 6a                                            ldr r1, [r4, #0x20]
0007e2fe  b3 f7 f4 ef                                      blx #0x322e8
0007e302  64 6a                                            ldr r4, [r4, #0x24]
0007e304  05 e0                                            b #0x7e312
0007e306  20 46                                            mov r0, r4
0007e308  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
0007e30c  09 68                                            ldr r1, [r1]
0007e30e  88 47                                            blx r1
0007e310  24 68                                            ldr r4, [r4]
0007e312  20 68                                            ldr r0, [r4]
0007e314  00 28                                            cmp r0, #0
0007e316  f6 d1                                            bne #0x7e306
0007e318  06 a0                                            adr r0, #0x18
0007e31a  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007e31e  32 f0 43 bc                                      b.w #0xb0ba8
0007e322  00 bf                                            nop
0007e324  73 74                                            strb r3, [r6, #0x11]
0007e326  72 75                                            strb r2, [r6, #0x15]
0007e328  63 74                                            strb r3, [r4, #0x11]
0007e32a  20 25                                            movs r5, #0x20
0007e32c  73 20                                            movs r0, #0x73
0007e32e  7b 20                                            movs r0, #0x7b
0007e330  00 00                                            movs r0, r0
0007e332  00 00                                            movs r0, r0
0007e334  7d 20                                            movs r0, #0x7d
0007e336  00 00                                            movs r0, r0

; FUNCTION 0x0007e338, declared_size=152, range_size=152, mode=thumb
; class-group: ast_struct_specifier
; alias: _ZN20ast_struct_specifierC1EPKcP19ast_declarator_list
; demangled: ast_struct_specifier::ast_struct_specifier(char const*, ast_declarator_list*)
; alias: _ZN20ast_struct_specifierC2EPKcP19ast_declarator_list
; demangled: ast_struct_specifier::ast_struct_specifier(char const*, ast_declarator_list*)
; decoder-mode: thumb
0007e338  f0 b5                                            push {r4, r5, r6, r7, lr}
0007e33a  03 af                                            add r7, sp, #0xc
0007e33c  2d e9 00 0b                                      push.w {r8, sb, fp}
0007e340  04 46                                            mov r4, r0
0007e342  20 1d                                            adds r0, r4, #4
0007e344  0e 46                                            mov r6, r1
0007e346  14 21                                            movs r1, #0x14
0007e348  15 46                                            mov r5, r2
0007e34a  b4 f7 8a e9                                      blx #0x32660
0007e34e  19 49                                            ldr r1, [pc, #0x64]
0007e350  00 22                                            movs r2, #0
0007e352  20 46                                            mov r0, r4
0007e354  04 f1 24 08                                      add.w r8, r4, #0x24
0007e358  79 44                                            add r1, pc
0007e35a  40 f8 28 2f                                      str r2, [r0, #0x28]!
0007e35e  00 2e                                            cmp r6, #0
0007e360  60 62                                            str r0, [r4, #0x24]
0007e362  09 68                                            ldr r1, [r1]
0007e364  c4 f8 2c 80                                      str.w r8, [r4, #0x2c]
0007e368  01 f1 08 01                                      add.w r1, r1, #8
0007e36c  21 60                                            str r1, [r4]
0007e36e  0f d1                                            bne #0x7e390
0007e370  df f8 44 90                                      ldr.w sb, [pc, #0x44]
0007e374  11 a1                                            adr r1, #0x44
0007e376  20 46                                            mov r0, r4
0007e378  f9 44                                            add sb, pc
0007e37a  d9 f8 00 20                                      ldr.w r2, [sb]
0007e37e  b4 f7 18 ea                                      blx #0x327b0
0007e382  06 46                                            mov r6, r0
0007e384  d9 f8 00 00                                      ldr.w r0, [sb]
0007e388  01 30                                            adds r0, #1
0007e38a  c9 f8 00 00                                      str.w r0, [sb]
0007e38e  60 6a                                            ldr r0, [r4, #0x24]
0007e390  26 62                                            str r6, [r4, #0x20]
0007e392  e9 69                                            ldr r1, [r5, #0x1c]
0007e394  08 60                                            str r0, [r1]
0007e396  60 6a                                            ldr r0, [r4, #0x24]
0007e398  41 60                                            str r1, [r0, #4]
0007e39a  01 20                                            movs r0, #1
0007e39c  c5 f8 1c 80                                      str.w r8, [r5, #0x1c]
0007e3a0  84 f8 30 00                                      strb.w r0, [r4, #0x30]
0007e3a4  05 f1 18 00                                      add.w r0, r5, #0x18
0007e3a8  60 62                                            str r0, [r4, #0x24]
0007e3aa  20 46                                            mov r0, r4
0007e3ac  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007e3b0  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007e3b2  00 bf                                            nop
0007e3b4  f0 e5                                            b #0x7df98
0007e3b6  05 00                                            movs r5, r0
0007e3b8  14 00                                            movs r4, r2
0007e3ba  06 00                                            movs r6, r0
0007e3bc  23 61                                            str r3, [r4, #0x10]
0007e3be  6e 6f                                            ldr r6, [r5, #0x74]
0007e3c0  6e 5f                                            ldrsh r6, [r5, r5]
0007e3c2  73 74                                            strb r3, [r6, #0x11]
0007e3c4  72 75                                            strb r2, [r6, #0x15]
0007e3c6  63 74                                            strb r3, [r4, #0x11]
0007e3c8  5f 25                                            movs r5, #0x5f
0007e3ca  30 34                                            adds r4, #0x30
0007e3cc  78 00                                            lsls r0, r7, #1
0007e3ce  00 00                                            movs r0, r0
