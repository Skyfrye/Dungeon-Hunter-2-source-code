; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077e21c, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::as_function>
; alias: _ZN7gameswf9smart_ptrINS_11as_functionEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::as_function>::set_ref(gameswf::as_function*)
; decoder-mode: arm
0077e21c  70 40 2d e9                                      push {r4, r5, r6, lr}
0077e220  00 40 a0 e1                                      mov r4, r0
0077e224  00 00 90 e5                                      ldr r0, [r0]
0077e228  01 50 a0 e1                                      mov r5, r1
0077e22c  01 00 50 e1                                      cmp r0, r1
0077e230  08 00 00 0a                                      beq #0x77e258
0077e234  00 00 50 e3                                      cmp r0, #0
0077e238  00 00 00 0a                                      beq #0x77e240
0077e23c  ff 6f ff eb                                      bl #0x75a240
0077e240  00 00 55 e3                                      cmp r5, #0
0077e244  00 50 84 e5                                      str r5, [r4]
0077e248  02 00 00 0a                                      beq #0x77e258
0077e24c  05 00 a0 e1                                      mov r0, r5
0077e250  70 40 bd e8                                      pop {r4, r5, r6, lr}
0077e254  82 6e ff ea                                      b #0x759c64
0077e258  70 80 bd e8                                      pop {r4, r5, r6, pc}
