; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a85b4, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::FootstepEffectTable
; alias: _ZN6Arrays19FootstepEffectTable13finalizeNamesEv
; demangled: Arrays::FootstepEffectTable::finalizeNames()
; decoder-mode: arm
004a85b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a85b8  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a85bc  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a85c0  05 50 8f e0                                      add r5, pc, r5
004a85c4  06 30 95 e7                                      ldr r3, [r5, r6]
004a85c8  00 30 93 e5                                      ldr r3, [r3]
004a85cc  00 00 53 e3                                      cmp r3, #0
004a85d0  1a 00 00 0a                                      beq #0x4a8640
004a85d4  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a85d8  07 20 95 e7                                      ldr r2, [r5, r7]
004a85dc  00 20 92 e5                                      ldr r2, [r2]
004a85e0  00 00 52 e3                                      cmp r2, #0
004a85e4  10 00 00 0a                                      beq #0x4a862c
004a85e8  00 40 a0 e3                                      mov r4, #0
004a85ec  01 00 00 ea                                      b #0x4a85f8
004a85f0  06 30 95 e7                                      ldr r3, [r5, r6]
004a85f4  00 30 93 e5                                      ldr r3, [r3]
004a85f8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a85fc  01 40 84 e2                                      add r4, r4, #1
004a8600  00 00 50 e3                                      cmp r0, #0
004a8604  02 00 00 0a                                      beq #0x4a8614
004a8608  8c 9f f9 eb                                      bl #0x310440
004a860c  06 30 95 e7                                      ldr r3, [r5, r6]
004a8610  00 30 93 e5                                      ldr r3, [r3]
004a8614  07 20 95 e7                                      ldr r2, [r5, r7]
004a8618  00 20 92 e5                                      ldr r2, [r2]
004a861c  04 00 52 e1                                      cmp r2, r4
004a8620  f2 ff ff 8a                                      bhi #0x4a85f0
004a8624  00 00 53 e3                                      cmp r3, #0
004a8628  01 00 00 0a                                      beq #0x4a8634
004a862c  03 00 a0 e1                                      mov r0, r3
004a8630  82 9f f9 eb                                      bl #0x310440
004a8634  06 30 95 e7                                      ldr r3, [r5, r6]
004a8638  00 20 a0 e3                                      mov r2, #0
004a863c  00 20 83 e5                                      str r2, [r3]
004a8640  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8644  d0 c4 4e 00 68 38 00 00 ac 1b 00 00              .byte 0xd0, 0xc4, 0x4e, 0x00, 0x68, 0x38, 0x00, 0x00, 0xac, 0x1b, 0x00, 0x00

; FUNCTION 0x004a8650, declared_size=216, range_size=216, mode=arm
; class-group: Arrays::FootstepEffectTable
; alias: _ZN6Arrays19FootstepEffectTable8finalizeEv
; demangled: Arrays::FootstepEffectTable::finalize()
; decoder-mode: arm
004a8650  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8654  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004a8658  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
004a865c  05 50 8f e0                                      add r5, pc, r5
004a8660  06 30 95 e7                                      ldr r3, [r5, r6]
004a8664  00 30 93 e5                                      ldr r3, [r3]
004a8668  00 00 53 e3                                      cmp r3, #0
004a866c  29 00 00 0a                                      beq #0x4a8718
004a8670  ac 70 9f e5                                      ldr r7, [pc, #0xac]
004a8674  07 20 95 e7                                      ldr r2, [r5, r7]
004a8678  00 20 92 e5                                      ldr r2, [r2]
004a867c  00 00 52 e3                                      cmp r2, #0
004a8680  10 00 00 0a                                      beq #0x4a86c8
004a8684  00 40 a0 e3                                      mov r4, #0
004a8688  01 00 00 ea                                      b #0x4a8694
004a868c  06 30 95 e7                                      ldr r3, [r5, r6]
004a8690  00 30 93 e5                                      ldr r3, [r3]
004a8694  84 02 83 e0                                      add r0, r3, r4, lsl #5
004a8698  84 32 93 e7                                      ldr r3, [r3, r4, lsl #5]
004a869c  0f e0 a0 e1                                      mov lr, pc
004a86a0  08 f0 93 e5                                      ldr pc, [r3, #8]
004a86a4  07 30 95 e7                                      ldr r3, [r5, r7]
004a86a8  01 40 84 e2                                      add r4, r4, #1
004a86ac  00 30 93 e5                                      ldr r3, [r3]
004a86b0  04 00 53 e1                                      cmp r3, r4
004a86b4  f4 ff ff 8a                                      bhi #0x4a868c
004a86b8  06 30 95 e7                                      ldr r3, [r5, r6]
004a86bc  00 30 93 e5                                      ldr r3, [r3]
004a86c0  00 00 53 e3                                      cmp r3, #0
004a86c4  10 00 00 0a                                      beq #0x4a870c
004a86c8  04 00 13 e5                                      ldr r0, [r3, #-4]
004a86cc  80 02 83 e0                                      add r0, r3, r0, lsl #5
004a86d0  00 00 53 e1                                      cmp r3, r0
004a86d4  01 00 00 1a                                      bne #0x4a86e0
004a86d8  09 00 00 ea                                      b #0x4a8704
004a86dc  04 00 a0 e1                                      mov r0, r4
004a86e0  20 40 40 e2                                      sub r4, r0, #0x20
004a86e4  20 30 10 e5                                      ldr r3, [r0, #-0x20]
004a86e8  04 00 a0 e1                                      mov r0, r4
004a86ec  0f e0 a0 e1                                      mov lr, pc
004a86f0  00 f0 93 e5                                      ldr pc, [r3]
004a86f4  06 30 95 e7                                      ldr r3, [r5, r6]
004a86f8  00 00 93 e5                                      ldr r0, [r3]
004a86fc  04 00 50 e1                                      cmp r0, r4
004a8700  f5 ff ff 1a                                      bne #0x4a86dc
004a8704  08 00 40 e2                                      sub r0, r0, #8
004a8708  4c 9f f9 eb                                      bl #0x310440
004a870c  06 30 95 e7                                      ldr r3, [r5, r6]
004a8710  00 20 a0 e3                                      mov r2, #0
004a8714  00 20 83 e5                                      str r2, [r3]
004a8718  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a871c  34 c4 4e 00 b4 31 00 00 ac 1b 00 00              .byte 0x34, 0xc4, 0x4e, 0x00, 0xb4, 0x31, 0x00, 0x00, 0xac, 0x1b, 0x00, 0x00

; FUNCTION 0x004b2e08, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::FootstepEffectTable
; alias: _ZN6Arrays19FootstepEffectTable9readNamesEP11IStreamBase
; demangled: Arrays::FootstepEffectTable::readNames(IStreamBase*)
; decoder-mode: arm
004b2e08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b2e0c  00 70 a0 e1                                      mov r7, r0
004b2e10  1c d0 4d e2                                      sub sp, sp, #0x1c
004b2e14  e6 d5 ff eb                                      bl #0x4a85b4
004b2e18  07 00 a0 e1                                      mov r0, r7
004b2e1c  1b 83 f9 eb                                      bl #0x313a90
004b2e20  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b2e24  01 30 a0 e3                                      mov r3, #1
004b2e28  00 00 53 e3                                      cmp r3, #0
004b2e2c  06 60 8f e0                                      add r6, pc, r6
004b2e30  14 00 8d e5                                      str r0, [sp, #0x14]
004b2e34  0c 30 8d e5                                      str r3, [sp, #0xc]
004b2e38  12 00 00 1a                                      bne #0x4b2e88
004b2e3c  14 30 8d e2                                      add r3, sp, #0x14
004b2e40  02 20 83 e2                                      add r2, r3, #2
004b2e44  01 30 83 e2                                      add r3, r3, #1
004b2e48  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2e4c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2e50  03 00 52 e1                                      cmp r2, r3
004b2e54  02 40 a0 e1                                      mov r4, r2
004b2e58  01 10 20 e0                                      eor r1, r0, r1
004b2e5c  01 10 43 e5                                      strb r1, [r3, #-1]
004b2e60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2e64  00 10 21 e0                                      eor r1, r1, r0
004b2e68  01 10 c2 e5                                      strb r1, [r2, #1]
004b2e6c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2e70  01 20 42 e2                                      sub r2, r2, #1
004b2e74  00 10 21 e0                                      eor r1, r1, r0
004b2e78  01 10 43 e5                                      strb r1, [r3, #-1]
004b2e7c  01 30 83 e2                                      add r3, r3, #1
004b2e80  f0 ff ff 8a                                      bhi #0x4b2e48
004b2e84  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b2e88  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b2e8c  03 30 96 e7                                      ldr r3, [r6, r3]
004b2e90  00 30 93 e5                                      ldr r3, [r3]
004b2e94  00 00 53 e1                                      cmp r3, r0
004b2e98  01 00 00 0a                                      beq #0x4b2ea4
004b2e9c  1c d0 8d e2                                      add sp, sp, #0x1c
004b2ea0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b2ea4  00 01 a0 e1                                      lsl r0, r0, #2
004b2ea8  01 10 a0 e3                                      mov r1, #1
004b2eac  ae 75 f9 eb                                      bl #0x31056c
004b2eb0  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b2eb4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b2eb8  09 30 96 e7                                      ldr r3, [r6, sb]
004b2ebc  00 00 52 e3                                      cmp r2, #0
004b2ec0  00 00 83 e5                                      str r0, [r3]
004b2ec4  f4 ff ff 0a                                      beq #0x4b2e9c
004b2ec8  10 a0 8d e2                                      add sl, sp, #0x10
004b2ecc  01 80 a0 e3                                      mov r8, #1
004b2ed0  08 10 8a e0                                      add r1, sl, r8
004b2ed4  02 30 8a e2                                      add r3, sl, #2
004b2ed8  00 40 a0 e3                                      mov r4, #0
004b2edc  0a 00 8d e8                                      stm sp, {r1, r3}
004b2ee0  07 00 a0 e1                                      mov r0, r7
004b2ee4  0a 10 a0 e1                                      mov r1, sl
004b2ee8  ac b0 fc eb                                      bl #0x3df1a0
004b2eec  00 00 58 e3                                      cmp r8, #0
004b2ef0  0c 80 8d e5                                      str r8, [sp, #0xc]
004b2ef4  0f 00 00 1a                                      bne #0x4b2f38
004b2ef8  00 30 9d e5                                      ldr r3, [sp]
004b2efc  04 20 9d e5                                      ldr r2, [sp, #4]
004b2f00  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2f04  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2f08  03 00 52 e1                                      cmp r2, r3
004b2f0c  01 10 20 e0                                      eor r1, r0, r1
004b2f10  01 10 43 e5                                      strb r1, [r3, #-1]
004b2f14  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2f18  00 10 21 e0                                      eor r1, r1, r0
004b2f1c  01 10 c2 e5                                      strb r1, [r2, #1]
004b2f20  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2f24  01 20 42 e2                                      sub r2, r2, #1
004b2f28  00 10 21 e0                                      eor r1, r1, r0
004b2f2c  01 10 43 e5                                      strb r1, [r3, #-1]
004b2f30  01 30 83 e2                                      add r3, r3, #1
004b2f34  f1 ff ff 8a                                      bhi #0x4b2f00
004b2f38  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b2f3c  09 50 96 e7                                      ldr r5, [r6, sb]
004b2f40  01 10 a0 e3                                      mov r1, #1
004b2f44  01 00 80 e0                                      add r0, r0, r1
004b2f48  00 b0 95 e5                                      ldr fp, [r5]
004b2f4c  86 75 f9 eb                                      bl #0x31056c
004b2f50  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b2f54  00 30 95 e5                                      ldr r3, [r5]
004b2f58  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b2f5c  07 00 a0 e1                                      mov r0, r7
004b2f60  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b2f64  00 30 a0 e3                                      mov r3, #0
004b2f68  39 91 f9 eb                                      bl #0x317454
004b2f6c  00 30 95 e5                                      ldr r3, [r5]
004b2f70  00 10 a0 e3                                      mov r1, #0
004b2f74  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b2f78  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b2f7c  01 40 84 e2                                      add r4, r4, #1
004b2f80  03 10 c2 e7                                      strb r1, [r2, r3]
004b2f84  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b2f88  04 00 53 e1                                      cmp r3, r4
004b2f8c  d3 ff ff 8a                                      bhi #0x4b2ee0
004b2f90  c1 ff ff ea                                      b #0x4b2e9c
; mapping-symbol data/literal pool
004b2f94  64 1c 4e 00 ac 1b 00 00 68 38 00 00              .byte 0x64, 0x1c, 0x4e, 0x00, 0xac, 0x1b, 0x00, 0x00, 0x68, 0x38, 0x00, 0x00

; FUNCTION 0x004bc278, declared_size=328, range_size=328, mode=arm
; class-group: Arrays::FootstepEffectTable
; alias: _ZN6Arrays19FootstepEffectTable4readEP11IStreamBase
; demangled: Arrays::FootstepEffectTable::read(IStreamBase*)
; decoder-mode: arm
004bc278  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004bc27c  08 d0 4d e2                                      sub sp, sp, #8
004bc280  00 80 a0 e1                                      mov r8, r0
004bc284  01 5e f9 eb                                      bl #0x313a90
004bc288  20 51 9f e5                                      ldr r5, [pc, #0x120]
004bc28c  01 30 a0 e3                                      mov r3, #1
004bc290  00 00 53 e3                                      cmp r3, #0
004bc294  04 00 8d e5                                      str r0, [sp, #4]
004bc298  00 30 8d e5                                      str r3, [sp]
004bc29c  05 50 8f e0                                      add r5, pc, r5
004bc2a0  10 00 00 1a                                      bne #0x4bc2e8
004bc2a4  04 30 8d e2                                      add r3, sp, #4
004bc2a8  02 20 83 e2                                      add r2, r3, #2
004bc2ac  01 30 83 e2                                      add r3, r3, #1
004bc2b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc2b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bc2b8  03 00 52 e1                                      cmp r2, r3
004bc2bc  01 10 20 e0                                      eor r1, r0, r1
004bc2c0  01 10 43 e5                                      strb r1, [r3, #-1]
004bc2c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc2c8  00 10 21 e0                                      eor r1, r1, r0
004bc2cc  01 10 c2 e5                                      strb r1, [r2, #1]
004bc2d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bc2d4  01 20 42 e2                                      sub r2, r2, #1
004bc2d8  00 10 21 e0                                      eor r1, r1, r0
004bc2dc  01 10 43 e5                                      strb r1, [r3, #-1]
004bc2e0  01 30 83 e2                                      add r3, r3, #1
004bc2e4  f1 ff ff 8a                                      bhi #0x4bc2b0
004bc2e8  c4 60 9f e5                                      ldr r6, [pc, #0xc4]
004bc2ec  d7 b0 ff eb                                      bl #0x4a8650
004bc2f0  04 40 9d e5                                      ldr r4, [sp, #4]
004bc2f4  06 30 95 e7                                      ldr r3, [r5, r6]
004bc2f8  01 10 a0 e3                                      mov r1, #1
004bc2fc  84 02 a0 e1                                      lsl r0, r4, #5
004bc300  00 40 83 e5                                      str r4, [r3]
004bc304  08 00 80 e2                                      add r0, r0, #8
004bc308  97 50 f9 eb                                      bl #0x31056c
004bc30c  20 30 a0 e3                                      mov r3, #0x20
004bc310  00 00 54 e3                                      cmp r4, #0
004bc314  18 00 80 e8                                      stm r0, {r3, r4}
004bc318  08 30 80 e2                                      add r3, r0, #8
004bc31c  0c 00 00 0a                                      beq #0x4bc354
004bc320  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bc324  00 20 a0 e3                                      mov r2, #0
004bc328  01 c0 95 e7                                      ldr ip, [r5, r1]
004bc32c  02 10 a0 e1                                      mov r1, r2
004bc330  08 c0 8c e2                                      add ip, ip, #8
004bc334  01 20 82 e2                                      add r2, r2, #1
004bc338  04 00 52 e1                                      cmp r2, r4
004bc33c  08 c0 80 e5                                      str ip, [r0, #8]
004bc340  14 10 80 e5                                      str r1, [r0, #0x14]
004bc344  1c 10 80 e5                                      str r1, [r0, #0x1c]
004bc348  24 10 80 e5                                      str r1, [r0, #0x24]
004bc34c  20 00 80 e2                                      add r0, r0, #0x20
004bc350  f7 ff ff 1a                                      bne #0x4bc334
004bc354  06 20 95 e7                                      ldr r2, [r5, r6]
004bc358  5c 70 9f e5                                      ldr r7, [pc, #0x5c]
004bc35c  00 10 92 e5                                      ldr r1, [r2]
004bc360  07 20 95 e7                                      ldr r2, [r5, r7]
004bc364  00 00 51 e3                                      cmp r1, #0
004bc368  00 30 82 e5                                      str r3, [r2]
004bc36c  0d 00 00 0a                                      beq #0x4bc3a8
004bc370  00 40 a0 e3                                      mov r4, #0
004bc374  01 00 00 ea                                      b #0x4bc380
004bc378  07 30 95 e7                                      ldr r3, [r5, r7]
004bc37c  00 30 93 e5                                      ldr r3, [r3]
004bc380  84 02 83 e0                                      add r0, r3, r4, lsl #5
004bc384  08 10 a0 e1                                      mov r1, r8
004bc388  84 32 93 e7                                      ldr r3, [r3, r4, lsl #5]
004bc38c  0f e0 a0 e1                                      mov lr, pc
004bc390  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bc394  06 30 95 e7                                      ldr r3, [r5, r6]
004bc398  01 40 84 e2                                      add r4, r4, #1
004bc39c  00 30 93 e5                                      ldr r3, [r3]
004bc3a0  04 00 53 e1                                      cmp r3, r4
004bc3a4  f3 ff ff 8a                                      bhi #0x4bc378
004bc3a8  08 d0 8d e2                                      add sp, sp, #8
004bc3ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004bc3b0  f4 87 4d 00 ac 1b 00 00 f0 13 00 00 b4 31 00 00  .byte 0xf4, 0x87, 0x4d, 0x00, 0xac, 0x1b, 0x00, 0x00, 0xf0, 0x13, 0x00, 0x00, 0xb4, 0x31, 0x00, 0x00
