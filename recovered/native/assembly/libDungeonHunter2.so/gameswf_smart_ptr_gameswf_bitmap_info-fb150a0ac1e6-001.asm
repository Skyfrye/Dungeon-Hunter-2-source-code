; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077a740, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::bitmap_info>
; alias: _ZN7gameswf9smart_ptrINS_11bitmap_infoEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::bitmap_info>::set_ref(gameswf::bitmap_info*)
; decoder-mode: arm
0077a740  70 40 2d e9                                      push {r4, r5, r6, lr}
0077a744  00 40 a0 e1                                      mov r4, r0
0077a748  00 00 90 e5                                      ldr r0, [r0]
0077a74c  01 50 a0 e1                                      mov r5, r1
0077a750  01 00 50 e1                                      cmp r0, r1
0077a754  08 00 00 0a                                      beq #0x77a77c
0077a758  00 00 50 e3                                      cmp r0, #0
0077a75c  00 00 00 0a                                      beq #0x77a764
0077a760  b6 7e ff eb                                      bl #0x75a240
0077a764  00 00 55 e3                                      cmp r5, #0
0077a768  00 50 84 e5                                      str r5, [r4]
0077a76c  02 00 00 0a                                      beq #0x77a77c
0077a770  05 00 a0 e1                                      mov r0, r5
0077a774  70 40 bd e8                                      pop {r4, r5, r6, lr}
0077a778  39 7d ff ea                                      b #0x759c64
0077a77c  70 80 bd e8                                      pop {r4, r5, r6, pc}
