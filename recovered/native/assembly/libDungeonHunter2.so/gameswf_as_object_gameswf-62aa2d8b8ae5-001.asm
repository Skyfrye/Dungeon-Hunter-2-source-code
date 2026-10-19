; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00439cb4, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_object* gameswf
; alias: _ZN7gameswf7cast_toINS_9as_objectEEEPT_PNS_19as_object_interfaceE
; demangled: gameswf::as_object* gameswf::cast_to<gameswf::as_object>(gameswf::as_object_interface*)
; decoder-mode: arm
00439cb4  10 40 2d e9                                      push {r4, lr}
00439cb8  00 40 50 e2                                      subs r4, r0, #0
00439cbc  07 00 00 0a                                      beq #0x439ce0
00439cc0  00 30 94 e5                                      ldr r3, [r4]
00439cc4  00 10 a0 e3                                      mov r1, #0
00439cc8  0f e0 a0 e1                                      mov lr, pc
00439ccc  08 f0 93 e5                                      ldr pc, [r3, #8]
00439cd0  00 00 50 e3                                      cmp r0, #0
00439cd4  01 00 00 0a                                      beq #0x439ce0
00439cd8  04 00 a0 e1                                      mov r0, r4
00439cdc  10 80 bd e8                                      pop {r4, pc}
00439ce0  00 00 a0 e3                                      mov r0, #0
00439ce4  10 80 bd e8                                      pop {r4, pc}
