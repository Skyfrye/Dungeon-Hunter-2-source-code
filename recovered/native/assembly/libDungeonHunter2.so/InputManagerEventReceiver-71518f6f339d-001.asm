; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034d92c, declared_size=356, range_size=356, mode=arm
; class-group: InputManagerEventReceiver
; alias: _ZN25InputManagerEventReceiver7onEventERKN6glitch6SEventE
; demangled: InputManagerEventReceiver::onEvent(glitch::SEvent const&)
; decoder-mode: arm
0034d92c  10 40 2d e9                                      push {r4, lr}
0034d930  00 30 91 e5                                      ldr r3, [r1]
0034d934  00 40 a0 e1                                      mov r4, r0
0034d938  02 00 53 e3                                      cmp r3, #2
0034d93c  34 00 00 0a                                      beq #0x34da14
0034d940  01 00 53 e3                                      cmp r3, #1
0034d944  01 00 00 0a                                      beq #0x34d950
0034d948  00 00 a0 e3                                      mov r0, #0
0034d94c  10 80 bd e8                                      pop {r4, pc}
0034d950  08 30 91 e5                                      ldr r3, [r1, #8]
0034d954  12 01 d4 e5                                      ldrb r0, [r4, #0x112]
0034d958  14 21 d4 e5                                      ldrb r2, [r4, #0x114]
0034d95c  04 31 84 e5                                      str r3, [r4, #0x104]
0034d960  0c c0 91 e5                                      ldr ip, [r1, #0xc]
0034d964  13 31 d4 e5                                      ldrb r3, [r4, #0x113]
0034d968  08 c1 84 e5                                      str ip, [r4, #0x108]
0034d96c  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0034d970  00 00 5c e3                                      cmp ip, #0
0034d974  01 00 80 03                                      orreq r0, r0, #1
0034d978  12 01 c4 e5                                      strb r0, [r4, #0x112]
0034d97c  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0034d980  03 00 5c e3                                      cmp ip, #3
0034d984  00 c0 a0 13                                      movne ip, #0
0034d988  01 c0 a0 03                                      moveq ip, #1
0034d98c  0c 00 50 e0                                      subs r0, r0, ip
0034d990  01 00 a0 13                                      movne r0, #1
0034d994  12 01 c4 e5                                      strb r0, [r4, #0x112]
0034d998  14 00 91 e5                                      ldr r0, [r1, #0x14]
0034d99c  02 00 50 e3                                      cmp r0, #2
0034d9a0  01 20 82 03                                      orreq r2, r2, #1
0034d9a4  14 21 c4 e5                                      strb r2, [r4, #0x114]
0034d9a8  14 00 91 e5                                      ldr r0, [r1, #0x14]
0034d9ac  05 00 50 e3                                      cmp r0, #5
0034d9b0  00 00 a0 13                                      movne r0, #0
0034d9b4  01 00 a0 03                                      moveq r0, #1
0034d9b8  00 20 52 e0                                      subs r2, r2, r0
0034d9bc  01 20 a0 13                                      movne r2, #1
0034d9c0  14 21 c4 e5                                      strb r2, [r4, #0x114]
0034d9c4  14 20 91 e5                                      ldr r2, [r1, #0x14]
0034d9c8  01 00 52 e3                                      cmp r2, #1
0034d9cc  01 30 83 03                                      orreq r3, r3, #1
0034d9d0  13 31 c4 e5                                      strb r3, [r4, #0x113]
0034d9d4  14 20 91 e5                                      ldr r2, [r1, #0x14]
0034d9d8  04 00 52 e3                                      cmp r2, #4
0034d9dc  00 20 a0 13                                      movne r2, #0
0034d9e0  01 20 a0 03                                      moveq r2, #1
0034d9e4  02 30 53 e0                                      subs r3, r3, r2
0034d9e8  01 30 a0 13                                      movne r3, #1
0034d9ec  13 31 c4 e5                                      strb r3, [r4, #0x113]
0034d9f0  14 30 91 e5                                      ldr r3, [r1, #0x14]
0034d9f4  07 00 53 e3                                      cmp r3, #7
0034d9f8  d2 ff ff 1a                                      bne #0x34d948
0034d9fc  10 10 91 e5                                      ldr r1, [r1, #0x10]
0034da00  0c 01 94 e5                                      ldr r0, [r4, #0x10c]
0034da04  66 04 ff eb                                      bl #0x30eba4
0034da08  0c 01 84 e5                                      str r0, [r4, #0x10c]
0034da0c  00 00 a0 e3                                      mov r0, #0
0034da10  10 80 bd e8                                      pop {r4, pc}
0034da14  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0034da18  10 20 d1 e5                                      ldrb r2, [r1, #0x10]
0034da1c  03 30 80 e0                                      add r3, r0, r3
0034da20  04 20 c3 e5                                      strb r2, [r3, #4]
0034da24  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0034da28  11 00 53 e3                                      cmp r3, #0x11
0034da2c  05 00 00 0a                                      beq #0x34da48
0034da30  12 00 53 e3                                      cmp r3, #0x12
0034da34  0f 00 00 0a                                      beq #0x34da78
0034da38  10 00 53 e3                                      cmp r3, #0x10
0034da3c  07 00 00 0a                                      beq #0x34da60
0034da40  00 30 91 e5                                      ldr r3, [r1]
0034da44  bd ff ff ea                                      b #0x34d940
0034da48  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
0034da4c  a6 30 c0 e5                                      strb r3, [r0, #0xa6]
0034da50  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
0034da54  a7 30 c0 e5                                      strb r3, [r0, #0xa7]
0034da58  00 30 91 e5                                      ldr r3, [r1]
0034da5c  b7 ff ff ea                                      b #0x34d940
0034da60  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
0034da64  a4 30 c0 e5                                      strb r3, [r0, #0xa4]
0034da68  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
0034da6c  a5 30 c0 e5                                      strb r3, [r0, #0xa5]
0034da70  00 30 91 e5                                      ldr r3, [r1]
0034da74  b1 ff ff ea                                      b #0x34d940
0034da78  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
0034da7c  a8 30 c0 e5                                      strb r3, [r0, #0xa8]
0034da80  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
0034da84  a9 30 c0 e5                                      strb r3, [r0, #0xa9]
0034da88  00 30 91 e5                                      ldr r3, [r1]
0034da8c  ab ff ff ea                                      b #0x34d940

; FUNCTION 0x0034da90, declared_size=12, range_size=12, mode=arm
; class-group: InputManagerEventReceiver
; alias: _ZNK25InputManagerEventReceiver9IsKeyDownEN6glitch9EKEY_CODEE
; demangled: InputManagerEventReceiver::IsKeyDown(glitch::EKEY_CODE) const
; decoder-mode: arm
0034da90  01 10 80 e0                                      add r1, r0, r1
0034da94  04 00 d1 e5                                      ldrb r0, [r1, #4]
0034da98  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034dab0, declared_size=4, range_size=4, mode=arm
; class-group: InputManagerEventReceiver
; alias: _ZN25InputManagerEventReceiverD1Ev
; demangled: InputManagerEventReceiver::~InputManagerEventReceiver()
; decoder-mode: arm
0034dab0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034dc5c, declared_size=52, range_size=52, mode=arm
; class-group: InputManagerEventReceiver
; alias: _ZN25InputManagerEventReceiverD0Ev
; demangled: InputManagerEventReceiver::~InputManagerEventReceiver()
; decoder-mode: arm
0034dc5c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0034dc60  24 20 9f e5                                      ldr r2, [pc, #0x24]
0034dc64  10 40 2d e9                                      push {r4, lr}
0034dc68  03 30 8f e0                                      add r3, pc, r3
0034dc6c  02 20 93 e7                                      ldr r2, [r3, r2]
0034dc70  00 40 a0 e1                                      mov r4, r0
0034dc74  08 20 82 e2                                      add r2, r2, #8
0034dc78  00 20 80 e5                                      str r2, [r0]
0034dc7c  ef 09 ff eb                                      bl #0x310440
0034dc80  04 00 a0 e1                                      mov r0, r4
0034dc84  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034dc88  28 6e 64 00 4c 27 00 00                          .byte 0x28, 0x6e, 0x64, 0x00, 0x4c, 0x27, 0x00, 0x00
