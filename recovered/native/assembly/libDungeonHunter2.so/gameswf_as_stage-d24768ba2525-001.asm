; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076c728, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_stage
; alias: _ZNK7gameswf8as_stage2isEi
; demangled: gameswf::as_stage::is(int) const
; decoder-mode: arm
0076c728  15 00 51 e3                                      cmp r1, #0x15
0076c72c  01 00 a0 03                                      moveq r0, #1
0076c730  1e ff 2f 01                                      bxeq lr
0076c734  01 00 71 e2                                      rsbs r0, r1, #1
0076c738  00 00 a0 33                                      movlo r0, #0
0076c73c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0076ccbc, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_stage
; alias: _ZN7gameswf8as_stageD1Ev
; demangled: gameswf::as_stage::~as_stage()
; decoder-mode: arm
0076ccbc  24 30 9f e5                                      ldr r3, [pc, #0x24]
0076ccc0  24 20 9f e5                                      ldr r2, [pc, #0x24]
0076ccc4  10 40 2d e9                                      push {r4, lr}
0076ccc8  03 30 8f e0                                      add r3, pc, r3
0076cccc  02 20 93 e7                                      ldr r2, [r3, r2]
0076ccd0  00 40 a0 e1                                      mov r4, r0
0076ccd4  08 20 82 e2                                      add r2, r2, #8
0076ccd8  00 20 80 e5                                      str r2, [r0]
0076ccdc  6e f3 ff eb                                      bl #0x769a9c
0076cce0  04 00 a0 e1                                      mov r0, r4
0076cce4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0076cce8  c8 7d 22 00 80 18 00 00                          .byte 0xc8, 0x7d, 0x22, 0x00, 0x80, 0x18, 0x00, 0x00

; FUNCTION 0x0076d490, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_stage
; alias: _ZN7gameswf8as_stageD0Ev
; demangled: gameswf::as_stage::~as_stage()
; decoder-mode: arm
0076d490  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0076d494  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0076d498  10 40 2d e9                                      push {r4, lr}
0076d49c  03 30 8f e0                                      add r3, pc, r3
0076d4a0  02 20 93 e7                                      ldr r2, [r3, r2]
0076d4a4  00 40 a0 e1                                      mov r4, r0
0076d4a8  08 20 82 e2                                      add r2, r2, #8
0076d4ac  00 20 80 e5                                      str r2, [r0]
0076d4b0  79 f1 ff eb                                      bl #0x769a9c
0076d4b4  04 00 a0 e1                                      mov r0, r4
0076d4b8  7c 83 ee eb                                      bl #0x30e2b0
0076d4bc  04 00 a0 e1                                      mov r0, r4
0076d4c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0076d4c4  f4 75 22 00 80 18 00 00                          .byte 0xf4, 0x75, 0x22, 0x00, 0x80, 0x18, 0x00, 0x00

; FUNCTION 0x0076d724, declared_size=444, range_size=444, mode=arm
; class-group: gameswf::as_stage
; alias: _ZN7gameswf8as_stage10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::as_stage::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
0076d724  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0076d728  d0 30 d1 e1                                      ldrsb r3, [r1]
0076d72c  00 50 a0 e1                                      mov r5, r0
0076d730  01 40 a0 e1                                      mov r4, r1
0076d734  01 00 73 e3                                      cmn r3, #1
0076d738  01 00 81 12                                      addne r0, r1, #1
0076d73c  0c 00 91 05                                      ldreq r0, [r1, #0xc]
0076d740  90 11 9f e5                                      ldr r1, [pc, #0x190]
0076d744  02 60 a0 e1                                      mov r6, r2
0076d748  01 10 8f e0                                      add r1, pc, r1
0076d74c  6f 91 ff eb                                      bl #0x751d10
0076d750  00 00 50 e3                                      cmp r0, #0
0076d754  18 00 00 1a                                      bne #0x76d7bc
0076d758  30 40 95 e5                                      ldr r4, [r5, #0x30]
0076d75c  00 00 54 e3                                      cmp r4, #0
0076d760  03 00 00 0a                                      beq #0x76d774
0076d764  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0076d768  04 30 d0 e5                                      ldrb r3, [r0, #4]
0076d76c  00 00 53 e3                                      cmp r3, #0
0076d770  3f 00 00 0a                                      beq #0x76d874
0076d774  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0076d778  00 00 53 e3                                      cmp r3, #0
0076d77c  03 00 00 0a                                      beq #0x76d790
0076d780  48 00 94 e5                                      ldr r0, [r4, #0x48]
0076d784  04 20 d0 e5                                      ldrb r2, [r0, #4]
0076d788  00 00 52 e3                                      cmp r2, #0
0076d78c  2e 00 00 0a                                      beq #0x76d84c
0076d790  03 00 a0 e1                                      mov r0, r3
0076d794  00 30 93 e5                                      ldr r3, [r3]
0076d798  0f e0 a0 e1                                      mov lr, pc
0076d79c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0076d7a0  62 85 ee eb                                      bl #0x30ed30
0076d7a4  00 20 a0 e1                                      mov r2, r0
0076d7a8  01 30 a0 e1                                      mov r3, r1
0076d7ac  06 00 a0 e1                                      mov r0, r6
0076d7b0  34 a7 00 eb                                      bl #0x797488
0076d7b4  01 00 a0 e3                                      mov r0, #1
0076d7b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076d7bc  d0 30 d4 e1                                      ldrsb r3, [r4]
0076d7c0  14 11 9f e5                                      ldr r1, [pc, #0x114]
0076d7c4  01 00 73 e3                                      cmn r3, #1
0076d7c8  01 00 84 12                                      addne r0, r4, #1
0076d7cc  0c 00 94 05                                      ldreq r0, [r4, #0xc]
0076d7d0  01 10 8f e0                                      add r1, pc, r1
0076d7d4  4d 91 ff eb                                      bl #0x751d10
0076d7d8  00 00 50 e3                                      cmp r0, #0
0076d7dc  18 00 00 1a                                      bne #0x76d844
0076d7e0  30 40 95 e5                                      ldr r4, [r5, #0x30]
0076d7e4  00 00 54 e3                                      cmp r4, #0
0076d7e8  03 00 00 0a                                      beq #0x76d7fc
0076d7ec  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
0076d7f0  04 70 d3 e5                                      ldrb r7, [r3, #4]
0076d7f4  00 00 57 e3                                      cmp r7, #0
0076d7f8  30 00 00 0a                                      beq #0x76d8c0
0076d7fc  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0076d800  00 00 53 e3                                      cmp r3, #0
0076d804  03 00 00 0a                                      beq #0x76d818
0076d808  48 20 94 e5                                      ldr r2, [r4, #0x48]
0076d80c  04 50 d2 e5                                      ldrb r5, [r2, #4]
0076d810  00 00 55 e3                                      cmp r5, #0
0076d814  23 00 00 0a                                      beq #0x76d8a8
0076d818  03 00 a0 e1                                      mov r0, r3
0076d81c  00 30 93 e5                                      ldr r3, [r3]
0076d820  0f e0 a0 e1                                      mov lr, pc
0076d824  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0076d828  40 85 ee eb                                      bl #0x30ed30
0076d82c  00 20 a0 e1                                      mov r2, r0
0076d830  01 30 a0 e1                                      mov r3, r1
0076d834  06 00 a0 e1                                      mov r0, r6
0076d838  12 a7 00 eb                                      bl #0x797488
0076d83c  01 00 a0 e3                                      mov r0, #1
0076d840  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076d844  00 00 a0 e3                                      mov r0, #0
0076d848  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076d84c  00 10 90 e5                                      ldr r1, [r0]
0076d850  01 10 41 e2                                      sub r1, r1, #1
0076d854  00 00 51 e3                                      cmp r1, #0
0076d858  00 10 80 e5                                      str r1, [r0]
0076d85c  00 00 00 1a                                      bne #0x76d864
0076d860  b4 94 ff eb                                      bl #0x752b38
0076d864  00 30 a0 e3                                      mov r3, #0
0076d868  4c 30 84 e5                                      str r3, [r4, #0x4c]
0076d86c  48 30 84 e5                                      str r3, [r4, #0x48]
0076d870  c6 ff ff ea                                      b #0x76d790
0076d874  00 10 90 e5                                      ldr r1, [r0]
0076d878  01 10 41 e2                                      sub r1, r1, #1
0076d87c  00 00 51 e3                                      cmp r1, #0
0076d880  00 10 80 e5                                      str r1, [r0]
0076d884  00 00 00 1a                                      bne #0x76d88c
0076d888  aa 94 ff eb                                      bl #0x752b38
0076d88c  00 40 a0 e3                                      mov r4, #0
0076d890  30 40 85 e5                                      str r4, [r5, #0x30]
0076d894  2c 40 85 e5                                      str r4, [r5, #0x2c]
0076d898  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0076d89c  00 00 53 e3                                      cmp r3, #0
0076d8a0  b6 ff ff 1a                                      bne #0x76d780
0076d8a4  b9 ff ff ea                                      b #0x76d790
0076d8a8  48 00 84 e2                                      add r0, r4, #0x48
0076d8ac  05 10 a0 e1                                      mov r1, r5
0076d8b0  73 c9 f2 eb                                      bl #0x41fe84
0076d8b4  4c 50 84 e5                                      str r5, [r4, #0x4c]
0076d8b8  05 30 a0 e1                                      mov r3, r5
0076d8bc  d5 ff ff ea                                      b #0x76d818
0076d8c0  2c 00 85 e2                                      add r0, r5, #0x2c
0076d8c4  07 10 a0 e1                                      mov r1, r7
0076d8c8  6d c9 f2 eb                                      bl #0x41fe84
0076d8cc  07 40 a0 e1                                      mov r4, r7
0076d8d0  30 70 85 e5                                      str r7, [r5, #0x30]
0076d8d4  c8 ff ff ea                                      b #0x76d7fc
; mapping-symbol data/literal pool
0076d8d8  60 14 17 00 60 b9 19 00                          .byte 0x60, 0x14, 0x17, 0x00, 0x60, 0xb9, 0x19, 0x00

; FUNCTION 0x0076f018, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::as_stage
; alias: _ZN7gameswf8as_stageC1EPNS_6playerE
; demangled: gameswf::as_stage::as_stage(gameswf::player*)
; decoder-mode: arm
0076f018  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0076f01c  48 41 9f e5                                      ldr r4, [pc, #0x148]
0076f020  48 71 9f e5                                      ldr r7, [pc, #0x148]
0076f024  50 d0 4d e2                                      sub sp, sp, #0x50
0076f028  04 40 8f e0                                      add r4, pc, r4
0076f02c  07 30 94 e7                                      ldr r3, [r4, r7]
0076f030  00 50 a0 e1                                      mov r5, r0
0076f034  38 80 8d e2                                      add r8, sp, #0x38
0076f038  00 30 93 e5                                      ldr r3, [r3]
0076f03c  0c 60 8d e2                                      add r6, sp, #0xc
0076f040  4c 30 8d e5                                      str r3, [sp, #0x4c]
0076f044  25 f3 ff eb                                      bl #0x76bce0
0076f048  24 31 9f e5                                      ldr r3, [pc, #0x124]
0076f04c  24 11 9f e5                                      ldr r1, [pc, #0x124]
0076f050  08 00 a0 e1                                      mov r0, r8
0076f054  03 30 94 e7                                      ldr r3, [r4, r3]
0076f058  01 10 8f e0                                      add r1, pc, r1
0076f05c  08 30 83 e2                                      add r3, r3, #8
0076f060  00 30 85 e5                                      str r3, [r5]
0076f064  84 92 f2 eb                                      bl #0x413a7c
0076f068  ff 35 a0 e3                                      mov r3, #0x3fc00000
0076f06c  00 20 a0 e3                                      mov r2, #0
0076f070  03 36 83 e2                                      add r3, r3, #0x300000
0076f074  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
0076f078  00 30 a0 e3                                      mov r3, #0
0076f07c  0c 30 cd e5                                      strb r3, [sp, #0xc]
0076f080  02 30 a0 e3                                      mov r3, #2
0076f084  0d 30 cd e5                                      strb r3, [sp, #0xd]
0076f088  00 30 a0 e3                                      mov r3, #0
0076f08c  10 30 8d e5                                      str r3, [sp, #0x10]
0076f090  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0076f094  08 10 a0 e1                                      mov r1, r8
0076f098  06 20 a0 e1                                      mov r2, r6
0076f09c  05 00 a0 e1                                      mov r0, r5
0076f0a0  08 30 86 e5                                      str r3, [r6, #8]
0076f0a4  4d f4 ff eb                                      bl #0x76c1e0
0076f0a8  06 00 a0 e1                                      mov r0, r6
0076f0ac  1c a0 00 eb                                      bl #0x797124
0076f0b0  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
0076f0b4  01 00 73 e3                                      cmn r3, #1
0076f0b8  22 00 00 0a                                      beq #0x76f148
0076f0bc  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0076f0c0  24 80 8d e2                                      add r8, sp, #0x24
0076f0c4  08 00 a0 e1                                      mov r0, r8
0076f0c8  01 10 8f e0                                      add r1, pc, r1
0076f0cc  6a 92 f2 eb                                      bl #0x413a7c
0076f0d0  ff 35 a0 e3                                      mov r3, #0x3fc00000
0076f0d4  00 20 a0 e3                                      mov r2, #0
0076f0d8  03 36 83 e2                                      add r3, r3, #0x300000
0076f0dc  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
0076f0e0  00 30 a0 e3                                      mov r3, #0
0076f0e4  00 30 cd e5                                      strb r3, [sp]
0076f0e8  02 30 a0 e3                                      mov r3, #2
0076f0ec  01 30 cd e5                                      strb r3, [sp, #1]
0076f0f0  00 30 a0 e3                                      mov r3, #0
0076f0f4  04 30 8d e5                                      str r3, [sp, #4]
0076f0f8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0076f0fc  08 10 a0 e1                                      mov r1, r8
0076f100  0d 20 a0 e1                                      mov r2, sp
0076f104  05 00 a0 e1                                      mov r0, r5
0076f108  08 30 8d e5                                      str r3, [sp, #8]
0076f10c  33 f4 ff eb                                      bl #0x76c1e0
0076f110  0d 00 a0 e1                                      mov r0, sp
0076f114  02 a0 00 eb                                      bl #0x797124
0076f118  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
0076f11c  0d 60 a0 e1                                      mov r6, sp
0076f120  01 00 73 e3                                      cmn r3, #1
0076f124  0b 00 00 0a                                      beq #0x76f158
0076f128  07 30 94 e7                                      ldr r3, [r4, r7]
0076f12c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0076f130  05 00 a0 e1                                      mov r0, r5
0076f134  00 30 93 e5                                      ldr r3, [r3]
0076f138  03 00 52 e1                                      cmp r2, r3
0076f13c  09 00 00 1a                                      bne #0x76f168
0076f140  50 d0 8d e2                                      add sp, sp, #0x50
0076f144  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076f148  44 00 9d e5                                      ldr r0, [sp, #0x44]
0076f14c  40 10 9d e5                                      ldr r1, [sp, #0x40]
0076f150  78 8e ff eb                                      bl #0x752b38
0076f154  d8 ff ff ea                                      b #0x76f0bc
0076f158  30 00 9d e5                                      ldr r0, [sp, #0x30]
0076f15c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0076f160  74 8e ff eb                                      bl #0x752b38
0076f164  ef ff ff ea                                      b #0x76f128
0076f168  68 7c ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0076f16c  68 5a 22 00 ac 40 00 00 80 18 00 00 50 fb 16 00  .byte 0x68, 0x5a, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00, 0x80, 0x18, 0x00, 0x00, 0x50, 0xfb, 0x16, 0x00
0076f17c  68 a0 19 00                                      .byte 0x68, 0xa0, 0x19, 0x00
