; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ae9c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer8getSpeedEv
; demangled: glitch::os::Timer::getSpeed()
; decoder-mode: arm
0060ae9c  10 30 9f e5                                      ldr r3, [pc, #0x10]
0060aea0  10 20 9f e5                                      ldr r2, [pc, #0x10]
0060aea4  03 30 8f e0                                      add r3, pc, r3
0060aea8  02 20 93 e7                                      ldr r2, [r3, r2]
0060aeac  00 00 92 e5                                      ldr r0, [r2]
0060aeb0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0060aeb4  ec 9b 38 00 bc 32 00 00                          .byte 0xec, 0x9b, 0x38, 0x00, 0xbc, 0x32, 0x00, 0x00

; FUNCTION 0x0060aebc, declared_size=40, range_size=40, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer9isStoppedEv
; demangled: glitch::os::Timer::isStopped()
; decoder-mode: arm
0060aebc  18 30 9f e5                                      ldr r3, [pc, #0x18]
0060aec0  18 20 9f e5                                      ldr r2, [pc, #0x18]
0060aec4  03 30 8f e0                                      add r3, pc, r3
0060aec8  02 20 93 e7                                      ldr r2, [r3, r2]
0060aecc  00 00 92 e5                                      ldr r0, [r2]
0060aed0  00 00 50 e2                                      subs r0, r0, #0
0060aed4  01 00 a0 13                                      movne r0, #1
0060aed8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0060aedc  cc 9b 38 00 48 2d 00 00                          .byte 0xcc, 0x9b, 0x38, 0x00, 0x48, 0x2d, 0x00, 0x00

; FUNCTION 0x0060aee4, declared_size=132, range_size=132, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer7getTimeEv
; demangled: glitch::os::Timer::getTime()
; decoder-mode: arm
0060aee4  10 40 2d e9                                      push {r4, lr}
0060aee8  f3 ff ff eb                                      bl #0x60aebc
0060aeec  60 40 9f e5                                      ldr r4, [pc, #0x60]
0060aef0  00 00 50 e3                                      cmp r0, #0
0060aef4  04 40 8f e0                                      add r4, pc, r4
0060aef8  11 00 00 1a                                      bne #0x60af44
0060aefc  54 30 9f e5                                      ldr r3, [pc, #0x54]
0060af00  03 20 94 e7                                      ldr r2, [r4, r3]
0060af04  50 30 9f e5                                      ldr r3, [pc, #0x50]
0060af08  00 00 92 e5                                      ldr r0, [r2]
0060af0c  03 30 94 e7                                      ldr r3, [r4, r3]
0060af10  00 30 93 e5                                      ldr r3, [r3]
0060af14  00 00 63 e0                                      rsb r0, r3, r0
0060af18  f0 0c f4 eb                                      bl #0x30e2e0
0060af1c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0060af20  03 30 94 e7                                      ldr r3, [r4, r3]
0060af24  00 10 93 e5                                      ldr r1, [r3]
0060af28  8f 0f f4 eb                                      bl #0x30ed6c
0060af2c  db cc 0a eb                                      bl #0x8be2a0
0060af30  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0060af34  03 30 94 e7                                      ldr r3, [r4, r3]
0060af38  00 30 93 e5                                      ldr r3, [r3]
0060af3c  03 00 80 e0                                      add r0, r0, r3
0060af40  10 80 bd e8                                      pop {r4, pc}
0060af44  18 30 9f e5                                      ldr r3, [pc, #0x18]
0060af48  03 30 94 e7                                      ldr r3, [r4, r3]
0060af4c  00 00 93 e5                                      ldr r0, [r3]
0060af50  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060af54  9c 9b 38 00 38 08 00 00 90 38 00 00 bc 32 00 00  .byte 0x9c, 0x9b, 0x38, 0x00, 0x38, 0x08, 0x00, 0x00, 0x90, 0x38, 0x00, 0x00, 0xbc, 0x32, 0x00, 0x00
0060af64  e4 46 00 00                                      .byte 0xe4, 0x46, 0x00, 0x00

; FUNCTION 0x0060af68, declared_size=76, range_size=76, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer9stopTimerEv
; demangled: glitch::os::Timer::stopTimer()
; decoder-mode: arm
0060af68  10 40 2d e9                                      push {r4, lr}
0060af6c  d2 ff ff eb                                      bl #0x60aebc
0060af70  30 40 9f e5                                      ldr r4, [pc, #0x30]
0060af74  00 00 50 e3                                      cmp r0, #0
0060af78  04 40 8f e0                                      add r4, pc, r4
0060af7c  03 00 00 1a                                      bne #0x60af90
0060af80  d7 ff ff eb                                      bl #0x60aee4
0060af84  20 30 9f e5                                      ldr r3, [pc, #0x20]
0060af88  03 30 94 e7                                      ldr r3, [r4, r3]
0060af8c  00 00 83 e5                                      str r0, [r3]
0060af90  18 30 9f e5                                      ldr r3, [pc, #0x18]
0060af94  03 30 94 e7                                      ldr r3, [r4, r3]
0060af98  00 20 93 e5                                      ldr r2, [r3]
0060af9c  01 20 42 e2                                      sub r2, r2, #1
0060afa0  00 20 83 e5                                      str r2, [r3]
0060afa4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060afa8  18 9b 38 00 e4 46 00 00 48 2d 00 00              .byte 0x18, 0x9b, 0x38, 0x00, 0xe4, 0x46, 0x00, 0x00, 0x48, 0x2d, 0x00, 0x00

; FUNCTION 0x0060b094, declared_size=56, range_size=56, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer15getMicroSecondsEv
; demangled: glitch::os::Timer::getMicroSeconds()
; decoder-mode: arm
0060b094  04 e0 2d e5                                      str lr, [sp, #-4]!
0060b098  0c d0 4d e2                                      sub sp, sp, #0xc
0060b09c  00 10 a0 e3                                      mov r1, #0
0060b0a0  0d 00 a0 e1                                      mov r0, sp
0060b0a4  9e 0d f4 eb                                      bl #0x30e724
0060b0a8  06 00 9d e8                                      ldm sp, {r1, r2}
0060b0ac  3d 39 a0 e3                                      mov r3, #0xf4000
0060b0b0  09 3d 83 e2                                      add r3, r3, #0x240
0060b0b4  93 21 22 e0                                      mla r2, r3, r1, r2
0060b0b8  c2 3f a0 e1                                      asr r3, r2, #0x1f
0060b0bc  03 10 a0 e1                                      mov r1, r3
0060b0c0  02 00 a0 e1                                      mov r0, r2
0060b0c4  0c d0 8d e2                                      add sp, sp, #0xc
0060b0c8  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0060b0cc, declared_size=64, range_size=64, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer11getRealTimeEv
; demangled: glitch::os::Timer::getRealTime()
; decoder-mode: arm
0060b0cc  04 e0 2d e5                                      str lr, [sp, #-4]!
0060b0d0  0c d0 4d e2                                      sub sp, sp, #0xc
0060b0d4  00 10 a0 e3                                      mov r1, #0
0060b0d8  0d 00 a0 e1                                      mov r0, sp
0060b0dc  90 0d f4 eb                                      bl #0x30e724
0060b0e0  04 20 9d e5                                      ldr r2, [sp, #4]
0060b0e4  d3 3d 04 e3                                      movw r3, #0x4dd3
0060b0e8  62 30 41 e3                                      movt r3, #0x1062
0060b0ec  93 12 c3 e0                                      smull r1, r3, r3, r2
0060b0f0  c2 2f a0 e1                                      asr r2, r2, #0x1f
0060b0f4  43 33 62 e0                                      rsb r3, r2, r3, asr #6
0060b0f8  00 20 9d e5                                      ldr r2, [sp]
0060b0fc  fa 0f a0 e3                                      mov r0, #0x3e8
0060b100  90 32 20 e0                                      mla r0, r0, r2, r3
0060b104  0c d0 8d e2                                      add sp, sp, #0xc
0060b108  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0060b10c, declared_size=56, range_size=56, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer16initVirtualTimerEv
; demangled: glitch::os::Timer::initVirtualTimer()
; decoder-mode: arm
0060b10c  10 40 2d e9                                      push {r4, lr}
0060b110  ed ff ff eb                                      bl #0x60b0cc
0060b114  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
0060b118  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0060b11c  04 40 8f e0                                      add r4, pc, r4
0060b120  03 20 94 e7                                      ldr r2, [r4, r3]
0060b124  14 30 9f e5                                      ldr r3, [pc, #0x14]
0060b128  00 00 82 e5                                      str r0, [r2]
0060b12c  03 30 94 e7                                      ldr r3, [r4, r3]
0060b130  00 00 83 e5                                      str r0, [r3]
0060b134  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060b138  74 99 38 00 38 08 00 00 90 38 00 00              .byte 0x74, 0x99, 0x38, 0x00, 0x38, 0x08, 0x00, 0x00, 0x90, 0x38, 0x00, 0x00

; FUNCTION 0x0060b144, declared_size=4, range_size=4, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer9initTimerEv
; demangled: glitch::os::Timer::initTimer()
; decoder-mode: arm
0060b144  f0 ff ff ea                                      b #0x60b10c

; FUNCTION 0x0060b148, declared_size=76, range_size=76, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer7setTimeEj
; demangled: glitch::os::Timer::setTime(unsigned int)
; decoder-mode: arm
0060b148  70 40 2d e9                                      push {r4, r5, r6, lr}
0060b14c  00 50 a0 e1                                      mov r5, r0
0060b150  dd ff ff eb                                      bl #0x60b0cc
0060b154  28 40 9f e5                                      ldr r4, [pc, #0x28]
0060b158  28 30 9f e5                                      ldr r3, [pc, #0x28]
0060b15c  04 40 8f e0                                      add r4, pc, r4
0060b160  03 10 94 e7                                      ldr r1, [r4, r3]
0060b164  20 30 9f e5                                      ldr r3, [pc, #0x20]
0060b168  00 00 81 e5                                      str r0, [r1]
0060b16c  03 20 94 e7                                      ldr r2, [r4, r3]
0060b170  18 30 9f e5                                      ldr r3, [pc, #0x18]
0060b174  00 00 82 e5                                      str r0, [r2]
0060b178  03 30 94 e7                                      ldr r3, [r4, r3]
0060b17c  00 50 83 e5                                      str r5, [r3]
0060b180  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060b184  34 99 38 00 38 08 00 00 90 38 00 00 e4 46 00 00  .byte 0x34, 0x99, 0x38, 0x00, 0x38, 0x08, 0x00, 0x00, 0x90, 0x38, 0x00, 0x00, 0xe4, 0x46, 0x00, 0x00

; FUNCTION 0x0060b194, declared_size=72, range_size=72, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer8setSpeedEf
; demangled: glitch::os::Timer::setSpeed(float)
; decoder-mode: arm
0060b194  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060b198  00 50 a0 e1                                      mov r5, r0
0060b19c  30 40 9f e5                                      ldr r4, [pc, #0x30]
0060b1a0  4f ff ff eb                                      bl #0x60aee4
0060b1a4  e7 ff ff eb                                      bl #0x60b148
0060b1a8  28 30 9f e5                                      ldr r3, [pc, #0x28]
0060b1ac  04 40 8f e0                                      add r4, pc, r4
0060b1b0  00 70 a0 e3                                      mov r7, #0
0060b1b4  03 60 94 e7                                      ldr r6, [r4, r3]
0060b1b8  05 00 a0 e1                                      mov r0, r5
0060b1bc  07 10 a0 e1                                      mov r1, r7
0060b1c0  00 50 86 e5                                      str r5, [r6]
0060b1c4  50 0d f4 eb                                      bl #0x30e70c
0060b1c8  00 00 50 e3                                      cmp r0, #0
0060b1cc  00 70 86 15                                      strne r7, [r6]
0060b1d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0060b1d4  e4 98 38 00 bc 32 00 00                          .byte 0xe4, 0x98, 0x38, 0x00, 0xbc, 0x32, 0x00, 0x00

; FUNCTION 0x0060b1dc, declared_size=80, range_size=80, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer10startTimerEv
; demangled: glitch::os::Timer::startTimer()
; decoder-mode: arm
0060b1dc  10 40 2d e9                                      push {r4, lr}
0060b1e0  38 40 9f e5                                      ldr r4, [pc, #0x38]
0060b1e4  38 30 9f e5                                      ldr r3, [pc, #0x38]
0060b1e8  04 40 8f e0                                      add r4, pc, r4
0060b1ec  03 30 94 e7                                      ldr r3, [r4, r3]
0060b1f0  00 20 93 e5                                      ldr r2, [r3]
0060b1f4  01 20 82 e2                                      add r2, r2, #1
0060b1f8  00 20 83 e5                                      str r2, [r3]
0060b1fc  2e ff ff eb                                      bl #0x60aebc
0060b200  00 00 50 e3                                      cmp r0, #0
0060b204  00 00 00 0a                                      beq #0x60b20c
0060b208  10 80 bd e8                                      pop {r4, pc}
0060b20c  14 30 9f e5                                      ldr r3, [pc, #0x14]
0060b210  03 30 94 e7                                      ldr r3, [r4, r3]
0060b214  00 00 93 e5                                      ldr r0, [r3]
0060b218  10 40 bd e8                                      pop {r4, lr}
0060b21c  c9 ff ff ea                                      b #0x60b148
; mapping-symbol data/literal pool
0060b220  a8 98 38 00 48 2d 00 00 e4 46 00 00              .byte 0xa8, 0x98, 0x38, 0x00, 0x48, 0x2d, 0x00, 0x00, 0xe4, 0x46, 0x00, 0x00

; FUNCTION 0x0060b22c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer4tickEv
; demangled: glitch::os::Timer::tick()
; decoder-mode: arm
0060b22c  10 40 2d e9                                      push {r4, lr}
0060b230  a5 ff ff eb                                      bl #0x60b0cc
0060b234  24 30 9f e5                                      ldr r3, [pc, #0x24]
0060b238  24 20 9f e5                                      ldr r2, [pc, #0x24]
0060b23c  24 10 9f e5                                      ldr r1, [pc, #0x24]
0060b240  03 30 8f e0                                      add r3, pc, r3
0060b244  02 20 93 e7                                      ldr r2, [r3, r2]
0060b248  01 10 93 e7                                      ldr r1, [r3, r1]
0060b24c  00 30 92 e5                                      ldr r3, [r2]
0060b250  00 00 81 e5                                      str r0, [r1]
0060b254  01 30 83 e2                                      add r3, r3, #1
0060b258  00 30 82 e5                                      str r3, [r2]
0060b25c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060b260  50 98 38 00 b0 07 00 00 38 08 00 00              .byte 0x50, 0x98, 0x38, 0x00, 0xb0, 0x07, 0x00, 0x00, 0x38, 0x08, 0x00, 0x00
