; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0030f9b8, declared_size=272, range_size=272, mode=arm
; class-group: int std::priv
; alias: _ZNSt4priv9__get_numIcSt11char_traitsIcEfEEiRSt13basic_istreamIT_T0_ERT1_
; demangled: int std::priv::__get_num<char, std::char_traits<char>, float>(std::basic_istream<char, std::char_traits<char> >&, float&)
; decoder-mode: arm
0030f9b8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0030f9bc  00 40 a0 e1                                      mov r4, r0
0030f9c0  44 d0 4d e2                                      sub sp, sp, #0x44
0030f9c4  00 60 a0 e3                                      mov r6, #0
0030f9c8  01 70 a0 e1                                      mov r7, r1
0030f9cc  3c 00 8d e2                                      add r0, sp, #0x3c
0030f9d0  04 10 a0 e1                                      mov r1, r4
0030f9d4  38 60 8d e5                                      str r6, [sp, #0x38]
0030f9d8  e4 ff ff eb                                      bl #0x30f970
0030f9dc  3c 30 dd e5                                      ldrb r3, [sp, #0x3c]
0030f9e0  06 00 53 e1                                      cmp r3, r6
0030f9e4  02 00 00 1a                                      bne #0x30f9f4
0030f9e8  38 00 9d e5                                      ldr r0, [sp, #0x38]
0030f9ec  44 d0 8d e2                                      add sp, sp, #0x44
0030f9f0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0030f9f4  00 30 94 e5                                      ldr r3, [r4]
0030f9f8  34 50 8d e2                                      add r5, sp, #0x34
0030f9fc  05 00 a0 e1                                      mov r0, r5
0030fa00  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
0030fa04  01 10 84 e0                                      add r1, r4, r1
0030fa08  20 10 81 e2                                      add r1, r1, #0x20
0030fa0c  37 e5 0f eb                                      bl #0x708ef0
0030fa10  06 00 a0 e1                                      mov r0, r6
0030fa14  31 e5 0f eb                                      bl #0x708ee0
0030fa18  00 10 a0 e1                                      mov r1, r0
0030fa1c  05 00 a0 e1                                      mov r0, r5
0030fa20  1e e5 0f eb                                      bl #0x708ea0
0030fa24  00 30 94 e5                                      ldr r3, [r4]
0030fa28  00 10 a0 e3                                      mov r1, #0
0030fa2c  00 c0 a0 e3                                      mov ip, #0
0030fa30  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030fa34  03 30 84 e0                                      add r3, r4, r3
0030fa38  48 20 93 e5                                      ldr r2, [r3, #0x48]
0030fa3c  28 10 cd e5                                      strb r1, [sp, #0x28]
0030fa40  01 10 a0 e3                                      mov r1, #1
0030fa44  29 10 cd e5                                      strb r1, [sp, #0x29]
0030fa48  01 10 72 e2                                      rsbs r1, r2, #1
0030fa4c  00 10 a0 33                                      movlo r1, #0
0030fa50  31 10 cd e5                                      strb r1, [sp, #0x31]
0030fa54  2a 60 cd e5                                      strb r6, [sp, #0x2a]
0030fa58  30 c0 cd e5                                      strb ip, [sp, #0x30]
0030fa5c  32 60 cd e5                                      strb r6, [sp, #0x32]
0030fa60  2c 20 8d e5                                      str r2, [sp, #0x2c]
0030fa64  24 60 8d e5                                      str r6, [sp, #0x24]
0030fa68  00 c0 90 e5                                      ldr ip, [r0]
0030fa6c  00 10 a0 e1                                      mov r1, r0
0030fa70  28 00 9d e5                                      ldr r0, [sp, #0x28]
0030fa74  08 30 8d e5                                      str r3, [sp, #8]
0030fa78  38 30 8d e2                                      add r3, sp, #0x38
0030fa7c  04 00 8d e5                                      str r0, [sp, #4]
0030fa80  0c 30 8d e5                                      str r3, [sp, #0xc]
0030fa84  18 00 8d e2                                      add r0, sp, #0x18
0030fa88  30 30 9d e5                                      ldr r3, [sp, #0x30]
0030fa8c  00 60 8d e5                                      str r6, [sp]
0030fa90  10 70 8d e5                                      str r7, [sp, #0x10]
0030fa94  0f e0 a0 e1                                      mov lr, pc
0030fa98  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0030fa9c  05 00 a0 e1                                      mov r0, r5
0030faa0  ee e4 0f eb                                      bl #0x708e60
0030faa4  38 00 9d e5                                      ldr r0, [sp, #0x38]
0030faa8  00 00 50 e3                                      cmp r0, #0
0030faac  ce ff ff 0a                                      beq #0x30f9ec
0030fab0  00 30 94 e5                                      ldr r3, [r4]
0030fab4  00 10 a0 e1                                      mov r1, r0
0030fab8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0030fabc  00 00 84 e0                                      add r0, r4, r0
0030fac0  46 fe ff eb                                      bl #0x30f3e0
0030fac4  c7 ff ff ea                                      b #0x30f9e8

; FUNCTION 0x0030fac8, declared_size=272, range_size=272, mode=arm
; class-group: int std::priv
; alias: _ZNSt4priv9__get_numIcSt11char_traitsIcElEEiRSt13basic_istreamIT_T0_ERT1_
; demangled: int std::priv::__get_num<char, std::char_traits<char>, long>(std::basic_istream<char, std::char_traits<char> >&, long&)
; decoder-mode: arm
0030fac8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0030facc  00 40 a0 e1                                      mov r4, r0
0030fad0  44 d0 4d e2                                      sub sp, sp, #0x44
0030fad4  00 60 a0 e3                                      mov r6, #0
0030fad8  01 70 a0 e1                                      mov r7, r1
0030fadc  3c 00 8d e2                                      add r0, sp, #0x3c
0030fae0  04 10 a0 e1                                      mov r1, r4
0030fae4  38 60 8d e5                                      str r6, [sp, #0x38]
0030fae8  a0 ff ff eb                                      bl #0x30f970
0030faec  3c 30 dd e5                                      ldrb r3, [sp, #0x3c]
0030faf0  06 00 53 e1                                      cmp r3, r6
0030faf4  02 00 00 1a                                      bne #0x30fb04
0030faf8  38 00 9d e5                                      ldr r0, [sp, #0x38]
0030fafc  44 d0 8d e2                                      add sp, sp, #0x44
0030fb00  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0030fb04  00 30 94 e5                                      ldr r3, [r4]
0030fb08  34 50 8d e2                                      add r5, sp, #0x34
0030fb0c  05 00 a0 e1                                      mov r0, r5
0030fb10  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
0030fb14  01 10 84 e0                                      add r1, r4, r1
0030fb18  20 10 81 e2                                      add r1, r1, #0x20
0030fb1c  f3 e4 0f eb                                      bl #0x708ef0
0030fb20  06 00 a0 e1                                      mov r0, r6
0030fb24  ed e4 0f eb                                      bl #0x708ee0
0030fb28  00 10 a0 e1                                      mov r1, r0
0030fb2c  05 00 a0 e1                                      mov r0, r5
0030fb30  da e4 0f eb                                      bl #0x708ea0
0030fb34  00 30 94 e5                                      ldr r3, [r4]
0030fb38  00 10 a0 e3                                      mov r1, #0
0030fb3c  00 c0 a0 e3                                      mov ip, #0
0030fb40  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030fb44  03 30 84 e0                                      add r3, r4, r3
0030fb48  48 20 93 e5                                      ldr r2, [r3, #0x48]
0030fb4c  28 10 cd e5                                      strb r1, [sp, #0x28]
0030fb50  01 10 a0 e3                                      mov r1, #1
0030fb54  29 10 cd e5                                      strb r1, [sp, #0x29]
0030fb58  01 10 72 e2                                      rsbs r1, r2, #1
0030fb5c  00 10 a0 33                                      movlo r1, #0
0030fb60  31 10 cd e5                                      strb r1, [sp, #0x31]
0030fb64  2a 60 cd e5                                      strb r6, [sp, #0x2a]
0030fb68  30 c0 cd e5                                      strb ip, [sp, #0x30]
0030fb6c  32 60 cd e5                                      strb r6, [sp, #0x32]
0030fb70  2c 20 8d e5                                      str r2, [sp, #0x2c]
0030fb74  24 60 8d e5                                      str r6, [sp, #0x24]
0030fb78  00 c0 90 e5                                      ldr ip, [r0]
0030fb7c  00 10 a0 e1                                      mov r1, r0
0030fb80  28 00 9d e5                                      ldr r0, [sp, #0x28]
0030fb84  08 30 8d e5                                      str r3, [sp, #8]
0030fb88  38 30 8d e2                                      add r3, sp, #0x38
0030fb8c  04 00 8d e5                                      str r0, [sp, #4]
0030fb90  0c 30 8d e5                                      str r3, [sp, #0xc]
0030fb94  18 00 8d e2                                      add r0, sp, #0x18
0030fb98  30 30 9d e5                                      ldr r3, [sp, #0x30]
0030fb9c  00 60 8d e5                                      str r6, [sp]
0030fba0  10 70 8d e5                                      str r7, [sp, #0x10]
0030fba4  0f e0 a0 e1                                      mov lr, pc
0030fba8  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0030fbac  05 00 a0 e1                                      mov r0, r5
0030fbb0  aa e4 0f eb                                      bl #0x708e60
0030fbb4  38 00 9d e5                                      ldr r0, [sp, #0x38]
0030fbb8  00 00 50 e3                                      cmp r0, #0
0030fbbc  ce ff ff 0a                                      beq #0x30fafc
0030fbc0  00 30 94 e5                                      ldr r3, [r4]
0030fbc4  00 10 a0 e1                                      mov r1, r0
0030fbc8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0030fbcc  00 00 84 e0                                      add r0, r4, r0
0030fbd0  02 fe ff eb                                      bl #0x30f3e0
0030fbd4  c7 ff ff ea                                      b #0x30faf8

; FUNCTION 0x008ac428, declared_size=500, range_size=500, mode=thumb
; class-group: int std::priv
; alias: _ZNSt4priv18__get_base_or_zeroISt19istreambuf_iteratorIcSt11char_traitsIcEEcEEiRT_S6_iRKSt5ctypeIT0_E
; demangled: int std::priv::__get_base_or_zero<std::istreambuf_iterator<char, std::char_traits<char> >, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, int, std::ctype<char> const&)
; decoder-mode: thumb
008ac428  f0 b5                                            push {r4, r5, r6, r7, lr}
008ac42a  4f 46                                            mov r7, sb
008ac42c  46 46                                            mov r6, r8
008ac42e  c0 b4                                            push {r6, r7}
008ac430  83 b0                                            sub sp, #0xc
008ac432  1e 1c                                            adds r6, r3, #0
008ac434  89 46                                            mov sb, r1
008ac436  90 46                                            mov r8, r2
008ac438  04 1c                                            adds r4, r0, #0
008ac43a  0d f0 45 fa                                      bl #0x8b98c8
008ac43e  07 1c                                            adds r7, r0, #0
008ac440  0d f0 42 fa                                      bl #0x8b98c8
008ac444  33 68                                            ldr r3, [r6]
008ac446  42 1d                                            adds r2, r0, #5
008ac448  39 1c                                            adds r1, r7, #0
008ac44a  db 69                                            ldr r3, [r3, #0x1c]
008ac44c  30 1c                                            adds r0, r6, #0
008ac44e  6d 46                                            mov r5, sp
008ac450  9c 46                                            mov ip, r3
008ac452  6b 46                                            mov r3, sp
008ac454  e0 47                                            blx ip
008ac456  a3 79                                            ldrb r3, [r4, #6]
008ac458  00 2b                                            cmp r3, #0
008ac45a  2e d1                                            bne #0x8ac4ba
008ac45c  20 68                                            ldr r0, [r4]
008ac45e  83 68                                            ldr r3, [r0, #8]
008ac460  c2 68                                            ldr r2, [r0, #0xc]
008ac462  93 42                                            cmp r3, r2
008ac464  48 d2                                            bhs #0x8ac4f8
008ac466  18 78                                            ldrb r0, [r3]
008ac468  03 06                                            lsls r3, r0, #0x18
008ac46a  01 30                                            adds r0, #1
008ac46c  42 42                                            rsbs r2, r0, #0
008ac46e  42 41                                            adcs r2, r0
008ac470  62 71                                            strb r2, [r4, #5]
008ac472  01 22                                            movs r2, #1
008ac474  a2 71                                            strb r2, [r4, #6]
008ac476  6a 78                                            ldrb r2, [r5, #1]
008ac478  1b 0e                                            lsrs r3, r3, #0x18
008ac47a  23 71                                            strb r3, [r4, #4]
008ac47c  9a 42                                            cmp r2, r3
008ac47e  20 d0                                            beq #0x8ac4c2
008ac480  2a 78                                            ldrb r2, [r5]
008ac482  00 26                                            movs r6, #0
008ac484  9a 42                                            cmp r2, r3
008ac486  00 d1                                            bne #0x8ac48a
008ac488  85 e0                                            b #0x8ac596
008ac48a  38 23                                            movs r3, #0x38
008ac48c  41 46                                            mov r1, r8
008ac48e  0b 40                                            ands r3, r1
008ac490  10 2b                                            cmp r3, #0x10
008ac492  25 d0                                            beq #0x8ac4e0
008ac494  20 2b                                            cmp r3, #0x20
008ac496  2c d0                                            beq #0x8ac4f2
008ac498  08 2b                                            cmp r3, #8
008ac49a  05 d0                                            beq #0x8ac4a8
008ac49c  20 1c                                            adds r0, r4, #0
008ac49e  49 46                                            mov r1, sb
008ac4a0  fd f7 a2 f8                                      bl #0x8a95e8
008ac4a4  00 28                                            cmp r0, #0
008ac4a6  2b d0                                            beq #0x8ac500
008ac4a8  28 23                                            movs r3, #0x28
008ac4aa  00 20                                            movs r0, #0
008ac4ac  18 43                                            orrs r0, r3
008ac4ae  03 b0                                            add sp, #0xc
008ac4b0  30 43                                            orrs r0, r6
008ac4b2  0c bc                                            pop {r2, r3}
008ac4b4  90 46                                            mov r8, r2
008ac4b6  99 46                                            mov sb, r3
008ac4b8  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ac4ba  23 79                                            ldrb r3, [r4, #4]
008ac4bc  6a 78                                            ldrb r2, [r5, #1]
008ac4be  9a 42                                            cmp r2, r3
008ac4c0  de d1                                            bne #0x8ac480
008ac4c2  20 68                                            ldr r0, [r4]
008ac4c4  83 68                                            ldr r3, [r0, #8]
008ac4c6  c2 68                                            ldr r2, [r0, #0xc]
008ac4c8  93 42                                            cmp r3, r2
008ac4ca  6f d2                                            bhs #0x8ac5ac
008ac4cc  01 33                                            adds r3, #1
008ac4ce  83 60                                            str r3, [r0, #8]
008ac4d0  00 23                                            movs r3, #0
008ac4d2  a3 71                                            strb r3, [r4, #6]
008ac4d4  41 46                                            mov r1, r8
008ac4d6  38 23                                            movs r3, #0x38
008ac4d8  0b 40                                            ands r3, r1
008ac4da  02 26                                            movs r6, #2
008ac4dc  10 2b                                            cmp r3, #0x10
008ac4de  d9 d1                                            bne #0x8ac494
008ac4e0  20 1c                                            adds r0, r4, #0
008ac4e2  49 46                                            mov r1, sb
008ac4e4  fd f7 80 f8                                      bl #0x8a95e8
008ac4e8  00 28                                            cmp r0, #0
008ac4ea  1c d0                                            beq #0x8ac526
008ac4ec  40 23                                            movs r3, #0x40
008ac4ee  00 20                                            movs r0, #0
008ac4f0  dc e7                                            b #0x8ac4ac
008ac4f2  20 23                                            movs r3, #0x20
008ac4f4  00 20                                            movs r0, #0
008ac4f6  d9 e7                                            b #0x8ac4ac
008ac4f8  03 68                                            ldr r3, [r0]
008ac4fa  1b 6a                                            ldr r3, [r3, #0x20]
008ac4fc  98 47                                            blx r3
008ac4fe  b3 e7                                            b #0x8ac468
008ac500  20 1c                                            adds r0, r4, #0
008ac502  f8 f7 29 fb                                      bl #0x8a4b58
008ac506  aa 78                                            ldrb r2, [r5, #2]
008ac508  23 79                                            ldrb r3, [r4, #4]
008ac50a  9a 42                                            cmp r2, r3
008ac50c  cc d1                                            bne #0x8ac4a8
008ac50e  20 1c                                            adds r0, r4, #0
008ac510  f8 f7 f8 fa                                      bl #0x8a4b04
008ac514  20 1c                                            adds r0, r4, #0
008ac516  49 46                                            mov r1, sb
008ac518  fd f7 66 f8                                      bl #0x8a95e8
008ac51c  00 28                                            cmp r0, #0
008ac51e  4f d0                                            beq #0x8ac5c0
008ac520  20 23                                            movs r3, #0x20
008ac522  01 20                                            movs r0, #1
008ac524  c2 e7                                            b #0x8ac4ac
008ac526  20 1c                                            adds r0, r4, #0
008ac528  f8 f7 16 fb                                      bl #0x8a4b58
008ac52c  aa 78                                            ldrb r2, [r5, #2]
008ac52e  23 79                                            ldrb r3, [r4, #4]
008ac530  9a 42                                            cmp r2, r3
008ac532  db d1                                            bne #0x8ac4ec
008ac534  20 1c                                            adds r0, r4, #0
008ac536  f8 f7 e5 fa                                      bl #0x8a4b04
008ac53a  20 68                                            ldr r0, [r4]
008ac53c  00 28                                            cmp r0, #0
008ac53e  0e d0                                            beq #0x8ac55e
008ac540  a3 79                                            ldrb r3, [r4, #6]
008ac542  00 2b                                            cmp r3, #0
008ac544  0b d1                                            bne #0x8ac55e
008ac546  83 68                                            ldr r3, [r0, #8]
008ac548  c2 68                                            ldr r2, [r0, #0xc]
008ac54a  93 42                                            cmp r3, r2
008ac54c  62 d2                                            bhs #0x8ac614
008ac54e  18 78                                            ldrb r0, [r3]
008ac550  20 71                                            strb r0, [r4, #4]
008ac552  01 30                                            adds r0, #1
008ac554  43 42                                            rsbs r3, r0, #0
008ac556  43 41                                            adcs r3, r0
008ac558  63 71                                            strb r3, [r4, #5]
008ac55a  01 23                                            movs r3, #1
008ac55c  a3 71                                            strb r3, [r4, #6]
008ac55e  4a 46                                            mov r2, sb
008ac560  10 68                                            ldr r0, [r2]
008ac562  00 28                                            cmp r0, #0
008ac564  48 d0                                            beq #0x8ac5f8
008ac566  49 46                                            mov r1, sb
008ac568  8b 79                                            ldrb r3, [r1, #6]
008ac56a  00 2b                                            cmp r3, #0
008ac56c  26 d1                                            bne #0x8ac5bc
008ac56e  83 68                                            ldr r3, [r0, #8]
008ac570  c2 68                                            ldr r2, [r0, #0xc]
008ac572  93 42                                            cmp r3, r2
008ac574  4a d2                                            bhs #0x8ac60c
008ac576  18 78                                            ldrb r0, [r3]
008ac578  4a 46                                            mov r2, sb
008ac57a  10 71                                            strb r0, [r2, #4]
008ac57c  01 30                                            adds r0, #1
008ac57e  43 42                                            rsbs r3, r0, #0
008ac580  43 41                                            adcs r3, r0
008ac582  53 71                                            strb r3, [r2, #5]
008ac584  49 46                                            mov r1, sb
008ac586  01 22                                            movs r2, #1
008ac588  8a 71                                            strb r2, [r1, #6]
008ac58a  62 79                                            ldrb r2, [r4, #5]
008ac58c  9a 42                                            cmp r2, r3
008ac58e  24 d1                                            bne #0x8ac5da
008ac590  40 23                                            movs r3, #0x40
008ac592  01 20                                            movs r0, #1
008ac594  8a e7                                            b #0x8ac4ac
008ac596  20 68                                            ldr r0, [r4]
008ac598  83 68                                            ldr r3, [r0, #8]
008ac59a  c2 68                                            ldr r2, [r0, #0xc]
008ac59c  93 42                                            cmp r3, r2
008ac59e  09 d2                                            bhs #0x8ac5b4
008ac5a0  01 33                                            adds r3, #1
008ac5a2  83 60                                            str r3, [r0, #8]
008ac5a4  00 23                                            movs r3, #0
008ac5a6  a3 71                                            strb r3, [r4, #6]
008ac5a8  00 26                                            movs r6, #0
008ac5aa  6e e7                                            b #0x8ac48a
008ac5ac  03 68                                            ldr r3, [r0]
008ac5ae  5b 6a                                            ldr r3, [r3, #0x24]
008ac5b0  98 47                                            blx r3
008ac5b2  8d e7                                            b #0x8ac4d0
008ac5b4  03 68                                            ldr r3, [r0]
008ac5b6  5b 6a                                            ldr r3, [r3, #0x24]
008ac5b8  98 47                                            blx r3
008ac5ba  f3 e7                                            b #0x8ac5a4
008ac5bc  4b 79                                            ldrb r3, [r1, #5]
008ac5be  e4 e7                                            b #0x8ac58a
008ac5c0  20 1c                                            adds r0, r4, #0
008ac5c2  f8 f7 c9 fa                                      bl #0x8a4b58
008ac5c6  ea 78                                            ldrb r2, [r5, #3]
008ac5c8  23 79                                            ldrb r3, [r4, #4]
008ac5ca  9a 42                                            cmp r2, r3
008ac5cc  16 d1                                            bne #0x8ac5fc
008ac5ce  20 1c                                            adds r0, r4, #0
008ac5d0  f8 f7 98 fa                                      bl #0x8a4b04
008ac5d4  40 23                                            movs r3, #0x40
008ac5d6  00 20                                            movs r0, #0
008ac5d8  68 e7                                            b #0x8ac4ac
008ac5da  20 1c                                            adds r0, r4, #0
008ac5dc  f8 f7 bc fa                                      bl #0x8a4b58
008ac5e0  ea 78                                            ldrb r2, [r5, #3]
008ac5e2  23 79                                            ldrb r3, [r4, #4]
008ac5e4  9a 42                                            cmp r2, r3
008ac5e6  f2 d0                                            beq #0x8ac5ce
008ac5e8  20 1c                                            adds r0, r4, #0
008ac5ea  f8 f7 b5 fa                                      bl #0x8a4b58
008ac5ee  2a 79                                            ldrb r2, [r5, #4]
008ac5f0  23 79                                            ldrb r3, [r4, #4]
008ac5f2  9a 42                                            cmp r2, r3
008ac5f4  cc d1                                            bne #0x8ac590
008ac5f6  ea e7                                            b #0x8ac5ce
008ac5f8  53 79                                            ldrb r3, [r2, #5]
008ac5fa  c6 e7                                            b #0x8ac58a
008ac5fc  20 1c                                            adds r0, r4, #0
008ac5fe  f8 f7 ab fa                                      bl #0x8a4b58
008ac602  2a 79                                            ldrb r2, [r5, #4]
008ac604  23 79                                            ldrb r3, [r4, #4]
008ac606  9a 42                                            cmp r2, r3
008ac608  8a d1                                            bne #0x8ac520
008ac60a  e0 e7                                            b #0x8ac5ce
008ac60c  03 68                                            ldr r3, [r0]
008ac60e  1b 6a                                            ldr r3, [r3, #0x20]
008ac610  98 47                                            blx r3
008ac612  b1 e7                                            b #0x8ac578
008ac614  03 68                                            ldr r3, [r0]
008ac616  1b 6a                                            ldr r3, [r3, #0x20]
008ac618  98 47                                            blx r3
008ac61a  99 e7                                            b #0x8ac550

; FUNCTION 0x008ae8e0, declared_size=496, range_size=496, mode=thumb
; class-group: int std::priv
; alias: _ZNSt4priv18__get_base_or_zeroISt19istreambuf_iteratorIwSt11char_traitsIwEEwEEiRT_S6_iRKSt5ctypeIT0_E
; demangled: int std::priv::__get_base_or_zero<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, int, std::ctype<wchar_t> const&)
; decoder-mode: thumb
008ae8e0  f0 b5                                            push {r4, r5, r6, r7, lr}
008ae8e2  4f 46                                            mov r7, sb
008ae8e4  46 46                                            mov r6, r8
008ae8e6  c0 b4                                            push {r6, r7}
008ae8e8  87 b0                                            sub sp, #0x1c
008ae8ea  1e 1c                                            adds r6, r3, #0
008ae8ec  88 46                                            mov r8, r1
008ae8ee  91 46                                            mov sb, r2
008ae8f0  04 1c                                            adds r4, r0, #0
008ae8f2  0a f0 e9 ff                                      bl #0x8b98c8
008ae8f6  07 1c                                            adds r7, r0, #0
008ae8f8  0a f0 e6 ff                                      bl #0x8b98c8
008ae8fc  33 68                                            ldr r3, [r6]
008ae8fe  01 ad                                            add r5, sp, #4
008ae900  42 1d                                            adds r2, r0, #5
008ae902  db 6a                                            ldr r3, [r3, #0x2c]
008ae904  30 1c                                            adds r0, r6, #0
008ae906  39 1c                                            adds r1, r7, #0
008ae908  9c 46                                            mov ip, r3
008ae90a  2b 1c                                            adds r3, r5, #0
008ae90c  e0 47                                            blx ip
008ae90e  63 7a                                            ldrb r3, [r4, #9]
008ae910  00 2b                                            cmp r3, #0
008ae912  2c d1                                            bne #0x8ae96e
008ae914  20 68                                            ldr r0, [r4]
008ae916  83 68                                            ldr r3, [r0, #8]
008ae918  c2 68                                            ldr r2, [r0, #0xc]
008ae91a  93 42                                            cmp r3, r2
008ae91c  46 d2                                            bhs #0x8ae9ac
008ae91e  18 68                                            ldr r0, [r3]
008ae920  42 1c                                            adds r2, r0, #1
008ae922  53 42                                            rsbs r3, r2, #0
008ae924  53 41                                            adcs r3, r2
008ae926  23 72                                            strb r3, [r4, #8]
008ae928  01 23                                            movs r3, #1
008ae92a  63 72                                            strb r3, [r4, #9]
008ae92c  6b 68                                            ldr r3, [r5, #4]
008ae92e  60 60                                            str r0, [r4, #4]
008ae930  83 42                                            cmp r3, r0
008ae932  20 d0                                            beq #0x8ae976
008ae934  01 9b                                            ldr r3, [sp, #4]
008ae936  00 26                                            movs r6, #0
008ae938  83 42                                            cmp r3, r0
008ae93a  00 d1                                            bne #0x8ae93e
008ae93c  85 e0                                            b #0x8aea4a
008ae93e  38 23                                            movs r3, #0x38
008ae940  49 46                                            mov r1, sb
008ae942  0b 40                                            ands r3, r1
008ae944  10 2b                                            cmp r3, #0x10
008ae946  25 d0                                            beq #0x8ae994
008ae948  20 2b                                            cmp r3, #0x20
008ae94a  2c d0                                            beq #0x8ae9a6
008ae94c  08 2b                                            cmp r3, #8
008ae94e  05 d0                                            beq #0x8ae95c
008ae950  20 1c                                            adds r0, r4, #0
008ae952  41 46                                            mov r1, r8
008ae954  fb f7 a8 ff                                      bl #0x8aa8a8
008ae958  00 28                                            cmp r0, #0
008ae95a  2b d0                                            beq #0x8ae9b4
008ae95c  28 23                                            movs r3, #0x28
008ae95e  00 20                                            movs r0, #0
008ae960  18 43                                            orrs r0, r3
008ae962  07 b0                                            add sp, #0x1c
008ae964  30 43                                            orrs r0, r6
008ae966  0c bc                                            pop {r2, r3}
008ae968  90 46                                            mov r8, r2
008ae96a  99 46                                            mov sb, r3
008ae96c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ae96e  60 68                                            ldr r0, [r4, #4]
008ae970  6b 68                                            ldr r3, [r5, #4]
008ae972  83 42                                            cmp r3, r0
008ae974  de d1                                            bne #0x8ae934
008ae976  20 68                                            ldr r0, [r4]
008ae978  83 68                                            ldr r3, [r0, #8]
008ae97a  c2 68                                            ldr r2, [r0, #0xc]
008ae97c  93 42                                            cmp r3, r2
008ae97e  6f d2                                            bhs #0x8aea60
008ae980  04 33                                            adds r3, #4
008ae982  83 60                                            str r3, [r0, #8]
008ae984  00 23                                            movs r3, #0
008ae986  63 72                                            strb r3, [r4, #9]
008ae988  49 46                                            mov r1, sb
008ae98a  38 23                                            movs r3, #0x38
008ae98c  0b 40                                            ands r3, r1
008ae98e  02 26                                            movs r6, #2
008ae990  10 2b                                            cmp r3, #0x10
008ae992  d9 d1                                            bne #0x8ae948
008ae994  20 1c                                            adds r0, r4, #0
008ae996  41 46                                            mov r1, r8
008ae998  fb f7 86 ff                                      bl #0x8aa8a8
008ae99c  00 28                                            cmp r0, #0
008ae99e  41 d0                                            beq #0x8aea24
008ae9a0  40 23                                            movs r3, #0x40
008ae9a2  00 20                                            movs r0, #0
008ae9a4  dc e7                                            b #0x8ae960
008ae9a6  20 23                                            movs r3, #0x20
008ae9a8  00 20                                            movs r0, #0
008ae9aa  d9 e7                                            b #0x8ae960
008ae9ac  03 68                                            ldr r3, [r0]
008ae9ae  1b 6a                                            ldr r3, [r3, #0x20]
008ae9b0  98 47                                            blx r3
008ae9b2  b5 e7                                            b #0x8ae920
008ae9b4  20 1c                                            adds r0, r4, #0
008ae9b6  f6 f7 b7 f8                                      bl #0x8a4b28
008ae9ba  aa 68                                            ldr r2, [r5, #8]
008ae9bc  63 68                                            ldr r3, [r4, #4]
008ae9be  9a 42                                            cmp r2, r3
008ae9c0  cc d1                                            bne #0x8ae95c
008ae9c2  20 1c                                            adds r0, r4, #0
008ae9c4  f6 f7 8c f8                                      bl #0x8a4ae0
008ae9c8  20 68                                            ldr r0, [r4]
008ae9ca  00 28                                            cmp r0, #0
008ae9cc  0e d0                                            beq #0x8ae9ec
008ae9ce  63 7a                                            ldrb r3, [r4, #9]
008ae9d0  00 2b                                            cmp r3, #0
008ae9d2  0b d1                                            bne #0x8ae9ec
008ae9d4  83 68                                            ldr r3, [r0, #8]
008ae9d6  c2 68                                            ldr r2, [r0, #0xc]
008ae9d8  93 42                                            cmp r3, r2
008ae9da  75 d2                                            bhs #0x8aeac8
008ae9dc  18 68                                            ldr r0, [r3]
008ae9de  60 60                                            str r0, [r4, #4]
008ae9e0  01 30                                            adds r0, #1
008ae9e2  43 42                                            rsbs r3, r0, #0
008ae9e4  43 41                                            adcs r3, r0
008ae9e6  23 72                                            strb r3, [r4, #8]
008ae9e8  01 23                                            movs r3, #1
008ae9ea  63 72                                            strb r3, [r4, #9]
008ae9ec  42 46                                            mov r2, r8
008ae9ee  10 68                                            ldr r0, [r2]
008ae9f0  00 28                                            cmp r0, #0
008ae9f2  5b d0                                            beq #0x8aeaac
008ae9f4  41 46                                            mov r1, r8
008ae9f6  4b 7a                                            ldrb r3, [r1, #9]
008ae9f8  00 2b                                            cmp r3, #0
008ae9fa  39 d1                                            bne #0x8aea70
008ae9fc  83 68                                            ldr r3, [r0, #8]
008ae9fe  c2 68                                            ldr r2, [r0, #0xc]
008aea00  93 42                                            cmp r3, r2
008aea02  5d d2                                            bhs #0x8aeac0
008aea04  18 68                                            ldr r0, [r3]
008aea06  42 46                                            mov r2, r8
008aea08  50 60                                            str r0, [r2, #4]
008aea0a  01 30                                            adds r0, #1
008aea0c  43 42                                            rsbs r3, r0, #0
008aea0e  43 41                                            adcs r3, r0
008aea10  13 72                                            strb r3, [r2, #8]
008aea12  41 46                                            mov r1, r8
008aea14  01 22                                            movs r2, #1
008aea16  4a 72                                            strb r2, [r1, #9]
008aea18  22 7a                                            ldrb r2, [r4, #8]
008aea1a  9a 42                                            cmp r2, r3
008aea1c  37 d1                                            bne #0x8aea8e
008aea1e  20 23                                            movs r3, #0x20
008aea20  01 20                                            movs r0, #1
008aea22  9d e7                                            b #0x8ae960
008aea24  20 1c                                            adds r0, r4, #0
008aea26  f6 f7 7f f8                                      bl #0x8a4b28
008aea2a  aa 68                                            ldr r2, [r5, #8]
008aea2c  63 68                                            ldr r3, [r4, #4]
008aea2e  9a 42                                            cmp r2, r3
008aea30  b6 d1                                            bne #0x8ae9a0
008aea32  20 1c                                            adds r0, r4, #0
008aea34  f6 f7 54 f8                                      bl #0x8a4ae0
008aea38  20 1c                                            adds r0, r4, #0
008aea3a  41 46                                            mov r1, r8
008aea3c  fb f7 34 ff                                      bl #0x8aa8a8
008aea40  00 28                                            cmp r0, #0
008aea42  17 d0                                            beq #0x8aea74
008aea44  40 23                                            movs r3, #0x40
008aea46  01 20                                            movs r0, #1
008aea48  8a e7                                            b #0x8ae960
008aea4a  20 68                                            ldr r0, [r4]
008aea4c  83 68                                            ldr r3, [r0, #8]
008aea4e  c2 68                                            ldr r2, [r0, #0xc]
008aea50  93 42                                            cmp r3, r2
008aea52  09 d2                                            bhs #0x8aea68
008aea54  04 33                                            adds r3, #4
008aea56  83 60                                            str r3, [r0, #8]
008aea58  00 23                                            movs r3, #0
008aea5a  63 72                                            strb r3, [r4, #9]
008aea5c  00 26                                            movs r6, #0
008aea5e  6e e7                                            b #0x8ae93e
008aea60  03 68                                            ldr r3, [r0]
008aea62  5b 6a                                            ldr r3, [r3, #0x24]
008aea64  98 47                                            blx r3
008aea66  8d e7                                            b #0x8ae984
008aea68  03 68                                            ldr r3, [r0]
008aea6a  5b 6a                                            ldr r3, [r3, #0x24]
008aea6c  98 47                                            blx r3
008aea6e  f3 e7                                            b #0x8aea58
008aea70  0b 7a                                            ldrb r3, [r1, #8]
008aea72  d1 e7                                            b #0x8aea18
008aea74  20 1c                                            adds r0, r4, #0
008aea76  f6 f7 57 f8                                      bl #0x8a4b28
008aea7a  ea 68                                            ldr r2, [r5, #0xc]
008aea7c  63 68                                            ldr r3, [r4, #4]
008aea7e  9a 42                                            cmp r2, r3
008aea80  16 d1                                            bne #0x8aeab0
008aea82  20 1c                                            adds r0, r4, #0
008aea84  f6 f7 2c f8                                      bl #0x8a4ae0
008aea88  40 23                                            movs r3, #0x40
008aea8a  00 20                                            movs r0, #0
008aea8c  68 e7                                            b #0x8ae960
008aea8e  20 1c                                            adds r0, r4, #0
008aea90  f6 f7 4a f8                                      bl #0x8a4b28
008aea94  ea 68                                            ldr r2, [r5, #0xc]
008aea96  63 68                                            ldr r3, [r4, #4]
008aea98  9a 42                                            cmp r2, r3
008aea9a  f2 d0                                            beq #0x8aea82
008aea9c  20 1c                                            adds r0, r4, #0
008aea9e  f6 f7 43 f8                                      bl #0x8a4b28
008aeaa2  2a 69                                            ldr r2, [r5, #0x10]
008aeaa4  63 68                                            ldr r3, [r4, #4]
008aeaa6  9a 42                                            cmp r2, r3
008aeaa8  b9 d1                                            bne #0x8aea1e
008aeaaa  ea e7                                            b #0x8aea82
008aeaac  13 7a                                            ldrb r3, [r2, #8]
008aeaae  b3 e7                                            b #0x8aea18
008aeab0  20 1c                                            adds r0, r4, #0
008aeab2  f6 f7 39 f8                                      bl #0x8a4b28
008aeab6  2a 69                                            ldr r2, [r5, #0x10]
008aeab8  63 68                                            ldr r3, [r4, #4]
008aeaba  9a 42                                            cmp r2, r3
008aeabc  c2 d1                                            bne #0x8aea44
008aeabe  e0 e7                                            b #0x8aea82
008aeac0  03 68                                            ldr r3, [r0]
008aeac2  1b 6a                                            ldr r3, [r3, #0x20]
008aeac4  98 47                                            blx r3
008aeac6  9e e7                                            b #0x8aea06
008aeac8  03 68                                            ldr r3, [r0]
008aeaca  1b 6a                                            ldr r3, [r3, #0x20]
008aeacc  98 47                                            blx r3
008aeace  86 e7                                            b #0x8ae9de
