; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b52c0, declared_size=26, range_size=26, mode=thumb
; class-group: std::collate_byname<wchar_t>
; alias: _ZNKSt14collate_bynameIwE10do_compareEPKwS2_S2_S2_
; demangled: std::collate_byname<wchar_t>::do_compare(wchar_t const*, wchar_t const*, wchar_t const*, wchar_t const*) const
; decoder-mode: thumb
008b52c0  10 b5                                            push {r4, lr}
008b52c2  82 b0                                            sub sp, #8
008b52c4  04 9c                                            ldr r4, [sp, #0x10]
008b52c6  52 1a                                            subs r2, r2, r1
008b52c8  c0 68                                            ldr r0, [r0, #0xc]
008b52ca  e4 1a                                            subs r4, r4, r3
008b52cc  92 10                                            asrs r2, r2, #2
008b52ce  a4 10                                            asrs r4, r4, #2
008b52d0  00 94                                            str r4, [sp]
008b52d2  01 f0 dd fc                                      bl #0x8b6c90
008b52d6  02 b0                                            add sp, #8
008b52d8  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b52dc, declared_size=40, range_size=40, mode=thumb
; class-group: std::collate_byname<wchar_t>
; alias: _ZNSt14collate_bynameIwED1Ev
; demangled: std::collate_byname<wchar_t>::~collate_byname()
; decoder-mode: thumb
008b52dc  10 b5                                            push {r4, lr}
008b52de  07 4b                                            ldr r3, [pc, #0x1c]
008b52e0  07 4a                                            ldr r2, [pc, #0x1c]
008b52e2  04 1c                                            adds r4, r0, #0
008b52e4  7b 44                                            add r3, pc
008b52e6  9a 58                                            ldr r2, [r3, r2]
008b52e8  08 32                                            adds r2, #8
008b52ea  02 60                                            str r2, [r0]
008b52ec  c0 68                                            ldr r0, [r0, #0xc]
008b52ee  fe f7 05 fd                                      bl #0x8b3cfc
008b52f2  20 1c                                            adds r0, r4, #0
008b52f4  03 f0 42 ff                                      bl #0x8b917c
008b52f8  20 1c                                            adds r0, r4, #0
008b52fa  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b52fc  b0 f7 0d 00 18 2f 00 00                          .byte 0xb0, 0xf7, 0x0d, 0x00, 0x18, 0x2f, 0x00, 0x00

; FUNCTION 0x008b5304, declared_size=18, range_size=18, mode=thumb
; class-group: std::collate_byname<wchar_t>
; alias: _ZNSt14collate_bynameIwED0Ev
; demangled: std::collate_byname<wchar_t>::~collate_byname()
; decoder-mode: thumb
008b5304  10 b5                                            push {r4, lr}
008b5306  04 1c                                            adds r4, r0, #0
008b5308  ff f7 e8 ff                                      bl #0x8b52dc
008b530c  20 1c                                            adds r0, r4, #0
008b530e  58 f6 d0 e7                                      blx #0x30e2b0
008b5312  20 1c                                            adds r0, r4, #0
008b5314  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b5318, declared_size=40, range_size=40, mode=thumb
; class-group: std::collate_byname<wchar_t>
; alias: _ZNSt14collate_bynameIwED2Ev
; demangled: std::collate_byname<wchar_t>::~collate_byname()
; decoder-mode: thumb
008b5318  10 b5                                            push {r4, lr}
008b531a  07 4b                                            ldr r3, [pc, #0x1c]
008b531c  07 4a                                            ldr r2, [pc, #0x1c]
008b531e  04 1c                                            adds r4, r0, #0
008b5320  7b 44                                            add r3, pc
008b5322  9a 58                                            ldr r2, [r3, r2]
008b5324  08 32                                            adds r2, #8
008b5326  02 60                                            str r2, [r0]
008b5328  c0 68                                            ldr r0, [r0, #0xc]
008b532a  fe f7 e7 fc                                      bl #0x8b3cfc
008b532e  20 1c                                            adds r0, r4, #0
008b5330  03 f0 24 ff                                      bl #0x8b917c
008b5334  20 1c                                            adds r0, r4, #0
008b5336  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b5338  74 f7 0d 00 18 2f 00 00                          .byte 0x74, 0xf7, 0x0d, 0x00, 0x18, 0x2f, 0x00, 0x00

; FUNCTION 0x008b5d9c, declared_size=124, range_size=124, mode=thumb
; class-group: std::collate_byname<wchar_t>
; alias: _ZNSt14collate_bynameIwEC1EPKcj
; demangled: std::collate_byname<wchar_t>::collate_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5d9c  70 b5                                            push {r4, r5, r6, lr}
008b5d9e  1a 4c                                            ldr r4, [pc, #0x68]
008b5da0  1a 4e                                            ldr r6, [pc, #0x68]
008b5da2  c4 b0                                            sub sp, #0x110
008b5da4  7c 44                                            add r4, pc
008b5da6  a3 59                                            ldr r3, [r4, r6]
008b5da8  01 91                                            str r1, [sp, #4]
008b5daa  05 1c                                            adds r5, r0, #0
008b5dac  1b 68                                            ldr r3, [r3]
008b5dae  00 21                                            movs r1, #0
008b5db0  43 93                                            str r3, [sp, #0x10c]
008b5db2  53 1e                                            subs r3, r2, #1
008b5db4  9a 41                                            sbcs r2, r3
008b5db6  42 60                                            str r2, [r0, #4]
008b5db8  08 30                                            adds r0, #8
008b5dba  58 f6 fa e0                                      blx #0x30dfb0
008b5dbe  14 4b                                            ldr r3, [pc, #0x50]
008b5dc0  e3 58                                            ldr r3, [r4, r3]
008b5dc2  08 33                                            adds r3, #8
008b5dc4  2b 60                                            str r3, [r5]
008b5dc6  01 9b                                            ldr r3, [sp, #4]
008b5dc8  00 2b                                            cmp r3, #0
008b5dca  17 d0                                            beq #0x8b5dfc
008b5dcc  01 a8                                            add r0, sp, #4
008b5dce  03 a9                                            add r1, sp, #0xc
008b5dd0  00 22                                            movs r2, #0
008b5dd2  02 ab                                            add r3, sp, #8
008b5dd4  fe f7 cc f9                                      bl #0x8b4170
008b5dd8  e8 60                                            str r0, [r5, #0xc]
008b5dda  00 28                                            cmp r0, #0
008b5ddc  07 d0                                            beq #0x8b5dee
008b5dde  a3 59                                            ldr r3, [r4, r6]
008b5de0  43 9a                                            ldr r2, [sp, #0x10c]
008b5de2  28 1c                                            adds r0, r5, #0
008b5de4  1b 68                                            ldr r3, [r3]
008b5de6  9a 42                                            cmp r2, r3
008b5de8  0b d1                                            bne #0x8b5e02
008b5dea  44 b0                                            add sp, #0x110
008b5dec  70 bd                                            pop {r4, r5, r6, pc}
008b5dee  09 4a                                            ldr r2, [pc, #0x24]
008b5df0  02 98                                            ldr r0, [sp, #8]
008b5df2  01 99                                            ldr r1, [sp, #4]
008b5df4  7a 44                                            add r2, pc
008b5df6  ee f7 eb fc                                      bl #0x8a47d0
008b5dfa  f0 e7                                            b #0x8b5dde
008b5dfc  ed f7 60 fb                                      bl #0x8a34c0
008b5e00  e4 e7                                            b #0x8b5dcc
008b5e02  58 f6 86 e2                                      blx #0x30e310
008b5e06  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5e08  f0 ec 0d 00 ac 40 00 00 18 2f 00 00 0c ff 05 00  .byte 0xf0, 0xec, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x18, 0x2f, 0x00, 0x00, 0x0c, 0xff, 0x05, 0x00

; FUNCTION 0x008b5e18, declared_size=124, range_size=124, mode=thumb
; class-group: std::collate_byname<wchar_t>
; alias: _ZNSt14collate_bynameIwEC2EPKcj
; demangled: std::collate_byname<wchar_t>::collate_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5e18  70 b5                                            push {r4, r5, r6, lr}
008b5e1a  1a 4c                                            ldr r4, [pc, #0x68]
008b5e1c  1a 4e                                            ldr r6, [pc, #0x68]
008b5e1e  c4 b0                                            sub sp, #0x110
008b5e20  7c 44                                            add r4, pc
008b5e22  a3 59                                            ldr r3, [r4, r6]
008b5e24  01 91                                            str r1, [sp, #4]
008b5e26  05 1c                                            adds r5, r0, #0
008b5e28  1b 68                                            ldr r3, [r3]
008b5e2a  00 21                                            movs r1, #0
008b5e2c  43 93                                            str r3, [sp, #0x10c]
008b5e2e  53 1e                                            subs r3, r2, #1
008b5e30  9a 41                                            sbcs r2, r3
008b5e32  42 60                                            str r2, [r0, #4]
008b5e34  08 30                                            adds r0, #8
008b5e36  58 f6 bc e0                                      blx #0x30dfb0
008b5e3a  14 4b                                            ldr r3, [pc, #0x50]
008b5e3c  e3 58                                            ldr r3, [r4, r3]
008b5e3e  08 33                                            adds r3, #8
008b5e40  2b 60                                            str r3, [r5]
008b5e42  01 9b                                            ldr r3, [sp, #4]
008b5e44  00 2b                                            cmp r3, #0
008b5e46  17 d0                                            beq #0x8b5e78
008b5e48  01 a8                                            add r0, sp, #4
008b5e4a  03 a9                                            add r1, sp, #0xc
008b5e4c  00 22                                            movs r2, #0
008b5e4e  02 ab                                            add r3, sp, #8
008b5e50  fe f7 8e f9                                      bl #0x8b4170
008b5e54  e8 60                                            str r0, [r5, #0xc]
008b5e56  00 28                                            cmp r0, #0
008b5e58  07 d0                                            beq #0x8b5e6a
008b5e5a  a3 59                                            ldr r3, [r4, r6]
008b5e5c  43 9a                                            ldr r2, [sp, #0x10c]
008b5e5e  28 1c                                            adds r0, r5, #0
008b5e60  1b 68                                            ldr r3, [r3]
008b5e62  9a 42                                            cmp r2, r3
008b5e64  0b d1                                            bne #0x8b5e7e
008b5e66  44 b0                                            add sp, #0x110
008b5e68  70 bd                                            pop {r4, r5, r6, pc}
008b5e6a  09 4a                                            ldr r2, [pc, #0x24]
008b5e6c  02 98                                            ldr r0, [sp, #8]
008b5e6e  01 99                                            ldr r1, [sp, #4]
008b5e70  7a 44                                            add r2, pc
008b5e72  ee f7 ad fc                                      bl #0x8a47d0
008b5e76  f0 e7                                            b #0x8b5e5a
008b5e78  ed f7 22 fb                                      bl #0x8a34c0
008b5e7c  e4 e7                                            b #0x8b5e48
008b5e7e  58 f6 48 e2                                      blx #0x30e310
008b5e82  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5e84  74 ec 0d 00 ac 40 00 00 18 2f 00 00 90 fe 05 00  .byte 0x74, 0xec, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x18, 0x2f, 0x00, 0x00, 0x90, 0xfe, 0x05, 0x00

; FUNCTION 0x008b60d8, declared_size=162, range_size=162, mode=thumb
; class-group: std::collate_byname<wchar_t>
; alias: _ZNKSt14collate_bynameIwE12do_transformEPKwS2_
; demangled: std::collate_byname<wchar_t>::do_transform(wchar_t const*, wchar_t const*) const
; decoder-mode: thumb
008b60d8  f0 b5                                            push {r4, r5, r6, r7, lr}
008b60da  57 46                                            mov r7, sl
008b60dc  4e 46                                            mov r6, sb
008b60de  45 46                                            mov r5, r8
008b60e0  e0 b4                                            push {r5, r6, r7}
008b60e2  94 b0                                            sub sp, #0x50
008b60e4  05 1c                                            adds r5, r0, #0
008b60e6  0e 1c                                            adds r6, r1, #0
008b60e8  17 1c                                            adds r7, r2, #0
008b60ea  9a 42                                            cmp r2, r3
008b60ec  3c d0                                            beq #0x8b6168
008b60ee  9b 1a                                            subs r3, r3, r2
008b60f0  9b 10                                            asrs r3, r3, #2
008b60f2  c8 68                                            ldr r0, [r1, #0xc]
008b60f4  00 22                                            movs r2, #0
008b60f6  00 93                                            str r3, [sp]
008b60f8  00 21                                            movs r1, #0
008b60fa  99 46                                            mov sb, r3
008b60fc  3b 1c                                            adds r3, r7, #0
008b60fe  00 f0 a7 fd                                      bl #0x8b6c50
008b6102  01 21                                            movs r1, #1
008b6104  80 46                                            mov r8, r0
008b6106  8a 46                                            mov sl, r1
008b6108  02 ac                                            add r4, sp, #8
008b610a  c2 44                                            add sl, r8
008b610c  20 1c                                            adds r0, r4, #0
008b610e  51 46                                            mov r1, sl
008b6110  24 64                                            str r4, [r4, #0x40]
008b6112  64 64                                            str r4, [r4, #0x44]
008b6114  f0 f7 76 fd                                      bl #0x8a6c04
008b6118  62 6c                                            ldr r2, [r4, #0x44]
008b611a  41 46                                            mov r1, r8
008b611c  8b 00                                            lsls r3, r1, #2
008b611e  d0 18                                            adds r0, r2, r3
008b6120  9b 10                                            asrs r3, r3, #2
008b6122  00 2b                                            cmp r3, #0
008b6124  04 dd                                            ble #0x8b6130
008b6126  00 21                                            movs r1, #0
008b6128  01 3b                                            subs r3, #1
008b612a  02 c2                                            stm r2!, {r1}
008b612c  00 2b                                            cmp r3, #0
008b612e  fb d1                                            bne #0x8b6128
008b6130  00 23                                            movs r3, #0
008b6132  20 64                                            str r0, [r4, #0x40]
008b6134  03 60                                            str r3, [r0]
008b6136  4b 46                                            mov r3, sb
008b6138  61 6c                                            ldr r1, [r4, #0x44]
008b613a  52 46                                            mov r2, sl
008b613c  00 93                                            str r3, [sp]
008b613e  f0 68                                            ldr r0, [r6, #0xc]
008b6140  3b 1c                                            adds r3, r7, #0
008b6142  00 f0 85 fd                                      bl #0x8b6c50
008b6146  28 1c                                            adds r0, r5, #0
008b6148  2d 64                                            str r5, [r5, #0x40]
008b614a  6d 64                                            str r5, [r5, #0x44]
008b614c  61 6c                                            ldr r1, [r4, #0x44]
008b614e  22 6c                                            ldr r2, [r4, #0x40]
008b6150  ff f7 1c ff                                      bl #0x8b5f8c
008b6154  20 1c                                            adds r0, r4, #0
008b6156  63 f6 2c e1                                      blx #0x3193b0
008b615a  14 b0                                            add sp, #0x50
008b615c  28 1c                                            adds r0, r5, #0
008b615e  1c bc                                            pop {r2, r3, r4}
008b6160  90 46                                            mov r8, r2
008b6162  99 46                                            mov sb, r3
008b6164  a2 46                                            mov sl, r4
008b6166  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b6168  28 64                                            str r0, [r5, #0x40]
008b616a  68 64                                            str r0, [r5, #0x44]
008b616c  10 21                                            movs r1, #0x10
008b616e  f0 f7 49 fd                                      bl #0x8a6c04
008b6172  2b 6c                                            ldr r3, [r5, #0x40]
008b6174  00 22                                            movs r2, #0
008b6176  1a 60                                            str r2, [r3]
008b6178  ef e7                                            b #0x8b615a
