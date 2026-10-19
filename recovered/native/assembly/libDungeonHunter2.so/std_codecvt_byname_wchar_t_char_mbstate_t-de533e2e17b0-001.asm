; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b42b0, declared_size=4, range_size=4, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNKSt14codecvt_bynameIwc9mbstate_tE16do_always_noconvEv
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::do_always_noconv() const
; decoder-mode: thumb
008b42b0  00 20                                            movs r0, #0
008b42b2  70 47                                            bx lr

; FUNCTION 0x008b5040, declared_size=10, range_size=10, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNKSt14codecvt_bynameIwc9mbstate_tE13do_max_lengthEv
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::do_max_length() const
; decoder-mode: thumb
008b5040  10 b5                                            push {r4, lr}
008b5042  c0 68                                            ldr r0, [r0, #0xc]
008b5044  01 f0 00 fd                                      bl #0x8b6a48
008b5048  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b504c, declared_size=96, range_size=96, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNKSt14codecvt_bynameIwc9mbstate_tE9do_lengthERS0_PKcS4_j
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::do_length(mbstate_t&, char const*, char const*, unsigned int) const
; decoder-mode: thumb
008b504c  f0 b5                                            push {r4, r5, r6, r7, lr}
008b504e  57 46                                            mov r7, sl
008b5050  4e 46                                            mov r6, sb
008b5052  45 46                                            mov r5, r8
008b5054  e0 b4                                            push {r5, r6, r7}
008b5056  84 b0                                            sub sp, #0x10
008b5058  98 46                                            mov r8, r3
008b505a  06 1c                                            adds r6, r0, #0
008b505c  89 46                                            mov sb, r1
008b505e  14 1c                                            adds r4, r2, #0
008b5060  0c 9f                                            ldr r7, [sp, #0x30]
008b5062  42 45                                            cmp r2, r8
008b5064  20 d0                                            beq #0x8b50a8
008b5066  00 2f                                            cmp r7, #0
008b5068  1e d0                                            beq #0x8b50a8
008b506a  03 aa                                            add r2, sp, #0xc
008b506c  01 3f                                            subs r7, #1
008b506e  00 25                                            movs r5, #0
008b5070  92 46                                            mov sl, r2
008b5072  42 46                                            mov r2, r8
008b5074  13 1b                                            subs r3, r2, r4
008b5076  4a 46                                            mov r2, sb
008b5078  00 92                                            str r2, [sp]
008b507a  f0 68                                            ldr r0, [r6, #0xc]
008b507c  51 46                                            mov r1, sl
008b507e  22 1c                                            adds r2, r4, #0
008b5080  01 f0 e8 fc                                      bl #0x8b6a54
008b5084  83 1c                                            adds r3, r0, #2
008b5086  01 2b                                            cmp r3, #1
008b5088  05 d9                                            bls #0x8b5096
008b508a  24 18                                            adds r4, r4, r0
008b508c  2d 18                                            adds r5, r5, r0
008b508e  a0 45                                            cmp r8, r4
008b5090  01 d0                                            beq #0x8b5096
008b5092  00 2f                                            cmp r7, #0
008b5094  06 d1                                            bne #0x8b50a4
008b5096  04 b0                                            add sp, #0x10
008b5098  28 1c                                            adds r0, r5, #0
008b509a  1c bc                                            pop {r2, r3, r4}
008b509c  90 46                                            mov r8, r2
008b509e  99 46                                            mov sb, r3
008b50a0  a2 46                                            mov sl, r4
008b50a2  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b50a4  01 3f                                            subs r7, #1
008b50a6  e4 e7                                            b #0x8b5072
008b50a8  00 25                                            movs r5, #0
008b50aa  f4 e7                                            b #0x8b5096

; FUNCTION 0x008b50ac, declared_size=124, range_size=124, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNKSt14codecvt_bynameIwc9mbstate_tE5do_inERS0_PKcS4_RS4_PwS6_RS6_
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::do_in(mbstate_t&, char const*, char const*, char const*&, wchar_t*, wchar_t*, wchar_t*&) const
; decoder-mode: thumb
008b50ac  f0 b5                                            push {r4, r5, r6, r7, lr}
008b50ae  5f 46                                            mov r7, fp
008b50b0  56 46                                            mov r6, sl
008b50b2  4d 46                                            mov r5, sb
008b50b4  44 46                                            mov r4, r8
008b50b6  f0 b4                                            push {r4, r5, r6, r7}
008b50b8  83 b0                                            sub sp, #0xc
008b50ba  14 1c                                            adds r4, r2, #0
008b50bc  0c 9a                                            ldr r2, [sp, #0x30]
008b50be  1f 1c                                            adds r7, r3, #0
008b50c0  0e 9b                                            ldr r3, [sp, #0x38]
008b50c2  92 46                                            mov sl, r2
008b50c4  0d 9d                                            ldr r5, [sp, #0x34]
008b50c6  0f 9a                                            ldr r2, [sp, #0x3c]
008b50c8  99 46                                            mov sb, r3
008b50ca  06 1c                                            adds r6, r0, #0
008b50cc  88 46                                            mov r8, r1
008b50ce  93 46                                            mov fp, r2
008b50d0  4d 45                                            cmp r5, sb
008b50d2  11 d0                                            beq #0x8b50f8
008b50d4  bc 42                                            cmp r4, r7
008b50d6  0f d0                                            beq #0x8b50f8
008b50d8  42 46                                            mov r2, r8
008b50da  3b 1b                                            subs r3, r7, r4
008b50dc  00 92                                            str r2, [sp]
008b50de  f0 68                                            ldr r0, [r6, #0xc]
008b50e0  29 1c                                            adds r1, r5, #0
008b50e2  22 1c                                            adds r2, r4, #0
008b50e4  01 f0 b6 fc                                      bl #0x8b6a54
008b50e8  43 1c                                            adds r3, r0, #1
008b50ea  11 d0                                            beq #0x8b5110
008b50ec  82 1c                                            adds r2, r0, #2
008b50ee  15 d0                                            beq #0x8b511c
008b50f0  04 35                                            adds r5, #4
008b50f2  24 18                                            adds r4, r4, r0
008b50f4  a9 45                                            cmp sb, r5
008b50f6  ed d1                                            bne #0x8b50d4
008b50f8  53 46                                            mov r3, sl
008b50fa  5a 46                                            mov r2, fp
008b50fc  1c 60                                            str r4, [r3]
008b50fe  00 20                                            movs r0, #0
008b5100  15 60                                            str r5, [r2]
008b5102  03 b0                                            add sp, #0xc
008b5104  3c bc                                            pop {r2, r3, r4, r5}
008b5106  90 46                                            mov r8, r2
008b5108  99 46                                            mov sb, r3
008b510a  a2 46                                            mov sl, r4
008b510c  ab 46                                            mov fp, r5
008b510e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b5110  52 46                                            mov r2, sl
008b5112  5b 46                                            mov r3, fp
008b5114  14 60                                            str r4, [r2]
008b5116  02 20                                            movs r0, #2
008b5118  1d 60                                            str r5, [r3]
008b511a  f2 e7                                            b #0x8b5102
008b511c  53 46                                            mov r3, sl
008b511e  5a 46                                            mov r2, fp
008b5120  1c 60                                            str r4, [r3]
008b5122  01 20                                            movs r0, #1
008b5124  15 60                                            str r5, [r2]
008b5126  ec e7                                            b #0x8b5102

; FUNCTION 0x008b5128, declared_size=46, range_size=46, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNKSt14codecvt_bynameIwc9mbstate_tE11do_encodingEv
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::do_encoding() const
; decoder-mode: thumb
008b5128  70 b5                                            push {r4, r5, r6, lr}
008b512a  04 1c                                            adds r4, r0, #0
008b512c  c0 68                                            ldr r0, [r0, #0xc]
008b512e  01 f0 8f fc                                      bl #0x8b6a50
008b5132  00 28                                            cmp r0, #0
008b5134  02 d1                                            bne #0x8b513c
008b5136  01 20                                            movs r0, #1
008b5138  40 42                                            rsbs r0, r0, #0
008b513a  70 bd                                            pop {r4, r5, r6, pc}
008b513c  e0 68                                            ldr r0, [r4, #0xc]
008b513e  01 f0 83 fc                                      bl #0x8b6a48
008b5142  05 1c                                            adds r5, r0, #0
008b5144  e0 68                                            ldr r0, [r4, #0xc]
008b5146  01 f0 81 fc                                      bl #0x8b6a4c
008b514a  2d 1a                                            subs r5, r5, r0
008b514c  6b 42                                            rsbs r3, r5, #0
008b514e  6b 41                                            adcs r3, r5
008b5150  5b 42                                            rsbs r3, r3, #0
008b5152  18 40                                            ands r0, r3
008b5154  f1 e7                                            b #0x8b513a

; FUNCTION 0x008b5158, declared_size=52, range_size=52, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNKSt14codecvt_bynameIwc9mbstate_tE10do_unshiftERS0_PcS3_RS3_
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::do_unshift(mbstate_t&, char*, char*, char*&) const
; decoder-mode: thumb
008b5158  30 b5                                            push {r4, r5, lr}
008b515a  83 b0                                            sub sp, #0xc
008b515c  06 9d                                            ldr r5, [sp, #0x18]
008b515e  9b 1a                                            subs r3, r3, r2
008b5160  14 1c                                            adds r4, r2, #0
008b5162  2a 60                                            str r2, [r5]
008b5164  c0 68                                            ldr r0, [r0, #0xc]
008b5166  00 95                                            str r5, [sp]
008b5168  01 f0 7c fc                                      bl #0x8b6a64
008b516c  02 23                                            movs r3, #2
008b516e  42 1c                                            adds r2, r0, #1
008b5170  09 d0                                            beq #0x8b5186
008b5172  01 23                                            movs r3, #1
008b5174  02 30                                            adds r0, #2
008b5176  06 d0                                            beq #0x8b5186
008b5178  2a 68                                            ldr r2, [r5]
008b517a  03 23                                            movs r3, #3
008b517c  14 1b                                            subs r4, r2, r4
008b517e  62 42                                            rsbs r2, r4, #0
008b5180  62 41                                            adcs r2, r4
008b5182  52 42                                            rsbs r2, r2, #0
008b5184  13 40                                            ands r3, r2
008b5186  03 b0                                            add sp, #0xc
008b5188  18 1c                                            adds r0, r3, #0
008b518a  30 bd                                            pop {r4, r5, pc}

; FUNCTION 0x008b518c, declared_size=122, range_size=122, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNKSt14codecvt_bynameIwc9mbstate_tE6do_outERS0_PKwS4_RS4_PcS6_RS6_
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::do_out(mbstate_t&, wchar_t const*, wchar_t const*, wchar_t const*&, char*, char*, char*&) const
; decoder-mode: thumb
008b518c  f0 b5                                            push {r4, r5, r6, r7, lr}
008b518e  5f 46                                            mov r7, fp
008b5190  56 46                                            mov r6, sl
008b5192  4d 46                                            mov r5, sb
008b5194  44 46                                            mov r4, r8
008b5196  f0 b4                                            push {r4, r5, r6, r7}
008b5198  83 b0                                            sub sp, #0xc
008b519a  88 46                                            mov r8, r1
008b519c  99 46                                            mov sb, r3
008b519e  0c 99                                            ldr r1, [sp, #0x30]
008b51a0  0f 9b                                            ldr r3, [sp, #0x3c]
008b51a2  0d 9c                                            ldr r4, [sp, #0x34]
008b51a4  0e 9f                                            ldr r7, [sp, #0x38]
008b51a6  06 1c                                            adds r6, r0, #0
008b51a8  15 1c                                            adds r5, r2, #0
008b51aa  8a 46                                            mov sl, r1
008b51ac  9b 46                                            mov fp, r3
008b51ae  bc 42                                            cmp r4, r7
008b51b0  11 d0                                            beq #0x8b51d6
008b51b2  4d 45                                            cmp r5, sb
008b51b4  0f d0                                            beq #0x8b51d6
008b51b6  41 46                                            mov r1, r8
008b51b8  2b 68                                            ldr r3, [r5]
008b51ba  00 91                                            str r1, [sp]
008b51bc  f0 68                                            ldr r0, [r6, #0xc]
008b51be  3a 1b                                            subs r2, r7, r4
008b51c0  21 1c                                            adds r1, r4, #0
008b51c2  01 f0 4b fc                                      bl #0x8b6a5c
008b51c6  43 1c                                            adds r3, r0, #1
008b51c8  11 d0                                            beq #0x8b51ee
008b51ca  81 1c                                            adds r1, r0, #2
008b51cc  15 d0                                            beq #0x8b51fa
008b51ce  24 18                                            adds r4, r4, r0
008b51d0  04 35                                            adds r5, #4
008b51d2  a7 42                                            cmp r7, r4
008b51d4  ed d1                                            bne #0x8b51b2
008b51d6  53 46                                            mov r3, sl
008b51d8  59 46                                            mov r1, fp
008b51da  1d 60                                            str r5, [r3]
008b51dc  00 20                                            movs r0, #0
008b51de  0c 60                                            str r4, [r1]
008b51e0  03 b0                                            add sp, #0xc
008b51e2  3c bc                                            pop {r2, r3, r4, r5}
008b51e4  90 46                                            mov r8, r2
008b51e6  99 46                                            mov sb, r3
008b51e8  a2 46                                            mov sl, r4
008b51ea  ab 46                                            mov fp, r5
008b51ec  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b51ee  51 46                                            mov r1, sl
008b51f0  5b 46                                            mov r3, fp
008b51f2  0d 60                                            str r5, [r1]
008b51f4  02 20                                            movs r0, #2
008b51f6  1c 60                                            str r4, [r3]
008b51f8  f2 e7                                            b #0x8b51e0
008b51fa  53 46                                            mov r3, sl
008b51fc  59 46                                            mov r1, fp
008b51fe  1d 60                                            str r5, [r3]
008b5200  01 20                                            movs r0, #1
008b5202  0c 60                                            str r4, [r1]
008b5204  ec e7                                            b #0x8b51e0

; FUNCTION 0x008b5208, declared_size=40, range_size=40, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNSt14codecvt_bynameIwc9mbstate_tED1Ev
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::~codecvt_byname()
; decoder-mode: thumb
008b5208  10 b5                                            push {r4, lr}
008b520a  07 4b                                            ldr r3, [pc, #0x1c]
008b520c  07 4a                                            ldr r2, [pc, #0x1c]
008b520e  04 1c                                            adds r4, r0, #0
008b5210  7b 44                                            add r3, pc
008b5212  9a 58                                            ldr r2, [r3, r2]
008b5214  08 32                                            adds r2, #8
008b5216  02 60                                            str r2, [r0]
008b5218  c0 68                                            ldr r0, [r0, #0xc]
008b521a  fe f7 a5 fd                                      bl #0x8b3d68
008b521e  20 1c                                            adds r0, r4, #0
008b5220  03 f0 fe fe                                      bl #0x8b9020
008b5224  20 1c                                            adds r0, r4, #0
008b5226  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b5228  84 f8 0d 00 1c 0b 00 00                          .byte 0x84, 0xf8, 0x0d, 0x00, 0x1c, 0x0b, 0x00, 0x00

; FUNCTION 0x008b5230, declared_size=18, range_size=18, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNSt14codecvt_bynameIwc9mbstate_tED0Ev
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::~codecvt_byname()
; decoder-mode: thumb
008b5230  10 b5                                            push {r4, lr}
008b5232  04 1c                                            adds r4, r0, #0
008b5234  ff f7 e8 ff                                      bl #0x8b5208
008b5238  20 1c                                            adds r0, r4, #0
008b523a  59 f6 3a e0                                      blx #0x30e2b0
008b523e  20 1c                                            adds r0, r4, #0
008b5240  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b5244, declared_size=40, range_size=40, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNSt14codecvt_bynameIwc9mbstate_tED2Ev
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::~codecvt_byname()
; decoder-mode: thumb
008b5244  10 b5                                            push {r4, lr}
008b5246  07 4b                                            ldr r3, [pc, #0x1c]
008b5248  07 4a                                            ldr r2, [pc, #0x1c]
008b524a  04 1c                                            adds r4, r0, #0
008b524c  7b 44                                            add r3, pc
008b524e  9a 58                                            ldr r2, [r3, r2]
008b5250  08 32                                            adds r2, #8
008b5252  02 60                                            str r2, [r0]
008b5254  c0 68                                            ldr r0, [r0, #0xc]
008b5256  fe f7 87 fd                                      bl #0x8b3d68
008b525a  20 1c                                            adds r0, r4, #0
008b525c  03 f0 e0 fe                                      bl #0x8b9020
008b5260  20 1c                                            adds r0, r4, #0
008b5262  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b5264  48 f8 0d 00 1c 0b 00 00                          .byte 0x48, 0xf8, 0x0d, 0x00, 0x1c, 0x0b, 0x00, 0x00

; FUNCTION 0x008b5ca4, declared_size=124, range_size=124, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNSt14codecvt_bynameIwc9mbstate_tEC1EPKcj
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::codecvt_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5ca4  70 b5                                            push {r4, r5, r6, lr}
008b5ca6  1a 4c                                            ldr r4, [pc, #0x68]
008b5ca8  1a 4e                                            ldr r6, [pc, #0x68]
008b5caa  c4 b0                                            sub sp, #0x110
008b5cac  7c 44                                            add r4, pc
008b5cae  a3 59                                            ldr r3, [r4, r6]
008b5cb0  01 91                                            str r1, [sp, #4]
008b5cb2  05 1c                                            adds r5, r0, #0
008b5cb4  1b 68                                            ldr r3, [r3]
008b5cb6  00 21                                            movs r1, #0
008b5cb8  43 93                                            str r3, [sp, #0x10c]
008b5cba  53 1e                                            subs r3, r2, #1
008b5cbc  9a 41                                            sbcs r2, r3
008b5cbe  42 60                                            str r2, [r0, #4]
008b5cc0  08 30                                            adds r0, #8
008b5cc2  58 f6 76 e1                                      blx #0x30dfb0
008b5cc6  14 4b                                            ldr r3, [pc, #0x50]
008b5cc8  e3 58                                            ldr r3, [r4, r3]
008b5cca  08 33                                            adds r3, #8
008b5ccc  2b 60                                            str r3, [r5]
008b5cce  01 9b                                            ldr r3, [sp, #4]
008b5cd0  00 2b                                            cmp r3, #0
008b5cd2  17 d0                                            beq #0x8b5d04
008b5cd4  01 a8                                            add r0, sp, #4
008b5cd6  03 a9                                            add r1, sp, #0xc
008b5cd8  00 22                                            movs r2, #0
008b5cda  02 ab                                            add r3, sp, #8
008b5cdc  fe f7 a8 fa                                      bl #0x8b4230
008b5ce0  e8 60                                            str r0, [r5, #0xc]
008b5ce2  00 28                                            cmp r0, #0
008b5ce4  07 d0                                            beq #0x8b5cf6
008b5ce6  a3 59                                            ldr r3, [r4, r6]
008b5ce8  43 9a                                            ldr r2, [sp, #0x10c]
008b5cea  28 1c                                            adds r0, r5, #0
008b5cec  1b 68                                            ldr r3, [r3]
008b5cee  9a 42                                            cmp r2, r3
008b5cf0  0b d1                                            bne #0x8b5d0a
008b5cf2  44 b0                                            add sp, #0x110
008b5cf4  70 bd                                            pop {r4, r5, r6, pc}
008b5cf6  09 4a                                            ldr r2, [pc, #0x24]
008b5cf8  02 98                                            ldr r0, [sp, #8]
008b5cfa  01 99                                            ldr r1, [sp, #4]
008b5cfc  7a 44                                            add r2, pc
008b5cfe  ee f7 67 fd                                      bl #0x8a47d0
008b5d02  f0 e7                                            b #0x8b5ce6
008b5d04  ed f7 dc fb                                      bl #0x8a34c0
008b5d08  e4 e7                                            b #0x8b5cd4
008b5d0a  58 f6 02 e3                                      blx #0x30e310
008b5d0e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5d10  e8 ed 0d 00 ac 40 00 00 1c 0b 00 00 24 ff 05 00  .byte 0xe8, 0xed, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0x0b, 0x00, 0x00, 0x24, 0xff, 0x05, 0x00

; FUNCTION 0x008b5d20, declared_size=124, range_size=124, mode=thumb
; class-group: std::codecvt_byname<wchar_t, char, mbstate_t>
; alias: _ZNSt14codecvt_bynameIwc9mbstate_tEC2EPKcj
; demangled: std::codecvt_byname<wchar_t, char, mbstate_t>::codecvt_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5d20  70 b5                                            push {r4, r5, r6, lr}
008b5d22  1a 4c                                            ldr r4, [pc, #0x68]
008b5d24  1a 4e                                            ldr r6, [pc, #0x68]
008b5d26  c4 b0                                            sub sp, #0x110
008b5d28  7c 44                                            add r4, pc
008b5d2a  a3 59                                            ldr r3, [r4, r6]
008b5d2c  01 91                                            str r1, [sp, #4]
008b5d2e  05 1c                                            adds r5, r0, #0
008b5d30  1b 68                                            ldr r3, [r3]
008b5d32  00 21                                            movs r1, #0
008b5d34  43 93                                            str r3, [sp, #0x10c]
008b5d36  53 1e                                            subs r3, r2, #1
008b5d38  9a 41                                            sbcs r2, r3
008b5d3a  42 60                                            str r2, [r0, #4]
008b5d3c  08 30                                            adds r0, #8
008b5d3e  58 f6 38 e1                                      blx #0x30dfb0
008b5d42  14 4b                                            ldr r3, [pc, #0x50]
008b5d44  e3 58                                            ldr r3, [r4, r3]
008b5d46  08 33                                            adds r3, #8
008b5d48  2b 60                                            str r3, [r5]
008b5d4a  01 9b                                            ldr r3, [sp, #4]
008b5d4c  00 2b                                            cmp r3, #0
008b5d4e  17 d0                                            beq #0x8b5d80
008b5d50  01 a8                                            add r0, sp, #4
008b5d52  03 a9                                            add r1, sp, #0xc
008b5d54  00 22                                            movs r2, #0
008b5d56  02 ab                                            add r3, sp, #8
008b5d58  fe f7 6a fa                                      bl #0x8b4230
008b5d5c  e8 60                                            str r0, [r5, #0xc]
008b5d5e  00 28                                            cmp r0, #0
008b5d60  07 d0                                            beq #0x8b5d72
008b5d62  a3 59                                            ldr r3, [r4, r6]
008b5d64  43 9a                                            ldr r2, [sp, #0x10c]
008b5d66  28 1c                                            adds r0, r5, #0
008b5d68  1b 68                                            ldr r3, [r3]
008b5d6a  9a 42                                            cmp r2, r3
008b5d6c  0b d1                                            bne #0x8b5d86
008b5d6e  44 b0                                            add sp, #0x110
008b5d70  70 bd                                            pop {r4, r5, r6, pc}
008b5d72  09 4a                                            ldr r2, [pc, #0x24]
008b5d74  02 98                                            ldr r0, [sp, #8]
008b5d76  01 99                                            ldr r1, [sp, #4]
008b5d78  7a 44                                            add r2, pc
008b5d7a  ee f7 29 fd                                      bl #0x8a47d0
008b5d7e  f0 e7                                            b #0x8b5d62
008b5d80  ed f7 9e fb                                      bl #0x8a34c0
008b5d84  e4 e7                                            b #0x8b5d50
008b5d86  58 f6 c4 e2                                      blx #0x30e310
008b5d8a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5d8c  6c ed 0d 00 ac 40 00 00 1c 0b 00 00 a8 fe 05 00  .byte 0x6c, 0xed, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0x0b, 0x00, 0x00, 0xa8, 0xfe, 0x05, 0x00
