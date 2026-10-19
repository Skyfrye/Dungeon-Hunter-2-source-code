; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4950, declared_size=2, range_size=2, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl15_S_uninitializeEv
; demangled: std::_Locale_impl::_S_uninitialize()
; decoder-mode: thumb
008a4950  70 47                                            bx lr

; FUNCTION 0x008a4954, declared_size=2, range_size=2, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl17_M_throw_bad_castEv
; demangled: std::_Locale_impl::_M_throw_bad_cast()
; decoder-mode: thumb
008a4954  70 47                                            bx lr

; FUNCTION 0x008a5950, declared_size=88, range_size=88, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_implD1Ev
; demangled: std::_Locale_impl::~_Locale_impl()
; decoder-mode: thumb
008a5950  70 b5                                            push {r4, r5, r6, lr}
008a5952  06 1c                                            adds r6, r0, #0
008a5954  13 48                                            ldr r0, [pc, #0x4c]
008a5956  78 44                                            add r0, pc
008a5958  10 30                                            adds r0, #0x10
008a595a  ff f7 79 fd                                      bl #0x8a5450
008a595e  34 6a                                            ldr r4, [r6, #0x20]
008a5960  75 6a                                            ldr r5, [r6, #0x24]
008a5962  ac 42                                            cmp r4, r5
008a5964  05 d0                                            beq #0x8a5972
008a5966  20 1c                                            adds r0, r4, #0
008a5968  04 34                                            adds r4, #4
008a596a  ff f7 2f fa                                      bl #0x8a4dcc
008a596e  a5 42                                            cmp r5, r4
008a5970  f9 d1                                            bne #0x8a5966
008a5972  30 6a                                            ldr r0, [r6, #0x20]
008a5974  33 1c                                            adds r3, r6, #0
008a5976  20 33                                            adds r3, #0x20
008a5978  00 28                                            cmp r0, #0
008a597a  07 d0                                            beq #0x8a598c
008a597c  99 68                                            ldr r1, [r3, #8]
008a597e  09 1a                                            subs r1, r1, r0
008a5980  89 10                                            asrs r1, r1, #2
008a5982  89 00                                            lsls r1, r1, #2
008a5984  80 29                                            cmp r1, #0x80
008a5986  0a d8                                            bhi #0x8a599e
008a5988  10 f0 68 fc                                      bl #0x8b625c
008a598c  30 1c                                            adds r0, r6, #0
008a598e  08 30                                            adds r0, #8
008a5990  6e f6 0c e0                                      blx #0x3139ac
008a5994  30 1d                                            adds r0, r6, #4
008a5996  68 f6 90 e6                                      blx #0x30e6b8
008a599a  30 1c                                            adds r0, r6, #0
008a599c  70 bd                                            pop {r4, r5, r6, pc}
008a599e  68 f6 88 e4                                      blx #0x30e2b0
008a59a2  f3 e7                                            b #0x8a598c
; mapping-symbol data/literal pool
008a59a4  36 f5 18 00                                      .byte 0x36, 0xf5, 0x18, 0x00

; FUNCTION 0x008a59f8, declared_size=88, range_size=88, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_implD2Ev
; demangled: std::_Locale_impl::~_Locale_impl()
; decoder-mode: thumb
008a59f8  70 b5                                            push {r4, r5, r6, lr}
008a59fa  06 1c                                            adds r6, r0, #0
008a59fc  13 48                                            ldr r0, [pc, #0x4c]
008a59fe  78 44                                            add r0, pc
008a5a00  10 30                                            adds r0, #0x10
008a5a02  ff f7 25 fd                                      bl #0x8a5450
008a5a06  34 6a                                            ldr r4, [r6, #0x20]
008a5a08  75 6a                                            ldr r5, [r6, #0x24]
008a5a0a  ac 42                                            cmp r4, r5
008a5a0c  05 d0                                            beq #0x8a5a1a
008a5a0e  20 1c                                            adds r0, r4, #0
008a5a10  04 34                                            adds r4, #4
008a5a12  ff f7 db f9                                      bl #0x8a4dcc
008a5a16  a5 42                                            cmp r5, r4
008a5a18  f9 d1                                            bne #0x8a5a0e
008a5a1a  30 6a                                            ldr r0, [r6, #0x20]
008a5a1c  33 1c                                            adds r3, r6, #0
008a5a1e  20 33                                            adds r3, #0x20
008a5a20  00 28                                            cmp r0, #0
008a5a22  07 d0                                            beq #0x8a5a34
008a5a24  99 68                                            ldr r1, [r3, #8]
008a5a26  09 1a                                            subs r1, r1, r0
008a5a28  89 10                                            asrs r1, r1, #2
008a5a2a  89 00                                            lsls r1, r1, #2
008a5a2c  80 29                                            cmp r1, #0x80
008a5a2e  0a d8                                            bhi #0x8a5a46
008a5a30  10 f0 14 fc                                      bl #0x8b625c
008a5a34  30 1c                                            adds r0, r6, #0
008a5a36  08 30                                            adds r0, #8
008a5a38  6d f6 b8 e7                                      blx #0x3139ac
008a5a3c  30 1d                                            adds r0, r6, #4
008a5a3e  68 f6 3c e6                                      blx #0x30e6b8
008a5a42  30 1c                                            adds r0, r6, #0
008a5a44  70 bd                                            pop {r4, r5, r6, pc}
008a5a46  68 f6 34 e4                                      blx #0x30e2b0
008a5a4a  f3 e7                                            b #0x8a5a34
; mapping-symbol data/literal pool
008a5a4c  8e f4 18 00                                      .byte 0x8e, 0xf4, 0x18, 0x00

; FUNCTION 0x008a6154, declared_size=94, range_size=94, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl6insertEPNSt6locale5facetERKNS0_2idE
; demangled: std::_Locale_impl::insert(std::locale::facet*, std::locale::id const&)
; decoder-mode: thumb
008a6154  70 b5                                            push {r4, r5, r6, lr}
008a6156  82 b0                                            sub sp, #8
008a6158  05 1c                                            adds r5, r0, #0
008a615a  0c 1c                                            adds r4, r1, #0
008a615c  16 1c                                            adds r6, r2, #0
008a615e  00 29                                            cmp r1, #0
008a6160  02 d1                                            bne #0x8a6168
008a6162  02 b0                                            add sp, #8
008a6164  20 1c                                            adds r0, r4, #0
008a6166  70 bd                                            pop {r4, r5, r6, pc}
008a6168  11 68                                            ldr r1, [r2]
008a616a  00 29                                            cmp r1, #0
008a616c  1f d0                                            beq #0x8a61ae
008a616e  03 6a                                            ldr r3, [r0, #0x20]
008a6170  42 6a                                            ldr r2, [r0, #0x24]
008a6172  d2 1a                                            subs r2, r2, r3
008a6174  92 10                                            asrs r2, r2, #2
008a6176  91 42                                            cmp r1, r2
008a6178  0f d2                                            bhs #0x8a619a
008a617a  89 00                                            lsls r1, r1, #2
008a617c  58 18                                            adds r0, r3, r1
008a617e  03 68                                            ldr r3, [r0]
008a6180  9c 42                                            cmp r4, r3
008a6182  ee d0                                            beq #0x8a6162
008a6184  fe f7 22 fe                                      bl #0x8a4dcc
008a6188  33 68                                            ldr r3, [r6]
008a618a  2d 6a                                            ldr r5, [r5, #0x20]
008a618c  20 1c                                            adds r0, r4, #0
008a618e  9b 00                                            lsls r3, r3, #2
008a6190  ed 18                                            adds r5, r5, r3
008a6192  fe f7 37 fe                                      bl #0x8a4e04
008a6196  28 60                                            str r0, [r5]
008a6198  e3 e7                                            b #0x8a6162
008a619a  00 23                                            movs r3, #0
008a619c  01 31                                            adds r1, #1
008a619e  20 30                                            adds r0, #0x20
008a61a0  01 aa                                            add r2, sp, #4
008a61a2  01 93                                            str r3, [sp, #4]
008a61a4  ff f7 c2 ff                                      bl #0x8a612c
008a61a8  31 68                                            ldr r1, [r6]
008a61aa  2b 6a                                            ldr r3, [r5, #0x20]
008a61ac  e5 e7                                            b #0x8a617a
008a61ae  00 24                                            movs r4, #0
008a61b0  d7 e7                                            b #0x8a6162

; FUNCTION 0x008a61b4, declared_size=30, range_size=30, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl6insertEPS_RKNSt6locale2idE
; demangled: std::_Locale_impl::insert(std::_Locale_impl*, std::locale::id const&)
; decoder-mode: thumb
008a61b4  10 b5                                            push {r4, lr}
008a61b6  13 68                                            ldr r3, [r2]
008a61b8  00 2b                                            cmp r3, #0
008a61ba  09 d0                                            beq #0x8a61d0
008a61bc  0c 6a                                            ldr r4, [r1, #0x20]
008a61be  49 6a                                            ldr r1, [r1, #0x24]
008a61c0  09 1b                                            subs r1, r1, r4
008a61c2  89 10                                            asrs r1, r1, #2
008a61c4  8b 42                                            cmp r3, r1
008a61c6  03 d2                                            bhs #0x8a61d0
008a61c8  9b 00                                            lsls r3, r3, #2
008a61ca  19 59                                            ldr r1, [r3, r4]
008a61cc  ff f7 c2 ff                                      bl #0x8a6154
008a61d0  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a61d4, declared_size=284, range_size=284, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl22insert_messages_facetsERPKcPcP17_Locale_name_hint
; demangled: std::_Locale_impl::insert_messages_facets(char const*&, char*, _Locale_name_hint*)
; decoder-mode: thumb
008a61d4  f0 b5                                            push {r4, r5, r6, r7, lr}
008a61d6  5f 46                                            mov r7, fp
008a61d8  56 46                                            mov r6, sl
008a61da  4d 46                                            mov r5, sb
008a61dc  44 46                                            mov r4, r8
008a61de  f0 b4                                            push {r4, r5, r6, r7}
008a61e0  07 1c                                            adds r7, r0, #0
008a61e2  08 68                                            ldr r0, [r1]
008a61e4  3d 4c                                            ldr r4, [pc, #0xf4]
008a61e6  1e 1c                                            adds r6, r3, #0
008a61e8  03 78                                            ldrb r3, [r0]
008a61ea  7c 44                                            add r4, pc
008a61ec  83 b0                                            sub sp, #0xc
008a61ee  0d 1c                                            adds r5, r1, #0
008a61f0  90 46                                            mov r8, r2
008a61f2  00 2b                                            cmp r3, #0
008a61f4  4d d0                                            beq #0x8a6292
008a61f6  00 28                                            cmp r0, #0
008a61f8  02 d0                                            beq #0x8a6200
008a61fa  03 78                                            ldrb r3, [r0]
008a61fc  00 2b                                            cmp r3, #0
008a61fe  16 d1                                            bne #0x8a622e
008a6200  fd f7 d2 f9                                      bl #0x8a35a8
008a6204  36 4b                                            ldr r3, [pc, #0xd8]
008a6206  05 68                                            ldr r5, [r0]
008a6208  38 1c                                            adds r0, r7, #0
008a620a  e2 58                                            ldr r2, [r4, r3]
008a620c  29 1c                                            adds r1, r5, #0
008a620e  ff f7 d1 ff                                      bl #0x8a61b4
008a6212  34 4b                                            ldr r3, [pc, #0xd0]
008a6214  38 1c                                            adds r0, r7, #0
008a6216  29 1c                                            adds r1, r5, #0
008a6218  e2 58                                            ldr r2, [r4, r3]
008a621a  ff f7 cb ff                                      bl #0x8a61b4
008a621e  03 b0                                            add sp, #0xc
008a6220  30 1c                                            adds r0, r6, #0
008a6222  3c bc                                            pop {r2, r3, r4, r5}
008a6224  90 46                                            mov r8, r2
008a6226  99 46                                            mov sb, r3
008a6228  a2 46                                            mov sl, r4
008a622a  ab 46                                            mov fp, r5
008a622c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a622e  43 2b                                            cmp r3, #0x43
008a6230  3e d0                                            beq #0x8a62b0
008a6232  01 ab                                            add r3, sp, #4
008a6234  28 1c                                            adds r0, r5, #0
008a6236  41 46                                            mov r1, r8
008a6238  32 1c                                            adds r2, r6, #0
008a623a  9a 46                                            mov sl, r3
008a623c  0d f0 58 ff                                      bl #0x8b40f0
008a6240  83 46                                            mov fp, r0
008a6242  00 28                                            cmp r0, #0
008a6244  2a d0                                            beq #0x8a629c
008a6246  10 20                                            movs r0, #0x10
008a6248  68 f6 20 e3                                      blx #0x30e88c
008a624c  59 46                                            mov r1, fp
008a624e  81 46                                            mov sb, r0
008a6250  16 f0 54 fd                                      bl #0x8bccfc
008a6254  41 46                                            mov r1, r8
008a6256  28 1c                                            adds r0, r5, #0
008a6258  32 1c                                            adds r2, r6, #0
008a625a  53 46                                            mov r3, sl
008a625c  0d f0 48 ff                                      bl #0x8b40f0
008a6260  80 46                                            mov r8, r0
008a6262  00 28                                            cmp r0, #0
008a6264  28 d0                                            beq #0x8a62b8
008a6266  10 20                                            movs r0, #0x10
008a6268  68 f6 10 e3                                      blx #0x30e88c
008a626c  41 46                                            mov r1, r8
008a626e  05 1c                                            adds r5, r0, #0
008a6270  16 f0 e0 fc                                      bl #0x8bcc34
008a6274  1a 4b                                            ldr r3, [pc, #0x68]
008a6276  38 1c                                            adds r0, r7, #0
008a6278  49 46                                            mov r1, sb
008a627a  e2 58                                            ldr r2, [r4, r3]
008a627c  ff f7 6a ff                                      bl #0x8a6154
008a6280  00 2d                                            cmp r5, #0
008a6282  cc d0                                            beq #0x8a621e
008a6284  17 4b                                            ldr r3, [pc, #0x5c]
008a6286  38 1c                                            adds r0, r7, #0
008a6288  29 1c                                            adds r1, r5, #0
008a628a  e2 58                                            ldr r2, [r4, r3]
008a628c  ff f7 62 ff                                      bl #0x8a6154
008a6290  c5 e7                                            b #0x8a621e
008a6292  10 1c                                            adds r0, r2, #0
008a6294  10 f0 fc fa                                      bl #0x8b6890
008a6298  28 60                                            str r0, [r5]
008a629a  ac e7                                            b #0x8a61f6
008a629c  01 9b                                            ldr r3, [sp, #4]
008a629e  04 2b                                            cmp r3, #4
008a62a0  bd d1                                            bne #0x8a621e
008a62a2  11 48                                            ldr r0, [pc, #0x44]
008a62a4  78 44                                            add r0, pc
008a62a6  67 f6 0e e7                                      blx #0x30e0c4
008a62aa  01 20                                            movs r0, #1
008a62ac  67 f6 cc e5                                      blx #0x30de48
008a62b0  43 78                                            ldrb r3, [r0, #1]
008a62b2  00 2b                                            cmp r3, #0
008a62b4  bd d1                                            bne #0x8a6232
008a62b6  a3 e7                                            b #0x8a6200
008a62b8  01 9b                                            ldr r3, [sp, #4]
008a62ba  04 2b                                            cmp r3, #4
008a62bc  06 d0                                            beq #0x8a62cc
008a62be  08 4b                                            ldr r3, [pc, #0x20]
008a62c0  38 1c                                            adds r0, r7, #0
008a62c2  49 46                                            mov r1, sb
008a62c4  e2 58                                            ldr r2, [r4, r3]
008a62c6  ff f7 45 ff                                      bl #0x8a6154
008a62ca  a8 e7                                            b #0x8a621e
008a62cc  07 48                                            ldr r0, [pc, #0x1c]
008a62ce  78 44                                            add r0, pc
008a62d0  67 f6 f8 e6                                      blx #0x30e0c4
008a62d4  01 20                                            movs r0, #1
008a62d6  67 f6 b8 e5                                      blx #0x30de48
008a62da  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a62dc  aa e8 0e 00 3c 46 00 00 2c 22 00 00 90 f6 06 00  .byte 0xaa, 0xe8, 0x0e, 0x00, 0x3c, 0x46, 0x00, 0x00, 0x2c, 0x22, 0x00, 0x00, 0x90, 0xf6, 0x06, 0x00
008a62ec  66 f6 06 00                                      .byte 0x66, 0xf6, 0x06, 0x00

; FUNCTION 0x008a62f0, declared_size=588, range_size=588, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl22insert_monetary_facetsERPKcPcP17_Locale_name_hint
; demangled: std::_Locale_impl::insert_monetary_facets(char const*&, char*, _Locale_name_hint*)
; decoder-mode: thumb
008a62f0  f0 b5                                            push {r4, r5, r6, r7, lr}
008a62f2  5f 46                                            mov r7, fp
008a62f4  56 46                                            mov r6, sl
008a62f6  4d 46                                            mov r5, sb
008a62f8  44 46                                            mov r4, r8
008a62fa  f0 b4                                            push {r4, r5, r6, r7}
008a62fc  98 46                                            mov r8, r3
008a62fe  0b 68                                            ldr r3, [r1]
008a6300  81 4c                                            ldr r4, [pc, #0x204]
008a6302  85 b0                                            sub sp, #0x14
008a6304  1b 78                                            ldrb r3, [r3]
008a6306  7c 44                                            add r4, pc
008a6308  05 1c                                            adds r5, r0, #0
008a630a  0e 1c                                            adds r6, r1, #0
008a630c  91 46                                            mov sb, r2
008a630e  00 2b                                            cmp r3, #0
008a6310  00 d1                                            bne #0x8a6314
008a6312  a6 e0                                            b #0x8a6462
008a6314  fd f7 48 f9                                      bl #0x8a35a8
008a6318  7c 4b                                            ldr r3, [pc, #0x1f0]
008a631a  07 68                                            ldr r7, [r0]
008a631c  28 1c                                            adds r0, r5, #0
008a631e  e2 58                                            ldr r2, [r4, r3]
008a6320  39 1c                                            adds r1, r7, #0
008a6322  ff f7 47 ff                                      bl #0x8a61b4
008a6326  7a 4b                                            ldr r3, [pc, #0x1e8]
008a6328  28 1c                                            adds r0, r5, #0
008a632a  39 1c                                            adds r1, r7, #0
008a632c  e2 58                                            ldr r2, [r4, r3]
008a632e  ff f7 41 ff                                      bl #0x8a61b4
008a6332  78 4b                                            ldr r3, [pc, #0x1e0]
008a6334  28 1c                                            adds r0, r5, #0
008a6336  39 1c                                            adds r1, r7, #0
008a6338  e2 58                                            ldr r2, [r4, r3]
008a633a  ff f7 3b ff                                      bl #0x8a61b4
008a633e  76 4b                                            ldr r3, [pc, #0x1d8]
008a6340  28 1c                                            adds r0, r5, #0
008a6342  39 1c                                            adds r1, r7, #0
008a6344  e2 58                                            ldr r2, [r4, r3]
008a6346  ff f7 35 ff                                      bl #0x8a61b4
008a634a  33 68                                            ldr r3, [r6]
008a634c  00 2b                                            cmp r3, #0
008a634e  02 d0                                            beq #0x8a6356
008a6350  1a 78                                            ldrb r2, [r3]
008a6352  00 2a                                            cmp r2, #0
008a6354  1f d1                                            bne #0x8a6396
008a6356  71 4b                                            ldr r3, [pc, #0x1c4]
008a6358  28 1c                                            adds r0, r5, #0
008a635a  39 1c                                            adds r1, r7, #0
008a635c  e2 58                                            ldr r2, [r4, r3]
008a635e  ff f7 29 ff                                      bl #0x8a61b4
008a6362  6f 4b                                            ldr r3, [pc, #0x1bc]
008a6364  28 1c                                            adds r0, r5, #0
008a6366  39 1c                                            adds r1, r7, #0
008a6368  e2 58                                            ldr r2, [r4, r3]
008a636a  ff f7 23 ff                                      bl #0x8a61b4
008a636e  6d 4b                                            ldr r3, [pc, #0x1b4]
008a6370  28 1c                                            adds r0, r5, #0
008a6372  39 1c                                            adds r1, r7, #0
008a6374  e2 58                                            ldr r2, [r4, r3]
008a6376  ff f7 1d ff                                      bl #0x8a61b4
008a637a  6b 4b                                            ldr r3, [pc, #0x1ac]
008a637c  28 1c                                            adds r0, r5, #0
008a637e  39 1c                                            adds r1, r7, #0
008a6380  e2 58                                            ldr r2, [r4, r3]
008a6382  ff f7 17 ff                                      bl #0x8a61b4
008a6386  05 b0                                            add sp, #0x14
008a6388  40 46                                            mov r0, r8
008a638a  3c bc                                            pop {r2, r3, r4, r5}
008a638c  90 46                                            mov r8, r2
008a638e  99 46                                            mov sb, r3
008a6390  a2 46                                            mov sl, r4
008a6392  ab 46                                            mov fp, r5
008a6394  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a6396  43 2a                                            cmp r2, #0x43
008a6398  00 d1                                            bne #0x8a639c
008a639a  9a e0                                            b #0x8a64d2
008a639c  03 ab                                            add r3, sp, #0xc
008a639e  30 1c                                            adds r0, r6, #0
008a63a0  49 46                                            mov r1, sb
008a63a2  42 46                                            mov r2, r8
008a63a4  9a 46                                            mov sl, r3
008a63a6  0d f0 c3 fe                                      bl #0x8b4130
008a63aa  83 46                                            mov fp, r0
008a63ac  00 28                                            cmp r0, #0
008a63ae  74 d0                                            beq #0x8a649a
008a63b0  42 46                                            mov r2, r8
008a63b2  00 2a                                            cmp r2, #0
008a63b4  00 d1                                            bne #0x8a63b8
008a63b6  9b e0                                            b #0x8a64f0
008a63b8  18 20                                            movs r0, #0x18
008a63ba  68 f6 68 e2                                      blx #0x30e88c
008a63be  59 46                                            mov r1, fp
008a63c0  07 1c                                            adds r7, r0, #0
008a63c2  0e f0 c5 fb                                      bl #0x8b4b50
008a63c6  30 1c                                            adds r0, r6, #0
008a63c8  49 46                                            mov r1, sb
008a63ca  42 46                                            mov r2, r8
008a63cc  53 46                                            mov r3, sl
008a63ce  0d f0 af fe                                      bl #0x8b4130
008a63d2  83 46                                            mov fp, r0
008a63d4  00 28                                            cmp r0, #0
008a63d6  6b d0                                            beq #0x8a64b0
008a63d8  18 20                                            movs r0, #0x18
008a63da  68 f6 58 e2                                      blx #0x30e88c
008a63de  59 46                                            mov r1, fp
008a63e0  00 90                                            str r0, [sp]
008a63e2  0e f0 ad fc                                      bl #0x8b4d40
008a63e6  30 1c                                            adds r0, r6, #0
008a63e8  49 46                                            mov r1, sb
008a63ea  42 46                                            mov r2, r8
008a63ec  53 46                                            mov r3, sl
008a63ee  0d f0 9f fe                                      bl #0x8b4130
008a63f2  01 90                                            str r0, [sp, #4]
008a63f4  00 28                                            cmp r0, #0
008a63f6  71 d0                                            beq #0x8a64dc
008a63f8  18 20                                            movs r0, #0x18
008a63fa  68 f6 48 e2                                      blx #0x30e88c
008a63fe  01 99                                            ldr r1, [sp, #4]
008a6400  83 46                                            mov fp, r0
008a6402  0e f0 7f f9                                      bl #0x8b4704
008a6406  49 46                                            mov r1, sb
008a6408  30 1c                                            adds r0, r6, #0
008a640a  42 46                                            mov r2, r8
008a640c  53 46                                            mov r3, sl
008a640e  0d f0 8f fe                                      bl #0x8b4130
008a6412  81 46                                            mov sb, r0
008a6414  00 28                                            cmp r0, #0
008a6416  29 d0                                            beq #0x8a646c
008a6418  18 20                                            movs r0, #0x18
008a641a  68 f6 38 e2                                      blx #0x30e88c
008a641e  49 46                                            mov r1, sb
008a6420  06 1c                                            adds r6, r0, #0
008a6422  0e f0 65 fa                                      bl #0x8b48f0
008a6426  3d 4b                                            ldr r3, [pc, #0xf4]
008a6428  39 1c                                            adds r1, r7, #0
008a642a  28 1c                                            adds r0, r5, #0
008a642c  e2 58                                            ldr r2, [r4, r3]
008a642e  ff f7 91 fe                                      bl #0x8a6154
008a6432  3b 4b                                            ldr r3, [pc, #0xec]
008a6434  28 1c                                            adds r0, r5, #0
008a6436  00 99                                            ldr r1, [sp]
008a6438  e2 58                                            ldr r2, [r4, r3]
008a643a  ff f7 8b fe                                      bl #0x8a6154
008a643e  5a 46                                            mov r2, fp
008a6440  00 2a                                            cmp r2, #0
008a6442  05 d0                                            beq #0x8a6450
008a6444  37 4b                                            ldr r3, [pc, #0xdc]
008a6446  28 1c                                            adds r0, r5, #0
008a6448  59 46                                            mov r1, fp
008a644a  e2 58                                            ldr r2, [r4, r3]
008a644c  ff f7 82 fe                                      bl #0x8a6154
008a6450  00 2e                                            cmp r6, #0
008a6452  98 d0                                            beq #0x8a6386
008a6454  34 4b                                            ldr r3, [pc, #0xd0]
008a6456  28 1c                                            adds r0, r5, #0
008a6458  31 1c                                            adds r1, r6, #0
008a645a  e2 58                                            ldr r2, [r4, r3]
008a645c  ff f7 7a fe                                      bl #0x8a6154
008a6460  91 e7                                            b #0x8a6386
008a6462  10 1c                                            adds r0, r2, #0
008a6464  10 f0 0e fa                                      bl #0x8b6884
008a6468  30 60                                            str r0, [r6]
008a646a  53 e7                                            b #0x8a6314
008a646c  5b 46                                            mov r3, fp
008a646e  00 2b                                            cmp r3, #0
008a6470  03 d0                                            beq #0x8a647a
008a6472  1b 68                                            ldr r3, [r3]
008a6474  58 46                                            mov r0, fp
008a6476  5b 68                                            ldr r3, [r3, #4]
008a6478  98 47                                            blx r3
008a647a  03 9b                                            ldr r3, [sp, #0xc]
008a647c  04 2b                                            cmp r3, #4
008a647e  3c d0                                            beq #0x8a64fa
008a6480  26 4b                                            ldr r3, [pc, #0x98]
008a6482  39 1c                                            adds r1, r7, #0
008a6484  28 1c                                            adds r0, r5, #0
008a6486  e2 58                                            ldr r2, [r4, r3]
008a6488  ff f7 64 fe                                      bl #0x8a6154
008a648c  24 4b                                            ldr r3, [pc, #0x90]
008a648e  28 1c                                            adds r0, r5, #0
008a6490  00 99                                            ldr r1, [sp]
008a6492  e2 58                                            ldr r2, [r4, r3]
008a6494  ff f7 5e fe                                      bl #0x8a6154
008a6498  75 e7                                            b #0x8a6386
008a649a  03 9b                                            ldr r3, [sp, #0xc]
008a649c  04 2b                                            cmp r3, #4
008a649e  00 d0                                            beq #0x8a64a2
008a64a0  71 e7                                            b #0x8a6386
008a64a2  22 48                                            ldr r0, [pc, #0x88]
008a64a4  78 44                                            add r0, pc
008a64a6  67 f6 0e e6                                      blx #0x30e0c4
008a64aa  01 20                                            movs r0, #1
008a64ac  67 f6 cc e4                                      blx #0x30de48
008a64b0  00 2f                                            cmp r7, #0
008a64b2  03 d0                                            beq #0x8a64bc
008a64b4  3b 68                                            ldr r3, [r7]
008a64b6  38 1c                                            adds r0, r7, #0
008a64b8  5b 68                                            ldr r3, [r3, #4]
008a64ba  98 47                                            blx r3
008a64bc  03 9b                                            ldr r3, [sp, #0xc]
008a64be  04 2b                                            cmp r3, #4
008a64c0  00 d0                                            beq #0x8a64c4
008a64c2  60 e7                                            b #0x8a6386
008a64c4  1a 48                                            ldr r0, [pc, #0x68]
008a64c6  78 44                                            add r0, pc
008a64c8  67 f6 fc e5                                      blx #0x30e0c4
008a64cc  01 20                                            movs r0, #1
008a64ce  67 f6 bc e4                                      blx #0x30de48
008a64d2  5b 78                                            ldrb r3, [r3, #1]
008a64d4  00 2b                                            cmp r3, #0
008a64d6  00 d0                                            beq #0x8a64da
008a64d8  60 e7                                            b #0x8a639c
008a64da  3c e7                                            b #0x8a6356
008a64dc  03 9b                                            ldr r3, [sp, #0xc]
008a64de  04 2b                                            cmp r3, #4
008a64e0  ce d1                                            bne #0x8a6480
008a64e2  14 48                                            ldr r0, [pc, #0x50]
008a64e4  78 44                                            add r0, pc
008a64e6  67 f6 ee e5                                      blx #0x30e0c4
008a64ea  01 20                                            movs r0, #1
008a64ec  67 f6 ac e4                                      blx #0x30de48
008a64f0  58 46                                            mov r0, fp
008a64f2  10 f0 7f fa                                      bl #0x8b69f4
008a64f6  80 46                                            mov r8, r0
008a64f8  5e e7                                            b #0x8a63b8
008a64fa  0f 48                                            ldr r0, [pc, #0x3c]
008a64fc  78 44                                            add r0, pc
008a64fe  67 f6 e2 e5                                      blx #0x30e0c4
008a6502  01 20                                            movs r0, #1
008a6504  67 f6 a0 e4                                      blx #0x30de48
; mapping-symbol data/literal pool
008a6508  8e e7 0e 00 e8 1d 00 00 1c 35 00 00 ec 1e 00 00  .byte 0x8e, 0xe7, 0x0e, 0x00, 0xe8, 0x1d, 0x00, 0x00, 0x1c, 0x35, 0x00, 0x00, 0xec, 0x1e, 0x00, 0x00
008a6518  a0 39 00 00 30 0f 00 00 80 2c 00 00 d0 27 00 00  .byte 0xa0, 0x39, 0x00, 0x00, 0x30, 0x0f, 0x00, 0x00, 0x80, 0x2c, 0x00, 0x00, 0xd0, 0x27, 0x00, 0x00
008a6528  1c 2d 00 00 90 f4 06 00 6e f4 06 00 50 f4 06 00  .byte 0x1c, 0x2d, 0x00, 0x00, 0x90, 0xf4, 0x06, 0x00, 0x6e, 0xf4, 0x06, 0x00, 0x50, 0xf4, 0x06, 0x00
008a6538  38 f4 06 00                                      .byte 0x38, 0xf4, 0x06, 0x00

; FUNCTION 0x008a653c, declared_size=348, range_size=348, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl21insert_collate_facetsERPKcPcP17_Locale_name_hint
; demangled: std::_Locale_impl::insert_collate_facets(char const*&, char*, _Locale_name_hint*)
; decoder-mode: thumb
008a653c  f0 b5                                            push {r4, r5, r6, r7, lr}
008a653e  5f 46                                            mov r7, fp
008a6540  56 46                                            mov r6, sl
008a6542  4d 46                                            mov r5, sb
008a6544  44 46                                            mov r4, r8
008a6546  f0 b4                                            push {r4, r5, r6, r7}
008a6548  80 46                                            mov r8, r0
008a654a  08 68                                            ldr r0, [r1]
008a654c  4b 4c                                            ldr r4, [pc, #0x12c]
008a654e  1f 1c                                            adds r7, r3, #0
008a6550  03 78                                            ldrb r3, [r0]
008a6552  7c 44                                            add r4, pc
008a6554  85 b0                                            sub sp, #0x14
008a6556  0d 1c                                            adds r5, r1, #0
008a6558  91 46                                            mov sb, r2
008a655a  00 2b                                            cmp r3, #0
008a655c  61 d0                                            beq #0x8a6622
008a655e  00 28                                            cmp r0, #0
008a6560  02 d0                                            beq #0x8a6568
008a6562  03 78                                            ldrb r3, [r0]
008a6564  00 2b                                            cmp r3, #0
008a6566  16 d1                                            bne #0x8a6596
008a6568  fd f7 1e f8                                      bl #0x8a35a8
008a656c  44 4b                                            ldr r3, [pc, #0x110]
008a656e  05 68                                            ldr r5, [r0]
008a6570  40 46                                            mov r0, r8
008a6572  e2 58                                            ldr r2, [r4, r3]
008a6574  29 1c                                            adds r1, r5, #0
008a6576  ff f7 1d fe                                      bl #0x8a61b4
008a657a  42 4b                                            ldr r3, [pc, #0x108]
008a657c  40 46                                            mov r0, r8
008a657e  29 1c                                            adds r1, r5, #0
008a6580  e2 58                                            ldr r2, [r4, r3]
008a6582  ff f7 17 fe                                      bl #0x8a61b4
008a6586  05 b0                                            add sp, #0x14
008a6588  38 1c                                            adds r0, r7, #0
008a658a  3c bc                                            pop {r2, r3, r4, r5}
008a658c  90 46                                            mov r8, r2
008a658e  99 46                                            mov sb, r3
008a6590  a2 46                                            mov sl, r4
008a6592  ab 46                                            mov fp, r5
008a6594  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a6596  43 2b                                            cmp r3, #0x43
008a6598  52 d0                                            beq #0x8a6640
008a659a  6b 46                                            mov r3, sp
008a659c  0c 33                                            adds r3, #0xc
008a659e  28 1c                                            adds r0, r5, #0
008a65a0  49 46                                            mov r1, sb
008a65a2  3a 1c                                            adds r2, r7, #0
008a65a4  01 93                                            str r3, [sp, #4]
008a65a6  0d f0 e3 fd                                      bl #0x8b4170
008a65aa  83 46                                            mov fp, r0
008a65ac  00 28                                            cmp r0, #0
008a65ae  3d d0                                            beq #0x8a662c
008a65b0  00 2f                                            cmp r7, #0
008a65b2  53 d0                                            beq #0x8a665c
008a65b4  10 20                                            movs r0, #0x10
008a65b6  68 f6 6a e1                                      blx #0x30e88c
008a65ba  00 23                                            movs r3, #0
008a65bc  06 1c                                            adds r6, r0, #0
008a65be  43 60                                            str r3, [r0, #4]
008a65c0  00 21                                            movs r1, #0
008a65c2  08 30                                            adds r0, #8
008a65c4  9a 46                                            mov sl, r3
008a65c6  67 f6 f4 e4                                      blx #0x30dfb0
008a65ca  2f 4b                                            ldr r3, [pc, #0xbc]
008a65cc  49 46                                            mov r1, sb
008a65ce  28 1c                                            adds r0, r5, #0
008a65d0  e3 58                                            ldr r3, [r4, r3]
008a65d2  3a 1c                                            adds r2, r7, #0
008a65d4  08 33                                            adds r3, #8
008a65d6  33 60                                            str r3, [r6]
008a65d8  5b 46                                            mov r3, fp
008a65da  f3 60                                            str r3, [r6, #0xc]
008a65dc  01 9b                                            ldr r3, [sp, #4]
008a65de  0d f0 c7 fd                                      bl #0x8b4170
008a65e2  81 46                                            mov sb, r0
008a65e4  00 28                                            cmp r0, #0
008a65e6  2f d0                                            beq #0x8a6648
008a65e8  10 20                                            movs r0, #0x10
008a65ea  68 f6 50 e1                                      blx #0x30e88c
008a65ee  53 46                                            mov r3, sl
008a65f0  05 1c                                            adds r5, r0, #0
008a65f2  43 60                                            str r3, [r0, #4]
008a65f4  00 21                                            movs r1, #0
008a65f6  08 30                                            adds r0, #8
008a65f8  67 f6 da e4                                      blx #0x30dfb0
008a65fc  23 4b                                            ldr r3, [pc, #0x8c]
008a65fe  31 1c                                            adds r1, r6, #0
008a6600  40 46                                            mov r0, r8
008a6602  e3 58                                            ldr r3, [r4, r3]
008a6604  08 33                                            adds r3, #8
008a6606  2b 60                                            str r3, [r5]
008a6608  4b 46                                            mov r3, sb
008a660a  eb 60                                            str r3, [r5, #0xc]
008a660c  1c 4b                                            ldr r3, [pc, #0x70]
008a660e  e2 58                                            ldr r2, [r4, r3]
008a6610  ff f7 a0 fd                                      bl #0x8a6154
008a6614  1b 4b                                            ldr r3, [pc, #0x6c]
008a6616  40 46                                            mov r0, r8
008a6618  29 1c                                            adds r1, r5, #0
008a661a  e2 58                                            ldr r2, [r4, r3]
008a661c  ff f7 9a fd                                      bl #0x8a6154
008a6620  b1 e7                                            b #0x8a6586
008a6622  10 1c                                            adds r0, r2, #0
008a6624  10 f0 28 f9                                      bl #0x8b6878
008a6628  28 60                                            str r0, [r5]
008a662a  98 e7                                            b #0x8a655e
008a662c  03 9b                                            ldr r3, [sp, #0xc]
008a662e  04 2b                                            cmp r3, #4
008a6630  a9 d1                                            bne #0x8a6586
008a6632  17 48                                            ldr r0, [pc, #0x5c]
008a6634  78 44                                            add r0, pc
008a6636  67 f6 46 e5                                      blx #0x30e0c4
008a663a  01 20                                            movs r0, #1
008a663c  67 f6 04 e4                                      blx #0x30de48
008a6640  43 78                                            ldrb r3, [r0, #1]
008a6642  00 2b                                            cmp r3, #0
008a6644  a9 d1                                            bne #0x8a659a
008a6646  8f e7                                            b #0x8a6568
008a6648  03 9b                                            ldr r3, [sp, #0xc]
008a664a  04 2b                                            cmp r3, #4
008a664c  0b d0                                            beq #0x8a6666
008a664e  0c 4b                                            ldr r3, [pc, #0x30]
008a6650  40 46                                            mov r0, r8
008a6652  31 1c                                            adds r1, r6, #0
008a6654  e2 58                                            ldr r2, [r4, r3]
008a6656  ff f7 7d fd                                      bl #0x8a6154
008a665a  94 e7                                            b #0x8a6586
008a665c  58 46                                            mov r0, fp
008a665e  10 f0 c7 f9                                      bl #0x8b69f0
008a6662  07 1c                                            adds r7, r0, #0
008a6664  a6 e7                                            b #0x8a65b4
008a6666  33 68                                            ldr r3, [r6]
008a6668  30 1c                                            adds r0, r6, #0
008a666a  5b 68                                            ldr r3, [r3, #4]
008a666c  98 47                                            blx r3
008a666e  09 48                                            ldr r0, [pc, #0x24]
008a6670  78 44                                            add r0, pc
008a6672  67 f6 28 e5                                      blx #0x30e0c4
008a6676  01 20                                            movs r0, #1
008a6678  67 f6 e6 e3                                      blx #0x30de48
; mapping-symbol data/literal pool
008a667c  42 e5 0e 00 4c 22 00 00 e4 22 00 00 48 45 00 00  .byte 0x42, 0xe5, 0x0e, 0x00, 0x4c, 0x22, 0x00, 0x00, 0xe4, 0x22, 0x00, 0x00, 0x48, 0x45, 0x00, 0x00
008a668c  18 2f 00 00 00 f3 06 00 c4 f2 06 00              .byte 0x18, 0x2f, 0x00, 0x00, 0x00, 0xf3, 0x06, 0x00, 0xc4, 0xf2, 0x06, 0x00

; FUNCTION 0x008a6698, declared_size=492, range_size=492, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl18insert_time_facetsERPKcPcP17_Locale_name_hint
; demangled: std::_Locale_impl::insert_time_facets(char const*&, char*, _Locale_name_hint*)
; decoder-mode: thumb
008a6698  f0 b5                                            push {r4, r5, r6, r7, lr}
008a669a  5f 46                                            mov r7, fp
008a669c  56 46                                            mov r6, sl
008a669e  4d 46                                            mov r5, sb
008a66a0  44 46                                            mov r4, r8
008a66a2  f0 b4                                            push {r4, r5, r6, r7}
008a66a4  05 1c                                            adds r5, r0, #0
008a66a6  08 68                                            ldr r0, [r1]
008a66a8  6a 4c                                            ldr r4, [pc, #0x1a8]
008a66aa  9b 46                                            mov fp, r3
008a66ac  03 78                                            ldrb r3, [r0]
008a66ae  7c 44                                            add r4, pc
008a66b0  85 b0                                            sub sp, #0x14
008a66b2  0e 1c                                            adds r6, r1, #0
008a66b4  17 1c                                            adds r7, r2, #0
008a66b6  00 2b                                            cmp r3, #0
008a66b8  00 d1                                            bne #0x8a66bc
008a66ba  b1 e0                                            b #0x8a6820
008a66bc  00 28                                            cmp r0, #0
008a66be  02 d0                                            beq #0x8a66c6
008a66c0  03 78                                            ldrb r3, [r0]
008a66c2  00 2b                                            cmp r3, #0
008a66c4  22 d1                                            bne #0x8a670c
008a66c6  fc f7 6f ff                                      bl #0x8a35a8
008a66ca  63 4b                                            ldr r3, [pc, #0x18c]
008a66cc  06 68                                            ldr r6, [r0]
008a66ce  28 1c                                            adds r0, r5, #0
008a66d0  e2 58                                            ldr r2, [r4, r3]
008a66d2  31 1c                                            adds r1, r6, #0
008a66d4  ff f7 6e fd                                      bl #0x8a61b4
008a66d8  60 4b                                            ldr r3, [pc, #0x180]
008a66da  28 1c                                            adds r0, r5, #0
008a66dc  31 1c                                            adds r1, r6, #0
008a66de  e2 58                                            ldr r2, [r4, r3]
008a66e0  ff f7 68 fd                                      bl #0x8a61b4
008a66e4  5e 4b                                            ldr r3, [pc, #0x178]
008a66e6  28 1c                                            adds r0, r5, #0
008a66e8  31 1c                                            adds r1, r6, #0
008a66ea  e2 58                                            ldr r2, [r4, r3]
008a66ec  ff f7 62 fd                                      bl #0x8a61b4
008a66f0  5c 4b                                            ldr r3, [pc, #0x170]
008a66f2  28 1c                                            adds r0, r5, #0
008a66f4  31 1c                                            adds r1, r6, #0
008a66f6  e2 58                                            ldr r2, [r4, r3]
008a66f8  ff f7 5c fd                                      bl #0x8a61b4
008a66fc  05 b0                                            add sp, #0x14
008a66fe  58 46                                            mov r0, fp
008a6700  3c bc                                            pop {r2, r3, r4, r5}
008a6702  90 46                                            mov r8, r2
008a6704  99 46                                            mov sb, r3
008a6706  a2 46                                            mov sl, r4
008a6708  ab 46                                            mov fp, r5
008a670a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a670c  43 2b                                            cmp r3, #0x43
008a670e  00 d1                                            bne #0x8a6712
008a6710  96 e0                                            b #0x8a6840
008a6712  30 1c                                            adds r0, r6, #0
008a6714  39 1c                                            adds r1, r7, #0
008a6716  5a 46                                            mov r2, fp
008a6718  03 ab                                            add r3, sp, #0xc
008a671a  0d f0 49 fd                                      bl #0x8b41b0
008a671e  82 46                                            mov sl, r0
008a6720  00 28                                            cmp r0, #0
008a6722  00 d1                                            bne #0x8a6726
008a6724  81 e0                                            b #0x8a682a
008a6726  5a 46                                            mov r2, fp
008a6728  00 2a                                            cmp r2, #0
008a672a  00 d1                                            bne #0x8a672e
008a672c  8d e0                                            b #0x8a684a
008a672e  89 20                                            movs r0, #0x89
008a6730  c0 00                                            lsls r0, r0, #3
008a6732  68 f6 ac e0                                      blx #0x30e88c
008a6736  00 23                                            movs r3, #0
008a6738  06 1c                                            adds r6, r0, #0
008a673a  43 60                                            str r3, [r0, #4]
008a673c  00 21                                            movs r1, #0
008a673e  08 30                                            adds r0, #8
008a6740  67 f6 36 e4                                      blx #0x30dfb0
008a6744  48 4b                                            ldr r3, [pc, #0x120]
008a6746  30 1c                                            adds r0, r6, #0
008a6748  51 46                                            mov r1, sl
008a674a  e3 58                                            ldr r3, [r4, r3]
008a674c  0c 30                                            adds r0, #0xc
008a674e  08 33                                            adds r3, #8
008a6750  01 93                                            str r3, [sp, #4]
008a6752  33 60                                            str r3, [r6]
008a6754  16 f0 68 f9                                      bl #0x8bca28
008a6758  44 4b                                            ldr r3, [pc, #0x110]
008a675a  89 20                                            movs r0, #0x89
008a675c  c0 00                                            lsls r0, r0, #3
008a675e  e3 58                                            ldr r3, [r4, r3]
008a6760  08 33                                            adds r3, #8
008a6762  33 60                                            str r3, [r6]
008a6764  68 f6 92 e0                                      blx #0x30e88c
008a6768  00 22                                            movs r2, #0
008a676a  07 1c                                            adds r7, r0, #0
008a676c  42 60                                            str r2, [r0, #4]
008a676e  00 21                                            movs r1, #0
008a6770  08 30                                            adds r0, #8
008a6772  67 f6 1e e4                                      blx #0x30dfb0
008a6776  01 9b                                            ldr r3, [sp, #4]
008a6778  38 1c                                            adds r0, r7, #0
008a677a  51 46                                            mov r1, sl
008a677c  3b 60                                            str r3, [r7]
008a677e  0c 30                                            adds r0, #0xc
008a6780  16 f0 52 f9                                      bl #0x8bca28
008a6784  3a 4b                                            ldr r3, [pc, #0xe8]
008a6786  3b 48                                            ldr r0, [pc, #0xec]
008a6788  e3 58                                            ldr r3, [r4, r3]
008a678a  08 33                                            adds r3, #8
008a678c  3b 60                                            str r3, [r7]
008a678e  68 f6 7e e0                                      blx #0x30e88c
008a6792  00 22                                            movs r2, #0
008a6794  80 46                                            mov r8, r0
008a6796  42 60                                            str r2, [r0, #4]
008a6798  00 21                                            movs r1, #0
008a679a  08 30                                            adds r0, #8
008a679c  67 f6 08 e4                                      blx #0x30dfb0
008a67a0  01 9b                                            ldr r3, [sp, #4]
008a67a2  42 46                                            mov r2, r8
008a67a4  40 46                                            mov r0, r8
008a67a6  51 46                                            mov r1, sl
008a67a8  13 60                                            str r3, [r2]
008a67aa  0c 30                                            adds r0, #0xc
008a67ac  16 f0 1c f8                                      bl #0x8bc7e8
008a67b0  31 4b                                            ldr r3, [pc, #0xc4]
008a67b2  42 46                                            mov r2, r8
008a67b4  2f 48                                            ldr r0, [pc, #0xbc]
008a67b6  e3 58                                            ldr r3, [r4, r3]
008a67b8  08 33                                            adds r3, #8
008a67ba  13 60                                            str r3, [r2]
008a67bc  68 f6 66 e0                                      blx #0x30e88c
008a67c0  00 23                                            movs r3, #0
008a67c2  81 46                                            mov sb, r0
008a67c4  43 60                                            str r3, [r0, #4]
008a67c6  00 21                                            movs r1, #0
008a67c8  08 30                                            adds r0, #8
008a67ca  67 f6 f2 e3                                      blx #0x30dfb0
008a67ce  01 9a                                            ldr r2, [sp, #4]
008a67d0  4b 46                                            mov r3, sb
008a67d2  48 46                                            mov r0, sb
008a67d4  51 46                                            mov r1, sl
008a67d6  1a 60                                            str r2, [r3]
008a67d8  0c 30                                            adds r0, #0xc
008a67da  16 f0 05 f8                                      bl #0x8bc7e8
008a67de  27 4b                                            ldr r3, [pc, #0x9c]
008a67e0  4a 46                                            mov r2, sb
008a67e2  50 46                                            mov r0, sl
008a67e4  e3 58                                            ldr r3, [r4, r3]
008a67e6  08 33                                            adds r3, #8
008a67e8  13 60                                            str r3, [r2]
008a67ea  0d f0 99 fa                                      bl #0x8b3d20
008a67ee  1a 4b                                            ldr r3, [pc, #0x68]
008a67f0  31 1c                                            adds r1, r6, #0
008a67f2  28 1c                                            adds r0, r5, #0
008a67f4  e2 58                                            ldr r2, [r4, r3]
008a67f6  ff f7 ad fc                                      bl #0x8a6154
008a67fa  18 4b                                            ldr r3, [pc, #0x60]
008a67fc  39 1c                                            adds r1, r7, #0
008a67fe  28 1c                                            adds r0, r5, #0
008a6800  e2 58                                            ldr r2, [r4, r3]
008a6802  ff f7 a7 fc                                      bl #0x8a6154
008a6806  16 4b                                            ldr r3, [pc, #0x58]
008a6808  41 46                                            mov r1, r8
008a680a  28 1c                                            adds r0, r5, #0
008a680c  e2 58                                            ldr r2, [r4, r3]
008a680e  ff f7 a1 fc                                      bl #0x8a6154
008a6812  14 4b                                            ldr r3, [pc, #0x50]
008a6814  28 1c                                            adds r0, r5, #0
008a6816  49 46                                            mov r1, sb
008a6818  e2 58                                            ldr r2, [r4, r3]
008a681a  ff f7 9b fc                                      bl #0x8a6154
008a681e  6d e7                                            b #0x8a66fc
008a6820  10 1c                                            adds r0, r2, #0
008a6822  10 f0 23 f8                                      bl #0x8b686c
008a6826  30 60                                            str r0, [r6]
008a6828  48 e7                                            b #0x8a66bc
008a682a  03 9b                                            ldr r3, [sp, #0xc]
008a682c  04 2b                                            cmp r3, #4
008a682e  00 d0                                            beq #0x8a6832
008a6830  64 e7                                            b #0x8a66fc
008a6832  13 48                                            ldr r0, [pc, #0x4c]
008a6834  78 44                                            add r0, pc
008a6836  67 f6 46 e4                                      blx #0x30e0c4
008a683a  01 20                                            movs r0, #1
008a683c  67 f6 04 e3                                      blx #0x30de48
008a6840  43 78                                            ldrb r3, [r0, #1]
008a6842  00 2b                                            cmp r3, #0
008a6844  00 d0                                            beq #0x8a6848
008a6846  64 e7                                            b #0x8a6712
008a6848  3d e7                                            b #0x8a66c6
008a684a  50 46                                            mov r0, sl
008a684c  10 f0 ce f8                                      bl #0x8b69ec
008a6850  83 46                                            mov fp, r0
008a6852  6c e7                                            b #0x8a672e
; mapping-symbol data/literal pool
008a6854  e6 e3 0e 00 40 3d 00 00 58 11 00 00 74 2b 00 00  .byte 0xe6, 0xe3, 0x0e, 0x00, 0x40, 0x3d, 0x00, 0x00, 0x58, 0x11, 0x00, 0x00, 0x74, 0x2b, 0x00, 0x00
008a6864  54 2b 00 00 4c 2b 00 00 30 1f 00 00 8c 40 00 00  .byte 0x54, 0x2b, 0x00, 0x00, 0x4c, 0x2b, 0x00, 0x00, 0x30, 0x1f, 0x00, 0x00, 0x8c, 0x40, 0x00, 0x00
008a6874  c8 0b 00 00 78 1e 00 00 c4 38 00 00 00 f1 06 00  .byte 0xc8, 0x0b, 0x00, 0x00, 0x78, 0x1e, 0x00, 0x00, 0xc4, 0x38, 0x00, 0x00, 0x00, 0xf1, 0x06, 0x00

; FUNCTION 0x008a6884, declared_size=392, range_size=392, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl21insert_numeric_facetsERPKcPcP17_Locale_name_hint
; demangled: std::_Locale_impl::insert_numeric_facets(char const*&, char*, _Locale_name_hint*)
; decoder-mode: thumb
008a6884  f0 b5                                            push {r4, r5, r6, r7, lr}
008a6886  5f 46                                            mov r7, fp
008a6888  56 46                                            mov r6, sl
008a688a  4d 46                                            mov r5, sb
008a688c  44 46                                            mov r4, r8
008a688e  f0 b4                                            push {r4, r5, r6, r7}
008a6890  98 46                                            mov r8, r3
008a6892  0b 68                                            ldr r3, [r1]
008a6894  52 4c                                            ldr r4, [pc, #0x148]
008a6896  85 b0                                            sub sp, #0x14
008a6898  1b 78                                            ldrb r3, [r3]
008a689a  7c 44                                            add r4, pc
008a689c  05 1c                                            adds r5, r0, #0
008a689e  0e 1c                                            adds r6, r1, #0
008a68a0  91 46                                            mov sb, r2
008a68a2  00 2b                                            cmp r3, #0
008a68a4  00 d1                                            bne #0x8a68a8
008a68a6  7e e0                                            b #0x8a69a6
008a68a8  fc f7 7e fe                                      bl #0x8a35a8
008a68ac  4d 4b                                            ldr r3, [pc, #0x134]
008a68ae  07 68                                            ldr r7, [r0]
008a68b0  28 1c                                            adds r0, r5, #0
008a68b2  e2 58                                            ldr r2, [r4, r3]
008a68b4  39 1c                                            adds r1, r7, #0
008a68b6  ff f7 7d fc                                      bl #0x8a61b4
008a68ba  4b 4b                                            ldr r3, [pc, #0x12c]
008a68bc  28 1c                                            adds r0, r5, #0
008a68be  39 1c                                            adds r1, r7, #0
008a68c0  e2 58                                            ldr r2, [r4, r3]
008a68c2  ff f7 77 fc                                      bl #0x8a61b4
008a68c6  49 4b                                            ldr r3, [pc, #0x124]
008a68c8  28 1c                                            adds r0, r5, #0
008a68ca  39 1c                                            adds r1, r7, #0
008a68cc  e2 58                                            ldr r2, [r4, r3]
008a68ce  ff f7 71 fc                                      bl #0x8a61b4
008a68d2  47 4b                                            ldr r3, [pc, #0x11c]
008a68d4  28 1c                                            adds r0, r5, #0
008a68d6  39 1c                                            adds r1, r7, #0
008a68d8  e2 58                                            ldr r2, [r4, r3]
008a68da  ff f7 6b fc                                      bl #0x8a61b4
008a68de  33 68                                            ldr r3, [r6]
008a68e0  00 2b                                            cmp r3, #0
008a68e2  53 d0                                            beq #0x8a698c
008a68e4  1a 78                                            ldrb r2, [r3]
008a68e6  00 2a                                            cmp r2, #0
008a68e8  50 d0                                            beq #0x8a698c
008a68ea  43 2a                                            cmp r2, #0x43
008a68ec  4b d0                                            beq #0x8a6986
008a68ee  6b 46                                            mov r3, sp
008a68f0  0c 33                                            adds r3, #0xc
008a68f2  30 1c                                            adds r0, r6, #0
008a68f4  49 46                                            mov r1, sb
008a68f6  42 46                                            mov r2, r8
008a68f8  01 93                                            str r3, [sp, #4]
008a68fa  0d f0 79 fc                                      bl #0x8b41f0
008a68fe  83 46                                            mov fp, r0
008a6900  00 28                                            cmp r0, #0
008a6902  65 d0                                            beq #0x8a69d0
008a6904  43 46                                            mov r3, r8
008a6906  00 2b                                            cmp r3, #0
008a6908  5d d0                                            beq #0x8a69c6
008a690a  10 20                                            movs r0, #0x10
008a690c  67 f6 be e7                                      blx #0x30e88c
008a6910  00 23                                            movs r3, #0
008a6912  07 1c                                            adds r7, r0, #0
008a6914  43 60                                            str r3, [r0, #4]
008a6916  00 21                                            movs r1, #0
008a6918  08 30                                            adds r0, #8
008a691a  9a 46                                            mov sl, r3
008a691c  67 f6 48 e3                                      blx #0x30dfb0
008a6920  34 4b                                            ldr r3, [pc, #0xd0]
008a6922  49 46                                            mov r1, sb
008a6924  30 1c                                            adds r0, r6, #0
008a6926  e3 58                                            ldr r3, [r4, r3]
008a6928  42 46                                            mov r2, r8
008a692a  08 33                                            adds r3, #8
008a692c  3b 60                                            str r3, [r7]
008a692e  5b 46                                            mov r3, fp
008a6930  fb 60                                            str r3, [r7, #0xc]
008a6932  01 9b                                            ldr r3, [sp, #4]
008a6934  0d f0 5c fc                                      bl #0x8b41f0
008a6938  81 46                                            mov sb, r0
008a693a  00 28                                            cmp r0, #0
008a693c  38 d0                                            beq #0x8a69b0
008a693e  10 20                                            movs r0, #0x10
008a6940  67 f6 a4 e7                                      blx #0x30e88c
008a6944  53 46                                            mov r3, sl
008a6946  06 1c                                            adds r6, r0, #0
008a6948  43 60                                            str r3, [r0, #4]
008a694a  00 21                                            movs r1, #0
008a694c  08 30                                            adds r0, #8
008a694e  67 f6 30 e3                                      blx #0x30dfb0
008a6952  29 4b                                            ldr r3, [pc, #0xa4]
008a6954  39 1c                                            adds r1, r7, #0
008a6956  28 1c                                            adds r0, r5, #0
008a6958  e3 58                                            ldr r3, [r4, r3]
008a695a  08 33                                            adds r3, #8
008a695c  33 60                                            str r3, [r6]
008a695e  4b 46                                            mov r3, sb
008a6960  f3 60                                            str r3, [r6, #0xc]
008a6962  26 4b                                            ldr r3, [pc, #0x98]
008a6964  e2 58                                            ldr r2, [r4, r3]
008a6966  ff f7 f5 fb                                      bl #0x8a6154
008a696a  25 4b                                            ldr r3, [pc, #0x94]
008a696c  28 1c                                            adds r0, r5, #0
008a696e  31 1c                                            adds r1, r6, #0
008a6970  e2 58                                            ldr r2, [r4, r3]
008a6972  ff f7 ef fb                                      bl #0x8a6154
008a6976  05 b0                                            add sp, #0x14
008a6978  40 46                                            mov r0, r8
008a697a  3c bc                                            pop {r2, r3, r4, r5}
008a697c  90 46                                            mov r8, r2
008a697e  99 46                                            mov sb, r3
008a6980  a2 46                                            mov sl, r4
008a6982  ab 46                                            mov fp, r5
008a6984  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a6986  5b 78                                            ldrb r3, [r3, #1]
008a6988  00 2b                                            cmp r3, #0
008a698a  b0 d1                                            bne #0x8a68ee
008a698c  1b 4b                                            ldr r3, [pc, #0x6c]
008a698e  28 1c                                            adds r0, r5, #0
008a6990  39 1c                                            adds r1, r7, #0
008a6992  e2 58                                            ldr r2, [r4, r3]
008a6994  ff f7 0e fc                                      bl #0x8a61b4
008a6998  19 4b                                            ldr r3, [pc, #0x64]
008a699a  28 1c                                            adds r0, r5, #0
008a699c  39 1c                                            adds r1, r7, #0
008a699e  e2 58                                            ldr r2, [r4, r3]
008a69a0  ff f7 08 fc                                      bl #0x8a61b4
008a69a4  e7 e7                                            b #0x8a6976
008a69a6  10 1c                                            adds r0, r2, #0
008a69a8  0f f0 5a ff                                      bl #0x8b6860
008a69ac  30 60                                            str r0, [r6]
008a69ae  7b e7                                            b #0x8a68a8
008a69b0  3b 68                                            ldr r3, [r7]
008a69b2  38 1c                                            adds r0, r7, #0
008a69b4  5b 68                                            ldr r3, [r3, #4]
008a69b6  98 47                                            blx r3
008a69b8  12 4a                                            ldr r2, [pc, #0x48]
008a69ba  31 68                                            ldr r1, [r6]
008a69bc  03 98                                            ldr r0, [sp, #0xc]
008a69be  7a 44                                            add r2, pc
008a69c0  fd f7 06 ff                                      bl #0x8a47d0
008a69c4  d7 e7                                            b #0x8a6976
008a69c6  58 46                                            mov r0, fp
008a69c8  10 f0 0e f8                                      bl #0x8b69e8
008a69cc  80 46                                            mov r8, r0
008a69ce  9c e7                                            b #0x8a690a
008a69d0  0d 4a                                            ldr r2, [pc, #0x34]
008a69d2  31 68                                            ldr r1, [r6]
008a69d4  03 98                                            ldr r0, [sp, #0xc]
008a69d6  7a 44                                            add r2, pc
008a69d8  fd f7 fa fe                                      bl #0x8a47d0
008a69dc  cb e7                                            b #0x8a6976
008a69de  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a69e0  fa e1 0e 00 f8 0c 00 00 70 36 00 00 68 17 00 00  .byte 0xfa, 0xe1, 0x0e, 0x00, 0xf8, 0x0c, 0x00, 0x00, 0x70, 0x36, 0x00, 0x00, 0x68, 0x17, 0x00, 0x00
008a69f0  d8 34 00 00 b0 4a 00 00 cc 0a 00 00 e0 1f 00 00  .byte 0xd8, 0x34, 0x00, 0x00, 0xb0, 0x4a, 0x00, 0x00, 0xcc, 0x0a, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00
008a6a00  58 19 00 00 56 f2 06 00 3e f2 06 00              .byte 0x58, 0x19, 0x00, 0x00, 0x56, 0xf2, 0x06, 0x00, 0x3e, 0xf2, 0x06, 0x00

; FUNCTION 0x008a6a0c, declared_size=504, range_size=504, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl19insert_ctype_facetsERPKcPcP17_Locale_name_hint
; demangled: std::_Locale_impl::insert_ctype_facets(char const*&, char*, _Locale_name_hint*)
; decoder-mode: thumb
008a6a0c  f0 b5                                            push {r4, r5, r6, r7, lr}
008a6a0e  5f 46                                            mov r7, fp
008a6a10  56 46                                            mov r6, sl
008a6a12  4d 46                                            mov r5, sb
008a6a14  44 46                                            mov r4, r8
008a6a16  f0 b4                                            push {r4, r5, r6, r7}
008a6a18  05 1c                                            adds r5, r0, #0
008a6a1a  08 68                                            ldr r0, [r1]
008a6a1c  6e 4c                                            ldr r4, [pc, #0x1b8]
008a6a1e  98 46                                            mov r8, r3
008a6a20  03 78                                            ldrb r3, [r0]
008a6a22  7c 44                                            add r4, pc
008a6a24  85 b0                                            sub sp, #0x14
008a6a26  0e 1c                                            adds r6, r1, #0
008a6a28  92 46                                            mov sl, r2
008a6a2a  00 2b                                            cmp r3, #0
008a6a2c  00 d1                                            bne #0x8a6a30
008a6a2e  a7 e0                                            b #0x8a6b80
008a6a30  00 28                                            cmp r0, #0
008a6a32  00 d1                                            bne #0x8a6a36
008a6a34  88 e0                                            b #0x8a6b48
008a6a36  03 78                                            ldrb r3, [r0]
008a6a38  00 2b                                            cmp r3, #0
008a6a3a  00 d1                                            bne #0x8a6a3e
008a6a3c  84 e0                                            b #0x8a6b48
008a6a3e  43 2b                                            cmp r3, #0x43
008a6a40  00 d1                                            bne #0x8a6a44
008a6a42  7d e0                                            b #0x8a6b40
008a6a44  6b 46                                            mov r3, sp
008a6a46  0c 33                                            adds r3, #0xc
008a6a48  30 1c                                            adds r0, r6, #0
008a6a4a  51 46                                            mov r1, sl
008a6a4c  42 46                                            mov r2, r8
008a6a4e  01 93                                            str r3, [sp, #4]
008a6a50  0d f0 0e fc                                      bl #0x8b4270
008a6a54  07 1e                                            subs r7, r0, #0
008a6a56  00 d1                                            bne #0x8a6a5a
008a6a58  b6 e0                                            b #0x8a6bc8
008a6a5a  42 46                                            mov r2, r8
008a6a5c  00 2a                                            cmp r2, #0
008a6a5e  00 d1                                            bne #0x8a6a62
008a6a60  ad e0                                            b #0x8a6bbe
008a6a62  83 20                                            movs r0, #0x83
008a6a64  c0 00                                            lsls r0, r0, #3
008a6a66  67 f6 12 e7                                      blx #0x30e88c
008a6a6a  00 21                                            movs r1, #0
008a6a6c  00 22                                            movs r2, #0
008a6a6e  00 23                                            movs r3, #0
008a6a70  81 46                                            mov sb, r0
008a6a72  fc f7 01 fd                                      bl #0x8a3478
008a6a76  59 4b                                            ldr r3, [pc, #0x164]
008a6a78  4a 46                                            mov r2, sb
008a6a7a  48 46                                            mov r0, sb
008a6a7c  e3 58                                            ldr r3, [r4, r3]
008a6a7e  08 33                                            adds r3, #8
008a6a80  13 60                                            str r3, [r2]
008a6a82  57 4b                                            ldr r3, [pc, #0x15c]
008a6a84  d7 50                                            str r7, [r2, r3]
008a6a86  0e f0 05 ff                                      bl #0x8b5894
008a6a8a  0c 20                                            movs r0, #0xc
008a6a8c  67 f6 fe e6                                      blx #0x30e88c
008a6a90  00 90                                            str r0, [sp]
008a6a92  31 68                                            ldr r1, [r6]
008a6a94  00 22                                            movs r2, #0
008a6a96  0f f0 cd f8                                      bl #0x8b5c34
008a6a9a  30 1c                                            adds r0, r6, #0
008a6a9c  51 46                                            mov r1, sl
008a6a9e  42 46                                            mov r2, r8
008a6aa0  01 9b                                            ldr r3, [sp, #4]
008a6aa2  0d f0 e5 fb                                      bl #0x8b4270
008a6aa6  83 46                                            mov fp, r0
008a6aa8  00 28                                            cmp r0, #0
008a6aaa  00 d1                                            bne #0x8a6aae
008a6aac  80 e0                                            b #0x8a6bb0
008a6aae  10 20                                            movs r0, #0x10
008a6ab0  67 f6 ec e6                                      blx #0x30e88c
008a6ab4  00 23                                            movs r3, #0
008a6ab6  07 1c                                            adds r7, r0, #0
008a6ab8  43 60                                            str r3, [r0, #4]
008a6aba  00 21                                            movs r1, #0
008a6abc  08 30                                            adds r0, #8
008a6abe  67 f6 78 e2                                      blx #0x30dfb0
008a6ac2  48 4b                                            ldr r3, [pc, #0x120]
008a6ac4  5a 46                                            mov r2, fp
008a6ac6  fa 60                                            str r2, [r7, #0xc]
008a6ac8  e3 58                                            ldr r3, [r4, r3]
008a6aca  51 46                                            mov r1, sl
008a6acc  30 1c                                            adds r0, r6, #0
008a6ace  08 33                                            adds r3, #8
008a6ad0  3b 60                                            str r3, [r7]
008a6ad2  42 46                                            mov r2, r8
008a6ad4  01 9b                                            ldr r3, [sp, #4]
008a6ad6  0d f0 ab fb                                      bl #0x8b4230
008a6ada  82 46                                            mov sl, r0
008a6adc  00 28                                            cmp r0, #0
008a6ade  54 d0                                            beq #0x8a6b8a
008a6ae0  10 20                                            movs r0, #0x10
008a6ae2  67 f6 d4 e6                                      blx #0x30e88c
008a6ae6  00 23                                            movs r3, #0
008a6ae8  06 1c                                            adds r6, r0, #0
008a6aea  43 60                                            str r3, [r0, #4]
008a6aec  00 21                                            movs r1, #0
008a6aee  08 30                                            adds r0, #8
008a6af0  67 f6 5e e2                                      blx #0x30dfb0
008a6af4  3c 4b                                            ldr r3, [pc, #0xf0]
008a6af6  52 46                                            mov r2, sl
008a6af8  f2 60                                            str r2, [r6, #0xc]
008a6afa  e3 58                                            ldr r3, [r4, r3]
008a6afc  49 46                                            mov r1, sb
008a6afe  28 1c                                            adds r0, r5, #0
008a6b00  08 33                                            adds r3, #8
008a6b02  33 60                                            str r3, [r6]
008a6b04  39 4b                                            ldr r3, [pc, #0xe4]
008a6b06  e2 58                                            ldr r2, [r4, r3]
008a6b08  ff f7 24 fb                                      bl #0x8a6154
008a6b0c  38 4b                                            ldr r3, [pc, #0xe0]
008a6b0e  00 99                                            ldr r1, [sp]
008a6b10  28 1c                                            adds r0, r5, #0
008a6b12  e2 58                                            ldr r2, [r4, r3]
008a6b14  ff f7 1e fb                                      bl #0x8a6154
008a6b18  36 4b                                            ldr r3, [pc, #0xd8]
008a6b1a  39 1c                                            adds r1, r7, #0
008a6b1c  28 1c                                            adds r0, r5, #0
008a6b1e  e2 58                                            ldr r2, [r4, r3]
008a6b20  ff f7 18 fb                                      bl #0x8a6154
008a6b24  34 4b                                            ldr r3, [pc, #0xd0]
008a6b26  28 1c                                            adds r0, r5, #0
008a6b28  31 1c                                            adds r1, r6, #0
008a6b2a  e2 58                                            ldr r2, [r4, r3]
008a6b2c  ff f7 12 fb                                      bl #0x8a6154
008a6b30  05 b0                                            add sp, #0x14
008a6b32  40 46                                            mov r0, r8
008a6b34  3c bc                                            pop {r2, r3, r4, r5}
008a6b36  90 46                                            mov r8, r2
008a6b38  99 46                                            mov sb, r3
008a6b3a  a2 46                                            mov sl, r4
008a6b3c  ab 46                                            mov fp, r5
008a6b3e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a6b40  43 78                                            ldrb r3, [r0, #1]
008a6b42  00 2b                                            cmp r3, #0
008a6b44  00 d0                                            beq #0x8a6b48
008a6b46  7d e7                                            b #0x8a6a44
008a6b48  fc f7 2e fd                                      bl #0x8a35a8
008a6b4c  27 4b                                            ldr r3, [pc, #0x9c]
008a6b4e  06 68                                            ldr r6, [r0]
008a6b50  28 1c                                            adds r0, r5, #0
008a6b52  e2 58                                            ldr r2, [r4, r3]
008a6b54  31 1c                                            adds r1, r6, #0
008a6b56  ff f7 2d fb                                      bl #0x8a61b4
008a6b5a  25 4b                                            ldr r3, [pc, #0x94]
008a6b5c  28 1c                                            adds r0, r5, #0
008a6b5e  31 1c                                            adds r1, r6, #0
008a6b60  e2 58                                            ldr r2, [r4, r3]
008a6b62  ff f7 27 fb                                      bl #0x8a61b4
008a6b66  23 4b                                            ldr r3, [pc, #0x8c]
008a6b68  28 1c                                            adds r0, r5, #0
008a6b6a  31 1c                                            adds r1, r6, #0
008a6b6c  e2 58                                            ldr r2, [r4, r3]
008a6b6e  ff f7 21 fb                                      bl #0x8a61b4
008a6b72  21 4b                                            ldr r3, [pc, #0x84]
008a6b74  28 1c                                            adds r0, r5, #0
008a6b76  31 1c                                            adds r1, r6, #0
008a6b78  e2 58                                            ldr r2, [r4, r3]
008a6b7a  ff f7 1b fb                                      bl #0x8a61b4
008a6b7e  d7 e7                                            b #0x8a6b30
008a6b80  10 1c                                            adds r0, r2, #0
008a6b82  0f f0 67 fe                                      bl #0x8b6854
008a6b86  30 60                                            str r0, [r6]
008a6b88  52 e7                                            b #0x8a6a30
008a6b8a  18 4b                                            ldr r3, [pc, #0x60]
008a6b8c  49 46                                            mov r1, sb
008a6b8e  28 1c                                            adds r0, r5, #0
008a6b90  e2 58                                            ldr r2, [r4, r3]
008a6b92  ff f7 df fa                                      bl #0x8a6154
008a6b96  16 4b                                            ldr r3, [pc, #0x58]
008a6b98  00 99                                            ldr r1, [sp]
008a6b9a  28 1c                                            adds r0, r5, #0
008a6b9c  e2 58                                            ldr r2, [r4, r3]
008a6b9e  ff f7 d9 fa                                      bl #0x8a6154
008a6ba2  14 4b                                            ldr r3, [pc, #0x50]
008a6ba4  28 1c                                            adds r0, r5, #0
008a6ba6  39 1c                                            adds r1, r7, #0
008a6ba8  e2 58                                            ldr r2, [r4, r3]
008a6baa  ff f7 d3 fa                                      bl #0x8a6154
008a6bae  bf e7                                            b #0x8a6b30
008a6bb0  12 4a                                            ldr r2, [pc, #0x48]
008a6bb2  31 68                                            ldr r1, [r6]
008a6bb4  03 98                                            ldr r0, [sp, #0xc]
008a6bb6  7a 44                                            add r2, pc
008a6bb8  fd f7 0a fe                                      bl #0x8a47d0
008a6bbc  b8 e7                                            b #0x8a6b30
008a6bbe  38 1c                                            adds r0, r7, #0
008a6bc0  0f f0 10 ff                                      bl #0x8b69e4
008a6bc4  80 46                                            mov r8, r0
008a6bc6  4c e7                                            b #0x8a6a62
008a6bc8  0d 4a                                            ldr r2, [pc, #0x34]
008a6bca  31 68                                            ldr r1, [r6]
008a6bcc  03 98                                            ldr r0, [sp, #0xc]
008a6bce  7a 44                                            add r2, pc
008a6bd0  fd f7 fe fd                                      bl #0x8a47d0
008a6bd4  ac e7                                            b #0x8a6b30
008a6bd6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a6bd8  72 e0 0e 00 58 48 00 00 14 04 00 00 54 0b 00 00  .byte 0x72, 0xe0, 0x0e, 0x00, 0x58, 0x48, 0x00, 0x00, 0x14, 0x04, 0x00, 0x00, 0x54, 0x0b, 0x00, 0x00
008a6be8  1c 0b 00 00 e4 1c 00 00 98 41 00 00 44 1e 00 00  .byte 0x1c, 0x0b, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00, 0x98, 0x41, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00
008a6bf8  2c 15 00 00 6a f0 06 00 52 f0 06 00              .byte 0x2c, 0x15, 0x00, 0x00, 0x6a, 0xf0, 0x06, 0x00, 0x52, 0xf0, 0x06, 0x00

; FUNCTION 0x008a7628, declared_size=84, range_size=84, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_implC1EPKc
; demangled: std::_Locale_impl::_Locale_impl(char const*)
; decoder-mode: thumb
008a7628  f0 b5                                            push {r4, r5, r6, r7, lr}
008a762a  00 26                                            movs r6, #0
008a762c  04 1c                                            adds r4, r0, #0
008a762e  83 b0                                            sub sp, #0xc
008a7630  0f 1c                                            adds r7, r1, #0
008a7632  40 c0                                            stm r0!, {r6}
008a7634  00 21                                            movs r1, #0
008a7636  66 f6 bc e4                                      blx #0x30dfb0
008a763a  20 1c                                            adds r0, r4, #0
008a763c  01 aa                                            add r2, sp, #4
008a763e  39 1c                                            adds r1, r7, #0
008a7640  0b 4d                                            ldr r5, [pc, #0x2c]
008a7642  08 30                                            adds r0, #8
008a7644  6c f6 52 e5                                      blx #0x3140ec
008a7648  0a 4b                                            ldr r3, [pc, #0x28]
008a764a  7d 44                                            add r5, pc
008a764c  26 62                                            str r6, [r4, #0x20]
008a764e  eb 58                                            ldr r3, [r5, r3]
008a7650  66 62                                            str r6, [r4, #0x24]
008a7652  a6 62                                            str r6, [r4, #0x28]
008a7654  20 1c                                            adds r0, r4, #0
008a7656  19 68                                            ldr r1, [r3]
008a7658  20 30                                            adds r0, #0x20
008a765a  fe f7 f7 fb                                      bl #0x8a5e4c
008a765e  06 48                                            ldr r0, [pc, #0x18]
008a7660  78 44                                            add r0, pc
008a7662  10 30                                            adds r0, #0x10
008a7664  00 f0 66 fa                                      bl #0x8a7b34
008a7668  03 b0                                            add sp, #0xc
008a766a  20 1c                                            adds r0, r4, #0
008a766c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a766e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a7670  4a d4 0e 00 34 32 00 00 2c d8 18 00              .byte 0x4a, 0xd4, 0x0e, 0x00, 0x34, 0x32, 0x00, 0x00, 0x2c, 0xd8, 0x18, 0x00

; FUNCTION 0x008a767c, declared_size=1048, range_size=1048, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl19make_classic_localeEv
; demangled: std::_Locale_impl::make_classic_locale()
; decoder-mode: thumb
008a767c  f0 b5                                            push {r4, r5, r6, r7, lr}
008a767e  57 46                                            mov r7, sl
008a7680  4e 46                                            mov r6, sb
008a7682  45 46                                            mov r5, r8
008a7684  e0 b4                                            push {r5, r6, r7}
008a7686  d8 4a                                            ldr r2, [pc, #0x360]
008a7688  28 23                                            movs r3, #0x28
008a768a  d8 49                                            ldr r1, [pc, #0x360]
008a768c  90 46                                            mov r8, r2
008a768e  9a 46                                            mov sl, r3
008a7690  f8 44                                            add r8, pc
008a7692  9e b0                                            sub sp, #0x78
008a7694  c2 44                                            add sl, r8
008a7696  01 ac                                            add r4, sp, #4
008a7698  79 44                                            add r1, pc
008a769a  50 46                                            mov r0, sl
008a769c  ff f7 c4 ff                                      bl #0x8a7628
008a76a0  70 22                                            movs r2, #0x70
008a76a2  00 21                                            movs r1, #0
008a76a4  20 1c                                            adds r0, r4, #0
008a76a6  66 f6 dc e6                                      blx #0x30e460
008a76aa  0c 20                                            movs r0, #0xc
008a76ac  67 f6 ee e0                                      blx #0x30e88c
008a76b0  01 26                                            movs r6, #1
008a76b2  07 1c                                            adds r7, r0, #0
008a76b4  00 21                                            movs r1, #0
008a76b6  46 60                                            str r6, [r0, #4]
008a76b8  cd 4d                                            ldr r5, [pc, #0x334]
008a76ba  08 30                                            adds r0, #8
008a76bc  66 f6 78 e4                                      blx #0x30dfb0
008a76c0  cc 4b                                            ldr r3, [pc, #0x330]
008a76c2  7d 44                                            add r5, pc
008a76c4  14 20                                            movs r0, #0x14
008a76c6  eb 58                                            ldr r3, [r5, r3]
008a76c8  08 33                                            adds r3, #8
008a76ca  3b 60                                            str r3, [r7]
008a76cc  67 60                                            str r7, [r4, #4]
008a76ce  67 f6 de e0                                      blx #0x30e88c
008a76d2  00 22                                            movs r2, #0
008a76d4  01 23                                            movs r3, #1
008a76d6  07 1c                                            adds r7, r0, #0
008a76d8  00 21                                            movs r1, #0
008a76da  fb f7 a9 fe                                      bl #0x8a3430
008a76de  a7 60                                            str r7, [r4, #8]
008a76e0  0c 20                                            movs r0, #0xc
008a76e2  67 f6 d4 e0                                      blx #0x30e88c
008a76e6  00 21                                            movs r1, #0
008a76e8  07 1c                                            adds r7, r0, #0
008a76ea  46 60                                            str r6, [r0, #4]
008a76ec  08 30                                            adds r0, #8
008a76ee  66 f6 60 e4                                      blx #0x30dfb0
008a76f2  c1 4b                                            ldr r3, [pc, #0x304]
008a76f4  14 20                                            movs r0, #0x14
008a76f6  eb 58                                            ldr r3, [r5, r3]
008a76f8  08 33                                            adds r3, #8
008a76fa  3b 60                                            str r3, [r7]
008a76fc  e7 60                                            str r7, [r4, #0xc]
008a76fe  67 f6 c6 e0                                      blx #0x30e88c
008a7702  01 21                                            movs r1, #1
008a7704  07 1c                                            adds r7, r0, #0
008a7706  11 f0 ed fe                                      bl #0x8b94e4
008a770a  27 61                                            str r7, [r4, #0x10]
008a770c  14 20                                            movs r0, #0x14
008a770e  67 f6 be e0                                      blx #0x30e88c
008a7712  01 21                                            movs r1, #1
008a7714  07 1c                                            adds r7, r0, #0
008a7716  11 f0 fb ff                                      bl #0x8b9710
008a771a  67 61                                            str r7, [r4, #0x14]
008a771c  0c 20                                            movs r0, #0xc
008a771e  67 f6 b6 e0                                      blx #0x30e88c
008a7722  00 21                                            movs r1, #0
008a7724  07 1c                                            adds r7, r0, #0
008a7726  46 60                                            str r6, [r0, #4]
008a7728  08 30                                            adds r0, #8
008a772a  66 f6 42 e4                                      blx #0x30dfb0
008a772e  b3 4b                                            ldr r3, [pc, #0x2cc]
008a7730  0c 20                                            movs r0, #0xc
008a7732  eb 58                                            ldr r3, [r5, r3]
008a7734  08 33                                            adds r3, #8
008a7736  3b 60                                            str r3, [r7]
008a7738  a7 61                                            str r7, [r4, #0x18]
008a773a  67 f6 a8 e0                                      blx #0x30e88c
008a773e  01 21                                            movs r1, #1
008a7740  07 1c                                            adds r7, r0, #0
008a7742  15 f0 af fa                                      bl #0x8bcca4
008a7746  e7 61                                            str r7, [r4, #0x1c]
008a7748  0c 20                                            movs r0, #0xc
008a774a  67 f6 a0 e0                                      blx #0x30e88c
008a774e  00 21                                            movs r1, #0
008a7750  07 1c                                            adds r7, r0, #0
008a7752  46 60                                            str r6, [r0, #4]
008a7754  08 30                                            adds r0, #8
008a7756  66 f6 2c e4                                      blx #0x30dfb0
008a775a  a9 4b                                            ldr r3, [pc, #0x2a4]
008a775c  0c 20                                            movs r0, #0xc
008a775e  eb 58                                            ldr r3, [r5, r3]
008a7760  08 33                                            adds r3, #8
008a7762  3b 60                                            str r3, [r7]
008a7764  27 62                                            str r7, [r4, #0x20]
008a7766  67 f6 92 e0                                      blx #0x30e88c
008a776a  00 21                                            movs r1, #0
008a776c  07 1c                                            adds r7, r0, #0
008a776e  46 60                                            str r6, [r0, #4]
008a7770  08 30                                            adds r0, #8
008a7772  66 f6 1e e4                                      blx #0x30dfb0
008a7776  a3 4b                                            ldr r3, [pc, #0x28c]
008a7778  0c 20                                            movs r0, #0xc
008a777a  eb 58                                            ldr r3, [r5, r3]
008a777c  08 33                                            adds r3, #8
008a777e  3b 60                                            str r3, [r7]
008a7780  67 62                                            str r7, [r4, #0x24]
008a7782  67 f6 84 e0                                      blx #0x30e88c
008a7786  00 21                                            movs r1, #0
008a7788  07 1c                                            adds r7, r0, #0
008a778a  46 60                                            str r6, [r0, #4]
008a778c  08 30                                            adds r0, #8
008a778e  66 f6 10 e4                                      blx #0x30dfb0
008a7792  9d 4b                                            ldr r3, [pc, #0x274]
008a7794  0c 20                                            movs r0, #0xc
008a7796  eb 58                                            ldr r3, [r5, r3]
008a7798  08 33                                            adds r3, #8
008a779a  3b 60                                            str r3, [r7]
008a779c  a7 62                                            str r7, [r4, #0x28]
008a779e  67 f6 76 e0                                      blx #0x30e88c
008a77a2  00 21                                            movs r1, #0
008a77a4  07 1c                                            adds r7, r0, #0
008a77a6  46 60                                            str r6, [r0, #4]
008a77a8  08 30                                            adds r0, #8
008a77aa  66 f6 02 e4                                      blx #0x30dfb0
008a77ae  97 4b                                            ldr r3, [pc, #0x25c]
008a77b0  89 20                                            movs r0, #0x89
008a77b2  c0 00                                            lsls r0, r0, #3
008a77b4  eb 58                                            ldr r3, [r5, r3]
008a77b6  08 33                                            adds r3, #8
008a77b8  3b 60                                            str r3, [r7]
008a77ba  e7 62                                            str r7, [r4, #0x2c]
008a77bc  67 f6 66 e0                                      blx #0x30e88c
008a77c0  00 21                                            movs r1, #0
008a77c2  07 1c                                            adds r7, r0, #0
008a77c4  46 60                                            str r6, [r0, #4]
008a77c6  08 30                                            adds r0, #8
008a77c8  66 f6 f2 e3                                      blx #0x30dfb0
008a77cc  90 4b                                            ldr r3, [pc, #0x240]
008a77ce  38 1c                                            adds r0, r7, #0
008a77d0  0c 30                                            adds r0, #0xc
008a77d2  eb 58                                            ldr r3, [r5, r3]
008a77d4  08 33                                            adds r3, #8
008a77d6  3b 60                                            str r3, [r7]
008a77d8  99 46                                            mov sb, r3
008a77da  14 f0 cf fe                                      bl #0x8bc57c
008a77de  8d 4b                                            ldr r3, [pc, #0x234]
008a77e0  89 20                                            movs r0, #0x89
008a77e2  c0 00                                            lsls r0, r0, #3
008a77e4  eb 58                                            ldr r3, [r5, r3]
008a77e6  08 33                                            adds r3, #8
008a77e8  3b 60                                            str r3, [r7]
008a77ea  27 63                                            str r7, [r4, #0x30]
008a77ec  67 f6 4e e0                                      blx #0x30e88c
008a77f0  00 21                                            movs r1, #0
008a77f2  07 1c                                            adds r7, r0, #0
008a77f4  46 60                                            str r6, [r0, #4]
008a77f6  08 30                                            adds r0, #8
008a77f8  66 f6 da e3                                      blx #0x30dfb0
008a77fc  4a 46                                            mov r2, sb
008a77fe  38 1c                                            adds r0, r7, #0
008a7800  3a 60                                            str r2, [r7]
008a7802  0c 30                                            adds r0, #0xc
008a7804  14 f0 ba fe                                      bl #0x8bc57c
008a7808  83 4b                                            ldr r3, [pc, #0x20c]
008a780a  0c 20                                            movs r0, #0xc
008a780c  eb 58                                            ldr r3, [r5, r3]
008a780e  08 33                                            adds r3, #8
008a7810  3b 60                                            str r3, [r7]
008a7812  67 63                                            str r7, [r4, #0x34]
008a7814  67 f6 3a e0                                      blx #0x30e88c
008a7818  00 21                                            movs r1, #0
008a781a  07 1c                                            adds r7, r0, #0
008a781c  46 60                                            str r6, [r0, #4]
008a781e  08 30                                            adds r0, #8
008a7820  66 f6 c6 e3                                      blx #0x30dfb0
008a7824  7d 4b                                            ldr r3, [pc, #0x1f4]
008a7826  0c 20                                            movs r0, #0xc
008a7828  eb 58                                            ldr r3, [r5, r3]
008a782a  08 33                                            adds r3, #8
008a782c  3b 60                                            str r3, [r7]
008a782e  a7 63                                            str r7, [r4, #0x38]
008a7830  67 f6 2c e0                                      blx #0x30e88c
008a7834  00 21                                            movs r1, #0
008a7836  07 1c                                            adds r7, r0, #0
008a7838  46 60                                            str r6, [r0, #4]
008a783a  08 30                                            adds r0, #8
008a783c  66 f6 b8 e3                                      blx #0x30dfb0
008a7840  77 4b                                            ldr r3, [pc, #0x1dc]
008a7842  0c 20                                            movs r0, #0xc
008a7844  eb 58                                            ldr r3, [r5, r3]
008a7846  08 33                                            adds r3, #8
008a7848  3b 60                                            str r3, [r7]
008a784a  e7 63                                            str r7, [r4, #0x3c]
008a784c  67 f6 1e e0                                      blx #0x30e88c
008a7850  00 21                                            movs r1, #0
008a7852  07 1c                                            adds r7, r0, #0
008a7854  46 60                                            str r6, [r0, #4]
008a7856  08 30                                            adds r0, #8
008a7858  66 f6 aa e3                                      blx #0x30dfb0
008a785c  71 4b                                            ldr r3, [pc, #0x1c4]
008a785e  14 20                                            movs r0, #0x14
008a7860  eb 58                                            ldr r3, [r5, r3]
008a7862  08 33                                            adds r3, #8
008a7864  3b 60                                            str r3, [r7]
008a7866  27 64                                            str r7, [r4, #0x40]
008a7868  67 f6 10 e0                                      blx #0x30e88c
008a786c  01 21                                            movs r1, #1
008a786e  07 1c                                            adds r7, r0, #0
008a7870  11 f0 0a ff                                      bl #0x8b9688
008a7874  67 64                                            str r7, [r4, #0x44]
008a7876  14 20                                            movs r0, #0x14
008a7878  67 f6 08 e0                                      blx #0x30e88c
008a787c  01 21                                            movs r1, #1
008a787e  07 1c                                            adds r7, r0, #0
008a7880  11 f0 be fe                                      bl #0x8b9600
008a7884  a7 64                                            str r7, [r4, #0x48]
008a7886  0c 20                                            movs r0, #0xc
008a7888  67 f6 00 e0                                      blx #0x30e88c
008a788c  00 21                                            movs r1, #0
008a788e  07 1c                                            adds r7, r0, #0
008a7890  46 60                                            str r6, [r0, #4]
008a7892  08 30                                            adds r0, #8
008a7894  66 f6 8c e3                                      blx #0x30dfb0
008a7898  63 4b                                            ldr r3, [pc, #0x18c]
008a789a  0c 20                                            movs r0, #0xc
008a789c  eb 58                                            ldr r3, [r5, r3]
008a789e  08 33                                            adds r3, #8
008a78a0  3b 60                                            str r3, [r7]
008a78a2  e7 64                                            str r7, [r4, #0x4c]
008a78a4  66 f6 f2 e7                                      blx #0x30e88c
008a78a8  01 21                                            movs r1, #1
008a78aa  07 1c                                            adds r7, r0, #0
008a78ac  15 f0 96 f9                                      bl #0x8bcbdc
008a78b0  27 65                                            str r7, [r4, #0x50]
008a78b2  0c 20                                            movs r0, #0xc
008a78b4  66 f6 ea e7                                      blx #0x30e88c
008a78b8  00 21                                            movs r1, #0
008a78ba  07 1c                                            adds r7, r0, #0
008a78bc  46 60                                            str r6, [r0, #4]
008a78be  08 30                                            adds r0, #8
008a78c0  66 f6 76 e3                                      blx #0x30dfb0
008a78c4  59 4b                                            ldr r3, [pc, #0x164]
008a78c6  0c 20                                            movs r0, #0xc
008a78c8  eb 58                                            ldr r3, [r5, r3]
008a78ca  08 33                                            adds r3, #8
008a78cc  3b 60                                            str r3, [r7]
008a78ce  67 65                                            str r7, [r4, #0x54]
008a78d0  66 f6 dc e7                                      blx #0x30e88c
008a78d4  00 21                                            movs r1, #0
008a78d6  07 1c                                            adds r7, r0, #0
008a78d8  46 60                                            str r6, [r0, #4]
008a78da  08 30                                            adds r0, #8
008a78dc  66 f6 68 e3                                      blx #0x30dfb0
008a78e0  53 4b                                            ldr r3, [pc, #0x14c]
008a78e2  0c 20                                            movs r0, #0xc
008a78e4  eb 58                                            ldr r3, [r5, r3]
008a78e6  08 33                                            adds r3, #8
008a78e8  3b 60                                            str r3, [r7]
008a78ea  a7 65                                            str r7, [r4, #0x58]
008a78ec  66 f6 ce e7                                      blx #0x30e88c
008a78f0  00 21                                            movs r1, #0
008a78f2  07 1c                                            adds r7, r0, #0
008a78f4  46 60                                            str r6, [r0, #4]
008a78f6  08 30                                            adds r0, #8
008a78f8  66 f6 5a e3                                      blx #0x30dfb0
008a78fc  4d 4b                                            ldr r3, [pc, #0x134]
008a78fe  0c 20                                            movs r0, #0xc
008a7900  eb 58                                            ldr r3, [r5, r3]
008a7902  08 33                                            adds r3, #8
008a7904  3b 60                                            str r3, [r7]
008a7906  e7 65                                            str r7, [r4, #0x5c]
008a7908  66 f6 c0 e7                                      blx #0x30e88c
008a790c  00 21                                            movs r1, #0
008a790e  07 1c                                            adds r7, r0, #0
008a7910  46 60                                            str r6, [r0, #4]
008a7912  08 30                                            adds r0, #8
008a7914  66 f6 4c e3                                      blx #0x30dfb0
008a7918  47 4b                                            ldr r3, [pc, #0x11c]
008a791a  48 48                                            ldr r0, [pc, #0x120]
008a791c  eb 58                                            ldr r3, [r5, r3]
008a791e  08 33                                            adds r3, #8
008a7920  3b 60                                            str r3, [r7]
008a7922  27 66                                            str r7, [r4, #0x60]
008a7924  66 f6 b2 e7                                      blx #0x30e88c
008a7928  00 21                                            movs r1, #0
008a792a  07 1c                                            adds r7, r0, #0
008a792c  46 60                                            str r6, [r0, #4]
008a792e  08 30                                            adds r0, #8
008a7930  66 f6 3e e3                                      blx #0x30dfb0
008a7934  4b 46                                            mov r3, sb
008a7936  38 1c                                            adds r0, r7, #0
008a7938  3b 60                                            str r3, [r7]
008a793a  0c 30                                            adds r0, #0xc
008a793c  14 f0 b0 fd                                      bl #0x8bc4a0
008a7940  3f 4b                                            ldr r3, [pc, #0xfc]
008a7942  3e 48                                            ldr r0, [pc, #0xf8]
008a7944  eb 58                                            ldr r3, [r5, r3]
008a7946  08 33                                            adds r3, #8
008a7948  3b 60                                            str r3, [r7]
008a794a  67 66                                            str r7, [r4, #0x64]
008a794c  66 f6 9e e7                                      blx #0x30e88c
008a7950  00 21                                            movs r1, #0
008a7952  07 1c                                            adds r7, r0, #0
008a7954  46 60                                            str r6, [r0, #4]
008a7956  08 30                                            adds r0, #8
008a7958  66 f6 2a e3                                      blx #0x30dfb0
008a795c  4a 46                                            mov r2, sb
008a795e  38 1c                                            adds r0, r7, #0
008a7960  3a 60                                            str r2, [r7]
008a7962  0c 30                                            adds r0, #0xc
008a7964  14 f0 9c fd                                      bl #0x8bc4a0
008a7968  36 4b                                            ldr r3, [pc, #0xd8]
008a796a  1c 21                                            movs r1, #0x1c
008a796c  eb 58                                            ldr r3, [r5, r3]
008a796e  08 33                                            adds r3, #8
008a7970  3b 60                                            str r3, [r7]
008a7972  a7 66                                            str r7, [r4, #0x68]
008a7974  47 46                                            mov r7, r8
008a7976  48 37                                            adds r7, #0x48
008a7978  38 1c                                            adds r0, r7, #0
008a797a  fe f7 67 fa                                      bl #0x8a5e4c
008a797e  1d ab                                            add r3, sp, #0x74
008a7980  1a 1c                                            adds r2, r3, #0
008a7982  38 1c                                            adds r0, r7, #0
008a7984  21 1c                                            adds r1, r4, #0
008a7986  fe f7 b3 fa                                      bl #0x8a5ef0
008a798a  42 46                                            mov r2, r8
008a798c  93 6d                                            ldr r3, [r2, #0x58]
008a798e  1e 42                                            tst r6, r3
008a7990  62 d0                                            beq #0x8a7a58
008a7992  2d 4c                                            ldr r4, [pc, #0xb4]
008a7994  7c 44                                            add r4, pc
008a7996  23 1c                                            adds r3, r4, #0
008a7998  5c 33                                            adds r3, #0x5c
008a799a  23 62                                            str r3, [r4, #0x20]
008a799c  23 6e                                            ldr r3, [r4, #0x60]
008a799e  da 07                                            lsls r2, r3, #0x1f
008a79a0  0a d5                                            bpl #0x8a79b8
008a79a2  2a 4b                                            ldr r3, [pc, #0xa8]
008a79a4  1e b0                                            add sp, #0x78
008a79a6  7b 44                                            add r3, pc
008a79a8  1a 1c                                            adds r2, r3, #0
008a79aa  64 32                                            adds r2, #0x64
008a79ac  9a 66                                            str r2, [r3, #0x68]
008a79ae  1c bc                                            pop {r2, r3, r4}
008a79b0  90 46                                            mov r8, r2
008a79b2  99 46                                            mov sb, r3
008a79b4  a2 46                                            mov sl, r4
008a79b6  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a79b8  26 1c                                            adds r6, r4, #0
008a79ba  60 36                                            adds r6, #0x60
008a79bc  30 1c                                            adds r0, r6, #0
008a79be  66 f6 d6 e6                                      blx #0x30e76c
008a79c2  00 28                                            cmp r0, #0
008a79c4  ed d0                                            beq #0x8a79a2
008a79c6  64 34                                            adds r4, #0x64
008a79c8  51 46                                            mov r1, sl
008a79ca  20 1c                                            adds r0, r4, #0
008a79cc  fb f7 b8 fd                                      bl #0x8a3540
008a79d0  30 1c                                            adds r0, r6, #0
008a79d2  67 f6 34 e0                                      blx #0x30ea3c
008a79d6  1e 4b                                            ldr r3, [pc, #0x78]
008a79d8  20 1c                                            adds r0, r4, #0
008a79da  e9 58                                            ldr r1, [r5, r3]
008a79dc  1d 4b                                            ldr r3, [pc, #0x74]
008a79de  ea 58                                            ldr r2, [r5, r3]
008a79e0  66 f6 90 e4                                      blx #0x30e304
008a79e4  dd e7                                            b #0x8a79a2
008a79e6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a79e8  fc d7 18 00 90 e5 06 00 d2 d3 0e 00 58 32 00 00  .byte 0xfc, 0xd7, 0x18, 0x00, 0x90, 0xe5, 0x06, 0x00, 0xd2, 0xd3, 0x0e, 0x00, 0x58, 0x32, 0x00, 0x00
008a79f8  d8 12 00 00 20 3c 00 00 54 1a 00 00 c4 05 00 00  .byte 0xd8, 0x12, 0x00, 0x00, 0x20, 0x3c, 0x00, 0x00, 0x54, 0x1a, 0x00, 0x00, 0xc4, 0x05, 0x00, 0x00
008a7a08  54 34 00 00 c4 11 00 00 4c 2b 00 00 f0 3c 00 00  .byte 0x54, 0x34, 0x00, 0x00, 0xc4, 0x11, 0x00, 0x00, 0x4c, 0x2b, 0x00, 0x00, 0xf0, 0x3c, 0x00, 0x00
008a7a18  98 32 00 00 ac 17 00 00 f0 21 00 00 e4 20 00 00  .byte 0x98, 0x32, 0x00, 0x00, 0xac, 0x17, 0x00, 0x00, 0xf0, 0x21, 0x00, 0x00, 0xe4, 0x20, 0x00, 0x00
008a7a28  44 3a 00 00 b0 0f 00 00 68 3b 00 00 28 09 00 00  .byte 0x44, 0x3a, 0x00, 0x00, 0xb0, 0x0f, 0x00, 0x00, 0x68, 0x3b, 0x00, 0x00, 0x28, 0x09, 0x00, 0x00
008a7a38  f0 41 00 00 c8 0b 00 00 b0 36 00 00 d0 31 00 00  .byte 0xf0, 0x41, 0x00, 0x00, 0xc8, 0x0b, 0x00, 0x00, 0xb0, 0x36, 0x00, 0x00, 0xd0, 0x31, 0x00, 0x00
008a7a48  f8 d4 18 00 e6 d4 18 00 14 0c 00 00 90 18 00 00  .byte 0xf8, 0xd4, 0x18, 0x00, 0xe6, 0xd4, 0x18, 0x00, 0x14, 0x0c, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00
; decoder-mode: thumb
008a7a58  44 46                                            mov r4, r8
008a7a5a  58 34                                            adds r4, #0x58
008a7a5c  20 1c                                            adds r0, r4, #0
008a7a5e  66 f6 86 e6                                      blx #0x30e76c
008a7a62  00 28                                            cmp r0, #0
008a7a64  00 d1                                            bne #0x8a7a68
008a7a66  94 e7                                            b #0x8a7992
008a7a68  46 46                                            mov r6, r8
008a7a6a  5c 36                                            adds r6, #0x5c
008a7a6c  51 46                                            mov r1, sl
008a7a6e  30 1c                                            adds r0, r6, #0
008a7a70  fb f7 66 fd                                      bl #0x8a3540
008a7a74  20 1c                                            adds r0, r4, #0
008a7a76  66 f6 e2 e7                                      blx #0x30ea3c
008a7a7a  04 4b                                            ldr r3, [pc, #0x10]
008a7a7c  30 1c                                            adds r0, r6, #0
008a7a7e  e9 58                                            ldr r1, [r5, r3]
008a7a80  03 4b                                            ldr r3, [pc, #0xc]
008a7a82  ea 58                                            ldr r2, [r5, r3]
008a7a84  66 f6 3e e4                                      blx #0x30e304
008a7a88  83 e7                                            b #0x8a7992
008a7a8a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a7a8c  14 0c 00 00 90 18 00 00                          .byte 0x14, 0x0c, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x008a7a94, declared_size=160, range_size=160, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_impl13_S_initializeEv
; demangled: std::_Locale_impl::_S_initialize()
; decoder-mode: thumb
008a7a94  10 b5                                            push {r4, lr}
008a7a96  1a 4b                                            ldr r3, [pc, #0x68]
008a7a98  1a 4a                                            ldr r2, [pc, #0x68]
008a7a9a  08 21                                            movs r1, #8
008a7a9c  7b 44                                            add r3, pc
008a7a9e  9a 58                                            ldr r2, [r3, r2]
008a7aa0  11 60                                            str r1, [r2]
008a7aa2  19 4a                                            ldr r2, [pc, #0x64]
008a7aa4  09 21                                            movs r1, #9
008a7aa6  9a 58                                            ldr r2, [r3, r2]
008a7aa8  11 60                                            str r1, [r2]
008a7aaa  18 4a                                            ldr r2, [pc, #0x60]
008a7aac  0a 21                                            movs r1, #0xa
008a7aae  9a 58                                            ldr r2, [r3, r2]
008a7ab0  11 60                                            str r1, [r2]
008a7ab2  17 4a                                            ldr r2, [pc, #0x5c]
008a7ab4  0b 21                                            movs r1, #0xb
008a7ab6  9a 58                                            ldr r2, [r3, r2]
008a7ab8  11 60                                            str r1, [r2]
008a7aba  16 4a                                            ldr r2, [pc, #0x58]
008a7abc  0c 21                                            movs r1, #0xc
008a7abe  9a 58                                            ldr r2, [r3, r2]
008a7ac0  11 60                                            str r1, [r2]
008a7ac2  15 4a                                            ldr r2, [pc, #0x54]
008a7ac4  0d 21                                            movs r1, #0xd
008a7ac6  9a 58                                            ldr r2, [r3, r2]
008a7ac8  11 60                                            str r1, [r2]
008a7aca  14 4a                                            ldr r2, [pc, #0x50]
008a7acc  15 21                                            movs r1, #0x15
008a7ace  9a 58                                            ldr r2, [r3, r2]
008a7ad0  11 60                                            str r1, [r2]
008a7ad2  13 4a                                            ldr r2, [pc, #0x4c]
008a7ad4  16 21                                            movs r1, #0x16
008a7ad6  9a 58                                            ldr r2, [r3, r2]
008a7ad8  11 60                                            str r1, [r2]
008a7ada  12 4a                                            ldr r2, [pc, #0x48]
008a7adc  17 21                                            movs r1, #0x17
008a7ade  9a 58                                            ldr r2, [r3, r2]
008a7ae0  11 60                                            str r1, [r2]
008a7ae2  11 4a                                            ldr r2, [pc, #0x44]
008a7ae4  18 21                                            movs r1, #0x18
008a7ae6  9a 58                                            ldr r2, [r3, r2]
008a7ae8  11 60                                            str r1, [r2]
008a7aea  10 4a                                            ldr r2, [pc, #0x40]
008a7aec  19 21                                            movs r1, #0x19
008a7aee  9a 58                                            ldr r2, [r3, r2]
008a7af0  11 60                                            str r1, [r2]
008a7af2  0f 4a                                            ldr r2, [pc, #0x3c]
008a7af4  9b 58                                            ldr r3, [r3, r2]
008a7af6  1a 22                                            movs r2, #0x1a
008a7af8  1a 60                                            str r2, [r3]
008a7afa  ff f7 bf fd                                      bl #0x8a767c
008a7afe  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a7b00  f8 cf 0e 00 e8 1d 00 00 1c 35 00 00 70 36 00 00  .byte 0xf8, 0xcf, 0x0e, 0x00, 0xe8, 0x1d, 0x00, 0x00, 0x1c, 0x35, 0x00, 0x00, 0x70, 0x36, 0x00, 0x00
008a7b10  f8 0c 00 00 40 3d 00 00 58 11 00 00 ec 1e 00 00  .byte 0xf8, 0x0c, 0x00, 0x00, 0x40, 0x3d, 0x00, 0x00, 0x58, 0x11, 0x00, 0x00, 0xec, 0x1e, 0x00, 0x00
008a7b20  a0 39 00 00 68 17 00 00 d8 34 00 00 74 2b 00 00  .byte 0xa0, 0x39, 0x00, 0x00, 0x68, 0x17, 0x00, 0x00, 0xd8, 0x34, 0x00, 0x00, 0x74, 0x2b, 0x00, 0x00
008a7b30  54 2b 00 00                                      .byte 0x54, 0x2b, 0x00, 0x00

; FUNCTION 0x008a7c14, declared_size=68, range_size=68, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_implC1EjPKc
; demangled: std::_Locale_impl::_Locale_impl(unsigned int, char const*)
; decoder-mode: thumb
008a7c14  f0 b5                                            push {r4, r5, r6, r7, lr}
008a7c16  00 25                                            movs r5, #0
008a7c18  85 b0                                            sub sp, #0x14
008a7c1a  04 1c                                            adds r4, r0, #0
008a7c1c  0f 1c                                            adds r7, r1, #0
008a7c1e  20 c0                                            stm r0!, {r5}
008a7c20  00 21                                            movs r1, #0
008a7c22  16 1c                                            adds r6, r2, #0
008a7c24  66 f6 c4 e1                                      blx #0x30dfb0
008a7c28  20 1c                                            adds r0, r4, #0
008a7c2a  31 1c                                            adds r1, r6, #0
008a7c2c  03 aa                                            add r2, sp, #0xc
008a7c2e  08 30                                            adds r0, #8
008a7c30  6c f6 5c e2                                      blx #0x3140ec
008a7c34  20 1c                                            adds r0, r4, #0
008a7c36  39 1c                                            adds r1, r7, #0
008a7c38  01 aa                                            add r2, sp, #4
008a7c3a  02 ab                                            add r3, sp, #8
008a7c3c  20 30                                            adds r0, #0x20
008a7c3e  01 95                                            str r5, [sp, #4]
008a7c40  fe f7 e2 f8                                      bl #0x8a5e08
008a7c44  03 48                                            ldr r0, [pc, #0xc]
008a7c46  78 44                                            add r0, pc
008a7c48  10 30                                            adds r0, #0x10
008a7c4a  ff f7 73 ff                                      bl #0x8a7b34
008a7c4e  05 b0                                            add sp, #0x14
008a7c50  20 1c                                            adds r0, r4, #0
008a7c52  f0 bd                                            pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008a7c54  46 d2 18 00                                      .byte 0x46, 0xd2, 0x18, 0x00

; FUNCTION 0x008a7c58, declared_size=68, range_size=68, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_implC2EjPKc
; demangled: std::_Locale_impl::_Locale_impl(unsigned int, char const*)
; decoder-mode: thumb
008a7c58  f0 b5                                            push {r4, r5, r6, r7, lr}
008a7c5a  00 25                                            movs r5, #0
008a7c5c  85 b0                                            sub sp, #0x14
008a7c5e  04 1c                                            adds r4, r0, #0
008a7c60  0f 1c                                            adds r7, r1, #0
008a7c62  20 c0                                            stm r0!, {r5}
008a7c64  00 21                                            movs r1, #0
008a7c66  16 1c                                            adds r6, r2, #0
008a7c68  66 f6 a2 e1                                      blx #0x30dfb0
008a7c6c  20 1c                                            adds r0, r4, #0
008a7c6e  31 1c                                            adds r1, r6, #0
008a7c70  03 aa                                            add r2, sp, #0xc
008a7c72  08 30                                            adds r0, #8
008a7c74  6c f6 3a e2                                      blx #0x3140ec
008a7c78  20 1c                                            adds r0, r4, #0
008a7c7a  39 1c                                            adds r1, r7, #0
008a7c7c  01 aa                                            add r2, sp, #4
008a7c7e  02 ab                                            add r3, sp, #8
008a7c80  20 30                                            adds r0, #0x20
008a7c82  01 95                                            str r5, [sp, #4]
008a7c84  fe f7 c0 f8                                      bl #0x8a5e08
008a7c88  03 48                                            ldr r0, [pc, #0xc]
008a7c8a  78 44                                            add r0, pc
008a7c8c  10 30                                            adds r0, #0x10
008a7c8e  ff f7 51 ff                                      bl #0x8a7b34
008a7c92  05 b0                                            add sp, #0x14
008a7c94  20 1c                                            adds r0, r4, #0
008a7c96  f0 bd                                            pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008a7c98  02 d2 18 00                                      .byte 0x02, 0xd2, 0x18, 0x00

; FUNCTION 0x008a7ccc, declared_size=84, range_size=84, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_implC2EPKc
; demangled: std::_Locale_impl::_Locale_impl(char const*)
; decoder-mode: thumb
008a7ccc  f0 b5                                            push {r4, r5, r6, r7, lr}
008a7cce  00 26                                            movs r6, #0
008a7cd0  04 1c                                            adds r4, r0, #0
008a7cd2  83 b0                                            sub sp, #0xc
008a7cd4  0f 1c                                            adds r7, r1, #0
008a7cd6  40 c0                                            stm r0!, {r6}
008a7cd8  00 21                                            movs r1, #0
008a7cda  66 f6 6a e1                                      blx #0x30dfb0
008a7cde  20 1c                                            adds r0, r4, #0
008a7ce0  01 aa                                            add r2, sp, #4
008a7ce2  39 1c                                            adds r1, r7, #0
008a7ce4  0b 4d                                            ldr r5, [pc, #0x2c]
008a7ce6  08 30                                            adds r0, #8
008a7ce8  6c f6 00 e2                                      blx #0x3140ec
008a7cec  0a 4b                                            ldr r3, [pc, #0x28]
008a7cee  7d 44                                            add r5, pc
008a7cf0  26 62                                            str r6, [r4, #0x20]
008a7cf2  eb 58                                            ldr r3, [r5, r3]
008a7cf4  66 62                                            str r6, [r4, #0x24]
008a7cf6  a6 62                                            str r6, [r4, #0x28]
008a7cf8  20 1c                                            adds r0, r4, #0
008a7cfa  19 68                                            ldr r1, [r3]
008a7cfc  20 30                                            adds r0, #0x20
008a7cfe  fe f7 a5 f8                                      bl #0x8a5e4c
008a7d02  06 48                                            ldr r0, [pc, #0x18]
008a7d04  78 44                                            add r0, pc
008a7d06  10 30                                            adds r0, #0x10
008a7d08  ff f7 14 ff                                      bl #0x8a7b34
008a7d0c  03 b0                                            add sp, #0xc
008a7d0e  20 1c                                            adds r0, r4, #0
008a7d10  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a7d12  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a7d14  a6 cd 0e 00 34 32 00 00 88 d1 18 00              .byte 0xa6, 0xcd, 0x0e, 0x00, 0x34, 0x32, 0x00, 0x00, 0x88, 0xd1, 0x18, 0x00

; FUNCTION 0x008a7d84, declared_size=88, range_size=88, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_implC1ERKS_
; demangled: std::_Locale_impl::_Locale_impl(std::_Locale_impl const&)
; decoder-mode: thumb
008a7d84  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a7d86  00 24                                            movs r4, #0
008a7d88  05 1c                                            adds r5, r0, #0
008a7d8a  0e 1c                                            adds r6, r1, #0
008a7d8c  10 c0                                            stm r0!, {r4}
008a7d8e  00 21                                            movs r1, #0
008a7d90  66 f6 0e e1                                      blx #0x30dfb0
008a7d94  28 1c                                            adds r0, r5, #0
008a7d96  08 30                                            adds r0, #8
008a7d98  a8 61                                            str r0, [r5, #0x18]
008a7d9a  e8 61                                            str r0, [r5, #0x1c]
008a7d9c  f1 69                                            ldr r1, [r6, #0x1c]
008a7d9e  b2 69                                            ldr r2, [r6, #0x18]
008a7da0  69 f6 a2 e4                                      blx #0x3116e8
008a7da4  2c 62                                            str r4, [r5, #0x20]
008a7da6  6c 62                                            str r4, [r5, #0x24]
008a7da8  ac 62                                            str r4, [r5, #0x28]
008a7daa  34 6a                                            ldr r4, [r6, #0x20]
008a7dac  77 6a                                            ldr r7, [r6, #0x24]
008a7dae  bc 42                                            cmp r4, r7
008a7db0  04 d0                                            beq #0x8a7dbc
008a7db2  01 cc                                            ldm r4!, {r0}
008a7db4  fd f7 26 f8                                      bl #0x8a4e04
008a7db8  a7 42                                            cmp r7, r4
008a7dba  fa d1                                            bne #0x8a7db2
008a7dbc  28 1c                                            adds r0, r5, #0
008a7dbe  31 1c                                            adds r1, r6, #0
008a7dc0  20 31                                            adds r1, #0x20
008a7dc2  20 30                                            adds r0, #0x20
008a7dc4  fe f7 e8 f8                                      bl #0x8a5f98
008a7dc8  03 48                                            ldr r0, [pc, #0xc]
008a7dca  78 44                                            add r0, pc
008a7dcc  10 30                                            adds r0, #0x10
008a7dce  ff f7 b1 fe                                      bl #0x8a7b34
008a7dd2  28 1c                                            adds r0, r5, #0
008a7dd4  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008a7dd6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a7dd8  c2 d0 18 00                                      .byte 0xc2, 0xd0, 0x18, 0x00

; FUNCTION 0x008a7e14, declared_size=88, range_size=88, mode=thumb
; class-group: std::_Locale_impl
; alias: _ZNSt12_Locale_implC2ERKS_
; demangled: std::_Locale_impl::_Locale_impl(std::_Locale_impl const&)
; decoder-mode: thumb
008a7e14  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a7e16  00 24                                            movs r4, #0
008a7e18  05 1c                                            adds r5, r0, #0
008a7e1a  0e 1c                                            adds r6, r1, #0
008a7e1c  10 c0                                            stm r0!, {r4}
008a7e1e  00 21                                            movs r1, #0
008a7e20  66 f6 c6 e0                                      blx #0x30dfb0
008a7e24  28 1c                                            adds r0, r5, #0
008a7e26  08 30                                            adds r0, #8
008a7e28  a8 61                                            str r0, [r5, #0x18]
008a7e2a  e8 61                                            str r0, [r5, #0x1c]
008a7e2c  f1 69                                            ldr r1, [r6, #0x1c]
008a7e2e  b2 69                                            ldr r2, [r6, #0x18]
008a7e30  69 f6 5a e4                                      blx #0x3116e8
008a7e34  2c 62                                            str r4, [r5, #0x20]
008a7e36  6c 62                                            str r4, [r5, #0x24]
008a7e38  ac 62                                            str r4, [r5, #0x28]
008a7e3a  34 6a                                            ldr r4, [r6, #0x20]
008a7e3c  77 6a                                            ldr r7, [r6, #0x24]
008a7e3e  bc 42                                            cmp r4, r7
008a7e40  04 d0                                            beq #0x8a7e4c
008a7e42  01 cc                                            ldm r4!, {r0}
008a7e44  fc f7 de ff                                      bl #0x8a4e04
008a7e48  a7 42                                            cmp r7, r4
008a7e4a  fa d1                                            bne #0x8a7e42
008a7e4c  28 1c                                            adds r0, r5, #0
008a7e4e  31 1c                                            adds r1, r6, #0
008a7e50  20 31                                            adds r1, #0x20
008a7e52  20 30                                            adds r0, #0x20
008a7e54  fe f7 a0 f8                                      bl #0x8a5f98
008a7e58  03 48                                            ldr r0, [pc, #0xc]
008a7e5a  78 44                                            add r0, pc
008a7e5c  10 30                                            adds r0, #0x10
008a7e5e  ff f7 69 fe                                      bl #0x8a7b34
008a7e62  28 1c                                            adds r0, r5, #0
008a7e64  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008a7e66  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a7e68  32 d0 18 00                                      .byte 0x32, 0xd0, 0x18, 0x00
