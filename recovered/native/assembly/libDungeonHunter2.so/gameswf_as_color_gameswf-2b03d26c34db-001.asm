; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0079c06c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_color* gameswf
; alias: _ZN7gameswf7cast_toINS_8as_colorEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_color* gameswf::cast_to<gameswf::as_color>(gameswf::as_object_interface*)
; decoder-mode: arm
0079c06c  10 40 2d e9                                      push {r4, lr}
0079c070  00 40 50 e2                                      subs r4, r0, #0
0079c074  07 00 00 0a                                      beq #0x79c098
0079c078  00 30 94 e5                                      ldr r3, [r4]
0079c07c  11 10 a0 e3                                      mov r1, #0x11
0079c080  0f e0 a0 e1                                      mov lr, pc
0079c084  08 f0 93 e5                                      ldr pc, [r3, #8]
0079c088  00 00 50 e3                                      cmp r0, #0
0079c08c  01 00 00 0a                                      beq #0x79c098
0079c090  04 00 a0 e1                                      mov r0, r4
0079c094  10 80 bd e8                                      pop {r4, pc}
0079c098  00 00 a0 e3                                      mov r0, #0
0079c09c  10 80 bd e8                                      pop {r4, pc}
