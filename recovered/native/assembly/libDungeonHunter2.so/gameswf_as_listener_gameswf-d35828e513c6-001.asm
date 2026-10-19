; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0079b340, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_listener* gameswf
; alias: _ZN7gameswf7cast_toINS_11as_listenerEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_listener* gameswf::cast_to<gameswf::as_listener>(gameswf::as_object_interface*)
; decoder-mode: arm
0079b340  10 40 2d e9                                      push {r4, lr}
0079b344  00 40 50 e2                                      subs r4, r0, #0
0079b348  07 00 00 0a                                      beq #0x79b36c
0079b34c  00 30 94 e5                                      ldr r3, [r4]
0079b350  1e 10 a0 e3                                      mov r1, #0x1e
0079b354  0f e0 a0 e1                                      mov lr, pc
0079b358  08 f0 93 e5                                      ldr pc, [r3, #8]
0079b35c  00 00 50 e3                                      cmp r0, #0
0079b360  01 00 00 0a                                      beq #0x79b36c
0079b364  04 00 a0 e1                                      mov r0, r4
0079b368  10 80 bd e8                                      pop {r4, pc}
0079b36c  00 00 a0 e3                                      mov r0, #0
0079b370  10 80 bd e8                                      pop {r4, pc}
