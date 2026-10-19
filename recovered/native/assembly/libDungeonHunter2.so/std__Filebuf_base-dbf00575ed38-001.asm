; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bd9e4, declared_size=16, range_size=16, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_baseC2Ev
; demangled: std::_Filebuf_base::_Filebuf_base()
; decoder-mode: thumb
008bd9e4  01 23                                            movs r3, #1
008bd9e6  5b 42                                            rsbs r3, r3, #0
008bd9e8  03 60                                            str r3, [r0]
008bd9ea  00 23                                            movs r3, #0
008bd9ec  43 60                                            str r3, [r0, #4]
008bd9ee  03 72                                            strb r3, [r0, #8]
008bd9f0  43 72                                            strb r3, [r0, #9]
008bd9f2  70 47                                            bx lr

; FUNCTION 0x008bd9f4, declared_size=16, range_size=16, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_baseC1Ev
; demangled: std::_Filebuf_base::_Filebuf_base()
; decoder-mode: thumb
008bd9f4  01 23                                            movs r3, #1
008bd9f6  5b 42                                            rsbs r3, r3, #0
008bd9f8  03 60                                            str r3, [r0]
008bd9fa  00 23                                            movs r3, #0
008bd9fc  43 60                                            str r3, [r0, #4]
008bd9fe  03 72                                            strb r3, [r0, #8]
008bda00  43 72                                            strb r3, [r0, #9]
008bda02  70 47                                            bx lr

; FUNCTION 0x008bda04, declared_size=12, range_size=12, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_base8_M_unmapEPvl
; demangled: std::_Filebuf_base::_M_unmap(void*, long)
; decoder-mode: thumb
008bda04  10 b5                                            push {r4, lr}
008bda06  08 1c                                            adds r0, r1, #0
008bda08  11 1c                                            adds r1, r2, #0
008bda0a  50 f6 a0 e4                                      blx #0x30e34c
008bda0e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bda10, declared_size=68, range_size=68, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_base7_M_mmapEll
; demangled: std::_Filebuf_base::_M_mmap(long, long)
; decoder-mode: thumb
008bda10  f0 b5                                            push {r4, r5, r6, r7, lr}
008bda12  03 68                                            ldr r3, [r0]
008bda14  83 b0                                            sub sp, #0xc
008bda16  01 91                                            str r1, [sp, #4]
008bda18  00 93                                            str r3, [sp]
008bda1a  06 1c                                            adds r6, r0, #0
008bda1c  0f 1c                                            adds r7, r1, #0
008bda1e  15 1c                                            adds r5, r2, #0
008bda20  11 1c                                            adds r1, r2, #0
008bda22  00 20                                            movs r0, #0
008bda24  01 22                                            movs r2, #1
008bda26  02 23                                            movs r3, #2
008bda28  50 f6 c6 e4                                      blx #0x30e3b8
008bda2c  04 1c                                            adds r4, r0, #0
008bda2e  43 1c                                            adds r3, r0, #1
008bda30  0e d0                                            beq #0x8bda50
008bda32  30 68                                            ldr r0, [r6]
008bda34  e9 19                                            adds r1, r5, r7
008bda36  00 22                                            movs r2, #0
008bda38  50 f6 e6 e3                                      blx #0x30e208
008bda3c  00 28                                            cmp r0, #0
008bda3e  02 db                                            blt #0x8bda46
008bda40  03 b0                                            add sp, #0xc
008bda42  20 1c                                            adds r0, r4, #0
008bda44  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bda46  30 1c                                            adds r0, r6, #0
008bda48  21 1c                                            adds r1, r4, #0
008bda4a  2a 1c                                            adds r2, r5, #0
008bda4c  ff f7 da ff                                      bl #0x8bda04
008bda50  00 24                                            movs r4, #0
008bda52  f5 e7                                            b #0x8bda40

; FUNCTION 0x008bda54, declared_size=56, range_size=56, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_base8_M_writeEPci
; demangled: std::_Filebuf_base::_M_write(char*, int)
; decoder-mode: thumb
008bda54  70 b5                                            push {r4, r5, r6, lr}
008bda56  14 1c                                            adds r4, r2, #0
008bda58  06 1c                                            adds r6, r0, #0
008bda5a  0d 1c                                            adds r5, r1, #0
008bda5c  30 68                                            ldr r0, [r6]
008bda5e  29 1c                                            adds r1, r5, #0
008bda60  22 1c                                            adds r2, r4, #0
008bda62  50 f6 76 e5                                      blx #0x30e550
008bda66  84 42                                            cmp r4, r0
008bda68  0c d0                                            beq #0x8bda84
008bda6a  84 42                                            cmp r4, r0
008bda6c  0c dd                                            ble #0x8bda88
008bda6e  00 28                                            cmp r0, #0
008bda70  0a dd                                            ble #0x8bda88
008bda72  24 1a                                            subs r4, r4, r0
008bda74  2d 18                                            adds r5, r5, r0
008bda76  29 1c                                            adds r1, r5, #0
008bda78  30 68                                            ldr r0, [r6]
008bda7a  22 1c                                            adds r2, r4, #0
008bda7c  50 f6 68 e5                                      blx #0x30e550
008bda80  84 42                                            cmp r4, r0
008bda82  f2 d1                                            bne #0x8bda6a
008bda84  01 20                                            movs r0, #1
008bda86  70 bd                                            pop {r4, r5, r6, pc}
008bda88  00 20                                            movs r0, #0
008bda8a  fc e7                                            b #0x8bda86

; FUNCTION 0x008bda8c, declared_size=10, range_size=10, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_base7_M_readEPci
; demangled: std::_Filebuf_base::_M_read(char*, int)
; decoder-mode: thumb
008bda8c  10 b5                                            push {r4, lr}
008bda8e  00 68                                            ldr r0, [r0]
008bda90  50 f6 f8 e4                                      blx #0x30e484
008bda94  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bdbd8, declared_size=46, range_size=46, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_base8_M_closeEv
; demangled: std::_Filebuf_base::_M_close()
; decoder-mode: thumb
008bdbd8  10 b5                                            push {r4, lr}
008bdbda  03 7a                                            ldrb r3, [r0, #8]
008bdbdc  04 1c                                            adds r4, r0, #0
008bdbde  00 20                                            movs r0, #0
008bdbe0  00 2b                                            cmp r3, #0
008bdbe2  07 d0                                            beq #0x8bdbf4
008bdbe4  63 7a                                            ldrb r3, [r4, #9]
008bdbe6  00 2b                                            cmp r3, #0
008bdbe8  05 d1                                            bne #0x8bdbf6
008bdbea  01 20                                            movs r0, #1
008bdbec  00 23                                            movs r3, #0
008bdbee  63 72                                            strb r3, [r4, #9]
008bdbf0  23 72                                            strb r3, [r4, #8]
008bdbf2  63 60                                            str r3, [r4, #4]
008bdbf4  10 bd                                            pop {r4, pc}
008bdbf6  20 68                                            ldr r0, [r4]
008bdbf8  50 f6 c8 e7                                      blx #0x30eb8c
008bdbfc  03 1c                                            adds r3, r0, #0
008bdbfe  00 20                                            movs r0, #0
008bdc00  00 2b                                            cmp r3, #0
008bdc02  f3 d1                                            bne #0x8bdbec
008bdc04  f1 e7                                            b #0x8bdbea

; FUNCTION 0x008bdc08, declared_size=124, range_size=124, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_base7_M_openEii
; demangled: std::_Filebuf_base::_M_open(int, int)
; decoder-mode: thumb
008bdc08  70 b5                                            push {r4, r5, r6, lr}
008bdc0a  9a b0                                            sub sp, #0x68
008bdc0c  04 1c                                            adds r4, r0, #0
008bdc0e  0d 1e                                            subs r5, r1, #0
008bdc10  02 db                                            blt #0x8bdc18
008bdc12  03 7a                                            ldrb r3, [r0, #8]
008bdc14  00 2b                                            cmp r3, #0
008bdc16  02 d0                                            beq #0x8bdc1e
008bdc18  00 20                                            movs r0, #0
008bdc1a  1a b0                                            add sp, #0x68
008bdc1c  70 bd                                            pop {r4, r5, r6, pc}
008bdc1e  03 21                                            movs r1, #3
008bdc20  28 1c                                            adds r0, r5, #0
008bdc22  50 f6 9e e2                                      blx #0x30e160
008bdc26  41 1c                                            adds r1, r0, #1
008bdc28  f6 d0                                            beq #0x8bdc18
008bdc2a  03 22                                            movs r2, #3
008bdc2c  02 40                                            ands r2, r0
008bdc2e  00 23                                            movs r3, #0
008bdc30  03 2a                                            cmp r2, #3
008bdc32  03 d0                                            beq #0x8bdc3c
008bdc34  11 4b                                            ldr r3, [pc, #0x44]
008bdc36  92 00                                            lsls r2, r2, #2
008bdc38  7b 44                                            add r3, pc
008bdc3a  d3 58                                            ldr r3, [r2, r3]
008bdc3c  42 05                                            lsls r2, r0, #0x15
008bdc3e  01 d5                                            bpl #0x8bdc44
008bdc40  01 22                                            movs r2, #1
008bdc42  13 43                                            orrs r3, r2
008bdc44  63 60                                            str r3, [r4, #4]
008bdc46  01 23                                            movs r3, #1
008bdc48  23 72                                            strb r3, [r4, #8]
008bdc4a  00 23                                            movs r3, #0
008bdc4c  63 72                                            strb r3, [r4, #9]
008bdc4e  25 60                                            str r5, [r4]
008bdc50  28 1c                                            adds r0, r5, #0
008bdc52  69 46                                            mov r1, sp
008bdc54  50 f6 02 e6                                      blx #0x30e85c
008bdc58  00 23                                            movs r3, #0
008bdc5a  00 28                                            cmp r0, #0
008bdc5c  02 d0                                            beq #0x8bdc64
008bdc5e  a3 72                                            strb r3, [r4, #0xa]
008bdc60  01 20                                            movs r0, #1
008bdc62  da e7                                            b #0x8bdc1a
008bdc64  04 9a                                            ldr r2, [sp, #0x10]
008bdc66  f0 23                                            movs r3, #0xf0
008bdc68  05 49                                            ldr r1, [pc, #0x14]
008bdc6a  1b 02                                            lsls r3, r3, #8
008bdc6c  13 40                                            ands r3, r2
008bdc6e  5a 18                                            adds r2, r3, r1
008bdc70  53 42                                            rsbs r3, r2, #0
008bdc72  53 41                                            adcs r3, r2
008bdc74  a3 72                                            strb r3, [r4, #0xa]
008bdc76  01 20                                            movs r0, #1
008bdc78  cf e7                                            b #0x8bdc1a
008bdc7a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bdc7c  08 99 05 00 00 80 ff ff                          .byte 0x08, 0x99, 0x05, 0x00, 0x00, 0x80, 0xff, 0xff

; FUNCTION 0x008bdc84, declared_size=54, range_size=54, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_base12_M_file_sizeEv
; demangled: std::_Filebuf_base::_M_file_size()
; decoder-mode: thumb
008bdc84  30 b5                                            push {r4, r5, lr}
008bdc86  9b b0                                            sub sp, #0x6c
008bdc88  00 68                                            ldr r0, [r0]
008bdc8a  69 46                                            mov r1, sp
008bdc8c  50 f6 e6 e5                                      blx #0x30e85c
008bdc90  00 28                                            cmp r0, #0
008bdc92  07 d1                                            bne #0x8bdca4
008bdc94  04 9a                                            ldr r2, [sp, #0x10]
008bdc96  f0 23                                            movs r3, #0xf0
008bdc98  1b 02                                            lsls r3, r3, #8
008bdc9a  1a 40                                            ands r2, r3
008bdc9c  80 23                                            movs r3, #0x80
008bdc9e  1b 02                                            lsls r3, r3, #8
008bdca0  9a 42                                            cmp r2, r3
008bdca2  02 d0                                            beq #0x8bdcaa
008bdca4  00 20                                            movs r0, #0
008bdca6  1b b0                                            add sp, #0x6c
008bdca8  30 bd                                            pop {r4, r5, pc}
008bdcaa  0d 9a                                            ldr r2, [sp, #0x34]
008bdcac  0c 9d                                            ldr r5, [sp, #0x30]
008bdcae  d4 17                                            asrs r4, r2, #0x1f
008bdcb0  e1 43                                            mvns r1, r4
008bdcb2  cb 17                                            asrs r3, r1, #0x1f
008bdcb4  28 1c                                            adds r0, r5, #0
008bdcb6  18 40                                            ands r0, r3
008bdcb8  f5 e7                                            b #0x8bdca6

; FUNCTION 0x008bdcbc, declared_size=58, range_size=58, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_base7_M_seekEli
; demangled: std::_Filebuf_base::_M_seek(long, int)
; decoder-mode: thumb
008bdcbc  70 b5                                            push {r4, r5, r6, lr}
008bdcbe  05 1c                                            adds r5, r0, #0
008bdcc0  0c 1c                                            adds r4, r1, #0
008bdcc2  02 2a                                            cmp r2, #2
008bdcc4  15 d0                                            beq #0x8bdcf2
008bdcc6  04 2a                                            cmp r2, #4
008bdcc8  0c d0                                            beq #0x8bdce4
008bdcca  01 2a                                            cmp r2, #1
008bdccc  02 d0                                            beq #0x8bdcd4
008bdcce  01 20                                            movs r0, #1
008bdcd0  40 42                                            rsbs r0, r0, #0
008bdcd2  70 bd                                            pop {r4, r5, r6, pc}
008bdcd4  00 22                                            movs r2, #0
008bdcd6  00 29                                            cmp r1, #0
008bdcd8  f9 db                                            blt #0x8bdcce
008bdcda  28 68                                            ldr r0, [r5]
008bdcdc  21 1c                                            adds r1, r4, #0
008bdcde  50 f6 94 e2                                      blx #0x30e208
008bdce2  f6 e7                                            b #0x8bdcd2
008bdce4  ff f7 ce ff                                      bl #0x8bdc84
008bdce8  63 42                                            rsbs r3, r4, #0
008bdcea  83 42                                            cmp r3, r0
008bdcec  ef dc                                            bgt #0x8bdcce
008bdcee  02 22                                            movs r2, #2
008bdcf0  f3 e7                                            b #0x8bdcda
008bdcf2  01 22                                            movs r2, #1
008bdcf4  f1 e7                                            b #0x8bdcda

; FUNCTION 0x008bdcf8, declared_size=188, range_size=188, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_base7_M_openEPKcil
; demangled: std::_Filebuf_base::_M_open(char const*, int, long)
; decoder-mode: thumb
008bdcf8  70 b5                                            push {r4, r5, r6, lr}
008bdcfa  04 1c                                            adds r4, r0, #0
008bdcfc  15 1c                                            adds r5, r2, #0
008bdcfe  22 7a                                            ldrb r2, [r4, #8]
008bdd00  9a b0                                            sub sp, #0x68
008bdd02  08 1c                                            adds r0, r1, #0
008bdd04  00 2a                                            cmp r2, #0
008bdd06  04 d1                                            bne #0x8bdd12
008bdd08  06 22                                            movs r2, #6
008bdd0a  29 1c                                            adds r1, r5, #0
008bdd0c  91 43                                            bics r1, r2
008bdd0e  38 29                                            cmp r1, #0x38
008bdd10  02 d9                                            bls #0x8bdd18
008bdd12  00 20                                            movs r0, #0
008bdd14  1a b0                                            add sp, #0x68
008bdd16  70 bd                                            pop {r4, r5, r6, pc}
008bdd18  20 4a                                            ldr r2, [pc, #0x80]
008bdd1a  89 00                                            lsls r1, r1, #2
008bdd1c  7a 44                                            add r2, pc
008bdd1e  89 58                                            ldr r1, [r1, r2]
008bdd20  8a 18                                            adds r2, r1, r2
008bdd22  97 46                                            mov pc, r2
008bdd24  1e 49                                            ldr r1, [pc, #0x78]
008bdd26  1a 1c                                            adds r2, r3, #0
008bdd28  50 f6 9a e6                                      blx #0x30ea60
008bdd2c  06 1e                                            subs r6, r0, #0
008bdd2e  f0 db                                            blt #0x8bdd12
008bdd30  01 23                                            movs r3, #1
008bdd32  23 72                                            strb r3, [r4, #8]
008bdd34  ab 07                                            lsls r3, r5, #0x1e
008bdd36  26 d1                                            bne #0x8bdd86
008bdd38  23 7a                                            ldrb r3, [r4, #8]
008bdd3a  26 60                                            str r6, [r4]
008bdd3c  65 60                                            str r5, [r4, #4]
008bdd3e  63 72                                            strb r3, [r4, #9]
008bdd40  00 20                                            movs r0, #0
008bdd42  00 2b                                            cmp r3, #0
008bdd44  0d d1                                            bne #0x8bdd62
008bdd46  43 1e                                            subs r3, r0, #1
008bdd48  98 41                                            sbcs r0, r3
008bdd4a  e3 e7                                            b #0x8bdd14
008bdd4c  02 21                                            movs r1, #2
008bdd4e  ea e7                                            b #0x8bdd26
008bdd50  14 49                                            ldr r1, [pc, #0x50]
008bdd52  e8 e7                                            b #0x8bdd26
008bdd54  14 49                                            ldr r1, [pc, #0x50]
008bdd56  e6 e7                                            b #0x8bdd26
008bdd58  00 21                                            movs r1, #0
008bdd5a  00 23                                            movs r3, #0
008bdd5c  e3 e7                                            b #0x8bdd26
008bdd5e  13 49                                            ldr r1, [pc, #0x4c]
008bdd60  e1 e7                                            b #0x8bdd26
008bdd62  30 1c                                            adds r0, r6, #0
008bdd64  69 46                                            mov r1, sp
008bdd66  50 f6 7a e5                                      blx #0x30e85c
008bdd6a  00 23                                            movs r3, #0
008bdd6c  00 28                                            cmp r0, #0
008bdd6e  07 d1                                            bne #0x8bdd80
008bdd70  04 9a                                            ldr r2, [sp, #0x10]
008bdd72  f0 23                                            movs r3, #0xf0
008bdd74  0e 49                                            ldr r1, [pc, #0x38]
008bdd76  1b 02                                            lsls r3, r3, #8
008bdd78  13 40                                            ands r3, r2
008bdd7a  5a 18                                            adds r2, r3, r1
008bdd7c  53 42                                            rsbs r3, r2, #0
008bdd7e  53 41                                            adcs r3, r2
008bdd80  a3 72                                            strb r3, [r4, #0xa]
008bdd82  20 7a                                            ldrb r0, [r4, #8]
008bdd84  df e7                                            b #0x8bdd46
008bdd86  30 1c                                            adds r0, r6, #0
008bdd88  00 21                                            movs r1, #0
008bdd8a  02 22                                            movs r2, #2
008bdd8c  50 f6 3c e2                                      blx #0x30e208
008bdd90  01 30                                            adds r0, #1
008bdd92  d1 d1                                            bne #0x8bdd38
008bdd94  00 23                                            movs r3, #0
008bdd96  23 72                                            strb r3, [r4, #8]
008bdd98  ce e7                                            b #0x8bdd38
008bdd9a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bdd9c  40 97 05 00 42 02 00 00 41 02 00 00 42 04 00 00  .byte 0x40, 0x97, 0x05, 0x00, 0x42, 0x02, 0x00, 0x00, 0x41, 0x02, 0x00, 0x00, 0x42, 0x04, 0x00, 0x00
008bddac  41 04 00 00 00 80 ff ff                          .byte 0x41, 0x04, 0x00, 0x00, 0x00, 0x80, 0xff, 0xff

; FUNCTION 0x008bddb4, declared_size=12, range_size=12, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_base7_M_openEPKci
; demangled: std::_Filebuf_base::_M_open(char const*, int)
; decoder-mode: thumb
008bddb4  10 b5                                            push {r4, lr}
008bddb6  db 23                                            movs r3, #0xdb
008bddb8  5b 00                                            lsls r3, r3, #1
008bddba  ff f7 9d ff                                      bl #0x8bdcf8
008bddbe  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bddc0, declared_size=28, range_size=28, mode=thumb
; class-group: std::_Filebuf_base
; alias: _ZNSt13_Filebuf_base13_S_initializeEv
; demangled: std::_Filebuf_base::_S_initialize()
; decoder-mode: thumb
008bddc0  10 b5                                            push {r4, lr}
008bddc2  27 20                                            movs r0, #0x27
008bddc4  50 f6 3a e3                                      blx #0x30e43c
008bddc8  02 4c                                            ldr r4, [pc, #8]
008bddca  03 4b                                            ldr r3, [pc, #0xc]
008bddcc  7c 44                                            add r4, pc
008bddce  e3 58                                            ldr r3, [r4, r3]
008bddd0  18 60                                            str r0, [r3]
008bddd2  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008bddd4  c8 6c 0d 00 00 1a 00 00                          .byte 0xc8, 0x6c, 0x0d, 0x00, 0x00, 0x1a, 0x00, 0x00
