; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d3f3c, declared_size=100, range_size=100, mode=arm
; class-group: Structs::NumProbList
; alias: _ZN7Structs11NumProbList8finalizeEv
; demangled: Structs::NumProbList::finalize()
; decoder-mode: arm
004d3f3c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d3f40  08 30 90 e5                                      ldr r3, [r0, #8]
004d3f44  00 50 a0 e1                                      mov r5, r0
004d3f48  00 00 53 e3                                      cmp r3, #0
004d3f4c  12 00 00 0a                                      beq #0x4d3f9c
004d3f50  04 00 13 e5                                      ldr r0, [r3, #-4]
004d3f54  80 01 83 e0                                      add r0, r3, r0, lsl #3
004d3f58  00 00 53 e1                                      cmp r3, r0
004d3f5c  01 00 00 1a                                      bne #0x4d3f68
004d3f60  08 00 00 ea                                      b #0x4d3f88
004d3f64  04 00 a0 e1                                      mov r0, r4
004d3f68  08 40 40 e2                                      sub r4, r0, #8
004d3f6c  08 30 10 e5                                      ldr r3, [r0, #-8]
004d3f70  04 00 a0 e1                                      mov r0, r4
004d3f74  0f e0 a0 e1                                      mov lr, pc
004d3f78  00 f0 93 e5                                      ldr pc, [r3]
004d3f7c  08 00 95 e5                                      ldr r0, [r5, #8]
004d3f80  04 00 50 e1                                      cmp r0, r4
004d3f84  f6 ff ff 1a                                      bne #0x4d3f64
004d3f88  08 00 40 e2                                      sub r0, r0, #8
004d3f8c  2b f1 f8 eb                                      bl #0x310440
004d3f90  00 30 a0 e3                                      mov r3, #0
004d3f94  04 30 85 e5                                      str r3, [r5, #4]
004d3f98  08 30 85 e5                                      str r3, [r5, #8]
004d3f9c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004d3fa0, declared_size=124, range_size=124, mode=arm
; class-group: Structs::NumProbList
; alias: _ZN7Structs11NumProbListD1Ev
; demangled: Structs::NumProbList::~NumProbList()
; decoder-mode: arm
004d3fa0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d3fa4  68 30 9f e5                                      ldr r3, [pc, #0x68]
004d3fa8  68 20 9f e5                                      ldr r2, [pc, #0x68]
004d3fac  08 10 90 e5                                      ldr r1, [r0, #8]
004d3fb0  03 30 8f e0                                      add r3, pc, r3
004d3fb4  02 20 93 e7                                      ldr r2, [r3, r2]
004d3fb8  00 00 51 e3                                      cmp r1, #0
004d3fbc  00 50 a0 e1                                      mov r5, r0
004d3fc0  08 20 82 e2                                      add r2, r2, #8
004d3fc4  00 20 80 e5                                      str r2, [r0]
004d3fc8  0f 00 00 0a                                      beq #0x4d400c
004d3fcc  04 00 11 e5                                      ldr r0, [r1, #-4]
004d3fd0  80 01 81 e0                                      add r0, r1, r0, lsl #3
004d3fd4  00 00 51 e1                                      cmp r1, r0
004d3fd8  01 00 00 1a                                      bne #0x4d3fe4
004d3fdc  08 00 00 ea                                      b #0x4d4004
004d3fe0  04 00 a0 e1                                      mov r0, r4
004d3fe4  08 40 40 e2                                      sub r4, r0, #8
004d3fe8  08 30 10 e5                                      ldr r3, [r0, #-8]
004d3fec  04 00 a0 e1                                      mov r0, r4
004d3ff0  0f e0 a0 e1                                      mov lr, pc
004d3ff4  00 f0 93 e5                                      ldr pc, [r3]
004d3ff8  08 00 95 e5                                      ldr r0, [r5, #8]
004d3ffc  04 00 50 e1                                      cmp r0, r4
004d4000  f6 ff ff 1a                                      bne #0x4d3fe0
004d4004  08 00 40 e2                                      sub r0, r0, #8
004d4008  0c f1 f8 eb                                      bl #0x310440
004d400c  05 00 a0 e1                                      mov r0, r5
004d4010  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d4014  e0 0a 4c 00 68 42 00 00                          .byte 0xe0, 0x0a, 0x4c, 0x00, 0x68, 0x42, 0x00, 0x00

; FUNCTION 0x004d401c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::NumProbList
; alias: _ZN7Structs11NumProbListD0Ev
; demangled: Structs::NumProbList::~NumProbList()
; decoder-mode: arm
004d401c  10 40 2d e9                                      push {r4, lr}
004d4020  00 40 a0 e1                                      mov r4, r0
004d4024  dd ff ff eb                                      bl #0x4d3fa0
004d4028  04 00 a0 e1                                      mov r0, r4
004d402c  03 f1 f8 eb                                      bl #0x310440
004d4030  04 00 a0 e1                                      mov r0, r4
004d4034  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d4038, declared_size=124, range_size=124, mode=arm
; class-group: Structs::NumProbList
; alias: _ZN7Structs11NumProbListD2Ev
; demangled: Structs::NumProbList::~NumProbList()
; decoder-mode: arm
004d4038  70 40 2d e9                                      push {r4, r5, r6, lr}
004d403c  68 30 9f e5                                      ldr r3, [pc, #0x68]
004d4040  68 20 9f e5                                      ldr r2, [pc, #0x68]
004d4044  08 10 90 e5                                      ldr r1, [r0, #8]
004d4048  03 30 8f e0                                      add r3, pc, r3
004d404c  02 20 93 e7                                      ldr r2, [r3, r2]
004d4050  00 00 51 e3                                      cmp r1, #0
004d4054  00 50 a0 e1                                      mov r5, r0
004d4058  08 20 82 e2                                      add r2, r2, #8
004d405c  00 20 80 e5                                      str r2, [r0]
004d4060  0f 00 00 0a                                      beq #0x4d40a4
004d4064  04 00 11 e5                                      ldr r0, [r1, #-4]
004d4068  80 01 81 e0                                      add r0, r1, r0, lsl #3
004d406c  00 00 51 e1                                      cmp r1, r0
004d4070  01 00 00 1a                                      bne #0x4d407c
004d4074  08 00 00 ea                                      b #0x4d409c
004d4078  04 00 a0 e1                                      mov r0, r4
004d407c  08 40 40 e2                                      sub r4, r0, #8
004d4080  08 30 10 e5                                      ldr r3, [r0, #-8]
004d4084  04 00 a0 e1                                      mov r0, r4
004d4088  0f e0 a0 e1                                      mov lr, pc
004d408c  00 f0 93 e5                                      ldr pc, [r3]
004d4090  08 00 95 e5                                      ldr r0, [r5, #8]
004d4094  04 00 50 e1                                      cmp r0, r4
004d4098  f6 ff ff 1a                                      bne #0x4d4078
004d409c  08 00 40 e2                                      sub r0, r0, #8
004d40a0  e6 f0 f8 eb                                      bl #0x310440
004d40a4  05 00 a0 e1                                      mov r0, r5
004d40a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d40ac  48 0a 4c 00 68 42 00 00                          .byte 0x48, 0x0a, 0x4c, 0x00, 0x68, 0x42, 0x00, 0x00

; FUNCTION 0x004dc638, declared_size=344, range_size=344, mode=arm
; class-group: Structs::NumProbList
; alias: _ZN7Structs11NumProbList4readEP11IStreamBase
; demangled: Structs::NumProbList::read(IStreamBase*)
; decoder-mode: arm
004dc638  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004dc63c  00 50 a0 e1                                      mov r5, r0
004dc640  0c d0 4d e2                                      sub sp, sp, #0xc
004dc644  01 00 a0 e1                                      mov r0, r1
004dc648  01 60 a0 e1                                      mov r6, r1
004dc64c  34 71 9f e5                                      ldr r7, [pc, #0x134]
004dc650  04 10 85 e2                                      add r1, r5, #4
004dc654  d1 0a fc eb                                      bl #0x3df1a0
004dc658  01 30 a0 e3                                      mov r3, #1
004dc65c  00 00 53 e3                                      cmp r3, #0
004dc660  04 30 8d e5                                      str r3, [sp, #4]
004dc664  07 70 8f e0                                      add r7, pc, r7
004dc668  0f 00 00 1a                                      bne #0x4dc6ac
004dc66c  05 30 85 e2                                      add r3, r5, #5
004dc670  06 20 85 e2                                      add r2, r5, #6
004dc674  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc678  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dc67c  02 00 53 e1                                      cmp r3, r2
004dc680  01 10 20 e0                                      eor r1, r0, r1
004dc684  01 10 43 e5                                      strb r1, [r3, #-1]
004dc688  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc68c  00 10 21 e0                                      eor r1, r1, r0
004dc690  01 10 c2 e5                                      strb r1, [r2, #1]
004dc694  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dc698  01 20 42 e2                                      sub r2, r2, #1
004dc69c  00 10 21 e0                                      eor r1, r1, r0
004dc6a0  01 10 43 e5                                      strb r1, [r3, #-1]
004dc6a4  01 30 83 e2                                      add r3, r3, #1
004dc6a8  f1 ff ff 3a                                      blo #0x4dc674
004dc6ac  08 30 95 e5                                      ldr r3, [r5, #8]
004dc6b0  00 00 53 e3                                      cmp r3, #0
004dc6b4  0f 00 00 0a                                      beq #0x4dc6f8
004dc6b8  04 00 13 e5                                      ldr r0, [r3, #-4]
004dc6bc  80 01 83 e0                                      add r0, r3, r0, lsl #3
004dc6c0  00 00 53 e1                                      cmp r3, r0
004dc6c4  01 00 00 1a                                      bne #0x4dc6d0
004dc6c8  08 00 00 ea                                      b #0x4dc6f0
004dc6cc  04 00 a0 e1                                      mov r0, r4
004dc6d0  08 40 40 e2                                      sub r4, r0, #8
004dc6d4  08 30 10 e5                                      ldr r3, [r0, #-8]
004dc6d8  04 00 a0 e1                                      mov r0, r4
004dc6dc  0f e0 a0 e1                                      mov lr, pc
004dc6e0  00 f0 93 e5                                      ldr pc, [r3]
004dc6e4  08 00 95 e5                                      ldr r0, [r5, #8]
004dc6e8  04 00 50 e1                                      cmp r0, r4
004dc6ec  f6 ff ff 1a                                      bne #0x4dc6cc
004dc6f0  08 00 40 e2                                      sub r0, r0, #8
004dc6f4  51 cf f8 eb                                      bl #0x310440
004dc6f8  04 40 95 e5                                      ldr r4, [r5, #4]
004dc6fc  01 10 a0 e3                                      mov r1, #1
004dc700  01 00 84 e0                                      add r0, r4, r1
004dc704  80 01 a0 e1                                      lsl r0, r0, #3
004dc708  97 cf f8 eb                                      bl #0x31056c
004dc70c  08 30 a0 e3                                      mov r3, #8
004dc710  00 00 54 e3                                      cmp r4, #0
004dc714  18 00 80 e8                                      stm r0, {r3, r4}
004dc718  03 30 80 e0                                      add r3, r0, r3
004dc71c  07 00 00 0a                                      beq #0x4dc740
004dc720  64 10 9f e5                                      ldr r1, [pc, #0x64]
004dc724  00 20 a0 e3                                      mov r2, #0
004dc728  01 10 97 e7                                      ldr r1, [r7, r1]
004dc72c  08 10 81 e2                                      add r1, r1, #8
004dc730  01 20 82 e2                                      add r2, r2, #1
004dc734  04 00 52 e1                                      cmp r2, r4
004dc738  08 10 a0 e5                                      str r1, [r0, #8]!
004dc73c  fb ff ff 1a                                      bne #0x4dc730
004dc740  04 20 95 e5                                      ldr r2, [r5, #4]
004dc744  08 30 85 e5                                      str r3, [r5, #8]
004dc748  00 00 52 e3                                      cmp r2, #0
004dc74c  0b 00 00 0a                                      beq #0x4dc780
004dc750  00 40 a0 e3                                      mov r4, #0
004dc754  00 00 00 ea                                      b #0x4dc75c
004dc758  08 30 95 e5                                      ldr r3, [r5, #8]
004dc75c  84 01 83 e0                                      add r0, r3, r4, lsl #3
004dc760  06 10 a0 e1                                      mov r1, r6
004dc764  84 31 93 e7                                      ldr r3, [r3, r4, lsl #3]
004dc768  0f e0 a0 e1                                      mov lr, pc
004dc76c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004dc770  04 30 95 e5                                      ldr r3, [r5, #4]
004dc774  01 40 84 e2                                      add r4, r4, #1
004dc778  04 00 53 e1                                      cmp r3, r4
004dc77c  f5 ff ff 8a                                      bhi #0x4dc758
004dc780  0c d0 8d e2                                      add sp, sp, #0xc
004dc784  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
004dc788  2c 84 4b 00 b8 49 00 00                          .byte 0x2c, 0x84, 0x4b, 0x00, 0xb8, 0x49, 0x00, 0x00
