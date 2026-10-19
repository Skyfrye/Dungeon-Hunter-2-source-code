; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a64d8, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ItemAudioVisualTable
; alias: _ZN6Arrays20ItemAudioVisualTable13finalizeNamesEv
; demangled: Arrays::ItemAudioVisualTable::finalizeNames()
; decoder-mode: arm
004a64d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a64dc  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a64e0  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a64e4  05 50 8f e0                                      add r5, pc, r5
004a64e8  06 30 95 e7                                      ldr r3, [r5, r6]
004a64ec  00 30 93 e5                                      ldr r3, [r3]
004a64f0  00 00 53 e3                                      cmp r3, #0
004a64f4  1a 00 00 0a                                      beq #0x4a6564
004a64f8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a64fc  07 20 95 e7                                      ldr r2, [r5, r7]
004a6500  00 20 92 e5                                      ldr r2, [r2]
004a6504  00 00 52 e3                                      cmp r2, #0
004a6508  10 00 00 0a                                      beq #0x4a6550
004a650c  00 40 a0 e3                                      mov r4, #0
004a6510  01 00 00 ea                                      b #0x4a651c
004a6514  06 30 95 e7                                      ldr r3, [r5, r6]
004a6518  00 30 93 e5                                      ldr r3, [r3]
004a651c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a6520  01 40 84 e2                                      add r4, r4, #1
004a6524  00 00 50 e3                                      cmp r0, #0
004a6528  02 00 00 0a                                      beq #0x4a6538
004a652c  c3 a7 f9 eb                                      bl #0x310440
004a6530  06 30 95 e7                                      ldr r3, [r5, r6]
004a6534  00 30 93 e5                                      ldr r3, [r3]
004a6538  07 20 95 e7                                      ldr r2, [r5, r7]
004a653c  00 20 92 e5                                      ldr r2, [r2]
004a6540  04 00 52 e1                                      cmp r2, r4
004a6544  f2 ff ff 8a                                      bhi #0x4a6514
004a6548  00 00 53 e3                                      cmp r3, #0
004a654c  01 00 00 0a                                      beq #0x4a6558
004a6550  03 00 a0 e1                                      mov r0, r3
004a6554  b9 a7 f9 eb                                      bl #0x310440
004a6558  06 30 95 e7                                      ldr r3, [r5, r6]
004a655c  00 20 a0 e3                                      mov r2, #0
004a6560  00 20 83 e5                                      str r2, [r3]
004a6564  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6568  ac e5 4e 00 a8 14 00 00 10 45 00 00              .byte 0xac, 0xe5, 0x4e, 0x00, 0xa8, 0x14, 0x00, 0x00, 0x10, 0x45, 0x00, 0x00

; FUNCTION 0x004a6574, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ItemAudioVisualTable
; alias: _ZN6Arrays20ItemAudioVisualTable8finalizeEv
; demangled: Arrays::ItemAudioVisualTable::finalize()
; decoder-mode: arm
004a6574  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6578  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a657c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a6580  05 50 8f e0                                      add r5, pc, r5
004a6584  07 30 95 e7                                      ldr r3, [r5, r7]
004a6588  00 30 93 e5                                      ldr r3, [r3]
004a658c  00 00 53 e3                                      cmp r3, #0
004a6590  2c 00 00 0a                                      beq #0x4a6648
004a6594  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a6598  08 20 95 e7                                      ldr r2, [r5, r8]
004a659c  00 20 92 e5                                      ldr r2, [r2]
004a65a0  00 00 52 e3                                      cmp r2, #0
004a65a4  12 00 00 0a                                      beq #0x4a65f4
004a65a8  00 40 a0 e3                                      mov r4, #0
004a65ac  04 60 a0 e1                                      mov r6, r4
004a65b0  01 00 00 ea                                      b #0x4a65bc
004a65b4  07 30 95 e7                                      ldr r3, [r5, r7]
004a65b8  00 30 93 e5                                      ldr r3, [r3]
004a65bc  04 00 83 e0                                      add r0, r3, r4
004a65c0  04 30 93 e7                                      ldr r3, [r3, r4]
004a65c4  0f e0 a0 e1                                      mov lr, pc
004a65c8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a65cc  08 30 95 e7                                      ldr r3, [r5, r8]
004a65d0  01 60 86 e2                                      add r6, r6, #1
004a65d4  14 40 84 e2                                      add r4, r4, #0x14
004a65d8  00 30 93 e5                                      ldr r3, [r3]
004a65dc  06 00 53 e1                                      cmp r3, r6
004a65e0  f3 ff ff 8a                                      bhi #0x4a65b4
004a65e4  07 30 95 e7                                      ldr r3, [r5, r7]
004a65e8  00 30 93 e5                                      ldr r3, [r3]
004a65ec  00 00 53 e3                                      cmp r3, #0
004a65f0  11 00 00 0a                                      beq #0x4a663c
004a65f4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a65f8  14 00 a0 e3                                      mov r0, #0x14
004a65fc  90 32 20 e0                                      mla r0, r0, r2, r3
004a6600  00 00 53 e1                                      cmp r3, r0
004a6604  01 00 00 1a                                      bne #0x4a6610
004a6608  09 00 00 ea                                      b #0x4a6634
004a660c  04 00 a0 e1                                      mov r0, r4
004a6610  14 40 40 e2                                      sub r4, r0, #0x14
004a6614  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004a6618  04 00 a0 e1                                      mov r0, r4
004a661c  0f e0 a0 e1                                      mov lr, pc
004a6620  00 f0 93 e5                                      ldr pc, [r3]
004a6624  07 30 95 e7                                      ldr r3, [r5, r7]
004a6628  00 00 93 e5                                      ldr r0, [r3]
004a662c  04 00 50 e1                                      cmp r0, r4
004a6630  f5 ff ff 1a                                      bne #0x4a660c
004a6634  08 00 40 e2                                      sub r0, r0, #8
004a6638  80 a7 f9 eb                                      bl #0x310440
004a663c  07 30 95 e7                                      ldr r3, [r5, r7]
004a6640  00 20 a0 e3                                      mov r2, #0
004a6644  00 20 83 e5                                      str r2, [r3]
004a6648  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a664c  10 e5 4e 00 3c 09 00 00 10 45 00 00              .byte 0x10, 0xe5, 0x4e, 0x00, 0x3c, 0x09, 0x00, 0x00, 0x10, 0x45, 0x00, 0x00

; FUNCTION 0x004b4d8c, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ItemAudioVisualTable
; alias: _ZN6Arrays20ItemAudioVisualTable9readNamesEP11IStreamBase
; demangled: Arrays::ItemAudioVisualTable::readNames(IStreamBase*)
; decoder-mode: arm
004b4d8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b4d90  00 70 a0 e1                                      mov r7, r0
004b4d94  1c d0 4d e2                                      sub sp, sp, #0x1c
004b4d98  ce c5 ff eb                                      bl #0x4a64d8
004b4d9c  07 00 a0 e1                                      mov r0, r7
004b4da0  3a 7b f9 eb                                      bl #0x313a90
004b4da4  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b4da8  01 30 a0 e3                                      mov r3, #1
004b4dac  00 00 53 e3                                      cmp r3, #0
004b4db0  06 60 8f e0                                      add r6, pc, r6
004b4db4  14 00 8d e5                                      str r0, [sp, #0x14]
004b4db8  0c 30 8d e5                                      str r3, [sp, #0xc]
004b4dbc  12 00 00 1a                                      bne #0x4b4e0c
004b4dc0  14 30 8d e2                                      add r3, sp, #0x14
004b4dc4  02 20 83 e2                                      add r2, r3, #2
004b4dc8  01 30 83 e2                                      add r3, r3, #1
004b4dcc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4dd0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4dd4  03 00 52 e1                                      cmp r2, r3
004b4dd8  02 40 a0 e1                                      mov r4, r2
004b4ddc  01 10 20 e0                                      eor r1, r0, r1
004b4de0  01 10 43 e5                                      strb r1, [r3, #-1]
004b4de4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4de8  00 10 21 e0                                      eor r1, r1, r0
004b4dec  01 10 c2 e5                                      strb r1, [r2, #1]
004b4df0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b4df4  01 20 42 e2                                      sub r2, r2, #1
004b4df8  00 10 21 e0                                      eor r1, r1, r0
004b4dfc  01 10 43 e5                                      strb r1, [r3, #-1]
004b4e00  01 30 83 e2                                      add r3, r3, #1
004b4e04  f0 ff ff 8a                                      bhi #0x4b4dcc
004b4e08  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b4e0c  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b4e10  03 30 96 e7                                      ldr r3, [r6, r3]
004b4e14  00 30 93 e5                                      ldr r3, [r3]
004b4e18  00 00 53 e1                                      cmp r3, r0
004b4e1c  01 00 00 0a                                      beq #0x4b4e28
004b4e20  1c d0 8d e2                                      add sp, sp, #0x1c
004b4e24  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b4e28  00 01 a0 e1                                      lsl r0, r0, #2
004b4e2c  01 10 a0 e3                                      mov r1, #1
004b4e30  cd 6d f9 eb                                      bl #0x31056c
004b4e34  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b4e38  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b4e3c  09 30 96 e7                                      ldr r3, [r6, sb]
004b4e40  00 00 52 e3                                      cmp r2, #0
004b4e44  00 00 83 e5                                      str r0, [r3]
004b4e48  f4 ff ff 0a                                      beq #0x4b4e20
004b4e4c  10 a0 8d e2                                      add sl, sp, #0x10
004b4e50  01 80 a0 e3                                      mov r8, #1
004b4e54  08 10 8a e0                                      add r1, sl, r8
004b4e58  02 30 8a e2                                      add r3, sl, #2
004b4e5c  00 40 a0 e3                                      mov r4, #0
004b4e60  0a 00 8d e8                                      stm sp, {r1, r3}
004b4e64  07 00 a0 e1                                      mov r0, r7
004b4e68  0a 10 a0 e1                                      mov r1, sl
004b4e6c  cb a8 fc eb                                      bl #0x3df1a0
004b4e70  00 00 58 e3                                      cmp r8, #0
004b4e74  0c 80 8d e5                                      str r8, [sp, #0xc]
004b4e78  0f 00 00 1a                                      bne #0x4b4ebc
004b4e7c  00 30 9d e5                                      ldr r3, [sp]
004b4e80  04 20 9d e5                                      ldr r2, [sp, #4]
004b4e84  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4e88  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4e8c  03 00 52 e1                                      cmp r2, r3
004b4e90  01 10 20 e0                                      eor r1, r0, r1
004b4e94  01 10 43 e5                                      strb r1, [r3, #-1]
004b4e98  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4e9c  00 10 21 e0                                      eor r1, r1, r0
004b4ea0  01 10 c2 e5                                      strb r1, [r2, #1]
004b4ea4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b4ea8  01 20 42 e2                                      sub r2, r2, #1
004b4eac  00 10 21 e0                                      eor r1, r1, r0
004b4eb0  01 10 43 e5                                      strb r1, [r3, #-1]
004b4eb4  01 30 83 e2                                      add r3, r3, #1
004b4eb8  f1 ff ff 8a                                      bhi #0x4b4e84
004b4ebc  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b4ec0  09 50 96 e7                                      ldr r5, [r6, sb]
004b4ec4  01 10 a0 e3                                      mov r1, #1
004b4ec8  01 00 80 e0                                      add r0, r0, r1
004b4ecc  00 b0 95 e5                                      ldr fp, [r5]
004b4ed0  a5 6d f9 eb                                      bl #0x31056c
004b4ed4  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b4ed8  00 30 95 e5                                      ldr r3, [r5]
004b4edc  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b4ee0  07 00 a0 e1                                      mov r0, r7
004b4ee4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b4ee8  00 30 a0 e3                                      mov r3, #0
004b4eec  58 89 f9 eb                                      bl #0x317454
004b4ef0  00 30 95 e5                                      ldr r3, [r5]
004b4ef4  00 10 a0 e3                                      mov r1, #0
004b4ef8  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b4efc  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b4f00  01 40 84 e2                                      add r4, r4, #1
004b4f04  03 10 c2 e7                                      strb r1, [r2, r3]
004b4f08  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b4f0c  04 00 53 e1                                      cmp r3, r4
004b4f10  d3 ff ff 8a                                      bhi #0x4b4e64
004b4f14  c1 ff ff ea                                      b #0x4b4e20
; mapping-symbol data/literal pool
004b4f18  e0 fc 4d 00 10 45 00 00 a8 14 00 00              .byte 0xe0, 0xfc, 0x4d, 0x00, 0x10, 0x45, 0x00, 0x00, 0xa8, 0x14, 0x00, 0x00

; FUNCTION 0x004b4f24, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::ItemAudioVisualTable
; alias: _ZN6Arrays20ItemAudioVisualTable9skipNamesEP11IStreamBase
; demangled: Arrays::ItemAudioVisualTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b4f24  98 ff ff ea                                      b #0x4b4d8c

; FUNCTION 0x004ba648, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::ItemAudioVisualTable
; alias: _ZN6Arrays20ItemAudioVisualTable4readEP11IStreamBase
; demangled: Arrays::ItemAudioVisualTable::read(IStreamBase*)
; decoder-mode: arm
004ba648  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004ba64c  0c d0 4d e2                                      sub sp, sp, #0xc
004ba650  00 a0 a0 e1                                      mov sl, r0
004ba654  0d 65 f9 eb                                      bl #0x313a90
004ba658  24 61 9f e5                                      ldr r6, [pc, #0x124]
004ba65c  01 30 a0 e3                                      mov r3, #1
004ba660  00 00 53 e3                                      cmp r3, #0
004ba664  04 00 8d e5                                      str r0, [sp, #4]
004ba668  00 30 8d e5                                      str r3, [sp]
004ba66c  06 60 8f e0                                      add r6, pc, r6
004ba670  10 00 00 1a                                      bne #0x4ba6b8
004ba674  04 30 8d e2                                      add r3, sp, #4
004ba678  02 20 83 e2                                      add r2, r3, #2
004ba67c  01 30 83 e2                                      add r3, r3, #1
004ba680  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba684  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ba688  03 00 52 e1                                      cmp r2, r3
004ba68c  01 10 20 e0                                      eor r1, r0, r1
004ba690  01 10 43 e5                                      strb r1, [r3, #-1]
004ba694  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba698  00 10 21 e0                                      eor r1, r1, r0
004ba69c  01 10 c2 e5                                      strb r1, [r2, #1]
004ba6a0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ba6a4  01 20 42 e2                                      sub r2, r2, #1
004ba6a8  00 10 21 e0                                      eor r1, r1, r0
004ba6ac  01 10 43 e5                                      strb r1, [r3, #-1]
004ba6b0  01 30 83 e2                                      add r3, r3, #1
004ba6b4  f1 ff ff 8a                                      bhi #0x4ba680
004ba6b8  ad af ff eb                                      bl #0x4a6574
004ba6bc  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004ba6c0  04 40 9d e5                                      ldr r4, [sp, #4]
004ba6c4  14 50 a0 e3                                      mov r5, #0x14
004ba6c8  07 30 96 e7                                      ldr r3, [r6, r7]
004ba6cc  95 04 00 e0                                      mul r0, r5, r4
004ba6d0  00 40 83 e5                                      str r4, [r3]
004ba6d4  08 00 80 e2                                      add r0, r0, #8
004ba6d8  01 10 a0 e3                                      mov r1, #1
004ba6dc  a2 57 f9 eb                                      bl #0x31056c
004ba6e0  00 00 54 e3                                      cmp r4, #0
004ba6e4  00 50 80 e5                                      str r5, [r0]
004ba6e8  04 40 80 e5                                      str r4, [r0, #4]
004ba6ec  08 30 80 e2                                      add r3, r0, #8
004ba6f0  0a 00 00 0a                                      beq #0x4ba720
004ba6f4  90 10 9f e5                                      ldr r1, [pc, #0x90]
004ba6f8  00 20 a0 e3                                      mov r2, #0
004ba6fc  02 c0 a0 e1                                      mov ip, r2
004ba700  01 10 96 e7                                      ldr r1, [r6, r1]
004ba704  08 10 81 e2                                      add r1, r1, #8
004ba708  01 20 82 e2                                      add r2, r2, #1
004ba70c  04 00 52 e1                                      cmp r2, r4
004ba710  08 10 80 e5                                      str r1, [r0, #8]
004ba714  18 c0 80 e5                                      str ip, [r0, #0x18]
004ba718  14 00 80 e2                                      add r0, r0, #0x14
004ba71c  f9 ff ff 1a                                      bne #0x4ba708
004ba720  07 20 96 e7                                      ldr r2, [r6, r7]
004ba724  64 80 9f e5                                      ldr r8, [pc, #0x64]
004ba728  00 10 92 e5                                      ldr r1, [r2]
004ba72c  08 20 96 e7                                      ldr r2, [r6, r8]
004ba730  00 00 51 e3                                      cmp r1, #0
004ba734  00 30 82 e5                                      str r3, [r2]
004ba738  0f 00 00 0a                                      beq #0x4ba77c
004ba73c  00 40 a0 e3                                      mov r4, #0
004ba740  04 50 a0 e1                                      mov r5, r4
004ba744  01 00 00 ea                                      b #0x4ba750
004ba748  08 30 96 e7                                      ldr r3, [r6, r8]
004ba74c  00 30 93 e5                                      ldr r3, [r3]
004ba750  04 00 83 e0                                      add r0, r3, r4
004ba754  0a 10 a0 e1                                      mov r1, sl
004ba758  04 30 93 e7                                      ldr r3, [r3, r4]
004ba75c  0f e0 a0 e1                                      mov lr, pc
004ba760  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ba764  07 30 96 e7                                      ldr r3, [r6, r7]
004ba768  01 50 85 e2                                      add r5, r5, #1
004ba76c  14 40 84 e2                                      add r4, r4, #0x14
004ba770  00 30 93 e5                                      ldr r3, [r3]
004ba774  05 00 53 e1                                      cmp r3, r5
004ba778  f2 ff ff 8a                                      bhi #0x4ba748
004ba77c  0c d0 8d e2                                      add sp, sp, #0xc
004ba780  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004ba784  24 a4 4d 00 10 45 00 00 24 42 00 00 3c 09 00 00  .byte 0x24, 0xa4, 0x4d, 0x00, 0x10, 0x45, 0x00, 0x00, 0x24, 0x42, 0x00, 0x00, 0x3c, 0x09, 0x00, 0x00
