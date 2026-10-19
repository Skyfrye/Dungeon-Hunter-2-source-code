; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d23c4, declared_size=48, range_size=48, mode=arm
; class-group: Structs::HideActor
; alias: _ZN7Structs9HideActor8finalizeEv
; demangled: Structs::HideActor::finalize()
; decoder-mode: arm
004d23c4  10 40 2d e9                                      push {r4, lr}
004d23c8  00 40 a0 e1                                      mov r4, r0
004d23cc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d23d0  00 00 50 e3                                      cmp r0, #0
004d23d4  03 00 00 0a                                      beq #0x4d23e8
004d23d8  18 f8 f8 eb                                      bl #0x310440
004d23dc  00 30 a0 e3                                      mov r3, #0
004d23e0  08 30 84 e5                                      str r3, [r4, #8]
004d23e4  0c 30 84 e5                                      str r3, [r4, #0xc]
004d23e8  04 00 a0 e1                                      mov r0, r4
004d23ec  10 40 bd e8                                      pop {r4, lr}
004d23f0  1c d2 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d23f4, declared_size=72, range_size=72, mode=arm
; class-group: Structs::HideActor
; alias: _ZN7Structs9HideActorD1Ev
; demangled: Structs::HideActor::~HideActor()
; decoder-mode: arm
004d23f4  10 40 2d e9                                      push {r4, lr}
004d23f8  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d23fc  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2400  00 40 a0 e1                                      mov r4, r0
004d2404  03 30 8f e0                                      add r3, pc, r3
004d2408  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d240c  02 20 93 e7                                      ldr r2, [r3, r2]
004d2410  00 00 50 e3                                      cmp r0, #0
004d2414  08 20 82 e2                                      add r2, r2, #8
004d2418  00 20 84 e5                                      str r2, [r4]
004d241c  00 00 00 0a                                      beq #0x4d2424
004d2420  06 f8 f8 eb                                      bl #0x310440
004d2424  04 00 a0 e1                                      mov r0, r4
004d2428  0c d2 ff eb                                      bl #0x4c6c60
004d242c  04 00 a0 e1                                      mov r0, r4
004d2430  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2434  8c 26 4c 00 84 0c 00 00                          .byte 0x8c, 0x26, 0x4c, 0x00, 0x84, 0x0c, 0x00, 0x00

; FUNCTION 0x004d243c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::HideActor
; alias: _ZN7Structs9HideActorD0Ev
; demangled: Structs::HideActor::~HideActor()
; decoder-mode: arm
004d243c  10 40 2d e9                                      push {r4, lr}
004d2440  00 40 a0 e1                                      mov r4, r0
004d2444  ea ff ff eb                                      bl #0x4d23f4
004d2448  04 00 a0 e1                                      mov r0, r4
004d244c  fb f7 f8 eb                                      bl #0x310440
004d2450  04 00 a0 e1                                      mov r0, r4
004d2454  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2458, declared_size=72, range_size=72, mode=arm
; class-group: Structs::HideActor
; alias: _ZN7Structs9HideActorD2Ev
; demangled: Structs::HideActor::~HideActor()
; decoder-mode: arm
004d2458  10 40 2d e9                                      push {r4, lr}
004d245c  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2460  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2464  00 40 a0 e1                                      mov r4, r0
004d2468  03 30 8f e0                                      add r3, pc, r3
004d246c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2470  02 20 93 e7                                      ldr r2, [r3, r2]
004d2474  00 00 50 e3                                      cmp r0, #0
004d2478  08 20 82 e2                                      add r2, r2, #8
004d247c  00 20 84 e5                                      str r2, [r4]
004d2480  00 00 00 0a                                      beq #0x4d2488
004d2484  ed f7 f8 eb                                      bl #0x310440
004d2488  04 00 a0 e1                                      mov r0, r4
004d248c  f3 d1 ff eb                                      bl #0x4c6c60
004d2490  04 00 a0 e1                                      mov r0, r4
004d2494  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2498  28 26 4c 00 84 0c 00 00                          .byte 0x28, 0x26, 0x4c, 0x00, 0x84, 0x0c, 0x00, 0x00

; FUNCTION 0x00501294, declared_size=192, range_size=192, mode=arm
; class-group: Structs::HideActor
; alias: _ZN7Structs9HideActor4readEP11IStreamBase
; demangled: Structs::HideActor::read(IStreamBase*)
; decoder-mode: arm
00501294  70 40 2d e9                                      push {r4, r5, r6, lr}
00501298  00 40 a0 e1                                      mov r4, r0
0050129c  08 d0 4d e2                                      sub sp, sp, #8
005012a0  01 60 a0 e1                                      mov r6, r1
005012a4  5f f9 ff eb                                      bl #0x4ff828
005012a8  06 00 a0 e1                                      mov r0, r6
005012ac  08 10 84 e2                                      add r1, r4, #8
005012b0  ba 77 fb eb                                      bl #0x3df1a0
005012b4  01 30 a0 e3                                      mov r3, #1
005012b8  00 00 53 e3                                      cmp r3, #0
005012bc  04 30 8d e5                                      str r3, [sp, #4]
005012c0  0f 00 00 1a                                      bne #0x501304
005012c4  09 30 84 e2                                      add r3, r4, #9
005012c8  0a 20 84 e2                                      add r2, r4, #0xa
005012cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
005012d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005012d4  02 00 53 e1                                      cmp r3, r2
005012d8  01 10 20 e0                                      eor r1, r0, r1
005012dc  01 10 43 e5                                      strb r1, [r3, #-1]
005012e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005012e4  00 10 21 e0                                      eor r1, r1, r0
005012e8  01 10 c2 e5                                      strb r1, [r2, #1]
005012ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
005012f0  01 20 42 e2                                      sub r2, r2, #1
005012f4  00 10 21 e0                                      eor r1, r1, r0
005012f8  01 10 43 e5                                      strb r1, [r3, #-1]
005012fc  01 30 83 e2                                      add r3, r3, #1
00501300  f1 ff ff 3a                                      blo #0x5012cc
00501304  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00501308  00 00 50 e3                                      cmp r0, #0
0050130c  00 00 00 0a                                      beq #0x501314
00501310  4a 3c f8 eb                                      bl #0x310440
00501314  08 00 94 e5                                      ldr r0, [r4, #8]
00501318  01 10 a0 e3                                      mov r1, #1
0050131c  00 50 a0 e3                                      mov r5, #0
00501320  01 00 80 e0                                      add r0, r0, r1
00501324  90 3c f8 eb                                      bl #0x31056c
00501328  08 20 94 e5                                      ldr r2, [r4, #8]
0050132c  00 10 a0 e1                                      mov r1, r0
00501330  0c 00 84 e5                                      str r0, [r4, #0xc]
00501334  05 30 a0 e1                                      mov r3, r5
00501338  06 00 a0 e1                                      mov r0, r6
0050133c  44 58 f8 eb                                      bl #0x317454
00501340  08 30 94 e5                                      ldr r3, [r4, #8]
00501344  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00501348  03 50 c2 e7                                      strb r5, [r2, r3]
0050134c  08 d0 8d e2                                      add sp, sp, #8
00501350  70 80 bd e8                                      pop {r4, r5, r6, pc}
