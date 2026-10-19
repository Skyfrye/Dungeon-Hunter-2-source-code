; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a13ec, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_matrix* gameswf
; alias: _ZN7gameswf7cast_toINS_9as_matrixEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_matrix* gameswf::cast_to<gameswf::as_matrix>(gameswf::as_object_interface*)
; decoder-mode: arm
007a13ec  10 40 2d e9                                      push {r4, lr}
007a13f0  00 40 50 e2                                      subs r4, r0, #0
007a13f4  07 00 00 0a                                      beq #0x7a1418
007a13f8  00 30 94 e5                                      ldr r3, [r4]
007a13fc  1a 10 a0 e3                                      mov r1, #0x1a
007a1400  0f e0 a0 e1                                      mov lr, pc
007a1404  08 f0 93 e5                                      ldr pc, [r3, #8]
007a1408  00 00 50 e3                                      cmp r0, #0
007a140c  01 00 00 0a                                      beq #0x7a1418
007a1410  04 00 a0 e1                                      mov r0, r4
007a1414  10 80 bd e8                                      pop {r4, pc}
007a1418  00 00 a0 e3                                      mov r0, #0
007a141c  10 80 bd e8                                      pop {r4, pc}
