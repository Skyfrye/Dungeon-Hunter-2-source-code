; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e8da0, declared_size=60, range_size=60, mode=arm
; class-group: b2BlockAllocator
; alias: _ZN16b2BlockAllocator4FreeEPvi
; demangled: b2BlockAllocator::Free(void*, int)
; decoder-mode: arm
007e8da0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007e8da4  00 00 52 e3                                      cmp r2, #0
007e8da8  03 30 8f e0                                      add r3, pc, r3
007e8dac  1e ff 2f 01                                      bxeq lr
007e8db0  20 c0 9f e5                                      ldr ip, [pc, #0x20]
007e8db4  0c 30 93 e7                                      ldr r3, [r3, ip]
007e8db8  02 30 d3 e7                                      ldrb r3, [r3, r2]
007e8dbc  02 30 83 e2                                      add r3, r3, #2
007e8dc0  03 01 80 e0                                      add r0, r0, r3, lsl #2
007e8dc4  04 30 90 e5                                      ldr r3, [r0, #4]
007e8dc8  00 30 81 e5                                      str r3, [r1]
007e8dcc  04 10 80 e5                                      str r1, [r0, #4]
007e8dd0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007e8dd4  e8 bc 1a 00 fc 1a 00 00                          .byte 0xe8, 0xbc, 0x1a, 0x00, 0xfc, 0x1a, 0x00, 0x00

; FUNCTION 0x007e8ddc, declared_size=72, range_size=72, mode=arm
; class-group: b2BlockAllocator
; alias: _ZN16b2BlockAllocatorD1Ev
; demangled: b2BlockAllocator::~b2BlockAllocator()
; decoder-mode: arm
007e8ddc  70 40 2d e9                                      push {r4, r5, r6, lr}
007e8de0  04 30 90 e5                                      ldr r3, [r0, #4]
007e8de4  00 50 a0 e1                                      mov r5, r0
007e8de8  00 00 53 e3                                      cmp r3, #0
007e8dec  08 00 00 da                                      ble #0x7e8e14
007e8df0  00 40 a0 e3                                      mov r4, #0
007e8df4  00 30 95 e5                                      ldr r3, [r5]
007e8df8  84 31 83 e0                                      add r3, r3, r4, lsl #3
007e8dfc  04 00 93 e5                                      ldr r0, [r3, #4]
007e8e00  ad 29 00 eb                                      bl #0x7f34bc
007e8e04  04 30 95 e5                                      ldr r3, [r5, #4]
007e8e08  01 40 84 e2                                      add r4, r4, #1
007e8e0c  04 00 53 e1                                      cmp r3, r4
007e8e10  f7 ff ff ca                                      bgt #0x7e8df4
007e8e14  00 00 95 e5                                      ldr r0, [r5]
007e8e18  a7 29 00 eb                                      bl #0x7f34bc
007e8e1c  05 00 a0 e1                                      mov r0, r5
007e8e20  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007e8e24, declared_size=72, range_size=72, mode=arm
; class-group: b2BlockAllocator
; alias: _ZN16b2BlockAllocatorD2Ev
; demangled: b2BlockAllocator::~b2BlockAllocator()
; decoder-mode: arm
007e8e24  70 40 2d e9                                      push {r4, r5, r6, lr}
007e8e28  04 30 90 e5                                      ldr r3, [r0, #4]
007e8e2c  00 50 a0 e1                                      mov r5, r0
007e8e30  00 00 53 e3                                      cmp r3, #0
007e8e34  08 00 00 da                                      ble #0x7e8e5c
007e8e38  00 40 a0 e3                                      mov r4, #0
007e8e3c  00 30 95 e5                                      ldr r3, [r5]
007e8e40  84 31 83 e0                                      add r3, r3, r4, lsl #3
007e8e44  04 00 93 e5                                      ldr r0, [r3, #4]
007e8e48  9b 29 00 eb                                      bl #0x7f34bc
007e8e4c  04 30 95 e5                                      ldr r3, [r5, #4]
007e8e50  01 40 84 e2                                      add r4, r4, #1
007e8e54  04 00 53 e1                                      cmp r3, r4
007e8e58  f7 ff ff ca                                      bgt #0x7e8e3c
007e8e5c  00 00 95 e5                                      ldr r0, [r5]
007e8e60  95 29 00 eb                                      bl #0x7f34bc
007e8e64  05 00 a0 e1                                      mov r0, r5
007e8e68  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007e8e6c, declared_size=144, range_size=144, mode=arm
; class-group: b2BlockAllocator
; alias: _ZN16b2BlockAllocator5ClearEv
; demangled: b2BlockAllocator::Clear()
; decoder-mode: arm
007e8e6c  70 40 2d e9                                      push {r4, r5, r6, lr}
007e8e70  04 30 90 e5                                      ldr r3, [r0, #4]
007e8e74  00 40 a0 e1                                      mov r4, r0
007e8e78  00 00 53 e3                                      cmp r3, #0
007e8e7c  08 00 00 da                                      ble #0x7e8ea4
007e8e80  00 50 a0 e3                                      mov r5, #0
007e8e84  00 30 94 e5                                      ldr r3, [r4]
007e8e88  85 31 83 e0                                      add r3, r3, r5, lsl #3
007e8e8c  04 00 93 e5                                      ldr r0, [r3, #4]
007e8e90  89 29 00 eb                                      bl #0x7f34bc
007e8e94  04 30 94 e5                                      ldr r3, [r4, #4]
007e8e98  01 50 85 e2                                      add r5, r5, #1
007e8e9c  05 00 53 e1                                      cmp r3, r5
007e8ea0  f7 ff ff ca                                      bgt #0x7e8e84
007e8ea4  08 20 94 e5                                      ldr r2, [r4, #8]
007e8ea8  00 50 a0 e3                                      mov r5, #0
007e8eac  04 50 84 e5                                      str r5, [r4, #4]
007e8eb0  82 21 a0 e1                                      lsl r2, r2, #3
007e8eb4  00 00 94 e5                                      ldr r0, [r4]
007e8eb8  05 10 a0 e1                                      mov r1, r5
007e8ebc  67 95 ec eb                                      bl #0x30e460
007e8ec0  40 50 84 e5                                      str r5, [r4, #0x40]
007e8ec4  0c 50 84 e5                                      str r5, [r4, #0xc]
007e8ec8  10 50 84 e5                                      str r5, [r4, #0x10]
007e8ecc  14 50 84 e5                                      str r5, [r4, #0x14]
007e8ed0  18 50 84 e5                                      str r5, [r4, #0x18]
007e8ed4  1c 50 84 e5                                      str r5, [r4, #0x1c]
007e8ed8  20 50 84 e5                                      str r5, [r4, #0x20]
007e8edc  24 50 84 e5                                      str r5, [r4, #0x24]
007e8ee0  28 50 84 e5                                      str r5, [r4, #0x28]
007e8ee4  2c 50 84 e5                                      str r5, [r4, #0x2c]
007e8ee8  30 50 84 e5                                      str r5, [r4, #0x30]
007e8eec  34 50 84 e5                                      str r5, [r4, #0x34]
007e8ef0  38 50 84 e5                                      str r5, [r4, #0x38]
007e8ef4  3c 50 84 e5                                      str r5, [r4, #0x3c]
007e8ef8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007e8efc, declared_size=224, range_size=224, mode=arm
; class-group: b2BlockAllocator
; alias: _ZN16b2BlockAllocatorC1Ev
; demangled: b2BlockAllocator::b2BlockAllocator()
; decoder-mode: arm
007e8efc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007e8f00  80 30 a0 e3                                      mov r3, #0x80
007e8f04  00 60 a0 e3                                      mov r6, #0
007e8f08  00 50 a0 e1                                      mov r5, r0
007e8f0c  08 30 80 e5                                      str r3, [r0, #8]
007e8f10  04 60 80 e5                                      str r6, [r0, #4]
007e8f14  01 0b a0 e3                                      mov r0, #0x400
007e8f18  75 29 00 eb                                      bl #0x7f34f4
007e8f1c  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
007e8f20  08 20 95 e5                                      ldr r2, [r5, #8]
007e8f24  a4 70 9f e5                                      ldr r7, [pc, #0xa4]
007e8f28  04 40 8f e0                                      add r4, pc, r4
007e8f2c  82 21 a0 e1                                      lsl r2, r2, #3
007e8f30  00 00 85 e5                                      str r0, [r5]
007e8f34  06 10 a0 e1                                      mov r1, r6
007e8f38  48 95 ec eb                                      bl #0x30e460
007e8f3c  07 30 94 e7                                      ldr r3, [r4, r7]
007e8f40  40 60 85 e5                                      str r6, [r5, #0x40]
007e8f44  0c 60 85 e5                                      str r6, [r5, #0xc]
007e8f48  10 60 85 e5                                      str r6, [r5, #0x10]
007e8f4c  14 60 85 e5                                      str r6, [r5, #0x14]
007e8f50  18 60 85 e5                                      str r6, [r5, #0x18]
007e8f54  1c 60 85 e5                                      str r6, [r5, #0x1c]
007e8f58  20 60 85 e5                                      str r6, [r5, #0x20]
007e8f5c  24 60 85 e5                                      str r6, [r5, #0x24]
007e8f60  28 60 85 e5                                      str r6, [r5, #0x28]
007e8f64  2c 60 85 e5                                      str r6, [r5, #0x2c]
007e8f68  30 60 85 e5                                      str r6, [r5, #0x30]
007e8f6c  34 60 85 e5                                      str r6, [r5, #0x34]
007e8f70  38 60 85 e5                                      str r6, [r5, #0x38]
007e8f74  3c 60 85 e5                                      str r6, [r5, #0x3c]
007e8f78  00 20 d3 e5                                      ldrb r2, [r3]
007e8f7c  06 00 52 e1                                      cmp r2, r6
007e8f80  0f 00 00 1a                                      bne #0x7e8fc4
007e8f84  48 30 9f e5                                      ldr r3, [pc, #0x48]
007e8f88  48 60 9f e5                                      ldr r6, [pc, #0x48]
007e8f8c  81 02 00 e3                                      movw r0, #0x281
007e8f90  03 c0 94 e7                                      ldr ip, [r4, r3]
007e8f94  01 30 a0 e3                                      mov r3, #1
007e8f98  02 11 9c e7                                      ldr r1, [ip, r2, lsl #2]
007e8f9c  01 00 53 e1                                      cmp r3, r1
007e8fa0  06 10 94 e7                                      ldr r1, [r4, r6]
007e8fa4  01 20 82 c2                                      addgt r2, r2, #1
007e8fa8  01 20 c3 e7                                      strb r2, [r3, r1]
007e8fac  01 30 83 e2                                      add r3, r3, #1
007e8fb0  00 00 53 e1                                      cmp r3, r0
007e8fb4  f7 ff ff 1a                                      bne #0x7e8f98
007e8fb8  07 30 94 e7                                      ldr r3, [r4, r7]
007e8fbc  01 20 a0 e3                                      mov r2, #1
007e8fc0  00 20 c3 e5                                      strb r2, [r3]
007e8fc4  05 00 a0 e1                                      mov r0, r5
007e8fc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007e8fcc  68 bb 1a 00 a0 48 00 00 b8 2d 00 00 fc 1a 00 00  .byte 0x68, 0xbb, 0x1a, 0x00, 0xa0, 0x48, 0x00, 0x00, 0xb8, 0x2d, 0x00, 0x00, 0xfc, 0x1a, 0x00, 0x00

; FUNCTION 0x007e8fdc, declared_size=224, range_size=224, mode=arm
; class-group: b2BlockAllocator
; alias: _ZN16b2BlockAllocatorC2Ev
; demangled: b2BlockAllocator::b2BlockAllocator()
; decoder-mode: arm
007e8fdc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007e8fe0  80 30 a0 e3                                      mov r3, #0x80
007e8fe4  00 60 a0 e3                                      mov r6, #0
007e8fe8  00 50 a0 e1                                      mov r5, r0
007e8fec  08 30 80 e5                                      str r3, [r0, #8]
007e8ff0  04 60 80 e5                                      str r6, [r0, #4]
007e8ff4  01 0b a0 e3                                      mov r0, #0x400
007e8ff8  3d 29 00 eb                                      bl #0x7f34f4
007e8ffc  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
007e9000  08 20 95 e5                                      ldr r2, [r5, #8]
007e9004  a4 70 9f e5                                      ldr r7, [pc, #0xa4]
007e9008  04 40 8f e0                                      add r4, pc, r4
007e900c  82 21 a0 e1                                      lsl r2, r2, #3
007e9010  00 00 85 e5                                      str r0, [r5]
007e9014  06 10 a0 e1                                      mov r1, r6
007e9018  10 95 ec eb                                      bl #0x30e460
007e901c  07 30 94 e7                                      ldr r3, [r4, r7]
007e9020  40 60 85 e5                                      str r6, [r5, #0x40]
007e9024  0c 60 85 e5                                      str r6, [r5, #0xc]
007e9028  10 60 85 e5                                      str r6, [r5, #0x10]
007e902c  14 60 85 e5                                      str r6, [r5, #0x14]
007e9030  18 60 85 e5                                      str r6, [r5, #0x18]
007e9034  1c 60 85 e5                                      str r6, [r5, #0x1c]
007e9038  20 60 85 e5                                      str r6, [r5, #0x20]
007e903c  24 60 85 e5                                      str r6, [r5, #0x24]
007e9040  28 60 85 e5                                      str r6, [r5, #0x28]
007e9044  2c 60 85 e5                                      str r6, [r5, #0x2c]
007e9048  30 60 85 e5                                      str r6, [r5, #0x30]
007e904c  34 60 85 e5                                      str r6, [r5, #0x34]
007e9050  38 60 85 e5                                      str r6, [r5, #0x38]
007e9054  3c 60 85 e5                                      str r6, [r5, #0x3c]
007e9058  00 20 d3 e5                                      ldrb r2, [r3]
007e905c  06 00 52 e1                                      cmp r2, r6
007e9060  0f 00 00 1a                                      bne #0x7e90a4
007e9064  48 30 9f e5                                      ldr r3, [pc, #0x48]
007e9068  48 60 9f e5                                      ldr r6, [pc, #0x48]
007e906c  81 02 00 e3                                      movw r0, #0x281
007e9070  03 c0 94 e7                                      ldr ip, [r4, r3]
007e9074  01 30 a0 e3                                      mov r3, #1
007e9078  02 11 9c e7                                      ldr r1, [ip, r2, lsl #2]
007e907c  01 00 53 e1                                      cmp r3, r1
007e9080  06 10 94 e7                                      ldr r1, [r4, r6]
007e9084  01 20 82 c2                                      addgt r2, r2, #1
007e9088  01 20 c3 e7                                      strb r2, [r3, r1]
007e908c  01 30 83 e2                                      add r3, r3, #1
007e9090  00 00 53 e1                                      cmp r3, r0
007e9094  f7 ff ff 1a                                      bne #0x7e9078
007e9098  07 30 94 e7                                      ldr r3, [r4, r7]
007e909c  01 20 a0 e3                                      mov r2, #1
007e90a0  00 20 c3 e5                                      strb r2, [r3]
007e90a4  05 00 a0 e1                                      mov r0, r5
007e90a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007e90ac  88 ba 1a 00 a0 48 00 00 b8 2d 00 00 fc 1a 00 00  .byte 0x88, 0xba, 0x1a, 0x00, 0xa0, 0x48, 0x00, 0x00, 0xb8, 0x2d, 0x00, 0x00, 0xfc, 0x1a, 0x00, 0x00

; FUNCTION 0x007e90bc, declared_size=348, range_size=348, mode=arm
; class-group: b2BlockAllocator
; alias: _ZN16b2BlockAllocator8AllocateEi
; demangled: b2BlockAllocator::Allocate(int)
; decoder-mode: arm
007e90bc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e90c0  44 41 9f e5                                      ldr r4, [pc, #0x144]
007e90c4  00 00 51 e3                                      cmp r1, #0
007e90c8  00 50 a0 e1                                      mov r5, r0
007e90cc  04 40 8f e0                                      add r4, pc, r4
007e90d0  0b 00 00 0a                                      beq #0x7e9104
007e90d4  34 31 9f e5                                      ldr r3, [pc, #0x134]
007e90d8  03 30 94 e7                                      ldr r3, [r4, r3]
007e90dc  01 80 d3 e7                                      ldrb r8, [r3, r1]
007e90e0  02 70 88 e2                                      add r7, r8, #2
007e90e4  07 31 80 e0                                      add r3, r0, r7, lsl #2
007e90e8  04 60 93 e5                                      ldr r6, [r3, #4]
007e90ec  00 00 56 e3                                      cmp r6, #0
007e90f0  05 00 00 0a                                      beq #0x7e910c
007e90f4  00 20 96 e5                                      ldr r2, [r6]
007e90f8  06 00 a0 e1                                      mov r0, r6
007e90fc  04 20 83 e5                                      str r2, [r3, #4]
007e9100  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e9104  01 00 a0 e1                                      mov r0, r1
007e9108  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e910c  04 90 90 e5                                      ldr sb, [r0, #4]
007e9110  08 30 90 e5                                      ldr r3, [r0, #8]
007e9114  03 00 59 e1                                      cmp sb, r3
007e9118  27 00 00 0a                                      beq #0x7e91bc
007e911c  01 0a a0 e3                                      mov r0, #0x1000
007e9120  00 b0 95 e5                                      ldr fp, [r5]
007e9124  f2 28 00 eb                                      bl #0x7f34f4
007e9128  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
007e912c  89 a1 8b e0                                      add sl, fp, sb, lsl #3
007e9130  04 00 8a e5                                      str r0, [sl, #4]
007e9134  03 30 94 e7                                      ldr r3, [r4, r3]
007e9138  00 60 a0 e1                                      mov r6, r0
007e913c  01 0a a0 e3                                      mov r0, #0x1000
007e9140  08 41 93 e7                                      ldr r4, [r3, r8, lsl #2]
007e9144  89 41 8b e7                                      str r4, [fp, sb, lsl #3]
007e9148  04 10 a0 e1                                      mov r1, r4
007e914c  54 94 ec eb                                      bl #0x30e2a4
007e9150  01 c0 40 e2                                      sub ip, r0, #1
007e9154  00 00 5c e3                                      cmp ip, #0
007e9158  0b 00 00 da                                      ble #0x7e918c
007e915c  00 30 a0 e3                                      mov r3, #0
007e9160  01 20 a0 e3                                      mov r2, #1
007e9164  00 00 00 ea                                      b #0x7e916c
007e9168  04 60 9a e5                                      ldr r6, [sl, #4]
007e916c  03 10 86 e0                                      add r1, r6, r3
007e9170  01 20 82 e2                                      add r2, r2, #1
007e9174  04 30 83 e0                                      add r3, r3, r4
007e9178  03 60 86 e0                                      add r6, r6, r3
007e917c  00 00 52 e1                                      cmp r2, r0
007e9180  00 60 81 e5                                      str r6, [r1]
007e9184  f7 ff ff 1a                                      bne #0x7e9168
007e9188  04 60 9a e5                                      ldr r6, [sl, #4]
007e918c  94 0c 04 e0                                      mul r4, r4, ip
007e9190  00 30 a0 e3                                      mov r3, #0
007e9194  04 30 86 e7                                      str r3, [r6, r4]
007e9198  04 30 9a e5                                      ldr r3, [sl, #4]
007e919c  07 71 85 e0                                      add r7, r5, r7, lsl #2
007e91a0  00 30 93 e5                                      ldr r3, [r3]
007e91a4  04 30 87 e5                                      str r3, [r7, #4]
007e91a8  04 30 95 e5                                      ldr r3, [r5, #4]
007e91ac  01 30 83 e2                                      add r3, r3, #1
007e91b0  04 30 85 e5                                      str r3, [r5, #4]
007e91b4  04 00 9a e5                                      ldr r0, [sl, #4]
007e91b8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e91bc  80 00 89 e2                                      add r0, sb, #0x80
007e91c0  08 00 85 e5                                      str r0, [r5, #8]
007e91c4  80 01 a0 e1                                      lsl r0, r0, #3
007e91c8  00 a0 95 e5                                      ldr sl, [r5]
007e91cc  c8 28 00 eb                                      bl #0x7f34f4
007e91d0  04 20 95 e5                                      ldr r2, [r5, #4]
007e91d4  0a 10 a0 e1                                      mov r1, sl
007e91d8  00 00 85 e5                                      str r0, [r5]
007e91dc  82 21 a0 e1                                      lsl r2, r2, #3
007e91e0  a0 95 ec eb                                      bl #0x30e868
007e91e4  00 30 95 e5                                      ldr r3, [r5]
007e91e8  04 00 95 e5                                      ldr r0, [r5, #4]
007e91ec  06 10 a0 e1                                      mov r1, r6
007e91f0  01 2b a0 e3                                      mov r2, #0x400
007e91f4  80 01 83 e0                                      add r0, r3, r0, lsl #3
007e91f8  98 94 ec eb                                      bl #0x30e460
007e91fc  0a 00 a0 e1                                      mov r0, sl
007e9200  ad 28 00 eb                                      bl #0x7f34bc
007e9204  04 90 95 e5                                      ldr sb, [r5, #4]
007e9208  c3 ff ff ea                                      b #0x7e911c
; mapping-symbol data/literal pool
007e920c  c4 b9 1a 00 fc 1a 00 00 b8 2d 00 00              .byte 0xc4, 0xb9, 0x1a, 0x00, 0xfc, 0x1a, 0x00, 0x00, 0xb8, 0x2d, 0x00, 0x00
