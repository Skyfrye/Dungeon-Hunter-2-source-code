; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00796bc8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_c_function const* gameswf
; alias: _ZN7gameswf7cast_toINS_13as_c_functionEEEPKT_PKNS_19as_object_interfaceE
; demangled: gameswf::as_c_function const* gameswf::cast_to<gameswf::as_c_function>(gameswf::as_object_interface const*)
; decoder-mode: arm
00796bc8  10 40 2d e9                                      push {r4, lr}
00796bcc  00 40 50 e2                                      subs r4, r0, #0
00796bd0  07 00 00 0a                                      beq #0x796bf4
00796bd4  00 30 94 e5                                      ldr r3, [r4]
00796bd8  05 10 a0 e3                                      mov r1, #5
00796bdc  0f e0 a0 e1                                      mov lr, pc
00796be0  08 f0 93 e5                                      ldr pc, [r3, #8]
00796be4  00 00 50 e3                                      cmp r0, #0
00796be8  01 00 00 0a                                      beq #0x796bf4
00796bec  04 00 a0 e1                                      mov r0, r4
00796bf0  10 80 bd e8                                      pop {r4, pc}
00796bf4  00 00 a0 e3                                      mov r0, #0
00796bf8  10 80 bd e8                                      pop {r4, pc}
