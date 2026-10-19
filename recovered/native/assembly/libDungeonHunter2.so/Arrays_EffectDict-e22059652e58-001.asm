; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a3e08, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::EffectDict
; alias: _ZN6Arrays10EffectDict13finalizeNamesEv
; demangled: Arrays::EffectDict::finalizeNames()
; decoder-mode: arm
004a3e08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a3e0c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a3e10  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a3e14  05 50 8f e0                                      add r5, pc, r5
004a3e18  06 30 95 e7                                      ldr r3, [r5, r6]
004a3e1c  00 30 93 e5                                      ldr r3, [r3]
004a3e20  00 00 53 e3                                      cmp r3, #0
004a3e24  1a 00 00 0a                                      beq #0x4a3e94
004a3e28  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a3e2c  07 20 95 e7                                      ldr r2, [r5, r7]
004a3e30  00 20 92 e5                                      ldr r2, [r2]
004a3e34  00 00 52 e3                                      cmp r2, #0
004a3e38  10 00 00 0a                                      beq #0x4a3e80
004a3e3c  00 40 a0 e3                                      mov r4, #0
004a3e40  01 00 00 ea                                      b #0x4a3e4c
004a3e44  06 30 95 e7                                      ldr r3, [r5, r6]
004a3e48  00 30 93 e5                                      ldr r3, [r3]
004a3e4c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a3e50  01 40 84 e2                                      add r4, r4, #1
004a3e54  00 00 50 e3                                      cmp r0, #0
004a3e58  02 00 00 0a                                      beq #0x4a3e68
004a3e5c  77 b1 f9 eb                                      bl #0x310440
004a3e60  06 30 95 e7                                      ldr r3, [r5, r6]
004a3e64  00 30 93 e5                                      ldr r3, [r3]
004a3e68  07 20 95 e7                                      ldr r2, [r5, r7]
004a3e6c  00 20 92 e5                                      ldr r2, [r2]
004a3e70  04 00 52 e1                                      cmp r2, r4
004a3e74  f2 ff ff 8a                                      bhi #0x4a3e44
004a3e78  00 00 53 e3                                      cmp r3, #0
004a3e7c  01 00 00 0a                                      beq #0x4a3e88
004a3e80  03 00 a0 e1                                      mov r0, r3
004a3e84  6d b1 f9 eb                                      bl #0x310440
004a3e88  06 30 95 e7                                      ldr r3, [r5, r6]
004a3e8c  00 20 a0 e3                                      mov r2, #0
004a3e90  00 20 83 e5                                      str r2, [r3]
004a3e94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a3e98  7c 0c 4f 00 ec 26 00 00 88 0b 00 00              .byte 0x7c, 0x0c, 0x4f, 0x00, 0xec, 0x26, 0x00, 0x00, 0x88, 0x0b, 0x00, 0x00

; FUNCTION 0x004a3ea4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::EffectDict
; alias: _ZN6Arrays10EffectDict8finalizeEv
; demangled: Arrays::EffectDict::finalize()
; decoder-mode: arm
004a3ea4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a3ea8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a3eac  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a3eb0  05 50 8f e0                                      add r5, pc, r5
004a3eb4  07 30 95 e7                                      ldr r3, [r5, r7]
004a3eb8  00 30 93 e5                                      ldr r3, [r3]
004a3ebc  00 00 53 e3                                      cmp r3, #0
004a3ec0  2c 00 00 0a                                      beq #0x4a3f78
004a3ec4  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a3ec8  08 20 95 e7                                      ldr r2, [r5, r8]
004a3ecc  00 20 92 e5                                      ldr r2, [r2]
004a3ed0  00 00 52 e3                                      cmp r2, #0
004a3ed4  12 00 00 0a                                      beq #0x4a3f24
004a3ed8  00 40 a0 e3                                      mov r4, #0
004a3edc  04 60 a0 e1                                      mov r6, r4
004a3ee0  01 00 00 ea                                      b #0x4a3eec
004a3ee4  07 30 95 e7                                      ldr r3, [r5, r7]
004a3ee8  00 30 93 e5                                      ldr r3, [r3]
004a3eec  04 00 83 e0                                      add r0, r3, r4
004a3ef0  04 30 93 e7                                      ldr r3, [r3, r4]
004a3ef4  0f e0 a0 e1                                      mov lr, pc
004a3ef8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a3efc  08 30 95 e7                                      ldr r3, [r5, r8]
004a3f00  01 60 86 e2                                      add r6, r6, #1
004a3f04  0c 40 84 e2                                      add r4, r4, #0xc
004a3f08  00 30 93 e5                                      ldr r3, [r3]
004a3f0c  06 00 53 e1                                      cmp r3, r6
004a3f10  f3 ff ff 8a                                      bhi #0x4a3ee4
004a3f14  07 30 95 e7                                      ldr r3, [r5, r7]
004a3f18  00 30 93 e5                                      ldr r3, [r3]
004a3f1c  00 00 53 e3                                      cmp r3, #0
004a3f20  11 00 00 0a                                      beq #0x4a3f6c
004a3f24  04 20 13 e5                                      ldr r2, [r3, #-4]
004a3f28  0c 00 a0 e3                                      mov r0, #0xc
004a3f2c  90 32 20 e0                                      mla r0, r0, r2, r3
004a3f30  00 00 53 e1                                      cmp r3, r0
004a3f34  01 00 00 1a                                      bne #0x4a3f40
004a3f38  09 00 00 ea                                      b #0x4a3f64
004a3f3c  04 00 a0 e1                                      mov r0, r4
004a3f40  0c 40 40 e2                                      sub r4, r0, #0xc
004a3f44  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a3f48  04 00 a0 e1                                      mov r0, r4
004a3f4c  0f e0 a0 e1                                      mov lr, pc
004a3f50  00 f0 93 e5                                      ldr pc, [r3]
004a3f54  07 30 95 e7                                      ldr r3, [r5, r7]
004a3f58  00 00 93 e5                                      ldr r0, [r3]
004a3f5c  04 00 50 e1                                      cmp r0, r4
004a3f60  f5 ff ff 1a                                      bne #0x4a3f3c
004a3f64  08 00 40 e2                                      sub r0, r0, #8
004a3f68  34 b1 f9 eb                                      bl #0x310440
004a3f6c  07 30 95 e7                                      ldr r3, [r5, r7]
004a3f70  00 20 a0 e3                                      mov r2, #0
004a3f74  00 20 83 e5                                      str r2, [r3]
004a3f78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a3f7c  e0 0b 4f 00 b8 16 00 00 88 0b 00 00              .byte 0xe0, 0x0b, 0x4f, 0x00, 0xb8, 0x16, 0x00, 0x00, 0x88, 0x0b, 0x00, 0x00

; FUNCTION 0x004b1df8, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::EffectDict
; alias: _ZN6Arrays10EffectDict9readNamesEP11IStreamBase
; demangled: Arrays::EffectDict::readNames(IStreamBase*)
; decoder-mode: arm
004b1df8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b1dfc  00 70 a0 e1                                      mov r7, r0
004b1e00  1c d0 4d e2                                      sub sp, sp, #0x1c
004b1e04  ff c7 ff eb                                      bl #0x4a3e08
004b1e08  07 00 a0 e1                                      mov r0, r7
004b1e0c  1f 87 f9 eb                                      bl #0x313a90
004b1e10  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b1e14  01 30 a0 e3                                      mov r3, #1
004b1e18  00 00 53 e3                                      cmp r3, #0
004b1e1c  06 60 8f e0                                      add r6, pc, r6
004b1e20  14 00 8d e5                                      str r0, [sp, #0x14]
004b1e24  0c 30 8d e5                                      str r3, [sp, #0xc]
004b1e28  12 00 00 1a                                      bne #0x4b1e78
004b1e2c  14 30 8d e2                                      add r3, sp, #0x14
004b1e30  02 20 83 e2                                      add r2, r3, #2
004b1e34  01 30 83 e2                                      add r3, r3, #1
004b1e38  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1e3c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1e40  03 00 52 e1                                      cmp r2, r3
004b1e44  02 40 a0 e1                                      mov r4, r2
004b1e48  01 10 20 e0                                      eor r1, r0, r1
004b1e4c  01 10 43 e5                                      strb r1, [r3, #-1]
004b1e50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1e54  00 10 21 e0                                      eor r1, r1, r0
004b1e58  01 10 c2 e5                                      strb r1, [r2, #1]
004b1e5c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1e60  01 20 42 e2                                      sub r2, r2, #1
004b1e64  00 10 21 e0                                      eor r1, r1, r0
004b1e68  01 10 43 e5                                      strb r1, [r3, #-1]
004b1e6c  01 30 83 e2                                      add r3, r3, #1
004b1e70  f0 ff ff 8a                                      bhi #0x4b1e38
004b1e74  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b1e78  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b1e7c  03 30 96 e7                                      ldr r3, [r6, r3]
004b1e80  00 30 93 e5                                      ldr r3, [r3]
004b1e84  00 00 53 e1                                      cmp r3, r0
004b1e88  01 00 00 0a                                      beq #0x4b1e94
004b1e8c  1c d0 8d e2                                      add sp, sp, #0x1c
004b1e90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b1e94  00 01 a0 e1                                      lsl r0, r0, #2
004b1e98  01 10 a0 e3                                      mov r1, #1
004b1e9c  b2 79 f9 eb                                      bl #0x31056c
004b1ea0  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b1ea4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b1ea8  09 30 96 e7                                      ldr r3, [r6, sb]
004b1eac  00 00 52 e3                                      cmp r2, #0
004b1eb0  00 00 83 e5                                      str r0, [r3]
004b1eb4  f4 ff ff 0a                                      beq #0x4b1e8c
004b1eb8  10 a0 8d e2                                      add sl, sp, #0x10
004b1ebc  01 80 a0 e3                                      mov r8, #1
004b1ec0  08 10 8a e0                                      add r1, sl, r8
004b1ec4  02 30 8a e2                                      add r3, sl, #2
004b1ec8  00 40 a0 e3                                      mov r4, #0
004b1ecc  0a 00 8d e8                                      stm sp, {r1, r3}
004b1ed0  07 00 a0 e1                                      mov r0, r7
004b1ed4  0a 10 a0 e1                                      mov r1, sl
004b1ed8  b0 b4 fc eb                                      bl #0x3df1a0
004b1edc  00 00 58 e3                                      cmp r8, #0
004b1ee0  0c 80 8d e5                                      str r8, [sp, #0xc]
004b1ee4  0f 00 00 1a                                      bne #0x4b1f28
004b1ee8  00 30 9d e5                                      ldr r3, [sp]
004b1eec  04 20 9d e5                                      ldr r2, [sp, #4]
004b1ef0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1ef4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1ef8  03 00 52 e1                                      cmp r2, r3
004b1efc  01 10 20 e0                                      eor r1, r0, r1
004b1f00  01 10 43 e5                                      strb r1, [r3, #-1]
004b1f04  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1f08  00 10 21 e0                                      eor r1, r1, r0
004b1f0c  01 10 c2 e5                                      strb r1, [r2, #1]
004b1f10  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1f14  01 20 42 e2                                      sub r2, r2, #1
004b1f18  00 10 21 e0                                      eor r1, r1, r0
004b1f1c  01 10 43 e5                                      strb r1, [r3, #-1]
004b1f20  01 30 83 e2                                      add r3, r3, #1
004b1f24  f1 ff ff 8a                                      bhi #0x4b1ef0
004b1f28  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b1f2c  09 50 96 e7                                      ldr r5, [r6, sb]
004b1f30  01 10 a0 e3                                      mov r1, #1
004b1f34  01 00 80 e0                                      add r0, r0, r1
004b1f38  00 b0 95 e5                                      ldr fp, [r5]
004b1f3c  8a 79 f9 eb                                      bl #0x31056c
004b1f40  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b1f44  00 30 95 e5                                      ldr r3, [r5]
004b1f48  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b1f4c  07 00 a0 e1                                      mov r0, r7
004b1f50  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b1f54  00 30 a0 e3                                      mov r3, #0
004b1f58  3d 95 f9 eb                                      bl #0x317454
004b1f5c  00 30 95 e5                                      ldr r3, [r5]
004b1f60  00 10 a0 e3                                      mov r1, #0
004b1f64  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b1f68  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b1f6c  01 40 84 e2                                      add r4, r4, #1
004b1f70  03 10 c2 e7                                      strb r1, [r2, r3]
004b1f74  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b1f78  04 00 53 e1                                      cmp r3, r4
004b1f7c  d3 ff ff 8a                                      bhi #0x4b1ed0
004b1f80  c1 ff ff ea                                      b #0x4b1e8c
; mapping-symbol data/literal pool
004b1f84  74 2c 4e 00 88 0b 00 00 ec 26 00 00              .byte 0x74, 0x2c, 0x4e, 0x00, 0x88, 0x0b, 0x00, 0x00, 0xec, 0x26, 0x00, 0x00

; FUNCTION 0x004b1f90, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::EffectDict
; alias: _ZN6Arrays10EffectDict9skipNamesEP11IStreamBase
; demangled: Arrays::EffectDict::skipNames(IStreamBase*)
; decoder-mode: arm
004b1f90  98 ff ff ea                                      b #0x4b1df8

; FUNCTION 0x004b8458, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::EffectDict
; alias: _ZN6Arrays10EffectDict4readEP11IStreamBase
; demangled: Arrays::EffectDict::read(IStreamBase*)
; decoder-mode: arm
004b8458  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b845c  0c d0 4d e2                                      sub sp, sp, #0xc
004b8460  00 a0 a0 e1                                      mov sl, r0
004b8464  89 6d f9 eb                                      bl #0x313a90
004b8468  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b846c  01 30 a0 e3                                      mov r3, #1
004b8470  00 00 53 e3                                      cmp r3, #0
004b8474  04 00 8d e5                                      str r0, [sp, #4]
004b8478  00 30 8d e5                                      str r3, [sp]
004b847c  06 60 8f e0                                      add r6, pc, r6
004b8480  10 00 00 1a                                      bne #0x4b84c8
004b8484  04 30 8d e2                                      add r3, sp, #4
004b8488  02 20 83 e2                                      add r2, r3, #2
004b848c  01 30 83 e2                                      add r3, r3, #1
004b8490  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8494  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b8498  03 00 52 e1                                      cmp r2, r3
004b849c  01 10 20 e0                                      eor r1, r0, r1
004b84a0  01 10 43 e5                                      strb r1, [r3, #-1]
004b84a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b84a8  00 10 21 e0                                      eor r1, r1, r0
004b84ac  01 10 c2 e5                                      strb r1, [r2, #1]
004b84b0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b84b4  01 20 42 e2                                      sub r2, r2, #1
004b84b8  00 10 21 e0                                      eor r1, r1, r0
004b84bc  01 10 43 e5                                      strb r1, [r3, #-1]
004b84c0  01 30 83 e2                                      add r3, r3, #1
004b84c4  f1 ff ff 8a                                      bhi #0x4b8490
004b84c8  75 ae ff eb                                      bl #0x4a3ea4
004b84cc  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b84d0  04 40 9d e5                                      ldr r4, [sp, #4]
004b84d4  0c 50 a0 e3                                      mov r5, #0xc
004b84d8  07 30 96 e7                                      ldr r3, [r6, r7]
004b84dc  95 04 00 e0                                      mul r0, r5, r4
004b84e0  00 40 83 e5                                      str r4, [r3]
004b84e4  08 00 80 e2                                      add r0, r0, #8
004b84e8  01 10 a0 e3                                      mov r1, #1
004b84ec  1e 60 f9 eb                                      bl #0x31056c
004b84f0  00 00 54 e3                                      cmp r4, #0
004b84f4  00 50 80 e5                                      str r5, [r0]
004b84f8  04 40 80 e5                                      str r4, [r0, #4]
004b84fc  08 30 80 e2                                      add r3, r0, #8
004b8500  0a 00 00 0a                                      beq #0x4b8530
004b8504  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b8508  00 20 a0 e3                                      mov r2, #0
004b850c  02 c0 a0 e1                                      mov ip, r2
004b8510  01 10 96 e7                                      ldr r1, [r6, r1]
004b8514  08 10 81 e2                                      add r1, r1, #8
004b8518  01 20 82 e2                                      add r2, r2, #1
004b851c  04 00 52 e1                                      cmp r2, r4
004b8520  08 10 80 e5                                      str r1, [r0, #8]
004b8524  10 c0 80 e5                                      str ip, [r0, #0x10]
004b8528  0c 00 80 e2                                      add r0, r0, #0xc
004b852c  f9 ff ff 1a                                      bne #0x4b8518
004b8530  07 20 96 e7                                      ldr r2, [r6, r7]
004b8534  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b8538  00 10 92 e5                                      ldr r1, [r2]
004b853c  08 20 96 e7                                      ldr r2, [r6, r8]
004b8540  00 00 51 e3                                      cmp r1, #0
004b8544  00 30 82 e5                                      str r3, [r2]
004b8548  0f 00 00 0a                                      beq #0x4b858c
004b854c  00 40 a0 e3                                      mov r4, #0
004b8550  04 50 a0 e1                                      mov r5, r4
004b8554  01 00 00 ea                                      b #0x4b8560
004b8558  08 30 96 e7                                      ldr r3, [r6, r8]
004b855c  00 30 93 e5                                      ldr r3, [r3]
004b8560  04 00 83 e0                                      add r0, r3, r4
004b8564  0a 10 a0 e1                                      mov r1, sl
004b8568  04 30 93 e7                                      ldr r3, [r3, r4]
004b856c  0f e0 a0 e1                                      mov lr, pc
004b8570  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b8574  07 30 96 e7                                      ldr r3, [r6, r7]
004b8578  01 50 85 e2                                      add r5, r5, #1
004b857c  0c 40 84 e2                                      add r4, r4, #0xc
004b8580  00 30 93 e5                                      ldr r3, [r3]
004b8584  05 00 53 e1                                      cmp r3, r5
004b8588  f2 ff ff 8a                                      bhi #0x4b8558
004b858c  0c d0 8d e2                                      add sp, sp, #0xc
004b8590  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b8594  14 c6 4d 00 88 0b 00 00 bc 0a 00 00 b8 16 00 00  .byte 0x14, 0xc6, 0x4d, 0x00, 0x88, 0x0b, 0x00, 0x00, 0xbc, 0x0a, 0x00, 0x00, 0xb8, 0x16, 0x00, 0x00
