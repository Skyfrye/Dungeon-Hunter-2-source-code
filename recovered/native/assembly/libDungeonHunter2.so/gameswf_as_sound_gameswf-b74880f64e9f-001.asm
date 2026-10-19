; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a4d74, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_sound* gameswf
; alias: _ZN7gameswf7cast_toINS_8as_soundEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_sound* gameswf::cast_to<gameswf::as_sound>(gameswf::as_object_interface*)
; decoder-mode: arm
007a4d74  10 40 2d e9                                      push {r4, lr}
007a4d78  00 40 50 e2                                      subs r4, r0, #0
007a4d7c  07 00 00 0a                                      beq #0x7a4da0
007a4d80  00 30 94 e5                                      ldr r3, [r4]
007a4d84  12 10 a0 e3                                      mov r1, #0x12
007a4d88  0f e0 a0 e1                                      mov lr, pc
007a4d8c  08 f0 93 e5                                      ldr pc, [r3, #8]
007a4d90  00 00 50 e3                                      cmp r0, #0
007a4d94  01 00 00 0a                                      beq #0x7a4da0
007a4d98  04 00 a0 e1                                      mov r0, r4
007a4d9c  10 80 bd e8                                      pop {r4, pc}
007a4da0  00 00 a0 e3                                      mov r0, #0
007a4da4  10 80 bd e8                                      pop {r4, pc}
