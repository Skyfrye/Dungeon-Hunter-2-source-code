; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4ae0, declared_size=34, range_size=34, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >::operator++()
; decoder-mode: thumb
008a4ae0  10 b5                                            push {r4, lr}
008a4ae2  04 1c                                            adds r4, r0, #0
008a4ae4  00 68                                            ldr r0, [r0]
008a4ae6  83 68                                            ldr r3, [r0, #8]
008a4ae8  c2 68                                            ldr r2, [r0, #0xc]
008a4aea  93 42                                            cmp r3, r2
008a4aec  05 d2                                            bhs #0x8a4afa
008a4aee  04 33                                            adds r3, #4
008a4af0  83 60                                            str r3, [r0, #8]
008a4af2  00 23                                            movs r3, #0
008a4af4  20 1c                                            adds r0, r4, #0
008a4af6  63 72                                            strb r3, [r4, #9]
008a4af8  10 bd                                            pop {r4, pc}
008a4afa  03 68                                            ldr r3, [r0]
008a4afc  5b 6a                                            ldr r3, [r3, #0x24]
008a4afe  98 47                                            blx r3
008a4b00  f7 e7                                            b #0x8a4af2

; FUNCTION 0x008a4b28, declared_size=46, range_size=46, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEE7_M_getcEv
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >::_M_getc() const
; decoder-mode: thumb
008a4b28  10 b5                                            push {r4, lr}
008a4b2a  43 7a                                            ldrb r3, [r0, #9]
008a4b2c  04 1c                                            adds r4, r0, #0
008a4b2e  00 2b                                            cmp r3, #0
008a4b30  0c d1                                            bne #0x8a4b4c
008a4b32  00 68                                            ldr r0, [r0]
008a4b34  83 68                                            ldr r3, [r0, #8]
008a4b36  c2 68                                            ldr r2, [r0, #0xc]
008a4b38  93 42                                            cmp r3, r2
008a4b3a  08 d2                                            bhs #0x8a4b4e
008a4b3c  18 68                                            ldr r0, [r3]
008a4b3e  60 60                                            str r0, [r4, #4]
008a4b40  01 30                                            adds r0, #1
008a4b42  43 42                                            rsbs r3, r0, #0
008a4b44  43 41                                            adcs r3, r0
008a4b46  23 72                                            strb r3, [r4, #8]
008a4b48  01 23                                            movs r3, #1
008a4b4a  63 72                                            strb r3, [r4, #9]
008a4b4c  10 bd                                            pop {r4, pc}
008a4b4e  03 68                                            ldr r3, [r0]
008a4b50  1b 6a                                            ldr r3, [r3, #0x20]
008a4b52  98 47                                            blx r3
008a4b54  f3 e7                                            b #0x8a4b3e

; FUNCTION 0x008a92d8, declared_size=86, range_size=86, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEi
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >::operator++(int)
; decoder-mode: thumb
008a92d8  70 b5                                            push {r4, r5, r6, lr}
008a92da  4b 7a                                            ldrb r3, [r1, #9]
008a92dc  05 1c                                            adds r5, r0, #0
008a92de  0c 1c                                            adds r4, r1, #0
008a92e0  00 2b                                            cmp r3, #0
008a92e2  0c d1                                            bne #0x8a92fe
008a92e4  08 68                                            ldr r0, [r1]
008a92e6  83 68                                            ldr r3, [r0, #8]
008a92e8  c2 68                                            ldr r2, [r0, #0xc]
008a92ea  93 42                                            cmp r3, r2
008a92ec  1b d2                                            bhs #0x8a9326
008a92ee  18 68                                            ldr r0, [r3]
008a92f0  60 60                                            str r0, [r4, #4]
008a92f2  01 30                                            adds r0, #1
008a92f4  43 42                                            rsbs r3, r0, #0
008a92f6  43 41                                            adcs r3, r0
008a92f8  23 72                                            strb r3, [r4, #8]
008a92fa  01 23                                            movs r3, #1
008a92fc  63 72                                            strb r3, [r4, #9]
008a92fe  28 1c                                            adds r0, r5, #0
008a9300  0a 22                                            movs r2, #0xa
008a9302  21 1c                                            adds r1, r4, #0
008a9304  64 f6 18 e6                                      blx #0x30df38
008a9308  20 68                                            ldr r0, [r4]
008a930a  83 68                                            ldr r3, [r0, #8]
008a930c  c2 68                                            ldr r2, [r0, #0xc]
008a930e  93 42                                            cmp r3, r2
008a9310  05 d2                                            bhs #0x8a931e
008a9312  04 33                                            adds r3, #4
008a9314  83 60                                            str r3, [r0, #8]
008a9316  00 23                                            movs r3, #0
008a9318  28 1c                                            adds r0, r5, #0
008a931a  63 72                                            strb r3, [r4, #9]
008a931c  70 bd                                            pop {r4, r5, r6, pc}
008a931e  03 68                                            ldr r3, [r0]
008a9320  5b 6a                                            ldr r3, [r3, #0x24]
008a9322  98 47                                            blx r3
008a9324  f7 e7                                            b #0x8a9316
008a9326  03 68                                            ldr r3, [r0]
008a9328  1b 6a                                            ldr r3, [r3, #0x20]
008a932a  98 47                                            blx r3
008a932c  e0 e7                                            b #0x8a92f0

; FUNCTION 0x008aa8a8, declared_size=108, range_size=108, mode=thumb
; class-group: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEE5equalERKS2_
; demangled: std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >::equal(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > const&) const
; decoder-mode: thumb
008aa8a8  70 b5                                            push {r4, r5, r6, lr}
008aa8aa  04 1c                                            adds r4, r0, #0
008aa8ac  00 68                                            ldr r0, [r0]
008aa8ae  0d 1c                                            adds r5, r1, #0
008aa8b0  00 28                                            cmp r0, #0
008aa8b2  0e d0                                            beq #0x8aa8d2
008aa8b4  63 7a                                            ldrb r3, [r4, #9]
008aa8b6  00 2b                                            cmp r3, #0
008aa8b8  0b d1                                            bne #0x8aa8d2
008aa8ba  83 68                                            ldr r3, [r0, #8]
008aa8bc  c2 68                                            ldr r2, [r0, #0xc]
008aa8be  93 42                                            cmp r3, r2
008aa8c0  24 d2                                            bhs #0x8aa90c
008aa8c2  18 68                                            ldr r0, [r3]
008aa8c4  60 60                                            str r0, [r4, #4]
008aa8c6  01 30                                            adds r0, #1
008aa8c8  43 42                                            rsbs r3, r0, #0
008aa8ca  43 41                                            adcs r3, r0
008aa8cc  23 72                                            strb r3, [r4, #8]
008aa8ce  01 23                                            movs r3, #1
008aa8d0  63 72                                            strb r3, [r4, #9]
008aa8d2  28 68                                            ldr r0, [r5]
008aa8d4  00 28                                            cmp r0, #0
008aa8d6  0f d0                                            beq #0x8aa8f8
008aa8d8  6b 7a                                            ldrb r3, [r5, #9]
008aa8da  00 2b                                            cmp r3, #0
008aa8dc  0c d1                                            bne #0x8aa8f8
008aa8de  83 68                                            ldr r3, [r0, #8]
008aa8e0  c2 68                                            ldr r2, [r0, #0xc]
008aa8e2  93 42                                            cmp r3, r2
008aa8e4  0e d2                                            bhs #0x8aa904
008aa8e6  18 68                                            ldr r0, [r3]
008aa8e8  68 60                                            str r0, [r5, #4]
008aa8ea  01 30                                            adds r0, #1
008aa8ec  43 42                                            rsbs r3, r0, #0
008aa8ee  43 41                                            adcs r3, r0
008aa8f0  01 22                                            movs r2, #1
008aa8f2  2b 72                                            strb r3, [r5, #8]
008aa8f4  6a 72                                            strb r2, [r5, #9]
008aa8f6  00 e0                                            b #0x8aa8fa
008aa8f8  2b 7a                                            ldrb r3, [r5, #8]
008aa8fa  22 7a                                            ldrb r2, [r4, #8]
008aa8fc  d3 1a                                            subs r3, r2, r3
008aa8fe  58 42                                            rsbs r0, r3, #0
008aa900  58 41                                            adcs r0, r3
008aa902  70 bd                                            pop {r4, r5, r6, pc}
008aa904  03 68                                            ldr r3, [r0]
008aa906  1b 6a                                            ldr r3, [r3, #0x20]
008aa908  98 47                                            blx r3
008aa90a  ed e7                                            b #0x8aa8e8
008aa90c  03 68                                            ldr r3, [r0]
008aa90e  1b 6a                                            ldr r3, [r3, #0x20]
008aa910  98 47                                            blx r3
008aa912  d7 e7                                            b #0x8aa8c4
