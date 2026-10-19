; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ba6c8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_c_function* gameswf
; alias: _ZN7gameswf7cast_toINS_13as_c_functionEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_c_function* gameswf::cast_to<gameswf::as_c_function>(gameswf::as_object_interface*)
; decoder-mode: arm
007ba6c8  10 40 2d e9                                      push {r4, lr}
007ba6cc  00 40 50 e2                                      subs r4, r0, #0
007ba6d0  07 00 00 0a                                      beq #0x7ba6f4
007ba6d4  00 30 94 e5                                      ldr r3, [r4]
007ba6d8  05 10 a0 e3                                      mov r1, #5
007ba6dc  0f e0 a0 e1                                      mov lr, pc
007ba6e0  08 f0 93 e5                                      ldr pc, [r3, #8]
007ba6e4  00 00 50 e3                                      cmp r0, #0
007ba6e8  01 00 00 0a                                      beq #0x7ba6f4
007ba6ec  04 00 a0 e1                                      mov r0, r4
007ba6f0  10 80 bd e8                                      pop {r4, pc}
007ba6f4  00 00 a0 e3                                      mov r0, #0
007ba6f8  10 80 bd e8                                      pop {r4, pc}
