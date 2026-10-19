; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ba6fc, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_s_function* gameswf
; alias: _ZN7gameswf7cast_toINS_13as_s_functionEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_s_function* gameswf::cast_to<gameswf::as_s_function>(gameswf::as_object_interface*)
; decoder-mode: arm
007ba6fc  10 40 2d e9                                      push {r4, lr}
007ba700  00 40 50 e2                                      subs r4, r0, #0
007ba704  07 00 00 0a                                      beq #0x7ba728
007ba708  00 30 94 e5                                      ldr r3, [r4]
007ba70c  06 10 a0 e3                                      mov r1, #6
007ba710  0f e0 a0 e1                                      mov lr, pc
007ba714  08 f0 93 e5                                      ldr pc, [r3, #8]
007ba718  00 00 50 e3                                      cmp r0, #0
007ba71c  01 00 00 0a                                      beq #0x7ba728
007ba720  04 00 a0 e1                                      mov r0, r4
007ba724  10 80 bd e8                                      pop {r4, pc}
007ba728  00 00 a0 e3                                      mov r0, #0
007ba72c  10 80 bd e8                                      pop {r4, pc}
