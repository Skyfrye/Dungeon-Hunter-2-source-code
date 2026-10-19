; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0079d65c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_date* gameswf
; alias: _ZN7gameswf7cast_toINS_7as_dateEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_date* gameswf::cast_to<gameswf::as_date>(gameswf::as_object_interface*)
; decoder-mode: arm
0079d65c  10 40 2d e9                                      push {r4, lr}
0079d660  00 40 50 e2                                      subs r4, r0, #0
0079d664  07 00 00 0a                                      beq #0x79d688
0079d668  00 30 94 e5                                      ldr r3, [r4]
0079d66c  1f 10 a0 e3                                      mov r1, #0x1f
0079d670  0f e0 a0 e1                                      mov lr, pc
0079d674  08 f0 93 e5                                      ldr pc, [r3, #8]
0079d678  00 00 50 e3                                      cmp r0, #0
0079d67c  01 00 00 0a                                      beq #0x79d688
0079d680  04 00 a0 e1                                      mov r0, r4
0079d684  10 80 bd e8                                      pop {r4, pc}
0079d688  00 00 a0 e3                                      mov r0, #0
0079d68c  10 80 bd e8                                      pop {r4, pc}
