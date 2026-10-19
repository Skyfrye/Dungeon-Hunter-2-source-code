; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00796b4c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_function* gameswf
; alias: _ZN7gameswf7cast_toINS_11as_functionEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_function* gameswf::cast_to<gameswf::as_function>(gameswf::as_object_interface*)
; decoder-mode: arm
00796b4c  10 40 2d e9                                      push {r4, lr}
00796b50  00 40 50 e2                                      subs r4, r0, #0
00796b54  07 00 00 0a                                      beq #0x796b78
00796b58  00 30 94 e5                                      ldr r3, [r4]
00796b5c  04 10 a0 e3                                      mov r1, #4
00796b60  0f e0 a0 e1                                      mov lr, pc
00796b64  08 f0 93 e5                                      ldr pc, [r3, #8]
00796b68  00 00 50 e3                                      cmp r0, #0
00796b6c  01 00 00 0a                                      beq #0x796b78
00796b70  04 00 a0 e1                                      mov r0, r4
00796b74  10 80 bd e8                                      pop {r4, pc}
00796b78  00 00 a0 e3                                      mov r0, #0
00796b7c  10 80 bd e8                                      pop {r4, pc}
