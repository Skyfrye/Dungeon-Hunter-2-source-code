; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4b88, declared_size=108, range_size=108, mode=thumb
; class-group: char* std::priv
; alias: _ZNSt4priv24__write_decimal_backwardIlEEPcS1_T_iRKSt11__true_type
; demangled: char* std::priv::__write_decimal_backward<long>(char*, long, int, std::__true_type const&)
; decoder-mode: thumb
008a4b88  f0 b5                                            push {r4, r5, r6, r7, lr}
008a4b8a  47 46                                            mov r7, r8
008a4b8c  80 b4                                            push {r7}
008a4b8e  cf 0f                                            lsrs r7, r1, #0x1f
008a4b90  06 1c                                            adds r6, r0, #0
008a4b92  90 46                                            mov r8, r2
008a4b94  0b 1c                                            adds r3, r1, #0
008a4b96  cc 17                                            asrs r4, r1, #0x1f
008a4b98  00 2f                                            cmp r7, #0
008a4b9a  03 d0                                            beq #0x8a4ba4
008a4b9c  22 1c                                            adds r2, r4, #0
008a4b9e  00 24                                            movs r4, #0
008a4ba0  4b 42                                            rsbs r3, r1, #0
008a4ba2  94 41                                            sbcs r4, r2
008a4ba4  1a 1c                                            adds r2, r3, #0
008a4ba6  1d 1c                                            adds r5, r3, #0
008a4ba8  22 43                                            orrs r2, r4
008a4baa  13 d0                                            beq #0x8a4bd4
008a4bac  28 1c                                            adds r0, r5, #0
008a4bae  21 1c                                            adds r1, r4, #0
008a4bb0  0a 22                                            movs r2, #0xa
008a4bb2  00 23                                            movs r3, #0
008a4bb4  69 f6 8e e6                                      blx #0x30e8d4
008a4bb8  01 3e                                            subs r6, #1
008a4bba  30 32                                            adds r2, #0x30
008a4bbc  32 70                                            strb r2, [r6]
008a4bbe  28 1c                                            adds r0, r5, #0
008a4bc0  21 1c                                            adds r1, r4, #0
008a4bc2  0a 22                                            movs r2, #0xa
008a4bc4  00 23                                            movs r3, #0
008a4bc6  69 f6 86 e6                                      blx #0x30e8d4
008a4bca  03 1c                                            adds r3, r0, #0
008a4bcc  05 1c                                            adds r5, r0, #0
008a4bce  0c 1c                                            adds r4, r1, #0
008a4bd0  0b 43                                            orrs r3, r1
008a4bd2  eb d1                                            bne #0x8a4bac
008a4bd4  00 2f                                            cmp r7, #0
008a4bd6  09 d1                                            bne #0x8a4bec
008a4bd8  41 46                                            mov r1, r8
008a4bda  09 05                                            lsls r1, r1, #0x14
008a4bdc  02 d5                                            bpl #0x8a4be4
008a4bde  01 3e                                            subs r6, #1
008a4be0  2b 23                                            movs r3, #0x2b
008a4be2  33 70                                            strb r3, [r6]
008a4be4  30 1c                                            adds r0, r6, #0
008a4be6  04 bc                                            pop {r2}
008a4be8  90 46                                            mov r8, r2
008a4bea  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a4bec  01 3e                                            subs r6, #1
008a4bee  2d 23                                            movs r3, #0x2d
008a4bf0  33 70                                            strb r3, [r6]
008a4bf2  f7 e7                                            b #0x8a4be4

; FUNCTION 0x008a4bf4, declared_size=100, range_size=100, mode=thumb
; class-group: char* std::priv
; alias: _ZNSt4priv24__write_decimal_backwardIxEEPcS1_T_iRKSt11__true_type
; demangled: char* std::priv::__write_decimal_backward<long long>(char*, long long, int, std::__true_type const&)
; decoder-mode: thumb
008a4bf4  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a4bf6  11 1c                                            adds r1, r2, #0
008a4bf8  df 0f                                            lsrs r7, r3, #0x1f
008a4bfa  1a 1c                                            adds r2, r3, #0
008a4bfc  06 1c                                            adds r6, r0, #0
008a4bfe  00 24                                            movs r4, #0
008a4c00  4b 42                                            rsbs r3, r1, #0
008a4c02  94 41                                            sbcs r4, r2
008a4c04  00 2f                                            cmp r7, #0
008a4c06  01 d1                                            bne #0x8a4c0c
008a4c08  0b 1c                                            adds r3, r1, #0
008a4c0a  14 1c                                            adds r4, r2, #0
008a4c0c  1a 1c                                            adds r2, r3, #0
008a4c0e  1d 1c                                            adds r5, r3, #0
008a4c10  22 43                                            orrs r2, r4
008a4c12  13 d0                                            beq #0x8a4c3c
008a4c14  28 1c                                            adds r0, r5, #0
008a4c16  21 1c                                            adds r1, r4, #0
008a4c18  0a 22                                            movs r2, #0xa
008a4c1a  00 23                                            movs r3, #0
008a4c1c  69 f6 5a e6                                      blx #0x30e8d4
008a4c20  01 3e                                            subs r6, #1
008a4c22  30 32                                            adds r2, #0x30
008a4c24  32 70                                            strb r2, [r6]
008a4c26  28 1c                                            adds r0, r5, #0
008a4c28  21 1c                                            adds r1, r4, #0
008a4c2a  0a 22                                            movs r2, #0xa
008a4c2c  00 23                                            movs r3, #0
008a4c2e  69 f6 52 e6                                      blx #0x30e8d4
008a4c32  03 1c                                            adds r3, r0, #0
008a4c34  05 1c                                            adds r5, r0, #0
008a4c36  0c 1c                                            adds r4, r1, #0
008a4c38  0b 43                                            orrs r3, r1
008a4c3a  eb d1                                            bne #0x8a4c14
008a4c3c  00 2f                                            cmp r7, #0
008a4c3e  07 d1                                            bne #0x8a4c50
008a4c40  06 9b                                            ldr r3, [sp, #0x18]
008a4c42  1a 05                                            lsls r2, r3, #0x14
008a4c44  02 d5                                            bpl #0x8a4c4c
008a4c46  01 3e                                            subs r6, #1
008a4c48  2b 23                                            movs r3, #0x2b
008a4c4a  33 70                                            strb r3, [r6]
008a4c4c  30 1c                                            adds r0, r6, #0
008a4c4e  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008a4c50  01 3e                                            subs r6, #1
008a4c52  2d 23                                            movs r3, #0x2d
008a4c54  33 70                                            strb r3, [r6]
008a4c56  f9 e7                                            b #0x8a4c4c

; FUNCTION 0x008a4f84, declared_size=202, range_size=202, mode=thumb
; class-group: char* std::priv
; alias: _ZNSt4priv24__write_integer_backwardImEEPcS1_iT_
; demangled: char* std::priv::__write_integer_backward<unsigned long>(char*, int, unsigned long)
; decoder-mode: thumb
008a4f84  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a4f86  06 1c                                            adds r6, r0, #0
008a4f88  0f 1c                                            adds r7, r1, #0
008a4f8a  15 1e                                            subs r5, r2, #0
008a4f8c  0b d1                                            bne #0x8a4fa6
008a4f8e  30 23                                            movs r3, #0x30
008a4f90  44 1e                                            subs r4, r0, #1
008a4f92  23 70                                            strb r3, [r4]
008a4f94  83 23                                            movs r3, #0x83
008a4f96  1b 01                                            lsls r3, r3, #4
008a4f98  1f 40                                            ands r7, r3
008a4f9a  80 23                                            movs r3, #0x80
008a4f9c  1b 01                                            lsls r3, r3, #4
008a4f9e  9f 42                                            cmp r7, r3
008a4fa0  3a d0                                            beq #0x8a5018
008a4fa2  20 1c                                            adds r0, r4, #0
008a4fa4  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008a4fa6  38 23                                            movs r3, #0x38
008a4fa8  0b 40                                            ands r3, r1
008a4faa  10 2b                                            cmp r3, #0x10
008a4fac  15 d0                                            beq #0x8a4fda
008a4fae  04 1c                                            adds r4, r0, #0
008a4fb0  20 2b                                            cmp r3, #0x20
008a4fb2  35 d0                                            beq #0x8a5020
008a4fb4  28 1c                                            adds r0, r5, #0
008a4fb6  0a 21                                            movs r1, #0xa
008a4fb8  69 f6 b8 e5                                      blx #0x30eb2c
008a4fbc  01 3c                                            subs r4, #1
008a4fbe  30 31                                            adds r1, #0x30
008a4fc0  21 70                                            strb r1, [r4]
008a4fc2  28 1c                                            adds r0, r5, #0
008a4fc4  0a 21                                            movs r1, #0xa
008a4fc6  69 f6 42 e6                                      blx #0x30ec4c
008a4fca  05 1e                                            subs r5, r0, #0
008a4fcc  f2 d1                                            bne #0x8a4fb4
008a4fce  3b 05                                            lsls r3, r7, #0x14
008a4fd0  e7 d5                                            bpl #0x8a4fa2
008a4fd2  01 3c                                            subs r4, #1
008a4fd4  2b 23                                            movs r3, #0x2b
008a4fd6  23 70                                            strb r3, [r4]
008a4fd8  e3 e7                                            b #0x8a4fa2
008a4fda  79 04                                            lsls r1, r7, #0x11
008a4fdc  34 d5                                            bpl #0x8a5048
008a4fde  14 f0 ef fc                                      bl #0x8b99c0
008a4fe2  2b 1c                                            adds r3, r5, #0
008a4fe4  00 22                                            movs r2, #0
008a4fe6  34 1c                                            adds r4, r6, #0
008a4fe8  00 2d                                            cmp r5, #0
008a4fea  0c d0                                            beq #0x8a5006
008a4fec  0f 25                                            movs r5, #0xf
008a4fee  29 1c                                            adds r1, r5, #0
008a4ff0  19 40                                            ands r1, r3
008a4ff2  41 5c                                            ldrb r1, [r0, r1]
008a4ff4  01 3c                                            subs r4, #1
008a4ff6  1b 09                                            lsrs r3, r3, #4
008a4ff8  21 70                                            strb r1, [r4]
008a4ffa  11 07                                            lsls r1, r2, #0x1c
008a4ffc  0b 43                                            orrs r3, r1
008a4ffe  12 09                                            lsrs r2, r2, #4
008a5000  19 1c                                            adds r1, r3, #0
008a5002  11 43                                            orrs r1, r2
008a5004  f3 d1                                            bne #0x8a4fee
008a5006  ba 05                                            lsls r2, r7, #0x16
008a5008  cb d5                                            bpl #0x8a4fa2
008a500a  02 7c                                            ldrb r2, [r0, #0x10]
008a500c  63 1e                                            subs r3, r4, #1
008a500e  02 3c                                            subs r4, #2
008a5010  1a 70                                            strb r2, [r3]
008a5012  30 23                                            movs r3, #0x30
008a5014  23 70                                            strb r3, [r4]
008a5016  c4 e7                                            b #0x8a4fa2
008a5018  84 1e                                            subs r4, r0, #2
008a501a  2b 23                                            movs r3, #0x2b
008a501c  23 70                                            strb r3, [r4]
008a501e  c0 e7                                            b #0x8a4fa2
008a5020  00 23                                            movs r3, #0
008a5022  07 21                                            movs r1, #7
008a5024  2a 1c                                            adds r2, r5, #0
008a5026  0a 40                                            ands r2, r1
008a5028  30 32                                            adds r2, #0x30
008a502a  01 3c                                            subs r4, #1
008a502c  22 70                                            strb r2, [r4]
008a502e  ed 08                                            lsrs r5, r5, #3
008a5030  5a 07                                            lsls r2, r3, #0x1d
008a5032  15 43                                            orrs r5, r2
008a5034  db 08                                            lsrs r3, r3, #3
008a5036  2a 1c                                            adds r2, r5, #0
008a5038  1a 43                                            orrs r2, r3
008a503a  f3 d1                                            bne #0x8a5024
008a503c  bb 05                                            lsls r3, r7, #0x16
008a503e  b0 d5                                            bpl #0x8a4fa2
008a5040  01 3c                                            subs r4, #1
008a5042  30 23                                            movs r3, #0x30
008a5044  23 70                                            strb r3, [r4]
008a5046  ac e7                                            b #0x8a4fa2
008a5048  14 f0 b4 fc                                      bl #0x8b99b4
008a504c  c9 e7                                            b #0x8a4fe2

; FUNCTION 0x008a5050, declared_size=228, range_size=228, mode=thumb
; class-group: char* std::priv
; alias: _ZNSt4priv24__write_integer_backwardIyEEPcS1_iT_
; demangled: char* std::priv::__write_integer_backward<unsigned long long>(char*, int, unsigned long long)
; decoder-mode: thumb
008a5050  f0 b5                                            push {r4, r5, r6, r7, lr}
008a5052  47 46                                            mov r7, r8
008a5054  80 b4                                            push {r7}
008a5056  07 1c                                            adds r7, r0, #0
008a5058  88 46                                            mov r8, r1
008a505a  16 1c                                            adds r6, r2, #0
008a505c  1d 1c                                            adds r5, r3, #0
008a505e  1a 43                                            orrs r2, r3
008a5060  0e d1                                            bne #0x8a5080
008a5062  30 23                                            movs r3, #0x30
008a5064  44 1e                                            subs r4, r0, #1
008a5066  23 70                                            strb r3, [r4]
008a5068  83 23                                            movs r3, #0x83
008a506a  1b 01                                            lsls r3, r3, #4
008a506c  0a 1c                                            adds r2, r1, #0
008a506e  1a 40                                            ands r2, r3
008a5070  80 23                                            movs r3, #0x80
008a5072  1b 01                                            lsls r3, r3, #4
008a5074  9a 42                                            cmp r2, r3
008a5076  42 d0                                            beq #0x8a50fe
008a5078  20 1c                                            adds r0, r4, #0
008a507a  04 bc                                            pop {r2}
008a507c  90 46                                            mov r8, r2
008a507e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a5080  38 23                                            movs r3, #0x38
008a5082  0b 40                                            ands r3, r1
008a5084  10 2b                                            cmp r3, #0x10
008a5086  1d d0                                            beq #0x8a50c4
008a5088  04 1c                                            adds r4, r0, #0
008a508a  20 2b                                            cmp r3, #0x20
008a508c  3b d0                                            beq #0x8a5106
008a508e  30 1c                                            adds r0, r6, #0
008a5090  29 1c                                            adds r1, r5, #0
008a5092  0a 22                                            movs r2, #0xa
008a5094  00 23                                            movs r3, #0
008a5096  69 f6 1e e4                                      blx #0x30e8d4
008a509a  01 3c                                            subs r4, #1
008a509c  30 32                                            adds r2, #0x30
008a509e  22 70                                            strb r2, [r4]
008a50a0  30 1c                                            adds r0, r6, #0
008a50a2  29 1c                                            adds r1, r5, #0
008a50a4  0a 22                                            movs r2, #0xa
008a50a6  00 23                                            movs r3, #0
008a50a8  69 f6 14 e4                                      blx #0x30e8d4
008a50ac  03 1c                                            adds r3, r0, #0
008a50ae  06 1c                                            adds r6, r0, #0
008a50b0  0d 1c                                            adds r5, r1, #0
008a50b2  0b 43                                            orrs r3, r1
008a50b4  eb d1                                            bne #0x8a508e
008a50b6  42 46                                            mov r2, r8
008a50b8  12 05                                            lsls r2, r2, #0x14
008a50ba  dd d5                                            bpl #0x8a5078
008a50bc  01 3c                                            subs r4, #1
008a50be  2b 23                                            movs r3, #0x2b
008a50c0  23 70                                            strb r3, [r4]
008a50c2  d9 e7                                            b #0x8a5078
008a50c4  0b 1c                                            adds r3, r1, #0
008a50c6  5b 04                                            lsls r3, r3, #0x11
008a50c8  31 d5                                            bpl #0x8a512e
008a50ca  14 f0 79 fc                                      bl #0x8b99c0
008a50ce  3c 1c                                            adds r4, r7, #0
008a50d0  0f 22                                            movs r2, #0xf
008a50d2  13 1c                                            adds r3, r2, #0
008a50d4  33 40                                            ands r3, r6
008a50d6  c3 5c                                            ldrb r3, [r0, r3]
008a50d8  01 3c                                            subs r4, #1
008a50da  36 09                                            lsrs r6, r6, #4
008a50dc  23 70                                            strb r3, [r4]
008a50de  2b 07                                            lsls r3, r5, #0x1c
008a50e0  1e 43                                            orrs r6, r3
008a50e2  2d 09                                            lsrs r5, r5, #4
008a50e4  33 1c                                            adds r3, r6, #0
008a50e6  2b 43                                            orrs r3, r5
008a50e8  f3 d1                                            bne #0x8a50d2
008a50ea  42 46                                            mov r2, r8
008a50ec  92 05                                            lsls r2, r2, #0x16
008a50ee  c3 d5                                            bpl #0x8a5078
008a50f0  02 7c                                            ldrb r2, [r0, #0x10]
008a50f2  63 1e                                            subs r3, r4, #1
008a50f4  02 3c                                            subs r4, #2
008a50f6  1a 70                                            strb r2, [r3]
008a50f8  30 23                                            movs r3, #0x30
008a50fa  23 70                                            strb r3, [r4]
008a50fc  bc e7                                            b #0x8a5078
008a50fe  84 1e                                            subs r4, r0, #2
008a5100  2b 23                                            movs r3, #0x2b
008a5102  23 70                                            strb r3, [r4]
008a5104  b8 e7                                            b #0x8a5078
008a5106  07 22                                            movs r2, #7
008a5108  33 1c                                            adds r3, r6, #0
008a510a  13 40                                            ands r3, r2
008a510c  30 33                                            adds r3, #0x30
008a510e  01 3c                                            subs r4, #1
008a5110  23 70                                            strb r3, [r4]
008a5112  f6 08                                            lsrs r6, r6, #3
008a5114  6b 07                                            lsls r3, r5, #0x1d
008a5116  1e 43                                            orrs r6, r3
008a5118  ed 08                                            lsrs r5, r5, #3
008a511a  33 1c                                            adds r3, r6, #0
008a511c  2b 43                                            orrs r3, r5
008a511e  f3 d1                                            bne #0x8a5108
008a5120  42 46                                            mov r2, r8
008a5122  92 05                                            lsls r2, r2, #0x16
008a5124  a8 d5                                            bpl #0x8a5078
008a5126  01 3c                                            subs r4, #1
008a5128  30 23                                            movs r3, #0x30
008a512a  23 70                                            strb r3, [r4]
008a512c  a4 e7                                            b #0x8a5078
008a512e  14 f0 41 fc                                      bl #0x8b99b4
008a5132  cc e7                                            b #0x8a50ce

; FUNCTION 0x008a5134, declared_size=178, range_size=178, mode=thumb
; class-group: char* std::priv
; alias: _ZNSt4priv24__write_integer_backwardIxEEPcS1_iT_
; demangled: char* std::priv::__write_integer_backward<long long>(char*, int, long long)
; decoder-mode: thumb
008a5134  f0 b5                                            push {r4, r5, r6, r7, lr}
008a5136  1d 1c                                            adds r5, r3, #0
008a5138  13 1c                                            adds r3, r2, #0
008a513a  85 b0                                            sub sp, #0x14
008a513c  07 1c                                            adds r7, r0, #0
008a513e  0c 1c                                            adds r4, r1, #0
008a5140  16 1c                                            adds r6, r2, #0
008a5142  2b 43                                            orrs r3, r5
008a5144  0b d1                                            bne #0x8a515e
008a5146  30 23                                            movs r3, #0x30
008a5148  01 38                                            subs r0, #1
008a514a  03 70                                            strb r3, [r0]
008a514c  83 23                                            movs r3, #0x83
008a514e  1b 01                                            lsls r3, r3, #4
008a5150  1c 40                                            ands r4, r3
008a5152  80 23                                            movs r3, #0x80
008a5154  1b 01                                            lsls r3, r3, #4
008a5156  9c 42                                            cmp r4, r3
008a5158  2a d0                                            beq #0x8a51b0
008a515a  05 b0                                            add sp, #0x14
008a515c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a515e  38 23                                            movs r3, #0x38
008a5160  0b 40                                            ands r3, r1
008a5162  10 2b                                            cmp r3, #0x10
008a5164  08 d0                                            beq #0x8a5178
008a5166  20 2b                                            cmp r3, #0x20
008a5168  26 d0                                            beq #0x8a51b8
008a516a  03 ab                                            add r3, sp, #0xc
008a516c  01 93                                            str r3, [sp, #4]
008a516e  2b 1c                                            adds r3, r5, #0
008a5170  00 91                                            str r1, [sp]
008a5172  ff f7 3f fd                                      bl #0x8a4bf4
008a5176  f0 e7                                            b #0x8a515a
008a5178  4b 04                                            lsls r3, r1, #0x11
008a517a  30 d5                                            bpl #0x8a51de
008a517c  14 f0 20 fc                                      bl #0x8b99c0
008a5180  02 1c                                            adds r2, r0, #0
008a5182  38 1c                                            adds r0, r7, #0
008a5184  0f 21                                            movs r1, #0xf
008a5186  0b 1c                                            adds r3, r1, #0
008a5188  33 40                                            ands r3, r6
008a518a  d3 5c                                            ldrb r3, [r2, r3]
008a518c  01 38                                            subs r0, #1
008a518e  36 09                                            lsrs r6, r6, #4
008a5190  03 70                                            strb r3, [r0]
008a5192  2b 07                                            lsls r3, r5, #0x1c
008a5194  1e 43                                            orrs r6, r3
008a5196  2d 09                                            lsrs r5, r5, #4
008a5198  33 1c                                            adds r3, r6, #0
008a519a  2b 43                                            orrs r3, r5
008a519c  f3 d1                                            bne #0x8a5186
008a519e  a3 05                                            lsls r3, r4, #0x16
008a51a0  db d5                                            bpl #0x8a515a
008a51a2  12 7c                                            ldrb r2, [r2, #0x10]
008a51a4  43 1e                                            subs r3, r0, #1
008a51a6  02 38                                            subs r0, #2
008a51a8  1a 70                                            strb r2, [r3]
008a51aa  30 23                                            movs r3, #0x30
008a51ac  03 70                                            strb r3, [r0]
008a51ae  d4 e7                                            b #0x8a515a
008a51b0  b8 1e                                            subs r0, r7, #2
008a51b2  2b 23                                            movs r3, #0x2b
008a51b4  03 70                                            strb r3, [r0]
008a51b6  d0 e7                                            b #0x8a515a
008a51b8  07 22                                            movs r2, #7
008a51ba  33 1c                                            adds r3, r6, #0
008a51bc  13 40                                            ands r3, r2
008a51be  30 33                                            adds r3, #0x30
008a51c0  01 38                                            subs r0, #1
008a51c2  03 70                                            strb r3, [r0]
008a51c4  f6 08                                            lsrs r6, r6, #3
008a51c6  6b 07                                            lsls r3, r5, #0x1d
008a51c8  1e 43                                            orrs r6, r3
008a51ca  ed 08                                            lsrs r5, r5, #3
008a51cc  33 1c                                            adds r3, r6, #0
008a51ce  2b 43                                            orrs r3, r5
008a51d0  f3 d1                                            bne #0x8a51ba
008a51d2  a3 05                                            lsls r3, r4, #0x16
008a51d4  c1 d5                                            bpl #0x8a515a
008a51d6  01 38                                            subs r0, #1
008a51d8  30 23                                            movs r3, #0x30
008a51da  03 70                                            strb r3, [r0]
008a51dc  bd e7                                            b #0x8a515a
008a51de  14 f0 e9 fb                                      bl #0x8b99b4
008a51e2  02 1c                                            adds r2, r0, #0
008a51e4  cd e7                                            b #0x8a5182

; FUNCTION 0x008a51e8, declared_size=180, range_size=180, mode=thumb
; class-group: char* std::priv
; alias: _ZNSt4priv24__write_integer_backwardIlEEPcS1_iT_
; demangled: char* std::priv::__write_integer_backward<long>(char*, int, long)
; decoder-mode: thumb
008a51e8  f0 b5                                            push {r4, r5, r6, r7, lr}
008a51ea  83 b0                                            sub sp, #0xc
008a51ec  06 1c                                            adds r6, r0, #0
008a51ee  0c 1c                                            adds r4, r1, #0
008a51f0  15 1e                                            subs r5, r2, #0
008a51f2  0b d1                                            bne #0x8a520c
008a51f4  30 23                                            movs r3, #0x30
008a51f6  01 38                                            subs r0, #1
008a51f8  03 70                                            strb r3, [r0]
008a51fa  83 23                                            movs r3, #0x83
008a51fc  1b 01                                            lsls r3, r3, #4
008a51fe  1c 40                                            ands r4, r3
008a5200  80 23                                            movs r3, #0x80
008a5202  1b 01                                            lsls r3, r3, #4
008a5204  9c 42                                            cmp r4, r3
008a5206  2d d0                                            beq #0x8a5264
008a5208  03 b0                                            add sp, #0xc
008a520a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a520c  38 23                                            movs r3, #0x38
008a520e  0b 40                                            ands r3, r1
008a5210  10 2b                                            cmp r3, #0x10
008a5212  07 d0                                            beq #0x8a5224
008a5214  20 2b                                            cmp r3, #0x20
008a5216  29 d0                                            beq #0x8a526c
008a5218  29 1c                                            adds r1, r5, #0
008a521a  22 1c                                            adds r2, r4, #0
008a521c  01 ab                                            add r3, sp, #4
008a521e  ff f7 b3 fc                                      bl #0x8a4b88
008a5222  f1 e7                                            b #0x8a5208
008a5224  61 04                                            lsls r1, r4, #0x11
008a5226  35 d5                                            bpl #0x8a5294
008a5228  14 f0 ca fb                                      bl #0x8b99c0
008a522c  07 1c                                            adds r7, r0, #0
008a522e  2b 1c                                            adds r3, r5, #0
008a5230  00 22                                            movs r2, #0
008a5232  30 1c                                            adds r0, r6, #0
008a5234  00 2d                                            cmp r5, #0
008a5236  0c d0                                            beq #0x8a5252
008a5238  0f 25                                            movs r5, #0xf
008a523a  29 1c                                            adds r1, r5, #0
008a523c  19 40                                            ands r1, r3
008a523e  79 5c                                            ldrb r1, [r7, r1]
008a5240  01 38                                            subs r0, #1
008a5242  1b 09                                            lsrs r3, r3, #4
008a5244  01 70                                            strb r1, [r0]
008a5246  11 07                                            lsls r1, r2, #0x1c
008a5248  0b 43                                            orrs r3, r1
008a524a  12 09                                            lsrs r2, r2, #4
008a524c  19 1c                                            adds r1, r3, #0
008a524e  11 43                                            orrs r1, r2
008a5250  f3 d1                                            bne #0x8a523a
008a5252  a2 05                                            lsls r2, r4, #0x16
008a5254  d8 d5                                            bpl #0x8a5208
008a5256  3a 7c                                            ldrb r2, [r7, #0x10]
008a5258  43 1e                                            subs r3, r0, #1
008a525a  02 38                                            subs r0, #2
008a525c  1a 70                                            strb r2, [r3]
008a525e  30 23                                            movs r3, #0x30
008a5260  03 70                                            strb r3, [r0]
008a5262  d1 e7                                            b #0x8a5208
008a5264  b0 1e                                            subs r0, r6, #2
008a5266  2b 23                                            movs r3, #0x2b
008a5268  03 70                                            strb r3, [r0]
008a526a  cd e7                                            b #0x8a5208
008a526c  00 23                                            movs r3, #0
008a526e  07 21                                            movs r1, #7
008a5270  2a 1c                                            adds r2, r5, #0
008a5272  0a 40                                            ands r2, r1
008a5274  30 32                                            adds r2, #0x30
008a5276  01 38                                            subs r0, #1
008a5278  02 70                                            strb r2, [r0]
008a527a  ed 08                                            lsrs r5, r5, #3
008a527c  5a 07                                            lsls r2, r3, #0x1d
008a527e  15 43                                            orrs r5, r2
008a5280  db 08                                            lsrs r3, r3, #3
008a5282  2a 1c                                            adds r2, r5, #0
008a5284  1a 43                                            orrs r2, r3
008a5286  f3 d1                                            bne #0x8a5270
008a5288  a3 05                                            lsls r3, r4, #0x16
008a528a  bd d5                                            bpl #0x8a5208
008a528c  01 38                                            subs r0, #1
008a528e  30 23                                            movs r3, #0x30
008a5290  03 70                                            strb r3, [r0]
008a5292  b9 e7                                            b #0x8a5208
008a5294  14 f0 8e fb                                      bl #0x8b99b4
008a5298  07 1c                                            adds r7, r0, #0
008a529a  c8 e7                                            b #0x8a522e

; FUNCTION 0x008baca4, declared_size=180, range_size=180, mode=thumb
; class-group: char* std::priv
; alias: _ZNSt4priv9__find_ifIPcNS_8GroupPosEEET_S3_S3_T0_RKSt26random_access_iterator_tag
; demangled: char* std::priv::__find_if<char*, std::priv::GroupPos>(char*, char*, std::priv::GroupPos, std::random_access_iterator_tag const&)
; decoder-mode: thumb
008baca4  0b 1a                                            subs r3, r1, r0
008baca6  9a 10                                            asrs r2, r3, #2
008baca8  00 2a                                            cmp r2, #0
008bacaa  35 dd                                            ble #0x8bad18
008bacac  03 78                                            ldrb r3, [r0]
008bacae  2e 2b                                            cmp r3, #0x2e
008bacb0  29 d0                                            beq #0x8bad06
008bacb2  65 2b                                            cmp r3, #0x65
008bacb4  27 d0                                            beq #0x8bad06
008bacb6  45 2b                                            cmp r3, #0x45
008bacb8  25 d0                                            beq #0x8bad06
008bacba  01 30                                            adds r0, #1
008bacbc  03 78                                            ldrb r3, [r0]
008bacbe  2e 2b                                            cmp r3, #0x2e
008bacc0  21 d0                                            beq #0x8bad06
008bacc2  65 2b                                            cmp r3, #0x65
008bacc4  1f d0                                            beq #0x8bad06
008bacc6  45 2b                                            cmp r3, #0x45
008bacc8  1d d0                                            beq #0x8bad06
008bacca  43 78                                            ldrb r3, [r0, #1]
008baccc  65 2b                                            cmp r3, #0x65
008bacce  1d d0                                            beq #0x8bad0c
008bacd0  2e 2b                                            cmp r3, #0x2e
008bacd2  1b d0                                            beq #0x8bad0c
008bacd4  45 2b                                            cmp r3, #0x45
008bacd6  19 d0                                            beq #0x8bad0c
008bacd8  83 78                                            ldrb r3, [r0, #2]
008bacda  65 2b                                            cmp r3, #0x65
008bacdc  18 d0                                            beq #0x8bad10
008bacde  2e 2b                                            cmp r3, #0x2e
008bace0  16 d0                                            beq #0x8bad10
008bace2  45 2b                                            cmp r3, #0x45
008bace4  14 d0                                            beq #0x8bad10
008bace6  01 3a                                            subs r2, #1
008bace8  00 2a                                            cmp r2, #0
008bacea  13 d0                                            beq #0x8bad14
008bacec  c3 78                                            ldrb r3, [r0, #3]
008bacee  65 2b                                            cmp r3, #0x65
008bacf0  0a d0                                            beq #0x8bad08
008bacf2  2e 2b                                            cmp r3, #0x2e
008bacf4  08 d0                                            beq #0x8bad08
008bacf6  45 2b                                            cmp r3, #0x45
008bacf8  06 d0                                            beq #0x8bad08
008bacfa  04 30                                            adds r0, #4
008bacfc  03 78                                            ldrb r3, [r0]
008bacfe  65 2b                                            cmp r3, #0x65
008bad00  01 d0                                            beq #0x8bad06
008bad02  2e 2b                                            cmp r3, #0x2e
008bad04  df d1                                            bne #0x8bacc6
008bad06  70 47                                            bx lr
008bad08  03 30                                            adds r0, #3
008bad0a  fc e7                                            b #0x8bad06
008bad0c  01 30                                            adds r0, #1
008bad0e  fa e7                                            b #0x8bad06
008bad10  02 30                                            adds r0, #2
008bad12  f8 e7                                            b #0x8bad06
008bad14  03 30                                            adds r0, #3
008bad16  0b 1a                                            subs r3, r1, r0
008bad18  02 2b                                            cmp r3, #2
008bad1a  0d d0                                            beq #0x8bad38
008bad1c  03 2b                                            cmp r3, #3
008bad1e  03 d0                                            beq #0x8bad28
008bad20  01 2b                                            cmp r3, #1
008bad22  11 d0                                            beq #0x8bad48
008bad24  08 1c                                            adds r0, r1, #0
008bad26  ee e7                                            b #0x8bad06
008bad28  03 78                                            ldrb r3, [r0]
008bad2a  65 2b                                            cmp r3, #0x65
008bad2c  eb d0                                            beq #0x8bad06
008bad2e  2e 2b                                            cmp r3, #0x2e
008bad30  e9 d0                                            beq #0x8bad06
008bad32  45 2b                                            cmp r3, #0x45
008bad34  e7 d0                                            beq #0x8bad06
008bad36  01 30                                            adds r0, #1
008bad38  03 78                                            ldrb r3, [r0]
008bad3a  65 2b                                            cmp r3, #0x65
008bad3c  e3 d0                                            beq #0x8bad06
008bad3e  2e 2b                                            cmp r3, #0x2e
008bad40  e1 d0                                            beq #0x8bad06
008bad42  45 2b                                            cmp r3, #0x45
008bad44  df d0                                            beq #0x8bad06
008bad46  01 30                                            adds r0, #1
008bad48  03 78                                            ldrb r3, [r0]
008bad4a  65 2b                                            cmp r3, #0x65
008bad4c  db d0                                            beq #0x8bad06
008bad4e  2e 2b                                            cmp r3, #0x2e
008bad50  d9 d0                                            beq #0x8bad06
008bad52  45 2b                                            cmp r3, #0x45
008bad54  e6 d1                                            bne #0x8bad24
008bad56  d6 e7                                            b #0x8bad06
