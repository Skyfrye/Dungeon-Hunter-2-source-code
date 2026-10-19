; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a931c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::Charater_Templates
; alias: _ZN6Arrays18Charater_Templates13finalizeNamesEv
; demangled: Arrays::Charater_Templates::finalizeNames()
; decoder-mode: arm
004a931c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9320  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a9324  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a9328  05 50 8f e0                                      add r5, pc, r5
004a932c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9330  00 30 93 e5                                      ldr r3, [r3]
004a9334  00 00 53 e3                                      cmp r3, #0
004a9338  1a 00 00 0a                                      beq #0x4a93a8
004a933c  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a9340  07 20 95 e7                                      ldr r2, [r5, r7]
004a9344  00 20 92 e5                                      ldr r2, [r2]
004a9348  00 00 52 e3                                      cmp r2, #0
004a934c  10 00 00 0a                                      beq #0x4a9394
004a9350  00 40 a0 e3                                      mov r4, #0
004a9354  01 00 00 ea                                      b #0x4a9360
004a9358  06 30 95 e7                                      ldr r3, [r5, r6]
004a935c  00 30 93 e5                                      ldr r3, [r3]
004a9360  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a9364  01 40 84 e2                                      add r4, r4, #1
004a9368  00 00 50 e3                                      cmp r0, #0
004a936c  02 00 00 0a                                      beq #0x4a937c
004a9370  32 9c f9 eb                                      bl #0x310440
004a9374  06 30 95 e7                                      ldr r3, [r5, r6]
004a9378  00 30 93 e5                                      ldr r3, [r3]
004a937c  07 20 95 e7                                      ldr r2, [r5, r7]
004a9380  00 20 92 e5                                      ldr r2, [r2]
004a9384  04 00 52 e1                                      cmp r2, r4
004a9388  f2 ff ff 8a                                      bhi #0x4a9358
004a938c  00 00 53 e3                                      cmp r3, #0
004a9390  01 00 00 0a                                      beq #0x4a939c
004a9394  03 00 a0 e1                                      mov r0, r3
004a9398  28 9c f9 eb                                      bl #0x310440
004a939c  06 30 95 e7                                      ldr r3, [r5, r6]
004a93a0  00 20 a0 e3                                      mov r2, #0
004a93a4  00 20 83 e5                                      str r2, [r3]
004a93a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a93ac  68 b7 4e 00 3c 17 00 00 c8 0b 00 00              .byte 0x68, 0xb7, 0x4e, 0x00, 0x3c, 0x17, 0x00, 0x00, 0xc8, 0x0b, 0x00, 0x00

; FUNCTION 0x004a93b8, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::Charater_Templates
; alias: _ZN6Arrays18Charater_Templates8finalizeEv
; demangled: Arrays::Charater_Templates::finalize()
; decoder-mode: arm
004a93b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a93bc  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a93c0  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a93c4  05 50 8f e0                                      add r5, pc, r5
004a93c8  07 30 95 e7                                      ldr r3, [r5, r7]
004a93cc  00 30 93 e5                                      ldr r3, [r3]
004a93d0  00 00 53 e3                                      cmp r3, #0
004a93d4  2c 00 00 0a                                      beq #0x4a948c
004a93d8  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a93dc  08 20 95 e7                                      ldr r2, [r5, r8]
004a93e0  00 20 92 e5                                      ldr r2, [r2]
004a93e4  00 00 52 e3                                      cmp r2, #0
004a93e8  12 00 00 0a                                      beq #0x4a9438
004a93ec  00 40 a0 e3                                      mov r4, #0
004a93f0  04 60 a0 e1                                      mov r6, r4
004a93f4  01 00 00 ea                                      b #0x4a9400
004a93f8  07 30 95 e7                                      ldr r3, [r5, r7]
004a93fc  00 30 93 e5                                      ldr r3, [r3]
004a9400  04 00 83 e0                                      add r0, r3, r4
004a9404  04 30 93 e7                                      ldr r3, [r3, r4]
004a9408  0f e0 a0 e1                                      mov lr, pc
004a940c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a9410  08 30 95 e7                                      ldr r3, [r5, r8]
004a9414  01 60 86 e2                                      add r6, r6, #1
004a9418  0c 40 84 e2                                      add r4, r4, #0xc
004a941c  00 30 93 e5                                      ldr r3, [r3]
004a9420  06 00 53 e1                                      cmp r3, r6
004a9424  f3 ff ff 8a                                      bhi #0x4a93f8
004a9428  07 30 95 e7                                      ldr r3, [r5, r7]
004a942c  00 30 93 e5                                      ldr r3, [r3]
004a9430  00 00 53 e3                                      cmp r3, #0
004a9434  11 00 00 0a                                      beq #0x4a9480
004a9438  04 20 13 e5                                      ldr r2, [r3, #-4]
004a943c  0c 00 a0 e3                                      mov r0, #0xc
004a9440  90 32 20 e0                                      mla r0, r0, r2, r3
004a9444  00 00 53 e1                                      cmp r3, r0
004a9448  01 00 00 1a                                      bne #0x4a9454
004a944c  09 00 00 ea                                      b #0x4a9478
004a9450  04 00 a0 e1                                      mov r0, r4
004a9454  0c 40 40 e2                                      sub r4, r0, #0xc
004a9458  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a945c  04 00 a0 e1                                      mov r0, r4
004a9460  0f e0 a0 e1                                      mov lr, pc
004a9464  00 f0 93 e5                                      ldr pc, [r3]
004a9468  07 30 95 e7                                      ldr r3, [r5, r7]
004a946c  00 00 93 e5                                      ldr r0, [r3]
004a9470  04 00 50 e1                                      cmp r0, r4
004a9474  f5 ff ff 1a                                      bne #0x4a9450
004a9478  08 00 40 e2                                      sub r0, r0, #8
004a947c  ef 9b f9 eb                                      bl #0x310440
004a9480  07 30 95 e7                                      ldr r3, [r5, r7]
004a9484  00 20 a0 e3                                      mov r2, #0
004a9488  00 20 83 e5                                      str r2, [r3]
004a948c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9490  cc b6 4e 00 b8 47 00 00 c8 0b 00 00              .byte 0xcc, 0xb6, 0x4e, 0x00, 0xb8, 0x47, 0x00, 0x00, 0xc8, 0x0b, 0x00, 0x00

; FUNCTION 0x004b3f5c, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::Charater_Templates
; alias: _ZN6Arrays18Charater_Templates4readEP11IStreamBase
; demangled: Arrays::Charater_Templates::read(IStreamBase*)
; decoder-mode: arm
004b3f5c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b3f60  0c d0 4d e2                                      sub sp, sp, #0xc
004b3f64  00 a0 a0 e1                                      mov sl, r0
004b3f68  c8 7e f9 eb                                      bl #0x313a90
004b3f6c  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b3f70  01 30 a0 e3                                      mov r3, #1
004b3f74  00 00 53 e3                                      cmp r3, #0
004b3f78  04 00 8d e5                                      str r0, [sp, #4]
004b3f7c  00 30 8d e5                                      str r3, [sp]
004b3f80  06 60 8f e0                                      add r6, pc, r6
004b3f84  10 00 00 1a                                      bne #0x4b3fcc
004b3f88  04 30 8d e2                                      add r3, sp, #4
004b3f8c  02 20 83 e2                                      add r2, r3, #2
004b3f90  01 30 83 e2                                      add r3, r3, #1
004b3f94  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3f98  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b3f9c  03 00 52 e1                                      cmp r2, r3
004b3fa0  01 10 20 e0                                      eor r1, r0, r1
004b3fa4  01 10 43 e5                                      strb r1, [r3, #-1]
004b3fa8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3fac  00 10 21 e0                                      eor r1, r1, r0
004b3fb0  01 10 c2 e5                                      strb r1, [r2, #1]
004b3fb4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b3fb8  01 20 42 e2                                      sub r2, r2, #1
004b3fbc  00 10 21 e0                                      eor r1, r1, r0
004b3fc0  01 10 43 e5                                      strb r1, [r3, #-1]
004b3fc4  01 30 83 e2                                      add r3, r3, #1
004b3fc8  f1 ff ff 8a                                      bhi #0x4b3f94
004b3fcc  f9 d4 ff eb                                      bl #0x4a93b8
004b3fd0  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b3fd4  04 40 9d e5                                      ldr r4, [sp, #4]
004b3fd8  0c 50 a0 e3                                      mov r5, #0xc
004b3fdc  07 30 96 e7                                      ldr r3, [r6, r7]
004b3fe0  95 04 00 e0                                      mul r0, r5, r4
004b3fe4  00 40 83 e5                                      str r4, [r3]
004b3fe8  08 00 80 e2                                      add r0, r0, #8
004b3fec  01 10 a0 e3                                      mov r1, #1
004b3ff0  5d 71 f9 eb                                      bl #0x31056c
004b3ff4  00 00 54 e3                                      cmp r4, #0
004b3ff8  00 50 80 e5                                      str r5, [r0]
004b3ffc  04 40 80 e5                                      str r4, [r0, #4]
004b4000  08 30 80 e2                                      add r3, r0, #8
004b4004  0a 00 00 0a                                      beq #0x4b4034
004b4008  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b400c  00 20 a0 e3                                      mov r2, #0
004b4010  02 c0 a0 e1                                      mov ip, r2
004b4014  01 10 96 e7                                      ldr r1, [r6, r1]
004b4018  08 10 81 e2                                      add r1, r1, #8
004b401c  01 20 82 e2                                      add r2, r2, #1
004b4020  04 00 52 e1                                      cmp r2, r4
004b4024  08 10 80 e5                                      str r1, [r0, #8]
004b4028  10 c0 80 e5                                      str ip, [r0, #0x10]
004b402c  0c 00 80 e2                                      add r0, r0, #0xc
004b4030  f9 ff ff 1a                                      bne #0x4b401c
004b4034  07 20 96 e7                                      ldr r2, [r6, r7]
004b4038  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b403c  00 10 92 e5                                      ldr r1, [r2]
004b4040  08 20 96 e7                                      ldr r2, [r6, r8]
004b4044  00 00 51 e3                                      cmp r1, #0
004b4048  00 30 82 e5                                      str r3, [r2]
004b404c  0f 00 00 0a                                      beq #0x4b4090
004b4050  00 40 a0 e3                                      mov r4, #0
004b4054  04 50 a0 e1                                      mov r5, r4
004b4058  01 00 00 ea                                      b #0x4b4064
004b405c  08 30 96 e7                                      ldr r3, [r6, r8]
004b4060  00 30 93 e5                                      ldr r3, [r3]
004b4064  04 00 83 e0                                      add r0, r3, r4
004b4068  0a 10 a0 e1                                      mov r1, sl
004b406c  04 30 93 e7                                      ldr r3, [r3, r4]
004b4070  0f e0 a0 e1                                      mov lr, pc
004b4074  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b4078  07 30 96 e7                                      ldr r3, [r6, r7]
004b407c  01 50 85 e2                                      add r5, r5, #1
004b4080  0c 40 84 e2                                      add r4, r4, #0xc
004b4084  00 30 93 e5                                      ldr r3, [r3]
004b4088  05 00 53 e1                                      cmp r3, r5
004b408c  f2 ff ff 8a                                      bhi #0x4b405c
004b4090  0c d0 8d e2                                      add sp, sp, #0xc
004b4094  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b4098  10 0b 4e 00 c8 0b 00 00 a4 3c 00 00 b8 47 00 00  .byte 0x10, 0x0b, 0x4e, 0x00, 0xc8, 0x0b, 0x00, 0x00, 0xa4, 0x3c, 0x00, 0x00, 0xb8, 0x47, 0x00, 0x00

; FUNCTION 0x004b7970, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::Charater_Templates
; alias: _ZN6Arrays18Charater_Templates9readNamesEP11IStreamBase
; demangled: Arrays::Charater_Templates::readNames(IStreamBase*)
; decoder-mode: arm
004b7970  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b7974  00 70 a0 e1                                      mov r7, r0
004b7978  1c d0 4d e2                                      sub sp, sp, #0x1c
004b797c  66 c6 ff eb                                      bl #0x4a931c
004b7980  07 00 a0 e1                                      mov r0, r7
004b7984  41 70 f9 eb                                      bl #0x313a90
004b7988  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b798c  01 30 a0 e3                                      mov r3, #1
004b7990  00 00 53 e3                                      cmp r3, #0
004b7994  06 60 8f e0                                      add r6, pc, r6
004b7998  14 00 8d e5                                      str r0, [sp, #0x14]
004b799c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b79a0  12 00 00 1a                                      bne #0x4b79f0
004b79a4  14 30 8d e2                                      add r3, sp, #0x14
004b79a8  02 20 83 e2                                      add r2, r3, #2
004b79ac  01 30 83 e2                                      add r3, r3, #1
004b79b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b79b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b79b8  03 00 52 e1                                      cmp r2, r3
004b79bc  02 40 a0 e1                                      mov r4, r2
004b79c0  01 10 20 e0                                      eor r1, r0, r1
004b79c4  01 10 43 e5                                      strb r1, [r3, #-1]
004b79c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b79cc  00 10 21 e0                                      eor r1, r1, r0
004b79d0  01 10 c2 e5                                      strb r1, [r2, #1]
004b79d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b79d8  01 20 42 e2                                      sub r2, r2, #1
004b79dc  00 10 21 e0                                      eor r1, r1, r0
004b79e0  01 10 43 e5                                      strb r1, [r3, #-1]
004b79e4  01 30 83 e2                                      add r3, r3, #1
004b79e8  f0 ff ff 8a                                      bhi #0x4b79b0
004b79ec  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b79f0  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b79f4  03 30 96 e7                                      ldr r3, [r6, r3]
004b79f8  00 30 93 e5                                      ldr r3, [r3]
004b79fc  00 00 53 e1                                      cmp r3, r0
004b7a00  01 00 00 0a                                      beq #0x4b7a0c
004b7a04  1c d0 8d e2                                      add sp, sp, #0x1c
004b7a08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b7a0c  00 01 a0 e1                                      lsl r0, r0, #2
004b7a10  01 10 a0 e3                                      mov r1, #1
004b7a14  d4 62 f9 eb                                      bl #0x31056c
004b7a18  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b7a1c  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b7a20  09 30 96 e7                                      ldr r3, [r6, sb]
004b7a24  00 00 52 e3                                      cmp r2, #0
004b7a28  00 00 83 e5                                      str r0, [r3]
004b7a2c  f4 ff ff 0a                                      beq #0x4b7a04
004b7a30  10 a0 8d e2                                      add sl, sp, #0x10
004b7a34  01 80 a0 e3                                      mov r8, #1
004b7a38  08 10 8a e0                                      add r1, sl, r8
004b7a3c  02 30 8a e2                                      add r3, sl, #2
004b7a40  00 40 a0 e3                                      mov r4, #0
004b7a44  0a 00 8d e8                                      stm sp, {r1, r3}
004b7a48  07 00 a0 e1                                      mov r0, r7
004b7a4c  0a 10 a0 e1                                      mov r1, sl
004b7a50  d2 9d fc eb                                      bl #0x3df1a0
004b7a54  00 00 58 e3                                      cmp r8, #0
004b7a58  0c 80 8d e5                                      str r8, [sp, #0xc]
004b7a5c  0f 00 00 1a                                      bne #0x4b7aa0
004b7a60  00 30 9d e5                                      ldr r3, [sp]
004b7a64  04 20 9d e5                                      ldr r2, [sp, #4]
004b7a68  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7a6c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7a70  03 00 52 e1                                      cmp r2, r3
004b7a74  01 10 20 e0                                      eor r1, r0, r1
004b7a78  01 10 43 e5                                      strb r1, [r3, #-1]
004b7a7c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7a80  00 10 21 e0                                      eor r1, r1, r0
004b7a84  01 10 c2 e5                                      strb r1, [r2, #1]
004b7a88  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7a8c  01 20 42 e2                                      sub r2, r2, #1
004b7a90  00 10 21 e0                                      eor r1, r1, r0
004b7a94  01 10 43 e5                                      strb r1, [r3, #-1]
004b7a98  01 30 83 e2                                      add r3, r3, #1
004b7a9c  f1 ff ff 8a                                      bhi #0x4b7a68
004b7aa0  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b7aa4  09 50 96 e7                                      ldr r5, [r6, sb]
004b7aa8  01 10 a0 e3                                      mov r1, #1
004b7aac  01 00 80 e0                                      add r0, r0, r1
004b7ab0  00 b0 95 e5                                      ldr fp, [r5]
004b7ab4  ac 62 f9 eb                                      bl #0x31056c
004b7ab8  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b7abc  00 30 95 e5                                      ldr r3, [r5]
004b7ac0  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b7ac4  07 00 a0 e1                                      mov r0, r7
004b7ac8  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b7acc  00 30 a0 e3                                      mov r3, #0
004b7ad0  5f 7e f9 eb                                      bl #0x317454
004b7ad4  00 30 95 e5                                      ldr r3, [r5]
004b7ad8  00 10 a0 e3                                      mov r1, #0
004b7adc  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b7ae0  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b7ae4  01 40 84 e2                                      add r4, r4, #1
004b7ae8  03 10 c2 e7                                      strb r1, [r2, r3]
004b7aec  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b7af0  04 00 53 e1                                      cmp r3, r4
004b7af4  d3 ff ff 8a                                      bhi #0x4b7a48
004b7af8  c1 ff ff ea                                      b #0x4b7a04
; mapping-symbol data/literal pool
004b7afc  fc d0 4d 00 c8 0b 00 00 3c 17 00 00              .byte 0xfc, 0xd0, 0x4d, 0x00, 0xc8, 0x0b, 0x00, 0x00, 0x3c, 0x17, 0x00, 0x00
