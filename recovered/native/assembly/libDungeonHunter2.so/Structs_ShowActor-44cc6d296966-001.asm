; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d24a0, declared_size=48, range_size=48, mode=arm
; class-group: Structs::ShowActor
; alias: _ZN7Structs9ShowActor8finalizeEv
; demangled: Structs::ShowActor::finalize()
; decoder-mode: arm
004d24a0  10 40 2d e9                                      push {r4, lr}
004d24a4  00 40 a0 e1                                      mov r4, r0
004d24a8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d24ac  00 00 50 e3                                      cmp r0, #0
004d24b0  03 00 00 0a                                      beq #0x4d24c4
004d24b4  e1 f7 f8 eb                                      bl #0x310440
004d24b8  00 30 a0 e3                                      mov r3, #0
004d24bc  08 30 84 e5                                      str r3, [r4, #8]
004d24c0  0c 30 84 e5                                      str r3, [r4, #0xc]
004d24c4  04 00 a0 e1                                      mov r0, r4
004d24c8  10 40 bd e8                                      pop {r4, lr}
004d24cc  e5 d1 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d24d0, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ShowActor
; alias: _ZN7Structs9ShowActorD1Ev
; demangled: Structs::ShowActor::~ShowActor()
; decoder-mode: arm
004d24d0  10 40 2d e9                                      push {r4, lr}
004d24d4  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d24d8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d24dc  00 40 a0 e1                                      mov r4, r0
004d24e0  03 30 8f e0                                      add r3, pc, r3
004d24e4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d24e8  02 20 93 e7                                      ldr r2, [r3, r2]
004d24ec  00 00 50 e3                                      cmp r0, #0
004d24f0  08 20 82 e2                                      add r2, r2, #8
004d24f4  00 20 84 e5                                      str r2, [r4]
004d24f8  00 00 00 0a                                      beq #0x4d2500
004d24fc  cf f7 f8 eb                                      bl #0x310440
004d2500  04 00 a0 e1                                      mov r0, r4
004d2504  d5 d1 ff eb                                      bl #0x4c6c60
004d2508  04 00 a0 e1                                      mov r0, r4
004d250c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2510  b0 25 4c 00 f4 35 00 00                          .byte 0xb0, 0x25, 0x4c, 0x00, 0xf4, 0x35, 0x00, 0x00

; FUNCTION 0x004d2518, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ShowActor
; alias: _ZN7Structs9ShowActorD0Ev
; demangled: Structs::ShowActor::~ShowActor()
; decoder-mode: arm
004d2518  10 40 2d e9                                      push {r4, lr}
004d251c  00 40 a0 e1                                      mov r4, r0
004d2520  ea ff ff eb                                      bl #0x4d24d0
004d2524  04 00 a0 e1                                      mov r0, r4
004d2528  c4 f7 f8 eb                                      bl #0x310440
004d252c  04 00 a0 e1                                      mov r0, r4
004d2530  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2534, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ShowActor
; alias: _ZN7Structs9ShowActorD2Ev
; demangled: Structs::ShowActor::~ShowActor()
; decoder-mode: arm
004d2534  10 40 2d e9                                      push {r4, lr}
004d2538  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d253c  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2540  00 40 a0 e1                                      mov r4, r0
004d2544  03 30 8f e0                                      add r3, pc, r3
004d2548  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d254c  02 20 93 e7                                      ldr r2, [r3, r2]
004d2550  00 00 50 e3                                      cmp r0, #0
004d2554  08 20 82 e2                                      add r2, r2, #8
004d2558  00 20 84 e5                                      str r2, [r4]
004d255c  00 00 00 0a                                      beq #0x4d2564
004d2560  b6 f7 f8 eb                                      bl #0x310440
004d2564  04 00 a0 e1                                      mov r0, r4
004d2568  bc d1 ff eb                                      bl #0x4c6c60
004d256c  04 00 a0 e1                                      mov r0, r4
004d2570  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2574  4c 25 4c 00 f4 35 00 00                          .byte 0x4c, 0x25, 0x4c, 0x00, 0xf4, 0x35, 0x00, 0x00

; FUNCTION 0x00501354, declared_size=192, range_size=192, mode=arm
; class-group: Structs::ShowActor
; alias: _ZN7Structs9ShowActor4readEP11IStreamBase
; demangled: Structs::ShowActor::read(IStreamBase*)
; decoder-mode: arm
00501354  70 40 2d e9                                      push {r4, r5, r6, lr}
00501358  00 40 a0 e1                                      mov r4, r0
0050135c  08 d0 4d e2                                      sub sp, sp, #8
00501360  01 60 a0 e1                                      mov r6, r1
00501364  2f f9 ff eb                                      bl #0x4ff828
00501368  06 00 a0 e1                                      mov r0, r6
0050136c  08 10 84 e2                                      add r1, r4, #8
00501370  8a 77 fb eb                                      bl #0x3df1a0
00501374  01 30 a0 e3                                      mov r3, #1
00501378  00 00 53 e3                                      cmp r3, #0
0050137c  04 30 8d e5                                      str r3, [sp, #4]
00501380  0f 00 00 1a                                      bne #0x5013c4
00501384  09 30 84 e2                                      add r3, r4, #9
00501388  0a 20 84 e2                                      add r2, r4, #0xa
0050138c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501390  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501394  02 00 53 e1                                      cmp r3, r2
00501398  01 10 20 e0                                      eor r1, r0, r1
0050139c  01 10 43 e5                                      strb r1, [r3, #-1]
005013a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005013a4  00 10 21 e0                                      eor r1, r1, r0
005013a8  01 10 c2 e5                                      strb r1, [r2, #1]
005013ac  01 00 53 e5                                      ldrb r0, [r3, #-1]
005013b0  01 20 42 e2                                      sub r2, r2, #1
005013b4  00 10 21 e0                                      eor r1, r1, r0
005013b8  01 10 43 e5                                      strb r1, [r3, #-1]
005013bc  01 30 83 e2                                      add r3, r3, #1
005013c0  f1 ff ff 3a                                      blo #0x50138c
005013c4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005013c8  00 00 50 e3                                      cmp r0, #0
005013cc  00 00 00 0a                                      beq #0x5013d4
005013d0  1a 3c f8 eb                                      bl #0x310440
005013d4  08 00 94 e5                                      ldr r0, [r4, #8]
005013d8  01 10 a0 e3                                      mov r1, #1
005013dc  00 50 a0 e3                                      mov r5, #0
005013e0  01 00 80 e0                                      add r0, r0, r1
005013e4  60 3c f8 eb                                      bl #0x31056c
005013e8  08 20 94 e5                                      ldr r2, [r4, #8]
005013ec  00 10 a0 e1                                      mov r1, r0
005013f0  0c 00 84 e5                                      str r0, [r4, #0xc]
005013f4  05 30 a0 e1                                      mov r3, r5
005013f8  06 00 a0 e1                                      mov r0, r6
005013fc  14 58 f8 eb                                      bl #0x317454
00501400  08 30 94 e5                                      ldr r3, [r4, #8]
00501404  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00501408  03 50 c2 e7                                      strb r5, [r2, r3]
0050140c  08 d0 8d e2                                      add sp, sp, #8
00501410  70 80 bd e8                                      pop {r4, r5, r6, pc}
