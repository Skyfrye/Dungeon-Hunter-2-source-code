; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a259c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_mcloader* gameswf
; alias: _ZN7gameswf7cast_toINS_11as_mcloaderEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_mcloader* gameswf::cast_to<gameswf::as_mcloader>(gameswf::as_object_interface*)
; decoder-mode: arm
007a259c  10 40 2d e9                                      push {r4, lr}
007a25a0  00 40 50 e2                                      subs r4, r0, #0
007a25a4  07 00 00 0a                                      beq #0x7a25c8
007a25a8  00 30 94 e5                                      ldr r3, [r4]
007a25ac  24 10 a0 e3                                      mov r1, #0x24
007a25b0  0f e0 a0 e1                                      mov lr, pc
007a25b4  08 f0 93 e5                                      ldr pc, [r3, #8]
007a25b8  00 00 50 e3                                      cmp r0, #0
007a25bc  01 00 00 0a                                      beq #0x7a25c8
007a25c0  04 00 a0 e1                                      mov r0, r4
007a25c4  10 80 bd e8                                      pop {r4, pc}
007a25c8  00 00 a0 e3                                      mov r0, #0
007a25cc  10 80 bd e8                                      pop {r4, pc}
