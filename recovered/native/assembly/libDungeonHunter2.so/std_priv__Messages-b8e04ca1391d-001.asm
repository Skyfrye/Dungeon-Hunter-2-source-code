; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bcb9c, declared_size=30, range_size=30, mode=thumb
; class-group: std::priv::_Messages
; alias: _ZNSt4priv9_MessagesC1EbP16_Locale_messages
; demangled: std::priv::_Messages::_Messages(bool, _Locale_messages*)
; decoder-mode: thumb
008bcb9c  10 b5                                            push {r4, lr}
008bcb9e  04 1c                                            adds r4, r0, #0
008bcba0  02 60                                            str r2, [r0]
008bcba2  00 20                                            movs r0, #0
008bcba4  00 29                                            cmp r1, #0
008bcba6  02 d1                                            bne #0x8bcbae
008bcba8  60 60                                            str r0, [r4, #4]
008bcbaa  20 1c                                            adds r0, r4, #0
008bcbac  10 bd                                            pop {r4, pc}
008bcbae  04 20                                            movs r0, #4
008bcbb0  51 f6 6c e6                                      blx #0x30e88c
008bcbb4  00 23                                            movs r3, #0
008bcbb6  03 60                                            str r3, [r0]
008bcbb8  f6 e7                                            b #0x8bcba8

; FUNCTION 0x008bcbbc, declared_size=30, range_size=30, mode=thumb
; class-group: std::priv::_Messages
; alias: _ZNSt4priv9_MessagesC2EbP16_Locale_messages
; demangled: std::priv::_Messages::_Messages(bool, _Locale_messages*)
; decoder-mode: thumb
008bcbbc  10 b5                                            push {r4, lr}
008bcbbe  04 1c                                            adds r4, r0, #0
008bcbc0  02 60                                            str r2, [r0]
008bcbc2  00 20                                            movs r0, #0
008bcbc4  00 29                                            cmp r1, #0
008bcbc6  02 d1                                            bne #0x8bcbce
008bcbc8  60 60                                            str r0, [r4, #4]
008bcbca  20 1c                                            adds r0, r4, #0
008bcbcc  10 bd                                            pop {r4, pc}
008bcbce  04 20                                            movs r0, #4
008bcbd0  51 f6 5c e6                                      blx #0x30e88c
008bcbd4  00 23                                            movs r3, #0
008bcbd6  03 60                                            str r3, [r0]
008bcbd8  f6 e7                                            b #0x8bcbc8

; FUNCTION 0x008bcd6c, declared_size=120, range_size=120, mode=thumb
; class-group: std::priv::_Messages
; alias: _ZNSt4priv9_MessagesC1EbPKc
; demangled: std::priv::_Messages::_Messages(bool, char const*)
; decoder-mode: thumb
008bcd6c  f0 b5                                            push {r4, r5, r6, r7, lr}
008bcd6e  1a 4c                                            ldr r4, [pc, #0x68]
008bcd70  1a 4e                                            ldr r6, [pc, #0x68]
008bcd72  c5 b0                                            sub sp, #0x114
008bcd74  7c 44                                            add r4, pc
008bcd76  a3 59                                            ldr r3, [r4, r6]
008bcd78  01 92                                            str r2, [sp, #4]
008bcd7a  05 1c                                            adds r5, r0, #0
008bcd7c  1b 68                                            ldr r3, [r3]
008bcd7e  0f 1c                                            adds r7, r1, #0
008bcd80  43 93                                            str r3, [sp, #0x10c]
008bcd82  00 23                                            movs r3, #0
008bcd84  03 60                                            str r3, [r0]
008bcd86  43 60                                            str r3, [r0, #4]
008bcd88  13 1e                                            subs r3, r2, #0
008bcd8a  1f d0                                            beq #0x8bcdcc
008bcd8c  01 a8                                            add r0, sp, #4
008bcd8e  03 a9                                            add r1, sp, #0xc
008bcd90  00 22                                            movs r2, #0
008bcd92  02 ab                                            add r3, sp, #8
008bcd94  f7 f7 ac f9                                      bl #0x8b40f0
008bcd98  28 60                                            str r0, [r5]
008bcd9a  00 28                                            cmp r0, #0
008bcd9c  0f d0                                            beq #0x8bcdbe
008bcd9e  00 2f                                            cmp r7, #0
008bcda0  05 d0                                            beq #0x8bcdae
008bcda2  04 20                                            movs r0, #4
008bcda4  51 f6 72 e5                                      blx #0x30e88c
008bcda8  00 23                                            movs r3, #0
008bcdaa  03 60                                            str r3, [r0]
008bcdac  68 60                                            str r0, [r5, #4]
008bcdae  a3 59                                            ldr r3, [r4, r6]
008bcdb0  43 9a                                            ldr r2, [sp, #0x10c]
008bcdb2  28 1c                                            adds r0, r5, #0
008bcdb4  1b 68                                            ldr r3, [r3]
008bcdb6  9a 42                                            cmp r2, r3
008bcdb8  0b d1                                            bne #0x8bcdd2
008bcdba  45 b0                                            add sp, #0x114
008bcdbc  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bcdbe  08 4a                                            ldr r2, [pc, #0x20]
008bcdc0  02 98                                            ldr r0, [sp, #8]
008bcdc2  01 99                                            ldr r1, [sp, #4]
008bcdc4  7a 44                                            add r2, pc
008bcdc6  e7 f7 03 fd                                      bl #0x8a47d0
008bcdca  e8 e7                                            b #0x8bcd9e
008bcdcc  e6 f7 78 fb                                      bl #0x8a34c0
008bcdd0  dc e7                                            b #0x8bcd8c
008bcdd2  51 f6 9e e2                                      blx #0x30e310
008bcdd6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bcdd8  20 7d 0d 00 ac 40 00 00 8c a6 05 00              .byte 0x20, 0x7d, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x8c, 0xa6, 0x05, 0x00

; FUNCTION 0x008bcec4, declared_size=120, range_size=120, mode=thumb
; class-group: std::priv::_Messages
; alias: _ZNSt4priv9_MessagesC2EbPKc
; demangled: std::priv::_Messages::_Messages(bool, char const*)
; decoder-mode: thumb
008bcec4  f0 b5                                            push {r4, r5, r6, r7, lr}
008bcec6  1a 4c                                            ldr r4, [pc, #0x68]
008bcec8  1a 4e                                            ldr r6, [pc, #0x68]
008bceca  c5 b0                                            sub sp, #0x114
008bcecc  7c 44                                            add r4, pc
008bcece  a3 59                                            ldr r3, [r4, r6]
008bced0  01 92                                            str r2, [sp, #4]
008bced2  05 1c                                            adds r5, r0, #0
008bced4  1b 68                                            ldr r3, [r3]
008bced6  0f 1c                                            adds r7, r1, #0
008bced8  43 93                                            str r3, [sp, #0x10c]
008bceda  00 23                                            movs r3, #0
008bcedc  03 60                                            str r3, [r0]
008bcede  43 60                                            str r3, [r0, #4]
008bcee0  13 1e                                            subs r3, r2, #0
008bcee2  1f d0                                            beq #0x8bcf24
008bcee4  01 a8                                            add r0, sp, #4
008bcee6  03 a9                                            add r1, sp, #0xc
008bcee8  00 22                                            movs r2, #0
008bceea  02 ab                                            add r3, sp, #8
008bceec  f7 f7 00 f9                                      bl #0x8b40f0
008bcef0  28 60                                            str r0, [r5]
008bcef2  00 28                                            cmp r0, #0
008bcef4  0f d0                                            beq #0x8bcf16
008bcef6  00 2f                                            cmp r7, #0
008bcef8  05 d0                                            beq #0x8bcf06
008bcefa  04 20                                            movs r0, #4
008bcefc  51 f6 c6 e4                                      blx #0x30e88c
008bcf00  00 23                                            movs r3, #0
008bcf02  03 60                                            str r3, [r0]
008bcf04  68 60                                            str r0, [r5, #4]
008bcf06  a3 59                                            ldr r3, [r4, r6]
008bcf08  43 9a                                            ldr r2, [sp, #0x10c]
008bcf0a  28 1c                                            adds r0, r5, #0
008bcf0c  1b 68                                            ldr r3, [r3]
008bcf0e  9a 42                                            cmp r2, r3
008bcf10  0b d1                                            bne #0x8bcf2a
008bcf12  45 b0                                            add sp, #0x114
008bcf14  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bcf16  08 4a                                            ldr r2, [pc, #0x20]
008bcf18  02 98                                            ldr r0, [sp, #8]
008bcf1a  01 99                                            ldr r1, [sp, #4]
008bcf1c  7a 44                                            add r2, pc
008bcf1e  e7 f7 57 fc                                      bl #0x8a47d0
008bcf22  e8 e7                                            b #0x8bcef6
008bcf24  e6 f7 cc fa                                      bl #0x8a34c0
008bcf28  dc e7                                            b #0x8bcee4
008bcf2a  51 f6 f2 e1                                      blx #0x30e310
008bcf2e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bcf30  c8 7b 0d 00 ac 40 00 00 34 a5 05 00              .byte 0xc8, 0x7b, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0xa5, 0x05, 0x00

; FUNCTION 0x008bd178, declared_size=264, range_size=264, mode=thumb
; class-group: std::priv::_Messages
; alias: _ZNKSt4priv9_Messages6do_getEiiiRKSbIwSt11char_traitsIwESaIwEE
; demangled: std::priv::_Messages::do_get(int, int, int, std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > const&) const
; decoder-mode: thumb
008bd178  f0 b5                                            push {r4, r5, r6, r7, lr}
008bd17a  5f 46                                            mov r7, fp
008bd17c  56 46                                            mov r6, sl
008bd17e  4d 46                                            mov r5, sb
008bd180  44 46                                            mov r4, r8
008bd182  f0 b4                                            push {r4, r5, r6, r7}
008bd184  97 b0                                            sub sp, #0x5c
008bd186  0c 1c                                            adds r4, r1, #0
008bd188  20 99                                            ldr r1, [sp, #0x80]
008bd18a  9a 46                                            mov sl, r3
008bd18c  15 ab                                            add r3, sp, #0x54
008bd18e  8b 46                                            mov fp, r1
008bd190  37 4e                                            ldr r6, [pc, #0xdc]
008bd192  61 68                                            ldr r1, [r4, #4]
008bd194  05 1c                                            adds r5, r0, #0
008bd196  18 1c                                            adds r0, r3, #0
008bd198  91 46                                            mov sb, r2
008bd19a  98 46                                            mov r8, r3
008bd19c  ff f7 ce fe                                      bl #0x8bcf3c
008bd1a0  34 4b                                            ldr r3, [pc, #0xd0]
008bd1a2  7e 44                                            add r6, pc
008bd1a4  40 46                                            mov r0, r8
008bd1a6  f1 58                                            ldr r1, [r6, r3]
008bd1a8  e6 f7 02 fa                                      bl #0x8a35b0
008bd1ac  07 1c                                            adds r7, r0, #0
008bd1ae  40 46                                            mov r0, r8
008bd1b0  e6 f7 a0 f9                                      bl #0x8a34f4
008bd1b4  30 4b                                            ldr r3, [pc, #0xc0]
008bd1b6  20 68                                            ldr r0, [r4]
008bd1b8  49 46                                            mov r1, sb
008bd1ba  7b 44                                            add r3, pc
008bd1bc  00 93                                            str r3, [sp]
008bd1be  52 46                                            mov r2, sl
008bd1c0  5b 46                                            mov r3, fp
008bd1c2  f9 f7 43 fd                                      bl #0x8b6c4c
008bd1c6  06 1e                                            subs r6, r0, #0
008bd1c8  49 d0                                            beq #0x8bd25e
008bd1ca  33 78                                            ldrb r3, [r6]
008bd1cc  00 2b                                            cmp r3, #0
008bd1ce  35 d0                                            beq #0x8bd23c
008bd1d0  30 1c                                            adds r0, r6, #0
008bd1d2  50 f6 40 e6                                      blx #0x30de54
008bd1d6  03 ac                                            add r4, sp, #0xc
008bd1d8  01 1c                                            adds r1, r0, #0
008bd1da  80 46                                            mov r8, r0
008bd1dc  01 31                                            adds r1, #1
008bd1de  20 1c                                            adds r0, r4, #0
008bd1e0  24 64                                            str r4, [r4, #0x40]
008bd1e2  64 64                                            str r4, [r4, #0x44]
008bd1e4  e9 f7 0e fd                                      bl #0x8a6c04
008bd1e8  62 6c                                            ldr r2, [r4, #0x44]
008bd1ea  41 46                                            mov r1, r8
008bd1ec  8b 00                                            lsls r3, r1, #2
008bd1ee  d0 18                                            adds r0, r2, r3
008bd1f0  9b 10                                            asrs r3, r3, #2
008bd1f2  00 2b                                            cmp r3, #0
008bd1f4  04 dd                                            ble #0x8bd200
008bd1f6  00 21                                            movs r1, #0
008bd1f8  01 3b                                            subs r3, #1
008bd1fa  02 c2                                            stm r2!, {r1}
008bd1fc  00 2b                                            cmp r3, #0
008bd1fe  fb d1                                            bne #0x8bd1f8
008bd200  00 23                                            movs r3, #0
008bd202  20 64                                            str r0, [r4, #0x40]
008bd204  03 60                                            str r3, [r0]
008bd206  39 68                                            ldr r1, [r7]
008bd208  43 46                                            mov r3, r8
008bd20a  f2 18                                            adds r2, r6, r3
008bd20c  c9 6a                                            ldr r1, [r1, #0x2c]
008bd20e  63 6c                                            ldr r3, [r4, #0x44]
008bd210  38 1c                                            adds r0, r7, #0
008bd212  8c 46                                            mov ip, r1
008bd214  31 1c                                            adds r1, r6, #0
008bd216  e0 47                                            blx ip
008bd218  2d 64                                            str r5, [r5, #0x40]
008bd21a  6d 64                                            str r5, [r5, #0x44]
008bd21c  28 1c                                            adds r0, r5, #0
008bd21e  61 6c                                            ldr r1, [r4, #0x44]
008bd220  22 6c                                            ldr r2, [r4, #0x40]
008bd222  f8 f7 b3 fe                                      bl #0x8b5f8c
008bd226  20 1c                                            adds r0, r4, #0
008bd228  5c f6 c2 e0                                      blx #0x3193b0
008bd22c  17 b0                                            add sp, #0x5c
008bd22e  28 1c                                            adds r0, r5, #0
008bd230  3c bc                                            pop {r2, r3, r4, r5}
008bd232  90 46                                            mov r8, r2
008bd234  99 46                                            mov sb, r3
008bd236  a2 46                                            mov sl, r4
008bd238  ab 46                                            mov fp, r5
008bd23a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bd23c  0f 4b                                            ldr r3, [pc, #0x3c]
008bd23e  20 68                                            ldr r0, [r4]
008bd240  49 46                                            mov r1, sb
008bd242  7b 44                                            add r3, pc
008bd244  00 93                                            str r3, [sp]
008bd246  52 46                                            mov r2, sl
008bd248  5b 46                                            mov r3, fp
008bd24a  f9 f7 ff fc                                      bl #0x8b6c4c
008bd24e  00 28                                            cmp r0, #0
008bd250  05 d0                                            beq #0x8bd25e
008bd252  03 78                                            ldrb r3, [r0]
008bd254  2a 2b                                            cmp r3, #0x2a
008bd256  bb d1                                            bne #0x8bd1d0
008bd258  43 78                                            ldrb r3, [r0, #1]
008bd25a  00 2b                                            cmp r3, #0
008bd25c  b8 d1                                            bne #0x8bd1d0
008bd25e  21 9b                                            ldr r3, [sp, #0x84]
008bd260  2d 64                                            str r5, [r5, #0x40]
008bd262  6d 64                                            str r5, [r5, #0x44]
008bd264  59 6c                                            ldr r1, [r3, #0x44]
008bd266  1a 6c                                            ldr r2, [r3, #0x40]
008bd268  28 1c                                            adds r0, r5, #0
008bd26a  f8 f7 8f fe                                      bl #0x8b5f8c
008bd26e  dd e7                                            b #0x8bd22c
; mapping-symbol data/literal pool
008bd270  f2 78 0d 00 44 1e 00 00 5a 86 05 00 b2 85 05 00  .byte 0xf2, 0x78, 0x0d, 0x00, 0x44, 0x1e, 0x00, 0x00, 0x5a, 0x86, 0x05, 0x00, 0xb2, 0x85, 0x05, 0x00

; FUNCTION 0x008bd2fc, declared_size=44, range_size=44, mode=thumb
; class-group: std::priv::_Messages
; alias: _ZNSt4priv9_MessagesD2Ev
; demangled: std::priv::_Messages::~_Messages()
; decoder-mode: thumb
008bd2fc  70 b5                                            push {r4, r5, r6, lr}
008bd2fe  04 1c                                            adds r4, r0, #0
008bd300  00 68                                            ldr r0, [r0]
008bd302  f6 f7 d7 fc                                      bl #0x8b3cb4
008bd306  65 68                                            ldr r5, [r4, #4]
008bd308  00 2d                                            cmp r5, #0
008bd30a  0b d0                                            beq #0x8bd324
008bd30c  2e 68                                            ldr r6, [r5]
008bd30e  00 2e                                            cmp r6, #0
008bd310  05 d0                                            beq #0x8bd31e
008bd312  30 1c                                            adds r0, r6, #0
008bd314  ff f7 d8 ff                                      bl #0x8bd2c8
008bd318  30 1c                                            adds r0, r6, #0
008bd31a  50 f6 ca e7                                      blx #0x30e2b0
008bd31e  28 1c                                            adds r0, r5, #0
008bd320  50 f6 c6 e7                                      blx #0x30e2b0
008bd324  20 1c                                            adds r0, r4, #0
008bd326  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008bd328, declared_size=44, range_size=44, mode=thumb
; class-group: std::priv::_Messages
; alias: _ZNSt4priv9_MessagesD1Ev
; demangled: std::priv::_Messages::~_Messages()
; decoder-mode: thumb
008bd328  70 b5                                            push {r4, r5, r6, lr}
008bd32a  04 1c                                            adds r4, r0, #0
008bd32c  00 68                                            ldr r0, [r0]
008bd32e  f6 f7 c1 fc                                      bl #0x8b3cb4
008bd332  65 68                                            ldr r5, [r4, #4]
008bd334  00 2d                                            cmp r5, #0
008bd336  0b d0                                            beq #0x8bd350
008bd338  2e 68                                            ldr r6, [r5]
008bd33a  00 2e                                            cmp r6, #0
008bd33c  05 d0                                            beq #0x8bd34a
008bd33e  30 1c                                            adds r0, r6, #0
008bd340  ff f7 c2 ff                                      bl #0x8bd2c8
008bd344  30 1c                                            adds r0, r6, #0
008bd346  50 f6 b4 e7                                      blx #0x30e2b0
008bd34a  28 1c                                            adds r0, r5, #0
008bd34c  50 f6 b0 e7                                      blx #0x30e2b0
008bd350  20 1c                                            adds r0, r4, #0
008bd352  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008bd7d0, declared_size=30, range_size=30, mode=thumb
; class-group: std::priv::_Messages
; alias: _ZNKSt4priv9_Messages8do_closeEi
; demangled: std::priv::_Messages::do_close(int) const
; decoder-mode: thumb
008bd7d0  70 b5                                            push {r4, r5, r6, lr}
008bd7d2  04 1c                                            adds r4, r0, #0
008bd7d4  00 68                                            ldr r0, [r0]
008bd7d6  0d 1c                                            adds r5, r1, #0
008bd7d8  00 28                                            cmp r0, #0
008bd7da  01 d0                                            beq #0x8bd7e0
008bd7dc  f9 f7 34 fa                                      bl #0x8b6c48
008bd7e0  60 68                                            ldr r0, [r4, #4]
008bd7e2  00 28                                            cmp r0, #0
008bd7e4  02 d0                                            beq #0x8bd7ec
008bd7e6  29 1c                                            adds r1, r5, #0
008bd7e8  ff f7 e6 ff                                      bl #0x8bd7b8
008bd7ec  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008bd91c, declared_size=48, range_size=48, mode=thumb
; class-group: std::priv::_Messages
; alias: _ZNKSt4priv9_Messages7do_openERKSsRKSt6locale
; demangled: std::priv::_Messages::do_open(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::locale const&) const
; decoder-mode: thumb
008bd91c  70 b5                                            push {r4, r5, r6, lr}
008bd91e  05 1c                                            adds r5, r0, #0
008bd920  00 68                                            ldr r0, [r0]
008bd922  16 1c                                            adds r6, r2, #0
008bd924  00 28                                            cmp r0, #0
008bd926  0e d0                                            beq #0x8bd946
008bd928  49 69                                            ldr r1, [r1, #0x14]
008bd92a  f9 f7 89 f9                                      bl #0x8b6c40
008bd92e  04 1c                                            adds r4, r0, #0
008bd930  43 1c                                            adds r3, r0, #1
008bd932  06 d0                                            beq #0x8bd942
008bd934  68 68                                            ldr r0, [r5, #4]
008bd936  00 28                                            cmp r0, #0
008bd938  03 d0                                            beq #0x8bd942
008bd93a  21 1c                                            adds r1, r4, #0
008bd93c  32 1c                                            adds r2, r6, #0
008bd93e  ff f7 9f ff                                      bl #0x8bd880
008bd942  20 1c                                            adds r0, r4, #0
008bd944  70 bd                                            pop {r4, r5, r6, pc}
008bd946  01 24                                            movs r4, #1
008bd948  64 42                                            rsbs r4, r4, #0
008bd94a  fa e7                                            b #0x8bd942

; FUNCTION 0x008bd97c, declared_size=74, range_size=74, mode=thumb
; class-group: std::priv::_Messages
; alias: _ZNKSt4priv9_Messages6do_getEiiiRKSs
; demangled: std::priv::_Messages::do_get(int, int, int, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: thumb
008bd97c  30 b5                                            push {r4, r5, lr}
008bd97e  83 b0                                            sub sp, #0xc
008bd980  04 1c                                            adds r4, r0, #0
008bd982  07 9d                                            ldr r5, [sp, #0x1c]
008bd984  08 68                                            ldr r0, [r1]
008bd986  00 2a                                            cmp r2, #0
008bd988  15 db                                            blt #0x8bd9b6
008bd98a  00 28                                            cmp r0, #0
008bd98c  13 d0                                            beq #0x8bd9b6
008bd98e  69 69                                            ldr r1, [r5, #0x14]
008bd990  00 91                                            str r1, [sp]
008bd992  11 1c                                            adds r1, r2, #0
008bd994  1a 1c                                            adds r2, r3, #0
008bd996  06 9b                                            ldr r3, [sp, #0x18]
008bd998  f9 f7 58 f9                                      bl #0x8b6c4c
008bd99c  24 61                                            str r4, [r4, #0x10]
008bd99e  64 61                                            str r4, [r4, #0x14]
008bd9a0  05 1c                                            adds r5, r0, #0
008bd9a2  50 f6 58 e2                                      blx #0x30de54
008bd9a6  29 1c                                            adds r1, r5, #0
008bd9a8  2a 18                                            adds r2, r5, r0
008bd9aa  20 1c                                            adds r0, r4, #0
008bd9ac  53 f6 9c e6                                      blx #0x3116e8
008bd9b0  03 b0                                            add sp, #0xc
008bd9b2  20 1c                                            adds r0, r4, #0
008bd9b4  30 bd                                            pop {r4, r5, pc}
008bd9b6  24 61                                            str r4, [r4, #0x10]
008bd9b8  64 61                                            str r4, [r4, #0x14]
008bd9ba  69 69                                            ldr r1, [r5, #0x14]
008bd9bc  2a 69                                            ldr r2, [r5, #0x10]
008bd9be  20 1c                                            adds r0, r4, #0
008bd9c0  53 f6 92 e6                                      blx #0x3116e8
008bd9c4  f4 e7                                            b #0x8bd9b0
