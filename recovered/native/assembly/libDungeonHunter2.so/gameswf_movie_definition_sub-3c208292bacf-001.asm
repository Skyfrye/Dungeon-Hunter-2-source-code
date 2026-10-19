; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00763660, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::movie_definition_sub
; alias: _ZNK7gameswf20movie_definition_sub2isEi
; demangled: gameswf::movie_definition_sub::is(int) const
; decoder-mode: arm
00763660  09 00 51 e3                                      cmp r1, #9
00763664  01 00 a0 03                                      moveq r0, #1
00763668  1e ff 2f 01                                      bxeq lr
0076366c  0a 00 51 e3                                      cmp r1, #0xa
00763670  00 00 a0 13                                      movne r0, #0
00763674  01 00 a0 03                                      moveq r0, #1
00763678  1e ff 2f e1                                      bx lr

; FUNCTION 0x0076367c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_definition_sub
; alias: _ZNK7gameswf20movie_definition_sub15get_frame_countEv
; demangled: gameswf::movie_definition_sub::get_frame_count() const
; decoder-mode: arm
0076367c  38 00 90 e5                                      ldr r0, [r0, #0x38]
00763680  1e ff 2f e1                                      bx lr

; FUNCTION 0x00763684, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::movie_definition_sub
; alias: _ZNK7gameswf20movie_definition_sub14is_multithreadEv
; demangled: gameswf::movie_definition_sub::is_multithread() const
; decoder-mode: arm
00763684  00 00 a0 e3                                      mov r0, #0
00763688  1e ff 2f e1                                      bx lr

; FUNCTION 0x00765048, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::movie_definition_sub
; alias: _ZN7gameswf20movie_definition_subD2Ev
; demangled: gameswf::movie_definition_sub::~movie_definition_sub()
; decoder-mode: arm
00765048  70 40 2d e9                                      push {r4, r5, r6, lr}
0076504c  68 50 9f e5                                      ldr r5, [pc, #0x68]
00765050  68 30 9f e5                                      ldr r3, [pc, #0x68]
00765054  01 20 a0 e3                                      mov r2, #1
00765058  05 50 8f e0                                      add r5, pc, r5
0076505c  03 30 95 e7                                      ldr r3, [r5, r3]
00765060  41 20 c0 e5                                      strb r2, [r0, #0x41]
00765064  00 40 a0 e1                                      mov r4, r0
00765068  08 30 83 e2                                      add r3, r3, #8
0076506c  00 30 80 e5                                      str r3, [r0]
00765070  ca 5e 00 eb                                      bl #0x77cba0
00765074  00 30 50 e2                                      subs r3, r0, #0
00765078  03 00 00 0a                                      beq #0x76508c
0076507c  00 30 93 e5                                      ldr r3, [r3]
00765080  20 10 94 e5                                      ldr r1, [r4, #0x20]
00765084  0f e0 a0 e1                                      mov lr, pc
00765088  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0076508c  34 00 84 e2                                      add r0, r4, #0x34
00765090  09 d4 ff eb                                      bl #0x75a0bc
00765094  30 00 84 e2                                      add r0, r4, #0x30
00765098  27 d4 ff eb                                      bl #0x75a13c
0076509c  20 30 9f e5                                      ldr r3, [pc, #0x20]
007650a0  04 00 a0 e1                                      mov r0, r4
007650a4  03 30 95 e7                                      ldr r3, [r5, r3]
007650a8  08 30 83 e2                                      add r3, r3, #8
007650ac  00 30 84 e5                                      str r3, [r4]
007650b0  70 e3 ff eb                                      bl #0x75de78
007650b4  04 00 a0 e1                                      mov r0, r4
007650b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007650bc  38 fa 22 00 84 3f 00 00 b4 3f 00 00              .byte 0x38, 0xfa, 0x22, 0x00, 0x84, 0x3f, 0x00, 0x00, 0xb4, 0x3f, 0x00, 0x00

; FUNCTION 0x007650c8, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::movie_definition_sub
; alias: _ZN7gameswf20movie_definition_subD1Ev
; demangled: gameswf::movie_definition_sub::~movie_definition_sub()
; decoder-mode: arm
007650c8  70 40 2d e9                                      push {r4, r5, r6, lr}
007650cc  68 50 9f e5                                      ldr r5, [pc, #0x68]
007650d0  68 30 9f e5                                      ldr r3, [pc, #0x68]
007650d4  01 20 a0 e3                                      mov r2, #1
007650d8  05 50 8f e0                                      add r5, pc, r5
007650dc  03 30 95 e7                                      ldr r3, [r5, r3]
007650e0  41 20 c0 e5                                      strb r2, [r0, #0x41]
007650e4  00 40 a0 e1                                      mov r4, r0
007650e8  08 30 83 e2                                      add r3, r3, #8
007650ec  00 30 80 e5                                      str r3, [r0]
007650f0  aa 5e 00 eb                                      bl #0x77cba0
007650f4  00 30 50 e2                                      subs r3, r0, #0
007650f8  03 00 00 0a                                      beq #0x76510c
007650fc  00 30 93 e5                                      ldr r3, [r3]
00765100  20 10 94 e5                                      ldr r1, [r4, #0x20]
00765104  0f e0 a0 e1                                      mov lr, pc
00765108  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0076510c  34 00 84 e2                                      add r0, r4, #0x34
00765110  e9 d3 ff eb                                      bl #0x75a0bc
00765114  30 00 84 e2                                      add r0, r4, #0x30
00765118  07 d4 ff eb                                      bl #0x75a13c
0076511c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00765120  04 00 a0 e1                                      mov r0, r4
00765124  03 30 95 e7                                      ldr r3, [r5, r3]
00765128  08 30 83 e2                                      add r3, r3, #8
0076512c  00 30 84 e5                                      str r3, [r4]
00765130  50 e3 ff eb                                      bl #0x75de78
00765134  04 00 a0 e1                                      mov r0, r4
00765138  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0076513c  b8 f9 22 00 84 3f 00 00 b4 3f 00 00              .byte 0xb8, 0xf9, 0x22, 0x00, 0x84, 0x3f, 0x00, 0x00, 0xb4, 0x3f, 0x00, 0x00

; FUNCTION 0x00765148, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::movie_definition_sub
; alias: _ZN7gameswf20movie_definition_subD0Ev
; demangled: gameswf::movie_definition_sub::~movie_definition_sub()
; decoder-mode: arm
00765148  10 40 2d e9                                      push {r4, lr}
0076514c  00 40 a0 e1                                      mov r4, r0
00765150  dc ff ff eb                                      bl #0x7650c8
00765154  04 00 a0 e1                                      mov r0, r4
00765158  54 a4 ee eb                                      bl #0x30e2b0
0076515c  04 00 a0 e1                                      mov r0, r4
00765160  10 80 bd e8                                      pop {r4, pc}
