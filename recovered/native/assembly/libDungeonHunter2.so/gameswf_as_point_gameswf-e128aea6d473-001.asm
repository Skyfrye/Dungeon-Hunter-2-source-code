; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a4180, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_point* gameswf
; alias: _ZN7gameswf7cast_toINS_8as_pointEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_point* gameswf::cast_to<gameswf::as_point>(gameswf::as_object_interface*)
; decoder-mode: arm
007a4180  10 40 2d e9                                      push {r4, lr}
007a4184  00 40 50 e2                                      subs r4, r0, #0
007a4188  07 00 00 0a                                      beq #0x7a41ac
007a418c  00 30 94 e5                                      ldr r3, [r4]
007a4190  19 10 a0 e3                                      mov r1, #0x19
007a4194  0f e0 a0 e1                                      mov lr, pc
007a4198  08 f0 93 e5                                      ldr pc, [r3, #8]
007a419c  00 00 50 e3                                      cmp r0, #0
007a41a0  01 00 00 0a                                      beq #0x7a41ac
007a41a4  04 00 a0 e1                                      mov r0, r4
007a41a8  10 80 bd e8                                      pop {r4, pc}
007a41ac  00 00 a0 e3                                      mov r0, #0
007a41b0  10 80 bd e8                                      pop {r4, pc}
