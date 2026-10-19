; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6a08, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Rect
; alias: _ZN7Structs4RectD2Ev
; demangled: Structs::Rect::~Rect()
; decoder-mode: arm
004c6a08  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6a0c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Rect
; alias: _ZN7Structs4RectD1Ev
; demangled: Structs::Rect::~Rect()
; decoder-mode: arm
004c6a0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6a10, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Rect
; alias: _ZN7Structs4Rect8finalizeEv
; demangled: Structs::Rect::finalize()
; decoder-mode: arm
004c6a10  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce41c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Rect
; alias: _ZN7Structs4RectD0Ev
; demangled: Structs::Rect::~Rect()
; decoder-mode: arm
004ce41c  10 40 2d e9                                      push {r4, lr}
004ce420  00 40 a0 e1                                      mov r4, r0
004ce424  78 e1 ff eb                                      bl #0x4c6a0c
004ce428  04 00 a0 e1                                      mov r0, r4
004ce42c  03 08 f9 eb                                      bl #0x310440
004ce430  04 00 a0 e1                                      mov r0, r4
004ce434  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f25c8, declared_size=392, range_size=392, mode=arm
; class-group: Structs::Rect
; alias: _ZN7Structs4Rect4readEP11IStreamBase
; demangled: Structs::Rect::read(IStreamBase*)
; decoder-mode: arm
004f25c8  30 40 2d e9                                      push {r4, r5, lr}
004f25cc  00 40 a0 e1                                      mov r4, r0
004f25d0  0c d0 4d e2                                      sub sp, sp, #0xc
004f25d4  01 00 a0 e1                                      mov r0, r1
004f25d8  01 50 a0 e1                                      mov r5, r1
004f25dc  04 10 84 e2                                      add r1, r4, #4
004f25e0  aa 9a fd eb                                      bl #0x459090
004f25e4  01 30 a0 e3                                      mov r3, #1
004f25e8  00 00 53 e3                                      cmp r3, #0
004f25ec  04 30 8d e5                                      str r3, [sp, #4]
004f25f0  0f 00 00 1a                                      bne #0x4f2634
004f25f4  05 30 84 e2                                      add r3, r4, #5
004f25f8  06 20 84 e2                                      add r2, r4, #6
004f25fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2600  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f2604  02 00 53 e1                                      cmp r3, r2
004f2608  01 10 20 e0                                      eor r1, r0, r1
004f260c  01 10 43 e5                                      strb r1, [r3, #-1]
004f2610  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2614  00 10 21 e0                                      eor r1, r1, r0
004f2618  01 10 c2 e5                                      strb r1, [r2, #1]
004f261c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f2620  01 20 42 e2                                      sub r2, r2, #1
004f2624  00 10 21 e0                                      eor r1, r1, r0
004f2628  01 10 43 e5                                      strb r1, [r3, #-1]
004f262c  01 30 83 e2                                      add r3, r3, #1
004f2630  f1 ff ff 3a                                      blo #0x4f25fc
004f2634  05 00 a0 e1                                      mov r0, r5
004f2638  08 10 84 e2                                      add r1, r4, #8
004f263c  93 9a fd eb                                      bl #0x459090
004f2640  01 30 a0 e3                                      mov r3, #1
004f2644  00 00 53 e3                                      cmp r3, #0
004f2648  04 30 8d e5                                      str r3, [sp, #4]
004f264c  0f 00 00 1a                                      bne #0x4f2690
004f2650  09 30 84 e2                                      add r3, r4, #9
004f2654  0a 20 84 e2                                      add r2, r4, #0xa
004f2658  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f265c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f2660  03 00 52 e1                                      cmp r2, r3
004f2664  01 10 20 e0                                      eor r1, r0, r1
004f2668  01 10 43 e5                                      strb r1, [r3, #-1]
004f266c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f2670  00 10 21 e0                                      eor r1, r1, r0
004f2674  01 10 c2 e5                                      strb r1, [r2, #1]
004f2678  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f267c  01 20 42 e2                                      sub r2, r2, #1
004f2680  00 10 21 e0                                      eor r1, r1, r0
004f2684  01 10 43 e5                                      strb r1, [r3, #-1]
004f2688  01 30 83 e2                                      add r3, r3, #1
004f268c  f1 ff ff 8a                                      bhi #0x4f2658
004f2690  05 00 a0 e1                                      mov r0, r5
004f2694  0c 10 84 e2                                      add r1, r4, #0xc
004f2698  7c 9a fd eb                                      bl #0x459090
004f269c  01 30 a0 e3                                      mov r3, #1
004f26a0  00 00 53 e3                                      cmp r3, #0
004f26a4  04 30 8d e5                                      str r3, [sp, #4]
004f26a8  0f 00 00 1a                                      bne #0x4f26ec
004f26ac  0d 30 84 e2                                      add r3, r4, #0xd
004f26b0  0e 20 84 e2                                      add r2, r4, #0xe
004f26b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f26b8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f26bc  03 00 52 e1                                      cmp r2, r3
004f26c0  01 10 20 e0                                      eor r1, r0, r1
004f26c4  01 10 43 e5                                      strb r1, [r3, #-1]
004f26c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f26cc  00 10 21 e0                                      eor r1, r1, r0
004f26d0  01 10 c2 e5                                      strb r1, [r2, #1]
004f26d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f26d8  01 20 42 e2                                      sub r2, r2, #1
004f26dc  00 10 21 e0                                      eor r1, r1, r0
004f26e0  01 10 43 e5                                      strb r1, [r3, #-1]
004f26e4  01 30 83 e2                                      add r3, r3, #1
004f26e8  f1 ff ff 8a                                      bhi #0x4f26b4
004f26ec  05 00 a0 e1                                      mov r0, r5
004f26f0  10 10 84 e2                                      add r1, r4, #0x10
004f26f4  65 9a fd eb                                      bl #0x459090
004f26f8  01 30 a0 e3                                      mov r3, #1
004f26fc  00 00 53 e3                                      cmp r3, #0
004f2700  04 30 8d e5                                      str r3, [sp, #4]
004f2704  0f 00 00 1a                                      bne #0x4f2748
004f2708  12 30 84 e2                                      add r3, r4, #0x12
004f270c  11 40 84 e2                                      add r4, r4, #0x11
004f2710  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f2714  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f2718  04 00 53 e1                                      cmp r3, r4
004f271c  02 20 21 e0                                      eor r2, r1, r2
004f2720  01 20 44 e5                                      strb r2, [r4, #-1]
004f2724  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f2728  01 20 22 e0                                      eor r2, r2, r1
004f272c  01 20 c3 e5                                      strb r2, [r3, #1]
004f2730  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f2734  01 30 43 e2                                      sub r3, r3, #1
004f2738  01 20 22 e0                                      eor r2, r2, r1
004f273c  01 20 44 e5                                      strb r2, [r4, #-1]
004f2740  01 40 84 e2                                      add r4, r4, #1
004f2744  f1 ff ff 8a                                      bhi #0x4f2710
004f2748  0c d0 8d e2                                      add sp, sp, #0xc
004f274c  30 80 bd e8                                      pop {r4, r5, pc}
