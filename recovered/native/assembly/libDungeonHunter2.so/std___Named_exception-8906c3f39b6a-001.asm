; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a22c4, declared_size=8, range_size=8, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNKSt17__Named_exception4whatEv
; demangled: std::__Named_exception::what() const
; decoder-mode: thumb
008a22c4  82 23                                            movs r3, #0x82
008a22c6  5b 00                                            lsls r3, r3, #1
008a22c8  c0 58                                            ldr r0, [r0, r3]
008a22ca  70 47                                            bx lr

; FUNCTION 0x008a22f4, declared_size=52, range_size=52, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionD1Ev
; demangled: std::__Named_exception::~__Named_exception()
; decoder-mode: thumb
008a22f4  10 b5                                            push {r4, lr}
008a22f6  0a 4b                                            ldr r3, [pc, #0x28]
008a22f8  0a 4a                                            ldr r2, [pc, #0x28]
008a22fa  04 1c                                            adds r4, r0, #0
008a22fc  7b 44                                            add r3, pc
008a22fe  9a 58                                            ldr r2, [r3, r2]
008a2300  82 23                                            movs r3, #0x82
008a2302  5b 00                                            lsls r3, r3, #1
008a2304  08 32                                            adds r2, #8
008a2306  02 60                                            str r2, [r0]
008a2308  c0 58                                            ldr r0, [r0, r3]
008a230a  23 1d                                            adds r3, r4, #4
008a230c  98 42                                            cmp r0, r3
008a230e  01 d0                                            beq #0x8a2314
008a2310  6b f6 ee e5                                      blx #0x30def0
008a2314  20 1c                                            adds r0, r4, #0
008a2316  ff f7 85 ff                                      bl #0x8a2224
008a231a  20 1c                                            adds r0, r4, #0
008a231c  10 bd                                            pop {r4, pc}
008a231e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2320  98 27 0f 00 1c 2f 00 00                          .byte 0x98, 0x27, 0x0f, 0x00, 0x1c, 0x2f, 0x00, 0x00

; FUNCTION 0x008a2328, declared_size=18, range_size=18, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionD0Ev
; demangled: std::__Named_exception::~__Named_exception()
; decoder-mode: thumb
008a2328  10 b5                                            push {r4, lr}
008a232a  04 1c                                            adds r4, r0, #0
008a232c  ff f7 e2 ff                                      bl #0x8a22f4
008a2330  20 1c                                            adds r0, r4, #0
008a2332  6b f6 be e7                                      blx #0x30e2b0
008a2336  20 1c                                            adds r0, r4, #0
008a2338  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a233c, declared_size=52, range_size=52, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionD2Ev
; demangled: std::__Named_exception::~__Named_exception()
; decoder-mode: thumb
008a233c  10 b5                                            push {r4, lr}
008a233e  0a 4b                                            ldr r3, [pc, #0x28]
008a2340  0a 4a                                            ldr r2, [pc, #0x28]
008a2342  04 1c                                            adds r4, r0, #0
008a2344  7b 44                                            add r3, pc
008a2346  9a 58                                            ldr r2, [r3, r2]
008a2348  82 23                                            movs r3, #0x82
008a234a  5b 00                                            lsls r3, r3, #1
008a234c  08 32                                            adds r2, #8
008a234e  02 60                                            str r2, [r0]
008a2350  c0 58                                            ldr r0, [r0, r3]
008a2352  23 1d                                            adds r3, r4, #4
008a2354  98 42                                            cmp r0, r3
008a2356  01 d0                                            beq #0x8a235c
008a2358  6b f6 ca e5                                      blx #0x30def0
008a235c  20 1c                                            adds r0, r4, #0
008a235e  ff f7 61 ff                                      bl #0x8a2224
008a2362  20 1c                                            adds r0, r4, #0
008a2364  10 bd                                            pop {r4, pc}
008a2366  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2368  50 27 0f 00 1c 2f 00 00                          .byte 0x50, 0x27, 0x0f, 0x00, 0x1c, 0x2f, 0x00, 0x00

; FUNCTION 0x008a2664, declared_size=126, range_size=126, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionaSERKS_
; demangled: std::__Named_exception::operator=(std::__Named_exception const&)
; decoder-mode: thumb
008a2664  f0 b5                                            push {r4, r5, r6, r7, lr}
008a2666  47 46                                            mov r7, r8
008a2668  80 b4                                            push {r7}
008a266a  82 25                                            movs r5, #0x82
008a266c  6d 00                                            lsls r5, r5, #1
008a266e  4f 59                                            ldr r7, [r1, r5]
008a2670  04 1c                                            adds r4, r0, #0
008a2672  88 46                                            mov r8, r1
008a2674  38 1c                                            adds r0, r7, #0
008a2676  6b f6 ee e3                                      blx #0x30de54
008a267a  46 1c                                            adds r6, r0, #1
008a267c  60 59                                            ldr r0, [r4, r5]
008a267e  25 1d                                            adds r5, r4, #4
008a2680  a8 42                                            cmp r0, r5
008a2682  25 d0                                            beq #0x8a26d0
008a2684  63 68                                            ldr r3, [r4, #4]
008a2686  b3 42                                            cmp r3, r6
008a2688  1e d2                                            bhs #0x8a26c8
008a268a  a8 42                                            cmp r0, r5
008a268c  01 d0                                            beq #0x8a2692
008a268e  6b f6 30 e4                                      blx #0x30def0
008a2692  30 1c                                            adds r0, r6, #0
008a2694  6c f6 2e e0                                      blx #0x30e6f4
008a2698  82 23                                            movs r3, #0x82
008a269a  5b 00                                            lsls r3, r3, #1
008a269c  e0 50                                            str r0, [r4, r3]
008a269e  00 28                                            cmp r0, #0
008a26a0  19 d0                                            beq #0x8a26d6
008a26a2  66 60                                            str r6, [r4, #4]
008a26a4  42 46                                            mov r2, r8
008a26a6  d7 58                                            ldr r7, [r2, r3]
008a26a8  72 1e                                            subs r2, r6, #1
008a26aa  05 1c                                            adds r5, r0, #0
008a26ac  16 1c                                            adds r6, r2, #0
008a26ae  28 1c                                            adds r0, r5, #0
008a26b0  39 1c                                            adds r1, r7, #0
008a26b2  6b f6 b8 e3                                      blx #0x30de24
008a26b6  82 23                                            movs r3, #0x82
008a26b8  5b 00                                            lsls r3, r3, #1
008a26ba  e3 58                                            ldr r3, [r4, r3]
008a26bc  00 22                                            movs r2, #0
008a26be  20 1c                                            adds r0, r4, #0
008a26c0  9a 55                                            strb r2, [r3, r6]
008a26c2  04 bc                                            pop {r2}
008a26c4  90 46                                            mov r8, r2
008a26c6  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a26c8  72 1e                                            subs r2, r6, #1
008a26ca  16 1c                                            adds r6, r2, #0
008a26cc  05 1c                                            adds r5, r0, #0
008a26ce  ee e7                                            b #0x8a26ae
008a26d0  80 23                                            movs r3, #0x80
008a26d2  5b 00                                            lsls r3, r3, #1
008a26d4  d7 e7                                            b #0x8a2686
008a26d6  42 46                                            mov r2, r8
008a26d8  e5 50                                            str r5, [r4, r3]
008a26da  d7 58                                            ldr r7, [r2, r3]
008a26dc  ff 26                                            movs r6, #0xff
008a26de  ff 22                                            movs r2, #0xff
008a26e0  e5 e7                                            b #0x8a26ae

; FUNCTION 0x008a26e4, declared_size=120, range_size=120, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionC1ERKS_
; demangled: std::__Named_exception::__Named_exception(std::__Named_exception const&)
; decoder-mode: thumb
008a26e4  f0 b5                                            push {r4, r5, r6, r7, lr}
008a26e6  47 46                                            mov r7, r8
008a26e8  80 b4                                            push {r7}
008a26ea  1a 4d                                            ldr r5, [pc, #0x68]
008a26ec  0e 1c                                            adds r6, r1, #0
008a26ee  04 1c                                            adds r4, r0, #0
008a26f0  ff f7 80 fd                                      bl #0x8a21f4
008a26f4  18 4b                                            ldr r3, [pc, #0x60]
008a26f6  7d 44                                            add r5, pc
008a26f8  eb 58                                            ldr r3, [r5, r3]
008a26fa  82 25                                            movs r5, #0x82
008a26fc  6d 00                                            lsls r5, r5, #1
008a26fe  08 33                                            adds r3, #8
008a2700  23 60                                            str r3, [r4]
008a2702  70 59                                            ldr r0, [r6, r5]
008a2704  6b f6 a6 e3                                      blx #0x30de54
008a2708  43 1c                                            adds r3, r0, #1
008a270a  98 46                                            mov r8, r3
008a270c  80 23                                            movs r3, #0x80
008a270e  5b 00                                            lsls r3, r3, #1
008a2710  07 1c                                            adds r7, r0, #0
008a2712  98 45                                            cmp r8, r3
008a2714  0e d8                                            bhi #0x8a2734
008a2716  20 1d                                            adds r0, r4, #4
008a2718  60 51                                            str r0, [r4, r5]
008a271a  3a 1c                                            adds r2, r7, #0
008a271c  82 25                                            movs r5, #0x82
008a271e  6d 00                                            lsls r5, r5, #1
008a2720  71 59                                            ldr r1, [r6, r5]
008a2722  6b f6 80 e3                                      blx #0x30de24
008a2726  63 59                                            ldr r3, [r4, r5]
008a2728  00 22                                            movs r2, #0
008a272a  20 1c                                            adds r0, r4, #0
008a272c  da 55                                            strb r2, [r3, r7]
008a272e  04 bc                                            pop {r2}
008a2730  90 46                                            mov r8, r2
008a2732  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a2734  40 46                                            mov r0, r8
008a2736  6b f6 de e7                                      blx #0x30e6f4
008a273a  60 51                                            str r0, [r4, r5]
008a273c  00 28                                            cmp r0, #0
008a273e  03 d0                                            beq #0x8a2748
008a2740  43 46                                            mov r3, r8
008a2742  63 60                                            str r3, [r4, #4]
008a2744  3a 1c                                            adds r2, r7, #0
008a2746  e9 e7                                            b #0x8a271c
008a2748  20 1d                                            adds r0, r4, #4
008a274a  60 51                                            str r0, [r4, r5]
008a274c  ff 27                                            movs r7, #0xff
008a274e  ff 22                                            movs r2, #0xff
008a2750  e4 e7                                            b #0x8a271c
008a2752  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2754  9e 23 0f 00 1c 2f 00 00                          .byte 0x9e, 0x23, 0x0f, 0x00, 0x1c, 0x2f, 0x00, 0x00

; FUNCTION 0x008a275c, declared_size=120, range_size=120, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionC2ERKS_
; demangled: std::__Named_exception::__Named_exception(std::__Named_exception const&)
; decoder-mode: thumb
008a275c  f0 b5                                            push {r4, r5, r6, r7, lr}
008a275e  47 46                                            mov r7, r8
008a2760  80 b4                                            push {r7}
008a2762  1a 4d                                            ldr r5, [pc, #0x68]
008a2764  0e 1c                                            adds r6, r1, #0
008a2766  04 1c                                            adds r4, r0, #0
008a2768  ff f7 44 fd                                      bl #0x8a21f4
008a276c  18 4b                                            ldr r3, [pc, #0x60]
008a276e  7d 44                                            add r5, pc
008a2770  eb 58                                            ldr r3, [r5, r3]
008a2772  82 25                                            movs r5, #0x82
008a2774  6d 00                                            lsls r5, r5, #1
008a2776  08 33                                            adds r3, #8
008a2778  23 60                                            str r3, [r4]
008a277a  70 59                                            ldr r0, [r6, r5]
008a277c  6b f6 6a e3                                      blx #0x30de54
008a2780  43 1c                                            adds r3, r0, #1
008a2782  98 46                                            mov r8, r3
008a2784  80 23                                            movs r3, #0x80
008a2786  5b 00                                            lsls r3, r3, #1
008a2788  07 1c                                            adds r7, r0, #0
008a278a  98 45                                            cmp r8, r3
008a278c  0e d8                                            bhi #0x8a27ac
008a278e  20 1d                                            adds r0, r4, #4
008a2790  60 51                                            str r0, [r4, r5]
008a2792  3a 1c                                            adds r2, r7, #0
008a2794  82 25                                            movs r5, #0x82
008a2796  6d 00                                            lsls r5, r5, #1
008a2798  71 59                                            ldr r1, [r6, r5]
008a279a  6b f6 44 e3                                      blx #0x30de24
008a279e  63 59                                            ldr r3, [r4, r5]
008a27a0  00 22                                            movs r2, #0
008a27a2  20 1c                                            adds r0, r4, #0
008a27a4  da 55                                            strb r2, [r3, r7]
008a27a6  04 bc                                            pop {r2}
008a27a8  90 46                                            mov r8, r2
008a27aa  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a27ac  40 46                                            mov r0, r8
008a27ae  6b f6 a2 e7                                      blx #0x30e6f4
008a27b2  60 51                                            str r0, [r4, r5]
008a27b4  00 28                                            cmp r0, #0
008a27b6  03 d0                                            beq #0x8a27c0
008a27b8  43 46                                            mov r3, r8
008a27ba  63 60                                            str r3, [r4, #4]
008a27bc  3a 1c                                            adds r2, r7, #0
008a27be  e9 e7                                            b #0x8a2794
008a27c0  20 1d                                            adds r0, r4, #4
008a27c2  60 51                                            str r0, [r4, r5]
008a27c4  ff 27                                            movs r7, #0xff
008a27c6  ff 22                                            movs r2, #0xff
008a27c8  e4 e7                                            b #0x8a2794
008a27ca  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a27cc  26 23 0f 00 1c 2f 00 00                          .byte 0x26, 0x23, 0x0f, 0x00, 0x1c, 0x2f, 0x00, 0x00

; FUNCTION 0x008a27d4, declared_size=116, range_size=116, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionC1ERKSs
; demangled: std::__Named_exception::__Named_exception(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: thumb
008a27d4  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a27d6  1a 4e                                            ldr r6, [pc, #0x68]
008a27d8  0d 1c                                            adds r5, r1, #0
008a27da  04 1c                                            adds r4, r0, #0
008a27dc  ff f7 0a fd                                      bl #0x8a21f4
008a27e0  18 4b                                            ldr r3, [pc, #0x60]
008a27e2  7e 44                                            add r6, pc
008a27e4  f3 58                                            ldr r3, [r6, r3]
008a27e6  08 33                                            adds r3, #8
008a27e8  23 60                                            str r3, [r4]
008a27ea  68 69                                            ldr r0, [r5, #0x14]
008a27ec  6b f6 32 e3                                      blx #0x30de54
008a27f0  80 23                                            movs r3, #0x80
008a27f2  47 1c                                            adds r7, r0, #1
008a27f4  5b 00                                            lsls r3, r3, #1
008a27f6  06 1c                                            adds r6, r0, #0
008a27f8  9f 42                                            cmp r7, r3
008a27fa  0f d8                                            bhi #0x8a281c
008a27fc  82 23                                            movs r3, #0x82
008a27fe  20 1d                                            adds r0, r4, #4
008a2800  5b 00                                            lsls r3, r3, #1
008a2802  e0 50                                            str r0, [r4, r3]
008a2804  32 1c                                            adds r2, r6, #0
008a2806  37 1c                                            adds r7, r6, #0
008a2808  69 69                                            ldr r1, [r5, #0x14]
008a280a  6b f6 0c e3                                      blx #0x30de24
008a280e  82 23                                            movs r3, #0x82
008a2810  5b 00                                            lsls r3, r3, #1
008a2812  e3 58                                            ldr r3, [r4, r3]
008a2814  00 22                                            movs r2, #0
008a2816  20 1c                                            adds r0, r4, #0
008a2818  da 55                                            strb r2, [r3, r7]
008a281a  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008a281c  38 1c                                            adds r0, r7, #0
008a281e  6b f6 6a e7                                      blx #0x30e6f4
008a2822  82 23                                            movs r3, #0x82
008a2824  5b 00                                            lsls r3, r3, #1
008a2826  e0 50                                            str r0, [r4, r3]
008a2828  00 28                                            cmp r0, #0
008a282a  03 d0                                            beq #0x8a2834
008a282c  67 60                                            str r7, [r4, #4]
008a282e  32 1c                                            adds r2, r6, #0
008a2830  37 1c                                            adds r7, r6, #0
008a2832  e9 e7                                            b #0x8a2808
008a2834  20 1d                                            adds r0, r4, #4
008a2836  e0 50                                            str r0, [r4, r3]
008a2838  ff 27                                            movs r7, #0xff
008a283a  ff 22                                            movs r2, #0xff
008a283c  e4 e7                                            b #0x8a2808
008a283e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2840  b2 22 0f 00 1c 2f 00 00                          .byte 0xb2, 0x22, 0x0f, 0x00, 0x1c, 0x2f, 0x00, 0x00

; FUNCTION 0x008a2848, declared_size=116, range_size=116, mode=thumb
; class-group: std::__Named_exception
; alias: _ZNSt17__Named_exceptionC2ERKSs
; demangled: std::__Named_exception::__Named_exception(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: thumb
008a2848  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a284a  1a 4e                                            ldr r6, [pc, #0x68]
008a284c  0d 1c                                            adds r5, r1, #0
008a284e  04 1c                                            adds r4, r0, #0
008a2850  ff f7 d0 fc                                      bl #0x8a21f4
008a2854  18 4b                                            ldr r3, [pc, #0x60]
008a2856  7e 44                                            add r6, pc
008a2858  f3 58                                            ldr r3, [r6, r3]
008a285a  08 33                                            adds r3, #8
008a285c  23 60                                            str r3, [r4]
008a285e  68 69                                            ldr r0, [r5, #0x14]
008a2860  6b f6 f8 e2                                      blx #0x30de54
008a2864  80 23                                            movs r3, #0x80
008a2866  47 1c                                            adds r7, r0, #1
008a2868  5b 00                                            lsls r3, r3, #1
008a286a  06 1c                                            adds r6, r0, #0
008a286c  9f 42                                            cmp r7, r3
008a286e  0f d8                                            bhi #0x8a2890
008a2870  82 23                                            movs r3, #0x82
008a2872  20 1d                                            adds r0, r4, #4
008a2874  5b 00                                            lsls r3, r3, #1
008a2876  e0 50                                            str r0, [r4, r3]
008a2878  32 1c                                            adds r2, r6, #0
008a287a  37 1c                                            adds r7, r6, #0
008a287c  69 69                                            ldr r1, [r5, #0x14]
008a287e  6b f6 d2 e2                                      blx #0x30de24
008a2882  82 23                                            movs r3, #0x82
008a2884  5b 00                                            lsls r3, r3, #1
008a2886  e3 58                                            ldr r3, [r4, r3]
008a2888  00 22                                            movs r2, #0
008a288a  20 1c                                            adds r0, r4, #0
008a288c  da 55                                            strb r2, [r3, r7]
008a288e  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008a2890  38 1c                                            adds r0, r7, #0
008a2892  6b f6 30 e7                                      blx #0x30e6f4
008a2896  82 23                                            movs r3, #0x82
008a2898  5b 00                                            lsls r3, r3, #1
008a289a  e0 50                                            str r0, [r4, r3]
008a289c  00 28                                            cmp r0, #0
008a289e  03 d0                                            beq #0x8a28a8
008a28a0  67 60                                            str r7, [r4, #4]
008a28a2  32 1c                                            adds r2, r6, #0
008a28a4  37 1c                                            adds r7, r6, #0
008a28a6  e9 e7                                            b #0x8a287c
008a28a8  20 1d                                            adds r0, r4, #4
008a28aa  e0 50                                            str r0, [r4, r3]
008a28ac  ff 27                                            movs r7, #0xff
008a28ae  ff 22                                            movs r2, #0xff
008a28b0  e4 e7                                            b #0x8a287c
008a28b2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a28b4  3e 22 0f 00 1c 2f 00 00                          .byte 0x3e, 0x22, 0x0f, 0x00, 0x1c, 0x2f, 0x00, 0x00
