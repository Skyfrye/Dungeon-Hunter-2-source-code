; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000ae7f2, declared_size=4, range_size=4, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc8allocateERj
; demangled: std::priv::_Pthread_alloc::allocate(unsigned int&)
; decoder-mode: thumb
000ae7f2  ff f7 df be                                      b.w #0xae5b4

; FUNCTION 0x000ae7f6, declared_size=52, range_size=52, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc10deallocateEPvj
; demangled: std::priv::_Pthread_alloc::deallocate(void*, unsigned int)
; decoder-mode: thumb
000ae7f6  b0 b5                                            push {r4, r5, r7, lr}
000ae7f8  02 af                                            add r7, sp, #8
000ae7fa  04 46                                            mov r4, r0
000ae7fc  81 29                                            cmp r1, #0x81
000ae7fe  04 d3                                            blo #0xae80a
000ae800  20 46                                            mov r0, r4
000ae802  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
000ae806  02 f0 0f b9                                      b.w #0xb0a28
000ae80a  c8 1d                                            adds r0, r1, #7
000ae80c  4f f6 fc 71                                      movw r1, #0xfffc
000ae810  c7 f6 ff 71                                      movt r1, #0x7fff
000ae814  01 ea 50 05                                      and.w r5, r1, r0, lsr #1
000ae818  ff f7 36 fe                                      bl #0xae488
000ae81c  28 44                                            add r0, r5
000ae81e  50 f8 04 1c                                      ldr r1, [r0, #-0x4]
000ae822  21 60                                            str r1, [r4]
000ae824  40 f8 04 4c                                      str r4, [r0, #-0x4]
000ae828  b0 bd                                            pop {r4, r5, r7, pc}

; FUNCTION 0x000ae82a, declared_size=4, range_size=4, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc8allocateERjPNS_31_Pthread_alloc_per_thread_stateE
; demangled: std::priv::_Pthread_alloc::allocate(unsigned int&, std::priv::_Pthread_alloc_per_thread_state*)
; decoder-mode: thumb
000ae82a  ff f7 21 bf                                      b.w #0xae670

; FUNCTION 0x000ae82e, declared_size=82, range_size=82, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc10deallocateEPvjPNS_31_Pthread_alloc_per_thread_stateE
; demangled: std::priv::_Pthread_alloc::deallocate(void*, unsigned int, std::priv::_Pthread_alloc_per_thread_state*)
; decoder-mode: thumb
000ae82e  f0 b5                                            push {r4, r5, r6, r7, lr}
000ae830  03 af                                            add r7, sp, #0xc
000ae832  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000ae836  0e 46                                            mov r6, r1
000ae838  15 46                                            mov r5, r2
000ae83a  04 46                                            mov r4, r0
000ae83c  81 2e                                            cmp r6, #0x81
000ae83e  06 d3                                            blo #0xae84e
000ae840  20 46                                            mov r0, r4
000ae842  5d f8 04 8b                                      ldr r8, [sp], #4
000ae846  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000ae84a  02 f0 ed b8                                      b.w #0xb0a28
000ae84e  05 f1 44 08                                      add.w r8, r5, #0x44
000ae852  40 46                                            mov r0, r8
000ae854  87 f7 62 e9                                      blx #0x35b1c
000ae858  f0 1d                                            adds r0, r6, #7
000ae85a  4f f6 fc 71                                      movw r1, #0xfffc
000ae85e  c7 f6 ff 71                                      movt r1, #0x7fff
000ae862  01 ea 50 00                                      and.w r0, r1, r0, lsr #1
000ae866  28 44                                            add r0, r5
000ae868  50 f8 04 1c                                      ldr r1, [r0, #-0x4]
000ae86c  21 60                                            str r1, [r4]
000ae86e  40 f8 04 4c                                      str r4, [r0, #-0x4]
000ae872  40 46                                            mov r0, r8
000ae874  5d f8 04 8b                                      ldr r8, [sp], #4
000ae878  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000ae87c  02 f0 54 bb                                      b.w #0xb0f28

; FUNCTION 0x000ae880, declared_size=126, range_size=126, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc10reallocateEPvjRj
; demangled: std::priv::_Pthread_alloc::reallocate(void*, unsigned int, unsigned int&)
; decoder-mode: thumb
000ae880  f0 b5                                            push {r4, r5, r6, r7, lr}
000ae882  03 af                                            add r7, sp, #0xc
000ae884  2d e9 00 0b                                      push.w {r8, sb, fp}
000ae888  15 46                                            mov r5, r2
000ae88a  0e 46                                            mov r6, r1
000ae88c  29 68                                            ldr r1, [r5]
000ae88e  81 2e                                            cmp r6, #0x81
000ae890  04 46                                            mov r4, r0
000ae892  28 bf                                            it hs
000ae894  81 29                                            cmphs r1, #0x81
000ae896  08 d2                                            bhs #0xae8aa
000ae898  06 f1 07 09                                      add.w sb, r6, #7
000ae89c  c8 1d                                            adds r0, r1, #7
000ae89e  80 ea 09 00                                      eor.w r0, r0, sb
000ae8a2  08 28                                            cmp r0, #8
000ae8a4  08 d2                                            bhs #0xae8b8
000ae8a6  a0 46                                            mov r8, r4
000ae8a8  25 e0                                            b #0xae8f6
000ae8aa  20 46                                            mov r0, r4
000ae8ac  bd e8 00 0b                                      pop.w {r8, sb, fp}
000ae8b0  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000ae8b4  02 f0 c8 b8                                      b.w #0xb0a48
000ae8b8  28 46                                            mov r0, r5
000ae8ba  ff f7 7b fe                                      bl #0xae5b4
000ae8be  2a 68                                            ldr r2, [r5]
000ae8c0  21 46                                            mov r1, r4
000ae8c2  80 46                                            mov r8, r0
000ae8c4  b2 42                                            cmp r2, r6
000ae8c6  88 bf                                            it hi
000ae8c8  32 46                                            movhi r2, r6
000ae8ca  83 f7 88 eb                                      blx #0x31fdc
000ae8ce  81 2e                                            cmp r6, #0x81
000ae8d0  03 d3                                            blo #0xae8da
000ae8d2  20 46                                            mov r0, r4
000ae8d4  83 f7 b2 eb                                      blx #0x3203c
000ae8d8  0d e0                                            b #0xae8f6
000ae8da  4f f6 fc 70                                      movw r0, #0xfffc
000ae8de  c7 f6 ff 70                                      movt r0, #0x7fff
000ae8e2  00 ea 59 05                                      and.w r5, r0, sb, lsr #1
000ae8e6  ff f7 cf fd                                      bl #0xae488
000ae8ea  28 44                                            add r0, r5
000ae8ec  50 f8 04 1c                                      ldr r1, [r0, #-0x4]
000ae8f0  21 60                                            str r1, [r4]
000ae8f2  40 f8 04 4c                                      str r4, [r0, #-0x4]
000ae8f6  40 46                                            mov r0, r8
000ae8f8  bd e8 00 0b                                      pop.w {r8, sb, fp}
000ae8fc  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x000ae8fe, declared_size=4, range_size=4, mode=thumb
; class-group: std::priv::_Pthread_alloc
; alias: _ZNSt4priv14_Pthread_alloc23_S_get_per_thread_stateEv
; demangled: std::priv::_Pthread_alloc::_S_get_per_thread_state()
; decoder-mode: thumb
000ae8fe  ff f7 c3 bd                                      b.w #0xae488
