; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075a258, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::root>
; alias: _ZN7gameswf9smart_ptrINS_4rootEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::root>::set_ref(gameswf::root*)
; decoder-mode: arm
0075a258  70 40 2d e9                                      push {r4, r5, r6, lr}
0075a25c  00 40 a0 e1                                      mov r4, r0
0075a260  00 00 90 e5                                      ldr r0, [r0]
0075a264  01 50 a0 e1                                      mov r5, r1
0075a268  01 00 50 e1                                      cmp r0, r1
0075a26c  08 00 00 0a                                      beq #0x75a294
0075a270  00 00 50 e3                                      cmp r0, #0
0075a274  00 00 00 0a                                      beq #0x75a27c
0075a278  f0 ff ff eb                                      bl #0x75a240
0075a27c  00 00 55 e3                                      cmp r5, #0
0075a280  00 50 84 e5                                      str r5, [r4]
0075a284  02 00 00 0a                                      beq #0x75a294
0075a288  05 00 a0 e1                                      mov r0, r5
0075a28c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0075a290  73 fe ff ea                                      b #0x759c64
0075a294  70 80 bd e8                                      pop {r4, r5, r6, pc}
