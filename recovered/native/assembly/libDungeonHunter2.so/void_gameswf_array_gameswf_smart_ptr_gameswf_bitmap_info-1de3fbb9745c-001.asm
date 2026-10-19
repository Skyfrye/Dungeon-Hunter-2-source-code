; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007647cc, declared_size=80, range_size=80, mode=arm
; class-group: void gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_11bitmap_infoEEEE9push_backIPS2_EEvRKT_
; demangled: void gameswf::array<gameswf::smart_ptr<gameswf::bitmap_info> >::push_back<gameswf::bitmap_info*>(gameswf::bitmap_info* const&)
; decoder-mode: arm
007647cc  70 40 2d e9                                      push {r4, r5, r6, lr}
007647d0  04 30 90 e5                                      ldr r3, [r0, #4]
007647d4  08 20 90 e5                                      ldr r2, [r0, #8]
007647d8  00 40 a0 e1                                      mov r4, r0
007647dc  01 50 83 e2                                      add r5, r3, #1
007647e0  02 00 55 e1                                      cmp r5, r2
007647e4  01 60 a0 e1                                      mov r6, r1
007647e8  07 00 00 ca                                      bgt #0x76480c
007647ec  00 00 96 e5                                      ldr r0, [r6]
007647f0  00 20 94 e5                                      ldr r2, [r4]
007647f4  00 00 50 e3                                      cmp r0, #0
007647f8  03 01 82 e7                                      str r0, [r2, r3, lsl #2]
007647fc  00 00 00 0a                                      beq #0x764804
00764800  17 d5 ff eb                                      bl #0x759c64
00764804  04 50 84 e5                                      str r5, [r4, #4]
00764808  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076480c  c5 10 85 e0                                      add r1, r5, r5, asr #1
00764810  ce ff ff eb                                      bl #0x764750
00764814  04 30 94 e5                                      ldr r3, [r4, #4]
00764818  f3 ff ff ea                                      b #0x7647ec
