; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c06e8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::sprite_instance* gameswf
; alias: _ZN7gameswf7cast_toINS_15sprite_instanceEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::sprite_instance* gameswf::cast_to<gameswf::sprite_instance>(gameswf::as_object_interface*)
; decoder-mode: arm
007c06e8  10 40 2d e9                                      push {r4, lr}
007c06ec  00 40 50 e2                                      subs r4, r0, #0
007c06f0  07 00 00 0a                                      beq #0x7c0714
007c06f4  00 30 94 e5                                      ldr r3, [r4]
007c06f8  02 10 a0 e3                                      mov r1, #2
007c06fc  0f e0 a0 e1                                      mov lr, pc
007c0700  08 f0 93 e5                                      ldr pc, [r3, #8]
007c0704  00 00 50 e3                                      cmp r0, #0
007c0708  01 00 00 0a                                      beq #0x7c0714
007c070c  04 00 a0 e1                                      mov r0, r4
007c0710  10 80 bd e8                                      pop {r4, pc}
007c0714  00 00 a0 e3                                      mov r0, #0
007c0718  10 80 bd e8                                      pop {r4, pc}
