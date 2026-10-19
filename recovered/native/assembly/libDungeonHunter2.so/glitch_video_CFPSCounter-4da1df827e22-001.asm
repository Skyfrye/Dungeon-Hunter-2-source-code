; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006da95c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CFPSCounter
; alias: _ZN6glitch5video11CFPSCounterC2Ev
; demangled: glitch::video::CFPSCounter::CFPSCounter()
; decoder-mode: arm
006da95c  00 20 a0 e3                                      mov r2, #0
006da960  3c 10 a0 e3                                      mov r1, #0x3c
006da964  18 20 80 e5                                      str r2, [r0, #0x18]
006da968  06 00 80 e8                                      stm r0, {r1, r2}
006da96c  08 20 80 e5                                      str r2, [r0, #8]
006da970  0c 20 80 e5                                      str r2, [r0, #0xc]
006da974  10 20 80 e5                                      str r2, [r0, #0x10]
006da978  14 20 80 e5                                      str r2, [r0, #0x14]
006da97c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006da980, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CFPSCounter
; alias: _ZN6glitch5video11CFPSCounterC1Ev
; demangled: glitch::video::CFPSCounter::CFPSCounter()
; decoder-mode: arm
006da980  00 20 a0 e3                                      mov r2, #0
006da984  3c 10 a0 e3                                      mov r1, #0x3c
006da988  18 20 80 e5                                      str r2, [r0, #0x18]
006da98c  06 00 80 e8                                      stm r0, {r1, r2}
006da990  08 20 80 e5                                      str r2, [r0, #8]
006da994  0c 20 80 e5                                      str r2, [r0, #0xc]
006da998  10 20 80 e5                                      str r2, [r0, #0x10]
006da99c  14 20 80 e5                                      str r2, [r0, #0x14]
006da9a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006da9a4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CFPSCounter
; alias: _ZNK6glitch5video11CFPSCounter6getFPSEv
; demangled: glitch::video::CFPSCounter::getFPS() const
; decoder-mode: arm
006da9a4  00 00 90 e5                                      ldr r0, [r0]
006da9a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006da9ac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CFPSCounter
; alias: _ZNK6glitch5video11CFPSCounter12getPrimitiveEv
; demangled: glitch::video::CFPSCounter::getPrimitive() const
; decoder-mode: arm
006da9ac  04 00 90 e5                                      ldr r0, [r0, #4]
006da9b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006da9b4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CFPSCounter
; alias: _ZNK6glitch5video11CFPSCounter19getPrimitiveAverageEv
; demangled: glitch::video::CFPSCounter::getPrimitiveAverage() const
; decoder-mode: arm
006da9b4  14 00 90 e5                                      ldr r0, [r0, #0x14]
006da9b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006da9bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CFPSCounter
; alias: _ZNK6glitch5video11CFPSCounter17getPrimitiveTotalEv
; demangled: glitch::video::CFPSCounter::getPrimitiveTotal() const
; decoder-mode: arm
006da9bc  18 00 90 e5                                      ldr r0, [r0, #0x18]
006da9c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006da9c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CFPSCounter
; alias: _ZNK6glitch5video11CFPSCounter12getDrawCallsEv
; demangled: glitch::video::CFPSCounter::getDrawCalls() const
; decoder-mode: arm
006da9c4  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
006da9c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006da9cc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CFPSCounter
; alias: _ZNK6glitch5video11CFPSCounter14getDrawCalls2DEv
; demangled: glitch::video::CFPSCounter::getDrawCalls2D() const
; decoder-mode: arm
006da9cc  20 00 90 e5                                      ldr r0, [r0, #0x20]
006da9d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006da9d4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CFPSCounter
; alias: _ZNK6glitch5video11CFPSCounter18getTextureBindingsEv
; demangled: glitch::video::CFPSCounter::getTextureBindings() const
; decoder-mode: arm
006da9d4  24 00 90 e5                                      ldr r0, [r0, #0x24]
006da9d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006da9fc, declared_size=192, range_size=192, mode=arm
; class-group: glitch::video::CFPSCounter
; alias: _ZN6glitch5video11CFPSCounter13registerFrameEjjjjj
; demangled: glitch::video::CFPSCounter::registerFrame(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int)
; decoder-mode: arm
006da9fc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006daa00  00 40 a0 e1                                      mov r4, r0
006daa04  18 c0 94 e5                                      ldr ip, [r4, #0x18]
006daa08  08 00 90 e5                                      ldr r0, [r0, #8]
006daa0c  04 20 84 e5                                      str r2, [r4, #4]
006daa10  02 c0 8c e0                                      add ip, ip, r2
006daa14  18 c0 84 e5                                      str ip, [r4, #0x18]
006daa18  1c 30 84 e5                                      str r3, [r4, #0x1c]
006daa1c  20 30 9d e5                                      ldr r3, [sp, #0x20]
006daa20  0c 70 94 e5                                      ldr r7, [r4, #0xc]
006daa24  10 60 94 e5                                      ldr r6, [r4, #0x10]
006daa28  20 30 84 e5                                      str r3, [r4, #0x20]
006daa2c  24 30 9d e5                                      ldr r3, [sp, #0x24]
006daa30  01 00 60 e0                                      rsb r0, r0, r1
006daa34  01 50 a0 e1                                      mov r5, r1
006daa38  db 15 00 e3                                      movw r1, #0x5db
006daa3c  01 70 87 e2                                      add r7, r7, #1
006daa40  06 60 82 e0                                      add r6, r2, r6
006daa44  01 00 50 e1                                      cmp r0, r1
006daa48  24 30 84 e5                                      str r3, [r4, #0x24]
006daa4c  0c 70 84 e5                                      str r7, [r4, #0xc]
006daa50  10 60 84 e5                                      str r6, [r4, #0x10]
006daa54  17 00 00 9a                                      bls #0x6daab8
006daa58  20 ce f0 eb                                      bl #0x30e2e0
006daa5c  00 10 a0 e1                                      mov r1, r0
006daa60  fe 05 a0 e3                                      mov r0, #0x3f800000
006daa64  8a d0 f0 eb                                      bl #0x30ec94
006daa68  fa af a0 e3                                      mov sl, #0x3e8
006daa6c  00 80 a0 e1                                      mov r8, r0
006daa70  9a 07 00 e0                                      mul r0, sl, r7
006daa74  19 ce f0 eb                                      bl #0x30e2e0
006daa78  08 10 a0 e1                                      mov r1, r8
006daa7c  ba d0 f0 eb                                      bl #0x30ed6c
006daa80  a3 ce f0 eb                                      bl #0x30e514
006daa84  90 ce f0 eb                                      bl #0x30e4cc
006daa88  00 00 84 e5                                      str r0, [r4]
006daa8c  9a 06 00 e0                                      mul r0, sl, r6
006daa90  12 ce f0 eb                                      bl #0x30e2e0
006daa94  08 10 a0 e1                                      mov r1, r8
006daa98  b3 d0 f0 eb                                      bl #0x30ed6c
006daa9c  9c ce f0 eb                                      bl #0x30e514
006daaa0  89 ce f0 eb                                      bl #0x30e4cc
006daaa4  00 30 a0 e3                                      mov r3, #0
006daaa8  08 50 84 e5                                      str r5, [r4, #8]
006daaac  14 00 84 e5                                      str r0, [r4, #0x14]
006daab0  10 30 84 e5                                      str r3, [r4, #0x10]
006daab4  0c 30 84 e5                                      str r3, [r4, #0xc]
006daab8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
