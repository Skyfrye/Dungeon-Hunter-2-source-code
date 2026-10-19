; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00090f92, declared_size=4, range_size=4, mode=thumb
; class-group: string_to_uint_map
; alias: _ZN18string_to_uint_map10delete_keyEPKvPvS2_
; demangled: string_to_uint_map::delete_key(void const*, void*, void*)
; decoder-mode: thumb
00090f92  1f f0 49 bd                                      b.w #0xb0a28

; FUNCTION 0x0009101e, declared_size=54, range_size=54, mode=thumb
; class-group: string_to_uint_map
; alias: _ZN18string_to_uint_map3putEjPKc
; demangled: string_to_uint_map::put(unsigned int, char const*)
; decoder-mode: thumb
0009101e  f0 b5                                            push {r4, r5, r6, r7, lr}
00091020  03 af                                            add r7, sp, #0xc
00091022  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00091026  06 46                                            mov r6, r0
00091028  10 46                                            mov r0, r2
0009102a  0d 46                                            mov r5, r1
0009102c  a1 f7 14 ec                                      blx #0x32858
00091030  04 46                                            mov r4, r0
00091032  30 68                                            ldr r0, [r6]
00091034  69 1c                                            adds r1, r5, #1
00091036  22 46                                            mov r2, r4
00091038  a3 f7 96 ed                                      blx #0x34b68
0009103c  01 28                                            cmp r0, #1
0009103e  1c bf                                            itt ne
00091040  5d f8 04 bb                                      ldrne fp, [sp], #4
00091044  f0 bd                                            popne {r4, r5, r6, r7, pc}
00091046  20 46                                            mov r0, r4
00091048  5d f8 04 bb                                      ldr fp, [sp], #4
0009104c  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00091050  1f f0 ea bc                                      b.w #0xb0a28
