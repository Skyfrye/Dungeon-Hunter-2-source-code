; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042257c, declared_size=100, range_size=100, mode=arm
; class-group: std::vector<gameswf::as_value*, std::allocator<gameswf::as_value*> >
; alias: _ZNSt6vectorIPN7gameswf8as_valueESaIS2_EEC1Ej
; demangled: std::vector<gameswf::as_value*, std::allocator<gameswf::as_value*> >::vector(unsigned int)
; decoder-mode: arm
0042257c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00422580  0c d0 4d e2                                      sub sp, sp, #0xc
00422584  00 40 a0 e1                                      mov r4, r0
00422588  00 60 a0 e3                                      mov r6, #0
0042258c  08 20 8d e2                                      add r2, sp, #8
00422590  04 10 22 e5                                      str r1, [r2, #-4]!
00422594  00 60 84 e5                                      str r6, [r4]
00422598  04 60 84 e5                                      str r6, [r4, #4]
0042259c  08 60 a0 e5                                      str r6, [r0, #8]!
004225a0  01 70 a0 e1                                      mov r7, r1
004225a4  d8 ff ff eb                                      bl #0x42250c
004225a8  04 30 9d e5                                      ldr r3, [sp, #4]
004225ac  07 71 a0 e1                                      lsl r7, r7, #2
004225b0  00 50 a0 e1                                      mov r5, r0
004225b4  03 31 80 e0                                      add r3, r0, r3, lsl #2
004225b8  00 00 84 e5                                      str r0, [r4]
004225bc  09 00 84 e9                                      stmib r4, {r0, r3}
004225c0  06 10 a0 e1                                      mov r1, r6
004225c4  07 20 a0 e1                                      mov r2, r7
004225c8  07 50 85 e0                                      add r5, r5, r7
004225cc  a3 af fb eb                                      bl #0x30e460
004225d0  04 50 84 e5                                      str r5, [r4, #4]
004225d4  04 00 a0 e1                                      mov r0, r4
004225d8  0c d0 8d e2                                      add sp, sp, #0xc
004225dc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
