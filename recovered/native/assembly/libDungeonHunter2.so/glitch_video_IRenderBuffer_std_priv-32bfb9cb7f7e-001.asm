; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005af0a0, declared_size=304, range_size=304, mode=arm
; class-group: glitch::video::IRenderBuffer** std::priv
; alias: _ZNSt4priv6__findIPPN6glitch5video13IRenderBufferES4_EET_S6_S6_RKT0_RKSt26random_access_iterator_tag
; demangled: glitch::video::IRenderBuffer** std::priv::__find<glitch::video::IRenderBuffer**, glitch::video::IRenderBuffer*>(glitch::video::IRenderBuffer**, glitch::video::IRenderBuffer**, glitch::video::IRenderBuffer* const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
005af0a0  00 30 a0 e1                                      mov r3, r0
005af0a4  01 00 60 e0                                      rsb r0, r0, r1
005af0a8  40 c2 a0 e1                                      asr ip, r0, #4
005af0ac  00 00 5c e3                                      cmp ip, #0
005af0b0  30 00 2d e9                                      push {r4, r5}
005af0b4  40 41 a0 e1                                      asr r4, r0, #2
005af0b8  03 00 a0 d1                                      movle r0, r3
005af0bc  21 00 00 da                                      ble #0x5af148
005af0c0  00 00 93 e5                                      ldr r0, [r3]
005af0c4  00 40 92 e5                                      ldr r4, [r2]
005af0c8  04 00 50 e1                                      cmp r0, r4
005af0cc  03 00 a0 01                                      moveq r0, r3
005af0d0  23 00 00 0a                                      beq #0x5af164
005af0d4  04 50 93 e5                                      ldr r5, [r3, #4]
005af0d8  04 00 83 e2                                      add r0, r3, #4
005af0dc  05 00 54 e1                                      cmp r4, r5
005af0e0  1f 00 00 0a                                      beq #0x5af164
005af0e4  04 50 b0 e5                                      ldr r5, [r0, #4]!
005af0e8  05 00 54 e1                                      cmp r4, r5
005af0ec  1c 00 00 0a                                      beq #0x5af164
005af0f0  04 50 b0 e5                                      ldr r5, [r0, #4]!
005af0f4  05 00 54 e1                                      cmp r4, r5
005af0f8  0d 00 00 1a                                      bne #0x5af134
005af0fc  18 00 00 ea                                      b #0x5af164
005af100  10 00 93 e5                                      ldr r0, [r3, #0x10]
005af104  04 00 50 e1                                      cmp r0, r4
005af108  22 00 00 0a                                      beq #0x5af198
005af10c  14 00 93 e5                                      ldr r0, [r3, #0x14]
005af110  04 00 50 e1                                      cmp r0, r4
005af114  21 00 00 0a                                      beq #0x5af1a0
005af118  18 00 93 e5                                      ldr r0, [r3, #0x18]
005af11c  00 00 54 e1                                      cmp r4, r0
005af120  20 00 00 0a                                      beq #0x5af1a8
005af124  10 30 83 e2                                      add r3, r3, #0x10
005af128  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005af12c  00 00 54 e1                                      cmp r4, r0
005af130  1e 00 00 0a                                      beq #0x5af1b0
005af134  01 c0 5c e2                                      subs ip, ip, #1
005af138  f0 ff ff 1a                                      bne #0x5af100
005af13c  10 00 83 e2                                      add r0, r3, #0x10
005af140  01 40 60 e0                                      rsb r4, r0, r1
005af144  44 41 a0 e1                                      asr r4, r4, #2
005af148  02 00 54 e3                                      cmp r4, #2
005af14c  06 00 00 0a                                      beq #0x5af16c
005af150  03 00 54 e3                                      cmp r4, #3
005af154  17 00 00 0a                                      beq #0x5af1b8
005af158  01 00 54 e3                                      cmp r4, #1
005af15c  0b 00 00 0a                                      beq #0x5af190
005af160  01 00 a0 e1                                      mov r0, r1
005af164  30 00 bd e8                                      pop {r4, r5}
005af168  1e ff 2f e1                                      bx lr
005af16c  00 30 92 e5                                      ldr r3, [r2]
005af170  00 20 90 e5                                      ldr r2, [r0]
005af174  03 00 52 e1                                      cmp r2, r3
005af178  f9 ff ff 0a                                      beq #0x5af164
005af17c  04 00 80 e2                                      add r0, r0, #4
005af180  00 20 90 e5                                      ldr r2, [r0]
005af184  03 00 52 e1                                      cmp r2, r3
005af188  01 00 a0 11                                      movne r0, r1
005af18c  f4 ff ff ea                                      b #0x5af164
005af190  00 30 92 e5                                      ldr r3, [r2]
005af194  f9 ff ff ea                                      b #0x5af180
005af198  10 00 83 e2                                      add r0, r3, #0x10
005af19c  f0 ff ff ea                                      b #0x5af164
005af1a0  14 00 83 e2                                      add r0, r3, #0x14
005af1a4  ee ff ff ea                                      b #0x5af164
005af1a8  18 00 83 e2                                      add r0, r3, #0x18
005af1ac  ec ff ff ea                                      b #0x5af164
005af1b0  0c 00 83 e2                                      add r0, r3, #0xc
005af1b4  ea ff ff ea                                      b #0x5af164
005af1b8  00 30 92 e5                                      ldr r3, [r2]
005af1bc  00 20 90 e5                                      ldr r2, [r0]
005af1c0  03 00 52 e1                                      cmp r2, r3
005af1c4  e6 ff ff 0a                                      beq #0x5af164
005af1c8  04 00 80 e2                                      add r0, r0, #4
005af1cc  e7 ff ff ea                                      b #0x5af170
