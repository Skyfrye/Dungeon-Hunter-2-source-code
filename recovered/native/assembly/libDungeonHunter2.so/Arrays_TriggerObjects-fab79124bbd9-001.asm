; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a73cc, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::TriggerObjects
; alias: _ZN6Arrays14TriggerObjects13finalizeNamesEv
; demangled: Arrays::TriggerObjects::finalizeNames()
; decoder-mode: arm
004a73cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a73d0  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a73d4  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a73d8  05 50 8f e0                                      add r5, pc, r5
004a73dc  06 30 95 e7                                      ldr r3, [r5, r6]
004a73e0  00 30 93 e5                                      ldr r3, [r3]
004a73e4  00 00 53 e3                                      cmp r3, #0
004a73e8  1a 00 00 0a                                      beq #0x4a7458
004a73ec  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a73f0  07 20 95 e7                                      ldr r2, [r5, r7]
004a73f4  00 20 92 e5                                      ldr r2, [r2]
004a73f8  00 00 52 e3                                      cmp r2, #0
004a73fc  10 00 00 0a                                      beq #0x4a7444
004a7400  00 40 a0 e3                                      mov r4, #0
004a7404  01 00 00 ea                                      b #0x4a7410
004a7408  06 30 95 e7                                      ldr r3, [r5, r6]
004a740c  00 30 93 e5                                      ldr r3, [r3]
004a7410  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a7414  01 40 84 e2                                      add r4, r4, #1
004a7418  00 00 50 e3                                      cmp r0, #0
004a741c  02 00 00 0a                                      beq #0x4a742c
004a7420  06 a4 f9 eb                                      bl #0x310440
004a7424  06 30 95 e7                                      ldr r3, [r5, r6]
004a7428  00 30 93 e5                                      ldr r3, [r3]
004a742c  07 20 95 e7                                      ldr r2, [r5, r7]
004a7430  00 20 92 e5                                      ldr r2, [r2]
004a7434  04 00 52 e1                                      cmp r2, r4
004a7438  f2 ff ff 8a                                      bhi #0x4a7408
004a743c  00 00 53 e3                                      cmp r3, #0
004a7440  01 00 00 0a                                      beq #0x4a744c
004a7444  03 00 a0 e1                                      mov r0, r3
004a7448  fc a3 f9 eb                                      bl #0x310440
004a744c  06 30 95 e7                                      ldr r3, [r5, r6]
004a7450  00 20 a0 e3                                      mov r2, #0
004a7454  00 20 83 e5                                      str r2, [r3]
004a7458  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a745c  b8 d6 4e 00 58 42 00 00 a8 0c 00 00              .byte 0xb8, 0xd6, 0x4e, 0x00, 0x58, 0x42, 0x00, 0x00, 0xa8, 0x0c, 0x00, 0x00

; FUNCTION 0x004a7468, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::TriggerObjects
; alias: _ZN6Arrays14TriggerObjects8finalizeEv
; demangled: Arrays::TriggerObjects::finalize()
; decoder-mode: arm
004a7468  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a746c  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a7470  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a7474  05 50 8f e0                                      add r5, pc, r5
004a7478  07 30 95 e7                                      ldr r3, [r5, r7]
004a747c  00 30 93 e5                                      ldr r3, [r3]
004a7480  00 00 53 e3                                      cmp r3, #0
004a7484  2c 00 00 0a                                      beq #0x4a753c
004a7488  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a748c  08 20 95 e7                                      ldr r2, [r5, r8]
004a7490  00 20 92 e5                                      ldr r2, [r2]
004a7494  00 00 52 e3                                      cmp r2, #0
004a7498  12 00 00 0a                                      beq #0x4a74e8
004a749c  00 40 a0 e3                                      mov r4, #0
004a74a0  04 60 a0 e1                                      mov r6, r4
004a74a4  01 00 00 ea                                      b #0x4a74b0
004a74a8  07 30 95 e7                                      ldr r3, [r5, r7]
004a74ac  00 30 93 e5                                      ldr r3, [r3]
004a74b0  04 00 83 e0                                      add r0, r3, r4
004a74b4  04 30 93 e7                                      ldr r3, [r3, r4]
004a74b8  0f e0 a0 e1                                      mov lr, pc
004a74bc  08 f0 93 e5                                      ldr pc, [r3, #8]
004a74c0  08 30 95 e7                                      ldr r3, [r5, r8]
004a74c4  01 60 86 e2                                      add r6, r6, #1
004a74c8  18 40 84 e2                                      add r4, r4, #0x18
004a74cc  00 30 93 e5                                      ldr r3, [r3]
004a74d0  06 00 53 e1                                      cmp r3, r6
004a74d4  f3 ff ff 8a                                      bhi #0x4a74a8
004a74d8  07 30 95 e7                                      ldr r3, [r5, r7]
004a74dc  00 30 93 e5                                      ldr r3, [r3]
004a74e0  00 00 53 e3                                      cmp r3, #0
004a74e4  11 00 00 0a                                      beq #0x4a7530
004a74e8  04 20 13 e5                                      ldr r2, [r3, #-4]
004a74ec  18 00 a0 e3                                      mov r0, #0x18
004a74f0  90 32 20 e0                                      mla r0, r0, r2, r3
004a74f4  00 00 53 e1                                      cmp r3, r0
004a74f8  01 00 00 1a                                      bne #0x4a7504
004a74fc  09 00 00 ea                                      b #0x4a7528
004a7500  04 00 a0 e1                                      mov r0, r4
004a7504  18 40 40 e2                                      sub r4, r0, #0x18
004a7508  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004a750c  04 00 a0 e1                                      mov r0, r4
004a7510  0f e0 a0 e1                                      mov lr, pc
004a7514  00 f0 93 e5                                      ldr pc, [r3]
004a7518  07 30 95 e7                                      ldr r3, [r5, r7]
004a751c  00 00 93 e5                                      ldr r0, [r3]
004a7520  04 00 50 e1                                      cmp r0, r4
004a7524  f5 ff ff 1a                                      bne #0x4a7500
004a7528  08 00 40 e2                                      sub r0, r0, #8
004a752c  c3 a3 f9 eb                                      bl #0x310440
004a7530  07 30 95 e7                                      ldr r3, [r5, r7]
004a7534  00 20 a0 e3                                      mov r2, #0
004a7538  00 20 83 e5                                      str r2, [r3]
004a753c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7540  1c d6 4e 00 1c 0e 00 00 a8 0c 00 00              .byte 0x1c, 0xd6, 0x4e, 0x00, 0x1c, 0x0e, 0x00, 0x00, 0xa8, 0x0c, 0x00, 0x00

; FUNCTION 0x004b5c9c, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::TriggerObjects
; alias: _ZN6Arrays14TriggerObjects9readNamesEP11IStreamBase
; demangled: Arrays::TriggerObjects::readNames(IStreamBase*)
; decoder-mode: arm
004b5c9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b5ca0  00 70 a0 e1                                      mov r7, r0
004b5ca4  1c d0 4d e2                                      sub sp, sp, #0x1c
004b5ca8  c7 c5 ff eb                                      bl #0x4a73cc
004b5cac  07 00 a0 e1                                      mov r0, r7
004b5cb0  76 77 f9 eb                                      bl #0x313a90
004b5cb4  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b5cb8  01 30 a0 e3                                      mov r3, #1
004b5cbc  00 00 53 e3                                      cmp r3, #0
004b5cc0  06 60 8f e0                                      add r6, pc, r6
004b5cc4  14 00 8d e5                                      str r0, [sp, #0x14]
004b5cc8  0c 30 8d e5                                      str r3, [sp, #0xc]
004b5ccc  12 00 00 1a                                      bne #0x4b5d1c
004b5cd0  14 30 8d e2                                      add r3, sp, #0x14
004b5cd4  02 20 83 e2                                      add r2, r3, #2
004b5cd8  01 30 83 e2                                      add r3, r3, #1
004b5cdc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5ce0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b5ce4  03 00 52 e1                                      cmp r2, r3
004b5ce8  02 40 a0 e1                                      mov r4, r2
004b5cec  01 10 20 e0                                      eor r1, r0, r1
004b5cf0  01 10 43 e5                                      strb r1, [r3, #-1]
004b5cf4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5cf8  00 10 21 e0                                      eor r1, r1, r0
004b5cfc  01 10 c2 e5                                      strb r1, [r2, #1]
004b5d00  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b5d04  01 20 42 e2                                      sub r2, r2, #1
004b5d08  00 10 21 e0                                      eor r1, r1, r0
004b5d0c  01 10 43 e5                                      strb r1, [r3, #-1]
004b5d10  01 30 83 e2                                      add r3, r3, #1
004b5d14  f0 ff ff 8a                                      bhi #0x4b5cdc
004b5d18  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b5d1c  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b5d20  03 30 96 e7                                      ldr r3, [r6, r3]
004b5d24  00 30 93 e5                                      ldr r3, [r3]
004b5d28  00 00 53 e1                                      cmp r3, r0
004b5d2c  01 00 00 0a                                      beq #0x4b5d38
004b5d30  1c d0 8d e2                                      add sp, sp, #0x1c
004b5d34  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b5d38  00 01 a0 e1                                      lsl r0, r0, #2
004b5d3c  01 10 a0 e3                                      mov r1, #1
004b5d40  09 6a f9 eb                                      bl #0x31056c
004b5d44  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b5d48  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b5d4c  09 30 96 e7                                      ldr r3, [r6, sb]
004b5d50  00 00 52 e3                                      cmp r2, #0
004b5d54  00 00 83 e5                                      str r0, [r3]
004b5d58  f4 ff ff 0a                                      beq #0x4b5d30
004b5d5c  10 a0 8d e2                                      add sl, sp, #0x10
004b5d60  01 80 a0 e3                                      mov r8, #1
004b5d64  08 10 8a e0                                      add r1, sl, r8
004b5d68  02 30 8a e2                                      add r3, sl, #2
004b5d6c  00 40 a0 e3                                      mov r4, #0
004b5d70  0a 00 8d e8                                      stm sp, {r1, r3}
004b5d74  07 00 a0 e1                                      mov r0, r7
004b5d78  0a 10 a0 e1                                      mov r1, sl
004b5d7c  07 a5 fc eb                                      bl #0x3df1a0
004b5d80  00 00 58 e3                                      cmp r8, #0
004b5d84  0c 80 8d e5                                      str r8, [sp, #0xc]
004b5d88  0f 00 00 1a                                      bne #0x4b5dcc
004b5d8c  00 30 9d e5                                      ldr r3, [sp]
004b5d90  04 20 9d e5                                      ldr r2, [sp, #4]
004b5d94  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5d98  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b5d9c  03 00 52 e1                                      cmp r2, r3
004b5da0  01 10 20 e0                                      eor r1, r0, r1
004b5da4  01 10 43 e5                                      strb r1, [r3, #-1]
004b5da8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5dac  00 10 21 e0                                      eor r1, r1, r0
004b5db0  01 10 c2 e5                                      strb r1, [r2, #1]
004b5db4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b5db8  01 20 42 e2                                      sub r2, r2, #1
004b5dbc  00 10 21 e0                                      eor r1, r1, r0
004b5dc0  01 10 43 e5                                      strb r1, [r3, #-1]
004b5dc4  01 30 83 e2                                      add r3, r3, #1
004b5dc8  f1 ff ff 8a                                      bhi #0x4b5d94
004b5dcc  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b5dd0  09 50 96 e7                                      ldr r5, [r6, sb]
004b5dd4  01 10 a0 e3                                      mov r1, #1
004b5dd8  01 00 80 e0                                      add r0, r0, r1
004b5ddc  00 b0 95 e5                                      ldr fp, [r5]
004b5de0  e1 69 f9 eb                                      bl #0x31056c
004b5de4  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b5de8  00 30 95 e5                                      ldr r3, [r5]
004b5dec  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b5df0  07 00 a0 e1                                      mov r0, r7
004b5df4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b5df8  00 30 a0 e3                                      mov r3, #0
004b5dfc  94 85 f9 eb                                      bl #0x317454
004b5e00  00 30 95 e5                                      ldr r3, [r5]
004b5e04  00 10 a0 e3                                      mov r1, #0
004b5e08  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b5e0c  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b5e10  01 40 84 e2                                      add r4, r4, #1
004b5e14  03 10 c2 e7                                      strb r1, [r2, r3]
004b5e18  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b5e1c  04 00 53 e1                                      cmp r3, r4
004b5e20  d3 ff ff 8a                                      bhi #0x4b5d74
004b5e24  c1 ff ff ea                                      b #0x4b5d30
; mapping-symbol data/literal pool
004b5e28  d0 ed 4d 00 a8 0c 00 00 58 42 00 00              .byte 0xd0, 0xed, 0x4d, 0x00, 0xa8, 0x0c, 0x00, 0x00, 0x58, 0x42, 0x00, 0x00

; FUNCTION 0x004bb320, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::TriggerObjects
; alias: _ZN6Arrays14TriggerObjects4readEP11IStreamBase
; demangled: Arrays::TriggerObjects::read(IStreamBase*)
; decoder-mode: arm
004bb320  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bb324  0c d0 4d e2                                      sub sp, sp, #0xc
004bb328  00 a0 a0 e1                                      mov sl, r0
004bb32c  d7 61 f9 eb                                      bl #0x313a90
004bb330  24 61 9f e5                                      ldr r6, [pc, #0x124]
004bb334  01 30 a0 e3                                      mov r3, #1
004bb338  00 00 53 e3                                      cmp r3, #0
004bb33c  04 00 8d e5                                      str r0, [sp, #4]
004bb340  00 30 8d e5                                      str r3, [sp]
004bb344  06 60 8f e0                                      add r6, pc, r6
004bb348  10 00 00 1a                                      bne #0x4bb390
004bb34c  04 30 8d e2                                      add r3, sp, #4
004bb350  02 20 83 e2                                      add r2, r3, #2
004bb354  01 30 83 e2                                      add r3, r3, #1
004bb358  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb35c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bb360  03 00 52 e1                                      cmp r2, r3
004bb364  01 10 20 e0                                      eor r1, r0, r1
004bb368  01 10 43 e5                                      strb r1, [r3, #-1]
004bb36c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb370  00 10 21 e0                                      eor r1, r1, r0
004bb374  01 10 c2 e5                                      strb r1, [r2, #1]
004bb378  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bb37c  01 20 42 e2                                      sub r2, r2, #1
004bb380  00 10 21 e0                                      eor r1, r1, r0
004bb384  01 10 43 e5                                      strb r1, [r3, #-1]
004bb388  01 30 83 e2                                      add r3, r3, #1
004bb38c  f1 ff ff 8a                                      bhi #0x4bb358
004bb390  c8 70 9f e5                                      ldr r7, [pc, #0xc8]
004bb394  33 b0 ff eb                                      bl #0x4a7468
004bb398  04 40 9d e5                                      ldr r4, [sp, #4]
004bb39c  07 30 96 e7                                      ldr r3, [r6, r7]
004bb3a0  01 10 a0 e3                                      mov r1, #1
004bb3a4  84 00 84 e0                                      add r0, r4, r4, lsl #1
004bb3a8  01 00 80 e0                                      add r0, r0, r1
004bb3ac  00 40 83 e5                                      str r4, [r3]
004bb3b0  80 01 a0 e1                                      lsl r0, r0, #3
004bb3b4  6c 54 f9 eb                                      bl #0x31056c
004bb3b8  18 30 a0 e3                                      mov r3, #0x18
004bb3bc  00 00 54 e3                                      cmp r4, #0
004bb3c0  18 00 80 e8                                      stm r0, {r3, r4}
004bb3c4  08 30 80 e2                                      add r3, r0, #8
004bb3c8  0a 00 00 0a                                      beq #0x4bb3f8
004bb3cc  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bb3d0  00 20 a0 e3                                      mov r2, #0
004bb3d4  02 c0 a0 e1                                      mov ip, r2
004bb3d8  01 10 96 e7                                      ldr r1, [r6, r1]
004bb3dc  08 10 81 e2                                      add r1, r1, #8
004bb3e0  01 20 82 e2                                      add r2, r2, #1
004bb3e4  04 00 52 e1                                      cmp r2, r4
004bb3e8  08 10 80 e5                                      str r1, [r0, #8]
004bb3ec  14 c0 80 e5                                      str ip, [r0, #0x14]
004bb3f0  18 00 80 e2                                      add r0, r0, #0x18
004bb3f4  f9 ff ff 1a                                      bne #0x4bb3e0
004bb3f8  07 20 96 e7                                      ldr r2, [r6, r7]
004bb3fc  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bb400  00 10 92 e5                                      ldr r1, [r2]
004bb404  08 20 96 e7                                      ldr r2, [r6, r8]
004bb408  00 00 51 e3                                      cmp r1, #0
004bb40c  00 30 82 e5                                      str r3, [r2]
004bb410  0f 00 00 0a                                      beq #0x4bb454
004bb414  00 40 a0 e3                                      mov r4, #0
004bb418  04 50 a0 e1                                      mov r5, r4
004bb41c  01 00 00 ea                                      b #0x4bb428
004bb420  08 30 96 e7                                      ldr r3, [r6, r8]
004bb424  00 30 93 e5                                      ldr r3, [r3]
004bb428  04 00 83 e0                                      add r0, r3, r4
004bb42c  0a 10 a0 e1                                      mov r1, sl
004bb430  04 30 93 e7                                      ldr r3, [r3, r4]
004bb434  0f e0 a0 e1                                      mov lr, pc
004bb438  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bb43c  07 30 96 e7                                      ldr r3, [r6, r7]
004bb440  01 50 85 e2                                      add r5, r5, #1
004bb444  18 40 84 e2                                      add r4, r4, #0x18
004bb448  00 30 93 e5                                      ldr r3, [r3]
004bb44c  05 00 53 e1                                      cmp r3, r5
004bb450  f2 ff ff 8a                                      bhi #0x4bb420
004bb454  0c d0 8d e2                                      add sp, sp, #0xc
004bb458  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bb45c  4c 97 4d 00 a8 0c 00 00 f4 10 00 00 1c 0e 00 00  .byte 0x4c, 0x97, 0x4d, 0x00, 0xa8, 0x0c, 0x00, 0x00, 0xf4, 0x10, 0x00, 0x00, 0x1c, 0x0e, 0x00, 0x00
