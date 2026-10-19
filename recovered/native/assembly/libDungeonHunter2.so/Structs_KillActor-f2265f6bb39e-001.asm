; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d22e8, declared_size=48, range_size=48, mode=arm
; class-group: Structs::KillActor
; alias: _ZN7Structs9KillActor8finalizeEv
; demangled: Structs::KillActor::finalize()
; decoder-mode: arm
004d22e8  10 40 2d e9                                      push {r4, lr}
004d22ec  00 40 a0 e1                                      mov r4, r0
004d22f0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d22f4  00 00 50 e3                                      cmp r0, #0
004d22f8  03 00 00 0a                                      beq #0x4d230c
004d22fc  4f f8 f8 eb                                      bl #0x310440
004d2300  00 30 a0 e3                                      mov r3, #0
004d2304  08 30 84 e5                                      str r3, [r4, #8]
004d2308  0c 30 84 e5                                      str r3, [r4, #0xc]
004d230c  04 00 a0 e1                                      mov r0, r4
004d2310  10 40 bd e8                                      pop {r4, lr}
004d2314  53 d2 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d2318, declared_size=72, range_size=72, mode=arm
; class-group: Structs::KillActor
; alias: _ZN7Structs9KillActorD1Ev
; demangled: Structs::KillActor::~KillActor()
; decoder-mode: arm
004d2318  10 40 2d e9                                      push {r4, lr}
004d231c  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2320  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2324  00 40 a0 e1                                      mov r4, r0
004d2328  03 30 8f e0                                      add r3, pc, r3
004d232c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2330  02 20 93 e7                                      ldr r2, [r3, r2]
004d2334  00 00 50 e3                                      cmp r0, #0
004d2338  08 20 82 e2                                      add r2, r2, #8
004d233c  00 20 84 e5                                      str r2, [r4]
004d2340  00 00 00 0a                                      beq #0x4d2348
004d2344  3d f8 f8 eb                                      bl #0x310440
004d2348  04 00 a0 e1                                      mov r0, r4
004d234c  43 d2 ff eb                                      bl #0x4c6c60
004d2350  04 00 a0 e1                                      mov r0, r4
004d2354  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2358  68 27 4c 00 50 2e 00 00                          .byte 0x68, 0x27, 0x4c, 0x00, 0x50, 0x2e, 0x00, 0x00

; FUNCTION 0x004d2360, declared_size=28, range_size=28, mode=arm
; class-group: Structs::KillActor
; alias: _ZN7Structs9KillActorD0Ev
; demangled: Structs::KillActor::~KillActor()
; decoder-mode: arm
004d2360  10 40 2d e9                                      push {r4, lr}
004d2364  00 40 a0 e1                                      mov r4, r0
004d2368  ea ff ff eb                                      bl #0x4d2318
004d236c  04 00 a0 e1                                      mov r0, r4
004d2370  32 f8 f8 eb                                      bl #0x310440
004d2374  04 00 a0 e1                                      mov r0, r4
004d2378  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d237c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::KillActor
; alias: _ZN7Structs9KillActorD2Ev
; demangled: Structs::KillActor::~KillActor()
; decoder-mode: arm
004d237c  10 40 2d e9                                      push {r4, lr}
004d2380  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2384  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2388  00 40 a0 e1                                      mov r4, r0
004d238c  03 30 8f e0                                      add r3, pc, r3
004d2390  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2394  02 20 93 e7                                      ldr r2, [r3, r2]
004d2398  00 00 50 e3                                      cmp r0, #0
004d239c  08 20 82 e2                                      add r2, r2, #8
004d23a0  00 20 84 e5                                      str r2, [r4]
004d23a4  00 00 00 0a                                      beq #0x4d23ac
004d23a8  24 f8 f8 eb                                      bl #0x310440
004d23ac  04 00 a0 e1                                      mov r0, r4
004d23b0  2a d2 ff eb                                      bl #0x4c6c60
004d23b4  04 00 a0 e1                                      mov r0, r4
004d23b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d23bc  04 27 4c 00 50 2e 00 00                          .byte 0x04, 0x27, 0x4c, 0x00, 0x50, 0x2e, 0x00, 0x00

; FUNCTION 0x005011d4, declared_size=192, range_size=192, mode=arm
; class-group: Structs::KillActor
; alias: _ZN7Structs9KillActor4readEP11IStreamBase
; demangled: Structs::KillActor::read(IStreamBase*)
; decoder-mode: arm
005011d4  70 40 2d e9                                      push {r4, r5, r6, lr}
005011d8  00 40 a0 e1                                      mov r4, r0
005011dc  08 d0 4d e2                                      sub sp, sp, #8
005011e0  01 60 a0 e1                                      mov r6, r1
005011e4  8f f9 ff eb                                      bl #0x4ff828
005011e8  06 00 a0 e1                                      mov r0, r6
005011ec  08 10 84 e2                                      add r1, r4, #8
005011f0  ea 77 fb eb                                      bl #0x3df1a0
005011f4  01 30 a0 e3                                      mov r3, #1
005011f8  00 00 53 e3                                      cmp r3, #0
005011fc  04 30 8d e5                                      str r3, [sp, #4]
00501200  0f 00 00 1a                                      bne #0x501244
00501204  09 30 84 e2                                      add r3, r4, #9
00501208  0a 20 84 e2                                      add r2, r4, #0xa
0050120c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501210  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501214  02 00 53 e1                                      cmp r3, r2
00501218  01 10 20 e0                                      eor r1, r0, r1
0050121c  01 10 43 e5                                      strb r1, [r3, #-1]
00501220  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501224  00 10 21 e0                                      eor r1, r1, r0
00501228  01 10 c2 e5                                      strb r1, [r2, #1]
0050122c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501230  01 20 42 e2                                      sub r2, r2, #1
00501234  00 10 21 e0                                      eor r1, r1, r0
00501238  01 10 43 e5                                      strb r1, [r3, #-1]
0050123c  01 30 83 e2                                      add r3, r3, #1
00501240  f1 ff ff 3a                                      blo #0x50120c
00501244  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00501248  00 00 50 e3                                      cmp r0, #0
0050124c  00 00 00 0a                                      beq #0x501254
00501250  7a 3c f8 eb                                      bl #0x310440
00501254  08 00 94 e5                                      ldr r0, [r4, #8]
00501258  01 10 a0 e3                                      mov r1, #1
0050125c  00 50 a0 e3                                      mov r5, #0
00501260  01 00 80 e0                                      add r0, r0, r1
00501264  c0 3c f8 eb                                      bl #0x31056c
00501268  08 20 94 e5                                      ldr r2, [r4, #8]
0050126c  00 10 a0 e1                                      mov r1, r0
00501270  0c 00 84 e5                                      str r0, [r4, #0xc]
00501274  05 30 a0 e1                                      mov r3, r5
00501278  06 00 a0 e1                                      mov r0, r6
0050127c  74 58 f8 eb                                      bl #0x317454
00501280  08 30 94 e5                                      ldr r3, [r4, #8]
00501284  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00501288  03 50 c2 e7                                      strb r5, [r2, r3]
0050128c  08 d0 8d e2                                      add sp, sp, #8
00501290  70 80 bd e8                                      pop {r4, r5, r6, pc}
