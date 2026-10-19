; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6a20, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameDifficulty
; alias: _ZN7Structs14GameDifficultyD2Ev
; demangled: Structs::GameDifficulty::~GameDifficulty()
; decoder-mode: arm
004c6a20  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6a24, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameDifficulty
; alias: _ZN7Structs14GameDifficultyD1Ev
; demangled: Structs::GameDifficulty::~GameDifficulty()
; decoder-mode: arm
004c6a24  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6a28, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameDifficulty
; alias: _ZN7Structs14GameDifficulty8finalizeEv
; demangled: Structs::GameDifficulty::finalize()
; decoder-mode: arm
004c6a28  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce3e4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GameDifficulty
; alias: _ZN7Structs14GameDifficultyD0Ev
; demangled: Structs::GameDifficulty::~GameDifficulty()
; decoder-mode: arm
004ce3e4  10 40 2d e9                                      push {r4, lr}
004ce3e8  00 40 a0 e1                                      mov r4, r0
004ce3ec  8c e1 ff eb                                      bl #0x4c6a24
004ce3f0  04 00 a0 e1                                      mov r0, r4
004ce3f4  11 08 f9 eb                                      bl #0x310440
004ce3f8  04 00 a0 e1                                      mov r0, r4
004ce3fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f23e4, declared_size=484, range_size=484, mode=arm
; class-group: Structs::GameDifficulty
; alias: _ZN7Structs14GameDifficulty4readEP11IStreamBase
; demangled: Structs::GameDifficulty::read(IStreamBase*)
; decoder-mode: arm
004f23e4  30 40 2d e9                                      push {r4, r5, lr}
004f23e8  00 40 a0 e1                                      mov r4, r0
004f23ec  0c d0 4d e2                                      sub sp, sp, #0xc
004f23f0  01 00 a0 e1                                      mov r0, r1
004f23f4  01 50 a0 e1                                      mov r5, r1
004f23f8  04 10 84 e2                                      add r1, r4, #4
004f23fc  23 9b fd eb                                      bl #0x459090
004f2400  01 30 a0 e3                                      mov r3, #1
004f2404  00 00 53 e3                                      cmp r3, #0
004f2408  04 30 8d e5                                      str r3, [sp, #4]
004f240c  0f 00 00 1a                                      bne #0x4f2450
004f2410  05 30 84 e2                                      add r3, r4, #5
004f2414  06 20 84 e2                                      add r2, r4, #6
004f2418  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f241c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f2420  03 00 52 e1                                      cmp r2, r3
004f2424  01 10 20 e0                                      eor r1, r0, r1
004f2428  01 10 43 e5                                      strb r1, [r3, #-1]
004f242c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2430  00 10 21 e0                                      eor r1, r1, r0
004f2434  01 10 c2 e5                                      strb r1, [r2, #1]
004f2438  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f243c  01 20 42 e2                                      sub r2, r2, #1
004f2440  00 10 21 e0                                      eor r1, r1, r0
004f2444  01 10 43 e5                                      strb r1, [r3, #-1]
004f2448  01 30 83 e2                                      add r3, r3, #1
004f244c  f1 ff ff 8a                                      bhi #0x4f2418
004f2450  05 00 a0 e1                                      mov r0, r5
004f2454  08 10 84 e2                                      add r1, r4, #8
004f2458  0c 9b fd eb                                      bl #0x459090
004f245c  01 30 a0 e3                                      mov r3, #1
004f2460  00 00 53 e3                                      cmp r3, #0
004f2464  04 30 8d e5                                      str r3, [sp, #4]
004f2468  0f 00 00 1a                                      bne #0x4f24ac
004f246c  09 30 84 e2                                      add r3, r4, #9
004f2470  0a 20 84 e2                                      add r2, r4, #0xa
004f2474  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2478  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f247c  03 00 52 e1                                      cmp r2, r3
004f2480  01 10 20 e0                                      eor r1, r0, r1
004f2484  01 10 43 e5                                      strb r1, [r3, #-1]
004f2488  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f248c  00 10 21 e0                                      eor r1, r1, r0
004f2490  01 10 c2 e5                                      strb r1, [r2, #1]
004f2494  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f2498  01 20 42 e2                                      sub r2, r2, #1
004f249c  00 10 21 e0                                      eor r1, r1, r0
004f24a0  01 10 43 e5                                      strb r1, [r3, #-1]
004f24a4  01 30 83 e2                                      add r3, r3, #1
004f24a8  f1 ff ff 8a                                      bhi #0x4f2474
004f24ac  05 00 a0 e1                                      mov r0, r5
004f24b0  0c 10 84 e2                                      add r1, r4, #0xc
004f24b4  f5 9a fd eb                                      bl #0x459090
004f24b8  01 30 a0 e3                                      mov r3, #1
004f24bc  00 00 53 e3                                      cmp r3, #0
004f24c0  04 30 8d e5                                      str r3, [sp, #4]
004f24c4  0f 00 00 1a                                      bne #0x4f2508
004f24c8  0d 30 84 e2                                      add r3, r4, #0xd
004f24cc  0e 20 84 e2                                      add r2, r4, #0xe
004f24d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f24d4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f24d8  03 00 52 e1                                      cmp r2, r3
004f24dc  01 10 20 e0                                      eor r1, r0, r1
004f24e0  01 10 43 e5                                      strb r1, [r3, #-1]
004f24e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f24e8  00 10 21 e0                                      eor r1, r1, r0
004f24ec  01 10 c2 e5                                      strb r1, [r2, #1]
004f24f0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f24f4  01 20 42 e2                                      sub r2, r2, #1
004f24f8  00 10 21 e0                                      eor r1, r1, r0
004f24fc  01 10 43 e5                                      strb r1, [r3, #-1]
004f2500  01 30 83 e2                                      add r3, r3, #1
004f2504  f1 ff ff 8a                                      bhi #0x4f24d0
004f2508  05 00 a0 e1                                      mov r0, r5
004f250c  10 10 84 e2                                      add r1, r4, #0x10
004f2510  de 9a fd eb                                      bl #0x459090
004f2514  01 30 a0 e3                                      mov r3, #1
004f2518  00 00 53 e3                                      cmp r3, #0
004f251c  04 30 8d e5                                      str r3, [sp, #4]
004f2520  0f 00 00 1a                                      bne #0x4f2564
004f2524  11 30 84 e2                                      add r3, r4, #0x11
004f2528  12 20 84 e2                                      add r2, r4, #0x12
004f252c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2530  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f2534  03 00 52 e1                                      cmp r2, r3
004f2538  01 10 20 e0                                      eor r1, r0, r1
004f253c  01 10 43 e5                                      strb r1, [r3, #-1]
004f2540  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2544  00 10 21 e0                                      eor r1, r1, r0
004f2548  01 10 c2 e5                                      strb r1, [r2, #1]
004f254c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f2550  01 20 42 e2                                      sub r2, r2, #1
004f2554  00 10 21 e0                                      eor r1, r1, r0
004f2558  01 10 43 e5                                      strb r1, [r3, #-1]
004f255c  01 30 83 e2                                      add r3, r3, #1
004f2560  f1 ff ff 8a                                      bhi #0x4f252c
004f2564  05 00 a0 e1                                      mov r0, r5
004f2568  14 10 84 e2                                      add r1, r4, #0x14
004f256c  c7 9a fd eb                                      bl #0x459090
004f2570  01 30 a0 e3                                      mov r3, #1
004f2574  00 00 53 e3                                      cmp r3, #0
004f2578  04 30 8d e5                                      str r3, [sp, #4]
004f257c  0f 00 00 1a                                      bne #0x4f25c0
004f2580  16 30 84 e2                                      add r3, r4, #0x16
004f2584  15 40 84 e2                                      add r4, r4, #0x15
004f2588  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f258c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f2590  04 00 53 e1                                      cmp r3, r4
004f2594  02 20 21 e0                                      eor r2, r1, r2
004f2598  01 20 44 e5                                      strb r2, [r4, #-1]
004f259c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f25a0  01 20 22 e0                                      eor r2, r2, r1
004f25a4  01 20 c3 e5                                      strb r2, [r3, #1]
004f25a8  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f25ac  01 30 43 e2                                      sub r3, r3, #1
004f25b0  01 20 22 e0                                      eor r2, r2, r1
004f25b4  01 20 44 e5                                      strb r2, [r4, #-1]
004f25b8  01 40 84 e2                                      add r4, r4, #1
004f25bc  f1 ff ff 8a                                      bhi #0x4f2588
004f25c0  0c d0 8d e2                                      add sp, sp, #0xc
004f25c4  30 80 bd e8                                      pop {r4, r5, pc}
