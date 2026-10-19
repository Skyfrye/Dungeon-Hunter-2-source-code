; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00669e00, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor9getTargetEv
; demangled: glitch::collada::SAnimationAccessor::getTarget() const
; decoder-mode: arm
00669e00  00 30 90 e5                                      ldr r3, [r0]
00669e04  10 30 93 e5                                      ldr r3, [r3, #0x10]
00669e08  04 00 93 e5                                      ldr r0, [r3, #4]
00669e0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e10, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor7getTypeEi
; demangled: glitch::collada::SAnimationAccessor::getType(int) const
; decoder-mode: arm
00669e10  00 30 90 e5                                      ldr r3, [r0]
00669e14  10 30 93 e5                                      ldr r3, [r3, #0x10]
00669e18  01 32 83 e0                                      add r3, r3, r1, lsl #4
00669e1c  08 00 93 e5                                      ldr r0, [r3, #8]
00669e20  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e24, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor9getOutputEi
; demangled: glitch::collada::SAnimationAccessor::getOutput(int) const
; decoder-mode: arm
00669e24  0c 00 90 e8                                      ldm r0, {r2, r3}
00669e28  1c 00 a0 e3                                      mov r0, #0x1c
00669e2c  08 20 92 e5                                      ldr r2, [r2, #8]
00669e30  90 21 22 e0                                      mla r2, r0, r1, r2
00669e34  18 20 92 e5                                      ldr r2, [r2, #0x18]
00669e38  82 31 83 e0                                      add r3, r3, r2, lsl #3
00669e3c  04 00 83 e2                                      add r0, r3, #4
00669e40  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e44, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10getChannelEi
; demangled: glitch::collada::SAnimationAccessor::getChannel(int) const
; decoder-mode: arm
00669e44  00 30 90 e5                                      ldr r3, [r0]
00669e48  10 00 93 e5                                      ldr r0, [r3, #0x10]
00669e4c  01 02 80 e0                                      add r0, r0, r1, lsl #4
00669e50  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e54, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor15hasDefaultValueEv
; demangled: glitch::collada::SAnimationAccessor::hasDefaultValue() const
; decoder-mode: arm
00669e54  00 30 90 e5                                      ldr r3, [r0]
00669e58  18 00 93 e5                                      ldr r0, [r3, #0x18]
00669e5c  00 00 50 e2                                      subs r0, r0, #0
00669e60  01 00 a0 13                                      movne r0, #1
00669e64  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e68, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor15getDefaultValueEv
; demangled: glitch::collada::SAnimationAccessor::getDefaultValue() const
; decoder-mode: arm
00669e68  00 30 90 e5                                      ldr r3, [r0]
00669e6c  18 30 93 e5                                      ldr r3, [r3, #0x18]
00669e70  08 00 93 e5                                      ldr r0, [r3, #8]
00669e74  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e78, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor16getChannelsCountEv
; demangled: glitch::collada::SAnimationAccessor::getChannelsCount() const
; decoder-mode: arm
00669e78  00 30 90 e5                                      ldr r3, [r0]
00669e7c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00669e80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e84, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor19getTimeInternalTypeEi
; demangled: glitch::collada::SAnimationAccessor::getTimeInternalType(int) const
; decoder-mode: arm
00669e84  00 30 90 e5                                      ldr r3, [r0]
00669e88  1c 20 a0 e3                                      mov r2, #0x1c
00669e8c  08 30 93 e5                                      ldr r3, [r3, #8]
00669e90  92 31 23 e0                                      mla r3, r2, r1, r3
00669e94  04 00 93 e5                                      ldr r0, [r3, #4]
00669e98  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669e9c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor20getInterpolationTypeEi
; demangled: glitch::collada::SAnimationAccessor::getInterpolationType(int) const
; decoder-mode: arm
00669e9c  00 30 90 e5                                      ldr r3, [r0]
00669ea0  1c 20 a0 e3                                      mov r2, #0x1c
00669ea4  92 01 02 e0                                      mul r2, r2, r1
00669ea8  08 30 93 e5                                      ldr r3, [r3, #8]
00669eac  02 00 93 e7                                      ldr r0, [r3, r2]
00669eb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669eb4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10getOffsetsEv
; demangled: glitch::collada::SAnimationAccessor::getOffsets() const
; decoder-mode: arm
00669eb4  00 30 90 e5                                      ldr r3, [r0]
00669eb8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00669ebc  08 00 93 e5                                      ldr r0, [r3, #8]
00669ec0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669ec4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor9getScalesEv
; demangled: glitch::collada::SAnimationAccessor::getScales() const
; decoder-mode: arm
00669ec4  00 30 90 e5                                      ldr r3, [r0]
00669ec8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00669ecc  04 00 93 e5                                      ldr r0, [r3, #4]
00669ed0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669ed4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor18getOffsetScaleTypeEv
; demangled: glitch::collada::SAnimationAccessor::getOffsetScaleType() const
; decoder-mode: arm
00669ed4  00 30 90 e5                                      ldr r3, [r0]
00669ed8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00669edc  00 00 53 e3                                      cmp r3, #0
00669ee0  02 00 a0 03                                      moveq r0, #2
00669ee4  00 00 93 15                                      ldrne r0, [r3]
00669ee8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669eec, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10getKeyTimeEi
; demangled: glitch::collada::SAnimationAccessor::getKeyTime(int) const
; decoder-mode: arm
00669eec  0c 00 90 e8                                      ldm r0, {r2, r3}
00669ef0  1c 00 a0 e3                                      mov r0, #0x1c
00669ef4  08 20 92 e5                                      ldr r2, [r2, #8]
00669ef8  90 21 22 e0                                      mla r2, r0, r1, r2
00669efc  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00669f00  82 31 83 e0                                      add r3, r3, r2, lsl #3
00669f04  04 00 83 e2                                      add r0, r3, #4
00669f08  1e ff 2f e1                                      bx lr

; FUNCTION 0x00669f0c, declared_size=160, range_size=160, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10getKeyTimeEii
; demangled: glitch::collada::SAnimationAccessor::getKeyTime(int, int) const
; decoder-mode: arm
00669f0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00669f10  01 40 a0 e1                                      mov r4, r1
00669f14  00 10 a0 e3                                      mov r1, #0
00669f18  02 50 a0 e1                                      mov r5, r2
00669f1c  00 60 a0 e1                                      mov r6, r0
00669f20  d7 ff ff eb                                      bl #0x669e84
00669f24  03 00 50 e3                                      cmp r0, #3
00669f28  18 00 00 0a                                      beq #0x669f90
00669f2c  04 00 50 e3                                      cmp r0, #4
00669f30  10 00 00 0a                                      beq #0x669f78
00669f34  01 00 50 e3                                      cmp r0, #1
00669f38  01 00 00 0a                                      beq #0x669f44
00669f3c  00 00 a0 e3                                      mov r0, #0
00669f40  70 80 bd e8                                      pop {r4, r5, r6, pc}
00669f44  04 10 a0 e1                                      mov r1, r4
00669f48  06 00 a0 e1                                      mov r0, r6
00669f4c  e6 ff ff eb                                      bl #0x669eec
00669f50  04 30 90 e5                                      ldr r3, [r0, #4]
00669f54  05 00 d3 e7                                      ldrb r0, [r3, r5]
00669f58  74 93 f2 eb                                      bl #0x30ed30
00669f5c  ea 2a 05 e3                                      movw r2, #0x5aea
00669f60  aa 3a 0a e3                                      movw r3, #0xaaaa
00669f64  7b 2f 49 e3                                      movt r2, #0x9f7b
00669f68  40 30 44 e3                                      movt r3, #0x4040
00669f6c  d0 92 f2 eb                                      bl #0x30eab4
00669f70  ab 92 f2 eb                                      bl #0x30ea24
00669f74  70 80 bd e8                                      pop {r4, r5, r6, pc}
00669f78  06 00 a0 e1                                      mov r0, r6
00669f7c  04 10 a0 e1                                      mov r1, r4
00669f80  d9 ff ff eb                                      bl #0x669eec
00669f84  04 30 90 e5                                      ldr r3, [r0, #4]
00669f88  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00669f8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00669f90  04 10 a0 e1                                      mov r1, r4
00669f94  06 00 a0 e1                                      mov r0, r6
00669f98  d3 ff ff eb                                      bl #0x669eec
00669f9c  04 30 90 e5                                      ldr r3, [r0, #4]
00669fa0  85 50 a0 e1                                      lsl r5, r5, #1
00669fa4  b5 00 93 e1                                      ldrh r0, [r3, r5]
00669fa8  ea ff ff ea                                      b #0x669f58

; FUNCTION 0x00669fac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor8getStartEi
; demangled: glitch::collada::SAnimationAccessor::getStart(int) const
; decoder-mode: arm
00669fac  00 20 a0 e3                                      mov r2, #0
00669fb0  d5 ff ff ea                                      b #0x669f0c

; FUNCTION 0x00669fb4, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor6getEndEi
; demangled: glitch::collada::SAnimationAccessor::getEnd(int) const
; decoder-mode: arm
00669fb4  70 40 2d e9                                      push {r4, r5, r6, lr}
00669fb8  00 40 a0 e1                                      mov r4, r0
00669fbc  01 50 a0 e1                                      mov r5, r1
00669fc0  c9 ff ff eb                                      bl #0x669eec
00669fc4  00 20 90 e5                                      ldr r2, [r0]
00669fc8  05 10 a0 e1                                      mov r1, r5
00669fcc  04 00 a0 e1                                      mov r0, r4
00669fd0  01 20 42 e2                                      sub r2, r2, #1
00669fd4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00669fd8  cb ff ff ea                                      b #0x669f0c

; FUNCTION 0x00669fdc, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor9getLengthEi
; demangled: glitch::collada::SAnimationAccessor::getLength(int) const
; decoder-mode: arm
00669fdc  70 40 2d e9                                      push {r4, r5, r6, lr}
00669fe0  00 60 a0 e1                                      mov r6, r0
00669fe4  01 50 a0 e1                                      mov r5, r1
00669fe8  f1 ff ff eb                                      bl #0x669fb4
00669fec  05 10 a0 e1                                      mov r1, r5
00669ff0  00 40 a0 e1                                      mov r4, r0
00669ff4  06 00 a0 e1                                      mov r0, r6
00669ff8  eb ff ff eb                                      bl #0x669fac
00669ffc  04 00 60 e0                                      rsb r0, r0, r4
0066a000  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066a004, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor11getAnimatorEv
; demangled: glitch::collada::SAnimationAccessor::getAnimator() const
; decoder-mode: arm
0066a004  00 30 90 e5                                      ldr r3, [r0]
0066a008  14 00 93 e5                                      ldr r0, [r3, #0x14]
0066a00c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066a010, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10applyValueEiiPvPNS0_15animation_track15CApplicatorInfoERib
; demangled: glitch::collada::SAnimationAccessor::applyValue(int, int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, bool) const
; decoder-mode: arm
0066a010  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066a014  10 d0 4d e2                                      sub sp, sp, #0x10
0066a018  01 70 a0 e1                                      mov r7, r1
0066a01c  02 60 a0 e1                                      mov r6, r2
0066a020  03 50 a0 e1                                      mov r5, r3
0066a024  00 80 a0 e1                                      mov r8, r0
0066a028  30 40 dd e5                                      ldrb r4, [sp, #0x30]
0066a02c  f4 ff ff eb                                      bl #0x66a004
0066a030  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0066a034  00 c0 90 e5                                      ldr ip, [r0]
0066a038  08 10 a0 e1                                      mov r1, r8
0066a03c  04 e0 8d e5                                      str lr, [sp, #4]
0066a040  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
0066a044  07 20 a0 e1                                      mov r2, r7
0066a048  06 30 a0 e1                                      mov r3, r6
0066a04c  00 50 8d e5                                      str r5, [sp]
0066a050  08 e0 8d e5                                      str lr, [sp, #8]
0066a054  0c 40 8d e5                                      str r4, [sp, #0xc]
0066a058  0f e0 a0 e1                                      mov lr, pc
0066a05c  80 f0 9c e5                                      ldr pc, [ip, #0x80]
0066a060  10 d0 8d e2                                      add sp, sp, #0x10
0066a064  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0066a068, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10applyValueEiiPvRib
; demangled: glitch::collada::SAnimationAccessor::applyValue(int, int, void*, int&, bool) const
; decoder-mode: arm
0066a068  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066a06c  10 d0 4d e2                                      sub sp, sp, #0x10
0066a070  01 70 a0 e1                                      mov r7, r1
0066a074  02 60 a0 e1                                      mov r6, r2
0066a078  03 50 a0 e1                                      mov r5, r3
0066a07c  00 80 a0 e1                                      mov r8, r0
0066a080  2c 40 dd e5                                      ldrb r4, [sp, #0x2c]
0066a084  de ff ff eb                                      bl #0x66a004
0066a088  00 e0 a0 e3                                      mov lr, #0
0066a08c  00 c0 90 e5                                      ldr ip, [r0]
0066a090  04 e0 8d e5                                      str lr, [sp, #4]
0066a094  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0066a098  08 10 a0 e1                                      mov r1, r8
0066a09c  07 20 a0 e1                                      mov r2, r7
0066a0a0  06 30 a0 e1                                      mov r3, r6
0066a0a4  00 50 8d e5                                      str r5, [sp]
0066a0a8  08 e0 8d e5                                      str lr, [sp, #8]
0066a0ac  0c 40 8d e5                                      str r4, [sp, #0xc]
0066a0b0  0f e0 a0 e1                                      mov lr, pc
0066a0b4  80 f0 9c e5                                      ldr pc, [ip, #0x80]
0066a0b8  10 d0 8d e2                                      add sp, sp, #0x10
0066a0bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0066a0c0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10applyValueEiPvPNS0_15animation_track15CApplicatorInfoERib
; demangled: glitch::collada::SAnimationAccessor::applyValue(int, void*, glitch::collada::animation_track::CApplicatorInfo*, int&, bool) const
; decoder-mode: arm
0066a0c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066a0c4  10 d0 4d e2                                      sub sp, sp, #0x10
0066a0c8  01 70 a0 e1                                      mov r7, r1
0066a0cc  02 60 a0 e1                                      mov r6, r2
0066a0d0  03 50 a0 e1                                      mov r5, r3
0066a0d4  00 80 a0 e1                                      mov r8, r0
0066a0d8  2c 40 dd e5                                      ldrb r4, [sp, #0x2c]
0066a0dc  c8 ff ff eb                                      bl #0x66a004
0066a0e0  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0066a0e4  00 c0 90 e5                                      ldr ip, [r0]
0066a0e8  08 10 a0 e1                                      mov r1, r8
0066a0ec  07 20 a0 e1                                      mov r2, r7
0066a0f0  06 30 a0 e1                                      mov r3, r6
0066a0f4  20 40 8d e8                                      stm sp, {r5, lr}
0066a0f8  08 40 8d e5                                      str r4, [sp, #8]
0066a0fc  0f e0 a0 e1                                      mov lr, pc
0066a100  6c f0 9c e5                                      ldr pc, [ip, #0x6c]
0066a104  10 d0 8d e2                                      add sp, sp, #0x10
0066a108  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0066a10c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor10applyValueEiPvRib
; demangled: glitch::collada::SAnimationAccessor::applyValue(int, void*, int&, bool) const
; decoder-mode: arm
0066a10c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066a110  10 d0 4d e2                                      sub sp, sp, #0x10
0066a114  01 70 a0 e1                                      mov r7, r1
0066a118  02 60 a0 e1                                      mov r6, r2
0066a11c  03 50 a0 e1                                      mov r5, r3
0066a120  00 80 a0 e1                                      mov r8, r0
0066a124  28 40 dd e5                                      ldrb r4, [sp, #0x28]
0066a128  b5 ff ff eb                                      bl #0x66a004
0066a12c  00 e0 a0 e3                                      mov lr, #0
0066a130  00 c0 90 e5                                      ldr ip, [r0]
0066a134  08 10 a0 e1                                      mov r1, r8
0066a138  07 20 a0 e1                                      mov r2, r7
0066a13c  06 30 a0 e1                                      mov r3, r6
0066a140  00 e0 8d e5                                      str lr, [sp]
0066a144  04 50 8d e5                                      str r5, [sp, #4]
0066a148  08 40 8d e5                                      str r4, [sp, #8]
0066a14c  0f e0 a0 e1                                      mov lr, pc
0066a150  6c f0 9c e5                                      ldr pc, [ip, #0x6c]
0066a154  10 d0 8d e2                                      add sp, sp, #0x10
0066a158  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0066a15c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor8getValueEiiPvRib
; demangled: glitch::collada::SAnimationAccessor::getValue(int, int, void*, int&, bool) const
; decoder-mode: arm
0066a15c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066a160  10 d0 4d e2                                      sub sp, sp, #0x10
0066a164  01 70 a0 e1                                      mov r7, r1
0066a168  02 60 a0 e1                                      mov r6, r2
0066a16c  03 50 a0 e1                                      mov r5, r3
0066a170  00 80 a0 e1                                      mov r8, r0
0066a174  2c 40 dd e5                                      ldrb r4, [sp, #0x2c]
0066a178  a1 ff ff eb                                      bl #0x66a004
0066a17c  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0066a180  00 c0 90 e5                                      ldr ip, [r0]
0066a184  08 10 a0 e1                                      mov r1, r8
0066a188  07 20 a0 e1                                      mov r2, r7
0066a18c  06 30 a0 e1                                      mov r3, r6
0066a190  20 40 8d e8                                      stm sp, {r5, lr}
0066a194  08 40 8d e5                                      str r4, [sp, #8]
0066a198  0f e0 a0 e1                                      mov lr, pc
0066a19c  74 f0 9c e5                                      ldr pc, [ip, #0x74]
0066a1a0  10 d0 8d e2                                      add sp, sp, #0x10
0066a1a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0066a1a8, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor8getValueEiPvRib
; demangled: glitch::collada::SAnimationAccessor::getValue(int, void*, int&, bool) const
; decoder-mode: arm
0066a1a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066a1ac  08 d0 4d e2                                      sub sp, sp, #8
0066a1b0  01 70 a0 e1                                      mov r7, r1
0066a1b4  02 60 a0 e1                                      mov r6, r2
0066a1b8  03 50 a0 e1                                      mov r5, r3
0066a1bc  00 80 a0 e1                                      mov r8, r0
0066a1c0  20 40 dd e5                                      ldrb r4, [sp, #0x20]
0066a1c4  8e ff ff eb                                      bl #0x66a004
0066a1c8  08 10 a0 e1                                      mov r1, r8
0066a1cc  00 c0 90 e5                                      ldr ip, [r0]
0066a1d0  07 20 a0 e1                                      mov r2, r7
0066a1d4  06 30 a0 e1                                      mov r3, r6
0066a1d8  00 50 8d e5                                      str r5, [sp]
0066a1dc  04 40 8d e5                                      str r4, [sp, #4]
0066a1e0  0f e0 a0 e1                                      mov lr, pc
0066a1e4  68 f0 9c e5                                      ldr pc, [ip, #0x68]
0066a1e8  08 d0 8d e2                                      add sp, sp, #8
0066a1ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0066ad8c, declared_size=424, range_size=424, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiRKNS_3res6vectorIiEEiRiRf
; demangled: glitch::collada::SAnimationAccessor::findKeyFrameNo(int, glitch::res::vector<int> const&, int, int&, float&) const
; decoder-mode: arm
0066ad8c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066ad90  08 c0 90 e5                                      ldr ip, [r0, #8]
0066ad94  08 d0 4d e2                                      sub sp, sp, #8
0066ad98  00 40 a0 e1                                      mov r4, r0
0066ad9c  0d 80 dc e5                                      ldrb r8, [ip, #0xd]
0066ada0  01 90 a0 e1                                      mov sb, r1
0066ada4  02 a0 a0 e1                                      mov sl, r2
0066ada8  00 00 58 e3                                      cmp r8, #0
0066adac  03 70 a0 e1                                      mov r7, r3
0066adb0  28 60 9d e5                                      ldr r6, [sp, #0x28]
0066adb4  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
0066adb8  15 00 00 0a                                      beq #0x66ae14
0066adbc  04 30 9c e5                                      ldr r3, [ip, #4]
0066adc0  07 00 53 e1                                      cmp r3, r7
0066adc4  09 00 00 0a                                      beq #0x66adf0
0066adc8  04 70 8c e5                                      str r7, [ip, #4]
0066adcc  00 10 a0 e3                                      mov r1, #0
0066add0  2b fc ff eb                                      bl #0x669e84
0066add4  03 00 50 e3                                      cmp r0, #3
0066add8  40 00 00 0a                                      beq #0x66aee0
0066addc  04 00 50 e3                                      cmp r0, #4
0066ade0  32 00 00 0a                                      beq #0x66aeb0
0066ade4  01 00 50 e3                                      cmp r0, #1
0066ade8  1b 00 00 0a                                      beq #0x66ae5c
0066adec  08 c0 94 e5                                      ldr ip, [r4, #8]
0066adf0  00 30 9c e5                                      ldr r3, [ip]
0066adf4  00 30 85 e5                                      str r3, [r5]
0066adf8  08 30 94 e5                                      ldr r3, [r4, #8]
0066adfc  08 30 93 e5                                      ldr r3, [r3, #8]
0066ae00  00 30 86 e5                                      str r3, [r6]
0066ae04  08 30 94 e5                                      ldr r3, [r4, #8]
0066ae08  0c 00 d3 e5                                      ldrb r0, [r3, #0xc]
0066ae0c  08 d0 8d e2                                      add sp, sp, #8
0066ae10  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066ae14  08 10 a0 e1                                      mov r1, r8
0066ae18  19 fc ff eb                                      bl #0x669e84
0066ae1c  03 00 50 e3                                      cmp r0, #3
0066ae20  3a 00 00 0a                                      beq #0x66af10
0066ae24  04 00 50 e3                                      cmp r0, #4
0066ae28  17 00 00 0a                                      beq #0x66ae8c
0066ae2c  01 00 50 e3                                      cmp r0, #1
0066ae30  08 00 a0 11                                      movne r0, r8
0066ae34  f4 ff ff 1a                                      bne #0x66ae0c
0066ae38  04 00 a0 e1                                      mov r0, r4
0066ae3c  09 10 a0 e1                                      mov r1, sb
0066ae40  0a 20 a0 e1                                      mov r2, sl
0066ae44  07 30 a0 e1                                      mov r3, r7
0066ae48  28 60 8d e5                                      str r6, [sp, #0x28]
0066ae4c  2c 50 8d e5                                      str r5, [sp, #0x2c]
0066ae50  08 d0 8d e2                                      add sp, sp, #8
0066ae54  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0066ae58  59 fe ff ea                                      b #0x66a7c4
0066ae5c  08 80 94 e5                                      ldr r8, [r4, #8]
0066ae60  09 10 a0 e1                                      mov r1, sb
0066ae64  0a 20 a0 e1                                      mov r2, sl
0066ae68  08 c0 88 e2                                      add ip, r8, #8
0066ae6c  07 30 a0 e1                                      mov r3, r7
0066ae70  04 00 a0 e1                                      mov r0, r4
0066ae74  00 c0 8d e5                                      str ip, [sp]
0066ae78  04 80 8d e5                                      str r8, [sp, #4]
0066ae7c  50 fe ff eb                                      bl #0x66a7c4
0066ae80  0c 00 c8 e5                                      strb r0, [r8, #0xc]
0066ae84  08 c0 94 e5                                      ldr ip, [r4, #8]
0066ae88  d8 ff ff ea                                      b #0x66adf0
0066ae8c  04 00 a0 e1                                      mov r0, r4
0066ae90  09 10 a0 e1                                      mov r1, sb
0066ae94  0a 20 a0 e1                                      mov r2, sl
0066ae98  07 30 a0 e1                                      mov r3, r7
0066ae9c  28 60 8d e5                                      str r6, [sp, #0x28]
0066aea0  2c 50 8d e5                                      str r5, [sp, #0x2c]
0066aea4  08 d0 8d e2                                      add sp, sp, #8
0066aea8  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0066aeac  fe fc ff ea                                      b #0x66a2ac
0066aeb0  08 80 94 e5                                      ldr r8, [r4, #8]
0066aeb4  09 10 a0 e1                                      mov r1, sb
0066aeb8  0a 20 a0 e1                                      mov r2, sl
0066aebc  08 c0 88 e2                                      add ip, r8, #8
0066aec0  07 30 a0 e1                                      mov r3, r7
0066aec4  04 00 a0 e1                                      mov r0, r4
0066aec8  00 c0 8d e5                                      str ip, [sp]
0066aecc  04 80 8d e5                                      str r8, [sp, #4]
0066aed0  f5 fc ff eb                                      bl #0x66a2ac
0066aed4  0c 00 c8 e5                                      strb r0, [r8, #0xc]
0066aed8  08 c0 94 e5                                      ldr ip, [r4, #8]
0066aedc  c3 ff ff ea                                      b #0x66adf0
0066aee0  08 80 94 e5                                      ldr r8, [r4, #8]
0066aee4  09 10 a0 e1                                      mov r1, sb
0066aee8  0a 20 a0 e1                                      mov r2, sl
0066aeec  08 c0 88 e2                                      add ip, r8, #8
0066aef0  07 30 a0 e1                                      mov r3, r7
0066aef4  04 00 a0 e1                                      mov r0, r4
0066aef8  00 c0 8d e5                                      str ip, [sp]
0066aefc  04 80 8d e5                                      str r8, [sp, #4]
0066af00  6b ff ff eb                                      bl #0x66acb4
0066af04  0c 00 c8 e5                                      strb r0, [r8, #0xc]
0066af08  08 c0 94 e5                                      ldr ip, [r4, #8]
0066af0c  b7 ff ff ea                                      b #0x66adf0
0066af10  04 00 a0 e1                                      mov r0, r4
0066af14  09 10 a0 e1                                      mov r1, sb
0066af18  0a 20 a0 e1                                      mov r2, sl
0066af1c  07 30 a0 e1                                      mov r3, r7
0066af20  28 60 8d e5                                      str r6, [sp, #0x28]
0066af24  2c 50 8d e5                                      str r5, [sp, #0x2c]
0066af28  08 d0 8d e2                                      add sp, sp, #8
0066af2c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0066af30  5f ff ff ea                                      b #0x66acb4

; FUNCTION 0x0066af34, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiiRiRf
; demangled: glitch::collada::SAnimationAccessor::findKeyFrameNo(int, int, int&, float&) const
; decoder-mode: arm
0066af34  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0066af38  0c d0 4d e2                                      sub sp, sp, #0xc
0066af3c  02 50 a0 e1                                      mov r5, r2
0066af40  03 40 a0 e1                                      mov r4, r3
0066af44  00 60 a0 e1                                      mov r6, r0
0066af48  01 70 a0 e1                                      mov r7, r1
0066af4c  e6 fb ff eb                                      bl #0x669eec
0066af50  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0066af54  00 20 a0 e1                                      mov r2, r0
0066af58  07 10 a0 e1                                      mov r1, r7
0066af5c  06 00 a0 e1                                      mov r0, r6
0066af60  05 30 a0 e1                                      mov r3, r5
0066af64  10 10 8d e8                                      stm sp, {r4, ip}
0066af68  87 ff ff eb                                      bl #0x66ad8c
0066af6c  0c d0 8d e2                                      add sp, sp, #0xc
0066af70  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0066af74, declared_size=384, range_size=384, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiRKNS_3res6vectorIiEEiRi
; demangled: glitch::collada::SAnimationAccessor::findKeyFrameNo(int, glitch::res::vector<int> const&, int, int&) const
; decoder-mode: arm
0066af74  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0066af78  08 c0 90 e5                                      ldr ip, [r0, #8]
0066af7c  0c d0 4d e2                                      sub sp, sp, #0xc
0066af80  00 40 a0 e1                                      mov r4, r0
0066af84  0d 70 dc e5                                      ldrb r7, [ip, #0xd]
0066af88  01 a0 a0 e1                                      mov sl, r1
0066af8c  02 80 a0 e1                                      mov r8, r2
0066af90  00 00 57 e3                                      cmp r7, #0
0066af94  03 60 a0 e1                                      mov r6, r3
0066af98  28 50 9d e5                                      ldr r5, [sp, #0x28]
0066af9c  12 00 00 0a                                      beq #0x66afec
0066afa0  04 30 9c e5                                      ldr r3, [ip, #4]
0066afa4  06 00 53 e1                                      cmp r3, r6
0066afa8  09 00 00 0a                                      beq #0x66afd4
0066afac  04 60 8c e5                                      str r6, [ip, #4]
0066afb0  00 10 a0 e3                                      mov r1, #0
0066afb4  b2 fb ff eb                                      bl #0x669e84
0066afb8  03 00 50 e3                                      cmp r0, #3
0066afbc  39 00 00 0a                                      beq #0x66b0a8
0066afc0  04 00 50 e3                                      cmp r0, #4
0066afc4  2c 00 00 0a                                      beq #0x66b07c
0066afc8  01 00 50 e3                                      cmp r0, #1
0066afcc  17 00 00 0a                                      beq #0x66b030
0066afd0  08 c0 94 e5                                      ldr ip, [r4, #8]
0066afd4  08 30 9c e5                                      ldr r3, [ip, #8]
0066afd8  00 30 85 e5                                      str r3, [r5]
0066afdc  08 30 94 e5                                      ldr r3, [r4, #8]
0066afe0  0c 00 d3 e5                                      ldrb r0, [r3, #0xc]
0066afe4  0c d0 8d e2                                      add sp, sp, #0xc
0066afe8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0066afec  07 10 a0 e1                                      mov r1, r7
0066aff0  a3 fb ff eb                                      bl #0x669e84
0066aff4  03 00 50 e3                                      cmp r0, #3
0066aff8  35 00 00 0a                                      beq #0x66b0d4
0066affc  04 00 50 e3                                      cmp r0, #4
0066b000  15 00 00 0a                                      beq #0x66b05c
0066b004  01 00 50 e3                                      cmp r0, #1
0066b008  07 00 a0 11                                      movne r0, r7
0066b00c  f4 ff ff 1a                                      bne #0x66afe4
0066b010  04 00 a0 e1                                      mov r0, r4
0066b014  0a 10 a0 e1                                      mov r1, sl
0066b018  08 20 a0 e1                                      mov r2, r8
0066b01c  06 30 a0 e1                                      mov r3, r6
0066b020  28 50 8d e5                                      str r5, [sp, #0x28]
0066b024  0c d0 8d e2                                      add sp, sp, #0xc
0066b028  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
0066b02c  d5 fd ff ea                                      b #0x66a788
0066b030  08 70 94 e5                                      ldr r7, [r4, #8]
0066b034  0a 10 a0 e1                                      mov r1, sl
0066b038  08 20 a0 e1                                      mov r2, r8
0066b03c  08 c0 87 e2                                      add ip, r7, #8
0066b040  06 30 a0 e1                                      mov r3, r6
0066b044  04 00 a0 e1                                      mov r0, r4
0066b048  00 c0 8d e5                                      str ip, [sp]
0066b04c  cd fd ff eb                                      bl #0x66a788
0066b050  0c 00 c7 e5                                      strb r0, [r7, #0xc]
0066b054  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b058  dd ff ff ea                                      b #0x66afd4
0066b05c  04 00 a0 e1                                      mov r0, r4
0066b060  0a 10 a0 e1                                      mov r1, sl
0066b064  08 20 a0 e1                                      mov r2, r8
0066b068  06 30 a0 e1                                      mov r3, r6
0066b06c  28 50 8d e5                                      str r5, [sp, #0x28]
0066b070  0c d0 8d e2                                      add sp, sp, #0xc
0066b074  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
0066b078  5c fc ff ea                                      b #0x66a1f0
0066b07c  08 70 94 e5                                      ldr r7, [r4, #8]
0066b080  0a 10 a0 e1                                      mov r1, sl
0066b084  08 20 a0 e1                                      mov r2, r8
0066b088  08 c0 87 e2                                      add ip, r7, #8
0066b08c  06 30 a0 e1                                      mov r3, r6
0066b090  04 00 a0 e1                                      mov r0, r4
0066b094  00 c0 8d e5                                      str ip, [sp]
0066b098  54 fc ff eb                                      bl #0x66a1f0
0066b09c  0c 00 c7 e5                                      strb r0, [r7, #0xc]
0066b0a0  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b0a4  ca ff ff ea                                      b #0x66afd4
0066b0a8  08 70 94 e5                                      ldr r7, [r4, #8]
0066b0ac  0a 10 a0 e1                                      mov r1, sl
0066b0b0  08 20 a0 e1                                      mov r2, r8
0066b0b4  08 c0 87 e2                                      add ip, r7, #8
0066b0b8  06 30 a0 e1                                      mov r3, r6
0066b0bc  04 00 a0 e1                                      mov r0, r4
0066b0c0  00 c0 8d e5                                      str ip, [sp]
0066b0c4  eb fe ff eb                                      bl #0x66ac78
0066b0c8  0c 00 c7 e5                                      strb r0, [r7, #0xc]
0066b0cc  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b0d0  bf ff ff ea                                      b #0x66afd4
0066b0d4  04 00 a0 e1                                      mov r0, r4
0066b0d8  0a 10 a0 e1                                      mov r1, sl
0066b0dc  08 20 a0 e1                                      mov r2, r8
0066b0e0  06 30 a0 e1                                      mov r3, r6
0066b0e4  28 50 8d e5                                      str r5, [sp, #0x28]
0066b0e8  0c d0 8d e2                                      add sp, sp, #0xc
0066b0ec  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
0066b0f0  e0 fe ff ea                                      b #0x66ac78

; FUNCTION 0x0066b0f4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiiRi
; demangled: glitch::collada::SAnimationAccessor::findKeyFrameNo(int, int, int&) const
; decoder-mode: arm
0066b0f4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0066b0f8  0c d0 4d e2                                      sub sp, sp, #0xc
0066b0fc  02 50 a0 e1                                      mov r5, r2
0066b100  03 40 a0 e1                                      mov r4, r3
0066b104  00 60 a0 e1                                      mov r6, r0
0066b108  01 70 a0 e1                                      mov r7, r1
0066b10c  76 fb ff eb                                      bl #0x669eec
0066b110  07 10 a0 e1                                      mov r1, r7
0066b114  00 20 a0 e1                                      mov r2, r0
0066b118  05 30 a0 e1                                      mov r3, r5
0066b11c  06 00 a0 e1                                      mov r0, r6
0066b120  00 40 8d e5                                      str r4, [sp]
0066b124  92 ff ff eb                                      bl #0x66af74
0066b128  0c d0 8d e2                                      add sp, sp, #0xc
0066b12c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0066b374, declared_size=412, range_size=412, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiRKNS_3res6vectorIiEEiRii
; demangled: glitch::collada::SAnimationAccessor::findKeyFrameNo(int, glitch::res::vector<int> const&, int, int&, int) const
; decoder-mode: arm
0066b374  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066b378  08 c0 90 e5                                      ldr ip, [r0, #8]
0066b37c  08 d0 4d e2                                      sub sp, sp, #8
0066b380  00 40 a0 e1                                      mov r4, r0
0066b384  0d 70 dc e5                                      ldrb r7, [ip, #0xd]
0066b388  01 a0 a0 e1                                      mov sl, r1
0066b38c  02 80 a0 e1                                      mov r8, r2
0066b390  00 00 57 e3                                      cmp r7, #0
0066b394  03 60 a0 e1                                      mov r6, r3
0066b398  28 50 9d e5                                      ldr r5, [sp, #0x28]
0066b39c  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
0066b3a0  12 00 00 0a                                      beq #0x66b3f0
0066b3a4  04 30 9c e5                                      ldr r3, [ip, #4]
0066b3a8  06 00 53 e1                                      cmp r3, r6
0066b3ac  09 00 00 0a                                      beq #0x66b3d8
0066b3b0  04 60 8c e5                                      str r6, [ip, #4]
0066b3b4  00 10 a0 e3                                      mov r1, #0
0066b3b8  b1 fa ff eb                                      bl #0x669e84
0066b3bc  03 00 50 e3                                      cmp r0, #3
0066b3c0  3d 00 00 0a                                      beq #0x66b4bc
0066b3c4  04 00 50 e3                                      cmp r0, #4
0066b3c8  2f 00 00 0a                                      beq #0x66b48c
0066b3cc  01 00 50 e3                                      cmp r0, #1
0066b3d0  18 00 00 0a                                      beq #0x66b438
0066b3d4  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b3d8  08 30 9c e5                                      ldr r3, [ip, #8]
0066b3dc  00 30 85 e5                                      str r3, [r5]
0066b3e0  08 30 94 e5                                      ldr r3, [r4, #8]
0066b3e4  0c 00 d3 e5                                      ldrb r0, [r3, #0xc]
0066b3e8  08 d0 8d e2                                      add sp, sp, #8
0066b3ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066b3f0  07 10 a0 e1                                      mov r1, r7
0066b3f4  a2 fa ff eb                                      bl #0x669e84
0066b3f8  03 00 50 e3                                      cmp r0, #3
0066b3fc  3a 00 00 0a                                      beq #0x66b4ec
0066b400  04 00 50 e3                                      cmp r0, #4
0066b404  17 00 00 0a                                      beq #0x66b468
0066b408  01 00 50 e3                                      cmp r0, #1
0066b40c  07 00 a0 11                                      movne r0, r7
0066b410  f4 ff ff 1a                                      bne #0x66b3e8
0066b414  04 00 a0 e1                                      mov r0, r4
0066b418  0a 10 a0 e1                                      mov r1, sl
0066b41c  08 20 a0 e1                                      mov r2, r8
0066b420  06 30 a0 e1                                      mov r3, r6
0066b424  28 50 8d e5                                      str r5, [sp, #0x28]
0066b428  2c 90 8d e5                                      str sb, [sp, #0x2c]
0066b42c  08 d0 8d e2                                      add sp, sp, #8
0066b430  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0066b434  8b fd ff ea                                      b #0x66aa68
0066b438  08 70 94 e5                                      ldr r7, [r4, #8]
0066b43c  0a 10 a0 e1                                      mov r1, sl
0066b440  08 20 a0 e1                                      mov r2, r8
0066b444  08 c0 87 e2                                      add ip, r7, #8
0066b448  06 30 a0 e1                                      mov r3, r6
0066b44c  04 00 a0 e1                                      mov r0, r4
0066b450  00 c0 8d e5                                      str ip, [sp]
0066b454  04 90 8d e5                                      str sb, [sp, #4]
0066b458  82 fd ff eb                                      bl #0x66aa68
0066b45c  0c 00 c7 e5                                      strb r0, [r7, #0xc]
0066b460  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b464  db ff ff ea                                      b #0x66b3d8
0066b468  04 00 a0 e1                                      mov r0, r4
0066b46c  0a 10 a0 e1                                      mov r1, sl
0066b470  08 20 a0 e1                                      mov r2, r8
0066b474  06 30 a0 e1                                      mov r3, r6
0066b478  28 50 8d e5                                      str r5, [sp, #0x28]
0066b47c  2c 90 8d e5                                      str sb, [sp, #0x2c]
0066b480  08 d0 8d e2                                      add sp, sp, #8
0066b484  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0066b488  41 fc ff ea                                      b #0x66a594
0066b48c  08 70 94 e5                                      ldr r7, [r4, #8]
0066b490  0a 10 a0 e1                                      mov r1, sl
0066b494  08 20 a0 e1                                      mov r2, r8
0066b498  08 c0 87 e2                                      add ip, r7, #8
0066b49c  06 30 a0 e1                                      mov r3, r6
0066b4a0  04 00 a0 e1                                      mov r0, r4
0066b4a4  00 c0 8d e5                                      str ip, [sp]
0066b4a8  04 90 8d e5                                      str sb, [sp, #4]
0066b4ac  38 fc ff eb                                      bl #0x66a594
0066b4b0  0c 00 c7 e5                                      strb r0, [r7, #0xc]
0066b4b4  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b4b8  c6 ff ff ea                                      b #0x66b3d8
0066b4bc  08 70 94 e5                                      ldr r7, [r4, #8]
0066b4c0  0a 10 a0 e1                                      mov r1, sl
0066b4c4  08 20 a0 e1                                      mov r2, r8
0066b4c8  08 c0 87 e2                                      add ip, r7, #8
0066b4cc  06 30 a0 e1                                      mov r3, r6
0066b4d0  04 00 a0 e1                                      mov r0, r4
0066b4d4  00 c0 8d e5                                      str ip, [sp]
0066b4d8  04 90 8d e5                                      str sb, [sp, #4]
0066b4dc  91 ff ff eb                                      bl #0x66b328
0066b4e0  0c 00 c7 e5                                      strb r0, [r7, #0xc]
0066b4e4  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b4e8  ba ff ff ea                                      b #0x66b3d8
0066b4ec  04 00 a0 e1                                      mov r0, r4
0066b4f0  0a 10 a0 e1                                      mov r1, sl
0066b4f4  08 20 a0 e1                                      mov r2, r8
0066b4f8  06 30 a0 e1                                      mov r3, r6
0066b4fc  28 50 8d e5                                      str r5, [sp, #0x28]
0066b500  2c 90 8d e5                                      str sb, [sp, #0x2c]
0066b504  08 d0 8d e2                                      add sp, sp, #8
0066b508  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0066b50c  85 ff ff ea                                      b #0x66b328

; FUNCTION 0x0066b510, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiiRii
; demangled: glitch::collada::SAnimationAccessor::findKeyFrameNo(int, int, int&, int) const
; decoder-mode: arm
0066b510  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0066b514  0c d0 4d e2                                      sub sp, sp, #0xc
0066b518  02 50 a0 e1                                      mov r5, r2
0066b51c  03 40 a0 e1                                      mov r4, r3
0066b520  00 60 a0 e1                                      mov r6, r0
0066b524  01 70 a0 e1                                      mov r7, r1
0066b528  6f fa ff eb                                      bl #0x669eec
0066b52c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0066b530  00 20 a0 e1                                      mov r2, r0
0066b534  07 10 a0 e1                                      mov r1, r7
0066b538  06 00 a0 e1                                      mov r0, r6
0066b53c  05 30 a0 e1                                      mov r3, r5
0066b540  10 10 8d e8                                      stm sp, {r4, ip}
0066b544  8a ff ff eb                                      bl #0x66b374
0066b548  0c d0 8d e2                                      add sp, sp, #0xc
0066b54c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0066b65c, declared_size=440, range_size=440, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiRKNS_3res6vectorIiEEiRiRfi
; demangled: glitch::collada::SAnimationAccessor::findKeyFrameNo(int, glitch::res::vector<int> const&, int, int&, float&, int) const
; decoder-mode: arm
0066b65c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066b660  08 c0 90 e5                                      ldr ip, [r0, #8]
0066b664  14 d0 4d e2                                      sub sp, sp, #0x14
0066b668  00 40 a0 e1                                      mov r4, r0
0066b66c  0d 80 dc e5                                      ldrb r8, [ip, #0xd]
0066b670  01 90 a0 e1                                      mov sb, r1
0066b674  02 a0 a0 e1                                      mov sl, r2
0066b678  00 00 58 e3                                      cmp r8, #0
0066b67c  03 70 a0 e1                                      mov r7, r3
0066b680  38 60 9d e5                                      ldr r6, [sp, #0x38]
0066b684  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
0066b688  40 b0 9d e5                                      ldr fp, [sp, #0x40]
0066b68c  15 00 00 0a                                      beq #0x66b6e8
0066b690  04 30 9c e5                                      ldr r3, [ip, #4]
0066b694  07 00 53 e1                                      cmp r3, r7
0066b698  09 00 00 0a                                      beq #0x66b6c4
0066b69c  04 70 8c e5                                      str r7, [ip, #4]
0066b6a0  00 10 a0 e3                                      mov r1, #0
0066b6a4  f6 f9 ff eb                                      bl #0x669e84
0066b6a8  03 00 50 e3                                      cmp r0, #3
0066b6ac  42 00 00 0a                                      beq #0x66b7bc
0066b6b0  04 00 50 e3                                      cmp r0, #4
0066b6b4  34 00 00 0a                                      beq #0x66b78c
0066b6b8  01 00 50 e3                                      cmp r0, #1
0066b6bc  1c 00 00 0a                                      beq #0x66b734
0066b6c0  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b6c4  00 30 9c e5                                      ldr r3, [ip]
0066b6c8  00 30 85 e5                                      str r3, [r5]
0066b6cc  08 30 94 e5                                      ldr r3, [r4, #8]
0066b6d0  08 30 93 e5                                      ldr r3, [r3, #8]
0066b6d4  00 30 86 e5                                      str r3, [r6]
0066b6d8  08 30 94 e5                                      ldr r3, [r4, #8]
0066b6dc  0c 00 d3 e5                                      ldrb r0, [r3, #0xc]
0066b6e0  14 d0 8d e2                                      add sp, sp, #0x14
0066b6e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066b6e8  08 10 a0 e1                                      mov r1, r8
0066b6ec  e4 f9 ff eb                                      bl #0x669e84
0066b6f0  03 00 50 e3                                      cmp r0, #3
0066b6f4  3c 00 00 0a                                      beq #0x66b7ec
0066b6f8  04 00 50 e3                                      cmp r0, #4
0066b6fc  18 00 00 0a                                      beq #0x66b764
0066b700  01 00 50 e3                                      cmp r0, #1
0066b704  08 00 a0 11                                      movne r0, r8
0066b708  f4 ff ff 1a                                      bne #0x66b6e0
0066b70c  04 00 a0 e1                                      mov r0, r4
0066b710  09 10 a0 e1                                      mov r1, sb
0066b714  0a 20 a0 e1                                      mov r2, sl
0066b718  07 30 a0 e1                                      mov r3, r7
0066b71c  38 60 8d e5                                      str r6, [sp, #0x38]
0066b720  3c 50 8d e5                                      str r5, [sp, #0x3c]
0066b724  40 b0 8d e5                                      str fp, [sp, #0x40]
0066b728  14 d0 8d e2                                      add sp, sp, #0x14
0066b72c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066b730  df fc ff ea                                      b #0x66aab4
0066b734  08 80 94 e5                                      ldr r8, [r4, #8]
0066b738  09 10 a0 e1                                      mov r1, sb
0066b73c  0a 20 a0 e1                                      mov r2, sl
0066b740  08 c0 88 e2                                      add ip, r8, #8
0066b744  07 30 a0 e1                                      mov r3, r7
0066b748  04 00 a0 e1                                      mov r0, r4
0066b74c  00 c0 8d e5                                      str ip, [sp]
0066b750  00 09 8d e9                                      stmib sp, {r8, fp}
0066b754  d6 fc ff eb                                      bl #0x66aab4
0066b758  0c 00 c8 e5                                      strb r0, [r8, #0xc]
0066b75c  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b760  d7 ff ff ea                                      b #0x66b6c4
0066b764  04 00 a0 e1                                      mov r0, r4
0066b768  09 10 a0 e1                                      mov r1, sb
0066b76c  0a 20 a0 e1                                      mov r2, sl
0066b770  07 30 a0 e1                                      mov r3, r7
0066b774  38 60 8d e5                                      str r6, [sp, #0x38]
0066b778  3c 50 8d e5                                      str r5, [sp, #0x3c]
0066b77c  40 b0 8d e5                                      str fp, [sp, #0x40]
0066b780  14 d0 8d e2                                      add sp, sp, #0x14
0066b784  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066b788  94 fb ff ea                                      b #0x66a5e0
0066b78c  08 80 94 e5                                      ldr r8, [r4, #8]
0066b790  09 10 a0 e1                                      mov r1, sb
0066b794  0a 20 a0 e1                                      mov r2, sl
0066b798  08 c0 88 e2                                      add ip, r8, #8
0066b79c  07 30 a0 e1                                      mov r3, r7
0066b7a0  04 00 a0 e1                                      mov r0, r4
0066b7a4  00 c0 8d e5                                      str ip, [sp]
0066b7a8  00 09 8d e9                                      stmib sp, {r8, fp}
0066b7ac  8b fb ff eb                                      bl #0x66a5e0
0066b7b0  0c 00 c8 e5                                      strb r0, [r8, #0xc]
0066b7b4  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b7b8  c1 ff ff ea                                      b #0x66b6c4
0066b7bc  08 80 94 e5                                      ldr r8, [r4, #8]
0066b7c0  09 10 a0 e1                                      mov r1, sb
0066b7c4  0a 20 a0 e1                                      mov r2, sl
0066b7c8  08 c0 88 e2                                      add ip, r8, #8
0066b7cc  07 30 a0 e1                                      mov r3, r7
0066b7d0  04 00 a0 e1                                      mov r0, r4
0066b7d4  00 c0 8d e5                                      str ip, [sp]
0066b7d8  00 09 8d e9                                      stmib sp, {r8, fp}
0066b7dc  5b ff ff eb                                      bl #0x66b550
0066b7e0  0c 00 c8 e5                                      strb r0, [r8, #0xc]
0066b7e4  08 c0 94 e5                                      ldr ip, [r4, #8]
0066b7e8  b5 ff ff ea                                      b #0x66b6c4
0066b7ec  04 00 a0 e1                                      mov r0, r4
0066b7f0  09 10 a0 e1                                      mov r1, sb
0066b7f4  0a 20 a0 e1                                      mov r2, sl
0066b7f8  07 30 a0 e1                                      mov r3, r7
0066b7fc  38 60 8d e5                                      str r6, [sp, #0x38]
0066b800  3c 50 8d e5                                      str r5, [sp, #0x3c]
0066b804  40 b0 8d e5                                      str fp, [sp, #0x40]
0066b808  14 d0 8d e2                                      add sp, sp, #0x14
0066b80c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066b810  4e ff ff ea                                      b #0x66b550

; FUNCTION 0x0066b814, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::SAnimationAccessor
; alias: _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiiRiRfi
; demangled: glitch::collada::SAnimationAccessor::findKeyFrameNo(int, int, int&, float&, int) const
; decoder-mode: arm
0066b814  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0066b818  14 d0 4d e2                                      sub sp, sp, #0x14
0066b81c  02 50 a0 e1                                      mov r5, r2
0066b820  03 40 a0 e1                                      mov r4, r3
0066b824  00 60 a0 e1                                      mov r6, r0
0066b828  01 70 a0 e1                                      mov r7, r1
0066b82c  ae f9 ff eb                                      bl #0x669eec
0066b830  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0066b834  00 20 a0 e1                                      mov r2, r0
0066b838  07 10 a0 e1                                      mov r1, r7
0066b83c  04 c0 8d e5                                      str ip, [sp, #4]
0066b840  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0066b844  06 00 a0 e1                                      mov r0, r6
0066b848  05 30 a0 e1                                      mov r3, r5
0066b84c  00 40 8d e5                                      str r4, [sp]
0066b850  08 c0 8d e5                                      str ip, [sp, #8]
0066b854  80 ff ff eb                                      bl #0x66b65c
0066b858  14 d0 8d e2                                      add sp, sp, #0x14
0066b85c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
