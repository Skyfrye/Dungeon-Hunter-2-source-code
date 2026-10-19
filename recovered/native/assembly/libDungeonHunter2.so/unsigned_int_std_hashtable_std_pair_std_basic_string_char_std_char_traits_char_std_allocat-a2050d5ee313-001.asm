; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b3ac4, declared_size=136, range_size=136, mode=thumb
; class-group: unsigned int std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >
; alias: _ZNKSt9hashtableISt4pairIKSsS0_IPvjEESsSt4hashISsENSt4priv15_HashMapTraitsTIS4_EENS7_10_Select1stIS4_EESt8equal_toISsESaIS4_EE14_M_bkt_num_keyIPKcEEjRKT_j
; demangled: unsigned int std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >::_M_bkt_num_key<char const*>(char const* const&, unsigned int) const
; decoder-mode: thumb
008b3ac4  f0 b5                                            push {r4, r5, r6, r7, lr}
008b3ac6  47 46                                            mov r7, r8
008b3ac8  80 b4                                            push {r7}
008b3aca  1e 4d                                            ldr r5, [pc, #0x78]
008b3acc  1e 4f                                            ldr r7, [pc, #0x78]
008b3ace  88 b0                                            sub sp, #0x20
008b3ad0  7d 44                                            add r5, pc
008b3ad2  eb 59                                            ldr r3, [r5, r7]
008b3ad4  01 ae                                            add r6, sp, #4
008b3ad6  90 46                                            mov r8, r2
008b3ad8  1b 68                                            ldr r3, [r3]
008b3ada  30 1c                                            adds r0, r6, #0
008b3adc  6a 46                                            mov r2, sp
008b3ade  07 93                                            str r3, [sp, #0x1c]
008b3ae0  09 68                                            ldr r1, [r1]
008b3ae2  60 f6 04 e3                                      blx #0x3140ec
008b3ae6  74 69                                            ldr r4, [r6, #0x14]
008b3ae8  33 69                                            ldr r3, [r6, #0x10]
008b3aea  00 20                                            movs r0, #0
008b3aec  1b 1b                                            subs r3, r3, r4
008b3aee  9c 46                                            mov ip, r3
008b3af0  00 2b                                            cmp r3, #0
008b3af2  07 d0                                            beq #0x8b3b04
008b3af4  00 23                                            movs r3, #0
008b3af6  e2 5c                                            ldrb r2, [r4, r3]
008b3af8  81 00                                            lsls r1, r0, #2
008b3afa  01 33                                            adds r3, #1
008b3afc  8a 18                                            adds r2, r1, r2
008b3afe  80 18                                            adds r0, r0, r2
008b3b00  9c 45                                            cmp ip, r3
008b3b02  f8 d1                                            bne #0x8b3af6
008b3b04  41 46                                            mov r1, r8
008b3b06  5b f6 12 e0                                      blx #0x30eb2c
008b3b0a  88 46                                            mov r8, r1
008b3b0c  b4 42                                            cmp r4, r6
008b3b0e  08 d0                                            beq #0x8b3b22
008b3b10  00 2c                                            cmp r4, #0
008b3b12  06 d0                                            beq #0x8b3b22
008b3b14  31 68                                            ldr r1, [r6]
008b3b16  09 1b                                            subs r1, r1, r4
008b3b18  80 29                                            cmp r1, #0x80
008b3b1a  0c d8                                            bhi #0x8b3b36
008b3b1c  20 1c                                            adds r0, r4, #0
008b3b1e  02 f0 9d fb                                      bl #0x8b625c
008b3b22  eb 59                                            ldr r3, [r5, r7]
008b3b24  07 9a                                            ldr r2, [sp, #0x1c]
008b3b26  40 46                                            mov r0, r8
008b3b28  1b 68                                            ldr r3, [r3]
008b3b2a  9a 42                                            cmp r2, r3
008b3b2c  07 d1                                            bne #0x8b3b3e
008b3b2e  08 b0                                            add sp, #0x20
008b3b30  04 bc                                            pop {r2}
008b3b32  90 46                                            mov r8, r2
008b3b34  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b3b36  20 1c                                            adds r0, r4, #0
008b3b38  5a f6 ba e3                                      blx #0x30e2b0
008b3b3c  f1 e7                                            b #0x8b3b22
008b3b3e  5a f6 e8 e3                                      blx #0x30e310
008b3b42  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b3b44  c4 0f 0e 00 ac 40 00 00                          .byte 0xc4, 0x0f, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00
