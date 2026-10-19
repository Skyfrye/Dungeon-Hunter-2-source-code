; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b8c84, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::as_3_function>
; alias: _ZN7gameswf9smart_ptrINS_13as_3_functionEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::as_3_function>::set_ref(gameswf::as_3_function*)
; decoder-mode: arm
007b8c84  70 40 2d e9                                      push {r4, r5, r6, lr}
007b8c88  00 40 a0 e1                                      mov r4, r0
007b8c8c  00 00 90 e5                                      ldr r0, [r0]
007b8c90  01 50 a0 e1                                      mov r5, r1
007b8c94  01 00 50 e1                                      cmp r0, r1
007b8c98  08 00 00 0a                                      beq #0x7b8cc0
007b8c9c  00 00 50 e3                                      cmp r0, #0
007b8ca0  00 00 00 0a                                      beq #0x7b8ca8
007b8ca4  65 85 fe eb                                      bl #0x75a240
007b8ca8  00 00 55 e3                                      cmp r5, #0
007b8cac  00 50 84 e5                                      str r5, [r4]
007b8cb0  02 00 00 0a                                      beq #0x7b8cc0
007b8cb4  05 00 a0 e1                                      mov r0, r5
007b8cb8  70 40 bd e8                                      pop {r4, r5, r6, lr}
007b8cbc  e8 83 fe ea                                      b #0x759c64
007b8cc0  70 80 bd e8                                      pop {r4, r5, r6, pc}
