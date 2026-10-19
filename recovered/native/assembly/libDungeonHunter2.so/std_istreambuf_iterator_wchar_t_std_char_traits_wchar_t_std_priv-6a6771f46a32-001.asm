; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008abd60, declared_size=120, range_size=120, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv11__copy_signISt19istreambuf_iteratorIwSt11char_traitsIwEEwEET_S5_S5_RNS_16__basic_iostringIcEET0_S9_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__copy_sign<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::priv::__basic_iostring<char>&, wchar_t, wchar_t)
; decoder-mode: thumb
008abd60  30 b5                                            push {r4, r5, lr}
008abd62  85 b0                                            sub sp, #0x14
008abd64  01 ac                                            add r4, sp, #4
008abd66  05 1c                                            adds r5, r0, #0
008abd68  01 91                                            str r1, [sp, #4]
008abd6a  20 1c                                            adds r0, r4, #0
008abd6c  08 a9                                            add r1, sp, #0x20
008abd6e  62 60                                            str r2, [r4, #4]
008abd70  a3 60                                            str r3, [r4, #8]
008abd72  fe f7 99 fd                                      bl #0x8aa8a8
008abd76  00 28                                            cmp r0, #0
008abd78  0a d0                                            beq #0x8abd90
008abd7a  01 9a                                            ldr r2, [sp, #4]
008abd7c  2b 1c                                            adds r3, r5, #0
008abd7e  28 1c                                            adds r0, r5, #0
008abd80  04 c3                                            stm r3!, {r2}
008abd82  02 9a                                            ldr r2, [sp, #8]
008abd84  6a 60                                            str r2, [r5, #4]
008abd86  03 aa                                            add r2, sp, #0xc
008abd88  12 88                                            ldrh r2, [r2]
008abd8a  05 b0                                            add sp, #0x14
008abd8c  9a 80                                            strh r2, [r3, #4]
008abd8e  30 bd                                            pop {r4, r5, pc}
008abd90  63 7a                                            ldrb r3, [r4, #9]
008abd92  00 2b                                            cmp r3, #0
008abd94  1e d1                                            bne #0x8abdd4
008abd96  20 68                                            ldr r0, [r4]
008abd98  83 68                                            ldr r3, [r0, #8]
008abd9a  c2 68                                            ldr r2, [r0, #0xc]
008abd9c  93 42                                            cmp r3, r2
008abd9e  15 d2                                            bhs #0x8abdcc
008abda0  18 68                                            ldr r0, [r3]
008abda2  42 1c                                            adds r2, r0, #1
008abda4  53 42                                            rsbs r3, r2, #0
008abda6  53 41                                            adcs r3, r2
008abda8  23 72                                            strb r3, [r4, #8]
008abdaa  01 23                                            movs r3, #1
008abdac  60 60                                            str r0, [r4, #4]
008abdae  63 72                                            strb r3, [r4, #9]
008abdb0  0c 9b                                            ldr r3, [sp, #0x30]
008abdb2  83 42                                            cmp r3, r0
008abdb4  06 d0                                            beq #0x8abdc4
008abdb6  0d 9b                                            ldr r3, [sp, #0x34]
008abdb8  83 42                                            cmp r3, r0
008abdba  de d1                                            bne #0x8abd7a
008abdbc  0b 98                                            ldr r0, [sp, #0x2c]
008abdbe  2d 21                                            movs r1, #0x2d
008abdc0  fc f7 14 fc                                      bl #0x8a85ec
008abdc4  20 1c                                            adds r0, r4, #0
008abdc6  f8 f7 8b fe                                      bl #0x8a4ae0
008abdca  d6 e7                                            b #0x8abd7a
008abdcc  03 68                                            ldr r3, [r0]
008abdce  1b 6a                                            ldr r3, [r3, #0x20]
008abdd0  98 47                                            blx r3
008abdd2  e6 e7                                            b #0x8abda2
008abdd4  60 68                                            ldr r0, [r4, #4]
008abdd6  eb e7                                            b #0x8abdb0

; FUNCTION 0x008aead0, declared_size=492, range_size=492, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEEywEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, unsigned long long, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::ios_base&, int&, unsigned long long&, wchar_t*)
; decoder-mode: thumb
008aead0  f0 b5                                            push {r4, r5, r6, r7, lr}
008aead2  5f 46                                            mov r7, fp
008aead4  56 46                                            mov r6, sl
008aead6  4d 46                                            mov r5, sb
008aead8  44 46                                            mov r4, r8
008aeada  f0 b4                                            push {r4, r5, r6, r7}
008aeadc  73 4e                                            ldr r6, [pc, #0x1cc]
008aeade  15 1c                                            adds r5, r2, #0
008aeae0  73 4a                                            ldr r2, [pc, #0x1cc]
008aeae2  7e 44                                            add r6, pc
008aeae4  99 46                                            mov sb, r3
008aeae6  b3 58                                            ldr r3, [r6, r2]
008aeae8  97 b0                                            sub sp, #0x5c
008aeaea  0c 1c                                            adds r4, r1, #0
008aeaec  1b 68                                            ldr r3, [r3]
008aeaee  21 99                                            ldr r1, [sp, #0x84]
008aeaf0  82 46                                            mov sl, r0
008aeaf2  15 93                                            str r3, [sp, #0x54]
008aeaf4  09 91                                            str r1, [sp, #0x24]
008aeaf6  0d ab                                            add r3, sp, #0x34
008aeaf8  49 46                                            mov r1, sb
008aeafa  20 31                                            adds r1, #0x20
008aeafc  18 1c                                            adds r0, r3, #0
008aeafe  93 46                                            mov fp, r2
008aeb00  98 46                                            mov r8, r3
008aeb02  20 9f                                            ldr r7, [sp, #0x80]
008aeb04  f4 f7 2c fd                                      bl #0x8a3560
008aeb08  6a 4b                                            ldr r3, [pc, #0x1a8]
008aeb0a  40 46                                            mov r0, r8
008aeb0c  f1 58                                            ldr r1, [r6, r3]
008aeb0e  f4 f7 4f fd                                      bl #0x8a35b0
008aeb12  49 46                                            mov r1, sb
008aeb14  03 1c                                            adds r3, r0, #0
008aeb16  4a 68                                            ldr r2, [r1, #4]
008aeb18  20 1c                                            adds r0, r4, #0
008aeb1a  29 1c                                            adds r1, r5, #0
008aeb1c  ff f7 e0 fe                                      bl #0x8ae8e0
008aeb20  02 1c                                            adds r2, r0, #0
008aeb22  07 90                                            str r0, [sp, #0x1c]
008aeb24  20 68                                            ldr r0, [r4]
008aeb26  01 23                                            movs r3, #1
008aeb28  1a 40                                            ands r2, r3
008aeb2a  08 92                                            str r2, [sp, #0x20]
008aeb2c  00 28                                            cmp r0, #0
008aeb2e  0f d0                                            beq #0x8aeb50
008aeb30  63 7a                                            ldrb r3, [r4, #9]
008aeb32  00 2b                                            cmp r3, #0
008aeb34  0c d1                                            bne #0x8aeb50
008aeb36  83 68                                            ldr r3, [r0, #8]
008aeb38  c2 68                                            ldr r2, [r0, #0xc]
008aeb3a  93 42                                            cmp r3, r2
008aeb3c  00 d3                                            blo #0x8aeb40
008aeb3e  ae e0                                            b #0x8aec9e
008aeb40  18 68                                            ldr r0, [r3]
008aeb42  60 60                                            str r0, [r4, #4]
008aeb44  01 30                                            adds r0, #1
008aeb46  43 42                                            rsbs r3, r0, #0
008aeb48  43 41                                            adcs r3, r0
008aeb4a  23 72                                            strb r3, [r4, #8]
008aeb4c  01 23                                            movs r3, #1
008aeb4e  63 72                                            strb r3, [r4, #9]
008aeb50  28 68                                            ldr r0, [r5]
008aeb52  00 28                                            cmp r0, #0
008aeb54  56 d0                                            beq #0x8aec04
008aeb56  6b 7a                                            ldrb r3, [r5, #9]
008aeb58  00 2b                                            cmp r3, #0
008aeb5a  53 d1                                            bne #0x8aec04
008aeb5c  83 68                                            ldr r3, [r0, #8]
008aeb5e  c2 68                                            ldr r2, [r0, #0xc]
008aeb60  93 42                                            cmp r3, r2
008aeb62  00 d3                                            blo #0x8aeb66
008aeb64  93 e0                                            b #0x8aec8e
008aeb66  18 68                                            ldr r0, [r3]
008aeb68  68 60                                            str r0, [r5, #4]
008aeb6a  01 30                                            adds r0, #1
008aeb6c  01 22                                            movs r2, #1
008aeb6e  43 42                                            rsbs r3, r0, #0
008aeb70  43 41                                            adcs r3, r0
008aeb72  2b 72                                            strb r3, [r5, #8]
008aeb74  6a 72                                            strb r2, [r5, #9]
008aeb76  22 7a                                            ldrb r2, [r4, #8]
008aeb78  9a 42                                            cmp r2, r3
008aeb7a  47 d0                                            beq #0x8aec0c
008aeb7c  4e 4b                                            ldr r3, [pc, #0x138]
008aeb7e  40 46                                            mov r0, r8
008aeb80  f1 58                                            ldr r1, [r6, r3]
008aeb82  f4 f7 15 fd                                      bl #0x8a35b0
008aeb86  03 68                                            ldr r3, [r0]
008aeb88  81 46                                            mov sb, r0
008aeb8a  db 68                                            ldr r3, [r3, #0xc]
008aeb8c  98 47                                            blx r3
008aeb8e  6a 46                                            mov r2, sp
008aeb90  3c 32                                            adds r2, #0x3c
008aeb92  0b 90                                            str r0, [sp, #0x2c]
008aeb94  0a 92                                            str r2, [sp, #0x28]
008aeb96  49 46                                            mov r1, sb
008aeb98  0b 68                                            ldr r3, [r1]
008aeb9a  10 1c                                            adds r0, r2, #0
008aeb9c  1b 69                                            ldr r3, [r3, #0x10]
008aeb9e  98 47                                            blx r3
008aeba0  07 9b                                            ldr r3, [sp, #0x1c]
008aeba2  08 99                                            ldr r1, [sp, #0x20]
008aeba4  20 1c                                            adds r0, r4, #0
008aeba6  9a 10                                            asrs r2, r3, #2
008aeba8  9b 07                                            lsls r3, r3, #0x1e
008aebaa  db 0f                                            lsrs r3, r3, #0x1f
008aebac  01 93                                            str r3, [sp, #4]
008aebae  0b 9b                                            ldr r3, [sp, #0x2c]
008aebb0  00 91                                            str r1, [sp]
008aebb2  0a 99                                            ldr r1, [sp, #0x28]
008aebb4  02 93                                            str r3, [sp, #8]
008aebb6  0e ab                                            add r3, sp, #0x38
008aebb8  03 91                                            str r1, [sp, #0xc]
008aebba  04 93                                            str r3, [sp, #0x10]
008aebbc  29 1c                                            adds r1, r5, #0
008aebbe  09 9b                                            ldr r3, [sp, #0x24]
008aebc0  fc f7 46 fb                                      bl #0x8ab250
008aebc4  81 46                                            mov sb, r0
008aebc6  0a 98                                            ldr r0, [sp, #0x28]
008aebc8  64 f6 f0 e6                                      blx #0x3139ac
008aebcc  4a 46                                            mov r2, sb
008aebce  00 23                                            movs r3, #0
008aebd0  00 2a                                            cmp r2, #0
008aebd2  24 d1                                            bne #0x8aec1e
008aebd4  04 23                                            movs r3, #4
008aebd6  3b 60                                            str r3, [r7]
008aebd8  20 68                                            ldr r0, [r4]
008aebda  00 28                                            cmp r0, #0
008aebdc  23 d1                                            bne #0x8aec26
008aebde  28 68                                            ldr r0, [r5]
008aebe0  00 28                                            cmp r0, #0
008aebe2  32 d0                                            beq #0x8aec4a
008aebe4  6b 7a                                            ldrb r3, [r5, #9]
008aebe6  00 2b                                            cmp r3, #0
008aebe8  2f d1                                            bne #0x8aec4a
008aebea  83 68                                            ldr r3, [r0, #8]
008aebec  c2 68                                            ldr r2, [r0, #0xc]
008aebee  93 42                                            cmp r3, r2
008aebf0  49 d2                                            bhs #0x8aec86
008aebf2  18 68                                            ldr r0, [r3]
008aebf4  68 60                                            str r0, [r5, #4]
008aebf6  01 30                                            adds r0, #1
008aebf8  43 42                                            rsbs r3, r0, #0
008aebfa  43 41                                            adcs r3, r0
008aebfc  01 22                                            movs r2, #1
008aebfe  2b 72                                            strb r3, [r5, #8]
008aec00  6a 72                                            strb r2, [r5, #9]
008aec02  23 e0                                            b #0x8aec4c
008aec04  2b 7a                                            ldrb r3, [r5, #8]
008aec06  22 7a                                            ldrb r2, [r4, #8]
008aec08  9a 42                                            cmp r2, r3
008aec0a  b7 d1                                            bne #0x8aeb7c
008aec0c  08 9b                                            ldr r3, [sp, #0x20]
008aec0e  01 2b                                            cmp r3, #1
008aec10  e0 d1                                            bne #0x8aebd4
008aec12  09 99                                            ldr r1, [sp, #0x24]
008aec14  00 22                                            movs r2, #0
008aec16  00 23                                            movs r3, #0
008aec18  0a 60                                            str r2, [r1]
008aec1a  4b 60                                            str r3, [r1, #4]
008aec1c  00 23                                            movs r3, #0
008aec1e  3b 60                                            str r3, [r7]
008aec20  20 68                                            ldr r0, [r4]
008aec22  00 28                                            cmp r0, #0
008aec24  db d0                                            beq #0x8aebde
008aec26  63 7a                                            ldrb r3, [r4, #9]
008aec28  00 2b                                            cmp r3, #0
008aec2a  d8 d1                                            bne #0x8aebde
008aec2c  83 68                                            ldr r3, [r0, #8]
008aec2e  c2 68                                            ldr r2, [r0, #0xc]
008aec30  93 42                                            cmp r3, r2
008aec32  30 d2                                            bhs #0x8aec96
008aec34  18 68                                            ldr r0, [r3]
008aec36  60 60                                            str r0, [r4, #4]
008aec38  01 30                                            adds r0, #1
008aec3a  43 42                                            rsbs r3, r0, #0
008aec3c  43 41                                            adcs r3, r0
008aec3e  23 72                                            strb r3, [r4, #8]
008aec40  01 23                                            movs r3, #1
008aec42  63 72                                            strb r3, [r4, #9]
008aec44  28 68                                            ldr r0, [r5]
008aec46  00 28                                            cmp r0, #0
008aec48  cc d1                                            bne #0x8aebe4
008aec4a  2b 7a                                            ldrb r3, [r5, #8]
008aec4c  22 7a                                            ldrb r2, [r4, #8]
008aec4e  9a 42                                            cmp r2, r3
008aec50  03 d1                                            bne #0x8aec5a
008aec52  3a 68                                            ldr r2, [r7]
008aec54  02 23                                            movs r3, #2
008aec56  13 43                                            orrs r3, r2
008aec58  3b 60                                            str r3, [r7]
008aec5a  21 1c                                            adds r1, r4, #0
008aec5c  0a 22                                            movs r2, #0xa
008aec5e  50 46                                            mov r0, sl
008aec60  5f f6 6a e1                                      blx #0x30df38
008aec64  40 46                                            mov r0, r8
008aec66  f4 f7 45 fc                                      bl #0x8a34f4
008aec6a  59 46                                            mov r1, fp
008aec6c  73 58                                            ldr r3, [r6, r1]
008aec6e  15 9a                                            ldr r2, [sp, #0x54]
008aec70  50 46                                            mov r0, sl
008aec72  1b 68                                            ldr r3, [r3]
008aec74  9a 42                                            cmp r2, r3
008aec76  16 d1                                            bne #0x8aeca6
008aec78  17 b0                                            add sp, #0x5c
008aec7a  3c bc                                            pop {r2, r3, r4, r5}
008aec7c  90 46                                            mov r8, r2
008aec7e  99 46                                            mov sb, r3
008aec80  a2 46                                            mov sl, r4
008aec82  ab 46                                            mov fp, r5
008aec84  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aec86  03 68                                            ldr r3, [r0]
008aec88  1b 6a                                            ldr r3, [r3, #0x20]
008aec8a  98 47                                            blx r3
008aec8c  b2 e7                                            b #0x8aebf4
008aec8e  03 68                                            ldr r3, [r0]
008aec90  1b 6a                                            ldr r3, [r3, #0x20]
008aec92  98 47                                            blx r3
008aec94  68 e7                                            b #0x8aeb68
008aec96  03 68                                            ldr r3, [r0]
008aec98  1b 6a                                            ldr r3, [r3, #0x20]
008aec9a  98 47                                            blx r3
008aec9c  cb e7                                            b #0x8aec36
008aec9e  03 68                                            ldr r3, [r0]
008aeca0  1b 6a                                            ldr r3, [r3, #0x20]
008aeca2  98 47                                            blx r3
008aeca4  4d e7                                            b #0x8aeb42
008aeca6  5f f6 34 e3                                      blx #0x30e310
008aecaa  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008aecac  b2 5f 0e 00 ac 40 00 00 44 1e 00 00 58 19 00 00  .byte 0xb2, 0x5f, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00, 0x58, 0x19, 0x00, 0x00

; FUNCTION 0x008af0b8, declared_size=492, range_size=492, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEExwEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, long long, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::ios_base&, int&, long long&, wchar_t*)
; decoder-mode: thumb
008af0b8  f0 b5                                            push {r4, r5, r6, r7, lr}
008af0ba  5f 46                                            mov r7, fp
008af0bc  56 46                                            mov r6, sl
008af0be  4d 46                                            mov r5, sb
008af0c0  44 46                                            mov r4, r8
008af0c2  f0 b4                                            push {r4, r5, r6, r7}
008af0c4  73 4e                                            ldr r6, [pc, #0x1cc]
008af0c6  15 1c                                            adds r5, r2, #0
008af0c8  73 4a                                            ldr r2, [pc, #0x1cc]
008af0ca  7e 44                                            add r6, pc
008af0cc  99 46                                            mov sb, r3
008af0ce  b3 58                                            ldr r3, [r6, r2]
008af0d0  97 b0                                            sub sp, #0x5c
008af0d2  0c 1c                                            adds r4, r1, #0
008af0d4  1b 68                                            ldr r3, [r3]
008af0d6  21 99                                            ldr r1, [sp, #0x84]
008af0d8  82 46                                            mov sl, r0
008af0da  15 93                                            str r3, [sp, #0x54]
008af0dc  09 91                                            str r1, [sp, #0x24]
008af0de  0d ab                                            add r3, sp, #0x34
008af0e0  49 46                                            mov r1, sb
008af0e2  20 31                                            adds r1, #0x20
008af0e4  18 1c                                            adds r0, r3, #0
008af0e6  93 46                                            mov fp, r2
008af0e8  98 46                                            mov r8, r3
008af0ea  20 9f                                            ldr r7, [sp, #0x80]
008af0ec  f4 f7 38 fa                                      bl #0x8a3560
008af0f0  6a 4b                                            ldr r3, [pc, #0x1a8]
008af0f2  40 46                                            mov r0, r8
008af0f4  f1 58                                            ldr r1, [r6, r3]
008af0f6  f4 f7 5b fa                                      bl #0x8a35b0
008af0fa  49 46                                            mov r1, sb
008af0fc  03 1c                                            adds r3, r0, #0
008af0fe  4a 68                                            ldr r2, [r1, #4]
008af100  20 1c                                            adds r0, r4, #0
008af102  29 1c                                            adds r1, r5, #0
008af104  ff f7 ec fb                                      bl #0x8ae8e0
008af108  02 1c                                            adds r2, r0, #0
008af10a  07 90                                            str r0, [sp, #0x1c]
008af10c  20 68                                            ldr r0, [r4]
008af10e  01 23                                            movs r3, #1
008af110  1a 40                                            ands r2, r3
008af112  08 92                                            str r2, [sp, #0x20]
008af114  00 28                                            cmp r0, #0
008af116  0f d0                                            beq #0x8af138
008af118  63 7a                                            ldrb r3, [r4, #9]
008af11a  00 2b                                            cmp r3, #0
008af11c  0c d1                                            bne #0x8af138
008af11e  83 68                                            ldr r3, [r0, #8]
008af120  c2 68                                            ldr r2, [r0, #0xc]
008af122  93 42                                            cmp r3, r2
008af124  00 d3                                            blo #0x8af128
008af126  ae e0                                            b #0x8af286
008af128  18 68                                            ldr r0, [r3]
008af12a  60 60                                            str r0, [r4, #4]
008af12c  01 30                                            adds r0, #1
008af12e  43 42                                            rsbs r3, r0, #0
008af130  43 41                                            adcs r3, r0
008af132  23 72                                            strb r3, [r4, #8]
008af134  01 23                                            movs r3, #1
008af136  63 72                                            strb r3, [r4, #9]
008af138  28 68                                            ldr r0, [r5]
008af13a  00 28                                            cmp r0, #0
008af13c  56 d0                                            beq #0x8af1ec
008af13e  6b 7a                                            ldrb r3, [r5, #9]
008af140  00 2b                                            cmp r3, #0
008af142  53 d1                                            bne #0x8af1ec
008af144  83 68                                            ldr r3, [r0, #8]
008af146  c2 68                                            ldr r2, [r0, #0xc]
008af148  93 42                                            cmp r3, r2
008af14a  00 d3                                            blo #0x8af14e
008af14c  93 e0                                            b #0x8af276
008af14e  18 68                                            ldr r0, [r3]
008af150  68 60                                            str r0, [r5, #4]
008af152  01 30                                            adds r0, #1
008af154  01 22                                            movs r2, #1
008af156  43 42                                            rsbs r3, r0, #0
008af158  43 41                                            adcs r3, r0
008af15a  2b 72                                            strb r3, [r5, #8]
008af15c  6a 72                                            strb r2, [r5, #9]
008af15e  22 7a                                            ldrb r2, [r4, #8]
008af160  9a 42                                            cmp r2, r3
008af162  47 d0                                            beq #0x8af1f4
008af164  4e 4b                                            ldr r3, [pc, #0x138]
008af166  40 46                                            mov r0, r8
008af168  f1 58                                            ldr r1, [r6, r3]
008af16a  f4 f7 21 fa                                      bl #0x8a35b0
008af16e  03 68                                            ldr r3, [r0]
008af170  81 46                                            mov sb, r0
008af172  db 68                                            ldr r3, [r3, #0xc]
008af174  98 47                                            blx r3
008af176  6a 46                                            mov r2, sp
008af178  3c 32                                            adds r2, #0x3c
008af17a  0b 90                                            str r0, [sp, #0x2c]
008af17c  0a 92                                            str r2, [sp, #0x28]
008af17e  49 46                                            mov r1, sb
008af180  0b 68                                            ldr r3, [r1]
008af182  10 1c                                            adds r0, r2, #0
008af184  1b 69                                            ldr r3, [r3, #0x10]
008af186  98 47                                            blx r3
008af188  07 9b                                            ldr r3, [sp, #0x1c]
008af18a  08 99                                            ldr r1, [sp, #0x20]
008af18c  20 1c                                            adds r0, r4, #0
008af18e  9a 10                                            asrs r2, r3, #2
008af190  9b 07                                            lsls r3, r3, #0x1e
008af192  db 0f                                            lsrs r3, r3, #0x1f
008af194  01 93                                            str r3, [sp, #4]
008af196  0b 9b                                            ldr r3, [sp, #0x2c]
008af198  00 91                                            str r1, [sp]
008af19a  0a 99                                            ldr r1, [sp, #0x28]
008af19c  02 93                                            str r3, [sp, #8]
008af19e  0e ab                                            add r3, sp, #0x38
008af1a0  03 91                                            str r1, [sp, #0xc]
008af1a2  04 93                                            str r3, [sp, #0x10]
008af1a4  29 1c                                            adds r1, r5, #0
008af1a6  09 9b                                            ldr r3, [sp, #0x24]
008af1a8  fb f7 ae fd                                      bl #0x8aad08
008af1ac  81 46                                            mov sb, r0
008af1ae  0a 98                                            ldr r0, [sp, #0x28]
008af1b0  64 f6 fc e3                                      blx #0x3139ac
008af1b4  4a 46                                            mov r2, sb
008af1b6  00 23                                            movs r3, #0
008af1b8  00 2a                                            cmp r2, #0
008af1ba  24 d1                                            bne #0x8af206
008af1bc  04 23                                            movs r3, #4
008af1be  3b 60                                            str r3, [r7]
008af1c0  20 68                                            ldr r0, [r4]
008af1c2  00 28                                            cmp r0, #0
008af1c4  23 d1                                            bne #0x8af20e
008af1c6  28 68                                            ldr r0, [r5]
008af1c8  00 28                                            cmp r0, #0
008af1ca  32 d0                                            beq #0x8af232
008af1cc  6b 7a                                            ldrb r3, [r5, #9]
008af1ce  00 2b                                            cmp r3, #0
008af1d0  2f d1                                            bne #0x8af232
008af1d2  83 68                                            ldr r3, [r0, #8]
008af1d4  c2 68                                            ldr r2, [r0, #0xc]
008af1d6  93 42                                            cmp r3, r2
008af1d8  49 d2                                            bhs #0x8af26e
008af1da  18 68                                            ldr r0, [r3]
008af1dc  68 60                                            str r0, [r5, #4]
008af1de  01 30                                            adds r0, #1
008af1e0  43 42                                            rsbs r3, r0, #0
008af1e2  43 41                                            adcs r3, r0
008af1e4  01 22                                            movs r2, #1
008af1e6  2b 72                                            strb r3, [r5, #8]
008af1e8  6a 72                                            strb r2, [r5, #9]
008af1ea  23 e0                                            b #0x8af234
008af1ec  2b 7a                                            ldrb r3, [r5, #8]
008af1ee  22 7a                                            ldrb r2, [r4, #8]
008af1f0  9a 42                                            cmp r2, r3
008af1f2  b7 d1                                            bne #0x8af164
008af1f4  08 9b                                            ldr r3, [sp, #0x20]
008af1f6  01 2b                                            cmp r3, #1
008af1f8  e0 d1                                            bne #0x8af1bc
008af1fa  09 99                                            ldr r1, [sp, #0x24]
008af1fc  00 22                                            movs r2, #0
008af1fe  00 23                                            movs r3, #0
008af200  0a 60                                            str r2, [r1]
008af202  4b 60                                            str r3, [r1, #4]
008af204  00 23                                            movs r3, #0
008af206  3b 60                                            str r3, [r7]
008af208  20 68                                            ldr r0, [r4]
008af20a  00 28                                            cmp r0, #0
008af20c  db d0                                            beq #0x8af1c6
008af20e  63 7a                                            ldrb r3, [r4, #9]
008af210  00 2b                                            cmp r3, #0
008af212  d8 d1                                            bne #0x8af1c6
008af214  83 68                                            ldr r3, [r0, #8]
008af216  c2 68                                            ldr r2, [r0, #0xc]
008af218  93 42                                            cmp r3, r2
008af21a  30 d2                                            bhs #0x8af27e
008af21c  18 68                                            ldr r0, [r3]
008af21e  60 60                                            str r0, [r4, #4]
008af220  01 30                                            adds r0, #1
008af222  43 42                                            rsbs r3, r0, #0
008af224  43 41                                            adcs r3, r0
008af226  23 72                                            strb r3, [r4, #8]
008af228  01 23                                            movs r3, #1
008af22a  63 72                                            strb r3, [r4, #9]
008af22c  28 68                                            ldr r0, [r5]
008af22e  00 28                                            cmp r0, #0
008af230  cc d1                                            bne #0x8af1cc
008af232  2b 7a                                            ldrb r3, [r5, #8]
008af234  22 7a                                            ldrb r2, [r4, #8]
008af236  9a 42                                            cmp r2, r3
008af238  03 d1                                            bne #0x8af242
008af23a  3a 68                                            ldr r2, [r7]
008af23c  02 23                                            movs r3, #2
008af23e  13 43                                            orrs r3, r2
008af240  3b 60                                            str r3, [r7]
008af242  21 1c                                            adds r1, r4, #0
008af244  0a 22                                            movs r2, #0xa
008af246  50 46                                            mov r0, sl
008af248  5e f6 76 e6                                      blx #0x30df38
008af24c  40 46                                            mov r0, r8
008af24e  f4 f7 51 f9                                      bl #0x8a34f4
008af252  59 46                                            mov r1, fp
008af254  73 58                                            ldr r3, [r6, r1]
008af256  15 9a                                            ldr r2, [sp, #0x54]
008af258  50 46                                            mov r0, sl
008af25a  1b 68                                            ldr r3, [r3]
008af25c  9a 42                                            cmp r2, r3
008af25e  16 d1                                            bne #0x8af28e
008af260  17 b0                                            add sp, #0x5c
008af262  3c bc                                            pop {r2, r3, r4, r5}
008af264  90 46                                            mov r8, r2
008af266  99 46                                            mov sb, r3
008af268  a2 46                                            mov sl, r4
008af26a  ab 46                                            mov fp, r5
008af26c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008af26e  03 68                                            ldr r3, [r0]
008af270  1b 6a                                            ldr r3, [r3, #0x20]
008af272  98 47                                            blx r3
008af274  b2 e7                                            b #0x8af1dc
008af276  03 68                                            ldr r3, [r0]
008af278  1b 6a                                            ldr r3, [r3, #0x20]
008af27a  98 47                                            blx r3
008af27c  68 e7                                            b #0x8af150
008af27e  03 68                                            ldr r3, [r0]
008af280  1b 6a                                            ldr r3, [r3, #0x20]
008af282  98 47                                            blx r3
008af284  cb e7                                            b #0x8af21e
008af286  03 68                                            ldr r3, [r0]
008af288  1b 6a                                            ldr r3, [r3, #0x20]
008af28a  98 47                                            blx r3
008af28c  4d e7                                            b #0x8af12a
008af28e  5f f6 40 e0                                      blx #0x30e310
008af292  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008af294  ca 59 0e 00 ac 40 00 00 44 1e 00 00 58 19 00 00  .byte 0xca, 0x59, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00, 0x58, 0x19, 0x00, 0x00

; FUNCTION 0x008af2d4, declared_size=484, range_size=484, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEElwEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, long, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::ios_base&, int&, long&, wchar_t*)
; decoder-mode: thumb
008af2d4  f0 b5                                            push {r4, r5, r6, r7, lr}
008af2d6  5f 46                                            mov r7, fp
008af2d8  56 46                                            mov r6, sl
008af2da  4d 46                                            mov r5, sb
008af2dc  44 46                                            mov r4, r8
008af2de  f0 b4                                            push {r4, r5, r6, r7}
008af2e0  71 4e                                            ldr r6, [pc, #0x1c4]
008af2e2  15 1c                                            adds r5, r2, #0
008af2e4  71 4a                                            ldr r2, [pc, #0x1c4]
008af2e6  7e 44                                            add r6, pc
008af2e8  99 46                                            mov sb, r3
008af2ea  b3 58                                            ldr r3, [r6, r2]
008af2ec  97 b0                                            sub sp, #0x5c
008af2ee  0c 1c                                            adds r4, r1, #0
008af2f0  1b 68                                            ldr r3, [r3]
008af2f2  21 99                                            ldr r1, [sp, #0x84]
008af2f4  82 46                                            mov sl, r0
008af2f6  15 93                                            str r3, [sp, #0x54]
008af2f8  09 91                                            str r1, [sp, #0x24]
008af2fa  0d ab                                            add r3, sp, #0x34
008af2fc  49 46                                            mov r1, sb
008af2fe  20 31                                            adds r1, #0x20
008af300  18 1c                                            adds r0, r3, #0
008af302  93 46                                            mov fp, r2
008af304  98 46                                            mov r8, r3
008af306  20 9f                                            ldr r7, [sp, #0x80]
008af308  f4 f7 2a f9                                      bl #0x8a3560
008af30c  68 4b                                            ldr r3, [pc, #0x1a0]
008af30e  40 46                                            mov r0, r8
008af310  f1 58                                            ldr r1, [r6, r3]
008af312  f4 f7 4d f9                                      bl #0x8a35b0
008af316  49 46                                            mov r1, sb
008af318  03 1c                                            adds r3, r0, #0
008af31a  4a 68                                            ldr r2, [r1, #4]
008af31c  20 1c                                            adds r0, r4, #0
008af31e  29 1c                                            adds r1, r5, #0
008af320  ff f7 de fa                                      bl #0x8ae8e0
008af324  02 1c                                            adds r2, r0, #0
008af326  07 90                                            str r0, [sp, #0x1c]
008af328  20 68                                            ldr r0, [r4]
008af32a  01 23                                            movs r3, #1
008af32c  1a 40                                            ands r2, r3
008af32e  08 92                                            str r2, [sp, #0x20]
008af330  00 28                                            cmp r0, #0
008af332  0f d0                                            beq #0x8af354
008af334  63 7a                                            ldrb r3, [r4, #9]
008af336  00 2b                                            cmp r3, #0
008af338  0c d1                                            bne #0x8af354
008af33a  83 68                                            ldr r3, [r0, #8]
008af33c  c2 68                                            ldr r2, [r0, #0xc]
008af33e  93 42                                            cmp r3, r2
008af340  00 d3                                            blo #0x8af344
008af342  ab e0                                            b #0x8af49c
008af344  18 68                                            ldr r0, [r3]
008af346  60 60                                            str r0, [r4, #4]
008af348  01 30                                            adds r0, #1
008af34a  43 42                                            rsbs r3, r0, #0
008af34c  43 41                                            adcs r3, r0
008af34e  23 72                                            strb r3, [r4, #8]
008af350  01 23                                            movs r3, #1
008af352  63 72                                            strb r3, [r4, #9]
008af354  28 68                                            ldr r0, [r5]
008af356  00 28                                            cmp r0, #0
008af358  56 d0                                            beq #0x8af408
008af35a  6b 7a                                            ldrb r3, [r5, #9]
008af35c  00 2b                                            cmp r3, #0
008af35e  53 d1                                            bne #0x8af408
008af360  83 68                                            ldr r3, [r0, #8]
008af362  c2 68                                            ldr r2, [r0, #0xc]
008af364  93 42                                            cmp r3, r2
008af366  00 d3                                            blo #0x8af36a
008af368  90 e0                                            b #0x8af48c
008af36a  18 68                                            ldr r0, [r3]
008af36c  68 60                                            str r0, [r5, #4]
008af36e  01 30                                            adds r0, #1
008af370  01 22                                            movs r2, #1
008af372  43 42                                            rsbs r3, r0, #0
008af374  43 41                                            adcs r3, r0
008af376  2b 72                                            strb r3, [r5, #8]
008af378  6a 72                                            strb r2, [r5, #9]
008af37a  22 7a                                            ldrb r2, [r4, #8]
008af37c  9a 42                                            cmp r2, r3
008af37e  47 d0                                            beq #0x8af410
008af380  4c 4b                                            ldr r3, [pc, #0x130]
008af382  40 46                                            mov r0, r8
008af384  f1 58                                            ldr r1, [r6, r3]
008af386  f4 f7 13 f9                                      bl #0x8a35b0
008af38a  03 68                                            ldr r3, [r0]
008af38c  81 46                                            mov sb, r0
008af38e  db 68                                            ldr r3, [r3, #0xc]
008af390  98 47                                            blx r3
008af392  6a 46                                            mov r2, sp
008af394  3c 32                                            adds r2, #0x3c
008af396  0b 90                                            str r0, [sp, #0x2c]
008af398  0a 92                                            str r2, [sp, #0x28]
008af39a  49 46                                            mov r1, sb
008af39c  0b 68                                            ldr r3, [r1]
008af39e  10 1c                                            adds r0, r2, #0
008af3a0  1b 69                                            ldr r3, [r3, #0x10]
008af3a2  98 47                                            blx r3
008af3a4  07 9b                                            ldr r3, [sp, #0x1c]
008af3a6  08 99                                            ldr r1, [sp, #0x20]
008af3a8  20 1c                                            adds r0, r4, #0
008af3aa  9a 10                                            asrs r2, r3, #2
008af3ac  9b 07                                            lsls r3, r3, #0x1e
008af3ae  db 0f                                            lsrs r3, r3, #0x1f
008af3b0  01 93                                            str r3, [sp, #4]
008af3b2  0b 9b                                            ldr r3, [sp, #0x2c]
008af3b4  00 91                                            str r1, [sp]
008af3b6  0a 99                                            ldr r1, [sp, #0x28]
008af3b8  02 93                                            str r3, [sp, #8]
008af3ba  0e ab                                            add r3, sp, #0x38
008af3bc  03 91                                            str r1, [sp, #0xc]
008af3be  04 93                                            str r3, [sp, #0x10]
008af3c0  29 1c                                            adds r1, r5, #0
008af3c2  09 9b                                            ldr r3, [sp, #0x24]
008af3c4  fb f7 d2 fb                                      bl #0x8aab6c
008af3c8  81 46                                            mov sb, r0
008af3ca  0a 98                                            ldr r0, [sp, #0x28]
008af3cc  64 f6 ee e2                                      blx #0x3139ac
008af3d0  4a 46                                            mov r2, sb
008af3d2  00 23                                            movs r3, #0
008af3d4  00 2a                                            cmp r2, #0
008af3d6  21 d1                                            bne #0x8af41c
008af3d8  04 23                                            movs r3, #4
008af3da  3b 60                                            str r3, [r7]
008af3dc  20 68                                            ldr r0, [r4]
008af3de  00 28                                            cmp r0, #0
008af3e0  20 d1                                            bne #0x8af424
008af3e2  28 68                                            ldr r0, [r5]
008af3e4  00 28                                            cmp r0, #0
008af3e6  2f d0                                            beq #0x8af448
008af3e8  6b 7a                                            ldrb r3, [r5, #9]
008af3ea  00 2b                                            cmp r3, #0
008af3ec  2c d1                                            bne #0x8af448
008af3ee  83 68                                            ldr r3, [r0, #8]
008af3f0  c2 68                                            ldr r2, [r0, #0xc]
008af3f2  93 42                                            cmp r3, r2
008af3f4  46 d2                                            bhs #0x8af484
008af3f6  18 68                                            ldr r0, [r3]
008af3f8  68 60                                            str r0, [r5, #4]
008af3fa  01 30                                            adds r0, #1
008af3fc  43 42                                            rsbs r3, r0, #0
008af3fe  43 41                                            adcs r3, r0
008af400  01 22                                            movs r2, #1
008af402  2b 72                                            strb r3, [r5, #8]
008af404  6a 72                                            strb r2, [r5, #9]
008af406  20 e0                                            b #0x8af44a
008af408  2b 7a                                            ldrb r3, [r5, #8]
008af40a  22 7a                                            ldrb r2, [r4, #8]
008af40c  9a 42                                            cmp r2, r3
008af40e  b7 d1                                            bne #0x8af380
008af410  08 9b                                            ldr r3, [sp, #0x20]
008af412  01 2b                                            cmp r3, #1
008af414  e0 d1                                            bne #0x8af3d8
008af416  09 99                                            ldr r1, [sp, #0x24]
008af418  00 23                                            movs r3, #0
008af41a  0b 60                                            str r3, [r1]
008af41c  3b 60                                            str r3, [r7]
008af41e  20 68                                            ldr r0, [r4]
008af420  00 28                                            cmp r0, #0
008af422  de d0                                            beq #0x8af3e2
008af424  63 7a                                            ldrb r3, [r4, #9]
008af426  00 2b                                            cmp r3, #0
008af428  db d1                                            bne #0x8af3e2
008af42a  83 68                                            ldr r3, [r0, #8]
008af42c  c2 68                                            ldr r2, [r0, #0xc]
008af42e  93 42                                            cmp r3, r2
008af430  30 d2                                            bhs #0x8af494
008af432  18 68                                            ldr r0, [r3]
008af434  60 60                                            str r0, [r4, #4]
008af436  01 30                                            adds r0, #1
008af438  43 42                                            rsbs r3, r0, #0
008af43a  43 41                                            adcs r3, r0
008af43c  23 72                                            strb r3, [r4, #8]
008af43e  01 23                                            movs r3, #1
008af440  63 72                                            strb r3, [r4, #9]
008af442  28 68                                            ldr r0, [r5]
008af444  00 28                                            cmp r0, #0
008af446  cf d1                                            bne #0x8af3e8
008af448  2b 7a                                            ldrb r3, [r5, #8]
008af44a  22 7a                                            ldrb r2, [r4, #8]
008af44c  9a 42                                            cmp r2, r3
008af44e  03 d1                                            bne #0x8af458
008af450  3a 68                                            ldr r2, [r7]
008af452  02 23                                            movs r3, #2
008af454  13 43                                            orrs r3, r2
008af456  3b 60                                            str r3, [r7]
008af458  21 1c                                            adds r1, r4, #0
008af45a  0a 22                                            movs r2, #0xa
008af45c  50 46                                            mov r0, sl
008af45e  5e f6 6c e5                                      blx #0x30df38
008af462  40 46                                            mov r0, r8
008af464  f4 f7 46 f8                                      bl #0x8a34f4
008af468  59 46                                            mov r1, fp
008af46a  73 58                                            ldr r3, [r6, r1]
008af46c  15 9a                                            ldr r2, [sp, #0x54]
008af46e  50 46                                            mov r0, sl
008af470  1b 68                                            ldr r3, [r3]
008af472  9a 42                                            cmp r2, r3
008af474  16 d1                                            bne #0x8af4a4
008af476  17 b0                                            add sp, #0x5c
008af478  3c bc                                            pop {r2, r3, r4, r5}
008af47a  90 46                                            mov r8, r2
008af47c  99 46                                            mov sb, r3
008af47e  a2 46                                            mov sl, r4
008af480  ab 46                                            mov fp, r5
008af482  f0 bd                                            pop {r4, r5, r6, r7, pc}
008af484  03 68                                            ldr r3, [r0]
008af486  1b 6a                                            ldr r3, [r3, #0x20]
008af488  98 47                                            blx r3
008af48a  b5 e7                                            b #0x8af3f8
008af48c  03 68                                            ldr r3, [r0]
008af48e  1b 6a                                            ldr r3, [r3, #0x20]
008af490  98 47                                            blx r3
008af492  6b e7                                            b #0x8af36c
008af494  03 68                                            ldr r3, [r0]
008af496  1b 6a                                            ldr r3, [r3, #0x20]
008af498  98 47                                            blx r3
008af49a  cb e7                                            b #0x8af434
008af49c  03 68                                            ldr r3, [r0]
008af49e  1b 6a                                            ldr r3, [r3, #0x20]
008af4a0  98 47                                            blx r3
008af4a2  50 e7                                            b #0x8af346
008af4a4  5e f6 34 e7                                      blx #0x30e310
; mapping-symbol data/literal pool
008af4a8  ae 57 0e 00 ac 40 00 00 44 1e 00 00 58 19 00 00  .byte 0xae, 0x57, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00, 0x58, 0x19, 0x00, 0x00

; FUNCTION 0x008af5d4, declared_size=644, range_size=644, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv18__do_get_alphaboolISt19istreambuf_iteratorIwSt11char_traitsIwEEwEET_RS5_S6_RSt8ios_baseRiRbPT0_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_get_alphabool<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::ios_base&, int&, bool&, wchar_t*)
; decoder-mode: thumb
008af5d4  f0 b5                                            push {r4, r5, r6, r7, lr}
008af5d6  5f 46                                            mov r7, fp
008af5d8  56 46                                            mov r6, sl
008af5da  4d 46                                            mov r5, sb
008af5dc  44 46                                            mov r4, r8
008af5de  f0 b4                                            push {r4, r5, r6, r7}
008af5e0  a9 b0                                            sub sp, #0xa4
008af5e2  27 af                                            add r7, sp, #0x9c
008af5e4  0c 1c                                            adds r4, r1, #0
008af5e6  19 1c                                            adds r1, r3, #0
008af5e8  01 90                                            str r0, [sp, #4]
008af5ea  20 31                                            adds r1, #0x20
008af5ec  38 1c                                            adds r0, r7, #0
008af5ee  98 4e                                            ldr r6, [pc, #0x260]
008af5f0  15 1c                                            adds r5, r2, #0
008af5f2  f3 f7 b5 ff                                      bl #0x8a3560
008af5f6  97 4b                                            ldr r3, [pc, #0x25c]
008af5f8  7e 44                                            add r6, pc
008af5fa  38 1c                                            adds r0, r7, #0
008af5fc  f1 58                                            ldr r1, [r6, r3]
008af5fe  f3 f7 d7 ff                                      bl #0x8a35b0
008af602  80 46                                            mov r8, r0
008af604  38 1c                                            adds r0, r7, #0
008af606  f3 f7 75 ff                                      bl #0x8a34f4
008af60a  41 46                                            mov r1, r8
008af60c  0b 68                                            ldr r3, [r1]
008af60e  15 ae                                            add r6, sp, #0x54
008af610  30 1c                                            adds r0, r6, #0
008af612  5b 69                                            ldr r3, [r3, #0x14]
008af614  98 47                                            blx r3
008af616  42 46                                            mov r2, r8
008af618  13 68                                            ldr r3, [r2]
008af61a  03 af                                            add r7, sp, #0xc
008af61c  41 46                                            mov r1, r8
008af61e  9b 69                                            ldr r3, [r3, #0x18]
008af620  38 1c                                            adds r0, r7, #0
008af622  98 47                                            blx r3
008af624  00 23                                            movs r3, #0
008af626  01 21                                            movs r1, #1
008af628  98 46                                            mov r8, r3
008af62a  9a 46                                            mov sl, r3
008af62c  8b 46                                            mov fp, r1
008af62e  89 46                                            mov sb, r1
008af630  20 68                                            ldr r0, [r4]
008af632  00 28                                            cmp r0, #0
008af634  0f d0                                            beq #0x8af656
008af636  63 7a                                            ldrb r3, [r4, #9]
008af638  00 2b                                            cmp r3, #0
008af63a  0c d1                                            bne #0x8af656
008af63c  83 68                                            ldr r3, [r0, #8]
008af63e  c2 68                                            ldr r2, [r0, #0xc]
008af640  93 42                                            cmp r3, r2
008af642  00 d3                                            blo #0x8af646
008af644  d7 e0                                            b #0x8af7f6
008af646  18 68                                            ldr r0, [r3]
008af648  60 60                                            str r0, [r4, #4]
008af64a  01 30                                            adds r0, #1
008af64c  43 42                                            rsbs r3, r0, #0
008af64e  43 41                                            adcs r3, r0
008af650  01 21                                            movs r1, #1
008af652  23 72                                            strb r3, [r4, #8]
008af654  61 72                                            strb r1, [r4, #9]
008af656  28 68                                            ldr r0, [r5]
008af658  00 28                                            cmp r0, #0
008af65a  00 d1                                            bne #0x8af65e
008af65c  97 e0                                            b #0x8af78e
008af65e  6b 7a                                            ldrb r3, [r5, #9]
008af660  00 2b                                            cmp r3, #0
008af662  00 d0                                            beq #0x8af666
008af664  93 e0                                            b #0x8af78e
008af666  83 68                                            ldr r3, [r0, #8]
008af668  c2 68                                            ldr r2, [r0, #0xc]
008af66a  93 42                                            cmp r3, r2
008af66c  00 d3                                            blo #0x8af670
008af66e  be e0                                            b #0x8af7ee
008af670  18 68                                            ldr r0, [r3]
008af672  68 60                                            str r0, [r5, #4]
008af674  01 30                                            adds r0, #1
008af676  43 42                                            rsbs r3, r0, #0
008af678  43 41                                            adcs r3, r0
008af67a  01 22                                            movs r2, #1
008af67c  2b 72                                            strb r3, [r5, #8]
008af67e  6a 72                                            strb r2, [r5, #9]
008af680  22 7a                                            ldrb r2, [r4, #8]
008af682  9a 42                                            cmp r2, r3
008af684  38 d0                                            beq #0x8af6f8
008af686  63 7a                                            ldrb r3, [r4, #9]
008af688  00 2b                                            cmp r3, #0
008af68a  00 d0                                            beq #0x8af68e
008af68c  a2 e0                                            b #0x8af7d4
008af68e  20 68                                            ldr r0, [r4]
008af690  83 68                                            ldr r3, [r0, #8]
008af692  c2 68                                            ldr r2, [r0, #0xc]
008af694  93 42                                            cmp r3, r2
008af696  00 d3                                            blo #0x8af69a
008af698  a3 e0                                            b #0x8af7e2
008af69a  1b 68                                            ldr r3, [r3]
008af69c  59 1c                                            adds r1, r3, #1
008af69e  4a 42                                            rsbs r2, r1, #0
008af6a0  4a 41                                            adcs r2, r1
008af6a2  22 72                                            strb r2, [r4, #8]
008af6a4  01 22                                            movs r2, #1
008af6a6  63 60                                            str r3, [r4, #4]
008af6a8  62 72                                            strb r2, [r4, #9]
008af6aa  49 46                                            mov r1, sb
008af6ac  00 29                                            cmp r1, #0
008af6ae  06 d0                                            beq #0x8af6be
008af6b0  72 6c                                            ldr r2, [r6, #0x44]
008af6b2  41 46                                            mov r1, r8
008af6b4  52 58                                            ldr r2, [r2, r1]
008af6b6  d2 1a                                            subs r2, r2, r3
008af6b8  51 42                                            rsbs r1, r2, #0
008af6ba  51 41                                            adcs r1, r2
008af6bc  89 46                                            mov sb, r1
008af6be  5a 46                                            mov r2, fp
008af6c0  00 2a                                            cmp r2, #0
008af6c2  06 d0                                            beq #0x8af6d2
008af6c4  7a 6c                                            ldr r2, [r7, #0x44]
008af6c6  41 46                                            mov r1, r8
008af6c8  52 58                                            ldr r2, [r2, r1]
008af6ca  d3 1a                                            subs r3, r2, r3
008af6cc  5a 42                                            rsbs r2, r3, #0
008af6ce  5a 41                                            adcs r2, r3
008af6d0  93 46                                            mov fp, r2
008af6d2  01 23                                            movs r3, #1
008af6d4  49 46                                            mov r1, sb
008af6d6  9a 44                                            add sl, r3
008af6d8  00 29                                            cmp r1, #0
008af6da  5a d0                                            beq #0x8af792
008af6dc  32 6c                                            ldr r2, [r6, #0x40]
008af6de  73 6c                                            ldr r3, [r6, #0x44]
008af6e0  d3 1a                                            subs r3, r2, r3
008af6e2  9b 10                                            asrs r3, r3, #2
008af6e4  9a 45                                            cmp sl, r3
008af6e6  67 d3                                            blo #0x8af7b8
008af6e8  83 68                                            ldr r3, [r0, #8]
008af6ea  c2 68                                            ldr r2, [r0, #0xc]
008af6ec  93 42                                            cmp r3, r2
008af6ee  5f d2                                            bhs #0x8af7b0
008af6f0  04 33                                            adds r3, #4
008af6f2  83 60                                            str r3, [r0, #8]
008af6f4  00 23                                            movs r3, #0
008af6f6  63 72                                            strb r3, [r4, #9]
008af6f8  4b 46                                            mov r3, sb
008af6fa  00 2b                                            cmp r3, #0
008af6fc  08 d0                                            beq #0x8af710
008af6fe  73 6c                                            ldr r3, [r6, #0x44]
008af700  32 6c                                            ldr r2, [r6, #0x40]
008af702  51 46                                            mov r1, sl
008af704  d2 1a                                            subs r2, r2, r3
008af706  92 10                                            asrs r2, r2, #2
008af708  00 23                                            movs r3, #0
008af70a  91 42                                            cmp r1, r2
008af70c  5b 41                                            adcs r3, r3
008af70e  99 46                                            mov sb, r3
008af710  5a 46                                            mov r2, fp
008af712  00 2a                                            cmp r2, #0
008af714  08 d0                                            beq #0x8af728
008af716  7b 6c                                            ldr r3, [r7, #0x44]
008af718  3a 6c                                            ldr r2, [r7, #0x40]
008af71a  51 46                                            mov r1, sl
008af71c  d2 1a                                            subs r2, r2, r3
008af71e  92 10                                            asrs r2, r2, #2
008af720  00 23                                            movs r3, #0
008af722  91 42                                            cmp r1, r2
008af724  5b 41                                            adcs r3, r3
008af726  9b 46                                            mov fp, r3
008af728  4a 46                                            mov r2, sb
008af72a  00 2a                                            cmp r2, #0
008af72c  03 d1                                            bne #0x8af736
008af72e  5b 46                                            mov r3, fp
008af730  00 2b                                            cmp r3, #0
008af732  00 d1                                            bne #0x8af736
008af734  80 e0                                            b #0x8af838
008af736  32 99                                            ldr r1, [sp, #0xc8]
008af738  00 23                                            movs r3, #0
008af73a  4a 46                                            mov r2, sb
008af73c  0b 60                                            str r3, [r1]
008af73e  33 9b                                            ldr r3, [sp, #0xcc]
008af740  1a 70                                            strb r2, [r3]
008af742  20 68                                            ldr r0, [r4]
008af744  00 28                                            cmp r0, #0
008af746  0f d0                                            beq #0x8af768
008af748  63 7a                                            ldrb r3, [r4, #9]
008af74a  00 2b                                            cmp r3, #0
008af74c  0c d1                                            bne #0x8af768
008af74e  83 68                                            ldr r3, [r0, #8]
008af750  c2 68                                            ldr r2, [r0, #0xc]
008af752  93 42                                            cmp r3, r2
008af754  00 d3                                            blo #0x8af758
008af756  77 e0                                            b #0x8af848
008af758  18 68                                            ldr r0, [r3]
008af75a  60 60                                            str r0, [r4, #4]
008af75c  01 30                                            adds r0, #1
008af75e  43 42                                            rsbs r3, r0, #0
008af760  43 41                                            adcs r3, r0
008af762  23 72                                            strb r3, [r4, #8]
008af764  01 23                                            movs r3, #1
008af766  63 72                                            strb r3, [r4, #9]
008af768  28 68                                            ldr r0, [r5]
008af76a  00 28                                            cmp r0, #0
008af76c  47 d0                                            beq #0x8af7fe
008af76e  6b 7a                                            ldrb r3, [r5, #9]
008af770  00 2b                                            cmp r3, #0
008af772  44 d1                                            bne #0x8af7fe
008af774  83 68                                            ldr r3, [r0, #8]
008af776  c2 68                                            ldr r2, [r0, #0xc]
008af778  93 42                                            cmp r3, r2
008af77a  61 d2                                            bhs #0x8af840
008af77c  18 68                                            ldr r0, [r3]
008af77e  68 60                                            str r0, [r5, #4]
008af780  01 30                                            adds r0, #1
008af782  43 42                                            rsbs r3, r0, #0
008af784  43 41                                            adcs r3, r0
008af786  01 22                                            movs r2, #1
008af788  2b 72                                            strb r3, [r5, #8]
008af78a  6a 72                                            strb r2, [r5, #9]
008af78c  38 e0                                            b #0x8af800
008af78e  2b 7a                                            ldrb r3, [r5, #8]
008af790  76 e7                                            b #0x8af680
008af792  5a 46                                            mov r2, fp
008af794  00 2a                                            cmp r2, #0
008af796  a7 d0                                            beq #0x8af6e8
008af798  3a 6c                                            ldr r2, [r7, #0x40]
008af79a  7b 6c                                            ldr r3, [r7, #0x44]
008af79c  d3 1a                                            subs r3, r2, r3
008af79e  9b 10                                            asrs r3, r3, #2
008af7a0  9a 45                                            cmp sl, r3
008af7a2  0c d3                                            blo #0x8af7be
008af7a4  83 68                                            ldr r3, [r0, #8]
008af7a6  c2 68                                            ldr r2, [r0, #0xc]
008af7a8  01 21                                            movs r1, #1
008af7aa  8b 46                                            mov fp, r1
008af7ac  93 42                                            cmp r3, r2
008af7ae  9f d3                                            blo #0x8af6f0
008af7b0  03 68                                            ldr r3, [r0]
008af7b2  5b 6a                                            ldr r3, [r3, #0x24]
008af7b4  98 47                                            blx r3
008af7b6  9d e7                                            b #0x8af6f4
008af7b8  5b 46                                            mov r3, fp
008af7ba  00 2b                                            cmp r3, #0
008af7bc  ec d1                                            bne #0x8af798
008af7be  83 68                                            ldr r3, [r0, #8]
008af7c0  c2 68                                            ldr r2, [r0, #0xc]
008af7c2  93 42                                            cmp r3, r2
008af7c4  09 d2                                            bhs #0x8af7da
008af7c6  04 33                                            adds r3, #4
008af7c8  83 60                                            str r3, [r0, #8]
008af7ca  00 22                                            movs r2, #0
008af7cc  04 23                                            movs r3, #4
008af7ce  62 72                                            strb r2, [r4, #9]
008af7d0  98 44                                            add r8, r3
008af7d2  2d e7                                            b #0x8af630
008af7d4  63 68                                            ldr r3, [r4, #4]
008af7d6  20 68                                            ldr r0, [r4]
008af7d8  67 e7                                            b #0x8af6aa
008af7da  03 68                                            ldr r3, [r0]
008af7dc  5b 6a                                            ldr r3, [r3, #0x24]
008af7de  98 47                                            blx r3
008af7e0  f3 e7                                            b #0x8af7ca
008af7e2  03 68                                            ldr r3, [r0]
008af7e4  1b 6a                                            ldr r3, [r3, #0x20]
008af7e6  98 47                                            blx r3
008af7e8  03 1c                                            adds r3, r0, #0
008af7ea  20 68                                            ldr r0, [r4]
008af7ec  56 e7                                            b #0x8af69c
008af7ee  03 68                                            ldr r3, [r0]
008af7f0  1b 6a                                            ldr r3, [r3, #0x20]
008af7f2  98 47                                            blx r3
008af7f4  3d e7                                            b #0x8af672
008af7f6  03 68                                            ldr r3, [r0]
008af7f8  1b 6a                                            ldr r3, [r3, #0x20]
008af7fa  98 47                                            blx r3
008af7fc  24 e7                                            b #0x8af648
008af7fe  2b 7a                                            ldrb r3, [r5, #8]
008af800  22 7a                                            ldrb r2, [r4, #8]
008af802  9a 42                                            cmp r2, r3
008af804  05 d1                                            bne #0x8af812
008af806  32 9b                                            ldr r3, [sp, #0xc8]
008af808  32 99                                            ldr r1, [sp, #0xc8]
008af80a  1a 68                                            ldr r2, [r3]
008af80c  02 23                                            movs r3, #2
008af80e  13 43                                            orrs r3, r2
008af810  0b 60                                            str r3, [r1]
008af812  21 1c                                            adds r1, r4, #0
008af814  0a 22                                            movs r2, #0xa
008af816  01 98                                            ldr r0, [sp, #4]
008af818  5e f6 8e e3                                      blx #0x30df38
008af81c  38 1c                                            adds r0, r7, #0
008af81e  69 f6 c8 e5                                      blx #0x3193b0
008af822  30 1c                                            adds r0, r6, #0
008af824  69 f6 c4 e5                                      blx #0x3193b0
008af828  01 98                                            ldr r0, [sp, #4]
008af82a  29 b0                                            add sp, #0xa4
008af82c  3c bc                                            pop {r2, r3, r4, r5}
008af82e  90 46                                            mov r8, r2
008af830  99 46                                            mov sb, r3
008af832  a2 46                                            mov sl, r4
008af834  ab 46                                            mov fp, r5
008af836  f0 bd                                            pop {r4, r5, r6, r7, pc}
008af838  32 99                                            ldr r1, [sp, #0xc8]
008af83a  04 23                                            movs r3, #4
008af83c  0b 60                                            str r3, [r1]
008af83e  80 e7                                            b #0x8af742
008af840  03 68                                            ldr r3, [r0]
008af842  1b 6a                                            ldr r3, [r3, #0x20]
008af844  98 47                                            blx r3
008af846  9a e7                                            b #0x8af77e
008af848  03 68                                            ldr r3, [r0]
008af84a  1b 6a                                            ldr r3, [r3, #0x20]
008af84c  98 47                                            blx r3
008af84e  84 e7                                            b #0x8af75a
; mapping-symbol data/literal pool
008af850  9c 54 0e 00 58 19 00 00                          .byte 0x9c, 0x54, 0x0e, 0x00, 0x58, 0x19, 0x00, 0x00

; FUNCTION 0x008b0364, declared_size=484, range_size=484, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEEjwEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, unsigned int, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::ios_base&, int&, unsigned int&, wchar_t*)
; decoder-mode: thumb
008b0364  f0 b5                                            push {r4, r5, r6, r7, lr}
008b0366  5f 46                                            mov r7, fp
008b0368  56 46                                            mov r6, sl
008b036a  4d 46                                            mov r5, sb
008b036c  44 46                                            mov r4, r8
008b036e  f0 b4                                            push {r4, r5, r6, r7}
008b0370  71 4e                                            ldr r6, [pc, #0x1c4]
008b0372  15 1c                                            adds r5, r2, #0
008b0374  71 4a                                            ldr r2, [pc, #0x1c4]
008b0376  7e 44                                            add r6, pc
008b0378  99 46                                            mov sb, r3
008b037a  b3 58                                            ldr r3, [r6, r2]
008b037c  97 b0                                            sub sp, #0x5c
008b037e  0c 1c                                            adds r4, r1, #0
008b0380  1b 68                                            ldr r3, [r3]
008b0382  21 99                                            ldr r1, [sp, #0x84]
008b0384  82 46                                            mov sl, r0
008b0386  15 93                                            str r3, [sp, #0x54]
008b0388  09 91                                            str r1, [sp, #0x24]
008b038a  0d ab                                            add r3, sp, #0x34
008b038c  49 46                                            mov r1, sb
008b038e  20 31                                            adds r1, #0x20
008b0390  18 1c                                            adds r0, r3, #0
008b0392  93 46                                            mov fp, r2
008b0394  98 46                                            mov r8, r3
008b0396  20 9f                                            ldr r7, [sp, #0x80]
008b0398  f3 f7 e2 f8                                      bl #0x8a3560
008b039c  68 4b                                            ldr r3, [pc, #0x1a0]
008b039e  40 46                                            mov r0, r8
008b03a0  f1 58                                            ldr r1, [r6, r3]
008b03a2  f3 f7 05 f9                                      bl #0x8a35b0
008b03a6  49 46                                            mov r1, sb
008b03a8  03 1c                                            adds r3, r0, #0
008b03aa  4a 68                                            ldr r2, [r1, #4]
008b03ac  20 1c                                            adds r0, r4, #0
008b03ae  29 1c                                            adds r1, r5, #0
008b03b0  fe f7 96 fa                                      bl #0x8ae8e0
008b03b4  02 1c                                            adds r2, r0, #0
008b03b6  07 90                                            str r0, [sp, #0x1c]
008b03b8  20 68                                            ldr r0, [r4]
008b03ba  01 23                                            movs r3, #1
008b03bc  1a 40                                            ands r2, r3
008b03be  08 92                                            str r2, [sp, #0x20]
008b03c0  00 28                                            cmp r0, #0
008b03c2  0f d0                                            beq #0x8b03e4
008b03c4  63 7a                                            ldrb r3, [r4, #9]
008b03c6  00 2b                                            cmp r3, #0
008b03c8  0c d1                                            bne #0x8b03e4
008b03ca  83 68                                            ldr r3, [r0, #8]
008b03cc  c2 68                                            ldr r2, [r0, #0xc]
008b03ce  93 42                                            cmp r3, r2
008b03d0  00 d3                                            blo #0x8b03d4
008b03d2  ab e0                                            b #0x8b052c
008b03d4  18 68                                            ldr r0, [r3]
008b03d6  60 60                                            str r0, [r4, #4]
008b03d8  01 30                                            adds r0, #1
008b03da  43 42                                            rsbs r3, r0, #0
008b03dc  43 41                                            adcs r3, r0
008b03de  23 72                                            strb r3, [r4, #8]
008b03e0  01 23                                            movs r3, #1
008b03e2  63 72                                            strb r3, [r4, #9]
008b03e4  28 68                                            ldr r0, [r5]
008b03e6  00 28                                            cmp r0, #0
008b03e8  56 d0                                            beq #0x8b0498
008b03ea  6b 7a                                            ldrb r3, [r5, #9]
008b03ec  00 2b                                            cmp r3, #0
008b03ee  53 d1                                            bne #0x8b0498
008b03f0  83 68                                            ldr r3, [r0, #8]
008b03f2  c2 68                                            ldr r2, [r0, #0xc]
008b03f4  93 42                                            cmp r3, r2
008b03f6  00 d3                                            blo #0x8b03fa
008b03f8  90 e0                                            b #0x8b051c
008b03fa  18 68                                            ldr r0, [r3]
008b03fc  68 60                                            str r0, [r5, #4]
008b03fe  01 30                                            adds r0, #1
008b0400  01 22                                            movs r2, #1
008b0402  43 42                                            rsbs r3, r0, #0
008b0404  43 41                                            adcs r3, r0
008b0406  2b 72                                            strb r3, [r5, #8]
008b0408  6a 72                                            strb r2, [r5, #9]
008b040a  22 7a                                            ldrb r2, [r4, #8]
008b040c  9a 42                                            cmp r2, r3
008b040e  47 d0                                            beq #0x8b04a0
008b0410  4c 4b                                            ldr r3, [pc, #0x130]
008b0412  40 46                                            mov r0, r8
008b0414  f1 58                                            ldr r1, [r6, r3]
008b0416  f3 f7 cb f8                                      bl #0x8a35b0
008b041a  03 68                                            ldr r3, [r0]
008b041c  81 46                                            mov sb, r0
008b041e  db 68                                            ldr r3, [r3, #0xc]
008b0420  98 47                                            blx r3
008b0422  6a 46                                            mov r2, sp
008b0424  3c 32                                            adds r2, #0x3c
008b0426  0b 90                                            str r0, [sp, #0x2c]
008b0428  0a 92                                            str r2, [sp, #0x28]
008b042a  49 46                                            mov r1, sb
008b042c  0b 68                                            ldr r3, [r1]
008b042e  10 1c                                            adds r0, r2, #0
008b0430  1b 69                                            ldr r3, [r3, #0x10]
008b0432  98 47                                            blx r3
008b0434  07 9b                                            ldr r3, [sp, #0x1c]
008b0436  08 99                                            ldr r1, [sp, #0x20]
008b0438  20 1c                                            adds r0, r4, #0
008b043a  9a 10                                            asrs r2, r3, #2
008b043c  9b 07                                            lsls r3, r3, #0x1e
008b043e  db 0f                                            lsrs r3, r3, #0x1f
008b0440  01 93                                            str r3, [sp, #4]
008b0442  0b 9b                                            ldr r3, [sp, #0x2c]
008b0444  00 91                                            str r1, [sp]
008b0446  0a 99                                            ldr r1, [sp, #0x28]
008b0448  02 93                                            str r3, [sp, #8]
008b044a  0e ab                                            add r3, sp, #0x38
008b044c  03 91                                            str r1, [sp, #0xc]
008b044e  04 93                                            str r3, [sp, #0x10]
008b0450  29 1c                                            adds r1, r5, #0
008b0452  09 9b                                            ldr r3, [sp, #0x24]
008b0454  ff f7 94 fe                                      bl #0x8b0180
008b0458  81 46                                            mov sb, r0
008b045a  0a 98                                            ldr r0, [sp, #0x28]
008b045c  63 f6 a6 e2                                      blx #0x3139ac
008b0460  4a 46                                            mov r2, sb
008b0462  00 23                                            movs r3, #0
008b0464  00 2a                                            cmp r2, #0
008b0466  21 d1                                            bne #0x8b04ac
008b0468  04 23                                            movs r3, #4
008b046a  3b 60                                            str r3, [r7]
008b046c  20 68                                            ldr r0, [r4]
008b046e  00 28                                            cmp r0, #0
008b0470  20 d1                                            bne #0x8b04b4
008b0472  28 68                                            ldr r0, [r5]
008b0474  00 28                                            cmp r0, #0
008b0476  2f d0                                            beq #0x8b04d8
008b0478  6b 7a                                            ldrb r3, [r5, #9]
008b047a  00 2b                                            cmp r3, #0
008b047c  2c d1                                            bne #0x8b04d8
008b047e  83 68                                            ldr r3, [r0, #8]
008b0480  c2 68                                            ldr r2, [r0, #0xc]
008b0482  93 42                                            cmp r3, r2
008b0484  46 d2                                            bhs #0x8b0514
008b0486  18 68                                            ldr r0, [r3]
008b0488  68 60                                            str r0, [r5, #4]
008b048a  01 30                                            adds r0, #1
008b048c  43 42                                            rsbs r3, r0, #0
008b048e  43 41                                            adcs r3, r0
008b0490  01 22                                            movs r2, #1
008b0492  2b 72                                            strb r3, [r5, #8]
008b0494  6a 72                                            strb r2, [r5, #9]
008b0496  20 e0                                            b #0x8b04da
008b0498  2b 7a                                            ldrb r3, [r5, #8]
008b049a  22 7a                                            ldrb r2, [r4, #8]
008b049c  9a 42                                            cmp r2, r3
008b049e  b7 d1                                            bne #0x8b0410
008b04a0  08 9b                                            ldr r3, [sp, #0x20]
008b04a2  01 2b                                            cmp r3, #1
008b04a4  e0 d1                                            bne #0x8b0468
008b04a6  09 99                                            ldr r1, [sp, #0x24]
008b04a8  00 23                                            movs r3, #0
008b04aa  0b 60                                            str r3, [r1]
008b04ac  3b 60                                            str r3, [r7]
008b04ae  20 68                                            ldr r0, [r4]
008b04b0  00 28                                            cmp r0, #0
008b04b2  de d0                                            beq #0x8b0472
008b04b4  63 7a                                            ldrb r3, [r4, #9]
008b04b6  00 2b                                            cmp r3, #0
008b04b8  db d1                                            bne #0x8b0472
008b04ba  83 68                                            ldr r3, [r0, #8]
008b04bc  c2 68                                            ldr r2, [r0, #0xc]
008b04be  93 42                                            cmp r3, r2
008b04c0  30 d2                                            bhs #0x8b0524
008b04c2  18 68                                            ldr r0, [r3]
008b04c4  60 60                                            str r0, [r4, #4]
008b04c6  01 30                                            adds r0, #1
008b04c8  43 42                                            rsbs r3, r0, #0
008b04ca  43 41                                            adcs r3, r0
008b04cc  23 72                                            strb r3, [r4, #8]
008b04ce  01 23                                            movs r3, #1
008b04d0  63 72                                            strb r3, [r4, #9]
008b04d2  28 68                                            ldr r0, [r5]
008b04d4  00 28                                            cmp r0, #0
008b04d6  cf d1                                            bne #0x8b0478
008b04d8  2b 7a                                            ldrb r3, [r5, #8]
008b04da  22 7a                                            ldrb r2, [r4, #8]
008b04dc  9a 42                                            cmp r2, r3
008b04de  03 d1                                            bne #0x8b04e8
008b04e0  3a 68                                            ldr r2, [r7]
008b04e2  02 23                                            movs r3, #2
008b04e4  13 43                                            orrs r3, r2
008b04e6  3b 60                                            str r3, [r7]
008b04e8  21 1c                                            adds r1, r4, #0
008b04ea  0a 22                                            movs r2, #0xa
008b04ec  50 46                                            mov r0, sl
008b04ee  5d f6 24 e5                                      blx #0x30df38
008b04f2  40 46                                            mov r0, r8
008b04f4  f2 f7 fe ff                                      bl #0x8a34f4
008b04f8  59 46                                            mov r1, fp
008b04fa  73 58                                            ldr r3, [r6, r1]
008b04fc  15 9a                                            ldr r2, [sp, #0x54]
008b04fe  50 46                                            mov r0, sl
008b0500  1b 68                                            ldr r3, [r3]
008b0502  9a 42                                            cmp r2, r3
008b0504  16 d1                                            bne #0x8b0534
008b0506  17 b0                                            add sp, #0x5c
008b0508  3c bc                                            pop {r2, r3, r4, r5}
008b050a  90 46                                            mov r8, r2
008b050c  99 46                                            mov sb, r3
008b050e  a2 46                                            mov sl, r4
008b0510  ab 46                                            mov fp, r5
008b0512  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b0514  03 68                                            ldr r3, [r0]
008b0516  1b 6a                                            ldr r3, [r3, #0x20]
008b0518  98 47                                            blx r3
008b051a  b5 e7                                            b #0x8b0488
008b051c  03 68                                            ldr r3, [r0]
008b051e  1b 6a                                            ldr r3, [r3, #0x20]
008b0520  98 47                                            blx r3
008b0522  6b e7                                            b #0x8b03fc
008b0524  03 68                                            ldr r3, [r0]
008b0526  1b 6a                                            ldr r3, [r3, #0x20]
008b0528  98 47                                            blx r3
008b052a  cb e7                                            b #0x8b04c4
008b052c  03 68                                            ldr r3, [r0]
008b052e  1b 6a                                            ldr r3, [r3, #0x20]
008b0530  98 47                                            blx r3
008b0532  50 e7                                            b #0x8b03d6
008b0534  5d f6 ec e6                                      blx #0x30e310
; mapping-symbol data/literal pool
008b0538  1e 47 0e 00 ac 40 00 00 44 1e 00 00 58 19 00 00  .byte 0x1e, 0x47, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00, 0x58, 0x19, 0x00, 0x00

; FUNCTION 0x008b0784, declared_size=1958, range_size=1958, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv14__money_do_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEESbIwS3_SaIwEEEET0_S7_S7_bRSt8ios_baseRiRT1_RbPT_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__money_do_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > >(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, bool, std::ios_base&, int&, std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >&, bool&, wchar_t*)
; decoder-mode: thumb
008b0784  f0 b5                                            push {r4, r5, r6, r7, lr}
008b0786  5f 46                                            mov r7, fp
008b0788  56 46                                            mov r6, sl
008b078a  4d 46                                            mov r5, sb
008b078c  44 46                                            mov r4, r8
008b078e  f0 b4                                            push {r4, r5, r6, r7}
008b0790  ae 4c                                            ldr r4, [pc, #0x2b8]
008b0792  af 4d                                            ldr r5, [pc, #0x2bc]
008b0794  af 4e                                            ldr r6, [pc, #0x2bc]
008b0796  a5 44                                            add sp, r4
008b0798  21 ac                                            add r4, sp, #0x84
008b079a  62 60                                            str r2, [r4, #4]
008b079c  a3 60                                            str r3, [r4, #8]
008b079e  9b 9b                                            ldr r3, [sp, #0x26c]
008b07a0  9a 9a                                            ldr r2, [sp, #0x268]
008b07a2  21 91                                            str r1, [sp, #0x84]
008b07a4  09 90                                            str r0, [sp, #0x24]
008b07a6  12 93                                            str r3, [sp, #0x48]
008b07a8  13 92                                            str r2, [sp, #0x4c]
008b07aa  97 ab                                            add r3, sp, #0x25c
008b07ac  1b 78                                            ldrb r3, [r3]
008b07ae  7d 44                                            add r5, pc
008b07b0  98 99                                            ldr r1, [sp, #0x260]
008b07b2  10 93                                            str r3, [sp, #0x40]
008b07b4  ab 59                                            ldr r3, [r5, r6]
008b07b6  21 98                                            ldr r0, [sp, #0x84]
008b07b8  8a 46                                            mov sl, r1
008b07ba  1b 68                                            ldr r3, [r3]
008b07bc  99 9f                                            ldr r7, [sp, #0x264]
008b07be  0b 96                                            str r6, [sp, #0x2c]
008b07c0  89 93                                            str r3, [sp, #0x224]
008b07c2  00 28                                            cmp r0, #0
008b07c4  0f d0                                            beq #0x8b07e6
008b07c6  63 7a                                            ldrb r3, [r4, #9]
008b07c8  00 2b                                            cmp r3, #0
008b07ca  0c d1                                            bne #0x8b07e6
008b07cc  83 68                                            ldr r3, [r0, #8]
008b07ce  c2 68                                            ldr r2, [r0, #0xc]
008b07d0  93 42                                            cmp r3, r2
008b07d2  00 d3                                            blo #0x8b07d6
008b07d4  28 e3                                            b #0x8b0e28
008b07d6  18 68                                            ldr r0, [r3]
008b07d8  60 60                                            str r0, [r4, #4]
008b07da  01 30                                            adds r0, #1
008b07dc  43 42                                            rsbs r3, r0, #0
008b07de  43 41                                            adcs r3, r0
008b07e0  23 72                                            strb r3, [r4, #8]
008b07e2  01 23                                            movs r3, #1
008b07e4  63 72                                            strb r3, [r4, #9]
008b07e6  94 98                                            ldr r0, [sp, #0x250]
008b07e8  00 28                                            cmp r0, #0
008b07ea  00 d1                                            bne #0x8b07ee
008b07ec  a3 e0                                            b #0x8b0936
008b07ee  94 ab                                            add r3, sp, #0x250
008b07f0  5b 7a                                            ldrb r3, [r3, #9]
008b07f2  00 2b                                            cmp r3, #0
008b07f4  00 d0                                            beq #0x8b07f8
008b07f6  9e e0                                            b #0x8b0936
008b07f8  83 68                                            ldr r3, [r0, #8]
008b07fa  c2 68                                            ldr r2, [r0, #0xc]
008b07fc  93 42                                            cmp r3, r2
008b07fe  00 d3                                            blo #0x8b0802
008b0800  cb e2                                            b #0x8b0d9a
008b0802  18 68                                            ldr r0, [r3]
008b0804  95 90                                            str r0, [sp, #0x254]
008b0806  01 30                                            adds r0, #1
008b0808  94 aa                                            add r2, sp, #0x250
008b080a  43 42                                            rsbs r3, r0, #0
008b080c  43 41                                            adcs r3, r0
008b080e  01 21                                            movs r1, #1
008b0810  13 72                                            strb r3, [r2, #8]
008b0812  51 72                                            strb r1, [r2, #9]
008b0814  22 7a                                            ldrb r2, [r4, #8]
008b0816  9a 42                                            cmp r2, r3
008b0818  00 d1                                            bne #0x8b081c
008b081a  92 e0                                            b #0x8b0942
008b081c  81 22                                            movs r2, #0x81
008b081e  92 00                                            lsls r2, r2, #2
008b0820  6a 44                                            add r2, sp, r2
008b0822  51 46                                            mov r1, sl
008b0824  10 1c                                            adds r0, r2, #0
008b0826  20 31                                            adds r1, #0x20
008b0828  0a 92                                            str r2, [sp, #0x28]
008b082a  f2 f7 99 fe                                      bl #0x8a3560
008b082e  8a 4b                                            ldr r3, [pc, #0x228]
008b0830  0a 98                                            ldr r0, [sp, #0x28]
008b0832  e9 58                                            ldr r1, [r5, r3]
008b0834  f2 f7 bc fe                                      bl #0x8a35b0
008b0838  88 4b                                            ldr r3, [pc, #0x220]
008b083a  80 46                                            mov r8, r0
008b083c  0a 98                                            ldr r0, [sp, #0x28]
008b083e  e9 58                                            ldr r1, [r5, r3]
008b0840  f2 f7 b6 fe                                      bl #0x8a35b0
008b0844  86 4b                                            ldr r3, [pc, #0x218]
008b0846  81 46                                            mov sb, r0
008b0848  0a 98                                            ldr r0, [sp, #0x28]
008b084a  e9 58                                            ldr r1, [r5, r3]
008b084c  f2 f7 b0 fe                                      bl #0x8a35b0
008b0850  10 9b                                            ldr r3, [sp, #0x40]
008b0852  06 1c                                            adds r6, r0, #0
008b0854  00 2b                                            cmp r3, #0
008b0856  00 d0                                            beq #0x8b085a
008b0858  91 e0                                            b #0x8b097e
008b085a  42 46                                            mov r2, r8
008b085c  13 68                                            ldr r3, [r2]
008b085e  40 46                                            mov r0, r8
008b0860  9b 6a                                            ldr r3, [r3, #0x28]
008b0862  98 47                                            blx r3
008b0864  1e ab                                            add r3, sp, #0x78
008b0866  18 70                                            strb r0, [r3]
008b0868  02 0a                                            lsrs r2, r0, #8
008b086a  01 33                                            adds r3, #1
008b086c  1a 70                                            strb r2, [r3]
008b086e  02 0c                                            lsrs r2, r0, #0x10
008b0870  01 33                                            adds r3, #1
008b0872  1a 70                                            strb r2, [r3]
008b0874  00 0e                                            lsrs r0, r0, #0x18
008b0876  01 33                                            adds r3, #1
008b0878  18 70                                            strb r0, [r3]
008b087a  1e 9b                                            ldr r3, [sp, #0x78]
008b087c  7e aa                                            add r2, sp, #0x1f8
008b087e  7e 93                                            str r3, [sp, #0x1f8]
008b0880  13 78                                            ldrb r3, [r2]
008b0882  91 78                                            ldrb r1, [r2, #2]
008b0884  50 78                                            ldrb r0, [r2, #1]
008b0886  0e 93                                            str r3, [sp, #0x38]
008b0888  d2 78                                            ldrb r2, [r2, #3]
008b088a  80 ab                                            add r3, sp, #0x200
008b088c  99 70                                            strb r1, [r3, #2]
008b088e  0e a9                                            add r1, sp, #0x38
008b0890  da 70                                            strb r2, [r3, #3]
008b0892  09 78                                            ldrb r1, [r1]
008b0894  6a 46                                            mov r2, sp
008b0896  b1 32                                            adds r2, #0xb1
008b0898  ff 32                                            adds r2, #0xff
008b089a  11 92                                            str r2, [sp, #0x44]
008b089c  58 70                                            strb r0, [r3, #1]
008b089e  19 70                                            strb r1, [r3]
008b08a0  41 46                                            mov r1, r8
008b08a2  0b 68                                            ldr r3, [r1]
008b08a4  10 1c                                            adds r0, r2, #0
008b08a6  db 69                                            ldr r3, [r3, #0x1c]
008b08a8  98 47                                            blx r3
008b08aa  6a 46                                            mov r2, sp
008b08ac  69 32                                            adds r2, #0x69
008b08ae  ff 32                                            adds r2, #0xff
008b08b0  0f 92                                            str r2, [sp, #0x3c]
008b08b2  41 46                                            mov r1, r8
008b08b4  0b 68                                            ldr r3, [r1]
008b08b6  10 1c                                            adds r0, r2, #0
008b08b8  9b 69                                            ldr r3, [r3, #0x18]
008b08ba  98 47                                            blx r3
008b08bc  53 46                                            mov r3, sl
008b08be  5a 68                                            ldr r2, [r3, #4]
008b08c0  90 21                                            movs r1, #0x90
008b08c2  80 23                                            movs r3, #0x80
008b08c4  49 00                                            lsls r1, r1, #1
008b08c6  69 44                                            add r1, sp, r1
008b08c8  9b 00                                            lsls r3, r3, #2
008b08ca  1a 40                                            ands r2, r3
008b08cc  8a 46                                            mov sl, r1
008b08ce  09 64                                            str r1, [r1, #0x40]
008b08d0  49 64                                            str r1, [r1, #0x44]
008b08d2  08 1c                                            adds r0, r1, #0
008b08d4  10 21                                            movs r1, #0x10
008b08d6  1b 92                                            str r2, [sp, #0x6c]
008b08d8  f6 f7 94 f9                                      bl #0x8a6c04
008b08dc  52 46                                            mov r2, sl
008b08de  13 6c                                            ldr r3, [r2, #0x40]
008b08e0  00 22                                            movs r2, #0
008b08e2  69 46                                            mov r1, sp
008b08e4  1a 60                                            str r2, [r3]
008b08e6  5f 4b                                            ldr r3, [pc, #0x17c]
008b08e8  88 31                                            adds r1, #0x88
008b08ea  18 91                                            str r1, [sp, #0x60]
008b08ec  6b 44                                            add r3, sp, r3
008b08ee  0c 93                                            str r3, [sp, #0x30]
008b08f0  5d 4b                                            ldr r3, [pc, #0x174]
008b08f2  00 21                                            movs r1, #0
008b08f4  6a 46                                            mov r2, sp
008b08f6  7b 44                                            add r3, pc
008b08f8  0d 93                                            str r3, [sp, #0x34]
008b08fa  95 23                                            movs r3, #0x95
008b08fc  9b 00                                            lsls r3, r3, #2
008b08fe  6b 44                                            add r3, sp, r3
008b0900  8b 46                                            mov fp, r1
008b0902  16 93                                            str r3, [sp, #0x58]
008b0904  51 46                                            mov r1, sl
008b0906  04 33                                            adds r3, #4
008b0908  8c 32                                            adds r2, #0x8c
008b090a  1a 93                                            str r3, [sp, #0x68]
008b090c  0e 9b                                            ldr r3, [sp, #0x38]
008b090e  0e 91                                            str r1, [sp, #0x38]
008b0910  0c 99                                            ldr r1, [sp, #0x30]
008b0912  14 92                                            str r2, [sp, #0x50]
008b0914  88 3a                                            subs r2, #0x88
008b0916  15 92                                            str r2, [sp, #0x54]
008b0918  04 32                                            adds r2, #4
008b091a  17 95                                            str r5, [sp, #0x5c]
008b091c  19 92                                            str r2, [sp, #0x64]
008b091e  45 46                                            mov r5, r8
008b0920  8a 46                                            mov sl, r1
008b0922  b8 46                                            mov r8, r7
008b0924  4f 46                                            mov r7, sb
008b0926  04 2b                                            cmp r3, #4
008b0928  00 d9                                            bls #0x8b092c
008b092a  87 e0                                            b #0x8b0a3c
008b092c  0d 9a                                            ldr r2, [sp, #0x34]
008b092e  9b 00                                            lsls r3, r3, #2
008b0930  9b 58                                            ldr r3, [r3, r2]
008b0932  9b 18                                            adds r3, r3, r2
008b0934  9f 46                                            mov pc, r3
008b0936  94 ab                                            add r3, sp, #0x250
008b0938  1b 7a                                            ldrb r3, [r3, #8]
008b093a  22 7a                                            ldrb r2, [r4, #8]
008b093c  9a 42                                            cmp r2, r3
008b093e  00 d0                                            beq #0x8b0942
008b0940  6c e7                                            b #0x8b081c
008b0942  3a 68                                            ldr r2, [r7]
008b0944  02 23                                            movs r3, #2
008b0946  13 43                                            orrs r3, r2
008b0948  3b 60                                            str r3, [r7]
008b094a  21 9a                                            ldr r2, [sp, #0x84]
008b094c  09 9b                                            ldr r3, [sp, #0x24]
008b094e  04 c3                                            stm r3!, {r2}
008b0950  22 9a                                            ldr r2, [sp, #0x88]
008b0952  09 99                                            ldr r1, [sp, #0x24]
008b0954  4a 60                                            str r2, [r1, #4]
008b0956  23 aa                                            add r2, sp, #0x8c
008b0958  12 88                                            ldrh r2, [r2]
008b095a  9a 80                                            strh r2, [r3, #4]
008b095c  0b 9a                                            ldr r2, [sp, #0x2c]
008b095e  09 98                                            ldr r0, [sp, #0x24]
008b0960  ab 58                                            ldr r3, [r5, r2]
008b0962  89 9a                                            ldr r2, [sp, #0x224]
008b0964  1b 68                                            ldr r3, [r3]
008b0966  9a 42                                            cmp r2, r3
008b0968  00 d0                                            beq #0x8b096c
008b096a  dc e2                                            b #0x8b0f26
008b096c  8b 23                                            movs r3, #0x8b
008b096e  9b 00                                            lsls r3, r3, #2
008b0970  9d 44                                            add sp, r3
008b0972  3c bc                                            pop {r2, r3, r4, r5}
008b0974  90 46                                            mov r8, r2
008b0976  99 46                                            mov sb, r3
008b0978  a2 46                                            mov sl, r4
008b097a  ab 46                                            mov fp, r5
008b097c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b097e  49 46                                            mov r1, sb
008b0980  0b 68                                            ldr r3, [r1]
008b0982  48 46                                            mov r0, sb
008b0984  9b 6a                                            ldr r3, [r3, #0x28]
008b0986  98 47                                            blx r3
008b0988  1e ab                                            add r3, sp, #0x78
008b098a  18 70                                            strb r0, [r3]
008b098c  02 0a                                            lsrs r2, r0, #8
008b098e  01 33                                            adds r3, #1
008b0990  1a 70                                            strb r2, [r3]
008b0992  02 0c                                            lsrs r2, r0, #0x10
008b0994  01 33                                            adds r3, #1
008b0996  1a 70                                            strb r2, [r3]
008b0998  00 0e                                            lsrs r0, r0, #0x18
008b099a  01 33                                            adds r3, #1
008b099c  18 70                                            strb r0, [r3]
008b099e  1e 9b                                            ldr r3, [sp, #0x78]
008b09a0  7f aa                                            add r2, sp, #0x1fc
008b09a2  7f 93                                            str r3, [sp, #0x1fc]
008b09a4  13 78                                            ldrb r3, [r2]
008b09a6  91 78                                            ldrb r1, [r2, #2]
008b09a8  50 78                                            ldrb r0, [r2, #1]
008b09aa  0e 93                                            str r3, [sp, #0x38]
008b09ac  d2 78                                            ldrb r2, [r2, #3]
008b09ae  80 ab                                            add r3, sp, #0x200
008b09b0  99 70                                            strb r1, [r3, #2]
008b09b2  0e a9                                            add r1, sp, #0x38
008b09b4  da 70                                            strb r2, [r3, #3]
008b09b6  09 78                                            ldrb r1, [r1]
008b09b8  6a 46                                            mov r2, sp
008b09ba  b1 32                                            adds r2, #0xb1
008b09bc  ff 32                                            adds r2, #0xff
008b09be  11 92                                            str r2, [sp, #0x44]
008b09c0  58 70                                            strb r0, [r3, #1]
008b09c2  19 70                                            strb r1, [r3]
008b09c4  49 46                                            mov r1, sb
008b09c6  0b 68                                            ldr r3, [r1]
008b09c8  10 1c                                            adds r0, r2, #0
008b09ca  db 69                                            ldr r3, [r3, #0x1c]
008b09cc  98 47                                            blx r3
008b09ce  6a 46                                            mov r2, sp
008b09d0  69 32                                            adds r2, #0x69
008b09d2  ff 32                                            adds r2, #0xff
008b09d4  0f 92                                            str r2, [sp, #0x3c]
008b09d6  49 46                                            mov r1, sb
008b09d8  0b 68                                            ldr r3, [r1]
008b09da  10 1c                                            adds r0, r2, #0
008b09dc  9b 69                                            ldr r3, [r3, #0x18]
008b09de  98 47                                            blx r3
008b09e0  6c e7                                            b #0x8b08bc
008b09e2  63 7a                                            ldrb r3, [r4, #9]
008b09e4  00 2b                                            cmp r3, #0
008b09e6  00 d0                                            beq #0x8b09ea
008b09e8  27 e2                                            b #0x8b0e3a
008b09ea  20 68                                            ldr r0, [r4]
008b09ec  83 68                                            ldr r3, [r0, #8]
008b09ee  c2 68                                            ldr r2, [r0, #0xc]
008b09f0  93 42                                            cmp r3, r2
008b09f2  00 d3                                            blo #0x8b09f6
008b09f4  3a e2                                            b #0x8b0e6c
008b09f6  1a 68                                            ldr r2, [r3]
008b09f8  51 1c                                            adds r1, r2, #1
008b09fa  4b 42                                            rsbs r3, r1, #0
008b09fc  4b 41                                            adcs r3, r1
008b09fe  23 72                                            strb r3, [r4, #8]
008b0a00  01 23                                            movs r3, #1
008b0a02  62 60                                            str r2, [r4, #4]
008b0a04  63 72                                            strb r3, [r4, #9]
008b0a06  33 68                                            ldr r3, [r6]
008b0a08  30 1c                                            adds r0, r6, #0
008b0a0a  01 21                                            movs r1, #1
008b0a0c  9b 68                                            ldr r3, [r3, #8]
008b0a0e  98 47                                            blx r3
008b0a10  00 28                                            cmp r0, #0
008b0a12  00 d1                                            bne #0x8b0a16
008b0a14  54 e2                                            b #0x8b0ec0
008b0a16  20 68                                            ldr r0, [r4]
008b0a18  83 68                                            ldr r3, [r0, #8]
008b0a1a  c2 68                                            ldr r2, [r0, #0xc]
008b0a1c  93 42                                            cmp r3, r2
008b0a1e  00 d3                                            blo #0x8b0a22
008b0a20  0d e2                                            b #0x8b0e3e
008b0a22  04 33                                            adds r3, #4
008b0a24  83 60                                            str r3, [r0, #8]
008b0a26  5a 46                                            mov r2, fp
008b0a28  62 72                                            strb r2, [r4, #9]
008b0a2a  01 21                                            movs r1, #1
008b0a2c  89 46                                            mov sb, r1
008b0a2e  20 1c                                            adds r0, r4, #0
008b0a30  94 a9                                            add r1, sp, #0x250
008b0a32  f9 f7 39 ff                                      bl #0x8aa8a8
008b0a36  00 28                                            cmp r0, #0
008b0a38  00 d1                                            bne #0x8b0a3c
008b0a3a  14 e1                                            b #0x8b0c66
008b0a3c  0a 9a                                            ldr r2, [sp, #0x28]
008b0a3e  52 45                                            cmp r2, sl
008b0a40  63 d0                                            beq #0x8b0b0a
008b0a42  51 46                                            mov r1, sl
008b0a44  01 22                                            movs r2, #1
008b0a46  0b 78                                            ldrb r3, [r1]
008b0a48  92 44                                            add sl, r2
008b0a4a  6c e7                                            b #0x8b0926
; mapping-symbol data/literal pool
008b0a4c  d4 fd ff ff e6 42 0e 00 ac 40 00 00 d0 27 00 00  .byte 0xd4, 0xfd, 0xff, 0xff, 0xe6, 0x42, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd0, 0x27, 0x00, 0x00
008b0a5c  1c 2d 00 00 44 1e 00 00 01 02 00 00 66 52 06 00  .byte 0x1c, 0x2d, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x66, 0x52, 0x06, 0x00
; decoder-mode: thumb
008b0a6c  10 99                                            ldr r1, [sp, #0x40]
008b0a6e  00 29                                            cmp r1, #0
008b0a70  00 d1                                            bne #0x8b0a74
008b0a72  9e e1                                            b #0x8b0db2
008b0a74  3b 68                                            ldr r3, [r7]
008b0a76  38 1c                                            adds r0, r7, #0
008b0a78  9b 68                                            ldr r3, [r3, #8]
008b0a7a  98 47                                            blx r3
008b0a7c  1d 90                                            str r0, [sp, #0x74]
008b0a7e  3b 68                                            ldr r3, [r7]
008b0a80  38 1c                                            adds r0, r7, #0
008b0a82  1b 6a                                            ldr r3, [r3, #0x20]
008b0a84  98 47                                            blx r3
008b0a86  1c 90                                            str r0, [sp, #0x70]
008b0a88  83 22                                            movs r2, #0x83
008b0a8a  3b 68                                            ldr r3, [r7]
008b0a8c  92 00                                            lsls r2, r2, #2
008b0a8e  6a 44                                            add r2, sp, r2
008b0a90  1b 69                                            ldr r3, [r3, #0x10]
008b0a92  10 1c                                            adds r0, r2, #0
008b0a94  39 1c                                            adds r1, r7, #0
008b0a96  91 46                                            mov sb, r2
008b0a98  98 47                                            blx r3
008b0a9a  d0 49                                            ldr r1, [pc, #0x340]
008b0a9c  01 23                                            movs r3, #1
008b0a9e  4a 46                                            mov r2, sb
008b0aa0  69 44                                            add r1, sp, r1
008b0aa2  0b 70                                            strb r3, [r1]
008b0aa4  53 69                                            ldr r3, [r2, #0x14]
008b0aa6  12 69                                            ldr r2, [r2, #0x10]
008b0aa8  0c 91                                            str r1, [sp, #0x30]
008b0aaa  00 20                                            movs r0, #0
008b0aac  93 42                                            cmp r3, r2
008b0aae  07 d0                                            beq #0x8b0ac0
008b0ab0  10 9b                                            ldr r3, [sp, #0x40]
008b0ab2  00 2b                                            cmp r3, #0
008b0ab4  00 d1                                            bne #0x8b0ab8
008b0ab6  bb e1                                            b #0x8b0e30
008b0ab8  3b 68                                            ldr r3, [r7]
008b0aba  38 1c                                            adds r0, r7, #0
008b0abc  db 68                                            ldr r3, [r3, #0xc]
008b0abe  98 47                                            blx r3
008b0ac0  1d 9a                                            ldr r2, [sp, #0x74]
008b0ac2  0e 99                                            ldr r1, [sp, #0x38]
008b0ac4  1c 9b                                            ldr r3, [sp, #0x70]
008b0ac6  02 92                                            str r2, [sp, #8]
008b0ac8  0c 9a                                            ldr r2, [sp, #0x30]
008b0aca  00 91                                            str r1, [sp]
008b0acc  49 46                                            mov r1, sb
008b0ace  03 93                                            str r3, [sp, #0xc]
008b0ad0  04 90                                            str r0, [sp, #0x10]
008b0ad2  05 91                                            str r1, [sp, #0x14]
008b0ad4  06 92                                            str r2, [sp, #0x18]
008b0ad6  94 99                                            ldr r1, [sp, #0x250]
008b0ad8  96 9b                                            ldr r3, [sp, #0x258]
008b0ada  20 1c                                            adds r0, r4, #0
008b0adc  95 9a                                            ldr r2, [sp, #0x254]
008b0ade  01 96                                            str r6, [sp, #4]
008b0ae0  fe f7 22 f9                                      bl #0x8aed28
008b0ae4  0c 99                                            ldr r1, [sp, #0x30]
008b0ae6  0b 78                                            ldrb r3, [r1]
008b0ae8  00 2b                                            cmp r3, #0
008b0aea  05 d1                                            bne #0x8b0af8
008b0aec  43 46                                            mov r3, r8
008b0aee  1a 68                                            ldr r2, [r3]
008b0af0  04 23                                            movs r3, #4
008b0af2  41 46                                            mov r1, r8
008b0af4  13 43                                            orrs r3, r2
008b0af6  0b 60                                            str r3, [r1]
008b0af8  00 28                                            cmp r0, #0
008b0afa  00 d1                                            bne #0x8b0afe
008b0afc  e7 e1                                            b #0x8b0ece
008b0afe  48 46                                            mov r0, sb
008b0b00  62 f6 54 e7                                      blx #0x3139ac
008b0b04  0a 9a                                            ldr r2, [sp, #0x28]
008b0b06  52 45                                            cmp r2, sl
008b0b08  9b d1                                            bne #0x8b0a42
008b0b0a  0e 9b                                            ldr r3, [sp, #0x38]
008b0b0c  12 99                                            ldr r1, [sp, #0x48]
008b0b0e  47 46                                            mov r7, r8
008b0b10  9a 46                                            mov sl, r3
008b0b12  0b 78                                            ldrb r3, [r1]
008b0b14  17 9d                                            ldr r5, [sp, #0x5c]
008b0b16  00 2b                                            cmp r3, #0
008b0b18  00 d1                                            bne #0x8b0b1c
008b0b1a  d1 e0                                            b #0x8b0cc0
008b0b1c  0f 9a                                            ldr r2, [sp, #0x3c]
008b0b1e  13 6c                                            ldr r3, [r2, #0x40]
008b0b20  52 6c                                            ldr r2, [r2, #0x44]
008b0b22  99 1a                                            subs r1, r3, r2
008b0b24  89 10                                            asrs r1, r1, #2
008b0b26  01 29                                            cmp r1, #1
008b0b28  00 d8                                            bhi #0x8b0b2c
008b0b2a  34 e1                                            b #0x8b0d96
008b0b2c  94 a8                                            add r0, sp, #0x250
008b0b2e  02 c8                                            ldm r0!, {r1}
008b0b30  24 ae                                            add r6, sp, #0x90
008b0b32  b0 46                                            mov r8, r6
008b0b34  8c 46                                            mov ip, r1
008b0b36  66 46                                            mov r6, ip
008b0b38  69 46                                            mov r1, sp
008b0b3a  40 c1                                            stm r1!, {r6}
008b0b3c  95 9e                                            ldr r6, [sp, #0x254]
008b0b3e  04 32                                            adds r2, #4
008b0b40  01 96                                            str r6, [sp, #4]
008b0b42  40 68                                            ldr r0, [r0, #4]
008b0b44  48 60                                            str r0, [r1, #4]
008b0b46  03 92                                            str r2, [sp, #0xc]
008b0b48  04 93                                            str r3, [sp, #0x10]
008b0b4a  62 68                                            ldr r2, [r4, #4]
008b0b4c  a3 68                                            ldr r3, [r4, #8]
008b0b4e  21 99                                            ldr r1, [sp, #0x84]
008b0b50  40 46                                            mov r0, r8
008b0b52  f8 f7 b5 fc                                      bl #0x8a94c0
008b0b56  24 9b                                            ldr r3, [sp, #0x90]
008b0b58  14 99                                            ldr r1, [sp, #0x50]
008b0b5a  42 46                                            mov r2, r8
008b0b5c  21 93                                            str r3, [sp, #0x84]
008b0b5e  25 9b                                            ldr r3, [sp, #0x94]
008b0b60  21 ac                                            add r4, sp, #0x84
008b0b62  22 93                                            str r3, [sp, #0x88]
008b0b64  26 ab                                            add r3, sp, #0x98
008b0b66  1b 88                                            ldrh r3, [r3]
008b0b68  0b 80                                            strh r3, [r1]
008b0b6a  13 7b                                            ldrb r3, [r2, #0xc]
008b0b6c  00 2b                                            cmp r3, #0
008b0b6e  00 d0                                            beq #0x8b0b72
008b0b70  11 e1                                            b #0x8b0d96
008b0b72  3b 68                                            ldr r3, [r7]
008b0b74  04 22                                            movs r2, #4
008b0b76  13 43                                            orrs r3, r2
008b0b78  3b 60                                            str r3, [r7]
008b0b7a  5e 07                                            lsls r6, r3, #0x1d
008b0b7c  00 d4                                            bmi #0x8b0b80
008b0b7e  62 e1                                            b #0x8b0e46
008b0b80  20 1c                                            adds r0, r4, #0
008b0b82  94 a9                                            add r1, sp, #0x250
008b0b84  f9 f7 90 fe                                      bl #0x8aa8a8
008b0b88  00 28                                            cmp r0, #0
008b0b8a  03 d0                                            beq #0x8b0b94
008b0b8c  3a 68                                            ldr r2, [r7]
008b0b8e  02 23                                            movs r3, #2
008b0b90  13 43                                            orrs r3, r2
008b0b92  3b 60                                            str r3, [r7]
008b0b94  21 9a                                            ldr r2, [sp, #0x84]
008b0b96  09 9b                                            ldr r3, [sp, #0x24]
008b0b98  04 c3                                            stm r3!, {r2}
008b0b9a  22 9a                                            ldr r2, [sp, #0x88]
008b0b9c  09 9e                                            ldr r6, [sp, #0x24]
008b0b9e  72 60                                            str r2, [r6, #4]
008b0ba0  14 99                                            ldr r1, [sp, #0x50]
008b0ba2  0a 88                                            ldrh r2, [r1]
008b0ba4  9a 80                                            strh r2, [r3, #4]
008b0ba6  50 46                                            mov r0, sl
008b0ba8  68 f6 02 e4                                      blx #0x3193b0
008b0bac  0f 98                                            ldr r0, [sp, #0x3c]
008b0bae  68 f6 00 e4                                      blx #0x3193b0
008b0bb2  11 98                                            ldr r0, [sp, #0x44]
008b0bb4  68 f6 fc e3                                      blx #0x3193b0
008b0bb8  0a 98                                            ldr r0, [sp, #0x28]
008b0bba  f2 f7 9b fc                                      bl #0x8a34f4
008b0bbe  cd e6                                            b #0x8b095c
008b0bc0  20 1c                                            adds r0, r4, #0
008b0bc2  94 a9                                            add r1, sp, #0x250
008b0bc4  f9 f7 70 fe                                      bl #0x8aa8a8
008b0bc8  81 46                                            mov sb, r0
008b0bca  00 28                                            cmp r0, #0
008b0bcc  00 d1                                            bne #0x8b0bd0
008b0bce  07 e1                                            b #0x8b0de0
008b0bd0  0f 9b                                            ldr r3, [sp, #0x3c]
008b0bd2  5a 6c                                            ldr r2, [r3, #0x44]
008b0bd4  1b 6c                                            ldr r3, [r3, #0x40]
008b0bd6  9a 42                                            cmp r2, r3
008b0bd8  00 d1                                            bne #0x8b0bdc
008b0bda  2f e7                                            b #0x8b0a3c
008b0bdc  11 99                                            ldr r1, [sp, #0x44]
008b0bde  4a 6c                                            ldr r2, [r1, #0x44]
008b0be0  0b 6c                                            ldr r3, [r1, #0x40]
008b0be2  9a 42                                            cmp r2, r3
008b0be4  00 d0                                            beq #0x8b0be8
008b0be6  85 e1                                            b #0x8b0ef4
008b0be8  12 9a                                            ldr r2, [sp, #0x48]
008b0bea  5b 46                                            mov r3, fp
008b0bec  13 70                                            strb r3, [r2]
008b0bee  25 e7                                            b #0x8b0a3c
008b0bf0  10 99                                            ldr r1, [sp, #0x40]
008b0bf2  00 29                                            cmp r1, #0
008b0bf4  00 d1                                            bne #0x8b0bf8
008b0bf6  d4 e0                                            b #0x8b0da2
008b0bf8  3b 68                                            ldr r3, [r7]
008b0bfa  36 aa                                            add r2, sp, #0xd8
008b0bfc  10 1c                                            adds r0, r2, #0
008b0bfe  5b 69                                            ldr r3, [r3, #0x14]
008b0c00  39 1c                                            adds r1, r7, #0
008b0c02  91 46                                            mov sb, r2
008b0c04  98 47                                            blx r3
008b0c06  94 9b                                            ldr r3, [sp, #0x250]
008b0c08  16 9a                                            ldr r2, [sp, #0x58]
008b0c0a  69 46                                            mov r1, sp
008b0c0c  90 31                                            adds r1, #0x90
008b0c0e  00 93                                            str r3, [sp]
008b0c10  0c 91                                            str r1, [sp, #0x30]
008b0c12  13 68                                            ldr r3, [r2]
008b0c14  15 99                                            ldr r1, [sp, #0x54]
008b0c16  0b 60                                            str r3, [r1]
008b0c18  1a 9a                                            ldr r2, [sp, #0x68]
008b0c1a  19 99                                            ldr r1, [sp, #0x64]
008b0c1c  13 68                                            ldr r3, [r2]
008b0c1e  4a 46                                            mov r2, sb
008b0c20  0b 60                                            str r3, [r1]
008b0c22  53 6c                                            ldr r3, [r2, #0x44]
008b0c24  0c 98                                            ldr r0, [sp, #0x30]
008b0c26  03 93                                            str r3, [sp, #0xc]
008b0c28  13 6c                                            ldr r3, [r2, #0x40]
008b0c2a  04 93                                            str r3, [sp, #0x10]
008b0c2c  21 68                                            ldr r1, [r4]
008b0c2e  a3 68                                            ldr r3, [r4, #8]
008b0c30  62 68                                            ldr r2, [r4, #4]
008b0c32  f8 f7 45 fc                                      bl #0x8a94c0
008b0c36  0c 99                                            ldr r1, [sp, #0x30]
008b0c38  0b 7b                                            ldrb r3, [r1, #0xc]
008b0c3a  00 2b                                            cmp r3, #0
008b0c3c  05 d1                                            bne #0x8b0c4a
008b0c3e  1b 9a                                            ldr r2, [sp, #0x6c]
008b0c40  00 2a                                            cmp r2, #0
008b0c42  02 d0                                            beq #0x8b0c4a
008b0c44  04 23                                            movs r3, #4
008b0c46  41 46                                            mov r1, r8
008b0c48  0b 60                                            str r3, [r1]
008b0c4a  0c 9a                                            ldr r2, [sp, #0x30]
008b0c4c  18 99                                            ldr r1, [sp, #0x60]
008b0c4e  48 46                                            mov r0, sb
008b0c50  13 68                                            ldr r3, [r2]
008b0c52  14 9a                                            ldr r2, [sp, #0x50]
008b0c54  23 60                                            str r3, [r4]
008b0c56  25 9b                                            ldr r3, [sp, #0x94]
008b0c58  0b 60                                            str r3, [r1]
008b0c5a  26 ab                                            add r3, sp, #0x98
008b0c5c  1b 88                                            ldrh r3, [r3]
008b0c5e  13 80                                            strh r3, [r2]
008b0c60  68 f6 a6 e3                                      blx #0x3193b0
008b0c64  ea e6                                            b #0x8b0a3c
008b0c66  63 7a                                            ldrb r3, [r4, #9]
008b0c68  00 2b                                            cmp r3, #0
008b0c6a  22 d1                                            bne #0x8b0cb2
008b0c6c  20 68                                            ldr r0, [r4]
008b0c6e  83 68                                            ldr r3, [r0, #8]
008b0c70  c2 68                                            ldr r2, [r0, #0xc]
008b0c72  93 42                                            cmp r3, r2
008b0c74  1f d2                                            bhs #0x8b0cb6
008b0c76  1a 68                                            ldr r2, [r3]
008b0c78  51 1c                                            adds r1, r2, #1
008b0c7a  4b 42                                            rsbs r3, r1, #0
008b0c7c  4b 41                                            adcs r3, r1
008b0c7e  23 72                                            strb r3, [r4, #8]
008b0c80  4b 46                                            mov r3, sb
008b0c82  62 60                                            str r2, [r4, #4]
008b0c84  63 72                                            strb r3, [r4, #9]
008b0c86  33 68                                            ldr r3, [r6]
008b0c88  30 1c                                            adds r0, r6, #0
008b0c8a  01 21                                            movs r1, #1
008b0c8c  9b 68                                            ldr r3, [r3, #8]
008b0c8e  98 47                                            blx r3
008b0c90  00 28                                            cmp r0, #0
008b0c92  00 d1                                            bne #0x8b0c96
008b0c94  d2 e6                                            b #0x8b0a3c
008b0c96  20 68                                            ldr r0, [r4]
008b0c98  83 68                                            ldr r3, [r0, #8]
008b0c9a  c2 68                                            ldr r2, [r0, #0xc]
008b0c9c  93 42                                            cmp r3, r2
008b0c9e  04 d2                                            bhs #0x8b0caa
008b0ca0  04 33                                            adds r3, #4
008b0ca2  83 60                                            str r3, [r0, #8]
008b0ca4  5b 46                                            mov r3, fp
008b0ca6  63 72                                            strb r3, [r4, #9]
008b0ca8  c1 e6                                            b #0x8b0a2e
008b0caa  03 68                                            ldr r3, [r0]
008b0cac  5b 6a                                            ldr r3, [r3, #0x24]
008b0cae  98 47                                            blx r3
008b0cb0  f8 e7                                            b #0x8b0ca4
008b0cb2  62 68                                            ldr r2, [r4, #4]
008b0cb4  e7 e7                                            b #0x8b0c86
008b0cb6  03 68                                            ldr r3, [r0]
008b0cb8  1b 6a                                            ldr r3, [r3, #0x20]
008b0cba  98 47                                            blx r3
008b0cbc  02 1c                                            adds r2, r0, #0
008b0cbe  db e7                                            b #0x8b0c78
008b0cc0  11 99                                            ldr r1, [sp, #0x44]
008b0cc2  11 9b                                            ldr r3, [sp, #0x44]
008b0cc4  4a 6c                                            ldr r2, [r1, #0x44]
008b0cc6  1b 6c                                            ldr r3, [r3, #0x40]
008b0cc8  99 1a                                            subs r1, r3, r2
008b0cca  89 10                                            asrs r1, r1, #2
008b0ccc  99 46                                            mov sb, r3
008b0cce  01 29                                            cmp r1, #1
008b0cd0  5f d9                                            bls #0x8b0d92
008b0cd2  94 a8                                            add r0, sp, #0x250
008b0cd4  02 c8                                            ldm r0!, {r1}
008b0cd6  24 ab                                            add r3, sp, #0x90
008b0cd8  98 46                                            mov r8, r3
008b0cda  8c 46                                            mov ip, r1
008b0cdc  63 46                                            mov r3, ip
008b0cde  69 46                                            mov r1, sp
008b0ce0  08 c1                                            stm r1!, {r3}
008b0ce2  95 9b                                            ldr r3, [sp, #0x254]
008b0ce4  04 32                                            adds r2, #4
008b0ce6  01 93                                            str r3, [sp, #4]
008b0ce8  40 68                                            ldr r0, [r0, #4]
008b0cea  48 60                                            str r0, [r1, #4]
008b0cec  49 46                                            mov r1, sb
008b0cee  04 91                                            str r1, [sp, #0x10]
008b0cf0  03 92                                            str r2, [sp, #0xc]
008b0cf2  62 68                                            ldr r2, [r4, #4]
008b0cf4  a3 68                                            ldr r3, [r4, #8]
008b0cf6  21 99                                            ldr r1, [sp, #0x84]
008b0cf8  40 46                                            mov r0, r8
008b0cfa  f8 f7 e1 fb                                      bl #0x8a94c0
008b0cfe  24 9b                                            ldr r3, [sp, #0x90]
008b0d00  14 9a                                            ldr r2, [sp, #0x50]
008b0d02  41 46                                            mov r1, r8
008b0d04  21 93                                            str r3, [sp, #0x84]
008b0d06  25 9b                                            ldr r3, [sp, #0x94]
008b0d08  21 ac                                            add r4, sp, #0x84
008b0d0a  22 93                                            str r3, [sp, #0x88]
008b0d0c  26 ab                                            add r3, sp, #0x98
008b0d0e  1b 88                                            ldrh r3, [r3]
008b0d10  13 80                                            strh r3, [r2]
008b0d12  0b 7b                                            ldrb r3, [r1, #0xc]
008b0d14  00 2b                                            cmp r3, #0
008b0d16  3c d1                                            bne #0x8b0d92
008b0d18  3a 68                                            ldr r2, [r7]
008b0d1a  04 23                                            movs r3, #4
008b0d1c  13 43                                            orrs r3, r2
008b0d1e  3b 60                                            str r3, [r7]
008b0d20  5a 07                                            lsls r2, r3, #0x1d
008b0d22  00 d5                                            bpl #0x8b0d26
008b0d24  2c e7                                            b #0x8b0b80
008b0d26  33 68                                            ldr r3, [r6]
008b0d28  30 1c                                            adds r0, r6, #0
008b0d2a  2d 21                                            movs r1, #0x2d
008b0d2c  9b 6a                                            ldr r3, [r3, #0x28]
008b0d2e  98 47                                            blx r3
008b0d30  13 9b                                            ldr r3, [sp, #0x4c]
008b0d32  81 46                                            mov sb, r0
008b0d34  58 6c                                            ldr r0, [r3, #0x44]
008b0d36  1b 6c                                            ldr r3, [r3, #0x40]
008b0d38  1b 1a                                            subs r3, r3, r0
008b0d3a  9b 10                                            asrs r3, r3, #2
008b0d3c  98 46                                            mov r8, r3
008b0d3e  00 2b                                            cmp r3, #0
008b0d40  00 d0                                            beq #0x8b0d44
008b0d42  87 e0                                            b #0x8b0e54
008b0d44  13 99                                            ldr r1, [sp, #0x4c]
008b0d46  88 42                                            cmp r0, r1
008b0d48  00 d1                                            bne #0x8b0d4c
008b0d4a  a5 e0                                            b #0x8b0e98
008b0d4c  0b 68                                            ldr r3, [r1]
008b0d4e  1b 1a                                            subs r3, r3, r0
008b0d50  9b 10                                            asrs r3, r3, #2
008b0d52  01 3b                                            subs r3, #1
008b0d54  01 2b                                            cmp r3, #1
008b0d56  00 d9                                            bls #0x8b0d5a
008b0d58  9e e0                                            b #0x8b0e98
008b0d5a  24 ae                                            add r6, sp, #0x90
008b0d5c  30 1c                                            adds r0, r6, #0
008b0d5e  02 21                                            movs r1, #2
008b0d60  36 64                                            str r6, [r6, #0x40]
008b0d62  76 64                                            str r6, [r6, #0x44]
008b0d64  f5 f7 4e ff                                      bl #0x8a6c04
008b0d68  73 6c                                            ldr r3, [r6, #0x44]
008b0d6a  49 46                                            mov r1, sb
008b0d6c  1a 1d                                            adds r2, r3, #4
008b0d6e  19 60                                            str r1, [r3]
008b0d70  32 64                                            str r2, [r6, #0x40]
008b0d72  42 46                                            mov r2, r8
008b0d74  5a 60                                            str r2, [r3, #4]
008b0d76  13 98                                            ldr r0, [sp, #0x4c]
008b0d78  31 1c                                            adds r1, r6, #0
008b0d7a  f3 f7 6d ff                                      bl #0x8a4c58
008b0d7e  30 1c                                            adds r0, r6, #0
008b0d80  68 f6 16 e3                                      blx #0x3193b0
008b0d84  53 46                                            mov r3, sl
008b0d86  59 6c                                            ldr r1, [r3, #0x44]
008b0d88  1a 6c                                            ldr r2, [r3, #0x40]
008b0d8a  13 98                                            ldr r0, [sp, #0x4c]
008b0d8c  6b f6 2e e1                                      blx #0x31bfec
008b0d90  f6 e6                                            b #0x8b0b80
008b0d92  3b 68                                            ldr r3, [r7]
008b0d94  c4 e7                                            b #0x8b0d20
008b0d96  3b 68                                            ldr r3, [r7]
008b0d98  ef e6                                            b #0x8b0b7a
008b0d9a  03 68                                            ldr r3, [r0]
008b0d9c  1b 6a                                            ldr r3, [r3, #0x20]
008b0d9e  98 47                                            blx r3
008b0da0  30 e5                                            b #0x8b0804
008b0da2  36 ab                                            add r3, sp, #0xd8
008b0da4  99 46                                            mov sb, r3
008b0da6  2b 68                                            ldr r3, [r5]
008b0da8  48 46                                            mov r0, sb
008b0daa  29 1c                                            adds r1, r5, #0
008b0dac  5b 69                                            ldr r3, [r3, #0x14]
008b0dae  98 47                                            blx r3
008b0db0  29 e7                                            b #0x8b0c06
008b0db2  2b 68                                            ldr r3, [r5]
008b0db4  28 1c                                            adds r0, r5, #0
008b0db6  9b 68                                            ldr r3, [r3, #8]
008b0db8  98 47                                            blx r3
008b0dba  1d 90                                            str r0, [sp, #0x74]
008b0dbc  2b 68                                            ldr r3, [r5]
008b0dbe  28 1c                                            adds r0, r5, #0
008b0dc0  1b 6a                                            ldr r3, [r3, #0x20]
008b0dc2  98 47                                            blx r3
008b0dc4  83 23                                            movs r3, #0x83
008b0dc6  9b 00                                            lsls r3, r3, #2
008b0dc8  1c 90                                            str r0, [sp, #0x70]
008b0dca  6b 44                                            add r3, sp, r3
008b0dcc  99 46                                            mov sb, r3
008b0dce  2b 68                                            ldr r3, [r5]
008b0dd0  48 46                                            mov r0, sb
008b0dd2  29 1c                                            adds r1, r5, #0
008b0dd4  1b 69                                            ldr r3, [r3, #0x10]
008b0dd6  98 47                                            blx r3
008b0dd8  5f e6                                            b #0x8b0a9a
008b0dda  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b0ddc  0b 02 00 00                                      .byte 0x0b, 0x02, 0x00, 0x00
; decoder-mode: thumb
008b0de0  0f 99                                            ldr r1, [sp, #0x3c]
008b0de2  4a 6c                                            ldr r2, [r1, #0x44]
008b0de4  0b 6c                                            ldr r3, [r1, #0x40]
008b0de6  9a 42                                            cmp r2, r3
008b0de8  45 d0                                            beq #0x8b0e76
008b0dea  20 1c                                            adds r0, r4, #0
008b0dec  f3 f7 9c fe                                      bl #0x8a4b28
008b0df0  0f 99                                            ldr r1, [sp, #0x3c]
008b0df2  4b 6c                                            ldr r3, [r1, #0x44]
008b0df4  1a 68                                            ldr r2, [r3]
008b0df6  63 68                                            ldr r3, [r4, #4]
008b0df8  9a 42                                            cmp r2, r3
008b0dfa  5d d0                                            beq #0x8b0eb8
008b0dfc  11 9b                                            ldr r3, [sp, #0x44]
008b0dfe  5a 6c                                            ldr r2, [r3, #0x44]
008b0e00  1b 6c                                            ldr r3, [r3, #0x40]
008b0e02  9a 42                                            cmp r2, r3
008b0e04  00 d1                                            bne #0x8b0e08
008b0e06  19 e6                                            b #0x8b0a3c
008b0e08  20 1c                                            adds r0, r4, #0
008b0e0a  f3 f7 8d fe                                      bl #0x8a4b28
008b0e0e  11 99                                            ldr r1, [sp, #0x44]
008b0e10  4b 6c                                            ldr r3, [r1, #0x44]
008b0e12  1a 68                                            ldr r2, [r3]
008b0e14  63 68                                            ldr r3, [r4, #4]
008b0e16  9a 42                                            cmp r2, r3
008b0e18  7c d1                                            bne #0x8b0f14
008b0e1a  20 1c                                            adds r0, r4, #0
008b0e1c  f3 f7 60 fe                                      bl #0x8a4ae0
008b0e20  12 9a                                            ldr r2, [sp, #0x48]
008b0e22  4b 46                                            mov r3, sb
008b0e24  13 70                                            strb r3, [r2]
008b0e26  09 e6                                            b #0x8b0a3c
008b0e28  03 68                                            ldr r3, [r0]
008b0e2a  1b 6a                                            ldr r3, [r3, #0x20]
008b0e2c  98 47                                            blx r3
008b0e2e  d3 e4                                            b #0x8b07d8
008b0e30  2b 68                                            ldr r3, [r5]
008b0e32  28 1c                                            adds r0, r5, #0
008b0e34  db 68                                            ldr r3, [r3, #0xc]
008b0e36  98 47                                            blx r3
008b0e38  42 e6                                            b #0x8b0ac0
008b0e3a  62 68                                            ldr r2, [r4, #4]
008b0e3c  e3 e5                                            b #0x8b0a06
008b0e3e  03 68                                            ldr r3, [r0]
008b0e40  5b 6a                                            ldr r3, [r3, #0x24]
008b0e42  98 47                                            blx r3
008b0e44  ef e5                                            b #0x8b0a26
008b0e46  52 46                                            mov r2, sl
008b0e48  51 6c                                            ldr r1, [r2, #0x44]
008b0e4a  13 98                                            ldr r0, [sp, #0x4c]
008b0e4c  12 6c                                            ldr r2, [r2, #0x40]
008b0e4e  6b f6 7a e1                                      blx #0x31c144
008b0e52  95 e6                                            b #0x8b0b80
008b0e54  49 46                                            mov r1, sb
008b0e56  01 22                                            movs r2, #1
008b0e58  5d f6 8e e4                                      blx #0x30e778
008b0e5c  13 9e                                            ldr r6, [sp, #0x4c]
008b0e5e  71 6c                                            ldr r1, [r6, #0x44]
008b0e60  32 6c                                            ldr r2, [r6, #0x40]
008b0e62  30 1c                                            adds r0, r6, #0
008b0e64  04 31                                            adds r1, #4
008b0e66  6a f6 62 e7                                      blx #0x31bd2c
008b0e6a  8b e7                                            b #0x8b0d84
008b0e6c  03 68                                            ldr r3, [r0]
008b0e6e  1b 6a                                            ldr r3, [r3, #0x20]
008b0e70  98 47                                            blx r3
008b0e72  02 1c                                            adds r2, r0, #0
008b0e74  c0 e5                                            b #0x8b09f8
008b0e76  11 9b                                            ldr r3, [sp, #0x44]
008b0e78  5a 6c                                            ldr r2, [r3, #0x44]
008b0e7a  1b 6c                                            ldr r3, [r3, #0x40]
008b0e7c  9a 42                                            cmp r2, r3
008b0e7e  00 d1                                            bne #0x8b0e82
008b0e80  dc e5                                            b #0x8b0a3c
008b0e82  20 1c                                            adds r0, r4, #0
008b0e84  f3 f7 50 fe                                      bl #0x8a4b28
008b0e88  11 99                                            ldr r1, [sp, #0x44]
008b0e8a  4b 6c                                            ldr r3, [r1, #0x44]
008b0e8c  1a 68                                            ldr r2, [r3]
008b0e8e  63 68                                            ldr r3, [r4, #4]
008b0e90  9a 42                                            cmp r2, r3
008b0e92  00 d0                                            beq #0x8b0e96
008b0e94  d2 e5                                            b #0x8b0a3c
008b0e96  c0 e7                                            b #0x8b0e1a
008b0e98  49 46                                            mov r1, sb
008b0e9a  00 22                                            movs r2, #0
008b0e9c  5d f6 6c e4                                      blx #0x30e778
008b0ea0  13 9b                                            ldr r3, [sp, #0x4c]
008b0ea2  01 21                                            movs r1, #1
008b0ea4  13 98                                            ldr r0, [sp, #0x4c]
008b0ea6  1a 6c                                            ldr r2, [r3, #0x40]
008b0ea8  5b 6c                                            ldr r3, [r3, #0x44]
008b0eaa  d3 1a                                            subs r3, r2, r3
008b0eac  9b 10                                            asrs r3, r3, #2
008b0eae  c9 1a                                            subs r1, r1, r3
008b0eb0  4a 46                                            mov r2, sb
008b0eb2  f5 f7 13 ff                                      bl #0x8a6cdc
008b0eb6  65 e7                                            b #0x8b0d84
008b0eb8  20 1c                                            adds r0, r4, #0
008b0eba  f3 f7 11 fe                                      bl #0x8a4ae0
008b0ebe  bd e5                                            b #0x8b0a3c
008b0ec0  0e 9b                                            ldr r3, [sp, #0x38]
008b0ec2  47 46                                            mov r7, r8
008b0ec4  17 9d                                            ldr r5, [sp, #0x5c]
008b0ec6  9a 46                                            mov sl, r3
008b0ec8  04 23                                            movs r3, #4
008b0eca  3b 60                                            str r3, [r7]
008b0ecc  62 e6                                            b #0x8b0b94
008b0ece  0e 9a                                            ldr r2, [sp, #0x38]
008b0ed0  47 46                                            mov r7, r8
008b0ed2  04 23                                            movs r3, #4
008b0ed4  17 9d                                            ldr r5, [sp, #0x5c]
008b0ed6  3b 60                                            str r3, [r7]
008b0ed8  09 9b                                            ldr r3, [sp, #0x24]
008b0eda  92 46                                            mov sl, r2
008b0edc  21 9a                                            ldr r2, [sp, #0x84]
008b0ede  48 46                                            mov r0, sb
008b0ee0  04 c3                                            stm r3!, {r2}
008b0ee2  22 9a                                            ldr r2, [sp, #0x88]
008b0ee4  09 9e                                            ldr r6, [sp, #0x24]
008b0ee6  72 60                                            str r2, [r6, #4]
008b0ee8  14 99                                            ldr r1, [sp, #0x50]
008b0eea  0a 88                                            ldrh r2, [r1]
008b0eec  9a 80                                            strh r2, [r3, #4]
008b0eee  62 f6 5e e5                                      blx #0x3139ac
008b0ef2  58 e6                                            b #0x8b0ba6
008b0ef4  04 23                                            movs r3, #4
008b0ef6  47 46                                            mov r7, r8
008b0ef8  0e 9e                                            ldr r6, [sp, #0x38]
008b0efa  17 9d                                            ldr r5, [sp, #0x5c]
008b0efc  3b 60                                            str r3, [r7]
008b0efe  09 9b                                            ldr r3, [sp, #0x24]
008b0f00  21 9a                                            ldr r2, [sp, #0x84]
008b0f02  b2 46                                            mov sl, r6
008b0f04  04 c3                                            stm r3!, {r2}
008b0f06  22 9a                                            ldr r2, [sp, #0x88]
008b0f08  09 99                                            ldr r1, [sp, #0x24]
008b0f0a  4a 60                                            str r2, [r1, #4]
008b0f0c  14 9e                                            ldr r6, [sp, #0x50]
008b0f0e  32 88                                            ldrh r2, [r6]
008b0f10  9a 80                                            strh r2, [r3, #4]
008b0f12  48 e6                                            b #0x8b0ba6
008b0f14  0e 9e                                            ldr r6, [sp, #0x38]
008b0f16  04 23                                            movs r3, #4
008b0f18  47 46                                            mov r7, r8
008b0f1a  17 9d                                            ldr r5, [sp, #0x5c]
008b0f1c  3b 60                                            str r3, [r7]
008b0f1e  b2 46                                            mov sl, r6
008b0f20  22 68                                            ldr r2, [r4]
008b0f22  09 9b                                            ldr r3, [sp, #0x24]
008b0f24  ee e7                                            b #0x8b0f04
008b0f26  5d f6 f4 e1                                      blx #0x30e310

; FUNCTION 0x008b105c, declared_size=484, range_size=484, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEEtwEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, unsigned short, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::ios_base&, int&, unsigned short&, wchar_t*)
; decoder-mode: thumb
008b105c  f0 b5                                            push {r4, r5, r6, r7, lr}
008b105e  5f 46                                            mov r7, fp
008b1060  56 46                                            mov r6, sl
008b1062  4d 46                                            mov r5, sb
008b1064  44 46                                            mov r4, r8
008b1066  f0 b4                                            push {r4, r5, r6, r7}
008b1068  71 4e                                            ldr r6, [pc, #0x1c4]
008b106a  15 1c                                            adds r5, r2, #0
008b106c  71 4a                                            ldr r2, [pc, #0x1c4]
008b106e  7e 44                                            add r6, pc
008b1070  99 46                                            mov sb, r3
008b1072  b3 58                                            ldr r3, [r6, r2]
008b1074  97 b0                                            sub sp, #0x5c
008b1076  0c 1c                                            adds r4, r1, #0
008b1078  1b 68                                            ldr r3, [r3]
008b107a  21 99                                            ldr r1, [sp, #0x84]
008b107c  82 46                                            mov sl, r0
008b107e  15 93                                            str r3, [sp, #0x54]
008b1080  09 91                                            str r1, [sp, #0x24]
008b1082  0d ab                                            add r3, sp, #0x34
008b1084  49 46                                            mov r1, sb
008b1086  20 31                                            adds r1, #0x20
008b1088  18 1c                                            adds r0, r3, #0
008b108a  93 46                                            mov fp, r2
008b108c  98 46                                            mov r8, r3
008b108e  20 9f                                            ldr r7, [sp, #0x80]
008b1090  f2 f7 66 fa                                      bl #0x8a3560
008b1094  68 4b                                            ldr r3, [pc, #0x1a0]
008b1096  40 46                                            mov r0, r8
008b1098  f1 58                                            ldr r1, [r6, r3]
008b109a  f2 f7 89 fa                                      bl #0x8a35b0
008b109e  49 46                                            mov r1, sb
008b10a0  03 1c                                            adds r3, r0, #0
008b10a2  4a 68                                            ldr r2, [r1, #4]
008b10a4  20 1c                                            adds r0, r4, #0
008b10a6  29 1c                                            adds r1, r5, #0
008b10a8  fd f7 1a fc                                      bl #0x8ae8e0
008b10ac  02 1c                                            adds r2, r0, #0
008b10ae  07 90                                            str r0, [sp, #0x1c]
008b10b0  20 68                                            ldr r0, [r4]
008b10b2  01 23                                            movs r3, #1
008b10b4  1a 40                                            ands r2, r3
008b10b6  08 92                                            str r2, [sp, #0x20]
008b10b8  00 28                                            cmp r0, #0
008b10ba  0f d0                                            beq #0x8b10dc
008b10bc  63 7a                                            ldrb r3, [r4, #9]
008b10be  00 2b                                            cmp r3, #0
008b10c0  0c d1                                            bne #0x8b10dc
008b10c2  83 68                                            ldr r3, [r0, #8]
008b10c4  c2 68                                            ldr r2, [r0, #0xc]
008b10c6  93 42                                            cmp r3, r2
008b10c8  00 d3                                            blo #0x8b10cc
008b10ca  ab e0                                            b #0x8b1224
008b10cc  18 68                                            ldr r0, [r3]
008b10ce  60 60                                            str r0, [r4, #4]
008b10d0  01 30                                            adds r0, #1
008b10d2  43 42                                            rsbs r3, r0, #0
008b10d4  43 41                                            adcs r3, r0
008b10d6  23 72                                            strb r3, [r4, #8]
008b10d8  01 23                                            movs r3, #1
008b10da  63 72                                            strb r3, [r4, #9]
008b10dc  28 68                                            ldr r0, [r5]
008b10de  00 28                                            cmp r0, #0
008b10e0  56 d0                                            beq #0x8b1190
008b10e2  6b 7a                                            ldrb r3, [r5, #9]
008b10e4  00 2b                                            cmp r3, #0
008b10e6  53 d1                                            bne #0x8b1190
008b10e8  83 68                                            ldr r3, [r0, #8]
008b10ea  c2 68                                            ldr r2, [r0, #0xc]
008b10ec  93 42                                            cmp r3, r2
008b10ee  00 d3                                            blo #0x8b10f2
008b10f0  90 e0                                            b #0x8b1214
008b10f2  18 68                                            ldr r0, [r3]
008b10f4  68 60                                            str r0, [r5, #4]
008b10f6  01 30                                            adds r0, #1
008b10f8  01 22                                            movs r2, #1
008b10fa  43 42                                            rsbs r3, r0, #0
008b10fc  43 41                                            adcs r3, r0
008b10fe  2b 72                                            strb r3, [r5, #8]
008b1100  6a 72                                            strb r2, [r5, #9]
008b1102  22 7a                                            ldrb r2, [r4, #8]
008b1104  9a 42                                            cmp r2, r3
008b1106  47 d0                                            beq #0x8b1198
008b1108  4c 4b                                            ldr r3, [pc, #0x130]
008b110a  40 46                                            mov r0, r8
008b110c  f1 58                                            ldr r1, [r6, r3]
008b110e  f2 f7 4f fa                                      bl #0x8a35b0
008b1112  03 68                                            ldr r3, [r0]
008b1114  81 46                                            mov sb, r0
008b1116  db 68                                            ldr r3, [r3, #0xc]
008b1118  98 47                                            blx r3
008b111a  6a 46                                            mov r2, sp
008b111c  3c 32                                            adds r2, #0x3c
008b111e  0b 90                                            str r0, [sp, #0x2c]
008b1120  0a 92                                            str r2, [sp, #0x28]
008b1122  49 46                                            mov r1, sb
008b1124  0b 68                                            ldr r3, [r1]
008b1126  10 1c                                            adds r0, r2, #0
008b1128  1b 69                                            ldr r3, [r3, #0x10]
008b112a  98 47                                            blx r3
008b112c  07 9b                                            ldr r3, [sp, #0x1c]
008b112e  08 99                                            ldr r1, [sp, #0x20]
008b1130  20 1c                                            adds r0, r4, #0
008b1132  9a 10                                            asrs r2, r3, #2
008b1134  9b 07                                            lsls r3, r3, #0x1e
008b1136  db 0f                                            lsrs r3, r3, #0x1f
008b1138  01 93                                            str r3, [sp, #4]
008b113a  0b 9b                                            ldr r3, [sp, #0x2c]
008b113c  00 91                                            str r1, [sp]
008b113e  0a 99                                            ldr r1, [sp, #0x28]
008b1140  02 93                                            str r3, [sp, #8]
008b1142  0e ab                                            add r3, sp, #0x38
008b1144  03 91                                            str r1, [sp, #0xc]
008b1146  04 93                                            str r3, [sp, #0x10]
008b1148  29 1c                                            adds r1, r5, #0
008b114a  09 9b                                            ldr r3, [sp, #0x24]
008b114c  f9 f7 b2 ff                                      bl #0x8ab0b4
008b1150  81 46                                            mov sb, r0
008b1152  0a 98                                            ldr r0, [sp, #0x28]
008b1154  62 f6 2a e4                                      blx #0x3139ac
008b1158  4a 46                                            mov r2, sb
008b115a  00 23                                            movs r3, #0
008b115c  00 2a                                            cmp r2, #0
008b115e  21 d1                                            bne #0x8b11a4
008b1160  04 23                                            movs r3, #4
008b1162  3b 60                                            str r3, [r7]
008b1164  20 68                                            ldr r0, [r4]
008b1166  00 28                                            cmp r0, #0
008b1168  20 d1                                            bne #0x8b11ac
008b116a  28 68                                            ldr r0, [r5]
008b116c  00 28                                            cmp r0, #0
008b116e  2f d0                                            beq #0x8b11d0
008b1170  6b 7a                                            ldrb r3, [r5, #9]
008b1172  00 2b                                            cmp r3, #0
008b1174  2c d1                                            bne #0x8b11d0
008b1176  83 68                                            ldr r3, [r0, #8]
008b1178  c2 68                                            ldr r2, [r0, #0xc]
008b117a  93 42                                            cmp r3, r2
008b117c  46 d2                                            bhs #0x8b120c
008b117e  18 68                                            ldr r0, [r3]
008b1180  68 60                                            str r0, [r5, #4]
008b1182  01 30                                            adds r0, #1
008b1184  43 42                                            rsbs r3, r0, #0
008b1186  43 41                                            adcs r3, r0
008b1188  01 22                                            movs r2, #1
008b118a  2b 72                                            strb r3, [r5, #8]
008b118c  6a 72                                            strb r2, [r5, #9]
008b118e  20 e0                                            b #0x8b11d2
008b1190  2b 7a                                            ldrb r3, [r5, #8]
008b1192  22 7a                                            ldrb r2, [r4, #8]
008b1194  9a 42                                            cmp r2, r3
008b1196  b7 d1                                            bne #0x8b1108
008b1198  08 9b                                            ldr r3, [sp, #0x20]
008b119a  01 2b                                            cmp r3, #1
008b119c  e0 d1                                            bne #0x8b1160
008b119e  09 99                                            ldr r1, [sp, #0x24]
008b11a0  00 23                                            movs r3, #0
008b11a2  0b 80                                            strh r3, [r1]
008b11a4  3b 60                                            str r3, [r7]
008b11a6  20 68                                            ldr r0, [r4]
008b11a8  00 28                                            cmp r0, #0
008b11aa  de d0                                            beq #0x8b116a
008b11ac  63 7a                                            ldrb r3, [r4, #9]
008b11ae  00 2b                                            cmp r3, #0
008b11b0  db d1                                            bne #0x8b116a
008b11b2  83 68                                            ldr r3, [r0, #8]
008b11b4  c2 68                                            ldr r2, [r0, #0xc]
008b11b6  93 42                                            cmp r3, r2
008b11b8  30 d2                                            bhs #0x8b121c
008b11ba  18 68                                            ldr r0, [r3]
008b11bc  60 60                                            str r0, [r4, #4]
008b11be  01 30                                            adds r0, #1
008b11c0  43 42                                            rsbs r3, r0, #0
008b11c2  43 41                                            adcs r3, r0
008b11c4  23 72                                            strb r3, [r4, #8]
008b11c6  01 23                                            movs r3, #1
008b11c8  63 72                                            strb r3, [r4, #9]
008b11ca  28 68                                            ldr r0, [r5]
008b11cc  00 28                                            cmp r0, #0
008b11ce  cf d1                                            bne #0x8b1170
008b11d0  2b 7a                                            ldrb r3, [r5, #8]
008b11d2  22 7a                                            ldrb r2, [r4, #8]
008b11d4  9a 42                                            cmp r2, r3
008b11d6  03 d1                                            bne #0x8b11e0
008b11d8  3a 68                                            ldr r2, [r7]
008b11da  02 23                                            movs r3, #2
008b11dc  13 43                                            orrs r3, r2
008b11de  3b 60                                            str r3, [r7]
008b11e0  21 1c                                            adds r1, r4, #0
008b11e2  0a 22                                            movs r2, #0xa
008b11e4  50 46                                            mov r0, sl
008b11e6  5c f6 a8 e6                                      blx #0x30df38
008b11ea  40 46                                            mov r0, r8
008b11ec  f2 f7 82 f9                                      bl #0x8a34f4
008b11f0  59 46                                            mov r1, fp
008b11f2  73 58                                            ldr r3, [r6, r1]
008b11f4  15 9a                                            ldr r2, [sp, #0x54]
008b11f6  50 46                                            mov r0, sl
008b11f8  1b 68                                            ldr r3, [r3]
008b11fa  9a 42                                            cmp r2, r3
008b11fc  16 d1                                            bne #0x8b122c
008b11fe  17 b0                                            add sp, #0x5c
008b1200  3c bc                                            pop {r2, r3, r4, r5}
008b1202  90 46                                            mov r8, r2
008b1204  99 46                                            mov sb, r3
008b1206  a2 46                                            mov sl, r4
008b1208  ab 46                                            mov fp, r5
008b120a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b120c  03 68                                            ldr r3, [r0]
008b120e  1b 6a                                            ldr r3, [r3, #0x20]
008b1210  98 47                                            blx r3
008b1212  b5 e7                                            b #0x8b1180
008b1214  03 68                                            ldr r3, [r0]
008b1216  1b 6a                                            ldr r3, [r3, #0x20]
008b1218  98 47                                            blx r3
008b121a  6b e7                                            b #0x8b10f4
008b121c  03 68                                            ldr r3, [r0]
008b121e  1b 6a                                            ldr r3, [r3, #0x20]
008b1220  98 47                                            blx r3
008b1222  cb e7                                            b #0x8b11bc
008b1224  03 68                                            ldr r3, [r0]
008b1226  1b 6a                                            ldr r3, [r3, #0x20]
008b1228  98 47                                            blx r3
008b122a  50 e7                                            b #0x8b10ce
008b122c  5d f6 70 e0                                      blx #0x30e310
; mapping-symbol data/literal pool
008b1230  26 3a 0e 00 ac 40 00 00 44 1e 00 00 58 19 00 00  .byte 0x26, 0x3a, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00, 0x58, 0x19, 0x00, 0x00

; FUNCTION 0x008b1270, declared_size=348, range_size=348, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv14__do_get_floatISt19istreambuf_iteratorIwSt11char_traitsIwEEdwEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_get_float<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, double, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::ios_base&, int&, double&, wchar_t*)
; decoder-mode: thumb
008b1270  f0 b5                                            push {r4, r5, r6, r7, lr}
008b1272  5f 46                                            mov r7, fp
008b1274  56 46                                            mov r6, sl
008b1276  4d 46                                            mov r5, sb
008b1278  44 46                                            mov r4, r8
008b127a  f0 b4                                            push {r4, r5, r6, r7}
008b127c  4d 4c                                            ldr r4, [pc, #0x134]
008b127e  0e 1c                                            adds r6, r1, #0
008b1280  4d 4d                                            ldr r5, [pc, #0x134]
008b1282  a5 44                                            add sp, r4
008b1284  9a 99                                            ldr r1, [sp, #0x268]
008b1286  17 1c                                            adds r7, r2, #0
008b1288  9b 9a                                            ldr r2, [sp, #0x26c]
008b128a  88 46                                            mov r8, r1
008b128c  4b 49                                            ldr r1, [pc, #0x12c]
008b128e  7d 44                                            add r5, pc
008b1290  05 92                                            str r2, [sp, #0x14]
008b1292  6a 58                                            ldr r2, [r5, r1]
008b1294  8b 46                                            mov fp, r1
008b1296  19 1c                                            adds r1, r3, #0
008b1298  12 68                                            ldr r2, [r2]
008b129a  20 31                                            adds r1, #0x20
008b129c  82 46                                            mov sl, r0
008b129e  8f 92                                            str r2, [sp, #0x23c]
008b12a0  06 aa                                            add r2, sp, #0x18
008b12a2  10 1c                                            adds r0, r2, #0
008b12a4  91 46                                            mov sb, r2
008b12a6  f2 f7 5b f9                                      bl #0x8a3560
008b12aa  45 4b                                            ldr r3, [pc, #0x114]
008b12ac  48 46                                            mov r0, sb
008b12ae  07 ac                                            add r4, sp, #0x1c
008b12b0  e9 58                                            ldr r1, [r5, r3]
008b12b2  f2 f7 7d f9                                      bl #0x8a35b0
008b12b6  43 4b                                            ldr r3, [pc, #0x10c]
008b12b8  03 90                                            str r0, [sp, #0xc]
008b12ba  48 46                                            mov r0, sb
008b12bc  e9 58                                            ldr r1, [r5, r3]
008b12be  f2 f7 77 f9                                      bl #0x8a35b0
008b12c2  4e a9                                            add r1, sp, #0x138
008b12c4  40 4a                                            ldr r2, [pc, #0x100]
008b12c6  04 90                                            str r0, [sp, #0x10]
008b12c8  0c a8                                            add r0, sp, #0x30
008b12ca  24 61                                            str r4, [r4, #0x10]
008b12cc  5d f6 cc e2                                      blx #0x30e868
008b12d0  8c 23                                            movs r3, #0x8c
008b12d2  5b 00                                            lsls r3, r3, #1
008b12d4  20 1c                                            adds r0, r4, #0
008b12d6  e4 50                                            str r4, [r4, r3]
008b12d8  f3 f7 fe ff                                      bl #0x8a52d8
008b12dc  23 69                                            ldr r3, [r4, #0x10]
008b12de  00 21                                            movs r1, #0
008b12e0  20 1c                                            adds r0, r4, #0
008b12e2  19 70                                            strb r1, [r3]
008b12e4  04 9a                                            ldr r2, [sp, #0x10]
008b12e6  31 1c                                            adds r1, r6, #0
008b12e8  03 9b                                            ldr r3, [sp, #0xc]
008b12ea  00 92                                            str r2, [sp]
008b12ec  3a 1c                                            adds r2, r7, #0
008b12ee  fb f7 95 f9                                      bl #0x8ac61c
008b12f2  00 28                                            cmp r0, #0
008b12f4  4c d1                                            bne #0x8b1390
008b12f6  04 23                                            movs r3, #4
008b12f8  42 46                                            mov r2, r8
008b12fa  13 60                                            str r3, [r2]
008b12fc  30 68                                            ldr r0, [r6]
008b12fe  00 28                                            cmp r0, #0
008b1300  0e d0                                            beq #0x8b1320
008b1302  73 7a                                            ldrb r3, [r6, #9]
008b1304  00 2b                                            cmp r3, #0
008b1306  0b d1                                            bne #0x8b1320
008b1308  83 68                                            ldr r3, [r0, #8]
008b130a  c2 68                                            ldr r2, [r0, #0xc]
008b130c  93 42                                            cmp r3, r2
008b130e  4b d2                                            bhs #0x8b13a8
008b1310  18 68                                            ldr r0, [r3]
008b1312  70 60                                            str r0, [r6, #4]
008b1314  01 30                                            adds r0, #1
008b1316  43 42                                            rsbs r3, r0, #0
008b1318  43 41                                            adcs r3, r0
008b131a  33 72                                            strb r3, [r6, #8]
008b131c  01 23                                            movs r3, #1
008b131e  73 72                                            strb r3, [r6, #9]
008b1320  38 68                                            ldr r0, [r7]
008b1322  00 28                                            cmp r0, #0
008b1324  0f d0                                            beq #0x8b1346
008b1326  7b 7a                                            ldrb r3, [r7, #9]
008b1328  00 2b                                            cmp r3, #0
008b132a  0c d1                                            bne #0x8b1346
008b132c  83 68                                            ldr r3, [r0, #8]
008b132e  c2 68                                            ldr r2, [r0, #0xc]
008b1330  93 42                                            cmp r3, r2
008b1332  35 d2                                            bhs #0x8b13a0
008b1334  18 68                                            ldr r0, [r3]
008b1336  78 60                                            str r0, [r7, #4]
008b1338  01 30                                            adds r0, #1
008b133a  43 42                                            rsbs r3, r0, #0
008b133c  43 41                                            adcs r3, r0
008b133e  01 22                                            movs r2, #1
008b1340  3b 72                                            strb r3, [r7, #8]
008b1342  7a 72                                            strb r2, [r7, #9]
008b1344  00 e0                                            b #0x8b1348
008b1346  3b 7a                                            ldrb r3, [r7, #8]
008b1348  32 7a                                            ldrb r2, [r6, #8]
008b134a  9a 42                                            cmp r2, r3
008b134c  05 d1                                            bne #0x8b135a
008b134e  43 46                                            mov r3, r8
008b1350  1a 68                                            ldr r2, [r3]
008b1352  02 23                                            movs r3, #2
008b1354  41 46                                            mov r1, r8
008b1356  13 43                                            orrs r3, r2
008b1358  0b 60                                            str r3, [r1]
008b135a  0a 22                                            movs r2, #0xa
008b135c  31 1c                                            adds r1, r6, #0
008b135e  50 46                                            mov r0, sl
008b1360  5c f6 ea e5                                      blx #0x30df38
008b1364  20 1c                                            adds r0, r4, #0
008b1366  f4 f7 8d fb                                      bl #0x8a5a84
008b136a  48 46                                            mov r0, sb
008b136c  f2 f7 c2 f8                                      bl #0x8a34f4
008b1370  5a 46                                            mov r2, fp
008b1372  ab 58                                            ldr r3, [r5, r2]
008b1374  8f 9a                                            ldr r2, [sp, #0x23c]
008b1376  50 46                                            mov r0, sl
008b1378  1b 68                                            ldr r3, [r3]
008b137a  9a 42                                            cmp r2, r3
008b137c  18 d1                                            bne #0x8b13b0
008b137e  91 23                                            movs r3, #0x91
008b1380  9b 00                                            lsls r3, r3, #2
008b1382  9d 44                                            add sp, r3
008b1384  3c bc                                            pop {r2, r3, r4, r5}
008b1386  90 46                                            mov r8, r2
008b1388  99 46                                            mov sb, r3
008b138a  a2 46                                            mov sl, r4
008b138c  ab 46                                            mov fp, r5
008b138e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b1390  05 99                                            ldr r1, [sp, #0x14]
008b1392  20 1c                                            adds r0, r4, #0
008b1394  09 f0 a0 f9                                      bl #0x8ba6d8
008b1398  00 23                                            movs r3, #0
008b139a  41 46                                            mov r1, r8
008b139c  0b 60                                            str r3, [r1]
008b139e  ad e7                                            b #0x8b12fc
008b13a0  03 68                                            ldr r3, [r0]
008b13a2  1b 6a                                            ldr r3, [r3, #0x20]
008b13a4  98 47                                            blx r3
008b13a6  c6 e7                                            b #0x8b1336
008b13a8  03 68                                            ldr r3, [r0]
008b13aa  1b 6a                                            ldr r3, [r3, #0x20]
008b13ac  98 47                                            blx r3
008b13ae  b0 e7                                            b #0x8b1312
008b13b0  5c f6 ae e7                                      blx #0x30e310
; mapping-symbol data/literal pool
008b13b4  bc fd ff ff 06 38 0e 00 ac 40 00 00 44 1e 00 00  .byte 0xbc, 0xfd, 0xff, 0xff, 0x06, 0x38, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00
008b13c4  58 19 00 00 01 01 00 00                          .byte 0x58, 0x19, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008b1858, declared_size=348, range_size=348, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv14__do_get_floatISt19istreambuf_iteratorIwSt11char_traitsIwEEfwEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_get_float<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, float, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::ios_base&, int&, float&, wchar_t*)
; decoder-mode: thumb
008b1858  f0 b5                                            push {r4, r5, r6, r7, lr}
008b185a  5f 46                                            mov r7, fp
008b185c  56 46                                            mov r6, sl
008b185e  4d 46                                            mov r5, sb
008b1860  44 46                                            mov r4, r8
008b1862  f0 b4                                            push {r4, r5, r6, r7}
008b1864  4d 4c                                            ldr r4, [pc, #0x134]
008b1866  0e 1c                                            adds r6, r1, #0
008b1868  4d 4d                                            ldr r5, [pc, #0x134]
008b186a  a5 44                                            add sp, r4
008b186c  9a 99                                            ldr r1, [sp, #0x268]
008b186e  17 1c                                            adds r7, r2, #0
008b1870  9b 9a                                            ldr r2, [sp, #0x26c]
008b1872  88 46                                            mov r8, r1
008b1874  4b 49                                            ldr r1, [pc, #0x12c]
008b1876  7d 44                                            add r5, pc
008b1878  05 92                                            str r2, [sp, #0x14]
008b187a  6a 58                                            ldr r2, [r5, r1]
008b187c  8b 46                                            mov fp, r1
008b187e  19 1c                                            adds r1, r3, #0
008b1880  12 68                                            ldr r2, [r2]
008b1882  20 31                                            adds r1, #0x20
008b1884  82 46                                            mov sl, r0
008b1886  8f 92                                            str r2, [sp, #0x23c]
008b1888  06 aa                                            add r2, sp, #0x18
008b188a  10 1c                                            adds r0, r2, #0
008b188c  91 46                                            mov sb, r2
008b188e  f1 f7 67 fe                                      bl #0x8a3560
008b1892  45 4b                                            ldr r3, [pc, #0x114]
008b1894  48 46                                            mov r0, sb
008b1896  07 ac                                            add r4, sp, #0x1c
008b1898  e9 58                                            ldr r1, [r5, r3]
008b189a  f1 f7 89 fe                                      bl #0x8a35b0
008b189e  43 4b                                            ldr r3, [pc, #0x10c]
008b18a0  03 90                                            str r0, [sp, #0xc]
008b18a2  48 46                                            mov r0, sb
008b18a4  e9 58                                            ldr r1, [r5, r3]
008b18a6  f1 f7 83 fe                                      bl #0x8a35b0
008b18aa  4e a9                                            add r1, sp, #0x138
008b18ac  40 4a                                            ldr r2, [pc, #0x100]
008b18ae  04 90                                            str r0, [sp, #0x10]
008b18b0  0c a8                                            add r0, sp, #0x30
008b18b2  24 61                                            str r4, [r4, #0x10]
008b18b4  5c f6 d8 e7                                      blx #0x30e868
008b18b8  8c 23                                            movs r3, #0x8c
008b18ba  5b 00                                            lsls r3, r3, #1
008b18bc  20 1c                                            adds r0, r4, #0
008b18be  e4 50                                            str r4, [r4, r3]
008b18c0  f3 f7 0a fd                                      bl #0x8a52d8
008b18c4  23 69                                            ldr r3, [r4, #0x10]
008b18c6  00 21                                            movs r1, #0
008b18c8  20 1c                                            adds r0, r4, #0
008b18ca  19 70                                            strb r1, [r3]
008b18cc  04 9a                                            ldr r2, [sp, #0x10]
008b18ce  31 1c                                            adds r1, r6, #0
008b18d0  03 9b                                            ldr r3, [sp, #0xc]
008b18d2  00 92                                            str r2, [sp]
008b18d4  3a 1c                                            adds r2, r7, #0
008b18d6  fa f7 a1 fe                                      bl #0x8ac61c
008b18da  00 28                                            cmp r0, #0
008b18dc  4c d1                                            bne #0x8b1978
008b18de  04 23                                            movs r3, #4
008b18e0  42 46                                            mov r2, r8
008b18e2  13 60                                            str r3, [r2]
008b18e4  30 68                                            ldr r0, [r6]
008b18e6  00 28                                            cmp r0, #0
008b18e8  0e d0                                            beq #0x8b1908
008b18ea  73 7a                                            ldrb r3, [r6, #9]
008b18ec  00 2b                                            cmp r3, #0
008b18ee  0b d1                                            bne #0x8b1908
008b18f0  83 68                                            ldr r3, [r0, #8]
008b18f2  c2 68                                            ldr r2, [r0, #0xc]
008b18f4  93 42                                            cmp r3, r2
008b18f6  4b d2                                            bhs #0x8b1990
008b18f8  18 68                                            ldr r0, [r3]
008b18fa  70 60                                            str r0, [r6, #4]
008b18fc  01 30                                            adds r0, #1
008b18fe  43 42                                            rsbs r3, r0, #0
008b1900  43 41                                            adcs r3, r0
008b1902  33 72                                            strb r3, [r6, #8]
008b1904  01 23                                            movs r3, #1
008b1906  73 72                                            strb r3, [r6, #9]
008b1908  38 68                                            ldr r0, [r7]
008b190a  00 28                                            cmp r0, #0
008b190c  0f d0                                            beq #0x8b192e
008b190e  7b 7a                                            ldrb r3, [r7, #9]
008b1910  00 2b                                            cmp r3, #0
008b1912  0c d1                                            bne #0x8b192e
008b1914  83 68                                            ldr r3, [r0, #8]
008b1916  c2 68                                            ldr r2, [r0, #0xc]
008b1918  93 42                                            cmp r3, r2
008b191a  35 d2                                            bhs #0x8b1988
008b191c  18 68                                            ldr r0, [r3]
008b191e  78 60                                            str r0, [r7, #4]
008b1920  01 30                                            adds r0, #1
008b1922  43 42                                            rsbs r3, r0, #0
008b1924  43 41                                            adcs r3, r0
008b1926  01 22                                            movs r2, #1
008b1928  3b 72                                            strb r3, [r7, #8]
008b192a  7a 72                                            strb r2, [r7, #9]
008b192c  00 e0                                            b #0x8b1930
008b192e  3b 7a                                            ldrb r3, [r7, #8]
008b1930  32 7a                                            ldrb r2, [r6, #8]
008b1932  9a 42                                            cmp r2, r3
008b1934  05 d1                                            bne #0x8b1942
008b1936  43 46                                            mov r3, r8
008b1938  1a 68                                            ldr r2, [r3]
008b193a  02 23                                            movs r3, #2
008b193c  41 46                                            mov r1, r8
008b193e  13 43                                            orrs r3, r2
008b1940  0b 60                                            str r3, [r1]
008b1942  0a 22                                            movs r2, #0xa
008b1944  31 1c                                            adds r1, r6, #0
008b1946  50 46                                            mov r0, sl
008b1948  5c f6 f6 e2                                      blx #0x30df38
008b194c  20 1c                                            adds r0, r4, #0
008b194e  f4 f7 99 f8                                      bl #0x8a5a84
008b1952  48 46                                            mov r0, sb
008b1954  f1 f7 ce fd                                      bl #0x8a34f4
008b1958  5a 46                                            mov r2, fp
008b195a  ab 58                                            ldr r3, [r5, r2]
008b195c  8f 9a                                            ldr r2, [sp, #0x23c]
008b195e  50 46                                            mov r0, sl
008b1960  1b 68                                            ldr r3, [r3]
008b1962  9a 42                                            cmp r2, r3
008b1964  18 d1                                            bne #0x8b1998
008b1966  91 23                                            movs r3, #0x91
008b1968  9b 00                                            lsls r3, r3, #2
008b196a  9d 44                                            add sp, r3
008b196c  3c bc                                            pop {r2, r3, r4, r5}
008b196e  90 46                                            mov r8, r2
008b1970  99 46                                            mov sb, r3
008b1972  a2 46                                            mov sl, r4
008b1974  ab 46                                            mov fp, r5
008b1976  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b1978  05 99                                            ldr r1, [sp, #0x14]
008b197a  20 1c                                            adds r0, r4, #0
008b197c  08 f0 a0 fe                                      bl #0x8ba6c0
008b1980  00 23                                            movs r3, #0
008b1982  41 46                                            mov r1, r8
008b1984  0b 60                                            str r3, [r1]
008b1986  ad e7                                            b #0x8b18e4
008b1988  03 68                                            ldr r3, [r0]
008b198a  1b 6a                                            ldr r3, [r3, #0x20]
008b198c  98 47                                            blx r3
008b198e  c6 e7                                            b #0x8b191e
008b1990  03 68                                            ldr r3, [r0]
008b1992  1b 6a                                            ldr r3, [r3, #0x20]
008b1994  98 47                                            blx r3
008b1996  b0 e7                                            b #0x8b18fa
008b1998  5c f6 ba e4                                      blx #0x30e310
; mapping-symbol data/literal pool
008b199c  bc fd ff ff 1e 32 0e 00 ac 40 00 00 44 1e 00 00  .byte 0xbc, 0xfd, 0xff, 0xff, 0x1e, 0x32, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00
008b19ac  58 19 00 00 01 01 00 00                          .byte 0x58, 0x19, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008b2c44, declared_size=348, range_size=348, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv14__do_get_floatISt19istreambuf_iteratorIwSt11char_traitsIwEEewEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_get_float<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, long double, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::ios_base&, int&, long double&, wchar_t*)
; decoder-mode: thumb
008b2c44  f0 b5                                            push {r4, r5, r6, r7, lr}
008b2c46  5f 46                                            mov r7, fp
008b2c48  56 46                                            mov r6, sl
008b2c4a  4d 46                                            mov r5, sb
008b2c4c  44 46                                            mov r4, r8
008b2c4e  f0 b4                                            push {r4, r5, r6, r7}
008b2c50  4d 4c                                            ldr r4, [pc, #0x134]
008b2c52  0e 1c                                            adds r6, r1, #0
008b2c54  4d 4d                                            ldr r5, [pc, #0x134]
008b2c56  a5 44                                            add sp, r4
008b2c58  9a 99                                            ldr r1, [sp, #0x268]
008b2c5a  17 1c                                            adds r7, r2, #0
008b2c5c  9b 9a                                            ldr r2, [sp, #0x26c]
008b2c5e  88 46                                            mov r8, r1
008b2c60  4b 49                                            ldr r1, [pc, #0x12c]
008b2c62  7d 44                                            add r5, pc
008b2c64  05 92                                            str r2, [sp, #0x14]
008b2c66  6a 58                                            ldr r2, [r5, r1]
008b2c68  8b 46                                            mov fp, r1
008b2c6a  19 1c                                            adds r1, r3, #0
008b2c6c  12 68                                            ldr r2, [r2]
008b2c6e  20 31                                            adds r1, #0x20
008b2c70  82 46                                            mov sl, r0
008b2c72  8f 92                                            str r2, [sp, #0x23c]
008b2c74  06 aa                                            add r2, sp, #0x18
008b2c76  10 1c                                            adds r0, r2, #0
008b2c78  91 46                                            mov sb, r2
008b2c7a  f0 f7 71 fc                                      bl #0x8a3560
008b2c7e  45 4b                                            ldr r3, [pc, #0x114]
008b2c80  48 46                                            mov r0, sb
008b2c82  07 ac                                            add r4, sp, #0x1c
008b2c84  e9 58                                            ldr r1, [r5, r3]
008b2c86  f0 f7 93 fc                                      bl #0x8a35b0
008b2c8a  43 4b                                            ldr r3, [pc, #0x10c]
008b2c8c  03 90                                            str r0, [sp, #0xc]
008b2c8e  48 46                                            mov r0, sb
008b2c90  e9 58                                            ldr r1, [r5, r3]
008b2c92  f0 f7 8d fc                                      bl #0x8a35b0
008b2c96  4e a9                                            add r1, sp, #0x138
008b2c98  40 4a                                            ldr r2, [pc, #0x100]
008b2c9a  04 90                                            str r0, [sp, #0x10]
008b2c9c  0c a8                                            add r0, sp, #0x30
008b2c9e  24 61                                            str r4, [r4, #0x10]
008b2ca0  5b f6 e2 e5                                      blx #0x30e868
008b2ca4  8c 23                                            movs r3, #0x8c
008b2ca6  5b 00                                            lsls r3, r3, #1
008b2ca8  20 1c                                            adds r0, r4, #0
008b2caa  e4 50                                            str r4, [r4, r3]
008b2cac  f2 f7 14 fb                                      bl #0x8a52d8
008b2cb0  23 69                                            ldr r3, [r4, #0x10]
008b2cb2  00 21                                            movs r1, #0
008b2cb4  20 1c                                            adds r0, r4, #0
008b2cb6  19 70                                            strb r1, [r3]
008b2cb8  04 9a                                            ldr r2, [sp, #0x10]
008b2cba  31 1c                                            adds r1, r6, #0
008b2cbc  03 9b                                            ldr r3, [sp, #0xc]
008b2cbe  00 92                                            str r2, [sp]
008b2cc0  3a 1c                                            adds r2, r7, #0
008b2cc2  f9 f7 ab fc                                      bl #0x8ac61c
008b2cc6  00 28                                            cmp r0, #0
008b2cc8  4c d1                                            bne #0x8b2d64
008b2cca  04 23                                            movs r3, #4
008b2ccc  42 46                                            mov r2, r8
008b2cce  13 60                                            str r3, [r2]
008b2cd0  30 68                                            ldr r0, [r6]
008b2cd2  00 28                                            cmp r0, #0
008b2cd4  0e d0                                            beq #0x8b2cf4
008b2cd6  73 7a                                            ldrb r3, [r6, #9]
008b2cd8  00 2b                                            cmp r3, #0
008b2cda  0b d1                                            bne #0x8b2cf4
008b2cdc  83 68                                            ldr r3, [r0, #8]
008b2cde  c2 68                                            ldr r2, [r0, #0xc]
008b2ce0  93 42                                            cmp r3, r2
008b2ce2  4b d2                                            bhs #0x8b2d7c
008b2ce4  18 68                                            ldr r0, [r3]
008b2ce6  70 60                                            str r0, [r6, #4]
008b2ce8  01 30                                            adds r0, #1
008b2cea  43 42                                            rsbs r3, r0, #0
008b2cec  43 41                                            adcs r3, r0
008b2cee  33 72                                            strb r3, [r6, #8]
008b2cf0  01 23                                            movs r3, #1
008b2cf2  73 72                                            strb r3, [r6, #9]
008b2cf4  38 68                                            ldr r0, [r7]
008b2cf6  00 28                                            cmp r0, #0
008b2cf8  0f d0                                            beq #0x8b2d1a
008b2cfa  7b 7a                                            ldrb r3, [r7, #9]
008b2cfc  00 2b                                            cmp r3, #0
008b2cfe  0c d1                                            bne #0x8b2d1a
008b2d00  83 68                                            ldr r3, [r0, #8]
008b2d02  c2 68                                            ldr r2, [r0, #0xc]
008b2d04  93 42                                            cmp r3, r2
008b2d06  35 d2                                            bhs #0x8b2d74
008b2d08  18 68                                            ldr r0, [r3]
008b2d0a  78 60                                            str r0, [r7, #4]
008b2d0c  01 30                                            adds r0, #1
008b2d0e  43 42                                            rsbs r3, r0, #0
008b2d10  43 41                                            adcs r3, r0
008b2d12  01 22                                            movs r2, #1
008b2d14  3b 72                                            strb r3, [r7, #8]
008b2d16  7a 72                                            strb r2, [r7, #9]
008b2d18  00 e0                                            b #0x8b2d1c
008b2d1a  3b 7a                                            ldrb r3, [r7, #8]
008b2d1c  32 7a                                            ldrb r2, [r6, #8]
008b2d1e  9a 42                                            cmp r2, r3
008b2d20  05 d1                                            bne #0x8b2d2e
008b2d22  43 46                                            mov r3, r8
008b2d24  1a 68                                            ldr r2, [r3]
008b2d26  02 23                                            movs r3, #2
008b2d28  41 46                                            mov r1, r8
008b2d2a  13 43                                            orrs r3, r2
008b2d2c  0b 60                                            str r3, [r1]
008b2d2e  0a 22                                            movs r2, #0xa
008b2d30  31 1c                                            adds r1, r6, #0
008b2d32  50 46                                            mov r0, sl
008b2d34  5b f6 00 e1                                      blx #0x30df38
008b2d38  20 1c                                            adds r0, r4, #0
008b2d3a  f2 f7 a3 fe                                      bl #0x8a5a84
008b2d3e  48 46                                            mov r0, sb
008b2d40  f0 f7 d8 fb                                      bl #0x8a34f4
008b2d44  5a 46                                            mov r2, fp
008b2d46  ab 58                                            ldr r3, [r5, r2]
008b2d48  8f 9a                                            ldr r2, [sp, #0x23c]
008b2d4a  50 46                                            mov r0, sl
008b2d4c  1b 68                                            ldr r3, [r3]
008b2d4e  9a 42                                            cmp r2, r3
008b2d50  18 d1                                            bne #0x8b2d84
008b2d52  91 23                                            movs r3, #0x91
008b2d54  9b 00                                            lsls r3, r3, #2
008b2d56  9d 44                                            add sp, r3
008b2d58  3c bc                                            pop {r2, r3, r4, r5}
008b2d5a  90 46                                            mov r8, r2
008b2d5c  99 46                                            mov sb, r3
008b2d5e  a2 46                                            mov sl, r4
008b2d60  ab 46                                            mov fp, r5
008b2d62  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b2d64  05 99                                            ldr r1, [sp, #0x14]
008b2d66  20 1c                                            adds r0, r4, #0
008b2d68  07 f0 fe fe                                      bl #0x8bab68
008b2d6c  00 23                                            movs r3, #0
008b2d6e  41 46                                            mov r1, r8
008b2d70  0b 60                                            str r3, [r1]
008b2d72  ad e7                                            b #0x8b2cd0
008b2d74  03 68                                            ldr r3, [r0]
008b2d76  1b 6a                                            ldr r3, [r3, #0x20]
008b2d78  98 47                                            blx r3
008b2d7a  c6 e7                                            b #0x8b2d0a
008b2d7c  03 68                                            ldr r3, [r0]
008b2d7e  1b 6a                                            ldr r3, [r3, #0x20]
008b2d80  98 47                                            blx r3
008b2d82  b0 e7                                            b #0x8b2ce6
008b2d84  5b f6 c4 e2                                      blx #0x30e310
; mapping-symbol data/literal pool
008b2d88  bc fd ff ff 32 1e 0e 00 ac 40 00 00 44 1e 00 00  .byte 0xbc, 0xfd, 0xff, 0xff, 0x32, 0x1e, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00
008b2d98  58 19 00 00 01 01 00 00                          .byte 0x58, 0x19, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008b2fdc, declared_size=484, range_size=484, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv16__do_get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEEmwEET_RS5_S6_RSt8ios_baseRiRT0_PT1_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, unsigned long, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::ios_base&, int&, unsigned long&, wchar_t*)
; decoder-mode: thumb
008b2fdc  f0 b5                                            push {r4, r5, r6, r7, lr}
008b2fde  5f 46                                            mov r7, fp
008b2fe0  56 46                                            mov r6, sl
008b2fe2  4d 46                                            mov r5, sb
008b2fe4  44 46                                            mov r4, r8
008b2fe6  f0 b4                                            push {r4, r5, r6, r7}
008b2fe8  71 4e                                            ldr r6, [pc, #0x1c4]
008b2fea  15 1c                                            adds r5, r2, #0
008b2fec  71 4a                                            ldr r2, [pc, #0x1c4]
008b2fee  7e 44                                            add r6, pc
008b2ff0  99 46                                            mov sb, r3
008b2ff2  b3 58                                            ldr r3, [r6, r2]
008b2ff4  97 b0                                            sub sp, #0x5c
008b2ff6  0c 1c                                            adds r4, r1, #0
008b2ff8  1b 68                                            ldr r3, [r3]
008b2ffa  21 99                                            ldr r1, [sp, #0x84]
008b2ffc  82 46                                            mov sl, r0
008b2ffe  15 93                                            str r3, [sp, #0x54]
008b3000  09 91                                            str r1, [sp, #0x24]
008b3002  0d ab                                            add r3, sp, #0x34
008b3004  49 46                                            mov r1, sb
008b3006  20 31                                            adds r1, #0x20
008b3008  18 1c                                            adds r0, r3, #0
008b300a  93 46                                            mov fp, r2
008b300c  98 46                                            mov r8, r3
008b300e  20 9f                                            ldr r7, [sp, #0x80]
008b3010  f0 f7 a6 fa                                      bl #0x8a3560
008b3014  68 4b                                            ldr r3, [pc, #0x1a0]
008b3016  40 46                                            mov r0, r8
008b3018  f1 58                                            ldr r1, [r6, r3]
008b301a  f0 f7 c9 fa                                      bl #0x8a35b0
008b301e  49 46                                            mov r1, sb
008b3020  03 1c                                            adds r3, r0, #0
008b3022  4a 68                                            ldr r2, [r1, #4]
008b3024  20 1c                                            adds r0, r4, #0
008b3026  29 1c                                            adds r1, r5, #0
008b3028  fb f7 5a fc                                      bl #0x8ae8e0
008b302c  02 1c                                            adds r2, r0, #0
008b302e  07 90                                            str r0, [sp, #0x1c]
008b3030  20 68                                            ldr r0, [r4]
008b3032  01 23                                            movs r3, #1
008b3034  1a 40                                            ands r2, r3
008b3036  08 92                                            str r2, [sp, #0x20]
008b3038  00 28                                            cmp r0, #0
008b303a  0f d0                                            beq #0x8b305c
008b303c  63 7a                                            ldrb r3, [r4, #9]
008b303e  00 2b                                            cmp r3, #0
008b3040  0c d1                                            bne #0x8b305c
008b3042  83 68                                            ldr r3, [r0, #8]
008b3044  c2 68                                            ldr r2, [r0, #0xc]
008b3046  93 42                                            cmp r3, r2
008b3048  00 d3                                            blo #0x8b304c
008b304a  ab e0                                            b #0x8b31a4
008b304c  18 68                                            ldr r0, [r3]
008b304e  60 60                                            str r0, [r4, #4]
008b3050  01 30                                            adds r0, #1
008b3052  43 42                                            rsbs r3, r0, #0
008b3054  43 41                                            adcs r3, r0
008b3056  23 72                                            strb r3, [r4, #8]
008b3058  01 23                                            movs r3, #1
008b305a  63 72                                            strb r3, [r4, #9]
008b305c  28 68                                            ldr r0, [r5]
008b305e  00 28                                            cmp r0, #0
008b3060  56 d0                                            beq #0x8b3110
008b3062  6b 7a                                            ldrb r3, [r5, #9]
008b3064  00 2b                                            cmp r3, #0
008b3066  53 d1                                            bne #0x8b3110
008b3068  83 68                                            ldr r3, [r0, #8]
008b306a  c2 68                                            ldr r2, [r0, #0xc]
008b306c  93 42                                            cmp r3, r2
008b306e  00 d3                                            blo #0x8b3072
008b3070  90 e0                                            b #0x8b3194
008b3072  18 68                                            ldr r0, [r3]
008b3074  68 60                                            str r0, [r5, #4]
008b3076  01 30                                            adds r0, #1
008b3078  01 22                                            movs r2, #1
008b307a  43 42                                            rsbs r3, r0, #0
008b307c  43 41                                            adcs r3, r0
008b307e  2b 72                                            strb r3, [r5, #8]
008b3080  6a 72                                            strb r2, [r5, #9]
008b3082  22 7a                                            ldrb r2, [r4, #8]
008b3084  9a 42                                            cmp r2, r3
008b3086  47 d0                                            beq #0x8b3118
008b3088  4c 4b                                            ldr r3, [pc, #0x130]
008b308a  40 46                                            mov r0, r8
008b308c  f1 58                                            ldr r1, [r6, r3]
008b308e  f0 f7 8f fa                                      bl #0x8a35b0
008b3092  03 68                                            ldr r3, [r0]
008b3094  81 46                                            mov sb, r0
008b3096  db 68                                            ldr r3, [r3, #0xc]
008b3098  98 47                                            blx r3
008b309a  6a 46                                            mov r2, sp
008b309c  3c 32                                            adds r2, #0x3c
008b309e  0b 90                                            str r0, [sp, #0x2c]
008b30a0  0a 92                                            str r2, [sp, #0x28]
008b30a2  49 46                                            mov r1, sb
008b30a4  0b 68                                            ldr r3, [r1]
008b30a6  10 1c                                            adds r0, r2, #0
008b30a8  1b 69                                            ldr r3, [r3, #0x10]
008b30aa  98 47                                            blx r3
008b30ac  07 9b                                            ldr r3, [sp, #0x1c]
008b30ae  08 99                                            ldr r1, [sp, #0x20]
008b30b0  20 1c                                            adds r0, r4, #0
008b30b2  9a 10                                            asrs r2, r3, #2
008b30b4  9b 07                                            lsls r3, r3, #0x1e
008b30b6  db 0f                                            lsrs r3, r3, #0x1f
008b30b8  01 93                                            str r3, [sp, #4]
008b30ba  0b 9b                                            ldr r3, [sp, #0x2c]
008b30bc  00 91                                            str r1, [sp]
008b30be  0a 99                                            ldr r1, [sp, #0x28]
008b30c0  02 93                                            str r3, [sp, #8]
008b30c2  0e ab                                            add r3, sp, #0x38
008b30c4  03 91                                            str r1, [sp, #0xc]
008b30c6  04 93                                            str r3, [sp, #0x10]
008b30c8  29 1c                                            adds r1, r5, #0
008b30ca  09 9b                                            ldr r3, [sp, #0x24]
008b30cc  f8 f7 0a fa                                      bl #0x8ab4e4
008b30d0  81 46                                            mov sb, r0
008b30d2  0a 98                                            ldr r0, [sp, #0x28]
008b30d4  60 f6 6a e4                                      blx #0x3139ac
008b30d8  4a 46                                            mov r2, sb
008b30da  00 23                                            movs r3, #0
008b30dc  00 2a                                            cmp r2, #0
008b30de  21 d1                                            bne #0x8b3124
008b30e0  04 23                                            movs r3, #4
008b30e2  3b 60                                            str r3, [r7]
008b30e4  20 68                                            ldr r0, [r4]
008b30e6  00 28                                            cmp r0, #0
008b30e8  20 d1                                            bne #0x8b312c
008b30ea  28 68                                            ldr r0, [r5]
008b30ec  00 28                                            cmp r0, #0
008b30ee  2f d0                                            beq #0x8b3150
008b30f0  6b 7a                                            ldrb r3, [r5, #9]
008b30f2  00 2b                                            cmp r3, #0
008b30f4  2c d1                                            bne #0x8b3150
008b30f6  83 68                                            ldr r3, [r0, #8]
008b30f8  c2 68                                            ldr r2, [r0, #0xc]
008b30fa  93 42                                            cmp r3, r2
008b30fc  46 d2                                            bhs #0x8b318c
008b30fe  18 68                                            ldr r0, [r3]
008b3100  68 60                                            str r0, [r5, #4]
008b3102  01 30                                            adds r0, #1
008b3104  43 42                                            rsbs r3, r0, #0
008b3106  43 41                                            adcs r3, r0
008b3108  01 22                                            movs r2, #1
008b310a  2b 72                                            strb r3, [r5, #8]
008b310c  6a 72                                            strb r2, [r5, #9]
008b310e  20 e0                                            b #0x8b3152
008b3110  2b 7a                                            ldrb r3, [r5, #8]
008b3112  22 7a                                            ldrb r2, [r4, #8]
008b3114  9a 42                                            cmp r2, r3
008b3116  b7 d1                                            bne #0x8b3088
008b3118  08 9b                                            ldr r3, [sp, #0x20]
008b311a  01 2b                                            cmp r3, #1
008b311c  e0 d1                                            bne #0x8b30e0
008b311e  09 99                                            ldr r1, [sp, #0x24]
008b3120  00 23                                            movs r3, #0
008b3122  0b 60                                            str r3, [r1]
008b3124  3b 60                                            str r3, [r7]
008b3126  20 68                                            ldr r0, [r4]
008b3128  00 28                                            cmp r0, #0
008b312a  de d0                                            beq #0x8b30ea
008b312c  63 7a                                            ldrb r3, [r4, #9]
008b312e  00 2b                                            cmp r3, #0
008b3130  db d1                                            bne #0x8b30ea
008b3132  83 68                                            ldr r3, [r0, #8]
008b3134  c2 68                                            ldr r2, [r0, #0xc]
008b3136  93 42                                            cmp r3, r2
008b3138  30 d2                                            bhs #0x8b319c
008b313a  18 68                                            ldr r0, [r3]
008b313c  60 60                                            str r0, [r4, #4]
008b313e  01 30                                            adds r0, #1
008b3140  43 42                                            rsbs r3, r0, #0
008b3142  43 41                                            adcs r3, r0
008b3144  23 72                                            strb r3, [r4, #8]
008b3146  01 23                                            movs r3, #1
008b3148  63 72                                            strb r3, [r4, #9]
008b314a  28 68                                            ldr r0, [r5]
008b314c  00 28                                            cmp r0, #0
008b314e  cf d1                                            bne #0x8b30f0
008b3150  2b 7a                                            ldrb r3, [r5, #8]
008b3152  22 7a                                            ldrb r2, [r4, #8]
008b3154  9a 42                                            cmp r2, r3
008b3156  03 d1                                            bne #0x8b3160
008b3158  3a 68                                            ldr r2, [r7]
008b315a  02 23                                            movs r3, #2
008b315c  13 43                                            orrs r3, r2
008b315e  3b 60                                            str r3, [r7]
008b3160  21 1c                                            adds r1, r4, #0
008b3162  0a 22                                            movs r2, #0xa
008b3164  50 46                                            mov r0, sl
008b3166  5a f6 e8 e6                                      blx #0x30df38
008b316a  40 46                                            mov r0, r8
008b316c  f0 f7 c2 f9                                      bl #0x8a34f4
008b3170  59 46                                            mov r1, fp
008b3172  73 58                                            ldr r3, [r6, r1]
008b3174  15 9a                                            ldr r2, [sp, #0x54]
008b3176  50 46                                            mov r0, sl
008b3178  1b 68                                            ldr r3, [r3]
008b317a  9a 42                                            cmp r2, r3
008b317c  16 d1                                            bne #0x8b31ac
008b317e  17 b0                                            add sp, #0x5c
008b3180  3c bc                                            pop {r2, r3, r4, r5}
008b3182  90 46                                            mov r8, r2
008b3184  99 46                                            mov sb, r3
008b3186  a2 46                                            mov sl, r4
008b3188  ab 46                                            mov fp, r5
008b318a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b318c  03 68                                            ldr r3, [r0]
008b318e  1b 6a                                            ldr r3, [r3, #0x20]
008b3190  98 47                                            blx r3
008b3192  b5 e7                                            b #0x8b3100
008b3194  03 68                                            ldr r3, [r0]
008b3196  1b 6a                                            ldr r3, [r3, #0x20]
008b3198  98 47                                            blx r3
008b319a  6b e7                                            b #0x8b3074
008b319c  03 68                                            ldr r3, [r0]
008b319e  1b 6a                                            ldr r3, [r3, #0x20]
008b31a0  98 47                                            blx r3
008b31a2  cb e7                                            b #0x8b313c
008b31a4  03 68                                            ldr r3, [r0]
008b31a6  1b 6a                                            ldr r3, [r3, #0x20]
008b31a8  98 47                                            blx r3
008b31aa  50 e7                                            b #0x8b304e
008b31ac  5b f6 b0 e0                                      blx #0x30e310
; mapping-symbol data/literal pool
008b31b0  a6 1a 0e 00 ac 40 00 00 44 1e 00 00 58 19 00 00  .byte 0xa6, 0x1a, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00, 0x58, 0x19, 0x00, 0x00
