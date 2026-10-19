; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077e058, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::movie_def_impl* gameswf
; alias: _ZN7gameswf7cast_toINS_14movie_def_implEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::movie_def_impl* gameswf::cast_to<gameswf::movie_def_impl>(gameswf::as_object_interface*)
; decoder-mode: arm
0077e058  10 40 2d e9                                      push {r4, lr}
0077e05c  00 40 50 e2                                      subs r4, r0, #0
0077e060  07 00 00 0a                                      beq #0x77e084
0077e064  00 30 94 e5                                      ldr r3, [r4]
0077e068  08 10 a0 e3                                      mov r1, #8
0077e06c  0f e0 a0 e1                                      mov lr, pc
0077e070  08 f0 93 e5                                      ldr pc, [r3, #8]
0077e074  00 00 50 e3                                      cmp r0, #0
0077e078  01 00 00 0a                                      beq #0x77e084
0077e07c  04 00 a0 e1                                      mov r0, r4
0077e080  10 80 bd e8                                      pop {r4, pc}
0077e084  00 00 a0 e3                                      mov r0, #0
0077e088  10 80 bd e8                                      pop {r4, pc}
