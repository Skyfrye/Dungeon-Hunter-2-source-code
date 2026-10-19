; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00764234, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::font>
; alias: _ZN7gameswf9smart_ptrINS_4fontEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::font>::set_ref(gameswf::font*)
; decoder-mode: arm
00764234  70 40 2d e9                                      push {r4, r5, r6, lr}
00764238  00 40 a0 e1                                      mov r4, r0
0076423c  00 00 90 e5                                      ldr r0, [r0]
00764240  01 50 a0 e1                                      mov r5, r1
00764244  01 00 50 e1                                      cmp r0, r1
00764248  08 00 00 0a                                      beq #0x764270
0076424c  00 00 50 e3                                      cmp r0, #0
00764250  00 00 00 0a                                      beq #0x764258
00764254  f9 d7 ff eb                                      bl #0x75a240
00764258  00 00 55 e3                                      cmp r5, #0
0076425c  00 50 84 e5                                      str r5, [r4]
00764260  02 00 00 0a                                      beq #0x764270
00764264  05 00 a0 e1                                      mov r0, r5
00764268  70 40 bd e8                                      pop {r4, r5, r6, lr}
0076426c  7c d6 ff ea                                      b #0x759c64
00764270  70 80 bd e8                                      pop {r4, r5, r6, pc}
