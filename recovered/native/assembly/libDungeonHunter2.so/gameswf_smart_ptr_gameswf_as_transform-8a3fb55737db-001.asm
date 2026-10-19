; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077e2e8, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::as_transform>
; alias: _ZN7gameswf9smart_ptrINS_12as_transformEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::as_transform>::set_ref(gameswf::as_transform*)
; decoder-mode: arm
0077e2e8  70 40 2d e9                                      push {r4, r5, r6, lr}
0077e2ec  00 40 a0 e1                                      mov r4, r0
0077e2f0  00 00 90 e5                                      ldr r0, [r0]
0077e2f4  01 50 a0 e1                                      mov r5, r1
0077e2f8  01 00 50 e1                                      cmp r0, r1
0077e2fc  08 00 00 0a                                      beq #0x77e324
0077e300  00 00 50 e3                                      cmp r0, #0
0077e304  00 00 00 0a                                      beq #0x77e30c
0077e308  cc 6f ff eb                                      bl #0x75a240
0077e30c  00 00 55 e3                                      cmp r5, #0
0077e310  00 50 84 e5                                      str r5, [r4]
0077e314  02 00 00 0a                                      beq #0x77e324
0077e318  05 00 a0 e1                                      mov r0, r5
0077e31c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0077e320  4f 6e ff ea                                      b #0x759c64
0077e324  70 80 bd e8                                      pop {r4, r5, r6, pc}
