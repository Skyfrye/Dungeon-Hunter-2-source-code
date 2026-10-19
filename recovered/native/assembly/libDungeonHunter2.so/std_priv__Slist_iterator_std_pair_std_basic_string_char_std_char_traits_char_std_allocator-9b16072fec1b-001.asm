; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b3b4c, declared_size=220, range_size=220, mode=thumb
; class-group: std::priv::_Slist_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::_Nonconst_traits<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > > std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >
; alias: _ZNKSt9hashtableISt4pairIKSsS0_IPvjEESsSt4hashISsENSt4priv15_HashMapTraitsTIS4_EENS7_10_Select1stIS4_EESt8equal_toISsESaIS4_EE7_M_findIPKcEENS7_15_Slist_iteratorIS4_St16_Nonconst_traitsIS4_EEERKT_
; demangled: std::priv::_Slist_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::_Nonconst_traits<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > > std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >::_M_find<char const*>(char const* const&) const
; decoder-mode: thumb
008b3b4c  f0 b5                                            push {r4, r5, r6, r7, lr}
008b3b4e  5f 46                                            mov r7, fp
008b3b50  56 46                                            mov r6, sl
008b3b52  4d 46                                            mov r5, sb
008b3b54  44 46                                            mov r4, r8
008b3b56  f0 b4                                            push {r4, r5, r6, r7}
008b3b58  31 4b                                            ldr r3, [pc, #0xc4]
008b3b5a  0c 1c                                            adds r4, r1, #0
008b3b5c  31 49                                            ldr r1, [pc, #0xc4]
008b3b5e  9b 46                                            mov fp, r3
008b3b60  fb 44                                            add fp, pc
008b3b62  16 1c                                            adds r6, r2, #0
008b3b64  5a 46                                            mov r2, fp
008b3b66  53 58                                            ldr r3, [r2, r1]
008b3b68  8b b0                                            sub sp, #0x2c
008b3b6a  00 90                                            str r0, [sp]
008b3b6c  1b 68                                            ldr r3, [r3]
008b3b6e  01 91                                            str r1, [sp, #4]
008b3b70  20 1c                                            adds r0, r4, #0
008b3b72  09 93                                            str r3, [sp, #0x24]
008b3b74  a3 68                                            ldr r3, [r4, #8]
008b3b76  e2 68                                            ldr r2, [r4, #0xc]
008b3b78  31 1c                                            adds r1, r6, #0
008b3b7a  03 ad                                            add r5, sp, #0xc
008b3b7c  d2 1a                                            subs r2, r2, r3
008b3b7e  92 10                                            asrs r2, r2, #2
008b3b80  01 3a                                            subs r2, #1
008b3b82  ff f7 9f ff                                      bl #0x8b3ac4
008b3b86  a3 68                                            ldr r3, [r4, #8]
008b3b88  82 00                                            lsls r2, r0, #2
008b3b8a  01 30                                            adds r0, #1
008b3b8c  80 00                                            lsls r0, r0, #2
008b3b8e  c0 58                                            ldr r0, [r0, r3]
008b3b90  d4 58                                            ldr r4, [r2, r3]
008b3b92  02 ab                                            add r3, sp, #8
008b3b94  81 46                                            mov sb, r0
008b3b96  9a 46                                            mov sl, r3
008b3b98  0e e0                                            b #0x8b3bb8
008b3b9a  af 42                                            cmp r7, r5
008b3b9c  08 d0                                            beq #0x8b3bb0
008b3b9e  00 2f                                            cmp r7, #0
008b3ba0  06 d0                                            beq #0x8b3bb0
008b3ba2  29 68                                            ldr r1, [r5]
008b3ba4  c9 1b                                            subs r1, r1, r7
008b3ba6  80 29                                            cmp r1, #0x80
008b3ba8  30 d8                                            bhi #0x8b3c0c
008b3baa  38 1c                                            adds r0, r7, #0
008b3bac  02 f0 56 fb                                      bl #0x8b625c
008b3bb0  42 46                                            mov r2, r8
008b3bb2  00 2a                                            cmp r2, #0
008b3bb4  30 d0                                            beq #0x8b3c18
008b3bb6  24 68                                            ldr r4, [r4]
008b3bb8  a1 45                                            cmp sb, r4
008b3bba  15 d0                                            beq #0x8b3be8
008b3bbc  31 68                                            ldr r1, [r6]
008b3bbe  52 46                                            mov r2, sl
008b3bc0  28 1c                                            adds r0, r5, #0
008b3bc2  60 f6 94 e2                                      blx #0x3140ec
008b3bc6  a0 69                                            ldr r0, [r4, #0x18]
008b3bc8  62 69                                            ldr r2, [r4, #0x14]
008b3bca  6f 69                                            ldr r7, [r5, #0x14]
008b3bcc  2b 69                                            ldr r3, [r5, #0x10]
008b3bce  01 21                                            movs r1, #1
008b3bd0  12 1a                                            subs r2, r2, r0
008b3bd2  db 1b                                            subs r3, r3, r7
008b3bd4  88 46                                            mov r8, r1
008b3bd6  9a 42                                            cmp r2, r3
008b3bd8  df d1                                            bne #0x8b3b9a
008b3bda  39 1c                                            adds r1, r7, #0
008b3bdc  5a f6 00 e5                                      blx #0x30e5e0
008b3be0  43 1e                                            subs r3, r0, #1
008b3be2  98 41                                            sbcs r0, r3
008b3be4  80 46                                            mov r8, r0
008b3be6  d8 e7                                            b #0x8b3b9a
008b3be8  00 99                                            ldr r1, [sp]
008b3bea  00 23                                            movs r3, #0
008b3bec  0b 60                                            str r3, [r1]
008b3bee  01 99                                            ldr r1, [sp, #4]
008b3bf0  5a 46                                            mov r2, fp
008b3bf2  00 98                                            ldr r0, [sp]
008b3bf4  53 58                                            ldr r3, [r2, r1]
008b3bf6  09 9a                                            ldr r2, [sp, #0x24]
008b3bf8  1b 68                                            ldr r3, [r3]
008b3bfa  9a 42                                            cmp r2, r3
008b3bfc  0a d1                                            bne #0x8b3c14
008b3bfe  0b b0                                            add sp, #0x2c
008b3c00  3c bc                                            pop {r2, r3, r4, r5}
008b3c02  90 46                                            mov r8, r2
008b3c04  99 46                                            mov sb, r3
008b3c06  a2 46                                            mov sl, r4
008b3c08  ab 46                                            mov fp, r5
008b3c0a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b3c0c  38 1c                                            adds r0, r7, #0
008b3c0e  5a f6 50 e3                                      blx #0x30e2b0
008b3c12  cd e7                                            b #0x8b3bb0
008b3c14  5a f6 7c e3                                      blx #0x30e310
008b3c18  00 9b                                            ldr r3, [sp]
008b3c1a  1c 60                                            str r4, [r3]
008b3c1c  e7 e7                                            b #0x8b3bee
008b3c1e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b3c20  34 0f 0e 00 ac 40 00 00                          .byte 0x34, 0x0f, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00
