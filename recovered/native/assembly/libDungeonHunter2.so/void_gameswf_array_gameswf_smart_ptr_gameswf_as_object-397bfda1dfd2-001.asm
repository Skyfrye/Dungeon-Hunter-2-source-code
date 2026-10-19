; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0043a9c8, declared_size=80, range_size=80, mode=arm
; class-group: void gameswf::array<gameswf::smart_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_9as_objectEEEE9push_backIPS2_EEvRKT_
; demangled: void gameswf::array<gameswf::smart_ptr<gameswf::as_object> >::push_back<gameswf::as_object*>(gameswf::as_object* const&)
; decoder-mode: arm
0043a9c8  70 40 2d e9                                      push {r4, r5, r6, lr}
0043a9cc  04 30 90 e5                                      ldr r3, [r0, #4]
0043a9d0  08 20 90 e5                                      ldr r2, [r0, #8]
0043a9d4  00 40 a0 e1                                      mov r4, r0
0043a9d8  01 50 83 e2                                      add r5, r3, #1
0043a9dc  02 00 55 e1                                      cmp r5, r2
0043a9e0  01 60 a0 e1                                      mov r6, r1
0043a9e4  07 00 00 ca                                      bgt #0x43aa08
0043a9e8  00 00 96 e5                                      ldr r0, [r6]
0043a9ec  00 20 94 e5                                      ldr r2, [r4]
0043a9f0  00 00 50 e3                                      cmp r0, #0
0043a9f4  03 01 82 e7                                      str r0, [r2, r3, lsl #2]
0043a9f8  00 00 00 0a                                      beq #0x43aa00
0043a9fc  98 7c 0c eb                                      bl #0x759c64
0043aa00  04 50 84 e5                                      str r5, [r4, #4]
0043aa04  70 80 bd e8                                      pop {r4, r5, r6, pc}
0043aa08  c5 10 85 e0                                      add r1, r5, r5, asr #1
0043aa0c  b6 f4 ff eb                                      bl #0x437cec
0043aa10  04 30 94 e5                                      ldr r3, [r4, #4]
0043aa14  f3 ff ff ea                                      b #0x43a9e8
