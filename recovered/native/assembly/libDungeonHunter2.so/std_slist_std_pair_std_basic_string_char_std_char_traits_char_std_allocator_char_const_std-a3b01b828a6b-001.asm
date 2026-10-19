; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b39a0, declared_size=56, range_size=56, mode=thumb
; class-group: std::slist<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >
; alias: _ZNSt5slistISt4pairIKSsS0_IPvjEESaIS4_EE11erase_afterENSt4priv15_Slist_iteratorIS4_St16_Nonconst_traitsIS4_EEE
; demangled: std::slist<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >::erase_after(std::priv::_Slist_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::_Nonconst_traits<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >)
; decoder-mode: thumb
008b39a0  70 b5                                            push {r4, r5, r6, lr}
008b39a2  12 68                                            ldr r2, [r2]
008b39a4  05 1c                                            adds r5, r0, #0
008b39a6  14 68                                            ldr r4, [r2]
008b39a8  23 1c                                            adds r3, r4, #0
008b39aa  40 cb                                            ldm r3!, {r6}
008b39ac  16 60                                            str r6, [r2]
008b39ae  58 69                                            ldr r0, [r3, #0x14]
008b39b0  98 42                                            cmp r0, r3
008b39b2  07 d0                                            beq #0x8b39c4
008b39b4  00 28                                            cmp r0, #0
008b39b6  05 d0                                            beq #0x8b39c4
008b39b8  61 68                                            ldr r1, [r4, #4]
008b39ba  09 1a                                            subs r1, r1, r0
008b39bc  80 29                                            cmp r1, #0x80
008b39be  08 d8                                            bhi #0x8b39d2
008b39c0  02 f0 4c fc                                      bl #0x8b625c
008b39c4  20 1c                                            adds r0, r4, #0
008b39c6  24 21                                            movs r1, #0x24
008b39c8  02 f0 48 fc                                      bl #0x8b625c
008b39cc  2e 60                                            str r6, [r5]
008b39ce  28 1c                                            adds r0, r5, #0
008b39d0  70 bd                                            pop {r4, r5, r6, pc}
008b39d2  5a f6 6e e4                                      blx #0x30e2b0
008b39d6  f5 e7                                            b #0x8b39c4

; FUNCTION 0x008b3db0, declared_size=50, range_size=50, mode=thumb
; class-group: std::slist<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >
; alias: _ZNSt5slistISt4pairIKSsS0_IPvjEESaIS4_EE14_M_create_nodeERKS4_
; demangled: std::slist<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > const&)
; decoder-mode: thumb
008b3db0  30 b5                                            push {r4, r5, lr}
008b3db2  83 b0                                            sub sp, #0xc
008b3db4  24 23                                            movs r3, #0x24
008b3db6  01 a8                                            add r0, sp, #4
008b3db8  0d 1c                                            adds r5, r1, #0
008b3dba  01 93                                            str r3, [sp, #4]
008b3dbc  02 f0 1a fb                                      bl #0x8b63f4
008b3dc0  04 1c                                            adds r4, r0, #0
008b3dc2  04 30                                            adds r0, #4
008b3dc4  60 61                                            str r0, [r4, #0x14]
008b3dc6  a0 61                                            str r0, [r4, #0x18]
008b3dc8  69 69                                            ldr r1, [r5, #0x14]
008b3dca  2a 69                                            ldr r2, [r5, #0x10]
008b3dcc  5d f6 8c e4                                      blx #0x3116e8
008b3dd0  ab 69                                            ldr r3, [r5, #0x18]
008b3dd2  03 b0                                            add sp, #0xc
008b3dd4  20 1c                                            adds r0, r4, #0
008b3dd6  e3 61                                            str r3, [r4, #0x1c]
008b3dd8  eb 69                                            ldr r3, [r5, #0x1c]
008b3dda  23 62                                            str r3, [r4, #0x20]
008b3ddc  00 23                                            movs r3, #0
008b3dde  23 60                                            str r3, [r4]
008b3de0  30 bd                                            pop {r4, r5, pc}
