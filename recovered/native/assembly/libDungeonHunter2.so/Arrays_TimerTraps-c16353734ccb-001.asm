; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a754c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::TimerTraps
; alias: _ZN6Arrays10TimerTraps13finalizeNamesEv
; demangled: Arrays::TimerTraps::finalizeNames()
; decoder-mode: arm
004a754c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7550  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a7554  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a7558  05 50 8f e0                                      add r5, pc, r5
004a755c  06 30 95 e7                                      ldr r3, [r5, r6]
004a7560  00 30 93 e5                                      ldr r3, [r3]
004a7564  00 00 53 e3                                      cmp r3, #0
004a7568  1a 00 00 0a                                      beq #0x4a75d8
004a756c  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a7570  07 20 95 e7                                      ldr r2, [r5, r7]
004a7574  00 20 92 e5                                      ldr r2, [r2]
004a7578  00 00 52 e3                                      cmp r2, #0
004a757c  10 00 00 0a                                      beq #0x4a75c4
004a7580  00 40 a0 e3                                      mov r4, #0
004a7584  01 00 00 ea                                      b #0x4a7590
004a7588  06 30 95 e7                                      ldr r3, [r5, r6]
004a758c  00 30 93 e5                                      ldr r3, [r3]
004a7590  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a7594  01 40 84 e2                                      add r4, r4, #1
004a7598  00 00 50 e3                                      cmp r0, #0
004a759c  02 00 00 0a                                      beq #0x4a75ac
004a75a0  a6 a3 f9 eb                                      bl #0x310440
004a75a4  06 30 95 e7                                      ldr r3, [r5, r6]
004a75a8  00 30 93 e5                                      ldr r3, [r3]
004a75ac  07 20 95 e7                                      ldr r2, [r5, r7]
004a75b0  00 20 92 e5                                      ldr r2, [r2]
004a75b4  04 00 52 e1                                      cmp r2, r4
004a75b8  f2 ff ff 8a                                      bhi #0x4a7588
004a75bc  00 00 53 e3                                      cmp r3, #0
004a75c0  01 00 00 0a                                      beq #0x4a75cc
004a75c4  03 00 a0 e1                                      mov r0, r3
004a75c8  9c a3 f9 eb                                      bl #0x310440
004a75cc  06 30 95 e7                                      ldr r3, [r5, r6]
004a75d0  00 20 a0 e3                                      mov r2, #0
004a75d4  00 20 83 e5                                      str r2, [r3]
004a75d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a75dc  38 d5 4e 00 0c 10 00 00 f8 0d 00 00              .byte 0x38, 0xd5, 0x4e, 0x00, 0x0c, 0x10, 0x00, 0x00, 0xf8, 0x0d, 0x00, 0x00

; FUNCTION 0x004a75e8, declared_size=216, range_size=216, mode=arm
; class-group: Arrays::TimerTraps
; alias: _ZN6Arrays10TimerTraps8finalizeEv
; demangled: Arrays::TimerTraps::finalize()
; decoder-mode: arm
004a75e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a75ec  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004a75f0  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
004a75f4  05 50 8f e0                                      add r5, pc, r5
004a75f8  06 30 95 e7                                      ldr r3, [r5, r6]
004a75fc  00 30 93 e5                                      ldr r3, [r3]
004a7600  00 00 53 e3                                      cmp r3, #0
004a7604  29 00 00 0a                                      beq #0x4a76b0
004a7608  ac 70 9f e5                                      ldr r7, [pc, #0xac]
004a760c  07 20 95 e7                                      ldr r2, [r5, r7]
004a7610  00 20 92 e5                                      ldr r2, [r2]
004a7614  00 00 52 e3                                      cmp r2, #0
004a7618  10 00 00 0a                                      beq #0x4a7660
004a761c  00 40 a0 e3                                      mov r4, #0
004a7620  01 00 00 ea                                      b #0x4a762c
004a7624  06 30 95 e7                                      ldr r3, [r5, r6]
004a7628  00 30 93 e5                                      ldr r3, [r3]
004a762c  84 02 83 e0                                      add r0, r3, r4, lsl #5
004a7630  84 32 93 e7                                      ldr r3, [r3, r4, lsl #5]
004a7634  0f e0 a0 e1                                      mov lr, pc
004a7638  08 f0 93 e5                                      ldr pc, [r3, #8]
004a763c  07 30 95 e7                                      ldr r3, [r5, r7]
004a7640  01 40 84 e2                                      add r4, r4, #1
004a7644  00 30 93 e5                                      ldr r3, [r3]
004a7648  04 00 53 e1                                      cmp r3, r4
004a764c  f4 ff ff 8a                                      bhi #0x4a7624
004a7650  06 30 95 e7                                      ldr r3, [r5, r6]
004a7654  00 30 93 e5                                      ldr r3, [r3]
004a7658  00 00 53 e3                                      cmp r3, #0
004a765c  10 00 00 0a                                      beq #0x4a76a4
004a7660  04 00 13 e5                                      ldr r0, [r3, #-4]
004a7664  80 02 83 e0                                      add r0, r3, r0, lsl #5
004a7668  00 00 53 e1                                      cmp r3, r0
004a766c  01 00 00 1a                                      bne #0x4a7678
004a7670  09 00 00 ea                                      b #0x4a769c
004a7674  04 00 a0 e1                                      mov r0, r4
004a7678  20 40 40 e2                                      sub r4, r0, #0x20
004a767c  20 30 10 e5                                      ldr r3, [r0, #-0x20]
004a7680  04 00 a0 e1                                      mov r0, r4
004a7684  0f e0 a0 e1                                      mov lr, pc
004a7688  00 f0 93 e5                                      ldr pc, [r3]
004a768c  06 30 95 e7                                      ldr r3, [r5, r6]
004a7690  00 00 93 e5                                      ldr r0, [r3]
004a7694  04 00 50 e1                                      cmp r0, r4
004a7698  f5 ff ff 1a                                      bne #0x4a7674
004a769c  08 00 40 e2                                      sub r0, r0, #8
004a76a0  66 a3 f9 eb                                      bl #0x310440
004a76a4  06 30 95 e7                                      ldr r3, [r5, r6]
004a76a8  00 20 a0 e3                                      mov r2, #0
004a76ac  00 20 83 e5                                      str r2, [r3]
004a76b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a76b4  9c d4 4e 00 cc 3f 00 00 f8 0d 00 00              .byte 0x9c, 0xd4, 0x4e, 0x00, 0xcc, 0x3f, 0x00, 0x00, 0xf8, 0x0d, 0x00, 0x00

; FUNCTION 0x004b5e34, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::TimerTraps
; alias: _ZN6Arrays10TimerTraps9readNamesEP11IStreamBase
; demangled: Arrays::TimerTraps::readNames(IStreamBase*)
; decoder-mode: arm
004b5e34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b5e38  00 70 a0 e1                                      mov r7, r0
004b5e3c  1c d0 4d e2                                      sub sp, sp, #0x1c
004b5e40  c1 c5 ff eb                                      bl #0x4a754c
004b5e44  07 00 a0 e1                                      mov r0, r7
004b5e48  10 77 f9 eb                                      bl #0x313a90
004b5e4c  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b5e50  01 30 a0 e3                                      mov r3, #1
004b5e54  00 00 53 e3                                      cmp r3, #0
004b5e58  06 60 8f e0                                      add r6, pc, r6
004b5e5c  14 00 8d e5                                      str r0, [sp, #0x14]
004b5e60  0c 30 8d e5                                      str r3, [sp, #0xc]
004b5e64  12 00 00 1a                                      bne #0x4b5eb4
004b5e68  14 30 8d e2                                      add r3, sp, #0x14
004b5e6c  02 20 83 e2                                      add r2, r3, #2
004b5e70  01 30 83 e2                                      add r3, r3, #1
004b5e74  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5e78  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b5e7c  03 00 52 e1                                      cmp r2, r3
004b5e80  02 40 a0 e1                                      mov r4, r2
004b5e84  01 10 20 e0                                      eor r1, r0, r1
004b5e88  01 10 43 e5                                      strb r1, [r3, #-1]
004b5e8c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5e90  00 10 21 e0                                      eor r1, r1, r0
004b5e94  01 10 c2 e5                                      strb r1, [r2, #1]
004b5e98  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b5e9c  01 20 42 e2                                      sub r2, r2, #1
004b5ea0  00 10 21 e0                                      eor r1, r1, r0
004b5ea4  01 10 43 e5                                      strb r1, [r3, #-1]
004b5ea8  01 30 83 e2                                      add r3, r3, #1
004b5eac  f0 ff ff 8a                                      bhi #0x4b5e74
004b5eb0  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b5eb4  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b5eb8  03 30 96 e7                                      ldr r3, [r6, r3]
004b5ebc  00 30 93 e5                                      ldr r3, [r3]
004b5ec0  00 00 53 e1                                      cmp r3, r0
004b5ec4  01 00 00 0a                                      beq #0x4b5ed0
004b5ec8  1c d0 8d e2                                      add sp, sp, #0x1c
004b5ecc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b5ed0  00 01 a0 e1                                      lsl r0, r0, #2
004b5ed4  01 10 a0 e3                                      mov r1, #1
004b5ed8  a3 69 f9 eb                                      bl #0x31056c
004b5edc  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b5ee0  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b5ee4  09 30 96 e7                                      ldr r3, [r6, sb]
004b5ee8  00 00 52 e3                                      cmp r2, #0
004b5eec  00 00 83 e5                                      str r0, [r3]
004b5ef0  f4 ff ff 0a                                      beq #0x4b5ec8
004b5ef4  10 a0 8d e2                                      add sl, sp, #0x10
004b5ef8  01 80 a0 e3                                      mov r8, #1
004b5efc  08 10 8a e0                                      add r1, sl, r8
004b5f00  02 30 8a e2                                      add r3, sl, #2
004b5f04  00 40 a0 e3                                      mov r4, #0
004b5f08  0a 00 8d e8                                      stm sp, {r1, r3}
004b5f0c  07 00 a0 e1                                      mov r0, r7
004b5f10  0a 10 a0 e1                                      mov r1, sl
004b5f14  a1 a4 fc eb                                      bl #0x3df1a0
004b5f18  00 00 58 e3                                      cmp r8, #0
004b5f1c  0c 80 8d e5                                      str r8, [sp, #0xc]
004b5f20  0f 00 00 1a                                      bne #0x4b5f64
004b5f24  00 30 9d e5                                      ldr r3, [sp]
004b5f28  04 20 9d e5                                      ldr r2, [sp, #4]
004b5f2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5f30  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b5f34  03 00 52 e1                                      cmp r2, r3
004b5f38  01 10 20 e0                                      eor r1, r0, r1
004b5f3c  01 10 43 e5                                      strb r1, [r3, #-1]
004b5f40  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5f44  00 10 21 e0                                      eor r1, r1, r0
004b5f48  01 10 c2 e5                                      strb r1, [r2, #1]
004b5f4c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b5f50  01 20 42 e2                                      sub r2, r2, #1
004b5f54  00 10 21 e0                                      eor r1, r1, r0
004b5f58  01 10 43 e5                                      strb r1, [r3, #-1]
004b5f5c  01 30 83 e2                                      add r3, r3, #1
004b5f60  f1 ff ff 8a                                      bhi #0x4b5f2c
004b5f64  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b5f68  09 50 96 e7                                      ldr r5, [r6, sb]
004b5f6c  01 10 a0 e3                                      mov r1, #1
004b5f70  01 00 80 e0                                      add r0, r0, r1
004b5f74  00 b0 95 e5                                      ldr fp, [r5]
004b5f78  7b 69 f9 eb                                      bl #0x31056c
004b5f7c  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b5f80  00 30 95 e5                                      ldr r3, [r5]
004b5f84  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b5f88  07 00 a0 e1                                      mov r0, r7
004b5f8c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b5f90  00 30 a0 e3                                      mov r3, #0
004b5f94  2e 85 f9 eb                                      bl #0x317454
004b5f98  00 30 95 e5                                      ldr r3, [r5]
004b5f9c  00 10 a0 e3                                      mov r1, #0
004b5fa0  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b5fa4  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b5fa8  01 40 84 e2                                      add r4, r4, #1
004b5fac  03 10 c2 e7                                      strb r1, [r2, r3]
004b5fb0  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b5fb4  04 00 53 e1                                      cmp r3, r4
004b5fb8  d3 ff ff 8a                                      bhi #0x4b5f0c
004b5fbc  c1 ff ff ea                                      b #0x4b5ec8
; mapping-symbol data/literal pool
004b5fc0  38 ec 4d 00 f8 0d 00 00 0c 10 00 00              .byte 0x38, 0xec, 0x4d, 0x00, 0xf8, 0x0d, 0x00, 0x00, 0x0c, 0x10, 0x00, 0x00

; FUNCTION 0x004bb46c, declared_size=320, range_size=320, mode=arm
; class-group: Arrays::TimerTraps
; alias: _ZN6Arrays10TimerTraps4readEP11IStreamBase
; demangled: Arrays::TimerTraps::read(IStreamBase*)
; decoder-mode: arm
004bb46c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004bb470  08 d0 4d e2                                      sub sp, sp, #8
004bb474  00 80 a0 e1                                      mov r8, r0
004bb478  84 61 f9 eb                                      bl #0x313a90
004bb47c  18 51 9f e5                                      ldr r5, [pc, #0x118]
004bb480  01 30 a0 e3                                      mov r3, #1
004bb484  00 00 53 e3                                      cmp r3, #0
004bb488  04 00 8d e5                                      str r0, [sp, #4]
004bb48c  00 30 8d e5                                      str r3, [sp]
004bb490  05 50 8f e0                                      add r5, pc, r5
004bb494  10 00 00 1a                                      bne #0x4bb4dc
004bb498  04 30 8d e2                                      add r3, sp, #4
004bb49c  02 20 83 e2                                      add r2, r3, #2
004bb4a0  01 30 83 e2                                      add r3, r3, #1
004bb4a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb4a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bb4ac  03 00 52 e1                                      cmp r2, r3
004bb4b0  01 10 20 e0                                      eor r1, r0, r1
004bb4b4  01 10 43 e5                                      strb r1, [r3, #-1]
004bb4b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb4bc  00 10 21 e0                                      eor r1, r1, r0
004bb4c0  01 10 c2 e5                                      strb r1, [r2, #1]
004bb4c4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bb4c8  01 20 42 e2                                      sub r2, r2, #1
004bb4cc  00 10 21 e0                                      eor r1, r1, r0
004bb4d0  01 10 43 e5                                      strb r1, [r3, #-1]
004bb4d4  01 30 83 e2                                      add r3, r3, #1
004bb4d8  f1 ff ff 8a                                      bhi #0x4bb4a4
004bb4dc  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
004bb4e0  40 b0 ff eb                                      bl #0x4a75e8
004bb4e4  04 40 9d e5                                      ldr r4, [sp, #4]
004bb4e8  06 30 95 e7                                      ldr r3, [r5, r6]
004bb4ec  01 10 a0 e3                                      mov r1, #1
004bb4f0  84 02 a0 e1                                      lsl r0, r4, #5
004bb4f4  00 40 83 e5                                      str r4, [r3]
004bb4f8  08 00 80 e2                                      add r0, r0, #8
004bb4fc  1a 54 f9 eb                                      bl #0x31056c
004bb500  20 30 a0 e3                                      mov r3, #0x20
004bb504  00 00 54 e3                                      cmp r4, #0
004bb508  18 00 80 e8                                      stm r0, {r3, r4}
004bb50c  08 30 80 e2                                      add r3, r0, #8
004bb510  0a 00 00 0a                                      beq #0x4bb540
004bb514  88 10 9f e5                                      ldr r1, [pc, #0x88]
004bb518  00 20 a0 e3                                      mov r2, #0
004bb51c  02 c0 a0 e1                                      mov ip, r2
004bb520  01 10 95 e7                                      ldr r1, [r5, r1]
004bb524  08 10 81 e2                                      add r1, r1, #8
004bb528  01 20 82 e2                                      add r2, r2, #1
004bb52c  04 00 52 e1                                      cmp r2, r4
004bb530  08 10 80 e5                                      str r1, [r0, #8]
004bb534  1c c0 80 e5                                      str ip, [r0, #0x1c]
004bb538  20 00 80 e2                                      add r0, r0, #0x20
004bb53c  f9 ff ff 1a                                      bne #0x4bb528
004bb540  06 20 95 e7                                      ldr r2, [r5, r6]
004bb544  5c 70 9f e5                                      ldr r7, [pc, #0x5c]
004bb548  00 10 92 e5                                      ldr r1, [r2]
004bb54c  07 20 95 e7                                      ldr r2, [r5, r7]
004bb550  00 00 51 e3                                      cmp r1, #0
004bb554  00 30 82 e5                                      str r3, [r2]
004bb558  0d 00 00 0a                                      beq #0x4bb594
004bb55c  00 40 a0 e3                                      mov r4, #0
004bb560  01 00 00 ea                                      b #0x4bb56c
004bb564  07 30 95 e7                                      ldr r3, [r5, r7]
004bb568  00 30 93 e5                                      ldr r3, [r3]
004bb56c  84 02 83 e0                                      add r0, r3, r4, lsl #5
004bb570  08 10 a0 e1                                      mov r1, r8
004bb574  84 32 93 e7                                      ldr r3, [r3, r4, lsl #5]
004bb578  0f e0 a0 e1                                      mov lr, pc
004bb57c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bb580  06 30 95 e7                                      ldr r3, [r5, r6]
004bb584  01 40 84 e2                                      add r4, r4, #1
004bb588  00 30 93 e5                                      ldr r3, [r3]
004bb58c  04 00 53 e1                                      cmp r3, r4
004bb590  f3 ff ff 8a                                      bhi #0x4bb564
004bb594  08 d0 8d e2                                      add sp, sp, #8
004bb598  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004bb59c  00 96 4d 00 f8 0d 00 00 a0 30 00 00 cc 3f 00 00  .byte 0x00, 0x96, 0x4d, 0x00, 0xf8, 0x0d, 0x00, 0x00, 0xa0, 0x30, 0x00, 0x00, 0xcc, 0x3f, 0x00, 0x00
