; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000ae23c, declared_size=4, range_size=4, mode=thumb
; class-group: std::__node_alloc
; alias: _ZNSt12__node_alloc11_M_allocateERj
; demangled: std::__node_alloc::_M_allocate(unsigned int&)
; decoder-mode: thumb
000ae23c  ff f7 82 be                                      b.w #0xadf44

; FUNCTION 0x000ae240, declared_size=68, range_size=68, mode=thumb
; class-group: std::__node_alloc
; alias: _ZNSt12__node_alloc13_M_deallocateEPvj
; demangled: std::__node_alloc::_M_deallocate(void*, unsigned int)
; decoder-mode: thumb
000ae240  f0 b5                                            push {r4, r5, r6, r7, lr}
000ae242  03 af                                            add r7, sp, #0xc
000ae244  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000ae248  0c 4e                                            ldr r6, [pc, #0x30]
000ae24a  05 46                                            mov r5, r0
000ae24c  0c 46                                            mov r4, r1
000ae24e  7e 44                                            add r6, pc
000ae250  30 46                                            mov r0, r6
000ae252  87 f7 64 ec                                      blx #0x35b1c
000ae256  0a 48                                            ldr r0, [pc, #0x28]
000ae258  61 1e                                            subs r1, r4, #1
000ae25a  4f f6 fc 72                                      movw r2, #0xfffc
000ae25e  c7 f6 ff 72                                      movt r2, #0x7fff
000ae262  78 44                                            add r0, pc
000ae264  02 ea 51 01                                      and.w r1, r2, r1, lsr #1
000ae268  42 58                                            ldr r2, [r0, r1]
000ae26a  2a 60                                            str r2, [r5]
000ae26c  45 50                                            str r5, [r0, r1]
000ae26e  30 46                                            mov r0, r6
000ae270  5d f8 04 bb                                      ldr fp, [sp], #4
000ae274  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000ae278  02 f0 56 be                                      b.w #0xb0f28
000ae27c  96 8f                                            ldrh r6, [r2, #0x3c]
000ae27e  03 00                                            movs r3, r0
000ae280  1a 8f                                            ldrh r2, [r3, #0x38]
000ae282  03 00                                            movs r3, r0
