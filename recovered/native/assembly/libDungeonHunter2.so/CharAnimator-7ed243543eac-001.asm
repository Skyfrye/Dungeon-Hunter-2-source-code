; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c8ff4, declared_size=120, range_size=120, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimatorC2Ev
; demangled: CharAnimator::CharAnimator()
; decoder-mode: arm
003c8ff4  68 10 9f e5                                      ldr r1, [pc, #0x68]
003c8ff8  68 c0 9f e5                                      ldr ip, [pc, #0x68]
003c8ffc  00 20 a0 e3                                      mov r2, #0
003c9000  01 10 8f e0                                      add r1, pc, r1
003c9004  0c c0 91 e7                                      ldr ip, [r1, ip]
003c9008  30 00 2d e9                                      push {r4, r5}
003c900c  08 c0 8c e2                                      add ip, ip, #8
003c9010  fe 55 a0 e3                                      mov r5, #0x3f800000
003c9014  00 40 e0 e3                                      mvn r4, #0
003c9018  00 c0 80 e5                                      str ip, [r0]
003c901c  01 c0 a0 e3                                      mov ip, #1
003c9020  5c 20 c0 e5                                      strb r2, [r0, #0x5c]
003c9024  40 50 80 e5                                      str r5, [r0, #0x40]
003c9028  48 c0 c0 e5                                      strb ip, [r0, #0x48]
003c902c  50 40 80 e5                                      str r4, [r0, #0x50]
003c9030  04 20 80 e5                                      str r2, [r0, #4]
003c9034  2c 20 80 e5                                      str r2, [r0, #0x2c]
003c9038  30 20 c0 e5                                      strb r2, [r0, #0x30]
003c903c  34 50 80 e5                                      str r5, [r0, #0x34]
003c9040  38 20 c0 e5                                      strb r2, [r0, #0x38]
003c9044  3c 40 80 e5                                      str r4, [r0, #0x3c]
003c9048  44 20 80 e5                                      str r2, [r0, #0x44]
003c904c  49 20 c0 e5                                      strb r2, [r0, #0x49]
003c9050  4a 20 c0 e5                                      strb r2, [r0, #0x4a]
003c9054  54 20 c0 e5                                      strb r2, [r0, #0x54]
003c9058  58 20 80 e5                                      str r2, [r0, #0x58]
003c905c  30 00 bd e8                                      pop {r4, r5}
003c9060  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003c9064  90 ba 5c 00 04 17 00 00                          .byte 0x90, 0xba, 0x5c, 0x00, 0x04, 0x17, 0x00, 0x00

; FUNCTION 0x003c906c, declared_size=120, range_size=120, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimatorC1Ev
; demangled: CharAnimator::CharAnimator()
; decoder-mode: arm
003c906c  68 10 9f e5                                      ldr r1, [pc, #0x68]
003c9070  68 c0 9f e5                                      ldr ip, [pc, #0x68]
003c9074  00 20 a0 e3                                      mov r2, #0
003c9078  01 10 8f e0                                      add r1, pc, r1
003c907c  0c c0 91 e7                                      ldr ip, [r1, ip]
003c9080  30 00 2d e9                                      push {r4, r5}
003c9084  08 c0 8c e2                                      add ip, ip, #8
003c9088  fe 55 a0 e3                                      mov r5, #0x3f800000
003c908c  00 40 e0 e3                                      mvn r4, #0
003c9090  00 c0 80 e5                                      str ip, [r0]
003c9094  01 c0 a0 e3                                      mov ip, #1
003c9098  5c 20 c0 e5                                      strb r2, [r0, #0x5c]
003c909c  40 50 80 e5                                      str r5, [r0, #0x40]
003c90a0  48 c0 c0 e5                                      strb ip, [r0, #0x48]
003c90a4  50 40 80 e5                                      str r4, [r0, #0x50]
003c90a8  04 20 80 e5                                      str r2, [r0, #4]
003c90ac  2c 20 80 e5                                      str r2, [r0, #0x2c]
003c90b0  30 20 c0 e5                                      strb r2, [r0, #0x30]
003c90b4  34 50 80 e5                                      str r5, [r0, #0x34]
003c90b8  38 20 c0 e5                                      strb r2, [r0, #0x38]
003c90bc  3c 40 80 e5                                      str r4, [r0, #0x3c]
003c90c0  44 20 80 e5                                      str r2, [r0, #0x44]
003c90c4  49 20 c0 e5                                      strb r2, [r0, #0x49]
003c90c8  4a 20 c0 e5                                      strb r2, [r0, #0x4a]
003c90cc  54 20 c0 e5                                      strb r2, [r0, #0x54]
003c90d0  58 20 80 e5                                      str r2, [r0, #0x58]
003c90d4  30 00 bd e8                                      pop {r4, r5}
003c90d8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003c90dc  18 ba 5c 00 04 17 00 00                          .byte 0x18, 0xba, 0x5c, 0x00, 0x04, 0x17, 0x00, 0x00

; FUNCTION 0x003c90e4, declared_size=4, range_size=4, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimatorD2Ev
; demangled: CharAnimator::~CharAnimator()
; decoder-mode: arm
003c90e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c90e8, declared_size=4, range_size=4, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimatorD1Ev
; demangled: CharAnimator::~CharAnimator()
; decoder-mode: arm
003c90e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c90ec, declared_size=12, range_size=12, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator10__CallbackEPN6glitch5scene19ITimelineControllerEPv
; demangled: CharAnimator::__Callback(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
003c90ec  01 30 a0 e3                                      mov r3, #1
003c90f0  49 30 c1 e5                                      strb r3, [r1, #0x49]
003c90f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c90f8, declared_size=112, range_size=112, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator18CalculateExtraTimeEPN6glitch5scene19ITimelineControllerE
; demangled: CharAnimator::CalculateExtraTime(glitch::scene::ITimelineController*)
; decoder-mode: arm
003c90f8  70 40 2d e9                                      push {r4, r5, r6, lr}
003c90fc  00 40 51 e2                                      subs r4, r1, #0
003c9100  00 50 a0 e1                                      mov r5, r0
003c9104  16 00 00 0a                                      beq #0x3c9164
003c9108  11 13 a0 e3                                      mov r1, #0x44000000
003c910c  7a 18 81 e2                                      add r1, r1, #0x7a0000
003c9110  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003c9114  14 17 fd eb                                      bl #0x30ed6c
003c9118  eb 14 fd eb                                      bl #0x30e4cc
003c911c  11 13 a0 e3                                      mov r1, #0x44000000
003c9120  00 60 a0 e1                                      mov r6, r0
003c9124  7a 18 81 e2                                      add r1, r1, #0x7a0000
003c9128  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
003c912c  0e 17 fd eb                                      bl #0x30ed6c
003c9130  e5 14 fd eb                                      bl #0x30e4cc
003c9134  04 30 94 e5                                      ldr r3, [r4, #4]
003c9138  00 20 a0 e3                                      mov r2, #0
003c913c  44 20 85 e5                                      str r2, [r5, #0x44]
003c9140  00 30 63 e0                                      rsb r3, r3, r0
003c9144  06 00 53 e1                                      cmp r3, r6
003c9148  00 20 a0 a3                                      movge r2, #0
003c914c  01 20 a0 b3                                      movlt r2, #1
003c9150  00 00 53 e3                                      cmp r3, #0
003c9154  00 20 a0 b3                                      movlt r2, #0
003c9158  00 00 52 e3                                      cmp r2, #0
003c915c  06 30 63 10                                      rsbne r3, r3, r6
003c9160  44 30 85 15                                      strne r3, [r5, #0x44]
003c9164  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003c9168, declared_size=96, range_size=96, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator15IncAnimSetUsersEv
; demangled: CharAnimator::IncAnimSetUsers()
; decoder-mode: arm
003c9168  04 e0 2d e5                                      str lr, [sp, #-4]!
003c916c  04 30 90 e5                                      ldr r3, [r0, #4]
003c9170  0c d0 4d e2                                      sub sp, sp, #0xc
003c9174  d8 32 93 e5                                      ldr r3, [r3, #0x2d8]
003c9178  00 00 53 e3                                      cmp r3, #0
003c917c  0f 00 00 0a                                      beq #0x3c91c0
003c9180  38 30 93 e5                                      ldr r3, [r3, #0x38]
003c9184  04 00 8d e2                                      add r0, sp, #4
003c9188  03 10 a0 e1                                      mov r1, r3
003c918c  00 30 93 e5                                      ldr r3, [r3]
003c9190  0f e0 a0 e1                                      mov lr, pc
003c9194  08 f0 93 e5                                      ldr pc, [r3, #8]
003c9198  04 30 9d e5                                      ldr r3, [sp, #4]
003c919c  00 00 53 e3                                      cmp r3, #0
003c91a0  06 00 00 0a                                      beq #0x3c91c0
003c91a4  24 20 93 e5                                      ldr r2, [r3, #0x24]
003c91a8  01 20 82 e2                                      add r2, r2, #1
003c91ac  24 20 83 e5                                      str r2, [r3, #0x24]
003c91b0  04 00 9d e5                                      ldr r0, [sp, #4]
003c91b4  00 00 50 e3                                      cmp r0, #0
003c91b8  00 00 00 0a                                      beq #0x3c91c0
003c91bc  f0 50 fd eb                                      bl #0x31d584
003c91c0  0c d0 8d e2                                      add sp, sp, #0xc
003c91c4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x003c91c8, declared_size=96, range_size=96, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator15DecAnimSetUsersEv
; demangled: CharAnimator::DecAnimSetUsers()
; decoder-mode: arm
003c91c8  04 e0 2d e5                                      str lr, [sp, #-4]!
003c91cc  04 30 90 e5                                      ldr r3, [r0, #4]
003c91d0  0c d0 4d e2                                      sub sp, sp, #0xc
003c91d4  d8 32 93 e5                                      ldr r3, [r3, #0x2d8]
003c91d8  00 00 53 e3                                      cmp r3, #0
003c91dc  0f 00 00 0a                                      beq #0x3c9220
003c91e0  38 30 93 e5                                      ldr r3, [r3, #0x38]
003c91e4  04 00 8d e2                                      add r0, sp, #4
003c91e8  03 10 a0 e1                                      mov r1, r3
003c91ec  00 30 93 e5                                      ldr r3, [r3]
003c91f0  0f e0 a0 e1                                      mov lr, pc
003c91f4  08 f0 93 e5                                      ldr pc, [r3, #8]
003c91f8  04 30 9d e5                                      ldr r3, [sp, #4]
003c91fc  00 00 53 e3                                      cmp r3, #0
003c9200  06 00 00 0a                                      beq #0x3c9220
003c9204  24 20 93 e5                                      ldr r2, [r3, #0x24]
003c9208  01 20 42 e2                                      sub r2, r2, #1
003c920c  24 20 83 e5                                      str r2, [r3, #0x24]
003c9210  04 00 9d e5                                      ldr r0, [sp, #4]
003c9214  00 00 50 e3                                      cmp r0, #0
003c9218  00 00 00 0a                                      beq #0x3c9220
003c921c  d8 50 fd eb                                      bl #0x31d584
003c9220  0c d0 8d e2                                      add sp, sp, #0xc
003c9224  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x003c9228, declared_size=84, range_size=84, mode=arm
; class-group: CharAnimator
; alias: _ZNK12CharAnimator13ANIM_IsUniqueEv
; demangled: CharAnimator::ANIM_IsUnique() const
; decoder-mode: arm
003c9228  48 20 d0 e5                                      ldrb r2, [r0, #0x48]
003c922c  40 30 9f e5                                      ldr r3, [pc, #0x40]
003c9230  00 00 52 e3                                      cmp r2, #0
003c9234  03 30 8f e0                                      add r3, pc, r3
003c9238  00 00 a0 13                                      movne r0, #0
003c923c  1e ff 2f 11                                      bxne lr
003c9240  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
003c9244  0c 10 a0 e3                                      mov r1, #0xc
003c9248  91 02 20 e0                                      mla r0, r1, r2, r0
003c924c  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c9250  14 10 a0 e3                                      mov r1, #0x14
003c9254  02 20 93 e7                                      ldr r2, [r3, r2]
003c9258  08 30 90 e5                                      ldr r3, [r0, #8]
003c925c  00 20 92 e5                                      ldr r2, [r2]
003c9260  91 23 23 e0                                      mla r3, r1, r3, r2
003c9264  10 00 93 e5                                      ldr r0, [r3, #0x10]
003c9268  01 00 70 e2                                      rsbs r0, r0, #1
003c926c  00 00 a0 33                                      movlo r0, #0
003c9270  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003c9274  5c b8 5c 00 7c 3c 00 00                          .byte 0x5c, 0xb8, 0x5c, 0x00, 0x7c, 0x3c, 0x00, 0x00

; FUNCTION 0x003c927c, declared_size=88, range_size=88, mode=arm
; class-group: CharAnimator
; alias: _ZNK12CharAnimator13ANIM_IsRandomEv
; demangled: CharAnimator::ANIM_IsRandom() const
; decoder-mode: arm
003c927c  48 20 d0 e5                                      ldrb r2, [r0, #0x48]
003c9280  44 30 9f e5                                      ldr r3, [pc, #0x44]
003c9284  00 00 52 e3                                      cmp r2, #0
003c9288  03 30 8f e0                                      add r3, pc, r3
003c928c  00 00 a0 13                                      movne r0, #0
003c9290  1e ff 2f 11                                      bxne lr
003c9294  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
003c9298  0c 10 a0 e3                                      mov r1, #0xc
003c929c  91 02 20 e0                                      mla r0, r1, r2, r0
003c92a0  28 20 9f e5                                      ldr r2, [pc, #0x28]
003c92a4  14 10 a0 e3                                      mov r1, #0x14
003c92a8  02 20 93 e7                                      ldr r2, [r3, r2]
003c92ac  08 30 90 e5                                      ldr r3, [r0, #8]
003c92b0  00 20 92 e5                                      ldr r2, [r2]
003c92b4  91 23 23 e0                                      mla r3, r1, r3, r2
003c92b8  10 00 93 e5                                      ldr r0, [r3, #0x10]
003c92bc  02 00 50 e3                                      cmp r0, #2
003c92c0  00 00 a0 13                                      movne r0, #0
003c92c4  01 00 a0 03                                      moveq r0, #1
003c92c8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003c92cc  08 b8 5c 00 7c 3c 00 00                          .byte 0x08, 0xb8, 0x5c, 0x00, 0x7c, 0x3c, 0x00, 0x00

; FUNCTION 0x003c92d4, declared_size=88, range_size=88, mode=arm
; class-group: CharAnimator
; alias: _ZNK12CharAnimator15ANIM_IsSequenceEv
; demangled: CharAnimator::ANIM_IsSequence() const
; decoder-mode: arm
003c92d4  48 20 d0 e5                                      ldrb r2, [r0, #0x48]
003c92d8  44 30 9f e5                                      ldr r3, [pc, #0x44]
003c92dc  00 00 52 e3                                      cmp r2, #0
003c92e0  03 30 8f e0                                      add r3, pc, r3
003c92e4  00 00 a0 13                                      movne r0, #0
003c92e8  1e ff 2f 11                                      bxne lr
003c92ec  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
003c92f0  0c 10 a0 e3                                      mov r1, #0xc
003c92f4  91 02 20 e0                                      mla r0, r1, r2, r0
003c92f8  28 20 9f e5                                      ldr r2, [pc, #0x28]
003c92fc  14 10 a0 e3                                      mov r1, #0x14
003c9300  02 20 93 e7                                      ldr r2, [r3, r2]
003c9304  08 30 90 e5                                      ldr r3, [r0, #8]
003c9308  00 20 92 e5                                      ldr r2, [r2]
003c930c  91 23 23 e0                                      mla r3, r1, r3, r2
003c9310  10 00 93 e5                                      ldr r0, [r3, #0x10]
003c9314  01 00 50 e3                                      cmp r0, #1
003c9318  00 00 a0 13                                      movne r0, #0
003c931c  01 00 a0 03                                      moveq r0, #1
003c9320  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003c9324  b0 b7 5c 00 7c 3c 00 00                          .byte 0xb0, 0xb7, 0x5c, 0x00, 0x7c, 0x3c, 0x00, 0x00

; FUNCTION 0x003c932c, declared_size=32, range_size=32, mode=arm
; class-group: CharAnimator
; alias: _ZNK12CharAnimator17ANIM_GetStepIndexEv
; demangled: CharAnimator::ANIM_GetStepIndex() const
; decoder-mode: arm
003c932c  48 30 d0 e5                                      ldrb r3, [r0, #0x48]
003c9330  00 00 53 e3                                      cmp r3, #0
003c9334  2c 30 90 05                                      ldreq r3, [r0, #0x2c]
003c9338  0c 20 a0 03                                      moveq r2, #0xc
003c933c  00 00 e0 13                                      mvnne r0, #0
003c9340  92 03 20 00                                      mlaeq r0, r2, r3, r0
003c9344  10 00 90 05                                      ldreq r0, [r0, #0x10]
003c9348  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c934c, declared_size=76, range_size=76, mode=arm
; class-group: CharAnimator
; alias: _ZNK12CharAnimator17ANIM_GetStepCountEv
; demangled: CharAnimator::ANIM_GetStepCount() const
; decoder-mode: arm
003c934c  48 20 d0 e5                                      ldrb r2, [r0, #0x48]
003c9350  38 30 9f e5                                      ldr r3, [pc, #0x38]
003c9354  00 00 52 e3                                      cmp r2, #0
003c9358  03 30 8f e0                                      add r3, pc, r3
003c935c  00 00 a0 13                                      movne r0, #0
003c9360  1e ff 2f 11                                      bxne lr
003c9364  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
003c9368  0c 10 a0 e3                                      mov r1, #0xc
003c936c  91 02 20 e0                                      mla r0, r1, r2, r0
003c9370  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
003c9374  14 10 a0 e3                                      mov r1, #0x14
003c9378  02 20 93 e7                                      ldr r2, [r3, r2]
003c937c  08 30 90 e5                                      ldr r3, [r0, #8]
003c9380  00 20 92 e5                                      ldr r2, [r2]
003c9384  91 23 23 e0                                      mla r3, r1, r3, r2
003c9388  08 00 93 e5                                      ldr r0, [r3, #8]
003c938c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003c9390  38 b7 5c 00 7c 3c 00 00                          .byte 0x38, 0xb7, 0x5c, 0x00, 0x7c, 0x3c, 0x00, 0x00

; FUNCTION 0x003c9398, declared_size=100, range_size=100, mode=arm
; class-group: CharAnimator
; alias: _ZNK12CharAnimator31ANIM_GetCurrentlyPlayedAnimDictEv
; demangled: CharAnimator::ANIM_GetCurrentlyPlayedAnimDict() const
; decoder-mode: arm
003c9398  10 40 2d e9                                      push {r4, lr}
003c939c  48 10 d0 e5                                      ldrb r1, [r0, #0x48]
003c93a0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003c93a4  00 00 51 e3                                      cmp r1, #0
003c93a8  03 30 8f e0                                      add r3, pc, r3
003c93ac  01 00 00 0a                                      beq #0x3c93b8
003c93b0  00 00 e0 e3                                      mvn r0, #0
003c93b4  10 80 bd e8                                      pop {r4, pc}
003c93b8  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
003c93bc  0c c0 a0 e3                                      mov ip, #0xc
003c93c0  14 40 a0 e3                                      mov r4, #0x14
003c93c4  9c 01 22 e0                                      mla r2, ip, r1, r0
003c93c8  28 10 9f e5                                      ldr r1, [pc, #0x28]
003c93cc  08 20 92 e5                                      ldr r2, [r2, #8]
003c93d0  01 30 93 e7                                      ldr r3, [r3, r1]
003c93d4  00 30 93 e5                                      ldr r3, [r3]
003c93d8  94 32 24 e0                                      mla r4, r4, r2, r3
003c93dc  d2 ff ff eb                                      bl #0x3c932c
003c93e0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003c93e4  38 20 a0 e3                                      mov r2, #0x38
003c93e8  92 30 23 e0                                      mla r3, r2, r0, r3
003c93ec  08 00 93 e5                                      ldr r0, [r3, #8]
003c93f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c93f4  e8 b6 5c 00 7c 3c 00 00                          .byte 0xe8, 0xb6, 0x5c, 0x00, 0x7c, 0x3c, 0x00, 0x00

; FUNCTION 0x003c93fc, declared_size=72, range_size=72, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator13ANIM_SetSpeedEf
; demangled: CharAnimator::ANIM_SetSpeed(float)
; decoder-mode: arm
003c93fc  10 40 2d e9                                      push {r4, lr}
003c9400  04 20 90 e5                                      ldr r2, [r0, #4]
003c9404  40 10 80 e5                                      str r1, [r0, #0x40]
003c9408  00 30 a0 e1                                      mov r3, r0
003c940c  d8 22 92 e5                                      ldr r2, [r2, #0x2d8]
003c9410  00 00 52 e3                                      cmp r2, #0
003c9414  09 00 00 0a                                      beq #0x3c9440
003c9418  01 00 a0 e1                                      mov r0, r1
003c941c  34 10 93 e5                                      ldr r1, [r3, #0x34]
003c9420  38 40 92 e5                                      ldr r4, [r2, #0x38]
003c9424  50 16 fd eb                                      bl #0x30ed6c
003c9428  00 30 94 e5                                      ldr r3, [r4]
003c942c  00 10 a0 e1                                      mov r1, r0
003c9430  00 20 a0 e3                                      mov r2, #0
003c9434  04 00 a0 e1                                      mov r0, r4
003c9438  0f e0 a0 e1                                      mov lr, pc
003c943c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c9440  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c9444, declared_size=32, range_size=32, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator17ANIM_SkipNextStepEj
; demangled: CharAnimator::ANIM_SkipNextStep(unsigned int)
; decoder-mode: arm
003c9444  48 30 d0 e5                                      ldrb r3, [r0, #0x48]
003c9448  00 00 53 e3                                      cmp r3, #0
003c944c  0c 30 a0 03                                      moveq r3, #0xc
003c9450  93 01 20 00                                      mlaeq r0, r3, r1, r0
003c9454  10 30 90 05                                      ldreq r3, [r0, #0x10]
003c9458  01 30 83 02                                      addeq r3, r3, #1
003c945c  10 30 80 05                                      streq r3, [r0, #0x10]
003c9460  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c9464, declared_size=8, range_size=8, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator17ANIM_SkipNextStepEv
; demangled: CharAnimator::ANIM_SkipNextStep()
; decoder-mode: arm
003c9464  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
003c9468  f5 ff ff ea                                      b #0x3c9444

; FUNCTION 0x003c946c, declared_size=24, range_size=24, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator12ANIM_SetStepEjj
; demangled: CharAnimator::ANIM_SetStep(unsigned int, unsigned int)
; decoder-mode: arm
003c946c  48 30 d0 e5                                      ldrb r3, [r0, #0x48]
003c9470  00 00 53 e3                                      cmp r3, #0
003c9474  0c 30 a0 03                                      moveq r3, #0xc
003c9478  93 02 20 00                                      mlaeq r0, r3, r2, r0
003c947c  10 10 80 05                                      streq r1, [r0, #0x10]
003c9480  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c9484, declared_size=8, range_size=8, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator12ANIM_SetStepEj
; demangled: CharAnimator::ANIM_SetStep(unsigned int)
; decoder-mode: arm
003c9484  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
003c9488  f7 ff ff ea                                      b #0x3c946c

; FUNCTION 0x003c948c, declared_size=44, range_size=44, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator13ANIM_StopLoopEb
; demangled: CharAnimator::ANIM_StopLoop(bool)
; decoder-mode: arm
003c948c  48 30 d0 e5                                      ldrb r3, [r0, #0x48]
003c9490  00 00 53 e3                                      cmp r3, #0
003c9494  1e ff 2f 11                                      bxne lr
003c9498  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
003c949c  00 00 51 e3                                      cmp r1, #0
003c94a0  0c 10 a0 e3                                      mov r1, #0xc
003c94a4  91 02 22 e0                                      mla r2, r1, r2, r0
003c94a8  0c 30 82 e5                                      str r3, [r2, #0xc]
003c94ac  01 30 a0 13                                      movne r3, #1
003c94b0  4a 30 c0 15                                      strbne r3, [r0, #0x4a]
003c94b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c94b8, declared_size=164, range_size=164, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator18_PlayItemSwooshSFXEP12ItemInstance
; demangled: CharAnimator::_PlayItemSwooshSFX(ItemInstance*)
; decoder-mode: arm
003c94b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c94bc  90 50 9f e5                                      ldr r5, [pc, #0x90]
003c94c0  00 00 51 e3                                      cmp r1, #0
003c94c4  20 d0 4d e2                                      sub sp, sp, #0x20
003c94c8  00 40 a0 e1                                      mov r4, r0
003c94cc  05 50 8f e0                                      add r5, pc, r5
003c94d0  1c 00 00 0a                                      beq #0x3c9548
003c94d4  01 00 a0 e1                                      mov r0, r1
003c94d8  4a c2 00 eb                                      bl #0x3f9e08
003c94dc  14 70 90 e5                                      ldr r7, [r0, #0x14]
003c94e0  01 00 77 e3                                      cmn r7, #1
003c94e4  17 00 00 0a                                      beq #0x3c9548
003c94e8  68 30 9f e5                                      ldr r3, [pc, #0x68]
003c94ec  04 00 94 e5                                      ldr r0, [r4, #4]
003c94f0  01 40 a0 e3                                      mov r4, #1
003c94f4  03 30 95 e7                                      ldr r3, [r5, r3]
003c94f8  00 80 93 e5                                      ldr r8, [r3]
003c94fc  36 28 ff eb                                      bl #0x3935dc
003c9500  00 60 90 e5                                      ldr r6, [r0]
003c9504  04 50 90 e5                                      ldr r5, [r0, #4]
003c9508  08 e0 90 e5                                      ldr lr, [r0, #8]
003c950c  bf c4 a0 e3                                      mov ip, #0xbf000000
003c9510  02 c5 8c e2                                      add ip, ip, #0x800000
003c9514  08 00 a0 e1                                      mov r0, r8
003c9518  07 10 a0 e1                                      mov r1, r7
003c951c  14 20 8d e2                                      add r2, sp, #0x14
003c9520  00 30 a0 e3                                      mov r3, #0
003c9524  14 60 8d e5                                      str r6, [sp, #0x14]
003c9528  18 50 8d e5                                      str r5, [sp, #0x18]
003c952c  1c e0 8d e5                                      str lr, [sp, #0x1c]
003c9530  08 c0 8d e5                                      str ip, [sp, #8]
003c9534  00 40 8d e5                                      str r4, [sp]
003c9538  04 c0 8d e5                                      str ip, [sp, #4]
003c953c  25 88 fe eb                                      bl #0x36b5d8
003c9540  04 00 a0 e1                                      mov r0, r4
003c9544  00 00 00 ea                                      b #0x3c954c
003c9548  00 00 a0 e3                                      mov r0, #0
003c954c  20 d0 8d e2                                      add sp, sp, #0x20
003c9550  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003c9554  c4 b5 5c 00 a4 0d 00 00                          .byte 0xc4, 0xb5, 0x5c, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x003c955c, declared_size=164, range_size=164, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator17_PlayItemSwooshFXEP12ItemInstanceb
; demangled: CharAnimator::_PlayItemSwooshFX(ItemInstance*, bool)
; decoder-mode: arm
003c955c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c9560  90 50 9f e5                                      ldr r5, [pc, #0x90]
003c9564  00 00 51 e3                                      cmp r1, #0
003c9568  0c d0 4d e2                                      sub sp, sp, #0xc
003c956c  00 60 a0 e1                                      mov r6, r0
003c9570  05 50 8f e0                                      add r5, pc, r5
003c9574  02 40 a0 e1                                      mov r4, r2
003c9578  1c 00 00 0a                                      beq #0x3c95f0
003c957c  01 00 a0 e1                                      mov r0, r1
003c9580  20 c2 00 eb                                      bl #0x3f9e08
003c9584  18 70 90 e5                                      ldr r7, [r0, #0x18]
003c9588  01 00 77 e3                                      cmn r7, #1
003c958c  17 00 00 0a                                      beq #0x3c95f0
003c9590  00 00 54 e3                                      cmp r4, #0
003c9594  0d 00 00 1a                                      bne #0x3c95d0
003c9598  04 00 96 e5                                      ldr r0, [r6, #4]
003c959c  0e 28 ff eb                                      bl #0x3935dc
003c95a0  04 30 96 e5                                      ldr r3, [r6, #4]
003c95a4  00 20 a0 e1                                      mov r2, r0
003c95a8  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
003c95ac  07 10 a0 e1                                      mov r1, r7
003c95b0  5b 3f 83 e2                                      add r3, r3, #0x16c
003c95b4  00 00 95 e7                                      ldr r0, [r5, r0]
003c95b8  04 40 8d e5                                      str r4, [sp, #4]
003c95bc  00 40 8d e5                                      str r4, [sp]
003c95c0  b0 30 03 eb                                      bl #0x495888
003c95c4  01 00 a0 e3                                      mov r0, #1
003c95c8  0c d0 8d e2                                      add sp, sp, #0xc
003c95cc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c95d0  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c95d4  07 10 a0 e1                                      mov r1, r7
003c95d8  04 20 96 e5                                      ldr r2, [r6, #4]
003c95dc  03 00 95 e7                                      ldr r0, [r5, r3]
003c95e0  00 30 a0 e3                                      mov r3, #0
003c95e4  46 32 03 eb                                      bl #0x495f04
003c95e8  01 00 a0 e3                                      mov r0, #1
003c95ec  f5 ff ff ea                                      b #0x3c95c8
003c95f0  00 00 a0 e3                                      mov r0, #0
003c95f4  f3 ff ff ea                                      b #0x3c95c8
; mapping-symbol data/literal pool
003c95f8  20 b5 5c 00 08 1b 00 00                          .byte 0x20, 0xb5, 0x5c, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x003c9600, declared_size=220, range_size=220, mode=arm
; class-group: CharAnimator
; alias: _ZNK12CharAnimator15ANIM_IsSequenceEj
; demangled: CharAnimator::ANIM_IsSequence(unsigned int) const
; decoder-mode: arm
003c9600  70 40 2d e9                                      push {r4, r5, r6, lr}
003c9604  48 30 d0 e5                                      ldrb r3, [r0, #0x48]
003c9608  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
003c960c  00 50 a0 e1                                      mov r5, r0
003c9610  00 00 53 e3                                      cmp r3, #0
003c9614  04 40 8f e0                                      add r4, pc, r4
003c9618  08 d0 4d e2                                      sub sp, sp, #8
003c961c  01 60 a0 e1                                      mov r6, r1
003c9620  00 00 a0 13                                      movne r0, #0
003c9624  16 00 00 1a                                      bne #0x3c9684
003c9628  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
003c962c  01 00 52 e1                                      cmp r2, r1
003c9630  07 00 00 2a                                      bhs #0x3c9654
003c9634  88 20 9f e5                                      ldr r2, [pc, #0x88]
003c9638  02 20 94 e7                                      ldr r2, [r4, r2]
003c963c  00 20 92 e5                                      ldr r2, [r2]
003c9640  02 00 52 e3                                      cmp r2, #2
003c9644  00 30 83 05                                      streq r3, [r3]
003c9648  01 00 00 0a                                      beq #0x3c9654
003c964c  01 00 52 e3                                      cmp r2, #1
003c9650  0d 00 00 0a                                      beq #0x3c968c
003c9654  0c 30 a0 e3                                      mov r3, #0xc
003c9658  93 56 25 e0                                      mla r5, r3, r6, r5
003c965c  64 30 9f e5                                      ldr r3, [pc, #0x64]
003c9660  14 10 a0 e3                                      mov r1, #0x14
003c9664  03 20 94 e7                                      ldr r2, [r4, r3]
003c9668  08 30 95 e5                                      ldr r3, [r5, #8]
003c966c  00 20 92 e5                                      ldr r2, [r2]
003c9670  91 23 23 e0                                      mla r3, r1, r3, r2
003c9674  10 00 93 e5                                      ldr r0, [r3, #0x10]
003c9678  01 00 50 e3                                      cmp r0, #1
003c967c  00 00 a0 13                                      movne r0, #0
003c9680  01 00 a0 03                                      moveq r0, #1
003c9684  08 d0 8d e2                                      add sp, sp, #8
003c9688  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c968c  38 00 9f e5                                      ldr r0, [pc, #0x38]
003c9690  38 10 9f e5                                      ldr r1, [pc, #0x38]
003c9694  38 20 9f e5                                      ldr r2, [pc, #0x38]
003c9698  00 00 94 e7                                      ldr r0, [r4, r0]
003c969c  34 30 9f e5                                      ldr r3, [pc, #0x34]
003c96a0  e9 c2 00 e3                                      movw ip, #0x2e9
003c96a4  01 10 8f e0                                      add r1, pc, r1
003c96a8  02 20 8f e0                                      add r2, pc, r2
003c96ac  03 30 8f e0                                      add r3, pc, r3
003c96b0  a8 00 80 e2                                      add r0, r0, #0xa8
003c96b4  00 c0 8d e5                                      str ip, [sp]
003c96b8  51 12 fd eb                                      bl #0x30e004
003c96bc  e4 ff ff ea                                      b #0x3c9654
; mapping-symbol data/literal pool
003c96c0  7c b4 5c 00 c0 39 00 00 7c 3c 00 00 c0 19 00 00  .byte 0x7c, 0xb4, 0x5c, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x7c, 0x3c, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003c96d0  34 4d 4f 00 b8 b8 4f 00 d4 b8 4f 00              .byte 0x34, 0x4d, 0x4f, 0x00, 0xb8, 0xb8, 0x4f, 0x00, 0xd4, 0xb8, 0x4f, 0x00

; FUNCTION 0x003c96dc, declared_size=220, range_size=220, mode=arm
; class-group: CharAnimator
; alias: _ZNK12CharAnimator13ANIM_IsRandomEj
; demangled: CharAnimator::ANIM_IsRandom(unsigned int) const
; decoder-mode: arm
003c96dc  70 40 2d e9                                      push {r4, r5, r6, lr}
003c96e0  48 30 d0 e5                                      ldrb r3, [r0, #0x48]
003c96e4  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
003c96e8  00 50 a0 e1                                      mov r5, r0
003c96ec  00 00 53 e3                                      cmp r3, #0
003c96f0  04 40 8f e0                                      add r4, pc, r4
003c96f4  08 d0 4d e2                                      sub sp, sp, #8
003c96f8  01 60 a0 e1                                      mov r6, r1
003c96fc  00 00 a0 13                                      movne r0, #0
003c9700  16 00 00 1a                                      bne #0x3c9760
003c9704  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
003c9708  01 00 52 e1                                      cmp r2, r1
003c970c  07 00 00 2a                                      bhs #0x3c9730
003c9710  88 20 9f e5                                      ldr r2, [pc, #0x88]
003c9714  02 20 94 e7                                      ldr r2, [r4, r2]
003c9718  00 20 92 e5                                      ldr r2, [r2]
003c971c  02 00 52 e3                                      cmp r2, #2
003c9720  00 30 83 05                                      streq r3, [r3]
003c9724  01 00 00 0a                                      beq #0x3c9730
003c9728  01 00 52 e3                                      cmp r2, #1
003c972c  0d 00 00 0a                                      beq #0x3c9768
003c9730  0c 30 a0 e3                                      mov r3, #0xc
003c9734  93 56 25 e0                                      mla r5, r3, r6, r5
003c9738  64 30 9f e5                                      ldr r3, [pc, #0x64]
003c973c  14 10 a0 e3                                      mov r1, #0x14
003c9740  03 20 94 e7                                      ldr r2, [r4, r3]
003c9744  08 30 95 e5                                      ldr r3, [r5, #8]
003c9748  00 20 92 e5                                      ldr r2, [r2]
003c974c  91 23 23 e0                                      mla r3, r1, r3, r2
003c9750  10 00 93 e5                                      ldr r0, [r3, #0x10]
003c9754  02 00 50 e3                                      cmp r0, #2
003c9758  00 00 a0 13                                      movne r0, #0
003c975c  01 00 a0 03                                      moveq r0, #1
003c9760  08 d0 8d e2                                      add sp, sp, #8
003c9764  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c9768  38 00 9f e5                                      ldr r0, [pc, #0x38]
003c976c  38 10 9f e5                                      ldr r1, [pc, #0x38]
003c9770  38 20 9f e5                                      ldr r2, [pc, #0x38]
003c9774  00 00 94 e7                                      ldr r0, [r4, r0]
003c9778  34 30 9f e5                                      ldr r3, [pc, #0x34]
003c977c  d6 c2 00 e3                                      movw ip, #0x2d6
003c9780  01 10 8f e0                                      add r1, pc, r1
003c9784  02 20 8f e0                                      add r2, pc, r2
003c9788  03 30 8f e0                                      add r3, pc, r3
003c978c  a8 00 80 e2                                      add r0, r0, #0xa8
003c9790  00 c0 8d e5                                      str ip, [sp]
003c9794  1a 12 fd eb                                      bl #0x30e004
003c9798  e4 ff ff ea                                      b #0x3c9730
; mapping-symbol data/literal pool
003c979c  a0 b3 5c 00 c0 39 00 00 7c 3c 00 00 c0 19 00 00  .byte 0xa0, 0xb3, 0x5c, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x7c, 0x3c, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003c97ac  58 4c 4f 00 dc b7 4f 00 f8 b7 4f 00              .byte 0x58, 0x4c, 0x4f, 0x00, 0xdc, 0xb7, 0x4f, 0x00, 0xf8, 0xb7, 0x4f, 0x00

; FUNCTION 0x003c97b8, declared_size=216, range_size=216, mode=arm
; class-group: CharAnimator
; alias: _ZNK12CharAnimator13ANIM_IsUniqueEj
; demangled: CharAnimator::ANIM_IsUnique(unsigned int) const
; decoder-mode: arm
003c97b8  70 40 2d e9                                      push {r4, r5, r6, lr}
003c97bc  48 30 d0 e5                                      ldrb r3, [r0, #0x48]
003c97c0  ac 40 9f e5                                      ldr r4, [pc, #0xac]
003c97c4  00 50 a0 e1                                      mov r5, r0
003c97c8  00 00 53 e3                                      cmp r3, #0
003c97cc  04 40 8f e0                                      add r4, pc, r4
003c97d0  08 d0 4d e2                                      sub sp, sp, #8
003c97d4  01 60 a0 e1                                      mov r6, r1
003c97d8  00 00 a0 13                                      movne r0, #0
003c97dc  15 00 00 1a                                      bne #0x3c9838
003c97e0  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
003c97e4  01 00 52 e1                                      cmp r2, r1
003c97e8  07 00 00 2a                                      bhs #0x3c980c
003c97ec  84 20 9f e5                                      ldr r2, [pc, #0x84]
003c97f0  02 20 94 e7                                      ldr r2, [r4, r2]
003c97f4  00 20 92 e5                                      ldr r2, [r2]
003c97f8  02 00 52 e3                                      cmp r2, #2
003c97fc  00 30 83 05                                      streq r3, [r3]
003c9800  01 00 00 0a                                      beq #0x3c980c
003c9804  01 00 52 e3                                      cmp r2, #1
003c9808  0c 00 00 0a                                      beq #0x3c9840
003c980c  0c 30 a0 e3                                      mov r3, #0xc
003c9810  93 56 25 e0                                      mla r5, r3, r6, r5
003c9814  60 30 9f e5                                      ldr r3, [pc, #0x60]
003c9818  14 10 a0 e3                                      mov r1, #0x14
003c981c  03 20 94 e7                                      ldr r2, [r4, r3]
003c9820  08 30 95 e5                                      ldr r3, [r5, #8]
003c9824  00 20 92 e5                                      ldr r2, [r2]
003c9828  91 23 23 e0                                      mla r3, r1, r3, r2
003c982c  10 00 93 e5                                      ldr r0, [r3, #0x10]
003c9830  01 00 70 e2                                      rsbs r0, r0, #1
003c9834  00 00 a0 33                                      movlo r0, #0
003c9838  08 d0 8d e2                                      add sp, sp, #8
003c983c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c9840  38 00 9f e5                                      ldr r0, [pc, #0x38]
003c9844  38 10 9f e5                                      ldr r1, [pc, #0x38]
003c9848  38 20 9f e5                                      ldr r2, [pc, #0x38]
003c984c  00 00 94 e7                                      ldr r0, [r4, r0]
003c9850  34 30 9f e5                                      ldr r3, [pc, #0x34]
003c9854  c3 c2 00 e3                                      movw ip, #0x2c3
003c9858  01 10 8f e0                                      add r1, pc, r1
003c985c  02 20 8f e0                                      add r2, pc, r2
003c9860  03 30 8f e0                                      add r3, pc, r3
003c9864  a8 00 80 e2                                      add r0, r0, #0xa8
003c9868  00 c0 8d e5                                      str ip, [sp]
003c986c  e4 11 fd eb                                      bl #0x30e004
003c9870  e5 ff ff ea                                      b #0x3c980c
; mapping-symbol data/literal pool
003c9874  c4 b2 5c 00 c0 39 00 00 7c 3c 00 00 c0 19 00 00  .byte 0xc4, 0xb2, 0x5c, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x7c, 0x3c, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003c9884  80 4b 4f 00 04 b7 4f 00 20 b7 4f 00              .byte 0x80, 0x4b, 0x4f, 0x00, 0x04, 0xb7, 0x4f, 0x00, 0x20, 0xb7, 0x4f, 0x00

; FUNCTION 0x003c9890, declared_size=148, range_size=148, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator12SetCharacterEP9Character
; demangled: CharAnimator::SetCharacter(Character*)
; decoder-mode: arm
003c9890  30 40 2d e9                                      push {r4, r5, lr}
003c9894  70 30 9f e5                                      ldr r3, [pc, #0x70]
003c9898  00 40 51 e2                                      subs r4, r1, #0
003c989c  0c d0 4d e2                                      sub sp, sp, #0xc
003c98a0  00 50 a0 e1                                      mov r5, r0
003c98a4  03 30 8f e0                                      add r3, pc, r3
003c98a8  02 00 00 0a                                      beq #0x3c98b8
003c98ac  04 40 85 e5                                      str r4, [r5, #4]
003c98b0  0c d0 8d e2                                      add sp, sp, #0xc
003c98b4  30 80 bd e8                                      pop {r4, r5, pc}
003c98b8  50 20 9f e5                                      ldr r2, [pc, #0x50]
003c98bc  02 20 93 e7                                      ldr r2, [r3, r2]
003c98c0  00 20 92 e5                                      ldr r2, [r2]
003c98c4  02 00 52 e3                                      cmp r2, #2
003c98c8  00 40 84 05                                      streq r4, [r4]
003c98cc  f6 ff ff 0a                                      beq #0x3c98ac
003c98d0  01 00 52 e3                                      cmp r2, #1
003c98d4  f4 ff ff 1a                                      bne #0x3c98ac
003c98d8  34 00 9f e5                                      ldr r0, [pc, #0x34]
003c98dc  34 10 9f e5                                      ldr r1, [pc, #0x34]
003c98e0  34 20 9f e5                                      ldr r2, [pc, #0x34]
003c98e4  00 00 93 e7                                      ldr r0, [r3, r0]
003c98e8  30 30 9f e5                                      ldr r3, [pc, #0x30]
003c98ec  b1 c1 00 e3                                      movw ip, #0x1b1
003c98f0  01 10 8f e0                                      add r1, pc, r1
003c98f4  02 20 8f e0                                      add r2, pc, r2
003c98f8  03 30 8f e0                                      add r3, pc, r3
003c98fc  a8 00 80 e2                                      add r0, r0, #0xa8
003c9900  00 c0 8d e5                                      str ip, [sp]
003c9904  be 11 fd eb                                      bl #0x30e004
003c9908  e7 ff ff ea                                      b #0x3c98ac
; mapping-symbol data/literal pool
003c990c  ec b1 5c 00 c0 39 00 00 c0 19 00 00 e8 4a 4f 00  .byte 0xec, 0xb1, 0x5c, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xe8, 0x4a, 0x4f, 0x00
003c991c  94 87 52 00 88 b6 4f 00                          .byte 0x94, 0x87, 0x52, 0x00, 0x88, 0xb6, 0x4f, 0x00

; FUNCTION 0x003c9924, declared_size=96, range_size=96, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator9ANIM_StopEv
; demangled: CharAnimator::ANIM_Stop()
; decoder-mode: arm
003c9924  10 40 2d e9                                      push {r4, lr}
003c9928  04 30 90 e5                                      ldr r3, [r0, #4]
003c992c  00 20 a0 e3                                      mov r2, #0
003c9930  2c 20 80 e5                                      str r2, [r0, #0x2c]
003c9934  d8 32 93 e5                                      ldr r3, [r3, #0x2d8]
003c9938  00 40 a0 e1                                      mov r4, r0
003c993c  02 00 53 e1                                      cmp r3, r2
003c9940  08 00 00 0a                                      beq #0x3c9968
003c9944  38 30 93 e5                                      ldr r3, [r3, #0x38]
003c9948  01 10 a0 e3                                      mov r1, #1
003c994c  03 00 a0 e1                                      mov r0, r3
003c9950  00 30 93 e5                                      ldr r3, [r3]
003c9954  0f e0 a0 e1                                      mov lr, pc
003c9958  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003c995c  48 20 d4 e5                                      ldrb r2, [r4, #0x48]
003c9960  00 00 52 e3                                      cmp r2, #0
003c9964  00 00 00 0a                                      beq #0x3c996c
003c9968  10 80 bd e8                                      pop {r4, pc}
003c996c  04 00 94 e5                                      ldr r0, [r4, #4]
003c9970  01 30 a0 e3                                      mov r3, #1
003c9974  22 10 a0 e3                                      mov r1, #0x22
003c9978  48 30 c4 e5                                      strb r3, [r4, #0x48]
003c997c  10 40 bd e8                                      pop {r4, lr}
003c9980  f5 6c ff ea                                      b #0x3a4d5c

; FUNCTION 0x003c9984, declared_size=28, range_size=28, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator15__CallbackEventERKN6glitch7collada15STriggeredEventEPv
; demangled: CharAnimator::__CallbackEvent(glitch::collada::STriggeredEvent const&, void*)
; decoder-mode: arm
003c9984  00 20 90 e5                                      ldr r2, [r0]
003c9988  00 30 a0 e1                                      mov r3, r0
003c998c  04 00 91 e5                                      ldr r0, [r1, #4]
003c9990  58 20 81 e5                                      str r2, [r1, #0x58]
003c9994  04 20 93 e5                                      ldr r2, [r3, #4]
003c9998  28 10 a0 e3                                      mov r1, #0x28
003c999c  ee 6c ff ea                                      b #0x3a4d5c

; FUNCTION 0x003c99a0, declared_size=344, range_size=344, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator25ANIM_AddSetToRenderObjectEv
; demangled: CharAnimator::ANIM_AddSetToRenderObject()
; decoder-mode: arm
003c99a0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c99a4  34 41 9f e5                                      ldr r4, [pc, #0x134]
003c99a8  34 61 9f e5                                      ldr r6, [pc, #0x134]
003c99ac  00 50 a0 e1                                      mov r5, r0
003c99b0  04 40 8f e0                                      add r4, pc, r4
003c99b4  06 30 94 e7                                      ldr r3, [r4, r6]
003c99b8  04 00 90 e5                                      ldr r0, [r0, #4]
003c99bc  2c d0 4d e2                                      sub sp, sp, #0x2c
003c99c0  00 30 93 e5                                      ldr r3, [r3]
003c99c4  24 30 8d e5                                      str r3, [sp, #0x24]
003c99c8  d8 72 90 e5                                      ldr r7, [r0, #0x2d8]
003c99cc  00 00 57 e3                                      cmp r7, #0
003c99d0  1a 00 00 0a                                      beq #0x3c9a40
003c99d4  ae 65 ff eb                                      bl #0x3a3094
003c99d8  00 00 50 e3                                      cmp r0, #0
003c99dc  1e 00 00 0a                                      beq #0x3c9a5c
003c99e0  00 10 a0 e3                                      mov r1, #0
003c99e4  14 00 a0 e3                                      mov r0, #0x14
003c99e8  08 a0 97 e5                                      ldr sl, [r7, #8]
003c99ec  df 1a fd eb                                      bl #0x310570
003c99f0  0a 10 a0 e1                                      mov r1, sl
003c99f4  00 80 a0 e1                                      mov r8, r0
003c99f8  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
003c99fc  ec ad 02 eb                                      bl #0x4751b4
003c9a00  07 00 a0 e1                                      mov r0, r7
003c9a04  08 10 a0 e1                                      mov r1, r8
003c9a08  1d 9c 02 eb                                      bl #0x470a84
003c9a0c  00 30 a0 e3                                      mov r3, #0
003c9a10  54 30 c5 e5                                      strb r3, [r5, #0x54]
003c9a14  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
003c9a18  38 c0 97 e5                                      ldr ip, [r7, #0x38]
003c9a1c  05 20 a0 e1                                      mov r2, r5
003c9a20  03 10 94 e7                                      ldr r1, [r4, r3]
003c9a24  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
003c9a28  0c 00 a0 e1                                      mov r0, ip
003c9a2c  00 c0 9c e5                                      ldr ip, [ip]
003c9a30  03 30 94 e7                                      ldr r3, [r4, r3]
003c9a34  00 50 8d e5                                      str r5, [sp]
003c9a38  0f e0 a0 e1                                      mov lr, pc
003c9a3c  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
003c9a40  06 30 94 e7                                      ldr r3, [r4, r6]
003c9a44  24 20 9d e5                                      ldr r2, [sp, #0x24]
003c9a48  00 30 93 e5                                      ldr r3, [r3]
003c9a4c  03 00 52 e1                                      cmp r2, r3
003c9a50  21 00 00 1a                                      bne #0x3c9adc
003c9a54  2c d0 8d e2                                      add sp, sp, #0x2c
003c9a58  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c9a5c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003c9a60  0c 80 8d e2                                      add r8, sp, #0xc
003c9a64  03 a0 94 e7                                      ldr sl, [r4, r3]
003c9a68  0a 00 a0 e1                                      mov r0, sl
003c9a6c  85 b7 fd eb                                      bl #0x337888
003c9a70  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
003c9a74  08 20 8d e2                                      add r2, sp, #8
003c9a78  08 00 a0 e1                                      mov r0, r8
003c9a7c  01 10 8f e0                                      add r1, pc, r1
003c9a80  99 29 fd eb                                      bl #0x3140ec
003c9a84  0a 00 a0 e1                                      mov r0, sl
003c9a88  08 10 a0 e1                                      mov r1, r8
003c9a8c  fd b7 fd eb                                      bl #0x337a88
003c9a90  00 a0 a0 e1                                      mov sl, r0
003c9a94  08 00 a0 e1                                      mov r0, r8
003c9a98  c3 27 fd eb                                      bl #0x3139ac
003c9a9c  00 00 5a e3                                      cmp sl, #0
003c9aa0  ce ff ff 1a                                      bne #0x3c99e0
003c9aa4  0a 10 a0 e1                                      mov r1, sl
003c9aa8  18 00 a0 e3                                      mov r0, #0x18
003c9aac  08 a0 97 e5                                      ldr sl, [r7, #8]
003c9ab0  ae 1a fd eb                                      bl #0x310570
003c9ab4  0a 10 a0 e1                                      mov r1, sl
003c9ab8  00 80 a0 e1                                      mov r8, r0
003c9abc  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
003c9ac0  c5 b4 02 eb                                      bl #0x476ddc
003c9ac4  07 00 a0 e1                                      mov r0, r7
003c9ac8  08 10 a0 e1                                      mov r1, r8
003c9acc  ec 9b 02 eb                                      bl #0x470a84
003c9ad0  01 30 a0 e3                                      mov r3, #1
003c9ad4  54 30 c5 e5                                      strb r3, [r5, #0x54]
003c9ad8  cd ff ff ea                                      b #0x3c9a14
003c9adc  0b 12 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c9ae0  e0 b0 5c 00 ac 40 00 00 f0 10 00 00 60 27 00 00  .byte 0xe0, 0xb0, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0x10, 0x00, 0x00, 0x60, 0x27, 0x00, 0x00
003c9af0  84 08 00 00 64 b5 4f 00                          .byte 0x84, 0x08, 0x00, 0x00, 0x64, 0xb5, 0x4f, 0x00

; FUNCTION 0x003c9af8, declared_size=28, range_size=28, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimatorD0Ev
; demangled: CharAnimator::~CharAnimator()
; decoder-mode: arm
003c9af8  10 40 2d e9                                      push {r4, lr}
003c9afc  00 40 a0 e1                                      mov r4, r0
003c9b00  78 fd ff eb                                      bl #0x3c90e8
003c9b04  04 00 a0 e1                                      mov r0, r4
003c9b08  4c 1a fd eb                                      bl #0x310440
003c9b0c  04 00 a0 e1                                      mov r0, r4
003c9b10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c9b14, declared_size=104, range_size=104, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator21ANIM_AddAnimDictToSetEi
; demangled: CharAnimator::ANIM_AddAnimDictToSet(int)
; decoder-mode: arm
003c9b14  70 40 2d e9                                      push {r4, r5, r6, lr}
003c9b18  38 30 d0 e5                                      ldrb r3, [r0, #0x38]
003c9b1c  50 40 9f e5                                      ldr r4, [pc, #0x50]
003c9b20  00 50 a0 e1                                      mov r5, r0
003c9b24  00 00 53 e3                                      cmp r3, #0
003c9b28  01 60 a0 e1                                      mov r6, r1
003c9b2c  04 40 8f e0                                      add r4, pc, r4
003c9b30  0a 00 00 1a                                      bne #0x3c9b60
003c9b34  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
003c9b38  01 00 73 e3                                      cmn r3, #1
003c9b3c  08 00 00 0a                                      beq #0x3c9b64
003c9b40  00 00 56 e3                                      cmp r6, #0
003c9b44  05 00 00 ba                                      blt #0x3c9b60
003c9b48  28 30 9f e5                                      ldr r3, [pc, #0x28]
003c9b4c  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
003c9b50  06 20 a0 e1                                      mov r2, r6
003c9b54  03 00 94 e7                                      ldr r0, [r4, r3]
003c9b58  70 40 bd e8                                      pop {r4, r5, r6, lr}
003c9b5c  76 b2 02 ea                                      b #0x47653c
003c9b60  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c9b64  04 00 90 e5                                      ldr r0, [r0, #4]
003c9b68  51 6e ff eb                                      bl #0x3a54b4
003c9b6c  3c 00 85 e5                                      str r0, [r5, #0x3c]
003c9b70  f2 ff ff ea                                      b #0x3c9b40
; mapping-symbol data/literal pool
003c9b74  64 af 5c 00 38 48 00 00                          .byte 0x64, 0xaf, 0x5c, 0x00, 0x38, 0x48, 0x00, 0x00

; FUNCTION 0x003c9b7c, declared_size=256, range_size=256, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator15_CompileAnimSetEv
; demangled: CharAnimator::_CompileAnimSet()
; decoder-mode: arm
003c9b7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c9b80  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
003c9b84  e0 60 9f e5                                      ldr r6, [pc, #0xe0]
003c9b88  38 20 d0 e5                                      ldrb r2, [r0, #0x38]
003c9b8c  04 40 8f e0                                      add r4, pc, r4
003c9b90  06 30 94 e7                                      ldr r3, [r4, r6]
003c9b94  41 de 4d e2                                      sub sp, sp, #0x410
003c9b98  00 00 52 e3                                      cmp r2, #0
003c9b9c  00 30 93 e5                                      ldr r3, [r3]
003c9ba0  00 50 a0 e1                                      mov r5, r0
003c9ba4  0c 34 8d e5                                      str r3, [sp, #0x40c]
003c9ba8  22 00 00 1a                                      bne #0x3c9c38
003c9bac  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
003c9bb0  01 00 73 e3                                      cmn r3, #1
003c9bb4  26 00 00 0a                                      beq #0x3c9c54
003c9bb8  01 30 a0 e3                                      mov r3, #1
003c9bbc  38 30 c5 e5                                      strb r3, [r5, #0x38]
003c9bc0  05 00 a0 e1                                      mov r0, r5
003c9bc4  75 ff ff eb                                      bl #0x3c99a0
003c9bc8  04 00 95 e5                                      ldr r0, [r5, #4]
003c9bcc  95 65 ff eb                                      bl #0x3a3228
003c9bd0  98 30 9f e5                                      ldr r3, [pc, #0x98]
003c9bd4  00 80 a0 e1                                      mov r8, r0
003c9bd8  04 00 95 e5                                      ldr r0, [r5, #4]
003c9bdc  03 30 94 e7                                      ldr r3, [r4, r3]
003c9be0  00 70 93 e5                                      ldr r7, [r3]
003c9be4  8f 65 ff eb                                      bl #0x3a3228
003c9be8  04 20 95 e5                                      ldr r2, [r5, #4]
003c9bec  c8 13 01 e3                                      movw r1, #0x13c8
003c9bf0  00 31 97 e7                                      ldr r3, [r7, r0, lsl #2]
003c9bf4  f1 10 92 e1                                      ldrsh r1, [r2, r1]
003c9bf8  10 70 8d e2                                      add r7, sp, #0x10
003c9bfc  04 70 47 e2                                      sub r7, r7, #4
003c9c00  00 10 8d e5                                      str r1, [sp]
003c9c04  c4 13 01 e3                                      movw r1, #0x13c4
003c9c08  01 c0 92 e7                                      ldr ip, [r2, r1]
003c9c0c  60 10 9f e5                                      ldr r1, [pc, #0x60]
003c9c10  08 20 a0 e1                                      mov r2, r8
003c9c14  07 00 a0 e1                                      mov r0, r7
003c9c18  01 10 8f e0                                      add r1, pc, r1
003c9c1c  04 c0 8d e5                                      str ip, [sp, #4]
003c9c20  af 13 fd eb                                      bl #0x30eae4
003c9c24  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003c9c28  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
003c9c2c  07 20 a0 e1                                      mov r2, r7
003c9c30  03 00 94 e7                                      ldr r0, [r4, r3]
003c9c34  09 ae 02 eb                                      bl #0x475460
003c9c38  06 30 94 e7                                      ldr r3, [r4, r6]
003c9c3c  0c 24 9d e5                                      ldr r2, [sp, #0x40c]
003c9c40  00 30 93 e5                                      ldr r3, [r3]
003c9c44  03 00 52 e1                                      cmp r2, r3
003c9c48  05 00 00 1a                                      bne #0x3c9c64
003c9c4c  41 de 8d e2                                      add sp, sp, #0x410
003c9c50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c9c54  04 00 90 e5                                      ldr r0, [r0, #4]
003c9c58  15 6e ff eb                                      bl #0x3a54b4
003c9c5c  3c 00 85 e5                                      str r0, [r5, #0x3c]
003c9c60  d4 ff ff ea                                      b #0x3c9bb8
003c9c64  a9 11 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c9c68  04 af 5c 00 ac 40 00 00 08 0d 00 00 e8 b3 4f 00  .byte 0x04, 0xaf, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x08, 0x0d, 0x00, 0x00, 0xe8, 0xb3, 0x4f, 0x00
003c9c78  38 48 00 00                                      .byte 0x38, 0x48, 0x00, 0x00

; FUNCTION 0x003c9c7c, declared_size=260, range_size=260, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator21_AddTemplateAnimTableEiij
; demangled: CharAnimator::_AddTemplateAnimTable(int, int, unsigned int)
; decoder-mode: arm
003c9c7c  70 40 2d e9                                      push {r4, r5, r6, lr}
003c9c80  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
003c9c84  00 00 52 e3                                      cmp r2, #0
003c9c88  08 d0 4d e2                                      sub sp, sp, #8
003c9c8c  01 60 a0 e1                                      mov r6, r1
003c9c90  04 40 8f e0                                      add r4, pc, r4
003c9c94  1a 00 00 ba                                      blt #0x3c9d04
003c9c98  02 20 83 e0                                      add r2, r3, r2
003c9c9c  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003c9ca0  03 30 94 e7                                      ldr r3, [r4, r3]
003c9ca4  00 30 93 e5                                      ldr r3, [r3]
003c9ca8  03 00 52 e1                                      cmp r2, r3
003c9cac  14 00 00 aa                                      bge #0x3c9d04
003c9cb0  ac 30 9f e5                                      ldr r3, [pc, #0xac]
003c9cb4  14 50 a0 e3                                      mov r5, #0x14
003c9cb8  03 30 94 e7                                      ldr r3, [r4, r3]
003c9cbc  00 30 93 e5                                      ldr r3, [r3]
003c9cc0  95 32 25 e0                                      mla r5, r5, r2, r3
003c9cc4  08 30 95 e5                                      ldr r3, [r5, #8]
003c9cc8  01 00 53 e3                                      cmp r3, #1
003c9ccc  08 00 00 0a                                      beq #0x3c9cf4
003c9cd0  90 30 9f e5                                      ldr r3, [pc, #0x90]
003c9cd4  03 30 94 e7                                      ldr r3, [r4, r3]
003c9cd8  00 30 93 e5                                      ldr r3, [r3]
003c9cdc  02 00 53 e3                                      cmp r3, #2
003c9ce0  00 30 a0 03                                      moveq r3, #0
003c9ce4  00 30 83 05                                      streq r3, [r3]
003c9ce8  01 00 00 0a                                      beq #0x3c9cf4
003c9cec  01 00 53 e3                                      cmp r3, #1
003c9cf0  0c 00 00 0a                                      beq #0x3c9d28
003c9cf4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003c9cf8  28 20 93 e5                                      ldr r2, [r3, #0x28]
003c9cfc  00 00 52 e3                                      cmp r2, #0
003c9d00  01 00 00 0a                                      beq #0x3c9d0c
003c9d04  08 d0 8d e2                                      add sp, sp, #8
003c9d08  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c9d0c  08 20 93 e5                                      ldr r2, [r3, #8]
003c9d10  54 30 9f e5                                      ldr r3, [pc, #0x54]
003c9d14  06 10 a0 e1                                      mov r1, r6
003c9d18  03 00 94 e7                                      ldr r0, [r4, r3]
003c9d1c  08 d0 8d e2                                      add sp, sp, #8
003c9d20  70 40 bd e8                                      pop {r4, r5, r6, lr}
003c9d24  9b b1 02 ea                                      b #0x476398
003c9d28  40 00 9f e5                                      ldr r0, [pc, #0x40]
003c9d2c  40 10 9f e5                                      ldr r1, [pc, #0x40]
003c9d30  40 20 9f e5                                      ldr r2, [pc, #0x40]
003c9d34  00 00 94 e7                                      ldr r0, [r4, r0]
003c9d38  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003c9d3c  c8 c0 a0 e3                                      mov ip, #0xc8
003c9d40  01 10 8f e0                                      add r1, pc, r1
003c9d44  02 20 8f e0                                      add r2, pc, r2
003c9d48  03 30 8f e0                                      add r3, pc, r3
003c9d4c  a8 00 80 e2                                      add r0, r0, #0xa8
003c9d50  00 c0 8d e5                                      str ip, [sp]
003c9d54  aa 10 fd eb                                      bl #0x30e004
003c9d58  e5 ff ff ea                                      b #0x3c9cf4
; mapping-symbol data/literal pool
003c9d5c  00 ae 5c 00 48 2a 00 00 7c 3c 00 00 c0 39 00 00  .byte 0x00, 0xae, 0x5c, 0x00, 0x48, 0x2a, 0x00, 0x00, 0x7c, 0x3c, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003c9d6c  38 48 00 00 c0 19 00 00 98 46 4f 00 f4 b2 4f 00  .byte 0x38, 0x48, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x98, 0x46, 0x4f, 0x00, 0xf4, 0xb2, 0x4f, 0x00
003c9d7c  38 b2 4f 00                                      .byte 0x38, 0xb2, 0x4f, 0x00

; FUNCTION 0x003c9d80, declared_size=460, range_size=460, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator13_AddAnimTableEiijjj
; demangled: CharAnimator::_AddAnimTable(int, int, unsigned int, unsigned int, unsigned int)
; decoder-mode: arm
003c9d80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003c9d84  9c 41 9f e5                                      ldr r4, [pc, #0x19c]
003c9d88  9c a1 9f e5                                      ldr sl, [pc, #0x19c]
003c9d8c  01 90 a0 e1                                      mov sb, r1
003c9d90  04 40 8f e0                                      add r4, pc, r4
003c9d94  0a c0 94 e7                                      ldr ip, [r4, sl]
003c9d98  3c d0 4d e2                                      sub sp, sp, #0x3c
003c9d9c  00 00 52 e3                                      cmp r2, #0
003c9da0  00 10 9c e5                                      ldr r1, [ip]
003c9da4  00 b0 a0 e1                                      mov fp, r0
003c9da8  60 00 9d e5                                      ldr r0, [sp, #0x60]
003c9dac  34 10 8d e5                                      str r1, [sp, #0x34]
003c9db0  0c 00 00 ba                                      blt #0x3c9de8
003c9db4  74 11 9f e5                                      ldr r1, [pc, #0x174]
003c9db8  02 20 83 e0                                      add r2, r3, r2
003c9dbc  01 10 94 e7                                      ldr r1, [r4, r1]
003c9dc0  00 10 91 e5                                      ldr r1, [r1]
003c9dc4  01 00 52 e1                                      cmp r2, r1
003c9dc8  06 00 00 aa                                      bge #0x3c9de8
003c9dcc  64 80 9d e5                                      ldr r8, [sp, #0x64]
003c9dd0  00 80 08 e0                                      and r8, r8, r0
003c9dd4  00 00 58 e1                                      cmp r8, r0
003c9dd8  00 00 53 13                                      cmpne r3, #0
003c9ddc  00 80 a0 03                                      moveq r8, #0
003c9de0  01 80 a0 13                                      movne r8, #1
003c9de4  06 00 00 0a                                      beq #0x3c9e04
003c9de8  0a 30 94 e7                                      ldr r3, [r4, sl]
003c9dec  34 20 9d e5                                      ldr r2, [sp, #0x34]
003c9df0  00 30 93 e5                                      ldr r3, [r3]
003c9df4  03 00 52 e1                                      cmp r2, r3
003c9df8  49 00 00 1a                                      bne #0x3c9f24
003c9dfc  3c d0 8d e2                                      add sp, sp, #0x3c
003c9e00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003c9e04  28 31 9f e5                                      ldr r3, [pc, #0x128]
003c9e08  28 11 9f e5                                      ldr r1, [pc, #0x128]
003c9e0c  14 70 a0 e3                                      mov r7, #0x14
003c9e10  03 30 94 e7                                      ldr r3, [r4, r3]
003c9e14  01 60 94 e7                                      ldr r6, [r4, r1]
003c9e18  1c 50 8d e2                                      add r5, sp, #0x1c
003c9e1c  00 30 93 e5                                      ldr r3, [r3]
003c9e20  06 00 a0 e1                                      mov r0, r6
003c9e24  97 32 27 e0                                      mla r7, r7, r2, r3
003c9e28  96 b6 fd eb                                      bl #0x337888
003c9e2c  08 11 9f e5                                      ldr r1, [pc, #0x108]
003c9e30  18 20 8d e2                                      add r2, sp, #0x18
003c9e34  05 00 a0 e1                                      mov r0, r5
003c9e38  01 10 8f e0                                      add r1, pc, r1
003c9e3c  aa 28 fd eb                                      bl #0x3140ec
003c9e40  05 10 a0 e1                                      mov r1, r5
003c9e44  06 00 a0 e1                                      mov r0, r6
003c9e48  0e b7 fd eb                                      bl #0x337a88
003c9e4c  05 00 a0 e1                                      mov r0, r5
003c9e50  d5 26 fd eb                                      bl #0x3139ac
003c9e54  08 30 97 e5                                      ldr r3, [r7, #8]
003c9e58  00 00 53 e3                                      cmp r3, #0
003c9e5c  e1 ff ff 0a                                      beq #0x3c9de8
003c9e60  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
003c9e64  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
003c9e68  08 50 a0 e1                                      mov r5, r8
003c9e6c  0c 20 8d e5                                      str r2, [sp, #0xc]
003c9e70  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
003c9e74  10 30 8d e5                                      str r3, [sp, #0x10]
003c9e78  08 60 a0 e1                                      mov r6, r8
003c9e7c  14 20 8d e5                                      str r2, [sp, #0x14]
003c9e80  1a 00 00 ea                                      b #0x3c9ef0
003c9e84  08 20 93 e5                                      ldr r2, [r3, #8]
003c9e88  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003c9e8c  09 10 a0 e1                                      mov r1, sb
003c9e90  03 00 94 e7                                      ldr r0, [r4, r3]
003c9e94  a8 b1 02 eb                                      bl #0x47653c
003c9e98  10 20 9d e5                                      ldr r2, [sp, #0x10]
003c9e9c  02 30 94 e7                                      ldr r3, [r4, r2]
003c9ea0  00 00 93 e5                                      ldr r0, [r3]
003c9ea4  00 00 50 e3                                      cmp r0, #0
003c9ea8  03 00 00 0a                                      beq #0x3c9ebc
003c9eac  0c 30 97 e5                                      ldr r3, [r7, #0xc]
003c9eb0  05 30 83 e0                                      add r3, r3, r5
003c9eb4  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
003c9eb8  cf 7e fe eb                                      bl #0x3699fc
003c9ebc  0c 30 97 e5                                      ldr r3, [r7, #0xc]
003c9ec0  05 30 83 e0                                      add r3, r3, r5
003c9ec4  18 10 93 e5                                      ldr r1, [r3, #0x18]
003c9ec8  00 00 51 e3                                      cmp r1, #0
003c9ecc  02 00 00 ba                                      blt #0x3c9edc
003c9ed0  14 30 9d e5                                      ldr r3, [sp, #0x14]
003c9ed4  03 00 94 e7                                      ldr r0, [r4, r3]
003c9ed8  42 32 03 eb                                      bl #0x4967e8
003c9edc  08 30 97 e5                                      ldr r3, [r7, #8]
003c9ee0  01 60 86 e2                                      add r6, r6, #1
003c9ee4  38 50 85 e2                                      add r5, r5, #0x38
003c9ee8  06 00 53 e1                                      cmp r3, r6
003c9eec  bd ff ff 9a                                      bls #0x3c9de8
003c9ef0  0c 30 97 e5                                      ldr r3, [r7, #0xc]
003c9ef4  05 30 83 e0                                      add r3, r3, r5
003c9ef8  28 20 93 e5                                      ldr r2, [r3, #0x28]
003c9efc  00 00 52 e3                                      cmp r2, #0
003c9f00  df ff ff 0a                                      beq #0x3c9e84
003c9f04  08 20 93 e5                                      ldr r2, [r3, #8]
003c9f08  0b 00 a0 e1                                      mov r0, fp
003c9f0c  09 10 a0 e1                                      mov r1, sb
003c9f10  08 30 a0 e1                                      mov r3, r8
003c9f14  00 80 8d e5                                      str r8, [sp]
003c9f18  04 80 8d e5                                      str r8, [sp, #4]
003c9f1c  97 ff ff eb                                      bl #0x3c9d80
003c9f20  ed ff ff ea                                      b #0x3c9edc
003c9f24  f9 10 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c9f28  00 ad 5c 00 ac 40 00 00 48 2a 00 00 7c 3c 00 00  .byte 0x00, 0xad, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x2a, 0x00, 0x00, 0x7c, 0x3c, 0x00, 0x00
003c9f38  84 08 00 00 d8 9f 4f 00 38 48 00 00 a4 0d 00 00  .byte 0x84, 0x08, 0x00, 0x00, 0xd8, 0x9f, 0x4f, 0x00, 0x38, 0x48, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00
003c9f48  08 1b 00 00                                      .byte 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x003c9f4c, declared_size=1504, range_size=1504, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator15SetAnimationSetEv
; demangled: CharAnimator::SetAnimationSet()
; decoder-mode: arm
003c9f4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003c9f50  00 40 a0 e1                                      mov r4, r0
003c9f54  14 d0 4d e2                                      sub sp, sp, #0x14
003c9f58  04 00 90 e5                                      ldr r0, [r0, #4]
003c9f5c  54 6d ff eb                                      bl #0x3a54b4
003c9f60  a8 55 9f e5                                      ldr r5, [pc, #0x5a8]
003c9f64  a8 35 9f e5                                      ldr r3, [pc, #0x5a8]
003c9f68  00 10 a0 e1                                      mov r1, r0
003c9f6c  05 50 8f e0                                      add r5, pc, r5
003c9f70  3c 00 84 e5                                      str r0, [r4, #0x3c]
003c9f74  03 00 95 e7                                      ldr r0, [r5, r3]
003c9f78  21 ad 02 eb                                      bl #0x475404
003c9f7c  00 00 50 e3                                      cmp r0, #0
003c9f80  01 00 00 0a                                      beq #0x3c9f8c
003c9f84  14 d0 8d e2                                      add sp, sp, #0x14
003c9f88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003c9f8c  04 30 94 e5                                      ldr r3, [r4, #4]
003c9f90  03 00 a0 e1                                      mov r0, r3
003c9f94  00 30 93 e5                                      ldr r3, [r3]
003c9f98  0f e0 a0 e1                                      mov lr, pc
003c9f9c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c9fa0  00 00 50 e3                                      cmp r0, #0
003c9fa4  4b 01 00 1a                                      bne #0x3ca4d8
003c9fa8  68 65 9f e5                                      ldr r6, [pc, #0x568]
003c9fac  01 30 a0 e3                                      mov r3, #1
003c9fb0  0c 30 8d e5                                      str r3, [sp, #0xc]
003c9fb4  06 30 95 e7                                      ldr r3, [r5, r6]
003c9fb8  5c 15 9f e5                                      ldr r1, [pc, #0x55c]
003c9fbc  5c 25 9f e5                                      ldr r2, [pc, #0x55c]
003c9fc0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c9fc4  01 10 8f e0                                      add r1, pc, r1
003c9fc8  02 20 8f e0                                      add r2, pc, r2
003c9fcc  02 eb 03 eb                                      bl #0x4c4bdc
003c9fd0  00 70 a0 e1                                      mov r7, r0
003c9fd4  04 00 94 e5                                      ldr r0, [r4, #4]
003c9fd8  a1 64 ff eb                                      bl #0x3a3264
003c9fdc  00 50 a0 e1                                      mov r5, r0
003c9fe0  04 00 94 e5                                      ldr r0, [r4, #4]
003c9fe4  84 c9 ff eb                                      bl #0x3bc5fc
003c9fe8  90 20 95 e5                                      ldr r2, [r5, #0x90]
003c9fec  00 a0 a0 e1                                      mov sl, r0
003c9ff0  01 00 72 e3                                      cmn r2, #1
003c9ff4  41 01 00 0a                                      beq #0x3ca500
003c9ff8  00 60 a0 e3                                      mov r6, #0
003c9ffc  04 00 a0 e1                                      mov r0, r4
003ca000  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca004  00 30 a0 e3                                      mov r3, #0
003ca008  1b ff ff eb                                      bl #0x3c9c7c
003ca00c  58 20 95 e5                                      ldr r2, [r5, #0x58]
003ca010  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca014  04 00 a0 e1                                      mov r0, r4
003ca018  06 30 a0 e1                                      mov r3, r6
003ca01c  00 60 8d e5                                      str r6, [sp]
003ca020  04 60 8d e5                                      str r6, [sp, #4]
003ca024  55 ff ff eb                                      bl #0x3c9d80
003ca028  64 20 95 e5                                      ldr r2, [r5, #0x64]
003ca02c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca030  04 00 a0 e1                                      mov r0, r4
003ca034  06 30 a0 e1                                      mov r3, r6
003ca038  00 60 8d e5                                      str r6, [sp]
003ca03c  04 60 8d e5                                      str r6, [sp, #4]
003ca040  4e ff ff eb                                      bl #0x3c9d80
003ca044  80 20 95 e5                                      ldr r2, [r5, #0x80]
003ca048  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca04c  04 00 a0 e1                                      mov r0, r4
003ca050  06 30 a0 e1                                      mov r3, r6
003ca054  00 60 8d e5                                      str r6, [sp]
003ca058  04 60 8d e5                                      str r6, [sp, #4]
003ca05c  47 ff ff eb                                      bl #0x3c9d80
003ca060  5c 20 95 e5                                      ldr r2, [r5, #0x5c]
003ca064  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca068  04 00 a0 e1                                      mov r0, r4
003ca06c  06 30 a0 e1                                      mov r3, r6
003ca070  00 60 8d e5                                      str r6, [sp]
003ca074  04 60 8d e5                                      str r6, [sp, #4]
003ca078  40 ff ff eb                                      bl #0x3c9d80
003ca07c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
003ca080  06 00 5c e1                                      cmp ip, r6
003ca084  be ff ff 0a                                      beq #0x3c9f84
003ca088  02 95 a0 e3                                      mov sb, #0x800000
003ca08c  28 20 95 e5                                      ldr r2, [r5, #0x28]
003ca090  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca094  02 c0 a0 e3                                      mov ip, #2
003ca098  04 00 a0 e1                                      mov r0, r4
003ca09c  06 30 a0 e1                                      mov r3, r6
003ca0a0  00 c0 8d e5                                      str ip, [sp]
003ca0a4  04 70 8d e5                                      str r7, [sp, #4]
003ca0a8  34 ff ff eb                                      bl #0x3c9d80
003ca0ac  94 20 95 e5                                      ldr r2, [r5, #0x94]
003ca0b0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca0b4  10 c0 a0 e3                                      mov ip, #0x10
003ca0b8  04 00 a0 e1                                      mov r0, r4
003ca0bc  06 30 a0 e1                                      mov r3, r6
003ca0c0  00 c0 8d e5                                      str ip, [sp]
003ca0c4  04 70 8d e5                                      str r7, [sp, #4]
003ca0c8  2c ff ff eb                                      bl #0x3c9d80
003ca0cc  70 20 95 e5                                      ldr r2, [r5, #0x70]
003ca0d0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca0d4  20 c0 a0 e3                                      mov ip, #0x20
003ca0d8  04 00 a0 e1                                      mov r0, r4
003ca0dc  06 30 a0 e1                                      mov r3, r6
003ca0e0  00 c0 8d e5                                      str ip, [sp]
003ca0e4  04 70 8d e5                                      str r7, [sp, #4]
003ca0e8  24 ff ff eb                                      bl #0x3c9d80
003ca0ec  04 20 95 e5                                      ldr r2, [r5, #4]
003ca0f0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca0f4  40 c0 a0 e3                                      mov ip, #0x40
003ca0f8  04 00 a0 e1                                      mov r0, r4
003ca0fc  06 30 a0 e1                                      mov r3, r6
003ca100  00 c0 8d e5                                      str ip, [sp]
003ca104  04 70 8d e5                                      str r7, [sp, #4]
003ca108  1c ff ff eb                                      bl #0x3c9d80
003ca10c  08 20 95 e5                                      ldr r2, [r5, #8]
003ca110  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca114  80 c0 a0 e3                                      mov ip, #0x80
003ca118  04 00 a0 e1                                      mov r0, r4
003ca11c  06 30 a0 e1                                      mov r3, r6
003ca120  00 c0 8d e5                                      str ip, [sp]
003ca124  04 70 8d e5                                      str r7, [sp, #4]
003ca128  14 ff ff eb                                      bl #0x3c9d80
003ca12c  7c 20 95 e5                                      ldr r2, [r5, #0x7c]
003ca130  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca134  01 cc a0 e3                                      mov ip, #0x100
003ca138  04 00 a0 e1                                      mov r0, r4
003ca13c  06 30 a0 e1                                      mov r3, r6
003ca140  00 c0 8d e5                                      str ip, [sp]
003ca144  04 70 8d e5                                      str r7, [sp, #4]
003ca148  0c ff ff eb                                      bl #0x3c9d80
003ca14c  8c 20 95 e5                                      ldr r2, [r5, #0x8c]
003ca150  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca154  02 cc a0 e3                                      mov ip, #0x200
003ca158  04 00 a0 e1                                      mov r0, r4
003ca15c  06 30 a0 e1                                      mov r3, r6
003ca160  00 c0 8d e5                                      str ip, [sp]
003ca164  04 70 8d e5                                      str r7, [sp, #4]
003ca168  04 ff ff eb                                      bl #0x3c9d80
003ca16c  48 20 95 e5                                      ldr r2, [r5, #0x48]
003ca170  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca174  01 cb a0 e3                                      mov ip, #0x400
003ca178  04 00 a0 e1                                      mov r0, r4
003ca17c  06 30 a0 e1                                      mov r3, r6
003ca180  00 c0 8d e5                                      str ip, [sp]
003ca184  04 70 8d e5                                      str r7, [sp, #4]
003ca188  fc fe ff eb                                      bl #0x3c9d80
003ca18c  24 20 95 e5                                      ldr r2, [r5, #0x24]
003ca190  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca194  02 cb a0 e3                                      mov ip, #0x800
003ca198  04 00 a0 e1                                      mov r0, r4
003ca19c  06 30 a0 e1                                      mov r3, r6
003ca1a0  00 c0 8d e5                                      str ip, [sp]
003ca1a4  04 70 8d e5                                      str r7, [sp, #4]
003ca1a8  f4 fe ff eb                                      bl #0x3c9d80
003ca1ac  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
003ca1b0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca1b4  01 ca a0 e3                                      mov ip, #0x1000
003ca1b8  04 00 a0 e1                                      mov r0, r4
003ca1bc  06 30 a0 e1                                      mov r3, r6
003ca1c0  00 c0 8d e5                                      str ip, [sp]
003ca1c4  04 70 8d e5                                      str r7, [sp, #4]
003ca1c8  ec fe ff eb                                      bl #0x3c9d80
003ca1cc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
003ca1d0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca1d4  02 ca a0 e3                                      mov ip, #0x2000
003ca1d8  04 00 a0 e1                                      mov r0, r4
003ca1dc  06 30 a0 e1                                      mov r3, r6
003ca1e0  00 c0 8d e5                                      str ip, [sp]
003ca1e4  04 70 8d e5                                      str r7, [sp, #4]
003ca1e8  e4 fe ff eb                                      bl #0x3c9d80
003ca1ec  20 20 95 e5                                      ldr r2, [r5, #0x20]
003ca1f0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca1f4  01 c9 a0 e3                                      mov ip, #0x4000
003ca1f8  04 00 a0 e1                                      mov r0, r4
003ca1fc  06 30 a0 e1                                      mov r3, r6
003ca200  00 c0 8d e5                                      str ip, [sp]
003ca204  04 70 8d e5                                      str r7, [sp, #4]
003ca208  dc fe ff eb                                      bl #0x3c9d80
003ca20c  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
003ca210  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca214  02 c9 a0 e3                                      mov ip, #0x8000
003ca218  04 00 a0 e1                                      mov r0, r4
003ca21c  06 30 a0 e1                                      mov r3, r6
003ca220  00 c0 8d e5                                      str ip, [sp]
003ca224  04 70 8d e5                                      str r7, [sp, #4]
003ca228  d4 fe ff eb                                      bl #0x3c9d80
003ca22c  14 20 95 e5                                      ldr r2, [r5, #0x14]
003ca230  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca234  01 c8 a0 e3                                      mov ip, #0x10000
003ca238  04 00 a0 e1                                      mov r0, r4
003ca23c  06 30 a0 e1                                      mov r3, r6
003ca240  00 c0 8d e5                                      str ip, [sp]
003ca244  04 70 8d e5                                      str r7, [sp, #4]
003ca248  cc fe ff eb                                      bl #0x3c9d80
003ca24c  10 20 95 e5                                      ldr r2, [r5, #0x10]
003ca250  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca254  02 c8 a0 e3                                      mov ip, #0x20000
003ca258  04 00 a0 e1                                      mov r0, r4
003ca25c  06 30 a0 e1                                      mov r3, r6
003ca260  00 c0 8d e5                                      str ip, [sp]
003ca264  04 70 8d e5                                      str r7, [sp, #4]
003ca268  c4 fe ff eb                                      bl #0x3c9d80
003ca26c  18 20 95 e5                                      ldr r2, [r5, #0x18]
003ca270  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca274  01 c7 a0 e3                                      mov ip, #0x40000
003ca278  04 00 a0 e1                                      mov r0, r4
003ca27c  06 30 a0 e1                                      mov r3, r6
003ca280  00 c0 8d e5                                      str ip, [sp]
003ca284  04 70 8d e5                                      str r7, [sp, #4]
003ca288  bc fe ff eb                                      bl #0x3c9d80
003ca28c  68 20 95 e5                                      ldr r2, [r5, #0x68]
003ca290  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca294  01 c6 a0 e3                                      mov ip, #0x100000
003ca298  04 00 a0 e1                                      mov r0, r4
003ca29c  06 30 a0 e1                                      mov r3, r6
003ca2a0  00 c0 8d e5                                      str ip, [sp]
003ca2a4  04 70 8d e5                                      str r7, [sp, #4]
003ca2a8  b4 fe ff eb                                      bl #0x3c9d80
003ca2ac  02 c7 a0 e3                                      mov ip, #0x80000
003ca2b0  6c 20 95 e5                                      ldr r2, [r5, #0x6c]
003ca2b4  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca2b8  04 00 a0 e1                                      mov r0, r4
003ca2bc  06 30 a0 e1                                      mov r3, r6
003ca2c0  00 80 a0 e3                                      mov r8, #0
003ca2c4  00 c0 8d e5                                      str ip, [sp]
003ca2c8  04 70 8d e5                                      str r7, [sp, #4]
003ca2cc  ab fe ff eb                                      bl #0x3c9d80
003ca2d0  98 20 95 e5                                      ldr r2, [r5, #0x98]
003ca2d4  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca2d8  04 00 a0 e1                                      mov r0, r4
003ca2dc  06 30 a0 e1                                      mov r3, r6
003ca2e0  00 80 8d e5                                      str r8, [sp]
003ca2e4  04 70 8d e5                                      str r7, [sp, #4]
003ca2e8  a4 fe ff eb                                      bl #0x3c9d80
003ca2ec  74 20 95 e5                                      ldr r2, [r5, #0x74]
003ca2f0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca2f4  04 00 a0 e1                                      mov r0, r4
003ca2f8  06 30 a0 e1                                      mov r3, r6
003ca2fc  00 80 8d e5                                      str r8, [sp]
003ca300  04 70 8d e5                                      str r7, [sp, #4]
003ca304  9d fe ff eb                                      bl #0x3c9d80
003ca308  04 c0 a0 e3                                      mov ip, #4
003ca30c  30 20 95 e5                                      ldr r2, [r5, #0x30]
003ca310  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca314  04 00 a0 e1                                      mov r0, r4
003ca318  06 30 a0 e1                                      mov r3, r6
003ca31c  00 c0 8d e5                                      str ip, [sp]
003ca320  08 b0 a0 e3                                      mov fp, #8
003ca324  04 70 8d e5                                      str r7, [sp, #4]
003ca328  94 fe ff eb                                      bl #0x3c9d80
003ca32c  38 20 95 e5                                      ldr r2, [r5, #0x38]
003ca330  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca334  04 00 a0 e1                                      mov r0, r4
003ca338  06 30 a0 e1                                      mov r3, r6
003ca33c  00 b0 8d e5                                      str fp, [sp]
003ca340  04 70 8d e5                                      str r7, [sp, #4]
003ca344  8d fe ff eb                                      bl #0x3c9d80
003ca348  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
003ca34c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca350  04 00 a0 e1                                      mov r0, r4
003ca354  06 30 a0 e1                                      mov r3, r6
003ca358  00 b0 8d e5                                      str fp, [sp]
003ca35c  04 70 8d e5                                      str r7, [sp, #4]
003ca360  86 fe ff eb                                      bl #0x3c9d80
003ca364  34 20 95 e5                                      ldr r2, [r5, #0x34]
003ca368  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca36c  04 00 a0 e1                                      mov r0, r4
003ca370  06 30 a0 e1                                      mov r3, r6
003ca374  00 80 8d e5                                      str r8, [sp]
003ca378  04 70 8d e5                                      str r7, [sp, #4]
003ca37c  7f fe ff eb                                      bl #0x3c9d80
003ca380  9c 20 95 e5                                      ldr r2, [r5, #0x9c]
003ca384  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca388  04 00 a0 e1                                      mov r0, r4
003ca38c  06 30 a0 e1                                      mov r3, r6
003ca390  00 80 8d e5                                      str r8, [sp]
003ca394  04 70 8d e5                                      str r7, [sp, #4]
003ca398  78 fe ff eb                                      bl #0x3c9d80
003ca39c  78 20 95 e5                                      ldr r2, [r5, #0x78]
003ca3a0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca3a4  04 00 a0 e1                                      mov r0, r4
003ca3a8  06 30 a0 e1                                      mov r3, r6
003ca3ac  01 b4 a0 e3                                      mov fp, #0x1000000
003ca3b0  00 80 8d e5                                      str r8, [sp]
003ca3b4  04 70 8d e5                                      str r7, [sp, #4]
003ca3b8  70 fe ff eb                                      bl #0x3c9d80
003ca3bc  50 20 95 e5                                      ldr r2, [r5, #0x50]
003ca3c0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca3c4  04 00 a0 e1                                      mov r0, r4
003ca3c8  06 30 a0 e1                                      mov r3, r6
003ca3cc  00 b0 8d e5                                      str fp, [sp]
003ca3d0  04 70 8d e5                                      str r7, [sp, #4]
003ca3d4  69 fe ff eb                                      bl #0x3c9d80
003ca3d8  54 20 95 e5                                      ldr r2, [r5, #0x54]
003ca3dc  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca3e0  06 30 a0 e1                                      mov r3, r6
003ca3e4  04 00 a0 e1                                      mov r0, r4
003ca3e8  00 b0 8d e5                                      str fp, [sp]
003ca3ec  04 70 8d e5                                      str r7, [sp, #4]
003ca3f0  62 fe ff eb                                      bl #0x3c9d80
003ca3f4  40 30 95 e5                                      ldr r3, [r5, #0x40]
003ca3f8  08 00 53 e1                                      cmp r3, r8
003ca3fc  0b 00 00 0a                                      beq #0x3ca430
003ca400  44 30 95 e5                                      ldr r3, [r5, #0x44]
003ca404  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca408  04 00 a0 e1                                      mov r0, r4
003ca40c  08 21 93 e7                                      ldr r2, [r3, r8, lsl #2]
003ca410  06 30 a0 e1                                      mov r3, r6
003ca414  00 90 8d e5                                      str sb, [sp]
003ca418  04 70 8d e5                                      str r7, [sp, #4]
003ca41c  57 fe ff eb                                      bl #0x3c9d80
003ca420  40 30 95 e5                                      ldr r3, [r5, #0x40]
003ca424  01 80 88 e2                                      add r8, r8, #1
003ca428  08 00 53 e1                                      cmp r3, r8
003ca42c  f3 ff ff 8a                                      bhi #0x3ca400
003ca430  84 30 95 e5                                      ldr r3, [r5, #0x84]
003ca434  00 00 53 e3                                      cmp r3, #0
003ca438  0d 00 00 0a                                      beq #0x3ca474
003ca43c  00 80 a0 e3                                      mov r8, #0
003ca440  88 30 95 e5                                      ldr r3, [r5, #0x88]
003ca444  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003ca448  01 c5 a0 e3                                      mov ip, #0x400000
003ca44c  08 21 93 e7                                      ldr r2, [r3, r8, lsl #2]
003ca450  04 00 a0 e1                                      mov r0, r4
003ca454  06 30 a0 e1                                      mov r3, r6
003ca458  00 c0 8d e5                                      str ip, [sp]
003ca45c  04 70 8d e5                                      str r7, [sp, #4]
003ca460  46 fe ff eb                                      bl #0x3c9d80
003ca464  84 30 95 e5                                      ldr r3, [r5, #0x84]
003ca468  01 80 88 e2                                      add r8, r8, #1
003ca46c  08 00 53 e1                                      cmp r3, r8
003ca470  f2 ff ff 8a                                      bhi #0x3ca440
003ca474  04 30 9a e5                                      ldr r3, [sl, #4]
003ca478  00 00 53 e3                                      cmp r3, #0
003ca47c  10 00 00 0a                                      beq #0x3ca4c4
003ca480  00 80 a0 e3                                      mov r8, #0
003ca484  08 10 a0 e1                                      mov r1, r8
003ca488  04 00 94 e5                                      ldr r0, [r4, #4]
003ca48c  3c b0 94 e5                                      ldr fp, [r4, #0x3c]
003ca490  bb c8 ff eb                                      bl #0x3bc784
003ca494  06 30 a0 e1                                      mov r3, r6
003ca498  04 20 90 e5                                      ldr r2, [r0, #4]
003ca49c  02 c6 a0 e3                                      mov ip, #0x200000
003ca4a0  0b 10 a0 e1                                      mov r1, fp
003ca4a4  04 00 a0 e1                                      mov r0, r4
003ca4a8  00 c0 8d e5                                      str ip, [sp]
003ca4ac  04 70 8d e5                                      str r7, [sp, #4]
003ca4b0  32 fe ff eb                                      bl #0x3c9d80
003ca4b4  04 30 9a e5                                      ldr r3, [sl, #4]
003ca4b8  01 80 88 e2                                      add r8, r8, #1
003ca4bc  08 00 53 e1                                      cmp r3, r8
003ca4c0  ef ff ff 8a                                      bhi #0x3ca484
003ca4c4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003ca4c8  01 60 86 e2                                      add r6, r6, #1
003ca4cc  03 00 56 e1                                      cmp r6, r3
003ca4d0  ed fe ff 1a                                      bne #0x3ca08c
003ca4d4  aa fe ff ea                                      b #0x3c9f84
003ca4d8  38 60 9f e5                                      ldr r6, [pc, #0x38]
003ca4dc  40 10 9f e5                                      ldr r1, [pc, #0x40]
003ca4e0  40 20 9f e5                                      ldr r2, [pc, #0x40]
003ca4e4  06 30 95 e7                                      ldr r3, [r5, r6]
003ca4e8  01 10 8f e0                                      add r1, pc, r1
003ca4ec  02 20 8f e0                                      add r2, pc, r2
003ca4f0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003ca4f4  b8 e9 03 eb                                      bl #0x4c4bdc
003ca4f8  0c 00 8d e5                                      str r0, [sp, #0xc]
003ca4fc  ac fe ff ea                                      b #0x3c9fb4
003ca500  04 00 94 e5                                      ldr r0, [r4, #4]
003ca504  47 63 ff eb                                      bl #0x3a3228
003ca508  90 20 95 e5                                      ldr r2, [r5, #0x90]
003ca50c  b9 fe ff ea                                      b #0x3c9ff8
; mapping-symbol data/literal pool
003ca510  24 ab 5c 00 38 48 00 00 f4 37 00 00 f4 ab 4f 00  .byte 0x24, 0xab, 0x5c, 0x00, 0x38, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xf4, 0xab, 0x4f, 0x00
003ca520  00 ac 4f 00 a8 8d 4f 00 b4 8d 4f 00              .byte 0x00, 0xac, 0x4f, 0x00, 0xa8, 0x8d, 0x4f, 0x00, 0xb4, 0x8d, 0x4f, 0x00

; FUNCTION 0x003ca52c, declared_size=88, range_size=88, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator16RequestAnimPurgeEv
; demangled: CharAnimator::RequestAnimPurge()
; decoder-mode: arm
003ca52c  04 e0 2d e5                                      str lr, [sp, #-4]!
003ca530  04 30 90 e5                                      ldr r3, [r0, #4]
003ca534  0c d0 4d e2                                      sub sp, sp, #0xc
003ca538  d8 32 93 e5                                      ldr r3, [r3, #0x2d8]
003ca53c  00 00 53 e3                                      cmp r3, #0
003ca540  0d 00 00 0a                                      beq #0x3ca57c
003ca544  38 30 93 e5                                      ldr r3, [r3, #0x38]
003ca548  04 00 8d e2                                      add r0, sp, #4
003ca54c  03 10 a0 e1                                      mov r1, r3
003ca550  00 30 93 e5                                      ldr r3, [r3]
003ca554  0f e0 a0 e1                                      mov lr, pc
003ca558  08 f0 93 e5                                      ldr pc, [r3, #8]
003ca55c  04 00 9d e5                                      ldr r0, [sp, #4]
003ca560  00 00 50 e3                                      cmp r0, #0
003ca564  04 00 00 0a                                      beq #0x3ca57c
003ca568  1b 69 fe eb                                      bl #0x3649dc
003ca56c  04 00 9d e5                                      ldr r0, [sp, #4]
003ca570  00 00 50 e3                                      cmp r0, #0
003ca574  00 00 00 0a                                      beq #0x3ca57c
003ca578  01 4c fd eb                                      bl #0x31d584
003ca57c  0c d0 8d e2                                      add sp, sp, #0xc
003ca580  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x003ca79c, declared_size=924, range_size=924, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator12_SetAnimStepEj
; demangled: CharAnimator::_SetAnimStep(unsigned int)
; decoder-mode: arm
003ca79c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003ca7a0  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
003ca7a4  0c 20 a0 e3                                      mov r2, #0xc
003ca7a8  74 53 9f e5                                      ldr r5, [pc, #0x374]
003ca7ac  92 03 23 e0                                      mla r3, r2, r3, r0
003ca7b0  70 23 9f e5                                      ldr r2, [pc, #0x370]
003ca7b4  05 50 8f e0                                      add r5, pc, r5
003ca7b8  00 40 a0 e1                                      mov r4, r0
003ca7bc  02 20 95 e7                                      ldr r2, [r5, r2]
003ca7c0  08 00 93 e5                                      ldr r0, [r3, #8]
003ca7c4  14 c0 a0 e3                                      mov ip, #0x14
003ca7c8  00 20 92 e5                                      ldr r2, [r2]
003ca7cc  24 d0 4d e2                                      sub sp, sp, #0x24
003ca7d0  9c 20 22 e0                                      mla r2, ip, r0, r2
003ca7d4  08 00 92 e5                                      ldr r0, [r2, #8]
003ca7d8  01 00 50 e1                                      cmp r0, r1
003ca7dc  01 00 00 8a                                      bhi #0x3ca7e8
003ca7e0  24 d0 8d e2                                      add sp, sp, #0x24
003ca7e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003ca7e8  0c 20 92 e5                                      ldr r2, [r2, #0xc]
003ca7ec  38 60 a0 e3                                      mov r6, #0x38
003ca7f0  10 10 83 e5                                      str r1, [r3, #0x10]
003ca7f4  96 21 26 e0                                      mla r6, r6, r1, r2
003ca7f8  04 00 94 e5                                      ldr r0, [r4, #4]
003ca7fc  26 10 a0 e3                                      mov r1, #0x26
003ca800  00 20 a0 e3                                      mov r2, #0
003ca804  54 69 ff eb                                      bl #0x3a4d5c
003ca808  28 30 96 e5                                      ldr r3, [r6, #0x28]
003ca80c  01 00 53 e3                                      cmp r3, #1
003ca810  b0 00 00 0a                                      beq #0x3caad8
003ca814  10 30 96 e5                                      ldr r3, [r6, #0x10]
003ca818  01 00 73 e3                                      cmn r3, #1
003ca81c  6d 00 00 0a                                      beq #0x3ca9d8
003ca820  04 33 9f e5                                      ldr r3, [pc, #0x304]
003ca824  03 00 95 e7                                      ldr r0, [r5, r3]
003ca828  59 53 fd eb                                      bl #0x31f594
003ca82c  00 00 50 e3                                      cmp r0, #0
003ca830  0e 00 00 0a                                      beq #0x3ca870
003ca834  28 71 90 e5                                      ldr r7, [r0, #0x128]
003ca838  00 00 57 e3                                      cmp r7, #0
003ca83c  0b 00 00 0a                                      beq #0x3ca870
003ca840  07 00 a0 e1                                      mov r0, r7
003ca844  04 10 94 e5                                      ldr r1, [r4, #4]
003ca848  4c 14 01 eb                                      bl #0x40f980
003ca84c  00 00 50 e3                                      cmp r0, #0
003ca850  06 00 00 0a                                      beq #0x3ca870
003ca854  10 10 96 e5                                      ldr r1, [r6, #0x10]
003ca858  01 00 71 e3                                      cmn r1, #1
003ca85c  64 00 00 0a                                      beq #0x3ca9f4
003ca860  07 00 a0 e1                                      mov r0, r7
003ca864  00 20 a0 e3                                      mov r2, #0
003ca868  01 30 a0 e3                                      mov r3, #1
003ca86c  24 14 01 eb                                      bl #0x40f904
003ca870  34 30 d6 e5                                      ldrb r3, [r6, #0x34]
003ca874  30 30 c4 e5                                      strb r3, [r4, #0x30]
003ca878  34 30 d6 e5                                      ldrb r3, [r6, #0x34]
003ca87c  00 00 53 e3                                      cmp r3, #0
003ca880  01 70 a0 03                                      moveq r7, #1
003ca884  61 00 00 1a                                      bne #0x3caa10
003ca888  a0 32 9f e5                                      ldr r3, [pc, #0x2a0]
003ca88c  04 00 94 e5                                      ldr r0, [r4, #4]
003ca890  2c 90 96 e5                                      ldr sb, [r6, #0x2c]
003ca894  03 30 95 e7                                      ldr r3, [r5, r3]
003ca898  00 b0 93 e5                                      ldr fp, [r3]
003ca89c  4e 23 ff eb                                      bl #0x3935dc
003ca8a0  00 e0 90 e5                                      ldr lr, [r0]
003ca8a4  04 80 90 e5                                      ldr r8, [r0, #4]
003ca8a8  08 a0 90 e5                                      ldr sl, [r0, #8]
003ca8ac  bf c4 a0 e3                                      mov ip, #0xbf000000
003ca8b0  02 c5 8c e2                                      add ip, ip, #0x800000
003ca8b4  14 e0 8d e5                                      str lr, [sp, #0x14]
003ca8b8  0b 00 a0 e1                                      mov r0, fp
003ca8bc  01 e0 a0 e3                                      mov lr, #1
003ca8c0  09 10 a0 e1                                      mov r1, sb
003ca8c4  14 20 8d e2                                      add r2, sp, #0x14
003ca8c8  00 30 a0 e3                                      mov r3, #0
003ca8cc  18 80 8d e5                                      str r8, [sp, #0x18]
003ca8d0  1c a0 8d e5                                      str sl, [sp, #0x1c]
003ca8d4  00 e0 8d e5                                      str lr, [sp]
003ca8d8  08 c0 8d e5                                      str ip, [sp, #8]
003ca8dc  04 c0 8d e5                                      str ip, [sp, #4]
003ca8e0  3c 83 fe eb                                      bl #0x36b5d8
003ca8e4  00 00 57 e3                                      cmp r7, #0
003ca8e8  0b 00 00 0a                                      beq #0x3ca91c
003ca8ec  18 80 96 e5                                      ldr r8, [r6, #0x18]
003ca8f0  01 00 78 e3                                      cmn r8, #1
003ca8f4  08 00 00 0a                                      beq #0x3ca91c
003ca8f8  04 70 d6 e5                                      ldrb r7, [r6, #4]
003ca8fc  00 00 57 e3                                      cmp r7, #0
003ca900  63 00 00 0a                                      beq #0x3caa94
003ca904  28 32 9f e5                                      ldr r3, [pc, #0x228]
003ca908  08 10 a0 e1                                      mov r1, r8
003ca90c  04 20 94 e5                                      ldr r2, [r4, #4]
003ca910  03 00 95 e7                                      ldr r0, [r5, r3]
003ca914  00 30 a0 e3                                      mov r3, #0
003ca918  79 2d 03 eb                                      bl #0x495f04
003ca91c  30 20 96 e5                                      ldr r2, [r6, #0x30]
003ca920  04 30 94 e5                                      ldr r3, [r4, #4]
003ca924  34 20 84 e5                                      str r2, [r4, #0x34]
003ca928  d8 52 93 e5                                      ldr r5, [r3, #0x2d8]
003ca92c  00 00 55 e3                                      cmp r5, #0
003ca930  2c 00 00 0a                                      beq #0x3ca9e8
003ca934  08 30 96 e5                                      ldr r3, [r6, #8]
003ca938  01 00 73 e3                                      cmn r3, #1
003ca93c  29 00 00 0a                                      beq #0x3ca9e8
003ca940  00 30 a0 e3                                      mov r3, #0
003ca944  48 30 c4 e5                                      strb r3, [r4, #0x48]
003ca948  04 00 a0 e1                                      mov r0, r4
003ca94c  8a fc ff eb                                      bl #0x3c9b7c
003ca950  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
003ca954  00 00 53 e3                                      cmp r3, #0
003ca958  48 00 00 0a                                      beq #0x3caa80
003ca95c  49 10 d4 e5                                      ldrb r1, [r4, #0x49]
003ca960  38 30 95 e5                                      ldr r3, [r5, #0x38]
003ca964  1c 20 d6 e5                                      ldrb r2, [r6, #0x1c]
003ca968  00 00 51 e3                                      cmp r1, #0
003ca96c  54 00 00 0a                                      beq #0x3caac4
003ca970  00 10 a0 e3                                      mov r1, #0
003ca974  14 10 83 e5                                      str r1, [r3, #0x14]
003ca978  00 10 a0 e3                                      mov r1, #0
003ca97c  0c 10 83 e5                                      str r1, [r3, #0xc]
003ca980  10 20 c3 e5                                      strb r2, [r3, #0x10]
003ca984  38 20 95 e5                                      ldr r2, [r5, #0x38]
003ca988  08 10 96 e5                                      ldr r1, [r6, #8]
003ca98c  00 60 a0 e3                                      mov r6, #0
003ca990  44 30 94 e5                                      ldr r3, [r4, #0x44]
003ca994  00 c0 92 e5                                      ldr ip, [r2]
003ca998  02 00 a0 e1                                      mov r0, r2
003ca99c  00 60 8d e5                                      str r6, [sp]
003ca9a0  06 20 a0 e1                                      mov r2, r6
003ca9a4  0f e0 a0 e1                                      mov lr, pc
003ca9a8  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003ca9ac  34 10 94 e5                                      ldr r1, [r4, #0x34]
003ca9b0  40 00 94 e5                                      ldr r0, [r4, #0x40]
003ca9b4  ec 10 fd eb                                      bl #0x30ed6c
003ca9b8  38 50 95 e5                                      ldr r5, [r5, #0x38]
003ca9bc  00 10 a0 e1                                      mov r1, r0
003ca9c0  06 20 a0 e1                                      mov r2, r6
003ca9c4  05 00 a0 e1                                      mov r0, r5
003ca9c8  00 30 95 e5                                      ldr r3, [r5]
003ca9cc  0f e0 a0 e1                                      mov lr, pc
003ca9d0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003ca9d4  81 ff ff ea                                      b #0x3ca7e0
003ca9d8  20 30 96 e5                                      ldr r3, [r6, #0x20]
003ca9dc  00 00 53 e3                                      cmp r3, #0
003ca9e0  a2 ff ff 0a                                      beq #0x3ca870
003ca9e4  8d ff ff ea                                      b #0x3ca820
003ca9e8  04 00 a0 e1                                      mov r0, r4
003ca9ec  cc fb ff eb                                      bl #0x3c9924
003ca9f0  7a ff ff ea                                      b #0x3ca7e0
003ca9f4  20 00 96 e5                                      ldr r0, [r6, #0x20]
003ca9f8  00 00 50 e3                                      cmp r0, #0
003ca9fc  9b ff ff 0a                                      beq #0x3ca870
003caa00  24 80 96 e5                                      ldr r8, [r6, #0x24]
003caa04  3f ff ff eb                                      bl #0x3ca708
003caa08  00 11 98 e7                                      ldr r1, [r8, r0, lsl #2]
003caa0c  93 ff ff ea                                      b #0x3ca860
003caa10  04 00 94 e5                                      ldr r0, [r4, #4]
003caa14  01 10 a0 e3                                      mov r1, #1
003caa18  df 0f 80 e2                                      add r0, r0, #0x37c
003caa1c  06 d5 00 eb                                      bl #0x3ffe3c
003caa20  00 70 a0 e1                                      mov r7, r0
003caa24  04 00 94 e5                                      ldr r0, [r4, #4]
003caa28  02 10 a0 e3                                      mov r1, #2
003caa2c  df 0f 80 e2                                      add r0, r0, #0x37c
003caa30  01 d5 00 eb                                      bl #0x3ffe3c
003caa34  07 10 a0 e1                                      mov r1, r7
003caa38  00 a0 a0 e1                                      mov sl, r0
003caa3c  04 00 a0 e1                                      mov r0, r4
003caa40  9c fa ff eb                                      bl #0x3c94b8
003caa44  07 10 a0 e1                                      mov r1, r7
003caa48  01 80 20 e2                                      eor r8, r0, #1
003caa4c  04 20 d6 e5                                      ldrb r2, [r6, #4]
003caa50  04 00 a0 e1                                      mov r0, r4
003caa54  c0 fa ff eb                                      bl #0x3c955c
003caa58  78 80 ef e6                                      uxtb r8, r8
003caa5c  01 00 20 e2                                      eor r0, r0, #1
003caa60  00 00 58 e3                                      cmp r8, #0
003caa64  70 70 ef e6                                      uxtb r7, r0
003caa68  20 00 00 1a                                      bne #0x3caaf0
003caa6c  00 00 57 e3                                      cmp r7, #0
003caa70  24 00 00 1a                                      bne #0x3cab08
003caa74  00 00 58 e3                                      cmp r8, #0
003caa78  99 ff ff 0a                                      beq #0x3ca8e4
003caa7c  81 ff ff ea                                      b #0x3ca888
003caa80  38 20 95 e5                                      ldr r2, [r5, #0x38]
003caa84  1c 10 d6 e5                                      ldrb r1, [r6, #0x1c]
003caa88  0c 30 82 e5                                      str r3, [r2, #0xc]
003caa8c  10 10 c2 e5                                      strb r1, [r2, #0x10]
003caa90  bb ff ff ea                                      b #0x3ca984
003caa94  04 00 94 e5                                      ldr r0, [r4, #4]
003caa98  cf 22 ff eb                                      bl #0x3935dc
003caa9c  04 30 94 e5                                      ldr r3, [r4, #4]
003caaa0  00 20 a0 e1                                      mov r2, r0
003caaa4  88 00 9f e5                                      ldr r0, [pc, #0x88]
003caaa8  08 10 a0 e1                                      mov r1, r8
003caaac  5b 3f 83 e2                                      add r3, r3, #0x16c
003caab0  00 00 95 e7                                      ldr r0, [r5, r0]
003caab4  04 70 8d e5                                      str r7, [sp, #4]
003caab8  00 70 8d e5                                      str r7, [sp]
003caabc  71 2b 03 eb                                      bl #0x495888
003caac0  95 ff ff ea                                      b #0x3ca91c
003caac4  4a 10 d4 e5                                      ldrb r1, [r4, #0x4a]
003caac8  00 00 51 e3                                      cmp r1, #0
003caacc  0c 10 96 05                                      ldreq r1, [r6, #0xc]
003caad0  a7 ff ff 0a                                      beq #0x3ca974
003caad4  a5 ff ff ea                                      b #0x3ca970
003caad8  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
003caadc  04 00 a0 e1                                      mov r0, r4
003caae0  08 10 96 e5                                      ldr r1, [r6, #8]
003caae4  01 20 82 e2                                      add r2, r2, #1
003caae8  12 00 00 eb                                      bl #0x3cab38
003caaec  3b ff ff ea                                      b #0x3ca7e0
003caaf0  04 00 a0 e1                                      mov r0, r4
003caaf4  0a 10 a0 e1                                      mov r1, sl
003caaf8  6e fa ff eb                                      bl #0x3c94b8
003caafc  01 00 20 e2                                      eor r0, r0, #1
003cab00  70 80 ef e6                                      uxtb r8, r0
003cab04  d8 ff ff ea                                      b #0x3caa6c
003cab08  0a 10 a0 e1                                      mov r1, sl
003cab0c  04 00 a0 e1                                      mov r0, r4
003cab10  04 20 d6 e5                                      ldrb r2, [r6, #4]
003cab14  90 fa ff eb                                      bl #0x3c955c
003cab18  01 00 20 e2                                      eor r0, r0, #1
003cab1c  70 80 ef e6                                      uxtb r8, r0
003cab20  d3 ff ff ea                                      b #0x3caa74
; mapping-symbol data/literal pool
003cab24  dc a2 5c 00 7c 3c 00 00 f4 37 00 00 a4 0d 00 00  .byte 0xdc, 0xa2, 0x5c, 0x00, 0x7c, 0x3c, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00
003cab34  08 1b 00 00                                      .byte 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x003cab38, declared_size=376, range_size=376, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator8_SetAnimEij
; demangled: CharAnimator::_SetAnim(int, unsigned int)
; decoder-mode: arm
003cab38  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003cab3c  50 41 9f e5                                      ldr r4, [pc, #0x150]
003cab40  50 51 9f e5                                      ldr r5, [pc, #0x150]
003cab44  44 d0 4d e2                                      sub sp, sp, #0x44
003cab48  04 40 8f e0                                      add r4, pc, r4
003cab4c  05 30 94 e7                                      ldr r3, [r4, r5]
003cab50  00 00 51 e3                                      cmp r1, #0
003cab54  00 60 a0 e1                                      mov r6, r0
003cab58  00 30 93 e5                                      ldr r3, [r3]
003cab5c  3c 30 8d e5                                      str r3, [sp, #0x3c]
003cab60  06 00 00 ba                                      blt #0x3cab80
003cab64  30 31 9f e5                                      ldr r3, [pc, #0x130]
003cab68  03 30 94 e7                                      ldr r3, [r4, r3]
003cab6c  00 30 93 e5                                      ldr r3, [r3]
003cab70  03 00 51 e1                                      cmp r1, r3
003cab74  01 00 00 aa                                      bge #0x3cab80
003cab78  02 00 52 e3                                      cmp r2, #2
003cab7c  06 00 00 9a                                      bls #0x3cab9c
003cab80  05 30 94 e7                                      ldr r3, [r4, r5]
003cab84  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003cab88  00 30 93 e5                                      ldr r3, [r3]
003cab8c  03 00 52 e1                                      cmp r2, r3
003cab90  3e 00 00 1a                                      bne #0x3cac90
003cab94  44 d0 8d e2                                      add sp, sp, #0x44
003cab98  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003cab9c  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
003caba0  4c 10 80 e5                                      str r1, [r0, #0x4c]
003caba4  14 80 a0 e3                                      mov r8, #0x14
003caba8  03 00 94 e7                                      ldr r0, [r4, r3]
003cabac  0c 30 a0 e3                                      mov r3, #0xc
003cabb0  93 62 23 e0                                      mla r3, r3, r2, r6
003cabb4  00 00 90 e5                                      ldr r0, [r0]
003cabb8  2c 20 86 e5                                      str r2, [r6, #0x2c]
003cabbc  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
003cabc0  98 01 28 e0                                      mla r8, r8, r1, r0
003cabc4  08 10 83 e5                                      str r1, [r3, #8]
003cabc8  02 a0 94 e7                                      ldr sl, [r4, r2]
003cabcc  04 20 98 e5                                      ldr r2, [r8, #4]
003cabd0  24 70 8d e2                                      add r7, sp, #0x24
003cabd4  0a 00 a0 e1                                      mov r0, sl
003cabd8  0c 20 83 e5                                      str r2, [r3, #0xc]
003cabdc  29 b3 fd eb                                      bl #0x337888
003cabe0  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
003cabe4  08 20 8d e2                                      add r2, sp, #8
003cabe8  07 00 a0 e1                                      mov r0, r7
003cabec  01 10 8f e0                                      add r1, pc, r1
003cabf0  3d 25 fd eb                                      bl #0x3140ec
003cabf4  07 10 a0 e1                                      mov r1, r7
003cabf8  0a 00 a0 e1                                      mov r0, sl
003cabfc  a1 b3 fd eb                                      bl #0x337a88
003cac00  07 00 a0 e1                                      mov r0, r7
003cac04  68 23 fd eb                                      bl #0x3139ac
003cac08  04 00 96 e5                                      ldr r0, [r6, #4]
003cac0c  24 10 a0 e3                                      mov r1, #0x24
003cac10  00 20 a0 e3                                      mov r2, #0
003cac14  50 68 ff eb                                      bl #0x3a4d5c
003cac18  10 30 98 e5                                      ldr r3, [r8, #0x10]
003cac1c  02 00 53 e3                                      cmp r3, #2
003cac20  03 00 00 0a                                      beq #0x3cac34
003cac24  06 00 a0 e1                                      mov r0, r6
003cac28  00 10 a0 e3                                      mov r1, #0
003cac2c  da fe ff eb                                      bl #0x3ca79c
003cac30  d2 ff ff ea                                      b #0x3cab80
003cac34  0a 00 a0 e1                                      mov r0, sl
003cac38  12 b3 fd eb                                      bl #0x337888
003cac3c  68 10 9f e5                                      ldr r1, [pc, #0x68]
003cac40  0c 70 8d e2                                      add r7, sp, #0xc
003cac44  04 20 8d e2                                      add r2, sp, #4
003cac48  01 10 8f e0                                      add r1, pc, r1
003cac4c  07 00 a0 e1                                      mov r0, r7
003cac50  25 25 fd eb                                      bl #0x3140ec
003cac54  0a 00 a0 e1                                      mov r0, sl
003cac58  07 10 a0 e1                                      mov r1, r7
003cac5c  89 b3 fd eb                                      bl #0x337a88
003cac60  00 a0 a0 e1                                      mov sl, r0
003cac64  01 a0 2a e2                                      eor sl, sl, #1
003cac68  07 00 a0 e1                                      mov r0, r7
003cac6c  4e 23 fd eb                                      bl #0x3139ac
003cac70  ff 00 1a e3                                      tst sl, #0xff
003cac74  ea ff ff 0a                                      beq #0x3cac24
003cac78  08 00 98 e5                                      ldr r0, [r8, #8]
003cac7c  a1 fe ff eb                                      bl #0x3ca708
003cac80  00 10 a0 e1                                      mov r1, r0
003cac84  06 00 a0 e1                                      mov r0, r6
003cac88  c3 fe ff eb                                      bl #0x3ca79c
003cac8c  bb ff ff ea                                      b #0x3cab80
003cac90  9e 0d fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003cac94  48 9f 5c 00 ac 40 00 00 48 2a 00 00 7c 3c 00 00  .byte 0x48, 0x9f, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x2a, 0x00, 0x00, 0x7c, 0x3c, 0x00, 0x00
003caca4  84 08 00 00 64 a4 4f 00 98 8f 4f 00              .byte 0x84, 0x08, 0x00, 0x00, 0x64, 0xa4, 0x4f, 0x00, 0x98, 0x8f, 0x4f, 0x00

; FUNCTION 0x003cacb0, declared_size=28, range_size=28, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator8ANIM_SetEi
; demangled: CharAnimator::ANIM_Set(int)
; decoder-mode: arm
003cacb0  49 20 d0 e5                                      ldrb r2, [r0, #0x49]
003cacb4  00 00 52 e3                                      cmp r2, #0
003cacb8  50 10 80 15                                      strne r1, [r0, #0x50]
003cacbc  1e ff 2f 11                                      bxne lr
003cacc0  fe c5 a0 e3                                      mov ip, #0x3f800000
003cacc4  40 c0 80 e5                                      str ip, [r0, #0x40]
003cacc8  9a ff ff ea                                      b #0x3cab38

; FUNCTION 0x003caccc, declared_size=624, range_size=624, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator9ANIM_SwapEii
; demangled: CharAnimator::ANIM_Swap(int, int)
; decoder-mode: arm
003caccc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003cacd0  30 42 9f e5                                      ldr r4, [pc, #0x230]
003cacd4  01 00 71 e3                                      cmn r1, #1
003cacd8  24 d0 4d e2                                      sub sp, sp, #0x24
003cacdc  04 40 8f e0                                      add r4, pc, r4
003cace0  01 50 a0 e1                                      mov r5, r1
003cace4  00 90 a0 e1                                      mov sb, r0
003cace8  0d 00 00 0a                                      beq #0x3cad24
003cacec  01 00 72 e3                                      cmn r2, #1
003cacf0  0d 00 00 0a                                      beq #0x3cad2c
003cacf4  08 a0 90 e5                                      ldr sl, [r0, #8]
003cacf8  02 00 5a e1                                      cmp sl, r2
003cacfc  0b 00 00 0a                                      beq #0x3cad30
003cad00  0a 00 51 e1                                      cmp r1, sl
003cad04  06 00 00 0a                                      beq #0x3cad24
003cad08  40 40 90 e5                                      ldr r4, [r0, #0x40]
003cad0c  e7 ff ff eb                                      bl #0x3cacb0
003cad10  09 00 a0 e1                                      mov r0, sb
003cad14  04 10 a0 e1                                      mov r1, r4
003cad18  24 d0 8d e2                                      add sp, sp, #0x24
003cad1c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003cad20  b5 f9 ff ea                                      b #0x3c93fc
003cad24  24 d0 8d e2                                      add sp, sp, #0x24
003cad28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003cad2c  08 a0 90 e5                                      ldr sl, [r0, #8]
003cad30  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
003cad34  d4 c1 9f e5                                      ldr ip, [pc, #0x1d4]
003cad38  d4 b1 9f e5                                      ldr fp, [pc, #0x1d4]
003cad3c  03 30 8f e0                                      add r3, pc, r3
003cad40  10 30 8d e5                                      str r3, [sp, #0x10]
003cad44  cc 31 9f e5                                      ldr r3, [pc, #0x1cc]
003cad48  09 60 a0 e1                                      mov r6, sb
003cad4c  00 80 a0 e3                                      mov r8, #0
003cad50  03 30 8f e0                                      add r3, pc, r3
003cad54  14 30 8d e5                                      str r3, [sp, #0x14]
003cad58  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
003cad5c  04 70 a0 e1                                      mov r7, r4
003cad60  03 30 8f e0                                      add r3, pc, r3
003cad64  18 30 8d e5                                      str r3, [sp, #0x18]
003cad68  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
003cad6c  03 30 8f e0                                      add r3, pc, r3
003cad70  1c 30 8d e5                                      str r3, [sp, #0x1c]
003cad74  0c 30 97 e7                                      ldr r3, [r7, ip]
003cad78  14 40 a0 e3                                      mov r4, #0x14
003cad7c  00 30 93 e5                                      ldr r3, [r3]
003cad80  08 50 86 e5                                      str r5, [r6, #8]
003cad84  94 3a 2a e0                                      mla sl, r4, sl, r3
003cad88  94 35 24 e0                                      mla r4, r4, r5, r3
003cad8c  04 30 9a e5                                      ldr r3, [sl, #4]
003cad90  04 20 94 e5                                      ldr r2, [r4, #4]
003cad94  03 00 52 e1                                      cmp r2, r3
003cad98  07 00 00 0a                                      beq #0x3cadbc
003cad9c  0b 30 97 e7                                      ldr r3, [r7, fp]
003cada0  00 30 93 e5                                      ldr r3, [r3]
003cada4  02 00 53 e3                                      cmp r3, #2
003cada8  00 30 a0 03                                      moveq r3, #0
003cadac  00 30 83 05                                      streq r3, [r3]
003cadb0  01 00 00 0a                                      beq #0x3cadbc
003cadb4  01 00 53 e3                                      cmp r3, #1
003cadb8  33 00 00 0a                                      beq #0x3cae8c
003cadbc  08 30 9a e5                                      ldr r3, [sl, #8]
003cadc0  08 20 94 e5                                      ldr r2, [r4, #8]
003cadc4  03 00 52 e1                                      cmp r2, r3
003cadc8  07 00 00 0a                                      beq #0x3cadec
003cadcc  0b 30 97 e7                                      ldr r3, [r7, fp]
003cadd0  00 30 93 e5                                      ldr r3, [r3]
003cadd4  02 00 53 e3                                      cmp r3, #2
003cadd8  00 30 a0 03                                      moveq r3, #0
003caddc  00 30 83 05                                      streq r3, [r3]
003cade0  01 00 00 0a                                      beq #0x3cadec
003cade4  01 00 53 e3                                      cmp r3, #1
003cade8  19 00 00 0a                                      beq #0x3cae54
003cadec  2c 30 99 e5                                      ldr r3, [sb, #0x2c]
003cadf0  08 00 53 e1                                      cmp r3, r8
003cadf4  4c 50 89 95                                      strls r5, [sb, #0x4c]
003cadf8  0f 00 00 9a                                      bls #0x3cae3c
003cadfc  10 10 96 e5                                      ldr r1, [r6, #0x10]
003cae00  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003cae04  38 50 a0 e3                                      mov r5, #0x38
003cae08  95 21 22 e0                                      mla r2, r5, r1, r2
003cae0c  28 10 92 e5                                      ldr r1, [r2, #0x28]
003cae10  01 00 51 e3                                      cmp r1, #1
003cae14  07 00 00 0a                                      beq #0x3cae38
003cae18  0b 10 97 e7                                      ldr r1, [r7, fp]
003cae1c  00 10 91 e5                                      ldr r1, [r1]
003cae20  02 00 51 e3                                      cmp r1, #2
003cae24  00 10 a0 03                                      moveq r1, #0
003cae28  00 10 81 05                                      streq r1, [r1]
003cae2c  01 00 00 0a                                      beq #0x3cae38
003cae30  01 00 51 e3                                      cmp r1, #1
003cae34  20 00 00 0a                                      beq #0x3caebc
003cae38  08 50 92 e5                                      ldr r5, [r2, #8]
003cae3c  01 80 88 e2                                      add r8, r8, #1
003cae40  03 00 58 e1                                      cmp r8, r3
003cae44  0c 60 86 e2                                      add r6, r6, #0xc
003cae48  b5 ff ff 8a                                      bhi #0x3cad24
003cae4c  08 a0 96 e5                                      ldr sl, [r6, #8]
003cae50  c7 ff ff ea                                      b #0x3cad74
003cae54  c8 00 9f e5                                      ldr r0, [pc, #0xc8]
003cae58  c8 20 9f e5                                      ldr r2, [pc, #0xc8]
003cae5c  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003cae60  00 00 97 e7                                      ldr r0, [r7, r0]
003cae64  e1 ef a0 e3                                      mov lr, #0x384
003cae68  02 20 8f e0                                      add r2, pc, r2
003cae6c  03 30 8f e0                                      add r3, pc, r3
003cae70  a8 00 80 e2                                      add r0, r0, #0xa8
003cae74  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003cae78  0c c0 8d e5                                      str ip, [sp, #0xc]
003cae7c  00 e0 8d e5                                      str lr, [sp]
003cae80  5f 0c fd eb                                      bl #0x30e004
003cae84  0c c0 9d e5                                      ldr ip, [sp, #0xc]
003cae88  d7 ff ff ea                                      b #0x3cadec
003cae8c  90 00 9f e5                                      ldr r0, [pc, #0x90]
003cae90  83 e3 00 e3                                      movw lr, #0x383
003cae94  10 10 9d e5                                      ldr r1, [sp, #0x10]
003cae98  00 00 97 e7                                      ldr r0, [r7, r0]
003cae9c  14 20 9d e5                                      ldr r2, [sp, #0x14]
003caea0  18 30 9d e5                                      ldr r3, [sp, #0x18]
003caea4  a8 00 80 e2                                      add r0, r0, #0xa8
003caea8  0c c0 8d e5                                      str ip, [sp, #0xc]
003caeac  00 e0 8d e5                                      str lr, [sp]
003caeb0  53 0c fd eb                                      bl #0x30e004
003caeb4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
003caeb8  bf ff ff ea                                      b #0x3cadbc
003caebc  60 00 9f e5                                      ldr r0, [pc, #0x60]
003caec0  68 10 9f e5                                      ldr r1, [pc, #0x68]
003caec4  68 20 9f e5                                      ldr r2, [pc, #0x68]
003caec8  00 00 97 e7                                      ldr r0, [r7, r0]
003caecc  64 30 9f e5                                      ldr r3, [pc, #0x64]
003caed0  01 10 8f e0                                      add r1, pc, r1
003caed4  02 20 8f e0                                      add r2, pc, r2
003caed8  03 30 8f e0                                      add r3, pc, r3
003caedc  8b e3 00 e3                                      movw lr, #0x38b
003caee0  a8 00 80 e2                                      add r0, r0, #0xa8
003caee4  0c c0 8d e5                                      str ip, [sp, #0xc]
003caee8  00 e0 8d e5                                      str lr, [sp]
003caeec  44 0c fd eb                                      bl #0x30e004
003caef0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003caef4  10 10 96 e5                                      ldr r1, [r6, #0x10]
003caef8  2c 30 99 e5                                      ldr r3, [sb, #0x2c]
003caefc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
003caf00  95 21 22 e0                                      mla r2, r5, r1, r2
003caf04  cb ff ff ea                                      b #0x3cae38
; mapping-symbol data/literal pool
003caf08  b4 9d 5c 00 9c 36 4f 00 7c 3c 00 00 c0 39 00 00  .byte 0xb4, 0x9d, 0x5c, 0x00, 0x9c, 0x36, 0x4f, 0x00, 0x7c, 0x3c, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003caf18  18 a3 4f 00 20 a2 4f 00 6c 36 4f 00 c0 19 00 00  .byte 0x18, 0xa3, 0x4f, 0x00, 0x20, 0xa2, 0x4f, 0x00, 0x6c, 0x36, 0x4f, 0x00, 0xc0, 0x19, 0x00, 0x00
003caf28  58 a2 4f 00 14 a1 4f 00 08 35 4f 00 4c a2 4f 00  .byte 0x58, 0xa2, 0x4f, 0x00, 0x14, 0xa1, 0x4f, 0x00, 0x08, 0x35, 0x4f, 0x00, 0x4c, 0xa2, 0x4f, 0x00
003caf38  a8 a0 4f 00                                      .byte 0xa8, 0xa0, 0x4f, 0x00

; FUNCTION 0x003caf3c, declared_size=948, range_size=948, mode=arm
; class-group: CharAnimator
; alias: _ZN12CharAnimator6UpdateEv
; demangled: CharAnimator::Update()
; decoder-mode: arm
003caf3c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003caf40  7c 53 9f e5                                      ldr r5, [pc, #0x37c]
003caf44  7c 63 9f e5                                      ldr r6, [pc, #0x37c]
003caf48  00 40 a0 e1                                      mov r4, r0
003caf4c  05 50 8f e0                                      add r5, pc, r5
003caf50  06 30 95 e7                                      ldr r3, [r5, r6]
003caf54  70 03 9f e5                                      ldr r0, [pc, #0x370]
003caf58  78 d0 4d e2                                      sub sp, sp, #0x78
003caf5c  00 30 93 e5                                      ldr r3, [r3]
003caf60  00 00 8f e0                                      add r0, pc, r0
003caf64  74 30 8d e5                                      str r3, [sp, #0x74]
003caf68  d1 21 fd eb                                      bl #0x3136b4
003caf6c  04 30 94 e5                                      ldr r3, [r4, #4]
003caf70  20 35 93 e5                                      ldr r3, [r3, #0x520]
003caf74  02 0c 13 e3                                      tst r3, #0x200
003caf78  0e 00 00 1a                                      bne #0x3cafb8
003caf7c  5c 30 d4 e5                                      ldrb r3, [r4, #0x5c]
003caf80  00 00 53 e3                                      cmp r3, #0
003caf84  67 00 00 1a                                      bne #0x3cb128
003caf88  40 03 9f e5                                      ldr r0, [pc, #0x340]
003caf8c  00 30 a0 e3                                      mov r3, #0
003caf90  5c 30 c4 e5                                      strb r3, [r4, #0x5c]
003caf94  00 00 8f e0                                      add r0, pc, r0
003caf98  c6 21 fd eb                                      bl #0x3136b8
003caf9c  06 30 95 e7                                      ldr r3, [r5, r6]
003cafa0  74 20 9d e5                                      ldr r2, [sp, #0x74]
003cafa4  00 30 93 e5                                      ldr r3, [r3]
003cafa8  03 00 52 e1                                      cmp r2, r3
003cafac  c3 00 00 1a                                      bne #0x3cb2c0
003cafb0  78 d0 8d e2                                      add sp, sp, #0x78
003cafb4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003cafb8  5c 30 d4 e5                                      ldrb r3, [r4, #0x5c]
003cafbc  00 00 53 e3                                      cmp r3, #0
003cafc0  55 00 00 0a                                      beq #0x3cb11c
003cafc4  4a 30 d4 e5                                      ldrb r3, [r4, #0x4a]
003cafc8  01 20 a0 e3                                      mov r2, #1
003cafcc  5c 20 c4 e5                                      strb r2, [r4, #0x5c]
003cafd0  00 00 53 e3                                      cmp r3, #0
003cafd4  00 30 a0 13                                      movne r3, #0
003cafd8  4a 30 c4 15                                      strbne r3, [r4, #0x4a]
003cafdc  49 20 c4 15                                      strbne r2, [r4, #0x49]
003cafe0  53 00 00 0a                                      beq #0x3cb134
003cafe4  2c a0 94 e5                                      ldr sl, [r4, #0x2c]
003cafe8  e4 32 9f e5                                      ldr r3, [pc, #0x2e4]
003cafec  0c 80 a0 e3                                      mov r8, #0xc
003caff0  98 4a 28 e0                                      mla r8, r8, sl, r4
003caff4  03 30 95 e7                                      ldr r3, [r5, r3]
003caff8  08 20 98 e5                                      ldr r2, [r8, #8]
003caffc  14 70 a0 e3                                      mov r7, #0x14
003cb000  00 30 93 e5                                      ldr r3, [r3]
003cb004  04 00 94 e5                                      ldr r0, [r4, #4]
003cb008  27 10 a0 e3                                      mov r1, #0x27
003cb00c  97 32 27 e0                                      mla r7, r7, r2, r3
003cb010  00 20 a0 e3                                      mov r2, #0
003cb014  50 67 ff eb                                      bl #0x3a4d5c
003cb018  10 30 97 e5                                      ldr r3, [r7, #0x10]
003cb01c  01 00 53 e3                                      cmp r3, #1
003cb020  47 00 00 1a                                      bne #0x3cb144
003cb024  10 30 98 e5                                      ldr r3, [r8, #0x10]
003cb028  08 20 97 e5                                      ldr r2, [r7, #8]
003cb02c  01 30 83 e2                                      add r3, r3, #1
003cb030  02 00 53 e1                                      cmp r3, r2
003cb034  42 00 00 0a                                      beq #0x3cb144
003cb038  0c 80 a0 e3                                      mov r8, #0xc
003cb03c  98 4a 28 e0                                      mla r8, r8, sl, r4
003cb040  10 30 88 e5                                      str r3, [r8, #0x10]
003cb044  08 20 97 e5                                      ldr r2, [r7, #8]
003cb048  03 00 52 e1                                      cmp r2, r3
003cb04c  64 00 00 8a                                      bhi #0x3cb1e4
003cb050  0c 20 a0 e3                                      mov r2, #0xc
003cb054  92 4a 22 e0                                      mla r2, r2, sl, r4
003cb058  0c 30 92 e5                                      ldr r3, [r2, #0xc]
003cb05c  00 00 53 e3                                      cmp r3, #0
003cb060  43 00 00 0a                                      beq #0x3cb174
003cb064  01 30 43 c2                                      subgt r3, r3, #1
003cb068  0c 30 82 c5                                      strgt r3, [r2, #0xc]
003cb06c  64 32 9f e5                                      ldr r3, [pc, #0x264]
003cb070  44 70 8d e2                                      add r7, sp, #0x44
003cb074  03 80 95 e7                                      ldr r8, [r5, r3]
003cb078  08 00 a0 e1                                      mov r0, r8
003cb07c  01 b2 fd eb                                      bl #0x337888
003cb080  54 12 9f e5                                      ldr r1, [pc, #0x254]
003cb084  0c 20 8d e2                                      add r2, sp, #0xc
003cb088  07 00 a0 e1                                      mov r0, r7
003cb08c  01 10 8f e0                                      add r1, pc, r1
003cb090  15 24 fd eb                                      bl #0x3140ec
003cb094  07 10 a0 e1                                      mov r1, r7
003cb098  08 00 a0 e1                                      mov r0, r8
003cb09c  79 b2 fd eb                                      bl #0x337a88
003cb0a0  07 00 a0 e1                                      mov r0, r7
003cb0a4  40 22 fd eb                                      bl #0x3139ac
003cb0a8  00 20 a0 e3                                      mov r2, #0
003cb0ac  04 00 94 e5                                      ldr r0, [r4, #4]
003cb0b0  23 10 a0 e3                                      mov r1, #0x23
003cb0b4  28 67 ff eb                                      bl #0x3a4d5c
003cb0b8  50 20 94 e5                                      ldr r2, [r4, #0x50]
003cb0bc  0c 30 a0 e3                                      mov r3, #0xc
003cb0c0  93 4a 23 e0                                      mla r3, r3, sl, r4
003cb0c4  01 00 72 e3                                      cmn r2, #1
003cb0c8  0c 70 93 e5                                      ldr r7, [r3, #0xc]
003cb0cc  76 00 00 0a                                      beq #0x3cb2ac
003cb0d0  0c 30 a0 e3                                      mov r3, #0xc
003cb0d4  93 4a 2a e0                                      mla sl, r3, sl, r4
003cb0d8  00 00 57 e3                                      cmp r7, #0
003cb0dc  00 30 e0 b3                                      mvnlt r3, #0
003cb0e0  0c 30 8a b5                                      strlt r3, [sl, #0xc]
003cb0e4  0c 70 8a a5                                      strge r7, [sl, #0xc]
003cb0e8  00 30 a0 e3                                      mov r3, #0
003cb0ec  49 30 c4 e5                                      strb r3, [r4, #0x49]
003cb0f0  50 10 94 e5                                      ldr r1, [r4, #0x50]
003cb0f4  01 00 71 e3                                      cmn r1, #1
003cb0f8  03 00 00 0a                                      beq #0x3cb10c
003cb0fc  04 00 a0 e1                                      mov r0, r4
003cb100  ea fe ff eb                                      bl #0x3cacb0
003cb104  00 30 e0 e3                                      mvn r3, #0
003cb108  50 30 84 e5                                      str r3, [r4, #0x50]
003cb10c  cc 01 9f e5                                      ldr r0, [pc, #0x1cc]
003cb110  00 00 8f e0                                      add r0, pc, r0
003cb114  67 21 fd eb                                      bl #0x3136b8
003cb118  9f ff ff ea                                      b #0x3caf9c
003cb11c  04 00 a0 e1                                      mov r0, r4
003cb120  10 f8 ff eb                                      bl #0x3c9168
003cb124  a6 ff ff ea                                      b #0x3cafc4
003cb128  04 00 a0 e1                                      mov r0, r4
003cb12c  25 f8 ff eb                                      bl #0x3c91c8
003cb130  94 ff ff ea                                      b #0x3caf88
003cb134  49 30 d4 e5                                      ldrb r3, [r4, #0x49]
003cb138  00 00 53 e3                                      cmp r3, #0
003cb13c  eb ff ff 0a                                      beq #0x3cb0f0
003cb140  a7 ff ff ea                                      b #0x3cafe4
003cb144  04 00 94 e5                                      ldr r0, [r4, #4]
003cb148  25 10 a0 e3                                      mov r1, #0x25
003cb14c  00 20 a0 e3                                      mov r2, #0
003cb150  01 67 ff eb                                      bl #0x3a4d5c
003cb154  10 30 97 e5                                      ldr r3, [r7, #0x10]
003cb158  01 00 53 e3                                      cmp r3, #1
003cb15c  bb ff ff 1a                                      bne #0x3cb050
003cb160  0b 30 83 e2                                      add r3, r3, #0xb
003cb164  93 4a 23 e0                                      mla r3, r3, sl, r4
003cb168  10 30 93 e5                                      ldr r3, [r3, #0x10]
003cb16c  01 30 83 e2                                      add r3, r3, #1
003cb170  b0 ff ff ea                                      b #0x3cb038
003cb174  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
003cb178  00 00 53 e3                                      cmp r3, #0
003cb17c  35 00 00 1a                                      bne #0x3cb258
003cb180  48 70 d4 e5                                      ldrb r7, [r4, #0x48]
003cb184  00 00 57 e3                                      cmp r7, #0
003cb188  d6 ff ff 1a                                      bne #0x3cb0e8
003cb18c  44 31 9f e5                                      ldr r3, [pc, #0x144]
003cb190  14 80 8d e2                                      add r8, sp, #0x14
003cb194  03 a0 95 e7                                      ldr sl, [r5, r3]
003cb198  0a 00 a0 e1                                      mov r0, sl
003cb19c  b9 b1 fd eb                                      bl #0x337888
003cb1a0  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
003cb1a4  04 20 8d e2                                      add r2, sp, #4
003cb1a8  08 00 a0 e1                                      mov r0, r8
003cb1ac  01 10 8f e0                                      add r1, pc, r1
003cb1b0  cd 23 fd eb                                      bl #0x3140ec
003cb1b4  08 10 a0 e1                                      mov r1, r8
003cb1b8  0a 00 a0 e1                                      mov r0, sl
003cb1bc  31 b2 fd eb                                      bl #0x337a88
003cb1c0  08 00 a0 e1                                      mov r0, r8
003cb1c4  f8 21 fd eb                                      bl #0x3139ac
003cb1c8  01 30 a0 e3                                      mov r3, #1
003cb1cc  48 30 c4 e5                                      strb r3, [r4, #0x48]
003cb1d0  07 20 a0 e1                                      mov r2, r7
003cb1d4  04 00 94 e5                                      ldr r0, [r4, #4]
003cb1d8  22 10 a0 e3                                      mov r1, #0x22
003cb1dc  de 66 ff eb                                      bl #0x3a4d5c
003cb1e0  c0 ff ff ea                                      b #0x3cb0e8
003cb1e4  ec 30 9f e5                                      ldr r3, [pc, #0xec]
003cb1e8  5c a0 8d e2                                      add sl, sp, #0x5c
003cb1ec  03 90 95 e7                                      ldr sb, [r5, r3]
003cb1f0  09 00 a0 e1                                      mov r0, sb
003cb1f4  a3 b1 fd eb                                      bl #0x337888
003cb1f8  e8 10 9f e5                                      ldr r1, [pc, #0xe8]
003cb1fc  10 20 8d e2                                      add r2, sp, #0x10
003cb200  0a 00 a0 e1                                      mov r0, sl
003cb204  01 10 8f e0                                      add r1, pc, r1
003cb208  b7 23 fd eb                                      bl #0x3140ec
003cb20c  0a 10 a0 e1                                      mov r1, sl
003cb210  09 00 a0 e1                                      mov r0, sb
003cb214  1b b2 fd eb                                      bl #0x337a88
003cb218  0a 00 a0 e1                                      mov r0, sl
003cb21c  e2 21 fd eb                                      bl #0x3139ac
003cb220  23 10 a0 e3                                      mov r1, #0x23
003cb224  04 00 94 e5                                      ldr r0, [r4, #4]
003cb228  00 20 a0 e3                                      mov r2, #0
003cb22c  ca 66 ff eb                                      bl #0x3a4d5c
003cb230  10 10 98 e5                                      ldr r1, [r8, #0x10]
003cb234  08 30 97 e5                                      ldr r3, [r7, #8]
003cb238  03 00 51 e1                                      cmp r1, r3
003cb23c  02 00 00 2a                                      bhs #0x3cb24c
003cb240  04 00 a0 e1                                      mov r0, r4
003cb244  54 fd ff eb                                      bl #0x3ca79c
003cb248  a6 ff ff ea                                      b #0x3cb0e8
003cb24c  04 00 a0 e1                                      mov r0, r4
003cb250  39 ff ff eb                                      bl #0x3caf3c
003cb254  a3 ff ff ea                                      b #0x3cb0e8
003cb258  78 30 9f e5                                      ldr r3, [pc, #0x78]
003cb25c  2c 70 8d e2                                      add r7, sp, #0x2c
003cb260  03 80 95 e7                                      ldr r8, [r5, r3]
003cb264  08 00 a0 e1                                      mov r0, r8
003cb268  86 b1 fd eb                                      bl #0x337888
003cb26c  78 10 9f e5                                      ldr r1, [pc, #0x78]
003cb270  08 20 8d e2                                      add r2, sp, #8
003cb274  07 00 a0 e1                                      mov r0, r7
003cb278  01 10 8f e0                                      add r1, pc, r1
003cb27c  9a 23 fd eb                                      bl #0x3140ec
003cb280  07 10 a0 e1                                      mov r1, r7
003cb284  08 00 a0 e1                                      mov r0, r8
003cb288  fe b1 fd eb                                      bl #0x337a88
003cb28c  07 00 a0 e1                                      mov r0, r7
003cb290  c5 21 fd eb                                      bl #0x3139ac
003cb294  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
003cb298  04 00 a0 e1                                      mov r0, r4
003cb29c  01 30 43 e2                                      sub r3, r3, #1
003cb2a0  2c 30 84 e5                                      str r3, [r4, #0x2c]
003cb2a4  24 ff ff eb                                      bl #0x3caf3c
003cb2a8  8e ff ff ea                                      b #0x3cb0e8
003cb2ac  08 10 93 e5                                      ldr r1, [r3, #8]
003cb2b0  04 00 a0 e1                                      mov r0, r4
003cb2b4  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
003cb2b8  1e fe ff eb                                      bl #0x3cab38
003cb2bc  83 ff ff ea                                      b #0x3cb0d0
003cb2c0  12 0c fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003cb2c4  44 9b 5c 00 ac 40 00 00 40 a2 4f 00 0c a2 4f 00  .byte 0x44, 0x9b, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x40, 0xa2, 0x4f, 0x00, 0x0c, 0xa2, 0x4f, 0x00
003cb2d4  7c 3c 00 00 84 08 00 00 c4 9f 4f 00 90 a0 4f 00  .byte 0x7c, 0x3c, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0x9f, 0x4f, 0x00, 0x90, 0xa0, 0x4f, 0x00
003cb2e4  a4 9e 4f 00 4c 9e 4f 00 d8 9d 4f 00              .byte 0xa4, 0x9e, 0x4f, 0x00, 0x4c, 0x9e, 0x4f, 0x00, 0xd8, 0x9d, 0x4f, 0x00
