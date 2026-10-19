; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7548, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SetLevelState
; alias: _ZN7Structs13SetLevelStateD2Ev
; demangled: Structs::SetLevelState::~SetLevelState()
; decoder-mode: arm
004c7548  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c754c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7550  10 40 2d e9                                      push {r4, lr}
004c7554  03 30 8f e0                                      add r3, pc, r3
004c7558  02 20 93 e7                                      ldr r2, [r3, r2]
004c755c  00 40 a0 e1                                      mov r4, r0
004c7560  08 20 82 e2                                      add r2, r2, #8
004c7564  00 20 80 e5                                      str r2, [r0]
004c7568  bc fd ff eb                                      bl #0x4c6c60
004c756c  04 00 a0 e1                                      mov r0, r4
004c7570  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7574  3c d5 4c 00 98 21 00 00                          .byte 0x3c, 0xd5, 0x4c, 0x00, 0x98, 0x21, 0x00, 0x00

; FUNCTION 0x004c757c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SetLevelState
; alias: _ZN7Structs13SetLevelStateD1Ev
; demangled: Structs::SetLevelState::~SetLevelState()
; decoder-mode: arm
004c757c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7580  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7584  10 40 2d e9                                      push {r4, lr}
004c7588  03 30 8f e0                                      add r3, pc, r3
004c758c  02 20 93 e7                                      ldr r2, [r3, r2]
004c7590  00 40 a0 e1                                      mov r4, r0
004c7594  08 20 82 e2                                      add r2, r2, #8
004c7598  00 20 80 e5                                      str r2, [r0]
004c759c  af fd ff eb                                      bl #0x4c6c60
004c75a0  04 00 a0 e1                                      mov r0, r4
004c75a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c75a8  08 d5 4c 00 98 21 00 00                          .byte 0x08, 0xd5, 0x4c, 0x00, 0x98, 0x21, 0x00, 0x00

; FUNCTION 0x004c75b0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SetLevelState
; alias: _ZN7Structs13SetLevelState8finalizeEv
; demangled: Structs::SetLevelState::finalize()
; decoder-mode: arm
004c75b0  ac fd ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdef8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SetLevelState
; alias: _ZN7Structs13SetLevelStateD0Ev
; demangled: Structs::SetLevelState::~SetLevelState()
; decoder-mode: arm
004cdef8  10 40 2d e9                                      push {r4, lr}
004cdefc  00 40 a0 e1                                      mov r4, r0
004cdf00  9d e5 ff eb                                      bl #0x4c757c
004cdf04  04 00 a0 e1                                      mov r0, r4
004cdf08  4c 09 f9 eb                                      bl #0x310440
004cdf0c  04 00 a0 e1                                      mov r0, r4
004cdf10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00502fe4, declared_size=212, range_size=212, mode=arm
; class-group: Structs::SetLevelState
; alias: _ZN7Structs13SetLevelState4readEP11IStreamBase
; demangled: Structs::SetLevelState::read(IStreamBase*)
; decoder-mode: arm
00502fe4  30 40 2d e9                                      push {r4, r5, lr}
00502fe8  00 40 a0 e1                                      mov r4, r0
00502fec  0c d0 4d e2                                      sub sp, sp, #0xc
00502ff0  01 50 a0 e1                                      mov r5, r1
00502ff4  0b f2 ff eb                                      bl #0x4ff828
00502ff8  05 00 a0 e1                                      mov r0, r5
00502ffc  08 10 84 e2                                      add r1, r4, #8
00503000  22 58 fd eb                                      bl #0x459090
00503004  01 30 a0 e3                                      mov r3, #1
00503008  00 00 53 e3                                      cmp r3, #0
0050300c  04 30 8d e5                                      str r3, [sp, #4]
00503010  0f 00 00 1a                                      bne #0x503054
00503014  09 30 84 e2                                      add r3, r4, #9
00503018  0a 20 84 e2                                      add r2, r4, #0xa
0050301c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503020  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503024  02 00 53 e1                                      cmp r3, r2
00503028  01 10 20 e0                                      eor r1, r0, r1
0050302c  01 10 43 e5                                      strb r1, [r3, #-1]
00503030  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503034  00 10 21 e0                                      eor r1, r1, r0
00503038  01 10 c2 e5                                      strb r1, [r2, #1]
0050303c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503040  01 20 42 e2                                      sub r2, r2, #1
00503044  00 10 21 e0                                      eor r1, r1, r0
00503048  01 10 43 e5                                      strb r1, [r3, #-1]
0050304c  01 30 83 e2                                      add r3, r3, #1
00503050  f1 ff ff 3a                                      blo #0x50301c
00503054  05 00 a0 e1                                      mov r0, r5
00503058  0c 10 84 e2                                      add r1, r4, #0xc
0050305c  0b 58 fd eb                                      bl #0x459090
00503060  01 30 a0 e3                                      mov r3, #1
00503064  00 00 53 e3                                      cmp r3, #0
00503068  04 30 8d e5                                      str r3, [sp, #4]
0050306c  0f 00 00 1a                                      bne #0x5030b0
00503070  0e 30 84 e2                                      add r3, r4, #0xe
00503074  0d 40 84 e2                                      add r4, r4, #0xd
00503078  01 10 d3 e5                                      ldrb r1, [r3, #1]
0050307c  01 20 54 e5                                      ldrb r2, [r4, #-1]
00503080  04 00 53 e1                                      cmp r3, r4
00503084  02 20 21 e0                                      eor r2, r1, r2
00503088  01 20 44 e5                                      strb r2, [r4, #-1]
0050308c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503090  01 20 22 e0                                      eor r2, r2, r1
00503094  01 20 c3 e5                                      strb r2, [r3, #1]
00503098  01 10 54 e5                                      ldrb r1, [r4, #-1]
0050309c  01 30 43 e2                                      sub r3, r3, #1
005030a0  01 20 22 e0                                      eor r2, r2, r1
005030a4  01 20 44 e5                                      strb r2, [r4, #-1]
005030a8  01 40 84 e2                                      add r4, r4, #1
005030ac  f1 ff ff 8a                                      bhi #0x503078
005030b0  0c d0 8d e2                                      add sp, sp, #0xc
005030b4  30 80 bd e8                                      pop {r4, r5, pc}
