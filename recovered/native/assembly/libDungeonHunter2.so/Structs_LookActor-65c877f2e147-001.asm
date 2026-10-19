; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d257c, declared_size=76, range_size=76, mode=arm
; class-group: Structs::LookActor
; alias: _ZN7Structs9LookActor8finalizeEv
; demangled: Structs::LookActor::finalize()
; decoder-mode: arm
004d257c  10 40 2d e9                                      push {r4, lr}
004d2580  00 40 a0 e1                                      mov r4, r0
004d2584  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2588  00 00 50 e3                                      cmp r0, #0
004d258c  03 00 00 0a                                      beq #0x4d25a0
004d2590  aa f7 f8 eb                                      bl #0x310440
004d2594  00 30 a0 e3                                      mov r3, #0
004d2598  08 30 84 e5                                      str r3, [r4, #8]
004d259c  0c 30 84 e5                                      str r3, [r4, #0xc]
004d25a0  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d25a4  00 00 50 e3                                      cmp r0, #0
004d25a8  03 00 00 0a                                      beq #0x4d25bc
004d25ac  a3 f7 f8 eb                                      bl #0x310440
004d25b0  00 30 a0 e3                                      mov r3, #0
004d25b4  10 30 84 e5                                      str r3, [r4, #0x10]
004d25b8  14 30 84 e5                                      str r3, [r4, #0x14]
004d25bc  04 00 a0 e1                                      mov r0, r4
004d25c0  10 40 bd e8                                      pop {r4, lr}
004d25c4  a7 d1 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d25c8, declared_size=88, range_size=88, mode=arm
; class-group: Structs::LookActor
; alias: _ZN7Structs9LookActorD1Ev
; demangled: Structs::LookActor::~LookActor()
; decoder-mode: arm
004d25c8  10 40 2d e9                                      push {r4, lr}
004d25cc  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d25d0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d25d4  00 40 a0 e1                                      mov r4, r0
004d25d8  03 30 8f e0                                      add r3, pc, r3
004d25dc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d25e0  02 20 93 e7                                      ldr r2, [r3, r2]
004d25e4  00 00 50 e3                                      cmp r0, #0
004d25e8  08 20 82 e2                                      add r2, r2, #8
004d25ec  00 20 84 e5                                      str r2, [r4]
004d25f0  00 00 00 0a                                      beq #0x4d25f8
004d25f4  91 f7 f8 eb                                      bl #0x310440
004d25f8  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d25fc  00 00 50 e3                                      cmp r0, #0
004d2600  00 00 00 0a                                      beq #0x4d2608
004d2604  8d f7 f8 eb                                      bl #0x310440
004d2608  04 00 a0 e1                                      mov r0, r4
004d260c  93 d1 ff eb                                      bl #0x4c6c60
004d2610  04 00 a0 e1                                      mov r0, r4
004d2614  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2618  b8 24 4c 00 34 29 00 00                          .byte 0xb8, 0x24, 0x4c, 0x00, 0x34, 0x29, 0x00, 0x00

; FUNCTION 0x004d2620, declared_size=28, range_size=28, mode=arm
; class-group: Structs::LookActor
; alias: _ZN7Structs9LookActorD0Ev
; demangled: Structs::LookActor::~LookActor()
; decoder-mode: arm
004d2620  10 40 2d e9                                      push {r4, lr}
004d2624  00 40 a0 e1                                      mov r4, r0
004d2628  e6 ff ff eb                                      bl #0x4d25c8
004d262c  04 00 a0 e1                                      mov r0, r4
004d2630  82 f7 f8 eb                                      bl #0x310440
004d2634  04 00 a0 e1                                      mov r0, r4
004d2638  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d263c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::LookActor
; alias: _ZN7Structs9LookActorD2Ev
; demangled: Structs::LookActor::~LookActor()
; decoder-mode: arm
004d263c  10 40 2d e9                                      push {r4, lr}
004d2640  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d2644  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d2648  00 40 a0 e1                                      mov r4, r0
004d264c  03 30 8f e0                                      add r3, pc, r3
004d2650  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2654  02 20 93 e7                                      ldr r2, [r3, r2]
004d2658  00 00 50 e3                                      cmp r0, #0
004d265c  08 20 82 e2                                      add r2, r2, #8
004d2660  00 20 84 e5                                      str r2, [r4]
004d2664  00 00 00 0a                                      beq #0x4d266c
004d2668  74 f7 f8 eb                                      bl #0x310440
004d266c  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d2670  00 00 50 e3                                      cmp r0, #0
004d2674  00 00 00 0a                                      beq #0x4d267c
004d2678  70 f7 f8 eb                                      bl #0x310440
004d267c  04 00 a0 e1                                      mov r0, r4
004d2680  76 d1 ff eb                                      bl #0x4c6c60
004d2684  04 00 a0 e1                                      mov r0, r4
004d2688  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d268c  44 24 4c 00 34 29 00 00                          .byte 0x44, 0x24, 0x4c, 0x00, 0x34, 0x29, 0x00, 0x00

; FUNCTION 0x00501414, declared_size=356, range_size=356, mode=arm
; class-group: Structs::LookActor
; alias: _ZN7Structs9LookActor4readEP11IStreamBase
; demangled: Structs::LookActor::read(IStreamBase*)
; decoder-mode: arm
00501414  70 40 2d e9                                      push {r4, r5, r6, lr}
00501418  00 40 a0 e1                                      mov r4, r0
0050141c  08 d0 4d e2                                      sub sp, sp, #8
00501420  01 50 a0 e1                                      mov r5, r1
00501424  ff f8 ff eb                                      bl #0x4ff828
00501428  05 00 a0 e1                                      mov r0, r5
0050142c  08 10 84 e2                                      add r1, r4, #8
00501430  5a 77 fb eb                                      bl #0x3df1a0
00501434  01 30 a0 e3                                      mov r3, #1
00501438  00 00 53 e3                                      cmp r3, #0
0050143c  04 30 8d e5                                      str r3, [sp, #4]
00501440  0f 00 00 1a                                      bne #0x501484
00501444  09 30 84 e2                                      add r3, r4, #9
00501448  0a 20 84 e2                                      add r2, r4, #0xa
0050144c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501450  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501454  02 00 53 e1                                      cmp r3, r2
00501458  01 10 20 e0                                      eor r1, r0, r1
0050145c  01 10 43 e5                                      strb r1, [r3, #-1]
00501460  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501464  00 10 21 e0                                      eor r1, r1, r0
00501468  01 10 c2 e5                                      strb r1, [r2, #1]
0050146c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501470  01 20 42 e2                                      sub r2, r2, #1
00501474  00 10 21 e0                                      eor r1, r1, r0
00501478  01 10 43 e5                                      strb r1, [r3, #-1]
0050147c  01 30 83 e2                                      add r3, r3, #1
00501480  f1 ff ff 3a                                      blo #0x50144c
00501484  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00501488  00 00 50 e3                                      cmp r0, #0
0050148c  00 00 00 0a                                      beq #0x501494
00501490  ea 3b f8 eb                                      bl #0x310440
00501494  08 00 94 e5                                      ldr r0, [r4, #8]
00501498  01 10 a0 e3                                      mov r1, #1
0050149c  00 60 a0 e3                                      mov r6, #0
005014a0  01 00 80 e0                                      add r0, r0, r1
005014a4  30 3c f8 eb                                      bl #0x31056c
005014a8  08 20 94 e5                                      ldr r2, [r4, #8]
005014ac  00 10 a0 e1                                      mov r1, r0
005014b0  0c 00 84 e5                                      str r0, [r4, #0xc]
005014b4  06 30 a0 e1                                      mov r3, r6
005014b8  05 00 a0 e1                                      mov r0, r5
005014bc  e4 57 f8 eb                                      bl #0x317454
005014c0  08 30 94 e5                                      ldr r3, [r4, #8]
005014c4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005014c8  05 00 a0 e1                                      mov r0, r5
005014cc  10 10 84 e2                                      add r1, r4, #0x10
005014d0  03 60 c2 e7                                      strb r6, [r2, r3]
005014d4  31 77 fb eb                                      bl #0x3df1a0
005014d8  01 30 a0 e3                                      mov r3, #1
005014dc  06 00 53 e1                                      cmp r3, r6
005014e0  04 30 8d e5                                      str r3, [sp, #4]
005014e4  0f 00 00 1a                                      bne #0x501528
005014e8  11 30 84 e2                                      add r3, r4, #0x11
005014ec  12 20 84 e2                                      add r2, r4, #0x12
005014f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005014f4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005014f8  02 00 53 e1                                      cmp r3, r2
005014fc  01 10 20 e0                                      eor r1, r0, r1
00501500  01 10 43 e5                                      strb r1, [r3, #-1]
00501504  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501508  00 10 21 e0                                      eor r1, r1, r0
0050150c  01 10 c2 e5                                      strb r1, [r2, #1]
00501510  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501514  01 20 42 e2                                      sub r2, r2, #1
00501518  00 10 21 e0                                      eor r1, r1, r0
0050151c  01 10 43 e5                                      strb r1, [r3, #-1]
00501520  01 30 83 e2                                      add r3, r3, #1
00501524  f1 ff ff 3a                                      blo #0x5014f0
00501528  14 00 94 e5                                      ldr r0, [r4, #0x14]
0050152c  00 00 50 e3                                      cmp r0, #0
00501530  00 00 00 0a                                      beq #0x501538
00501534  c1 3b f8 eb                                      bl #0x310440
00501538  10 00 94 e5                                      ldr r0, [r4, #0x10]
0050153c  01 10 a0 e3                                      mov r1, #1
00501540  00 60 a0 e3                                      mov r6, #0
00501544  01 00 80 e0                                      add r0, r0, r1
00501548  07 3c f8 eb                                      bl #0x31056c
0050154c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00501550  00 10 a0 e1                                      mov r1, r0
00501554  14 00 84 e5                                      str r0, [r4, #0x14]
00501558  06 30 a0 e1                                      mov r3, r6
0050155c  05 00 a0 e1                                      mov r0, r5
00501560  bb 57 f8 eb                                      bl #0x317454
00501564  10 30 94 e5                                      ldr r3, [r4, #0x10]
00501568  14 20 94 e5                                      ldr r2, [r4, #0x14]
0050156c  03 60 c2 e7                                      strb r6, [r2, r3]
00501570  08 d0 8d e2                                      add sp, sp, #8
00501574  70 80 bd e8                                      pop {r4, r5, r6, pc}
