; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bcff0, declared_size=170, range_size=170, mode=thumb
; class-group: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >
; alias: _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE18_M_insert_noresizeEjRKS3_
; demangled: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >::_M_insert_noresize(unsigned int, std::pair<int const, std::locale> const&)
; decoder-mode: thumb
008bcff0  f0 b5                                            push {r4, r5, r6, r7, lr}
008bcff2  5f 46                                            mov r7, fp
008bcff4  56 46                                            mov r6, sl
008bcff6  4d 46                                            mov r5, sb
008bcff8  44 46                                            mov r4, r8
008bcffa  f0 b4                                            push {r4, r5, r6, r7}
008bcffc  83 b0                                            sub sp, #0xc
008bcffe  01 93                                            str r3, [sp, #4]
008bd000  93 46                                            mov fp, r2
008bd002  8a 68                                            ldr r2, [r1, #8]
008bd004  5b 46                                            mov r3, fp
008bd006  9b 00                                            lsls r3, r3, #2
008bd008  99 46                                            mov sb, r3
008bd00a  13 1c                                            adds r3, r2, #0
008bd00c  0f 1c                                            adds r7, r1, #0
008bd00e  4b 44                                            add r3, sb
008bd010  90 46                                            mov r8, r2
008bd012  19 68                                            ldr r1, [r3]
008bd014  7a 68                                            ldr r2, [r7, #4]
008bd016  82 46                                            mov sl, r0
008bd018  91 42                                            cmp r1, r2
008bd01a  3a d0                                            beq #0x8bd092
008bd01c  04 3b                                            subs r3, #4
008bd01e  1c 68                                            ldr r4, [r3]
008bd020  a1 42                                            cmp r1, r4
008bd022  fb d0                                            beq #0x8bd01c
008bd024  42 46                                            mov r2, r8
008bd026  9d 1a                                            subs r5, r3, r2
008bd028  ad 10                                            asrs r5, r5, #2
008bd02a  01 35                                            adds r5, #1
008bd02c  22 68                                            ldr r2, [r4]
008bd02e  01 e0                                            b #0x8bd034
008bd030  24 68                                            ldr r4, [r4]
008bd032  12 68                                            ldr r2, [r2]
008bd034  91 42                                            cmp r1, r2
008bd036  fb d1                                            bne #0x8bd030
008bd038  ad 00                                            lsls r5, r5, #2
008bd03a  38 1d                                            adds r0, r7, #4
008bd03c  ff f7 a6 ff                                      bl #0x8bcf8c
008bd040  01 99                                            ldr r1, [sp, #4]
008bd042  06 1c                                            adds r6, r0, #0
008bd044  45 44                                            add r5, r8
008bd046  08 c9                                            ldm r1!, {r3}
008bd048  43 60                                            str r3, [r0, #4]
008bd04a  08 30                                            adds r0, #8
008bd04c  e6 f7 88 fa                                      bl #0x8a3560
008bd050  00 23                                            movs r3, #0
008bd052  33 60                                            str r3, [r6]
008bd054  23 68                                            ldr r3, [r4]
008bd056  33 60                                            str r3, [r6]
008bd058  5b 46                                            mov r3, fp
008bd05a  01 33                                            adds r3, #1
008bd05c  9b 00                                            lsls r3, r3, #2
008bd05e  43 44                                            add r3, r8
008bd060  5b 1b                                            subs r3, r3, r5
008bd062  9b 10                                            asrs r3, r3, #2
008bd064  26 60                                            str r6, [r4]
008bd066  00 2b                                            cmp r3, #0
008bd068  03 dd                                            ble #0x8bd072
008bd06a  01 3b                                            subs r3, #1
008bd06c  40 c5                                            stm r5!, {r6}
008bd06e  00 2b                                            cmp r3, #0
008bd070  fb d1                                            bne #0x8bd06a
008bd072  7b 69                                            ldr r3, [r7, #0x14]
008bd074  4a 46                                            mov r2, sb
008bd076  03 b0                                            add sp, #0xc
008bd078  01 33                                            adds r3, #1
008bd07a  7b 61                                            str r3, [r7, #0x14]
008bd07c  bb 68                                            ldr r3, [r7, #8]
008bd07e  50 46                                            mov r0, sl
008bd080  9b 58                                            ldr r3, [r3, r2]
008bd082  52 46                                            mov r2, sl
008bd084  13 60                                            str r3, [r2]
008bd086  3c bc                                            pop {r2, r3, r4, r5}
008bd088  90 46                                            mov r8, r2
008bd08a  99 46                                            mov sb, r3
008bd08c  a2 46                                            mov sl, r4
008bd08e  ab 46                                            mov fp, r5
008bd090  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bd092  38 1d                                            adds r0, r7, #4
008bd094  04 1c                                            adds r4, r0, #0
008bd096  00 25                                            movs r5, #0
008bd098  d0 e7                                            b #0x8bd03c

; FUNCTION 0x008bd09c, declared_size=152, range_size=152, mode=thumb
; class-group: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >
; alias: _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE22insert_unique_noresizeERKS3_
; demangled: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >::insert_unique_noresize(std::pair<int const, std::locale> const&)
; decoder-mode: thumb
008bd09c  f0 b5                                            push {r4, r5, r6, r7, lr}
008bd09e  4f 46                                            mov r7, sb
008bd0a0  46 46                                            mov r6, r8
008bd0a2  c0 b4                                            push {r6, r7}
008bd0a4  07 1c                                            adds r7, r0, #0
008bd0a6  0d 1c                                            adds r5, r1, #0
008bd0a8  88 68                                            ldr r0, [r1, #8]
008bd0aa  c9 68                                            ldr r1, [r1, #0xc]
008bd0ac  14 68                                            ldr r4, [r2]
008bd0ae  81 46                                            mov sb, r0
008bd0b0  09 1a                                            subs r1, r1, r0
008bd0b2  89 10                                            asrs r1, r1, #2
008bd0b4  83 b0                                            sub sp, #0xc
008bd0b6  01 39                                            subs r1, #1
008bd0b8  20 1c                                            adds r0, r4, #0
008bd0ba  90 46                                            mov r8, r2
008bd0bc  51 f6 36 e5                                      blx #0x30eb2c
008bd0c0  8b 00                                            lsls r3, r1, #2
008bd0c2  0a 1c                                            adds r2, r1, #0
008bd0c4  49 46                                            mov r1, sb
008bd0c6  5e 58                                            ldr r6, [r3, r1]
008bd0c8  53 1c                                            adds r3, r2, #1
008bd0ca  9b 00                                            lsls r3, r3, #2
008bd0cc  59 58                                            ldr r1, [r3, r1]
008bd0ce  33 1c                                            adds r3, r6, #0
008bd0d0  8e 42                                            cmp r6, r1
008bd0d2  04 d1                                            bne #0x8bd0de
008bd0d4  24 e0                                            b #0x8bd120
008bd0d6  5a 68                                            ldr r2, [r3, #4]
008bd0d8  a2 42                                            cmp r2, r4
008bd0da  1d d0                                            beq #0x8bd118
008bd0dc  1b 68                                            ldr r3, [r3]
008bd0de  99 42                                            cmp r1, r3
008bd0e0  f9 d1                                            bne #0x8bd0d6
008bd0e2  28 1d                                            adds r0, r5, #4
008bd0e4  ff f7 52 ff                                      bl #0x8bcf8c
008bd0e8  41 46                                            mov r1, r8
008bd0ea  08 c9                                            ldm r1!, {r3}
008bd0ec  04 1c                                            adds r4, r0, #0
008bd0ee  43 60                                            str r3, [r0, #4]
008bd0f0  08 30                                            adds r0, #8
008bd0f2  e6 f7 35 fa                                      bl #0x8a3560
008bd0f6  00 23                                            movs r3, #0
008bd0f8  23 60                                            str r3, [r4]
008bd0fa  33 68                                            ldr r3, [r6]
008bd0fc  23 60                                            str r3, [r4]
008bd0fe  34 60                                            str r4, [r6]
008bd100  6b 69                                            ldr r3, [r5, #0x14]
008bd102  01 33                                            adds r3, #1
008bd104  6b 61                                            str r3, [r5, #0x14]
008bd106  01 23                                            movs r3, #1
008bd108  3c 60                                            str r4, [r7]
008bd10a  3b 71                                            strb r3, [r7, #4]
008bd10c  03 b0                                            add sp, #0xc
008bd10e  38 1c                                            adds r0, r7, #0
008bd110  0c bc                                            pop {r2, r3}
008bd112  90 46                                            mov r8, r2
008bd114  99 46                                            mov sb, r3
008bd116  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bd118  3b 60                                            str r3, [r7]
008bd11a  00 23                                            movs r3, #0
008bd11c  3b 71                                            strb r3, [r7, #4]
008bd11e  f5 e7                                            b #0x8bd10c
008bd120  43 46                                            mov r3, r8
008bd122  01 a8                                            add r0, sp, #4
008bd124  29 1c                                            adds r1, r5, #0
008bd126  ff f7 63 ff                                      bl #0x8bcff0
008bd12a  01 9b                                            ldr r3, [sp, #4]
008bd12c  3b 60                                            str r3, [r7]
008bd12e  01 23                                            movs r3, #1
008bd130  3b 71                                            strb r3, [r7, #4]
008bd132  eb e7                                            b #0x8bd10c

; FUNCTION 0x008bd29c, declared_size=42, range_size=42, mode=thumb
; class-group: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >
; alias: _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE5clearEv
; demangled: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >::clear()
; decoder-mode: thumb
008bd29c  30 b5                                            push {r4, r5, lr}
008bd29e  01 1d                                            adds r1, r0, #4
008bd2a0  04 1c                                            adds r4, r0, #0
008bd2a2  83 b0                                            sub sp, #0xc
008bd2a4  08 1c                                            adds r0, r1, #0
008bd2a6  ff f7 45 ff                                      bl #0x8bd134
008bd2aa  e1 68                                            ldr r1, [r4, #0xc]
008bd2ac  a3 68                                            ldr r3, [r4, #8]
008bd2ae  20 1c                                            adds r0, r4, #0
008bd2b0  00 25                                            movs r5, #0
008bd2b2  c9 1a                                            subs r1, r1, r3
008bd2b4  01 aa                                            add r2, sp, #4
008bd2b6  89 10                                            asrs r1, r1, #2
008bd2b8  08 30                                            adds r0, #8
008bd2ba  01 95                                            str r5, [sp, #4]
008bd2bc  f6 f7 8e f9                                      bl #0x8b35dc
008bd2c0  03 b0                                            add sp, #0xc
008bd2c2  65 61                                            str r5, [r4, #0x14]
008bd2c4  30 bd                                            pop {r4, r5, pc}

; FUNCTION 0x008bd2c8, declared_size=52, range_size=52, mode=thumb
; class-group: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >
; alias: _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EED1Ev
; demangled: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >::~hashtable()
; decoder-mode: thumb
008bd2c8  10 b5                                            push {r4, lr}
008bd2ca  04 1c                                            adds r4, r0, #0
008bd2cc  ff f7 e6 ff                                      bl #0x8bd29c
008bd2d0  a0 68                                            ldr r0, [r4, #8]
008bd2d2  23 1c                                            adds r3, r4, #0
008bd2d4  08 33                                            adds r3, #8
008bd2d6  00 28                                            cmp r0, #0
008bd2d8  07 d0                                            beq #0x8bd2ea
008bd2da  99 68                                            ldr r1, [r3, #8]
008bd2dc  09 1a                                            subs r1, r1, r0
008bd2de  89 10                                            asrs r1, r1, #2
008bd2e0  89 00                                            lsls r1, r1, #2
008bd2e2  80 29                                            cmp r1, #0x80
008bd2e4  07 d8                                            bhi #0x8bd2f6
008bd2e6  f8 f7 b9 ff                                      bl #0x8b625c
008bd2ea  21 1d                                            adds r1, r4, #4
008bd2ec  08 1c                                            adds r0, r1, #0
008bd2ee  ff f7 21 ff                                      bl #0x8bd134
008bd2f2  20 1c                                            adds r0, r4, #0
008bd2f4  10 bd                                            pop {r4, pc}
008bd2f6  50 f6 dc e7                                      blx #0x30e2b0
008bd2fa  f6 e7                                            b #0x8bd2ea

; FUNCTION 0x008bd47c, declared_size=276, range_size=276, mode=thumb
; class-group: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >
; alias: _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE9_M_rehashEj
; demangled: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >::_M_rehash(unsigned int)
; decoder-mode: thumb
008bd47c  f0 b5                                            push {r4, r5, r6, r7, lr}
008bd47e  5f 46                                            mov r7, fp
008bd480  56 46                                            mov r6, sl
008bd482  4d 46                                            mov r5, sb
008bd484  44 46                                            mov r4, r8
008bd486  f0 b4                                            push {r4, r5, r6, r7}
008bd488  87 b0                                            sub sp, #0x1c
008bd48a  00 23                                            movs r3, #0
008bd48c  06 1c                                            adds r6, r0, #0
008bd48e  04 93                                            str r3, [sp, #0x10]
008bd490  03 93                                            str r3, [sp, #0xc]
008bd492  8a 46                                            mov sl, r1
008bd494  68 46                                            mov r0, sp
008bd496  01 31                                            adds r1, #1
008bd498  03 aa                                            add r2, sp, #0xc
008bd49a  05 ab                                            add r3, sp, #0x14
008bd49c  f6 f7 7c f8                                      bl #0x8b3598
008bd4a0  31 1d                                            adds r1, r6, #4
008bd4a2  e8 46                                            mov r8, sp
008bd4a4  89 46                                            mov sb, r1
008bd4a6  04 af                                            add r7, sp, #0x10
008bd4a8  75 68                                            ldr r5, [r6, #4]
008bd4aa  00 2d                                            cmp r5, #0
008bd4ac  43 d0                                            beq #0x8bd536
008bd4ae  6c 68                                            ldr r4, [r5, #4]
008bd4b0  51 46                                            mov r1, sl
008bd4b2  20 1c                                            adds r0, r4, #0
008bd4b4  51 f6 3a e3                                      blx #0x30eb2c
008bd4b8  2b 68                                            ldr r3, [r5]
008bd4ba  8c 46                                            mov ip, r1
008bd4bc  29 1c                                            adds r1, r5, #0
008bd4be  00 2b                                            cmp r3, #0
008bd4c0  02 d0                                            beq #0x8bd4c8
008bd4c2  5a 68                                            ldr r2, [r3, #4]
008bd4c4  94 42                                            cmp r4, r2
008bd4c6  5a d0                                            beq #0x8bd57e
008bd4c8  42 46                                            mov r2, r8
008bd4ca  12 68                                            ldr r2, [r2]
008bd4cc  63 46                                            mov r3, ip
008bd4ce  93 46                                            mov fp, r2
008bd4d0  9a 00                                            lsls r2, r3, #2
008bd4d2  5a 44                                            add r2, fp
008bd4d4  14 68                                            ldr r4, [r2]
008bd4d6  3b 68                                            ldr r3, [r7]
008bd4d8  9c 42                                            cmp r4, r3
008bd4da  53 d0                                            beq #0x8bd584
008bd4dc  04 3a                                            subs r2, #4
008bd4de  13 68                                            ldr r3, [r2]
008bd4e0  9c 42                                            cmp r4, r3
008bd4e2  fb d0                                            beq #0x8bd4dc
008bd4e4  58 46                                            mov r0, fp
008bd4e6  12 1a                                            subs r2, r2, r0
008bd4e8  92 10                                            asrs r2, r2, #2
008bd4ea  01 32                                            adds r2, #1
008bd4ec  18 68                                            ldr r0, [r3]
008bd4ee  01 e0                                            b #0x8bd4f4
008bd4f0  1b 68                                            ldr r3, [r3]
008bd4f2  00 68                                            ldr r0, [r0]
008bd4f4  84 42                                            cmp r4, r0
008bd4f6  fb d1                                            bne #0x8bd4f0
008bd4f8  92 00                                            lsls r2, r2, #2
008bd4fa  89 45                                            cmp sb, r1
008bd4fc  0b d0                                            beq #0x8bd516
008bd4fe  8b 42                                            cmp r3, r1
008bd500  09 d0                                            beq #0x8bd516
008bd502  99 45                                            cmp sb, r3
008bd504  07 d0                                            beq #0x8bd516
008bd506  0c 68                                            ldr r4, [r1]
008bd508  18 68                                            ldr r0, [r3]
008bd50a  74 60                                            str r4, [r6, #4]
008bd50c  1d 60                                            str r5, [r3]
008bd50e  08 60                                            str r0, [r1]
008bd510  41 46                                            mov r1, r8
008bd512  09 68                                            ldr r1, [r1]
008bd514  8b 46                                            mov fp, r1
008bd516  63 46                                            mov r3, ip
008bd518  01 33                                            adds r3, #1
008bd51a  9b 00                                            lsls r3, r3, #2
008bd51c  58 46                                            mov r0, fp
008bd51e  81 18                                            adds r1, r0, r2
008bd520  9a 1a                                            subs r2, r3, r2
008bd522  92 10                                            asrs r2, r2, #2
008bd524  00 2a                                            cmp r2, #0
008bd526  bf dd                                            ble #0x8bd4a8
008bd528  01 3a                                            subs r2, #1
008bd52a  20 c1                                            stm r1!, {r5}
008bd52c  00 2a                                            cmp r2, #0
008bd52e  fb d1                                            bne #0x8bd528
008bd530  75 68                                            ldr r5, [r6, #4]
008bd532  00 2d                                            cmp r5, #0
008bd534  bb d1                                            bne #0x8bd4ae
008bd536  04 9b                                            ldr r3, [sp, #0x10]
008bd538  b0 68                                            ldr r0, [r6, #8]
008bd53a  41 46                                            mov r1, r8
008bd53c  73 60                                            str r3, [r6, #4]
008bd53e  00 9b                                            ldr r3, [sp]
008bd540  04 95                                            str r5, [sp, #0x10]
008bd542  00 90                                            str r0, [sp]
008bd544  b3 60                                            str r3, [r6, #8]
008bd546  4a 68                                            ldr r2, [r1, #4]
008bd548  f3 68                                            ldr r3, [r6, #0xc]
008bd54a  f2 60                                            str r2, [r6, #0xc]
008bd54c  4b 60                                            str r3, [r1, #4]
008bd54e  33 69                                            ldr r3, [r6, #0x10]
008bd550  8a 68                                            ldr r2, [r1, #8]
008bd552  32 61                                            str r2, [r6, #0x10]
008bd554  8b 60                                            str r3, [r1, #8]
008bd556  00 28                                            cmp r0, #0
008bd558  06 d0                                            beq #0x8bd568
008bd55a  19 1a                                            subs r1, r3, r0
008bd55c  89 10                                            asrs r1, r1, #2
008bd55e  89 00                                            lsls r1, r1, #2
008bd560  80 29                                            cmp r1, #0x80
008bd562  12 d8                                            bhi #0x8bd58a
008bd564  f8 f7 7a fe                                      bl #0x8b625c
008bd568  38 1c                                            adds r0, r7, #0
008bd56a  39 1c                                            adds r1, r7, #0
008bd56c  ff f7 e2 fd                                      bl #0x8bd134
008bd570  07 b0                                            add sp, #0x1c
008bd572  3c bc                                            pop {r2, r3, r4, r5}
008bd574  90 46                                            mov r8, r2
008bd576  99 46                                            mov sb, r3
008bd578  a2 46                                            mov sl, r4
008bd57a  ab 46                                            mov fp, r5
008bd57c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bd57e  1b 68                                            ldr r3, [r3]
008bd580  09 68                                            ldr r1, [r1]
008bd582  9c e7                                            b #0x8bd4be
008bd584  00 22                                            movs r2, #0
008bd586  3b 1c                                            adds r3, r7, #0
008bd588  b7 e7                                            b #0x8bd4fa
008bd58a  50 f6 92 e6                                      blx #0x30e2b0
008bd58e  eb e7                                            b #0x8bd568

; FUNCTION 0x008bd590, declared_size=232, range_size=232, mode=thumb
; class-group: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >
; alias: _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE9_M_reduceEv
; demangled: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >::_M_reduce()
; decoder-mode: thumb
008bd590  f0 b5                                            push {r4, r5, r6, r7, lr}
008bd592  4f 46                                            mov r7, sb
008bd594  46 46                                            mov r6, r8
008bd596  c0 b4                                            push {r6, r7}
008bd598  83 68                                            ldr r3, [r0, #8]
008bd59a  c4 68                                            ldr r4, [r0, #0xc]
008bd59c  83 b0                                            sub sp, #0xc
008bd59e  05 1c                                            adds r5, r0, #0
008bd5a0  40 69                                            ldr r0, [r0, #0x14]
008bd5a2  e4 1a                                            subs r4, r4, r3
008bd5a4  50 f6 9c e6                                      blx #0x30e2e0
008bd5a8  a4 10                                            asrs r4, r4, #2
008bd5aa  01 3c                                            subs r4, #1
008bd5ac  06 1c                                            adds r6, r0, #0
008bd5ae  20 1c                                            adds r0, r4, #0
008bd5b0  50 f6 96 e6                                      blx #0x30e2e0
008bd5b4  01 1c                                            adds r1, r0, #0
008bd5b6  30 1c                                            adds r0, r6, #0
008bd5b8  51 f6 6c e3                                      blx #0x30ec94
008bd5bc  fa 21                                            movs r1, #0xfa
008bd5be  06 1c                                            adds r6, r0, #0
008bd5c0  89 05                                            lsls r1, r1, #0x16
008bd5c2  a8 69                                            ldr r0, [r5, #0x18]
008bd5c4  51 f6 d2 e3                                      blx #0x30ed6c
008bd5c8  01 1c                                            adds r1, r0, #0
008bd5ca  30 1c                                            adds r0, r6, #0
008bd5cc  50 f6 94 e6                                      blx #0x30e2f8
008bd5d0  00 28                                            cmp r0, #0
008bd5d2  04 d0                                            beq #0x8bd5de
008bd5d4  03 b0                                            add sp, #0xc
008bd5d6  0c bc                                            pop {r2, r3}
008bd5d8  90 46                                            mov r8, r2
008bd5da  99 46                                            mov sb, r3
008bd5dc  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bd5de  20 1c                                            adds r0, r4, #0
008bd5e0  01 a9                                            add r1, sp, #4
008bd5e2  6a 46                                            mov r2, sp
008bd5e4  f5 f7 fa fe                                      bl #0x8b33dc
008bd5e8  01 9b                                            ldr r3, [sp, #4]
008bd5ea  00 9e                                            ldr r6, [sp]
008bd5ec  98 46                                            mov r8, r3
008bd5ee  46 45                                            cmp r6, r8
008bd5f0  3e d0                                            beq #0x8bd670
008bd5f2  68 69                                            ldr r0, [r5, #0x14]
008bd5f4  50 f6 74 e6                                      blx #0x30e2e0
008bd5f8  ab 69                                            ldr r3, [r5, #0x18]
008bd5fa  34 1f                                            subs r4, r6, #4
008bd5fc  07 1c                                            adds r7, r0, #0
008bd5fe  20 68                                            ldr r0, [r4]
008bd600  99 46                                            mov sb, r3
008bd602  50 f6 6e e6                                      blx #0x30e2e0
008bd606  01 1c                                            adds r1, r0, #0
008bd608  38 1c                                            adds r0, r7, #0
008bd60a  51 f6 44 e3                                      blx #0x30ec94
008bd60e  49 46                                            mov r1, sb
008bd610  50 f6 72 e6                                      blx #0x30e2f8
008bd614  00 28                                            cmp r0, #0
008bd616  dd d1                                            bne #0x8bd5d4
008bd618  a0 45                                            cmp r8, r4
008bd61a  24 d0                                            beq #0x8bd666
008bd61c  34 1c                                            adds r4, r6, #0
008bd61e  08 3c                                            subs r4, #8
008bd620  20 68                                            ldr r0, [r4]
008bd622  50 f6 5e e6                                      blx #0x30e2e0
008bd626  01 1c                                            adds r1, r0, #0
008bd628  38 1c                                            adds r0, r7, #0
008bd62a  51 f6 34 e3                                      blx #0x30ec94
008bd62e  01 1c                                            adds r1, r0, #0
008bd630  48 46                                            mov r0, sb
008bd632  51 f6 6c e0                                      blx #0x30e70c
008bd636  00 28                                            cmp r0, #0
008bd638  11 d0                                            beq #0x8bd65e
008bd63a  14 e0                                            b #0x8bd666
008bd63c  68 69                                            ldr r0, [r5, #0x14]
008bd63e  50 f6 50 e6                                      blx #0x30e2e0
008bd642  04 3c                                            subs r4, #4
008bd644  07 1c                                            adds r7, r0, #0
008bd646  20 68                                            ldr r0, [r4]
008bd648  50 f6 4a e6                                      blx #0x30e2e0
008bd64c  01 1c                                            adds r1, r0, #0
008bd64e  38 1c                                            adds r0, r7, #0
008bd650  51 f6 20 e3                                      blx #0x30ec94
008bd654  a9 69                                            ldr r1, [r5, #0x18]
008bd656  50 f6 50 e6                                      blx #0x30e2f8
008bd65a  00 28                                            cmp r0, #0
008bd65c  03 d1                                            bne #0x8bd666
008bd65e  26 1d                                            adds r6, r4, #4
008bd660  00 96                                            str r6, [sp]
008bd662  a0 45                                            cmp r8, r4
008bd664  ea d1                                            bne #0x8bd63c
008bd666  31 68                                            ldr r1, [r6]
008bd668  28 1c                                            adds r0, r5, #0
008bd66a  ff f7 07 ff                                      bl #0x8bd47c
008bd66e  b1 e7                                            b #0x8bd5d4
008bd670  31 68                                            ldr r1, [r6]
008bd672  a1 42                                            cmp r1, r4
008bd674  f8 d3                                            blo #0x8bd668
008bd676  ad e7                                            b #0x8bd5d4

; FUNCTION 0x008bd678, declared_size=320, range_size=320, mode=thumb
; class-group: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >
; alias: _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE5eraseERS1_
; demangled: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >::erase(int const&)
; decoder-mode: thumb
008bd678  f0 b5                                            push {r4, r5, r6, r7, lr}
008bd67a  5f 46                                            mov r7, fp
008bd67c  56 46                                            mov r6, sl
008bd67e  4d 46                                            mov r5, sb
008bd680  44 46                                            mov r4, r8
008bd682  f0 b4                                            push {r4, r5, r6, r7}
008bd684  80 46                                            mov r8, r0
008bd686  42 46                                            mov r2, r8
008bd688  80 68                                            ldr r0, [r0, #8]
008bd68a  0f 68                                            ldr r7, [r1]
008bd68c  0e 1c                                            adds r6, r1, #0
008bd68e  d1 68                                            ldr r1, [r2, #0xc]
008bd690  83 46                                            mov fp, r0
008bd692  83 b0                                            sub sp, #0xc
008bd694  09 1a                                            subs r1, r1, r0
008bd696  89 10                                            asrs r1, r1, #2
008bd698  01 39                                            subs r1, #1
008bd69a  38 1c                                            adds r0, r7, #0
008bd69c  51 f6 46 e2                                      blx #0x30eb2c
008bd6a0  8b 00                                            lsls r3, r1, #2
008bd6a2  01 31                                            adds r1, #1
008bd6a4  89 00                                            lsls r1, r1, #2
008bd6a6  5b 44                                            add r3, fp
008bd6a8  1c 68                                            ldr r4, [r3]
008bd6aa  58 46                                            mov r0, fp
008bd6ac  01 91                                            str r1, [sp, #4]
008bd6ae  45 58                                            ldr r5, [r0, r1]
008bd6b0  00 21                                            movs r1, #0
008bd6b2  8a 46                                            mov sl, r1
008bd6b4  ac 42                                            cmp r4, r5
008bd6b6  14 d0                                            beq #0x8bd6e2
008bd6b8  62 68                                            ldr r2, [r4, #4]
008bd6ba  ba 42                                            cmp r2, r7
008bd6bc  31 d0                                            beq #0x8bd722
008bd6be  23 68                                            ldr r3, [r4]
008bd6c0  04 e0                                            b #0x8bd6cc
008bd6c2  5a 68                                            ldr r2, [r3, #4]
008bd6c4  ba 42                                            cmp r2, r7
008bd6c6  14 d0                                            beq #0x8bd6f2
008bd6c8  24 68                                            ldr r4, [r4]
008bd6ca  1b 68                                            ldr r3, [r3]
008bd6cc  9d 42                                            cmp r5, r3
008bd6ce  f8 d1                                            bne #0x8bd6c2
008bd6d0  00 22                                            movs r2, #0
008bd6d2  92 46                                            mov sl, r2
008bd6d4  40 46                                            mov r0, r8
008bd6d6  43 69                                            ldr r3, [r0, #0x14]
008bd6d8  51 46                                            mov r1, sl
008bd6da  5b 1a                                            subs r3, r3, r1
008bd6dc  43 61                                            str r3, [r0, #0x14]
008bd6de  ff f7 57 ff                                      bl #0x8bd590
008bd6e2  03 b0                                            add sp, #0xc
008bd6e4  50 46                                            mov r0, sl
008bd6e6  3c bc                                            pop {r2, r3, r4, r5}
008bd6e8  90 46                                            mov r8, r2
008bd6ea  99 46                                            mov sb, r3
008bd6ec  a2 46                                            mov sl, r4
008bd6ee  ab 46                                            mov fp, r5
008bd6f0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bd6f2  00 22                                            movs r2, #0
008bd6f4  92 46                                            mov sl, r2
008bd6f6  27 68                                            ldr r7, [r4]
008bd6f8  3b 68                                            ldr r3, [r7]
008bd6fa  38 1c                                            adds r0, r7, #0
008bd6fc  08 30                                            adds r0, #8
008bd6fe  23 60                                            str r3, [r4]
008bd700  99 46                                            mov sb, r3
008bd702  e5 f7 f7 fe                                      bl #0x8a34f4
008bd706  38 1c                                            adds r0, r7, #0
008bd708  0c 21                                            movs r1, #0xc
008bd70a  f8 f7 a7 fd                                      bl #0x8b625c
008bd70e  01 20                                            movs r0, #1
008bd710  82 44                                            add sl, r0
008bd712  4d 45                                            cmp r5, sb
008bd714  de d0                                            beq #0x8bd6d4
008bd716  49 46                                            mov r1, sb
008bd718  4a 68                                            ldr r2, [r1, #4]
008bd71a  33 68                                            ldr r3, [r6]
008bd71c  9a 42                                            cmp r2, r3
008bd71e  d9 d1                                            bne #0x8bd6d4
008bd720  e9 e7                                            b #0x8bd6f6
008bd722  40 46                                            mov r0, r8
008bd724  42 68                                            ldr r2, [r0, #4]
008bd726  94 42                                            cmp r4, r2
008bd728  3f d0                                            beq #0x8bd7aa
008bd72a  04 3b                                            subs r3, #4
008bd72c  18 68                                            ldr r0, [r3]
008bd72e  81 46                                            mov sb, r0
008bd730  4c 45                                            cmp r4, sb
008bd732  04 d1                                            bne #0x8bd73e
008bd734  04 3b                                            subs r3, #4
008bd736  19 68                                            ldr r1, [r3]
008bd738  89 46                                            mov sb, r1
008bd73a  4c 45                                            cmp r4, sb
008bd73c  fa d0                                            beq #0x8bd734
008bd73e  49 46                                            mov r1, sb
008bd740  58 46                                            mov r0, fp
008bd742  0f 68                                            ldr r7, [r1]
008bd744  1a 1a                                            subs r2, r3, r0
008bd746  92 10                                            asrs r2, r2, #2
008bd748  01 32                                            adds r2, #1
008bd74a  3b 1c                                            adds r3, r7, #0
008bd74c  02 e0                                            b #0x8bd754
008bd74e  b9 46                                            mov sb, r7
008bd750  1b 68                                            ldr r3, [r3]
008bd752  3f 68                                            ldr r7, [r7]
008bd754  9c 42                                            cmp r4, r3
008bd756  fa d1                                            bne #0x8bd74e
008bd758  92 00                                            lsls r2, r2, #2
008bd75a  93 46                                            mov fp, r2
008bd75c  00 22                                            movs r2, #0
008bd75e  92 46                                            mov sl, r2
008bd760  3c 68                                            ldr r4, [r7]
008bd762  4b 46                                            mov r3, sb
008bd764  38 1c                                            adds r0, r7, #0
008bd766  1c 60                                            str r4, [r3]
008bd768  08 30                                            adds r0, #8
008bd76a  e5 f7 c3 fe                                      bl #0x8a34f4
008bd76e  38 1c                                            adds r0, r7, #0
008bd770  0c 21                                            movs r1, #0xc
008bd772  f8 f7 73 fd                                      bl #0x8b625c
008bd776  01 20                                            movs r0, #1
008bd778  82 44                                            add sl, r0
008bd77a  a5 42                                            cmp r5, r4
008bd77c  04 d0                                            beq #0x8bd788
008bd77e  62 68                                            ldr r2, [r4, #4]
008bd780  33 68                                            ldr r3, [r6]
008bd782  9a 42                                            cmp r2, r3
008bd784  0e d0                                            beq #0x8bd7a4
008bd786  25 1c                                            adds r5, r4, #0
008bd788  01 98                                            ldr r0, [sp, #4]
008bd78a  43 46                                            mov r3, r8
008bd78c  9a 68                                            ldr r2, [r3, #8]
008bd78e  59 46                                            mov r1, fp
008bd790  43 1a                                            subs r3, r0, r1
008bd792  9b 10                                            asrs r3, r3, #2
008bd794  5a 44                                            add r2, fp
008bd796  00 2b                                            cmp r3, #0
008bd798  9c dd                                            ble #0x8bd6d4
008bd79a  01 3b                                            subs r3, #1
008bd79c  20 c2                                            stm r2!, {r5}
008bd79e  00 2b                                            cmp r3, #0
008bd7a0  fb d1                                            bne #0x8bd79a
008bd7a2  97 e7                                            b #0x8bd6d4
008bd7a4  49 46                                            mov r1, sb
008bd7a6  0f 68                                            ldr r7, [r1]
008bd7a8  da e7                                            b #0x8bd760
008bd7aa  04 21                                            movs r1, #4
008bd7ac  89 46                                            mov sb, r1
008bd7ae  00 22                                            movs r2, #0
008bd7b0  c1 44                                            add sb, r8
008bd7b2  27 1c                                            adds r7, r4, #0
008bd7b4  93 46                                            mov fp, r2
008bd7b6  d1 e7                                            b #0x8bd75c

; FUNCTION 0x008bd808, declared_size=120, range_size=120, mode=thumb
; class-group: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >
; alias: _ZNSt9hashtableISt4pairIKiSt6localeEiSt4hashIiENSt4priv15_HashMapTraitsTIS3_EENS6_10_Select1stIS3_EESt8equal_toIiESaIS3_EE10_M_enlargeEj
; demangled: std::hashtable<std::pair<int const, std::locale>, int, std::hash<int>, std::priv::_HashMapTraitsT<std::pair<int const, std::locale> >, std::priv::_Select1st<std::pair<int const, std::locale> >, std::equal_to<int>, std::allocator<std::pair<int const, std::locale> > >::_M_enlarge(unsigned int)
; decoder-mode: thumb
008bd808  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008bd80a  05 1c                                            adds r5, r0, #0
008bd80c  08 1c                                            adds r0, r1, #0
008bd80e  50 f6 68 e5                                      blx #0x30e2e0
008bd812  a9 69                                            ldr r1, [r5, #0x18]
008bd814  51 f6 3e e2                                      blx #0x30ec94
008bd818  00 f0 42 ed                                      blx #0x8be2a0
008bd81c  ea 68                                            ldr r2, [r5, #0xc]
008bd81e  ab 68                                            ldr r3, [r5, #8]
008bd820  15 4c                                            ldr r4, [pc, #0x54]
008bd822  d3 1a                                            subs r3, r2, r3
008bd824  9b 10                                            asrs r3, r3, #2
008bd826  01 3b                                            subs r3, #1
008bd828  7c 44                                            add r4, pc
008bd82a  98 42                                            cmp r0, r3
008bd82c  20 d9                                            bls #0x8bd870
008bd82e  13 4a                                            ldr r2, [pc, #0x4c]
008bd830  1e 26                                            movs r6, #0x1e
008bd832  a7 58                                            ldr r7, [r4, r2]
008bd834  94 46                                            mov ip, r2
008bd836  73 10                                            asrs r3, r6, #1
008bd838  9a 00                                            lsls r2, r3, #2
008bd83a  ba 18                                            adds r2, r7, r2
008bd83c  11 68                                            ldr r1, [r2]
008bd83e  88 42                                            cmp r0, r1
008bd840  07 d8                                            bhi #0x8bd852
008bd842  1e 1e                                            subs r6, r3, #0
008bd844  0a dd                                            ble #0x8bd85c
008bd846  5b 10                                            asrs r3, r3, #1
008bd848  9a 00                                            lsls r2, r3, #2
008bd84a  ba 18                                            adds r2, r7, r2
008bd84c  11 68                                            ldr r1, [r2]
008bd84e  88 42                                            cmp r0, r1
008bd850  f7 d9                                            bls #0x8bd842
008bd852  01 3e                                            subs r6, #1
008bd854  f6 1a                                            subs r6, r6, r3
008bd856  17 1d                                            adds r7, r2, #4
008bd858  00 2e                                            cmp r6, #0
008bd85a  ec dc                                            bgt #0x8bd836
008bd85c  62 46                                            mov r2, ip
008bd85e  a3 58                                            ldr r3, [r4, r2]
008bd860  1a 1c                                            adds r2, r3, #0
008bd862  78 32                                            adds r2, #0x78
008bd864  97 42                                            cmp r7, r2
008bd866  04 d0                                            beq #0x8bd872
008bd868  39 68                                            ldr r1, [r7]
008bd86a  28 1c                                            adds r0, r5, #0
008bd86c  ff f7 06 fe                                      bl #0x8bd47c
008bd870  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008bd872  59 6f                                            ldr r1, [r3, #0x74]
008bd874  f9 e7                                            b #0x8bd86a
008bd876  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bd878  6c 72 0d 00 fc 1c 00 00                          .byte 0x6c, 0x72, 0x0d, 0x00, 0xfc, 0x1c, 0x00, 0x00
