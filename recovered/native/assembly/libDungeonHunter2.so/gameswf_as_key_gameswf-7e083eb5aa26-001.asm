; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0079ef34, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_key* gameswf
; alias: _ZN7gameswf7cast_toINS_6as_keyEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_key* gameswf::cast_to<gameswf::as_key>(gameswf::as_object_interface*)
; decoder-mode: arm
0079ef34  10 40 2d e9                                      push {r4, lr}
0079ef38  00 40 50 e2                                      subs r4, r0, #0
0079ef3c  07 00 00 0a                                      beq #0x79ef60
0079ef40  00 30 94 e5                                      ldr r3, [r4]
0079ef44  0f 10 a0 e3                                      mov r1, #0xf
0079ef48  0f e0 a0 e1                                      mov lr, pc
0079ef4c  08 f0 93 e5                                      ldr pc, [r3, #8]
0079ef50  00 00 50 e3                                      cmp r0, #0
0079ef54  01 00 00 0a                                      beq #0x79ef60
0079ef58  04 00 a0 e1                                      mov r0, r4
0079ef5c  10 80 bd e8                                      pop {r4, pc}
0079ef60  00 00 a0 e3                                      mov r0, #0
0079ef64  10 80 bd e8                                      pop {r4, pc}
