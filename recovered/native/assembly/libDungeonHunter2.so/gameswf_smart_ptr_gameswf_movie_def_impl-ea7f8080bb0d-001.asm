; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077463c, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::smart_ptr<gameswf::movie_def_impl>
; alias: _ZN7gameswf9smart_ptrINS_14movie_def_implEE7set_refEPS1_.clone.2
; demangled: gameswf::smart_ptr<gameswf::movie_def_impl>::set_ref(gameswf::movie_def_impl*) [clone .clone.2]
; decoder-mode: arm
0077463c  10 40 2d e9                                      push {r4, lr}
00774640  00 40 a0 e1                                      mov r4, r0
00774644  00 00 90 e5                                      ldr r0, [r0]
00774648  00 00 50 e3                                      cmp r0, #0
0077464c  02 00 00 0a                                      beq #0x77465c
00774650  fa 96 ff eb                                      bl #0x75a240
00774654  00 30 a0 e3                                      mov r3, #0
00774658  00 30 84 e5                                      str r3, [r4]
0077465c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a277c, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::movie_def_impl>
; alias: _ZN7gameswf9smart_ptrINS_14movie_def_implEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::movie_def_impl>::set_ref(gameswf::movie_def_impl*)
; decoder-mode: arm
007a277c  70 40 2d e9                                      push {r4, r5, r6, lr}
007a2780  00 40 a0 e1                                      mov r4, r0
007a2784  00 00 90 e5                                      ldr r0, [r0]
007a2788  01 50 a0 e1                                      mov r5, r1
007a278c  01 00 50 e1                                      cmp r0, r1
007a2790  08 00 00 0a                                      beq #0x7a27b8
007a2794  00 00 50 e3                                      cmp r0, #0
007a2798  00 00 00 0a                                      beq #0x7a27a0
007a279c  a7 de fe eb                                      bl #0x75a240
007a27a0  00 00 55 e3                                      cmp r5, #0
007a27a4  00 50 84 e5                                      str r5, [r4]
007a27a8  02 00 00 0a                                      beq #0x7a27b8
007a27ac  05 00 a0 e1                                      mov r0, r5
007a27b0  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a27b4  2a dd fe ea                                      b #0x759c64
007a27b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
