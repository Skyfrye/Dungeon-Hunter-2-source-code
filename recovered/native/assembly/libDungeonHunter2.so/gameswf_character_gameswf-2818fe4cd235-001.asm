; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ba694, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::character* gameswf
; alias: _ZN7gameswf7cast_toINS_9characterEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::character* gameswf::cast_to<gameswf::character>(gameswf::as_object_interface*)
; decoder-mode: arm
007ba694  10 40 2d e9                                      push {r4, lr}
007ba698  00 40 50 e2                                      subs r4, r0, #0
007ba69c  07 00 00 0a                                      beq #0x7ba6c0
007ba6a0  00 30 94 e5                                      ldr r3, [r4]
007ba6a4  01 10 a0 e3                                      mov r1, #1
007ba6a8  0f e0 a0 e1                                      mov lr, pc
007ba6ac  08 f0 93 e5                                      ldr pc, [r3, #8]
007ba6b0  00 00 50 e3                                      cmp r0, #0
007ba6b4  01 00 00 0a                                      beq #0x7ba6c0
007ba6b8  04 00 a0 e1                                      mov r0, r4
007ba6bc  10 80 bd e8                                      pop {r4, pc}
007ba6c0  00 00 a0 e3                                      mov r0, #0
007ba6c4  10 80 bd e8                                      pop {r4, pc}
