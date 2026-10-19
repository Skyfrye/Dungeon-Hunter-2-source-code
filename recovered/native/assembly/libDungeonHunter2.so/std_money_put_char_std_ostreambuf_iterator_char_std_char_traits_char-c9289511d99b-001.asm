; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4ea4, declared_size=32, range_size=32, mode=thumb
; class-group: std::money_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED1Ev
; demangled: std::money_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::~money_put()
; decoder-mode: thumb
008a4ea4  10 b5                                            push {r4, lr}
008a4ea6  05 4b                                            ldr r3, [pc, #0x14]
008a4ea8  05 4a                                            ldr r2, [pc, #0x14]
008a4eaa  04 1c                                            adds r4, r0, #0
008a4eac  7b 44                                            add r3, pc
008a4eae  9a 58                                            ldr r2, [r3, r2]
008a4eb0  08 32                                            adds r2, #8
008a4eb2  02 60                                            str r2, [r0]
008a4eb4  fe f7 22 fd                                      bl #0x8a38fc
008a4eb8  20 1c                                            adds r0, r4, #0
008a4eba  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a4ebc  e8 fb 0e 00 c4 05 00 00                          .byte 0xe8, 0xfb, 0x0e, 0x00, 0xc4, 0x05, 0x00, 0x00

; FUNCTION 0x008a5340, declared_size=40, range_size=40, mode=thumb
; class-group: std::money_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED0Ev
; demangled: std::money_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::~money_put()
; decoder-mode: thumb
008a5340  10 b5                                            push {r4, lr}
008a5342  07 4b                                            ldr r3, [pc, #0x1c]
008a5344  07 4a                                            ldr r2, [pc, #0x1c]
008a5346  04 1c                                            adds r4, r0, #0
008a5348  7b 44                                            add r3, pc
008a534a  9a 58                                            ldr r2, [r3, r2]
008a534c  08 32                                            adds r2, #8
008a534e  02 60                                            str r2, [r0]
008a5350  fe f7 d4 fa                                      bl #0x8a38fc
008a5354  20 1c                                            adds r0, r4, #0
008a5356  68 f6 ac e7                                      blx #0x30e2b0
008a535a  20 1c                                            adds r0, r4, #0
008a535c  10 bd                                            pop {r4, pc}
008a535e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5360  4c f7 0e 00 c4 05 00 00                          .byte 0x4c, 0xf7, 0x0e, 0x00, 0xc4, 0x05, 0x00, 0x00

; FUNCTION 0x008ad0a0, declared_size=1856, range_size=1856, mode=thumb
; class-group: std::money_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basece
; demangled: std::money_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::do_put(std::ostreambuf_iterator<char, std::char_traits<char> >, bool, std::ios_base&, char, long double) const
; decoder-mode: thumb
008ad0a0  f0 b5                                            push {r4, r5, r6, r7, lr}
008ad0a2  5f 46                                            mov r7, fp
008ad0a4  56 46                                            mov r6, sl
008ad0a6  4d 46                                            mov r5, sb
008ad0a8  44 46                                            mov r4, r8
008ad0aa  f0 b4                                            push {r4, r5, r6, r7}
008ad0ac  d8 4c                                            ldr r4, [pc, #0x360]
008ad0ae  d9 49                                            ldr r1, [pc, #0x364]
008ad0b0  a5 44                                            add sp, r4
008ad0b2  79 44                                            add r1, pc
008ad0b4  07 91                                            str r1, [sp, #0x1c]
008ad0b6  1e a9                                            add r1, sp, #0x78
008ad0b8  4b 60                                            str r3, [r1, #4]
008ad0ba  b5 23                                            movs r3, #0xb5
008ad0bc  db 00                                            lsls r3, r3, #3
008ad0be  1e 92                                            str r2, [sp, #0x78]
008ad0c0  0f 90                                            str r0, [sp, #0x3c]
008ad0c2  6b 44                                            add r3, sp, r3
008ad0c4  1b 78                                            ldrb r3, [r3]
008ad0c6  d4 4a                                            ldr r2, [pc, #0x350]
008ad0c8  07 98                                            ldr r0, [sp, #0x1c]
008ad0ca  08 93                                            str r3, [sp, #0x20]
008ad0cc  b6 23                                            movs r3, #0xb6
008ad0ce  db 00                                            lsls r3, r3, #3
008ad0d0  6b 44                                            add r3, sp, r3
008ad0d2  1e 78                                            ldrb r6, [r3]
008ad0d4  d1 4b                                            ldr r3, [pc, #0x344]
008ad0d6  6a 44                                            add r2, sp, r2
008ad0d8  12 68                                            ldr r2, [r2]
008ad0da  11 93                                            str r3, [sp, #0x44]
008ad0dc  c3 58                                            ldr r3, [r0, r3]
008ad0de  92 46                                            mov sl, r2
008ad0e0  cf 4a                                            ldr r2, [pc, #0x33c]
008ad0e2  1b 68                                            ldr r3, [r3]
008ad0e4  89 a8                                            add r0, sp, #0x224
008ad0e6  6a 44                                            add r2, sp, r2
008ad0e8  13 60                                            str r3, [r2]
008ad0ea  84 23                                            movs r3, #0x84
008ad0ec  0c 79                                            ldrb r4, [r1, #4]
008ad0ee  9b 00                                            lsls r3, r3, #2
008ad0f0  86 21                                            movs r1, #0x86
008ad0f2  6b 44                                            add r3, sp, r3
008ad0f4  c9 00                                            lsls r1, r1, #3
008ad0f6  69 44                                            add r1, sp, r1
008ad0f8  ca 4a                                            ldr r2, [pc, #0x328]
008ad0fa  1b 61                                            str r3, [r3, #0x10]
008ad0fc  99 46                                            mov sb, r3
008ad0fe  1e 9d                                            ldr r5, [sp, #0x78]
008ad100  61 f6 b2 e3                                      blx #0x30e868
008ad104  8c 23                                            movs r3, #0x8c
008ad106  5b 00                                            lsls r3, r3, #1
008ad108  48 46                                            mov r0, sb
008ad10a  c0 50                                            str r0, [r0, r3]
008ad10c  f8 f7 e4 f8                                      bl #0x8a52d8
008ad110  49 46                                            mov r1, sb
008ad112  0b 69                                            ldr r3, [r1, #0x10]
008ad114  b7 21                                            movs r1, #0xb7
008ad116  00 22                                            movs r2, #0
008ad118  c9 00                                            lsls r1, r1, #3
008ad11a  69 44                                            add r1, sp, r1
008ad11c  1a 70                                            strb r2, [r3]
008ad11e  0a 68                                            ldr r2, [r1]
008ad120  4b 68                                            ldr r3, [r1, #4]
008ad122  48 46                                            mov r0, sb
008ad124  0d f0 56 ff                                      bl #0x8bafd4
008ad128  6b 46                                            mov r3, sp
008ad12a  34 aa                                            add r2, sp, #0xd0
008ad12c  f3 33                                            adds r3, #0xf3
008ad12e  68 46                                            mov r0, sp
008ad130  51 46                                            mov r1, sl
008ad132  14 71                                            strb r4, [r2, #4]
008ad134  1e 70                                            strb r6, [r3]
008ad136  ec 30                                            adds r0, #0xec
008ad138  20 31                                            adds r1, #0x20
008ad13a  90 46                                            mov r8, r2
008ad13c  34 95                                            str r5, [sp, #0xd0]
008ad13e  12 93                                            str r3, [sp, #0x48]
008ad140  06 90                                            str r0, [sp, #0x18]
008ad142  f6 f7 0d fa                                      bl #0x8a3560
008ad146  07 9a                                            ldr r2, [sp, #0x1c]
008ad148  b7 4b                                            ldr r3, [pc, #0x2dc]
008ad14a  06 98                                            ldr r0, [sp, #0x18]
008ad14c  d1 58                                            ldr r1, [r2, r3]
008ad14e  f6 f7 2f fa                                      bl #0x8a35b0
008ad152  b6 4b                                            ldr r3, [pc, #0x2d8]
008ad154  05 1c                                            adds r5, r0, #0
008ad156  07 98                                            ldr r0, [sp, #0x1c]
008ad158  c1 58                                            ldr r1, [r0, r3]
008ad15a  06 98                                            ldr r0, [sp, #0x18]
008ad15c  f6 f7 28 fa                                      bl #0x8a35b0
008ad160  07 9a                                            ldr r2, [sp, #0x1c]
008ad162  b3 4b                                            ldr r3, [pc, #0x2cc]
008ad164  04 1c                                            adds r4, r0, #0
008ad166  06 98                                            ldr r0, [sp, #0x18]
008ad168  d1 58                                            ldr r1, [r2, r3]
008ad16a  f6 f7 21 fa                                      bl #0x8a35b0
008ad16e  2b 68                                            ldr r3, [r5]
008ad170  2d 21                                            movs r1, #0x2d
008ad172  06 1c                                            adds r6, r0, #0
008ad174  9b 69                                            ldr r3, [r3, #0x18]
008ad176  28 1c                                            adds r0, r5, #0
008ad178  98 47                                            blx r3
008ad17a  0c 90                                            str r0, [sp, #0x30]
008ad17c  2b 68                                            ldr r3, [r5]
008ad17e  2b 21                                            movs r1, #0x2b
008ad180  28 1c                                            adds r0, r5, #0
008ad182  9b 69                                            ldr r3, [r3, #0x18]
008ad184  98 47                                            blx r3
008ad186  09 90                                            str r0, [sp, #0x24]
008ad188  2b 68                                            ldr r3, [r5]
008ad18a  20 21                                            movs r1, #0x20
008ad18c  28 1c                                            adds r0, r5, #0
008ad18e  9b 69                                            ldr r3, [r3, #0x18]
008ad190  98 47                                            blx r3
008ad192  17 90                                            str r0, [sp, #0x5c]
008ad194  2b 68                                            ldr r3, [r5]
008ad196  28 1c                                            adds r0, r5, #0
008ad198  30 21                                            movs r1, #0x30
008ad19a  9b 69                                            ldr r3, [r3, #0x18]
008ad19c  98 47                                            blx r3
008ad19e  08 9b                                            ldr r3, [sp, #0x20]
008ad1a0  13 90                                            str r0, [sp, #0x4c]
008ad1a2  00 2b                                            cmp r3, #0
008ad1a4  00 d1                                            bne #0x8ad1a8
008ad1a6  ed e0                                            b #0x8ad384
008ad1a8  33 68                                            ldr r3, [r6]
008ad1aa  30 1c                                            adds r0, r6, #0
008ad1ac  9b 68                                            ldr r3, [r3, #8]
008ad1ae  98 47                                            blx r3
008ad1b0  16 90                                            str r0, [sp, #0x58]
008ad1b2  33 68                                            ldr r3, [r6]
008ad1b4  30 1c                                            adds r0, r6, #0
008ad1b6  db 68                                            ldr r3, [r3, #0xc]
008ad1b8  98 47                                            blx r3
008ad1ba  10 90                                            str r0, [sp, #0x40]
008ad1bc  33 68                                            ldr r3, [r6]
008ad1be  9d 48                                            ldr r0, [pc, #0x274]
008ad1c0  31 1c                                            adds r1, r6, #0
008ad1c2  1b 69                                            ldr r3, [r3, #0x10]
008ad1c4  68 44                                            add r0, sp, r0
008ad1c6  83 46                                            mov fp, r0
008ad1c8  98 47                                            blx r3
008ad1ca  33 68                                            ldr r3, [r6]
008ad1cc  30 1c                                            adds r0, r6, #0
008ad1ce  1b 6a                                            ldr r3, [r3, #0x20]
008ad1d0  98 47                                            blx r3
008ad1d2  99 49                                            ldr r1, [pc, #0x264]
008ad1d4  0d 90                                            str r0, [sp, #0x34]
008ad1d6  69 44                                            add r1, sp, r1
008ad1d8  0e 91                                            str r1, [sp, #0x38]
008ad1da  33 68                                            ldr r3, [r6]
008ad1dc  08 1c                                            adds r0, r1, #0
008ad1de  31 1c                                            adds r1, r6, #0
008ad1e0  5b 69                                            ldr r3, [r3, #0x14]
008ad1e2  98 47                                            blx r3
008ad1e4  8c 23                                            movs r3, #0x8c
008ad1e6  48 46                                            mov r0, sb
008ad1e8  5b 00                                            lsls r3, r3, #1
008ad1ea  c3 58                                            ldr r3, [r0, r3]
008ad1ec  01 69                                            ldr r1, [r0, #0x10]
008ad1ee  05 93                                            str r3, [sp, #0x14]
008ad1f0  0b 91                                            str r1, [sp, #0x2c]
008ad1f2  8b 42                                            cmp r3, r1
008ad1f4  00 d1                                            bne #0x8ad1f8
008ad1f6  c1 e2                                            b #0x8ad77c
008ad1f8  05 99                                            ldr r1, [sp, #0x14]
008ad1fa  0c 9a                                            ldr r2, [sp, #0x30]
008ad1fc  0b 78                                            ldrb r3, [r1]
008ad1fe  9b 1a                                            subs r3, r3, r2
008ad200  58 42                                            rsbs r0, r3, #0
008ad202  58 41                                            adcs r0, r3
008ad204  09 18                                            adds r1, r1, r0
008ad206  05 91                                            str r1, [sp, #0x14]
008ad208  08 99                                            ldr r1, [sp, #0x20]
008ad20a  0a 90                                            str r0, [sp, #0x28]
008ad20c  00 29                                            cmp r1, #0
008ad20e  00 d0                                            beq #0x8ad212
008ad210  d8 e0                                            b #0x8ad3c4
008ad212  0a 9a                                            ldr r2, [sp, #0x28]
008ad214  00 2a                                            cmp r2, #0
008ad216  00 d1                                            bne #0x8ad21a
008ad218  72 e2                                            b #0x8ad700
008ad21a  88 4f                                            ldr r7, [pc, #0x220]
008ad21c  23 68                                            ldr r3, [r4]
008ad21e  21 1c                                            adds r1, r4, #0
008ad220  6f 44                                            add r7, sp, r7
008ad222  db 69                                            ldr r3, [r3, #0x1c]
008ad224  38 1c                                            adds r0, r7, #0
008ad226  98 47                                            blx r3
008ad228  3d ad                                            add r5, sp, #0xf4
008ad22a  cb a9                                            add r1, sp, #0x32c
008ad22c  7d 4a                                            ldr r2, [pc, #0x1f4]
008ad22e  2d 61                                            str r5, [r5, #0x10]
008ad230  42 a8                                            add r0, sp, #0x108
008ad232  61 f6 1a e3                                      blx #0x30e868
008ad236  8c 23                                            movs r3, #0x8c
008ad238  5b 00                                            lsls r3, r3, #1
008ad23a  ed 50                                            str r5, [r5, r3]
008ad23c  28 1c                                            adds r0, r5, #0
008ad23e  04 93                                            str r3, [sp, #0x10]
008ad240  f8 f7 4a f8                                      bl #0x8a52d8
008ad244  2b 69                                            ldr r3, [r5, #0x10]
008ad246  00 20                                            movs r0, #0
008ad248  59 46                                            mov r1, fp
008ad24a  18 70                                            strb r0, [r3]
008ad24c  4a 69                                            ldr r2, [r1, #0x14]
008ad24e  0b 69                                            ldr r3, [r1, #0x10]
008ad250  9a 42                                            cmp r2, r3
008ad252  1b d0                                            beq #0x8ad28c
008ad254  05 99                                            ldr r1, [sp, #0x14]
008ad256  0b 9a                                            ldr r2, [sp, #0x2c]
008ad258  3c ab                                            add r3, sp, #0xf0
008ad25a  28 1c                                            adds r0, r5, #0
008ad25c  f8 f7 8a fc                                      bl #0x8a5b74
008ad260  04 9a                                            ldr r2, [sp, #0x10]
008ad262  2b 69                                            ldr r3, [r5, #0x10]
008ad264  09 98                                            ldr r0, [sp, #0x24]
008ad266  a9 58                                            ldr r1, [r5, r2]
008ad268  0c 9a                                            ldr r2, [sp, #0x30]
008ad26a  00 90                                            str r0, [sp]
008ad26c  59 1a                                            subs r1, r3, r1
008ad26e  0d 9b                                            ldr r3, [sp, #0x34]
008ad270  01 92                                            str r2, [sp, #4]
008ad272  28 1c                                            adds r0, r5, #0
008ad274  c9 1a                                            subs r1, r1, r3
008ad276  00 23                                            movs r3, #0
008ad278  02 93                                            str r3, [sp, #8]
008ad27a  5a 46                                            mov r2, fp
008ad27c  10 9b                                            ldr r3, [sp, #0x40]
008ad27e  0c f0 49 fe                                      bl #0x8b9f14
008ad282  04 98                                            ldr r0, [sp, #0x10]
008ad284  29 69                                            ldr r1, [r5, #0x10]
008ad286  28 58                                            ldr r0, [r5, r0]
008ad288  0b 91                                            str r1, [sp, #0x2c]
008ad28a  05 90                                            str r0, [sp, #0x14]
008ad28c  05 98                                            ldr r0, [sp, #0x14]
008ad28e  52 46                                            mov r2, sl
008ad290  0b 9b                                            ldr r3, [sp, #0x2c]
008ad292  d2 69                                            ldr r2, [r2, #0x1c]
008ad294  1b 1a                                            subs r3, r3, r0
008ad296  0c 93                                            str r3, [sp, #0x30]
008ad298  09 92                                            str r2, [sp, #0x24]
008ad29a  7b 69                                            ldr r3, [r7, #0x14]
008ad29c  3a 69                                            ldr r2, [r7, #0x10]
008ad29e  0c 99                                            ldr r1, [sp, #0x30]
008ad2a0  50 46                                            mov r0, sl
008ad2a2  d3 1a                                            subs r3, r2, r3
008ad2a4  cb 18                                            adds r3, r1, r3
008ad2a6  04 93                                            str r3, [sp, #0x10]
008ad2a8  0d 9b                                            ldr r3, [sp, #0x34]
008ad2aa  5a 1e                                            subs r2, r3, #1
008ad2ac  93 41                                            sbcs r3, r2
008ad2ae  04 9a                                            ldr r2, [sp, #0x10]
008ad2b0  d2 18                                            adds r2, r2, r3
008ad2b2  04 92                                            str r2, [sp, #0x10]
008ad2b4  43 68                                            ldr r3, [r0, #4]
008ad2b6  9b 05                                            lsls r3, r3, #0x16
008ad2b8  db 0f                                            lsrs r3, r3, #0x1f
008ad2ba  10 93                                            str r3, [sp, #0x40]
008ad2bc  00 2b                                            cmp r3, #0
008ad2be  06 d0                                            beq #0x8ad2ce
008ad2c0  0e 99                                            ldr r1, [sp, #0x38]
008ad2c2  0a 69                                            ldr r2, [r1, #0x10]
008ad2c4  4b 69                                            ldr r3, [r1, #0x14]
008ad2c6  d3 1a                                            subs r3, r2, r3
008ad2c8  04 9a                                            ldr r2, [sp, #0x10]
008ad2ca  d2 18                                            adds r2, r2, r3
008ad2cc  04 92                                            str r2, [sp, #0x10]
008ad2ce  08 9b                                            ldr r3, [sp, #0x20]
008ad2d0  00 2b                                            cmp r3, #0
008ad2d2  00 d1                                            bne #0x8ad2d6
008ad2d4  af e1                                            b #0x8ad636
008ad2d6  0a 98                                            ldr r0, [sp, #0x28]
008ad2d8  00 28                                            cmp r0, #0
008ad2da  00 d1                                            bne #0x8ad2de
008ad2dc  fd e1                                            b #0x8ad6da
008ad2de  33 68                                            ldr r3, [r6]
008ad2e0  30 1c                                            adds r0, r6, #0
008ad2e2  9b 6a                                            ldr r3, [r3, #0x28]
008ad2e4  98 47                                            blx r3
008ad2e6  1c ab                                            add r3, sp, #0x70
008ad2e8  18 70                                            strb r0, [r3]
008ad2ea  02 0a                                            lsrs r2, r0, #8
008ad2ec  01 33                                            adds r3, #1
008ad2ee  1a 70                                            strb r2, [r3]
008ad2f0  02 0c                                            lsrs r2, r0, #0x10
008ad2f2  01 33                                            adds r3, #1
008ad2f4  1a 70                                            strb r2, [r3]
008ad2f6  00 0e                                            lsrs r0, r0, #0x18
008ad2f8  01 33                                            adds r3, #1
008ad2fa  18 70                                            strb r0, [r3]
008ad2fc  1c 9b                                            ldr r3, [sp, #0x70]
008ad2fe  39 a9                                            add r1, sp, #0xe4
008ad300  39 93                                            str r3, [sp, #0xe4]
008ad302  88 78                                            ldrb r0, [r1, #2]
008ad304  4a 78                                            ldrb r2, [r1, #1]
008ad306  0e 78                                            ldrb r6, [r1]
008ad308  c9 78                                            ldrb r1, [r1, #3]
008ad30a  3a ab                                            add r3, sp, #0xe8
008ad30c  98 70                                            strb r0, [r3, #2]
008ad30e  d9 70                                            strb r1, [r3, #3]
008ad310  5a 70                                            strb r2, [r3, #1]
008ad312  1e 70                                            strb r6, [r3]
008ad314  01 2a                                            cmp r2, #1
008ad316  00 d1                                            bne #0x8ad31a
008ad318  ab e1                                            b #0x8ad672
008ad31a  9b 78                                            ldrb r3, [r3, #2]
008ad31c  01 2b                                            cmp r3, #1
008ad31e  00 d1                                            bne #0x8ad322
008ad320  a7 e1                                            b #0x8ad672
008ad322  09 9b                                            ldr r3, [sp, #0x24]
008ad324  04 98                                            ldr r0, [sp, #0x10]
008ad326  83 42                                            cmp r3, r0
008ad328  00 d8                                            bhi #0x8ad32c
008ad32a  9a e1                                            b #0x8ad662
008ad32c  19 1a                                            subs r1, r3, r0
008ad32e  52 46                                            mov r2, sl
008ad330  0a 91                                            str r1, [sp, #0x28]
008ad332  53 68                                            ldr r3, [r2, #4]
008ad334  07 22                                            movs r2, #7
008ad336  1a 40                                            ands r2, r3
008ad338  09 92                                            str r2, [sp, #0x24]
008ad33a  00 29                                            cmp r1, #0
008ad33c  03 d0                                            beq #0x8ad346
008ad33e  05 23                                            movs r3, #5
008ad340  1a 42                                            tst r2, r3
008ad342  00 d1                                            bne #0x8ad346
008ad344  32 e2                                            b #0x8ad7ac
008ad346  0d 9b                                            ldr r3, [sp, #0x34]
008ad348  0b 9a                                            ldr r2, [sp, #0x2c]
008ad34a  3d 49                                            ldr r1, [pc, #0xf4]
008ad34c  68 46                                            mov r0, sp
008ad34e  d2 1a                                            subs r2, r2, r3
008ad350  18 92                                            str r2, [sp, #0x60]
008ad352  0c 9a                                            ldr r2, [sp, #0x30]
008ad354  8a 46                                            mov sl, r1
008ad356  69 46                                            mov r1, sp
008ad358  9a 1a                                            subs r2, r3, r2
008ad35a  6b 46                                            mov r3, sp
008ad35c  d0 33                                            adds r3, #0xd0
008ad35e  6c 46                                            mov r4, sp
008ad360  98 30                                            adds r0, #0x98
008ad362  90 31                                            adds r1, #0x90
008ad364  04 93                                            str r3, [sp, #0x10]
008ad366  43 46                                            mov r3, r8
008ad368  e9 34                                            adds r4, #0xe9
008ad36a  a8 46                                            mov r8, r5
008ad36c  fa 44                                            add sl, pc
008ad36e  14 90                                            str r0, [sp, #0x50]
008ad370  15 91                                            str r1, [sp, #0x54]
008ad372  19 92                                            str r2, [sp, #0x64]
008ad374  1d 1c                                            adds r5, r3, #0
008ad376  04 2e                                            cmp r6, #4
008ad378  44 d8                                            bhi #0x8ad404
008ad37a  b6 00                                            lsls r6, r6, #2
008ad37c  50 46                                            mov r0, sl
008ad37e  33 58                                            ldr r3, [r6, r0]
008ad380  53 44                                            add r3, sl
008ad382  9f 46                                            mov pc, r3
008ad384  23 68                                            ldr r3, [r4]
008ad386  20 1c                                            adds r0, r4, #0
008ad388  9b 68                                            ldr r3, [r3, #8]
008ad38a  98 47                                            blx r3
008ad38c  16 90                                            str r0, [sp, #0x58]
008ad38e  23 68                                            ldr r3, [r4]
008ad390  20 1c                                            adds r0, r4, #0
008ad392  db 68                                            ldr r3, [r3, #0xc]
008ad394  98 47                                            blx r3
008ad396  27 4a                                            ldr r2, [pc, #0x9c]
008ad398  10 90                                            str r0, [sp, #0x40]
008ad39a  23 68                                            ldr r3, [r4]
008ad39c  6a 44                                            add r2, sp, r2
008ad39e  10 1c                                            adds r0, r2, #0
008ad3a0  21 1c                                            adds r1, r4, #0
008ad3a2  1b 69                                            ldr r3, [r3, #0x10]
008ad3a4  93 46                                            mov fp, r2
008ad3a6  98 47                                            blx r3
008ad3a8  23 68                                            ldr r3, [r4]
008ad3aa  20 1c                                            adds r0, r4, #0
008ad3ac  1b 6a                                            ldr r3, [r3, #0x20]
008ad3ae  98 47                                            blx r3
008ad3b0  21 4b                                            ldr r3, [pc, #0x84]
008ad3b2  0d 90                                            str r0, [sp, #0x34]
008ad3b4  21 1c                                            adds r1, r4, #0
008ad3b6  6b 44                                            add r3, sp, r3
008ad3b8  0e 93                                            str r3, [sp, #0x38]
008ad3ba  23 68                                            ldr r3, [r4]
008ad3bc  0e 98                                            ldr r0, [sp, #0x38]
008ad3be  5b 69                                            ldr r3, [r3, #0x14]
008ad3c0  98 47                                            blx r3
008ad3c2  0f e7                                            b #0x8ad1e4
008ad3c4  00 28                                            cmp r0, #0
008ad3c6  00 d1                                            bne #0x8ad3ca
008ad3c8  a2 e1                                            b #0x8ad710
008ad3ca  1c 4f                                            ldr r7, [pc, #0x70]
008ad3cc  33 68                                            ldr r3, [r6]
008ad3ce  31 1c                                            adds r1, r6, #0
008ad3d0  6f 44                                            add r7, sp, r7
008ad3d2  db 69                                            ldr r3, [r3, #0x1c]
008ad3d4  38 1c                                            adds r0, r7, #0
008ad3d6  98 47                                            blx r3
008ad3d8  26 e7                                            b #0x8ad228
008ad3da  2b 79                                            ldrb r3, [r5, #4]
008ad3dc  00 2b                                            cmp r3, #0
008ad3de  00 d1                                            bne #0x8ad3e2
008ad3e0  53 e1                                            b #0x8ad68a
008ad3e2  28 68                                            ldr r0, [r5]
008ad3e4  43 69                                            ldr r3, [r0, #0x14]
008ad3e6  82 69                                            ldr r2, [r0, #0x18]
008ad3e8  93 42                                            cmp r3, r2
008ad3ea  00 d3                                            blo #0x8ad3ee
008ad3ec  45 e1                                            b #0x8ad67a
008ad3ee  17 a9                                            add r1, sp, #0x5c
008ad3f0  09 78                                            ldrb r1, [r1]
008ad3f2  19 70                                            strb r1, [r3]
008ad3f4  01 33                                            adds r3, #1
008ad3f6  43 61                                            str r3, [r0, #0x14]
008ad3f8  01 23                                            movs r3, #1
008ad3fa  2b 71                                            strb r3, [r5, #4]
008ad3fc  09 9a                                            ldr r2, [sp, #0x24]
008ad3fe  04 2a                                            cmp r2, #4
008ad400  00 d1                                            bne #0x8ad404
008ad402  45 e1                                            b #0x8ad690
008ad404  06 9b                                            ldr r3, [sp, #0x18]
008ad406  a3 42                                            cmp r3, r4
008ad408  33 d0                                            beq #0x8ad472
008ad40a  26 78                                            ldrb r6, [r4]
008ad40c  01 34                                            adds r4, #1
008ad40e  b2 e7                                            b #0x8ad376
; mapping-symbol data/literal pool
008ad410  7c fa ff ff e2 79 0e 00 ac 05 00 00 ac 40 00 00  .byte 0x7c, 0xfa, 0xff, 0xff, 0xe2, 0x79, 0x0e, 0x00, 0xac, 0x05, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00
008ad420  7c 05 00 00 01 01 00 00 e4 1c 00 00 30 0f 00 00  .byte 0x7c, 0x05, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00, 0x30, 0x0f, 0x00, 0x00
008ad430  80 2c 00 00 64 05 00 00 4c 05 00 00 34 05 00 00  .byte 0x80, 0x2c, 0x00, 0x00, 0x64, 0x05, 0x00, 0x00, 0x4c, 0x05, 0x00, 0x00, 0x34, 0x05, 0x00, 0x00
008ad440  b4 87 06 00                                      .byte 0xb4, 0x87, 0x06, 0x00
; decoder-mode: thumb
008ad444  7b 69                                            ldr r3, [r7, #0x14]
008ad446  3a 69                                            ldr r2, [r7, #0x10]
008ad448  93 42                                            cmp r3, r2
008ad44a  db d0                                            beq #0x8ad404
008ad44c  19 78                                            ldrb r1, [r3]
008ad44e  2b 79                                            ldrb r3, [r5, #4]
008ad450  00 2b                                            cmp r3, #0
008ad452  00 d1                                            bne #0x8ad456
008ad454  ec e0                                            b #0x8ad630
008ad456  28 68                                            ldr r0, [r5]
008ad458  43 69                                            ldr r3, [r0, #0x14]
008ad45a  82 69                                            ldr r2, [r0, #0x18]
008ad45c  93 42                                            cmp r3, r2
008ad45e  00 d3                                            blo #0x8ad462
008ad460  df e0                                            b #0x8ad622
008ad462  19 70                                            strb r1, [r3]
008ad464  01 33                                            adds r3, #1
008ad466  43 61                                            str r3, [r0, #0x14]
008ad468  01 23                                            movs r3, #1
008ad46a  2b 71                                            strb r3, [r5, #4]
008ad46c  06 9b                                            ldr r3, [sp, #0x18]
008ad46e  a3 42                                            cmp r3, r4
008ad470  cb d1                                            bne #0x8ad40a
008ad472  2b 1c                                            adds r3, r5, #0
008ad474  3a 69                                            ldr r2, [r7, #0x10]
008ad476  45 46                                            mov r5, r8
008ad478  98 46                                            mov r8, r3
008ad47a  7b 69                                            ldr r3, [r7, #0x14]
008ad47c  d1 1a                                            subs r1, r2, r3
008ad47e  01 29                                            cmp r1, #1
008ad480  32 d9                                            bls #0x8ad4e8
008ad482  40 46                                            mov r0, r8
008ad484  00 79                                            ldrb r0, [r0, #4]
008ad486  5c 1c                                            adds r4, r3, #1
008ad488  12 1b                                            subs r2, r2, r4
008ad48a  34 9e                                            ldr r6, [sp, #0xd0]
008ad48c  82 46                                            mov sl, r0
008ad48e  00 2a                                            cmp r2, #0
008ad490  22 dd                                            ble #0x8ad4d8
008ad492  9b 18                                            adds r3, r3, r2
008ad494  05 93                                            str r3, [sp, #0x14]
008ad496  2b 1c                                            adds r3, r5, #0
008ad498  9a 46                                            mov sl, r3
008ad49a  05 1c                                            adds r5, r0, #0
008ad49c  06 e0                                            b #0x8ad4ac
008ad49e  19 70                                            strb r1, [r3]
008ad4a0  01 33                                            adds r3, #1
008ad4a2  73 61                                            str r3, [r6, #0x14]
008ad4a4  05 99                                            ldr r1, [sp, #0x14]
008ad4a6  8c 42                                            cmp r4, r1
008ad4a8  13 d0                                            beq #0x8ad4d2
008ad4aa  01 34                                            adds r4, #1
008ad4ac  21 78                                            ldrb r1, [r4]
008ad4ae  00 2d                                            cmp r5, #0
008ad4b0  f8 d0                                            beq #0x8ad4a4
008ad4b2  73 69                                            ldr r3, [r6, #0x14]
008ad4b4  b2 69                                            ldr r2, [r6, #0x18]
008ad4b6  93 42                                            cmp r3, r2
008ad4b8  f1 d3                                            blo #0x8ad49e
008ad4ba  33 68                                            ldr r3, [r6]
008ad4bc  30 1c                                            adds r0, r6, #0
008ad4be  5b 6b                                            ldr r3, [r3, #0x34]
008ad4c0  98 47                                            blx r3
008ad4c2  05 99                                            ldr r1, [sp, #0x14]
008ad4c4  01 30                                            adds r0, #1
008ad4c6  43 1e                                            subs r3, r0, #1
008ad4c8  98 41                                            sbcs r0, r3
008ad4ca  40 42                                            rsbs r0, r0, #0
008ad4cc  05 40                                            ands r5, r0
008ad4ce  8c 42                                            cmp r4, r1
008ad4d0  eb d1                                            bne #0x8ad4aa
008ad4d2  53 46                                            mov r3, sl
008ad4d4  aa 46                                            mov sl, r5
008ad4d6  1d 1c                                            adds r5, r3, #0
008ad4d8  22 ab                                            add r3, sp, #0x88
008ad4da  52 46                                            mov r2, sl
008ad4dc  1a 71                                            strb r2, [r3, #4]
008ad4de  34 96                                            str r6, [sp, #0xd0]
008ad4e0  1b 79                                            ldrb r3, [r3, #4]
008ad4e2  40 46                                            mov r0, r8
008ad4e4  22 96                                            str r6, [sp, #0x88]
008ad4e6  03 71                                            strb r3, [r0, #4]
008ad4e8  0a 99                                            ldr r1, [sp, #0x28]
008ad4ea  00 29                                            cmp r1, #0
008ad4ec  04 d0                                            beq #0x8ad4f8
008ad4ee  09 9a                                            ldr r2, [sp, #0x24]
008ad4f0  06 23                                            movs r3, #6
008ad4f2  1a 42                                            tst r2, r3
008ad4f4  00 d1                                            bne #0x8ad4f8
008ad4f6  48 e1                                            b #0x8ad78a
008ad4f8  34 9b                                            ldr r3, [sp, #0xd0]
008ad4fa  0f 99                                            ldr r1, [sp, #0x3c]
008ad4fc  42 46                                            mov r2, r8
008ad4fe  28 1c                                            adds r0, r5, #0
008ad500  0b 60                                            str r3, [r1]
008ad502  13 79                                            ldrb r3, [r2, #4]
008ad504  0b 71                                            strb r3, [r1, #4]
008ad506  f8 f7 bd fa                                      bl #0x8a5a84
008ad50a  38 1c                                            adds r0, r7, #0
008ad50c  66 f6 4e e2                                      blx #0x3139ac
008ad510  0e 98                                            ldr r0, [sp, #0x38]
008ad512  66 f6 4c e2                                      blx #0x3139ac
008ad516  58 46                                            mov r0, fp
008ad518  66 f6 48 e2                                      blx #0x3139ac
008ad51c  06 98                                            ldr r0, [sp, #0x18]
008ad51e  f5 f7 e9 ff                                      bl #0x8a34f4
008ad522  48 46                                            mov r0, sb
008ad524  f8 f7 ae fa                                      bl #0x8a5a84
008ad528  07 99                                            ldr r1, [sp, #0x1c]
008ad52a  11 9a                                            ldr r2, [sp, #0x44]
008ad52c  0f 98                                            ldr r0, [sp, #0x3c]
008ad52e  8b 58                                            ldr r3, [r1, r2]
008ad530  a8 49                                            ldr r1, [pc, #0x2a0]
008ad532  69 44                                            add r1, sp, r1
008ad534  0a 68                                            ldr r2, [r1]
008ad536  1b 68                                            ldr r3, [r3]
008ad538  9a 42                                            cmp r2, r3
008ad53a  00 d0                                            beq #0x8ad53e
008ad53c  47 e1                                            b #0x8ad7ce
008ad53e  a6 4b                                            ldr r3, [pc, #0x298]
008ad540  9d 44                                            add sp, r3
008ad542  3c bc                                            pop {r2, r3, r4, r5}
008ad544  90 46                                            mov r8, r2
008ad546  99 46                                            mov sb, r3
008ad548  a2 46                                            mov sl, r4
008ad54a  ab 46                                            mov fp, r5
008ad54c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ad54e  0d 99                                            ldr r1, [sp, #0x34]
008ad550  00 29                                            cmp r1, #0
008ad552  00 d1                                            bne #0x8ad556
008ad554  03 e1                                            b #0x8ad75e
008ad556  0c 9b                                            ldr r3, [sp, #0x30]
008ad558  0d 98                                            ldr r0, [sp, #0x34]
008ad55a  83 42                                            cmp r3, r0
008ad55c  00 dd                                            ble #0x8ad560
008ad55e  df e0                                            b #0x8ad720
008ad560  28 1c                                            adds r0, r5, #0
008ad562  13 99                                            ldr r1, [sp, #0x4c]
008ad564  f7 f7 a2 fa                                      bl #0x8a4aac
008ad568  28 1c                                            adds r0, r5, #0
008ad56a  16 99                                            ldr r1, [sp, #0x58]
008ad56c  f7 f7 9e fa                                      bl #0x8a4aac
008ad570  19 99                                            ldr r1, [sp, #0x64]
008ad572  04 9d                                            ldr r5, [sp, #0x10]
008ad574  1a 91                                            str r1, [sp, #0x68]
008ad576  2a 79                                            ldrb r2, [r5, #4]
008ad578  2e 68                                            ldr r6, [r5]
008ad57a  08 92                                            str r2, [sp, #0x20]
008ad57c  00 29                                            cmp r1, #0
008ad57e  21 d0                                            beq #0x8ad5c4
008ad580  1b 94                                            str r4, [sp, #0x6c]
008ad582  0c 1c                                            adds r4, r1, #0
008ad584  07 e0                                            b #0x8ad596
008ad586  13 a8                                            add r0, sp, #0x4c
008ad588  00 78                                            ldrb r0, [r0]
008ad58a  18 70                                            strb r0, [r3]
008ad58c  01 33                                            adds r3, #1
008ad58e  73 61                                            str r3, [r6, #0x14]
008ad590  01 3c                                            subs r4, #1
008ad592  00 2c                                            cmp r4, #0
008ad594  15 d0                                            beq #0x8ad5c2
008ad596  08 9b                                            ldr r3, [sp, #0x20]
008ad598  00 2b                                            cmp r3, #0
008ad59a  f9 d0                                            beq #0x8ad590
008ad59c  73 69                                            ldr r3, [r6, #0x14]
008ad59e  b2 69                                            ldr r2, [r6, #0x18]
008ad5a0  93 42                                            cmp r3, r2
008ad5a2  f0 d3                                            blo #0x8ad586
008ad5a4  33 68                                            ldr r3, [r6]
008ad5a6  13 99                                            ldr r1, [sp, #0x4c]
008ad5a8  30 1c                                            adds r0, r6, #0
008ad5aa  5b 6b                                            ldr r3, [r3, #0x34]
008ad5ac  98 47                                            blx r3
008ad5ae  08 99                                            ldr r1, [sp, #0x20]
008ad5b0  01 30                                            adds r0, #1
008ad5b2  43 1e                                            subs r3, r0, #1
008ad5b4  98 41                                            sbcs r0, r3
008ad5b6  40 42                                            rsbs r0, r0, #0
008ad5b8  01 40                                            ands r1, r0
008ad5ba  01 3c                                            subs r4, #1
008ad5bc  08 91                                            str r1, [sp, #0x20]
008ad5be  00 2c                                            cmp r4, #0
008ad5c0  e9 d1                                            bne #0x8ad596
008ad5c2  1b 9c                                            ldr r4, [sp, #0x6c]
008ad5c4  2a 96                                            str r6, [sp, #0xa8]
008ad5c6  08 aa                                            add r2, sp, #0x20
008ad5c8  12 78                                            ldrb r2, [r2]
008ad5ca  2a ab                                            add r3, sp, #0xa8
008ad5cc  69 46                                            mov r1, sp
008ad5ce  1a 71                                            strb r2, [r3, #4]
008ad5d0  04 98                                            ldr r0, [sp, #0x10]
008ad5d2  a0 31                                            adds r1, #0xa0
008ad5d4  0b 9a                                            ldr r2, [sp, #0x2c]
008ad5d6  06 60                                            str r6, [r0]
008ad5d8  1b 79                                            ldrb r3, [r3, #4]
008ad5da  08 91                                            str r1, [sp, #0x20]
008ad5dc  03 71                                            strb r3, [r0, #4]
008ad5de  43 68                                            ldr r3, [r0, #4]
008ad5e0  08 1c                                            adds r0, r1, #0
008ad5e2  05 99                                            ldr r1, [sp, #0x14]
008ad5e4  00 93                                            str r3, [sp]
008ad5e6  33 1c                                            adds r3, r6, #0
008ad5e8  f9 f7 38 fd                                      bl #0x8a705c
008ad5ec  28 9b                                            ldr r3, [sp, #0xa0]
008ad5ee  04 9a                                            ldr r2, [sp, #0x10]
008ad5f0  08 98                                            ldr r0, [sp, #0x20]
008ad5f2  13 60                                            str r3, [r2]
008ad5f4  03 79                                            ldrb r3, [r0, #4]
008ad5f6  13 71                                            strb r3, [r2, #4]
008ad5f8  04 e7                                            b #0x8ad404
008ad5fa  10 9a                                            ldr r2, [sp, #0x40]
008ad5fc  00 2a                                            cmp r2, #0
008ad5fe  00 d1                                            bne #0x8ad602
008ad600  00 e7                                            b #0x8ad404
008ad602  0e 9b                                            ldr r3, [sp, #0x38]
008ad604  2e ae                                            add r6, sp, #0xb8
008ad606  30 1c                                            adds r0, r6, #0
008ad608  59 69                                            ldr r1, [r3, #0x14]
008ad60a  1a 69                                            ldr r2, [r3, #0x10]
008ad60c  6b 68                                            ldr r3, [r5, #4]
008ad60e  00 93                                            str r3, [sp]
008ad610  2b 68                                            ldr r3, [r5]
008ad612  f9 f7 39 fc                                      bl #0x8a6e88
008ad616  2e 9b                                            ldr r3, [sp, #0xb8]
008ad618  04 9d                                            ldr r5, [sp, #0x10]
008ad61a  2b 60                                            str r3, [r5]
008ad61c  33 79                                            ldrb r3, [r6, #4]
008ad61e  2b 71                                            strb r3, [r5, #4]
008ad620  f0 e6                                            b #0x8ad404
008ad622  03 68                                            ldr r3, [r0]
008ad624  5b 6b                                            ldr r3, [r3, #0x34]
008ad626  98 47                                            blx r3
008ad628  01 23                                            movs r3, #1
008ad62a  01 30                                            adds r0, #1
008ad62c  00 d0                                            beq #0x8ad630
008ad62e  1c e7                                            b #0x8ad46a
008ad630  00 23                                            movs r3, #0
008ad632  2b 71                                            strb r3, [r5, #4]
008ad634  1a e7                                            b #0x8ad46c
008ad636  0a 99                                            ldr r1, [sp, #0x28]
008ad638  00 29                                            cmp r1, #0
008ad63a  3b d0                                            beq #0x8ad6b4
008ad63c  23 68                                            ldr r3, [r4]
008ad63e  20 1c                                            adds r0, r4, #0
008ad640  9b 6a                                            ldr r3, [r3, #0x28]
008ad642  98 47                                            blx r3
008ad644  1c ab                                            add r3, sp, #0x70
008ad646  18 70                                            strb r0, [r3]
008ad648  02 0a                                            lsrs r2, r0, #8
008ad64a  01 33                                            adds r3, #1
008ad64c  1a 70                                            strb r2, [r3]
008ad64e  02 0c                                            lsrs r2, r0, #0x10
008ad650  01 33                                            adds r3, #1
008ad652  1a 70                                            strb r2, [r3]
008ad654  00 0e                                            lsrs r0, r0, #0x18
008ad656  01 33                                            adds r3, #1
008ad658  18 70                                            strb r0, [r3]
008ad65a  1c 9b                                            ldr r3, [sp, #0x70]
008ad65c  37 a9                                            add r1, sp, #0xdc
008ad65e  37 93                                            str r3, [sp, #0xdc]
008ad660  4f e6                                            b #0x8ad302
008ad662  52 46                                            mov r2, sl
008ad664  53 68                                            ldr r3, [r2, #4]
008ad666  07 22                                            movs r2, #7
008ad668  1a 40                                            ands r2, r3
008ad66a  00 23                                            movs r3, #0
008ad66c  09 92                                            str r2, [sp, #0x24]
008ad66e  0a 93                                            str r3, [sp, #0x28]
008ad670  69 e6                                            b #0x8ad346
008ad672  04 9a                                            ldr r2, [sp, #0x10]
008ad674  01 32                                            adds r2, #1
008ad676  04 92                                            str r2, [sp, #0x10]
008ad678  53 e6                                            b #0x8ad322
008ad67a  03 68                                            ldr r3, [r0]
008ad67c  17 99                                            ldr r1, [sp, #0x5c]
008ad67e  5b 6b                                            ldr r3, [r3, #0x34]
008ad680  98 47                                            blx r3
008ad682  01 23                                            movs r3, #1
008ad684  01 30                                            adds r0, #1
008ad686  00 d0                                            beq #0x8ad68a
008ad688  b7 e6                                            b #0x8ad3fa
008ad68a  00 23                                            movs r3, #0
008ad68c  2b 71                                            strb r3, [r5, #4]
008ad68e  b5 e6                                            b #0x8ad3fc
008ad690  0a 9b                                            ldr r3, [sp, #0x28]
008ad692  00 2b                                            cmp r3, #0
008ad694  00 d1                                            bne #0x8ad698
008ad696  b5 e6                                            b #0x8ad404
008ad698  12 98                                            ldr r0, [sp, #0x48]
008ad69a  30 ae                                            add r6, sp, #0xc0
008ad69c  00 90                                            str r0, [sp]
008ad69e  29 68                                            ldr r1, [r5]
008ad6a0  6a 68                                            ldr r2, [r5, #4]
008ad6a2  30 1c                                            adds r0, r6, #0
008ad6a4  f9 f7 c0 fb                                      bl #0x8a6e28
008ad6a8  30 9b                                            ldr r3, [sp, #0xc0]
008ad6aa  04 9d                                            ldr r5, [sp, #0x10]
008ad6ac  2b 60                                            str r3, [r5]
008ad6ae  33 79                                            ldrb r3, [r6, #4]
008ad6b0  2b 71                                            strb r3, [r5, #4]
008ad6b2  a7 e6                                            b #0x8ad404
008ad6b4  23 68                                            ldr r3, [r4]
008ad6b6  20 1c                                            adds r0, r4, #0
008ad6b8  5b 6a                                            ldr r3, [r3, #0x24]
008ad6ba  98 47                                            blx r3
008ad6bc  1c ab                                            add r3, sp, #0x70
008ad6be  18 70                                            strb r0, [r3]
008ad6c0  02 0a                                            lsrs r2, r0, #8
008ad6c2  01 33                                            adds r3, #1
008ad6c4  1a 70                                            strb r2, [r3]
008ad6c6  02 0c                                            lsrs r2, r0, #0x10
008ad6c8  01 33                                            adds r3, #1
008ad6ca  1a 70                                            strb r2, [r3]
008ad6cc  00 0e                                            lsrs r0, r0, #0x18
008ad6ce  01 33                                            adds r3, #1
008ad6d0  18 70                                            strb r0, [r3]
008ad6d2  1c 9b                                            ldr r3, [sp, #0x70]
008ad6d4  36 a9                                            add r1, sp, #0xd8
008ad6d6  36 93                                            str r3, [sp, #0xd8]
008ad6d8  13 e6                                            b #0x8ad302
008ad6da  33 68                                            ldr r3, [r6]
008ad6dc  30 1c                                            adds r0, r6, #0
008ad6de  5b 6a                                            ldr r3, [r3, #0x24]
008ad6e0  98 47                                            blx r3
008ad6e2  1c ab                                            add r3, sp, #0x70
008ad6e4  18 70                                            strb r0, [r3]
008ad6e6  02 0a                                            lsrs r2, r0, #8
008ad6e8  01 33                                            adds r3, #1
008ad6ea  1a 70                                            strb r2, [r3]
008ad6ec  02 0c                                            lsrs r2, r0, #0x10
008ad6ee  01 33                                            adds r3, #1
008ad6f0  1a 70                                            strb r2, [r3]
008ad6f2  00 0e                                            lsrs r0, r0, #0x18
008ad6f4  01 33                                            adds r3, #1
008ad6f6  18 70                                            strb r0, [r3]
008ad6f8  1c 9b                                            ldr r3, [sp, #0x70]
008ad6fa  38 a9                                            add r1, sp, #0xe0
008ad6fc  38 93                                            str r3, [sp, #0xe0]
008ad6fe  00 e6                                            b #0x8ad302
008ad700  36 4f                                            ldr r7, [pc, #0xd8]
008ad702  23 68                                            ldr r3, [r4]
008ad704  21 1c                                            adds r1, r4, #0
008ad706  6f 44                                            add r7, sp, r7
008ad708  9b 69                                            ldr r3, [r3, #0x18]
008ad70a  38 1c                                            adds r0, r7, #0
008ad70c  98 47                                            blx r3
008ad70e  8b e5                                            b #0x8ad228
008ad710  32 4f                                            ldr r7, [pc, #0xc8]
008ad712  33 68                                            ldr r3, [r6]
008ad714  31 1c                                            adds r1, r6, #0
008ad716  6f 44                                            add r7, sp, r7
008ad718  9b 69                                            ldr r3, [r3, #0x18]
008ad71a  38 1c                                            adds r0, r7, #0
008ad71c  98 47                                            blx r3
008ad71e  83 e5                                            b #0x8ad228
008ad720  6b 68                                            ldr r3, [r5, #4]
008ad722  18 9a                                            ldr r2, [sp, #0x60]
008ad724  14 98                                            ldr r0, [sp, #0x50]
008ad726  00 93                                            str r3, [sp]
008ad728  2b 68                                            ldr r3, [r5]
008ad72a  05 99                                            ldr r1, [sp, #0x14]
008ad72c  f9 f7 96 fc                                      bl #0x8a705c
008ad730  14 99                                            ldr r1, [sp, #0x50]
008ad732  28 1c                                            adds r0, r5, #0
008ad734  0b 68                                            ldr r3, [r1]
008ad736  2b 60                                            str r3, [r5]
008ad738  0b 79                                            ldrb r3, [r1, #4]
008ad73a  16 99                                            ldr r1, [sp, #0x58]
008ad73c  2b 71                                            strb r3, [r5, #4]
008ad73e  f7 f7 b5 f9                                      bl #0x8a4aac
008ad742  6b 68                                            ldr r3, [r5, #4]
008ad744  0b 9a                                            ldr r2, [sp, #0x2c]
008ad746  15 98                                            ldr r0, [sp, #0x54]
008ad748  00 93                                            str r3, [sp]
008ad74a  2b 68                                            ldr r3, [r5]
008ad74c  18 99                                            ldr r1, [sp, #0x60]
008ad74e  f9 f7 85 fc                                      bl #0x8a705c
008ad752  15 9a                                            ldr r2, [sp, #0x54]
008ad754  13 68                                            ldr r3, [r2]
008ad756  2b 60                                            str r3, [r5]
008ad758  13 79                                            ldrb r3, [r2, #4]
008ad75a  2b 71                                            strb r3, [r5, #4]
008ad75c  86 e6                                            b #0x8ad46c
008ad75e  6b 68                                            ldr r3, [r5, #4]
008ad760  2c ae                                            add r6, sp, #0xb0
008ad762  30 1c                                            adds r0, r6, #0
008ad764  00 93                                            str r3, [sp]
008ad766  2b 68                                            ldr r3, [r5]
008ad768  05 99                                            ldr r1, [sp, #0x14]
008ad76a  0b 9a                                            ldr r2, [sp, #0x2c]
008ad76c  f9 f7 76 fc                                      bl #0x8a705c
008ad770  2c 9b                                            ldr r3, [sp, #0xb0]
008ad772  04 9d                                            ldr r5, [sp, #0x10]
008ad774  2b 60                                            str r3, [r5]
008ad776  33 79                                            ldrb r3, [r6, #4]
008ad778  2b 71                                            strb r3, [r5, #4]
008ad77a  43 e6                                            b #0x8ad404
008ad77c  34 9b                                            ldr r3, [sp, #0xd0]
008ad77e  0f 9a                                            ldr r2, [sp, #0x3c]
008ad780  40 46                                            mov r0, r8
008ad782  13 60                                            str r3, [r2]
008ad784  03 79                                            ldrb r3, [r0, #4]
008ad786  13 71                                            strb r3, [r2, #4]
008ad788  c2 e6                                            b #0x8ad510
008ad78a  12 9b                                            ldr r3, [sp, #0x48]
008ad78c  20 ac                                            add r4, sp, #0x80
008ad78e  20 1c                                            adds r0, r4, #0
008ad790  00 93                                            str r3, [sp]
008ad792  43 46                                            mov r3, r8
008ad794  5a 68                                            ldr r2, [r3, #4]
008ad796  34 99                                            ldr r1, [sp, #0xd0]
008ad798  0a 9b                                            ldr r3, [sp, #0x28]
008ad79a  f9 f7 45 fb                                      bl #0x8a6e28
008ad79e  20 9b                                            ldr r3, [sp, #0x80]
008ad7a0  34 a8                                            add r0, sp, #0xd0
008ad7a2  80 46                                            mov r8, r0
008ad7a4  34 93                                            str r3, [sp, #0xd0]
008ad7a6  23 79                                            ldrb r3, [r4, #4]
008ad7a8  03 71                                            strb r3, [r0, #4]
008ad7aa  a5 e6                                            b #0x8ad4f8
008ad7ac  12 9b                                            ldr r3, [sp, #0x48]
008ad7ae  32 ac                                            add r4, sp, #0xc8
008ad7b0  20 1c                                            adds r0, r4, #0
008ad7b2  00 93                                            str r3, [sp]
008ad7b4  43 46                                            mov r3, r8
008ad7b6  5a 68                                            ldr r2, [r3, #4]
008ad7b8  34 99                                            ldr r1, [sp, #0xd0]
008ad7ba  0a 9b                                            ldr r3, [sp, #0x28]
008ad7bc  f9 f7 34 fb                                      bl #0x8a6e28
008ad7c0  32 9b                                            ldr r3, [sp, #0xc8]
008ad7c2  34 a8                                            add r0, sp, #0xd0
008ad7c4  80 46                                            mov r8, r0
008ad7c6  34 93                                            str r3, [sp, #0xd0]
008ad7c8  23 79                                            ldrb r3, [r4, #4]
008ad7ca  03 71                                            strb r3, [r0, #4]
008ad7cc  bb e5                                            b #0x8ad346
008ad7ce  60 f6 a0 e5                                      blx #0x30e310
008ad7d2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008ad7d4  7c 05 00 00 84 05 00 00 34 05 00 00              .byte 0x7c, 0x05, 0x00, 0x00, 0x84, 0x05, 0x00, 0x00, 0x34, 0x05, 0x00, 0x00

; FUNCTION 0x008ad7e0, declared_size=1802, range_size=1802, mode=thumb
; class-group: std::money_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basecRKSs
; demangled: std::money_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::do_put(std::ostreambuf_iterator<char, std::char_traits<char> >, bool, std::ios_base&, char, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: thumb
008ad7e0  f0 b5                                            push {r4, r5, r6, r7, lr}
008ad7e2  5f 46                                            mov r7, fp
008ad7e4  56 46                                            mov r6, sl
008ad7e6  4d 46                                            mov r5, sb
008ad7e8  44 46                                            mov r4, r8
008ad7ea  f0 b4                                            push {r4, r5, r6, r7}
008ad7ec  b8 4c                                            ldr r4, [pc, #0x2e0]
008ad7ee  b9 49                                            ldr r1, [pc, #0x2e4]
008ad7f0  a5 44                                            add sp, r4
008ad7f2  79 44                                            add r1, pc
008ad7f4  05 91                                            str r1, [sp, #0x14]
008ad7f6  1c 92                                            str r2, [sp, #0x70]
008ad7f8  0d 90                                            str r0, [sp, #0x34]
008ad7fa  e1 9a                                            ldr r2, [sp, #0x384]
008ad7fc  b6 4c                                            ldr r4, [pc, #0x2d8]
008ad7fe  05 98                                            ldr r0, [sp, #0x14]
008ad800  92 46                                            mov sl, r2
008ad802  1c a9                                            add r1, sp, #0x70
008ad804  02 59                                            ldr r2, [r0, r4]
008ad806  4b 60                                            str r3, [r1, #4]
008ad808  e0 ab                                            add r3, sp, #0x380
008ad80a  1b 78                                            ldrb r3, [r3]
008ad80c  12 68                                            ldr r2, [r2]
008ad80e  10 94                                            str r4, [sp, #0x40]
008ad810  07 93                                            str r3, [sp, #0x1c]
008ad812  d5 92                                            str r2, [sp, #0x354]
008ad814  32 aa                                            add r2, sp, #0xc8
008ad816  91 46                                            mov sb, r2
008ad818  0a 79                                            ldrb r2, [r1, #4]
008ad81a  e2 ab                                            add r3, sp, #0x388
008ad81c  1b 78                                            ldrb r3, [r3]
008ad81e  4c 46                                            mov r4, sb
008ad820  22 71                                            strb r2, [r4, #4]
008ad822  74 31                                            adds r1, #0x74
008ad824  1c 9a                                            ldr r2, [sp, #0x70]
008ad826  68 46                                            mov r0, sp
008ad828  eb 30                                            adds r0, #0xeb
008ad82a  06 91                                            str r1, [sp, #0x18]
008ad82c  51 46                                            mov r1, sl
008ad82e  03 70                                            strb r3, [r0]
008ad830  11 90                                            str r0, [sp, #0x44]
008ad832  20 31                                            adds r1, #0x20
008ad834  06 98                                            ldr r0, [sp, #0x18]
008ad836  32 92                                            str r2, [sp, #0xc8]
008ad838  e3 9f                                            ldr r7, [sp, #0x38c]
008ad83a  f5 f7 91 fe                                      bl #0x8a3560
008ad83e  05 9a                                            ldr r2, [sp, #0x14]
008ad840  a6 4b                                            ldr r3, [pc, #0x298]
008ad842  06 98                                            ldr r0, [sp, #0x18]
008ad844  d1 58                                            ldr r1, [r2, r3]
008ad846  f5 f7 b3 fe                                      bl #0x8a35b0
008ad84a  a5 4b                                            ldr r3, [pc, #0x294]
008ad84c  04 1c                                            adds r4, r0, #0
008ad84e  05 98                                            ldr r0, [sp, #0x14]
008ad850  c1 58                                            ldr r1, [r0, r3]
008ad852  06 98                                            ldr r0, [sp, #0x18]
008ad854  f5 f7 ac fe                                      bl #0x8a35b0
008ad858  05 9a                                            ldr r2, [sp, #0x14]
008ad85a  a2 4b                                            ldr r3, [pc, #0x288]
008ad85c  05 1c                                            adds r5, r0, #0
008ad85e  06 98                                            ldr r0, [sp, #0x18]
008ad860  d1 58                                            ldr r1, [r2, r3]
008ad862  f5 f7 a5 fe                                      bl #0x8a35b0
008ad866  23 68                                            ldr r3, [r4]
008ad868  2d 21                                            movs r1, #0x2d
008ad86a  06 1c                                            adds r6, r0, #0
008ad86c  9b 69                                            ldr r3, [r3, #0x18]
008ad86e  20 1c                                            adds r0, r4, #0
008ad870  98 47                                            blx r3
008ad872  0b 90                                            str r0, [sp, #0x2c]
008ad874  23 68                                            ldr r3, [r4]
008ad876  2b 21                                            movs r1, #0x2b
008ad878  20 1c                                            adds r0, r4, #0
008ad87a  9b 69                                            ldr r3, [r3, #0x18]
008ad87c  98 47                                            blx r3
008ad87e  09 90                                            str r0, [sp, #0x24]
008ad880  23 68                                            ldr r3, [r4]
008ad882  20 21                                            movs r1, #0x20
008ad884  20 1c                                            adds r0, r4, #0
008ad886  9b 69                                            ldr r3, [r3, #0x18]
008ad888  98 47                                            blx r3
008ad88a  14 90                                            str r0, [sp, #0x50]
008ad88c  23 68                                            ldr r3, [r4]
008ad88e  20 1c                                            adds r0, r4, #0
008ad890  30 21                                            movs r1, #0x30
008ad892  9b 69                                            ldr r3, [r3, #0x18]
008ad894  98 47                                            blx r3
008ad896  07 9b                                            ldr r3, [sp, #0x1c]
008ad898  12 90                                            str r0, [sp, #0x48]
008ad89a  00 2b                                            cmp r3, #0
008ad89c  68 d0                                            beq #0x8ad970
008ad89e  33 68                                            ldr r3, [r6]
008ad8a0  30 1c                                            adds r0, r6, #0
008ad8a2  9b 68                                            ldr r3, [r3, #8]
008ad8a4  98 47                                            blx r3
008ad8a6  13 90                                            str r0, [sp, #0x4c]
008ad8a8  33 68                                            ldr r3, [r6]
008ad8aa  30 1c                                            adds r0, r6, #0
008ad8ac  db 68                                            ldr r3, [r3, #0xc]
008ad8ae  98 47                                            blx r3
008ad8b0  0f 90                                            str r0, [sp, #0x3c]
008ad8b2  cf 20                                            movs r0, #0xcf
008ad8b4  80 00                                            lsls r0, r0, #2
008ad8b6  68 44                                            add r0, sp, r0
008ad8b8  0a 90                                            str r0, [sp, #0x28]
008ad8ba  33 68                                            ldr r3, [r6]
008ad8bc  31 1c                                            adds r1, r6, #0
008ad8be  1b 69                                            ldr r3, [r3, #0x10]
008ad8c0  98 47                                            blx r3
008ad8c2  33 68                                            ldr r3, [r6]
008ad8c4  30 1c                                            adds r0, r6, #0
008ad8c6  1b 6a                                            ldr r3, [r3, #0x20]
008ad8c8  98 47                                            blx r3
008ad8ca  c9 21                                            movs r1, #0xc9
008ad8cc  89 00                                            lsls r1, r1, #2
008ad8ce  69 44                                            add r1, sp, r1
008ad8d0  0c 90                                            str r0, [sp, #0x30]
008ad8d2  0e 91                                            str r1, [sp, #0x38]
008ad8d4  33 68                                            ldr r3, [r6]
008ad8d6  08 1c                                            adds r0, r1, #0
008ad8d8  31 1c                                            adds r1, r6, #0
008ad8da  5b 69                                            ldr r3, [r3, #0x14]
008ad8dc  98 47                                            blx r3
008ad8de  78 69                                            ldr r0, [r7, #0x14]
008ad8e0  3f 69                                            ldr r7, [r7, #0x10]
008ad8e2  83 46                                            mov fp, r0
008ad8e4  bb 45                                            cmp fp, r7
008ad8e6  69 d0                                            beq #0x8ad9bc
008ad8e8  03 78                                            ldrb r3, [r0]
008ad8ea  0b 99                                            ldr r1, [sp, #0x2c]
008ad8ec  5b 1a                                            subs r3, r3, r1
008ad8ee  5a 42                                            rsbs r2, r3, #0
008ad8f0  5a 41                                            adcs r2, r3
008ad8f2  07 9b                                            ldr r3, [sp, #0x1c]
008ad8f4  08 92                                            str r2, [sp, #0x20]
008ad8f6  93 44                                            add fp, r2
008ad8f8  00 2b                                            cmp r3, #0
008ad8fa  66 d1                                            bne #0x8ad9ca
008ad8fc  08 9a                                            ldr r2, [sp, #0x20]
008ad8fe  00 2a                                            cmp r2, #0
008ad900  00 d1                                            bne #0x8ad904
008ad902  4e e1                                            b #0x8adba2
008ad904  c3 23                                            movs r3, #0xc3
008ad906  9b 00                                            lsls r3, r3, #2
008ad908  6b 44                                            add r3, sp, r3
008ad90a  98 46                                            mov r8, r3
008ad90c  2b 68                                            ldr r3, [r5]
008ad90e  40 46                                            mov r0, r8
008ad910  29 1c                                            adds r1, r5, #0
008ad912  db 69                                            ldr r3, [r3, #0x1c]
008ad914  98 47                                            blx r3
008ad916  5f 45                                            cmp r7, fp
008ad918  06 d0                                            beq #0x8ad928
008ad91a  59 46                                            mov r1, fp
008ad91c  0b 78                                            ldrb r3, [r1]
008ad91e  e2 68                                            ldr r2, [r4, #0xc]
008ad920  9b 00                                            lsls r3, r3, #2
008ad922  9b 58                                            ldr r3, [r3, r2]
008ad924  5c 06                                            lsls r4, r3, #0x19
008ad926  5c d4                                            bmi #0x8ad9e2
008ad928  32 9b                                            ldr r3, [sp, #0xc8]
008ad92a  0d 98                                            ldr r0, [sp, #0x34]
008ad92c  49 46                                            mov r1, sb
008ad92e  03 60                                            str r3, [r0]
008ad930  0b 79                                            ldrb r3, [r1, #4]
008ad932  03 71                                            strb r3, [r0, #4]
008ad934  40 46                                            mov r0, r8
008ad936  66 f6 3a e0                                      blx #0x3139ac
008ad93a  0e 98                                            ldr r0, [sp, #0x38]
008ad93c  66 f6 36 e0                                      blx #0x3139ac
008ad940  0a 98                                            ldr r0, [sp, #0x28]
008ad942  66 f6 34 e0                                      blx #0x3139ac
008ad946  06 98                                            ldr r0, [sp, #0x18]
008ad948  f5 f7 d4 fd                                      bl #0x8a34f4
008ad94c  05 9c                                            ldr r4, [sp, #0x14]
008ad94e  10 99                                            ldr r1, [sp, #0x40]
008ad950  d5 9a                                            ldr r2, [sp, #0x354]
008ad952  0d 98                                            ldr r0, [sp, #0x34]
008ad954  63 58                                            ldr r3, [r4, r1]
008ad956  1b 68                                            ldr r3, [r3]
008ad958  9a 42                                            cmp r2, r3
008ad95a  00 d0                                            beq #0x8ad95e
008ad95c  c3 e2                                            b #0x8adee6
008ad95e  d7 23                                            movs r3, #0xd7
008ad960  9b 00                                            lsls r3, r3, #2
008ad962  9d 44                                            add sp, r3
008ad964  3c bc                                            pop {r2, r3, r4, r5}
008ad966  90 46                                            mov r8, r2
008ad968  99 46                                            mov sb, r3
008ad96a  a2 46                                            mov sl, r4
008ad96c  ab 46                                            mov fp, r5
008ad96e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ad970  2b 68                                            ldr r3, [r5]
008ad972  28 1c                                            adds r0, r5, #0
008ad974  9b 68                                            ldr r3, [r3, #8]
008ad976  98 47                                            blx r3
008ad978  13 90                                            str r0, [sp, #0x4c]
008ad97a  2b 68                                            ldr r3, [r5]
008ad97c  28 1c                                            adds r0, r5, #0
008ad97e  db 68                                            ldr r3, [r3, #0xc]
008ad980  98 47                                            blx r3
008ad982  cf 22                                            movs r2, #0xcf
008ad984  92 00                                            lsls r2, r2, #2
008ad986  6a 44                                            add r2, sp, r2
008ad988  0a 92                                            str r2, [sp, #0x28]
008ad98a  0f 90                                            str r0, [sp, #0x3c]
008ad98c  2b 68                                            ldr r3, [r5]
008ad98e  10 1c                                            adds r0, r2, #0
008ad990  29 1c                                            adds r1, r5, #0
008ad992  1b 69                                            ldr r3, [r3, #0x10]
008ad994  98 47                                            blx r3
008ad996  2b 68                                            ldr r3, [r5]
008ad998  28 1c                                            adds r0, r5, #0
008ad99a  1b 6a                                            ldr r3, [r3, #0x20]
008ad99c  98 47                                            blx r3
008ad99e  c9 23                                            movs r3, #0xc9
008ad9a0  9b 00                                            lsls r3, r3, #2
008ad9a2  6b 44                                            add r3, sp, r3
008ad9a4  0c 90                                            str r0, [sp, #0x30]
008ad9a6  0e 93                                            str r3, [sp, #0x38]
008ad9a8  2b 68                                            ldr r3, [r5]
008ad9aa  0e 98                                            ldr r0, [sp, #0x38]
008ad9ac  29 1c                                            adds r1, r5, #0
008ad9ae  5b 69                                            ldr r3, [r3, #0x14]
008ad9b0  98 47                                            blx r3
008ad9b2  78 69                                            ldr r0, [r7, #0x14]
008ad9b4  3f 69                                            ldr r7, [r7, #0x10]
008ad9b6  83 46                                            mov fp, r0
008ad9b8  bb 45                                            cmp fp, r7
008ad9ba  95 d1                                            bne #0x8ad8e8
008ad9bc  32 9b                                            ldr r3, [sp, #0xc8]
008ad9be  0d 99                                            ldr r1, [sp, #0x34]
008ad9c0  4a 46                                            mov r2, sb
008ad9c2  0b 60                                            str r3, [r1]
008ad9c4  13 79                                            ldrb r3, [r2, #4]
008ad9c6  0b 71                                            strb r3, [r1, #4]
008ad9c8  b7 e7                                            b #0x8ad93a
008ad9ca  00 2a                                            cmp r2, #0
008ad9cc  00 d1                                            bne #0x8ad9d0
008ad9ce  f1 e0                                            b #0x8adbb4
008ad9d0  33 68                                            ldr r3, [r6]
008ad9d2  c3 20                                            movs r0, #0xc3
008ad9d4  80 00                                            lsls r0, r0, #2
008ad9d6  68 44                                            add r0, sp, r0
008ad9d8  db 69                                            ldr r3, [r3, #0x1c]
008ad9da  31 1c                                            adds r1, r6, #0
008ad9dc  80 46                                            mov r8, r0
008ad9de  98 47                                            blx r3
008ad9e0  99 e7                                            b #0x8ad916
008ad9e2  5c 46                                            mov r4, fp
008ad9e4  40 21                                            movs r1, #0x40
008ad9e6  01 34                                            adds r4, #1
008ad9e8  bc 42                                            cmp r4, r7
008ad9ea  06 d0                                            beq #0x8ad9fa
008ad9ec  23 78                                            ldrb r3, [r4]
008ad9ee  9b 00                                            lsls r3, r3, #2
008ad9f0  9b 58                                            ldr r3, [r3, r2]
008ad9f2  19 42                                            tst r1, r3
008ad9f4  f7 d1                                            bne #0x8ad9e6
008ad9f6  5c 45                                            cmp r4, fp
008ad9f8  96 d0                                            beq #0x8ad928
008ad9fa  3b af                                            add r7, sp, #0xec
008ad9fc  82 a9                                            add r1, sp, #0x208
008ad9fe  3a 4a                                            ldr r2, [pc, #0xe8]
008ada00  3f 61                                            str r7, [r7, #0x10]
008ada02  40 a8                                            add r0, sp, #0x100
008ada04  60 f6 30 e7                                      blx #0x30e868
008ada08  8c 22                                            movs r2, #0x8c
008ada0a  52 00                                            lsls r2, r2, #1
008ada0c  bf 50                                            str r7, [r7, r2]
008ada0e  38 1c                                            adds r0, r7, #0
008ada10  04 92                                            str r2, [sp, #0x10]
008ada12  f7 f7 61 fc                                      bl #0x8a52d8
008ada16  3b 69                                            ldr r3, [r7, #0x10]
008ada18  00 20                                            movs r0, #0
008ada1a  18 70                                            strb r0, [r3]
008ada1c  0a 99                                            ldr r1, [sp, #0x28]
008ada1e  4a 69                                            ldr r2, [r1, #0x14]
008ada20  0b 69                                            ldr r3, [r1, #0x10]
008ada22  9a 42                                            cmp r2, r3
008ada24  1a d0                                            beq #0x8ada5c
008ada26  59 46                                            mov r1, fp
008ada28  22 1c                                            adds r2, r4, #0
008ada2a  3a ab                                            add r3, sp, #0xe8
008ada2c  38 1c                                            adds r0, r7, #0
008ada2e  f8 f7 a1 f8                                      bl #0x8a5b74
008ada32  04 9a                                            ldr r2, [sp, #0x10]
008ada34  3b 69                                            ldr r3, [r7, #0x10]
008ada36  0b 98                                            ldr r0, [sp, #0x2c]
008ada38  b9 58                                            ldr r1, [r7, r2]
008ada3a  09 9c                                            ldr r4, [sp, #0x24]
008ada3c  00 22                                            movs r2, #0
008ada3e  59 1a                                            subs r1, r3, r1
008ada40  0c 9b                                            ldr r3, [sp, #0x30]
008ada42  01 90                                            str r0, [sp, #4]
008ada44  02 92                                            str r2, [sp, #8]
008ada46  c9 1a                                            subs r1, r1, r3
008ada48  38 1c                                            adds r0, r7, #0
008ada4a  0f 9b                                            ldr r3, [sp, #0x3c]
008ada4c  0a 9a                                            ldr r2, [sp, #0x28]
008ada4e  00 94                                            str r4, [sp]
008ada50  0c f0 60 fa                                      bl #0x8b9f14
008ada54  04 9b                                            ldr r3, [sp, #0x10]
008ada56  3c 69                                            ldr r4, [r7, #0x10]
008ada58  fb 58                                            ldr r3, [r7, r3]
008ada5a  9b 46                                            mov fp, r3
008ada5c  43 46                                            mov r3, r8
008ada5e  1a 69                                            ldr r2, [r3, #0x10]
008ada60  5b 69                                            ldr r3, [r3, #0x14]
008ada62  50 46                                            mov r0, sl
008ada64  59 46                                            mov r1, fp
008ada66  c0 69                                            ldr r0, [r0, #0x1c]
008ada68  61 1a                                            subs r1, r4, r1
008ada6a  d3 1a                                            subs r3, r2, r3
008ada6c  cb 18                                            adds r3, r1, r3
008ada6e  04 93                                            str r3, [sp, #0x10]
008ada70  0c 9b                                            ldr r3, [sp, #0x30]
008ada72  09 90                                            str r0, [sp, #0x24]
008ada74  04 98                                            ldr r0, [sp, #0x10]
008ada76  5a 1e                                            subs r2, r3, #1
008ada78  93 41                                            sbcs r3, r2
008ada7a  0b 91                                            str r1, [sp, #0x2c]
008ada7c  c0 18                                            adds r0, r0, r3
008ada7e  04 90                                            str r0, [sp, #0x10]
008ada80  51 46                                            mov r1, sl
008ada82  4b 68                                            ldr r3, [r1, #4]
008ada84  9b 05                                            lsls r3, r3, #0x16
008ada86  db 0f                                            lsrs r3, r3, #0x1f
008ada88  0f 93                                            str r3, [sp, #0x3c]
008ada8a  00 2b                                            cmp r3, #0
008ada8c  05 d0                                            beq #0x8ada9a
008ada8e  0e 9b                                            ldr r3, [sp, #0x38]
008ada90  1a 69                                            ldr r2, [r3, #0x10]
008ada92  5b 69                                            ldr r3, [r3, #0x14]
008ada94  d3 1a                                            subs r3, r2, r3
008ada96  c0 18                                            adds r0, r0, r3
008ada98  04 90                                            str r0, [sp, #0x10]
008ada9a  07 98                                            ldr r0, [sp, #0x1c]
008ada9c  00 28                                            cmp r0, #0
008ada9e  25 d0                                            beq #0x8adaec
008adaa0  08 99                                            ldr r1, [sp, #0x20]
008adaa2  00 29                                            cmp r1, #0
008adaa4  00 d1                                            bne #0x8adaa8
008adaa6  87 e1                                            b #0x8addb8
008adaa8  33 68                                            ldr r3, [r6]
008adaaa  30 1c                                            adds r0, r6, #0
008adaac  9b 6a                                            ldr r3, [r3, #0x28]
008adaae  98 47                                            blx r3
008adab0  1a ab                                            add r3, sp, #0x68
008adab2  18 70                                            strb r0, [r3]
008adab4  02 0a                                            lsrs r2, r0, #8
008adab6  01 33                                            adds r3, #1
008adab8  1a 70                                            strb r2, [r3]
008adaba  02 0c                                            lsrs r2, r0, #0x10
008adabc  01 33                                            adds r3, #1
008adabe  1a 70                                            strb r2, [r3]
008adac0  00 0e                                            lsrs r0, r0, #0x18
008adac2  01 33                                            adds r3, #1
008adac4  18 70                                            strb r0, [r3]
008adac6  1a 9b                                            ldr r3, [sp, #0x68]
008adac8  37 a9                                            add r1, sp, #0xdc
008adaca  37 93                                            str r3, [sp, #0xdc]
008adacc  24 e0                                            b #0x8adb18
008adace  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008adad0  a4 fc ff ff a2 72 0e 00 ac 40 00 00 e4 1c 00 00  .byte 0xa4, 0xfc, 0xff, 0xff, 0xa2, 0x72, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00
008adae0  30 0f 00 00 80 2c 00 00 01 01 00 00              .byte 0x30, 0x0f, 0x00, 0x00, 0x80, 0x2c, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00
; decoder-mode: thumb
008adaec  08 9a                                            ldr r2, [sp, #0x20]
008adaee  00 2a                                            cmp r2, #0
008adaf0  00 d0                                            beq #0x8adaf4
008adaf2  4e e1                                            b #0x8add92
008adaf4  2b 68                                            ldr r3, [r5]
008adaf6  28 1c                                            adds r0, r5, #0
008adaf8  5b 6a                                            ldr r3, [r3, #0x24]
008adafa  98 47                                            blx r3
008adafc  1a ab                                            add r3, sp, #0x68
008adafe  18 70                                            strb r0, [r3]
008adb00  02 0a                                            lsrs r2, r0, #8
008adb02  01 33                                            adds r3, #1
008adb04  1a 70                                            strb r2, [r3]
008adb06  02 0c                                            lsrs r2, r0, #0x10
008adb08  01 33                                            adds r3, #1
008adb0a  1a 70                                            strb r2, [r3]
008adb0c  00 0e                                            lsrs r0, r0, #0x18
008adb0e  01 33                                            adds r3, #1
008adb10  18 70                                            strb r0, [r3]
008adb12  1a 9b                                            ldr r3, [sp, #0x68]
008adb14  34 a9                                            add r1, sp, #0xd0
008adb16  34 93                                            str r3, [sp, #0xd0]
008adb18  88 78                                            ldrb r0, [r1, #2]
008adb1a  4a 78                                            ldrb r2, [r1, #1]
008adb1c  0e 78                                            ldrb r6, [r1]
008adb1e  c9 78                                            ldrb r1, [r1, #3]
008adb20  38 ab                                            add r3, sp, #0xe0
008adb22  98 70                                            strb r0, [r3, #2]
008adb24  d9 70                                            strb r1, [r3, #3]
008adb26  5a 70                                            strb r2, [r3, #1]
008adb28  1e 70                                            strb r6, [r3]
008adb2a  01 2a                                            cmp r2, #1
008adb2c  00 d1                                            bne #0x8adb30
008adb2e  5e e1                                            b #0x8addee
008adb30  9b 78                                            ldrb r3, [r3, #2]
008adb32  01 2b                                            cmp r3, #1
008adb34  00 d1                                            bne #0x8adb38
008adb36  5a e1                                            b #0x8addee
008adb38  09 98                                            ldr r0, [sp, #0x24]
008adb3a  04 99                                            ldr r1, [sp, #0x10]
008adb3c  88 42                                            cmp r0, r1
008adb3e  00 d8                                            bhi #0x8adb42
008adb40  4d e1                                            b #0x8addde
008adb42  42 1a                                            subs r2, r0, r1
008adb44  08 92                                            str r2, [sp, #0x20]
008adb46  50 46                                            mov r0, sl
008adb48  43 68                                            ldr r3, [r0, #4]
008adb4a  08 99                                            ldr r1, [sp, #0x20]
008adb4c  07 22                                            movs r2, #7
008adb4e  1a 40                                            ands r2, r3
008adb50  09 92                                            str r2, [sp, #0x24]
008adb52  00 29                                            cmp r1, #0
008adb54  03 d0                                            beq #0x8adb5e
008adb56  05 23                                            movs r3, #5
008adb58  1a 42                                            tst r2, r3
008adb5a  00 d1                                            bne #0x8adb5e
008adb5c  9f e1                                            b #0x8ade9e
008adb5e  0c 9a                                            ldr r2, [sp, #0x30]
008adb60  d7 49                                            ldr r1, [pc, #0x35c]
008adb62  6b 46                                            mov r3, sp
008adb64  a2 1a                                            subs r2, r4, r2
008adb66  8a 46                                            mov sl, r1
008adb68  18 92                                            str r2, [sp, #0x60]
008adb6a  0c 99                                            ldr r1, [sp, #0x30]
008adb6c  0b 9a                                            ldr r2, [sp, #0x2c]
008adb6e  90 33                                            adds r3, #0x90
008adb70  68 46                                            mov r0, sp
008adb72  88 30                                            adds r0, #0x88
008adb74  15 93                                            str r3, [sp, #0x54]
008adb76  38 33                                            adds r3, #0x38
008adb78  6d 46                                            mov r5, sp
008adb7a  16 90                                            str r0, [sp, #0x58]
008adb7c  89 1a                                            subs r1, r1, r2
008adb7e  58 46                                            mov r0, fp
008adb80  04 93                                            str r3, [sp, #0x10]
008adb82  43 46                                            mov r3, r8
008adb84  a3 46                                            mov fp, r4
008adb86  b8 46                                            mov r8, r7
008adb88  e1 35                                            adds r5, #0xe1
008adb8a  fa 44                                            add sl, pc
008adb8c  19 91                                            str r1, [sp, #0x64]
008adb8e  17 90                                            str r0, [sp, #0x5c]
008adb90  4c 46                                            mov r4, sb
008adb92  1f 1c                                            adds r7, r3, #0
008adb94  04 2e                                            cmp r6, #4
008adb96  2c d8                                            bhi #0x8adbf2
008adb98  b6 00                                            lsls r6, r6, #2
008adb9a  50 46                                            mov r0, sl
008adb9c  33 58                                            ldr r3, [r6, r0]
008adb9e  53 44                                            add r3, sl
008adba0  9f 46                                            mov pc, r3
008adba2  2b 68                                            ldr r3, [r5]
008adba4  c3 20                                            movs r0, #0xc3
008adba6  80 00                                            lsls r0, r0, #2
008adba8  68 44                                            add r0, sp, r0
008adbaa  9b 69                                            ldr r3, [r3, #0x18]
008adbac  29 1c                                            adds r1, r5, #0
008adbae  80 46                                            mov r8, r0
008adbb0  98 47                                            blx r3
008adbb2  b0 e6                                            b #0x8ad916
008adbb4  33 68                                            ldr r3, [r6]
008adbb6  c3 21                                            movs r1, #0xc3
008adbb8  89 00                                            lsls r1, r1, #2
008adbba  69 44                                            add r1, sp, r1
008adbbc  88 46                                            mov r8, r1
008adbbe  08 1c                                            adds r0, r1, #0
008adbc0  9b 69                                            ldr r3, [r3, #0x18]
008adbc2  31 1c                                            adds r1, r6, #0
008adbc4  98 47                                            blx r3
008adbc6  a6 e6                                            b #0x8ad916
008adbc8  23 79                                            ldrb r3, [r4, #4]
008adbca  00 2b                                            cmp r3, #0
008adbcc  00 d1                                            bne #0x8adbd0
008adbce  1a e1                                            b #0x8ade06
008adbd0  20 68                                            ldr r0, [r4]
008adbd2  43 69                                            ldr r3, [r0, #0x14]
008adbd4  82 69                                            ldr r2, [r0, #0x18]
008adbd6  93 42                                            cmp r3, r2
008adbd8  00 d3                                            blo #0x8adbdc
008adbda  0c e1                                            b #0x8addf6
008adbdc  14 a9                                            add r1, sp, #0x50
008adbde  09 78                                            ldrb r1, [r1]
008adbe0  19 70                                            strb r1, [r3]
008adbe2  01 33                                            adds r3, #1
008adbe4  43 61                                            str r3, [r0, #0x14]
008adbe6  01 23                                            movs r3, #1
008adbe8  23 71                                            strb r3, [r4, #4]
008adbea  09 9a                                            ldr r2, [sp, #0x24]
008adbec  04 2a                                            cmp r2, #4
008adbee  00 d1                                            bne #0x8adbf2
008adbf0  0c e1                                            b #0x8ade0c
008adbf2  06 9b                                            ldr r3, [sp, #0x18]
008adbf4  ab 42                                            cmp r3, r5
008adbf6  5c d0                                            beq #0x8adcb2
008adbf8  2e 78                                            ldrb r6, [r5]
008adbfa  01 35                                            adds r5, #1
008adbfc  ca e7                                            b #0x8adb94
008adbfe  0c 99                                            ldr r1, [sp, #0x30]
008adc00  00 29                                            cmp r1, #0
008adc02  00 d1                                            bne #0x8adc06
008adc04  3c e1                                            b #0x8ade80
008adc06  0b 9b                                            ldr r3, [sp, #0x2c]
008adc08  0c 98                                            ldr r0, [sp, #0x30]
008adc0a  83 42                                            cmp r3, r0
008adc0c  00 dd                                            ble #0x8adc10
008adc0e  18 e1                                            b #0x8ade42
008adc10  20 1c                                            adds r0, r4, #0
008adc12  12 99                                            ldr r1, [sp, #0x48]
008adc14  f6 f7 4a ff                                      bl #0x8a4aac
008adc18  20 1c                                            adds r0, r4, #0
008adc1a  13 99                                            ldr r1, [sp, #0x4c]
008adc1c  f6 f7 46 ff                                      bl #0x8a4aac
008adc20  04 9c                                            ldr r4, [sp, #0x10]
008adc22  19 99                                            ldr r1, [sp, #0x64]
008adc24  22 79                                            ldrb r2, [r4, #4]
008adc26  26 68                                            ldr r6, [r4]
008adc28  07 92                                            str r2, [sp, #0x1c]
008adc2a  00 29                                            cmp r1, #0
008adc2c  24 d0                                            beq #0x8adc78
008adc2e  23 1c                                            adds r3, r4, #0
008adc30  a9 46                                            mov sb, r5
008adc32  0c 1c                                            adds r4, r1, #0
008adc34  1d 1c                                            adds r5, r3, #0
008adc36  07 e0                                            b #0x8adc48
008adc38  12 a8                                            add r0, sp, #0x48
008adc3a  00 78                                            ldrb r0, [r0]
008adc3c  18 70                                            strb r0, [r3]
008adc3e  01 33                                            adds r3, #1
008adc40  73 61                                            str r3, [r6, #0x14]
008adc42  01 3c                                            subs r4, #1
008adc44  00 2c                                            cmp r4, #0
008adc46  15 d0                                            beq #0x8adc74
008adc48  07 9b                                            ldr r3, [sp, #0x1c]
008adc4a  00 2b                                            cmp r3, #0
008adc4c  f9 d0                                            beq #0x8adc42
008adc4e  73 69                                            ldr r3, [r6, #0x14]
008adc50  b2 69                                            ldr r2, [r6, #0x18]
008adc52  93 42                                            cmp r3, r2
008adc54  f0 d3                                            blo #0x8adc38
008adc56  33 68                                            ldr r3, [r6]
008adc58  12 99                                            ldr r1, [sp, #0x48]
008adc5a  30 1c                                            adds r0, r6, #0
008adc5c  5b 6b                                            ldr r3, [r3, #0x34]
008adc5e  98 47                                            blx r3
008adc60  07 99                                            ldr r1, [sp, #0x1c]
008adc62  43 1c                                            adds r3, r0, #1
008adc64  5a 1e                                            subs r2, r3, #1
008adc66  93 41                                            sbcs r3, r2
008adc68  5b 42                                            rsbs r3, r3, #0
008adc6a  19 40                                            ands r1, r3
008adc6c  01 3c                                            subs r4, #1
008adc6e  07 91                                            str r1, [sp, #0x1c]
008adc70  00 2c                                            cmp r4, #0
008adc72  e9 d1                                            bne #0x8adc48
008adc74  2c 1c                                            adds r4, r5, #0
008adc76  4d 46                                            mov r5, sb
008adc78  28 96                                            str r6, [sp, #0xa0]
008adc7a  1c 20                                            movs r0, #0x1c
008adc7c  6a 46                                            mov r2, sp
008adc7e  82 5c                                            ldrb r2, [r0, r2]
008adc80  28 ab                                            add r3, sp, #0xa0
008adc82  26 a9                                            add r1, sp, #0x98
008adc84  1a 71                                            strb r2, [r3, #4]
008adc86  04 98                                            ldr r0, [sp, #0x10]
008adc88  89 46                                            mov sb, r1
008adc8a  5a 46                                            mov r2, fp
008adc8c  06 60                                            str r6, [r0]
008adc8e  1b 79                                            ldrb r3, [r3, #4]
008adc90  03 71                                            strb r3, [r0, #4]
008adc92  43 68                                            ldr r3, [r0, #4]
008adc94  08 1c                                            adds r0, r1, #0
008adc96  17 99                                            ldr r1, [sp, #0x5c]
008adc98  00 93                                            str r3, [sp]
008adc9a  33 1c                                            adds r3, r6, #0
008adc9c  f9 f7 de f9                                      bl #0x8a705c
008adca0  26 9b                                            ldr r3, [sp, #0x98]
008adca2  04 9a                                            ldr r2, [sp, #0x10]
008adca4  48 46                                            mov r0, sb
008adca6  13 60                                            str r3, [r2]
008adca8  03 79                                            ldrb r3, [r0, #4]
008adcaa  13 71                                            strb r3, [r2, #4]
008adcac  06 9b                                            ldr r3, [sp, #0x18]
008adcae  ab 42                                            cmp r3, r5
008adcb0  a2 d1                                            bne #0x8adbf8
008adcb2  3b 1c                                            adds r3, r7, #0
008adcb4  1a 69                                            ldr r2, [r3, #0x10]
008adcb6  47 46                                            mov r7, r8
008adcb8  98 46                                            mov r8, r3
008adcba  5b 69                                            ldr r3, [r3, #0x14]
008adcbc  a1 46                                            mov sb, r4
008adcbe  d1 1a                                            subs r1, r2, r3
008adcc0  01 29                                            cmp r1, #1
008adcc2  2c d9                                            bls #0x8add1e
008adcc4  5c 1c                                            adds r4, r3, #1
008adcc6  48 46                                            mov r0, sb
008adcc8  12 1b                                            subs r2, r2, r4
008adcca  32 9d                                            ldr r5, [sp, #0xc8]
008adccc  06 79                                            ldrb r6, [r0, #4]
008adcce  00 2a                                            cmp r2, #0
008adcd0  1e dd                                            ble #0x8add10
008adcd2  9b 18                                            adds r3, r3, r2
008adcd4  9a 46                                            mov sl, r3
008adcd6  3b 1c                                            adds r3, r7, #0
008adcd8  57 46                                            mov r7, sl
008adcda  9a 46                                            mov sl, r3
008adcdc  05 e0                                            b #0x8adcea
008adcde  19 70                                            strb r1, [r3]
008adce0  01 33                                            adds r3, #1
008adce2  6b 61                                            str r3, [r5, #0x14]
008adce4  bc 42                                            cmp r4, r7
008adce6  12 d0                                            beq #0x8add0e
008adce8  01 34                                            adds r4, #1
008adcea  21 78                                            ldrb r1, [r4]
008adcec  00 2e                                            cmp r6, #0
008adcee  f9 d0                                            beq #0x8adce4
008adcf0  6b 69                                            ldr r3, [r5, #0x14]
008adcf2  aa 69                                            ldr r2, [r5, #0x18]
008adcf4  93 42                                            cmp r3, r2
008adcf6  f2 d3                                            blo #0x8adcde
008adcf8  2b 68                                            ldr r3, [r5]
008adcfa  28 1c                                            adds r0, r5, #0
008adcfc  5b 6b                                            ldr r3, [r3, #0x34]
008adcfe  98 47                                            blx r3
008add00  01 30                                            adds r0, #1
008add02  43 1e                                            subs r3, r0, #1
008add04  98 41                                            sbcs r0, r3
008add06  40 42                                            rsbs r0, r0, #0
008add08  06 40                                            ands r6, r0
008add0a  bc 42                                            cmp r4, r7
008add0c  ec d1                                            bne #0x8adce8
008add0e  57 46                                            mov r7, sl
008add10  20 ab                                            add r3, sp, #0x80
008add12  1e 71                                            strb r6, [r3, #4]
008add14  32 95                                            str r5, [sp, #0xc8]
008add16  1b 79                                            ldrb r3, [r3, #4]
008add18  49 46                                            mov r1, sb
008add1a  20 95                                            str r5, [sp, #0x80]
008add1c  0b 71                                            strb r3, [r1, #4]
008add1e  08 9a                                            ldr r2, [sp, #0x20]
008add20  00 2a                                            cmp r2, #0
008add22  04 d0                                            beq #0x8add2e
008add24  09 9c                                            ldr r4, [sp, #0x24]
008add26  06 23                                            movs r3, #6
008add28  1c 42                                            tst r4, r3
008add2a  00 d1                                            bne #0x8add2e
008add2c  ca e0                                            b #0x8adec4
008add2e  32 9b                                            ldr r3, [sp, #0xc8]
008add30  0d 99                                            ldr r1, [sp, #0x34]
008add32  4a 46                                            mov r2, sb
008add34  38 1c                                            adds r0, r7, #0
008add36  0b 60                                            str r3, [r1]
008add38  13 79                                            ldrb r3, [r2, #4]
008add3a  0b 71                                            strb r3, [r1, #4]
008add3c  f7 f7 a2 fe                                      bl #0x8a5a84
008add40  f8 e5                                            b #0x8ad934
008add42  7b 69                                            ldr r3, [r7, #0x14]
008add44  3a 69                                            ldr r2, [r7, #0x10]
008add46  93 42                                            cmp r3, r2
008add48  00 d1                                            bne #0x8add4c
008add4a  52 e7                                            b #0x8adbf2
008add4c  19 78                                            ldrb r1, [r3]
008add4e  23 79                                            ldrb r3, [r4, #4]
008add50  00 2b                                            cmp r3, #0
008add52  73 d0                                            beq #0x8ade3c
008add54  20 68                                            ldr r0, [r4]
008add56  43 69                                            ldr r3, [r0, #0x14]
008add58  82 69                                            ldr r2, [r0, #0x18]
008add5a  93 42                                            cmp r3, r2
008add5c  68 d2                                            bhs #0x8ade30
008add5e  19 70                                            strb r1, [r3]
008add60  01 33                                            adds r3, #1
008add62  43 61                                            str r3, [r0, #0x14]
008add64  01 23                                            movs r3, #1
008add66  23 71                                            strb r3, [r4, #4]
008add68  43 e7                                            b #0x8adbf2
008add6a  0f 9a                                            ldr r2, [sp, #0x3c]
008add6c  00 2a                                            cmp r2, #0
008add6e  00 d1                                            bne #0x8add72
008add70  3f e7                                            b #0x8adbf2
008add72  0e 9b                                            ldr r3, [sp, #0x38]
008add74  2c ae                                            add r6, sp, #0xb0
008add76  30 1c                                            adds r0, r6, #0
008add78  59 69                                            ldr r1, [r3, #0x14]
008add7a  1a 69                                            ldr r2, [r3, #0x10]
008add7c  63 68                                            ldr r3, [r4, #4]
008add7e  00 93                                            str r3, [sp]
008add80  23 68                                            ldr r3, [r4]
008add82  f9 f7 81 f8                                      bl #0x8a6e88
008add86  2c 9b                                            ldr r3, [sp, #0xb0]
008add88  04 9c                                            ldr r4, [sp, #0x10]
008add8a  23 60                                            str r3, [r4]
008add8c  33 79                                            ldrb r3, [r6, #4]
008add8e  23 71                                            strb r3, [r4, #4]
008add90  2f e7                                            b #0x8adbf2
008add92  2b 68                                            ldr r3, [r5]
008add94  28 1c                                            adds r0, r5, #0
008add96  9b 6a                                            ldr r3, [r3, #0x28]
008add98  98 47                                            blx r3
008add9a  1a ab                                            add r3, sp, #0x68
008add9c  18 70                                            strb r0, [r3]
008add9e  02 0a                                            lsrs r2, r0, #8
008adda0  01 33                                            adds r3, #1
008adda2  1a 70                                            strb r2, [r3]
008adda4  02 0c                                            lsrs r2, r0, #0x10
008adda6  01 33                                            adds r3, #1
008adda8  1a 70                                            strb r2, [r3]
008addaa  00 0e                                            lsrs r0, r0, #0x18
008addac  01 33                                            adds r3, #1
008addae  18 70                                            strb r0, [r3]
008addb0  1a 9b                                            ldr r3, [sp, #0x68]
008addb2  35 a9                                            add r1, sp, #0xd4
008addb4  35 93                                            str r3, [sp, #0xd4]
008addb6  af e6                                            b #0x8adb18
008addb8  33 68                                            ldr r3, [r6]
008addba  30 1c                                            adds r0, r6, #0
008addbc  5b 6a                                            ldr r3, [r3, #0x24]
008addbe  98 47                                            blx r3
008addc0  1a ab                                            add r3, sp, #0x68
008addc2  18 70                                            strb r0, [r3]
008addc4  02 0a                                            lsrs r2, r0, #8
008addc6  01 33                                            adds r3, #1
008addc8  1a 70                                            strb r2, [r3]
008addca  02 0c                                            lsrs r2, r0, #0x10
008addcc  01 33                                            adds r3, #1
008addce  1a 70                                            strb r2, [r3]
008addd0  00 0e                                            lsrs r0, r0, #0x18
008addd2  01 33                                            adds r3, #1
008addd4  18 70                                            strb r0, [r3]
008addd6  1a 9b                                            ldr r3, [sp, #0x68]
008addd8  36 a9                                            add r1, sp, #0xd8
008addda  36 93                                            str r3, [sp, #0xd8]
008adddc  9c e6                                            b #0x8adb18
008addde  52 46                                            mov r2, sl
008adde0  53 68                                            ldr r3, [r2, #4]
008adde2  07 22                                            movs r2, #7
008adde4  1a 40                                            ands r2, r3
008adde6  00 23                                            movs r3, #0
008adde8  09 92                                            str r2, [sp, #0x24]
008addea  08 93                                            str r3, [sp, #0x20]
008addec  b7 e6                                            b #0x8adb5e
008addee  04 9b                                            ldr r3, [sp, #0x10]
008addf0  01 33                                            adds r3, #1
008addf2  04 93                                            str r3, [sp, #0x10]
008addf4  a0 e6                                            b #0x8adb38
008addf6  03 68                                            ldr r3, [r0]
008addf8  14 99                                            ldr r1, [sp, #0x50]
008addfa  5b 6b                                            ldr r3, [r3, #0x34]
008addfc  98 47                                            blx r3
008addfe  01 23                                            movs r3, #1
008ade00  01 30                                            adds r0, #1
008ade02  00 d0                                            beq #0x8ade06
008ade04  f0 e6                                            b #0x8adbe8
008ade06  00 23                                            movs r3, #0
008ade08  23 71                                            strb r3, [r4, #4]
008ade0a  ee e6                                            b #0x8adbea
008ade0c  08 9b                                            ldr r3, [sp, #0x20]
008ade0e  00 2b                                            cmp r3, #0
008ade10  00 d1                                            bne #0x8ade14
008ade12  ee e6                                            b #0x8adbf2
008ade14  11 98                                            ldr r0, [sp, #0x44]
008ade16  2e ae                                            add r6, sp, #0xb8
008ade18  00 90                                            str r0, [sp]
008ade1a  21 68                                            ldr r1, [r4]
008ade1c  62 68                                            ldr r2, [r4, #4]
008ade1e  30 1c                                            adds r0, r6, #0
008ade20  f9 f7 02 f8                                      bl #0x8a6e28
008ade24  2e 9b                                            ldr r3, [sp, #0xb8]
008ade26  04 9c                                            ldr r4, [sp, #0x10]
008ade28  23 60                                            str r3, [r4]
008ade2a  33 79                                            ldrb r3, [r6, #4]
008ade2c  23 71                                            strb r3, [r4, #4]
008ade2e  e0 e6                                            b #0x8adbf2
008ade30  03 68                                            ldr r3, [r0]
008ade32  5b 6b                                            ldr r3, [r3, #0x34]
008ade34  98 47                                            blx r3
008ade36  01 23                                            movs r3, #1
008ade38  01 30                                            adds r0, #1
008ade3a  94 d1                                            bne #0x8add66
008ade3c  00 23                                            movs r3, #0
008ade3e  23 71                                            strb r3, [r4, #4]
008ade40  d7 e6                                            b #0x8adbf2
008ade42  63 68                                            ldr r3, [r4, #4]
008ade44  18 9a                                            ldr r2, [sp, #0x60]
008ade46  15 98                                            ldr r0, [sp, #0x54]
008ade48  00 93                                            str r3, [sp]
008ade4a  23 68                                            ldr r3, [r4]
008ade4c  17 99                                            ldr r1, [sp, #0x5c]
008ade4e  f9 f7 05 f9                                      bl #0x8a705c
008ade52  15 99                                            ldr r1, [sp, #0x54]
008ade54  20 1c                                            adds r0, r4, #0
008ade56  0b 68                                            ldr r3, [r1]
008ade58  23 60                                            str r3, [r4]
008ade5a  0b 79                                            ldrb r3, [r1, #4]
008ade5c  13 99                                            ldr r1, [sp, #0x4c]
008ade5e  23 71                                            strb r3, [r4, #4]
008ade60  f6 f7 24 fe                                      bl #0x8a4aac
008ade64  63 68                                            ldr r3, [r4, #4]
008ade66  5a 46                                            mov r2, fp
008ade68  16 98                                            ldr r0, [sp, #0x58]
008ade6a  00 93                                            str r3, [sp]
008ade6c  23 68                                            ldr r3, [r4]
008ade6e  18 99                                            ldr r1, [sp, #0x60]
008ade70  f9 f7 f4 f8                                      bl #0x8a705c
008ade74  16 9a                                            ldr r2, [sp, #0x58]
008ade76  13 68                                            ldr r3, [r2]
008ade78  23 60                                            str r3, [r4]
008ade7a  13 79                                            ldrb r3, [r2, #4]
008ade7c  23 71                                            strb r3, [r4, #4]
008ade7e  b8 e6                                            b #0x8adbf2
008ade80  63 68                                            ldr r3, [r4, #4]
008ade82  2a ae                                            add r6, sp, #0xa8
008ade84  30 1c                                            adds r0, r6, #0
008ade86  00 93                                            str r3, [sp]
008ade88  23 68                                            ldr r3, [r4]
008ade8a  17 99                                            ldr r1, [sp, #0x5c]
008ade8c  5a 46                                            mov r2, fp
008ade8e  f9 f7 e5 f8                                      bl #0x8a705c
008ade92  2a 9b                                            ldr r3, [sp, #0xa8]
008ade94  04 9c                                            ldr r4, [sp, #0x10]
008ade96  23 60                                            str r3, [r4]
008ade98  33 79                                            ldrb r3, [r6, #4]
008ade9a  23 71                                            strb r3, [r4, #4]
008ade9c  a9 e6                                            b #0x8adbf2
008ade9e  11 9a                                            ldr r2, [sp, #0x44]
008adea0  4b 46                                            mov r3, sb
008adea2  30 ad                                            add r5, sp, #0xc0
008adea4  00 92                                            str r2, [sp]
008adea6  28 1c                                            adds r0, r5, #0
008adea8  5a 68                                            ldr r2, [r3, #4]
008adeaa  32 99                                            ldr r1, [sp, #0xc8]
008adeac  08 9b                                            ldr r3, [sp, #0x20]
008adeae  f8 f7 bb ff                                      bl #0x8a6e28
008adeb2  30 9b                                            ldr r3, [sp, #0xc0]
008adeb4  32 a8                                            add r0, sp, #0xc8
008adeb6  81 46                                            mov sb, r0
008adeb8  32 93                                            str r3, [sp, #0xc8]
008adeba  2b 79                                            ldrb r3, [r5, #4]
008adebc  03 71                                            strb r3, [r0, #4]
008adebe  4e e6                                            b #0x8adb5e
; mapping-symbol data/literal pool
008adec0  aa 7f 06 00                                      .byte 0xaa, 0x7f, 0x06, 0x00
; decoder-mode: thumb
008adec4  11 98                                            ldr r0, [sp, #0x44]
008adec6  4b 46                                            mov r3, sb
008adec8  1e ac                                            add r4, sp, #0x78
008adeca  00 90                                            str r0, [sp]
008adecc  5a 68                                            ldr r2, [r3, #4]
008adece  20 1c                                            adds r0, r4, #0
008aded0  08 9b                                            ldr r3, [sp, #0x20]
008aded2  32 99                                            ldr r1, [sp, #0xc8]
008aded4  f8 f7 a8 ff                                      bl #0x8a6e28
008aded8  1e 9b                                            ldr r3, [sp, #0x78]
008adeda  32 a8                                            add r0, sp, #0xc8
008adedc  81 46                                            mov sb, r0
008adede  32 93                                            str r3, [sp, #0xc8]
008adee0  23 79                                            ldrb r3, [r4, #4]
008adee2  03 71                                            strb r3, [r0, #4]
008adee4  23 e7                                            b #0x8add2e
008adee6  60 f6 14 e2                                      blx #0x30e310
