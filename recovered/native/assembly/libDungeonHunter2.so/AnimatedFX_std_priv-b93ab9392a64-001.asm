; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493488, declared_size=304, range_size=304, mode=arm
; class-group: AnimatedFX** std::priv
; alias: _ZNSt4priv6__findIPP10AnimatedFXS2_EET_S4_S4_RKT0_RKSt26random_access_iterator_tag
; demangled: AnimatedFX** std::priv::__find<AnimatedFX**, AnimatedFX*>(AnimatedFX**, AnimatedFX**, AnimatedFX* const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
00493488  00 30 a0 e1                                      mov r3, r0
0049348c  01 00 60 e0                                      rsb r0, r0, r1
00493490  40 c2 a0 e1                                      asr ip, r0, #4
00493494  00 00 5c e3                                      cmp ip, #0
00493498  30 00 2d e9                                      push {r4, r5}
0049349c  40 41 a0 e1                                      asr r4, r0, #2
004934a0  03 00 a0 d1                                      movle r0, r3
004934a4  21 00 00 da                                      ble #0x493530
004934a8  00 00 93 e5                                      ldr r0, [r3]
004934ac  00 40 92 e5                                      ldr r4, [r2]
004934b0  04 00 50 e1                                      cmp r0, r4
004934b4  03 00 a0 01                                      moveq r0, r3
004934b8  23 00 00 0a                                      beq #0x49354c
004934bc  04 50 93 e5                                      ldr r5, [r3, #4]
004934c0  04 00 83 e2                                      add r0, r3, #4
004934c4  05 00 54 e1                                      cmp r4, r5
004934c8  1f 00 00 0a                                      beq #0x49354c
004934cc  04 50 b0 e5                                      ldr r5, [r0, #4]!
004934d0  05 00 54 e1                                      cmp r4, r5
004934d4  1c 00 00 0a                                      beq #0x49354c
004934d8  04 50 b0 e5                                      ldr r5, [r0, #4]!
004934dc  05 00 54 e1                                      cmp r4, r5
004934e0  0d 00 00 1a                                      bne #0x49351c
004934e4  18 00 00 ea                                      b #0x49354c
004934e8  10 00 93 e5                                      ldr r0, [r3, #0x10]
004934ec  04 00 50 e1                                      cmp r0, r4
004934f0  22 00 00 0a                                      beq #0x493580
004934f4  14 00 93 e5                                      ldr r0, [r3, #0x14]
004934f8  04 00 50 e1                                      cmp r0, r4
004934fc  21 00 00 0a                                      beq #0x493588
00493500  18 00 93 e5                                      ldr r0, [r3, #0x18]
00493504  04 00 50 e1                                      cmp r0, r4
00493508  20 00 00 0a                                      beq #0x493590
0049350c  10 30 83 e2                                      add r3, r3, #0x10
00493510  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00493514  00 00 54 e1                                      cmp r4, r0
00493518  1e 00 00 0a                                      beq #0x493598
0049351c  01 c0 5c e2                                      subs ip, ip, #1
00493520  f0 ff ff 1a                                      bne #0x4934e8
00493524  10 00 83 e2                                      add r0, r3, #0x10
00493528  01 40 60 e0                                      rsb r4, r0, r1
0049352c  44 41 a0 e1                                      asr r4, r4, #2
00493530  02 00 54 e3                                      cmp r4, #2
00493534  06 00 00 0a                                      beq #0x493554
00493538  03 00 54 e3                                      cmp r4, #3
0049353c  17 00 00 0a                                      beq #0x4935a0
00493540  01 00 54 e3                                      cmp r4, #1
00493544  0b 00 00 0a                                      beq #0x493578
00493548  01 00 a0 e1                                      mov r0, r1
0049354c  30 00 bd e8                                      pop {r4, r5}
00493550  1e ff 2f e1                                      bx lr
00493554  00 30 92 e5                                      ldr r3, [r2]
00493558  00 20 90 e5                                      ldr r2, [r0]
0049355c  03 00 52 e1                                      cmp r2, r3
00493560  f9 ff ff 0a                                      beq #0x49354c
00493564  04 00 80 e2                                      add r0, r0, #4
00493568  00 20 90 e5                                      ldr r2, [r0]
0049356c  03 00 52 e1                                      cmp r2, r3
00493570  01 00 a0 11                                      movne r0, r1
00493574  f4 ff ff ea                                      b #0x49354c
00493578  00 30 92 e5                                      ldr r3, [r2]
0049357c  f9 ff ff ea                                      b #0x493568
00493580  10 00 83 e2                                      add r0, r3, #0x10
00493584  f0 ff ff ea                                      b #0x49354c
00493588  14 00 83 e2                                      add r0, r3, #0x14
0049358c  ee ff ff ea                                      b #0x49354c
00493590  18 00 83 e2                                      add r0, r3, #0x18
00493594  ec ff ff ea                                      b #0x49354c
00493598  0c 00 83 e2                                      add r0, r3, #0xc
0049359c  ea ff ff ea                                      b #0x49354c
004935a0  00 30 92 e5                                      ldr r3, [r2]
004935a4  00 20 90 e5                                      ldr r2, [r0]
004935a8  03 00 52 e1                                      cmp r2, r3
004935ac  e6 ff ff 0a                                      beq #0x49354c
004935b0  04 00 80 e2                                      add r0, r0, #4
004935b4  e7 ff ff ea                                      b #0x493558
