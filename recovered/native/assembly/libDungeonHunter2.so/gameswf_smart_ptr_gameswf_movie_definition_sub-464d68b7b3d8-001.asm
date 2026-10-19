; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076cac4, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::movie_definition_sub>
; alias: _ZN7gameswf9smart_ptrINS_20movie_definition_subEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::movie_definition_sub>::set_ref(gameswf::movie_definition_sub*)
; decoder-mode: arm
0076cac4  70 40 2d e9                                      push {r4, r5, r6, lr}
0076cac8  00 40 a0 e1                                      mov r4, r0
0076cacc  00 00 90 e5                                      ldr r0, [r0]
0076cad0  01 50 a0 e1                                      mov r5, r1
0076cad4  01 00 50 e1                                      cmp r0, r1
0076cad8  08 00 00 0a                                      beq #0x76cb00
0076cadc  00 00 50 e3                                      cmp r0, #0
0076cae0  00 00 00 0a                                      beq #0x76cae8
0076cae4  d5 b5 ff eb                                      bl #0x75a240
0076cae8  00 00 55 e3                                      cmp r5, #0
0076caec  00 50 84 e5                                      str r5, [r4]
0076caf0  02 00 00 0a                                      beq #0x76cb00
0076caf4  05 00 a0 e1                                      mov r0, r5
0076caf8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0076cafc  58 b4 ff ea                                      b #0x759c64
0076cb00  70 80 bd e8                                      pop {r4, r5, r6, pc}
