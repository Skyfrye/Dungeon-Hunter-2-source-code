; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4b04, declared_size=34, range_size=34, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> >
; alias: _ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
; demangled: std::istreambuf_iterator<char, std::char_traits<char> >::operator++()
; decoder-mode: thumb
008a4b04  10 b5                                            push {r4, lr}
008a4b06  04 1c                                            adds r4, r0, #0
008a4b08  00 68                                            ldr r0, [r0]
008a4b0a  83 68                                            ldr r3, [r0, #8]
008a4b0c  c2 68                                            ldr r2, [r0, #0xc]
008a4b0e  93 42                                            cmp r3, r2
008a4b10  05 d2                                            bhs #0x8a4b1e
008a4b12  01 33                                            adds r3, #1
008a4b14  83 60                                            str r3, [r0, #8]
008a4b16  00 23                                            movs r3, #0
008a4b18  20 1c                                            adds r0, r4, #0
008a4b1a  a3 71                                            strb r3, [r4, #6]
008a4b1c  10 bd                                            pop {r4, pc}
008a4b1e  03 68                                            ldr r3, [r0]
008a4b20  5b 6a                                            ldr r3, [r3, #0x24]
008a4b22  98 47                                            blx r3
008a4b24  f7 e7                                            b #0x8a4b16

; FUNCTION 0x008a4b58, declared_size=46, range_size=46, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> >
; alias: _ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE7_M_getcEv
; demangled: std::istreambuf_iterator<char, std::char_traits<char> >::_M_getc() const
; decoder-mode: thumb
008a4b58  10 b5                                            push {r4, lr}
008a4b5a  83 79                                            ldrb r3, [r0, #6]
008a4b5c  04 1c                                            adds r4, r0, #0
008a4b5e  00 2b                                            cmp r3, #0
008a4b60  0c d1                                            bne #0x8a4b7c
008a4b62  00 68                                            ldr r0, [r0]
008a4b64  83 68                                            ldr r3, [r0, #8]
008a4b66  c2 68                                            ldr r2, [r0, #0xc]
008a4b68  93 42                                            cmp r3, r2
008a4b6a  08 d2                                            bhs #0x8a4b7e
008a4b6c  18 78                                            ldrb r0, [r3]
008a4b6e  20 71                                            strb r0, [r4, #4]
008a4b70  01 30                                            adds r0, #1
008a4b72  43 42                                            rsbs r3, r0, #0
008a4b74  43 41                                            adcs r3, r0
008a4b76  63 71                                            strb r3, [r4, #5]
008a4b78  01 23                                            movs r3, #1
008a4b7a  a3 71                                            strb r3, [r4, #6]
008a4b7c  10 bd                                            pop {r4, pc}
008a4b7e  03 68                                            ldr r3, [r0]
008a4b80  1b 6a                                            ldr r3, [r3, #0x20]
008a4b82  98 47                                            blx r3
008a4b84  f3 e7                                            b #0x8a4b6e

; FUNCTION 0x008a9330, declared_size=86, range_size=86, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> >
; alias: _ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEi
; demangled: std::istreambuf_iterator<char, std::char_traits<char> >::operator++(int)
; decoder-mode: thumb
008a9330  70 b5                                            push {r4, r5, r6, lr}
008a9332  8b 79                                            ldrb r3, [r1, #6]
008a9334  05 1c                                            adds r5, r0, #0
008a9336  0c 1c                                            adds r4, r1, #0
008a9338  00 2b                                            cmp r3, #0
008a933a  0c d1                                            bne #0x8a9356
008a933c  08 68                                            ldr r0, [r1]
008a933e  83 68                                            ldr r3, [r0, #8]
008a9340  c2 68                                            ldr r2, [r0, #0xc]
008a9342  93 42                                            cmp r3, r2
008a9344  1b d2                                            bhs #0x8a937e
008a9346  18 78                                            ldrb r0, [r3]
008a9348  20 71                                            strb r0, [r4, #4]
008a934a  01 30                                            adds r0, #1
008a934c  43 42                                            rsbs r3, r0, #0
008a934e  43 41                                            adcs r3, r0
008a9350  63 71                                            strb r3, [r4, #5]
008a9352  01 23                                            movs r3, #1
008a9354  a3 71                                            strb r3, [r4, #6]
008a9356  28 1c                                            adds r0, r5, #0
008a9358  07 22                                            movs r2, #7
008a935a  21 1c                                            adds r1, r4, #0
008a935c  64 f6 ec e5                                      blx #0x30df38
008a9360  20 68                                            ldr r0, [r4]
008a9362  83 68                                            ldr r3, [r0, #8]
008a9364  c2 68                                            ldr r2, [r0, #0xc]
008a9366  93 42                                            cmp r3, r2
008a9368  05 d2                                            bhs #0x8a9376
008a936a  01 33                                            adds r3, #1
008a936c  83 60                                            str r3, [r0, #8]
008a936e  00 23                                            movs r3, #0
008a9370  28 1c                                            adds r0, r5, #0
008a9372  a3 71                                            strb r3, [r4, #6]
008a9374  70 bd                                            pop {r4, r5, r6, pc}
008a9376  03 68                                            ldr r3, [r0]
008a9378  5b 6a                                            ldr r3, [r3, #0x24]
008a937a  98 47                                            blx r3
008a937c  f7 e7                                            b #0x8a936e
008a937e  03 68                                            ldr r3, [r0]
008a9380  1b 6a                                            ldr r3, [r3, #0x20]
008a9382  98 47                                            blx r3
008a9384  e0 e7                                            b #0x8a9348

; FUNCTION 0x008a95e8, declared_size=108, range_size=108, mode=thumb
; class-group: std::istreambuf_iterator<char, std::char_traits<char> >
; alias: _ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_
; demangled: std::istreambuf_iterator<char, std::char_traits<char> >::equal(std::istreambuf_iterator<char, std::char_traits<char> > const&) const
; decoder-mode: thumb
008a95e8  70 b5                                            push {r4, r5, r6, lr}
008a95ea  04 1c                                            adds r4, r0, #0
008a95ec  00 68                                            ldr r0, [r0]
008a95ee  0d 1c                                            adds r5, r1, #0
008a95f0  00 28                                            cmp r0, #0
008a95f2  0e d0                                            beq #0x8a9612
008a95f4  a3 79                                            ldrb r3, [r4, #6]
008a95f6  00 2b                                            cmp r3, #0
008a95f8  0b d1                                            bne #0x8a9612
008a95fa  83 68                                            ldr r3, [r0, #8]
008a95fc  c2 68                                            ldr r2, [r0, #0xc]
008a95fe  93 42                                            cmp r3, r2
008a9600  24 d2                                            bhs #0x8a964c
008a9602  18 78                                            ldrb r0, [r3]
008a9604  20 71                                            strb r0, [r4, #4]
008a9606  01 30                                            adds r0, #1
008a9608  43 42                                            rsbs r3, r0, #0
008a960a  43 41                                            adcs r3, r0
008a960c  63 71                                            strb r3, [r4, #5]
008a960e  01 23                                            movs r3, #1
008a9610  a3 71                                            strb r3, [r4, #6]
008a9612  28 68                                            ldr r0, [r5]
008a9614  00 28                                            cmp r0, #0
008a9616  0f d0                                            beq #0x8a9638
008a9618  ab 79                                            ldrb r3, [r5, #6]
008a961a  00 2b                                            cmp r3, #0
008a961c  0c d1                                            bne #0x8a9638
008a961e  83 68                                            ldr r3, [r0, #8]
008a9620  c2 68                                            ldr r2, [r0, #0xc]
008a9622  93 42                                            cmp r3, r2
008a9624  0e d2                                            bhs #0x8a9644
008a9626  18 78                                            ldrb r0, [r3]
008a9628  28 71                                            strb r0, [r5, #4]
008a962a  01 30                                            adds r0, #1
008a962c  43 42                                            rsbs r3, r0, #0
008a962e  43 41                                            adcs r3, r0
008a9630  01 22                                            movs r2, #1
008a9632  6b 71                                            strb r3, [r5, #5]
008a9634  aa 71                                            strb r2, [r5, #6]
008a9636  00 e0                                            b #0x8a963a
008a9638  6b 79                                            ldrb r3, [r5, #5]
008a963a  62 79                                            ldrb r2, [r4, #5]
008a963c  d3 1a                                            subs r3, r2, r3
008a963e  58 42                                            rsbs r0, r3, #0
008a9640  58 41                                            adcs r0, r3
008a9642  70 bd                                            pop {r4, r5, r6, pc}
008a9644  03 68                                            ldr r3, [r0]
008a9646  1b 6a                                            ldr r3, [r3, #0x20]
008a9648  98 47                                            blx r3
008a964a  ed e7                                            b #0x8a9628
008a964c  03 68                                            ldr r3, [r0]
008a964e  1b 6a                                            ldr r3, [r3, #0x20]
008a9650  98 47                                            blx r3
008a9652  d7 e7                                            b #0x8a9604
