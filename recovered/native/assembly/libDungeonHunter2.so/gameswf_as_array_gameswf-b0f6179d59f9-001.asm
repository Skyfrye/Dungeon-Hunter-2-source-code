; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00439ce8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_array* gameswf
; alias: _ZN7gameswf7cast_toINS_8as_arrayEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_array* gameswf::cast_to<gameswf::as_array>(gameswf::as_object_interface*)
; decoder-mode: arm
00439ce8  10 40 2d e9                                      push {r4, lr}
00439cec  00 40 50 e2                                      subs r4, r0, #0
00439cf0  07 00 00 0a                                      beq #0x439d14
00439cf4  00 30 94 e5                                      ldr r3, [r4]
00439cf8  10 10 a0 e3                                      mov r1, #0x10
00439cfc  0f e0 a0 e1                                      mov lr, pc
00439d00  08 f0 93 e5                                      ldr pc, [r3, #8]
00439d04  00 00 50 e3                                      cmp r0, #0
00439d08  01 00 00 0a                                      beq #0x439d14
00439d0c  04 00 a0 e1                                      mov r0, r4
00439d10  10 80 bd e8                                      pop {r4, pc}
00439d14  00 00 a0 e3                                      mov r0, #0
00439d18  10 80 bd e8                                      pop {r4, pc}
